; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/identify.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._MagickPixelPacket = type { i32, i32, i32, double, i64, float, float, float, float, float }
%struct._Image = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, ptr, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, double, %struct._ChromaticityInfo, i32, ptr, i32, ptr, ptr, ptr, i64, double, double, %struct._RectangleInfo, %struct._RectangleInfo, %struct._RectangleInfo, double, double, double, i32, i32, i32, i32, i32, i32, ptr, i64, i64, i64, i64, i64, i64, %struct._ErrorInfo, %struct._TimerInfo, ptr, ptr, ptr, ptr, ptr, ptr, [4096 x i8], [4096 x i8], [4096 x i8], i64, i64, %struct._ExceptionInfo, i32, i64, ptr, %struct._ProfileInfo, %struct._ProfileInfo, ptr, i64, i64, ptr, ptr, ptr, i32, i32, %struct._PixelPacket, ptr, %struct._RectangleInfo, ptr, ptr, i32, i32, i64, i32, i64, i64, i32, i64 }
%struct._ChromaticityInfo = type { %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo, %struct._PrimaryInfo }
%struct._PrimaryInfo = type { double, double, double }
%struct._ErrorInfo = type { double, double, double }
%struct._TimerInfo = type { %struct._Timer, %struct._Timer, i32, i64 }
%struct._Timer = type { double, double, double }
%struct._ProfileInfo = type { ptr, i64, ptr, i64 }
%struct._PixelPacket = type { i16, i16, i16, i16 }
%struct._RectangleInfo = type { i64, i64, i64, i64 }
%struct._ChannelStatistics = type { i64, double, double, double, double, double, double, double, double, double, double, double }
%struct._ChannelPerceptualHash = type { [32 x double], [32 x double] }
%struct._ImageInfo = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, double, double, %struct._PixelPacket, %struct._PixelPacket, %struct._PixelPacket, i32, i32, i64, i32, i32, i32, i64, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], i32, ptr, i64, i64, %struct._PixelPacket, i64, i32, %struct._PixelPacket, ptr, i32 }
%struct._ChannelMoments = type { [32 x double], %struct._PointInfo, %struct._PointInfo, double, double, double }
%struct._PointInfo = type { double, double }
%struct._ChannelFeatures = type { [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double], [4 x double] }

@.str = private unnamed_addr constant [87 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/identify.c\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"identify:locate\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"identify:limit\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"  Channel %s locations:\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Alpha\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"%s=>\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"%s[%.20g] \00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"%.20gx%.20g=>\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"%.20gx%.20g \00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"%.20gx%.20g%+.20g%+.20g \00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"%.20g-bit \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"%.20gc \00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"%.20g=>%.20gc \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"%.20g/%f/%fdb \00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"%0.3fu %lu:%02lu.%03lu\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Image: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"  Base filename: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"  Format: %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"  Format: %s (%s)\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"  Mime type: %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"  Class: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"  Geometry: %.20gx%.20g%+.20g%+.20g\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"  Base geometry: %.20gx%.20g\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"  Resolution: %gx%g\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"  Print size: %gx%g\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"  Units: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"  Type: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"  Base type: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"  Endianess: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"  Colorspace: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"identify:moments\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"identify:features\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"  Depth: %.20g-bit\0A\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"  Depth: %.20g/%.20g-bit\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"  Channel depth:\0A\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"    red: %.20g-bit\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"    green: %.20g-bit\0A\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"    blue: %.20g-bit\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"    cyan: %.20g-bit\0A\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"    magenta: %.20g-bit\0A\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"    yellow: %.20g-bit\0A\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"    black: %.20g-bit\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"    gray: %.20g-bit\0A\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"    alpha: %.20g-bit\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"  Channel statistics:\0A\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"  Image statistics:\0A\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"Overall\00", align 1
@.str.59 = private unnamed_addr constant [20 x i8] c"  Channel moments:\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"  Image moments:\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"  Channel perceptual hash:\0A\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"Red, Hue\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"Green, Chroma\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"Blue, Luma\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"Alpha, Alpha\00", align 1
@.str.66 = private unnamed_addr constant [79 x i8] c"  Channel features (horizontal, vertical, left and right diagonals, average):\0A\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"  Total ink density: %.*g%%\0A\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"  Alpha: %s \00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"identify:unique-colors\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"  Colors: %.20g\0A\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"  Histogram:\0A\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"  Colormap entries: %.20g\0A\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"  Colormap:\0A\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"  %8ld: %s %s %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"  Mean error per pixel: %g\0A\00", align 1
@.str.80 = private unnamed_addr constant [29 x i8] c"  Normalized mean error: %g\0A\00", align 1
@.str.81 = private unnamed_addr constant [32 x i8] c"  Normalized maximum error: %g\0A\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"  Rendering intent: %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"  Gamma: %g\0A\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"  Chromaticity:\0A\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"    red primary: (%g,%g)\0A\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"    green primary: (%g,%g)\0A\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"    blue primary: (%g,%g)\0A\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"    white point: (%g,%g)\0A\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"  Tile geometry: %.20gx%.20g%+.20g%+.20g\0A\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"  Background color: %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [20 x i8] c"  Border color: %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"  Matte color: %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"  Transparent color: %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"  Interlace: %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"  Intensity: %s\0A\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"  Compose: %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [42 x i8] c"  Page geometry: %.20gx%.20g%+.20g%+.20g\0A\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"  Origin geometry: %+.20g%+.20g\0A\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"  Dispose: %s\0A\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"  Delay: %.20gx%.20g\0A\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"  Iterations: %.20g\0A\00", align 1
@.str.102 = private unnamed_addr constant [19 x i8] c"  Duration: %.20g\0A\00", align 1
@.str.103 = private unnamed_addr constant [25 x i8] c"  Scene: %.20g of %.20g\0A\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"  Scene: %.20g\0A\00", align 1
@.str.105 = private unnamed_addr constant [19 x i8] c"  Compression: %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"  Quality: %.20g\0A\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"  Orientation: %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"  Montage: %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"64x64\00", align 1
@.str.110 = private unnamed_addr constant [14 x i8] c"  Directory:\0A\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"    %s\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c" %.20gx%.20g %s\0A\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"  %s:\0A\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"exif:*\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"icc:*\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"iptc:*\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"xmp:*\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"  Properties:\0A\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"    %s: \00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"8BIM:1999,2998:#1\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"  Clipping path: \00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"  Profiles:\0A\00", align 1
@.str.124 = private unnamed_addr constant [29 x i8] c"    Profile-%s: %.20g bytes\0A\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"iptc\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"Image Name\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"Edit Status\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"Category\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"Supplemental Category\00", align 1
@.str.131 = private unnamed_addr constant [19 x i8] c"Fixture Identifier\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"Keyword\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"Release Date\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"Release Time\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"Special Instructions\00", align 1
@.str.136 = private unnamed_addr constant [18 x i8] c"Reference Service\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"Reference Date\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"Reference Number\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"Created Date\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"Created Time\00", align 1
@.str.141 = private unnamed_addr constant [20 x i8] c"Originating Program\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"Program Version\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"Object Cycle\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"Byline\00", align 1
@.str.145 = private unnamed_addr constant [13 x i8] c"Byline Title\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"City\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"Province State\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Country Code\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.150 = private unnamed_addr constant [32 x i8] c"Original Transmission Reference\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"Headline\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"Credit\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"Src\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"Copyright String\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"Caption\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"Local Caption\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"Caption Writer\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"Custom Field 1\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"Custom Field 2\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"Custom Field 3\00", align 1
@.str.161 = private unnamed_addr constant [15 x i8] c"Custom Field 4\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"Custom Field 5\00", align 1
@.str.163 = private unnamed_addr constant [15 x i8] c"Custom Field 6\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"Custom Field 7\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"Custom Field 8\00", align 1
@.str.166 = private unnamed_addr constant [15 x i8] c"Custom Field 9\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"Custom Field 10\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"Custom Field 11\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"Custom Field 12\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"Custom Field 13\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"Custom Field 14\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"Custom Field 15\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"Custom Field 16\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"Custom Field 17\00", align 1
@.str.175 = private unnamed_addr constant [16 x i8] c"Custom Field 18\00", align 1
@.str.176 = private unnamed_addr constant [16 x i8] c"Custom Field 19\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"Custom Field 20\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.179 = private unnamed_addr constant [24 x i8] c"      %s[%.20g,%.20g]: \00", align 1
@.str.180 = private unnamed_addr constant [14 x i8] c"  Artifacts:\0A\00", align 1
@.str.181 = private unnamed_addr constant [13 x i8] c"  Registry:\0A\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"  Tainted: %s\0A\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"  Filesize: %s\0A\00", align 1
@.str.184 = private unnamed_addr constant [21 x i8] c"  Number pixels: %s\0A\00", align 1
@.str.185 = private unnamed_addr constant [25 x i8] c"  Pixels per second: %s\0A\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"  User time: %0.3fu\0A\00", align 1
@.str.187 = private unnamed_addr constant [33 x i8] c"  Elapsed time: %lu:%02lu.%03lu\0A\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"  Version: %s\0A\00", align 1
@.str.189 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.191 = private unnamed_addr constant [18 x i8] c"  %s: %.*g (%.*g)\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c" %.20g,%.20g\00", align 1
@.str.193 = private unnamed_addr constant [139 x i8] c"    %s:\0A      min: %u (%g)\0A      max: %u (%g)\0A      mean: %g (%g)\0A      standard deviation: %g (%g)\0A      kurtosis: %g\0A      skewness: %g\0A\00", align 1
@__const.PrintChannelMoments.powers = private unnamed_addr constant [8 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 3.000000e+00, double 6.000000e+00, double 4.000000e+00, double 6.000000e+00, double 4.000000e+00], align 16
@.str.194 = private unnamed_addr constant [9 x i8] c"    %s:\0A\00", align 1
@.str.195 = private unnamed_addr constant [27 x i8] c"      Centroid: %.*g,%.*g\0A\00", align 1
@.str.196 = private unnamed_addr constant [48 x i8] c"      Ellipse Semi-Major/Minor axis: %.*g,%.*g\0A\00", align 1
@.str.197 = private unnamed_addr constant [27 x i8] c"      Ellipse angle: %.*g\0A\00", align 1
@.str.198 = private unnamed_addr constant [34 x i8] c"      Ellipse eccentricity: %.*g\0A\00", align 1
@.str.199 = private unnamed_addr constant [38 x i8] c"      Ellipse intensity: %.*g (%.*g)\0A\00", align 1
@.str.200 = private unnamed_addr constant [27 x i8] c"      I%.20g: %.*g (%.*g)\0A\00", align 1
@.str.201 = private unnamed_addr constant [27 x i8] c"      PH%.20g: %.*g, %.*g\0A\00", align 1
@.str.202 = private unnamed_addr constant [908 x i8] c"    %s:\0A      Angular Second Moment:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Contrast:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Correlation:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Sum of Squares Variance:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Inverse Difference Moment:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Sum Average:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Sum Variance:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Sum Entropy:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Entropy:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Difference Variance:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Difference Entropy:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Information Measure of Correlation 1:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Information Measure of Correlation 2:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A      Maximum Correlation Coefficient:\0A        %.*g, %.*g, %.*g, %.*g, %.*g\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @IdentifyImage(ptr noundef %image, ptr noundef %file, i32 noundef %verbose) local_unnamed_addr #0 !dbg !1087 {
entry:
  %exception4.i = alloca %struct._ExceptionInfo, align 8
  %color = alloca [4096 x i8], align 16
  %format = alloca [4096 x i8], align 16
  %key = alloca [4096 x i8], align 16
  %filename257 = alloca [4096 x i8], align 16
  %tuple = alloca [4096 x i8], align 16
  %pixel = alloca %struct._MagickPixelPacket, align 8
  %color687 = alloca [4096 x i8], align 16
  %hex = alloca [4096 x i8], align 16
  %tuple688 = alloca [4096 x i8], align 16
  %pixel689 = alloca %struct._MagickPixelPacket, align 8
  call void @llvm.dbg.value(metadata ptr %image, metadata !1093, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr %file, metadata !1094, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 %verbose, metadata !1095, metadata !DIExpression()), !dbg !1191
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %color) #12, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %color, metadata !1096, metadata !DIExpression()), !dbg !1193
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %format) #12, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %format, metadata !1097, metadata !DIExpression()), !dbg !1194
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %key) #12, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %key, metadata !1098, metadata !DIExpression()), !dbg !1195
  %debug = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 59, !dbg !1196
  %0 = load i32, ptr %debug, align 8, !dbg !1196, !tbaa !1198
  %cmp.not = icmp eq i32 %0, 0, !dbg !1217
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1218

if.then:                                          ; preds = %entry
  %filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1219
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 546, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename) #12, !dbg !1220
  br label %if.end, !dbg !1221

if.end:                                           ; preds = %if.then, %entry
  %cmp1 = icmp eq ptr %file, null, !dbg !1222
  %1 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp1, ptr %1, ptr %file, !dbg !1224
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1094, metadata !DIExpression()), !dbg !1191
  %call4 = tail call ptr @AcquireExceptionInfo() #12, !dbg !1225
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1115, metadata !DIExpression()), !dbg !1191
  %call5 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.3) #12, !dbg !1226
  call void @llvm.dbg.value(metadata ptr %call5, metadata !1105, metadata !DIExpression()), !dbg !1191
  %cmp6.not = icmp eq ptr %call5, null, !dbg !1227
  br i1 %cmp6.not, label %if.end49, label %if.then7, !dbg !1228

if.then7:                                         ; preds = %if.end
  %call9 = tail call i64 @ParseCommandOption(i32 noundef 61, i32 noundef 0, ptr noundef nonnull %call5) #12, !dbg !1229
  %conv = trunc i64 %call9 to i32, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1126, metadata !DIExpression()), !dbg !1231
  %call10 = tail call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.4) #12, !dbg !1232
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1122, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 0, metadata !1125, metadata !DIExpression()), !dbg !1231
  %cmp11.not = icmp eq ptr %call10, null, !dbg !1233
  br i1 %cmp11.not, label %if.end15, label %if.then13, !dbg !1235

if.then13:                                        ; preds = %if.then7
  call void @llvm.dbg.value(metadata ptr %call10, metadata !1236, metadata !DIExpression()) #12, !dbg !1243
  %call.i = tail call i64 @strtoul(ptr nocapture noundef nonnull %call10, ptr noundef null, i32 noundef 10) #12, !dbg !1245
  call void @llvm.dbg.value(metadata i64 %call.i, metadata !1125, metadata !DIExpression()), !dbg !1231
  br label %if.end15, !dbg !1246

if.end15:                                         ; preds = %if.then13, %if.then7
  %max_locations.0 = phi i64 [ %call.i, %if.then13 ], [ 0, %if.then7 ], !dbg !1231
  call void @llvm.dbg.value(metadata i64 %max_locations.0, metadata !1125, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata ptr %image, metadata !1247, metadata !DIExpression()) #12, !dbg !1271
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1253, metadata !DIExpression()) #12, !dbg !1271
  call void @llvm.dbg.value(metadata ptr %call4, metadata !1254, metadata !DIExpression()) #12, !dbg !1271
  %2 = load i32, ptr %debug, align 8, !dbg !1273, !tbaa !1198
  %cmp.not.i = icmp eq i32 %2, 0, !dbg !1275
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !1276

if.then.i:                                        ; preds = %if.end15
  %filename.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1277
  %call.i2045 = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 147, ptr noundef nonnull @.str.2, ptr noundef nonnull %filename.i) #12, !dbg !1278
  br label %if.end.i, !dbg !1279

if.end.i:                                         ; preds = %if.then.i, %if.end15
  call void @llvm.dbg.value(metadata i64 48, metadata !1257, metadata !DIExpression()) #12, !dbg !1271
  %call1.i = tail call ptr @AcquireQuantumMemory(i64 noundef 48, i64 noundef 96) #13, !dbg !1280
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1255, metadata !DIExpression()) #12, !dbg !1271
  %cmp2.i = icmp eq ptr %call1.i, null, !dbg !1281
  br i1 %cmp2.i, label %if.then3.i, label %if.end10.i, !dbg !1282

if.then3.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception4.i) #12, !dbg !1283
  call void @llvm.dbg.declare(metadata ptr %exception4.i, metadata !1262, metadata !DIExpression()) #12, !dbg !1283
  call void @GetExceptionInfo(ptr noundef nonnull %exception4.i) #12, !dbg !1283
  %call5.i = tail call ptr @__errno_location() #14, !dbg !1283
  %3 = load i32, ptr %call5.i, align 4, !dbg !1283, !tbaa !1284
  %call6.i = call ptr @GetExceptionMessage(i32 noundef %3) #12, !dbg !1283
  call void @llvm.dbg.value(metadata ptr %call6.i, metadata !1259, metadata !DIExpression()) #12, !dbg !1285
  %call7.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception4.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i64 noundef 152, i32 noundef 700, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.190, ptr noundef %call6.i) #12, !dbg !1283
  %call8.i = call ptr @DestroyString(ptr noundef %call6.i) #12, !dbg !1283
  call void @llvm.dbg.value(metadata ptr %call8.i, metadata !1259, metadata !DIExpression()) #12, !dbg !1285
  call void @CatchException(ptr noundef nonnull %exception4.i) #12, !dbg !1283
  %call9.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception4.i) #12, !dbg !1283
  call void @MagickCoreTerminus() #12, !dbg !1283
  call void @_exit(i32 noundef 1) #15, !dbg !1283
  unreachable, !dbg !1283

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call1.i, i32 noundef 0, i64 noundef 4608) #12, !dbg !1286
  call void @llvm.dbg.value(metadata i64 0, metadata !1256, metadata !DIExpression()) #12, !dbg !1271
  %cond198.i = icmp eq i32 %conv, 5
  call void @llvm.dbg.value(metadata i64 0, metadata !1256, metadata !DIExpression()) #12, !dbg !1271
  br i1 %cond198.i, label %for.body.us.i, label %for.body.i, !dbg !1287

for.body.us.i:                                    ; preds = %if.end10.i, %for.body.us.i
  %i.0293.us.i = phi i64 [ %inc.us.i, %for.body.us.i ], [ 0, %if.end10.i ]
  call void @llvm.dbg.value(metadata i64 %i.0293.us.i, metadata !1256, metadata !DIExpression()) #12, !dbg !1271
  %minima.us.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 %i.0293.us.i, i32 1, !dbg !1291
  store double 0x7FEFFFFFFFFFFFFF, ptr %minima.us.i, align 8, !dbg !1294, !tbaa !1295
  %inc.us.i = add nuw nsw i64 %i.0293.us.i, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %inc.us.i, metadata !1256, metadata !DIExpression()) #12, !dbg !1271
  %exitcond342.not.i = icmp eq i64 %inc.us.i, 48, !dbg !1298
  br i1 %exitcond342.not.i, label %for.cond15.preheader.i, label %for.body.us.i, !dbg !1299, !llvm.loop !1300

for.cond15.preheader.i:                           ; preds = %for.body.i, %for.body.us.i
  %columns.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1304
  %rows.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !1258, metadata !DIExpression()) #12, !dbg !1271
  %4 = load i64, ptr %rows.i, align 8, !dbg !1305, !tbaa !1306
  %cmp16301.i = icmp sgt i64 %4, 0, !dbg !1307
  br i1 %cmp16301.i, label %for.body17.lr.ph.i, label %if.end20, !dbg !1308

for.body17.lr.ph.i:                               ; preds = %for.cond15.preheader.i
  %maxima30.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 1, i32 2
  %maxima41.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 2, i32 2
  %maxima52.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 4, i32 2
  %matte.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6
  %maxima65.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 8, i32 2
  %colorspace.i = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1
  %maxima83277.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 32, i32 2
  %minima104.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 1, i32 1
  %minima116.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 2, i32 1
  %minima128.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 4, i32 1
  %minima144.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 8, i32 1
  %minima168285.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 32, i32 1
  %.pre348.i = load i64, ptr %columns.i, align 8, !dbg !1304, !tbaa !1309
  br i1 %cond198.i, label %for.body17.us.i, label %for.body17.i, !dbg !1310

for.body17.us.i:                                  ; preds = %for.body17.lr.ph.i, %for.inc191.us.i
  %5 = phi i64 [ %6, %for.inc191.us.i ], [ %.pre348.i, %for.body17.lr.ph.i ], !dbg !1304
  %y.0302.us.i = phi i64 [ %inc192.us.i, %for.inc191.us.i ], [ 0, %for.body17.lr.ph.i ]
  call void @llvm.dbg.value(metadata i64 %y.0302.us.i, metadata !1258, metadata !DIExpression()) #12, !dbg !1271
  %call18.us.i = tail call ptr @GetVirtualPixels(ptr noundef nonnull %image, i64 noundef 0, i64 noundef %y.0302.us.i, i64 noundef %5, i64 noundef 1, ptr noundef %call4) #12, !dbg !1314
  call void @llvm.dbg.value(metadata ptr %call18.us.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %cmp19.us.i = icmp eq ptr %call18.us.i, null, !dbg !1316
  br i1 %cmp19.us.i, label %if.end20, label %if.end21.us.i, !dbg !1318

if.end21.us.i:                                    ; preds = %for.body17.us.i
  %call22.us.i = tail call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image) #12, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call22.us.i, metadata !1263, metadata !DIExpression()) #12, !dbg !1315
  call void @llvm.dbg.value(metadata i64 0, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  %6 = load i64, ptr %columns.i, align 8, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %call18.us.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %cmp25295.us.i = icmp sgt i64 %6, 0, !dbg !1320
  br i1 %cmp25295.us.i, label %for.body26.lr.ph.us.i, label %for.inc191.us.i, !dbg !1321

for.inc191.us.i:                                  ; preds = %if.end152.us.us.i, %if.end136.us.us.us330.i, %sw.epilog185.us.us.us.i, %if.end21.us.i
  %inc192.us.i = add nuw nsw i64 %y.0302.us.i, 1, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %inc192.us.i, metadata !1258, metadata !DIExpression()) #12, !dbg !1271
  %7 = load i64, ptr %rows.i, align 8, !dbg !1305, !tbaa !1306
  %cmp16.us.i = icmp slt i64 %inc192.us.i, %7, !dbg !1307
  br i1 %cmp16.us.i, label %for.body17.us.i, label %if.end20, !dbg !1308, !llvm.loop !1323

for.body26.lr.ph.us.i:                            ; preds = %if.end21.us.i
  %cmp158.us.i = icmp eq ptr %call22.us.i, null
  %8 = load i32, ptr %matte.i, align 8, !tbaa !1325
  %cmp138.not.us.us.i = icmp eq i32 %8, 0
  %9 = load i32, ptr %colorspace.i, align 4, !tbaa !1326
  %cmp154.us.us.i = icmp eq i32 %9, 12
  %minima104.promoted.i = load double, ptr %minima104.i, align 8, !tbaa !1295
  %minima116.promoted.i = load double, ptr %minima116.i, align 8, !tbaa !1295
  %minima128.promoted.i = load double, ptr %minima128.i, align 8, !tbaa !1295
  br i1 %cmp154.us.us.i, label %for.body26.us.us.us.i, label %for.body26.lr.ph.split.us.us.split.i, !dbg !1327

for.body26.us.us.us.i:                            ; preds = %for.body26.lr.ph.us.i, %sw.epilog185.us.us.us.i
  %conv126.us.us308.us.i = phi double [ %conv126.us.us307.us.i, %sw.epilog185.us.us.us.i ], [ %minima128.promoted.i, %for.body26.lr.ph.us.i ]
  %conv114.us.us306.us.i = phi double [ %conv114.us.us305.us.i, %sw.epilog185.us.us.us.i ], [ %minima116.promoted.i, %for.body26.lr.ph.us.i ]
  %conv102.us.us304.us.i = phi double [ %conv102.us.us303.us.i, %sw.epilog185.us.us.us.i ], [ %minima104.promoted.i, %for.body26.lr.ph.us.i ]
  %x.0299.us.us.us.i = phi i64 [ %inc187.us.us.us.i, %sw.epilog185.us.us.us.i ], [ 0, %for.body26.lr.ph.us.i ]
  %p.0296.us.us.us.i = phi ptr [ %incdec.ptr.us.us.us.i, %sw.epilog185.us.us.us.i ], [ %call18.us.i, %for.body26.lr.ph.us.i ]
  call void @llvm.dbg.value(metadata i64 %x.0299.us.us.us.i, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  call void @llvm.dbg.value(metadata ptr %p.0296.us.us.us.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %red101.us.us.us.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.us.i, i64 0, i32 2, !dbg !1331
  %10 = load i16, ptr %red101.us.us.us.i, align 2, !dbg !1331, !tbaa !1333
  %conv102.us.us.us.i = uitofp i16 %10 to double, !dbg !1334
  %cmp105.us.us.us.i = fcmp ogt double %conv102.us.us304.us.i, %conv102.us.us.us.i, !dbg !1335
  br i1 %cmp105.us.us.us.i, label %if.then107.us.us.us.i, label %if.end112.us.us.us.i, !dbg !1336

if.then107.us.us.us.i:                            ; preds = %for.body26.us.us.us.i
  store double %conv102.us.us.us.i, ptr %minima104.i, align 8, !dbg !1337, !tbaa !1295
  br label %if.end112.us.us.us.i, !dbg !1338

if.end112.us.us.us.i:                             ; preds = %if.then107.us.us.us.i, %for.body26.us.us.us.i
  %conv102.us.us303.us.i = phi double [ %conv102.us.us.us.i, %if.then107.us.us.us.i ], [ %conv102.us.us304.us.i, %for.body26.us.us.us.i ]
  %green113.us.us.us.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.us.i, i64 0, i32 1, !dbg !1339
  %11 = load i16, ptr %green113.us.us.us.i, align 2, !dbg !1339, !tbaa !1341
  %conv114.us.us.us.i = uitofp i16 %11 to double, !dbg !1342
  %cmp117.us.us.us.i = fcmp ogt double %conv114.us.us306.us.i, %conv114.us.us.us.i, !dbg !1343
  br i1 %cmp117.us.us.us.i, label %if.then119.us.us.us.i, label %if.end124.us.us.us.i, !dbg !1344

if.then119.us.us.us.i:                            ; preds = %if.end112.us.us.us.i
  store double %conv114.us.us.us.i, ptr %minima116.i, align 8, !dbg !1345, !tbaa !1295
  br label %if.end124.us.us.us.i, !dbg !1346

if.end124.us.us.us.i:                             ; preds = %if.then119.us.us.us.i, %if.end112.us.us.us.i
  %conv114.us.us305.us.i = phi double [ %conv114.us.us.us.i, %if.then119.us.us.us.i ], [ %conv114.us.us306.us.i, %if.end112.us.us.us.i ]
  %12 = load i16, ptr %p.0296.us.us.us.i, align 2, !dbg !1347, !tbaa !1349
  %conv126.us.us.us.i = uitofp i16 %12 to double, !dbg !1350
  %cmp129.us.us.us.i = fcmp ogt double %conv126.us.us308.us.i, %conv126.us.us.us.i, !dbg !1351
  br i1 %cmp129.us.us.us.i, label %if.then131.us.us.us.i, label %if.end136.us.us.us.i, !dbg !1352

if.then131.us.us.us.i:                            ; preds = %if.end124.us.us.us.i
  store double %conv126.us.us.us.i, ptr %minima128.i, align 8, !dbg !1353, !tbaa !1295
  br label %if.end136.us.us.us.i, !dbg !1354

if.end136.us.us.us.i:                             ; preds = %if.then131.us.us.us.i, %if.end124.us.us.us.i
  %conv126.us.us307.us.i = phi double [ %conv126.us.us.us.i, %if.then131.us.us.us.i ], [ %conv126.us.us308.us.i, %if.end124.us.us.us.i ]
  br i1 %cmp138.not.us.us.i, label %if.end152.us.us.us.i, label %land.lhs.true140.us.us.us.i, !dbg !1355

land.lhs.true140.us.us.us.i:                      ; preds = %if.end136.us.us.us.i
  %opacity141.us.us.us.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.us.i, i64 0, i32 3, !dbg !1357
  %13 = load i16, ptr %opacity141.us.us.us.i, align 2, !dbg !1357, !tbaa !1358
  %conv142.us.us.us.i = uitofp i16 %13 to double, !dbg !1359
  %14 = load double, ptr %minima144.i, align 8, !dbg !1360, !tbaa !1295
  %cmp145.us.us.us.i = fcmp ogt double %14, %conv142.us.us.us.i, !dbg !1361
  br i1 %cmp145.us.us.us.i, label %if.then147.us.us.us.i, label %if.end152.us.us.us.i, !dbg !1362

if.then147.us.us.us.i:                            ; preds = %land.lhs.true140.us.us.us.i
  store double %conv142.us.us.us.i, ptr %minima144.i, align 8, !dbg !1363, !tbaa !1295
  br label %if.end152.us.us.us.i, !dbg !1364

if.end152.us.us.us.i:                             ; preds = %if.then147.us.us.us.i, %land.lhs.true140.us.us.us.i, %if.end136.us.us.us.i
  br i1 %cmp158.us.i, label %cond.end164.us.us.us.i, label %cond.end164.thread.us.us.us.i, !dbg !1365

cond.end164.thread.us.us.us.i:                    ; preds = %if.end152.us.us.us.i
  %add.ptr157.us.us.us.i = getelementptr inbounds i16, ptr %call22.us.i, i64 %x.0299.us.us.us.i, !dbg !1365
  %15 = load i16, ptr %add.ptr157.us.us.us.i, align 2, !dbg !1365, !tbaa !1366
  %conv166284.us.us.us.i = uitofp i16 %15 to double, !dbg !1367
  %16 = load double, ptr %minima168285.i, align 8, !dbg !1368, !tbaa !1295
  %cmp169286.us.us.us.i = fcmp ogt double %16, %conv166284.us.us.us.i, !dbg !1369
  br i1 %cmp169286.us.us.us.i, label %cond.false176.us.us.us.i, label %sw.epilog185.us.us.us.i, !dbg !1370

cond.false176.us.us.us.i:                         ; preds = %cond.end164.thread.us.us.us.i
  %conv178.us.us.us.i = zext i16 %15 to i32, !dbg !1371
  br label %cond.end179.us.us.us.i, !dbg !1371

cond.end164.us.us.us.i:                           ; preds = %if.end152.us.us.us.i
  %17 = load double, ptr %minima168285.i, align 8, !dbg !1368, !tbaa !1295
  %cmp169.us.us.us.i = fcmp ogt double %17, 0.000000e+00, !dbg !1369
  br i1 %cmp169.us.us.us.i, label %cond.end179.us.us.us.i, label %sw.epilog185.us.us.us.i, !dbg !1370

cond.end179.us.us.us.i:                           ; preds = %cond.end164.us.us.us.i, %cond.false176.us.us.us.i
  %cond180.us.us.us.i = phi i32 [ %conv178.us.us.us.i, %cond.false176.us.us.us.i ], [ 0, %cond.end164.us.us.us.i ], !dbg !1371
  %conv181.us.us.us.i = sitofp i32 %cond180.us.us.us.i to double, !dbg !1372
  store double %conv181.us.us.us.i, ptr %minima168285.i, align 8, !dbg !1373, !tbaa !1295
  br label %sw.epilog185.us.us.us.i, !dbg !1374

sw.epilog185.us.us.us.i:                          ; preds = %cond.end179.us.us.us.i, %cond.end164.us.us.us.i, %cond.end164.thread.us.us.us.i
  %incdec.ptr.us.us.us.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.us.i, i64 1, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %inc187.us.us.us.i = add nuw nsw i64 %x.0299.us.us.us.i, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %inc187.us.us.us.i, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  %exitcond346.not.i = icmp eq i64 %inc187.us.us.us.i, %6, !dbg !1320
  br i1 %exitcond346.not.i, label %for.inc191.us.i, label %for.body26.us.us.us.i, !dbg !1321, !llvm.loop !1377

for.body26.lr.ph.split.us.us.split.i:             ; preds = %for.body26.lr.ph.us.i
  br i1 %cmp138.not.us.us.i, label %for.body26.us.us.us309.i, label %for.body26.lr.ph.split.us.us.split.split.i, !dbg !1355

for.body26.us.us.us309.i:                         ; preds = %for.body26.lr.ph.split.us.us.split.i, %if.end136.us.us.us330.i
  %conv126.us.us308.us310.i = phi double [ %conv126.us.us307.us331.i, %if.end136.us.us.us330.i ], [ %minima128.promoted.i, %for.body26.lr.ph.split.us.us.split.i ]
  %conv114.us.us306.us311.i = phi double [ %conv114.us.us305.us326.i, %if.end136.us.us.us330.i ], [ %minima116.promoted.i, %for.body26.lr.ph.split.us.us.split.i ]
  %conv102.us.us304.us312.i = phi double [ %conv102.us.us303.us320.i, %if.end136.us.us.us330.i ], [ %minima104.promoted.i, %for.body26.lr.ph.split.us.us.split.i ]
  %x.0299.us.us.us313.i = phi i64 [ %inc187.us.us.us334.i, %if.end136.us.us.us330.i ], [ 0, %for.body26.lr.ph.split.us.us.split.i ]
  %p.0296.us.us.us314.i = phi ptr [ %incdec.ptr.us.us.us333.i, %if.end136.us.us.us330.i ], [ %call18.us.i, %for.body26.lr.ph.split.us.us.split.i ]
  call void @llvm.dbg.value(metadata i64 %x.0299.us.us.us313.i, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  call void @llvm.dbg.value(metadata ptr %p.0296.us.us.us314.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %red101.us.us.us315.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.us314.i, i64 0, i32 2, !dbg !1331
  %18 = load i16, ptr %red101.us.us.us315.i, align 2, !dbg !1331, !tbaa !1333
  %conv102.us.us.us316.i = uitofp i16 %18 to double, !dbg !1334
  %cmp105.us.us.us317.i = fcmp ogt double %conv102.us.us304.us312.i, %conv102.us.us.us316.i, !dbg !1335
  br i1 %cmp105.us.us.us317.i, label %if.then107.us.us.us318.i, label %if.end112.us.us.us319.i, !dbg !1336

if.then107.us.us.us318.i:                         ; preds = %for.body26.us.us.us309.i
  store double %conv102.us.us.us316.i, ptr %minima104.i, align 8, !dbg !1337, !tbaa !1295
  br label %if.end112.us.us.us319.i, !dbg !1338

if.end112.us.us.us319.i:                          ; preds = %if.then107.us.us.us318.i, %for.body26.us.us.us309.i
  %conv102.us.us303.us320.i = phi double [ %conv102.us.us.us316.i, %if.then107.us.us.us318.i ], [ %conv102.us.us304.us312.i, %for.body26.us.us.us309.i ]
  %green113.us.us.us321.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.us314.i, i64 0, i32 1, !dbg !1339
  %19 = load i16, ptr %green113.us.us.us321.i, align 2, !dbg !1339, !tbaa !1341
  %conv114.us.us.us322.i = uitofp i16 %19 to double, !dbg !1342
  %cmp117.us.us.us323.i = fcmp ogt double %conv114.us.us306.us311.i, %conv114.us.us.us322.i, !dbg !1343
  br i1 %cmp117.us.us.us323.i, label %if.then119.us.us.us324.i, label %if.end124.us.us.us325.i, !dbg !1344

if.then119.us.us.us324.i:                         ; preds = %if.end112.us.us.us319.i
  store double %conv114.us.us.us322.i, ptr %minima116.i, align 8, !dbg !1345, !tbaa !1295
  br label %if.end124.us.us.us325.i, !dbg !1346

if.end124.us.us.us325.i:                          ; preds = %if.then119.us.us.us324.i, %if.end112.us.us.us319.i
  %conv114.us.us305.us326.i = phi double [ %conv114.us.us.us322.i, %if.then119.us.us.us324.i ], [ %conv114.us.us306.us311.i, %if.end112.us.us.us319.i ]
  %20 = load i16, ptr %p.0296.us.us.us314.i, align 2, !dbg !1347, !tbaa !1349
  %conv126.us.us.us327.i = uitofp i16 %20 to double, !dbg !1350
  %cmp129.us.us.us328.i = fcmp ogt double %conv126.us.us308.us310.i, %conv126.us.us.us327.i, !dbg !1351
  br i1 %cmp129.us.us.us328.i, label %if.then131.us.us.us329.i, label %if.end136.us.us.us330.i, !dbg !1352

if.then131.us.us.us329.i:                         ; preds = %if.end124.us.us.us325.i
  store double %conv126.us.us.us327.i, ptr %minima128.i, align 8, !dbg !1353, !tbaa !1295
  br label %if.end136.us.us.us330.i, !dbg !1354

if.end136.us.us.us330.i:                          ; preds = %if.then131.us.us.us329.i, %if.end124.us.us.us325.i
  %conv126.us.us307.us331.i = phi double [ %conv126.us.us.us327.i, %if.then131.us.us.us329.i ], [ %conv126.us.us308.us310.i, %if.end124.us.us.us325.i ]
  %incdec.ptr.us.us.us333.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.us314.i, i64 1, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us333.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %inc187.us.us.us334.i = add nuw nsw i64 %x.0299.us.us.us313.i, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %inc187.us.us.us334.i, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  %exitcond345.not.i = icmp eq i64 %inc187.us.us.us334.i, %6, !dbg !1320
  br i1 %exitcond345.not.i, label %for.inc191.us.i, label %for.body26.us.us.us309.i, !dbg !1321, !llvm.loop !1379

for.body26.lr.ph.split.us.us.split.split.i:       ; preds = %for.body26.lr.ph.split.us.us.split.i
  %minima144.promoted.i = load double, ptr %minima144.i, align 8, !tbaa !1295
  br label %for.body26.us.us.i, !dbg !1321

for.body26.us.us.i:                               ; preds = %if.end152.us.us.i, %for.body26.lr.ph.split.us.us.split.split.i
  %conv142.us.us337.i = phi double [ %minima144.promoted.i, %for.body26.lr.ph.split.us.us.split.split.i ], [ %conv142.us.us336.i, %if.end152.us.us.i ]
  %conv126.us.us308.i = phi double [ %minima128.promoted.i, %for.body26.lr.ph.split.us.us.split.split.i ], [ %conv126.us.us307.i, %if.end152.us.us.i ]
  %conv114.us.us306.i = phi double [ %minima116.promoted.i, %for.body26.lr.ph.split.us.us.split.split.i ], [ %conv114.us.us305.i, %if.end152.us.us.i ]
  %conv102.us.us304.i = phi double [ %minima104.promoted.i, %for.body26.lr.ph.split.us.us.split.split.i ], [ %conv102.us.us303.i, %if.end152.us.us.i ]
  %x.0299.us.us.i = phi i64 [ 0, %for.body26.lr.ph.split.us.us.split.split.i ], [ %inc187.us.us.i, %if.end152.us.us.i ]
  %p.0296.us.us.i = phi ptr [ %call18.us.i, %for.body26.lr.ph.split.us.us.split.split.i ], [ %incdec.ptr.us.us.i, %if.end152.us.us.i ]
  call void @llvm.dbg.value(metadata i64 %x.0299.us.us.i, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  call void @llvm.dbg.value(metadata ptr %p.0296.us.us.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %red101.us.us.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.i, i64 0, i32 2, !dbg !1331
  %21 = load i16, ptr %red101.us.us.i, align 2, !dbg !1331, !tbaa !1333
  %conv102.us.us.i = uitofp i16 %21 to double, !dbg !1334
  %cmp105.us.us.i = fcmp ogt double %conv102.us.us304.i, %conv102.us.us.i, !dbg !1335
  br i1 %cmp105.us.us.i, label %if.then107.us.us.i, label %if.end112.us.us.i, !dbg !1336

if.then107.us.us.i:                               ; preds = %for.body26.us.us.i
  store double %conv102.us.us.i, ptr %minima104.i, align 8, !dbg !1337, !tbaa !1295
  br label %if.end112.us.us.i, !dbg !1338

if.end112.us.us.i:                                ; preds = %if.then107.us.us.i, %for.body26.us.us.i
  %conv102.us.us303.i = phi double [ %conv102.us.us.i, %if.then107.us.us.i ], [ %conv102.us.us304.i, %for.body26.us.us.i ]
  %green113.us.us.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.i, i64 0, i32 1, !dbg !1339
  %22 = load i16, ptr %green113.us.us.i, align 2, !dbg !1339, !tbaa !1341
  %conv114.us.us.i = uitofp i16 %22 to double, !dbg !1342
  %cmp117.us.us.i = fcmp ogt double %conv114.us.us306.i, %conv114.us.us.i, !dbg !1343
  br i1 %cmp117.us.us.i, label %if.then119.us.us.i, label %if.end124.us.us.i, !dbg !1344

if.then119.us.us.i:                               ; preds = %if.end112.us.us.i
  store double %conv114.us.us.i, ptr %minima116.i, align 8, !dbg !1345, !tbaa !1295
  br label %if.end124.us.us.i, !dbg !1346

if.end124.us.us.i:                                ; preds = %if.then119.us.us.i, %if.end112.us.us.i
  %conv114.us.us305.i = phi double [ %conv114.us.us.i, %if.then119.us.us.i ], [ %conv114.us.us306.i, %if.end112.us.us.i ]
  %23 = load i16, ptr %p.0296.us.us.i, align 2, !dbg !1347, !tbaa !1349
  %conv126.us.us.i = uitofp i16 %23 to double, !dbg !1350
  %cmp129.us.us.i = fcmp ogt double %conv126.us.us308.i, %conv126.us.us.i, !dbg !1351
  br i1 %cmp129.us.us.i, label %if.then131.us.us.i, label %if.end136.us.us.i, !dbg !1352

if.then131.us.us.i:                               ; preds = %if.end124.us.us.i
  store double %conv126.us.us.i, ptr %minima128.i, align 8, !dbg !1353, !tbaa !1295
  br label %if.end136.us.us.i, !dbg !1354

if.end136.us.us.i:                                ; preds = %if.then131.us.us.i, %if.end124.us.us.i
  %conv126.us.us307.i = phi double [ %conv126.us.us.i, %if.then131.us.us.i ], [ %conv126.us.us308.i, %if.end124.us.us.i ]
  %opacity141.us.us.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.i, i64 0, i32 3, !dbg !1357
  %24 = load i16, ptr %opacity141.us.us.i, align 2, !dbg !1357, !tbaa !1358
  %conv142.us.us.i = uitofp i16 %24 to double, !dbg !1359
  %cmp145.us.us.i = fcmp ogt double %conv142.us.us337.i, %conv142.us.us.i, !dbg !1361
  br i1 %cmp145.us.us.i, label %if.then147.us.us.i, label %if.end152.us.us.i, !dbg !1362

if.then147.us.us.i:                               ; preds = %if.end136.us.us.i
  store double %conv142.us.us.i, ptr %minima144.i, align 8, !dbg !1363, !tbaa !1295
  br label %if.end152.us.us.i, !dbg !1364

if.end152.us.us.i:                                ; preds = %if.then147.us.us.i, %if.end136.us.us.i
  %conv142.us.us336.i = phi double [ %conv142.us.us.i, %if.then147.us.us.i ], [ %conv142.us.us337.i, %if.end136.us.us.i ]
  %incdec.ptr.us.us.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.us.us.i, i64 1, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %inc187.us.us.i = add nuw nsw i64 %x.0299.us.us.i, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %inc187.us.us.i, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  %exitcond344.not.i = icmp eq i64 %inc187.us.us.i, %6, !dbg !1320
  br i1 %exitcond344.not.i, label %for.inc191.us.i, label %for.body26.us.us.i, !dbg !1321, !llvm.loop !1380

for.body.i:                                       ; preds = %if.end10.i, %for.body.i
  %i.0293.i = phi i64 [ %inc.i, %for.body.i ], [ 0, %if.end10.i ]
  call void @llvm.dbg.value(metadata i64 %i.0293.i, metadata !1256, metadata !DIExpression()) #12, !dbg !1271
  %maxima.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call1.i, i64 %i.0293.i, i32 2, !dbg !1381
  store double 0xFFEFFFFFFFFFFFFF, ptr %maxima.i, align 8, !dbg !1383, !tbaa !1384
  %inc.i = add nuw nsw i64 %i.0293.i, 1, !dbg !1297
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !1256, metadata !DIExpression()) #12, !dbg !1271
  %exitcond.not.i = icmp eq i64 %inc.i, 48, !dbg !1298
  br i1 %exitcond.not.i, label %for.cond15.preheader.i, label %for.body.i, !dbg !1299, !llvm.loop !1385

for.body17.i:                                     ; preds = %for.body17.lr.ph.i, %for.inc191.i
  %25 = phi i64 [ %26, %for.inc191.i ], [ %.pre348.i, %for.body17.lr.ph.i ], !dbg !1304
  %y.0302.i = phi i64 [ %inc192.i, %for.inc191.i ], [ 0, %for.body17.lr.ph.i ]
  call void @llvm.dbg.value(metadata i64 %y.0302.i, metadata !1258, metadata !DIExpression()) #12, !dbg !1271
  %call18.i = tail call ptr @GetVirtualPixels(ptr noundef nonnull %image, i64 noundef 0, i64 noundef %y.0302.i, i64 noundef %25, i64 noundef 1, ptr noundef %call4) #12, !dbg !1314
  call void @llvm.dbg.value(metadata ptr %call18.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %cmp19.i = icmp eq ptr %call18.i, null, !dbg !1316
  br i1 %cmp19.i, label %if.end20, label %if.end21.i, !dbg !1318

if.end21.i:                                       ; preds = %for.body17.i
  %call22.i = tail call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image) #12, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %call22.i, metadata !1263, metadata !DIExpression()) #12, !dbg !1315
  call void @llvm.dbg.value(metadata i64 0, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  %26 = load i64, ptr %columns.i, align 8, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %call18.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %cmp25295.i = icmp sgt i64 %26, 0, !dbg !1320
  br i1 %cmp25295.i, label %for.body26.lr.ph.i, label %for.inc191.i, !dbg !1321

for.body26.lr.ph.i:                               ; preds = %if.end21.i
  %cmp77.i = icmp eq ptr %call22.i, null
  %27 = load i32, ptr %matte.i, align 8, !tbaa !1325
  %cmp61.not.i = icmp eq i32 %27, 0
  %28 = load i32, ptr %colorspace.i, align 4, !tbaa !1326
  %cmp74.i = icmp eq i32 %28, 12
  %.pre347.i = load double, ptr %maxima30.i, align 8, !dbg !1386, !tbaa !1384
  %maxima41.promoted.i = load double, ptr %maxima41.i, align 8, !tbaa !1384
  %maxima52.promoted.i = load double, ptr %maxima52.i, align 8, !tbaa !1384
  br i1 %cmp74.i, label %for.body26.i.us, label %for.body26.lr.ph.i.split, !dbg !1389

for.body26.i.us:                                  ; preds = %for.body26.lr.ph.i, %sw.epilog185.i.us
  %conv50356.i.us = phi double [ %conv50355.i.us, %sw.epilog185.i.us ], [ %maxima52.promoted.i, %for.body26.lr.ph.i ]
  %conv39354.i.us = phi double [ %conv39353.i.us, %sw.epilog185.i.us ], [ %maxima41.promoted.i, %for.body26.lr.ph.i ]
  %29 = phi double [ %31, %sw.epilog185.i.us ], [ %.pre347.i, %for.body26.lr.ph.i ], !dbg !1386
  %x.0299.i.us = phi i64 [ %inc187.i.us, %sw.epilog185.i.us ], [ 0, %for.body26.lr.ph.i ]
  %p.0296.i.us = phi ptr [ %incdec.ptr.i.us, %sw.epilog185.i.us ], [ %call18.i, %for.body26.lr.ph.i ]
  call void @llvm.dbg.value(metadata i64 %x.0299.i.us, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  call void @llvm.dbg.value(metadata ptr %p.0296.i.us, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %red.i.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i.us, i64 0, i32 2, !dbg !1391
  %30 = load i16, ptr %red.i.us, align 2, !dbg !1391, !tbaa !1333
  %conv.i.us = uitofp i16 %30 to double, !dbg !1392
  %cmp31.i.us = fcmp olt double %29, %conv.i.us, !dbg !1393
  br i1 %cmp31.i.us, label %if.then33.i.us, label %if.end38.i.us, !dbg !1394

if.then33.i.us:                                   ; preds = %for.body26.i.us
  store double %conv.i.us, ptr %maxima30.i, align 8, !dbg !1395, !tbaa !1384
  br label %if.end38.i.us, !dbg !1396

if.end38.i.us:                                    ; preds = %if.then33.i.us, %for.body26.i.us
  %31 = phi double [ %conv.i.us, %if.then33.i.us ], [ %29, %for.body26.i.us ]
  %green.i.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i.us, i64 0, i32 1, !dbg !1397
  %32 = load i16, ptr %green.i.us, align 2, !dbg !1397, !tbaa !1341
  %conv39.i.us = uitofp i16 %32 to double, !dbg !1399
  %cmp42.i.us = fcmp olt double %conv39354.i.us, %conv39.i.us, !dbg !1400
  br i1 %cmp42.i.us, label %if.then44.i.us, label %if.end49.i.us, !dbg !1401

if.then44.i.us:                                   ; preds = %if.end38.i.us
  store double %conv39.i.us, ptr %maxima41.i, align 8, !dbg !1402, !tbaa !1384
  br label %if.end49.i.us, !dbg !1403

if.end49.i.us:                                    ; preds = %if.then44.i.us, %if.end38.i.us
  %conv39353.i.us = phi double [ %conv39.i.us, %if.then44.i.us ], [ %conv39354.i.us, %if.end38.i.us ]
  %33 = load i16, ptr %p.0296.i.us, align 2, !dbg !1404, !tbaa !1349
  %conv50.i.us = uitofp i16 %33 to double, !dbg !1406
  %cmp53.i.us = fcmp olt double %conv50356.i.us, %conv50.i.us, !dbg !1407
  br i1 %cmp53.i.us, label %if.then55.i.us, label %if.end60.i.us, !dbg !1408

if.then55.i.us:                                   ; preds = %if.end49.i.us
  store double %conv50.i.us, ptr %maxima52.i, align 8, !dbg !1409, !tbaa !1384
  br label %if.end60.i.us, !dbg !1410

if.end60.i.us:                                    ; preds = %if.then55.i.us, %if.end49.i.us
  %conv50355.i.us = phi double [ %conv50.i.us, %if.then55.i.us ], [ %conv50356.i.us, %if.end49.i.us ]
  br i1 %cmp61.not.i, label %if.end73.i.us, label %land.lhs.true.i.us, !dbg !1411

land.lhs.true.i.us:                               ; preds = %if.end60.i.us
  %opacity.i.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i.us, i64 0, i32 3, !dbg !1413
  %34 = load i16, ptr %opacity.i.us, align 2, !dbg !1413, !tbaa !1358
  %conv63.i.us = uitofp i16 %34 to double, !dbg !1414
  %35 = load double, ptr %maxima65.i, align 8, !dbg !1415, !tbaa !1384
  %cmp66.i.us = fcmp olt double %35, %conv63.i.us, !dbg !1416
  br i1 %cmp66.i.us, label %if.then68.i.us, label %if.end73.i.us, !dbg !1417

if.then68.i.us:                                   ; preds = %land.lhs.true.i.us
  store double %conv63.i.us, ptr %maxima65.i, align 8, !dbg !1418, !tbaa !1384
  br label %if.end73.i.us, !dbg !1419

if.end73.i.us:                                    ; preds = %if.then68.i.us, %land.lhs.true.i.us, %if.end60.i.us
  br i1 %cmp77.i, label %cond.end.i.us, label %cond.end.thread.i.us, !dbg !1420

cond.end.thread.i.us:                             ; preds = %if.end73.i.us
  %add.ptr.i.us = getelementptr inbounds i16, ptr %call22.i, i64 %x.0299.i.us, !dbg !1420
  %36 = load i16, ptr %add.ptr.i.us, align 2, !dbg !1420, !tbaa !1366
  %conv81276.i.us = uitofp i16 %36 to double, !dbg !1421
  %37 = load double, ptr %maxima83277.i, align 8, !dbg !1422, !tbaa !1384
  %cmp84278.i.us = fcmp olt double %37, %conv81276.i.us, !dbg !1423
  br i1 %cmp84278.i.us, label %cond.false91.i.us, label %sw.epilog185.i.us, !dbg !1424

cond.false91.i.us:                                ; preds = %cond.end.thread.i.us
  %conv93.i.us = zext i16 %36 to i32, !dbg !1425
  br label %cond.end94.i.us, !dbg !1425

cond.end.i.us:                                    ; preds = %if.end73.i.us
  %38 = load double, ptr %maxima83277.i, align 8, !dbg !1422, !tbaa !1384
  %cmp84.i.us = fcmp olt double %38, 0.000000e+00, !dbg !1423
  br i1 %cmp84.i.us, label %cond.end94.i.us, label %sw.epilog185.i.us, !dbg !1424

cond.end94.i.us:                                  ; preds = %cond.end.i.us, %cond.false91.i.us
  %cond95.i.us = phi i32 [ %conv93.i.us, %cond.false91.i.us ], [ 0, %cond.end.i.us ], !dbg !1425
  %conv96.i.us = sitofp i32 %cond95.i.us to double, !dbg !1426
  store double %conv96.i.us, ptr %maxima83277.i, align 8, !dbg !1427, !tbaa !1384
  br label %sw.epilog185.i.us, !dbg !1428

sw.epilog185.i.us:                                ; preds = %cond.end94.i.us, %cond.end.i.us, %cond.end.thread.i.us
  %incdec.ptr.i.us = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i.us, i64 1, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.us, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %inc187.i.us = add nuw nsw i64 %x.0299.i.us, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %inc187.i.us, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  %exitcond343.not.i.us = icmp eq i64 %inc187.i.us, %26, !dbg !1320
  br i1 %exitcond343.not.i.us, label %for.inc191.i, label %for.body26.i.us, !dbg !1321, !llvm.loop !1429

for.body26.lr.ph.i.split:                         ; preds = %for.body26.lr.ph.i
  br i1 %cmp61.not.i, label %for.body26.i.us2458, label %for.body26.lr.ph.i.split.split, !dbg !1411

for.body26.i.us2458:                              ; preds = %for.body26.lr.ph.i.split, %if.end60.i.us2477
  %conv50356.i.us2459 = phi double [ %conv50355.i.us2478, %if.end60.i.us2477 ], [ %maxima52.promoted.i, %for.body26.lr.ph.i.split ]
  %conv39354.i.us2460 = phi double [ %conv39353.i.us2473, %if.end60.i.us2477 ], [ %maxima41.promoted.i, %for.body26.lr.ph.i.split ]
  %39 = phi double [ %41, %if.end60.i.us2477 ], [ %.pre347.i, %for.body26.lr.ph.i.split ], !dbg !1386
  %x.0299.i.us2461 = phi i64 [ %inc187.i.us2481, %if.end60.i.us2477 ], [ 0, %for.body26.lr.ph.i.split ]
  %p.0296.i.us2462 = phi ptr [ %incdec.ptr.i.us2480, %if.end60.i.us2477 ], [ %call18.i, %for.body26.lr.ph.i.split ]
  call void @llvm.dbg.value(metadata i64 %x.0299.i.us2461, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  call void @llvm.dbg.value(metadata ptr %p.0296.i.us2462, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %red.i.us2463 = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i.us2462, i64 0, i32 2, !dbg !1391
  %40 = load i16, ptr %red.i.us2463, align 2, !dbg !1391, !tbaa !1333
  %conv.i.us2464 = uitofp i16 %40 to double, !dbg !1392
  %cmp31.i.us2465 = fcmp olt double %39, %conv.i.us2464, !dbg !1393
  br i1 %cmp31.i.us2465, label %if.then33.i.us2466, label %if.end38.i.us2467, !dbg !1394

if.then33.i.us2466:                               ; preds = %for.body26.i.us2458
  store double %conv.i.us2464, ptr %maxima30.i, align 8, !dbg !1395, !tbaa !1384
  br label %if.end38.i.us2467, !dbg !1396

if.end38.i.us2467:                                ; preds = %if.then33.i.us2466, %for.body26.i.us2458
  %41 = phi double [ %conv.i.us2464, %if.then33.i.us2466 ], [ %39, %for.body26.i.us2458 ]
  %green.i.us2468 = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i.us2462, i64 0, i32 1, !dbg !1397
  %42 = load i16, ptr %green.i.us2468, align 2, !dbg !1397, !tbaa !1341
  %conv39.i.us2469 = uitofp i16 %42 to double, !dbg !1399
  %cmp42.i.us2470 = fcmp olt double %conv39354.i.us2460, %conv39.i.us2469, !dbg !1400
  br i1 %cmp42.i.us2470, label %if.then44.i.us2471, label %if.end49.i.us2472, !dbg !1401

if.then44.i.us2471:                               ; preds = %if.end38.i.us2467
  store double %conv39.i.us2469, ptr %maxima41.i, align 8, !dbg !1402, !tbaa !1384
  br label %if.end49.i.us2472, !dbg !1403

if.end49.i.us2472:                                ; preds = %if.then44.i.us2471, %if.end38.i.us2467
  %conv39353.i.us2473 = phi double [ %conv39.i.us2469, %if.then44.i.us2471 ], [ %conv39354.i.us2460, %if.end38.i.us2467 ]
  %43 = load i16, ptr %p.0296.i.us2462, align 2, !dbg !1404, !tbaa !1349
  %conv50.i.us2474 = uitofp i16 %43 to double, !dbg !1406
  %cmp53.i.us2475 = fcmp olt double %conv50356.i.us2459, %conv50.i.us2474, !dbg !1407
  br i1 %cmp53.i.us2475, label %if.then55.i.us2476, label %if.end60.i.us2477, !dbg !1408

if.then55.i.us2476:                               ; preds = %if.end49.i.us2472
  store double %conv50.i.us2474, ptr %maxima52.i, align 8, !dbg !1409, !tbaa !1384
  br label %if.end60.i.us2477, !dbg !1410

if.end60.i.us2477:                                ; preds = %if.then55.i.us2476, %if.end49.i.us2472
  %conv50355.i.us2478 = phi double [ %conv50.i.us2474, %if.then55.i.us2476 ], [ %conv50356.i.us2459, %if.end49.i.us2472 ]
  %incdec.ptr.i.us2480 = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i.us2462, i64 1, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.us2480, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %inc187.i.us2481 = add nuw nsw i64 %x.0299.i.us2461, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %inc187.i.us2481, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  %exitcond343.not.i.us2482 = icmp eq i64 %inc187.i.us2481, %26, !dbg !1320
  br i1 %exitcond343.not.i.us2482, label %for.inc191.i, label %for.body26.i.us2458, !dbg !1321, !llvm.loop !1429

for.body26.lr.ph.i.split.split:                   ; preds = %for.body26.lr.ph.i.split
  %maxima65.i.promoted = load double, ptr %maxima65.i, align 8, !tbaa !1384
  br label %for.body26.i, !dbg !1321

for.body26.i:                                     ; preds = %if.end73.i, %for.body26.lr.ph.i.split.split
  %conv63.i2484 = phi double [ %maxima65.i.promoted, %for.body26.lr.ph.i.split.split ], [ %conv63.i2483, %if.end73.i ]
  %conv50356.i = phi double [ %maxima52.promoted.i, %for.body26.lr.ph.i.split.split ], [ %conv50355.i, %if.end73.i ]
  %conv39354.i = phi double [ %maxima41.promoted.i, %for.body26.lr.ph.i.split.split ], [ %conv39353.i, %if.end73.i ]
  %44 = phi double [ %.pre347.i, %for.body26.lr.ph.i.split.split ], [ %46, %if.end73.i ], !dbg !1386
  %x.0299.i = phi i64 [ 0, %for.body26.lr.ph.i.split.split ], [ %inc187.i, %if.end73.i ]
  %p.0296.i = phi ptr [ %call18.i, %for.body26.lr.ph.i.split.split ], [ %incdec.ptr.i, %if.end73.i ]
  call void @llvm.dbg.value(metadata i64 %x.0299.i, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  call void @llvm.dbg.value(metadata ptr %p.0296.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %red.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i, i64 0, i32 2, !dbg !1391
  %45 = load i16, ptr %red.i, align 2, !dbg !1391, !tbaa !1333
  %conv.i = uitofp i16 %45 to double, !dbg !1392
  %cmp31.i = fcmp olt double %44, %conv.i, !dbg !1393
  br i1 %cmp31.i, label %if.then33.i, label %if.end38.i, !dbg !1394

if.then33.i:                                      ; preds = %for.body26.i
  store double %conv.i, ptr %maxima30.i, align 8, !dbg !1395, !tbaa !1384
  br label %if.end38.i, !dbg !1396

if.end38.i:                                       ; preds = %if.then33.i, %for.body26.i
  %46 = phi double [ %conv.i, %if.then33.i ], [ %44, %for.body26.i ]
  %green.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i, i64 0, i32 1, !dbg !1397
  %47 = load i16, ptr %green.i, align 2, !dbg !1397, !tbaa !1341
  %conv39.i = uitofp i16 %47 to double, !dbg !1399
  %cmp42.i = fcmp olt double %conv39354.i, %conv39.i, !dbg !1400
  br i1 %cmp42.i, label %if.then44.i, label %if.end49.i, !dbg !1401

if.then44.i:                                      ; preds = %if.end38.i
  store double %conv39.i, ptr %maxima41.i, align 8, !dbg !1402, !tbaa !1384
  br label %if.end49.i, !dbg !1403

if.end49.i:                                       ; preds = %if.then44.i, %if.end38.i
  %conv39353.i = phi double [ %conv39.i, %if.then44.i ], [ %conv39354.i, %if.end38.i ]
  %48 = load i16, ptr %p.0296.i, align 2, !dbg !1404, !tbaa !1349
  %conv50.i = uitofp i16 %48 to double, !dbg !1406
  %cmp53.i = fcmp olt double %conv50356.i, %conv50.i, !dbg !1407
  br i1 %cmp53.i, label %if.then55.i, label %if.end60.i, !dbg !1408

if.then55.i:                                      ; preds = %if.end49.i
  store double %conv50.i, ptr %maxima52.i, align 8, !dbg !1409, !tbaa !1384
  br label %if.end60.i, !dbg !1410

if.end60.i:                                       ; preds = %if.then55.i, %if.end49.i
  %conv50355.i = phi double [ %conv50.i, %if.then55.i ], [ %conv50356.i, %if.end49.i ]
  %opacity.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i, i64 0, i32 3, !dbg !1413
  %49 = load i16, ptr %opacity.i, align 2, !dbg !1413, !tbaa !1358
  %conv63.i = uitofp i16 %49 to double, !dbg !1414
  %cmp66.i = fcmp olt double %conv63.i2484, %conv63.i, !dbg !1416
  br i1 %cmp66.i, label %if.then68.i, label %if.end73.i, !dbg !1417

if.then68.i:                                      ; preds = %if.end60.i
  store double %conv63.i, ptr %maxima65.i, align 8, !dbg !1418, !tbaa !1384
  br label %if.end73.i, !dbg !1419

if.end73.i:                                       ; preds = %if.then68.i, %if.end60.i
  %conv63.i2483 = phi double [ %conv63.i, %if.then68.i ], [ %conv63.i2484, %if.end60.i ]
  %incdec.ptr.i = getelementptr inbounds %struct._PixelPacket, ptr %p.0296.i, i64 1, !dbg !1375
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !1268, metadata !DIExpression()) #12, !dbg !1315
  %inc187.i = add nuw nsw i64 %x.0299.i, 1, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %inc187.i, metadata !1270, metadata !DIExpression()) #12, !dbg !1315
  %exitcond343.not.i = icmp eq i64 %inc187.i, %26, !dbg !1320
  br i1 %exitcond343.not.i, label %for.inc191.i, label %for.body26.i, !dbg !1321, !llvm.loop !1429

for.inc191.i:                                     ; preds = %if.end73.i, %if.end60.i.us2477, %sw.epilog185.i.us, %if.end21.i
  %inc192.i = add nuw nsw i64 %y.0302.i, 1, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %inc192.i, metadata !1258, metadata !DIExpression()) #12, !dbg !1271
  %50 = load i64, ptr %rows.i, align 8, !dbg !1305, !tbaa !1306
  %cmp16.i = icmp slt i64 %inc192.i, %50, !dbg !1307
  br i1 %cmp16.i, label %for.body17.i, label %if.end20, !dbg !1308, !llvm.loop !1430

if.end20:                                         ; preds = %for.inc191.i, %for.body17.i, %for.inc191.us.i, %for.body17.us.i, %for.cond15.preheader.i
  call void @llvm.dbg.value(metadata ptr %call1.i, metadata !1102, metadata !DIExpression()), !dbg !1191
  %colorspace21 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1431
  %51 = load i32, ptr %colorspace21, align 4, !dbg !1431, !tbaa !1326
  call void @llvm.dbg.value(metadata i32 %51, metadata !1103, metadata !DIExpression()), !dbg !1191
  %call22 = tail call i32 @IsGrayImage(ptr noundef nonnull %image, ptr noundef %call4) #12, !dbg !1432
  %cmp23.not = icmp eq i32 %call22, 0, !dbg !1434
  %spec.select2042 = select i1 %cmp23.not, i32 %51, i32 2, !dbg !1435
  call void @llvm.dbg.value(metadata i32 %spec.select2042, metadata !1103, metadata !DIExpression()), !dbg !1191
  %call27 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.5, ptr noundef nonnull %call5) #12, !dbg !1436
  switch i32 %spec.select2042, label %sw.default [
    i32 2, label %sw.bb36
    i32 12, label %sw.bb31
  ], !dbg !1437

sw.default:                                       ; preds = %if.end20
  tail call fastcc void @PrintChannelLocations(ptr noundef %spec.select, ptr noundef nonnull %image, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %conv, i64 noundef %max_locations.0, ptr noundef nonnull %call1.i), !dbg !1438
  tail call fastcc void @PrintChannelLocations(ptr noundef %spec.select, ptr noundef nonnull %image, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %conv, i64 noundef %max_locations.0, ptr noundef nonnull %call1.i), !dbg !1441
  tail call fastcc void @PrintChannelLocations(ptr noundef %spec.select, ptr noundef nonnull %image, i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %conv, i64 noundef %max_locations.0, ptr noundef nonnull %call1.i), !dbg !1442
  br label %sw.epilog, !dbg !1443

sw.bb31:                                          ; preds = %if.end20
  tail call fastcc void @PrintChannelLocations(ptr noundef %spec.select, ptr noundef nonnull %image, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %conv, i64 noundef %max_locations.0, ptr noundef nonnull %call1.i), !dbg !1444
  tail call fastcc void @PrintChannelLocations(ptr noundef %spec.select, ptr noundef nonnull %image, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %conv, i64 noundef %max_locations.0, ptr noundef nonnull %call1.i), !dbg !1446
  tail call fastcc void @PrintChannelLocations(ptr noundef %spec.select, ptr noundef nonnull %image, i32 noundef 4, ptr noundef nonnull @.str.11, i32 noundef %conv, i64 noundef %max_locations.0, ptr noundef nonnull %call1.i), !dbg !1447
  tail call fastcc void @PrintChannelLocations(ptr noundef %spec.select, ptr noundef nonnull %image, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %conv, i64 noundef %max_locations.0, ptr noundef nonnull %call1.i), !dbg !1448
  br label %sw.epilog, !dbg !1449

sw.bb36:                                          ; preds = %if.end20
  tail call fastcc void @PrintChannelLocations(ptr noundef %spec.select, ptr noundef nonnull %image, i32 noundef 1, ptr noundef nonnull @.str.13, i32 noundef %conv, i64 noundef %max_locations.0, ptr noundef nonnull %call1.i), !dbg !1450
  br label %sw.epilog, !dbg !1452

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb31, %sw.default
  %matte = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1453
  %52 = load i32, ptr %matte, align 8, !dbg !1453, !tbaa !1325
  %cmp38.not = icmp eq i32 %52, 0, !dbg !1455
  br i1 %cmp38.not, label %if.end42, label %if.then40, !dbg !1456

if.then40:                                        ; preds = %sw.epilog
  tail call fastcc void @PrintChannelLocations(ptr noundef %spec.select, ptr noundef nonnull %image, i32 noundef 8, ptr noundef nonnull @.str.14, i32 noundef %conv, i64 noundef %max_locations.0, ptr noundef nonnull %call1.i), !dbg !1457
  br label %if.end42, !dbg !1458

if.end42:                                         ; preds = %if.then40, %sw.epilog
  %call43 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1.i) #12, !dbg !1459
  call void @llvm.dbg.value(metadata ptr %call43, metadata !1102, metadata !DIExpression()), !dbg !1191
  %call44 = tail call i32 @ferror(ptr noundef %spec.select) #12, !dbg !1460
  %cmp45.not = icmp eq i32 %call44, 0, !dbg !1461
  br label %cleanup1333, !dbg !1462

if.end49:                                         ; preds = %if.end
  store i8 0, ptr %format, align 16, !dbg !1463, !tbaa !1464
  %timer = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 46, !dbg !1465
  %call51 = tail call double @GetElapsedTime(ptr noundef nonnull %timer) #12, !dbg !1466
  call void @llvm.dbg.value(metadata double %call51, metadata !1112, metadata !DIExpression()), !dbg !1191
  %call53 = tail call double @GetUserTime(ptr noundef nonnull %timer) #12, !dbg !1467
  call void @llvm.dbg.value(metadata double %call53, metadata !1114, metadata !DIExpression()), !dbg !1191
  tail call void @GetTimerInfo(ptr noundef nonnull %timer) #12, !dbg !1468
  %cmp55 = icmp eq i32 %verbose, 0, !dbg !1469
  br i1 %cmp55, label %if.then57, label %if.end231, !dbg !1471

if.then57:                                        ; preds = %if.end49
  %magick_filename = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 54, !dbg !1472
  %53 = load i8, ptr %magick_filename, align 8, !dbg !1475, !tbaa !1464
  %cmp60.not = icmp eq i8 %53, 0, !dbg !1476
  br i1 %cmp60.not, label %if.end75, label %if.then62, !dbg !1477

if.then62:                                        ; preds = %if.then57
  %filename65 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1478
  %call67 = tail call i32 @LocaleCompare(ptr noundef nonnull %magick_filename, ptr noundef nonnull %filename65) #12, !dbg !1480
  %cmp68.not = icmp eq i32 %call67, 0, !dbg !1481
  br i1 %cmp68.not, label %if.end75, label %if.then70, !dbg !1482

if.then70:                                        ; preds = %if.then62
  %call73 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.15, ptr noundef nonnull %magick_filename) #12, !dbg !1483
  br label %if.end75, !dbg !1484

if.end75:                                         ; preds = %if.then62, %if.then70, %if.then57
  %call76 = tail call ptr @GetPreviousImageInList(ptr noundef nonnull %image) #12, !dbg !1485
  %cmp77 = icmp eq ptr %call76, null, !dbg !1487
  br i1 %cmp77, label %land.lhs.true, label %if.else, !dbg !1488

land.lhs.true:                                    ; preds = %if.end75
  %call79 = tail call ptr @GetNextImageInList(ptr noundef nonnull %image) #12, !dbg !1489
  %cmp80 = icmp eq ptr %call79, null, !dbg !1490
  br i1 %cmp80, label %land.lhs.true82, label %if.else, !dbg !1491

land.lhs.true82:                                  ; preds = %land.lhs.true
  %scene = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 39, !dbg !1492
  %54 = load i64, ptr %scene, align 8, !dbg !1492, !tbaa !1493
  %cmp83 = icmp eq i64 %54, 0, !dbg !1494
  br i1 %cmp83, label %if.then85, label %if.else, !dbg !1495

if.then85:                                        ; preds = %land.lhs.true82
  %filename86 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1496
  %call88 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.16, ptr noundef nonnull %filename86) #12, !dbg !1497
  br label %if.end94, !dbg !1498

if.else:                                          ; preds = %land.lhs.true82, %land.lhs.true, %if.end75
  %filename89 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1499
  %scene91 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 39, !dbg !1500
  %55 = load i64, ptr %scene91, align 8, !dbg !1500, !tbaa !1493
  %conv92 = uitofp i64 %55 to double, !dbg !1501
  %call93 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.17, ptr noundef nonnull %filename89, double noundef %conv92) #12, !dbg !1502
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then85
  %magick = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 55, !dbg !1503
  %call96 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.16, ptr noundef nonnull %magick) #12, !dbg !1504
  %magick_columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 56, !dbg !1505
  %56 = load i64, ptr %magick_columns, align 8, !dbg !1505, !tbaa !1507
  %cmp97.not = icmp eq i64 %56, 0, !dbg !1508
  br i1 %cmp97.not, label %lor.lhs.false, label %if.then101, !dbg !1509

lor.lhs.false:                                    ; preds = %if.end94
  %magick_rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 57, !dbg !1510
  %57 = load i64, ptr %magick_rows, align 8, !dbg !1510, !tbaa !1511
  %cmp99.not = icmp eq i64 %57, 0, !dbg !1512
  br i1 %cmp99.not, label %if.end116, label %if.then101, !dbg !1513

if.then101:                                       ; preds = %lor.lhs.false, %if.end94
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1514
  %58 = load i64, ptr %columns, align 8, !dbg !1514, !tbaa !1309
  %cmp103.not = icmp eq i64 %56, %58, !dbg !1516
  %magick_rows106 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 57
  %59 = load i64, ptr %magick_rows106, align 8, !dbg !1517, !tbaa !1511
  br i1 %cmp103.not, label %lor.lhs.false105, label %if.then109, !dbg !1518

lor.lhs.false105:                                 ; preds = %if.then101
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1519
  %60 = load i64, ptr %rows, align 8, !dbg !1519, !tbaa !1306
  %cmp107.not = icmp eq i64 %59, %60, !dbg !1520
  br i1 %cmp107.not, label %if.end116, label %if.then109, !dbg !1521

if.then109:                                       ; preds = %if.then101, %lor.lhs.false105
  %conv111 = uitofp i64 %56 to double, !dbg !1522
  %conv113 = uitofp i64 %59 to double, !dbg !1523
  %call114 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.18, double noundef %conv111, double noundef %conv113) #12, !dbg !1524
  br label %if.end116, !dbg !1525

if.end116:                                        ; preds = %lor.lhs.false105, %if.then109, %lor.lhs.false
  %columns117 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1526
  %61 = load i64, ptr %columns117, align 8, !dbg !1526, !tbaa !1309
  %conv118 = uitofp i64 %61 to double, !dbg !1527
  %rows119 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1528
  %62 = load i64, ptr %rows119, align 8, !dbg !1528, !tbaa !1306
  %conv120 = uitofp i64 %62 to double, !dbg !1529
  %call121 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.19, double noundef %conv118, double noundef %conv120) #12, !dbg !1530
  %page = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !1531
  %63 = load i64, ptr %page, align 8, !dbg !1533, !tbaa !1534
  %cmp122.not = icmp eq i64 %63, 0, !dbg !1535
  %height = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 1
  %64 = load i64, ptr %height, align 8, !dbg !1536, !tbaa !1537
  %cmp126.not = icmp eq i64 %64, 0
  %or.cond = select i1 %cmp122.not, i1 %cmp126.not, i1 false, !dbg !1538
  br i1 %or.cond, label %lor.lhs.false128, label %if.then138, !dbg !1538

lor.lhs.false128:                                 ; preds = %if.end116
  %x130 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !1539
  %65 = load i64, ptr %x130, align 8, !dbg !1539, !tbaa !1540
  %cmp131.not = icmp eq i64 %65, 0, !dbg !1541
  br i1 %cmp131.not, label %lor.lhs.false133, label %if.then138, !dbg !1542

lor.lhs.false133:                                 ; preds = %lor.lhs.false128
  %y135 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !1543
  %66 = load i64, ptr %y135, align 8, !dbg !1543, !tbaa !1544
  %cmp136.not = icmp eq i64 %66, 0, !dbg !1545
  br i1 %cmp136.not, label %if.end152, label %if.then138, !dbg !1546

if.then138:                                       ; preds = %if.end116, %lor.lhs.false133, %lor.lhs.false128
  %67 = phi i64 [ 0, %lor.lhs.false133 ], [ 0, %lor.lhs.false128 ], [ %64, %if.end116 ], !dbg !1547
  %conv141 = uitofp i64 %63 to double, !dbg !1548
  %conv144 = uitofp i64 %67 to double, !dbg !1549
  %x146 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !1550
  %68 = load i64, ptr %x146, align 8, !dbg !1550, !tbaa !1540
  %conv147 = sitofp i64 %68 to double, !dbg !1551
  %y149 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !1552
  %69 = load i64, ptr %y149, align 8, !dbg !1552, !tbaa !1544
  %conv150 = sitofp i64 %69 to double, !dbg !1553
  %call151 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.20, double noundef %conv141, double noundef %conv144, double noundef %conv147, double noundef %conv150) #12, !dbg !1554
  br label %if.end152, !dbg !1555

if.end152:                                        ; preds = %if.then138, %lor.lhs.false133
  %depth = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 9, !dbg !1556
  %70 = load i64, ptr %depth, align 8, !dbg !1556, !tbaa !1557
  %conv153 = uitofp i64 %70 to double, !dbg !1558
  %call154 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.21, double noundef %conv153) #12, !dbg !1559
  %type155 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1560
  %71 = load i32, ptr %type155, align 8, !dbg !1560, !tbaa !1562
  %cmp156.not = icmp eq i32 %71, 0, !dbg !1563
  br i1 %cmp156.not, label %if.end163, label %if.then158, !dbg !1564

if.then158:                                       ; preds = %if.end152
  %conv160 = zext i32 %71 to i64, !dbg !1565
  %call161 = tail call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %conv160) #12, !dbg !1566
  %call162 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.16, ptr noundef %call161) #12, !dbg !1567
  br label %if.end163, !dbg !1568

if.end163:                                        ; preds = %if.then158, %if.end152
  %colorspace164 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1569
  %72 = load i32, ptr %colorspace164, align 4, !dbg !1569, !tbaa !1326
  %cmp165.not = icmp eq i32 %72, 0, !dbg !1571
  br i1 %cmp165.not, label %if.end172, label %if.then167, !dbg !1572

if.then167:                                       ; preds = %if.end163
  %conv169 = zext i32 %72 to i64, !dbg !1573
  %call170 = tail call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %conv169) #12, !dbg !1574
  %call171 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.16, ptr noundef %call170) #12, !dbg !1575
  br label %if.end172, !dbg !1576

if.end172:                                        ; preds = %if.then167, %if.end163
  %73 = load i32, ptr %image, align 8, !dbg !1577, !tbaa !1579
  %cmp173 = icmp eq i32 %73, 1, !dbg !1580
  %total_colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 43, !dbg !1581
  %74 = load i64, ptr %total_colors, align 8, !dbg !1581, !tbaa !1582
  br i1 %cmp173, label %if.then175, label %if.else185, !dbg !1583

if.then175:                                       ; preds = %if.end172
  %cmp176.not = icmp eq i64 %74, 0, !dbg !1584
  br i1 %cmp176.not, label %if.end200, label %if.then178, !dbg !1587

if.then178:                                       ; preds = %if.then175
  %call181 = call i64 @FormatMagickSize(i64 noundef %74, i32 noundef 0, ptr noundef nonnull %format) #12, !dbg !1588
  %call183 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.16, ptr noundef nonnull %format) #12, !dbg !1590
  br label %if.end200, !dbg !1591

if.else185:                                       ; preds = %if.end172
  %colors = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !1592
  %75 = load i64, ptr %colors, align 8, !dbg !1592, !tbaa !1594
  %cmp187.not = icmp ugt i64 %74, %75, !dbg !1595
  br i1 %cmp187.not, label %if.else193, label %if.then189, !dbg !1596

if.then189:                                       ; preds = %if.else185
  %conv191 = uitofp i64 %75 to double, !dbg !1597
  %call192 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.22, double noundef %conv191) #12, !dbg !1598
  br label %if.end200, !dbg !1599

if.else193:                                       ; preds = %if.else185
  %conv195 = uitofp i64 %74 to double, !dbg !1600
  %conv197 = uitofp i64 %75 to double, !dbg !1601
  %call198 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.23, double noundef %conv195, double noundef %conv197) #12, !dbg !1602
  br label %if.end200

if.end200:                                        ; preds = %if.then189, %if.else193, %if.then175, %if.then178
  %error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, !dbg !1603
  %76 = load double, ptr %error, align 8, !dbg !1605, !tbaa !1606
  %cmp201 = fcmp une double %76, 0.000000e+00, !dbg !1607
  br i1 %cmp201, label %if.then203, label %if.end209, !dbg !1608

if.then203:                                       ; preds = %if.end200
  %add = fadd double %76, 5.000000e-01, !dbg !1609
  %normalized_mean_error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 1, !dbg !1610
  %77 = load double, ptr %normalized_mean_error, align 8, !dbg !1610, !tbaa !1611
  %normalized_maximum_error = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 2, !dbg !1612
  %78 = load double, ptr %normalized_maximum_error, align 8, !dbg !1612, !tbaa !1613
  %call208 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.24, double noundef %add, double noundef %77, double noundef %78) #12, !dbg !1614
  br label %if.end209, !dbg !1615

if.end209:                                        ; preds = %if.then203, %if.end200
  %call210 = call i64 @GetBlobSize(ptr noundef nonnull %image) #12, !dbg !1616
  %cmp211.not = icmp eq i64 %call210, 0, !dbg !1618
  br i1 %cmp211.not, label %if.end219, label %if.then213, !dbg !1619

if.then213:                                       ; preds = %if.end209
  %call214 = call i64 @GetBlobSize(ptr noundef nonnull %image) #12, !dbg !1620
  %call216 = call i64 @FormatMagickSize(i64 noundef %call214, i32 noundef 0, ptr noundef nonnull %format) #12, !dbg !1622
  %call218 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.16, ptr noundef nonnull %format) #12, !dbg !1623
  br label %if.end219, !dbg !1624

if.end219:                                        ; preds = %if.then213, %if.end209
  %div = fdiv double %call51, 6.000000e+01, !dbg !1625
  %conv220 = fptoui double %div to i64, !dbg !1626
  %call221 = call double @fmod(double noundef %call51, double noundef 6.000000e+01) #12, !dbg !1627
  %79 = call double @llvm.floor.f64(double %call221), !dbg !1628
  %conv222 = fptoui double %79 to i64, !dbg !1629
  %80 = call double @llvm.floor.f64(double %call51), !dbg !1630
  %sub = fsub double %call51, %80, !dbg !1631
  %mul = fmul double %sub, 1.000000e+03, !dbg !1632
  %conv223 = fptoui double %mul to i64, !dbg !1633
  %call224 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.25, double noundef %call53, i64 noundef %conv220, i64 noundef %conv222, i64 noundef %conv223) #12, !dbg !1634
  %call225 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.26) #12, !dbg !1635
  %call226 = call i32 @fflush(ptr noundef %spec.select), !dbg !1636
  %call227 = call i32 @ferror(ptr noundef %spec.select) #12, !dbg !1637
  %cmp228.not = icmp eq i32 %call227, 0, !dbg !1638
  br label %cleanup1333, !dbg !1639

if.end231:                                        ; preds = %if.end49
  %call232 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i64 noundef 1, i64 noundef 1, ptr noundef %call4) #12, !dbg !1640
  call void @llvm.dbg.value(metadata ptr %call232, metadata !1111, metadata !DIExpression()), !dbg !1191
  %call233 = tail call ptr @DestroyExceptionInfo(ptr noundef %call4) #12, !dbg !1641
  call void @llvm.dbg.value(metadata ptr %call233, metadata !1115, metadata !DIExpression()), !dbg !1191
  %cmp234.not = icmp eq ptr %call232, null, !dbg !1642
  call void @llvm.dbg.value(metadata i1 %cmp234.not, metadata !1117, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1191
  %exception237 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 58, !dbg !1643
  call void @llvm.dbg.value(metadata ptr %exception237, metadata !1115, metadata !DIExpression()), !dbg !1191
  %call238 = tail call i32 @GetImageType(ptr noundef nonnull %image, ptr noundef nonnull %exception237) #12, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %call238, metadata !1116, metadata !DIExpression()), !dbg !1191
  %call239 = tail call i32 @SignatureImage(ptr noundef nonnull %image) #12, !dbg !1645
  %filename240 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 53, !dbg !1646
  %call242 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.27, ptr noundef nonnull %filename240) #12, !dbg !1647
  %magick_filename243 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 54, !dbg !1648
  %81 = load i8, ptr %magick_filename243, align 8, !dbg !1649, !tbaa !1464
  %cmp246.not = icmp eq i8 %81, 0, !dbg !1650
  br i1 %cmp246.not, label %if.end264, label %if.then248, !dbg !1651

if.then248:                                       ; preds = %if.end231
  %call253 = tail call i32 @LocaleCompare(ptr noundef nonnull %magick_filename243, ptr noundef nonnull %filename240) #12, !dbg !1652
  %cmp254.not = icmp eq i32 %call253, 0, !dbg !1653
  br i1 %cmp254.not, label %if.end264, label %if.then256, !dbg !1654

if.then256:                                       ; preds = %if.then248
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %filename257) #12, !dbg !1655
  call void @llvm.dbg.declare(metadata ptr %filename257, metadata !1127, metadata !DIExpression()), !dbg !1656
  call void @GetPathComponent(ptr noundef nonnull %magick_filename243, i32 noundef 4, ptr noundef nonnull %filename257) #12, !dbg !1657
  %call262 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.28, ptr noundef nonnull %filename257) #12, !dbg !1658
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %filename257) #12, !dbg !1659
  br label %if.end264, !dbg !1660

if.end264:                                        ; preds = %if.then248, %if.then256, %if.end231
  %magick265 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 55, !dbg !1661
  %call267 = call ptr @GetMagickInfo(ptr noundef nonnull %magick265, ptr noundef nonnull %exception237) #12, !dbg !1662
  call void @llvm.dbg.value(metadata ptr %call267, metadata !1110, metadata !DIExpression()), !dbg !1191
  %cmp268 = icmp eq ptr %call267, null, !dbg !1663
  br i1 %cmp268, label %if.end283.thread2409, label %lor.lhs.false270, !dbg !1665

if.end283.thread2409:                             ; preds = %if.end264
  %call2772410 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.29, ptr noundef nonnull %magick265) #12, !dbg !1666
  br label %if.then290, !dbg !1667

lor.lhs.false270:                                 ; preds = %if.end264
  %call271 = call ptr @GetMagickDescription(ptr noundef nonnull %call267) #12, !dbg !1669
  %cmp272 = icmp eq ptr %call271, null, !dbg !1670
  br i1 %cmp272, label %if.end283, label %if.end283.thread, !dbg !1671

if.end283.thread:                                 ; preds = %lor.lhs.false270
  %call281 = call ptr @GetMagickDescription(ptr noundef nonnull %call267) #12, !dbg !1672
  %call282 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.30, ptr noundef nonnull %magick265, ptr noundef %call281) #12, !dbg !1673
  br label %lor.lhs.false286, !dbg !1667

if.end283:                                        ; preds = %lor.lhs.false270
  %call277 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.29, ptr noundef nonnull %magick265) #12, !dbg !1666
  br label %lor.lhs.false286, !dbg !1667

lor.lhs.false286:                                 ; preds = %if.end283, %if.end283.thread
  %call287 = call ptr @GetMagickMimeType(ptr noundef nonnull %call267) #12, !dbg !1674
  %cmp288.not = icmp eq ptr %call287, null, !dbg !1675
  br i1 %cmp288.not, label %if.end293, label %if.then290, !dbg !1676

if.then290:                                       ; preds = %if.end283.thread2409, %lor.lhs.false286
  %call291 = call ptr @GetMagickMimeType(ptr noundef %call267) #12, !dbg !1677
  %call292 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.31, ptr noundef %call291) #12, !dbg !1678
  br label %if.end293, !dbg !1679

if.end293:                                        ; preds = %if.then290, %lor.lhs.false286
  %82 = load i32, ptr %image, align 8, !dbg !1680, !tbaa !1579
  %conv295 = zext i32 %82 to i64, !dbg !1681
  %call296 = call ptr @CommandOptionToMnemonic(i32 noundef 5, i64 noundef %conv295) #12, !dbg !1682
  %call297 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.32, ptr noundef %call296) #12, !dbg !1683
  %columns298 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !1684
  %83 = load i64, ptr %columns298, align 8, !dbg !1684, !tbaa !1309
  %conv299 = uitofp i64 %83 to double, !dbg !1685
  %rows300 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8, !dbg !1686
  %84 = load i64, ptr %rows300, align 8, !dbg !1686, !tbaa !1306
  %conv301 = uitofp i64 %84 to double, !dbg !1687
  %x302 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 74, i32 2, !dbg !1688
  %85 = load i64, ptr %x302, align 8, !dbg !1688, !tbaa !1689
  %conv303 = sitofp i64 %85 to double, !dbg !1690
  %y305 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 74, i32 3, !dbg !1691
  %86 = load i64, ptr %y305, align 8, !dbg !1691, !tbaa !1692
  %conv306 = sitofp i64 %86 to double, !dbg !1693
  %call307 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.33, double noundef %conv299, double noundef %conv301, double noundef %conv303, double noundef %conv306) #12, !dbg !1694
  %magick_columns308 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 56, !dbg !1695
  %87 = load i64, ptr %magick_columns308, align 8, !dbg !1695, !tbaa !1507
  %cmp309.not = icmp eq i64 %87, 0, !dbg !1697
  br i1 %cmp309.not, label %lor.lhs.false311, label %if.then315, !dbg !1698

lor.lhs.false311:                                 ; preds = %if.end293
  %magick_rows312 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 57, !dbg !1699
  %88 = load i64, ptr %magick_rows312, align 8, !dbg !1699, !tbaa !1511
  %cmp313.not = icmp eq i64 %88, 0, !dbg !1700
  br i1 %cmp313.not, label %if.end332, label %if.then315, !dbg !1701

if.then315:                                       ; preds = %lor.lhs.false311, %if.end293
  %89 = load i64, ptr %columns298, align 8, !dbg !1702, !tbaa !1309
  %cmp318.not = icmp eq i64 %87, %89, !dbg !1704
  %magick_rows321 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 57
  %90 = load i64, ptr %magick_rows321, align 8, !dbg !1705, !tbaa !1511
  br i1 %cmp318.not, label %lor.lhs.false320, label %if.then325, !dbg !1706

lor.lhs.false320:                                 ; preds = %if.then315
  %91 = load i64, ptr %rows300, align 8, !dbg !1707, !tbaa !1306
  %cmp323.not = icmp eq i64 %90, %91, !dbg !1708
  br i1 %cmp323.not, label %if.end332, label %if.then325, !dbg !1709

if.then325:                                       ; preds = %if.then315, %lor.lhs.false320
  %conv327 = uitofp i64 %87 to double, !dbg !1710
  %conv329 = uitofp i64 %90 to double, !dbg !1711
  %call330 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.34, double noundef %conv327, double noundef %conv329) #12, !dbg !1712
  br label %if.end332, !dbg !1713

if.end332:                                        ; preds = %lor.lhs.false320, %if.then325, %lor.lhs.false311
  %x_resolution = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 24, !dbg !1714
  %92 = load double, ptr %x_resolution, align 8, !dbg !1714, !tbaa !1716
  %cmp333 = fcmp une double %92, 0.000000e+00, !dbg !1717
  br i1 %cmp333, label %land.lhs.true335, label %if.end351, !dbg !1718

land.lhs.true335:                                 ; preds = %if.end332
  %y_resolution = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 25, !dbg !1719
  %93 = load double, ptr %y_resolution, align 8, !dbg !1719, !tbaa !1720
  %cmp336 = fcmp une double %93, 0.000000e+00, !dbg !1721
  br i1 %cmp336, label %if.then338, label %if.end351, !dbg !1722

if.then338:                                       ; preds = %land.lhs.true335
  %call341 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.35, double noundef %92, double noundef %93) #12, !dbg !1723
  %94 = load i64, ptr %columns298, align 8, !dbg !1725, !tbaa !1309
  %conv343 = uitofp i64 %94 to double, !dbg !1726
  %95 = load double, ptr %x_resolution, align 8, !dbg !1727, !tbaa !1716
  %div345 = fdiv double %conv343, %95, !dbg !1728
  %96 = load i64, ptr %rows300, align 8, !dbg !1729, !tbaa !1306
  %conv347 = uitofp i64 %96 to double, !dbg !1730
  %97 = load double, ptr %y_resolution, align 8, !dbg !1731, !tbaa !1720
  %div349 = fdiv double %conv347, %97, !dbg !1732
  %call350 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.36, double noundef %div345, double noundef %div349) #12, !dbg !1733
  br label %if.end351, !dbg !1734

if.end351:                                        ; preds = %if.then338, %land.lhs.true335, %if.end332
  %units = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 19, !dbg !1735
  %98 = load i32, ptr %units, align 8, !dbg !1735, !tbaa !1736
  %conv352 = zext i32 %98 to i64, !dbg !1737
  %call353 = call ptr @CommandOptionToMnemonic(i32 noundef 58, i64 noundef %conv352) #12, !dbg !1738
  %call354 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.37, ptr noundef %call353) #12, !dbg !1739
  %conv355 = zext i32 %call238 to i64, !dbg !1740
  %call356 = call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %conv355) #12, !dbg !1741
  %call357 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.38, ptr noundef %call356) #12, !dbg !1742
  %type358 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 77, !dbg !1743
  %99 = load i32, ptr %type358, align 8, !dbg !1743, !tbaa !1562
  %cmp359.not = icmp eq i32 %99, 0, !dbg !1745
  br i1 %cmp359.not, label %if.end366, label %if.then361, !dbg !1746

if.then361:                                       ; preds = %if.end351
  %conv363 = zext i32 %99 to i64, !dbg !1747
  %call364 = call ptr @CommandOptionToMnemonic(i32 noundef 66, i64 noundef %conv363) #12, !dbg !1748
  %call365 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.39, ptr noundef %call364) #12, !dbg !1749
  br label %if.end366, !dbg !1750

if.end366:                                        ; preds = %if.then361, %if.end351
  %endian = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 34, !dbg !1751
  %100 = load i32, ptr %endian, align 8, !dbg !1751, !tbaa !1752
  %conv367 = zext i32 %100 to i64, !dbg !1753
  %call368 = call ptr @CommandOptionToMnemonic(i32 noundef 22, i64 noundef %conv367) #12, !dbg !1754
  %call369 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.40, ptr noundef %call368) #12, !dbg !1755
  %colorspace370 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 1, !dbg !1756
  %101 = load i32, ptr %colorspace370, align 4, !dbg !1756, !tbaa !1326
  %conv371 = zext i32 %101 to i64, !dbg !1757
  %call372 = call ptr @CommandOptionToMnemonic(i32 noundef 9, i64 noundef %conv371) #12, !dbg !1758
  %call373 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.41, ptr noundef %call372) #12, !dbg !1759
  call void @llvm.dbg.value(metadata ptr null, metadata !1102, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr null, metadata !1100, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr null, metadata !1101, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr null, metadata !1099, metadata !DIExpression()), !dbg !1191
  %102 = load i32, ptr %colorspace370, align 4, !dbg !1760, !tbaa !1326
  call void @llvm.dbg.value(metadata i32 %102, metadata !1103, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1113, metadata !DIExpression()), !dbg !1191
  br i1 %cmp234.not, label %if.end674, label %if.then377, !dbg !1761

if.then377:                                       ; preds = %if.end366
  %call379 = call ptr @GetImageChannelStatistics(ptr noundef nonnull %image, ptr noundef nonnull %exception237) #12, !dbg !1762
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1102, metadata !DIExpression()), !dbg !1191
  %cmp380 = icmp eq ptr %call379, null, !dbg !1763
  br i1 %cmp380, label %cleanup1333, label %if.end383, !dbg !1765

if.end383:                                        ; preds = %if.then377
  %call384 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.42) #12, !dbg !1766
  call void @llvm.dbg.value(metadata ptr %call384, metadata !1104, metadata !DIExpression()), !dbg !1191
  %cmp385.not = icmp eq ptr %call384, null, !dbg !1767
  br i1 %cmp385.not, label %if.end390, label %if.then387, !dbg !1769

if.then387:                                       ; preds = %if.end383
  %call388 = call ptr @GetImageChannelMoments(ptr noundef nonnull %image, ptr noundef nonnull %exception237) #12, !dbg !1770
  call void @llvm.dbg.value(metadata ptr %call388, metadata !1100, metadata !DIExpression()), !dbg !1191
  %call389 = call ptr @GetImageChannelPerceptualHash(ptr noundef nonnull %image, ptr noundef nonnull %exception237) #12, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %call389, metadata !1101, metadata !DIExpression()), !dbg !1191
  br label %if.end390, !dbg !1773

if.end390:                                        ; preds = %if.then387, %if.end383
  %channel_phash.0 = phi ptr [ %call389, %if.then387 ], [ null, %if.end383 ], !dbg !1191
  %channel_moments.0 = phi ptr [ %call388, %if.then387 ], [ null, %if.end383 ], !dbg !1191
  call void @llvm.dbg.value(metadata ptr %channel_moments.0, metadata !1100, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr %channel_phash.0, metadata !1101, metadata !DIExpression()), !dbg !1191
  %call391 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.43) #12, !dbg !1774
  call void @llvm.dbg.value(metadata ptr %call391, metadata !1104, metadata !DIExpression()), !dbg !1191
  %cmp392.not = icmp eq ptr %call391, null, !dbg !1775
  br i1 %cmp392.not, label %if.end397, label %if.then394, !dbg !1777

if.then394:                                       ; preds = %if.end390
  call void @llvm.dbg.value(metadata ptr %call391, metadata !1236, metadata !DIExpression()) #12, !dbg !1778
  %call.i2046 = call i64 @strtoul(ptr nocapture noundef nonnull %call391, ptr noundef null, i32 noundef 10) #12, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %call.i2046, metadata !1120, metadata !DIExpression()), !dbg !1191
  %call396 = call ptr @GetImageChannelFeatures(ptr noundef nonnull %image, i64 noundef %call.i2046, ptr noundef nonnull %exception237) #12, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %call396, metadata !1099, metadata !DIExpression()), !dbg !1191
  br label %if.end397, !dbg !1783

if.end397:                                        ; preds = %if.then394, %if.end390
  %channel_features.0 = phi ptr [ %call396, %if.then394 ], [ null, %if.end390 ], !dbg !1191
  call void @llvm.dbg.value(metadata ptr %channel_features.0, metadata !1099, metadata !DIExpression()), !dbg !1191
  %call398 = call i64 @GetImageDepth(ptr noundef nonnull %image, ptr noundef nonnull %exception237) #12, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %call398, metadata !1131, metadata !DIExpression()), !dbg !1785
  %depth399 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 9, !dbg !1786
  %103 = load i64, ptr %depth399, align 8, !dbg !1786, !tbaa !1557
  %cmp400 = icmp eq i64 %103, %call398, !dbg !1788
  br i1 %cmp400, label %if.then402, label %if.else406, !dbg !1789

if.then402:                                       ; preds = %if.end397
  %conv404 = uitofp i64 %call398 to double, !dbg !1790
  %call405 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.44, double noundef %conv404) #12, !dbg !1791
  br label %if.end411, !dbg !1792

if.else406:                                       ; preds = %if.end397
  %conv408 = uitofp i64 %103 to double, !dbg !1793
  %conv409 = uitofp i64 %call398 to double, !dbg !1794
  %call410 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.45, double noundef %conv408, double noundef %conv409) #12, !dbg !1795
  br label %if.end411

if.end411:                                        ; preds = %if.else406, %if.then402
  %call412 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.46) #12, !dbg !1796
  %call413 = call i32 @IsGrayImage(ptr noundef nonnull %image, ptr noundef nonnull %exception237) #12, !dbg !1797
  %cmp414.not = icmp eq i32 %call413, 0, !dbg !1799
  %spec.select2043 = select i1 %cmp414.not, i32 %102, i32 2, !dbg !1800
  call void @llvm.dbg.value(metadata i32 %spec.select2043, metadata !1103, metadata !DIExpression()), !dbg !1191
  switch i32 %spec.select2043, label %sw.epilog453.sink.split [
    i32 2, label %sw.epilog453
    i32 12, label %sw.bb431
  ], !dbg !1801

sw.bb431:                                         ; preds = %if.end411
  %arrayidx432 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, !dbg !1802
  %104 = load i64, ptr %arrayidx432, align 8, !dbg !1805, !tbaa !1806
  %conv434 = uitofp i64 %104 to double, !dbg !1807
  %call435 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.50, double noundef %conv434) #12, !dbg !1808
  br label %sw.epilog453.sink.split, !dbg !1809

sw.epilog453.sink.split:                          ; preds = %if.end411, %sw.bb431
  %.sink2554 = phi i64 [ 2, %sw.bb431 ], [ 1, %if.end411 ]
  %.str.51.sink = phi ptr [ @.str.51, %sw.bb431 ], [ @.str.47, %if.end411 ]
  %.sink2552 = phi i64 [ 4, %sw.bb431 ], [ 2, %if.end411 ]
  %.str.52.sink = phi ptr [ @.str.52, %sw.bb431 ], [ @.str.48, %if.end411 ]
  %.sink.ph = phi i64 [ 32, %sw.bb431 ], [ 4, %if.end411 ]
  %.str.54.sink.ph = phi ptr [ @.str.53, %sw.bb431 ], [ @.str.49, %if.end411 ]
  %arrayidx436 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 %.sink2554, !dbg !1810
  %105 = load i64, ptr %arrayidx436, align 8, !dbg !1810, !tbaa !1806
  %conv438 = uitofp i64 %105 to double, !dbg !1810
  %call439 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull %.str.51.sink, double noundef %conv438) #12, !dbg !1810
  %arrayidx440 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 %.sink2552, !dbg !1810
  %106 = load i64, ptr %arrayidx440, align 8, !dbg !1810, !tbaa !1806
  %conv442 = uitofp i64 %106 to double, !dbg !1810
  %call443 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull %.str.52.sink, double noundef %conv442) #12, !dbg !1810
  br label %sw.epilog453, !dbg !1810

sw.epilog453:                                     ; preds = %sw.epilog453.sink.split, %if.end411
  %.sink = phi i64 [ 1, %if.end411 ], [ %.sink.ph, %sw.epilog453.sink.split ]
  %.str.54.sink = phi ptr [ @.str.54, %if.end411 ], [ %.str.54.sink.ph, %sw.epilog453.sink.split ]
  %arrayidx449 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 %.sink, !dbg !1810
  %107 = load i64, ptr %arrayidx449, align 8, !dbg !1810, !tbaa !1806
  %conv451 = uitofp i64 %107 to double, !dbg !1810
  %call452 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull %.str.54.sink, double noundef %conv451) #12, !dbg !1810
  %matte454 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 6, !dbg !1811
  %108 = load i32, ptr %matte454, align 8, !dbg !1811, !tbaa !1325
  %cmp455.not = icmp eq i32 %108, 0, !dbg !1813
  br i1 %cmp455.not, label %if.end462, label %if.then457, !dbg !1814

if.then457:                                       ; preds = %sw.epilog453
  %arrayidx458 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 8, !dbg !1815
  %109 = load i64, ptr %arrayidx458, align 8, !dbg !1816, !tbaa !1806
  %conv460 = uitofp i64 %109 to double, !dbg !1817
  %call461 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.55, double noundef %conv460) #12, !dbg !1818
  br label %if.end462, !dbg !1819

if.end462:                                        ; preds = %if.then457, %sw.epilog453
  call void @llvm.dbg.value(metadata double 1.000000e+00, metadata !1113, metadata !DIExpression()), !dbg !1191
  %110 = load i64, ptr %depth399, align 8, !dbg !1820, !tbaa !1557
  %cmp464 = icmp ult i64 %110, 17, !dbg !1822
  br i1 %cmp464, label %if.then466, label %if.then476, !dbg !1823

if.then466:                                       ; preds = %if.end462
  %sub468 = sub nuw nsw i64 16, %110, !dbg !1824
  %shr = lshr i64 65535, %sub468, !dbg !1825
  %div469.rhs.trunc = trunc i64 %shr to i16, !dbg !1826
  %div4692446 = udiv i16 -1, %div469.rhs.trunc, !dbg !1826
  %conv470 = uitofp i16 %div4692446 to double, !dbg !1827
  call void @llvm.dbg.value(metadata double %conv470, metadata !1113, metadata !DIExpression()), !dbg !1191
  br label %if.then476, !dbg !1828

if.then476:                                       ; preds = %if.then466, %if.end462
  %scale.1.ph = phi double [ 1.000000e+00, %if.end462 ], [ %conv470, %if.then466 ]
  call void @llvm.dbg.value(metadata ptr %channel_features.0, metadata !1099, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr %channel_moments.0, metadata !1100, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr %channel_phash.0, metadata !1101, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1102, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 %spec.select2043, metadata !1103, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata double %scale.1.ph, metadata !1113, metadata !DIExpression()), !dbg !1191
  %call477 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.56) #12, !dbg !1829
  switch i32 %spec.select2043, label %sw.default479 [
    i32 2, label %sw.bb495
    i32 12, label %sw.bb486
  ], !dbg !1832

sw.default479:                                    ; preds = %if.then476
  %div480 = fdiv double 1.000000e+00, %scale.1.ph, !dbg !1833
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !1850
  call void @llvm.dbg.value(metadata i32 1, metadata !1845, metadata !DIExpression()) #12, !dbg !1850
  call void @llvm.dbg.value(metadata ptr @.str.6, metadata !1846, metadata !DIExpression()) #12, !dbg !1850
  call void @llvm.dbg.value(metadata double %div480, metadata !1847, metadata !DIExpression()) #12, !dbg !1850
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !1850
  %minima41.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 1, !dbg !1852
  %111 = load double, ptr %minima41.i, align 8, !dbg !1852, !tbaa !1295
  %mul42.i = fmul double %div480, %111, !dbg !1853
  %conv43.i = fptrunc double %mul42.i to float, !dbg !1854
  call void @llvm.dbg.value(metadata float %conv43.i, metadata !1855, metadata !DIExpression()) #12, !dbg !1861
  %cmp.i9.i = fcmp ugt float %conv43.i, 0.000000e+00, !dbg !1863
  br i1 %cmp.i9.i, label %if.end.i11.i, label %ClampToQuantum.exit16.i, !dbg !1865

if.end.i11.i:                                     ; preds = %sw.default479
  %cmp1.i10.i = fcmp ult float %conv43.i, 6.553500e+04, !dbg !1866
  br i1 %cmp1.i10.i, label %if.end3.i14.i, label %ClampToQuantum.exit16.i, !dbg !1868

if.end3.i14.i:                                    ; preds = %if.end.i11.i
  %add.i12.i = fadd float %conv43.i, 5.000000e-01, !dbg !1869
  %conv.i13.i = fptoui float %add.i12.i to i16, !dbg !1870
  %phi.cast.i = zext i16 %conv.i13.i to i32, !dbg !1871
  br label %ClampToQuantum.exit16.i, !dbg !1871

ClampToQuantum.exit16.i:                          ; preds = %if.end3.i14.i, %if.end.i11.i, %sw.default479
  %retval.0.i15.i = phi i32 [ %phi.cast.i, %if.end3.i14.i ], [ 0, %sw.default479 ], [ 65535, %if.end.i11.i ]
  %div49.i = fdiv double %111, 6.553500e+04, !dbg !1872
  %maxima52.i2048 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 2, !dbg !1873
  %112 = load double, ptr %maxima52.i2048, align 8, !dbg !1873, !tbaa !1384
  %mul53.i = fmul double %div480, %112, !dbg !1874
  %conv54.i = fptrunc double %mul53.i to float, !dbg !1875
  call void @llvm.dbg.value(metadata float %conv54.i, metadata !1855, metadata !DIExpression()) #12, !dbg !1876
  %cmp.i17.i = fcmp ugt float %conv54.i, 0.000000e+00, !dbg !1878
  br i1 %cmp.i17.i, label %if.end.i19.i, label %PrintChannelStatistics.exit, !dbg !1879

if.end.i19.i:                                     ; preds = %ClampToQuantum.exit16.i
  %cmp1.i18.i = fcmp ult float %conv54.i, 6.553500e+04, !dbg !1880
  br i1 %cmp1.i18.i, label %if.end3.i22.i, label %PrintChannelStatistics.exit, !dbg !1881

if.end3.i22.i:                                    ; preds = %if.end.i19.i
  %add.i20.i = fadd float %conv54.i, 5.000000e-01, !dbg !1882
  %conv.i21.i = fptoui float %add.i20.i to i16, !dbg !1883
  %phi.cast25.i = zext i16 %conv.i21.i to i32, !dbg !1884
  br label %PrintChannelStatistics.exit, !dbg !1884

PrintChannelStatistics.exit:                      ; preds = %ClampToQuantum.exit16.i, %if.end.i19.i, %if.end3.i22.i
  %retval.0.i23.i = phi i32 [ %phi.cast25.i, %if.end3.i22.i ], [ 0, %ClampToQuantum.exit16.i ], [ 65535, %if.end.i19.i ]
  %div60.i = fdiv double %112, 6.553500e+04, !dbg !1885
  %mean63.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 7, !dbg !1886
  %113 = load double, ptr %mean63.i, align 8, !dbg !1886, !tbaa !1887
  %mul64.i = fmul double %div480, %113, !dbg !1888
  %div68.i = fdiv double %113, 6.553500e+04, !dbg !1889
  %standard_deviation71.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 9, !dbg !1890
  %114 = load double, ptr %standard_deviation71.i, align 8, !dbg !1890, !tbaa !1891
  %mul72.i = fmul double %div480, %114, !dbg !1892
  %div76.i = fdiv double %114, 6.553500e+04, !dbg !1893
  %kurtosis79.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 10, !dbg !1894
  %115 = load double, ptr %kurtosis79.i, align 8, !dbg !1894, !tbaa !1895
  %skewness82.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 11, !dbg !1896
  %116 = load double, ptr %skewness82.i, align 8, !dbg !1896, !tbaa !1897
  %call83.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i15.i, double noundef %div49.i, i32 noundef %retval.0.i23.i, double noundef %div60.i, double noundef %mul64.i, double noundef %div68.i, double noundef %mul72.i, double noundef %div76.i, double noundef %115, double noundef %116) #12, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %call83.i, metadata !1849, metadata !DIExpression()) #12, !dbg !1850
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !1899
  call void @llvm.dbg.value(metadata i32 2, metadata !1845, metadata !DIExpression()) #12, !dbg !1899
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !1846, metadata !DIExpression()) #12, !dbg !1899
  call void @llvm.dbg.value(metadata double %div480, metadata !1847, metadata !DIExpression()) #12, !dbg !1899
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !1899
  %minima41.i2049 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 1, !dbg !1901
  %117 = load double, ptr %minima41.i2049, align 8, !dbg !1901, !tbaa !1295
  %mul42.i2050 = fmul double %div480, %117, !dbg !1902
  %conv43.i2051 = fptrunc double %mul42.i2050 to float, !dbg !1903
  call void @llvm.dbg.value(metadata float %conv43.i2051, metadata !1855, metadata !DIExpression()) #12, !dbg !1904
  %cmp.i9.i2052 = fcmp ugt float %conv43.i2051, 0.000000e+00, !dbg !1906
  br i1 %cmp.i9.i2052, label %if.end.i11.i2055, label %ClampToQuantum.exit16.i2066, !dbg !1907

if.end.i11.i2055:                                 ; preds = %PrintChannelStatistics.exit
  %cmp1.i10.i2054 = fcmp ult float %conv43.i2051, 6.553500e+04, !dbg !1908
  br i1 %cmp1.i10.i2054, label %if.end3.i14.i2059, label %ClampToQuantum.exit16.i2066, !dbg !1909

if.end3.i14.i2059:                                ; preds = %if.end.i11.i2055
  %add.i12.i2056 = fadd float %conv43.i2051, 5.000000e-01, !dbg !1910
  %conv.i13.i2057 = fptoui float %add.i12.i2056 to i16, !dbg !1911
  %phi.cast.i2058 = zext i16 %conv.i13.i2057 to i32, !dbg !1912
  br label %ClampToQuantum.exit16.i2066, !dbg !1912

ClampToQuantum.exit16.i2066:                      ; preds = %if.end3.i14.i2059, %if.end.i11.i2055, %PrintChannelStatistics.exit
  %retval.0.i15.i2060 = phi i32 [ %phi.cast.i2058, %if.end3.i14.i2059 ], [ 0, %PrintChannelStatistics.exit ], [ 65535, %if.end.i11.i2055 ]
  %div49.i2061 = fdiv double %117, 6.553500e+04, !dbg !1913
  %maxima52.i2062 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 2, !dbg !1914
  %118 = load double, ptr %maxima52.i2062, align 8, !dbg !1914, !tbaa !1384
  %mul53.i2063 = fmul double %div480, %118, !dbg !1915
  %conv54.i2064 = fptrunc double %mul53.i2063 to float, !dbg !1916
  call void @llvm.dbg.value(metadata float %conv54.i2064, metadata !1855, metadata !DIExpression()) #12, !dbg !1917
  %cmp.i17.i2065 = fcmp ugt float %conv54.i2064, 0.000000e+00, !dbg !1919
  br i1 %cmp.i17.i2065, label %if.end.i19.i2068, label %PrintChannelStatistics.exit2084, !dbg !1920

if.end.i19.i2068:                                 ; preds = %ClampToQuantum.exit16.i2066
  %cmp1.i18.i2067 = fcmp ult float %conv54.i2064, 6.553500e+04, !dbg !1921
  br i1 %cmp1.i18.i2067, label %if.end3.i22.i2072, label %PrintChannelStatistics.exit2084, !dbg !1922

if.end3.i22.i2072:                                ; preds = %if.end.i19.i2068
  %add.i20.i2069 = fadd float %conv54.i2064, 5.000000e-01, !dbg !1923
  %conv.i21.i2070 = fptoui float %add.i20.i2069 to i16, !dbg !1924
  %phi.cast25.i2071 = zext i16 %conv.i21.i2070 to i32, !dbg !1925
  br label %PrintChannelStatistics.exit2084, !dbg !1925

PrintChannelStatistics.exit2084:                  ; preds = %ClampToQuantum.exit16.i2066, %if.end.i19.i2068, %if.end3.i22.i2072
  %retval.0.i23.i2073 = phi i32 [ %phi.cast25.i2071, %if.end3.i22.i2072 ], [ 0, %ClampToQuantum.exit16.i2066 ], [ 65535, %if.end.i19.i2068 ]
  %div60.i2074 = fdiv double %118, 6.553500e+04, !dbg !1926
  %mean63.i2075 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 7, !dbg !1927
  %119 = load double, ptr %mean63.i2075, align 8, !dbg !1927, !tbaa !1887
  %mul64.i2076 = fmul double %div480, %119, !dbg !1928
  %div68.i2077 = fdiv double %119, 6.553500e+04, !dbg !1929
  %standard_deviation71.i2078 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 9, !dbg !1930
  %120 = load double, ptr %standard_deviation71.i2078, align 8, !dbg !1930, !tbaa !1891
  %mul72.i2079 = fmul double %div480, %120, !dbg !1931
  %div76.i2080 = fdiv double %120, 6.553500e+04, !dbg !1932
  %kurtosis79.i2081 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 10, !dbg !1933
  %121 = load double, ptr %kurtosis79.i2081, align 8, !dbg !1933, !tbaa !1895
  %skewness82.i2082 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 11, !dbg !1934
  %122 = load double, ptr %skewness82.i2082, align 8, !dbg !1934, !tbaa !1897
  %call83.i2083 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i15.i2060, double noundef %div49.i2061, i32 noundef %retval.0.i23.i2073, double noundef %div60.i2074, double noundef %mul64.i2076, double noundef %div68.i2077, double noundef %mul72.i2079, double noundef %div76.i2080, double noundef %121, double noundef %122) #12, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %call83.i2083, metadata !1849, metadata !DIExpression()) #12, !dbg !1899
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !1936
  call void @llvm.dbg.value(metadata i32 4, metadata !1845, metadata !DIExpression()) #12, !dbg !1936
  call void @llvm.dbg.value(metadata ptr @.str.8, metadata !1846, metadata !DIExpression()) #12, !dbg !1936
  call void @llvm.dbg.value(metadata double %div480, metadata !1847, metadata !DIExpression()) #12, !dbg !1936
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !1936
  %minima41.i2085 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 1, !dbg !1938
  %123 = load double, ptr %minima41.i2085, align 8, !dbg !1938, !tbaa !1295
  %mul42.i2086 = fmul double %div480, %123, !dbg !1939
  %conv43.i2087 = fptrunc double %mul42.i2086 to float, !dbg !1940
  call void @llvm.dbg.value(metadata float %conv43.i2087, metadata !1855, metadata !DIExpression()) #12, !dbg !1941
  %cmp.i9.i2088 = fcmp ugt float %conv43.i2087, 0.000000e+00, !dbg !1943
  br i1 %cmp.i9.i2088, label %if.end.i11.i2091, label %ClampToQuantum.exit16.i2102, !dbg !1944

if.end.i11.i2091:                                 ; preds = %PrintChannelStatistics.exit2084
  %cmp1.i10.i2090 = fcmp ult float %conv43.i2087, 6.553500e+04, !dbg !1945
  br i1 %cmp1.i10.i2090, label %if.end3.i14.i2095, label %ClampToQuantum.exit16.i2102, !dbg !1946

if.end3.i14.i2095:                                ; preds = %if.end.i11.i2091
  %add.i12.i2092 = fadd float %conv43.i2087, 5.000000e-01, !dbg !1947
  %conv.i13.i2093 = fptoui float %add.i12.i2092 to i16, !dbg !1948
  %phi.cast.i2094 = zext i16 %conv.i13.i2093 to i32, !dbg !1949
  br label %ClampToQuantum.exit16.i2102, !dbg !1949

ClampToQuantum.exit16.i2102:                      ; preds = %if.end3.i14.i2095, %if.end.i11.i2091, %PrintChannelStatistics.exit2084
  %retval.0.i15.i2096 = phi i32 [ %phi.cast.i2094, %if.end3.i14.i2095 ], [ 0, %PrintChannelStatistics.exit2084 ], [ 65535, %if.end.i11.i2091 ]
  %div49.i2097 = fdiv double %123, 6.553500e+04, !dbg !1950
  %maxima52.i2098 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 2, !dbg !1951
  %124 = load double, ptr %maxima52.i2098, align 8, !dbg !1951, !tbaa !1384
  %mul53.i2099 = fmul double %div480, %124, !dbg !1952
  %conv54.i2100 = fptrunc double %mul53.i2099 to float, !dbg !1953
  call void @llvm.dbg.value(metadata float %conv54.i2100, metadata !1855, metadata !DIExpression()) #12, !dbg !1954
  %cmp.i17.i2101 = fcmp ugt float %conv54.i2100, 0.000000e+00, !dbg !1956
  br i1 %cmp.i17.i2101, label %if.end.i19.i2104, label %PrintChannelStatistics.exit2120, !dbg !1957

if.end.i19.i2104:                                 ; preds = %ClampToQuantum.exit16.i2102
  %cmp1.i18.i2103 = fcmp ult float %conv54.i2100, 6.553500e+04, !dbg !1958
  br i1 %cmp1.i18.i2103, label %if.end3.i22.i2108, label %PrintChannelStatistics.exit2120, !dbg !1959

if.end3.i22.i2108:                                ; preds = %if.end.i19.i2104
  %add.i20.i2105 = fadd float %conv54.i2100, 5.000000e-01, !dbg !1960
  %conv.i21.i2106 = fptoui float %add.i20.i2105 to i16, !dbg !1961
  %phi.cast25.i2107 = zext i16 %conv.i21.i2106 to i32, !dbg !1962
  br label %PrintChannelStatistics.exit2120, !dbg !1962

PrintChannelStatistics.exit2120:                  ; preds = %ClampToQuantum.exit16.i2102, %if.end.i19.i2104, %if.end3.i22.i2108
  %retval.0.i23.i2109 = phi i32 [ %phi.cast25.i2107, %if.end3.i22.i2108 ], [ 0, %ClampToQuantum.exit16.i2102 ], [ 65535, %if.end.i19.i2104 ]
  %div60.i2110 = fdiv double %124, 6.553500e+04, !dbg !1963
  %mean63.i2111 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 7, !dbg !1964
  %125 = load double, ptr %mean63.i2111, align 8, !dbg !1964, !tbaa !1887
  %mul64.i2112 = fmul double %div480, %125, !dbg !1965
  %div68.i2113 = fdiv double %125, 6.553500e+04, !dbg !1966
  %standard_deviation71.i2114 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 9, !dbg !1967
  %126 = load double, ptr %standard_deviation71.i2114, align 8, !dbg !1967, !tbaa !1891
  %mul72.i2115 = fmul double %div480, %126, !dbg !1968
  %div76.i2116 = fdiv double %126, 6.553500e+04, !dbg !1969
  %kurtosis79.i2117 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 10, !dbg !1970
  %127 = load double, ptr %kurtosis79.i2117, align 8, !dbg !1970, !tbaa !1895
  %skewness82.i2118 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 11, !dbg !1971
  %128 = load double, ptr %skewness82.i2118, align 8, !dbg !1971, !tbaa !1897
  %call83.i2119 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i15.i2096, double noundef %div49.i2097, i32 noundef %retval.0.i23.i2109, double noundef %div60.i2110, double noundef %mul64.i2112, double noundef %div68.i2113, double noundef %mul72.i2115, double noundef %div76.i2116, double noundef %127, double noundef %128) #12, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %call83.i2119, metadata !1849, metadata !DIExpression()) #12, !dbg !1936
  br label %sw.epilog498, !dbg !1973

sw.bb486:                                         ; preds = %if.then476
  %div487 = fdiv double 1.000000e+00, %scale.1.ph, !dbg !1974
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !1976
  call void @llvm.dbg.value(metadata i32 1, metadata !1845, metadata !DIExpression()) #12, !dbg !1976
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !1846, metadata !DIExpression()) #12, !dbg !1976
  call void @llvm.dbg.value(metadata double %div487, metadata !1847, metadata !DIExpression()) #12, !dbg !1976
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !1976
  %minima41.i2121 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 1, !dbg !1978
  %129 = load double, ptr %minima41.i2121, align 8, !dbg !1978, !tbaa !1295
  %mul42.i2122 = fmul double %div487, %129, !dbg !1979
  %conv43.i2123 = fptrunc double %mul42.i2122 to float, !dbg !1980
  call void @llvm.dbg.value(metadata float %conv43.i2123, metadata !1855, metadata !DIExpression()) #12, !dbg !1981
  %cmp.i9.i2124 = fcmp ugt float %conv43.i2123, 0.000000e+00, !dbg !1983
  br i1 %cmp.i9.i2124, label %if.end.i11.i2127, label %ClampToQuantum.exit16.i2138, !dbg !1984

if.end.i11.i2127:                                 ; preds = %sw.bb486
  %cmp1.i10.i2126 = fcmp ult float %conv43.i2123, 6.553500e+04, !dbg !1985
  br i1 %cmp1.i10.i2126, label %if.end3.i14.i2131, label %ClampToQuantum.exit16.i2138, !dbg !1986

if.end3.i14.i2131:                                ; preds = %if.end.i11.i2127
  %add.i12.i2128 = fadd float %conv43.i2123, 5.000000e-01, !dbg !1987
  %conv.i13.i2129 = fptoui float %add.i12.i2128 to i16, !dbg !1988
  %phi.cast.i2130 = zext i16 %conv.i13.i2129 to i32, !dbg !1989
  br label %ClampToQuantum.exit16.i2138, !dbg !1989

ClampToQuantum.exit16.i2138:                      ; preds = %if.end3.i14.i2131, %if.end.i11.i2127, %sw.bb486
  %retval.0.i15.i2132 = phi i32 [ %phi.cast.i2130, %if.end3.i14.i2131 ], [ 0, %sw.bb486 ], [ 65535, %if.end.i11.i2127 ]
  %div49.i2133 = fdiv double %129, 6.553500e+04, !dbg !1990
  %maxima52.i2134 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 2, !dbg !1991
  %130 = load double, ptr %maxima52.i2134, align 8, !dbg !1991, !tbaa !1384
  %mul53.i2135 = fmul double %div487, %130, !dbg !1992
  %conv54.i2136 = fptrunc double %mul53.i2135 to float, !dbg !1993
  call void @llvm.dbg.value(metadata float %conv54.i2136, metadata !1855, metadata !DIExpression()) #12, !dbg !1994
  %cmp.i17.i2137 = fcmp ugt float %conv54.i2136, 0.000000e+00, !dbg !1996
  br i1 %cmp.i17.i2137, label %if.end.i19.i2140, label %PrintChannelStatistics.exit2156, !dbg !1997

if.end.i19.i2140:                                 ; preds = %ClampToQuantum.exit16.i2138
  %cmp1.i18.i2139 = fcmp ult float %conv54.i2136, 6.553500e+04, !dbg !1998
  br i1 %cmp1.i18.i2139, label %if.end3.i22.i2144, label %PrintChannelStatistics.exit2156, !dbg !1999

if.end3.i22.i2144:                                ; preds = %if.end.i19.i2140
  %add.i20.i2141 = fadd float %conv54.i2136, 5.000000e-01, !dbg !2000
  %conv.i21.i2142 = fptoui float %add.i20.i2141 to i16, !dbg !2001
  %phi.cast25.i2143 = zext i16 %conv.i21.i2142 to i32, !dbg !2002
  br label %PrintChannelStatistics.exit2156, !dbg !2002

PrintChannelStatistics.exit2156:                  ; preds = %ClampToQuantum.exit16.i2138, %if.end.i19.i2140, %if.end3.i22.i2144
  %retval.0.i23.i2145 = phi i32 [ %phi.cast25.i2143, %if.end3.i22.i2144 ], [ 0, %ClampToQuantum.exit16.i2138 ], [ 65535, %if.end.i19.i2140 ]
  %div60.i2146 = fdiv double %130, 6.553500e+04, !dbg !2003
  %mean63.i2147 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 7, !dbg !2004
  %131 = load double, ptr %mean63.i2147, align 8, !dbg !2004, !tbaa !1887
  %mul64.i2148 = fmul double %div487, %131, !dbg !2005
  %div68.i2149 = fdiv double %131, 6.553500e+04, !dbg !2006
  %standard_deviation71.i2150 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 9, !dbg !2007
  %132 = load double, ptr %standard_deviation71.i2150, align 8, !dbg !2007, !tbaa !1891
  %mul72.i2151 = fmul double %div487, %132, !dbg !2008
  %div76.i2152 = fdiv double %132, 6.553500e+04, !dbg !2009
  %kurtosis79.i2153 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 10, !dbg !2010
  %133 = load double, ptr %kurtosis79.i2153, align 8, !dbg !2010, !tbaa !1895
  %skewness82.i2154 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 11, !dbg !2011
  %134 = load double, ptr %skewness82.i2154, align 8, !dbg !2011, !tbaa !1897
  %call83.i2155 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i15.i2132, double noundef %div49.i2133, i32 noundef %retval.0.i23.i2145, double noundef %div60.i2146, double noundef %mul64.i2148, double noundef %div68.i2149, double noundef %mul72.i2151, double noundef %div76.i2152, double noundef %133, double noundef %134) #12, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %call83.i2155, metadata !1849, metadata !DIExpression()) #12, !dbg !1976
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !2013
  call void @llvm.dbg.value(metadata i32 2, metadata !1845, metadata !DIExpression()) #12, !dbg !2013
  call void @llvm.dbg.value(metadata ptr @.str.10, metadata !1846, metadata !DIExpression()) #12, !dbg !2013
  call void @llvm.dbg.value(metadata double %div487, metadata !1847, metadata !DIExpression()) #12, !dbg !2013
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !2013
  %minima41.i2157 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 1, !dbg !2015
  %135 = load double, ptr %minima41.i2157, align 8, !dbg !2015, !tbaa !1295
  %mul42.i2158 = fmul double %div487, %135, !dbg !2016
  %conv43.i2159 = fptrunc double %mul42.i2158 to float, !dbg !2017
  call void @llvm.dbg.value(metadata float %conv43.i2159, metadata !1855, metadata !DIExpression()) #12, !dbg !2018
  %cmp.i9.i2160 = fcmp ugt float %conv43.i2159, 0.000000e+00, !dbg !2020
  br i1 %cmp.i9.i2160, label %if.end.i11.i2163, label %ClampToQuantum.exit16.i2174, !dbg !2021

if.end.i11.i2163:                                 ; preds = %PrintChannelStatistics.exit2156
  %cmp1.i10.i2162 = fcmp ult float %conv43.i2159, 6.553500e+04, !dbg !2022
  br i1 %cmp1.i10.i2162, label %if.end3.i14.i2167, label %ClampToQuantum.exit16.i2174, !dbg !2023

if.end3.i14.i2167:                                ; preds = %if.end.i11.i2163
  %add.i12.i2164 = fadd float %conv43.i2159, 5.000000e-01, !dbg !2024
  %conv.i13.i2165 = fptoui float %add.i12.i2164 to i16, !dbg !2025
  %phi.cast.i2166 = zext i16 %conv.i13.i2165 to i32, !dbg !2026
  br label %ClampToQuantum.exit16.i2174, !dbg !2026

ClampToQuantum.exit16.i2174:                      ; preds = %if.end3.i14.i2167, %if.end.i11.i2163, %PrintChannelStatistics.exit2156
  %retval.0.i15.i2168 = phi i32 [ %phi.cast.i2166, %if.end3.i14.i2167 ], [ 0, %PrintChannelStatistics.exit2156 ], [ 65535, %if.end.i11.i2163 ]
  %div49.i2169 = fdiv double %135, 6.553500e+04, !dbg !2027
  %maxima52.i2170 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 2, !dbg !2028
  %136 = load double, ptr %maxima52.i2170, align 8, !dbg !2028, !tbaa !1384
  %mul53.i2171 = fmul double %div487, %136, !dbg !2029
  %conv54.i2172 = fptrunc double %mul53.i2171 to float, !dbg !2030
  call void @llvm.dbg.value(metadata float %conv54.i2172, metadata !1855, metadata !DIExpression()) #12, !dbg !2031
  %cmp.i17.i2173 = fcmp ugt float %conv54.i2172, 0.000000e+00, !dbg !2033
  br i1 %cmp.i17.i2173, label %if.end.i19.i2176, label %PrintChannelStatistics.exit2192, !dbg !2034

if.end.i19.i2176:                                 ; preds = %ClampToQuantum.exit16.i2174
  %cmp1.i18.i2175 = fcmp ult float %conv54.i2172, 6.553500e+04, !dbg !2035
  br i1 %cmp1.i18.i2175, label %if.end3.i22.i2180, label %PrintChannelStatistics.exit2192, !dbg !2036

if.end3.i22.i2180:                                ; preds = %if.end.i19.i2176
  %add.i20.i2177 = fadd float %conv54.i2172, 5.000000e-01, !dbg !2037
  %conv.i21.i2178 = fptoui float %add.i20.i2177 to i16, !dbg !2038
  %phi.cast25.i2179 = zext i16 %conv.i21.i2178 to i32, !dbg !2039
  br label %PrintChannelStatistics.exit2192, !dbg !2039

PrintChannelStatistics.exit2192:                  ; preds = %ClampToQuantum.exit16.i2174, %if.end.i19.i2176, %if.end3.i22.i2180
  %retval.0.i23.i2181 = phi i32 [ %phi.cast25.i2179, %if.end3.i22.i2180 ], [ 0, %ClampToQuantum.exit16.i2174 ], [ 65535, %if.end.i19.i2176 ]
  %div60.i2182 = fdiv double %136, 6.553500e+04, !dbg !2040
  %mean63.i2183 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 7, !dbg !2041
  %137 = load double, ptr %mean63.i2183, align 8, !dbg !2041, !tbaa !1887
  %mul64.i2184 = fmul double %div487, %137, !dbg !2042
  %div68.i2185 = fdiv double %137, 6.553500e+04, !dbg !2043
  %standard_deviation71.i2186 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 9, !dbg !2044
  %138 = load double, ptr %standard_deviation71.i2186, align 8, !dbg !2044, !tbaa !1891
  %mul72.i2187 = fmul double %div487, %138, !dbg !2045
  %div76.i2188 = fdiv double %138, 6.553500e+04, !dbg !2046
  %kurtosis79.i2189 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 10, !dbg !2047
  %139 = load double, ptr %kurtosis79.i2189, align 8, !dbg !2047, !tbaa !1895
  %skewness82.i2190 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 2, i32 11, !dbg !2048
  %140 = load double, ptr %skewness82.i2190, align 8, !dbg !2048, !tbaa !1897
  %call83.i2191 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.10, i32 noundef %retval.0.i15.i2168, double noundef %div49.i2169, i32 noundef %retval.0.i23.i2181, double noundef %div60.i2182, double noundef %mul64.i2184, double noundef %div68.i2185, double noundef %mul72.i2187, double noundef %div76.i2188, double noundef %139, double noundef %140) #12, !dbg !2049
  call void @llvm.dbg.value(metadata i64 %call83.i2191, metadata !1849, metadata !DIExpression()) #12, !dbg !2013
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !2050
  call void @llvm.dbg.value(metadata i32 4, metadata !1845, metadata !DIExpression()) #12, !dbg !2050
  call void @llvm.dbg.value(metadata ptr @.str.11, metadata !1846, metadata !DIExpression()) #12, !dbg !2050
  call void @llvm.dbg.value(metadata double %div487, metadata !1847, metadata !DIExpression()) #12, !dbg !2050
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !2050
  %minima41.i2193 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 1, !dbg !2052
  %141 = load double, ptr %minima41.i2193, align 8, !dbg !2052, !tbaa !1295
  %mul42.i2194 = fmul double %div487, %141, !dbg !2053
  %conv43.i2195 = fptrunc double %mul42.i2194 to float, !dbg !2054
  call void @llvm.dbg.value(metadata float %conv43.i2195, metadata !1855, metadata !DIExpression()) #12, !dbg !2055
  %cmp.i9.i2196 = fcmp ugt float %conv43.i2195, 0.000000e+00, !dbg !2057
  br i1 %cmp.i9.i2196, label %if.end.i11.i2199, label %ClampToQuantum.exit16.i2210, !dbg !2058

if.end.i11.i2199:                                 ; preds = %PrintChannelStatistics.exit2192
  %cmp1.i10.i2198 = fcmp ult float %conv43.i2195, 6.553500e+04, !dbg !2059
  br i1 %cmp1.i10.i2198, label %if.end3.i14.i2203, label %ClampToQuantum.exit16.i2210, !dbg !2060

if.end3.i14.i2203:                                ; preds = %if.end.i11.i2199
  %add.i12.i2200 = fadd float %conv43.i2195, 5.000000e-01, !dbg !2061
  %conv.i13.i2201 = fptoui float %add.i12.i2200 to i16, !dbg !2062
  %phi.cast.i2202 = zext i16 %conv.i13.i2201 to i32, !dbg !2063
  br label %ClampToQuantum.exit16.i2210, !dbg !2063

ClampToQuantum.exit16.i2210:                      ; preds = %if.end3.i14.i2203, %if.end.i11.i2199, %PrintChannelStatistics.exit2192
  %retval.0.i15.i2204 = phi i32 [ %phi.cast.i2202, %if.end3.i14.i2203 ], [ 0, %PrintChannelStatistics.exit2192 ], [ 65535, %if.end.i11.i2199 ]
  %div49.i2205 = fdiv double %141, 6.553500e+04, !dbg !2064
  %maxima52.i2206 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 2, !dbg !2065
  %142 = load double, ptr %maxima52.i2206, align 8, !dbg !2065, !tbaa !1384
  %mul53.i2207 = fmul double %div487, %142, !dbg !2066
  %conv54.i2208 = fptrunc double %mul53.i2207 to float, !dbg !2067
  call void @llvm.dbg.value(metadata float %conv54.i2208, metadata !1855, metadata !DIExpression()) #12, !dbg !2068
  %cmp.i17.i2209 = fcmp ugt float %conv54.i2208, 0.000000e+00, !dbg !2070
  br i1 %cmp.i17.i2209, label %if.end.i19.i2212, label %PrintChannelStatistics.exit2228, !dbg !2071

if.end.i19.i2212:                                 ; preds = %ClampToQuantum.exit16.i2210
  %cmp1.i18.i2211 = fcmp ult float %conv54.i2208, 6.553500e+04, !dbg !2072
  br i1 %cmp1.i18.i2211, label %if.end3.i22.i2216, label %PrintChannelStatistics.exit2228, !dbg !2073

if.end3.i22.i2216:                                ; preds = %if.end.i19.i2212
  %add.i20.i2213 = fadd float %conv54.i2208, 5.000000e-01, !dbg !2074
  %conv.i21.i2214 = fptoui float %add.i20.i2213 to i16, !dbg !2075
  %phi.cast25.i2215 = zext i16 %conv.i21.i2214 to i32, !dbg !2076
  br label %PrintChannelStatistics.exit2228, !dbg !2076

PrintChannelStatistics.exit2228:                  ; preds = %ClampToQuantum.exit16.i2210, %if.end.i19.i2212, %if.end3.i22.i2216
  %retval.0.i23.i2217 = phi i32 [ %phi.cast25.i2215, %if.end3.i22.i2216 ], [ 0, %ClampToQuantum.exit16.i2210 ], [ 65535, %if.end.i19.i2212 ]
  %div60.i2218 = fdiv double %142, 6.553500e+04, !dbg !2077
  %mean63.i2219 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 7, !dbg !2078
  %143 = load double, ptr %mean63.i2219, align 8, !dbg !2078, !tbaa !1887
  %mul64.i2220 = fmul double %div487, %143, !dbg !2079
  %div68.i2221 = fdiv double %143, 6.553500e+04, !dbg !2080
  %standard_deviation71.i2222 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 9, !dbg !2081
  %144 = load double, ptr %standard_deviation71.i2222, align 8, !dbg !2081, !tbaa !1891
  %mul72.i2223 = fmul double %div487, %144, !dbg !2082
  %div76.i2224 = fdiv double %144, 6.553500e+04, !dbg !2083
  %kurtosis79.i2225 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 10, !dbg !2084
  %145 = load double, ptr %kurtosis79.i2225, align 8, !dbg !2084, !tbaa !1895
  %skewness82.i2226 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 4, i32 11, !dbg !2085
  %146 = load double, ptr %skewness82.i2226, align 8, !dbg !2085, !tbaa !1897
  %call83.i2227 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.11, i32 noundef %retval.0.i15.i2204, double noundef %div49.i2205, i32 noundef %retval.0.i23.i2217, double noundef %div60.i2218, double noundef %mul64.i2220, double noundef %div68.i2221, double noundef %mul72.i2223, double noundef %div76.i2224, double noundef %145, double noundef %146) #12, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %call83.i2227, metadata !1849, metadata !DIExpression()) #12, !dbg !2050
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !2087
  call void @llvm.dbg.value(metadata i32 32, metadata !1845, metadata !DIExpression()) #12, !dbg !2087
  call void @llvm.dbg.value(metadata ptr @.str.12, metadata !1846, metadata !DIExpression()) #12, !dbg !2087
  call void @llvm.dbg.value(metadata double %div487, metadata !1847, metadata !DIExpression()) #12, !dbg !2087
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !2087
  %minima41.i2229 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 32, i32 1, !dbg !2089
  %147 = load double, ptr %minima41.i2229, align 8, !dbg !2089, !tbaa !1295
  %mul42.i2230 = fmul double %div487, %147, !dbg !2090
  %conv43.i2231 = fptrunc double %mul42.i2230 to float, !dbg !2091
  call void @llvm.dbg.value(metadata float %conv43.i2231, metadata !1855, metadata !DIExpression()) #12, !dbg !2092
  %cmp.i9.i2232 = fcmp ugt float %conv43.i2231, 0.000000e+00, !dbg !2094
  br i1 %cmp.i9.i2232, label %if.end.i11.i2235, label %ClampToQuantum.exit16.i2246, !dbg !2095

if.end.i11.i2235:                                 ; preds = %PrintChannelStatistics.exit2228
  %cmp1.i10.i2234 = fcmp ult float %conv43.i2231, 6.553500e+04, !dbg !2096
  br i1 %cmp1.i10.i2234, label %if.end3.i14.i2239, label %ClampToQuantum.exit16.i2246, !dbg !2097

if.end3.i14.i2239:                                ; preds = %if.end.i11.i2235
  %add.i12.i2236 = fadd float %conv43.i2231, 5.000000e-01, !dbg !2098
  %conv.i13.i2237 = fptoui float %add.i12.i2236 to i16, !dbg !2099
  %phi.cast.i2238 = zext i16 %conv.i13.i2237 to i32, !dbg !2100
  br label %ClampToQuantum.exit16.i2246, !dbg !2100

ClampToQuantum.exit16.i2246:                      ; preds = %if.end3.i14.i2239, %if.end.i11.i2235, %PrintChannelStatistics.exit2228
  %retval.0.i15.i2240 = phi i32 [ %phi.cast.i2238, %if.end3.i14.i2239 ], [ 0, %PrintChannelStatistics.exit2228 ], [ 65535, %if.end.i11.i2235 ]
  %div49.i2241 = fdiv double %147, 6.553500e+04, !dbg !2101
  %maxima52.i2242 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 32, i32 2, !dbg !2102
  %148 = load double, ptr %maxima52.i2242, align 8, !dbg !2102, !tbaa !1384
  %mul53.i2243 = fmul double %div487, %148, !dbg !2103
  %conv54.i2244 = fptrunc double %mul53.i2243 to float, !dbg !2104
  call void @llvm.dbg.value(metadata float %conv54.i2244, metadata !1855, metadata !DIExpression()) #12, !dbg !2105
  %cmp.i17.i2245 = fcmp ugt float %conv54.i2244, 0.000000e+00, !dbg !2107
  br i1 %cmp.i17.i2245, label %if.end.i19.i2248, label %PrintChannelStatistics.exit2264, !dbg !2108

if.end.i19.i2248:                                 ; preds = %ClampToQuantum.exit16.i2246
  %cmp1.i18.i2247 = fcmp ult float %conv54.i2244, 6.553500e+04, !dbg !2109
  br i1 %cmp1.i18.i2247, label %if.end3.i22.i2252, label %PrintChannelStatistics.exit2264, !dbg !2110

if.end3.i22.i2252:                                ; preds = %if.end.i19.i2248
  %add.i20.i2249 = fadd float %conv54.i2244, 5.000000e-01, !dbg !2111
  %conv.i21.i2250 = fptoui float %add.i20.i2249 to i16, !dbg !2112
  %phi.cast25.i2251 = zext i16 %conv.i21.i2250 to i32, !dbg !2113
  br label %PrintChannelStatistics.exit2264, !dbg !2113

PrintChannelStatistics.exit2264:                  ; preds = %ClampToQuantum.exit16.i2246, %if.end.i19.i2248, %if.end3.i22.i2252
  %retval.0.i23.i2253 = phi i32 [ %phi.cast25.i2251, %if.end3.i22.i2252 ], [ 0, %ClampToQuantum.exit16.i2246 ], [ 65535, %if.end.i19.i2248 ]
  %div60.i2254 = fdiv double %148, 6.553500e+04, !dbg !2114
  %mean63.i2255 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 32, i32 7, !dbg !2115
  %149 = load double, ptr %mean63.i2255, align 8, !dbg !2115, !tbaa !1887
  %mul64.i2256 = fmul double %div487, %149, !dbg !2116
  %div68.i2257 = fdiv double %149, 6.553500e+04, !dbg !2117
  %standard_deviation71.i2258 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 32, i32 9, !dbg !2118
  %150 = load double, ptr %standard_deviation71.i2258, align 8, !dbg !2118, !tbaa !1891
  %mul72.i2259 = fmul double %div487, %150, !dbg !2119
  %div76.i2260 = fdiv double %150, 6.553500e+04, !dbg !2120
  %kurtosis79.i2261 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 32, i32 10, !dbg !2121
  %151 = load double, ptr %kurtosis79.i2261, align 8, !dbg !2121, !tbaa !1895
  %skewness82.i2262 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 32, i32 11, !dbg !2122
  %152 = load double, ptr %skewness82.i2262, align 8, !dbg !2122, !tbaa !1897
  %call83.i2263 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i15.i2240, double noundef %div49.i2241, i32 noundef %retval.0.i23.i2253, double noundef %div60.i2254, double noundef %mul64.i2256, double noundef %div68.i2257, double noundef %mul72.i2259, double noundef %div76.i2260, double noundef %151, double noundef %152) #12, !dbg !2123
  call void @llvm.dbg.value(metadata i64 %call83.i2263, metadata !1849, metadata !DIExpression()) #12, !dbg !2087
  br label %sw.epilog498, !dbg !2124

sw.bb495:                                         ; preds = %if.then476
  %div496 = fdiv double 1.000000e+00, %scale.1.ph, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !2127
  call void @llvm.dbg.value(metadata i32 1, metadata !1845, metadata !DIExpression()) #12, !dbg !2127
  call void @llvm.dbg.value(metadata ptr @.str.13, metadata !1846, metadata !DIExpression()) #12, !dbg !2127
  call void @llvm.dbg.value(metadata double %div496, metadata !1847, metadata !DIExpression()) #12, !dbg !2127
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !2127
  %minima41.i2265 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 1, !dbg !2129
  %153 = load double, ptr %minima41.i2265, align 8, !dbg !2129, !tbaa !1295
  %mul42.i2266 = fmul double %div496, %153, !dbg !2130
  %conv43.i2267 = fptrunc double %mul42.i2266 to float, !dbg !2131
  call void @llvm.dbg.value(metadata float %conv43.i2267, metadata !1855, metadata !DIExpression()) #12, !dbg !2132
  %cmp.i9.i2268 = fcmp ugt float %conv43.i2267, 0.000000e+00, !dbg !2134
  br i1 %cmp.i9.i2268, label %if.end.i11.i2271, label %ClampToQuantum.exit16.i2282, !dbg !2135

if.end.i11.i2271:                                 ; preds = %sw.bb495
  %cmp1.i10.i2270 = fcmp ult float %conv43.i2267, 6.553500e+04, !dbg !2136
  br i1 %cmp1.i10.i2270, label %if.end3.i14.i2275, label %ClampToQuantum.exit16.i2282, !dbg !2137

if.end3.i14.i2275:                                ; preds = %if.end.i11.i2271
  %add.i12.i2272 = fadd float %conv43.i2267, 5.000000e-01, !dbg !2138
  %conv.i13.i2273 = fptoui float %add.i12.i2272 to i16, !dbg !2139
  %phi.cast.i2274 = zext i16 %conv.i13.i2273 to i32, !dbg !2140
  br label %ClampToQuantum.exit16.i2282, !dbg !2140

ClampToQuantum.exit16.i2282:                      ; preds = %if.end3.i14.i2275, %if.end.i11.i2271, %sw.bb495
  %retval.0.i15.i2276 = phi i32 [ %phi.cast.i2274, %if.end3.i14.i2275 ], [ 0, %sw.bb495 ], [ 65535, %if.end.i11.i2271 ]
  %div49.i2277 = fdiv double %153, 6.553500e+04, !dbg !2141
  %maxima52.i2278 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 2, !dbg !2142
  %154 = load double, ptr %maxima52.i2278, align 8, !dbg !2142, !tbaa !1384
  %mul53.i2279 = fmul double %div496, %154, !dbg !2143
  %conv54.i2280 = fptrunc double %mul53.i2279 to float, !dbg !2144
  call void @llvm.dbg.value(metadata float %conv54.i2280, metadata !1855, metadata !DIExpression()) #12, !dbg !2145
  %cmp.i17.i2281 = fcmp ugt float %conv54.i2280, 0.000000e+00, !dbg !2147
  br i1 %cmp.i17.i2281, label %if.end.i19.i2284, label %PrintChannelStatistics.exit2300, !dbg !2148

if.end.i19.i2284:                                 ; preds = %ClampToQuantum.exit16.i2282
  %cmp1.i18.i2283 = fcmp ult float %conv54.i2280, 6.553500e+04, !dbg !2149
  br i1 %cmp1.i18.i2283, label %if.end3.i22.i2288, label %PrintChannelStatistics.exit2300, !dbg !2150

if.end3.i22.i2288:                                ; preds = %if.end.i19.i2284
  %add.i20.i2285 = fadd float %conv54.i2280, 5.000000e-01, !dbg !2151
  %conv.i21.i2286 = fptoui float %add.i20.i2285 to i16, !dbg !2152
  %phi.cast25.i2287 = zext i16 %conv.i21.i2286 to i32, !dbg !2153
  br label %PrintChannelStatistics.exit2300, !dbg !2153

PrintChannelStatistics.exit2300:                  ; preds = %ClampToQuantum.exit16.i2282, %if.end.i19.i2284, %if.end3.i22.i2288
  %retval.0.i23.i2289 = phi i32 [ %phi.cast25.i2287, %if.end3.i22.i2288 ], [ 0, %ClampToQuantum.exit16.i2282 ], [ 65535, %if.end.i19.i2284 ]
  %div60.i2290 = fdiv double %154, 6.553500e+04, !dbg !2154
  %mean63.i2291 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 7, !dbg !2155
  %155 = load double, ptr %mean63.i2291, align 8, !dbg !2155, !tbaa !1887
  %mul64.i2292 = fmul double %div496, %155, !dbg !2156
  %div68.i2293 = fdiv double %155, 6.553500e+04, !dbg !2157
  %standard_deviation71.i2294 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 9, !dbg !2158
  %156 = load double, ptr %standard_deviation71.i2294, align 8, !dbg !2158, !tbaa !1891
  %mul72.i2295 = fmul double %div496, %156, !dbg !2159
  %div76.i2296 = fdiv double %156, 6.553500e+04, !dbg !2160
  %kurtosis79.i2297 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 10, !dbg !2161
  %157 = load double, ptr %kurtosis79.i2297, align 8, !dbg !2161, !tbaa !1895
  %skewness82.i2298 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 1, i32 11, !dbg !2162
  %158 = load double, ptr %skewness82.i2298, align 8, !dbg !2162, !tbaa !1897
  %call83.i2299 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i15.i2276, double noundef %div49.i2277, i32 noundef %retval.0.i23.i2289, double noundef %div60.i2290, double noundef %mul64.i2292, double noundef %div68.i2293, double noundef %mul72.i2295, double noundef %div76.i2296, double noundef %157, double noundef %158) #12, !dbg !2163
  call void @llvm.dbg.value(metadata i64 %call83.i2299, metadata !1849, metadata !DIExpression()) #12, !dbg !2127
  br label %sw.epilog498, !dbg !2164

sw.epilog498:                                     ; preds = %PrintChannelStatistics.exit2300, %PrintChannelStatistics.exit2264, %PrintChannelStatistics.exit2120
  %159 = load i32, ptr %matte454, align 8, !dbg !2165, !tbaa !1325
  %cmp500.not = icmp eq i32 %159, 0, !dbg !2167
  br i1 %cmp500.not, label %if.end505, label %if.then502, !dbg !2168

if.then502:                                       ; preds = %sw.epilog498
  %div503 = fdiv double 1.000000e+00, %scale.1.ph, !dbg !2169
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !2170
  call void @llvm.dbg.value(metadata i32 8, metadata !1845, metadata !DIExpression()) #12, !dbg !2170
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !1846, metadata !DIExpression()) #12, !dbg !2170
  call void @llvm.dbg.value(metadata double %div503, metadata !1847, metadata !DIExpression()) #12, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !2170
  %maxima.i2301 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 8, i32 2, !dbg !2172
  %160 = load double, ptr %maxima.i2301, align 8, !dbg !2172, !tbaa !1384
  %sub.i = fsub double 6.553500e+04, %160, !dbg !2175
  %mul.i = fmul double %div503, %sub.i, !dbg !2176
  %conv.i2302 = fptrunc double %mul.i to float, !dbg !2177
  call void @llvm.dbg.value(metadata float %conv.i2302, metadata !1855, metadata !DIExpression()) #12, !dbg !2178
  %cmp.i.i = fcmp ugt float %conv.i2302, 0.000000e+00, !dbg !2180
  br i1 %cmp.i.i, label %if.end.i.i, label %ClampToQuantum.exit.i, !dbg !2181

if.end.i.i:                                       ; preds = %if.then502
  %cmp1.i.i = fcmp ult float %conv.i2302, 6.553500e+04, !dbg !2182
  br i1 %cmp1.i.i, label %if.end3.i.i, label %ClampToQuantum.exit.i, !dbg !2183

if.end3.i.i:                                      ; preds = %if.end.i.i
  %add.i.i = fadd float %conv.i2302, 5.000000e-01, !dbg !2184
  %conv.i.i = fptoui float %add.i.i to i16, !dbg !2185
  %phi.cast26.i = zext i16 %conv.i.i to i32, !dbg !2186
  br label %ClampToQuantum.exit.i, !dbg !2186

ClampToQuantum.exit.i:                            ; preds = %if.end3.i.i, %if.end.i.i, %if.then502
  %retval.0.i.i = phi i32 [ %phi.cast26.i, %if.end3.i.i ], [ 0, %if.then502 ], [ 65535, %if.end.i.i ]
  %div.i = fdiv double %sub.i, 6.553500e+04, !dbg !2187
  %minima.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 8, i32 1, !dbg !2188
  %161 = load double, ptr %minima.i, align 8, !dbg !2188, !tbaa !1295
  %sub8.i = fsub double 6.553500e+04, %161, !dbg !2189
  %mul9.i = fmul double %div503, %sub8.i, !dbg !2190
  %conv10.i = fptrunc double %mul9.i to float, !dbg !2191
  call void @llvm.dbg.value(metadata float %conv10.i, metadata !1855, metadata !DIExpression()) #12, !dbg !2192
  %cmp.i1.i = fcmp ugt float %conv10.i, 0.000000e+00, !dbg !2194
  br i1 %cmp.i1.i, label %if.end.i3.i, label %PrintChannelStatistics.exit2304, !dbg !2195

if.end.i3.i:                                      ; preds = %ClampToQuantum.exit.i
  %cmp1.i2.i = fcmp ult float %conv10.i, 6.553500e+04, !dbg !2196
  br i1 %cmp1.i2.i, label %if.end3.i6.i, label %PrintChannelStatistics.exit2304, !dbg !2197

if.end3.i6.i:                                     ; preds = %if.end.i3.i
  %add.i4.i = fadd float %conv10.i, 5.000000e-01, !dbg !2198
  %conv.i5.i = fptoui float %add.i4.i to i16, !dbg !2199
  %phi.cast27.i = zext i16 %conv.i5.i to i32, !dbg !2200
  br label %PrintChannelStatistics.exit2304, !dbg !2200

PrintChannelStatistics.exit2304:                  ; preds = %ClampToQuantum.exit.i, %if.end.i3.i, %if.end3.i6.i
  %retval.0.i7.i = phi i32 [ %phi.cast27.i, %if.end3.i6.i ], [ 0, %ClampToQuantum.exit.i ], [ 65535, %if.end.i3.i ]
  %div17.i = fdiv double %sub8.i, 6.553500e+04, !dbg !2201
  %mean.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 8, i32 7, !dbg !2202
  %162 = load double, ptr %mean.i, align 8, !dbg !2202, !tbaa !1887
  %sub20.i = fsub double 6.553500e+04, %162, !dbg !2203
  %mul21.i = fmul double %div503, %sub20.i, !dbg !2204
  %div26.i = fdiv double %sub20.i, 6.553500e+04, !dbg !2205
  %standard_deviation.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 8, i32 9, !dbg !2206
  %163 = load double, ptr %standard_deviation.i, align 8, !dbg !2206, !tbaa !1891
  %mul29.i = fmul double %div503, %163, !dbg !2207
  %div33.i = fdiv double %163, 6.553500e+04, !dbg !2208
  %kurtosis.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 8, i32 10, !dbg !2209
  %164 = load double, ptr %kurtosis.i, align 8, !dbg !2209, !tbaa !1895
  %skewness.i = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 8, i32 11, !dbg !2210
  %165 = load double, ptr %skewness.i, align 8, !dbg !2210, !tbaa !1897
  %call38.i = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i.i, double noundef %div.i, i32 noundef %retval.0.i7.i, double noundef %div17.i, double noundef %mul21.i, double noundef %div26.i, double noundef %mul29.i, double noundef %div33.i, double noundef %164, double noundef %165) #12, !dbg !2211
  call void @llvm.dbg.value(metadata i64 %call38.i, metadata !1849, metadata !DIExpression()) #12, !dbg !2170
  br label %if.end505, !dbg !2212

if.end505:                                        ; preds = %PrintChannelStatistics.exit2304, %sw.epilog498
  %cmp506.not = icmp eq i32 %spec.select2043, 2, !dbg !2213
  br i1 %cmp506.not, label %if.end514, label %if.then508, !dbg !2215

if.then508:                                       ; preds = %if.end505
  %call509 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.57) #12, !dbg !2216
  %div510 = fdiv double 1.000000e+00, %scale.1.ph, !dbg !2218
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1836, metadata !DIExpression()) #12, !dbg !2219
  call void @llvm.dbg.value(metadata i32 47, metadata !1845, metadata !DIExpression()) #12, !dbg !2219
  call void @llvm.dbg.value(metadata ptr @.str.58, metadata !1846, metadata !DIExpression()) #12, !dbg !2219
  call void @llvm.dbg.value(metadata double %div510, metadata !1847, metadata !DIExpression()) #12, !dbg !2219
  call void @llvm.dbg.value(metadata ptr %call379, metadata !1848, metadata !DIExpression()) #12, !dbg !2219
  %minima41.i2305 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 47, i32 1, !dbg !2221
  %166 = load double, ptr %minima41.i2305, align 8, !dbg !2221, !tbaa !1295
  %mul42.i2306 = fmul double %div510, %166, !dbg !2222
  %conv43.i2307 = fptrunc double %mul42.i2306 to float, !dbg !2223
  call void @llvm.dbg.value(metadata float %conv43.i2307, metadata !1855, metadata !DIExpression()) #12, !dbg !2224
  %cmp.i9.i2308 = fcmp ugt float %conv43.i2307, 0.000000e+00, !dbg !2226
  br i1 %cmp.i9.i2308, label %if.end.i11.i2311, label %ClampToQuantum.exit16.i2322, !dbg !2227

if.end.i11.i2311:                                 ; preds = %if.then508
  %cmp1.i10.i2310 = fcmp ult float %conv43.i2307, 6.553500e+04, !dbg !2228
  br i1 %cmp1.i10.i2310, label %if.end3.i14.i2315, label %ClampToQuantum.exit16.i2322, !dbg !2229

if.end3.i14.i2315:                                ; preds = %if.end.i11.i2311
  %add.i12.i2312 = fadd float %conv43.i2307, 5.000000e-01, !dbg !2230
  %conv.i13.i2313 = fptoui float %add.i12.i2312 to i16, !dbg !2231
  %phi.cast.i2314 = zext i16 %conv.i13.i2313 to i32, !dbg !2232
  br label %ClampToQuantum.exit16.i2322, !dbg !2232

ClampToQuantum.exit16.i2322:                      ; preds = %if.end3.i14.i2315, %if.end.i11.i2311, %if.then508
  %retval.0.i15.i2316 = phi i32 [ %phi.cast.i2314, %if.end3.i14.i2315 ], [ 0, %if.then508 ], [ 65535, %if.end.i11.i2311 ]
  %div49.i2317 = fdiv double %166, 6.553500e+04, !dbg !2233
  %maxima52.i2318 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 47, i32 2, !dbg !2234
  %167 = load double, ptr %maxima52.i2318, align 8, !dbg !2234, !tbaa !1384
  %mul53.i2319 = fmul double %div510, %167, !dbg !2235
  %conv54.i2320 = fptrunc double %mul53.i2319 to float, !dbg !2236
  call void @llvm.dbg.value(metadata float %conv54.i2320, metadata !1855, metadata !DIExpression()) #12, !dbg !2237
  %cmp.i17.i2321 = fcmp ugt float %conv54.i2320, 0.000000e+00, !dbg !2239
  br i1 %cmp.i17.i2321, label %if.end.i19.i2324, label %PrintChannelStatistics.exit2340, !dbg !2240

if.end.i19.i2324:                                 ; preds = %ClampToQuantum.exit16.i2322
  %cmp1.i18.i2323 = fcmp ult float %conv54.i2320, 6.553500e+04, !dbg !2241
  br i1 %cmp1.i18.i2323, label %if.end3.i22.i2328, label %PrintChannelStatistics.exit2340, !dbg !2242

if.end3.i22.i2328:                                ; preds = %if.end.i19.i2324
  %add.i20.i2325 = fadd float %conv54.i2320, 5.000000e-01, !dbg !2243
  %conv.i21.i2326 = fptoui float %add.i20.i2325 to i16, !dbg !2244
  %phi.cast25.i2327 = zext i16 %conv.i21.i2326 to i32, !dbg !2245
  br label %PrintChannelStatistics.exit2340, !dbg !2245

PrintChannelStatistics.exit2340:                  ; preds = %ClampToQuantum.exit16.i2322, %if.end.i19.i2324, %if.end3.i22.i2328
  %retval.0.i23.i2329 = phi i32 [ %phi.cast25.i2327, %if.end3.i22.i2328 ], [ 0, %ClampToQuantum.exit16.i2322 ], [ 65535, %if.end.i19.i2324 ]
  %div60.i2330 = fdiv double %167, 6.553500e+04, !dbg !2246
  %mean63.i2331 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 47, i32 7, !dbg !2247
  %168 = load double, ptr %mean63.i2331, align 8, !dbg !2247, !tbaa !1887
  %mul64.i2332 = fmul double %div510, %168, !dbg !2248
  %div68.i2333 = fdiv double %168, 6.553500e+04, !dbg !2249
  %standard_deviation71.i2334 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 47, i32 9, !dbg !2250
  %169 = load double, ptr %standard_deviation71.i2334, align 8, !dbg !2250, !tbaa !1891
  %mul72.i2335 = fmul double %div510, %169, !dbg !2251
  %div76.i2336 = fdiv double %169, 6.553500e+04, !dbg !2252
  %kurtosis79.i2337 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 47, i32 10, !dbg !2253
  %170 = load double, ptr %kurtosis79.i2337, align 8, !dbg !2253, !tbaa !1895
  %skewness82.i2338 = getelementptr inbounds %struct._ChannelStatistics, ptr %call379, i64 47, i32 11, !dbg !2254
  %171 = load double, ptr %skewness82.i2338, align 8, !dbg !2254, !tbaa !1897
  %call83.i2339 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.58, i32 noundef %retval.0.i15.i2316, double noundef %div49.i2317, i32 noundef %retval.0.i23.i2329, double noundef %div60.i2330, double noundef %mul64.i2332, double noundef %div68.i2333, double noundef %mul72.i2335, double noundef %div76.i2336, double noundef %170, double noundef %171) #12, !dbg !2255
  call void @llvm.dbg.value(metadata i64 %call83.i2339, metadata !1849, metadata !DIExpression()) #12, !dbg !2219
  br label %if.end514, !dbg !2256

if.end514:                                        ; preds = %if.end505, %PrintChannelStatistics.exit2340
  %call513 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call379) #12, !dbg !2257
  call void @llvm.dbg.value(metadata ptr %call513, metadata !1102, metadata !DIExpression()), !dbg !1191
  %cmp515.not = icmp eq ptr %channel_moments.0, null, !dbg !2258
  br i1 %cmp515.not, label %if.end548, label %if.then517, !dbg !2260

if.then517:                                       ; preds = %if.end514
  %172 = load i64, ptr %depth399, align 8, !dbg !2261, !tbaa !1557
  %notmask = shl nsw i64 -1, %172, !dbg !2263
  %sub519 = xor i64 %notmask, -1, !dbg !2263
  %conv520 = uitofp i64 %sub519 to double, !dbg !2264
  call void @llvm.dbg.value(metadata double %conv520, metadata !1113, metadata !DIExpression()), !dbg !1191
  %call521 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.59) #12, !dbg !2265
  switch i32 %spec.select2043, label %sw.default523 [
    i32 2, label %sw.bb532
    i32 12, label %sw.bb527
  ], !dbg !2266

sw.default523:                                    ; preds = %if.then517
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 1, ptr noundef nonnull @.str.6, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2267
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 2, ptr noundef nonnull @.str.7, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2270
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 4, ptr noundef nonnull @.str.8, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2271
  br label %sw.epilog534, !dbg !2272

sw.bb527:                                         ; preds = %if.then517
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 1, ptr noundef nonnull @.str.9, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2273
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 2, ptr noundef nonnull @.str.10, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2275
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 4, ptr noundef nonnull @.str.11, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2276
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 32, ptr noundef nonnull @.str.12, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2277
  br label %sw.epilog534, !dbg !2278

sw.bb532:                                         ; preds = %if.then517
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 1, ptr noundef nonnull @.str.13, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2279
  br label %sw.epilog534, !dbg !2281

sw.epilog534:                                     ; preds = %sw.bb532, %sw.bb527, %sw.default523
  %173 = load i32, ptr %matte454, align 8, !dbg !2282, !tbaa !1325
  %cmp536.not = icmp eq i32 %173, 0, !dbg !2284
  br i1 %cmp536.not, label %if.end540, label %if.then538, !dbg !2285

if.then538:                                       ; preds = %sw.epilog534
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 8, ptr noundef nonnull @.str.14, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2286
  br label %if.end540, !dbg !2287

if.end540:                                        ; preds = %if.then538, %sw.epilog534
  br i1 %cmp506.not, label %if.end546, label %if.then543, !dbg !2288

if.then543:                                       ; preds = %if.end540
  %call544 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.60) #12, !dbg !2289
  call fastcc void @PrintChannelMoments(ptr noundef %spec.select, i32 noundef 47, ptr noundef nonnull @.str.58, double noundef %conv520, ptr noundef nonnull %channel_moments.0), !dbg !2292
  br label %if.end546, !dbg !2293

if.end546:                                        ; preds = %if.then543, %if.end540
  %call547 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %channel_moments.0) #12, !dbg !2294
  call void @llvm.dbg.value(metadata ptr %call547, metadata !1100, metadata !DIExpression()), !dbg !1191
  br label %if.end548, !dbg !2295

if.end548:                                        ; preds = %if.end546, %if.end514
  %cmp549.not = icmp eq ptr %channel_phash.0, null, !dbg !2296
  br i1 %cmp549.not, label %if.end563, label %if.then551, !dbg !2298

if.then551:                                       ; preds = %if.end548
  %call552 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.61) #12, !dbg !2299
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2301, metadata !DIExpression()) #12, !dbg !2313
  call void @llvm.dbg.value(metadata i32 1, metadata !2308, metadata !DIExpression()) #12, !dbg !2313
  call void @llvm.dbg.value(metadata ptr @.str.62, metadata !2309, metadata !DIExpression()) #12, !dbg !2313
  call void @llvm.dbg.value(metadata ptr %channel_phash.0, metadata !2310, metadata !DIExpression()) #12, !dbg !2313
  %call.i2341 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.62) #12, !dbg !2315
  call void @llvm.dbg.value(metadata i64 0, metadata !2311, metadata !DIExpression()) #12, !dbg !2313
  call void @llvm.dbg.value(metadata i64 poison, metadata !2312, metadata !DIExpression()) #12, !dbg !2313
  %arrayidx.i = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %channel_phash.0, i64 1
  br label %for.body.i2347, !dbg !2316

for.body.i2347:                                   ; preds = %for.body.i2347, %if.then551
  %i.01.i = phi i64 [ 0, %if.then551 ], [ %inc.i2345, %for.body.i2347 ]
  call void @llvm.dbg.value(metadata i64 %i.01.i, metadata !2311, metadata !DIExpression()) #12, !dbg !2313
  %conv.i2342 = sitofp i64 %i.01.i to double, !dbg !2318
  %add.i = fadd double %conv.i2342, 1.000000e+00, !dbg !2320
  %call1.i2343 = call i32 @GetMagickPrecision() #12, !dbg !2321
  %arrayidx2.i = getelementptr inbounds [32 x double], ptr %arrayidx.i, i64 0, i64 %i.01.i, !dbg !2322
  %174 = load double, ptr %arrayidx2.i, align 8, !dbg !2322, !tbaa !2323
  %call3.i = call i32 @GetMagickPrecision() #12, !dbg !2324
  %arrayidx6.i = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %channel_phash.0, i64 1, i32 1, i64 %i.01.i, !dbg !2325
  %175 = load double, ptr %arrayidx6.i, align 8, !dbg !2325, !tbaa !2323
  %call7.i2344 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.201, double noundef %add.i, i32 noundef %call1.i2343, double noundef %174, i32 noundef %call3.i, double noundef %175) #12, !dbg !2326
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 %call7.i2344), metadata !2312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #12, !dbg !2313
  %inc.i2345 = add nuw nsw i64 %i.01.i, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i64 poison, metadata !2312, metadata !DIExpression()) #12, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %inc.i2345, metadata !2311, metadata !DIExpression()) #12, !dbg !2313
  %exitcond.not.i2346 = icmp eq i64 %inc.i2345, 7, !dbg !2328
  br i1 %exitcond.not.i2346, label %PrintChannelPerceptualHash.exit, label %for.body.i2347, !dbg !2316, !llvm.loop !2329

PrintChannelPerceptualHash.exit:                  ; preds = %for.body.i2347
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2301, metadata !DIExpression()) #12, !dbg !2331
  call void @llvm.dbg.value(metadata i32 2, metadata !2308, metadata !DIExpression()) #12, !dbg !2331
  call void @llvm.dbg.value(metadata ptr @.str.63, metadata !2309, metadata !DIExpression()) #12, !dbg !2331
  call void @llvm.dbg.value(metadata ptr %channel_phash.0, metadata !2310, metadata !DIExpression()) #12, !dbg !2331
  %call.i2348 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.63) #12, !dbg !2333
  call void @llvm.dbg.value(metadata i64 0, metadata !2311, metadata !DIExpression()) #12, !dbg !2331
  call void @llvm.dbg.value(metadata i64 poison, metadata !2312, metadata !DIExpression()) #12, !dbg !2331
  %arrayidx.i2349 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %channel_phash.0, i64 2
  br label %for.body.i2360, !dbg !2334

for.body.i2360:                                   ; preds = %for.body.i2360, %PrintChannelPerceptualHash.exit
  %i.01.i2350 = phi i64 [ 0, %PrintChannelPerceptualHash.exit ], [ %inc.i2358, %for.body.i2360 ]
  call void @llvm.dbg.value(metadata i64 %i.01.i2350, metadata !2311, metadata !DIExpression()) #12, !dbg !2331
  %conv.i2351 = sitofp i64 %i.01.i2350 to double, !dbg !2335
  %add.i2352 = fadd double %conv.i2351, 1.000000e+00, !dbg !2336
  %call1.i2353 = call i32 @GetMagickPrecision() #12, !dbg !2337
  %arrayidx2.i2354 = getelementptr inbounds [32 x double], ptr %arrayidx.i2349, i64 0, i64 %i.01.i2350, !dbg !2338
  %176 = load double, ptr %arrayidx2.i2354, align 8, !dbg !2338, !tbaa !2323
  %call3.i2355 = call i32 @GetMagickPrecision() #12, !dbg !2339
  %arrayidx6.i2356 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %channel_phash.0, i64 2, i32 1, i64 %i.01.i2350, !dbg !2340
  %177 = load double, ptr %arrayidx6.i2356, align 8, !dbg !2340, !tbaa !2323
  %call7.i2357 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.201, double noundef %add.i2352, i32 noundef %call1.i2353, double noundef %176, i32 noundef %call3.i2355, double noundef %177) #12, !dbg !2341
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 %call7.i2357), metadata !2312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #12, !dbg !2331
  %inc.i2358 = add nuw nsw i64 %i.01.i2350, 1, !dbg !2342
  call void @llvm.dbg.value(metadata i64 poison, metadata !2312, metadata !DIExpression()) #12, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %inc.i2358, metadata !2311, metadata !DIExpression()) #12, !dbg !2331
  %exitcond.not.i2359 = icmp eq i64 %inc.i2358, 7, !dbg !2343
  br i1 %exitcond.not.i2359, label %PrintChannelPerceptualHash.exit2361, label %for.body.i2360, !dbg !2334, !llvm.loop !2344

PrintChannelPerceptualHash.exit2361:              ; preds = %for.body.i2360
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2301, metadata !DIExpression()) #12, !dbg !2346
  call void @llvm.dbg.value(metadata i32 4, metadata !2308, metadata !DIExpression()) #12, !dbg !2346
  call void @llvm.dbg.value(metadata ptr @.str.64, metadata !2309, metadata !DIExpression()) #12, !dbg !2346
  call void @llvm.dbg.value(metadata ptr %channel_phash.0, metadata !2310, metadata !DIExpression()) #12, !dbg !2346
  %call.i2362 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.64) #12, !dbg !2348
  call void @llvm.dbg.value(metadata i64 0, metadata !2311, metadata !DIExpression()) #12, !dbg !2346
  call void @llvm.dbg.value(metadata i64 poison, metadata !2312, metadata !DIExpression()) #12, !dbg !2346
  %arrayidx.i2363 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %channel_phash.0, i64 4
  br label %for.body.i2374, !dbg !2349

for.body.i2374:                                   ; preds = %for.body.i2374, %PrintChannelPerceptualHash.exit2361
  %i.01.i2364 = phi i64 [ 0, %PrintChannelPerceptualHash.exit2361 ], [ %inc.i2372, %for.body.i2374 ]
  call void @llvm.dbg.value(metadata i64 %i.01.i2364, metadata !2311, metadata !DIExpression()) #12, !dbg !2346
  %conv.i2365 = sitofp i64 %i.01.i2364 to double, !dbg !2350
  %add.i2366 = fadd double %conv.i2365, 1.000000e+00, !dbg !2351
  %call1.i2367 = call i32 @GetMagickPrecision() #12, !dbg !2352
  %arrayidx2.i2368 = getelementptr inbounds [32 x double], ptr %arrayidx.i2363, i64 0, i64 %i.01.i2364, !dbg !2353
  %178 = load double, ptr %arrayidx2.i2368, align 8, !dbg !2353, !tbaa !2323
  %call3.i2369 = call i32 @GetMagickPrecision() #12, !dbg !2354
  %arrayidx6.i2370 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %channel_phash.0, i64 4, i32 1, i64 %i.01.i2364, !dbg !2355
  %179 = load double, ptr %arrayidx6.i2370, align 8, !dbg !2355, !tbaa !2323
  %call7.i2371 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.201, double noundef %add.i2366, i32 noundef %call1.i2367, double noundef %178, i32 noundef %call3.i2369, double noundef %179) #12, !dbg !2356
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 %call7.i2371), metadata !2312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #12, !dbg !2346
  %inc.i2372 = add nuw nsw i64 %i.01.i2364, 1, !dbg !2357
  call void @llvm.dbg.value(metadata i64 poison, metadata !2312, metadata !DIExpression()) #12, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %inc.i2372, metadata !2311, metadata !DIExpression()) #12, !dbg !2346
  %exitcond.not.i2373 = icmp eq i64 %inc.i2372, 7, !dbg !2358
  br i1 %exitcond.not.i2373, label %PrintChannelPerceptualHash.exit2375, label %for.body.i2374, !dbg !2349, !llvm.loop !2359

PrintChannelPerceptualHash.exit2375:              ; preds = %for.body.i2374
  %180 = load i32, ptr %matte454, align 8, !dbg !2361, !tbaa !1325
  %cmp557.not = icmp eq i32 %180, 0, !dbg !2363
  br i1 %cmp557.not, label %if.end561, label %if.then559, !dbg !2364

if.then559:                                       ; preds = %PrintChannelPerceptualHash.exit2375
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2301, metadata !DIExpression()) #12, !dbg !2365
  call void @llvm.dbg.value(metadata i32 8, metadata !2308, metadata !DIExpression()) #12, !dbg !2365
  call void @llvm.dbg.value(metadata ptr @.str.65, metadata !2309, metadata !DIExpression()) #12, !dbg !2365
  call void @llvm.dbg.value(metadata ptr %channel_phash.0, metadata !2310, metadata !DIExpression()) #12, !dbg !2365
  %call.i2376 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.65) #12, !dbg !2367
  call void @llvm.dbg.value(metadata i64 0, metadata !2311, metadata !DIExpression()) #12, !dbg !2365
  call void @llvm.dbg.value(metadata i64 poison, metadata !2312, metadata !DIExpression()) #12, !dbg !2365
  %arrayidx.i2377 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %channel_phash.0, i64 8
  br label %for.body.i2388, !dbg !2368

for.body.i2388:                                   ; preds = %for.body.i2388, %if.then559
  %i.01.i2378 = phi i64 [ 0, %if.then559 ], [ %inc.i2386, %for.body.i2388 ]
  call void @llvm.dbg.value(metadata i64 %i.01.i2378, metadata !2311, metadata !DIExpression()) #12, !dbg !2365
  %conv.i2379 = sitofp i64 %i.01.i2378 to double, !dbg !2369
  %add.i2380 = fadd double %conv.i2379, 1.000000e+00, !dbg !2370
  %call1.i2381 = call i32 @GetMagickPrecision() #12, !dbg !2371
  %arrayidx2.i2382 = getelementptr inbounds [32 x double], ptr %arrayidx.i2377, i64 0, i64 %i.01.i2378, !dbg !2372
  %181 = load double, ptr %arrayidx2.i2382, align 8, !dbg !2372, !tbaa !2323
  %call3.i2383 = call i32 @GetMagickPrecision() #12, !dbg !2373
  %arrayidx6.i2384 = getelementptr inbounds %struct._ChannelPerceptualHash, ptr %channel_phash.0, i64 8, i32 1, i64 %i.01.i2378, !dbg !2374
  %182 = load double, ptr %arrayidx6.i2384, align 8, !dbg !2374, !tbaa !2323
  %call7.i2385 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.201, double noundef %add.i2380, i32 noundef %call1.i2381, double noundef %181, i32 noundef %call3.i2383, double noundef %182) #12, !dbg !2375
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 %call7.i2385), metadata !2312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)) #12, !dbg !2365
  %inc.i2386 = add nuw nsw i64 %i.01.i2378, 1, !dbg !2376
  call void @llvm.dbg.value(metadata i64 poison, metadata !2312, metadata !DIExpression()) #12, !dbg !2365
  call void @llvm.dbg.value(metadata i64 %inc.i2386, metadata !2311, metadata !DIExpression()) #12, !dbg !2365
  %exitcond.not.i2387 = icmp eq i64 %inc.i2386, 7, !dbg !2377
  br i1 %exitcond.not.i2387, label %if.end561, label %for.body.i2388, !dbg !2368, !llvm.loop !2378

if.end561:                                        ; preds = %for.body.i2388, %PrintChannelPerceptualHash.exit2375
  %call562 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %channel_phash.0) #12, !dbg !2380
  call void @llvm.dbg.value(metadata ptr %call562, metadata !1101, metadata !DIExpression()), !dbg !1191
  br label %if.end563, !dbg !2381

if.end563:                                        ; preds = %if.end561, %if.end548
  %cmp564.not = icmp eq ptr %channel_features.0, null, !dbg !2382
  br i1 %cmp564.not, label %if.then591, label %if.then566, !dbg !2384

if.then566:                                       ; preds = %if.end563
  %call567 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.66) #12, !dbg !2385
  switch i32 %spec.select2043, label %sw.default569 [
    i32 2, label %sw.bb578
    i32 12, label %sw.bb573
  ], !dbg !2387

sw.default569:                                    ; preds = %if.then566
  call fastcc void @PrintChannelFeatures(ptr noundef %spec.select, i32 noundef 1, ptr noundef nonnull @.str.6, ptr noundef nonnull %channel_features.0), !dbg !2388
  call fastcc void @PrintChannelFeatures(ptr noundef %spec.select, i32 noundef 2, ptr noundef nonnull @.str.7, ptr noundef nonnull %channel_features.0), !dbg !2391
  call fastcc void @PrintChannelFeatures(ptr noundef %spec.select, i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef nonnull %channel_features.0), !dbg !2392
  br label %sw.epilog580, !dbg !2393

sw.bb573:                                         ; preds = %if.then566
  call fastcc void @PrintChannelFeatures(ptr noundef %spec.select, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull %channel_features.0), !dbg !2394
  call fastcc void @PrintChannelFeatures(ptr noundef %spec.select, i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull %channel_features.0), !dbg !2396
  call fastcc void @PrintChannelFeatures(ptr noundef %spec.select, i32 noundef 4, ptr noundef nonnull @.str.11, ptr noundef nonnull %channel_features.0), !dbg !2397
  call fastcc void @PrintChannelFeatures(ptr noundef %spec.select, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef nonnull %channel_features.0), !dbg !2398
  br label %sw.epilog580, !dbg !2399

sw.bb578:                                         ; preds = %if.then566
  call fastcc void @PrintChannelFeatures(ptr noundef %spec.select, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull %channel_features.0), !dbg !2400
  br label %sw.epilog580, !dbg !2402

sw.epilog580:                                     ; preds = %sw.bb578, %sw.bb573, %sw.default569
  %183 = load i32, ptr %matte454, align 8, !dbg !2403, !tbaa !1325
  %cmp582.not = icmp eq i32 %183, 0, !dbg !2405
  br i1 %cmp582.not, label %if.end586, label %if.then584, !dbg !2406

if.then584:                                       ; preds = %sw.epilog580
  call fastcc void @PrintChannelFeatures(ptr noundef %spec.select, i32 noundef 8, ptr noundef nonnull @.str.14, ptr noundef nonnull %channel_features.0), !dbg !2407
  br label %if.end586, !dbg !2408

if.end586:                                        ; preds = %if.then584, %sw.epilog580
  %call587 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %channel_features.0) #12, !dbg !2409
  call void @llvm.dbg.value(metadata ptr %call587, metadata !1099, metadata !DIExpression()), !dbg !1191
  br label %if.then591, !dbg !2410

if.then591:                                       ; preds = %if.end563, %if.end586
  %184 = load i32, ptr %colorspace370, align 4, !dbg !2411, !tbaa !1326
  %cmp593 = icmp eq i32 %184, 12, !dbg !2413
  br i1 %cmp593, label %if.then595, label %if.end601, !dbg !2414

if.then595:                                       ; preds = %if.then591
  %call596 = call i32 @GetMagickPrecision() #12, !dbg !2415
  %call597 = call double @GetImageTotalInkDensity(ptr noundef nonnull %image) #12, !dbg !2416
  %mul598 = fmul double %call597, 1.000000e+02, !dbg !2417
  %div599 = fdiv double %mul598, 6.553500e+04, !dbg !2418
  %call600 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.67, i32 noundef %call596, double noundef %div599) #12, !dbg !2419
  br label %if.end601, !dbg !2420

if.end601:                                        ; preds = %if.then595, %if.then591
  call void @llvm.dbg.value(metadata i64 0, metadata !1119, metadata !DIExpression()), !dbg !1191
  %185 = load i32, ptr %matte454, align 8, !dbg !2421, !tbaa !1325
  %cmp603.not = icmp eq i32 %185, 0, !dbg !2422
  br i1 %cmp603.not, label %if.end650, label %for.cond.preheader, !dbg !2423

for.cond.preheader:                               ; preds = %if.end601
  call void @llvm.dbg.value(metadata ptr null, metadata !1139, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr null, metadata !1134, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 0, metadata !1121, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 0, metadata !1119, metadata !DIExpression()), !dbg !1191
  %186 = load i64, ptr %rows300, align 8, !dbg !2425, !tbaa !1306
  %cmp6072489 = icmp sgt i64 %186, 0, !dbg !2428
  br i1 %cmp6072489, label %for.body.preheader, label %for.end633, !dbg !2429

for.body.preheader:                               ; preds = %for.cond.preheader
  %.pre2533 = load i64, ptr %columns298, align 8, !dbg !2430, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr null, metadata !1134, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 0, metadata !1121, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 0, metadata !1119, metadata !DIExpression()), !dbg !1191
  %call6102565 = call ptr @GetVirtualPixels(ptr noundef nonnull %image, i64 noundef 0, i64 noundef 0, i64 noundef %.pre2533, i64 noundef 1, ptr noundef nonnull %exception237) #12, !dbg !2432
  call void @llvm.dbg.value(metadata ptr %call6102565, metadata !1139, metadata !DIExpression()), !dbg !2424
  %cmp6112566 = icmp eq ptr %call6102565, null, !dbg !2433
  br i1 %cmp6112566, label %for.end633, label %if.end614, !dbg !2435

for.body:                                         ; preds = %for.inc631
  call void @llvm.dbg.value(metadata ptr %call615, metadata !1134, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %inc632, metadata !1121, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %x.1.lcssa, metadata !1119, metadata !DIExpression()), !dbg !1191
  %call610 = call ptr @GetVirtualPixels(ptr noundef nonnull %image, i64 noundef 0, i64 noundef %inc632, i64 noundef %187, i64 noundef 1, ptr noundef nonnull %exception237) #12, !dbg !2432
  call void @llvm.dbg.value(metadata ptr %call610, metadata !1139, metadata !DIExpression()), !dbg !2424
  %cmp611 = icmp eq ptr %call610, null, !dbg !2433
  br i1 %cmp611, label %for.end633, label %if.end614, !dbg !2435, !llvm.loop !2436

if.end614:                                        ; preds = %for.body.preheader, %for.body
  %call6102569 = phi ptr [ %call610, %for.body ], [ %call6102565, %for.body.preheader ]
  %y.024912567 = phi i64 [ %inc632, %for.body ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %y.024912567, metadata !1121, metadata !DIExpression()), !dbg !1191
  %call615 = call ptr @GetVirtualIndexQueue(ptr noundef nonnull %image) #12, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %call615, metadata !1134, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 0, metadata !1119, metadata !DIExpression()), !dbg !1191
  %187 = load i64, ptr %columns298, align 8, !tbaa !1309
  call void @llvm.dbg.value(metadata ptr %call6102569, metadata !1139, metadata !DIExpression()), !dbg !2424
  %cmp6182485 = icmp sgt i64 %187, 0, !dbg !2439
  br i1 %cmp6182485, label %for.body620.preheader, label %for.inc631, !dbg !2442

for.body620.preheader:                            ; preds = %if.end614
  %188 = shl i64 %187, 3, !dbg !2442
  %uglygep = getelementptr i8, ptr %call6102569, i64 %188, !dbg !2442
  br label %for.body620, !dbg !2442

for.body620:                                      ; preds = %for.body620.preheader, %if.end625
  %p.12487 = phi ptr [ %incdec.ptr, %if.end625 ], [ %call6102569, %for.body620.preheader ]
  %x.12486 = phi i64 [ %inc, %if.end625 ], [ 0, %for.body620.preheader ]
  call void @llvm.dbg.value(metadata ptr %p.12487, metadata !1139, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %x.12486, metadata !1119, metadata !DIExpression()), !dbg !1191
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.12487, i64 0, i32 3, !dbg !2443
  %189 = load i16, ptr %opacity, align 2, !dbg !2443, !tbaa !1358
  %cmp622 = icmp eq i16 %189, -1, !dbg !2446
  br i1 %cmp622, label %for.end633, label %if.end625, !dbg !2447

if.end625:                                        ; preds = %for.body620
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.12487, i64 1, !dbg !2448
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1139, metadata !DIExpression()), !dbg !2424
  %inc = add nuw nsw i64 %x.12486, 1, !dbg !2449
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1119, metadata !DIExpression()), !dbg !1191
  %exitcond.not = icmp eq i64 %inc, %187, !dbg !2439
  br i1 %exitcond.not, label %for.inc631, label %for.body620, !dbg !2442, !llvm.loop !2450

for.inc631:                                       ; preds = %if.end625, %if.end614
  %x.1.lcssa = phi i64 [ 0, %if.end614 ], [ %187, %if.end625 ], !dbg !2452
  %p.1.lcssa = phi ptr [ %call6102569, %if.end614 ], [ %uglygep, %if.end625 ], !dbg !2453
  %inc632 = add nuw nsw i64 %y.024912567, 1, !dbg !2454
  call void @llvm.dbg.value(metadata ptr %p.1.lcssa, metadata !1139, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %call615, metadata !1134, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %inc632, metadata !1121, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 %x.1.lcssa, metadata !1119, metadata !DIExpression()), !dbg !1191
  %190 = load i64, ptr %rows300, align 8, !dbg !2425, !tbaa !1306
  %cmp607 = icmp slt i64 %inc632, %190, !dbg !2428
  br i1 %cmp607, label %for.body, label %for.end633, !dbg !2429, !llvm.loop !2436

for.end633:                                       ; preds = %for.body, %for.inc631, %for.body620, %for.body.preheader, %for.cond.preheader
  %y.02456 = phi i64 [ 0, %for.cond.preheader ], [ 0, %for.body.preheader ], [ %y.024912567, %for.body620 ], [ %inc632, %for.inc631 ], [ %inc632, %for.body ]
  %x.2 = phi i64 [ 0, %for.cond.preheader ], [ 0, %for.body.preheader ], [ %x.12486, %for.body620 ], [ %x.1.lcssa, %for.inc631 ], [ %x.1.lcssa, %for.body ], !dbg !2455
  %indexes.1 = phi ptr [ null, %for.cond.preheader ], [ null, %for.body.preheader ], [ %call615, %for.body620 ], [ %call615, %for.inc631 ], [ %call615, %for.body ], !dbg !2424
  %p.2 = phi ptr [ null, %for.cond.preheader ], [ null, %for.body.preheader ], [ %p.12487, %for.body620 ], [ %p.1.lcssa, %for.inc631 ], [ null, %for.body ], !dbg !2424
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !1139, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata ptr %indexes.1, metadata !1134, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i64 %x.2, metadata !1119, metadata !DIExpression()), !dbg !1191
  %191 = load i64, ptr %columns298, align 8, !dbg !2456, !tbaa !1309
  %cmp635 = icmp slt i64 %x.2, %191, !dbg !2457
  br i1 %cmp635, label %if.then641, label %lor.lhs.false637, !dbg !2458

lor.lhs.false637:                                 ; preds = %for.end633
  %192 = load i64, ptr %rows300, align 8, !dbg !2459, !tbaa !1306
  %cmp639 = icmp slt i64 %y.02456, %192, !dbg !2460
  br i1 %cmp639, label %if.then641, label %if.end650, !dbg !2461

if.then641:                                       ; preds = %lor.lhs.false637, %for.end633
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tuple) #12, !dbg !2462
  call void @llvm.dbg.declare(metadata ptr %tuple, metadata !1140, metadata !DIExpression()), !dbg !2463
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel) #12, !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %pixel, metadata !1143, metadata !DIExpression()), !dbg !2465
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %pixel) #12, !dbg !2466
  %193 = getelementptr i8, ptr %image, i64 4, !dbg !2467
  %image.val2044 = load i32, ptr %193, align 4, !dbg !2467, !tbaa !1326
  call void @llvm.dbg.value(metadata ptr undef, metadata !2468, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata ptr %p.2, metadata !2475, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata !DIArgList(ptr %indexes.1, i64 %x.2), metadata !2476, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2478
  call void @llvm.dbg.value(metadata ptr %pixel, metadata !2477, metadata !DIExpression()), !dbg !2478
  %red.i2390 = getelementptr inbounds %struct._PixelPacket, ptr %p.2, i64 0, i32 2, !dbg !2480
  %194 = load i16, ptr %red.i2390, align 2, !dbg !2480, !tbaa !1333
  %conv.i2391 = uitofp i16 %194 to float, !dbg !2481
  %red1.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 5, !dbg !2482
  store float %conv.i2391, ptr %red1.i, align 8, !dbg !2483, !tbaa !2484
  %green.i2392 = getelementptr inbounds %struct._PixelPacket, ptr %p.2, i64 0, i32 1, !dbg !2487
  %195 = load i16, ptr %green.i2392, align 2, !dbg !2487, !tbaa !1341
  %conv2.i = uitofp i16 %195 to float, !dbg !2488
  %green3.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 6, !dbg !2489
  store float %conv2.i, ptr %green3.i, align 4, !dbg !2490, !tbaa !2491
  %196 = load i16, ptr %p.2, align 2, !dbg !2492, !tbaa !1349
  %conv4.i = uitofp i16 %196 to float, !dbg !2493
  %blue5.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 7, !dbg !2494
  store float %conv4.i, ptr %blue5.i, align 8, !dbg !2495, !tbaa !2496
  %opacity.i2393 = getelementptr inbounds %struct._PixelPacket, ptr %p.2, i64 0, i32 3, !dbg !2497
  %197 = load i16, ptr %opacity.i2393, align 2, !dbg !2497, !tbaa !1358
  %conv6.i = uitofp i16 %197 to float, !dbg !2498
  %opacity7.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 8, !dbg !2499
  store float %conv6.i, ptr %opacity7.i, align 4, !dbg !2500, !tbaa !2501
  %cmp.i = icmp eq i32 %image.val2044, 12, !dbg !2502
  %cmp9.i = icmp ne ptr %indexes.1, null
  %or.cond.i = and i1 %cmp9.i, %cmp.i, !dbg !2504
  br i1 %or.cond.i, label %cond.end.i2394, label %SetMagickPixelPacket.exit, !dbg !2504

cond.end.i2394:                                   ; preds = %if.then641
  %add.ptr = getelementptr inbounds i16, ptr %indexes.1, i64 %x.2, !dbg !2505
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2476, metadata !DIExpression()), !dbg !2478
  %198 = load i16, ptr %add.ptr, align 2, !dbg !2506, !tbaa !1366
  %conv14.i = uitofp i16 %198 to float, !dbg !2507
  %index15.i = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel, i64 0, i32 9, !dbg !2508
  store float %conv14.i, ptr %index15.i, align 8, !dbg !2509, !tbaa !2510
  br label %SetMagickPixelPacket.exit, !dbg !2511

SetMagickPixelPacket.exit:                        ; preds = %if.then641, %cond.end.i2394
  %call643 = call i32 @QueryMagickColorname(ptr noundef nonnull %image, ptr noundef nonnull %pixel, i32 noundef 1, ptr noundef nonnull %tuple, ptr noundef nonnull %exception237) #12, !dbg !2512
  %call645 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.68, ptr noundef nonnull %tuple) #12, !dbg !2513
  call void @GetColorTuple(ptr noundef nonnull %pixel, i32 noundef 1, ptr noundef nonnull %tuple) #12, !dbg !2514
  %call648 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.69, ptr noundef nonnull %tuple) #12, !dbg !2515
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel) #12, !dbg !2516
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tuple) #12, !dbg !2516
  br label %if.end650, !dbg !2517

if.end650:                                        ; preds = %lor.lhs.false637, %SetMagickPixelPacket.exit, %if.end601
  %call651 = call ptr @GetImageArtifact(ptr noundef nonnull %image, ptr noundef nonnull @.str.70) #12, !dbg !2518
  call void @llvm.dbg.value(metadata ptr %call651, metadata !1104, metadata !DIExpression()), !dbg !1191
  %call652 = call i32 @IsHistogramImage(ptr noundef nonnull %image, ptr noundef nonnull %exception237) #12, !dbg !2519
  %cmp653.not = icmp eq i32 %call652, 0, !dbg !2521
  br i1 %cmp653.not, label %if.else661, label %if.then655, !dbg !2522

if.then655:                                       ; preds = %if.end650
  %call656 = call i64 @GetNumberColors(ptr noundef nonnull %image, ptr noundef null, ptr noundef nonnull %exception237) #12, !dbg !2523
  %conv657 = uitofp i64 %call656 to double, !dbg !2525
  %call658 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.71, double noundef %conv657) #12, !dbg !2526
  %call659 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.72) #12, !dbg !2527
  %call660 = call i64 @GetNumberColors(ptr noundef nonnull %image, ptr noundef %spec.select, ptr noundef nonnull %exception237) #12, !dbg !2528
  br label %if.end674, !dbg !2529

if.else661:                                       ; preds = %if.end650
  %cmp662.not = icmp eq ptr %call651, null, !dbg !2530
  br i1 %cmp662.not, label %if.end674, label %land.lhs.true664, !dbg !2532

land.lhs.true664:                                 ; preds = %if.else661
  %call665 = call i32 @IsMagickTrue(ptr noundef nonnull %call651) #12, !dbg !2533
  %cmp666.not = icmp eq i32 %call665, 0, !dbg !2534
  br i1 %cmp666.not, label %if.end674, label %if.then668, !dbg !2535

if.then668:                                       ; preds = %land.lhs.true664
  %call669 = call i64 @GetNumberColors(ptr noundef nonnull %image, ptr noundef null, ptr noundef nonnull %exception237) #12, !dbg !2536
  %conv670 = uitofp i64 %call669 to double, !dbg !2537
  %call671 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.71, double noundef %conv670) #12, !dbg !2538
  br label %if.end674, !dbg !2539

if.end674:                                        ; preds = %if.end366, %if.then655, %if.then668, %land.lhs.true664, %if.else661
  %199 = load i32, ptr %image, align 8, !dbg !2540, !tbaa !1579
  %cmp676 = icmp eq i32 %199, 2, !dbg !2541
  br i1 %cmp676, label %if.then678, label %if.end735, !dbg !2542

if.then678:                                       ; preds = %if.end674
  %colors679 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 10, !dbg !2543
  %200 = load i64, ptr %colors679, align 8, !dbg !2543, !tbaa !1594
  %conv680 = uitofp i64 %200 to double, !dbg !2544
  %call681 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.73, double noundef %conv680) #12, !dbg !2545
  %call682 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.74) #12, !dbg !2546
  %201 = load i64, ptr %colors679, align 8, !dbg !2547, !tbaa !1594
  %cmp684 = icmp ult i64 %201, 1025, !dbg !2548
  br i1 %cmp684, label %if.then686, label %if.end735, !dbg !2549

if.then686:                                       ; preds = %if.then678
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %color687) #12, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %color687, metadata !1157, metadata !DIExpression()), !dbg !2551
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %hex) #12, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %hex, metadata !1162, metadata !DIExpression()), !dbg !2552
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %tuple688) #12, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %tuple688, metadata !1163, metadata !DIExpression()), !dbg !2553
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pixel689) #12, !dbg !2554
  call void @llvm.dbg.declare(metadata ptr %pixel689, metadata !1164, metadata !DIExpression()), !dbg !2555
  call void @GetMagickPixelPacket(ptr noundef nonnull %image, ptr noundef nonnull %pixel689) #12, !dbg !2556
  call void @llvm.dbg.value(metadata ptr undef, metadata !1165, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 0, metadata !1118, metadata !DIExpression()), !dbg !1191
  %202 = load i64, ptr %colors679, align 8, !dbg !2558, !tbaa !1594
  %cmp6932502 = icmp sgt i64 %202, 0, !dbg !2561
  br i1 %cmp6932502, label %for.body695.lr.ph, label %for.end733, !dbg !2562

for.body695.lr.ph:                                ; preds = %if.then686
  %colormap = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 11, !dbg !2563
  %203 = load ptr, ptr %colormap, align 8, !dbg !2563, !tbaa !2564
  call void @llvm.dbg.value(metadata ptr %203, metadata !1165, metadata !DIExpression()), !dbg !2557
  %red1.i2398 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel689, i64 0, i32 5
  %green3.i2401 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel689, i64 0, i32 6
  %blue5.i2403 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel689, i64 0, i32 7
  %opacity7.i2406 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel689, i64 0, i32 8
  %colorspace705 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel689, i64 0, i32 1
  %matte713 = getelementptr inbounds %struct._MagickPixelPacket, ptr %pixel689, i64 0, i32 2
  br label %for.body695, !dbg !2562

for.body695:                                      ; preds = %for.body695.lr.ph, %if.end720
  %p690.02504 = phi ptr [ %203, %for.body695.lr.ph ], [ %incdec.ptr730, %if.end720 ]
  %i.02503 = phi i64 [ 0, %for.body695.lr.ph ], [ %inc732, %if.end720 ]
  call void @llvm.dbg.value(metadata ptr %p690.02504, metadata !1165, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 %i.02503, metadata !1118, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr undef, metadata !2468, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %p690.02504, metadata !2475, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr null, metadata !2476, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %pixel689, metadata !2477, metadata !DIExpression()), !dbg !2565
  %red.i2396 = getelementptr inbounds %struct._PixelPacket, ptr %p690.02504, i64 0, i32 2, !dbg !2568
  %204 = load i16, ptr %red.i2396, align 2, !dbg !2568, !tbaa !1333
  %conv.i2397 = uitofp i16 %204 to float, !dbg !2569
  store float %conv.i2397, ptr %red1.i2398, align 8, !dbg !2570, !tbaa !2484
  %green.i2399 = getelementptr inbounds %struct._PixelPacket, ptr %p690.02504, i64 0, i32 1, !dbg !2571
  %205 = load i16, ptr %green.i2399, align 2, !dbg !2571, !tbaa !1341
  %conv2.i2400 = uitofp i16 %205 to float, !dbg !2572
  store float %conv2.i2400, ptr %green3.i2401, align 4, !dbg !2573, !tbaa !2491
  %206 = load i16, ptr %p690.02504, align 2, !dbg !2574, !tbaa !1349
  %conv4.i2402 = uitofp i16 %206 to float, !dbg !2575
  store float %conv4.i2402, ptr %blue5.i2403, align 8, !dbg !2576, !tbaa !2496
  %opacity.i2404 = getelementptr inbounds %struct._PixelPacket, ptr %p690.02504, i64 0, i32 3, !dbg !2577
  %207 = load i16, ptr %opacity.i2404, align 2, !dbg !2577, !tbaa !1358
  %conv6.i2405 = uitofp i16 %207 to float, !dbg !2578
  store float %conv6.i2405, ptr %opacity7.i2406, align 4, !dbg !2579, !tbaa !2501
  %call697 = call i64 @CopyMagickString(ptr noundef nonnull %tuple688, ptr noundef nonnull @.str.75, i64 noundef 4096) #12, !dbg !2580
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel689, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tuple688) #12, !dbg !2581
  %call700 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple688, ptr noundef nonnull @.str.76, i64 noundef 4096) #12, !dbg !2582
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel689, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tuple688) #12, !dbg !2583
  %call703 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple688, ptr noundef nonnull @.str.76, i64 noundef 4096) #12, !dbg !2584
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel689, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tuple688) #12, !dbg !2585
  %208 = load i32, ptr %colorspace705, align 4, !dbg !2586, !tbaa !2588
  %cmp706 = icmp eq i32 %208, 12, !dbg !2589
  br i1 %cmp706, label %if.then708, label %if.end712, !dbg !2590

if.then708:                                       ; preds = %for.body695
  %call710 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple688, ptr noundef nonnull @.str.76, i64 noundef 4096) #12, !dbg !2591
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel689, i32 noundef 32, i32 noundef 2, ptr noundef nonnull %tuple688) #12, !dbg !2593
  br label %if.end712, !dbg !2594

if.end712:                                        ; preds = %if.then708, %for.body695
  %209 = load i32, ptr %matte713, align 8, !dbg !2595, !tbaa !2597
  %cmp714.not = icmp eq i32 %209, 0, !dbg !2598
  br i1 %cmp714.not, label %if.end720, label %if.then716, !dbg !2599

if.then716:                                       ; preds = %if.end712
  %call718 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple688, ptr noundef nonnull @.str.76, i64 noundef 4096) #12, !dbg !2600
  call void @ConcatenateColorComponent(ptr noundef nonnull %pixel689, i32 noundef 8, i32 noundef 2, ptr noundef nonnull %tuple688) #12, !dbg !2602
  br label %if.end720, !dbg !2603

if.end720:                                        ; preds = %if.then716, %if.end712
  %call722 = call i64 @ConcatenateMagickString(ptr noundef nonnull %tuple688, ptr noundef nonnull @.str.77, i64 noundef 4096) #12, !dbg !2604
  %call724 = call i32 @QueryMagickColorname(ptr noundef nonnull %image, ptr noundef nonnull %pixel689, i32 noundef 1, ptr noundef nonnull %color687, ptr noundef nonnull %exception237) #12, !dbg !2605
  call void @GetColorTuple(ptr noundef nonnull %pixel689, i32 noundef 1, ptr noundef nonnull %hex) #12, !dbg !2606
  %call729 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.78, i64 noundef %i.02503, ptr noundef nonnull %tuple688, ptr noundef nonnull %hex, ptr noundef nonnull %color687) #12, !dbg !2607
  %incdec.ptr730 = getelementptr inbounds %struct._PixelPacket, ptr %p690.02504, i64 1, !dbg !2608
  call void @llvm.dbg.value(metadata ptr %incdec.ptr730, metadata !1165, metadata !DIExpression()), !dbg !2557
  %inc732 = add nuw nsw i64 %i.02503, 1, !dbg !2609
  call void @llvm.dbg.value(metadata i64 %inc732, metadata !1118, metadata !DIExpression()), !dbg !1191
  %210 = load i64, ptr %colors679, align 8, !dbg !2558, !tbaa !1594
  %cmp693 = icmp slt i64 %inc732, %210, !dbg !2561
  br i1 %cmp693, label %for.body695, label %for.end733, !dbg !2562, !llvm.loop !2610

for.end733:                                       ; preds = %if.end720, %if.then686
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pixel689) #12, !dbg !2612
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %tuple688) #12, !dbg !2612
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %hex) #12, !dbg !2612
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %color687) #12, !dbg !2612
  br label %if.end735, !dbg !2613

if.end735:                                        ; preds = %if.then678, %for.end733, %if.end674
  %error736 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, !dbg !2614
  %211 = load double, ptr %error736, align 8, !dbg !2616, !tbaa !1606
  %cmp738 = fcmp une double %211, 0.000000e+00, !dbg !2617
  br i1 %cmp738, label %if.then740, label %if.end744, !dbg !2618

if.then740:                                       ; preds = %if.end735
  %call743 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.79, double noundef %211) #12, !dbg !2619
  br label %if.end744, !dbg !2620

if.end744:                                        ; preds = %if.then740, %if.end735
  %normalized_mean_error746 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 1, !dbg !2621
  %212 = load double, ptr %normalized_mean_error746, align 8, !dbg !2621, !tbaa !1611
  %cmp747 = fcmp une double %212, 0.000000e+00, !dbg !2623
  br i1 %cmp747, label %if.then749, label %if.end753, !dbg !2624

if.then749:                                       ; preds = %if.end744
  %call752 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.80, double noundef %212) #12, !dbg !2625
  br label %if.end753, !dbg !2626

if.end753:                                        ; preds = %if.then749, %if.end744
  %normalized_maximum_error755 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 45, i32 2, !dbg !2627
  %213 = load double, ptr %normalized_maximum_error755, align 8, !dbg !2627, !tbaa !1613
  %cmp756 = fcmp une double %213, 0.000000e+00, !dbg !2629
  br i1 %cmp756, label %if.then758, label %if.end762, !dbg !2630

if.then758:                                       ; preds = %if.end753
  %call761 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.81, double noundef %213) #12, !dbg !2631
  br label %if.end762, !dbg !2632

if.end762:                                        ; preds = %if.then758, %if.end753
  %rendering_intent = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 17, !dbg !2633
  %214 = load i32, ptr %rendering_intent, align 8, !dbg !2633, !tbaa !2634
  %conv763 = zext i32 %214 to i64, !dbg !2635
  %call764 = call ptr @CommandOptionToMnemonic(i32 noundef 31, i64 noundef %conv763) #12, !dbg !2636
  %call765 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.82, ptr noundef %call764) #12, !dbg !2637
  %gamma = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 15, !dbg !2638
  %215 = load double, ptr %gamma, align 8, !dbg !2638, !tbaa !2640
  %cmp766 = fcmp une double %215, 0.000000e+00, !dbg !2641
  br i1 %cmp766, label %if.then768, label %if.end771, !dbg !2642

if.then768:                                       ; preds = %if.end762
  %call770 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.83, double noundef %215) #12, !dbg !2643
  br label %if.end771, !dbg !2644

if.end771:                                        ; preds = %if.then768, %if.end762
  %chromaticity = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, !dbg !2645
  %216 = load double, ptr %chromaticity, align 8, !dbg !2647, !tbaa !2648
  %cmp773 = fcmp une double %216, 0.000000e+00, !dbg !2649
  br i1 %cmp773, label %if.then790, label %lor.lhs.false775, !dbg !2650

lor.lhs.false775:                                 ; preds = %if.end771
  %green_primary = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 1, !dbg !2651
  %217 = load double, ptr %green_primary, align 8, !dbg !2652, !tbaa !2653
  %cmp778 = fcmp une double %217, 0.000000e+00, !dbg !2654
  br i1 %cmp778, label %if.then790, label %lor.lhs.false780, !dbg !2655

lor.lhs.false780:                                 ; preds = %lor.lhs.false775
  %blue_primary = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 2, !dbg !2656
  %218 = load double, ptr %blue_primary, align 8, !dbg !2657, !tbaa !2658
  %cmp783 = fcmp une double %218, 0.000000e+00, !dbg !2659
  br i1 %cmp783, label %if.then790, label %lor.lhs.false785, !dbg !2660

lor.lhs.false785:                                 ; preds = %lor.lhs.false780
  %white_point = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 3, !dbg !2661
  %219 = load double, ptr %white_point, align 8, !dbg !2662, !tbaa !2663
  %cmp788 = fcmp une double %219, 0.000000e+00, !dbg !2664
  br i1 %cmp788, label %if.then790, label %if.end820, !dbg !2665

if.then790:                                       ; preds = %lor.lhs.false785, %lor.lhs.false780, %lor.lhs.false775, %if.end771
  %call791 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.84) #12, !dbg !2666
  %220 = load double, ptr %chromaticity, align 8, !dbg !2668, !tbaa !2648
  %y797 = getelementptr inbounds %struct._PrimaryInfo, ptr %chromaticity, i64 0, i32 1, !dbg !2669
  %221 = load double, ptr %y797, align 8, !dbg !2669, !tbaa !2670
  %call798 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.85, double noundef %220, double noundef %221) #12, !dbg !2671
  %green_primary800 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 1, !dbg !2672
  %222 = load double, ptr %green_primary800, align 8, !dbg !2673, !tbaa !2653
  %y804 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 1, i32 1, !dbg !2674
  %223 = load double, ptr %y804, align 8, !dbg !2674, !tbaa !2675
  %call805 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.86, double noundef %222, double noundef %223) #12, !dbg !2676
  %blue_primary807 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 2, !dbg !2677
  %224 = load double, ptr %blue_primary807, align 8, !dbg !2678, !tbaa !2658
  %y811 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 2, i32 1, !dbg !2679
  %225 = load double, ptr %y811, align 8, !dbg !2679, !tbaa !2680
  %call812 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.87, double noundef %224, double noundef %225) #12, !dbg !2681
  %white_point814 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 3, !dbg !2682
  %226 = load double, ptr %white_point814, align 8, !dbg !2683, !tbaa !2663
  %y818 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 16, i32 3, i32 1, !dbg !2684
  %227 = load double, ptr %y818, align 8, !dbg !2684, !tbaa !2685
  %call819 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.88, double noundef %226, double noundef %227) #12, !dbg !2686
  br label %if.end820, !dbg !2687

if.end820:                                        ; preds = %if.then790, %lor.lhs.false785
  %extract_info = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 27, !dbg !2688
  %228 = load i64, ptr %extract_info, align 8, !dbg !2690, !tbaa !2691
  %height823 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 27, i32 1, !dbg !2692
  %229 = load i64, ptr %height823, align 8, !dbg !2692, !tbaa !2693
  %mul824 = mul i64 %229, %228, !dbg !2694
  %cmp825.not = icmp eq i64 %mul824, 0, !dbg !2695
  br i1 %cmp825.not, label %if.end841, label %if.then827, !dbg !2696

if.then827:                                       ; preds = %if.end820
  %conv830 = uitofp i64 %228 to double, !dbg !2697
  %conv833 = uitofp i64 %229 to double, !dbg !2698
  %x835 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 27, i32 2, !dbg !2699
  %230 = load i64, ptr %x835, align 8, !dbg !2699, !tbaa !2700
  %conv836 = sitofp i64 %230 to double, !dbg !2701
  %y838 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 27, i32 3, !dbg !2702
  %231 = load i64, ptr %y838, align 8, !dbg !2702, !tbaa !2703
  %conv839 = sitofp i64 %231 to double, !dbg !2704
  %call840 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.89, double noundef %conv830, double noundef %conv833, double noundef %conv836, double noundef %conv839) #12, !dbg !2705
  br label %if.end841, !dbg !2706

if.end841:                                        ; preds = %if.then827, %if.end820
  %background_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 12, !dbg !2707
  %call843 = call i32 @QueryColorname(ptr noundef nonnull %image, ptr noundef nonnull %background_color, i32 noundef 1, ptr noundef nonnull %color, ptr noundef nonnull %exception237) #12, !dbg !2708
  %call845 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.90, ptr noundef nonnull %color) #12, !dbg !2709
  %border_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 13, !dbg !2710
  %call847 = call i32 @QueryColorname(ptr noundef nonnull %image, ptr noundef nonnull %border_color, i32 noundef 1, ptr noundef nonnull %color, ptr noundef nonnull %exception237) #12, !dbg !2711
  %call849 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.91, ptr noundef nonnull %color) #12, !dbg !2712
  %matte_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 14, !dbg !2713
  %call851 = call i32 @QueryColorname(ptr noundef nonnull %image, ptr noundef nonnull %matte_color, i32 noundef 1, ptr noundef nonnull %color, ptr noundef nonnull %exception237) #12, !dbg !2714
  %call853 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.92, ptr noundef nonnull %color) #12, !dbg !2715
  %transparent_color = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 72, !dbg !2716
  %call855 = call i32 @QueryColorname(ptr noundef nonnull %image, ptr noundef nonnull %transparent_color, i32 noundef 1, ptr noundef nonnull %color, ptr noundef nonnull %exception237) #12, !dbg !2717
  %call857 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.93, ptr noundef nonnull %color) #12, !dbg !2718
  %interlace = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 33, !dbg !2719
  %232 = load i32, ptr %interlace, align 4, !dbg !2719, !tbaa !2720
  %conv858 = zext i32 %232 to i64, !dbg !2721
  %call859 = call ptr @CommandOptionToMnemonic(i32 noundef 32, i64 noundef %conv858) #12, !dbg !2722
  %call860 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.94, ptr noundef %call859) #12, !dbg !2723
  %intensity = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 83, !dbg !2724
  %233 = load i32, ptr %intensity, align 8, !dbg !2724, !tbaa !2725
  %conv861 = zext i32 %233 to i64, !dbg !2726
  %call862 = call ptr @CommandOptionToMnemonic(i32 noundef 51, i64 noundef %conv861) #12, !dbg !2727
  %call863 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.95, ptr noundef %call862) #12, !dbg !2728
  %compose = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 36, !dbg !2729
  %234 = load i32, ptr %compose, align 8, !dbg !2729, !tbaa !2730
  %conv864 = zext i32 %234 to i64, !dbg !2731
  %call865 = call ptr @CommandOptionToMnemonic(i32 noundef 11, i64 noundef %conv864) #12, !dbg !2732
  %call866 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.96, ptr noundef %call865) #12, !dbg !2733
  %page867 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, !dbg !2734
  %235 = load i64, ptr %page867, align 8, !dbg !2736, !tbaa !1534
  %cmp869.not = icmp eq i64 %235, 0, !dbg !2737
  %height873 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 1
  %236 = load i64, ptr %height873, align 8, !dbg !2738, !tbaa !1537
  %cmp874.not = icmp eq i64 %236, 0
  %or.cond2550 = select i1 %cmp869.not, i1 %cmp874.not, i1 false, !dbg !2739
  br i1 %or.cond2550, label %lor.lhs.false876, label %if.end900, !dbg !2739

lor.lhs.false876:                                 ; preds = %if.end841
  %x878 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !2740
  %237 = load i64, ptr %x878, align 8, !dbg !2740, !tbaa !1540
  %cmp879.not = icmp eq i64 %237, 0, !dbg !2741
  br i1 %cmp879.not, label %lor.lhs.false881, label %if.end900, !dbg !2742

lor.lhs.false881:                                 ; preds = %lor.lhs.false876
  %y883 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !2743
  %238 = load i64, ptr %y883, align 8, !dbg !2743, !tbaa !1544
  %cmp884.not = icmp eq i64 %238, 0, !dbg !2744
  br i1 %cmp884.not, label %lor.lhs.false905, label %if.end900, !dbg !2745

if.end900:                                        ; preds = %if.end841, %lor.lhs.false876, %lor.lhs.false881
  %239 = phi i64 [ 0, %lor.lhs.false881 ], [ 0, %lor.lhs.false876 ], [ %236, %if.end841 ], !dbg !2746
  %conv889 = uitofp i64 %235 to double, !dbg !2747
  %conv892 = uitofp i64 %239 to double, !dbg !2748
  %x894 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 2, !dbg !2749
  %240 = load i64, ptr %x894, align 8, !dbg !2749, !tbaa !1540
  %conv895 = sitofp i64 %240 to double, !dbg !2750
  %y897 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !2751
  %241 = load i64, ptr %y897, align 8, !dbg !2751, !tbaa !1544
  %conv898 = sitofp i64 %241 to double, !dbg !2752
  %call899 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.97, double noundef %conv889, double noundef %conv892, double noundef %conv895, double noundef %conv898) #12, !dbg !2753
  %.pre2535 = load i64, ptr %x894, align 8, !dbg !2754, !tbaa !1540
  %cmp903.not = icmp eq i64 %.pre2535, 0, !dbg !2756
  br i1 %cmp903.not, label %lor.lhs.false905, label %if.end900.if.then910_crit_edge, !dbg !2757

if.end900.if.then910_crit_edge:                   ; preds = %if.end900
  %y915.phi.trans.insert = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3
  %.pre2536 = load i64, ptr %y915.phi.trans.insert, align 8, !dbg !2758, !tbaa !1544
  br label %if.then910, !dbg !2757

lor.lhs.false905:                                 ; preds = %lor.lhs.false881, %if.end900
  %y907 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 26, i32 3, !dbg !2759
  %242 = load i64, ptr %y907, align 8, !dbg !2759, !tbaa !1544
  %cmp908.not = icmp eq i64 %242, 0, !dbg !2760
  br i1 %cmp908.not, label %if.end918, label %if.then910, !dbg !2761

if.then910:                                       ; preds = %if.end900.if.then910_crit_edge, %lor.lhs.false905
  %243 = phi i64 [ %.pre2535, %if.end900.if.then910_crit_edge ], [ 0, %lor.lhs.false905 ]
  %244 = phi i64 [ %.pre2536, %if.end900.if.then910_crit_edge ], [ %242, %lor.lhs.false905 ], !dbg !2758
  %conv913 = sitofp i64 %243 to double, !dbg !2762
  %conv916 = sitofp i64 %244 to double, !dbg !2763
  %call917 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.98, double noundef %conv913, double noundef %conv916) #12, !dbg !2764
  br label %if.end918, !dbg !2765

if.end918:                                        ; preds = %if.then910, %lor.lhs.false905
  %dispose = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 37, !dbg !2766
  %245 = load i32, ptr %dispose, align 4, !dbg !2766, !tbaa !2767
  %conv919 = zext i32 %245 to i64, !dbg !2768
  %call920 = call ptr @CommandOptionToMnemonic(i32 noundef 19, i64 noundef %conv919) #12, !dbg !2769
  %call921 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.99, ptr noundef %call920) #12, !dbg !2770
  %delay = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 40, !dbg !2771
  %246 = load i64, ptr %delay, align 8, !dbg !2771, !tbaa !2773
  %cmp922.not = icmp eq i64 %246, 0, !dbg !2774
  br i1 %cmp922.not, label %if.end929, label %if.then924, !dbg !2775

if.then924:                                       ; preds = %if.end918
  %conv926 = uitofp i64 %246 to double, !dbg !2776
  %ticks_per_second = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 41, !dbg !2777
  %247 = load i64, ptr %ticks_per_second, align 8, !dbg !2777, !tbaa !2778
  %conv927 = sitofp i64 %247 to double, !dbg !2779
  %call928 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.100, double noundef %conv926, double noundef %conv927) #12, !dbg !2780
  br label %if.end929, !dbg !2781

if.end929:                                        ; preds = %if.then924, %if.end918
  %iterations = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 42, !dbg !2782
  %248 = load i64, ptr %iterations, align 8, !dbg !2782, !tbaa !2784
  %cmp930.not = icmp eq i64 %248, 1, !dbg !2785
  br i1 %cmp930.not, label %if.end936, label %if.then932, !dbg !2786

if.then932:                                       ; preds = %if.end929
  %conv934 = uitofp i64 %248 to double, !dbg !2787
  %call935 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.101, double noundef %conv934) #12, !dbg !2788
  br label %if.end936, !dbg !2789

if.end936:                                        ; preds = %if.then932, %if.end929
  %duration = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 84, !dbg !2790
  %249 = load i64, ptr %duration, align 8, !dbg !2790, !tbaa !2792
  %cmp937.not = icmp eq i64 %249, 0, !dbg !2793
  br i1 %cmp937.not, label %if.end943, label %if.then939, !dbg !2794

if.then939:                                       ; preds = %if.end936
  %conv941 = uitofp i64 %249 to double, !dbg !2795
  %call942 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.102, double noundef %conv941) #12, !dbg !2796
  br label %if.end943, !dbg !2797

if.end943:                                        ; preds = %if.then939, %if.end936
  %next = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 69, !dbg !2798
  %250 = load ptr, ptr %next, align 8, !dbg !2798, !tbaa !2800
  %cmp944.not = icmp eq ptr %250, null, !dbg !2801
  br i1 %cmp944.not, label %lor.lhs.false946, label %if.then949, !dbg !2802

lor.lhs.false946:                                 ; preds = %if.end943
  %previous = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 67, !dbg !2803
  %251 = load ptr, ptr %previous, align 8, !dbg !2803, !tbaa !2804
  %cmp947.not = icmp eq ptr %251, null, !dbg !2805
  br i1 %cmp947.not, label %if.else955, label %if.then949, !dbg !2806

if.then949:                                       ; preds = %lor.lhs.false946, %if.end943
  %scene950 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 39, !dbg !2807
  %252 = load i64, ptr %scene950, align 8, !dbg !2807, !tbaa !1493
  %conv951 = uitofp i64 %252 to double, !dbg !2808
  %call952 = call i64 @GetImageListLength(ptr noundef nonnull %image) #12, !dbg !2809
  %conv953 = uitofp i64 %call952 to double, !dbg !2810
  %call954 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.103, double noundef %conv951, double noundef %conv953) #12, !dbg !2811
  br label %if.end964, !dbg !2812

if.else955:                                       ; preds = %lor.lhs.false946
  %scene956 = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 39, !dbg !2813
  %253 = load i64, ptr %scene956, align 8, !dbg !2813, !tbaa !1493
  %cmp957.not = icmp eq i64 %253, 0, !dbg !2815
  br i1 %cmp957.not, label %if.end964, label %if.then959, !dbg !2816

if.then959:                                       ; preds = %if.else955
  %conv961 = uitofp i64 %253 to double, !dbg !2817
  %call962 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.104, double noundef %conv961) #12, !dbg !2818
  br label %if.end964, !dbg !2819

if.end964:                                        ; preds = %if.else955, %if.then959, %if.then949
  %compression = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 2, !dbg !2820
  %254 = load i32, ptr %compression, align 8, !dbg !2820, !tbaa !2821
  %conv965 = zext i32 %254 to i64, !dbg !2822
  %call966 = call ptr @CommandOptionToMnemonic(i32 noundef 12, i64 noundef %conv965) #12, !dbg !2823
  %call967 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.105, ptr noundef %call966) #12, !dbg !2824
  %quality = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 3, !dbg !2825
  %255 = load i64, ptr %quality, align 8, !dbg !2825, !tbaa !2827
  %cmp968.not = icmp eq i64 %255, 0, !dbg !2828
  br i1 %cmp968.not, label %if.end974, label %if.then970, !dbg !2829

if.then970:                                       ; preds = %if.end964
  %conv972 = uitofp i64 %255 to double, !dbg !2830
  %call973 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.106, double noundef %conv972) #12, !dbg !2831
  br label %if.end974, !dbg !2832

if.end974:                                        ; preds = %if.then970, %if.end964
  %orientation = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 4, !dbg !2833
  %256 = load i32, ptr %orientation, align 8, !dbg !2833, !tbaa !2834
  %conv975 = zext i32 %256 to i64, !dbg !2835
  %call976 = call ptr @CommandOptionToMnemonic(i32 noundef 50, i64 noundef %conv975) #12, !dbg !2836
  %call977 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.107, ptr noundef %call976) #12, !dbg !2837
  %montage = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 20, !dbg !2838
  %257 = load ptr, ptr %montage, align 8, !dbg !2838, !tbaa !2840
  %cmp978.not = icmp eq ptr %257, null, !dbg !2841
  br i1 %cmp978.not, label %if.end983, label %if.then980, !dbg !2842

if.then980:                                       ; preds = %if.end974
  %call982 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.108, ptr noundef nonnull %257) #12, !dbg !2843
  br label %if.end983, !dbg !2844

if.end983:                                        ; preds = %if.then980, %if.end974
  %directory = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 21, !dbg !2845
  %258 = load ptr, ptr %directory, align 8, !dbg !2845, !tbaa !2846
  %cmp984.not = icmp eq ptr %258, null, !dbg !2847
  br i1 %cmp984.not, label %if.end1046, label %if.then986, !dbg !2848

if.then986:                                       ; preds = %if.end983
  %call988 = call ptr @AcquireImageInfo() #12, !dbg !2849
  call void @llvm.dbg.value(metadata ptr %call988, metadata !1170, metadata !DIExpression()), !dbg !2850
  %size = getelementptr inbounds %struct._ImageInfo, ptr %call988, i64 0, i32 6, !dbg !2851
  %call989 = call ptr @CloneString(ptr noundef nonnull %size, ptr noundef nonnull @.str.109) #12, !dbg !2852
  %call990 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.110) #12, !dbg !2853
  %259 = load ptr, ptr %directory, align 8, !dbg !2854, !tbaa !2846
  call void @llvm.dbg.value(metadata ptr %259, metadata !1171, metadata !DIExpression()), !dbg !2850
  %260 = load i8, ptr %259, align 1, !dbg !2856, !tbaa !1464
  %cmp994.not2507 = icmp eq i8 %260, 0, !dbg !2858
  br i1 %cmp994.not2507, label %for.end1044, label %while.cond.preheader.lr.ph, !dbg !2859

while.cond.preheader.lr.ph:                       ; preds = %if.then986
  %filename1004 = getelementptr inbounds %struct._ImageInfo, ptr %call988, i64 0, i32 51
  br label %while.cond.preheader, !dbg !2859

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.inc1042
  %261 = phi i8 [ %260, %while.cond.preheader.lr.ph ], [ %265, %for.inc1042 ]
  %p987.02508 = phi ptr [ %259, %while.cond.preheader.lr.ph ], [ %incdec.ptr1043, %for.inc1042 ]
  call void @llvm.dbg.value(metadata ptr %p987.02508, metadata !1171, metadata !DIExpression()), !dbg !2850
  br label %while.cond, !dbg !2860

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %262 = phi i8 [ %.pr, %while.body ], [ %261, %while.cond.preheader ], !dbg !2862
  %q.0 = phi ptr [ %incdec.ptr1003, %while.body ], [ %p987.02508, %while.cond.preheader ], !dbg !2863
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !1172, metadata !DIExpression()), !dbg !2850
  switch i8 %262, label %while.body [
    i8 10, label %while.end
    i8 0, label %while.end
  ], !dbg !2864

while.body:                                       ; preds = %while.cond
  %incdec.ptr1003 = getelementptr inbounds i8, ptr %q.0, i64 1, !dbg !2865
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1003, metadata !1172, metadata !DIExpression()), !dbg !2850
  %.pr = load i8, ptr %incdec.ptr1003, align 1, !dbg !2862, !tbaa !1464
  br label %while.cond, !dbg !2860, !llvm.loop !2866

while.end:                                        ; preds = %while.cond, %while.cond
  %sub.ptr.lhs.cast = ptrtoint ptr %q.0 to i64, !dbg !2867
  %sub.ptr.rhs.cast = ptrtoint ptr %p987.02508 to i64, !dbg !2867
  %sub.ptr.sub = sub i64 1, %sub.ptr.rhs.cast, !dbg !2867
  %add1006 = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast, !dbg !2868
  %call1007 = call i64 @CopyMagickString(ptr noundef nonnull %filename1004, ptr noundef nonnull %p987.02508, i64 noundef %add1006) #12, !dbg !2869
  call void @llvm.dbg.value(metadata ptr %q.0, metadata !1171, metadata !DIExpression()), !dbg !2850
  %call1010 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.111, ptr noundef nonnull %filename1004) #12, !dbg !2870
  %call1011 = call ptr @SetWarningHandler(ptr noundef null) #12, !dbg !2871
  call void @llvm.dbg.value(metadata ptr %call1011, metadata !1173, metadata !DIExpression()), !dbg !2850
  %call1012 = call ptr @ReadImage(ptr noundef %call988, ptr noundef nonnull %exception237) #12, !dbg !2872
  call void @llvm.dbg.value(metadata ptr %call1012, metadata !1167, metadata !DIExpression()), !dbg !2850
  %call1013 = call ptr @SetWarningHandler(ptr noundef %call1011) #12, !dbg !2873
  %cmp1014 = icmp eq ptr %call1012, null, !dbg !2874
  br i1 %cmp1014, label %if.then1016, label %if.end1018, !dbg !2876

if.then1016:                                      ; preds = %while.end
  %call1017 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.26) #12, !dbg !2877
  br label %for.inc1042, !dbg !2879

if.end1018:                                       ; preds = %while.end
  %magick_columns1019 = getelementptr inbounds %struct._Image, ptr %call1012, i64 0, i32 56, !dbg !2880
  %263 = load i64, ptr %magick_columns1019, align 8, !dbg !2880, !tbaa !1507
  %conv1020 = uitofp i64 %263 to double, !dbg !2881
  %magick_rows1021 = getelementptr inbounds %struct._Image, ptr %call1012, i64 0, i32 57, !dbg !2882
  %264 = load i64, ptr %magick_rows1021, align 8, !dbg !2882, !tbaa !1511
  %conv1022 = uitofp i64 %264 to double, !dbg !2883
  %magick1023 = getelementptr inbounds %struct._Image, ptr %call1012, i64 0, i32 55, !dbg !2884
  %call1025 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.112, double noundef %conv1020, double noundef %conv1022, ptr noundef nonnull %magick1023) #12, !dbg !2885
  %call1026 = call i32 @SignatureImage(ptr noundef nonnull %call1012) #12, !dbg !2886
  call void @ResetImagePropertyIterator(ptr noundef nonnull %call1012) #12, !dbg !2887
  %call1027 = call ptr @GetNextImageProperty(ptr noundef nonnull %call1012) #12, !dbg !2888
  call void @llvm.dbg.value(metadata ptr %call1027, metadata !1107, metadata !DIExpression()), !dbg !1191
  %cmp1029.not2505 = icmp eq ptr %call1027, null, !dbg !2889
  br i1 %cmp1029.not2505, label %while.end1040, label %while.body1031, !dbg !2890

while.body1031:                                   ; preds = %if.end1018, %if.end1038
  %property.02506 = phi ptr [ %call1039, %if.end1038 ], [ %call1027, %if.end1018 ]
  call void @llvm.dbg.value(metadata ptr %property.02506, metadata !1107, metadata !DIExpression()), !dbg !1191
  %call1032 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.113, ptr noundef nonnull %property.02506) #12, !dbg !2891
  %call1033 = call ptr @GetImageProperty(ptr noundef nonnull %call1012, ptr noundef nonnull %property.02506) #12, !dbg !2893
  call void @llvm.dbg.value(metadata ptr %call1033, metadata !1109, metadata !DIExpression()), !dbg !1191
  %cmp1034.not = icmp eq ptr %call1033, null, !dbg !2894
  br i1 %cmp1034.not, label %if.end1038, label %if.then1036, !dbg !2896

if.then1036:                                      ; preds = %while.body1031
  %call1037 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.114, ptr noundef nonnull %call1033) #12, !dbg !2897
  br label %if.end1038, !dbg !2898

if.end1038:                                       ; preds = %if.then1036, %while.body1031
  %call1039 = call ptr @GetNextImageProperty(ptr noundef nonnull %call1012) #12, !dbg !2899
  call void @llvm.dbg.value(metadata ptr %call1039, metadata !1107, metadata !DIExpression()), !dbg !1191
  %cmp1029.not = icmp eq ptr %call1039, null, !dbg !2889
  br i1 %cmp1029.not, label %while.end1040, label %while.body1031, !dbg !2890, !llvm.loop !2900

while.end1040:                                    ; preds = %if.end1038, %if.end1018
  %call1041 = call ptr @DestroyImage(ptr noundef nonnull %call1012) #12, !dbg !2902
  call void @llvm.dbg.value(metadata ptr %call1041, metadata !1167, metadata !DIExpression()), !dbg !2850
  br label %for.inc1042, !dbg !2903

for.inc1042:                                      ; preds = %while.end1040, %if.then1016
  %incdec.ptr1043 = getelementptr inbounds i8, ptr %q.0, i64 1, !dbg !2904
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1043, metadata !1171, metadata !DIExpression()), !dbg !2850
  %265 = load i8, ptr %incdec.ptr1043, align 1, !dbg !2856, !tbaa !1464
  %cmp994.not = icmp eq i8 %265, 0, !dbg !2858
  br i1 %cmp994.not, label %for.end1044, label %while.cond.preheader, !dbg !2859, !llvm.loop !2905

for.end1044:                                      ; preds = %for.inc1042, %if.then986
  %call1045 = call ptr @DestroyImageInfo(ptr noundef %call988) #12, !dbg !2907
  call void @llvm.dbg.value(metadata ptr %call1045, metadata !1170, metadata !DIExpression()), !dbg !2850
  br label %if.end1046, !dbg !2908

if.end1046:                                       ; preds = %for.end1044, %if.end983
  %call1047 = call ptr @GetImageProperty(ptr noundef %image, ptr noundef nonnull @.str.115) #12, !dbg !2909
  %call1048 = call ptr @GetImageProperty(ptr noundef %image, ptr noundef nonnull @.str.116) #12, !dbg !2910
  %call1049 = call ptr @GetImageProperty(ptr noundef %image, ptr noundef nonnull @.str.117) #12, !dbg !2911
  %call1050 = call ptr @GetImageProperty(ptr noundef %image, ptr noundef nonnull @.str.118) #12, !dbg !2912
  call void @ResetImagePropertyIterator(ptr noundef %image) #12, !dbg !2913
  %call1051 = call ptr @GetNextImageProperty(ptr noundef %image) #12, !dbg !2914
  call void @llvm.dbg.value(metadata ptr %call1051, metadata !1107, metadata !DIExpression()), !dbg !1191
  %cmp1052.not = icmp eq ptr %call1051, null, !dbg !2915
  br i1 %cmp1052.not, label %if.end1069, label %if.then1054, !dbg !2917

if.then1054:                                      ; preds = %if.end1046
  %call1055 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.119) #12, !dbg !2918
  call void @llvm.dbg.value(metadata ptr %call1051, metadata !1107, metadata !DIExpression()), !dbg !1191
  br label %while.body1059, !dbg !2920

while.body1059:                                   ; preds = %if.then1054, %if.end1066
  %property.12510 = phi ptr [ %call1051, %if.then1054 ], [ %call1067, %if.end1066 ]
  call void @llvm.dbg.value(metadata ptr %property.12510, metadata !1107, metadata !DIExpression()), !dbg !1191
  %call1060 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.120, ptr noundef nonnull %property.12510) #12, !dbg !2921
  %call1061 = call ptr @GetImageProperty(ptr noundef %image, ptr noundef nonnull %property.12510) #12, !dbg !2923
  call void @llvm.dbg.value(metadata ptr %call1061, metadata !1109, metadata !DIExpression()), !dbg !1191
  %cmp1062.not = icmp eq ptr %call1061, null, !dbg !2924
  br i1 %cmp1062.not, label %if.end1066, label %if.then1064, !dbg !2926

if.then1064:                                      ; preds = %while.body1059
  %call1065 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.114, ptr noundef nonnull %call1061) #12, !dbg !2927
  br label %if.end1066, !dbg !2928

if.end1066:                                       ; preds = %if.then1064, %while.body1059
  %call1067 = call ptr @GetNextImageProperty(ptr noundef %image) #12, !dbg !2929
  call void @llvm.dbg.value(metadata ptr %call1067, metadata !1107, metadata !DIExpression()), !dbg !1191
  %cmp1057.not = icmp eq ptr %call1067, null, !dbg !2930
  br i1 %cmp1057.not, label %if.end1069, label %while.body1059, !dbg !2920, !llvm.loop !2931

if.end1069:                                       ; preds = %if.end1066, %if.end1046
  %call1071 = call i64 (ptr, i64, ptr, ...) @FormatLocaleString(ptr noundef nonnull %key, i64 noundef 4096, ptr noundef nonnull @.str.121) #12, !dbg !2933
  %call1073 = call ptr @GetImageProperty(ptr noundef %image, ptr noundef nonnull %key) #12, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %call1073, metadata !1109, metadata !DIExpression()), !dbg !1191
  %cmp1074.not = icmp eq ptr %call1073, null, !dbg !2935
  br i1 %cmp1074.not, label %if.end1085, label %if.then1076, !dbg !2937

if.then1076:                                      ; preds = %if.end1069
  %call1077 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.122) #12, !dbg !2938
  %call1078 = call i64 @strlen(ptr noundef nonnull %call1073) #16, !dbg !2940
  %cmp1079 = icmp ugt i64 %call1078, 80, !dbg !2942
  br i1 %cmp1079, label %if.then1081, label %if.end1083, !dbg !2943

if.then1081:                                      ; preds = %if.then1076
  %call1082 = call i32 @fputc(i32 noundef 10, ptr noundef %spec.select), !dbg !2944
  br label %if.end1083, !dbg !2945

if.end1083:                                       ; preds = %if.then1081, %if.then1076
  %call1084 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.114, ptr noundef nonnull %call1073) #12, !dbg !2946
  br label %if.end1085, !dbg !2947

if.end1085:                                       ; preds = %if.end1083, %if.end1069
  call void @ResetImageProfileIterator(ptr noundef %image) #12, !dbg !2948
  %call1086 = call ptr @GetNextImageProfile(ptr noundef %image) #12, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %call1086, metadata !1106, metadata !DIExpression()), !dbg !1191
  %cmp1087.not = icmp eq ptr %call1086, null, !dbg !2950
  br i1 %cmp1087.not, label %if.end1241, label %if.then1089, !dbg !2951

if.then1089:                                      ; preds = %if.end1085
  %call1090 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.123) #12, !dbg !2952
  br label %while.cond1091.outer.split, !dbg !2953

while.cond1091.outer.split:                       ; preds = %if.then1089, %if.end1238
  %name.0.ph2518 = phi ptr [ %call1086, %if.then1089 ], [ %call1239, %if.end1238 ]
  br label %while.cond1091, !dbg !2953

while.cond1091:                                   ; preds = %while.cond1091.outer.split, %while.cond1091
  call void @llvm.dbg.value(metadata ptr %name.0.ph2518, metadata !1106, metadata !DIExpression()), !dbg !1191
  %call1095 = call ptr @GetImageProfile(ptr noundef %image, ptr noundef nonnull %name.0.ph2518) #12, !dbg !2954
  call void @llvm.dbg.value(metadata ptr %call1095, metadata !1174, metadata !DIExpression()), !dbg !2955
  %cmp1096 = icmp eq ptr %call1095, null, !dbg !2956
  br i1 %cmp1096, label %while.cond1091, label %if.end1099, !dbg !2958, !llvm.loop !2959

if.end1099:                                       ; preds = %while.cond1091
  %call1100 = call i64 @GetStringInfoLength(ptr noundef nonnull %call1095) #12, !dbg !2961
  %conv1101 = uitofp i64 %call1100 to double, !dbg !2962
  %call1102 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.124, ptr noundef nonnull %name.0.ph2518, double noundef %conv1101) #12, !dbg !2963
  %call1103 = call i32 @LocaleCompare(ptr noundef nonnull %name.0.ph2518, ptr noundef nonnull @.str.125) #12, !dbg !2964
  %cmp1104 = icmp eq i32 %call1103, 0, !dbg !2965
  br i1 %cmp1104, label %if.then1106, label %if.end1233, !dbg !2966

if.then1106:                                      ; preds = %if.end1099
  %call1107 = call i64 @GetStringInfoLength(ptr noundef nonnull %call1095) #12, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %call1107, metadata !1190, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 0, metadata !1118, metadata !DIExpression()), !dbg !1191
  %cmp11092515 = icmp sgt i64 %call1107, 0, !dbg !2969
  br i1 %cmp11092515, label %for.body1111, label %if.end1233, !dbg !2972

for.body1111:                                     ; preds = %if.then1106, %for.inc1230
  %i.12516 = phi i64 [ %add1231, %for.inc1230 ], [ 0, %if.then1106 ]
  call void @llvm.dbg.value(metadata i64 %i.12516, metadata !1118, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i64 1, metadata !1189, metadata !DIExpression()), !dbg !2968
  %call1112 = call ptr @GetStringInfoDatum(ptr noundef nonnull %call1095) #12, !dbg !2973
  %inc1113 = add nsw i64 %i.12516, 1, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %inc1113, metadata !1118, metadata !DIExpression()), !dbg !1191
  %arrayidx1114 = getelementptr inbounds i8, ptr %call1112, i64 %i.12516, !dbg !2973
  %266 = load i8, ptr %arrayidx1114, align 1, !dbg !2973, !tbaa !1464
  call void @llvm.dbg.value(metadata i8 %266, metadata !1187, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2968
  %cmp1116.not = icmp eq i8 %266, 28, !dbg !2976
  br i1 %cmp1116.not, label %if.end1119, label %for.inc1230, !dbg !2978

if.end1119:                                       ; preds = %for.body1111
  %call1120 = call ptr @GetStringInfoDatum(ptr noundef nonnull %call1095) #12, !dbg !2979
  %inc1121 = add nsw i64 %i.12516, 2, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %inc1121, metadata !1118, metadata !DIExpression()), !dbg !1191
  %arrayidx1122 = getelementptr inbounds i8, ptr %call1120, i64 %inc1113, !dbg !2979
  %267 = load i8, ptr %arrayidx1122, align 1, !dbg !2979, !tbaa !1464
  call void @llvm.dbg.value(metadata i8 %267, metadata !1185, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2968
  %call1124 = call ptr @GetStringInfoDatum(ptr noundef nonnull %call1095) #12, !dbg !2981
  %inc1125 = add nsw i64 %i.12516, 3, !dbg !2982
  call void @llvm.dbg.value(metadata i64 %inc1125, metadata !1118, metadata !DIExpression()), !dbg !1191
  %arrayidx1126 = getelementptr inbounds i8, ptr %call1124, i64 %inc1121, !dbg !2981
  %268 = load i8, ptr %arrayidx1126, align 1, !dbg !2981, !tbaa !1464
  call void @llvm.dbg.value(metadata i8 %268, metadata !1186, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2968
  switch i8 %268, label %sw.default1180 [
    i8 5, label %sw.epilog1181
    i8 7, label %sw.bb1129
    i8 10, label %sw.bb1130
    i8 15, label %sw.bb1131
    i8 20, label %sw.bb1132
    i8 22, label %sw.bb1133
    i8 25, label %sw.bb1134
    i8 30, label %sw.bb1135
    i8 35, label %sw.bb1136
    i8 40, label %sw.bb1137
    i8 45, label %sw.bb1138
    i8 47, label %sw.bb1139
    i8 50, label %sw.bb1140
    i8 55, label %sw.bb1141
    i8 60, label %sw.bb1142
    i8 65, label %sw.bb1143
    i8 70, label %sw.bb1144
    i8 75, label %sw.bb1145
    i8 80, label %sw.bb1146
    i8 85, label %sw.bb1147
    i8 90, label %sw.bb1148
    i8 95, label %sw.bb1149
    i8 100, label %sw.bb1150
    i8 101, label %sw.bb1151
    i8 103, label %sw.bb1152
    i8 105, label %sw.bb1153
    i8 110, label %sw.bb1154
    i8 115, label %sw.bb1155
    i8 116, label %sw.bb1156
    i8 120, label %sw.bb1157
    i8 121, label %sw.bb1158
    i8 122, label %sw.bb1159
    i8 -56, label %sw.bb1160
    i8 -55, label %sw.bb1161
    i8 -54, label %sw.bb1162
    i8 -53, label %sw.bb1163
    i8 -52, label %sw.bb1164
    i8 -51, label %sw.bb1165
    i8 -50, label %sw.bb1166
    i8 -49, label %sw.bb1167
    i8 -48, label %sw.bb1168
    i8 -47, label %sw.bb1169
    i8 -46, label %sw.bb1170
    i8 -45, label %sw.bb1171
    i8 -44, label %sw.bb1172
    i8 -43, label %sw.bb1173
    i8 -42, label %sw.bb1174
    i8 -41, label %sw.bb1175
    i8 -40, label %sw.bb1176
    i8 -39, label %sw.bb1177
    i8 -38, label %sw.bb1178
    i8 -37, label %sw.bb1179
  ], !dbg !2983

sw.bb1129:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.127, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2984

sw.bb1130:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.128, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2986

sw.bb1131:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.129, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2987

sw.bb1132:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.130, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2988

sw.bb1133:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.131, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2989

sw.bb1134:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.132, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2990

sw.bb1135:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.133, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2991

sw.bb1136:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.134, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2992

sw.bb1137:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.135, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2993

sw.bb1138:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.136, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2994

sw.bb1139:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.137, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2995

sw.bb1140:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.138, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2996

sw.bb1141:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.139, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2997

sw.bb1142:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.140, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2998

sw.bb1143:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.141, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !2999

sw.bb1144:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.142, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3000

sw.bb1145:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.143, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3001

sw.bb1146:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.144, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3002

sw.bb1147:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.145, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3003

sw.bb1148:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.146, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3004

sw.bb1149:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.147, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3005

sw.bb1150:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.148, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3006

sw.bb1151:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.149, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3007

sw.bb1152:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.150, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3008

sw.bb1153:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.151, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3009

sw.bb1154:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.152, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3010

sw.bb1155:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.153, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3011

sw.bb1156:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.154, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3012

sw.bb1157:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.155, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3013

sw.bb1158:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.156, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3014

sw.bb1159:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.157, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3015

sw.bb1160:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.158, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3016

sw.bb1161:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.159, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3017

sw.bb1162:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.160, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3018

sw.bb1163:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.161, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3019

sw.bb1164:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.162, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3020

sw.bb1165:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.163, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3021

sw.bb1166:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.164, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3022

sw.bb1167:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.165, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3023

sw.bb1168:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.166, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3024

sw.bb1169:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.167, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3025

sw.bb1170:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.168, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3026

sw.bb1171:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.169, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3027

sw.bb1172:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.170, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3028

sw.bb1173:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.171, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3029

sw.bb1174:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.172, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3030

sw.bb1175:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.173, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3031

sw.bb1176:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.174, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3032

sw.bb1177:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.175, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3033

sw.bb1178:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.176, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3034

sw.bb1179:                                        ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.177, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3035

sw.default1180:                                   ; preds = %if.end1119
  call void @llvm.dbg.value(metadata ptr @.str.178, metadata !1184, metadata !DIExpression()), !dbg !2968
  br label %sw.epilog1181, !dbg !3036

sw.epilog1181:                                    ; preds = %if.end1119, %sw.default1180, %sw.bb1179, %sw.bb1178, %sw.bb1177, %sw.bb1176, %sw.bb1175, %sw.bb1174, %sw.bb1173, %sw.bb1172, %sw.bb1171, %sw.bb1170, %sw.bb1169, %sw.bb1168, %sw.bb1167, %sw.bb1166, %sw.bb1165, %sw.bb1164, %sw.bb1163, %sw.bb1162, %sw.bb1161, %sw.bb1160, %sw.bb1159, %sw.bb1158, %sw.bb1157, %sw.bb1156, %sw.bb1155, %sw.bb1154, %sw.bb1153, %sw.bb1152, %sw.bb1151, %sw.bb1150, %sw.bb1149, %sw.bb1148, %sw.bb1147, %sw.bb1146, %sw.bb1145, %sw.bb1144, %sw.bb1143, %sw.bb1142, %sw.bb1141, %sw.bb1140, %sw.bb1139, %sw.bb1138, %sw.bb1137, %sw.bb1136, %sw.bb1135, %sw.bb1134, %sw.bb1133, %sw.bb1132, %sw.bb1131, %sw.bb1130, %sw.bb1129
  %tag.0 = phi ptr [ @.str.178, %sw.default1180 ], [ @.str.177, %sw.bb1179 ], [ @.str.176, %sw.bb1178 ], [ @.str.175, %sw.bb1177 ], [ @.str.174, %sw.bb1176 ], [ @.str.173, %sw.bb1175 ], [ @.str.172, %sw.bb1174 ], [ @.str.171, %sw.bb1173 ], [ @.str.170, %sw.bb1172 ], [ @.str.169, %sw.bb1171 ], [ @.str.168, %sw.bb1170 ], [ @.str.167, %sw.bb1169 ], [ @.str.166, %sw.bb1168 ], [ @.str.165, %sw.bb1167 ], [ @.str.164, %sw.bb1166 ], [ @.str.163, %sw.bb1165 ], [ @.str.162, %sw.bb1164 ], [ @.str.161, %sw.bb1163 ], [ @.str.160, %sw.bb1162 ], [ @.str.159, %sw.bb1161 ], [ @.str.158, %sw.bb1160 ], [ @.str.157, %sw.bb1159 ], [ @.str.156, %sw.bb1158 ], [ @.str.155, %sw.bb1157 ], [ @.str.154, %sw.bb1156 ], [ @.str.153, %sw.bb1155 ], [ @.str.152, %sw.bb1154 ], [ @.str.151, %sw.bb1153 ], [ @.str.150, %sw.bb1152 ], [ @.str.149, %sw.bb1151 ], [ @.str.148, %sw.bb1150 ], [ @.str.147, %sw.bb1149 ], [ @.str.146, %sw.bb1148 ], [ @.str.145, %sw.bb1147 ], [ @.str.144, %sw.bb1146 ], [ @.str.143, %sw.bb1145 ], [ @.str.142, %sw.bb1144 ], [ @.str.141, %sw.bb1143 ], [ @.str.140, %sw.bb1142 ], [ @.str.139, %sw.bb1141 ], [ @.str.138, %sw.bb1140 ], [ @.str.137, %sw.bb1139 ], [ @.str.136, %sw.bb1138 ], [ @.str.135, %sw.bb1137 ], [ @.str.134, %sw.bb1136 ], [ @.str.133, %sw.bb1135 ], [ @.str.132, %sw.bb1134 ], [ @.str.131, %sw.bb1133 ], [ @.str.130, %sw.bb1132 ], [ @.str.129, %sw.bb1131 ], [ @.str.128, %sw.bb1130 ], [ @.str.127, %sw.bb1129 ], [ @.str.126, %if.end1119 ], !dbg !3037
  call void @llvm.dbg.value(metadata ptr %tag.0, metadata !1184, metadata !DIExpression()), !dbg !2968
  %conv1182 = uitofp i8 %267 to double, !dbg !3038
  %conv1183 = uitofp i8 %268 to double, !dbg !3039
  %call1184 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.179, ptr noundef nonnull %tag.0, double noundef %conv1182, double noundef %conv1183) #12, !dbg !3040
  %call1185 = call ptr @GetStringInfoDatum(ptr noundef nonnull %call1095) #12, !dbg !3041
  %inc1186 = add nsw i64 %i.12516, 4, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %inc1186, metadata !1118, metadata !DIExpression()), !dbg !1191
  %arrayidx1187 = getelementptr inbounds i8, ptr %call1185, i64 %inc1125, !dbg !3041
  %269 = load i8, ptr %arrayidx1187, align 1, !dbg !3041, !tbaa !1464
  %conv1188 = zext i8 %269 to i64, !dbg !3041
  %shl1189 = shl nuw nsw i64 %conv1188, 8, !dbg !3043
  call void @llvm.dbg.value(metadata i64 %shl1189, metadata !1189, metadata !DIExpression()), !dbg !2968
  %call1191 = call ptr @GetStringInfoDatum(ptr noundef nonnull %call1095) #12, !dbg !3044
  %inc1192 = add nsw i64 %i.12516, 5, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %inc1192, metadata !1118, metadata !DIExpression()), !dbg !1191
  %arrayidx1193 = getelementptr inbounds i8, ptr %call1191, i64 %inc1186, !dbg !3044
  %270 = load i8, ptr %arrayidx1193, align 1, !dbg !3044, !tbaa !1464
  %conv1194 = zext i8 %270 to i64, !dbg !3044
  %or = or i64 %shl1189, %conv1194, !dbg !3046
  call void @llvm.dbg.value(metadata i64 %or, metadata !1189, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata ptr null, metadata !1179, metadata !DIExpression()), !dbg !2968
  %add1198 = add nuw nsw i64 %or, 4096, !dbg !3047
  %call1199 = call ptr @AcquireQuantumMemory(i64 noundef %add1198, i64 noundef 1) #13, !dbg !3049
  call void @llvm.dbg.value(metadata ptr %call1199, metadata !1179, metadata !DIExpression()), !dbg !2968
  %cmp1201.not = icmp eq ptr %call1199, null, !dbg !3050
  br i1 %cmp1201.not, label %for.inc1230, label %if.then1203, !dbg !3052

if.then1203:                                      ; preds = %sw.epilog1181
  %call1204 = call ptr @GetStringInfoDatum(ptr noundef nonnull %call1095) #12, !dbg !3053
  %add.ptr1205 = getelementptr inbounds i8, ptr %call1204, i64 %inc1192, !dbg !3055
  %add1206 = add nuw nsw i64 %or, 1, !dbg !3056
  %call1207 = call i64 @CopyMagickString(ptr noundef nonnull %call1199, ptr noundef %add.ptr1205, i64 noundef %add1206) #12, !dbg !3057
  %call1208 = call ptr @StringToList(ptr noundef nonnull %call1199) #12, !dbg !3058
  call void @llvm.dbg.value(metadata ptr %call1208, metadata !1183, metadata !DIExpression()), !dbg !2968
  %cmp1209.not = icmp eq ptr %call1208, null, !dbg !3059
  br i1 %cmp1209.not, label %if.end1227, label %for.cond1212.preheader, !dbg !3061

for.cond1212.preheader:                           ; preds = %if.then1203
  call void @llvm.dbg.value(metadata i64 0, metadata !1188, metadata !DIExpression()), !dbg !2968
  %271 = load ptr, ptr %call1208, align 8, !dbg !3062, !tbaa !3066
  %cmp1214.not2512 = icmp eq ptr %271, null, !dbg !3067
  br i1 %cmp1214.not2512, label %for.end1225, label %for.body1216, !dbg !3068

for.body1216:                                     ; preds = %for.cond1212.preheader, %for.body1216
  %272 = phi ptr [ %274, %for.body1216 ], [ %271, %for.cond1212.preheader ]
  %arrayidx12132514 = phi ptr [ %arrayidx1213, %for.body1216 ], [ %call1208, %for.cond1212.preheader ]
  %j.02513 = phi i64 [ %inc1224, %for.body1216 ], [ 0, %for.cond1212.preheader ]
  call void @llvm.dbg.value(metadata i64 %j.02513, metadata !1188, metadata !DIExpression()), !dbg !2968
  %call1218 = call i32 @fputs(ptr noundef nonnull %272, ptr noundef %spec.select), !dbg !3069
  %fputc = call i32 @fputc(i32 10, ptr %spec.select), !dbg !3071
  %273 = load ptr, ptr %arrayidx12132514, align 8, !dbg !3072, !tbaa !3066
  %call1221 = call ptr @RelinquishMagickMemory(ptr noundef %273) #12, !dbg !3073
  store ptr %call1221, ptr %arrayidx12132514, align 8, !dbg !3074, !tbaa !3066
  %inc1224 = add nuw nsw i64 %j.02513, 1, !dbg !3075
  call void @llvm.dbg.value(metadata i64 %inc1224, metadata !1188, metadata !DIExpression()), !dbg !2968
  %arrayidx1213 = getelementptr inbounds ptr, ptr %call1208, i64 %inc1224, !dbg !3062
  %274 = load ptr, ptr %arrayidx1213, align 8, !dbg !3062, !tbaa !3066
  %cmp1214.not = icmp eq ptr %274, null, !dbg !3067
  br i1 %cmp1214.not, label %for.end1225, label %for.body1216, !dbg !3068, !llvm.loop !3076

for.end1225:                                      ; preds = %for.body1216, %for.cond1212.preheader
  %call1226 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call1208) #12, !dbg !3078
  call void @llvm.dbg.value(metadata ptr %call1226, metadata !1183, metadata !DIExpression()), !dbg !2968
  br label %if.end1227, !dbg !3079

if.end1227:                                       ; preds = %for.end1225, %if.then1203
  %call1228 = call ptr @DestroyString(ptr noundef nonnull %call1199) #12, !dbg !3080
  call void @llvm.dbg.value(metadata ptr %call1228, metadata !1179, metadata !DIExpression()), !dbg !2968
  br label %for.inc1230, !dbg !3081

for.inc1230:                                      ; preds = %sw.epilog1181, %if.end1227, %for.body1111
  %i.2 = phi i64 [ %inc1113, %for.body1111 ], [ %inc1192, %if.end1227 ], [ %inc1192, %sw.epilog1181 ], !dbg !3082
  %length.0 = phi i64 [ 1, %for.body1111 ], [ %or, %if.end1227 ], [ %or, %sw.epilog1181 ], !dbg !3082
  call void @llvm.dbg.value(metadata i64 %length.0, metadata !1189, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !1118, metadata !DIExpression()), !dbg !1191
  %add1231 = add nsw i64 %length.0, %i.2, !dbg !3083
  call void @llvm.dbg.value(metadata i64 %add1231, metadata !1118, metadata !DIExpression()), !dbg !1191
  %cmp1109 = icmp slt i64 %add1231, %call1107, !dbg !2969
  br i1 %cmp1109, label %for.body1111, label %if.end1233, !dbg !2972, !llvm.loop !3084

if.end1233:                                       ; preds = %for.inc1230, %if.then1106, %if.end1099
  %275 = load i32, ptr %debug, align 8, !dbg !3086, !tbaa !1198
  %cmp1235.not = icmp eq i32 %275, 0, !dbg !3088
  br i1 %cmp1235.not, label %if.end1238, label %if.then1237, !dbg !3089

if.then1237:                                      ; preds = %if.end1233
  call void @PrintStringInfo(ptr noundef %spec.select, ptr noundef nonnull %name.0.ph2518, ptr noundef nonnull %call1095) #12, !dbg !3090
  br label %if.end1238, !dbg !3090

if.end1238:                                       ; preds = %if.then1237, %if.end1233
  %call1239 = call ptr @GetNextImageProfile(ptr noundef nonnull %image) #12, !dbg !3091
  call void @llvm.dbg.value(metadata ptr %call1239, metadata !1106, metadata !DIExpression()), !dbg !1191
  %cmp1092.not = icmp eq ptr %call1239, null
  br i1 %cmp1092.not, label %if.end1241, label %while.cond1091.outer.split, !dbg !2953, !llvm.loop !2959

if.end1241:                                       ; preds = %if.end1238, %if.end1085
  call void @ResetImageArtifactIterator(ptr noundef %image) #12, !dbg !3092
  %call1242 = call ptr @GetNextImageArtifact(ptr noundef %image) #12, !dbg !3093
  call void @llvm.dbg.value(metadata ptr %call1242, metadata !1104, metadata !DIExpression()), !dbg !1191
  %cmp1243.not = icmp eq ptr %call1242, null, !dbg !3094
  br i1 %cmp1243.not, label %if.end1260, label %if.then1245, !dbg !3096

if.then1245:                                      ; preds = %if.end1241
  %call1246 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.180) #12, !dbg !3097
  call void @llvm.dbg.value(metadata ptr %call1242, metadata !1104, metadata !DIExpression()), !dbg !1191
  br label %while.body1250, !dbg !3099

while.body1250:                                   ; preds = %if.then1245, %if.end1257
  %artifact.02520 = phi ptr [ %call1242, %if.then1245 ], [ %call1258, %if.end1257 ]
  call void @llvm.dbg.value(metadata ptr %artifact.02520, metadata !1104, metadata !DIExpression()), !dbg !1191
  %call1251 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.120, ptr noundef nonnull %artifact.02520) #12, !dbg !3100
  %call1252 = call ptr @GetImageArtifact(ptr noundef %image, ptr noundef nonnull %artifact.02520) #12, !dbg !3102
  call void @llvm.dbg.value(metadata ptr %call1252, metadata !1109, metadata !DIExpression()), !dbg !1191
  %cmp1253.not = icmp eq ptr %call1252, null, !dbg !3103
  br i1 %cmp1253.not, label %if.end1257, label %if.then1255, !dbg !3105

if.then1255:                                      ; preds = %while.body1250
  %call1256 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.114, ptr noundef nonnull %call1252) #12, !dbg !3106
  br label %if.end1257, !dbg !3107

if.end1257:                                       ; preds = %if.then1255, %while.body1250
  %call1258 = call ptr @GetNextImageArtifact(ptr noundef %image) #12, !dbg !3108
  call void @llvm.dbg.value(metadata ptr %call1258, metadata !1104, metadata !DIExpression()), !dbg !1191
  %cmp1248.not = icmp eq ptr %call1258, null, !dbg !3109
  br i1 %cmp1248.not, label %if.end1260, label %while.body1250, !dbg !3099, !llvm.loop !3110

if.end1260:                                       ; preds = %if.end1257, %if.end1241
  call void @ResetImageRegistryIterator() #12, !dbg !3112
  %call1261 = call ptr @GetNextImageRegistry() #12, !dbg !3113
  call void @llvm.dbg.value(metadata ptr %call1261, metadata !1108, metadata !DIExpression()), !dbg !1191
  %cmp1262.not = icmp eq ptr %call1261, null, !dbg !3114
  br i1 %cmp1262.not, label %if.end1279, label %if.then1264, !dbg !3116

if.then1264:                                      ; preds = %if.end1260
  %call1265 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.181) #12, !dbg !3117
  call void @llvm.dbg.value(metadata ptr %call1261, metadata !1108, metadata !DIExpression()), !dbg !1191
  br label %while.body1269, !dbg !3119

while.body1269:                                   ; preds = %if.then1264, %if.end1276
  %registry.02522 = phi ptr [ %call1261, %if.then1264 ], [ %call1277, %if.end1276 ]
  call void @llvm.dbg.value(metadata ptr %registry.02522, metadata !1108, metadata !DIExpression()), !dbg !1191
  %call1270 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.120, ptr noundef nonnull %registry.02522) #12, !dbg !3120
  %call1271 = call ptr @GetImageRegistry(i32 noundef 3, ptr noundef nonnull %registry.02522, ptr noundef nonnull %exception237) #12, !dbg !3122
  call void @llvm.dbg.value(metadata ptr %call1271, metadata !1109, metadata !DIExpression()), !dbg !1191
  %cmp1272.not = icmp eq ptr %call1271, null, !dbg !3123
  br i1 %cmp1272.not, label %if.end1276, label %if.then1274, !dbg !3125

if.then1274:                                      ; preds = %while.body1269
  %call1275 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.114, ptr noundef nonnull %call1271) #12, !dbg !3126
  br label %if.end1276, !dbg !3127

if.end1276:                                       ; preds = %if.then1274, %while.body1269
  %call1277 = call ptr @GetNextImageRegistry() #12, !dbg !3128
  call void @llvm.dbg.value(metadata ptr %call1277, metadata !1108, metadata !DIExpression()), !dbg !1191
  %cmp1267.not = icmp eq ptr %call1277, null, !dbg !3129
  br i1 %cmp1267.not, label %if.end1279, label %while.body1269, !dbg !3119, !llvm.loop !3130

if.end1279:                                       ; preds = %if.end1276, %if.end1260
  %taint = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 5, !dbg !3132
  %276 = load i32, ptr %taint, align 4, !dbg !3132, !tbaa !3133
  %conv1280 = zext i32 %276 to i64, !dbg !3134
  %call1281 = call ptr @CommandOptionToMnemonic(i32 noundef 2, i64 noundef %conv1280) #12, !dbg !3135
  %call1282 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.182, ptr noundef %call1281) #12, !dbg !3136
  %call1283 = call i64 @GetBlobSize(ptr noundef %image) #12, !dbg !3137
  %call1285 = call i64 @FormatMagickSize(i64 noundef %call1283, i32 noundef 0, ptr noundef nonnull %format) #12, !dbg !3138
  %call1287 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.183, ptr noundef nonnull %format) #12, !dbg !3139
  %277 = load i64, ptr %columns298, align 8, !dbg !3140, !tbaa !1309
  %278 = load i64, ptr %rows300, align 8, !dbg !3141, !tbaa !1306
  %mul1290 = mul i64 %278, %277, !dbg !3142
  %call1292 = call i64 @FormatMagickSize(i64 noundef %mul1290, i32 noundef 0, ptr noundef nonnull %format) #12, !dbg !3143
  %call1294 = call i64 @strlen(ptr noundef nonnull %format) #16, !dbg !3144
  %cmp1295 = icmp ugt i64 %call1294, 1, !dbg !3146
  br i1 %cmp1295, label %if.then1297, label %if.end1302, !dbg !3147

if.then1297:                                      ; preds = %if.end1279
  %sub1300 = add i64 %call1294, -1, !dbg !3148
  %arrayidx1301 = getelementptr inbounds [4096 x i8], ptr %format, i64 0, i64 %sub1300, !dbg !3149
  store i8 0, ptr %arrayidx1301, align 1, !dbg !3150, !tbaa !1464
  br label %if.end1302, !dbg !3149

if.end1302:                                       ; preds = %if.then1297, %if.end1279
  %call1304 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.184, ptr noundef nonnull %format) #12, !dbg !3151
  %279 = load i64, ptr %columns298, align 8, !dbg !3152, !tbaa !1309
  %conv1306 = uitofp i64 %279 to double, !dbg !3153
  %280 = load i64, ptr %rows300, align 8, !dbg !3154, !tbaa !1306
  %conv1308 = uitofp i64 %280 to double, !dbg !3155
  %mul1309 = fmul double %conv1306, %conv1308, !dbg !3156
  %div1310 = fdiv double %mul1309, %call51, !dbg !3157
  %add1311 = fadd double %div1310, 5.000000e-01, !dbg !3158
  %conv1312 = fptoui double %add1311 to i64, !dbg !3159
  %call1314 = call i64 @FormatMagickSize(i64 noundef %conv1312, i32 noundef 0, ptr noundef nonnull %format) #12, !dbg !3160
  %call1316 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.185, ptr noundef nonnull %format) #12, !dbg !3161
  %call1317 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.186, double noundef %call53) #12, !dbg !3162
  %div1318 = fdiv double %call51, 6.000000e+01, !dbg !3163
  %conv1319 = fptoui double %div1318 to i64, !dbg !3164
  %call1320 = call double @fmod(double noundef %call51, double noundef 6.000000e+01) #12, !dbg !3165
  %281 = call double @llvm.ceil.f64(double %call1320), !dbg !3166
  %conv1321 = fptoui double %281 to i64, !dbg !3167
  %282 = call double @llvm.floor.f64(double %call51), !dbg !3168
  %sub1322 = fsub double %call51, %282, !dbg !3169
  %mul1323 = fmul double %sub1322, 1.000000e+03, !dbg !3170
  %conv1324 = fptoui double %mul1323 to i64, !dbg !3171
  %call1325 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.187, i64 noundef %conv1319, i64 noundef %conv1321, i64 noundef %conv1324) #12, !dbg !3172
  %call1326 = call ptr @GetMagickVersion(ptr noundef null) #12, !dbg !3173
  %call1327 = call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.188, ptr noundef %call1326) #12, !dbg !3174
  %call1328 = call i32 @fflush(ptr noundef %spec.select), !dbg !3175
  %call1329 = call i32 @ferror(ptr noundef %spec.select) #12, !dbg !3176
  %cmp1330.not = icmp eq i32 %call1329, 0, !dbg !3177
  br label %cleanup1333, !dbg !3178

cleanup1333:                                      ; preds = %if.then377, %if.end42, %if.end1302, %if.end219
  %retval.2.shrunk = phi i1 [ %cmp228.not, %if.end219 ], [ %cmp1330.not, %if.end1302 ], [ %cmp45.not, %if.end42 ], [ false, %if.then377 ]
  %retval.2 = zext i1 %retval.2.shrunk to i32, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %key) #12, !dbg !3179
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %format) #12, !dbg !3179
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %color) #12, !dbg !3179
  ret i32 %retval.2, !dbg !3179
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !3180 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !3186 ptr @AcquireExceptionInfo() local_unnamed_addr #3

declare !dbg !3189 ptr @GetImageArtifact(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3193 i64 @ParseCommandOption(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3198 i32 @IsGrayImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3202 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintChannelLocations(ptr noundef %file, ptr noundef %image, i32 noundef %channel, ptr noundef %name, i32 noundef %type, i64 noundef %max_locations, ptr nocapture noundef readonly %channel_statistics) unnamed_addr #0 !dbg !3206 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !3210, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %image, metadata !3211, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 %channel, metadata !3212, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %name, metadata !3213, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 %type, metadata !3214, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %max_locations, metadata !3215, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %channel_statistics, metadata !3216, metadata !DIExpression()), !dbg !3230
  switch i32 %type, label %sw.default [
    i32 5, label %sw.bb4
    i32 3, label %sw.bb1
  ], !dbg !3231

sw.default:                                       ; preds = %entry
  %idxprom = zext i32 %channel to i64, !dbg !3232
  %maxima = getelementptr inbounds %struct._ChannelStatistics, ptr %channel_statistics, i64 %idxprom, i32 2, !dbg !3235
  call void @llvm.dbg.value(metadata double undef, metadata !3217, metadata !DIExpression()), !dbg !3230
  br label %sw.epilog, !dbg !3236

sw.bb1:                                           ; preds = %entry
  %idxprom2 = zext i32 %channel to i64, !dbg !3237
  %mean = getelementptr inbounds %struct._ChannelStatistics, ptr %channel_statistics, i64 %idxprom2, i32 7, !dbg !3239
  call void @llvm.dbg.value(metadata double undef, metadata !3217, metadata !DIExpression()), !dbg !3230
  br label %sw.epilog, !dbg !3240

sw.bb4:                                           ; preds = %entry
  %idxprom5 = zext i32 %channel to i64, !dbg !3241
  %minima = getelementptr inbounds %struct._ChannelStatistics, ptr %channel_statistics, i64 %idxprom5, i32 1, !dbg !3243
  call void @llvm.dbg.value(metadata double undef, metadata !3217, metadata !DIExpression()), !dbg !3230
  br label %sw.epilog, !dbg !3244

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.default
  %target.0.in = phi ptr [ %maxima, %sw.default ], [ %mean, %sw.bb1 ], [ %minima, %sw.bb4 ]
  %target.0 = load double, ptr %target.0.in, align 8, !dbg !3245, !tbaa !2323
  call void @llvm.dbg.value(metadata double %target.0, metadata !3217, metadata !DIExpression()), !dbg !3230
  %call = tail call i32 @GetMagickPrecision() #12, !dbg !3246
  %call7 = tail call i32 @GetMagickPrecision() #12, !dbg !3247
  %mul = fmul double %target.0, 0x3EF0001000100010, !dbg !3248
  %call8 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.191, ptr noundef %name, i32 noundef %call, double noundef %target.0, i32 noundef %call7, double noundef %mul) #12, !dbg !3249
  %call9 = tail call ptr @AcquireExceptionInfo() #12, !dbg !3250
  call void @llvm.dbg.value(metadata ptr %call9, metadata !3218, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3219, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3220, metadata !DIExpression()), !dbg !3230
  %columns = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 7, !dbg !3251
  %rows = getelementptr inbounds %struct._Image, ptr %image, i64 0, i32 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3220, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3219, metadata !DIExpression()), !dbg !3230
  %0 = load i64, ptr %rows, align 8, !dbg !3252, !tbaa !1306
  %cmp23 = icmp sgt i64 %0, 0, !dbg !3253
  br i1 %cmp23, label %for.body.lr.ph, label %for.end64, !dbg !3254

for.body.lr.ph:                                   ; preds = %sw.epilog
  %cmp42.not = icmp eq i64 %max_locations, 0
  %.pre87 = load i64, ptr %columns, align 8, !dbg !3251, !tbaa !1309
  br i1 %cmp42.not, label %for.body.us, label %for.body

for.body.us:                                      ; preds = %for.body.lr.ph, %for.cond.us
  %1 = phi i64 [ %2, %for.cond.us ], [ %.pre87, %for.body.lr.ph ], !dbg !3251
  %y.025.us = phi i64 [ %inc63.us, %for.cond.us ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.025.us, metadata !3220, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %call10.us = tail call ptr @GetVirtualPixels(ptr noundef nonnull %image, i64 noundef 0, i64 noundef %y.025.us, i64 noundef %1, i64 noundef 1, ptr noundef %call9) #12, !dbg !3255
  call void @llvm.dbg.value(metadata ptr %call10.us, metadata !3221, metadata !DIExpression()), !dbg !3256
  %cmp11.us = icmp eq ptr %call10.us, null, !dbg !3257
  br i1 %cmp11.us, label %for.end64, label %for.cond12.preheader.us, !dbg !3259

for.cond.us:                                      ; preds = %for.body15.lr.ph.us, %for.end.us
  %2 = phi i64 [ %4, %for.end.us ], [ %5, %for.body15.lr.ph.us ]
  %inc63.us = add nuw nsw i64 %y.025.us, 1, !dbg !3260
  call void @llvm.dbg.value(metadata i64 undef, metadata !3220, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %3 = load i64, ptr %rows, align 8, !dbg !3252, !tbaa !1306
  %cmp.us = icmp slt i64 %inc63.us, %3, !dbg !3253
  br i1 %cmp.us, label %for.body.us, label %for.end64, !dbg !3254, !llvm.loop !3261

for.end.us:                                       ; preds = %for.inc.us.us.us72, %for.inc.us.us.us54, %for.inc.us.us.us36, %for.inc.us.us.us, %for.cond12.preheader.us
  %4 = phi i64 [ %5, %for.cond12.preheader.us ], [ %9, %for.inc.us.us.us ], [ %13, %for.inc.us.us.us36 ], [ %17, %for.inc.us.us.us54 ], [ %21, %for.inc.us.us.us72 ], !dbg !3263
  %x.0.lcssa.us = phi i64 [ 0, %for.cond12.preheader.us ], [ %inc52.us.us.us, %for.inc.us.us.us ], [ %inc52.us.us.us39, %for.inc.us.us.us36 ], [ %inc52.us.us.us57, %for.inc.us.us.us54 ], [ %inc52.us.us.us75, %for.inc.us.us.us72 ], !dbg !3265
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %cmp54.us = icmp slt i64 %x.0.lcssa.us, %4, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %y.025.us, metadata !3220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3230
  br i1 %cmp54.us, label %for.end64, label %for.cond.us, !dbg !3267

for.cond12.preheader.us:                          ; preds = %for.body.us
  call void @llvm.dbg.value(metadata i64 0, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %call10.us, metadata !3221, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %5 = load i64, ptr %columns, align 8, !dbg !3268, !tbaa !1309
  %cmp1411.us = icmp sgt i64 %5, 0, !dbg !3269
  br i1 %cmp1411.us, label %for.body15.lr.ph.us, label %for.end.us, !dbg !3270

for.body15.lr.ph.us:                              ; preds = %for.cond12.preheader.us
  %conv49.us = sitofp i64 %y.025.us to double
  switch i32 %channel, label %for.cond.us [
    i32 1, label %for.body15.us.us.us
    i32 2, label %for.body15.us.us.us28
    i32 4, label %for.body15.us.us.us46
    i32 8, label %for.body15.us.us.us64
  ], !dbg !3271

for.body15.us.us.us:                              ; preds = %for.body15.lr.ph.us, %for.inc.us.us.us
  %6 = phi i64 [ %9, %for.inc.us.us.us ], [ %5, %for.body15.lr.ph.us ]
  %x.016.us.us.us = phi i64 [ %inc52.us.us.us, %for.inc.us.us.us ], [ 0, %for.body15.lr.ph.us ]
  %p.013.us.us.us = phi ptr [ %incdec.ptr.us.us.us, %for.inc.us.us.us ], [ %call10.us, %for.body15.lr.ph.us ]
  call void @llvm.dbg.value(metadata i64 %x.016.us.us.us, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %p.013.us.us.us, metadata !3221, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 0, metadata !3226, metadata !DIExpression()), !dbg !3272
  %red.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %p.013.us.us.us, i64 0, i32 2, !dbg !3273
  %7 = load i16, ptr %red.us.us.us, align 2, !dbg !3273, !tbaa !1333
  %conv.us.us.us = uitofp i16 %7 to double, !dbg !3276
  %sub.us.us.us = fsub double %conv.us.us.us, %target.0, !dbg !3277
  %8 = tail call double @llvm.fabs.f64(double %sub.us.us.us), !dbg !3278
  %cmp17.us.us.us = fcmp olt double %8, 5.000000e-01, !dbg !3279
  call void @llvm.dbg.value(metadata i1 %cmp17.us.us.us, metadata !3226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3272
  br i1 %cmp17.us.us.us, label %if.then41.us.us.us, label %for.inc.us.us.us, !dbg !3280

if.then41.us.us.us:                               ; preds = %for.body15.us.us.us
  %conv48.us.us.us = sitofp i64 %x.016.us.us.us to double, !dbg !3281
  %call50.us.us.us = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.192, double noundef %conv48.us.us.us, double noundef %conv49.us) #12, !dbg !3284
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3230
  %.pre91 = load i64, ptr %columns, align 8, !dbg !3268, !tbaa !1309
  br label %for.inc.us.us.us, !dbg !3285

for.inc.us.us.us:                                 ; preds = %if.then41.us.us.us, %for.body15.us.us.us
  %9 = phi i64 [ %.pre91, %if.then41.us.us.us ], [ %6, %for.body15.us.us.us ], !dbg !3268
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %incdec.ptr.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %p.013.us.us.us, i64 1, !dbg !3286
  call void @llvm.dbg.value(metadata ptr undef, metadata !3221, metadata !DIExpression()), !dbg !3256
  %inc52.us.us.us = add nuw nsw i64 %x.016.us.us.us, 1, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %inc52.us.us.us, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us, metadata !3221, metadata !DIExpression()), !dbg !3256
  %cmp14.us.us.us = icmp slt i64 %inc52.us.us.us, %9, !dbg !3269
  br i1 %cmp14.us.us.us, label %for.body15.us.us.us, label %for.end.us, !dbg !3270, !llvm.loop !3288

for.body15.us.us.us28:                            ; preds = %for.body15.lr.ph.us, %for.inc.us.us.us36
  %10 = phi i64 [ %13, %for.inc.us.us.us36 ], [ %5, %for.body15.lr.ph.us ]
  %x.016.us.us.us29 = phi i64 [ %inc52.us.us.us39, %for.inc.us.us.us36 ], [ 0, %for.body15.lr.ph.us ]
  %p.013.us.us.us30 = phi ptr [ %incdec.ptr.us.us.us38, %for.inc.us.us.us36 ], [ %call10.us, %for.body15.lr.ph.us ]
  call void @llvm.dbg.value(metadata i64 %x.016.us.us.us29, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %p.013.us.us.us30, metadata !3221, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 0, metadata !3226, metadata !DIExpression()), !dbg !3272
  %green.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %p.013.us.us.us30, i64 0, i32 1, !dbg !3290
  %11 = load i16, ptr %green.us.us.us, align 2, !dbg !3290, !tbaa !1341
  %conv20.us.us.us = uitofp i16 %11 to double, !dbg !3292
  %sub21.us.us.us = fsub double %conv20.us.us.us, %target.0, !dbg !3293
  %12 = tail call double @llvm.fabs.f64(double %sub21.us.us.us), !dbg !3294
  %cmp22.us.us.us = fcmp olt double %12, 5.000000e-01, !dbg !3295
  call void @llvm.dbg.value(metadata i1 undef, metadata !3226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3272
  br i1 %cmp22.us.us.us, label %if.then41.us.us.us32, label %for.inc.us.us.us36, !dbg !3280

if.then41.us.us.us32:                             ; preds = %for.body15.us.us.us28
  %conv48.us.us.us33 = sitofp i64 %x.016.us.us.us29 to double, !dbg !3281
  %call50.us.us.us34 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.192, double noundef %conv48.us.us.us33, double noundef %conv49.us) #12, !dbg !3284
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3230
  %.pre90 = load i64, ptr %columns, align 8, !dbg !3268, !tbaa !1309
  br label %for.inc.us.us.us36, !dbg !3285

for.inc.us.us.us36:                               ; preds = %if.then41.us.us.us32, %for.body15.us.us.us28
  %13 = phi i64 [ %.pre90, %if.then41.us.us.us32 ], [ %10, %for.body15.us.us.us28 ], !dbg !3268
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %incdec.ptr.us.us.us38 = getelementptr inbounds %struct._PixelPacket, ptr %p.013.us.us.us30, i64 1, !dbg !3286
  call void @llvm.dbg.value(metadata ptr undef, metadata !3221, metadata !DIExpression()), !dbg !3256
  %inc52.us.us.us39 = add nuw nsw i64 %x.016.us.us.us29, 1, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %inc52.us.us.us39, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us38, metadata !3221, metadata !DIExpression()), !dbg !3256
  %cmp14.us.us.us40 = icmp slt i64 %inc52.us.us.us39, %13, !dbg !3269
  br i1 %cmp14.us.us.us40, label %for.body15.us.us.us28, label %for.end.us, !dbg !3270, !llvm.loop !3288

for.body15.us.us.us46:                            ; preds = %for.body15.lr.ph.us, %for.inc.us.us.us54
  %14 = phi i64 [ %17, %for.inc.us.us.us54 ], [ %5, %for.body15.lr.ph.us ]
  %x.016.us.us.us47 = phi i64 [ %inc52.us.us.us57, %for.inc.us.us.us54 ], [ 0, %for.body15.lr.ph.us ]
  %p.013.us.us.us48 = phi ptr [ %incdec.ptr.us.us.us56, %for.inc.us.us.us54 ], [ %call10.us, %for.body15.lr.ph.us ]
  call void @llvm.dbg.value(metadata i64 %x.016.us.us.us47, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %p.013.us.us.us48, metadata !3221, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 0, metadata !3226, metadata !DIExpression()), !dbg !3272
  %15 = load i16, ptr %p.013.us.us.us48, align 2, !dbg !3296, !tbaa !1349
  %conv26.us.us.us = uitofp i16 %15 to double, !dbg !3298
  %sub27.us.us.us = fsub double %conv26.us.us.us, %target.0, !dbg !3299
  %16 = tail call double @llvm.fabs.f64(double %sub27.us.us.us), !dbg !3300
  %cmp28.us.us.us = fcmp olt double %16, 5.000000e-01, !dbg !3301
  call void @llvm.dbg.value(metadata i1 undef, metadata !3226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3272
  br i1 %cmp28.us.us.us, label %if.then41.us.us.us50, label %for.inc.us.us.us54, !dbg !3280

if.then41.us.us.us50:                             ; preds = %for.body15.us.us.us46
  %conv48.us.us.us51 = sitofp i64 %x.016.us.us.us47 to double, !dbg !3281
  %call50.us.us.us52 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.192, double noundef %conv48.us.us.us51, double noundef %conv49.us) #12, !dbg !3284
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3230
  %.pre89 = load i64, ptr %columns, align 8, !dbg !3268, !tbaa !1309
  br label %for.inc.us.us.us54, !dbg !3285

for.inc.us.us.us54:                               ; preds = %if.then41.us.us.us50, %for.body15.us.us.us46
  %17 = phi i64 [ %.pre89, %if.then41.us.us.us50 ], [ %14, %for.body15.us.us.us46 ], !dbg !3268
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %incdec.ptr.us.us.us56 = getelementptr inbounds %struct._PixelPacket, ptr %p.013.us.us.us48, i64 1, !dbg !3286
  call void @llvm.dbg.value(metadata ptr undef, metadata !3221, metadata !DIExpression()), !dbg !3256
  %inc52.us.us.us57 = add nuw nsw i64 %x.016.us.us.us47, 1, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %inc52.us.us.us57, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us56, metadata !3221, metadata !DIExpression()), !dbg !3256
  %cmp14.us.us.us58 = icmp slt i64 %inc52.us.us.us57, %17, !dbg !3269
  br i1 %cmp14.us.us.us58, label %for.body15.us.us.us46, label %for.end.us, !dbg !3270, !llvm.loop !3288

for.body15.us.us.us64:                            ; preds = %for.body15.lr.ph.us, %for.inc.us.us.us72
  %18 = phi i64 [ %21, %for.inc.us.us.us72 ], [ %5, %for.body15.lr.ph.us ]
  %x.016.us.us.us65 = phi i64 [ %inc52.us.us.us75, %for.inc.us.us.us72 ], [ 0, %for.body15.lr.ph.us ]
  %p.013.us.us.us66 = phi ptr [ %incdec.ptr.us.us.us74, %for.inc.us.us.us72 ], [ %call10.us, %for.body15.lr.ph.us ]
  call void @llvm.dbg.value(metadata i64 %x.016.us.us.us65, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %p.013.us.us.us66, metadata !3221, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 0, metadata !3226, metadata !DIExpression()), !dbg !3272
  %opacity.us.us.us = getelementptr inbounds %struct._PixelPacket, ptr %p.013.us.us.us66, i64 0, i32 3, !dbg !3302
  %19 = load i16, ptr %opacity.us.us.us, align 2, !dbg !3302, !tbaa !1358
  %conv32.us.us.us = uitofp i16 %19 to double, !dbg !3304
  %sub33.us.us.us = fsub double %conv32.us.us.us, %target.0, !dbg !3305
  %20 = tail call double @llvm.fabs.f64(double %sub33.us.us.us), !dbg !3306
  %cmp34.us.us.us = fcmp olt double %20, 5.000000e-01, !dbg !3307
  call void @llvm.dbg.value(metadata i1 undef, metadata !3226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3272
  br i1 %cmp34.us.us.us, label %if.then41.us.us.us68, label %for.inc.us.us.us72, !dbg !3280

if.then41.us.us.us68:                             ; preds = %for.body15.us.us.us64
  %conv48.us.us.us69 = sitofp i64 %x.016.us.us.us65 to double, !dbg !3281
  %call50.us.us.us70 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.192, double noundef %conv48.us.us.us69, double noundef %conv49.us) #12, !dbg !3284
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3230
  %.pre88 = load i64, ptr %columns, align 8, !dbg !3268, !tbaa !1309
  br label %for.inc.us.us.us72, !dbg !3285

for.inc.us.us.us72:                               ; preds = %if.then41.us.us.us68, %for.body15.us.us.us64
  %21 = phi i64 [ %.pre88, %if.then41.us.us.us68 ], [ %18, %for.body15.us.us.us64 ], !dbg !3268
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %incdec.ptr.us.us.us74 = getelementptr inbounds %struct._PixelPacket, ptr %p.013.us.us.us66, i64 1, !dbg !3286
  call void @llvm.dbg.value(metadata ptr undef, metadata !3221, metadata !DIExpression()), !dbg !3256
  %inc52.us.us.us75 = add nuw nsw i64 %x.016.us.us.us65, 1, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %inc52.us.us.us75, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us.us.us74, metadata !3221, metadata !DIExpression()), !dbg !3256
  %cmp14.us.us.us76 = icmp slt i64 %inc52.us.us.us75, %21, !dbg !3269
  br i1 %cmp14.us.us.us76, label %for.body15.us.us.us64, label %for.end.us, !dbg !3270, !llvm.loop !3288

for.cond:                                         ; preds = %for.end
  %inc63 = add nuw nsw i64 %y.025, 1, !dbg !3260
  call void @llvm.dbg.value(metadata i64 undef, metadata !3220, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %22 = load i64, ptr %rows, align 8, !dbg !3252, !tbaa !1306
  %cmp = icmp slt i64 %inc63, %22, !dbg !3253
  br i1 %cmp, label %for.body, label %for.end64, !dbg !3254, !llvm.loop !3261

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %23 = phi i64 [ %35, %for.cond ], [ %.pre87, %for.body.lr.ph ], !dbg !3251
  %y.025 = phi i64 [ %inc63, %for.cond ], [ 0, %for.body.lr.ph ]
  %n.024 = phi i64 [ %n.1.lcssa, %for.cond ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %y.025, metadata !3220, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %n.024, metadata !3219, metadata !DIExpression()), !dbg !3230
  %call10 = tail call ptr @GetVirtualPixels(ptr noundef nonnull %image, i64 noundef 0, i64 noundef %y.025, i64 noundef %23, i64 noundef 1, ptr noundef %call9) #12, !dbg !3255
  call void @llvm.dbg.value(metadata ptr %call10, metadata !3221, metadata !DIExpression()), !dbg !3256
  %cmp11 = icmp eq ptr %call10, null, !dbg !3257
  br i1 %cmp11, label %for.end64, label %for.cond12.preheader, !dbg !3259

for.cond12.preheader:                             ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 0, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %call10, metadata !3221, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %n.024, metadata !3219, metadata !DIExpression()), !dbg !3230
  %24 = load i64, ptr %columns, align 8, !dbg !3268, !tbaa !1309
  %cmp1411 = icmp sgt i64 %24, 0, !dbg !3269
  br i1 %cmp1411, label %for.body15.lr.ph, label %for.end, !dbg !3270

for.body15.lr.ph:                                 ; preds = %for.cond12.preheader
  %conv49 = sitofp i64 %y.025 to double
  br label %for.body15, !dbg !3270

for.body15:                                       ; preds = %for.body15.lr.ph, %for.inc
  %25 = phi i64 [ %24, %for.body15.lr.ph ], [ %34, %for.inc ]
  %x.016 = phi i64 [ 0, %for.body15.lr.ph ], [ %inc52, %for.inc ]
  %p.013 = phi ptr [ %call10, %for.body15.lr.ph ], [ %incdec.ptr, %for.inc ]
  %n.112 = phi i64 [ %n.024, %for.body15.lr.ph ], [ %n.2, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %x.016, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %p.013, metadata !3221, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %n.112, metadata !3219, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 0, metadata !3226, metadata !DIExpression()), !dbg !3272
  switch i32 %channel, label %for.inc [
    i32 1, label %sw.epilog38
    i32 2, label %sw.bb19
    i32 4, label %sw.bb25
    i32 8, label %sw.bb31
  ], !dbg !3271

sw.bb19:                                          ; preds = %for.body15
  %green = getelementptr inbounds %struct._PixelPacket, ptr %p.013, i64 0, i32 1, !dbg !3290
  %26 = load i16, ptr %green, align 2, !dbg !3290, !tbaa !1341
  %conv20 = uitofp i16 %26 to double, !dbg !3292
  %sub21 = fsub double %conv20, %target.0, !dbg !3293
  %27 = tail call double @llvm.fabs.f64(double %sub21), !dbg !3294
  %cmp22 = fcmp olt double %27, 5.000000e-01, !dbg !3295
  call void @llvm.dbg.value(metadata i1 %cmp17, metadata !3226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3272
  br i1 %cmp22, label %if.then41, label %for.inc, !dbg !3280

sw.bb25:                                          ; preds = %for.body15
  %28 = load i16, ptr %p.013, align 2, !dbg !3296, !tbaa !1349
  %conv26 = uitofp i16 %28 to double, !dbg !3298
  %sub27 = fsub double %conv26, %target.0, !dbg !3299
  %29 = tail call double @llvm.fabs.f64(double %sub27), !dbg !3300
  %cmp28 = fcmp olt double %29, 5.000000e-01, !dbg !3301
  call void @llvm.dbg.value(metadata i1 %cmp17, metadata !3226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3272
  br i1 %cmp28, label %if.then41, label %for.inc, !dbg !3280

sw.bb31:                                          ; preds = %for.body15
  %opacity = getelementptr inbounds %struct._PixelPacket, ptr %p.013, i64 0, i32 3, !dbg !3302
  %30 = load i16, ptr %opacity, align 2, !dbg !3302, !tbaa !1358
  %conv32 = uitofp i16 %30 to double, !dbg !3304
  %sub33 = fsub double %conv32, %target.0, !dbg !3305
  %31 = tail call double @llvm.fabs.f64(double %sub33), !dbg !3306
  %cmp34 = fcmp olt double %31, 5.000000e-01, !dbg !3307
  call void @llvm.dbg.value(metadata i1 %cmp17, metadata !3226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3272
  br i1 %cmp34, label %if.then41, label %for.inc, !dbg !3280

sw.epilog38:                                      ; preds = %for.body15
  %red = getelementptr inbounds %struct._PixelPacket, ptr %p.013, i64 0, i32 2, !dbg !3273
  %32 = load i16, ptr %red, align 2, !dbg !3273, !tbaa !1333
  %conv = uitofp i16 %32 to double, !dbg !3276
  %sub = fsub double %conv, %target.0, !dbg !3277
  %33 = tail call double @llvm.fabs.f64(double %sub), !dbg !3278
  %cmp17 = fcmp olt double %33, 5.000000e-01, !dbg !3279
  call void @llvm.dbg.value(metadata i1 %cmp17, metadata !3226, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3272
  br i1 %cmp17, label %if.then41, label %for.inc, !dbg !3280

if.then41:                                        ; preds = %sw.bb19, %sw.bb25, %sw.bb31, %sw.epilog38
  %cmp44.not = icmp slt i64 %n.112, %max_locations
  br i1 %cmp44.not, label %if.end47, label %for.end, !dbg !3308

if.end47:                                         ; preds = %if.then41
  %conv48 = sitofp i64 %x.016 to double, !dbg !3281
  %call50 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.192, double noundef %conv48, double noundef %conv49) #12, !dbg !3284
  %inc = add nsw i64 %n.112, 1, !dbg !3310
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3219, metadata !DIExpression()), !dbg !3230
  %.pre86 = load i64, ptr %columns, align 8, !dbg !3268, !tbaa !1309
  br label %for.inc, !dbg !3285

for.inc:                                          ; preds = %sw.epilog38, %if.end47, %for.body15, %sw.bb31, %sw.bb25, %sw.bb19
  %34 = phi i64 [ %.pre86, %if.end47 ], [ %25, %sw.epilog38 ], [ %25, %for.body15 ], [ %25, %sw.bb31 ], [ %25, %sw.bb25 ], [ %25, %sw.bb19 ], !dbg !3268
  %n.2 = phi i64 [ %inc, %if.end47 ], [ %n.112, %sw.epilog38 ], [ %n.112, %for.body15 ], [ %n.112, %sw.bb31 ], [ %n.112, %sw.bb25 ], [ %n.112, %sw.bb19 ], !dbg !3230
  call void @llvm.dbg.value(metadata i64 %n.2, metadata !3219, metadata !DIExpression()), !dbg !3230
  %incdec.ptr = getelementptr inbounds %struct._PixelPacket, ptr %p.013, i64 1, !dbg !3286
  call void @llvm.dbg.value(metadata ptr undef, metadata !3221, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %inc52 = add nuw nsw i64 %x.016, 1, !dbg !3287
  call void @llvm.dbg.value(metadata i64 %inc52, metadata !3225, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3221, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 %n.2, metadata !3219, metadata !DIExpression()), !dbg !3230
  %cmp14 = icmp slt i64 %inc52, %34, !dbg !3269
  br i1 %cmp14, label %for.body15, label %for.end, !dbg !3270, !llvm.loop !3288

for.end:                                          ; preds = %for.inc, %if.then41, %for.cond12.preheader
  %35 = phi i64 [ %24, %for.cond12.preheader ], [ %25, %if.then41 ], [ %34, %for.inc ], !dbg !3263
  %n.1.lcssa = phi i64 [ %n.024, %for.cond12.preheader ], [ %n.112, %if.then41 ], [ %n.2, %for.inc ], !dbg !3311
  %x.0.lcssa = phi i64 [ 0, %for.cond12.preheader ], [ %x.016, %if.then41 ], [ %inc52, %for.inc ], !dbg !3265
  call void @llvm.dbg.value(metadata i64 %n.1.lcssa, metadata !3219, metadata !DIExpression()), !dbg !3230
  %cmp54 = icmp slt i64 %x.0.lcssa, %35, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %y.025, metadata !3220, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3230
  br i1 %cmp54, label %for.end64, label %for.cond, !dbg !3267

for.end64:                                        ; preds = %for.cond, %for.body, %for.end, %for.cond.us, %for.body.us, %for.end.us, %sw.epilog
  call void @llvm.dbg.value(metadata i64 undef, metadata !3219, metadata !DIExpression()), !dbg !3230
  %call65 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.26) #12, !dbg !3312
  ret void, !dbg !3313
}

declare !dbg !3314 ptr @RelinquishMagickMemory(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind readonly
declare !dbg !3318 noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare !dbg !3321 double @GetElapsedTime(ptr noundef) local_unnamed_addr #3

declare !dbg !3325 double @GetUserTime(ptr noundef) local_unnamed_addr #3

declare !dbg !3326 void @GetTimerInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !3329 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3332 ptr @GetPreviousImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !3336 ptr @GetNextImageInList(ptr noundef) local_unnamed_addr #3

declare !dbg !3337 ptr @CommandOptionToMnemonic(i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3341 i64 @FormatMagickSize(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3344 i64 @GetBlobSize(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #1

; Function Attrs: nofree nounwind
declare !dbg !3348 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !3349 ptr @GetVirtualPixels(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3353 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !3356 i32 @GetImageType(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3359 i32 @SignatureImage(ptr noundef) local_unnamed_addr #3

declare !dbg !3363 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3367 ptr @GetMagickInfo(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3370 ptr @GetMagickDescription(ptr noundef) local_unnamed_addr #3

declare !dbg !3373 ptr @GetMagickMimeType(ptr noundef) local_unnamed_addr #3

declare !dbg !3374 ptr @GetImageChannelStatistics(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3377 ptr @GetImageChannelMoments(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3380 ptr @GetImageChannelPerceptualHash(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3383 ptr @GetImageChannelFeatures(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3386 i64 @GetImageDepth(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintChannelMoments(ptr noundef %file, i32 noundef %channel, ptr noundef %name, double noundef %scale, ptr nocapture noundef readonly %channel_moments) unnamed_addr #0 !dbg !3389 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !3395, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i32 %channel, metadata !3396, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %name, metadata !3397, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata double %scale, metadata !3398, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata ptr %channel_moments, metadata !3399, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.declare(metadata ptr @__const.PrintChannelMoments.powers, metadata !3400, metadata !DIExpression()), !dbg !3407
  %call = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.194, ptr noundef %name) #12, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %call, metadata !3405, metadata !DIExpression()), !dbg !3406
  %call1 = tail call i32 @GetMagickPrecision() #12, !dbg !3409
  %idxprom = zext i32 %channel to i64, !dbg !3410
  %arrayidx = getelementptr inbounds %struct._ChannelMoments, ptr %channel_moments, i64 %idxprom, !dbg !3410
  %centroid = getelementptr inbounds %struct._ChannelMoments, ptr %channel_moments, i64 %idxprom, i32 1, !dbg !3411
  %0 = load double, ptr %centroid, align 8, !dbg !3412, !tbaa !3413
  %call2 = tail call i32 @GetMagickPrecision() #12, !dbg !3416
  %y = getelementptr inbounds %struct._ChannelMoments, ptr %channel_moments, i64 %idxprom, i32 1, i32 1, !dbg !3417
  %1 = load double, ptr %y, align 8, !dbg !3417, !tbaa !3418
  %call6 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.195, i32 noundef %call1, double noundef %0, i32 noundef %call2, double noundef %1) #12, !dbg !3419
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call, i64 %call6), metadata !3405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3406
  %call7 = tail call i32 @GetMagickPrecision() #12, !dbg !3420
  %ellipse_axis = getelementptr inbounds %struct._ChannelMoments, ptr %channel_moments, i64 %idxprom, i32 2, !dbg !3421
  %2 = load double, ptr %ellipse_axis, align 8, !dbg !3422, !tbaa !3423
  %call11 = tail call i32 @GetMagickPrecision() #12, !dbg !3424
  %y15 = getelementptr inbounds %struct._ChannelMoments, ptr %channel_moments, i64 %idxprom, i32 2, i32 1, !dbg !3425
  %3 = load double, ptr %y15, align 8, !dbg !3425, !tbaa !3426
  %call16 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.196, i32 noundef %call7, double noundef %2, i32 noundef %call11, double noundef %3) #12, !dbg !3427
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call, i64 %call16, i64 %call6), metadata !3405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3406
  %call18 = tail call i32 @GetMagickPrecision() #12, !dbg !3428
  %ellipse_angle = getelementptr inbounds %struct._ChannelMoments, ptr %channel_moments, i64 %idxprom, i32 3, !dbg !3429
  %4 = load double, ptr %ellipse_angle, align 8, !dbg !3429, !tbaa !3430
  %call21 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.197, i32 noundef %call18, double noundef %4) #12, !dbg !3431
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call, i64 %call21, i64 %call16, i64 %call6), metadata !3405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3406
  %call23 = tail call i32 @GetMagickPrecision() #12, !dbg !3432
  %ellipse_eccentricity = getelementptr inbounds %struct._ChannelMoments, ptr %channel_moments, i64 %idxprom, i32 4, !dbg !3433
  %5 = load double, ptr %ellipse_eccentricity, align 8, !dbg !3433, !tbaa !3434
  %call26 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.198, i32 noundef %call23, double noundef %5) #12, !dbg !3435
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call, i64 %call26, i64 %call21, i64 %call16, i64 %call6), metadata !3405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3406
  %call28 = tail call i32 @GetMagickPrecision() #12, !dbg !3436
  %ellipse_intensity = getelementptr inbounds %struct._ChannelMoments, ptr %channel_moments, i64 %idxprom, i32 5, !dbg !3437
  %6 = load double, ptr %ellipse_intensity, align 8, !dbg !3437, !tbaa !3438
  %mul = fmul double %6, %scale, !dbg !3439
  %call33 = tail call i32 @GetMagickPrecision() #12, !dbg !3440
  %7 = load double, ptr %ellipse_intensity, align 8, !dbg !3441, !tbaa !3438
  %call37 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.199, i32 noundef %call28, double noundef %mul, i32 noundef %call33, double noundef %7) #12, !dbg !3442
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call, i64 %call37, i64 %call26, i64 %call21, i64 %call16, i64 %call6), metadata !3405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 5, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3406
  call void @llvm.dbg.value(metadata i64 0, metadata !3404, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 poison, metadata !3405, metadata !DIExpression()), !dbg !3406
  br label %for.body, !dbg !3443

for.body:                                         ; preds = %entry, %for.body
  %i.01 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.01, metadata !3404, metadata !DIExpression()), !dbg !3406
  %conv = sitofp i64 %i.01 to double, !dbg !3445
  %add39 = fadd double %conv, 1.000000e+00, !dbg !3447
  %call40 = tail call i32 @GetMagickPrecision() #12, !dbg !3448
  %arrayidx43 = getelementptr inbounds [32 x double], ptr %arrayidx, i64 0, i64 %i.01, !dbg !3449
  %8 = load double, ptr %arrayidx43, align 8, !dbg !3449, !tbaa !2323
  %arrayidx44 = getelementptr inbounds [8 x double], ptr @__const.PrintChannelMoments.powers, i64 0, i64 %i.01, !dbg !3450
  %9 = load double, ptr %arrayidx44, align 8, !dbg !3450, !tbaa !2323
  %call45 = tail call double @pow(double noundef %scale, double noundef %9) #12, !dbg !3451
  %div = fdiv double %8, %call45, !dbg !3452
  %call46 = tail call i32 @GetMagickPrecision() #12, !dbg !3453
  %10 = load double, ptr %arrayidx43, align 8, !dbg !3454, !tbaa !2323
  %call51 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.200, double noundef %add39, i32 noundef %call40, double noundef %div, i32 noundef %call46, double noundef %10) #12, !dbg !3455
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 %call51), metadata !3405, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !3406
  %inc = add nuw nsw i64 %i.01, 1, !dbg !3456
  call void @llvm.dbg.value(metadata i64 poison, metadata !3405, metadata !DIExpression()), !dbg !3406
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3404, metadata !DIExpression()), !dbg !3406
  %exitcond.not = icmp eq i64 %inc, 8, !dbg !3457
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !3443, !llvm.loop !3458

for.end:                                          ; preds = %for.body
  ret void, !dbg !3460
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintChannelFeatures(ptr noundef %file, i32 noundef %channel, ptr noundef %name, ptr noundef readonly %channel_features) unnamed_addr #0 !dbg !3461 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !3467, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 %channel, metadata !3468, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr %name, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata ptr %channel_features, metadata !3470, metadata !DIExpression()), !dbg !3472
  %call = tail call i32 @GetMagickPrecision() #12, !dbg !3473
  %idxprom = zext i32 %channel to i64, !dbg !3473
  %arrayidx = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, !dbg !3473
  %0 = load double, ptr %arrayidx, align 8, !dbg !3473, !tbaa !2323
  %call2 = tail call i32 @GetMagickPrecision() #12, !dbg !3473
  %arrayidx6 = getelementptr inbounds [4 x double], ptr %arrayidx, i64 0, i64 1, !dbg !3473
  %1 = load double, ptr %arrayidx6, align 8, !dbg !3473, !tbaa !2323
  %call7 = tail call i32 @GetMagickPrecision() #12, !dbg !3473
  %arrayidx11 = getelementptr inbounds [4 x double], ptr %arrayidx, i64 0, i64 2, !dbg !3473
  %2 = load double, ptr %arrayidx11, align 8, !dbg !3473, !tbaa !2323
  %call12 = tail call i32 @GetMagickPrecision() #12, !dbg !3473
  %arrayidx16 = getelementptr inbounds [4 x double], ptr %arrayidx, i64 0, i64 3, !dbg !3473
  %3 = load double, ptr %arrayidx16, align 8, !dbg !3473, !tbaa !2323
  %call17 = tail call i32 @GetMagickPrecision() #12, !dbg !3473
  %4 = load double, ptr %arrayidx, align 8, !dbg !3473, !tbaa !2323
  %5 = load double, ptr %arrayidx6, align 8, !dbg !3473, !tbaa !2323
  %add = fadd double %4, %5, !dbg !3473
  %6 = load double, ptr %arrayidx11, align 8, !dbg !3473, !tbaa !2323
  %add30 = fadd double %add, %6, !dbg !3473
  %7 = load double, ptr %arrayidx16, align 8, !dbg !3473, !tbaa !2323
  %add35 = fadd double %add30, %7, !dbg !3473
  %div = fmul double %add35, 2.500000e-01, !dbg !3473
  %call36 = tail call i32 @GetMagickPrecision() #12, !dbg !3474
  %contrast = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 1, !dbg !3474
  %8 = load double, ptr %contrast, align 8, !dbg !3474, !tbaa !2323
  %call40 = tail call i32 @GetMagickPrecision() #12, !dbg !3474
  %arrayidx44 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 1, i64 1, !dbg !3474
  %9 = load double, ptr %arrayidx44, align 8, !dbg !3474, !tbaa !2323
  %call45 = tail call i32 @GetMagickPrecision() #12, !dbg !3474
  %arrayidx49 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 1, i64 2, !dbg !3474
  %10 = load double, ptr %arrayidx49, align 8, !dbg !3474, !tbaa !2323
  %call50 = tail call i32 @GetMagickPrecision() #12, !dbg !3474
  %arrayidx54 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 1, i64 3, !dbg !3474
  %11 = load double, ptr %arrayidx54, align 8, !dbg !3474, !tbaa !2323
  %call55 = tail call i32 @GetMagickPrecision() #12, !dbg !3474
  %12 = load double, ptr %contrast, align 8, !dbg !3474, !tbaa !2323
  %13 = load double, ptr %arrayidx44, align 8, !dbg !3474, !tbaa !2323
  %add64 = fadd double %12, %13, !dbg !3474
  %14 = load double, ptr %arrayidx49, align 8, !dbg !3474, !tbaa !2323
  %add69 = fadd double %add64, %14, !dbg !3474
  %15 = load double, ptr %arrayidx54, align 8, !dbg !3474, !tbaa !2323
  %add74 = fadd double %add69, %15, !dbg !3474
  %div75 = fmul double %add74, 2.500000e-01, !dbg !3474
  %call76 = tail call i32 @GetMagickPrecision() #12, !dbg !3475
  %correlation = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 2, !dbg !3475
  %16 = load double, ptr %correlation, align 8, !dbg !3475, !tbaa !2323
  %call80 = tail call i32 @GetMagickPrecision() #12, !dbg !3475
  %arrayidx84 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 2, i64 1, !dbg !3475
  %17 = load double, ptr %arrayidx84, align 8, !dbg !3475, !tbaa !2323
  %call85 = tail call i32 @GetMagickPrecision() #12, !dbg !3475
  %arrayidx89 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 2, i64 2, !dbg !3475
  %18 = load double, ptr %arrayidx89, align 8, !dbg !3475, !tbaa !2323
  %call90 = tail call i32 @GetMagickPrecision() #12, !dbg !3475
  %arrayidx94 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 2, i64 3, !dbg !3475
  %19 = load double, ptr %arrayidx94, align 8, !dbg !3475, !tbaa !2323
  %call95 = tail call i32 @GetMagickPrecision() #12, !dbg !3475
  %20 = load double, ptr %correlation, align 8, !dbg !3475, !tbaa !2323
  %21 = load double, ptr %arrayidx84, align 8, !dbg !3475, !tbaa !2323
  %add104 = fadd double %20, %21, !dbg !3475
  %22 = load double, ptr %arrayidx89, align 8, !dbg !3475, !tbaa !2323
  %add109 = fadd double %add104, %22, !dbg !3475
  %23 = load double, ptr %arrayidx94, align 8, !dbg !3475, !tbaa !2323
  %add114 = fadd double %add109, %23, !dbg !3475
  %div115 = fmul double %add114, 2.500000e-01, !dbg !3475
  %call116 = tail call i32 @GetMagickPrecision() #12, !dbg !3476
  %variance_sum_of_squares = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 3, !dbg !3476
  %24 = load double, ptr %variance_sum_of_squares, align 8, !dbg !3476, !tbaa !2323
  %call120 = tail call i32 @GetMagickPrecision() #12, !dbg !3476
  %arrayidx124 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 3, i64 1, !dbg !3476
  %25 = load double, ptr %arrayidx124, align 8, !dbg !3476, !tbaa !2323
  %call125 = tail call i32 @GetMagickPrecision() #12, !dbg !3476
  %arrayidx129 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 3, i64 2, !dbg !3476
  %26 = load double, ptr %arrayidx129, align 8, !dbg !3476, !tbaa !2323
  %call130 = tail call i32 @GetMagickPrecision() #12, !dbg !3476
  %arrayidx134 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 3, i64 3, !dbg !3476
  %27 = load double, ptr %arrayidx134, align 8, !dbg !3476, !tbaa !2323
  %call135 = tail call i32 @GetMagickPrecision() #12, !dbg !3476
  %28 = load double, ptr %variance_sum_of_squares, align 8, !dbg !3476, !tbaa !2323
  %29 = load double, ptr %arrayidx124, align 8, !dbg !3476, !tbaa !2323
  %add144 = fadd double %28, %29, !dbg !3476
  %30 = load double, ptr %arrayidx129, align 8, !dbg !3476, !tbaa !2323
  %add149 = fadd double %add144, %30, !dbg !3476
  %31 = load double, ptr %arrayidx134, align 8, !dbg !3476, !tbaa !2323
  %add154 = fadd double %add149, %31, !dbg !3476
  %div155 = fmul double %add154, 2.500000e-01, !dbg !3476
  %call156 = tail call i32 @GetMagickPrecision() #12, !dbg !3477
  %inverse_difference_moment = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 4, !dbg !3477
  %32 = load double, ptr %inverse_difference_moment, align 8, !dbg !3477, !tbaa !2323
  %call160 = tail call i32 @GetMagickPrecision() #12, !dbg !3477
  %arrayidx164 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 4, i64 1, !dbg !3477
  %33 = load double, ptr %arrayidx164, align 8, !dbg !3477, !tbaa !2323
  %call165 = tail call i32 @GetMagickPrecision() #12, !dbg !3477
  %arrayidx169 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 4, i64 2, !dbg !3477
  %34 = load double, ptr %arrayidx169, align 8, !dbg !3477, !tbaa !2323
  %call170 = tail call i32 @GetMagickPrecision() #12, !dbg !3477
  %arrayidx174 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 4, i64 3, !dbg !3477
  %35 = load double, ptr %arrayidx174, align 8, !dbg !3477, !tbaa !2323
  %call175 = tail call i32 @GetMagickPrecision() #12, !dbg !3477
  %36 = load double, ptr %inverse_difference_moment, align 8, !dbg !3477, !tbaa !2323
  %37 = load double, ptr %arrayidx164, align 8, !dbg !3477, !tbaa !2323
  %add184 = fadd double %36, %37, !dbg !3477
  %38 = load double, ptr %arrayidx169, align 8, !dbg !3477, !tbaa !2323
  %add189 = fadd double %add184, %38, !dbg !3477
  %39 = load double, ptr %arrayidx174, align 8, !dbg !3477, !tbaa !2323
  %add194 = fadd double %add189, %39, !dbg !3477
  %div195 = fmul double %add194, 2.500000e-01, !dbg !3477
  %call196 = tail call i32 @GetMagickPrecision() #12, !dbg !3478
  %sum_average = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 5, !dbg !3478
  %40 = load double, ptr %sum_average, align 8, !dbg !3478, !tbaa !2323
  %call200 = tail call i32 @GetMagickPrecision() #12, !dbg !3478
  %arrayidx204 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 5, i64 1, !dbg !3478
  %41 = load double, ptr %arrayidx204, align 8, !dbg !3478, !tbaa !2323
  %call205 = tail call i32 @GetMagickPrecision() #12, !dbg !3478
  %arrayidx209 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 5, i64 2, !dbg !3478
  %42 = load double, ptr %arrayidx209, align 8, !dbg !3478, !tbaa !2323
  %call210 = tail call i32 @GetMagickPrecision() #12, !dbg !3478
  %arrayidx214 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 5, i64 3, !dbg !3478
  %43 = load double, ptr %arrayidx214, align 8, !dbg !3478, !tbaa !2323
  %call215 = tail call i32 @GetMagickPrecision() #12, !dbg !3478
  %44 = load double, ptr %sum_average, align 8, !dbg !3478, !tbaa !2323
  %45 = load double, ptr %arrayidx204, align 8, !dbg !3478, !tbaa !2323
  %add224 = fadd double %44, %45, !dbg !3478
  %46 = load double, ptr %arrayidx209, align 8, !dbg !3478, !tbaa !2323
  %add229 = fadd double %add224, %46, !dbg !3478
  %47 = load double, ptr %arrayidx214, align 8, !dbg !3478, !tbaa !2323
  %add234 = fadd double %add229, %47, !dbg !3478
  %div235 = fmul double %add234, 2.500000e-01, !dbg !3478
  %call236 = tail call i32 @GetMagickPrecision() #12, !dbg !3479
  %sum_variance = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 6, !dbg !3479
  %48 = load double, ptr %sum_variance, align 8, !dbg !3479, !tbaa !2323
  %call240 = tail call i32 @GetMagickPrecision() #12, !dbg !3479
  %arrayidx244 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 6, i64 1, !dbg !3479
  %49 = load double, ptr %arrayidx244, align 8, !dbg !3479, !tbaa !2323
  %call245 = tail call i32 @GetMagickPrecision() #12, !dbg !3479
  %arrayidx249 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 6, i64 2, !dbg !3479
  %50 = load double, ptr %arrayidx249, align 8, !dbg !3479, !tbaa !2323
  %call250 = tail call i32 @GetMagickPrecision() #12, !dbg !3479
  %arrayidx254 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 6, i64 3, !dbg !3479
  %51 = load double, ptr %arrayidx254, align 8, !dbg !3479, !tbaa !2323
  %call255 = tail call i32 @GetMagickPrecision() #12, !dbg !3479
  %52 = load double, ptr %sum_variance, align 8, !dbg !3479, !tbaa !2323
  %53 = load double, ptr %arrayidx244, align 8, !dbg !3479, !tbaa !2323
  %add264 = fadd double %52, %53, !dbg !3479
  %54 = load double, ptr %arrayidx249, align 8, !dbg !3479, !tbaa !2323
  %add269 = fadd double %add264, %54, !dbg !3479
  %55 = load double, ptr %arrayidx254, align 8, !dbg !3479, !tbaa !2323
  %add274 = fadd double %add269, %55, !dbg !3479
  %div275 = fmul double %add274, 2.500000e-01, !dbg !3479
  %call276 = tail call i32 @GetMagickPrecision() #12, !dbg !3480
  %sum_entropy = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 7, !dbg !3480
  %56 = load double, ptr %sum_entropy, align 8, !dbg !3480, !tbaa !2323
  %call280 = tail call i32 @GetMagickPrecision() #12, !dbg !3480
  %arrayidx284 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 7, i64 1, !dbg !3480
  %57 = load double, ptr %arrayidx284, align 8, !dbg !3480, !tbaa !2323
  %call285 = tail call i32 @GetMagickPrecision() #12, !dbg !3480
  %arrayidx289 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 7, i64 2, !dbg !3480
  %58 = load double, ptr %arrayidx289, align 8, !dbg !3480, !tbaa !2323
  %call290 = tail call i32 @GetMagickPrecision() #12, !dbg !3480
  %arrayidx294 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 7, i64 3, !dbg !3480
  %59 = load double, ptr %arrayidx294, align 8, !dbg !3480, !tbaa !2323
  %call295 = tail call i32 @GetMagickPrecision() #12, !dbg !3480
  %60 = load double, ptr %sum_entropy, align 8, !dbg !3480, !tbaa !2323
  %61 = load double, ptr %arrayidx284, align 8, !dbg !3480, !tbaa !2323
  %add304 = fadd double %60, %61, !dbg !3480
  %62 = load double, ptr %arrayidx289, align 8, !dbg !3480, !tbaa !2323
  %add309 = fadd double %add304, %62, !dbg !3480
  %63 = load double, ptr %arrayidx294, align 8, !dbg !3480, !tbaa !2323
  %add314 = fadd double %add309, %63, !dbg !3480
  %div315 = fmul double %add314, 2.500000e-01, !dbg !3480
  %call316 = tail call i32 @GetMagickPrecision() #12, !dbg !3481
  %entropy = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 8, !dbg !3481
  %64 = load double, ptr %entropy, align 8, !dbg !3481, !tbaa !2323
  %call320 = tail call i32 @GetMagickPrecision() #12, !dbg !3481
  %arrayidx324 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 8, i64 1, !dbg !3481
  %65 = load double, ptr %arrayidx324, align 8, !dbg !3481, !tbaa !2323
  %call325 = tail call i32 @GetMagickPrecision() #12, !dbg !3481
  %arrayidx329 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 8, i64 2, !dbg !3481
  %66 = load double, ptr %arrayidx329, align 8, !dbg !3481, !tbaa !2323
  %call330 = tail call i32 @GetMagickPrecision() #12, !dbg !3481
  %arrayidx334 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 8, i64 3, !dbg !3481
  %67 = load double, ptr %arrayidx334, align 8, !dbg !3481, !tbaa !2323
  %call335 = tail call i32 @GetMagickPrecision() #12, !dbg !3481
  %68 = load double, ptr %entropy, align 8, !dbg !3481, !tbaa !2323
  %69 = load double, ptr %arrayidx324, align 8, !dbg !3481, !tbaa !2323
  %add344 = fadd double %68, %69, !dbg !3481
  %70 = load double, ptr %arrayidx329, align 8, !dbg !3481, !tbaa !2323
  %add349 = fadd double %add344, %70, !dbg !3481
  %71 = load double, ptr %arrayidx334, align 8, !dbg !3481, !tbaa !2323
  %add354 = fadd double %add349, %71, !dbg !3481
  %div355 = fmul double %add354, 2.500000e-01, !dbg !3481
  %call356 = tail call i32 @GetMagickPrecision() #12, !dbg !3482
  %difference_variance = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 9, !dbg !3482
  %72 = load double, ptr %difference_variance, align 8, !dbg !3482, !tbaa !2323
  %call360 = tail call i32 @GetMagickPrecision() #12, !dbg !3482
  %arrayidx364 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 9, i64 1, !dbg !3482
  %73 = load double, ptr %arrayidx364, align 8, !dbg !3482, !tbaa !2323
  %call365 = tail call i32 @GetMagickPrecision() #12, !dbg !3482
  %arrayidx369 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 9, i64 2, !dbg !3482
  %74 = load double, ptr %arrayidx369, align 8, !dbg !3482, !tbaa !2323
  %call370 = tail call i32 @GetMagickPrecision() #12, !dbg !3482
  %arrayidx374 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 9, i64 3, !dbg !3482
  %75 = load double, ptr %arrayidx374, align 8, !dbg !3482, !tbaa !2323
  %call375 = tail call i32 @GetMagickPrecision() #12, !dbg !3482
  %76 = load double, ptr %difference_variance, align 8, !dbg !3482, !tbaa !2323
  %77 = load double, ptr %arrayidx364, align 8, !dbg !3482, !tbaa !2323
  %add384 = fadd double %76, %77, !dbg !3482
  %78 = load double, ptr %arrayidx369, align 8, !dbg !3482, !tbaa !2323
  %add389 = fadd double %add384, %78, !dbg !3482
  %79 = load double, ptr %arrayidx374, align 8, !dbg !3482, !tbaa !2323
  %add394 = fadd double %add389, %79, !dbg !3482
  %div395 = fmul double %add394, 2.500000e-01, !dbg !3482
  %call396 = tail call i32 @GetMagickPrecision() #12, !dbg !3483
  %difference_entropy = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 10, !dbg !3483
  %80 = load double, ptr %difference_entropy, align 8, !dbg !3483, !tbaa !2323
  %call400 = tail call i32 @GetMagickPrecision() #12, !dbg !3483
  %arrayidx404 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 10, i64 1, !dbg !3483
  %81 = load double, ptr %arrayidx404, align 8, !dbg !3483, !tbaa !2323
  %call405 = tail call i32 @GetMagickPrecision() #12, !dbg !3483
  %arrayidx409 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 10, i64 2, !dbg !3483
  %82 = load double, ptr %arrayidx409, align 8, !dbg !3483, !tbaa !2323
  %call410 = tail call i32 @GetMagickPrecision() #12, !dbg !3483
  %arrayidx414 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 10, i64 3, !dbg !3483
  %83 = load double, ptr %arrayidx414, align 8, !dbg !3483, !tbaa !2323
  %call415 = tail call i32 @GetMagickPrecision() #12, !dbg !3483
  %84 = load double, ptr %difference_entropy, align 8, !dbg !3483, !tbaa !2323
  %85 = load double, ptr %arrayidx404, align 8, !dbg !3483, !tbaa !2323
  %add424 = fadd double %84, %85, !dbg !3483
  %86 = load double, ptr %arrayidx409, align 8, !dbg !3483, !tbaa !2323
  %add429 = fadd double %add424, %86, !dbg !3483
  %87 = load double, ptr %arrayidx414, align 8, !dbg !3483, !tbaa !2323
  %add434 = fadd double %add429, %87, !dbg !3483
  %div435 = fmul double %add434, 2.500000e-01, !dbg !3483
  %call436 = tail call i32 @GetMagickPrecision() #12, !dbg !3484
  %measure_of_correlation_1 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 11, !dbg !3484
  %88 = load double, ptr %measure_of_correlation_1, align 8, !dbg !3484, !tbaa !2323
  %call440 = tail call i32 @GetMagickPrecision() #12, !dbg !3484
  %arrayidx444 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 11, i64 1, !dbg !3484
  %89 = load double, ptr %arrayidx444, align 8, !dbg !3484, !tbaa !2323
  %call445 = tail call i32 @GetMagickPrecision() #12, !dbg !3484
  %arrayidx449 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 11, i64 2, !dbg !3484
  %90 = load double, ptr %arrayidx449, align 8, !dbg !3484, !tbaa !2323
  %call450 = tail call i32 @GetMagickPrecision() #12, !dbg !3484
  %arrayidx454 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 11, i64 3, !dbg !3484
  %91 = load double, ptr %arrayidx454, align 8, !dbg !3484, !tbaa !2323
  %call455 = tail call i32 @GetMagickPrecision() #12, !dbg !3484
  %92 = load double, ptr %measure_of_correlation_1, align 8, !dbg !3484, !tbaa !2323
  %93 = load double, ptr %arrayidx444, align 8, !dbg !3484, !tbaa !2323
  %add464 = fadd double %92, %93, !dbg !3484
  %94 = load double, ptr %arrayidx449, align 8, !dbg !3484, !tbaa !2323
  %add469 = fadd double %add464, %94, !dbg !3484
  %95 = load double, ptr %arrayidx454, align 8, !dbg !3484, !tbaa !2323
  %add474 = fadd double %add469, %95, !dbg !3484
  %div475 = fmul double %add474, 2.500000e-01, !dbg !3484
  %call476 = tail call i32 @GetMagickPrecision() #12, !dbg !3485
  %measure_of_correlation_2 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 12, !dbg !3485
  %96 = load double, ptr %measure_of_correlation_2, align 8, !dbg !3485, !tbaa !2323
  %call480 = tail call i32 @GetMagickPrecision() #12, !dbg !3485
  %arrayidx484 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 12, i64 1, !dbg !3485
  %97 = load double, ptr %arrayidx484, align 8, !dbg !3485, !tbaa !2323
  %call485 = tail call i32 @GetMagickPrecision() #12, !dbg !3485
  %arrayidx489 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 12, i64 2, !dbg !3485
  %98 = load double, ptr %arrayidx489, align 8, !dbg !3485, !tbaa !2323
  %call490 = tail call i32 @GetMagickPrecision() #12, !dbg !3485
  %arrayidx494 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 12, i64 3, !dbg !3485
  %99 = load double, ptr %arrayidx494, align 8, !dbg !3485, !tbaa !2323
  %call495 = tail call i32 @GetMagickPrecision() #12, !dbg !3485
  %100 = load double, ptr %measure_of_correlation_2, align 8, !dbg !3485, !tbaa !2323
  %101 = load double, ptr %arrayidx484, align 8, !dbg !3485, !tbaa !2323
  %add504 = fadd double %100, %101, !dbg !3485
  %102 = load double, ptr %arrayidx489, align 8, !dbg !3485, !tbaa !2323
  %add509 = fadd double %add504, %102, !dbg !3485
  %103 = load double, ptr %arrayidx494, align 8, !dbg !3485, !tbaa !2323
  %add514 = fadd double %add509, %103, !dbg !3485
  %div515 = fmul double %add514, 2.500000e-01, !dbg !3485
  %call516 = tail call i32 @GetMagickPrecision() #12, !dbg !3486
  %maximum_correlation_coefficient = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 13, !dbg !3486
  %104 = load double, ptr %maximum_correlation_coefficient, align 8, !dbg !3486, !tbaa !2323
  %call520 = tail call i32 @GetMagickPrecision() #12, !dbg !3486
  %arrayidx524 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 13, i64 1, !dbg !3486
  %105 = load double, ptr %arrayidx524, align 8, !dbg !3486, !tbaa !2323
  %call525 = tail call i32 @GetMagickPrecision() #12, !dbg !3486
  %arrayidx529 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 13, i64 2, !dbg !3486
  %106 = load double, ptr %arrayidx529, align 8, !dbg !3486, !tbaa !2323
  %call530 = tail call i32 @GetMagickPrecision() #12, !dbg !3486
  %arrayidx534 = getelementptr inbounds %struct._ChannelFeatures, ptr %channel_features, i64 %idxprom, i32 13, i64 3, !dbg !3486
  %107 = load double, ptr %arrayidx534, align 8, !dbg !3486, !tbaa !2323
  %call535 = tail call i32 @GetMagickPrecision() #12, !dbg !3486
  %108 = load double, ptr %maximum_correlation_coefficient, align 8, !dbg !3486, !tbaa !2323
  %109 = load double, ptr %arrayidx524, align 8, !dbg !3486, !tbaa !2323
  %add544 = fadd double %108, %109, !dbg !3486
  %110 = load double, ptr %arrayidx529, align 8, !dbg !3486, !tbaa !2323
  %add549 = fadd double %add544, %110, !dbg !3486
  %111 = load double, ptr %arrayidx534, align 8, !dbg !3486, !tbaa !2323
  %add554 = fadd double %add549, %111, !dbg !3486
  %div555 = fmul double %add554, 2.500000e-01, !dbg !3486
  %call556 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %file, ptr noundef nonnull @.str.202, ptr noundef %name, i32 noundef %call, double noundef %0, i32 noundef %call2, double noundef %1, i32 noundef %call7, double noundef %2, i32 noundef %call12, double noundef %3, i32 noundef %call17, double noundef %div, i32 noundef %call36, double noundef %8, i32 noundef %call40, double noundef %9, i32 noundef %call45, double noundef %10, i32 noundef %call50, double noundef %11, i32 noundef %call55, double noundef %div75, i32 noundef %call76, double noundef %16, i32 noundef %call80, double noundef %17, i32 noundef %call85, double noundef %18, i32 noundef %call90, double noundef %19, i32 noundef %call95, double noundef %div115, i32 noundef %call116, double noundef %24, i32 noundef %call120, double noundef %25, i32 noundef %call125, double noundef %26, i32 noundef %call130, double noundef %27, i32 noundef %call135, double noundef %div155, i32 noundef %call156, double noundef %32, i32 noundef %call160, double noundef %33, i32 noundef %call165, double noundef %34, i32 noundef %call170, double noundef %35, i32 noundef %call175, double noundef %div195, i32 noundef %call196, double noundef %40, i32 noundef %call200, double noundef %41, i32 noundef %call205, double noundef %42, i32 noundef %call210, double noundef %43, i32 noundef %call215, double noundef %div235, i32 noundef %call236, double noundef %48, i32 noundef %call240, double noundef %49, i32 noundef %call245, double noundef %50, i32 noundef %call250, double noundef %51, i32 noundef %call255, double noundef %div275, i32 noundef %call276, double noundef %56, i32 noundef %call280, double noundef %57, i32 noundef %call285, double noundef %58, i32 noundef %call290, double noundef %59, i32 noundef %call295, double noundef %div315, i32 noundef %call316, double noundef %64, i32 noundef %call320, double noundef %65, i32 noundef %call325, double noundef %66, i32 noundef %call330, double noundef %67, i32 noundef %call335, double noundef %div355, i32 noundef %call356, double noundef %72, i32 noundef %call360, double noundef %73, i32 noundef %call365, double noundef %74, i32 noundef %call370, double noundef %75, i32 noundef %call375, double noundef %div395, i32 noundef %call396, double noundef %80, i32 noundef %call400, double noundef %81, i32 noundef %call405, double noundef %82, i32 noundef %call410, double noundef %83, i32 noundef %call415, double noundef %div435, i32 noundef %call436, double noundef %88, i32 noundef %call440, double noundef %89, i32 noundef %call445, double noundef %90, i32 noundef %call450, double noundef %91, i32 noundef %call455, double noundef %div475, i32 noundef %call476, double noundef %96, i32 noundef %call480, double noundef %97, i32 noundef %call485, double noundef %98, i32 noundef %call490, double noundef %99, i32 noundef %call495, double noundef %div515, i32 noundef %call516, double noundef %104, i32 noundef %call520, double noundef %105, i32 noundef %call525, double noundef %106, i32 noundef %call530, double noundef %107, i32 noundef %call535, double noundef %div555) #12, !dbg !3487
  call void @llvm.dbg.value(metadata i64 %call556, metadata !3471, metadata !DIExpression()), !dbg !3472
  ret void, !dbg !3488
}

declare !dbg !3489 i32 @GetMagickPrecision() local_unnamed_addr #3

declare !dbg !3492 double @GetImageTotalInkDensity(ptr noundef) local_unnamed_addr #3

declare !dbg !3496 ptr @GetVirtualIndexQueue(ptr noundef) local_unnamed_addr #3

declare !dbg !3499 void @GetMagickPixelPacket(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3502 i32 @QueryMagickColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3509 void @GetColorTuple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3512 i32 @IsHistogramImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3514 i64 @GetNumberColors(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3517 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #3

declare !dbg !3521 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3524 void @ConcatenateColorComponent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3527 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !3528 i32 @QueryColorname(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3531 i64 @GetImageListLength(ptr noundef) local_unnamed_addr #3

declare !dbg !3534 ptr @AcquireImageInfo() local_unnamed_addr #3

declare !dbg !3537 ptr @CloneString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3540 ptr @SetWarningHandler(ptr noundef) local_unnamed_addr #3

declare !dbg !3543 ptr @ReadImage(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3545 void @ResetImagePropertyIterator(ptr noundef) local_unnamed_addr #3

declare !dbg !3549 ptr @GetNextImageProperty(ptr noundef) local_unnamed_addr #3

declare !dbg !3552 ptr @GetImageProperty(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3553 ptr @DestroyImage(ptr noundef) local_unnamed_addr #3

declare !dbg !3556 ptr @DestroyImageInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !3559 i64 @FormatLocaleString(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !3563 noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !3566 void @ResetImageProfileIterator(ptr noundef) local_unnamed_addr #3

declare !dbg !3567 ptr @GetNextImageProfile(ptr noundef) local_unnamed_addr #3

declare !dbg !3568 ptr @GetImageProfile(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3571 i64 @GetStringInfoLength(ptr noundef) local_unnamed_addr #3

declare !dbg !3574 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare !dbg !3577 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #8

declare !dbg !3580 ptr @StringToList(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3583 noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !3587 ptr @DestroyString(ptr noundef) local_unnamed_addr #3

declare !dbg !3590 void @PrintStringInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !3593 void @ResetImageArtifactIterator(ptr noundef) local_unnamed_addr #3

declare !dbg !3594 ptr @GetNextImageArtifact(ptr noundef) local_unnamed_addr #3

declare !dbg !3595 void @ResetImageRegistryIterator() local_unnamed_addr #3

declare !dbg !3598 ptr @GetNextImageRegistry() local_unnamed_addr #3

declare !dbg !3601 ptr @GetImageRegistry(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #1

declare !dbg !3606 ptr @GetMagickVersion(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

declare !dbg !3610 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #3

declare !dbg !3613 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #10

declare !dbg !3617 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !3620 void @CatchException(ptr noundef) local_unnamed_addr #3

declare !dbg !3621 void @MagickCoreTerminus() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #11

declare !dbg !3622 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @pow(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind readonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind readnone willreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1080, !1081, !1082, !1083, !1084, !1085}
!llvm.ident = !{!1086}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !591, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/identify.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "629f2cf99085725232903d309f608ecd")
!2 = !{!3, !9, !14, !51, !76, !88, !96, !101, !136, !146, !152, !167, !238, !246, !252, !325, !342, !356, !368, !401, !423, !444, !450, !475, !487, !563, !575, !584}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 211, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick-type.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "169cac3440ee2afef5214a701fd1486e")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "MagickFalse", value: 0)
!8 = !DIEnumerator(name: "MagickTrue", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 204, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13}
!11 = !DIEnumerator(name: "UndefinedClass", value: 0)
!12 = !DIEnumerator(name: "DirectClass", value: 1)
!13 = !DIEnumerator(name: "PseudoClass", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 25, baseType: !5, size: 32, elements: !16)
!15 = !DIFile(filename: "apps/538.imagick_r/src/magick/colorspace.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4f032944b177fc61244445fe3a234334")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!17 = !DIEnumerator(name: "UndefinedColorspace", value: 0)
!18 = !DIEnumerator(name: "RGBColorspace", value: 1)
!19 = !DIEnumerator(name: "GRAYColorspace", value: 2)
!20 = !DIEnumerator(name: "TransparentColorspace", value: 3)
!21 = !DIEnumerator(name: "OHTAColorspace", value: 4)
!22 = !DIEnumerator(name: "LabColorspace", value: 5)
!23 = !DIEnumerator(name: "XYZColorspace", value: 6)
!24 = !DIEnumerator(name: "YCbCrColorspace", value: 7)
!25 = !DIEnumerator(name: "YCCColorspace", value: 8)
!26 = !DIEnumerator(name: "YIQColorspace", value: 9)
!27 = !DIEnumerator(name: "YPbPrColorspace", value: 10)
!28 = !DIEnumerator(name: "YUVColorspace", value: 11)
!29 = !DIEnumerator(name: "CMYKColorspace", value: 12)
!30 = !DIEnumerator(name: "sRGBColorspace", value: 13)
!31 = !DIEnumerator(name: "HSBColorspace", value: 14)
!32 = !DIEnumerator(name: "HSLColorspace", value: 15)
!33 = !DIEnumerator(name: "HWBColorspace", value: 16)
!34 = !DIEnumerator(name: "Rec601LumaColorspace", value: 17)
!35 = !DIEnumerator(name: "Rec601YCbCrColorspace", value: 18)
!36 = !DIEnumerator(name: "Rec709LumaColorspace", value: 19)
!37 = !DIEnumerator(name: "Rec709YCbCrColorspace", value: 20)
!38 = !DIEnumerator(name: "LogColorspace", value: 21)
!39 = !DIEnumerator(name: "CMYColorspace", value: 22)
!40 = !DIEnumerator(name: "LuvColorspace", value: 23)
!41 = !DIEnumerator(name: "HCLColorspace", value: 24)
!42 = !DIEnumerator(name: "LCHColorspace", value: 25)
!43 = !DIEnumerator(name: "LMSColorspace", value: 26)
!44 = !DIEnumerator(name: "LCHabColorspace", value: 27)
!45 = !DIEnumerator(name: "LCHuvColorspace", value: 28)
!46 = !DIEnumerator(name: "scRGBColorspace", value: 29)
!47 = !DIEnumerator(name: "HSIColorspace", value: 30)
!48 = !DIEnumerator(name: "HSVColorspace", value: 31)
!49 = !DIEnumerator(name: "HCLpColorspace", value: 32)
!50 = !DIEnumerator(name: "YDbDrColorspace", value: 33)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 25, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "apps/538.imagick_r/src/magick/compress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "359677d10ff2e6d05d86b0a6c5af7465")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!54 = !DIEnumerator(name: "UndefinedCompression", value: 0)
!55 = !DIEnumerator(name: "NoCompression", value: 1)
!56 = !DIEnumerator(name: "BZipCompression", value: 2)
!57 = !DIEnumerator(name: "DXT1Compression", value: 3)
!58 = !DIEnumerator(name: "DXT3Compression", value: 4)
!59 = !DIEnumerator(name: "DXT5Compression", value: 5)
!60 = !DIEnumerator(name: "FaxCompression", value: 6)
!61 = !DIEnumerator(name: "Group4Compression", value: 7)
!62 = !DIEnumerator(name: "JPEGCompression", value: 8)
!63 = !DIEnumerator(name: "JPEG2000Compression", value: 9)
!64 = !DIEnumerator(name: "LosslessJPEGCompression", value: 10)
!65 = !DIEnumerator(name: "LZWCompression", value: 11)
!66 = !DIEnumerator(name: "RLECompression", value: 12)
!67 = !DIEnumerator(name: "ZipCompression", value: 13)
!68 = !DIEnumerator(name: "ZipSCompression", value: 14)
!69 = !DIEnumerator(name: "PizCompression", value: 15)
!70 = !DIEnumerator(name: "Pxr24Compression", value: 16)
!71 = !DIEnumerator(name: "B44Compression", value: 17)
!72 = !DIEnumerator(name: "B44ACompression", value: 18)
!73 = !DIEnumerator(name: "LZMACompression", value: 19)
!74 = !DIEnumerator(name: "JBIG1Compression", value: 20)
!75 = !DIEnumerator(name: "JBIG2Compression", value: 21)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 75, baseType: !5, size: 32, elements: !78)
!77 = !DIFile(filename: "apps/538.imagick_r/src/magick/image.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9408eec9abffe54016aa20ae735786b")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87}
!79 = !DIEnumerator(name: "UndefinedOrientation", value: 0)
!80 = !DIEnumerator(name: "TopLeftOrientation", value: 1)
!81 = !DIEnumerator(name: "TopRightOrientation", value: 2)
!82 = !DIEnumerator(name: "BottomRightOrientation", value: 3)
!83 = !DIEnumerator(name: "BottomLeftOrientation", value: 4)
!84 = !DIEnumerator(name: "LeftTopOrientation", value: 5)
!85 = !DIEnumerator(name: "RightTopOrientation", value: 6)
!86 = !DIEnumerator(name: "RightBottomOrientation", value: 7)
!87 = !DIEnumerator(name: "LeftBottomOrientation", value: 8)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !89, line: 42, baseType: !5, size: 32, elements: !90)
!89 = !DIFile(filename: "apps/538.imagick_r/src/magick/profile.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fb61c1ae348c42a2b68ac081d4b39ee3")
!90 = !{!91, !92, !93, !94, !95}
!91 = !DIEnumerator(name: "UndefinedIntent", value: 0)
!92 = !DIEnumerator(name: "SaturationIntent", value: 1)
!93 = !DIEnumerator(name: "PerceptualIntent", value: 2)
!94 = !DIEnumerator(name: "AbsoluteIntent", value: 3)
!95 = !DIEnumerator(name: "RelativeIntent", value: 4)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 88, baseType: !5, size: 32, elements: !97)
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "UndefinedResolution", value: 0)
!99 = !DIEnumerator(name: "PixelsPerInchResolution", value: 1)
!100 = !DIEnumerator(name: "PixelsPerCentimeterResolution", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 32, baseType: !5, size: 32, elements: !103)
!102 = !DIFile(filename: "apps/538.imagick_r/src/magick/resample.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "722fed6aaf07c122ede72839e4dadc42")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135}
!104 = !DIEnumerator(name: "UndefinedFilter", value: 0)
!105 = !DIEnumerator(name: "PointFilter", value: 1)
!106 = !DIEnumerator(name: "BoxFilter", value: 2)
!107 = !DIEnumerator(name: "TriangleFilter", value: 3)
!108 = !DIEnumerator(name: "HermiteFilter", value: 4)
!109 = !DIEnumerator(name: "HanningFilter", value: 5)
!110 = !DIEnumerator(name: "HammingFilter", value: 6)
!111 = !DIEnumerator(name: "BlackmanFilter", value: 7)
!112 = !DIEnumerator(name: "GaussianFilter", value: 8)
!113 = !DIEnumerator(name: "QuadraticFilter", value: 9)
!114 = !DIEnumerator(name: "CubicFilter", value: 10)
!115 = !DIEnumerator(name: "CatromFilter", value: 11)
!116 = !DIEnumerator(name: "MitchellFilter", value: 12)
!117 = !DIEnumerator(name: "JincFilter", value: 13)
!118 = !DIEnumerator(name: "SincFilter", value: 14)
!119 = !DIEnumerator(name: "SincFastFilter", value: 15)
!120 = !DIEnumerator(name: "KaiserFilter", value: 16)
!121 = !DIEnumerator(name: "WelshFilter", value: 17)
!122 = !DIEnumerator(name: "ParzenFilter", value: 18)
!123 = !DIEnumerator(name: "BohmanFilter", value: 19)
!124 = !DIEnumerator(name: "BartlettFilter", value: 20)
!125 = !DIEnumerator(name: "LagrangeFilter", value: 21)
!126 = !DIEnumerator(name: "LanczosFilter", value: 22)
!127 = !DIEnumerator(name: "LanczosSharpFilter", value: 23)
!128 = !DIEnumerator(name: "Lanczos2Filter", value: 24)
!129 = !DIEnumerator(name: "Lanczos2SharpFilter", value: 25)
!130 = !DIEnumerator(name: "RobidouxFilter", value: 26)
!131 = !DIEnumerator(name: "RobidouxSharpFilter", value: 27)
!132 = !DIEnumerator(name: "CosineFilter", value: 28)
!133 = !DIEnumerator(name: "SplineFilter", value: 29)
!134 = !DIEnumerator(name: "LanczosRadiusFilter", value: 30)
!135 = !DIEnumerator(name: "SentinelFilter", value: 31)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 63, baseType: !5, size: 32, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145}
!138 = !DIEnumerator(name: "UndefinedInterlace", value: 0)
!139 = !DIEnumerator(name: "NoInterlace", value: 1)
!140 = !DIEnumerator(name: "LineInterlace", value: 2)
!141 = !DIEnumerator(name: "PlaneInterlace", value: 3)
!142 = !DIEnumerator(name: "PartitionInterlace", value: 4)
!143 = !DIEnumerator(name: "GIFInterlace", value: 5)
!144 = !DIEnumerator(name: "JPEGInterlace", value: 6)
!145 = !DIEnumerator(name: "PNGInterlace", value: 7)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !147, line: 30, baseType: !5, size: 32, elements: !148)
!147 = !DIFile(filename: "apps/538.imagick_r/src/magick/quantum.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "1f6eaed79d9a4eaf712cd066f6ff022a")
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "UndefinedEndian", value: 0)
!150 = !DIEnumerator(name: "LSBEndian", value: 1)
!151 = !DIEnumerator(name: "MSBEndian", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !153, line: 77, baseType: !5, size: 32, elements: !154)
!153 = !DIFile(filename: "apps/538.imagick_r/src/magick/geometry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "889bed117eb2a2fce6e2622bd130bcd2")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166}
!155 = !DIEnumerator(name: "UndefinedGravity", value: 0)
!156 = !DIEnumerator(name: "ForgetGravity", value: 0)
!157 = !DIEnumerator(name: "NorthWestGravity", value: 1)
!158 = !DIEnumerator(name: "NorthGravity", value: 2)
!159 = !DIEnumerator(name: "NorthEastGravity", value: 3)
!160 = !DIEnumerator(name: "WestGravity", value: 4)
!161 = !DIEnumerator(name: "CenterGravity", value: 5)
!162 = !DIEnumerator(name: "EastGravity", value: 6)
!163 = !DIEnumerator(name: "SouthWestGravity", value: 7)
!164 = !DIEnumerator(name: "SouthGravity", value: 8)
!165 = !DIEnumerator(name: "SouthEastGravity", value: 9)
!166 = !DIEnumerator(name: "StaticGravity", value: 10)
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !168, line: 25, baseType: !5, size: 32, elements: !169)
!168 = !DIFile(filename: "apps/538.imagick_r/src/magick/composite.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "837959ddb1dc628f80f1f9b5cdda1fb4")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!170 = !DIEnumerator(name: "UndefinedCompositeOp", value: 0)
!171 = !DIEnumerator(name: "NoCompositeOp", value: 1)
!172 = !DIEnumerator(name: "ModulusAddCompositeOp", value: 2)
!173 = !DIEnumerator(name: "AtopCompositeOp", value: 3)
!174 = !DIEnumerator(name: "BlendCompositeOp", value: 4)
!175 = !DIEnumerator(name: "BumpmapCompositeOp", value: 5)
!176 = !DIEnumerator(name: "ChangeMaskCompositeOp", value: 6)
!177 = !DIEnumerator(name: "ClearCompositeOp", value: 7)
!178 = !DIEnumerator(name: "ColorBurnCompositeOp", value: 8)
!179 = !DIEnumerator(name: "ColorDodgeCompositeOp", value: 9)
!180 = !DIEnumerator(name: "ColorizeCompositeOp", value: 10)
!181 = !DIEnumerator(name: "CopyBlackCompositeOp", value: 11)
!182 = !DIEnumerator(name: "CopyBlueCompositeOp", value: 12)
!183 = !DIEnumerator(name: "CopyCompositeOp", value: 13)
!184 = !DIEnumerator(name: "CopyCyanCompositeOp", value: 14)
!185 = !DIEnumerator(name: "CopyGreenCompositeOp", value: 15)
!186 = !DIEnumerator(name: "CopyMagentaCompositeOp", value: 16)
!187 = !DIEnumerator(name: "CopyOpacityCompositeOp", value: 17)
!188 = !DIEnumerator(name: "CopyRedCompositeOp", value: 18)
!189 = !DIEnumerator(name: "CopyYellowCompositeOp", value: 19)
!190 = !DIEnumerator(name: "DarkenCompositeOp", value: 20)
!191 = !DIEnumerator(name: "DstAtopCompositeOp", value: 21)
!192 = !DIEnumerator(name: "DstCompositeOp", value: 22)
!193 = !DIEnumerator(name: "DstInCompositeOp", value: 23)
!194 = !DIEnumerator(name: "DstOutCompositeOp", value: 24)
!195 = !DIEnumerator(name: "DstOverCompositeOp", value: 25)
!196 = !DIEnumerator(name: "DifferenceCompositeOp", value: 26)
!197 = !DIEnumerator(name: "DisplaceCompositeOp", value: 27)
!198 = !DIEnumerator(name: "DissolveCompositeOp", value: 28)
!199 = !DIEnumerator(name: "ExclusionCompositeOp", value: 29)
!200 = !DIEnumerator(name: "HardLightCompositeOp", value: 30)
!201 = !DIEnumerator(name: "HueCompositeOp", value: 31)
!202 = !DIEnumerator(name: "InCompositeOp", value: 32)
!203 = !DIEnumerator(name: "LightenCompositeOp", value: 33)
!204 = !DIEnumerator(name: "LinearLightCompositeOp", value: 34)
!205 = !DIEnumerator(name: "LuminizeCompositeOp", value: 35)
!206 = !DIEnumerator(name: "MinusDstCompositeOp", value: 36)
!207 = !DIEnumerator(name: "ModulateCompositeOp", value: 37)
!208 = !DIEnumerator(name: "MultiplyCompositeOp", value: 38)
!209 = !DIEnumerator(name: "OutCompositeOp", value: 39)
!210 = !DIEnumerator(name: "OverCompositeOp", value: 40)
!211 = !DIEnumerator(name: "OverlayCompositeOp", value: 41)
!212 = !DIEnumerator(name: "PlusCompositeOp", value: 42)
!213 = !DIEnumerator(name: "ReplaceCompositeOp", value: 43)
!214 = !DIEnumerator(name: "SaturateCompositeOp", value: 44)
!215 = !DIEnumerator(name: "ScreenCompositeOp", value: 45)
!216 = !DIEnumerator(name: "SoftLightCompositeOp", value: 46)
!217 = !DIEnumerator(name: "SrcAtopCompositeOp", value: 47)
!218 = !DIEnumerator(name: "SrcCompositeOp", value: 48)
!219 = !DIEnumerator(name: "SrcInCompositeOp", value: 49)
!220 = !DIEnumerator(name: "SrcOutCompositeOp", value: 50)
!221 = !DIEnumerator(name: "SrcOverCompositeOp", value: 51)
!222 = !DIEnumerator(name: "ModulusSubtractCompositeOp", value: 52)
!223 = !DIEnumerator(name: "ThresholdCompositeOp", value: 53)
!224 = !DIEnumerator(name: "XorCompositeOp", value: 54)
!225 = !DIEnumerator(name: "DivideDstCompositeOp", value: 55)
!226 = !DIEnumerator(name: "DistortCompositeOp", value: 56)
!227 = !DIEnumerator(name: "BlurCompositeOp", value: 57)
!228 = !DIEnumerator(name: "PegtopLightCompositeOp", value: 58)
!229 = !DIEnumerator(name: "VividLightCompositeOp", value: 59)
!230 = !DIEnumerator(name: "PinLightCompositeOp", value: 60)
!231 = !DIEnumerator(name: "LinearDodgeCompositeOp", value: 61)
!232 = !DIEnumerator(name: "LinearBurnCompositeOp", value: 62)
!233 = !DIEnumerator(name: "MathematicsCompositeOp", value: 63)
!234 = !DIEnumerator(name: "DivideSrcCompositeOp", value: 64)
!235 = !DIEnumerator(name: "MinusSrcCompositeOp", value: 65)
!236 = !DIEnumerator(name: "DarkenIntensityCompositeOp", value: 66)
!237 = !DIEnumerator(name: "LightenIntensityCompositeOp", value: 67)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !239, line: 25, baseType: !5, size: 32, elements: !240)
!239 = !DIFile(filename: "apps/538.imagick_r/src/magick/layer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9d504d6f7e210e092dfcf0dd62bc2dbe")
!240 = !{!241, !242, !243, !244, !245}
!241 = !DIEnumerator(name: "UnrecognizedDispose", value: 0)
!242 = !DIEnumerator(name: "UndefinedDispose", value: 0)
!243 = !DIEnumerator(name: "NoneDispose", value: 1)
!244 = !DIEnumerator(name: "BackgroundDispose", value: 2)
!245 = !DIEnumerator(name: "PreviousDispose", value: 3)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !247, line: 25, baseType: !5, size: 32, elements: !248)
!247 = !DIFile(filename: "apps/538.imagick_r/src/magick/timer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "28e2e01a3aeaa6ec566b3ffbac970563")
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "UndefinedTimerState", value: 0)
!250 = !DIEnumerator(name: "StoppedTimerState", value: 1)
!251 = !DIEnumerator(name: "RunningTimerState", value: 2)
!252 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !253, line: 28, baseType: !5, size: 32, elements: !254)
!253 = !DIFile(filename: "apps/538.imagick_r/src/magick/exception.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cd97c70c025a9cff45f4138c27a79124")
!254 = !{!255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!255 = !DIEnumerator(name: "UndefinedException", value: 0)
!256 = !DIEnumerator(name: "WarningException", value: 300)
!257 = !DIEnumerator(name: "ResourceLimitWarning", value: 300)
!258 = !DIEnumerator(name: "TypeWarning", value: 305)
!259 = !DIEnumerator(name: "OptionWarning", value: 310)
!260 = !DIEnumerator(name: "DelegateWarning", value: 315)
!261 = !DIEnumerator(name: "MissingDelegateWarning", value: 320)
!262 = !DIEnumerator(name: "CorruptImageWarning", value: 325)
!263 = !DIEnumerator(name: "FileOpenWarning", value: 330)
!264 = !DIEnumerator(name: "BlobWarning", value: 335)
!265 = !DIEnumerator(name: "StreamWarning", value: 340)
!266 = !DIEnumerator(name: "CacheWarning", value: 345)
!267 = !DIEnumerator(name: "CoderWarning", value: 350)
!268 = !DIEnumerator(name: "FilterWarning", value: 352)
!269 = !DIEnumerator(name: "ModuleWarning", value: 355)
!270 = !DIEnumerator(name: "DrawWarning", value: 360)
!271 = !DIEnumerator(name: "ImageWarning", value: 365)
!272 = !DIEnumerator(name: "WandWarning", value: 370)
!273 = !DIEnumerator(name: "RandomWarning", value: 375)
!274 = !DIEnumerator(name: "XServerWarning", value: 380)
!275 = !DIEnumerator(name: "MonitorWarning", value: 385)
!276 = !DIEnumerator(name: "RegistryWarning", value: 390)
!277 = !DIEnumerator(name: "ConfigureWarning", value: 395)
!278 = !DIEnumerator(name: "PolicyWarning", value: 399)
!279 = !DIEnumerator(name: "ErrorException", value: 400)
!280 = !DIEnumerator(name: "ResourceLimitError", value: 400)
!281 = !DIEnumerator(name: "TypeError", value: 405)
!282 = !DIEnumerator(name: "OptionError", value: 410)
!283 = !DIEnumerator(name: "DelegateError", value: 415)
!284 = !DIEnumerator(name: "MissingDelegateError", value: 420)
!285 = !DIEnumerator(name: "CorruptImageError", value: 425)
!286 = !DIEnumerator(name: "FileOpenError", value: 430)
!287 = !DIEnumerator(name: "BlobError", value: 435)
!288 = !DIEnumerator(name: "StreamError", value: 440)
!289 = !DIEnumerator(name: "CacheError", value: 445)
!290 = !DIEnumerator(name: "CoderError", value: 450)
!291 = !DIEnumerator(name: "FilterError", value: 452)
!292 = !DIEnumerator(name: "ModuleError", value: 455)
!293 = !DIEnumerator(name: "DrawError", value: 460)
!294 = !DIEnumerator(name: "ImageError", value: 465)
!295 = !DIEnumerator(name: "WandError", value: 470)
!296 = !DIEnumerator(name: "RandomError", value: 475)
!297 = !DIEnumerator(name: "XServerError", value: 480)
!298 = !DIEnumerator(name: "MonitorError", value: 485)
!299 = !DIEnumerator(name: "RegistryError", value: 490)
!300 = !DIEnumerator(name: "ConfigureError", value: 495)
!301 = !DIEnumerator(name: "PolicyError", value: 499)
!302 = !DIEnumerator(name: "FatalErrorException", value: 700)
!303 = !DIEnumerator(name: "ResourceLimitFatalError", value: 700)
!304 = !DIEnumerator(name: "TypeFatalError", value: 705)
!305 = !DIEnumerator(name: "OptionFatalError", value: 710)
!306 = !DIEnumerator(name: "DelegateFatalError", value: 715)
!307 = !DIEnumerator(name: "MissingDelegateFatalError", value: 720)
!308 = !DIEnumerator(name: "CorruptImageFatalError", value: 725)
!309 = !DIEnumerator(name: "FileOpenFatalError", value: 730)
!310 = !DIEnumerator(name: "BlobFatalError", value: 735)
!311 = !DIEnumerator(name: "StreamFatalError", value: 740)
!312 = !DIEnumerator(name: "CacheFatalError", value: 745)
!313 = !DIEnumerator(name: "CoderFatalError", value: 750)
!314 = !DIEnumerator(name: "FilterFatalError", value: 752)
!315 = !DIEnumerator(name: "ModuleFatalError", value: 755)
!316 = !DIEnumerator(name: "DrawFatalError", value: 760)
!317 = !DIEnumerator(name: "ImageFatalError", value: 765)
!318 = !DIEnumerator(name: "WandFatalError", value: 770)
!319 = !DIEnumerator(name: "RandomFatalError", value: 775)
!320 = !DIEnumerator(name: "XServerFatalError", value: 780)
!321 = !DIEnumerator(name: "MonitorFatalError", value: 785)
!322 = !DIEnumerator(name: "RegistryFatalError", value: 790)
!323 = !DIEnumerator(name: "ConfigureFatalError", value: 795)
!324 = !DIEnumerator(name: "PolicyFatalError", value: 799)
!325 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !326, line: 31, baseType: !5, size: 32, elements: !327)
!326 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b980ba059a4e0a748c02c115a1a7704f")
!327 = !{!328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!328 = !DIEnumerator(name: "UndefinedInterpolatePixel", value: 0)
!329 = !DIEnumerator(name: "AverageInterpolatePixel", value: 1)
!330 = !DIEnumerator(name: "BicubicInterpolatePixel", value: 2)
!331 = !DIEnumerator(name: "BilinearInterpolatePixel", value: 3)
!332 = !DIEnumerator(name: "FilterInterpolatePixel", value: 4)
!333 = !DIEnumerator(name: "IntegerInterpolatePixel", value: 5)
!334 = !DIEnumerator(name: "MeshInterpolatePixel", value: 6)
!335 = !DIEnumerator(name: "NearestNeighborInterpolatePixel", value: 7)
!336 = !DIEnumerator(name: "SplineInterpolatePixel", value: 8)
!337 = !DIEnumerator(name: "Average9InterpolatePixel", value: 9)
!338 = !DIEnumerator(name: "Average16InterpolatePixel", value: 10)
!339 = !DIEnumerator(name: "BlendInterpolatePixel", value: 11)
!340 = !DIEnumerator(name: "BackgroundInterpolatePixel", value: 12)
!341 = !DIEnumerator(name: "CatromInterpolatePixel", value: 13)
!342 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !77, line: 47, baseType: !5, size: 32, elements: !343)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!344 = !DIEnumerator(name: "UndefinedType", value: 0)
!345 = !DIEnumerator(name: "BilevelType", value: 1)
!346 = !DIEnumerator(name: "GrayscaleType", value: 2)
!347 = !DIEnumerator(name: "GrayscaleMatteType", value: 3)
!348 = !DIEnumerator(name: "PaletteType", value: 4)
!349 = !DIEnumerator(name: "PaletteMatteType", value: 5)
!350 = !DIEnumerator(name: "TrueColorType", value: 6)
!351 = !DIEnumerator(name: "TrueColorMatteType", value: 7)
!352 = !DIEnumerator(name: "ColorSeparationType", value: 8)
!353 = !DIEnumerator(name: "ColorSeparationMatteType", value: 9)
!354 = !DIEnumerator(name: "OptimizeType", value: 10)
!355 = !DIEnumerator(name: "PaletteBilevelMatteType", value: 11)
!356 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !326, line: 67, baseType: !5, size: 32, elements: !357)
!357 = !{!358, !359, !360, !361, !362, !363, !364, !365, !366, !367}
!358 = !DIEnumerator(name: "UndefinedPixelIntensityMethod", value: 0)
!359 = !DIEnumerator(name: "AveragePixelIntensityMethod", value: 1)
!360 = !DIEnumerator(name: "BrightnessPixelIntensityMethod", value: 2)
!361 = !DIEnumerator(name: "LightnessPixelIntensityMethod", value: 3)
!362 = !DIEnumerator(name: "Rec601LumaPixelIntensityMethod", value: 4)
!363 = !DIEnumerator(name: "Rec601LuminancePixelIntensityMethod", value: 5)
!364 = !DIEnumerator(name: "Rec709LumaPixelIntensityMethod", value: 6)
!365 = !DIEnumerator(name: "Rec709LuminancePixelIntensityMethod", value: 7)
!366 = !DIEnumerator(name: "RMSPixelIntensityMethod", value: 8)
!367 = !DIEnumerator(name: "MSPixelIntensityMethod", value: 9)
!368 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !369, line: 27, baseType: !5, size: 32, elements: !370)
!369 = !DIFile(filename: "apps/538.imagick_r/src/magick/effect.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "85233add4591bd6d6001c51d4fa6a546")
!370 = !{!371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!371 = !DIEnumerator(name: "UndefinedPreview", value: 0)
!372 = !DIEnumerator(name: "RotatePreview", value: 1)
!373 = !DIEnumerator(name: "ShearPreview", value: 2)
!374 = !DIEnumerator(name: "RollPreview", value: 3)
!375 = !DIEnumerator(name: "HuePreview", value: 4)
!376 = !DIEnumerator(name: "SaturationPreview", value: 5)
!377 = !DIEnumerator(name: "BrightnessPreview", value: 6)
!378 = !DIEnumerator(name: "GammaPreview", value: 7)
!379 = !DIEnumerator(name: "SpiffPreview", value: 8)
!380 = !DIEnumerator(name: "DullPreview", value: 9)
!381 = !DIEnumerator(name: "GrayscalePreview", value: 10)
!382 = !DIEnumerator(name: "QuantizePreview", value: 11)
!383 = !DIEnumerator(name: "DespecklePreview", value: 12)
!384 = !DIEnumerator(name: "ReduceNoisePreview", value: 13)
!385 = !DIEnumerator(name: "AddNoisePreview", value: 14)
!386 = !DIEnumerator(name: "SharpenPreview", value: 15)
!387 = !DIEnumerator(name: "BlurPreview", value: 16)
!388 = !DIEnumerator(name: "ThresholdPreview", value: 17)
!389 = !DIEnumerator(name: "EdgeDetectPreview", value: 18)
!390 = !DIEnumerator(name: "SpreadPreview", value: 19)
!391 = !DIEnumerator(name: "SolarizePreview", value: 20)
!392 = !DIEnumerator(name: "ShadePreview", value: 21)
!393 = !DIEnumerator(name: "RaisePreview", value: 22)
!394 = !DIEnumerator(name: "SegmentPreview", value: 23)
!395 = !DIEnumerator(name: "SwirlPreview", value: 24)
!396 = !DIEnumerator(name: "ImplodePreview", value: 25)
!397 = !DIEnumerator(name: "WavePreview", value: 26)
!398 = !DIEnumerator(name: "OilPaintPreview", value: 27)
!399 = !DIEnumerator(name: "CharcoalDrawingPreview", value: 28)
!400 = !DIEnumerator(name: "JPEGPreview", value: 29)
!401 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 177, baseType: !5, size: 32, elements: !402)
!402 = !{!403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422}
!403 = !DIEnumerator(name: "UndefinedChannel", value: 0)
!404 = !DIEnumerator(name: "RedChannel", value: 1)
!405 = !DIEnumerator(name: "GrayChannel", value: 1)
!406 = !DIEnumerator(name: "CyanChannel", value: 1)
!407 = !DIEnumerator(name: "GreenChannel", value: 2)
!408 = !DIEnumerator(name: "MagentaChannel", value: 2)
!409 = !DIEnumerator(name: "BlueChannel", value: 4)
!410 = !DIEnumerator(name: "YellowChannel", value: 4)
!411 = !DIEnumerator(name: "AlphaChannel", value: 8)
!412 = !DIEnumerator(name: "OpacityChannel", value: 8)
!413 = !DIEnumerator(name: "MatteChannel", value: 8)
!414 = !DIEnumerator(name: "BlackChannel", value: 32)
!415 = !DIEnumerator(name: "IndexChannel", value: 32)
!416 = !DIEnumerator(name: "CompositeChannels", value: 47)
!417 = !DIEnumerator(name: "AllChannels", value: 134217727)
!418 = !DIEnumerator(name: "TrueAlphaChannel", value: 64)
!419 = !DIEnumerator(name: "RGBChannels", value: 128)
!420 = !DIEnumerator(name: "GrayChannels", value: 128)
!421 = !DIEnumerator(name: "SyncChannels", value: 256)
!422 = !DIEnumerator(name: "DefaultChannels", value: 134217719)
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !424, line: 27, baseType: !5, size: 32, elements: !425)
!424 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache-view.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53261e86cf828449e5e37ac4d3650cdd")
!425 = !{!426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443}
!426 = !DIEnumerator(name: "UndefinedVirtualPixelMethod", value: 0)
!427 = !DIEnumerator(name: "BackgroundVirtualPixelMethod", value: 1)
!428 = !DIEnumerator(name: "ConstantVirtualPixelMethod", value: 2)
!429 = !DIEnumerator(name: "DitherVirtualPixelMethod", value: 3)
!430 = !DIEnumerator(name: "EdgeVirtualPixelMethod", value: 4)
!431 = !DIEnumerator(name: "MirrorVirtualPixelMethod", value: 5)
!432 = !DIEnumerator(name: "RandomVirtualPixelMethod", value: 6)
!433 = !DIEnumerator(name: "TileVirtualPixelMethod", value: 7)
!434 = !DIEnumerator(name: "TransparentVirtualPixelMethod", value: 8)
!435 = !DIEnumerator(name: "MaskVirtualPixelMethod", value: 9)
!436 = !DIEnumerator(name: "BlackVirtualPixelMethod", value: 10)
!437 = !DIEnumerator(name: "GrayVirtualPixelMethod", value: 11)
!438 = !DIEnumerator(name: "WhiteVirtualPixelMethod", value: 12)
!439 = !DIEnumerator(name: "HorizontalTileVirtualPixelMethod", value: 13)
!440 = !DIEnumerator(name: "VerticalTileVirtualPixelMethod", value: 14)
!441 = !DIEnumerator(name: "HorizontalTileEdgeVirtualPixelMethod", value: 15)
!442 = !DIEnumerator(name: "VerticalTileEdgeVirtualPixelMethod", value: 16)
!443 = !DIEnumerator(name: "CheckerTileVirtualPixelMethod", value: 17)
!444 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !445, line: 28, baseType: !5, size: 32, elements: !446)
!445 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!446 = !{!447, !448, !449}
!447 = !DIEnumerator(name: "UndefinedFormatType", value: 0)
!448 = !DIEnumerator(name: "ImplicitFormatType", value: 1)
!449 = !DIEnumerator(name: "ExplicitFormatType", value: 2)
!450 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !451, line: 34, baseType: !5, size: 32, elements: !452)
!451 = !DIFile(filename: "apps/538.imagick_r/src/magick/log.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f43965ef1d878ccbef125be1cb0cab")
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}
!453 = !DIEnumerator(name: "UndefinedEvents", value: 0)
!454 = !DIEnumerator(name: "NoEvents", value: 0)
!455 = !DIEnumerator(name: "TraceEvent", value: 1)
!456 = !DIEnumerator(name: "AnnotateEvent", value: 2)
!457 = !DIEnumerator(name: "BlobEvent", value: 4)
!458 = !DIEnumerator(name: "CacheEvent", value: 8)
!459 = !DIEnumerator(name: "CoderEvent", value: 16)
!460 = !DIEnumerator(name: "ConfigureEvent", value: 32)
!461 = !DIEnumerator(name: "DeprecateEvent", value: 64)
!462 = !DIEnumerator(name: "DrawEvent", value: 128)
!463 = !DIEnumerator(name: "ExceptionEvent", value: 256)
!464 = !DIEnumerator(name: "ImageEvent", value: 512)
!465 = !DIEnumerator(name: "LocaleEvent", value: 1024)
!466 = !DIEnumerator(name: "ModuleEvent", value: 2048)
!467 = !DIEnumerator(name: "PolicyEvent", value: 4096)
!468 = !DIEnumerator(name: "ResourceEvent", value: 8192)
!469 = !DIEnumerator(name: "TransformEvent", value: 16384)
!470 = !DIEnumerator(name: "UserEvent", value: 36864)
!471 = !DIEnumerator(name: "WandEvent", value: 65536)
!472 = !DIEnumerator(name: "X11Event", value: 131072)
!473 = !DIEnumerator(name: "AccelerateEvent", value: 262144)
!474 = !DIEnumerator(name: "AllEvents", value: 2147483647)
!475 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !476, line: 113, baseType: !5, size: 32, elements: !477)
!476 = !DIFile(filename: "apps/538.imagick_r/src/magick/statistic.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cc0a772b8e2f514bf6d24321fcc65365")
!477 = !{!478, !479, !480, !481, !482, !483, !484, !485, !486}
!478 = !DIEnumerator(name: "UndefinedStatistic", value: 0)
!479 = !DIEnumerator(name: "GradientStatistic", value: 1)
!480 = !DIEnumerator(name: "MaximumStatistic", value: 2)
!481 = !DIEnumerator(name: "MeanStatistic", value: 3)
!482 = !DIEnumerator(name: "MedianStatistic", value: 4)
!483 = !DIEnumerator(name: "MinimumStatistic", value: 5)
!484 = !DIEnumerator(name: "ModeStatistic", value: 6)
!485 = !DIEnumerator(name: "NonpeakStatistic", value: 7)
!486 = !DIEnumerator(name: "StandardDeviationStatistic", value: 8)
!487 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !488, line: 25, baseType: !489, size: 32, elements: !490)
!488 = !DIFile(filename: "apps/538.imagick_r/src/magick/option.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07bebb19d66188c5f61071b3cbeac6e1")
!489 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!491 = !DIEnumerator(name: "MagickUndefinedOptions", value: -1)
!492 = !DIEnumerator(name: "MagickAlignOptions", value: 0)
!493 = !DIEnumerator(name: "MagickAlphaOptions", value: 1)
!494 = !DIEnumerator(name: "MagickBooleanOptions", value: 2)
!495 = !DIEnumerator(name: "MagickCacheOptions", value: 3)
!496 = !DIEnumerator(name: "MagickChannelOptions", value: 4)
!497 = !DIEnumerator(name: "MagickClassOptions", value: 5)
!498 = !DIEnumerator(name: "MagickClipPathOptions", value: 6)
!499 = !DIEnumerator(name: "MagickCoderOptions", value: 7)
!500 = !DIEnumerator(name: "MagickColorOptions", value: 8)
!501 = !DIEnumerator(name: "MagickColorspaceOptions", value: 9)
!502 = !DIEnumerator(name: "MagickCommandOptions", value: 10)
!503 = !DIEnumerator(name: "MagickComposeOptions", value: 11)
!504 = !DIEnumerator(name: "MagickCompressOptions", value: 12)
!505 = !DIEnumerator(name: "MagickConfigureOptions", value: 13)
!506 = !DIEnumerator(name: "MagickDataTypeOptions", value: 14)
!507 = !DIEnumerator(name: "MagickDebugOptions", value: 15)
!508 = !DIEnumerator(name: "MagickDecorateOptions", value: 16)
!509 = !DIEnumerator(name: "MagickDelegateOptions", value: 17)
!510 = !DIEnumerator(name: "MagickDirectionOptions", value: 18)
!511 = !DIEnumerator(name: "MagickDisposeOptions", value: 19)
!512 = !DIEnumerator(name: "MagickDistortOptions", value: 20)
!513 = !DIEnumerator(name: "MagickDitherOptions", value: 21)
!514 = !DIEnumerator(name: "MagickEndianOptions", value: 22)
!515 = !DIEnumerator(name: "MagickEvaluateOptions", value: 23)
!516 = !DIEnumerator(name: "MagickFillRuleOptions", value: 24)
!517 = !DIEnumerator(name: "MagickFilterOptions", value: 25)
!518 = !DIEnumerator(name: "MagickFontOptions", value: 26)
!519 = !DIEnumerator(name: "MagickFontsOptions", value: 27)
!520 = !DIEnumerator(name: "MagickFormatOptions", value: 28)
!521 = !DIEnumerator(name: "MagickFunctionOptions", value: 29)
!522 = !DIEnumerator(name: "MagickGravityOptions", value: 30)
!523 = !DIEnumerator(name: "MagickIntentOptions", value: 31)
!524 = !DIEnumerator(name: "MagickInterlaceOptions", value: 32)
!525 = !DIEnumerator(name: "MagickInterpolateOptions", value: 33)
!526 = !DIEnumerator(name: "MagickKernelOptions", value: 34)
!527 = !DIEnumerator(name: "MagickLayerOptions", value: 35)
!528 = !DIEnumerator(name: "MagickLineCapOptions", value: 36)
!529 = !DIEnumerator(name: "MagickLineJoinOptions", value: 37)
!530 = !DIEnumerator(name: "MagickListOptions", value: 38)
!531 = !DIEnumerator(name: "MagickLocaleOptions", value: 39)
!532 = !DIEnumerator(name: "MagickLogEventOptions", value: 40)
!533 = !DIEnumerator(name: "MagickLogOptions", value: 41)
!534 = !DIEnumerator(name: "MagickMagicOptions", value: 42)
!535 = !DIEnumerator(name: "MagickMethodOptions", value: 43)
!536 = !DIEnumerator(name: "MagickMetricOptions", value: 44)
!537 = !DIEnumerator(name: "MagickMimeOptions", value: 45)
!538 = !DIEnumerator(name: "MagickModeOptions", value: 46)
!539 = !DIEnumerator(name: "MagickModuleOptions", value: 47)
!540 = !DIEnumerator(name: "MagickMorphologyOptions", value: 48)
!541 = !DIEnumerator(name: "MagickNoiseOptions", value: 49)
!542 = !DIEnumerator(name: "MagickOrientationOptions", value: 50)
!543 = !DIEnumerator(name: "MagickPixelIntensityOptions", value: 51)
!544 = !DIEnumerator(name: "MagickPolicyOptions", value: 52)
!545 = !DIEnumerator(name: "MagickPolicyDomainOptions", value: 53)
!546 = !DIEnumerator(name: "MagickPolicyRightsOptions", value: 54)
!547 = !DIEnumerator(name: "MagickPreviewOptions", value: 55)
!548 = !DIEnumerator(name: "MagickPrimitiveOptions", value: 56)
!549 = !DIEnumerator(name: "MagickQuantumFormatOptions", value: 57)
!550 = !DIEnumerator(name: "MagickResolutionOptions", value: 58)
!551 = !DIEnumerator(name: "MagickResourceOptions", value: 59)
!552 = !DIEnumerator(name: "MagickSparseColorOptions", value: 60)
!553 = !DIEnumerator(name: "MagickStatisticOptions", value: 61)
!554 = !DIEnumerator(name: "MagickStorageOptions", value: 62)
!555 = !DIEnumerator(name: "MagickStretchOptions", value: 63)
!556 = !DIEnumerator(name: "MagickStyleOptions", value: 64)
!557 = !DIEnumerator(name: "MagickThresholdOptions", value: 65)
!558 = !DIEnumerator(name: "MagickTypeOptions", value: 66)
!559 = !DIEnumerator(name: "MagickValidateOptions", value: 67)
!560 = !DIEnumerator(name: "MagickVirtualPixelOptions", value: 68)
!561 = !DIEnumerator(name: "MagickComplexOptions", value: 69)
!562 = !DIEnumerator(name: "MagickIntensityOptions", value: 70)
!563 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !564, line: 25, baseType: !5, size: 32, elements: !565)
!564 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!565 = !{!566, !567, !568, !569, !570, !571, !572, !573, !574}
!566 = !DIEnumerator(name: "UndefinedPath", value: 0)
!567 = !DIEnumerator(name: "MagickPath", value: 1)
!568 = !DIEnumerator(name: "RootPath", value: 2)
!569 = !DIEnumerator(name: "HeadPath", value: 3)
!570 = !DIEnumerator(name: "TailPath", value: 4)
!571 = !DIEnumerator(name: "BasePath", value: 5)
!572 = !DIEnumerator(name: "ExtensionPath", value: 6)
!573 = !DIEnumerator(name: "SubimagePath", value: 7)
!574 = !DIEnumerator(name: "CanonicalPath", value: 8)
!575 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !576, line: 28, baseType: !5, size: 32, elements: !577)
!576 = !DIFile(filename: "apps/538.imagick_r/src/magick/color.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f2d6c9912b898cc88c4750d63b727c87")
!577 = !{!578, !579, !580, !581, !582, !583}
!578 = !DIEnumerator(name: "UndefinedCompliance", value: 0)
!579 = !DIEnumerator(name: "NoCompliance", value: 0)
!580 = !DIEnumerator(name: "SVGCompliance", value: 1)
!581 = !DIEnumerator(name: "X11Compliance", value: 2)
!582 = !DIEnumerator(name: "XPMCompliance", value: 4)
!583 = !DIEnumerator(name: "AllCompliance", value: 2147483647)
!584 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !585, line: 25, baseType: !5, size: 32, elements: !586)
!585 = !DIFile(filename: "apps/538.imagick_r/src/magick/registry.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fee9ec3439d50d35877b8d14c6edadfb")
!586 = !{!587, !588, !589, !590}
!587 = !DIEnumerator(name: "UndefinedRegistryType", value: 0)
!588 = !DIEnumerator(name: "ImageRegistryType", value: 1)
!589 = !DIEnumerator(name: "ImageInfoRegistryType", value: 2)
!590 = !DIEnumerator(name: "StringRegistryType", value: 3)
!591 = !{!592, !593, !645, !654, !656, !657, !674, !663, !731, !882, !884, !1011, !1030, !1036, !700, !647, !695, !1058, !623, !601, !1060, !1065, !1074, !801, !1075, !489, !1076, !1078}
!592 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !595, line: 7, baseType: !596)
!595 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !597, line: 49, size: 1728, elements: !598)
!597 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!598 = !{!599, !600, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !616, !618, !619, !620, !624, !626, !628, !632, !635, !637, !640, !643, !644, !646, !649, !650}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !596, file: !597, line: 51, baseType: !489, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !596, file: !597, line: 54, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !596, file: !597, line: 55, baseType: !601, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !596, file: !597, line: 56, baseType: !601, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !596, file: !597, line: 57, baseType: !601, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !596, file: !597, line: 58, baseType: !601, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !596, file: !597, line: 59, baseType: !601, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !596, file: !597, line: 60, baseType: !601, size: 64, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !596, file: !597, line: 61, baseType: !601, size: 64, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !596, file: !597, line: 64, baseType: !601, size: 64, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !596, file: !597, line: 65, baseType: !601, size: 64, offset: 640)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !596, file: !597, line: 66, baseType: !601, size: 64, offset: 704)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !596, file: !597, line: 68, baseType: !614, size: 64, offset: 768)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !597, line: 36, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !596, file: !597, line: 70, baseType: !617, size: 64, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !596, file: !597, line: 72, baseType: !489, size: 32, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !596, file: !597, line: 73, baseType: !489, size: 32, offset: 928)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !596, file: !597, line: 74, baseType: !621, size: 64, offset: 960)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !622, line: 152, baseType: !623)
!622 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!623 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !596, file: !597, line: 77, baseType: !625, size: 16, offset: 1024)
!625 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !596, file: !597, line: 78, baseType: !627, size: 8, offset: 1040)
!627 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !596, file: !597, line: 79, baseType: !629, size: 8, offset: 1048)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 8, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 1)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !596, file: !597, line: 81, baseType: !633, size: 64, offset: 1088)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !597, line: 43, baseType: null)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !596, file: !597, line: 89, baseType: !636, size: 64, offset: 1152)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !622, line: 153, baseType: !623)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !596, file: !597, line: 91, baseType: !638, size: 64, offset: 1216)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !597, line: 37, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !596, file: !597, line: 92, baseType: !641, size: 64, offset: 1280)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !597, line: 38, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !596, file: !597, line: 93, baseType: !617, size: 64, offset: 1344)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !596, file: !597, line: 94, baseType: !645, size: 64, offset: 1408)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !596, file: !597, line: 95, baseType: !647, size: 64, offset: 1472)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !648, line: 46, baseType: !592)
!648 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !596, file: !597, line: 96, baseType: !489, size: 32, offset: 1536)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !596, file: !597, line: 98, baseType: !651, size: 160, offset: 1568)
!651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 160, elements: !652)
!652 = !{!653}
!653 = !DISubrange(count: 20)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !602)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "StatisticType", file: !476, line: 124, baseType: !475)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelStatistics", file: !476, line: 44, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChannelStatistics", file: !476, line: 27, size: 768, elements: !660)
!660 = !{!661, !662, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !659, file: !476, line: 30, baseType: !647, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "minima", scope: !659, file: !476, line: 33, baseType: !663, size: 64, offset: 64)
!663 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "maxima", scope: !659, file: !476, line: 34, baseType: !663, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sum", scope: !659, file: !476, line: 35, baseType: !663, size: 64, offset: 192)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sum_squared", scope: !659, file: !476, line: 36, baseType: !663, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sum_cubed", scope: !659, file: !476, line: 37, baseType: !663, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sum_fourth_power", scope: !659, file: !476, line: 38, baseType: !663, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "mean", scope: !659, file: !476, line: 39, baseType: !663, size: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "variance", scope: !659, file: !476, line: 40, baseType: !663, size: 64, offset: 512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "standard_deviation", scope: !659, file: !476, line: 41, baseType: !663, size: 64, offset: 576)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "kurtosis", scope: !659, file: !476, line: 42, baseType: !663, size: 64, offset: 640)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "skewness", scope: !659, file: !476, line: 43, baseType: !663, size: 64, offset: 704)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "Image", file: !4, line: 221, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Image", file: !77, line: 150, size: 105920, elements: !677)
!677 = !{!678, !680, !682, !684, !685, !687, !689, !690, !691, !692, !693, !694, !704, !705, !706, !707, !708, !722, !724, !725, !727, !728, !729, !730, !734, !735, !736, !744, !745, !746, !747, !748, !749, !751, !753, !755, !757, !759, !761, !763, !764, !765, !766, !767, !768, !769, !776, !791, !803, !804, !805, !806, !810, !814, !818, !819, !820, !821, !822, !839, !840, !842, !843, !853, !854, !856, !857, !858, !859, !860, !861, !863, !864, !865, !866, !867, !868, !869, !871, !872, !873, !874, !875, !879, !881}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !676, file: !77, line: 153, baseType: !679, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "ClassType", file: !4, line: 209, baseType: !9)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !676, file: !77, line: 156, baseType: !681, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "ColorspaceType", file: !15, line: 61, baseType: !14)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !676, file: !77, line: 159, baseType: !683, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompressionType", file: !52, line: 49, baseType: !51)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !676, file: !77, line: 162, baseType: !647, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !676, file: !77, line: 165, baseType: !686, size: 32, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "OrientationType", file: !77, line: 86, baseType: !76)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "taint", scope: !676, file: !77, line: 168, baseType: !688, size: 32, offset: 224)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !4, line: 215, baseType: !3)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !676, file: !77, line: 169, baseType: !688, size: 32, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "columns", scope: !676, file: !77, line: 172, baseType: !647, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !676, file: !77, line: 173, baseType: !647, size: 64, offset: 384)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !676, file: !77, line: 174, baseType: !647, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !676, file: !77, line: 175, baseType: !647, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "colormap", scope: !676, file: !77, line: 178, baseType: !695, size: 64, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelPacket", file: !326, line: 148, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PixelPacket", file: !326, line: 131, size: 64, elements: !698)
!698 = !{!699, !701, !702, !703}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !697, file: !326, line: 143, baseType: !700, size: 16)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "Quantum", file: !4, line: 93, baseType: !625)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !697, file: !326, line: 144, baseType: !700, size: 16, offset: 16)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !697, file: !326, line: 145, baseType: !700, size: 16, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !697, file: !326, line: 146, baseType: !700, size: 16, offset: 48)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !676, file: !77, line: 179, baseType: !696, size: 64, offset: 640)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !676, file: !77, line: 180, baseType: !696, size: 64, offset: 704)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !676, file: !77, line: 181, baseType: !696, size: 64, offset: 768)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "gamma", scope: !676, file: !77, line: 184, baseType: !663, size: 64, offset: 832)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "chromaticity", scope: !676, file: !77, line: 187, baseType: !709, size: 768, offset: 896)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChromaticityInfo", file: !77, line: 128, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChromaticityInfo", file: !77, line: 121, size: 768, elements: !711)
!711 = !{!712, !719, !720, !721}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "red_primary", scope: !710, file: !77, line: 124, baseType: !713, size: 192)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "PrimaryInfo", file: !77, line: 101, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PrimaryInfo", file: !77, line: 95, size: 192, elements: !715)
!715 = !{!716, !717, !718}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !714, file: !77, line: 98, baseType: !663, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !714, file: !77, line: 99, baseType: !663, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !714, file: !77, line: 100, baseType: !663, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "green_primary", scope: !710, file: !77, line: 125, baseType: !713, size: 192, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "blue_primary", scope: !710, file: !77, line: 126, baseType: !713, size: 192, offset: 384)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "white_point", scope: !710, file: !77, line: 127, baseType: !713, size: 192, offset: 576)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rendering_intent", scope: !676, file: !77, line: 190, baseType: !723, size: 32, offset: 1664)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "RenderingIntent", file: !89, line: 49, baseType: !88)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "profiles", scope: !676, file: !77, line: 193, baseType: !645, size: 64, offset: 1728)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !676, file: !77, line: 196, baseType: !726, size: 32, offset: 1792)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "ResolutionType", file: !77, line: 93, baseType: !96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "montage", scope: !676, file: !77, line: 199, baseType: !601, size: 64, offset: 1856)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "directory", scope: !676, file: !77, line: 200, baseType: !601, size: 64, offset: 1920)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "geometry", scope: !676, file: !77, line: 201, baseType: !601, size: 64, offset: 1984)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !676, file: !77, line: 204, baseType: !731, size: 64, offset: 2048)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !732, line: 77, baseType: !733)
!732 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !622, line: 193, baseType: !623)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "x_resolution", scope: !676, file: !77, line: 207, baseType: !663, size: 64, offset: 2112)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "y_resolution", scope: !676, file: !77, line: 208, baseType: !663, size: 64, offset: 2176)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !676, file: !77, line: 211, baseType: !737, size: 256, offset: 2240)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "RectangleInfo", file: !153, line: 130, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RectangleInfo", file: !153, line: 121, size: 256, elements: !739)
!739 = !{!740, !741, !742, !743}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !738, file: !153, line: 124, baseType: !647, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !738, file: !153, line: 125, baseType: !647, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !738, file: !153, line: 128, baseType: !731, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !738, file: !153, line: 129, baseType: !731, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "extract_info", scope: !676, file: !77, line: 212, baseType: !737, size: 256, offset: 2496)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tile_info", scope: !676, file: !77, line: 213, baseType: !737, size: 256, offset: 2752)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "bias", scope: !676, file: !77, line: 216, baseType: !663, size: 64, offset: 3008)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "blur", scope: !676, file: !77, line: 217, baseType: !663, size: 64, offset: 3072)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !676, file: !77, line: 218, baseType: !663, size: 64, offset: 3136)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !676, file: !77, line: 221, baseType: !750, size: 32, offset: 3200)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "FilterTypes", file: !102, line: 66, baseType: !101)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !676, file: !77, line: 224, baseType: !752, size: 32, offset: 3232)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterlaceType", file: !77, line: 73, baseType: !136)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !676, file: !77, line: 227, baseType: !754, size: 32, offset: 3264)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "EndianType", file: !147, line: 35, baseType: !146)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "gravity", scope: !676, file: !77, line: 230, baseType: !756, size: 32, offset: 3296)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "GravityType", file: !153, line: 91, baseType: !152)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "compose", scope: !676, file: !77, line: 233, baseType: !758, size: 32, offset: 3328)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "CompositeOperator", file: !168, line: 99, baseType: !167)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "dispose", scope: !676, file: !77, line: 236, baseType: !760, size: 32, offset: 3360)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "DisposeType", file: !239, line: 32, baseType: !238)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "clip_mask", scope: !676, file: !77, line: 239, baseType: !762, size: 64, offset: 3392)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !676, file: !77, line: 242, baseType: !647, size: 64, offset: 3456)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !676, file: !77, line: 243, baseType: !647, size: 64, offset: 3520)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "ticks_per_second", scope: !676, file: !77, line: 246, baseType: !731, size: 64, offset: 3584)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "iterations", scope: !676, file: !77, line: 249, baseType: !647, size: 64, offset: 3648)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "total_colors", scope: !676, file: !77, line: 250, baseType: !647, size: 64, offset: 3712)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "start_loop", scope: !676, file: !77, line: 253, baseType: !731, size: 64, offset: 3776)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !676, file: !77, line: 256, baseType: !770, size: 192, offset: 3840)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "ErrorInfo", file: !576, line: 68, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ErrorInfo", file: !576, line: 62, size: 192, elements: !772)
!772 = !{!773, !774, !775}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mean_error_per_pixel", scope: !771, file: !576, line: 65, baseType: !663, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_mean_error", scope: !771, file: !576, line: 66, baseType: !663, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_maximum_error", scope: !771, file: !576, line: 67, baseType: !663, size: 64, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !676, file: !77, line: 259, baseType: !777, size: 512, offset: 4032)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerInfo", file: !247, line: 51, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TimerInfo", file: !247, line: 40, size: 512, elements: !779)
!779 = !{!780, !787, !788, !790}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !778, file: !247, line: 43, baseType: !781, size: 192)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "Timer", file: !247, line: 38, baseType: !782)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Timer", file: !247, line: 32, size: 192, elements: !783)
!783 = !{!784, !785, !786}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !782, file: !247, line: 35, baseType: !663, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !782, file: !247, line: 36, baseType: !663, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !782, file: !247, line: 37, baseType: !663, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "elapsed", scope: !778, file: !247, line: 44, baseType: !781, size: 192, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !778, file: !247, line: 47, baseType: !789, size: 32, offset: 384)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "TimerState", file: !247, line: 30, baseType: !246)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !778, file: !247, line: 50, baseType: !647, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !676, file: !77, line: 262, baseType: !792, size: 64, offset: 4544)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickProgressMonitor", file: !793, line: 26, baseType: !794)
!793 = !DIFile(filename: "apps/538.imagick_r/src/magick/monitor.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "400538b2e088c5fbc0a033f037fbaca2")
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!688, !654, !797, !800, !645}
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickOffsetType", file: !4, line: 150, baseType: !799)
!799 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickSizeType", file: !4, line: 151, baseType: !802)
!802 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !676, file: !77, line: 265, baseType: !645, size: 64, offset: 4608)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !676, file: !77, line: 266, baseType: !645, size: 64, offset: 4672)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !676, file: !77, line: 267, baseType: !645, size: 64, offset: 4736)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ascii85", scope: !676, file: !77, line: 270, baseType: !807, size: 64, offset: 4800)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "Ascii85Info", file: !52, line: 52, baseType: !809)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Ascii85Info", file: !52, line: 51, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !676, file: !77, line: 273, baseType: !811, size: 64, offset: 4864)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "BlobInfo", file: !4, line: 217, baseType: !813)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "_BlobInfo", file: !4, line: 217, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !676, file: !77, line: 276, baseType: !815, size: 32768, offset: 4928)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !602, size: 32768, elements: !816)
!816 = !{!817}
!817 = !DISubrange(count: 4096)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "magick_filename", scope: !676, file: !77, line: 277, baseType: !815, size: 32768, offset: 37696)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !676, file: !77, line: 278, baseType: !815, size: 32768, offset: 70464)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "magick_columns", scope: !676, file: !77, line: 281, baseType: !647, size: 64, offset: 103232)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "magick_rows", scope: !676, file: !77, line: 282, baseType: !647, size: 64, offset: 103296)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !676, file: !77, line: 285, baseType: !823, size: 448, offset: 103360)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !4, line: 219, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !253, line: 102, size: 448, elements: !825)
!825 = !{!826, !828, !829, !830, !831, !832, !833, !838}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !824, file: !253, line: 105, baseType: !827, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !253, line: 100, baseType: !252)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !824, file: !253, line: 108, baseType: !489, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !824, file: !253, line: 111, baseType: !601, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !824, file: !253, line: 112, baseType: !601, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !824, file: !253, line: 115, baseType: !645, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !824, file: !253, line: 118, baseType: !688, size: 32, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !824, file: !253, line: 121, baseType: !834, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !836, line: 26, baseType: !837)
!836 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !836, line: 25, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !824, file: !253, line: 124, baseType: !647, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !676, file: !77, line: 288, baseType: !688, size: 32, offset: 103808)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "reference_count", scope: !676, file: !77, line: 291, baseType: !841, size: 64, offset: 103872)
!841 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !731)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !676, file: !77, line: 294, baseType: !834, size: 64, offset: 103936)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "color_profile", scope: !676, file: !77, line: 297, baseType: !844, size: 256, offset: 104000)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "ProfileInfo", file: !89, line: 40, baseType: !845)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ProfileInfo", file: !89, line: 27, size: 256, elements: !846)
!846 = !{!847, !848, !849, !852}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !845, file: !89, line: 30, baseType: !601, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !845, file: !89, line: 33, baseType: !647, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !845, file: !89, line: 36, baseType: !850, size: 64, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !845, file: !89, line: 39, baseType: !647, size: 64, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "iptc_profile", scope: !676, file: !77, line: 298, baseType: !844, size: 256, offset: 104256)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profile", scope: !676, file: !77, line: 299, baseType: !855, size: 64, offset: 104512)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "generic_profiles", scope: !676, file: !77, line: 302, baseType: !647, size: 64, offset: 104576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !676, file: !77, line: 305, baseType: !647, size: 64, offset: 104640)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !676, file: !77, line: 308, baseType: !762, size: 64, offset: 104704)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !676, file: !77, line: 309, baseType: !762, size: 64, offset: 104768)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !77, line: 310, baseType: !762, size: 64, offset: 104832)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "interpolate", scope: !676, file: !77, line: 313, baseType: !862, size: 32, offset: 104896)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "InterpolatePixelMethod", file: !326, line: 47, baseType: !325)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "black_point_compensation", scope: !676, file: !77, line: 316, baseType: !688, size: 32, offset: 104928)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !676, file: !77, line: 319, baseType: !696, size: 64, offset: 104960)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !676, file: !77, line: 322, baseType: !762, size: 64, offset: 105024)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "tile_offset", scope: !676, file: !77, line: 325, baseType: !737, size: 256, offset: 105088)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !676, file: !77, line: 328, baseType: !645, size: 64, offset: 105344)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "artifacts", scope: !676, file: !77, line: 329, baseType: !645, size: 64, offset: 105408)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !77, line: 332, baseType: !870, size: 32, offset: 105472)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageType", file: !77, line: 61, baseType: !342)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !676, file: !77, line: 335, baseType: !688, size: 32, offset: 105504)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !676, file: !77, line: 338, baseType: !801, size: 64, offset: 105536)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !676, file: !77, line: 341, baseType: !688, size: 32, offset: 105600)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !676, file: !77, line: 344, baseType: !647, size: 64, offset: 105664)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !676, file: !77, line: 347, baseType: !876, size: 64, offset: 105728)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !877, line: 7, baseType: !878)
!877 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !622, line: 160, baseType: !623)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !676, file: !77, line: 350, baseType: !880, size: 32, offset: 105792)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "PixelIntensityMethod", file: !326, line: 79, baseType: !356)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "duration", scope: !676, file: !77, line: 353, baseType: !647, size: 64, offset: 105856)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickInfo", file: !445, line: 103, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickInfo", file: !445, line: 51, size: 1216, elements: !888)
!888 = !{!889, !890, !891, !892, !893, !894, !974, !982, !987, !994, !995, !996, !997, !998, !999, !1000, !1002, !1004, !1005, !1007, !1008, !1009, !1010}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !887, file: !445, line: 54, baseType: !601, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !887, file: !445, line: 55, baseType: !601, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !887, file: !445, line: 56, baseType: !601, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !887, file: !445, line: 57, baseType: !601, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !887, file: !445, line: 58, baseType: !601, size: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "image_info", scope: !887, file: !445, line: 61, baseType: !895, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "ImageInfo", file: !4, line: 223, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ImageInfo", file: !77, line: 356, size: 134336, elements: !898)
!898 = !{!899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !933, !934, !935, !936, !937, !938, !940, !941, !942, !943, !944, !945, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !971, !972, !973}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "compression", scope: !897, file: !77, line: 359, baseType: !683, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "orientation", scope: !897, file: !77, line: 362, baseType: !686, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "temporary", scope: !897, file: !77, line: 365, baseType: !688, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !897, file: !77, line: 366, baseType: !688, size: 32, offset: 96)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "affirm", scope: !897, file: !77, line: 367, baseType: !688, size: 32, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "antialias", scope: !897, file: !77, line: 368, baseType: !688, size: 32, offset: 160)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !897, file: !77, line: 371, baseType: !601, size: 64, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "extract", scope: !897, file: !77, line: 372, baseType: !601, size: 64, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !897, file: !77, line: 373, baseType: !601, size: 64, offset: 320)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "scenes", scope: !897, file: !77, line: 374, baseType: !601, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "scene", scope: !897, file: !77, line: 377, baseType: !647, size: 64, offset: 448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "number_scenes", scope: !897, file: !77, line: 378, baseType: !647, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !897, file: !77, line: 379, baseType: !647, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !897, file: !77, line: 382, baseType: !752, size: 32, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !897, file: !77, line: 385, baseType: !754, size: 32, offset: 672)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !897, file: !77, line: 388, baseType: !726, size: 32, offset: 704)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !897, file: !77, line: 391, baseType: !647, size: 64, offset: 768)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sampling_factor", scope: !897, file: !77, line: 394, baseType: !601, size: 64, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "server_name", scope: !897, file: !77, line: 395, baseType: !601, size: 64, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "font", scope: !897, file: !77, line: 396, baseType: !601, size: 64, offset: 960)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "texture", scope: !897, file: !77, line: 397, baseType: !601, size: 64, offset: 1024)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "density", scope: !897, file: !77, line: 398, baseType: !601, size: 64, offset: 1088)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pointsize", scope: !897, file: !77, line: 401, baseType: !663, size: 64, offset: 1152)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !897, file: !77, line: 402, baseType: !663, size: 64, offset: 1216)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "background_color", scope: !897, file: !77, line: 405, baseType: !696, size: 64, offset: 1280)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "border_color", scope: !897, file: !77, line: 406, baseType: !696, size: 64, offset: 1344)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "matte_color", scope: !897, file: !77, line: 407, baseType: !696, size: 64, offset: 1408)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dither", scope: !897, file: !77, line: 410, baseType: !688, size: 32, offset: 1472)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "monochrome", scope: !897, file: !77, line: 411, baseType: !688, size: 32, offset: 1504)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "colors", scope: !897, file: !77, line: 414, baseType: !647, size: 64, offset: 1536)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !897, file: !77, line: 417, baseType: !681, size: 32, offset: 1600)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !897, file: !77, line: 420, baseType: !870, size: 32, offset: 1632)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "preview_type", scope: !897, file: !77, line: 423, baseType: !932, size: 32, offset: 1664)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "PreviewType", file: !369, line: 59, baseType: !368)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !897, file: !77, line: 426, baseType: !731, size: 64, offset: 1728)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ping", scope: !897, file: !77, line: 429, baseType: !688, size: 32, offset: 1792)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !897, file: !77, line: 430, baseType: !688, size: 32, offset: 1824)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "view", scope: !897, file: !77, line: 433, baseType: !601, size: 64, offset: 1856)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "authenticate", scope: !897, file: !77, line: 434, baseType: !601, size: 64, offset: 1920)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !897, file: !77, line: 437, baseType: !939, size: 32, offset: 1984)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelType", file: !4, line: 202, baseType: !401)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !897, file: !77, line: 440, baseType: !674, size: 64, offset: 2048)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !897, file: !77, line: 443, baseType: !645, size: 64, offset: 2112)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "progress_monitor", scope: !897, file: !77, line: 446, baseType: !792, size: 64, offset: 2176)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !897, file: !77, line: 449, baseType: !645, size: 64, offset: 2240)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !897, file: !77, line: 450, baseType: !645, size: 64, offset: 2304)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !897, file: !77, line: 453, baseType: !946, size: 64, offset: 2368)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "StreamHandler", file: !947, line: 26, baseType: !948)
!947 = !DIFile(filename: "apps/538.imagick_r/src/magick/stream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c2638a9d0a3b6b6108dcfea44dbab39d")
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!647, !951, !953, !955}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !897, file: !77, line: 456, baseType: !593, size: 64, offset: 2432)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "blob", scope: !897, file: !77, line: 459, baseType: !645, size: 64, offset: 2496)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !897, file: !77, line: 462, baseType: !647, size: 64, offset: 2560)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !897, file: !77, line: 465, baseType: !815, size: 32768, offset: 2624)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !897, file: !77, line: 466, baseType: !815, size: 32768, offset: 35392)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "zero", scope: !897, file: !77, line: 467, baseType: !815, size: 32768, offset: 68160)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !897, file: !77, line: 468, baseType: !815, size: 32768, offset: 100928)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !897, file: !77, line: 471, baseType: !688, size: 32, offset: 133696)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "tile", scope: !897, file: !77, line: 474, baseType: !601, size: 64, offset: 133760)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "subimage", scope: !897, file: !77, line: 477, baseType: !647, size: 64, offset: 133824)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "subrange", scope: !897, file: !77, line: 478, baseType: !647, size: 64, offset: 133888)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "pen", scope: !897, file: !77, line: 481, baseType: !696, size: 64, offset: 133952)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !897, file: !77, line: 484, baseType: !647, size: 64, offset: 134016)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_pixel_method", scope: !897, file: !77, line: 487, baseType: !970, size: 32, offset: 134080)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "VirtualPixelMethod", file: !424, line: 47, baseType: !423)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_color", scope: !897, file: !77, line: 490, baseType: !696, size: 64, offset: 134112)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "profile", scope: !897, file: !77, line: 493, baseType: !645, size: 64, offset: 134208)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "synchronize", scope: !897, file: !77, line: 496, baseType: !688, size: 32, offset: 134272)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "decoder", scope: !887, file: !445, line: 64, baseType: !975, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "DecodeImageHandler", file: !445, line: 43, baseType: !977)
!977 = !DISubroutineType(types: !978)
!978 = !{!674, !979, !981}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !887, file: !445, line: 67, baseType: !983, size: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "EncodeImageHandler", file: !445, line: 46, baseType: !985)
!985 = !DISubroutineType(types: !986)
!986 = !{!688, !979, !674}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !887, file: !445, line: 70, baseType: !988, size: 64, offset: 512)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "IsImageFormatHandler", file: !445, line: 49, baseType: !990)
!990 = !DISubroutineType(types: !991)
!991 = !{!688, !992, !955}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !887, file: !445, line: 73, baseType: !645, size: 64, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "adjoin", scope: !887, file: !445, line: 76, baseType: !688, size: 32, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !887, file: !445, line: 77, baseType: !688, size: 32, offset: 672)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "endian_support", scope: !887, file: !445, line: 78, baseType: !688, size: 32, offset: 704)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "blob_support", scope: !887, file: !445, line: 79, baseType: !688, size: 32, offset: 736)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "seekable_stream", scope: !887, file: !445, line: 80, baseType: !688, size: 32, offset: 768)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "format_type", scope: !887, file: !445, line: 83, baseType: !1001, size: 32, offset: 800)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickFormatType", file: !445, line: 33, baseType: !444)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "thread_support", scope: !887, file: !445, line: 86, baseType: !1003, size: 32, offset: 832)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !4, line: 147, baseType: !5)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !887, file: !445, line: 89, baseType: !688, size: 32, offset: 864)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !887, file: !445, line: 92, baseType: !1006, size: 64, offset: 896)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !445, line: 93, baseType: !1006, size: 64, offset: 960)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !887, file: !445, line: 96, baseType: !647, size: 64, offset: 1024)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !887, file: !445, line: 99, baseType: !601, size: 64, offset: 1088)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !887, file: !445, line: 102, baseType: !834, size: 64, offset: 1152)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelMoments", file: !476, line: 59, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChannelMoments", file: !476, line: 46, size: 2496, elements: !1014)
!1014 = !{!1015, !1019, !1026, !1027, !1028, !1029}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "I", scope: !1013, file: !476, line: 49, baseType: !1016, size: 2048)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 2048, elements: !1017)
!1017 = !{!1018}
!1018 = !DISubrange(count: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "centroid", scope: !1013, file: !476, line: 52, baseType: !1020, size: 128, offset: 2048)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "PointInfo", file: !1021, line: 142, baseType: !1022)
!1021 = !DIFile(filename: "apps/538.imagick_r/src/magick/draw.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7430ad7998fb3d4ef58bbf5582967ea1")
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PointInfo", file: !1021, line: 137, size: 128, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1022, file: !1021, line: 140, baseType: !663, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1022, file: !1021, line: 141, baseType: !663, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ellipse_axis", scope: !1013, file: !476, line: 53, baseType: !1020, size: 128, offset: 2176)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "ellipse_angle", scope: !1013, file: !476, line: 56, baseType: !663, size: 64, offset: 2304)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ellipse_eccentricity", scope: !1013, file: !476, line: 57, baseType: !663, size: 64, offset: 2368)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ellipse_intensity", scope: !1013, file: !476, line: 58, baseType: !663, size: 64, offset: 2432)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelPerceptualHash", file: !476, line: 66, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChannelPerceptualHash", file: !476, line: 61, size: 4096, elements: !1033)
!1033 = !{!1034, !1035}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "P", scope: !1032, file: !476, line: 64, baseType: !1016, size: 2048)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "Q", scope: !1032, file: !476, line: 65, baseType: !1016, size: 2048, offset: 2048)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "ChannelFeatures", file: !1038, line: 45, baseType: !1039)
!1038 = !DIFile(filename: "apps/538.imagick_r/src/magick/feature.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "dbe73de8fac9b3b50939c7a0dc145cd9")
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ChannelFeatures", file: !1038, line: 28, size: 3584, elements: !1040)
!1040 = !{!1041, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "angular_second_moment", scope: !1039, file: !1038, line: 31, baseType: !1042, size: 256)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 256, elements: !1043)
!1043 = !{!1044}
!1044 = !DISubrange(count: 4)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !1039, file: !1038, line: 32, baseType: !1042, size: 256, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "correlation", scope: !1039, file: !1038, line: 33, baseType: !1042, size: 256, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "variance_sum_of_squares", scope: !1039, file: !1038, line: 34, baseType: !1042, size: 256, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "inverse_difference_moment", scope: !1039, file: !1038, line: 35, baseType: !1042, size: 256, offset: 1024)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "sum_average", scope: !1039, file: !1038, line: 36, baseType: !1042, size: 256, offset: 1280)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "sum_variance", scope: !1039, file: !1038, line: 37, baseType: !1042, size: 256, offset: 1536)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "sum_entropy", scope: !1039, file: !1038, line: 38, baseType: !1042, size: 256, offset: 1792)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "entropy", scope: !1039, file: !1038, line: 39, baseType: !1042, size: 256, offset: 2048)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "difference_variance", scope: !1039, file: !1038, line: 40, baseType: !1042, size: 256, offset: 2304)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "difference_entropy", scope: !1039, file: !1038, line: 41, baseType: !1042, size: 256, offset: 2560)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "measure_of_correlation_1", scope: !1039, file: !1038, line: 42, baseType: !1042, size: 256, offset: 2816)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "measure_of_correlation_2", scope: !1039, file: !1038, line: 43, baseType: !1042, size: 256, offset: 3072)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_correlation_coefficient", scope: !1039, file: !1038, line: 44, baseType: !1042, size: 256, offset: 3328)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "IndexPacket", file: !326, line: 129, baseType: !700)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "WarningHandler", file: !253, line: 134, baseType: !1061)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !1064, !654, !654}
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !1067, line: 40, baseType: !1068)
!1067 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !1067, line: 29, size: 32960, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !1068, file: !1067, line: 32, baseType: !815, size: 32768)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !1068, file: !1067, line: 35, baseType: !850, size: 64, offset: 32768)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1068, file: !1067, line: 38, baseType: !647, size: 64, offset: 32832)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !1068, file: !1067, line: 39, baseType: !647, size: 64, offset: 32896)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1059)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickRealType", file: !4, line: 78, baseType: !1079)
!1079 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!1080 = !{i32 7, !"Dwarf Version", i32 5}
!1081 = !{i32 2, !"Debug Info Version", i32 3}
!1082 = !{i32 1, !"wchar_size", i32 4}
!1083 = !{i32 7, !"PIC Level", i32 2}
!1084 = !{i32 7, !"PIE Level", i32 2}
!1085 = !{i32 7, !"uwtable", i32 2}
!1086 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1087 = distinct !DISubprogram(name: "IdentifyImage", scope: !1088, file: !1088, line: 482, type: !1089, scopeLine: 484, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1092)
!1088 = !DIFile(filename: "apps/538.imagick_r/src/magick/identify.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "629f2cf99085725232903d309f608ecd")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!688, !674, !593, !1091}
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!1092 = !{!1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1125, !1126, !1127, !1131, !1134, !1139, !1140, !1143, !1157, !1162, !1163, !1164, !1165, !1167, !1170, !1171, !1172, !1173, !1174, !1179, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1093 = !DILocalVariable(name: "image", arg: 1, scope: !1087, file: !1088, line: 482, type: !674)
!1094 = !DILocalVariable(name: "file", arg: 2, scope: !1087, file: !1088, line: 482, type: !593)
!1095 = !DILocalVariable(name: "verbose", arg: 3, scope: !1087, file: !1088, line: 483, type: !1091)
!1096 = !DILocalVariable(name: "color", scope: !1087, file: !1088, line: 486, type: !815)
!1097 = !DILocalVariable(name: "format", scope: !1087, file: !1088, line: 487, type: !815)
!1098 = !DILocalVariable(name: "key", scope: !1087, file: !1088, line: 488, type: !815)
!1099 = !DILocalVariable(name: "channel_features", scope: !1087, file: !1088, line: 491, type: !1036)
!1100 = !DILocalVariable(name: "channel_moments", scope: !1087, file: !1088, line: 494, type: !1011)
!1101 = !DILocalVariable(name: "channel_phash", scope: !1087, file: !1088, line: 497, type: !1030)
!1102 = !DILocalVariable(name: "channel_statistics", scope: !1087, file: !1088, line: 500, type: !657)
!1103 = !DILocalVariable(name: "colorspace", scope: !1087, file: !1088, line: 503, type: !681)
!1104 = !DILocalVariable(name: "artifact", scope: !1087, file: !1088, line: 506, type: !654)
!1105 = !DILocalVariable(name: "locate", scope: !1087, file: !1088, line: 507, type: !654)
!1106 = !DILocalVariable(name: "name", scope: !1087, file: !1088, line: 508, type: !654)
!1107 = !DILocalVariable(name: "property", scope: !1087, file: !1088, line: 509, type: !654)
!1108 = !DILocalVariable(name: "registry", scope: !1087, file: !1088, line: 510, type: !654)
!1109 = !DILocalVariable(name: "value", scope: !1087, file: !1088, line: 511, type: !654)
!1110 = !DILocalVariable(name: "magick_info", scope: !1087, file: !1088, line: 514, type: !884)
!1111 = !DILocalVariable(name: "pixels", scope: !1087, file: !1088, line: 517, type: !882)
!1112 = !DILocalVariable(name: "elapsed_time", scope: !1087, file: !1088, line: 520, type: !663)
!1113 = !DILocalVariable(name: "scale", scope: !1087, file: !1088, line: 521, type: !663)
!1114 = !DILocalVariable(name: "user_time", scope: !1087, file: !1088, line: 522, type: !663)
!1115 = !DILocalVariable(name: "exception", scope: !1087, file: !1088, line: 525, type: !981)
!1116 = !DILocalVariable(name: "type", scope: !1087, file: !1088, line: 528, type: !870)
!1117 = !DILocalVariable(name: "ping", scope: !1087, file: !1088, line: 531, type: !688)
!1118 = !DILocalVariable(name: "i", scope: !1087, file: !1088, line: 534, type: !731)
!1119 = !DILocalVariable(name: "x", scope: !1087, file: !1088, line: 535, type: !731)
!1120 = !DILocalVariable(name: "distance", scope: !1087, file: !1088, line: 538, type: !647)
!1121 = !DILocalVariable(name: "y", scope: !1087, file: !1088, line: 541, type: !731)
!1122 = !DILocalVariable(name: "limit", scope: !1123, file: !1088, line: 554, type: !654)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !1088, line: 552, column: 5)
!1124 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 551, column: 7)
!1125 = !DILocalVariable(name: "max_locations", scope: !1123, file: !1088, line: 557, type: !647)
!1126 = !DILocalVariable(name: "type", scope: !1123, file: !1088, line: 560, type: !656)
!1127 = !DILocalVariable(name: "filename", scope: !1128, file: !1088, line: 701, type: !815)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !1088, line: 699, column: 7)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !1088, line: 698, column: 9)
!1130 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 697, column: 7)
!1131 = !DILocalVariable(name: "depth", scope: !1132, file: !1088, line: 758, type: !647)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !1088, line: 756, column: 5)
!1133 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 755, column: 7)
!1134 = !DILocalVariable(name: "indexes", scope: !1135, file: !1088, line: 982, type: !1076)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !1088, line: 980, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !1088, line: 979, column: 11)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !1088, line: 973, column: 5)
!1138 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 972, column: 7)
!1139 = !DILocalVariable(name: "p", scope: !1135, file: !1088, line: 985, type: !882)
!1140 = !DILocalVariable(name: "tuple", scope: !1141, file: !1088, line: 1007, type: !815)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !1088, line: 1005, column: 13)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !1088, line: 1004, column: 15)
!1143 = !DILocalVariable(name: "pixel", scope: !1141, file: !1088, line: 1010, type: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickPixelPacket", file: !326, line: 127, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MagickPixelPacket", file: !326, line: 104, size: 448, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "storage_class", scope: !1145, file: !326, line: 107, baseType: !679, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !1145, file: !326, line: 110, baseType: !681, size: 32, offset: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "matte", scope: !1145, file: !326, line: 113, baseType: !688, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !1145, file: !326, line: 116, baseType: !663, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1145, file: !326, line: 119, baseType: !647, size: 64, offset: 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !1145, file: !326, line: 122, baseType: !1078, size: 32, offset: 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !1145, file: !326, line: 123, baseType: !1078, size: 32, offset: 288)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !1145, file: !326, line: 124, baseType: !1078, size: 32, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "opacity", scope: !1145, file: !326, line: 125, baseType: !1078, size: 32, offset: 352)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1145, file: !326, line: 126, baseType: !1078, size: 32, offset: 384)
!1157 = !DILocalVariable(name: "color", scope: !1158, file: !1088, line: 1043, type: !815)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !1088, line: 1041, column: 9)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !1088, line: 1040, column: 11)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !1088, line: 1036, column: 5)
!1161 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1035, column: 7)
!1162 = !DILocalVariable(name: "hex", scope: !1158, file: !1088, line: 1044, type: !815)
!1163 = !DILocalVariable(name: "tuple", scope: !1158, file: !1088, line: 1045, type: !815)
!1164 = !DILocalVariable(name: "pixel", scope: !1158, file: !1088, line: 1048, type: !1144)
!1165 = !DILocalVariable(name: "p", scope: !1158, file: !1088, line: 1051, type: !1166)
!1166 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !695)
!1167 = !DILocalVariable(name: "tile", scope: !1168, file: !1088, line: 1177, type: !674)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !1088, line: 1175, column: 5)
!1169 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1174, column: 7)
!1170 = !DILocalVariable(name: "image_info", scope: !1168, file: !1088, line: 1180, type: !895)
!1171 = !DILocalVariable(name: "p", scope: !1168, file: !1088, line: 1183, type: !601)
!1172 = !DILocalVariable(name: "q", scope: !1168, file: !1088, line: 1184, type: !601)
!1173 = !DILocalVariable(name: "handler", scope: !1168, file: !1088, line: 1187, type: !1060)
!1174 = !DILocalVariable(name: "profile", scope: !1175, file: !1088, line: 1266, type: !1177)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !1088, line: 1264, column: 5)
!1176 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1263, column: 7)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1066)
!1179 = !DILocalVariable(name: "attribute", scope: !1180, file: !1088, line: 1282, type: !601)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !1088, line: 1280, column: 11)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !1088, line: 1279, column: 13)
!1182 = distinct !DILexicalBlock(scope: !1175, file: !1088, line: 1273, column: 7)
!1183 = !DILocalVariable(name: "attribute_list", scope: !1180, file: !1088, line: 1283, type: !1074)
!1184 = !DILocalVariable(name: "tag", scope: !1180, file: !1088, line: 1286, type: !654)
!1185 = !DILocalVariable(name: "dataset", scope: !1180, file: !1088, line: 1289, type: !623)
!1186 = !DILocalVariable(name: "record", scope: !1180, file: !1088, line: 1290, type: !623)
!1187 = !DILocalVariable(name: "sentinel", scope: !1180, file: !1088, line: 1291, type: !623)
!1188 = !DILocalVariable(name: "j", scope: !1180, file: !1088, line: 1294, type: !731)
!1189 = !DILocalVariable(name: "length", scope: !1180, file: !1088, line: 1297, type: !647)
!1190 = !DILocalVariable(name: "profile_length", scope: !1180, file: !1088, line: 1298, type: !647)
!1191 = !DILocation(line: 0, scope: !1087)
!1192 = !DILocation(line: 485, column: 3, scope: !1087)
!1193 = !DILocation(line: 486, column: 5, scope: !1087)
!1194 = !DILocation(line: 487, column: 5, scope: !1087)
!1195 = !DILocation(line: 488, column: 5, scope: !1087)
!1196 = !DILocation(line: 545, column: 14, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 545, column: 7)
!1198 = !{!1199, !1200, i64 12976}
!1199 = !{!"_Image", !1200, i64 0, !1200, i64 4, !1200, i64 8, !1202, i64 16, !1200, i64 24, !1200, i64 28, !1200, i64 32, !1202, i64 40, !1202, i64 48, !1202, i64 56, !1202, i64 64, !1203, i64 72, !1204, i64 80, !1204, i64 88, !1204, i64 96, !1206, i64 104, !1207, i64 112, !1200, i64 208, !1203, i64 216, !1200, i64 224, !1203, i64 232, !1203, i64 240, !1203, i64 248, !1202, i64 256, !1206, i64 264, !1206, i64 272, !1209, i64 280, !1209, i64 312, !1209, i64 344, !1206, i64 376, !1206, i64 384, !1206, i64 392, !1200, i64 400, !1200, i64 404, !1200, i64 408, !1200, i64 412, !1200, i64 416, !1200, i64 420, !1203, i64 424, !1202, i64 432, !1202, i64 440, !1202, i64 448, !1202, i64 456, !1202, i64 464, !1202, i64 472, !1210, i64 480, !1211, i64 504, !1203, i64 568, !1203, i64 576, !1203, i64 584, !1203, i64 592, !1203, i64 600, !1203, i64 608, !1200, i64 616, !1200, i64 4712, !1200, i64 8808, !1202, i64 12904, !1202, i64 12912, !1213, i64 12920, !1200, i64 12976, !1202, i64 12984, !1203, i64 12992, !1215, i64 13000, !1215, i64 13032, !1203, i64 13064, !1202, i64 13072, !1202, i64 13080, !1203, i64 13088, !1203, i64 13096, !1203, i64 13104, !1200, i64 13112, !1200, i64 13116, !1204, i64 13120, !1203, i64 13128, !1209, i64 13136, !1203, i64 13168, !1203, i64 13176, !1200, i64 13184, !1200, i64 13188, !1216, i64 13192, !1200, i64 13200, !1202, i64 13208, !1202, i64 13216, !1200, i64 13224, !1202, i64 13232}
!1200 = !{!"omnipotent char", !1201, i64 0}
!1201 = !{!"Simple C/C++ TBAA"}
!1202 = !{!"long", !1200, i64 0}
!1203 = !{!"any pointer", !1200, i64 0}
!1204 = !{!"_PixelPacket", !1205, i64 0, !1205, i64 2, !1205, i64 4, !1205, i64 6}
!1205 = !{!"short", !1200, i64 0}
!1206 = !{!"double", !1200, i64 0}
!1207 = !{!"_ChromaticityInfo", !1208, i64 0, !1208, i64 24, !1208, i64 48, !1208, i64 72}
!1208 = !{!"_PrimaryInfo", !1206, i64 0, !1206, i64 8, !1206, i64 16}
!1209 = !{!"_RectangleInfo", !1202, i64 0, !1202, i64 8, !1202, i64 16, !1202, i64 24}
!1210 = !{!"_ErrorInfo", !1206, i64 0, !1206, i64 8, !1206, i64 16}
!1211 = !{!"_TimerInfo", !1212, i64 0, !1212, i64 24, !1200, i64 48, !1202, i64 56}
!1212 = !{!"_Timer", !1206, i64 0, !1206, i64 8, !1206, i64 16}
!1213 = !{!"_ExceptionInfo", !1200, i64 0, !1214, i64 4, !1203, i64 8, !1203, i64 16, !1203, i64 24, !1200, i64 32, !1203, i64 40, !1202, i64 48}
!1214 = !{!"int", !1200, i64 0}
!1215 = !{!"_ProfileInfo", !1203, i64 0, !1202, i64 8, !1203, i64 16, !1202, i64 24}
!1216 = !{!"long long", !1200, i64 0}
!1217 = !DILocation(line: 545, column: 20, scope: !1197)
!1218 = !DILocation(line: 545, column: 7, scope: !1087)
!1219 = !DILocation(line: 546, column: 68, scope: !1197)
!1220 = !DILocation(line: 546, column: 12, scope: !1197)
!1221 = !DILocation(line: 546, column: 5, scope: !1197)
!1222 = !DILocation(line: 547, column: 12, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 547, column: 7)
!1224 = !DILocation(line: 547, column: 7, scope: !1087)
!1225 = !DILocation(line: 549, column: 13, scope: !1087)
!1226 = !DILocation(line: 550, column: 10, scope: !1087)
!1227 = !DILocation(line: 551, column: 14, scope: !1124)
!1228 = !DILocation(line: 551, column: 7, scope: !1087)
!1229 = !DILocation(line: 565, column: 28, scope: !1123)
!1230 = !DILocation(line: 565, column: 12, scope: !1123)
!1231 = !DILocation(line: 0, scope: !1123)
!1232 = !DILocation(line: 567, column: 13, scope: !1123)
!1233 = !DILocation(line: 569, column: 17, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1123, file: !1088, line: 569, column: 11)
!1235 = !DILocation(line: 569, column: 11, scope: !1123)
!1236 = !DILocalVariable(name: "value", arg: 1, scope: !1237, file: !1238, line: 73, type: !1241)
!1237 = distinct !DISubprogram(name: "StringToUnsignedLong", scope: !1238, file: !1238, line: 73, type: !1239, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1242)
!1238 = !DIFile(filename: "apps/538.imagick_r/src/magick/string-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "af275f9a9b26a4e8bc1a481724207dee")
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!592, !1241}
!1241 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !654)
!1242 = !{!1236}
!1243 = !DILocation(line: 0, scope: !1237, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 570, column: 23, scope: !1234)
!1245 = !DILocation(line: 75, column: 10, scope: !1237, inlinedAt: !1244)
!1246 = !DILocation(line: 570, column: 9, scope: !1234)
!1247 = !DILocalVariable(name: "image", arg: 1, scope: !1248, file: !1088, line: 129, type: !951)
!1248 = distinct !DISubprogram(name: "GetLocationStatistics", scope: !1088, file: !1088, line: 129, type: !1249, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1252)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!657, !951, !1251, !981}
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!1252 = !{!1247, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1262, !1263, !1268, !1270}
!1253 = !DILocalVariable(name: "type", arg: 2, scope: !1248, file: !1088, line: 130, type: !1251)
!1254 = !DILocalVariable(name: "exception", arg: 3, scope: !1248, file: !1088, line: 130, type: !981)
!1255 = !DILocalVariable(name: "channel_statistics", scope: !1248, file: !1088, line: 133, type: !657)
!1256 = !DILocalVariable(name: "i", scope: !1248, file: !1088, line: 136, type: !731)
!1257 = !DILocalVariable(name: "length", scope: !1248, file: !1088, line: 139, type: !647)
!1258 = !DILocalVariable(name: "y", scope: !1248, file: !1088, line: 142, type: !731)
!1259 = !DILocalVariable(name: "message", scope: !1260, file: !1088, line: 152, type: !601)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !1088, line: 152, column: 5)
!1261 = distinct !DILexicalBlock(scope: !1248, file: !1088, line: 151, column: 7)
!1262 = !DILocalVariable(name: "exception", scope: !1260, file: !1088, line: 152, type: !823)
!1263 = !DILocalVariable(name: "indexes", scope: !1264, file: !1088, line: 175, type: !1267)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !1088, line: 173, column: 3)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !1088, line: 172, column: 3)
!1266 = distinct !DILexicalBlock(scope: !1248, file: !1088, line: 172, column: 3)
!1267 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1076)
!1268 = !DILocalVariable(name: "p", scope: !1264, file: !1088, line: 178, type: !1269)
!1269 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !882)
!1270 = !DILocalVariable(name: "x", scope: !1264, file: !1088, line: 181, type: !731)
!1271 = !DILocation(line: 0, scope: !1248, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 571, column: 26, scope: !1123)
!1273 = !DILocation(line: 146, column: 14, scope: !1274, inlinedAt: !1272)
!1274 = distinct !DILexicalBlock(scope: !1248, file: !1088, line: 146, column: 7)
!1275 = !DILocation(line: 146, column: 20, scope: !1274, inlinedAt: !1272)
!1276 = !DILocation(line: 146, column: 7, scope: !1248, inlinedAt: !1272)
!1277 = !DILocation(line: 147, column: 68, scope: !1274, inlinedAt: !1272)
!1278 = !DILocation(line: 147, column: 12, scope: !1274, inlinedAt: !1272)
!1279 = !DILocation(line: 147, column: 5, scope: !1274, inlinedAt: !1272)
!1280 = !DILocation(line: 149, column: 44, scope: !1248, inlinedAt: !1272)
!1281 = !DILocation(line: 151, column: 26, scope: !1261, inlinedAt: !1272)
!1282 = !DILocation(line: 151, column: 7, scope: !1248, inlinedAt: !1272)
!1283 = !DILocation(line: 152, column: 5, scope: !1260, inlinedAt: !1272)
!1284 = !{!1214, !1214, i64 0}
!1285 = !DILocation(line: 0, scope: !1260, inlinedAt: !1272)
!1286 = !DILocation(line: 153, column: 10, scope: !1248, inlinedAt: !1272)
!1287 = !DILocation(line: 157, column: 5, scope: !1288, inlinedAt: !1272)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !1088, line: 156, column: 3)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !1088, line: 155, column: 3)
!1290 = distinct !DILexicalBlock(scope: !1248, file: !1088, line: 155, column: 3)
!1291 = !DILocation(line: 167, column: 31, scope: !1292, inlinedAt: !1272)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !1088, line: 166, column: 7)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !1088, line: 158, column: 5)
!1294 = !DILocation(line: 167, column: 37, scope: !1292, inlinedAt: !1272)
!1295 = !{!1296, !1206, i64 8}
!1296 = !{!"_ChannelStatistics", !1202, i64 0, !1206, i64 8, !1206, i64 16, !1206, i64 24, !1206, i64 32, !1206, i64 40, !1206, i64 48, !1206, i64 56, !1206, i64 64, !1206, i64 72, !1206, i64 80, !1206, i64 88}
!1297 = !DILocation(line: 155, column: 48, scope: !1289, inlinedAt: !1272)
!1298 = !DILocation(line: 155, column: 15, scope: !1289, inlinedAt: !1272)
!1299 = !DILocation(line: 155, column: 3, scope: !1290, inlinedAt: !1272)
!1300 = distinct !{!1300, !1299, !1301, !1302, !1303}
!1301 = !DILocation(line: 171, column: 3, scope: !1290, inlinedAt: !1272)
!1302 = !{!"llvm.loop.mustprogress"}
!1303 = !{!"llvm.loop.unroll.disable"}
!1304 = !DILocation(line: 183, column: 41, scope: !1264, inlinedAt: !1272)
!1305 = !DILocation(line: 172, column: 34, scope: !1265, inlinedAt: !1272)
!1306 = !{!1199, !1202, i64 48}
!1307 = !DILocation(line: 172, column: 15, scope: !1265, inlinedAt: !1272)
!1308 = !DILocation(line: 172, column: 3, scope: !1266, inlinedAt: !1272)
!1309 = !{!1199, !1202, i64 40}
!1310 = !DILocation(line: 189, column: 7, scope: !1311, inlinedAt: !1272)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !1088, line: 188, column: 5)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !1088, line: 187, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1264, file: !1088, line: 187, column: 5)
!1314 = !DILocation(line: 183, column: 7, scope: !1264, inlinedAt: !1272)
!1315 = !DILocation(line: 0, scope: !1264, inlinedAt: !1272)
!1316 = !DILocation(line: 184, column: 11, scope: !1317, inlinedAt: !1272)
!1317 = distinct !DILexicalBlock(scope: !1264, file: !1088, line: 184, column: 9)
!1318 = !DILocation(line: 184, column: 9, scope: !1264, inlinedAt: !1272)
!1319 = !DILocation(line: 186, column: 13, scope: !1264, inlinedAt: !1272)
!1320 = !DILocation(line: 187, column: 17, scope: !1312, inlinedAt: !1272)
!1321 = !DILocation(line: 187, column: 5, scope: !1313, inlinedAt: !1272)
!1322 = !DILocation(line: 172, column: 41, scope: !1265, inlinedAt: !1272)
!1323 = distinct !{!1323, !1308, !1324, !1302, !1303}
!1324 = !DILocation(line: 231, column: 3, scope: !1266, inlinedAt: !1272)
!1325 = !{!1199, !1200, i64 32}
!1326 = !{!1199, !1200, i64 4}
!1327 = !DILocation(line: 222, column: 53, scope: !1328, inlinedAt: !1272)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !1088, line: 222, column: 15)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !1088, line: 211, column: 9)
!1330 = distinct !DILexicalBlock(scope: !1311, file: !1088, line: 190, column: 7)
!1331 = !DILocation(line: 212, column: 24, scope: !1332, inlinedAt: !1272)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !1088, line: 212, column: 15)
!1333 = !{!1204, !1205, i64 4}
!1334 = !DILocation(line: 212, column: 15, scope: !1332, inlinedAt: !1272)
!1335 = !DILocation(line: 212, column: 39, scope: !1332, inlinedAt: !1272)
!1336 = !DILocation(line: 212, column: 15, scope: !1329, inlinedAt: !1272)
!1337 = !DILocation(line: 213, column: 50, scope: !1332, inlinedAt: !1272)
!1338 = !DILocation(line: 213, column: 13, scope: !1332, inlinedAt: !1272)
!1339 = !DILocation(line: 214, column: 24, scope: !1340, inlinedAt: !1272)
!1340 = distinct !DILexicalBlock(scope: !1329, file: !1088, line: 214, column: 15)
!1341 = !{!1204, !1205, i64 2}
!1342 = !DILocation(line: 214, column: 15, scope: !1340, inlinedAt: !1272)
!1343 = !DILocation(line: 214, column: 41, scope: !1340, inlinedAt: !1272)
!1344 = !DILocation(line: 214, column: 15, scope: !1329, inlinedAt: !1272)
!1345 = !DILocation(line: 215, column: 52, scope: !1340, inlinedAt: !1272)
!1346 = !DILocation(line: 215, column: 13, scope: !1340, inlinedAt: !1272)
!1347 = !DILocation(line: 216, column: 24, scope: !1348, inlinedAt: !1272)
!1348 = distinct !DILexicalBlock(scope: !1329, file: !1088, line: 216, column: 15)
!1349 = !{!1204, !1205, i64 0}
!1350 = !DILocation(line: 216, column: 15, scope: !1348, inlinedAt: !1272)
!1351 = !DILocation(line: 216, column: 40, scope: !1348, inlinedAt: !1272)
!1352 = !DILocation(line: 216, column: 15, scope: !1329, inlinedAt: !1272)
!1353 = !DILocation(line: 217, column: 51, scope: !1348, inlinedAt: !1272)
!1354 = !DILocation(line: 217, column: 13, scope: !1348, inlinedAt: !1272)
!1355 = !DILocation(line: 218, column: 45, scope: !1356, inlinedAt: !1272)
!1356 = distinct !DILexicalBlock(scope: !1329, file: !1088, line: 218, column: 15)
!1357 = !DILocation(line: 219, column: 25, scope: !1356, inlinedAt: !1272)
!1358 = !{!1204, !1205, i64 6}
!1359 = !DILocation(line: 219, column: 16, scope: !1356, inlinedAt: !1272)
!1360 = !DILocation(line: 219, column: 81, scope: !1356, inlinedAt: !1272)
!1361 = !DILocation(line: 219, column: 44, scope: !1356, inlinedAt: !1272)
!1362 = !DILocation(line: 218, column: 15, scope: !1329, inlinedAt: !1272)
!1363 = !DILocation(line: 220, column: 54, scope: !1356, inlinedAt: !1272)
!1364 = !DILocation(line: 220, column: 13, scope: !1356, inlinedAt: !1272)
!1365 = !DILocation(line: 223, column: 25, scope: !1328, inlinedAt: !1272)
!1366 = !{!1205, !1205, i64 0}
!1367 = !DILocation(line: 223, column: 16, scope: !1328, inlinedAt: !1272)
!1368 = !DILocation(line: 223, column: 85, scope: !1328, inlinedAt: !1272)
!1369 = !DILocation(line: 223, column: 50, scope: !1328, inlinedAt: !1272)
!1370 = !DILocation(line: 222, column: 15, scope: !1329, inlinedAt: !1272)
!1371 = !DILocation(line: 225, column: 15, scope: !1328, inlinedAt: !1272)
!1372 = !DILocation(line: 224, column: 53, scope: !1328, inlinedAt: !1272)
!1373 = !DILocation(line: 224, column: 52, scope: !1328, inlinedAt: !1272)
!1374 = !DILocation(line: 224, column: 13, scope: !1328, inlinedAt: !1272)
!1375 = !DILocation(line: 229, column: 8, scope: !1311, inlinedAt: !1272)
!1376 = !DILocation(line: 187, column: 46, scope: !1312, inlinedAt: !1272)
!1377 = distinct !{!1377, !1321, !1378, !1302, !1303}
!1378 = !DILocation(line: 230, column: 5, scope: !1313, inlinedAt: !1272)
!1379 = distinct !{!1379, !1321, !1378, !1302, !1303}
!1380 = distinct !{!1380, !1321, !1378, !1302, !1303}
!1381 = !DILocation(line: 162, column: 31, scope: !1382, inlinedAt: !1272)
!1382 = distinct !DILexicalBlock(scope: !1293, file: !1088, line: 161, column: 7)
!1383 = !DILocation(line: 162, column: 37, scope: !1382, inlinedAt: !1272)
!1384 = !{!1296, !1206, i64 16}
!1385 = distinct !{!1385, !1299, !1301, !1302, !1303}
!1386 = !DILocation(line: 194, column: 72, scope: !1387, inlinedAt: !1272)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !1088, line: 194, column: 15)
!1388 = distinct !DILexicalBlock(scope: !1330, file: !1088, line: 193, column: 9)
!1389 = !DILocation(line: 204, column: 53, scope: !1390, inlinedAt: !1272)
!1390 = distinct !DILexicalBlock(scope: !1388, file: !1088, line: 204, column: 15)
!1391 = !DILocation(line: 194, column: 24, scope: !1387, inlinedAt: !1272)
!1392 = !DILocation(line: 194, column: 15, scope: !1387, inlinedAt: !1272)
!1393 = !DILocation(line: 194, column: 39, scope: !1387, inlinedAt: !1272)
!1394 = !DILocation(line: 194, column: 15, scope: !1388, inlinedAt: !1272)
!1395 = !DILocation(line: 195, column: 50, scope: !1387, inlinedAt: !1272)
!1396 = !DILocation(line: 195, column: 13, scope: !1387, inlinedAt: !1272)
!1397 = !DILocation(line: 196, column: 24, scope: !1398, inlinedAt: !1272)
!1398 = distinct !DILexicalBlock(scope: !1388, file: !1088, line: 196, column: 15)
!1399 = !DILocation(line: 196, column: 15, scope: !1398, inlinedAt: !1272)
!1400 = !DILocation(line: 196, column: 41, scope: !1398, inlinedAt: !1272)
!1401 = !DILocation(line: 196, column: 15, scope: !1388, inlinedAt: !1272)
!1402 = !DILocation(line: 197, column: 52, scope: !1398, inlinedAt: !1272)
!1403 = !DILocation(line: 197, column: 13, scope: !1398, inlinedAt: !1272)
!1404 = !DILocation(line: 198, column: 24, scope: !1405, inlinedAt: !1272)
!1405 = distinct !DILexicalBlock(scope: !1388, file: !1088, line: 198, column: 15)
!1406 = !DILocation(line: 198, column: 15, scope: !1405, inlinedAt: !1272)
!1407 = !DILocation(line: 198, column: 40, scope: !1405, inlinedAt: !1272)
!1408 = !DILocation(line: 198, column: 15, scope: !1388, inlinedAt: !1272)
!1409 = !DILocation(line: 199, column: 51, scope: !1405, inlinedAt: !1272)
!1410 = !DILocation(line: 199, column: 13, scope: !1405, inlinedAt: !1272)
!1411 = !DILocation(line: 200, column: 45, scope: !1412, inlinedAt: !1272)
!1412 = distinct !DILexicalBlock(scope: !1388, file: !1088, line: 200, column: 15)
!1413 = !DILocation(line: 201, column: 25, scope: !1412, inlinedAt: !1272)
!1414 = !DILocation(line: 201, column: 16, scope: !1412, inlinedAt: !1272)
!1415 = !DILocation(line: 201, column: 81, scope: !1412, inlinedAt: !1272)
!1416 = !DILocation(line: 201, column: 44, scope: !1412, inlinedAt: !1272)
!1417 = !DILocation(line: 200, column: 15, scope: !1388, inlinedAt: !1272)
!1418 = !DILocation(line: 202, column: 54, scope: !1412, inlinedAt: !1272)
!1419 = !DILocation(line: 202, column: 13, scope: !1412, inlinedAt: !1272)
!1420 = !DILocation(line: 205, column: 25, scope: !1390, inlinedAt: !1272)
!1421 = !DILocation(line: 205, column: 16, scope: !1390, inlinedAt: !1272)
!1422 = !DILocation(line: 205, column: 85, scope: !1390, inlinedAt: !1272)
!1423 = !DILocation(line: 205, column: 50, scope: !1390, inlinedAt: !1272)
!1424 = !DILocation(line: 204, column: 15, scope: !1388, inlinedAt: !1272)
!1425 = !DILocation(line: 207, column: 15, scope: !1390, inlinedAt: !1272)
!1426 = !DILocation(line: 206, column: 53, scope: !1390, inlinedAt: !1272)
!1427 = !DILocation(line: 206, column: 52, scope: !1390, inlinedAt: !1272)
!1428 = !DILocation(line: 206, column: 13, scope: !1390, inlinedAt: !1272)
!1429 = distinct !{!1429, !1321, !1378, !1302, !1303}
!1430 = distinct !{!1430, !1308, !1324, !1302, !1303}
!1431 = !DILocation(line: 574, column: 25, scope: !1123)
!1432 = !DILocation(line: 575, column: 11, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1123, file: !1088, line: 575, column: 11)
!1434 = !DILocation(line: 575, column: 40, scope: !1433)
!1435 = !DILocation(line: 575, column: 11, scope: !1123)
!1436 = !DILocation(line: 577, column: 14, scope: !1123)
!1437 = !DILocation(line: 578, column: 7, scope: !1123)
!1438 = !DILocation(line: 583, column: 18, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !1088, line: 582, column: 9)
!1440 = distinct !DILexicalBlock(scope: !1123, file: !1088, line: 579, column: 7)
!1441 = !DILocation(line: 585, column: 18, scope: !1439)
!1442 = !DILocation(line: 587, column: 18, scope: !1439)
!1443 = !DILocation(line: 589, column: 11, scope: !1439)
!1444 = !DILocation(line: 593, column: 18, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1440, file: !1088, line: 592, column: 9)
!1446 = !DILocation(line: 595, column: 18, scope: !1445)
!1447 = !DILocation(line: 597, column: 18, scope: !1445)
!1448 = !DILocation(line: 599, column: 18, scope: !1445)
!1449 = !DILocation(line: 601, column: 11, scope: !1445)
!1450 = !DILocation(line: 605, column: 18, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1440, file: !1088, line: 604, column: 9)
!1452 = !DILocation(line: 607, column: 11, scope: !1451)
!1453 = !DILocation(line: 610, column: 18, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1123, file: !1088, line: 610, column: 11)
!1455 = !DILocation(line: 610, column: 24, scope: !1454)
!1456 = !DILocation(line: 610, column: 11, scope: !1123)
!1457 = !DILocation(line: 611, column: 16, scope: !1454)
!1458 = !DILocation(line: 611, column: 9, scope: !1454)
!1459 = !DILocation(line: 613, column: 48, scope: !1123)
!1460 = !DILocation(line: 615, column: 14, scope: !1123)
!1461 = !DILocation(line: 615, column: 27, scope: !1123)
!1462 = !DILocation(line: 615, column: 7, scope: !1123)
!1463 = !DILocation(line: 617, column: 10, scope: !1087)
!1464 = !{!1200, !1200, i64 0}
!1465 = !DILocation(line: 618, column: 39, scope: !1087)
!1466 = !DILocation(line: 618, column: 16, scope: !1087)
!1467 = !DILocation(line: 619, column: 13, scope: !1087)
!1468 = !DILocation(line: 620, column: 3, scope: !1087)
!1469 = !DILocation(line: 621, column: 15, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 621, column: 7)
!1471 = !DILocation(line: 621, column: 7, scope: !1087)
!1472 = !DILocation(line: 626, column: 19, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !1088, line: 626, column: 11)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !1088, line: 622, column: 5)
!1475 = !DILocation(line: 626, column: 11, scope: !1473)
!1476 = !DILocation(line: 626, column: 35, scope: !1473)
!1477 = !DILocation(line: 626, column: 11, scope: !1474)
!1478 = !DILocation(line: 627, column: 57, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1473, file: !1088, line: 627, column: 13)
!1480 = !DILocation(line: 627, column: 13, scope: !1479)
!1481 = !DILocation(line: 627, column: 67, scope: !1479)
!1482 = !DILocation(line: 627, column: 13, scope: !1473)
!1483 = !DILocation(line: 628, column: 18, scope: !1479)
!1484 = !DILocation(line: 628, column: 11, scope: !1479)
!1485 = !DILocation(line: 629, column: 12, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1474, file: !1088, line: 629, column: 11)
!1487 = !DILocation(line: 629, column: 42, scope: !1486)
!1488 = !DILocation(line: 629, column: 61, scope: !1486)
!1489 = !DILocation(line: 630, column: 12, scope: !1486)
!1490 = !DILocation(line: 630, column: 38, scope: !1486)
!1491 = !DILocation(line: 630, column: 57, scope: !1486)
!1492 = !DILocation(line: 630, column: 68, scope: !1486)
!1493 = !{!1199, !1202, i64 432}
!1494 = !DILocation(line: 630, column: 74, scope: !1486)
!1495 = !DILocation(line: 629, column: 11, scope: !1474)
!1496 = !DILocation(line: 631, column: 51, scope: !1486)
!1497 = !DILocation(line: 631, column: 16, scope: !1486)
!1498 = !DILocation(line: 631, column: 9, scope: !1486)
!1499 = !DILocation(line: 633, column: 58, scope: !1486)
!1500 = !DILocation(line: 634, column: 18, scope: !1486)
!1501 = !DILocation(line: 633, column: 67, scope: !1486)
!1502 = !DILocation(line: 633, column: 16, scope: !1486)
!1503 = !DILocation(line: 635, column: 49, scope: !1474)
!1504 = !DILocation(line: 635, column: 14, scope: !1474)
!1505 = !DILocation(line: 636, column: 19, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1474, file: !1088, line: 636, column: 11)
!1507 = !{!1199, !1202, i64 12904}
!1508 = !DILocation(line: 636, column: 34, scope: !1506)
!1509 = !DILocation(line: 636, column: 40, scope: !1506)
!1510 = !DILocation(line: 636, column: 51, scope: !1506)
!1511 = !{!1199, !1202, i64 12912}
!1512 = !DILocation(line: 636, column: 63, scope: !1506)
!1513 = !DILocation(line: 636, column: 11, scope: !1474)
!1514 = !DILocation(line: 637, column: 46, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1506, file: !1088, line: 637, column: 13)
!1516 = !DILocation(line: 637, column: 36, scope: !1515)
!1517 = !DILocation(line: 0, scope: !1515)
!1518 = !DILocation(line: 637, column: 55, scope: !1515)
!1519 = !DILocation(line: 638, column: 43, scope: !1515)
!1520 = !DILocation(line: 638, column: 33, scope: !1515)
!1521 = !DILocation(line: 637, column: 13, scope: !1506)
!1522 = !DILocation(line: 639, column: 56, scope: !1515)
!1523 = !DILocation(line: 640, column: 35, scope: !1515)
!1524 = !DILocation(line: 639, column: 18, scope: !1515)
!1525 = !DILocation(line: 639, column: 11, scope: !1515)
!1526 = !DILocation(line: 641, column: 67, scope: !1474)
!1527 = !DILocation(line: 641, column: 51, scope: !1474)
!1528 = !DILocation(line: 642, column: 25, scope: !1474)
!1529 = !DILocation(line: 642, column: 9, scope: !1474)
!1530 = !DILocation(line: 641, column: 14, scope: !1474)
!1531 = !DILocation(line: 643, column: 19, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1474, file: !1088, line: 643, column: 11)
!1533 = !DILocation(line: 643, column: 24, scope: !1532)
!1534 = !{!1199, !1202, i64 280}
!1535 = !DILocation(line: 643, column: 30, scope: !1532)
!1536 = !DILocation(line: 0, scope: !1532)
!1537 = !{!1199, !1202, i64 288}
!1538 = !DILocation(line: 643, column: 36, scope: !1532)
!1539 = !DILocation(line: 644, column: 24, scope: !1532)
!1540 = !{!1199, !1202, i64 296}
!1541 = !DILocation(line: 644, column: 26, scope: !1532)
!1542 = !DILocation(line: 644, column: 32, scope: !1532)
!1543 = !DILocation(line: 644, column: 48, scope: !1532)
!1544 = !{!1199, !1202, i64 304}
!1545 = !DILocation(line: 644, column: 50, scope: !1532)
!1546 = !DILocation(line: 643, column: 11, scope: !1474)
!1547 = !DILocation(line: 646, column: 50, scope: !1532)
!1548 = !DILocation(line: 645, column: 65, scope: !1532)
!1549 = !DILocation(line: 646, column: 29, scope: !1532)
!1550 = !DILocation(line: 646, column: 78, scope: !1532)
!1551 = !DILocation(line: 646, column: 57, scope: !1532)
!1552 = !DILocation(line: 647, column: 32, scope: !1532)
!1553 = !DILocation(line: 647, column: 11, scope: !1532)
!1554 = !DILocation(line: 645, column: 16, scope: !1532)
!1555 = !DILocation(line: 645, column: 9, scope: !1532)
!1556 = !DILocation(line: 648, column: 65, scope: !1474)
!1557 = !{!1199, !1202, i64 56}
!1558 = !DILocation(line: 648, column: 49, scope: !1474)
!1559 = !DILocation(line: 648, column: 14, scope: !1474)
!1560 = !DILocation(line: 649, column: 18, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1474, file: !1088, line: 649, column: 11)
!1562 = !{!1199, !1200, i64 13184}
!1563 = !DILocation(line: 649, column: 23, scope: !1561)
!1564 = !DILocation(line: 649, column: 11, scope: !1474)
!1565 = !DILocation(line: 651, column: 29, scope: !1561)
!1566 = !DILocation(line: 650, column: 44, scope: !1561)
!1567 = !DILocation(line: 650, column: 16, scope: !1561)
!1568 = !DILocation(line: 650, column: 9, scope: !1561)
!1569 = !DILocation(line: 652, column: 18, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1474, file: !1088, line: 652, column: 11)
!1571 = !DILocation(line: 652, column: 29, scope: !1570)
!1572 = !DILocation(line: 652, column: 11, scope: !1474)
!1573 = !DILocation(line: 654, column: 35, scope: !1570)
!1574 = !DILocation(line: 653, column: 44, scope: !1570)
!1575 = !DILocation(line: 653, column: 16, scope: !1570)
!1576 = !DILocation(line: 653, column: 9, scope: !1570)
!1577 = !DILocation(line: 655, column: 18, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1474, file: !1088, line: 655, column: 11)
!1579 = !{!1199, !1200, i64 0}
!1580 = !DILocation(line: 655, column: 32, scope: !1578)
!1581 = !DILocation(line: 0, scope: !1578)
!1582 = !{!1199, !1202, i64 464}
!1583 = !DILocation(line: 655, column: 11, scope: !1474)
!1584 = !DILocation(line: 657, column: 35, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !1088, line: 657, column: 15)
!1586 = distinct !DILexicalBlock(scope: !1578, file: !1088, line: 656, column: 9)
!1587 = !DILocation(line: 657, column: 15, scope: !1586)
!1588 = !DILocation(line: 659, column: 22, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1585, file: !1088, line: 658, column: 13)
!1590 = !DILocation(line: 660, column: 22, scope: !1589)
!1591 = !DILocation(line: 661, column: 13, scope: !1589)
!1592 = !DILocation(line: 664, column: 43, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1578, file: !1088, line: 664, column: 13)
!1594 = !{!1199, !1202, i64 64}
!1595 = !DILocation(line: 664, column: 33, scope: !1593)
!1596 = !DILocation(line: 664, column: 13, scope: !1578)
!1597 = !DILocation(line: 665, column: 50, scope: !1593)
!1598 = !DILocation(line: 665, column: 18, scope: !1593)
!1599 = !DILocation(line: 665, column: 11, scope: !1593)
!1600 = !DILocation(line: 667, column: 57, scope: !1593)
!1601 = !DILocation(line: 668, column: 33, scope: !1593)
!1602 = !DILocation(line: 667, column: 18, scope: !1593)
!1603 = !DILocation(line: 669, column: 18, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1474, file: !1088, line: 669, column: 11)
!1605 = !DILocation(line: 669, column: 24, scope: !1604)
!1606 = !{!1199, !1206, i64 480}
!1607 = !DILocation(line: 669, column: 45, scope: !1604)
!1608 = !DILocation(line: 669, column: 11, scope: !1474)
!1609 = !DILocation(line: 671, column: 45, scope: !1604)
!1610 = !DILocation(line: 672, column: 24, scope: !1604)
!1611 = !{!1199, !1206, i64 488}
!1612 = !DILocation(line: 673, column: 24, scope: !1604)
!1613 = !{!1199, !1206, i64 496}
!1614 = !DILocation(line: 670, column: 16, scope: !1604)
!1615 = !DILocation(line: 670, column: 9, scope: !1604)
!1616 = !DILocation(line: 674, column: 11, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1474, file: !1088, line: 674, column: 11)
!1618 = !DILocation(line: 674, column: 30, scope: !1617)
!1619 = !DILocation(line: 674, column: 11, scope: !1474)
!1620 = !DILocation(line: 676, column: 35, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !1088, line: 675, column: 9)
!1622 = !DILocation(line: 676, column: 18, scope: !1621)
!1623 = !DILocation(line: 677, column: 18, scope: !1621)
!1624 = !DILocation(line: 678, column: 9, scope: !1621)
!1625 = !DILocation(line: 680, column: 38, scope: !1474)
!1626 = !DILocation(line: 680, column: 9, scope: !1474)
!1627 = !DILocation(line: 680, column: 67, scope: !1474)
!1628 = !DILocation(line: 680, column: 61, scope: !1474)
!1629 = !DILocation(line: 680, column: 45, scope: !1474)
!1630 = !DILocation(line: 682, column: 9, scope: !1474)
!1631 = !DILocation(line: 681, column: 66, scope: !1474)
!1632 = !DILocation(line: 681, column: 52, scope: !1474)
!1633 = !DILocation(line: 681, column: 29, scope: !1474)
!1634 = !DILocation(line: 679, column: 14, scope: !1474)
!1635 = !DILocation(line: 683, column: 14, scope: !1474)
!1636 = !DILocation(line: 684, column: 14, scope: !1474)
!1637 = !DILocation(line: 685, column: 14, scope: !1474)
!1638 = !DILocation(line: 685, column: 27, scope: !1474)
!1639 = !DILocation(line: 685, column: 7, scope: !1474)
!1640 = !DILocation(line: 690, column: 10, scope: !1087)
!1641 = !DILocation(line: 691, column: 13, scope: !1087)
!1642 = !DILocation(line: 692, column: 15, scope: !1087)
!1643 = !DILocation(line: 693, column: 22, scope: !1087)
!1644 = !DILocation(line: 694, column: 8, scope: !1087)
!1645 = !DILocation(line: 695, column: 10, scope: !1087)
!1646 = !DILocation(line: 696, column: 53, scope: !1087)
!1647 = !DILocation(line: 696, column: 10, scope: !1087)
!1648 = !DILocation(line: 697, column: 15, scope: !1130)
!1649 = !DILocation(line: 697, column: 7, scope: !1130)
!1650 = !DILocation(line: 697, column: 31, scope: !1130)
!1651 = !DILocation(line: 697, column: 7, scope: !1087)
!1652 = !DILocation(line: 698, column: 9, scope: !1129)
!1653 = !DILocation(line: 698, column: 63, scope: !1129)
!1654 = !DILocation(line: 698, column: 9, scope: !1130)
!1655 = !DILocation(line: 700, column: 9, scope: !1128)
!1656 = !DILocation(line: 701, column: 11, scope: !1128)
!1657 = !DILocation(line: 703, column: 9, scope: !1128)
!1658 = !DILocation(line: 704, column: 16, scope: !1128)
!1659 = !DILocation(line: 705, column: 7, scope: !1129)
!1660 = !DILocation(line: 705, column: 7, scope: !1128)
!1661 = !DILocation(line: 706, column: 36, scope: !1087)
!1662 = !DILocation(line: 706, column: 15, scope: !1087)
!1663 = !DILocation(line: 707, column: 20, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 707, column: 7)
!1665 = !DILocation(line: 707, column: 50, scope: !1664)
!1666 = !DILocation(line: 709, column: 12, scope: !1664)
!1667 = !DILocation(line: 713, column: 50, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 713, column: 7)
!1669 = !DILocation(line: 708, column: 8, scope: !1664)
!1670 = !DILocation(line: 708, column: 42, scope: !1664)
!1671 = !DILocation(line: 707, column: 7, scope: !1087)
!1672 = !DILocation(line: 712, column: 7, scope: !1664)
!1673 = !DILocation(line: 711, column: 12, scope: !1664)
!1674 = !DILocation(line: 714, column: 8, scope: !1668)
!1675 = !DILocation(line: 714, column: 39, scope: !1668)
!1676 = !DILocation(line: 713, column: 7, scope: !1087)
!1677 = !DILocation(line: 715, column: 54, scope: !1668)
!1678 = !DILocation(line: 715, column: 12, scope: !1668)
!1679 = !DILocation(line: 715, column: 5, scope: !1668)
!1680 = !DILocation(line: 718, column: 41, scope: !1087)
!1681 = !DILocation(line: 718, column: 24, scope: !1087)
!1682 = !DILocation(line: 717, column: 48, scope: !1087)
!1683 = !DILocation(line: 717, column: 10, scope: !1087)
!1684 = !DILocation(line: 720, column: 12, scope: !1087)
!1685 = !DILocation(line: 719, column: 72, scope: !1087)
!1686 = !DILocation(line: 720, column: 36, scope: !1087)
!1687 = !DILocation(line: 720, column: 20, scope: !1087)
!1688 = !DILocation(line: 720, column: 69, scope: !1087)
!1689 = !{!1199, !1202, i64 13152}
!1690 = !DILocation(line: 720, column: 41, scope: !1087)
!1691 = !DILocation(line: 721, column: 24, scope: !1087)
!1692 = !{!1199, !1202, i64 13160}
!1693 = !DILocation(line: 720, column: 71, scope: !1087)
!1694 = !DILocation(line: 719, column: 10, scope: !1087)
!1695 = !DILocation(line: 722, column: 15, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 722, column: 7)
!1697 = !DILocation(line: 722, column: 30, scope: !1696)
!1698 = !DILocation(line: 722, column: 36, scope: !1696)
!1699 = !DILocation(line: 722, column: 47, scope: !1696)
!1700 = !DILocation(line: 722, column: 59, scope: !1696)
!1701 = !DILocation(line: 722, column: 7, scope: !1087)
!1702 = !DILocation(line: 723, column: 42, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1696, file: !1088, line: 723, column: 9)
!1704 = !DILocation(line: 723, column: 32, scope: !1703)
!1705 = !DILocation(line: 0, scope: !1703)
!1706 = !DILocation(line: 723, column: 51, scope: !1703)
!1707 = !DILocation(line: 724, column: 39, scope: !1703)
!1708 = !DILocation(line: 724, column: 29, scope: !1703)
!1709 = !DILocation(line: 723, column: 9, scope: !1696)
!1710 = !DILocation(line: 725, column: 69, scope: !1703)
!1711 = !DILocation(line: 726, column: 31, scope: !1703)
!1712 = !DILocation(line: 725, column: 14, scope: !1703)
!1713 = !DILocation(line: 725, column: 7, scope: !1703)
!1714 = !DILocation(line: 727, column: 15, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 727, column: 7)
!1716 = !{!1199, !1206, i64 264}
!1717 = !DILocation(line: 727, column: 28, scope: !1715)
!1718 = !DILocation(line: 727, column: 36, scope: !1715)
!1719 = !DILocation(line: 727, column: 47, scope: !1715)
!1720 = !{!1199, !1206, i64 272}
!1721 = !DILocation(line: 727, column: 60, scope: !1715)
!1722 = !DILocation(line: 727, column: 7, scope: !1087)
!1723 = !DILocation(line: 729, column: 14, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1715, file: !1088, line: 728, column: 5)
!1725 = !DILocation(line: 732, column: 16, scope: !1724)
!1726 = !DILocation(line: 731, column: 60, scope: !1724)
!1727 = !DILocation(line: 732, column: 31, scope: !1724)
!1728 = !DILocation(line: 732, column: 23, scope: !1724)
!1729 = !DILocation(line: 732, column: 60, scope: !1724)
!1730 = !DILocation(line: 732, column: 44, scope: !1724)
!1731 = !DILocation(line: 733, column: 16, scope: !1724)
!1732 = !DILocation(line: 732, column: 64, scope: !1724)
!1733 = !DILocation(line: 731, column: 14, scope: !1724)
!1734 = !DILocation(line: 734, column: 5, scope: !1724)
!1735 = !DILocation(line: 736, column: 46, scope: !1087)
!1736 = !{!1199, !1200, i64 224}
!1737 = !DILocation(line: 736, column: 29, scope: !1087)
!1738 = !DILocation(line: 735, column: 48, scope: !1087)
!1739 = !DILocation(line: 735, column: 10, scope: !1087)
!1740 = !DILocation(line: 738, column: 23, scope: !1087)
!1741 = !DILocation(line: 737, column: 47, scope: !1087)
!1742 = !DILocation(line: 737, column: 10, scope: !1087)
!1743 = !DILocation(line: 739, column: 14, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 739, column: 7)
!1745 = !DILocation(line: 739, column: 19, scope: !1744)
!1746 = !DILocation(line: 739, column: 7, scope: !1087)
!1747 = !DILocation(line: 741, column: 25, scope: !1744)
!1748 = !DILocation(line: 740, column: 54, scope: !1744)
!1749 = !DILocation(line: 740, column: 12, scope: !1744)
!1750 = !DILocation(line: 740, column: 5, scope: !1744)
!1751 = !DILocation(line: 743, column: 42, scope: !1087)
!1752 = !{!1199, !1200, i64 408}
!1753 = !DILocation(line: 743, column: 25, scope: !1087)
!1754 = !DILocation(line: 742, column: 52, scope: !1087)
!1755 = !DILocation(line: 742, column: 10, scope: !1087)
!1756 = !DILocation(line: 748, column: 46, scope: !1087)
!1757 = !DILocation(line: 748, column: 29, scope: !1087)
!1758 = !DILocation(line: 747, column: 53, scope: !1087)
!1759 = !DILocation(line: 747, column: 10, scope: !1087)
!1760 = !DILocation(line: 753, column: 21, scope: !1087)
!1761 = !DILocation(line: 755, column: 7, scope: !1087)
!1762 = !DILocation(line: 760, column: 26, scope: !1132)
!1763 = !DILocation(line: 761, column: 30, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1132, file: !1088, line: 761, column: 11)
!1765 = !DILocation(line: 761, column: 11, scope: !1132)
!1766 = !DILocation(line: 763, column: 16, scope: !1132)
!1767 = !DILocation(line: 764, column: 20, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1132, file: !1088, line: 764, column: 11)
!1769 = !DILocation(line: 764, column: 11, scope: !1132)
!1770 = !DILocation(line: 766, column: 27, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !1088, line: 765, column: 9)
!1772 = !DILocation(line: 767, column: 25, scope: !1771)
!1773 = !DILocation(line: 768, column: 9, scope: !1771)
!1774 = !DILocation(line: 769, column: 16, scope: !1132)
!1775 = !DILocation(line: 770, column: 20, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1132, file: !1088, line: 770, column: 11)
!1777 = !DILocation(line: 770, column: 11, scope: !1132)
!1778 = !DILocation(line: 0, scope: !1237, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 772, column: 20, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !1088, line: 771, column: 9)
!1781 = !DILocation(line: 75, column: 10, scope: !1237, inlinedAt: !1779)
!1782 = !DILocation(line: 773, column: 28, scope: !1780)
!1783 = !DILocation(line: 774, column: 9, scope: !1780)
!1784 = !DILocation(line: 775, column: 13, scope: !1132)
!1785 = !DILocation(line: 0, scope: !1132)
!1786 = !DILocation(line: 776, column: 18, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1132, file: !1088, line: 776, column: 11)
!1788 = !DILocation(line: 776, column: 24, scope: !1787)
!1789 = !DILocation(line: 776, column: 11, scope: !1132)
!1790 = !DILocation(line: 777, column: 61, scope: !1787)
!1791 = !DILocation(line: 777, column: 16, scope: !1787)
!1792 = !DILocation(line: 777, column: 9, scope: !1787)
!1793 = !DILocation(line: 780, column: 67, scope: !1787)
!1794 = !DILocation(line: 781, column: 24, scope: !1787)
!1795 = !DILocation(line: 780, column: 16, scope: !1787)
!1796 = !DILocation(line: 782, column: 14, scope: !1132)
!1797 = !DILocation(line: 783, column: 11, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1132, file: !1088, line: 783, column: 11)
!1799 = !DILocation(line: 783, column: 40, scope: !1798)
!1800 = !DILocation(line: 783, column: 11, scope: !1132)
!1801 = !DILocation(line: 785, column: 7, scope: !1132)
!1802 = !DILocation(line: 801, column: 13, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !1088, line: 799, column: 9)
!1804 = distinct !DILexicalBlock(scope: !1132, file: !1088, line: 786, column: 7)
!1805 = !DILocation(line: 801, column: 45, scope: !1803)
!1806 = !{!1296, !1202, i64 0}
!1807 = !DILocation(line: 800, column: 64, scope: !1803)
!1808 = !DILocation(line: 800, column: 18, scope: !1803)
!1809 = !DILocation(line: 808, column: 11, scope: !1803)
!1810 = !DILocation(line: 0, scope: !1804)
!1811 = !DILocation(line: 817, column: 18, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1132, file: !1088, line: 817, column: 11)
!1813 = !DILocation(line: 817, column: 24, scope: !1812)
!1814 = !DILocation(line: 817, column: 11, scope: !1132)
!1815 = !DILocation(line: 819, column: 11, scope: !1812)
!1816 = !DILocation(line: 819, column: 46, scope: !1812)
!1817 = !DILocation(line: 818, column: 63, scope: !1812)
!1818 = !DILocation(line: 818, column: 16, scope: !1812)
!1819 = !DILocation(line: 818, column: 9, scope: !1812)
!1820 = !DILocation(line: 821, column: 18, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1132, file: !1088, line: 821, column: 11)
!1822 = !DILocation(line: 821, column: 24, scope: !1821)
!1823 = !DILocation(line: 821, column: 11, scope: !1132)
!1824 = !DILocation(line: 823, column: 35, scope: !1821)
!1825 = !DILocation(line: 822, column: 61, scope: !1821)
!1826 = !DILocation(line: 822, column: 37, scope: !1821)
!1827 = !DILocation(line: 822, column: 15, scope: !1821)
!1828 = !DILocation(line: 822, column: 9, scope: !1821)
!1829 = !DILocation(line: 827, column: 14, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !1088, line: 826, column: 5)
!1831 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 825, column: 7)
!1832 = !DILocation(line: 828, column: 7, scope: !1830)
!1833 = !DILocation(line: 833, column: 66, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !1088, line: 832, column: 9)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !1088, line: 829, column: 7)
!1836 = !DILocalVariable(name: "file", arg: 1, scope: !1837, file: !1088, line: 443, type: !593)
!1837 = distinct !DISubprogram(name: "PrintChannelStatistics", scope: !1088, file: !1088, line: 443, type: !1838, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1844)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!731, !593, !1840, !654, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !939)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!1844 = !{!1836, !1845, !1846, !1847, !1848, !1849}
!1845 = !DILocalVariable(name: "channel", arg: 2, scope: !1837, file: !1088, line: 443, type: !1840)
!1846 = !DILocalVariable(name: "name", arg: 3, scope: !1837, file: !1088, line: 444, type: !654)
!1847 = !DILocalVariable(name: "scale", arg: 4, scope: !1837, file: !1088, line: 444, type: !1841)
!1848 = !DILocalVariable(name: "channel_statistics", arg: 5, scope: !1837, file: !1088, line: 445, type: !1842)
!1849 = !DILocalVariable(name: "n", scope: !1837, file: !1088, line: 453, type: !731)
!1850 = !DILocation(line: 0, scope: !1837, inlinedAt: !1851)
!1851 = distinct !DILocation(line: 833, column: 18, scope: !1834)
!1852 = !DILocation(line: 471, column: 33, scope: !1837, inlinedAt: !1851)
!1853 = !DILocation(line: 470, column: 69, scope: !1837, inlinedAt: !1851)
!1854 = !DILocation(line: 470, column: 64, scope: !1837, inlinedAt: !1851)
!1855 = !DILocalVariable(name: "value", arg: 1, scope: !1856, file: !147, line: 87, type: !1859)
!1856 = distinct !DISubprogram(name: "ClampToQuantum", scope: !147, file: !147, line: 87, type: !1857, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1860)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!700, !1859}
!1859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1078)
!1860 = !{!1855}
!1861 = !DILocation(line: 0, scope: !1856, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 470, column: 49, scope: !1837, inlinedAt: !1851)
!1863 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !1862)
!1864 = distinct !DILexicalBlock(scope: !1856, file: !147, line: 92, column: 7)
!1865 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !1862)
!1866 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !1862)
!1867 = distinct !DILexicalBlock(scope: !1856, file: !147, line: 94, column: 7)
!1868 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !1862)
!1869 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !1862)
!1870 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !1862)
!1871 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !1862)
!1872 = !DILocation(line: 471, column: 75, scope: !1837, inlinedAt: !1851)
!1873 = !DILocation(line: 473, column: 33, scope: !1837, inlinedAt: !1851)
!1874 = !DILocation(line: 472, column: 47, scope: !1837, inlinedAt: !1851)
!1875 = !DILocation(line: 472, column: 42, scope: !1837, inlinedAt: !1851)
!1876 = !DILocation(line: 0, scope: !1856, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 472, column: 27, scope: !1837, inlinedAt: !1851)
!1878 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !1877)
!1879 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !1877)
!1880 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !1877)
!1881 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !1877)
!1882 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !1877)
!1883 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !1877)
!1884 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !1877)
!1885 = !DILocation(line: 473, column: 75, scope: !1837, inlinedAt: !1851)
!1886 = !DILocation(line: 474, column: 61, scope: !1837, inlinedAt: !1851)
!1887 = !{!1296, !1206, i64 56}
!1888 = !DILocation(line: 474, column: 32, scope: !1837, inlinedAt: !1851)
!1889 = !DILocation(line: 475, column: 37, scope: !1837, inlinedAt: !1851)
!1890 = !DILocation(line: 476, column: 33, scope: !1837, inlinedAt: !1851)
!1891 = !{!1296, !1206, i64 72}
!1892 = !DILocation(line: 475, column: 65, scope: !1837, inlinedAt: !1851)
!1893 = !DILocation(line: 477, column: 51, scope: !1837, inlinedAt: !1851)
!1894 = !DILocation(line: 478, column: 33, scope: !1837, inlinedAt: !1851)
!1895 = !{!1296, !1206, i64 80}
!1896 = !DILocation(line: 478, column: 70, scope: !1837, inlinedAt: !1851)
!1897 = !{!1296, !1206, i64 88}
!1898 = !DILocation(line: 470, column: 5, scope: !1837, inlinedAt: !1851)
!1899 = !DILocation(line: 0, scope: !1837, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 835, column: 18, scope: !1834)
!1901 = !DILocation(line: 471, column: 33, scope: !1837, inlinedAt: !1900)
!1902 = !DILocation(line: 470, column: 69, scope: !1837, inlinedAt: !1900)
!1903 = !DILocation(line: 470, column: 64, scope: !1837, inlinedAt: !1900)
!1904 = !DILocation(line: 0, scope: !1856, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 470, column: 49, scope: !1837, inlinedAt: !1900)
!1906 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !1905)
!1907 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !1905)
!1908 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !1905)
!1909 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !1905)
!1910 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !1905)
!1911 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !1905)
!1912 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !1905)
!1913 = !DILocation(line: 471, column: 75, scope: !1837, inlinedAt: !1900)
!1914 = !DILocation(line: 473, column: 33, scope: !1837, inlinedAt: !1900)
!1915 = !DILocation(line: 472, column: 47, scope: !1837, inlinedAt: !1900)
!1916 = !DILocation(line: 472, column: 42, scope: !1837, inlinedAt: !1900)
!1917 = !DILocation(line: 0, scope: !1856, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 472, column: 27, scope: !1837, inlinedAt: !1900)
!1919 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !1918)
!1920 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !1918)
!1921 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !1918)
!1922 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !1918)
!1923 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !1918)
!1924 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !1918)
!1925 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !1918)
!1926 = !DILocation(line: 473, column: 75, scope: !1837, inlinedAt: !1900)
!1927 = !DILocation(line: 474, column: 61, scope: !1837, inlinedAt: !1900)
!1928 = !DILocation(line: 474, column: 32, scope: !1837, inlinedAt: !1900)
!1929 = !DILocation(line: 475, column: 37, scope: !1837, inlinedAt: !1900)
!1930 = !DILocation(line: 476, column: 33, scope: !1837, inlinedAt: !1900)
!1931 = !DILocation(line: 475, column: 65, scope: !1837, inlinedAt: !1900)
!1932 = !DILocation(line: 477, column: 51, scope: !1837, inlinedAt: !1900)
!1933 = !DILocation(line: 478, column: 33, scope: !1837, inlinedAt: !1900)
!1934 = !DILocation(line: 478, column: 70, scope: !1837, inlinedAt: !1900)
!1935 = !DILocation(line: 470, column: 5, scope: !1837, inlinedAt: !1900)
!1936 = !DILocation(line: 0, scope: !1837, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 837, column: 18, scope: !1834)
!1938 = !DILocation(line: 471, column: 33, scope: !1837, inlinedAt: !1937)
!1939 = !DILocation(line: 470, column: 69, scope: !1837, inlinedAt: !1937)
!1940 = !DILocation(line: 470, column: 64, scope: !1837, inlinedAt: !1937)
!1941 = !DILocation(line: 0, scope: !1856, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 470, column: 49, scope: !1837, inlinedAt: !1937)
!1943 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !1942)
!1944 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !1942)
!1945 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !1942)
!1946 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !1942)
!1947 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !1942)
!1948 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !1942)
!1949 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !1942)
!1950 = !DILocation(line: 471, column: 75, scope: !1837, inlinedAt: !1937)
!1951 = !DILocation(line: 473, column: 33, scope: !1837, inlinedAt: !1937)
!1952 = !DILocation(line: 472, column: 47, scope: !1837, inlinedAt: !1937)
!1953 = !DILocation(line: 472, column: 42, scope: !1837, inlinedAt: !1937)
!1954 = !DILocation(line: 0, scope: !1856, inlinedAt: !1955)
!1955 = distinct !DILocation(line: 472, column: 27, scope: !1837, inlinedAt: !1937)
!1956 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !1955)
!1957 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !1955)
!1958 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !1955)
!1959 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !1955)
!1960 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !1955)
!1961 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !1955)
!1962 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !1955)
!1963 = !DILocation(line: 473, column: 75, scope: !1837, inlinedAt: !1937)
!1964 = !DILocation(line: 474, column: 61, scope: !1837, inlinedAt: !1937)
!1965 = !DILocation(line: 474, column: 32, scope: !1837, inlinedAt: !1937)
!1966 = !DILocation(line: 475, column: 37, scope: !1837, inlinedAt: !1937)
!1967 = !DILocation(line: 476, column: 33, scope: !1837, inlinedAt: !1937)
!1968 = !DILocation(line: 475, column: 65, scope: !1837, inlinedAt: !1937)
!1969 = !DILocation(line: 477, column: 51, scope: !1837, inlinedAt: !1937)
!1970 = !DILocation(line: 478, column: 33, scope: !1837, inlinedAt: !1937)
!1971 = !DILocation(line: 478, column: 70, scope: !1837, inlinedAt: !1937)
!1972 = !DILocation(line: 470, column: 5, scope: !1837, inlinedAt: !1937)
!1973 = !DILocation(line: 839, column: 11, scope: !1834)
!1974 = !DILocation(line: 843, column: 68, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1835, file: !1088, line: 842, column: 9)
!1976 = !DILocation(line: 0, scope: !1837, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 843, column: 18, scope: !1975)
!1978 = !DILocation(line: 471, column: 33, scope: !1837, inlinedAt: !1977)
!1979 = !DILocation(line: 470, column: 69, scope: !1837, inlinedAt: !1977)
!1980 = !DILocation(line: 470, column: 64, scope: !1837, inlinedAt: !1977)
!1981 = !DILocation(line: 0, scope: !1856, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 470, column: 49, scope: !1837, inlinedAt: !1977)
!1983 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !1982)
!1984 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !1982)
!1985 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !1982)
!1986 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !1982)
!1987 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !1982)
!1988 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !1982)
!1989 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !1982)
!1990 = !DILocation(line: 471, column: 75, scope: !1837, inlinedAt: !1977)
!1991 = !DILocation(line: 473, column: 33, scope: !1837, inlinedAt: !1977)
!1992 = !DILocation(line: 472, column: 47, scope: !1837, inlinedAt: !1977)
!1993 = !DILocation(line: 472, column: 42, scope: !1837, inlinedAt: !1977)
!1994 = !DILocation(line: 0, scope: !1856, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 472, column: 27, scope: !1837, inlinedAt: !1977)
!1996 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !1995)
!1997 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !1995)
!1998 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !1995)
!1999 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !1995)
!2000 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !1995)
!2001 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !1995)
!2002 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !1995)
!2003 = !DILocation(line: 473, column: 75, scope: !1837, inlinedAt: !1977)
!2004 = !DILocation(line: 474, column: 61, scope: !1837, inlinedAt: !1977)
!2005 = !DILocation(line: 474, column: 32, scope: !1837, inlinedAt: !1977)
!2006 = !DILocation(line: 475, column: 37, scope: !1837, inlinedAt: !1977)
!2007 = !DILocation(line: 476, column: 33, scope: !1837, inlinedAt: !1977)
!2008 = !DILocation(line: 475, column: 65, scope: !1837, inlinedAt: !1977)
!2009 = !DILocation(line: 477, column: 51, scope: !1837, inlinedAt: !1977)
!2010 = !DILocation(line: 478, column: 33, scope: !1837, inlinedAt: !1977)
!2011 = !DILocation(line: 478, column: 70, scope: !1837, inlinedAt: !1977)
!2012 = !DILocation(line: 470, column: 5, scope: !1837, inlinedAt: !1977)
!2013 = !DILocation(line: 0, scope: !1837, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 845, column: 18, scope: !1975)
!2015 = !DILocation(line: 471, column: 33, scope: !1837, inlinedAt: !2014)
!2016 = !DILocation(line: 470, column: 69, scope: !1837, inlinedAt: !2014)
!2017 = !DILocation(line: 470, column: 64, scope: !1837, inlinedAt: !2014)
!2018 = !DILocation(line: 0, scope: !1856, inlinedAt: !2019)
!2019 = distinct !DILocation(line: 470, column: 49, scope: !1837, inlinedAt: !2014)
!2020 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2019)
!2021 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2019)
!2022 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2019)
!2023 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2019)
!2024 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2019)
!2025 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2019)
!2026 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2019)
!2027 = !DILocation(line: 471, column: 75, scope: !1837, inlinedAt: !2014)
!2028 = !DILocation(line: 473, column: 33, scope: !1837, inlinedAt: !2014)
!2029 = !DILocation(line: 472, column: 47, scope: !1837, inlinedAt: !2014)
!2030 = !DILocation(line: 472, column: 42, scope: !1837, inlinedAt: !2014)
!2031 = !DILocation(line: 0, scope: !1856, inlinedAt: !2032)
!2032 = distinct !DILocation(line: 472, column: 27, scope: !1837, inlinedAt: !2014)
!2033 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2032)
!2034 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2032)
!2035 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2032)
!2036 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2032)
!2037 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2032)
!2038 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2032)
!2039 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2032)
!2040 = !DILocation(line: 473, column: 75, scope: !1837, inlinedAt: !2014)
!2041 = !DILocation(line: 474, column: 61, scope: !1837, inlinedAt: !2014)
!2042 = !DILocation(line: 474, column: 32, scope: !1837, inlinedAt: !2014)
!2043 = !DILocation(line: 475, column: 37, scope: !1837, inlinedAt: !2014)
!2044 = !DILocation(line: 476, column: 33, scope: !1837, inlinedAt: !2014)
!2045 = !DILocation(line: 475, column: 65, scope: !1837, inlinedAt: !2014)
!2046 = !DILocation(line: 477, column: 51, scope: !1837, inlinedAt: !2014)
!2047 = !DILocation(line: 478, column: 33, scope: !1837, inlinedAt: !2014)
!2048 = !DILocation(line: 478, column: 70, scope: !1837, inlinedAt: !2014)
!2049 = !DILocation(line: 470, column: 5, scope: !1837, inlinedAt: !2014)
!2050 = !DILocation(line: 0, scope: !1837, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 847, column: 18, scope: !1975)
!2052 = !DILocation(line: 471, column: 33, scope: !1837, inlinedAt: !2051)
!2053 = !DILocation(line: 470, column: 69, scope: !1837, inlinedAt: !2051)
!2054 = !DILocation(line: 470, column: 64, scope: !1837, inlinedAt: !2051)
!2055 = !DILocation(line: 0, scope: !1856, inlinedAt: !2056)
!2056 = distinct !DILocation(line: 470, column: 49, scope: !1837, inlinedAt: !2051)
!2057 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2056)
!2058 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2056)
!2059 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2056)
!2060 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2056)
!2061 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2056)
!2062 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2056)
!2063 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2056)
!2064 = !DILocation(line: 471, column: 75, scope: !1837, inlinedAt: !2051)
!2065 = !DILocation(line: 473, column: 33, scope: !1837, inlinedAt: !2051)
!2066 = !DILocation(line: 472, column: 47, scope: !1837, inlinedAt: !2051)
!2067 = !DILocation(line: 472, column: 42, scope: !1837, inlinedAt: !2051)
!2068 = !DILocation(line: 0, scope: !1856, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 472, column: 27, scope: !1837, inlinedAt: !2051)
!2070 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2069)
!2071 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2069)
!2072 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2069)
!2073 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2069)
!2074 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2069)
!2075 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2069)
!2076 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2069)
!2077 = !DILocation(line: 473, column: 75, scope: !1837, inlinedAt: !2051)
!2078 = !DILocation(line: 474, column: 61, scope: !1837, inlinedAt: !2051)
!2079 = !DILocation(line: 474, column: 32, scope: !1837, inlinedAt: !2051)
!2080 = !DILocation(line: 475, column: 37, scope: !1837, inlinedAt: !2051)
!2081 = !DILocation(line: 476, column: 33, scope: !1837, inlinedAt: !2051)
!2082 = !DILocation(line: 475, column: 65, scope: !1837, inlinedAt: !2051)
!2083 = !DILocation(line: 477, column: 51, scope: !1837, inlinedAt: !2051)
!2084 = !DILocation(line: 478, column: 33, scope: !1837, inlinedAt: !2051)
!2085 = !DILocation(line: 478, column: 70, scope: !1837, inlinedAt: !2051)
!2086 = !DILocation(line: 470, column: 5, scope: !1837, inlinedAt: !2051)
!2087 = !DILocation(line: 0, scope: !1837, inlinedAt: !2088)
!2088 = distinct !DILocation(line: 849, column: 18, scope: !1975)
!2089 = !DILocation(line: 471, column: 33, scope: !1837, inlinedAt: !2088)
!2090 = !DILocation(line: 470, column: 69, scope: !1837, inlinedAt: !2088)
!2091 = !DILocation(line: 470, column: 64, scope: !1837, inlinedAt: !2088)
!2092 = !DILocation(line: 0, scope: !1856, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 470, column: 49, scope: !1837, inlinedAt: !2088)
!2094 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2093)
!2095 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2093)
!2096 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2093)
!2097 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2093)
!2098 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2093)
!2099 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2093)
!2100 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2093)
!2101 = !DILocation(line: 471, column: 75, scope: !1837, inlinedAt: !2088)
!2102 = !DILocation(line: 473, column: 33, scope: !1837, inlinedAt: !2088)
!2103 = !DILocation(line: 472, column: 47, scope: !1837, inlinedAt: !2088)
!2104 = !DILocation(line: 472, column: 42, scope: !1837, inlinedAt: !2088)
!2105 = !DILocation(line: 0, scope: !1856, inlinedAt: !2106)
!2106 = distinct !DILocation(line: 472, column: 27, scope: !1837, inlinedAt: !2088)
!2107 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2106)
!2108 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2106)
!2109 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2106)
!2110 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2106)
!2111 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2106)
!2112 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2106)
!2113 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2106)
!2114 = !DILocation(line: 473, column: 75, scope: !1837, inlinedAt: !2088)
!2115 = !DILocation(line: 474, column: 61, scope: !1837, inlinedAt: !2088)
!2116 = !DILocation(line: 474, column: 32, scope: !1837, inlinedAt: !2088)
!2117 = !DILocation(line: 475, column: 37, scope: !1837, inlinedAt: !2088)
!2118 = !DILocation(line: 476, column: 33, scope: !1837, inlinedAt: !2088)
!2119 = !DILocation(line: 475, column: 65, scope: !1837, inlinedAt: !2088)
!2120 = !DILocation(line: 477, column: 51, scope: !1837, inlinedAt: !2088)
!2121 = !DILocation(line: 478, column: 33, scope: !1837, inlinedAt: !2088)
!2122 = !DILocation(line: 478, column: 70, scope: !1837, inlinedAt: !2088)
!2123 = !DILocation(line: 470, column: 5, scope: !1837, inlinedAt: !2088)
!2124 = !DILocation(line: 851, column: 11, scope: !1975)
!2125 = !DILocation(line: 855, column: 68, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !1835, file: !1088, line: 854, column: 9)
!2127 = !DILocation(line: 0, scope: !1837, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 855, column: 18, scope: !2126)
!2129 = !DILocation(line: 471, column: 33, scope: !1837, inlinedAt: !2128)
!2130 = !DILocation(line: 470, column: 69, scope: !1837, inlinedAt: !2128)
!2131 = !DILocation(line: 470, column: 64, scope: !1837, inlinedAt: !2128)
!2132 = !DILocation(line: 0, scope: !1856, inlinedAt: !2133)
!2133 = distinct !DILocation(line: 470, column: 49, scope: !1837, inlinedAt: !2128)
!2134 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2133)
!2135 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2133)
!2136 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2133)
!2137 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2133)
!2138 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2133)
!2139 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2133)
!2140 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2133)
!2141 = !DILocation(line: 471, column: 75, scope: !1837, inlinedAt: !2128)
!2142 = !DILocation(line: 473, column: 33, scope: !1837, inlinedAt: !2128)
!2143 = !DILocation(line: 472, column: 47, scope: !1837, inlinedAt: !2128)
!2144 = !DILocation(line: 472, column: 42, scope: !1837, inlinedAt: !2128)
!2145 = !DILocation(line: 0, scope: !1856, inlinedAt: !2146)
!2146 = distinct !DILocation(line: 472, column: 27, scope: !1837, inlinedAt: !2128)
!2147 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2146)
!2148 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2146)
!2149 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2146)
!2150 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2146)
!2151 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2146)
!2152 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2146)
!2153 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2146)
!2154 = !DILocation(line: 473, column: 75, scope: !1837, inlinedAt: !2128)
!2155 = !DILocation(line: 474, column: 61, scope: !1837, inlinedAt: !2128)
!2156 = !DILocation(line: 474, column: 32, scope: !1837, inlinedAt: !2128)
!2157 = !DILocation(line: 475, column: 37, scope: !1837, inlinedAt: !2128)
!2158 = !DILocation(line: 476, column: 33, scope: !1837, inlinedAt: !2128)
!2159 = !DILocation(line: 475, column: 65, scope: !1837, inlinedAt: !2128)
!2160 = !DILocation(line: 477, column: 51, scope: !1837, inlinedAt: !2128)
!2161 = !DILocation(line: 478, column: 33, scope: !1837, inlinedAt: !2128)
!2162 = !DILocation(line: 478, column: 70, scope: !1837, inlinedAt: !2128)
!2163 = !DILocation(line: 470, column: 5, scope: !1837, inlinedAt: !2128)
!2164 = !DILocation(line: 857, column: 11, scope: !2126)
!2165 = !DILocation(line: 860, column: 18, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !1830, file: !1088, line: 860, column: 11)
!2167 = !DILocation(line: 860, column: 24, scope: !2166)
!2168 = !DILocation(line: 860, column: 11, scope: !1830)
!2169 = !DILocation(line: 861, column: 68, scope: !2166)
!2170 = !DILocation(line: 0, scope: !1837, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 861, column: 16, scope: !2166)
!2172 = !DILocation(line: 458, column: 51, scope: !2173, inlinedAt: !2171)
!2173 = distinct !DILexicalBlock(scope: !2174, file: !1088, line: 456, column: 5)
!2174 = distinct !DILexicalBlock(scope: !1837, file: !1088, line: 455, column: 7)
!2175 = !DILocation(line: 458, column: 22, scope: !2173, inlinedAt: !2171)
!2176 = !DILocation(line: 457, column: 73, scope: !2173, inlinedAt: !2171)
!2177 = !DILocation(line: 457, column: 68, scope: !2173, inlinedAt: !2171)
!2178 = !DILocation(line: 0, scope: !1856, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 457, column: 53, scope: !2173, inlinedAt: !2171)
!2180 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2179)
!2181 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2179)
!2182 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2179)
!2183 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2179)
!2184 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2179)
!2185 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2179)
!2186 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2179)
!2187 = !DILocation(line: 459, column: 58, scope: !2173, inlinedAt: !2171)
!2188 = !DILocation(line: 460, column: 72, scope: !2173, inlinedAt: !2171)
!2189 = !DILocation(line: 460, column: 43, scope: !2173, inlinedAt: !2171)
!2190 = !DILocation(line: 460, column: 29, scope: !2173, inlinedAt: !2171)
!2191 = !DILocation(line: 460, column: 24, scope: !2173, inlinedAt: !2171)
!2192 = !DILocation(line: 0, scope: !1856, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 460, column: 9, scope: !2173, inlinedAt: !2171)
!2194 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2193)
!2195 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2193)
!2196 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2193)
!2197 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2193)
!2198 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2193)
!2199 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2193)
!2200 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2193)
!2201 = !DILocation(line: 461, column: 58, scope: !2173, inlinedAt: !2171)
!2202 = !DILocation(line: 462, column: 57, scope: !2173, inlinedAt: !2171)
!2203 = !DILocation(line: 462, column: 28, scope: !2173, inlinedAt: !2171)
!2204 = !DILocation(line: 462, column: 14, scope: !2173, inlinedAt: !2171)
!2205 = !DILocation(line: 463, column: 42, scope: !2173, inlinedAt: !2171)
!2206 = !DILocation(line: 464, column: 37, scope: !2173, inlinedAt: !2171)
!2207 = !DILocation(line: 463, column: 70, scope: !2173, inlinedAt: !2171)
!2208 = !DILocation(line: 465, column: 55, scope: !2173, inlinedAt: !2171)
!2209 = !DILocation(line: 466, column: 37, scope: !2173, inlinedAt: !2171)
!2210 = !DILocation(line: 467, column: 37, scope: !2173, inlinedAt: !2171)
!2211 = !DILocation(line: 457, column: 9, scope: !2173, inlinedAt: !2171)
!2212 = !DILocation(line: 861, column: 9, scope: !2166)
!2213 = !DILocation(line: 863, column: 22, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !1830, file: !1088, line: 863, column: 11)
!2215 = !DILocation(line: 863, column: 11, scope: !1830)
!2216 = !DILocation(line: 865, column: 18, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2214, file: !1088, line: 864, column: 9)
!2218 = !DILocation(line: 866, column: 77, scope: !2217)
!2219 = !DILocation(line: 0, scope: !1837, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 866, column: 18, scope: !2217)
!2221 = !DILocation(line: 471, column: 33, scope: !1837, inlinedAt: !2220)
!2222 = !DILocation(line: 470, column: 69, scope: !1837, inlinedAt: !2220)
!2223 = !DILocation(line: 470, column: 64, scope: !1837, inlinedAt: !2220)
!2224 = !DILocation(line: 0, scope: !1856, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 470, column: 49, scope: !1837, inlinedAt: !2220)
!2226 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2225)
!2227 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2225)
!2228 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2225)
!2229 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2225)
!2230 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2225)
!2231 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2225)
!2232 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2225)
!2233 = !DILocation(line: 471, column: 75, scope: !1837, inlinedAt: !2220)
!2234 = !DILocation(line: 473, column: 33, scope: !1837, inlinedAt: !2220)
!2235 = !DILocation(line: 472, column: 47, scope: !1837, inlinedAt: !2220)
!2236 = !DILocation(line: 472, column: 42, scope: !1837, inlinedAt: !2220)
!2237 = !DILocation(line: 0, scope: !1856, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 472, column: 27, scope: !1837, inlinedAt: !2220)
!2239 = !DILocation(line: 92, column: 13, scope: !1864, inlinedAt: !2238)
!2240 = !DILocation(line: 92, column: 7, scope: !1856, inlinedAt: !2238)
!2241 = !DILocation(line: 94, column: 13, scope: !1867, inlinedAt: !2238)
!2242 = !DILocation(line: 94, column: 7, scope: !1856, inlinedAt: !2238)
!2243 = !DILocation(line: 96, column: 26, scope: !1856, inlinedAt: !2238)
!2244 = !DILocation(line: 96, column: 10, scope: !1856, inlinedAt: !2238)
!2245 = !DILocation(line: 96, column: 3, scope: !1856, inlinedAt: !2238)
!2246 = !DILocation(line: 473, column: 75, scope: !1837, inlinedAt: !2220)
!2247 = !DILocation(line: 474, column: 61, scope: !1837, inlinedAt: !2220)
!2248 = !DILocation(line: 474, column: 32, scope: !1837, inlinedAt: !2220)
!2249 = !DILocation(line: 475, column: 37, scope: !1837, inlinedAt: !2220)
!2250 = !DILocation(line: 476, column: 33, scope: !1837, inlinedAt: !2220)
!2251 = !DILocation(line: 475, column: 65, scope: !1837, inlinedAt: !2220)
!2252 = !DILocation(line: 477, column: 51, scope: !1837, inlinedAt: !2220)
!2253 = !DILocation(line: 478, column: 33, scope: !1837, inlinedAt: !2220)
!2254 = !DILocation(line: 478, column: 70, scope: !1837, inlinedAt: !2220)
!2255 = !DILocation(line: 470, column: 5, scope: !1837, inlinedAt: !2220)
!2256 = !DILocation(line: 868, column: 9, scope: !2217)
!2257 = !DILocation(line: 869, column: 48, scope: !1830)
!2258 = !DILocation(line: 872, column: 23, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 872, column: 7)
!2260 = !DILocation(line: 872, column: 7, scope: !1087)
!2261 = !DILocation(line: 874, column: 38, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2259, file: !1088, line: 873, column: 5)
!2263 = !DILocation(line: 874, column: 44, scope: !2262)
!2264 = !DILocation(line: 874, column: 13, scope: !2262)
!2265 = !DILocation(line: 875, column: 14, scope: !2262)
!2266 = !DILocation(line: 876, column: 7, scope: !2262)
!2267 = !DILocation(line: 881, column: 18, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !1088, line: 880, column: 9)
!2269 = distinct !DILexicalBlock(scope: !2262, file: !1088, line: 877, column: 7)
!2270 = !DILocation(line: 883, column: 18, scope: !2268)
!2271 = !DILocation(line: 885, column: 18, scope: !2268)
!2272 = !DILocation(line: 887, column: 11, scope: !2268)
!2273 = !DILocation(line: 891, column: 18, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2269, file: !1088, line: 890, column: 9)
!2275 = !DILocation(line: 893, column: 18, scope: !2274)
!2276 = !DILocation(line: 895, column: 18, scope: !2274)
!2277 = !DILocation(line: 897, column: 18, scope: !2274)
!2278 = !DILocation(line: 899, column: 11, scope: !2274)
!2279 = !DILocation(line: 903, column: 18, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2269, file: !1088, line: 902, column: 9)
!2281 = !DILocation(line: 905, column: 11, scope: !2280)
!2282 = !DILocation(line: 908, column: 18, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2262, file: !1088, line: 908, column: 11)
!2284 = !DILocation(line: 908, column: 24, scope: !2283)
!2285 = !DILocation(line: 908, column: 11, scope: !2262)
!2286 = !DILocation(line: 909, column: 16, scope: !2283)
!2287 = !DILocation(line: 909, column: 9, scope: !2283)
!2288 = !DILocation(line: 911, column: 11, scope: !2262)
!2289 = !DILocation(line: 913, column: 18, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !1088, line: 912, column: 9)
!2291 = distinct !DILexicalBlock(scope: !2262, file: !1088, line: 911, column: 11)
!2292 = !DILocation(line: 914, column: 18, scope: !2290)
!2293 = !DILocation(line: 916, column: 9, scope: !2290)
!2294 = !DILocation(line: 917, column: 42, scope: !2262)
!2295 = !DILocation(line: 919, column: 5, scope: !2262)
!2296 = !DILocation(line: 920, column: 21, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 920, column: 7)
!2298 = !DILocation(line: 920, column: 7, scope: !1087)
!2299 = !DILocation(line: 922, column: 14, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2297, file: !1088, line: 921, column: 5)
!2301 = !DILocalVariable(name: "file", arg: 1, scope: !2302, file: !1088, line: 426, type: !593)
!2302 = distinct !DISubprogram(name: "PrintChannelPerceptualHash", scope: !1088, file: !1088, line: 426, type: !2303, scopeLine: 428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2307)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!731, !593, !1840, !654, !2305}
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1031)
!2307 = !{!2301, !2308, !2309, !2310, !2311, !2312}
!2308 = !DILocalVariable(name: "channel", arg: 2, scope: !2302, file: !1088, line: 426, type: !1840)
!2309 = !DILocalVariable(name: "name", arg: 3, scope: !2302, file: !1088, line: 427, type: !654)
!2310 = !DILocalVariable(name: "channel_phash", arg: 4, scope: !2302, file: !1088, line: 427, type: !2305)
!2311 = !DILocalVariable(name: "i", scope: !2302, file: !1088, line: 430, type: !731)
!2312 = !DILocalVariable(name: "n", scope: !2302, file: !1088, line: 433, type: !731)
!2313 = !DILocation(line: 0, scope: !2302, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 923, column: 14, scope: !2300)
!2315 = !DILocation(line: 435, column: 5, scope: !2302, inlinedAt: !2314)
!2316 = !DILocation(line: 436, column: 3, scope: !2317, inlinedAt: !2314)
!2317 = distinct !DILexicalBlock(scope: !2302, file: !1088, line: 436, column: 3)
!2318 = !DILocation(line: 437, column: 60, scope: !2319, inlinedAt: !2314)
!2319 = distinct !DILexicalBlock(scope: !2317, file: !1088, line: 436, column: 3)
!2320 = !DILocation(line: 437, column: 61, scope: !2319, inlinedAt: !2314)
!2321 = !DILocation(line: 438, column: 7, scope: !2319, inlinedAt: !2314)
!2322 = !DILocation(line: 438, column: 28, scope: !2319, inlinedAt: !2314)
!2323 = !{!1206, !1206, i64 0}
!2324 = !DILocation(line: 439, column: 7, scope: !2319, inlinedAt: !2314)
!2325 = !DILocation(line: 439, column: 28, scope: !2319, inlinedAt: !2314)
!2326 = !DILocation(line: 437, column: 8, scope: !2319, inlinedAt: !2314)
!2327 = !DILocation(line: 436, column: 21, scope: !2319, inlinedAt: !2314)
!2328 = !DILocation(line: 436, column: 15, scope: !2319, inlinedAt: !2314)
!2329 = distinct !{!2329, !2316, !2330, !1302, !1303}
!2330 = !DILocation(line: 439, column: 55, scope: !2317, inlinedAt: !2314)
!2331 = !DILocation(line: 0, scope: !2302, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 925, column: 14, scope: !2300)
!2333 = !DILocation(line: 435, column: 5, scope: !2302, inlinedAt: !2332)
!2334 = !DILocation(line: 436, column: 3, scope: !2317, inlinedAt: !2332)
!2335 = !DILocation(line: 437, column: 60, scope: !2319, inlinedAt: !2332)
!2336 = !DILocation(line: 437, column: 61, scope: !2319, inlinedAt: !2332)
!2337 = !DILocation(line: 438, column: 7, scope: !2319, inlinedAt: !2332)
!2338 = !DILocation(line: 438, column: 28, scope: !2319, inlinedAt: !2332)
!2339 = !DILocation(line: 439, column: 7, scope: !2319, inlinedAt: !2332)
!2340 = !DILocation(line: 439, column: 28, scope: !2319, inlinedAt: !2332)
!2341 = !DILocation(line: 437, column: 8, scope: !2319, inlinedAt: !2332)
!2342 = !DILocation(line: 436, column: 21, scope: !2319, inlinedAt: !2332)
!2343 = !DILocation(line: 436, column: 15, scope: !2319, inlinedAt: !2332)
!2344 = distinct !{!2344, !2334, !2345, !1302, !1303}
!2345 = !DILocation(line: 439, column: 55, scope: !2317, inlinedAt: !2332)
!2346 = !DILocation(line: 0, scope: !2302, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 927, column: 14, scope: !2300)
!2348 = !DILocation(line: 435, column: 5, scope: !2302, inlinedAt: !2347)
!2349 = !DILocation(line: 436, column: 3, scope: !2317, inlinedAt: !2347)
!2350 = !DILocation(line: 437, column: 60, scope: !2319, inlinedAt: !2347)
!2351 = !DILocation(line: 437, column: 61, scope: !2319, inlinedAt: !2347)
!2352 = !DILocation(line: 438, column: 7, scope: !2319, inlinedAt: !2347)
!2353 = !DILocation(line: 438, column: 28, scope: !2319, inlinedAt: !2347)
!2354 = !DILocation(line: 439, column: 7, scope: !2319, inlinedAt: !2347)
!2355 = !DILocation(line: 439, column: 28, scope: !2319, inlinedAt: !2347)
!2356 = !DILocation(line: 437, column: 8, scope: !2319, inlinedAt: !2347)
!2357 = !DILocation(line: 436, column: 21, scope: !2319, inlinedAt: !2347)
!2358 = !DILocation(line: 436, column: 15, scope: !2319, inlinedAt: !2347)
!2359 = distinct !{!2359, !2349, !2360, !1302, !1303}
!2360 = !DILocation(line: 439, column: 55, scope: !2317, inlinedAt: !2347)
!2361 = !DILocation(line: 929, column: 18, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2300, file: !1088, line: 929, column: 11)
!2363 = !DILocation(line: 929, column: 24, scope: !2362)
!2364 = !DILocation(line: 929, column: 11, scope: !2300)
!2365 = !DILocation(line: 0, scope: !2302, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 930, column: 16, scope: !2362)
!2367 = !DILocation(line: 435, column: 5, scope: !2302, inlinedAt: !2366)
!2368 = !DILocation(line: 436, column: 3, scope: !2317, inlinedAt: !2366)
!2369 = !DILocation(line: 437, column: 60, scope: !2319, inlinedAt: !2366)
!2370 = !DILocation(line: 437, column: 61, scope: !2319, inlinedAt: !2366)
!2371 = !DILocation(line: 438, column: 7, scope: !2319, inlinedAt: !2366)
!2372 = !DILocation(line: 438, column: 28, scope: !2319, inlinedAt: !2366)
!2373 = !DILocation(line: 439, column: 7, scope: !2319, inlinedAt: !2366)
!2374 = !DILocation(line: 439, column: 28, scope: !2319, inlinedAt: !2366)
!2375 = !DILocation(line: 437, column: 8, scope: !2319, inlinedAt: !2366)
!2376 = !DILocation(line: 436, column: 21, scope: !2319, inlinedAt: !2366)
!2377 = !DILocation(line: 436, column: 15, scope: !2319, inlinedAt: !2366)
!2378 = distinct !{!2378, !2368, !2379, !1302, !1303}
!2379 = !DILocation(line: 439, column: 55, scope: !2317, inlinedAt: !2366)
!2380 = !DILocation(line: 932, column: 47, scope: !2300)
!2381 = !DILocation(line: 934, column: 5, scope: !2300)
!2382 = !DILocation(line: 935, column: 24, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 935, column: 7)
!2384 = !DILocation(line: 935, column: 7, scope: !1087)
!2385 = !DILocation(line: 937, column: 14, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !1088, line: 936, column: 5)
!2387 = !DILocation(line: 939, column: 7, scope: !2386)
!2388 = !DILocation(line: 944, column: 18, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !1088, line: 943, column: 9)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !1088, line: 940, column: 7)
!2391 = !DILocation(line: 945, column: 18, scope: !2389)
!2392 = !DILocation(line: 947, column: 18, scope: !2389)
!2393 = !DILocation(line: 948, column: 11, scope: !2389)
!2394 = !DILocation(line: 952, column: 18, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2390, file: !1088, line: 951, column: 9)
!2396 = !DILocation(line: 953, column: 18, scope: !2395)
!2397 = !DILocation(line: 955, column: 18, scope: !2395)
!2398 = !DILocation(line: 957, column: 18, scope: !2395)
!2399 = !DILocation(line: 959, column: 11, scope: !2395)
!2400 = !DILocation(line: 963, column: 18, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2390, file: !1088, line: 962, column: 9)
!2402 = !DILocation(line: 964, column: 11, scope: !2401)
!2403 = !DILocation(line: 967, column: 18, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2386, file: !1088, line: 967, column: 11)
!2405 = !DILocation(line: 967, column: 24, scope: !2404)
!2406 = !DILocation(line: 967, column: 11, scope: !2386)
!2407 = !DILocation(line: 968, column: 16, scope: !2404)
!2408 = !DILocation(line: 968, column: 9, scope: !2404)
!2409 = !DILocation(line: 969, column: 44, scope: !2386)
!2410 = !DILocation(line: 971, column: 5, scope: !2386)
!2411 = !DILocation(line: 974, column: 18, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !1137, file: !1088, line: 974, column: 11)
!2413 = !DILocation(line: 974, column: 29, scope: !2412)
!2414 = !DILocation(line: 974, column: 11, scope: !1137)
!2415 = !DILocation(line: 976, column: 11, scope: !2412)
!2416 = !DILocation(line: 976, column: 38, scope: !2412)
!2417 = !DILocation(line: 976, column: 37, scope: !2412)
!2418 = !DILocation(line: 976, column: 68, scope: !2412)
!2419 = !DILocation(line: 975, column: 16, scope: !2412)
!2420 = !DILocation(line: 975, column: 9, scope: !2412)
!2421 = !DILocation(line: 979, column: 18, scope: !1136)
!2422 = !DILocation(line: 979, column: 24, scope: !1136)
!2423 = !DILocation(line: 979, column: 11, scope: !1137)
!2424 = !DILocation(line: 0, scope: !1135)
!2425 = !DILocation(line: 989, column: 42, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !1088, line: 989, column: 11)
!2427 = distinct !DILexicalBlock(scope: !1135, file: !1088, line: 989, column: 11)
!2428 = !DILocation(line: 989, column: 23, scope: !2426)
!2429 = !DILocation(line: 989, column: 11, scope: !2427)
!2430 = !DILocation(line: 991, column: 49, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2426, file: !1088, line: 990, column: 11)
!2432 = !DILocation(line: 991, column: 15, scope: !2431)
!2433 = !DILocation(line: 992, column: 19, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2431, file: !1088, line: 992, column: 17)
!2435 = !DILocation(line: 992, column: 17, scope: !2431)
!2436 = distinct !{!2436, !2429, !2437, !1302, !1303}
!2437 = !DILocation(line: 1003, column: 11, scope: !2427)
!2438 = !DILocation(line: 994, column: 21, scope: !2431)
!2439 = !DILocation(line: 995, column: 25, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !1088, line: 995, column: 13)
!2441 = distinct !DILexicalBlock(scope: !2431, file: !1088, line: 995, column: 13)
!2442 = !DILocation(line: 995, column: 13, scope: !2441)
!2443 = !DILocation(line: 997, column: 19, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !1088, line: 997, column: 19)
!2445 = distinct !DILexicalBlock(scope: !2440, file: !1088, line: 996, column: 13)
!2446 = !DILocation(line: 997, column: 38, scope: !2444)
!2447 = !DILocation(line: 997, column: 19, scope: !2445)
!2448 = !DILocation(line: 999, column: 16, scope: !2445)
!2449 = !DILocation(line: 995, column: 54, scope: !2440)
!2450 = distinct !{!2450, !2442, !2451, !1302, !1303}
!2451 = !DILocation(line: 1000, column: 13, scope: !2441)
!2452 = !DILocation(line: 0, scope: !2441)
!2453 = !DILocation(line: 0, scope: !2431)
!2454 = !DILocation(line: 989, column: 49, scope: !2426)
!2455 = !DILocation(line: 0, scope: !1137)
!2456 = !DILocation(line: 1004, column: 37, scope: !1142)
!2457 = !DILocation(line: 1004, column: 18, scope: !1142)
!2458 = !DILocation(line: 1004, column: 46, scope: !1142)
!2459 = !DILocation(line: 1004, column: 71, scope: !1142)
!2460 = !DILocation(line: 1004, column: 52, scope: !1142)
!2461 = !DILocation(line: 1004, column: 15, scope: !1135)
!2462 = !DILocation(line: 1006, column: 15, scope: !1141)
!2463 = !DILocation(line: 1007, column: 17, scope: !1141)
!2464 = !DILocation(line: 1009, column: 15, scope: !1141)
!2465 = !DILocation(line: 1010, column: 17, scope: !1141)
!2466 = !DILocation(line: 1012, column: 15, scope: !1141)
!2467 = !DILocation(line: 1013, column: 15, scope: !1141)
!2468 = !DILocalVariable(name: "image", arg: 1, scope: !2469, file: !2470, line: 92, type: !951)
!2469 = distinct !DISubprogram(name: "SetMagickPixelPacket", scope: !2470, file: !2470, line: 92, type: !2471, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2474)
!2470 = !DIFile(filename: "apps/538.imagick_r/src/magick/pixel-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d0543784df06457407bc99b9890f8aaf")
!2471 = !DISubroutineType(types: !2472)
!2472 = !{null, !951, !882, !1076, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!2474 = !{!2468, !2475, !2476, !2477}
!2475 = !DILocalVariable(name: "color", arg: 2, scope: !2469, file: !2470, line: 93, type: !882)
!2476 = !DILocalVariable(name: "index", arg: 3, scope: !2469, file: !2470, line: 93, type: !1076)
!2477 = !DILocalVariable(name: "pixel", arg: 4, scope: !2469, file: !2470, line: 93, type: !2473)
!2478 = !DILocation(line: 0, scope: !2469, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1013, column: 15, scope: !1141)
!2480 = !DILocation(line: 95, column: 31, scope: !2469, inlinedAt: !2479)
!2481 = !DILocation(line: 95, column: 14, scope: !2469, inlinedAt: !2479)
!2482 = !DILocation(line: 95, column: 10, scope: !2469, inlinedAt: !2479)
!2483 = !DILocation(line: 95, column: 13, scope: !2469, inlinedAt: !2479)
!2484 = !{!2485, !2486, i64 32}
!2485 = !{!"_MagickPixelPacket", !1200, i64 0, !1200, i64 4, !1200, i64 8, !1206, i64 16, !1202, i64 24, !2486, i64 32, !2486, i64 36, !2486, i64 40, !2486, i64 44, !2486, i64 48}
!2486 = !{!"float", !1200, i64 0}
!2487 = !DILocation(line: 96, column: 33, scope: !2469, inlinedAt: !2479)
!2488 = !DILocation(line: 96, column: 16, scope: !2469, inlinedAt: !2479)
!2489 = !DILocation(line: 96, column: 10, scope: !2469, inlinedAt: !2479)
!2490 = !DILocation(line: 96, column: 15, scope: !2469, inlinedAt: !2479)
!2491 = !{!2485, !2486, i64 36}
!2492 = !DILocation(line: 97, column: 32, scope: !2469, inlinedAt: !2479)
!2493 = !DILocation(line: 97, column: 15, scope: !2469, inlinedAt: !2479)
!2494 = !DILocation(line: 97, column: 10, scope: !2469, inlinedAt: !2479)
!2495 = !DILocation(line: 97, column: 14, scope: !2469, inlinedAt: !2479)
!2496 = !{!2485, !2486, i64 40}
!2497 = !DILocation(line: 98, column: 35, scope: !2469, inlinedAt: !2479)
!2498 = !DILocation(line: 98, column: 18, scope: !2469, inlinedAt: !2479)
!2499 = !DILocation(line: 98, column: 10, scope: !2469, inlinedAt: !2479)
!2500 = !DILocation(line: 98, column: 17, scope: !2469, inlinedAt: !2479)
!2501 = !{!2485, !2486, i64 44}
!2502 = !DILocation(line: 99, column: 26, scope: !2503, inlinedAt: !2479)
!2503 = distinct !DILexicalBlock(scope: !2469, file: !2470, line: 99, column: 7)
!2504 = !DILocation(line: 99, column: 45, scope: !2503, inlinedAt: !2479)
!2505 = !DILocation(line: 1013, column: 51, scope: !1141)
!2506 = !DILocation(line: 101, column: 35, scope: !2503, inlinedAt: !2479)
!2507 = !DILocation(line: 101, column: 18, scope: !2503, inlinedAt: !2479)
!2508 = !DILocation(line: 101, column: 12, scope: !2503, inlinedAt: !2479)
!2509 = !DILocation(line: 101, column: 17, scope: !2503, inlinedAt: !2479)
!2510 = !{!2485, !2486, i64 48}
!2511 = !DILocation(line: 101, column: 5, scope: !2503, inlinedAt: !2479)
!2512 = !DILocation(line: 1014, column: 22, scope: !1141)
!2513 = !DILocation(line: 1016, column: 22, scope: !1141)
!2514 = !DILocation(line: 1017, column: 15, scope: !1141)
!2515 = !DILocation(line: 1018, column: 22, scope: !1141)
!2516 = !DILocation(line: 1019, column: 13, scope: !1142)
!2517 = !DILocation(line: 1019, column: 13, scope: !1141)
!2518 = !DILocation(line: 1021, column: 16, scope: !1137)
!2519 = !DILocation(line: 1022, column: 11, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !1137, file: !1088, line: 1022, column: 11)
!2521 = !DILocation(line: 1022, column: 45, scope: !2520)
!2522 = !DILocation(line: 1022, column: 11, scope: !1137)
!2523 = !DILocation(line: 1025, column: 13, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !1088, line: 1023, column: 9)
!2525 = !DILocation(line: 1024, column: 60, scope: !2524)
!2526 = !DILocation(line: 1024, column: 18, scope: !2524)
!2527 = !DILocation(line: 1026, column: 18, scope: !2524)
!2528 = !DILocation(line: 1027, column: 18, scope: !2524)
!2529 = !DILocation(line: 1028, column: 9, scope: !2524)
!2530 = !DILocation(line: 1030, column: 23, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2520, file: !1088, line: 1030, column: 13)
!2532 = !DILocation(line: 1030, column: 47, scope: !2531)
!2533 = !DILocation(line: 1031, column: 14, scope: !2531)
!2534 = !DILocation(line: 1031, column: 37, scope: !2531)
!2535 = !DILocation(line: 1030, column: 13, scope: !2520)
!2536 = !DILocation(line: 1033, column: 13, scope: !2531)
!2537 = !DILocation(line: 1032, column: 60, scope: !2531)
!2538 = !DILocation(line: 1032, column: 18, scope: !2531)
!2539 = !DILocation(line: 1032, column: 11, scope: !2531)
!2540 = !DILocation(line: 1035, column: 14, scope: !1161)
!2541 = !DILocation(line: 1035, column: 28, scope: !1161)
!2542 = !DILocation(line: 1035, column: 7, scope: !1087)
!2543 = !DILocation(line: 1038, column: 16, scope: !1160)
!2544 = !DILocation(line: 1037, column: 66, scope: !1160)
!2545 = !DILocation(line: 1037, column: 14, scope: !1160)
!2546 = !DILocation(line: 1039, column: 14, scope: !1160)
!2547 = !DILocation(line: 1040, column: 18, scope: !1159)
!2548 = !DILocation(line: 1040, column: 25, scope: !1159)
!2549 = !DILocation(line: 1040, column: 11, scope: !1160)
!2550 = !DILocation(line: 1042, column: 11, scope: !1158)
!2551 = !DILocation(line: 1043, column: 13, scope: !1158)
!2552 = !DILocation(line: 1044, column: 13, scope: !1158)
!2553 = !DILocation(line: 1045, column: 13, scope: !1158)
!2554 = !DILocation(line: 1047, column: 11, scope: !1158)
!2555 = !DILocation(line: 1048, column: 13, scope: !1158)
!2556 = !DILocation(line: 1053, column: 11, scope: !1158)
!2557 = !DILocation(line: 0, scope: !1158)
!2558 = !DILocation(line: 1055, column: 42, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !1088, line: 1055, column: 11)
!2560 = distinct !DILexicalBlock(scope: !1158, file: !1088, line: 1055, column: 11)
!2561 = !DILocation(line: 1055, column: 23, scope: !2559)
!2562 = !DILocation(line: 1055, column: 11, scope: !2560)
!2563 = !DILocation(line: 1054, column: 20, scope: !1158)
!2564 = !{!1199, !1203, i64 72}
!2565 = !DILocation(line: 0, scope: !2469, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1057, column: 13, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2559, file: !1088, line: 1056, column: 11)
!2568 = !DILocation(line: 95, column: 31, scope: !2469, inlinedAt: !2566)
!2569 = !DILocation(line: 95, column: 14, scope: !2469, inlinedAt: !2566)
!2570 = !DILocation(line: 95, column: 13, scope: !2469, inlinedAt: !2566)
!2571 = !DILocation(line: 96, column: 33, scope: !2469, inlinedAt: !2566)
!2572 = !DILocation(line: 96, column: 16, scope: !2469, inlinedAt: !2566)
!2573 = !DILocation(line: 96, column: 15, scope: !2469, inlinedAt: !2566)
!2574 = !DILocation(line: 97, column: 32, scope: !2469, inlinedAt: !2566)
!2575 = !DILocation(line: 97, column: 15, scope: !2469, inlinedAt: !2566)
!2576 = !DILocation(line: 97, column: 14, scope: !2469, inlinedAt: !2566)
!2577 = !DILocation(line: 98, column: 35, scope: !2469, inlinedAt: !2566)
!2578 = !DILocation(line: 98, column: 18, scope: !2469, inlinedAt: !2566)
!2579 = !DILocation(line: 98, column: 17, scope: !2469, inlinedAt: !2566)
!2580 = !DILocation(line: 1058, column: 20, scope: !2567)
!2581 = !DILocation(line: 1059, column: 13, scope: !2567)
!2582 = !DILocation(line: 1060, column: 20, scope: !2567)
!2583 = !DILocation(line: 1061, column: 13, scope: !2567)
!2584 = !DILocation(line: 1062, column: 20, scope: !2567)
!2585 = !DILocation(line: 1063, column: 13, scope: !2567)
!2586 = !DILocation(line: 1064, column: 23, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2567, file: !1088, line: 1064, column: 17)
!2588 = !{!2485, !1200, i64 4}
!2589 = !DILocation(line: 1064, column: 34, scope: !2587)
!2590 = !DILocation(line: 1064, column: 17, scope: !2567)
!2591 = !DILocation(line: 1066, column: 24, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2587, file: !1088, line: 1065, column: 15)
!2593 = !DILocation(line: 1067, column: 17, scope: !2592)
!2594 = !DILocation(line: 1069, column: 15, scope: !2592)
!2595 = !DILocation(line: 1070, column: 23, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2567, file: !1088, line: 1070, column: 17)
!2597 = !{!2485, !1200, i64 8}
!2598 = !DILocation(line: 1070, column: 29, scope: !2596)
!2599 = !DILocation(line: 1070, column: 17, scope: !2567)
!2600 = !DILocation(line: 1072, column: 24, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2596, file: !1088, line: 1071, column: 15)
!2602 = !DILocation(line: 1073, column: 17, scope: !2601)
!2603 = !DILocation(line: 1075, column: 15, scope: !2601)
!2604 = !DILocation(line: 1076, column: 20, scope: !2567)
!2605 = !DILocation(line: 1077, column: 20, scope: !2567)
!2606 = !DILocation(line: 1079, column: 13, scope: !2567)
!2607 = !DILocation(line: 1080, column: 20, scope: !2567)
!2608 = !DILocation(line: 1082, column: 14, scope: !2567)
!2609 = !DILocation(line: 1055, column: 51, scope: !2559)
!2610 = distinct !{!2610, !2562, !2611, !1302, !1303}
!2611 = !DILocation(line: 1083, column: 11, scope: !2560)
!2612 = !DILocation(line: 1084, column: 9, scope: !1159)
!2613 = !DILocation(line: 1084, column: 9, scope: !1158)
!2614 = !DILocation(line: 1086, column: 14, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1086, column: 7)
!2616 = !DILocation(line: 1086, column: 20, scope: !2615)
!2617 = !DILocation(line: 1086, column: 41, scope: !2615)
!2618 = !DILocation(line: 1086, column: 7, scope: !1087)
!2619 = !DILocation(line: 1087, column: 12, scope: !2615)
!2620 = !DILocation(line: 1087, column: 5, scope: !2615)
!2621 = !DILocation(line: 1089, column: 20, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1089, column: 7)
!2623 = !DILocation(line: 1089, column: 42, scope: !2622)
!2624 = !DILocation(line: 1089, column: 7, scope: !1087)
!2625 = !DILocation(line: 1090, column: 12, scope: !2622)
!2626 = !DILocation(line: 1090, column: 5, scope: !2622)
!2627 = !DILocation(line: 1092, column: 20, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1092, column: 7)
!2629 = !DILocation(line: 1092, column: 45, scope: !2628)
!2630 = !DILocation(line: 1092, column: 7, scope: !1087)
!2631 = !DILocation(line: 1093, column: 12, scope: !2628)
!2632 = !DILocation(line: 1093, column: 5, scope: !2628)
!2633 = !DILocation(line: 1097, column: 12, scope: !1087)
!2634 = !{!1199, !1200, i64 208}
!2635 = !DILocation(line: 1096, column: 49, scope: !1087)
!2636 = !DILocation(line: 1096, column: 5, scope: !1087)
!2637 = !DILocation(line: 1095, column: 10, scope: !1087)
!2638 = !DILocation(line: 1098, column: 14, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1098, column: 7)
!2640 = !{!1199, !1206, i64 104}
!2641 = !DILocation(line: 1098, column: 20, scope: !2639)
!2642 = !DILocation(line: 1098, column: 7, scope: !1087)
!2643 = !DILocation(line: 1099, column: 12, scope: !2639)
!2644 = !DILocation(line: 1099, column: 5, scope: !2639)
!2645 = !DILocation(line: 1100, column: 15, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1100, column: 7)
!2647 = !DILocation(line: 1100, column: 40, scope: !2646)
!2648 = !{!1199, !1206, i64 112}
!2649 = !DILocation(line: 1100, column: 42, scope: !2646)
!2650 = !DILocation(line: 1100, column: 50, scope: !2646)
!2651 = !DILocation(line: 1101, column: 28, scope: !2646)
!2652 = !DILocation(line: 1101, column: 42, scope: !2646)
!2653 = !{!1199, !1206, i64 136}
!2654 = !DILocation(line: 1101, column: 44, scope: !2646)
!2655 = !DILocation(line: 1101, column: 52, scope: !2646)
!2656 = !DILocation(line: 1102, column: 28, scope: !2646)
!2657 = !DILocation(line: 1102, column: 41, scope: !2646)
!2658 = !{!1199, !1206, i64 160}
!2659 = !DILocation(line: 1102, column: 43, scope: !2646)
!2660 = !DILocation(line: 1102, column: 51, scope: !2646)
!2661 = !DILocation(line: 1103, column: 28, scope: !2646)
!2662 = !DILocation(line: 1103, column: 40, scope: !2646)
!2663 = !{!1199, !1206, i64 184}
!2664 = !DILocation(line: 1103, column: 42, scope: !2646)
!2665 = !DILocation(line: 1100, column: 7, scope: !1087)
!2666 = !DILocation(line: 1108, column: 14, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2646, file: !1088, line: 1104, column: 5)
!2668 = !DILocation(line: 1110, column: 41, scope: !2667)
!2669 = !DILocation(line: 1110, column: 75, scope: !2667)
!2670 = !{!1199, !1206, i64 120}
!2671 = !DILocation(line: 1109, column: 14, scope: !2667)
!2672 = !DILocation(line: 1112, column: 29, scope: !2667)
!2673 = !DILocation(line: 1112, column: 43, scope: !2667)
!2674 = !DILocation(line: 1113, column: 43, scope: !2667)
!2675 = !{!1199, !1206, i64 144}
!2676 = !DILocation(line: 1111, column: 14, scope: !2667)
!2677 = !DILocation(line: 1115, column: 29, scope: !2667)
!2678 = !DILocation(line: 1115, column: 42, scope: !2667)
!2679 = !DILocation(line: 1115, column: 77, scope: !2667)
!2680 = !{!1199, !1206, i64 168}
!2681 = !DILocation(line: 1114, column: 14, scope: !2667)
!2682 = !DILocation(line: 1117, column: 29, scope: !2667)
!2683 = !DILocation(line: 1117, column: 41, scope: !2667)
!2684 = !DILocation(line: 1117, column: 75, scope: !2667)
!2685 = !{!1199, !1206, i64 192}
!2686 = !DILocation(line: 1116, column: 14, scope: !2667)
!2687 = !DILocation(line: 1118, column: 5, scope: !2667)
!2688 = !DILocation(line: 1119, column: 15, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1119, column: 7)
!2690 = !DILocation(line: 1119, column: 28, scope: !2689)
!2691 = !{!1199, !1202, i64 312}
!2692 = !DILocation(line: 1119, column: 54, scope: !2689)
!2693 = !{!1199, !1202, i64 320}
!2694 = !DILocation(line: 1119, column: 33, scope: !2689)
!2695 = !DILocation(line: 1119, column: 62, scope: !2689)
!2696 = !DILocation(line: 1119, column: 7, scope: !1087)
!2697 = !DILocation(line: 1121, column: 7, scope: !2689)
!2698 = !DILocation(line: 1121, column: 42, scope: !2689)
!2699 = !DILocation(line: 1122, column: 36, scope: !2689)
!2700 = !{!1199, !1202, i64 328}
!2701 = !DILocation(line: 1122, column: 7, scope: !2689)
!2702 = !DILocation(line: 1122, column: 67, scope: !2689)
!2703 = !{!1199, !1202, i64 336}
!2704 = !DILocation(line: 1122, column: 38, scope: !2689)
!2705 = !DILocation(line: 1120, column: 12, scope: !2689)
!2706 = !DILocation(line: 1120, column: 5, scope: !2689)
!2707 = !DILocation(line: 1123, column: 39, scope: !1087)
!2708 = !DILocation(line: 1123, column: 10, scope: !1087)
!2709 = !DILocation(line: 1125, column: 10, scope: !1087)
!2710 = !DILocation(line: 1126, column: 39, scope: !1087)
!2711 = !DILocation(line: 1126, column: 10, scope: !1087)
!2712 = !DILocation(line: 1128, column: 10, scope: !1087)
!2713 = !DILocation(line: 1129, column: 39, scope: !1087)
!2714 = !DILocation(line: 1129, column: 10, scope: !1087)
!2715 = !DILocation(line: 1131, column: 10, scope: !1087)
!2716 = !DILocation(line: 1132, column: 39, scope: !1087)
!2717 = !DILocation(line: 1132, column: 10, scope: !1087)
!2718 = !DILocation(line: 1134, column: 10, scope: !1087)
!2719 = !DILocation(line: 1136, column: 45, scope: !1087)
!2720 = !{!1199, !1200, i64 404}
!2721 = !DILocation(line: 1136, column: 28, scope: !1087)
!2722 = !DILocation(line: 1135, column: 52, scope: !1087)
!2723 = !DILocation(line: 1135, column: 10, scope: !1087)
!2724 = !DILocation(line: 1138, column: 50, scope: !1087)
!2725 = !{!1199, !1200, i64 13224}
!2726 = !DILocation(line: 1138, column: 33, scope: !1087)
!2727 = !DILocation(line: 1137, column: 52, scope: !1087)
!2728 = !DILocation(line: 1137, column: 10, scope: !1087)
!2729 = !DILocation(line: 1140, column: 43, scope: !1087)
!2730 = !{!1199, !1200, i64 416}
!2731 = !DILocation(line: 1140, column: 26, scope: !1087)
!2732 = !DILocation(line: 1139, column: 50, scope: !1087)
!2733 = !DILocation(line: 1139, column: 10, scope: !1087)
!2734 = !DILocation(line: 1141, column: 15, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1141, column: 7)
!2736 = !DILocation(line: 1141, column: 20, scope: !2735)
!2737 = !DILocation(line: 1141, column: 26, scope: !2735)
!2738 = !DILocation(line: 0, scope: !2735)
!2739 = !DILocation(line: 1141, column: 32, scope: !2735)
!2740 = !DILocation(line: 1142, column: 20, scope: !2735)
!2741 = !DILocation(line: 1142, column: 22, scope: !2735)
!2742 = !DILocation(line: 1142, column: 28, scope: !2735)
!2743 = !DILocation(line: 1142, column: 44, scope: !2735)
!2744 = !DILocation(line: 1142, column: 46, scope: !2735)
!2745 = !DILocation(line: 1141, column: 7, scope: !1087)
!2746 = !DILocation(line: 1144, column: 55, scope: !2735)
!2747 = !DILocation(line: 1144, column: 7, scope: !2735)
!2748 = !DILocation(line: 1144, column: 34, scope: !2735)
!2749 = !DILocation(line: 1145, column: 19, scope: !2735)
!2750 = !DILocation(line: 1144, column: 62, scope: !2735)
!2751 = !DILocation(line: 1145, column: 42, scope: !2735)
!2752 = !DILocation(line: 1145, column: 21, scope: !2735)
!2753 = !DILocation(line: 1143, column: 12, scope: !2735)
!2754 = !DILocation(line: 1146, column: 20, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1146, column: 7)
!2756 = !DILocation(line: 1146, column: 22, scope: !2755)
!2757 = !DILocation(line: 1146, column: 28, scope: !2755)
!2758 = !DILocation(line: 1148, column: 42, scope: !2755)
!2759 = !DILocation(line: 1146, column: 44, scope: !2755)
!2760 = !DILocation(line: 1146, column: 46, scope: !2755)
!2761 = !DILocation(line: 1146, column: 7, scope: !1087)
!2762 = !DILocation(line: 1147, column: 70, scope: !2755)
!2763 = !DILocation(line: 1148, column: 21, scope: !2755)
!2764 = !DILocation(line: 1147, column: 12, scope: !2755)
!2765 = !DILocation(line: 1147, column: 5, scope: !2755)
!2766 = !DILocation(line: 1150, column: 43, scope: !1087)
!2767 = !{!1199, !1200, i64 420}
!2768 = !DILocation(line: 1150, column: 26, scope: !1087)
!2769 = !DILocation(line: 1149, column: 50, scope: !1087)
!2770 = !DILocation(line: 1149, column: 10, scope: !1087)
!2771 = !DILocation(line: 1151, column: 14, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1151, column: 7)
!2773 = !{!1199, !1202, i64 440}
!2774 = !DILocation(line: 1151, column: 20, scope: !2772)
!2775 = !DILocation(line: 1151, column: 7, scope: !1087)
!2776 = !DILocation(line: 1152, column: 59, scope: !2772)
!2777 = !DILocation(line: 1153, column: 23, scope: !2772)
!2778 = !{!1199, !1202, i64 448}
!2779 = !DILocation(line: 1153, column: 7, scope: !2772)
!2780 = !DILocation(line: 1152, column: 12, scope: !2772)
!2781 = !DILocation(line: 1152, column: 5, scope: !2772)
!2782 = !DILocation(line: 1154, column: 14, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1154, column: 7)
!2784 = !{!1199, !1202, i64 456}
!2785 = !DILocation(line: 1154, column: 25, scope: !2783)
!2786 = !DILocation(line: 1154, column: 7, scope: !1087)
!2787 = !DILocation(line: 1155, column: 58, scope: !2783)
!2788 = !DILocation(line: 1155, column: 12, scope: !2783)
!2789 = !DILocation(line: 1155, column: 5, scope: !2783)
!2790 = !DILocation(line: 1157, column: 14, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1157, column: 7)
!2792 = !{!1199, !1202, i64 13232}
!2793 = !DILocation(line: 1157, column: 23, scope: !2791)
!2794 = !DILocation(line: 1157, column: 7, scope: !1087)
!2795 = !DILocation(line: 1158, column: 56, scope: !2791)
!2796 = !DILocation(line: 1158, column: 12, scope: !2791)
!2797 = !DILocation(line: 1158, column: 5, scope: !2791)
!2798 = !DILocation(line: 1160, column: 15, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1160, column: 7)
!2800 = !{!1199, !1203, i64 13104}
!2801 = !DILocation(line: 1160, column: 20, scope: !2799)
!2802 = !DILocation(line: 1160, column: 39, scope: !2799)
!2803 = !DILocation(line: 1160, column: 50, scope: !2799)
!2804 = !{!1199, !1203, i64 13088}
!2805 = !DILocation(line: 1160, column: 59, scope: !2799)
!2806 = !DILocation(line: 1160, column: 7, scope: !1087)
!2807 = !DILocation(line: 1162, column: 14, scope: !2799)
!2808 = !DILocation(line: 1161, column: 62, scope: !2799)
!2809 = !DILocation(line: 1162, column: 29, scope: !2799)
!2810 = !DILocation(line: 1162, column: 20, scope: !2799)
!2811 = !DILocation(line: 1161, column: 12, scope: !2799)
!2812 = !DILocation(line: 1161, column: 5, scope: !2799)
!2813 = !DILocation(line: 1164, column: 16, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2799, file: !1088, line: 1164, column: 9)
!2815 = !DILocation(line: 1164, column: 22, scope: !2814)
!2816 = !DILocation(line: 1164, column: 9, scope: !2799)
!2817 = !DILocation(line: 1165, column: 55, scope: !2814)
!2818 = !DILocation(line: 1165, column: 14, scope: !2814)
!2819 = !DILocation(line: 1165, column: 7, scope: !2814)
!2820 = !DILocation(line: 1167, column: 44, scope: !1087)
!2821 = !{!1199, !1200, i64 8}
!2822 = !DILocation(line: 1167, column: 27, scope: !1087)
!2823 = !DILocation(line: 1166, column: 54, scope: !1087)
!2824 = !DILocation(line: 1166, column: 10, scope: !1087)
!2825 = !DILocation(line: 1168, column: 14, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1168, column: 7)
!2827 = !{!1199, !1202, i64 16}
!2828 = !DILocation(line: 1168, column: 22, scope: !2826)
!2829 = !DILocation(line: 1168, column: 7, scope: !1087)
!2830 = !DILocation(line: 1169, column: 55, scope: !2826)
!2831 = !DILocation(line: 1169, column: 12, scope: !2826)
!2832 = !DILocation(line: 1169, column: 5, scope: !2826)
!2833 = !DILocation(line: 1171, column: 47, scope: !1087)
!2834 = !{!1199, !1200, i64 24}
!2835 = !DILocation(line: 1171, column: 30, scope: !1087)
!2836 = !DILocation(line: 1170, column: 54, scope: !1087)
!2837 = !DILocation(line: 1170, column: 10, scope: !1087)
!2838 = !DILocation(line: 1172, column: 14, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1172, column: 7)
!2840 = !{!1199, !1203, i64 232}
!2841 = !DILocation(line: 1172, column: 22, scope: !2839)
!2842 = !DILocation(line: 1172, column: 7, scope: !1087)
!2843 = !DILocation(line: 1173, column: 12, scope: !2839)
!2844 = !DILocation(line: 1173, column: 5, scope: !2839)
!2845 = !DILocation(line: 1174, column: 14, scope: !1169)
!2846 = !{!1199, !1203, i64 240}
!2847 = !DILocation(line: 1174, column: 24, scope: !1169)
!2848 = !DILocation(line: 1174, column: 7, scope: !1087)
!2849 = !DILocation(line: 1192, column: 18, scope: !1168)
!2850 = !DILocation(line: 0, scope: !1168)
!2851 = !DILocation(line: 1193, column: 39, scope: !1168)
!2852 = !DILocation(line: 1193, column: 14, scope: !1168)
!2853 = !DILocation(line: 1194, column: 14, scope: !1168)
!2854 = !DILocation(line: 1195, column: 21, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !1168, file: !1088, line: 1195, column: 7)
!2856 = !DILocation(line: 1195, column: 32, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2855, file: !1088, line: 1195, column: 7)
!2858 = !DILocation(line: 1195, column: 35, scope: !2857)
!2859 = !DILocation(line: 1195, column: 7, scope: !2855)
!2860 = !DILocation(line: 1198, column: 9, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2857, file: !1088, line: 1196, column: 7)
!2862 = !DILocation(line: 1198, column: 17, scope: !2861)
!2863 = !DILocation(line: 0, scope: !2861)
!2864 = !DILocation(line: 1198, column: 29, scope: !2861)
!2865 = !DILocation(line: 1199, column: 12, scope: !2861)
!2866 = distinct !{!2866, !2860, !2865, !1302, !1303}
!2867 = !DILocation(line: 1200, column: 67, scope: !2861)
!2868 = !DILocation(line: 1200, column: 69, scope: !2861)
!2869 = !DILocation(line: 1200, column: 16, scope: !2861)
!2870 = !DILocation(line: 1202, column: 16, scope: !2861)
!2871 = !DILocation(line: 1203, column: 17, scope: !2861)
!2872 = !DILocation(line: 1204, column: 14, scope: !2861)
!2873 = !DILocation(line: 1205, column: 16, scope: !2861)
!2874 = !DILocation(line: 1206, column: 18, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2861, file: !1088, line: 1206, column: 13)
!2876 = !DILocation(line: 1206, column: 13, scope: !2861)
!2877 = !DILocation(line: 1208, column: 20, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2875, file: !1088, line: 1207, column: 11)
!2879 = !DILocation(line: 1209, column: 13, scope: !2878)
!2880 = !DILocation(line: 1212, column: 17, scope: !2861)
!2881 = !DILocation(line: 1211, column: 58, scope: !2861)
!2882 = !DILocation(line: 1212, column: 47, scope: !2861)
!2883 = !DILocation(line: 1212, column: 32, scope: !2861)
!2884 = !DILocation(line: 1212, column: 65, scope: !2861)
!2885 = !DILocation(line: 1211, column: 16, scope: !2861)
!2886 = !DILocation(line: 1213, column: 16, scope: !2861)
!2887 = !DILocation(line: 1214, column: 9, scope: !2861)
!2888 = !DILocation(line: 1215, column: 18, scope: !2861)
!2889 = !DILocation(line: 1216, column: 25, scope: !2861)
!2890 = !DILocation(line: 1216, column: 9, scope: !2861)
!2891 = !DILocation(line: 1218, column: 18, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2861, file: !1088, line: 1217, column: 9)
!2893 = !DILocation(line: 1219, column: 17, scope: !2892)
!2894 = !DILocation(line: 1220, column: 21, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !1088, line: 1220, column: 15)
!2896 = !DILocation(line: 1220, column: 15, scope: !2892)
!2897 = !DILocation(line: 1221, column: 20, scope: !2895)
!2898 = !DILocation(line: 1221, column: 13, scope: !2895)
!2899 = !DILocation(line: 1222, column: 20, scope: !2892)
!2900 = distinct !{!2900, !2890, !2901, !1302, !1303}
!2901 = !DILocation(line: 1223, column: 9, scope: !2861)
!2902 = !DILocation(line: 1224, column: 14, scope: !2861)
!2903 = !DILocation(line: 1225, column: 7, scope: !2861)
!2904 = !DILocation(line: 1195, column: 45, scope: !2857)
!2905 = distinct !{!2905, !2859, !2906, !1302, !1303}
!2906 = !DILocation(line: 1225, column: 7, scope: !2855)
!2907 = !DILocation(line: 1226, column: 18, scope: !1168)
!2908 = !DILocation(line: 1227, column: 5, scope: !1168)
!2909 = !DILocation(line: 1228, column: 10, scope: !1087)
!2910 = !DILocation(line: 1229, column: 10, scope: !1087)
!2911 = !DILocation(line: 1230, column: 10, scope: !1087)
!2912 = !DILocation(line: 1231, column: 10, scope: !1087)
!2913 = !DILocation(line: 1232, column: 3, scope: !1087)
!2914 = !DILocation(line: 1233, column: 12, scope: !1087)
!2915 = !DILocation(line: 1234, column: 16, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1234, column: 7)
!2917 = !DILocation(line: 1234, column: 7, scope: !1087)
!2918 = !DILocation(line: 1239, column: 14, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2916, file: !1088, line: 1235, column: 5)
!2920 = !DILocation(line: 1240, column: 7, scope: !2919)
!2921 = !DILocation(line: 1242, column: 16, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2919, file: !1088, line: 1241, column: 7)
!2923 = !DILocation(line: 1243, column: 15, scope: !2922)
!2924 = !DILocation(line: 1244, column: 19, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2922, file: !1088, line: 1244, column: 13)
!2926 = !DILocation(line: 1244, column: 13, scope: !2922)
!2927 = !DILocation(line: 1245, column: 18, scope: !2925)
!2928 = !DILocation(line: 1245, column: 11, scope: !2925)
!2929 = !DILocation(line: 1246, column: 18, scope: !2922)
!2930 = !DILocation(line: 1240, column: 23, scope: !2919)
!2931 = distinct !{!2931, !2920, !2932, !1302, !1303}
!2932 = !DILocation(line: 1247, column: 7, scope: !2919)
!2933 = !DILocation(line: 1249, column: 10, scope: !1087)
!2934 = !DILocation(line: 1250, column: 9, scope: !1087)
!2935 = !DILocation(line: 1251, column: 13, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1251, column: 7)
!2937 = !DILocation(line: 1251, column: 7, scope: !1087)
!2938 = !DILocation(line: 1256, column: 14, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !1088, line: 1252, column: 5)
!2940 = !DILocation(line: 1257, column: 11, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2939, file: !1088, line: 1257, column: 11)
!2942 = !DILocation(line: 1257, column: 25, scope: !2941)
!2943 = !DILocation(line: 1257, column: 11, scope: !2939)
!2944 = !DILocation(line: 1258, column: 16, scope: !2941)
!2945 = !DILocation(line: 1258, column: 9, scope: !2941)
!2946 = !DILocation(line: 1259, column: 14, scope: !2939)
!2947 = !DILocation(line: 1260, column: 5, scope: !2939)
!2948 = !DILocation(line: 1261, column: 3, scope: !1087)
!2949 = !DILocation(line: 1262, column: 8, scope: !1087)
!2950 = !DILocation(line: 1263, column: 12, scope: !1176)
!2951 = !DILocation(line: 1263, column: 7, scope: !1087)
!2952 = !DILocation(line: 1271, column: 14, scope: !1175)
!2953 = !DILocation(line: 1272, column: 7, scope: !1175)
!2954 = !DILocation(line: 1274, column: 17, scope: !1182)
!2955 = !DILocation(line: 0, scope: !1175)
!2956 = !DILocation(line: 1275, column: 21, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !1182, file: !1088, line: 1275, column: 13)
!2958 = !DILocation(line: 1275, column: 13, scope: !1182)
!2959 = distinct !{!2959, !2953, !2960, !1302, !1303}
!2960 = !DILocation(line: 1397, column: 7, scope: !1175)
!2961 = !DILocation(line: 1278, column: 20, scope: !1182)
!2962 = !DILocation(line: 1278, column: 11, scope: !1182)
!2963 = !DILocation(line: 1277, column: 16, scope: !1182)
!2964 = !DILocation(line: 1279, column: 13, scope: !1181)
!2965 = !DILocation(line: 1279, column: 40, scope: !1181)
!2966 = !DILocation(line: 1279, column: 13, scope: !1182)
!2967 = !DILocation(line: 1300, column: 28, scope: !1180)
!2968 = !DILocation(line: 0, scope: !1180)
!2969 = !DILocation(line: 1301, column: 25, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !1088, line: 1301, column: 13)
!2971 = distinct !DILexicalBlock(scope: !1180, file: !1088, line: 1301, column: 13)
!2972 = !DILocation(line: 1301, column: 13, scope: !2971)
!2973 = !DILocation(line: 1304, column: 24, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2970, file: !1088, line: 1302, column: 13)
!2975 = !DILocation(line: 1304, column: 53, scope: !2974)
!2976 = !DILocation(line: 1305, column: 28, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2974, file: !1088, line: 1305, column: 19)
!2978 = !DILocation(line: 1305, column: 19, scope: !2974)
!2979 = !DILocation(line: 1307, column: 23, scope: !2974)
!2980 = !DILocation(line: 1307, column: 52, scope: !2974)
!2981 = !DILocation(line: 1308, column: 22, scope: !2974)
!2982 = !DILocation(line: 1308, column: 51, scope: !2974)
!2983 = !DILocation(line: 1309, column: 15, scope: !2974)
!2984 = !DILocation(line: 1312, column: 44, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2974, file: !1088, line: 1310, column: 15)
!2986 = !DILocation(line: 1313, column: 42, scope: !2985)
!2987 = !DILocation(line: 1314, column: 42, scope: !2985)
!2988 = !DILocation(line: 1315, column: 55, scope: !2985)
!2989 = !DILocation(line: 1316, column: 52, scope: !2985)
!2990 = !DILocation(line: 1317, column: 41, scope: !2985)
!2991 = !DILocation(line: 1318, column: 46, scope: !2985)
!2992 = !DILocation(line: 1319, column: 46, scope: !2985)
!2993 = !DILocation(line: 1320, column: 54, scope: !2985)
!2994 = !DILocation(line: 1321, column: 51, scope: !2985)
!2995 = !DILocation(line: 1322, column: 48, scope: !2985)
!2996 = !DILocation(line: 1323, column: 50, scope: !2985)
!2997 = !DILocation(line: 1324, column: 46, scope: !2985)
!2998 = !DILocation(line: 1325, column: 46, scope: !2985)
!2999 = !DILocation(line: 1326, column: 53, scope: !2985)
!3000 = !DILocation(line: 1327, column: 49, scope: !2985)
!3001 = !DILocation(line: 1328, column: 46, scope: !2985)
!3002 = !DILocation(line: 1329, column: 40, scope: !2985)
!3003 = !DILocation(line: 1330, column: 46, scope: !2985)
!3004 = !DILocation(line: 1331, column: 38, scope: !2985)
!3005 = !DILocation(line: 1332, column: 48, scope: !2985)
!3006 = !DILocation(line: 1333, column: 47, scope: !2985)
!3007 = !DILocation(line: 1334, column: 42, scope: !2985)
!3008 = !DILocation(line: 1335, column: 66, scope: !2985)
!3009 = !DILocation(line: 1336, column: 43, scope: !2985)
!3010 = !DILocation(line: 1337, column: 41, scope: !2985)
!3011 = !DILocation(line: 1338, column: 38, scope: !2985)
!3012 = !DILocation(line: 1339, column: 51, scope: !2985)
!3013 = !DILocation(line: 1340, column: 42, scope: !2985)
!3014 = !DILocation(line: 1341, column: 48, scope: !2985)
!3015 = !DILocation(line: 1342, column: 49, scope: !2985)
!3016 = !DILocation(line: 1343, column: 49, scope: !2985)
!3017 = !DILocation(line: 1344, column: 49, scope: !2985)
!3018 = !DILocation(line: 1345, column: 49, scope: !2985)
!3019 = !DILocation(line: 1346, column: 49, scope: !2985)
!3020 = !DILocation(line: 1347, column: 49, scope: !2985)
!3021 = !DILocation(line: 1348, column: 49, scope: !2985)
!3022 = !DILocation(line: 1349, column: 49, scope: !2985)
!3023 = !DILocation(line: 1350, column: 49, scope: !2985)
!3024 = !DILocation(line: 1351, column: 49, scope: !2985)
!3025 = !DILocation(line: 1352, column: 50, scope: !2985)
!3026 = !DILocation(line: 1353, column: 50, scope: !2985)
!3027 = !DILocation(line: 1354, column: 50, scope: !2985)
!3028 = !DILocation(line: 1355, column: 50, scope: !2985)
!3029 = !DILocation(line: 1356, column: 50, scope: !2985)
!3030 = !DILocation(line: 1357, column: 50, scope: !2985)
!3031 = !DILocation(line: 1358, column: 50, scope: !2985)
!3032 = !DILocation(line: 1359, column: 50, scope: !2985)
!3033 = !DILocation(line: 1360, column: 50, scope: !2985)
!3034 = !DILocation(line: 1361, column: 50, scope: !2985)
!3035 = !DILocation(line: 1362, column: 50, scope: !2985)
!3036 = !DILocation(line: 1363, column: 41, scope: !2985)
!3037 = !DILocation(line: 0, scope: !2985)
!3038 = !DILocation(line: 1366, column: 17, scope: !2974)
!3039 = !DILocation(line: 1366, column: 34, scope: !2974)
!3040 = !DILocation(line: 1365, column: 22, scope: !2974)
!3041 = !DILocation(line: 1367, column: 32, scope: !2974)
!3042 = !DILocation(line: 1367, column: 61, scope: !2974)
!3043 = !DILocation(line: 1367, column: 65, scope: !2974)
!3044 = !DILocation(line: 1368, column: 23, scope: !2974)
!3045 = !DILocation(line: 1368, column: 52, scope: !2974)
!3046 = !DILocation(line: 1368, column: 21, scope: !2974)
!3047 = !DILocation(line: 1371, column: 63, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !2974, file: !1088, line: 1370, column: 19)
!3049 = !DILocation(line: 1371, column: 36, scope: !3048)
!3050 = !DILocation(line: 1373, column: 29, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2974, file: !1088, line: 1373, column: 19)
!3052 = !DILocation(line: 1373, column: 19, scope: !2974)
!3053 = !DILocation(line: 1376, column: 21, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3051, file: !1088, line: 1374, column: 17)
!3055 = !DILocation(line: 1376, column: 48, scope: !3054)
!3056 = !DILocation(line: 1376, column: 57, scope: !3054)
!3057 = !DILocation(line: 1375, column: 26, scope: !3054)
!3058 = !DILocation(line: 1377, column: 34, scope: !3054)
!3059 = !DILocation(line: 1378, column: 38, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3054, file: !1088, line: 1378, column: 23)
!3061 = !DILocation(line: 1378, column: 23, scope: !3054)
!3062 = !DILocation(line: 1380, column: 33, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !1088, line: 1380, column: 23)
!3064 = distinct !DILexicalBlock(scope: !3065, file: !1088, line: 1380, column: 23)
!3065 = distinct !DILexicalBlock(scope: !3060, file: !1088, line: 1379, column: 21)
!3066 = !{!1203, !1203, i64 0}
!3067 = !DILocation(line: 1380, column: 51, scope: !3063)
!3068 = !DILocation(line: 1380, column: 23, scope: !3064)
!3069 = !DILocation(line: 1382, column: 32, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3063, file: !1088, line: 1381, column: 23)
!3071 = !DILocation(line: 1383, column: 32, scope: !3070)
!3072 = !DILocation(line: 1385, column: 27, scope: !3070)
!3073 = !DILocation(line: 1384, column: 52, scope: !3070)
!3074 = !DILocation(line: 1384, column: 42, scope: !3070)
!3075 = !DILocation(line: 1380, column: 70, scope: !3063)
!3076 = distinct !{!3076, !3068, !3077, !1302, !1303}
!3077 = !DILocation(line: 1386, column: 23, scope: !3064)
!3078 = !DILocation(line: 1387, column: 48, scope: !3065)
!3079 = !DILocation(line: 1389, column: 21, scope: !3065)
!3080 = !DILocation(line: 1390, column: 29, scope: !3054)
!3081 = !DILocation(line: 1391, column: 17, scope: !3054)
!3082 = !DILocation(line: 0, scope: !2974)
!3083 = !DILocation(line: 1301, column: 54, scope: !2970)
!3084 = distinct !{!3084, !2972, !3085, !1302, !1303}
!3085 = !DILocation(line: 1392, column: 13, scope: !2971)
!3086 = !DILocation(line: 1394, column: 20, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !1182, file: !1088, line: 1394, column: 13)
!3088 = !DILocation(line: 1394, column: 26, scope: !3087)
!3089 = !DILocation(line: 1394, column: 13, scope: !1182)
!3090 = !DILocation(line: 1395, column: 11, scope: !3087)
!3091 = !DILocation(line: 1396, column: 14, scope: !1182)
!3092 = !DILocation(line: 1399, column: 3, scope: !1087)
!3093 = !DILocation(line: 1400, column: 12, scope: !1087)
!3094 = !DILocation(line: 1401, column: 16, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1401, column: 7)
!3096 = !DILocation(line: 1401, column: 7, scope: !1087)
!3097 = !DILocation(line: 1406, column: 14, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3095, file: !1088, line: 1402, column: 5)
!3099 = !DILocation(line: 1407, column: 7, scope: !3098)
!3100 = !DILocation(line: 1409, column: 16, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3098, file: !1088, line: 1408, column: 7)
!3102 = !DILocation(line: 1410, column: 15, scope: !3101)
!3103 = !DILocation(line: 1411, column: 19, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3101, file: !1088, line: 1411, column: 13)
!3105 = !DILocation(line: 1411, column: 13, scope: !3101)
!3106 = !DILocation(line: 1412, column: 18, scope: !3104)
!3107 = !DILocation(line: 1412, column: 11, scope: !3104)
!3108 = !DILocation(line: 1413, column: 18, scope: !3101)
!3109 = !DILocation(line: 1407, column: 23, scope: !3098)
!3110 = distinct !{!3110, !3099, !3111, !1302, !1303}
!3111 = !DILocation(line: 1414, column: 7, scope: !3098)
!3112 = !DILocation(line: 1416, column: 3, scope: !1087)
!3113 = !DILocation(line: 1417, column: 12, scope: !1087)
!3114 = !DILocation(line: 1418, column: 16, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1418, column: 7)
!3116 = !DILocation(line: 1418, column: 7, scope: !1087)
!3117 = !DILocation(line: 1423, column: 14, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3115, file: !1088, line: 1419, column: 5)
!3119 = !DILocation(line: 1424, column: 7, scope: !3118)
!3120 = !DILocation(line: 1426, column: 16, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3118, file: !1088, line: 1425, column: 7)
!3122 = !DILocation(line: 1427, column: 30, scope: !3121)
!3123 = !DILocation(line: 1429, column: 19, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3121, file: !1088, line: 1429, column: 13)
!3125 = !DILocation(line: 1429, column: 13, scope: !3121)
!3126 = !DILocation(line: 1430, column: 18, scope: !3124)
!3127 = !DILocation(line: 1430, column: 11, scope: !3124)
!3128 = !DILocation(line: 1431, column: 18, scope: !3121)
!3129 = !DILocation(line: 1424, column: 23, scope: !3118)
!3130 = distinct !{!3130, !3119, !3131, !1302, !1303}
!3131 = !DILocation(line: 1432, column: 7, scope: !3118)
!3132 = !DILocation(line: 1435, column: 43, scope: !1087)
!3133 = !{!1199, !1200, i64 28}
!3134 = !DILocation(line: 1435, column: 26, scope: !1087)
!3135 = !DILocation(line: 1434, column: 50, scope: !1087)
!3136 = !DILocation(line: 1434, column: 10, scope: !1087)
!3137 = !DILocation(line: 1436, column: 27, scope: !1087)
!3138 = !DILocation(line: 1436, column: 10, scope: !1087)
!3139 = !DILocation(line: 1437, column: 10, scope: !1087)
!3140 = !DILocation(line: 1438, column: 51, scope: !1087)
!3141 = !DILocation(line: 1438, column: 66, scope: !1087)
!3142 = !DILocation(line: 1438, column: 58, scope: !1087)
!3143 = !DILocation(line: 1438, column: 10, scope: !1087)
!3144 = !DILocation(line: 1440, column: 7, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !1087, file: !1088, line: 1440, column: 7)
!3146 = !DILocation(line: 1440, column: 22, scope: !3145)
!3147 = !DILocation(line: 1440, column: 7, scope: !1087)
!3148 = !DILocation(line: 1441, column: 26, scope: !3145)
!3149 = !DILocation(line: 1441, column: 5, scope: !3145)
!3150 = !DILocation(line: 1441, column: 29, scope: !3145)
!3151 = !DILocation(line: 1442, column: 10, scope: !1087)
!3152 = !DILocation(line: 1443, column: 61, scope: !1087)
!3153 = !DILocation(line: 1443, column: 45, scope: !1087)
!3154 = !DILocation(line: 1443, column: 76, scope: !1087)
!3155 = !DILocation(line: 1443, column: 69, scope: !1087)
!3156 = !DILocation(line: 1443, column: 68, scope: !1087)
!3157 = !DILocation(line: 1443, column: 80, scope: !1087)
!3158 = !DILocation(line: 1444, column: 17, scope: !1087)
!3159 = !DILocation(line: 1443, column: 27, scope: !1087)
!3160 = !DILocation(line: 1443, column: 10, scope: !1087)
!3161 = !DILocation(line: 1445, column: 10, scope: !1087)
!3162 = !DILocation(line: 1446, column: 10, scope: !1087)
!3163 = !DILocation(line: 1448, column: 34, scope: !1087)
!3164 = !DILocation(line: 1448, column: 5, scope: !1087)
!3165 = !DILocation(line: 1448, column: 62, scope: !1087)
!3166 = !DILocation(line: 1448, column: 57, scope: !1087)
!3167 = !DILocation(line: 1448, column: 41, scope: !1087)
!3168 = !DILocation(line: 1449, column: 63, scope: !1087)
!3169 = !DILocation(line: 1449, column: 62, scope: !1087)
!3170 = !DILocation(line: 1449, column: 48, scope: !1087)
!3171 = !DILocation(line: 1449, column: 25, scope: !1087)
!3172 = !DILocation(line: 1447, column: 10, scope: !1087)
!3173 = !DILocation(line: 1451, column: 50, scope: !1087)
!3174 = !DILocation(line: 1451, column: 10, scope: !1087)
!3175 = !DILocation(line: 1453, column: 10, scope: !1087)
!3176 = !DILocation(line: 1454, column: 10, scope: !1087)
!3177 = !DILocation(line: 1454, column: 23, scope: !1087)
!3178 = !DILocation(line: 1454, column: 3, scope: !1087)
!3179 = !DILocation(line: 1455, column: 1, scope: !1087)
!3180 = !DISubprogram(name: "LogMagickEvent", scope: !451, file: !451, line: 83, type: !3181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!688, !3183, !654, !654, !955, !654, null}
!3183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3184)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !451, line: 58, baseType: !450)
!3185 = !{}
!3186 = !DISubprogram(name: "AcquireExceptionInfo", scope: !253, file: !253, line: 146, type: !3187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!981}
!3189 = !DISubprogram(name: "GetImageArtifact", scope: !3190, file: !3190, line: 30, type: !3191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3190 = !DIFile(filename: "apps/538.imagick_r/src/magick/artifact.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2fff4b6fe3176ac9e10f3231e40b4948")
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!654, !951, !654}
!3193 = !DISubprogram(name: "ParseCommandOption", scope: !488, file: !488, line: 172, type: !3194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!731, !3196, !1091, !654}
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3197)
!3197 = !DIDerivedType(tag: DW_TAG_typedef, name: "CommandOption", file: !488, line: 99, baseType: !487)
!3198 = !DISubprogram(name: "IsGrayImage", scope: !3199, file: !3199, line: 32, type: !3200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3199 = !DIFile(filename: "apps/538.imagick_r/src/magick/attribute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9f28531949ca431292ce1dd34e70716")
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!688, !951, !981}
!3202 = !DISubprogram(name: "FormatLocaleFile", scope: !3203, file: !3203, line: 67, type: !3204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3203 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!731, !593, !1241, null}
!3206 = distinct !DISubprogram(name: "PrintChannelLocations", scope: !1088, file: !1088, line: 296, type: !3207, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3209)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!731, !593, !951, !1840, !654, !1251, !955, !1842}
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3225, !3226}
!3210 = !DILocalVariable(name: "file", arg: 1, scope: !3206, file: !1088, line: 296, type: !593)
!3211 = !DILocalVariable(name: "image", arg: 2, scope: !3206, file: !1088, line: 296, type: !951)
!3212 = !DILocalVariable(name: "channel", arg: 3, scope: !3206, file: !1088, line: 297, type: !1840)
!3213 = !DILocalVariable(name: "name", arg: 4, scope: !3206, file: !1088, line: 297, type: !654)
!3214 = !DILocalVariable(name: "type", arg: 5, scope: !3206, file: !1088, line: 297, type: !1251)
!3215 = !DILocalVariable(name: "max_locations", arg: 6, scope: !3206, file: !1088, line: 298, type: !955)
!3216 = !DILocalVariable(name: "channel_statistics", arg: 7, scope: !3206, file: !1088, line: 298, type: !1842)
!3217 = !DILocalVariable(name: "target", scope: !3206, file: !1088, line: 301, type: !663)
!3218 = !DILocalVariable(name: "exception", scope: !3206, file: !1088, line: 304, type: !981)
!3219 = !DILocalVariable(name: "n", scope: !3206, file: !1088, line: 307, type: !731)
!3220 = !DILocalVariable(name: "y", scope: !3206, file: !1088, line: 308, type: !731)
!3221 = !DILocalVariable(name: "p", scope: !3222, file: !1088, line: 336, type: !882)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !1088, line: 334, column: 3)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !1088, line: 333, column: 3)
!3224 = distinct !DILexicalBlock(scope: !3206, file: !1088, line: 333, column: 3)
!3225 = !DILocalVariable(name: "x", scope: !3222, file: !1088, line: 339, type: !731)
!3226 = !DILocalVariable(name: "match", scope: !3227, file: !1088, line: 347, type: !688)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !1088, line: 345, column: 5)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !1088, line: 344, column: 5)
!3229 = distinct !DILexicalBlock(scope: !3222, file: !1088, line: 344, column: 5)
!3230 = !DILocation(line: 0, scope: !3206)
!3231 = !DILocation(line: 310, column: 3, scope: !3206)
!3232 = !DILocation(line: 315, column: 14, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !1088, line: 314, column: 5)
!3234 = distinct !DILexicalBlock(scope: !3206, file: !1088, line: 311, column: 3)
!3235 = !DILocation(line: 315, column: 42, scope: !3233)
!3236 = !DILocation(line: 316, column: 7, scope: !3233)
!3237 = !DILocation(line: 320, column: 14, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3234, file: !1088, line: 319, column: 5)
!3239 = !DILocation(line: 320, column: 42, scope: !3238)
!3240 = !DILocation(line: 321, column: 7, scope: !3238)
!3241 = !DILocation(line: 325, column: 14, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3234, file: !1088, line: 324, column: 5)
!3243 = !DILocation(line: 325, column: 42, scope: !3242)
!3244 = !DILocation(line: 326, column: 7, scope: !3242)
!3245 = !DILocation(line: 0, scope: !3234)
!3246 = !DILocation(line: 329, column: 57, scope: !3206)
!3247 = !DILocation(line: 330, column: 12, scope: !3206)
!3248 = !DILocation(line: 330, column: 45, scope: !3206)
!3249 = !DILocation(line: 329, column: 10, scope: !3206)
!3250 = !DILocation(line: 331, column: 13, scope: !3206)
!3251 = !DILocation(line: 341, column: 41, scope: !3222)
!3252 = !DILocation(line: 333, column: 34, scope: !3223)
!3253 = !DILocation(line: 333, column: 15, scope: !3223)
!3254 = !DILocation(line: 333, column: 3, scope: !3224)
!3255 = !DILocation(line: 341, column: 7, scope: !3222)
!3256 = !DILocation(line: 0, scope: !3222)
!3257 = !DILocation(line: 342, column: 11, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3222, file: !1088, line: 342, column: 9)
!3259 = !DILocation(line: 342, column: 9, scope: !3222)
!3260 = !DILocation(line: 333, column: 41, scope: !3223)
!3261 = distinct !{!3261, !3254, !3262, !1302, !1303}
!3262 = !DILocation(line: 387, column: 3, scope: !3224)
!3263 = !DILocation(line: 385, column: 30, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3222, file: !1088, line: 385, column: 9)
!3265 = !DILocation(line: 0, scope: !3229)
!3266 = !DILocation(line: 385, column: 11, scope: !3264)
!3267 = !DILocation(line: 0, scope: !3223)
!3268 = !DILocation(line: 344, column: 36, scope: !3228)
!3269 = !DILocation(line: 344, column: 17, scope: !3228)
!3270 = !DILocation(line: 344, column: 5, scope: !3229)
!3271 = !DILocation(line: 350, column: 7, scope: !3227)
!3272 = !DILocation(line: 0, scope: !3227)
!3273 = !DILocation(line: 354, column: 34, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3275, file: !1088, line: 353, column: 9)
!3275 = distinct !DILexicalBlock(scope: !3227, file: !1088, line: 351, column: 7)
!3276 = !DILocation(line: 354, column: 22, scope: !3274)
!3277 = !DILocation(line: 354, column: 37, scope: !3274)
!3278 = !DILocation(line: 354, column: 17, scope: !3274)
!3279 = !DILocation(line: 354, column: 46, scope: !3274)
!3280 = !DILocation(line: 376, column: 11, scope: !3227)
!3281 = !DILocation(line: 380, column: 55, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !1088, line: 377, column: 9)
!3283 = distinct !DILexicalBlock(scope: !3227, file: !1088, line: 376, column: 11)
!3284 = !DILocation(line: 380, column: 18, scope: !3282)
!3285 = !DILocation(line: 382, column: 9, scope: !3282)
!3286 = !DILocation(line: 383, column: 8, scope: !3227)
!3287 = !DILocation(line: 344, column: 46, scope: !3228)
!3288 = distinct !{!3288, !3270, !3289, !1302, !1303}
!3289 = !DILocation(line: 384, column: 5, scope: !3229)
!3290 = !DILocation(line: 359, column: 34, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3275, file: !1088, line: 358, column: 9)
!3292 = !DILocation(line: 359, column: 22, scope: !3291)
!3293 = !DILocation(line: 359, column: 39, scope: !3291)
!3294 = !DILocation(line: 359, column: 17, scope: !3291)
!3295 = !DILocation(line: 359, column: 48, scope: !3291)
!3296 = !DILocation(line: 364, column: 34, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3275, file: !1088, line: 363, column: 9)
!3298 = !DILocation(line: 364, column: 22, scope: !3297)
!3299 = !DILocation(line: 364, column: 38, scope: !3297)
!3300 = !DILocation(line: 364, column: 17, scope: !3297)
!3301 = !DILocation(line: 364, column: 47, scope: !3297)
!3302 = !DILocation(line: 369, column: 34, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3275, file: !1088, line: 368, column: 9)
!3304 = !DILocation(line: 369, column: 22, scope: !3303)
!3305 = !DILocation(line: 369, column: 41, scope: !3303)
!3306 = !DILocation(line: 369, column: 17, scope: !3303)
!3307 = !DILocation(line: 369, column: 50, scope: !3303)
!3308 = !DILocation(line: 378, column: 36, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3282, file: !1088, line: 378, column: 15)
!3310 = !DILocation(line: 381, column: 12, scope: !3282)
!3311 = !DILocation(line: 332, column: 4, scope: !3206)
!3312 = !DILocation(line: 388, column: 10, scope: !3206)
!3313 = !DILocation(line: 389, column: 3, scope: !3206)
!3314 = !DISubprogram(name: "RelinquishMagickMemory", scope: !3315, file: !3315, line: 51, type: !3316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3315 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!645, !645}
!3318 = !DISubprogram(name: "ferror", scope: !732, file: !732, line: 761, type: !3319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!489, !593}
!3321 = !DISubprogram(name: "GetElapsedTime", scope: !247, file: !247, line: 54, type: !3322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!663, !3324}
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!3325 = !DISubprogram(name: "GetUserTime", scope: !247, file: !247, line: 55, type: !3322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3326 = !DISubprogram(name: "GetTimerInfo", scope: !247, file: !247, line: 65, type: !3327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !3324}
!3329 = !DISubprogram(name: "LocaleCompare", scope: !1067, file: !1067, line: 66, type: !3330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!489, !654, !654}
!3332 = !DISubprogram(name: "GetPreviousImageInList", scope: !3333, file: !3333, line: 34, type: !3334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3333 = !DIFile(filename: "apps/538.imagick_r/src/magick/list.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53876be9fc59b89d67d5ff7fa85db93a")
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!674, !951}
!3336 = !DISubprogram(name: "GetNextImageInList", scope: !3333, file: !3333, line: 33, type: !3334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3337 = !DISubprogram(name: "CommandOptionToMnemonic", scope: !488, file: !488, line: 157, type: !3338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!654, !3196, !3340}
!3340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!3341 = !DISubprogram(name: "FormatMagickSize", scope: !1067, file: !1067, line: 83, type: !3342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!731, !800, !1091, !601}
!3344 = !DISubprogram(name: "GetBlobSize", scope: !3345, file: !3345, line: 56, type: !3346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3345 = !DIFile(filename: "apps/538.imagick_r/src/magick/blob.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "aeac60f5bee0fb1a4f0bd1456ae975f0")
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!801, !951}
!3348 = !DISubprogram(name: "fflush", scope: !732, file: !732, line: 218, type: !3319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3349 = !DISubprogram(name: "GetVirtualPixels", scope: !3350, file: !3350, line: 44, type: !3351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3350 = !DIFile(filename: "apps/538.imagick_r/src/magick/cache.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "71eb387e577d57b17607c7f6f5128e97")
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!882, !951, !3340, !3340, !955, !955, !981}
!3353 = !DISubprogram(name: "DestroyExceptionInfo", scope: !253, file: !253, line: 148, type: !3354, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!981, !981}
!3356 = !DISubprogram(name: "GetImageType", scope: !3199, file: !3199, line: 29, type: !3357, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!870, !951, !981}
!3359 = !DISubprogram(name: "SignatureImage", scope: !3360, file: !3360, line: 26, type: !3361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3360 = !DIFile(filename: "apps/538.imagick_r/src/magick/signature.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "573220e236e8062a1074f72350542db6")
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!688, !674}
!3363 = !DISubprogram(name: "GetPathComponent", scope: !564, file: !564, line: 68, type: !3364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{null, !654, !3366, !601}
!3366 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !564, line: 36, baseType: !563)
!3367 = !DISubprogram(name: "GetMagickInfo", scope: !445, file: !445, line: 134, type: !3368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!884, !654, !981}
!3370 = !DISubprogram(name: "GetMagickDescription", scope: !445, file: !445, line: 109, type: !3371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!654, !884}
!3373 = !DISubprogram(name: "GetMagickMimeType", scope: !445, file: !445, line: 110, type: !3371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3374 = !DISubprogram(name: "GetImageChannelStatistics", scope: !476, file: !476, line: 127, type: !3375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!657, !951, !981}
!3377 = !DISubprogram(name: "GetImageChannelMoments", scope: !476, file: !476, line: 130, type: !3378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!1011, !951, !981}
!3380 = !DISubprogram(name: "GetImageChannelPerceptualHash", scope: !476, file: !476, line: 133, type: !3381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!1030, !951, !981}
!3383 = !DISubprogram(name: "GetImageChannelFeatures", scope: !1038, file: !1038, line: 48, type: !3384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!1036, !951, !955, !981}
!3386 = !DISubprogram(name: "GetImageDepth", scope: !3199, file: !3199, line: 44, type: !3387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!647, !951, !981}
!3389 = distinct !DISubprogram(name: "PrintChannelMoments", scope: !1088, file: !1088, line: 392, type: !3390, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3394)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!731, !593, !1840, !654, !1841, !3392}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3404, !3405}
!3395 = !DILocalVariable(name: "file", arg: 1, scope: !3389, file: !1088, line: 392, type: !593)
!3396 = !DILocalVariable(name: "channel", arg: 2, scope: !3389, file: !1088, line: 392, type: !1840)
!3397 = !DILocalVariable(name: "name", arg: 3, scope: !3389, file: !1088, line: 393, type: !654)
!3398 = !DILocalVariable(name: "scale", arg: 4, scope: !3389, file: !1088, line: 393, type: !1841)
!3399 = !DILocalVariable(name: "channel_moments", arg: 5, scope: !3389, file: !1088, line: 393, type: !3392)
!3400 = !DILocalVariable(name: "powers", scope: !3389, file: !1088, line: 396, type: !3401)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !663, size: 512, elements: !3402)
!3402 = !{!3403}
!3403 = !DISubrange(count: 8)
!3404 = !DILocalVariable(name: "i", scope: !3389, file: !1088, line: 399, type: !731)
!3405 = !DILocalVariable(name: "n", scope: !3389, file: !1088, line: 402, type: !731)
!3406 = !DILocation(line: 0, scope: !3389)
!3407 = !DILocation(line: 396, column: 5, scope: !3389)
!3408 = !DILocation(line: 404, column: 5, scope: !3389)
!3409 = !DILocation(line: 406, column: 5, scope: !3389)
!3410 = !DILocation(line: 406, column: 26, scope: !3389)
!3411 = !DILocation(line: 406, column: 51, scope: !3389)
!3412 = !DILocation(line: 406, column: 60, scope: !3389)
!3413 = !{!3414, !1206, i64 256}
!3414 = !{!"_ChannelMoments", !1200, i64 0, !3415, i64 256, !3415, i64 272, !1206, i64 288, !1206, i64 296, !1206, i64 304}
!3415 = !{!"_PointInfo", !1206, i64 0, !1206, i64 8}
!3416 = !DILocation(line: 407, column: 5, scope: !3389)
!3417 = !DILocation(line: 407, column: 60, scope: !3389)
!3418 = !{!3414, !1206, i64 264}
!3419 = !DILocation(line: 405, column: 6, scope: !3389)
!3420 = !DILocation(line: 409, column: 5, scope: !3389)
!3421 = !DILocation(line: 409, column: 51, scope: !3389)
!3422 = !DILocation(line: 409, column: 64, scope: !3389)
!3423 = !{!3414, !1206, i64 272}
!3424 = !DILocation(line: 410, column: 5, scope: !3389)
!3425 = !DILocation(line: 410, column: 64, scope: !3389)
!3426 = !{!3414, !1206, i64 280}
!3427 = !DILocation(line: 408, column: 6, scope: !3389)
!3428 = !DILocation(line: 412, column: 5, scope: !3389)
!3429 = !DILocation(line: 412, column: 51, scope: !3389)
!3430 = !{!3414, !1206, i64 288}
!3431 = !DILocation(line: 411, column: 6, scope: !3389)
!3432 = !DILocation(line: 414, column: 5, scope: !3389)
!3433 = !DILocation(line: 414, column: 51, scope: !3389)
!3434 = !{!3414, !1206, i64 296}
!3435 = !DILocation(line: 413, column: 6, scope: !3389)
!3436 = !DILocation(line: 416, column: 5, scope: !3389)
!3437 = !DILocation(line: 417, column: 30, scope: !3389)
!3438 = !{!3414, !1206, i64 304}
!3439 = !DILocation(line: 416, column: 46, scope: !3389)
!3440 = !DILocation(line: 417, column: 48, scope: !3389)
!3441 = !DILocation(line: 418, column: 30, scope: !3389)
!3442 = !DILocation(line: 415, column: 6, scope: !3389)
!3443 = !DILocation(line: 419, column: 3, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3389, file: !1088, line: 419, column: 3)
!3445 = !DILocation(line: 420, column: 60, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3444, file: !1088, line: 419, column: 3)
!3447 = !DILocation(line: 420, column: 61, scope: !3446)
!3448 = !DILocation(line: 421, column: 7, scope: !3446)
!3449 = !DILocation(line: 421, column: 28, scope: !3446)
!3450 = !DILocation(line: 421, column: 68, scope: !3446)
!3451 = !DILocation(line: 421, column: 58, scope: !3446)
!3452 = !DILocation(line: 421, column: 57, scope: !3446)
!3453 = !DILocation(line: 422, column: 7, scope: !3446)
!3454 = !DILocation(line: 422, column: 28, scope: !3446)
!3455 = !DILocation(line: 420, column: 8, scope: !3446)
!3456 = !DILocation(line: 419, column: 21, scope: !3446)
!3457 = !DILocation(line: 419, column: 15, scope: !3446)
!3458 = distinct !{!3458, !3443, !3459, !1302, !1303}
!3459 = !DILocation(line: 422, column: 57, scope: !3444)
!3460 = !DILocation(line: 423, column: 3, scope: !3389)
!3461 = distinct !DISubprogram(name: "PrintChannelFeatures", scope: !1088, file: !1088, line: 235, type: !3462, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3466)
!3462 = !DISubroutineType(types: !3463)
!3463 = !{!731, !593, !1840, !654, !3464}
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1037)
!3466 = !{!3467, !3468, !3469, !3470, !3471}
!3467 = !DILocalVariable(name: "file", arg: 1, scope: !3461, file: !1088, line: 235, type: !593)
!3468 = !DILocalVariable(name: "channel", arg: 2, scope: !3461, file: !1088, line: 235, type: !1840)
!3469 = !DILocalVariable(name: "name", arg: 3, scope: !3461, file: !1088, line: 236, type: !654)
!3470 = !DILocalVariable(name: "channel_features", arg: 4, scope: !3461, file: !1088, line: 236, type: !3464)
!3471 = !DILocalVariable(name: "n", scope: !3461, file: !1088, line: 276, type: !731)
!3472 = !DILocation(line: 0, scope: !3461)
!3473 = !DILocation(line: 279, column: 5, scope: !3461)
!3474 = !DILocation(line: 280, column: 5, scope: !3461)
!3475 = !DILocation(line: 281, column: 5, scope: !3461)
!3476 = !DILocation(line: 282, column: 5, scope: !3461)
!3477 = !DILocation(line: 283, column: 5, scope: !3461)
!3478 = !DILocation(line: 284, column: 5, scope: !3461)
!3479 = !DILocation(line: 285, column: 5, scope: !3461)
!3480 = !DILocation(line: 286, column: 5, scope: !3461)
!3481 = !DILocation(line: 287, column: 5, scope: !3461)
!3482 = !DILocation(line: 288, column: 5, scope: !3461)
!3483 = !DILocation(line: 289, column: 5, scope: !3461)
!3484 = !DILocation(line: 290, column: 5, scope: !3461)
!3485 = !DILocation(line: 291, column: 5, scope: !3461)
!3486 = !DILocation(line: 292, column: 5, scope: !3461)
!3487 = !DILocation(line: 278, column: 5, scope: !3461)
!3488 = !DILocation(line: 293, column: 3, scope: !3461)
!3489 = !DISubprogram(name: "GetMagickPrecision", scope: !445, file: !445, line: 119, type: !3490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!489}
!3492 = !DISubprogram(name: "GetImageTotalInkDensity", scope: !3493, file: !3493, line: 26, type: !3494, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3493 = !DIFile(filename: "apps/538.imagick_r/src/magick/prepress.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "326fe2fdd56c3cbb6623351e1a13ab15")
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!663, !674}
!3496 = !DISubprogram(name: "GetVirtualIndexQueue", scope: !3350, file: !3350, line: 41, type: !3497, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!1076, !951}
!3499 = !DISubprogram(name: "GetMagickPixelPacket", scope: !326, file: !326, line: 185, type: !3500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3500 = !DISubroutineType(types: !3501)
!3501 = !{null, !951, !2473}
!3502 = !DISubprogram(name: "QueryMagickColorname", scope: !576, file: !576, line: 93, type: !3503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!688, !951, !3505, !3507, !601, !981}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1144)
!3507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3508)
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "ComplianceType", file: !576, line: 36, baseType: !575)
!3509 = !DISubprogram(name: "GetColorTuple", scope: !576, file: !576, line: 100, type: !3510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{null, !3505, !1091, !601}
!3512 = !DISubprogram(name: "IsHistogramImage", scope: !3513, file: !3513, line: 44, type: !3200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3513 = !DIFile(filename: "apps/538.imagick_r/src/magick/histogram.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2cf116c94f52893f7dbbcaa9072de9d3")
!3514 = !DISubprogram(name: "GetNumberColors", scope: !3513, file: !3513, line: 49, type: !3515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!647, !951, !593, !981}
!3517 = !DISubprogram(name: "IsMagickTrue", scope: !3518, file: !3518, line: 38, type: !3519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3518 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!688, !654}
!3521 = !DISubprogram(name: "CopyMagickString", scope: !1067, file: !1067, line: 78, type: !3522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!647, !601, !654, !955}
!3524 = !DISubprogram(name: "ConcatenateColorComponent", scope: !576, file: !576, line: 98, type: !3525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{null, !3505, !1840, !3507, !601}
!3527 = !DISubprogram(name: "ConcatenateMagickString", scope: !1067, file: !1067, line: 76, type: !3522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3528 = !DISubprogram(name: "QueryColorname", scope: !576, file: !576, line: 88, type: !3529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!688, !951, !882, !3507, !601, !981}
!3531 = !DISubprogram(name: "GetImageListLength", scope: !3333, file: !3333, line: 45, type: !3532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!647, !951}
!3534 = !DISubprogram(name: "AcquireImageInfo", scope: !77, file: !77, line: 520, type: !3535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!895}
!3537 = !DISubprogram(name: "CloneString", scope: !1067, file: !1067, line: 44, type: !3538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!601, !1074, !654}
!3540 = !DISubprogram(name: "SetWarningHandler", scope: !253, file: !253, line: 173, type: !3541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!1060, !1060}
!3543 = !DISubprogram(name: "ReadImage", scope: !3544, file: !3544, line: 42, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3544 = !DIFile(filename: "apps/538.imagick_r/src/magick/constitute.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "43cd9878a55016fc93758a53f2f400b5")
!3545 = !DISubprogram(name: "ResetImagePropertyIterator", scope: !3546, file: !3546, line: 44, type: !3547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3546 = !DIFile(filename: "apps/538.imagick_r/src/magick/property.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "517489a50b093ded1c4a01c3e2b58c3c")
!3547 = !DISubroutineType(types: !3548)
!3548 = !{null, !951}
!3549 = !DISubprogram(name: "GetNextImageProperty", scope: !3546, file: !3546, line: 26, type: !3550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!601, !951}
!3552 = !DISubprogram(name: "GetImageProperty", scope: !3546, file: !3546, line: 31, type: !3191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3553 = !DISubprogram(name: "DestroyImage", scope: !77, file: !77, line: 510, type: !3554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!674, !674}
!3556 = !DISubprogram(name: "DestroyImageInfo", scope: !77, file: !77, line: 522, type: !3557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!895, !895}
!3559 = !DISubprogram(name: "FormatLocaleString", scope: !3203, file: !3203, line: 71, type: !3560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!731, !3562, !955, !1241, null}
!3562 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !601)
!3563 = !DISubprogram(name: "fputc", scope: !732, file: !732, line: 521, type: !3564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!489, !489, !593}
!3566 = !DISubprogram(name: "ResetImageProfileIterator", scope: !89, file: !89, line: 70, type: !3547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3567 = !DISubprogram(name: "GetNextImageProfile", scope: !89, file: !89, line: 52, type: !3550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3568 = !DISubprogram(name: "GetImageProfile", scope: !89, file: !89, line: 55, type: !3569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!1177, !951, !654}
!3571 = !DISubprogram(name: "GetStringInfoLength", scope: !1067, file: !1067, line: 80, type: !3572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!647, !1177}
!3574 = !DISubprogram(name: "GetStringInfoDatum", scope: !1067, file: !1067, line: 97, type: !3575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!850, !1177}
!3577 = !DISubprogram(name: "AcquireQuantumMemory", scope: !3315, file: !3315, line: 42, type: !3578, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!645, !955, !955}
!3580 = !DISubprogram(name: "StringToList", scope: !1067, file: !1067, line: 55, type: !3581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!1074, !654}
!3583 = !DISubprogram(name: "fputs", scope: !732, file: !732, line: 626, type: !3584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!489, !1241, !3586}
!3586 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !593)
!3587 = !DISubprogram(name: "DestroyString", scope: !1067, file: !1067, line: 46, type: !3588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!601, !601}
!3590 = !DISubprogram(name: "PrintStringInfo", scope: !1067, file: !1067, line: 104, type: !3591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !593, !654, !1177}
!3593 = !DISubprogram(name: "ResetImageArtifactIterator", scope: !3190, file: !3190, line: 40, type: !3547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3594 = !DISubprogram(name: "GetNextImageArtifact", scope: !3190, file: !3190, line: 26, type: !3550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3595 = !DISubprogram(name: "ResetImageRegistryIterator", scope: !585, file: !585, line: 47, type: !3596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{null}
!3598 = !DISubprogram(name: "GetNextImageRegistry", scope: !585, file: !585, line: 34, type: !3599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!601}
!3601 = !DISubprogram(name: "GetImageRegistry", scope: !585, file: !585, line: 44, type: !3602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!645, !3604, !654, !981}
!3604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3605)
!3605 = !DIDerivedType(tag: DW_TAG_typedef, name: "RegistryType", file: !585, line: 31, baseType: !584)
!3606 = !DISubprogram(name: "GetMagickVersion", scope: !3607, file: !3607, line: 101, type: !3608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3607 = !DIFile(filename: "apps/538.imagick_r/src/magick/version.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5bbd8280cb91779d444e54bd210c3e35")
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!654, !1075}
!3610 = !DISubprogram(name: "GetExceptionInfo", scope: !253, file: !253, line: 166, type: !3611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{null, !981}
!3613 = !DISubprogram(name: "GetExceptionMessage", scope: !253, file: !253, line: 137, type: !3614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!601, !3616}
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!3617 = !DISubprogram(name: "ThrowMagickException", scope: !253, file: !253, line: 156, type: !3618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!688, !981, !654, !654, !955, !1064, !654, !654, null}
!3620 = !DISubprogram(name: "CatchException", scope: !253, file: !253, line: 164, type: !3611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3621 = !DISubprogram(name: "MagickCoreTerminus", scope: !445, file: !445, line: 147, type: !3596, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3622 = !DISubprogram(name: "ResetMagickMemory", scope: !3315, file: !3315, line: 52, type: !3623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !3185)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!645, !645, !489, !955}
