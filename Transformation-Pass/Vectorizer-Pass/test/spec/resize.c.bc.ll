; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/resize.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.anon.0 = type { ptr, double, double, double, double, i32 }
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
%struct._ResizeFilter = type { ptr, ptr, float, float, float, float, [7 x float], i32, i32, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._ContributionInfo = type { float, i64 }
%struct._GeometryInfo = type { double, double, double, double, double }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@AcquireResizeFilter.mapping = internal unnamed_addr constant [31 x %struct.anon] [%struct.anon { i32 0, i32 2 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 2, i32 2 }, %struct.anon { i32 3, i32 2 }, %struct.anon { i32 4, i32 2 }, %struct.anon { i32 15, i32 5 }, %struct.anon { i32 15, i32 6 }, %struct.anon { i32 15, i32 7 }, %struct.anon { i32 8, i32 2 }, %struct.anon { i32 9, i32 2 }, %struct.anon { i32 10, i32 2 }, %struct.anon { i32 11, i32 2 }, %struct.anon { i32 12, i32 2 }, %struct.anon { i32 13, i32 2 }, %struct.anon { i32 14, i32 2 }, %struct.anon { i32 15, i32 2 }, %struct.anon { i32 15, i32 16 }, %struct.anon { i32 22, i32 17 }, %struct.anon { i32 15, i32 10 }, %struct.anon { i32 15, i32 19 }, %struct.anon { i32 15, i32 3 }, %struct.anon { i32 21, i32 2 }, %struct.anon { i32 22, i32 22 }, %struct.anon { i32 23, i32 23 }, %struct.anon { i32 24, i32 24 }, %struct.anon { i32 25, i32 25 }, %struct.anon { i32 26, i32 2 }, %struct.anon { i32 27, i32 2 }, %struct.anon { i32 22, i32 28 }, %struct.anon { i32 29, i32 2 }, %struct.anon { i32 30, i32 22 }], align 16, !dbg !0
@AcquireResizeFilter.filters = internal unnamed_addr constant [31 x %struct.anon.0] [%struct.anon.0 { ptr @Box, double 5.000000e-01, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.anon.0 { ptr @Box, double 0.000000e+00, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.anon.0 { ptr @Box, double 5.000000e-01, double 5.000000e-01, double 0.000000e+00, double 0.000000e+00, i32 0 }, %struct.anon.0 { ptr @Triangle, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 1 }, %struct.anon.0 { ptr @CubicBC, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @Hanning, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 3 }, %struct.anon.0 { ptr @Hamming, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 4 }, %struct.anon.0 { ptr @Blackman, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 5 }, %struct.anon.0 { ptr @Gaussian, double 2.000000e+00, double 1.500000e+00, double 0.000000e+00, double 0.000000e+00, i32 6 }, %struct.anon.0 { ptr @Quadratic, double 1.500000e+00, double 1.500000e+00, double 0.000000e+00, double 0.000000e+00, i32 7 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 5.000000e-01, i32 2 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 0x3FF2492492492492, double 0x3FD5555555555555, double 0x3FD5555555555555, i32 2 }, %struct.anon.0 { ptr @Jinc, double 3.000000e+00, double 0x3FF383C4936E7CFB, double 0.000000e+00, double 0.000000e+00, i32 8 }, %struct.anon.0 { ptr @Sinc, double 4.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 9 }, %struct.anon.0 { ptr @SincFast, double 4.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @Kaiser, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 11 }, %struct.anon.0 { ptr @Welsh, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 12 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @Bohman, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 13 }, %struct.anon.0 { ptr @Triangle, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 1 }, %struct.anon.0 { ptr @Lagrange, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 14 }, %struct.anon.0 { ptr @SincFast, double 3.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @SincFast, double 3.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @SincFast, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @SincFast, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 0x3FF2B27E986FB7A1, double 0x3FD834AFDABD7B9D, double 0x3FD3E5A812A14232, i32 2 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 0x3FF1B1736377D6E3, double 0x3FD0C4D88475319A, double 0x3FD79D93BDC56733, i32 2 }, %struct.anon.0 { ptr @Cosine, double 1.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 15 }, %struct.anon.0 { ptr @CubicBC, double 2.000000e+00, double 2.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 2 }, %struct.anon.0 { ptr @SincFast, double 3.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, i32 10 }], align 16, !dbg !835
@AcquireResizeFilter.jinc_zeros = internal unnamed_addr constant [16 x double] [double 0x3FF383C4936E7CFB, double 0x4001DD7392B48691, double 0x4009E811F2D4FEC0, double 0x4010F6D92EF1230B, double 0x4014F897398D2A3D, double 0x4018F9C69B83031A, double 0x401CFAA254BE1A14, double 0x40207DA466F40EB9, double 0x40227DE5A5605E00, double 0x40247E1A296C3FD7, double 0x40267E4557CCE5B2, double 0x40287E6979A00AB2, double 0x402A7E8827691760, double 0x402C7EA28704F9D1, double 0x402E7EB9713F7348, double 0x40303F66C4C44E83], align 16, !dbg !849
@.str = private unnamed_addr constant [85 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/resize.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"filter:filter\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"filter:window\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"filter:sigma\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"filter:alpha\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"filter:kaiser-beta\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"filter:kaiser-alpha\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"filter:lobes\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"filter:blur\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"filter:support\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"filter:win-support\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"filter:b\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"filter:c\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"filter:verbose\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"# Resampling Filter (for graphing)\0A#\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"# filter = %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"# window = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"# support = %.*g\0A\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"# window-support = %.*g\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"# scale-blur = %.*g\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"# gaussian-sigma = %.*g\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"# kaiser-beta = %.*g\0A\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"# practical-support = %.*g\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"# B,C = %.*g,%.*g\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"%5.2lf\09%.*g\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"Resize/Image\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"DelegateLibrarySupportNotBuiltIn\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"`%s' (LQR)\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"Magnify/Image\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"NegativeOrZeroImageSize\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"sample:offset\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"Sample/Image\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"Scale/Image\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"0x0+0+0\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"icm\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"file://%s\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"Thumb::URI\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"%.20g\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"Thumb::MTime\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"Thumb::Size\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"image/%s\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"Thumb::Mimetype\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"software\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Thumb::Image::Width\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"Thumb::Image::Height\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"Thumb::Document::Pages\00", align 1
@J1.Pone = internal unnamed_addr constant [9 x double] [double 0x443F81C2E523683D, double 0xC40CEF86BDED9999, double 0x43C012D008C7BCEA, double 0xC35FE006C30BA161, double 0x42F088DAAD7AF759, double 0xC273407F5DC0C206, double 0x41E96E3A40C9A788, double 0xC151E9B261F60E0A, double 0x40A51A3ED3F64AC9], align 16, !dbg !854
@J1.Qone = internal unnamed_addr constant [9 x double] [double 0x444F81C2E523683D, double 0x43E491E139AE7522, double 0x436B0DDF388A59F6, double 0x42E7AA6E7871A918, double 0x425E85BCB84A30F5, double 0x41CE372A2D2DE908, double 0x4136EA619851D3CA, double 0x40991BB9EE66133E, double 1.000000e+00], align 16, !dbg !868
@P1.Pone = internal unnamed_addr constant [6 x double] [double 0x40E1331546F86645, double 0x40EEA4DB0C43C658, double 0x40DE9E7DA39BF79D, double 0x40B3797BB3646E7F, double 0x406A64E4B4E35797, double 0x3FF41D6010A865E8], align 16, !dbg !870
@P1.Qone = internal unnamed_addr constant [6 x double] [double 0x40E1331546F86645, double 0x40EE9CCB1A4A81E9, double 0x40DE821A02293EF4, double 0x40B34265806168F6, double 0x4069627B08F1C66B, double 1.000000e+00], align 16, !dbg !881
@Q1.Pone = internal unnamed_addr constant [6 x double] [double 0x4075F2CD95877EA5, double 0x408688503DDC68E8, double 0x407A9FCBFC4E8E2C, double 0x4054CC274093A456, double 0x401245CEC89DC00C, double 0x3FA2169069C535FB], align 16, !dbg !883
@Q1.Qone = internal unnamed_addr constant [6 x double] [double 0x40BD43BCC75F5387, double 0x40CE1B16B30D93F2, double 0x40C1E01DA86532F5, double 0x409C4CBF2E6DF9FA, double 0x4059F4668A3ED3A5, double 1.000000e+00], align 16, !dbg !891
@.str.55 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @AcquireResizeFilter(ptr noundef %image, i32 noundef %filter, float noundef %blur, i32 noundef %cylindrical, ptr nocapture readnone %exception) local_unnamed_addr #0 !dbg !2 {
entry:
  %exception4 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !894, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i32 %filter, metadata !895, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata float %blur, metadata !896, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i32 %cylindrical, metadata !897, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr undef, metadata !898, metadata !DIExpression()), !dbg !941
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !942
  %0 = load i32, ptr %debug, align 8, !dbg !942, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !963
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !964

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !965
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 902, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !966
  br label %if.end, !dbg !967

if.end:                                           ; preds = %if.then, %entry
  %call1 = tail call ptr @AcquireMagickMemory(i64 noundef 80) #23, !dbg !968
  call void @llvm.dbg.value(metadata ptr %call1, metadata !905, metadata !DIExpression()), !dbg !941
  %cmp2 = icmp eq ptr %call1, null, !dbg !969
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !970

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception4) #22, !dbg !971
  call void @llvm.dbg.declare(metadata ptr %exception4, metadata !909, metadata !DIExpression()), !dbg !971
  call void @GetExceptionInfo(ptr noundef nonnull %exception4) #22, !dbg !971
  %call5 = tail call ptr @__errno_location() #24, !dbg !971
  %1 = load i32, ptr %call5, align 4, !dbg !971, !tbaa !972
  %call6 = call ptr @GetExceptionMessage(i32 noundef %1) #22, !dbg !971
  call void @llvm.dbg.value(metadata ptr %call6, metadata !906, metadata !DIExpression()), !dbg !973
  %call7 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 909, i32 noundef 700, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %call6) #22, !dbg !971
  %call8 = call ptr @DestroyString(ptr noundef %call6) #22, !dbg !971
  call void @llvm.dbg.value(metadata ptr %call8, metadata !906, metadata !DIExpression()), !dbg !973
  call void @CatchException(ptr noundef nonnull %exception4) #22, !dbg !971
  %call9 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception4) #22, !dbg !971
  call void @MagickCoreTerminus() #22, !dbg !971
  call void @_exit(i32 noundef 1) #25, !dbg !971
  unreachable, !dbg !971

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef 80) #22, !dbg !974
  %idxprom = zext i32 %filter to i64, !dbg !975
  %arrayidx = getelementptr inbounds [31 x %struct.anon], ptr @AcquireResizeFilter.mapping, i64 0, i64 %idxprom, !dbg !975
  %2 = load i32, ptr %arrayidx, align 8, !dbg !976, !tbaa !977
  call void @llvm.dbg.value(metadata i32 %2, metadata !900, metadata !DIExpression()), !dbg !941
  %window = getelementptr inbounds [31 x %struct.anon], ptr @AcquireResizeFilter.mapping, i64 0, i64 %idxprom, i32 1, !dbg !979
  %3 = load i32, ptr %window, align 4, !dbg !979, !tbaa !980
  call void @llvm.dbg.value(metadata i32 %3, metadata !901, metadata !DIExpression()), !dbg !941
  %blur15 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 5, !dbg !981
  store float %blur, ptr %blur15, align 4, !dbg !982, !tbaa !983
  %cmp16 = icmp ne i32 %cylindrical, 0, !dbg !986
  %cmp17 = icmp eq i32 %2, 15
  %or.cond = select i1 %cmp16, i1 %cmp17, i1 false, !dbg !988
  %cmp19 = icmp ne i32 %filter, 15
  %or.cond492 = and i1 %cmp19, %or.cond, !dbg !988
  %spec.select = select i1 %or.cond492, i32 13, i32 %2, !dbg !988
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !900, metadata !DIExpression()), !dbg !941
  %call22 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.5) #22, !dbg !989
  call void @llvm.dbg.value(metadata ptr %call22, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp23.not = icmp eq ptr %call22, null, !dbg !990
  br i1 %cmp23.not, label %if.else, label %if.then24, !dbg !991

if.then24:                                        ; preds = %if.end10
  %call25 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %call22) #22, !dbg !992
  call void @llvm.dbg.value(metadata i64 %call25, metadata !910, metadata !DIExpression()), !dbg !993
  %4 = add i64 %call25, -1, !dbg !994
  %5 = icmp ult i64 %4, 30, !dbg !994
  %conv = trunc i64 %call25 to i32
  %spec.select678 = select i1 %5, i32 2, i32 %3, !dbg !994
  %spec.select679 = select i1 %5, i32 %conv, i32 %spec.select, !dbg !994
  call void @llvm.dbg.value(metadata i32 %spec.select679, metadata !900, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i32 %spec.select678, metadata !901, metadata !DIExpression()), !dbg !941
  %call31 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.6) #22, !dbg !996
  call void @llvm.dbg.value(metadata ptr %call31, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp32.not = icmp eq ptr %call31, null, !dbg !997
  br i1 %cmp32.not, label %if.end62, label %if.then34, !dbg !999

if.then34:                                        ; preds = %if.then24
  %call35 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %call31) #22, !dbg !1000
  call void @llvm.dbg.value(metadata i64 %call35, metadata !910, metadata !DIExpression()), !dbg !993
  %6 = add i64 %call35, -1, !dbg !1002
  %7 = icmp ult i64 %6, 30, !dbg !1002
  %conv42 = trunc i64 %call35 to i32
  %spec.select680 = select i1 %7, i32 %conv42, i32 %spec.select678, !dbg !1002
  br label %if.end62, !dbg !1002

if.else:                                          ; preds = %if.end10
  %call45 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.6) #22, !dbg !1004
  call void @llvm.dbg.value(metadata ptr %call45, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp46.not = icmp eq ptr %call45, null, !dbg !1005
  br i1 %cmp46.not, label %if.end62, label %if.then48, !dbg !1006

if.then48:                                        ; preds = %if.else
  %call50 = tail call i64 @ParseCommandOption(i32 noundef 25, i32 noundef 0, ptr noundef nonnull %call45) #22, !dbg !1007
  call void @llvm.dbg.value(metadata i64 %call50, metadata !913, metadata !DIExpression()), !dbg !1008
  %8 = add i64 %call50, -1, !dbg !1009
  %9 = icmp ult i64 %8, 30, !dbg !1009
  br i1 %9, label %if.then56, label %if.end62, !dbg !1009

if.then56:                                        ; preds = %if.then48
  %cond = select i1 %cmp16, i32 13, i32 15, !dbg !1011
  call void @llvm.dbg.value(metadata i32 %cond, metadata !900, metadata !DIExpression()), !dbg !941
  %conv59 = trunc i64 %call50 to i32, !dbg !1013
  call void @llvm.dbg.value(metadata i32 %conv59, metadata !901, metadata !DIExpression()), !dbg !941
  br label %if.end62, !dbg !1014

if.end62:                                         ; preds = %if.then34, %if.then48, %if.then56, %if.then24, %if.else
  %window_type.3 = phi i32 [ %3, %if.else ], [ %spec.select678, %if.then24 ], [ %spec.select680, %if.then34 ], [ %conv59, %if.then56 ], [ %3, %if.then48 ], !dbg !941
  %filter_type.3 = phi i32 [ %spec.select, %if.else ], [ %spec.select679, %if.then24 ], [ %spec.select679, %if.then34 ], [ %cond, %if.then56 ], [ %spec.select, %if.then48 ], !dbg !941
  call void @llvm.dbg.value(metadata i32 %filter_type.3, metadata !900, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i32 %window_type.3, metadata !901, metadata !DIExpression()), !dbg !941
  %idxprom63 = zext i32 %filter_type.3 to i64, !dbg !1015
  %arrayidx64 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %idxprom63, !dbg !1015
  %10 = load ptr, ptr %arrayidx64, align 16, !dbg !1016, !tbaa !1017
  store ptr %10, ptr %call1, align 8, !dbg !1019, !tbaa !1020
  %support = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %idxprom63, i32 1, !dbg !1021
  %11 = load double, ptr %support, align 8, !dbg !1021, !tbaa !1022
  %conv68 = fptrunc double %11 to float, !dbg !1023
  %support69 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 2, !dbg !1024
  store float %conv68, ptr %support69, align 8, !dbg !1025, !tbaa !1026
  %weightingFunctionType = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %idxprom63, i32 5, !dbg !1027
  %12 = load i32, ptr %weightingFunctionType, align 8, !dbg !1027, !tbaa !1028
  %filterWeightingType = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 7, !dbg !1029
  store i32 %12, ptr %filterWeightingType, align 4, !dbg !1030, !tbaa !1031
  %idxprom72 = zext i32 %window_type.3 to i64, !dbg !1032
  %arrayidx73 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %idxprom72, !dbg !1032
  %13 = load ptr, ptr %arrayidx73, align 16, !dbg !1033, !tbaa !1017
  %window75 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 1, !dbg !1034
  store ptr %13, ptr %window75, align 8, !dbg !1035, !tbaa !1036
  %weightingFunctionType78 = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %idxprom72, i32 5, !dbg !1037
  %14 = load i32, ptr %weightingFunctionType78, align 8, !dbg !1037, !tbaa !1028
  %windowWeightingType = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 8, !dbg !1038
  store i32 %14, ptr %windowWeightingType, align 8, !dbg !1039, !tbaa !1040
  %scale = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %idxprom72, i32 2, !dbg !1041
  %15 = load double, ptr %scale, align 16, !dbg !1041, !tbaa !1042
  %conv81 = fptrunc double %15 to float, !dbg !1043
  %scale82 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 4, !dbg !1044
  store float %conv81, ptr %scale82, align 8, !dbg !1045, !tbaa !1046
  %signature = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 9, !dbg !1047
  store i64 2880220587, ptr %signature, align 8, !dbg !1048, !tbaa !1049
  br i1 %cmp16, label %if.then85, label %if.end92, !dbg !1050

if.then85:                                        ; preds = %if.end62
  switch i32 %filter_type.3, label %sw.epilog99 [
    i32 2, label %if.end92.thread
    i32 22, label %sw.bb87
    i32 23, label %sw.bb87
    i32 24, label %sw.bb87
    i32 25, label %sw.bb87
    i32 30, label %sw.bb87
  ], !dbg !1051

if.end92.thread:                                  ; preds = %if.then85
  store float 0x3FE6A09E60000000, ptr %support69, align 8, !dbg !1053, !tbaa !1026
  br label %sw.epilog99, !dbg !1055

sw.bb87:                                          ; preds = %if.then85, %if.then85, %if.then85, %if.then85, %if.then85
  store ptr @Jinc, ptr %call1, align 8, !dbg !1056, !tbaa !1020
  store ptr @Jinc, ptr %window75, align 8, !dbg !1057, !tbaa !1036
  store float 0x3FF383C4A0000000, ptr %scale82, align 8, !dbg !1058, !tbaa !1046
  br label %if.end92, !dbg !1059

if.end92:                                         ; preds = %sw.bb87, %if.end62
  %16 = phi ptr [ @Jinc, %sw.bb87 ], [ %13, %if.end62 ]
  %17 = phi ptr [ @Jinc, %sw.bb87 ], [ %10, %if.end62 ]
  switch i32 %filter_type.3, label %sw.epilog99 [
    i32 23, label %sw.bb93
    i32 25, label %sw.bb95
  ], !dbg !1055

sw.bb93:                                          ; preds = %if.end92
  %18 = load float, ptr %blur15, align 4, !dbg !1060, !tbaa !983
  %mul = fmul float %18, 0x3FEF6667A0000000, !dbg !1060
  store float %mul, ptr %blur15, align 4, !dbg !1060, !tbaa !983
  br label %sw.epilog99, !dbg !1062

sw.bb95:                                          ; preds = %if.end92
  %19 = load float, ptr %blur15, align 4, !dbg !1063, !tbaa !983
  %mul97 = fmul float %19, 0x3FEE8F5480000000, !dbg !1063
  store float %mul97, ptr %blur15, align 4, !dbg !1063, !tbaa !983
  br label %sw.epilog99, !dbg !1064

sw.epilog99:                                      ; preds = %if.end92.thread, %if.then85, %if.end92, %sw.bb95, %sw.bb93
  %20 = phi ptr [ %13, %if.end92.thread ], [ %13, %if.then85 ], [ %16, %if.end92 ], [ %16, %sw.bb95 ], [ %16, %sw.bb93 ]
  %21 = phi ptr [ %10, %if.end92.thread ], [ %10, %if.then85 ], [ %17, %if.end92 ], [ %17, %sw.bb95 ], [ %17, %sw.bb93 ], !dbg !1065
  %cmp101 = icmp eq ptr %21, @Gaussian, !dbg !1067
  %cmp104 = icmp eq ptr %20, @Gaussian
  %or.cond735 = select i1 %cmp101, i1 true, i1 %cmp104, !dbg !1068
  br i1 %or.cond735, label %if.then106, label %if.end141, !dbg !1068

if.then106:                                       ; preds = %sw.epilog99
  call void @llvm.dbg.value(metadata float 5.000000e-01, metadata !904, metadata !DIExpression()), !dbg !941
  %call107 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.7) #22, !dbg !1069
  call void @llvm.dbg.value(metadata ptr %call107, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp108.not = icmp eq ptr %call107, null, !dbg !1071
  br i1 %cmp108.not, label %if.end113, label %if.then110, !dbg !1073

if.then110:                                       ; preds = %if.then106
  call void @llvm.dbg.value(metadata ptr %call107, metadata !1074, metadata !DIExpression()) #22, !dbg !1083
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1083
  %call.i = tail call double @InterpretLocaleValue(ptr noundef nonnull %call107, ptr noundef null) #22, !dbg !1085
  %conv112 = fptrunc double %call.i to float, !dbg !1086
  call void @llvm.dbg.value(metadata float %conv112, metadata !904, metadata !DIExpression()), !dbg !941
  br label %if.end113, !dbg !1087

if.end113:                                        ; preds = %if.then110, %if.then106
  %value.0 = phi float [ %conv112, %if.then110 ], [ 5.000000e-01, %if.then106 ], !dbg !1088
  call void @llvm.dbg.value(metadata float %value.0, metadata !904, metadata !DIExpression()), !dbg !941
  %coefficient = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, !dbg !1089
  store float %value.0, ptr %coefficient, align 8, !dbg !1090, !tbaa !1091
  %conv115 = fpext float %value.0 to double, !dbg !1092
  %mul116 = fmul double %conv115, 2.000000e+00, !dbg !1093
  %mul118 = fmul double %mul116, %conv115, !dbg !1094
  call void @llvm.dbg.value(metadata double %mul118, metadata !1095, metadata !DIExpression()), !dbg !1102
  %cmp.i = fcmp olt double %mul118, 0.000000e+00, !dbg !1104
  %cond.i = select i1 %cmp.i, double -1.000000e+00, double 1.000000e+00, !dbg !1105
  call void @llvm.dbg.value(metadata double %cond.i, metadata !1101, metadata !DIExpression()), !dbg !1102
  %mul.i = fmul double %mul118, %cond.i, !dbg !1106
  %cmp1.i = fcmp ult double %mul.i, 1.000000e-15, !dbg !1108
  br i1 %cmp1.i, label %if.end.i, label %if.then.i, !dbg !1109

if.then.i:                                        ; preds = %if.end113
  %div.i = fdiv double 1.000000e+00, %mul118, !dbg !1110
  br label %PerceptibleReciprocal.exit, !dbg !1111

if.end.i:                                         ; preds = %if.end113
  %div2.i = fdiv double %cond.i, 1.000000e-15, !dbg !1112
  br label %PerceptibleReciprocal.exit, !dbg !1113

PerceptibleReciprocal.exit:                       ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi double [ %div.i, %if.then.i ], [ %div2.i, %if.end.i ], !dbg !1102
  %conv120 = fptrunc double %retval.0.i to float, !dbg !1114
  %arrayidx122 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, i64 1, !dbg !1115
  store float %conv120, ptr %arrayidx122, align 4, !dbg !1116, !tbaa !1091
  %mul124 = fmul double %conv115, 0x401921FB54442D18, !dbg !1117
  %mul126 = fmul double %mul124, %conv115, !dbg !1118
  call void @llvm.dbg.value(metadata double %mul126, metadata !1095, metadata !DIExpression()), !dbg !1119
  %cmp.i692 = fcmp olt double %mul126, 0.000000e+00, !dbg !1121
  %cond.i693 = select i1 %cmp.i692, double -1.000000e+00, double 1.000000e+00, !dbg !1122
  call void @llvm.dbg.value(metadata double %cond.i693, metadata !1101, metadata !DIExpression()), !dbg !1119
  %mul.i694 = fmul double %mul126, %cond.i693, !dbg !1123
  %cmp1.i695 = fcmp ult double %mul.i694, 1.000000e-15, !dbg !1124
  br i1 %cmp1.i695, label %if.end.i699, label %if.then.i697, !dbg !1125

if.then.i697:                                     ; preds = %PerceptibleReciprocal.exit
  %div.i696 = fdiv double 1.000000e+00, %mul126, !dbg !1126
  br label %PerceptibleReciprocal.exit701, !dbg !1127

if.end.i699:                                      ; preds = %PerceptibleReciprocal.exit
  %div2.i698 = fdiv double %cond.i693, 1.000000e-15, !dbg !1128
  br label %PerceptibleReciprocal.exit701, !dbg !1129

PerceptibleReciprocal.exit701:                    ; preds = %if.then.i697, %if.end.i699
  %retval.0.i700 = phi double [ %div.i696, %if.then.i697 ], [ %div2.i698, %if.end.i699 ], !dbg !1119
  %conv128 = fptrunc double %retval.0.i700 to float, !dbg !1130
  %arrayidx130 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, i64 2, !dbg !1131
  store float %conv128, ptr %arrayidx130, align 8, !dbg !1132, !tbaa !1091
  %cmp132 = fcmp ogt float %value.0, 5.000000e-01, !dbg !1133
  br i1 %cmp132, label %if.then134, label %if.end141thread-pre-split, !dbg !1135

if.then134:                                       ; preds = %PerceptibleReciprocal.exit701
  %22 = load float, ptr %support69, align 8, !dbg !1136, !tbaa !1026
  %conv137 = fpext float %22 to double, !dbg !1136
  %mul138 = fmul double %mul116, %conv137, !dbg !1136
  %conv139 = fptrunc double %mul138 to float, !dbg !1136
  store float %conv139, ptr %support69, align 8, !dbg !1136, !tbaa !1026
  br label %if.end141thread-pre-split, !dbg !1137

if.end141thread-pre-split:                        ; preds = %if.then134, %PerceptibleReciprocal.exit701
  %.pr = load ptr, ptr %call1, align 8, !dbg !1138, !tbaa !1020
  br label %if.end141, !dbg !1138

if.end141:                                        ; preds = %sw.epilog99, %if.end141thread-pre-split
  %23 = phi ptr [ %.pr, %if.end141thread-pre-split ], [ %21, %sw.epilog99 ], !dbg !1138
  %cmp143 = icmp eq ptr %23, @Kaiser, !dbg !1140
  br i1 %cmp143, label %if.then149, label %lor.lhs.false145, !dbg !1141

lor.lhs.false145:                                 ; preds = %if.end141
  %24 = load ptr, ptr %window75, align 8, !dbg !1142, !tbaa !1036
  %cmp147 = icmp eq ptr %24, @Kaiser, !dbg !1143
  br i1 %cmp147, label %if.then149, label %if.end180, !dbg !1144

if.then149:                                       ; preds = %lor.lhs.false145, %if.end141
  call void @llvm.dbg.value(metadata float 6.500000e+00, metadata !904, metadata !DIExpression()), !dbg !941
  %call150 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.8) #22, !dbg !1145
  call void @llvm.dbg.value(metadata ptr %call150, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp151.not = icmp eq ptr %call150, null, !dbg !1147
  br i1 %cmp151.not, label %if.end156, label %if.then153, !dbg !1149

if.then153:                                       ; preds = %if.then149
  call void @llvm.dbg.value(metadata ptr %call150, metadata !1074, metadata !DIExpression()) #22, !dbg !1150
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1150
  %call.i702 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call150, ptr noundef null) #22, !dbg !1152
  %conv155 = fptrunc double %call.i702 to float, !dbg !1153
  call void @llvm.dbg.value(metadata float %conv155, metadata !904, metadata !DIExpression()), !dbg !941
  br label %if.end156, !dbg !1154

if.end156:                                        ; preds = %if.then153, %if.then149
  %value.1 = phi float [ %conv155, %if.then153 ], [ 6.500000e+00, %if.then149 ], !dbg !1155
  call void @llvm.dbg.value(metadata float %value.1, metadata !904, metadata !DIExpression()), !dbg !941
  %call157 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.9) #22, !dbg !1156
  call void @llvm.dbg.value(metadata ptr %call157, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp158.not = icmp eq ptr %call157, null, !dbg !1157
  br i1 %cmp158.not, label %if.end163, label %if.then160, !dbg !1159

if.then160:                                       ; preds = %if.end156
  call void @llvm.dbg.value(metadata ptr %call157, metadata !1074, metadata !DIExpression()) #22, !dbg !1160
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1160
  %call.i703 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call157, ptr noundef null) #22, !dbg !1162
  %conv162 = fptrunc double %call.i703 to float, !dbg !1163
  call void @llvm.dbg.value(metadata float %conv162, metadata !904, metadata !DIExpression()), !dbg !941
  br label %if.end163, !dbg !1164

if.end163:                                        ; preds = %if.then160, %if.end156
  %value.2 = phi float [ %conv162, %if.then160 ], [ %value.1, %if.end156 ], !dbg !1155
  call void @llvm.dbg.value(metadata float %value.2, metadata !904, metadata !DIExpression()), !dbg !941
  %call164 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.10) #22, !dbg !1165
  call void @llvm.dbg.value(metadata ptr %call164, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp165.not = icmp eq ptr %call164, null, !dbg !1166
  br i1 %cmp165.not, label %if.end171, label %if.then167, !dbg !1168

if.then167:                                       ; preds = %if.end163
  call void @llvm.dbg.value(metadata ptr %call164, metadata !1074, metadata !DIExpression()) #22, !dbg !1169
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1169
  %call.i704 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call164, ptr noundef null) #22, !dbg !1171
  %mul169 = fmul double %call.i704, 0x400921FB54442D18, !dbg !1172
  %conv170 = fptrunc double %mul169 to float, !dbg !1173
  call void @llvm.dbg.value(metadata float %conv170, metadata !904, metadata !DIExpression()), !dbg !941
  br label %if.end171, !dbg !1174

if.end171:                                        ; preds = %if.then167, %if.end163
  %value.3 = phi float [ %conv170, %if.then167 ], [ %value.2, %if.end163 ], !dbg !1155
  call void @llvm.dbg.value(metadata float %value.3, metadata !904, metadata !DIExpression()), !dbg !941
  %coefficient172 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, !dbg !1175
  store float %value.3, ptr %coefficient172, align 8, !dbg !1176, !tbaa !1091
  call void @llvm.dbg.value(metadata float %value.3, metadata !1177, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1180, metadata !DIExpression()), !dbg !1184
  %mul.i705 = fmul float %value.3, %value.3, !dbg !1186
  %conv1.i = fmul float %mul.i705, 2.500000e-01, !dbg !1187
  call void @llvm.dbg.value(metadata float %conv1.i, metadata !1182, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata float %conv1.i, metadata !1181, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i64 2, metadata !1183, metadata !DIExpression()), !dbg !1184
  %conv216.i = fpext float %conv1.i to double, !dbg !1188
  %cmp17.i = fcmp ogt double %conv216.i, 1.000000e-15, !dbg !1191
  br i1 %cmp17.i, label %for.body.i, label %I0.exit, !dbg !1192

for.body.i:                                       ; preds = %if.end171, %for.body.i
  %i.020.i = phi i64 [ %inc.i, %for.body.i ], [ 2, %if.end171 ]
  %sum.019.i = phi float [ %add.i, %for.body.i ], [ 1.000000e+00, %if.end171 ]
  %t.018.i = phi float [ %mul8.i, %for.body.i ], [ %conv1.i, %if.end171 ]
  call void @llvm.dbg.value(metadata i64 %i.020.i, metadata !1183, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata float %sum.019.i, metadata !1180, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata float %t.018.i, metadata !1181, metadata !DIExpression()), !dbg !1184
  %add.i = fadd float %sum.019.i, %t.018.i, !dbg !1193
  call void @llvm.dbg.value(metadata float %add.i, metadata !1180, metadata !DIExpression()), !dbg !1184
  %conv4.i = sitofp i64 %i.020.i to float, !dbg !1195
  %mul6.i = fmul float %conv4.i, %conv4.i, !dbg !1196
  %div7.i = fdiv float %conv1.i, %mul6.i, !dbg !1197
  %mul8.i = fmul float %t.018.i, %div7.i, !dbg !1198
  call void @llvm.dbg.value(metadata float %mul8.i, metadata !1181, metadata !DIExpression()), !dbg !1184
  %inc.i = add nuw nsw i64 %i.020.i, 1, !dbg !1199
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1183, metadata !DIExpression()), !dbg !1184
  %conv2.i = fpext float %mul8.i to double, !dbg !1188
  %cmp.i706 = fcmp ogt double %conv2.i, 1.000000e-15, !dbg !1191
  br i1 %cmp.i706, label %for.body.i, label %I0.exit, !dbg !1192, !llvm.loop !1200

I0.exit:                                          ; preds = %for.body.i, %if.end171
  %sum.0.lcssa.i = phi float [ 1.000000e+00, %if.end171 ], [ %add.i, %for.body.i ], !dbg !1184
  %conv175 = fpext float %sum.0.lcssa.i to double, !dbg !1204
  call void @llvm.dbg.value(metadata double %conv175, metadata !1095, metadata !DIExpression()), !dbg !1205
  %cmp.i707 = fcmp olt float %sum.0.lcssa.i, 0.000000e+00, !dbg !1207
  %cond.i708 = select i1 %cmp.i707, double -1.000000e+00, double 1.000000e+00, !dbg !1208
  call void @llvm.dbg.value(metadata double %cond.i708, metadata !1101, metadata !DIExpression()), !dbg !1205
  %mul.i709 = fmul double %cond.i708, %conv175, !dbg !1209
  %cmp1.i710 = fcmp ult double %mul.i709, 1.000000e-15, !dbg !1210
  br i1 %cmp1.i710, label %if.end.i714, label %if.then.i712, !dbg !1211

if.then.i712:                                     ; preds = %I0.exit
  %div.i711 = fdiv double 1.000000e+00, %conv175, !dbg !1212
  br label %PerceptibleReciprocal.exit716, !dbg !1213

if.end.i714:                                      ; preds = %I0.exit
  %div2.i713 = fdiv double %cond.i708, 1.000000e-15, !dbg !1214
  br label %PerceptibleReciprocal.exit716, !dbg !1215

PerceptibleReciprocal.exit716:                    ; preds = %if.then.i712, %if.end.i714
  %retval.0.i715 = phi double [ %div.i711, %if.then.i712 ], [ %div2.i713, %if.end.i714 ], !dbg !1205
  %conv177 = fptrunc double %retval.0.i715 to float, !dbg !1216
  %arrayidx179 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, i64 1, !dbg !1217
  store float %conv177, ptr %arrayidx179, align 4, !dbg !1218, !tbaa !1091
  br label %if.end180, !dbg !1219

if.end180:                                        ; preds = %PerceptibleReciprocal.exit716, %lor.lhs.false145
  %call181 = tail call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.11) #22, !dbg !1220
  call void @llvm.dbg.value(metadata ptr %call181, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp182.not = icmp eq ptr %call181, null, !dbg !1221
  br i1 %cmp182.not, label %if.end192, label %if.then184, !dbg !1222

if.then184:                                       ; preds = %if.end180
  call void @llvm.dbg.value(metadata ptr %call181, metadata !1223, metadata !DIExpression()) #22, !dbg !1228
  %call.i717 = tail call i64 @strtol(ptr nocapture noundef nonnull %call181, ptr noundef null, i32 noundef 10) #22, !dbg !1230
  call void @llvm.dbg.value(metadata i64 %call.i717, metadata !917, metadata !DIExpression()), !dbg !1231
  %25 = tail call i64 @llvm.smax.i64(i64 %call.i717, i64 1), !dbg !1232
  call void @llvm.dbg.value(metadata i64 %25, metadata !917, metadata !DIExpression()), !dbg !1231
  %conv190 = sitofp i64 %25 to float, !dbg !1233
  store float %conv190, ptr %support69, align 8, !dbg !1234, !tbaa !1026
  br label %if.end192, !dbg !1235

if.end192:                                        ; preds = %if.then184, %if.end180
  %26 = load ptr, ptr %call1, align 8, !dbg !1236, !tbaa !1020
  %cmp194 = icmp eq ptr %26, @Jinc, !dbg !1238
  br i1 %cmp194, label %if.then196, label %if.end223, !dbg !1239

if.then196:                                       ; preds = %if.end192
  %27 = load float, ptr %support69, align 8, !dbg !1240, !tbaa !1026
  %cmp198 = fcmp ogt float %27, 1.600000e+01, !dbg !1243
  br i1 %cmp198, label %if.end209, label %if.else203, !dbg !1244

if.else203:                                       ; preds = %if.then196
  %conv205 = fptosi float %27 to i64, !dbg !1245
  %sub = add nsw i64 %conv205, -1, !dbg !1246
  %arrayidx206 = getelementptr inbounds [16 x double], ptr @AcquireResizeFilter.jinc_zeros, i64 0, i64 %sub, !dbg !1247
  %28 = load double, ptr %arrayidx206, align 8, !dbg !1247, !tbaa !1248
  %conv207 = fptrunc double %28 to float, !dbg !1247
  br label %if.end209

if.end209:                                        ; preds = %if.then196, %if.else203
  %storemerge = phi float [ %conv207, %if.else203 ], [ 0x40303F66C0000000, %if.then196 ], !dbg !1249
  store float %storemerge, ptr %support69, align 8, !dbg !1249, !tbaa !1026
  %cmp210 = icmp eq i32 %filter_type.3, 30, !dbg !1250
  br i1 %cmp210, label %if.then212, label %if.end223, !dbg !1252

if.then212:                                       ; preds = %if.end209
  %conv214 = fpext float %storemerge to double, !dbg !1253
  %29 = tail call double @llvm.floor.f64(double %conv214), !dbg !1255
  %div217 = fdiv double %29, %conv214, !dbg !1256
  %30 = load float, ptr %blur15, align 4, !dbg !1257, !tbaa !983
  %conv219 = fpext float %30 to double, !dbg !1257
  %mul220 = fmul double %div217, %conv219, !dbg !1257
  %conv221 = fptrunc double %mul220 to float, !dbg !1257
  store float %conv221, ptr %blur15, align 4, !dbg !1257, !tbaa !983
  br label %if.end223, !dbg !1258

if.end223:                                        ; preds = %if.end209, %if.then212, %if.end192
  %call224 = tail call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.12) #22, !dbg !1259
  call void @llvm.dbg.value(metadata ptr %call224, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp225.not = icmp eq ptr %call224, null, !dbg !1260
  br i1 %cmp225.not, label %if.end223.if.end233_crit_edge, label %if.then227, !dbg !1262

if.end223.if.end233_crit_edge:                    ; preds = %if.end223
  %.pre = load float, ptr %blur15, align 4, !dbg !1263, !tbaa !983
  br label %if.end233, !dbg !1262

if.then227:                                       ; preds = %if.end223
  call void @llvm.dbg.value(metadata ptr %call224, metadata !1074, metadata !DIExpression()) #22, !dbg !1265
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1265
  %call.i718 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call224, ptr noundef null) #22, !dbg !1267
  %31 = load float, ptr %blur15, align 4, !dbg !1268, !tbaa !983
  %conv230 = fpext float %31 to double, !dbg !1268
  %mul231 = fmul double %call.i718, %conv230, !dbg !1268
  %conv232 = fptrunc double %mul231 to float, !dbg !1268
  store float %conv232, ptr %blur15, align 4, !dbg !1268, !tbaa !983
  br label %if.end233, !dbg !1269

if.end233:                                        ; preds = %if.end223.if.end233_crit_edge, %if.then227
  %32 = phi float [ %.pre, %if.end223.if.end233_crit_edge ], [ %conv232, %if.then227 ], !dbg !1263
  %conv235 = fpext float %32 to double, !dbg !1270
  %cmp236 = fcmp olt double %conv235, 1.000000e-15, !dbg !1271
  br i1 %cmp236, label %if.then238, label %if.end240, !dbg !1272

if.then238:                                       ; preds = %if.end233
  store float 0x3CD203AFA0000000, ptr %blur15, align 4, !dbg !1273, !tbaa !983
  br label %if.end240, !dbg !1274

if.end240:                                        ; preds = %if.then238, %if.end233
  %call241 = tail call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.13) #22, !dbg !1275
  call void @llvm.dbg.value(metadata ptr %call241, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp242.not = icmp eq ptr %call241, null, !dbg !1276
  br i1 %cmp242.not, label %if.end240.if.end248_crit_edge, label %if.then244, !dbg !1278

if.end240.if.end248_crit_edge:                    ; preds = %if.end240
  %.pre733 = load float, ptr %support69, align 8, !dbg !1279, !tbaa !1026
  br label %if.end248, !dbg !1278

if.then244:                                       ; preds = %if.end240
  call void @llvm.dbg.value(metadata ptr %call241, metadata !1074, metadata !DIExpression()) #22, !dbg !1280
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1280
  %call.i719 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call241, ptr noundef null) #22, !dbg !1282
  %33 = fptrunc double %call.i719 to float, !dbg !1283
  %conv246 = tail call float @llvm.fabs.f32(float %33), !dbg !1283
  store float %conv246, ptr %support69, align 8, !dbg !1284, !tbaa !1026
  br label %if.end248, !dbg !1285

if.end248:                                        ; preds = %if.end240.if.end248_crit_edge, %if.then244
  %34 = phi float [ %.pre733, %if.end240.if.end248_crit_edge ], [ %conv246, %if.then244 ], !dbg !1279
  %window_support = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 3, !dbg !1286
  store float %34, ptr %window_support, align 4, !dbg !1287, !tbaa !1288
  %call250 = tail call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.14) #22, !dbg !1289
  call void @llvm.dbg.value(metadata ptr %call250, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp251.not = icmp eq ptr %call250, null, !dbg !1290
  br i1 %cmp251.not, label %if.end248.if.end257_crit_edge, label %if.then253, !dbg !1292

if.end248.if.end257_crit_edge:                    ; preds = %if.end248
  %.pre734 = load float, ptr %window_support, align 4, !dbg !1293, !tbaa !1288
  br label %if.end257, !dbg !1292

if.then253:                                       ; preds = %if.end248
  call void @llvm.dbg.value(metadata ptr %call250, metadata !1074, metadata !DIExpression()) #22, !dbg !1294
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1294
  %call.i720 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call250, ptr noundef null) #22, !dbg !1296
  %35 = fptrunc double %call.i720 to float, !dbg !1297
  %conv255 = tail call float @llvm.fabs.f32(float %35), !dbg !1297
  store float %conv255, ptr %window_support, align 4, !dbg !1298, !tbaa !1288
  br label %if.end257, !dbg !1299

if.end257:                                        ; preds = %if.end248.if.end257_crit_edge, %if.then253
  %36 = phi float [ %.pre734, %if.end248.if.end257_crit_edge ], [ %conv255, %if.then253 ], !dbg !1293
  %37 = load float, ptr %scale82, align 8, !dbg !1300, !tbaa !1046
  %div260 = fdiv float %37, %36, !dbg !1300
  store float %div260, ptr %scale82, align 8, !dbg !1300, !tbaa !1046
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !902, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !903, metadata !DIExpression()), !dbg !941
  %38 = load ptr, ptr %call1, align 8, !dbg !1301, !tbaa !1020
  %cmp262 = icmp eq ptr %38, @CubicBC, !dbg !1302
  br i1 %cmp262, label %if.then268, label %lor.lhs.false264, !dbg !1303

lor.lhs.false264:                                 ; preds = %if.end257
  %39 = load ptr, ptr %window75, align 8, !dbg !1304, !tbaa !1036
  %cmp266 = icmp eq ptr %39, @CubicBC, !dbg !1305
  br i1 %cmp266, label %if.then268, label %if.end365, !dbg !1306

if.then268:                                       ; preds = %lor.lhs.false264, %if.end257
  call void @llvm.dbg.value(metadata float undef, metadata !902, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata float undef, metadata !903, metadata !DIExpression()), !dbg !941
  %cmp280 = icmp eq ptr %13, @CubicBC, !dbg !1307
  %spec.select681 = select i1 %cmp280, i64 %idxprom72, i64 %idxprom63, !dbg !1309
  %C.0.in.in = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %spec.select681, i32 4, !dbg !1310
  %B.0.in.in = getelementptr inbounds [31 x %struct.anon.0], ptr @AcquireResizeFilter.filters, i64 0, i64 %spec.select681, i32 3, !dbg !1310
  %B.0.in = load double, ptr %B.0.in.in, align 8, !dbg !1310, !tbaa !1311
  %C.0.in = load double, ptr %C.0.in.in, align 16, !dbg !1310, !tbaa !1312
  %call292 = tail call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.15) #22, !dbg !1313
  call void @llvm.dbg.value(metadata ptr %call292, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp293.not = icmp eq ptr %call292, null, !dbg !1314
  br i1 %cmp293.not, label %if.else309, label %if.then295, !dbg !1316

if.then295:                                       ; preds = %if.then268
  call void @llvm.dbg.value(metadata ptr %call292, metadata !1074, metadata !DIExpression()) #22, !dbg !1317
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1317
  %call.i721 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call292, ptr noundef null) #22, !dbg !1320
  %conv297 = fptrunc double %call.i721 to float, !dbg !1321
  call void @llvm.dbg.value(metadata float %conv297, metadata !902, metadata !DIExpression()), !dbg !941
  %conv298 = fpext float %conv297 to double, !dbg !1322
  %sub299 = fsub double 1.000000e+00, %conv298, !dbg !1323
  %div300 = fmul double %sub299, 5.000000e-01, !dbg !1324
  %conv301 = fptrunc double %div300 to float, !dbg !1325
  call void @llvm.dbg.value(metadata float %conv301, metadata !903, metadata !DIExpression()), !dbg !941
  %call302 = tail call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.16) #22, !dbg !1326
  call void @llvm.dbg.value(metadata ptr %call302, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp303.not = icmp eq ptr %call302, null, !dbg !1327
  br i1 %cmp303.not, label %if.end320, label %if.then305, !dbg !1329

if.then305:                                       ; preds = %if.then295
  call void @llvm.dbg.value(metadata ptr %call302, metadata !1074, metadata !DIExpression()) #22, !dbg !1330
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1330
  %call.i722 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call302, ptr noundef null) #22, !dbg !1332
  %conv307 = fptrunc double %call.i722 to float, !dbg !1333
  call void @llvm.dbg.value(metadata float %conv307, metadata !903, metadata !DIExpression()), !dbg !941
  br label %if.end320, !dbg !1334

if.else309:                                       ; preds = %if.then268
  %B.0 = fptrunc double %B.0.in to float, !dbg !1310
  call void @llvm.dbg.value(metadata float %B.0, metadata !902, metadata !DIExpression()), !dbg !941
  %C.0 = fptrunc double %C.0.in to float, !dbg !1310
  call void @llvm.dbg.value(metadata float %C.0, metadata !903, metadata !DIExpression()), !dbg !941
  %call310 = tail call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.16) #22, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %call310, metadata !899, metadata !DIExpression()), !dbg !941
  %cmp311.not = icmp eq ptr %call310, null, !dbg !1337
  br i1 %cmp311.not, label %if.end320, label %if.then313, !dbg !1339

if.then313:                                       ; preds = %if.else309
  call void @llvm.dbg.value(metadata ptr %call310, metadata !1074, metadata !DIExpression()) #22, !dbg !1340
  call void @llvm.dbg.value(metadata ptr null, metadata !1082, metadata !DIExpression()) #22, !dbg !1340
  %call.i723 = tail call double @InterpretLocaleValue(ptr noundef nonnull %call310, ptr noundef null) #22, !dbg !1343
  %conv315 = fptrunc double %call.i723 to float, !dbg !1344
  call void @llvm.dbg.value(metadata float %conv315, metadata !903, metadata !DIExpression()), !dbg !941
  %conv316 = fpext float %conv315 to double, !dbg !1345
  %40 = tail call double @llvm.fmuladd.f64(double %conv316, double -2.000000e+00, double 1.000000e+00), !dbg !1346
  %conv318 = fptrunc double %40 to float, !dbg !1347
  call void @llvm.dbg.value(metadata float %conv318, metadata !902, metadata !DIExpression()), !dbg !941
  br label %if.end320, !dbg !1348

if.end320:                                        ; preds = %if.else309, %if.then313, %if.then295, %if.then305
  %C.1 = phi float [ %conv307, %if.then305 ], [ %conv301, %if.then295 ], [ %conv315, %if.then313 ], [ %C.0, %if.else309 ], !dbg !1310
  %B.1 = phi float [ %conv297, %if.then305 ], [ %conv297, %if.then295 ], [ %conv318, %if.then313 ], [ %B.0, %if.else309 ], !dbg !1310
  call void @llvm.dbg.value(metadata float %B.1, metadata !902, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata float %C.1, metadata !903, metadata !DIExpression()), !dbg !941
  %add = fadd float %B.1, %B.1, !dbg !1349
  %conv321 = fpext float %add to double, !dbg !1350
  call void @llvm.dbg.value(metadata double %conv321, metadata !920, metadata !DIExpression()), !dbg !1351
  %conv322 = fpext float %B.1 to double, !dbg !1352
  %41 = tail call double @llvm.fmuladd.f64(double %conv322, double 0xBFD5555555555555, double 1.000000e+00), !dbg !1353
  %conv324 = fptrunc double %41 to float, !dbg !1354
  %coefficient325 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, !dbg !1355
  store float %conv324, ptr %coefficient325, align 8, !dbg !1356, !tbaa !1091
  %add327 = fadd double %conv321, -3.000000e+00, !dbg !1357
  %conv328 = fpext float %C.1 to double, !dbg !1358
  %add329 = fadd double %add327, %conv328, !dbg !1359
  %conv330 = fptrunc double %add329 to float, !dbg !1360
  %arrayidx332 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, i64 1, !dbg !1361
  store float %conv330, ptr %arrayidx332, align 4, !dbg !1362, !tbaa !1091
  %42 = tail call double @llvm.fmuladd.f64(double %conv322, double -1.500000e+00, double 2.000000e+00), !dbg !1363
  %sub336 = fsub double %42, %conv328, !dbg !1364
  %conv337 = fptrunc double %sub336 to float, !dbg !1365
  %arrayidx339 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, i64 2, !dbg !1366
  store float %conv337, ptr %arrayidx339, align 8, !dbg !1367, !tbaa !1091
  %mul343 = fmul double %conv328, 4.000000e+00, !dbg !1368
  %43 = tail call double @llvm.fmuladd.f64(double %conv322, double 0x3FF5555555555555, double %mul343), !dbg !1369
  %conv344 = fptrunc double %43 to float, !dbg !1370
  %arrayidx346 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, i64 3, !dbg !1371
  store float %conv344, ptr %arrayidx346, align 4, !dbg !1372, !tbaa !1091
  %neg = fneg double %conv321, !dbg !1373
  %44 = tail call double @llvm.fmuladd.f64(double %conv328, double -8.000000e+00, double %neg), !dbg !1373
  %conv349 = fptrunc double %44 to float, !dbg !1374
  %arrayidx351 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, i64 4, !dbg !1375
  store float %conv349, ptr %arrayidx351, align 8, !dbg !1376, !tbaa !1091
  %45 = tail call double @llvm.fmuladd.f64(double %conv328, double 5.000000e+00, double %conv322), !dbg !1377
  %conv355 = fptrunc double %45 to float, !dbg !1378
  %arrayidx357 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, i64 5, !dbg !1379
  store float %conv355, ptr %arrayidx357, align 4, !dbg !1380, !tbaa !1091
  %neg361 = fneg double %conv328, !dbg !1381
  %46 = tail call double @llvm.fmuladd.f64(double %conv322, double 0xBFC5555555555555, double %neg361), !dbg !1381
  %conv362 = fptrunc double %46 to float, !dbg !1382
  %arrayidx364 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, i64 6, !dbg !1383
  store float %conv362, ptr %arrayidx364, align 8, !dbg !1384, !tbaa !1091
  br label %if.end365, !dbg !1385

if.end365:                                        ; preds = %if.end320, %lor.lhs.false264
  %C.2 = phi float [ %C.1, %if.end320 ], [ 0.000000e+00, %lor.lhs.false264 ], !dbg !941
  %B.2 = phi float [ %B.1, %if.end320 ], [ 0.000000e+00, %lor.lhs.false264 ], !dbg !941
  call void @llvm.dbg.value(metadata float %B.2, metadata !902, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata float %C.2, metadata !903, metadata !DIExpression()), !dbg !941
  %call366 = tail call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.17) #22, !dbg !1386
  call void @llvm.dbg.value(metadata ptr %call366, metadata !899, metadata !DIExpression()), !dbg !941
  %call367 = tail call i32 @IsMagickTrue(ptr noundef %call366) #22, !dbg !1387
  %tobool.not = icmp eq i32 %call367, 0, !dbg !1387
  br i1 %tobool.not, label %if.end490, label %if.then368, !dbg !1388

if.then368:                                       ; preds = %if.end365
  %47 = load ptr, ptr %call1, align 8, !dbg !1389, !tbaa !1020
  %cmp371 = icmp eq ptr %47, @Box, !dbg !1391
  %spec.select682 = select i1 %cmp371, i32 2, i32 %filter_type.3, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %spec.select682, metadata !900, metadata !DIExpression()), !dbg !941
  %cmp376 = icmp eq ptr %47, @Sinc, !dbg !1393
  %spec.select687 = select i1 %cmp376, i32 14, i32 %spec.select682, !dbg !1395
  call void @llvm.dbg.value(metadata i32 %spec.select687, metadata !900, metadata !DIExpression()), !dbg !941
  %cmp381 = icmp eq ptr %47, @SincFast, !dbg !1396
  %spec.select683 = select i1 %cmp381, i32 15, i32 %spec.select687, !dbg !1398
  call void @llvm.dbg.value(metadata i32 %spec.select683, metadata !900, metadata !DIExpression()), !dbg !941
  %cmp386 = icmp eq ptr %47, @Jinc, !dbg !1399
  %spec.select690 = select i1 %cmp386, i32 13, i32 %spec.select683, !dbg !1401
  call void @llvm.dbg.value(metadata i32 %spec.select690, metadata !900, metadata !DIExpression()), !dbg !941
  %cmp391 = icmp eq ptr %47, @CubicBC, !dbg !1402
  %spec.select684 = select i1 %cmp391, i32 10, i32 %spec.select690, !dbg !1404
  call void @llvm.dbg.value(metadata i32 %spec.select684, metadata !900, metadata !DIExpression()), !dbg !941
  %48 = load ptr, ptr %window75, align 8, !dbg !1405, !tbaa !1036
  %cmp396 = icmp eq ptr %48, @Box, !dbg !1407
  %spec.select688 = select i1 %cmp396, i32 2, i32 %window_type.3, !dbg !1408
  call void @llvm.dbg.value(metadata i32 %spec.select688, metadata !901, metadata !DIExpression()), !dbg !941
  %cmp401 = icmp eq ptr %48, @Sinc, !dbg !1409
  %spec.select685 = select i1 %cmp401, i32 14, i32 %spec.select688, !dbg !1411
  call void @llvm.dbg.value(metadata i32 %spec.select685, metadata !901, metadata !DIExpression()), !dbg !941
  %cmp406 = icmp eq ptr %48, @SincFast, !dbg !1412
  %spec.select691 = select i1 %cmp406, i32 15, i32 %spec.select685, !dbg !1414
  call void @llvm.dbg.value(metadata i32 %spec.select691, metadata !901, metadata !DIExpression()), !dbg !941
  %cmp411 = icmp eq ptr %48, @Jinc, !dbg !1415
  %spec.select686 = select i1 %cmp411, i32 13, i32 %spec.select691, !dbg !1417
  call void @llvm.dbg.value(metadata i32 %spec.select686, metadata !901, metadata !DIExpression()), !dbg !941
  %cmp416 = icmp eq ptr %48, @CubicBC, !dbg !1418
  %spec.select689 = select i1 %cmp416, i32 10, i32 %spec.select686, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %spec.select689, metadata !901, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1421, metadata !DIExpression()), !dbg !1426
  %49 = load float, ptr %support69, align 8, !dbg !1428, !tbaa !1026
  %50 = load float, ptr %blur15, align 4, !dbg !1429, !tbaa !983
  %mul.i724 = fmul float %49, %50, !dbg !1430
  %conv421 = fpext float %mul.i724 to double, !dbg !1431
  call void @llvm.dbg.value(metadata double %conv421, metadata !924, metadata !DIExpression()), !dbg !1432
  %51 = load ptr, ptr @stdout, align 8, !dbg !1433, !tbaa !1434
  %call422 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %51, ptr noundef nonnull @.str.18) #22, !dbg !1435
  %52 = load ptr, ptr @stdout, align 8, !dbg !1436, !tbaa !1434
  %conv423 = zext i32 %spec.select684 to i64, !dbg !1437
  %call424 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %conv423) #22, !dbg !1438
  %call425 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %52, ptr noundef nonnull @.str.19, ptr noundef %call424) #22, !dbg !1439
  %53 = load ptr, ptr @stdout, align 8, !dbg !1440, !tbaa !1434
  %conv426 = zext i32 %spec.select689 to i64, !dbg !1441
  %call427 = tail call ptr @CommandOptionToMnemonic(i32 noundef 25, i64 noundef %conv426) #22, !dbg !1442
  %call428 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %53, ptr noundef nonnull @.str.20, ptr noundef %call427) #22, !dbg !1443
  %54 = load ptr, ptr @stdout, align 8, !dbg !1444, !tbaa !1434
  %call429 = tail call i32 @GetMagickPrecision() #22, !dbg !1445
  %55 = load float, ptr %support69, align 8, !dbg !1446, !tbaa !1026
  %conv431 = fpext float %55 to double, !dbg !1447
  %call432 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %54, ptr noundef nonnull @.str.21, i32 noundef %call429, double noundef %conv431) #22, !dbg !1448
  %56 = load ptr, ptr @stdout, align 8, !dbg !1449, !tbaa !1434
  %call433 = tail call i32 @GetMagickPrecision() #22, !dbg !1450
  %57 = load float, ptr %window_support, align 4, !dbg !1451, !tbaa !1288
  %conv435 = fpext float %57 to double, !dbg !1452
  %call436 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %56, ptr noundef nonnull @.str.22, i32 noundef %call433, double noundef %conv435) #22, !dbg !1453
  %58 = load ptr, ptr @stdout, align 8, !dbg !1454, !tbaa !1434
  %call437 = tail call i32 @GetMagickPrecision() #22, !dbg !1455
  %59 = load float, ptr %blur15, align 4, !dbg !1456, !tbaa !983
  %conv439 = fpext float %59 to double, !dbg !1457
  %call440 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %58, ptr noundef nonnull @.str.23, i32 noundef %call437, double noundef %conv439) #22, !dbg !1458
  %cmp441 = icmp eq i32 %spec.select684, 8, !dbg !1459
  %cmp444 = icmp eq i32 %spec.select689, 8
  %or.cond496 = select i1 %cmp441, i1 true, i1 %cmp444, !dbg !1461
  br i1 %or.cond496, label %if.then446, label %if.end452, !dbg !1461

if.then446:                                       ; preds = %if.then368
  %60 = load ptr, ptr @stdout, align 8, !dbg !1462, !tbaa !1434
  %call447 = tail call i32 @GetMagickPrecision() #22, !dbg !1463
  %coefficient448 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, !dbg !1464
  %61 = load float, ptr %coefficient448, align 8, !dbg !1465, !tbaa !1091
  %conv450 = fpext float %61 to double, !dbg !1466
  %call451 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %60, ptr noundef nonnull @.str.24, i32 noundef %call447, double noundef %conv450) #22, !dbg !1467
  br label %if.end452, !dbg !1468

if.end452:                                        ; preds = %if.then368, %if.then446
  %cmp453 = icmp eq i32 %spec.select684, 16, !dbg !1469
  %cmp456 = icmp eq i32 %spec.select689, 16
  %or.cond497 = select i1 %cmp453, i1 true, i1 %cmp456, !dbg !1471
  br i1 %or.cond497, label %if.then458, label %if.end464, !dbg !1471

if.then458:                                       ; preds = %if.end452
  %62 = load ptr, ptr @stdout, align 8, !dbg !1472, !tbaa !1434
  %call459 = tail call i32 @GetMagickPrecision() #22, !dbg !1473
  %coefficient460 = getelementptr inbounds %struct._ResizeFilter, ptr %call1, i64 0, i32 6, !dbg !1474
  %63 = load float, ptr %coefficient460, align 8, !dbg !1475, !tbaa !1091
  %conv462 = fpext float %63 to double, !dbg !1476
  %call463 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %62, ptr noundef nonnull @.str.25, i32 noundef %call459, double noundef %conv462) #22, !dbg !1477
  br label %if.end464, !dbg !1478

if.end464:                                        ; preds = %if.end452, %if.then458
  %64 = load ptr, ptr @stdout, align 8, !dbg !1479, !tbaa !1434
  %call465 = tail call i32 @GetMagickPrecision() #22, !dbg !1480
  %call466 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %64, ptr noundef nonnull @.str.26, i32 noundef %call465, double noundef %conv421) #22, !dbg !1481
  %cmp467 = icmp eq i32 %spec.select684, 10, !dbg !1482
  %cmp470 = icmp eq i32 %spec.select689, 10
  %or.cond498 = select i1 %cmp467, i1 true, i1 %cmp470, !dbg !1484
  br i1 %or.cond498, label %if.then472, label %if.end478, !dbg !1484

if.then472:                                       ; preds = %if.end464
  %65 = load ptr, ptr @stdout, align 8, !dbg !1485, !tbaa !1434
  %call473 = tail call i32 @GetMagickPrecision() #22, !dbg !1486
  %conv474 = fpext float %B.2 to double, !dbg !1487
  %call475 = tail call i32 @GetMagickPrecision() #22, !dbg !1488
  %conv476 = fpext float %C.2 to double, !dbg !1489
  %call477 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %65, ptr noundef nonnull @.str.27, i32 noundef %call473, double noundef %conv474, i32 noundef %call475, double noundef %conv476) #22, !dbg !1490
  br label %if.end478, !dbg !1491

if.end478:                                        ; preds = %if.end464, %if.then472
  %66 = load ptr, ptr @stdout, align 8, !dbg !1492, !tbaa !1434
  %call479 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %66, ptr noundef nonnull @.str.28) #22, !dbg !1493
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !927, metadata !DIExpression()), !dbg !1432
  %cmp480731 = fcmp ult float %mul.i724, 0.000000e+00, !dbg !1494
  br i1 %cmp480731, label %for.end, label %for.body, !dbg !1497

for.body:                                         ; preds = %if.end478, %GetResizeFilterWeight.exit
  %x.0732 = phi double [ %add487, %GetResizeFilterWeight.exit ], [ 0.000000e+00, %if.end478 ]
  call void @llvm.dbg.value(metadata double %x.0732, metadata !927, metadata !DIExpression()), !dbg !1432
  %67 = load ptr, ptr @stdout, align 8, !dbg !1498, !tbaa !1434
  %call482 = tail call i32 @GetMagickPrecision() #22, !dbg !1499
  %conv483 = fptrunc double %x.0732 to float, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %call1, metadata !1501, metadata !DIExpression()) #22, !dbg !1510
  call void @llvm.dbg.value(metadata float %conv483, metadata !1506, metadata !DIExpression()) #22, !dbg !1510
  %68 = tail call float @llvm.fabs.f32(float %conv483) #22, !dbg !1512
  %69 = load float, ptr %blur15, align 4, !dbg !1513, !tbaa !983
  %conv2.i726 = fdiv float %68, %69, !dbg !1512
  call void @llvm.dbg.value(metadata float %conv2.i726, metadata !1509, metadata !DIExpression()) #22, !dbg !1510
  %70 = load float, ptr %window_support, align 4, !dbg !1514, !tbaa !1288
  %conv3.i = fpext float %70 to double, !dbg !1516
  %cmp.i727 = fcmp olt double %conv3.i, 1.000000e-15, !dbg !1517
  br i1 %cmp.i727, label %GetResizeFilterWeight.exit, label %lor.lhs.false.i, !dbg !1518

lor.lhs.false.i:                                  ; preds = %for.body
  %71 = load ptr, ptr %window75, align 8, !dbg !1519, !tbaa !1036
  %cmp5.i = icmp eq ptr %71, @Box, !dbg !1520
  br i1 %cmp5.i, label %GetResizeFilterWeight.exit, label %if.else.i, !dbg !1521

if.else.i:                                        ; preds = %lor.lhs.false.i
  %72 = load float, ptr %scale82, align 8, !dbg !1522, !tbaa !1046
  call void @llvm.dbg.value(metadata float %72, metadata !1507, metadata !DIExpression()) #22, !dbg !1510
  %mul.i728 = fmul float %conv2.i726, %72, !dbg !1524
  %call.i729 = tail call float %71(float noundef %mul.i728, ptr noundef nonnull %call1) #22, !dbg !1525
  call void @llvm.dbg.value(metadata float %call.i729, metadata !1507, metadata !DIExpression()) #22, !dbg !1510
  br label %GetResizeFilterWeight.exit

GetResizeFilterWeight.exit:                       ; preds = %for.body, %lor.lhs.false.i, %if.else.i
  %scale.0.i = phi float [ %call.i729, %if.else.i ], [ 1.000000e+00, %lor.lhs.false.i ], [ 1.000000e+00, %for.body ], !dbg !1526
  call void @llvm.dbg.value(metadata float %scale.0.i, metadata !1507, metadata !DIExpression()) #22, !dbg !1510
  %73 = load ptr, ptr %call1, align 8, !dbg !1527, !tbaa !1020
  %call9.i = tail call float %73(float noundef %conv2.i726, ptr noundef nonnull %call1) #22, !dbg !1528
  %mul10.i = fmul float %scale.0.i, %call9.i, !dbg !1529
  call void @llvm.dbg.value(metadata float %mul10.i, metadata !1508, metadata !DIExpression()) #22, !dbg !1510
  %conv485 = fpext float %mul10.i to double, !dbg !1530
  %call486 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %67, ptr noundef nonnull @.str.29, double noundef %x.0732, i32 noundef %call482, double noundef %conv485) #22, !dbg !1531
  %add487 = fadd double %x.0732, 0x3F847AE140000000, !dbg !1532
  call void @llvm.dbg.value(metadata double %add487, metadata !927, metadata !DIExpression()), !dbg !1432
  %cmp480 = fcmp ugt double %add487, %conv421, !dbg !1494
  br i1 %cmp480, label %for.end, label %for.body, !dbg !1497, !llvm.loop !1533

for.end:                                          ; preds = %GetResizeFilterWeight.exit, %if.end478
  %74 = load ptr, ptr @stdout, align 8, !dbg !1535, !tbaa !1434
  %call488 = tail call i32 @GetMagickPrecision() #22, !dbg !1536
  %call489 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %74, ptr noundef nonnull @.str.29, double noundef %conv421, i32 noundef %call488, double noundef 0.000000e+00) #22, !dbg !1537
  br label %if.end490, !dbg !1538

if.end490:                                        ; preds = %for.end, %if.end365
  %call491 = tail call i32 @DeleteImageArtifact(ptr noundef %image, ptr noundef nonnull @.str.17) #22, !dbg !1539
  ret ptr %call1, !dbg !1540
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal float @Box(float noundef %x, ptr nocapture noundef readnone %resize_filter) #3 !dbg !1541 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1543, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1544, metadata !DIExpression()), !dbg !1545
  ret float 1.000000e+00, !dbg !1546
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal float @Triangle(float noundef %x, ptr nocapture noundef readnone %resize_filter) #3 !dbg !1547 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1549, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1550, metadata !DIExpression()), !dbg !1551
  %cmp = fcmp olt float %x, 1.000000e+00, !dbg !1552
  br i1 %cmp, label %if.then, label %return, !dbg !1554

if.then:                                          ; preds = %entry
  %conv3 = fsub float 1.000000e+00, %x, !dbg !1555
  br label %return, !dbg !1556

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi float [ %conv3, %if.then ], [ 0.000000e+00, %entry ], !dbg !1551
  ret float %retval.0, !dbg !1557
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable
define internal float @CubicBC(float noundef %x, ptr nocapture noundef readonly %resize_filter) #4 !dbg !1558 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1560, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1561, metadata !DIExpression()), !dbg !1562
  %cmp = fcmp olt float %x, 1.000000e+00, !dbg !1563
  br i1 %cmp, label %if.then, label %if.end, !dbg !1565

if.then:                                          ; preds = %entry
  %coefficient = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, !dbg !1566
  %0 = load float, ptr %coefficient, align 8, !dbg !1567, !tbaa !1091
  %arrayidx3 = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, i64 1, !dbg !1568
  %1 = load float, ptr %arrayidx3, align 4, !dbg !1568, !tbaa !1091
  %arrayidx5 = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, i64 2, !dbg !1569
  %2 = load float, ptr %arrayidx5, align 8, !dbg !1569, !tbaa !1091
  %3 = tail call float @llvm.fmuladd.f32(float %x, float %2, float %1), !dbg !1570
  %mul = fmul float %3, %x, !dbg !1571
  %4 = tail call float @llvm.fmuladd.f32(float %x, float %mul, float %0), !dbg !1572
  br label %return, !dbg !1573

if.end:                                           ; preds = %entry
  %cmp8 = fcmp olt float %x, 2.000000e+00, !dbg !1574
  br i1 %cmp8, label %if.then10, label %return, !dbg !1576

if.then10:                                        ; preds = %if.end
  %arrayidx12 = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, i64 3, !dbg !1577
  %5 = load float, ptr %arrayidx12, align 4, !dbg !1577, !tbaa !1091
  %arrayidx14 = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, i64 4, !dbg !1578
  %6 = load float, ptr %arrayidx14, align 8, !dbg !1578, !tbaa !1091
  %arrayidx16 = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, i64 5, !dbg !1579
  %7 = load float, ptr %arrayidx16, align 4, !dbg !1579, !tbaa !1091
  %arrayidx18 = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, i64 6, !dbg !1580
  %8 = load float, ptr %arrayidx18, align 8, !dbg !1580, !tbaa !1091
  %9 = tail call float @llvm.fmuladd.f32(float %x, float %8, float %7), !dbg !1581
  %10 = tail call float @llvm.fmuladd.f32(float %x, float %9, float %6), !dbg !1582
  %11 = tail call float @llvm.fmuladd.f32(float %x, float %10, float %5), !dbg !1583
  br label %return, !dbg !1584

return:                                           ; preds = %if.end, %if.then10, %if.then
  %retval.0 = phi float [ %4, %if.then ], [ %11, %if.then10 ], [ 0.000000e+00, %if.end ], !dbg !1562
  ret float %retval.0, !dbg !1585
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define internal float @Hanning(float noundef %x, ptr nocapture noundef readnone %resize_filter) #5 !dbg !1586 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1588, metadata !DIExpression()), !dbg !1591
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1589, metadata !DIExpression()), !dbg !1591
  %conv = fpext float %x to double, !dbg !1592
  %mul = fmul double %conv, 0x400921FB54442D18, !dbg !1593
  %call = tail call double @cos(double noundef %mul) #22, !dbg !1594
  %conv1 = fptrunc double %call to float, !dbg !1594
  call void @llvm.dbg.value(metadata float %conv1, metadata !1590, metadata !DIExpression()), !dbg !1591
  %conv2 = fpext float %conv1 to double, !dbg !1595
  %0 = tail call double @llvm.fmuladd.f64(double %conv2, double 5.000000e-01, double 5.000000e-01), !dbg !1596
  %conv4 = fptrunc double %0 to float, !dbg !1597
  ret float %conv4, !dbg !1598
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define internal float @Hamming(float noundef %x, ptr nocapture noundef readnone %resize_filter) #5 !dbg !1599 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1601, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1602, metadata !DIExpression()), !dbg !1604
  %conv = fpext float %x to double, !dbg !1605
  %mul = fmul double %conv, 0x400921FB54442D18, !dbg !1606
  %call = tail call double @cos(double noundef %mul) #22, !dbg !1607
  %conv1 = fptrunc double %call to float, !dbg !1607
  call void @llvm.dbg.value(metadata float %conv1, metadata !1603, metadata !DIExpression()), !dbg !1604
  %conv2 = fpext float %conv1 to double, !dbg !1608
  %0 = tail call double @llvm.fmuladd.f64(double %conv2, double 4.600000e-01, double 5.400000e-01), !dbg !1609
  %conv4 = fptrunc double %0 to float, !dbg !1610
  ret float %conv4, !dbg !1611
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define internal float @Blackman(float noundef %x, ptr nocapture noundef readnone %resize_filter) #5 !dbg !1612 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1614, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1615, metadata !DIExpression()), !dbg !1617
  %conv = fpext float %x to double, !dbg !1618
  %mul = fmul double %conv, 0x400921FB54442D18, !dbg !1619
  %call = tail call double @cos(double noundef %mul) #22, !dbg !1620
  %conv1 = fptrunc double %call to float, !dbg !1620
  call void @llvm.dbg.value(metadata float %conv1, metadata !1616, metadata !DIExpression()), !dbg !1617
  %conv2 = fpext float %conv1 to double, !dbg !1621
  %0 = tail call double @llvm.fmuladd.f64(double %conv2, double 1.600000e-01, double 5.000000e-01), !dbg !1622
  %1 = tail call double @llvm.fmuladd.f64(double %conv2, double %0, double 3.400000e-01), !dbg !1623
  %conv6 = fptrunc double %1 to float, !dbg !1624
  ret float %conv6, !dbg !1625
}

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define internal float @Gaussian(float noundef %x, ptr nocapture noundef readonly %resize_filter) #6 !dbg !1626 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1628, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1629, metadata !DIExpression()), !dbg !1630
  %arrayidx = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, i64 1, !dbg !1631
  %0 = load float, ptr %arrayidx, align 4, !dbg !1631, !tbaa !1091
  %fneg = fneg float %0, !dbg !1632
  %mul = fmul float %fneg, %x, !dbg !1633
  %mul1 = fmul float %mul, %x, !dbg !1634
  %conv = fpext float %mul1 to double, !dbg !1635
  %call = tail call double @exp(double noundef %conv) #22, !dbg !1636
  %conv2 = fptrunc double %call to float, !dbg !1637
  ret float %conv2, !dbg !1638
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal float @Quadratic(float noundef %x, ptr nocapture noundef readnone %resize_filter) #3 !dbg !1639 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1641, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1642, metadata !DIExpression()), !dbg !1643
  %conv = fpext float %x to double, !dbg !1644
  %cmp = fcmp olt float %x, 5.000000e-01, !dbg !1646
  br i1 %cmp, label %if.then, label %if.end, !dbg !1647

if.then:                                          ; preds = %entry
  %mul = fmul float %x, %x, !dbg !1648
  %conv3 = fsub float 7.500000e-01, %mul, !dbg !1649
  br label %return, !dbg !1650

if.end:                                           ; preds = %entry
  %cmp5 = fcmp olt float %x, 1.500000e+00, !dbg !1651
  br i1 %cmp5, label %if.then7, label %return, !dbg !1653

if.then7:                                         ; preds = %if.end
  %sub9 = fadd double %conv, -1.500000e+00, !dbg !1654
  %mul10 = fmul double %sub9, 5.000000e-01, !dbg !1655
  %mul13 = fmul double %sub9, %mul10, !dbg !1656
  %conv14 = fptrunc double %mul13 to float, !dbg !1657
  br label %return, !dbg !1658

return:                                           ; preds = %if.end, %if.then7, %if.then
  %retval.0 = phi float [ %conv3, %if.then ], [ %conv14, %if.then7 ], [ 0.000000e+00, %if.end ], !dbg !1643
  ret float %retval.0, !dbg !1659
}

; Function Attrs: nofree nounwind writeonly uwtable
define internal float @Jinc(float noundef %x, ptr nocapture noundef readnone %resize_filter) #7 !dbg !1660 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1662, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1663, metadata !DIExpression()), !dbg !1664
  %cmp = fcmp oeq float %x, 0.000000e+00, !dbg !1665
  br i1 %cmp, label %return, label %if.end, !dbg !1667

if.end:                                           ; preds = %entry
  %mul = fmul float %x, 0x400921FB60000000, !dbg !1668
  call void @llvm.dbg.value(metadata float %mul, metadata !1669, metadata !DIExpression()) #22, !dbg !1674
  %cmp.i = fcmp oeq float %mul, 0.000000e+00, !dbg !1676
  br i1 %cmp.i, label %BesselOrderOne.exit, label %if.end.i, !dbg !1678

if.end.i:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata float %mul, metadata !1672, metadata !DIExpression()) #22, !dbg !1674
  %cmp3.i = fcmp olt float %mul, 0.000000e+00, !dbg !1679
  br i1 %cmp3.i, label %if.then5.i, label %if.end6.i, !dbg !1681

if.then5.i:                                       ; preds = %if.end.i
  %fneg.i = fneg float %mul, !dbg !1682
  call void @llvm.dbg.value(metadata float %fneg.i, metadata !1669, metadata !DIExpression()) #22, !dbg !1674
  br label %if.end6.i, !dbg !1683

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i
  %x.addr.0.i = phi float [ %fneg.i, %if.then5.i ], [ %mul, %if.end.i ]
  call void @llvm.dbg.value(metadata float %x.addr.0.i, metadata !1669, metadata !DIExpression()) #22, !dbg !1674
  %cmp8.i = fcmp olt float %x.addr.0.i, 8.000000e+00, !dbg !1684
  br i1 %cmp8.i, label %for.body.i.i, label %if.end11.i, !dbg !1686

for.body.i.i:                                     ; preds = %if.end6.i, %for.body.i.i
  %i.022.i.i = phi i64 [ %dec.i.i, %for.body.i.i ], [ 7, %if.end6.i ]
  %q.021.i.i = phi float [ %conv11.i.i, %for.body.i.i ], [ 1.000000e+00, %if.end6.i ]
  %p.020.i.i = phi float [ %conv5.i.i, %for.body.i.i ], [ 0x40A51A3EE0000000, %if.end6.i ]
  call void @llvm.dbg.value(metadata i64 %i.022.i.i, metadata !863, metadata !DIExpression()) #22, !dbg !1687
  call void @llvm.dbg.value(metadata float %q.021.i.i, metadata !862, metadata !DIExpression()) #22, !dbg !1687
  call void @llvm.dbg.value(metadata float %p.020.i.i, metadata !861, metadata !DIExpression()) #22, !dbg !1687
  %mul.i.i = fmul float %x.addr.0.i, %p.020.i.i, !dbg !1689
  %mul3.i.i = fmul float %x.addr.0.i, %mul.i.i, !dbg !1693
  %conv4.i.i = fpext float %mul3.i.i to double, !dbg !1694
  %arrayidx.i.i = getelementptr inbounds [9 x double], ptr @J1.Pone, i64 0, i64 %i.022.i.i, !dbg !1695
  %0 = load double, ptr %arrayidx.i.i, align 8, !dbg !1695, !tbaa !1248
  %add.i.i = fadd double %0, %conv4.i.i, !dbg !1696
  %conv5.i.i = fptrunc double %add.i.i to float, !dbg !1694
  call void @llvm.dbg.value(metadata float %conv5.i.i, metadata !861, metadata !DIExpression()) #22, !dbg !1687
  %mul6.i.i = fmul float %x.addr.0.i, %q.021.i.i, !dbg !1697
  %mul7.i.i = fmul float %x.addr.0.i, %mul6.i.i, !dbg !1698
  %conv8.i.i = fpext float %mul7.i.i to double, !dbg !1699
  %arrayidx9.i.i = getelementptr inbounds [9 x double], ptr @J1.Qone, i64 0, i64 %i.022.i.i, !dbg !1700
  %1 = load double, ptr %arrayidx9.i.i, align 8, !dbg !1700, !tbaa !1248
  %add10.i.i = fadd double %1, %conv8.i.i, !dbg !1701
  %conv11.i.i = fptrunc double %add10.i.i to float, !dbg !1699
  call void @llvm.dbg.value(metadata float %conv11.i.i, metadata !862, metadata !DIExpression()) #22, !dbg !1687
  %dec.i.i = add nsw i64 %i.022.i.i, -1, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %dec.i.i, metadata !863, metadata !DIExpression()) #22, !dbg !1687
  %cmp.not.i.i = icmp eq i64 %i.022.i.i, 0, !dbg !1703
  br i1 %cmp.not.i.i, label %J1.exit.i, label %for.body.i.i, !dbg !1704, !llvm.loop !1705

J1.exit.i:                                        ; preds = %for.body.i.i
  %div.i.i = fdiv float %conv5.i.i, %conv11.i.i, !dbg !1707
  %mul.i = fmul float %mul, %div.i.i, !dbg !1708
  br label %BesselOrderOne.exit, !dbg !1709

if.end11.i:                                       ; preds = %if.end6.i
  %conv7.i = fpext float %x.addr.0.i to double, !dbg !1710
  %mul13.i = fmul double %conv7.i, 0x400921FB54442D18, !dbg !1711
  %div.i = fdiv double 2.000000e+00, %mul13.i, !dbg !1712
  %call14.i = tail call double @sqrt(double noundef %div.i) #22, !dbg !1713
  call void @llvm.dbg.value(metadata float %x.addr.0.i, metadata !874, metadata !DIExpression()) #22, !dbg !1714
  call void @llvm.dbg.value(metadata float 0x3FF41D6020000000, metadata !875, metadata !DIExpression()) #22, !dbg !1714
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !876, metadata !DIExpression()) #22, !dbg !1714
  call void @llvm.dbg.value(metadata i64 4, metadata !877, metadata !DIExpression()) #22, !dbg !1714
  %div.i63.i = fdiv double 8.000000e+00, %conv7.i
  call void @llvm.dbg.value(metadata i64 4, metadata !877, metadata !DIExpression()) #22, !dbg !1714
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !876, metadata !DIExpression()) #22, !dbg !1714
  call void @llvm.dbg.value(metadata float 0x3FF41D6020000000, metadata !875, metadata !DIExpression()) #22, !dbg !1714
  br label %for.body.i69.i, !dbg !1716

for.body.i69.i:                                   ; preds = %for.body.i69.i, %if.end11.i
  %i.029.i.i = phi i64 [ 4, %if.end11.i ], [ %dec.i67.i, %for.body.i69.i ]
  %q.028.i.i = phi float [ 1.000000e+00, %if.end11.i ], [ %conv17.i.i, %for.body.i69.i ]
  %p.027.i.i = phi float [ 0x3FF41D6020000000, %if.end11.i ], [ %conv8.i66.i, %for.body.i69.i ]
  call void @llvm.dbg.value(metadata i64 %i.029.i.i, metadata !877, metadata !DIExpression()) #22, !dbg !1714
  call void @llvm.dbg.value(metadata float %q.028.i.i, metadata !876, metadata !DIExpression()) #22, !dbg !1714
  call void @llvm.dbg.value(metadata float %p.027.i.i, metadata !875, metadata !DIExpression()) #22, !dbg !1714
  %conv3.i.i = fpext float %p.027.i.i to double, !dbg !1718
  %mul.i64.i = fmul double %div.i63.i, %conv3.i.i, !dbg !1721
  %arrayidx.i65.i = getelementptr inbounds [6 x double], ptr @P1.Pone, i64 0, i64 %i.029.i.i, !dbg !1722
  %2 = load double, ptr %arrayidx.i65.i, align 8, !dbg !1722, !tbaa !1248
  %3 = tail call double @llvm.fmuladd.f64(double %mul.i64.i, double %div.i63.i, double %2) #22, !dbg !1723
  %conv8.i66.i = fptrunc double %3 to float, !dbg !1718
  call void @llvm.dbg.value(metadata float %conv8.i66.i, metadata !875, metadata !DIExpression()) #22, !dbg !1714
  %conv9.i.i = fpext float %q.028.i.i to double, !dbg !1724
  %mul12.i.i = fmul double %div.i63.i, %conv9.i.i, !dbg !1725
  %arrayidx16.i.i = getelementptr inbounds [6 x double], ptr @P1.Qone, i64 0, i64 %i.029.i.i, !dbg !1726
  %4 = load double, ptr %arrayidx16.i.i, align 8, !dbg !1726, !tbaa !1248
  %5 = tail call double @llvm.fmuladd.f64(double %mul12.i.i, double %div.i63.i, double %4) #22, !dbg !1727
  %conv17.i.i = fptrunc double %5 to float, !dbg !1724
  call void @llvm.dbg.value(metadata float %conv17.i.i, metadata !876, metadata !DIExpression()) #22, !dbg !1714
  %dec.i67.i = add nsw i64 %i.029.i.i, -1, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %dec.i67.i, metadata !877, metadata !DIExpression()) #22, !dbg !1714
  %cmp.not.i68.i = icmp eq i64 %i.029.i.i, 0, !dbg !1729
  br i1 %cmp.not.i68.i, label %P1.exit.i, label %for.body.i69.i, !dbg !1716, !llvm.loop !1730

P1.exit.i:                                        ; preds = %for.body.i69.i
  %call20.i = tail call double @sin(double noundef %conv7.i) #22, !dbg !1732
  %call22.i = tail call double @cos(double noundef %conv7.i) #22, !dbg !1733
  call void @llvm.dbg.value(metadata float %x.addr.0.i, metadata !887, metadata !DIExpression()) #22, !dbg !1734
  call void @llvm.dbg.value(metadata float 0x3FA2169060000000, metadata !888, metadata !DIExpression()) #22, !dbg !1734
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !889, metadata !DIExpression()) #22, !dbg !1734
  call void @llvm.dbg.value(metadata i64 4, metadata !890, metadata !DIExpression()) #22, !dbg !1734
  call void @llvm.dbg.value(metadata i64 4, metadata !890, metadata !DIExpression()) #22, !dbg !1734
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !889, metadata !DIExpression()) #22, !dbg !1734
  call void @llvm.dbg.value(metadata float 0x3FA2169060000000, metadata !888, metadata !DIExpression()) #22, !dbg !1734
  br label %for.body.i85.i, !dbg !1736

for.body.i85.i:                                   ; preds = %for.body.i85.i, %P1.exit.i
  %i.029.i72.i = phi i64 [ 4, %P1.exit.i ], [ %dec.i83.i, %for.body.i85.i ]
  %q.028.i73.i = phi float [ 1.000000e+00, %P1.exit.i ], [ %conv17.i82.i, %for.body.i85.i ]
  %p.027.i74.i = phi float [ 0x3FA2169060000000, %P1.exit.i ], [ %conv8.i78.i, %for.body.i85.i ]
  call void @llvm.dbg.value(metadata i64 %i.029.i72.i, metadata !890, metadata !DIExpression()) #22, !dbg !1734
  call void @llvm.dbg.value(metadata float %q.028.i73.i, metadata !889, metadata !DIExpression()) #22, !dbg !1734
  call void @llvm.dbg.value(metadata float %p.027.i74.i, metadata !888, metadata !DIExpression()) #22, !dbg !1734
  %conv3.i75.i = fpext float %p.027.i74.i to double, !dbg !1738
  %mul.i76.i = fmul double %div.i63.i, %conv3.i75.i, !dbg !1741
  %arrayidx.i77.i = getelementptr inbounds [6 x double], ptr @Q1.Pone, i64 0, i64 %i.029.i72.i, !dbg !1742
  %6 = load double, ptr %arrayidx.i77.i, align 8, !dbg !1742, !tbaa !1248
  %7 = tail call double @llvm.fmuladd.f64(double %mul.i76.i, double %div.i63.i, double %6) #22, !dbg !1743
  %conv8.i78.i = fptrunc double %7 to float, !dbg !1738
  call void @llvm.dbg.value(metadata float %conv8.i78.i, metadata !888, metadata !DIExpression()) #22, !dbg !1734
  %conv9.i79.i = fpext float %q.028.i73.i to double, !dbg !1744
  %mul12.i80.i = fmul double %div.i63.i, %conv9.i79.i, !dbg !1745
  %arrayidx16.i81.i = getelementptr inbounds [6 x double], ptr @Q1.Qone, i64 0, i64 %i.029.i72.i, !dbg !1746
  %8 = load double, ptr %arrayidx16.i81.i, align 8, !dbg !1746, !tbaa !1248
  %9 = tail call double @llvm.fmuladd.f64(double %mul12.i80.i, double %div.i63.i, double %8) #22, !dbg !1747
  %conv17.i82.i = fptrunc double %9 to float, !dbg !1744
  call void @llvm.dbg.value(metadata float %conv17.i82.i, metadata !889, metadata !DIExpression()) #22, !dbg !1734
  %dec.i83.i = add nsw i64 %i.029.i72.i, -1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %dec.i83.i, metadata !890, metadata !DIExpression()) #22, !dbg !1734
  %cmp.not.i84.i = icmp eq i64 %i.029.i72.i, 0, !dbg !1749
  br i1 %cmp.not.i84.i, label %Q1.exit.i, label %for.body.i85.i, !dbg !1736, !llvm.loop !1750

Q1.exit.i:                                        ; preds = %for.body.i85.i
  %div18.i.i = fdiv float %conv8.i66.i, %conv17.i.i, !dbg !1752
  %sub.i = fsub double %call20.i, %call22.i, !dbg !1753
  %conv16.i = fpext float %div18.i.i to double, !dbg !1754
  %mul23.i = fmul double %sub.i, 0x3FE6A09E667F3BCC, !dbg !1755
  %div18.i86.i = fdiv float %conv8.i78.i, %conv17.i82.i, !dbg !1756
  %conv28.i = fpext float %div18.i86.i to double, !dbg !1757
  %call33.i = tail call double @sin(double noundef %conv7.i) #22, !dbg !1758
  %call35.i = tail call double @cos(double noundef %conv7.i) #22, !dbg !1759
  %add.i = fadd double %call33.i, %call35.i, !dbg !1760
  %mul36.i = fmul double %add.i, 0xBFE6A09E667F3BCC, !dbg !1761
  %10 = fdiv double -8.000000e+00, %conv7.i, !dbg !1762
  %11 = fmul double %10, %conv28.i, !dbg !1762
  %neg.i = fmul double %11, %mul36.i, !dbg !1762
  %12 = tail call double @llvm.fmuladd.f64(double %conv16.i, double %mul23.i, double %neg.i) #22, !dbg !1762
  %mul38.i = fmul double %call14.i, %12, !dbg !1763
  %conv39.i = fptrunc double %mul38.i to float, !dbg !1713
  call void @llvm.dbg.value(metadata float %conv39.i, metadata !1673, metadata !DIExpression()) #22, !dbg !1674
  br i1 %cmp3.i, label %if.then43.i, label %BesselOrderOne.exit, !dbg !1764

if.then43.i:                                      ; preds = %Q1.exit.i
  %fneg44.i = fneg float %conv39.i, !dbg !1765
  call void @llvm.dbg.value(metadata float %fneg44.i, metadata !1673, metadata !DIExpression()) #22, !dbg !1674
  br label %BesselOrderOne.exit, !dbg !1767

BesselOrderOne.exit:                              ; preds = %if.end, %J1.exit.i, %Q1.exit.i, %if.then43.i
  %retval.0.i = phi float [ %mul.i, %J1.exit.i ], [ 0.000000e+00, %if.end ], [ %fneg44.i, %if.then43.i ], [ %conv39.i, %Q1.exit.i ], !dbg !1674
  %div = fdiv float %retval.0.i, %x, !dbg !1768
  br label %return, !dbg !1769

return:                                           ; preds = %entry, %BesselOrderOne.exit
  %retval.0 = phi float [ %div, %BesselOrderOne.exit ], [ 0x3FF921FB60000000, %entry ], !dbg !1664
  ret float %retval.0, !dbg !1770
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define internal float @Sinc(float noundef %x, ptr nocapture noundef readnone %resize_filter) #5 !dbg !1771 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1773, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1774, metadata !DIExpression()), !dbg !1778
  %cmp = fcmp une float %x, 0.000000e+00, !dbg !1779
  br i1 %cmp, label %if.then, label %return, !dbg !1780

if.then:                                          ; preds = %entry
  %conv = fpext float %x to double, !dbg !1781
  %mul = fmul double %conv, 0x400921FB54442D18, !dbg !1782
  %conv3 = fptrunc double %mul to float, !dbg !1783
  call void @llvm.dbg.value(metadata float %conv3, metadata !1775, metadata !DIExpression()), !dbg !1784
  %conv4 = fpext float %conv3 to double, !dbg !1785
  %call = tail call double @sin(double noundef %conv4) #22, !dbg !1786
  %div = fdiv double %call, %conv4, !dbg !1787
  %conv6 = fptrunc double %div to float, !dbg !1788
  br label %return

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi float [ %conv6, %if.then ], [ 1.000000e+00, %entry ], !dbg !1778
  ret float %retval.0, !dbg !1789
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define internal float @SincFast(float noundef %x, ptr nocapture noundef readnone %resize_filter) #5 !dbg !1790 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1792, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1793, metadata !DIExpression()), !dbg !1810
  %cmp = fcmp ogt float %x, 4.000000e+00, !dbg !1811
  br i1 %cmp, label %if.then, label %if.end, !dbg !1812

if.then:                                          ; preds = %entry
  %conv = fpext float %x to double, !dbg !1813
  %mul = fmul double %conv, 0x400921FB54442D18, !dbg !1814
  %conv3 = fptrunc double %mul to float, !dbg !1815
  call void @llvm.dbg.value(metadata float %conv3, metadata !1794, metadata !DIExpression()), !dbg !1816
  %conv4 = fpext float %conv3 to double, !dbg !1817
  %call = tail call double @sin(double noundef %conv4) #22, !dbg !1818
  %div = fdiv double %call, %conv4, !dbg !1819
  br label %return

if.end:                                           ; preds = %entry
  %mul7 = fmul float %x, %x, !dbg !1820
  call void @llvm.dbg.value(metadata float %mul7, metadata !1797, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0x3F5C71C712204843, metadata !1799, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0xBF392E7E30A21C51, metadata !1800, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0x3F04AAE0F2F31F28, metadata !1801, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0xBEC50D655760D6D4, metadata !1802, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0x3E7E09D9614D342A, metadata !1803, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0xBE300406665C46FB, metadata !1804, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0x3DDA532C7DACB935, metadata !1805, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0xBD80778FF9CFD451, metadata !1806, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0x3D1C8B574F3D493C, metadata !1807, metadata !DIExpression()), !dbg !1821
  call void @llvm.dbg.value(metadata double 0xBCA98546B213E547, metadata !1808, metadata !DIExpression()), !dbg !1821
  %conv8 = fpext float %mul7 to double, !dbg !1822
  %0 = tail call double @llvm.fmuladd.f64(double %conv8, double 0xBCA98546B213E547, double 0x3D1C8B574F3D493C), !dbg !1823
  %1 = tail call double @llvm.fmuladd.f64(double %conv8, double %0, double 0xBD80778FF9CFD451), !dbg !1824
  %2 = tail call double @llvm.fmuladd.f64(double %conv8, double %1, double 0x3DDA532C7DACB935), !dbg !1825
  %3 = tail call double @llvm.fmuladd.f64(double %conv8, double %2, double 0xBE300406665C46FB), !dbg !1826
  %4 = tail call double @llvm.fmuladd.f64(double %conv8, double %3, double 0x3E7E09D9614D342A), !dbg !1827
  %5 = tail call double @llvm.fmuladd.f64(double %conv8, double %4, double 0xBEC50D655760D6D4), !dbg !1828
  %6 = tail call double @llvm.fmuladd.f64(double %conv8, double %5, double 0x3F04AAE0F2F31F28), !dbg !1829
  %7 = tail call double @llvm.fmuladd.f64(double %conv8, double %6, double 0xBF392E7E30A21C51), !dbg !1830
  %8 = tail call double @llvm.fmuladd.f64(double %conv8, double %7, double 0x3F5C71C712204843), !dbg !1831
  call void @llvm.dbg.value(metadata double %8, metadata !1809, metadata !DIExpression()), !dbg !1821
  %sub = fadd double %conv8, -1.000000e+00, !dbg !1832
  %sub28 = fadd double %conv8, -4.000000e+00, !dbg !1833
  %mul29 = fmul double %sub, %sub28, !dbg !1834
  %sub31 = fadd double %conv8, -9.000000e+00, !dbg !1835
  %mul32 = fmul double %sub31, %mul29, !dbg !1836
  %sub34 = fadd double %conv8, -1.600000e+01, !dbg !1837
  %mul35 = fmul double %sub34, %mul32, !dbg !1838
  %mul36 = fmul double %mul35, %8, !dbg !1839
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0.in = phi double [ %div, %if.then ], [ %mul36, %if.end ]
  %retval.0 = fptrunc double %retval.0.in to float, !dbg !1810
  ret float %retval.0, !dbg !1840
}

; Function Attrs: nofree nounwind uwtable
define internal float @Kaiser(float noundef %x, ptr nocapture noundef readonly %resize_filter) #8 !dbg !1841 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1843, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1844, metadata !DIExpression()), !dbg !1845
  %coefficient = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, !dbg !1846
  %arrayidx = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, i64 1, !dbg !1847
  %0 = load float, ptr %arrayidx, align 4, !dbg !1847, !tbaa !1091
  %1 = load float, ptr %coefficient, align 8, !dbg !1848, !tbaa !1091
  %conv = fpext float %1 to double, !dbg !1848
  %mul = fmul float %x, %x, !dbg !1849
  %conv3 = fpext float %mul to double, !dbg !1850
  %sub = fsub double 1.000000e+00, %conv3, !dbg !1851
  %call = tail call double @sqrt(double noundef %sub) #22, !dbg !1852
  %mul4 = fmul double %call, %conv, !dbg !1853
  %conv5 = fptrunc double %mul4 to float, !dbg !1848
  call void @llvm.dbg.value(metadata float %conv5, metadata !1177, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1180, metadata !DIExpression()), !dbg !1854
  %mul.i = fmul float %conv5, %conv5, !dbg !1856
  %conv1.i = fmul float %mul.i, 2.500000e-01, !dbg !1857
  call void @llvm.dbg.value(metadata float %conv1.i, metadata !1182, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata float %conv1.i, metadata !1181, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i64 2, metadata !1183, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1180, metadata !DIExpression()), !dbg !1854
  %conv216.i = fpext float %conv1.i to double, !dbg !1858
  %cmp17.i = fcmp ogt double %conv216.i, 1.000000e-15, !dbg !1859
  br i1 %cmp17.i, label %for.body.i, label %I0.exit, !dbg !1860

for.body.i:                                       ; preds = %entry, %for.body.i
  %i.020.i = phi i64 [ %inc.i, %for.body.i ], [ 2, %entry ]
  %sum.019.i = phi float [ %add.i, %for.body.i ], [ 1.000000e+00, %entry ]
  %t.018.i = phi float [ %mul8.i, %for.body.i ], [ %conv1.i, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.020.i, metadata !1183, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata float %sum.019.i, metadata !1180, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata float %t.018.i, metadata !1181, metadata !DIExpression()), !dbg !1854
  %add.i = fadd float %sum.019.i, %t.018.i, !dbg !1861
  call void @llvm.dbg.value(metadata float %add.i, metadata !1180, metadata !DIExpression()), !dbg !1854
  %conv4.i = sitofp i64 %i.020.i to float, !dbg !1862
  %mul6.i = fmul float %conv4.i, %conv4.i, !dbg !1863
  %div7.i = fdiv float %conv1.i, %mul6.i, !dbg !1864
  %mul8.i = fmul float %t.018.i, %div7.i, !dbg !1865
  call void @llvm.dbg.value(metadata float %mul8.i, metadata !1181, metadata !DIExpression()), !dbg !1854
  %inc.i = add nuw nsw i64 %i.020.i, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1183, metadata !DIExpression()), !dbg !1854
  %conv2.i = fpext float %mul8.i to double, !dbg !1858
  %cmp.i = fcmp ogt double %conv2.i, 1.000000e-15, !dbg !1859
  br i1 %cmp.i, label %for.body.i, label %I0.exit, !dbg !1860, !llvm.loop !1867

I0.exit:                                          ; preds = %for.body.i, %entry
  %sum.0.lcssa.i = phi float [ 1.000000e+00, %entry ], [ %add.i, %for.body.i ], !dbg !1854
  %mul7 = fmul float %0, %sum.0.lcssa.i, !dbg !1869
  ret float %mul7, !dbg !1870
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define internal float @Welsh(float noundef %x, ptr nocapture noundef readnone %resize_filter) #3 !dbg !1871 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1873, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1874, metadata !DIExpression()), !dbg !1875
  %cmp = fcmp olt float %x, 1.000000e+00, !dbg !1876
  br i1 %cmp, label %if.then, label %return, !dbg !1878

if.then:                                          ; preds = %entry
  %mul = fmul float %x, %x, !dbg !1879
  %conv3 = fsub float 1.000000e+00, %mul, !dbg !1880
  br label %return, !dbg !1881

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi float [ %conv3, %if.then ], [ 0.000000e+00, %entry ], !dbg !1875
  ret float %retval.0, !dbg !1882
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define internal float @Bohman(float noundef %x, ptr nocapture noundef readnone %resize_filter) #5 !dbg !1883 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1885, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1886, metadata !DIExpression()), !dbg !1889
  %conv = fpext float %x to double, !dbg !1890
  %mul = fmul double %conv, 0x400921FB54442D18, !dbg !1891
  %call = tail call double @cos(double noundef %mul) #22, !dbg !1892
  call void @llvm.dbg.value(metadata double %call, metadata !1887, metadata !DIExpression()), !dbg !1889
  %neg = fneg double %call, !dbg !1893
  %0 = tail call double @llvm.fmuladd.f64(double %neg, double %call, double 1.000000e+00), !dbg !1893
  %call2 = tail call double @sqrt(double noundef %0) #22, !dbg !1894
  call void @llvm.dbg.value(metadata double %call2, metadata !1888, metadata !DIExpression()), !dbg !1889
  %sub = fsub double 1.000000e+00, %conv, !dbg !1895
  %mul5 = fmul double %call2, 0x3FD45F306DC9C883, !dbg !1896
  %1 = tail call double @llvm.fmuladd.f64(double %sub, double %call, double %mul5), !dbg !1897
  %conv6 = fptrunc double %1 to float, !dbg !1898
  ret float %conv6, !dbg !1899
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind readonly uwtable
define internal float @Lagrange(float noundef %x, ptr nocapture noundef readonly %resize_filter) #9 !dbg !1900 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1902, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1903, metadata !DIExpression()), !dbg !1908
  %support = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 2, !dbg !1909
  %0 = load float, ptr %support, align 8, !dbg !1909, !tbaa !1026
  %cmp = fcmp olt float %0, %x, !dbg !1911
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1912

if.end:                                           ; preds = %entry
  %window_support = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 3, !dbg !1913
  %1 = load float, ptr %window_support, align 4, !dbg !1913, !tbaa !1288
  %conv = fpext float %1 to double, !dbg !1914
  %mul = fmul double %conv, 2.000000e+00, !dbg !1915
  %conv1 = fptosi double %mul to i64, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %conv1, metadata !1907, metadata !DIExpression()), !dbg !1908
  %add = fadd float %1, %x, !dbg !1917
  %conv3 = fptosi float %add to i64, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %conv3, metadata !1906, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !1904, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 0, metadata !1905, metadata !DIExpression()), !dbg !1908
  %cmp429 = icmp sgt i64 %conv1, 0, !dbg !1919
  br i1 %cmp429, label %for.body, label %cleanup, !dbg !1922

for.body:                                         ; preds = %if.end, %for.inc
  %value.032 = phi float [ %value.1, %for.inc ], [ 1.000000e+00, %if.end ]
  %i.030 = phi i64 [ %inc, %for.inc ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata float %value.032, metadata !1904, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 %i.030, metadata !1905, metadata !DIExpression()), !dbg !1908
  %cmp6.not = icmp eq i64 %i.030, %conv3, !dbg !1923
  br i1 %cmp6.not, label %for.inc, label %if.then8, !dbg !1925

if.then8:                                         ; preds = %for.body
  %sub = sub nsw i64 %conv3, %i.030, !dbg !1926
  %conv9 = sitofp i64 %sub to float, !dbg !1927
  %sub10 = fsub float %conv9, %x, !dbg !1928
  %div = fdiv float %sub10, %conv9, !dbg !1929
  %mul13 = fmul float %value.032, %div, !dbg !1930
  call void @llvm.dbg.value(metadata float %mul13, metadata !1904, metadata !DIExpression()), !dbg !1908
  br label %for.inc, !dbg !1931

for.inc:                                          ; preds = %for.body, %if.then8
  %value.1 = phi float [ %mul13, %if.then8 ], [ %value.032, %for.body ], !dbg !1908
  call void @llvm.dbg.value(metadata float %value.1, metadata !1904, metadata !DIExpression()), !dbg !1908
  %inc = add nuw nsw i64 %i.030, 1, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1905, metadata !DIExpression()), !dbg !1908
  %exitcond.not = icmp eq i64 %inc, %conv1, !dbg !1919
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !1922, !llvm.loop !1933

cleanup:                                          ; preds = %for.inc, %if.end, %entry
  %retval.0 = phi float [ 0.000000e+00, %entry ], [ 1.000000e+00, %if.end ], [ %value.1, %for.inc ], !dbg !1908
  ret float %retval.0, !dbg !1935
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly uwtable
define internal float @Cosine(float noundef %x, ptr nocapture noundef readnone %resize_filter) #5 !dbg !1936 {
entry:
  call void @llvm.dbg.value(metadata float %x, metadata !1938, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1939, metadata !DIExpression()), !dbg !1940
  %conv = fpext float %x to double, !dbg !1941
  %mul = fmul double %conv, 0x3FF921FB54442D18, !dbg !1942
  %call = tail call double @cos(double noundef %mul) #22, !dbg !1943
  %conv1 = fptrunc double %call to float, !dbg !1944
  ret float %conv1, !dbg !1945
}

declare !dbg !1946 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: allocsize(0)
declare !dbg !1953 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #11

declare !dbg !1957 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #10

declare !dbg !1960 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #12

declare !dbg !1964 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #10

declare !dbg !1968 ptr @DestroyString(ptr noundef) local_unnamed_addr #10

declare !dbg !1972 void @CatchException(ptr noundef) local_unnamed_addr #10

declare !dbg !1973 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #10

declare !dbg !1976 void @MagickCoreTerminus() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #13

declare !dbg !1980 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare !dbg !1983 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !1987 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

declare !dbg !1992 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local float @GetResizeFilterSupport(ptr nocapture noundef readonly %resize_filter) local_unnamed_addr #14 !dbg !1422 {
entry:
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1421, metadata !DIExpression()), !dbg !1996
  %support = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 2, !dbg !1997
  %0 = load float, ptr %support, align 8, !dbg !1997, !tbaa !1026
  %blur = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 5, !dbg !1998
  %1 = load float, ptr %blur, align 4, !dbg !1998, !tbaa !983
  %mul = fmul float %0, %1, !dbg !1999
  ret float %mul, !dbg !2000
}

declare !dbg !2001 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

declare !dbg !2058 ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #10

declare !dbg !2062 i32 @GetMagickPrecision() local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local float @GetResizeFilterWeight(ptr noundef %resize_filter, float noundef %x) local_unnamed_addr #0 !dbg !1502 {
entry:
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1501, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata float %x, metadata !1506, metadata !DIExpression()), !dbg !2065
  %0 = tail call float @llvm.fabs.f32(float %x), !dbg !2066
  %blur = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 5, !dbg !2067
  %1 = load float, ptr %blur, align 4, !dbg !2067, !tbaa !983
  %conv2 = fdiv float %0, %1, !dbg !2066
  call void @llvm.dbg.value(metadata float %conv2, metadata !1509, metadata !DIExpression()), !dbg !2065
  %window_support = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 3, !dbg !2068
  %2 = load float, ptr %window_support, align 4, !dbg !2068, !tbaa !1288
  %conv3 = fpext float %2 to double, !dbg !2069
  %cmp = fcmp olt double %conv3, 1.000000e-15, !dbg !2070
  br i1 %cmp, label %if.end, label %lor.lhs.false, !dbg !2071

lor.lhs.false:                                    ; preds = %entry
  %window = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 1, !dbg !2072
  %3 = load ptr, ptr %window, align 8, !dbg !2072, !tbaa !1036
  %cmp5 = icmp eq ptr %3, @Box, !dbg !2073
  br i1 %cmp5, label %if.end, label %if.else, !dbg !2074

if.else:                                          ; preds = %lor.lhs.false
  %scale7 = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 4, !dbg !2075
  %4 = load float, ptr %scale7, align 8, !dbg !2075, !tbaa !1046
  call void @llvm.dbg.value(metadata float %4, metadata !1507, metadata !DIExpression()), !dbg !2065
  %mul = fmul float %conv2, %4, !dbg !2076
  %call = tail call float %3(float noundef %mul, ptr noundef nonnull %resize_filter) #22, !dbg !2077
  call void @llvm.dbg.value(metadata float %call, metadata !1507, metadata !DIExpression()), !dbg !2065
  br label %if.end

if.end:                                           ; preds = %entry, %lor.lhs.false, %if.else
  %scale.0 = phi float [ %call, %if.else ], [ 1.000000e+00, %lor.lhs.false ], [ 1.000000e+00, %entry ], !dbg !2078
  call void @llvm.dbg.value(metadata float %scale.0, metadata !1507, metadata !DIExpression()), !dbg !2065
  %5 = load ptr, ptr %resize_filter, align 8, !dbg !2079, !tbaa !1020
  %call9 = tail call float %5(float noundef %conv2, ptr noundef nonnull %resize_filter) #22, !dbg !2080
  %mul10 = fmul float %scale.0, %call9, !dbg !2081
  call void @llvm.dbg.value(metadata float %mul10, metadata !1508, metadata !DIExpression()), !dbg !2065
  ret float %mul10, !dbg !2082
}

declare !dbg !2083 i32 @DeleteImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local ptr @AdaptiveResizeImage(ptr noundef %image, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) local_unnamed_addr #0 !dbg !2086 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2090, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %columns, metadata !2091, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i64 %rows, metadata !2092, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2093, metadata !DIExpression()), !dbg !2094
  %call = tail call ptr @InterpolativeResizeImage(ptr noundef %image, i64 noundef %columns, i64 noundef %rows, i32 noundef 6, ptr noundef %exception), !dbg !2095
  ret ptr %call, !dbg !2096
}

; Function Attrs: nounwind uwtable
define dso_local ptr @InterpolativeResizeImage(ptr noundef %image, i64 noundef %columns, i64 noundef %rows, i32 noundef %method, ptr noundef %exception) local_unnamed_addr #0 !dbg !2097 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %pixel = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2102, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %columns, metadata !2103, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %rows, metadata !2104, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i32 %method, metadata !2105, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2106, metadata !DIExpression()), !dbg !2137
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2138
  %0 = load i32, ptr %debug, align 8, !dbg !2138, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !2140
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2141

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2142
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1701, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !2143
  br label %if.end, !dbg !2144

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq i64 %columns, 0, !dbg !2145
  %cmp2 = icmp eq i64 %rows, 0
  %or.cond = or i1 %cmp1, %cmp2, !dbg !2147
  br i1 %or.cond, label %cleanup95, label %if.end4, !dbg !2147

if.end4:                                          ; preds = %if.end
  %columns5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2148
  %1 = load i64, ptr %columns5, align 8, !dbg !2148, !tbaa !2150
  %cmp6 = icmp eq i64 %1, %columns, !dbg !2151
  br i1 %cmp6, label %land.lhs.true, label %if.end11, !dbg !2152

land.lhs.true:                                    ; preds = %if.end4
  %rows7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2153
  %2 = load i64, ptr %rows7, align 8, !dbg !2153, !tbaa !2154
  %cmp8 = icmp eq i64 %2, %rows, !dbg !2155
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2156

if.then9:                                         ; preds = %land.lhs.true
  %call10 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #22, !dbg !2157
  br label %cleanup95, !dbg !2158

if.end11:                                         ; preds = %land.lhs.true, %if.end4
  %call12 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %columns, i64 noundef %rows, i32 noundef 1, ptr noundef %exception) #22, !dbg !2159
  call void @llvm.dbg.value(metadata ptr %call12, metadata !2113, metadata !DIExpression()), !dbg !2137
  %cmp13 = icmp eq ptr %call12, null, !dbg !2160
  br i1 %cmp13, label %cleanup95, label %if.end15, !dbg !2162

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call12, i32 noundef 1) #22, !dbg !2163
  %cmp17 = icmp eq i32 %call16, 0, !dbg !2165
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !2166

if.then18:                                        ; preds = %if.end15
  %exception19 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 58, !dbg !2167
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception19) #22, !dbg !2169
  %call20 = tail call ptr @DestroyImage(ptr noundef nonnull %call12) #22, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %call20, metadata !2113, metadata !DIExpression()), !dbg !2137
  br label %cleanup95, !dbg !2171

if.end21:                                         ; preds = %if.end15
  call void @llvm.dbg.value(metadata i32 1, metadata !2114, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i64 0, metadata !2115, metadata !DIExpression()), !dbg !2137
  %call22 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #22, !dbg !2172
  call void @llvm.dbg.value(metadata ptr %call22, metadata !2107, metadata !DIExpression()), !dbg !2137
  %call23 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call12, ptr noundef %exception) #22, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %call23, metadata !2112, metadata !DIExpression()), !dbg !2137
  %3 = load i64, ptr %columns5, align 8, !dbg !2174, !tbaa !2150
  %conv = uitofp i64 %3 to double, !dbg !2175
  %columns25 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 7, !dbg !2176
  %4 = load i64, ptr %columns25, align 8, !dbg !2176, !tbaa !2150
  %conv26 = uitofp i64 %4 to double, !dbg !2177
  %div = fdiv double %conv, %conv26, !dbg !2178
  call void @llvm.dbg.value(metadata double %div, metadata !2116, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2137
  %rows27 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2179
  %5 = load i64, ptr %rows27, align 8, !dbg !2179, !tbaa !2154
  %conv28 = uitofp i64 %5 to double, !dbg !2180
  %rows29 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 8, !dbg !2181
  %6 = load i64, ptr %rows29, align 8, !dbg !2181, !tbaa !2154
  %conv30 = uitofp i64 %6 to double, !dbg !2182
  %div31 = fdiv double %conv28, %conv30, !dbg !2183
  call void @llvm.dbg.value(metadata double %div31, metadata !2116, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2137
  call void @llvm.dbg.value(metadata i64 0, metadata !2123, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i32 1, metadata !2114, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i64 0, metadata !2115, metadata !DIExpression()), !dbg !2137
  %cmp34155 = icmp sgt i64 %6, 0, !dbg !2184
  br i1 %cmp34155, label %for.body.lr.ph, label %for.end87, !dbg !2185

for.body.lr.ph:                                   ; preds = %if.end21
  %red.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %colorspace.i = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 1
  %index11.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2185

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %y.0158 = phi i64 [ 0, %for.body.lr.ph ], [ %inc86, %cleanup ]
  %status.0157 = phi i32 [ 1, %for.body.lr.ph ], [ %status.3, %cleanup ]
  %progress.0156 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %y.0158, metadata !2123, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i32 %status.0157, metadata !2114, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %progress.0156, metadata !2115, metadata !DIExpression()), !dbg !2137
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #22, !dbg !2186
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !2124, metadata !DIExpression()), !dbg !2187
  %cmp37 = icmp eq i32 %status.0157, 0, !dbg !2188
  br i1 %cmp37, label %cleanup, label %if.end40, !dbg !2190

if.end40:                                         ; preds = %for.body
  %7 = load i64, ptr %columns25, align 8, !dbg !2191, !tbaa !2150
  %call42 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call23, i64 noundef 0, i64 noundef %y.0158, i64 noundef %7, i64 noundef 1, ptr noundef %exception) #26, !dbg !2192
  call void @llvm.dbg.value(metadata ptr %call42, metadata !2131, metadata !DIExpression()), !dbg !2193
  %cmp43 = icmp eq ptr %call42, null, !dbg !2194
  br i1 %cmp43, label %cleanup, label %if.end46, !dbg !2196

if.end46:                                         ; preds = %if.end40
  %call47 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call23) #22, !dbg !2197
  call void @llvm.dbg.value(metadata ptr %call47, metadata !2129, metadata !DIExpression()), !dbg !2193
  call void @GetMagickPixelPacket(ptr noundef %image, ptr noundef nonnull %pixel) #22, !dbg !2198
  %conv48 = sitofp i64 %y.0158 to float, !dbg !2199
  %conv49 = fpext float %conv48 to double, !dbg !2199
  %add = fadd double %conv49, 5.000000e-01, !dbg !2200
  %8 = call double @llvm.fmuladd.f64(double %add, double %div31, double -5.000000e-01), !dbg !2201
  call void @llvm.dbg.value(metadata double %8, metadata !2128, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2193
  call void @llvm.dbg.value(metadata i64 0, metadata !2133, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %call42, metadata !2131, metadata !DIExpression()), !dbg !2193
  %9 = load i64, ptr %columns25, align 8, !dbg !2202, !tbaa !2150
  %cmp54152 = icmp sgt i64 %9, 0, !dbg !2205
  br i1 %cmp54152, label %for.body56.lr.ph, label %for.end, !dbg !2206

for.body56.lr.ph:                                 ; preds = %if.end46
  %cmp9.i = icmp ne ptr %call47, null
  %cmp9.old.not.i = icmp eq ptr %call47, null
  br label %for.body56, !dbg !2206

for.body56:                                       ; preds = %for.body56.lr.ph, %SetPixelPacket.exit
  %x36.0154 = phi i64 [ 0, %for.body56.lr.ph ], [ %inc, %SetPixelPacket.exit ]
  %q.0153 = phi ptr [ %call42, %for.body56.lr.ph ], [ %incdec.ptr, %SetPixelPacket.exit ]
  call void @llvm.dbg.value(metadata i64 %x36.0154, metadata !2133, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata ptr %q.0153, metadata !2131, metadata !DIExpression()), !dbg !2193
  %conv57 = sitofp i64 %x36.0154 to float, !dbg !2207
  %conv58 = fpext float %conv57 to double, !dbg !2207
  %add59 = fadd double %conv58, 5.000000e-01, !dbg !2209
  %10 = call double @llvm.fmuladd.f64(double %add59, double %div, double -5.000000e-01), !dbg !2210
  call void @llvm.dbg.value(metadata double %10, metadata !2128, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2193
  %call64 = call i32 @InterpolateMagickPixelPacket(ptr noundef %image, ptr noundef %call22, i32 noundef %method, double noundef %10, double noundef %8, ptr noundef nonnull %pixel, ptr noundef %exception) #22, !dbg !2211
  %add.ptr = getelementptr inbounds i16, ptr %call47, i64 %x36.0154, !dbg !2212
  call void @llvm.dbg.value(metadata ptr %call12, metadata !2213, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !2220, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata ptr %q.0153, metadata !2221, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2222, metadata !DIExpression()), !dbg !2223
  %11 = load float, ptr %red.i, align 8, !dbg !2225, !tbaa !2226
  call void @llvm.dbg.value(metadata float %11, metadata !2228, metadata !DIExpression()), !dbg !2233
  %cmp.i.i = fcmp ugt float %11, 0.000000e+00, !dbg !2235
  br i1 %cmp.i.i, label %if.end.i.i, label %ClampToQuantum.exit.i, !dbg !2237

if.end.i.i:                                       ; preds = %for.body56
  %cmp1.i.i = fcmp ult float %11, 6.553500e+04, !dbg !2238
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !2240

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = fadd float %11, 5.000000e-01, !dbg !2241
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !2242
  br label %ClampToQuantum.exit.i, !dbg !2243

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i, %for.body56
  %retval.0.i.i = phi i16 [ %conv.i.i, %if.end3.i.i ], [ 0, %for.body56 ], [ -1, %if.end.i.i ], !dbg !2233
  %red1.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0153, i64 0, i32 2, !dbg !2225
  store i16 %retval.0.i.i, ptr %red1.i, align 2, !dbg !2225, !tbaa !2244
  %12 = load float, ptr %green.i, align 4, !dbg !2245, !tbaa !2246
  call void @llvm.dbg.value(metadata float %12, metadata !2228, metadata !DIExpression()), !dbg !2247
  %cmp.i23.i = fcmp ugt float %12, 0.000000e+00, !dbg !2249
  br i1 %cmp.i23.i, label %if.end.i25.i, label %ClampToQuantum.exit30.i, !dbg !2250

if.end.i25.i:                                     ; preds = %ClampToQuantum.exit.i
  %cmp1.i24.i = fcmp ult float %12, 6.553500e+04, !dbg !2251
  br i1 %cmp1.i24.i, label %if.end3.i28.i, label %ClampToQuantum.exit30.i, !dbg !2252

if.end3.i28.i:                                    ; preds = %if.end.i25.i
  %add.i26.i = fadd float %12, 5.000000e-01, !dbg !2253
  %conv.i27.i = fptoui float %add.i26.i to i16, !dbg !2254
  br label %ClampToQuantum.exit30.i, !dbg !2255

ClampToQuantum.exit30.i:                          ; preds = %if.end3.i28.i, %if.end.i25.i, %ClampToQuantum.exit.i
  %retval.0.i29.i = phi i16 [ %conv.i27.i, %if.end3.i28.i ], [ 0, %ClampToQuantum.exit.i ], [ -1, %if.end.i25.i ], !dbg !2247
  %green3.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0153, i64 0, i32 1, !dbg !2245
  store i16 %retval.0.i29.i, ptr %green3.i, align 2, !dbg !2245, !tbaa !2256
  %13 = load float, ptr %blue.i, align 8, !dbg !2257, !tbaa !2258
  call void @llvm.dbg.value(metadata float %13, metadata !2228, metadata !DIExpression()), !dbg !2259
  %cmp.i31.i = fcmp ugt float %13, 0.000000e+00, !dbg !2261
  br i1 %cmp.i31.i, label %if.end.i33.i, label %ClampToQuantum.exit38.i, !dbg !2262

if.end.i33.i:                                     ; preds = %ClampToQuantum.exit30.i
  %cmp1.i32.i = fcmp ult float %13, 6.553500e+04, !dbg !2263
  br i1 %cmp1.i32.i, label %if.end3.i36.i, label %ClampToQuantum.exit38.i, !dbg !2264

if.end3.i36.i:                                    ; preds = %if.end.i33.i
  %add.i34.i = fadd float %13, 5.000000e-01, !dbg !2265
  %conv.i35.i = fptoui float %add.i34.i to i16, !dbg !2266
  br label %ClampToQuantum.exit38.i, !dbg !2267

ClampToQuantum.exit38.i:                          ; preds = %if.end3.i36.i, %if.end.i33.i, %ClampToQuantum.exit30.i
  %retval.0.i37.i = phi i16 [ %conv.i35.i, %if.end3.i36.i ], [ 0, %ClampToQuantum.exit30.i ], [ -1, %if.end.i33.i ], !dbg !2259
  store i16 %retval.0.i37.i, ptr %q.0153, align 2, !dbg !2257, !tbaa !2268
  %14 = load float, ptr %opacity.i, align 4, !dbg !2269, !tbaa !2270
  call void @llvm.dbg.value(metadata float %14, metadata !2228, metadata !DIExpression()), !dbg !2271
  %cmp.i39.i = fcmp ugt float %14, 0.000000e+00, !dbg !2273
  br i1 %cmp.i39.i, label %if.end.i41.i, label %ClampToQuantum.exit46.i, !dbg !2274

if.end.i41.i:                                     ; preds = %ClampToQuantum.exit38.i
  %cmp1.i40.i = fcmp ult float %14, 6.553500e+04, !dbg !2275
  br i1 %cmp1.i40.i, label %if.end3.i44.i, label %ClampToQuantum.exit46.i, !dbg !2276

if.end3.i44.i:                                    ; preds = %if.end.i41.i
  %add.i42.i = fadd float %14, 5.000000e-01, !dbg !2277
  %conv.i43.i = fptoui float %add.i42.i to i16, !dbg !2278
  br label %ClampToQuantum.exit46.i, !dbg !2279

ClampToQuantum.exit46.i:                          ; preds = %if.end3.i44.i, %if.end.i41.i, %ClampToQuantum.exit38.i
  %retval.0.i45.i = phi i16 [ %conv.i43.i, %if.end3.i44.i ], [ 0, %ClampToQuantum.exit38.i ], [ -1, %if.end.i41.i ], !dbg !2271
  %opacity7.i = getelementptr inbounds %struct._PixelPacket, ptr %q.0153, i64 0, i32 3, !dbg !2269
  store i16 %retval.0.i45.i, ptr %opacity7.i, align 2, !dbg !2269, !tbaa !2280
  %15 = load i32, ptr %colorspace.i, align 4, !dbg !2281, !tbaa !2283
  %cmp.i = icmp eq i32 %15, 12, !dbg !2284
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i, !dbg !2285

lor.lhs.false.i:                                  ; preds = %ClampToQuantum.exit46.i
  %16 = load i32, ptr %call12, align 8, !dbg !2286, !tbaa !2287
  %cmp8.i = icmp eq i32 %16, 2, !dbg !2288
  %or.cond.i = and i1 %cmp9.i, %cmp8.i, !dbg !2289
  br i1 %or.cond.i, label %if.then10.i, label %SetPixelPacket.exit, !dbg !2289

if.then.i:                                        ; preds = %ClampToQuantum.exit46.i
  br i1 %cmp9.old.not.i, label %SetPixelPacket.exit, label %if.then10.i, !dbg !2290

if.then10.i:                                      ; preds = %if.then.i, %lor.lhs.false.i
  %17 = load float, ptr %index11.i, align 8, !dbg !2292, !tbaa !2294
  call void @llvm.dbg.value(metadata float %17, metadata !2228, metadata !DIExpression()), !dbg !2295
  %cmp.i47.i = fcmp ugt float %17, 0.000000e+00, !dbg !2297
  br i1 %cmp.i47.i, label %if.end.i49.i, label %ClampToQuantum.exit54.i, !dbg !2298

if.end.i49.i:                                     ; preds = %if.then10.i
  %cmp1.i48.i = fcmp ult float %17, 6.553500e+04, !dbg !2299
  br i1 %cmp1.i48.i, label %if.end3.i52.i, label %ClampToQuantum.exit54.i, !dbg !2300

if.end3.i52.i:                                    ; preds = %if.end.i49.i
  %add.i50.i = fadd float %17, 5.000000e-01, !dbg !2301
  %conv.i51.i = fptoui float %add.i50.i to i16, !dbg !2302
  br label %ClampToQuantum.exit54.i, !dbg !2303

ClampToQuantum.exit54.i:                          ; preds = %if.end3.i52.i, %if.end.i49.i, %if.then10.i
  %retval.0.i53.i = phi i16 [ %conv.i51.i, %if.end3.i52.i ], [ 0, %if.then10.i ], [ -1, %if.end.i49.i ], !dbg !2295
  store i16 %retval.0.i53.i, ptr %add.ptr, align 2, !dbg !2292, !tbaa !2304
  br label %SetPixelPacket.exit, !dbg !2292

SetPixelPacket.exit:                              ; preds = %lor.lhs.false.i, %if.then.i, %ClampToQuantum.exit54.i
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0153, i64 1, !dbg !2305
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2131, metadata !DIExpression()), !dbg !2193
  %inc = add nuw nsw i64 %x36.0154, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2133, metadata !DIExpression()), !dbg !2193
  %18 = load i64, ptr %columns25, align 8, !dbg !2202, !tbaa !2150
  %cmp54 = icmp slt i64 %inc, %18, !dbg !2205
  br i1 %cmp54, label %for.body56, label %for.end, !dbg !2206, !llvm.loop !2307

for.end:                                          ; preds = %SetPixelPacket.exit, %if.end46
  %call65 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call23, ptr noundef %exception) #26, !dbg !2309
  %cmp66 = icmp eq i32 %call65, 0, !dbg !2311
  br i1 %cmp66, label %cleanup, label %if.end69, !dbg !2312

if.end69:                                         ; preds = %for.end
  %19 = load ptr, ptr %progress_monitor, align 8, !dbg !2313, !tbaa !2314
  %cmp70.not = icmp eq ptr %19, null, !dbg !2315
  br i1 %cmp70.not, label %cleanup, label %SetImageProgress.exit, !dbg !2316

SetImageProgress.exit:                            ; preds = %if.end69
  %inc73 = add nsw i64 %progress.0156, 1, !dbg !2317
  call void @llvm.dbg.value(metadata i64 %inc73, metadata !2115, metadata !DIExpression()), !dbg !2137
  %20 = load i64, ptr %rows27, align 8, !dbg !2318, !tbaa !2154
  call void @llvm.dbg.value(metadata ptr %image, metadata !2319, metadata !DIExpression()) #22, !dbg !2329
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2325, metadata !DIExpression()) #22, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %progress.0156, metadata !2326, metadata !DIExpression()) #22, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %20, metadata !2327, metadata !DIExpression()) #22, !dbg !2329
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !2331
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2328, metadata !DIExpression()) #22, !dbg !2332
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.30, ptr noundef nonnull %filename.i) #22, !dbg !2333
  %21 = load ptr, ptr %progress_monitor, align 8, !dbg !2334, !tbaa !2314
  %22 = load ptr, ptr %client_data.i, align 8, !dbg !2335, !tbaa !2336
  %call4.i = call i32 %21(ptr noundef nonnull %message.i, i64 noundef %progress.0156, i64 noundef %20, ptr noundef %22) #22, !dbg !2337
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2134, metadata !DIExpression()), !dbg !2339
  %cmp76 = icmp ne i32 %call4.i, 0, !dbg !2340
  %spec.select = zext i1 %cmp76 to i32, !dbg !2342
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2114, metadata !DIExpression()), !dbg !2137
  br label %cleanup, !dbg !2343

cleanup:                                          ; preds = %if.end69, %SetImageProgress.exit, %for.end, %if.end40, %for.body
  %progress.2 = phi i64 [ %progress.0156, %for.body ], [ %progress.0156, %if.end40 ], [ %progress.0156, %for.end ], [ %inc73, %SetImageProgress.exit ], [ %progress.0156, %if.end69 ], !dbg !2137
  %status.3 = phi i32 [ 0, %for.body ], [ 1, %if.end40 ], [ 1, %for.end ], [ %spec.select, %SetImageProgress.exit ], [ 1, %if.end69 ], !dbg !2137
  call void @llvm.dbg.value(metadata i32 %status.3, metadata !2114, metadata !DIExpression()), !dbg !2137
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2115, metadata !DIExpression()), !dbg !2137
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #22, !dbg !2344
  %inc86 = add nuw nsw i64 %y.0158, 1, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %inc86, metadata !2123, metadata !DIExpression()), !dbg !2137
  %23 = load i64, ptr %rows29, align 8, !dbg !2346, !tbaa !2154
  %cmp34 = icmp slt i64 %inc86, %23, !dbg !2184
  br i1 %cmp34, label %for.body, label %for.end87, !dbg !2185, !llvm.loop !2347

for.end87:                                        ; preds = %cleanup, %if.end21
  %status.0.lcssa = phi i32 [ 1, %if.end21 ], [ %status.3, %cleanup ], !dbg !2349
  %call88 = call ptr @DestroyCacheView(ptr noundef %call23) #22, !dbg !2350
  call void @llvm.dbg.value(metadata ptr %call88, metadata !2112, metadata !DIExpression()), !dbg !2137
  %call89 = call ptr @DestroyCacheView(ptr noundef %call22) #22, !dbg !2351
  call void @llvm.dbg.value(metadata ptr %call89, metadata !2107, metadata !DIExpression()), !dbg !2137
  %cmp90 = icmp eq i32 %status.0.lcssa, 0, !dbg !2352
  br i1 %cmp90, label %if.then92, label %cleanup95, !dbg !2354

if.then92:                                        ; preds = %for.end87
  %call93 = call ptr @DestroyImage(ptr noundef nonnull %call12) #22, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %call93, metadata !2113, metadata !DIExpression()), !dbg !2137
  br label %cleanup95, !dbg !2356

cleanup95:                                        ; preds = %for.end87, %if.then92, %if.end11, %if.end, %if.then18, %if.then9
  %retval.0 = phi ptr [ %call10, %if.then9 ], [ null, %if.then18 ], [ null, %if.end ], [ null, %if.end11 ], [ %call93, %if.then92 ], [ %call12, %for.end87 ], !dbg !2137
  ret ptr %retval.0, !dbg !2357
}

; Function Attrs: nounwind uwtable
define dso_local ptr @DestroyResizeFilter(ptr noundef %resize_filter) local_unnamed_addr #0 !dbg !2358 {
entry:
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !2362, metadata !DIExpression()), !dbg !2363
  %signature = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 9, !dbg !2364
  store i64 -2880220588, ptr %signature, align 8, !dbg !2365, !tbaa !1049
  %call = tail call ptr @RelinquishMagickMemory(ptr noundef %resize_filter) #22, !dbg !2366
  call void @llvm.dbg.value(metadata ptr %call, metadata !2362, metadata !DIExpression()), !dbg !2363
  ret ptr %call, !dbg !2367
}

declare !dbg !2368 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local nonnull ptr @GetResizeFilterCoefficient(ptr noundef readnone %resize_filter) local_unnamed_addr #3 !dbg !2371 {
entry:
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !2375, metadata !DIExpression()), !dbg !2376
  %coefficient = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 6, !dbg !2377
  ret ptr %coefficient, !dbg !2378
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local float @GetResizeFilterBlur(ptr nocapture noundef readonly %resize_filter) local_unnamed_addr #14 !dbg !2379 {
entry:
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !2381, metadata !DIExpression()), !dbg !2382
  %blur = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 5, !dbg !2383
  %0 = load float, ptr %blur, align 4, !dbg !2383, !tbaa !983
  ret float %0, !dbg !2384
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local float @GetResizeFilterScale(ptr nocapture noundef readonly %resize_filter) local_unnamed_addr #14 !dbg !2385 {
entry:
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !2387, metadata !DIExpression()), !dbg !2388
  %scale = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 4, !dbg !2389
  %0 = load float, ptr %scale, align 8, !dbg !2389, !tbaa !1046
  ret float %0, !dbg !2390
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local float @GetResizeFilterWindowSupport(ptr nocapture noundef readonly %resize_filter) local_unnamed_addr #14 !dbg !2391 {
entry:
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !2393, metadata !DIExpression()), !dbg !2394
  %window_support = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 3, !dbg !2395
  %0 = load float, ptr %window_support, align 4, !dbg !2395, !tbaa !1288
  ret float %0, !dbg !2396
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @GetResizeFilterWeightingType(ptr nocapture noundef readonly %resize_filter) local_unnamed_addr #14 !dbg !2397 {
entry:
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !2401, metadata !DIExpression()), !dbg !2402
  %filterWeightingType = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 7, !dbg !2403
  %0 = load i32, ptr %filterWeightingType, align 4, !dbg !2403, !tbaa !1031
  ret i32 %0, !dbg !2404
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @GetResizeFilterWindowWeightingType(ptr nocapture noundef readonly %resize_filter) local_unnamed_addr #14 !dbg !2405 {
entry:
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !2407, metadata !DIExpression()), !dbg !2408
  %windowWeightingType = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 8, !dbg !2409
  %0 = load i32, ptr %windowWeightingType, align 8, !dbg !2409, !tbaa !1040
  ret i32 %0, !dbg !2410
}

declare !dbg !2411 ptr @CloneImage(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !2414 i32 @SetImageStorageClass(ptr noundef, i32 noundef) local_unnamed_addr #10

declare !dbg !2418 void @InheritException(ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !2423 ptr @DestroyImage(ptr noundef) local_unnamed_addr #10

declare !dbg !2426 ptr @AcquireVirtualCacheView(ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !2429 ptr @AcquireAuthenticCacheView(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: hot
declare !dbg !2430 ptr @QueueCacheViewAuthenticPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #15

declare !dbg !2433 ptr @GetCacheViewAuthenticIndexQueue(ptr noundef) local_unnamed_addr #10

declare !dbg !2436 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !2439 i32 @InterpolateMagickPixelPacket(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: hot
declare !dbg !2445 i32 @SyncCacheViewAuthenticPixels(ptr noundef, ptr noundef) local_unnamed_addr #15

declare !dbg !2448 ptr @DestroyCacheView(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @LiquidRescaleImage(ptr noundef %image, i64 noundef %columns, i64 noundef %rows, double noundef %delta_x, double noundef %rigidity, ptr noundef %exception) local_unnamed_addr #0 !dbg !2451 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2455, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %columns, metadata !2456, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i64 %rows, metadata !2457, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata double %delta_x, metadata !2458, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata double %rigidity, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2460, metadata !DIExpression()), !dbg !2461
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2462
  %0 = load i32, ptr %debug, align 8, !dbg !2462, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !2464
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2465

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2466
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1992, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !2467
  br label %if.end, !dbg !2468

if.end:                                           ; preds = %if.then, %entry
  %filename1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2469
  %call3 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 1995, i32 noundef 420, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull %filename1) #22, !dbg !2470
  ret ptr null, !dbg !2471
}

; Function Attrs: nounwind uwtable
define dso_local ptr @MagnifyImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !2472 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %intensity = alloca [9 x float], align 16
  call void @llvm.dbg.value(metadata ptr %image, metadata !2476, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2477, metadata !DIExpression()), !dbg !2507
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2508
  %0 = load i32, ptr %debug, align 8, !dbg !2508, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !2510
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2511

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2512
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2052, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !2513
  br label %if.end, !dbg !2514

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2515
  %1 = load i64, ptr %columns, align 8, !dbg !2515, !tbaa !2150
  %mul = shl i64 %1, 1, !dbg !2516
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2517
  %2 = load i64, ptr %rows, align 8, !dbg !2517, !tbaa !2154
  %mul1 = shl i64 %2, 1, !dbg !2518
  %call2 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %mul, i64 noundef %mul1, i32 noundef 1, ptr noundef %exception) #22, !dbg !2519
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2480, metadata !DIExpression()), !dbg !2507
  %cmp3 = icmp eq ptr %call2, null, !dbg !2520
  br i1 %cmp3, label %cleanup223, label %if.end5, !dbg !2522

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 1, metadata !2481, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 0, metadata !2482, metadata !DIExpression()), !dbg !2507
  %call6 = tail call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #22, !dbg !2523
  call void @llvm.dbg.value(metadata ptr %call6, metadata !2478, metadata !DIExpression()), !dbg !2507
  %call7 = tail call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call2, ptr noundef %exception) #22, !dbg !2524
  call void @llvm.dbg.value(metadata ptr %call7, metadata !2479, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 0, metadata !2483, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 0, metadata !2482, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 1, metadata !2481, metadata !DIExpression()), !dbg !2507
  %3 = load i64, ptr %rows, align 8, !dbg !2525, !tbaa !2154
  %cmp9343 = icmp sgt i64 %3, 0, !dbg !2526
  br i1 %cmp9343, label %for.body.lr.ph, label %for.end215, !dbg !2527

for.body.lr.ph:                                   ; preds = %if.end5
  %columns14 = getelementptr inbounds %struct._Image, ptr %call2, i64 0, i32 7
  %arrayidx34 = getelementptr inbounds [9 x float], ptr %intensity, i64 0, i64 1
  %arrayidx35 = getelementptr inbounds [9 x float], ptr %intensity, i64 0, i64 7
  %arrayidx39 = getelementptr inbounds [9 x float], ptr %intensity, i64 0, i64 3
  %arrayidx40 = getelementptr inbounds [9 x float], ptr %intensity, i64 0, i64 5
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !2527

for.body:                                         ; preds = %for.body.lr.ph, %cleanup208
  %y.0346 = phi i64 [ 0, %for.body.lr.ph ], [ %inc214, %cleanup208 ]
  %progress.0345 = phi i64 [ 0, %for.body.lr.ph ], [ %progress.2, %cleanup208 ]
  %status.0344 = phi i32 [ 1, %for.body.lr.ph ], [ %status.6, %cleanup208 ]
  call void @llvm.dbg.value(metadata i64 %y.0346, metadata !2483, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i64 %progress.0345, metadata !2482, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 %status.0344, metadata !2481, metadata !DIExpression()), !dbg !2507
  %cmp10 = icmp eq i32 %status.0344, 0, !dbg !2528
  br i1 %cmp10, label %cleanup208, label %if.end12, !dbg !2530

if.end12:                                         ; preds = %for.body
  %mul13 = shl nuw nsw i64 %y.0346, 1, !dbg !2531
  %4 = load i64, ptr %columns14, align 8, !dbg !2532, !tbaa !2150
  %call15 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call7, i64 noundef 0, i64 noundef %mul13, i64 noundef %4, i64 noundef 2, ptr noundef %exception) #26, !dbg !2533
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2488, metadata !DIExpression()), !dbg !2534
  %cmp16 = icmp eq ptr %call15, null, !dbg !2535
  br i1 %cmp16, label %cleanup208, label %if.end18, !dbg !2537

if.end18:                                         ; preds = %if.end12
  %call19 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call7) #22, !dbg !2538
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2484, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i64 0, metadata !2489, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata ptr %call15, metadata !2488, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 1, metadata !2481, metadata !DIExpression()), !dbg !2507
  %5 = load i64, ptr %columns, align 8, !dbg !2539, !tbaa !2150
  %cmp22336 = icmp sgt i64 %5, 0, !dbg !2540
  br i1 %cmp22336, label %for.body23.lr.ph, label %for.end191, !dbg !2541

for.body23.lr.ph:                                 ; preds = %if.end18
  %sub24 = add nsw i64 %y.0346, -1
  br label %for.body23, !dbg !2541

for.body23:                                       ; preds = %for.body23.lr.ph, %cleanup
  %x.0342 = phi i64 [ 0, %for.body23.lr.ph ], [ %inc190, %cleanup ]
  %q.0340 = phi ptr [ %call15, %for.body23.lr.ph ], [ %q.1, %cleanup ]
  %magnify_indexes.0338 = phi ptr [ %call19, %for.body23.lr.ph ], [ %magnify_indexes.2, %cleanup ]
  %status.1337 = phi i32 [ 1, %for.body23.lr.ph ], [ %status.2, %cleanup ]
  call void @llvm.dbg.value(metadata i64 %x.0342, metadata !2489, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata ptr %q.0340, metadata !2488, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata ptr %magnify_indexes.0338, metadata !2484, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %status.1337, metadata !2481, metadata !DIExpression()), !dbg !2507
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %intensity) #22, !dbg !2542
  call void @llvm.dbg.declare(metadata ptr %intensity, metadata !2490, metadata !DIExpression()), !dbg !2543
  %sub = add nsw i64 %x.0342, -1, !dbg !2544
  %call25 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call6, i64 noundef %sub, i64 noundef %sub24, i64 noundef 3, i64 noundef 3, ptr noundef %exception) #26, !dbg !2545
  call void @llvm.dbg.value(metadata ptr %call25, metadata !2497, metadata !DIExpression()), !dbg !2546
  %cmp26 = icmp eq ptr %call25, null, !dbg !2547
  br i1 %cmp26, label %cleanup, label %if.end28, !dbg !2549

if.end28:                                         ; preds = %for.body23
  %call29 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call6) #22, !dbg !2550
  call void @llvm.dbg.value(metadata ptr %call29, metadata !2495, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 0, metadata !2500, metadata !DIExpression()), !dbg !2546
  br label %for.body32, !dbg !2551

for.body32:                                       ; preds = %if.end28, %for.body32
  %i.0335 = phi i64 [ 0, %if.end28 ], [ %inc, %for.body32 ]
  call void @llvm.dbg.value(metadata i64 %i.0335, metadata !2500, metadata !DIExpression()), !dbg !2546
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call25, i64 %i.0335, !dbg !2553
  %call33 = call float @GetPixelIntensity(ptr noundef %image, ptr noundef nonnull %add.ptr) #26, !dbg !2555
  %arrayidx = getelementptr inbounds [9 x float], ptr %intensity, i64 0, i64 %i.0335, !dbg !2556
  store float %call33, ptr %arrayidx, align 4, !dbg !2557, !tbaa !1091
  %inc = add nuw nsw i64 %i.0335, 1, !dbg !2558
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2500, metadata !DIExpression()), !dbg !2546
  %exitcond.not = icmp eq i64 %inc, 9, !dbg !2559
  br i1 %exitcond.not, label %for.end, label %for.body32, !dbg !2551, !llvm.loop !2560

for.end:                                          ; preds = %for.body32
  call void @llvm.dbg.value(metadata ptr %q.0340, metadata !2499, metadata !DIExpression()), !dbg !2546
  %6 = load float, ptr %arrayidx34, align 4, !dbg !2562, !tbaa !1091
  %7 = load float, ptr %arrayidx35, align 4, !dbg !2564, !tbaa !1091
  %sub36 = fsub float %6, %7, !dbg !2565
  %8 = call float @llvm.fabs.f32(float %sub36), !dbg !2566
  %9 = fpext float %8 to double, !dbg !2566
  %cmp37 = fcmp olt double %9, 1.000000e-15, !dbg !2567
  br i1 %cmp37, label %if.then45, label %lor.lhs.false, !dbg !2568

lor.lhs.false:                                    ; preds = %for.end
  %10 = load float, ptr %arrayidx39, align 4, !dbg !2569, !tbaa !1091
  %11 = load float, ptr %arrayidx40, align 4, !dbg !2570, !tbaa !1091
  %sub41 = fsub float %10, %11, !dbg !2571
  %12 = call float @llvm.fabs.f32(float %sub41), !dbg !2572
  %13 = fpext float %12 to double, !dbg !2572
  %cmp43 = fcmp olt double %13, 1.000000e-15, !dbg !2573
  br i1 %cmp43, label %if.then45, label %if.else, !dbg !2574

if.then45:                                        ; preds = %lor.lhs.false, %for.end
  %arrayidx46 = getelementptr inbounds %struct._PixelPacket, ptr %call25, i64 4, !dbg !2575
  %14 = load i64, ptr %arrayidx46, align 2, !dbg !2575
  store i64 %14, ptr %q.0340, align 2, !dbg !2575
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0340, i64 1, !dbg !2577
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2499, metadata !DIExpression()), !dbg !2546
  %15 = load i64, ptr %arrayidx46, align 2, !dbg !2578
  store i64 %15, ptr %incdec.ptr, align 2, !dbg !2578
  %16 = load i64, ptr %columns14, align 8, !dbg !2579, !tbaa !2150
  %add.ptr50 = getelementptr inbounds %struct._PixelPacket, ptr %q.0340, i64 %16, !dbg !2580
  call void @llvm.dbg.value(metadata ptr %add.ptr50, metadata !2499, metadata !DIExpression()), !dbg !2546
  %17 = load i64, ptr %arrayidx46, align 2, !dbg !2581
  store i64 %17, ptr %add.ptr50, align 2, !dbg !2581
  call void @llvm.dbg.value(metadata ptr %add.ptr50, metadata !2499, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2546
  br label %if.end103, !dbg !2582

if.else:                                          ; preds = %lor.lhs.false
  %sub56 = fsub float %6, %10, !dbg !2583
  %18 = call float @llvm.fabs.f32(float %sub56), !dbg !2586
  %19 = fpext float %18 to double, !dbg !2586
  %cmp58 = fcmp olt double %19, 1.000000e-15, !dbg !2587
  %. = select i1 %cmp58, i64 3, i64 4
  %arrayidx63 = getelementptr inbounds %struct._PixelPacket, ptr %call25, i64 %., !dbg !2588
  %storemerge333 = load i64, ptr %arrayidx63, align 2, !dbg !2588
  store i64 %storemerge333, ptr %q.0340, align 2, !dbg !2588
  %incdec.ptr65 = getelementptr inbounds %struct._PixelPacket, ptr %q.0340, i64 1, !dbg !2589
  call void @llvm.dbg.value(metadata ptr %incdec.ptr65, metadata !2499, metadata !DIExpression()), !dbg !2546
  %20 = load float, ptr %arrayidx34, align 4, !dbg !2590, !tbaa !1091
  %21 = load float, ptr %arrayidx40, align 4, !dbg !2592, !tbaa !1091
  %sub68 = fsub float %20, %21, !dbg !2593
  %22 = call float @llvm.fabs.f32(float %sub68), !dbg !2594
  %23 = fpext float %22 to double, !dbg !2594
  %cmp70 = fcmp olt double %23, 1.000000e-15, !dbg !2595
  br i1 %cmp70, label %if.end76, label %if.else74, !dbg !2596

if.else74:                                        ; preds = %if.else
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.else74
  %.sink350 = phi i64 [ 4, %if.else74 ], [ 5, %if.else ]
  %arrayidx75 = getelementptr inbounds %struct._PixelPacket, ptr %call25, i64 %.sink350, !dbg !2597
  %storemerge332 = load i64, ptr %arrayidx75, align 2, !dbg !2597
  store i64 %storemerge332, ptr %incdec.ptr65, align 2, !dbg !2597
  %24 = load i64, ptr %columns14, align 8, !dbg !2598, !tbaa !2150
  %add.ptr79 = getelementptr inbounds %struct._PixelPacket, ptr %q.0340, i64 %24, !dbg !2599
  call void @llvm.dbg.value(metadata ptr %add.ptr79, metadata !2499, metadata !DIExpression()), !dbg !2546
  %25 = load float, ptr %arrayidx39, align 4, !dbg !2600, !tbaa !1091
  %26 = load float, ptr %arrayidx35, align 4, !dbg !2602, !tbaa !1091
  %sub82 = fsub float %25, %26, !dbg !2603
  %27 = call float @llvm.fabs.f32(float %sub82), !dbg !2604
  %28 = fpext float %27 to double, !dbg !2604
  %cmp84 = fcmp olt double %28, 1.000000e-15, !dbg !2605
  %.357 = select i1 %cmp84, i64 3, i64 4
  %arrayidx89 = getelementptr inbounds %struct._PixelPacket, ptr %call25, i64 %.357, !dbg !2606
  %storemerge331 = load i64, ptr %arrayidx89, align 2, !dbg !2606
  store i64 %storemerge331, ptr %add.ptr79, align 2, !dbg !2606
  call void @llvm.dbg.value(metadata ptr %add.ptr79, metadata !2499, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2546
  %29 = load float, ptr %arrayidx40, align 4, !dbg !2607, !tbaa !1091
  %30 = load float, ptr %arrayidx35, align 4, !dbg !2609, !tbaa !1091
  %sub94 = fsub float %29, %30, !dbg !2610
  %31 = call float @llvm.fabs.f32(float %sub94), !dbg !2611
  %32 = fpext float %31 to double, !dbg !2611
  %cmp96 = fcmp olt double %32, 1.000000e-15, !dbg !2612
  br i1 %cmp96, label %if.then98, label %if.else100, !dbg !2613

if.then98:                                        ; preds = %if.end76
  %arrayidx99 = getelementptr inbounds %struct._PixelPacket, ptr %call25, i64 5, !dbg !2614
  br label %if.end103, !dbg !2615

if.else100:                                       ; preds = %if.end76
  %arrayidx101 = getelementptr inbounds %struct._PixelPacket, ptr %call25, i64 4, !dbg !2616
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.else100, %if.then45
  %arrayidx99.sink = phi ptr [ %arrayidx99, %if.then98 ], [ %arrayidx101, %if.else100 ], [ %arrayidx46, %if.then45 ]
  %33 = phi i64 [ %24, %if.then98 ], [ %24, %if.else100 ], [ %16, %if.then45 ]
  %34 = getelementptr inbounds %struct._PixelPacket, ptr %q.0340, i64 1, !dbg !2599
  %incdec.ptr91.sink = getelementptr inbounds %struct._PixelPacket, ptr %34, i64 %33, !dbg !2617
  %35 = load i64, ptr %arrayidx99.sink, align 2, !dbg !2617
  store i64 %35, ptr %incdec.ptr91.sink, align 2, !dbg !2617
  %cmp104.not = icmp eq ptr %call29, null, !dbg !2618
  br i1 %cmp104.not, label %if.end183, label %if.then106, !dbg !2619

if.then106:                                       ; preds = %if.end103
  call void @llvm.dbg.value(metadata ptr %magnify_indexes.0338, metadata !2501, metadata !DIExpression()), !dbg !2620
  %36 = load float, ptr %arrayidx34, align 4, !dbg !2621, !tbaa !1091
  %37 = load float, ptr %arrayidx35, align 4, !dbg !2623, !tbaa !1091
  %sub110 = fsub float %36, %37, !dbg !2624
  %38 = call float @llvm.fabs.f32(float %sub110), !dbg !2625
  %39 = fpext float %38 to double, !dbg !2625
  %cmp112 = fcmp olt double %39, 1.000000e-15, !dbg !2626
  br i1 %cmp112, label %if.then121, label %lor.lhs.false114, !dbg !2627

lor.lhs.false114:                                 ; preds = %if.then106
  %40 = load float, ptr %arrayidx39, align 4, !dbg !2628, !tbaa !1091
  %41 = load float, ptr %arrayidx40, align 4, !dbg !2629, !tbaa !1091
  %sub117 = fsub float %40, %41, !dbg !2630
  %42 = call float @llvm.fabs.f32(float %sub117), !dbg !2631
  %43 = fpext float %42 to double, !dbg !2631
  %cmp119 = fcmp olt double %43, 1.000000e-15, !dbg !2632
  br i1 %cmp119, label %if.then121, label %if.else131, !dbg !2633

if.then121:                                       ; preds = %lor.lhs.false114, %if.then106
  %arrayidx122 = getelementptr inbounds i16, ptr %call29, i64 4, !dbg !2634
  %44 = load i16, ptr %arrayidx122, align 2, !dbg !2634, !tbaa !2304
  store i16 %44, ptr %magnify_indexes.0338, align 2, !dbg !2636, !tbaa !2304
  %incdec.ptr123 = getelementptr inbounds i16, ptr %magnify_indexes.0338, i64 1, !dbg !2637
  call void @llvm.dbg.value(metadata ptr %incdec.ptr123, metadata !2501, metadata !DIExpression()), !dbg !2620
  %45 = load i16, ptr %arrayidx122, align 2, !dbg !2638, !tbaa !2304
  store i16 %45, ptr %incdec.ptr123, align 2, !dbg !2639, !tbaa !2304
  %46 = load i64, ptr %columns14, align 8, !dbg !2640, !tbaa !2150
  %add.ptr127 = getelementptr inbounds i16, ptr %magnify_indexes.0338, i64 %46, !dbg !2641
  call void @llvm.dbg.value(metadata ptr %add.ptr127, metadata !2501, metadata !DIExpression()), !dbg !2620
  %47 = load i16, ptr %arrayidx122, align 2, !dbg !2642, !tbaa !2304
  store i16 %47, ptr %add.ptr127, align 2, !dbg !2643, !tbaa !2304
  call void @llvm.dbg.value(metadata ptr %add.ptr127, metadata !2501, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2620
  br label %if.end181, !dbg !2644

if.else131:                                       ; preds = %lor.lhs.false114
  %sub134 = fsub float %36, %40, !dbg !2645
  %48 = call float @llvm.fabs.f32(float %sub134), !dbg !2648
  %49 = fpext float %48 to double, !dbg !2648
  %cmp136 = fcmp olt double %49, 1.000000e-15, !dbg !2649
  %.358 = select i1 %cmp136, i64 3, i64 4
  %arrayidx141 = getelementptr inbounds i16, ptr %call29, i64 %.358, !dbg !2650
  %storemerge = load i16, ptr %arrayidx141, align 2, !dbg !2650, !tbaa !2304
  store i16 %storemerge, ptr %magnify_indexes.0338, align 2, !dbg !2650, !tbaa !2304
  %incdec.ptr143 = getelementptr inbounds i16, ptr %magnify_indexes.0338, i64 1, !dbg !2651
  call void @llvm.dbg.value(metadata ptr %incdec.ptr143, metadata !2501, metadata !DIExpression()), !dbg !2620
  %sub146 = fsub float %36, %41, !dbg !2652
  %50 = call float @llvm.fabs.f32(float %sub146), !dbg !2654
  %51 = fpext float %50 to double, !dbg !2654
  %cmp148 = fcmp olt double %51, 1.000000e-15, !dbg !2655
  br i1 %cmp148, label %if.end154, label %if.else152, !dbg !2656

if.else152:                                       ; preds = %if.else131
  br label %if.end154

if.end154:                                        ; preds = %if.else131, %if.else152
  %.sink354 = phi i64 [ 4, %if.else152 ], [ 5, %if.else131 ]
  %arrayidx153 = getelementptr inbounds i16, ptr %call29, i64 %.sink354, !dbg !2657
  %storemerge329 = load i16, ptr %arrayidx153, align 2, !dbg !2657, !tbaa !2304
  store i16 %storemerge329, ptr %incdec.ptr143, align 2, !dbg !2657, !tbaa !2304
  %52 = load i64, ptr %columns14, align 8, !dbg !2658, !tbaa !2150
  %add.ptr157 = getelementptr inbounds i16, ptr %magnify_indexes.0338, i64 %52, !dbg !2659
  call void @llvm.dbg.value(metadata ptr %add.ptr157, metadata !2501, metadata !DIExpression()), !dbg !2620
  %sub160 = fsub float %40, %37, !dbg !2660
  %53 = call float @llvm.fabs.f32(float %sub160), !dbg !2662
  %54 = fpext float %53 to double, !dbg !2662
  %cmp162 = fcmp olt double %54, 1.000000e-15, !dbg !2663
  %.359 = select i1 %cmp162, i64 3, i64 4
  %arrayidx167 = getelementptr inbounds i16, ptr %call29, i64 %.359, !dbg !2664
  %storemerge330 = load i16, ptr %arrayidx167, align 2, !dbg !2664, !tbaa !2304
  store i16 %storemerge330, ptr %add.ptr157, align 2, !dbg !2664, !tbaa !2304
  call void @llvm.dbg.value(metadata ptr %add.ptr157, metadata !2501, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2620
  %sub172 = fsub float %41, %37, !dbg !2665
  %55 = call float @llvm.fabs.f32(float %sub172), !dbg !2667
  %56 = fpext float %55 to double, !dbg !2667
  %cmp174 = fcmp olt double %56, 1.000000e-15, !dbg !2668
  br i1 %cmp174, label %if.then176, label %if.else178, !dbg !2669

if.then176:                                       ; preds = %if.end154
  %arrayidx177 = getelementptr inbounds i16, ptr %call29, i64 5, !dbg !2670
  br label %if.end181, !dbg !2671

if.else178:                                       ; preds = %if.end154
  %arrayidx179 = getelementptr inbounds i16, ptr %call29, i64 4, !dbg !2672
  br label %if.end181

if.end181:                                        ; preds = %if.then176, %if.else178, %if.then121
  %arrayidx177.sink = phi ptr [ %arrayidx177, %if.then176 ], [ %arrayidx179, %if.else178 ], [ %arrayidx122, %if.then121 ]
  %57 = phi i64 [ %52, %if.then176 ], [ %52, %if.else178 ], [ %46, %if.then121 ]
  %58 = getelementptr inbounds i16, ptr %magnify_indexes.0338, i64 1, !dbg !2659
  %incdec.ptr169.sink = getelementptr inbounds i16, ptr %58, i64 %57, !dbg !2673
  %59 = load i16, ptr %arrayidx177.sink, align 2, !dbg !2673, !tbaa !2304
  store i16 %59, ptr %incdec.ptr169.sink, align 2, !dbg !2673, !tbaa !2304
  %add.ptr182 = getelementptr inbounds i16, ptr %magnify_indexes.0338, i64 2, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %add.ptr182, metadata !2484, metadata !DIExpression()), !dbg !2534
  br label %if.end183, !dbg !2675

if.end183:                                        ; preds = %if.end181, %if.end103
  %magnify_indexes.1 = phi ptr [ %add.ptr182, %if.end181 ], [ %magnify_indexes.0338, %if.end103 ], !dbg !2534
  call void @llvm.dbg.value(metadata ptr %magnify_indexes.1, metadata !2484, metadata !DIExpression()), !dbg !2534
  %add.ptr184 = getelementptr inbounds %struct._PixelPacket, ptr %q.0340, i64 2, !dbg !2676
  call void @llvm.dbg.value(metadata ptr %add.ptr184, metadata !2488, metadata !DIExpression()), !dbg !2534
  br label %cleanup, !dbg !2677

cleanup:                                          ; preds = %for.body23, %if.end183
  %status.2 = phi i32 [ %status.1337, %if.end183 ], [ 0, %for.body23 ], !dbg !2507
  %magnify_indexes.2 = phi ptr [ %magnify_indexes.1, %if.end183 ], [ %magnify_indexes.0338, %for.body23 ], !dbg !2534
  %q.1 = phi ptr [ %add.ptr184, %if.end183 ], [ %q.0340, %for.body23 ], !dbg !2534
  call void @llvm.dbg.value(metadata ptr %q.1, metadata !2488, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata ptr %magnify_indexes.2, metadata !2484, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !2481, metadata !DIExpression()), !dbg !2507
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %intensity) #22, !dbg !2677
  %inc190 = add nuw nsw i64 %x.0342, 1, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %inc190, metadata !2489, metadata !DIExpression()), !dbg !2534
  %60 = load i64, ptr %columns, align 8, !dbg !2539, !tbaa !2150
  %cmp22 = icmp slt i64 %inc190, %60, !dbg !2540
  br i1 %cmp22, label %for.body23, label %for.end191, !dbg !2541, !llvm.loop !2679

for.end191:                                       ; preds = %cleanup, %if.end18
  %status.1.lcssa = phi i32 [ 1, %if.end18 ], [ %status.2, %cleanup ], !dbg !2507
  %call192 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call7, ptr noundef %exception) #26, !dbg !2681
  %cmp193 = icmp eq i32 %call192, 0, !dbg !2683
  %spec.select = select i1 %cmp193, i32 0, i32 %status.1.lcssa, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2481, metadata !DIExpression()), !dbg !2507
  %61 = load ptr, ptr %progress_monitor, align 8, !dbg !2685, !tbaa !2314
  %cmp197.not = icmp eq ptr %61, null, !dbg !2686
  br i1 %cmp197.not, label %cleanup208, label %SetImageProgress.exit, !dbg !2687

SetImageProgress.exit:                            ; preds = %for.end191
  %inc200 = add nsw i64 %progress.0345, 1, !dbg !2688
  call void @llvm.dbg.value(metadata i64 %inc200, metadata !2482, metadata !DIExpression()), !dbg !2507
  %62 = load i64, ptr %rows, align 8, !dbg !2689, !tbaa !2154
  call void @llvm.dbg.value(metadata ptr %image, metadata !2319, metadata !DIExpression()) #22, !dbg !2690
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !2325, metadata !DIExpression()) #22, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %progress.0345, metadata !2326, metadata !DIExpression()) #22, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %62, metadata !2327, metadata !DIExpression()) #22, !dbg !2690
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2328, metadata !DIExpression()) #22, !dbg !2693
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.33, ptr noundef nonnull %filename.i) #22, !dbg !2694
  %63 = load ptr, ptr %progress_monitor, align 8, !dbg !2695, !tbaa !2314
  %64 = load ptr, ptr %client_data.i, align 8, !dbg !2696, !tbaa !2336
  %call4.i = call i32 %63(ptr noundef nonnull %message.i, i64 noundef %progress.0345, i64 noundef %62, ptr noundef %64) #22, !dbg !2697
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !2698
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2504, metadata !DIExpression()), !dbg !2699
  %cmp203 = icmp eq i32 %call4.i, 0, !dbg !2700
  %spec.select334 = select i1 %cmp203, i32 0, i32 %spec.select, !dbg !2702
  call void @llvm.dbg.value(metadata i32 %spec.select334, metadata !2481, metadata !DIExpression()), !dbg !2507
  br label %cleanup208, !dbg !2703

cleanup208:                                       ; preds = %for.end191, %SetImageProgress.exit, %if.end12, %for.body
  %status.6 = phi i32 [ 0, %for.body ], [ 0, %if.end12 ], [ %spec.select334, %SetImageProgress.exit ], [ %spec.select, %for.end191 ], !dbg !2507
  %progress.2 = phi i64 [ %progress.0345, %for.body ], [ %progress.0345, %if.end12 ], [ %inc200, %SetImageProgress.exit ], [ %progress.0345, %for.end191 ], !dbg !2507
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !2482, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.value(metadata i32 %status.6, metadata !2481, metadata !DIExpression()), !dbg !2507
  %inc214 = add nuw nsw i64 %y.0346, 1, !dbg !2704
  call void @llvm.dbg.value(metadata i64 %inc214, metadata !2483, metadata !DIExpression()), !dbg !2507
  %65 = load i64, ptr %rows, align 8, !dbg !2525, !tbaa !2154
  %cmp9 = icmp slt i64 %inc214, %65, !dbg !2526
  br i1 %cmp9, label %for.body, label %for.end215, !dbg !2527, !llvm.loop !2705

for.end215:                                       ; preds = %cleanup208, %if.end5
  %status.0.lcssa = phi i32 [ 1, %if.end5 ], [ %status.6, %cleanup208 ], !dbg !2707
  %call216 = call ptr @DestroyCacheView(ptr noundef %call7) #22, !dbg !2708
  call void @llvm.dbg.value(metadata ptr %call216, metadata !2479, metadata !DIExpression()), !dbg !2507
  %call217 = call ptr @DestroyCacheView(ptr noundef %call6) #22, !dbg !2709
  call void @llvm.dbg.value(metadata ptr %call217, metadata !2478, metadata !DIExpression()), !dbg !2507
  %cmp218 = icmp eq i32 %status.0.lcssa, 0, !dbg !2710
  br i1 %cmp218, label %if.then220, label %cleanup223, !dbg !2712

if.then220:                                       ; preds = %for.end215
  %call221 = call ptr @DestroyImage(ptr noundef nonnull %call2) #22, !dbg !2713
  call void @llvm.dbg.value(metadata ptr %call221, metadata !2480, metadata !DIExpression()), !dbg !2507
  br label %cleanup223, !dbg !2714

cleanup223:                                       ; preds = %for.end215, %if.then220, %if.end
  %retval.0 = phi ptr [ null, %if.end ], [ %call221, %if.then220 ], [ %call2, %for.end215 ], !dbg !2507
  ret ptr %retval.0, !dbg !2715
}

; Function Attrs: hot
declare !dbg !2716 ptr @GetCacheViewVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #15

declare !dbg !2721 ptr @GetCacheViewVirtualIndexQueue(ptr noundef) local_unnamed_addr #10

; Function Attrs: hot
declare !dbg !2724 float @GetPixelIntensity(ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nounwind uwtable
define dso_local ptr @MinifyImage(ptr noundef %image, ptr noundef %exception) local_unnamed_addr #0 !dbg !2727 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2729, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2730, metadata !DIExpression()), !dbg !2732
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2733
  %0 = load i32, ptr %debug, align 8, !dbg !2733, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !2735
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2736

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2737
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2267, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !2738
  br label %if.end, !dbg !2739

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2740
  %1 = load i64, ptr %columns, align 8, !dbg !2740, !tbaa !2150
  %div7 = lshr i64 %1, 1, !dbg !2741
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2742
  %2 = load i64, ptr %rows, align 8, !dbg !2742, !tbaa !2154
  %div18 = lshr i64 %2, 1, !dbg !2743
  %call2 = tail call ptr @ResizeImage(ptr noundef nonnull %image, i64 noundef %div7, i64 noundef %div18, i32 noundef 29, double noundef 1.000000e+00, ptr noundef %exception), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2731, metadata !DIExpression()), !dbg !2732
  ret ptr %call2, !dbg !2745
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ResizeImage(ptr noundef %image, i64 noundef %columns, i64 noundef %rows, i32 noundef %filter, double noundef %blur, ptr noundef %exception) local_unnamed_addr #0 !dbg !2746 {
entry:
  %offset = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !2750, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %columns, metadata !2751, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %rows, metadata !2752, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %filter, metadata !2753, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata double %blur, metadata !2754, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2755, metadata !DIExpression()), !dbg !2766
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %offset) #22, !dbg !2767
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2768
  %0 = load i32, ptr %debug, align 8, !dbg !2768, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !2770
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2771

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2772
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2980, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !2773
  br label %if.end, !dbg !2774

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq i64 %columns, 0, !dbg !2775
  %cmp2 = icmp eq i64 %rows, 0
  %or.cond = or i1 %cmp1, %cmp2, !dbg !2777
  br i1 %or.cond, label %if.then3, label %if.end7, !dbg !2777

if.then3:                                         ; preds = %if.end
  %filename4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2778
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2984, i32 noundef 465, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename4) #22, !dbg !2778
  br label %cleanup, !dbg !2778

if.end7:                                          ; preds = %if.end
  %columns8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2780
  %1 = load i64, ptr %columns8, align 8, !dbg !2780, !tbaa !2150
  %cmp9 = icmp eq i64 %1, %columns, !dbg !2782
  %rows10 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %2 = load i64, ptr %rows10, align 8, !dbg !2766, !tbaa !2154
  br i1 %cmp9, label %land.lhs.true, label %if.end18, !dbg !2783

land.lhs.true:                                    ; preds = %if.end7
  %cmp11 = icmp eq i64 %2, %rows, !dbg !2784
  %cmp13 = icmp eq i32 %filter, 0
  %or.cond108 = and i1 %cmp13, %cmp11, !dbg !2785
  %cmp15 = fcmp oeq double %blur, 1.000000e+00
  %or.cond109 = and i1 %cmp15, %or.cond108, !dbg !2785
  br i1 %or.cond109, label %if.then16, label %if.end18, !dbg !2785

if.then16:                                        ; preds = %land.lhs.true
  %call17 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #22, !dbg !2786
  br label %cleanup, !dbg !2787

if.end18:                                         ; preds = %if.end7, %land.lhs.true
  %conv = uitofp i64 %columns to float, !dbg !2788
  %conv20 = uitofp i64 %1 to float, !dbg !2789
  %div = fdiv float %conv, %conv20, !dbg !2790
  call void @llvm.dbg.value(metadata float %div, metadata !2760, metadata !DIExpression()), !dbg !2766
  %conv21 = uitofp i64 %rows to float, !dbg !2791
  %rows22 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2792
  %conv23 = uitofp i64 %2 to float, !dbg !2793
  %div24 = fdiv float %conv21, %conv23, !dbg !2794
  call void @llvm.dbg.value(metadata float %div24, metadata !2761, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 22, metadata !2756, metadata !DIExpression()), !dbg !2766
  %cmp25.not = icmp eq i32 %filter, 0, !dbg !2795
  br i1 %cmp25.not, label %if.else, label %if.end49, !dbg !2797

if.else:                                          ; preds = %if.end18
  %cmp29 = fcmp oeq float %div, 1.000000e+00, !dbg !2798
  %cmp33 = fcmp oeq float %div24, 1.000000e+00
  %or.cond193 = select i1 %cmp29, i1 %cmp33, i1 false, !dbg !2800
  br i1 %or.cond193, label %if.end49, label %if.else36, !dbg !2800

if.else36:                                        ; preds = %if.else
  %3 = load i32, ptr %image, align 8, !dbg !2801, !tbaa !2287
  %cmp37 = icmp eq i32 %3, 2, !dbg !2803
  br i1 %cmp37, label %if.then46, label %lor.lhs.false39, !dbg !2804

lor.lhs.false39:                                  ; preds = %if.else36
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !2805
  %4 = load i32, ptr %matte, align 8, !dbg !2805, !tbaa !2806
  %cmp40.not = icmp ne i32 %4, 0, !dbg !2807
  %mul = fmul float %div, %div24
  %cmp44 = fcmp ogt float %mul, 1.000000e+00
  %or.cond194 = select i1 %cmp40.not, i1 true, i1 %cmp44, !dbg !2808
  br i1 %or.cond194, label %if.then46, label %if.end49, !dbg !2808

if.then46:                                        ; preds = %lor.lhs.false39, %if.else36
  call void @llvm.dbg.value(metadata i32 12, metadata !2756, metadata !DIExpression()), !dbg !2766
  br label %if.end49, !dbg !2809

if.end49:                                         ; preds = %lor.lhs.false39, %if.else, %if.end18, %if.then46
  %filter_type.0 = phi i32 [ 12, %if.then46 ], [ %filter, %if.end18 ], [ 1, %if.else ], [ 22, %lor.lhs.false39 ], !dbg !2766
  call void @llvm.dbg.value(metadata i32 %filter_type.0, metadata !2756, metadata !DIExpression()), !dbg !2766
  %conv50 = fptrunc double %blur to float, !dbg !2810
  %call51 = tail call ptr @AcquireResizeFilter(ptr noundef nonnull %image, i32 noundef %filter_type.0, float noundef %conv50, i32 noundef 0, ptr undef), !dbg !2811
  call void @llvm.dbg.value(metadata ptr %call51, metadata !2765, metadata !DIExpression()), !dbg !2766
  %call52 = tail call ptr @AccelerateResizeImage(ptr noundef nonnull %image, i64 noundef %columns, i64 noundef %rows, ptr noundef %call51, ptr noundef %exception) #22, !dbg !2812
  call void @llvm.dbg.value(metadata ptr %call52, metadata !2758, metadata !DIExpression()), !dbg !2766
  %cmp53.not = icmp eq ptr %call52, null, !dbg !2813
  br i1 %cmp53.not, label %if.end57, label %if.then55, !dbg !2815

if.then55:                                        ; preds = %if.end49
  call void @llvm.dbg.value(metadata ptr %call51, metadata !2362, metadata !DIExpression()) #22, !dbg !2816
  %signature.i = getelementptr inbounds %struct._ResizeFilter, ptr %call51, i64 0, i32 9, !dbg !2819
  store i64 -2880220588, ptr %signature.i, align 8, !dbg !2820, !tbaa !1049
  %call.i = tail call ptr @RelinquishMagickMemory(ptr noundef %call51) #22, !dbg !2821
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2362, metadata !DIExpression()) #22, !dbg !2816
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2766
  br label %cleanup, !dbg !2822

if.end57:                                         ; preds = %if.end49
  %call58 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %columns, i64 noundef %rows, i32 noundef 1, ptr noundef %exception) #22, !dbg !2823
  call void @llvm.dbg.value(metadata ptr %call58, metadata !2758, metadata !DIExpression()), !dbg !2766
  %cmp59 = icmp eq ptr %call58, null, !dbg !2824
  br i1 %cmp59, label %if.then61, label %if.end63, !dbg !2826

if.then61:                                        ; preds = %if.end57
  call void @llvm.dbg.value(metadata ptr %call51, metadata !2362, metadata !DIExpression()) #22, !dbg !2827
  %signature.i195 = getelementptr inbounds %struct._ResizeFilter, ptr %call51, i64 0, i32 9, !dbg !2830
  store i64 -2880220588, ptr %signature.i195, align 8, !dbg !2831, !tbaa !1049
  %call.i196 = tail call ptr @RelinquishMagickMemory(ptr noundef %call51) #22, !dbg !2832
  call void @llvm.dbg.value(metadata ptr %call.i196, metadata !2362, metadata !DIExpression()) #22, !dbg !2827
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2766
  br label %cleanup, !dbg !2833

if.end63:                                         ; preds = %if.end57
  %cmp64 = fcmp ogt float %div, %div24, !dbg !2834
  br i1 %cmp64, label %if.end72, label %if.end72.thread, !dbg !2836

if.end72:                                         ; preds = %if.end63
  %5 = load i64, ptr %rows22, align 8, !dbg !2837, !tbaa !2154
  %call68 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %columns, i64 noundef %5, i32 noundef 1, ptr noundef %exception) #22, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %call68, metadata !2757, metadata !DIExpression()), !dbg !2766
  %cmp73 = icmp eq ptr %call68, null, !dbg !2839
  br i1 %cmp73, label %if.then75, label %if.then81, !dbg !2841

if.end72.thread:                                  ; preds = %if.end63
  %6 = load i64, ptr %columns8, align 8, !dbg !2842, !tbaa !2150
  %call71 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %6, i64 noundef %rows, i32 noundef 1, ptr noundef %exception) #22, !dbg !2843
  call void @llvm.dbg.value(metadata ptr %call68, metadata !2757, metadata !DIExpression()), !dbg !2766
  %cmp73202 = icmp eq ptr %call71, null, !dbg !2839
  br i1 %cmp73202, label %if.then75, label %if.else85, !dbg !2841

if.then75:                                        ; preds = %if.end72.thread, %if.end72
  call void @llvm.dbg.value(metadata ptr %call51, metadata !2362, metadata !DIExpression()) #22, !dbg !2844
  %signature.i197 = getelementptr inbounds %struct._ResizeFilter, ptr %call51, i64 0, i32 9, !dbg !2847
  store i64 -2880220588, ptr %signature.i197, align 8, !dbg !2848, !tbaa !1049
  %call.i198 = tail call ptr @RelinquishMagickMemory(ptr noundef %call51) #22, !dbg !2849
  call void @llvm.dbg.value(metadata ptr %call.i198, metadata !2362, metadata !DIExpression()) #22, !dbg !2844
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2766
  %call77 = tail call ptr @DestroyImage(ptr noundef nonnull %call58) #22, !dbg !2850
  br label %cleanup, !dbg !2851

if.then81:                                        ; preds = %if.end72
  call void @llvm.dbg.value(metadata i64 0, metadata !2759, metadata !DIExpression()), !dbg !2766
  store i64 0, ptr %offset, align 8, !dbg !2852, !tbaa !2853
  %columns82 = getelementptr inbounds %struct._Image, ptr %call68, i64 0, i32 7, !dbg !2854
  %7 = load i64, ptr %columns82, align 8, !dbg !2854, !tbaa !2150
  %add = add i64 %7, %rows, !dbg !2857
  call void @llvm.dbg.value(metadata i64 %add, metadata !2762, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %offset, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2766
  %call83 = call fastcc i32 @HorizontalFilter(ptr noundef %call51, ptr noundef nonnull %image, ptr noundef nonnull %call68, float noundef %div, i64 noundef %add, ptr noundef nonnull %offset, ptr noundef %exception), !dbg !2858
  call void @llvm.dbg.value(metadata i32 %call83, metadata !2763, metadata !DIExpression()), !dbg !2766
  %call84 = call fastcc i32 @VerticalFilter(ptr noundef %call51, ptr noundef nonnull %call68, ptr noundef nonnull %call58, float noundef %div24, i64 noundef %add, ptr noundef nonnull %offset, ptr noundef %exception), !dbg !2859
  %and = and i32 %call84, %call83, !dbg !2860
  call void @llvm.dbg.value(metadata i32 %and, metadata !2763, metadata !DIExpression()), !dbg !2766
  br label %if.end91, !dbg !2861

if.else85:                                        ; preds = %if.end72.thread
  call void @llvm.dbg.value(metadata i64 0, metadata !2759, metadata !DIExpression()), !dbg !2766
  store i64 0, ptr %offset, align 8, !dbg !2852, !tbaa !2853
  %rows86 = getelementptr inbounds %struct._Image, ptr %call71, i64 0, i32 8, !dbg !2862
  %8 = load i64, ptr %rows86, align 8, !dbg !2862, !tbaa !2154
  %add87 = add i64 %8, %columns, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %add87, metadata !2762, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %offset, metadata !2759, metadata !DIExpression(DW_OP_deref)), !dbg !2766
  %call88 = call fastcc i32 @VerticalFilter(ptr noundef %call51, ptr noundef nonnull %image, ptr noundef nonnull %call71, float noundef %div24, i64 noundef %add87, ptr noundef nonnull %offset, ptr noundef %exception), !dbg !2865
  call void @llvm.dbg.value(metadata i32 %call88, metadata !2763, metadata !DIExpression()), !dbg !2766
  %call89 = call fastcc i32 @HorizontalFilter(ptr noundef %call51, ptr noundef nonnull %call71, ptr noundef nonnull %call58, float noundef %div, i64 noundef %add87, ptr noundef nonnull %offset, ptr noundef %exception), !dbg !2866
  %and90 = and i32 %call89, %call88, !dbg !2867
  call void @llvm.dbg.value(metadata i32 %and90, metadata !2763, metadata !DIExpression()), !dbg !2766
  br label %if.end91

if.end91:                                         ; preds = %if.else85, %if.then81
  %filter_image.0204 = phi ptr [ %call68, %if.then81 ], [ %call71, %if.else85 ]
  %status.0 = phi i32 [ %and, %if.then81 ], [ %and90, %if.else85 ], !dbg !2868
  call void @llvm.dbg.value(metadata i32 %status.0, metadata !2763, metadata !DIExpression()), !dbg !2766
  %call92 = tail call ptr @DestroyImage(ptr noundef nonnull %filter_image.0204) #22, !dbg !2869
  call void @llvm.dbg.value(metadata ptr %call92, metadata !2757, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %call51, metadata !2362, metadata !DIExpression()) #22, !dbg !2870
  %signature.i199 = getelementptr inbounds %struct._ResizeFilter, ptr %call51, i64 0, i32 9, !dbg !2872
  store i64 -2880220588, ptr %signature.i199, align 8, !dbg !2873, !tbaa !1049
  %call.i200 = tail call ptr @RelinquishMagickMemory(ptr noundef %call51) #22, !dbg !2874
  call void @llvm.dbg.value(metadata ptr %call.i200, metadata !2362, metadata !DIExpression()) #22, !dbg !2870
  call void @llvm.dbg.value(metadata ptr undef, metadata !2765, metadata !DIExpression()), !dbg !2766
  %cmp94 = icmp eq i32 %status.0, 0, !dbg !2875
  br i1 %cmp94, label %if.then96, label %if.end98, !dbg !2877

if.then96:                                        ; preds = %if.end91
  %call97 = tail call ptr @DestroyImage(ptr noundef nonnull %call58) #22, !dbg !2878
  call void @llvm.dbg.value(metadata ptr %call97, metadata !2758, metadata !DIExpression()), !dbg !2766
  br label %cleanup, !dbg !2880

if.end98:                                         ; preds = %if.end91
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !2881
  %9 = load i32, ptr %type, align 8, !dbg !2881, !tbaa !2882
  %type99 = getelementptr inbounds %struct._Image, ptr %call58, i64 0, i32 77, !dbg !2883
  store i32 %9, ptr %type99, align 8, !dbg !2884, !tbaa !2882
  br label %cleanup, !dbg !2885

cleanup:                                          ; preds = %if.end98, %if.then96, %if.then75, %if.then61, %if.then55, %if.then16, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call17, %if.then16 ], [ %call52, %if.then55 ], [ null, %if.then61 ], [ %call77, %if.then75 ], [ null, %if.then96 ], [ %call58, %if.end98 ], !dbg !2766
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %offset) #22, !dbg !2886
  ret ptr %retval.0, !dbg !2886
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ResampleImage(ptr noundef %image, double noundef %x_resolution, double noundef %y_resolution, i32 noundef %filter, double noundef %blur, ptr noundef %exception) local_unnamed_addr #0 !dbg !2887 {
entry:
  call void @llvm.dbg.value(metadata ptr %image, metadata !2891, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata double %x_resolution, metadata !2892, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata double %y_resolution, metadata !2893, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i32 %filter, metadata !2894, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata double %blur, metadata !2895, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2896, metadata !DIExpression()), !dbg !2900
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !2901
  %0 = load i32, ptr %debug, align 8, !dbg !2901, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !2903
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2904

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !2905
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2328, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !2906
  br label %if.end, !dbg !2907

if.end:                                           ; preds = %if.then, %entry
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !2908
  %1 = load i64, ptr %columns, align 8, !dbg !2908, !tbaa !2150
  %conv = uitofp i64 %1 to double, !dbg !2909
  %mul = fmul double %conv, %x_resolution, !dbg !2910
  %x_resolution1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 24, !dbg !2911
  %2 = load double, ptr %x_resolution1, align 8, !dbg !2911, !tbaa !2912
  %cmp2 = fcmp oeq double %2, 0.000000e+00, !dbg !2913
  br i1 %cmp2, label %cond.end, label %cond.false, !dbg !2914

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2914

cond.end:                                         ; preds = %if.end, %cond.false
  %cond = phi double [ %2, %cond.false ], [ 7.200000e+01, %if.end ], !dbg !2914
  %div = fdiv double %mul, %cond, !dbg !2915
  %add = fadd double %div, 5.000000e-01, !dbg !2916
  %conv5 = fptoui double %add to i64, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %conv5, metadata !2899, metadata !DIExpression()), !dbg !2900
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !2918
  %3 = load i64, ptr %rows, align 8, !dbg !2918, !tbaa !2154
  %conv6 = uitofp i64 %3 to double, !dbg !2919
  %mul7 = fmul double %conv6, %y_resolution, !dbg !2920
  %y_resolution8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 25, !dbg !2921
  %4 = load double, ptr %y_resolution8, align 8, !dbg !2921, !tbaa !2922
  %cmp9 = fcmp oeq double %4, 0.000000e+00, !dbg !2923
  br i1 %cmp9, label %cond.end14, label %cond.false12, !dbg !2924

cond.false12:                                     ; preds = %cond.end
  br label %cond.end14, !dbg !2924

cond.end14:                                       ; preds = %cond.end, %cond.false12
  %cond15 = phi double [ %4, %cond.false12 ], [ 7.200000e+01, %cond.end ], !dbg !2924
  %div16 = fdiv double %mul7, %cond15, !dbg !2925
  %add17 = fadd double %div16, 5.000000e-01, !dbg !2926
  %conv18 = fptoui double %add17 to i64, !dbg !2927
  call void @llvm.dbg.value(metadata i64 %conv18, metadata !2898, metadata !DIExpression()), !dbg !2900
  %call19 = tail call ptr @ResizeImage(ptr noundef nonnull %image, i64 noundef %conv5, i64 noundef %conv18, i32 noundef %filter, double noundef %blur, ptr noundef %exception), !dbg !2928
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2897, metadata !DIExpression()), !dbg !2900
  %cmp20.not = icmp eq ptr %call19, null, !dbg !2929
  br i1 %cmp20.not, label %if.end25, label %if.then22, !dbg !2931

if.then22:                                        ; preds = %cond.end14
  %x_resolution23 = getelementptr inbounds %struct._Image, ptr %call19, i64 0, i32 24, !dbg !2932
  store double %x_resolution, ptr %x_resolution23, align 8, !dbg !2934, !tbaa !2912
  %y_resolution24 = getelementptr inbounds %struct._Image, ptr %call19, i64 0, i32 25, !dbg !2935
  store double %y_resolution, ptr %y_resolution24, align 8, !dbg !2936, !tbaa !2922
  br label %if.end25, !dbg !2937

if.end25:                                         ; preds = %if.then22, %cond.end14
  ret ptr %call19, !dbg !2938
}

declare !dbg !2939 ptr @AccelerateResizeImage(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @HorizontalFilter(ptr noundef %resize_filter, ptr noundef %image, ptr noundef %resize_image, float noundef %x_factor, i64 noundef %span, ptr nocapture noundef %offset, ptr noundef %exception) unnamed_addr #0 !dbg !2943 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %zero = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !2948, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %image, metadata !2949, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %resize_image, metadata !2950, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata float %x_factor, metadata !2951, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %span, metadata !2952, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %offset, metadata !2953, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %exception, metadata !2954, metadata !DIExpression()), !dbg !2997
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %zero) #22, !dbg !2998
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !2961, metadata !DIExpression()), !dbg !2999
  %conv = fpext float %x_factor to double, !dbg !3000
  %div = fdiv double 1.000000e+00, %conv, !dbg !3001
  %add = fadd double %div, 1.000000e-15, !dbg !3002
  call void @llvm.dbg.value(metadata double %add, metadata !3003, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3008, metadata !DIExpression()), !dbg !3009
  %cmp.i = fcmp ogt double %add, 1.000000e+00, !dbg !3011
  %x.y.i = select i1 %cmp.i, double %add, double 1.000000e+00, !dbg !3009
  %conv1 = fptrunc double %x.y.i to float, !dbg !3013
  call void @llvm.dbg.value(metadata float %conv1, metadata !2962, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1421, metadata !DIExpression()), !dbg !3014
  %support.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 2, !dbg !3016
  %0 = load float, ptr %support.i, align 8, !dbg !3016, !tbaa !1026
  %blur.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 5, !dbg !3017
  %1 = load float, ptr %blur.i, align 4, !dbg !3017, !tbaa !983
  %mul.i = fmul float %0, %1, !dbg !3018
  %mul = fmul float %mul.i, %conv1, !dbg !3019
  call void @llvm.dbg.value(metadata float %mul, metadata !2963, metadata !DIExpression()), !dbg !2997
  %cmp = fcmp ogt float %mul, 5.000000e-01, !dbg !3020
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !3021

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %image, align 8, !dbg !3022, !tbaa !2287
  br label %cond.end, !dbg !3021

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %2, %cond.false ], [ 1, %entry ], !dbg !3021
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2957, metadata !DIExpression()), !dbg !2997
  %call6 = tail call i32 @SetImageStorageClass(ptr noundef %resize_image, i32 noundef %cond) #22, !dbg !3023
  %cmp7 = icmp eq i32 %call6, 0, !dbg !3025
  br i1 %cmp7, label %if.then, label %if.end, !dbg !3026

if.then:                                          ; preds = %cond.end
  %exception9 = getelementptr inbounds %struct._Image, ptr %resize_image, i64 0, i32 58, !dbg !3027
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception9) #22, !dbg !3029
  br label %cleanup464, !dbg !3030

if.end:                                           ; preds = %cond.end
  %cmp11 = fcmp olt float %mul, 5.000000e-01, !dbg !3031
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !3033

if.then13:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata float 5.000000e-01, metadata !2963, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !2962, metadata !DIExpression()), !dbg !2997
  br label %if.end14, !dbg !3034

if.end14:                                         ; preds = %if.then13, %if.end
  %support.0 = phi float [ 5.000000e-01, %if.then13 ], [ %mul, %if.end ], !dbg !2997
  %scale.0 = phi float [ 1.000000e+00, %if.then13 ], [ %conv1, %if.end ], !dbg !2997
  call void @llvm.dbg.value(metadata float %scale.0, metadata !2962, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata float %support.0, metadata !2963, metadata !DIExpression()), !dbg !2997
  %conv15 = fpext float %support.0 to double, !dbg !3036
  %3 = tail call double @llvm.fmuladd.f64(double %conv15, double 2.000000e+00, double 3.000000e+00), !dbg !3037
  %conv17 = fptoui double %3 to i64, !dbg !3038
  %call18 = tail call fastcc ptr @AcquireContributionThreadSet(i64 noundef %conv17), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %call18, metadata !2958, metadata !DIExpression()), !dbg !2997
  %cmp19 = icmp eq ptr %call18, null, !dbg !3040
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !3042

if.then21:                                        ; preds = %if.end14
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3043
  %call22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2504, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #22, !dbg !3045
  br label %cleanup464, !dbg !3046

if.end23:                                         ; preds = %if.end14
  call void @llvm.dbg.value(metadata i32 1, metadata !2960, metadata !DIExpression()), !dbg !2997
  %conv24 = fpext float %scale.0 to double, !dbg !3047
  call void @llvm.dbg.value(metadata double %conv24, metadata !1095, metadata !DIExpression()), !dbg !3048
  %cmp.i683 = fcmp olt float %scale.0, 0.000000e+00, !dbg !3050
  %cond.i = select i1 %cmp.i683, double -1.000000e+00, double 1.000000e+00, !dbg !3051
  call void @llvm.dbg.value(metadata double %cond.i, metadata !1101, metadata !DIExpression()), !dbg !3048
  %mul.i684 = fmul double %cond.i, %conv24, !dbg !3052
  %cmp1.i = fcmp ult double %mul.i684, 1.000000e-15, !dbg !3053
  br i1 %cmp1.i, label %if.end.i, label %if.then.i, !dbg !3054

if.then.i:                                        ; preds = %if.end23
  %div.i = fdiv double 1.000000e+00, %conv24, !dbg !3055
  br label %PerceptibleReciprocal.exit, !dbg !3056

if.end.i:                                         ; preds = %if.end23
  %div2.i = fdiv double %cond.i, 1.000000e-15, !dbg !3057
  br label %PerceptibleReciprocal.exit, !dbg !3058

PerceptibleReciprocal.exit:                       ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi double [ %div.i, %if.then.i ], [ %div2.i, %if.end.i ], !dbg !3048
  call void @llvm.dbg.value(metadata float undef, metadata !2962, metadata !DIExpression()), !dbg !2997
  %call27 = call ptr @ResetMagickMemory(ptr noundef nonnull %zero, i32 noundef 0, i64 noundef 56) #22, !dbg !3059
  %call28 = call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #22, !dbg !3060
  call void @llvm.dbg.value(metadata ptr %call28, metadata !2955, metadata !DIExpression()), !dbg !2997
  %call29 = call ptr @AcquireAuthenticCacheView(ptr noundef %resize_image, ptr noundef %exception) #22, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %call29, metadata !2956, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 0, metadata !2964, metadata !DIExpression()), !dbg !2997
  %columns = getelementptr inbounds %struct._Image, ptr %resize_image, i64 0, i32 7
  call void @llvm.dbg.value(metadata i32 1, metadata !2960, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 0, metadata !2964, metadata !DIExpression()), !dbg !2997
  %4 = load i64, ptr %columns, align 8, !dbg !3062, !tbaa !2150
  %cmp30852 = icmp sgt i64 %4, 0, !dbg !3063
  br i1 %cmp30852, label %for.body.lr.ph, label %for.end460, !dbg !3064

for.body.lr.ph:                                   ; preds = %PerceptibleReciprocal.exit
  %conv26 = fptrunc double %retval.0.i to float, !dbg !3065
  call void @llvm.dbg.value(metadata float %conv26, metadata !2962, metadata !DIExpression()), !dbg !2997
  %columns51 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %conv62 = fpext float %conv26 to double
  %window_support.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 3
  %window.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 1
  %scale7.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 4
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %rows106 = getelementptr inbounds %struct._Image, ptr %resize_image, i64 0, i32 8
  %pixel121.sroa.3.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 32
  %pixel121.sroa.9.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 36
  %pixel121.sroa.15.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 40
  %pixel121.sroa.21.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 44
  %pixel121.sroa.27.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 48
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %colorspace316 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colorspace320 = getelementptr inbounds %struct._Image, ptr %resize_image, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !3064

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0854 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %x.0853 = phi i64 [ 0, %for.body.lr.ph ], [ %inc459, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0854, metadata !2960, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %x.0853, metadata !2964, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i32 0, metadata !2965, metadata !DIExpression()), !dbg !3066
  %cmp33 = icmp eq i32 %status.0854, 0, !dbg !3067
  br i1 %cmp33, label %cleanup, label %if.end36, !dbg !3069

if.end36:                                         ; preds = %for.body
  %conv37 = sitofp i64 %x.0853 to double, !dbg !3070
  %add38 = fadd double %conv37, 5.000000e-01, !dbg !3071
  %conv39 = fptrunc double %add38 to float, !dbg !3072
  %div40 = fdiv float %conv39, %x_factor, !dbg !3073
  %conv41 = fpext float %div40 to double, !dbg !3072
  %add42 = fadd double %conv41, 1.000000e-15, !dbg !3074
  %conv43 = fptrunc double %add42 to float, !dbg !3072
  call void @llvm.dbg.value(metadata float %conv43, metadata !2969, metadata !DIExpression()), !dbg !3066
  %sub = fsub float %conv43, %support.0, !dbg !3075
  %conv44 = fpext float %sub to double, !dbg !3076
  %add45 = fadd double %conv44, 5.000000e-01, !dbg !3077
  call void @llvm.dbg.value(metadata double %add45, metadata !3003, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3008, metadata !DIExpression()), !dbg !3078
  %cmp.i685 = fcmp ogt double %add45, 0.000000e+00, !dbg !3080
  %x.y.i686 = select i1 %cmp.i685, double %add45, double 0.000000e+00, !dbg !3078
  %conv47 = fptosi double %x.y.i686 to i64, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %conv47, metadata !2979, metadata !DIExpression()), !dbg !3066
  %add48 = fadd float %support.0, %conv43, !dbg !3082
  %conv49 = fpext float %add48 to double, !dbg !3083
  %add50 = fadd double %conv49, 5.000000e-01, !dbg !3084
  %5 = load i64, ptr %columns51, align 8, !dbg !3085, !tbaa !2150
  %conv52 = uitofp i64 %5 to double, !dbg !3086
  call void @llvm.dbg.value(metadata double %add50, metadata !3087, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata double %conv52, metadata !3090, metadata !DIExpression()), !dbg !3091
  %cmp.i687 = fcmp olt double %add50, %conv52, !dbg !3093
  %x.y.i688 = select i1 %cmp.i687, double %add50, double %conv52, !dbg !3091
  %conv54 = fptosi double %x.y.i688 to i64, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %conv54, metadata !2980, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2970, metadata !DIExpression()), !dbg !3066
  %6 = load ptr, ptr %call18, align 8, !dbg !3096, !tbaa !1434
  call void @llvm.dbg.value(metadata ptr %6, metadata !2973, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 0, metadata !2978, metadata !DIExpression()), !dbg !3066
  %sub56 = sub i64 %conv54, %conv47
  call void @llvm.dbg.value(metadata i64 0, metadata !2978, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !2970, metadata !DIExpression()), !dbg !3066
  %cmp57805 = icmp sgt i64 %sub56, 0, !dbg !3097
  br i1 %cmp57805, label %for.body59, label %if.end95, !dbg !3100

for.body59:                                       ; preds = %if.end36, %GetResizeFilterWeight.exit
  %n.0807 = phi i64 [ %inc, %GetResizeFilterWeight.exit ], [ 0, %if.end36 ]
  %density.0806 = phi float [ %add74, %GetResizeFilterWeight.exit ], [ 0.000000e+00, %if.end36 ]
  call void @llvm.dbg.value(metadata i64 %n.0807, metadata !2978, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata float %density.0806, metadata !2970, metadata !DIExpression()), !dbg !3066
  %add60 = add nsw i64 %n.0807, %conv47, !dbg !3101
  %arrayidx61 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %n.0807, !dbg !3103
  %pixel = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %n.0807, i32 1, !dbg !3104
  store i64 %add60, ptr %pixel, align 8, !dbg !3105, !tbaa !3106
  %conv64 = sitofp i64 %add60 to float, !dbg !3108
  %sub65 = fsub float %conv64, %conv43, !dbg !3109
  %conv66 = fpext float %sub65 to double, !dbg !3108
  %add67 = fadd double %conv66, 5.000000e-01, !dbg !3110
  %mul68 = fmul double %add67, %conv62, !dbg !3111
  %conv69 = fptrunc double %mul68 to float, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1501, metadata !DIExpression()) #22, !dbg !3113
  call void @llvm.dbg.value(metadata float %conv69, metadata !1506, metadata !DIExpression()) #22, !dbg !3113
  %7 = call float @llvm.fabs.f32(float %conv69) #22, !dbg !3115
  %8 = load float, ptr %blur.i, align 4, !dbg !3116, !tbaa !983
  %conv2.i = fdiv float %7, %8, !dbg !3115
  call void @llvm.dbg.value(metadata float %conv2.i, metadata !1509, metadata !DIExpression()) #22, !dbg !3113
  %9 = load float, ptr %window_support.i, align 4, !dbg !3117, !tbaa !1288
  %conv3.i = fpext float %9 to double, !dbg !3118
  %cmp.i690 = fcmp olt double %conv3.i, 1.000000e-15, !dbg !3119
  br i1 %cmp.i690, label %GetResizeFilterWeight.exit, label %lor.lhs.false.i, !dbg !3120

lor.lhs.false.i:                                  ; preds = %for.body59
  %10 = load ptr, ptr %window.i, align 8, !dbg !3121, !tbaa !1036
  %cmp5.i = icmp eq ptr %10, @Box, !dbg !3122
  br i1 %cmp5.i, label %GetResizeFilterWeight.exit, label %if.else.i, !dbg !3123

if.else.i:                                        ; preds = %lor.lhs.false.i
  %11 = load float, ptr %scale7.i, align 8, !dbg !3124, !tbaa !1046
  call void @llvm.dbg.value(metadata float %11, metadata !1507, metadata !DIExpression()) #22, !dbg !3113
  %mul.i691 = fmul float %conv2.i, %11, !dbg !3125
  %call.i = call float %10(float noundef %mul.i691, ptr noundef nonnull %resize_filter) #22, !dbg !3126
  call void @llvm.dbg.value(metadata float %call.i, metadata !1507, metadata !DIExpression()) #22, !dbg !3113
  br label %GetResizeFilterWeight.exit

GetResizeFilterWeight.exit:                       ; preds = %for.body59, %lor.lhs.false.i, %if.else.i
  %scale.0.i = phi float [ %call.i, %if.else.i ], [ 1.000000e+00, %lor.lhs.false.i ], [ 1.000000e+00, %for.body59 ], !dbg !3127
  call void @llvm.dbg.value(metadata float %scale.0.i, metadata !1507, metadata !DIExpression()) #22, !dbg !3113
  %12 = load ptr, ptr %resize_filter, align 8, !dbg !3128, !tbaa !1020
  %call9.i = call float %12(float noundef %conv2.i, ptr noundef nonnull %resize_filter) #22, !dbg !3129
  %mul10.i = fmul float %scale.0.i, %call9.i, !dbg !3130
  call void @llvm.dbg.value(metadata float %mul10.i, metadata !1508, metadata !DIExpression()) #22, !dbg !3113
  store float %mul10.i, ptr %arrayidx61, align 8, !dbg !3131, !tbaa !3132
  %add74 = fadd float %density.0806, %mul10.i, !dbg !3133
  call void @llvm.dbg.value(metadata float %add74, metadata !2970, metadata !DIExpression()), !dbg !3066
  %inc = add nuw nsw i64 %n.0807, 1, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2978, metadata !DIExpression()), !dbg !3066
  %exitcond.not = icmp eq i64 %inc, %sub56, !dbg !3097
  br i1 %exitcond.not, label %for.end, label %for.body59, !dbg !3100, !llvm.loop !3135

for.end:                                          ; preds = %GetResizeFilterWeight.exit
  %conv75 = fpext float %add74 to double, !dbg !3137
  %cmp76 = fcmp une float %add74, 0.000000e+00, !dbg !3138
  %cmp79 = fcmp une float %add74, 1.000000e+00
  %or.cond681 = and i1 %cmp76, %cmp79, !dbg !3139
  br i1 %or.cond681, label %if.then81, label %if.end95, !dbg !3139

if.then81:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata double %conv75, metadata !1095, metadata !DIExpression()), !dbg !3140
  %cmp.i693 = fcmp olt float %add74, 0.000000e+00, !dbg !3142
  %cond.i694 = select i1 %cmp.i693, double -1.000000e+00, double 1.000000e+00, !dbg !3143
  call void @llvm.dbg.value(metadata double %cond.i694, metadata !1101, metadata !DIExpression()), !dbg !3140
  %mul.i695 = fmul double %cond.i694, %conv75, !dbg !3144
  %cmp1.i696 = fcmp ult double %mul.i695, 1.000000e-15, !dbg !3145
  br i1 %cmp1.i696, label %if.end.i700, label %if.then.i698, !dbg !3146

if.then.i698:                                     ; preds = %if.then81
  %div.i697 = fdiv double 1.000000e+00, %conv75, !dbg !3147
  br label %PerceptibleReciprocal.exit702, !dbg !3148

if.end.i700:                                      ; preds = %if.then81
  %div2.i699 = fdiv double %cond.i694, 1.000000e-15, !dbg !3149
  br label %PerceptibleReciprocal.exit702, !dbg !3150

PerceptibleReciprocal.exit702:                    ; preds = %if.then.i698, %if.end.i700
  %retval.0.i701 = phi double [ %div.i697, %if.then.i698 ], [ %div2.i699, %if.end.i700 ], !dbg !3140
  %conv84 = fptrunc double %retval.0.i701 to float, !dbg !3151
  call void @llvm.dbg.value(metadata float %conv84, metadata !2970, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 0, metadata !2981, metadata !DIExpression()), !dbg !3152
  br label %for.body88, !dbg !3153

for.body88:                                       ; preds = %PerceptibleReciprocal.exit702, %for.body88
  %i.0810 = phi i64 [ %inc93, %for.body88 ], [ 0, %PerceptibleReciprocal.exit702 ]
  call void @llvm.dbg.value(metadata i64 %i.0810, metadata !2981, metadata !DIExpression()), !dbg !3152
  %arrayidx89 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i.0810, !dbg !3155
  %13 = load float, ptr %arrayidx89, align 8, !dbg !3157, !tbaa !3132
  %mul91 = fmul float %13, %conv84, !dbg !3157
  store float %mul91, ptr %arrayidx89, align 8, !dbg !3157, !tbaa !3132
  %inc93 = add nuw nsw i64 %i.0810, 1, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %inc93, metadata !2981, metadata !DIExpression()), !dbg !3152
  %exitcond867.not = icmp eq i64 %inc93, %sub56, !dbg !3159
  br i1 %exitcond867.not, label %if.end95, label %for.body88, !dbg !3153, !llvm.loop !3160

if.end95:                                         ; preds = %for.body88, %if.end36, %for.end
  %n.0.lcssa883 = phi i64 [ %sub56, %for.end ], [ 0, %if.end36 ], [ %sub56, %for.body88 ]
  %pixel97 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 0, i32 1, !dbg !3162
  %14 = load i64, ptr %pixel97, align 8, !dbg !3162, !tbaa !3106
  %sub98 = add nsw i64 %n.0.lcssa883, -1, !dbg !3163
  %pixel100 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %sub98, i32 1, !dbg !3164
  %15 = load i64, ptr %pixel100, align 8, !dbg !3164, !tbaa !3106
  %sub103 = sub i64 1, %14, !dbg !3165
  %add104 = add i64 %sub103, %15, !dbg !3166
  %16 = load i64, ptr %rows, align 8, !dbg !3167, !tbaa !2154
  %call105 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call28, i64 noundef %14, i64 noundef 0, i64 noundef %add104, i64 noundef %16, ptr noundef %exception) #26, !dbg !3168
  call void @llvm.dbg.value(metadata ptr %call105, metadata !2972, metadata !DIExpression()), !dbg !3066
  %17 = load i64, ptr %rows106, align 8, !dbg !3169, !tbaa !2154
  %call107 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call29, i64 noundef %x.0853, i64 noundef 0, i64 noundef 1, i64 noundef %17, ptr noundef %exception) #26, !dbg !3170
  call void @llvm.dbg.value(metadata ptr %call107, metadata !2976, metadata !DIExpression()), !dbg !3066
  %cmp108 = icmp eq ptr %call105, null, !dbg !3171
  %cmp110 = icmp eq ptr %call107, null
  %or.cond = select i1 %cmp108, i1 true, i1 %cmp110, !dbg !3173
  br i1 %or.cond, label %cleanup, label %if.end113, !dbg !3173

if.end113:                                        ; preds = %if.end95
  %call114 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call28) #22, !dbg !3174
  call void @llvm.dbg.value(metadata ptr %call114, metadata !2971, metadata !DIExpression()), !dbg !3066
  %call115 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call29) #22, !dbg !3175
  call void @llvm.dbg.value(metadata ptr %call115, metadata !2975, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 0, metadata !2977, metadata !DIExpression()), !dbg !3066
  %18 = load i64, ptr %rows106, align 8, !tbaa !2154
  call void @llvm.dbg.value(metadata ptr %call107, metadata !2976, metadata !DIExpression()), !dbg !3066
  %cmp118842 = icmp sgt i64 %18, 0, !dbg !3176
  br i1 %cmp118842, label %for.body120.lr.ph, label %for.end431, !dbg !3177

for.body120.lr.ph:                                ; preds = %if.end113
  %19 = load i32, ptr %matte, align 8, !tbaa !2806
  %cmp123 = icmp eq i32 %19, 0
  %cmp231811.not = icmp eq i64 %n.0.lcssa883, 0
  %cmp354 = icmp eq ptr %call114, null
  %cmp369.not = icmp eq ptr %call115, null
  %20 = load i32, ptr %resize_image, align 8, !tbaa !2287
  %cmp382 = icmp eq i32 %20, 2
  %conv389 = fpext float %conv43 to double
  %conv390 = sitofp i64 %conv47 to double
  %cmp.i789 = fcmp ogt double %conv389, %conv390
  %x.y.i790 = select i1 %cmp.i789, double %conv389, double %conv390
  %conv392 = sitofp i64 %conv54 to double
  %sub393 = fadd double %conv392, -1.000000e+00
  %cmp.i791 = fcmp olt double %x.y.i790, %sub393
  %x.y.i792 = select i1 %cmp.i791, double %x.y.i790, double %sub393
  %add395 = fadd double %x.y.i792, 5.000000e-01
  %conv396 = fptosi double %add395 to i64
  %sub405 = sub nsw i64 %conv396, %conv47
  %pixel407 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %sub405, i32 1
  %exitcond871.not920 = icmp eq i64 %n.0.lcssa883, 1
  br label %for.body120, !dbg !3177

for.body120:                                      ; preds = %for.body120.lr.ph, %if.end428
  %y.0845 = phi i64 [ 0, %for.body120.lr.ph ], [ %inc430, %if.end428 ]
  %q.0843 = phi ptr [ %call107, %for.body120.lr.ph ], [ %incdec.ptr, %if.end428 ]
  call void @llvm.dbg.value(metadata i64 %y.0845, metadata !2977, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %q.0843, metadata !2976, metadata !DIExpression()), !dbg !3066
  %pixel121.sroa.3.0.copyload = load float, ptr %pixel121.sroa.3.0.zero.sroa_idx, align 8, !dbg !3178, !tbaa.struct !3179
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3180
  %pixel121.sroa.9.0.copyload = load float, ptr %pixel121.sroa.9.0.zero.sroa_idx, align 4, !dbg !3178, !tbaa.struct !3181
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3180
  %pixel121.sroa.15.0.copyload = load float, ptr %pixel121.sroa.15.0.zero.sroa_idx, align 8, !dbg !3178, !tbaa.struct !3182
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3180
  %pixel121.sroa.21.0.copyload = load float, ptr %pixel121.sroa.21.0.zero.sroa_idx, align 4, !dbg !3178, !tbaa.struct !3183
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3180
  %pixel121.sroa.27.0.copyload = load float, ptr %pixel121.sroa.27.0.zero.sroa_idx, align 8, !dbg !3178, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata i32 undef, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !3180
  br i1 %cmp123, label %for.cond126.preheader, label %for.cond230.preheader, !dbg !3185

for.cond230.preheader:                            ; preds = %for.body120
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2991, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 0, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3180
  br i1 %cmp231811.not, label %if.end293, label %for.body233.lr.ph, !dbg !3187

for.body233.lr.ph:                                ; preds = %for.cond230.preheader
  %21 = load i64, ptr %pixel100, align 8, !tbaa !3106
  %22 = load i64, ptr %pixel97, align 8, !tbaa !3106
  %sub239 = add i64 %21, 1
  %add240 = sub i64 %sub239, %22
  %mul241 = mul nsw i64 %add240, %y.0845
  br label %for.body233, !dbg !3187

for.cond126.preheader:                            ; preds = %for.body120
  call void @llvm.dbg.value(metadata i64 0, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3180
  br i1 %cmp231811.not, label %for.end167, label %for.body129.lr.ph, !dbg !3189

for.body129.lr.ph:                                ; preds = %for.cond126.preheader
  %23 = load i64, ptr %pixel100, align 8, !tbaa !3106
  %24 = load i64, ptr %pixel97, align 8, !tbaa !3106
  %sub135 = add i64 %23, 1
  %add136 = sub i64 %sub135, %24
  %mul137 = mul nsw i64 %add136, %y.0845
  br label %for.body129, !dbg !3189

for.body129:                                      ; preds = %for.body129.for.body129_crit_edge, %for.body129.lr.ph
  %25 = phi i64 [ %24, %for.body129.lr.ph ], [ %.pre875, %for.body129.for.body129_crit_edge ], !dbg !3192
  %i122.0832 = phi i64 [ 0, %for.body129.lr.ph ], [ %inc166, %for.body129.for.body129_crit_edge ]
  %pixel121.sroa.3.0831 = phi float [ %pixel121.sroa.3.0.copyload, %for.body129.lr.ph ], [ %28, %for.body129.for.body129_crit_edge ]
  %pixel121.sroa.9.0830 = phi float [ %pixel121.sroa.9.0.copyload, %for.body129.lr.ph ], [ %30, %for.body129.for.body129_crit_edge ]
  %pixel121.sroa.15.0829 = phi float [ %pixel121.sroa.15.0.copyload, %for.body129.lr.ph ], [ %32, %for.body129.for.body129_crit_edge ]
  %pixel121.sroa.21.0828 = phi float [ %pixel121.sroa.21.0.copyload, %for.body129.lr.ph ], [ %34, %for.body129.for.body129_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %i122.0832, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0831, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0830, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0829, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0828, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3180
  %arrayidx138 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i122.0832, !dbg !3195
  %sub142 = sub nsw i64 %25, %24, !dbg !3196
  %add143 = add nsw i64 %mul137, %sub142, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %add143, metadata !2990, metadata !DIExpression()), !dbg !3180
  %26 = load float, ptr %arrayidx138, align 8, !dbg !3198, !tbaa !3132
  call void @llvm.dbg.value(metadata float %26, metadata !2988, metadata !DIExpression()), !dbg !3180
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add143, !dbg !3199
  %red = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add143, i32 2, !dbg !3199
  %27 = load i16, ptr %red, align 2, !dbg !3199, !tbaa !2244
  %conv147 = uitofp i16 %27 to float, !dbg !3199
  %28 = call float @llvm.fmuladd.f32(float %26, float %conv147, float %pixel121.sroa.3.0831), !dbg !3200
  call void @llvm.dbg.value(metadata float %28, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3180
  %green = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add143, i32 1, !dbg !3201
  %29 = load i16, ptr %green, align 2, !dbg !3201, !tbaa !2256
  %conv152 = uitofp i16 %29 to float, !dbg !3201
  %30 = call float @llvm.fmuladd.f32(float %26, float %conv152, float %pixel121.sroa.9.0830), !dbg !3202
  call void @llvm.dbg.value(metadata float %30, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3180
  %31 = load i16, ptr %add.ptr, align 2, !dbg !3203, !tbaa !2268
  %conv157 = uitofp i16 %31 to float, !dbg !3203
  %32 = call float @llvm.fmuladd.f32(float %26, float %conv157, float %pixel121.sroa.15.0829), !dbg !3204
  call void @llvm.dbg.value(metadata float %32, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3180
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add143, i32 3, !dbg !3205
  %33 = load i16, ptr %opacity, align 2, !dbg !3205, !tbaa !2280
  %conv162 = uitofp i16 %33 to float, !dbg !3205
  %34 = call float @llvm.fmuladd.f32(float %26, float %conv162, float %pixel121.sroa.21.0828), !dbg !3206
  call void @llvm.dbg.value(metadata float %34, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3180
  %inc166 = add nuw nsw i64 %i122.0832, 1, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %inc166, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %28, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %30, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %32, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %34, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3180
  %exitcond870.not = icmp eq i64 %inc166, %n.0.lcssa883, !dbg !3208
  br i1 %exitcond870.not, label %for.end167, label %for.body129.for.body129_crit_edge, !dbg !3189, !llvm.loop !3209

for.body129.for.body129_crit_edge:                ; preds = %for.body129
  %pixel139.phi.trans.insert = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc166, i32 1
  %.pre875 = load i64, ptr %pixel139.phi.trans.insert, align 8, !dbg !3192, !tbaa !3106
  br label %for.body129, !dbg !3189

for.end167:                                       ; preds = %for.body129, %for.cond126.preheader
  %pixel121.sroa.21.0.lcssa = phi float [ %pixel121.sroa.21.0.copyload, %for.cond126.preheader ], [ %34, %for.body129 ], !dbg !3180
  %pixel121.sroa.15.0.lcssa = phi float [ %pixel121.sroa.15.0.copyload, %for.cond126.preheader ], [ %32, %for.body129 ], !dbg !3180
  %pixel121.sroa.9.0.lcssa = phi float [ %pixel121.sroa.9.0.copyload, %for.cond126.preheader ], [ %30, %for.body129 ], !dbg !3180
  %pixel121.sroa.3.0.lcssa = phi float [ %pixel121.sroa.3.0.copyload, %for.cond126.preheader ], [ %28, %for.body129 ], !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3211
  %cmp.i703 = fcmp ugt float %pixel121.sroa.3.0.lcssa, 0.000000e+00, !dbg !3213
  br i1 %cmp.i703, label %if.end.i705, label %ClampToQuantum.exit, !dbg !3214

if.end.i705:                                      ; preds = %for.end167
  %cmp1.i704 = fcmp ult float %pixel121.sroa.3.0.lcssa, 6.553500e+04, !dbg !3215
  br i1 %cmp1.i704, label %if.end3.i, label %ClampToQuantum.exit, !dbg !3216

if.end3.i:                                        ; preds = %if.end.i705
  %add.i = fadd float %pixel121.sroa.3.0.lcssa, 5.000000e-01, !dbg !3217
  %conv.i = fptoui float %add.i to i16, !dbg !3218
  br label %ClampToQuantum.exit, !dbg !3219

ClampToQuantum.exit:                              ; preds = %for.end167, %if.end.i705, %if.end3.i
  %retval.0.i706 = phi i16 [ %conv.i, %if.end3.i ], [ 0, %for.end167 ], [ -1, %if.end.i705 ], !dbg !3211
  %red170 = getelementptr inbounds %struct._PixelPacket, ptr %q.0843, i64 0, i32 2, !dbg !3220
  store i16 %retval.0.i706, ptr %red170, align 2, !dbg !3220, !tbaa !2244
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3221
  %cmp.i707 = fcmp ugt float %pixel121.sroa.9.0.lcssa, 0.000000e+00, !dbg !3223
  br i1 %cmp.i707, label %if.end.i709, label %ClampToQuantum.exit714, !dbg !3224

if.end.i709:                                      ; preds = %ClampToQuantum.exit
  %cmp1.i708 = fcmp ult float %pixel121.sroa.9.0.lcssa, 6.553500e+04, !dbg !3225
  br i1 %cmp1.i708, label %if.end3.i712, label %ClampToQuantum.exit714, !dbg !3226

if.end3.i712:                                     ; preds = %if.end.i709
  %add.i710 = fadd float %pixel121.sroa.9.0.lcssa, 5.000000e-01, !dbg !3227
  %conv.i711 = fptoui float %add.i710 to i16, !dbg !3228
  br label %ClampToQuantum.exit714, !dbg !3229

ClampToQuantum.exit714:                           ; preds = %ClampToQuantum.exit, %if.end.i709, %if.end3.i712
  %retval.0.i713 = phi i16 [ %conv.i711, %if.end3.i712 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i709 ], !dbg !3221
  %green173 = getelementptr inbounds %struct._PixelPacket, ptr %q.0843, i64 0, i32 1, !dbg !3230
  store i16 %retval.0.i713, ptr %green173, align 2, !dbg !3230, !tbaa !2256
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3231
  %cmp.i715 = fcmp ugt float %pixel121.sroa.15.0.lcssa, 0.000000e+00, !dbg !3233
  br i1 %cmp.i715, label %if.end.i717, label %ClampToQuantum.exit722, !dbg !3234

if.end.i717:                                      ; preds = %ClampToQuantum.exit714
  %cmp1.i716 = fcmp ult float %pixel121.sroa.15.0.lcssa, 6.553500e+04, !dbg !3235
  br i1 %cmp1.i716, label %if.end3.i720, label %ClampToQuantum.exit722, !dbg !3236

if.end3.i720:                                     ; preds = %if.end.i717
  %add.i718 = fadd float %pixel121.sroa.15.0.lcssa, 5.000000e-01, !dbg !3237
  %conv.i719 = fptoui float %add.i718 to i16, !dbg !3238
  br label %ClampToQuantum.exit722, !dbg !3239

ClampToQuantum.exit722:                           ; preds = %ClampToQuantum.exit714, %if.end.i717, %if.end3.i720
  %retval.0.i721 = phi i16 [ %conv.i719, %if.end3.i720 ], [ 0, %ClampToQuantum.exit714 ], [ -1, %if.end.i717 ], !dbg !3231
  store i16 %retval.0.i721, ptr %q.0843, align 2, !dbg !3240, !tbaa !2268
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3241
  %cmp.i723 = fcmp ugt float %pixel121.sroa.21.0.lcssa, 0.000000e+00, !dbg !3243
  br i1 %cmp.i723, label %if.end.i725, label %ClampToQuantum.exit730, !dbg !3244

if.end.i725:                                      ; preds = %ClampToQuantum.exit722
  %cmp1.i724 = fcmp ult float %pixel121.sroa.21.0.lcssa, 6.553500e+04, !dbg !3245
  br i1 %cmp1.i724, label %if.end3.i728, label %ClampToQuantum.exit730, !dbg !3246

if.end3.i728:                                     ; preds = %if.end.i725
  %add.i726 = fadd float %pixel121.sroa.21.0.lcssa, 5.000000e-01, !dbg !3247
  %conv.i727 = fptoui float %add.i726 to i16, !dbg !3248
  br label %ClampToQuantum.exit730, !dbg !3249

ClampToQuantum.exit730:                           ; preds = %ClampToQuantum.exit722, %if.end.i725, %if.end3.i728
  %retval.0.i729 = phi i16 [ %conv.i727, %if.end3.i728 ], [ 0, %ClampToQuantum.exit722 ], [ -1, %if.end.i725 ], !dbg !3241
  %opacity179 = getelementptr inbounds %struct._PixelPacket, ptr %q.0843, i64 0, i32 3, !dbg !3250
  store i16 %retval.0.i729, ptr %opacity179, align 2, !dbg !3250, !tbaa !2280
  %35 = load i32, ptr %colorspace316, align 4, !dbg !3251, !tbaa !2283
  %cmp180 = icmp eq i32 %35, 12, !dbg !3253
  br i1 %cmp180, label %land.lhs.true182, label %if.end380, !dbg !3254

land.lhs.true182:                                 ; preds = %ClampToQuantum.exit730
  %36 = load i32, ptr %colorspace320, align 4, !dbg !3255, !tbaa !2283
  %cmp184 = icmp eq i32 %36, 12, !dbg !3256
  br i1 %cmp184, label %for.cond187.preheader, label %if.end380, !dbg !3257

for.cond187.preheader:                            ; preds = %land.lhs.true182
  call void @llvm.dbg.value(metadata i64 0, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  br i1 %cmp231811.not, label %for.end220, label %for.body190.lr.ph, !dbg !3258

for.body190.lr.ph:                                ; preds = %for.cond187.preheader
  br i1 %cmp354, label %for.body190.us, label %for.body190.lr.ph.split, !dbg !3261

for.body190.us:                                   ; preds = %for.body190.lr.ph, %for.body190.us
  %i122.1839.us = phi i64 [ %inc219.us, %for.body190.us ], [ 0, %for.body190.lr.ph ]
  %pixel121.sroa.27.0838.us = phi float [ %38, %for.body190.us ], [ %pixel121.sroa.27.0.copyload, %for.body190.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i122.1839.us, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0838.us, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  %arrayidx199.us = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i122.1839.us, !dbg !3264
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %37 = load float, ptr %arrayidx199.us, align 8, !dbg !3265, !tbaa !3132
  call void @llvm.dbg.value(metadata float %37, metadata !2988, metadata !DIExpression()), !dbg !3180
  %38 = call float @llvm.fmuladd.f32(float %37, float 0.000000e+00, float %pixel121.sroa.27.0838.us), !dbg !3266
  call void @llvm.dbg.value(metadata float %38, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  %inc219.us = add nuw nsw i64 %i122.1839.us, 1, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %inc219.us, metadata !2989, metadata !DIExpression()), !dbg !3180
  %exitcond872.not = icmp eq i64 %inc219.us, %n.0.lcssa883, !dbg !3268
  br i1 %exitcond872.not, label %for.end220, label %for.body190.us, !dbg !3258, !llvm.loop !3269

for.body190.lr.ph.split:                          ; preds = %for.body190.lr.ph
  %39 = load i64, ptr %pixel100, align 8, !tbaa !3106
  %40 = load i64, ptr %pixel97, align 8, !tbaa !3106
  %sub196 = add i64 %39, 1
  %add197 = sub i64 %sub196, %40
  %mul198 = mul nsw i64 %add197, %y.0845
  call void @llvm.dbg.value(metadata i64 0, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %41 = load float, ptr %6, align 8, !dbg !3265, !tbaa !3132
  call void @llvm.dbg.value(metadata float %41, metadata !2988, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %40, i64 undef, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 0, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %mul198, metadata !2990, metadata !DIExpression()), !dbg !3180
  %add.ptr207918 = getelementptr inbounds i16, ptr %call114, i64 %mul198, !dbg !3261
  %42 = load i16, ptr %add.ptr207918, align 2, !dbg !3261, !tbaa !2304
  %conv216919 = uitofp i16 %42 to float, !dbg !3261
  %43 = call float @llvm.fmuladd.f32(float %41, float %conv216919, float %pixel121.sroa.27.0.copyload), !dbg !3266
  call void @llvm.dbg.value(metadata float %43, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata i64 1, metadata !2989, metadata !DIExpression()), !dbg !3180
  br i1 %exitcond871.not920, label %for.end220, label %for.body190.for.body190_crit_edge, !dbg !3258, !llvm.loop !3269

for.body190.for.body190_crit_edge:                ; preds = %for.body190.lr.ph.split, %for.body190.for.body190_crit_edge
  %inc219921 = phi i64 [ %inc219, %for.body190.for.body190_crit_edge ], [ 1, %for.body190.lr.ph.split ]
  %44 = phi float [ %47, %for.body190.for.body190_crit_edge ], [ %43, %for.body190.lr.ph.split ]
  %pixel200.phi.trans.insert = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc219921, i32 1
  %.pre876 = load i64, ptr %pixel200.phi.trans.insert, align 8, !dbg !3271, !tbaa !3106
  call void @llvm.dbg.value(metadata i64 %inc219921, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %44, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  %arrayidx199 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc219921, !dbg !3264
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %45 = load float, ptr %arrayidx199, align 8, !dbg !3265, !tbaa !3132
  call void @llvm.dbg.value(metadata float %45, metadata !2988, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %.pre876, i64 undef, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %sub203 = sub i64 %.pre876, %40, !dbg !3272
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %sub203, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %add204 = add nsw i64 %sub203, %mul198, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %add204, metadata !2990, metadata !DIExpression()), !dbg !3180
  %add.ptr207 = getelementptr inbounds i16, ptr %call114, i64 %add204, !dbg !3261
  %46 = load i16, ptr %add.ptr207, align 2, !dbg !3261, !tbaa !2304
  %conv216 = uitofp i16 %46 to float, !dbg !3261
  %47 = call float @llvm.fmuladd.f32(float %45, float %conv216, float %44), !dbg !3266
  call void @llvm.dbg.value(metadata float %47, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  %inc219 = add nuw nsw i64 %inc219921, 1, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %inc219, metadata !2989, metadata !DIExpression()), !dbg !3180
  %exitcond871.not = icmp eq i64 %inc219, %n.0.lcssa883, !dbg !3268
  br i1 %exitcond871.not, label %for.end220, label %for.body190.for.body190_crit_edge, !dbg !3258, !llvm.loop !3269

for.end220:                                       ; preds = %for.body190.for.body190_crit_edge, %for.body190.us, %for.body190.lr.ph.split, %for.cond187.preheader
  %pixel121.sroa.27.0.lcssa = phi float [ %pixel121.sroa.27.0.copyload, %for.cond187.preheader ], [ %43, %for.body190.lr.ph.split ], [ %38, %for.body190.us ], [ %47, %for.body190.for.body190_crit_edge ], !dbg !3180
  br i1 %cmp369.not, label %if.end380, label %if.then224, !dbg !3274

if.then224:                                       ; preds = %for.end220
  %add.ptr221 = getelementptr inbounds i16, ptr %call115, i64 %y.0845, !dbg !3276
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3278
  %cmp.i731 = fcmp ugt float %pixel121.sroa.27.0.lcssa, 0.000000e+00, !dbg !3280
  br i1 %cmp.i731, label %if.end.i733, label %ClampToQuantum.exit738, !dbg !3281

if.end.i733:                                      ; preds = %if.then224
  %cmp1.i732 = fcmp ult float %pixel121.sroa.27.0.lcssa, 6.553500e+04, !dbg !3282
  br i1 %cmp1.i732, label %if.end3.i736, label %ClampToQuantum.exit738, !dbg !3283

if.end3.i736:                                     ; preds = %if.end.i733
  %add.i734 = fadd float %pixel121.sroa.27.0.lcssa, 5.000000e-01, !dbg !3284
  %conv.i735 = fptoui float %add.i734 to i16, !dbg !3285
  br label %ClampToQuantum.exit738, !dbg !3286

ClampToQuantum.exit738:                           ; preds = %if.then224, %if.end.i733, %if.end3.i736
  %retval.0.i737 = phi i16 [ %conv.i735, %if.end3.i736 ], [ 0, %if.then224 ], [ -1, %if.end.i733 ], !dbg !3278
  store i16 %retval.0.i737, ptr %add.ptr221, align 2, !dbg !3276, !tbaa !2304
  br label %if.end380, !dbg !3276

for.body233:                                      ; preds = %for.body233.for.body233_crit_edge, %for.body233.lr.ph
  %48 = phi i64 [ %22, %for.body233.lr.ph ], [ %.pre, %for.body233.for.body233_crit_edge ], !dbg !3287
  %gamma.0817 = phi double [ 0.000000e+00, %for.body233.lr.ph ], [ %add286, %for.body233.for.body233_crit_edge ]
  %i122.2816 = phi i64 [ 0, %for.body233.lr.ph ], [ %inc288, %for.body233.for.body233_crit_edge ]
  %pixel121.sroa.3.1815 = phi float [ %pixel121.sroa.3.0.copyload, %for.body233.lr.ph ], [ %53, %for.body233.for.body233_crit_edge ]
  %pixel121.sroa.9.1814 = phi float [ %pixel121.sroa.9.0.copyload, %for.body233.lr.ph ], [ %55, %for.body233.for.body233_crit_edge ]
  %pixel121.sroa.15.1813 = phi float [ %pixel121.sroa.15.0.copyload, %for.body233.lr.ph ], [ %57, %for.body233.for.body233_crit_edge ]
  %pixel121.sroa.21.1812 = phi float [ %pixel121.sroa.21.0.copyload, %for.body233.lr.ph ], [ %58, %for.body233.for.body233_crit_edge ]
  call void @llvm.dbg.value(metadata double %gamma.0817, metadata !2991, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 %i122.2816, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.1815, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.1814, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.1813, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.1812, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3180
  %arrayidx242 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i122.2816, !dbg !3290
  %sub246 = sub nsw i64 %48, %22, !dbg !3291
  %add247 = add nsw i64 %mul241, %sub246, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %add247, metadata !2990, metadata !DIExpression()), !dbg !3180
  %49 = load float, ptr %arrayidx242, align 8, !dbg !3293, !tbaa !3132
  %conv250 = fpext float %49 to double, !dbg !3294
  %mul251 = fmul double %conv250, 0x3EF0001000100010, !dbg !3295
  %add.ptr252 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add247, !dbg !3296
  %opacity253 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add247, i32 3, !dbg !3296
  %50 = load i16, ptr %opacity253, align 2, !dbg !3296, !tbaa !2280
  %51 = xor i16 %50, -1, !dbg !3296
  %conv256 = uitofp i16 %51 to double, !dbg !3296
  %mul257 = fmul double %mul251, %conv256, !dbg !3297
  %conv258 = fptrunc double %mul257 to float, !dbg !3294
  call void @llvm.dbg.value(metadata float %conv258, metadata !2988, metadata !DIExpression()), !dbg !3180
  %red260 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add247, i32 2, !dbg !3298
  %52 = load i16, ptr %red260, align 2, !dbg !3298, !tbaa !2244
  %conv262 = uitofp i16 %52 to float, !dbg !3298
  %53 = call float @llvm.fmuladd.f32(float %conv258, float %conv262, float %pixel121.sroa.3.1815), !dbg !3299
  call void @llvm.dbg.value(metadata float %53, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3180
  %green266 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add247, i32 1, !dbg !3300
  %54 = load i16, ptr %green266, align 2, !dbg !3300, !tbaa !2256
  %conv268 = uitofp i16 %54 to float, !dbg !3300
  %55 = call float @llvm.fmuladd.f32(float %conv258, float %conv268, float %pixel121.sroa.9.1814), !dbg !3301
  call void @llvm.dbg.value(metadata float %55, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3180
  %56 = load i16, ptr %add.ptr252, align 2, !dbg !3302, !tbaa !2268
  %conv274 = uitofp i16 %56 to float, !dbg !3302
  %57 = call float @llvm.fmuladd.f32(float %conv258, float %conv274, float %pixel121.sroa.15.1813), !dbg !3303
  call void @llvm.dbg.value(metadata float %57, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3180
  %conv282 = uitofp i16 %50 to float, !dbg !3304
  %58 = call float @llvm.fmuladd.f32(float %49, float %conv282, float %pixel121.sroa.21.1812), !dbg !3305
  call void @llvm.dbg.value(metadata float %58, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3180
  %conv285 = fpext float %conv258 to double, !dbg !3306
  %add286 = fadd double %gamma.0817, %conv285, !dbg !3307
  call void @llvm.dbg.value(metadata double %add286, metadata !2991, metadata !DIExpression()), !dbg !3186
  %inc288 = add nuw nsw i64 %i122.2816, 1, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %inc288, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %53, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %55, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %57, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3180
  call void @llvm.dbg.value(metadata float %58, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3180
  %exitcond868.not = icmp eq i64 %inc288, %n.0.lcssa883, !dbg !3309
  br i1 %exitcond868.not, label %for.end289, label %for.body233.for.body233_crit_edge, !dbg !3187, !llvm.loop !3310

for.body233.for.body233_crit_edge:                ; preds = %for.body233
  %pixel243.phi.trans.insert = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc288, i32 1
  %.pre = load i64, ptr %pixel243.phi.trans.insert, align 8, !dbg !3287, !tbaa !3106
  br label %for.body233, !dbg !3187

for.end289:                                       ; preds = %for.body233
  %cmp290 = fcmp olt double %add286, 0.000000e+00, !dbg !3312
  br i1 %cmp290, label %if.then292, label %if.end293, !dbg !3314

if.then292:                                       ; preds = %for.end289
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2991, metadata !DIExpression()), !dbg !3186
  br label %if.end293, !dbg !3315

if.end293:                                        ; preds = %for.cond230.preheader, %if.then292, %for.end289
  %pixel121.sroa.3.1.lcssa893 = phi float [ %53, %if.then292 ], [ %53, %for.end289 ], [ %pixel121.sroa.3.0.copyload, %for.cond230.preheader ]
  %pixel121.sroa.9.1.lcssa892 = phi float [ %55, %if.then292 ], [ %55, %for.end289 ], [ %pixel121.sroa.9.0.copyload, %for.cond230.preheader ]
  %pixel121.sroa.15.1.lcssa891 = phi float [ %57, %if.then292 ], [ %57, %for.end289 ], [ %pixel121.sroa.15.0.copyload, %for.cond230.preheader ]
  %pixel121.sroa.21.1.lcssa890 = phi float [ %58, %if.then292 ], [ %58, %for.end289 ], [ %pixel121.sroa.21.0.copyload, %for.cond230.preheader ]
  %gamma.1 = phi double [ 0.000000e+00, %if.then292 ], [ %add286, %for.end289 ], [ 0.000000e+00, %for.cond230.preheader ], !dbg !3186
  call void @llvm.dbg.value(metadata double %gamma.1, metadata !2991, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata double %gamma.1, metadata !1095, metadata !DIExpression()), !dbg !3316
  %cmp.i739 = fcmp olt double %gamma.1, 0.000000e+00, !dbg !3318
  %cond.i740 = select i1 %cmp.i739, double -1.000000e+00, double 1.000000e+00, !dbg !3319
  call void @llvm.dbg.value(metadata double %cond.i740, metadata !1101, metadata !DIExpression()), !dbg !3316
  %mul.i741 = fmul double %gamma.1, %cond.i740, !dbg !3320
  %cmp1.i742 = fcmp ult double %mul.i741, 1.000000e-15, !dbg !3321
  br i1 %cmp1.i742, label %if.end.i746, label %if.then.i744, !dbg !3322

if.then.i744:                                     ; preds = %if.end293
  %div.i743 = fdiv double 1.000000e+00, %gamma.1, !dbg !3323
  br label %PerceptibleReciprocal.exit748, !dbg !3324

if.end.i746:                                      ; preds = %if.end293
  %div2.i745 = fdiv double %cond.i740, 1.000000e-15, !dbg !3325
  br label %PerceptibleReciprocal.exit748, !dbg !3326

PerceptibleReciprocal.exit748:                    ; preds = %if.then.i744, %if.end.i746
  %retval.0.i747 = phi double [ %div.i743, %if.then.i744 ], [ %div2.i745, %if.end.i746 ], !dbg !3316
  call void @llvm.dbg.value(metadata double %retval.0.i747, metadata !2991, metadata !DIExpression()), !dbg !3186
  %conv296 = fpext float %pixel121.sroa.3.1.lcssa893 to double, !dbg !3327
  %mul297 = fmul double %retval.0.i747, %conv296, !dbg !3327
  %conv298 = fptrunc double %mul297 to float, !dbg !3327
  call void @llvm.dbg.value(metadata float %conv298, metadata !2228, metadata !DIExpression()), !dbg !3328
  %cmp.i749 = fcmp ugt float %conv298, 0.000000e+00, !dbg !3330
  br i1 %cmp.i749, label %if.end.i751, label %ClampToQuantum.exit756, !dbg !3331

if.end.i751:                                      ; preds = %PerceptibleReciprocal.exit748
  %cmp1.i750 = fcmp ult float %conv298, 6.553500e+04, !dbg !3332
  br i1 %cmp1.i750, label %if.end3.i754, label %ClampToQuantum.exit756, !dbg !3333

if.end3.i754:                                     ; preds = %if.end.i751
  %add.i752 = fadd float %conv298, 5.000000e-01, !dbg !3334
  %conv.i753 = fptoui float %add.i752 to i16, !dbg !3335
  br label %ClampToQuantum.exit756, !dbg !3336

ClampToQuantum.exit756:                           ; preds = %PerceptibleReciprocal.exit748, %if.end.i751, %if.end3.i754
  %retval.0.i755 = phi i16 [ %conv.i753, %if.end3.i754 ], [ 0, %PerceptibleReciprocal.exit748 ], [ -1, %if.end.i751 ], !dbg !3328
  %red300 = getelementptr inbounds %struct._PixelPacket, ptr %q.0843, i64 0, i32 2, !dbg !3327
  store i16 %retval.0.i755, ptr %red300, align 2, !dbg !3327, !tbaa !2244
  %conv302 = fpext float %pixel121.sroa.9.1.lcssa892 to double, !dbg !3337
  %mul303 = fmul double %retval.0.i747, %conv302, !dbg !3337
  %conv304 = fptrunc double %mul303 to float, !dbg !3337
  call void @llvm.dbg.value(metadata float %conv304, metadata !2228, metadata !DIExpression()), !dbg !3338
  %cmp.i757 = fcmp ugt float %conv304, 0.000000e+00, !dbg !3340
  br i1 %cmp.i757, label %if.end.i759, label %ClampToQuantum.exit764, !dbg !3341

if.end.i759:                                      ; preds = %ClampToQuantum.exit756
  %cmp1.i758 = fcmp ult float %conv304, 6.553500e+04, !dbg !3342
  br i1 %cmp1.i758, label %if.end3.i762, label %ClampToQuantum.exit764, !dbg !3343

if.end3.i762:                                     ; preds = %if.end.i759
  %add.i760 = fadd float %conv304, 5.000000e-01, !dbg !3344
  %conv.i761 = fptoui float %add.i760 to i16, !dbg !3345
  br label %ClampToQuantum.exit764, !dbg !3346

ClampToQuantum.exit764:                           ; preds = %ClampToQuantum.exit756, %if.end.i759, %if.end3.i762
  %retval.0.i763 = phi i16 [ %conv.i761, %if.end3.i762 ], [ 0, %ClampToQuantum.exit756 ], [ -1, %if.end.i759 ], !dbg !3338
  %green306 = getelementptr inbounds %struct._PixelPacket, ptr %q.0843, i64 0, i32 1, !dbg !3337
  store i16 %retval.0.i763, ptr %green306, align 2, !dbg !3337, !tbaa !2256
  %conv308 = fpext float %pixel121.sroa.15.1.lcssa891 to double, !dbg !3347
  %mul309 = fmul double %retval.0.i747, %conv308, !dbg !3347
  %conv310 = fptrunc double %mul309 to float, !dbg !3347
  call void @llvm.dbg.value(metadata float %conv310, metadata !2228, metadata !DIExpression()), !dbg !3348
  %cmp.i765 = fcmp ugt float %conv310, 0.000000e+00, !dbg !3350
  br i1 %cmp.i765, label %if.end.i767, label %ClampToQuantum.exit772, !dbg !3351

if.end.i767:                                      ; preds = %ClampToQuantum.exit764
  %cmp1.i766 = fcmp ult float %conv310, 6.553500e+04, !dbg !3352
  br i1 %cmp1.i766, label %if.end3.i770, label %ClampToQuantum.exit772, !dbg !3353

if.end3.i770:                                     ; preds = %if.end.i767
  %add.i768 = fadd float %conv310, 5.000000e-01, !dbg !3354
  %conv.i769 = fptoui float %add.i768 to i16, !dbg !3355
  br label %ClampToQuantum.exit772, !dbg !3356

ClampToQuantum.exit772:                           ; preds = %ClampToQuantum.exit764, %if.end.i767, %if.end3.i770
  %retval.0.i771 = phi i16 [ %conv.i769, %if.end3.i770 ], [ 0, %ClampToQuantum.exit764 ], [ -1, %if.end.i767 ], !dbg !3348
  store i16 %retval.0.i771, ptr %q.0843, align 2, !dbg !3347, !tbaa !2268
  call void @llvm.dbg.value(metadata float %58, metadata !2228, metadata !DIExpression()), !dbg !3357
  %cmp.i773 = fcmp ugt float %pixel121.sroa.21.1.lcssa890, 0.000000e+00, !dbg !3359
  br i1 %cmp.i773, label %if.end.i775, label %ClampToQuantum.exit780, !dbg !3360

if.end.i775:                                      ; preds = %ClampToQuantum.exit772
  %cmp1.i774 = fcmp ult float %pixel121.sroa.21.1.lcssa890, 6.553500e+04, !dbg !3361
  br i1 %cmp1.i774, label %if.end3.i778, label %ClampToQuantum.exit780, !dbg !3362

if.end3.i778:                                     ; preds = %if.end.i775
  %add.i776 = fadd float %pixel121.sroa.21.1.lcssa890, 5.000000e-01, !dbg !3363
  %conv.i777 = fptoui float %add.i776 to i16, !dbg !3364
  br label %ClampToQuantum.exit780, !dbg !3365

ClampToQuantum.exit780:                           ; preds = %ClampToQuantum.exit772, %if.end.i775, %if.end3.i778
  %retval.0.i779 = phi i16 [ %conv.i777, %if.end3.i778 ], [ 0, %ClampToQuantum.exit772 ], [ -1, %if.end.i775 ], !dbg !3357
  %opacity315 = getelementptr inbounds %struct._PixelPacket, ptr %q.0843, i64 0, i32 3, !dbg !3366
  store i16 %retval.0.i779, ptr %opacity315, align 2, !dbg !3366, !tbaa !2280
  %59 = load i32, ptr %colorspace316, align 4, !dbg !3367, !tbaa !2283
  %cmp317 = icmp eq i32 %59, 12, !dbg !3369
  br i1 %cmp317, label %land.lhs.true319, label %if.end380, !dbg !3370

land.lhs.true319:                                 ; preds = %ClampToQuantum.exit780
  %60 = load i32, ptr %colorspace320, align 4, !dbg !3371, !tbaa !2283
  %cmp321 = icmp eq i32 %60, 12, !dbg !3372
  br i1 %cmp321, label %for.cond324.preheader, label %if.end380, !dbg !3373

for.cond324.preheader:                            ; preds = %land.lhs.true319
  call void @llvm.dbg.value(metadata i64 0, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.copyload, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  br i1 %cmp231811.not, label %for.end367, label %for.body327.lr.ph, !dbg !3374

for.body327.lr.ph:                                ; preds = %for.cond324.preheader
  %61 = load i64, ptr %pixel100, align 8, !tbaa !3106
  %62 = load i64, ptr %pixel97, align 8, !tbaa !3106
  %sub333 = add i64 %61, 1
  %add334 = sub i64 %sub333, %62
  %mul335 = mul nsw i64 %add334, %y.0845
  br label %for.body327, !dbg !3374

for.body327:                                      ; preds = %cond.end360.for.body327_crit_edge, %for.body327.lr.ph
  %63 = phi i64 [ %62, %for.body327.lr.ph ], [ %.pre874, %cond.end360.for.body327_crit_edge ], !dbg !3377
  %i122.3825 = phi i64 [ 0, %for.body327.lr.ph ], [ %inc366, %cond.end360.for.body327_crit_edge ]
  %pixel121.sroa.27.1824 = phi float [ %pixel121.sroa.27.0.copyload, %for.body327.lr.ph ], [ %68, %cond.end360.for.body327_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %i122.3825, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.1824, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  %arrayidx336 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i122.3825, !dbg !3380
  %sub340 = sub nsw i64 %63, %62, !dbg !3381
  %add341 = add nsw i64 %mul335, %sub340, !dbg !3382
  call void @llvm.dbg.value(metadata i64 %add341, metadata !2990, metadata !DIExpression()), !dbg !3180
  %64 = load float, ptr %arrayidx336, align 8, !dbg !3383, !tbaa !3132
  %conv344 = fpext float %64 to double, !dbg !3384
  %mul345 = fmul double %conv344, 0x3EF0001000100010, !dbg !3385
  %opacity347 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add341, i32 3, !dbg !3386
  %65 = load i16, ptr %opacity347, align 2, !dbg !3386, !tbaa !2280
  %66 = xor i16 %65, -1, !dbg !3386
  %conv350 = uitofp i16 %66 to double, !dbg !3386
  %mul351 = fmul double %mul345, %conv350, !dbg !3387
  %conv352 = fptrunc double %mul351 to float, !dbg !3384
  call void @llvm.dbg.value(metadata float %conv352, metadata !2988, metadata !DIExpression()), !dbg !3180
  br i1 %cmp354, label %cond.end360, label %cond.false357, !dbg !3388

cond.false357:                                    ; preds = %for.body327
  %add.ptr353 = getelementptr inbounds i16, ptr %call114, i64 %add341, !dbg !3388
  %67 = load i16, ptr %add.ptr353, align 2, !dbg !3388, !tbaa !2304
  %conv359 = zext i16 %67 to i32, !dbg !3388
  br label %cond.end360, !dbg !3388

cond.end360:                                      ; preds = %for.body327, %cond.false357
  %cond361 = phi i32 [ %conv359, %cond.false357 ], [ 0, %for.body327 ], !dbg !3388
  %conv362 = sitofp i32 %cond361 to float, !dbg !3388
  %68 = call float @llvm.fmuladd.f32(float %conv352, float %conv362, float %pixel121.sroa.27.1824), !dbg !3389
  call void @llvm.dbg.value(metadata float %68, metadata !2984, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3180
  %inc366 = add nuw nsw i64 %i122.3825, 1, !dbg !3390
  call void @llvm.dbg.value(metadata i64 %inc366, metadata !2989, metadata !DIExpression()), !dbg !3180
  %exitcond869.not = icmp eq i64 %inc366, %n.0.lcssa883, !dbg !3391
  br i1 %exitcond869.not, label %for.end367, label %cond.end360.for.body327_crit_edge, !dbg !3374, !llvm.loop !3392

cond.end360.for.body327_crit_edge:                ; preds = %cond.end360
  %pixel337.phi.trans.insert = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc366, i32 1
  %.pre874 = load i64, ptr %pixel337.phi.trans.insert, align 8, !dbg !3377, !tbaa !3106
  br label %for.body327, !dbg !3374

for.end367:                                       ; preds = %cond.end360, %for.cond324.preheader
  %pixel121.sroa.27.1.lcssa = phi float [ %pixel121.sroa.27.0.copyload, %for.cond324.preheader ], [ %68, %cond.end360 ], !dbg !3180
  br i1 %cmp369.not, label %if.end380, label %if.then371, !dbg !3394

if.then371:                                       ; preds = %for.end367
  %add.ptr368 = getelementptr inbounds i16, ptr %call115, i64 %y.0845, !dbg !3396
  %conv373 = fpext float %pixel121.sroa.27.1.lcssa to double, !dbg !3396
  %mul374 = fmul double %retval.0.i747, %conv373, !dbg !3396
  %conv375 = fptrunc double %mul374 to float, !dbg !3396
  call void @llvm.dbg.value(metadata float %conv375, metadata !2228, metadata !DIExpression()), !dbg !3398
  %cmp.i781 = fcmp ugt float %conv375, 0.000000e+00, !dbg !3400
  br i1 %cmp.i781, label %if.end.i783, label %ClampToQuantum.exit788, !dbg !3401

if.end.i783:                                      ; preds = %if.then371
  %cmp1.i782 = fcmp ult float %conv375, 6.553500e+04, !dbg !3402
  br i1 %cmp1.i782, label %if.end3.i786, label %ClampToQuantum.exit788, !dbg !3403

if.end3.i786:                                     ; preds = %if.end.i783
  %add.i784 = fadd float %conv375, 5.000000e-01, !dbg !3404
  %conv.i785 = fptoui float %add.i784 to i16, !dbg !3405
  br label %ClampToQuantum.exit788, !dbg !3406

ClampToQuantum.exit788:                           ; preds = %if.then371, %if.end.i783, %if.end3.i786
  %retval.0.i787 = phi i16 [ %conv.i785, %if.end3.i786 ], [ 0, %if.then371 ], [ -1, %if.end.i783 ], !dbg !3398
  store i16 %retval.0.i787, ptr %add.ptr368, align 2, !dbg !3396, !tbaa !2304
  br label %if.end380, !dbg !3396

if.end380:                                        ; preds = %ClampToQuantum.exit780, %land.lhs.true319, %ClampToQuantum.exit788, %for.end367, %ClampToQuantum.exit730, %land.lhs.true182, %ClampToQuantum.exit738, %for.end220
  br i1 %cmp382, label %land.lhs.true384, label %if.end428, !dbg !3407

land.lhs.true384:                                 ; preds = %if.end380
  %69 = load i32, ptr %image, align 8, !dbg !3409, !tbaa !2287
  %cmp386 = icmp eq i32 %69, 2, !dbg !3410
  br i1 %cmp386, label %if.then388, label %if.end428, !dbg !3411

if.then388:                                       ; preds = %land.lhs.true384
  call void @llvm.dbg.value(metadata double %conv389, metadata !3003, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata double %conv390, metadata !3008, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata double %x.y.i790, metadata !3087, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata double %sub393, metadata !3090, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.value(metadata i64 undef, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %add.ptr412 = getelementptr inbounds i16, ptr %call115, i64 %y.0845, !dbg !3417
  br i1 %cmp369.not, label %if.end428, label %if.then415, !dbg !3420

if.then415:                                       ; preds = %if.then388
  call void @llvm.dbg.value(metadata i64 undef, metadata !2989, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  br i1 %cmp354, label %cond.end423, label %cond.false420, !dbg !3417

cond.false420:                                    ; preds = %if.then415
  %70 = load i64, ptr %pixel100, align 8, !dbg !3421, !tbaa !3106
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 %70, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %71 = load i64, ptr %pixel97, align 8, !dbg !3422, !tbaa !3106
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %sub402 = add i64 %70, 1, !dbg !3423
  %add403 = sub i64 %sub402, %71, !dbg !3424
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 %add403), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %mul404 = mul nsw i64 %add403, %y.0845, !dbg !3425
  call void @llvm.dbg.value(metadata !DIArgList(i64 %mul404, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %conv396, metadata !2989, metadata !DIExpression()), !dbg !3180
  %72 = load i64, ptr %pixel407, align 8, !dbg !3426, !tbaa !3106
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %72, i64 undef, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_LLVM_arg, 4, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %sub410 = sub i64 %72, %71, !dbg !3427
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 %sub410, i64 undef, i64 undef), metadata !2990, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_plus_uconst, 1, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3180
  %add411 = add nsw i64 %sub410, %mul404, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %add411, metadata !2990, metadata !DIExpression()), !dbg !3180
  %add.ptr416 = getelementptr inbounds i16, ptr %call114, i64 %add411, !dbg !3417
  %73 = load i16, ptr %add.ptr416, align 2, !dbg !3417, !tbaa !2304
  br label %cond.end423, !dbg !3417

cond.end423:                                      ; preds = %if.then415, %cond.false420
  %cond424 = phi i16 [ %73, %cond.false420 ], [ 0, %if.then415 ], !dbg !3417
  store i16 %cond424, ptr %add.ptr412, align 2, !dbg !3417, !tbaa !2304
  br label %if.end428, !dbg !3417

if.end428:                                        ; preds = %if.then388, %cond.end423, %land.lhs.true384, %if.end380
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0843, i64 1, !dbg !3429
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2976, metadata !DIExpression()), !dbg !3066
  %inc430 = add nuw nsw i64 %y.0845, 1, !dbg !3430
  call void @llvm.dbg.value(metadata i64 %inc430, metadata !2977, metadata !DIExpression()), !dbg !3066
  %exitcond873.not = icmp eq i64 %inc430, %18, !dbg !3176
  br i1 %exitcond873.not, label %for.end431, label %for.body120, !dbg !3177, !llvm.loop !3431

for.end431:                                       ; preds = %if.end428, %if.end113
  %call432 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call29, ptr noundef %exception) #26, !dbg !3433
  %cmp433 = icmp ne i32 %call432, 0, !dbg !3435
  %spec.select = zext i1 %cmp433 to i32, !dbg !3436
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2960, metadata !DIExpression()), !dbg !2997
  %74 = load ptr, ptr %progress_monitor, align 8, !dbg !3437, !tbaa !2314
  %cmp437.not = icmp eq ptr %74, null, !dbg !3438
  br i1 %cmp437.not, label %cleanup, label %SetImageProgress.exit, !dbg !3439

SetImageProgress.exit:                            ; preds = %for.end431
  %75 = load i64, ptr %offset, align 8, !dbg !3440, !tbaa !2853
  %inc440 = add nsw i64 %75, 1, !dbg !3440
  store i64 %inc440, ptr %offset, align 8, !dbg !3440, !tbaa !2853
  call void @llvm.dbg.value(metadata ptr %image, metadata !2319, metadata !DIExpression()) #22, !dbg !3441
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2325, metadata !DIExpression()) #22, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %75, metadata !2326, metadata !DIExpression()) #22, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %span, metadata !2327, metadata !DIExpression()) #22, !dbg !3441
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2328, metadata !DIExpression()) #22, !dbg !3444
  %call.i794 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.30, ptr noundef nonnull %filename.i) #22, !dbg !3445
  %76 = load ptr, ptr %progress_monitor, align 8, !dbg !3446, !tbaa !2314
  %77 = load ptr, ptr %client_data.i, align 8, !dbg !3447, !tbaa !2336
  %call4.i = call i32 %76(ptr noundef nonnull %message.i, i64 noundef %75, i64 noundef %span, ptr noundef %77) #22, !dbg !3448
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !3449
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !2994, metadata !DIExpression()), !dbg !3450
  %cmp442 = icmp eq i32 %call4.i, 0, !dbg !3451
  %spec.select682 = select i1 %cmp442, i32 0, i32 %spec.select, !dbg !3453
  call void @llvm.dbg.value(metadata i32 %spec.select682, metadata !2960, metadata !DIExpression()), !dbg !2997
  br label %cleanup, !dbg !3454

cleanup:                                          ; preds = %for.end431, %SetImageProgress.exit, %if.end95, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end95 ], [ %spec.select682, %SetImageProgress.exit ], [ %spec.select, %for.end431 ], !dbg !2997
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !2960, metadata !DIExpression()), !dbg !2997
  %inc459 = add nuw nsw i64 %x.0853, 1, !dbg !3455
  call void @llvm.dbg.value(metadata i64 %inc459, metadata !2964, metadata !DIExpression()), !dbg !2997
  %78 = load i64, ptr %columns, align 8, !dbg !3062, !tbaa !2150
  %cmp30 = icmp slt i64 %inc459, %78, !dbg !3063
  br i1 %cmp30, label %for.body, label %for.end460, !dbg !3064, !llvm.loop !3456

for.end460:                                       ; preds = %cleanup, %PerceptibleReciprocal.exit
  %status.0.lcssa = phi i32 [ 1, %PerceptibleReciprocal.exit ], [ %status.4, %cleanup ], !dbg !3458
  %call461 = call ptr @DestroyCacheView(ptr noundef %call29) #22, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %call461, metadata !2956, metadata !DIExpression()), !dbg !2997
  %call462 = call ptr @DestroyCacheView(ptr noundef %call28) #22, !dbg !3460
  call void @llvm.dbg.value(metadata ptr %call462, metadata !2955, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata ptr %call18, metadata !3461, metadata !DIExpression()) #22, !dbg !3467
  call void @llvm.dbg.value(metadata i64 0, metadata !3466, metadata !DIExpression()) #22, !dbg !3467
  %call14.i = call i64 @GetMagickResourceLimit(i32 noundef 6) #22, !dbg !3469
  %cmp15.i = icmp sgt i64 %call14.i, 0, !dbg !3472
  br i1 %cmp15.i, label %for.body.i, label %DestroyContributionThreadSet.exit, !dbg !3473

for.body.i:                                       ; preds = %for.end460, %for.inc.i
  %i.016.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %for.end460 ]
  call void @llvm.dbg.value(metadata i64 %i.016.i, metadata !3466, metadata !DIExpression()) #22, !dbg !3467
  %arrayidx.i = getelementptr inbounds ptr, ptr %call18, i64 %i.016.i, !dbg !3474
  %79 = load ptr, ptr %arrayidx.i, align 8, !dbg !3474, !tbaa !1434
  %cmp1.not.i = icmp eq ptr %79, null, !dbg !3476
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i797, !dbg !3477

if.then.i797:                                     ; preds = %for.body.i
  %call3.i = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %79) #22, !dbg !3478
  store ptr %call3.i, ptr %arrayidx.i, align 8, !dbg !3479, !tbaa !1434
  br label %for.inc.i, !dbg !3480

for.inc.i:                                        ; preds = %if.then.i797, %for.body.i
  %inc.i = add nuw nsw i64 %i.016.i, 1, !dbg !3481
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !3466, metadata !DIExpression()) #22, !dbg !3467
  %call.i798 = call i64 @GetMagickResourceLimit(i32 noundef 6) #22, !dbg !3469
  %cmp.i799 = icmp slt i64 %inc.i, %call.i798, !dbg !3472
  br i1 %cmp.i799, label %for.body.i, label %DestroyContributionThreadSet.exit, !dbg !3473, !llvm.loop !3482

DestroyContributionThreadSet.exit:                ; preds = %for.inc.i, %for.end460
  %call5.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call18) #22, !dbg !3484
  call void @llvm.dbg.value(metadata ptr %call5.i, metadata !3461, metadata !DIExpression()) #22, !dbg !3467
  call void @llvm.dbg.value(metadata ptr undef, metadata !2958, metadata !DIExpression()), !dbg !2997
  br label %cleanup464, !dbg !3485

cleanup464:                                       ; preds = %DestroyContributionThreadSet.exit, %if.then21, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then21 ], [ %status.0.lcssa, %DestroyContributionThreadSet.exit ], !dbg !2997
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %zero) #22, !dbg !3486
  ret i32 %retval.0, !dbg !3486
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @VerticalFilter(ptr noundef %resize_filter, ptr noundef %image, ptr noundef %resize_image, float noundef %y_factor, i64 noundef %span, ptr nocapture noundef %offset, ptr noundef %exception) unnamed_addr #0 !dbg !3487 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %zero = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !3489, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %image, metadata !3490, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %resize_image, metadata !3491, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata float %y_factor, metadata !3492, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %span, metadata !3493, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %offset, metadata !3494, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %exception, metadata !3495, metadata !DIExpression()), !dbg !3536
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %zero) #22, !dbg !3537
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !3501, metadata !DIExpression()), !dbg !3538
  %conv = fpext float %y_factor to double, !dbg !3539
  %div = fdiv double 1.000000e+00, %conv, !dbg !3540
  %add = fadd double %div, 1.000000e-15, !dbg !3541
  call void @llvm.dbg.value(metadata double %add, metadata !3003, metadata !DIExpression()), !dbg !3542
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !3008, metadata !DIExpression()), !dbg !3542
  %cmp.i = fcmp ogt double %add, 1.000000e+00, !dbg !3544
  %x.y.i = select i1 %cmp.i, double %add, double 1.000000e+00, !dbg !3542
  %conv1 = fptrunc double %x.y.i to float, !dbg !3545
  call void @llvm.dbg.value(metadata float %conv1, metadata !3502, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1421, metadata !DIExpression()), !dbg !3546
  %support.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 2, !dbg !3548
  %0 = load float, ptr %support.i, align 8, !dbg !3548, !tbaa !1026
  %blur.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 5, !dbg !3549
  %1 = load float, ptr %blur.i, align 4, !dbg !3549, !tbaa !983
  %mul.i = fmul float %0, %1, !dbg !3550
  %mul = fmul float %mul.i, %conv1, !dbg !3551
  call void @llvm.dbg.value(metadata float %mul, metadata !3503, metadata !DIExpression()), !dbg !3536
  %cmp = fcmp ogt float %mul, 5.000000e-01, !dbg !3552
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !3553

cond.false:                                       ; preds = %entry
  %2 = load i32, ptr %image, align 8, !dbg !3554, !tbaa !2287
  br label %cond.end, !dbg !3553

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i32 [ %2, %cond.false ], [ 1, %entry ], !dbg !3553
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3498, metadata !DIExpression()), !dbg !3536
  %call6 = tail call i32 @SetImageStorageClass(ptr noundef %resize_image, i32 noundef %cond) #22, !dbg !3555
  %cmp7 = icmp eq i32 %call6, 0, !dbg !3557
  br i1 %cmp7, label %if.then, label %if.end, !dbg !3558

if.then:                                          ; preds = %cond.end
  %exception9 = getelementptr inbounds %struct._Image, ptr %resize_image, i64 0, i32 58, !dbg !3559
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception9) #22, !dbg !3561
  br label %cleanup434, !dbg !3562

if.end:                                           ; preds = %cond.end
  %cmp11 = fcmp olt float %mul, 5.000000e-01, !dbg !3563
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !3565

if.then13:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata float 5.000000e-01, metadata !3503, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !3502, metadata !DIExpression()), !dbg !3536
  br label %if.end14, !dbg !3566

if.end14:                                         ; preds = %if.then13, %if.end
  %support.0 = phi float [ 5.000000e-01, %if.then13 ], [ %mul, %if.end ], !dbg !3536
  %scale.0 = phi float [ 1.000000e+00, %if.then13 ], [ %conv1, %if.end ], !dbg !3536
  call void @llvm.dbg.value(metadata float %scale.0, metadata !3502, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata float %support.0, metadata !3503, metadata !DIExpression()), !dbg !3536
  %conv15 = fpext float %support.0 to double, !dbg !3568
  %3 = tail call double @llvm.fmuladd.f64(double %conv15, double 2.000000e+00, double 3.000000e+00), !dbg !3569
  %conv17 = fptoui double %3 to i64, !dbg !3570
  %call18 = tail call fastcc ptr @AcquireContributionThreadSet(i64 noundef %conv17), !dbg !3571
  call void @llvm.dbg.value(metadata ptr %call18, metadata !3499, metadata !DIExpression()), !dbg !3536
  %cmp19 = icmp eq ptr %call18, null, !dbg !3572
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !3574

if.then21:                                        ; preds = %if.end14
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !3575
  %call22 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 2750, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename) #22, !dbg !3577
  br label %cleanup434, !dbg !3578

if.end23:                                         ; preds = %if.end14
  call void @llvm.dbg.value(metadata i32 1, metadata !3500, metadata !DIExpression()), !dbg !3536
  %conv24 = fpext float %scale.0 to double, !dbg !3579
  call void @llvm.dbg.value(metadata double %conv24, metadata !1095, metadata !DIExpression()), !dbg !3580
  %cmp.i643 = fcmp olt float %scale.0, 0.000000e+00, !dbg !3582
  %cond.i = select i1 %cmp.i643, double -1.000000e+00, double 1.000000e+00, !dbg !3583
  call void @llvm.dbg.value(metadata double %cond.i, metadata !1101, metadata !DIExpression()), !dbg !3580
  %mul.i644 = fmul double %cond.i, %conv24, !dbg !3584
  %cmp1.i = fcmp ult double %mul.i644, 1.000000e-15, !dbg !3585
  br i1 %cmp1.i, label %if.end.i, label %if.then.i, !dbg !3586

if.then.i:                                        ; preds = %if.end23
  %div.i = fdiv double 1.000000e+00, %conv24, !dbg !3587
  br label %PerceptibleReciprocal.exit, !dbg !3588

if.end.i:                                         ; preds = %if.end23
  %div2.i = fdiv double %cond.i, 1.000000e-15, !dbg !3589
  br label %PerceptibleReciprocal.exit, !dbg !3590

PerceptibleReciprocal.exit:                       ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi double [ %div.i, %if.then.i ], [ %div2.i, %if.end.i ], !dbg !3580
  call void @llvm.dbg.value(metadata float undef, metadata !3502, metadata !DIExpression()), !dbg !3536
  %call27 = call ptr @ResetMagickMemory(ptr noundef nonnull %zero, i32 noundef 0, i64 noundef 56) #22, !dbg !3591
  %call28 = call ptr @AcquireVirtualCacheView(ptr noundef %image, ptr noundef %exception) #22, !dbg !3592
  call void @llvm.dbg.value(metadata ptr %call28, metadata !3496, metadata !DIExpression()), !dbg !3536
  %call29 = call ptr @AcquireAuthenticCacheView(ptr noundef %resize_image, ptr noundef %exception) #22, !dbg !3593
  call void @llvm.dbg.value(metadata ptr %call29, metadata !3497, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 0, metadata !3504, metadata !DIExpression()), !dbg !3536
  %rows = getelementptr inbounds %struct._Image, ptr %resize_image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i32 1, metadata !3500, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 0, metadata !3504, metadata !DIExpression()), !dbg !3536
  %4 = load i64, ptr %rows, align 8, !dbg !3594, !tbaa !2154
  %cmp30807 = icmp sgt i64 %4, 0, !dbg !3595
  br i1 %cmp30807, label %for.body.lr.ph, label %for.end430, !dbg !3596

for.body.lr.ph:                                   ; preds = %PerceptibleReciprocal.exit
  %conv26 = fptrunc double %retval.0.i to float, !dbg !3597
  call void @llvm.dbg.value(metadata float %conv26, metadata !3502, metadata !DIExpression()), !dbg !3536
  %rows51 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %conv62 = fpext float %conv26 to double
  %window_support.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 3
  %window.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 1
  %scale7.i = getelementptr inbounds %struct._ResizeFilter, ptr %resize_filter, i64 0, i32 4
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7
  %columns106 = getelementptr inbounds %struct._Image, ptr %resize_image, i64 0, i32 7
  %pixel121.sroa.3.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 32
  %pixel121.sroa.9.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 36
  %pixel121.sroa.15.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 40
  %pixel121.sroa.21.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 44
  %pixel121.sroa.27.0.zero.sroa_idx = getelementptr inbounds i8, ptr %zero, i64 48
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %colorspace298 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %colorspace302 = getelementptr inbounds %struct._Image, ptr %resize_image, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !3596

for.body:                                         ; preds = %for.body.lr.ph, %cleanup
  %status.0809 = phi i32 [ 1, %for.body.lr.ph ], [ %status.4, %cleanup ]
  %y.0808 = phi i64 [ 0, %for.body.lr.ph ], [ %inc429, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0809, metadata !3500, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i64 %y.0808, metadata !3504, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata i32 0, metadata !3505, metadata !DIExpression()), !dbg !3598
  %cmp33 = icmp eq i32 %status.0809, 0, !dbg !3599
  br i1 %cmp33, label %cleanup, label %if.end36, !dbg !3601

if.end36:                                         ; preds = %for.body
  %conv37 = sitofp i64 %y.0808 to double, !dbg !3602
  %add38 = fadd double %conv37, 5.000000e-01, !dbg !3603
  %conv39 = fptrunc double %add38 to float, !dbg !3604
  %div40 = fdiv float %conv39, %y_factor, !dbg !3605
  %conv41 = fpext float %div40 to double, !dbg !3604
  %add42 = fadd double %conv41, 1.000000e-15, !dbg !3606
  %conv43 = fptrunc double %add42 to float, !dbg !3604
  call void @llvm.dbg.value(metadata float %conv43, metadata !3509, metadata !DIExpression()), !dbg !3598
  %sub = fsub float %conv43, %support.0, !dbg !3607
  %conv44 = fpext float %sub to double, !dbg !3608
  %add45 = fadd double %conv44, 5.000000e-01, !dbg !3609
  call void @llvm.dbg.value(metadata double %add45, metadata !3003, metadata !DIExpression()), !dbg !3610
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3008, metadata !DIExpression()), !dbg !3610
  %cmp.i645 = fcmp ogt double %add45, 0.000000e+00, !dbg !3612
  %x.y.i646 = select i1 %cmp.i645, double %add45, double 0.000000e+00, !dbg !3610
  %conv47 = fptosi double %x.y.i646 to i64, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %conv47, metadata !3518, metadata !DIExpression()), !dbg !3598
  %add48 = fadd float %support.0, %conv43, !dbg !3614
  %conv49 = fpext float %add48 to double, !dbg !3615
  %add50 = fadd double %conv49, 5.000000e-01, !dbg !3616
  %5 = load i64, ptr %rows51, align 8, !dbg !3617, !tbaa !2154
  %conv52 = uitofp i64 %5 to double, !dbg !3618
  call void @llvm.dbg.value(metadata double %add50, metadata !3087, metadata !DIExpression()), !dbg !3619
  call void @llvm.dbg.value(metadata double %conv52, metadata !3090, metadata !DIExpression()), !dbg !3619
  %cmp.i647 = fcmp olt double %add50, %conv52, !dbg !3621
  %x.y.i648 = select i1 %cmp.i647, double %add50, double %conv52, !dbg !3619
  %conv54 = fptosi double %x.y.i648 to i64, !dbg !3622
  call void @llvm.dbg.value(metadata i64 %conv54, metadata !3519, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3510, metadata !DIExpression()), !dbg !3598
  %6 = load ptr, ptr %call18, align 8, !dbg !3623, !tbaa !1434
  call void @llvm.dbg.value(metadata ptr %6, metadata !3513, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 0, metadata !3517, metadata !DIExpression()), !dbg !3598
  %sub56 = sub i64 %conv54, %conv47
  call void @llvm.dbg.value(metadata i64 0, metadata !3517, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !3510, metadata !DIExpression()), !dbg !3598
  %cmp57760 = icmp sgt i64 %sub56, 0, !dbg !3624
  br i1 %cmp57760, label %for.body59, label %if.end95, !dbg !3627

for.body59:                                       ; preds = %if.end36, %GetResizeFilterWeight.exit
  %n.0762 = phi i64 [ %inc, %GetResizeFilterWeight.exit ], [ 0, %if.end36 ]
  %density.0761 = phi float [ %add74, %GetResizeFilterWeight.exit ], [ 0.000000e+00, %if.end36 ]
  call void @llvm.dbg.value(metadata i64 %n.0762, metadata !3517, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata float %density.0761, metadata !3510, metadata !DIExpression()), !dbg !3598
  %add60 = add nsw i64 %n.0762, %conv47, !dbg !3628
  %arrayidx61 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %n.0762, !dbg !3630
  %pixel = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %n.0762, i32 1, !dbg !3631
  store i64 %add60, ptr %pixel, align 8, !dbg !3632, !tbaa !3106
  %conv64 = sitofp i64 %add60 to float, !dbg !3633
  %sub65 = fsub float %conv64, %conv43, !dbg !3634
  %conv66 = fpext float %sub65 to double, !dbg !3633
  %add67 = fadd double %conv66, 5.000000e-01, !dbg !3635
  %mul68 = fmul double %add67, %conv62, !dbg !3636
  %conv69 = fptrunc double %mul68 to float, !dbg !3637
  call void @llvm.dbg.value(metadata ptr %resize_filter, metadata !1501, metadata !DIExpression()) #22, !dbg !3638
  call void @llvm.dbg.value(metadata float %conv69, metadata !1506, metadata !DIExpression()) #22, !dbg !3638
  %7 = call float @llvm.fabs.f32(float %conv69) #22, !dbg !3640
  %8 = load float, ptr %blur.i, align 4, !dbg !3641, !tbaa !983
  %conv2.i = fdiv float %7, %8, !dbg !3640
  call void @llvm.dbg.value(metadata float %conv2.i, metadata !1509, metadata !DIExpression()) #22, !dbg !3638
  %9 = load float, ptr %window_support.i, align 4, !dbg !3642, !tbaa !1288
  %conv3.i = fpext float %9 to double, !dbg !3643
  %cmp.i650 = fcmp olt double %conv3.i, 1.000000e-15, !dbg !3644
  br i1 %cmp.i650, label %GetResizeFilterWeight.exit, label %lor.lhs.false.i, !dbg !3645

lor.lhs.false.i:                                  ; preds = %for.body59
  %10 = load ptr, ptr %window.i, align 8, !dbg !3646, !tbaa !1036
  %cmp5.i = icmp eq ptr %10, @Box, !dbg !3647
  br i1 %cmp5.i, label %GetResizeFilterWeight.exit, label %if.else.i, !dbg !3648

if.else.i:                                        ; preds = %lor.lhs.false.i
  %11 = load float, ptr %scale7.i, align 8, !dbg !3649, !tbaa !1046
  call void @llvm.dbg.value(metadata float %11, metadata !1507, metadata !DIExpression()) #22, !dbg !3638
  %mul.i651 = fmul float %conv2.i, %11, !dbg !3650
  %call.i = call float %10(float noundef %mul.i651, ptr noundef nonnull %resize_filter) #22, !dbg !3651
  call void @llvm.dbg.value(metadata float %call.i, metadata !1507, metadata !DIExpression()) #22, !dbg !3638
  br label %GetResizeFilterWeight.exit

GetResizeFilterWeight.exit:                       ; preds = %for.body59, %lor.lhs.false.i, %if.else.i
  %scale.0.i = phi float [ %call.i, %if.else.i ], [ 1.000000e+00, %lor.lhs.false.i ], [ 1.000000e+00, %for.body59 ], !dbg !3652
  call void @llvm.dbg.value(metadata float %scale.0.i, metadata !1507, metadata !DIExpression()) #22, !dbg !3638
  %12 = load ptr, ptr %resize_filter, align 8, !dbg !3653, !tbaa !1020
  %call9.i = call float %12(float noundef %conv2.i, ptr noundef nonnull %resize_filter) #22, !dbg !3654
  %mul10.i = fmul float %scale.0.i, %call9.i, !dbg !3655
  call void @llvm.dbg.value(metadata float %mul10.i, metadata !1508, metadata !DIExpression()) #22, !dbg !3638
  store float %mul10.i, ptr %arrayidx61, align 8, !dbg !3656, !tbaa !3132
  %add74 = fadd float %density.0761, %mul10.i, !dbg !3657
  call void @llvm.dbg.value(metadata float %add74, metadata !3510, metadata !DIExpression()), !dbg !3598
  %inc = add nuw nsw i64 %n.0762, 1, !dbg !3658
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3517, metadata !DIExpression()), !dbg !3598
  %exitcond.not = icmp eq i64 %inc, %sub56, !dbg !3624
  br i1 %exitcond.not, label %for.end, label %for.body59, !dbg !3627, !llvm.loop !3659

for.end:                                          ; preds = %GetResizeFilterWeight.exit
  %conv75 = fpext float %add74 to double, !dbg !3661
  %cmp76 = fcmp une float %add74, 0.000000e+00, !dbg !3662
  %cmp79 = fcmp une float %add74, 1.000000e+00
  %or.cond641 = and i1 %cmp76, %cmp79, !dbg !3663
  br i1 %or.cond641, label %if.then81, label %if.end95, !dbg !3663

if.then81:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata double %conv75, metadata !1095, metadata !DIExpression()), !dbg !3664
  %cmp.i653 = fcmp olt float %add74, 0.000000e+00, !dbg !3666
  %cond.i654 = select i1 %cmp.i653, double -1.000000e+00, double 1.000000e+00, !dbg !3667
  call void @llvm.dbg.value(metadata double %cond.i654, metadata !1101, metadata !DIExpression()), !dbg !3664
  %mul.i655 = fmul double %cond.i654, %conv75, !dbg !3668
  %cmp1.i656 = fcmp ult double %mul.i655, 1.000000e-15, !dbg !3669
  br i1 %cmp1.i656, label %if.end.i660, label %if.then.i658, !dbg !3670

if.then.i658:                                     ; preds = %if.then81
  %div.i657 = fdiv double 1.000000e+00, %conv75, !dbg !3671
  br label %PerceptibleReciprocal.exit662, !dbg !3672

if.end.i660:                                      ; preds = %if.then81
  %div2.i659 = fdiv double %cond.i654, 1.000000e-15, !dbg !3673
  br label %PerceptibleReciprocal.exit662, !dbg !3674

PerceptibleReciprocal.exit662:                    ; preds = %if.then.i658, %if.end.i660
  %retval.0.i661 = phi double [ %div.i657, %if.then.i658 ], [ %div2.i659, %if.end.i660 ], !dbg !3664
  %conv84 = fptrunc double %retval.0.i661 to float, !dbg !3675
  call void @llvm.dbg.value(metadata float %conv84, metadata !3510, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 0, metadata !3520, metadata !DIExpression()), !dbg !3676
  br label %for.body88, !dbg !3677

for.body88:                                       ; preds = %PerceptibleReciprocal.exit662, %for.body88
  %i.0765 = phi i64 [ %inc93, %for.body88 ], [ 0, %PerceptibleReciprocal.exit662 ]
  call void @llvm.dbg.value(metadata i64 %i.0765, metadata !3520, metadata !DIExpression()), !dbg !3676
  %arrayidx89 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i.0765, !dbg !3679
  %13 = load float, ptr %arrayidx89, align 8, !dbg !3681, !tbaa !3132
  %mul91 = fmul float %13, %conv84, !dbg !3681
  store float %mul91, ptr %arrayidx89, align 8, !dbg !3681, !tbaa !3132
  %inc93 = add nuw nsw i64 %i.0765, 1, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %inc93, metadata !3520, metadata !DIExpression()), !dbg !3676
  %exitcond822.not = icmp eq i64 %inc93, %sub56, !dbg !3683
  br i1 %exitcond822.not, label %if.end95, label %for.body88, !dbg !3677, !llvm.loop !3684

if.end95:                                         ; preds = %for.body88, %if.end36, %for.end
  %n.0.lcssa838 = phi i64 [ %sub56, %for.end ], [ 0, %if.end36 ], [ %sub56, %for.body88 ]
  %pixel97 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 0, i32 1, !dbg !3686
  %14 = load i64, ptr %pixel97, align 8, !dbg !3686, !tbaa !3106
  %15 = load i64, ptr %columns, align 8, !dbg !3687, !tbaa !2150
  %sub98 = add nsw i64 %n.0.lcssa838, -1, !dbg !3688
  %pixel100 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %sub98, i32 1, !dbg !3689
  %16 = load i64, ptr %pixel100, align 8, !dbg !3689, !tbaa !3106
  %sub103 = sub i64 1, %14, !dbg !3690
  %add104 = add i64 %sub103, %16, !dbg !3691
  %call105 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call28, i64 noundef 0, i64 noundef %14, i64 noundef %15, i64 noundef %add104, ptr noundef %exception) #26, !dbg !3692
  call void @llvm.dbg.value(metadata ptr %call105, metadata !3512, metadata !DIExpression()), !dbg !3598
  %17 = load i64, ptr %columns106, align 8, !dbg !3693, !tbaa !2150
  %call107 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call29, i64 noundef 0, i64 noundef %y.0808, i64 noundef %17, i64 noundef 1, ptr noundef %exception) #26, !dbg !3694
  call void @llvm.dbg.value(metadata ptr %call107, metadata !3515, metadata !DIExpression()), !dbg !3598
  %cmp108 = icmp eq ptr %call105, null, !dbg !3695
  %cmp110 = icmp eq ptr %call107, null
  %or.cond = select i1 %cmp108, i1 true, i1 %cmp110, !dbg !3697
  br i1 %or.cond, label %cleanup, label %if.end113, !dbg !3697

if.end113:                                        ; preds = %if.end95
  %call114 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call28) #22, !dbg !3698
  call void @llvm.dbg.value(metadata ptr %call114, metadata !3511, metadata !DIExpression()), !dbg !3598
  %call115 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call29) #22, !dbg !3699
  call void @llvm.dbg.value(metadata ptr %call115, metadata !3514, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata i64 0, metadata !3516, metadata !DIExpression()), !dbg !3598
  %18 = load i64, ptr %columns106, align 8, !tbaa !2150
  call void @llvm.dbg.value(metadata ptr %call107, metadata !3515, metadata !DIExpression()), !dbg !3598
  %cmp118797 = icmp sgt i64 %18, 0, !dbg !3700
  br i1 %cmp118797, label %for.body120.lr.ph, label %for.end401, !dbg !3701

for.body120.lr.ph:                                ; preds = %if.end113
  %19 = load i32, ptr %matte, align 8, !tbaa !2806
  %cmp123 = icmp eq i32 %19, 0
  %cmp219766.not = icmp eq i64 %n.0.lcssa838, 0
  %cmp330 = icmp eq ptr %call114, null
  %cmp345.not = icmp eq ptr %call115, null
  %20 = load i32, ptr %resize_image, align 8, !tbaa !2287
  %cmp358 = icmp eq i32 %20, 2
  %conv365 = fpext float %conv43 to double
  %conv366 = sitofp i64 %conv47 to double
  %cmp.i749 = fcmp ogt double %conv365, %conv366
  %x.y.i750 = select i1 %cmp.i749, double %conv365, double %conv366
  %conv368 = sitofp i64 %conv54 to double
  %sub369 = fadd double %conv368, -1.000000e+00
  %cmp.i751 = fcmp olt double %x.y.i750, %sub369
  %x.y.i752 = select i1 %cmp.i751, double %x.y.i750, double %sub369
  %add371 = fadd double %x.y.i752, 5.000000e-01
  %conv372 = fptosi double %add371 to i64
  %sub373 = sub nsw i64 %conv372, %conv47
  %pixel375 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %sub373, i32 1
  %exitcond826.not875 = icmp eq i64 %n.0.lcssa838, 1
  br label %for.body120, !dbg !3701

for.body120:                                      ; preds = %for.body120.lr.ph, %if.end398
  %x.0800 = phi i64 [ 0, %for.body120.lr.ph ], [ %inc400, %if.end398 ]
  %q.0798 = phi ptr [ %call107, %for.body120.lr.ph ], [ %incdec.ptr, %if.end398 ]
  call void @llvm.dbg.value(metadata i64 %x.0800, metadata !3516, metadata !DIExpression()), !dbg !3598
  call void @llvm.dbg.value(metadata ptr %q.0798, metadata !3515, metadata !DIExpression()), !dbg !3598
  %pixel121.sroa.3.0.copyload = load float, ptr %pixel121.sroa.3.0.zero.sroa_idx, align 8, !dbg !3702, !tbaa.struct !3179
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3703
  %pixel121.sroa.9.0.copyload = load float, ptr %pixel121.sroa.9.0.zero.sroa_idx, align 4, !dbg !3702, !tbaa.struct !3181
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3703
  %pixel121.sroa.15.0.copyload = load float, ptr %pixel121.sroa.15.0.zero.sroa_idx, align 8, !dbg !3702, !tbaa.struct !3182
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3703
  %pixel121.sroa.21.0.copyload = load float, ptr %pixel121.sroa.21.0.zero.sroa_idx, align 4, !dbg !3702, !tbaa.struct !3183
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3703
  %pixel121.sroa.27.0.copyload = load float, ptr %pixel121.sroa.27.0.zero.sroa_idx, align 8, !dbg !3702, !tbaa.struct !3184
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata i32 undef, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 416, 32)), !dbg !3703
  br i1 %cmp123, label %for.cond126.preheader, label %for.cond218.preheader, !dbg !3704

for.cond218.preheader:                            ; preds = %for.body120
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3530, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 0, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3703
  br i1 %cmp219766.not, label %if.end275, label %for.body221.lr.ph, !dbg !3706

for.body221.lr.ph:                                ; preds = %for.cond218.preheader
  %21 = load i64, ptr %pixel97, align 8, !tbaa !3106
  %22 = load i64, ptr %columns, align 8, !tbaa !2150
  br label %for.body221, !dbg !3706

for.cond126.preheader:                            ; preds = %for.body120
  call void @llvm.dbg.value(metadata i64 0, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3703
  br i1 %cmp219766.not, label %for.end161, label %for.body129.lr.ph, !dbg !3708

for.body129.lr.ph:                                ; preds = %for.cond126.preheader
  %23 = load i64, ptr %pixel97, align 8, !tbaa !3106
  %24 = load i64, ptr %columns, align 8, !tbaa !2150
  br label %for.body129, !dbg !3708

for.body129:                                      ; preds = %for.body129.for.body129_crit_edge, %for.body129.lr.ph
  %25 = phi i64 [ %23, %for.body129.lr.ph ], [ %.pre830, %for.body129.for.body129_crit_edge ], !dbg !3711
  %i122.0787 = phi i64 [ 0, %for.body129.lr.ph ], [ %inc160, %for.body129.for.body129_crit_edge ]
  %pixel121.sroa.3.0786 = phi float [ %pixel121.sroa.3.0.copyload, %for.body129.lr.ph ], [ %28, %for.body129.for.body129_crit_edge ]
  %pixel121.sroa.9.0785 = phi float [ %pixel121.sroa.9.0.copyload, %for.body129.lr.ph ], [ %30, %for.body129.for.body129_crit_edge ]
  %pixel121.sroa.15.0784 = phi float [ %pixel121.sroa.15.0.copyload, %for.body129.lr.ph ], [ %32, %for.body129.for.body129_crit_edge ]
  %pixel121.sroa.21.0783 = phi float [ %pixel121.sroa.21.0.copyload, %for.body129.lr.ph ], [ %34, %for.body129.for.body129_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %i122.0787, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0786, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0785, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0784, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0783, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3703
  %arrayidx130 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i122.0787, !dbg !3714
  %sub134 = sub nsw i64 %25, %23, !dbg !3715
  %mul136 = mul i64 %sub134, %24, !dbg !3716
  %add137 = add i64 %mul136, %x.0800, !dbg !3717
  call void @llvm.dbg.value(metadata i64 %add137, metadata !3529, metadata !DIExpression()), !dbg !3703
  %26 = load float, ptr %arrayidx130, align 8, !dbg !3718, !tbaa !3132
  call void @llvm.dbg.value(metadata float %26, metadata !3527, metadata !DIExpression()), !dbg !3703
  %add.ptr = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add137, !dbg !3719
  %red = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add137, i32 2, !dbg !3719
  %27 = load i16, ptr %red, align 2, !dbg !3719, !tbaa !2244
  %conv141 = uitofp i16 %27 to float, !dbg !3719
  %28 = call float @llvm.fmuladd.f32(float %26, float %conv141, float %pixel121.sroa.3.0786), !dbg !3720
  call void @llvm.dbg.value(metadata float %28, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3703
  %green = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add137, i32 1, !dbg !3721
  %29 = load i16, ptr %green, align 2, !dbg !3721, !tbaa !2256
  %conv146 = uitofp i16 %29 to float, !dbg !3721
  %30 = call float @llvm.fmuladd.f32(float %26, float %conv146, float %pixel121.sroa.9.0785), !dbg !3722
  call void @llvm.dbg.value(metadata float %30, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3703
  %31 = load i16, ptr %add.ptr, align 2, !dbg !3723, !tbaa !2268
  %conv151 = uitofp i16 %31 to float, !dbg !3723
  %32 = call float @llvm.fmuladd.f32(float %26, float %conv151, float %pixel121.sroa.15.0784), !dbg !3724
  call void @llvm.dbg.value(metadata float %32, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3703
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add137, i32 3, !dbg !3725
  %33 = load i16, ptr %opacity, align 2, !dbg !3725, !tbaa !2280
  %conv156 = uitofp i16 %33 to float, !dbg !3725
  %34 = call float @llvm.fmuladd.f32(float %26, float %conv156, float %pixel121.sroa.21.0783), !dbg !3726
  call void @llvm.dbg.value(metadata float %34, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3703
  %inc160 = add nuw nsw i64 %i122.0787, 1, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %inc160, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %28, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %30, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %32, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %34, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3703
  %exitcond825.not = icmp eq i64 %inc160, %n.0.lcssa838, !dbg !3728
  br i1 %exitcond825.not, label %for.end161, label %for.body129.for.body129_crit_edge, !dbg !3708, !llvm.loop !3729

for.body129.for.body129_crit_edge:                ; preds = %for.body129
  %pixel131.phi.trans.insert = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc160, i32 1
  %.pre830 = load i64, ptr %pixel131.phi.trans.insert, align 8, !dbg !3711, !tbaa !3106
  br label %for.body129, !dbg !3708

for.end161:                                       ; preds = %for.body129, %for.cond126.preheader
  %pixel121.sroa.21.0.lcssa = phi float [ %pixel121.sroa.21.0.copyload, %for.cond126.preheader ], [ %34, %for.body129 ], !dbg !3703
  %pixel121.sroa.15.0.lcssa = phi float [ %pixel121.sroa.15.0.copyload, %for.cond126.preheader ], [ %32, %for.body129 ], !dbg !3703
  %pixel121.sroa.9.0.lcssa = phi float [ %pixel121.sroa.9.0.copyload, %for.cond126.preheader ], [ %30, %for.body129 ], !dbg !3703
  %pixel121.sroa.3.0.lcssa = phi float [ %pixel121.sroa.3.0.copyload, %for.cond126.preheader ], [ %28, %for.body129 ], !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3731
  %cmp.i663 = fcmp ugt float %pixel121.sroa.3.0.lcssa, 0.000000e+00, !dbg !3733
  br i1 %cmp.i663, label %if.end.i665, label %ClampToQuantum.exit, !dbg !3734

if.end.i665:                                      ; preds = %for.end161
  %cmp1.i664 = fcmp ult float %pixel121.sroa.3.0.lcssa, 6.553500e+04, !dbg !3735
  br i1 %cmp1.i664, label %if.end3.i, label %ClampToQuantum.exit, !dbg !3736

if.end3.i:                                        ; preds = %if.end.i665
  %add.i = fadd float %pixel121.sroa.3.0.lcssa, 5.000000e-01, !dbg !3737
  %conv.i = fptoui float %add.i to i16, !dbg !3738
  br label %ClampToQuantum.exit, !dbg !3739

ClampToQuantum.exit:                              ; preds = %for.end161, %if.end.i665, %if.end3.i
  %retval.0.i666 = phi i16 [ %conv.i, %if.end3.i ], [ 0, %for.end161 ], [ -1, %if.end.i665 ], !dbg !3731
  %red164 = getelementptr inbounds %struct._PixelPacket, ptr %q.0798, i64 0, i32 2, !dbg !3740
  store i16 %retval.0.i666, ptr %red164, align 2, !dbg !3740, !tbaa !2244
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3741
  %cmp.i667 = fcmp ugt float %pixel121.sroa.9.0.lcssa, 0.000000e+00, !dbg !3743
  br i1 %cmp.i667, label %if.end.i669, label %ClampToQuantum.exit674, !dbg !3744

if.end.i669:                                      ; preds = %ClampToQuantum.exit
  %cmp1.i668 = fcmp ult float %pixel121.sroa.9.0.lcssa, 6.553500e+04, !dbg !3745
  br i1 %cmp1.i668, label %if.end3.i672, label %ClampToQuantum.exit674, !dbg !3746

if.end3.i672:                                     ; preds = %if.end.i669
  %add.i670 = fadd float %pixel121.sroa.9.0.lcssa, 5.000000e-01, !dbg !3747
  %conv.i671 = fptoui float %add.i670 to i16, !dbg !3748
  br label %ClampToQuantum.exit674, !dbg !3749

ClampToQuantum.exit674:                           ; preds = %ClampToQuantum.exit, %if.end.i669, %if.end3.i672
  %retval.0.i673 = phi i16 [ %conv.i671, %if.end3.i672 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i669 ], !dbg !3741
  %green167 = getelementptr inbounds %struct._PixelPacket, ptr %q.0798, i64 0, i32 1, !dbg !3750
  store i16 %retval.0.i673, ptr %green167, align 2, !dbg !3750, !tbaa !2256
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3751
  %cmp.i675 = fcmp ugt float %pixel121.sroa.15.0.lcssa, 0.000000e+00, !dbg !3753
  br i1 %cmp.i675, label %if.end.i677, label %ClampToQuantum.exit682, !dbg !3754

if.end.i677:                                      ; preds = %ClampToQuantum.exit674
  %cmp1.i676 = fcmp ult float %pixel121.sroa.15.0.lcssa, 6.553500e+04, !dbg !3755
  br i1 %cmp1.i676, label %if.end3.i680, label %ClampToQuantum.exit682, !dbg !3756

if.end3.i680:                                     ; preds = %if.end.i677
  %add.i678 = fadd float %pixel121.sroa.15.0.lcssa, 5.000000e-01, !dbg !3757
  %conv.i679 = fptoui float %add.i678 to i16, !dbg !3758
  br label %ClampToQuantum.exit682, !dbg !3759

ClampToQuantum.exit682:                           ; preds = %ClampToQuantum.exit674, %if.end.i677, %if.end3.i680
  %retval.0.i681 = phi i16 [ %conv.i679, %if.end3.i680 ], [ 0, %ClampToQuantum.exit674 ], [ -1, %if.end.i677 ], !dbg !3751
  store i16 %retval.0.i681, ptr %q.0798, align 2, !dbg !3760, !tbaa !2268
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3761
  %cmp.i683 = fcmp ugt float %pixel121.sroa.21.0.lcssa, 0.000000e+00, !dbg !3763
  br i1 %cmp.i683, label %if.end.i685, label %ClampToQuantum.exit690, !dbg !3764

if.end.i685:                                      ; preds = %ClampToQuantum.exit682
  %cmp1.i684 = fcmp ult float %pixel121.sroa.21.0.lcssa, 6.553500e+04, !dbg !3765
  br i1 %cmp1.i684, label %if.end3.i688, label %ClampToQuantum.exit690, !dbg !3766

if.end3.i688:                                     ; preds = %if.end.i685
  %add.i686 = fadd float %pixel121.sroa.21.0.lcssa, 5.000000e-01, !dbg !3767
  %conv.i687 = fptoui float %add.i686 to i16, !dbg !3768
  br label %ClampToQuantum.exit690, !dbg !3769

ClampToQuantum.exit690:                           ; preds = %ClampToQuantum.exit682, %if.end.i685, %if.end3.i688
  %retval.0.i689 = phi i16 [ %conv.i687, %if.end3.i688 ], [ 0, %ClampToQuantum.exit682 ], [ -1, %if.end.i685 ], !dbg !3761
  %opacity173 = getelementptr inbounds %struct._PixelPacket, ptr %q.0798, i64 0, i32 3, !dbg !3770
  store i16 %retval.0.i689, ptr %opacity173, align 2, !dbg !3770, !tbaa !2280
  %35 = load i32, ptr %colorspace298, align 4, !dbg !3771, !tbaa !2283
  %cmp174 = icmp eq i32 %35, 12, !dbg !3773
  br i1 %cmp174, label %land.lhs.true176, label %if.end356, !dbg !3774

land.lhs.true176:                                 ; preds = %ClampToQuantum.exit690
  %36 = load i32, ptr %colorspace302, align 4, !dbg !3775, !tbaa !2283
  %cmp178 = icmp eq i32 %36, 12, !dbg !3776
  br i1 %cmp178, label %for.cond181.preheader, label %if.end356, !dbg !3777

for.cond181.preheader:                            ; preds = %land.lhs.true176
  call void @llvm.dbg.value(metadata i64 0, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  br i1 %cmp219766.not, label %for.end208, label %for.body184.lr.ph, !dbg !3778

for.body184.lr.ph:                                ; preds = %for.cond181.preheader
  br i1 %cmp330, label %for.body184.us, label %for.body184.lr.ph.split, !dbg !3781

for.body184.us:                                   ; preds = %for.body184.lr.ph, %for.body184.us
  %i122.1794.us = phi i64 [ %inc207.us, %for.body184.us ], [ 0, %for.body184.lr.ph ]
  %pixel121.sroa.27.0793.us = phi float [ %38, %for.body184.us ], [ %pixel121.sroa.27.0.copyload, %for.body184.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i122.1794.us, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0793.us, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  %arrayidx185.us = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i122.1794.us, !dbg !3784
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %37 = load float, ptr %arrayidx185.us, align 8, !dbg !3785, !tbaa !3132
  call void @llvm.dbg.value(metadata float %37, metadata !3527, metadata !DIExpression()), !dbg !3703
  %38 = call float @llvm.fmuladd.f32(float %37, float 0.000000e+00, float %pixel121.sroa.27.0793.us), !dbg !3786
  call void @llvm.dbg.value(metadata float %38, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  %inc207.us = add nuw nsw i64 %i122.1794.us, 1, !dbg !3787
  call void @llvm.dbg.value(metadata i64 %inc207.us, metadata !3528, metadata !DIExpression()), !dbg !3703
  %exitcond827.not = icmp eq i64 %inc207.us, %n.0.lcssa838, !dbg !3788
  br i1 %exitcond827.not, label %for.end208, label %for.body184.us, !dbg !3778, !llvm.loop !3789

for.body184.lr.ph.split:                          ; preds = %for.body184.lr.ph
  %39 = load i64, ptr %pixel97, align 8, !tbaa !3106
  %40 = load i64, ptr %columns, align 8, !tbaa !2150
  call void @llvm.dbg.value(metadata i64 0, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %41 = load float, ptr %6, align 8, !dbg !3785, !tbaa !3132
  call void @llvm.dbg.value(metadata float %41, metadata !3527, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 %39), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 %40, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  call void @llvm.dbg.value(metadata !DIArgList(i64 0, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %x.0800, metadata !3529, metadata !DIExpression()), !dbg !3703
  %add.ptr195873 = getelementptr inbounds i16, ptr %call114, i64 %x.0800, !dbg !3781
  %42 = load i16, ptr %add.ptr195873, align 2, !dbg !3781, !tbaa !2304
  %conv204874 = uitofp i16 %42 to float, !dbg !3781
  %43 = call float @llvm.fmuladd.f32(float %41, float %conv204874, float %pixel121.sroa.27.0.copyload), !dbg !3786
  call void @llvm.dbg.value(metadata float %43, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata i64 1, metadata !3528, metadata !DIExpression()), !dbg !3703
  br i1 %exitcond826.not875, label %for.end208, label %for.body184.for.body184_crit_edge, !dbg !3778, !llvm.loop !3789

for.body184.for.body184_crit_edge:                ; preds = %for.body184.lr.ph.split, %for.body184.for.body184_crit_edge
  %inc207876 = phi i64 [ %inc207, %for.body184.for.body184_crit_edge ], [ 1, %for.body184.lr.ph.split ]
  %44 = phi float [ %47, %for.body184.for.body184_crit_edge ], [ %43, %for.body184.lr.ph.split ]
  %pixel186.phi.trans.insert = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc207876, i32 1
  %.pre831 = load i64, ptr %pixel186.phi.trans.insert, align 8, !dbg !3791, !tbaa !3106
  call void @llvm.dbg.value(metadata i64 %inc207876, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %44, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  %arrayidx185 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc207876, !dbg !3784
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %45 = load float, ptr %arrayidx185, align 8, !dbg !3785, !tbaa !3132
  call void @llvm.dbg.value(metadata float %45, metadata !3527, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 %39), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %sub189 = sub nsw i64 %.pre831, %39, !dbg !3792
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 %40, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %mul191 = mul i64 %sub189, %40, !dbg !3793
  call void @llvm.dbg.value(metadata !DIArgList(i64 %mul191, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %add192 = add i64 %mul191, %x.0800, !dbg !3794
  call void @llvm.dbg.value(metadata i64 %add192, metadata !3529, metadata !DIExpression()), !dbg !3703
  %add.ptr195 = getelementptr inbounds i16, ptr %call114, i64 %add192, !dbg !3781
  %46 = load i16, ptr %add.ptr195, align 2, !dbg !3781, !tbaa !2304
  %conv204 = uitofp i16 %46 to float, !dbg !3781
  %47 = call float @llvm.fmuladd.f32(float %45, float %conv204, float %44), !dbg !3786
  call void @llvm.dbg.value(metadata float %47, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  %inc207 = add nuw nsw i64 %inc207876, 1, !dbg !3787
  call void @llvm.dbg.value(metadata i64 %inc207, metadata !3528, metadata !DIExpression()), !dbg !3703
  %exitcond826.not = icmp eq i64 %inc207, %n.0.lcssa838, !dbg !3788
  br i1 %exitcond826.not, label %for.end208, label %for.body184.for.body184_crit_edge, !dbg !3778, !llvm.loop !3789

for.end208:                                       ; preds = %for.body184.for.body184_crit_edge, %for.body184.us, %for.body184.lr.ph.split, %for.cond181.preheader
  %pixel121.sroa.27.0.lcssa = phi float [ %pixel121.sroa.27.0.copyload, %for.cond181.preheader ], [ %43, %for.body184.lr.ph.split ], [ %38, %for.body184.us ], [ %47, %for.body184.for.body184_crit_edge ], !dbg !3703
  br i1 %cmp345.not, label %if.end356, label %if.then212, !dbg !3795

if.then212:                                       ; preds = %for.end208
  %add.ptr209 = getelementptr inbounds i16, ptr %call115, i64 %x.0800, !dbg !3797
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.lcssa, metadata !2228, metadata !DIExpression()), !dbg !3799
  %cmp.i691 = fcmp ugt float %pixel121.sroa.27.0.lcssa, 0.000000e+00, !dbg !3801
  br i1 %cmp.i691, label %if.end.i693, label %ClampToQuantum.exit698, !dbg !3802

if.end.i693:                                      ; preds = %if.then212
  %cmp1.i692 = fcmp ult float %pixel121.sroa.27.0.lcssa, 6.553500e+04, !dbg !3803
  br i1 %cmp1.i692, label %if.end3.i696, label %ClampToQuantum.exit698, !dbg !3804

if.end3.i696:                                     ; preds = %if.end.i693
  %add.i694 = fadd float %pixel121.sroa.27.0.lcssa, 5.000000e-01, !dbg !3805
  %conv.i695 = fptoui float %add.i694 to i16, !dbg !3806
  br label %ClampToQuantum.exit698, !dbg !3807

ClampToQuantum.exit698:                           ; preds = %if.then212, %if.end.i693, %if.end3.i696
  %retval.0.i697 = phi i16 [ %conv.i695, %if.end3.i696 ], [ 0, %if.then212 ], [ -1, %if.end.i693 ], !dbg !3799
  store i16 %retval.0.i697, ptr %add.ptr209, align 2, !dbg !3797, !tbaa !2304
  br label %if.end356, !dbg !3797

for.body221:                                      ; preds = %for.body221.for.body221_crit_edge, %for.body221.lr.ph
  %48 = phi i64 [ %21, %for.body221.lr.ph ], [ %.pre, %for.body221.for.body221_crit_edge ], !dbg !3808
  %gamma.0772 = phi double [ 0.000000e+00, %for.body221.lr.ph ], [ %add268, %for.body221.for.body221_crit_edge ]
  %i122.2771 = phi i64 [ 0, %for.body221.lr.ph ], [ %inc270, %for.body221.for.body221_crit_edge ]
  %pixel121.sroa.3.1770 = phi float [ %pixel121.sroa.3.0.copyload, %for.body221.lr.ph ], [ %53, %for.body221.for.body221_crit_edge ]
  %pixel121.sroa.9.1769 = phi float [ %pixel121.sroa.9.0.copyload, %for.body221.lr.ph ], [ %55, %for.body221.for.body221_crit_edge ]
  %pixel121.sroa.15.1768 = phi float [ %pixel121.sroa.15.0.copyload, %for.body221.lr.ph ], [ %57, %for.body221.for.body221_crit_edge ]
  %pixel121.sroa.21.1767 = phi float [ %pixel121.sroa.21.0.copyload, %for.body221.lr.ph ], [ %58, %for.body221.for.body221_crit_edge ]
  call void @llvm.dbg.value(metadata double %gamma.0772, metadata !3530, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata i64 %i122.2771, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.3.1770, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.9.1769, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.15.1768, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.21.1767, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3703
  %arrayidx222 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i122.2771, !dbg !3811
  %sub226 = sub nsw i64 %48, %21, !dbg !3812
  %mul228 = mul i64 %sub226, %22, !dbg !3813
  %add229 = add i64 %mul228, %x.0800, !dbg !3814
  call void @llvm.dbg.value(metadata i64 %add229, metadata !3529, metadata !DIExpression()), !dbg !3703
  %49 = load float, ptr %arrayidx222, align 8, !dbg !3815, !tbaa !3132
  %conv232 = fpext float %49 to double, !dbg !3816
  %mul233 = fmul double %conv232, 0x3EF0001000100010, !dbg !3817
  %add.ptr234 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add229, !dbg !3818
  %opacity235 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add229, i32 3, !dbg !3818
  %50 = load i16, ptr %opacity235, align 2, !dbg !3818, !tbaa !2280
  %51 = xor i16 %50, -1, !dbg !3818
  %conv238 = uitofp i16 %51 to double, !dbg !3818
  %mul239 = fmul double %mul233, %conv238, !dbg !3819
  %conv240 = fptrunc double %mul239 to float, !dbg !3816
  call void @llvm.dbg.value(metadata float %conv240, metadata !3527, metadata !DIExpression()), !dbg !3703
  %red242 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add229, i32 2, !dbg !3820
  %52 = load i16, ptr %red242, align 2, !dbg !3820, !tbaa !2244
  %conv244 = uitofp i16 %52 to float, !dbg !3820
  %53 = call float @llvm.fmuladd.f32(float %conv240, float %conv244, float %pixel121.sroa.3.1770), !dbg !3821
  call void @llvm.dbg.value(metadata float %53, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3703
  %green248 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add229, i32 1, !dbg !3822
  %54 = load i16, ptr %green248, align 2, !dbg !3822, !tbaa !2256
  %conv250 = uitofp i16 %54 to float, !dbg !3822
  %55 = call float @llvm.fmuladd.f32(float %conv240, float %conv250, float %pixel121.sroa.9.1769), !dbg !3823
  call void @llvm.dbg.value(metadata float %55, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3703
  %56 = load i16, ptr %add.ptr234, align 2, !dbg !3824, !tbaa !2268
  %conv256 = uitofp i16 %56 to float, !dbg !3824
  %57 = call float @llvm.fmuladd.f32(float %conv240, float %conv256, float %pixel121.sroa.15.1768), !dbg !3825
  call void @llvm.dbg.value(metadata float %57, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3703
  %conv264 = uitofp i16 %50 to float, !dbg !3826
  %58 = call float @llvm.fmuladd.f32(float %49, float %conv264, float %pixel121.sroa.21.1767), !dbg !3827
  call void @llvm.dbg.value(metadata float %58, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3703
  %conv267 = fpext float %conv240 to double, !dbg !3828
  %add268 = fadd double %gamma.0772, %conv267, !dbg !3829
  call void @llvm.dbg.value(metadata double %add268, metadata !3530, metadata !DIExpression()), !dbg !3705
  %inc270 = add nuw nsw i64 %i122.2771, 1, !dbg !3830
  call void @llvm.dbg.value(metadata i64 %inc270, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %53, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %55, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 288, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %57, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 32)), !dbg !3703
  call void @llvm.dbg.value(metadata float %58, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 352, 32)), !dbg !3703
  %exitcond823.not = icmp eq i64 %inc270, %n.0.lcssa838, !dbg !3831
  br i1 %exitcond823.not, label %for.end271, label %for.body221.for.body221_crit_edge, !dbg !3706, !llvm.loop !3832

for.body221.for.body221_crit_edge:                ; preds = %for.body221
  %pixel223.phi.trans.insert = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc270, i32 1
  %.pre = load i64, ptr %pixel223.phi.trans.insert, align 8, !dbg !3808, !tbaa !3106
  br label %for.body221, !dbg !3706

for.end271:                                       ; preds = %for.body221
  %cmp272 = fcmp olt double %add268, 0.000000e+00, !dbg !3834
  br i1 %cmp272, label %if.then274, label %if.end275, !dbg !3836

if.then274:                                       ; preds = %for.end271
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3530, metadata !DIExpression()), !dbg !3705
  br label %if.end275, !dbg !3837

if.end275:                                        ; preds = %for.cond218.preheader, %if.then274, %for.end271
  %pixel121.sroa.3.1.lcssa848 = phi float [ %53, %if.then274 ], [ %53, %for.end271 ], [ %pixel121.sroa.3.0.copyload, %for.cond218.preheader ]
  %pixel121.sroa.9.1.lcssa847 = phi float [ %55, %if.then274 ], [ %55, %for.end271 ], [ %pixel121.sroa.9.0.copyload, %for.cond218.preheader ]
  %pixel121.sroa.15.1.lcssa846 = phi float [ %57, %if.then274 ], [ %57, %for.end271 ], [ %pixel121.sroa.15.0.copyload, %for.cond218.preheader ]
  %pixel121.sroa.21.1.lcssa845 = phi float [ %58, %if.then274 ], [ %58, %for.end271 ], [ %pixel121.sroa.21.0.copyload, %for.cond218.preheader ]
  %gamma.1 = phi double [ 0.000000e+00, %if.then274 ], [ %add268, %for.end271 ], [ 0.000000e+00, %for.cond218.preheader ], !dbg !3705
  call void @llvm.dbg.value(metadata double %gamma.1, metadata !3530, metadata !DIExpression()), !dbg !3705
  call void @llvm.dbg.value(metadata double %gamma.1, metadata !1095, metadata !DIExpression()), !dbg !3838
  %cmp.i699 = fcmp olt double %gamma.1, 0.000000e+00, !dbg !3840
  %cond.i700 = select i1 %cmp.i699, double -1.000000e+00, double 1.000000e+00, !dbg !3841
  call void @llvm.dbg.value(metadata double %cond.i700, metadata !1101, metadata !DIExpression()), !dbg !3838
  %mul.i701 = fmul double %gamma.1, %cond.i700, !dbg !3842
  %cmp1.i702 = fcmp ult double %mul.i701, 1.000000e-15, !dbg !3843
  br i1 %cmp1.i702, label %if.end.i706, label %if.then.i704, !dbg !3844

if.then.i704:                                     ; preds = %if.end275
  %div.i703 = fdiv double 1.000000e+00, %gamma.1, !dbg !3845
  br label %PerceptibleReciprocal.exit708, !dbg !3846

if.end.i706:                                      ; preds = %if.end275
  %div2.i705 = fdiv double %cond.i700, 1.000000e-15, !dbg !3847
  br label %PerceptibleReciprocal.exit708, !dbg !3848

PerceptibleReciprocal.exit708:                    ; preds = %if.then.i704, %if.end.i706
  %retval.0.i707 = phi double [ %div.i703, %if.then.i704 ], [ %div2.i705, %if.end.i706 ], !dbg !3838
  call void @llvm.dbg.value(metadata double %retval.0.i707, metadata !3530, metadata !DIExpression()), !dbg !3705
  %conv278 = fpext float %pixel121.sroa.3.1.lcssa848 to double, !dbg !3849
  %mul279 = fmul double %retval.0.i707, %conv278, !dbg !3849
  %conv280 = fptrunc double %mul279 to float, !dbg !3849
  call void @llvm.dbg.value(metadata float %conv280, metadata !2228, metadata !DIExpression()), !dbg !3850
  %cmp.i709 = fcmp ugt float %conv280, 0.000000e+00, !dbg !3852
  br i1 %cmp.i709, label %if.end.i711, label %ClampToQuantum.exit716, !dbg !3853

if.end.i711:                                      ; preds = %PerceptibleReciprocal.exit708
  %cmp1.i710 = fcmp ult float %conv280, 6.553500e+04, !dbg !3854
  br i1 %cmp1.i710, label %if.end3.i714, label %ClampToQuantum.exit716, !dbg !3855

if.end3.i714:                                     ; preds = %if.end.i711
  %add.i712 = fadd float %conv280, 5.000000e-01, !dbg !3856
  %conv.i713 = fptoui float %add.i712 to i16, !dbg !3857
  br label %ClampToQuantum.exit716, !dbg !3858

ClampToQuantum.exit716:                           ; preds = %PerceptibleReciprocal.exit708, %if.end.i711, %if.end3.i714
  %retval.0.i715 = phi i16 [ %conv.i713, %if.end3.i714 ], [ 0, %PerceptibleReciprocal.exit708 ], [ -1, %if.end.i711 ], !dbg !3850
  %red282 = getelementptr inbounds %struct._PixelPacket, ptr %q.0798, i64 0, i32 2, !dbg !3849
  store i16 %retval.0.i715, ptr %red282, align 2, !dbg !3849, !tbaa !2244
  %conv284 = fpext float %pixel121.sroa.9.1.lcssa847 to double, !dbg !3859
  %mul285 = fmul double %retval.0.i707, %conv284, !dbg !3859
  %conv286 = fptrunc double %mul285 to float, !dbg !3859
  call void @llvm.dbg.value(metadata float %conv286, metadata !2228, metadata !DIExpression()), !dbg !3860
  %cmp.i717 = fcmp ugt float %conv286, 0.000000e+00, !dbg !3862
  br i1 %cmp.i717, label %if.end.i719, label %ClampToQuantum.exit724, !dbg !3863

if.end.i719:                                      ; preds = %ClampToQuantum.exit716
  %cmp1.i718 = fcmp ult float %conv286, 6.553500e+04, !dbg !3864
  br i1 %cmp1.i718, label %if.end3.i722, label %ClampToQuantum.exit724, !dbg !3865

if.end3.i722:                                     ; preds = %if.end.i719
  %add.i720 = fadd float %conv286, 5.000000e-01, !dbg !3866
  %conv.i721 = fptoui float %add.i720 to i16, !dbg !3867
  br label %ClampToQuantum.exit724, !dbg !3868

ClampToQuantum.exit724:                           ; preds = %ClampToQuantum.exit716, %if.end.i719, %if.end3.i722
  %retval.0.i723 = phi i16 [ %conv.i721, %if.end3.i722 ], [ 0, %ClampToQuantum.exit716 ], [ -1, %if.end.i719 ], !dbg !3860
  %green288 = getelementptr inbounds %struct._PixelPacket, ptr %q.0798, i64 0, i32 1, !dbg !3859
  store i16 %retval.0.i723, ptr %green288, align 2, !dbg !3859, !tbaa !2256
  %conv290 = fpext float %pixel121.sroa.15.1.lcssa846 to double, !dbg !3869
  %mul291 = fmul double %retval.0.i707, %conv290, !dbg !3869
  %conv292 = fptrunc double %mul291 to float, !dbg !3869
  call void @llvm.dbg.value(metadata float %conv292, metadata !2228, metadata !DIExpression()), !dbg !3870
  %cmp.i725 = fcmp ugt float %conv292, 0.000000e+00, !dbg !3872
  br i1 %cmp.i725, label %if.end.i727, label %ClampToQuantum.exit732, !dbg !3873

if.end.i727:                                      ; preds = %ClampToQuantum.exit724
  %cmp1.i726 = fcmp ult float %conv292, 6.553500e+04, !dbg !3874
  br i1 %cmp1.i726, label %if.end3.i730, label %ClampToQuantum.exit732, !dbg !3875

if.end3.i730:                                     ; preds = %if.end.i727
  %add.i728 = fadd float %conv292, 5.000000e-01, !dbg !3876
  %conv.i729 = fptoui float %add.i728 to i16, !dbg !3877
  br label %ClampToQuantum.exit732, !dbg !3878

ClampToQuantum.exit732:                           ; preds = %ClampToQuantum.exit724, %if.end.i727, %if.end3.i730
  %retval.0.i731 = phi i16 [ %conv.i729, %if.end3.i730 ], [ 0, %ClampToQuantum.exit724 ], [ -1, %if.end.i727 ], !dbg !3870
  store i16 %retval.0.i731, ptr %q.0798, align 2, !dbg !3869, !tbaa !2268
  call void @llvm.dbg.value(metadata float %58, metadata !2228, metadata !DIExpression()), !dbg !3879
  %cmp.i733 = fcmp ugt float %pixel121.sroa.21.1.lcssa845, 0.000000e+00, !dbg !3881
  br i1 %cmp.i733, label %if.end.i735, label %ClampToQuantum.exit740, !dbg !3882

if.end.i735:                                      ; preds = %ClampToQuantum.exit732
  %cmp1.i734 = fcmp ult float %pixel121.sroa.21.1.lcssa845, 6.553500e+04, !dbg !3883
  br i1 %cmp1.i734, label %if.end3.i738, label %ClampToQuantum.exit740, !dbg !3884

if.end3.i738:                                     ; preds = %if.end.i735
  %add.i736 = fadd float %pixel121.sroa.21.1.lcssa845, 5.000000e-01, !dbg !3885
  %conv.i737 = fptoui float %add.i736 to i16, !dbg !3886
  br label %ClampToQuantum.exit740, !dbg !3887

ClampToQuantum.exit740:                           ; preds = %ClampToQuantum.exit732, %if.end.i735, %if.end3.i738
  %retval.0.i739 = phi i16 [ %conv.i737, %if.end3.i738 ], [ 0, %ClampToQuantum.exit732 ], [ -1, %if.end.i735 ], !dbg !3879
  %opacity297 = getelementptr inbounds %struct._PixelPacket, ptr %q.0798, i64 0, i32 3, !dbg !3888
  store i16 %retval.0.i739, ptr %opacity297, align 2, !dbg !3888, !tbaa !2280
  %59 = load i32, ptr %colorspace298, align 4, !dbg !3889, !tbaa !2283
  %cmp299 = icmp eq i32 %59, 12, !dbg !3891
  br i1 %cmp299, label %land.lhs.true301, label %if.end356, !dbg !3892

land.lhs.true301:                                 ; preds = %ClampToQuantum.exit740
  %60 = load i32, ptr %colorspace302, align 4, !dbg !3893, !tbaa !2283
  %cmp303 = icmp eq i32 %60, 12, !dbg !3894
  br i1 %cmp303, label %for.cond306.preheader, label %if.end356, !dbg !3895

for.cond306.preheader:                            ; preds = %land.lhs.true301
  call void @llvm.dbg.value(metadata i64 0, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.0.copyload, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  br i1 %cmp219766.not, label %for.end343, label %for.body309.lr.ph, !dbg !3896

for.body309.lr.ph:                                ; preds = %for.cond306.preheader
  %61 = load i64, ptr %pixel97, align 8, !tbaa !3106
  %62 = load i64, ptr %columns, align 8, !tbaa !2150
  br label %for.body309, !dbg !3896

for.body309:                                      ; preds = %cond.end336.for.body309_crit_edge, %for.body309.lr.ph
  %63 = phi i64 [ %61, %for.body309.lr.ph ], [ %.pre829, %cond.end336.for.body309_crit_edge ], !dbg !3899
  %i122.3780 = phi i64 [ 0, %for.body309.lr.ph ], [ %inc342, %cond.end336.for.body309_crit_edge ]
  %pixel121.sroa.27.1779 = phi float [ %pixel121.sroa.27.0.copyload, %for.body309.lr.ph ], [ %68, %cond.end336.for.body309_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %i122.3780, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata float %pixel121.sroa.27.1779, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  %arrayidx310 = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %i122.3780, !dbg !3902
  %sub314 = sub nsw i64 %63, %61, !dbg !3903
  %mul316 = mul i64 %sub314, %62, !dbg !3904
  %add317 = add i64 %mul316, %x.0800, !dbg !3905
  call void @llvm.dbg.value(metadata i64 %add317, metadata !3529, metadata !DIExpression()), !dbg !3703
  %64 = load float, ptr %arrayidx310, align 8, !dbg !3906, !tbaa !3132
  %conv320 = fpext float %64 to double, !dbg !3907
  %mul321 = fmul double %conv320, 0x3EF0001000100010, !dbg !3908
  %opacity323 = getelementptr inbounds %struct._PixelPacket, ptr %call105, i64 %add317, i32 3, !dbg !3909
  %65 = load i16, ptr %opacity323, align 2, !dbg !3909, !tbaa !2280
  %66 = xor i16 %65, -1, !dbg !3909
  %conv326 = uitofp i16 %66 to double, !dbg !3909
  %mul327 = fmul double %mul321, %conv326, !dbg !3910
  %conv328 = fptrunc double %mul327 to float, !dbg !3907
  call void @llvm.dbg.value(metadata float %conv328, metadata !3527, metadata !DIExpression()), !dbg !3703
  br i1 %cmp330, label %cond.end336, label %cond.false333, !dbg !3911

cond.false333:                                    ; preds = %for.body309
  %add.ptr329 = getelementptr inbounds i16, ptr %call114, i64 %add317, !dbg !3911
  %67 = load i16, ptr %add.ptr329, align 2, !dbg !3911, !tbaa !2304
  %conv335 = zext i16 %67 to i32, !dbg !3911
  br label %cond.end336, !dbg !3911

cond.end336:                                      ; preds = %for.body309, %cond.false333
  %cond337 = phi i32 [ %conv335, %cond.false333 ], [ 0, %for.body309 ], !dbg !3911
  %conv338 = sitofp i32 %cond337 to float, !dbg !3911
  %68 = call float @llvm.fmuladd.f32(float %conv328, float %conv338, float %pixel121.sroa.27.1779), !dbg !3912
  call void @llvm.dbg.value(metadata float %68, metadata !3523, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 32)), !dbg !3703
  %inc342 = add nuw nsw i64 %i122.3780, 1, !dbg !3913
  call void @llvm.dbg.value(metadata i64 %inc342, metadata !3528, metadata !DIExpression()), !dbg !3703
  %exitcond824.not = icmp eq i64 %inc342, %n.0.lcssa838, !dbg !3914
  br i1 %exitcond824.not, label %for.end343, label %cond.end336.for.body309_crit_edge, !dbg !3896, !llvm.loop !3915

cond.end336.for.body309_crit_edge:                ; preds = %cond.end336
  %pixel311.phi.trans.insert = getelementptr inbounds %struct._ContributionInfo, ptr %6, i64 %inc342, i32 1
  %.pre829 = load i64, ptr %pixel311.phi.trans.insert, align 8, !dbg !3899, !tbaa !3106
  br label %for.body309, !dbg !3896

for.end343:                                       ; preds = %cond.end336, %for.cond306.preheader
  %pixel121.sroa.27.1.lcssa = phi float [ %pixel121.sroa.27.0.copyload, %for.cond306.preheader ], [ %68, %cond.end336 ], !dbg !3703
  br i1 %cmp345.not, label %if.end356, label %if.then347, !dbg !3917

if.then347:                                       ; preds = %for.end343
  %add.ptr344 = getelementptr inbounds i16, ptr %call115, i64 %x.0800, !dbg !3919
  %conv349 = fpext float %pixel121.sroa.27.1.lcssa to double, !dbg !3919
  %mul350 = fmul double %retval.0.i707, %conv349, !dbg !3919
  %conv351 = fptrunc double %mul350 to float, !dbg !3919
  call void @llvm.dbg.value(metadata float %conv351, metadata !2228, metadata !DIExpression()), !dbg !3921
  %cmp.i741 = fcmp ugt float %conv351, 0.000000e+00, !dbg !3923
  br i1 %cmp.i741, label %if.end.i743, label %ClampToQuantum.exit748, !dbg !3924

if.end.i743:                                      ; preds = %if.then347
  %cmp1.i742 = fcmp ult float %conv351, 6.553500e+04, !dbg !3925
  br i1 %cmp1.i742, label %if.end3.i746, label %ClampToQuantum.exit748, !dbg !3926

if.end3.i746:                                     ; preds = %if.end.i743
  %add.i744 = fadd float %conv351, 5.000000e-01, !dbg !3927
  %conv.i745 = fptoui float %add.i744 to i16, !dbg !3928
  br label %ClampToQuantum.exit748, !dbg !3929

ClampToQuantum.exit748:                           ; preds = %if.then347, %if.end.i743, %if.end3.i746
  %retval.0.i747 = phi i16 [ %conv.i745, %if.end3.i746 ], [ 0, %if.then347 ], [ -1, %if.end.i743 ], !dbg !3921
  store i16 %retval.0.i747, ptr %add.ptr344, align 2, !dbg !3919, !tbaa !2304
  br label %if.end356, !dbg !3919

if.end356:                                        ; preds = %ClampToQuantum.exit740, %land.lhs.true301, %ClampToQuantum.exit748, %for.end343, %ClampToQuantum.exit690, %land.lhs.true176, %ClampToQuantum.exit698, %for.end208
  br i1 %cmp358, label %land.lhs.true360, label %if.end398, !dbg !3930

land.lhs.true360:                                 ; preds = %if.end356
  %69 = load i32, ptr %image, align 8, !dbg !3932, !tbaa !2287
  %cmp362 = icmp eq i32 %69, 2, !dbg !3933
  br i1 %cmp362, label %if.then364, label %if.end398, !dbg !3934

if.then364:                                       ; preds = %land.lhs.true360
  call void @llvm.dbg.value(metadata double %conv365, metadata !3003, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata double %conv366, metadata !3008, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata double %x.y.i750, metadata !3087, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata double %sub369, metadata !3090, metadata !DIExpression()), !dbg !3938
  call void @llvm.dbg.value(metadata i64 undef, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %add.ptr382 = getelementptr inbounds i16, ptr %call115, i64 %x.0800, !dbg !3940
  br i1 %cmp345.not, label %if.end398, label %if.then385, !dbg !3943

if.then385:                                       ; preds = %if.then364
  call void @llvm.dbg.value(metadata i64 undef, metadata !3528, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  br i1 %cmp330, label %cond.end393, label %cond.false390, !dbg !3940

cond.false390:                                    ; preds = %if.then385
  call void @llvm.dbg.value(metadata i64 %conv372, metadata !3528, metadata !DIExpression()), !dbg !3703
  %70 = load i64, ptr %pixel375, align 8, !dbg !3944, !tbaa !3106
  call void @llvm.dbg.value(metadata !DIArgList(i64 %70, i64 undef, i64 undef, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %71 = load i64, ptr %pixel97, align 8, !dbg !3945, !tbaa !3106
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 undef, i64 %71), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %sub378 = sub nsw i64 %70, %71, !dbg !3946
  call void @llvm.dbg.value(metadata !DIArgList(i64 %sub378, i64 undef, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %72 = load i64, ptr %columns, align 8, !dbg !3947, !tbaa !2150
  call void @llvm.dbg.value(metadata !DIArgList(i64 undef, i64 undef, i64 %72, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_minus, DW_OP_LLVM_arg, 2, DW_OP_mul, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %mul380 = mul i64 %sub378, %72, !dbg !3948
  call void @llvm.dbg.value(metadata !DIArgList(i64 %mul380, i64 undef), metadata !3529, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3703
  %add381 = add i64 %mul380, %x.0800, !dbg !3949
  call void @llvm.dbg.value(metadata i64 %add381, metadata !3529, metadata !DIExpression()), !dbg !3703
  %add.ptr386 = getelementptr inbounds i16, ptr %call114, i64 %add381, !dbg !3940
  %73 = load i16, ptr %add.ptr386, align 2, !dbg !3940, !tbaa !2304
  br label %cond.end393, !dbg !3940

cond.end393:                                      ; preds = %if.then385, %cond.false390
  %cond394 = phi i16 [ %73, %cond.false390 ], [ 0, %if.then385 ], !dbg !3940
  store i16 %cond394, ptr %add.ptr382, align 2, !dbg !3940, !tbaa !2304
  br label %if.end398, !dbg !3940

if.end398:                                        ; preds = %if.then364, %cond.end393, %land.lhs.true360, %if.end356
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0798, i64 1, !dbg !3950
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3515, metadata !DIExpression()), !dbg !3598
  %inc400 = add nuw nsw i64 %x.0800, 1, !dbg !3951
  call void @llvm.dbg.value(metadata i64 %inc400, metadata !3516, metadata !DIExpression()), !dbg !3598
  %exitcond828.not = icmp eq i64 %inc400, %18, !dbg !3700
  br i1 %exitcond828.not, label %for.end401, label %for.body120, !dbg !3701, !llvm.loop !3952

for.end401:                                       ; preds = %if.end398, %if.end113
  %call402 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call29, ptr noundef %exception) #26, !dbg !3954
  %cmp403 = icmp ne i32 %call402, 0, !dbg !3956
  %spec.select = zext i1 %cmp403 to i32, !dbg !3957
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !3500, metadata !DIExpression()), !dbg !3536
  %74 = load ptr, ptr %progress_monitor, align 8, !dbg !3958, !tbaa !2314
  %cmp407.not = icmp eq ptr %74, null, !dbg !3959
  br i1 %cmp407.not, label %cleanup, label %SetImageProgress.exit, !dbg !3960

SetImageProgress.exit:                            ; preds = %for.end401
  %75 = load i64, ptr %offset, align 8, !dbg !3961, !tbaa !2853
  %inc410 = add nsw i64 %75, 1, !dbg !3961
  store i64 %inc410, ptr %offset, align 8, !dbg !3961, !tbaa !2853
  call void @llvm.dbg.value(metadata ptr %image, metadata !2319, metadata !DIExpression()) #22, !dbg !3962
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2325, metadata !DIExpression()) #22, !dbg !3962
  call void @llvm.dbg.value(metadata i64 %75, metadata !2326, metadata !DIExpression()) #22, !dbg !3962
  call void @llvm.dbg.value(metadata i64 %span, metadata !2327, metadata !DIExpression()) #22, !dbg !3962
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !3964
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2328, metadata !DIExpression()) #22, !dbg !3965
  %call.i754 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.30, ptr noundef nonnull %filename.i) #22, !dbg !3966
  %76 = load ptr, ptr %progress_monitor, align 8, !dbg !3967, !tbaa !2314
  %77 = load ptr, ptr %client_data.i, align 8, !dbg !3968, !tbaa !2336
  %call4.i = call i32 %76(ptr noundef nonnull %message.i, i64 noundef %75, i64 noundef %span, ptr noundef %77) #22, !dbg !3969
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !3970
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !3533, metadata !DIExpression()), !dbg !3971
  %cmp412 = icmp eq i32 %call4.i, 0, !dbg !3972
  %spec.select642 = select i1 %cmp412, i32 0, i32 %spec.select, !dbg !3974
  call void @llvm.dbg.value(metadata i32 %spec.select642, metadata !3500, metadata !DIExpression()), !dbg !3536
  br label %cleanup, !dbg !3975

cleanup:                                          ; preds = %for.end401, %SetImageProgress.exit, %if.end95, %for.body
  %status.4 = phi i32 [ 0, %for.body ], [ 0, %if.end95 ], [ %spec.select642, %SetImageProgress.exit ], [ %spec.select, %for.end401 ], !dbg !3536
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !3500, metadata !DIExpression()), !dbg !3536
  %inc429 = add nuw nsw i64 %y.0808, 1, !dbg !3976
  call void @llvm.dbg.value(metadata i64 %inc429, metadata !3504, metadata !DIExpression()), !dbg !3536
  %78 = load i64, ptr %rows, align 8, !dbg !3594, !tbaa !2154
  %cmp30 = icmp slt i64 %inc429, %78, !dbg !3595
  br i1 %cmp30, label %for.body, label %for.end430, !dbg !3596, !llvm.loop !3977

for.end430:                                       ; preds = %cleanup, %PerceptibleReciprocal.exit
  %status.0.lcssa = phi i32 [ 1, %PerceptibleReciprocal.exit ], [ %status.4, %cleanup ], !dbg !3979
  %call431 = call ptr @DestroyCacheView(ptr noundef %call29) #22, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %call431, metadata !3497, metadata !DIExpression()), !dbg !3536
  %call432 = call ptr @DestroyCacheView(ptr noundef %call28) #22, !dbg !3981
  call void @llvm.dbg.value(metadata ptr %call432, metadata !3496, metadata !DIExpression()), !dbg !3536
  call void @llvm.dbg.value(metadata ptr %call18, metadata !3461, metadata !DIExpression()) #22, !dbg !3982
  call void @llvm.dbg.value(metadata i64 0, metadata !3466, metadata !DIExpression()) #22, !dbg !3982
  %call14.i = call i64 @GetMagickResourceLimit(i32 noundef 6) #22, !dbg !3984
  %cmp15.i = icmp sgt i64 %call14.i, 0, !dbg !3985
  br i1 %cmp15.i, label %for.body.i, label %DestroyContributionThreadSet.exit, !dbg !3986

for.body.i:                                       ; preds = %for.end430, %for.inc.i
  %i.016.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %for.end430 ]
  call void @llvm.dbg.value(metadata i64 %i.016.i, metadata !3466, metadata !DIExpression()) #22, !dbg !3982
  %arrayidx.i = getelementptr inbounds ptr, ptr %call18, i64 %i.016.i, !dbg !3987
  %79 = load ptr, ptr %arrayidx.i, align 8, !dbg !3987, !tbaa !1434
  %cmp1.not.i = icmp eq ptr %79, null, !dbg !3988
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i757, !dbg !3989

if.then.i757:                                     ; preds = %for.body.i
  %call3.i = call ptr @RelinquishAlignedMemory(ptr noundef nonnull %79) #22, !dbg !3990
  store ptr %call3.i, ptr %arrayidx.i, align 8, !dbg !3991, !tbaa !1434
  br label %for.inc.i, !dbg !3992

for.inc.i:                                        ; preds = %if.then.i757, %for.body.i
  %inc.i = add nuw nsw i64 %i.016.i, 1, !dbg !3993
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !3466, metadata !DIExpression()) #22, !dbg !3982
  %call.i758 = call i64 @GetMagickResourceLimit(i32 noundef 6) #22, !dbg !3984
  %cmp.i759 = icmp slt i64 %inc.i, %call.i758, !dbg !3985
  br i1 %cmp.i759, label %for.body.i, label %DestroyContributionThreadSet.exit, !dbg !3986, !llvm.loop !3994

DestroyContributionThreadSet.exit:                ; preds = %for.inc.i, %for.end430
  %call5.i = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call18) #22, !dbg !3996
  call void @llvm.dbg.value(metadata ptr %call5.i, metadata !3461, metadata !DIExpression()) #22, !dbg !3982
  call void @llvm.dbg.value(metadata ptr undef, metadata !3499, metadata !DIExpression()), !dbg !3536
  br label %cleanup434, !dbg !3997

cleanup434:                                       ; preds = %DestroyContributionThreadSet.exit, %if.then21, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then21 ], [ %status.0.lcssa, %DestroyContributionThreadSet.exit ], !dbg !3536
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %zero) #22, !dbg !3998
  ret i32 %retval.0, !dbg !3998
}

; Function Attrs: nounwind uwtable
define dso_local ptr @SampleImage(ptr noundef %image, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) local_unnamed_addr #0 !dbg !3999 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %geometry_info = alloca %struct._GeometryInfo, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !4001, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 %columns, metadata !4002, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 %rows, metadata !4003, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr %exception, metadata !4004, metadata !DIExpression()), !dbg !4040
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4041
  %0 = load i32, ptr %debug, align 8, !dbg !4041, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !4043
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4044

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4045
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3130, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !4046
  br label %if.end, !dbg !4047

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq i64 %columns, 0, !dbg !4048
  %cmp2 = icmp eq i64 %rows, 0
  %or.cond = or i1 %cmp1, %cmp2, !dbg !4050
  br i1 %or.cond, label %if.then3, label %if.end7, !dbg !4050

if.then3:                                         ; preds = %if.end
  %filename4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4051
  %call6 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3134, i32 noundef 465, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename4) #22, !dbg !4051
  br label %cleanup159, !dbg !4051

if.end7:                                          ; preds = %if.end
  %columns8 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !4053
  %1 = load i64, ptr %columns8, align 8, !dbg !4053, !tbaa !2150
  %cmp9 = icmp eq i64 %1, %columns, !dbg !4055
  br i1 %cmp9, label %land.lhs.true, label %if.end14, !dbg !4056

land.lhs.true:                                    ; preds = %if.end7
  %rows10 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !4057
  %2 = load i64, ptr %rows10, align 8, !dbg !4057, !tbaa !2154
  %cmp11 = icmp eq i64 %2, %rows, !dbg !4058
  br i1 %cmp11, label %if.then12, label %if.end14, !dbg !4059

if.then12:                                        ; preds = %land.lhs.true
  %call13 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #22, !dbg !4060
  br label %cleanup159, !dbg !4061

if.end14:                                         ; preds = %land.lhs.true, %if.end7
  %call15 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %columns, i64 noundef %rows, i32 noundef 1, ptr noundef %exception) #22, !dbg !4062
  call void @llvm.dbg.value(metadata ptr %call15, metadata !4007, metadata !DIExpression()), !dbg !4040
  %cmp16 = icmp eq ptr %call15, null, !dbg !4063
  br i1 %cmp16, label %cleanup159, label %if.end18, !dbg !4065

if.end18:                                         ; preds = %if.end14
  call void @llvm.dbg.value(metadata double 0x3FDFFFFFFFFFFFEE, metadata !4013, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4040
  call void @llvm.dbg.value(metadata double 0x3FDFFFFFFFFFFFEE, metadata !4013, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4040
  %call21 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.35) #22, !dbg !4066
  call void @llvm.dbg.value(metadata ptr %call21, metadata !4014, metadata !DIExpression()), !dbg !4067
  %cmp22.not = icmp eq ptr %call21, null, !dbg !4068
  br i1 %cmp22.not, label %if.end34, label %if.then23, !dbg !4069

if.then23:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %geometry_info) #22, !dbg !4070
  call void @llvm.dbg.declare(metadata ptr %geometry_info, metadata !4016, metadata !DIExpression()), !dbg !4071
  %call24 = call i32 @ParseGeometry(ptr noundef nonnull %call21, ptr noundef nonnull %geometry_info) #22, !dbg !4072
  %call25 = call i32 @ParseGeometry(ptr noundef nonnull %call21, ptr noundef nonnull %geometry_info) #22, !dbg !4073
  call void @llvm.dbg.value(metadata i32 %call25, metadata !4027, metadata !DIExpression()), !dbg !4074
  %3 = load double, ptr %geometry_info, align 8, !dbg !4075, !tbaa !4076
  %div = fdiv double %3, 1.000000e+02, !dbg !4078
  %sub = fadd double %div, -1.000000e-15, !dbg !4079
  call void @llvm.dbg.value(metadata double %sub, metadata !4013, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4040
  call void @llvm.dbg.value(metadata double %sub, metadata !4013, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4040
  %and = and i32 %call25, 8, !dbg !4080
  %cmp28.not = icmp eq i32 %and, 0, !dbg !4082
  br i1 %cmp28.not, label %if.end33, label %if.then29, !dbg !4083

if.then29:                                        ; preds = %if.then23
  %sigma = getelementptr inbounds %struct._GeometryInfo, ptr %geometry_info, i64 0, i32 1, !dbg !4084
  %4 = load double, ptr %sigma, align 8, !dbg !4084, !tbaa !4085
  %div30 = fdiv double %4, 1.000000e+02, !dbg !4086
  %sub31 = fadd double %div30, -1.000000e-15, !dbg !4087
  call void @llvm.dbg.value(metadata double %sub31, metadata !4013, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4040
  br label %if.end33, !dbg !4088

if.end33:                                         ; preds = %if.then29, %if.then23
  %sample_offset.sroa.5.0 = phi double [ %sub31, %if.then29 ], [ %sub, %if.then23 ], !dbg !4074
  call void @llvm.dbg.value(metadata double %sample_offset.sroa.5.0, metadata !4013, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4040
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %geometry_info) #22, !dbg !4089
  br label %if.end34, !dbg !4090

if.end34:                                         ; preds = %if.end33, %if.end18
  %sample_offset.sroa.5.1 = phi double [ %sample_offset.sroa.5.0, %if.end33 ], [ 0x3FDFFFFFFFFFFFEE, %if.end18 ], !dbg !4040
  %sample_offset.sroa.0.0 = phi double [ %sub, %if.end33 ], [ 0x3FDFFFFFFFFFFFEE, %if.end18 ], !dbg !4040
  call void @llvm.dbg.value(metadata double %sample_offset.sroa.0.0, metadata !4013, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4040
  call void @llvm.dbg.value(metadata double %sample_offset.sroa.5.1, metadata !4013, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4040
  %columns35 = getelementptr inbounds %struct._Image, ptr %call15, i64 0, i32 7, !dbg !4091
  %5 = load i64, ptr %columns35, align 8, !dbg !4091, !tbaa !2150
  %call36 = call ptr @AcquireQuantumMemory(i64 noundef %5, i64 noundef 8) #27, !dbg !4092
  call void @llvm.dbg.value(metadata ptr %call36, metadata !4011, metadata !DIExpression()), !dbg !4040
  %cmp37 = icmp eq ptr %call36, null, !dbg !4093
  br i1 %cmp37, label %if.then38, label %for.cond.preheader, !dbg !4095

for.cond.preheader:                               ; preds = %if.end34
  call void @llvm.dbg.value(metadata i64 0, metadata !4010, metadata !DIExpression()), !dbg !4040
  %6 = load i64, ptr %columns35, align 8, !dbg !4096, !tbaa !2150
  %cmp45245 = icmp sgt i64 %6, 0, !dbg !4099
  br i1 %cmp45245, label %for.body, label %for.end, !dbg !4100

if.then38:                                        ; preds = %if.end34
  %call39 = call ptr @DestroyImage(ptr noundef nonnull %call15) #22, !dbg !4101
  call void @llvm.dbg.value(metadata ptr %call39, metadata !4007, metadata !DIExpression()), !dbg !4040
  %filename40 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4103
  %call42 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3172, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename40) #22, !dbg !4103
  br label %cleanup159, !dbg !4103

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %7 = phi i64 [ %9, %for.body ], [ %6, %for.cond.preheader ]
  %x.0246 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0246, metadata !4010, metadata !DIExpression()), !dbg !4040
  %conv = sitofp i64 %x.0246 to double, !dbg !4105
  %add = fadd double %sample_offset.sroa.0.0, %conv, !dbg !4106
  %8 = load i64, ptr %columns8, align 8, !dbg !4107, !tbaa !2150
  %conv48 = uitofp i64 %8 to double, !dbg !4108
  %mul = fmul double %add, %conv48, !dbg !4109
  %conv50 = uitofp i64 %7 to double, !dbg !4110
  %div51 = fdiv double %mul, %conv50, !dbg !4111
  %conv52 = fptosi double %div51 to i64, !dbg !4112
  %arrayidx = getelementptr inbounds i64, ptr %call36, i64 %x.0246, !dbg !4113
  store i64 %conv52, ptr %arrayidx, align 8, !dbg !4114, !tbaa !4115
  %inc = add nuw nsw i64 %x.0246, 1, !dbg !4116
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4010, metadata !DIExpression()), !dbg !4040
  %9 = load i64, ptr %columns35, align 8, !dbg !4096, !tbaa !2150
  %cmp45 = icmp slt i64 %inc, %9, !dbg !4099
  br i1 %cmp45, label %for.body, label %for.end, !dbg !4100, !llvm.loop !4117

for.end:                                          ; preds = %for.body, %for.cond.preheader
  call void @llvm.dbg.value(metadata i32 1, metadata !4008, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 0, metadata !4009, metadata !DIExpression()), !dbg !4040
  %call53 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #22, !dbg !4119
  call void @llvm.dbg.value(metadata ptr %call53, metadata !4005, metadata !DIExpression()), !dbg !4040
  %call54 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call15, ptr noundef %exception) #22, !dbg !4120
  call void @llvm.dbg.value(metadata ptr %call54, metadata !4006, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 0, metadata !4012, metadata !DIExpression()), !dbg !4040
  %rows56 = getelementptr inbounds %struct._Image, ptr %call15, i64 0, i32 8
  %10 = load i64, ptr %rows56, align 8, !dbg !4121, !tbaa !2154
  %cmp57259 = icmp sgt i64 %10, 0, !dbg !4122
  br i1 %cmp57259, label %for.body59.lr.ph, label %for.end149, !dbg !4123

for.body59.lr.ph:                                 ; preds = %for.end
  %rows68 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  %colorspace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %progress_monitor = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body59, !dbg !4123

for.body59:                                       ; preds = %for.body59.lr.ph, %cleanup
  %11 = phi i64 [ %10, %for.body59.lr.ph ], [ %28, %cleanup ]
  %status.0262 = phi i32 [ 1, %for.body59.lr.ph ], [ %status.4, %cleanup ]
  %progress.0261 = phi i64 [ 0, %for.body59.lr.ph ], [ %progress.2, %cleanup ]
  %y.0260 = phi i64 [ 0, %for.body59.lr.ph ], [ %inc148, %cleanup ]
  call void @llvm.dbg.value(metadata i32 %status.0262, metadata !4008, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 %progress.0261, metadata !4009, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 %y.0260, metadata !4012, metadata !DIExpression()), !dbg !4040
  %cmp61 = icmp eq i32 %status.0262, 0, !dbg !4124
  br i1 %cmp61, label %cleanup, label %if.end64, !dbg !4126

if.end64:                                         ; preds = %for.body59
  %conv65 = sitofp i64 %y.0260 to double, !dbg !4127
  %add67 = fadd double %sample_offset.sroa.5.1, %conv65, !dbg !4128
  %12 = load i64, ptr %rows68, align 8, !dbg !4129, !tbaa !2154
  %conv69 = uitofp i64 %12 to double, !dbg !4130
  %mul70 = fmul double %add67, %conv69, !dbg !4131
  %conv72 = uitofp i64 %11 to double, !dbg !4132
  %div73 = fdiv double %mul70, %conv72, !dbg !4133
  %conv74 = fptosi double %div73 to i64, !dbg !4134
  call void @llvm.dbg.value(metadata i64 %conv74, metadata !4036, metadata !DIExpression()), !dbg !4135
  %13 = load i64, ptr %columns8, align 8, !dbg !4136, !tbaa !2150
  %call76 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call53, i64 noundef 0, i64 noundef %conv74, i64 noundef %13, i64 noundef 1, ptr noundef %exception) #26, !dbg !4137
  call void @llvm.dbg.value(metadata ptr %call76, metadata !4032, metadata !DIExpression()), !dbg !4135
  %14 = load i64, ptr %columns35, align 8, !dbg !4138, !tbaa !2150
  %call78 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call54, i64 noundef 0, i64 noundef %y.0260, i64 noundef %14, i64 noundef 1, ptr noundef %exception) #26, !dbg !4139
  call void @llvm.dbg.value(metadata ptr %call78, metadata !4034, metadata !DIExpression()), !dbg !4135
  %cmp79 = icmp eq ptr %call76, null, !dbg !4140
  %cmp82 = icmp eq ptr %call78, null
  %or.cond168 = select i1 %cmp79, i1 true, i1 %cmp82, !dbg !4142
  br i1 %or.cond168, label %cleanup, label %if.end85, !dbg !4142

if.end85:                                         ; preds = %if.end64
  %call86 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call53) #22, !dbg !4143
  call void @llvm.dbg.value(metadata ptr %call86, metadata !4028, metadata !DIExpression()), !dbg !4135
  %call87 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call54) #22, !dbg !4144
  call void @llvm.dbg.value(metadata ptr %call87, metadata !4033, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 0, metadata !4035, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata ptr %call78, metadata !4034, metadata !DIExpression()), !dbg !4135
  %15 = load i64, ptr %columns35, align 8, !dbg !4145, !tbaa !2150
  %cmp90247 = icmp sgt i64 %15, 0, !dbg !4148
  br i1 %cmp90247, label %for.body92, label %for.end97, !dbg !4149

for.body92:                                       ; preds = %if.end85, %for.body92
  %x60.0249 = phi i64 [ %inc96, %for.body92 ], [ 0, %if.end85 ]
  %q.0248 = phi ptr [ %incdec.ptr, %for.body92 ], [ %call78, %if.end85 ]
  call void @llvm.dbg.value(metadata i64 %x60.0249, metadata !4035, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata ptr %q.0248, metadata !4034, metadata !DIExpression()), !dbg !4135
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %q.0248, i64 1, !dbg !4150
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4034, metadata !DIExpression()), !dbg !4135
  %arrayidx93 = getelementptr inbounds i64, ptr %call36, i64 %x60.0249, !dbg !4151
  %16 = load i64, ptr %arrayidx93, align 8, !dbg !4151, !tbaa !4115
  %arrayidx94 = getelementptr inbounds %struct._PixelPacket, ptr %call76, i64 %16, !dbg !4152
  %17 = load i64, ptr %arrayidx94, align 2, !dbg !4152
  store i64 %17, ptr %q.0248, align 2, !dbg !4152
  %inc96 = add nuw nsw i64 %x60.0249, 1, !dbg !4153
  call void @llvm.dbg.value(metadata i64 %inc96, metadata !4035, metadata !DIExpression()), !dbg !4135
  %18 = load i64, ptr %columns35, align 8, !dbg !4145, !tbaa !2150
  %cmp90 = icmp slt i64 %inc96, %18, !dbg !4148
  br i1 %cmp90, label %for.body92, label %for.end97, !dbg !4149, !llvm.loop !4154

for.end97:                                        ; preds = %for.body92, %if.end85
  %.lcssa = phi i64 [ %15, %if.end85 ], [ %18, %for.body92 ], !dbg !4145
  %19 = load i32, ptr %image, align 8, !dbg !4156, !tbaa !2287
  %cmp98 = icmp eq i32 %19, 2, !dbg !4158
  br i1 %cmp98, label %if.then103, label %lor.lhs.false100, !dbg !4159

lor.lhs.false100:                                 ; preds = %for.end97
  %20 = load i32, ptr %colorspace, align 4, !dbg !4160, !tbaa !2283
  %cmp101 = icmp ne i32 %20, 12, !dbg !4161
  %cmp106250 = icmp slt i64 %.lcssa, 1
  %or.cond264 = select i1 %cmp101, i1 true, i1 %cmp106250, !dbg !4162
  call void @llvm.dbg.value(metadata i64 0, metadata !4035, metadata !DIExpression()), !dbg !4135
  %cmp109.not = icmp eq ptr %call87, null
  %or.cond270 = select i1 %or.cond264, i1 true, i1 %cmp109.not, !dbg !4162
  br i1 %or.cond270, label %if.end125, label %for.body108.lr.ph.split, !dbg !4162

if.then103:                                       ; preds = %for.end97
  call void @llvm.dbg.value(metadata i64 0, metadata !4035, metadata !DIExpression()), !dbg !4135
  %cmp106250.old = icmp slt i64 %.lcssa, 1, !dbg !4163
  %cmp109.not.old = icmp eq ptr %call87, null
  %or.cond271 = select i1 %cmp106250.old, i1 true, i1 %cmp109.not.old, !dbg !4166
  br i1 %or.cond271, label %if.end125, label %for.body108.lr.ph.split, !dbg !4166

for.body108.lr.ph.split:                          ; preds = %if.then103, %lor.lhs.false100
  %cmp114 = icmp eq ptr %call86, null
  br i1 %cmp114, label %for.body108.us254.preheader, label %for.body108, !dbg !4167

for.body108.us254.preheader:                      ; preds = %for.body108.lr.ph.split
  %21 = shl nuw i64 %.lcssa, 1, !dbg !4166
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %call87, i8 0, i64 %21, i1 false), !dbg !4167, !tbaa !2304
  call void @llvm.dbg.value(metadata i32 undef, metadata !4035, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4135
  br label %if.end125, !dbg !4170

for.body108:                                      ; preds = %for.body108.lr.ph.split, %for.body108
  %x60.1251 = phi i64 [ %inc123, %for.body108 ], [ 0, %for.body108.lr.ph.split ]
  call void @llvm.dbg.value(metadata i64 %x60.1251, metadata !4035, metadata !DIExpression()), !dbg !4135
  %add.ptr = getelementptr inbounds i16, ptr %call87, i64 %x60.1251, !dbg !4167
  %arrayidx112 = getelementptr inbounds i64, ptr %call36, i64 %x60.1251, !dbg !4167
  %22 = load i64, ptr %arrayidx112, align 8, !dbg !4167, !tbaa !4115
  %add.ptr113 = getelementptr inbounds i16, ptr %call86, i64 %22, !dbg !4167
  %23 = load i16, ptr %add.ptr113, align 2, !dbg !4167, !tbaa !2304
  store i16 %23, ptr %add.ptr, align 2, !dbg !4167, !tbaa !2304
  %inc123 = add nuw nsw i64 %x60.1251, 1, !dbg !4172
  call void @llvm.dbg.value(metadata i64 %inc123, metadata !4035, metadata !DIExpression()), !dbg !4135
  %exitcond.not = icmp eq i64 %inc123, %.lcssa, !dbg !4163
  br i1 %exitcond.not, label %if.end125, label %for.body108, !dbg !4166, !llvm.loop !4173

if.end125:                                        ; preds = %for.body108, %for.body108.us254.preheader, %if.then103, %lor.lhs.false100
  %call126 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call54, ptr noundef %exception) #26, !dbg !4170
  %cmp127 = icmp ne i32 %call126, 0, !dbg !4175
  %spec.select = zext i1 %cmp127 to i32, !dbg !4176
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !4008, metadata !DIExpression()), !dbg !4040
  %24 = load ptr, ptr %progress_monitor, align 8, !dbg !4177, !tbaa !2314
  %cmp131.not = icmp eq ptr %24, null, !dbg !4178
  br i1 %cmp131.not, label %cleanup, label %SetImageProgress.exit, !dbg !4179

SetImageProgress.exit:                            ; preds = %if.end125
  %inc134 = add nsw i64 %progress.0261, 1, !dbg !4180
  call void @llvm.dbg.value(metadata i64 %inc134, metadata !4009, metadata !DIExpression()), !dbg !4040
  %25 = load i64, ptr %rows68, align 8, !dbg !4181, !tbaa !2154
  call void @llvm.dbg.value(metadata ptr %image, metadata !2319, metadata !DIExpression()) #22, !dbg !4182
  call void @llvm.dbg.value(metadata ptr @.str.36, metadata !2325, metadata !DIExpression()) #22, !dbg !4182
  call void @llvm.dbg.value(metadata i64 %progress.0261, metadata !2326, metadata !DIExpression()) #22, !dbg !4182
  call void @llvm.dbg.value(metadata i64 %25, metadata !2327, metadata !DIExpression()) #22, !dbg !4182
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !4184
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2328, metadata !DIExpression()) #22, !dbg !4185
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.36, ptr noundef nonnull %filename.i) #22, !dbg !4186
  %26 = load ptr, ptr %progress_monitor, align 8, !dbg !4187, !tbaa !2314
  %27 = load ptr, ptr %client_data.i, align 8, !dbg !4188, !tbaa !2336
  %call4.i = call i32 %26(ptr noundef nonnull %message.i, i64 noundef %progress.0261, i64 noundef %25, ptr noundef %27) #22, !dbg !4189
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !4190
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !4037, metadata !DIExpression()), !dbg !4191
  %cmp137 = icmp eq i32 %call4.i, 0, !dbg !4192
  %spec.select244 = select i1 %cmp137, i32 0, i32 %spec.select, !dbg !4194
  call void @llvm.dbg.value(metadata i32 %spec.select244, metadata !4008, metadata !DIExpression()), !dbg !4040
  br label %cleanup, !dbg !4195

cleanup:                                          ; preds = %if.end125, %SetImageProgress.exit, %if.end64, %for.body59
  %progress.2 = phi i64 [ %progress.0261, %for.body59 ], [ %progress.0261, %if.end64 ], [ %inc134, %SetImageProgress.exit ], [ %progress.0261, %if.end125 ], !dbg !4040
  %status.4 = phi i32 [ 0, %for.body59 ], [ 0, %if.end64 ], [ %spec.select244, %SetImageProgress.exit ], [ %spec.select, %if.end125 ], !dbg !4040
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !4008, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 %progress.2, metadata !4009, metadata !DIExpression()), !dbg !4040
  %inc148 = add nuw nsw i64 %y.0260, 1, !dbg !4196
  call void @llvm.dbg.value(metadata i64 %inc148, metadata !4012, metadata !DIExpression()), !dbg !4040
  %28 = load i64, ptr %rows56, align 8, !dbg !4121, !tbaa !2154
  %cmp57 = icmp slt i64 %inc148, %28, !dbg !4122
  br i1 %cmp57, label %for.body59, label %for.end149, !dbg !4123, !llvm.loop !4197

for.end149:                                       ; preds = %cleanup, %for.end
  %status.0.lcssa = phi i32 [ 1, %for.end ], [ %status.4, %cleanup ], !dbg !4199
  %call150 = call ptr @DestroyCacheView(ptr noundef %call53) #22, !dbg !4200
  call void @llvm.dbg.value(metadata ptr %call150, metadata !4005, metadata !DIExpression()), !dbg !4040
  %call151 = call ptr @DestroyCacheView(ptr noundef %call54) #22, !dbg !4201
  call void @llvm.dbg.value(metadata ptr %call151, metadata !4006, metadata !DIExpression()), !dbg !4040
  %call152 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call36) #22, !dbg !4202
  call void @llvm.dbg.value(metadata ptr %call152, metadata !4011, metadata !DIExpression()), !dbg !4040
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !4203
  %29 = load i32, ptr %type, align 8, !dbg !4203, !tbaa !2882
  %type153 = getelementptr inbounds %struct._Image, ptr %call15, i64 0, i32 77, !dbg !4204
  store i32 %29, ptr %type153, align 8, !dbg !4205, !tbaa !2882
  %cmp154 = icmp eq i32 %status.0.lcssa, 0, !dbg !4206
  br i1 %cmp154, label %if.then156, label %cleanup159, !dbg !4208

if.then156:                                       ; preds = %for.end149
  %call157 = call ptr @DestroyImage(ptr noundef nonnull %call15) #22, !dbg !4209
  call void @llvm.dbg.value(metadata ptr %call157, metadata !4007, metadata !DIExpression()), !dbg !4040
  br label %cleanup159, !dbg !4210

cleanup159:                                       ; preds = %for.end149, %if.then156, %if.end14, %if.then38, %if.then12, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call13, %if.then12 ], [ null, %if.then38 ], [ null, %if.end14 ], [ %call157, %if.then156 ], [ %call15, %for.end149 ], !dbg !4040
  ret ptr %retval.0, !dbg !4211
}

declare !dbg !4212 i32 @ParseGeometry(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: allocsize(0,1)
declare !dbg !4216 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local ptr @ScaleImage(ptr noundef %image, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) local_unnamed_addr #0 !dbg !4219 {
entry:
  %message.i = alloca [4096 x i8], align 16
  %pixel = alloca %struct._MagickPixelPacket, align 8
  %zero = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !4221, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %columns, metadata !4222, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %rows, metadata !4223, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata ptr %exception, metadata !4224, metadata !DIExpression()), !dbg !4255
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #22, !dbg !4256
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !4232, metadata !DIExpression()), !dbg !4257
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %zero) #22, !dbg !4256
  call void @llvm.dbg.declare(metadata ptr %zero, metadata !4237, metadata !DIExpression()), !dbg !4258
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !4259
  %0 = load i32, ptr %debug, align 8, !dbg !4259, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !4261
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !4262

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4263
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3331, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !4264
  br label %if.end, !dbg !4265

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq i64 %columns, 0, !dbg !4266
  %cmp2 = icmp eq i64 %rows, 0
  %or.cond = or i1 %cmp1, %cmp2, !dbg !4268
  br i1 %or.cond, label %cleanup859, label %if.end4, !dbg !4268

if.end4:                                          ; preds = %if.end
  %columns5 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !4269
  %1 = load i64, ptr %columns5, align 8, !dbg !4269, !tbaa !2150
  %cmp6 = icmp eq i64 %1, %columns, !dbg !4271
  br i1 %cmp6, label %land.lhs.true, label %if.end11, !dbg !4272

land.lhs.true:                                    ; preds = %if.end4
  %rows7 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !4273
  %2 = load i64, ptr %rows7, align 8, !dbg !4273, !tbaa !2154
  %cmp8 = icmp eq i64 %2, %rows, !dbg !4274
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !4275

if.then9:                                         ; preds = %land.lhs.true
  %call10 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i32 noundef 1, ptr noundef %exception) #22, !dbg !4276
  br label %cleanup859, !dbg !4277

if.end11:                                         ; preds = %land.lhs.true, %if.end4
  %call12 = tail call ptr @CloneImage(ptr noundef nonnull %image, i64 noundef %columns, i64 noundef %rows, i32 noundef 1, ptr noundef %exception) #22, !dbg !4278
  call void @llvm.dbg.value(metadata ptr %call12, metadata !4227, metadata !DIExpression()), !dbg !4255
  %cmp13 = icmp eq ptr %call12, null, !dbg !4279
  br i1 %cmp13, label %cleanup859, label %if.end15, !dbg !4281

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @SetImageStorageClass(ptr noundef nonnull %call12, i32 noundef 1) #22, !dbg !4282
  %cmp17 = icmp eq i32 %call16, 0, !dbg !4284
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !4285

if.then18:                                        ; preds = %if.end15
  %exception19 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 58, !dbg !4286
  tail call void @InheritException(ptr noundef %exception, ptr noundef nonnull %exception19) #22, !dbg !4288
  %call20 = tail call ptr @DestroyImage(ptr noundef nonnull %call12) #22, !dbg !4289
  call void @llvm.dbg.value(metadata ptr %call20, metadata !4227, metadata !DIExpression()), !dbg !4255
  br label %cleanup859, !dbg !4290

if.end21:                                         ; preds = %if.end15
  %3 = load i64, ptr %columns5, align 8, !dbg !4291, !tbaa !2150
  %call23 = tail call ptr @AcquireQuantumMemory(i64 noundef %3, i64 noundef 56) #27, !dbg !4292
  call void @llvm.dbg.value(metadata ptr %call23, metadata !4235, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata ptr %call23, metadata !4234, metadata !DIExpression()), !dbg !4255
  %rows24 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !4293
  %4 = load i64, ptr %rows24, align 8, !dbg !4293, !tbaa !2154
  %rows25 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 8, !dbg !4295
  %5 = load i64, ptr %rows25, align 8, !dbg !4295, !tbaa !2154
  %cmp26.not = icmp eq i64 %4, %5, !dbg !4296
  br i1 %cmp26.not, label %if.end30, label %if.then27, !dbg !4297

if.then27:                                        ; preds = %if.end21
  %6 = load i64, ptr %columns5, align 8, !dbg !4298, !tbaa !2150
  %call29 = tail call ptr @AcquireQuantumMemory(i64 noundef %6, i64 noundef 56) #27, !dbg !4299
  call void @llvm.dbg.value(metadata ptr %call29, metadata !4234, metadata !DIExpression()), !dbg !4255
  br label %if.end30, !dbg !4300

if.end30:                                         ; preds = %if.then27, %if.end21
  %scanline.0 = phi ptr [ %call29, %if.then27 ], [ %call23, %if.end21 ], !dbg !4255
  call void @llvm.dbg.value(metadata ptr %scanline.0, metadata !4234, metadata !DIExpression()), !dbg !4255
  %columns31 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 7, !dbg !4301
  %7 = load i64, ptr %columns31, align 8, !dbg !4301, !tbaa !2150
  %call32 = tail call ptr @AcquireQuantumMemory(i64 noundef %7, i64 noundef 56) #27, !dbg !4302
  call void @llvm.dbg.value(metadata ptr %call32, metadata !4233, metadata !DIExpression()), !dbg !4255
  %8 = load i64, ptr %columns5, align 8, !dbg !4303, !tbaa !2150
  %call34 = tail call ptr @AcquireQuantumMemory(i64 noundef %8, i64 noundef 56) #27, !dbg !4304
  call void @llvm.dbg.value(metadata ptr %call34, metadata !4236, metadata !DIExpression()), !dbg !4255
  %cmp35 = icmp eq ptr %scanline.0, null, !dbg !4305
  %cmp37 = icmp eq ptr %call32, null
  %or.cond878 = select i1 %cmp35, i1 true, i1 %cmp37, !dbg !4307
  %cmp39 = icmp eq ptr %call23, null
  %or.cond879 = select i1 %or.cond878, i1 true, i1 %cmp39, !dbg !4307
  %cmp41 = icmp eq ptr %call34, null
  %or.cond880 = select i1 %or.cond879, i1 true, i1 %cmp41, !dbg !4307
  br i1 %or.cond880, label %if.then42, label %if.end47, !dbg !4307

if.then42:                                        ; preds = %if.end30
  %call43 = tail call ptr @DestroyImage(ptr noundef nonnull %call12) #22, !dbg !4308
  call void @llvm.dbg.value(metadata ptr %call43, metadata !4227, metadata !DIExpression()), !dbg !4255
  %filename44 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4310
  %call46 = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3366, i32 noundef 400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull %filename44) #22, !dbg !4310
  br label %cleanup859, !dbg !4310

if.end47:                                         ; preds = %if.end30
  call void @llvm.dbg.value(metadata i64 0, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 1, metadata !4229, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  %9 = load i64, ptr %rows25, align 8, !dbg !4312, !tbaa !2154
  %10 = load i64, ptr %rows24, align 8, !dbg !4313, !tbaa !2154
  call void @llvm.dbg.value(metadata double undef, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  %11 = load i64, ptr %columns5, align 8, !dbg !4314, !tbaa !2150
  %mul = mul i64 %11, 56, !dbg !4315
  %call54 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call34, i32 noundef 0, i64 noundef %mul) #22, !dbg !4316
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %pixel) #22, !dbg !4317
  %call55 = call ptr @ResetMagickMemory(ptr noundef nonnull %zero, i32 noundef 0, i64 noundef 56) #22, !dbg !4318
  call void @llvm.dbg.value(metadata i64 0, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 1, metadata !4231, metadata !DIExpression()), !dbg !4255
  %call56 = call ptr @AcquireVirtualCacheView(ptr noundef nonnull %image, ptr noundef %exception) #22, !dbg !4319
  call void @llvm.dbg.value(metadata ptr %call56, metadata !4225, metadata !DIExpression()), !dbg !4255
  %call57 = call ptr @AcquireAuthenticCacheView(ptr noundef nonnull %call12, ptr noundef %exception) #22, !dbg !4320
  call void @llvm.dbg.value(metadata ptr %call57, metadata !4226, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 0, metadata !4243, metadata !DIExpression()), !dbg !4255
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !4321
  call void @llvm.dbg.value(metadata i64 0, metadata !4243, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 0, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 0, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata double undef, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata i32 1, metadata !4231, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 1, metadata !4229, metadata !DIExpression()), !dbg !4255
  %12 = load i64, ptr %rows25, align 8, !dbg !4323, !tbaa !2154
  %cmp591452 = icmp sgt i64 %12, 0, !dbg !4324
  br i1 %cmp591452, label %for.body.lr.ph, label %for.end840, !dbg !4325

for.body.lr.ph:                                   ; preds = %if.end47
  %conv = uitofp i64 %9 to double, !dbg !4326
  %conv51 = uitofp i64 %10 to double, !dbg !4327
  %div = fdiv double %conv, %conv51, !dbg !4328
  call void @llvm.dbg.value(metadata double %div, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  %matte156 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %matte249 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 6
  %red383 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5
  %green393 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6
  %blue403 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7
  %opacity417 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8
  %index431 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9
  %sub.ptr.rhs.cast = ptrtoint ptr %call32 to i64
  %progress_monitor.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 47
  %client_data.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 48
  br label %for.body, !dbg !4325

for.body:                                         ; preds = %for.body.lr.ph, %for.inc838
  %y.01458 = phi i64 [ 0, %for.body.lr.ph ], [ %inc839, %for.inc838 ]
  %number_rows.01457 = phi i64 [ 0, %for.body.lr.ph ], [ %number_rows.4, %for.inc838 ]
  %i.01456 = phi i64 [ 0, %for.body.lr.ph ], [ %i.5, %for.inc838 ]
  %scale.sroa.13.01455 = phi double [ %div, %for.body.lr.ph ], [ %scale.sroa.13.3, %for.inc838 ]
  %status.01454 = phi i32 [ 1, %for.body.lr.ph ], [ %status.2, %for.inc838 ]
  %next_row.01453 = phi i32 [ 1, %for.body.lr.ph ], [ %next_row.4, %for.inc838 ]
  call void @llvm.dbg.value(metadata i64 %y.01458, metadata !4243, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %number_rows.01457, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %i.01456, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double %scale.sroa.13.01455, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %status.01454, metadata !4231, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %next_row.01453, metadata !4229, metadata !DIExpression()), !dbg !4255
  %cmp61 = icmp eq i32 %status.01454, 0, !dbg !4329
  br i1 %cmp61, label %for.end840, label %if.end64, !dbg !4331

if.end64:                                         ; preds = %for.body
  %13 = load i64, ptr %columns31, align 8, !dbg !4332, !tbaa !2150
  %call66 = call ptr @QueueCacheViewAuthenticPixels(ptr noundef %call57, i64 noundef 0, i64 noundef %y.01458, i64 noundef %13, i64 noundef 1, ptr noundef %exception) #26, !dbg !4333
  call void @llvm.dbg.value(metadata ptr %call66, metadata !4253, metadata !DIExpression()), !dbg !4334
  %cmp67 = icmp eq ptr %call66, null, !dbg !4335
  br i1 %cmp67, label %for.end840, label %if.end70, !dbg !4337

if.end70:                                         ; preds = %if.end64
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !4238, metadata !DIExpression()), !dbg !4255
  %call71 = call ptr @GetCacheViewAuthenticIndexQueue(ptr noundef %call57) #22, !dbg !4338
  call void @llvm.dbg.value(metadata ptr %call71, metadata !4249, metadata !DIExpression()), !dbg !4334
  %14 = load i64, ptr %rows25, align 8, !dbg !4339, !tbaa !2154
  %15 = load i64, ptr %rows24, align 8, !dbg !4341, !tbaa !2154
  %cmp74 = icmp eq i64 %14, %15, !dbg !4342
  br i1 %cmp74, label %if.then76, label %while.cond.preheader, !dbg !4343

while.cond.preheader:                             ; preds = %if.end70
  call void @llvm.dbg.value(metadata i64 %number_rows.01457, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %i.01456, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata double %scale.sroa.13.01455, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !4238, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %next_row.01453, metadata !4229, metadata !DIExpression()), !dbg !4255
  %cmp1341384 = fcmp olt double %scale.sroa.13.01455, 1.000000e+00, !dbg !4344
  br i1 %cmp1341384, label %while.body.lr.ph, label %while.end, !dbg !4346

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %cmp263.not = icmp eq ptr %call71, null
  br label %while.body, !dbg !4346

if.then76:                                        ; preds = %if.end70
  %inc = add nsw i64 %i.01456, 1, !dbg !4347
  call void @llvm.dbg.value(metadata i64 %inc, metadata !4241, metadata !DIExpression()), !dbg !4255
  %16 = load i64, ptr %columns5, align 8, !dbg !4349, !tbaa !2150
  %call78 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call56, i64 noundef 0, i64 noundef %i.01456, i64 noundef %16, i64 noundef 1, ptr noundef %exception) #26, !dbg !4350
  call void @llvm.dbg.value(metadata ptr %call78, metadata !4248, metadata !DIExpression()), !dbg !4334
  %cmp79 = icmp eq ptr %call78, null, !dbg !4351
  br i1 %cmp79, label %for.end840, label %if.end82, !dbg !4353

if.end82:                                         ; preds = %if.then76
  %call83 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call56) #22, !dbg !4354
  call void @llvm.dbg.value(metadata ptr %call83, metadata !4244, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  %17 = load i64, ptr %columns5, align 8, !tbaa !2150
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %call78, metadata !4248, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !4238, metadata !DIExpression()), !dbg !4255
  %cmp861412 = icmp sgt i64 %17, 0, !dbg !4355
  br i1 %cmp861412, label %for.body88.lr.ph, label %if.end472, !dbg !4358

for.body88.lr.ph:                                 ; preds = %if.end82
  %18 = load i32, ptr %matte156, align 8, !tbaa !2806
  %cmp89.not = icmp eq i32 %18, 0
  %cmp120.not = icmp eq ptr %call83, null
  br label %for.body88, !dbg !4358

for.body88:                                       ; preds = %for.body88.lr.ph, %if.end130
  %x.01415 = phi i64 [ 0, %for.body88.lr.ph ], [ %inc131, %if.end130 ]
  %p.01414 = phi ptr [ %call78, %for.body88.lr.ph ], [ %incdec.ptr, %if.end130 ]
  %alpha.01413 = phi float [ 1.000000e+00, %for.body88.lr.ph ], [ %alpha.1, %if.end130 ]
  call void @llvm.dbg.value(metadata i64 %x.01415, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %p.01414, metadata !4248, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.01413, metadata !4238, metadata !DIExpression()), !dbg !4255
  br i1 %cmp89.not, label %if.end96, label %if.then91, !dbg !4359

if.then91:                                        ; preds = %for.body88
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.01414, i64 0, i32 3, !dbg !4361
  %19 = load i16, ptr %opacity, align 2, !dbg !4361, !tbaa !2280
  %20 = xor i16 %19, -1, !dbg !4361
  %conv93 = uitofp i16 %20 to double, !dbg !4361
  %mul94 = fmul double %conv93, 0x3EF0001000100010, !dbg !4363
  %conv95 = fptrunc double %mul94 to float, !dbg !4364
  call void @llvm.dbg.value(metadata float %conv95, metadata !4238, metadata !DIExpression()), !dbg !4255
  br label %if.end96, !dbg !4365

if.end96:                                         ; preds = %if.then91, %for.body88
  %alpha.1 = phi float [ %conv95, %if.then91 ], [ %alpha.01413, %for.body88 ], !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.1, metadata !4238, metadata !DIExpression()), !dbg !4255
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.01414, i64 0, i32 2, !dbg !4366
  %21 = load i16, ptr %red, align 2, !dbg !4366, !tbaa !2244
  %conv98 = uitofp i16 %21 to float, !dbg !4366
  %mul99 = fmul float %alpha.1, %conv98, !dbg !4367
  %red100 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.01415, i32 5, !dbg !4368
  store float %mul99, ptr %red100, align 8, !dbg !4369, !tbaa !2226
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.01414, i64 0, i32 1, !dbg !4370
  %22 = load i16, ptr %green, align 2, !dbg !4370, !tbaa !2256
  %conv102 = uitofp i16 %22 to float, !dbg !4370
  %mul103 = fmul float %alpha.1, %conv102, !dbg !4371
  %green105 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.01415, i32 6, !dbg !4372
  store float %mul103, ptr %green105, align 4, !dbg !4373, !tbaa !2246
  %23 = load i16, ptr %p.01414, align 2, !dbg !4374, !tbaa !2268
  %conv107 = uitofp i16 %23 to float, !dbg !4374
  %mul108 = fmul float %alpha.1, %conv107, !dbg !4375
  %blue110 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.01415, i32 7, !dbg !4376
  store float %mul108, ptr %blue110, align 8, !dbg !4377, !tbaa !2258
  br i1 %cmp89.not, label %if.end119, label %if.then114, !dbg !4378

if.then114:                                       ; preds = %if.end96
  %opacity115 = getelementptr inbounds %struct._PixelPacket, ptr %p.01414, i64 0, i32 3, !dbg !4379
  %24 = load i16, ptr %opacity115, align 2, !dbg !4379, !tbaa !2280
  %conv116 = uitofp i16 %24 to float, !dbg !4381
  %opacity118 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.01415, i32 8, !dbg !4382
  store float %conv116, ptr %opacity118, align 4, !dbg !4383, !tbaa !2270
  br label %if.end119, !dbg !4384

if.end119:                                        ; preds = %if.then114, %if.end96
  br i1 %cmp120.not, label %if.end130, label %cond.end, !dbg !4385

cond.end:                                         ; preds = %if.end119
  %add.ptr = getelementptr inbounds i16, ptr %call83, i64 %x.01415, !dbg !4386
  %25 = load i16, ptr %add.ptr, align 2, !dbg !4386, !tbaa !2304
  %conv127 = uitofp i16 %25 to float, !dbg !4386
  %mul128 = fmul float %alpha.1, %conv127, !dbg !4388
  %index = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.01415, i32 9, !dbg !4389
  store float %mul128, ptr %index, align 8, !dbg !4390, !tbaa !2294
  br label %if.end130, !dbg !4391

if.end130:                                        ; preds = %cond.end, %if.end119
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.01414, i64 1, !dbg !4392
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !4248, metadata !DIExpression()), !dbg !4334
  %inc131 = add nuw nsw i64 %x.01415, 1, !dbg !4393
  call void @llvm.dbg.value(metadata i64 %inc131, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.1, metadata !4238, metadata !DIExpression()), !dbg !4255
  %exitcond1474.not = icmp eq i64 %inc131, %17, !dbg !4355
  br i1 %exitcond1474.not, label %if.end472, label %for.body88, !dbg !4358, !llvm.loop !4394

while.body:                                       ; preds = %while.body.lr.ph, %for.end278
  %26 = phi i64 [ %15, %while.body.lr.ph ], [ %55, %for.end278 ]
  %number_rows.11393 = phi i64 [ %number_rows.01457, %while.body.lr.ph ], [ %number_rows.2, %for.end278 ]
  %i.11392 = phi i64 [ %i.01456, %while.body.lr.ph ], [ %i.2, %for.end278 ]
  %span.sroa.19.11390 = phi double [ 1.000000e+00, %while.body.lr.ph ], [ %sub281, %for.end278 ]
  %scale.sroa.13.11387 = phi double [ %scale.sroa.13.01455, %while.body.lr.ph ], [ %div286, %for.end278 ]
  %alpha.21386 = phi float [ 1.000000e+00, %while.body.lr.ph ], [ %alpha.5, %for.end278 ]
  %next_row.11385 = phi i32 [ %next_row.01453, %while.body.lr.ph ], [ 1, %for.end278 ]
  call void @llvm.dbg.value(metadata i64 %number_rows.11393, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %i.11392, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double %span.sroa.19.11390, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata double %scale.sroa.13.11387, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata float %alpha.21386, metadata !4238, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %next_row.11385, metadata !4229, metadata !DIExpression()), !dbg !4255
  %cmp136.not = icmp ne i32 %next_row.11385, 0, !dbg !4396
  %cmp140 = icmp slt i64 %number_rows.11393, %26
  %or.cond1527 = select i1 %cmp136.not, i1 %cmp140, i1 false, !dbg !4399
  br i1 %or.cond1527, label %if.then142, label %if.end216, !dbg !4399

if.then142:                                       ; preds = %while.body
  %inc143 = add nsw i64 %i.11392, 1, !dbg !4400
  call void @llvm.dbg.value(metadata i64 %inc143, metadata !4241, metadata !DIExpression()), !dbg !4255
  %27 = load i64, ptr %columns5, align 8, !dbg !4402, !tbaa !2150
  %call145 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call56, i64 noundef 0, i64 noundef %i.11392, i64 noundef %27, i64 noundef 1, ptr noundef %exception) #26, !dbg !4403
  call void @llvm.dbg.value(metadata ptr %call145, metadata !4248, metadata !DIExpression()), !dbg !4334
  %cmp146 = icmp eq ptr %call145, null, !dbg !4404
  br i1 %cmp146, label %land.lhs.true290.loopexit, label %if.end149, !dbg !4406

if.end149:                                        ; preds = %if.then142
  %call150 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call56) #22, !dbg !4407
  call void @llvm.dbg.value(metadata ptr %call150, metadata !4244, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  %28 = load i64, ptr %columns5, align 8, !tbaa !2150
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %call145, metadata !4248, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.21386, metadata !4238, metadata !DIExpression()), !dbg !4255
  %cmp1531374 = icmp sgt i64 %28, 0, !dbg !4408
  br i1 %cmp1531374, label %for.body155.lr.ph, label %for.end214, !dbg !4411

for.body155.lr.ph:                                ; preds = %if.end149
  %29 = load i32, ptr %matte156, align 8, !tbaa !2806
  %cmp157.not = icmp eq i32 %29, 0
  %cmp194.not = icmp eq ptr %call150, null
  br label %for.body155, !dbg !4411

for.body155:                                      ; preds = %for.body155.lr.ph, %if.end210
  %x.11377 = phi i64 [ 0, %for.body155.lr.ph ], [ %inc213, %if.end210 ]
  %p.11376 = phi ptr [ %call145, %for.body155.lr.ph ], [ %incdec.ptr211, %if.end210 ]
  %alpha.31375 = phi float [ %alpha.21386, %for.body155.lr.ph ], [ %alpha.4, %if.end210 ]
  call void @llvm.dbg.value(metadata i64 %x.11377, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %p.11376, metadata !4248, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.31375, metadata !4238, metadata !DIExpression()), !dbg !4255
  br i1 %cmp157.not, label %if.end166, label %if.then159, !dbg !4412

if.then159:                                       ; preds = %for.body155
  %opacity160 = getelementptr inbounds %struct._PixelPacket, ptr %p.11376, i64 0, i32 3, !dbg !4414
  %30 = load i16, ptr %opacity160, align 2, !dbg !4414, !tbaa !2280
  %31 = xor i16 %30, -1, !dbg !4414
  %conv163 = uitofp i16 %31 to double, !dbg !4414
  %mul164 = fmul double %conv163, 0x3EF0001000100010, !dbg !4416
  %conv165 = fptrunc double %mul164 to float, !dbg !4417
  call void @llvm.dbg.value(metadata float %conv165, metadata !4238, metadata !DIExpression()), !dbg !4255
  br label %if.end166, !dbg !4418

if.end166:                                        ; preds = %if.then159, %for.body155
  %alpha.4 = phi float [ %conv165, %if.then159 ], [ %alpha.31375, %for.body155 ], !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.4, metadata !4238, metadata !DIExpression()), !dbg !4255
  %red167 = getelementptr inbounds %struct._PixelPacket, ptr %p.11376, i64 0, i32 2, !dbg !4419
  %32 = load i16, ptr %red167, align 2, !dbg !4419, !tbaa !2244
  %conv169 = uitofp i16 %32 to float, !dbg !4419
  %mul170 = fmul float %alpha.4, %conv169, !dbg !4420
  %red172 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.11377, i32 5, !dbg !4421
  store float %mul170, ptr %red172, align 8, !dbg !4422, !tbaa !2226
  %green173 = getelementptr inbounds %struct._PixelPacket, ptr %p.11376, i64 0, i32 1, !dbg !4423
  %33 = load i16, ptr %green173, align 2, !dbg !4423, !tbaa !2256
  %conv175 = uitofp i16 %33 to float, !dbg !4423
  %mul176 = fmul float %alpha.4, %conv175, !dbg !4424
  %green178 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.11377, i32 6, !dbg !4425
  store float %mul176, ptr %green178, align 4, !dbg !4426, !tbaa !2246
  %34 = load i16, ptr %p.11376, align 2, !dbg !4427, !tbaa !2268
  %conv181 = uitofp i16 %34 to float, !dbg !4427
  %mul182 = fmul float %alpha.4, %conv181, !dbg !4428
  %blue184 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.11377, i32 7, !dbg !4429
  store float %mul182, ptr %blue184, align 8, !dbg !4430, !tbaa !2258
  br i1 %cmp157.not, label %if.end193, label %if.then188, !dbg !4431

if.then188:                                       ; preds = %if.end166
  %opacity189 = getelementptr inbounds %struct._PixelPacket, ptr %p.11376, i64 0, i32 3, !dbg !4432
  %35 = load i16, ptr %opacity189, align 2, !dbg !4432, !tbaa !2280
  %conv190 = uitofp i16 %35 to float, !dbg !4434
  %opacity192 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.11377, i32 8, !dbg !4435
  store float %conv190, ptr %opacity192, align 4, !dbg !4436, !tbaa !2270
  br label %if.end193, !dbg !4437

if.end193:                                        ; preds = %if.then188, %if.end166
  br i1 %cmp194.not, label %if.end210, label %cond.end204, !dbg !4438

cond.end204:                                      ; preds = %if.end193
  %add.ptr197 = getelementptr inbounds i16, ptr %call150, i64 %x.11377, !dbg !4439
  %36 = load i16, ptr %add.ptr197, align 2, !dbg !4439, !tbaa !2304
  %conv206 = uitofp i16 %36 to float, !dbg !4439
  %mul207 = fmul float %alpha.4, %conv206, !dbg !4441
  %index209 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.11377, i32 9, !dbg !4442
  store float %mul207, ptr %index209, align 8, !dbg !4443, !tbaa !2294
  br label %if.end210, !dbg !4444

if.end210:                                        ; preds = %cond.end204, %if.end193
  %incdec.ptr211 = getelementptr inbounds %struct._PixelPacket, ptr %p.11376, i64 1, !dbg !4445
  call void @llvm.dbg.value(metadata ptr %incdec.ptr211, metadata !4248, metadata !DIExpression()), !dbg !4334
  %inc213 = add nuw nsw i64 %x.11377, 1, !dbg !4446
  call void @llvm.dbg.value(metadata i64 %inc213, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.4, metadata !4238, metadata !DIExpression()), !dbg !4255
  %exitcond.not = icmp eq i64 %inc213, %28, !dbg !4408
  br i1 %exitcond.not, label %for.end214, label %for.body155, !dbg !4411, !llvm.loop !4447

for.end214:                                       ; preds = %if.end210, %if.end149
  %alpha.3.lcssa = phi float [ %alpha.21386, %if.end149 ], [ %alpha.4, %if.end210 ], !dbg !4334
  %inc215 = add nsw i64 %number_rows.11393, 1, !dbg !4449
  call void @llvm.dbg.value(metadata i64 %inc215, metadata !4242, metadata !DIExpression()), !dbg !4255
  br label %if.end216, !dbg !4450

if.end216:                                        ; preds = %for.end214, %while.body
  %alpha.5 = phi float [ %alpha.3.lcssa, %for.end214 ], [ %alpha.21386, %while.body ], !dbg !4451
  %i.2 = phi i64 [ %inc143, %for.end214 ], [ %i.11392, %while.body ], !dbg !4255
  %number_rows.2 = phi i64 [ %inc215, %for.end214 ], [ %number_rows.11393, %while.body ], !dbg !4255
  call void @llvm.dbg.value(metadata i64 %number_rows.2, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata float %alpha.5, metadata !4238, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  %37 = load i64, ptr %columns5, align 8, !tbaa !2150
  %cmp2191380 = icmp sgt i64 %37, 0, !dbg !4452
  br i1 %cmp2191380, label %for.body221.lr.ph, label %for.end278, !dbg !4455

for.body221.lr.ph:                                ; preds = %if.end216
  %38 = load i32, ptr %matte249, align 8, !tbaa !2806
  %cmp250.not = icmp eq i32 %38, 0
  br label %for.body221, !dbg !4455

for.body221:                                      ; preds = %for.body221.lr.ph, %for.inc276
  %x.21381 = phi i64 [ 0, %for.body221.lr.ph ], [ %inc277, %for.inc276 ]
  call void @llvm.dbg.value(metadata i64 %x.21381, metadata !4254, metadata !DIExpression()), !dbg !4334
  %red224 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.21381, i32 5, !dbg !4456
  %39 = load float, ptr %red224, align 8, !dbg !4456, !tbaa !2226
  %conv225 = fpext float %39 to double, !dbg !4458
  %red228 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.21381, i32 5, !dbg !4459
  %40 = load float, ptr %red228, align 8, !dbg !4460, !tbaa !2226
  %conv229 = fpext float %40 to double, !dbg !4460
  %41 = call double @llvm.fmuladd.f64(double %scale.sroa.13.11387, double %conv225, double %conv229), !dbg !4460
  %conv230 = fptrunc double %41 to float, !dbg !4460
  store float %conv230, ptr %red228, align 8, !dbg !4460, !tbaa !2226
  %green233 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.21381, i32 6, !dbg !4461
  %42 = load float, ptr %green233, align 4, !dbg !4461, !tbaa !2246
  %conv234 = fpext float %42 to double, !dbg !4462
  %green237 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.21381, i32 6, !dbg !4463
  %43 = load float, ptr %green237, align 4, !dbg !4464, !tbaa !2246
  %conv238 = fpext float %43 to double, !dbg !4464
  %44 = call double @llvm.fmuladd.f64(double %scale.sroa.13.11387, double %conv234, double %conv238), !dbg !4464
  %conv239 = fptrunc double %44 to float, !dbg !4464
  store float %conv239, ptr %green237, align 4, !dbg !4464, !tbaa !2246
  %blue242 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.21381, i32 7, !dbg !4465
  %45 = load float, ptr %blue242, align 8, !dbg !4465, !tbaa !2258
  %conv243 = fpext float %45 to double, !dbg !4466
  %blue246 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.21381, i32 7, !dbg !4467
  %46 = load float, ptr %blue246, align 8, !dbg !4468, !tbaa !2258
  %conv247 = fpext float %46 to double, !dbg !4468
  %47 = call double @llvm.fmuladd.f64(double %scale.sroa.13.11387, double %conv243, double %conv247), !dbg !4468
  %conv248 = fptrunc double %47 to float, !dbg !4468
  store float %conv248, ptr %blue246, align 8, !dbg !4468, !tbaa !2258
  br i1 %cmp250.not, label %if.end262, label %if.then252, !dbg !4469

if.then252:                                       ; preds = %for.body221
  %opacity255 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.21381, i32 8, !dbg !4470
  %48 = load float, ptr %opacity255, align 4, !dbg !4470, !tbaa !2270
  %conv256 = fpext float %48 to double, !dbg !4472
  %opacity259 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.21381, i32 8, !dbg !4473
  %49 = load float, ptr %opacity259, align 4, !dbg !4474, !tbaa !2270
  %conv260 = fpext float %49 to double, !dbg !4474
  %50 = call double @llvm.fmuladd.f64(double %scale.sroa.13.11387, double %conv256, double %conv260), !dbg !4474
  %conv261 = fptrunc double %50 to float, !dbg !4474
  store float %conv261, ptr %opacity259, align 4, !dbg !4474, !tbaa !2270
  br label %if.end262, !dbg !4475

if.end262:                                        ; preds = %if.then252, %for.body221
  br i1 %cmp263.not, label %for.inc276, label %if.then265, !dbg !4476

if.then265:                                       ; preds = %if.end262
  %index268 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.21381, i32 9, !dbg !4477
  %51 = load float, ptr %index268, align 8, !dbg !4477, !tbaa !2294
  %conv269 = fpext float %51 to double, !dbg !4479
  %index272 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.21381, i32 9, !dbg !4480
  %52 = load float, ptr %index272, align 8, !dbg !4481, !tbaa !2294
  %conv273 = fpext float %52 to double, !dbg !4481
  %53 = call double @llvm.fmuladd.f64(double %scale.sroa.13.11387, double %conv269, double %conv273), !dbg !4481
  %conv274 = fptrunc double %53 to float, !dbg !4481
  store float %conv274, ptr %index272, align 8, !dbg !4481, !tbaa !2294
  br label %for.inc276, !dbg !4482

for.inc276:                                       ; preds = %if.end262, %if.then265
  %inc277 = add nuw nsw i64 %x.21381, 1, !dbg !4483
  call void @llvm.dbg.value(metadata i64 %inc277, metadata !4254, metadata !DIExpression()), !dbg !4334
  %exitcond1472.not = icmp eq i64 %inc277, %37, !dbg !4452
  br i1 %exitcond1472.not, label %for.end278, label %for.body221, !dbg !4455, !llvm.loop !4484

for.end278:                                       ; preds = %for.inc276, %if.end216
  %sub281 = fsub double %span.sroa.19.11390, %scale.sroa.13.11387, !dbg !4486
  call void @llvm.dbg.value(metadata double %sub281, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  %54 = load i64, ptr %rows25, align 8, !dbg !4487, !tbaa !2154
  %conv283 = uitofp i64 %54 to double, !dbg !4488
  %55 = load i64, ptr %rows24, align 8, !dbg !4489, !tbaa !2154
  %conv285 = uitofp i64 %55 to double, !dbg !4490
  %div286 = fdiv double %conv283, %conv285, !dbg !4491
  call void @llvm.dbg.value(metadata i64 %number_rows.2, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double %div286, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata float %alpha.5, metadata !4238, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 1, metadata !4229, metadata !DIExpression()), !dbg !4255
  %cmp134 = fcmp olt double %div286, %sub281, !dbg !4344
  br i1 %cmp134, label %while.body, label %land.lhs.true290, !dbg !4346, !llvm.loop !4492

while.end:                                        ; preds = %while.cond.preheader
  call void @llvm.dbg.value(metadata i64 %i.01456, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 1, metadata !4231, metadata !DIExpression()), !dbg !4255
  %cmp288.not = icmp eq i32 %next_row.01453, 0, !dbg !4494
  br i1 %cmp288.not, label %if.end368, label %land.lhs.true290, !dbg !4496

land.lhs.true290.loopexit:                        ; preds = %if.then142
  %.pre = load i64, ptr %rows24, align 8, !dbg !4497, !tbaa !2154
  br label %land.lhs.true290, !dbg !4497

land.lhs.true290:                                 ; preds = %for.end278, %land.lhs.true290.loopexit, %while.end
  %56 = phi i64 [ %15, %while.end ], [ %.pre, %land.lhs.true290.loopexit ], [ %55, %for.end278 ], !dbg !4497
  %alpha.21372 = phi float [ 1.000000e+00, %while.end ], [ %alpha.21386, %land.lhs.true290.loopexit ], [ %alpha.5, %for.end278 ]
  %scale.sroa.13.11369 = phi double [ %scale.sroa.13.01455, %while.end ], [ %scale.sroa.13.11387, %land.lhs.true290.loopexit ], [ %div286, %for.end278 ]
  %span.sroa.19.11366 = phi double [ 1.000000e+00, %while.end ], [ %span.sroa.19.11390, %land.lhs.true290.loopexit ], [ %sub281, %for.end278 ]
  %number_rows.11363 = phi i64 [ %number_rows.01457, %while.end ], [ %number_rows.11393, %land.lhs.true290.loopexit ], [ %number_rows.2, %for.end278 ]
  %i.31349 = phi i64 [ %i.01456, %while.end ], [ %inc143, %land.lhs.true290.loopexit ], [ %i.2, %for.end278 ]
  %status.11347 = phi i32 [ 1, %while.end ], [ 0, %land.lhs.true290.loopexit ], [ 1, %for.end278 ]
  %cmp292 = icmp slt i64 %number_rows.11363, %56, !dbg !4498
  br i1 %cmp292, label %if.then294, label %if.end368, !dbg !4499

if.then294:                                       ; preds = %land.lhs.true290
  %inc295 = add nsw i64 %i.31349, 1, !dbg !4500
  call void @llvm.dbg.value(metadata i64 %inc295, metadata !4241, metadata !DIExpression()), !dbg !4255
  %57 = load i64, ptr %columns5, align 8, !dbg !4502, !tbaa !2150
  %call297 = call ptr @GetCacheViewVirtualPixels(ptr noundef %call56, i64 noundef 0, i64 noundef %i.31349, i64 noundef %57, i64 noundef 1, ptr noundef %exception) #26, !dbg !4503
  call void @llvm.dbg.value(metadata ptr %call297, metadata !4248, metadata !DIExpression()), !dbg !4334
  %cmp298 = icmp eq ptr %call297, null, !dbg !4504
  br i1 %cmp298, label %for.end840, label %if.end301, !dbg !4506

if.end301:                                        ; preds = %if.then294
  %call302 = call ptr @GetCacheViewVirtualIndexQueue(ptr noundef %call56) #22, !dbg !4507
  call void @llvm.dbg.value(metadata ptr %call302, metadata !4244, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  %58 = load i64, ptr %columns5, align 8, !tbaa !2150
  call void @llvm.dbg.value(metadata ptr %call297, metadata !4248, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.21372, metadata !4238, metadata !DIExpression()), !dbg !4255
  %cmp3051400 = icmp sgt i64 %58, 0, !dbg !4508
  br i1 %cmp3051400, label %for.body307.lr.ph, label %for.end366, !dbg !4511

for.body307.lr.ph:                                ; preds = %if.end301
  %59 = load i32, ptr %matte156, align 8, !tbaa !2806
  %cmp309.not = icmp eq i32 %59, 0
  %cmp346.not = icmp eq ptr %call302, null
  br label %for.body307, !dbg !4511

for.body307:                                      ; preds = %for.body307.lr.ph, %if.end362
  %x.31403 = phi i64 [ 0, %for.body307.lr.ph ], [ %inc365, %if.end362 ]
  %p.21402 = phi ptr [ %call297, %for.body307.lr.ph ], [ %incdec.ptr363, %if.end362 ]
  %alpha.61401 = phi float [ %alpha.21372, %for.body307.lr.ph ], [ %alpha.7, %if.end362 ]
  call void @llvm.dbg.value(metadata i64 %x.31403, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %p.21402, metadata !4248, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.61401, metadata !4238, metadata !DIExpression()), !dbg !4255
  br i1 %cmp309.not, label %if.end318, label %if.then311, !dbg !4512

if.then311:                                       ; preds = %for.body307
  %opacity312 = getelementptr inbounds %struct._PixelPacket, ptr %p.21402, i64 0, i32 3, !dbg !4514
  %60 = load i16, ptr %opacity312, align 2, !dbg !4514, !tbaa !2280
  %61 = xor i16 %60, -1, !dbg !4514
  %conv315 = uitofp i16 %61 to double, !dbg !4514
  %mul316 = fmul double %conv315, 0x3EF0001000100010, !dbg !4516
  %conv317 = fptrunc double %mul316 to float, !dbg !4517
  call void @llvm.dbg.value(metadata float %conv317, metadata !4238, metadata !DIExpression()), !dbg !4255
  br label %if.end318, !dbg !4518

if.end318:                                        ; preds = %if.then311, %for.body307
  %alpha.7 = phi float [ %conv317, %if.then311 ], [ %alpha.61401, %for.body307 ], !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.7, metadata !4238, metadata !DIExpression()), !dbg !4255
  %red319 = getelementptr inbounds %struct._PixelPacket, ptr %p.21402, i64 0, i32 2, !dbg !4519
  %62 = load i16, ptr %red319, align 2, !dbg !4519, !tbaa !2244
  %conv321 = uitofp i16 %62 to float, !dbg !4519
  %mul322 = fmul float %alpha.7, %conv321, !dbg !4520
  %red324 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.31403, i32 5, !dbg !4521
  store float %mul322, ptr %red324, align 8, !dbg !4522, !tbaa !2226
  %green325 = getelementptr inbounds %struct._PixelPacket, ptr %p.21402, i64 0, i32 1, !dbg !4523
  %63 = load i16, ptr %green325, align 2, !dbg !4523, !tbaa !2256
  %conv327 = uitofp i16 %63 to float, !dbg !4523
  %mul328 = fmul float %alpha.7, %conv327, !dbg !4524
  %green330 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.31403, i32 6, !dbg !4525
  store float %mul328, ptr %green330, align 4, !dbg !4526, !tbaa !2246
  %64 = load i16, ptr %p.21402, align 2, !dbg !4527, !tbaa !2268
  %conv333 = uitofp i16 %64 to float, !dbg !4527
  %mul334 = fmul float %alpha.7, %conv333, !dbg !4528
  %blue336 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.31403, i32 7, !dbg !4529
  store float %mul334, ptr %blue336, align 8, !dbg !4530, !tbaa !2258
  br i1 %cmp309.not, label %if.end345, label %if.then340, !dbg !4531

if.then340:                                       ; preds = %if.end318
  %opacity341 = getelementptr inbounds %struct._PixelPacket, ptr %p.21402, i64 0, i32 3, !dbg !4532
  %65 = load i16, ptr %opacity341, align 2, !dbg !4532, !tbaa !2280
  %conv342 = uitofp i16 %65 to float, !dbg !4534
  %opacity344 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.31403, i32 8, !dbg !4535
  store float %conv342, ptr %opacity344, align 4, !dbg !4536, !tbaa !2270
  br label %if.end345, !dbg !4537

if.end345:                                        ; preds = %if.then340, %if.end318
  br i1 %cmp346.not, label %if.end362, label %cond.end356, !dbg !4538

cond.end356:                                      ; preds = %if.end345
  %add.ptr349 = getelementptr inbounds i16, ptr %call302, i64 %x.31403, !dbg !4539
  %66 = load i16, ptr %add.ptr349, align 2, !dbg !4539, !tbaa !2304
  %conv358 = uitofp i16 %66 to float, !dbg !4539
  %mul359 = fmul float %alpha.7, %conv358, !dbg !4541
  %index361 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.31403, i32 9, !dbg !4542
  store float %mul359, ptr %index361, align 8, !dbg !4543, !tbaa !2294
  br label %if.end362, !dbg !4544

if.end362:                                        ; preds = %cond.end356, %if.end345
  %incdec.ptr363 = getelementptr inbounds %struct._PixelPacket, ptr %p.21402, i64 1, !dbg !4545
  call void @llvm.dbg.value(metadata ptr %incdec.ptr363, metadata !4248, metadata !DIExpression()), !dbg !4334
  %inc365 = add nuw nsw i64 %x.31403, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i64 %inc365, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.7, metadata !4238, metadata !DIExpression()), !dbg !4255
  %exitcond1473.not = icmp eq i64 %inc365, %58, !dbg !4508
  br i1 %exitcond1473.not, label %for.end366, label %for.body307, !dbg !4511, !llvm.loop !4547

for.end366:                                       ; preds = %if.end362, %if.end301
  %alpha.6.lcssa = phi float [ %alpha.21372, %if.end301 ], [ %alpha.7, %if.end362 ], !dbg !4334
  %inc367 = add nsw i64 %number_rows.11363, 1, !dbg !4549
  call void @llvm.dbg.value(metadata i64 %inc367, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()), !dbg !4255
  br label %if.end368, !dbg !4550

if.end368:                                        ; preds = %for.end366, %land.lhs.true290, %while.end
  %scale.sroa.13.11370 = phi double [ %scale.sroa.13.11369, %for.end366 ], [ %scale.sroa.13.11369, %land.lhs.true290 ], [ %scale.sroa.13.01455, %while.end ]
  %span.sroa.19.11367 = phi double [ %span.sroa.19.11366, %for.end366 ], [ %span.sroa.19.11366, %land.lhs.true290 ], [ 1.000000e+00, %while.end ]
  %status.11348 = phi i32 [ %status.11347, %for.end366 ], [ %status.11347, %land.lhs.true290 ], [ 1, %while.end ]
  %next_row.2 = phi i32 [ 0, %for.end366 ], [ 1, %land.lhs.true290 ], [ 0, %while.end ], !dbg !4255
  %alpha.8 = phi float [ %alpha.6.lcssa, %for.end366 ], [ %alpha.21372, %land.lhs.true290 ], [ 1.000000e+00, %while.end ], !dbg !4451
  %i.4 = phi i64 [ %inc295, %for.end366 ], [ %i.31349, %land.lhs.true290 ], [ %i.01456, %while.end ], !dbg !4551
  %number_rows.3 = phi i64 [ %inc367, %for.end366 ], [ %number_rows.11363, %land.lhs.true290 ], [ %number_rows.01457, %while.end ], !dbg !4255
  call void @llvm.dbg.value(metadata i64 %number_rows.3, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %i.4, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata float %alpha.8, metadata !4238, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %next_row.2, metadata !4229, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata ptr %scanline.0, metadata !4250, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  %67 = load i64, ptr %columns5, align 8, !dbg !4552, !tbaa !2150
  %cmp3711407 = icmp sgt i64 %67, 0, !dbg !4555
  br i1 %cmp3711407, label %for.body373.lr.ph, label %for.end456, !dbg !4556

for.body373.lr.ph:                                ; preds = %if.end368
  %cmp419.not = icmp eq ptr %call71, null
  br label %for.body373, !dbg !4556

for.body373:                                      ; preds = %for.body373.lr.ph, %if.end451
  %x.41409 = phi i64 [ 0, %for.body373.lr.ph ], [ %inc455, %if.end451 ]
  %s.01408 = phi ptr [ %scanline.0, %for.body373.lr.ph ], [ %incdec.ptr452, %if.end451 ]
  call void @llvm.dbg.value(metadata i64 %x.41409, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %s.01408, metadata !4250, metadata !DIExpression()), !dbg !4334
  %arrayidx374 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.41409, !dbg !4557
  %red375 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.41409, i32 5, !dbg !4559
  %68 = load float, ptr %red375, align 8, !dbg !4559, !tbaa !2226
  %conv376 = fpext float %68 to double, !dbg !4557
  %red379 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.41409, i32 5, !dbg !4560
  %69 = load float, ptr %red379, align 8, !dbg !4560, !tbaa !2226
  %conv380 = fpext float %69 to double, !dbg !4561
  %70 = call double @llvm.fmuladd.f64(double %span.sroa.19.11367, double %conv380, double %conv376), !dbg !4562
  %conv382 = fptrunc double %70 to float, !dbg !4557
  store float %conv382, ptr %red383, align 8, !dbg !4563, !tbaa !2226
  %green385 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.41409, i32 6, !dbg !4564
  %71 = load float, ptr %green385, align 4, !dbg !4564, !tbaa !2246
  %conv386 = fpext float %71 to double, !dbg !4565
  %green389 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.41409, i32 6, !dbg !4566
  %72 = load float, ptr %green389, align 4, !dbg !4566, !tbaa !2246
  %conv390 = fpext float %72 to double, !dbg !4567
  %73 = call double @llvm.fmuladd.f64(double %span.sroa.19.11367, double %conv390, double %conv386), !dbg !4568
  %conv392 = fptrunc double %73 to float, !dbg !4565
  store float %conv392, ptr %green393, align 4, !dbg !4569, !tbaa !2246
  %blue395 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.41409, i32 7, !dbg !4570
  %74 = load float, ptr %blue395, align 8, !dbg !4570, !tbaa !2258
  %conv396 = fpext float %74 to double, !dbg !4571
  %blue399 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.41409, i32 7, !dbg !4572
  %75 = load float, ptr %blue399, align 8, !dbg !4572, !tbaa !2258
  %conv400 = fpext float %75 to double, !dbg !4573
  %76 = call double @llvm.fmuladd.f64(double %span.sroa.19.11367, double %conv400, double %conv396), !dbg !4574
  %conv402 = fptrunc double %76 to float, !dbg !4571
  store float %conv402, ptr %blue403, align 8, !dbg !4575, !tbaa !2258
  %77 = load i32, ptr %matte156, align 8, !dbg !4576, !tbaa !2806
  %cmp405.not = icmp eq i32 %77, 0, !dbg !4578
  br i1 %cmp405.not, label %if.end418, label %if.then407, !dbg !4579

if.then407:                                       ; preds = %for.body373
  %opacity409 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.41409, i32 8, !dbg !4580
  %78 = load float, ptr %opacity409, align 4, !dbg !4580, !tbaa !2270
  %conv410 = fpext float %78 to double, !dbg !4581
  %opacity413 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.41409, i32 8, !dbg !4582
  %79 = load float, ptr %opacity413, align 4, !dbg !4582, !tbaa !2270
  %conv414 = fpext float %79 to double, !dbg !4583
  %80 = call double @llvm.fmuladd.f64(double %span.sroa.19.11367, double %conv414, double %conv410), !dbg !4584
  %conv416 = fptrunc double %80 to float, !dbg !4581
  store float %conv416, ptr %opacity417, align 4, !dbg !4585, !tbaa !2270
  br label %if.end418, !dbg !4586

if.end418:                                        ; preds = %if.then407, %for.body373
  br i1 %cmp419.not, label %if.end432, label %if.then421, !dbg !4587

if.then421:                                       ; preds = %if.end418
  %index423 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call34, i64 %x.41409, i32 9, !dbg !4588
  %81 = load float, ptr %index423, align 8, !dbg !4588, !tbaa !2294
  %conv424 = fpext float %81 to double, !dbg !4590
  %index427 = getelementptr inbounds %struct._MagickPixelPacket, ptr %call23, i64 %x.41409, i32 9, !dbg !4591
  %82 = load float, ptr %index427, align 8, !dbg !4591, !tbaa !2294
  %conv428 = fpext float %82 to double, !dbg !4592
  %83 = call double @llvm.fmuladd.f64(double %span.sroa.19.11367, double %conv428, double %conv424), !dbg !4593
  %conv430 = fptrunc double %83 to float, !dbg !4590
  store float %conv430, ptr %index431, align 8, !dbg !4594, !tbaa !2294
  br label %if.end432, !dbg !4595

if.end432:                                        ; preds = %if.then421, %if.end418
  %red434 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.01408, i64 0, i32 5, !dbg !4596
  store float %conv382, ptr %red434, align 8, !dbg !4597, !tbaa !2226
  %green436 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.01408, i64 0, i32 6, !dbg !4598
  store float %conv392, ptr %green436, align 4, !dbg !4599, !tbaa !2246
  %blue438 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.01408, i64 0, i32 7, !dbg !4600
  store float %conv402, ptr %blue438, align 8, !dbg !4601, !tbaa !2258
  %84 = load i32, ptr %matte249, align 8, !dbg !4602, !tbaa !2806
  %cmp440.not = icmp eq i32 %84, 0, !dbg !4604
  br i1 %cmp440.not, label %if.end445, label %if.then442, !dbg !4605

if.then442:                                       ; preds = %if.end432
  %85 = load float, ptr %opacity417, align 4, !dbg !4606, !tbaa !2270
  %opacity444 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.01408, i64 0, i32 8, !dbg !4607
  store float %85, ptr %opacity444, align 4, !dbg !4608, !tbaa !2270
  br label %if.end445, !dbg !4609

if.end445:                                        ; preds = %if.then442, %if.end432
  br i1 %cmp419.not, label %if.end451, label %if.then448, !dbg !4610

if.then448:                                       ; preds = %if.end445
  %86 = load float, ptr %index431, align 8, !dbg !4611, !tbaa !2294
  %index450 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.01408, i64 0, i32 9, !dbg !4613
  store float %86, ptr %index450, align 8, !dbg !4614, !tbaa !2294
  br label %if.end451, !dbg !4615

if.end451:                                        ; preds = %if.then448, %if.end445
  %incdec.ptr452 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.01408, i64 1, !dbg !4616
  call void @llvm.dbg.value(metadata ptr %incdec.ptr452, metadata !4250, metadata !DIExpression()), !dbg !4334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %arrayidx374, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !4617, !tbaa.struct !4618
  %inc455 = add nuw nsw i64 %x.41409, 1, !dbg !4620
  call void @llvm.dbg.value(metadata i64 %inc455, metadata !4254, metadata !DIExpression()), !dbg !4334
  %87 = load i64, ptr %columns5, align 8, !dbg !4552, !tbaa !2150
  %cmp371 = icmp slt i64 %inc455, %87, !dbg !4555
  br i1 %cmp371, label %for.body373, label %for.end456, !dbg !4556, !llvm.loop !4621

for.end456:                                       ; preds = %if.end451, %if.end368
  %88 = phi i64 [ %67, %if.end368 ], [ %87, %if.end451 ]
  %sub459 = fsub double %scale.sroa.13.11370, %span.sroa.19.11367, !dbg !4623
  call void @llvm.dbg.value(metadata double %sub459, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  %cmp461 = fcmp ugt double %sub459, 0.000000e+00, !dbg !4624
  br i1 %cmp461, label %if.end472, label %if.then463, !dbg !4626

if.then463:                                       ; preds = %for.end456
  %89 = load i64, ptr %rows25, align 8, !dbg !4627, !tbaa !2154
  %conv465 = uitofp i64 %89 to double, !dbg !4629
  %90 = load i64, ptr %rows24, align 8, !dbg !4630, !tbaa !2154
  %conv467 = uitofp i64 %90 to double, !dbg !4631
  %div468 = fdiv double %conv465, %conv467, !dbg !4632
  call void @llvm.dbg.value(metadata double %div468, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata i32 1, metadata !4229, metadata !DIExpression()), !dbg !4255
  br label %if.end472, !dbg !4633

if.end472:                                        ; preds = %if.end130, %if.end82, %for.end456, %if.then463
  %91 = phi i64 [ %88, %if.then463 ], [ %88, %for.end456 ], [ %17, %if.end82 ], [ %17, %if.end130 ], !dbg !4634
  %next_row.4 = phi i32 [ 1, %if.then463 ], [ %next_row.2, %for.end456 ], [ %next_row.01453, %if.end82 ], [ %next_row.01453, %if.end130 ], !dbg !4255
  %status.2 = phi i32 [ %status.11348, %if.then463 ], [ %status.11348, %for.end456 ], [ 1, %if.end82 ], [ 1, %if.end130 ], !dbg !4255
  %alpha.9 = phi float [ %alpha.8, %if.then463 ], [ %alpha.8, %for.end456 ], [ 1.000000e+00, %if.end82 ], [ %alpha.1, %if.end130 ], !dbg !4451
  %scale.sroa.13.3 = phi double [ %div468, %if.then463 ], [ %sub459, %for.end456 ], [ %scale.sroa.13.01455, %if.end82 ], [ %scale.sroa.13.01455, %if.end130 ], !dbg !4255
  %i.5 = phi i64 [ %i.4, %if.then463 ], [ %i.4, %for.end456 ], [ %inc, %if.end82 ], [ %inc, %if.end130 ], !dbg !4636
  %number_rows.4 = phi i64 [ %number_rows.3, %if.then463 ], [ %number_rows.3, %for.end456 ], [ %number_rows.01457, %if.end82 ], [ %number_rows.01457, %if.end130 ], !dbg !4255
  call void @llvm.dbg.value(metadata i64 %number_rows.4, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %i.5, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double undef, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata double %scale.sroa.13.3, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata float %alpha.9, metadata !4238, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !4231, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %next_row.4, metadata !4229, metadata !DIExpression()), !dbg !4255
  %92 = load i64, ptr %columns31, align 8, !dbg !4637, !tbaa !2150
  %cmp475 = icmp eq i64 %92, %91, !dbg !4638
  br i1 %cmp475, label %for.cond478.preheader, label %if.else534, !dbg !4639

for.cond478.preheader:                            ; preds = %if.end472
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %call66, metadata !4253, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %scanline.0, metadata !4250, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.9, metadata !4238, metadata !DIExpression()), !dbg !4255
  %cmp4801446 = icmp sgt i64 %91, 0, !dbg !4640
  br i1 %cmp4801446, label %for.body482.lr.ph, label %if.end820, !dbg !4644

for.body482.lr.ph:                                ; preds = %for.cond478.preheader
  %93 = load i32, ptr %matte249, align 8, !tbaa !2806
  %cmp484.not = icmp eq i32 %93, 0
  %cmp516.not = icmp eq ptr %call71, null
  br label %for.body482, !dbg !4644

for.body482:                                      ; preds = %for.body482.lr.ph, %if.end528
  %x.51450 = phi i64 [ 0, %for.body482.lr.ph ], [ %inc532, %if.end528 ]
  %q.01449 = phi ptr [ %call66, %for.body482.lr.ph ], [ %incdec.ptr529, %if.end528 ]
  %s.11448 = phi ptr [ %scanline.0, %for.body482.lr.ph ], [ %incdec.ptr530, %if.end528 ]
  %alpha.101447 = phi float [ %alpha.9, %for.body482.lr.ph ], [ %conv495, %if.end528 ]
  call void @llvm.dbg.value(metadata i64 %x.51450, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %q.01449, metadata !4253, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %s.11448, metadata !4250, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.101447, metadata !4238, metadata !DIExpression()), !dbg !4255
  br i1 %cmp484.not, label %if.end492, label %if.then486, !dbg !4645

if.then486:                                       ; preds = %for.body482
  %opacity487 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.11448, i64 0, i32 8, !dbg !4647
  %94 = load float, ptr %opacity487, align 4, !dbg !4647, !tbaa !2270
  %sub488 = fsub float 6.553500e+04, %94, !dbg !4649
  %conv489 = fpext float %sub488 to double, !dbg !4650
  %mul490 = fmul double %conv489, 0x3EF0001000100010, !dbg !4651
  %conv491 = fptrunc double %mul490 to float, !dbg !4652
  call void @llvm.dbg.value(metadata float %conv491, metadata !4238, metadata !DIExpression()), !dbg !4255
  br label %if.end492, !dbg !4653

if.end492:                                        ; preds = %if.then486, %for.body482
  %alpha.11 = phi float [ %conv491, %if.then486 ], [ %alpha.101447, %for.body482 ], !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.11, metadata !4238, metadata !DIExpression()), !dbg !4255
  %conv493 = fpext float %alpha.11 to double, !dbg !4654
  call void @llvm.dbg.value(metadata double %conv493, metadata !1095, metadata !DIExpression()), !dbg !4655
  %cmp.i = fcmp olt float %alpha.11, 0.000000e+00, !dbg !4657
  %cond.i = select i1 %cmp.i, double -1.000000e+00, double 1.000000e+00, !dbg !4658
  call void @llvm.dbg.value(metadata double %cond.i, metadata !1101, metadata !DIExpression()), !dbg !4655
  %mul.i = fmul double %cond.i, %conv493, !dbg !4659
  %cmp1.i = fcmp ult double %mul.i, 1.000000e-15, !dbg !4660
  br i1 %cmp1.i, label %if.end.i, label %if.then.i, !dbg !4661

if.then.i:                                        ; preds = %if.end492
  %div.i = fdiv double 1.000000e+00, %conv493, !dbg !4662
  br label %PerceptibleReciprocal.exit, !dbg !4663

if.end.i:                                         ; preds = %if.end492
  %div2.i = fdiv double %cond.i, 1.000000e-15, !dbg !4664
  br label %PerceptibleReciprocal.exit, !dbg !4665

PerceptibleReciprocal.exit:                       ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi double [ %div.i, %if.then.i ], [ %div2.i, %if.end.i ], !dbg !4655
  %conv495 = fptrunc double %retval.0.i to float, !dbg !4666
  call void @llvm.dbg.value(metadata float %conv495, metadata !4238, metadata !DIExpression()), !dbg !4255
  %red496 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.11448, i64 0, i32 5, !dbg !4667
  %95 = load float, ptr %red496, align 8, !dbg !4667, !tbaa !2226
  %mul497 = fmul float %95, %conv495, !dbg !4667
  call void @llvm.dbg.value(metadata float %mul497, metadata !2228, metadata !DIExpression()), !dbg !4668
  %cmp.i1255 = fcmp ugt float %mul497, 0.000000e+00, !dbg !4670
  br i1 %cmp.i1255, label %if.end.i1257, label %ClampToQuantum.exit, !dbg !4671

if.end.i1257:                                     ; preds = %PerceptibleReciprocal.exit
  %cmp1.i1256 = fcmp ult float %mul497, 6.553500e+04, !dbg !4672
  br i1 %cmp1.i1256, label %if.end3.i, label %ClampToQuantum.exit, !dbg !4673

if.end3.i:                                        ; preds = %if.end.i1257
  %add.i = fadd float %mul497, 5.000000e-01, !dbg !4674
  %conv.i = fptoui float %add.i to i16, !dbg !4675
  br label %ClampToQuantum.exit, !dbg !4676

ClampToQuantum.exit:                              ; preds = %PerceptibleReciprocal.exit, %if.end.i1257, %if.end3.i
  %retval.0.i1258 = phi i16 [ %conv.i, %if.end3.i ], [ 0, %PerceptibleReciprocal.exit ], [ -1, %if.end.i1257 ], !dbg !4668
  %red499 = getelementptr inbounds %struct._PixelPacket, ptr %q.01449, i64 0, i32 2, !dbg !4667
  store i16 %retval.0.i1258, ptr %red499, align 2, !dbg !4667, !tbaa !2244
  %green500 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.11448, i64 0, i32 6, !dbg !4677
  %96 = load float, ptr %green500, align 4, !dbg !4677, !tbaa !2246
  %mul501 = fmul float %96, %conv495, !dbg !4677
  call void @llvm.dbg.value(metadata float %mul501, metadata !2228, metadata !DIExpression()), !dbg !4678
  %cmp.i1259 = fcmp ugt float %mul501, 0.000000e+00, !dbg !4680
  br i1 %cmp.i1259, label %if.end.i1261, label %ClampToQuantum.exit1266, !dbg !4681

if.end.i1261:                                     ; preds = %ClampToQuantum.exit
  %cmp1.i1260 = fcmp ult float %mul501, 6.553500e+04, !dbg !4682
  br i1 %cmp1.i1260, label %if.end3.i1264, label %ClampToQuantum.exit1266, !dbg !4683

if.end3.i1264:                                    ; preds = %if.end.i1261
  %add.i1262 = fadd float %mul501, 5.000000e-01, !dbg !4684
  %conv.i1263 = fptoui float %add.i1262 to i16, !dbg !4685
  br label %ClampToQuantum.exit1266, !dbg !4686

ClampToQuantum.exit1266:                          ; preds = %ClampToQuantum.exit, %if.end.i1261, %if.end3.i1264
  %retval.0.i1265 = phi i16 [ %conv.i1263, %if.end3.i1264 ], [ 0, %ClampToQuantum.exit ], [ -1, %if.end.i1261 ], !dbg !4678
  %green503 = getelementptr inbounds %struct._PixelPacket, ptr %q.01449, i64 0, i32 1, !dbg !4677
  store i16 %retval.0.i1265, ptr %green503, align 2, !dbg !4677, !tbaa !2256
  %blue504 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.11448, i64 0, i32 7, !dbg !4687
  %97 = load float, ptr %blue504, align 8, !dbg !4687, !tbaa !2258
  %mul505 = fmul float %97, %conv495, !dbg !4687
  call void @llvm.dbg.value(metadata float %mul505, metadata !2228, metadata !DIExpression()), !dbg !4688
  %cmp.i1267 = fcmp ugt float %mul505, 0.000000e+00, !dbg !4690
  br i1 %cmp.i1267, label %if.end.i1269, label %ClampToQuantum.exit1274, !dbg !4691

if.end.i1269:                                     ; preds = %ClampToQuantum.exit1266
  %cmp1.i1268 = fcmp ult float %mul505, 6.553500e+04, !dbg !4692
  br i1 %cmp1.i1268, label %if.end3.i1272, label %ClampToQuantum.exit1274, !dbg !4693

if.end3.i1272:                                    ; preds = %if.end.i1269
  %add.i1270 = fadd float %mul505, 5.000000e-01, !dbg !4694
  %conv.i1271 = fptoui float %add.i1270 to i16, !dbg !4695
  br label %ClampToQuantum.exit1274, !dbg !4696

ClampToQuantum.exit1274:                          ; preds = %ClampToQuantum.exit1266, %if.end.i1269, %if.end3.i1272
  %retval.0.i1273 = phi i16 [ %conv.i1271, %if.end3.i1272 ], [ 0, %ClampToQuantum.exit1266 ], [ -1, %if.end.i1269 ], !dbg !4688
  store i16 %retval.0.i1273, ptr %q.01449, align 2, !dbg !4687, !tbaa !2268
  br i1 %cmp484.not, label %if.end515, label %if.then511, !dbg !4697

if.then511:                                       ; preds = %ClampToQuantum.exit1274
  %opacity512 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.11448, i64 0, i32 8, !dbg !4698
  %98 = load float, ptr %opacity512, align 4, !dbg !4698, !tbaa !2270
  call void @llvm.dbg.value(metadata float %98, metadata !2228, metadata !DIExpression()), !dbg !4700
  %cmp.i1275 = fcmp ugt float %98, 0.000000e+00, !dbg !4702
  br i1 %cmp.i1275, label %if.end.i1277, label %ClampToQuantum.exit1282, !dbg !4703

if.end.i1277:                                     ; preds = %if.then511
  %cmp1.i1276 = fcmp ult float %98, 6.553500e+04, !dbg !4704
  br i1 %cmp1.i1276, label %if.end3.i1280, label %ClampToQuantum.exit1282, !dbg !4705

if.end3.i1280:                                    ; preds = %if.end.i1277
  %add.i1278 = fadd float %98, 5.000000e-01, !dbg !4706
  %conv.i1279 = fptoui float %add.i1278 to i16, !dbg !4707
  br label %ClampToQuantum.exit1282, !dbg !4708

ClampToQuantum.exit1282:                          ; preds = %if.then511, %if.end.i1277, %if.end3.i1280
  %retval.0.i1281 = phi i16 [ %conv.i1279, %if.end3.i1280 ], [ 0, %if.then511 ], [ -1, %if.end.i1277 ], !dbg !4700
  %opacity514 = getelementptr inbounds %struct._PixelPacket, ptr %q.01449, i64 0, i32 3, !dbg !4698
  store i16 %retval.0.i1281, ptr %opacity514, align 2, !dbg !4698, !tbaa !2280
  br label %if.end515, !dbg !4698

if.end515:                                        ; preds = %ClampToQuantum.exit1282, %ClampToQuantum.exit1274
  br i1 %cmp516.not, label %if.end528, label %if.then522, !dbg !4709

if.then522:                                       ; preds = %if.end515
  %add.ptr519 = getelementptr inbounds i16, ptr %call71, i64 %x.51450, !dbg !4710
  %index523 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.11448, i64 0, i32 9, !dbg !4710
  %99 = load float, ptr %index523, align 8, !dbg !4710, !tbaa !2294
  %mul524 = fmul float %99, %conv495, !dbg !4710
  call void @llvm.dbg.value(metadata float %mul524, metadata !2228, metadata !DIExpression()), !dbg !4714
  %cmp.i1283 = fcmp ugt float %mul524, 0.000000e+00, !dbg !4716
  br i1 %cmp.i1283, label %if.end.i1285, label %ClampToQuantum.exit1290, !dbg !4717

if.end.i1285:                                     ; preds = %if.then522
  %cmp1.i1284 = fcmp ult float %mul524, 6.553500e+04, !dbg !4718
  br i1 %cmp1.i1284, label %if.end3.i1288, label %ClampToQuantum.exit1290, !dbg !4719

if.end3.i1288:                                    ; preds = %if.end.i1285
  %add.i1286 = fadd float %mul524, 5.000000e-01, !dbg !4720
  %conv.i1287 = fptoui float %add.i1286 to i16, !dbg !4721
  br label %ClampToQuantum.exit1290, !dbg !4722

ClampToQuantum.exit1290:                          ; preds = %if.then522, %if.end.i1285, %if.end3.i1288
  %retval.0.i1289 = phi i16 [ %conv.i1287, %if.end3.i1288 ], [ 0, %if.then522 ], [ -1, %if.end.i1285 ], !dbg !4714
  store i16 %retval.0.i1289, ptr %add.ptr519, align 2, !dbg !4710, !tbaa !2304
  br label %if.end528, !dbg !4710

if.end528:                                        ; preds = %ClampToQuantum.exit1290, %if.end515
  %incdec.ptr529 = getelementptr inbounds %struct._PixelPacket, ptr %q.01449, i64 1, !dbg !4723
  call void @llvm.dbg.value(metadata ptr %incdec.ptr529, metadata !4253, metadata !DIExpression()), !dbg !4334
  %incdec.ptr530 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.11448, i64 1, !dbg !4724
  call void @llvm.dbg.value(metadata ptr %incdec.ptr530, metadata !4250, metadata !DIExpression()), !dbg !4334
  %inc532 = add nuw nsw i64 %x.51450, 1, !dbg !4725
  call void @llvm.dbg.value(metadata i64 %inc532, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %conv495, metadata !4238, metadata !DIExpression()), !dbg !4255
  %exitcond1477.not = icmp eq i64 %inc532, %91, !dbg !4640
  br i1 %exitcond1477.not, label %if.end820, label %for.body482, !dbg !4644, !llvm.loop !4726

if.else534:                                       ; preds = %if.end472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !4728, !tbaa.struct !4618
  call void @llvm.dbg.value(metadata i32 0, metadata !4228, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata ptr %scanline.0, metadata !4250, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %call32, metadata !4252, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  %cmp5381430 = icmp sgt i64 %91, 0, !dbg !4730
  br i1 %cmp5381430, label %for.body540.lr.ph, label %if.then690, !dbg !4733

for.body540.lr.ph:                                ; preds = %if.else534
  %conv544 = uitofp i64 %91 to double
  %cmp591.not = icmp eq ptr %call71, null
  br label %for.body540, !dbg !4733

for.body540:                                      ; preds = %for.body540.lr.ph, %if.end682
  %x.61435 = phi i64 [ 0, %for.body540.lr.ph ], [ %inc685, %if.end682 ]
  %t.01434 = phi ptr [ %call32, %for.body540.lr.ph ], [ %t.4, %if.end682 ]
  %s.21433 = phi ptr [ %scanline.0, %for.body540.lr.ph ], [ %incdec.ptr683, %if.end682 ]
  %span.sroa.0.01432 = phi double [ 1.000000e+00, %for.body540.lr.ph ], [ %span.sroa.0.2, %if.end682 ]
  %next_column.01431 = phi i32 [ 0, %for.body540.lr.ph ], [ %next_column.3, %if.end682 ]
  call void @llvm.dbg.value(metadata i64 %x.61435, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %t.01434, metadata !4252, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %s.21433, metadata !4250, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata double %span.sroa.0.01432, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %next_column.01431, metadata !4228, metadata !DIExpression()), !dbg !4255
  %100 = load i64, ptr %columns31, align 8, !dbg !4734, !tbaa !2150
  %conv542 = uitofp i64 %100 to double, !dbg !4736
  %div545 = fdiv double %conv542, %conv544, !dbg !4737
  call void @llvm.dbg.value(metadata double %div545, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4255
  %cmp5501419 = fcmp ult double %div545, %span.sroa.0.01432, !dbg !4738
  br i1 %cmp5501419, label %while.end625, label %while.body552.lr.ph, !dbg !4739

while.body552.lr.ph:                              ; preds = %for.body540
  %red559 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 5
  %green566 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 6
  %blue573 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 7
  %101 = load i32, ptr %matte156, align 8, !tbaa !2806
  %cmp580.not = icmp eq i32 %101, 0
  %opacity584 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 8
  %index595 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 9
  br label %while.body552, !dbg !4739

while.body552:                                    ; preds = %while.body552.lr.ph, %if.end620
  %t.11425 = phi ptr [ %t.01434, %while.body552.lr.ph ], [ %t.2, %if.end620 ]
  %span.sroa.0.11422 = phi double [ %span.sroa.0.01432, %while.body552.lr.ph ], [ 1.000000e+00, %if.end620 ]
  %scale.sroa.0.01421 = phi double [ %div545, %while.body552.lr.ph ], [ %sub623, %if.end620 ]
  %next_column.11420 = phi i32 [ %next_column.01431, %while.body552.lr.ph ], [ 1, %if.end620 ]
  call void @llvm.dbg.value(metadata ptr %t.11425, metadata !4252, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata double %span.sroa.0.11422, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata double %scale.sroa.0.01421, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %next_column.11420, metadata !4228, metadata !DIExpression()), !dbg !4255
  %cmp553.not = icmp eq i32 %next_column.11420, 0, !dbg !4740
  br i1 %cmp553.not, label %if.end557, label %if.then555, !dbg !4743

if.then555:                                       ; preds = %while.body552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !4744, !tbaa.struct !4618
  %incdec.ptr556 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.11425, i64 1, !dbg !4746
  call void @llvm.dbg.value(metadata ptr %incdec.ptr556, metadata !4252, metadata !DIExpression()), !dbg !4334
  br label %if.end557, !dbg !4747

if.end557:                                        ; preds = %if.then555, %while.body552
  %t.2 = phi ptr [ %incdec.ptr556, %if.then555 ], [ %t.11425, %while.body552 ], !dbg !4748
  call void @llvm.dbg.value(metadata ptr %t.2, metadata !4252, metadata !DIExpression()), !dbg !4334
  %102 = load float, ptr %red559, align 8, !dbg !4749, !tbaa !2226
  %conv560 = fpext float %102 to double, !dbg !4750
  %103 = load float, ptr %red383, align 8, !dbg !4751, !tbaa !2226
  %conv563 = fpext float %103 to double, !dbg !4751
  %104 = call double @llvm.fmuladd.f64(double %span.sroa.0.11422, double %conv560, double %conv563), !dbg !4751
  %conv564 = fptrunc double %104 to float, !dbg !4751
  store float %conv564, ptr %red383, align 8, !dbg !4751, !tbaa !2226
  %105 = load float, ptr %green566, align 4, !dbg !4752, !tbaa !2246
  %conv567 = fpext float %105 to double, !dbg !4753
  %106 = load float, ptr %green393, align 4, !dbg !4754, !tbaa !2246
  %conv570 = fpext float %106 to double, !dbg !4754
  %107 = call double @llvm.fmuladd.f64(double %span.sroa.0.11422, double %conv567, double %conv570), !dbg !4754
  %conv571 = fptrunc double %107 to float, !dbg !4754
  store float %conv571, ptr %green393, align 4, !dbg !4754, !tbaa !2246
  %108 = load float, ptr %blue573, align 8, !dbg !4755, !tbaa !2258
  %conv574 = fpext float %108 to double, !dbg !4756
  %109 = load float, ptr %blue403, align 8, !dbg !4757, !tbaa !2258
  %conv577 = fpext float %109 to double, !dbg !4757
  %110 = call double @llvm.fmuladd.f64(double %span.sroa.0.11422, double %conv574, double %conv577), !dbg !4757
  %conv578 = fptrunc double %110 to float, !dbg !4757
  store float %conv578, ptr %blue403, align 8, !dbg !4757, !tbaa !2258
  br i1 %cmp580.not, label %if.end590, label %if.then582, !dbg !4758

if.then582:                                       ; preds = %if.end557
  %111 = load float, ptr %opacity584, align 4, !dbg !4759, !tbaa !2270
  %conv585 = fpext float %111 to double, !dbg !4761
  %112 = load float, ptr %opacity417, align 4, !dbg !4762, !tbaa !2270
  %conv588 = fpext float %112 to double, !dbg !4762
  %113 = call double @llvm.fmuladd.f64(double %span.sroa.0.11422, double %conv585, double %conv588), !dbg !4762
  %conv589 = fptrunc double %113 to float, !dbg !4762
  store float %conv589, ptr %opacity417, align 4, !dbg !4762, !tbaa !2270
  br label %if.end590, !dbg !4763

if.end590:                                        ; preds = %if.then582, %if.end557
  br i1 %cmp591.not, label %if.end601, label %if.then593, !dbg !4764

if.then593:                                       ; preds = %if.end590
  %114 = load float, ptr %index595, align 8, !dbg !4765, !tbaa !2294
  %conv596 = fpext float %114 to double, !dbg !4767
  %115 = load float, ptr %index431, align 8, !dbg !4768, !tbaa !2294
  %conv599 = fpext float %115 to double, !dbg !4768
  %116 = call double @llvm.fmuladd.f64(double %span.sroa.0.11422, double %conv596, double %conv599), !dbg !4768
  %conv600 = fptrunc double %116 to float, !dbg !4768
  store float %conv600, ptr %index431, align 8, !dbg !4768, !tbaa !2294
  br label %if.end601, !dbg !4769

if.end601:                                        ; preds = %if.then593, %if.end590
  %red603 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.2, i64 0, i32 5, !dbg !4770
  store float %conv564, ptr %red603, align 8, !dbg !4771, !tbaa !2226
  %green605 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.2, i64 0, i32 6, !dbg !4772
  store float %conv571, ptr %green605, align 4, !dbg !4773, !tbaa !2246
  %blue607 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.2, i64 0, i32 7, !dbg !4774
  store float %conv578, ptr %blue607, align 8, !dbg !4775, !tbaa !2258
  %117 = load i32, ptr %matte249, align 8, !dbg !4776, !tbaa !2806
  %cmp609.not = icmp eq i32 %117, 0, !dbg !4778
  br i1 %cmp609.not, label %if.end614, label %if.then611, !dbg !4779

if.then611:                                       ; preds = %if.end601
  %118 = load float, ptr %opacity417, align 4, !dbg !4780, !tbaa !2270
  %opacity613 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.2, i64 0, i32 8, !dbg !4781
  store float %118, ptr %opacity613, align 4, !dbg !4782, !tbaa !2270
  br label %if.end614, !dbg !4783

if.end614:                                        ; preds = %if.then611, %if.end601
  br i1 %cmp591.not, label %if.end620, label %if.then617, !dbg !4784

if.then617:                                       ; preds = %if.end614
  %119 = load float, ptr %index431, align 8, !dbg !4785, !tbaa !2294
  %index619 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.2, i64 0, i32 9, !dbg !4787
  store float %119, ptr %index619, align 8, !dbg !4788, !tbaa !2294
  br label %if.end620, !dbg !4789

if.end620:                                        ; preds = %if.then617, %if.end614
  %sub623 = fsub double %scale.sroa.0.01421, %span.sroa.0.11422, !dbg !4790
  call void @llvm.dbg.value(metadata ptr %t.2, metadata !4252, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata double %sub623, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata i32 1, metadata !4228, metadata !DIExpression()), !dbg !4255
  %cmp550 = fcmp ult double %sub623, 1.000000e+00, !dbg !4738
  br i1 %cmp550, label %while.end625.thread, label %while.body552, !dbg !4739, !llvm.loop !4791

while.end625:                                     ; preds = %for.body540
  %cmp627 = fcmp ogt double %div545, 0.000000e+00, !dbg !4793
  br i1 %cmp627, label %if.then629, label %if.end682, !dbg !4795

while.end625.thread:                              ; preds = %if.end620
  %cmp6271490 = fcmp ogt double %sub623, 0.000000e+00, !dbg !4793
  br i1 %cmp6271490, label %if.then632, label %if.end682, !dbg !4795

if.then629:                                       ; preds = %while.end625
  %cmp630.not = icmp eq i32 %next_column.01431, 0, !dbg !4796
  br i1 %cmp630.not, label %if.end634, label %if.then632, !dbg !4799

if.then632:                                       ; preds = %while.end625.thread, %if.then629
  %scale.sroa.0.0.lcssa14921505 = phi double [ %div545, %if.then629 ], [ %sub623, %while.end625.thread ]
  %span.sroa.0.1.lcssa14951503 = phi double [ %span.sroa.0.01432, %if.then629 ], [ 1.000000e+00, %while.end625.thread ]
  %t.1.lcssa14961502 = phi ptr [ %t.01434, %if.then629 ], [ %t.2, %while.end625.thread ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %pixel, ptr noundef nonnull align 8 dereferenceable(56) %zero, i64 56, i1 false), !dbg !4800, !tbaa.struct !4618
  call void @llvm.dbg.value(metadata i32 0, metadata !4228, metadata !DIExpression()), !dbg !4255
  %incdec.ptr633 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.1.lcssa14961502, i64 1, !dbg !4802
  call void @llvm.dbg.value(metadata ptr %incdec.ptr633, metadata !4252, metadata !DIExpression()), !dbg !4334
  br label %if.end634, !dbg !4803

if.end634:                                        ; preds = %if.then632, %if.then629
  %scale.sroa.0.0.lcssa14921506 = phi double [ %scale.sroa.0.0.lcssa14921505, %if.then632 ], [ %div545, %if.then629 ]
  %span.sroa.0.1.lcssa14951504 = phi double [ %span.sroa.0.1.lcssa14951503, %if.then632 ], [ %span.sroa.0.01432, %if.then629 ]
  %t.3 = phi ptr [ %incdec.ptr633, %if.then632 ], [ %t.01434, %if.then629 ], !dbg !4748
  call void @llvm.dbg.value(metadata ptr %t.3, metadata !4252, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata i32 0, metadata !4228, metadata !DIExpression()), !dbg !4255
  %red636 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 5, !dbg !4804
  %120 = load float, ptr %red636, align 8, !dbg !4804, !tbaa !2226
  %conv637 = fpext float %120 to double, !dbg !4805
  %121 = load float, ptr %red383, align 8, !dbg !4806, !tbaa !2226
  %conv640 = fpext float %121 to double, !dbg !4806
  %122 = call double @llvm.fmuladd.f64(double %scale.sroa.0.0.lcssa14921506, double %conv637, double %conv640), !dbg !4806
  %conv641 = fptrunc double %122 to float, !dbg !4806
  store float %conv641, ptr %red383, align 8, !dbg !4806, !tbaa !2226
  %green643 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 6, !dbg !4807
  %123 = load float, ptr %green643, align 4, !dbg !4807, !tbaa !2246
  %conv644 = fpext float %123 to double, !dbg !4808
  %124 = load float, ptr %green393, align 4, !dbg !4809, !tbaa !2246
  %conv647 = fpext float %124 to double, !dbg !4809
  %125 = call double @llvm.fmuladd.f64(double %scale.sroa.0.0.lcssa14921506, double %conv644, double %conv647), !dbg !4809
  %conv648 = fptrunc double %125 to float, !dbg !4809
  store float %conv648, ptr %green393, align 4, !dbg !4809, !tbaa !2246
  %blue650 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 7, !dbg !4810
  %126 = load float, ptr %blue650, align 8, !dbg !4810, !tbaa !2258
  %conv651 = fpext float %126 to double, !dbg !4811
  %127 = load float, ptr %blue403, align 8, !dbg !4812, !tbaa !2258
  %conv654 = fpext float %127 to double, !dbg !4812
  %128 = call double @llvm.fmuladd.f64(double %scale.sroa.0.0.lcssa14921506, double %conv651, double %conv654), !dbg !4812
  %conv655 = fptrunc double %128 to float, !dbg !4812
  store float %conv655, ptr %blue403, align 8, !dbg !4812, !tbaa !2258
  %129 = load i32, ptr %matte249, align 8, !dbg !4813, !tbaa !2806
  %cmp657.not = icmp eq i32 %129, 0, !dbg !4815
  br i1 %cmp657.not, label %if.end667, label %if.then659, !dbg !4816

if.then659:                                       ; preds = %if.end634
  %opacity661 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 8, !dbg !4817
  %130 = load float, ptr %opacity661, align 4, !dbg !4817, !tbaa !2270
  %conv662 = fpext float %130 to double, !dbg !4818
  %131 = load float, ptr %opacity417, align 4, !dbg !4819, !tbaa !2270
  %conv665 = fpext float %131 to double, !dbg !4819
  %132 = call double @llvm.fmuladd.f64(double %scale.sroa.0.0.lcssa14921506, double %conv662, double %conv665), !dbg !4819
  %conv666 = fptrunc double %132 to float, !dbg !4819
  store float %conv666, ptr %opacity417, align 4, !dbg !4819, !tbaa !2270
  br label %if.end667, !dbg !4820

if.end667:                                        ; preds = %if.then659, %if.end634
  br i1 %cmp591.not, label %if.end678, label %if.then670, !dbg !4821

if.then670:                                       ; preds = %if.end667
  %index672 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 0, i32 9, !dbg !4822
  %133 = load float, ptr %index672, align 8, !dbg !4822, !tbaa !2294
  %conv673 = fpext float %133 to double, !dbg !4824
  %134 = load float, ptr %index431, align 8, !dbg !4825, !tbaa !2294
  %conv676 = fpext float %134 to double, !dbg !4825
  %135 = call double @llvm.fmuladd.f64(double %scale.sroa.0.0.lcssa14921506, double %conv673, double %conv676), !dbg !4825
  %conv677 = fptrunc double %135 to float, !dbg !4825
  store float %conv677, ptr %index431, align 8, !dbg !4825, !tbaa !2294
  br label %if.end678, !dbg !4826

if.end678:                                        ; preds = %if.then670, %if.end667
  %sub681 = fsub double %span.sroa.0.1.lcssa14951504, %scale.sroa.0.0.lcssa14921506, !dbg !4827
  call void @llvm.dbg.value(metadata double %sub681, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4255
  br label %if.end682, !dbg !4828

if.end682:                                        ; preds = %while.end625.thread, %if.end678, %while.end625
  %next_column.3 = phi i32 [ 0, %if.end678 ], [ %next_column.01431, %while.end625 ], [ 1, %while.end625.thread ], !dbg !4748
  %span.sroa.0.2 = phi double [ %sub681, %if.end678 ], [ %span.sroa.0.01432, %while.end625 ], [ 1.000000e+00, %while.end625.thread ], !dbg !4748
  %t.4 = phi ptr [ %t.3, %if.end678 ], [ %t.01434, %while.end625 ], [ %t.2, %while.end625.thread ], !dbg !4748
  call void @llvm.dbg.value(metadata ptr %t.4, metadata !4252, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata double %span.sroa.0.2, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %next_column.3, metadata !4228, metadata !DIExpression()), !dbg !4255
  %incdec.ptr683 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.21433, i64 1, !dbg !4829
  call void @llvm.dbg.value(metadata ptr %incdec.ptr683, metadata !4250, metadata !DIExpression()), !dbg !4334
  %inc685 = add nuw nsw i64 %x.61435, 1, !dbg !4830
  call void @llvm.dbg.value(metadata i64 %inc685, metadata !4254, metadata !DIExpression()), !dbg !4334
  %exitcond1475.not = icmp eq i64 %inc685, %91, !dbg !4730
  br i1 %exitcond1475.not, label %for.end686, label %for.body540, !dbg !4733, !llvm.loop !4831

for.end686:                                       ; preds = %if.end682
  %cmp688 = fcmp ogt double %span.sroa.0.2, 0.000000e+00, !dbg !4833
  br i1 %cmp688, label %if.then690, label %if.end736, !dbg !4835

if.then690:                                       ; preds = %if.else534, %for.end686
  %t.0.lcssa1519 = phi ptr [ %t.4, %for.end686 ], [ %call32, %if.else534 ]
  %s.2.lcssa1516 = phi ptr [ %incdec.ptr683, %for.end686 ], [ %scanline.0, %if.else534 ]
  %span.sroa.0.0.lcssa1514 = phi double [ %span.sroa.0.2, %for.end686 ], [ 1.000000e+00, %if.else534 ]
  %next_column.0.lcssa1513 = phi i32 [ %next_column.3, %for.end686 ], [ 0, %if.else534 ]
  call void @llvm.dbg.value(metadata ptr %incdec.ptr683, metadata !4250, metadata !DIExpression(DW_OP_constu, 56, DW_OP_minus, DW_OP_stack_value)), !dbg !4334
  %red693 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.2.lcssa1516, i64 -1, i32 5, !dbg !4836
  %136 = load float, ptr %red693, align 8, !dbg !4836, !tbaa !2226
  %conv694 = fpext float %136 to double, !dbg !4838
  %137 = load float, ptr %red383, align 8, !dbg !4839, !tbaa !2226
  %conv697 = fpext float %137 to double, !dbg !4839
  %138 = call double @llvm.fmuladd.f64(double %span.sroa.0.0.lcssa1514, double %conv694, double %conv697), !dbg !4839
  %conv698 = fptrunc double %138 to float, !dbg !4839
  store float %conv698, ptr %red383, align 8, !dbg !4839, !tbaa !2226
  %green700 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.2.lcssa1516, i64 -1, i32 6, !dbg !4840
  %139 = load float, ptr %green700, align 4, !dbg !4840, !tbaa !2246
  %conv701 = fpext float %139 to double, !dbg !4841
  %140 = load float, ptr %green393, align 4, !dbg !4842, !tbaa !2246
  %conv704 = fpext float %140 to double, !dbg !4842
  %141 = call double @llvm.fmuladd.f64(double %span.sroa.0.0.lcssa1514, double %conv701, double %conv704), !dbg !4842
  %conv705 = fptrunc double %141 to float, !dbg !4842
  store float %conv705, ptr %green393, align 4, !dbg !4842, !tbaa !2246
  %blue707 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.2.lcssa1516, i64 -1, i32 7, !dbg !4843
  %142 = load float, ptr %blue707, align 8, !dbg !4843, !tbaa !2258
  %conv708 = fpext float %142 to double, !dbg !4844
  %143 = load float, ptr %blue403, align 8, !dbg !4845, !tbaa !2258
  %conv711 = fpext float %143 to double, !dbg !4845
  %144 = call double @llvm.fmuladd.f64(double %span.sroa.0.0.lcssa1514, double %conv708, double %conv711), !dbg !4845
  %conv712 = fptrunc double %144 to float, !dbg !4845
  store float %conv712, ptr %blue403, align 8, !dbg !4845, !tbaa !2258
  %145 = load i32, ptr %matte249, align 8, !dbg !4846, !tbaa !2806
  %cmp714.not = icmp eq i32 %145, 0, !dbg !4848
  br i1 %cmp714.not, label %if.end724, label %if.then716, !dbg !4849

if.then716:                                       ; preds = %if.then690
  call void @llvm.dbg.value(metadata ptr %incdec.ptr683, metadata !4250, metadata !DIExpression(DW_OP_constu, 56, DW_OP_minus, DW_OP_stack_value)), !dbg !4334
  %opacity718 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.2.lcssa1516, i64 -1, i32 8, !dbg !4850
  %146 = load float, ptr %opacity718, align 4, !dbg !4850, !tbaa !2270
  %conv719 = fpext float %146 to double, !dbg !4851
  %147 = load float, ptr %opacity417, align 4, !dbg !4852, !tbaa !2270
  %conv722 = fpext float %147 to double, !dbg !4852
  %148 = call double @llvm.fmuladd.f64(double %span.sroa.0.0.lcssa1514, double %conv719, double %conv722), !dbg !4852
  %conv723 = fptrunc double %148 to float, !dbg !4852
  store float %conv723, ptr %opacity417, align 4, !dbg !4852, !tbaa !2270
  br label %if.end724, !dbg !4853

if.end724:                                        ; preds = %if.then716, %if.then690
  %cmp725.not = icmp eq ptr %call71, null, !dbg !4854
  br i1 %cmp725.not, label %if.end736, label %if.then727, !dbg !4856

if.then727:                                       ; preds = %if.end724
  %index729 = getelementptr inbounds %struct._MagickPixelPacket, ptr %s.2.lcssa1516, i64 -1, i32 9, !dbg !4857
  %149 = load float, ptr %index729, align 8, !dbg !4857, !tbaa !2294
  %conv730 = fpext float %149 to double, !dbg !4858
  %150 = load float, ptr %index431, align 8, !dbg !4859, !tbaa !2294
  %conv733 = fpext float %150 to double, !dbg !4859
  %151 = call double @llvm.fmuladd.f64(double %span.sroa.0.0.lcssa1514, double %conv730, double %conv733), !dbg !4859
  %conv734 = fptrunc double %151 to float, !dbg !4859
  store float %conv734, ptr %index431, align 8, !dbg !4859, !tbaa !2294
  br label %if.end736, !dbg !4860

if.end736:                                        ; preds = %if.end724, %if.then727, %for.end686
  %t.0.lcssa1518 = phi ptr [ %t.0.lcssa1519, %if.end724 ], [ %t.0.lcssa1519, %if.then727 ], [ %t.4, %for.end686 ]
  %next_column.0.lcssa1512 = phi i32 [ %next_column.0.lcssa1513, %if.end724 ], [ %next_column.0.lcssa1513, %if.then727 ], [ %next_column.3, %for.end686 ]
  %cmp737 = icmp eq i32 %next_column.0.lcssa1512, 0, !dbg !4861
  br i1 %cmp737, label %land.lhs.true739, label %if.end736.if.end763_crit_edge, !dbg !4863

if.end736.if.end763_crit_edge:                    ; preds = %if.end736
  %.pre1478 = load i64, ptr %columns31, align 8, !tbaa !2150
  br label %if.end763, !dbg !4863

land.lhs.true739:                                 ; preds = %if.end736
  %sub.ptr.lhs.cast = ptrtoint ptr %t.0.lcssa1518 to i64, !dbg !4864
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4864
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 56, !dbg !4864
  %152 = load i64, ptr %columns31, align 8, !dbg !4865, !tbaa !2150
  %cmp741 = icmp slt i64 %sub.ptr.div, %152, !dbg !4866
  br i1 %cmp741, label %if.then743, label %if.end763, !dbg !4867

if.then743:                                       ; preds = %land.lhs.true739
  %153 = load float, ptr %red383, align 8, !dbg !4868, !tbaa !2226
  %red745 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.0.lcssa1518, i64 0, i32 5, !dbg !4870
  store float %153, ptr %red745, align 8, !dbg !4871, !tbaa !2226
  %154 = load float, ptr %green393, align 4, !dbg !4872, !tbaa !2246
  %green747 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.0.lcssa1518, i64 0, i32 6, !dbg !4873
  store float %154, ptr %green747, align 4, !dbg !4874, !tbaa !2246
  %155 = load float, ptr %blue403, align 8, !dbg !4875, !tbaa !2258
  %blue749 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.0.lcssa1518, i64 0, i32 7, !dbg !4876
  store float %155, ptr %blue749, align 8, !dbg !4877, !tbaa !2258
  %156 = load i32, ptr %matte249, align 8, !dbg !4878, !tbaa !2806
  %cmp751.not = icmp eq i32 %156, 0, !dbg !4880
  br i1 %cmp751.not, label %if.end756, label %if.then753, !dbg !4881

if.then753:                                       ; preds = %if.then743
  %157 = load float, ptr %opacity417, align 4, !dbg !4882, !tbaa !2270
  %opacity755 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.0.lcssa1518, i64 0, i32 8, !dbg !4883
  store float %157, ptr %opacity755, align 4, !dbg !4884, !tbaa !2270
  br label %if.end756, !dbg !4885

if.end756:                                        ; preds = %if.then753, %if.then743
  %cmp757.not = icmp eq ptr %call71, null, !dbg !4886
  br i1 %cmp757.not, label %if.end763, label %if.then759, !dbg !4888

if.then759:                                       ; preds = %if.end756
  %158 = load float, ptr %index431, align 8, !dbg !4889, !tbaa !2294
  %index761 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.0.lcssa1518, i64 0, i32 9, !dbg !4890
  store float %158, ptr %index761, align 8, !dbg !4891, !tbaa !2294
  br label %if.end763, !dbg !4892

if.end763:                                        ; preds = %if.end736.if.end763_crit_edge, %if.end756, %if.then759, %land.lhs.true739
  %159 = phi i64 [ %.pre1478, %if.end736.if.end763_crit_edge ], [ %152, %if.end756 ], [ %152, %if.then759 ], [ %152, %land.lhs.true739 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %call66, metadata !4253, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %call32, metadata !4252, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.9, metadata !4238, metadata !DIExpression()), !dbg !4255
  %cmp7661440 = icmp sgt i64 %159, 0, !dbg !4893
  br i1 %cmp7661440, label %for.body768.lr.ph, label %if.end820, !dbg !4896

for.body768.lr.ph:                                ; preds = %if.end763
  %160 = load i32, ptr %matte249, align 8, !tbaa !2806
  %cmp770.not = icmp eq i32 %160, 0
  %cmp802.not = icmp eq ptr %call71, null
  br label %for.body768, !dbg !4896

for.body768:                                      ; preds = %for.body768.lr.ph, %if.end814
  %x.71444 = phi i64 [ 0, %for.body768.lr.ph ], [ %inc818, %if.end814 ]
  %q.11443 = phi ptr [ %call66, %for.body768.lr.ph ], [ %incdec.ptr816, %if.end814 ]
  %t.51442 = phi ptr [ %call32, %for.body768.lr.ph ], [ %incdec.ptr815, %if.end814 ]
  %alpha.121441 = phi float [ %alpha.9, %for.body768.lr.ph ], [ %conv781, %if.end814 ]
  call void @llvm.dbg.value(metadata i64 %x.71444, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %q.11443, metadata !4253, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata ptr %t.51442, metadata !4252, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.121441, metadata !4238, metadata !DIExpression()), !dbg !4255
  br i1 %cmp770.not, label %if.end778, label %if.then772, !dbg !4897

if.then772:                                       ; preds = %for.body768
  %opacity773 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.51442, i64 0, i32 8, !dbg !4899
  %161 = load float, ptr %opacity773, align 4, !dbg !4899, !tbaa !2270
  %sub774 = fsub float 6.553500e+04, %161, !dbg !4901
  %conv775 = fpext float %sub774 to double, !dbg !4902
  %mul776 = fmul double %conv775, 0x3EF0001000100010, !dbg !4903
  %conv777 = fptrunc double %mul776 to float, !dbg !4904
  call void @llvm.dbg.value(metadata float %conv777, metadata !4238, metadata !DIExpression()), !dbg !4255
  br label %if.end778, !dbg !4905

if.end778:                                        ; preds = %if.then772, %for.body768
  %alpha.13 = phi float [ %conv777, %if.then772 ], [ %alpha.121441, %for.body768 ], !dbg !4334
  call void @llvm.dbg.value(metadata float %alpha.13, metadata !4238, metadata !DIExpression()), !dbg !4255
  %conv779 = fpext float %alpha.13 to double, !dbg !4906
  call void @llvm.dbg.value(metadata double %conv779, metadata !1095, metadata !DIExpression()), !dbg !4907
  %cmp.i1291 = fcmp olt float %alpha.13, 0.000000e+00, !dbg !4909
  %cond.i1292 = select i1 %cmp.i1291, double -1.000000e+00, double 1.000000e+00, !dbg !4910
  call void @llvm.dbg.value(metadata double %cond.i1292, metadata !1101, metadata !DIExpression()), !dbg !4907
  %mul.i1293 = fmul double %cond.i1292, %conv779, !dbg !4911
  %cmp1.i1294 = fcmp ult double %mul.i1293, 1.000000e-15, !dbg !4912
  br i1 %cmp1.i1294, label %if.end.i1298, label %if.then.i1296, !dbg !4913

if.then.i1296:                                    ; preds = %if.end778
  %div.i1295 = fdiv double 1.000000e+00, %conv779, !dbg !4914
  br label %PerceptibleReciprocal.exit1300, !dbg !4915

if.end.i1298:                                     ; preds = %if.end778
  %div2.i1297 = fdiv double %cond.i1292, 1.000000e-15, !dbg !4916
  br label %PerceptibleReciprocal.exit1300, !dbg !4917

PerceptibleReciprocal.exit1300:                   ; preds = %if.then.i1296, %if.end.i1298
  %retval.0.i1299 = phi double [ %div.i1295, %if.then.i1296 ], [ %div2.i1297, %if.end.i1298 ], !dbg !4907
  %conv781 = fptrunc double %retval.0.i1299 to float, !dbg !4918
  call void @llvm.dbg.value(metadata float %conv781, metadata !4238, metadata !DIExpression()), !dbg !4255
  %red782 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.51442, i64 0, i32 5, !dbg !4919
  %162 = load float, ptr %red782, align 8, !dbg !4919, !tbaa !2226
  %mul783 = fmul float %162, %conv781, !dbg !4919
  call void @llvm.dbg.value(metadata float %mul783, metadata !2228, metadata !DIExpression()), !dbg !4920
  %cmp.i1301 = fcmp ugt float %mul783, 0.000000e+00, !dbg !4922
  br i1 %cmp.i1301, label %if.end.i1303, label %ClampToQuantum.exit1308, !dbg !4923

if.end.i1303:                                     ; preds = %PerceptibleReciprocal.exit1300
  %cmp1.i1302 = fcmp ult float %mul783, 6.553500e+04, !dbg !4924
  br i1 %cmp1.i1302, label %if.end3.i1306, label %ClampToQuantum.exit1308, !dbg !4925

if.end3.i1306:                                    ; preds = %if.end.i1303
  %add.i1304 = fadd float %mul783, 5.000000e-01, !dbg !4926
  %conv.i1305 = fptoui float %add.i1304 to i16, !dbg !4927
  br label %ClampToQuantum.exit1308, !dbg !4928

ClampToQuantum.exit1308:                          ; preds = %PerceptibleReciprocal.exit1300, %if.end.i1303, %if.end3.i1306
  %retval.0.i1307 = phi i16 [ %conv.i1305, %if.end3.i1306 ], [ 0, %PerceptibleReciprocal.exit1300 ], [ -1, %if.end.i1303 ], !dbg !4920
  %red785 = getelementptr inbounds %struct._PixelPacket, ptr %q.11443, i64 0, i32 2, !dbg !4919
  store i16 %retval.0.i1307, ptr %red785, align 2, !dbg !4919, !tbaa !2244
  %green786 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.51442, i64 0, i32 6, !dbg !4929
  %163 = load float, ptr %green786, align 4, !dbg !4929, !tbaa !2246
  %mul787 = fmul float %163, %conv781, !dbg !4929
  call void @llvm.dbg.value(metadata float %mul787, metadata !2228, metadata !DIExpression()), !dbg !4930
  %cmp.i1309 = fcmp ugt float %mul787, 0.000000e+00, !dbg !4932
  br i1 %cmp.i1309, label %if.end.i1311, label %ClampToQuantum.exit1316, !dbg !4933

if.end.i1311:                                     ; preds = %ClampToQuantum.exit1308
  %cmp1.i1310 = fcmp ult float %mul787, 6.553500e+04, !dbg !4934
  br i1 %cmp1.i1310, label %if.end3.i1314, label %ClampToQuantum.exit1316, !dbg !4935

if.end3.i1314:                                    ; preds = %if.end.i1311
  %add.i1312 = fadd float %mul787, 5.000000e-01, !dbg !4936
  %conv.i1313 = fptoui float %add.i1312 to i16, !dbg !4937
  br label %ClampToQuantum.exit1316, !dbg !4938

ClampToQuantum.exit1316:                          ; preds = %ClampToQuantum.exit1308, %if.end.i1311, %if.end3.i1314
  %retval.0.i1315 = phi i16 [ %conv.i1313, %if.end3.i1314 ], [ 0, %ClampToQuantum.exit1308 ], [ -1, %if.end.i1311 ], !dbg !4930
  %green789 = getelementptr inbounds %struct._PixelPacket, ptr %q.11443, i64 0, i32 1, !dbg !4929
  store i16 %retval.0.i1315, ptr %green789, align 2, !dbg !4929, !tbaa !2256
  %blue790 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.51442, i64 0, i32 7, !dbg !4939
  %164 = load float, ptr %blue790, align 8, !dbg !4939, !tbaa !2258
  %mul791 = fmul float %164, %conv781, !dbg !4939
  call void @llvm.dbg.value(metadata float %mul791, metadata !2228, metadata !DIExpression()), !dbg !4940
  %cmp.i1317 = fcmp ugt float %mul791, 0.000000e+00, !dbg !4942
  br i1 %cmp.i1317, label %if.end.i1319, label %ClampToQuantum.exit1324, !dbg !4943

if.end.i1319:                                     ; preds = %ClampToQuantum.exit1316
  %cmp1.i1318 = fcmp ult float %mul791, 6.553500e+04, !dbg !4944
  br i1 %cmp1.i1318, label %if.end3.i1322, label %ClampToQuantum.exit1324, !dbg !4945

if.end3.i1322:                                    ; preds = %if.end.i1319
  %add.i1320 = fadd float %mul791, 5.000000e-01, !dbg !4946
  %conv.i1321 = fptoui float %add.i1320 to i16, !dbg !4947
  br label %ClampToQuantum.exit1324, !dbg !4948

ClampToQuantum.exit1324:                          ; preds = %ClampToQuantum.exit1316, %if.end.i1319, %if.end3.i1322
  %retval.0.i1323 = phi i16 [ %conv.i1321, %if.end3.i1322 ], [ 0, %ClampToQuantum.exit1316 ], [ -1, %if.end.i1319 ], !dbg !4940
  store i16 %retval.0.i1323, ptr %q.11443, align 2, !dbg !4939, !tbaa !2268
  br i1 %cmp770.not, label %if.end801, label %if.then797, !dbg !4949

if.then797:                                       ; preds = %ClampToQuantum.exit1324
  %opacity798 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.51442, i64 0, i32 8, !dbg !4950
  %165 = load float, ptr %opacity798, align 4, !dbg !4950, !tbaa !2270
  call void @llvm.dbg.value(metadata float %165, metadata !2228, metadata !DIExpression()), !dbg !4952
  %cmp.i1325 = fcmp ugt float %165, 0.000000e+00, !dbg !4954
  br i1 %cmp.i1325, label %if.end.i1327, label %ClampToQuantum.exit1332, !dbg !4955

if.end.i1327:                                     ; preds = %if.then797
  %cmp1.i1326 = fcmp ult float %165, 6.553500e+04, !dbg !4956
  br i1 %cmp1.i1326, label %if.end3.i1330, label %ClampToQuantum.exit1332, !dbg !4957

if.end3.i1330:                                    ; preds = %if.end.i1327
  %add.i1328 = fadd float %165, 5.000000e-01, !dbg !4958
  %conv.i1329 = fptoui float %add.i1328 to i16, !dbg !4959
  br label %ClampToQuantum.exit1332, !dbg !4960

ClampToQuantum.exit1332:                          ; preds = %if.then797, %if.end.i1327, %if.end3.i1330
  %retval.0.i1331 = phi i16 [ %conv.i1329, %if.end3.i1330 ], [ 0, %if.then797 ], [ -1, %if.end.i1327 ], !dbg !4952
  %opacity800 = getelementptr inbounds %struct._PixelPacket, ptr %q.11443, i64 0, i32 3, !dbg !4950
  store i16 %retval.0.i1331, ptr %opacity800, align 2, !dbg !4950, !tbaa !2280
  br label %if.end801, !dbg !4950

if.end801:                                        ; preds = %ClampToQuantum.exit1332, %ClampToQuantum.exit1324
  br i1 %cmp802.not, label %if.end814, label %if.then808, !dbg !4961

if.then808:                                       ; preds = %if.end801
  %add.ptr805 = getelementptr inbounds i16, ptr %call71, i64 %x.71444, !dbg !4962
  %index809 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.51442, i64 0, i32 9, !dbg !4962
  %166 = load float, ptr %index809, align 8, !dbg !4962, !tbaa !2294
  %mul810 = fmul float %166, %conv781, !dbg !4962
  call void @llvm.dbg.value(metadata float %mul810, metadata !2228, metadata !DIExpression()), !dbg !4966
  %cmp.i1333 = fcmp ugt float %mul810, 0.000000e+00, !dbg !4968
  br i1 %cmp.i1333, label %if.end.i1335, label %ClampToQuantum.exit1340, !dbg !4969

if.end.i1335:                                     ; preds = %if.then808
  %cmp1.i1334 = fcmp ult float %mul810, 6.553500e+04, !dbg !4970
  br i1 %cmp1.i1334, label %if.end3.i1338, label %ClampToQuantum.exit1340, !dbg !4971

if.end3.i1338:                                    ; preds = %if.end.i1335
  %add.i1336 = fadd float %mul810, 5.000000e-01, !dbg !4972
  %conv.i1337 = fptoui float %add.i1336 to i16, !dbg !4973
  br label %ClampToQuantum.exit1340, !dbg !4974

ClampToQuantum.exit1340:                          ; preds = %if.then808, %if.end.i1335, %if.end3.i1338
  %retval.0.i1339 = phi i16 [ %conv.i1337, %if.end3.i1338 ], [ 0, %if.then808 ], [ -1, %if.end.i1335 ], !dbg !4966
  store i16 %retval.0.i1339, ptr %add.ptr805, align 2, !dbg !4962, !tbaa !2304
  br label %if.end814, !dbg !4962

if.end814:                                        ; preds = %ClampToQuantum.exit1340, %if.end801
  %incdec.ptr815 = getelementptr inbounds %struct._MagickPixelPacket, ptr %t.51442, i64 1, !dbg !4975
  call void @llvm.dbg.value(metadata ptr %incdec.ptr815, metadata !4252, metadata !DIExpression()), !dbg !4334
  %incdec.ptr816 = getelementptr inbounds %struct._PixelPacket, ptr %q.11443, i64 1, !dbg !4976
  call void @llvm.dbg.value(metadata ptr %incdec.ptr816, metadata !4253, metadata !DIExpression()), !dbg !4334
  %inc818 = add nuw nsw i64 %x.71444, 1, !dbg !4977
  call void @llvm.dbg.value(metadata i64 %inc818, metadata !4254, metadata !DIExpression()), !dbg !4334
  call void @llvm.dbg.value(metadata float %conv781, metadata !4238, metadata !DIExpression()), !dbg !4255
  %exitcond1476.not = icmp eq i64 %inc818, %159, !dbg !4893
  br i1 %exitcond1476.not, label %if.end820, label %for.body768, !dbg !4896, !llvm.loop !4978

if.end820:                                        ; preds = %if.end814, %if.end528, %if.end763, %for.cond478.preheader
  %call821 = call i32 @SyncCacheViewAuthenticPixels(ptr noundef %call57, ptr noundef %exception) #26, !dbg !4980
  %cmp822 = icmp eq i32 %call821, 0, !dbg !4982
  br i1 %cmp822, label %for.end840, label %if.end825, !dbg !4983

if.end825:                                        ; preds = %if.end820
  %167 = load i64, ptr %rows24, align 8, !dbg !4984, !tbaa !2154
  call void @llvm.dbg.value(metadata ptr %image, metadata !2319, metadata !DIExpression()) #22, !dbg !4985
  call void @llvm.dbg.value(metadata ptr @.str.37, metadata !2325, metadata !DIExpression()) #22, !dbg !4985
  call void @llvm.dbg.value(metadata i64 %y.01458, metadata !2326, metadata !DIExpression()) #22, !dbg !4985
  call void @llvm.dbg.value(metadata i64 %167, metadata !2327, metadata !DIExpression()) #22, !dbg !4985
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %message.i, metadata !2328, metadata !DIExpression()) #22, !dbg !4987
  %168 = load ptr, ptr %progress_monitor.i, align 8, !dbg !4988, !tbaa !2314
  %cmp.i1341 = icmp eq ptr %168, null, !dbg !4990
  br i1 %cmp.i1341, label %SetImageProgress.exit.thread, label %SetImageProgress.exit, !dbg !4991

SetImageProgress.exit.thread:                     ; preds = %if.end825
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !4992
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !4230, metadata !DIExpression()), !dbg !4255
  br label %for.inc838, !dbg !4993

SetImageProgress.exit:                            ; preds = %if.end825
  %call.i = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %message.i, i64 noundef 4096, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.37, ptr noundef nonnull %filename.i) #22, !dbg !4994
  %169 = load ptr, ptr %progress_monitor.i, align 8, !dbg !4995, !tbaa !2314
  %170 = load ptr, ptr %client_data.i, align 8, !dbg !4996, !tbaa !2336
  %call4.i = call i32 %169(ptr noundef nonnull %message.i, i64 noundef %y.01458, i64 noundef %167, ptr noundef %170) #22, !dbg !4997
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %message.i) #22, !dbg !4992
  call void @llvm.dbg.value(metadata i32 %call4.i, metadata !4230, metadata !DIExpression()), !dbg !4255
  %cmp828 = icmp eq i32 %call4.i, 0, !dbg !4998
  br i1 %cmp828, label %for.end840, label %for.inc838, !dbg !4993

for.inc838:                                       ; preds = %SetImageProgress.exit.thread, %SetImageProgress.exit
  call void @llvm.dbg.value(metadata i64 %number_rows.4, metadata !4242, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %i.5, metadata !4241, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double undef, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata double %scale.sroa.13.3, metadata !4239, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !4231, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i32 %next_row.4, metadata !4229, metadata !DIExpression()), !dbg !4255
  %inc839 = add nuw nsw i64 %y.01458, 1, !dbg !5000
  call void @llvm.dbg.value(metadata i64 %inc839, metadata !4243, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !4240, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !4255
  %171 = load i64, ptr %rows25, align 8, !dbg !4323, !tbaa !2154
  %cmp59 = icmp slt i64 %inc839, %171, !dbg !4324
  br i1 %cmp59, label %for.body, label %for.end840, !dbg !4325, !llvm.loop !5001

for.end840:                                       ; preds = %for.inc838, %for.body, %if.end64, %if.then76, %if.then294, %if.end820, %SetImageProgress.exit, %if.end47
  %status.4 = phi i32 [ 1, %if.end47 ], [ 0, %SetImageProgress.exit ], [ 0, %if.end820 ], [ 0, %if.then294 ], [ 0, %if.then76 ], [ 0, %if.end64 ], [ 0, %for.body ], [ %status.2, %for.inc838 ], !dbg !5003
  call void @llvm.dbg.value(metadata i32 %status.4, metadata !4231, metadata !DIExpression()), !dbg !4255
  %call841 = call ptr @DestroyCacheView(ptr noundef %call57) #22, !dbg !5004
  call void @llvm.dbg.value(metadata ptr %call841, metadata !4226, metadata !DIExpression()), !dbg !4255
  %call842 = call ptr @DestroyCacheView(ptr noundef %call56) #22, !dbg !5005
  call void @llvm.dbg.value(metadata ptr %call842, metadata !4225, metadata !DIExpression()), !dbg !4255
  %call843 = call ptr @RelinquishMagickMemory(ptr noundef %call34) #22, !dbg !5006
  call void @llvm.dbg.value(metadata ptr %call843, metadata !4236, metadata !DIExpression()), !dbg !4255
  %call844 = call ptr @RelinquishMagickMemory(ptr noundef %call32) #22, !dbg !5007
  call void @llvm.dbg.value(metadata ptr %call844, metadata !4233, metadata !DIExpression()), !dbg !4255
  %172 = load i64, ptr %rows25, align 8, !dbg !5008, !tbaa !2154
  %173 = load i64, ptr %rows24, align 8, !dbg !5010, !tbaa !2154
  %cmp847.not = icmp eq i64 %172, %173, !dbg !5011
  br i1 %cmp847.not, label %if.end851, label %if.then849, !dbg !5012

if.then849:                                       ; preds = %for.end840
  %call850 = call ptr @RelinquishMagickMemory(ptr noundef %scanline.0) #22, !dbg !5013
  call void @llvm.dbg.value(metadata ptr %call850, metadata !4234, metadata !DIExpression()), !dbg !4255
  br label %if.end851, !dbg !5014

if.end851:                                        ; preds = %if.then849, %for.end840
  %call852 = call ptr @RelinquishMagickMemory(ptr noundef %call23) #22, !dbg !5015
  call void @llvm.dbg.value(metadata ptr %call852, metadata !4235, metadata !DIExpression()), !dbg !4255
  %type = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !5016
  %174 = load i32, ptr %type, align 8, !dbg !5016, !tbaa !2882
  %type853 = getelementptr inbounds %struct._Image, ptr %call12, i64 0, i32 77, !dbg !5017
  store i32 %174, ptr %type853, align 8, !dbg !5018, !tbaa !2882
  %cmp854 = icmp eq i32 %status.4, 0, !dbg !5019
  br i1 %cmp854, label %if.then856, label %cleanup859, !dbg !5021

if.then856:                                       ; preds = %if.end851
  %call857 = call ptr @DestroyImage(ptr noundef nonnull %call12) #22, !dbg !5022
  call void @llvm.dbg.value(metadata ptr %call857, metadata !4227, metadata !DIExpression()), !dbg !4255
  br label %cleanup859, !dbg !5023

cleanup859:                                       ; preds = %if.end851, %if.then856, %if.end11, %if.end, %if.then42, %if.then18, %if.then9
  %retval.0 = phi ptr [ %call10, %if.then9 ], [ null, %if.then18 ], [ null, %if.then42 ], [ null, %if.end ], [ null, %if.end11 ], [ %call857, %if.then856 ], [ %call12, %if.end851 ], !dbg !4255
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %zero) #22, !dbg !5024
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #22, !dbg !5024
  ret ptr %retval.0, !dbg !5024
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ThumbnailImage(ptr noundef %image, i64 noundef %columns, i64 noundef %rows, ptr noundef %exception) local_unnamed_addr #0 !dbg !5025 {
entry:
  %value = alloca [4096 x i8], align 16
  %version = alloca i64, align 8
  %attributes = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !5027, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i64 %columns, metadata !5028, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata i64 %rows, metadata !5029, metadata !DIExpression()), !dbg !5077
  call void @llvm.dbg.value(metadata ptr %exception, metadata !5030, metadata !DIExpression()), !dbg !5077
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %value) #22, !dbg !5078
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5031, metadata !DIExpression()), !dbg !5079
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %version) #22, !dbg !5080
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %attributes) #22, !dbg !5081
  call void @llvm.dbg.declare(metadata ptr %attributes, metadata !5037, metadata !DIExpression()), !dbg !5082
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !5083
  %0 = load i32, ptr %debug, align 8, !dbg !5083, !tbaa !944
  %cmp.not = icmp eq i32 %0, 0, !dbg !5085
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !5086

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !5087
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 3759, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #22, !dbg !5088
  br label %if.end, !dbg !5089

if.end:                                           ; preds = %if.then, %entry
  %conv = uitofp i64 %columns to float, !dbg !5090
  %columns1 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !5091
  %1 = load i64, ptr %columns1, align 8, !dbg !5091, !tbaa !2150
  %conv2 = uitofp i64 %1 to float, !dbg !5092
  %div = fdiv float %conv, %conv2, !dbg !5093
  call void @llvm.dbg.value(metadata float %div, metadata !5034, metadata !DIExpression()), !dbg !5077
  %conv3 = uitofp i64 %rows to float, !dbg !5094
  %rows4 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !5095
  %2 = load i64, ptr %rows4, align 8, !dbg !5095, !tbaa !2154
  %conv5 = uitofp i64 %2 to float, !dbg !5096
  %div6 = fdiv float %conv3, %conv5, !dbg !5097
  call void @llvm.dbg.value(metadata float %div6, metadata !5035, metadata !DIExpression()), !dbg !5077
  %mul = fmul float %div, %div6, !dbg !5098
  %conv7 = fpext float %mul to double, !dbg !5099
  %cmp8 = fcmp ogt double %conv7, 1.000000e-01, !dbg !5100
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !5101

if.then10:                                        ; preds = %if.end
  %filter = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 32, !dbg !5102
  %3 = load i32, ptr %filter, align 8, !dbg !5102, !tbaa !5103
  %blur = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 30, !dbg !5104
  %4 = load double, ptr %blur, align 8, !dbg !5104, !tbaa !5105
  %call11 = tail call ptr @ResizeImage(ptr noundef nonnull %image, i64 noundef %columns, i64 noundef %rows, i32 noundef %3, double noundef %4, ptr noundef %exception), !dbg !5106
  call void @llvm.dbg.value(metadata ptr %call11, metadata !5033, metadata !DIExpression()), !dbg !5077
  br label %if.end35, !dbg !5107

if.else:                                          ; preds = %if.end
  %mul12 = mul i64 %columns, 5, !dbg !5108
  %cmp13 = icmp ult i64 %mul12, 128, !dbg !5109
  br i1 %cmp13, label %if.then18, label %lor.lhs.false, !dbg !5110

lor.lhs.false:                                    ; preds = %if.else
  %mul15 = mul i64 %rows, 5, !dbg !5111
  %cmp16 = icmp ult i64 %mul15, 128, !dbg !5112
  br i1 %cmp16, label %if.then18, label %if.else22, !dbg !5113

if.then18:                                        ; preds = %lor.lhs.false, %if.else
  %filter19 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 32, !dbg !5114
  %5 = load i32, ptr %filter19, align 8, !dbg !5114, !tbaa !5103
  %blur20 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 30, !dbg !5115
  %6 = load double, ptr %blur20, align 8, !dbg !5115, !tbaa !5105
  %call21 = tail call ptr @ResizeImage(ptr noundef nonnull %image, i64 noundef %columns, i64 noundef %rows, i32 noundef %5, double noundef %6, ptr noundef %exception), !dbg !5116
  call void @llvm.dbg.value(metadata ptr %call21, metadata !5033, metadata !DIExpression()), !dbg !5077
  br label %if.end35, !dbg !5117

if.else22:                                        ; preds = %lor.lhs.false
  %call25 = tail call ptr @SampleImage(ptr noundef nonnull %image, i64 noundef %mul12, i64 noundef %mul15, ptr noundef %exception), !dbg !5118
  call void @llvm.dbg.value(metadata ptr %call25, metadata !5073, metadata !DIExpression()), !dbg !5119
  %cmp26 = icmp eq ptr %call25, null, !dbg !5120
  br i1 %cmp26, label %cleanup128, label %cleanup, !dbg !5122

cleanup:                                          ; preds = %if.else22
  %filter30 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 32, !dbg !5123
  %7 = load i32, ptr %filter30, align 8, !dbg !5123, !tbaa !5103
  %blur31 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 30, !dbg !5124
  %8 = load double, ptr %blur31, align 8, !dbg !5124, !tbaa !5105
  %call32 = tail call ptr @ResizeImage(ptr noundef nonnull %call25, i64 noundef %columns, i64 noundef %rows, i32 noundef %7, double noundef %8, ptr noundef %exception), !dbg !5125
  call void @llvm.dbg.value(metadata ptr %call32, metadata !5033, metadata !DIExpression()), !dbg !5077
  %call33 = tail call ptr @DestroyImage(ptr noundef nonnull %call25) #22, !dbg !5126
  call void @llvm.dbg.value(metadata ptr %call33, metadata !5073, metadata !DIExpression()), !dbg !5119
  br label %if.end35

if.end35:                                         ; preds = %cleanup, %if.then18, %if.then10
  %thumbnail_image.1 = phi ptr [ %call11, %if.then10 ], [ %call21, %if.then18 ], [ %call32, %cleanup ]
  call void @llvm.dbg.value(metadata ptr %thumbnail_image.1, metadata !5033, metadata !DIExpression()), !dbg !5077
  %cmp36 = icmp eq ptr %thumbnail_image.1, null, !dbg !5127
  br i1 %cmp36, label %cleanup128, label %if.end39, !dbg !5129

if.end39:                                         ; preds = %if.end35
  %page = getelementptr inbounds %struct._Image, ptr %thumbnail_image.1, i64 0, i32 26, !dbg !5130
  %call40 = tail call i32 @ParseAbsoluteGeometry(ptr noundef nonnull @.str.38, ptr noundef nonnull %page) #22, !dbg !5131
  %matte = getelementptr inbounds %struct._Image, ptr %thumbnail_image.1, i64 0, i32 6, !dbg !5132
  %9 = load i32, ptr %matte, align 8, !dbg !5132, !tbaa !2806
  %cmp41 = icmp eq i32 %9, 0, !dbg !5134
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !5135

if.then43:                                        ; preds = %if.end39
  %call44 = tail call i32 @SetImageAlphaChannel(ptr noundef nonnull %thumbnail_image.1, i32 noundef 6) #22, !dbg !5136
  br label %if.end45, !dbg !5137

if.end45:                                         ; preds = %if.then43, %if.end39
  %depth = getelementptr inbounds %struct._Image, ptr %thumbnail_image.1, i64 0, i32 9, !dbg !5138
  store i64 8, ptr %depth, align 8, !dbg !5139, !tbaa !5140
  %interlace = getelementptr inbounds %struct._Image, ptr %thumbnail_image.1, i64 0, i32 33, !dbg !5141
  store i32 1, ptr %interlace, align 4, !dbg !5142, !tbaa !5143
  tail call void @ResetImageProfileIterator(ptr noundef nonnull %thumbnail_image.1) #22, !dbg !5144
  %call46 = tail call ptr @GetNextImageProfile(ptr noundef nonnull %thumbnail_image.1) #22, !dbg !5145
  call void @llvm.dbg.value(metadata ptr %call46, metadata !5032, metadata !DIExpression()), !dbg !5077
  %cmp47.not197 = icmp eq ptr %call46, null, !dbg !5147
  br i1 %cmp47.not197, label %for.end, label %for.body, !dbg !5149

for.body:                                         ; preds = %if.end45, %if.end57
  %name.0198 = phi ptr [ %call58, %if.end57 ], [ %call46, %if.end45 ]
  call void @llvm.dbg.value(metadata ptr %name.0198, metadata !5032, metadata !DIExpression()), !dbg !5077
  %call49 = tail call i32 @LocaleCompare(ptr noundef nonnull %name.0198, ptr noundef nonnull @.str.39) #22, !dbg !5150
  %cmp50.not = icmp eq i32 %call49, 0, !dbg !5153
  br i1 %cmp50.not, label %if.end57, label %land.lhs.true, !dbg !5154

land.lhs.true:                                    ; preds = %for.body
  %call52 = tail call i32 @LocaleCompare(ptr noundef nonnull %name.0198, ptr noundef nonnull @.str.40) #22, !dbg !5155
  %cmp53.not = icmp eq i32 %call52, 0, !dbg !5156
  br i1 %cmp53.not, label %if.end57, label %if.then55, !dbg !5157

if.then55:                                        ; preds = %land.lhs.true
  %call56 = tail call i32 @DeleteImageProfile(ptr noundef %thumbnail_image.1, ptr noundef nonnull %name.0198) #22, !dbg !5158
  tail call void @ResetImageProfileIterator(ptr noundef %thumbnail_image.1) #22, !dbg !5160
  br label %if.end57, !dbg !5161

if.end57:                                         ; preds = %if.then55, %land.lhs.true, %for.body
  %call58 = tail call ptr @GetNextImageProfile(ptr noundef %thumbnail_image.1) #22, !dbg !5162
  call void @llvm.dbg.value(metadata ptr %call58, metadata !5032, metadata !DIExpression()), !dbg !5077
  %cmp47.not = icmp eq ptr %call58, null, !dbg !5147
  br i1 %cmp47.not, label %for.end, label %for.body, !dbg !5149, !llvm.loop !5163

for.end:                                          ; preds = %if.end57, %if.end45
  %call59 = tail call i32 @DeleteImageProperty(ptr noundef %thumbnail_image.1, ptr noundef nonnull @.str.41) #22, !dbg !5165
  %magick_filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 54, !dbg !5166
  %call62 = call i64 @CopyMagickString(ptr noundef nonnull %value, ptr noundef nonnull %magick_filename, i64 noundef 4096) #22, !dbg !5167
  %call65 = call ptr @strstr(ptr noundef nonnull %magick_filename, ptr noundef nonnull @.str.42) #28, !dbg !5168
  %cmp66 = icmp eq ptr %call65, null, !dbg !5170
  br i1 %cmp66, label %if.then68, label %if.end73, !dbg !5171

if.then68:                                        ; preds = %for.end
  %call72 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %value, i64 noundef 4096, ptr noundef nonnull @.str.43, ptr noundef nonnull %magick_filename) #22, !dbg !5172
  br label %if.end73, !dbg !5173

if.end73:                                         ; preds = %if.then68, %for.end
  %call75 = call i32 @SetImageProperty(ptr noundef %thumbnail_image.1, ptr noundef nonnull @.str.44, ptr noundef nonnull %value) #22, !dbg !5174
  %call79 = call i64 @CopyMagickString(ptr noundef nonnull %value, ptr noundef nonnull %magick_filename, i64 noundef 4096) #22, !dbg !5175
  %filename80 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !5176
  %call82 = call i32 @GetPathAttributes(ptr noundef nonnull %filename80, ptr noundef nonnull %attributes) #22, !dbg !5178
  %cmp83.not = icmp eq i32 %call82, 0, !dbg !5179
  br i1 %cmp83.not, label %if.end91, label %if.then85, !dbg !5180

if.then85:                                        ; preds = %if.end73
  %st_mtim = getelementptr inbounds %struct.stat, ptr %attributes, i64 0, i32 12, !dbg !5181
  %10 = load i64, ptr %st_mtim, align 8, !dbg !5181, !tbaa !5183
  %conv87 = sitofp i64 %10 to double, !dbg !5186
  %call88 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %value, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %conv87) #22, !dbg !5187
  %call90 = call i32 @SetImageProperty(ptr noundef %thumbnail_image.1, ptr noundef nonnull @.str.46, ptr noundef nonnull %value) #22, !dbg !5188
  br label %if.end91, !dbg !5189

if.end91:                                         ; preds = %if.then85, %if.end73
  %st_mtim93 = getelementptr inbounds %struct.stat, ptr %attributes, i64 0, i32 12, !dbg !5190
  %11 = load i64, ptr %st_mtim93, align 8, !dbg !5190, !tbaa !5183
  %conv95 = sitofp i64 %11 to double, !dbg !5191
  %call96 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %value, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %conv95) #22, !dbg !5192
  %call97 = call i64 @GetBlobSize(ptr noundef %image) #22, !dbg !5193
  %call99 = call i64 @FormatMagickSize(i64 noundef %call97, i32 noundef 0, ptr noundef nonnull %value) #22, !dbg !5194
  %call101 = call i64 @ConcatenateMagickString(ptr noundef nonnull %value, ptr noundef nonnull @.str.47, i64 noundef 4096) #22, !dbg !5195
  %call103 = call i32 @SetImageProperty(ptr noundef %thumbnail_image.1, ptr noundef nonnull @.str.48, ptr noundef nonnull %value) #22, !dbg !5196
  %magick = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 55, !dbg !5197
  %call106 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %value, i64 noundef 4096, ptr noundef nonnull @.str.49, ptr noundef nonnull %magick) #22, !dbg !5198
  call void @LocaleLower(ptr noundef nonnull %value) #22, !dbg !5199
  %call109 = call i32 @SetImageProperty(ptr noundef %thumbnail_image.1, ptr noundef nonnull @.str.50, ptr noundef nonnull %value) #22, !dbg !5200
  call void @llvm.dbg.value(metadata ptr %version, metadata !5036, metadata !DIExpression(DW_OP_deref)), !dbg !5077
  %call110 = call ptr @GetMagickVersion(ptr noundef nonnull %version) #22, !dbg !5201
  %call111 = call i32 @SetImageProperty(ptr noundef %thumbnail_image.1, ptr noundef nonnull @.str.51, ptr noundef %call110) #22, !dbg !5202
  %magick_columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 56, !dbg !5203
  %12 = load i64, ptr %magick_columns, align 8, !dbg !5203, !tbaa !5204
  %conv113 = uitofp i64 %12 to double, !dbg !5205
  %call114 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %value, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %conv113) #22, !dbg !5206
  %call116 = call i32 @SetImageProperty(ptr noundef %thumbnail_image.1, ptr noundef nonnull @.str.52, ptr noundef nonnull %value) #22, !dbg !5207
  %magick_rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 57, !dbg !5208
  %13 = load i64, ptr %magick_rows, align 8, !dbg !5208, !tbaa !5209
  %conv118 = uitofp i64 %13 to double, !dbg !5210
  %call119 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %value, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %conv118) #22, !dbg !5211
  %call121 = call i32 @SetImageProperty(ptr noundef %thumbnail_image.1, ptr noundef nonnull @.str.53, ptr noundef nonnull %value) #22, !dbg !5212
  %call123 = call i64 @GetImageListLength(ptr noundef %image) #22, !dbg !5213
  %conv124 = uitofp i64 %call123 to double, !dbg !5214
  %call125 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %value, i64 noundef 4096, ptr noundef nonnull @.str.45, double noundef %conv124) #22, !dbg !5215
  %call127 = call i32 @SetImageProperty(ptr noundef %thumbnail_image.1, ptr noundef nonnull @.str.54, ptr noundef nonnull %value) #22, !dbg !5216
  br label %cleanup128, !dbg !5217

cleanup128:                                       ; preds = %if.else22, %if.end35, %if.end91
  %retval.1 = phi ptr [ %thumbnail_image.1, %if.end91 ], [ null, %if.end35 ], [ null, %if.else22 ], !dbg !5077
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %attributes) #22, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %version) #22, !dbg !5218
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %value) #22, !dbg !5218
  ret ptr %retval.1, !dbg !5218
}

declare !dbg !5219 i32 @ParseAbsoluteGeometry(ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !5223 i32 @SetImageAlphaChannel(ptr noundef, i32 noundef) local_unnamed_addr #10

declare !dbg !5229 void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #10

declare !dbg !5232 ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #10

declare !dbg !5235 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !5238 i32 @DeleteImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !5239 i32 @DeleteImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !5241 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #18

declare !dbg !5244 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #10

declare !dbg !5248 i32 @SetImageProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !5251 i32 @GetPathAttributes(ptr noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !5255 i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

declare !dbg !5258 i64 @GetBlobSize(ptr noundef) local_unnamed_addr #10

declare !dbg !5262 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare !dbg !5263 void @LocaleLower(ptr noundef) local_unnamed_addr #10

declare !dbg !5266 ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #10

declare !dbg !5271 i64 @GetImageListLength(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @exp(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #19

declare !dbg !5275 double @InterpretLocaleValue(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define internal fastcc ptr @AcquireContributionThreadSet(i64 noundef %count) unnamed_addr #0 !dbg !5276 {
entry:
  call void @llvm.dbg.value(metadata i64 %count, metadata !5280, metadata !DIExpression()), !dbg !5284
  %call = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22, !dbg !5285
  call void @llvm.dbg.value(metadata i64 %call, metadata !5283, metadata !DIExpression()), !dbg !5284
  %call1 = tail call ptr @AcquireQuantumMemory(i64 noundef %call, i64 noundef 8) #27, !dbg !5286
  call void @llvm.dbg.value(metadata ptr %call1, metadata !5282, metadata !DIExpression()), !dbg !5284
  %cmp = icmp eq ptr %call1, null, !dbg !5287
  br i1 %cmp, label %cleanup, label %if.end, !dbg !5289

if.end:                                           ; preds = %entry
  %mul = shl i64 %call, 3, !dbg !5290
  %call2 = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1, i32 noundef 0, i64 noundef %mul) #22, !dbg !5291
  call void @llvm.dbg.value(metadata i64 0, metadata !5281, metadata !DIExpression()), !dbg !5284
  %cmp322 = icmp sgt i64 %call, 0, !dbg !5292
  br i1 %cmp322, label %for.body, label %cleanup, !dbg !5295

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i64 %i.023, 1, !dbg !5296
  call void @llvm.dbg.value(metadata i64 %inc, metadata !5281, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.value(metadata i64 %i.023, metadata !5281, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5284
  %exitcond.not = icmp eq i64 %inc, %call, !dbg !5292
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !5295, !llvm.loop !5297

for.body:                                         ; preds = %if.end, %for.cond
  %i.023 = phi i64 [ %inc, %for.cond ], [ 0, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.023, metadata !5281, metadata !DIExpression()), !dbg !5284
  %call4 = tail call ptr @AcquireAlignedMemory(i64 noundef %count, i64 noundef 16) #27, !dbg !5299
  %arrayidx = getelementptr inbounds ptr, ptr %call1, i64 %i.023, !dbg !5301
  store ptr %call4, ptr %arrayidx, align 8, !dbg !5302, !tbaa !1434
  %cmp6 = icmp eq ptr %call4, null, !dbg !5303
  call void @llvm.dbg.value(metadata i64 %i.023, metadata !5281, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !5284
  br i1 %cmp6, label %if.then7, label %for.cond, !dbg !5305

if.then7:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3461, metadata !DIExpression()) #22, !dbg !5306
  call void @llvm.dbg.value(metadata i64 0, metadata !3466, metadata !DIExpression()) #22, !dbg !5306
  %call14.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22, !dbg !5308
  %cmp15.i = icmp sgt i64 %call14.i, 0, !dbg !5309
  br i1 %cmp15.i, label %for.body.i, label %DestroyContributionThreadSet.exit, !dbg !5310

for.body.i:                                       ; preds = %if.then7, %for.inc.i
  %i.016.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %if.then7 ]
  call void @llvm.dbg.value(metadata i64 %i.016.i, metadata !3466, metadata !DIExpression()) #22, !dbg !5306
  %arrayidx.i = getelementptr inbounds ptr, ptr %call1, i64 %i.016.i, !dbg !5311
  %0 = load ptr, ptr %arrayidx.i, align 8, !dbg !5311, !tbaa !1434
  %cmp1.not.i = icmp eq ptr %0, null, !dbg !5312
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !5313

if.then.i:                                        ; preds = %for.body.i
  %call3.i = tail call ptr @RelinquishAlignedMemory(ptr noundef nonnull %0) #22, !dbg !5314
  store ptr %call3.i, ptr %arrayidx.i, align 8, !dbg !5315, !tbaa !1434
  br label %for.inc.i, !dbg !5316

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %inc.i = add nuw nsw i64 %i.016.i, 1, !dbg !5317
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !3466, metadata !DIExpression()) #22, !dbg !5306
  %call.i = tail call i64 @GetMagickResourceLimit(i32 noundef 6) #22, !dbg !5308
  %cmp.i = icmp slt i64 %inc.i, %call.i, !dbg !5309
  br i1 %cmp.i, label %for.body.i, label %DestroyContributionThreadSet.exit, !dbg !5310, !llvm.loop !5318

DestroyContributionThreadSet.exit:                ; preds = %for.inc.i, %if.then7
  %call5.i = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1) #22, !dbg !5320
  call void @llvm.dbg.value(metadata ptr %call5.i, metadata !3461, metadata !DIExpression()) #22, !dbg !5306
  br label %cleanup, !dbg !5321

cleanup:                                          ; preds = %for.cond, %if.end, %entry, %DestroyContributionThreadSet.exit
  %retval.0 = phi ptr [ %call5.i, %DestroyContributionThreadSet.exit ], [ null, %entry ], [ %call1, %if.end ], [ %call1, %for.cond ], !dbg !5284
  ret ptr %retval.0, !dbg !5322
}

declare !dbg !5323 i64 @GetMagickResourceLimit(i32 noundef) local_unnamed_addr #10

; Function Attrs: allocsize(0,1)
declare !dbg !5328 ptr @AcquireAlignedMemory(i64 noundef, i64 noundef) local_unnamed_addr #17

declare !dbg !5329 ptr @RelinquishAlignedMemory(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree norecurse nosync nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { hot "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { argmemonly nofree nounwind willreturn }
attributes #17 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { argmemonly nofree nounwind willreturn writeonly }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readnone willreturn }
attributes #25 = { noreturn nounwind }
attributes #26 = { hot nounwind }
attributes #27 = { nounwind allocsize(0,1) }
attributes #28 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!644}
!llvm.module.flags = !{!934, !935, !936, !937, !938, !939}
!llvm.ident = !{!940}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mapping", scope: !2, file: !3, line: 765, type: !928, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "AcquireResizeFilter", scope: !3, file: !3, line: 728, type: !4, scopeLine: 731, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !893)
!3 = !DIFile(filename: "apps/538.imagick_r/src/magick/resize.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "37b1b6791e8c15b40533e81b15218703")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !58, !641, !18, !642, !643}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResizeFilter", file: !8, line: 26, baseType: !9)
!8 = !DIFile(filename: "apps/538.imagick_r/src/magick/resize.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3d8d663b1b2fd0b2a79f67f76b4db66b")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ResizeFilter", file: !3, line: 87, size: 640, elements: !10)
!10 = !{!11, !21, !22, !23, !24, !25, !26, !30, !53, !54}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !9, file: !3, line: 90, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !18, !19}
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !16, line: 78, baseType: !17)
!16 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!17 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !9, file: !3, line: 91, baseType: !12, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "support", scope: !9, file: !3, line: 92, baseType: !15, size: 32, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "window_support", scope: !9, file: !3, line: 93, baseType: !15, size: 32, offset: 160)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !9, file: !3, line: 94, baseType: !15, size: 32, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !9, file: !3, line: 95, baseType: !15, size: 32, offset: 224)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "coefficient", scope: !9, file: !3, line: 96, baseType: !27, size: 224, offset: 256)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 224, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 7)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "filterWeightingType", scope: !9, file: !3, line: 99, baseType: !31, size: 32, offset: 480)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResizeWeightingFunctionType", file: !32, line: 44, baseType: !33)
!32 = !DIFile(filename: "apps/538.imagick_r/src/magick/resize-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ee028ba2160e82968d2b02ff146f9934")
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 25, baseType: !34, size: 32, elements: !35)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!36 = !DIEnumerator(name: "BoxWeightingFunction", value: 0)
!37 = !DIEnumerator(name: "TriangleWeightingFunction", value: 1)
!38 = !DIEnumerator(name: "CubicBCWeightingFunction", value: 2)
!39 = !DIEnumerator(name: "HanningWeightingFunction", value: 3)
!40 = !DIEnumerator(name: "HammingWeightingFunction", value: 4)
!41 = !DIEnumerator(name: "BlackmanWeightingFunction", value: 5)
!42 = !DIEnumerator(name: "GaussianWeightingFunction", value: 6)
!43 = !DIEnumerator(name: "QuadraticWeightingFunction", value: 7)
!44 = !DIEnumerator(name: "JincWeightingFunction", value: 8)
!45 = !DIEnumerator(name: "SincWeightingFunction", value: 9)
!46 = !DIEnumerator(name: "SincFastWeightingFunction", value: 10)
!47 = !DIEnumerator(name: "KaiserWeightingFunction", value: 11)
!48 = !DIEnumerator(name: "WelshWeightingFunction", value: 12)
!49 = !DIEnumerator(name: "BohmanWeightingFunction", value: 13)
!50 = !DIEnumerator(name: "LagrangeWeightingFunction", value: 14)
!51 = !DIEnumerator(name: "CosineWeightingFunction", value: 15)
!52 = !DIEnumerator(name: "LastWeightingFunction", value: 16)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "windowWeightingType", scope: !9, file: !3, line: 100, baseType: !31, size: 32, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !9, file: !3, line: 103, baseType: !55, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !16, line: 221, baseType: !61)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !62, line: 150, size: 105920, elements: !63)
!62 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!63 = !{!64, !71, !110, !137, !138, !151, !157, !158, !159, !160, !161, !162, !174, !175, !176, !177, !179, !193, !203, !205, !212, !215, !216, !217, !223, !224, !225, !234, !235, !236, !237, !238, !239, !276, !288, !296, !312, !385, !395, !397, !398, !399, !400, !401, !402, !403, !411, !432, !446, !447, !448, !449, !453, !457, !461, !462, !463, !464, !465, !556, !557, !559, !560, !570, !571, !573, !574, !575, !576, !577, !578, !596, !597, !598, !599, !600, !601, !602, !618, !619, !620, !621, !622, !626, !640}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !61, file: !62, line: 153, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !16, line: 209, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 204, baseType: !34, size: 32, elements: !67)
!67 = !{!68, !69, !70}
!68 = !DIEnumerator(name: "UndefinedClass", value: 0)
!69 = !DIEnumerator(name: "DirectClass", value: 1)
!70 = !DIEnumerator(name: "PseudoClass", value: 2)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !61, file: !62, line: 156, baseType: !72, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !73, line: 61, baseType: !74)
!73 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 25, baseType: !34, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!76 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!77 = !DIEnumerator(name: "RGBColorspace", value: 1)
!78 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!79 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!80 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!81 = !DIEnumerator(name: "LabColorspace", value: 5)
!82 = !DIEnumerator(name: "XYZColorspace", value: 6)
!83 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!84 = !DIEnumerator(name: "YCCColorspace", value: 8)
!85 = !DIEnumerator(name: "YIQColorspace", value: 9)
!86 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!87 = !DIEnumerator(name: "YUVColorspace", value: 11)
!88 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!89 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!90 = !DIEnumerator(name: "HSBColorspace", value: 14)
!91 = !DIEnumerator(name: "HSLColorspace", value: 15)
!92 = !DIEnumerator(name: "HWBColorspace", value: 16)
!93 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!94 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!95 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!96 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!97 = !DIEnumerator(name: "LogColorspace", value: 21)
!98 = !DIEnumerator(name: "CMYColorspace", value: 22)
!99 = !DIEnumerator(name: "LuvColorspace", value: 23)
!100 = !DIEnumerator(name: "HCLColorspace", value: 24)
!101 = !DIEnumerator(name: "LCHColorspace", value: 25)
!102 = !DIEnumerator(name: "LMSColorspace", value: 26)
!103 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!104 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!105 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!106 = !DIEnumerator(name: "HSIColorspace", value: 30)
!107 = !DIEnumerator(name: "HSVColorspace", value: 31)
!108 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!109 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !61, file: !62, line: 159, baseType: !111, size: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !112, line: 49, baseType: !113)
!112 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !112, line: 25, baseType: !34, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!115 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!116 = !DIEnumerator(name: "NoCompression", value: 1)
!117 = !DIEnumerator(name: "BZipCompression", value: 2)
!118 = !DIEnumerator(name: "DXT1Compression", value: 3)
!119 = !DIEnumerator(name: "DXT3Compression", value: 4)
!120 = !DIEnumerator(name: "DXT5Compression", value: 5)
!121 = !DIEnumerator(name: "FaxCompression", value: 6)
!122 = !DIEnumerator(name: "Group4Compression", value: 7)
!123 = !DIEnumerator(name: "JPEGCompression", value: 8)
!124 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!125 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!126 = !DIEnumerator(name: "LZWCompression", value: 11)
!127 = !DIEnumerator(name: "RLECompression", value: 12)
!128 = !DIEnumerator(name: "ZipCompression", value: 13)
!129 = !DIEnumerator(name: "ZipSCompression", value: 14)
!130 = !DIEnumerator(name: "PizCompression", value: 15)
!131 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!132 = !DIEnumerator(name: "B44Compression", value: 17)
!133 = !DIEnumerator(name: "B44ACompression", value: 18)
!134 = !DIEnumerator(name: "LZMACompression", value: 19)
!135 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!136 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !61, file: !62, line: 162, baseType: !55, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !61, file: !62, line: 165, baseType: !139, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !62, line: 86, baseType: !140)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 75, baseType: !34, size: 32, elements: !141)
!141 = !{!142, !143, !144, !145, !146, !147, !148, !149, !150}
!142 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!143 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!144 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!145 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!146 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!147 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!148 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!149 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!150 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !61, file: !62, line: 168, baseType: !152, size: 32, offset: 224)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !16, line: 215, baseType: !153)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 211, baseType: !34, size: 32, elements: !154)
!154 = !{!155, !156}
!155 = !DIEnumerator(name: "MagickFalse", value: 0)
!156 = !DIEnumerator(name: "MagickTrue", value: 1)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !61, file: !62, line: 169, baseType: !152, size: 32, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !61, file: !62, line: 172, baseType: !55, size: 64, offset: 320)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !61, file: !62, line: 173, baseType: !55, size: 64, offset: 384)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !61, file: !62, line: 174, baseType: !55, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !61, file: !62, line: 175, baseType: !55, size: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !61, file: !62, line: 178, baseType: !163, size: 64, offset: 576)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !165, line: 148, baseType: !166)
!165 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !165, line: 131, size: 64, elements: !167)
!167 = !{!168, !171, !172, !173}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !166, file: !165, line: 143, baseType: !169, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !16, line: 93, baseType: !170)
!170 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !166, file: !165, line: 144, baseType: !169, size: 16, offset: 16)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !166, file: !165, line: 145, baseType: !169, size: 16, offset: 32)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !166, file: !165, line: 146, baseType: !169, size: 16, offset: 48)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !61, file: !62, line: 179, baseType: !164, size: 64, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !61, file: !62, line: 180, baseType: !164, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !61, file: !62, line: 181, baseType: !164, size: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !61, file: !62, line: 184, baseType: !178, size: 64, offset: 832)
!178 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !61, file: !62, line: 187, baseType: !180, size: 768, offset: 896)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !62, line: 128, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !62, line: 121, size: 768, elements: !182)
!182 = !{!183, !190, !191, !192}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !181, file: !62, line: 124, baseType: !184, size: 192)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !62, line: 101, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !62, line: 95, size: 192, elements: !186)
!186 = !{!187, !188, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !185, file: !62, line: 98, baseType: !178, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !185, file: !62, line: 99, baseType: !178, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !185, file: !62, line: 100, baseType: !178, size: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !181, file: !62, line: 125, baseType: !184, size: 192, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !181, file: !62, line: 126, baseType: !184, size: 192, offset: 384)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !181, file: !62, line: 127, baseType: !184, size: 192, offset: 576)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !61, file: !62, line: 190, baseType: !194, size: 32, offset: 1664)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !195, line: 49, baseType: !196)
!195 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !195, line: 42, baseType: !34, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!199 = !DIEnumerator(name: "SaturationIntent", value: 1)
!200 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!201 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!202 = !DIEnumerator(name: "RelativeIntent", value: 4)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !61, file: !62, line: 193, baseType: !204, size: 64, offset: 1728)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !61, file: !62, line: 196, baseType: !206, size: 32, offset: 1792)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !62, line: 93, baseType: !207)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 88, baseType: !34, size: 32, elements: !208)
!208 = !{!209, !210, !211}
!209 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!210 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!211 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !61, file: !62, line: 199, baseType: !213, size: 64, offset: 1856)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !61, file: !62, line: 200, baseType: !213, size: 64, offset: 1920)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !61, file: !62, line: 201, baseType: !213, size: 64, offset: 1984)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !61, file: !62, line: 204, baseType: !218, size: 64, offset: 2048)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !219, line: 77, baseType: !220)
!219 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !221, line: 193, baseType: !222)
!221 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!222 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !61, file: !62, line: 207, baseType: !178, size: 64, offset: 2112)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !61, file: !62, line: 208, baseType: !178, size: 64, offset: 2176)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !61, file: !62, line: 211, baseType: !226, size: 256, offset: 2240)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !227, line: 130, baseType: !228)
!227 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !227, line: 121, size: 256, elements: !229)
!229 = !{!230, !231, !232, !233}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !228, file: !227, line: 124, baseType: !55, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !228, file: !227, line: 125, baseType: !55, size: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !228, file: !227, line: 128, baseType: !218, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !228, file: !227, line: 129, baseType: !218, size: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !61, file: !62, line: 212, baseType: !226, size: 256, offset: 2496)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !61, file: !62, line: 213, baseType: !226, size: 256, offset: 2752)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !61, file: !62, line: 216, baseType: !178, size: 64, offset: 3008)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !61, file: !62, line: 217, baseType: !178, size: 64, offset: 3072)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !61, file: !62, line: 218, baseType: !178, size: 64, offset: 3136)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !61, file: !62, line: 221, baseType: !240, size: 32, offset: 3200)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !241, line: 66, baseType: !242)
!241 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!242 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !241, line: 32, baseType: !34, size: 32, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!244 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!245 = !DIEnumerator(name: "PointFilter", value: 1)
!246 = !DIEnumerator(name: "BoxFilter", value: 2)
!247 = !DIEnumerator(name: "TriangleFilter", value: 3)
!248 = !DIEnumerator(name: "HermiteFilter", value: 4)
!249 = !DIEnumerator(name: "HanningFilter", value: 5)
!250 = !DIEnumerator(name: "HammingFilter", value: 6)
!251 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!252 = !DIEnumerator(name: "GaussianFilter", value: 8)
!253 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!254 = !DIEnumerator(name: "CubicFilter", value: 10)
!255 = !DIEnumerator(name: "CatromFilter", value: 11)
!256 = !DIEnumerator(name: "MitchellFilter", value: 12)
!257 = !DIEnumerator(name: "JincFilter", value: 13)
!258 = !DIEnumerator(name: "SincFilter", value: 14)
!259 = !DIEnumerator(name: "SincFastFilter", value: 15)
!260 = !DIEnumerator(name: "KaiserFilter", value: 16)
!261 = !DIEnumerator(name: "WelshFilter", value: 17)
!262 = !DIEnumerator(name: "ParzenFilter", value: 18)
!263 = !DIEnumerator(name: "BohmanFilter", value: 19)
!264 = !DIEnumerator(name: "BartlettFilter", value: 20)
!265 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!266 = !DIEnumerator(name: "LanczosFilter", value: 22)
!267 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!268 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!269 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!270 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!271 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!272 = !DIEnumerator(name: "CosineFilter", value: 28)
!273 = !DIEnumerator(name: "SplineFilter", value: 29)
!274 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!275 = !DIEnumerator(name: "SentinelFilter", value: 31)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !61, file: !62, line: 224, baseType: !277, size: 32, offset: 3232)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !62, line: 73, baseType: !278)
!278 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 63, baseType: !34, size: 32, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287}
!280 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!281 = !DIEnumerator(name: "NoInterlace", value: 1)
!282 = !DIEnumerator(name: "LineInterlace", value: 2)
!283 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!284 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!285 = !DIEnumerator(name: "GIFInterlace", value: 5)
!286 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!287 = !DIEnumerator(name: "PNGInterlace", value: 7)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !61, file: !62, line: 227, baseType: !289, size: 32, offset: 3264)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !290, line: 35, baseType: !291)
!290 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!291 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 30, baseType: !34, size: 32, elements: !292)
!292 = !{!293, !294, !295}
!293 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!294 = !DIEnumerator(name: "LSBEndian", value: 1)
!295 = !DIEnumerator(name: "MSBEndian", value: 2)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !61, file: !62, line: 230, baseType: !297, size: 32, offset: 3296)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !227, line: 91, baseType: !298)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 77, baseType: !34, size: 32, elements: !299)
!299 = !{!300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!300 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!301 = !DIEnumerator(name: "ForgetGravity", value: 0)
!302 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!303 = !DIEnumerator(name: "NorthGravity", value: 2)
!304 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!305 = !DIEnumerator(name: "WestGravity", value: 4)
!306 = !DIEnumerator(name: "CenterGravity", value: 5)
!307 = !DIEnumerator(name: "EastGravity", value: 6)
!308 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!309 = !DIEnumerator(name: "SouthGravity", value: 8)
!310 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!311 = !DIEnumerator(name: "StaticGravity", value: 10)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !61, file: !62, line: 233, baseType: !313, size: 32, offset: 3328)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !314, line: 99, baseType: !315)
!314 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!315 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !314, line: 25, baseType: !34, size: 32, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!317 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!318 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!319 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!320 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!321 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!322 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!323 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!324 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!325 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!326 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!327 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!328 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!329 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!330 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!331 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!332 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!333 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!334 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!335 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!336 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!337 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!338 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!339 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!340 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!341 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!342 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!343 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!344 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!345 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!346 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!347 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!348 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!349 = !DIEnumerator(name: "InCompositeOp", value: 32)
!350 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!351 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!352 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!353 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!354 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!355 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!356 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!357 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!358 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!359 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!360 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!361 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!362 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!363 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!364 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!365 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!366 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!367 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!368 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!369 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!370 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!371 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!372 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!373 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!374 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!375 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!376 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!377 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!378 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!379 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!380 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!381 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!382 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!383 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!384 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !61, file: !62, line: 236, baseType: !386, size: 32, offset: 3360)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !387, line: 32, baseType: !388)
!387 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!388 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !387, line: 25, baseType: !34, size: 32, elements: !389)
!389 = !{!390, !391, !392, !393, !394}
!390 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!391 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!392 = !DIEnumerator(name: "NoneDispose", value: 1)
!393 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!394 = !DIEnumerator(name: "PreviousDispose", value: 3)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !61, file: !62, line: 239, baseType: !396, size: 64, offset: 3392)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !61, file: !62, line: 242, baseType: !55, size: 64, offset: 3456)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !61, file: !62, line: 243, baseType: !55, size: 64, offset: 3520)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !61, file: !62, line: 246, baseType: !218, size: 64, offset: 3584)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !61, file: !62, line: 249, baseType: !55, size: 64, offset: 3648)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !61, file: !62, line: 250, baseType: !55, size: 64, offset: 3712)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !61, file: !62, line: 253, baseType: !218, size: 64, offset: 3776)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !61, file: !62, line: 256, baseType: !404, size: 192, offset: 3840)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !405, line: 68, baseType: !406)
!405 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !405, line: 62, size: 192, elements: !407)
!407 = !{!408, !409, !410}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !406, file: !405, line: 65, baseType: !178, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !406, file: !405, line: 66, baseType: !178, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !406, file: !405, line: 67, baseType: !178, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !61, file: !62, line: 259, baseType: !412, size: 512, offset: 4032)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !413, line: 51, baseType: !414)
!413 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !413, line: 40, size: 512, elements: !415)
!415 = !{!416, !423, !424, !431}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !414, file: !413, line: 43, baseType: !417, size: 192)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !413, line: 38, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !413, line: 32, size: 192, elements: !419)
!419 = !{!420, !421, !422}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !418, file: !413, line: 35, baseType: !178, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !418, file: !413, line: 36, baseType: !178, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !418, file: !413, line: 37, baseType: !178, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !414, file: !413, line: 44, baseType: !417, size: 192, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !414, file: !413, line: 47, baseType: !425, size: 32, offset: 384)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !413, line: 30, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !413, line: 25, baseType: !34, size: 32, elements: !427)
!427 = !{!428, !429, !430}
!428 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!429 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!430 = !DIEnumerator(name: "RunningTimerState", value: 2)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !414, file: !413, line: 50, baseType: !55, size: 64, offset: 448)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !61, file: !62, line: 262, baseType: !433, size: 64, offset: 4544)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !434, line: 26, baseType: !435)
!434 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!152, !438, !440, !443, !204}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !16, line: 150, baseType: !442)
!442 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !16, line: 151, baseType: !445)
!445 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !61, file: !62, line: 265, baseType: !204, size: 64, offset: 4608)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !61, file: !62, line: 266, baseType: !204, size: 64, offset: 4672)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !61, file: !62, line: 267, baseType: !204, size: 64, offset: 4736)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !61, file: !62, line: 270, baseType: !450, size: 64, offset: 4800)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !112, line: 52, baseType: !452)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !112, line: 51, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !61, file: !62, line: 273, baseType: !454, size: 64, offset: 4864)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !16, line: 217, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !16, line: 217, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !61, file: !62, line: 276, baseType: !458, size: 32768, offset: 4928)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 32768, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 4096)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !61, file: !62, line: 277, baseType: !458, size: 32768, offset: 37696)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !61, file: !62, line: 278, baseType: !458, size: 32768, offset: 70464)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !61, file: !62, line: 281, baseType: !55, size: 64, offset: 103232)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !61, file: !62, line: 282, baseType: !55, size: 64, offset: 103296)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !61, file: !62, line: 285, baseType: !466, size: 448, offset: 103360)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !16, line: 219, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !468, line: 102, size: 448, elements: !469)
!468 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!469 = !{!470, !544, !546, !547, !548, !549, !550, !555}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !467, file: !468, line: 105, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !468, line: 100, baseType: !472)
!472 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !468, line: 28, baseType: !34, size: 32, elements: !473)
!473 = !{!474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543}
!474 = !DIEnumerator(name: "UndefinedException", value: 0)
!475 = !DIEnumerator(name: "WarningException", value: 300)
!476 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!477 = !DIEnumerator(name: "TypeWarning", value: 305)
!478 = !DIEnumerator(name: "OptionWarning", value: 310)
!479 = !DIEnumerator(name: "DelegateWarning", value: 315)
!480 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!481 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!482 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!483 = !DIEnumerator(name: "BlobWarning", value: 335)
!484 = !DIEnumerator(name: "StreamWarning", value: 340)
!485 = !DIEnumerator(name: "CacheWarning", value: 345)
!486 = !DIEnumerator(name: "CoderWarning", value: 350)
!487 = !DIEnumerator(name: "FilterWarning", value: 352)
!488 = !DIEnumerator(name: "ModuleWarning", value: 355)
!489 = !DIEnumerator(name: "DrawWarning", value: 360)
!490 = !DIEnumerator(name: "ImageWarning", value: 365)
!491 = !DIEnumerator(name: "WandWarning", value: 370)
!492 = !DIEnumerator(name: "RandomWarning", value: 375)
!493 = !DIEnumerator(name: "XServerWarning", value: 380)
!494 = !DIEnumerator(name: "MonitorWarning", value: 385)
!495 = !DIEnumerator(name: "RegistryWarning", value: 390)
!496 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!497 = !DIEnumerator(name: "PolicyWarning", value: 399)
!498 = !DIEnumerator(name: "ErrorException", value: 400)
!499 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!500 = !DIEnumerator(name: "TypeError", value: 405)
!501 = !DIEnumerator(name: "OptionError", value: 410)
!502 = !DIEnumerator(name: "DelegateError", value: 415)
!503 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!504 = !DIEnumerator(name: "CorruptImageError", value: 425)
!505 = !DIEnumerator(name: "FileOpenError", value: 430)
!506 = !DIEnumerator(name: "BlobError", value: 435)
!507 = !DIEnumerator(name: "StreamError", value: 440)
!508 = !DIEnumerator(name: "CacheError", value: 445)
!509 = !DIEnumerator(name: "CoderError", value: 450)
!510 = !DIEnumerator(name: "FilterError", value: 452)
!511 = !DIEnumerator(name: "ModuleError", value: 455)
!512 = !DIEnumerator(name: "DrawError", value: 460)
!513 = !DIEnumerator(name: "ImageError", value: 465)
!514 = !DIEnumerator(name: "WandError", value: 470)
!515 = !DIEnumerator(name: "RandomError", value: 475)
!516 = !DIEnumerator(name: "XServerError", value: 480)
!517 = !DIEnumerator(name: "MonitorError", value: 485)
!518 = !DIEnumerator(name: "RegistryError", value: 490)
!519 = !DIEnumerator(name: "ConfigureError", value: 495)
!520 = !DIEnumerator(name: "PolicyError", value: 499)
!521 = !DIEnumerator(name: "FatalErrorException", value: 700)
!522 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!523 = !DIEnumerator(name: "TypeFatalError", value: 705)
!524 = !DIEnumerator(name: "OptionFatalError", value: 710)
!525 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!526 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!527 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!528 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!529 = !DIEnumerator(name: "BlobFatalError", value: 735)
!530 = !DIEnumerator(name: "StreamFatalError", value: 740)
!531 = !DIEnumerator(name: "CacheFatalError", value: 745)
!532 = !DIEnumerator(name: "CoderFatalError", value: 750)
!533 = !DIEnumerator(name: "FilterFatalError", value: 752)
!534 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!535 = !DIEnumerator(name: "DrawFatalError", value: 760)
!536 = !DIEnumerator(name: "ImageFatalError", value: 765)
!537 = !DIEnumerator(name: "WandFatalError", value: 770)
!538 = !DIEnumerator(name: "RandomFatalError", value: 775)
!539 = !DIEnumerator(name: "XServerFatalError", value: 780)
!540 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!541 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!542 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!543 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !467, file: !468, line: 108, baseType: !545, size: 32, offset: 32)
!545 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !467, file: !468, line: 111, baseType: !213, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !467, file: !468, line: 112, baseType: !213, size: 64, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !467, file: !468, line: 115, baseType: !204, size: 64, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !467, file: !468, line: 118, baseType: !152, size: 32, offset: 256)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !467, file: !468, line: 121, baseType: !551, size: 64, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !553, line: 26, baseType: !554)
!553 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !553, line: 25, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !467, file: !468, line: 124, baseType: !55, size: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !61, file: !62, line: 288, baseType: !152, size: 32, offset: 103808)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !61, file: !62, line: 291, baseType: !558, size: 64, offset: 103872)
!558 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !218)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !61, file: !62, line: 294, baseType: !551, size: 64, offset: 103936)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !61, file: !62, line: 297, baseType: !561, size: 256, offset: 104000)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !195, line: 40, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !195, line: 27, size: 256, elements: !563)
!563 = !{!564, !565, !566, !569}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !562, file: !195, line: 30, baseType: !213, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !562, file: !195, line: 33, baseType: !55, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !562, file: !195, line: 36, baseType: !567, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !562, file: !195, line: 39, baseType: !55, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !61, file: !62, line: 298, baseType: !561, size: 256, offset: 104256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !61, file: !62, line: 299, baseType: !572, size: 64, offset: 104512)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !61, file: !62, line: 302, baseType: !55, size: 64, offset: 104576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !61, file: !62, line: 305, baseType: !55, size: 64, offset: 104640)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !61, file: !62, line: 308, baseType: !396, size: 64, offset: 104704)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !61, file: !62, line: 309, baseType: !396, size: 64, offset: 104768)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !61, file: !62, line: 310, baseType: !396, size: 64, offset: 104832)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !61, file: !62, line: 313, baseType: !579, size: 32, offset: 104896)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !165, line: 47, baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !165, line: 31, baseType: !34, size: 32, elements: !581)
!581 = !{!582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595}
!582 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!583 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!584 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!585 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!586 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!587 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!588 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!589 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!590 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!591 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!592 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!593 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!594 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!595 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !61, file: !62, line: 316, baseType: !152, size: 32, offset: 104928)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !61, file: !62, line: 319, baseType: !164, size: 64, offset: 104960)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !61, file: !62, line: 322, baseType: !396, size: 64, offset: 105024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !61, file: !62, line: 325, baseType: !226, size: 256, offset: 105088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !61, file: !62, line: 328, baseType: !204, size: 64, offset: 105344)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !61, file: !62, line: 329, baseType: !204, size: 64, offset: 105408)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !61, file: !62, line: 332, baseType: !603, size: 32, offset: 105472)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !62, line: 61, baseType: !604)
!604 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 47, baseType: !34, size: 32, elements: !605)
!605 = !{!606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617}
!606 = !DIEnumerator(name: "UndefinedType", value: 0)
!607 = !DIEnumerator(name: "BilevelType", value: 1)
!608 = !DIEnumerator(name: "GrayscaleType", value: 2)
!609 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!610 = !DIEnumerator(name: "PaletteType", value: 4)
!611 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!612 = !DIEnumerator(name: "TrueColorType", value: 6)
!613 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!614 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!615 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!616 = !DIEnumerator(name: "OptimizeType", value: 10)
!617 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !61, file: !62, line: 335, baseType: !152, size: 32, offset: 105504)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !61, file: !62, line: 338, baseType: !444, size: 64, offset: 105536)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !61, file: !62, line: 341, baseType: !152, size: 32, offset: 105600)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !61, file: !62, line: 344, baseType: !55, size: 64, offset: 105664)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !61, file: !62, line: 347, baseType: !623, size: 64, offset: 105728)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !624, line: 7, baseType: !625)
!624 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !221, line: 160, baseType: !222)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !61, file: !62, line: 350, baseType: !627, size: 32, offset: 105792)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !165, line: 79, baseType: !628)
!628 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !165, line: 67, baseType: !34, size: 32, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!630 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!631 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!632 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!633 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!634 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!635 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!636 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!637 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!638 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!639 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !61, file: !62, line: 353, baseType: !55, size: 64, offset: 105856)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!644 = distinct !DICompileUnit(language: DW_LANG_C99, file: !645, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !646, retainedTypes: !802, globals: !834, splitDebugInlining: false, nameTableKind: None)
!645 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/resize.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "37b1b6791e8c15b40533e81b15218703")
!646 = !{!33, !66, !74, !113, !140, !153, !196, !207, !242, !278, !291, !298, !315, !388, !426, !472, !580, !604, !628, !647, !672, !747, !775, !790}
!647 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !648, line: 34, baseType: !34, size: 32, elements: !649)
!648 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!650 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!651 = !DIEnumerator(name: "NoEvents", value: 0)
!652 = !DIEnumerator(name: "TraceEvent", value: 1)
!653 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!654 = !DIEnumerator(name: "BlobEvent", value: 4)
!655 = !DIEnumerator(name: "CacheEvent", value: 8)
!656 = !DIEnumerator(name: "CoderEvent", value: 16)
!657 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!658 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!659 = !DIEnumerator(name: "DrawEvent", value: 128)
!660 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!661 = !DIEnumerator(name: "ImageEvent", value: 512)
!662 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!663 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!664 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!665 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!666 = !DIEnumerator(name: "TransformEvent", value: 16384)
!667 = !DIEnumerator(name: "UserEvent", value: 36864)
!668 = !DIEnumerator(name: "WandEvent", value: 65536)
!669 = !DIEnumerator(name: "X11Event", value: 131072)
!670 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!671 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!672 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !673, line: 25, baseType: !545, size: 32, elements: !674)
!673 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!674 = !{!675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!675 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!676 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!677 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!678 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!679 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!680 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!681 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!682 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!683 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!684 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!685 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!686 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!687 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!688 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!689 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!690 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!691 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!692 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!693 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!694 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!695 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!696 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!697 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!698 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!699 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!700 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!701 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!702 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!703 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!704 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!705 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!706 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!707 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!708 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!709 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!710 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!711 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!712 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!713 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!714 = !DIEnumerator(name: "MagickListOptions", value: 38)
!715 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!716 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!717 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!718 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!719 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!720 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!721 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!722 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!723 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!724 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!725 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!726 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!727 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!728 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!729 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!730 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!731 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!732 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!733 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!734 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!735 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!736 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!737 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!738 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!739 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!740 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!741 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!742 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!743 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!744 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!745 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!746 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!747 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !227, line: 25, baseType: !34, size: 32, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774}
!749 = !DIEnumerator(name: "NoValue", value: 0)
!750 = !DIEnumerator(name: "XValue", value: 1)
!751 = !DIEnumerator(name: "XiValue", value: 1)
!752 = !DIEnumerator(name: "YValue", value: 2)
!753 = !DIEnumerator(name: "PsiValue", value: 2)
!754 = !DIEnumerator(name: "WidthValue", value: 4)
!755 = !DIEnumerator(name: "RhoValue", value: 4)
!756 = !DIEnumerator(name: "HeightValue", value: 8)
!757 = !DIEnumerator(name: "SigmaValue", value: 8)
!758 = !DIEnumerator(name: "ChiValue", value: 16)
!759 = !DIEnumerator(name: "XiNegative", value: 32)
!760 = !DIEnumerator(name: "XNegative", value: 32)
!761 = !DIEnumerator(name: "PsiNegative", value: 64)
!762 = !DIEnumerator(name: "YNegative", value: 64)
!763 = !DIEnumerator(name: "ChiNegative", value: 128)
!764 = !DIEnumerator(name: "PercentValue", value: 4096)
!765 = !DIEnumerator(name: "AspectValue", value: 8192)
!766 = !DIEnumerator(name: "NormalizeValue", value: 8192)
!767 = !DIEnumerator(name: "LessValue", value: 16384)
!768 = !DIEnumerator(name: "GreaterValue", value: 32768)
!769 = !DIEnumerator(name: "MinimumValue", value: 65536)
!770 = !DIEnumerator(name: "CorrelateNormalizeValue", value: 65536)
!771 = !DIEnumerator(name: "AreaValue", value: 131072)
!772 = !DIEnumerator(name: "DecimalValue", value: 262144)
!773 = !DIEnumerator(name: "SeparatorValue", value: 524288)
!774 = !DIEnumerator(name: "AllValues", value: 2147483647)
!775 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 30, baseType: !34, size: 32, elements: !776)
!776 = !{!777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789}
!777 = !DIEnumerator(name: "UndefinedAlphaChannel", value: 0)
!778 = !DIEnumerator(name: "ActivateAlphaChannel", value: 1)
!779 = !DIEnumerator(name: "BackgroundAlphaChannel", value: 2)
!780 = !DIEnumerator(name: "CopyAlphaChannel", value: 3)
!781 = !DIEnumerator(name: "DeactivateAlphaChannel", value: 4)
!782 = !DIEnumerator(name: "ExtractAlphaChannel", value: 5)
!783 = !DIEnumerator(name: "OpaqueAlphaChannel", value: 6)
!784 = !DIEnumerator(name: "ResetAlphaChannel", value: 7)
!785 = !DIEnumerator(name: "SetAlphaChannel", value: 8)
!786 = !DIEnumerator(name: "ShapeAlphaChannel", value: 9)
!787 = !DIEnumerator(name: "TransparentAlphaChannel", value: 10)
!788 = !DIEnumerator(name: "FlattenAlphaChannel", value: 11)
!789 = !DIEnumerator(name: "RemoveAlphaChannel", value: 12)
!790 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !791, line: 25, baseType: !34, size: 32, elements: !792)
!791 = !DIFile(filename: "apps/538.imagick_r/src/magick/resource_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "933ce0dda2adf2da84827500e98d468e")
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800, !801}
!793 = !DIEnumerator(name: "UndefinedResource", value: 0)
!794 = !DIEnumerator(name: "AreaResource", value: 1)
!795 = !DIEnumerator(name: "DiskResource", value: 2)
!796 = !DIEnumerator(name: "FileResource", value: 3)
!797 = !DIEnumerator(name: "MapResource", value: 4)
!798 = !DIEnumerator(name: "MemoryResource", value: 5)
!799 = !DIEnumerator(name: "ThreadResource", value: 6)
!800 = !DIEnumerator(name: "TimeResource", value: 7)
!801 = !DIEnumerator(name: "ThrottleResource", value: 8)
!802 = !{!57, !6, !204, !545, !438, !240, !15, !803, !218, !222, !178, !804, !805, !163, !433, !806, !808, !55, !444, !213, !811, !812, !810, !813, !169, !441, !827, !828}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !165, line: 129, baseType: !169)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !165, line: 127, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !165, line: 104, size: 448, elements: !816)
!816 = !{!817, !818, !819, !820, !821, !822, !823, !824, !825, !826}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !815, file: !165, line: 107, baseType: !65, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !815, file: !165, line: 110, baseType: !72, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !815, file: !165, line: 113, baseType: !152, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !815, file: !165, line: 116, baseType: !178, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !815, file: !165, line: 119, baseType: !55, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !815, file: !165, line: 122, baseType: !15, size: 32, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !815, file: !165, line: 123, baseType: !15, size: 32, offset: 288)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !815, file: !165, line: 124, baseType: !15, size: 32, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !815, file: !165, line: 125, baseType: !15, size: 32, offset: 352)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !815, file: !165, line: 126, baseType: !15, size: 32, offset: 384)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "ContributionInfo", file: !3, line: 2394, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ContributionInfo", file: !3, line: 2387, size: 128, elements: !831)
!831 = !{!832, !833}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !830, file: !3, line: 2390, baseType: !15, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "pixel", scope: !830, file: !3, line: 2393, baseType: !218, size: 64, offset: 64)
!834 = !{!0, !835, !849, !854, !868, !870, !881, !883, !891}
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "filters", scope: !2, file: !3, line: 821, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !838, size: 11904, elements: !847)
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !839)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 810, size: 384, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !846}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !839, file: !3, line: 813, baseType: !12, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "support", scope: !839, file: !3, line: 816, baseType: !178, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !839, file: !3, line: 817, baseType: !178, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !839, file: !3, line: 819, baseType: !178, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !839, file: !3, line: 819, baseType: !178, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "weightingFunctionType", scope: !839, file: !3, line: 820, baseType: !31, size: 32, offset: 320)
!847 = !{!848}
!848 = !DISubrange(count: 31)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(name: "jinc_zeros", scope: !2, file: !3, line: 876, type: !851, isLocal: true, isDefinition: true)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 1024, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 16)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "Pone", scope: !856, file: !3, line: 1337, type: !864, isLocal: true, isDefinition: true)
!856 = distinct !DISubprogram(name: "J1", scope: !3, file: !3, line: 1327, type: !857, scopeLine: 1328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !859)
!857 = !DISubroutineType(types: !858)
!858 = !{!15, !15}
!859 = !{!860, !861, !862, !863}
!860 = !DILocalVariable(name: "x", arg: 1, scope: !856, file: !3, line: 1327, type: !15)
!861 = !DILocalVariable(name: "p", scope: !856, file: !3, line: 1330, type: !15)
!862 = !DILocalVariable(name: "q", scope: !856, file: !3, line: 1331, type: !15)
!863 = !DILocalVariable(name: "i", scope: !856, file: !3, line: 1334, type: !218)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 576, elements: !866)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!866 = !{!867}
!867 = !DISubrange(count: 9)
!868 = !DIGlobalVariableExpression(var: !869, expr: !DIExpression())
!869 = distinct !DIGlobalVariable(name: "Qone", scope: !856, file: !3, line: 1349, type: !864, isLocal: true, isDefinition: true)
!870 = !DIGlobalVariableExpression(var: !871, expr: !DIExpression())
!871 = distinct !DIGlobalVariable(name: "Pone", scope: !872, file: !3, line: 1383, type: !878, isLocal: true, isDefinition: true)
!872 = distinct !DISubprogram(name: "P1", scope: !3, file: !3, line: 1373, type: !857, scopeLine: 1374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !873)
!873 = !{!874, !875, !876, !877}
!874 = !DILocalVariable(name: "x", arg: 1, scope: !872, file: !3, line: 1373, type: !15)
!875 = !DILocalVariable(name: "p", scope: !872, file: !3, line: 1376, type: !15)
!876 = !DILocalVariable(name: "q", scope: !872, file: !3, line: 1377, type: !15)
!877 = !DILocalVariable(name: "i", scope: !872, file: !3, line: 1380, type: !218)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !865, size: 384, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 6)
!881 = !DIGlobalVariableExpression(var: !882, expr: !DIExpression())
!882 = distinct !DIGlobalVariable(name: "Qone", scope: !872, file: !3, line: 1392, type: !878, isLocal: true, isDefinition: true)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(name: "Pone", scope: !885, file: !3, line: 1423, type: !878, isLocal: true, isDefinition: true)
!885 = distinct !DISubprogram(name: "Q1", scope: !3, file: !3, line: 1413, type: !857, scopeLine: 1414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !886)
!886 = !{!887, !888, !889, !890}
!887 = !DILocalVariable(name: "x", arg: 1, scope: !885, file: !3, line: 1413, type: !15)
!888 = !DILocalVariable(name: "p", scope: !885, file: !3, line: 1416, type: !15)
!889 = !DILocalVariable(name: "q", scope: !885, file: !3, line: 1417, type: !15)
!890 = !DILocalVariable(name: "i", scope: !885, file: !3, line: 1420, type: !218)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(name: "Qone", scope: !885, file: !3, line: 1432, type: !878, isLocal: true, isDefinition: true)
!893 = !{!894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !909, !910, !913, !917, !920, !924, !927}
!894 = !DILocalVariable(name: "image", arg: 1, scope: !2, file: !3, line: 728, type: !58)
!895 = !DILocalVariable(name: "filter", arg: 2, scope: !2, file: !3, line: 729, type: !641)
!896 = !DILocalVariable(name: "blur", arg: 3, scope: !2, file: !3, line: 729, type: !18)
!897 = !DILocalVariable(name: "cylindrical", arg: 4, scope: !2, file: !3, line: 730, type: !642)
!898 = !DILocalVariable(name: "exception", arg: 5, scope: !2, file: !3, line: 730, type: !643)
!899 = !DILocalVariable(name: "artifact", scope: !2, file: !3, line: 733, type: !438)
!900 = !DILocalVariable(name: "filter_type", scope: !2, file: !3, line: 736, type: !240)
!901 = !DILocalVariable(name: "window_type", scope: !2, file: !3, line: 737, type: !240)
!902 = !DILocalVariable(name: "B", scope: !2, file: !3, line: 740, type: !15)
!903 = !DILocalVariable(name: "C", scope: !2, file: !3, line: 741, type: !15)
!904 = !DILocalVariable(name: "value", scope: !2, file: !3, line: 742, type: !15)
!905 = !DILocalVariable(name: "resize_filter", scope: !2, file: !3, line: 745, type: !6)
!906 = !DILocalVariable(name: "message", scope: !907, file: !3, line: 909, type: !213)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 909, column: 5)
!908 = distinct !DILexicalBlock(scope: !2, file: !3, line: 908, column: 7)
!909 = !DILocalVariable(name: "exception", scope: !907, file: !3, line: 909, type: !466)
!910 = !DILocalVariable(name: "option", scope: !911, file: !3, line: 927, type: !218)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 925, column: 5)
!912 = distinct !DILexicalBlock(scope: !2, file: !3, line: 924, column: 7)
!913 = !DILocalVariable(name: "option", scope: !914, file: !3, line: 951, type: !218)
!914 = distinct !DILexicalBlock(scope: !915, file: !3, line: 949, column: 9)
!915 = distinct !DILexicalBlock(scope: !916, file: !3, line: 948, column: 11)
!916 = distinct !DILexicalBlock(scope: !912, file: !3, line: 945, column: 5)
!917 = !DILocalVariable(name: "lobes", scope: !918, file: !3, line: 1050, type: !218)
!918 = distinct !DILexicalBlock(scope: !919, file: !3, line: 1048, column: 5)
!919 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1047, column: 7)
!920 = !DILocalVariable(name: "twoB", scope: !921, file: !3, line: 1133, type: !865)
!921 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1132, column: 7)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1105, column: 5)
!923 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1103, column: 7)
!924 = !DILocalVariable(name: "support", scope: !925, file: !3, line: 1155, type: !178)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 1153, column: 7)
!926 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1152, column: 9)
!927 = !DILocalVariable(name: "x", scope: !925, file: !3, line: 1156, type: !178)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 1984, elements: !847)
!929 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2, file: !3, line: 760, size: 64, elements: !931)
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !930, file: !3, line: 763, baseType: !240, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !930, file: !3, line: 764, baseType: !240, size: 32, offset: 32)
!934 = !{i32 7, !"Dwarf Version", i32 5}
!935 = !{i32 2, !"Debug Info Version", i32 3}
!936 = !{i32 1, !"wchar_size", i32 4}
!937 = !{i32 7, !"PIC Level", i32 2}
!938 = !{i32 7, !"PIE Level", i32 2}
!939 = !{i32 7, !"uwtable", i32 2}
!940 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!941 = !DILocation(line: 0, scope: !2)
!942 = !DILocation(line: 901, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !2, file: !3, line: 901, column: 7)
!944 = !{!945, !946, i64 12976}
!945 = !{!"_Image", !946, i64 0, !946, i64 4, !946, i64 8, !948, i64 16, !946, i64 24, !946, i64 28, !946, i64 32, !948, i64 40, !948, i64 48, !948, i64 56, !948, i64 64, !949, i64 72, !950, i64 80, !950, i64 88, !950, i64 96, !952, i64 104, !953, i64 112, !946, i64 208, !949, i64 216, !946, i64 224, !949, i64 232, !949, i64 240, !949, i64 248, !948, i64 256, !952, i64 264, !952, i64 272, !955, i64 280, !955, i64 312, !955, i64 344, !952, i64 376, !952, i64 384, !952, i64 392, !946, i64 400, !946, i64 404, !946, i64 408, !946, i64 412, !946, i64 416, !946, i64 420, !949, i64 424, !948, i64 432, !948, i64 440, !948, i64 448, !948, i64 456, !948, i64 464, !948, i64 472, !956, i64 480, !957, i64 504, !949, i64 568, !949, i64 576, !949, i64 584, !949, i64 592, !949, i64 600, !949, i64 608, !946, i64 616, !946, i64 4712, !946, i64 8808, !948, i64 12904, !948, i64 12912, !959, i64 12920, !946, i64 12976, !948, i64 12984, !949, i64 12992, !961, i64 13000, !961, i64 13032, !949, i64 13064, !948, i64 13072, !948, i64 13080, !949, i64 13088, !949, i64 13096, !949, i64 13104, !946, i64 13112, !946, i64 13116, !950, i64 13120, !949, i64 13128, !955, i64 13136, !949, i64 13168, !949, i64 13176, !946, i64 13184, !946, i64 13188, !962, i64 13192, !946, i64 13200, !948, i64 13208, !948, i64 13216, !946, i64 13224, !948, i64 13232}
!946 = !{!"omnipotent char", !947, i64 0}
!947 = !{!"Simple C/C++ TBAA"}
!948 = !{!"long", !946, i64 0}
!949 = !{!"any pointer", !946, i64 0}
!950 = !{!"_PixelPacket", !951, i64 0, !951, i64 2, !951, i64 4, !951, i64 6}
!951 = !{!"short", !946, i64 0}
!952 = !{!"double", !946, i64 0}
!953 = !{!"_ChromaticityInfo", !954, i64 0, !954, i64 24, !954, i64 48, !954, i64 72}
!954 = !{!"_PrimaryInfo", !952, i64 0, !952, i64 8, !952, i64 16}
!955 = !{!"_RectangleInfo", !948, i64 0, !948, i64 8, !948, i64 16, !948, i64 24}
!956 = !{!"_ErrorInfo", !952, i64 0, !952, i64 8, !952, i64 16}
!957 = !{!"_TimerInfo", !958, i64 0, !958, i64 24, !946, i64 48, !948, i64 56}
!958 = !{!"_Timer", !952, i64 0, !952, i64 8, !952, i64 16}
!959 = !{!"_ExceptionInfo", !946, i64 0, !960, i64 4, !949, i64 8, !949, i64 16, !949, i64 24, !946, i64 32, !949, i64 40, !948, i64 48}
!960 = !{!"int", !946, i64 0}
!961 = !{!"_ProfileInfo", !949, i64 0, !948, i64 8, !949, i64 16, !948, i64 24}
!962 = !{!"long long", !946, i64 0}
!963 = !DILocation(line: 901, column: 20, scope: !943)
!964 = !DILocation(line: 901, column: 7, scope: !2)
!965 = !DILocation(line: 902, column: 68, scope: !943)
!966 = !DILocation(line: 902, column: 12, scope: !943)
!967 = !DILocation(line: 902, column: 5, scope: !943)
!968 = !DILocation(line: 906, column: 34, scope: !2)
!969 = !DILocation(line: 908, column: 21, scope: !908)
!970 = !DILocation(line: 908, column: 7, scope: !2)
!971 = !DILocation(line: 909, column: 5, scope: !907)
!972 = !{!960, !960, i64 0}
!973 = !DILocation(line: 0, scope: !907)
!974 = !DILocation(line: 910, column: 10, scope: !2)
!975 = !DILocation(line: 914, column: 15, scope: !2)
!976 = !DILocation(line: 914, column: 31, scope: !2)
!977 = !{!978, !946, i64 0}
!978 = !{!"", !946, i64 0, !946, i64 4}
!979 = !DILocation(line: 915, column: 31, scope: !2)
!980 = !{!978, !946, i64 4}
!981 = !DILocation(line: 916, column: 18, scope: !2)
!982 = !DILocation(line: 916, column: 23, scope: !2)
!983 = !{!984, !985, i64 28}
!984 = !{!"_ResizeFilter", !949, i64 0, !949, i64 8, !985, i64 16, !985, i64 20, !985, i64 24, !985, i64 28, !946, i64 32, !946, i64 60, !946, i64 64, !948, i64 72}
!985 = !{!"float", !946, i64 0}
!986 = !DILocation(line: 918, column: 19, scope: !987)
!987 = distinct !DILexicalBlock(scope: !2, file: !3, line: 918, column: 7)
!988 = !DILocation(line: 918, column: 34, scope: !987)
!989 = !DILocation(line: 923, column: 12, scope: !2)
!990 = !DILocation(line: 924, column: 16, scope: !912)
!991 = !DILocation(line: 924, column: 7, scope: !2)
!992 = !DILocation(line: 929, column: 14, scope: !911)
!993 = !DILocation(line: 0, scope: !911)
!994 = !DILocation(line: 930, column: 38, scope: !995)
!995 = distinct !DILexicalBlock(scope: !911, file: !3, line: 930, column: 11)
!996 = !DILocation(line: 936, column: 16, scope: !911)
!997 = !DILocation(line: 937, column: 20, scope: !998)
!998 = distinct !DILexicalBlock(scope: !911, file: !3, line: 937, column: 11)
!999 = !DILocation(line: 937, column: 11, scope: !911)
!1000 = !DILocation(line: 939, column: 18, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !998, file: !3, line: 938, column: 9)
!1002 = !DILocation(line: 940, column: 42, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 940, column: 15)
!1004 = !DILocation(line: 947, column: 16, scope: !916)
!1005 = !DILocation(line: 948, column: 20, scope: !915)
!1006 = !DILocation(line: 948, column: 11, scope: !916)
!1007 = !DILocation(line: 953, column: 18, scope: !914)
!1008 = !DILocation(line: 0, scope: !914)
!1009 = !DILocation(line: 954, column: 42, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !914, file: !3, line: 954, column: 15)
!1011 = !DILocation(line: 956, column: 27, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 955, column: 13)
!1013 = !DILocation(line: 958, column: 27, scope: !1012)
!1014 = !DILocation(line: 959, column: 13, scope: !1012)
!1015 = !DILocation(line: 964, column: 25, scope: !2)
!1016 = !DILocation(line: 964, column: 46, scope: !2)
!1017 = !{!1018, !949, i64 0}
!1018 = !{!"", !949, i64 0, !952, i64 8, !952, i64 16, !952, i64 24, !952, i64 32, !946, i64 40}
!1019 = !DILocation(line: 964, column: 24, scope: !2)
!1020 = !{!984, !949, i64 0}
!1021 = !DILocation(line: 965, column: 47, scope: !2)
!1022 = !{!1018, !952, i64 8}
!1023 = !DILocation(line: 965, column: 26, scope: !2)
!1024 = !DILocation(line: 965, column: 18, scope: !2)
!1025 = !DILocation(line: 965, column: 25, scope: !2)
!1026 = !{!984, !985, i64 16}
!1027 = !DILocation(line: 966, column: 59, scope: !2)
!1028 = !{!1018, !946, i64 40}
!1029 = !DILocation(line: 966, column: 18, scope: !2)
!1030 = !DILocation(line: 966, column: 37, scope: !2)
!1031 = !{!984, !946, i64 60}
!1032 = !DILocation(line: 967, column: 25, scope: !2)
!1033 = !DILocation(line: 967, column: 46, scope: !2)
!1034 = !DILocation(line: 967, column: 18, scope: !2)
!1035 = !DILocation(line: 967, column: 24, scope: !2)
!1036 = !{!984, !949, i64 8}
!1037 = !DILocation(line: 968, column: 59, scope: !2)
!1038 = !DILocation(line: 968, column: 18, scope: !2)
!1039 = !DILocation(line: 968, column: 37, scope: !2)
!1040 = !{!984, !946, i64 64}
!1041 = !DILocation(line: 969, column: 45, scope: !2)
!1042 = !{!1018, !952, i64 16}
!1043 = !DILocation(line: 969, column: 24, scope: !2)
!1044 = !DILocation(line: 969, column: 18, scope: !2)
!1045 = !DILocation(line: 969, column: 23, scope: !2)
!1046 = !{!984, !985, i64 24}
!1047 = !DILocation(line: 970, column: 18, scope: !2)
!1048 = !DILocation(line: 970, column: 27, scope: !2)
!1049 = !{!984, !948, i64 72}
!1050 = !DILocation(line: 973, column: 7, scope: !2)
!1051 = !DILocation(line: 974, column: 5, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !2, file: !3, line: 973, column: 7)
!1053 = !DILocation(line: 978, column: 31, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1052, file: !3, line: 975, column: 5)
!1055 = !DILocation(line: 994, column: 3, scope: !2)
!1056 = !DILocation(line: 985, column: 30, scope: !1054)
!1057 = !DILocation(line: 986, column: 30, scope: !1054)
!1058 = !DILocation(line: 987, column: 29, scope: !1054)
!1059 = !DILocation(line: 989, column: 9, scope: !1054)
!1060 = !DILocation(line: 997, column: 27, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !2, file: !3, line: 995, column: 3)
!1062 = !DILocation(line: 998, column: 7, scope: !1061)
!1063 = !DILocation(line: 1000, column: 27, scope: !1061)
!1064 = !DILocation(line: 1001, column: 7, scope: !1061)
!1065 = !DILocation(line: 1012, column: 23, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1012, column: 7)
!1067 = !DILocation(line: 1012, column: 30, scope: !1066)
!1068 = !DILocation(line: 1012, column: 43, scope: !1066)
!1069 = !DILocation(line: 1015, column: 14, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 1013, column: 45)
!1071 = !DILocation(line: 1016, column: 18, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1016, column: 9)
!1073 = !DILocation(line: 1016, column: 9, scope: !1070)
!1074 = !DILocalVariable(name: "string", arg: 1, scope: !1075, file: !1076, line: 42, type: !1079)
!1075 = distinct !DISubprogram(name: "StringToDouble", scope: !1076, file: !1076, line: 42, type: !1077, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1081)
!1076 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!178, !1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !438)
!1080 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !803)
!1081 = !{!1074, !1082}
!1082 = !DILocalVariable(name: "sentinal", arg: 2, scope: !1075, file: !1076, line: 43, type: !1080)
!1083 = !DILocation(line: 0, scope: !1075, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 1017, column: 13, scope: !1072)
!1085 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1084)
!1086 = !DILocation(line: 1017, column: 13, scope: !1072)
!1087 = !DILocation(line: 1017, column: 7, scope: !1072)
!1088 = !DILocation(line: 0, scope: !1070)
!1089 = !DILocation(line: 1019, column: 20, scope: !1070)
!1090 = !DILocation(line: 1019, column: 34, scope: !1070)
!1091 = !{!985, !985, i64 0}
!1092 = !DILocation(line: 1020, column: 61, scope: !1070)
!1093 = !DILocation(line: 1020, column: 60, scope: !1070)
!1094 = !DILocation(line: 1020, column: 66, scope: !1070)
!1095 = !DILocalVariable(name: "x", arg: 1, scope: !1096, file: !1097, line: 78, type: !865)
!1096 = distinct !DISubprogram(name: "PerceptibleReciprocal", scope: !1097, file: !1097, line: 78, type: !1098, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1100)
!1097 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!178, !865}
!1100 = !{!1095, !1101}
!1101 = !DILocalVariable(name: "sign", scope: !1096, file: !1097, line: 81, type: !178)
!1102 = !DILocation(line: 0, scope: !1096, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 1020, column: 35, scope: !1070)
!1104 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !1103)
!1105 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !1103)
!1106 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !1103)
!1107 = distinct !DILexicalBlock(scope: !1096, file: !1097, line: 87, column: 7)
!1108 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !1103)
!1109 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !1103)
!1110 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !1103)
!1111 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !1103)
!1112 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !1103)
!1113 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !1103)
!1114 = !DILocation(line: 1020, column: 35, scope: !1070)
!1115 = !DILocation(line: 1020, column: 5, scope: !1070)
!1116 = !DILocation(line: 1020, column: 34, scope: !1070)
!1117 = !DILocation(line: 1021, column: 66, scope: !1070)
!1118 = !DILocation(line: 1021, column: 72, scope: !1070)
!1119 = !DILocation(line: 0, scope: !1096, inlinedAt: !1120)
!1120 = distinct !DILocation(line: 1021, column: 35, scope: !1070)
!1121 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !1120)
!1122 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !1120)
!1123 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !1120)
!1124 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !1120)
!1125 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !1120)
!1126 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !1120)
!1127 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !1120)
!1128 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !1120)
!1129 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !1120)
!1130 = !DILocation(line: 1021, column: 35, scope: !1070)
!1131 = !DILocation(line: 1021, column: 5, scope: !1070)
!1132 = !DILocation(line: 1021, column: 34, scope: !1070)
!1133 = !DILocation(line: 1023, column: 16, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1023, column: 10)
!1135 = !DILocation(line: 1023, column: 10, scope: !1070)
!1136 = !DILocation(line: 1024, column: 30, scope: !1134)
!1137 = !DILocation(line: 1024, column: 7, scope: !1134)
!1138 = !DILocation(line: 1028, column: 23, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1028, column: 7)
!1140 = !DILocation(line: 1028, column: 30, scope: !1139)
!1141 = !DILocation(line: 1028, column: 41, scope: !1139)
!1142 = !DILocation(line: 1029, column: 23, scope: !1139)
!1143 = !DILocation(line: 1029, column: 30, scope: !1139)
!1144 = !DILocation(line: 1028, column: 7, scope: !2)
!1145 = !DILocation(line: 1031, column: 14, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 1029, column: 43)
!1147 = !DILocation(line: 1032, column: 18, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 1032, column: 9)
!1149 = !DILocation(line: 1032, column: 9, scope: !1146)
!1150 = !DILocation(line: 0, scope: !1075, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 1033, column: 13, scope: !1148)
!1152 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1151)
!1153 = !DILocation(line: 1033, column: 13, scope: !1148)
!1154 = !DILocation(line: 1033, column: 7, scope: !1148)
!1155 = !DILocation(line: 0, scope: !1146)
!1156 = !DILocation(line: 1034, column: 14, scope: !1146)
!1157 = !DILocation(line: 1035, column: 18, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 1035, column: 9)
!1159 = !DILocation(line: 1035, column: 9, scope: !1146)
!1160 = !DILocation(line: 0, scope: !1075, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 1036, column: 13, scope: !1158)
!1162 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1161)
!1163 = !DILocation(line: 1036, column: 13, scope: !1158)
!1164 = !DILocation(line: 1036, column: 7, scope: !1158)
!1165 = !DILocation(line: 1037, column: 14, scope: !1146)
!1166 = !DILocation(line: 1038, column: 18, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 1038, column: 9)
!1168 = !DILocation(line: 1038, column: 9, scope: !1146)
!1169 = !DILocation(line: 0, scope: !1075, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 1039, column: 31, scope: !1167)
!1171 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1170)
!1172 = !DILocation(line: 1039, column: 70, scope: !1167)
!1173 = !DILocation(line: 1039, column: 13, scope: !1167)
!1174 = !DILocation(line: 1039, column: 7, scope: !1167)
!1175 = !DILocation(line: 1041, column: 20, scope: !1146)
!1176 = !DILocation(line: 1041, column: 34, scope: !1146)
!1177 = !DILocalVariable(name: "x", arg: 1, scope: !1178, file: !3, line: 1302, type: !15)
!1178 = distinct !DISubprogram(name: "I0", scope: !3, file: !3, line: 1302, type: !857, scopeLine: 1303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1179)
!1179 = !{!1177, !1180, !1181, !1182, !1183}
!1180 = !DILocalVariable(name: "sum", scope: !1178, file: !3, line: 1305, type: !15)
!1181 = !DILocalVariable(name: "t", scope: !1178, file: !3, line: 1306, type: !15)
!1182 = !DILocalVariable(name: "y", scope: !1178, file: !3, line: 1307, type: !15)
!1183 = !DILocalVariable(name: "i", scope: !1178, file: !3, line: 1310, type: !218)
!1184 = !DILocation(line: 0, scope: !1178, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 1042, column: 57, scope: !1146)
!1186 = !DILocation(line: 1316, column: 6, scope: !1178, inlinedAt: !1185)
!1187 = !DILocation(line: 1316, column: 5, scope: !1178, inlinedAt: !1185)
!1188 = !DILocation(line: 1318, column: 13, scope: !1189, inlinedAt: !1185)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 1318, column: 3)
!1190 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 1318, column: 3)
!1191 = !DILocation(line: 1318, column: 15, scope: !1189, inlinedAt: !1185)
!1192 = !DILocation(line: 1318, column: 3, scope: !1190, inlinedAt: !1185)
!1193 = !DILocation(line: 1320, column: 8, scope: !1194, inlinedAt: !1185)
!1194 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 1319, column: 3)
!1195 = !DILocation(line: 1321, column: 11, scope: !1194, inlinedAt: !1185)
!1196 = !DILocation(line: 1321, column: 29, scope: !1194, inlinedAt: !1185)
!1197 = !DILocation(line: 1321, column: 9, scope: !1194, inlinedAt: !1185)
!1198 = !DILocation(line: 1321, column: 6, scope: !1194, inlinedAt: !1185)
!1199 = !DILocation(line: 1318, column: 33, scope: !1189, inlinedAt: !1185)
!1200 = distinct !{!1200, !1192, !1201, !1202, !1203}
!1201 = !DILocation(line: 1322, column: 3, scope: !1190, inlinedAt: !1185)
!1202 = !{!"llvm.loop.mustprogress"}
!1203 = !{!"llvm.loop.unroll.disable"}
!1204 = !DILocation(line: 1042, column: 57, scope: !1146)
!1205 = !DILocation(line: 0, scope: !1096, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 1042, column: 35, scope: !1146)
!1207 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !1206)
!1208 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !1206)
!1209 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !1206)
!1210 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !1206)
!1211 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !1206)
!1212 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !1206)
!1213 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !1206)
!1214 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !1206)
!1215 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !1206)
!1216 = !DILocation(line: 1042, column: 35, scope: !1146)
!1217 = !DILocation(line: 1042, column: 5, scope: !1146)
!1218 = !DILocation(line: 1042, column: 34, scope: !1146)
!1219 = !DILocation(line: 1043, column: 3, scope: !1146)
!1220 = !DILocation(line: 1046, column: 12, scope: !2)
!1221 = !DILocation(line: 1047, column: 16, scope: !919)
!1222 = !DILocation(line: 1047, column: 7, scope: !2)
!1223 = !DILocalVariable(name: "value", arg: 1, scope: !1224, file: !1076, line: 68, type: !1079)
!1224 = distinct !DISubprogram(name: "StringToLong", scope: !1076, file: !1076, line: 68, type: !1225, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!222, !1079}
!1227 = !{!1223}
!1228 = !DILocation(line: 0, scope: !1224, inlinedAt: !1229)
!1229 = distinct !DILocation(line: 1052, column: 23, scope: !918)
!1230 = !DILocation(line: 70, column: 10, scope: !1224, inlinedAt: !1229)
!1231 = !DILocation(line: 0, scope: !918)
!1232 = !DILocation(line: 1053, column: 11, scope: !918)
!1233 = !DILocation(line: 1055, column: 30, scope: !918)
!1234 = !DILocation(line: 1055, column: 29, scope: !918)
!1235 = !DILocation(line: 1056, column: 5, scope: !918)
!1236 = !DILocation(line: 1058, column: 22, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1058, column: 7)
!1238 = !DILocation(line: 1058, column: 29, scope: !1237)
!1239 = !DILocation(line: 1058, column: 7, scope: !2)
!1240 = !DILocation(line: 1060, column: 26, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1060, column: 11)
!1242 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1059, column: 5)
!1243 = !DILocation(line: 1060, column: 34, scope: !1241)
!1244 = !DILocation(line: 1060, column: 11, scope: !1242)
!1245 = !DILocation(line: 1063, column: 44, scope: !1241)
!1246 = !DILocation(line: 1063, column: 73, scope: !1241)
!1247 = !DILocation(line: 1063, column: 32, scope: !1241)
!1248 = !{!952, !952, i64 0}
!1249 = !DILocation(line: 0, scope: !1241)
!1250 = !DILocation(line: 1066, column: 23, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1066, column: 11)
!1252 = !DILocation(line: 1066, column: 11, scope: !1242)
!1253 = !DILocation(line: 1068, column: 38, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1067, column: 7)
!1255 = !DILocation(line: 1068, column: 32, scope: !1254)
!1256 = !DILocation(line: 1068, column: 61, scope: !1254)
!1257 = !DILocation(line: 1068, column: 29, scope: !1254)
!1258 = !DILocation(line: 1070, column: 7, scope: !1254)
!1259 = !DILocation(line: 1073, column: 12, scope: !2)
!1260 = !DILocation(line: 1074, column: 16, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1074, column: 7)
!1262 = !DILocation(line: 1074, column: 7, scope: !2)
!1263 = !DILocation(line: 1076, column: 22, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1076, column: 7)
!1265 = !DILocation(line: 0, scope: !1075, inlinedAt: !1266)
!1266 = distinct !DILocation(line: 1075, column: 26, scope: !1261)
!1267 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1266)
!1268 = !DILocation(line: 1075, column: 24, scope: !1261)
!1269 = !DILocation(line: 1075, column: 5, scope: !1261)
!1270 = !DILocation(line: 1076, column: 7, scope: !1264)
!1271 = !DILocation(line: 1076, column: 27, scope: !1264)
!1272 = !DILocation(line: 1076, column: 7, scope: !2)
!1273 = !DILocation(line: 1077, column: 24, scope: !1264)
!1274 = !DILocation(line: 1077, column: 5, scope: !1264)
!1275 = !DILocation(line: 1080, column: 12, scope: !2)
!1276 = !DILocation(line: 1081, column: 16, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1081, column: 7)
!1278 = !DILocation(line: 1081, column: 7, scope: !2)
!1279 = !DILocation(line: 1088, column: 48, scope: !2)
!1280 = !DILocation(line: 0, scope: !1075, inlinedAt: !1281)
!1281 = distinct !DILocation(line: 1082, column: 33, scope: !1277)
!1282 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1281)
!1283 = !DILocation(line: 1082, column: 28, scope: !1277)
!1284 = !DILocation(line: 1082, column: 27, scope: !1277)
!1285 = !DILocation(line: 1082, column: 5, scope: !1277)
!1286 = !DILocation(line: 1088, column: 18, scope: !2)
!1287 = !DILocation(line: 1088, column: 32, scope: !2)
!1288 = !{!984, !985, i64 20}
!1289 = !DILocation(line: 1089, column: 12, scope: !2)
!1290 = !DILocation(line: 1090, column: 16, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1090, column: 7)
!1292 = !DILocation(line: 1090, column: 7, scope: !2)
!1293 = !DILocation(line: 1096, column: 40, scope: !2)
!1294 = !DILocation(line: 0, scope: !1075, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 1091, column: 40, scope: !1291)
!1296 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1295)
!1297 = !DILocation(line: 1091, column: 35, scope: !1291)
!1298 = !DILocation(line: 1091, column: 34, scope: !1291)
!1299 = !DILocation(line: 1091, column: 5, scope: !1291)
!1300 = !DILocation(line: 1096, column: 23, scope: !2)
!1301 = !DILocation(line: 1103, column: 23, scope: !923)
!1302 = !DILocation(line: 1103, column: 30, scope: !923)
!1303 = !DILocation(line: 1103, column: 42, scope: !923)
!1304 = !DILocation(line: 1104, column: 23, scope: !923)
!1305 = !DILocation(line: 1104, column: 30, scope: !923)
!1306 = !DILocation(line: 1103, column: 7, scope: !2)
!1307 = !DILocation(line: 1108, column: 41, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1108, column: 11)
!1309 = !DILocation(line: 1108, column: 11, scope: !922)
!1310 = !DILocation(line: 0, scope: !922)
!1311 = !{!1018, !952, i64 24}
!1312 = !{!1018, !952, i64 32}
!1313 = !DILocation(line: 1113, column: 16, scope: !922)
!1314 = !DILocation(line: 1114, column: 20, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1114, column: 11)
!1316 = !DILocation(line: 1114, column: 11, scope: !922)
!1317 = !DILocation(line: 0, scope: !1075, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 1116, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1115, column: 9)
!1320 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1318)
!1321 = !DILocation(line: 1116, column: 13, scope: !1319)
!1322 = !DILocation(line: 1117, column: 18, scope: !1319)
!1323 = !DILocation(line: 1117, column: 17, scope: !1319)
!1324 = !DILocation(line: 1117, column: 20, scope: !1319)
!1325 = !DILocation(line: 1117, column: 13, scope: !1319)
!1326 = !DILocation(line: 1118, column: 20, scope: !1319)
!1327 = !DILocation(line: 1119, column: 24, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1119, column: 15)
!1329 = !DILocation(line: 1119, column: 15, scope: !1319)
!1330 = !DILocation(line: 0, scope: !1075, inlinedAt: !1331)
!1331 = distinct !DILocation(line: 1120, column: 15, scope: !1328)
!1332 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1331)
!1333 = !DILocation(line: 1120, column: 15, scope: !1328)
!1334 = !DILocation(line: 1120, column: 13, scope: !1328)
!1335 = !DILocation(line: 1124, column: 20, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1123, column: 9)
!1337 = !DILocation(line: 1125, column: 24, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1125, column: 15)
!1339 = !DILocation(line: 1125, column: 15, scope: !1336)
!1340 = !DILocation(line: 0, scope: !1075, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 1127, column: 17, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !3, line: 1126, column: 13)
!1343 = !DILocation(line: 45, column: 10, scope: !1075, inlinedAt: !1341)
!1344 = !DILocation(line: 1127, column: 17, scope: !1342)
!1345 = !DILocation(line: 1128, column: 25, scope: !1342)
!1346 = !DILocation(line: 1128, column: 20, scope: !1342)
!1347 = !DILocation(line: 1128, column: 17, scope: !1342)
!1348 = !DILocation(line: 1129, column: 13, scope: !1342)
!1349 = !DILocation(line: 1133, column: 30, scope: !921)
!1350 = !DILocation(line: 1133, column: 29, scope: !921)
!1351 = !DILocation(line: 0, scope: !921)
!1352 = !DILocation(line: 1134, column: 53, scope: !921)
!1353 = !DILocation(line: 1134, column: 42, scope: !921)
!1354 = !DILocation(line: 1134, column: 39, scope: !921)
!1355 = !DILocation(line: 1134, column: 24, scope: !921)
!1356 = !DILocation(line: 1134, column: 38, scope: !921)
!1357 = !DILocation(line: 1135, column: 43, scope: !921)
!1358 = !DILocation(line: 1135, column: 49, scope: !921)
!1359 = !DILocation(line: 1135, column: 48, scope: !921)
!1360 = !DILocation(line: 1135, column: 39, scope: !921)
!1361 = !DILocation(line: 1135, column: 9, scope: !921)
!1362 = !DILocation(line: 1135, column: 38, scope: !921)
!1363 = !DILocation(line: 1136, column: 42, scope: !921)
!1364 = !DILocation(line: 1136, column: 48, scope: !921)
!1365 = !DILocation(line: 1136, column: 39, scope: !921)
!1366 = !DILocation(line: 1136, column: 9, scope: !921)
!1367 = !DILocation(line: 1136, column: 38, scope: !921)
!1368 = !DILocation(line: 1137, column: 54, scope: !921)
!1369 = !DILocation(line: 1137, column: 50, scope: !921)
!1370 = !DILocation(line: 1137, column: 39, scope: !921)
!1371 = !DILocation(line: 1137, column: 9, scope: !921)
!1372 = !DILocation(line: 1137, column: 38, scope: !921)
!1373 = !DILocation(line: 1138, column: 45, scope: !921)
!1374 = !DILocation(line: 1138, column: 39, scope: !921)
!1375 = !DILocation(line: 1138, column: 9, scope: !921)
!1376 = !DILocation(line: 1138, column: 38, scope: !921)
!1377 = !DILocation(line: 1139, column: 40, scope: !921)
!1378 = !DILocation(line: 1139, column: 39, scope: !921)
!1379 = !DILocation(line: 1139, column: 9, scope: !921)
!1380 = !DILocation(line: 1139, column: 38, scope: !921)
!1381 = !DILocation(line: 1140, column: 51, scope: !921)
!1382 = !DILocation(line: 1140, column: 39, scope: !921)
!1383 = !DILocation(line: 1140, column: 9, scope: !921)
!1384 = !DILocation(line: 1140, column: 38, scope: !921)
!1385 = !DILocation(line: 1142, column: 5, scope: !922)
!1386 = !DILocation(line: 1151, column: 14, scope: !2)
!1387 = !DILocation(line: 1152, column: 9, scope: !926)
!1388 = !DILocation(line: 1152, column: 9, scope: !2)
!1389 = !DILocation(line: 1164, column: 28, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1164, column: 13)
!1391 = !DILocation(line: 1164, column: 35, scope: !1390)
!1392 = !DILocation(line: 1164, column: 13, scope: !925)
!1393 = !DILocation(line: 1165, column: 35, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1165, column: 13)
!1395 = !DILocation(line: 1165, column: 13, scope: !925)
!1396 = !DILocation(line: 1166, column: 35, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1166, column: 13)
!1398 = !DILocation(line: 1166, column: 13, scope: !925)
!1399 = !DILocation(line: 1167, column: 35, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1167, column: 13)
!1401 = !DILocation(line: 1167, column: 13, scope: !925)
!1402 = !DILocation(line: 1168, column: 35, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1168, column: 13)
!1404 = !DILocation(line: 1168, column: 13, scope: !925)
!1405 = !DILocation(line: 1169, column: 28, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1169, column: 13)
!1407 = !DILocation(line: 1169, column: 35, scope: !1406)
!1408 = !DILocation(line: 1169, column: 13, scope: !925)
!1409 = !DILocation(line: 1170, column: 35, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1170, column: 13)
!1411 = !DILocation(line: 1170, column: 13, scope: !925)
!1412 = !DILocation(line: 1171, column: 35, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1171, column: 13)
!1414 = !DILocation(line: 1171, column: 13, scope: !925)
!1415 = !DILocation(line: 1172, column: 35, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1172, column: 13)
!1417 = !DILocation(line: 1172, column: 13, scope: !925)
!1418 = !DILocation(line: 1173, column: 35, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1173, column: 13)
!1420 = !DILocation(line: 1173, column: 13, scope: !925)
!1421 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !1422, file: !3, line: 1577, type: !19)
!1422 = distinct !DISubprogram(name: "GetResizeFilterSupport", scope: !3, file: !3, line: 1576, type: !1423, scopeLine: 1578, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1425)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!15, !19}
!1425 = !{!1421}
!1426 = !DILocation(line: 0, scope: !1422, inlinedAt: !1427)
!1427 = distinct !DILocation(line: 1177, column: 17, scope: !925)
!1428 = !DILocation(line: 1581, column: 25, scope: !1422, inlinedAt: !1427)
!1429 = !DILocation(line: 1581, column: 48, scope: !1422, inlinedAt: !1427)
!1430 = !DILocation(line: 1581, column: 32, scope: !1422, inlinedAt: !1427)
!1431 = !DILocation(line: 1177, column: 17, scope: !925)
!1432 = !DILocation(line: 0, scope: !925)
!1433 = !DILocation(line: 1178, column: 33, scope: !925)
!1434 = !{!949, !949, i64 0}
!1435 = !DILocation(line: 1178, column: 16, scope: !925)
!1436 = !DILocation(line: 1179, column: 33, scope: !925)
!1437 = !DILocation(line: 1180, column: 58, scope: !925)
!1438 = !DILocation(line: 1180, column: 14, scope: !925)
!1439 = !DILocation(line: 1179, column: 16, scope: !925)
!1440 = !DILocation(line: 1181, column: 33, scope: !925)
!1441 = !DILocation(line: 1182, column: 58, scope: !925)
!1442 = !DILocation(line: 1182, column: 14, scope: !925)
!1443 = !DILocation(line: 1181, column: 16, scope: !925)
!1444 = !DILocation(line: 1183, column: 33, scope: !925)
!1445 = !DILocation(line: 1184, column: 14, scope: !925)
!1446 = !DILocation(line: 1184, column: 59, scope: !925)
!1447 = !DILocation(line: 1184, column: 35, scope: !925)
!1448 = !DILocation(line: 1183, column: 16, scope: !925)
!1449 = !DILocation(line: 1185, column: 33, scope: !925)
!1450 = !DILocation(line: 1186, column: 14, scope: !925)
!1451 = !DILocation(line: 1186, column: 59, scope: !925)
!1452 = !DILocation(line: 1186, column: 35, scope: !925)
!1453 = !DILocation(line: 1185, column: 16, scope: !925)
!1454 = !DILocation(line: 1187, column: 33, scope: !925)
!1455 = !DILocation(line: 1188, column: 14, scope: !925)
!1456 = !DILocation(line: 1188, column: 59, scope: !925)
!1457 = !DILocation(line: 1188, column: 36, scope: !925)
!1458 = !DILocation(line: 1187, column: 16, scope: !925)
!1459 = !DILocation(line: 1189, column: 26, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1189, column: 14)
!1461 = !DILocation(line: 1189, column: 44, scope: !1460)
!1462 = !DILocation(line: 1190, column: 35, scope: !1460)
!1463 = !DILocation(line: 1191, column: 16, scope: !1460)
!1464 = !DILocation(line: 1191, column: 61, scope: !1460)
!1465 = !DILocation(line: 1191, column: 46, scope: !1460)
!1466 = !DILocation(line: 1191, column: 38, scope: !1460)
!1467 = !DILocation(line: 1190, column: 18, scope: !1460)
!1468 = !DILocation(line: 1190, column: 11, scope: !1460)
!1469 = !DILocation(line: 1192, column: 26, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1192, column: 14)
!1471 = !DILocation(line: 1192, column: 42, scope: !1470)
!1472 = !DILocation(line: 1193, column: 35, scope: !1470)
!1473 = !DILocation(line: 1194, column: 16, scope: !1470)
!1474 = !DILocation(line: 1195, column: 39, scope: !1470)
!1475 = !DILocation(line: 1195, column: 24, scope: !1470)
!1476 = !DILocation(line: 1195, column: 16, scope: !1470)
!1477 = !DILocation(line: 1193, column: 18, scope: !1470)
!1478 = !DILocation(line: 1193, column: 11, scope: !1470)
!1479 = !DILocation(line: 1196, column: 33, scope: !925)
!1480 = !DILocation(line: 1197, column: 14, scope: !925)
!1481 = !DILocation(line: 1196, column: 16, scope: !925)
!1482 = !DILocation(line: 1198, column: 26, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1198, column: 14)
!1484 = !DILocation(line: 1198, column: 41, scope: !1483)
!1485 = !DILocation(line: 1199, column: 35, scope: !1483)
!1486 = !DILocation(line: 1200, column: 16, scope: !1483)
!1487 = !DILocation(line: 1200, column: 37, scope: !1483)
!1488 = !DILocation(line: 1200, column: 48, scope: !1483)
!1489 = !DILocation(line: 1200, column: 69, scope: !1483)
!1490 = !DILocation(line: 1199, column: 18, scope: !1483)
!1491 = !DILocation(line: 1199, column: 11, scope: !1483)
!1492 = !DILocation(line: 1201, column: 33, scope: !925)
!1493 = !DILocation(line: 1201, column: 16, scope: !925)
!1494 = !DILocation(line: 1206, column: 23, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 1206, column: 9)
!1496 = distinct !DILexicalBlock(scope: !925, file: !3, line: 1206, column: 9)
!1497 = !DILocation(line: 1206, column: 9, scope: !1496)
!1498 = !DILocation(line: 1207, column: 35, scope: !1495)
!1499 = !DILocation(line: 1207, column: 61, scope: !1495)
!1500 = !DILocation(line: 1208, column: 58, scope: !1495)
!1501 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !1502, file: !3, line: 1612, type: !19)
!1502 = distinct !DISubprogram(name: "GetResizeFilterWeight", scope: !3, file: !3, line: 1611, type: !1503, scopeLine: 1613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1505)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!15, !19, !18}
!1505 = !{!1501, !1506, !1507, !1508, !1509}
!1506 = !DILocalVariable(name: "x", arg: 2, scope: !1502, file: !3, line: 1612, type: !18)
!1507 = !DILocalVariable(name: "scale", scope: !1502, file: !3, line: 1615, type: !15)
!1508 = !DILocalVariable(name: "weight", scope: !1502, file: !3, line: 1616, type: !15)
!1509 = !DILocalVariable(name: "x_blur", scope: !1502, file: !3, line: 1617, type: !15)
!1510 = !DILocation(line: 0, scope: !1502, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 1208, column: 22, scope: !1495)
!1512 = !DILocation(line: 1624, column: 10, scope: !1502, inlinedAt: !1511)
!1513 = !DILocation(line: 1624, column: 42, scope: !1502, inlinedAt: !1511)
!1514 = !DILocation(line: 1625, column: 23, scope: !1515, inlinedAt: !1511)
!1515 = distinct !DILexicalBlock(scope: !1502, file: !3, line: 1625, column: 7)
!1516 = !DILocation(line: 1625, column: 8, scope: !1515, inlinedAt: !1511)
!1517 = !DILocation(line: 1625, column: 38, scope: !1515, inlinedAt: !1511)
!1518 = !DILocation(line: 1625, column: 55, scope: !1515, inlinedAt: !1511)
!1519 = !DILocation(line: 1626, column: 23, scope: !1515, inlinedAt: !1511)
!1520 = !DILocation(line: 1626, column: 30, scope: !1515, inlinedAt: !1511)
!1521 = !DILocation(line: 1625, column: 7, scope: !1502, inlinedAt: !1511)
!1522 = !DILocation(line: 1630, column: 28, scope: !1523, inlinedAt: !1511)
!1523 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1629, column: 5)
!1524 = !DILocation(line: 1631, column: 41, scope: !1523, inlinedAt: !1511)
!1525 = !DILocation(line: 1631, column: 13, scope: !1523, inlinedAt: !1511)
!1526 = !DILocation(line: 0, scope: !1515, inlinedAt: !1511)
!1527 = !DILocation(line: 1633, column: 31, scope: !1502, inlinedAt: !1511)
!1528 = !DILocation(line: 1633, column: 16, scope: !1502, inlinedAt: !1511)
!1529 = !DILocation(line: 1633, column: 15, scope: !1502, inlinedAt: !1511)
!1530 = !DILocation(line: 1208, column: 13, scope: !1495)
!1531 = !DILocation(line: 1207, column: 18, scope: !1495)
!1532 = !DILocation(line: 1206, column: 36, scope: !1495)
!1533 = distinct !{!1533, !1497, !1534, !1202, !1203}
!1534 = !DILocation(line: 1208, column: 60, scope: !1496)
!1535 = !DILocation(line: 1210, column: 33, scope: !925)
!1536 = !DILocation(line: 1211, column: 11, scope: !925)
!1537 = !DILocation(line: 1210, column: 16, scope: !925)
!1538 = !DILocation(line: 1212, column: 7, scope: !925)
!1539 = !DILocation(line: 1214, column: 12, scope: !2)
!1540 = !DILocation(line: 1218, column: 3, scope: !2)
!1541 = distinct !DISubprogram(name: "Box", scope: !3, file: !3, line: 184, type: !13, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1542)
!1542 = !{!1543, !1544}
!1543 = !DILocalVariable(name: "x", arg: 1, scope: !1541, file: !3, line: 184, type: !18)
!1544 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1541, file: !3, line: 185, type: !19)
!1545 = !DILocation(line: 0, scope: !1541)
!1546 = !DILocation(line: 195, column: 3, scope: !1541)
!1547 = distinct !DISubprogram(name: "Triangle", scope: !3, file: !3, line: 514, type: !13, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1548)
!1548 = !{!1549, !1550}
!1549 = !DILocalVariable(name: "x", arg: 1, scope: !1547, file: !3, line: 514, type: !18)
!1550 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1547, file: !3, line: 515, type: !19)
!1551 = !DILocation(line: 0, scope: !1547)
!1552 = !DILocation(line: 524, column: 9, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 524, column: 7)
!1554 = !DILocation(line: 524, column: 7, scope: !1547)
!1555 = !DILocation(line: 525, column: 11, scope: !1553)
!1556 = !DILocation(line: 525, column: 5, scope: !1553)
!1557 = !DILocation(line: 527, column: 1, scope: !1547)
!1558 = distinct !DISubprogram(name: "CubicBC", scope: !3, file: !3, line: 210, type: !13, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1559)
!1559 = !{!1560, !1561}
!1560 = !DILocalVariable(name: "x", arg: 1, scope: !1558, file: !3, line: 210, type: !18)
!1561 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1558, file: !3, line: 211, type: !19)
!1562 = !DILocation(line: 0, scope: !1558)
!1563 = !DILocation(line: 242, column: 9, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 242, column: 7)
!1565 = !DILocation(line: 242, column: 7, scope: !1558)
!1566 = !DILocation(line: 243, column: 27, scope: !1564)
!1567 = !DILocation(line: 243, column: 12, scope: !1564)
!1568 = !DILocation(line: 244, column: 8, scope: !1564)
!1569 = !DILocation(line: 244, column: 40, scope: !1564)
!1570 = !DILocation(line: 244, column: 37, scope: !1564)
!1571 = !DILocation(line: 243, column: 46, scope: !1564)
!1572 = !DILocation(line: 243, column: 41, scope: !1564)
!1573 = !DILocation(line: 243, column: 5, scope: !1564)
!1574 = !DILocation(line: 245, column: 9, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1558, file: !3, line: 245, column: 7)
!1576 = !DILocation(line: 245, column: 7, scope: !1558)
!1577 = !DILocation(line: 246, column: 12, scope: !1575)
!1578 = !DILocation(line: 246, column: 45, scope: !1575)
!1579 = !DILocation(line: 247, column: 8, scope: !1575)
!1580 = !DILocation(line: 247, column: 40, scope: !1575)
!1581 = !DILocation(line: 247, column: 37, scope: !1575)
!1582 = !DILocation(line: 246, column: 74, scope: !1575)
!1583 = !DILocation(line: 246, column: 41, scope: !1575)
!1584 = !DILocation(line: 246, column: 5, scope: !1575)
!1585 = !DILocation(line: 249, column: 1, scope: !1558)
!1586 = distinct !DISubprogram(name: "Hanning", scope: !3, file: !3, line: 287, type: !13, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1587)
!1587 = !{!1588, !1589, !1590}
!1588 = !DILocalVariable(name: "x", arg: 1, scope: !1586, file: !3, line: 287, type: !18)
!1589 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1586, file: !3, line: 288, type: !19)
!1590 = !DILocalVariable(name: "cosine", scope: !1586, file: !3, line: 294, type: !18)
!1591 = !DILocation(line: 0, scope: !1586)
!1592 = !DILocation(line: 294, column: 54, scope: !1586)
!1593 = !DILocation(line: 294, column: 53, scope: !1586)
!1594 = !DILocation(line: 294, column: 31, scope: !1586)
!1595 = !DILocation(line: 298, column: 18, scope: !1586)
!1596 = !DILocation(line: 298, column: 13, scope: !1586)
!1597 = !DILocation(line: 298, column: 9, scope: !1586)
!1598 = !DILocation(line: 298, column: 3, scope: !1586)
!1599 = distinct !DISubprogram(name: "Hamming", scope: !3, file: !3, line: 301, type: !13, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1600)
!1600 = !{!1601, !1602, !1603}
!1601 = !DILocalVariable(name: "x", arg: 1, scope: !1599, file: !3, line: 301, type: !18)
!1602 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1599, file: !3, line: 302, type: !19)
!1603 = !DILocalVariable(name: "cosine", scope: !1599, file: !3, line: 308, type: !18)
!1604 = !DILocation(line: 0, scope: !1599)
!1605 = !DILocation(line: 308, column: 54, scope: !1599)
!1606 = !DILocation(line: 308, column: 53, scope: !1599)
!1607 = !DILocation(line: 308, column: 31, scope: !1599)
!1608 = !DILocation(line: 312, column: 20, scope: !1599)
!1609 = !DILocation(line: 312, column: 14, scope: !1599)
!1610 = !DILocation(line: 312, column: 9, scope: !1599)
!1611 = !DILocation(line: 312, column: 3, scope: !1599)
!1612 = distinct !DISubprogram(name: "Blackman", scope: !3, file: !3, line: 148, type: !13, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1613)
!1613 = !{!1614, !1615, !1616}
!1614 = !DILocalVariable(name: "x", arg: 1, scope: !1612, file: !3, line: 148, type: !18)
!1615 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1612, file: !3, line: 149, type: !19)
!1616 = !DILocalVariable(name: "cosine", scope: !1612, file: !3, line: 158, type: !18)
!1617 = !DILocation(line: 0, scope: !1612)
!1618 = !DILocation(line: 158, column: 54, scope: !1612)
!1619 = !DILocation(line: 158, column: 53, scope: !1612)
!1620 = !DILocation(line: 158, column: 31, scope: !1612)
!1621 = !DILocation(line: 162, column: 15, scope: !1612)
!1622 = !DILocation(line: 162, column: 26, scope: !1612)
!1623 = !DILocation(line: 162, column: 14, scope: !1612)
!1624 = !DILocation(line: 162, column: 9, scope: !1612)
!1625 = !DILocation(line: 162, column: 3, scope: !1612)
!1626 = distinct !DISubprogram(name: "Gaussian", scope: !3, file: !3, line: 251, type: !13, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1627)
!1627 = !{!1628, !1629}
!1628 = !DILocalVariable(name: "x", arg: 1, scope: !1626, file: !3, line: 251, type: !18)
!1629 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1626, file: !3, line: 252, type: !19)
!1630 = !DILocation(line: 0, scope: !1626)
!1631 = !DILocation(line: 284, column: 24, scope: !1626)
!1632 = !DILocation(line: 284, column: 23, scope: !1626)
!1633 = !DILocation(line: 284, column: 53, scope: !1626)
!1634 = !DILocation(line: 284, column: 55, scope: !1626)
!1635 = !DILocation(line: 284, column: 14, scope: !1626)
!1636 = !DILocation(line: 284, column: 10, scope: !1626)
!1637 = !DILocation(line: 284, column: 9, scope: !1626)
!1638 = !DILocation(line: 284, column: 3, scope: !1626)
!1639 = distinct !DISubprogram(name: "Quadratic", scope: !3, file: !3, line: 386, type: !13, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1640)
!1640 = !{!1641, !1642}
!1641 = !DILocalVariable(name: "x", arg: 1, scope: !1639, file: !3, line: 386, type: !18)
!1642 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1639, file: !3, line: 387, type: !19)
!1643 = !DILocation(line: 0, scope: !1639)
!1644 = !DILocation(line: 394, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 394, column: 7)
!1646 = !DILocation(line: 394, column: 9, scope: !1645)
!1647 = !DILocation(line: 394, column: 7, scope: !1639)
!1648 = !DILocation(line: 395, column: 18, scope: !1645)
!1649 = !DILocation(line: 395, column: 11, scope: !1645)
!1650 = !DILocation(line: 395, column: 5, scope: !1645)
!1651 = !DILocation(line: 396, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 396, column: 7)
!1653 = !DILocation(line: 396, column: 7, scope: !1639)
!1654 = !DILocation(line: 397, column: 18, scope: !1652)
!1655 = !DILocation(line: 397, column: 15, scope: !1652)
!1656 = !DILocation(line: 397, column: 23, scope: !1652)
!1657 = !DILocation(line: 397, column: 11, scope: !1652)
!1658 = !DILocation(line: 397, column: 5, scope: !1652)
!1659 = !DILocation(line: 399, column: 1, scope: !1639)
!1660 = distinct !DISubprogram(name: "Jinc", scope: !3, file: !3, line: 315, type: !13, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1661)
!1661 = !{!1662, !1663}
!1662 = !DILocalVariable(name: "x", arg: 1, scope: !1660, file: !3, line: 315, type: !18)
!1663 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1660, file: !3, line: 316, type: !19)
!1664 = !DILocation(line: 0, scope: !1660)
!1665 = !DILocation(line: 328, column: 9, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 328, column: 7)
!1667 = !DILocation(line: 328, column: 7, scope: !1660)
!1668 = !DILocation(line: 330, column: 50, scope: !1660)
!1669 = !DILocalVariable(name: "x", arg: 1, scope: !1670, file: !3, line: 1452, type: !15)
!1670 = distinct !DISubprogram(name: "BesselOrderOne", scope: !3, file: !3, line: 1452, type: !857, scopeLine: 1453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1671)
!1671 = !{!1669, !1672, !1673}
!1672 = !DILocalVariable(name: "p", scope: !1670, file: !3, line: 1455, type: !15)
!1673 = !DILocalVariable(name: "q", scope: !1670, file: !3, line: 1456, type: !15)
!1674 = !DILocation(line: 0, scope: !1670, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 330, column: 10, scope: !1660)
!1676 = !DILocation(line: 1458, column: 9, scope: !1677, inlinedAt: !1675)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 1458, column: 7)
!1678 = !DILocation(line: 1458, column: 7, scope: !1670, inlinedAt: !1675)
!1679 = !DILocation(line: 1461, column: 9, scope: !1680, inlinedAt: !1675)
!1680 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 1461, column: 7)
!1681 = !DILocation(line: 1461, column: 7, scope: !1670, inlinedAt: !1675)
!1682 = !DILocation(line: 1462, column: 8, scope: !1680, inlinedAt: !1675)
!1683 = !DILocation(line: 1462, column: 5, scope: !1680, inlinedAt: !1675)
!1684 = !DILocation(line: 1463, column: 9, scope: !1685, inlinedAt: !1675)
!1685 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 1463, column: 7)
!1686 = !DILocation(line: 1463, column: 7, scope: !1670, inlinedAt: !1675)
!1687 = !DILocation(line: 0, scope: !856, inlinedAt: !1688)
!1688 = distinct !DILocation(line: 1464, column: 14, scope: !1685, inlinedAt: !1675)
!1689 = !DILocation(line: 1366, column: 8, scope: !1690, inlinedAt: !1688)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 1365, column: 3)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 1364, column: 3)
!1692 = distinct !DILexicalBlock(scope: !856, file: !3, line: 1364, column: 3)
!1693 = !DILocation(line: 1366, column: 10, scope: !1690, inlinedAt: !1688)
!1694 = !DILocation(line: 1366, column: 7, scope: !1690, inlinedAt: !1688)
!1695 = !DILocation(line: 1366, column: 13, scope: !1690, inlinedAt: !1688)
!1696 = !DILocation(line: 1366, column: 12, scope: !1690, inlinedAt: !1688)
!1697 = !DILocation(line: 1367, column: 8, scope: !1690, inlinedAt: !1688)
!1698 = !DILocation(line: 1367, column: 10, scope: !1690, inlinedAt: !1688)
!1699 = !DILocation(line: 1367, column: 7, scope: !1690, inlinedAt: !1688)
!1700 = !DILocation(line: 1367, column: 13, scope: !1690, inlinedAt: !1688)
!1701 = !DILocation(line: 1367, column: 12, scope: !1690, inlinedAt: !1688)
!1702 = !DILocation(line: 1364, column: 22, scope: !1691, inlinedAt: !1688)
!1703 = !DILocation(line: 1364, column: 15, scope: !1691, inlinedAt: !1688)
!1704 = !DILocation(line: 1364, column: 3, scope: !1692, inlinedAt: !1688)
!1705 = distinct !{!1705, !1704, !1706, !1202, !1203}
!1706 = !DILocation(line: 1368, column: 3, scope: !1692, inlinedAt: !1688)
!1707 = !DILocation(line: 1369, column: 11, scope: !856, inlinedAt: !1688)
!1708 = !DILocation(line: 1464, column: 13, scope: !1685, inlinedAt: !1675)
!1709 = !DILocation(line: 1464, column: 5, scope: !1685, inlinedAt: !1675)
!1710 = !DILocation(line: 1463, column: 7, scope: !1685, inlinedAt: !1675)
!1711 = !DILocation(line: 1465, column: 33, scope: !1670, inlinedAt: !1675)
!1712 = !DILocation(line: 1465, column: 23, scope: !1670, inlinedAt: !1675)
!1713 = !DILocation(line: 1465, column: 5, scope: !1670, inlinedAt: !1675)
!1714 = !DILocation(line: 0, scope: !872, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 1465, column: 40, scope: !1670, inlinedAt: !1675)
!1716 = !DILocation(line: 1404, column: 3, scope: !1717, inlinedAt: !1715)
!1717 = distinct !DILexicalBlock(scope: !872, file: !3, line: 1404, column: 3)
!1718 = !DILocation(line: 1406, column: 7, scope: !1719, inlinedAt: !1715)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !3, line: 1405, column: 3)
!1720 = distinct !DILexicalBlock(scope: !1717, file: !3, line: 1404, column: 3)
!1721 = !DILocation(line: 1406, column: 8, scope: !1719, inlinedAt: !1715)
!1722 = !DILocation(line: 1406, column: 25, scope: !1719, inlinedAt: !1715)
!1723 = !DILocation(line: 1406, column: 24, scope: !1719, inlinedAt: !1715)
!1724 = !DILocation(line: 1407, column: 7, scope: !1719, inlinedAt: !1715)
!1725 = !DILocation(line: 1407, column: 8, scope: !1719, inlinedAt: !1715)
!1726 = !DILocation(line: 1407, column: 25, scope: !1719, inlinedAt: !1715)
!1727 = !DILocation(line: 1407, column: 24, scope: !1719, inlinedAt: !1715)
!1728 = !DILocation(line: 1404, column: 22, scope: !1720, inlinedAt: !1715)
!1729 = !DILocation(line: 1404, column: 15, scope: !1720, inlinedAt: !1715)
!1730 = distinct !{!1730, !1716, !1731, !1202, !1203}
!1731 = !DILocation(line: 1408, column: 3, scope: !1717, inlinedAt: !1715)
!1732 = !DILocation(line: 1465, column: 62, scope: !1670, inlinedAt: !1675)
!1733 = !DILocation(line: 1466, column: 5, scope: !1670, inlinedAt: !1675)
!1734 = !DILocation(line: 0, scope: !885, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 1466, column: 29, scope: !1670, inlinedAt: !1675)
!1736 = !DILocation(line: 1444, column: 3, scope: !1737, inlinedAt: !1735)
!1737 = distinct !DILexicalBlock(scope: !885, file: !3, line: 1444, column: 3)
!1738 = !DILocation(line: 1446, column: 7, scope: !1739, inlinedAt: !1735)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 1445, column: 3)
!1740 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 1444, column: 3)
!1741 = !DILocation(line: 1446, column: 8, scope: !1739, inlinedAt: !1735)
!1742 = !DILocation(line: 1446, column: 25, scope: !1739, inlinedAt: !1735)
!1743 = !DILocation(line: 1446, column: 24, scope: !1739, inlinedAt: !1735)
!1744 = !DILocation(line: 1447, column: 7, scope: !1739, inlinedAt: !1735)
!1745 = !DILocation(line: 1447, column: 8, scope: !1739, inlinedAt: !1735)
!1746 = !DILocation(line: 1447, column: 25, scope: !1739, inlinedAt: !1735)
!1747 = !DILocation(line: 1447, column: 24, scope: !1739, inlinedAt: !1735)
!1748 = !DILocation(line: 1444, column: 22, scope: !1740, inlinedAt: !1735)
!1749 = !DILocation(line: 1444, column: 15, scope: !1740, inlinedAt: !1735)
!1750 = distinct !{!1750, !1736, !1751, !1202, !1203}
!1751 = !DILocation(line: 1448, column: 3, scope: !1737, inlinedAt: !1735)
!1752 = !DILocation(line: 1409, column: 11, scope: !872, inlinedAt: !1715)
!1753 = !DILocation(line: 1465, column: 77, scope: !1670, inlinedAt: !1675)
!1754 = !DILocation(line: 1465, column: 40, scope: !1670, inlinedAt: !1675)
!1755 = !DILocation(line: 1465, column: 60, scope: !1670, inlinedAt: !1675)
!1756 = !DILocation(line: 1449, column: 11, scope: !885, inlinedAt: !1735)
!1757 = !DILocation(line: 1466, column: 29, scope: !1670, inlinedAt: !1675)
!1758 = !DILocation(line: 1466, column: 52, scope: !1670, inlinedAt: !1675)
!1759 = !DILocation(line: 1467, column: 5, scope: !1670, inlinedAt: !1675)
!1760 = !DILocation(line: 1466, column: 67, scope: !1670, inlinedAt: !1675)
!1761 = !DILocation(line: 1466, column: 50, scope: !1670, inlinedAt: !1675)
!1762 = !DILocation(line: 1466, column: 22, scope: !1670, inlinedAt: !1675)
!1763 = !DILocation(line: 1465, column: 38, scope: !1670, inlinedAt: !1675)
!1764 = !DILocation(line: 1468, column: 7, scope: !1670, inlinedAt: !1675)
!1765 = !DILocation(line: 1469, column: 8, scope: !1766, inlinedAt: !1675)
!1766 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 1468, column: 7)
!1767 = !DILocation(line: 1469, column: 5, scope: !1766, inlinedAt: !1675)
!1768 = !DILocation(line: 330, column: 53, scope: !1660)
!1769 = !DILocation(line: 330, column: 3, scope: !1660)
!1770 = !DILocation(line: 331, column: 1, scope: !1660)
!1771 = distinct !DISubprogram(name: "Sinc", scope: !3, file: !3, line: 401, type: !13, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1772)
!1772 = !{!1773, !1774, !1775}
!1773 = !DILocalVariable(name: "x", arg: 1, scope: !1771, file: !3, line: 401, type: !18)
!1774 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1771, file: !3, line: 402, type: !19)
!1775 = !DILocalVariable(name: "alpha", scope: !1776, file: !3, line: 412, type: !18)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 411, column: 5)
!1777 = distinct !DILexicalBlock(scope: !1771, file: !3, line: 410, column: 7)
!1778 = !DILocation(line: 0, scope: !1771)
!1779 = !DILocation(line: 410, column: 9, scope: !1777)
!1780 = !DILocation(line: 410, column: 7, scope: !1771)
!1781 = !DILocation(line: 410, column: 7, scope: !1777)
!1782 = !DILocation(line: 412, column: 60, scope: !1776)
!1783 = !DILocation(line: 412, column: 34, scope: !1776)
!1784 = !DILocation(line: 0, scope: !1776)
!1785 = !DILocation(line: 413, column: 18, scope: !1776)
!1786 = !DILocation(line: 413, column: 14, scope: !1776)
!1787 = !DILocation(line: 413, column: 33, scope: !1776)
!1788 = !DILocation(line: 413, column: 13, scope: !1776)
!1789 = !DILocation(line: 416, column: 1, scope: !1771)
!1790 = distinct !DISubprogram(name: "SincFast", scope: !3, file: !3, line: 418, type: !13, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1791)
!1791 = !{!1792, !1793, !1794, !1797, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809}
!1792 = !DILocalVariable(name: "x", arg: 1, scope: !1790, file: !3, line: 418, type: !18)
!1793 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1790, file: !3, line: 419, type: !19)
!1794 = !DILocalVariable(name: "alpha", scope: !1795, file: !3, line: 449, type: !18)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !3, line: 448, column: 5)
!1796 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 447, column: 7)
!1797 = !DILocalVariable(name: "xx", scope: !1798, file: !3, line: 456, type: !18)
!1798 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 452, column: 3)
!1799 = !DILocalVariable(name: "c0", scope: !1798, file: !3, line: 476, type: !865)
!1800 = !DILocalVariable(name: "c1", scope: !1798, file: !3, line: 477, type: !865)
!1801 = !DILocalVariable(name: "c2", scope: !1798, file: !3, line: 478, type: !865)
!1802 = !DILocalVariable(name: "c3", scope: !1798, file: !3, line: 479, type: !865)
!1803 = !DILocalVariable(name: "c4", scope: !1798, file: !3, line: 480, type: !865)
!1804 = !DILocalVariable(name: "c5", scope: !1798, file: !3, line: 481, type: !865)
!1805 = !DILocalVariable(name: "c6", scope: !1798, file: !3, line: 482, type: !865)
!1806 = !DILocalVariable(name: "c7", scope: !1798, file: !3, line: 483, type: !865)
!1807 = !DILocalVariable(name: "c8", scope: !1798, file: !3, line: 484, type: !865)
!1808 = !DILocalVariable(name: "c9", scope: !1798, file: !3, line: 485, type: !865)
!1809 = !DILocalVariable(name: "p", scope: !1798, file: !3, line: 486, type: !865)
!1810 = !DILocation(line: 0, scope: !1790)
!1811 = !DILocation(line: 447, column: 9, scope: !1796)
!1812 = !DILocation(line: 447, column: 7, scope: !1790)
!1813 = !DILocation(line: 447, column: 7, scope: !1796)
!1814 = !DILocation(line: 449, column: 60, scope: !1795)
!1815 = !DILocation(line: 449, column: 34, scope: !1795)
!1816 = !DILocation(line: 0, scope: !1795)
!1817 = !DILocation(line: 450, column: 18, scope: !1795)
!1818 = !DILocation(line: 450, column: 14, scope: !1795)
!1819 = !DILocation(line: 450, column: 33, scope: !1795)
!1820 = !DILocation(line: 456, column: 32, scope: !1798)
!1821 = !DILocation(line: 0, scope: !1798)
!1822 = !DILocation(line: 487, column: 10, scope: !1798)
!1823 = !DILocation(line: 487, column: 65, scope: !1798)
!1824 = !DILocation(line: 487, column: 58, scope: !1798)
!1825 = !DILocation(line: 487, column: 51, scope: !1798)
!1826 = !DILocation(line: 487, column: 44, scope: !1798)
!1827 = !DILocation(line: 487, column: 37, scope: !1798)
!1828 = !DILocation(line: 487, column: 30, scope: !1798)
!1829 = !DILocation(line: 487, column: 23, scope: !1798)
!1830 = !DILocation(line: 487, column: 16, scope: !1798)
!1831 = !DILocation(line: 487, column: 9, scope: !1798)
!1832 = !DILocation(line: 488, column: 15, scope: !1798)
!1833 = !DILocation(line: 488, column: 24, scope: !1798)
!1834 = !DILocation(line: 488, column: 20, scope: !1798)
!1835 = !DILocation(line: 488, column: 33, scope: !1798)
!1836 = !DILocation(line: 488, column: 29, scope: !1798)
!1837 = !DILocation(line: 488, column: 42, scope: !1798)
!1838 = !DILocation(line: 488, column: 38, scope: !1798)
!1839 = !DILocation(line: 488, column: 48, scope: !1798)
!1840 = !DILocation(line: 512, column: 1, scope: !1790)
!1841 = distinct !DISubprogram(name: "Kaiser", scope: !3, file: !3, line: 333, type: !13, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1842)
!1842 = !{!1843, !1844}
!1843 = !DILocalVariable(name: "x", arg: 1, scope: !1841, file: !3, line: 333, type: !18)
!1844 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1841, file: !3, line: 334, type: !19)
!1845 = !DILocation(line: 0, scope: !1841)
!1846 = !DILocation(line: 348, column: 25, scope: !1841)
!1847 = !DILocation(line: 348, column: 10, scope: !1841)
!1848 = !DILocation(line: 348, column: 43, scope: !1841)
!1849 = !DILocation(line: 349, column: 25, scope: !1841)
!1850 = !DILocation(line: 349, column: 24, scope: !1841)
!1851 = !DILocation(line: 349, column: 23, scope: !1841)
!1852 = !DILocation(line: 349, column: 5, scope: !1841)
!1853 = !DILocation(line: 348, column: 72, scope: !1841)
!1854 = !DILocation(line: 0, scope: !1178, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 348, column: 40, scope: !1841)
!1856 = !DILocation(line: 1316, column: 6, scope: !1178, inlinedAt: !1855)
!1857 = !DILocation(line: 1316, column: 5, scope: !1178, inlinedAt: !1855)
!1858 = !DILocation(line: 1318, column: 13, scope: !1189, inlinedAt: !1855)
!1859 = !DILocation(line: 1318, column: 15, scope: !1189, inlinedAt: !1855)
!1860 = !DILocation(line: 1318, column: 3, scope: !1190, inlinedAt: !1855)
!1861 = !DILocation(line: 1320, column: 8, scope: !1194, inlinedAt: !1855)
!1862 = !DILocation(line: 1321, column: 11, scope: !1194, inlinedAt: !1855)
!1863 = !DILocation(line: 1321, column: 29, scope: !1194, inlinedAt: !1855)
!1864 = !DILocation(line: 1321, column: 9, scope: !1194, inlinedAt: !1855)
!1865 = !DILocation(line: 1321, column: 6, scope: !1194, inlinedAt: !1855)
!1866 = !DILocation(line: 1318, column: 33, scope: !1189, inlinedAt: !1855)
!1867 = distinct !{!1867, !1860, !1868, !1202, !1203}
!1868 = !DILocation(line: 1322, column: 3, scope: !1190, inlinedAt: !1855)
!1869 = !DILocation(line: 348, column: 39, scope: !1841)
!1870 = !DILocation(line: 348, column: 3, scope: !1841)
!1871 = distinct !DISubprogram(name: "Welsh", scope: !3, file: !3, line: 529, type: !13, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1872)
!1872 = !{!1873, !1874}
!1873 = !DILocalVariable(name: "x", arg: 1, scope: !1871, file: !3, line: 529, type: !18)
!1874 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1871, file: !3, line: 530, type: !19)
!1875 = !DILocation(line: 0, scope: !1871)
!1876 = !DILocation(line: 537, column: 9, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 537, column: 7)
!1878 = !DILocation(line: 537, column: 7, scope: !1871)
!1879 = !DILocation(line: 538, column: 17, scope: !1877)
!1880 = !DILocation(line: 538, column: 11, scope: !1877)
!1881 = !DILocation(line: 538, column: 5, scope: !1877)
!1882 = !DILocation(line: 540, column: 1, scope: !1871)
!1883 = distinct !DISubprogram(name: "Bohman", scope: !3, file: !3, line: 165, type: !13, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1884)
!1884 = !{!1885, !1886, !1887, !1888}
!1885 = !DILocalVariable(name: "x", arg: 1, scope: !1883, file: !3, line: 165, type: !18)
!1886 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1883, file: !3, line: 166, type: !19)
!1887 = !DILocalVariable(name: "cosine", scope: !1883, file: !3, line: 176, type: !865)
!1888 = !DILocalVariable(name: "sine", scope: !1883, file: !3, line: 177, type: !865)
!1889 = !DILocation(line: 0, scope: !1883)
!1890 = !DILocation(line: 176, column: 46, scope: !1883)
!1891 = !DILocation(line: 176, column: 45, scope: !1883)
!1892 = !DILocation(line: 176, column: 23, scope: !1883)
!1893 = !DILocation(line: 177, column: 29, scope: !1883)
!1894 = !DILocation(line: 177, column: 21, scope: !1883)
!1895 = !DILocation(line: 181, column: 32, scope: !1883)
!1896 = !DILocation(line: 181, column: 57, scope: !1883)
!1897 = !DILocation(line: 181, column: 42, scope: !1883)
!1898 = !DILocation(line: 181, column: 10, scope: !1883)
!1899 = !DILocation(line: 181, column: 3, scope: !1883)
!1900 = distinct !DISubprogram(name: "Lagrange", scope: !3, file: !3, line: 352, type: !13, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1901)
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907}
!1902 = !DILocalVariable(name: "x", arg: 1, scope: !1900, file: !3, line: 352, type: !18)
!1903 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1900, file: !3, line: 353, type: !19)
!1904 = !DILocalVariable(name: "value", scope: !1900, file: !3, line: 356, type: !15)
!1905 = !DILocalVariable(name: "i", scope: !1900, file: !3, line: 359, type: !218)
!1906 = !DILocalVariable(name: "n", scope: !1900, file: !3, line: 362, type: !218)
!1907 = !DILocalVariable(name: "order", scope: !1900, file: !3, line: 363, type: !218)
!1908 = !DILocation(line: 0, scope: !1900)
!1909 = !DILocation(line: 375, column: 26, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 375, column: 7)
!1911 = !DILocation(line: 375, column: 9, scope: !1910)
!1912 = !DILocation(line: 375, column: 7, scope: !1900)
!1913 = !DILocation(line: 377, column: 39, scope: !1900)
!1914 = !DILocation(line: 377, column: 24, scope: !1900)
!1915 = !DILocation(line: 377, column: 23, scope: !1900)
!1916 = !DILocation(line: 377, column: 9, scope: !1900)
!1917 = !DILocation(line: 378, column: 45, scope: !1900)
!1918 = !DILocation(line: 378, column: 5, scope: !1900)
!1919 = !DILocation(line: 380, column: 15, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 380, column: 3)
!1921 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 380, column: 3)
!1922 = !DILocation(line: 380, column: 3, scope: !1921)
!1923 = !DILocation(line: 381, column: 11, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1920, file: !3, line: 381, column: 9)
!1925 = !DILocation(line: 381, column: 9, scope: !1920)
!1926 = !DILocation(line: 382, column: 16, scope: !1924)
!1927 = !DILocation(line: 382, column: 15, scope: !1924)
!1928 = !DILocation(line: 382, column: 18, scope: !1924)
!1929 = !DILocation(line: 382, column: 21, scope: !1924)
!1930 = !DILocation(line: 382, column: 12, scope: !1924)
!1931 = !DILocation(line: 382, column: 7, scope: !1924)
!1932 = !DILocation(line: 380, column: 25, scope: !1920)
!1933 = distinct !{!1933, !1922, !1934, !1202, !1203}
!1934 = !DILocation(line: 382, column: 26, scope: !1921)
!1935 = !DILocation(line: 384, column: 1, scope: !1900)
!1936 = distinct !DISubprogram(name: "Cosine", scope: !3, file: !3, line: 198, type: !13, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !1937)
!1937 = !{!1938, !1939}
!1938 = !DILocalVariable(name: "x", arg: 1, scope: !1936, file: !3, line: 198, type: !18)
!1939 = !DILocalVariable(name: "resize_filter", arg: 2, scope: !1936, file: !3, line: 199, type: !19)
!1940 = !DILocation(line: 0, scope: !1936)
!1941 = !DILocation(line: 207, column: 50, scope: !1936)
!1942 = !DILocation(line: 207, column: 49, scope: !1936)
!1943 = !DILocation(line: 207, column: 26, scope: !1936)
!1944 = !DILocation(line: 207, column: 10, scope: !1936)
!1945 = !DILocation(line: 207, column: 3, scope: !1936)
!1946 = !DISubprogram(name: "LogMagickEvent", scope: !648, file: !648, line: 83, type: !1947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!152, !1949, !438, !438, !1951, !438, null}
!1949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1950)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !648, line: 58, baseType: !647)
!1951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!1952 = !{}
!1953 = !DISubprogram(name: "AcquireMagickMemory", scope: !1954, file: !1954, line: 40, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1954 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!204, !1951}
!1957 = !DISubprogram(name: "GetExceptionInfo", scope: !468, file: !468, line: 166, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !643}
!1960 = !DISubprogram(name: "GetExceptionMessage", scope: !468, file: !468, line: 137, type: !1961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!213, !1963}
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!1964 = !DISubprogram(name: "ThrowMagickException", scope: !468, file: !468, line: 156, type: !1965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!152, !643, !438, !438, !1951, !1967, !438, !438, null}
!1967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!1968 = !DISubprogram(name: "DestroyString", scope: !1969, file: !1969, line: 46, type: !1970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1969 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1970 = !DISubroutineType(types: !1971)
!1971 = !{!213, !213}
!1972 = !DISubprogram(name: "CatchException", scope: !468, file: !468, line: 164, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1973 = !DISubprogram(name: "DestroyExceptionInfo", scope: !468, file: !468, line: 148, type: !1974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!643, !643}
!1976 = !DISubprogram(name: "MagickCoreTerminus", scope: !1977, file: !1977, line: 147, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1977 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null}
!1980 = !DISubprogram(name: "ResetMagickMemory", scope: !1954, file: !1954, line: 52, type: !1981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!204, !204, !545, !1951}
!1983 = !DISubprogram(name: "GetImageArtifact", scope: !1984, file: !1984, line: 30, type: !1985, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1984 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!438, !58, !438}
!1987 = !DISubprogram(name: "ParseCommandOption", scope: !673, file: !673, line: 172, type: !1988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!218, !1990, !642, !438}
!1990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1991)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !673, line: 99, baseType: !672)
!1992 = !DISubprogram(name: "IsMagickTrue", scope: !1993, file: !1993, line: 38, type: !1994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!1993 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!152, !438}
!1996 = !DILocation(line: 0, scope: !1422)
!1997 = !DILocation(line: 1581, column: 25, scope: !1422)
!1998 = !DILocation(line: 1581, column: 48, scope: !1422)
!1999 = !DILocation(line: 1581, column: 32, scope: !1422)
!2000 = !DILocation(line: 1581, column: 3, scope: !1422)
!2001 = !DISubprogram(name: "FormatLocaleFile", scope: !2002, file: !2002, line: 67, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2002 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!218, !2005, !1079, null}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2007, line: 7, baseType: !2008)
!2007 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2009, line: 49, size: 1728, elements: !2010)
!2009 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2026, !2028, !2029, !2030, !2032, !2033, !2035, !2039, !2042, !2044, !2047, !2050, !2051, !2052, !2053, !2054}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2008, file: !2009, line: 51, baseType: !545, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2008, file: !2009, line: 54, baseType: !213, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2008, file: !2009, line: 55, baseType: !213, size: 64, offset: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2008, file: !2009, line: 56, baseType: !213, size: 64, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2008, file: !2009, line: 57, baseType: !213, size: 64, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2008, file: !2009, line: 58, baseType: !213, size: 64, offset: 320)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2008, file: !2009, line: 59, baseType: !213, size: 64, offset: 384)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2008, file: !2009, line: 60, baseType: !213, size: 64, offset: 448)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2008, file: !2009, line: 61, baseType: !213, size: 64, offset: 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2008, file: !2009, line: 64, baseType: !213, size: 64, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2008, file: !2009, line: 65, baseType: !213, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2008, file: !2009, line: 66, baseType: !213, size: 64, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2008, file: !2009, line: 68, baseType: !2024, size: 64, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2009, line: 36, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2008, file: !2009, line: 70, baseType: !2027, size: 64, offset: 832)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2008, file: !2009, line: 72, baseType: !545, size: 32, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2008, file: !2009, line: 73, baseType: !545, size: 32, offset: 928)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2008, file: !2009, line: 74, baseType: !2031, size: 64, offset: 960)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !221, line: 152, baseType: !222)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2008, file: !2009, line: 77, baseType: !170, size: 16, offset: 1024)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2008, file: !2009, line: 78, baseType: !2034, size: 8, offset: 1040)
!2034 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2008, file: !2009, line: 79, baseType: !2036, size: 8, offset: 1048)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 8, elements: !2037)
!2037 = !{!2038}
!2038 = !DISubrange(count: 1)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2008, file: !2009, line: 81, baseType: !2040, size: 64, offset: 1088)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2009, line: 43, baseType: null)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2008, file: !2009, line: 89, baseType: !2043, size: 64, offset: 1152)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !221, line: 153, baseType: !222)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2008, file: !2009, line: 91, baseType: !2045, size: 64, offset: 1216)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2009, line: 37, flags: DIFlagFwdDecl)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2008, file: !2009, line: 92, baseType: !2048, size: 64, offset: 1280)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2009, line: 38, flags: DIFlagFwdDecl)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2008, file: !2009, line: 93, baseType: !2027, size: 64, offset: 1344)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2008, file: !2009, line: 94, baseType: !204, size: 64, offset: 1408)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2008, file: !2009, line: 95, baseType: !55, size: 64, offset: 1472)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2008, file: !2009, line: 96, baseType: !545, size: 32, offset: 1536)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2008, file: !2009, line: 98, baseType: !2055, size: 160, offset: 1568)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 160, elements: !2056)
!2056 = !{!2057}
!2057 = !DISubrange(count: 20)
!2058 = !DISubprogram(name: "CommandOptionToMnemonic", scope: !673, file: !673, line: 157, type: !2059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!438, !1990, !2061}
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!2062 = !DISubprogram(name: "GetMagickPrecision", scope: !1977, file: !1977, line: 119, type: !2063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!545}
!2065 = !DILocation(line: 0, scope: !1502)
!2066 = !DILocation(line: 1624, column: 10, scope: !1502)
!2067 = !DILocation(line: 1624, column: 42, scope: !1502)
!2068 = !DILocation(line: 1625, column: 23, scope: !1515)
!2069 = !DILocation(line: 1625, column: 8, scope: !1515)
!2070 = !DILocation(line: 1625, column: 38, scope: !1515)
!2071 = !DILocation(line: 1625, column: 55, scope: !1515)
!2072 = !DILocation(line: 1626, column: 23, scope: !1515)
!2073 = !DILocation(line: 1626, column: 30, scope: !1515)
!2074 = !DILocation(line: 1625, column: 7, scope: !1502)
!2075 = !DILocation(line: 1630, column: 28, scope: !1523)
!2076 = !DILocation(line: 1631, column: 41, scope: !1523)
!2077 = !DILocation(line: 1631, column: 13, scope: !1523)
!2078 = !DILocation(line: 0, scope: !1515)
!2079 = !DILocation(line: 1633, column: 31, scope: !1502)
!2080 = !DILocation(line: 1633, column: 16, scope: !1502)
!2081 = !DILocation(line: 1633, column: 15, scope: !1502)
!2082 = !DILocation(line: 1634, column: 3, scope: !1502)
!2083 = !DISubprogram(name: "DeleteImageArtifact", scope: !1984, file: !1984, line: 35, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!152, !804, !438}
!2086 = distinct !DISubprogram(name: "AdaptiveResizeImage", scope: !3, file: !3, line: 1255, type: !2087, scopeLine: 1257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2089)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!804, !58, !1951, !1951, !643}
!2089 = !{!2090, !2091, !2092, !2093}
!2090 = !DILocalVariable(name: "image", arg: 1, scope: !2086, file: !3, line: 1255, type: !58)
!2091 = !DILocalVariable(name: "columns", arg: 2, scope: !2086, file: !3, line: 1256, type: !1951)
!2092 = !DILocalVariable(name: "rows", arg: 3, scope: !2086, file: !3, line: 1256, type: !1951)
!2093 = !DILocalVariable(name: "exception", arg: 4, scope: !2086, file: !3, line: 1256, type: !643)
!2094 = !DILocation(line: 0, scope: !2086)
!2095 = !DILocation(line: 1258, column: 10, scope: !2086)
!2096 = !DILocation(line: 1258, column: 3, scope: !2086)
!2097 = distinct !DISubprogram(name: "InterpolativeResizeImage", scope: !3, file: !3, line: 1670, type: !2098, scopeLine: 1673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2101)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!804, !58, !1951, !1951, !2100, !643}
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2112, !2113, !2114, !2115, !2116, !2123, !2124, !2128, !2129, !2131, !2133, !2134}
!2102 = !DILocalVariable(name: "image", arg: 1, scope: !2097, file: !3, line: 1670, type: !58)
!2103 = !DILocalVariable(name: "columns", arg: 2, scope: !2097, file: !3, line: 1671, type: !1951)
!2104 = !DILocalVariable(name: "rows", arg: 3, scope: !2097, file: !3, line: 1671, type: !1951)
!2105 = !DILocalVariable(name: "method", arg: 4, scope: !2097, file: !3, line: 1671, type: !2100)
!2106 = !DILocalVariable(name: "exception", arg: 5, scope: !2097, file: !3, line: 1672, type: !643)
!2107 = !DILocalVariable(name: "image_view", scope: !2097, file: !3, line: 1677, type: !2108)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView", file: !2110, line: 50, baseType: !2111)
!2110 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CacheView", file: !165, line: 160, flags: DIFlagFwdDecl)
!2112 = !DILocalVariable(name: "resize_view", scope: !2097, file: !3, line: 1678, type: !2108)
!2113 = !DILocalVariable(name: "resize_image", scope: !2097, file: !3, line: 1681, type: !804)
!2114 = !DILocalVariable(name: "status", scope: !2097, file: !3, line: 1684, type: !152)
!2115 = !DILocalVariable(name: "progress", scope: !2097, file: !3, line: 1687, type: !441)
!2116 = !DILocalVariable(name: "scale", scope: !2097, file: !3, line: 1690, type: !2117)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !2118, line: 142, baseType: !2119)
!2118 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !2118, line: 137, size: 128, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2119, file: !2118, line: 140, baseType: !178, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !2119, file: !2118, line: 141, baseType: !178, size: 64, offset: 64)
!2123 = !DILocalVariable(name: "y", scope: !2097, file: !3, line: 1693, type: !218)
!2124 = !DILocalVariable(name: "pixel", scope: !2125, file: !3, line: 1730, type: !814)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1728, column: 3)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1727, column: 3)
!2127 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1727, column: 3)
!2128 = !DILocalVariable(name: "offset", scope: !2125, file: !3, line: 1733, type: !2117)
!2129 = !DILocalVariable(name: "resize_indexes", scope: !2125, file: !3, line: 1736, type: !2130)
!2130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !812)
!2131 = !DILocalVariable(name: "q", scope: !2125, file: !3, line: 1739, type: !2132)
!2132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !163)
!2133 = !DILocalVariable(name: "x", scope: !2125, file: !3, line: 1742, type: !218)
!2134 = !DILocalVariable(name: "proceed", scope: !2135, file: !3, line: 1766, type: !152)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !3, line: 1764, column: 7)
!2136 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1763, column: 9)
!2137 = !DILocation(line: 0, scope: !2097)
!2138 = !DILocation(line: 1700, column: 14, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1700, column: 7)
!2140 = !DILocation(line: 1700, column: 20, scope: !2139)
!2141 = !DILocation(line: 1700, column: 7, scope: !2097)
!2142 = !DILocation(line: 1701, column: 68, scope: !2139)
!2143 = !DILocation(line: 1701, column: 12, scope: !2139)
!2144 = !DILocation(line: 1701, column: 5, scope: !2139)
!2145 = !DILocation(line: 1704, column: 16, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1704, column: 7)
!2147 = !DILocation(line: 1704, column: 22, scope: !2146)
!2148 = !DILocation(line: 1706, column: 26, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1706, column: 7)
!2150 = !{!945, !948, i64 40}
!2151 = !DILocation(line: 1706, column: 16, scope: !2149)
!2152 = !DILocation(line: 1706, column: 35, scope: !2149)
!2153 = !DILocation(line: 1706, column: 54, scope: !2149)
!2154 = !{!945, !948, i64 48}
!2155 = !DILocation(line: 1706, column: 44, scope: !2149)
!2156 = !DILocation(line: 1706, column: 7, scope: !2097)
!2157 = !DILocation(line: 1707, column: 12, scope: !2149)
!2158 = !DILocation(line: 1707, column: 5, scope: !2149)
!2159 = !DILocation(line: 1708, column: 16, scope: !2097)
!2160 = !DILocation(line: 1709, column: 20, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1709, column: 7)
!2162 = !DILocation(line: 1709, column: 7, scope: !2097)
!2163 = !DILocation(line: 1711, column: 7, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1711, column: 7)
!2165 = !DILocation(line: 1711, column: 54, scope: !2164)
!2166 = !DILocation(line: 1711, column: 7, scope: !2097)
!2167 = !DILocation(line: 1713, column: 49, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2164, file: !3, line: 1712, column: 5)
!2169 = !DILocation(line: 1713, column: 7, scope: !2168)
!2170 = !DILocation(line: 1714, column: 20, scope: !2168)
!2171 = !DILocation(line: 1715, column: 7, scope: !2168)
!2172 = !DILocation(line: 1719, column: 14, scope: !2097)
!2173 = !DILocation(line: 1720, column: 15, scope: !2097)
!2174 = !DILocation(line: 1721, column: 27, scope: !2097)
!2175 = !DILocation(line: 1721, column: 11, scope: !2097)
!2176 = !DILocation(line: 1721, column: 49, scope: !2097)
!2177 = !DILocation(line: 1721, column: 35, scope: !2097)
!2178 = !DILocation(line: 1721, column: 34, scope: !2097)
!2179 = !DILocation(line: 1722, column: 27, scope: !2097)
!2180 = !DILocation(line: 1722, column: 11, scope: !2097)
!2181 = !DILocation(line: 1722, column: 46, scope: !2097)
!2182 = !DILocation(line: 1722, column: 32, scope: !2097)
!2183 = !DILocation(line: 1722, column: 31, scope: !2097)
!2184 = !DILocation(line: 1727, column: 15, scope: !2126)
!2185 = !DILocation(line: 1727, column: 3, scope: !2127)
!2186 = !DILocation(line: 1729, column: 5, scope: !2125)
!2187 = !DILocation(line: 1730, column: 7, scope: !2125)
!2188 = !DILocation(line: 1744, column: 16, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1744, column: 9)
!2190 = !DILocation(line: 1744, column: 9, scope: !2125)
!2191 = !DILocation(line: 1746, column: 67, scope: !2125)
!2192 = !DILocation(line: 1746, column: 7, scope: !2125)
!2193 = !DILocation(line: 0, scope: !2125)
!2194 = !DILocation(line: 1748, column: 11, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1748, column: 9)
!2196 = !DILocation(line: 1748, column: 9, scope: !2125)
!2197 = !DILocation(line: 1750, column: 20, scope: !2125)
!2198 = !DILocation(line: 1751, column: 5, scope: !2125)
!2199 = !DILocation(line: 1752, column: 15, scope: !2125)
!2200 = !DILocation(line: 1752, column: 33, scope: !2125)
!2201 = !DILocation(line: 1752, column: 46, scope: !2125)
!2202 = !DILocation(line: 1753, column: 43, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 1753, column: 5)
!2204 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1753, column: 5)
!2205 = !DILocation(line: 1753, column: 17, scope: !2203)
!2206 = !DILocation(line: 1753, column: 5, scope: !2204)
!2207 = !DILocation(line: 1755, column: 17, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2203, file: !3, line: 1754, column: 5)
!2209 = !DILocation(line: 1755, column: 35, scope: !2208)
!2210 = !DILocation(line: 1755, column: 48, scope: !2208)
!2211 = !DILocation(line: 1756, column: 14, scope: !2208)
!2212 = !DILocation(line: 1758, column: 58, scope: !2208)
!2213 = !DILocalVariable(name: "image", arg: 1, scope: !2214, file: !1097, line: 117, type: !58)
!2214 = distinct !DISubprogram(name: "SetPixelPacket", scope: !1097, file: !1097, line: 117, type: !2215, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2219)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{null, !58, !2217, !163, !812}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!2219 = !{!2213, !2220, !2221, !2222}
!2220 = !DILocalVariable(name: "pixel", arg: 2, scope: !2214, file: !1097, line: 118, type: !2217)
!2221 = !DILocalVariable(name: "color", arg: 3, scope: !2214, file: !1097, line: 118, type: !163)
!2222 = !DILocalVariable(name: "index", arg: 4, scope: !2214, file: !1097, line: 118, type: !812)
!2223 = !DILocation(line: 0, scope: !2214, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 1758, column: 7, scope: !2208)
!2225 = !DILocation(line: 120, column: 3, scope: !2214, inlinedAt: !2224)
!2226 = !{!2227, !985, i64 32}
!2227 = !{!"_MagickPixelPacket", !946, i64 0, !946, i64 4, !946, i64 8, !952, i64 16, !948, i64 24, !985, i64 32, !985, i64 36, !985, i64 40, !985, i64 44, !985, i64 48}
!2228 = !DILocalVariable(name: "value", arg: 1, scope: !2229, file: !290, line: 87, type: !18)
!2229 = distinct !DISubprogram(name: "ClampToQuantum", scope: !290, file: !290, line: 87, type: !2230, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!169, !18}
!2232 = !{!2228}
!2233 = !DILocation(line: 0, scope: !2229, inlinedAt: !2234)
!2234 = distinct !DILocation(line: 120, column: 3, scope: !2214, inlinedAt: !2224)
!2235 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !2234)
!2236 = distinct !DILexicalBlock(scope: !2229, file: !290, line: 92, column: 7)
!2237 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !2234)
!2238 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !2234)
!2239 = distinct !DILexicalBlock(scope: !2229, file: !290, line: 94, column: 7)
!2240 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !2234)
!2241 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !2234)
!2242 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !2234)
!2243 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !2234)
!2244 = !{!950, !951, i64 4}
!2245 = !DILocation(line: 121, column: 3, scope: !2214, inlinedAt: !2224)
!2246 = !{!2227, !985, i64 36}
!2247 = !DILocation(line: 0, scope: !2229, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 121, column: 3, scope: !2214, inlinedAt: !2224)
!2249 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !2248)
!2250 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !2248)
!2251 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !2248)
!2252 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !2248)
!2253 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !2248)
!2254 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !2248)
!2255 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !2248)
!2256 = !{!950, !951, i64 2}
!2257 = !DILocation(line: 122, column: 3, scope: !2214, inlinedAt: !2224)
!2258 = !{!2227, !985, i64 40}
!2259 = !DILocation(line: 0, scope: !2229, inlinedAt: !2260)
!2260 = distinct !DILocation(line: 122, column: 3, scope: !2214, inlinedAt: !2224)
!2261 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !2260)
!2262 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !2260)
!2263 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !2260)
!2264 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !2260)
!2265 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !2260)
!2266 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !2260)
!2267 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !2260)
!2268 = !{!950, !951, i64 0}
!2269 = !DILocation(line: 123, column: 3, scope: !2214, inlinedAt: !2224)
!2270 = !{!2227, !985, i64 44}
!2271 = !DILocation(line: 0, scope: !2229, inlinedAt: !2272)
!2272 = distinct !DILocation(line: 123, column: 3, scope: !2214, inlinedAt: !2224)
!2273 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !2272)
!2274 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !2272)
!2275 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !2272)
!2276 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !2272)
!2277 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !2272)
!2278 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !2272)
!2279 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !2272)
!2280 = !{!950, !951, i64 6}
!2281 = !DILocation(line: 124, column: 15, scope: !2282, inlinedAt: !2224)
!2282 = distinct !DILexicalBlock(scope: !2214, file: !1097, line: 124, column: 7)
!2283 = !{!945, !946, i64 4}
!2284 = !DILocation(line: 124, column: 26, scope: !2282, inlinedAt: !2224)
!2285 = !DILocation(line: 124, column: 45, scope: !2282, inlinedAt: !2224)
!2286 = !DILocation(line: 125, column: 15, scope: !2282, inlinedAt: !2224)
!2287 = !{!945, !946, i64 0}
!2288 = !DILocation(line: 125, column: 29, scope: !2282, inlinedAt: !2224)
!2289 = !DILocation(line: 124, column: 7, scope: !2214, inlinedAt: !2224)
!2290 = !DILocation(line: 126, column: 5, scope: !2291, inlinedAt: !2224)
!2291 = distinct !DILexicalBlock(scope: !2282, file: !1097, line: 126, column: 5)
!2292 = !DILocation(line: 126, column: 5, scope: !2293, inlinedAt: !2224)
!2293 = distinct !DILexicalBlock(scope: !2291, file: !1097, line: 126, column: 5)
!2294 = !{!2227, !985, i64 48}
!2295 = !DILocation(line: 0, scope: !2229, inlinedAt: !2296)
!2296 = distinct !DILocation(line: 126, column: 5, scope: !2293, inlinedAt: !2224)
!2297 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !2296)
!2298 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !2296)
!2299 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !2296)
!2300 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !2296)
!2301 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !2296)
!2302 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !2296)
!2303 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !2296)
!2304 = !{!951, !951, i64 0}
!2305 = !DILocation(line: 1759, column: 8, scope: !2208)
!2306 = !DILocation(line: 1753, column: 53, scope: !2203)
!2307 = distinct !{!2307, !2206, !2308, !1202, !1203}
!2308 = !DILocation(line: 1760, column: 5, scope: !2204)
!2309 = !DILocation(line: 1761, column: 9, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1761, column: 9)
!2311 = !DILocation(line: 1761, column: 61, scope: !2310)
!2312 = !DILocation(line: 1761, column: 9, scope: !2125)
!2313 = !DILocation(line: 1763, column: 16, scope: !2136)
!2314 = !{!945, !949, i64 568}
!2315 = !DILocation(line: 1763, column: 33, scope: !2136)
!2316 = !DILocation(line: 1763, column: 9, scope: !2125)
!2317 = !DILocation(line: 1771, column: 76, scope: !2135)
!2318 = !DILocation(line: 1772, column: 18, scope: !2135)
!2319 = !DILocalVariable(name: "image", arg: 1, scope: !2320, file: !2321, line: 27, type: !58)
!2320 = distinct !DISubprogram(name: "SetImageProgress", scope: !2321, file: !2321, line: 27, type: !2322, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2324)
!2321 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a84e9021f92665a913f9cbc20a804774")
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!152, !58, !438, !440, !443}
!2324 = !{!2319, !2325, !2326, !2327, !2328}
!2325 = !DILocalVariable(name: "tag", arg: 2, scope: !2320, file: !2321, line: 28, type: !438)
!2326 = !DILocalVariable(name: "offset", arg: 3, scope: !2320, file: !2321, line: 28, type: !440)
!2327 = !DILocalVariable(name: "extent", arg: 4, scope: !2320, file: !2321, line: 28, type: !443)
!2328 = !DILocalVariable(name: "message", scope: !2320, file: !2321, line: 31, type: !458)
!2329 = !DILocation(line: 0, scope: !2320, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 1771, column: 17, scope: !2135)
!2331 = !DILocation(line: 30, column: 3, scope: !2320, inlinedAt: !2330)
!2332 = !DILocation(line: 31, column: 5, scope: !2320, inlinedAt: !2330)
!2333 = !DILocation(line: 35, column: 10, scope: !2320, inlinedAt: !2330)
!2334 = !DILocation(line: 36, column: 17, scope: !2320, inlinedAt: !2330)
!2335 = !DILocation(line: 36, column: 63, scope: !2320, inlinedAt: !2330)
!2336 = !{!945, !949, i64 576}
!2337 = !DILocation(line: 36, column: 10, scope: !2320, inlinedAt: !2330)
!2338 = !DILocation(line: 37, column: 1, scope: !2320, inlinedAt: !2330)
!2339 = !DILocation(line: 0, scope: !2135)
!2340 = !DILocation(line: 1773, column: 21, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2135, file: !3, line: 1773, column: 13)
!2342 = !DILocation(line: 1773, column: 13, scope: !2135)
!2343 = !DILocation(line: 1775, column: 7, scope: !2135)
!2344 = !DILocation(line: 1776, column: 3, scope: !2126)
!2345 = !DILocation(line: 1727, column: 48, scope: !2126)
!2346 = !DILocation(line: 1727, column: 41, scope: !2126)
!2347 = distinct !{!2347, !2185, !2348, !1202, !1203}
!2348 = !DILocation(line: 1776, column: 3, scope: !2127)
!2349 = !DILocation(line: 1717, column: 9, scope: !2097)
!2350 = !DILocation(line: 1777, column: 15, scope: !2097)
!2351 = !DILocation(line: 1778, column: 14, scope: !2097)
!2352 = !DILocation(line: 1779, column: 14, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2097, file: !3, line: 1779, column: 7)
!2354 = !DILocation(line: 1779, column: 7, scope: !2097)
!2355 = !DILocation(line: 1780, column: 18, scope: !2353)
!2356 = !DILocation(line: 1780, column: 5, scope: !2353)
!2357 = !DILocation(line: 1782, column: 1, scope: !2097)
!2358 = distinct !DISubprogram(name: "DestroyResizeFilter", scope: !3, file: !3, line: 1495, type: !2359, scopeLine: 1496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!6, !6}
!2361 = !{!2362}
!2362 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !2358, file: !3, line: 1495, type: !6)
!2363 = !DILocation(line: 0, scope: !2358)
!2364 = !DILocation(line: 1499, column: 18, scope: !2358)
!2365 = !DILocation(line: 1499, column: 27, scope: !2358)
!2366 = !DILocation(line: 1500, column: 34, scope: !2358)
!2367 = !DILocation(line: 1501, column: 3, scope: !2358)
!2368 = !DISubprogram(name: "RelinquishMagickMemory", scope: !1954, file: !1954, line: 51, type: !2369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!204, !204}
!2371 = distinct !DISubprogram(name: "GetResizeFilterCoefficient", scope: !3, file: !3, line: 1528, type: !2372, scopeLine: 1530, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!805, !19}
!2374 = !{!2375}
!2375 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !2371, file: !3, line: 1529, type: !19)
!2376 = !DILocation(line: 0, scope: !2371)
!2377 = !DILocation(line: 1533, column: 44, scope: !2371)
!2378 = !DILocation(line: 1533, column: 3, scope: !2371)
!2379 = distinct !DISubprogram(name: "GetResizeFilterBlur", scope: !3, file: !3, line: 1536, type: !1423, scopeLine: 1538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2380)
!2380 = !{!2381}
!2381 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !2379, file: !3, line: 1537, type: !19)
!2382 = !DILocation(line: 0, scope: !2379)
!2383 = !DILocation(line: 1541, column: 25, scope: !2379)
!2384 = !DILocation(line: 1541, column: 3, scope: !2379)
!2385 = distinct !DISubprogram(name: "GetResizeFilterScale", scope: !3, file: !3, line: 1544, type: !1423, scopeLine: 1546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2386)
!2386 = !{!2387}
!2387 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !2385, file: !3, line: 1545, type: !19)
!2388 = !DILocation(line: 0, scope: !2385)
!2389 = !DILocation(line: 1549, column: 25, scope: !2385)
!2390 = !DILocation(line: 1549, column: 3, scope: !2385)
!2391 = distinct !DISubprogram(name: "GetResizeFilterWindowSupport", scope: !3, file: !3, line: 1552, type: !1423, scopeLine: 1554, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2392)
!2392 = !{!2393}
!2393 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !2391, file: !3, line: 1553, type: !19)
!2394 = !DILocation(line: 0, scope: !2391)
!2395 = !DILocation(line: 1557, column: 25, scope: !2391)
!2396 = !DILocation(line: 1557, column: 3, scope: !2391)
!2397 = distinct !DISubprogram(name: "GetResizeFilterWeightingType", scope: !3, file: !3, line: 1560, type: !2398, scopeLine: 1562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!31, !19}
!2400 = !{!2401}
!2401 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !2397, file: !3, line: 1561, type: !19)
!2402 = !DILocation(line: 0, scope: !2397)
!2403 = !DILocation(line: 1565, column: 25, scope: !2397)
!2404 = !DILocation(line: 1565, column: 3, scope: !2397)
!2405 = distinct !DISubprogram(name: "GetResizeFilterWindowWeightingType", scope: !3, file: !3, line: 1568, type: !2398, scopeLine: 1570, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2406)
!2406 = !{!2407}
!2407 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !2405, file: !3, line: 1569, type: !19)
!2408 = !DILocation(line: 0, scope: !2405)
!2409 = !DILocation(line: 1573, column: 25, scope: !2405)
!2410 = !DILocation(line: 1573, column: 3, scope: !2405)
!2411 = !DISubprogram(name: "CloneImage", scope: !62, file: !62, line: 508, type: !2412, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!804, !58, !1951, !1951, !642, !643}
!2414 = !DISubprogram(name: "SetImageStorageClass", scope: !62, file: !62, line: 542, type: !2415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!152, !804, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!2418 = !DISubprogram(name: "InheritException", scope: !468, file: !468, line: 167, type: !2419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !643, !2421}
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!2423 = !DISubprogram(name: "DestroyImage", scope: !62, file: !62, line: 510, type: !2424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!804, !804}
!2426 = !DISubprogram(name: "AcquireVirtualCacheView", scope: !2110, file: !2110, line: 55, type: !2427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!2108, !58, !643}
!2429 = !DISubprogram(name: "AcquireAuthenticCacheView", scope: !2110, file: !2110, line: 53, type: !2427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2430 = !DISubprogram(name: "QueueCacheViewAuthenticPixels", scope: !2110, file: !2110, line: 101, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!163, !2108, !2061, !2061, !1951, !1951, !643}
!2433 = !DISubprogram(name: "GetCacheViewAuthenticIndexQueue", scope: !2110, file: !2110, line: 77, type: !2434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!812, !2108}
!2436 = !DISubprogram(name: "GetMagickPixelPacket", scope: !165, file: !165, line: 185, type: !2437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{null, !58, !813}
!2439 = !DISubprogram(name: "InterpolateMagickPixelPacket", scope: !165, file: !165, line: 171, type: !2440, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!152, !58, !2442, !2100, !865, !865, !813, !643}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2444)
!2444 = !DIDerivedType(tag: DW_TAG_typedef, name: "CacheView_", file: !165, line: 161, baseType: !2111)
!2445 = !DISubprogram(name: "SyncCacheViewAuthenticPixels", scope: !2110, file: !2110, line: 89, type: !2446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!152, !2108, !643}
!2448 = !DISubprogram(name: "DestroyCacheView", scope: !2110, file: !2110, line: 57, type: !2449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!2108, !2108}
!2451 = distinct !DISubprogram(name: "LiquidRescaleImage", scope: !3, file: !3, line: 1984, type: !2452, scopeLine: 1988, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2454)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!804, !58, !1951, !1951, !865, !865, !643}
!2454 = !{!2455, !2456, !2457, !2458, !2459, !2460}
!2455 = !DILocalVariable(name: "image", arg: 1, scope: !2451, file: !3, line: 1984, type: !58)
!2456 = !DILocalVariable(name: "columns", arg: 2, scope: !2451, file: !3, line: 1985, type: !1951)
!2457 = !DILocalVariable(name: "rows", arg: 3, scope: !2451, file: !3, line: 1985, type: !1951)
!2458 = !DILocalVariable(name: "delta_x", arg: 4, scope: !2451, file: !3, line: 1986, type: !865)
!2459 = !DILocalVariable(name: "rigidity", arg: 5, scope: !2451, file: !3, line: 1986, type: !865)
!2460 = !DILocalVariable(name: "exception", arg: 6, scope: !2451, file: !3, line: 1987, type: !643)
!2461 = !DILocation(line: 0, scope: !2451)
!2462 = !DILocation(line: 1991, column: 14, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1991, column: 7)
!2464 = !DILocation(line: 1991, column: 20, scope: !2463)
!2465 = !DILocation(line: 1991, column: 7, scope: !2451)
!2466 = !DILocation(line: 1992, column: 68, scope: !2463)
!2467 = !DILocation(line: 1992, column: 12, scope: !2463)
!2468 = !DILocation(line: 1992, column: 5, scope: !2463)
!2469 = !DILocation(line: 1996, column: 60, scope: !2451)
!2470 = !DILocation(line: 1995, column: 10, scope: !2451)
!2471 = !DILocation(line: 1997, column: 3, scope: !2451)
!2472 = distinct !DISubprogram(name: "MagnifyImage", scope: !3, file: !3, line: 2026, type: !2473, scopeLine: 2027, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!804, !58, !643}
!2475 = !{!2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2488, !2489, !2490, !2495, !2497, !2499, !2500, !2501, !2504}
!2476 = !DILocalVariable(name: "image", arg: 1, scope: !2472, file: !3, line: 2026, type: !58)
!2477 = !DILocalVariable(name: "exception", arg: 2, scope: !2472, file: !3, line: 2026, type: !643)
!2478 = !DILocalVariable(name: "image_view", scope: !2472, file: !3, line: 2031, type: !2108)
!2479 = !DILocalVariable(name: "magnify_view", scope: !2472, file: !3, line: 2032, type: !2108)
!2480 = !DILocalVariable(name: "magnify_image", scope: !2472, file: !3, line: 2035, type: !804)
!2481 = !DILocalVariable(name: "status", scope: !2472, file: !3, line: 2038, type: !152)
!2482 = !DILocalVariable(name: "progress", scope: !2472, file: !3, line: 2041, type: !441)
!2483 = !DILocalVariable(name: "y", scope: !2472, file: !3, line: 2044, type: !218)
!2484 = !DILocalVariable(name: "magnify_indexes", scope: !2485, file: !3, line: 2073, type: !2130)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 2071, column: 3)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !3, line: 2070, column: 3)
!2487 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 2070, column: 3)
!2488 = !DILocalVariable(name: "q", scope: !2485, file: !3, line: 2076, type: !2132)
!2489 = !DILocalVariable(name: "x", scope: !2485, file: !3, line: 2079, type: !218)
!2490 = !DILocalVariable(name: "intensity", scope: !2491, file: !3, line: 2094, type: !2494)
!2491 = distinct !DILexicalBlock(scope: !2492, file: !3, line: 2092, column: 5)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !3, line: 2091, column: 5)
!2493 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 2091, column: 5)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 288, elements: !866)
!2495 = !DILocalVariable(name: "indexes", scope: !2491, file: !3, line: 2097, type: !2496)
!2496 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !808)
!2497 = !DILocalVariable(name: "p", scope: !2491, file: !3, line: 2100, type: !2498)
!2498 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !806)
!2499 = !DILocalVariable(name: "r", scope: !2491, file: !3, line: 2103, type: !2132)
!2500 = !DILocalVariable(name: "i", scope: !2491, file: !3, line: 2106, type: !218)
!2501 = !DILocalVariable(name: "r", scope: !2502, file: !3, line: 2163, type: !812)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !3, line: 2161, column: 9)
!2503 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 2160, column: 11)
!2504 = !DILocalVariable(name: "proceed", scope: !2505, file: !3, line: 2217, type: !152)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 2215, column: 7)
!2506 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 2214, column: 9)
!2507 = !DILocation(line: 0, scope: !2472)
!2508 = !DILocation(line: 2051, column: 14, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 2051, column: 7)
!2510 = !DILocation(line: 2051, column: 20, scope: !2509)
!2511 = !DILocation(line: 2051, column: 7, scope: !2472)
!2512 = !DILocation(line: 2052, column: 68, scope: !2509)
!2513 = !DILocation(line: 2052, column: 12, scope: !2509)
!2514 = !DILocation(line: 2052, column: 5, scope: !2509)
!2515 = !DILocation(line: 2055, column: 43, scope: !2472)
!2516 = !DILocation(line: 2055, column: 35, scope: !2472)
!2517 = !DILocation(line: 2055, column: 60, scope: !2472)
!2518 = !DILocation(line: 2055, column: 52, scope: !2472)
!2519 = !DILocation(line: 2055, column: 17, scope: !2472)
!2520 = !DILocation(line: 2057, column: 21, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 2057, column: 7)
!2522 = !DILocation(line: 2057, column: 7, scope: !2472)
!2523 = !DILocation(line: 2064, column: 14, scope: !2472)
!2524 = !DILocation(line: 2065, column: 16, scope: !2472)
!2525 = !DILocation(line: 2070, column: 34, scope: !2486)
!2526 = !DILocation(line: 2070, column: 15, scope: !2486)
!2527 = !DILocation(line: 2070, column: 3, scope: !2487)
!2528 = !DILocation(line: 2081, column: 16, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 2081, column: 9)
!2530 = !DILocation(line: 2081, column: 9, scope: !2485)
!2531 = !DILocation(line: 2083, column: 53, scope: !2485)
!2532 = !DILocation(line: 2083, column: 71, scope: !2485)
!2533 = !DILocation(line: 2083, column: 7, scope: !2485)
!2534 = !DILocation(line: 0, scope: !2485)
!2535 = !DILocation(line: 2085, column: 11, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 2085, column: 9)
!2537 = !DILocation(line: 2085, column: 9, scope: !2485)
!2538 = !DILocation(line: 2090, column: 21, scope: !2485)
!2539 = !DILocation(line: 2091, column: 36, scope: !2492)
!2540 = !DILocation(line: 2091, column: 17, scope: !2492)
!2541 = !DILocation(line: 2091, column: 5, scope: !2493)
!2542 = !DILocation(line: 2093, column: 7, scope: !2491)
!2543 = !DILocation(line: 2094, column: 9, scope: !2491)
!2544 = !DILocation(line: 2111, column: 47, scope: !2491)
!2545 = !DILocation(line: 2111, column: 9, scope: !2491)
!2546 = !DILocation(line: 0, scope: !2491)
!2547 = !DILocation(line: 2112, column: 13, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 2112, column: 11)
!2549 = !DILocation(line: 2112, column: 11, scope: !2491)
!2550 = !DILocation(line: 2117, column: 15, scope: !2491)
!2551 = !DILocation(line: 2118, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 2118, column: 7)
!2553 = !DILocation(line: 2119, column: 47, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 2118, column: 7)
!2555 = !DILocation(line: 2119, column: 22, scope: !2554)
!2556 = !DILocation(line: 2119, column: 9, scope: !2554)
!2557 = !DILocation(line: 2119, column: 21, scope: !2554)
!2558 = !DILocation(line: 2118, column: 25, scope: !2554)
!2559 = !DILocation(line: 2118, column: 19, scope: !2554)
!2560 = distinct !{!2560, !2551, !2561, !1202, !1203}
!2561 = !DILocation(line: 2119, column: 49, scope: !2552)
!2562 = !DILocation(line: 2121, column: 17, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2491, file: !3, line: 2121, column: 11)
!2564 = !DILocation(line: 2121, column: 30, scope: !2563)
!2565 = !DILocation(line: 2121, column: 29, scope: !2563)
!2566 = !DILocation(line: 2121, column: 12, scope: !2563)
!2567 = !DILocation(line: 2121, column: 44, scope: !2563)
!2568 = !DILocation(line: 2121, column: 61, scope: !2563)
!2569 = !DILocation(line: 2122, column: 17, scope: !2563)
!2570 = !DILocation(line: 2122, column: 30, scope: !2563)
!2571 = !DILocation(line: 2122, column: 29, scope: !2563)
!2572 = !DILocation(line: 2122, column: 12, scope: !2563)
!2573 = !DILocation(line: 2122, column: 44, scope: !2563)
!2574 = !DILocation(line: 2121, column: 11, scope: !2491)
!2575 = !DILocation(line: 2127, column: 14, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 2123, column: 9)
!2577 = !DILocation(line: 2128, column: 12, scope: !2576)
!2578 = !DILocation(line: 2129, column: 14, scope: !2576)
!2579 = !DILocation(line: 2130, column: 30, scope: !2576)
!2580 = !DILocation(line: 2130, column: 12, scope: !2576)
!2581 = !DILocation(line: 2131, column: 14, scope: !2576)
!2582 = !DILocation(line: 2134, column: 9, scope: !2576)
!2583 = !DILocation(line: 2140, column: 32, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 2140, column: 15)
!2585 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 2136, column: 9)
!2586 = !DILocation(line: 2140, column: 15, scope: !2584)
!2587 = !DILocation(line: 2140, column: 47, scope: !2584)
!2588 = !DILocation(line: 0, scope: !2584)
!2589 = !DILocation(line: 2144, column: 12, scope: !2585)
!2590 = !DILocation(line: 2145, column: 20, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 2145, column: 15)
!2592 = !DILocation(line: 2145, column: 33, scope: !2591)
!2593 = !DILocation(line: 2145, column: 32, scope: !2591)
!2594 = !DILocation(line: 2145, column: 15, scope: !2591)
!2595 = !DILocation(line: 2145, column: 47, scope: !2591)
!2596 = !DILocation(line: 2145, column: 15, scope: !2585)
!2597 = !DILocation(line: 0, scope: !2591)
!2598 = !DILocation(line: 2149, column: 30, scope: !2585)
!2599 = !DILocation(line: 2149, column: 12, scope: !2585)
!2600 = !DILocation(line: 2150, column: 20, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 2150, column: 15)
!2602 = !DILocation(line: 2150, column: 33, scope: !2601)
!2603 = !DILocation(line: 2150, column: 32, scope: !2601)
!2604 = !DILocation(line: 2150, column: 15, scope: !2601)
!2605 = !DILocation(line: 2150, column: 47, scope: !2601)
!2606 = !DILocation(line: 0, scope: !2601)
!2607 = !DILocation(line: 2155, column: 20, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 2155, column: 15)
!2609 = !DILocation(line: 2155, column: 33, scope: !2608)
!2610 = !DILocation(line: 2155, column: 32, scope: !2608)
!2611 = !DILocation(line: 2155, column: 15, scope: !2608)
!2612 = !DILocation(line: 2155, column: 47, scope: !2608)
!2613 = !DILocation(line: 2155, column: 15, scope: !2585)
!2614 = !DILocation(line: 2156, column: 16, scope: !2608)
!2615 = !DILocation(line: 2156, column: 13, scope: !2608)
!2616 = !DILocation(line: 2158, column: 16, scope: !2608)
!2617 = !DILocation(line: 0, scope: !2563)
!2618 = !DILocation(line: 2160, column: 19, scope: !2503)
!2619 = !DILocation(line: 2160, column: 11, scope: !2491)
!2620 = !DILocation(line: 0, scope: !2502)
!2621 = !DILocation(line: 2169, column: 21, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2502, file: !3, line: 2169, column: 15)
!2623 = !DILocation(line: 2169, column: 34, scope: !2622)
!2624 = !DILocation(line: 2169, column: 33, scope: !2622)
!2625 = !DILocation(line: 2169, column: 16, scope: !2622)
!2626 = !DILocation(line: 2169, column: 48, scope: !2622)
!2627 = !DILocation(line: 2169, column: 65, scope: !2622)
!2628 = !DILocation(line: 2170, column: 21, scope: !2622)
!2629 = !DILocation(line: 2170, column: 34, scope: !2622)
!2630 = !DILocation(line: 2170, column: 33, scope: !2622)
!2631 = !DILocation(line: 2170, column: 16, scope: !2622)
!2632 = !DILocation(line: 2170, column: 48, scope: !2622)
!2633 = !DILocation(line: 2169, column: 15, scope: !2502)
!2634 = !DILocation(line: 2175, column: 18, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 2171, column: 13)
!2636 = !DILocation(line: 2175, column: 17, scope: !2635)
!2637 = !DILocation(line: 2176, column: 16, scope: !2635)
!2638 = !DILocation(line: 2177, column: 18, scope: !2635)
!2639 = !DILocation(line: 2177, column: 17, scope: !2635)
!2640 = !DILocation(line: 2178, column: 34, scope: !2635)
!2641 = !DILocation(line: 2178, column: 16, scope: !2635)
!2642 = !DILocation(line: 2179, column: 18, scope: !2635)
!2643 = !DILocation(line: 2179, column: 17, scope: !2635)
!2644 = !DILocation(line: 2182, column: 13, scope: !2635)
!2645 = !DILocation(line: 2188, column: 36, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 2188, column: 19)
!2647 = distinct !DILexicalBlock(scope: !2622, file: !3, line: 2184, column: 13)
!2648 = !DILocation(line: 2188, column: 19, scope: !2646)
!2649 = !DILocation(line: 2188, column: 51, scope: !2646)
!2650 = !DILocation(line: 0, scope: !2646)
!2651 = !DILocation(line: 2192, column: 16, scope: !2647)
!2652 = !DILocation(line: 2193, column: 36, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 2193, column: 19)
!2654 = !DILocation(line: 2193, column: 19, scope: !2653)
!2655 = !DILocation(line: 2193, column: 51, scope: !2653)
!2656 = !DILocation(line: 2193, column: 19, scope: !2647)
!2657 = !DILocation(line: 0, scope: !2653)
!2658 = !DILocation(line: 2197, column: 34, scope: !2647)
!2659 = !DILocation(line: 2197, column: 16, scope: !2647)
!2660 = !DILocation(line: 2198, column: 36, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 2198, column: 19)
!2662 = !DILocation(line: 2198, column: 19, scope: !2661)
!2663 = !DILocation(line: 2198, column: 51, scope: !2661)
!2664 = !DILocation(line: 0, scope: !2661)
!2665 = !DILocation(line: 2203, column: 36, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2647, file: !3, line: 2203, column: 19)
!2667 = !DILocation(line: 2203, column: 19, scope: !2666)
!2668 = !DILocation(line: 2203, column: 51, scope: !2666)
!2669 = !DILocation(line: 2203, column: 19, scope: !2647)
!2670 = !DILocation(line: 2204, column: 20, scope: !2666)
!2671 = !DILocation(line: 2204, column: 17, scope: !2666)
!2672 = !DILocation(line: 2206, column: 20, scope: !2666)
!2673 = !DILocation(line: 0, scope: !2622)
!2674 = !DILocation(line: 2208, column: 26, scope: !2502)
!2675 = !DILocation(line: 2209, column: 9, scope: !2502)
!2676 = !DILocation(line: 2210, column: 8, scope: !2491)
!2677 = !DILocation(line: 2211, column: 5, scope: !2492)
!2678 = !DILocation(line: 2091, column: 46, scope: !2492)
!2679 = distinct !{!2679, !2541, !2680, !1202, !1203}
!2680 = !DILocation(line: 2211, column: 5, scope: !2493)
!2681 = !DILocation(line: 2212, column: 9, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 2212, column: 9)
!2683 = !DILocation(line: 2212, column: 62, scope: !2682)
!2684 = !DILocation(line: 2212, column: 9, scope: !2485)
!2685 = !DILocation(line: 2214, column: 16, scope: !2506)
!2686 = !DILocation(line: 2214, column: 33, scope: !2506)
!2687 = !DILocation(line: 2214, column: 9, scope: !2485)
!2688 = !DILocation(line: 2222, column: 64, scope: !2505)
!2689 = !DILocation(line: 2222, column: 74, scope: !2505)
!2690 = !DILocation(line: 0, scope: !2320, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 2222, column: 17, scope: !2505)
!2692 = !DILocation(line: 30, column: 3, scope: !2320, inlinedAt: !2691)
!2693 = !DILocation(line: 31, column: 5, scope: !2320, inlinedAt: !2691)
!2694 = !DILocation(line: 35, column: 10, scope: !2320, inlinedAt: !2691)
!2695 = !DILocation(line: 36, column: 17, scope: !2320, inlinedAt: !2691)
!2696 = !DILocation(line: 36, column: 63, scope: !2320, inlinedAt: !2691)
!2697 = !DILocation(line: 36, column: 10, scope: !2320, inlinedAt: !2691)
!2698 = !DILocation(line: 37, column: 1, scope: !2320, inlinedAt: !2691)
!2699 = !DILocation(line: 0, scope: !2505)
!2700 = !DILocation(line: 2223, column: 21, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 2223, column: 13)
!2702 = !DILocation(line: 2223, column: 13, scope: !2505)
!2703 = !DILocation(line: 2225, column: 7, scope: !2505)
!2704 = !DILocation(line: 2070, column: 41, scope: !2486)
!2705 = distinct !{!2705, !2527, !2706, !1202, !1203}
!2706 = !DILocation(line: 2226, column: 3, scope: !2487)
!2707 = !DILocation(line: 2062, column: 9, scope: !2472)
!2708 = !DILocation(line: 2227, column: 16, scope: !2472)
!2709 = !DILocation(line: 2228, column: 14, scope: !2472)
!2710 = !DILocation(line: 2229, column: 14, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 2229, column: 7)
!2712 = !DILocation(line: 2229, column: 7, scope: !2472)
!2713 = !DILocation(line: 2230, column: 19, scope: !2711)
!2714 = !DILocation(line: 2230, column: 5, scope: !2711)
!2715 = !DILocation(line: 2232, column: 1, scope: !2472)
!2716 = !DISubprogram(name: "GetCacheViewVirtualPixels", scope: !2110, file: !2110, line: 69, type: !2717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!806, !2719, !2061, !2061, !1951, !1951, !643}
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2721 = !DISubprogram(name: "GetCacheViewVirtualIndexQueue", scope: !2110, file: !2110, line: 66, type: !2722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!808, !2719}
!2724 = !DISubprogram(name: "GetPixelIntensity", scope: !165, file: !165, line: 181, type: !2725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!15, !58, !2498}
!2727 = distinct !DISubprogram(name: "MinifyImage", scope: !3, file: !3, line: 2259, type: !2473, scopeLine: 2260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2728)
!2728 = !{!2729, !2730, !2731}
!2729 = !DILocalVariable(name: "image", arg: 1, scope: !2727, file: !3, line: 2259, type: !58)
!2730 = !DILocalVariable(name: "exception", arg: 2, scope: !2727, file: !3, line: 2259, type: !643)
!2731 = !DILocalVariable(name: "minify_image", scope: !2727, file: !3, line: 2262, type: !804)
!2732 = !DILocation(line: 0, scope: !2727)
!2733 = !DILocation(line: 2266, column: 14, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2727, file: !3, line: 2266, column: 7)
!2735 = !DILocation(line: 2266, column: 20, scope: !2734)
!2736 = !DILocation(line: 2266, column: 7, scope: !2727)
!2737 = !DILocation(line: 2267, column: 68, scope: !2734)
!2738 = !DILocation(line: 2267, column: 12, scope: !2734)
!2739 = !DILocation(line: 2267, column: 5, scope: !2734)
!2740 = !DILocation(line: 2270, column: 41, scope: !2727)
!2741 = !DILocation(line: 2270, column: 48, scope: !2727)
!2742 = !DILocation(line: 2270, column: 58, scope: !2727)
!2743 = !DILocation(line: 2270, column: 62, scope: !2727)
!2744 = !DILocation(line: 2270, column: 16, scope: !2727)
!2745 = !DILocation(line: 2272, column: 3, scope: !2727)
!2746 = distinct !DISubprogram(name: "ResizeImage", scope: !3, file: !3, line: 2947, type: !2747, scopeLine: 2950, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2749)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{!804, !58, !1951, !1951, !641, !865, !643}
!2749 = !{!2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2765}
!2750 = !DILocalVariable(name: "image", arg: 1, scope: !2746, file: !3, line: 2947, type: !58)
!2751 = !DILocalVariable(name: "columns", arg: 2, scope: !2746, file: !3, line: 2947, type: !1951)
!2752 = !DILocalVariable(name: "rows", arg: 3, scope: !2746, file: !3, line: 2948, type: !1951)
!2753 = !DILocalVariable(name: "filter", arg: 4, scope: !2746, file: !3, line: 2948, type: !641)
!2754 = !DILocalVariable(name: "blur", arg: 5, scope: !2746, file: !3, line: 2948, type: !865)
!2755 = !DILocalVariable(name: "exception", arg: 6, scope: !2746, file: !3, line: 2949, type: !643)
!2756 = !DILocalVariable(name: "filter_type", scope: !2746, file: !3, line: 2952, type: !240)
!2757 = !DILocalVariable(name: "filter_image", scope: !2746, file: !3, line: 2955, type: !804)
!2758 = !DILocalVariable(name: "resize_image", scope: !2746, file: !3, line: 2956, type: !804)
!2759 = !DILocalVariable(name: "offset", scope: !2746, file: !3, line: 2959, type: !441)
!2760 = !DILocalVariable(name: "x_factor", scope: !2746, file: !3, line: 2962, type: !15)
!2761 = !DILocalVariable(name: "y_factor", scope: !2746, file: !3, line: 2963, type: !15)
!2762 = !DILocalVariable(name: "span", scope: !2746, file: !3, line: 2966, type: !444)
!2763 = !DILocalVariable(name: "status", scope: !2746, file: !3, line: 2969, type: !2764)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !16, line: 147, baseType: !34)
!2765 = !DILocalVariable(name: "resize_filter", scope: !2746, file: !3, line: 2972, type: !6)
!2766 = !DILocation(line: 0, scope: !2746)
!2767 = !DILocation(line: 2958, column: 3, scope: !2746)
!2768 = !DILocation(line: 2979, column: 14, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 2979, column: 7)
!2770 = !DILocation(line: 2979, column: 20, scope: !2769)
!2771 = !DILocation(line: 2979, column: 7, scope: !2746)
!2772 = !DILocation(line: 2980, column: 68, scope: !2769)
!2773 = !DILocation(line: 2980, column: 12, scope: !2769)
!2774 = !DILocation(line: 2980, column: 5, scope: !2769)
!2775 = !DILocation(line: 2983, column: 16, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 2983, column: 7)
!2777 = !DILocation(line: 2983, column: 22, scope: !2776)
!2778 = !DILocation(line: 2984, column: 5, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 2984, column: 5)
!2780 = !DILocation(line: 2985, column: 26, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 2985, column: 7)
!2782 = !DILocation(line: 2985, column: 16, scope: !2781)
!2783 = !DILocation(line: 2985, column: 35, scope: !2781)
!2784 = !DILocation(line: 2985, column: 44, scope: !2781)
!2785 = !DILocation(line: 2985, column: 60, scope: !2781)
!2786 = !DILocation(line: 2987, column: 12, scope: !2781)
!2787 = !DILocation(line: 2987, column: 5, scope: !2781)
!2788 = !DILocation(line: 2992, column: 12, scope: !2746)
!2789 = !DILocation(line: 2992, column: 37, scope: !2746)
!2790 = !DILocation(line: 2992, column: 36, scope: !2746)
!2791 = !DILocation(line: 2993, column: 12, scope: !2746)
!2792 = !DILocation(line: 2993, column: 58, scope: !2746)
!2793 = !DILocation(line: 2993, column: 34, scope: !2746)
!2794 = !DILocation(line: 2993, column: 33, scope: !2746)
!2795 = !DILocation(line: 2996, column: 14, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 2996, column: 7)
!2797 = !DILocation(line: 2996, column: 7, scope: !2746)
!2798 = !DILocation(line: 2999, column: 19, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2796, file: !3, line: 2999, column: 9)
!2800 = !DILocation(line: 2999, column: 27, scope: !2799)
!2801 = !DILocation(line: 3002, column: 19, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2799, file: !3, line: 3002, column: 11)
!2803 = !DILocation(line: 3002, column: 33, scope: !2802)
!2804 = !DILocation(line: 3002, column: 49, scope: !2802)
!2805 = !DILocation(line: 3003, column: 19, scope: !2802)
!2806 = !{!945, !946, i64 32}
!2807 = !DILocation(line: 3003, column: 25, scope: !2802)
!2808 = !DILocation(line: 3003, column: 41, scope: !2802)
!2809 = !DILocation(line: 3004, column: 9, scope: !2802)
!2810 = !DILocation(line: 3005, column: 55, scope: !2746)
!2811 = !DILocation(line: 3005, column: 17, scope: !2746)
!2812 = !DILocation(line: 3007, column: 18, scope: !2746)
!2813 = !DILocation(line: 3008, column: 20, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 3008, column: 7)
!2815 = !DILocation(line: 3008, column: 7, scope: !2746)
!2816 = !DILocation(line: 0, scope: !2358, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 3010, column: 19, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !3, line: 3009, column: 3)
!2819 = !DILocation(line: 1499, column: 18, scope: !2358, inlinedAt: !2817)
!2820 = !DILocation(line: 1499, column: 27, scope: !2358, inlinedAt: !2817)
!2821 = !DILocation(line: 1500, column: 34, scope: !2358, inlinedAt: !2817)
!2822 = !DILocation(line: 3011, column: 5, scope: !2818)
!2823 = !DILocation(line: 3014, column: 16, scope: !2746)
!2824 = !DILocation(line: 3015, column: 20, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 3015, column: 7)
!2826 = !DILocation(line: 3015, column: 7, scope: !2746)
!2827 = !DILocation(line: 0, scope: !2358, inlinedAt: !2828)
!2828 = distinct !DILocation(line: 3017, column: 19, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 3016, column: 3)
!2830 = !DILocation(line: 1499, column: 18, scope: !2358, inlinedAt: !2828)
!2831 = !DILocation(line: 1499, column: 27, scope: !2358, inlinedAt: !2828)
!2832 = !DILocation(line: 1500, column: 34, scope: !2358, inlinedAt: !2828)
!2833 = !DILocation(line: 3018, column: 5, scope: !2829)
!2834 = !DILocation(line: 3021, column: 16, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 3021, column: 7)
!2836 = !DILocation(line: 3021, column: 7, scope: !2746)
!2837 = !DILocation(line: 3022, column: 50, scope: !2835)
!2838 = !DILocation(line: 3022, column: 18, scope: !2835)
!2839 = !DILocation(line: 3025, column: 20, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 3025, column: 7)
!2841 = !DILocation(line: 3025, column: 7, scope: !2746)
!2842 = !DILocation(line: 3024, column: 42, scope: !2835)
!2843 = !DILocation(line: 3024, column: 18, scope: !2835)
!2844 = !DILocation(line: 0, scope: !2358, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 3027, column: 19, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2840, file: !3, line: 3026, column: 3)
!2847 = !DILocation(line: 1499, column: 18, scope: !2358, inlinedAt: !2845)
!2848 = !DILocation(line: 1499, column: 27, scope: !2358, inlinedAt: !2845)
!2849 = !DILocation(line: 1500, column: 34, scope: !2358, inlinedAt: !2845)
!2850 = !DILocation(line: 3028, column: 12, scope: !2846)
!2851 = !DILocation(line: 3028, column: 5, scope: !2846)
!2852 = !DILocation(line: 3034, column: 9, scope: !2746)
!2853 = !{!962, !962, i64 0}
!2854 = !DILocation(line: 3037, column: 44, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 3036, column: 5)
!2856 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 3035, column: 7)
!2857 = !DILocation(line: 3037, column: 51, scope: !2855)
!2858 = !DILocation(line: 3038, column: 14, scope: !2855)
!2859 = !DILocation(line: 3040, column: 15, scope: !2855)
!2860 = !DILocation(line: 3040, column: 13, scope: !2855)
!2861 = !DILocation(line: 3042, column: 5, scope: !2855)
!2862 = !DILocation(line: 3045, column: 44, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 3044, column: 5)
!2864 = !DILocation(line: 3045, column: 48, scope: !2863)
!2865 = !DILocation(line: 3046, column: 14, scope: !2863)
!2866 = !DILocation(line: 3048, column: 15, scope: !2863)
!2867 = !DILocation(line: 3048, column: 13, scope: !2863)
!2868 = !DILocation(line: 0, scope: !2856)
!2869 = !DILocation(line: 3054, column: 16, scope: !2746)
!2870 = !DILocation(line: 0, scope: !2358, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 3055, column: 17, scope: !2746)
!2872 = !DILocation(line: 1499, column: 18, scope: !2358, inlinedAt: !2871)
!2873 = !DILocation(line: 1499, column: 27, scope: !2358, inlinedAt: !2871)
!2874 = !DILocation(line: 1500, column: 34, scope: !2358, inlinedAt: !2871)
!2875 = !DILocation(line: 3056, column: 14, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 3056, column: 7)
!2877 = !DILocation(line: 3056, column: 7, scope: !2746)
!2878 = !DILocation(line: 3058, column: 20, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 3057, column: 5)
!2880 = !DILocation(line: 3059, column: 7, scope: !2879)
!2881 = !DILocation(line: 3061, column: 29, scope: !2746)
!2882 = !{!945, !946, i64 13184}
!2883 = !DILocation(line: 3061, column: 17, scope: !2746)
!2884 = !DILocation(line: 3061, column: 21, scope: !2746)
!2885 = !DILocation(line: 3062, column: 3, scope: !2746)
!2886 = !DILocation(line: 3063, column: 1, scope: !2746)
!2887 = distinct !DISubprogram(name: "ResampleImage", scope: !3, file: !3, line: 2309, type: !2888, scopeLine: 2312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!804, !58, !865, !865, !641, !865, !643}
!2890 = !{!2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899}
!2891 = !DILocalVariable(name: "image", arg: 1, scope: !2887, file: !3, line: 2309, type: !58)
!2892 = !DILocalVariable(name: "x_resolution", arg: 2, scope: !2887, file: !3, line: 2309, type: !865)
!2893 = !DILocalVariable(name: "y_resolution", arg: 3, scope: !2887, file: !3, line: 2310, type: !865)
!2894 = !DILocalVariable(name: "filter", arg: 4, scope: !2887, file: !3, line: 2310, type: !641)
!2895 = !DILocalVariable(name: "blur", arg: 5, scope: !2887, file: !3, line: 2310, type: !865)
!2896 = !DILocalVariable(name: "exception", arg: 6, scope: !2887, file: !3, line: 2311, type: !643)
!2897 = !DILocalVariable(name: "resample_image", scope: !2887, file: !3, line: 2316, type: !804)
!2898 = !DILocalVariable(name: "height", scope: !2887, file: !3, line: 2319, type: !55)
!2899 = !DILocalVariable(name: "width", scope: !2887, file: !3, line: 2320, type: !55)
!2900 = !DILocation(line: 0, scope: !2887)
!2901 = !DILocation(line: 2327, column: 14, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 2327, column: 7)
!2903 = !DILocation(line: 2327, column: 20, scope: !2902)
!2904 = !DILocation(line: 2327, column: 7, scope: !2887)
!2905 = !DILocation(line: 2328, column: 68, scope: !2902)
!2906 = !DILocation(line: 2328, column: 12, scope: !2902)
!2907 = !DILocation(line: 2328, column: 5, scope: !2902)
!2908 = !DILocation(line: 2331, column: 39, scope: !2887)
!2909 = !DILocation(line: 2331, column: 32, scope: !2887)
!2910 = !DILocation(line: 2331, column: 31, scope: !2887)
!2911 = !DILocation(line: 2331, column: 55, scope: !2887)
!2912 = !{!945, !952, i64 264}
!2913 = !DILocation(line: 2331, column: 68, scope: !2887)
!2914 = !DILocation(line: 2331, column: 48, scope: !2887)
!2915 = !DILocation(line: 2331, column: 46, scope: !2887)
!2916 = !DILocation(line: 2332, column: 32, scope: !2887)
!2917 = !DILocation(line: 2331, column: 9, scope: !2887)
!2918 = !DILocation(line: 2333, column: 40, scope: !2887)
!2919 = !DILocation(line: 2333, column: 33, scope: !2887)
!2920 = !DILocation(line: 2333, column: 32, scope: !2887)
!2921 = !DILocation(line: 2333, column: 53, scope: !2887)
!2922 = !{!945, !952, i64 272}
!2923 = !DILocation(line: 2333, column: 66, scope: !2887)
!2924 = !DILocation(line: 2333, column: 46, scope: !2887)
!2925 = !DILocation(line: 2333, column: 44, scope: !2887)
!2926 = !DILocation(line: 2334, column: 32, scope: !2887)
!2927 = !DILocation(line: 2333, column: 10, scope: !2887)
!2928 = !DILocation(line: 2335, column: 18, scope: !2887)
!2929 = !DILocation(line: 2336, column: 22, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2887, file: !3, line: 2336, column: 7)
!2931 = !DILocation(line: 2336, column: 7, scope: !2887)
!2932 = !DILocation(line: 2338, column: 23, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2930, file: !3, line: 2337, column: 5)
!2934 = !DILocation(line: 2338, column: 35, scope: !2933)
!2935 = !DILocation(line: 2339, column: 23, scope: !2933)
!2936 = !DILocation(line: 2339, column: 35, scope: !2933)
!2937 = !DILocation(line: 2340, column: 5, scope: !2933)
!2938 = !DILocation(line: 2341, column: 3, scope: !2887)
!2939 = !DISubprogram(name: "AccelerateResizeImage", scope: !2940, file: !2940, line: 62, type: !2941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!2940 = !DIFile(filename: "apps/538.imagick_r/src/magick/accelerate.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "18381ec052a43da461f2906c61b6cfc7")
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!804, !58, !1951, !1951, !19, !643}
!2943 = distinct !DISubprogram(name: "HorizontalFilter", scope: !3, file: !3, line: 2452, type: !2944, scopeLine: 2455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !2947)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!152, !19, !58, !804, !18, !443, !2946, !643}
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2960, !2961, !2962, !2963, !2964, !2965, !2969, !2970, !2971, !2972, !2973, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2984, !2988, !2989, !2990, !2991, !2994}
!2948 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !2943, file: !3, line: 2452, type: !19)
!2949 = !DILocalVariable(name: "image", arg: 2, scope: !2943, file: !3, line: 2453, type: !58)
!2950 = !DILocalVariable(name: "resize_image", arg: 3, scope: !2943, file: !3, line: 2453, type: !804)
!2951 = !DILocalVariable(name: "x_factor", arg: 4, scope: !2943, file: !3, line: 2453, type: !18)
!2952 = !DILocalVariable(name: "span", arg: 5, scope: !2943, file: !3, line: 2454, type: !443)
!2953 = !DILocalVariable(name: "offset", arg: 6, scope: !2943, file: !3, line: 2454, type: !2946)
!2954 = !DILocalVariable(name: "exception", arg: 7, scope: !2943, file: !3, line: 2454, type: !643)
!2955 = !DILocalVariable(name: "image_view", scope: !2943, file: !3, line: 2459, type: !2108)
!2956 = !DILocalVariable(name: "resize_view", scope: !2943, file: !3, line: 2460, type: !2108)
!2957 = !DILocalVariable(name: "storage_class", scope: !2943, file: !3, line: 2463, type: !65)
!2958 = !DILocalVariable(name: "contributions", scope: !2943, file: !3, line: 2466, type: !2959)
!2959 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !827)
!2960 = !DILocalVariable(name: "status", scope: !2943, file: !3, line: 2469, type: !152)
!2961 = !DILocalVariable(name: "zero", scope: !2943, file: !3, line: 2472, type: !814)
!2962 = !DILocalVariable(name: "scale", scope: !2943, file: !3, line: 2475, type: !15)
!2963 = !DILocalVariable(name: "support", scope: !2943, file: !3, line: 2476, type: !15)
!2964 = !DILocalVariable(name: "x", scope: !2943, file: !3, line: 2479, type: !218)
!2965 = !DILocalVariable(name: "id", scope: !2966, file: !3, line: 2520, type: !1963)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !3, line: 2518, column: 3)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !3, line: 2517, column: 3)
!2968 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 2517, column: 3)
!2969 = !DILocalVariable(name: "bisect", scope: !2966, file: !3, line: 2523, type: !15)
!2970 = !DILocalVariable(name: "density", scope: !2966, file: !3, line: 2524, type: !15)
!2971 = !DILocalVariable(name: "indexes", scope: !2966, file: !3, line: 2527, type: !2496)
!2972 = !DILocalVariable(name: "p", scope: !2966, file: !3, line: 2530, type: !2498)
!2973 = !DILocalVariable(name: "contribution", scope: !2966, file: !3, line: 2533, type: !2974)
!2974 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !828)
!2975 = !DILocalVariable(name: "resize_indexes", scope: !2966, file: !3, line: 2536, type: !2130)
!2976 = !DILocalVariable(name: "q", scope: !2966, file: !3, line: 2539, type: !2132)
!2977 = !DILocalVariable(name: "y", scope: !2966, file: !3, line: 2542, type: !218)
!2978 = !DILocalVariable(name: "n", scope: !2966, file: !3, line: 2545, type: !218)
!2979 = !DILocalVariable(name: "start", scope: !2966, file: !3, line: 2546, type: !218)
!2980 = !DILocalVariable(name: "stop", scope: !2966, file: !3, line: 2547, type: !218)
!2981 = !DILocalVariable(name: "i", scope: !2982, file: !3, line: 2566, type: !218)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 2564, column: 7)
!2983 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 2563, column: 9)
!2984 = !DILocalVariable(name: "pixel", scope: !2985, file: !3, line: 2589, type: !814)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 2587, column: 5)
!2986 = distinct !DILexicalBlock(scope: !2987, file: !3, line: 2586, column: 5)
!2987 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 2586, column: 5)
!2988 = !DILocalVariable(name: "alpha", scope: !2985, file: !3, line: 2592, type: !15)
!2989 = !DILocalVariable(name: "i", scope: !2985, file: !3, line: 2595, type: !218)
!2990 = !DILocalVariable(name: "j", scope: !2985, file: !3, line: 2598, type: !218)
!2991 = !DILocalVariable(name: "gamma", scope: !2992, file: !3, line: 2633, type: !178)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 2631, column: 9)
!2993 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 2601, column: 11)
!2994 = !DILocalVariable(name: "proceed", scope: !2995, file: !3, line: 2684, type: !152)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !3, line: 2682, column: 7)
!2996 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 2681, column: 9)
!2997 = !DILocation(line: 0, scope: !2943)
!2998 = !DILocation(line: 2471, column: 3, scope: !2943)
!2999 = !DILocation(line: 2472, column: 5, scope: !2943)
!3000 = !DILocation(line: 2484, column: 23, scope: !2943)
!3001 = !DILocation(line: 2484, column: 22, scope: !2943)
!3002 = !DILocation(line: 2484, column: 31, scope: !2943)
!3003 = !DILocalVariable(name: "x", arg: 1, scope: !3004, file: !3, line: 2438, type: !865)
!3004 = distinct !DISubprogram(name: "MagickMax", scope: !3, file: !3, line: 2438, type: !3005, scopeLine: 2439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!178, !865, !865}
!3007 = !{!3003, !3008}
!3008 = !DILocalVariable(name: "y", arg: 2, scope: !3004, file: !3, line: 2438, type: !865)
!3009 = !DILocation(line: 0, scope: !3004, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 2484, column: 9, scope: !2943)
!3011 = !DILocation(line: 2440, column: 9, scope: !3012, inlinedAt: !3010)
!3012 = distinct !DILexicalBlock(scope: !3004, file: !3, line: 2440, column: 7)
!3013 = !DILocation(line: 2484, column: 9, scope: !2943)
!3014 = !DILocation(line: 0, scope: !1422, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 2485, column: 17, scope: !2943)
!3016 = !DILocation(line: 1581, column: 25, scope: !1422, inlinedAt: !3015)
!3017 = !DILocation(line: 1581, column: 48, scope: !1422, inlinedAt: !3015)
!3018 = !DILocation(line: 1581, column: 32, scope: !1422, inlinedAt: !3015)
!3019 = !DILocation(line: 2485, column: 16, scope: !2943)
!3020 = !DILocation(line: 2486, column: 25, scope: !2943)
!3021 = !DILocation(line: 2486, column: 17, scope: !2943)
!3022 = !DILocation(line: 2486, column: 54, scope: !2943)
!3023 = !DILocation(line: 2487, column: 7, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 2487, column: 7)
!3025 = !DILocation(line: 2487, column: 56, scope: !3024)
!3026 = !DILocation(line: 2487, column: 7, scope: !2943)
!3027 = !DILocation(line: 2489, column: 49, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !3024, file: !3, line: 2488, column: 5)
!3029 = !DILocation(line: 2489, column: 7, scope: !3028)
!3030 = !DILocation(line: 2490, column: 7, scope: !3028)
!3031 = !DILocation(line: 2492, column: 15, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 2492, column: 7)
!3033 = !DILocation(line: 2492, column: 7, scope: !2943)
!3034 = !DILocation(line: 2500, column: 5, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 2493, column: 5)
!3036 = !DILocation(line: 2501, column: 60, scope: !2943)
!3037 = !DILocation(line: 2501, column: 67, scope: !2943)
!3038 = !DILocation(line: 2501, column: 46, scope: !2943)
!3039 = !DILocation(line: 2501, column: 17, scope: !2943)
!3040 = !DILocation(line: 2502, column: 21, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 2502, column: 7)
!3042 = !DILocation(line: 2502, column: 7, scope: !2943)
!3043 = !DILocation(line: 2505, column: 67, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 2503, column: 5)
!3045 = !DILocation(line: 2504, column: 14, scope: !3044)
!3046 = !DILocation(line: 2506, column: 7, scope: !3044)
!3047 = !DILocation(line: 2509, column: 31, scope: !2943)
!3048 = !DILocation(line: 0, scope: !1096, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 2509, column: 9, scope: !2943)
!3050 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !3049)
!3051 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !3049)
!3052 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !3049)
!3053 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !3049)
!3054 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !3049)
!3055 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !3049)
!3056 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !3049)
!3057 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !3049)
!3058 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !3049)
!3059 = !DILocation(line: 2510, column: 10, scope: !2943)
!3060 = !DILocation(line: 2511, column: 14, scope: !2943)
!3061 = !DILocation(line: 2512, column: 15, scope: !2943)
!3062 = !DILocation(line: 2517, column: 41, scope: !2967)
!3063 = !DILocation(line: 2517, column: 15, scope: !2967)
!3064 = !DILocation(line: 2517, column: 3, scope: !2968)
!3065 = !DILocation(line: 2509, column: 9, scope: !2943)
!3066 = !DILocation(line: 0, scope: !2966)
!3067 = !DILocation(line: 2549, column: 16, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 2549, column: 9)
!3069 = !DILocation(line: 2549, column: 9, scope: !2966)
!3070 = !DILocation(line: 2551, column: 30, scope: !2966)
!3071 = !DILocation(line: 2551, column: 31, scope: !2966)
!3072 = !DILocation(line: 2551, column: 12, scope: !2966)
!3073 = !DILocation(line: 2551, column: 36, scope: !2966)
!3074 = !DILocation(line: 2551, column: 45, scope: !2966)
!3075 = !DILocation(line: 2552, column: 37, scope: !2966)
!3076 = !DILocation(line: 2552, column: 31, scope: !2966)
!3077 = !DILocation(line: 2552, column: 45, scope: !2966)
!3078 = !DILocation(line: 0, scope: !3004, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 2552, column: 21, scope: !2966)
!3080 = !DILocation(line: 2440, column: 9, scope: !3012, inlinedAt: !3079)
!3081 = !DILocation(line: 2552, column: 11, scope: !2966)
!3082 = !DILocation(line: 2553, column: 36, scope: !2966)
!3083 = !DILocation(line: 2553, column: 30, scope: !2966)
!3084 = !DILocation(line: 2553, column: 44, scope: !2966)
!3085 = !DILocation(line: 2553, column: 65, scope: !2966)
!3086 = !DILocation(line: 2553, column: 49, scope: !2966)
!3087 = !DILocalVariable(name: "x", arg: 1, scope: !3088, file: !3, line: 2445, type: !865)
!3088 = distinct !DISubprogram(name: "MagickMin", scope: !3, file: !3, line: 2445, type: !3005, scopeLine: 2446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3089)
!3089 = !{!3087, !3090}
!3090 = !DILocalVariable(name: "y", arg: 2, scope: !3088, file: !3, line: 2445, type: !865)
!3091 = !DILocation(line: 0, scope: !3088, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 2553, column: 20, scope: !2966)
!3093 = !DILocation(line: 2447, column: 9, scope: !3094, inlinedAt: !3092)
!3094 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 2447, column: 7)
!3095 = !DILocation(line: 2553, column: 10, scope: !2966)
!3096 = !DILocation(line: 2555, column: 18, scope: !2966)
!3097 = !DILocation(line: 2556, column: 17, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 2556, column: 5)
!3099 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 2556, column: 5)
!3100 = !DILocation(line: 2556, column: 5, scope: !3099)
!3101 = !DILocation(line: 2558, column: 34, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3098, file: !3, line: 2557, column: 5)
!3103 = !DILocation(line: 2558, column: 7, scope: !3102)
!3104 = !DILocation(line: 2558, column: 23, scope: !3102)
!3105 = !DILocation(line: 2558, column: 28, scope: !3102)
!3106 = !{!3107, !948, i64 8}
!3107 = !{!"_ContributionInfo", !985, i64 0, !948, i64 8}
!3108 = !DILocation(line: 2560, column: 10, scope: !3102)
!3109 = !DILocation(line: 2560, column: 36, scope: !3102)
!3110 = !DILocation(line: 2560, column: 43, scope: !3102)
!3111 = !DILocation(line: 2559, column: 71, scope: !3102)
!3112 = !DILocation(line: 2559, column: 66, scope: !3102)
!3113 = !DILocation(line: 0, scope: !1502, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 2559, column: 30, scope: !3102)
!3115 = !DILocation(line: 1624, column: 10, scope: !1502, inlinedAt: !3114)
!3116 = !DILocation(line: 1624, column: 42, scope: !1502, inlinedAt: !3114)
!3117 = !DILocation(line: 1625, column: 23, scope: !1515, inlinedAt: !3114)
!3118 = !DILocation(line: 1625, column: 8, scope: !1515, inlinedAt: !3114)
!3119 = !DILocation(line: 1625, column: 38, scope: !1515, inlinedAt: !3114)
!3120 = !DILocation(line: 1625, column: 55, scope: !1515, inlinedAt: !3114)
!3121 = !DILocation(line: 1626, column: 23, scope: !1515, inlinedAt: !3114)
!3122 = !DILocation(line: 1626, column: 30, scope: !1515, inlinedAt: !3114)
!3123 = !DILocation(line: 1625, column: 7, scope: !1502, inlinedAt: !3114)
!3124 = !DILocation(line: 1630, column: 28, scope: !1523, inlinedAt: !3114)
!3125 = !DILocation(line: 1631, column: 41, scope: !1523, inlinedAt: !3114)
!3126 = !DILocation(line: 1631, column: 13, scope: !1523, inlinedAt: !3114)
!3127 = !DILocation(line: 0, scope: !1515, inlinedAt: !3114)
!3128 = !DILocation(line: 1633, column: 31, scope: !1502, inlinedAt: !3114)
!3129 = !DILocation(line: 1633, column: 16, scope: !1502, inlinedAt: !3114)
!3130 = !DILocation(line: 1633, column: 15, scope: !1502, inlinedAt: !3114)
!3131 = !DILocation(line: 2559, column: 29, scope: !3102)
!3132 = !{!3107, !985, i64 0}
!3133 = !DILocation(line: 2561, column: 14, scope: !3102)
!3134 = !DILocation(line: 2556, column: 34, scope: !3098)
!3135 = distinct !{!3135, !3100, !3136, !1202, !1203}
!3136 = !DILocation(line: 2562, column: 5, scope: !3099)
!3137 = !DILocation(line: 2563, column: 10, scope: !2983)
!3138 = !DILocation(line: 2563, column: 18, scope: !2983)
!3139 = !DILocation(line: 2563, column: 26, scope: !2983)
!3140 = !DILocation(line: 0, scope: !1096, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 2571, column: 17, scope: !2982)
!3142 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !3141)
!3143 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !3141)
!3144 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !3141)
!3145 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !3141)
!3146 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !3141)
!3147 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !3141)
!3148 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !3141)
!3149 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !3141)
!3150 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !3141)
!3151 = !DILocation(line: 2571, column: 17, scope: !2982)
!3152 = !DILocation(line: 0, scope: !2982)
!3153 = !DILocation(line: 2572, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !2982, file: !3, line: 2572, column: 9)
!3155 = !DILocation(line: 2573, column: 11, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3154, file: !3, line: 2572, column: 9)
!3157 = !DILocation(line: 2573, column: 33, scope: !3156)
!3158 = !DILocation(line: 2572, column: 27, scope: !3156)
!3159 = !DILocation(line: 2572, column: 21, scope: !3156)
!3160 = distinct !{!3160, !3153, !3161, !1202, !1203}
!3161 = !DILocation(line: 2573, column: 35, scope: !3154)
!3162 = !DILocation(line: 2575, column: 60, scope: !2966)
!3163 = !DILocation(line: 2576, column: 22, scope: !2966)
!3164 = !DILocation(line: 2576, column: 26, scope: !2966)
!3165 = !DILocation(line: 2576, column: 31, scope: !2966)
!3166 = !DILocation(line: 2576, column: 53, scope: !2966)
!3167 = !DILocation(line: 2576, column: 64, scope: !2966)
!3168 = !DILocation(line: 2575, column: 7, scope: !2966)
!3169 = !DILocation(line: 2577, column: 69, scope: !2966)
!3170 = !DILocation(line: 2577, column: 7, scope: !2966)
!3171 = !DILocation(line: 2579, column: 12, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 2579, column: 9)
!3173 = !DILocation(line: 2579, column: 43, scope: !3172)
!3174 = !DILocation(line: 2584, column: 13, scope: !2966)
!3175 = !DILocation(line: 2585, column: 20, scope: !2966)
!3176 = !DILocation(line: 2586, column: 17, scope: !2986)
!3177 = !DILocation(line: 2586, column: 5, scope: !2987)
!3178 = !DILocation(line: 2600, column: 13, scope: !2985)
!3179 = !{i64 0, i64 4, !1091, i64 4, i64 4, !1091, i64 8, i64 4, !1091, i64 12, i64 4, !1091, i64 16, i64 4, !1091}
!3180 = !DILocation(line: 0, scope: !2985)
!3181 = !{i64 0, i64 4, !1091, i64 4, i64 4, !1091, i64 8, i64 4, !1091, i64 12, i64 4, !1091}
!3182 = !{i64 0, i64 4, !1091, i64 4, i64 4, !1091, i64 8, i64 4, !1091}
!3183 = !{i64 0, i64 4, !1091, i64 4, i64 4, !1091}
!3184 = !{i64 0, i64 4, !1091}
!3185 = !DILocation(line: 2601, column: 11, scope: !2985)
!3186 = !DILocation(line: 0, scope: !2992)
!3187 = !DILocation(line: 2636, column: 11, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 2636, column: 11)
!3189 = !DILocation(line: 2603, column: 11, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 2603, column: 11)
!3191 = distinct !DILexicalBlock(scope: !2993, file: !3, line: 2602, column: 9)
!3192 = !DILocation(line: 2606, column: 32, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !3, line: 2604, column: 11)
!3194 = distinct !DILexicalBlock(scope: !3190, file: !3, line: 2603, column: 11)
!3195 = !DILocation(line: 2606, column: 16, scope: !3193)
!3196 = !DILocation(line: 2606, column: 37, scope: !3193)
!3197 = !DILocation(line: 2605, column: 66, scope: !3193)
!3198 = !DILocation(line: 2607, column: 35, scope: !3193)
!3199 = !DILocation(line: 2608, column: 30, scope: !3193)
!3200 = !DILocation(line: 2608, column: 22, scope: !3193)
!3201 = !DILocation(line: 2609, column: 32, scope: !3193)
!3202 = !DILocation(line: 2609, column: 24, scope: !3193)
!3203 = !DILocation(line: 2610, column: 31, scope: !3193)
!3204 = !DILocation(line: 2610, column: 23, scope: !3193)
!3205 = !DILocation(line: 2611, column: 34, scope: !3193)
!3206 = !DILocation(line: 2611, column: 26, scope: !3193)
!3207 = !DILocation(line: 2603, column: 29, scope: !3194)
!3208 = !DILocation(line: 2603, column: 23, scope: !3194)
!3209 = distinct !{!3209, !3189, !3210, !1202, !1203}
!3210 = !DILocation(line: 2612, column: 11, scope: !3190)
!3211 = !DILocation(line: 0, scope: !2229, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 2613, column: 11, scope: !3191)
!3213 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3212)
!3214 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3212)
!3215 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3212)
!3216 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3212)
!3217 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3212)
!3218 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3212)
!3219 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3212)
!3220 = !DILocation(line: 2613, column: 11, scope: !3191)
!3221 = !DILocation(line: 0, scope: !2229, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 2614, column: 11, scope: !3191)
!3223 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3222)
!3224 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3222)
!3225 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3222)
!3226 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3222)
!3227 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3222)
!3228 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3222)
!3229 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3222)
!3230 = !DILocation(line: 2614, column: 11, scope: !3191)
!3231 = !DILocation(line: 0, scope: !2229, inlinedAt: !3232)
!3232 = distinct !DILocation(line: 2615, column: 11, scope: !3191)
!3233 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3232)
!3234 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3232)
!3235 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3232)
!3236 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3232)
!3237 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3232)
!3238 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3232)
!3239 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3232)
!3240 = !DILocation(line: 2615, column: 11, scope: !3191)
!3241 = !DILocation(line: 0, scope: !2229, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 2616, column: 11, scope: !3191)
!3243 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3242)
!3244 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3242)
!3245 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3242)
!3246 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3242)
!3247 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3242)
!3248 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3242)
!3249 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3242)
!3250 = !DILocation(line: 2616, column: 11, scope: !3191)
!3251 = !DILocation(line: 2617, column: 23, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 2617, column: 15)
!3253 = !DILocation(line: 2617, column: 34, scope: !3252)
!3254 = !DILocation(line: 2617, column: 53, scope: !3252)
!3255 = !DILocation(line: 2618, column: 30, scope: !3252)
!3256 = !DILocation(line: 2618, column: 41, scope: !3252)
!3257 = !DILocation(line: 2617, column: 15, scope: !3191)
!3258 = !DILocation(line: 2620, column: 15, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 2620, column: 15)
!3260 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 2619, column: 13)
!3261 = !DILocation(line: 2625, column: 36, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 2621, column: 15)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !3, line: 2620, column: 15)
!3264 = !DILocation(line: 2623, column: 20, scope: !3262)
!3265 = !DILocation(line: 2624, column: 39, scope: !3262)
!3266 = !DILocation(line: 2625, column: 28, scope: !3262)
!3267 = !DILocation(line: 2620, column: 33, scope: !3263)
!3268 = !DILocation(line: 2620, column: 27, scope: !3263)
!3269 = distinct !{!3269, !3258, !3270, !1202, !1203}
!3270 = !DILocation(line: 2626, column: 15, scope: !3259)
!3271 = !DILocation(line: 2623, column: 36, scope: !3262)
!3272 = !DILocation(line: 2623, column: 41, scope: !3262)
!3273 = !DILocation(line: 2622, column: 70, scope: !3262)
!3274 = !DILocation(line: 2627, column: 15, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3260, file: !3, line: 2627, column: 15)
!3276 = !DILocation(line: 2627, column: 15, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3275, file: !3, line: 2627, column: 15)
!3278 = !DILocation(line: 0, scope: !2229, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 2627, column: 15, scope: !3277)
!3280 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3279)
!3281 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3279)
!3282 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3279)
!3283 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3279)
!3284 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3279)
!3285 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3279)
!3286 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3279)
!3287 = !DILocation(line: 2639, column: 32, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !3, line: 2637, column: 11)
!3289 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 2636, column: 11)
!3290 = !DILocation(line: 2639, column: 16, scope: !3288)
!3291 = !DILocation(line: 2639, column: 37, scope: !3288)
!3292 = !DILocation(line: 2638, column: 66, scope: !3288)
!3293 = !DILocation(line: 2640, column: 35, scope: !3288)
!3294 = !DILocation(line: 2640, column: 19, scope: !3288)
!3295 = !DILocation(line: 2640, column: 41, scope: !3288)
!3296 = !DILocation(line: 2640, column: 55, scope: !3288)
!3297 = !DILocation(line: 2640, column: 54, scope: !3288)
!3298 = !DILocation(line: 2641, column: 30, scope: !3288)
!3299 = !DILocation(line: 2641, column: 22, scope: !3288)
!3300 = !DILocation(line: 2642, column: 32, scope: !3288)
!3301 = !DILocation(line: 2642, column: 24, scope: !3288)
!3302 = !DILocation(line: 2643, column: 31, scope: !3288)
!3303 = !DILocation(line: 2643, column: 23, scope: !3288)
!3304 = !DILocation(line: 2644, column: 51, scope: !3288)
!3305 = !DILocation(line: 2644, column: 26, scope: !3288)
!3306 = !DILocation(line: 2645, column: 20, scope: !3288)
!3307 = !DILocation(line: 2645, column: 18, scope: !3288)
!3308 = !DILocation(line: 2636, column: 29, scope: !3289)
!3309 = !DILocation(line: 2636, column: 23, scope: !3289)
!3310 = distinct !{!3310, !3187, !3311, !1202, !1203}
!3311 = !DILocation(line: 2646, column: 11, scope: !3188)
!3312 = !DILocation(line: 2648, column: 21, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 2648, column: 15)
!3314 = !DILocation(line: 2648, column: 15, scope: !2992)
!3315 = !DILocation(line: 2648, column: 28, scope: !3313)
!3316 = !DILocation(line: 0, scope: !1096, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 2650, column: 17, scope: !2992)
!3318 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !3317)
!3319 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !3317)
!3320 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !3317)
!3321 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !3317)
!3322 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !3317)
!3323 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !3317)
!3324 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !3317)
!3325 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !3317)
!3326 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !3317)
!3327 = !DILocation(line: 2651, column: 11, scope: !2992)
!3328 = !DILocation(line: 0, scope: !2229, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 2651, column: 11, scope: !2992)
!3330 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3329)
!3331 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3329)
!3332 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3329)
!3333 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3329)
!3334 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3329)
!3335 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3329)
!3336 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3329)
!3337 = !DILocation(line: 2652, column: 11, scope: !2992)
!3338 = !DILocation(line: 0, scope: !2229, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 2652, column: 11, scope: !2992)
!3340 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3339)
!3341 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3339)
!3342 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3339)
!3343 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3339)
!3344 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3339)
!3345 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3339)
!3346 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3339)
!3347 = !DILocation(line: 2653, column: 11, scope: !2992)
!3348 = !DILocation(line: 0, scope: !2229, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 2653, column: 11, scope: !2992)
!3350 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3349)
!3351 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3349)
!3352 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3349)
!3353 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3349)
!3354 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3349)
!3355 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3349)
!3356 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3349)
!3357 = !DILocation(line: 0, scope: !2229, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 2654, column: 11, scope: !2992)
!3359 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3358)
!3360 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3358)
!3361 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3358)
!3362 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3358)
!3363 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3358)
!3364 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3358)
!3365 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3358)
!3366 = !DILocation(line: 2654, column: 11, scope: !2992)
!3367 = !DILocation(line: 2655, column: 23, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !2992, file: !3, line: 2655, column: 15)
!3369 = !DILocation(line: 2655, column: 34, scope: !3368)
!3370 = !DILocation(line: 2655, column: 53, scope: !3368)
!3371 = !DILocation(line: 2656, column: 30, scope: !3368)
!3372 = !DILocation(line: 2656, column: 41, scope: !3368)
!3373 = !DILocation(line: 2655, column: 15, scope: !2992)
!3374 = !DILocation(line: 2658, column: 15, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 2658, column: 15)
!3376 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 2657, column: 13)
!3377 = !DILocation(line: 2661, column: 36, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !3, line: 2659, column: 15)
!3379 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 2658, column: 15)
!3380 = !DILocation(line: 2661, column: 20, scope: !3378)
!3381 = !DILocation(line: 2661, column: 41, scope: !3378)
!3382 = !DILocation(line: 2660, column: 70, scope: !3378)
!3383 = !DILocation(line: 2662, column: 39, scope: !3378)
!3384 = !DILocation(line: 2662, column: 23, scope: !3378)
!3385 = !DILocation(line: 2662, column: 45, scope: !3378)
!3386 = !DILocation(line: 2662, column: 59, scope: !3378)
!3387 = !DILocation(line: 2662, column: 58, scope: !3378)
!3388 = !DILocation(line: 2663, column: 36, scope: !3378)
!3389 = !DILocation(line: 2663, column: 28, scope: !3378)
!3390 = !DILocation(line: 2658, column: 33, scope: !3379)
!3391 = !DILocation(line: 2658, column: 27, scope: !3379)
!3392 = distinct !{!3392, !3374, !3393, !1202, !1203}
!3393 = !DILocation(line: 2664, column: 15, scope: !3375)
!3394 = !DILocation(line: 2665, column: 15, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 2665, column: 15)
!3396 = !DILocation(line: 2665, column: 15, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 2665, column: 15)
!3398 = !DILocation(line: 0, scope: !2229, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 2665, column: 15, scope: !3397)
!3400 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3399)
!3401 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3399)
!3402 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3399)
!3403 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3399)
!3404 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3399)
!3405 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3399)
!3406 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3399)
!3407 = !DILocation(line: 2668, column: 56, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !2985, file: !3, line: 2668, column: 11)
!3409 = !DILocation(line: 2669, column: 19, scope: !3408)
!3410 = !DILocation(line: 2669, column: 33, scope: !3408)
!3411 = !DILocation(line: 2668, column: 11, scope: !2985)
!3412 = !DILocation(line: 0, scope: !3004, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 2671, column: 34, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3408, file: !3, line: 2670, column: 9)
!3415 = !DILocation(line: 0, scope: !3088, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 2671, column: 24, scope: !3414)
!3417 = !DILocation(line: 2675, column: 11, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 2675, column: 11)
!3419 = distinct !DILexicalBlock(scope: !3414, file: !3, line: 2675, column: 11)
!3420 = !DILocation(line: 2675, column: 11, scope: !3419)
!3421 = !DILocation(line: 2673, column: 34, scope: !3414)
!3422 = !DILocation(line: 2673, column: 56, scope: !3414)
!3423 = !DILocation(line: 2673, column: 39, scope: !3414)
!3424 = !DILocation(line: 2673, column: 61, scope: !3414)
!3425 = !DILocation(line: 2673, column: 14, scope: !3414)
!3426 = !DILocation(line: 2674, column: 36, scope: !3414)
!3427 = !DILocation(line: 2674, column: 41, scope: !3414)
!3428 = !DILocation(line: 2673, column: 64, scope: !3414)
!3429 = !DILocation(line: 2677, column: 8, scope: !2985)
!3430 = !DILocation(line: 2586, column: 50, scope: !2986)
!3431 = distinct !{!3431, !3177, !3432, !1202, !1203}
!3432 = !DILocation(line: 2678, column: 5, scope: !2987)
!3433 = !DILocation(line: 2679, column: 9, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 2679, column: 9)
!3435 = !DILocation(line: 2679, column: 61, scope: !3434)
!3436 = !DILocation(line: 2679, column: 9, scope: !2966)
!3437 = !DILocation(line: 2681, column: 16, scope: !2996)
!3438 = !DILocation(line: 2681, column: 33, scope: !2996)
!3439 = !DILocation(line: 2681, column: 9, scope: !2966)
!3440 = !DILocation(line: 2689, column: 64, scope: !2995)
!3441 = !DILocation(line: 0, scope: !2320, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 2689, column: 17, scope: !2995)
!3443 = !DILocation(line: 30, column: 3, scope: !2320, inlinedAt: !3442)
!3444 = !DILocation(line: 31, column: 5, scope: !2320, inlinedAt: !3442)
!3445 = !DILocation(line: 35, column: 10, scope: !2320, inlinedAt: !3442)
!3446 = !DILocation(line: 36, column: 17, scope: !2320, inlinedAt: !3442)
!3447 = !DILocation(line: 36, column: 63, scope: !2320, inlinedAt: !3442)
!3448 = !DILocation(line: 36, column: 10, scope: !2320, inlinedAt: !3442)
!3449 = !DILocation(line: 37, column: 1, scope: !2320, inlinedAt: !3442)
!3450 = !DILocation(line: 0, scope: !2995)
!3451 = !DILocation(line: 2690, column: 21, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 2690, column: 13)
!3453 = !DILocation(line: 2690, column: 13, scope: !2995)
!3454 = !DILocation(line: 2692, column: 7, scope: !2995)
!3455 = !DILocation(line: 2517, column: 51, scope: !2967)
!3456 = distinct !{!3456, !3064, !3457, !1202, !1203}
!3457 = !DILocation(line: 2693, column: 3, scope: !2968)
!3458 = !DILocation(line: 2508, column: 9, scope: !2943)
!3459 = !DILocation(line: 2694, column: 15, scope: !2943)
!3460 = !DILocation(line: 2695, column: 14, scope: !2943)
!3461 = !DILocalVariable(name: "contribution", arg: 1, scope: !3462, file: !3, line: 2397, type: !827)
!3462 = distinct !DISubprogram(name: "DestroyContributionThreadSet", scope: !3, file: !3, line: 2396, type: !3463, scopeLine: 2398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3465)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!827, !827}
!3465 = !{!3461, !3466}
!3466 = !DILocalVariable(name: "i", scope: !3462, file: !3, line: 2400, type: !218)
!3467 = !DILocation(line: 0, scope: !3462, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 2696, column: 17, scope: !2943)
!3469 = !DILocation(line: 2403, column: 27, scope: !3470, inlinedAt: !3468)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 2403, column: 3)
!3471 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 2403, column: 3)
!3472 = !DILocation(line: 2403, column: 15, scope: !3470, inlinedAt: !3468)
!3473 = !DILocation(line: 2403, column: 3, scope: !3471, inlinedAt: !3468)
!3474 = !DILocation(line: 2404, column: 9, scope: !3475, inlinedAt: !3468)
!3475 = distinct !DILexicalBlock(scope: !3470, file: !3, line: 2404, column: 9)
!3476 = !DILocation(line: 2404, column: 25, scope: !3475, inlinedAt: !3468)
!3477 = !DILocation(line: 2404, column: 9, scope: !3470, inlinedAt: !3468)
!3478 = !DILocation(line: 2405, column: 44, scope: !3475, inlinedAt: !3468)
!3479 = !DILocation(line: 2405, column: 22, scope: !3475, inlinedAt: !3468)
!3480 = !DILocation(line: 2405, column: 7, scope: !3475, inlinedAt: !3468)
!3481 = !DILocation(line: 2403, column: 68, scope: !3470, inlinedAt: !3468)
!3482 = distinct !{!3482, !3473, !3483, !1202, !1203}
!3483 = !DILocation(line: 2406, column: 24, scope: !3471, inlinedAt: !3468)
!3484 = !DILocation(line: 2407, column: 38, scope: !3462, inlinedAt: !3468)
!3485 = !DILocation(line: 2697, column: 3, scope: !2943)
!3486 = !DILocation(line: 2698, column: 1, scope: !2943)
!3487 = distinct !DISubprogram(name: "VerticalFilter", scope: !3, file: !3, line: 2700, type: !2944, scopeLine: 2703, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !3488)
!3488 = !{!3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3523, !3527, !3528, !3529, !3530, !3533}
!3489 = !DILocalVariable(name: "resize_filter", arg: 1, scope: !3487, file: !3, line: 2700, type: !19)
!3490 = !DILocalVariable(name: "image", arg: 2, scope: !3487, file: !3, line: 2701, type: !58)
!3491 = !DILocalVariable(name: "resize_image", arg: 3, scope: !3487, file: !3, line: 2701, type: !804)
!3492 = !DILocalVariable(name: "y_factor", arg: 4, scope: !3487, file: !3, line: 2701, type: !18)
!3493 = !DILocalVariable(name: "span", arg: 5, scope: !3487, file: !3, line: 2702, type: !443)
!3494 = !DILocalVariable(name: "offset", arg: 6, scope: !3487, file: !3, line: 2702, type: !2946)
!3495 = !DILocalVariable(name: "exception", arg: 7, scope: !3487, file: !3, line: 2702, type: !643)
!3496 = !DILocalVariable(name: "image_view", scope: !3487, file: !3, line: 2705, type: !2108)
!3497 = !DILocalVariable(name: "resize_view", scope: !3487, file: !3, line: 2706, type: !2108)
!3498 = !DILocalVariable(name: "storage_class", scope: !3487, file: !3, line: 2709, type: !65)
!3499 = !DILocalVariable(name: "contributions", scope: !3487, file: !3, line: 2712, type: !2959)
!3500 = !DILocalVariable(name: "status", scope: !3487, file: !3, line: 2715, type: !152)
!3501 = !DILocalVariable(name: "zero", scope: !3487, file: !3, line: 2718, type: !814)
!3502 = !DILocalVariable(name: "scale", scope: !3487, file: !3, line: 2721, type: !15)
!3503 = !DILocalVariable(name: "support", scope: !3487, file: !3, line: 2722, type: !15)
!3504 = !DILocalVariable(name: "y", scope: !3487, file: !3, line: 2725, type: !218)
!3505 = !DILocalVariable(name: "id", scope: !3506, file: !3, line: 2766, type: !1963)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 2764, column: 3)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 2763, column: 3)
!3508 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 2763, column: 3)
!3509 = !DILocalVariable(name: "bisect", scope: !3506, file: !3, line: 2769, type: !15)
!3510 = !DILocalVariable(name: "density", scope: !3506, file: !3, line: 2770, type: !15)
!3511 = !DILocalVariable(name: "indexes", scope: !3506, file: !3, line: 2773, type: !2496)
!3512 = !DILocalVariable(name: "p", scope: !3506, file: !3, line: 2776, type: !2498)
!3513 = !DILocalVariable(name: "contribution", scope: !3506, file: !3, line: 2779, type: !2974)
!3514 = !DILocalVariable(name: "resize_indexes", scope: !3506, file: !3, line: 2782, type: !2130)
!3515 = !DILocalVariable(name: "q", scope: !3506, file: !3, line: 2785, type: !2132)
!3516 = !DILocalVariable(name: "x", scope: !3506, file: !3, line: 2788, type: !218)
!3517 = !DILocalVariable(name: "n", scope: !3506, file: !3, line: 2791, type: !218)
!3518 = !DILocalVariable(name: "start", scope: !3506, file: !3, line: 2792, type: !218)
!3519 = !DILocalVariable(name: "stop", scope: !3506, file: !3, line: 2793, type: !218)
!3520 = !DILocalVariable(name: "i", scope: !3521, file: !3, line: 2812, type: !218)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !3, line: 2810, column: 7)
!3522 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 2809, column: 9)
!3523 = !DILocalVariable(name: "pixel", scope: !3524, file: !3, line: 2836, type: !814)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 2834, column: 5)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 2833, column: 5)
!3526 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 2833, column: 5)
!3527 = !DILocalVariable(name: "alpha", scope: !3524, file: !3, line: 2839, type: !15)
!3528 = !DILocalVariable(name: "i", scope: !3524, file: !3, line: 2842, type: !218)
!3529 = !DILocalVariable(name: "j", scope: !3524, file: !3, line: 2845, type: !218)
!3530 = !DILocalVariable(name: "gamma", scope: !3531, file: !3, line: 2880, type: !178)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 2878, column: 9)
!3532 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 2848, column: 11)
!3533 = !DILocalVariable(name: "proceed", scope: !3534, file: !3, line: 2931, type: !152)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !3, line: 2929, column: 7)
!3535 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 2928, column: 9)
!3536 = !DILocation(line: 0, scope: !3487)
!3537 = !DILocation(line: 2717, column: 3, scope: !3487)
!3538 = !DILocation(line: 2718, column: 5, scope: !3487)
!3539 = !DILocation(line: 2730, column: 23, scope: !3487)
!3540 = !DILocation(line: 2730, column: 22, scope: !3487)
!3541 = !DILocation(line: 2730, column: 31, scope: !3487)
!3542 = !DILocation(line: 0, scope: !3004, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 2730, column: 9, scope: !3487)
!3544 = !DILocation(line: 2440, column: 9, scope: !3012, inlinedAt: !3543)
!3545 = !DILocation(line: 2730, column: 9, scope: !3487)
!3546 = !DILocation(line: 0, scope: !1422, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 2731, column: 17, scope: !3487)
!3548 = !DILocation(line: 1581, column: 25, scope: !1422, inlinedAt: !3547)
!3549 = !DILocation(line: 1581, column: 48, scope: !1422, inlinedAt: !3547)
!3550 = !DILocation(line: 1581, column: 32, scope: !1422, inlinedAt: !3547)
!3551 = !DILocation(line: 2731, column: 16, scope: !3487)
!3552 = !DILocation(line: 2732, column: 25, scope: !3487)
!3553 = !DILocation(line: 2732, column: 17, scope: !3487)
!3554 = !DILocation(line: 2732, column: 54, scope: !3487)
!3555 = !DILocation(line: 2733, column: 7, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 2733, column: 7)
!3557 = !DILocation(line: 2733, column: 56, scope: !3556)
!3558 = !DILocation(line: 2733, column: 7, scope: !3487)
!3559 = !DILocation(line: 2735, column: 49, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 2734, column: 5)
!3561 = !DILocation(line: 2735, column: 7, scope: !3560)
!3562 = !DILocation(line: 2736, column: 7, scope: !3560)
!3563 = !DILocation(line: 2738, column: 15, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 2738, column: 7)
!3565 = !DILocation(line: 2738, column: 7, scope: !3487)
!3566 = !DILocation(line: 2746, column: 5, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3564, file: !3, line: 2739, column: 5)
!3568 = !DILocation(line: 2747, column: 60, scope: !3487)
!3569 = !DILocation(line: 2747, column: 67, scope: !3487)
!3570 = !DILocation(line: 2747, column: 46, scope: !3487)
!3571 = !DILocation(line: 2747, column: 17, scope: !3487)
!3572 = !DILocation(line: 2748, column: 21, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3487, file: !3, line: 2748, column: 7)
!3574 = !DILocation(line: 2748, column: 7, scope: !3487)
!3575 = !DILocation(line: 2751, column: 67, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !3, line: 2749, column: 5)
!3577 = !DILocation(line: 2750, column: 14, scope: !3576)
!3578 = !DILocation(line: 2752, column: 7, scope: !3576)
!3579 = !DILocation(line: 2755, column: 31, scope: !3487)
!3580 = !DILocation(line: 0, scope: !1096, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 2755, column: 9, scope: !3487)
!3582 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !3581)
!3583 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !3581)
!3584 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !3581)
!3585 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !3581)
!3586 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !3581)
!3587 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !3581)
!3588 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !3581)
!3589 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !3581)
!3590 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !3581)
!3591 = !DILocation(line: 2756, column: 10, scope: !3487)
!3592 = !DILocation(line: 2757, column: 14, scope: !3487)
!3593 = !DILocation(line: 2758, column: 15, scope: !3487)
!3594 = !DILocation(line: 2763, column: 41, scope: !3507)
!3595 = !DILocation(line: 2763, column: 15, scope: !3507)
!3596 = !DILocation(line: 2763, column: 3, scope: !3508)
!3597 = !DILocation(line: 2755, column: 9, scope: !3487)
!3598 = !DILocation(line: 0, scope: !3506)
!3599 = !DILocation(line: 2795, column: 16, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 2795, column: 9)
!3601 = !DILocation(line: 2795, column: 9, scope: !3506)
!3602 = !DILocation(line: 2797, column: 30, scope: !3506)
!3603 = !DILocation(line: 2797, column: 31, scope: !3506)
!3604 = !DILocation(line: 2797, column: 12, scope: !3506)
!3605 = !DILocation(line: 2797, column: 36, scope: !3506)
!3606 = !DILocation(line: 2797, column: 45, scope: !3506)
!3607 = !DILocation(line: 2798, column: 37, scope: !3506)
!3608 = !DILocation(line: 2798, column: 31, scope: !3506)
!3609 = !DILocation(line: 2798, column: 45, scope: !3506)
!3610 = !DILocation(line: 0, scope: !3004, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 2798, column: 21, scope: !3506)
!3612 = !DILocation(line: 2440, column: 9, scope: !3012, inlinedAt: !3611)
!3613 = !DILocation(line: 2798, column: 11, scope: !3506)
!3614 = !DILocation(line: 2799, column: 36, scope: !3506)
!3615 = !DILocation(line: 2799, column: 30, scope: !3506)
!3616 = !DILocation(line: 2799, column: 44, scope: !3506)
!3617 = !DILocation(line: 2799, column: 65, scope: !3506)
!3618 = !DILocation(line: 2799, column: 49, scope: !3506)
!3619 = !DILocation(line: 0, scope: !3088, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 2799, column: 20, scope: !3506)
!3621 = !DILocation(line: 2447, column: 9, scope: !3094, inlinedAt: !3620)
!3622 = !DILocation(line: 2799, column: 10, scope: !3506)
!3623 = !DILocation(line: 2801, column: 18, scope: !3506)
!3624 = !DILocation(line: 2802, column: 17, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3626, file: !3, line: 2802, column: 5)
!3626 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 2802, column: 5)
!3627 = !DILocation(line: 2802, column: 5, scope: !3626)
!3628 = !DILocation(line: 2804, column: 34, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3625, file: !3, line: 2803, column: 5)
!3630 = !DILocation(line: 2804, column: 7, scope: !3629)
!3631 = !DILocation(line: 2804, column: 23, scope: !3629)
!3632 = !DILocation(line: 2804, column: 28, scope: !3629)
!3633 = !DILocation(line: 2806, column: 10, scope: !3629)
!3634 = !DILocation(line: 2806, column: 36, scope: !3629)
!3635 = !DILocation(line: 2806, column: 43, scope: !3629)
!3636 = !DILocation(line: 2805, column: 71, scope: !3629)
!3637 = !DILocation(line: 2805, column: 66, scope: !3629)
!3638 = !DILocation(line: 0, scope: !1502, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 2805, column: 30, scope: !3629)
!3640 = !DILocation(line: 1624, column: 10, scope: !1502, inlinedAt: !3639)
!3641 = !DILocation(line: 1624, column: 42, scope: !1502, inlinedAt: !3639)
!3642 = !DILocation(line: 1625, column: 23, scope: !1515, inlinedAt: !3639)
!3643 = !DILocation(line: 1625, column: 8, scope: !1515, inlinedAt: !3639)
!3644 = !DILocation(line: 1625, column: 38, scope: !1515, inlinedAt: !3639)
!3645 = !DILocation(line: 1625, column: 55, scope: !1515, inlinedAt: !3639)
!3646 = !DILocation(line: 1626, column: 23, scope: !1515, inlinedAt: !3639)
!3647 = !DILocation(line: 1626, column: 30, scope: !1515, inlinedAt: !3639)
!3648 = !DILocation(line: 1625, column: 7, scope: !1502, inlinedAt: !3639)
!3649 = !DILocation(line: 1630, column: 28, scope: !1523, inlinedAt: !3639)
!3650 = !DILocation(line: 1631, column: 41, scope: !1523, inlinedAt: !3639)
!3651 = !DILocation(line: 1631, column: 13, scope: !1523, inlinedAt: !3639)
!3652 = !DILocation(line: 0, scope: !1515, inlinedAt: !3639)
!3653 = !DILocation(line: 1633, column: 31, scope: !1502, inlinedAt: !3639)
!3654 = !DILocation(line: 1633, column: 16, scope: !1502, inlinedAt: !3639)
!3655 = !DILocation(line: 1633, column: 15, scope: !1502, inlinedAt: !3639)
!3656 = !DILocation(line: 2805, column: 29, scope: !3629)
!3657 = !DILocation(line: 2807, column: 14, scope: !3629)
!3658 = !DILocation(line: 2802, column: 34, scope: !3625)
!3659 = distinct !{!3659, !3627, !3660, !1202, !1203}
!3660 = !DILocation(line: 2808, column: 5, scope: !3626)
!3661 = !DILocation(line: 2809, column: 10, scope: !3522)
!3662 = !DILocation(line: 2809, column: 18, scope: !3522)
!3663 = !DILocation(line: 2809, column: 26, scope: !3522)
!3664 = !DILocation(line: 0, scope: !1096, inlinedAt: !3665)
!3665 = distinct !DILocation(line: 2817, column: 17, scope: !3521)
!3666 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !3665)
!3667 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !3665)
!3668 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !3665)
!3669 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !3665)
!3670 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !3665)
!3671 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !3665)
!3672 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !3665)
!3673 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !3665)
!3674 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !3665)
!3675 = !DILocation(line: 2817, column: 17, scope: !3521)
!3676 = !DILocation(line: 0, scope: !3521)
!3677 = !DILocation(line: 2818, column: 9, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3521, file: !3, line: 2818, column: 9)
!3679 = !DILocation(line: 2819, column: 11, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 2818, column: 9)
!3681 = !DILocation(line: 2819, column: 33, scope: !3680)
!3682 = !DILocation(line: 2818, column: 27, scope: !3680)
!3683 = !DILocation(line: 2818, column: 21, scope: !3680)
!3684 = distinct !{!3684, !3677, !3685, !1202, !1203}
!3685 = !DILocation(line: 2819, column: 35, scope: !3678)
!3686 = !DILocation(line: 2821, column: 62, scope: !3506)
!3687 = !DILocation(line: 2822, column: 14, scope: !3506)
!3688 = !DILocation(line: 2822, column: 46, scope: !3506)
!3689 = !DILocation(line: 2822, column: 50, scope: !3506)
!3690 = !DILocation(line: 2822, column: 55, scope: !3506)
!3691 = !DILocation(line: 2822, column: 77, scope: !3506)
!3692 = !DILocation(line: 2821, column: 7, scope: !3506)
!3693 = !DILocation(line: 2824, column: 67, scope: !3506)
!3694 = !DILocation(line: 2824, column: 7, scope: !3506)
!3695 = !DILocation(line: 2826, column: 12, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 2826, column: 9)
!3697 = !DILocation(line: 2826, column: 43, scope: !3696)
!3698 = !DILocation(line: 2831, column: 13, scope: !3506)
!3699 = !DILocation(line: 2832, column: 20, scope: !3506)
!3700 = !DILocation(line: 2833, column: 17, scope: !3525)
!3701 = !DILocation(line: 2833, column: 5, scope: !3526)
!3702 = !DILocation(line: 2847, column: 13, scope: !3524)
!3703 = !DILocation(line: 0, scope: !3524)
!3704 = !DILocation(line: 2848, column: 11, scope: !3524)
!3705 = !DILocation(line: 0, scope: !3531)
!3706 = !DILocation(line: 2883, column: 11, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 2883, column: 11)
!3708 = !DILocation(line: 2850, column: 11, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 2850, column: 11)
!3710 = distinct !DILexicalBlock(scope: !3532, file: !3, line: 2849, column: 9)
!3711 = !DILocation(line: 2852, column: 43, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !3, line: 2851, column: 11)
!3713 = distinct !DILexicalBlock(scope: !3709, file: !3, line: 2850, column: 11)
!3714 = !DILocation(line: 2852, column: 27, scope: !3712)
!3715 = !DILocation(line: 2852, column: 48, scope: !3712)
!3716 = !DILocation(line: 2852, column: 71, scope: !3712)
!3717 = !DILocation(line: 2853, column: 29, scope: !3712)
!3718 = !DILocation(line: 2854, column: 35, scope: !3712)
!3719 = !DILocation(line: 2855, column: 30, scope: !3712)
!3720 = !DILocation(line: 2855, column: 22, scope: !3712)
!3721 = !DILocation(line: 2856, column: 32, scope: !3712)
!3722 = !DILocation(line: 2856, column: 24, scope: !3712)
!3723 = !DILocation(line: 2857, column: 31, scope: !3712)
!3724 = !DILocation(line: 2857, column: 23, scope: !3712)
!3725 = !DILocation(line: 2858, column: 34, scope: !3712)
!3726 = !DILocation(line: 2858, column: 26, scope: !3712)
!3727 = !DILocation(line: 2850, column: 29, scope: !3713)
!3728 = !DILocation(line: 2850, column: 23, scope: !3713)
!3729 = distinct !{!3729, !3708, !3730, !1202, !1203}
!3730 = !DILocation(line: 2859, column: 11, scope: !3709)
!3731 = !DILocation(line: 0, scope: !2229, inlinedAt: !3732)
!3732 = distinct !DILocation(line: 2860, column: 11, scope: !3710)
!3733 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3732)
!3734 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3732)
!3735 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3732)
!3736 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3732)
!3737 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3732)
!3738 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3732)
!3739 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3732)
!3740 = !DILocation(line: 2860, column: 11, scope: !3710)
!3741 = !DILocation(line: 0, scope: !2229, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 2861, column: 11, scope: !3710)
!3743 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3742)
!3744 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3742)
!3745 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3742)
!3746 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3742)
!3747 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3742)
!3748 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3742)
!3749 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3742)
!3750 = !DILocation(line: 2861, column: 11, scope: !3710)
!3751 = !DILocation(line: 0, scope: !2229, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 2862, column: 11, scope: !3710)
!3753 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3752)
!3754 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3752)
!3755 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3752)
!3756 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3752)
!3757 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3752)
!3758 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3752)
!3759 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3752)
!3760 = !DILocation(line: 2862, column: 11, scope: !3710)
!3761 = !DILocation(line: 0, scope: !2229, inlinedAt: !3762)
!3762 = distinct !DILocation(line: 2863, column: 11, scope: !3710)
!3763 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3762)
!3764 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3762)
!3765 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3762)
!3766 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3762)
!3767 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3762)
!3768 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3762)
!3769 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3762)
!3770 = !DILocation(line: 2863, column: 11, scope: !3710)
!3771 = !DILocation(line: 2864, column: 23, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 2864, column: 15)
!3773 = !DILocation(line: 2864, column: 34, scope: !3772)
!3774 = !DILocation(line: 2864, column: 53, scope: !3772)
!3775 = !DILocation(line: 2865, column: 30, scope: !3772)
!3776 = !DILocation(line: 2865, column: 41, scope: !3772)
!3777 = !DILocation(line: 2864, column: 15, scope: !3710)
!3778 = !DILocation(line: 2867, column: 15, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 2867, column: 15)
!3780 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 2866, column: 13)
!3781 = !DILocation(line: 2872, column: 36, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3783, file: !3, line: 2868, column: 15)
!3783 = distinct !DILexicalBlock(scope: !3779, file: !3, line: 2867, column: 15)
!3784 = !DILocation(line: 2869, column: 31, scope: !3782)
!3785 = !DILocation(line: 2871, column: 39, scope: !3782)
!3786 = !DILocation(line: 2872, column: 28, scope: !3782)
!3787 = !DILocation(line: 2867, column: 33, scope: !3783)
!3788 = !DILocation(line: 2867, column: 27, scope: !3783)
!3789 = distinct !{!3789, !3778, !3790, !1202, !1203}
!3790 = !DILocation(line: 2873, column: 15, scope: !3779)
!3791 = !DILocation(line: 2869, column: 47, scope: !3782)
!3792 = !DILocation(line: 2869, column: 52, scope: !3782)
!3793 = !DILocation(line: 2869, column: 75, scope: !3782)
!3794 = !DILocation(line: 2870, column: 33, scope: !3782)
!3795 = !DILocation(line: 2874, column: 15, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 2874, column: 15)
!3797 = !DILocation(line: 2874, column: 15, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3796, file: !3, line: 2874, column: 15)
!3799 = !DILocation(line: 0, scope: !2229, inlinedAt: !3800)
!3800 = distinct !DILocation(line: 2874, column: 15, scope: !3798)
!3801 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3800)
!3802 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3800)
!3803 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3800)
!3804 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3800)
!3805 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3800)
!3806 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3800)
!3807 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3800)
!3808 = !DILocation(line: 2885, column: 43, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !3, line: 2884, column: 11)
!3810 = distinct !DILexicalBlock(scope: !3707, file: !3, line: 2883, column: 11)
!3811 = !DILocation(line: 2885, column: 27, scope: !3809)
!3812 = !DILocation(line: 2885, column: 48, scope: !3809)
!3813 = !DILocation(line: 2885, column: 71, scope: !3809)
!3814 = !DILocation(line: 2886, column: 29, scope: !3809)
!3815 = !DILocation(line: 2887, column: 35, scope: !3809)
!3816 = !DILocation(line: 2887, column: 19, scope: !3809)
!3817 = !DILocation(line: 2887, column: 41, scope: !3809)
!3818 = !DILocation(line: 2887, column: 55, scope: !3809)
!3819 = !DILocation(line: 2887, column: 54, scope: !3809)
!3820 = !DILocation(line: 2888, column: 30, scope: !3809)
!3821 = !DILocation(line: 2888, column: 22, scope: !3809)
!3822 = !DILocation(line: 2889, column: 32, scope: !3809)
!3823 = !DILocation(line: 2889, column: 24, scope: !3809)
!3824 = !DILocation(line: 2890, column: 31, scope: !3809)
!3825 = !DILocation(line: 2890, column: 23, scope: !3809)
!3826 = !DILocation(line: 2891, column: 51, scope: !3809)
!3827 = !DILocation(line: 2891, column: 26, scope: !3809)
!3828 = !DILocation(line: 2892, column: 20, scope: !3809)
!3829 = !DILocation(line: 2892, column: 18, scope: !3809)
!3830 = !DILocation(line: 2883, column: 29, scope: !3810)
!3831 = !DILocation(line: 2883, column: 23, scope: !3810)
!3832 = distinct !{!3832, !3706, !3833, !1202, !1203}
!3833 = !DILocation(line: 2893, column: 11, scope: !3707)
!3834 = !DILocation(line: 2895, column: 21, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 2895, column: 15)
!3836 = !DILocation(line: 2895, column: 15, scope: !3531)
!3837 = !DILocation(line: 2895, column: 28, scope: !3835)
!3838 = !DILocation(line: 0, scope: !1096, inlinedAt: !3839)
!3839 = distinct !DILocation(line: 2897, column: 17, scope: !3531)
!3840 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !3839)
!3841 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !3839)
!3842 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !3839)
!3843 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !3839)
!3844 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !3839)
!3845 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !3839)
!3846 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !3839)
!3847 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !3839)
!3848 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !3839)
!3849 = !DILocation(line: 2898, column: 11, scope: !3531)
!3850 = !DILocation(line: 0, scope: !2229, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 2898, column: 11, scope: !3531)
!3852 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3851)
!3853 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3851)
!3854 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3851)
!3855 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3851)
!3856 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3851)
!3857 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3851)
!3858 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3851)
!3859 = !DILocation(line: 2899, column: 11, scope: !3531)
!3860 = !DILocation(line: 0, scope: !2229, inlinedAt: !3861)
!3861 = distinct !DILocation(line: 2899, column: 11, scope: !3531)
!3862 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3861)
!3863 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3861)
!3864 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3861)
!3865 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3861)
!3866 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3861)
!3867 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3861)
!3868 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3861)
!3869 = !DILocation(line: 2900, column: 11, scope: !3531)
!3870 = !DILocation(line: 0, scope: !2229, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 2900, column: 11, scope: !3531)
!3872 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3871)
!3873 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3871)
!3874 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3871)
!3875 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3871)
!3876 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3871)
!3877 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3871)
!3878 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3871)
!3879 = !DILocation(line: 0, scope: !2229, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 2901, column: 11, scope: !3531)
!3881 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3880)
!3882 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3880)
!3883 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3880)
!3884 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3880)
!3885 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3880)
!3886 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3880)
!3887 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3880)
!3888 = !DILocation(line: 2901, column: 11, scope: !3531)
!3889 = !DILocation(line: 2902, column: 23, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3531, file: !3, line: 2902, column: 15)
!3891 = !DILocation(line: 2902, column: 34, scope: !3890)
!3892 = !DILocation(line: 2902, column: 53, scope: !3890)
!3893 = !DILocation(line: 2903, column: 30, scope: !3890)
!3894 = !DILocation(line: 2903, column: 41, scope: !3890)
!3895 = !DILocation(line: 2902, column: 15, scope: !3531)
!3896 = !DILocation(line: 2905, column: 15, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 2905, column: 15)
!3898 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 2904, column: 13)
!3899 = !DILocation(line: 2907, column: 47, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !3, line: 2906, column: 15)
!3901 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 2905, column: 15)
!3902 = !DILocation(line: 2907, column: 31, scope: !3900)
!3903 = !DILocation(line: 2907, column: 52, scope: !3900)
!3904 = !DILocation(line: 2907, column: 75, scope: !3900)
!3905 = !DILocation(line: 2908, column: 33, scope: !3900)
!3906 = !DILocation(line: 2909, column: 39, scope: !3900)
!3907 = !DILocation(line: 2909, column: 23, scope: !3900)
!3908 = !DILocation(line: 2909, column: 45, scope: !3900)
!3909 = !DILocation(line: 2909, column: 59, scope: !3900)
!3910 = !DILocation(line: 2909, column: 58, scope: !3900)
!3911 = !DILocation(line: 2910, column: 36, scope: !3900)
!3912 = !DILocation(line: 2910, column: 28, scope: !3900)
!3913 = !DILocation(line: 2905, column: 33, scope: !3901)
!3914 = !DILocation(line: 2905, column: 27, scope: !3901)
!3915 = distinct !{!3915, !3896, !3916, !1202, !1203}
!3916 = !DILocation(line: 2911, column: 15, scope: !3897)
!3917 = !DILocation(line: 2912, column: 15, scope: !3918)
!3918 = distinct !DILexicalBlock(scope: !3898, file: !3, line: 2912, column: 15)
!3919 = !DILocation(line: 2912, column: 15, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3918, file: !3, line: 2912, column: 15)
!3921 = !DILocation(line: 0, scope: !2229, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 2912, column: 15, scope: !3920)
!3923 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !3922)
!3924 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !3922)
!3925 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !3922)
!3926 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !3922)
!3927 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !3922)
!3928 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !3922)
!3929 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !3922)
!3930 = !DILocation(line: 2915, column: 56, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3524, file: !3, line: 2915, column: 11)
!3932 = !DILocation(line: 2916, column: 19, scope: !3931)
!3933 = !DILocation(line: 2916, column: 33, scope: !3931)
!3934 = !DILocation(line: 2915, column: 11, scope: !3524)
!3935 = !DILocation(line: 0, scope: !3004, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 2918, column: 34, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 2917, column: 9)
!3938 = !DILocation(line: 0, scope: !3088, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 2918, column: 24, scope: !3937)
!3940 = !DILocation(line: 2922, column: 11, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 2922, column: 11)
!3942 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 2922, column: 11)
!3943 = !DILocation(line: 2922, column: 11, scope: !3942)
!3944 = !DILocation(line: 2920, column: 47, scope: !3937)
!3945 = !DILocation(line: 2920, column: 69, scope: !3937)
!3946 = !DILocation(line: 2920, column: 52, scope: !3937)
!3947 = !DILocation(line: 2921, column: 20, scope: !3937)
!3948 = !DILocation(line: 2920, column: 75, scope: !3937)
!3949 = !DILocation(line: 2921, column: 27, scope: !3937)
!3950 = !DILocation(line: 2924, column: 8, scope: !3524)
!3951 = !DILocation(line: 2833, column: 53, scope: !3525)
!3952 = distinct !{!3952, !3701, !3953, !1202, !1203}
!3953 = !DILocation(line: 2925, column: 5, scope: !3526)
!3954 = !DILocation(line: 2926, column: 9, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 2926, column: 9)
!3956 = !DILocation(line: 2926, column: 61, scope: !3955)
!3957 = !DILocation(line: 2926, column: 9, scope: !3506)
!3958 = !DILocation(line: 2928, column: 16, scope: !3535)
!3959 = !DILocation(line: 2928, column: 33, scope: !3535)
!3960 = !DILocation(line: 2928, column: 9, scope: !3506)
!3961 = !DILocation(line: 2936, column: 64, scope: !3534)
!3962 = !DILocation(line: 0, scope: !2320, inlinedAt: !3963)
!3963 = distinct !DILocation(line: 2936, column: 17, scope: !3534)
!3964 = !DILocation(line: 30, column: 3, scope: !2320, inlinedAt: !3963)
!3965 = !DILocation(line: 31, column: 5, scope: !2320, inlinedAt: !3963)
!3966 = !DILocation(line: 35, column: 10, scope: !2320, inlinedAt: !3963)
!3967 = !DILocation(line: 36, column: 17, scope: !2320, inlinedAt: !3963)
!3968 = !DILocation(line: 36, column: 63, scope: !2320, inlinedAt: !3963)
!3969 = !DILocation(line: 36, column: 10, scope: !2320, inlinedAt: !3963)
!3970 = !DILocation(line: 37, column: 1, scope: !2320, inlinedAt: !3963)
!3971 = !DILocation(line: 0, scope: !3534)
!3972 = !DILocation(line: 2937, column: 21, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 2937, column: 13)
!3974 = !DILocation(line: 2937, column: 13, scope: !3534)
!3975 = !DILocation(line: 2939, column: 7, scope: !3534)
!3976 = !DILocation(line: 2763, column: 48, scope: !3507)
!3977 = distinct !{!3977, !3596, !3978, !1202, !1203}
!3978 = !DILocation(line: 2940, column: 3, scope: !3508)
!3979 = !DILocation(line: 2754, column: 9, scope: !3487)
!3980 = !DILocation(line: 2941, column: 15, scope: !3487)
!3981 = !DILocation(line: 2942, column: 14, scope: !3487)
!3982 = !DILocation(line: 0, scope: !3462, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 2943, column: 17, scope: !3487)
!3984 = !DILocation(line: 2403, column: 27, scope: !3470, inlinedAt: !3983)
!3985 = !DILocation(line: 2403, column: 15, scope: !3470, inlinedAt: !3983)
!3986 = !DILocation(line: 2403, column: 3, scope: !3471, inlinedAt: !3983)
!3987 = !DILocation(line: 2404, column: 9, scope: !3475, inlinedAt: !3983)
!3988 = !DILocation(line: 2404, column: 25, scope: !3475, inlinedAt: !3983)
!3989 = !DILocation(line: 2404, column: 9, scope: !3470, inlinedAt: !3983)
!3990 = !DILocation(line: 2405, column: 44, scope: !3475, inlinedAt: !3983)
!3991 = !DILocation(line: 2405, column: 22, scope: !3475, inlinedAt: !3983)
!3992 = !DILocation(line: 2405, column: 7, scope: !3475, inlinedAt: !3983)
!3993 = !DILocation(line: 2403, column: 68, scope: !3470, inlinedAt: !3983)
!3994 = distinct !{!3994, !3986, !3995, !1202, !1203}
!3995 = !DILocation(line: 2406, column: 24, scope: !3471, inlinedAt: !3983)
!3996 = !DILocation(line: 2407, column: 38, scope: !3462, inlinedAt: !3983)
!3997 = !DILocation(line: 2944, column: 3, scope: !3487)
!3998 = !DILocation(line: 2945, column: 1, scope: !3487)
!3999 = distinct !DISubprogram(name: "SampleImage", scope: !3, file: !3, line: 3096, type: !2087, scopeLine: 3098, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !4000)
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4016, !4027, !4028, !4032, !4033, !4034, !4035, !4036, !4037}
!4001 = !DILocalVariable(name: "image", arg: 1, scope: !3999, file: !3, line: 3096, type: !58)
!4002 = !DILocalVariable(name: "columns", arg: 2, scope: !3999, file: !3, line: 3096, type: !1951)
!4003 = !DILocalVariable(name: "rows", arg: 3, scope: !3999, file: !3, line: 3097, type: !1951)
!4004 = !DILocalVariable(name: "exception", arg: 4, scope: !3999, file: !3, line: 3097, type: !643)
!4005 = !DILocalVariable(name: "image_view", scope: !3999, file: !3, line: 3102, type: !2108)
!4006 = !DILocalVariable(name: "sample_view", scope: !3999, file: !3, line: 3103, type: !2108)
!4007 = !DILocalVariable(name: "sample_image", scope: !3999, file: !3, line: 3106, type: !804)
!4008 = !DILocalVariable(name: "status", scope: !3999, file: !3, line: 3109, type: !152)
!4009 = !DILocalVariable(name: "progress", scope: !3999, file: !3, line: 3112, type: !441)
!4010 = !DILocalVariable(name: "x", scope: !3999, file: !3, line: 3115, type: !218)
!4011 = !DILocalVariable(name: "x_offset", scope: !3999, file: !3, line: 3118, type: !811)
!4012 = !DILocalVariable(name: "y", scope: !3999, file: !3, line: 3119, type: !218)
!4013 = !DILocalVariable(name: "sample_offset", scope: !3999, file: !3, line: 3122, type: !2117)
!4014 = !DILocalVariable(name: "value", scope: !4015, file: !3, line: 3147, type: !438)
!4015 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 3145, column: 3)
!4016 = !DILocalVariable(name: "geometry_info", scope: !4017, file: !3, line: 3153, type: !4019)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 3151, column: 7)
!4018 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 3150, column: 9)
!4019 = !DIDerivedType(tag: DW_TAG_typedef, name: "GeometryInfo", file: !227, line: 112, baseType: !4020)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GeometryInfo", file: !227, line: 104, size: 320, elements: !4021)
!4021 = !{!4022, !4023, !4024, !4025, !4026}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "rho", scope: !4020, file: !227, line: 107, baseType: !178, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "sigma", scope: !4020, file: !227, line: 108, baseType: !178, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "xi", scope: !4020, file: !227, line: 109, baseType: !178, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4020, file: !227, line: 110, baseType: !178, size: 64, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "chi", scope: !4020, file: !227, line: 111, baseType: !178, size: 64, offset: 256)
!4027 = !DILocalVariable(name: "flags", scope: !4017, file: !3, line: 3155, type: !2764)
!4028 = !DILocalVariable(name: "indexes", scope: !4029, file: !3, line: 3191, type: !2496)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 3189, column: 3)
!4030 = distinct !DILexicalBlock(scope: !4031, file: !3, line: 3188, column: 3)
!4031 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 3188, column: 3)
!4032 = !DILocalVariable(name: "p", scope: !4029, file: !3, line: 3194, type: !2498)
!4033 = !DILocalVariable(name: "sample_indexes", scope: !4029, file: !3, line: 3197, type: !2130)
!4034 = !DILocalVariable(name: "q", scope: !4029, file: !3, line: 3200, type: !2132)
!4035 = !DILocalVariable(name: "x", scope: !4029, file: !3, line: 3203, type: !218)
!4036 = !DILocalVariable(name: "y_offset", scope: !4029, file: !3, line: 3206, type: !218)
!4037 = !DILocalVariable(name: "proceed", scope: !4038, file: !3, line: 3237, type: !152)
!4038 = distinct !DILexicalBlock(scope: !4039, file: !3, line: 3235, column: 7)
!4039 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 3234, column: 9)
!4040 = !DILocation(line: 0, scope: !3999)
!4041 = !DILocation(line: 3129, column: 14, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 3129, column: 7)
!4043 = !DILocation(line: 3129, column: 20, scope: !4042)
!4044 = !DILocation(line: 3129, column: 7, scope: !3999)
!4045 = !DILocation(line: 3130, column: 68, scope: !4042)
!4046 = !DILocation(line: 3130, column: 12, scope: !4042)
!4047 = !DILocation(line: 3130, column: 5, scope: !4042)
!4048 = !DILocation(line: 3133, column: 16, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 3133, column: 7)
!4050 = !DILocation(line: 3133, column: 22, scope: !4049)
!4051 = !DILocation(line: 3134, column: 5, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 3134, column: 5)
!4053 = !DILocation(line: 3135, column: 26, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 3135, column: 7)
!4055 = !DILocation(line: 3135, column: 16, scope: !4054)
!4056 = !DILocation(line: 3135, column: 35, scope: !4054)
!4057 = !DILocation(line: 3135, column: 54, scope: !4054)
!4058 = !DILocation(line: 3135, column: 44, scope: !4054)
!4059 = !DILocation(line: 3135, column: 7, scope: !3999)
!4060 = !DILocation(line: 3136, column: 12, scope: !4054)
!4061 = !DILocation(line: 3136, column: 5, scope: !4054)
!4062 = !DILocation(line: 3137, column: 16, scope: !3999)
!4063 = !DILocation(line: 3138, column: 20, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 3138, column: 7)
!4065 = !DILocation(line: 3138, column: 7, scope: !3999)
!4066 = !DILocation(line: 3149, column: 11, scope: !4015)
!4067 = !DILocation(line: 0, scope: !4015)
!4068 = !DILocation(line: 3150, column: 15, scope: !4018)
!4069 = !DILocation(line: 3150, column: 9, scope: !4015)
!4070 = !DILocation(line: 3152, column: 9, scope: !4017)
!4071 = !DILocation(line: 3153, column: 11, scope: !4017)
!4072 = !DILocation(line: 3157, column: 16, scope: !4017)
!4073 = !DILocation(line: 3158, column: 15, scope: !4017)
!4074 = !DILocation(line: 0, scope: !4017)
!4075 = !DILocation(line: 3159, column: 55, scope: !4017)
!4076 = !{!4077, !952, i64 0}
!4077 = !{!"_GeometryInfo", !952, i64 0, !952, i64 8, !952, i64 16, !952, i64 24, !952, i64 32}
!4078 = !DILocation(line: 3159, column: 58, scope: !4017)
!4079 = !DILocation(line: 3159, column: 64, scope: !4017)
!4080 = !DILocation(line: 3160, column: 20, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4017, file: !3, line: 3160, column: 13)
!4082 = !DILocation(line: 3160, column: 34, scope: !4081)
!4083 = !DILocation(line: 3160, column: 13, scope: !4017)
!4084 = !DILocation(line: 3161, column: 41, scope: !4081)
!4085 = !{!4077, !952, i64 8}
!4086 = !DILocation(line: 3161, column: 46, scope: !4081)
!4087 = !DILocation(line: 3161, column: 52, scope: !4081)
!4088 = !DILocation(line: 3161, column: 11, scope: !4081)
!4089 = !DILocation(line: 3162, column: 7, scope: !4018)
!4090 = !DILocation(line: 3162, column: 7, scope: !4017)
!4091 = !DILocation(line: 3167, column: 68, scope: !3999)
!4092 = !DILocation(line: 3167, column: 24, scope: !3999)
!4093 = !DILocation(line: 3169, column: 16, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 3169, column: 7)
!4095 = !DILocation(line: 3169, column: 7, scope: !3999)
!4096 = !DILocation(line: 3174, column: 41, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !3, line: 3174, column: 3)
!4098 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 3174, column: 3)
!4099 = !DILocation(line: 3174, column: 15, scope: !4097)
!4100 = !DILocation(line: 3174, column: 3, scope: !4098)
!4101 = !DILocation(line: 3171, column: 20, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4094, file: !3, line: 3170, column: 5)
!4103 = !DILocation(line: 3172, column: 7, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 3172, column: 7)
!4105 = !DILocation(line: 3175, column: 30, scope: !4097)
!4106 = !DILocation(line: 3175, column: 40, scope: !4097)
!4107 = !DILocation(line: 3175, column: 65, scope: !4097)
!4108 = !DILocation(line: 3175, column: 58, scope: !4097)
!4109 = !DILocation(line: 3175, column: 57, scope: !4097)
!4110 = !DILocation(line: 3176, column: 51, scope: !4097)
!4111 = !DILocation(line: 3175, column: 73, scope: !4097)
!4112 = !DILocation(line: 3175, column: 17, scope: !4097)
!4113 = !DILocation(line: 3175, column: 5, scope: !4097)
!4114 = !DILocation(line: 3175, column: 16, scope: !4097)
!4115 = !{!948, !948, i64 0}
!4116 = !DILocation(line: 3174, column: 51, scope: !4097)
!4117 = distinct !{!4117, !4100, !4118, !1202, !1203}
!4118 = !DILocation(line: 3176, column: 72, scope: !4098)
!4119 = !DILocation(line: 3182, column: 14, scope: !3999)
!4120 = !DILocation(line: 3183, column: 15, scope: !3999)
!4121 = !DILocation(line: 3188, column: 41, scope: !4030)
!4122 = !DILocation(line: 3188, column: 15, scope: !4030)
!4123 = !DILocation(line: 3188, column: 3, scope: !4031)
!4124 = !DILocation(line: 3208, column: 16, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 3208, column: 9)
!4126 = !DILocation(line: 3208, column: 9, scope: !4029)
!4127 = !DILocation(line: 3210, column: 27, scope: !4029)
!4128 = !DILocation(line: 3210, column: 37, scope: !4029)
!4129 = !DILocation(line: 3210, column: 62, scope: !4029)
!4130 = !DILocation(line: 3210, column: 55, scope: !4029)
!4131 = !DILocation(line: 3210, column: 54, scope: !4029)
!4132 = !DILocation(line: 3211, column: 48, scope: !4029)
!4133 = !DILocation(line: 3210, column: 67, scope: !4029)
!4134 = !DILocation(line: 3210, column: 14, scope: !4029)
!4135 = !DILocation(line: 0, scope: !4029)
!4136 = !DILocation(line: 3212, column: 62, scope: !4029)
!4137 = !DILocation(line: 3212, column: 7, scope: !4029)
!4138 = !DILocation(line: 3214, column: 67, scope: !4029)
!4139 = !DILocation(line: 3214, column: 7, scope: !4029)
!4140 = !DILocation(line: 3216, column: 12, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 3216, column: 9)
!4142 = !DILocation(line: 3216, column: 43, scope: !4141)
!4143 = !DILocation(line: 3221, column: 13, scope: !4029)
!4144 = !DILocation(line: 3222, column: 20, scope: !4029)
!4145 = !DILocation(line: 3226, column: 43, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !3, line: 3226, column: 5)
!4147 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 3226, column: 5)
!4148 = !DILocation(line: 3226, column: 17, scope: !4146)
!4149 = !DILocation(line: 3226, column: 5, scope: !4147)
!4150 = !DILocation(line: 3227, column: 9, scope: !4146)
!4151 = !DILocation(line: 3227, column: 14, scope: !4146)
!4152 = !DILocation(line: 3227, column: 12, scope: !4146)
!4153 = !DILocation(line: 3226, column: 53, scope: !4146)
!4154 = distinct !{!4154, !4149, !4155, !1202, !1203}
!4155 = !DILocation(line: 3227, column: 25, scope: !4147)
!4156 = !DILocation(line: 3228, column: 17, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 3228, column: 9)
!4158 = !DILocation(line: 3228, column: 31, scope: !4157)
!4159 = !DILocation(line: 3228, column: 47, scope: !4157)
!4160 = !DILocation(line: 3229, column: 17, scope: !4157)
!4161 = !DILocation(line: 3229, column: 28, scope: !4157)
!4162 = !DILocation(line: 3228, column: 9, scope: !4029)
!4163 = !DILocation(line: 3230, column: 19, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 3230, column: 7)
!4165 = distinct !DILexicalBlock(scope: !4157, file: !3, line: 3230, column: 7)
!4166 = !DILocation(line: 3230, column: 7, scope: !4165)
!4167 = !DILocation(line: 3231, column: 9, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 3231, column: 9)
!4169 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 3231, column: 9)
!4170 = !DILocation(line: 3232, column: 9, scope: !4171)
!4171 = distinct !DILexicalBlock(scope: !4029, file: !3, line: 3232, column: 9)
!4172 = !DILocation(line: 3230, column: 55, scope: !4164)
!4173 = distinct !{!4173, !4166, !4174, !1202, !1203}
!4174 = !DILocation(line: 3231, column: 9, scope: !4165)
!4175 = !DILocation(line: 3232, column: 61, scope: !4171)
!4176 = !DILocation(line: 3232, column: 9, scope: !4029)
!4177 = !DILocation(line: 3234, column: 16, scope: !4039)
!4178 = !DILocation(line: 3234, column: 33, scope: !4039)
!4179 = !DILocation(line: 3234, column: 9, scope: !4029)
!4180 = !DILocation(line: 3242, column: 63, scope: !4038)
!4181 = !DILocation(line: 3242, column: 73, scope: !4038)
!4182 = !DILocation(line: 0, scope: !2320, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 3242, column: 17, scope: !4038)
!4184 = !DILocation(line: 30, column: 3, scope: !2320, inlinedAt: !4183)
!4185 = !DILocation(line: 31, column: 5, scope: !2320, inlinedAt: !4183)
!4186 = !DILocation(line: 35, column: 10, scope: !2320, inlinedAt: !4183)
!4187 = !DILocation(line: 36, column: 17, scope: !2320, inlinedAt: !4183)
!4188 = !DILocation(line: 36, column: 63, scope: !2320, inlinedAt: !4183)
!4189 = !DILocation(line: 36, column: 10, scope: !2320, inlinedAt: !4183)
!4190 = !DILocation(line: 37, column: 1, scope: !2320, inlinedAt: !4183)
!4191 = !DILocation(line: 0, scope: !4038)
!4192 = !DILocation(line: 3243, column: 21, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 3243, column: 13)
!4194 = !DILocation(line: 3243, column: 13, scope: !4038)
!4195 = !DILocation(line: 3245, column: 7, scope: !4038)
!4196 = !DILocation(line: 3188, column: 48, scope: !4030)
!4197 = distinct !{!4197, !4123, !4198, !1202, !1203}
!4198 = !DILocation(line: 3246, column: 3, scope: !4031)
!4199 = !DILocation(line: 3180, column: 9, scope: !3999)
!4200 = !DILocation(line: 3247, column: 14, scope: !3999)
!4201 = !DILocation(line: 3248, column: 15, scope: !3999)
!4202 = !DILocation(line: 3249, column: 24, scope: !3999)
!4203 = !DILocation(line: 3250, column: 29, scope: !3999)
!4204 = !DILocation(line: 3250, column: 17, scope: !3999)
!4205 = !DILocation(line: 3250, column: 21, scope: !3999)
!4206 = !DILocation(line: 3251, column: 14, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 3251, column: 7)
!4208 = !DILocation(line: 3251, column: 7, scope: !3999)
!4209 = !DILocation(line: 3252, column: 18, scope: !4207)
!4210 = !DILocation(line: 3252, column: 5, scope: !4207)
!4211 = !DILocation(line: 3254, column: 1, scope: !3999)
!4212 = !DISubprogram(name: "ParseGeometry", scope: !227, file: !227, line: 143, type: !4213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!2764, !438, !4215}
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4216 = !DISubprogram(name: "AcquireQuantumMemory", scope: !1954, file: !1954, line: 42, type: !4217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!204, !1951, !1951}
!4219 = distinct !DISubprogram(name: "ScaleImage", scope: !3, file: !3, line: 3285, type: !2087, scopeLine: 3287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !4220)
!4220 = !{!4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4248, !4249, !4250, !4252, !4253, !4254}
!4221 = !DILocalVariable(name: "image", arg: 1, scope: !4219, file: !3, line: 3285, type: !58)
!4222 = !DILocalVariable(name: "columns", arg: 2, scope: !4219, file: !3, line: 3285, type: !1951)
!4223 = !DILocalVariable(name: "rows", arg: 3, scope: !4219, file: !3, line: 3286, type: !1951)
!4224 = !DILocalVariable(name: "exception", arg: 4, scope: !4219, file: !3, line: 3286, type: !643)
!4225 = !DILocalVariable(name: "image_view", scope: !4219, file: !3, line: 3291, type: !2108)
!4226 = !DILocalVariable(name: "scale_view", scope: !4219, file: !3, line: 3292, type: !2108)
!4227 = !DILocalVariable(name: "scale_image", scope: !4219, file: !3, line: 3295, type: !804)
!4228 = !DILocalVariable(name: "next_column", scope: !4219, file: !3, line: 3298, type: !152)
!4229 = !DILocalVariable(name: "next_row", scope: !4219, file: !3, line: 3299, type: !152)
!4230 = !DILocalVariable(name: "proceed", scope: !4219, file: !3, line: 3300, type: !152)
!4231 = !DILocalVariable(name: "status", scope: !4219, file: !3, line: 3301, type: !152)
!4232 = !DILocalVariable(name: "pixel", scope: !4219, file: !3, line: 3304, type: !814)
!4233 = !DILocalVariable(name: "scale_scanline", scope: !4219, file: !3, line: 3305, type: !813)
!4234 = !DILocalVariable(name: "scanline", scope: !4219, file: !3, line: 3306, type: !813)
!4235 = !DILocalVariable(name: "x_vector", scope: !4219, file: !3, line: 3307, type: !813)
!4236 = !DILocalVariable(name: "y_vector", scope: !4219, file: !3, line: 3308, type: !813)
!4237 = !DILocalVariable(name: "zero", scope: !4219, file: !3, line: 3309, type: !814)
!4238 = !DILocalVariable(name: "alpha", scope: !4219, file: !3, line: 3312, type: !15)
!4239 = !DILocalVariable(name: "scale", scope: !4219, file: !3, line: 3315, type: !2117)
!4240 = !DILocalVariable(name: "span", scope: !4219, file: !3, line: 3316, type: !2117)
!4241 = !DILocalVariable(name: "i", scope: !4219, file: !3, line: 3319, type: !218)
!4242 = !DILocalVariable(name: "number_rows", scope: !4219, file: !3, line: 3322, type: !218)
!4243 = !DILocalVariable(name: "y", scope: !4219, file: !3, line: 3323, type: !218)
!4244 = !DILocalVariable(name: "indexes", scope: !4245, file: !3, line: 3386, type: !2496)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 3384, column: 3)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !3, line: 3383, column: 3)
!4247 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3383, column: 3)
!4248 = !DILocalVariable(name: "p", scope: !4245, file: !3, line: 3389, type: !2498)
!4249 = !DILocalVariable(name: "scale_indexes", scope: !4245, file: !3, line: 3392, type: !2130)
!4250 = !DILocalVariable(name: "s", scope: !4245, file: !3, line: 3395, type: !4251)
!4251 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !813)
!4252 = !DILocalVariable(name: "t", scope: !4245, file: !3, line: 3396, type: !4251)
!4253 = !DILocalVariable(name: "q", scope: !4245, file: !3, line: 3399, type: !2132)
!4254 = !DILocalVariable(name: "x", scope: !4245, file: !3, line: 3402, type: !218)
!4255 = !DILocation(line: 0, scope: !4219)
!4256 = !DILocation(line: 3303, column: 3, scope: !4219)
!4257 = !DILocation(line: 3304, column: 5, scope: !4219)
!4258 = !DILocation(line: 3309, column: 5, scope: !4219)
!4259 = !DILocation(line: 3330, column: 14, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3330, column: 7)
!4261 = !DILocation(line: 3330, column: 20, scope: !4260)
!4262 = !DILocation(line: 3330, column: 7, scope: !4219)
!4263 = !DILocation(line: 3331, column: 68, scope: !4260)
!4264 = !DILocation(line: 3331, column: 12, scope: !4260)
!4265 = !DILocation(line: 3331, column: 5, scope: !4260)
!4266 = !DILocation(line: 3334, column: 16, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3334, column: 7)
!4268 = !DILocation(line: 3334, column: 22, scope: !4267)
!4269 = !DILocation(line: 3336, column: 26, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3336, column: 7)
!4271 = !DILocation(line: 3336, column: 16, scope: !4270)
!4272 = !DILocation(line: 3336, column: 35, scope: !4270)
!4273 = !DILocation(line: 3336, column: 54, scope: !4270)
!4274 = !DILocation(line: 3336, column: 44, scope: !4270)
!4275 = !DILocation(line: 3336, column: 7, scope: !4219)
!4276 = !DILocation(line: 3337, column: 12, scope: !4270)
!4277 = !DILocation(line: 3337, column: 5, scope: !4270)
!4278 = !DILocation(line: 3338, column: 15, scope: !4219)
!4279 = !DILocation(line: 3339, column: 19, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3339, column: 7)
!4281 = !DILocation(line: 3339, column: 7, scope: !4219)
!4282 = !DILocation(line: 3341, column: 7, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3341, column: 7)
!4284 = !DILocation(line: 3341, column: 53, scope: !4283)
!4285 = !DILocation(line: 3341, column: 7, scope: !4219)
!4286 = !DILocation(line: 3343, column: 48, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 3342, column: 5)
!4288 = !DILocation(line: 3343, column: 7, scope: !4287)
!4289 = !DILocation(line: 3344, column: 19, scope: !4287)
!4290 = !DILocation(line: 3345, column: 7, scope: !4287)
!4291 = !DILocation(line: 3350, column: 71, scope: !4219)
!4292 = !DILocation(line: 3350, column: 34, scope: !4219)
!4293 = !DILocation(line: 3353, column: 14, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3353, column: 7)
!4295 = !DILocation(line: 3353, column: 35, scope: !4294)
!4296 = !DILocation(line: 3353, column: 19, scope: !4294)
!4297 = !DILocation(line: 3353, column: 7, scope: !4219)
!4298 = !DILocation(line: 3354, column: 73, scope: !4294)
!4299 = !DILocation(line: 3354, column: 36, scope: !4294)
!4300 = !DILocation(line: 3354, column: 5, scope: !4294)
!4301 = !DILocation(line: 3357, column: 18, scope: !4219)
!4302 = !DILocation(line: 3356, column: 40, scope: !4219)
!4303 = !DILocation(line: 3358, column: 71, scope: !4219)
!4304 = !DILocation(line: 3358, column: 34, scope: !4219)
!4305 = !DILocation(line: 3360, column: 17, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3360, column: 7)
!4307 = !DILocation(line: 3360, column: 48, scope: !4306)
!4308 = !DILocation(line: 3365, column: 19, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 3364, column: 5)
!4310 = !DILocation(line: 3366, column: 7, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4309, file: !3, line: 3366, column: 7)
!4312 = !DILocation(line: 3374, column: 33, scope: !4219)
!4313 = !DILocation(line: 3374, column: 54, scope: !4219)
!4314 = !DILocation(line: 3375, column: 55, scope: !4219)
!4315 = !DILocation(line: 3375, column: 62, scope: !4219)
!4316 = !DILocation(line: 3375, column: 10, scope: !4219)
!4317 = !DILocation(line: 3377, column: 3, scope: !4219)
!4318 = !DILocation(line: 3378, column: 10, scope: !4219)
!4319 = !DILocation(line: 3381, column: 14, scope: !4219)
!4320 = !DILocation(line: 3382, column: 14, scope: !4219)
!4321 = !DILocation(line: 35, column: 70, scope: !2320, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 3677, column: 13, scope: !4245)
!4323 = !DILocation(line: 3383, column: 40, scope: !4246)
!4324 = !DILocation(line: 3383, column: 15, scope: !4246)
!4325 = !DILocation(line: 3383, column: 3, scope: !4247)
!4326 = !DILocation(line: 3374, column: 11, scope: !4219)
!4327 = !DILocation(line: 3374, column: 38, scope: !4219)
!4328 = !DILocation(line: 3374, column: 37, scope: !4219)
!4329 = !DILocation(line: 3404, column: 16, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 3404, column: 9)
!4331 = !DILocation(line: 3404, column: 9, scope: !4245)
!4332 = !DILocation(line: 3406, column: 65, scope: !4245)
!4333 = !DILocation(line: 3406, column: 7, scope: !4245)
!4334 = !DILocation(line: 0, scope: !4245)
!4335 = !DILocation(line: 3408, column: 11, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 3408, column: 9)
!4337 = !DILocation(line: 3408, column: 9, scope: !4245)
!4338 = !DILocation(line: 3414, column: 19, scope: !4245)
!4339 = !DILocation(line: 3415, column: 22, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 3415, column: 9)
!4341 = !DILocation(line: 3415, column: 37, scope: !4340)
!4342 = !DILocation(line: 3415, column: 27, scope: !4340)
!4343 = !DILocation(line: 3415, column: 9, scope: !4245)
!4344 = !DILocation(line: 3447, column: 24, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 3443, column: 7)
!4346 = !DILocation(line: 3447, column: 9, scope: !4345)
!4347 = !DILocation(line: 3420, column: 51, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4340, file: !3, line: 3416, column: 7)
!4349 = !DILocation(line: 3420, column: 61, scope: !4348)
!4350 = !DILocation(line: 3420, column: 11, scope: !4348)
!4351 = !DILocation(line: 3422, column: 15, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 3422, column: 13)
!4353 = !DILocation(line: 3422, column: 13, scope: !4348)
!4354 = !DILocation(line: 3427, column: 17, scope: !4348)
!4355 = !DILocation(line: 3428, column: 21, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 3428, column: 9)
!4357 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 3428, column: 9)
!4358 = !DILocation(line: 3428, column: 9, scope: !4357)
!4359 = !DILocation(line: 3430, column: 15, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 3429, column: 9)
!4361 = !DILocation(line: 3431, column: 32, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 3430, column: 15)
!4363 = !DILocation(line: 3431, column: 31, scope: !4362)
!4364 = !DILocation(line: 3431, column: 19, scope: !4362)
!4365 = !DILocation(line: 3431, column: 13, scope: !4362)
!4366 = !DILocation(line: 3432, column: 51, scope: !4360)
!4367 = !DILocation(line: 3432, column: 50, scope: !4360)
!4368 = !DILocation(line: 3432, column: 23, scope: !4360)
!4369 = !DILocation(line: 3432, column: 26, scope: !4360)
!4370 = !DILocation(line: 3433, column: 53, scope: !4360)
!4371 = !DILocation(line: 3433, column: 52, scope: !4360)
!4372 = !DILocation(line: 3433, column: 23, scope: !4360)
!4373 = !DILocation(line: 3433, column: 28, scope: !4360)
!4374 = !DILocation(line: 3434, column: 52, scope: !4360)
!4375 = !DILocation(line: 3434, column: 51, scope: !4360)
!4376 = !DILocation(line: 3434, column: 23, scope: !4360)
!4377 = !DILocation(line: 3434, column: 27, scope: !4360)
!4378 = !DILocation(line: 3435, column: 15, scope: !4360)
!4379 = !DILocation(line: 3436, column: 50, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 3435, column: 15)
!4381 = !DILocation(line: 3436, column: 33, scope: !4380)
!4382 = !DILocation(line: 3436, column: 25, scope: !4380)
!4383 = !DILocation(line: 3436, column: 32, scope: !4380)
!4384 = !DILocation(line: 3436, column: 13, scope: !4380)
!4385 = !DILocation(line: 3437, column: 15, scope: !4360)
!4386 = !DILocation(line: 3438, column: 55, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 3437, column: 15)
!4388 = !DILocation(line: 3438, column: 54, scope: !4387)
!4389 = !DILocation(line: 3438, column: 25, scope: !4387)
!4390 = !DILocation(line: 3438, column: 30, scope: !4387)
!4391 = !DILocation(line: 3438, column: 13, scope: !4387)
!4392 = !DILocation(line: 3439, column: 12, scope: !4360)
!4393 = !DILocation(line: 3428, column: 50, scope: !4356)
!4394 = distinct !{!4394, !4358, !4395, !1202, !1203}
!4395 = !DILocation(line: 3440, column: 9, scope: !4357)
!4396 = !DILocation(line: 3449, column: 25, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 3449, column: 15)
!4398 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 3448, column: 9)
!4399 = !DILocation(line: 3449, column: 41, scope: !4397)
!4400 = !DILocation(line: 3455, column: 57, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 3451, column: 13)
!4402 = !DILocation(line: 3455, column: 67, scope: !4401)
!4403 = !DILocation(line: 3455, column: 17, scope: !4401)
!4404 = !DILocation(line: 3457, column: 21, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 3457, column: 19)
!4406 = !DILocation(line: 3457, column: 19, scope: !4401)
!4407 = !DILocation(line: 3462, column: 23, scope: !4401)
!4408 = !DILocation(line: 3463, column: 27, scope: !4409)
!4409 = distinct !DILexicalBlock(scope: !4410, file: !3, line: 3463, column: 15)
!4410 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 3463, column: 15)
!4411 = !DILocation(line: 3463, column: 15, scope: !4410)
!4412 = !DILocation(line: 3465, column: 21, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4409, file: !3, line: 3464, column: 15)
!4414 = !DILocation(line: 3466, column: 38, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 3465, column: 21)
!4416 = !DILocation(line: 3466, column: 37, scope: !4415)
!4417 = !DILocation(line: 3466, column: 25, scope: !4415)
!4418 = !DILocation(line: 3466, column: 19, scope: !4415)
!4419 = !DILocation(line: 3467, column: 57, scope: !4413)
!4420 = !DILocation(line: 3467, column: 56, scope: !4413)
!4421 = !DILocation(line: 3467, column: 29, scope: !4413)
!4422 = !DILocation(line: 3467, column: 32, scope: !4413)
!4423 = !DILocation(line: 3468, column: 59, scope: !4413)
!4424 = !DILocation(line: 3468, column: 58, scope: !4413)
!4425 = !DILocation(line: 3468, column: 29, scope: !4413)
!4426 = !DILocation(line: 3468, column: 34, scope: !4413)
!4427 = !DILocation(line: 3469, column: 58, scope: !4413)
!4428 = !DILocation(line: 3469, column: 57, scope: !4413)
!4429 = !DILocation(line: 3469, column: 29, scope: !4413)
!4430 = !DILocation(line: 3469, column: 33, scope: !4413)
!4431 = !DILocation(line: 3470, column: 21, scope: !4413)
!4432 = !DILocation(line: 3471, column: 56, scope: !4433)
!4433 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 3470, column: 21)
!4434 = !DILocation(line: 3471, column: 39, scope: !4433)
!4435 = !DILocation(line: 3471, column: 31, scope: !4433)
!4436 = !DILocation(line: 3471, column: 38, scope: !4433)
!4437 = !DILocation(line: 3471, column: 19, scope: !4433)
!4438 = !DILocation(line: 3472, column: 21, scope: !4413)
!4439 = !DILocation(line: 3474, column: 21, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4413, file: !3, line: 3472, column: 21)
!4441 = !DILocation(line: 3473, column: 60, scope: !4440)
!4442 = !DILocation(line: 3473, column: 31, scope: !4440)
!4443 = !DILocation(line: 3473, column: 36, scope: !4440)
!4444 = !DILocation(line: 3473, column: 19, scope: !4440)
!4445 = !DILocation(line: 3475, column: 18, scope: !4413)
!4446 = !DILocation(line: 3463, column: 56, scope: !4409)
!4447 = distinct !{!4447, !4411, !4448, !1202, !1203}
!4448 = !DILocation(line: 3476, column: 15, scope: !4410)
!4449 = !DILocation(line: 3477, column: 26, scope: !4401)
!4450 = !DILocation(line: 3478, column: 13, scope: !4401)
!4451 = !DILocation(line: 3413, column: 10, scope: !4245)
!4452 = !DILocation(line: 3479, column: 23, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 3479, column: 11)
!4454 = distinct !DILexicalBlock(scope: !4398, file: !3, line: 3479, column: 11)
!4455 = !DILocation(line: 3479, column: 11, scope: !4454)
!4456 = !DILocation(line: 3481, column: 50, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4453, file: !3, line: 3480, column: 11)
!4458 = !DILocation(line: 3481, column: 38, scope: !4457)
!4459 = !DILocation(line: 3481, column: 25, scope: !4457)
!4460 = !DILocation(line: 3481, column: 28, scope: !4457)
!4461 = !DILocation(line: 3482, column: 52, scope: !4457)
!4462 = !DILocation(line: 3482, column: 40, scope: !4457)
!4463 = !DILocation(line: 3482, column: 25, scope: !4457)
!4464 = !DILocation(line: 3482, column: 30, scope: !4457)
!4465 = !DILocation(line: 3483, column: 51, scope: !4457)
!4466 = !DILocation(line: 3483, column: 39, scope: !4457)
!4467 = !DILocation(line: 3483, column: 25, scope: !4457)
!4468 = !DILocation(line: 3483, column: 29, scope: !4457)
!4469 = !DILocation(line: 3484, column: 17, scope: !4457)
!4470 = !DILocation(line: 3485, column: 56, scope: !4471)
!4471 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 3484, column: 17)
!4472 = !DILocation(line: 3485, column: 44, scope: !4471)
!4473 = !DILocation(line: 3485, column: 27, scope: !4471)
!4474 = !DILocation(line: 3485, column: 34, scope: !4471)
!4475 = !DILocation(line: 3485, column: 15, scope: !4471)
!4476 = !DILocation(line: 3486, column: 17, scope: !4457)
!4477 = !DILocation(line: 3487, column: 54, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4457, file: !3, line: 3486, column: 17)
!4479 = !DILocation(line: 3487, column: 42, scope: !4478)
!4480 = !DILocation(line: 3487, column: 27, scope: !4478)
!4481 = !DILocation(line: 3487, column: 32, scope: !4478)
!4482 = !DILocation(line: 3487, column: 15, scope: !4478)
!4483 = !DILocation(line: 3479, column: 52, scope: !4453)
!4484 = distinct !{!4484, !4455, !4485, !1202, !1203}
!4485 = !DILocation(line: 3488, column: 11, scope: !4454)
!4486 = !DILocation(line: 3489, column: 17, scope: !4398)
!4487 = !DILocation(line: 3490, column: 41, scope: !4398)
!4488 = !DILocation(line: 3490, column: 19, scope: !4398)
!4489 = !DILocation(line: 3490, column: 62, scope: !4398)
!4490 = !DILocation(line: 3490, column: 46, scope: !4398)
!4491 = !DILocation(line: 3490, column: 45, scope: !4398)
!4492 = distinct !{!4492, !4346, !4493, !1202, !1203}
!4493 = !DILocation(line: 3492, column: 9, scope: !4345)
!4494 = !DILocation(line: 3493, column: 23, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 3493, column: 13)
!4496 = !DILocation(line: 3493, column: 39, scope: !4495)
!4497 = !DILocation(line: 3493, column: 74, scope: !4495)
!4498 = !DILocation(line: 3493, column: 55, scope: !4495)
!4499 = !DILocation(line: 3493, column: 13, scope: !4345)
!4500 = !DILocation(line: 3498, column: 55, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 3494, column: 11)
!4502 = !DILocation(line: 3498, column: 65, scope: !4501)
!4503 = !DILocation(line: 3498, column: 15, scope: !4501)
!4504 = !DILocation(line: 3500, column: 19, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 3500, column: 17)
!4506 = !DILocation(line: 3500, column: 17, scope: !4501)
!4507 = !DILocation(line: 3505, column: 21, scope: !4501)
!4508 = !DILocation(line: 3506, column: 25, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 3506, column: 13)
!4510 = distinct !DILexicalBlock(scope: !4501, file: !3, line: 3506, column: 13)
!4511 = !DILocation(line: 3506, column: 13, scope: !4510)
!4512 = !DILocation(line: 3508, column: 19, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 3507, column: 13)
!4514 = !DILocation(line: 3509, column: 36, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 3508, column: 19)
!4516 = !DILocation(line: 3509, column: 35, scope: !4515)
!4517 = !DILocation(line: 3509, column: 23, scope: !4515)
!4518 = !DILocation(line: 3509, column: 17, scope: !4515)
!4519 = !DILocation(line: 3510, column: 55, scope: !4513)
!4520 = !DILocation(line: 3510, column: 54, scope: !4513)
!4521 = !DILocation(line: 3510, column: 27, scope: !4513)
!4522 = !DILocation(line: 3510, column: 30, scope: !4513)
!4523 = !DILocation(line: 3511, column: 57, scope: !4513)
!4524 = !DILocation(line: 3511, column: 56, scope: !4513)
!4525 = !DILocation(line: 3511, column: 27, scope: !4513)
!4526 = !DILocation(line: 3511, column: 32, scope: !4513)
!4527 = !DILocation(line: 3512, column: 56, scope: !4513)
!4528 = !DILocation(line: 3512, column: 55, scope: !4513)
!4529 = !DILocation(line: 3512, column: 27, scope: !4513)
!4530 = !DILocation(line: 3512, column: 31, scope: !4513)
!4531 = !DILocation(line: 3513, column: 19, scope: !4513)
!4532 = !DILocation(line: 3514, column: 54, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 3513, column: 19)
!4534 = !DILocation(line: 3514, column: 37, scope: !4533)
!4535 = !DILocation(line: 3514, column: 29, scope: !4533)
!4536 = !DILocation(line: 3514, column: 36, scope: !4533)
!4537 = !DILocation(line: 3514, column: 17, scope: !4533)
!4538 = !DILocation(line: 3515, column: 19, scope: !4513)
!4539 = !DILocation(line: 3517, column: 19, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4513, file: !3, line: 3515, column: 19)
!4541 = !DILocation(line: 3516, column: 58, scope: !4540)
!4542 = !DILocation(line: 3516, column: 29, scope: !4540)
!4543 = !DILocation(line: 3516, column: 34, scope: !4540)
!4544 = !DILocation(line: 3516, column: 17, scope: !4540)
!4545 = !DILocation(line: 3518, column: 16, scope: !4513)
!4546 = !DILocation(line: 3506, column: 54, scope: !4509)
!4547 = distinct !{!4547, !4511, !4548, !1202, !1203}
!4548 = !DILocation(line: 3519, column: 13, scope: !4510)
!4549 = !DILocation(line: 3520, column: 24, scope: !4501)
!4550 = !DILocation(line: 3522, column: 11, scope: !4501)
!4551 = !DILocation(line: 0, scope: !4345)
!4552 = !DILocation(line: 3524, column: 40, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !3, line: 3524, column: 9)
!4554 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 3524, column: 9)
!4555 = !DILocation(line: 3524, column: 21, scope: !4553)
!4556 = !DILocation(line: 3524, column: 9, scope: !4554)
!4557 = !DILocation(line: 3526, column: 21, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 3525, column: 9)
!4559 = !DILocation(line: 3526, column: 33, scope: !4558)
!4560 = !DILocation(line: 3526, column: 56, scope: !4558)
!4561 = !DILocation(line: 3526, column: 44, scope: !4558)
!4562 = !DILocation(line: 3526, column: 36, scope: !4558)
!4563 = !DILocation(line: 3526, column: 20, scope: !4558)
!4564 = !DILocation(line: 3527, column: 35, scope: !4558)
!4565 = !DILocation(line: 3527, column: 23, scope: !4558)
!4566 = !DILocation(line: 3527, column: 60, scope: !4558)
!4567 = !DILocation(line: 3527, column: 48, scope: !4558)
!4568 = !DILocation(line: 3527, column: 40, scope: !4558)
!4569 = !DILocation(line: 3527, column: 22, scope: !4558)
!4570 = !DILocation(line: 3528, column: 34, scope: !4558)
!4571 = !DILocation(line: 3528, column: 22, scope: !4558)
!4572 = !DILocation(line: 3528, column: 58, scope: !4558)
!4573 = !DILocation(line: 3528, column: 46, scope: !4558)
!4574 = !DILocation(line: 3528, column: 38, scope: !4558)
!4575 = !DILocation(line: 3528, column: 21, scope: !4558)
!4576 = !DILocation(line: 3529, column: 22, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 3529, column: 15)
!4578 = !DILocation(line: 3529, column: 28, scope: !4577)
!4579 = !DILocation(line: 3529, column: 15, scope: !4558)
!4580 = !DILocation(line: 3530, column: 39, scope: !4577)
!4581 = !DILocation(line: 3530, column: 27, scope: !4577)
!4582 = !DILocation(line: 3530, column: 66, scope: !4577)
!4583 = !DILocation(line: 3530, column: 54, scope: !4577)
!4584 = !DILocation(line: 3530, column: 46, scope: !4577)
!4585 = !DILocation(line: 3530, column: 26, scope: !4577)
!4586 = !DILocation(line: 3530, column: 13, scope: !4577)
!4587 = !DILocation(line: 3531, column: 15, scope: !4558)
!4588 = !DILocation(line: 3532, column: 37, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 3531, column: 15)
!4590 = !DILocation(line: 3532, column: 25, scope: !4589)
!4591 = !DILocation(line: 3532, column: 62, scope: !4589)
!4592 = !DILocation(line: 3532, column: 50, scope: !4589)
!4593 = !DILocation(line: 3532, column: 42, scope: !4589)
!4594 = !DILocation(line: 3532, column: 24, scope: !4589)
!4595 = !DILocation(line: 3532, column: 13, scope: !4589)
!4596 = !DILocation(line: 3533, column: 14, scope: !4558)
!4597 = !DILocation(line: 3533, column: 17, scope: !4558)
!4598 = !DILocation(line: 3534, column: 14, scope: !4558)
!4599 = !DILocation(line: 3534, column: 19, scope: !4558)
!4600 = !DILocation(line: 3535, column: 14, scope: !4558)
!4601 = !DILocation(line: 3535, column: 18, scope: !4558)
!4602 = !DILocation(line: 3536, column: 28, scope: !4603)
!4603 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 3536, column: 15)
!4604 = !DILocation(line: 3536, column: 34, scope: !4603)
!4605 = !DILocation(line: 3536, column: 15, scope: !4558)
!4606 = !DILocation(line: 3537, column: 30, scope: !4603)
!4607 = !DILocation(line: 3537, column: 16, scope: !4603)
!4608 = !DILocation(line: 3537, column: 23, scope: !4603)
!4609 = !DILocation(line: 3537, column: 13, scope: !4603)
!4610 = !DILocation(line: 3538, column: 15, scope: !4558)
!4611 = !DILocation(line: 3539, column: 28, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4558, file: !3, line: 3538, column: 15)
!4613 = !DILocation(line: 3539, column: 16, scope: !4612)
!4614 = !DILocation(line: 3539, column: 21, scope: !4612)
!4615 = !DILocation(line: 3539, column: 13, scope: !4612)
!4616 = !DILocation(line: 3540, column: 12, scope: !4558)
!4617 = !DILocation(line: 3541, column: 23, scope: !4558)
!4618 = !{i64 0, i64 4, !4619, i64 4, i64 4, !4619, i64 8, i64 4, !4619, i64 16, i64 8, !1248, i64 24, i64 8, !4115, i64 32, i64 4, !1091, i64 36, i64 4, !1091, i64 40, i64 4, !1091, i64 44, i64 4, !1091, i64 48, i64 4, !1091}
!4619 = !{!946, !946, i64 0}
!4620 = !DILocation(line: 3524, column: 50, scope: !4553)
!4621 = distinct !{!4621, !4556, !4622, !1202, !1203}
!4622 = !DILocation(line: 3542, column: 9, scope: !4554)
!4623 = !DILocation(line: 3543, column: 16, scope: !4345)
!4624 = !DILocation(line: 3544, column: 21, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4345, file: !3, line: 3544, column: 13)
!4626 = !DILocation(line: 3544, column: 13, scope: !4345)
!4627 = !DILocation(line: 3546, column: 43, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4625, file: !3, line: 3545, column: 11)
!4629 = !DILocation(line: 3546, column: 21, scope: !4628)
!4630 = !DILocation(line: 3546, column: 64, scope: !4628)
!4631 = !DILocation(line: 3546, column: 48, scope: !4628)
!4632 = !DILocation(line: 3546, column: 47, scope: !4628)
!4633 = !DILocation(line: 3548, column: 11, scope: !4628)
!4634 = !DILocation(line: 3551, column: 40, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 3551, column: 9)
!4636 = !DILocation(line: 0, scope: !4340)
!4637 = !DILocation(line: 3551, column: 22, scope: !4635)
!4638 = !DILocation(line: 3551, column: 30, scope: !4635)
!4639 = !DILocation(line: 3551, column: 9, scope: !4245)
!4640 = !DILocation(line: 3557, column: 21, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4642, file: !3, line: 3557, column: 9)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !3, line: 3557, column: 9)
!4643 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 3552, column: 7)
!4644 = !DILocation(line: 3557, column: 9, scope: !4642)
!4645 = !DILocation(line: 3559, column: 15, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4641, file: !3, line: 3558, column: 9)
!4647 = !DILocation(line: 3560, column: 49, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 3559, column: 15)
!4649 = !DILocation(line: 3560, column: 45, scope: !4648)
!4650 = !DILocation(line: 3560, column: 32, scope: !4648)
!4651 = !DILocation(line: 3560, column: 31, scope: !4648)
!4652 = !DILocation(line: 3560, column: 19, scope: !4648)
!4653 = !DILocation(line: 3560, column: 13, scope: !4648)
!4654 = !DILocation(line: 3561, column: 39, scope: !4646)
!4655 = !DILocation(line: 0, scope: !1096, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 3561, column: 17, scope: !4646)
!4657 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !4656)
!4658 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !4656)
!4659 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !4656)
!4660 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !4656)
!4661 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !4656)
!4662 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !4656)
!4663 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !4656)
!4664 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !4656)
!4665 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !4656)
!4666 = !DILocation(line: 3561, column: 17, scope: !4646)
!4667 = !DILocation(line: 3562, column: 11, scope: !4646)
!4668 = !DILocation(line: 0, scope: !2229, inlinedAt: !4669)
!4669 = distinct !DILocation(line: 3562, column: 11, scope: !4646)
!4670 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4669)
!4671 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4669)
!4672 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4669)
!4673 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4669)
!4674 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4669)
!4675 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4669)
!4676 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4669)
!4677 = !DILocation(line: 3563, column: 11, scope: !4646)
!4678 = !DILocation(line: 0, scope: !2229, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 3563, column: 11, scope: !4646)
!4680 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4679)
!4681 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4679)
!4682 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4679)
!4683 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4679)
!4684 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4679)
!4685 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4679)
!4686 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4679)
!4687 = !DILocation(line: 3564, column: 11, scope: !4646)
!4688 = !DILocation(line: 0, scope: !2229, inlinedAt: !4689)
!4689 = distinct !DILocation(line: 3564, column: 11, scope: !4646)
!4690 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4689)
!4691 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4689)
!4692 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4689)
!4693 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4689)
!4694 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4689)
!4695 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4689)
!4696 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4689)
!4697 = !DILocation(line: 3565, column: 15, scope: !4646)
!4698 = !DILocation(line: 3566, column: 13, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 3565, column: 15)
!4700 = !DILocation(line: 0, scope: !2229, inlinedAt: !4701)
!4701 = distinct !DILocation(line: 3566, column: 13, scope: !4699)
!4702 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4701)
!4703 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4701)
!4704 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4701)
!4705 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4701)
!4706 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4701)
!4707 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4701)
!4708 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4701)
!4709 = !DILocation(line: 3567, column: 15, scope: !4646)
!4710 = !DILocation(line: 3568, column: 13, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 3568, column: 13)
!4712 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 3568, column: 13)
!4713 = distinct !DILexicalBlock(scope: !4646, file: !3, line: 3567, column: 15)
!4714 = !DILocation(line: 0, scope: !2229, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 3568, column: 13, scope: !4711)
!4716 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4715)
!4717 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4715)
!4718 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4715)
!4719 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4715)
!4720 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4715)
!4721 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4715)
!4722 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4715)
!4723 = !DILocation(line: 3569, column: 12, scope: !4646)
!4724 = !DILocation(line: 3570, column: 12, scope: !4646)
!4725 = !DILocation(line: 3557, column: 56, scope: !4641)
!4726 = distinct !{!4726, !4644, !4727, !1202, !1203}
!4727 = !DILocation(line: 3571, column: 9, scope: !4642)
!4728 = !DILocation(line: 3578, column: 15, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4635, file: !3, line: 3574, column: 7)
!4730 = !DILocation(line: 3583, column: 21, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 3583, column: 9)
!4732 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 3583, column: 9)
!4733 = !DILocation(line: 3583, column: 9, scope: !4732)
!4734 = !DILocation(line: 3585, column: 41, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4731, file: !3, line: 3584, column: 9)
!4736 = !DILocation(line: 3585, column: 19, scope: !4735)
!4737 = !DILocation(line: 3585, column: 48, scope: !4735)
!4738 = !DILocation(line: 3586, column: 26, scope: !4735)
!4739 = !DILocation(line: 3586, column: 11, scope: !4735)
!4740 = !DILocation(line: 3588, column: 29, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 3588, column: 17)
!4742 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 3587, column: 11)
!4743 = !DILocation(line: 3588, column: 17, scope: !4742)
!4744 = !DILocation(line: 3590, column: 23, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 3589, column: 15)
!4746 = !DILocation(line: 3591, column: 18, scope: !4745)
!4747 = !DILocation(line: 3592, column: 15, scope: !4745)
!4748 = !DILocation(line: 0, scope: !4729)
!4749 = !DILocation(line: 3593, column: 34, scope: !4742)
!4750 = !DILocation(line: 3593, column: 31, scope: !4742)
!4751 = !DILocation(line: 3593, column: 22, scope: !4742)
!4752 = !DILocation(line: 3594, column: 36, scope: !4742)
!4753 = !DILocation(line: 3594, column: 33, scope: !4742)
!4754 = !DILocation(line: 3594, column: 24, scope: !4742)
!4755 = !DILocation(line: 3595, column: 35, scope: !4742)
!4756 = !DILocation(line: 3595, column: 32, scope: !4742)
!4757 = !DILocation(line: 3595, column: 23, scope: !4742)
!4758 = !DILocation(line: 3596, column: 17, scope: !4742)
!4759 = !DILocation(line: 3597, column: 40, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 3596, column: 17)
!4761 = !DILocation(line: 3597, column: 37, scope: !4760)
!4762 = !DILocation(line: 3597, column: 28, scope: !4760)
!4763 = !DILocation(line: 3597, column: 15, scope: !4760)
!4764 = !DILocation(line: 3598, column: 17, scope: !4742)
!4765 = !DILocation(line: 3599, column: 38, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 3598, column: 17)
!4767 = !DILocation(line: 3599, column: 35, scope: !4766)
!4768 = !DILocation(line: 3599, column: 26, scope: !4766)
!4769 = !DILocation(line: 3599, column: 15, scope: !4766)
!4770 = !DILocation(line: 3600, column: 16, scope: !4742)
!4771 = !DILocation(line: 3600, column: 19, scope: !4742)
!4772 = !DILocation(line: 3601, column: 16, scope: !4742)
!4773 = !DILocation(line: 3601, column: 21, scope: !4742)
!4774 = !DILocation(line: 3602, column: 16, scope: !4742)
!4775 = !DILocation(line: 3602, column: 20, scope: !4742)
!4776 = !DILocation(line: 3603, column: 30, scope: !4777)
!4777 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 3603, column: 17)
!4778 = !DILocation(line: 3603, column: 36, scope: !4777)
!4779 = !DILocation(line: 3603, column: 17, scope: !4742)
!4780 = !DILocation(line: 3604, column: 32, scope: !4777)
!4781 = !DILocation(line: 3604, column: 18, scope: !4777)
!4782 = !DILocation(line: 3604, column: 25, scope: !4777)
!4783 = !DILocation(line: 3604, column: 15, scope: !4777)
!4784 = !DILocation(line: 3605, column: 17, scope: !4742)
!4785 = !DILocation(line: 3606, column: 30, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4742, file: !3, line: 3605, column: 17)
!4787 = !DILocation(line: 3606, column: 18, scope: !4786)
!4788 = !DILocation(line: 3606, column: 23, scope: !4786)
!4789 = !DILocation(line: 3606, column: 15, scope: !4786)
!4790 = !DILocation(line: 3607, column: 20, scope: !4742)
!4791 = distinct !{!4791, !4739, !4792, !1202, !1203}
!4792 = !DILocation(line: 3610, column: 11, scope: !4735)
!4793 = !DILocation(line: 3611, column: 21, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 3611, column: 13)
!4795 = !DILocation(line: 3611, column: 13, scope: !4735)
!4796 = !DILocation(line: 3613, column: 29, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 3613, column: 17)
!4798 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 3612, column: 11)
!4799 = !DILocation(line: 3613, column: 17, scope: !4798)
!4800 = !DILocation(line: 3615, column: 23, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 3614, column: 15)
!4802 = !DILocation(line: 3617, column: 18, scope: !4801)
!4803 = !DILocation(line: 3618, column: 15, scope: !4801)
!4804 = !DILocation(line: 3619, column: 35, scope: !4798)
!4805 = !DILocation(line: 3619, column: 32, scope: !4798)
!4806 = !DILocation(line: 3619, column: 22, scope: !4798)
!4807 = !DILocation(line: 3620, column: 37, scope: !4798)
!4808 = !DILocation(line: 3620, column: 34, scope: !4798)
!4809 = !DILocation(line: 3620, column: 24, scope: !4798)
!4810 = !DILocation(line: 3621, column: 36, scope: !4798)
!4811 = !DILocation(line: 3621, column: 33, scope: !4798)
!4812 = !DILocation(line: 3621, column: 23, scope: !4798)
!4813 = !DILocation(line: 3622, column: 30, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 3622, column: 17)
!4815 = !DILocation(line: 3622, column: 36, scope: !4814)
!4816 = !DILocation(line: 3622, column: 17, scope: !4798)
!4817 = !DILocation(line: 3623, column: 41, scope: !4814)
!4818 = !DILocation(line: 3623, column: 38, scope: !4814)
!4819 = !DILocation(line: 3623, column: 28, scope: !4814)
!4820 = !DILocation(line: 3623, column: 15, scope: !4814)
!4821 = !DILocation(line: 3624, column: 17, scope: !4798)
!4822 = !DILocation(line: 3625, column: 39, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 3624, column: 17)
!4824 = !DILocation(line: 3625, column: 36, scope: !4823)
!4825 = !DILocation(line: 3625, column: 26, scope: !4823)
!4826 = !DILocation(line: 3625, column: 15, scope: !4823)
!4827 = !DILocation(line: 3626, column: 19, scope: !4798)
!4828 = !DILocation(line: 3627, column: 11, scope: !4798)
!4829 = !DILocation(line: 3628, column: 10, scope: !4735)
!4830 = !DILocation(line: 3583, column: 50, scope: !4731)
!4831 = distinct !{!4831, !4733, !4832, !1202, !1203}
!4832 = !DILocation(line: 3629, column: 7, scope: !4732)
!4833 = !DILocation(line: 3630, column: 18, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 3630, column: 11)
!4835 = !DILocation(line: 3630, column: 11, scope: !4729)
!4836 = !DILocation(line: 3633, column: 32, scope: !4837)
!4837 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 3631, column: 9)
!4838 = !DILocation(line: 3633, column: 29, scope: !4837)
!4839 = !DILocation(line: 3633, column: 20, scope: !4837)
!4840 = !DILocation(line: 3634, column: 34, scope: !4837)
!4841 = !DILocation(line: 3634, column: 31, scope: !4837)
!4842 = !DILocation(line: 3634, column: 22, scope: !4837)
!4843 = !DILocation(line: 3635, column: 33, scope: !4837)
!4844 = !DILocation(line: 3635, column: 30, scope: !4837)
!4845 = !DILocation(line: 3635, column: 21, scope: !4837)
!4846 = !DILocation(line: 3636, column: 28, scope: !4847)
!4847 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 3636, column: 15)
!4848 = !DILocation(line: 3636, column: 34, scope: !4847)
!4849 = !DILocation(line: 3636, column: 15, scope: !4837)
!4850 = !DILocation(line: 3637, column: 38, scope: !4847)
!4851 = !DILocation(line: 3637, column: 35, scope: !4847)
!4852 = !DILocation(line: 3637, column: 26, scope: !4847)
!4853 = !DILocation(line: 3637, column: 13, scope: !4847)
!4854 = !DILocation(line: 3638, column: 29, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4837, file: !3, line: 3638, column: 15)
!4856 = !DILocation(line: 3638, column: 15, scope: !4837)
!4857 = !DILocation(line: 3639, column: 36, scope: !4855)
!4858 = !DILocation(line: 3639, column: 33, scope: !4855)
!4859 = !DILocation(line: 3639, column: 24, scope: !4855)
!4860 = !DILocation(line: 3639, column: 13, scope: !4855)
!4861 = !DILocation(line: 3641, column: 24, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 3641, column: 11)
!4863 = !DILocation(line: 3641, column: 40, scope: !4862)
!4864 = !DILocation(line: 3642, column: 24, scope: !4862)
!4865 = !DILocation(line: 3642, column: 66, scope: !4862)
!4866 = !DILocation(line: 3642, column: 41, scope: !4862)
!4867 = !DILocation(line: 3641, column: 11, scope: !4729)
!4868 = !DILocation(line: 3644, column: 24, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 3643, column: 9)
!4870 = !DILocation(line: 3644, column: 14, scope: !4869)
!4871 = !DILocation(line: 3644, column: 17, scope: !4869)
!4872 = !DILocation(line: 3645, column: 26, scope: !4869)
!4873 = !DILocation(line: 3645, column: 14, scope: !4869)
!4874 = !DILocation(line: 3645, column: 19, scope: !4869)
!4875 = !DILocation(line: 3646, column: 25, scope: !4869)
!4876 = !DILocation(line: 3646, column: 14, scope: !4869)
!4877 = !DILocation(line: 3646, column: 18, scope: !4869)
!4878 = !DILocation(line: 3647, column: 28, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 3647, column: 15)
!4880 = !DILocation(line: 3647, column: 34, scope: !4879)
!4881 = !DILocation(line: 3647, column: 15, scope: !4869)
!4882 = !DILocation(line: 3648, column: 30, scope: !4879)
!4883 = !DILocation(line: 3648, column: 16, scope: !4879)
!4884 = !DILocation(line: 3648, column: 23, scope: !4879)
!4885 = !DILocation(line: 3648, column: 13, scope: !4879)
!4886 = !DILocation(line: 3649, column: 29, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4869, file: !3, line: 3649, column: 15)
!4888 = !DILocation(line: 3649, column: 15, scope: !4869)
!4889 = !DILocation(line: 3650, column: 28, scope: !4887)
!4890 = !DILocation(line: 3650, column: 16, scope: !4887)
!4891 = !DILocation(line: 3650, column: 21, scope: !4887)
!4892 = !DILocation(line: 3650, column: 13, scope: !4887)
!4893 = !DILocation(line: 3656, column: 19, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 3656, column: 7)
!4895 = distinct !DILexicalBlock(scope: !4729, file: !3, line: 3656, column: 7)
!4896 = !DILocation(line: 3656, column: 7, scope: !4895)
!4897 = !DILocation(line: 3658, column: 13, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 3657, column: 7)
!4899 = !DILocation(line: 3659, column: 47, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 3658, column: 13)
!4901 = !DILocation(line: 3659, column: 43, scope: !4900)
!4902 = !DILocation(line: 3659, column: 30, scope: !4900)
!4903 = !DILocation(line: 3659, column: 29, scope: !4900)
!4904 = !DILocation(line: 3659, column: 17, scope: !4900)
!4905 = !DILocation(line: 3659, column: 11, scope: !4900)
!4906 = !DILocation(line: 3660, column: 37, scope: !4898)
!4907 = !DILocation(line: 0, scope: !1096, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 3660, column: 15, scope: !4898)
!4909 = !DILocation(line: 86, column: 10, scope: !1096, inlinedAt: !4908)
!4910 = !DILocation(line: 86, column: 8, scope: !1096, inlinedAt: !4908)
!4911 = !DILocation(line: 87, column: 12, scope: !1107, inlinedAt: !4908)
!4912 = !DILocation(line: 87, column: 16, scope: !1107, inlinedAt: !4908)
!4913 = !DILocation(line: 87, column: 7, scope: !1096, inlinedAt: !4908)
!4914 = !DILocation(line: 88, column: 15, scope: !1107, inlinedAt: !4908)
!4915 = !DILocation(line: 88, column: 5, scope: !1107, inlinedAt: !4908)
!4916 = !DILocation(line: 89, column: 14, scope: !1096, inlinedAt: !4908)
!4917 = !DILocation(line: 89, column: 3, scope: !1096, inlinedAt: !4908)
!4918 = !DILocation(line: 3660, column: 15, scope: !4898)
!4919 = !DILocation(line: 3661, column: 9, scope: !4898)
!4920 = !DILocation(line: 0, scope: !2229, inlinedAt: !4921)
!4921 = distinct !DILocation(line: 3661, column: 9, scope: !4898)
!4922 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4921)
!4923 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4921)
!4924 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4921)
!4925 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4921)
!4926 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4921)
!4927 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4921)
!4928 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4921)
!4929 = !DILocation(line: 3662, column: 9, scope: !4898)
!4930 = !DILocation(line: 0, scope: !2229, inlinedAt: !4931)
!4931 = distinct !DILocation(line: 3662, column: 9, scope: !4898)
!4932 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4931)
!4933 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4931)
!4934 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4931)
!4935 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4931)
!4936 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4931)
!4937 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4931)
!4938 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4931)
!4939 = !DILocation(line: 3663, column: 9, scope: !4898)
!4940 = !DILocation(line: 0, scope: !2229, inlinedAt: !4941)
!4941 = distinct !DILocation(line: 3663, column: 9, scope: !4898)
!4942 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4941)
!4943 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4941)
!4944 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4941)
!4945 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4941)
!4946 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4941)
!4947 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4941)
!4948 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4941)
!4949 = !DILocation(line: 3664, column: 13, scope: !4898)
!4950 = !DILocation(line: 3665, column: 11, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 3664, column: 13)
!4952 = !DILocation(line: 0, scope: !2229, inlinedAt: !4953)
!4953 = distinct !DILocation(line: 3665, column: 11, scope: !4951)
!4954 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4953)
!4955 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4953)
!4956 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4953)
!4957 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4953)
!4958 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4953)
!4959 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4953)
!4960 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4953)
!4961 = !DILocation(line: 3666, column: 13, scope: !4898)
!4962 = !DILocation(line: 3667, column: 11, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 3667, column: 11)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 3667, column: 11)
!4965 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 3666, column: 13)
!4966 = !DILocation(line: 0, scope: !2229, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 3667, column: 11, scope: !4963)
!4968 = !DILocation(line: 92, column: 13, scope: !2236, inlinedAt: !4967)
!4969 = !DILocation(line: 92, column: 7, scope: !2229, inlinedAt: !4967)
!4970 = !DILocation(line: 94, column: 13, scope: !2239, inlinedAt: !4967)
!4971 = !DILocation(line: 94, column: 7, scope: !2229, inlinedAt: !4967)
!4972 = !DILocation(line: 96, column: 26, scope: !2229, inlinedAt: !4967)
!4973 = !DILocation(line: 96, column: 10, scope: !2229, inlinedAt: !4967)
!4974 = !DILocation(line: 96, column: 3, scope: !2229, inlinedAt: !4967)
!4975 = !DILocation(line: 3668, column: 10, scope: !4898)
!4976 = !DILocation(line: 3669, column: 10, scope: !4898)
!4977 = !DILocation(line: 3656, column: 54, scope: !4894)
!4978 = distinct !{!4978, !4896, !4979, !1202, !1203}
!4979 = !DILocation(line: 3670, column: 7, scope: !4895)
!4980 = !DILocation(line: 3672, column: 9, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 3672, column: 9)
!4982 = !DILocation(line: 3672, column: 60, scope: !4981)
!4983 = !DILocation(line: 3672, column: 9, scope: !4245)
!4984 = !DILocation(line: 3678, column: 14, scope: !4245)
!4985 = !DILocation(line: 0, scope: !2320, inlinedAt: !4322)
!4986 = !DILocation(line: 30, column: 3, scope: !2320, inlinedAt: !4322)
!4987 = !DILocation(line: 31, column: 5, scope: !2320, inlinedAt: !4322)
!4988 = !DILocation(line: 33, column: 14, scope: !4989, inlinedAt: !4322)
!4989 = distinct !DILexicalBlock(scope: !2320, file: !2321, line: 33, column: 7)
!4990 = !DILocation(line: 33, column: 31, scope: !4989, inlinedAt: !4322)
!4991 = !DILocation(line: 33, column: 7, scope: !2320, inlinedAt: !4322)
!4992 = !DILocation(line: 37, column: 1, scope: !2320, inlinedAt: !4322)
!4993 = !DILocation(line: 0, scope: !4246)
!4994 = !DILocation(line: 35, column: 10, scope: !2320, inlinedAt: !4322)
!4995 = !DILocation(line: 36, column: 17, scope: !2320, inlinedAt: !4322)
!4996 = !DILocation(line: 36, column: 63, scope: !2320, inlinedAt: !4322)
!4997 = !DILocation(line: 36, column: 10, scope: !2320, inlinedAt: !4322)
!4998 = !DILocation(line: 3679, column: 17, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 3679, column: 9)
!5000 = !DILocation(line: 3383, column: 47, scope: !4246)
!5001 = distinct !{!5001, !4325, !5002, !1202, !1203}
!5002 = !DILocation(line: 3684, column: 3, scope: !4247)
!5003 = !DILocation(line: 3380, column: 9, scope: !4219)
!5004 = !DILocation(line: 3685, column: 14, scope: !4219)
!5005 = !DILocation(line: 3686, column: 14, scope: !4219)
!5006 = !DILocation(line: 3690, column: 34, scope: !4219)
!5007 = !DILocation(line: 3691, column: 40, scope: !4219)
!5008 = !DILocation(line: 3692, column: 20, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3692, column: 7)
!5010 = !DILocation(line: 3692, column: 35, scope: !5009)
!5011 = !DILocation(line: 3692, column: 25, scope: !5009)
!5012 = !DILocation(line: 3692, column: 7, scope: !4219)
!5013 = !DILocation(line: 3693, column: 36, scope: !5009)
!5014 = !DILocation(line: 3693, column: 5, scope: !5009)
!5015 = !DILocation(line: 3694, column: 34, scope: !4219)
!5016 = !DILocation(line: 3695, column: 28, scope: !4219)
!5017 = !DILocation(line: 3695, column: 16, scope: !4219)
!5018 = !DILocation(line: 3695, column: 20, scope: !4219)
!5019 = !DILocation(line: 3696, column: 14, scope: !5020)
!5020 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 3696, column: 7)
!5021 = !DILocation(line: 3696, column: 7, scope: !4219)
!5022 = !DILocation(line: 3697, column: 17, scope: !5020)
!5023 = !DILocation(line: 3697, column: 5, scope: !5020)
!5024 = !DILocation(line: 3699, column: 1, scope: !4219)
!5025 = distinct !DISubprogram(name: "ThumbnailImage", scope: !3, file: !3, line: 3732, type: !2087, scopeLine: 3734, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !5026)
!5026 = !{!5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037, !5073}
!5027 = !DILocalVariable(name: "image", arg: 1, scope: !5025, file: !3, line: 3732, type: !58)
!5028 = !DILocalVariable(name: "columns", arg: 2, scope: !5025, file: !3, line: 3732, type: !1951)
!5029 = !DILocalVariable(name: "rows", arg: 3, scope: !5025, file: !3, line: 3733, type: !1951)
!5030 = !DILocalVariable(name: "exception", arg: 4, scope: !5025, file: !3, line: 3733, type: !643)
!5031 = !DILocalVariable(name: "value", scope: !5025, file: !3, line: 3738, type: !458)
!5032 = !DILocalVariable(name: "name", scope: !5025, file: !3, line: 3741, type: !438)
!5033 = !DILocalVariable(name: "thumbnail_image", scope: !5025, file: !3, line: 3744, type: !804)
!5034 = !DILocalVariable(name: "x_factor", scope: !5025, file: !3, line: 3747, type: !15)
!5035 = !DILocalVariable(name: "y_factor", scope: !5025, file: !3, line: 3748, type: !15)
!5036 = !DILocalVariable(name: "version", scope: !5025, file: !3, line: 3751, type: !55)
!5037 = !DILocalVariable(name: "attributes", scope: !5025, file: !3, line: 3754, type: !5038)
!5038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !5039, line: 46, size: 1152, elements: !5040)
!5039 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!5040 = !{!5041, !5043, !5045, !5047, !5049, !5051, !5053, !5054, !5055, !5056, !5058, !5060, !5067, !5068, !5069}
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !5038, file: !5039, line: 48, baseType: !5042, size: 64)
!5042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !221, line: 145, baseType: !57)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !5038, file: !5039, line: 53, baseType: !5044, size: 64, offset: 64)
!5044 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !221, line: 148, baseType: !57)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !5038, file: !5039, line: 61, baseType: !5046, size: 64, offset: 128)
!5046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !221, line: 151, baseType: !57)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !5038, file: !5039, line: 62, baseType: !5048, size: 32, offset: 192)
!5048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !221, line: 150, baseType: !34)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !5038, file: !5039, line: 64, baseType: !5050, size: 32, offset: 224)
!5050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !221, line: 146, baseType: !34)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !5038, file: !5039, line: 65, baseType: !5052, size: 32, offset: 256)
!5052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !221, line: 147, baseType: !34)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !5038, file: !5039, line: 67, baseType: !545, size: 32, offset: 288)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !5038, file: !5039, line: 69, baseType: !5042, size: 64, offset: 320)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5038, file: !5039, line: 74, baseType: !2031, size: 64, offset: 384)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !5038, file: !5039, line: 78, baseType: !5057, size: 64, offset: 448)
!5057 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !221, line: 174, baseType: !222)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !5038, file: !5039, line: 80, baseType: !5059, size: 64, offset: 512)
!5059 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !221, line: 179, baseType: !222)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !5038, file: !5039, line: 91, baseType: !5061, size: 128, offset: 576)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !5062, line: 10, size: 128, elements: !5063)
!5062 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!5063 = !{!5064, !5065}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5061, file: !5062, line: 12, baseType: !625, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5061, file: !5062, line: 16, baseType: !5066, size: 64, offset: 64)
!5066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !221, line: 196, baseType: !222)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !5038, file: !5039, line: 92, baseType: !5061, size: 128, offset: 704)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !5038, file: !5039, line: 93, baseType: !5061, size: 128, offset: 832)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !5038, file: !5039, line: 106, baseType: !5070, size: 192, offset: 960)
!5070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5066, size: 192, elements: !5071)
!5071 = !{!5072}
!5072 = !DISubrange(count: 3)
!5073 = !DILocalVariable(name: "sample_image", scope: !5074, file: !3, line: 3774, type: !804)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 3772, column: 7)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !3, line: 3768, column: 9)
!5076 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 3764, column: 7)
!5077 = !DILocation(line: 0, scope: !5025)
!5078 = !DILocation(line: 3737, column: 3, scope: !5025)
!5079 = !DILocation(line: 3738, column: 5, scope: !5025)
!5080 = !DILocation(line: 3750, column: 3, scope: !5025)
!5081 = !DILocation(line: 3753, column: 3, scope: !5025)
!5082 = !DILocation(line: 3754, column: 5, scope: !5025)
!5083 = !DILocation(line: 3758, column: 14, scope: !5084)
!5084 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 3758, column: 7)
!5085 = !DILocation(line: 3758, column: 20, scope: !5084)
!5086 = !DILocation(line: 3758, column: 7, scope: !5025)
!5087 = !DILocation(line: 3759, column: 68, scope: !5084)
!5088 = !DILocation(line: 3759, column: 12, scope: !5084)
!5089 = !DILocation(line: 3759, column: 5, scope: !5084)
!5090 = !DILocation(line: 3762, column: 12, scope: !5025)
!5091 = !DILocation(line: 3762, column: 61, scope: !5025)
!5092 = !DILocation(line: 3762, column: 37, scope: !5025)
!5093 = !DILocation(line: 3762, column: 36, scope: !5025)
!5094 = !DILocation(line: 3763, column: 12, scope: !5025)
!5095 = !DILocation(line: 3763, column: 58, scope: !5025)
!5096 = !DILocation(line: 3763, column: 34, scope: !5025)
!5097 = !DILocation(line: 3763, column: 33, scope: !5025)
!5098 = !DILocation(line: 3764, column: 16, scope: !5076)
!5099 = !DILocation(line: 3764, column: 7, scope: !5076)
!5100 = !DILocation(line: 3764, column: 27, scope: !5076)
!5101 = !DILocation(line: 3764, column: 7, scope: !5025)
!5102 = !DILocation(line: 3765, column: 59, scope: !5076)
!5103 = !{!945, !946, i64 400}
!5104 = !DILocation(line: 3765, column: 73, scope: !5076)
!5105 = !{!945, !952, i64 384}
!5106 = !DILocation(line: 3765, column: 21, scope: !5076)
!5107 = !DILocation(line: 3765, column: 5, scope: !5076)
!5108 = !DILocation(line: 3768, column: 23, scope: !5075)
!5109 = !DILocation(line: 3768, column: 33, scope: !5075)
!5110 = !DILocation(line: 3768, column: 40, scope: !5075)
!5111 = !DILocation(line: 3768, column: 57, scope: !5075)
!5112 = !DILocation(line: 3768, column: 64, scope: !5075)
!5113 = !DILocation(line: 3768, column: 9, scope: !5076)
!5114 = !DILocation(line: 3769, column: 61, scope: !5075)
!5115 = !DILocation(line: 3770, column: 16, scope: !5075)
!5116 = !DILocation(line: 3769, column: 23, scope: !5075)
!5117 = !DILocation(line: 3769, column: 7, scope: !5075)
!5118 = !DILocation(line: 3776, column: 22, scope: !5074)
!5119 = !DILocation(line: 0, scope: !5074)
!5120 = !DILocation(line: 3778, column: 26, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5074, file: !3, line: 3778, column: 13)
!5122 = !DILocation(line: 3778, column: 13, scope: !5074)
!5123 = !DILocation(line: 3780, column: 70, scope: !5074)
!5124 = !DILocation(line: 3781, column: 18, scope: !5074)
!5125 = !DILocation(line: 3780, column: 25, scope: !5074)
!5126 = !DILocation(line: 3782, column: 22, scope: !5074)
!5127 = !DILocation(line: 3784, column: 23, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 3784, column: 7)
!5129 = !DILocation(line: 3784, column: 7, scope: !5025)
!5130 = !DILocation(line: 3786, column: 60, scope: !5025)
!5131 = !DILocation(line: 3786, column: 10, scope: !5025)
!5132 = !DILocation(line: 3787, column: 24, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 3787, column: 7)
!5134 = !DILocation(line: 3787, column: 30, scope: !5133)
!5135 = !DILocation(line: 3787, column: 7, scope: !5025)
!5136 = !DILocation(line: 3788, column: 12, scope: !5133)
!5137 = !DILocation(line: 3788, column: 5, scope: !5133)
!5138 = !DILocation(line: 3789, column: 20, scope: !5025)
!5139 = !DILocation(line: 3789, column: 25, scope: !5025)
!5140 = !{!945, !948, i64 56}
!5141 = !DILocation(line: 3790, column: 20, scope: !5025)
!5142 = !DILocation(line: 3790, column: 29, scope: !5025)
!5143 = !{!945, !946, i64 404}
!5144 = !DILocation(line: 3794, column: 3, scope: !5025)
!5145 = !DILocation(line: 3795, column: 13, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 3795, column: 3)
!5147 = !DILocation(line: 3795, column: 56, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 3795, column: 3)
!5149 = !DILocation(line: 3795, column: 3, scope: !5146)
!5150 = !DILocation(line: 3797, column: 10, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 3797, column: 9)
!5152 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 3796, column: 3)
!5153 = !DILocation(line: 3797, column: 36, scope: !5151)
!5154 = !DILocation(line: 3797, column: 42, scope: !5151)
!5155 = !DILocation(line: 3797, column: 46, scope: !5151)
!5156 = !DILocation(line: 3797, column: 72, scope: !5151)
!5157 = !DILocation(line: 3797, column: 9, scope: !5152)
!5158 = !DILocation(line: 3799, column: 15, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 3798, column: 6)
!5160 = !DILocation(line: 3800, column: 8, scope: !5159)
!5161 = !DILocation(line: 3801, column: 6, scope: !5159)
!5162 = !DILocation(line: 3802, column: 10, scope: !5152)
!5163 = distinct !{!5163, !5149, !5164, !1202, !1203}
!5164 = !DILocation(line: 3803, column: 3, scope: !5146)
!5165 = !DILocation(line: 3804, column: 10, scope: !5025)
!5166 = !DILocation(line: 3805, column: 40, scope: !5025)
!5167 = !DILocation(line: 3805, column: 10, scope: !5025)
!5168 = !DILocation(line: 3806, column: 7, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 3806, column: 7)
!5170 = !DILocation(line: 3806, column: 43, scope: !5169)
!5171 = !DILocation(line: 3806, column: 7, scope: !5025)
!5172 = !DILocation(line: 3807, column: 12, scope: !5169)
!5173 = !DILocation(line: 3807, column: 5, scope: !5169)
!5174 = !DILocation(line: 3809, column: 10, scope: !5025)
!5175 = !DILocation(line: 3810, column: 10, scope: !5025)
!5176 = !DILocation(line: 3811, column: 32, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 3811, column: 7)
!5178 = !DILocation(line: 3811, column: 7, scope: !5177)
!5179 = !DILocation(line: 3811, column: 54, scope: !5177)
!5180 = !DILocation(line: 3811, column: 7, scope: !5025)
!5181 = !DILocation(line: 3814, column: 20, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5177, file: !3, line: 3812, column: 5)
!5183 = !{!5184, !948, i64 88}
!5184 = !{!"stat", !948, i64 0, !948, i64 8, !948, i64 16, !960, i64 24, !960, i64 28, !960, i64 32, !960, i64 36, !948, i64 40, !948, i64 48, !948, i64 56, !948, i64 64, !5185, i64 72, !5185, i64 88, !5185, i64 104, !946, i64 120}
!5185 = !{!"timespec", !948, i64 0, !948, i64 8}
!5186 = !DILocation(line: 3813, column: 61, scope: !5182)
!5187 = !DILocation(line: 3813, column: 14, scope: !5182)
!5188 = !DILocation(line: 3815, column: 14, scope: !5182)
!5189 = !DILocation(line: 3816, column: 5, scope: !5182)
!5190 = !DILocation(line: 3818, column: 16, scope: !5025)
!5191 = !DILocation(line: 3817, column: 57, scope: !5025)
!5192 = !DILocation(line: 3817, column: 10, scope: !5025)
!5193 = !DILocation(line: 3819, column: 27, scope: !5025)
!5194 = !DILocation(line: 3819, column: 10, scope: !5025)
!5195 = !DILocation(line: 3820, column: 10, scope: !5025)
!5196 = !DILocation(line: 3821, column: 10, scope: !5025)
!5197 = !DILocation(line: 3822, column: 67, scope: !5025)
!5198 = !DILocation(line: 3822, column: 10, scope: !5025)
!5199 = !DILocation(line: 3823, column: 3, scope: !5025)
!5200 = !DILocation(line: 3824, column: 10, scope: !5025)
!5201 = !DILocation(line: 3826, column: 5, scope: !5025)
!5202 = !DILocation(line: 3825, column: 10, scope: !5025)
!5203 = !DILocation(line: 3828, column: 12, scope: !5025)
!5204 = !{!945, !948, i64 12904}
!5205 = !DILocation(line: 3827, column: 57, scope: !5025)
!5206 = !DILocation(line: 3827, column: 10, scope: !5025)
!5207 = !DILocation(line: 3829, column: 10, scope: !5025)
!5208 = !DILocation(line: 3831, column: 12, scope: !5025)
!5209 = !{!945, !948, i64 12912}
!5210 = !DILocation(line: 3830, column: 57, scope: !5025)
!5211 = !DILocation(line: 3830, column: 10, scope: !5025)
!5212 = !DILocation(line: 3832, column: 10, scope: !5025)
!5213 = !DILocation(line: 3834, column: 5, scope: !5025)
!5214 = !DILocation(line: 3833, column: 57, scope: !5025)
!5215 = !DILocation(line: 3833, column: 10, scope: !5025)
!5216 = !DILocation(line: 3835, column: 10, scope: !5025)
!5217 = !DILocation(line: 3836, column: 3, scope: !5025)
!5218 = !DILocation(line: 3837, column: 1, scope: !5025)
!5219 = !DISubprogram(name: "ParseAbsoluteGeometry", scope: !227, file: !227, line: 141, type: !5220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5220 = !DISubroutineType(types: !5221)
!5221 = !{!2764, !438, !5222}
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!5223 = !DISubprogram(name: "SetImageAlphaChannel", scope: !5224, file: !5224, line: 35, type: !5225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5224 = !DIFile(filename: "apps/538.imagick_r/src/magick/channel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b0e4d3ce1a18bfe1ebfd6b5ca2d6cbf3")
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!152, !804, !5227}
!5227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5228)
!5228 = !DIDerivedType(tag: DW_TAG_typedef, name: "AlphaChannelType", file: !62, line: 45, baseType: !775)
!5229 = !DISubprogram(name: "ResetImageProfileIterator", scope: !195, file: !195, line: 70, type: !5230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5230 = !DISubroutineType(types: !5231)
!5231 = !{null, !58}
!5232 = !DISubprogram(name: "GetNextImageProfile", scope: !195, file: !195, line: 52, type: !5233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5233 = !DISubroutineType(types: !5234)
!5234 = !{!213, !58}
!5235 = !DISubprogram(name: "LocaleCompare", scope: !1969, file: !1969, line: 66, type: !5236, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!545, !438, !438}
!5238 = !DISubprogram(name: "DeleteImageProfile", scope: !195, file: !195, line: 59, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5239 = !DISubprogram(name: "DeleteImageProperty", scope: !5240, file: !5240, line: 37, type: !2084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5240 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!5241 = !DISubprogram(name: "CopyMagickString", scope: !1969, file: !1969, line: 78, type: !5242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!55, !213, !438, !1951}
!5244 = !DISubprogram(name: "FormatLocaleString", scope: !2002, file: !2002, line: 71, type: !5245, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5245 = !DISubroutineType(types: !5246)
!5246 = !{!218, !5247, !1951, !1079, null}
!5247 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !213)
!5248 = !DISubprogram(name: "SetImageProperty", scope: !5240, file: !5240, line: 40, type: !5249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!152, !804, !438, !438}
!5251 = !DISubprogram(name: "GetPathAttributes", scope: !5252, file: !5252, line: 51, type: !5253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5252 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!5253 = !DISubroutineType(types: !5254)
!5254 = !{!152, !438, !204}
!5255 = !DISubprogram(name: "FormatMagickSize", scope: !1969, file: !1969, line: 83, type: !5256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{!218, !443, !642, !213}
!5258 = !DISubprogram(name: "GetBlobSize", scope: !5259, file: !5259, line: 56, type: !5260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5259 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!5260 = !DISubroutineType(types: !5261)
!5261 = !{!444, !58}
!5262 = !DISubprogram(name: "ConcatenateMagickString", scope: !1969, file: !1969, line: 76, type: !5242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5263 = !DISubprogram(name: "LocaleLower", scope: !1969, file: !1969, line: 102, type: !5264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{null, !213}
!5266 = !DISubprogram(name: "GetMagickVersion", scope: !5267, file: !5267, line: 101, type: !5268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5267 = !DIFile(filename: "apps/538.imagick_r/src/magick/version.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5bbd8280cb91779d444e54bd210c3e35")
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!438, !5270}
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!5271 = !DISubprogram(name: "GetImageListLength", scope: !5272, file: !5272, line: 45, type: !5273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5272 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!55, !58}
!5275 = !DISubprogram(name: "InterpretLocaleValue", scope: !2002, file: !2002, line: 56, type: !1077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5276 = distinct !DISubprogram(name: "AcquireContributionThreadSet", scope: !3, file: !3, line: 2411, type: !5277, scopeLine: 2412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !644, retainedNodes: !5279)
!5277 = !DISubroutineType(types: !5278)
!5278 = !{!827, !1951}
!5279 = !{!5280, !5281, !5282, !5283}
!5280 = !DILocalVariable(name: "count", arg: 1, scope: !5276, file: !3, line: 2411, type: !1951)
!5281 = !DILocalVariable(name: "i", scope: !5276, file: !3, line: 2414, type: !218)
!5282 = !DILocalVariable(name: "contribution", scope: !5276, file: !3, line: 2417, type: !827)
!5283 = !DILocalVariable(name: "number_threads", scope: !5276, file: !3, line: 2420, type: !55)
!5284 = !DILocation(line: 0, scope: !5276)
!5285 = !DILocation(line: 2422, column: 27, scope: !5276)
!5286 = !DILocation(line: 2423, column: 38, scope: !5276)
!5287 = !DILocation(line: 2425, column: 20, scope: !5288)
!5288 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 2425, column: 7)
!5289 = !DILocation(line: 2425, column: 7, scope: !5276)
!5290 = !DILocation(line: 2427, column: 57, scope: !5276)
!5291 = !DILocation(line: 2427, column: 10, scope: !5276)
!5292 = !DILocation(line: 2428, column: 15, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 2428, column: 3)
!5294 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 2428, column: 3)
!5295 = !DILocation(line: 2428, column: 3, scope: !5294)
!5296 = !DILocation(line: 2428, column: 44, scope: !5293)
!5297 = distinct !{!5297, !5295, !5298, !1202, !1203}
!5298 = !DILocation(line: 2434, column: 3, scope: !5294)
!5299 = !DILocation(line: 2430, column: 42, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 2429, column: 3)
!5301 = !DILocation(line: 2430, column: 5, scope: !5300)
!5302 = !DILocation(line: 2430, column: 20, scope: !5300)
!5303 = !DILocation(line: 2432, column: 25, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 2432, column: 9)
!5305 = !DILocation(line: 2432, column: 9, scope: !5300)
!5306 = !DILocation(line: 0, scope: !3462, inlinedAt: !5307)
!5307 = distinct !DILocation(line: 2433, column: 14, scope: !5304)
!5308 = !DILocation(line: 2403, column: 27, scope: !3470, inlinedAt: !5307)
!5309 = !DILocation(line: 2403, column: 15, scope: !3470, inlinedAt: !5307)
!5310 = !DILocation(line: 2403, column: 3, scope: !3471, inlinedAt: !5307)
!5311 = !DILocation(line: 2404, column: 9, scope: !3475, inlinedAt: !5307)
!5312 = !DILocation(line: 2404, column: 25, scope: !3475, inlinedAt: !5307)
!5313 = !DILocation(line: 2404, column: 9, scope: !3470, inlinedAt: !5307)
!5314 = !DILocation(line: 2405, column: 44, scope: !3475, inlinedAt: !5307)
!5315 = !DILocation(line: 2405, column: 22, scope: !3475, inlinedAt: !5307)
!5316 = !DILocation(line: 2405, column: 7, scope: !3475, inlinedAt: !5307)
!5317 = !DILocation(line: 2403, column: 68, scope: !3470, inlinedAt: !5307)
!5318 = distinct !{!5318, !5310, !5319, !1202, !1203}
!5319 = !DILocation(line: 2406, column: 24, scope: !3471, inlinedAt: !5307)
!5320 = !DILocation(line: 2407, column: 38, scope: !3462, inlinedAt: !5307)
!5321 = !DILocation(line: 2433, column: 7, scope: !5304)
!5322 = !DILocation(line: 2436, column: 1, scope: !5276)
!5323 = !DISubprogram(name: "GetMagickResourceLimit", scope: !791, file: !791, line: 53, type: !5324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!444, !5326}
!5326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5327)
!5327 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResourceType", file: !791, line: 36, baseType: !790)
!5328 = !DISubprogram(name: "AcquireAlignedMemory", scope: !1954, file: !1954, line: 38, type: !4217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
!5329 = !DISubprogram(name: "RelinquishAlignedMemory", scope: !1954, file: !1954, line: 50, type: !2369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1952)
