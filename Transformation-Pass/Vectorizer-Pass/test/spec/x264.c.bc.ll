; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/x264_src/x264.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/x264.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_input_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.cli_output_t = type { ptr, ptr, ptr, ptr, ptr }
%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_pulldown_t = type { i32, [24 x i8], float }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.cli_input_opt_t = type { ptr, ptr, ptr, i32 }
%struct.video_info_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cli_opt_t = type { i32, i32, ptr, ptr, ptr, ptr, double, i32 }
%struct.x264_nal_t = type { i32, i32, i32, ptr }

@seek_val = dso_local local_unnamed_addr global i32 0, align 4, !dbg !0
@input = dso_local local_unnamed_addr global %struct.cli_input_t zeroinitializer, align 8, !dbg !17
@b_ctrl_c = internal unnamed_addr global i1 false, align 4, !dbg !405
@demuxer_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr null], align 16, !dbg !289
@muxer_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null], align 16, !dbg !293
@optind = external local_unnamed_addr global i32, align 4
@short_options = internal global [30 x i8] c"8A:B:b:f:hI:i:m:o:p:q:r:t:Vvw\00", align 16, !dbg !298
@long_options = internal global [142 x %struct.option] [%struct.option { ptr @.str.28, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.29, i32 0, ptr null, i32 263 }, %struct.option { ptr @.str.30, i32 0, ptr null, i32 268 }, %struct.option { ptr @.str.31, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.32, i32 1, ptr null, i32 278 }, %struct.option { ptr @.str.33, i32 1, ptr null, i32 264 }, %struct.option { ptr @.str.34, i32 1, ptr null, i32 265 }, %struct.option { ptr @.str.35, i32 1, ptr null, i32 266 }, %struct.option { ptr @.str.36, i32 0, ptr null, i32 267 }, %struct.option { ptr @.str.37, i32 1, ptr null, i32 66 }, %struct.option { ptr @.str.38, i32 1, ptr null, i32 98 }, %struct.option { ptr @.str.39, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.40, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.41, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.42, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.43, i32 1, ptr null, i32 105 }, %struct.option { ptr @.str.44, i32 1, ptr null, i32 73 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.46, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.50, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.51, i32 1, ptr null, i32 102 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 273 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.58, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.59, i32 1, ptr null, i32 113 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.61, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.64, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.65, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.66, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.67, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.68, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 269 }, %struct.option { ptr @.str.70, i32 1, ptr null, i32 256 }, %struct.option { ptr @.str.71, i32 1, ptr null, i32 257 }, %struct.option { ptr @.str.11, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.72, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.74, i32 1, ptr null, i32 270 }, %struct.option { ptr @.str.75, i32 1, ptr null, i32 271 }, %struct.option { ptr @.str.76, i32 1, ptr null, i32 272 }, %struct.option { ptr @.str.77, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.78, i32 1, ptr null, i32 65 }, %struct.option { ptr @.str.79, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.80, i32 0, ptr null, i32 119 }, %struct.option { ptr @.str.81, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.82, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.83, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.84, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.85, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.86, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.87, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.88, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.89, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.90, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.91, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.92, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.93, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.94, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.95, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.96, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.97, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.98, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.99, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.100, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.101, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.102, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.103, i32 1, ptr null, i32 48 }, %struct.option { ptr @.str.104, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.105, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.106, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.107, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.108, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.109, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.110, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.111, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.112, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.113, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.114, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.115, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.116, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.117, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.118, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.119, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.120, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.121, i32 1, ptr null, i32 258 }, %struct.option { ptr @.str.122, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.123, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.124, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.125, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.126, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.127, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.128, i32 0, ptr null, i32 259 }, %struct.option { ptr @.str.129, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.130, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.131, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.132, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.133, i32 0, ptr null, i32 260 }, %struct.option { ptr @.str.134, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.135, i32 0, ptr null, i32 261 }, %struct.option { ptr @.str.136, i32 0, ptr null, i32 262 }, %struct.option { ptr @.str.137, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.138, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.139, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.140, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.141, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.142, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.143, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.144, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.145, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.146, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.147, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.148, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.149, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.150, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.151, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.152, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.153, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.154, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.155, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.156, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.157, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.158, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.159, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.160, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.161, i32 1, ptr null, i32 274 }, %struct.option { ptr @.str.162, i32 1, ptr null, i32 275 }, %struct.option { ptr @.str.163, i32 1, ptr null, i32 276 }, %struct.option { ptr @.str.164, i32 0, ptr null, i32 0 }, %struct.option { ptr @.str.165, i32 1, ptr null, i32 0 }, %struct.option { ptr @.str.166, i32 1, ptr null, i32 277 }, %struct.option { ptr @.str.167, i32 0, ptr null, i32 0 }, %struct.option zeroinitializer], align 16, !dbg !303
@optarg = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"placebo\00", align 1
@tga_dump_rate = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"x264 [error]: can't open qpfile `%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"x264 [warning]: not compiled with visualization support\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"x264 [error]: can't open `%s'\0A\00", align 1
@pulldown_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.323, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr null], align 16, !dbg !349
@.str.8 = private unnamed_addr constant [41 x i8] c"x264 [error]: invalid argument: %s = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"x264 [error]: No %s file. Run x264 --help for a list of options.\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@output = internal unnamed_addr global %struct.cli_output_t zeroinitializer, align 8, !dbg !354
@.str.12 = private unnamed_addr constant [47 x i8] c"x264 [error]: could not open output file `%s'\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"x264 [error]: could not open input file `%s'\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"%s [info]: %dx%d%c %d:%d @ %d/%d fps (%cfr)\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"x264 [error]: --fps + --tcfile-in is incompatible.\0A\00", align 1
@timecode_input = external local_unnamed_addr global %struct.cli_input_t, align 8
@.str.16 = private unnamed_addr constant [37 x i8] c"x264 [error]: timecode input failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [57 x i8] c"x264 [error]: --timebase is incompatible with cfr input\0A\00", align 1
@.str.18 = private unnamed_addr constant [149 x i8] c"x264 [warning]: input appears to be interlaced, enabling %cff interlaced mode.\0A                If you want otherwise, use --no-interlaced or --%cff\0A\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"%lu/%lu\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"x264 [error]: invalid argument: timebase = %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"x264 [error]: timebase you specified exceeds H.264 maximum\0A\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"y4m\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"mkv\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"flv\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"longhelp\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"fullhelp\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"dumpyuv\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"profile\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"preset\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"tune\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"slow-firstpass\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"bitrate\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"bframes\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"b-adapt\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"no-b-adapt\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"b-bias\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"b-pyramid\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"min-keyint\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"keyint\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"intra-refresh\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"scenecut\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"no-scenecut\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"nf\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"no-deblock\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"deblock\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"tff\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"bff\00", align 1
@.str.55 = private unnamed_addr constant [14 x i8] c"no-interlaced\00", align 1
@.str.56 = private unnamed_addr constant [18 x i8] c"constrained-intra\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"cabac\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"no-cabac\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"qp\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"qpmin\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"qpmax\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"qpstep\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"crf\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"rc-lookahead\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"no-asm\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"sar\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"frames\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"seek\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"muxer\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"demuxer\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"analyse\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"weightb\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"no-weightb\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"weightp\00", align 1
@.str.83 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"merange\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"mvrange\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"mvrange-thread\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"subme\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"psy-rd\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"no-psy\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"psy\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"mixed-refs\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"no-mixed-refs\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"no-chroma-me\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"8x8dct\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"no-8x8dct\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"trellis\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"fast-pskip\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"no-fast-pskip\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"no-dct-decimate\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"aq-strength\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"aq-mode\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"deadzone-inter\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"deadzone-intra\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"ratetol\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"vbv-maxrate\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"vbv-bufsize\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"vbv-init\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"crf-max\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"ipratio\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"pbratio\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"chroma-qp-offset\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"qcomp\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"mbtree\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"no-mbtree\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c"qblur\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"cplxblur\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"zones\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"qpfile\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"sliced-threads\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"no-sliced-threads\00", align 1
@.str.125 = private unnamed_addr constant [15 x i8] c"slice-max-size\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"slice-max-mbs\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"slices\00", align 1
@.str.128 = private unnamed_addr constant [13 x i8] c"thread-input\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"sync-lookahead\00", align 1
@.str.130 = private unnamed_addr constant [18 x i8] c"non-deterministic\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"psnr\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"ssim\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"no-progress\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"visualize\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"dump-yuv\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"sps-id\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"aud\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"nr\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"cqm\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"cqmfile\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"cqm4\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"cqm4i\00", align 1
@.str.145 = private unnamed_addr constant [7 x i8] c"cqm4iy\00", align 1
@.str.146 = private unnamed_addr constant [7 x i8] c"cqm4ic\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"cqm4p\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"cqm4py\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"cqm4pc\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"cqm8\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"cqm8i\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"cqm8p\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"overscan\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"videoformat\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"fullrange\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"colorprim\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"transfer\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"colormatrix\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"chromaloc\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"force-cfr\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"tcfile-in\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"tcfile-out\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"timebase\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"pic-struct\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"nal-hrd\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"pulldown\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"fake-interlaced\00", align 1
@.str.168 = private unnamed_addr constant [597 x i8] c"x264 core:%d%s\0ASyntax: x264 [options] -o outfile infile [widthxheight]\0A\0AInfile can be raw YUV 4:2:0 (in which case resolution is required),\0A  or YUV4MPEG 4:2:0 (*.y4m),\0A  or Avisynth if compiled with support (%s).\0A  or libav* formats if compiled with lavf support (%s) or ffms support (%s).\0AOutfile type is selected by filename:\0A .264 -> Raw bytestream\0A .mkv -> Matroska\0A .flv -> Flash Video\0A .mp4 -> MP4 if compiled with GPAC support (%s)\0A\0AOptions:\0A\0A  -h, --help                  List basic options\0A      --longhelp              List more options\0A      --fullhelp              List all options\0A\0A\00", align 1
@.str.169 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.197 = private unnamed_addr constant [53 x i8] c"  -I, --keyint <integer>      Maximum GOP size [%d]\0A\00", align 1
@.str.200 = private unnamed_addr constant [78 x i8] c"      --scenecut <integer>    How aggressively to insert extra I-frames [%d]\0A\00", align 1
@.str.202 = private unnamed_addr constant [71 x i8] c"  -b, --bframes <integer>     Number of B-frames between I and P [%d]\0A\00", align 1
@.str.203 = private unnamed_addr constant [315 x i8] c"      --b-adapt <integer>     Adaptive B-frame decision method [%d]\0A                                  Higher values may lower threading efficiency.\0A                                  - 0: Disabled\0A                                  - 1: Fast\0A                                  - 2: Optimal (slow with high --bframes)\0A\00", align 1
@.str.204 = private unnamed_addr constant [75 x i8] c"      --b-bias <integer>      Influences how often B-frames are used [%d]\0A\00", align 1
@.str.205 = private unnamed_addr constant [274 x i8] c"      --b-pyramid <string>    Keep some B-frames as references [%s]\0A                                  - none: Disabled\0A                                  - strict: Strictly hierarchical pyramid\0A                                  - normal: Non-strict (not Blu-ray compatible)\0A\00", align 1
@x264_b_pyramid_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr null], align 16, !dbg !316
@.str.207 = private unnamed_addr constant [63 x i8] c"  -r, --ref <integer>         Number of reference frames [%d]\0A\00", align 1
@.str.209 = private unnamed_addr constant [62 x i8] c"  -f, --deblock <alpha:beta>  Loop filter parameters [%d:%d]\0A\00", align 1
@.str.222 = private unnamed_addr constant [75 x i8] c"      --crf <float>           Quality-based VBR (0-51, 0=lossless) [%.1f]\0A\00", align 1
@.str.223 = private unnamed_addr constant [78 x i8] c"      --rc-lookahead <integer> Number of frames for frametype lookahead [%d]\0A\00", align 1
@.str.224 = private unnamed_addr constant [63 x i8] c"      --vbv-maxrate <integer> Max local bitrate (kbit/s) [%d]\0A\00", align 1
@.str.225 = private unnamed_addr constant [70 x i8] c"      --vbv-bufsize <integer> Set size of the VBV buffer (kbit) [%d]\0A\00", align 1
@.str.226 = private unnamed_addr constant [67 x i8] c"      --vbv-init <float>      Initial VBV buffer occupancy [%.1f]\0A\00", align 1
@.str.228 = private unnamed_addr constant [47 x i8] c"      --qpmin <integer>       Set min QP [%d]\0A\00", align 1
@.str.229 = private unnamed_addr constant [47 x i8] c"      --qpmax <integer>       Set max QP [%d]\0A\00", align 1
@.str.230 = private unnamed_addr constant [52 x i8] c"      --qpstep <integer>      Set max QP step [%d]\0A\00", align 1
@.str.231 = private unnamed_addr constant [75 x i8] c"      --ratetol <float>       Tolerance of ABR ratecontrol and VBV [%.1f]\0A\00", align 1
@.str.232 = private unnamed_addr constant [64 x i8] c"      --ipratio <float>       QP factor between I and P [%.2f]\0A\00", align 1
@.str.233 = private unnamed_addr constant [64 x i8] c"      --pbratio <float>       QP factor between P and B [%.2f]\0A\00", align 1
@.str.234 = private unnamed_addr constant [80 x i8] c"      --chroma-qp-offset <integer>  QP difference between chroma and luma [%d]\0A\00", align 1
@.str.235 = private unnamed_addr constant [234 x i8] c"      --aq-mode <integer>     AQ method [%d]\0A                                  - 0: Disabled\0A                                  - 1: Variance AQ (complexity mask)\0A                                  - 2: Auto-variance AQ (experimental)\0A\00", align 1
@.str.236 = private unnamed_addr constant [126 x i8] c"      --aq-strength <float>   Reduces blocking and blurring in flat and\0A                              textured areas. [%.1f]\0A\00", align 1
@.str.239 = private unnamed_addr constant [64 x i8] c"      --stats <string>        Filename for 2 pass stats [\22%s\22]\0A\00", align 1
@.str.241 = private unnamed_addr constant [59 x i8] c"      --qcomp <float>         QP curve compression [%.2f]\0A\00", align 1
@.str.242 = private unnamed_addr constant [91 x i8] c"      --cplxblur <float>      Reduce fluctuations in QP (before curve compression) [%.1f]\0A\00", align 1
@.str.243 = private unnamed_addr constant [90 x i8] c"      --qblur <float>         Reduce fluctuations in QP (after curve compression) [%.1f]\0A\00", align 1
@.str.249 = private unnamed_addr constant [130 x i8] c"      --direct <string>       Direct MV prediction mode [\22%s\22]\0A                                  - none, spatial, temporal, auto\0A\00", align 1
@x264_direct_pred_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.323, ptr @.str.326, ptr @.str.327, ptr @.str.22, ptr null], align 16, !dbg !318
@.str.251 = private unnamed_addr constant [223 x i8] c"      --weightp <integer>     Weighted prediction for P-frames [%d]\0A                                  - 0: Disabled\0A                                  - 1: Blind offset\0A                                  - 2: Smart analysis\0A\00", align 1
@.str.252 = private unnamed_addr constant [77 x i8] c"      --me <string>           Integer pixel motion estimation method [\22%s\22]\0A\00", align 1
@x264_motion_est_names = internal unnamed_addr constant [6 x ptr] [ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr null], align 16, !dbg !320
@.str.255 = private unnamed_addr constant [71 x i8] c"      --merange <integer>     Maximum motion vector search range [%d]\0A\00", align 1
@.str.258 = private unnamed_addr constant [81 x i8] c"  -m, --subme <integer>       Subpixel motion estimation and mode decision [%d]\0A\00", align 1
@.str.261 = private unnamed_addr constant [223 x i8] c"      --psy-rd                Strength of psychovisual optimization [\22%.1f:%.1f\22]\0A                                  #1: RD (requires subme>=6)\0A                                  #2: Trellis (requires trellis, experimental)\0A\00", align 1
@.str.266 = private unnamed_addr constant [274 x i8] c"  -t, --trellis <integer>     Trellis RD quantization. Requires CABAC. [%d]\0A                                  - 0: disabled\0A                                  - 1: enabled only on the final encode of a MB\0A                                  - 2: enabled on all mode decisions\0A\00", align 1
@.str.269 = private unnamed_addr constant [52 x i8] c"      --nr <integer>          Noise reduction [%d]\0A\00", align 1
@.str.270 = private unnamed_addr constant [89 x i8] c"      --deadzone-inter <int>  Set the size of the inter luma quantization deadzone [%d]\0A\00", align 1
@.str.271 = private unnamed_addr constant [89 x i8] c"      --deadzone-intra <int>  Set the size of the intra luma quantization deadzone [%d]\0A\00", align 1
@.str.283 = private unnamed_addr constant [122 x i8] c"      --overscan <string>     Specify crop overscan setting [\22%s\22]\0A                                  - undef, show, crop\0A\00", align 1
@x264_overscan_names = internal unnamed_addr constant [4 x ptr] [ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr null], align 16, !dbg !325
@.str.284 = private unnamed_addr constant [135 x i8] c"      --videoformat <string>  Specify video format [\22%s\22]\0A                                  - component, pal, ntsc, secam, mac, undef\0A\00", align 1
@x264_vidformat_names = internal unnamed_addr constant [7 x ptr] [ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.333, ptr null], align 16, !dbg !327
@.str.285 = private unnamed_addr constant [117 x i8] c"      --fullrange <string>    Specify full range samples setting [\22%s\22]\0A                                  - off, on\0A\00", align 1
@x264_fullrange_names = internal unnamed_addr constant [3 x ptr] [ptr @.str.341, ptr @.str.342, ptr null], align 16, !dbg !332
@.str.286 = private unnamed_addr constant [191 x i8] c"      --colorprim <string>    Specify color primaries [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg\0A                                    smpte170m, smpte240m, film\0A\00", align 1
@x264_colorprim_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr null], align 16, !dbg !337
@.str.287 = private unnamed_addr constant [219 x i8] c"      --transfer <string>     Specify transfer characteristics [\22%s\22]\0A                                  - undef, bt709, bt470m, bt470bg, linear,\0A                                    log100, log316, smpte170m, smpte240m\0A\00", align 1
@x264_transfer_names = internal unnamed_addr constant [12 x ptr] [ptr @.str.169, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr null], align 16, !dbg !342
@.str.288 = private unnamed_addr constant [199 x i8] c"      --colormatrix <string>  Specify color matrix setting [\22%s\22]\0A                                  - undef, bt709, fcc, bt470bg\0A                                    smpte170m, smpte240m, GBR, YCgCo\0A\00", align 1
@x264_colmatrix_names = internal unnamed_addr constant [10 x ptr] [ptr @.str.352, ptr @.str.343, ptr @.str.333, ptr @.str.169, ptr @.str.353, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.354, ptr null], align 16, !dbg !347
@.str.289 = private unnamed_addr constant [76 x i8] c"      --chromaloc <integer>   Specify chroma sample location (0 to 5) [%d]\0A\00", align 1
@.str.294 = private unnamed_addr constant [109 x i8] c"      --muxer <string>        Specify output container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.295 = private unnamed_addr constant [108 x i8] c"      --demuxer <string>      Specify input container format [\22%s\22]\0A                                  - %s\0A\00", align 1
@.str.316 = private unnamed_addr constant [63 x i8] c"      --sps-id <integer>      Set SPS and PPS id numbers [%d]\0A\00", align 1
@.str.322 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.323 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.325 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.326 = private unnamed_addr constant [8 x i8] c"spatial\00", align 1
@.str.327 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.328 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.329 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.330 = private unnamed_addr constant [4 x i8] c"umh\00", align 1
@.str.331 = private unnamed_addr constant [4 x i8] c"esa\00", align 1
@.str.332 = private unnamed_addr constant [5 x i8] c"tesa\00", align 1
@.str.333 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.334 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"crop\00", align 1
@.str.336 = private unnamed_addr constant [10 x i8] c"component\00", align 1
@.str.337 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.338 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.339 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.340 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@.str.341 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.342 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.343 = private unnamed_addr constant [6 x i8] c"bt709\00", align 1
@.str.344 = private unnamed_addr constant [7 x i8] c"bt470m\00", align 1
@.str.345 = private unnamed_addr constant [8 x i8] c"bt470bg\00", align 1
@.str.346 = private unnamed_addr constant [10 x i8] c"smpte170m\00", align 1
@.str.347 = private unnamed_addr constant [10 x i8] c"smpte240m\00", align 1
@.str.348 = private unnamed_addr constant [5 x i8] c"film\00", align 1
@.str.349 = private unnamed_addr constant [7 x i8] c"linear\00", align 1
@.str.350 = private unnamed_addr constant [7 x i8] c"log100\00", align 1
@.str.351 = private unnamed_addr constant [7 x i8] c"log316\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c"GBR\00", align 1
@.str.353 = private unnamed_addr constant [4 x i8] c"fcc\00", align 1
@.str.354 = private unnamed_addr constant [6 x i8] c"YCgCo\00", align 1
@.str.356 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.357 = private unnamed_addr constant [3 x i8] c"22\00", align 1
@.str.358 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@.str.359 = private unnamed_addr constant [3 x i8] c"64\00", align 1
@.str.360 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.361 = private unnamed_addr constant [7 x i8] c"triple\00", align 1
@.str.362 = private unnamed_addr constant [5 x i8] c"euro\00", align 1
@.str.363 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"mp4\00", align 1
@.str.365 = private unnamed_addr constant [52 x i8] c"x264 [error]: not compiled with MP4 output support\0A\00", align 1
@mkv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@flv_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@raw_output = external local_unnamed_addr constant %struct.cli_output_t, align 8
@.str.366 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.367 = private unnamed_addr constant [4 x i8] c"avs\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"d2v\00", align 1
@.str.369 = private unnamed_addr constant [4 x i8] c"dga\00", align 1
@.str.370 = private unnamed_addr constant [51 x i8] c"x264 [error]: not compiled with AVS input support\0A\00", align 1
@y4m_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@yuv_input = external local_unnamed_addr constant %struct.cli_input_t, align 8
@.str.371 = private unnamed_addr constant [62 x i8] c"x264 [error]: could not open input file `%s' via any method!\0A\00", align 1
@.str.372 = private unnamed_addr constant [57 x i8] c"x264 [error]: unsupported framerate for chosen pulldown\0A\00", align 1
@.str.373 = private unnamed_addr constant [40 x i8] c"x264 [error]: x264_encoder_open failed\0A\00", align 1
@.str.374 = private unnamed_addr constant [39 x i8] c"x264 [error]: can't set outfile param\0A\00", align 1
@.str.375 = private unnamed_addr constant [29 x i8] c"x264 [error]: malloc failed\0A\00", align 1
@.str.376 = private unnamed_addr constant [44 x i8] c"x264 [error]: ticks_per_frame invalid: %ld\0A\00", align 1
@.str.377 = private unnamed_addr constant [43 x i8] c"x264 [error]: x264_encoder_headers failed\0A\00", align 1
@.str.378 = private unnamed_addr constant [22 x i8] c"# timecode format v2\0A\00", align 1
@pulldown_frame_duration = internal unnamed_addr constant [10 x float] [float 0.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00, float 1.500000e+00, float 1.500000e+00, float 2.000000e+00, float 3.000000e+00], align 16, !dbg !401
@.str.379 = private unnamed_addr constant [69 x i8] c"x264 [warning]: non-strictly-monotonic pts at frame %d (%ld <= %ld)\0A\00", align 1
@.str.380 = private unnamed_addr constant [78 x i8] c"x264 [warning]: too many nonmonotonic pts warnings, suppressing further ones\0A\00", align 1
@.str.381 = private unnamed_addr constant [6 x i8] c"%.6f\0A\00", align 1
@.str.382 = private unnamed_addr constant [57 x i8] c"x264 [warning]: %d suppressed nonmonotonic pts warnings\0A\00", align 1
@.str.383 = private unnamed_addr constant [81 x i8] c"                                                                               \0D\00", align 1
@.str.384 = private unnamed_addr constant [44 x i8] c"aborted at input frame %d, output frame %d\0A\00", align 1
@.str.385 = private unnamed_addr constant [40 x i8] c"encoded %d frames, %.2f fps, %.2f kb/s\0A\00", align 1
@pulldown_values = internal unnamed_addr constant <{ %struct.cli_pulldown_t, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float }, { i32, <{ i8, i8, [22 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, { i32, <{ i8, [23 x i8] }>, float }, %struct.cli_pulldown_t }> <{ %struct.cli_pulldown_t zeroinitializer, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 4, [23 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, i8, i8, i8, [20 x i8] }>, float } { i32 4, <{ i8, i8, i8, i8, [20 x i8] }> <{ i8 6, i8 5, i8 7, i8 4, [20 x i8] zeroinitializer }>, float 1.250000e+00 }, { i32, <{ i8, i8, [22 x i8] }>, float } { i32 2, <{ i8, i8, [22 x i8] }> <{ i8 8, i8 9, [22 x i8] zeroinitializer }>, float 1.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 8, [23 x i8] zeroinitializer }>, float 2.000000e+00 }, { i32, <{ i8, [23 x i8] }>, float } { i32 1, <{ i8, [23 x i8] }> <{ i8 9, [23 x i8] zeroinitializer }>, float 3.000000e+00 }, %struct.cli_pulldown_t { i32 24, [24 x i8] c"\06\05\05\05\05\05\05\05\05\05\05\05\07\04\04\04\04\04\04\04\04\04\04\04", float 0x3FF0AAAAA0000000 } }>, align 16, !dbg !388
@.str.387 = private unnamed_addr constant [10 x i8] c"%d %c %d\0A\00", align 1
@.str.388 = private unnamed_addr constant [47 x i8] c"x264 [error]: can't parse qpfile for frame %d\0A\00", align 1
@.str.389 = private unnamed_addr constant [42 x i8] c"x264 [error]: x264_encoder_encode failed\0A\00", align 1
@str = private unnamed_addr constant [12 x i8] c"x264 0.96.x\00", align 1
@str.390 = private unnamed_addr constant [15 x i8] c"Example usage:\00", align 1
@str.391 = private unnamed_addr constant [29 x i8] c"      Constant quality mode:\00", align 1
@str.392 = private unnamed_addr constant [46 x i8] c"            x264 --crf 24 -o <output> <input>\00", align 1
@str.393 = private unnamed_addr constant [43 x i8] c"      Two-pass with a bitrate of 1000kbps:\00", align 1
@str.394 = private unnamed_addr constant [61 x i8] c"            x264 --pass 1 --bitrate 1000 -o <output> <input>\00", align 1
@str.395 = private unnamed_addr constant [61 x i8] c"            x264 --pass 2 --bitrate 1000 -o <output> <input>\00", align 1
@str.396 = private unnamed_addr constant [16 x i8] c"      Lossless:\00", align 1
@str.397 = private unnamed_addr constant [45 x i8] c"            x264 --crf 0 -o <output> <input>\00", align 1
@str.398 = private unnamed_addr constant [60 x i8] c"      Maximum PSNR at the cost of speed and visual quality:\00", align 1
@str.399 = private unnamed_addr constant [66 x i8] c"            x264 --preset placebo --tune psnr -o <output> <input>\00", align 1
@str.400 = private unnamed_addr constant [59 x i8] c"      Constant bitrate at 1000kbps with a 2 second-buffer:\00", align 1
@str.401 = private unnamed_addr constant [71 x i8] c"            x264 --vbv-bufsize 2000 --bitrate 1000 -o <output> <input>\00", align 1
@str.402 = private unnamed_addr constant [9 x i8] c"Presets:\00", align 1
@str.403 = private unnamed_addr constant [132 x i8] c"      --profile               Force the limits of an H.264 profile [high]\0A                                  Overrides all settings.\00", align 1
@str.404 = private unnamed_addr constant [55 x i8] c"                                  - baseline,main,high\00", align 1
@str.405 = private unnamed_addr constant [143 x i8] c"      --preset                Use a preset to select encoding settings [medium]\0A                                  Overridden by user settings.\00", align 1
@str.406 = private unnamed_addr constant [149 x i8] c"                                  - ultrafast,superfast,veryfast,faster,fast\0A                                  - medium,slow,slower,veryslow,placebo\00", align 1
@str.407 = private unnamed_addr constant [339 x i8] c"      --tune                  Tune the settings for a particular type of source\0A                              or situation\0A                                  Overridden by user settings.\0A                                  Multiple tunings are separated by commas.\0A                                  Only one psy tuning can be used at a time.\00", align 1
@str.408 = private unnamed_addr constant [215 x i8] c"                                  - psy tunings: film,animation,grain,\0A                                                 stillimage,psnr,ssim\0A                                  - other tunings: fastdecode,zerolatency\00", align 1
@str.409 = private unnamed_addr constant [20 x i8] c"Frame-type options:\00", align 1
@str.410 = private unnamed_addr constant [71 x i8] c"      --tff                   Enable interlaced mode (top field first)\00", align 1
@str.411 = private unnamed_addr constant [74 x i8] c"      --bff                   Enable interlaced mode (bottom field first)\00", align 1
@str.412 = private unnamed_addr constant [165 x i8] c"      --pulldown <string>     Use soft pulldown to change frame rate\0A                                  - none, 22, 32, 64, double, triple, euro (requires cfr input)\00", align 1
@str.413 = private unnamed_addr constant [13 x i8] c"Ratecontrol:\00", align 1
@str.414 = private unnamed_addr constant [51 x i8] c"  -B, --bitrate <integer>     Set bitrate (kbit/s)\00", align 1
@str.415 = private unnamed_addr constant [209 x i8] c"  -p, --pass <integer>        Enable multipass ratecontrol\0A                                  - 1: First pass, creates stats file\0A                                  - 2: Last pass, does not overwrite stats file\00", align 1
@str.416 = private unnamed_addr constant [14 x i8] c"Input/Output:\00", align 1
@str.417 = private unnamed_addr constant [50 x i8] c"  -o, --output                Specify output file\00", align 1
@str.418 = private unnamed_addr constant [58 x i8] c"      --sar width:height      Specify Sample Aspect Ratio\00", align 1
@str.419 = private unnamed_addr constant [48 x i8] c"      --fps <float|rational>  Specify framerate\00", align 1
@str.420 = private unnamed_addr constant [52 x i8] c"      --seek <integer>        First frame to encode\00", align 1
@str.421 = private unnamed_addr constant [65 x i8] c"      --frames <integer>      Maximum number of frames to encode\00", align 1
@str.422 = private unnamed_addr constant [68 x i8] c"      --level <string>        Specify level (as defined by Annex A)\00", align 1
@str.423 = private unnamed_addr constant [41 x i8] c"      --quiet                 Quiet Mode\00", align 1
@str.424 = private unnamed_addr constant [232 x i8] c"      --timebase <int/int>    Specify timebase numerator and denominator\0A                 <integer>    Specify timebase numerator for input timecode file\0A                              or specify timebase denominator for other input\00", align 1
@str.425 = private unnamed_addr constant [76 x i8] c"      --tcfile-out <string>   Output timecode v2 file from input timestamps\00", align 1
@str.426 = private unnamed_addr constant [76 x i8] c"      --tcfile-in <string>    Force timestamp generation with timecode file\00", align 1
@str.427 = private unnamed_addr constant [76 x i8] c"      --force-cfr             Force constant framerate timestamp generation\00", align 1
@str.428 = private unnamed_addr constant [57 x i8] c"      --aud                   Use access unit delimiters\00", align 1
@str.429 = private unnamed_addr constant [56 x i8] c"      --dump-yuv <string>     Save reconstructed frames\00", align 1
@str.430 = private unnamed_addr constant [75 x i8] c"      --visualize             Show MB types overlayed on the encoded video\00", align 1
@str.431 = private unnamed_addr constant [60 x i8] c"      --no-asm                Disable all CPU optimizations\00", align 1
@str.432 = private unnamed_addr constant [53 x i8] c"      --asm <integer>         Override CPU detection\00", align 1
@str.433 = private unnamed_addr constant [92 x i8] c"      --non-deterministic     Slightly improve quality of SMP, at the cost of repeatability\00", align 1
@str.434 = private unnamed_addr constant [80 x i8] c"      --sync-lookahead <integer> Number of buffer frames for threaded lookahead\00", align 1
@str.435 = private unnamed_addr constant [61 x i8] c"      --thread-input          Run Avisynth in its own thread\00", align 1
@str.436 = private unnamed_addr constant [73 x i8] c"      --sliced-threads        Low-latency but lower-efficiency threading\00", align 1
@str.437 = private unnamed_addr constant [65 x i8] c"      --threads <integer>     Force a specific number of threads\00", align 1
@str.438 = private unnamed_addr constant [54 x i8] c"      --ssim                  Enable SSIM computation\00", align 1
@str.439 = private unnamed_addr constant [54 x i8] c"      --psnr                  Enable PSNR computation\00", align 1
@str.440 = private unnamed_addr constant [79 x i8] c"      --no-progress           Don't show the progress indicator while encoding\00", align 1
@str.441 = private unnamed_addr constant [57 x i8] c"  -v, --verbose               Print stats for each frame\00", align 1
@str.442 = private unnamed_addr constant [60 x i8] c"      --index <string>        Filename for input index file\00", align 1
@str.443 = private unnamed_addr constant [69 x i8] c"      --pic-struct            Force pic_struct in Picture Timing SEI\00", align 1
@str.444 = private unnamed_addr constant [153 x i8] c"      --nal-hrd <string>      Signal HRD information (requires vbv-bufsize)\0A                                  - none, vbr, cbr (cbr not allowed in .mp4)\00", align 1
@str.445 = private unnamed_addr constant [75 x i8] c"the playback equipment. See doc/vui.txt for details. Use at your own risk.\00", align 1
@str.446 = private unnamed_addr constant [75 x i8] c"The VUI settings are not used by the encoder but are merely suggestions to\00", align 1
@str.447 = private unnamed_addr constant [32 x i8] c"Video Usability Info (Annex E):\00", align 1
@str.448 = private unnamed_addr constant [105 x i8] c"      --cqm4iy, --cqm4ic, --cqm4py, --cqm4pc\0A                              Set individual quant matrices\00", align 1
@str.449 = private unnamed_addr constant [111 x i8] c"      --cqm4i, --cqm4p, --cqm8i, --cqm8p\0A                              Set both luma and chroma quant matrices\00", align 1
@str.450 = private unnamed_addr constant [136 x i8] c"      --cqm8 <list>           Set all 8x8 quant matrices\0A                                  Takes a comma-separated list of 64 integers.\00", align 1
@str.451 = private unnamed_addr constant [136 x i8] c"      --cqm4 <list>           Set all 4x4 quant matrices\0A                                  Takes a comma-separated list of 16 integers.\00", align 1
@str.452 = private unnamed_addr constant [70 x i8] c"                                  Overrides any other --cqm* options.\00", align 1
@str.453 = private unnamed_addr constant [83 x i8] c"      --cqmfile <string>      Read custom quant matrices from a JM-compatible file\00", align 1
@str.454 = private unnamed_addr constant [107 x i8] c"      --cqm <string>          Preset quant matrices [\22flat\22]\0A                                  - jvt, flat\00", align 1
@str.455 = private unnamed_addr constant [75 x i8] c"                                  Deadzones should be in the range 0 - 32.\00", align 1
@str.456 = private unnamed_addr constant [76 x i8] c"      --no-dct-decimate       Disables coefficient thresholding on P-frames\00", align 1
@str.457 = private unnamed_addr constant [72 x i8] c"      --no-fast-pskip         Disables early SKIP detection on P-frames\00", align 1
@str.458 = private unnamed_addr constant [70 x i8] c"      --no-8x8dct             Disable adaptive spatial transform size\00", align 1
@str.459 = private unnamed_addr constant [65 x i8] c"      --no-chroma-me          Ignore chroma in motion estimation\00", align 1
@str.460 = private unnamed_addr constant [79 x i8] c"      --no-mixed-refs         Don't decide references on a per partition basis\00", align 1
@str.461 = private unnamed_addr constant [125 x i8] c"      --no-psy                Disable all visual optimizations that worsen\0A                              both PSNR and SSIM.\00", align 1
@str.462 = private unnamed_addr constant [69 x i8] c"                                  decision quality: 1=fast, 10=best.\00", align 1
@str.463 = private unnamed_addr constant [626 x i8] c"                                  - 0: fullpel only (not recommended)\0A                                  - 1: SAD mode decision, one qpel iteration\0A                                  - 2: SATD mode decision\0A                                  - 3-5: Progressively more qpel\0A                                  - 6: RD mode decision for I/P-frames\0A                                  - 7: RD mode decision for all frames\0A                                  - 8: RD refinement for I/P-frames\0A                                  - 9: RD refinement for all frames\0A                                  - 10: QP-RD - requires trellis=2, aq-mode>0\00", align 1
@str.464 = private unnamed_addr constant [73 x i8] c"      --mvrange-thread <int>  Minimum buffer between threads [-1 (auto)]\00", align 1
@str.465 = private unnamed_addr constant [71 x i8] c"      --mvrange <integer>     Maximum motion vector length [-1 (auto)]\00", align 1
@str.466 = private unnamed_addr constant [50 x i8] c"                                  - dia, hex, umh\00", align 1
@str.467 = private unnamed_addr constant [345 x i8] c"                                  - dia: diamond search, radius 1 (fast)\0A                                  - hex: hexagonal search, radius 2\0A                                  - umh: uneven multi-hexagon search\0A                                  - esa: exhaustive search\0A                                  - tesa: hadamard exhaustive search (slow)\00", align 1
@str.468 = private unnamed_addr constant [71 x i8] c"      --no-weightb            Disable weighted prediction for B-frames\00", align 1
@str.469 = private unnamed_addr constant [268 x i8] c"  -A, --partitions <string>   Partitions to consider [\22p8x8,b8x8,i8x8,i4x4\22]\0A                                  - p8x8, p4x4, b8x8, i8x8, i4x4\0A                                  - none, all\0A                                  (p4x4 requires p8x8. i8x8 requires --8x8dct.)\00", align 1
@str.470 = private unnamed_addr constant [10 x i8] c"Analysis:\00", align 1
@str.471 = private unnamed_addr constant [299 x i8] c"      --qpfile <string>       Force frametypes and QPs for some or all frames\0A                              Format of each line: framenumber frametype QP\0A                              QP of -1 lets x264 choose. Frametypes: I,i,P,B,b.\0A                              QPs are restricted by qpmin/qpmax.\00", align 1
@str.472 = private unnamed_addr constant [313 x i8] c"                              Each zone is of the form\0A                                  <start frame>,<end frame>,<option>\0A                                  where <option> is either\0A                                      q=<integer> (force QP)\0A                                  or  b=<float> (bitrate multiplier)\00", align 1
@str.473 = private unnamed_addr constant [77 x i8] c"      --zones <zone0>/<zone1>/...  Tweak the bitrate of regions of the video\00", align 1
@str.474 = private unnamed_addr constant [59 x i8] c"      --no-mbtree             Disable mb-tree ratecontrol.\00", align 1
@str.475 = private unnamed_addr constant [71 x i8] c"                                  - 3: Nth pass, overwrites stats file\00", align 1
@str.476 = private unnamed_addr constant [127 x i8] c"      --crf-max <float>       With CRF+VBV, limit RF to this value\0A                                  May cause VBV underflows!\00", align 1
@str.477 = private unnamed_addr constant [67 x i8] c"  -q, --qp <integer>          Force constant QP (0-51, 0=lossless)\00", align 1
@str.478 = private unnamed_addr constant [225 x i8] c"      --fake-interlaced       Flag stream as interlaced but encode progressive.\0A                              Makes it possible to encode 25p and 30p Blu-Ray\0A                              streams. Ignored in interlaced mode.\00", align 1
@str.479 = private unnamed_addr constant [67 x i8] c"      --constrained-intra     Enable constrained intra prediction.\00", align 1
@str.480 = private unnamed_addr constant [76 x i8] c"      --slice-max-mbs <integer> Limit the size of each slice in macroblocks\00", align 1
@str.481 = private unnamed_addr constant [71 x i8] c"      --slice-max-size <integer> Limit the size of each slice in bytes\00", align 1
@str.482 = private unnamed_addr constant [57 x i8] c"      --slices <integer>      Number of slices per frame\00", align 1
@str.483 = private unnamed_addr constant [157 x i8] c"      --slices <integer>      Number of slices per frame; forces rectangular\0A                              slices and is overridden by other slicing options\00", align 1
@str.484 = private unnamed_addr constant [50 x i8] c"      --no-deblock            Disable loop filter\00", align 1
@str.485 = private unnamed_addr constant [44 x i8] c"      --no-cabac              Disable CABAC\00", align 1
@str.486 = private unnamed_addr constant [79 x i8] c"      --intra-refresh         Use Periodic Intra Refresh instead of IDR frames\00", align 1
@str.487 = private unnamed_addr constant [64 x i8] c"      --no-scenecut           Disable adaptive I-frame decision\00", align 1
@str.488 = private unnamed_addr constant [54 x i8] c"  -i, --min-keyint <integer>  Minimum GOP size [auto]\00", align 1
@str.489 = private unnamed_addr constant [72 x i8] c"      --slow-firstpass        Don't force faster settings with --pass 1\00", align 1
@str.490 = private unnamed_addr constant [286 x i8] c"      --slow-firstpass        Don't force these faster settings with --pass 1:\0A                                  --no-8x8dct --me dia --partitions none\0A                                  --ref 1 --subme {2 if >2 else unchanged}\0A                                  --trellis 0 --fast-pskip\00", align 1
@str.491 = private unnamed_addr constant [1557 x i8] c"                                  - film (psy tuning):\0A                                    --deblock -1:-1 --psy-rd <unset>:0.15\0A                                  - animation (psy tuning):\0A                                    --bframes {+2} --deblock 1:1\0A                                    --psy-rd 0.4:<unset> --aq-strength 0.6\0A                                    --ref {Double if >1 else 1}\0A                                  - grain (psy tuning):\0A                                    --aq-strength 0.5 --no-dct-decimate\0A                                    --deadzone-inter 6 --deadzone-intra 6\0A                                    --deblock -2:-2 --ipratio 1.1 \0A                                    --pbratio 1.1 --psy-rd <unset>:0.25\0A                                    --qcomp 0.8\0A                                  - stillimage (psy tuning):\0A                                    --aq-strength 1.2 --deblock -3:-3\0A                                    --psy-rd 2.0:0.7\0A                                  - psnr (psy tuning):\0A                                    --aq-mode 0 --no-psy\0A                                  - ssim (psy tuning):\0A                                    --aq-mode 2 --no-psy\0A                                  - fastdecode:\0A                                    --no-cabac --no-deblock --no-weightb\0A                                    --weightp 0\0A                                  - zerolatency:\0A                                    --bframes 0 --force-cfr --rc-lookahead 0\0A                                    --sync-lookahead 0 --sliced-threads\00", align 1
@str.492 = private unnamed_addr constant [2442 x i8] c"                                  - ultrafast:\0A                                    --no-8x8dct --aq-mode 0 --b-adapt 0\0A                                    --bframes 0 --no-cabac --no-deblock\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions none --ref 1 --scenecut 0\0A                                    --subme 0 --trellis 0 --no-weightb\0A                                    --weightp 0\0A                                  - superfast:\0A                                    --no-mbtree --me dia --no-mixed-refs\0A                                    --partitions i8x8,i4x4 --ref 1\0A                                    --subme 1 --trellis 0 --weightp 0\0A                                  - veryfast:\0A                                    --no-mbtree --no-mixed-refs --ref 1\0A                                    --subme 2 --trellis 0 --weightp 0\0A                                  - faster:\0A                                    --no-mixed-refs --rc-lookahead 20\0A                                    --ref 2 --subme 4 --weightp 1\0A                                  - fast:\0A                                    --rc-lookahead 30 --ref 2 --subme 6\0A                                  - medium:\0A                                    Default settings apply.\0A                                  - slow:\0A                                    --b-adapt 2 --direct auto --me umh\0A                                    --rc-lookahead 50 --ref 5 --subme 8\0A                                  - slower:\0A                                    --b-adapt 2 --direct auto --me umh\0A                                    --partitions all --rc-lookahead 60\0A                                    --ref 8 --subme 9 --trellis 2\0A                                  - veryslow:\0A                                    --b-adapt 2 --bframes 8 --direct auto\0A                                    --me umh --merange 24 --partitions all\0A                                    --ref 16 --subme 10 --trellis 2\0A                                    --rc-lookahead 60\0A                                  - placebo:\0A                                    --bframes 16 --b-adapt 2 --direct auto\0A                                    --slow-firstpass --no-fast-pskip\0A                                    --me tesa --merange 24 --partitions all\0A                                    --rc-lookahead 60 --ref 16 --subme 10\0A                                    --trellis 2\00", align 1
@str.493 = private unnamed_addr constant [517 x i8] c"                                  - baseline:\0A                                    --no-8x8dct --bframes 0 --no-cabac\0A                                    --cqm flat --weightp 0\0A                                    No interlaced.\0A                                    No lossless.\0A                                  - main:\0A                                    --no-8x8dct --cqm flat\0A                                    No lossless.\0A                                  - high:\0A                                    No lossless.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv) local_unnamed_addr #0 !dbg !413 {
entry:
  %pic_out.i569.i = alloca %struct.x264_picture_t, align 8
  %nal.i570.i = alloca ptr, align 8
  %i_nal.i571.i = alloca i32, align 4
  %pic_out.i.i = alloca %struct.x264_picture_t, align 8
  %nal.i.i = alloca ptr, align 8
  %i_nal.i.i = alloca i32, align 4
  %num.i.i = alloca i32, align 4
  %qp.i.i = alloca i32, align 4
  %type.i.i = alloca i8, align 1
  %pic.i = alloca %struct.x264_picture_t, align 8
  %headers.i = alloca ptr, align 8
  %i_nal.i = alloca i32, align 4
  %defaults.i = alloca %struct.x264_param_t, align 8
  %input_opt.i = alloca %struct.cli_input_opt_t, align 8
  %long_options_index.i = alloca i32, align 4
  %info.i = alloca %struct.video_info_t, align 4
  %demuxername.i = alloca [5 x i8], align 1
  %i_user_timebase_num.i = alloca i64, align 8
  %i_user_timebase_den.i = alloca i64, align 8
  %param = alloca %struct.x264_param_t, align 8
  %opt = alloca %struct.cli_opt_t, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !417, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata ptr %argv, metadata !418, metadata !DIExpression()), !dbg !490
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %param) #16, !dbg !491
  call void @llvm.dbg.declare(metadata ptr %param, metadata !419, metadata !DIExpression()), !dbg !492
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %opt) #16, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %opt, metadata !420, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info.i), !dbg !495
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %demuxername.i), !dbg !495
  call void @llvm.dbg.value(metadata i32 %argc, metadata !501, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %argv, metadata !502, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %param, metadata !503, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %opt, metadata !504, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr null, metadata !505, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr @.str.22, metadata !506, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr null, metadata !507, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr @.str.22, metadata !508, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr null, metadata !509, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.lifetime.start.p0(i64 704, ptr nonnull %defaults.i) #16, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %defaults.i, metadata !510, metadata !DIExpression()) #16, !dbg !558
  call void @llvm.dbg.value(metadata ptr null, metadata !511, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 0, metadata !512, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 1, metadata !513, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 0, metadata !514, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 0, metadata !515, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 0, metadata !516, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %input_opt.i) #16, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %input_opt.i, metadata !517, metadata !DIExpression()) #16, !dbg !560
  call void @llvm.dbg.value(metadata ptr null, metadata !518, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr null, metadata !519, metadata !DIExpression()) #16, !dbg !495
  call void @x264_param_default(ptr noundef nonnull %defaults.i) #16, !dbg !561
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %opt, i8 0, i64 56, i1 false) #16, !dbg !562
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %input_opt.i, i8 0, i64 32, i1 false) #16, !dbg !563
  store i32 1, ptr %opt, align 8, !dbg !564, !tbaa !565
  store i32 0, ptr @optind, align 4, !dbg !572, !tbaa !573
  br label %for.cond.i.outer, !dbg !574

for.cond.i.outer:                                 ; preds = %if.end3.thread.i, %entry
  %preset.0.i.ph = phi ptr [ %0, %if.end3.thread.i ], [ null, %entry ]
  %tune.0.i.ph = phi ptr [ %tune.0.i.ph741, %if.end3.thread.i ], [ null, %entry ]
  br label %for.cond.i.outer740, !dbg !575

for.cond.i.outer740:                              ; preds = %for.cond.i.outer, %if.then5.i
  %tune.0.i.ph741 = phi ptr [ %tune.0.i.ph, %for.cond.i.outer ], [ %1, %if.then5.i ]
  br label %for.cond.i, !dbg !575

for.cond.i:                                       ; preds = %for.cond.i.outer740, %for.cond.i
  call void @llvm.dbg.value(metadata ptr %tune.0.i.ph741, metadata !519, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %preset.0.i.ph, metadata !518, metadata !DIExpression()) #16, !dbg !495
  %call.i = call i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef null) #16, !dbg !576
  call void @llvm.dbg.value(metadata i32 %call.i, metadata !520, metadata !DIExpression()) #16, !dbg !577
  switch i32 %call.i, label %for.cond.i [
    i32 -1, label %for.end.i
    i32 265, label %if.end3.thread.i
    i32 266, label %if.then5.i
    i32 63, label %Parse.exit.thread
  ], !dbg !575

if.end3.thread.i:                                 ; preds = %for.cond.i
  %0 = load ptr, ptr @optarg, align 8, !dbg !578, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %preset.0.i.ph, metadata !518, metadata !DIExpression()) #16, !dbg !495
  br label %for.cond.i.outer, !dbg !581

if.then5.i:                                       ; preds = %for.cond.i
  %1 = load ptr, ptr @optarg, align 8, !dbg !582, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %1, metadata !519, metadata !DIExpression()) #16, !dbg !495
  br label %for.cond.i.outer740, !dbg !584

for.end.i:                                        ; preds = %for.cond.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !519, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr undef, metadata !518, metadata !DIExpression()) #16, !dbg !495
  %tobool.not.i = icmp eq ptr %preset.0.i.ph, null, !dbg !585
  br i1 %tobool.not.i, label %if.end13.i, label %land.lhs.true.i, !dbg !587

land.lhs.true.i:                                  ; preds = %for.end.i
  %call10.i = call i32 @strcmp(ptr noundef nonnull %preset.0.i.ph, ptr noundef nonnull dereferenceable(8) @.str) #17, !dbg !588
  %tobool11.not.i = icmp ne i32 %call10.i, 0, !dbg !588
  %spec.select.i = zext i1 %tobool11.not.i to i32, !dbg !589
  br label %if.end13.i, !dbg !589

if.end13.i:                                       ; preds = %land.lhs.true.i, %for.end.i
  %b_turbo.0.i = phi i32 [ 1, %for.end.i ], [ %spec.select.i, %land.lhs.true.i ], !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_turbo.0.i, metadata !513, metadata !DIExpression()) #16, !dbg !495
  %call14.i = call i32 @x264_param_default_preset(ptr noundef nonnull %param, ptr noundef %preset.0.i.ph, ptr noundef %tune.0.i.ph741) #16, !dbg !590
  %cmp15.i = icmp slt i32 %call14.i, 0, !dbg !592
  br i1 %cmp15.i, label %Parse.exit.thread, label %if.end17.i, !dbg !593

if.end17.i:                                       ; preds = %if.end13.i
  store i32 0, ptr @optind, align 4, !dbg !594, !tbaa !573
  %i_pulldown.i = getelementptr inbounds %struct.cli_opt_t, ptr %opt, i64 0, i32 7
  %timebase.i = getelementptr inbounds %struct.cli_input_opt_t, ptr %input_opt.i, i64 0, i32 2
  %tcfile_out.i = getelementptr inbounds %struct.cli_opt_t, ptr %opt, i64 0, i32 5
  %b_vfr_input.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 47
  %i_log_level80.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 38
  %qpfile.i = getelementptr inbounds %struct.cli_opt_t, ptr %opt, i64 0, i32 4
  %seek.i = getelementptr inbounds %struct.cli_input_opt_t, ptr %input_opt.i, i64 0, i32 3
  %i_seek.i = getelementptr inbounds %struct.cli_opt_t, ptr %opt, i64 0, i32 1
  %i_frame_total.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 9
  br label %for.cond18.i, !dbg !595

for.cond18.i:                                     ; preds = %cleanup140.i, %if.end17.i
  %demuxer.0.i = phi ptr [ @.str.22, %if.end17.i ], [ %demuxer.3.i, %cleanup140.i ], !dbg !596
  %muxer.0.i = phi ptr [ @.str.22, %if.end17.i ], [ %muxer.3.i, %cleanup140.i ], !dbg !597
  %b_turbo.1.i = phi i32 [ %b_turbo.0.i, %if.end17.i ], [ %b_turbo.3.i, %cleanup140.i ], !dbg !598
  %b_user_ref.0.i = phi i32 [ 0, %if.end17.i ], [ %b_user_ref.3.i, %cleanup140.i ], !dbg !599
  %b_user_fps.0.i = phi i32 [ 0, %if.end17.i ], [ %b_user_fps.3.i, %cleanup140.i ], !dbg !600
  %b_user_interlaced.0.i = phi i32 [ 0, %if.end17.i ], [ %b_user_interlaced.3.i, %cleanup140.i ], !dbg !601
  %profile.0.i = phi ptr [ null, %if.end17.i ], [ %profile.2.i, %cleanup140.i ], !dbg !602
  %tcfile_name.0.i = phi ptr [ null, %if.end17.i ], [ %tcfile_name.2.i, %cleanup140.i ], !dbg !603
  %output_filename.0.i = phi ptr [ null, %if.end17.i ], [ %output_filename.2.i, %cleanup140.i ], !dbg !604
  call void @llvm.dbg.value(metadata ptr %output_filename.0.i, metadata !507, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %tcfile_name.0.i, metadata !509, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %profile.0.i, metadata !511, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_interlaced.0.i, metadata !516, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_fps.0.i, metadata !515, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_ref.0.i, metadata !514, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_turbo.1.i, metadata !513, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 0, metadata !524, metadata !DIExpression()) #16, !dbg !605
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %long_options_index.i) #16, !dbg !606
  call void @llvm.dbg.value(metadata i32 -1, metadata !528, metadata !DIExpression()) #16, !dbg !605
  store i32 -1, ptr %long_options_index.i, align 4, !dbg !607, !tbaa !573
  call void @llvm.dbg.value(metadata ptr %long_options_index.i, metadata !528, metadata !DIExpression(DW_OP_deref)) #16, !dbg !605
  %call20.i = call i32 @getopt_long(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @short_options, ptr noundef nonnull @long_options, ptr noundef nonnull %long_options_index.i) #16, !dbg !608
  call void @llvm.dbg.value(metadata i32 %call20.i, metadata !529, metadata !DIExpression()) #16, !dbg !605
  switch i32 %call20.i, label %generic_option.i [
    i32 -1, label %for.end145.i
    i32 104, label %sw.bb.i
    i32 263, label %sw.bb24.i
    i32 268, label %sw.bb25.i
    i32 86, label %sw.bb26.i
    i32 278, label %sw.bb28.i
    i32 256, label %sw.bb32.i
    i32 257, label %sw.bb40.i
    i32 111, label %sw.bb49.i
    i32 270, label %sw.bb50.i
    i32 271, label %sw.bb55.i
    i32 272, label %sw.bb60.i
    i32 258, label %sw.bb61.i
    i32 259, label %cleanup140.i
    i32 260, label %sw.bb78.i
    i32 118, label %sw.bb79.i
    i32 261, label %sw.bb81.i
    i32 262, label %sw.bb83.i
    i32 266, label %cleanup140.i
    i32 265, label %cleanup140.i
    i32 264, label %sw.bb86.i
    i32 267, label %sw.bb87.i
    i32 114, label %sw.bb88.i
    i32 269, label %sw.bb89.i
    i32 273, label %sw.bb90.i
    i32 274, label %sw.bb91.i
    i32 275, label %sw.bb92.i
    i32 276, label %sw.bb99.i
    i32 277, label %sw.bb100.i
  ], !dbg !609

sw.bb.i:                                          ; preds = %for.cond18.i
  call fastcc void @Help(ptr noundef nonnull %defaults.i, i32 noundef 0) #16, !dbg !610
  call void @exit(i32 noundef 0) #18, !dbg !611
  unreachable, !dbg !611

sw.bb24.i:                                        ; preds = %for.cond18.i
  call fastcc void @Help(ptr noundef nonnull %defaults.i, i32 noundef 1) #16, !dbg !612
  call void @exit(i32 noundef 0) #18, !dbg !613
  unreachable, !dbg !613

sw.bb25.i:                                        ; preds = %for.cond18.i
  call fastcc void @Help(ptr noundef nonnull %defaults.i, i32 noundef 2) #16, !dbg !614
  call void @exit(i32 noundef 0) #18, !dbg !615
  unreachable, !dbg !615

sw.bb26.i:                                        ; preds = %for.cond18.i
  %puts.i = call i32 @puts(ptr nonnull @str) #16, !dbg !616
  call void @exit(i32 noundef 0) #18, !dbg !617
  unreachable, !dbg !617

sw.bb28.i:                                        ; preds = %for.cond18.i
  %2 = load ptr, ptr @optarg, align 8, !dbg !618, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %2, metadata !619, metadata !DIExpression()) #16, !dbg !625
  %call.i.i = call i64 @strtol(ptr nocapture noundef nonnull %2, ptr noundef null, i32 noundef 10) #16, !dbg !627
  %conv.i.i = trunc i64 %call.i.i to i32, !dbg !628
  %3 = call i32 @llvm.smax.i32(i32 %conv.i.i, i32 1) #16, !dbg !618
  store i32 %3, ptr @tga_dump_rate, align 4, !dbg !629, !tbaa !573
  br label %cleanup140.i, !dbg !630

sw.bb32.i:                                        ; preds = %for.cond18.i
  %4 = load ptr, ptr @optarg, align 8, !dbg !631, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %4, metadata !619, metadata !DIExpression()) #16, !dbg !632
  %call.i503.i = call i64 @strtol(ptr nocapture noundef nonnull %4, ptr noundef null, i32 noundef 10) #16, !dbg !634
  %conv.i504.i = trunc i64 %call.i503.i to i32, !dbg !635
  %5 = call i32 @llvm.smax.i32(i32 %conv.i504.i, i32 0) #16, !dbg !631
  store i32 %5, ptr %i_frame_total.i, align 4, !dbg !636, !tbaa !637
  br label %cleanup140.i, !dbg !643

sw.bb40.i:                                        ; preds = %for.cond18.i
  %6 = load ptr, ptr @optarg, align 8, !dbg !644, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %6, metadata !619, metadata !DIExpression()) #16, !dbg !645
  %call.i505.i = call i64 @strtol(ptr nocapture noundef nonnull %6, ptr noundef null, i32 noundef 10) #16, !dbg !647
  %conv.i506.i = trunc i64 %call.i505.i to i32, !dbg !648
  %7 = call i32 @llvm.smax.i32(i32 %conv.i506.i, i32 0) #16, !dbg !644
  store i32 %7, ptr %seek.i, align 8, !dbg !649, !tbaa !650
  store i32 %7, ptr %i_seek.i, align 4, !dbg !652, !tbaa !653
  store i32 %7, ptr @seek_val, align 4, !dbg !654, !tbaa !573
  br label %cleanup140.i, !dbg !655

sw.bb49.i:                                        ; preds = %for.cond18.i
  %8 = load ptr, ptr @optarg, align 8, !dbg !656, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %8, metadata !507, metadata !DIExpression()) #16, !dbg !495
  br label %cleanup140.i, !dbg !657

sw.bb50.i:                                        ; preds = %for.cond18.i
  %9 = load ptr, ptr @optarg, align 8, !dbg !658, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %9, metadata !660, metadata !DIExpression()) #16, !dbg !671
  call void @llvm.dbg.value(metadata ptr @muxer_names, metadata !667, metadata !DIExpression()) #16, !dbg !671
  call void @llvm.dbg.value(metadata ptr undef, metadata !668, metadata !DIExpression()) #16, !dbg !671
  call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()) #16, !dbg !673
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !674
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !669, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #16, !dbg !673
  %arrayidx.i.i = getelementptr inbounds ptr, ptr @muxer_names, i64 %indvars.iv.next.i.i, !dbg !676
  %10 = load ptr, ptr %arrayidx.i.i, align 8, !dbg !676, !tbaa !580
  %exitcond847.i = icmp eq i64 %indvars.iv.next.i.i, 4, !dbg !677
  br i1 %exitcond847.i, label %cleanup140.thread.i, label %for.body.i.i, !dbg !677, !llvm.loop !678

for.body.i.i:                                     ; preds = %for.cond.i.i, %sw.bb50.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.cond.i.i ], [ 0, %sw.bb50.i ]
  %11 = phi ptr [ %10, %for.cond.i.i ], [ @.str.22, %sw.bb50.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !669, metadata !DIExpression()) #16, !dbg !673
  %call.i507.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull %11) #17, !dbg !682
  %tobool3.not.i.i = icmp eq i32 %call.i507.i, 0, !dbg !682
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !669, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #16, !dbg !673
  br i1 %tobool3.not.i.i, label %cleanup140.i, label %for.cond.i.i, !dbg !684

sw.bb55.i:                                        ; preds = %for.cond18.i
  %12 = load ptr, ptr @optarg, align 8, !dbg !685, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %12, metadata !660, metadata !DIExpression()) #16, !dbg !687
  call void @llvm.dbg.value(metadata ptr @demuxer_names, metadata !667, metadata !DIExpression()) #16, !dbg !687
  call void @llvm.dbg.value(metadata ptr undef, metadata !668, metadata !DIExpression()) #16, !dbg !687
  call void @llvm.dbg.value(metadata i32 0, metadata !669, metadata !DIExpression()) #16, !dbg !689
  br label %for.body.i515.i

for.cond.i511.i:                                  ; preds = %for.body.i515.i
  %indvars.iv.next.i508.i = add nuw nsw i64 %indvars.iv.i512.i, 1, !dbg !690
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i512.i, metadata !669, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #16, !dbg !689
  %arrayidx.i509.i = getelementptr inbounds ptr, ptr @demuxer_names, i64 %indvars.iv.next.i508.i, !dbg !691
  %13 = load ptr, ptr %arrayidx.i509.i, align 8, !dbg !691, !tbaa !580
  %exitcond.i = icmp eq i64 %indvars.iv.next.i508.i, 3, !dbg !692
  br i1 %exitcond.i, label %cleanup140.thread.i, label %for.body.i515.i, !dbg !692, !llvm.loop !693

for.body.i515.i:                                  ; preds = %for.cond.i511.i, %sw.bb55.i
  %indvars.iv.i512.i = phi i64 [ %indvars.iv.next.i508.i, %for.cond.i511.i ], [ 0, %sw.bb55.i ]
  %14 = phi ptr [ %13, %for.cond.i511.i ], [ @.str.22, %sw.bb55.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i512.i, metadata !669, metadata !DIExpression()) #16, !dbg !689
  %call.i513.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull %14) #17, !dbg !695
  %tobool3.not.i514.i = icmp eq i32 %call.i513.i, 0, !dbg !695
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i512.i, metadata !669, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #16, !dbg !689
  br i1 %tobool3.not.i514.i, label %cleanup140.i, label %for.cond.i511.i, !dbg !696

sw.bb60.i:                                        ; preds = %for.cond18.i
  %15 = load ptr, ptr @optarg, align 8, !dbg !697, !tbaa !580
  store ptr %15, ptr %input_opt.i, align 8, !dbg !698, !tbaa !699
  br label %cleanup140.i, !dbg !700

sw.bb61.i:                                        ; preds = %for.cond18.i
  %16 = load ptr, ptr @optarg, align 8, !dbg !701, !tbaa !580
  %call62.i = call ptr @fopen(ptr noundef %16, ptr noundef nonnull @.str.2) #16, !dbg !702
  store ptr %call62.i, ptr %qpfile.i, align 8, !dbg !703, !tbaa !704
  %tobool64.not.i = icmp eq ptr %call62.i, null, !dbg !705
  br i1 %tobool64.not.i, label %if.then65.i, label %cleanup140.i, !dbg !707

if.then65.i:                                      ; preds = %sw.bb61.i
  %17 = load ptr, ptr @stderr, align 8, !dbg !708, !tbaa !580
  %18 = load ptr, ptr @optarg, align 8, !dbg !710, !tbaa !580
  %call66.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef %18) #19, !dbg !711
  br label %cleanup140.thread.i, !dbg !712

sw.bb78.i:                                        ; preds = %for.cond18.i
  store i32 -1, ptr %i_log_level80.i, align 8, !dbg !713, !tbaa !714
  br label %cleanup140.i, !dbg !715

sw.bb79.i:                                        ; preds = %for.cond18.i
  store i32 3, ptr %i_log_level80.i, align 8, !dbg !716, !tbaa !714
  br label %cleanup140.i, !dbg !717

sw.bb81.i:                                        ; preds = %for.cond18.i
  store i32 0, ptr %opt, align 8, !dbg !718, !tbaa !565
  br label %cleanup140.i, !dbg !719

sw.bb83.i:                                        ; preds = %for.cond18.i
  %19 = load ptr, ptr @stderr, align 8, !dbg !720, !tbaa !580
  %20 = call i64 @fwrite(ptr nonnull @.str.5, i64 56, i64 1, ptr %19) #19, !dbg !721
  br label %cleanup140.i, !dbg !722

sw.bb86.i:                                        ; preds = %for.cond18.i
  %21 = load ptr, ptr @optarg, align 8, !dbg !723, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %21, metadata !511, metadata !DIExpression()) #16, !dbg !495
  br label %cleanup140.i, !dbg !724

sw.bb87.i:                                        ; preds = %for.cond18.i
  call void @llvm.dbg.value(metadata i32 0, metadata !513, metadata !DIExpression()) #16, !dbg !495
  br label %cleanup140.i, !dbg !725

sw.bb88.i:                                        ; preds = %for.cond18.i
  call void @llvm.dbg.value(metadata i32 1, metadata !514, metadata !DIExpression()) #16, !dbg !495
  br label %generic_option.i, !dbg !726

sw.bb89.i:                                        ; preds = %for.cond18.i
  call void @llvm.dbg.value(metadata i32 1, metadata !515, metadata !DIExpression()) #16, !dbg !495
  store i32 0, ptr %b_vfr_input.i, align 8, !dbg !727, !tbaa !728
  br label %generic_option.i, !dbg !729

sw.bb90.i:                                        ; preds = %for.cond18.i
  call void @llvm.dbg.value(metadata i32 1, metadata !516, metadata !DIExpression()) #16, !dbg !495
  br label %generic_option.i, !dbg !730

sw.bb91.i:                                        ; preds = %for.cond18.i
  %22 = load ptr, ptr @optarg, align 8, !dbg !731, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %22, metadata !509, metadata !DIExpression()) #16, !dbg !495
  br label %cleanup140.i, !dbg !732

sw.bb92.i:                                        ; preds = %for.cond18.i
  %23 = load ptr, ptr @optarg, align 8, !dbg !733, !tbaa !580
  %call93.i = call ptr @fopen(ptr noundef %23, ptr noundef nonnull @.str.6) #16, !dbg !734
  store ptr %call93.i, ptr %tcfile_out.i, align 8, !dbg !735, !tbaa !736
  %tobool95.not.i = icmp eq ptr %call93.i, null, !dbg !737
  br i1 %tobool95.not.i, label %if.then96.i, label %cleanup140.i, !dbg !739

if.then96.i:                                      ; preds = %sw.bb92.i
  %24 = load ptr, ptr @stderr, align 8, !dbg !740, !tbaa !580
  %25 = load ptr, ptr @optarg, align 8, !dbg !742, !tbaa !580
  %call97.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.7, ptr noundef %25) #19, !dbg !743
  br label %cleanup140.thread.i, !dbg !744

sw.bb99.i:                                        ; preds = %for.cond18.i
  %26 = load ptr, ptr @optarg, align 8, !dbg !745, !tbaa !580
  store ptr %26, ptr %timebase.i, align 8, !dbg !746, !tbaa !747
  br label %cleanup140.i, !dbg !748

sw.bb100.i:                                       ; preds = %for.cond18.i
  %27 = load ptr, ptr @optarg, align 8, !dbg !749, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %27, metadata !751, metadata !DIExpression()) #16, !dbg !760
  call void @llvm.dbg.value(metadata ptr @pulldown_names, metadata !756, metadata !DIExpression()) #16, !dbg !760
  call void @llvm.dbg.value(metadata ptr %i_pulldown.i, metadata !757, metadata !DIExpression()) #16, !dbg !760
  call void @llvm.dbg.value(metadata i32 0, metadata !758, metadata !DIExpression()) #16, !dbg !762
  call void @llvm.dbg.value(metadata i64 0, metadata !758, metadata !DIExpression()) #16, !dbg !762
  %call.i520726.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(5) @.str.323) #17, !dbg !763
  %tobool3.not.i521727.i = icmp eq i32 %call.i520726.i, 0, !dbg !763
  br i1 %tobool3.not.i521727.i, label %cleanup140.critedge.i, label %for.inc.i.i, !dbg !766

for.body.i522.i:                                  ; preds = %for.inc.i.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !758, metadata !DIExpression()) #16, !dbg !762
  %call.i520.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull %29) #17, !dbg !763
  %tobool3.not.i521.i = icmp eq i32 %call.i520.i, 0, !dbg !763
  br i1 %tobool3.not.i521.i, label %if.then.i523.i, label %for.inc.i.i, !dbg !766, !llvm.loop !767

if.then.i523.i:                                   ; preds = %for.body.i522.i
  %tobool.not.i526.le.i = icmp eq ptr %29, null, !dbg !768
  %28 = trunc i64 %indvars.iv.next.i524.i to i32, !dbg !770
  store i32 %28, ptr %i_pulldown.i, align 8, !dbg !770, !tbaa !573
  br i1 %tobool.not.i526.le.i, label %cleanup140.thread.i, label %cleanup140.i, !dbg !772

for.inc.i.i:                                      ; preds = %sw.bb100.i, %for.body.i522.i
  %indvars.iv.i519728.i = phi i64 [ %indvars.iv.next.i524.i, %for.body.i522.i ], [ 0, %sw.bb100.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i519728.i, metadata !758, metadata !DIExpression()) #16, !dbg !762
  %indvars.iv.next.i524.i = add nuw nsw i64 %indvars.iv.i519728.i, 1, !dbg !773
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i524.i, metadata !758, metadata !DIExpression()) #16, !dbg !762
  %arrayidx.i525.i = getelementptr inbounds ptr, ptr @pulldown_names, i64 %indvars.iv.next.i524.i, !dbg !774
  %29 = load ptr, ptr %arrayidx.i525.i, align 8, !dbg !774, !tbaa !580
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i524.i, 7, !dbg !768
  br i1 %exitcond.i.i, label %parse_enum_value.exit.i, label %for.body.i522.i, !dbg !768, !llvm.loop !775

parse_enum_value.exit.i:                          ; preds = %for.inc.i.i
  %tobool.not.i526.le970.i = icmp eq ptr %29, null, !dbg !768
  br i1 %tobool.not.i526.le970.i, label %cleanup140.thread.i, label %cleanup140.i, !dbg !772

generic_option.i:                                 ; preds = %sw.bb90.i, %sw.bb89.i, %sw.bb88.i, %for.cond18.i
  %b_user_ref.1.i = phi i32 [ %b_user_ref.0.i, %sw.bb90.i ], [ %b_user_ref.0.i, %sw.bb89.i ], [ 1, %sw.bb88.i ], [ %b_user_ref.0.i, %for.cond18.i ], !dbg !495
  %b_user_fps.1.i = phi i32 [ %b_user_fps.0.i, %sw.bb90.i ], [ 1, %sw.bb89.i ], [ %b_user_fps.0.i, %sw.bb88.i ], [ %b_user_fps.0.i, %for.cond18.i ], !dbg !495
  %b_user_interlaced.1.i = phi i32 [ 1, %sw.bb90.i ], [ %b_user_interlaced.0.i, %sw.bb89.i ], [ %b_user_interlaced.0.i, %sw.bb88.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_interlaced.1.i, metadata !516, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_fps.1.i, metadata !515, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_ref.1.i, metadata !514, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.label(metadata !554) #16, !dbg !776
  %30 = load i32, ptr %long_options_index.i, align 4, !dbg !777, !tbaa !573
  call void @llvm.dbg.value(metadata i32 %30, metadata !528, metadata !DIExpression()) #16, !dbg !605
  %cmp105.i = icmp slt i32 %30, 0, !dbg !778
  br i1 %cmp105.i, label %for.cond107.preheader.i, label %sw.epilog.i, !dbg !779

for.cond107.preheader.i:                          ; preds = %generic_option.i
  call void @llvm.dbg.value(metadata i32 0, metadata !530, metadata !DIExpression()) #16, !dbg !780
  %31 = load ptr, ptr @long_options, align 16, !dbg !781, !tbaa !783
  %tobool108.not730.i = icmp eq ptr %31, null, !dbg !785
  br i1 %tobool108.not730.i, label %cleanup140.thread.i, label %for.body.i, !dbg !785

for.body.i:                                       ; preds = %for.cond107.preheader.i, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.cond107.preheader.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !530, metadata !DIExpression()) #16, !dbg !780
  %val.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %indvars.iv.i, i32 3, !dbg !786
  %32 = load i32, ptr %val.i, align 8, !dbg !786, !tbaa !788
  %cmp111.i = icmp eq i32 %32, %call20.i, !dbg !789
  br i1 %cmp111.i, label %cleanup114.thread.i, label %for.inc.i, !dbg !790

cleanup114.thread.i:                              ; preds = %for.body.i
  %33 = trunc i64 %indvars.iv.i to i32, !dbg !605
  call void @llvm.dbg.value(metadata i32 %33, metadata !528, metadata !DIExpression()) #16, !dbg !605
  store i32 %33, ptr %long_options_index.i, align 4, !dbg !791, !tbaa !573
  call void @llvm.dbg.value(metadata i32 %30, metadata !528, metadata !DIExpression()) #16, !dbg !605
  br label %sw.epilog.i, !dbg !793

for.inc.i:                                        ; preds = %for.body.i
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1, !dbg !794
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !530, metadata !DIExpression()) #16, !dbg !780
  %arrayidx.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %indvars.iv.next.i, !dbg !795
  %34 = load ptr, ptr %arrayidx.i, align 16, !dbg !781, !tbaa !783
  %tobool108.not.i = icmp eq ptr %34, null, !dbg !785
  br i1 %tobool108.not.i, label %cleanup140.thread.i, label %for.body.i, !dbg !785, !llvm.loop !796

sw.epilog.i:                                      ; preds = %cleanup114.thread.i, %generic_option.i
  %35 = phi i32 [ %30, %generic_option.i ], [ %33, %cleanup114.thread.i ], !dbg !798
  call void @llvm.dbg.value(metadata i32 %35, metadata !528, metadata !DIExpression()) #16, !dbg !605
  %idxprom120.i = sext i32 %35 to i64, !dbg !799
  %arrayidx121.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %idxprom120.i, !dbg !799
  %36 = load ptr, ptr %arrayidx121.i, align 16, !dbg !800, !tbaa !783
  %37 = load ptr, ptr @optarg, align 8, !dbg !801, !tbaa !580
  %call123.i = call i32 @x264_param_parse(ptr noundef nonnull %param, ptr noundef %36, ptr noundef %37) #16, !dbg !802
  call void @llvm.dbg.value(metadata ptr %output_filename.0.i, metadata !507, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %tcfile_name.0.i, metadata !509, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %call123.i, metadata !524, metadata !DIExpression()) #16, !dbg !605
  call void @llvm.dbg.value(metadata ptr %profile.0.i, metadata !511, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_interlaced.1.i, metadata !516, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_fps.1.i, metadata !515, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_ref.1.i, metadata !514, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_turbo.1.i, metadata !513, metadata !DIExpression()) #16, !dbg !495
  %tobool124.not.i = icmp eq i32 %call123.i, 0, !dbg !803
  br i1 %tobool124.not.i, label %cleanup140.i, label %if.then125.i, !dbg !804

if.then125.i:                                     ; preds = %sw.epilog.i
  %38 = load i32, ptr %long_options_index.i, align 4, !dbg !805, !tbaa !573
  call void @llvm.dbg.value(metadata i32 %38, metadata !528, metadata !DIExpression()) #16, !dbg !605
  %cmp127.i = icmp sgt i32 %38, 0, !dbg !806
  br i1 %cmp127.i, label %cond.true128.i, label %cond.false132.i, !dbg !805

cond.true128.i:                                   ; preds = %if.then125.i
  %idxprom129619.i = zext i32 %38 to i64, !dbg !807
  %arrayidx130.i = getelementptr inbounds [142 x %struct.option], ptr @long_options, i64 0, i64 %idxprom129619.i, !dbg !807
  br label %cond.end135.i, !dbg !805

cond.false132.i:                                  ; preds = %if.then125.i
  %39 = load i32, ptr @optind, align 4, !dbg !808, !tbaa !573
  %sub.i = add nsw i32 %39, -2, !dbg !809
  %idxprom133.i = sext i32 %sub.i to i64, !dbg !810
  %arrayidx134.i = getelementptr inbounds ptr, ptr %argv, i64 %idxprom133.i, !dbg !810
  br label %cond.end135.i, !dbg !805

cond.end135.i:                                    ; preds = %cond.false132.i, %cond.true128.i
  %cond136.in.i = phi ptr [ %arrayidx130.i, %cond.true128.i ], [ %arrayidx134.i, %cond.false132.i ]
  %cond136.i = load ptr, ptr %cond136.in.i, align 8, !dbg !805, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %cond136.i, metadata !536, metadata !DIExpression()) #16, !dbg !811
  %40 = load ptr, ptr @stderr, align 8, !dbg !812, !tbaa !580
  %41 = load ptr, ptr @optarg, align 8, !dbg !813, !tbaa !580
  %call137.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.8, ptr noundef %cond136.i, ptr noundef %41) #19, !dbg !814
  br label %cleanup140.thread.i

cleanup140.thread.i:                              ; preds = %for.cond107.preheader.i, %parse_enum_value.exit.i, %if.then.i523.i, %for.cond.i511.i, %for.cond.i.i, %for.inc.i, %cond.end135.i, %if.then96.i, %if.then65.i
  call void @llvm.dbg.value(metadata ptr %output_filename.2.i, metadata !507, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %tcfile_name.2.i, metadata !509, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %profile.2.i, metadata !511, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_interlaced.3.i, metadata !516, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_fps.3.i, metadata !515, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_ref.3.i, metadata !514, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_turbo.3.i, metadata !513, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_options_index.i) #16, !dbg !815
  br label %Parse.exit.thread

cleanup140.critedge.i:                            ; preds = %sw.bb100.i
  store i32 0, ptr %i_pulldown.i, align 8, !dbg !770, !tbaa !573
  br label %cleanup140.i, !dbg !772

cleanup140.i:                                     ; preds = %for.body.i515.i, %for.body.i.i, %cleanup140.critedge.i, %sw.epilog.i, %parse_enum_value.exit.i, %if.then.i523.i, %sw.bb99.i, %sw.bb92.i, %sw.bb91.i, %sw.bb87.i, %sw.bb86.i, %sw.bb83.i, %sw.bb81.i, %sw.bb79.i, %sw.bb78.i, %sw.bb61.i, %sw.bb60.i, %sw.bb49.i, %sw.bb40.i, %sw.bb32.i, %sw.bb28.i, %for.cond18.i, %for.cond18.i, %for.cond18.i
  %demuxer.3.i = phi ptr [ %demuxer.0.i, %sw.epilog.i ], [ %demuxer.0.i, %if.then.i523.i ], [ %demuxer.0.i, %sw.bb61.i ], [ %demuxer.0.i, %sw.bb28.i ], [ %demuxer.0.i, %sw.bb32.i ], [ %demuxer.0.i, %sw.bb40.i ], [ %demuxer.0.i, %sw.bb49.i ], [ %demuxer.0.i, %sw.bb60.i ], [ %demuxer.0.i, %for.cond18.i ], [ %demuxer.0.i, %for.cond18.i ], [ %demuxer.0.i, %for.cond18.i ], [ %demuxer.0.i, %sw.bb78.i ], [ %demuxer.0.i, %sw.bb79.i ], [ %demuxer.0.i, %sw.bb81.i ], [ %demuxer.0.i, %sw.bb83.i ], [ %demuxer.0.i, %sw.bb86.i ], [ %demuxer.0.i, %sw.bb87.i ], [ %demuxer.0.i, %sw.bb91.i ], [ %demuxer.0.i, %sw.bb92.i ], [ %demuxer.0.i, %sw.bb99.i ], [ %demuxer.0.i, %parse_enum_value.exit.i ], [ %demuxer.0.i, %cleanup140.critedge.i ], [ %demuxer.0.i, %for.body.i.i ], [ %14, %for.body.i515.i ], !dbg !495
  %muxer.3.i = phi ptr [ %muxer.0.i, %sw.epilog.i ], [ %muxer.0.i, %if.then.i523.i ], [ %muxer.0.i, %sw.bb61.i ], [ %muxer.0.i, %sw.bb28.i ], [ %muxer.0.i, %sw.bb32.i ], [ %muxer.0.i, %sw.bb40.i ], [ %muxer.0.i, %sw.bb49.i ], [ %muxer.0.i, %sw.bb60.i ], [ %muxer.0.i, %for.cond18.i ], [ %muxer.0.i, %for.cond18.i ], [ %muxer.0.i, %for.cond18.i ], [ %muxer.0.i, %sw.bb78.i ], [ %muxer.0.i, %sw.bb79.i ], [ %muxer.0.i, %sw.bb81.i ], [ %muxer.0.i, %sw.bb83.i ], [ %muxer.0.i, %sw.bb86.i ], [ %muxer.0.i, %sw.bb87.i ], [ %muxer.0.i, %sw.bb91.i ], [ %muxer.0.i, %sw.bb92.i ], [ %muxer.0.i, %sw.bb99.i ], [ %muxer.0.i, %parse_enum_value.exit.i ], [ %muxer.0.i, %cleanup140.critedge.i ], [ %11, %for.body.i.i ], [ %muxer.0.i, %for.body.i515.i ], !dbg !495
  %b_turbo.3.i = phi i32 [ %b_turbo.1.i, %sw.epilog.i ], [ %b_turbo.1.i, %if.then.i523.i ], [ %b_turbo.1.i, %sw.bb61.i ], [ %b_turbo.1.i, %sw.bb28.i ], [ %b_turbo.1.i, %sw.bb32.i ], [ %b_turbo.1.i, %sw.bb40.i ], [ %b_turbo.1.i, %sw.bb49.i ], [ %b_turbo.1.i, %sw.bb60.i ], [ %b_turbo.1.i, %for.cond18.i ], [ %b_turbo.1.i, %for.cond18.i ], [ %b_turbo.1.i, %for.cond18.i ], [ %b_turbo.1.i, %sw.bb78.i ], [ %b_turbo.1.i, %sw.bb79.i ], [ %b_turbo.1.i, %sw.bb81.i ], [ %b_turbo.1.i, %sw.bb83.i ], [ %b_turbo.1.i, %sw.bb86.i ], [ 0, %sw.bb87.i ], [ %b_turbo.1.i, %sw.bb91.i ], [ %b_turbo.1.i, %sw.bb92.i ], [ %b_turbo.1.i, %sw.bb99.i ], [ %b_turbo.1.i, %parse_enum_value.exit.i ], [ %b_turbo.1.i, %cleanup140.critedge.i ], [ %b_turbo.1.i, %for.body.i.i ], [ %b_turbo.1.i, %for.body.i515.i ], !dbg !598
  %b_user_ref.3.i = phi i32 [ %b_user_ref.1.i, %sw.epilog.i ], [ %b_user_ref.0.i, %if.then.i523.i ], [ %b_user_ref.0.i, %sw.bb61.i ], [ %b_user_ref.0.i, %sw.bb28.i ], [ %b_user_ref.0.i, %sw.bb32.i ], [ %b_user_ref.0.i, %sw.bb40.i ], [ %b_user_ref.0.i, %sw.bb49.i ], [ %b_user_ref.0.i, %sw.bb60.i ], [ %b_user_ref.0.i, %for.cond18.i ], [ %b_user_ref.0.i, %for.cond18.i ], [ %b_user_ref.0.i, %for.cond18.i ], [ %b_user_ref.0.i, %sw.bb78.i ], [ %b_user_ref.0.i, %sw.bb79.i ], [ %b_user_ref.0.i, %sw.bb81.i ], [ %b_user_ref.0.i, %sw.bb83.i ], [ %b_user_ref.0.i, %sw.bb86.i ], [ %b_user_ref.0.i, %sw.bb87.i ], [ %b_user_ref.0.i, %sw.bb91.i ], [ %b_user_ref.0.i, %sw.bb92.i ], [ %b_user_ref.0.i, %sw.bb99.i ], [ %b_user_ref.0.i, %parse_enum_value.exit.i ], [ %b_user_ref.0.i, %cleanup140.critedge.i ], [ %b_user_ref.0.i, %for.body.i.i ], [ %b_user_ref.0.i, %for.body.i515.i ], !dbg !599
  %b_user_fps.3.i = phi i32 [ %b_user_fps.1.i, %sw.epilog.i ], [ %b_user_fps.0.i, %if.then.i523.i ], [ %b_user_fps.0.i, %sw.bb61.i ], [ %b_user_fps.0.i, %sw.bb28.i ], [ %b_user_fps.0.i, %sw.bb32.i ], [ %b_user_fps.0.i, %sw.bb40.i ], [ %b_user_fps.0.i, %sw.bb49.i ], [ %b_user_fps.0.i, %sw.bb60.i ], [ %b_user_fps.0.i, %for.cond18.i ], [ %b_user_fps.0.i, %for.cond18.i ], [ %b_user_fps.0.i, %for.cond18.i ], [ %b_user_fps.0.i, %sw.bb78.i ], [ %b_user_fps.0.i, %sw.bb79.i ], [ %b_user_fps.0.i, %sw.bb81.i ], [ %b_user_fps.0.i, %sw.bb83.i ], [ %b_user_fps.0.i, %sw.bb86.i ], [ %b_user_fps.0.i, %sw.bb87.i ], [ %b_user_fps.0.i, %sw.bb91.i ], [ %b_user_fps.0.i, %sw.bb92.i ], [ %b_user_fps.0.i, %sw.bb99.i ], [ %b_user_fps.0.i, %parse_enum_value.exit.i ], [ %b_user_fps.0.i, %cleanup140.critedge.i ], [ %b_user_fps.0.i, %for.body.i.i ], [ %b_user_fps.0.i, %for.body.i515.i ], !dbg !600
  %b_user_interlaced.3.i = phi i32 [ %b_user_interlaced.1.i, %sw.epilog.i ], [ %b_user_interlaced.0.i, %if.then.i523.i ], [ %b_user_interlaced.0.i, %sw.bb61.i ], [ %b_user_interlaced.0.i, %sw.bb28.i ], [ %b_user_interlaced.0.i, %sw.bb32.i ], [ %b_user_interlaced.0.i, %sw.bb40.i ], [ %b_user_interlaced.0.i, %sw.bb49.i ], [ %b_user_interlaced.0.i, %sw.bb60.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], [ %b_user_interlaced.0.i, %for.cond18.i ], [ %b_user_interlaced.0.i, %sw.bb78.i ], [ %b_user_interlaced.0.i, %sw.bb79.i ], [ %b_user_interlaced.0.i, %sw.bb81.i ], [ %b_user_interlaced.0.i, %sw.bb83.i ], [ %b_user_interlaced.0.i, %sw.bb86.i ], [ %b_user_interlaced.0.i, %sw.bb87.i ], [ %b_user_interlaced.0.i, %sw.bb91.i ], [ %b_user_interlaced.0.i, %sw.bb92.i ], [ %b_user_interlaced.0.i, %sw.bb99.i ], [ %b_user_interlaced.0.i, %parse_enum_value.exit.i ], [ %b_user_interlaced.0.i, %cleanup140.critedge.i ], [ %b_user_interlaced.0.i, %for.body.i.i ], [ %b_user_interlaced.0.i, %for.body.i515.i ], !dbg !601
  %profile.2.i = phi ptr [ %profile.0.i, %sw.epilog.i ], [ %profile.0.i, %if.then.i523.i ], [ %profile.0.i, %sw.bb61.i ], [ %profile.0.i, %sw.bb28.i ], [ %profile.0.i, %sw.bb32.i ], [ %profile.0.i, %sw.bb40.i ], [ %profile.0.i, %sw.bb49.i ], [ %profile.0.i, %sw.bb60.i ], [ %profile.0.i, %for.cond18.i ], [ %profile.0.i, %for.cond18.i ], [ %profile.0.i, %for.cond18.i ], [ %profile.0.i, %sw.bb78.i ], [ %profile.0.i, %sw.bb79.i ], [ %profile.0.i, %sw.bb81.i ], [ %profile.0.i, %sw.bb83.i ], [ %21, %sw.bb86.i ], [ %profile.0.i, %sw.bb87.i ], [ %profile.0.i, %sw.bb91.i ], [ %profile.0.i, %sw.bb92.i ], [ %profile.0.i, %sw.bb99.i ], [ %profile.0.i, %parse_enum_value.exit.i ], [ %profile.0.i, %cleanup140.critedge.i ], [ %profile.0.i, %for.body.i.i ], [ %profile.0.i, %for.body.i515.i ], !dbg !602
  %tcfile_name.2.i = phi ptr [ %tcfile_name.0.i, %sw.epilog.i ], [ %tcfile_name.0.i, %if.then.i523.i ], [ %tcfile_name.0.i, %sw.bb61.i ], [ %tcfile_name.0.i, %sw.bb28.i ], [ %tcfile_name.0.i, %sw.bb32.i ], [ %tcfile_name.0.i, %sw.bb40.i ], [ %tcfile_name.0.i, %sw.bb49.i ], [ %tcfile_name.0.i, %sw.bb60.i ], [ %tcfile_name.0.i, %for.cond18.i ], [ %tcfile_name.0.i, %for.cond18.i ], [ %tcfile_name.0.i, %for.cond18.i ], [ %tcfile_name.0.i, %sw.bb78.i ], [ %tcfile_name.0.i, %sw.bb79.i ], [ %tcfile_name.0.i, %sw.bb81.i ], [ %tcfile_name.0.i, %sw.bb83.i ], [ %tcfile_name.0.i, %sw.bb86.i ], [ %tcfile_name.0.i, %sw.bb87.i ], [ %22, %sw.bb91.i ], [ %tcfile_name.0.i, %sw.bb92.i ], [ %tcfile_name.0.i, %sw.bb99.i ], [ %tcfile_name.0.i, %parse_enum_value.exit.i ], [ %tcfile_name.0.i, %cleanup140.critedge.i ], [ %tcfile_name.0.i, %for.body.i.i ], [ %tcfile_name.0.i, %for.body.i515.i ], !dbg !603
  %output_filename.2.i = phi ptr [ %output_filename.0.i, %sw.epilog.i ], [ %output_filename.0.i, %if.then.i523.i ], [ %output_filename.0.i, %sw.bb61.i ], [ %output_filename.0.i, %sw.bb28.i ], [ %output_filename.0.i, %sw.bb32.i ], [ %output_filename.0.i, %sw.bb40.i ], [ %8, %sw.bb49.i ], [ %output_filename.0.i, %sw.bb60.i ], [ %output_filename.0.i, %for.cond18.i ], [ %output_filename.0.i, %for.cond18.i ], [ %output_filename.0.i, %for.cond18.i ], [ %output_filename.0.i, %sw.bb78.i ], [ %output_filename.0.i, %sw.bb79.i ], [ %output_filename.0.i, %sw.bb81.i ], [ %output_filename.0.i, %sw.bb83.i ], [ %output_filename.0.i, %sw.bb86.i ], [ %output_filename.0.i, %sw.bb87.i ], [ %output_filename.0.i, %sw.bb91.i ], [ %output_filename.0.i, %sw.bb92.i ], [ %output_filename.0.i, %sw.bb99.i ], [ %output_filename.0.i, %parse_enum_value.exit.i ], [ %output_filename.0.i, %cleanup140.critedge.i ], [ %output_filename.0.i, %for.body.i.i ], [ %output_filename.0.i, %for.body.i515.i ], !dbg !604
  call void @llvm.dbg.value(metadata ptr %output_filename.2.i, metadata !507, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %tcfile_name.2.i, metadata !509, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %profile.2.i, metadata !511, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_interlaced.3.i, metadata !516, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_fps.3.i, metadata !515, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_ref.3.i, metadata !514, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_turbo.3.i, metadata !513, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_options_index.i) #16, !dbg !815
  br label %for.cond18.i

for.end145.i:                                     ; preds = %for.cond18.i
  call void @llvm.dbg.value(metadata ptr %output_filename.2.i, metadata !507, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %tcfile_name.2.i, metadata !509, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %profile.2.i, metadata !511, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_interlaced.3.i, metadata !516, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_fps.3.i, metadata !515, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_user_ref.3.i, metadata !514, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata i32 %b_turbo.3.i, metadata !513, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %long_options_index.i) #16, !dbg !815
  %tobool146.not.i = icmp eq i32 %b_turbo.1.i, 0, !dbg !816
  br i1 %tobool146.not.i, label %if.end148.i, label %if.then147.i, !dbg !818

if.then147.i:                                     ; preds = %for.end145.i
  call void @x264_param_apply_fastfirstpass(ptr noundef nonnull %param) #16, !dbg !819
  br label %if.end148.i, !dbg !819

if.end148.i:                                      ; preds = %if.then147.i, %for.end145.i
  %call149.i = call i32 @x264_param_apply_profile(ptr noundef nonnull %param, ptr noundef %profile.0.i) #16, !dbg !820
  %cmp150.i = icmp slt i32 %call149.i, 0, !dbg !822
  br i1 %cmp150.i, label %Parse.exit.thread, label %if.end152.i, !dbg !823

if.end152.i:                                      ; preds = %if.end148.i
  %42 = load i32, ptr @optind, align 4, !dbg !824, !tbaa !573
  %cmp154.i = icmp slt i32 %42, %argc, !dbg !826
  %tobool155.i = icmp ne ptr %output_filename.0.i, null
  %or.cond.i = select i1 %cmp154.i, i1 %tobool155.i, i1 false, !dbg !827
  br i1 %or.cond.i, label %if.end161.i, label %if.then156.i, !dbg !827

if.then156.i:                                     ; preds = %if.end152.i
  %43 = load ptr, ptr @stderr, align 8, !dbg !828, !tbaa !580
  %cond159.i = select i1 %cmp154.i, ptr @.str.11, ptr @.str.10, !dbg !830
  %call160.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.9, ptr noundef nonnull %cond159.i) #19, !dbg !831
  br label %Parse.exit.thread, !dbg !832

if.end161.i:                                      ; preds = %if.end152.i
  call void @llvm.dbg.value(metadata ptr %muxer.3.i, metadata !508, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %muxer.3.i, metadata !833, metadata !DIExpression()) #16, !dbg !841
  call void @llvm.dbg.value(metadata ptr %output_filename.2.i, metadata !838, metadata !DIExpression()) #16, !dbg !841
  call void @llvm.dbg.value(metadata ptr %param, metadata !839, metadata !DIExpression()) #16, !dbg !841
  call void @llvm.dbg.value(metadata ptr %output_filename.2.i, metadata !844, metadata !DIExpression()) #16, !dbg !850
  %call.i.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %output_filename.0.i) #17, !dbg !852
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %output_filename.0.i, i64 %call.i.i.i, !dbg !853
  call void @llvm.dbg.value(metadata ptr %add.ptr.i.i.i, metadata !849, metadata !DIExpression()) #16, !dbg !850
  br label %while.cond.i.i.i, !dbg !854

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i, %if.end161.i
  %ext.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end161.i ], [ %incdec.ptr.i.i.i, %while.cond.i.i.i ], !dbg !850
  call void @llvm.dbg.value(metadata ptr %ext.0.i.i.i, metadata !849, metadata !DIExpression()) #16, !dbg !850
  %44 = load i8, ptr %ext.0.i.i.i, align 1, !dbg !855, !tbaa !856
  %cmp.not.i.i.i = icmp ne i8 %44, 46, !dbg !857
  %cmp2.i.i.i = icmp ugt ptr %ext.0.i.i.i, %output_filename.0.i
  %or.cond.i.i.i = and i1 %cmp2.i.i.i, %cmp.not.i.i.i, !dbg !858
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %ext.0.i.i.i, i64 -1, !dbg !859
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.i.i, metadata !849, metadata !DIExpression()) #16, !dbg !850
  br i1 %or.cond.i.i.i, label %while.cond.i.i.i, label %get_filename_extension.exit.i.i, !dbg !858, !llvm.loop !860

get_filename_extension.exit.i.i:                  ; preds = %while.cond.i.i.i
  call void @llvm.dbg.value(metadata !DIArgList(ptr %ext.0.i.i.i, i1 undef), metadata !849, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !850
  call void @llvm.dbg.value(metadata !DIArgList(ptr %ext.0.i.i.i, i1 undef), metadata !840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !841
  %call1.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %output_filename.0.i, ptr noundef nonnull dereferenceable(2) @.str.363) #17, !dbg !861
  %tobool.not.i527.i = icmp eq i32 %call1.i.i, 0, !dbg !861
  br i1 %tobool.not.i527.i, label %if.then.i529.i, label %lor.lhs.false.i.i, !dbg !863

lor.lhs.false.i.i:                                ; preds = %get_filename_extension.exit.i.i
  %cmp5.i.i.i = icmp eq i8 %44, 46, !dbg !864
  call void @llvm.dbg.value(metadata !DIArgList(ptr %ext.0.i.i.i, i1 %cmp5.i.i.i), metadata !849, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !850
  call void @llvm.dbg.value(metadata !DIArgList(ptr %ext.0.i.i.i, i1 %cmp5.i.i.i), metadata !840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !841
  %45 = zext i1 %cmp5.i.i.i to i64
  call void @llvm.dbg.value(metadata !DIArgList(ptr %ext.0.i.i.i, i64 %45), metadata !849, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !850
  call void @llvm.dbg.value(metadata !DIArgList(ptr %ext.0.i.i.i, i64 %45), metadata !840, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !841
  %add.ptr7.i.i.i = getelementptr inbounds i8, ptr %ext.0.i.i.i, i64 %45, !dbg !865
  call void @llvm.dbg.value(metadata ptr %add.ptr7.i.i.i, metadata !849, metadata !DIExpression()) #16, !dbg !850
  call void @llvm.dbg.value(metadata ptr %add.ptr7.i.i.i, metadata !840, metadata !DIExpression()) #16, !dbg !841
  %call2.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %muxer.0.i, ptr noundef nonnull dereferenceable(5) @.str.22) #17, !dbg !866
  %tobool3.not.i528.i = icmp eq i32 %call2.i.i, 0, !dbg !866
  br i1 %tobool3.not.i528.i, label %if.end.i.i, label %if.then.i529.i, !dbg !867

if.then.i529.i:                                   ; preds = %lor.lhs.false.i.i, %get_filename_extension.exit.i.i
  call void @llvm.dbg.value(metadata ptr %muxer.3.i, metadata !840, metadata !DIExpression()) #16, !dbg !841
  br label %if.end.i.i, !dbg !868

if.end.i.i:                                       ; preds = %if.then.i529.i, %lor.lhs.false.i.i
  %ext.0.i.i = phi ptr [ %muxer.0.i, %if.then.i529.i ], [ %add.ptr7.i.i.i, %lor.lhs.false.i.i ], !dbg !841
  call void @llvm.dbg.value(metadata ptr %ext.0.i.i, metadata !840, metadata !DIExpression()) #16, !dbg !841
  %call4.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ext.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.364) #17, !dbg !869
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0, !dbg !869
  br i1 %tobool5.not.i.i, label %select_output.exit.i, label %if.else.i.i, !dbg !871

if.else.i.i:                                      ; preds = %if.end.i.i
  %call8.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ext.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.26) #17, !dbg !872
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0, !dbg !872
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.else11.i.i, !dbg !874

if.then10.i.i:                                    ; preds = %if.else.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @mkv_output, i64 40, i1 false) #16, !dbg !875, !tbaa.struct !877
  %b_annexb.i.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 45, !dbg !878
  store i32 0, ptr %b_annexb.i.i, align 8, !dbg !879, !tbaa !880
  %b_dts_compress.i.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 52, !dbg !881
  store i32 0, ptr %b_dts_compress.i.i, align 4, !dbg !882, !tbaa !883
  %b_repeat_headers.i.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 44, !dbg !884
  store i32 0, ptr %b_repeat_headers.i.i, align 4, !dbg !885, !tbaa !886
  br label %if.end165.i, !dbg !887

if.else11.i.i:                                    ; preds = %if.else.i.i
  %call12.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %ext.0.i.i, ptr noundef nonnull dereferenceable(4) @.str.27) #17, !dbg !888
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0, !dbg !888
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %if.else18.i.i, !dbg !890

if.then14.i.i:                                    ; preds = %if.else11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @flv_output, i64 40, i1 false) #16, !dbg !891, !tbaa.struct !877
  %b_annexb15.i.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 45, !dbg !893
  store i32 0, ptr %b_annexb15.i.i, align 8, !dbg !894, !tbaa !880
  %b_dts_compress16.i.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 52, !dbg !895
  store i32 1, ptr %b_dts_compress16.i.i, align 4, !dbg !896, !tbaa !883
  %b_repeat_headers17.i.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 44, !dbg !897
  store i32 0, ptr %b_repeat_headers17.i.i, align 4, !dbg !898, !tbaa !886
  br label %if.end165.i, !dbg !899

if.else18.i.i:                                    ; preds = %if.else11.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @output, ptr noundef nonnull align 8 dereferenceable(40) @raw_output, i64 40, i1 false) #16, !dbg !900, !tbaa.struct !877
  br label %if.end165.i

select_output.exit.i:                             ; preds = %if.end.i.i
  %46 = load ptr, ptr @stderr, align 8, !dbg !901, !tbaa !580
  %47 = call i64 @fwrite(ptr nonnull @.str.365, i64 51, i64 1, ptr %46) #19, !dbg !903
  br label %Parse.exit.thread, !dbg !904

if.end165.i:                                      ; preds = %if.else18.i.i, %if.then14.i.i, %if.then10.i.i
  %48 = load ptr, ptr @output, align 8, !dbg !905, !tbaa !907
  %hout.i = getelementptr inbounds %struct.cli_opt_t, ptr %opt, i64 0, i32 3, !dbg !909
  %call166.i = call i32 %48(ptr noundef nonnull %output_filename.0.i, ptr noundef nonnull %hout.i) #16, !dbg !910
  %tobool167.not.i = icmp eq i32 %call166.i, 0, !dbg !910
  br i1 %tobool167.not.i, label %if.end170.i, label %if.then168.i, !dbg !911

if.then168.i:                                     ; preds = %if.end165.i
  %49 = load ptr, ptr @stderr, align 8, !dbg !912, !tbaa !580
  %call169.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.12, ptr noundef nonnull %output_filename.0.i) #19, !dbg !914
  br label %Parse.exit.thread, !dbg !915

if.end170.i:                                      ; preds = %if.end165.i
  %50 = load i32, ptr @optind, align 4, !dbg !916, !tbaa !573
  %inc171.i = add nsw i32 %50, 1, !dbg !916
  store i32 %inc171.i, ptr @optind, align 4, !dbg !916, !tbaa !573
  %idxprom172.i = sext i32 %50 to i64, !dbg !917
  %arrayidx173.i = getelementptr inbounds ptr, ptr %argv, i64 %idxprom172.i, !dbg !917
  %51 = load ptr, ptr %arrayidx173.i, align 8, !dbg !917, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %51, metadata !505, metadata !DIExpression()) #16, !dbg !495
  %cmp174.i = icmp slt i32 %inc171.i, %argc, !dbg !918
  br i1 %cmp174.i, label %cond.true175.i, label %cond.end180.i, !dbg !919

cond.true175.i:                                   ; preds = %if.end170.i
  %inc176.i = add nsw i32 %50, 2, !dbg !920
  store i32 %inc176.i, ptr @optind, align 4, !dbg !920, !tbaa !573
  %idxprom177.i = sext i32 %inc171.i to i64, !dbg !921
  %arrayidx178.i = getelementptr inbounds ptr, ptr %argv, i64 %idxprom177.i, !dbg !921
  %52 = load ptr, ptr %arrayidx178.i, align 8, !dbg !921, !tbaa !580
  br label %cond.end180.i, !dbg !919

cond.end180.i:                                    ; preds = %cond.true175.i, %if.end170.i
  %cond181.i = phi ptr [ %52, %cond.true175.i ], [ null, %if.end170.i ], !dbg !919
  %resolution.i = getelementptr inbounds %struct.cli_input_opt_t, ptr %input_opt.i, i64 0, i32 1, !dbg !922
  store ptr %cond181.i, ptr %resolution.i, align 8, !dbg !923, !tbaa !924
  call void @llvm.dbg.declare(metadata ptr %info.i, metadata !539, metadata !DIExpression()) #16, !dbg !925
  %53 = getelementptr inbounds i8, ptr %info.i, i64 12, !dbg !925
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %53, i8 0, i64 36, i1 false) #16, !dbg !925
  call void @llvm.dbg.declare(metadata ptr %demuxername.i, metadata !540, metadata !DIExpression()) #16, !dbg !926
  %i_csp.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 7, !dbg !927
  %54 = load i32, ptr %i_csp.i, align 4, !dbg !927, !tbaa !928
  store i32 %54, ptr %info.i, align 4, !dbg !929, !tbaa !930
  %i_fps_num.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 48, !dbg !932
  %55 = load i32, ptr %i_fps_num.i, align 4, !dbg !932, !tbaa !933
  %fps_num.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 1, !dbg !934
  store i32 %55, ptr %fps_num.i, align 4, !dbg !935, !tbaa !936
  %i_fps_den.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 49, !dbg !937
  %56 = load i32, ptr %i_fps_den.i, align 8, !dbg !937, !tbaa !938
  %fps_den.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 2, !dbg !939
  store i32 %56, ptr %fps_den.i, align 4, !dbg !940, !tbaa !941
  %b_interlaced.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 26, !dbg !942
  %57 = load i32, ptr %b_interlaced.i, align 8, !dbg !942, !tbaa !943
  %interlaced.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 4, !dbg !944
  store i32 %57, ptr %interlaced.i, align 4, !dbg !945, !tbaa !946
  %vui.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 11, !dbg !947
  %i_sar_width.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 11, i32 1, !dbg !948
  %58 = load i32, ptr %i_sar_width.i, align 8, !dbg !948, !tbaa !949
  %sar_width.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 5, !dbg !950
  store i32 %58, ptr %sar_width.i, align 4, !dbg !951, !tbaa !952
  %59 = load i32, ptr %vui.i, align 4, !dbg !953, !tbaa !954
  %sar_height.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 6, !dbg !955
  store i32 %59, ptr %sar_height.i, align 4, !dbg !956, !tbaa !957
  %b_tff.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 53, !dbg !958
  %60 = load i32, ptr %b_tff.i, align 8, !dbg !958, !tbaa !959
  %tff.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 7, !dbg !960
  store i32 %60, ptr %tff.i, align 4, !dbg !961, !tbaa !962
  %61 = load i32, ptr %b_vfr_input.i, align 8, !dbg !963, !tbaa !728
  %vfr.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 10, !dbg !964
  store i32 %61, ptr %vfr.i, align 4, !dbg !965, !tbaa !966
  call void @llvm.dbg.value(metadata ptr %demuxer.3.i, metadata !506, metadata !DIExpression()) #16, !dbg !495
  call void @llvm.dbg.value(metadata ptr %demuxer.3.i, metadata !967, metadata !DIExpression()) #16, !dbg !984
  call void @llvm.dbg.value(metadata ptr %demuxername.i, metadata !972, metadata !DIExpression()) #16, !dbg !984
  call void @llvm.dbg.value(metadata ptr %51, metadata !973, metadata !DIExpression()) #16, !dbg !984
  call void @llvm.dbg.value(metadata ptr %info.i, metadata !975, metadata !DIExpression()) #16, !dbg !984
  call void @llvm.dbg.value(metadata ptr %input_opt.i, metadata !976, metadata !DIExpression()) #16, !dbg !984
  call void @llvm.dbg.value(metadata ptr %51, metadata !844, metadata !DIExpression()) #16, !dbg !987
  %call.i.i530.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #17, !dbg !989
  %add.ptr.i.i531.i = getelementptr inbounds i8, ptr %51, i64 %call.i.i530.i, !dbg !990
  call void @llvm.dbg.value(metadata ptr %add.ptr.i.i531.i, metadata !849, metadata !DIExpression()) #16, !dbg !987
  br label %while.cond.i.i537.i, !dbg !991

while.cond.i.i537.i:                              ; preds = %while.cond.i.i537.i, %cond.end180.i
  %ext.0.i.i532.i = phi ptr [ %add.ptr.i.i531.i, %cond.end180.i ], [ %incdec.ptr.i.i536.i, %while.cond.i.i537.i ], !dbg !987
  call void @llvm.dbg.value(metadata ptr %ext.0.i.i532.i, metadata !849, metadata !DIExpression()) #16, !dbg !987
  %62 = load i8, ptr %ext.0.i.i532.i, align 1, !dbg !992, !tbaa !856
  %cmp.not.i.i533.i = icmp ne i8 %62, 46, !dbg !993
  %cmp2.i.i534.i = icmp ugt ptr %ext.0.i.i532.i, %51
  %or.cond.i.i535.i = and i1 %cmp2.i.i534.i, %cmp.not.i.i533.i, !dbg !994
  %incdec.ptr.i.i536.i = getelementptr inbounds i8, ptr %ext.0.i.i532.i, i64 -1, !dbg !995
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.i536.i, metadata !849, metadata !DIExpression()) #16, !dbg !987
  br i1 %or.cond.i.i535.i, label %while.cond.i.i537.i, label %get_filename_extension.exit.i544.i, !dbg !994, !llvm.loop !996

get_filename_extension.exit.i544.i:               ; preds = %while.cond.i.i537.i
  %hin.i = getelementptr inbounds %struct.cli_opt_t, ptr %opt, i64 0, i32 2, !dbg !997
  %cmp5.i.i538.i = icmp eq i8 %62, 46, !dbg !998
  %63 = zext i1 %cmp5.i.i538.i to i64
  %add.ptr7.i.i539.i = getelementptr inbounds i8, ptr %ext.0.i.i532.i, i64 %63, !dbg !999
  call void @llvm.dbg.value(metadata ptr %add.ptr7.i.i539.i, metadata !849, metadata !DIExpression()) #16, !dbg !987
  call void @llvm.dbg.value(metadata ptr %add.ptr7.i.i539.i, metadata !977, metadata !DIExpression()) #16, !dbg !984
  %call1.i540.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(2) @.str.363) #17, !dbg !1000
  call void @llvm.dbg.value(metadata i32 %call1.i540.i, metadata !978, metadata !DIExpression()) #16, !dbg !984
  %call2.i541.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %demuxer.0.i, ptr noundef nonnull dereferenceable(5) @.str.22) #17, !dbg !1001
  %tobool.not.i542.i = icmp eq i32 %call2.i541.i, 0, !dbg !1002
  call void @llvm.dbg.value(metadata i1 %tobool.not.i542.i, metadata !979, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !984
  %tobool3.i.i = icmp eq i32 %call1.i540.i, 0, !dbg !1003
  %or.cond.i.i = select i1 %tobool3.i.i, i1 %tobool.not.i542.i, i1 false, !dbg !1005
  %spec.select.i543.i = select i1 %or.cond.i.i, ptr @.str.23, ptr %add.ptr7.i.i539.i, !dbg !1005
  call void @llvm.dbg.value(metadata ptr %spec.select.i543.i, metadata !977, metadata !DIExpression()) #16, !dbg !984
  br i1 %tobool3.i.i, label %if.end13.i.i, label %if.then6.i545.i, !dbg !1006

if.then6.i545.i:                                  ; preds = %get_filename_extension.exit.i544.i
  %call7.i.i = call ptr @fopen(ptr noundef %51, ptr noundef nonnull @.str.366) #16, !dbg !1007
  call void @llvm.dbg.value(metadata ptr %call7.i.i, metadata !980, metadata !DIExpression()) #16, !dbg !1008
  %tobool8.not.i.i = icmp eq ptr %call7.i.i, null, !dbg !1009
  br i1 %tobool8.not.i.i, label %if.end13.i.i, label %if.then9.i.i, !dbg !1011

if.then9.i.i:                                     ; preds = %if.then6.i545.i
  call void @llvm.dbg.value(metadata i8 1, metadata !978, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #16, !dbg !984
  %call11.i.i = call i32 @fclose(ptr noundef nonnull %call7.i.i) #16, !dbg !1012
  br label %if.end13.i.i, !dbg !1014

if.end13.i.i:                                     ; preds = %if.then9.i.i, %if.then6.i545.i, %get_filename_extension.exit.i544.i
  %spec.select.demuxer.i.i = select i1 %tobool.not.i542.i, ptr %spec.select.i543.i, ptr %demuxer.0.i, !dbg !1015
  call void @llvm.dbg.value(metadata ptr %spec.select.demuxer.i.i, metadata !983, metadata !DIExpression()) #16, !dbg !984
  %call15.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.demuxer.i.i, ptr noundef nonnull dereferenceable(4) @.str.367) #17, !dbg !1016
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0, !dbg !1016
  br i1 %tobool16.not.i.i, label %if.then22.i.i, label %lor.lhs.false.i546.i, !dbg !1018

lor.lhs.false.i546.i:                             ; preds = %if.end13.i.i
  %call17.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i543.i, ptr noundef nonnull dereferenceable(4) @.str.368) #17, !dbg !1019
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0, !dbg !1019
  br i1 %tobool18.not.i.i, label %if.then22.i.i, label %lor.lhs.false19.i.i, !dbg !1020

lor.lhs.false19.i.i:                              ; preds = %lor.lhs.false.i546.i
  %call20.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.i543.i, ptr noundef nonnull dereferenceable(4) @.str.369) #17, !dbg !1021
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0, !dbg !1021
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %if.else.i547.i, !dbg !1022

if.then22.i.i:                                    ; preds = %lor.lhs.false19.i.i, %lor.lhs.false.i546.i, %if.end13.i.i
  %64 = load ptr, ptr @stderr, align 8, !dbg !1023, !tbaa !580
  %65 = call i64 @fwrite(ptr nonnull @.str.370, i64 50, i64 1, ptr %64) #19, !dbg !1025
  br label %Parse.exit.thread, !dbg !1026

if.else.i547.i:                                   ; preds = %lor.lhs.false19.i.i
  %call24.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.demuxer.i.i, ptr noundef nonnull dereferenceable(4) @.str.24) #17, !dbg !1027
  %tobool25.not.i.i = icmp eq i32 %call24.i.i, 0, !dbg !1027
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %if.else27.i.i, !dbg !1029

if.then26.i.i:                                    ; preds = %if.else.i547.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @y4m_input, i64 56, i1 false) #16, !dbg !1030, !tbaa.struct !1031
  br label %if.end187.i, !dbg !1032

if.else27.i.i:                                    ; preds = %if.else.i547.i
  %call28.i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.demuxer.i.i, ptr noundef nonnull dereferenceable(4) @.str.23) #17, !dbg !1033
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0, !dbg !1033
  br i1 %tobool29.not.i.i, label %if.then30.i.i, label %if.else31.i.i, !dbg !1035

if.then30.i.i:                                    ; preds = %if.else27.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false) #16, !dbg !1036, !tbaa.struct !1031
  br label %if.end187.i, !dbg !1037

if.else31.i.i:                                    ; preds = %if.else27.i.i
  br i1 %tobool.not.i542.i, label %land.lhs.true33.i.i, label %if.end37.i.i, !dbg !1038

land.lhs.true33.i.i:                              ; preds = %if.else31.i.i
  %66 = load ptr, ptr @yuv_input, align 8, !dbg !1041, !tbaa !1042
  %call34.i.i = call i32 %66(ptr noundef %51, ptr noundef nonnull %hin.i, ptr noundef nonnull %info.i, ptr noundef nonnull %input_opt.i) #16, !dbg !1044
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0, !dbg !1044
  br i1 %tobool35.not.i.i, label %if.then36.i.i, label %if.end37.i.i, !dbg !1045

if.then36.i.i:                                    ; preds = %land.lhs.true33.i.i
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !983, metadata !DIExpression()) #16, !dbg !984
  call void @llvm.dbg.value(metadata i32 0, metadata !979, metadata !DIExpression()) #16, !dbg !984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @yuv_input, i64 56, i1 false) #16, !dbg !1046, !tbaa.struct !1031
  br label %if.end37.i.i, !dbg !1048

if.end37.i.i:                                     ; preds = %if.then36.i.i, %land.lhs.true33.i.i, %if.else31.i.i
  %module.0.i.i = phi ptr [ %spec.select.i543.i, %land.lhs.true33.i.i ], [ @.str.23, %if.then36.i.i ], [ %demuxer.0.i, %if.else31.i.i ], !dbg !984
  call void @llvm.dbg.value(metadata ptr %module.0.i.i, metadata !983, metadata !DIExpression()) #16, !dbg !984
  %67 = load ptr, ptr %hin.i, align 8, !dbg !1049, !tbaa !580
  %tobool38.not.i.i = icmp eq ptr %67, null, !dbg !1051
  br i1 %tobool38.not.i.i, label %if.then39.i.i, label %if.end187.thread.i, !dbg !1052

if.end187.thread.i:                               ; preds = %if.end37.i.i
  call void @llvm.dbg.value(metadata ptr %spec.select.demuxer.i.i, metadata !983, metadata !DIExpression()) #16, !dbg !984
  %call45.i617.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %demuxername.i, ptr noundef nonnull dereferenceable(1) %module.0.i.i) #16, !dbg !1053
  br label %if.end196.i, !dbg !1054

if.then39.i.i:                                    ; preds = %if.end37.i.i
  %68 = load ptr, ptr @stderr, align 8, !dbg !1056, !tbaa !580
  %call40.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.371, ptr noundef %51) #19, !dbg !1058
  br label %Parse.exit.thread, !dbg !1059

if.end187.i:                                      ; preds = %if.then30.i.i, %if.then26.i.i
  %.pr615.i = load ptr, ptr %hin.i, align 8, !dbg !1060, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %spec.select.demuxer.i.i, metadata !983, metadata !DIExpression()) #16, !dbg !984
  %call45.i.i = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %demuxername.i, ptr noundef nonnull dereferenceable(1) %spec.select.demuxer.i.i) #16, !dbg !1053
  %tobool189.not.i = icmp eq ptr %.pr615.i, null, !dbg !1062
  br i1 %tobool189.not.i, label %land.lhs.true190.i, label %if.end196.i, !dbg !1054

land.lhs.true190.i:                               ; preds = %if.end187.i
  %69 = load ptr, ptr @input, align 8, !dbg !1063, !tbaa !1042
  %call192.i = call i32 %69(ptr noundef %51, ptr noundef nonnull %hin.i, ptr noundef nonnull %info.i, ptr noundef nonnull %input_opt.i) #16, !dbg !1064
  %tobool193.not.i = icmp eq i32 %call192.i, 0, !dbg !1064
  br i1 %tobool193.not.i, label %if.end196.i, label %if.then194.i, !dbg !1065

if.then194.i:                                     ; preds = %land.lhs.true190.i
  %70 = load ptr, ptr @stderr, align 8, !dbg !1066, !tbaa !580
  %call195.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.13, ptr noundef %51) #19, !dbg !1068
  br label %Parse.exit.thread, !dbg !1069

if.end196.i:                                      ; preds = %land.lhs.true190.i, %if.end187.i, %if.end187.thread.i
  call void @x264_reduce_fraction(ptr noundef nonnull %sar_width.i, ptr noundef nonnull %sar_height.i) #16, !dbg !1070
  call void @x264_reduce_fraction(ptr noundef nonnull %fps_num.i, ptr noundef nonnull %fps_den.i) #16, !dbg !1071
  %71 = load i32, ptr %i_log_level80.i, align 8, !dbg !1072, !tbaa !714
  %cmp202.i = icmp sgt i32 %71, 1, !dbg !1074
  br i1 %cmp202.i, label %if.then203.i, label %if.end216.i, !dbg !1075

if.then203.i:                                     ; preds = %if.end196.i
  %72 = load ptr, ptr @stderr, align 8, !dbg !1076, !tbaa !580
  %width.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 11, !dbg !1077
  %73 = load i32, ptr %width.i, align 4, !dbg !1077, !tbaa !1078
  %height.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 3, !dbg !1079
  %74 = load i32, ptr %height.i, align 4, !dbg !1079, !tbaa !1080
  %75 = load i32, ptr %interlaced.i, align 4, !dbg !1081, !tbaa !946
  %tobool206.not.i = icmp eq i32 %75, 0, !dbg !1082
  %cond207.i = select i1 %tobool206.not.i, i32 112, i32 105, !dbg !1082
  %76 = load i32, ptr %sar_width.i, align 4, !dbg !1083, !tbaa !952
  %77 = load i32, ptr %sar_height.i, align 4, !dbg !1084, !tbaa !957
  %78 = load i32, ptr %fps_num.i, align 4, !dbg !1085, !tbaa !936
  %79 = load i32, ptr %fps_den.i, align 4, !dbg !1086, !tbaa !941
  %80 = load i32, ptr %vfr.i, align 4, !dbg !1087, !tbaa !966
  %tobool213.not.i = icmp eq i32 %80, 0, !dbg !1088
  %cond214.i = select i1 %tobool213.not.i, i32 99, i32 118, !dbg !1088
  %call215.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.14, ptr noundef nonnull %demuxername.i, i32 noundef %73, i32 noundef %74, i32 noundef %cond207.i, i32 noundef %76, i32 noundef %77, i32 noundef %78, i32 noundef %79, i32 noundef %cond214.i) #19, !dbg !1089
  br label %if.end216.i, !dbg !1089

if.end216.i:                                      ; preds = %if.then203.i, %if.end196.i
  %tobool217.not.i = icmp eq ptr %tcfile_name.0.i, null, !dbg !1090
  br i1 %tobool217.not.i, label %if.else230.i, label %if.then218.i, !dbg !1092

if.then218.i:                                     ; preds = %if.end216.i
  %tobool219.not.i = icmp eq i32 %b_user_fps.0.i, 0, !dbg !1093
  br i1 %tobool219.not.i, label %if.end222.i, label %if.then220.i, !dbg !1096

if.then220.i:                                     ; preds = %if.then218.i
  %81 = load ptr, ptr @stderr, align 8, !dbg !1097, !tbaa !580
  %82 = call i64 @fwrite(ptr nonnull @.str.15, i64 51, i64 1, ptr %81) #19, !dbg !1099
  br label %Parse.exit.thread, !dbg !1100

if.end222.i:                                      ; preds = %if.then218.i
  %83 = load ptr, ptr @timecode_input, align 8, !dbg !1101, !tbaa !1042
  %call224.i = call i32 %83(ptr noundef nonnull %tcfile_name.0.i, ptr noundef nonnull %hin.i, ptr noundef nonnull %info.i, ptr noundef nonnull %input_opt.i) #16, !dbg !1103
  %tobool225.not.i = icmp eq i32 %call224.i, 0, !dbg !1103
  br i1 %tobool225.not.i, label %if.else228.i, label %if.then226.i, !dbg !1104

if.then226.i:                                     ; preds = %if.end222.i
  %84 = load ptr, ptr @stderr, align 8, !dbg !1105, !tbaa !580
  %85 = call i64 @fwrite(ptr nonnull @.str.16, i64 36, i64 1, ptr %84) #19, !dbg !1107
  br label %Parse.exit.thread, !dbg !1108

if.else228.i:                                     ; preds = %if.end222.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @input, ptr noundef nonnull align 8 dereferenceable(56) @timecode_input, i64 56, i1 false) #16, !dbg !1109, !tbaa.struct !1031
  %.pre.i = load i32, ptr %vfr.i, align 4, !dbg !1110, !tbaa !966
  br label %if.end239.i, !dbg !1111

if.else230.i:                                     ; preds = %if.end216.i
  %86 = load i32, ptr %vfr.i, align 4, !dbg !1112, !tbaa !966
  %tobool232.i = icmp eq i32 %86, 0, !dbg !1114
  %87 = load ptr, ptr %timebase.i, align 8
  %tobool235.i = icmp ne ptr %87, null
  %or.cond393.i = select i1 %tobool232.i, i1 %tobool235.i, i1 false, !dbg !1115
  br i1 %or.cond393.i, label %if.then236.i, label %if.end239.i, !dbg !1115

if.then236.i:                                     ; preds = %if.else230.i
  %88 = load ptr, ptr @stderr, align 8, !dbg !1116, !tbaa !580
  %89 = call i64 @fwrite(ptr nonnull @.str.17, i64 56, i64 1, ptr %88) #19, !dbg !1118
  br label %Parse.exit.thread, !dbg !1119

if.end239.i:                                      ; preds = %if.else230.i, %if.else228.i
  %90 = phi i32 [ %86, %if.else230.i ], [ %.pre.i, %if.else228.i ], !dbg !1110
  %b_user_fps.3590.i = phi i32 [ %b_user_fps.0.i, %if.else230.i ], [ 0, %if.else228.i ]
  %91 = load i32, ptr %info.i, align 4, !dbg !1120, !tbaa !930
  store i32 %91, ptr %i_csp.i, align 4, !dbg !1121, !tbaa !928
  %height242.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 3, !dbg !1122
  %92 = load i32, ptr %height242.i, align 4, !dbg !1122, !tbaa !1080
  %i_height.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 6, !dbg !1123
  store i32 %92, ptr %i_height.i, align 8, !dbg !1124, !tbaa !1125
  store i32 %90, ptr %b_vfr_input.i, align 8, !dbg !1126, !tbaa !728
  %width245.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 11, !dbg !1127
  %93 = load i32, ptr %width245.i, align 4, !dbg !1127, !tbaa !1078
  %i_width.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 5, !dbg !1128
  store i32 %93, ptr %i_width.i, align 4, !dbg !1129, !tbaa !1130
  %tobool246.i = icmp eq i32 %b_user_interlaced.0.i, 0, !dbg !1131
  %94 = load i32, ptr %interlaced.i, align 4
  %tobool249.i = icmp ne i32 %94, 0
  %or.cond394.i = select i1 %tobool246.i, i1 %tobool249.i, i1 false, !dbg !1133
  br i1 %or.cond394.i, label %if.then250.i, label %if.end263.i, !dbg !1133

if.then250.i:                                     ; preds = %if.end239.i
  %95 = load ptr, ptr @stderr, align 8, !dbg !1134, !tbaa !580
  %96 = load i32, ptr %tff.i, align 4, !dbg !1136, !tbaa !962
  %tobool252.not.i = icmp eq i32 %96, 0, !dbg !1137
  %cond253.i = select i1 %tobool252.not.i, i32 98, i32 116, !dbg !1137
  %cond256.i = select i1 %tobool252.not.i, i32 116, i32 98, !dbg !1138
  %call257.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.18, i32 noundef %cond253.i, i32 noundef %cond256.i) #19, !dbg !1139
  store i32 1, ptr %b_interlaced.i, align 8, !dbg !1140, !tbaa !943
  %97 = load i32, ptr %tff.i, align 4, !dbg !1141, !tbaa !962
  %tobool260.i = icmp ne i32 %97, 0, !dbg !1142
  %lnot.ext.i = zext i1 %tobool260.i to i32, !dbg !1143
  store i32 %lnot.ext.i, ptr %b_tff.i, align 8, !dbg !1144, !tbaa !959
  br label %if.end263.i, !dbg !1145

if.end263.i:                                      ; preds = %if.then250.i, %if.end239.i
  %tobool264.not.i = icmp eq i32 %b_user_fps.3590.i, 0, !dbg !1146
  br i1 %tobool264.not.i, label %if.then265.i, label %if.end270.i, !dbg !1148

if.then265.i:                                     ; preds = %if.end263.i
  %98 = load i32, ptr %fps_num.i, align 4, !dbg !1149, !tbaa !936
  store i32 %98, ptr %i_fps_num.i, align 4, !dbg !1151, !tbaa !933
  %99 = load i32, ptr %fps_den.i, align 4, !dbg !1152, !tbaa !941
  store i32 %99, ptr %i_fps_den.i, align 8, !dbg !1153, !tbaa !938
  br label %if.end270.i, !dbg !1154

if.end270.i:                                      ; preds = %if.then265.i, %if.end263.i
  %100 = load i32, ptr %b_vfr_input.i, align 8, !dbg !1155, !tbaa !728
  %tobool272.not.i = icmp eq i32 %100, 0, !dbg !1157
  br i1 %tobool272.not.i, label %if.else274.i, label %if.then273.i, !dbg !1158

if.then273.i:                                     ; preds = %if.end270.i
  %timebase_num.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 8, !dbg !1159
  %101 = load i32, ptr %timebase_num.i, align 4, !dbg !1159, !tbaa !1161
  %timebase_den.i = getelementptr inbounds %struct.video_info_t, ptr %info.i, i64 0, i32 9, !dbg !1162
  br label %if.end279.i, !dbg !1163

if.else274.i:                                     ; preds = %if.end270.i
  %102 = load i32, ptr %i_fps_den.i, align 8, !dbg !1164, !tbaa !938
  br label %if.end279.i

if.end279.i:                                      ; preds = %if.else274.i, %if.then273.i
  %i_fps_num.sink.i = phi ptr [ %i_fps_num.i, %if.else274.i ], [ %timebase_den.i, %if.then273.i ]
  %.sink852.i = phi i32 [ %102, %if.else274.i ], [ %101, %if.then273.i ], !dbg !1166
  %103 = load i32, ptr %i_fps_num.sink.i, align 4, !dbg !1166, !tbaa !573
  %104 = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 50, !dbg !1167
  store i32 %.sink852.i, ptr %104, align 4, !dbg !1168
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 51, !dbg !1169
  store i32 %103, ptr %105, align 8, !dbg !1170
  %106 = load ptr, ptr %timebase.i, align 8
  %tobool283.i = icmp ne ptr %106, null
  %or.cond395.i = select i1 %tobool217.not.i, i1 %tobool283.i, i1 false, !dbg !1171
  br i1 %or.cond395.i, label %if.then284.i, label %if.end324.i, !dbg !1171

if.then284.i:                                     ; preds = %if.end279.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_user_timebase_num.i) #16, !dbg !1172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i_user_timebase_den.i) #16, !dbg !1173
  call void @llvm.dbg.value(metadata ptr %i_user_timebase_num.i, metadata !542, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1174
  call void @llvm.dbg.value(metadata ptr %i_user_timebase_den.i, metadata !547, metadata !DIExpression(DW_OP_deref)) #16, !dbg !1174
  %call286.i = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %106, ptr noundef nonnull @.str.19, ptr noundef nonnull %i_user_timebase_num.i, ptr noundef nonnull %i_user_timebase_den.i) #16, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %call286.i, metadata !548, metadata !DIExpression()) #16, !dbg !1174
  switch i32 %call286.i, label %if.then284.if.end298_crit_edge.i [
    i32 0, label %if.then288.i
    i32 1, label %if.then293.i
  ], !dbg !1176

if.then284.if.end298_crit_edge.i:                 ; preds = %if.then284.i
  %.pre853.i = load i64, ptr %i_user_timebase_den.i, align 8
  br label %if.end298.i, !dbg !1176

if.then288.i:                                     ; preds = %if.then284.i
  %107 = load ptr, ptr @stderr, align 8, !dbg !1177, !tbaa !580
  %108 = load ptr, ptr %timebase.i, align 8, !dbg !1180, !tbaa !747
  %call290.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.20, ptr noundef %108) #19, !dbg !1181
  br label %cleanup319.i, !dbg !1182

if.then293.i:                                     ; preds = %if.then284.i
  %109 = load i32, ptr %104, align 4, !dbg !1183, !tbaa !1186
  %conv.i = zext i32 %109 to i64, !dbg !1187
  call void @llvm.dbg.value(metadata i64 %conv.i, metadata !542, metadata !DIExpression()) #16, !dbg !1174
  store i64 %conv.i, ptr %i_user_timebase_num.i, align 8, !dbg !1188, !tbaa !1189
  %110 = load ptr, ptr %timebase.i, align 8, !dbg !1191, !tbaa !747
  %call296.i = call i64 @strtoul(ptr nocapture noundef %110, ptr noundef null, i32 noundef 10) #16, !dbg !1192
  call void @llvm.dbg.value(metadata i64 %call296.i, metadata !547, metadata !DIExpression()) #16, !dbg !1174
  store i64 %call296.i, ptr %i_user_timebase_den.i, align 8, !dbg !1193, !tbaa !1189
  br label %if.end298.i, !dbg !1194

if.end298.i:                                      ; preds = %if.then293.i, %if.then284.if.end298_crit_edge.i
  %111 = phi i64 [ %.pre853.i, %if.then284.if.end298_crit_edge.i ], [ %call296.i, %if.then293.i ]
  %112 = load i64, ptr %i_user_timebase_num.i, align 8, !dbg !1195, !tbaa !1189
  call void @llvm.dbg.value(metadata i64 %112, metadata !542, metadata !DIExpression()) #16, !dbg !1174
  %cmp299.i = icmp ugt i64 %112, 4294967295, !dbg !1197
  call void @llvm.dbg.value(metadata i64 %111, metadata !547, metadata !DIExpression()) #16, !dbg !1174
  %cmp302.i = icmp ugt i64 %111, 4294967295
  %or.cond396.i = select i1 %cmp299.i, i1 true, i1 %cmp302.i, !dbg !1198
  br i1 %or.cond396.i, label %if.then304.i, label %if.end306.i, !dbg !1198

if.then304.i:                                     ; preds = %if.end298.i
  %113 = load ptr, ptr @stderr, align 8, !dbg !1199, !tbaa !580
  %114 = call i64 @fwrite(ptr nonnull @.str.21, i64 59, i64 1, ptr %113) #19, !dbg !1201
  br label %cleanup319.i, !dbg !1202

if.end306.i:                                      ; preds = %if.end298.i
  %conv307.i = uitofp i64 %111 to double, !dbg !1203
  %115 = load i32, ptr %105, align 8, !dbg !1204, !tbaa !1205
  %conv309.i = uitofp i32 %115 to double, !dbg !1206
  %div.i = fdiv double %conv307.i, %conv309.i, !dbg !1207
  %116 = load i32, ptr %104, align 4, !dbg !1208, !tbaa !1186
  %conv311.i = uitofp i32 %116 to double, !dbg !1209
  %conv312.i = uitofp i64 %112 to double, !dbg !1210
  %div313.i = fdiv double %conv311.i, %conv312.i, !dbg !1211
  %mul.i = fmul double %div.i, %div313.i, !dbg !1212
  %timebase_convert_multiplier.i = getelementptr inbounds %struct.cli_opt_t, ptr %opt, i64 0, i32 6, !dbg !1213
  store double %mul.i, ptr %timebase_convert_multiplier.i, align 8, !dbg !1214, !tbaa !1215
  call void @llvm.dbg.value(metadata i64 %112, metadata !542, metadata !DIExpression()) #16, !dbg !1174
  %conv314.i = trunc i64 %112 to i32, !dbg !1216
  store i32 %conv314.i, ptr %104, align 4, !dbg !1217, !tbaa !1186
  call void @llvm.dbg.value(metadata i64 %111, metadata !547, metadata !DIExpression()) #16, !dbg !1174
  %conv316.i = trunc i64 %111 to i32, !dbg !1218
  store i32 %conv316.i, ptr %105, align 8, !dbg !1219, !tbaa !1205
  store i32 1, ptr %b_vfr_input.i, align 8, !dbg !1220, !tbaa !728
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_den.i) #16, !dbg !1221
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_num.i) #16, !dbg !1221
  br label %if.end324.i

cleanup319.i:                                     ; preds = %if.then304.i, %if.then288.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_den.i) #16, !dbg !1221
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i_user_timebase_num.i) #16, !dbg !1221
  br label %Parse.exit.thread

if.end324.i:                                      ; preds = %if.end306.i, %if.end279.i
  %117 = load i32, ptr %i_sar_width.i, align 8, !dbg !1222, !tbaa !949
  %tobool327.not.i = icmp eq i32 %117, 0, !dbg !1224
  %118 = load i32, ptr %vui.i, align 4
  %tobool331.not.i = icmp eq i32 %118, 0
  %or.cond = select i1 %tobool327.not.i, i1 true, i1 %tobool331.not.i, !dbg !1225
  br i1 %or.cond, label %if.then332.i, label %if.end339.i, !dbg !1225

if.then332.i:                                     ; preds = %if.end324.i
  %119 = load i32, ptr %sar_width.i, align 4, !dbg !1226, !tbaa !952
  store i32 %119, ptr %i_sar_width.i, align 8, !dbg !1228, !tbaa !949
  %120 = load i32, ptr %sar_height.i, align 4, !dbg !1229, !tbaa !957
  store i32 %120, ptr %vui.i, align 4, !dbg !1230, !tbaa !954
  br label %if.end339.i, !dbg !1231

if.end339.i:                                      ; preds = %if.end324.i, %if.then332.i
  %tobool340.not.i = icmp eq i32 %b_user_ref.0.i, 0, !dbg !1232
  br i1 %tobool340.not.i, label %if.then341.i, label %if.end, !dbg !1233

if.then341.i:                                     ; preds = %if.end339.i
  %121 = load i32, ptr %i_width.i, align 4, !dbg !1234, !tbaa !1130
  %add.i = add nsw i32 %121, 15, !dbg !1235
  %shr.i = ashr i32 %add.i, 4, !dbg !1236
  %122 = load i32, ptr %i_height.i, align 8, !dbg !1237, !tbaa !1125
  %add344.i = add nsw i32 %122, 15, !dbg !1238
  %shr345.i = ashr i32 %add344.i, 4, !dbg !1239
  call void @llvm.dbg.value(metadata i32 undef, metadata !549, metadata !DIExpression()) #16, !dbg !1240
  call void @llvm.dbg.value(metadata i32 0, metadata !552, metadata !DIExpression()) #16, !dbg !1241
  %123 = load i32, ptr @x264_levels, align 4, !dbg !1242, !tbaa !1244
  %cmp351.not733.i = icmp eq i32 %123, 0, !dbg !1246
  br i1 %cmp351.not733.i, label %if.end, label %for.body354.lr.ph.i, !dbg !1247

for.body354.lr.ph.i:                              ; preds = %if.then341.i
  %i_level_idc.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 8
  %124 = load i32, ptr %i_level_idc.i, align 8, !tbaa !1248
  br label %for.body354.i, !dbg !1247

for.body354.i:                                    ; preds = %for.inc372.i, %for.body354.lr.ph.i
  %indvars.iv849.i = phi i64 [ 0, %for.body354.lr.ph.i ], [ %indvars.iv.next850.i, %for.inc372.i ]
  %125 = phi i32 [ %123, %for.body354.lr.ph.i ], [ %127, %for.inc372.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv849.i, metadata !552, metadata !DIExpression()) #16, !dbg !1241
  %cmp358.i = icmp eq i32 %124, %125, !dbg !1249
  br i1 %cmp358.i, label %while.cond.preheader.i, label %for.inc372.i, !dbg !1251

while.cond.preheader.i:                           ; preds = %for.body354.i
  %idxprom349.le.i = and i64 %indvars.iv849.i, 4294967295, !dbg !1252
  %i_frame_reference.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 12
  %mul346.i = mul i32 %shr.i, 384
  %mul361.i = mul i32 %mul346.i, %shr345.i
  %dpb.i = getelementptr inbounds [0 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 %idxprom349.le.i, i32 3
  %126 = load i32, ptr %dpb.i, align 4, !tbaa !1253
  %i_frame_reference.promoted.i = load i32, ptr %i_frame_reference.i, align 8, !tbaa !1254
  %mul362736.i = mul i32 %i_frame_reference.promoted.i, %mul361.i, !dbg !1255
  %cmp365737.i = icmp sgt i32 %mul362736.i, %126, !dbg !1257
  %cmp368738.i = icmp sgt i32 %i_frame_reference.promoted.i, 1
  %or.cond502739.i = and i1 %cmp368738.i, %cmp365737.i, !dbg !1258
  br i1 %or.cond502739.i, label %while.body.i, label %if.end, !dbg !1258

while.body.i:                                     ; preds = %while.cond.preheader.i, %while.body.i
  %dec735740.i = phi i32 [ %dec.i, %while.body.i ], [ %i_frame_reference.promoted.i, %while.cond.preheader.i ]
  %dec.i = add nsw i32 %dec735740.i, -1, !dbg !1259
  %mul362.i = mul i32 %dec.i, %mul361.i, !dbg !1255
  %cmp365.i = icmp sgt i32 %mul362.i, %126, !dbg !1257
  %cmp368.i = icmp ugt i32 %dec735740.i, 2
  %or.cond502.i = and i1 %cmp368.i, %cmp365.i, !dbg !1258
  br i1 %or.cond502.i, label %while.body.i, label %while.cond.cleanup377.loopexit_crit_edge.i, !dbg !1258, !llvm.loop !1261

for.inc372.i:                                     ; preds = %for.body354.i
  %indvars.iv.next850.i = add nuw i64 %indvars.iv849.i, 1, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next850.i, metadata !552, metadata !DIExpression()) #16, !dbg !1241
  %arrayidx350.i = getelementptr inbounds [0 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 %indvars.iv.next850.i, !dbg !1252
  %127 = load i32, ptr %arrayidx350.i, align 4, !dbg !1242, !tbaa !1244
  %cmp351.not.i = icmp eq i32 %127, 0, !dbg !1246
  br i1 %cmp351.not.i, label %if.end, label %for.body354.i, !dbg !1247, !llvm.loop !1265

while.cond.cleanup377.loopexit_crit_edge.i:       ; preds = %while.body.i
  store i32 %dec.i, ptr %i_frame_reference.i, align 8, !dbg !1259, !tbaa !1254
  br label %if.end, !dbg !1258

Parse.exit.thread:                                ; preds = %for.cond.i, %if.then168.i, %if.then220.i, %if.then226.i, %cleanup319.i, %if.then236.i, %if.then194.i, %if.then156.i, %if.end13.i, %if.end148.i, %select_output.exit.i, %cleanup140.thread.i, %if.then39.i.i, %if.then22.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %input_opt.i) #16, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %defaults.i) #16, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i), !dbg !1267
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %demuxername.i), !dbg !1267
  br label %cleanup, !dbg !1268

if.end:                                           ; preds = %for.inc372.i, %while.cond.cleanup377.loopexit_crit_edge.i, %while.cond.preheader.i, %if.then341.i, %if.end339.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %input_opt.i) #16, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %defaults.i) #16, !dbg !1267
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i), !dbg !1267
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %demuxername.i), !dbg !1267
  %call1 = call ptr @signal(i32 noundef 2, ptr noundef nonnull @SigIntHandler) #16, !dbg !1269
  call void @llvm.dbg.value(metadata ptr %param, metadata !1270, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata ptr %opt, metadata !1275, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pic.i) #16, !dbg !2396
  call void @llvm.dbg.declare(metadata ptr %pic.i, metadata !2361, metadata !DIExpression()) #16, !dbg !2397
  call void @llvm.dbg.value(metadata ptr null, metadata !2362, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2372, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2376, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2377, metadata !DIExpression()) #16, !dbg !2394
  %128 = load i32, ptr %105, align 8, !dbg !2398, !tbaa !1205
  %conv.i5 = zext i32 %128 to i64, !dbg !2399
  %129 = load i32, ptr %104, align 4, !dbg !2400, !tbaa !1186
  %conv1.i = zext i32 %129 to i64, !dbg !2401
  call void @llvm.dbg.value(metadata i64 %conv1.i, metadata !2402, metadata !DIExpression()) #16, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %conv.i5, metadata !2407, metadata !DIExpression()) #16, !dbg !2410
  br label %while.body.i.i, !dbg !2412

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end
  %a.addr.0.i.i = phi i64 [ %conv1.i, %if.end ], [ %b.addr.0.i.i, %while.body.i.i ]
  %b.addr.0.i.i = phi i64 [ %conv.i5, %if.end ], [ %rem.i.i, %while.body.i.i ]
  call void @llvm.dbg.value(metadata i64 %b.addr.0.i.i, metadata !2407, metadata !DIExpression()) #16, !dbg !2410
  call void @llvm.dbg.value(metadata i64 %a.addr.0.i.i, metadata !2402, metadata !DIExpression()) #16, !dbg !2410
  %rem.i.i = srem i64 %a.addr.0.i.i, %b.addr.0.i.i, !dbg !2413
  call void @llvm.dbg.value(metadata i64 %rem.i.i, metadata !2408, metadata !DIExpression()) #16, !dbg !2414
  %tobool.not.not.i.i = icmp eq i64 %rem.i.i, 0, !dbg !2415
  call void @llvm.dbg.value(metadata i64 undef, metadata !2407, metadata !DIExpression()) #16, !dbg !2410
  call void @llvm.dbg.value(metadata i64 undef, metadata !2402, metadata !DIExpression()) #16, !dbg !2410
  br i1 %tobool.not.not.i.i, label %gcd.exit.i, label %while.body.i.i

gcd.exit.i:                                       ; preds = %while.body.i.i
  %div.i6 = sdiv i64 %conv.i5, %b.addr.0.i.i, !dbg !2417
  %conv4.i = trunc i64 %div.i6 to i32, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %conv4.i, metadata !2380, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2382, metadata !DIExpression()) #16, !dbg !2394
  %130 = load i32, ptr %i_log_level80.i, align 8, !dbg !2418, !tbaa !714
  %cmp.i = icmp slt i32 %130, 3, !dbg !2419
  %conv5.i = zext i1 %cmp.i to i32, !dbg !2419
  %131 = load i32, ptr %opt, align 8, !dbg !2420, !tbaa !565
  %and.i = and i32 %131, %conv5.i, !dbg !2420
  store i32 %and.i, ptr %opt, align 8, !dbg !2420, !tbaa !565
  %132 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 1), align 8, !dbg !2421, !tbaa !2422
  %133 = load ptr, ptr %hin.i, align 8, !dbg !2423, !tbaa !1061
  %call6.i = call i32 %132(ptr noundef %133) #16, !dbg !2424
  call void @llvm.dbg.value(metadata i32 %call6.i, metadata !2365, metadata !DIExpression()) #16, !dbg !2394
  %134 = load i32, ptr %i_seek.i, align 4, !dbg !2425, !tbaa !653
  %sub.i9 = sub nsw i32 %call6.i, %134, !dbg !2425
  %135 = call i32 @llvm.smax.i32(i32 %sub.i9, i32 0) #16, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %135, metadata !2365, metadata !DIExpression()) #16, !dbg !2394
  %cmp11.i = icmp slt i32 %sub.i9, 1, !dbg !2426
  %.pre.i10 = load i32, ptr %i_frame_total.i, align 4, !dbg !2428, !tbaa !637
  %cmp14.i = icmp slt i32 %.pre.i10, %135
  %or.cond811.i = select i1 %cmp11.i, i1 true, i1 %cmp14.i, !dbg !2429
  br i1 %or.cond811.i, label %if.end.i, label %if.end.thread.i, !dbg !2429

if.end.thread.i:                                  ; preds = %gcd.exit.i
  store i32 %135, ptr %i_frame_total.i, align 4, !dbg !2430, !tbaa !637
  br label %cond.true21.i, !dbg !2431

if.end.i:                                         ; preds = %gcd.exit.i
  %cmp17.i = icmp sgt i32 %.pre.i10, 0, !dbg !2432
  %spec.select562.i = select i1 %cmp17.i, i32 %.pre.i10, i32 %135, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %spec.select562.i, metadata !2365, metadata !DIExpression()) #16, !dbg !2394
  store i32 %spec.select562.i, ptr %i_frame_total.i, align 4, !dbg !2430, !tbaa !637
  %tobool.not.i11 = icmp eq i32 %spec.select562.i, 0, !dbg !2431
  br i1 %tobool.not.i11, label %cond.end25.i, label %cond.true21.i, !dbg !2431

cond.true21.i:                                    ; preds = %if.end.i, %if.end.thread.i
  %i_frame_total.0591.i = phi i32 [ %sub.i9, %if.end.thread.i ], [ %spec.select562.i, %if.end.i ]
  %div22650.i = udiv i32 %i_frame_total.0591.i, 1000, !dbg !2434
  call void @llvm.dbg.value(metadata i32 %div22650.i, metadata !2435, metadata !DIExpression()) #16, !dbg !2442
  call void @llvm.dbg.value(metadata i32 1, metadata !2440, metadata !DIExpression()) #16, !dbg !2442
  call void @llvm.dbg.value(metadata i32 10, metadata !2441, metadata !DIExpression()) #16, !dbg !2442
  %136 = icmp ult i32 %i_frame_total.0591.i, 1000, !dbg !2444
  %137 = call i32 @llvm.umin.i32(i32 %div22650.i, i32 10) #16
  %spec.select.i.i = select i1 %136, i32 1, i32 %137, !dbg !2445
  br label %cond.end25.i, !dbg !2431

cond.end25.i:                                     ; preds = %cond.true21.i, %if.end.i
  %tobool.not594.i = phi i1 [ false, %cond.true21.i ], [ true, %if.end.i ]
  %i_frame_total.0592.i = phi i32 [ %i_frame_total.0591.i, %cond.true21.i ], [ 0, %if.end.i ]
  %cond26.i = phi i32 [ %spec.select.i.i, %cond.true21.i ], [ 10, %if.end.i ], !dbg !2431
  call void @llvm.dbg.value(metadata i32 %cond26.i, metadata !2371, metadata !DIExpression()) #16, !dbg !2394
  %138 = load i32, ptr %i_pulldown.i, align 8, !dbg !2446, !tbaa !2448
  %tobool27.not.i = icmp ne i32 %138, 0, !dbg !2449
  %139 = load i32, ptr %b_vfr_input.i, align 8
  %tobool29.not.i = icmp eq i32 %139, 0
  %or.cond49 = select i1 %tobool27.not.i, i1 %tobool29.not.i, i1 false, !dbg !2450
  br i1 %or.cond49, label %if.then30.i, label %if.end46.i, !dbg !2450

if.then30.i:                                      ; preds = %cond.end25.i
  %b_pic_struct.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 54, !dbg !2451
  store i32 1, ptr %b_pic_struct.i, align 4, !dbg !2453, !tbaa !2454
  %idxprom.i = sext i32 %138 to i64, !dbg !2455
  call void @llvm.dbg.value(metadata !DIArgList(ptr @pulldown_values, i64 %idxprom.i), metadata !2362, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !2394
  %140 = load i32, ptr %i_fps_den.i, align 8, !dbg !2456, !tbaa !938
  store i32 %140, ptr %104, align 4, !dbg !2457, !tbaa !1186
  %141 = load i32, ptr %i_fps_num.i, align 4, !dbg !2458, !tbaa !933
  %conv33.i = uitofp i32 %141 to float, !dbg !2460
  %fps_factor.i = getelementptr inbounds [7 x %struct.cli_pulldown_t], ptr @pulldown_values, i64 0, i64 %idxprom.i, i32 2, !dbg !2461
  %142 = load float, ptr %fps_factor.i, align 4, !dbg !2461, !tbaa !2462
  %mul.i16 = fmul float %142, %conv33.i, !dbg !2464
  %conv34.i = fpext float %mul.i16 to double, !dbg !2460
  %call35.i = call double @fmod(double noundef %conv34.i, double noundef 1.000000e+00) #16, !dbg !2465
  %tobool36.i = fcmp une double %call35.i, 0.000000e+00, !dbg !2465
  br i1 %tobool36.i, label %if.then37.i, label %if.end39.i, !dbg !2466

if.then37.i:                                      ; preds = %if.then30.i
  %143 = load ptr, ptr @stderr, align 8, !dbg !2467, !tbaa !580
  %144 = call i64 @fwrite(ptr nonnull @.str.372, i64 56, i64 1, ptr %143) #19, !dbg !2469
  br label %Encode.exit, !dbg !2470

if.end39.i:                                       ; preds = %if.then30.i
  %arrayidx.i17 = getelementptr inbounds [7 x %struct.cli_pulldown_t], ptr @pulldown_values, i64 0, i64 %idxprom.i, !dbg !2455
  call void @llvm.dbg.value(metadata ptr %arrayidx.i17, metadata !2362, metadata !DIExpression()) #16, !dbg !2394
  %145 = load i32, ptr %i_fps_num.i, align 4, !dbg !2471, !tbaa !933
  %conv41.i = uitofp i32 %145 to float, !dbg !2472
  %mul43.i = fmul float %142, %conv41.i, !dbg !2473
  %conv44.i = fptoui float %mul43.i to i32, !dbg !2472
  store i32 %conv44.i, ptr %105, align 8, !dbg !2474, !tbaa !1205
  br label %if.end46.i, !dbg !2475

if.end46.i:                                       ; preds = %if.end39.i, %cond.end25.i
  %pulldown.0.i = phi ptr [ %arrayidx.i17, %if.end39.i ], [ null, %cond.end25.i ], !dbg !2394
  call void @llvm.dbg.value(metadata ptr %pulldown.0.i, metadata !2362, metadata !DIExpression()) #16, !dbg !2394
  %call47.i = call ptr @x264_encoder_open_96(ptr noundef nonnull %param) #16, !dbg !2476
  call void @llvm.dbg.value(metadata ptr %call47.i, metadata !1276, metadata !DIExpression()) #16, !dbg !2394
  %cmp48.i = icmp eq ptr %call47.i, null, !dbg !2478
  br i1 %cmp48.i, label %if.then50.i, label %if.end54.i, !dbg !2479

if.then50.i:                                      ; preds = %if.end46.i
  %146 = load ptr, ptr @stderr, align 8, !dbg !2480, !tbaa !580
  %147 = call i64 @fwrite(ptr nonnull @.str.373, i64 39, i64 1, ptr %146) #19, !dbg !2482
  %148 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 6), align 8, !dbg !2483, !tbaa !2484
  %149 = load ptr, ptr %hin.i, align 8, !dbg !2485, !tbaa !1061
  %call53.i = call i32 %148(ptr noundef %149) #16, !dbg !2486
  br label %Encode.exit, !dbg !2487

if.end54.i:                                       ; preds = %if.end46.i
  call void @x264_encoder_parameters(ptr noundef nonnull %call47.i, ptr noundef nonnull %param) #16, !dbg !2488
  %150 = load i32, ptr %105, align 8, !dbg !2489, !tbaa !1205
  %div56.i = udiv i32 %150, %conv4.i, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %div56.i, metadata !2381, metadata !DIExpression()) #16, !dbg !2394
  %151 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 1), align 8, !dbg !2491, !tbaa !2493
  %152 = load ptr, ptr %hout.i, align 8, !dbg !2494, !tbaa !2495
  %call57.i = call i32 %151(ptr noundef %152, ptr noundef nonnull %param) #16, !dbg !2496
  %tobool58.not.i = icmp eq i32 %call57.i, 0, !dbg !2496
  br i1 %tobool58.not.i, label %if.end65.i, label %if.then59.i, !dbg !2497

if.then59.i:                                      ; preds = %if.end54.i
  %153 = load ptr, ptr @stderr, align 8, !dbg !2498, !tbaa !580
  %154 = call i64 @fwrite(ptr nonnull @.str.374, i64 38, i64 1, ptr %153) #19, !dbg !2500
  %155 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 6), align 8, !dbg !2501, !tbaa !2484
  %156 = load ptr, ptr %hin.i, align 8, !dbg !2502, !tbaa !1061
  %call62.i19 = call i32 %155(ptr noundef %156) #16, !dbg !2503
  %157 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 4), align 8, !dbg !2504, !tbaa !2505
  %158 = load ptr, ptr %hout.i, align 8, !dbg !2506, !tbaa !2495
  %call64.i = call i32 %157(ptr noundef %158, i64 noundef -1, i64 noundef -1) #16, !dbg !2507
  br label %Encode.exit, !dbg !2508

if.end65.i:                                       ; preds = %if.end54.i
  %159 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 2), align 8, !dbg !2509, !tbaa !2511
  %160 = load i32, ptr %i_csp.i, align 4, !dbg !2512, !tbaa !928
  %161 = load i32, ptr %i_width.i, align 4, !dbg !2513, !tbaa !1130
  %162 = load i32, ptr %i_height.i, align 8, !dbg !2514, !tbaa !1125
  %call66.i23 = call i32 %159(ptr noundef nonnull %pic.i, i32 noundef %160, i32 noundef %161, i32 noundef %162) #16, !dbg !2515
  %tobool67.not.i = icmp eq i32 %call66.i23, 0, !dbg !2515
  br i1 %tobool67.not.i, label %if.end70.i, label %if.then68.i, !dbg !2516

if.then68.i:                                      ; preds = %if.end65.i
  %163 = load ptr, ptr @stderr, align 8, !dbg !2517, !tbaa !580
  %164 = call i64 @fwrite(ptr nonnull @.str.375, i64 28, i64 1, ptr %163) #19, !dbg !2519
  br label %Encode.exit, !dbg !2520

if.end70.i:                                       ; preds = %if.end65.i
  %call71.i = call i64 @x264_mdate() #16, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %call71.i, metadata !2367, metadata !DIExpression()) #16, !dbg !2394
  %165 = load i32, ptr %105, align 8, !dbg !2522, !tbaa !1205
  %conv73.i = zext i32 %165 to i64, !dbg !2523
  %166 = load i32, ptr %i_fps_den.i, align 8, !dbg !2524, !tbaa !938
  %conv75.i = zext i32 %166 to i64, !dbg !2525
  %mul76.i = mul nuw nsw i64 %conv75.i, %conv73.i, !dbg !2526
  %167 = load i32, ptr %104, align 4, !dbg !2527, !tbaa !1186
  %conv78.i = zext i32 %167 to i64, !dbg !2528
  %div79.i = udiv i64 %mul76.i, %conv78.i, !dbg !2529
  %168 = load i32, ptr %i_fps_num.i, align 4, !dbg !2530, !tbaa !933
  %conv81.i = zext i32 %168 to i64, !dbg !2531
  %div82.i = udiv i64 %div79.i, %conv81.i, !dbg !2532
  call void @llvm.dbg.value(metadata i64 %div82.i, metadata !2378, metadata !DIExpression()) #16, !dbg !2394
  %cmp83.i = icmp ult i64 %div79.i, %conv81.i, !dbg !2533
  br i1 %cmp83.i, label %if.then85.i, label %if.end87.i, !dbg !2535

if.then85.i:                                      ; preds = %if.end70.i
  %169 = load ptr, ptr @stderr, align 8, !dbg !2536, !tbaa !580
  %call86.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.376, i64 noundef %div82.i) #19, !dbg !2538
  br label %Encode.exit, !dbg !2539

if.end87.i:                                       ; preds = %if.end70.i
  %b_repeat_headers.i = getelementptr inbounds %struct.x264_param_t, ptr %param, i64 0, i32 44, !dbg !2540
  %170 = load i32, ptr %b_repeat_headers.i, align 4, !dbg !2540, !tbaa !886
  %tobool88.not.i = icmp eq i32 %170, 0, !dbg !2541
  br i1 %tobool88.not.i, label %if.then89.i, label %if.end104.i, !dbg !2542

if.then89.i:                                      ; preds = %if.end87.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %headers.i) #16, !dbg !2543
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nal.i) #16, !dbg !2544
  call void @llvm.dbg.value(metadata ptr %headers.i, metadata !2383, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2545
  call void @llvm.dbg.value(metadata ptr %i_nal.i, metadata !2386, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2545
  %call90.i = call i32 @x264_encoder_headers(ptr noundef nonnull %call47.i, ptr noundef nonnull %headers.i, ptr noundef nonnull %i_nal.i) #16, !dbg !2546
  %cmp91.i = icmp slt i32 %call90.i, 0, !dbg !2548
  br i1 %cmp91.i, label %cleanup.thread.i, label %cleanup.i25, !dbg !2549

cleanup.thread.i:                                 ; preds = %if.then89.i
  %171 = load ptr, ptr @stderr, align 8, !dbg !2550, !tbaa !580
  %172 = call i64 @fwrite(ptr nonnull @.str.377, i64 42, i64 1, ptr %171) #19, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %conv98.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i) #16, !dbg !2553
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %headers.i) #16, !dbg !2553
  br label %Encode.exit

cleanup.i25:                                      ; preds = %if.then89.i
  %173 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 2), align 8, !dbg !2554, !tbaa !2556
  %174 = load ptr, ptr %hout.i, align 8, !dbg !2557, !tbaa !2495
  %175 = load ptr, ptr %headers.i, align 8, !dbg !2558, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %175, metadata !2383, metadata !DIExpression()) #16, !dbg !2545
  %call97.i24 = call i32 %173(ptr noundef %174, ptr noundef %175) #16, !dbg !2559
  %conv98.i = sext i32 %call97.i24 to i64, !dbg !2559
  call void @llvm.dbg.value(metadata i64 %conv98.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %cmp99.i = icmp sgt i32 %call97.i24, -1, !dbg !2560
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i) #16, !dbg !2553
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %headers.i) #16, !dbg !2553
  br i1 %cmp99.i, label %if.end104.i, label %Encode.exit

if.end104.i:                                      ; preds = %cleanup.i25, %if.end87.i
  %i_file.1.i = phi i64 [ 0, %if.end87.i ], [ %conv98.i, %cleanup.i25 ], !dbg !2561
  call void @llvm.dbg.value(metadata i64 %i_file.1.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %176 = load ptr, ptr %tcfile_out.i, align 8, !dbg !2562, !tbaa !736
  %tobool105.not.i = icmp eq ptr %176, null, !dbg !2564
  br i1 %tobool105.not.i, label %if.end109.i, label %if.then106.i, !dbg !2565

if.then106.i:                                     ; preds = %if.end104.i
  %177 = call i64 @fwrite(ptr nonnull @.str.378, i64 21, i64 1, ptr nonnull %176) #16, !dbg !2566
  br label %if.end109.i, !dbg !2566

if.end109.i:                                      ; preds = %if.then106.i, %if.end104.i
  call void @llvm.dbg.value(metadata i32 0, metadata !2364, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2382, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2377, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2376, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %i_file.1.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %.b561665.i = load i1, ptr @b_ctrl_c, align 4, !dbg !2567
  %.b561.not666.i = xor i1 %.b561665.i, true, !dbg !2568
  %cmp112667.i = icmp ne i32 %i_frame_total.0592.i, 0
  %or.cond399668.i = or i1 %tobool.not594.i, %cmp112667.i
  %or.cond651669.i = select i1 %.b561.not666.i, i1 %or.cond399668.i, i1 false, !dbg !2568
  br i1 %or.cond651669.i, label %for.body.lr.ph.i, label %for.end.i40, !dbg !2568

for.body.lr.ph.i:                                 ; preds = %if.end109.i
  %i_pts.i = getelementptr inbounds %struct.x264_picture_t, ptr %pic.i, i64 0, i32 4
  %i_pic_struct.i = getelementptr inbounds %struct.x264_picture_t, ptr %pic.i, i64 0, i32 2
  %timebase_convert_multiplier.i27 = getelementptr inbounds %struct.cli_opt_t, ptr %opt, i64 0, i32 6
  %conv155.i = sext i32 %div56.i to i64
  %i_qpplus111.i.i = getelementptr inbounds %struct.x264_picture_t, ptr %pic.i, i64 0, i32 1
  %i_dts.i.i = getelementptr inbounds %struct.x264_picture_t, ptr %pic_out.i.i, i64 0, i32 5
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2382, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2364, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2377, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2376, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %i_file.1.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %178 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 3), align 8, !dbg !2569, !tbaa !2571
  %179 = load ptr, ptr %hin.i, align 8, !dbg !2572, !tbaa !1061
  %180 = load i32, ptr %i_seek.i, align 4, !dbg !2573, !tbaa !653
  %call118.i176 = call i32 %178(ptr noundef nonnull %pic.i, ptr noundef %179, i32 noundef %180) #16, !dbg !2574
  %tobool119.not.i177 = icmp eq i32 %call118.i176, 0, !dbg !2574
  br i1 %tobool119.not.i177, label %if.end121.i, label %for.end.loopexit.i, !dbg !2575

for.body.i31:                                     ; preds = %cleanup247.i
  call void @llvm.dbg.value(metadata double %pulldown_pts.1.i, metadata !2382, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i39, metadata !2364, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %largest_pts.0677.i182, metadata !2377, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %197, metadata !2376, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %pts_warning_cnt.2.i, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %first_dts.1.i, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %prev_dts.1.i, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_frame_output.1.i, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %add217615.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %181 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 3), align 8, !dbg !2569, !tbaa !2571
  %182 = load ptr, ptr %hin.i, align 8, !dbg !2572, !tbaa !1061
  %183 = load i32, ptr %i_seek.i, align 4, !dbg !2573, !tbaa !653
  %add.i30 = add nsw i32 %183, %indvars, !dbg !2576
  %call118.i = call i32 %181(ptr noundef nonnull %pic.i, ptr noundef %182, i32 noundef %add.i30) #16, !dbg !2574
  %tobool119.not.i = icmp eq i32 %call118.i, 0, !dbg !2574
  br i1 %tobool119.not.i, label %if.end121.i, label %for.end.loopexit.i.loopexit, !dbg !2575

if.end121.i:                                      ; preds = %for.body.lr.ph.i, %for.body.i31
  %last_dts.0670.i187 = phi i64 [ %last_dts.1606614.i, %for.body.i31 ], [ 0, %for.body.lr.ph.i ]
  %i_file.2671.i186 = phi i64 [ %add217615.i, %for.body.i31 ], [ %i_file.1.i, %for.body.lr.ph.i ]
  %i_frame_output.0672.i185 = phi i32 [ %i_frame_output.1.i, %for.body.i31 ], [ 0, %for.body.lr.ph.i ]
  %first_dts.0674.i184 = phi i64 [ %first_dts.1.i, %for.body.i31 ], [ 0, %for.body.lr.ph.i ]
  %pts_warning_cnt.0675.i183 = phi i32 [ %pts_warning_cnt.2.i, %for.body.i31 ], [ 0, %for.body.lr.ph.i ]
  %largest_pts.0677.i182 = phi i64 [ %197, %for.body.i31 ], [ -1, %for.body.lr.ph.i ]
  %pulldown_pts.0682.i181 = phi double [ %pulldown_pts.1.i, %for.body.i31 ], [ 0.000000e+00, %for.body.lr.ph.i ]
  %indvars.iv.i29178 = phi i64 [ %indvars.iv.next.i39, %for.body.i31 ], [ 0, %for.body.lr.ph.i ]
  %indvars354 = trunc i64 %indvars.iv.i29178 to i32
  call void @llvm.dbg.value(metadata i64 %i_file.2671.i186, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_frame_output.0672.i185, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %first_dts.0674.i184, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %pts_warning_cnt.0675.i183, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %largest_pts.0677.i182, metadata !2376, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata double %pulldown_pts.0682.i181, metadata !2382, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i29178, metadata !2364, metadata !DIExpression()) #16, !dbg !2394
  %184 = load i32, ptr %b_vfr_input.i, align 8, !dbg !2577, !tbaa !728
  %tobool123.not.i = icmp eq i32 %184, 0, !dbg !2579
  br i1 %tobool123.not.i, label %if.end126.i, label %if.end121.i.if.else.i_crit_edge, !dbg !2580

if.end121.i.if.else.i_crit_edge:                  ; preds = %if.end121.i
  %.pre = load i64, ptr %i_pts.i, align 8, !dbg !2581, !tbaa !2582
  br label %if.else.i, !dbg !2580

if.end126.i:                                      ; preds = %if.end121.i
  store i64 %indvars.iv.i29178, ptr %i_pts.i, align 8, !dbg !2586, !tbaa !2582
  %185 = load i32, ptr %i_pulldown.i, align 8, !dbg !2587, !tbaa !2448
  %tobool128.not.i = icmp eq i32 %185, 0, !dbg !2589
  br i1 %tobool128.not.i, label %if.else.i, label %if.then132.i, !dbg !2590

if.then132.i:                                     ; preds = %if.end126.i
  %186 = load i32, ptr %pulldown.0.i, align 4, !dbg !2591, !tbaa !2593
  %rem.i = srem i32 %indvars354, %186, !dbg !2594
  %idxprom133.i32 = zext i32 %rem.i to i64, !dbg !2595
  %arrayidx134.i33 = getelementptr inbounds %struct.cli_pulldown_t, ptr %pulldown.0.i, i64 0, i32 1, i64 %idxprom133.i32, !dbg !2595
  %187 = load i8, ptr %arrayidx134.i33, align 1, !dbg !2595, !tbaa !856
  %conv135.i = zext i8 %187 to i32, !dbg !2595
  store i32 %conv135.i, ptr %i_pic_struct.i, align 8, !dbg !2596, !tbaa !2597
  %add136.i = fadd double %pulldown_pts.0682.i181, 5.000000e-01, !dbg !2598
  %conv137.i = fptosi double %add136.i to i64, !dbg !2599
  store i64 %conv137.i, ptr %i_pts.i, align 8, !dbg !2600, !tbaa !2582
  %idxprom140.i = zext i8 %187 to i64, !dbg !2601
  %arrayidx141.i = getelementptr inbounds [10 x float], ptr @pulldown_frame_duration, i64 0, i64 %idxprom140.i, !dbg !2601
  %188 = load float, ptr %arrayidx141.i, align 4, !dbg !2601, !tbaa !2602
  %conv142.i = fpext float %188 to double, !dbg !2601
  %add143.i = fadd double %pulldown_pts.0682.i181, %conv142.i, !dbg !2603
  call void @llvm.dbg.value(metadata double %add143.i, metadata !2382, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end153.i, !dbg !2604

if.else.i:                                        ; preds = %if.end121.i.if.else.i_crit_edge, %if.end126.i
  %189 = phi i64 [ %.pre, %if.end121.i.if.else.i_crit_edge ], [ %indvars.iv.i29178, %if.end126.i ], !dbg !2581
  %190 = load double, ptr %timebase_convert_multiplier.i27, align 8, !dbg !2605, !tbaa !1215
  %tobool144.i = fcmp une double %190, 0.000000e+00, !dbg !2607
  br i1 %tobool144.i, label %if.then145.i, label %if.end153.i, !dbg !2608

if.then145.i:                                     ; preds = %if.else.i
  %conv147.i = sitofp i64 %189 to double, !dbg !2609
  %191 = call double @llvm.fmuladd.f64(double %conv147.i, double %190, double 5.000000e-01) #16, !dbg !2610
  %conv150.i = fptosi double %191 to i64, !dbg !2611
  store i64 %conv150.i, ptr %i_pts.i, align 8, !dbg !2612, !tbaa !2582
  br label %if.end153.i, !dbg !2613

if.end153.i:                                      ; preds = %if.then145.i, %if.else.i, %if.then132.i
  %192 = phi i64 [ %conv150.i, %if.then145.i ], [ %conv137.i, %if.then132.i ], [ %189, %if.else.i ], !dbg !2614
  %pulldown_pts.1.i = phi double [ %pulldown_pts.0682.i181, %if.then145.i ], [ %add143.i, %if.then132.i ], [ %pulldown_pts.0682.i181, %if.else.i ], !dbg !2394
  call void @llvm.dbg.value(metadata double %pulldown_pts.1.i, metadata !2382, metadata !DIExpression()) #16, !dbg !2394
  %mul156.i = mul nsw i64 %192, %conv155.i, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %mul156.i, metadata !2387, metadata !DIExpression()) #16, !dbg !2581
  %cmp158.not.i = icmp sgt i64 %192, %largest_pts.0677.i182, !dbg !2616
  br i1 %cmp158.not.i, label %if.end188.i, label %if.then160.i, !dbg !2618

if.then160.i:                                     ; preds = %if.end153.i
  %193 = load i32, ptr %i_log_level80.i, align 8, !dbg !2619, !tbaa !714
  %cmp162.i = icmp sgt i32 %193, 0, !dbg !2622
  br i1 %cmp162.i, label %if.then164.i, label %if.end182.i, !dbg !2623

if.then164.i:                                     ; preds = %if.then160.i
  %cmp166.i = icmp ugt i32 %193, 2, !dbg !2624
  %cmp169.i = icmp slt i32 %pts_warning_cnt.0675.i183, 3
  %or.cond.i34 = select i1 %cmp166.i, i1 true, i1 %cmp169.i, !dbg !2627
  br i1 %or.cond.i34, label %if.then171.i, label %if.else175.i, !dbg !2627

if.then171.i:                                     ; preds = %if.then164.i
  %194 = load ptr, ptr @stderr, align 8, !dbg !2628, !tbaa !580
  %mul173.i = mul nsw i64 %largest_pts.0677.i182, %conv155.i, !dbg !2629
  %call174.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef nonnull @.str.379, i32 noundef %indvars354, i64 noundef %mul156.i, i64 noundef %mul173.i) #19, !dbg !2630
  br label %if.end181.i, !dbg !2630

if.else175.i:                                     ; preds = %if.then164.i
  %cmp176.i = icmp eq i32 %pts_warning_cnt.0675.i183, 3, !dbg !2631
  br i1 %cmp176.i, label %if.then178.i, label %if.end181.i, !dbg !2633

if.then178.i:                                     ; preds = %if.else175.i
  %195 = load ptr, ptr @stderr, align 8, !dbg !2634, !tbaa !580
  %196 = call i64 @fwrite(ptr nonnull @.str.380, i64 77, i64 1, ptr %195) #19, !dbg !2635
  br label %if.end181.i, !dbg !2635

if.end181.i:                                      ; preds = %if.then178.i, %if.else175.i, %if.then171.i
  %inc.i = add nsw i32 %pts_warning_cnt.0675.i183, 1, !dbg !2636
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end182.i, !dbg !2637

if.end182.i:                                      ; preds = %if.end181.i, %if.then160.i
  %pts_warning_cnt.1.i = phi i32 [ %inc.i, %if.end181.i ], [ %pts_warning_cnt.0675.i183, %if.then160.i ], !dbg !2394
  call void @llvm.dbg.value(metadata i32 %pts_warning_cnt.1.i, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  %add183.i = add nsw i64 %largest_pts.0677.i182, %div82.i, !dbg !2638
  store i64 %add183.i, ptr %i_pts.i, align 8, !dbg !2639, !tbaa !2582
  %mul187.i = mul nsw i64 %add183.i, %conv155.i, !dbg !2640
  call void @llvm.dbg.value(metadata i64 %mul187.i, metadata !2387, metadata !DIExpression()) #16, !dbg !2581
  br label %if.end188.i, !dbg !2641

if.end188.i:                                      ; preds = %if.end182.i, %if.end153.i
  %197 = phi i64 [ %add183.i, %if.end182.i ], [ %192, %if.end153.i ], !dbg !2642
  %pts_warning_cnt.2.i = phi i32 [ %pts_warning_cnt.1.i, %if.end182.i ], [ %pts_warning_cnt.0675.i183, %if.end153.i ], !dbg !2394
  %output_pts.0.i = phi i64 [ %mul187.i, %if.end182.i ], [ %mul156.i, %if.end153.i ], !dbg !2581
  call void @llvm.dbg.value(metadata i64 %output_pts.0.i, metadata !2387, metadata !DIExpression()) #16, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %pts_warning_cnt.2.i, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %largest_pts.0677.i182, metadata !2377, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %197, metadata !2376, metadata !DIExpression()) #16, !dbg !2394
  %198 = load ptr, ptr %tcfile_out.i, align 8, !dbg !2643, !tbaa !736
  %tobool191.not.i = icmp eq ptr %198, null, !dbg !2645
  br i1 %tobool191.not.i, label %if.end203.i, label %if.then192.i, !dbg !2646

if.then192.i:                                     ; preds = %if.end188.i
  %conv194.i = sitofp i64 %output_pts.0.i to double, !dbg !2647
  %199 = load i32, ptr %104, align 4, !dbg !2648, !tbaa !1186
  %conv196.i = uitofp i32 %199 to double, !dbg !2649
  %200 = load i32, ptr %105, align 8, !dbg !2650, !tbaa !1205
  %conv198.i = uitofp i32 %200 to double, !dbg !2651
  %div199.i = fdiv double %conv196.i, %conv198.i, !dbg !2652
  %mul200.i = fmul double %div199.i, %conv194.i, !dbg !2653
  %mul201.i = fmul double %mul200.i, 1.000000e+03, !dbg !2654
  %call202.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %198, ptr noundef nonnull @.str.381, double noundef %mul201.i) #16, !dbg !2655
  br label %if.end203.i, !dbg !2655

if.end203.i:                                      ; preds = %if.then192.i, %if.end188.i
  %201 = load ptr, ptr %qpfile.i, align 8, !dbg !2656, !tbaa !704
  %tobool204.not.i = icmp eq ptr %201, null, !dbg !2658
  br i1 %tobool204.not.i, label %if.else208.i, label %if.then205.i, !dbg !2659

if.then205.i:                                     ; preds = %if.end203.i
  %202 = load i32, ptr %i_seek.i, align 4, !dbg !2660, !tbaa !653
  %add207.i = add nsw i32 %202, %indvars354, !dbg !2661
  call void @llvm.dbg.value(metadata ptr %opt, metadata !2662, metadata !DIExpression()) #16, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %pic.i, metadata !2667, metadata !DIExpression()) #16, !dbg !2674
  call void @llvm.dbg.value(metadata i32 %add207.i, metadata !2668, metadata !DIExpression()) #16, !dbg !2674
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i.i) #16, !dbg !2676
  call void @llvm.dbg.value(metadata i32 -1, metadata !2669, metadata !DIExpression()) #16, !dbg !2674
  store i32 -1, ptr %num.i.i, align 4, !dbg !2677, !tbaa !573
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qp.i.i) #16, !dbg !2676
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i.i) #16, !dbg !2678
  %cmp91.i.i = icmp sgt i32 %add207.i, -1, !dbg !2679
  br i1 %cmp91.i.i, label %while.body.i563.i.preheader, label %parse_qpfile.exit.i, !dbg !2680

while.body.i563.i.preheader:                      ; preds = %if.then205.i
  %call.i.i35170 = call i64 @ftell(ptr noundef nonnull %201) #16, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %call.i.i35170, metadata !2673, metadata !DIExpression()) #16, !dbg !2674
  %203 = load ptr, ptr %qpfile.i, align 8, !dbg !2683, !tbaa !704
  call void @llvm.dbg.value(metadata ptr %num.i.i, metadata !2669, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %qp.i.i, metadata !2670, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %type.i.i, metadata !2672, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2674
  %call2.i.i36171 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %203, ptr noundef nonnull @.str.387, ptr noundef nonnull %num.i.i, ptr noundef nonnull %type.i.i, ptr noundef nonnull %qp.i.i) #16, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %call2.i.i36171, metadata !2671, metadata !DIExpression()) #16, !dbg !2674
  %204 = load i32, ptr %num.i.i, align 4, !dbg !2685, !tbaa !573
  call void @llvm.dbg.value(metadata i32 %204, metadata !2669, metadata !DIExpression()) #16, !dbg !2674
  %cmp3.i.i172 = icmp sgt i32 %204, %add207.i, !dbg !2687
  %cmp4.i.i173 = icmp eq i32 %call2.i.i36171, -1
  %or.cond.i.i37174 = select i1 %cmp3.i.i172, i1 true, i1 %cmp4.i.i173, !dbg !2688
  br i1 %or.cond.i.i37174, label %if.then.i.i, label %if.end.i.i38, !dbg !2688

if.then.i.i:                                      ; preds = %while.cond.backedge.i.while.body.i563_crit_edge.i, %while.body.i563.i.preheader
  %call.i.i35.lcssa = phi i64 [ %call.i.i35170, %while.body.i563.i.preheader ], [ %call.i.i35, %while.cond.backedge.i.while.body.i563_crit_edge.i ], !dbg !2681
  store i32 0, ptr %pic.i, align 8, !dbg !2689, !tbaa !2691
  store i32 0, ptr %i_qpplus111.i.i, align 4, !dbg !2692, !tbaa !2693
  %205 = load ptr, ptr %qpfile.i, align 8, !dbg !2694, !tbaa !704
  %call6.i.i = call i32 @fseek(ptr noundef %205, i64 noundef %call.i.i35.lcssa, i32 noundef 0) #16, !dbg !2695
  br label %parse_qpfile.exit.i, !dbg !2696

if.end.i.i38:                                     ; preds = %while.body.i563.i.preheader, %while.cond.backedge.i.while.body.i563_crit_edge.i
  %206 = phi i32 [ %208, %while.cond.backedge.i.while.body.i563_crit_edge.i ], [ %204, %while.body.i563.i.preheader ]
  %call2.i.i36175 = phi i32 [ %call2.i.i36, %while.cond.backedge.i.while.body.i563_crit_edge.i ], [ %call2.i.i36171, %while.body.i563.i.preheader ]
  %cmp7.i.i = icmp slt i32 %206, %add207.i, !dbg !2697
  %cmp8.i.i = icmp eq i32 %call2.i.i36175, 3
  %or.cond61.i.i = select i1 %cmp7.i.i, i1 %cmp8.i.i, i1 false, !dbg !2699
  br i1 %or.cond61.i.i, label %while.cond.backedge.i.i, label %if.end10.i.i, !dbg !2699

while.cond.backedge.i.i:                          ; preds = %if.end44.i.i, %if.end.i.i38
  call void @llvm.dbg.value(metadata i32 undef, metadata !2669, metadata !DIExpression()) #16, !dbg !2674
  br i1 %cmp7.i.i, label %while.cond.backedge.i.while.body.i563_crit_edge.i, label %parse_qpfile.exit.i, !dbg !2680, !llvm.loop !2700

while.cond.backedge.i.while.body.i563_crit_edge.i: ; preds = %while.cond.backedge.i.i
  %.pre731.i = load ptr, ptr %qpfile.i, align 8, !dbg !2702, !tbaa !704
  %call.i.i35 = call i64 @ftell(ptr noundef %.pre731.i) #16, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %call.i.i35, metadata !2673, metadata !DIExpression()) #16, !dbg !2674
  %207 = load ptr, ptr %qpfile.i, align 8, !dbg !2683, !tbaa !704
  call void @llvm.dbg.value(metadata ptr %num.i.i, metadata !2669, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %qp.i.i, metadata !2670, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %type.i.i, metadata !2672, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2674
  %call2.i.i36 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %207, ptr noundef nonnull @.str.387, ptr noundef nonnull %num.i.i, ptr noundef nonnull %type.i.i, ptr noundef nonnull %qp.i.i) #16, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %call2.i.i36, metadata !2671, metadata !DIExpression()) #16, !dbg !2674
  %208 = load i32, ptr %num.i.i, align 4, !dbg !2685, !tbaa !573
  call void @llvm.dbg.value(metadata i32 %208, metadata !2669, metadata !DIExpression()) #16, !dbg !2674
  %cmp3.i.i = icmp sgt i32 %208, %add207.i, !dbg !2687
  %cmp4.i.i = icmp eq i32 %call2.i.i36, -1
  %or.cond.i.i37 = select i1 %cmp3.i.i, i1 true, i1 %cmp4.i.i, !dbg !2688
  br i1 %or.cond.i.i37, label %if.then.i.i, label %if.end.i.i38, !dbg !2688

if.end10.i.i:                                     ; preds = %if.end.i.i38
  %209 = load i32, ptr %qp.i.i, align 4, !dbg !2703, !tbaa !573
  call void @llvm.dbg.value(metadata i32 %209, metadata !2670, metadata !DIExpression()) #16, !dbg !2674
  %add.i.i = add nsw i32 %209, 1, !dbg !2704
  store i32 %add.i.i, ptr %i_qpplus111.i.i, align 4, !dbg !2705, !tbaa !2693
  %210 = load i8, ptr %type.i.i, align 1, !dbg !2706, !tbaa !856
  call void @llvm.dbg.value(metadata i8 %210, metadata !2672, metadata !DIExpression()) #16, !dbg !2674
  switch i8 %210, label %if.then53.i.i [
    i8 73, label %if.end44.i.i
    i8 105, label %if.then19.i.i
    i8 80, label %if.then25.i.i
    i8 66, label %if.then31.i.i
    i8 98, label %if.then37.i.i
  ], !dbg !2708

if.then19.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i, !dbg !2709

if.then25.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i, !dbg !2711

if.then31.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i, !dbg !2713

if.then37.i.i:                                    ; preds = %if.end10.i.i
  br label %if.end44.i.i, !dbg !2715

if.end44.i.i:                                     ; preds = %if.then37.i.i, %if.then31.i.i, %if.then25.i.i, %if.then19.i.i, %if.end10.i.i
  %.sink.i.i = phi i32 [ 2, %if.then19.i.i ], [ 4, %if.then31.i.i ], [ 5, %if.then37.i.i ], [ 3, %if.then25.i.i ], [ 1, %if.end10.i.i ]
  store i32 %.sink.i.i, ptr %pic.i, align 8, !dbg !2717, !tbaa !2691
  call void @llvm.dbg.value(metadata i32 %call2.i.i36175, metadata !2671, metadata !DIExpression()) #16, !dbg !2674
  %cmp45.i.i = icmp ne i32 %call2.i.i36175, 3, !dbg !2718
  call void @llvm.dbg.value(metadata i32 %209, metadata !2670, metadata !DIExpression()) #16, !dbg !2674
  %cmp48.i.i = icmp slt i32 %209, -1
  %or.cond62.i.i = select i1 %cmp45.i.i, i1 true, i1 %cmp48.i.i, !dbg !2720
  %cmp51.i.i = icmp sgt i32 %209, 51
  %or.cond63.i.i = select i1 %or.cond62.i.i, i1 true, i1 %cmp51.i.i, !dbg !2720
  br i1 %or.cond63.i.i, label %if.then53.i.i, label %while.cond.backedge.i.i, !dbg !2720

if.then53.i.i:                                    ; preds = %if.end44.i.i, %if.end10.i.i
  %211 = load ptr, ptr @stderr, align 8, !dbg !2721, !tbaa !580
  %call54.i.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %211, ptr noundef nonnull @.str.388, i32 noundef %add207.i) #19, !dbg !2723
  %212 = load ptr, ptr %qpfile.i, align 8, !dbg !2724, !tbaa !704
  %call56.i.i = call i32 @fclose(ptr noundef %212) #16, !dbg !2725
  store ptr null, ptr %qpfile.i, align 8, !dbg !2726, !tbaa !704
  store i32 0, ptr %pic.i, align 8, !dbg !2727, !tbaa !2691
  store i32 0, ptr %i_qpplus111.i.i, align 4, !dbg !2728, !tbaa !2693
  br label %parse_qpfile.exit.i, !dbg !2729

parse_qpfile.exit.i:                              ; preds = %while.cond.backedge.i.i, %if.then53.i.i, %if.then.i.i, %if.then205.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i.i) #16, !dbg !2730
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qp.i.i) #16, !dbg !2730
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i.i) #16, !dbg !2730
  br label %if.end209.i, !dbg !2731

if.else208.i:                                     ; preds = %if.end203.i
  store i32 0, ptr %pic.i, align 8, !dbg !2732, !tbaa !2691
  store i32 0, ptr %i_qpplus111.i.i, align 4, !dbg !2734, !tbaa !2693
  br label %if.end209.i

if.end209.i:                                      ; preds = %if.else208.i, %parse_qpfile.exit.i
  call void @llvm.dbg.value(metadata i64 %last_dts.0670.i187, metadata !2372, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %last_dts.0670.i187, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  %213 = load ptr, ptr %hout.i, align 8, !dbg !2735, !tbaa !2495
  call void @llvm.dbg.value(metadata ptr %call47.i, metadata !2736, metadata !DIExpression()) #16, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %213, metadata !2742, metadata !DIExpression()) #16, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %pic.i, metadata !2743, metadata !DIExpression()) #16, !dbg !2749
  call void @llvm.dbg.value(metadata ptr undef, metadata !2744, metadata !DIExpression()) #16, !dbg !2749
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pic_out.i.i) #16, !dbg !2751
  call void @llvm.dbg.declare(metadata ptr %pic_out.i.i, metadata !2745, metadata !DIExpression()) #16, !dbg !2752
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nal.i.i) #16, !dbg !2753
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nal.i.i) #16, !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2748, metadata !DIExpression()) #16, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %nal.i.i, metadata !2746, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %i_nal.i.i, metadata !2747, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2749
  %call.i564.i = call i32 @x264_encoder_encode(ptr noundef nonnull %call47.i, ptr noundef nonnull %nal.i.i, ptr noundef nonnull %i_nal.i.i, ptr noundef nonnull %pic.i, ptr noundef nonnull %pic_out.i.i) #16, !dbg !2755
  call void @llvm.dbg.value(metadata i32 %call.i564.i, metadata !2748, metadata !DIExpression()) #16, !dbg !2749
  %cmp.i565.i = icmp slt i32 %call.i564.i, 0, !dbg !2756
  br i1 %cmp.i565.i, label %Encode_frame.exit.thread.i, label %if.end.i567.i, !dbg !2758

Encode_frame.exit.thread.i:                       ; preds = %if.end209.i
  %214 = load ptr, ptr @stderr, align 8, !dbg !2759, !tbaa !580
  %215 = call i64 @fwrite(ptr nonnull @.str.389, i64 41, i64 1, ptr %214) #19, !dbg !2761
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i.i) #16, !dbg !2762
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i.i) #16, !dbg !2762
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i.i) #16, !dbg !2762
  call void @llvm.dbg.value(metadata i32 %call3.i.i, metadata !2370, metadata !DIExpression()) #16, !dbg !2394
  br label %Encode.exit, !dbg !2763

if.end.i567.i:                                    ; preds = %if.end209.i
  %tobool.not.i.i = icmp eq i32 %call.i564.i, 0, !dbg !2764
  br i1 %tobool.not.i.i, label %if.end215.thread.i, label %Encode_frame.exit.i, !dbg !2766

if.end215.thread.i:                               ; preds = %if.end.i567.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i.i) #16, !dbg !2762
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i.i) #16, !dbg !2762
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i.i) #16, !dbg !2762
  call void @llvm.dbg.value(metadata i32 %call3.i.i, metadata !2370, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %add217.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end225.i, !dbg !2767

Encode_frame.exit.i:                              ; preds = %if.end.i567.i
  %216 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 3), align 8, !dbg !2768, !tbaa !2770
  %217 = load ptr, ptr %nal.i.i, align 8, !dbg !2771, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %217, metadata !2746, metadata !DIExpression()) #16, !dbg !2749
  %p_payload.i.i = getelementptr inbounds %struct.x264_nal_t, ptr %217, i64 0, i32 3, !dbg !2772
  %218 = load ptr, ptr %p_payload.i.i, align 8, !dbg !2772, !tbaa !2773
  %call3.i.i = call i32 %216(ptr noundef %213, ptr noundef %218, i32 noundef %call.i564.i, ptr noundef nonnull %pic_out.i.i) #16, !dbg !2775
  call void @llvm.dbg.value(metadata i32 %call3.i.i, metadata !2748, metadata !DIExpression()) #16, !dbg !2749
  %219 = load i64, ptr %i_dts.i.i, align 8, !dbg !2776, !tbaa !2777
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i.i) #16, !dbg !2762
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i.i) #16, !dbg !2762
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i.i) #16, !dbg !2762
  call void @llvm.dbg.value(metadata i32 %call3.i.i, metadata !2370, metadata !DIExpression()) #16, !dbg !2394
  %cmp212.i = icmp slt i32 %call3.i.i, 0, !dbg !2778
  br i1 %cmp212.i, label %Encode.exit, label %if.end215.i, !dbg !2763

if.end215.i:                                      ; preds = %Encode_frame.exit.i
  %conv216649.i = zext i32 %call3.i.i to i64, !dbg !2780
  %add217.i = add nsw i64 %i_file.2671.i186, %conv216649.i, !dbg !2781
  call void @llvm.dbg.value(metadata i64 %add217.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %tobool218.not.i = icmp eq i32 %call3.i.i, 0, !dbg !2782
  br i1 %tobool218.not.i, label %if.end225.i, label %if.then219.i, !dbg !2767

if.then219.i:                                     ; preds = %if.end215.i
  %inc220.i = add nsw i32 %i_frame_output.0672.i185, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i32 %inc220.i, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  %cmp221.i = icmp eq i32 %i_frame_output.0672.i185, 0, !dbg !2786
  br i1 %cmp221.i, label %if.then223.i, label %if.end225.i, !dbg !2788

if.then223.i:                                     ; preds = %if.then219.i
  call void @llvm.dbg.value(metadata i64 %219, metadata !2372, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %219, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %219, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end225.i, !dbg !2789

if.end225.i:                                      ; preds = %if.then223.i, %if.then219.i, %if.end215.i, %if.end215.thread.i
  %add217615.i = phi i64 [ %add217.i, %if.then223.i ], [ %add217.i, %if.then219.i ], [ %add217.i, %if.end215.i ], [ %i_file.2671.i186, %if.end215.thread.i ]
  %last_dts.1606614.i = phi i64 [ %219, %if.then223.i ], [ %219, %if.then219.i ], [ %219, %if.end215.i ], [ %last_dts.0670.i187, %if.end215.thread.i ]
  %i_frame_output.1.i = phi i32 [ 1, %if.then223.i ], [ %inc220.i, %if.then219.i ], [ %i_frame_output.0672.i185, %if.end215.i ], [ %i_frame_output.0672.i185, %if.end215.thread.i ], !dbg !2790
  %prev_dts.1.i = phi i64 [ %219, %if.then223.i ], [ %last_dts.0670.i187, %if.then219.i ], [ %last_dts.0670.i187, %if.end215.i ], [ %last_dts.0670.i187, %if.end215.thread.i ], !dbg !2581
  %first_dts.1.i = phi i64 [ %219, %if.then223.i ], [ %first_dts.0674.i184, %if.then219.i ], [ %first_dts.0674.i184, %if.end215.i ], [ %first_dts.0674.i184, %if.end215.thread.i ], !dbg !2394
  call void @llvm.dbg.value(metadata i64 %first_dts.1.i, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %prev_dts.1.i, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_frame_output.1.i, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  %indvars.iv.next.i39 = add nuw i64 %indvars.iv.i29178, 1, !dbg !2791
  %indvars = trunc i64 %indvars.iv.next.i39 to i32, !dbg !2576
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i39, metadata !2364, metadata !DIExpression()) #16, !dbg !2394
  %220 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 4), align 8, !dbg !2792, !tbaa !2794
  %tobool227.not.i = icmp eq ptr %220, null, !dbg !2795
  br i1 %tobool227.not.i, label %if.end233.i, label %land.lhs.true228.i, !dbg !2796

land.lhs.true228.i:                               ; preds = %if.end225.i
  %221 = load ptr, ptr %hin.i, align 8, !dbg !2797, !tbaa !1061
  %call230.i = call i32 %220(ptr noundef nonnull %pic.i, ptr noundef %221) #16, !dbg !2798
  %tobool231.not.i = icmp eq i32 %call230.i, 0, !dbg !2798
  br i1 %tobool231.not.i, label %if.end233.i, label %for.end.loopexit.i.loopexit, !dbg !2799

if.end233.i:                                      ; preds = %land.lhs.true228.i, %if.end225.i
  %222 = load i32, ptr %opt, align 8, !dbg !2800, !tbaa !565
  %tobool235.not.i = icmp eq i32 %222, 0, !dbg !2802
  br i1 %tobool235.not.i, label %cleanup247.i, label %land.lhs.true236.i, !dbg !2803

land.lhs.true236.i:                               ; preds = %if.end233.i
  %rem237.i = srem i32 %i_frame_output.1.i, %cond26.i, !dbg !2804
  %cmp238.i = icmp eq i32 %rem237.i, 0, !dbg !2805
  %tobool241.i = icmp ne i32 %i_frame_output.1.i, 0
  %or.cond397.i = and i1 %tobool241.i, %cmp238.i, !dbg !2806
  br i1 %or.cond397.i, label %if.then242.i, label %cleanup247.i, !dbg !2806

if.then242.i:                                     ; preds = %land.lhs.true236.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !2372, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %call71.i, metadata !2807, metadata !DIExpression()) #16, !dbg !2824
  call void @llvm.dbg.value(metadata i32 %i_frame_output.1.i, metadata !2812, metadata !DIExpression()) #16, !dbg !2824
  call void @llvm.dbg.value(metadata i32 undef, metadata !2813, metadata !DIExpression()) #16, !dbg !2824
  call void @llvm.dbg.value(metadata i64 undef, metadata !2814, metadata !DIExpression()) #16, !dbg !2824
  call void @llvm.dbg.value(metadata ptr undef, metadata !2815, metadata !DIExpression()) #16, !dbg !2824
  call void @llvm.dbg.value(metadata i64 undef, metadata !2816, metadata !DIExpression()) #16, !dbg !2824
  call void @llvm.dbg.declare(metadata ptr undef, metadata !2817, metadata !DIExpression()) #16, !dbg !2826
  %call.i568.i = call i64 @x264_mdate() #16, !dbg !2827
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call.i568.i, i64 %call71.i), metadata !2821, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #16, !dbg !2824
  call void @llvm.dbg.value(metadata double undef, metadata !2822, metadata !DIExpression()) #16, !dbg !2824
  call void @llvm.dbg.declare(metadata ptr undef, metadata !2823, metadata !DIExpression()) #16, !dbg !2828
  br label %cleanup247.i, !dbg !2829

cleanup247.i:                                     ; preds = %if.then242.i, %land.lhs.true236.i, %if.end233.i
  call void @llvm.dbg.value(metadata double %pulldown_pts.1.i, metadata !2382, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i39, metadata !2364, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %largest_pts.0677.i182, metadata !2377, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %197, metadata !2376, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %pts_warning_cnt.2.i, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %first_dts.1.i, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %prev_dts.1.i, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_frame_output.1.i, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %add217615.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %.b561.i = load i1, ptr @b_ctrl_c, align 4, !dbg !2567
  %.b561.not.i = xor i1 %.b561.i, true, !dbg !2568
  %cmp112.i = icmp sgt i32 %i_frame_total.0592.i, %indvars
  %or.cond399.i = or i1 %tobool.not594.i, %cmp112.i
  %or.cond651.i = select i1 %.b561.not.i, i1 %or.cond399.i, i1 false, !dbg !2568
  br i1 %or.cond651.i, label %for.body.i31, label %for.end.loopexit.i.loopexit, !dbg !2568

for.end.loopexit.i.loopexit:                      ; preds = %cleanup247.i, %land.lhs.true228.i, %for.body.i31
  %phi.cast = trunc i64 %indvars.iv.next.i39 to i32, !dbg !2581
  br label %for.end.loopexit.i, !dbg !2581

for.end.loopexit.i:                               ; preds = %for.body.lr.ph.i, %for.end.loopexit.i.loopexit
  %indvars.iv.lcssa.sink.i = phi i32 [ %phi.cast, %for.end.loopexit.i.loopexit ], [ 0, %for.body.lr.ph.i ]
  %last_dts.2.ph.i = phi i64 [ %last_dts.1606614.i, %for.end.loopexit.i.loopexit ], [ 0, %for.body.lr.ph.i ]
  %i_file.4.ph.i = phi i64 [ %add217615.i, %for.end.loopexit.i.loopexit ], [ %i_file.1.i, %for.body.lr.ph.i ]
  %i_frame_output.3.ph.i = phi i32 [ %i_frame_output.1.i, %for.end.loopexit.i.loopexit ], [ 0, %for.body.lr.ph.i ]
  %prev_dts.3.ph.i = phi i64 [ %prev_dts.1.i, %for.end.loopexit.i.loopexit ], [ 0, %for.body.lr.ph.i ]
  %first_dts.3.ph.i = phi i64 [ %first_dts.1.i, %for.end.loopexit.i.loopexit ], [ 0, %for.body.lr.ph.i ]
  %pts_warning_cnt.3.ph.i = phi i32 [ %pts_warning_cnt.2.i, %for.end.loopexit.i.loopexit ], [ 0, %for.body.lr.ph.i ]
  %largest_pts.1.ph.i = phi i64 [ %197, %for.end.loopexit.i.loopexit ], [ -1, %for.body.lr.ph.i ]
  %second_largest_pts.1.ph.i = phi i64 [ %largest_pts.0677.i182, %for.end.loopexit.i.loopexit ], [ -1, %for.body.lr.ph.i ]
  %.b560710.pre.i = load i1, ptr @b_ctrl_c, align 4, !dbg !2830
  call void @llvm.dbg.value(metadata i32 0, metadata !2364, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2377, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2376, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %i_file.1.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  br i1 %.b560710.pre.i, label %while.end.i, label %land.rhs251.lr.ph.i, !dbg !2831

for.end.i40:                                      ; preds = %if.end109.i
  call void @llvm.dbg.value(metadata i32 0, metadata !2364, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2377, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 -1, metadata !2376, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 0, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %i_file.1.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  br i1 %.b561665.i, label %if.then304.i44, label %land.rhs251.lr.ph.i, !dbg !2831

land.rhs251.lr.ph.i:                              ; preds = %for.end.i40, %for.end.loopexit.i
  %i_frame.2744.i = phi i32 [ %indvars.iv.lcssa.sink.i, %for.end.loopexit.i ], [ 0, %for.end.i40 ]
  %second_largest_pts.1742.i = phi i64 [ %second_largest_pts.1.ph.i, %for.end.loopexit.i ], [ -1, %for.end.i40 ]
  %largest_pts.1740.i = phi i64 [ %largest_pts.1.ph.i, %for.end.loopexit.i ], [ -1, %for.end.i40 ]
  %pts_warning_cnt.3738.i = phi i32 [ %pts_warning_cnt.3.ph.i, %for.end.loopexit.i ], [ 0, %for.end.i40 ]
  %first_dts.3737.i = phi i64 [ %first_dts.3.ph.i, %for.end.loopexit.i ], [ 0, %for.end.i40 ]
  %prev_dts.3736.i = phi i64 [ %prev_dts.3.ph.i, %for.end.loopexit.i ], [ 0, %for.end.i40 ]
  %i_frame_output.3735.i = phi i32 [ %i_frame_output.3.ph.i, %for.end.loopexit.i ], [ 0, %for.end.i40 ]
  %i_file.4734.i = phi i64 [ %i_file.4.ph.i, %for.end.loopexit.i ], [ %i_file.1.i, %for.end.i40 ]
  %last_dts.2733.i = phi i64 [ %last_dts.2.ph.i, %for.end.loopexit.i ], [ 0, %for.end.i40 ]
  %i_dts.i579.i = getelementptr inbounds %struct.x264_picture_t, ptr %pic_out.i569.i, i64 0, i32 5
  call void @llvm.dbg.value(metadata i64 %first_dts.3737.i, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %prev_dts.3736.i, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_frame_output.3735.i, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %i_file.4734.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %call252.i215 = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %call47.i) #16, !dbg !2832
  %tobool253.not.i216 = icmp eq i32 %call252.i215, 0, !dbg !2831
  br i1 %tobool253.not.i216, label %while.end.i, label %while.body.i41, !dbg !2833

land.rhs251.i:                                    ; preds = %if.end283.i
  call void @llvm.dbg.value(metadata i64 %first_dts.5.i, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %prev_dts.5.i, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_frame_output.5.i, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %add262647.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %call252.i = call i32 @x264_encoder_delayed_frames(ptr noundef nonnull %call47.i) #16, !dbg !2832
  %tobool253.not.i = icmp eq i32 %call252.i, 0, !dbg !2831
  br i1 %tobool253.not.i, label %while.end.i, label %while.body.i41, !dbg !2833, !llvm.loop !2834

while.body.i41:                                   ; preds = %land.rhs251.lr.ph.i, %land.rhs251.i
  %last_dts.3711.i220 = phi i64 [ %last_dts.4639646.i, %land.rhs251.i ], [ %last_dts.2733.i, %land.rhs251.lr.ph.i ]
  %i_file.5712.i219 = phi i64 [ %add262647.i, %land.rhs251.i ], [ %i_file.4734.i, %land.rhs251.lr.ph.i ]
  %i_frame_output.4713.i218 = phi i32 [ %i_frame_output.5.i, %land.rhs251.i ], [ %i_frame_output.3735.i, %land.rhs251.lr.ph.i ]
  %first_dts.4715.i217 = phi i64 [ %first_dts.5.i, %land.rhs251.i ], [ %first_dts.3737.i, %land.rhs251.lr.ph.i ]
  call void @llvm.dbg.value(metadata i64 %i_file.5712.i219, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_frame_output.4713.i218, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %first_dts.4715.i217, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %last_dts.3711.i220, metadata !2372, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %last_dts.3711.i220, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  %223 = load ptr, ptr %hout.i, align 8, !dbg !2836, !tbaa !2495
  call void @llvm.dbg.value(metadata ptr %call47.i, metadata !2736, metadata !DIExpression()) #16, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %223, metadata !2742, metadata !DIExpression()) #16, !dbg !2838
  call void @llvm.dbg.value(metadata ptr null, metadata !2743, metadata !DIExpression()) #16, !dbg !2838
  call void @llvm.dbg.value(metadata ptr undef, metadata !2744, metadata !DIExpression()) #16, !dbg !2838
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %pic_out.i569.i) #16, !dbg !2840
  call void @llvm.dbg.declare(metadata ptr %pic_out.i569.i, metadata !2745, metadata !DIExpression()) #16, !dbg !2841
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nal.i570.i) #16, !dbg !2842
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_nal.i571.i) #16, !dbg !2843
  call void @llvm.dbg.value(metadata i32 0, metadata !2748, metadata !DIExpression()) #16, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %nal.i570.i, metadata !2746, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %i_nal.i571.i, metadata !2747, metadata !DIExpression(DW_OP_deref)) #16, !dbg !2838
  %call.i572.i = call i32 @x264_encoder_encode(ptr noundef nonnull %call47.i, ptr noundef nonnull %nal.i570.i, ptr noundef nonnull %i_nal.i571.i, ptr noundef null, ptr noundef nonnull %pic_out.i569.i) #16, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %call.i572.i, metadata !2748, metadata !DIExpression()) #16, !dbg !2838
  %cmp.i573.i = icmp slt i32 %call.i572.i, 0, !dbg !2845
  br i1 %cmp.i573.i, label %Encode_frame.exit582.thread.i, label %if.end.i576.i, !dbg !2846

Encode_frame.exit582.thread.i:                    ; preds = %while.body.i41
  %224 = load ptr, ptr @stderr, align 8, !dbg !2847, !tbaa !580
  %225 = call i64 @fwrite(ptr nonnull @.str.389, i64 41, i64 1, ptr %224) #19, !dbg !2848
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i571.i) #16, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i570.i) #16, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i569.i) #16, !dbg !2849
  call void @llvm.dbg.value(metadata i32 %call3.i578.i, metadata !2370, metadata !DIExpression()) #16, !dbg !2394
  br label %Encode.exit, !dbg !2850

if.end.i576.i:                                    ; preds = %while.body.i41
  %tobool.not.i575.i = icmp eq i32 %call.i572.i, 0, !dbg !2851
  br i1 %tobool.not.i575.i, label %if.end260.thread.i, label %Encode_frame.exit582.i, !dbg !2852

if.end260.thread.i:                               ; preds = %if.end.i576.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i571.i) #16, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i570.i) #16, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i569.i) #16, !dbg !2849
  call void @llvm.dbg.value(metadata i32 %call3.i578.i, metadata !2370, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %add262.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end270.i43, !dbg !2853

Encode_frame.exit582.i:                           ; preds = %if.end.i576.i
  %226 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 3), align 8, !dbg !2854, !tbaa !2770
  %227 = load ptr, ptr %nal.i570.i, align 8, !dbg !2855, !tbaa !580
  call void @llvm.dbg.value(metadata ptr %227, metadata !2746, metadata !DIExpression()) #16, !dbg !2838
  %p_payload.i577.i = getelementptr inbounds %struct.x264_nal_t, ptr %227, i64 0, i32 3, !dbg !2856
  %228 = load ptr, ptr %p_payload.i577.i, align 8, !dbg !2856, !tbaa !2773
  %call3.i578.i = call i32 %226(ptr noundef %223, ptr noundef %228, i32 noundef %call.i572.i, ptr noundef nonnull %pic_out.i569.i) #16, !dbg !2857
  call void @llvm.dbg.value(metadata i32 %call3.i578.i, metadata !2748, metadata !DIExpression()) #16, !dbg !2838
  %229 = load i64, ptr %i_dts.i579.i, align 8, !dbg !2858, !tbaa !2777
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_nal.i571.i) #16, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nal.i570.i) #16, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic_out.i569.i) #16, !dbg !2849
  call void @llvm.dbg.value(metadata i32 %call3.i578.i, metadata !2370, metadata !DIExpression()) #16, !dbg !2394
  %cmp257.i = icmp slt i32 %call3.i578.i, 0, !dbg !2859
  br i1 %cmp257.i, label %Encode.exit, label %if.end260.i, !dbg !2850

if.end260.i:                                      ; preds = %Encode_frame.exit582.i
  %conv261648.i = zext i32 %call3.i578.i to i64, !dbg !2861
  %add262.i = add nsw i64 %i_file.5712.i219, %conv261648.i, !dbg !2862
  call void @llvm.dbg.value(metadata i64 %add262.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %tobool263.not.i = icmp eq i32 %call3.i578.i, 0, !dbg !2863
  br i1 %tobool263.not.i, label %if.end270.i43, label %if.then264.i, !dbg !2853

if.then264.i:                                     ; preds = %if.end260.i
  %inc265.i = add nsw i32 %i_frame_output.4713.i218, 1, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %inc265.i, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  %cmp266.i = icmp eq i32 %i_frame_output.4713.i218, 0, !dbg !2867
  br i1 %cmp266.i, label %if.then268.i, label %if.end270.i43, !dbg !2869

if.then268.i:                                     ; preds = %if.then264.i
  call void @llvm.dbg.value(metadata i64 %229, metadata !2372, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %229, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %229, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end270.i43, !dbg !2870

if.end270.i43:                                    ; preds = %if.then268.i, %if.then264.i, %if.end260.i, %if.end260.thread.i
  %add262647.i = phi i64 [ %add262.i, %if.then268.i ], [ %add262.i, %if.then264.i ], [ %add262.i, %if.end260.i ], [ %i_file.5712.i219, %if.end260.thread.i ]
  %last_dts.4639646.i = phi i64 [ %229, %if.then268.i ], [ %229, %if.then264.i ], [ %229, %if.end260.i ], [ %last_dts.3711.i220, %if.end260.thread.i ]
  %i_frame_output.5.i = phi i32 [ 1, %if.then268.i ], [ %inc265.i, %if.then264.i ], [ %i_frame_output.4713.i218, %if.end260.i ], [ %i_frame_output.4713.i218, %if.end260.thread.i ], !dbg !2394
  %prev_dts.5.i = phi i64 [ %229, %if.then268.i ], [ %last_dts.3711.i220, %if.then264.i ], [ %last_dts.3711.i220, %if.end260.i ], [ %last_dts.3711.i220, %if.end260.thread.i ], !dbg !2871
  %first_dts.5.i = phi i64 [ %229, %if.then268.i ], [ %first_dts.4715.i217, %if.then264.i ], [ %first_dts.4715.i217, %if.end260.i ], [ %first_dts.4715.i217, %if.end260.thread.i ], !dbg !2394
  call void @llvm.dbg.value(metadata i64 %first_dts.5.i, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %prev_dts.5.i, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_frame_output.5.i, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  %230 = load i32, ptr %opt, align 8, !dbg !2872, !tbaa !565
  %tobool272.not.i42 = icmp eq i32 %230, 0, !dbg !2874
  br i1 %tobool272.not.i42, label %if.end283.i, label %land.lhs.true273.i, !dbg !2875

land.lhs.true273.i:                               ; preds = %if.end270.i43
  %rem274.i = srem i32 %i_frame_output.5.i, %cond26.i, !dbg !2876
  %cmp275.i = icmp eq i32 %rem274.i, 0, !dbg !2877
  %tobool278.i = icmp ne i32 %i_frame_output.5.i, 0
  %or.cond398.i = and i1 %tobool278.i, %cmp275.i, !dbg !2878
  br i1 %or.cond398.i, label %if.then279.i, label %if.end283.i, !dbg !2878

if.then279.i:                                     ; preds = %land.lhs.true273.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !2372, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %call71.i, metadata !2807, metadata !DIExpression()) #16, !dbg !2879
  call void @llvm.dbg.value(metadata i32 %i_frame_output.5.i, metadata !2812, metadata !DIExpression()) #16, !dbg !2879
  call void @llvm.dbg.value(metadata i32 undef, metadata !2813, metadata !DIExpression()) #16, !dbg !2879
  call void @llvm.dbg.value(metadata i64 undef, metadata !2814, metadata !DIExpression()) #16, !dbg !2879
  call void @llvm.dbg.value(metadata ptr undef, metadata !2815, metadata !DIExpression()) #16, !dbg !2879
  call void @llvm.dbg.value(metadata i64 undef, metadata !2816, metadata !DIExpression()) #16, !dbg !2879
  call void @llvm.dbg.declare(metadata ptr undef, metadata !2817, metadata !DIExpression()) #16, !dbg !2881
  %call.i583.i = call i64 @x264_mdate() #16, !dbg !2882
  call void @llvm.dbg.value(metadata !DIArgList(i64 %call.i583.i, i64 %call71.i), metadata !2821, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value)) #16, !dbg !2879
  call void @llvm.dbg.value(metadata double undef, metadata !2822, metadata !DIExpression()) #16, !dbg !2879
  call void @llvm.dbg.declare(metadata ptr undef, metadata !2823, metadata !DIExpression()) #16, !dbg !2883
  br label %if.end283.i, !dbg !2884

if.end283.i:                                      ; preds = %if.then279.i, %land.lhs.true273.i, %if.end270.i43
  call void @llvm.dbg.value(metadata i64 %first_dts.5.i, metadata !2374, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %prev_dts.5.i, metadata !2373, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i32 %i_frame_output.5.i, metadata !2366, metadata !DIExpression()) #16, !dbg !2394
  call void @llvm.dbg.value(metadata i64 %add262647.i, metadata !2369, metadata !DIExpression()) #16, !dbg !2394
  %.b560.i = load i1, ptr @b_ctrl_c, align 4, !dbg !2830
  br i1 %.b560.i, label %while.end.i, label %land.rhs251.i, !dbg !2831, !llvm.loop !2834

while.end.i:                                      ; preds = %land.rhs251.i, %if.end283.i, %land.rhs251.lr.ph.i, %for.end.loopexit.i
  %i_frame.2745.i = phi i32 [ %indvars.iv.lcssa.sink.i, %for.end.loopexit.i ], [ %i_frame.2744.i, %land.rhs251.lr.ph.i ], [ %i_frame.2744.i, %if.end283.i ], [ %i_frame.2744.i, %land.rhs251.i ]
  %second_largest_pts.1743.i = phi i64 [ %second_largest_pts.1.ph.i, %for.end.loopexit.i ], [ %second_largest_pts.1742.i, %land.rhs251.lr.ph.i ], [ %second_largest_pts.1742.i, %if.end283.i ], [ %second_largest_pts.1742.i, %land.rhs251.i ]
  %largest_pts.1741.i = phi i64 [ %largest_pts.1.ph.i, %for.end.loopexit.i ], [ %largest_pts.1740.i, %land.rhs251.lr.ph.i ], [ %largest_pts.1740.i, %if.end283.i ], [ %largest_pts.1740.i, %land.rhs251.i ]
  %pts_warning_cnt.3739.i = phi i32 [ %pts_warning_cnt.3.ph.i, %for.end.loopexit.i ], [ %pts_warning_cnt.3738.i, %land.rhs251.lr.ph.i ], [ %pts_warning_cnt.3738.i, %if.end283.i ], [ %pts_warning_cnt.3738.i, %land.rhs251.i ]
  %last_dts.3.lcssa.i = phi i64 [ %last_dts.2.ph.i, %for.end.loopexit.i ], [ %last_dts.2733.i, %land.rhs251.lr.ph.i ], [ %last_dts.4639646.i, %if.end283.i ], [ %last_dts.4639646.i, %land.rhs251.i ], !dbg !2885
  %i_file.5.lcssa.i = phi i64 [ %i_file.4.ph.i, %for.end.loopexit.i ], [ %i_file.4734.i, %land.rhs251.lr.ph.i ], [ %add262647.i, %if.end283.i ], [ %add262647.i, %land.rhs251.i ], !dbg !2394
  %i_frame_output.4.lcssa.i = phi i32 [ %i_frame_output.3.ph.i, %for.end.loopexit.i ], [ %i_frame_output.3735.i, %land.rhs251.lr.ph.i ], [ %i_frame_output.5.i, %if.end283.i ], [ %i_frame_output.5.i, %land.rhs251.i ], !dbg !2394
  %prev_dts.4.lcssa.i = phi i64 [ %prev_dts.3.ph.i, %for.end.loopexit.i ], [ %prev_dts.3736.i, %land.rhs251.lr.ph.i ], [ %prev_dts.5.i, %if.end283.i ], [ %prev_dts.5.i, %land.rhs251.i ], !dbg !2394
  %first_dts.4.lcssa.i = phi i64 [ %first_dts.3.ph.i, %for.end.loopexit.i ], [ %first_dts.3737.i, %land.rhs251.lr.ph.i ], [ %first_dts.5.i, %if.end283.i ], [ %first_dts.5.i, %land.rhs251.i ], !dbg !2394
  %cmp284.i = icmp sgt i32 %pts_warning_cnt.3739.i, 2, !dbg !2886
  %231 = load i32, ptr %i_log_level80.i, align 8
  %cmp288.i = icmp slt i32 %231, 3
  %or.cond50 = select i1 %cmp284.i, i1 %cmp288.i, i1 false, !dbg !2888
  br i1 %or.cond50, label %if.then290.i, label %if.end293.i, !dbg !2888

if.then290.i:                                     ; preds = %while.end.i
  %232 = load ptr, ptr @stderr, align 8, !dbg !2889, !tbaa !580
  %sub291.i = add nsw i32 %pts_warning_cnt.3739.i, -3, !dbg !2890
  %call292.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %232, ptr noundef nonnull @.str.382, i32 noundef %sub291.i) #19, !dbg !2891
  br label %if.end293.i, !dbg !2891

if.end293.i:                                      ; preds = %if.then290.i, %while.end.i
  %cmp294.i = icmp eq i32 %i_frame_output.4.lcssa.i, 1, !dbg !2892
  br i1 %cmp294.i, label %if.then296.i, label %if.else302.i, !dbg !2894

if.then296.i:                                     ; preds = %if.end293.i
  %233 = load i32, ptr %i_fps_den.i, align 8, !dbg !2895, !tbaa !938
  %conv298.i = uitofp i32 %233 to double, !dbg !2896
  call void @llvm.dbg.value(metadata double undef, metadata !2379, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end326.i, !dbg !2897

if.else302.i:                                     ; preds = %if.end293.i
  %.b559.i.pre = load i1, ptr @b_ctrl_c, align 4, !dbg !2898
  br i1 %.b559.i.pre, label %if.then304.i44, label %if.else315.i, !dbg !2900

if.then304.i44:                                   ; preds = %for.end.i40, %if.else302.i
  %first_dts.4.lcssa763773.i372 = phi i64 [ %first_dts.4.lcssa.i, %if.else302.i ], [ 0, %for.end.i40 ]
  %prev_dts.4.lcssa762774.i371 = phi i64 [ %prev_dts.4.lcssa.i, %if.else302.i ], [ 0, %for.end.i40 ]
  %i_frame_output.4.lcssa761776.i370 = phi i32 [ %i_frame_output.4.lcssa.i, %if.else302.i ], [ 0, %for.end.i40 ]
  %i_file.5.lcssa760778.i369 = phi i64 [ %i_file.5.lcssa.i, %if.else302.i ], [ %i_file.1.i, %for.end.i40 ]
  %last_dts.3.lcssa759779.i368 = phi i64 [ %last_dts.3.lcssa.i, %if.else302.i ], [ 0, %for.end.i40 ]
  %largest_pts.1741758781.i367 = phi i64 [ %largest_pts.1741.i, %if.else302.i ], [ -1, %for.end.i40 ]
  %second_largest_pts.1743757783.i366 = phi i64 [ %second_largest_pts.1743.i, %if.else302.i ], [ -1, %for.end.i40 ]
  %i_frame.2745756785.i365 = phi i32 [ %i_frame.2745.i, %if.else302.i ], [ 0, %for.end.i40 ]
  call void @llvm.dbg.value(metadata i64 %last_dts.3.lcssa.i, metadata !2372, metadata !DIExpression()) #16, !dbg !2394
  %mul305.i = shl nsw i64 %last_dts.3.lcssa759779.i368, 1, !dbg !2901
  %234 = add i64 %prev_dts.4.lcssa762774.i371, %first_dts.4.lcssa763773.i372, !dbg !2902
  %sub307.i = sub i64 %mul305.i, %234, !dbg !2902
  %conv308.i = sitofp i64 %sub307.i to double, !dbg !2903
  %235 = load i32, ptr %104, align 4, !dbg !2904, !tbaa !1186
  %conv310.i = uitofp i32 %235 to double, !dbg !2905
  %mul311.i = fmul double %conv308.i, %conv310.i, !dbg !2906
  call void @llvm.dbg.value(metadata double %div314.i, metadata !2379, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end326.i, !dbg !2907

if.else315.i:                                     ; preds = %if.else302.i
  %mul316.i = shl nsw i64 %largest_pts.1741.i, 1, !dbg !2908
  %sub317.i = sub nsw i64 %mul316.i, %second_largest_pts.1743.i, !dbg !2909
  %conv318.i = sitofp i64 %sub317.i to double, !dbg !2910
  %236 = load i32, ptr %104, align 4, !dbg !2911, !tbaa !1186
  %conv320.i = uitofp i32 %236 to double, !dbg !2912
  %mul321.i = fmul double %conv318.i, %conv320.i, !dbg !2913
  call void @llvm.dbg.value(metadata double undef, metadata !2379, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end326.i

if.end326.i:                                      ; preds = %if.else315.i, %if.then304.i44, %if.then296.i
  %.sink.in.i = phi ptr [ %105, %if.then304.i44 ], [ %105, %if.else315.i ], [ %i_fps_num.i, %if.then296.i ]
  %mul311.sink.i = phi double [ %mul311.i, %if.then304.i44 ], [ %mul321.i, %if.else315.i ], [ %conv298.i, %if.then296.i ]
  %i_frame.2745756784.i = phi i32 [ %i_frame.2745756785.i365, %if.then304.i44 ], [ %i_frame.2745.i, %if.else315.i ], [ %i_frame.2745.i, %if.then296.i ]
  %second_largest_pts.1743757782.i = phi i64 [ %second_largest_pts.1743757783.i366, %if.then304.i44 ], [ %second_largest_pts.1743.i, %if.else315.i ], [ %second_largest_pts.1743.i, %if.then296.i ]
  %largest_pts.1741758780.i = phi i64 [ %largest_pts.1741758781.i367, %if.then304.i44 ], [ %largest_pts.1741.i, %if.else315.i ], [ %largest_pts.1741.i, %if.then296.i ]
  %i_file.5.lcssa760777.i = phi i64 [ %i_file.5.lcssa760778.i369, %if.then304.i44 ], [ %i_file.5.lcssa.i, %if.else315.i ], [ %i_file.5.lcssa.i, %if.then296.i ]
  %i_frame_output.4.lcssa761775.i = phi i32 [ %i_frame_output.4.lcssa761776.i370, %if.then304.i44 ], [ %i_frame_output.4.lcssa.i, %if.else315.i ], [ 1, %if.then296.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !dbg !2914, !tbaa !573
  %conv313.i = uitofp i32 %.sink.i to double, !dbg !2914
  %div314.i = fdiv double %mul311.sink.i, %conv313.i, !dbg !2914
  call void @llvm.dbg.value(metadata double %div314.i, metadata !2379, metadata !DIExpression()) #16, !dbg !2394
  %237 = load i32, ptr %i_pulldown.i, align 8, !dbg !2915, !tbaa !2448
  %tobool328.not.i = icmp ne i32 %237, 0, !dbg !2917
  %238 = load i32, ptr %b_vfr_input.i, align 8
  %tobool331.not.i45 = icmp eq i32 %238, 0
  %or.cond51 = select i1 %tobool328.not.i, i1 %tobool331.not.i45, i1 false, !dbg !2918
  br i1 %or.cond51, label %if.end335.i, label %if.then332.i46, !dbg !2918

if.then332.i46:                                   ; preds = %if.end326.i
  %conv333.i = sitofp i32 %div56.i to double, !dbg !2919
  %mul334.i = fmul double %div314.i, %conv333.i, !dbg !2920
  call void @llvm.dbg.value(metadata double %mul334.i, metadata !2379, metadata !DIExpression()) #16, !dbg !2394
  br label %if.end335.i, !dbg !2921

if.end335.i:                                      ; preds = %if.end326.i, %if.then332.i46
  %duration.1.i = phi double [ %mul334.i, %if.then332.i46 ], [ %div314.i, %if.end326.i ], !dbg !2394
  call void @llvm.dbg.value(metadata double %duration.1.i, metadata !2379, metadata !DIExpression()) #16, !dbg !2394
  %call336.i = call i64 @x264_mdate() #16, !dbg !2922
  call void @llvm.dbg.value(metadata i64 %call336.i, metadata !2368, metadata !DIExpression()) #16, !dbg !2394
  %239 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 5), align 8, !dbg !2923, !tbaa !2924
  call void %239(ptr noundef nonnull %pic.i) #16, !dbg !2925
  %240 = load i32, ptr %opt, align 8, !dbg !2926, !tbaa !565
  %tobool338.not.i = icmp eq i32 %240, 0, !dbg !2928
  br i1 %tobool338.not.i, label %if.end341.i, label %if.then339.i, !dbg !2929

if.then339.i:                                     ; preds = %if.end335.i
  %241 = load ptr, ptr @stderr, align 8, !dbg !2930, !tbaa !580
  %242 = call i64 @fwrite(ptr nonnull @.str.383, i64 80, i64 1, ptr %241) #19, !dbg !2931
  br label %if.end341.i, !dbg !2931

if.end341.i:                                      ; preds = %if.then339.i, %if.end335.i
  call void @x264_encoder_close(ptr noundef nonnull %call47.i) #16, !dbg !2932
  %243 = load ptr, ptr @stderr, align 8, !dbg !2933, !tbaa !580
  %fputc.i = call i32 @fputc(i32 10, ptr %243) #16, !dbg !2934
  %.b.i = load i1, ptr @b_ctrl_c, align 4, !dbg !2935
  br i1 %.b.i, label %if.then344.i, label %if.end348.i, !dbg !2937

if.then344.i:                                     ; preds = %if.end341.i
  %244 = load ptr, ptr @stderr, align 8, !dbg !2938, !tbaa !580
  %245 = load i32, ptr %i_seek.i, align 4, !dbg !2939, !tbaa !653
  %add346.i = add nsw i32 %245, %i_frame.2745756784.i, !dbg !2940
  %call347.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.384, i32 noundef %add346.i, i32 noundef %i_frame_output.4.lcssa761775.i) #19, !dbg !2941
  br label %if.end348.i, !dbg !2941

if.end348.i:                                      ; preds = %if.then344.i, %if.end341.i
  %246 = load ptr, ptr %tcfile_out.i, align 8, !dbg !2942, !tbaa !736
  %tobool350.not.i = icmp eq ptr %246, null, !dbg !2944
  br i1 %tobool350.not.i, label %if.end355.i, label %if.then351.i, !dbg !2945

if.then351.i:                                     ; preds = %if.end348.i
  %call353.i = call i32 @fclose(ptr noundef nonnull %246) #16, !dbg !2946
  store ptr null, ptr %tcfile_out.i, align 8, !dbg !2948, !tbaa !736
  br label %if.end355.i, !dbg !2949

if.end355.i:                                      ; preds = %if.then351.i, %if.end348.i
  %247 = load ptr, ptr getelementptr inbounds (%struct.cli_input_t, ptr @input, i64 0, i32 6), align 8, !dbg !2950, !tbaa !2484
  %248 = load ptr, ptr %hin.i, align 8, !dbg !2951, !tbaa !1061
  %call357.i = call i32 %247(ptr noundef %248) #16, !dbg !2952
  %249 = load ptr, ptr getelementptr inbounds (%struct.cli_output_t, ptr @output, i64 0, i32 4), align 8, !dbg !2953, !tbaa !2505
  %250 = load ptr, ptr %hout.i, align 8, !dbg !2954, !tbaa !2495
  %call359.i = call i32 %249(ptr noundef %250, i64 noundef %largest_pts.1741758780.i, i64 noundef %second_largest_pts.1743757782.i) #16, !dbg !2955
  %cmp360.i = icmp sgt i32 %i_frame_output.4.lcssa761775.i, 0, !dbg !2956
  br i1 %cmp360.i, label %if.then362.i, label %Encode.exit, !dbg !2957

if.then362.i:                                     ; preds = %if.end355.i
  %conv363.i = sitofp i32 %i_frame_output.4.lcssa761775.i to double, !dbg !2958
  %mul364.i = fmul double %conv363.i, 1.000000e+06, !dbg !2959
  %sub365.i = sub nsw i64 %call336.i, %call71.i, !dbg !2960
  %conv366.i = sitofp i64 %sub365.i to double, !dbg !2961
  %div367.i = fdiv double %mul364.i, %conv366.i, !dbg !2962
  call void @llvm.dbg.value(metadata double %div367.i, metadata !2391, metadata !DIExpression()) #16, !dbg !2963
  %251 = load ptr, ptr @stderr, align 8, !dbg !2964, !tbaa !580
  %conv368.i = sitofp i64 %i_file.5.lcssa760777.i to double, !dbg !2965
  %mul369.i = fmul double %conv368.i, 8.000000e+00, !dbg !2966
  %mul370.i = fmul double %duration.1.i, 1.000000e+03, !dbg !2967
  %div371.i = fdiv double %mul369.i, %mul370.i, !dbg !2968
  %call372.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %251, ptr noundef nonnull @.str.385, i32 noundef %i_frame_output.4.lcssa761775.i, double noundef %div367.i, double noundef %div371.i) #19, !dbg !2969
  br label %Encode.exit, !dbg !2970

Encode.exit:                                      ; preds = %Encode_frame.exit.i, %Encode_frame.exit582.i, %if.then37.i, %if.then50.i, %if.then59.i, %if.then68.i, %if.then85.i, %cleanup.thread.i, %cleanup.i25, %Encode_frame.exit.thread.i, %Encode_frame.exit582.thread.i, %if.end355.i, %if.then362.i
  %retval.4.i = phi i32 [ -1, %if.then50.i ], [ -1, %if.then59.i ], [ -1, %if.then68.i ], [ -1, %if.then85.i ], [ -1, %cleanup.i25 ], [ -1, %if.then37.i ], [ 0, %if.then362.i ], [ 0, %if.end355.i ], [ -1, %cleanup.thread.i ], [ -1, %Encode_frame.exit582.thread.i ], [ -1, %Encode_frame.exit.thread.i ], [ -1, %Encode_frame.exit582.i ], [ -1, %Encode_frame.exit.i ], !dbg !2394
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %pic.i) #16, !dbg !2971
  call void @llvm.dbg.value(metadata i32 %retval.4.i, metadata !489, metadata !DIExpression()), !dbg !490
  br label %cleanup, !dbg !2972

cleanup:                                          ; preds = %Parse.exit.thread, %Encode.exit
  %retval.0 = phi i32 [ %retval.4.i, %Encode.exit ], [ -1, %Parse.exit.thread ], !dbg !490
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %opt) #16, !dbg !2973
  call void @llvm.lifetime.end.p0(i64 704, ptr nonnull %param) #16, !dbg !2973
  ret i32 %retval.0, !dbg !2973
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare !dbg !2974 ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define internal void @SigIntHandler(i32 noundef %a) #4 !dbg !2983 {
entry:
  call void @llvm.dbg.value(metadata i32 %a, metadata !2985, metadata !DIExpression()), !dbg !2986
  store i1 true, ptr @b_ctrl_c, align 4, !dbg !2987
  ret void, !dbg !2988
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

declare !dbg !2989 void @x264_param_default(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare !dbg !2992 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare !dbg !2999 i32 @x264_param_default_preset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @Help(ptr noundef readonly %defaults, i32 noundef %longhelp) unnamed_addr #9 !dbg !3002 {
entry:
  %buf = alloca [50 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %defaults, metadata !3006, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i32 %longhelp, metadata !3007, metadata !DIExpression()), !dbg !3012
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %buf) #16, !dbg !3013
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !3008, metadata !DIExpression()), !dbg !3014
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.168, i32 noundef 96, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.170), !dbg !3015
  %puts = tail call i32 @puts(ptr nonnull @str.390), !dbg !3016
  %putchar = tail call i32 @putchar(i32 10), !dbg !3017
  %puts847 = tail call i32 @puts(ptr nonnull @str.391), !dbg !3018
  %puts848 = tail call i32 @puts(ptr nonnull @str.392), !dbg !3019
  %putchar849 = tail call i32 @putchar(i32 10), !dbg !3020
  %puts850 = tail call i32 @puts(ptr nonnull @str.393), !dbg !3021
  %puts851 = tail call i32 @puts(ptr nonnull @str.394), !dbg !3022
  %puts852 = tail call i32 @puts(ptr nonnull @str.395), !dbg !3023
  %putchar853 = tail call i32 @putchar(i32 10), !dbg !3024
  %puts854 = tail call i32 @puts(ptr nonnull @str.396), !dbg !3025
  %puts855 = tail call i32 @puts(ptr nonnull @str.397), !dbg !3026
  %putchar856 = tail call i32 @putchar(i32 10), !dbg !3027
  %puts857 = tail call i32 @puts(ptr nonnull @str.398), !dbg !3028
  %puts858 = tail call i32 @puts(ptr nonnull @str.399), !dbg !3029
  %putchar859 = tail call i32 @putchar(i32 10), !dbg !3030
  %puts860 = tail call i32 @puts(ptr nonnull @str.400), !dbg !3031
  %puts861 = tail call i32 @puts(ptr nonnull @str.401), !dbg !3032
  %putchar862 = tail call i32 @putchar(i32 10), !dbg !3033
  %puts863 = tail call i32 @puts(ptr nonnull @str.402), !dbg !3034
  %putchar864 = tail call i32 @putchar(i32 10), !dbg !3035
  %puts865 = tail call i32 @puts(ptr nonnull @str.403), !dbg !3036
  %cmp = icmp eq i32 %longhelp, 2, !dbg !3037
  br i1 %cmp, label %if.then39, label %if.else41, !dbg !3039

if.then39:                                        ; preds = %entry
  %puts969 = tail call i32 @puts(ptr nonnull @str.493), !dbg !3037
  %puts8671427 = tail call i32 @puts(ptr nonnull @str.405), !dbg !3040
  %puts968 = tail call i32 @puts(ptr nonnull @str.492), !dbg !3041
  %puts8691428 = tail call i32 @puts(ptr nonnull @str.407), !dbg !3043
  %puts967 = tail call i32 @puts(ptr nonnull @str.491), !dbg !3044
  br label %if.end46.sink.split, !dbg !3046

if.else41:                                        ; preds = %entry
  %puts866 = tail call i32 @puts(ptr nonnull @str.404), !dbg !3048
  %puts867 = tail call i32 @puts(ptr nonnull @str.405), !dbg !3040
  %puts868 = tail call i32 @puts(ptr nonnull @str.406), !dbg !3049
  %puts869 = tail call i32 @puts(ptr nonnull @str.407), !dbg !3043
  %puts870 = tail call i32 @puts(ptr nonnull @str.408), !dbg !3050
  %cmp42 = icmp sgt i32 %longhelp, 0, !dbg !3051
  br i1 %cmp42, label %if.end46.sink.split, label %if.end46, !dbg !3053

if.end46.sink.split:                              ; preds = %if.else41, %if.then39
  %str.489.sink = phi ptr [ @str.490, %if.then39 ], [ @str.489, %if.else41 ]
  %puts965 = tail call i32 @puts(ptr nonnull %str.489.sink), !dbg !3054
  br label %if.end46, !dbg !3055

if.end46:                                         ; preds = %if.end46.sink.split, %if.else41
  %putchar871 = tail call i32 @putchar(i32 10), !dbg !3055
  %puts872 = tail call i32 @puts(ptr nonnull @str.409), !dbg !3056
  %putchar873 = tail call i32 @putchar(i32 10), !dbg !3057
  %i_keyint_max = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 13, !dbg !3058
  %0 = load i32, ptr %i_keyint_max, align 4, !dbg !3058, !tbaa !3059
  %call50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.197, i32 noundef %0), !dbg !3060
  br i1 %cmp, label %if.end66.thread, label %if.end66, !dbg !3061

if.end66.thread:                                  ; preds = %if.end46
  %puts964 = tail call i32 @puts(ptr nonnull @str.488), !dbg !3062
  %puts963 = tail call i32 @puts(ptr nonnull @str.487), !dbg !3064
  %i_scenecut_threshold = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 15, !dbg !3066
  %1 = load i32, ptr %i_scenecut_threshold, align 4, !dbg !3066, !tbaa !3068
  %call61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.200, i32 noundef %1), !dbg !3069
  %puts962 = tail call i32 @puts(ptr nonnull @str.486), !dbg !3070
  br label %if.end74, !dbg !3072

if.end66:                                         ; preds = %if.end46
  %cmp67 = icmp sgt i32 %longhelp, 0, !dbg !3073
  br i1 %cmp67, label %if.end74, label %if.end127, !dbg !3072

if.end74:                                         ; preds = %if.end66, %if.end66.thread
  %i_bframe = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 17, !dbg !3075
  %2 = load i32, ptr %i_bframe, align 4, !dbg !3075, !tbaa !3076
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.202, i32 noundef %2), !dbg !3073
  %i_bframe_adaptive = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 18, !dbg !3077
  %3 = load i32, ptr %i_bframe_adaptive, align 8, !dbg !3077, !tbaa !3079
  %call73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.203, i32 noundef %3), !dbg !3080
  br i1 %cmp, label %if.then76, label %if.then80, !dbg !3081

if.then76:                                        ; preds = %if.end74
  %i_bframe_bias = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 19, !dbg !3082
  %4 = load i32, ptr %i_bframe_bias, align 4, !dbg !3082, !tbaa !3084
  %call77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.204, i32 noundef %4), !dbg !3085
  br label %if.then80, !dbg !3086

if.then80:                                        ; preds = %if.end74, %if.then76
  %i_bframe_pyramid = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 20, !dbg !3087
  %5 = load i32, ptr %i_bframe_pyramid, align 8, !dbg !3087, !tbaa !3089
  call void @llvm.dbg.value(metadata ptr @x264_b_pyramid_names, metadata !3090, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 %5, metadata !3095, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 0, metadata !3096, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3097
  %6 = icmp ult i32 %5, 3, !dbg !3099
  br i1 %6, label %cond.true.i, label %if.end99, !dbg !3099

cond.true.i:                                      ; preds = %if.then80
  %idxprom29.i = zext i32 %5 to i64, !dbg !3100
  %arrayidx3.i = getelementptr inbounds ptr, ptr @x264_b_pyramid_names, i64 %idxprom29.i, !dbg !3100
  %7 = load ptr, ptr %arrayidx3.i, align 8, !dbg !3100, !tbaa !580
  br label %if.end99, !dbg !3101

if.end99:                                         ; preds = %cond.true.i, %if.then80
  %cond.i = phi ptr [ %7, %cond.true.i ], [ @.str.322, %if.then80 ], !dbg !3101
  %call82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.205, ptr noundef %cond.i), !dbg !3102
  %puts961 = tail call i32 @puts(ptr nonnull @str.485), !dbg !3103
  %i_frame_reference = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 12, !dbg !3105
  %8 = load i32, ptr %i_frame_reference, align 8, !dbg !3105, !tbaa !1254
  %call90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.207, i32 noundef %8), !dbg !3107
  %puts960 = tail call i32 @puts(ptr nonnull @str.484), !dbg !3108
  %i_deblocking_filter_alphac0 = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 22, !dbg !3110
  %9 = load i32, ptr %i_deblocking_filter_alphac0, align 8, !dbg !3110, !tbaa !3112
  %i_deblocking_filter_beta = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 23, !dbg !3113
  %10 = load i32, ptr %i_deblocking_filter_beta, align 4, !dbg !3113, !tbaa !3114
  %call98 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.209, i32 noundef %9, i32 noundef %10), !dbg !3115
  br i1 %cmp, label %if.then125, label %if.end127.sink.split, !dbg !3116

if.then125:                                       ; preds = %if.end99
  %puts959 = tail call i32 @puts(ptr nonnull @str.483), !dbg !3117
  %puts957 = tail call i32 @puts(ptr nonnull @str.481), !dbg !3119
  %puts956 = tail call i32 @puts(ptr nonnull @str.480), !dbg !3121
  %puts874 = tail call i32 @puts(ptr nonnull @str.410), !dbg !3123
  br label %if.end127.sink.split, !dbg !3124

if.end127.sink.split:                             ; preds = %if.end99, %if.then125
  %str.482.sink = phi ptr [ @str.411, %if.then125 ], [ @str.482, %if.end99 ]
  %str.410.sink.ph = phi ptr [ @str.479, %if.then125 ], [ @str.410, %if.end99 ]
  %str.411.sink.ph = phi ptr [ @str.412, %if.then125 ], [ @str.411, %if.end99 ]
  %str.412.sink.ph = phi ptr [ @str.478, %if.then125 ], [ @str.412, %if.end99 ]
  %puts958 = tail call i32 @puts(ptr nonnull %str.482.sink), !dbg !3012
  br label %if.end127, !dbg !3012

if.end127:                                        ; preds = %if.end127.sink.split, %if.end66
  %str.410.sink = phi ptr [ @str.410, %if.end66 ], [ %str.410.sink.ph, %if.end127.sink.split ]
  %str.411.sink = phi ptr [ @str.411, %if.end66 ], [ %str.411.sink.ph, %if.end127.sink.split ]
  %str.412.sink = phi ptr [ @str.412, %if.end66 ], [ %str.412.sink.ph, %if.end127.sink.split ]
  %cmp67143214481452 = phi i1 [ false, %if.end66 ], [ true, %if.end127.sink.split ]
  %puts874.c = tail call i32 @puts(ptr nonnull %str.410.sink), !dbg !3012
  %puts875.c = tail call i32 @puts(ptr nonnull %str.411.sink), !dbg !3012
  %puts876 = tail call i32 @puts(ptr nonnull %str.412.sink), !dbg !3012
  %putchar877 = tail call i32 @putchar(i32 10), !dbg !3126
  %puts878 = tail call i32 @puts(ptr nonnull @str.413), !dbg !3127
  %putchar879 = tail call i32 @putchar(i32 10), !dbg !3128
  br i1 %cmp67143214481452, label %if.then132, label %if.end142.critedge, !dbg !3129

if.then132:                                       ; preds = %if.end127
  %puts953 = tail call i32 @puts(ptr nonnull @str.477), !dbg !3130
  %puts880 = tail call i32 @puts(ptr nonnull @str.414), !dbg !3132
  %f_rf_constant = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 6, !dbg !3133
  %11 = load float, ptr %f_rf_constant, align 8, !dbg !3133, !tbaa !3134
  %conv = fpext float %11 to double, !dbg !3135
  %call136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.222, double noundef %conv), !dbg !3136
  %i_lookahead = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 17, !dbg !3137
  %12 = load i32, ptr %i_lookahead, align 4, !dbg !3137, !tbaa !3139
  %call141 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.223, i32 noundef %12), !dbg !3140
  br label %if.end142, !dbg !3140

if.end142.critedge:                               ; preds = %if.end127
  %puts880.c = tail call i32 @puts(ptr nonnull @str.414), !dbg !3132
  %f_rf_constant.c = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 6, !dbg !3133
  %13 = load float, ptr %f_rf_constant.c, align 8, !dbg !3133, !tbaa !3134
  %conv.c = fpext float %13 to double, !dbg !3135
  %call136.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.222, double noundef %conv.c), !dbg !3136
  br label %if.end142, !dbg !3141

if.end142:                                        ; preds = %if.end142.critedge, %if.then132
  %i_vbv_max_bitrate = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 9, !dbg !3142
  %14 = load i32, ptr %i_vbv_max_bitrate, align 4, !dbg !3142, !tbaa !3143
  %call144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.224, i32 noundef %14), !dbg !3144
  %i_vbv_buffer_size = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 10, !dbg !3145
  %15 = load i32, ptr %i_vbv_buffer_size, align 8, !dbg !3145, !tbaa !3146
  %call146 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.225, i32 noundef %15), !dbg !3147
  br i1 %cmp, label %if.end208, label %if.end208.thread, !dbg !3148

if.end208:                                        ; preds = %if.end142
  %f_vbv_buffer_init = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 11, !dbg !3149
  %16 = load float, ptr %f_vbv_buffer_init, align 4, !dbg !3149, !tbaa !3151
  %conv151 = fpext float %16 to double, !dbg !3152
  %call152 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.226, double noundef %conv151), !dbg !3153
  %puts952 = tail call i32 @puts(ptr nonnull @str.476), !dbg !3154
  %i_qp_min = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 2, !dbg !3156
  %17 = load i32, ptr %i_qp_min, align 8, !dbg !3156, !tbaa !3158
  %call163 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.228, i32 noundef %17), !dbg !3159
  %i_qp_max = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 3, !dbg !3160
  %18 = load i32, ptr %i_qp_max, align 4, !dbg !3160, !tbaa !3162
  %call169 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.229, i32 noundef %18), !dbg !3163
  %i_qp_step = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 4, !dbg !3164
  %19 = load i32, ptr %i_qp_step, align 8, !dbg !3164, !tbaa !3166
  %call175 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.230, i32 noundef %19), !dbg !3167
  %f_rate_tolerance = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 8, !dbg !3168
  %20 = load float, ptr %f_rate_tolerance, align 8, !dbg !3168, !tbaa !3170
  %conv181 = fpext float %20 to double, !dbg !3171
  %call182 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.231, double noundef %conv181), !dbg !3172
  %f_ip_factor = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 12, !dbg !3173
  %21 = load float, ptr %f_ip_factor, align 8, !dbg !3173, !tbaa !3175
  %conv188 = fpext float %21 to double, !dbg !3176
  %call189 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.232, double noundef %conv188), !dbg !3177
  %f_pb_factor = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 13, !dbg !3178
  %22 = load float, ptr %f_pb_factor, align 4, !dbg !3178, !tbaa !3180
  %conv195 = fpext float %22 to double, !dbg !3181
  %call196 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.233, double noundef %conv195), !dbg !3182
  %i_chroma_qp_offset = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 6, !dbg !3183
  %23 = load i32, ptr %i_chroma_qp_offset, align 8, !dbg !3183, !tbaa !3185
  %call201 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.234, i32 noundef %23), !dbg !3186
  %i_aq_mode = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 14, !dbg !3187
  %24 = load i32, ptr %i_aq_mode, align 8, !dbg !3187, !tbaa !3189
  %call207 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.235, i32 noundef %24), !dbg !3190
  br i1 %cmp67143214481452, label %if.end220, label %if.end226, !dbg !3191

if.end208.thread:                                 ; preds = %if.end142
  br i1 %cmp67143214481452, label %if.end220, label %if.end602.critedge, !dbg !3191

if.end220:                                        ; preds = %if.end208.thread, %if.end208
  %f_aq_strength = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 15, !dbg !3192
  %25 = load float, ptr %f_aq_strength, align 4, !dbg !3192, !tbaa !3194
  %conv213 = fpext float %25 to double, !dbg !3195
  %call214 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.236, double noundef %conv213), !dbg !3196
  %putchar951 = tail call i32 @putchar(i32 10), !dbg !3197
  %puts881 = tail call i32 @puts(ptr nonnull @str.415), !dbg !3199
  br i1 %cmp, label %if.end232, label %if.end232.thread1518, !dbg !3200

if.end226:                                        ; preds = %if.end208
  %puts8811521 = tail call i32 @puts(ptr nonnull @str.415), !dbg !3199
  %puts950 = tail call i32 @puts(ptr nonnull @str.475), !dbg !3201
  br label %if.end273

if.end232.thread1518:                             ; preds = %if.end220
  %psz_stat_out1519 = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 19, !dbg !3203
  %26 = load ptr, ptr %psz_stat_out1519, align 8, !dbg !3203, !tbaa !3205
  %call2311520 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.239, ptr noundef %26), !dbg !3206
  br label %if.then276, !dbg !3207

if.end232:                                        ; preds = %if.end220
  %puts9501524 = tail call i32 @puts(ptr nonnull @str.475), !dbg !3201
  %psz_stat_out = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 19, !dbg !3203
  %27 = load ptr, ptr %psz_stat_out, align 8, !dbg !3203, !tbaa !3205
  %call231 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.239, ptr noundef %27), !dbg !3206
  br label %if.end273, !dbg !3207

if.end273:                                        ; preds = %if.end226, %if.end232
  %puts949 = tail call i32 @puts(ptr nonnull @str.474), !dbg !3208
  %f_qcompress = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 22, !dbg !3210
  %28 = load float, ptr %f_qcompress, align 8, !dbg !3210, !tbaa !3212
  %conv242 = fpext float %28 to double, !dbg !3213
  %call243 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.241, double noundef %conv242), !dbg !3214
  %f_complexity_blur = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 24, !dbg !3215
  %29 = load float, ptr %f_complexity_blur, align 8, !dbg !3215, !tbaa !3217
  %conv249 = fpext float %29 to double, !dbg !3218
  %call250 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.242, double noundef %conv249), !dbg !3219
  %f_qblur = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 42, i32 23, !dbg !3220
  %30 = load float, ptr %f_qblur, align 4, !dbg !3220, !tbaa !3222
  %conv256 = fpext float %30 to double, !dbg !3223
  %call257 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.243, double noundef %conv256), !dbg !3224
  %puts948 = tail call i32 @puts(ptr nonnull @str.473), !dbg !3225
  %puts947 = tail call i32 @puts(ptr nonnull @str.472), !dbg !3227
  %puts946 = tail call i32 @puts(ptr nonnull @str.471), !dbg !3229
  br i1 %cmp67143214481452, label %if.then276, label %if.end305.thread1516, !dbg !3231

if.then276:                                       ; preds = %if.end232.thread1518, %if.end273
  %putchar945 = tail call i32 @putchar(i32 10), !dbg !3232
  %puts944 = tail call i32 @puts(ptr nonnull @str.470), !dbg !3234
  %putchar943 = tail call i32 @putchar(i32 10), !dbg !3236
  %puts942 = tail call i32 @puts(ptr nonnull @str.469), !dbg !3238
  %i_direct_mv_pred = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 5, !dbg !3240
  %31 = load i32, ptr %i_direct_mv_pred, align 4, !dbg !3240, !tbaa !3242
  call void @llvm.dbg.value(metadata ptr @x264_direct_pred_names, metadata !3090, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 %31, metadata !3095, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 0, metadata !3096, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3243
  %32 = icmp ult i32 %31, 4, !dbg !3245
  br i1 %32, label %cond.true.i1308, label %if.end300, !dbg !3245

cond.true.i1308:                                  ; preds = %if.then276
  %idxprom29.i1306 = zext i32 %31 to i64, !dbg !3246
  %arrayidx3.i1307 = getelementptr inbounds ptr, ptr @x264_direct_pred_names, i64 %idxprom29.i1306, !dbg !3246
  %33 = load ptr, ptr %arrayidx3.i1307, align 8, !dbg !3246, !tbaa !580
  br label %if.end300, !dbg !3247

if.end300:                                        ; preds = %cond.true.i1308, %if.then276
  %cond.i1309 = phi ptr [ %33, %cond.true.i1308 ], [ @.str.322, %if.then276 ], !dbg !3247
  %call299 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.249, ptr noundef %cond.i1309), !dbg !3248
  br i1 %cmp, label %if.end305, label %if.then308, !dbg !3249

if.end305.thread1516:                             ; preds = %if.end273
  %puts9411517 = tail call i32 @puts(ptr nonnull @str.468), !dbg !3250
  br label %if.end345, !dbg !3252

if.end305:                                        ; preds = %if.end300
  %puts941 = tail call i32 @puts(ptr nonnull @str.468), !dbg !3250
  br label %if.then308

if.then308:                                       ; preds = %if.end300, %if.end305
  %i_weighted_pred = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 3, !dbg !3253
  %34 = load i32, ptr %i_weighted_pred, align 4, !dbg !3253, !tbaa !3255
  %call310 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.251, i32 noundef %34), !dbg !3256
  %i_me_method = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 7, !dbg !3257
  %35 = load i32, ptr %i_me_method, align 4, !dbg !3257, !tbaa !3259
  call void @llvm.dbg.value(metadata ptr @x264_motion_est_names, metadata !3090, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 %35, metadata !3095, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3260
  %36 = icmp ult i32 %35, 5, !dbg !3262
  br i1 %36, label %cond.true.i1322, label %if.end318, !dbg !3262

cond.true.i1322:                                  ; preds = %if.then308
  %idxprom29.i1320 = zext i32 %35 to i64, !dbg !3263
  %arrayidx3.i1321 = getelementptr inbounds ptr, ptr @x264_motion_est_names, i64 %idxprom29.i1320, !dbg !3263
  %37 = load ptr, ptr %arrayidx3.i1321, align 8, !dbg !3263, !tbaa !580
  br label %if.end318, !dbg !3264

if.end318:                                        ; preds = %cond.true.i1322, %if.then308
  %cond.i1323 = phi ptr [ %37, %cond.true.i1322 ], [ @.str.322, %if.then308 ], !dbg !3264
  %call317 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.252, ptr noundef %cond.i1323), !dbg !3265
  br i1 %cmp, label %if.end345, label %if.end362.thread, !dbg !3266

if.end345:                                        ; preds = %if.end305.thread1516, %if.end318
  %puts940 = tail call i32 @puts(ptr nonnull @str.467), !dbg !3267
  %i_me_range = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 8, !dbg !3269
  %38 = load i32, ptr %i_me_range, align 8, !dbg !3269, !tbaa !3271
  %call334 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.255, i32 noundef %38), !dbg !3272
  %puts938 = tail call i32 @puts(ptr nonnull @str.465), !dbg !3273
  %puts937 = tail call i32 @puts(ptr nonnull @str.464), !dbg !3275
  br i1 %cmp67143214481452, label %if.end371, label %if.end371.thread, !dbg !3277

if.end362.thread:                                 ; preds = %if.end318
  %puts939 = tail call i32 @puts(ptr nonnull @str.466), !dbg !3278
  br label %if.end371, !dbg !3280

if.end371.thread:                                 ; preds = %if.end345
  %puts936 = tail call i32 @puts(ptr nonnull @str.463), !dbg !3281
  %puts934.c = tail call i32 @puts(ptr nonnull @str.461), !dbg !3283
  %puts933.c = tail call i32 @puts(ptr nonnull @str.460), !dbg !3285
  %puts932.c = tail call i32 @puts(ptr nonnull @str.459), !dbg !3287
  %puts930 = tail call i32 @puts(ptr nonnull @str.457), !dbg !3289
  %puts929 = tail call i32 @puts(ptr nonnull @str.456), !dbg !3291
  %putchar928 = tail call i32 @putchar(i32 10), !dbg !3293
  %i_luma_deadzone = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 21, !dbg !3295
  %39 = load i32, ptr %i_luma_deadzone, align 4, !dbg !3297, !tbaa !573
  %call423 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.270, i32 noundef %39), !dbg !3298
  %arrayidx430 = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 21, i64 1, !dbg !3299
  %40 = load i32, ptr %arrayidx430, align 4, !dbg !3299, !tbaa !573
  %call431 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.271, i32 noundef %40), !dbg !3301
  br label %if.then450, !dbg !3302

if.end371:                                        ; preds = %if.end345, %if.end362.thread
  %str.462.sink = phi ptr [ @str.462, %if.end362.thread ], [ @str.463, %if.end345 ]
  %i_subpel_refine = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 11, !dbg !3303
  %41 = load i32, ptr %i_subpel_refine, align 4, !dbg !3303, !tbaa !3305
  %call350 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.258, i32 noundef %41), !dbg !3306
  %puts935 = tail call i32 @puts(ptr nonnull %str.462.sink), !dbg !3307
  %f_psy_rd = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 18, !dbg !3308
  %42 = load float, ptr %f_psy_rd, align 8, !dbg !3308, !tbaa !3310
  %conv367 = fpext float %42 to double, !dbg !3311
  %f_psy_trellis = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 19, !dbg !3312
  %43 = load float, ptr %f_psy_trellis, align 4, !dbg !3312, !tbaa !3313
  %conv369 = fpext float %43 to double, !dbg !3314
  %call370 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.261, double noundef %conv367, double noundef %conv369), !dbg !3315
  br i1 %cmp, label %if.end386, label %if.end447.critedge, !dbg !3316

if.end386:                                        ; preds = %if.end371
  %puts934 = tail call i32 @puts(ptr nonnull @str.461), !dbg !3283
  %puts933 = tail call i32 @puts(ptr nonnull @str.460), !dbg !3285
  %puts932 = tail call i32 @puts(ptr nonnull @str.459), !dbg !3287
  %puts931 = tail call i32 @puts(ptr nonnull @str.458), !dbg !3317
  %i_trellis = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 14, !dbg !3319
  %44 = load i32, ptr %i_trellis, align 8, !dbg !3319, !tbaa !3321
  %call396 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.266, i32 noundef %44), !dbg !3322
  %puts930.c = tail call i32 @puts(ptr nonnull @str.457), !dbg !3289
  %puts929.c = tail call i32 @puts(ptr nonnull @str.456), !dbg !3291
  %i_noise_reduction1501 = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 17, !dbg !3323
  %45 = load i32, ptr %i_noise_reduction1501, align 4, !dbg !3323, !tbaa !3325
  %call4121502 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.269, i32 noundef %45), !dbg !3326
  %putchar928.c = tail call i32 @putchar(i32 10), !dbg !3293
  %i_luma_deadzone.c = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 21, !dbg !3295
  %46 = load i32, ptr %i_luma_deadzone.c, align 4, !dbg !3297, !tbaa !573
  %call423.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.270, i32 noundef %46), !dbg !3298
  %arrayidx430.c = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 21, i64 1, !dbg !3299
  %47 = load i32, ptr %arrayidx430.c, align 4, !dbg !3299, !tbaa !573
  %call431.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.271, i32 noundef %47), !dbg !3301
  %puts927.c = tail call i32 @puts(ptr nonnull @str.455), !dbg !3327
  br label %if.then450, !dbg !3329

if.end447.critedge:                               ; preds = %if.end371
  %puts931.c = tail call i32 @puts(ptr nonnull @str.458), !dbg !3317
  %i_trellis.c = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 14, !dbg !3319
  %48 = load i32, ptr %i_trellis.c, align 8, !dbg !3319, !tbaa !3321
  %call396.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.266, i32 noundef %48), !dbg !3322
  %i_noise_reduction = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 41, i32 17, !dbg !3323
  %49 = load i32, ptr %i_noise_reduction, align 4, !dbg !3323, !tbaa !3325
  %call412 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.269, i32 noundef %49), !dbg !3326
  %puts88115211522.c = tail call i32 @puts(ptr nonnull @str.453), !dbg !3012
  %putchar882.c = tail call i32 @putchar(i32 10), !dbg !3330
  %puts883.c = tail call i32 @puts(ptr nonnull @str.416), !dbg !3331
  %putchar884.c = tail call i32 @putchar(i32 10), !dbg !3332
  %puts885.c = tail call i32 @puts(ptr nonnull @str.417), !dbg !3333
  br label %if.then561, !dbg !3334

if.then450:                                       ; preds = %if.end371.thread, %if.end386
  %str.455.sink = phi ptr [ @str.455, %if.end371.thread ], [ @str.454, %if.end386 ]
  %str.454.sink = phi ptr [ @str.454, %if.end371.thread ], [ @str.453, %if.end386 ]
  %cmp6714341475148014851490149515041510 = phi i1 [ false, %if.end371.thread ], [ true, %if.end386 ]
  %puts927 = tail call i32 @puts(ptr nonnull %str.455.sink), !dbg !3012
  %puts926 = tail call i32 @puts(ptr nonnull %str.454.sink), !dbg !3012
  %puts924 = tail call i32 @puts(ptr nonnull @str.452), !dbg !3335
  %puts923 = tail call i32 @puts(ptr nonnull @str.451), !dbg !3337
  %puts922 = tail call i32 @puts(ptr nonnull @str.450), !dbg !3339
  %puts921 = tail call i32 @puts(ptr nonnull @str.449), !dbg !3341
  %puts920 = tail call i32 @puts(ptr nonnull @str.448), !dbg !3343
  %putchar919 = tail call i32 @putchar(i32 10), !dbg !3345
  %puts918 = tail call i32 @puts(ptr nonnull @str.447), !dbg !3347
  %puts917 = tail call i32 @puts(ptr nonnull @str.446), !dbg !3349
  %puts916 = tail call i32 @puts(ptr nonnull @str.445), !dbg !3351
  %putchar915 = tail call i32 @putchar(i32 10), !dbg !3353
  %i_overscan = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 11, i32 2, !dbg !3355
  %50 = load i32, ptr %i_overscan, align 4, !dbg !3355, !tbaa !3357
  call void @llvm.dbg.value(metadata ptr @x264_overscan_names, metadata !3090, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 %50, metadata !3095, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3358
  %51 = icmp ult i32 %50, 3, !dbg !3360
  br i1 %51, label %cond.true.i1336, label %strtable_lookup.exit1338, !dbg !3360

cond.true.i1336:                                  ; preds = %if.then450
  %idxprom29.i1334 = zext i32 %50 to i64, !dbg !3361
  %arrayidx3.i1335 = getelementptr inbounds ptr, ptr @x264_overscan_names, i64 %idxprom29.i1334, !dbg !3361
  %52 = load ptr, ptr %arrayidx3.i1335, align 8, !dbg !3361, !tbaa !580
  br label %strtable_lookup.exit1338, !dbg !3362

strtable_lookup.exit1338:                         ; preds = %if.then450, %cond.true.i1336
  %cond.i1337 = phi ptr [ %52, %cond.true.i1336 ], [ @.str.322, %if.then450 ], !dbg !3362
  %call502 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.283, ptr noundef %cond.i1337), !dbg !3363
  %i_vidformat = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 11, i32 3, !dbg !3364
  %53 = load i32, ptr %i_vidformat, align 4, !dbg !3364, !tbaa !3366
  call void @llvm.dbg.value(metadata ptr @x264_vidformat_names, metadata !3090, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 %53, metadata !3095, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3367
  %54 = icmp ult i32 %53, 6, !dbg !3369
  br i1 %54, label %cond.true.i1350, label %strtable_lookup.exit1352, !dbg !3369

cond.true.i1350:                                  ; preds = %strtable_lookup.exit1338
  %idxprom29.i1348 = zext i32 %53 to i64, !dbg !3370
  %arrayidx3.i1349 = getelementptr inbounds ptr, ptr @x264_vidformat_names, i64 %idxprom29.i1348, !dbg !3370
  %55 = load ptr, ptr %arrayidx3.i1349, align 8, !dbg !3370, !tbaa !580
  br label %strtable_lookup.exit1352, !dbg !3371

strtable_lookup.exit1352:                         ; preds = %strtable_lookup.exit1338, %cond.true.i1350
  %cond.i1351 = phi ptr [ %55, %cond.true.i1350 ], [ @.str.322, %strtable_lookup.exit1338 ], !dbg !3371
  %call509 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.284, ptr noundef %cond.i1351), !dbg !3372
  %b_fullrange = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 11, i32 4, !dbg !3373
  %56 = load i32, ptr %b_fullrange, align 4, !dbg !3373, !tbaa !3375
  call void @llvm.dbg.value(metadata ptr @x264_fullrange_names, metadata !3090, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i32 %56, metadata !3095, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3376
  %57 = icmp ult i32 %56, 2, !dbg !3378
  br i1 %57, label %cond.true.i1364, label %strtable_lookup.exit1366, !dbg !3378

cond.true.i1364:                                  ; preds = %strtable_lookup.exit1352
  %idxprom29.i1362 = zext i32 %56 to i64, !dbg !3379
  %arrayidx3.i1363 = getelementptr inbounds ptr, ptr @x264_fullrange_names, i64 %idxprom29.i1362, !dbg !3379
  %58 = load ptr, ptr %arrayidx3.i1363, align 8, !dbg !3379, !tbaa !580
  br label %strtable_lookup.exit1366, !dbg !3380

strtable_lookup.exit1366:                         ; preds = %strtable_lookup.exit1352, %cond.true.i1364
  %cond.i1365 = phi ptr [ %58, %cond.true.i1364 ], [ @.str.322, %strtable_lookup.exit1352 ], !dbg !3380
  %call516 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.285, ptr noundef %cond.i1365), !dbg !3381
  %i_colorprim = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 11, i32 5, !dbg !3382
  %59 = load i32, ptr %i_colorprim, align 4, !dbg !3382, !tbaa !3384
  call void @llvm.dbg.value(metadata ptr @x264_colorprim_names, metadata !3090, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 %59, metadata !3095, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3385
  %60 = icmp ult i32 %59, 9, !dbg !3387
  br i1 %60, label %cond.true.i1378, label %strtable_lookup.exit1380, !dbg !3387

cond.true.i1378:                                  ; preds = %strtable_lookup.exit1366
  %idxprom29.i1376 = zext i32 %59 to i64, !dbg !3388
  %arrayidx3.i1377 = getelementptr inbounds ptr, ptr @x264_colorprim_names, i64 %idxprom29.i1376, !dbg !3388
  %61 = load ptr, ptr %arrayidx3.i1377, align 8, !dbg !3388, !tbaa !580
  br label %strtable_lookup.exit1380, !dbg !3389

strtable_lookup.exit1380:                         ; preds = %strtable_lookup.exit1366, %cond.true.i1378
  %cond.i1379 = phi ptr [ %61, %cond.true.i1378 ], [ @.str.322, %strtable_lookup.exit1366 ], !dbg !3389
  %call523 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.286, ptr noundef %cond.i1379), !dbg !3390
  %i_transfer = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 11, i32 6, !dbg !3391
  %62 = load i32, ptr %i_transfer, align 4, !dbg !3391, !tbaa !3393
  call void @llvm.dbg.value(metadata ptr @x264_transfer_names, metadata !3090, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 %62, metadata !3095, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3394
  %63 = icmp ult i32 %62, 11, !dbg !3396
  br i1 %63, label %cond.true.i1392, label %strtable_lookup.exit1394, !dbg !3396

cond.true.i1392:                                  ; preds = %strtable_lookup.exit1380
  %idxprom29.i1390 = zext i32 %62 to i64, !dbg !3397
  %arrayidx3.i1391 = getelementptr inbounds ptr, ptr @x264_transfer_names, i64 %idxprom29.i1390, !dbg !3397
  %64 = load ptr, ptr %arrayidx3.i1391, align 8, !dbg !3397, !tbaa !580
  br label %strtable_lookup.exit1394, !dbg !3398

strtable_lookup.exit1394:                         ; preds = %strtable_lookup.exit1380, %cond.true.i1392
  %cond.i1393 = phi ptr [ %64, %cond.true.i1392 ], [ @.str.322, %strtable_lookup.exit1380 ], !dbg !3398
  %call530 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.287, ptr noundef %cond.i1393), !dbg !3399
  %i_colmatrix = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 11, i32 7, !dbg !3400
  %65 = load i32, ptr %i_colmatrix, align 4, !dbg !3400, !tbaa !3402
  call void @llvm.dbg.value(metadata ptr @x264_colmatrix_names, metadata !3090, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 %65, metadata !3095, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.value(metadata i32 undef, metadata !3096, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3403
  %66 = icmp ult i32 %65, 9, !dbg !3405
  br i1 %66, label %cond.true.i1406, label %strtable_lookup.exit1408, !dbg !3405

cond.true.i1406:                                  ; preds = %strtable_lookup.exit1394
  %idxprom29.i1404 = zext i32 %65 to i64, !dbg !3406
  %arrayidx3.i1405 = getelementptr inbounds ptr, ptr @x264_colmatrix_names, i64 %idxprom29.i1404, !dbg !3406
  %67 = load ptr, ptr %arrayidx3.i1405, align 8, !dbg !3406, !tbaa !580
  br label %strtable_lookup.exit1408, !dbg !3407

strtable_lookup.exit1408:                         ; preds = %strtable_lookup.exit1394, %cond.true.i1406
  %cond.i1407 = phi ptr [ %67, %cond.true.i1406 ], [ @.str.322, %strtable_lookup.exit1394 ], !dbg !3407
  %call537 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.288, ptr noundef %cond.i1407), !dbg !3408
  %i_chroma_loc = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 11, i32 8, !dbg !3409
  %68 = load i32, ptr %i_chroma_loc, align 4, !dbg !3409, !tbaa !3411
  %call543 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.289, i32 noundef %68), !dbg !3412
  %puts914 = tail call i32 @puts(ptr nonnull @str.444), !dbg !3413
  %puts88115211522 = tail call i32 @puts(ptr nonnull @str.443), !dbg !3012
  %putchar882 = tail call i32 @putchar(i32 10), !dbg !3330
  %puts883 = tail call i32 @puts(ptr nonnull @str.416), !dbg !3331
  %putchar884 = tail call i32 @putchar(i32 10), !dbg !3332
  %puts885 = tail call i32 @puts(ptr nonnull @str.417), !dbg !3333
  br i1 %cmp6714341475148014851490149515041510, label %if.then561, label %if.end602, !dbg !3334

if.then561:                                       ; preds = %if.end447.critedge, %strtable_lookup.exit1408
  call void @llvm.dbg.value(metadata ptr %buf, metadata !3415, metadata !DIExpression()) #16, !dbg !3423
  call void @llvm.dbg.value(metadata ptr @muxer_names, metadata !3420, metadata !DIExpression()) #16, !dbg !3423
  call void @llvm.dbg.value(metadata i32 0, metadata !3421, metadata !DIExpression()) #16, !dbg !3423
  call void @llvm.dbg.value(metadata ptr %buf, metadata !3422, metadata !DIExpression()) #16, !dbg !3423
  call void @llvm.dbg.value(metadata i64 0, metadata !3421, metadata !DIExpression()) #16, !dbg !3423
  %69 = getelementptr inbounds i8, ptr %buf, i64 4, !dbg !3426
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %buf, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false) #16, !dbg !3426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %buf, ptr %69, ptr %buf), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3423
  br label %for.inc.i, !dbg !3430

for.inc.i:                                        ; preds = %if.then561, %for.inc.i
  %70 = phi ptr [ @.str.25, %if.then561 ], [ %74, %for.inc.i ]
  %indvars.iv.next.i14101528 = phi i64 [ 1, %if.then561 ], [ %indvars.iv.next.i1410, %for.inc.i ]
  %stpcpy.i1527 = phi ptr [ %69, %if.then561 ], [ %stpcpy.i, %for.inc.i ]
  %p.022.i1526 = phi ptr [ %buf, %if.then561 ], [ %add.ptr9.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata ptr %p.022.i1526, metadata !3422, metadata !DIExpression()) #16, !dbg !3423
  %71 = ptrtoint ptr %stpcpy.i1527 to i64, !dbg !3426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i1526, i64 %71, ptr %p.022.i1526), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3423
  %72 = ptrtoint ptr %p.022.i1526 to i64, !dbg !3426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i1526, ptr %stpcpy.i1527, i64 %72), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3423
  %73 = sub i64 %71, %72, !dbg !3426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i1526, i64 %73), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3423
  %sext.i = shl i64 %73, 32, !dbg !3431
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i1526, i64 %sext.i), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3423
  %idx.ext.i = ashr exact i64 %sext.i, 32, !dbg !3431
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i1526, i64 %idx.ext.i), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3423
  %add.ptr.i = getelementptr inbounds i8, ptr %p.022.i1526, i64 %idx.ext.i, !dbg !3431
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !3422, metadata !DIExpression()) #16, !dbg !3423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr.i, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false) #16, !dbg !3432
  %add.ptr9.i = getelementptr inbounds i8, ptr %add.ptr.i, i64 2, !dbg !3434
  call void @llvm.dbg.value(metadata ptr %add.ptr9.i, metadata !3422, metadata !DIExpression()) #16, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i14101528, metadata !3421, metadata !DIExpression()) #16, !dbg !3423
  %stpcpy.i = call ptr @stpcpy(ptr nonnull %add.ptr9.i, ptr nonnull %70) #16, !dbg !3426
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr9.i, ptr %stpcpy.i, ptr %add.ptr9.i), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3423
  %indvars.iv.next.i1410 = add nuw nsw i64 %indvars.iv.next.i14101528, 1, !dbg !3435
  %arrayidx5.i = getelementptr inbounds ptr, ptr @muxer_names, i64 %indvars.iv.next.i1410, !dbg !3436
  %74 = load ptr, ptr %arrayidx5.i, align 8, !dbg !3436, !tbaa !580
  %exitcond = icmp eq i64 %indvars.iv.next.i1410, 4, !dbg !3436
  br i1 %exitcond, label %stringify_names.exit, label %for.inc.i, !dbg !3430, !llvm.loop !3437

stringify_names.exit:                             ; preds = %for.inc.i
  %call563 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.22, ptr noundef nonnull %buf), !dbg !3440
  call void @llvm.dbg.value(metadata ptr %buf, metadata !3415, metadata !DIExpression()) #16, !dbg !3441
  call void @llvm.dbg.value(metadata ptr @demuxer_names, metadata !3420, metadata !DIExpression()) #16, !dbg !3441
  call void @llvm.dbg.value(metadata i32 0, metadata !3421, metadata !DIExpression()) #16, !dbg !3441
  call void @llvm.dbg.value(metadata ptr %buf, metadata !3422, metadata !DIExpression()) #16, !dbg !3441
  call void @llvm.dbg.value(metadata i64 0, metadata !3421, metadata !DIExpression()) #16, !dbg !3441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %buf, ptr noundef nonnull align 1 dereferenceable(5) @.str.22, i64 5, i1 false) #16, !dbg !3444
  call void @llvm.dbg.value(metadata !DIArgList(ptr %buf, ptr %69, ptr %buf), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3441
  br label %for.inc.i1425, !dbg !3445

for.inc.i1425:                                    ; preds = %stringify_names.exit, %for.inc.i1425
  %75 = phi ptr [ @.str.23, %stringify_names.exit ], [ %79, %for.inc.i1425 ]
  %indvars.iv.next.i14151532 = phi i64 [ 1, %stringify_names.exit ], [ %indvars.iv.next.i1415, %for.inc.i1425 ]
  %stpcpy.i14141531 = phi ptr [ %69, %stringify_names.exit ], [ %stpcpy.i1414, %for.inc.i1425 ]
  %p.022.i14131530 = phi ptr [ %buf, %stringify_names.exit ], [ %add.ptr9.i1422, %for.inc.i1425 ]
  call void @llvm.dbg.value(metadata ptr %p.022.i14131530, metadata !3422, metadata !DIExpression()) #16, !dbg !3441
  %76 = ptrtoint ptr %stpcpy.i14141531 to i64, !dbg !3444
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i14131530, i64 %76, ptr %p.022.i14131530), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3441
  %77 = ptrtoint ptr %p.022.i14131530 to i64, !dbg !3444
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i14131530, ptr %stpcpy.i14141531, i64 %77), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3441
  %78 = sub i64 %76, %77, !dbg !3444
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i14131530, i64 %78), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3441
  %sext.i1419 = shl i64 %78, 32, !dbg !3446
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i14131530, i64 %sext.i1419), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3441
  %idx.ext.i1420 = ashr exact i64 %sext.i1419, 32, !dbg !3446
  call void @llvm.dbg.value(metadata !DIArgList(ptr %p.022.i14131530, i64 %idx.ext.i1420), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3441
  %add.ptr.i1421 = getelementptr inbounds i8, ptr %p.022.i14131530, i64 %idx.ext.i1420, !dbg !3446
  call void @llvm.dbg.value(metadata ptr %add.ptr.i1421, metadata !3422, metadata !DIExpression()) #16, !dbg !3441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %add.ptr.i1421, ptr noundef nonnull align 1 dereferenceable(3) @.str.356, i64 3, i1 false) #16, !dbg !3447
  %add.ptr9.i1422 = getelementptr inbounds i8, ptr %add.ptr.i1421, i64 2, !dbg !3448
  call void @llvm.dbg.value(metadata ptr %add.ptr9.i1422, metadata !3422, metadata !DIExpression()) #16, !dbg !3441
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i14151532, metadata !3421, metadata !DIExpression()) #16, !dbg !3441
  %stpcpy.i1414 = call ptr @stpcpy(ptr nonnull %add.ptr9.i1422, ptr nonnull %75) #16, !dbg !3444
  call void @llvm.dbg.value(metadata !DIArgList(ptr %add.ptr9.i1422, ptr %stpcpy.i1414, ptr %add.ptr9.i1422), metadata !3422, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #16, !dbg !3441
  %indvars.iv.next.i1415 = add nuw nsw i64 %indvars.iv.next.i14151532, 1, !dbg !3449
  %arrayidx5.i1416 = getelementptr inbounds ptr, ptr @demuxer_names, i64 %indvars.iv.next.i1415, !dbg !3450
  %79 = load ptr, ptr %arrayidx5.i1416, align 8, !dbg !3450, !tbaa !580
  %exitcond1533 = icmp eq i64 %indvars.iv.next.i1415, 3, !dbg !3450
  br i1 %exitcond1533, label %if.then605, label %for.inc.i1425, !dbg !3445, !llvm.loop !3451

if.end602.critedge:                               ; preds = %if.end208.thread
  %puts88115211522.c1534 = tail call i32 @puts(ptr nonnull @str.415), !dbg !3012
  %putchar882.c1535 = tail call i32 @putchar(i32 10), !dbg !3330
  %puts883.c1536 = tail call i32 @puts(ptr nonnull @str.416), !dbg !3331
  %putchar884.c1537 = tail call i32 @putchar(i32 10), !dbg !3332
  %puts885.c1538 = tail call i32 @puts(ptr nonnull @str.417), !dbg !3333
  br label %if.end602, !dbg !3334

if.end602:                                        ; preds = %if.end602.critedge, %strtable_lookup.exit1408
  %puts886.c1202 = tail call i32 @puts(ptr nonnull @str.418), !dbg !3454
  %puts887.c1203 = tail call i32 @puts(ptr nonnull @str.419), !dbg !3455
  %puts888.c1204 = tail call i32 @puts(ptr nonnull @str.420), !dbg !3456
  %puts889.c1205 = tail call i32 @puts(ptr nonnull @str.421), !dbg !3457
  %puts890.c1206 = tail call i32 @puts(ptr nonnull @str.422), !dbg !3458
  br label %if.end612

if.then605:                                       ; preds = %for.inc.i1425
  %call570 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.295, ptr noundef nonnull @.str.22, ptr noundef nonnull %buf), !dbg !3459
  %puts912 = call i32 @puts(ptr nonnull @str.442), !dbg !3460
  %puts886 = call i32 @puts(ptr nonnull @str.418), !dbg !3454
  %puts887 = call i32 @puts(ptr nonnull @str.419), !dbg !3455
  %puts888 = call i32 @puts(ptr nonnull @str.420), !dbg !3456
  %puts889 = call i32 @puts(ptr nonnull @str.421), !dbg !3457
  %puts890 = call i32 @puts(ptr nonnull @str.422), !dbg !3458
  %putchar911 = call i32 @putchar(i32 10), !dbg !3462
  %puts910 = call i32 @puts(ptr nonnull @str.441), !dbg !3464
  %puts909 = call i32 @puts(ptr nonnull @str.440), !dbg !3466
  %puts891 = call i32 @puts(ptr nonnull @str.423), !dbg !3468
  %puts908 = call i32 @puts(ptr nonnull @str.439), !dbg !3469
  %puts907 = call i32 @puts(ptr nonnull @str.438), !dbg !3471
  br label %if.end612, !dbg !3473

if.end612:                                        ; preds = %if.end602, %if.then605
  %str.423.sink = phi ptr [ @str.423, %if.end602 ], [ @str.437, %if.then605 ]
  %puts891.c = call i32 @puts(ptr nonnull %str.423.sink), !dbg !3012
  br i1 %cmp, label %if.then615, label %if.end682, !dbg !3475

if.then615:                                       ; preds = %if.end612
  %puts905 = call i32 @puts(ptr nonnull @str.436), !dbg !3476
  %puts904 = call i32 @puts(ptr nonnull @str.435), !dbg !3478
  %puts903 = call i32 @puts(ptr nonnull @str.434), !dbg !3480
  %puts902 = call i32 @puts(ptr nonnull @str.433), !dbg !3482
  %puts901 = call i32 @puts(ptr nonnull @str.432), !dbg !3484
  %puts900 = call i32 @puts(ptr nonnull @str.431), !dbg !3486
  %puts899 = call i32 @puts(ptr nonnull @str.430), !dbg !3488
  %puts898 = call i32 @puts(ptr nonnull @str.429), !dbg !3490
  %i_sps_id = getelementptr inbounds %struct.x264_param_t, ptr %defaults, i64 0, i32 46, !dbg !3492
  %80 = load i32, ptr %i_sps_id, align 4, !dbg !3492, !tbaa !3494
  %call656 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.316, i32 noundef %80), !dbg !3495
  %puts897 = call i32 @puts(ptr nonnull @str.428), !dbg !3496
  %puts896 = call i32 @puts(ptr nonnull @str.427), !dbg !3498
  %puts895 = call i32 @puts(ptr nonnull @str.426), !dbg !3500
  %puts894 = call i32 @puts(ptr nonnull @str.425), !dbg !3502
  %puts893 = call i32 @puts(ptr nonnull @str.424), !dbg !3504
  br label %if.end682, !dbg !3504

if.end682:                                        ; preds = %if.end612, %if.then615
  %putchar892 = call i32 @putchar(i32 10), !dbg !3506
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %buf) #16, !dbg !3507
  ret void, !dbg !3507
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare !dbg !3508 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !3512 i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !3513 void @x264_param_apply_fastfirstpass(ptr noundef) local_unnamed_addr #6

declare !dbg !3514 i32 @x264_param_apply_profile(ptr noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !3517 void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @fmod(double noundef, double noundef) local_unnamed_addr #14

declare !dbg !3520 ptr @x264_encoder_open_96(ptr noundef) local_unnamed_addr #6

declare !dbg !3523 void @x264_encoder_parameters(ptr noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !3526 i64 @x264_mdate() local_unnamed_addr #6

declare !dbg !3529 i32 @x264_encoder_headers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

declare !dbg !3533 i32 @x264_encoder_delayed_frames(ptr noundef) local_unnamed_addr #6

declare !dbg !3536 void @x264_encoder_close(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3539 noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #10

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !3542 noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

declare !dbg !3545 i32 @x264_encoder_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!406, !407, !408, !409, !410, !411}
!llvm.ident = !{!412}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "seek_val", scope: !2, file: !19, line: 45, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/x264.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "31ddb1a0de50b882c944461ce64730d6")
!4 = !{!5, !6, !7, !10, !11}
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !12, line: 27, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !14, line: 44, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !{!0, !17, !285, !287, !289, !293, !298, !303, !316, !318, !320, !325, !327, !332, !337, !342, !347, !349, !354, !388, !401}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !19, line: 70, type: !20, isLocal: false, isDefinition: true)
!19 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "31ddb1a0de50b882c944461ce64730d6")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_t", file: !21, line: 63, baseType: !22)
!21 = !DIFile(filename: "apps/525.x264_r/src/x264_src/input/input.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f28c863d273681dfcaca9779e9fcbd53")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 54, size: 448, elements: !23)
!23 = !{!24, !59, !63, !272, !276, !280, !284}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !22, file: !21, line: 56, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!6, !8, !28, !31, !51}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "hnd_t", file: !30, line: 30, baseType: !10)
!30 = !DIFile(filename: "apps/525.x264_r/src/x264_src/muxers.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bcea0820748b2dc47392b7f6393a96ff")
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "video_info_t", file: !21, line: 52, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 38, size: 384, elements: !34)
!34 = !{!35, !36, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "csp", scope: !33, file: !21, line: 40, baseType: !6, size: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fps_num", scope: !33, file: !21, line: 41, baseType: !37, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !38, line: 26, baseType: !39)
!38 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 42, baseType: !40)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "fps_den", scope: !33, file: !21, line: 42, baseType: !37, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !33, file: !21, line: 43, baseType: !6, size: 32, offset: 96)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "interlaced", scope: !33, file: !21, line: 44, baseType: !6, size: 32, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "sar_width", scope: !33, file: !21, line: 45, baseType: !37, size: 32, offset: 160)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "sar_height", scope: !33, file: !21, line: 46, baseType: !37, size: 32, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tff", scope: !33, file: !21, line: 47, baseType: !6, size: 32, offset: 224)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_num", scope: !33, file: !21, line: 48, baseType: !37, size: 32, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_den", scope: !33, file: !21, line: 49, baseType: !37, size: 32, offset: 288)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vfr", scope: !33, file: !21, line: 50, baseType: !6, size: 32, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !33, file: !21, line: 51, baseType: !6, size: 32, offset: 352)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_input_opt_t", file: !21, line: 35, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 29, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !53, file: !21, line: 31, baseType: !8, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !53, file: !21, line: 32, baseType: !8, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "timebase", scope: !53, file: !21, line: 33, baseType: !8, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "seek", scope: !53, file: !21, line: 34, baseType: !6, size: 32, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_total", scope: !22, file: !21, line: 57, baseType: !60, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{!6, !29}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "picture_alloc", scope: !22, file: !21, line: 58, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!6, !67, !6, !6, !6}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_picture_t", file: !69, line: 549, baseType: !70)
!69 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 513, size: 1088, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !250, !263, !271}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !70, file: !69, line: 521, baseType: !6, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !70, file: !69, line: 523, baseType: !6, size: 32, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !70, file: !69, line: 526, baseType: !6, size: 32, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !70, file: !69, line: 529, baseType: !6, size: 32, offset: 96)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !70, file: !69, line: 531, baseType: !11, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts", scope: !70, file: !69, line: 534, baseType: !11, size: 64, offset: 192)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !70, file: !69, line: 541, baseType: !79, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !69, line: 376, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !69, line: 176, size: 5632, elements: !82)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !131, !132, !133, !134, !138, !139, !153, !154, !155, !156, !157, !188, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !81, file: !69, line: 179, baseType: !40, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !81, file: !69, line: 180, baseType: !6, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !81, file: !69, line: 181, baseType: !6, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !81, file: !69, line: 182, baseType: !6, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !81, file: !69, line: 183, baseType: !6, size: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !81, file: !69, line: 186, baseType: !6, size: 32, offset: 160)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !81, file: !69, line: 187, baseType: !6, size: 32, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !81, file: !69, line: 188, baseType: !6, size: 32, offset: 224)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !81, file: !69, line: 189, baseType: !6, size: 32, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !81, file: !69, line: 190, baseType: !6, size: 32, offset: 288)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !81, file: !69, line: 198, baseType: !6, size: 32, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !81, file: !69, line: 215, baseType: !95, size: 288, offset: 352)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !69, line: 200, size: 288, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !95, file: !69, line: 203, baseType: !6, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !95, file: !69, line: 204, baseType: !6, size: 32, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !95, file: !69, line: 206, baseType: !6, size: 32, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !95, file: !69, line: 209, baseType: !6, size: 32, offset: 96)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !95, file: !69, line: 210, baseType: !6, size: 32, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !95, file: !69, line: 211, baseType: !6, size: 32, offset: 160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !95, file: !69, line: 212, baseType: !6, size: 32, offset: 192)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !95, file: !69, line: 213, baseType: !6, size: 32, offset: 224)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !95, file: !69, line: 214, baseType: !6, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !81, file: !69, line: 218, baseType: !6, size: 32, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !81, file: !69, line: 219, baseType: !6, size: 32, offset: 672)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !81, file: !69, line: 220, baseType: !6, size: 32, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !81, file: !69, line: 221, baseType: !6, size: 32, offset: 736)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !81, file: !69, line: 222, baseType: !6, size: 32, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !81, file: !69, line: 224, baseType: !6, size: 32, offset: 800)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !81, file: !69, line: 225, baseType: !6, size: 32, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !81, file: !69, line: 226, baseType: !6, size: 32, offset: 864)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !81, file: !69, line: 227, baseType: !6, size: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !81, file: !69, line: 229, baseType: !6, size: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !81, file: !69, line: 230, baseType: !6, size: 32, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !81, file: !69, line: 231, baseType: !6, size: 32, offset: 992)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !81, file: !69, line: 233, baseType: !6, size: 32, offset: 1024)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !81, file: !69, line: 234, baseType: !6, size: 32, offset: 1056)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !81, file: !69, line: 236, baseType: !6, size: 32, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !81, file: !69, line: 237, baseType: !6, size: 32, offset: 1120)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !81, file: !69, line: 239, baseType: !6, size: 32, offset: 1152)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !81, file: !69, line: 240, baseType: !8, size: 64, offset: 1216)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !81, file: !69, line: 241, baseType: !125, size: 128, offset: 1280)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !129)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !38, line: 24, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 38, baseType: !128)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !{!130}
!130 = !DISubrange(count: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !81, file: !69, line: 242, baseType: !125, size: 128, offset: 1408)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !81, file: !69, line: 243, baseType: !125, size: 128, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !81, file: !69, line: 244, baseType: !125, size: 128, offset: 1664)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !81, file: !69, line: 245, baseType: !135, size: 512, offset: 1792)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 512, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !81, file: !69, line: 246, baseType: !135, size: 512, offset: 2304)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !81, file: !69, line: 249, baseType: !140, size: 64, offset: 2816)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !10, !6, !143, !145}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !147)
!147 = !{!148, !150, !151, !152}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !146, file: !149, line: 153, baseType: !40, size: 32)
!149 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !146, file: !149, line: 153, baseType: !40, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !146, file: !149, line: 153, baseType: !10, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !146, file: !149, line: 153, baseType: !10, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !81, file: !69, line: 250, baseType: !10, size: 64, offset: 2880)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !81, file: !69, line: 251, baseType: !6, size: 32, offset: 2944)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !81, file: !69, line: 252, baseType: !6, size: 32, offset: 2976)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !81, file: !69, line: 253, baseType: !8, size: 64, offset: 3008)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !81, file: !69, line: 287, baseType: !158, size: 800, offset: 3072)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !69, line: 256, size: 800, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !180, !181, !182, !186, !187}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !158, file: !69, line: 258, baseType: !40, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !158, file: !69, line: 259, baseType: !40, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !158, file: !69, line: 261, baseType: !6, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !158, file: !69, line: 262, baseType: !6, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !158, file: !69, line: 263, baseType: !6, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !158, file: !69, line: 264, baseType: !6, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !158, file: !69, line: 265, baseType: !6, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !158, file: !69, line: 267, baseType: !6, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !158, file: !69, line: 268, baseType: !6, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !158, file: !69, line: 269, baseType: !6, size: 32, offset: 288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !158, file: !69, line: 270, baseType: !6, size: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !158, file: !69, line: 271, baseType: !6, size: 32, offset: 352)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !158, file: !69, line: 272, baseType: !6, size: 32, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !158, file: !69, line: 273, baseType: !6, size: 32, offset: 416)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !158, file: !69, line: 274, baseType: !6, size: 32, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !158, file: !69, line: 275, baseType: !6, size: 32, offset: 480)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !158, file: !69, line: 276, baseType: !6, size: 32, offset: 512)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !158, file: !69, line: 277, baseType: !6, size: 32, offset: 544)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !158, file: !69, line: 278, baseType: !179, size: 32, offset: 576)
!179 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !158, file: !69, line: 279, baseType: !179, size: 32, offset: 608)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !158, file: !69, line: 280, baseType: !6, size: 32, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !158, file: !69, line: 283, baseType: !183, size: 64, offset: 672)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 2)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !158, file: !69, line: 285, baseType: !6, size: 32, offset: 736)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !158, file: !69, line: 286, baseType: !6, size: 32, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !81, file: !69, line: 327, baseType: !189, size: 1152, offset: 3904)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !81, file: !69, line: 290, size: 1152, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !228, !229}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !189, file: !69, line: 292, baseType: !6, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !189, file: !69, line: 294, baseType: !6, size: 32, offset: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !189, file: !69, line: 295, baseType: !6, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !189, file: !69, line: 296, baseType: !6, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !189, file: !69, line: 297, baseType: !6, size: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !189, file: !69, line: 299, baseType: !6, size: 32, offset: 160)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !189, file: !69, line: 300, baseType: !179, size: 32, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !189, file: !69, line: 301, baseType: !179, size: 32, offset: 224)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !189, file: !69, line: 302, baseType: !179, size: 32, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !189, file: !69, line: 303, baseType: !6, size: 32, offset: 288)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !189, file: !69, line: 304, baseType: !6, size: 32, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !189, file: !69, line: 305, baseType: !179, size: 32, offset: 352)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !189, file: !69, line: 306, baseType: !179, size: 32, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !189, file: !69, line: 307, baseType: !179, size: 32, offset: 416)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !189, file: !69, line: 309, baseType: !6, size: 32, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !189, file: !69, line: 310, baseType: !179, size: 32, offset: 480)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !189, file: !69, line: 311, baseType: !6, size: 32, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !189, file: !69, line: 312, baseType: !6, size: 32, offset: 544)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !189, file: !69, line: 315, baseType: !6, size: 32, offset: 576)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !189, file: !69, line: 316, baseType: !8, size: 64, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !189, file: !69, line: 317, baseType: !6, size: 32, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !189, file: !69, line: 318, baseType: !8, size: 64, offset: 768)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !189, file: !69, line: 321, baseType: !179, size: 32, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !189, file: !69, line: 322, baseType: !179, size: 32, offset: 864)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !189, file: !69, line: 323, baseType: !179, size: 32, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !189, file: !69, line: 324, baseType: !217, size: 64, offset: 960)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !69, line: 174, baseType: !219)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 167, size: 256, elements: !220)
!220 = !{!221, !222, !223, !224, !225, !226}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !219, file: !69, line: 169, baseType: !6, size: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !219, file: !69, line: 169, baseType: !6, size: 32, offset: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !219, file: !69, line: 170, baseType: !6, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !219, file: !69, line: 171, baseType: !6, size: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !219, file: !69, line: 172, baseType: !179, size: 32, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !219, file: !69, line: 173, baseType: !227, size: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !189, file: !69, line: 325, baseType: !6, size: 32, offset: 1024)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !189, file: !69, line: 326, baseType: !8, size: 64, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !81, file: !69, line: 330, baseType: !6, size: 32, offset: 5056)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !81, file: !69, line: 331, baseType: !6, size: 32, offset: 5088)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !81, file: !69, line: 332, baseType: !6, size: 32, offset: 5120)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !81, file: !69, line: 334, baseType: !6, size: 32, offset: 5152)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !81, file: !69, line: 335, baseType: !6, size: 32, offset: 5184)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !81, file: !69, line: 336, baseType: !37, size: 32, offset: 5216)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !81, file: !69, line: 337, baseType: !37, size: 32, offset: 5248)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !81, file: !69, line: 338, baseType: !37, size: 32, offset: 5280)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !81, file: !69, line: 339, baseType: !37, size: 32, offset: 5312)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !81, file: !69, line: 340, baseType: !6, size: 32, offset: 5344)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !81, file: !69, line: 344, baseType: !6, size: 32, offset: 5376)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !81, file: !69, line: 356, baseType: !6, size: 32, offset: 5408)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !81, file: !69, line: 364, baseType: !6, size: 32, offset: 5440)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !81, file: !69, line: 367, baseType: !6, size: 32, offset: 5472)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !81, file: !69, line: 368, baseType: !6, size: 32, offset: 5504)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !81, file: !69, line: 369, baseType: !6, size: 32, offset: 5536)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !81, file: !69, line: 375, baseType: !247, size: 64, offset: 5568)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !10}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "img", scope: !70, file: !69, line: 543, baseType: !251, size: 448, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_image_t", file: !69, line: 511, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 505, size: 448, elements: !253)
!253 = !{!254, !255, !256, !260}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !252, file: !69, line: 507, baseType: !6, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !252, file: !69, line: 508, baseType: !6, size: 32, offset: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !252, file: !69, line: 509, baseType: !257, size: 128, offset: 64)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 4)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !252, file: !69, line: 510, baseType: !261, size: 256, offset: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 256, elements: !258)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !70, file: !69, line: 545, baseType: !264, size: 256, offset: 768)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !69, line: 503, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 496, size: 256, elements: !266)
!266 = !{!267, !268, !269, !270}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !265, file: !69, line: 498, baseType: !5, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !265, file: !69, line: 499, baseType: !5, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !265, file: !69, line: 500, baseType: !5, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !265, file: !69, line: 502, baseType: !5, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !70, file: !69, line: 548, baseType: !10, size: 64, offset: 1024)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "read_frame", scope: !22, file: !21, line: 59, baseType: !273, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!6, !67, !29, !6}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "release_frame", scope: !22, file: !21, line: 60, baseType: !277, size: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!6, !67, !29}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "picture_clean", scope: !22, file: !21, line: 61, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !67}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !22, file: !21, line: 62, baseType: !60, size: 64, offset: 384)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "b_exit_on_ctrl_c", scope: !2, file: !19, line: 50, type: !6, isLocal: true, isDefinition: true)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "b_ctrl_c", scope: !2, file: !19, line: 49, type: !6, isLocal: true, isDefinition: true)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "demuxer_names", scope: !2, file: !19, line: 73, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 256, elements: !258)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "muxer_names", scope: !2, file: !19, line: 90, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 320, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 5)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "short_options", scope: !2, file: !19, line: 616, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 240, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 30)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !19, line: 617, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 36352, elements: !314)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !307, line: 93, size: 256, elements: !308)
!307 = !DIFile(filename: "apps/525.x264_r/src/x264_src/extras/getopt.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "82623bb5aeb34f6c33cfa9f633ed0dc8")
!308 = !{!309, !310, !311, !313}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !307, line: 96, baseType: !143, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !306, file: !307, line: 102, baseType: !6, size: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !306, file: !307, line: 103, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !306, file: !307, line: 104, baseType: !6, size: 32, offset: 192)
!314 = !{!315}
!315 = !DISubrange(count: 142)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "x264_b_pyramid_names", scope: !2, file: !69, line: 114, type: !291, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "x264_direct_pred_names", scope: !2, file: !69, line: 112, type: !295, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "x264_motion_est_names", scope: !2, file: !69, line: 113, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 384, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 6)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "x264_overscan_names", scope: !2, file: !69, line: 115, type: !291, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "x264_vidformat_names", scope: !2, file: !69, line: 116, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 448, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 7)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "x264_fullrange_names", scope: !2, file: !69, line: 117, type: !334, isLocal: true, isDefinition: true)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 192, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 3)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "x264_colorprim_names", scope: !2, file: !69, line: 118, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 640, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 10)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "x264_transfer_names", scope: !2, file: !69, line: 119, type: !344, isLocal: true, isDefinition: true)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 768, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 12)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "x264_colmatrix_names", scope: !2, file: !69, line: 120, type: !339, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "pulldown_names", scope: !2, file: !19, line: 102, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 512, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 8)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "output", scope: !2, file: !19, line: 71, type: !356, isLocal: true, isDefinition: true)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_output_t", file: !357, line: 34, baseType: !358)
!357 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/output.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2609bd03b72b40b15579de35b2e5f690")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 27, size: 320, elements: !359)
!359 = !{!360, !364, !368, !380, !384}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "open_file", scope: !358, file: !357, line: 29, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!6, !8, !28}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "set_param", scope: !358, file: !357, line: 30, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!6, !29, !79}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "write_headers", scope: !358, file: !357, line: 31, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!6, !29, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !69, line: 604, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 593, size: 192, elements: !375)
!375 = !{!376, !377, !378, !379}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !374, file: !69, line: 595, baseType: !6, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !374, file: !69, line: 596, baseType: !6, size: 32, offset: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !374, file: !69, line: 599, baseType: !6, size: 32, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !374, file: !69, line: 603, baseType: !262, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "write_frame", scope: !358, file: !357, line: 32, baseType: !381, size: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!6, !29, !262, !6, !67}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "close_file", scope: !358, file: !357, line: 33, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!6, !29, !11, !11}
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "pulldown_values", scope: !2, file: !19, line: 125, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 1792, elements: !330)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_pulldown_t", file: !19, line: 108, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 104, size: 256, elements: !394)
!394 = !{!395, !396, !400}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !393, file: !19, line: 105, baseType: !6, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !393, file: !19, line: 106, baseType: !397, size: 192, offset: 32)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 192, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 24)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "fps_factor", scope: !393, file: !19, line: 107, baseType: !179, size: 32, offset: 224)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "pulldown_frame_duration", scope: !2, file: !19, line: 142, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 320, elements: !340)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!405 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!406 = !{i32 7, !"Dwarf Version", i32 5}
!407 = !{i32 2, !"Debug Info Version", i32 3}
!408 = !{i32 1, !"wchar_size", i32 4}
!409 = !{i32 7, !"PIC Level", i32 2}
!410 = !{i32 7, !"PIE Level", i32 2}
!411 = !{i32 7, !"uwtable", i32 2}
!412 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!413 = distinct !DISubprogram(name: "main", scope: !19, file: !19, line: 151, type: !414, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{!6, !6, !7}
!416 = !{!417, !418, !419, !420, !489}
!417 = !DILocalVariable(name: "argc", arg: 1, scope: !413, file: !19, line: 151, type: !6)
!418 = !DILocalVariable(name: "argv", arg: 2, scope: !413, file: !19, line: 151, type: !7)
!419 = !DILocalVariable(name: "param", scope: !413, file: !19, line: 153, type: !80)
!420 = !DILocalVariable(name: "opt", scope: !413, file: !19, line: 154, type: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_opt_t", file: !19, line: 67, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 58, size: 448, elements: !423)
!423 = !{!424, !425, !426, !427, !428, !486, !487, !488}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "b_progress", scope: !422, file: !19, line: 59, baseType: !6, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "i_seek", scope: !422, file: !19, line: 60, baseType: !6, size: 32, offset: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "hin", scope: !422, file: !19, line: 61, baseType: !29, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "hout", scope: !422, file: !19, line: 62, baseType: !29, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "qpfile", scope: !422, file: !19, line: 63, baseType: !429, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !431, line: 7, baseType: !432)
!431 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !433, line: 49, size: 1728, elements: !434)
!433 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !450, !452, !453, !454, !456, !458, !460, !464, !467, !469, !472, !475, !476, !477, !481, !482}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !432, file: !433, line: 51, baseType: !6, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !432, file: !433, line: 54, baseType: !8, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !432, file: !433, line: 55, baseType: !8, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !432, file: !433, line: 56, baseType: !8, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !432, file: !433, line: 57, baseType: !8, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !432, file: !433, line: 58, baseType: !8, size: 64, offset: 320)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !432, file: !433, line: 59, baseType: !8, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !432, file: !433, line: 60, baseType: !8, size: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !432, file: !433, line: 61, baseType: !8, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !432, file: !433, line: 64, baseType: !8, size: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !432, file: !433, line: 65, baseType: !8, size: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !432, file: !433, line: 66, baseType: !8, size: 64, offset: 704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !432, file: !433, line: 68, baseType: !448, size: 64, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !433, line: 36, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !432, file: !433, line: 70, baseType: !451, size: 64, offset: 832)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !432, file: !433, line: 72, baseType: !6, size: 32, offset: 896)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !432, file: !433, line: 73, baseType: !6, size: 32, offset: 928)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !432, file: !433, line: 74, baseType: !455, size: 64, offset: 960)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !14, line: 152, baseType: !15)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !432, file: !433, line: 77, baseType: !457, size: 16, offset: 1024)
!457 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !432, file: !433, line: 78, baseType: !459, size: 8, offset: 1040)
!459 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !432, file: !433, line: 79, baseType: !461, size: 8, offset: 1048)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 1)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !432, file: !433, line: 81, baseType: !465, size: 64, offset: 1088)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !433, line: 43, baseType: null)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !432, file: !433, line: 89, baseType: !468, size: 64, offset: 1152)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !14, line: 153, baseType: !15)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !432, file: !433, line: 91, baseType: !470, size: 64, offset: 1216)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !433, line: 37, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !432, file: !433, line: 92, baseType: !473, size: 64, offset: 1280)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !433, line: 38, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !432, file: !433, line: 93, baseType: !451, size: 64, offset: 1344)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !432, file: !433, line: 94, baseType: !10, size: 64, offset: 1408)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !432, file: !433, line: 95, baseType: !478, size: 64, offset: 1472)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !479, line: 46, baseType: !480)
!479 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!480 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !432, file: !433, line: 96, baseType: !6, size: 32, offset: 1536)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !432, file: !433, line: 98, baseType: !483, size: 160, offset: 1568)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 20)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tcfile_out", scope: !422, file: !19, line: 64, baseType: !429, size: 64, offset: 256)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "timebase_convert_multiplier", scope: !422, file: !19, line: 65, baseType: !5, size: 64, offset: 320)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_pulldown", scope: !422, file: !19, line: 66, baseType: !6, size: 32, offset: 384)
!489 = !DILocalVariable(name: "ret", scope: !413, file: !19, line: 155, type: !6)
!490 = !DILocation(line: 0, scope: !413)
!491 = !DILocation(line: 153, column: 5, scope: !413)
!492 = !DILocation(line: 153, column: 18, scope: !413)
!493 = !DILocation(line: 154, column: 5, scope: !413)
!494 = !DILocation(line: 154, column: 15, scope: !413)
!495 = !DILocation(line: 0, scope: !496, inlinedAt: !555)
!496 = distinct !DISubprogram(name: "Parse", scope: !19, file: !19, line: 910, type: !497, scopeLine: 911, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !500)
!497 = !DISubroutineType(types: !498)
!498 = !{!6, !6, !7, !79, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !524, !528, !529, !530, !536, !539, !540, !542, !547, !548, !549, !552, !554}
!501 = !DILocalVariable(name: "argc", arg: 1, scope: !496, file: !19, line: 910, type: !6)
!502 = !DILocalVariable(name: "argv", arg: 2, scope: !496, file: !19, line: 910, type: !7)
!503 = !DILocalVariable(name: "param", arg: 3, scope: !496, file: !19, line: 910, type: !79)
!504 = !DILocalVariable(name: "opt", arg: 4, scope: !496, file: !19, line: 910, type: !499)
!505 = !DILocalVariable(name: "input_filename", scope: !496, file: !19, line: 912, type: !8)
!506 = !DILocalVariable(name: "demuxer", scope: !496, file: !19, line: 913, type: !143)
!507 = !DILocalVariable(name: "output_filename", scope: !496, file: !19, line: 914, type: !8)
!508 = !DILocalVariable(name: "muxer", scope: !496, file: !19, line: 915, type: !143)
!509 = !DILocalVariable(name: "tcfile_name", scope: !496, file: !19, line: 916, type: !8)
!510 = !DILocalVariable(name: "defaults", scope: !496, file: !19, line: 917, type: !80)
!511 = !DILocalVariable(name: "profile", scope: !496, file: !19, line: 918, type: !8)
!512 = !DILocalVariable(name: "b_thread_input", scope: !496, file: !19, line: 919, type: !6)
!513 = !DILocalVariable(name: "b_turbo", scope: !496, file: !19, line: 920, type: !6)
!514 = !DILocalVariable(name: "b_user_ref", scope: !496, file: !19, line: 921, type: !6)
!515 = !DILocalVariable(name: "b_user_fps", scope: !496, file: !19, line: 922, type: !6)
!516 = !DILocalVariable(name: "b_user_interlaced", scope: !496, file: !19, line: 923, type: !6)
!517 = !DILocalVariable(name: "input_opt", scope: !496, file: !19, line: 924, type: !52)
!518 = !DILocalVariable(name: "preset", scope: !496, file: !19, line: 925, type: !8)
!519 = !DILocalVariable(name: "tune", scope: !496, file: !19, line: 926, type: !8)
!520 = !DILocalVariable(name: "c", scope: !521, file: !19, line: 940, type: !6)
!521 = distinct !DILexicalBlock(scope: !522, file: !19, line: 939, column: 5)
!522 = distinct !DILexicalBlock(scope: !523, file: !19, line: 938, column: 5)
!523 = distinct !DILexicalBlock(scope: !496, file: !19, line: 938, column: 5)
!524 = !DILocalVariable(name: "b_error", scope: !525, file: !19, line: 959, type: !6)
!525 = distinct !DILexicalBlock(scope: !526, file: !19, line: 958, column: 5)
!526 = distinct !DILexicalBlock(scope: !527, file: !19, line: 957, column: 5)
!527 = distinct !DILexicalBlock(scope: !496, file: !19, line: 957, column: 5)
!528 = !DILocalVariable(name: "long_options_index", scope: !525, file: !19, line: 960, type: !6)
!529 = !DILocalVariable(name: "c", scope: !525, file: !19, line: 962, type: !6)
!530 = !DILocalVariable(name: "i", scope: !531, file: !19, line: 1099, type: !6)
!531 = distinct !DILexicalBlock(scope: !532, file: !19, line: 1099, column: 21)
!532 = distinct !DILexicalBlock(scope: !533, file: !19, line: 1098, column: 17)
!533 = distinct !DILexicalBlock(scope: !534, file: !19, line: 1097, column: 21)
!534 = distinct !DILexicalBlock(scope: !535, file: !19, line: 1096, column: 13)
!535 = distinct !DILexicalBlock(scope: !525, file: !19, line: 970, column: 9)
!536 = !DILocalVariable(name: "name", scope: !537, file: !19, line: 1118, type: !143)
!537 = distinct !DILexicalBlock(scope: !538, file: !19, line: 1117, column: 9)
!538 = distinct !DILexicalBlock(scope: !525, file: !19, line: 1116, column: 13)
!539 = !DILocalVariable(name: "info", scope: !496, file: !19, line: 1150, type: !32)
!540 = !DILocalVariable(name: "demuxername", scope: !496, file: !19, line: 1151, type: !541)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 40, elements: !296)
!542 = !DILocalVariable(name: "i_user_timebase_num", scope: !543, file: !19, line: 1230, type: !545)
!543 = distinct !DILexicalBlock(scope: !544, file: !19, line: 1229, column: 5)
!544 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1228, column: 9)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !38, line: 27, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !14, line: 45, baseType: !480)
!547 = !DILocalVariable(name: "i_user_timebase_den", scope: !543, file: !19, line: 1231, type: !545)
!548 = !DILocalVariable(name: "ret", scope: !543, file: !19, line: 1232, type: !6)
!549 = !DILocalVariable(name: "mbs", scope: !550, file: !19, line: 1279, type: !6)
!550 = distinct !DILexicalBlock(scope: !551, file: !19, line: 1278, column: 5)
!551 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1277, column: 9)
!552 = !DILocalVariable(name: "i", scope: !553, file: !19, line: 1280, type: !6)
!553 = distinct !DILexicalBlock(scope: !550, file: !19, line: 1280, column: 9)
!554 = !DILabel(scope: !535, name: "generic_option", file: !19, line: 1095)
!555 = distinct !DILocation(line: 168, column: 9, scope: !556)
!556 = distinct !DILexicalBlock(scope: !413, file: !19, line: 168, column: 9)
!557 = !DILocation(line: 917, column: 5, scope: !496, inlinedAt: !555)
!558 = !DILocation(line: 917, column: 18, scope: !496, inlinedAt: !555)
!559 = !DILocation(line: 924, column: 5, scope: !496, inlinedAt: !555)
!560 = !DILocation(line: 924, column: 21, scope: !496, inlinedAt: !555)
!561 = !DILocation(line: 931, column: 5, scope: !496, inlinedAt: !555)
!562 = !DILocation(line: 933, column: 5, scope: !496, inlinedAt: !555)
!563 = !DILocation(line: 934, column: 5, scope: !496, inlinedAt: !555)
!564 = !DILocation(line: 935, column: 21, scope: !496, inlinedAt: !555)
!565 = !{!566, !567, i64 0}
!566 = !{!"", !567, i64 0, !567, i64 4, !570, i64 8, !570, i64 16, !570, i64 24, !570, i64 32, !571, i64 40, !567, i64 48}
!567 = !{!"int", !568, i64 0}
!568 = !{!"omnipotent char", !569, i64 0}
!569 = !{!"Simple C/C++ TBAA"}
!570 = !{!"any pointer", !568, i64 0}
!571 = !{!"double", !568, i64 0}
!572 = !DILocation(line: 938, column: 17, scope: !523, inlinedAt: !555)
!573 = !{!567, !567, i64 0}
!574 = !DILocation(line: 938, column: 10, scope: !523, inlinedAt: !555)
!575 = !DILocation(line: 941, column: 13, scope: !521, inlinedAt: !555)
!576 = !DILocation(line: 940, column: 17, scope: !521, inlinedAt: !555)
!577 = !DILocation(line: 0, scope: !521, inlinedAt: !555)
!578 = !DILocation(line: 943, column: 22, scope: !579, inlinedAt: !555)
!579 = distinct !DILexicalBlock(scope: !521, file: !19, line: 942, column: 13)
!580 = !{!570, !570, i64 0}
!581 = !DILocation(line: 944, column: 13, scope: !521, inlinedAt: !555)
!582 = !DILocation(line: 945, column: 20, scope: !583, inlinedAt: !555)
!583 = distinct !DILexicalBlock(scope: !521, file: !19, line: 944, column: 13)
!584 = !DILocation(line: 945, column: 13, scope: !583, inlinedAt: !555)
!585 = !DILocation(line: 950, column: 9, scope: !586, inlinedAt: !555)
!586 = distinct !DILexicalBlock(scope: !496, file: !19, line: 950, column: 9)
!587 = !DILocation(line: 950, column: 16, scope: !586, inlinedAt: !555)
!588 = !DILocation(line: 950, column: 20, scope: !586, inlinedAt: !555)
!589 = !DILocation(line: 950, column: 9, scope: !496, inlinedAt: !555)
!590 = !DILocation(line: 953, column: 9, scope: !591, inlinedAt: !555)
!591 = distinct !DILexicalBlock(scope: !496, file: !19, line: 953, column: 9)
!592 = !DILocation(line: 953, column: 58, scope: !591, inlinedAt: !555)
!593 = !DILocation(line: 953, column: 9, scope: !496, inlinedAt: !555)
!594 = !DILocation(line: 957, column: 17, scope: !527, inlinedAt: !555)
!595 = !DILocation(line: 957, column: 10, scope: !527, inlinedAt: !555)
!596 = !DILocation(line: 913, column: 17, scope: !496, inlinedAt: !555)
!597 = !DILocation(line: 915, column: 17, scope: !496, inlinedAt: !555)
!598 = !DILocation(line: 920, column: 9, scope: !496, inlinedAt: !555)
!599 = !DILocation(line: 921, column: 9, scope: !496, inlinedAt: !555)
!600 = !DILocation(line: 922, column: 9, scope: !496, inlinedAt: !555)
!601 = !DILocation(line: 923, column: 9, scope: !496, inlinedAt: !555)
!602 = !DILocation(line: 918, column: 11, scope: !496, inlinedAt: !555)
!603 = !DILocation(line: 916, column: 11, scope: !496, inlinedAt: !555)
!604 = !DILocation(line: 914, column: 11, scope: !496, inlinedAt: !555)
!605 = !DILocation(line: 0, scope: !525, inlinedAt: !555)
!606 = !DILocation(line: 960, column: 9, scope: !525, inlinedAt: !555)
!607 = !DILocation(line: 960, column: 13, scope: !525, inlinedAt: !555)
!608 = !DILocation(line: 962, column: 17, scope: !525, inlinedAt: !555)
!609 = !DILocation(line: 964, column: 13, scope: !525, inlinedAt: !555)
!610 = !DILocation(line: 972, column: 17, scope: !535, inlinedAt: !555)
!611 = !DILocation(line: 973, column: 17, scope: !535, inlinedAt: !555)
!612 = !DILocation(line: 975, column: 17, scope: !535, inlinedAt: !555)
!613 = !DILocation(line: 976, column: 17, scope: !535, inlinedAt: !555)
!614 = !DILocation(line: 978, column: 17, scope: !535, inlinedAt: !555)
!615 = !DILocation(line: 979, column: 17, scope: !535, inlinedAt: !555)
!616 = !DILocation(line: 982, column: 17, scope: !535, inlinedAt: !555)
!617 = !DILocation(line: 994, column: 17, scope: !535, inlinedAt: !555)
!618 = !DILocation(line: 997, column: 33, scope: !535, inlinedAt: !555)
!619 = !DILocalVariable(name: "__nptr", arg: 1, scope: !620, file: !621, line: 361, type: !143)
!620 = distinct !DISubprogram(name: "atoi", scope: !621, file: !621, line: 361, type: !622, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !624)
!621 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!622 = !DISubroutineType(types: !623)
!623 = !{!6, !143}
!624 = !{!619}
!625 = !DILocation(line: 0, scope: !620, inlinedAt: !626)
!626 = distinct !DILocation(line: 997, column: 33, scope: !535, inlinedAt: !555)
!627 = !DILocation(line: 363, column: 16, scope: !620, inlinedAt: !626)
!628 = !DILocation(line: 363, column: 10, scope: !620, inlinedAt: !626)
!629 = !DILocation(line: 997, column: 31, scope: !535, inlinedAt: !555)
!630 = !DILocation(line: 998, column: 17, scope: !535, inlinedAt: !555)
!631 = !DILocation(line: 1001, column: 40, scope: !535, inlinedAt: !555)
!632 = !DILocation(line: 0, scope: !620, inlinedAt: !633)
!633 = distinct !DILocation(line: 1001, column: 40, scope: !535, inlinedAt: !555)
!634 = !DILocation(line: 363, column: 16, scope: !620, inlinedAt: !633)
!635 = !DILocation(line: 363, column: 10, scope: !620, inlinedAt: !633)
!636 = !DILocation(line: 1001, column: 38, scope: !535, inlinedAt: !555)
!637 = !{!638, !567, i64 36}
!638 = !{!"x264_param_t", !567, i64 0, !567, i64 4, !567, i64 8, !567, i64 12, !567, i64 16, !567, i64 20, !567, i64 24, !567, i64 28, !567, i64 32, !567, i64 36, !567, i64 40, !639, i64 44, !567, i64 80, !567, i64 84, !567, i64 88, !567, i64 92, !567, i64 96, !567, i64 100, !567, i64 104, !567, i64 108, !567, i64 112, !567, i64 116, !567, i64 120, !567, i64 124, !567, i64 128, !567, i64 132, !567, i64 136, !567, i64 140, !567, i64 144, !570, i64 152, !568, i64 160, !568, i64 176, !568, i64 192, !568, i64 208, !568, i64 224, !568, i64 288, !570, i64 352, !570, i64 360, !567, i64 368, !567, i64 372, !570, i64 376, !640, i64 384, !642, i64 488, !567, i64 632, !567, i64 636, !567, i64 640, !567, i64 644, !567, i64 648, !567, i64 652, !567, i64 656, !567, i64 660, !567, i64 664, !567, i64 668, !567, i64 672, !567, i64 676, !567, i64 680, !567, i64 684, !567, i64 688, !567, i64 692, !570, i64 696}
!639 = !{!"", !567, i64 0, !567, i64 4, !567, i64 8, !567, i64 12, !567, i64 16, !567, i64 20, !567, i64 24, !567, i64 28, !567, i64 32}
!640 = !{!"", !567, i64 0, !567, i64 4, !567, i64 8, !567, i64 12, !567, i64 16, !567, i64 20, !567, i64 24, !567, i64 28, !567, i64 32, !567, i64 36, !567, i64 40, !567, i64 44, !567, i64 48, !567, i64 52, !567, i64 56, !567, i64 60, !567, i64 64, !567, i64 68, !641, i64 72, !641, i64 76, !567, i64 80, !568, i64 84, !567, i64 92, !567, i64 96}
!641 = !{!"float", !568, i64 0}
!642 = !{!"", !567, i64 0, !567, i64 4, !567, i64 8, !567, i64 12, !567, i64 16, !567, i64 20, !641, i64 24, !641, i64 28, !641, i64 32, !567, i64 36, !567, i64 40, !641, i64 44, !641, i64 48, !641, i64 52, !567, i64 56, !641, i64 60, !567, i64 64, !567, i64 68, !567, i64 72, !570, i64 80, !567, i64 88, !570, i64 96, !641, i64 104, !641, i64 108, !641, i64 112, !570, i64 120, !567, i64 128, !570, i64 136}
!643 = !DILocation(line: 1002, column: 17, scope: !535, inlinedAt: !555)
!644 = !DILocation(line: 1004, column: 48, scope: !535, inlinedAt: !555)
!645 = !DILocation(line: 0, scope: !620, inlinedAt: !646)
!646 = distinct !DILocation(line: 1004, column: 48, scope: !535, inlinedAt: !555)
!647 = !DILocation(line: 363, column: 16, scope: !620, inlinedAt: !646)
!648 = !DILocation(line: 363, column: 10, scope: !620, inlinedAt: !646)
!649 = !DILocation(line: 1004, column: 46, scope: !535, inlinedAt: !555)
!650 = !{!651, !567, i64 24}
!651 = !{!"", !570, i64 0, !570, i64 8, !570, i64 16, !567, i64 24}
!652 = !DILocation(line: 1004, column: 29, scope: !535, inlinedAt: !555)
!653 = !{!566, !567, i64 4}
!654 = !DILocation(line: 1006, column: 19, scope: !535, inlinedAt: !555)
!655 = !DILocation(line: 1008, column: 17, scope: !535, inlinedAt: !555)
!656 = !DILocation(line: 1010, column: 35, scope: !535, inlinedAt: !555)
!657 = !DILocation(line: 1011, column: 17, scope: !535, inlinedAt: !555)
!658 = !DILocation(line: 1013, column: 38, scope: !659, inlinedAt: !555)
!659 = distinct !DILexicalBlock(scope: !535, file: !19, line: 1013, column: 21)
!660 = !DILocalVariable(name: "arg", arg: 1, scope: !661, file: !19, line: 885, type: !143)
!661 = distinct !DISubprogram(name: "parse_enum_name", scope: !19, file: !19, line: 885, type: !662, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!662 = !DISubroutineType(types: !663)
!663 = !{!6, !143, !664, !665}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!666 = !{!660, !667, !668, !669}
!667 = !DILocalVariable(name: "names", arg: 2, scope: !661, file: !19, line: 885, type: !664)
!668 = !DILocalVariable(name: "dst", arg: 3, scope: !661, file: !19, line: 885, type: !665)
!669 = !DILocalVariable(name: "i", scope: !670, file: !19, line: 887, type: !6)
!670 = distinct !DILexicalBlock(scope: !661, file: !19, line: 887, column: 5)
!671 = !DILocation(line: 0, scope: !661, inlinedAt: !672)
!672 = distinct !DILocation(line: 1013, column: 21, scope: !659, inlinedAt: !555)
!673 = !DILocation(line: 0, scope: !670, inlinedAt: !672)
!674 = !DILocation(line: 887, column: 32, scope: !675, inlinedAt: !672)
!675 = distinct !DILexicalBlock(scope: !670, file: !19, line: 887, column: 5)
!676 = !DILocation(line: 887, column: 21, scope: !675, inlinedAt: !672)
!677 = !DILocation(line: 887, column: 5, scope: !670, inlinedAt: !672)
!678 = distinct !{!678, !677, !679, !680, !681}
!679 = !DILocation(line: 892, column: 9, scope: !670, inlinedAt: !672)
!680 = !{!"llvm.loop.mustprogress"}
!681 = !{!"llvm.loop.unroll.disable"}
!682 = !DILocation(line: 888, column: 14, scope: !683, inlinedAt: !672)
!683 = distinct !DILexicalBlock(scope: !675, file: !19, line: 888, column: 13)
!684 = !DILocation(line: 888, column: 13, scope: !675, inlinedAt: !672)
!685 = !DILocation(line: 1017, column: 38, scope: !686, inlinedAt: !555)
!686 = distinct !DILexicalBlock(scope: !535, file: !19, line: 1017, column: 21)
!687 = !DILocation(line: 0, scope: !661, inlinedAt: !688)
!688 = distinct !DILocation(line: 1017, column: 21, scope: !686, inlinedAt: !555)
!689 = !DILocation(line: 0, scope: !670, inlinedAt: !688)
!690 = !DILocation(line: 887, column: 32, scope: !675, inlinedAt: !688)
!691 = !DILocation(line: 887, column: 21, scope: !675, inlinedAt: !688)
!692 = !DILocation(line: 887, column: 5, scope: !670, inlinedAt: !688)
!693 = distinct !{!693, !692, !694, !680, !681}
!694 = !DILocation(line: 892, column: 9, scope: !670, inlinedAt: !688)
!695 = !DILocation(line: 888, column: 14, scope: !683, inlinedAt: !688)
!696 = !DILocation(line: 888, column: 13, scope: !675, inlinedAt: !688)
!697 = !DILocation(line: 1021, column: 35, scope: !535, inlinedAt: !555)
!698 = !DILocation(line: 1021, column: 33, scope: !535, inlinedAt: !555)
!699 = !{!651, !570, i64 0}
!700 = !DILocation(line: 1022, column: 17, scope: !535, inlinedAt: !555)
!701 = !DILocation(line: 1024, column: 38, scope: !535, inlinedAt: !555)
!702 = !DILocation(line: 1024, column: 31, scope: !535, inlinedAt: !555)
!703 = !DILocation(line: 1024, column: 29, scope: !535, inlinedAt: !555)
!704 = !{!566, !570, i64 24}
!705 = !DILocation(line: 1025, column: 22, scope: !706, inlinedAt: !555)
!706 = distinct !DILexicalBlock(scope: !535, file: !19, line: 1025, column: 21)
!707 = !DILocation(line: 1025, column: 21, scope: !535, inlinedAt: !555)
!708 = !DILocation(line: 1027, column: 30, scope: !709, inlinedAt: !555)
!709 = distinct !DILexicalBlock(scope: !706, file: !19, line: 1026, column: 17)
!710 = !DILocation(line: 1027, column: 80, scope: !709, inlinedAt: !555)
!711 = !DILocation(line: 1027, column: 21, scope: !709, inlinedAt: !555)
!712 = !DILocation(line: 1028, column: 21, scope: !709, inlinedAt: !555)
!713 = !DILocation(line: 1041, column: 36, scope: !535, inlinedAt: !555)
!714 = !{!638, !567, i64 368}
!715 = !DILocation(line: 1042, column: 17, scope: !535, inlinedAt: !555)
!716 = !DILocation(line: 1044, column: 36, scope: !535, inlinedAt: !555)
!717 = !DILocation(line: 1045, column: 17, scope: !535, inlinedAt: !555)
!718 = !DILocation(line: 1047, column: 33, scope: !535, inlinedAt: !555)
!719 = !DILocation(line: 1048, column: 17, scope: !535, inlinedAt: !555)
!720 = !DILocation(line: 1054, column: 26, scope: !535, inlinedAt: !555)
!721 = !DILocation(line: 1054, column: 17, scope: !535, inlinedAt: !555)
!722 = !DILocation(line: 1056, column: 17, scope: !535, inlinedAt: !555)
!723 = !DILocation(line: 1061, column: 27, scope: !535, inlinedAt: !555)
!724 = !DILocation(line: 1062, column: 17, scope: !535, inlinedAt: !555)
!725 = !DILocation(line: 1065, column: 17, scope: !535, inlinedAt: !555)
!726 = !DILocation(line: 1068, column: 17, scope: !535, inlinedAt: !555)
!727 = !DILocation(line: 1071, column: 36, scope: !535, inlinedAt: !555)
!728 = !{!638, !567, i64 648}
!729 = !DILocation(line: 1072, column: 17, scope: !535, inlinedAt: !555)
!730 = !DILocation(line: 1075, column: 17, scope: !535, inlinedAt: !555)
!731 = !DILocation(line: 1077, column: 31, scope: !535, inlinedAt: !555)
!732 = !DILocation(line: 1078, column: 17, scope: !535, inlinedAt: !555)
!733 = !DILocation(line: 1080, column: 42, scope: !535, inlinedAt: !555)
!734 = !DILocation(line: 1080, column: 35, scope: !535, inlinedAt: !555)
!735 = !DILocation(line: 1080, column: 33, scope: !535, inlinedAt: !555)
!736 = !{!566, !570, i64 32}
!737 = !DILocation(line: 1081, column: 22, scope: !738, inlinedAt: !555)
!738 = distinct !DILexicalBlock(scope: !535, file: !19, line: 1081, column: 21)
!739 = !DILocation(line: 1081, column: 21, scope: !535, inlinedAt: !555)
!740 = !DILocation(line: 1083, column: 30, scope: !741, inlinedAt: !555)
!741 = distinct !DILexicalBlock(scope: !738, file: !19, line: 1082, column: 17)
!742 = !DILocation(line: 1083, column: 73, scope: !741, inlinedAt: !555)
!743 = !DILocation(line: 1083, column: 21, scope: !741, inlinedAt: !555)
!744 = !DILocation(line: 1084, column: 21, scope: !741, inlinedAt: !555)
!745 = !DILocation(line: 1088, column: 38, scope: !535, inlinedAt: !555)
!746 = !DILocation(line: 1088, column: 36, scope: !535, inlinedAt: !555)
!747 = !{!651, !570, i64 16}
!748 = !DILocation(line: 1089, column: 17, scope: !535, inlinedAt: !555)
!749 = !DILocation(line: 1091, column: 39, scope: !750, inlinedAt: !555)
!750 = distinct !DILexicalBlock(scope: !535, file: !19, line: 1091, column: 21)
!751 = !DILocalVariable(name: "arg", arg: 1, scope: !752, file: !19, line: 896, type: !143)
!752 = distinct !DISubprogram(name: "parse_enum_value", scope: !19, file: !19, line: 896, type: !753, scopeLine: 897, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !755)
!753 = !DISubroutineType(types: !754)
!754 = !{!6, !143, !664, !312}
!755 = !{!751, !756, !757, !758}
!756 = !DILocalVariable(name: "names", arg: 2, scope: !752, file: !19, line: 896, type: !664)
!757 = !DILocalVariable(name: "dst", arg: 3, scope: !752, file: !19, line: 896, type: !312)
!758 = !DILocalVariable(name: "i", scope: !759, file: !19, line: 898, type: !6)
!759 = distinct !DILexicalBlock(scope: !752, file: !19, line: 898, column: 5)
!760 = !DILocation(line: 0, scope: !752, inlinedAt: !761)
!761 = distinct !DILocation(line: 1091, column: 21, scope: !750, inlinedAt: !555)
!762 = !DILocation(line: 0, scope: !759, inlinedAt: !761)
!763 = !DILocation(line: 899, column: 14, scope: !764, inlinedAt: !761)
!764 = distinct !DILexicalBlock(scope: !765, file: !19, line: 899, column: 13)
!765 = distinct !DILexicalBlock(scope: !759, file: !19, line: 898, column: 5)
!766 = !DILocation(line: 899, column: 13, scope: !765, inlinedAt: !761)
!767 = distinct !{!767, !768, !769, !680, !681}
!768 = !DILocation(line: 898, column: 5, scope: !759, inlinedAt: !761)
!769 = !DILocation(line: 903, column: 9, scope: !759, inlinedAt: !761)
!770 = !DILocation(line: 901, column: 18, scope: !771, inlinedAt: !761)
!771 = distinct !DILexicalBlock(scope: !764, file: !19, line: 900, column: 9)
!772 = !DILocation(line: 1091, column: 21, scope: !535, inlinedAt: !555)
!773 = !DILocation(line: 898, column: 32, scope: !765, inlinedAt: !761)
!774 = !DILocation(line: 898, column: 21, scope: !765, inlinedAt: !761)
!775 = distinct !{!775, !768, !769, !680, !681}
!776 = !DILocation(line: 1095, column: 1, scope: !535, inlinedAt: !555)
!777 = !DILocation(line: 1097, column: 21, scope: !533, inlinedAt: !555)
!778 = !DILocation(line: 1097, column: 40, scope: !533, inlinedAt: !555)
!779 = !DILocation(line: 1097, column: 21, scope: !534, inlinedAt: !555)
!780 = !DILocation(line: 0, scope: !531, inlinedAt: !555)
!781 = !DILocation(line: 1099, column: 53, scope: !782, inlinedAt: !555)
!782 = distinct !DILexicalBlock(scope: !531, file: !19, line: 1099, column: 21)
!783 = !{!784, !570, i64 0}
!784 = !{!"option", !570, i64 0, !567, i64 8, !570, i64 16, !567, i64 24}
!785 = !DILocation(line: 1099, column: 21, scope: !531, inlinedAt: !555)
!786 = !DILocation(line: 1100, column: 45, scope: !787, inlinedAt: !555)
!787 = distinct !DILexicalBlock(scope: !782, file: !19, line: 1100, column: 29)
!788 = !{!784, !567, i64 24}
!789 = !DILocation(line: 1100, column: 49, scope: !787, inlinedAt: !555)
!790 = !DILocation(line: 1100, column: 29, scope: !782, inlinedAt: !555)
!791 = !DILocation(line: 1102, column: 48, scope: !792, inlinedAt: !555)
!792 = distinct !DILexicalBlock(scope: !787, file: !19, line: 1101, column: 25)
!793 = !DILocation(line: 1105, column: 25, scope: !532, inlinedAt: !555)
!794 = !DILocation(line: 1099, column: 60, scope: !782, inlinedAt: !555)
!795 = !DILocation(line: 1099, column: 37, scope: !782, inlinedAt: !555)
!796 = distinct !{!796, !785, !797, !680, !681}
!797 = !DILocation(line: 1104, column: 25, scope: !531, inlinedAt: !555)
!798 = !DILocation(line: 1112, column: 66, scope: !534, inlinedAt: !555)
!799 = !DILocation(line: 1112, column: 53, scope: !534, inlinedAt: !555)
!800 = !DILocation(line: 1112, column: 86, scope: !534, inlinedAt: !555)
!801 = !DILocation(line: 1112, column: 92, scope: !534, inlinedAt: !555)
!802 = !DILocation(line: 1112, column: 28, scope: !534, inlinedAt: !555)
!803 = !DILocation(line: 1116, column: 13, scope: !538, inlinedAt: !555)
!804 = !DILocation(line: 1116, column: 13, scope: !525, inlinedAt: !555)
!805 = !DILocation(line: 1118, column: 32, scope: !537, inlinedAt: !555)
!806 = !DILocation(line: 1118, column: 51, scope: !537, inlinedAt: !555)
!807 = !DILocation(line: 1118, column: 57, scope: !537, inlinedAt: !555)
!808 = !DILocation(line: 1118, column: 102, scope: !537, inlinedAt: !555)
!809 = !DILocation(line: 1118, column: 108, scope: !537, inlinedAt: !555)
!810 = !DILocation(line: 1118, column: 97, scope: !537, inlinedAt: !555)
!811 = !DILocation(line: 0, scope: !537, inlinedAt: !555)
!812 = !DILocation(line: 1119, column: 22, scope: !537, inlinedAt: !555)
!813 = !DILocation(line: 1119, column: 81, scope: !537, inlinedAt: !555)
!814 = !DILocation(line: 1119, column: 13, scope: !537, inlinedAt: !555)
!815 = !DILocation(line: 1122, column: 5, scope: !526, inlinedAt: !555)
!816 = !DILocation(line: 1125, column: 9, scope: !817, inlinedAt: !555)
!817 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1125, column: 9)
!818 = !DILocation(line: 1125, column: 9, scope: !496, inlinedAt: !555)
!819 = !DILocation(line: 1126, column: 9, scope: !817, inlinedAt: !555)
!820 = !DILocation(line: 1129, column: 9, scope: !821, inlinedAt: !555)
!821 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1129, column: 9)
!822 = !DILocation(line: 1129, column: 52, scope: !821, inlinedAt: !555)
!823 = !DILocation(line: 1129, column: 9, scope: !496, inlinedAt: !555)
!824 = !DILocation(line: 1133, column: 9, scope: !825, inlinedAt: !555)
!825 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1133, column: 9)
!826 = !DILocation(line: 1133, column: 16, scope: !825, inlinedAt: !555)
!827 = !DILocation(line: 1133, column: 27, scope: !825, inlinedAt: !555)
!828 = !DILocation(line: 1135, column: 18, scope: !829, inlinedAt: !555)
!829 = distinct !DILexicalBlock(scope: !825, file: !19, line: 1134, column: 5)
!830 = !DILocation(line: 1136, column: 18, scope: !829, inlinedAt: !555)
!831 = !DILocation(line: 1135, column: 9, scope: !829, inlinedAt: !555)
!832 = !DILocation(line: 1137, column: 9, scope: !829, inlinedAt: !555)
!833 = !DILocalVariable(name: "muxer", arg: 1, scope: !834, file: !19, line: 763, type: !143)
!834 = distinct !DISubprogram(name: "select_output", scope: !19, file: !19, line: 763, type: !835, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !837)
!835 = !DISubroutineType(types: !836)
!836 = !{!6, !143, !8, !79}
!837 = !{!833, !838, !839, !840}
!838 = !DILocalVariable(name: "filename", arg: 2, scope: !834, file: !19, line: 763, type: !8)
!839 = !DILocalVariable(name: "param", arg: 3, scope: !834, file: !19, line: 763, type: !79)
!840 = !DILocalVariable(name: "ext", scope: !834, file: !19, line: 765, type: !143)
!841 = !DILocation(line: 0, scope: !834, inlinedAt: !842)
!842 = distinct !DILocation(line: 1140, column: 9, scope: !843, inlinedAt: !555)
!843 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1140, column: 9)
!844 = !DILocalVariable(name: "filename", arg: 1, scope: !845, file: !30, line: 49, type: !8)
!845 = distinct !DISubprogram(name: "get_filename_extension", scope: !30, file: !30, line: 49, type: !846, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !848)
!846 = !DISubroutineType(types: !847)
!847 = !{!8, !8}
!848 = !{!844, !849}
!849 = !DILocalVariable(name: "ext", scope: !845, file: !30, line: 51, type: !8)
!850 = !DILocation(line: 0, scope: !845, inlinedAt: !851)
!851 = distinct !DILocation(line: 765, column: 23, scope: !834, inlinedAt: !842)
!852 = !DILocation(line: 51, column: 28, scope: !845, inlinedAt: !851)
!853 = !DILocation(line: 51, column: 26, scope: !845, inlinedAt: !851)
!854 = !DILocation(line: 52, column: 5, scope: !845, inlinedAt: !851)
!855 = !DILocation(line: 52, column: 12, scope: !845, inlinedAt: !851)
!856 = !{!568, !568, i64 0}
!857 = !DILocation(line: 52, column: 17, scope: !845, inlinedAt: !851)
!858 = !DILocation(line: 52, column: 24, scope: !845, inlinedAt: !851)
!859 = !DILocation(line: 53, column: 12, scope: !845, inlinedAt: !851)
!860 = distinct !{!860, !854, !859, !680, !681}
!861 = !DILocation(line: 766, column: 10, scope: !862, inlinedAt: !842)
!862 = distinct !DILexicalBlock(scope: !834, file: !19, line: 766, column: 9)
!863 = !DILocation(line: 766, column: 34, scope: !862, inlinedAt: !842)
!864 = !DILocation(line: 54, column: 17, scope: !845, inlinedAt: !851)
!865 = !DILocation(line: 54, column: 9, scope: !845, inlinedAt: !851)
!866 = !DILocation(line: 766, column: 37, scope: !862, inlinedAt: !842)
!867 = !DILocation(line: 766, column: 9, scope: !834, inlinedAt: !842)
!868 = !DILocation(line: 767, column: 9, scope: !862, inlinedAt: !842)
!869 = !DILocation(line: 769, column: 10, scope: !870, inlinedAt: !842)
!870 = distinct !DILexicalBlock(scope: !834, file: !19, line: 769, column: 9)
!871 = !DILocation(line: 769, column: 9, scope: !834, inlinedAt: !842)
!872 = !DILocation(line: 786, column: 15, scope: !873, inlinedAt: !842)
!873 = distinct !DILexicalBlock(scope: !870, file: !19, line: 786, column: 14)
!874 = !DILocation(line: 786, column: 14, scope: !870, inlinedAt: !842)
!875 = !DILocation(line: 788, column: 18, scope: !876, inlinedAt: !842)
!876 = distinct !DILexicalBlock(scope: !873, file: !19, line: 787, column: 5)
!877 = !{i64 0, i64 8, !580, i64 8, i64 8, !580, i64 16, i64 8, !580, i64 24, i64 8, !580, i64 32, i64 8, !580}
!878 = !DILocation(line: 789, column: 16, scope: !876, inlinedAt: !842)
!879 = !DILocation(line: 789, column: 25, scope: !876, inlinedAt: !842)
!880 = !{!638, !567, i64 640}
!881 = !DILocation(line: 790, column: 16, scope: !876, inlinedAt: !842)
!882 = !DILocation(line: 790, column: 31, scope: !876, inlinedAt: !842)
!883 = !{!638, !567, i64 668}
!884 = !DILocation(line: 791, column: 16, scope: !876, inlinedAt: !842)
!885 = !DILocation(line: 791, column: 33, scope: !876, inlinedAt: !842)
!886 = !{!638, !567, i64 636}
!887 = !DILocation(line: 792, column: 5, scope: !876, inlinedAt: !842)
!888 = !DILocation(line: 793, column: 15, scope: !889, inlinedAt: !842)
!889 = distinct !DILexicalBlock(scope: !873, file: !19, line: 793, column: 14)
!890 = !DILocation(line: 793, column: 14, scope: !873, inlinedAt: !842)
!891 = !DILocation(line: 795, column: 18, scope: !892, inlinedAt: !842)
!892 = distinct !DILexicalBlock(scope: !889, file: !19, line: 794, column: 5)
!893 = !DILocation(line: 796, column: 16, scope: !892, inlinedAt: !842)
!894 = !DILocation(line: 796, column: 25, scope: !892, inlinedAt: !842)
!895 = !DILocation(line: 797, column: 16, scope: !892, inlinedAt: !842)
!896 = !DILocation(line: 797, column: 31, scope: !892, inlinedAt: !842)
!897 = !DILocation(line: 798, column: 16, scope: !892, inlinedAt: !842)
!898 = !DILocation(line: 798, column: 33, scope: !892, inlinedAt: !842)
!899 = !DILocation(line: 799, column: 5, scope: !892, inlinedAt: !842)
!900 = !DILocation(line: 801, column: 18, scope: !889, inlinedAt: !842)
!901 = !DILocation(line: 782, column: 18, scope: !902, inlinedAt: !842)
!902 = distinct !DILexicalBlock(scope: !870, file: !19, line: 770, column: 5)
!903 = !DILocation(line: 782, column: 9, scope: !902, inlinedAt: !842)
!904 = !DILocation(line: 1140, column: 9, scope: !496, inlinedAt: !555)
!905 = !DILocation(line: 1142, column: 16, scope: !906, inlinedAt: !555)
!906 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1142, column: 9)
!907 = !{!908, !570, i64 0}
!908 = !{!"", !570, i64 0, !570, i64 8, !570, i64 16, !570, i64 24, !570, i64 32}
!909 = !DILocation(line: 1142, column: 50, scope: !906, inlinedAt: !555)
!910 = !DILocation(line: 1142, column: 9, scope: !906, inlinedAt: !555)
!911 = !DILocation(line: 1142, column: 9, scope: !496, inlinedAt: !555)
!912 = !DILocation(line: 1144, column: 18, scope: !913, inlinedAt: !555)
!913 = distinct !DILexicalBlock(scope: !906, file: !19, line: 1143, column: 5)
!914 = !DILocation(line: 1144, column: 9, scope: !913, inlinedAt: !555)
!915 = !DILocation(line: 1145, column: 9, scope: !913, inlinedAt: !555)
!916 = !DILocation(line: 1148, column: 33, scope: !496, inlinedAt: !555)
!917 = !DILocation(line: 1148, column: 22, scope: !496, inlinedAt: !555)
!918 = !DILocation(line: 1149, column: 35, scope: !496, inlinedAt: !555)
!919 = !DILocation(line: 1149, column: 28, scope: !496, inlinedAt: !555)
!920 = !DILocation(line: 1149, column: 55, scope: !496, inlinedAt: !555)
!921 = !DILocation(line: 1149, column: 44, scope: !496, inlinedAt: !555)
!922 = !DILocation(line: 1149, column: 15, scope: !496, inlinedAt: !555)
!923 = !DILocation(line: 1149, column: 26, scope: !496, inlinedAt: !555)
!924 = !{!651, !570, i64 8}
!925 = !DILocation(line: 1150, column: 18, scope: !496, inlinedAt: !555)
!926 = !DILocation(line: 1151, column: 10, scope: !496, inlinedAt: !555)
!927 = !DILocation(line: 1154, column: 30, scope: !496, inlinedAt: !555)
!928 = !{!638, !567, i64 28}
!929 = !DILocation(line: 1154, column: 21, scope: !496, inlinedAt: !555)
!930 = !{!931, !567, i64 0}
!931 = !{!"", !567, i64 0, !567, i64 4, !567, i64 8, !567, i64 12, !567, i64 16, !567, i64 20, !567, i64 24, !567, i64 28, !567, i64 32, !567, i64 36, !567, i64 40, !567, i64 44}
!932 = !DILocation(line: 1155, column: 30, scope: !496, inlinedAt: !555)
!933 = !{!638, !567, i64 652}
!934 = !DILocation(line: 1155, column: 10, scope: !496, inlinedAt: !555)
!935 = !DILocation(line: 1155, column: 21, scope: !496, inlinedAt: !555)
!936 = !{!931, !567, i64 4}
!937 = !DILocation(line: 1156, column: 30, scope: !496, inlinedAt: !555)
!938 = !{!638, !567, i64 656}
!939 = !DILocation(line: 1156, column: 10, scope: !496, inlinedAt: !555)
!940 = !DILocation(line: 1156, column: 21, scope: !496, inlinedAt: !555)
!941 = !{!931, !567, i64 8}
!942 = !DILocation(line: 1157, column: 30, scope: !496, inlinedAt: !555)
!943 = !{!638, !567, i64 136}
!944 = !DILocation(line: 1157, column: 10, scope: !496, inlinedAt: !555)
!945 = !DILocation(line: 1157, column: 21, scope: !496, inlinedAt: !555)
!946 = !{!931, !567, i64 16}
!947 = !DILocation(line: 1158, column: 30, scope: !496, inlinedAt: !555)
!948 = !DILocation(line: 1158, column: 34, scope: !496, inlinedAt: !555)
!949 = !{!638, !567, i64 48}
!950 = !DILocation(line: 1158, column: 10, scope: !496, inlinedAt: !555)
!951 = !DILocation(line: 1158, column: 21, scope: !496, inlinedAt: !555)
!952 = !{!931, !567, i64 20}
!953 = !DILocation(line: 1159, column: 34, scope: !496, inlinedAt: !555)
!954 = !{!638, !567, i64 44}
!955 = !DILocation(line: 1159, column: 10, scope: !496, inlinedAt: !555)
!956 = !DILocation(line: 1159, column: 21, scope: !496, inlinedAt: !555)
!957 = !{!931, !567, i64 24}
!958 = !DILocation(line: 1160, column: 30, scope: !496, inlinedAt: !555)
!959 = !{!638, !567, i64 672}
!960 = !DILocation(line: 1160, column: 10, scope: !496, inlinedAt: !555)
!961 = !DILocation(line: 1160, column: 21, scope: !496, inlinedAt: !555)
!962 = !{!931, !567, i64 28}
!963 = !DILocation(line: 1161, column: 30, scope: !496, inlinedAt: !555)
!964 = !DILocation(line: 1161, column: 10, scope: !496, inlinedAt: !555)
!965 = !DILocation(line: 1161, column: 21, scope: !496, inlinedAt: !555)
!966 = !{!931, !567, i64 40}
!967 = !DILocalVariable(name: "demuxer", arg: 1, scope: !968, file: !19, line: 805, type: !143)
!968 = distinct !DISubprogram(name: "select_input", scope: !19, file: !19, line: 805, type: !969, scopeLine: 807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!969 = !DISubroutineType(types: !970)
!970 = !{!6, !143, !8, !8, !28, !31, !51}
!971 = !{!967, !972, !973, !974, !975, !976, !977, !978, !979, !980, !983}
!972 = !DILocalVariable(name: "used_demuxer", arg: 2, scope: !968, file: !19, line: 805, type: !8)
!973 = !DILocalVariable(name: "filename", arg: 3, scope: !968, file: !19, line: 805, type: !8)
!974 = !DILocalVariable(name: "p_handle", arg: 4, scope: !968, file: !19, line: 806, type: !28)
!975 = !DILocalVariable(name: "info", arg: 5, scope: !968, file: !19, line: 806, type: !31)
!976 = !DILocalVariable(name: "opt", arg: 6, scope: !968, file: !19, line: 806, type: !51)
!977 = !DILocalVariable(name: "ext", scope: !968, file: !19, line: 808, type: !143)
!978 = !DILocalVariable(name: "b_regular", scope: !968, file: !19, line: 809, type: !6)
!979 = !DILocalVariable(name: "b_auto", scope: !968, file: !19, line: 810, type: !6)
!980 = !DILocalVariable(name: "f", scope: !981, file: !19, line: 815, type: !429)
!981 = distinct !DILexicalBlock(scope: !982, file: !19, line: 814, column: 5)
!982 = distinct !DILexicalBlock(scope: !968, file: !19, line: 813, column: 9)
!983 = !DILocalVariable(name: "module", scope: !968, file: !19, line: 822, type: !143)
!984 = !DILocation(line: 0, scope: !968, inlinedAt: !985)
!985 = distinct !DILocation(line: 1163, column: 9, scope: !986, inlinedAt: !555)
!986 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1163, column: 9)
!987 = !DILocation(line: 0, scope: !845, inlinedAt: !988)
!988 = distinct !DILocation(line: 808, column: 23, scope: !968, inlinedAt: !985)
!989 = !DILocation(line: 51, column: 28, scope: !845, inlinedAt: !988)
!990 = !DILocation(line: 51, column: 26, scope: !845, inlinedAt: !988)
!991 = !DILocation(line: 52, column: 5, scope: !845, inlinedAt: !988)
!992 = !DILocation(line: 52, column: 12, scope: !845, inlinedAt: !988)
!993 = !DILocation(line: 52, column: 17, scope: !845, inlinedAt: !988)
!994 = !DILocation(line: 52, column: 24, scope: !845, inlinedAt: !988)
!995 = !DILocation(line: 53, column: 12, scope: !845, inlinedAt: !988)
!996 = distinct !{!996, !991, !995, !680, !681}
!997 = !DILocation(line: 1163, column: 67, scope: !986, inlinedAt: !555)
!998 = !DILocation(line: 54, column: 17, scope: !845, inlinedAt: !988)
!999 = !DILocation(line: 54, column: 9, scope: !845, inlinedAt: !988)
!1000 = !DILocation(line: 809, column: 21, scope: !968, inlinedAt: !985)
!1001 = !DILocation(line: 810, column: 19, scope: !968, inlinedAt: !985)
!1002 = !DILocation(line: 810, column: 18, scope: !968, inlinedAt: !985)
!1003 = !DILocation(line: 811, column: 10, scope: !1004, inlinedAt: !985)
!1004 = distinct !DILexicalBlock(scope: !968, file: !19, line: 811, column: 9)
!1005 = !DILocation(line: 811, column: 20, scope: !1004, inlinedAt: !985)
!1006 = !DILocation(line: 813, column: 9, scope: !968, inlinedAt: !985)
!1007 = !DILocation(line: 815, column: 19, scope: !981, inlinedAt: !985)
!1008 = !DILocation(line: 0, scope: !981, inlinedAt: !985)
!1009 = !DILocation(line: 816, column: 13, scope: !1010, inlinedAt: !985)
!1010 = distinct !DILexicalBlock(scope: !981, file: !19, line: 816, column: 13)
!1011 = !DILocation(line: 816, column: 13, scope: !981, inlinedAt: !985)
!1012 = !DILocation(line: 819, column: 13, scope: !1013, inlinedAt: !985)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !19, line: 817, column: 9)
!1014 = !DILocation(line: 820, column: 9, scope: !1013, inlinedAt: !985)
!1015 = !DILocation(line: 822, column: 26, scope: !968, inlinedAt: !985)
!1016 = !DILocation(line: 824, column: 10, scope: !1017, inlinedAt: !985)
!1017 = distinct !DILexicalBlock(scope: !968, file: !19, line: 824, column: 9)
!1018 = !DILocation(line: 824, column: 34, scope: !1017, inlinedAt: !985)
!1019 = !DILocation(line: 824, column: 38, scope: !1017, inlinedAt: !985)
!1020 = !DILocation(line: 824, column: 59, scope: !1017, inlinedAt: !985)
!1021 = !DILocation(line: 824, column: 63, scope: !1017, inlinedAt: !985)
!1022 = !DILocation(line: 824, column: 9, scope: !968, inlinedAt: !985)
!1023 = !DILocation(line: 830, column: 18, scope: !1024, inlinedAt: !985)
!1024 = distinct !DILexicalBlock(scope: !1017, file: !19, line: 825, column: 5)
!1025 = !DILocation(line: 830, column: 9, scope: !1024, inlinedAt: !985)
!1026 = !DILocation(line: 831, column: 9, scope: !1024, inlinedAt: !985)
!1027 = !DILocation(line: 834, column: 15, scope: !1028, inlinedAt: !985)
!1028 = distinct !DILexicalBlock(scope: !1017, file: !19, line: 834, column: 14)
!1029 = !DILocation(line: 834, column: 14, scope: !1017, inlinedAt: !985)
!1030 = !DILocation(line: 835, column: 17, scope: !1028, inlinedAt: !985)
!1031 = !{i64 0, i64 8, !580, i64 8, i64 8, !580, i64 16, i64 8, !580, i64 24, i64 8, !580, i64 32, i64 8, !580, i64 40, i64 8, !580, i64 48, i64 8, !580}
!1032 = !DILocation(line: 835, column: 9, scope: !1028, inlinedAt: !985)
!1033 = !DILocation(line: 836, column: 15, scope: !1034, inlinedAt: !985)
!1034 = distinct !DILexicalBlock(scope: !1028, file: !19, line: 836, column: 14)
!1035 = !DILocation(line: 836, column: 14, scope: !1028, inlinedAt: !985)
!1036 = !DILocation(line: 837, column: 17, scope: !1034, inlinedAt: !985)
!1037 = !DILocation(line: 837, column: 9, scope: !1034, inlinedAt: !985)
!1038 = !DILocation(line: 867, column: 20, scope: !1039, inlinedAt: !985)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !19, line: 867, column: 13)
!1040 = distinct !DILexicalBlock(scope: !1034, file: !19, line: 839, column: 5)
!1041 = !DILocation(line: 867, column: 34, scope: !1039, inlinedAt: !985)
!1042 = !{!1043, !570, i64 0}
!1043 = !{!"", !570, i64 0, !570, i64 8, !570, i64 16, !570, i64 24, !570, i64 32, !570, i64 40, !570, i64 48}
!1044 = !DILocation(line: 867, column: 24, scope: !1039, inlinedAt: !985)
!1045 = !DILocation(line: 867, column: 13, scope: !1040, inlinedAt: !985)
!1046 = !DILocation(line: 871, column: 21, scope: !1047, inlinedAt: !985)
!1047 = distinct !DILexicalBlock(scope: !1039, file: !19, line: 868, column: 9)
!1048 = !DILocation(line: 872, column: 9, scope: !1047, inlinedAt: !985)
!1049 = !DILocation(line: 874, column: 15, scope: !1050, inlinedAt: !985)
!1050 = distinct !DILexicalBlock(scope: !1040, file: !19, line: 874, column: 13)
!1051 = !DILocation(line: 874, column: 14, scope: !1050, inlinedAt: !985)
!1052 = !DILocation(line: 874, column: 13, scope: !1040, inlinedAt: !985)
!1053 = !DILocation(line: 880, column: 5, scope: !968, inlinedAt: !985)
!1054 = !DILocation(line: 1166, column: 19, scope: !1055, inlinedAt: !555)
!1055 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1166, column: 9)
!1056 = !DILocation(line: 876, column: 22, scope: !1057, inlinedAt: !985)
!1057 = distinct !DILexicalBlock(scope: !1050, file: !19, line: 875, column: 9)
!1058 = !DILocation(line: 876, column: 13, scope: !1057, inlinedAt: !985)
!1059 = !DILocation(line: 877, column: 13, scope: !1057, inlinedAt: !985)
!1060 = !DILocation(line: 1166, column: 15, scope: !1055, inlinedAt: !555)
!1061 = !{!566, !570, i64 8}
!1062 = !DILocation(line: 1166, column: 10, scope: !1055, inlinedAt: !555)
!1063 = !DILocation(line: 1166, column: 28, scope: !1055, inlinedAt: !555)
!1064 = !DILocation(line: 1166, column: 22, scope: !1055, inlinedAt: !555)
!1065 = !DILocation(line: 1166, column: 9, scope: !496, inlinedAt: !555)
!1066 = !DILocation(line: 1168, column: 18, scope: !1067, inlinedAt: !555)
!1067 = distinct !DILexicalBlock(scope: !1055, file: !19, line: 1167, column: 5)
!1068 = !DILocation(line: 1168, column: 9, scope: !1067, inlinedAt: !555)
!1069 = !DILocation(line: 1169, column: 9, scope: !1067, inlinedAt: !555)
!1070 = !DILocation(line: 1172, column: 5, scope: !496, inlinedAt: !555)
!1071 = !DILocation(line: 1173, column: 5, scope: !496, inlinedAt: !555)
!1072 = !DILocation(line: 1174, column: 16, scope: !1073, inlinedAt: !555)
!1073 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1174, column: 9)
!1074 = !DILocation(line: 1174, column: 28, scope: !1073, inlinedAt: !555)
!1075 = !DILocation(line: 1174, column: 9, scope: !496, inlinedAt: !555)
!1076 = !DILocation(line: 1175, column: 18, scope: !1073, inlinedAt: !555)
!1077 = !DILocation(line: 1175, column: 93, scope: !1073, inlinedAt: !555)
!1078 = !{!931, !567, i64 44}
!1079 = !DILocation(line: 1176, column: 23, scope: !1073, inlinedAt: !555)
!1080 = !{!931, !567, i64 12}
!1081 = !DILocation(line: 1176, column: 36, scope: !1073, inlinedAt: !555)
!1082 = !DILocation(line: 1176, column: 31, scope: !1073, inlinedAt: !555)
!1083 = !DILocation(line: 1176, column: 65, scope: !1073, inlinedAt: !555)
!1084 = !DILocation(line: 1176, column: 81, scope: !1073, inlinedAt: !555)
!1085 = !DILocation(line: 1177, column: 23, scope: !1073, inlinedAt: !555)
!1086 = !DILocation(line: 1177, column: 37, scope: !1073, inlinedAt: !555)
!1087 = !DILocation(line: 1177, column: 51, scope: !1073, inlinedAt: !555)
!1088 = !DILocation(line: 1177, column: 46, scope: !1073, inlinedAt: !555)
!1089 = !DILocation(line: 1175, column: 9, scope: !1073, inlinedAt: !555)
!1090 = !DILocation(line: 1179, column: 9, scope: !1091, inlinedAt: !555)
!1091 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1179, column: 9)
!1092 = !DILocation(line: 1179, column: 9, scope: !496, inlinedAt: !555)
!1093 = !DILocation(line: 1181, column: 13, scope: !1094, inlinedAt: !555)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !19, line: 1181, column: 13)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !19, line: 1180, column: 5)
!1096 = !DILocation(line: 1181, column: 13, scope: !1095, inlinedAt: !555)
!1097 = !DILocation(line: 1183, column: 22, scope: !1098, inlinedAt: !555)
!1098 = distinct !DILexicalBlock(scope: !1094, file: !19, line: 1182, column: 9)
!1099 = !DILocation(line: 1183, column: 13, scope: !1098, inlinedAt: !555)
!1100 = !DILocation(line: 1184, column: 13, scope: !1098, inlinedAt: !555)
!1101 = !DILocation(line: 1186, column: 28, scope: !1102, inlinedAt: !555)
!1102 = distinct !DILexicalBlock(scope: !1095, file: !19, line: 1186, column: 13)
!1103 = !DILocation(line: 1186, column: 13, scope: !1102, inlinedAt: !555)
!1104 = !DILocation(line: 1186, column: 13, scope: !1095, inlinedAt: !555)
!1105 = !DILocation(line: 1188, column: 22, scope: !1106, inlinedAt: !555)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !19, line: 1187, column: 9)
!1107 = !DILocation(line: 1188, column: 13, scope: !1106, inlinedAt: !555)
!1108 = !DILocation(line: 1189, column: 13, scope: !1106, inlinedAt: !555)
!1109 = !DILocation(line: 1192, column: 21, scope: !1102, inlinedAt: !555)
!1110 = !DILocation(line: 1203, column: 31, scope: !496, inlinedAt: !555)
!1111 = !DILocation(line: 1193, column: 5, scope: !1095, inlinedAt: !555)
!1112 = !DILocation(line: 1194, column: 20, scope: !1113, inlinedAt: !555)
!1113 = distinct !DILexicalBlock(scope: !1091, file: !19, line: 1194, column: 14)
!1114 = !DILocation(line: 1194, column: 15, scope: !1113, inlinedAt: !555)
!1115 = !DILocation(line: 1194, column: 24, scope: !1113, inlinedAt: !555)
!1116 = !DILocation(line: 1196, column: 18, scope: !1117, inlinedAt: !555)
!1117 = distinct !DILexicalBlock(scope: !1113, file: !19, line: 1195, column: 5)
!1118 = !DILocation(line: 1196, column: 9, scope: !1117, inlinedAt: !555)
!1119 = !DILocation(line: 1197, column: 9, scope: !1117, inlinedAt: !555)
!1120 = !DILocation(line: 1201, column: 31, scope: !496, inlinedAt: !555)
!1121 = !DILocation(line: 1201, column: 24, scope: !496, inlinedAt: !555)
!1122 = !DILocation(line: 1202, column: 31, scope: !496, inlinedAt: !555)
!1123 = !DILocation(line: 1202, column: 12, scope: !496, inlinedAt: !555)
!1124 = !DILocation(line: 1202, column: 24, scope: !496, inlinedAt: !555)
!1125 = !{!638, !567, i64 24}
!1126 = !DILocation(line: 1203, column: 24, scope: !496, inlinedAt: !555)
!1127 = !DILocation(line: 1204, column: 31, scope: !496, inlinedAt: !555)
!1128 = !DILocation(line: 1204, column: 12, scope: !496, inlinedAt: !555)
!1129 = !DILocation(line: 1204, column: 24, scope: !496, inlinedAt: !555)
!1130 = !{!638, !567, i64 20}
!1131 = !DILocation(line: 1205, column: 10, scope: !1132, inlinedAt: !555)
!1132 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1205, column: 9)
!1133 = !DILocation(line: 1205, column: 28, scope: !1132, inlinedAt: !555)
!1134 = !DILocation(line: 1207, column: 18, scope: !1135, inlinedAt: !555)
!1135 = distinct !DILexicalBlock(scope: !1132, file: !19, line: 1206, column: 5)
!1136 = !DILocation(line: 1209, column: 23, scope: !1135, inlinedAt: !555)
!1137 = !DILocation(line: 1209, column: 18, scope: !1135, inlinedAt: !555)
!1138 = !DILocation(line: 1209, column: 40, scope: !1135, inlinedAt: !555)
!1139 = !DILocation(line: 1207, column: 9, scope: !1135, inlinedAt: !555)
!1140 = !DILocation(line: 1210, column: 29, scope: !1135, inlinedAt: !555)
!1141 = !DILocation(line: 1211, column: 31, scope: !1135, inlinedAt: !555)
!1142 = !DILocation(line: 1211, column: 25, scope: !1135, inlinedAt: !555)
!1143 = !DILocation(line: 1211, column: 24, scope: !1135, inlinedAt: !555)
!1144 = !DILocation(line: 1211, column: 22, scope: !1135, inlinedAt: !555)
!1145 = !DILocation(line: 1212, column: 5, scope: !1135, inlinedAt: !555)
!1146 = !DILocation(line: 1213, column: 10, scope: !1147, inlinedAt: !555)
!1147 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1213, column: 9)
!1148 = !DILocation(line: 1213, column: 9, scope: !496, inlinedAt: !555)
!1149 = !DILocation(line: 1215, column: 33, scope: !1150, inlinedAt: !555)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !19, line: 1214, column: 5)
!1151 = !DILocation(line: 1215, column: 26, scope: !1150, inlinedAt: !555)
!1152 = !DILocation(line: 1216, column: 33, scope: !1150, inlinedAt: !555)
!1153 = !DILocation(line: 1216, column: 26, scope: !1150, inlinedAt: !555)
!1154 = !DILocation(line: 1217, column: 5, scope: !1150, inlinedAt: !555)
!1155 = !DILocation(line: 1218, column: 16, scope: !1156, inlinedAt: !555)
!1156 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1218, column: 9)
!1157 = !DILocation(line: 1218, column: 9, scope: !1156, inlinedAt: !555)
!1158 = !DILocation(line: 1218, column: 9, scope: !496, inlinedAt: !555)
!1159 = !DILocation(line: 1220, column: 38, scope: !1160, inlinedAt: !555)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !19, line: 1219, column: 5)
!1161 = !{!931, !567, i64 32}
!1162 = !DILocation(line: 1221, column: 38, scope: !1160, inlinedAt: !555)
!1163 = !DILocation(line: 1222, column: 5, scope: !1160, inlinedAt: !555)
!1164 = !DILocation(line: 1225, column: 40, scope: !1165, inlinedAt: !555)
!1165 = distinct !DILexicalBlock(scope: !1156, file: !19, line: 1224, column: 5)
!1166 = !DILocation(line: 0, scope: !1156, inlinedAt: !555)
!1167 = !DILocation(line: 1225, column: 16, scope: !1165, inlinedAt: !555)
!1168 = !DILocation(line: 1225, column: 31, scope: !1165, inlinedAt: !555)
!1169 = !DILocation(line: 1226, column: 16, scope: !1165, inlinedAt: !555)
!1170 = !DILocation(line: 1226, column: 31, scope: !1165, inlinedAt: !555)
!1171 = !DILocation(line: 1228, column: 22, scope: !544, inlinedAt: !555)
!1172 = !DILocation(line: 1230, column: 9, scope: !543, inlinedAt: !555)
!1173 = !DILocation(line: 1231, column: 9, scope: !543, inlinedAt: !555)
!1174 = !DILocation(line: 0, scope: !543, inlinedAt: !555)
!1175 = !DILocation(line: 1232, column: 19, scope: !543, inlinedAt: !555)
!1176 = !DILocation(line: 1233, column: 13, scope: !543, inlinedAt: !555)
!1177 = !DILocation(line: 1235, column: 22, scope: !1178, inlinedAt: !555)
!1178 = distinct !DILexicalBlock(scope: !1179, file: !19, line: 1234, column: 9)
!1179 = distinct !DILexicalBlock(scope: !543, file: !19, line: 1233, column: 13)
!1180 = !DILocation(line: 1235, column: 91, scope: !1178, inlinedAt: !555)
!1181 = !DILocation(line: 1235, column: 13, scope: !1178, inlinedAt: !555)
!1182 = !DILocation(line: 1236, column: 13, scope: !1178, inlinedAt: !555)
!1183 = !DILocation(line: 1240, column: 42, scope: !1184, inlinedAt: !555)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !19, line: 1239, column: 9)
!1185 = distinct !DILexicalBlock(scope: !1179, file: !19, line: 1238, column: 18)
!1186 = !{!638, !567, i64 660}
!1187 = !DILocation(line: 1240, column: 35, scope: !1184, inlinedAt: !555)
!1188 = !DILocation(line: 1240, column: 33, scope: !1184, inlinedAt: !555)
!1189 = !{!1190, !1190, i64 0}
!1190 = !{!"long", !568, i64 0}
!1191 = !DILocation(line: 1241, column: 54, scope: !1184, inlinedAt: !555)
!1192 = !DILocation(line: 1241, column: 35, scope: !1184, inlinedAt: !555)
!1193 = !DILocation(line: 1241, column: 33, scope: !1184, inlinedAt: !555)
!1194 = !DILocation(line: 1242, column: 9, scope: !1184, inlinedAt: !555)
!1195 = !DILocation(line: 1243, column: 13, scope: !1196, inlinedAt: !555)
!1196 = distinct !DILexicalBlock(scope: !543, file: !19, line: 1243, column: 13)
!1197 = !DILocation(line: 1243, column: 33, scope: !1196, inlinedAt: !555)
!1198 = !DILocation(line: 1243, column: 46, scope: !1196, inlinedAt: !555)
!1199 = !DILocation(line: 1245, column: 22, scope: !1200, inlinedAt: !555)
!1200 = distinct !DILexicalBlock(scope: !1196, file: !19, line: 1244, column: 9)
!1201 = !DILocation(line: 1245, column: 13, scope: !1200, inlinedAt: !555)
!1202 = !DILocation(line: 1246, column: 13, scope: !1200, inlinedAt: !555)
!1203 = !DILocation(line: 1248, column: 45, scope: !543, inlinedAt: !555)
!1204 = !DILocation(line: 1248, column: 82, scope: !543, inlinedAt: !555)
!1205 = !{!638, !567, i64 664}
!1206 = !DILocation(line: 1248, column: 75, scope: !543, inlinedAt: !555)
!1207 = !DILocation(line: 1248, column: 73, scope: !543, inlinedAt: !555)
!1208 = !DILocation(line: 1249, column: 60, scope: !543, inlinedAt: !555)
!1209 = !DILocation(line: 1249, column: 45, scope: !543, inlinedAt: !555)
!1210 = !DILocation(line: 1249, column: 77, scope: !543, inlinedAt: !555)
!1211 = !DILocation(line: 1249, column: 75, scope: !543, inlinedAt: !555)
!1212 = !DILocation(line: 1249, column: 42, scope: !543, inlinedAt: !555)
!1213 = !DILocation(line: 1248, column: 14, scope: !543, inlinedAt: !555)
!1214 = !DILocation(line: 1248, column: 42, scope: !543, inlinedAt: !555)
!1215 = !{!566, !571, i64 40}
!1216 = !DILocation(line: 1250, column: 33, scope: !543, inlinedAt: !555)
!1217 = !DILocation(line: 1250, column: 31, scope: !543, inlinedAt: !555)
!1218 = !DILocation(line: 1251, column: 33, scope: !543, inlinedAt: !555)
!1219 = !DILocation(line: 1251, column: 31, scope: !543, inlinedAt: !555)
!1220 = !DILocation(line: 1252, column: 28, scope: !543, inlinedAt: !555)
!1221 = !DILocation(line: 1253, column: 5, scope: !544, inlinedAt: !555)
!1222 = !DILocation(line: 1254, column: 21, scope: !1223, inlinedAt: !555)
!1223 = distinct !DILexicalBlock(scope: !496, file: !19, line: 1254, column: 9)
!1224 = !DILocation(line: 1254, column: 10, scope: !1223, inlinedAt: !555)
!1225 = !DILocation(line: 1254, column: 33, scope: !1223, inlinedAt: !555)
!1226 = !DILocation(line: 1256, column: 40, scope: !1227, inlinedAt: !555)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !19, line: 1255, column: 5)
!1228 = !DILocation(line: 1256, column: 33, scope: !1227, inlinedAt: !555)
!1229 = !DILocation(line: 1257, column: 40, scope: !1227, inlinedAt: !555)
!1230 = !DILocation(line: 1257, column: 33, scope: !1227, inlinedAt: !555)
!1231 = !DILocation(line: 1258, column: 5, scope: !1227, inlinedAt: !555)
!1232 = !DILocation(line: 1277, column: 10, scope: !551, inlinedAt: !555)
!1233 = !DILocation(line: 1277, column: 9, scope: !496, inlinedAt: !555)
!1234 = !DILocation(line: 1279, column: 29, scope: !550, inlinedAt: !555)
!1235 = !DILocation(line: 1279, column: 37, scope: !550, inlinedAt: !555)
!1236 = !DILocation(line: 1279, column: 41, scope: !550, inlinedAt: !555)
!1237 = !DILocation(line: 1279, column: 58, scope: !550, inlinedAt: !555)
!1238 = !DILocation(line: 1279, column: 67, scope: !550, inlinedAt: !555)
!1239 = !DILocation(line: 1279, column: 71, scope: !550, inlinedAt: !555)
!1240 = !DILocation(line: 0, scope: !550, inlinedAt: !555)
!1241 = !DILocation(line: 0, scope: !553, inlinedAt: !555)
!1242 = !DILocation(line: 1280, column: 40, scope: !1243, inlinedAt: !555)
!1243 = distinct !DILexicalBlock(scope: !553, file: !19, line: 1280, column: 9)
!1244 = !{!1245, !567, i64 0}
!1245 = !{!"", !567, i64 0, !567, i64 4, !567, i64 8, !567, i64 12, !567, i64 16, !567, i64 20, !567, i64 24, !567, i64 28, !567, i64 32, !567, i64 36, !567, i64 40, !567, i64 44, !567, i64 48}
!1246 = !DILocation(line: 1280, column: 50, scope: !1243, inlinedAt: !555)
!1247 = !DILocation(line: 1280, column: 9, scope: !553, inlinedAt: !555)
!1248 = !{!638, !567, i64 32}
!1249 = !DILocation(line: 1281, column: 36, scope: !1250, inlinedAt: !555)
!1250 = distinct !DILexicalBlock(scope: !1243, file: !19, line: 1281, column: 17)
!1251 = !DILocation(line: 1281, column: 17, scope: !1243, inlinedAt: !555)
!1252 = !DILocation(line: 1280, column: 25, scope: !1243, inlinedAt: !555)
!1253 = !{!1245, !567, i64 12}
!1254 = !{!638, !567, i64 80}
!1255 = !DILocation(line: 1283, column: 34, scope: !1256, inlinedAt: !555)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !19, line: 1282, column: 13)
!1257 = !DILocation(line: 1283, column: 61, scope: !1256, inlinedAt: !555)
!1258 = !DILocation(line: 1283, column: 82, scope: !1256, inlinedAt: !555)
!1259 = !DILocation(line: 1286, column: 45, scope: !1260, inlinedAt: !555)
!1260 = distinct !DILexicalBlock(scope: !1256, file: !19, line: 1285, column: 17)
!1261 = distinct !{!1261, !1262, !1263, !680, !681}
!1262 = !DILocation(line: 1283, column: 17, scope: !1256, inlinedAt: !555)
!1263 = !DILocation(line: 1287, column: 17, scope: !1256, inlinedAt: !555)
!1264 = !DILocation(line: 1280, column: 57, scope: !1243, inlinedAt: !555)
!1265 = distinct !{!1265, !1247, !1266, !680, !681}
!1266 = !DILocation(line: 1289, column: 13, scope: !553, inlinedAt: !555)
!1267 = !DILocation(line: 1294, column: 1, scope: !496, inlinedAt: !555)
!1268 = !DILocation(line: 168, column: 9, scope: !413)
!1269 = !DILocation(line: 172, column: 5, scope: !413)
!1270 = !DILocalVariable(name: "param", arg: 1, scope: !1271, file: !19, line: 1389, type: !79)
!1271 = distinct !DISubprogram(name: "Encode", scope: !19, file: !19, line: 1389, type: !1272, scopeLine: 1390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!6, !79, !499}
!1274 = !{!1270, !1275, !1276, !2361, !2362, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2386, !2387, !2391}
!1275 = !DILocalVariable(name: "opt", arg: 2, scope: !1271, file: !19, line: 1389, type: !499)
!1276 = !DILocalVariable(name: "h", scope: !1271, file: !19, line: 1391, type: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !69, line: 46, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !1280, line: 381, size: 266752, elements: !1281)
!1280 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!1281 = !{!1282, !1283, !1287, !1288, !1289, !1290, !1291, !1292, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1416, !1418, !1444, !1446, !1447, !1448, !1452, !1456, !1457, !1458, !1464, !1468, !1469, !1470, !1475, !1478, !1479, !1554, !1571, !1717, !1718, !1719, !1720, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1744, !1936, !1940, !1999, !2002, !2004, !2006, !2007, !2010, !2015, !2022, !2023, !2029, !2031, !2036, !2111, !2193, !2237, !2259, !2308, !2337}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1279, file: !1280, line: 384, baseType: !80, size: 5632)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1279, file: !1280, line: 386, baseType: !1284, size: 8256, offset: 5632)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1277, size: 8256, elements: !1285)
!1285 = !{!1286}
!1286 = !DISubrange(count: 129)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !1279, file: !1280, line: 387, baseType: !6, size: 32, offset: 13888)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1279, file: !1280, line: 388, baseType: !6, size: 32, offset: 13920)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !1279, file: !1280, line: 389, baseType: !6, size: 32, offset: 13952)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !1279, file: !1280, line: 390, baseType: !6, size: 32, offset: 13984)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !1279, file: !1280, line: 391, baseType: !6, size: 32, offset: 14016)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1279, file: !1280, line: 402, baseType: !1293, size: 576, offset: 14080)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1280, line: 394, size: 576, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !1293, file: !1280, line: 396, baseType: !6, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !1293, file: !1280, line: 397, baseType: !6, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !1293, file: !1280, line: 398, baseType: !372, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !1293, file: !1280, line: 399, baseType: !6, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !1293, file: !1280, line: 400, baseType: !262, size: 64, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !1293, file: !1280, line: 401, baseType: !1301, size: 320, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !1302, line: 56, baseType: !1303)
!1302 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !1302, line: 47, size: 320, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1311, !1312}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !1303, file: !1302, line: 49, baseType: !262, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1303, file: !1302, line: 50, baseType: !262, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !1303, file: !1302, line: 51, baseType: !262, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !1303, file: !1302, line: 53, baseType: !1309, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !1310, line: 87, baseType: !15)
!1310 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !1303, file: !1302, line: 54, baseType: !6, size: 32, offset: 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !1303, file: !1302, line: 55, baseType: !6, size: 32, offset: 288)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !1279, file: !1280, line: 404, baseType: !262, size: 64, offset: 14656)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !1279, file: !1280, line: 405, baseType: !6, size: 32, offset: 14720)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !1279, file: !1280, line: 410, baseType: !6, size: 32, offset: 14752)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1279, file: !1280, line: 411, baseType: !6, size: 32, offset: 14784)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !1279, file: !1280, line: 413, baseType: !6, size: 32, offset: 14816)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !1279, file: !1280, line: 415, baseType: !6, size: 32, offset: 14848)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !1279, file: !1280, line: 416, baseType: !6, size: 32, offset: 14880)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !1279, file: !1280, line: 418, baseType: !6, size: 32, offset: 14912)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !1279, file: !1280, line: 419, baseType: !6, size: 32, offset: 14944)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !1279, file: !1280, line: 420, baseType: !6, size: 32, offset: 14976)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !1279, file: !1280, line: 421, baseType: !6, size: 32, offset: 15008)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !1279, file: !1280, line: 422, baseType: !6, size: 32, offset: 15040)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !1279, file: !1280, line: 424, baseType: !6, size: 32, offset: 15072)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !1279, file: !1280, line: 425, baseType: !6, size: 32, offset: 15104)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !1279, file: !1280, line: 427, baseType: !6, size: 32, offset: 15136)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !1279, file: !1280, line: 430, baseType: !1329, size: 10400, offset: 15168)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1330, size: 10400, elements: !462)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !1331, line: 154, baseType: !1332)
!1331 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1331, line: 52, size: 10400, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1366, !1367, !1415}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !1332, file: !1331, line: 54, baseType: !6, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !1332, file: !1331, line: 56, baseType: !6, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !1332, file: !1331, line: 57, baseType: !6, size: 32, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !1332, file: !1331, line: 59, baseType: !6, size: 32, offset: 96)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !1332, file: !1331, line: 60, baseType: !6, size: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !1332, file: !1331, line: 61, baseType: !6, size: 32, offset: 160)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !1332, file: !1331, line: 63, baseType: !6, size: 32, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !1332, file: !1331, line: 65, baseType: !6, size: 32, offset: 224)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !1332, file: !1331, line: 67, baseType: !6, size: 32, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !1332, file: !1331, line: 69, baseType: !6, size: 32, offset: 288)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !1332, file: !1331, line: 70, baseType: !6, size: 32, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !1332, file: !1331, line: 71, baseType: !6, size: 32, offset: 352)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !1332, file: !1331, line: 72, baseType: !6, size: 32, offset: 384)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !1332, file: !1331, line: 73, baseType: !1348, size: 8192, offset: 416)
!1348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8192, elements: !1349)
!1349 = !{!1350}
!1350 = !DISubrange(count: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !1332, file: !1331, line: 75, baseType: !6, size: 32, offset: 8608)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !1332, file: !1331, line: 76, baseType: !6, size: 32, offset: 8640)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !1332, file: !1331, line: 77, baseType: !6, size: 32, offset: 8672)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !1332, file: !1331, line: 78, baseType: !6, size: 32, offset: 8704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !1332, file: !1331, line: 79, baseType: !6, size: 32, offset: 8736)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !1332, file: !1331, line: 80, baseType: !6, size: 32, offset: 8768)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !1332, file: !1331, line: 81, baseType: !6, size: 32, offset: 8800)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !1332, file: !1331, line: 83, baseType: !6, size: 32, offset: 8832)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !1332, file: !1331, line: 90, baseType: !1360, size: 128, offset: 8864)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1331, line: 84, size: 128, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !1360, file: !1331, line: 86, baseType: !6, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !1360, file: !1331, line: 87, baseType: !6, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !1360, file: !1331, line: 88, baseType: !6, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !1360, file: !1331, line: 89, baseType: !6, size: 32, offset: 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !1332, file: !1331, line: 92, baseType: !6, size: 32, offset: 8992)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !1332, file: !1331, line: 150, baseType: !1368, size: 1344, offset: 9024)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1331, line: 93, size: 1344, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !1368, file: !1331, line: 95, baseType: !6, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !1368, file: !1331, line: 96, baseType: !6, size: 32, offset: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !1368, file: !1331, line: 97, baseType: !6, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !1368, file: !1331, line: 99, baseType: !6, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !1368, file: !1331, line: 100, baseType: !6, size: 32, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !1368, file: !1331, line: 102, baseType: !6, size: 32, offset: 160)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !1368, file: !1331, line: 103, baseType: !6, size: 32, offset: 192)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !1368, file: !1331, line: 104, baseType: !6, size: 32, offset: 224)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !1368, file: !1331, line: 105, baseType: !6, size: 32, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !1368, file: !1331, line: 106, baseType: !6, size: 32, offset: 288)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !1368, file: !1331, line: 107, baseType: !6, size: 32, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !1368, file: !1331, line: 108, baseType: !6, size: 32, offset: 352)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !1368, file: !1331, line: 110, baseType: !6, size: 32, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !1368, file: !1331, line: 111, baseType: !6, size: 32, offset: 416)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !1368, file: !1331, line: 112, baseType: !6, size: 32, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !1368, file: !1331, line: 114, baseType: !6, size: 32, offset: 480)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !1368, file: !1331, line: 115, baseType: !37, size: 32, offset: 512)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !1368, file: !1331, line: 116, baseType: !37, size: 32, offset: 544)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !1368, file: !1331, line: 117, baseType: !6, size: 32, offset: 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !1368, file: !1331, line: 119, baseType: !6, size: 32, offset: 608)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !1368, file: !1331, line: 120, baseType: !6, size: 32, offset: 640)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !1368, file: !1331, line: 137, baseType: !1392, size: 384, offset: 672)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !1331, line: 122, size: 384, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !1392, file: !1331, line: 124, baseType: !6, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !1392, file: !1331, line: 125, baseType: !6, size: 32, offset: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !1392, file: !1331, line: 126, baseType: !6, size: 32, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !1392, file: !1331, line: 127, baseType: !6, size: 32, offset: 96)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !1392, file: !1331, line: 128, baseType: !6, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !1392, file: !1331, line: 129, baseType: !6, size: 32, offset: 160)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !1392, file: !1331, line: 130, baseType: !6, size: 32, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !1392, file: !1331, line: 131, baseType: !6, size: 32, offset: 224)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !1392, file: !1331, line: 133, baseType: !6, size: 32, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !1392, file: !1331, line: 134, baseType: !6, size: 32, offset: 288)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !1392, file: !1331, line: 135, baseType: !6, size: 32, offset: 320)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !1392, file: !1331, line: 136, baseType: !6, size: 32, offset: 352)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !1368, file: !1331, line: 139, baseType: !6, size: 32, offset: 1056)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !1368, file: !1331, line: 140, baseType: !6, size: 32, offset: 1088)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !1368, file: !1331, line: 141, baseType: !6, size: 32, offset: 1120)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !1368, file: !1331, line: 142, baseType: !6, size: 32, offset: 1152)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !1368, file: !1331, line: 143, baseType: !6, size: 32, offset: 1184)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !1368, file: !1331, line: 144, baseType: !6, size: 32, offset: 1216)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !1368, file: !1331, line: 145, baseType: !6, size: 32, offset: 1248)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !1368, file: !1331, line: 146, baseType: !6, size: 32, offset: 1280)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !1368, file: !1331, line: 147, baseType: !6, size: 32, offset: 1312)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !1332, file: !1331, line: 152, baseType: !6, size: 32, offset: 10368)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !1279, file: !1280, line: 431, baseType: !1417, size: 64, offset: 25600)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !1279, file: !1280, line: 432, baseType: !1419, size: 960, offset: 25664)
!1419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 960, elements: !462)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !1331, line: 186, baseType: !1421)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1331, line: 156, size: 960, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !1421, file: !1331, line: 158, baseType: !6, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !1421, file: !1331, line: 159, baseType: !6, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !1421, file: !1331, line: 161, baseType: !6, size: 32, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !1421, file: !1331, line: 163, baseType: !6, size: 32, offset: 96)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !1421, file: !1331, line: 164, baseType: !6, size: 32, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !1421, file: !1331, line: 166, baseType: !6, size: 32, offset: 160)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !1421, file: !1331, line: 167, baseType: !6, size: 32, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !1421, file: !1331, line: 169, baseType: !6, size: 32, offset: 224)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !1421, file: !1331, line: 170, baseType: !6, size: 32, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !1421, file: !1331, line: 172, baseType: !6, size: 32, offset: 288)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !1421, file: !1331, line: 173, baseType: !6, size: 32, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !1421, file: !1331, line: 175, baseType: !6, size: 32, offset: 352)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !1421, file: !1331, line: 177, baseType: !6, size: 32, offset: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !1421, file: !1331, line: 178, baseType: !6, size: 32, offset: 416)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !1421, file: !1331, line: 179, baseType: !6, size: 32, offset: 448)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !1421, file: !1331, line: 181, baseType: !6, size: 32, offset: 480)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !1421, file: !1331, line: 183, baseType: !6, size: 32, offset: 512)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !1421, file: !1331, line: 184, baseType: !1441, size: 384, offset: 576)
!1441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1442, size: 384, elements: !323)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !1279, file: !1280, line: 433, baseType: !1445, size: 64, offset: 26624)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !1279, file: !1280, line: 434, baseType: !6, size: 32, offset: 26688)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !1279, file: !1280, line: 437, baseType: !6, size: 32, offset: 26720)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !1279, file: !1280, line: 440, baseType: !1449, size: 256, offset: 26752)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1450, size: 256, elements: !258)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !129)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !1279, file: !1280, line: 441, baseType: !1453, size: 128, offset: 27008)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1454, size: 128, elements: !184)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !136)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !1279, file: !1280, line: 443, baseType: !1449, size: 256, offset: 27136)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !1279, file: !1280, line: 444, baseType: !1453, size: 128, offset: 27392)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !1279, file: !1280, line: 446, baseType: !1459, size: 256, offset: 27520)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1460, size: 256, elements: !258)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1462, size: 256, elements: !129)
!1462 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !38, line: 25, baseType: !1463)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !14, line: 40, baseType: !457)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !1279, file: !1280, line: 447, baseType: !1465, size: 128, offset: 27776)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 128, elements: !184)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1462, size: 1024, elements: !136)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !1279, file: !1280, line: 448, baseType: !1459, size: 256, offset: 27904)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !1279, file: !1280, line: 449, baseType: !1465, size: 128, offset: 28160)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !1279, file: !1280, line: 454, baseType: !1471, size: 5888, offset: 28288)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1472, size: 5888, elements: !1473)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1473 = !{!1474}
!1474 = !DISubrange(count: 92)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !1279, file: !1280, line: 455, baseType: !1476, size: 23552, offset: 34176)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1472, size: 23552, elements: !1477)
!1477 = !{!1474, !259}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !1279, file: !1280, line: 457, baseType: !1442, size: 64, offset: 57728)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !1279, file: !1280, line: 460, baseType: !1480, size: 53376, offset: 57856)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !1280, line: 364, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1280, line: 302, size: 53376, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1511, !1538, !1539, !1540, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !1481, file: !1280, line: 304, baseType: !1417, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !1481, file: !1280, line: 305, baseType: !1445, size: 64, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1481, file: !1280, line: 307, baseType: !6, size: 32, offset: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !1481, file: !1280, line: 308, baseType: !6, size: 32, offset: 160)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !1481, file: !1280, line: 309, baseType: !6, size: 32, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !1481, file: !1280, line: 311, baseType: !6, size: 32, offset: 224)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1481, file: !1280, line: 313, baseType: !6, size: 32, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !1481, file: !1280, line: 315, baseType: !6, size: 32, offset: 288)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !1481, file: !1280, line: 316, baseType: !6, size: 32, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !1481, file: !1280, line: 317, baseType: !6, size: 32, offset: 352)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !1481, file: !1280, line: 319, baseType: !6, size: 32, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1481, file: !1280, line: 321, baseType: !6, size: 32, offset: 416)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !1481, file: !1280, line: 322, baseType: !6, size: 32, offset: 448)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !1481, file: !1280, line: 324, baseType: !183, size: 64, offset: 480)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !1481, file: !1280, line: 325, baseType: !6, size: 32, offset: 544)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !1481, file: !1280, line: 327, baseType: !6, size: 32, offset: 576)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !1481, file: !1280, line: 329, baseType: !6, size: 32, offset: 608)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !1481, file: !1280, line: 330, baseType: !6, size: 32, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !1481, file: !1280, line: 331, baseType: !6, size: 32, offset: 672)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !1481, file: !1280, line: 333, baseType: !6, size: 32, offset: 704)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !1481, file: !1280, line: 334, baseType: !6, size: 32, offset: 736)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !1481, file: !1280, line: 339, baseType: !1505, size: 2048, offset: 768)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1506, size: 2048, elements: !1510)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !1280, line: 335, size: 64, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !1506, file: !1280, line: 337, baseType: !6, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1506, file: !1280, line: 338, baseType: !6, size: 32, offset: 32)
!1510 = !{!185, !130}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1481, file: !1280, line: 342, baseType: !1512, size: 49152, align: 128, offset: 2816)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1513, size: 49152, align: 128, elements: !1536)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !1514, line: 36, baseType: !1515, align: 128)
!1514 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !1514, line: 26, size: 512, elements: !1516)
!1516 = !{!1517, !1522, !1523, !1526, !1527, !1528}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !1515, file: !1514, line: 30, baseType: !1518, size: 128, align: 128)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 128, elements: !352)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !12, line: 25, baseType: !1520)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !14, line: 39, baseType: !1521)
!1521 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !1515, file: !1514, line: 31, baseType: !1518, size: 128, offset: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !1515, file: !1514, line: 32, baseType: !1524, size: 32, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !12, line: 26, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !14, line: 41, baseType: !6)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !1515, file: !1514, line: 33, baseType: !1524, size: 32, offset: 288)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !1515, file: !1514, line: 34, baseType: !1524, size: 32, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !1515, file: !1514, line: 35, baseType: !1529, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !1514, line: 25, baseType: !1531)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !262, !6, !262, !6, !1534, !6}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1515)
!1536 = !{!1537, !336}
!1537 = !DISubrange(count: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !1481, file: !1280, line: 344, baseType: !6, size: 32, offset: 51968)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !1481, file: !1280, line: 345, baseType: !6, size: 32, offset: 52000)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !1481, file: !1280, line: 350, baseType: !1541, size: 1024, offset: 52032)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1542, size: 1024, elements: !129)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !1280, line: 346, size: 64, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !1542, file: !1280, line: 348, baseType: !6, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1542, file: !1280, line: 349, baseType: !6, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !1481, file: !1280, line: 352, baseType: !6, size: 32, offset: 53056)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !1481, file: !1280, line: 354, baseType: !6, size: 32, offset: 53088)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !1481, file: !1280, line: 355, baseType: !6, size: 32, offset: 53120)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !1481, file: !1280, line: 356, baseType: !6, size: 32, offset: 53152)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !1481, file: !1280, line: 357, baseType: !6, size: 32, offset: 53184)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !1481, file: !1280, line: 360, baseType: !6, size: 32, offset: 53216)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !1481, file: !1280, line: 361, baseType: !6, size: 32, offset: 53248)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !1481, file: !1280, line: 362, baseType: !6, size: 32, offset: 53280)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !1279, file: !1280, line: 463, baseType: !1555, size: 4096, offset: 111232)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !1556, line: 46, baseType: !1557)
!1556 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1556, line: 27, size: 4096, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !1557, file: !1556, line: 30, baseType: !6, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !1557, file: !1556, line: 31, baseType: !6, size: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !1557, file: !1556, line: 34, baseType: !6, size: 32, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !1557, file: !1556, line: 35, baseType: !6, size: 32, offset: 96)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !1557, file: !1556, line: 37, baseType: !262, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1557, file: !1556, line: 38, baseType: !262, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !1557, file: !1556, line: 39, baseType: !262, size: 64, offset: 256)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !1557, file: !1556, line: 42, baseType: !6, size: 32, align: 128, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1557, file: !1556, line: 45, baseType: !1568, size: 3680, offset: 416)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 3680, elements: !1569)
!1569 = !{!1570}
!1570 = !DISubrange(count: 460)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !1279, file: !1280, line: 494, baseType: !1572, size: 2112, offset: 115328)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1280, line: 465, size: 2112, elements: !1573)
!1573 = !{!1574, !1697, !1699, !1700, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1713, !1714, !1715, !1716}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1572, file: !1280, line: 468, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !1578, line: 146, baseType: !1579)
!1578 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !1578, line: 31, size: 125056, elements: !1580)
!1580 = !{!1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1607, !1608, !1609, !1610, !1611, !1612, !1614, !1615, !1616, !1617, !1618, !1619, !1622, !1624, !1625, !1627, !1631, !1632, !1636, !1637, !1641, !1645, !1647, !1649, !1650, !1652, !1653, !1655, !1656, !1657, !1660, !1662, !1663, !1664, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1675, !1676, !1677, !1678, !1682, !1684, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !1579, file: !1578, line: 34, baseType: !6, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1579, file: !1578, line: 35, baseType: !6, size: 32, offset: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !1579, file: !1578, line: 36, baseType: !6, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !1579, file: !1578, line: 37, baseType: !11, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !1579, file: !1578, line: 38, baseType: !11, size: 64, offset: 192)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !1579, file: !1578, line: 39, baseType: !6, size: 32, offset: 256)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !1579, file: !1578, line: 40, baseType: !6, size: 32, offset: 288)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !1579, file: !1578, line: 41, baseType: !6, size: 32, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !1579, file: !1578, line: 42, baseType: !6, size: 32, offset: 352)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1579, file: !1578, line: 43, baseType: !79, size: 64, offset: 384)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !1579, file: !1578, line: 45, baseType: !6, size: 32, offset: 448)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !1579, file: !1578, line: 46, baseType: !6, size: 32, offset: 480)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !1579, file: !1578, line: 47, baseType: !6, size: 32, offset: 512)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !1579, file: !1578, line: 48, baseType: !6, size: 32, offset: 544)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !1579, file: !1578, line: 49, baseType: !6, size: 32, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !1579, file: !1578, line: 50, baseType: !6, size: 32, offset: 608)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !1579, file: !1578, line: 51, baseType: !6, size: 32, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !1579, file: !1578, line: 52, baseType: !126, size: 8, offset: 672)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !1579, file: !1578, line: 53, baseType: !126, size: 8, offset: 680)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !1579, file: !1578, line: 54, baseType: !126, size: 8, offset: 688)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !1579, file: !1578, line: 55, baseType: !179, size: 32, offset: 704)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !1579, file: !1578, line: 56, baseType: !179, size: 32, offset: 736)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !1579, file: !1578, line: 57, baseType: !6, size: 32, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !1579, file: !1578, line: 60, baseType: !6, size: 32, offset: 800)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1579, file: !1578, line: 61, baseType: !1606, size: 96, offset: 832)
!1606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 96, elements: !335)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !1579, file: !1578, line: 62, baseType: !1606, size: 96, offset: 928)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !1579, file: !1578, line: 63, baseType: !1606, size: 96, offset: 1024)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !1579, file: !1578, line: 64, baseType: !6, size: 32, offset: 1120)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !1579, file: !1578, line: 65, baseType: !6, size: 32, offset: 1152)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !1579, file: !1578, line: 66, baseType: !6, size: 32, offset: 1184)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !1579, file: !1578, line: 67, baseType: !1613, size: 192, offset: 1216)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 192, elements: !335)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !1579, file: !1578, line: 68, baseType: !261, size: 256, offset: 1408)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !1579, file: !1578, line: 69, baseType: !261, size: 256, offset: 1664)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !1579, file: !1578, line: 70, baseType: !1472, size: 64, offset: 1920)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1579, file: !1578, line: 74, baseType: !261, size: 256, offset: 1984)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !1579, file: !1578, line: 75, baseType: !261, size: 256, offset: 2240)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1579, file: !1578, line: 77, baseType: !1620, size: 24576, align: 128, offset: 2560)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1513, size: 24576, align: 128, elements: !1621)
!1621 = !{!130, !336}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !1579, file: !1578, line: 78, baseType: !1623, size: 1024, offset: 27136)
!1623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 1024, elements: !129)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !1579, file: !1578, line: 79, baseType: !6, size: 32, offset: 28160)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !1579, file: !1578, line: 80, baseType: !1626, size: 64, offset: 28224)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !1579, file: !1578, line: 83, baseType: !1628, size: 64, offset: 28288)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !12, line: 24, baseType: !1630)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !14, line: 37, baseType: !459)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !1579, file: !1578, line: 84, baseType: !262, size: 64, offset: 28352)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1579, file: !1578, line: 85, baseType: !1633, size: 128, offset: 28416)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1634, size: 128, elements: !184)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 32, elements: !184)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !1579, file: !1578, line: 86, baseType: !1634, size: 64, offset: 28544)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !1579, file: !1578, line: 87, baseType: !1638, size: 2176, offset: 28608)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1634, size: 2176, elements: !1639)
!1639 = !{!185, !1640}
!1640 = !DISubrange(count: 17)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !1579, file: !1578, line: 92, baseType: !1642, size: 20736, offset: 30784)
!1642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1472, size: 20736, elements: !1643)
!1643 = !{!1644, !1644}
!1644 = !DISubrange(count: 18)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !1579, file: !1578, line: 96, baseType: !1646, size: 2176, offset: 51520)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 2176, elements: !1639)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1579, file: !1578, line: 97, baseType: !1648, size: 128, offset: 53696)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1628, size: 128, elements: !184)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !1579, file: !1578, line: 98, baseType: !183, size: 64, offset: 53824)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !1579, file: !1578, line: 99, baseType: !1651, size: 1024, offset: 53888)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, elements: !1510)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !1579, file: !1578, line: 100, baseType: !1635, size: 32, offset: 54912)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !1579, file: !1578, line: 105, baseType: !1654, size: 10368, offset: 54944)
!1654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 10368, elements: !1643)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !1579, file: !1578, line: 106, baseType: !1654, size: 10368, offset: 65312)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !1579, file: !1578, line: 107, baseType: !6, size: 32, offset: 75680)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !1579, file: !1578, line: 108, baseType: !1658, size: 576, offset: 75712)
!1658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 576, elements: !1659)
!1659 = !{!1644}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !1579, file: !1578, line: 109, baseType: !1661, size: 20736, offset: 76288)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 20736, elements: !1643)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !1579, file: !1578, line: 110, baseType: !312, size: 64, offset: 97024)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !1579, file: !1578, line: 111, baseType: !312, size: 64, offset: 97088)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !1579, file: !1578, line: 112, baseType: !1665, size: 64, offset: 97152)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !1579, file: !1578, line: 113, baseType: !1665, size: 64, offset: 97216)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !1579, file: !1578, line: 114, baseType: !1665, size: 64, offset: 97280)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !1579, file: !1578, line: 115, baseType: !6, size: 32, offset: 97344)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !1579, file: !1578, line: 116, baseType: !1472, size: 64, offset: 97408)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !1579, file: !1578, line: 117, baseType: !1472, size: 64, offset: 97472)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !1579, file: !1578, line: 118, baseType: !1472, size: 64, offset: 97536)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !1579, file: !1578, line: 119, baseType: !6, size: 32, offset: 97600)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !1579, file: !1578, line: 120, baseType: !1674, size: 576, offset: 97632)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 576, elements: !1659)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !1579, file: !1578, line: 121, baseType: !37, size: 32, offset: 98208)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !1579, file: !1578, line: 122, baseType: !545, size: 64, offset: 98240)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !1579, file: !1578, line: 125, baseType: !264, size: 256, offset: 98304)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !1579, file: !1578, line: 128, baseType: !1679, size: 2008, offset: 98560)
!1679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2008, elements: !1680)
!1680 = !{!1681}
!1681 = !DISubrange(count: 251)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !1579, file: !1578, line: 129, baseType: !1683, size: 8032, offset: 100576)
!1683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8032, elements: !1680)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !1579, file: !1578, line: 130, baseType: !1685, size: 16064, offset: 108608)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 16064, elements: !1680)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !1579, file: !1578, line: 131, baseType: !6, size: 32, offset: 124672)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !1579, file: !1578, line: 132, baseType: !6, size: 32, offset: 124704)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !1579, file: !1578, line: 135, baseType: !6, size: 32, offset: 124736)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !1579, file: !1578, line: 136, baseType: !6, size: 32, offset: 124768)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !1579, file: !1578, line: 137, baseType: !6, size: 32, offset: 124800)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1579, file: !1578, line: 138, baseType: !6, size: 32, offset: 124832)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !1579, file: !1578, line: 139, baseType: !6, size: 32, offset: 124864)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !1579, file: !1578, line: 142, baseType: !179, size: 32, offset: 124896)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !1579, file: !1578, line: 143, baseType: !6, size: 32, offset: 124928)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !1579, file: !1578, line: 144, baseType: !6, size: 32, offset: 124960)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !1579, file: !1578, line: 145, baseType: !6, size: 32, offset: 124992)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !1572, file: !1280, line: 470, baseType: !1698, size: 128, offset: 64)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1575, size: 128, elements: !184)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !1572, file: !1280, line: 473, baseType: !1575, size: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1572, file: !1280, line: 476, baseType: !1701, size: 1152, offset: 256)
!1701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1576, size: 1152, elements: !1659)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1572, file: !1280, line: 478, baseType: !6, size: 32, offset: 1408)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !1572, file: !1280, line: 480, baseType: !6, size: 32, offset: 1440)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !1572, file: !1280, line: 482, baseType: !6, size: 32, offset: 1472)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !1572, file: !1280, line: 483, baseType: !6, size: 32, offset: 1504)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !1572, file: !1280, line: 484, baseType: !6, size: 32, offset: 1536)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !1572, file: !1280, line: 485, baseType: !6, size: 32, offset: 1568)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !1572, file: !1280, line: 486, baseType: !6, size: 32, offset: 1600)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !1572, file: !1280, line: 487, baseType: !11, size: 64, offset: 1664)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !1572, file: !1280, line: 488, baseType: !11, size: 64, offset: 1728)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !1572, file: !1280, line: 489, baseType: !1712, size: 128, offset: 1792)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !184)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !1572, file: !1280, line: 490, baseType: !11, size: 64, offset: 1920)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !1572, file: !1280, line: 491, baseType: !11, size: 64, offset: 1984)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !1572, file: !1280, line: 492, baseType: !6, size: 32, offset: 2048)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !1572, file: !1280, line: 493, baseType: !6, size: 32, offset: 2080)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !1279, file: !1280, line: 497, baseType: !1576, size: 64, offset: 117440)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !1279, file: !1280, line: 500, baseType: !1576, size: 64, offset: 117504)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !1279, file: !1280, line: 503, baseType: !6, size: 32, offset: 117568)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !1279, file: !1280, line: 504, baseType: !1721, size: 1216, offset: 117632)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1576, size: 1216, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 19)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !1279, file: !1280, line: 505, baseType: !6, size: 32, offset: 118848)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !1279, file: !1280, line: 506, baseType: !1721, size: 1216, offset: 118912)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !1279, file: !1280, line: 507, baseType: !183, size: 64, offset: 120128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !1279, file: !1280, line: 510, baseType: !6, size: 32, offset: 120192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !1279, file: !1280, line: 511, baseType: !6, size: 32, offset: 120224)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !1279, file: !1280, line: 512, baseType: !11, size: 64, offset: 120256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !1279, file: !1280, line: 522, baseType: !1731, size: 10624, offset: 120320)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1280, line: 515, size: 10624, elements: !1732)
!1732 = !{!1733, !1735, !1738, !1741}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !1731, file: !1280, line: 517, baseType: !1734, size: 256, align: 128)
!1734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 256, elements: !129)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !1731, file: !1280, line: 518, baseType: !1736, size: 128, align: 128, offset: 256)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 128, elements: !1737)
!1737 = !{!185, !259}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !1731, file: !1280, line: 520, baseType: !1739, size: 4096, align: 128, offset: 384)
!1739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 4096, elements: !1740)
!1740 = !{!259, !137}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !1731, file: !1280, line: 521, baseType: !1742, size: 6144, align: 128, offset: 4480)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 6144, elements: !1743)
!1743 = !{!399, !130}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !1279, file: !1280, line: 732, baseType: !1745, size: 82688, offset: 130944)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1280, line: 525, size: 82688, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1774, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1792, !1795, !1797, !1798, !1799, !1804, !1805, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1874, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1916, !1917, !1918, !1921, !1924, !1926, !1929, !1931, !1932}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1745, file: !1280, line: 527, baseType: !6, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !1745, file: !1280, line: 530, baseType: !6, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !1745, file: !1280, line: 531, baseType: !6, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !1745, file: !1280, line: 532, baseType: !6, size: 32, offset: 96)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !1745, file: !1280, line: 535, baseType: !6, size: 32, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !1745, file: !1280, line: 536, baseType: !6, size: 32, offset: 160)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !1745, file: !1280, line: 537, baseType: !6, size: 32, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !1745, file: !1280, line: 538, baseType: !6, size: 32, offset: 224)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !1745, file: !1280, line: 539, baseType: !6, size: 32, offset: 256)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !1745, file: !1280, line: 542, baseType: !6, size: 32, offset: 288)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !1745, file: !1280, line: 543, baseType: !6, size: 32, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !1745, file: !1280, line: 544, baseType: !6, size: 32, offset: 352)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !1745, file: !1280, line: 545, baseType: !6, size: 32, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !1745, file: !1280, line: 546, baseType: !6, size: 32, offset: 416)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !1745, file: !1280, line: 547, baseType: !6, size: 32, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !1745, file: !1280, line: 548, baseType: !6, size: 32, offset: 480)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !1745, file: !1280, line: 549, baseType: !6, size: 32, offset: 512)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !1745, file: !1280, line: 551, baseType: !6, size: 32, offset: 544)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !1745, file: !1280, line: 554, baseType: !183, size: 64, offset: 576)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !1745, file: !1280, line: 555, baseType: !183, size: 64, offset: 640)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !1745, file: !1280, line: 558, baseType: !183, size: 64, offset: 704)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !1745, file: !1280, line: 559, baseType: !183, size: 64, offset: 768)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !1745, file: !1280, line: 561, baseType: !183, size: 64, offset: 832)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !1745, file: !1280, line: 562, baseType: !183, size: 64, offset: 896)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !1745, file: !1280, line: 565, baseType: !40, size: 32, offset: 960)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !1745, file: !1280, line: 566, baseType: !1773, size: 128, offset: 992)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !258)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !1745, file: !1280, line: 567, baseType: !1775, size: 512, offset: 1120)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 512, elements: !129)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !1745, file: !1280, line: 568, baseType: !40, size: 32, offset: 1632)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !1745, file: !1280, line: 569, baseType: !40, size: 32, offset: 1664)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !1745, file: !1280, line: 570, baseType: !6, size: 32, offset: 1696)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !1745, file: !1280, line: 571, baseType: !6, size: 32, offset: 1728)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !1745, file: !1280, line: 572, baseType: !6, size: 32, offset: 1760)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !1745, file: !1280, line: 573, baseType: !6, size: 32, offset: 1792)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !1745, file: !1280, line: 574, baseType: !6, size: 32, offset: 1824)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !1745, file: !1280, line: 575, baseType: !6, size: 32, offset: 1856)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !1745, file: !1280, line: 576, baseType: !6, size: 32, offset: 1888)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !1745, file: !1280, line: 577, baseType: !6, size: 32, offset: 1920)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !1745, file: !1280, line: 578, baseType: !6, size: 32, offset: 1952)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1745, file: !1280, line: 585, baseType: !1628, size: 64, offset: 1984)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !1745, file: !1280, line: 586, baseType: !262, size: 64, offset: 2048)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !1745, file: !1280, line: 587, baseType: !1628, size: 64, offset: 2112)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !1745, file: !1280, line: 588, baseType: !1791, size: 64, offset: 2176)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !1745, file: !1280, line: 589, baseType: !1793, size: 64, offset: 2240)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 64, elements: !352)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !1745, file: !1280, line: 591, baseType: !1796, size: 64, offset: 2304)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !1745, file: !1280, line: 592, baseType: !1628, size: 64, offset: 2368)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1745, file: !1280, line: 593, baseType: !1633, size: 128, offset: 2432)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1745, file: !1280, line: 594, baseType: !1800, size: 128, offset: 2560)
!1800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1801, size: 128, elements: !184)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !1803)
!1803 = !{!353, !185}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1745, file: !1280, line: 595, baseType: !1648, size: 128, offset: 2688)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !1745, file: !1280, line: 596, baseType: !1806, size: 4096, offset: 2816)
!1806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1634, size: 4096, elements: !1807)
!1807 = !{!185, !1537}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !1745, file: !1280, line: 597, baseType: !1628, size: 64, offset: 6912)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !1745, file: !1280, line: 598, baseType: !1628, size: 64, offset: 6976)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !1745, file: !1280, line: 599, baseType: !1472, size: 64, offset: 7040)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !1745, file: !1280, line: 603, baseType: !1623, size: 1024, offset: 7104)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1745, file: !1280, line: 606, baseType: !6, size: 32, offset: 8128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !1745, file: !1280, line: 607, baseType: !6, size: 32, offset: 8160)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !1745, file: !1280, line: 608, baseType: !1815, size: 32, align: 32, offset: 8192)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 32, elements: !258)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !1745, file: !1280, line: 609, baseType: !6, size: 32, offset: 8224)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !1745, file: !1280, line: 611, baseType: !6, size: 32, offset: 8256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !1745, file: !1280, line: 612, baseType: !6, size: 32, offset: 8288)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !1745, file: !1280, line: 614, baseType: !6, size: 32, offset: 8320)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !1745, file: !1280, line: 615, baseType: !6, size: 32, offset: 8352)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !1745, file: !1280, line: 621, baseType: !6, size: 32, offset: 8384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !1745, file: !1280, line: 624, baseType: !6, size: 32, offset: 8416)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !1745, file: !1280, line: 626, baseType: !6, size: 32, offset: 8448)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !1745, file: !1280, line: 627, baseType: !6, size: 32, offset: 8480)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !1745, file: !1280, line: 671, baseType: !1826, size: 60672, offset: 8576)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1745, file: !1280, line: 629, size: 60672, elements: !1827)
!1827 = !{!1828, !1832, !1836, !1838, !1839, !1842, !1846, !1848, !1849, !1850, !1851, !1852, !1855, !1859, !1862, !1863, !1864, !1865, !1866, !1869, !1871, !1873}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !1826, file: !1280, line: 634, baseType: !1829, size: 3072, align: 128)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 3072, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 384)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !1826, file: !1280, line: 635, baseType: !1833, size: 6912, align: 128, offset: 3072)
!1833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 6912, elements: !1834)
!1834 = !{!1835}
!1835 = !DISubrange(count: 864)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !1826, file: !1280, line: 638, baseType: !1837, size: 2048, align: 128, offset: 9984)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !1349)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !1826, file: !1280, line: 639, baseType: !1837, size: 2048, align: 128, offset: 12032)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !1826, file: !1280, line: 640, baseType: !1840, size: 3072, align: 128, offset: 14080)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 3072, elements: !1841)
!1841 = !{!336, !137}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !1826, file: !1280, line: 641, baseType: !1843, size: 3840, align: 128, offset: 17152)
!1843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 3840, elements: !1844)
!1844 = !{!1845, !130}
!1845 = !DISubrange(count: 15)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !1826, file: !1280, line: 642, baseType: !1847, size: 128, offset: 20992)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !258)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !1826, file: !1280, line: 643, baseType: !1847, size: 128, offset: 21120)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !1826, file: !1280, line: 644, baseType: !6, size: 32, offset: 21248)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !1826, file: !1280, line: 645, baseType: !6, size: 32, offset: 21280)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !1826, file: !1280, line: 648, baseType: !1739, size: 4096, align: 128, offset: 21376)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !1826, file: !1280, line: 649, baseType: !1853, size: 4096, align: 128, offset: 25472)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 4096, elements: !1854)
!1854 = !{!130, !130}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !1826, file: !1280, line: 652, baseType: !1856, size: 576, align: 128, offset: 29568)
!1856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 576, elements: !1857)
!1857 = !{!1858}
!1858 = !DISubrange(count: 9)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !1826, file: !1280, line: 653, baseType: !1860, size: 1024, align: 128, offset: 30208)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1024, elements: !1861)
!1861 = !{!1537}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !1826, file: !1280, line: 656, baseType: !1613, size: 192, offset: 31232)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !1826, file: !1280, line: 658, baseType: !1613, size: 192, offset: 31424)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !1826, file: !1280, line: 661, baseType: !1613, size: 192, offset: 31616)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !1826, file: !1280, line: 664, baseType: !183, size: 64, offset: 31808)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !1826, file: !1280, line: 665, baseType: !1867, size: 24576, offset: 31872)
!1867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 24576, elements: !1868)
!1868 = !{!185, !1537, !324}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !1826, file: !1280, line: 666, baseType: !1870, size: 2048, offset: 56448)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 2048, elements: !1861)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !1826, file: !1280, line: 667, baseType: !1872, size: 2048, offset: 58496)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1472, size: 2048, elements: !1510)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1826, file: !1280, line: 670, baseType: !1606, size: 96, offset: 60544)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1745, file: !1280, line: 704, baseType: !1875, size: 6144, offset: 69248)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1745, file: !1280, line: 674, size: 6144, elements: !1876)
!1876 = !{!1877, !1881, !1885, !1888, !1891, !1893, !1894, !1897, !1899, !1900, !1901, !1902, !1903, !1904}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !1875, file: !1280, line: 677, baseType: !1878, size: 320, align: 64)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 320, elements: !1879)
!1879 = !{!1880}
!1880 = !DISubrange(count: 40)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !1875, file: !1280, line: 680, baseType: !1882, size: 384, align: 128, offset: 384)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 384, elements: !1883)
!1883 = !{!1884}
!1884 = !DISubrange(count: 48)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1875, file: !1280, line: 683, baseType: !1886, size: 640, align: 32, offset: 768)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 640, elements: !1887)
!1887 = !{!185, !1880}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1875, file: !1280, line: 686, baseType: !1889, size: 2560, align: 128, offset: 1408)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 2560, elements: !1890)
!1890 = !{!185, !1880, !185}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1875, file: !1280, line: 687, baseType: !1892, size: 1280, align: 64, offset: 3968)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 1280, elements: !1890)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !1875, file: !1280, line: 690, baseType: !1878, size: 320, align: 32, offset: 5248)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !1875, file: !1280, line: 692, baseType: !1895, size: 256, align: 32, offset: 5568)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 256, elements: !1896)
!1896 = !{!185, !259, !185}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !1875, file: !1280, line: 693, baseType: !1898, size: 64, align: 32, offset: 5824)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 64, elements: !1737)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !1875, file: !1280, line: 694, baseType: !6, size: 32, offset: 5888)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !1875, file: !1280, line: 695, baseType: !1635, size: 32, align: 32, offset: 5920)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !1875, file: !1280, line: 698, baseType: !6, size: 32, offset: 5952)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !1875, file: !1280, line: 699, baseType: !6, size: 32, offset: 5984)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !1875, file: !1280, line: 702, baseType: !6, size: 32, offset: 6016)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !1875, file: !1280, line: 703, baseType: !6, size: 32, offset: 6048)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !1745, file: !1280, line: 707, baseType: !6, size: 32, offset: 75392)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !1745, file: !1280, line: 708, baseType: !6, size: 32, offset: 75424)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !1745, file: !1280, line: 709, baseType: !6, size: 32, offset: 75456)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !1745, file: !1280, line: 710, baseType: !6, size: 32, offset: 75488)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !1745, file: !1280, line: 711, baseType: !6, size: 32, offset: 75520)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !1745, file: !1280, line: 712, baseType: !6, size: 32, offset: 75552)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !1745, file: !1280, line: 713, baseType: !6, size: 32, offset: 75584)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !1745, file: !1280, line: 714, baseType: !6, size: 32, offset: 75616)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !1745, file: !1280, line: 717, baseType: !1914, size: 128, offset: 75648)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128, elements: !1915)
!1915 = !{!185, !185}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !1745, file: !1280, line: 718, baseType: !6, size: 32, offset: 75776)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !1745, file: !1280, line: 719, baseType: !6, size: 32, offset: 75808)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !1745, file: !1280, line: 722, baseType: !1919, size: 4096, offset: 75840)
!1919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 4096, elements: !1920)
!1920 = !{!185, !1537, !259}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !1745, file: !1280, line: 723, baseType: !1922, size: 64, offset: 79936)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 64, elements: !258)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !1745, file: !1280, line: 724, baseType: !1925, size: 2048, offset: 80000)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 2048, elements: !1920)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !1745, file: !1280, line: 725, baseType: !1927, size: 64, offset: 82048)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 32, elements: !258)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !1745, file: !1280, line: 728, baseType: !1930, size: 144, offset: 82112)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 144, elements: !1659)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !1745, file: !1280, line: 729, baseType: !6, size: 32, offset: 82272)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !1745, file: !1280, line: 730, baseType: !1933, size: 272, offset: 82304)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1629, size: 272, elements: !1934)
!1934 = !{!1935}
!1935 = !DISubrange(count: 34)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !1279, file: !1280, line: 735, baseType: !1937, size: 64, offset: 213632)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !1280, line: 379, baseType: !1939)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !1280, line: 379, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !1279, file: !1280, line: 793, baseType: !1941, size: 29504, offset: 213696)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !1280, line: 738, size: 29504, elements: !1942)
!1942 = !{!1943, !1970, !1972, !1974, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1986, !1988, !1989, !1992, !1994, !1996, !1997, !1998}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1941, file: !1280, line: 764, baseType: !1944, size: 5632)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1941, file: !1280, line: 741, size: 5632, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1951, !1952, !1953, !1954, !1955, !1957, !1960, !1962, !1966, !1967, !1969}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !1944, file: !1280, line: 744, baseType: !6, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !1944, file: !1280, line: 746, baseType: !6, size: 32, offset: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !1944, file: !1280, line: 748, baseType: !6, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1944, file: !1280, line: 750, baseType: !1950, size: 608, offset: 96)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 608, elements: !1722)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !1944, file: !1280, line: 751, baseType: !6, size: 32, offset: 704)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !1944, file: !1280, line: 752, baseType: !6, size: 32, offset: 736)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !1944, file: !1280, line: 753, baseType: !6, size: 32, offset: 768)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1944, file: !1280, line: 754, baseType: !183, size: 64, offset: 800)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1944, file: !1280, line: 755, baseType: !1956, size: 2048, offset: 864)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !1807)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1944, file: !1280, line: 756, baseType: !1958, size: 544, offset: 2912)
!1958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 544, elements: !1959)
!1959 = !{!1640}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1944, file: !1280, line: 757, baseType: !1961, size: 192, offset: 3456)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 192, elements: !323)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1944, file: !1280, line: 758, baseType: !1963, size: 1664, offset: 3648)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1664, elements: !1964)
!1964 = !{!259, !1965}
!1965 = !DISubrange(count: 13)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1944, file: !1280, line: 760, baseType: !183, size: 64, offset: 5312)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !1944, file: !1280, line: 762, baseType: !1968, size: 192, offset: 5376)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !335)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !1944, file: !1280, line: 763, baseType: !5, size: 64, offset: 5568)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !1941, file: !1280, line: 769, baseType: !1971, size: 160, offset: 5632)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 160, elements: !296)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !1941, file: !1280, line: 770, baseType: !1973, size: 320, offset: 5824)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !296)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !1941, file: !1280, line: 771, baseType: !1975, size: 320, offset: 6144)
!1975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !296)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !1941, file: !1280, line: 772, baseType: !1958, size: 544, offset: 6464)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !1941, file: !1280, line: 774, baseType: !1973, size: 320, offset: 7040)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !1941, file: !1280, line: 775, baseType: !1975, size: 320, offset: 7360)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !1941, file: !1280, line: 776, baseType: !1975, size: 320, offset: 7680)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !1941, file: !1280, line: 777, baseType: !1975, size: 320, offset: 8000)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !1941, file: !1280, line: 778, baseType: !1975, size: 320, offset: 8320)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !1941, file: !1280, line: 779, baseType: !1975, size: 320, offset: 8640)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1941, file: !1280, line: 781, baseType: !1984, size: 6080, offset: 8960)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 6080, elements: !1985)
!1985 = !{!297, !1723}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1941, file: !1280, line: 782, baseType: !1987, size: 2176, offset: 15040)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2176, elements: !1639)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1941, file: !1280, line: 783, baseType: !1712, size: 128, offset: 17216)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1941, file: !1280, line: 784, baseType: !1990, size: 8192, offset: 17344)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8192, elements: !1991)
!1991 = !{!185, !185, !1537}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1941, file: !1280, line: 785, baseType: !1993, size: 384, offset: 25536)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 384, elements: !323)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1941, file: !1280, line: 786, baseType: !1995, size: 3328, offset: 25920)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 3328, elements: !1964)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1941, file: !1280, line: 788, baseType: !183, size: 64, offset: 29248)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !1941, file: !1280, line: 789, baseType: !183, size: 64, offset: 29312)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !1941, file: !1280, line: 791, baseType: !1606, size: 96, offset: 29376)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !1279, file: !1280, line: 795, baseType: !2000, size: 4096, align: 128, offset: 243200)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 4096, elements: !2001)
!2001 = !{!185, !137}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !1279, file: !1280, line: 796, baseType: !2003, size: 2048, align: 128, offset: 247296)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1462, size: 2048, elements: !2001)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !1279, file: !1280, line: 797, baseType: !2005, size: 64, offset: 249344)
!2005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !184)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !1279, file: !1280, line: 800, baseType: !10, size: 64, offset: 249408)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !1279, file: !1280, line: 801, baseType: !2008, size: 384, offset: 249472)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 384, elements: !2009)
!2009 = !{!185, !336}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1279, file: !1280, line: 802, baseType: !2011, size: 128, offset: 249856)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2012, size: 128, elements: !184)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !2014)
!2014 = !{!185, !259, !259}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !1279, file: !1280, line: 805, baseType: !2016, size: 448, offset: 249984)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2017, size: 448, elements: !330)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !2018, line: 27, baseType: !2019)
!2018 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !262}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !1279, file: !1280, line: 806, baseType: !2016, size: 448, offset: 250432)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !1279, file: !1280, line: 807, baseType: !2024, size: 768, offset: 250880)
!2024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2025, size: 768, elements: !345)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !2018, line: 28, baseType: !2026)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !262, !262}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !1279, file: !1280, line: 808, baseType: !2030, size: 768, offset: 251648)
!2030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2017, size: 768, elements: !345)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !1279, file: !1280, line: 809, baseType: !2032, size: 64, offset: 252416)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !2018, line: 29, baseType: !2033)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{null, !262, !262, !6, !6}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !1279, file: !1280, line: 811, baseType: !2037, size: 8448, offset: 252480)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !2038, line: 110, baseType: !2039)
!2038 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2038, line: 63, size: 8448, elements: !2040)
!2040 = !{!2041, !2047, !2048, !2049, !2050, !2052, !2053, !2054, !2055, !2061, !2067, !2068, !2072, !2077, !2078, !2083, !2087, !2088, !2089, !2090, !2091, !2096, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !2039, file: !2038, line: 65, baseType: !2042, size: 448)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2043, size: 448, elements: !330)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !2038, line: 26, baseType: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!6, !262, !6, !262, !6}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !2039, file: !2038, line: 66, baseType: !2042, size: 448, offset: 448)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !2039, file: !2038, line: 67, baseType: !2042, size: 448, offset: 896)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !2039, file: !2038, line: 68, baseType: !2042, size: 448, offset: 1344)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !2039, file: !2038, line: 69, baseType: !2051, size: 256, offset: 1792)
!2051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2043, size: 256, elements: !258)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !2039, file: !2038, line: 70, baseType: !2042, size: 448, offset: 2048)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !2039, file: !2038, line: 71, baseType: !2042, size: 448, offset: 2496)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !2039, file: !2038, line: 72, baseType: !2042, size: 448, offset: 2944)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !2039, file: !2038, line: 73, baseType: !2056, size: 448, offset: 3392)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2057, size: 448, elements: !330)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !2038, line: 27, baseType: !2058)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !262, !262, !262, !262, !6, !312}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !2039, file: !2038, line: 74, baseType: !2062, size: 448, offset: 3840)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2063, size: 448, elements: !330)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !2038, line: 28, baseType: !2064)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{null, !262, !262, !262, !262, !262, !6, !312}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !2039, file: !2038, line: 75, baseType: !2042, size: 448, offset: 4288)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !2039, file: !2038, line: 76, baseType: !2069, size: 64, offset: 4736)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!6, !262, !6, !262, !6, !312}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2039, file: !2038, line: 78, baseType: !2073, size: 256, offset: 4800)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2074, size: 256, elements: !258)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!545, !262, !6}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !2039, file: !2038, line: 79, baseType: !2073, size: 256, offset: 5056)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !2039, file: !2038, line: 81, baseType: !2079, size: 64, offset: 5312)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !1442, !6, !1442, !6, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !2039, file: !2038, line: 83, baseType: !2084, size: 64, offset: 5376)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!179, !2082, !2082, !6}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !2039, file: !2038, line: 86, baseType: !2056, size: 448, offset: 5440)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !2039, file: !2038, line: 87, baseType: !2062, size: 448, offset: 5888)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !2039, file: !2038, line: 88, baseType: !2056, size: 448, offset: 6336)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !2039, file: !2038, line: 89, baseType: !2062, size: 448, offset: 6784)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !2039, file: !2038, line: 93, baseType: !2092, size: 448, offset: 7232)
!2092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2093, size: 448, elements: !330)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!6, !312, !1472, !6, !1472, !1791, !6, !6}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !2039, file: !2038, line: 98, baseType: !2097, size: 64, offset: 7680)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{null, !262, !262, !312}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !2039, file: !2038, line: 99, baseType: !2097, size: 64, offset: 7744)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !2039, file: !2038, line: 100, baseType: !2097, size: 64, offset: 7808)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !2039, file: !2038, line: 101, baseType: !2097, size: 64, offset: 7872)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !2039, file: !2038, line: 102, baseType: !2097, size: 64, offset: 7936)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !2039, file: !2038, line: 103, baseType: !2097, size: 64, offset: 8000)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !2039, file: !2038, line: 104, baseType: !2097, size: 64, offset: 8064)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !2039, file: !2038, line: 105, baseType: !2097, size: 64, offset: 8128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !2039, file: !2038, line: 106, baseType: !2097, size: 64, offset: 8192)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !2039, file: !2038, line: 107, baseType: !2097, size: 64, offset: 8256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !2039, file: !2038, line: 108, baseType: !2097, size: 64, offset: 8320)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !2039, file: !2038, line: 109, baseType: !2097, size: 64, offset: 8384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !1279, file: !1280, line: 812, baseType: !2112, size: 2368, offset: 260928)
!2112 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !1514, line: 111, baseType: !2113)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1514, line: 58, size: 2368, elements: !2114)
!2114 = !{!2115, !2122, !2126, !2130, !2135, !2140, !2141, !2145, !2149, !2150, !2154, !2160, !2164, !2168, !2169, !2173, !2177, !2181, !2182, !2183, !2184, !2189}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !2113, file: !1514, line: 60, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !262, !6, !2119, !6, !6, !6, !6, !6, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1513)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !2113, file: !1514, line: 65, baseType: !2123, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!262, !262, !312, !2119, !6, !6, !6, !6, !6, !2120}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !2113, file: !1514, line: 71, baseType: !2127, size: 64, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{null, !262, !6, !262, !6, !6, !6, !6, !6}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2113, file: !1514, line: 75, baseType: !2131, size: 640, offset: 192)
!2131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2132, size: 640, elements: !340)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !262, !6, !262, !6, !262, !6, !6}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !2113, file: !1514, line: 78, baseType: !2136, size: 448, offset: 832)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, size: 448, elements: !330)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{null, !262, !6, !262, !6, !6}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !2113, file: !1514, line: 79, baseType: !2137, size: 64, offset: 1280)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !2113, file: !1514, line: 81, baseType: !2142, size: 64, offset: 1344)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{null, !262, !6, !262, !6, !6, !6}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !2113, file: !1514, line: 84, baseType: !2146, size: 64, offset: 1408)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !262, !262, !262, !262, !6, !6, !6, !1791}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !2113, file: !1514, line: 88, baseType: !2137, size: 64, offset: 1472)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !2113, file: !1514, line: 91, baseType: !2151, size: 64, offset: 1536)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !262, !6, !6}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !2113, file: !1514, line: 93, baseType: !2155, size: 64, offset: 1600)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!10, !10, !2158, !478}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !2113, file: !1514, line: 94, baseType: !2161, size: 64, offset: 1664)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !10, !6}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !2113, file: !1514, line: 97, baseType: !2165, size: 64, offset: 1728)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !1472, !262, !6}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !2113, file: !1514, line: 98, baseType: !2165, size: 64, offset: 1792)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !2113, file: !1514, line: 99, baseType: !2170, size: 64, offset: 1856)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{null, !1472, !1472, !6}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !2113, file: !1514, line: 100, baseType: !2174, size: 64, offset: 1920)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !1472, !6}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !2113, file: !1514, line: 102, baseType: !2178, size: 64, offset: 1984)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !262, !262, !262, !262, !262, !6, !6, !6, !6}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2113, file: !1514, line: 104, baseType: !1529, size: 64, offset: 2048)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !2113, file: !1514, line: 105, baseType: !1529, size: 64, offset: 2112)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !2113, file: !1514, line: 106, baseType: !1529, size: 64, offset: 2176)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !2113, file: !1514, line: 107, baseType: !2185, size: 64, offset: 2240)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{null, !1277, !2188}
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !2113, file: !1514, line: 109, baseType: !2190, size: 64, offset: 2304)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{null, !312, !1472, !1472, !1472, !1472, !6}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !1279, file: !1280, line: 813, baseType: !2194, size: 960, offset: 263296)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !2195, line: 115, baseType: !2196)
!2195 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2195, line: 89, size: 960, elements: !2197)
!2197 = !{!2198, !2202, !2206, !2211, !2212, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2228, !2232, !2236}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !2196, file: !2195, line: 94, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !1791, !262, !262}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !2196, file: !2195, line: 95, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !262, !1791}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !2196, file: !2195, line: 97, baseType: !2207, size: 64, offset: 128)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !2210, !262, !262}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !2196, file: !2195, line: 98, baseType: !2199, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !2196, file: !2195, line: 99, baseType: !2213, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !262, !2210}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !2196, file: !2195, line: 100, baseType: !2203, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !2196, file: !2195, line: 102, baseType: !2207, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !2196, file: !2195, line: 103, baseType: !2213, size: 64, offset: 448)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !2196, file: !2195, line: 104, baseType: !2203, size: 64, offset: 512)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !2196, file: !2195, line: 106, baseType: !2199, size: 64, offset: 576)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !2196, file: !2195, line: 107, baseType: !2203, size: 64, offset: 640)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !2196, file: !2195, line: 109, baseType: !2223, size: 64, offset: 704)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{null, !2226, !262, !262}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 1024, elements: !136)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !2196, file: !2195, line: 110, baseType: !2229, size: 64, offset: 768)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{null, !262, !2226}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !2196, file: !2195, line: 112, baseType: !2233, size: 64, offset: 832)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{null, !1791}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !2196, file: !2195, line: 113, baseType: !2233, size: 64, offset: 896)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !1279, file: !1280, line: 814, baseType: !2238, size: 384, offset: 264256)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !2195, line: 126, baseType: !2239)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2195, line: 117, size: 384, elements: !2240)
!2240 = !{!2241, !2245, !2246, !2250, !2251, !2255}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !2239, file: !2195, line: 119, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{null, !1791, !1791}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !2239, file: !2195, line: 120, baseType: !2242, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !2239, file: !2195, line: 121, baseType: !2247, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!6, !1791, !1442, !262}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !2239, file: !2195, line: 122, baseType: !2247, size: 64, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !2239, file: !2195, line: 123, baseType: !2252, size: 64, offset: 256)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!6, !1791, !1442, !262, !1791}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !2239, file: !2195, line: 124, baseType: !2256, size: 64, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !1791, !1791, !262}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !1279, file: !1280, line: 815, baseType: !2260, size: 1408, offset: 264640)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !2261, line: 44, baseType: !2262)
!2261 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2261, line: 26, size: 1408, elements: !2263)
!2263 = !{!2264, !2268, !2269, !2273, !2274, !2278, !2282, !2283, !2288, !2292, !2293, !2294, !2296}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !2262, file: !2261, line: 28, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!6, !1791, !1472, !1472}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !2262, file: !2261, line: 29, baseType: !2265, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !2262, file: !2261, line: 30, baseType: !2270, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!6, !1791, !6, !6}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !2262, file: !2261, line: 31, baseType: !2270, size: 64, offset: 192)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !2262, file: !2261, line: 33, baseType: !2275, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{null, !1791, !1454, !6}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !2262, file: !2261, line: 34, baseType: !2279, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{null, !1791, !1450, !6}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !2262, file: !2261, line: 35, baseType: !2279, size: 64, offset: 384)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !2262, file: !2261, line: 37, baseType: !2284, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !1791, !2287, !1472, !6}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !2262, file: !2261, line: 39, baseType: !2289, size: 64, offset: 512)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!6, !1791}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !2262, file: !2261, line: 40, baseType: !2289, size: 64, offset: 576)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !2262, file: !2261, line: 41, baseType: !2289, size: 64, offset: 640)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !2262, file: !2261, line: 42, baseType: !2295, size: 384, offset: 704)
!2295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2289, size: 384, elements: !323)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !2262, file: !2261, line: 43, baseType: !2297, size: 320, offset: 1088)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2298, size: 320, elements: !296)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!6, !1791, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !1302, line: 63, baseType: !2303)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1302, line: 58, size: 416, elements: !2304)
!2304 = !{!2305, !2306, !2307}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !2303, file: !1302, line: 60, baseType: !6, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2303, file: !1302, line: 61, baseType: !1734, size: 256, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !2303, file: !1302, line: 62, baseType: !125, size: 128, offset: 288)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !1279, file: !1280, line: 816, baseType: !2309, size: 576, offset: 266048)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !1578, line: 170, baseType: !2310)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1578, line: 161, size: 576, elements: !2311)
!2311 = !{!2312, !2318, !2319, !2325, !2326}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !2310, file: !1578, line: 163, baseType: !2313, size: 128)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2314, size: 128, elements: !184)
!2314 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !1578, line: 159, baseType: !2315)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{null, !262, !6, !6, !6, !1628}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !2310, file: !1578, line: 164, baseType: !2313, size: 128, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !2310, file: !1578, line: 165, baseType: !2320, size: 128, offset: 256)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2321, size: 128, elements: !184)
!2321 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !1578, line: 160, baseType: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !262, !6, !6, !6}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !2310, file: !1578, line: 166, baseType: !2320, size: 128, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !2310, file: !1578, line: 167, baseType: !2327, size: 64, offset: 512)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !262, !2330, !2331, !2334, !6, !6}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 1280, elements: !2333)
!2333 = !{!1880, !185}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, elements: !2336)
!2336 = !{!259, !259}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1279, file: !1280, line: 821, baseType: !2338, size: 64, offset: 266624)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !1280, line: 377, baseType: !2340)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !1280, line: 366, size: 960, elements: !2341)
!2341 = !{!2342, !2344, !2345, !2346, !2347, !2348, !2349, !2359, !2360}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !2340, file: !1280, line: 368, baseType: !2343, size: 8)
!2343 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !126)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !2340, file: !1280, line: 369, baseType: !126, size: 8, offset: 8)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !2340, file: !1280, line: 370, baseType: !126, size: 8, offset: 16)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !2340, file: !1280, line: 371, baseType: !6, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !2340, file: !1280, line: 372, baseType: !6, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !2340, file: !1280, line: 373, baseType: !1576, size: 64, offset: 128)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !2340, file: !1280, line: 374, baseType: !2350, size: 256, offset: 192)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !1578, line: 157, baseType: !2351)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1578, line: 149, size: 256, elements: !2352)
!2352 = !{!2353, !2354, !2355, !2356, !2357, !2358}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2351, file: !1578, line: 151, baseType: !1575, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !2351, file: !1578, line: 152, baseType: !6, size: 32, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !2351, file: !1578, line: 153, baseType: !6, size: 32, offset: 96)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2351, file: !1578, line: 154, baseType: !6, size: 32, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !2351, file: !1578, line: 155, baseType: !6, size: 32, offset: 160)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !2351, file: !1578, line: 156, baseType: !6, size: 32, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2340, file: !1280, line: 375, baseType: !2350, size: 256, offset: 448)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !2340, file: !1280, line: 376, baseType: !2350, size: 256, offset: 704)
!2361 = !DILocalVariable(name: "pic", scope: !1271, file: !19, line: 1392, type: !68)
!2362 = !DILocalVariable(name: "pulldown", scope: !1271, file: !19, line: 1393, type: !2363)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!2364 = !DILocalVariable(name: "i_frame", scope: !1271, file: !19, line: 1395, type: !6)
!2365 = !DILocalVariable(name: "i_frame_total", scope: !1271, file: !19, line: 1395, type: !6)
!2366 = !DILocalVariable(name: "i_frame_output", scope: !1271, file: !19, line: 1395, type: !6)
!2367 = !DILocalVariable(name: "i_start", scope: !1271, file: !19, line: 1396, type: !11)
!2368 = !DILocalVariable(name: "i_end", scope: !1271, file: !19, line: 1396, type: !11)
!2369 = !DILocalVariable(name: "i_file", scope: !1271, file: !19, line: 1397, type: !11)
!2370 = !DILocalVariable(name: "i_frame_size", scope: !1271, file: !19, line: 1398, type: !6)
!2371 = !DILocalVariable(name: "i_update_interval", scope: !1271, file: !19, line: 1399, type: !6)
!2372 = !DILocalVariable(name: "last_dts", scope: !1271, file: !19, line: 1400, type: !11)
!2373 = !DILocalVariable(name: "prev_dts", scope: !1271, file: !19, line: 1401, type: !11)
!2374 = !DILocalVariable(name: "first_dts", scope: !1271, file: !19, line: 1402, type: !11)
!2375 = !DILocalVariable(name: "pts_warning_cnt", scope: !1271, file: !19, line: 1404, type: !6)
!2376 = !DILocalVariable(name: "largest_pts", scope: !1271, file: !19, line: 1405, type: !11)
!2377 = !DILocalVariable(name: "second_largest_pts", scope: !1271, file: !19, line: 1406, type: !11)
!2378 = !DILocalVariable(name: "ticks_per_frame", scope: !1271, file: !19, line: 1407, type: !11)
!2379 = !DILocalVariable(name: "duration", scope: !1271, file: !19, line: 1408, type: !5)
!2380 = !DILocalVariable(name: "prev_timebase_den", scope: !1271, file: !19, line: 1409, type: !6)
!2381 = !DILocalVariable(name: "dts_compress_multiplier", scope: !1271, file: !19, line: 1410, type: !6)
!2382 = !DILocalVariable(name: "pulldown_pts", scope: !1271, file: !19, line: 1411, type: !5)
!2383 = !DILocalVariable(name: "headers", scope: !2384, file: !19, line: 1474, type: !372)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !19, line: 1472, column: 5)
!2385 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1471, column: 9)
!2386 = !DILocalVariable(name: "i_nal", scope: !2384, file: !19, line: 1475, type: !6)
!2387 = !DILocalVariable(name: "output_pts", scope: !2388, file: !19, line: 1508, type: !11)
!2388 = distinct !DILexicalBlock(scope: !2389, file: !19, line: 1492, column: 5)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !19, line: 1491, column: 5)
!2390 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1491, column: 5)
!2391 = !DILocalVariable(name: "fps", scope: !2392, file: !19, line: 1612, type: !5)
!2392 = distinct !DILexicalBlock(scope: !2393, file: !19, line: 1611, column: 5)
!2393 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1610, column: 9)
!2394 = !DILocation(line: 0, scope: !1271, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 174, column: 11, scope: !413)
!2396 = !DILocation(line: 1392, column: 5, scope: !1271, inlinedAt: !2395)
!2397 = !DILocation(line: 1392, column: 20, scope: !1271, inlinedAt: !2395)
!2398 = !DILocation(line: 1409, column: 40, scope: !1271, inlinedAt: !2395)
!2399 = !DILocation(line: 1409, column: 33, scope: !1271, inlinedAt: !2395)
!2400 = !DILocation(line: 1409, column: 69, scope: !1271, inlinedAt: !2395)
!2401 = !DILocation(line: 1409, column: 62, scope: !1271, inlinedAt: !2395)
!2402 = !DILocalVariable(name: "a", arg: 1, scope: !2403, file: !30, line: 32, type: !11)
!2403 = distinct !DISubprogram(name: "gcd", scope: !30, file: !30, line: 32, type: !2404, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!11, !11, !11}
!2406 = !{!2402, !2407, !2408}
!2407 = !DILocalVariable(name: "b", arg: 2, scope: !2403, file: !30, line: 32, type: !11)
!2408 = !DILocalVariable(name: "c", scope: !2409, file: !30, line: 36, type: !11)
!2409 = distinct !DILexicalBlock(scope: !2403, file: !30, line: 35, column: 5)
!2410 = !DILocation(line: 0, scope: !2403, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 1409, column: 57, scope: !1271, inlinedAt: !2395)
!2412 = !DILocation(line: 34, column: 5, scope: !2403, inlinedAt: !2411)
!2413 = !DILocation(line: 36, column: 23, scope: !2409, inlinedAt: !2411)
!2414 = !DILocation(line: 0, scope: !2409, inlinedAt: !2411)
!2415 = !DILocation(line: 37, column: 14, scope: !2416, inlinedAt: !2411)
!2416 = distinct !DILexicalBlock(scope: !2409, file: !30, line: 37, column: 13)
!2417 = !DILocation(line: 1409, column: 55, scope: !1271, inlinedAt: !2395)
!2418 = !DILocation(line: 1413, column: 31, scope: !1271, inlinedAt: !2395)
!2419 = !DILocation(line: 1413, column: 43, scope: !1271, inlinedAt: !2395)
!2420 = !DILocation(line: 1413, column: 21, scope: !1271, inlinedAt: !2395)
!2421 = !DILocation(line: 1414, column: 27, scope: !1271, inlinedAt: !2395)
!2422 = !{!1043, !570, i64 8}
!2423 = !DILocation(line: 1414, column: 49, scope: !1271, inlinedAt: !2395)
!2424 = !DILocation(line: 1414, column: 21, scope: !1271, inlinedAt: !2395)
!2425 = !DILocation(line: 1415, column: 21, scope: !1271, inlinedAt: !2395)
!2426 = !DILocation(line: 1416, column: 25, scope: !2427, inlinedAt: !2395)
!2427 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1416, column: 9)
!2428 = !DILocation(line: 0, scope: !2427, inlinedAt: !2395)
!2429 = !DILocation(line: 1416, column: 30, scope: !2427, inlinedAt: !2395)
!2430 = !DILocation(line: 1419, column: 26, scope: !1271, inlinedAt: !2395)
!2431 = !DILocation(line: 1420, column: 25, scope: !1271, inlinedAt: !2395)
!2432 = !DILocation(line: 1417, column: 33, scope: !2427, inlinedAt: !2395)
!2433 = !DILocation(line: 1416, column: 9, scope: !1271, inlinedAt: !2395)
!2434 = !DILocation(line: 1420, column: 67, scope: !1271, inlinedAt: !2395)
!2435 = !DILocalVariable(name: "v", arg: 1, scope: !2436, file: !1280, line: 200, type: !6)
!2436 = distinct !DISubprogram(name: "x264_clip3", scope: !1280, file: !1280, line: 200, type: !2437, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!6, !6, !6, !6}
!2439 = !{!2435, !2440, !2441}
!2440 = !DILocalVariable(name: "i_min", arg: 2, scope: !2436, file: !1280, line: 200, type: !6)
!2441 = !DILocalVariable(name: "i_max", arg: 3, scope: !2436, file: !1280, line: 200, type: !6)
!2442 = !DILocation(line: 0, scope: !2436, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 1420, column: 41, scope: !1271, inlinedAt: !2395)
!2444 = !DILocation(line: 202, column: 17, scope: !2436, inlinedAt: !2443)
!2445 = !DILocation(line: 202, column: 14, scope: !2436, inlinedAt: !2443)
!2446 = !DILocation(line: 1423, column: 14, scope: !2447, inlinedAt: !2395)
!2447 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1423, column: 9)
!2448 = !{!566, !567, i64 48}
!2449 = !DILocation(line: 1423, column: 9, scope: !2447, inlinedAt: !2395)
!2450 = !DILocation(line: 1423, column: 25, scope: !2447, inlinedAt: !2395)
!2451 = !DILocation(line: 1425, column: 16, scope: !2452, inlinedAt: !2395)
!2452 = distinct !DILexicalBlock(scope: !2447, file: !19, line: 1424, column: 5)
!2453 = !DILocation(line: 1425, column: 29, scope: !2452, inlinedAt: !2395)
!2454 = !{!638, !567, i64 676}
!2455 = !DILocation(line: 1426, column: 21, scope: !2452, inlinedAt: !2395)
!2456 = !DILocation(line: 1427, column: 40, scope: !2452, inlinedAt: !2395)
!2457 = !DILocation(line: 1427, column: 31, scope: !2452, inlinedAt: !2395)
!2458 = !DILocation(line: 1428, column: 26, scope: !2459, inlinedAt: !2395)
!2459 = distinct !DILexicalBlock(scope: !2452, file: !19, line: 1428, column: 13)
!2460 = !DILocation(line: 1428, column: 19, scope: !2459, inlinedAt: !2395)
!2461 = !DILocation(line: 1428, column: 48, scope: !2459, inlinedAt: !2395)
!2462 = !{!2463, !641, i64 28}
!2463 = !{!"", !567, i64 0, !568, i64 4, !641, i64 28}
!2464 = !DILocation(line: 1428, column: 36, scope: !2459, inlinedAt: !2395)
!2465 = !DILocation(line: 1428, column: 13, scope: !2459, inlinedAt: !2395)
!2466 = !DILocation(line: 1428, column: 13, scope: !2452, inlinedAt: !2395)
!2467 = !DILocation(line: 1430, column: 22, scope: !2468, inlinedAt: !2395)
!2468 = distinct !DILexicalBlock(scope: !2459, file: !19, line: 1429, column: 9)
!2469 = !DILocation(line: 1430, column: 13, scope: !2468, inlinedAt: !2395)
!2470 = !DILocation(line: 1431, column: 13, scope: !2468, inlinedAt: !2395)
!2471 = !DILocation(line: 1433, column: 40, scope: !2452, inlinedAt: !2395)
!2472 = !DILocation(line: 1433, column: 33, scope: !2452, inlinedAt: !2395)
!2473 = !DILocation(line: 1433, column: 50, scope: !2452, inlinedAt: !2395)
!2474 = !DILocation(line: 1433, column: 31, scope: !2452, inlinedAt: !2395)
!2475 = !DILocation(line: 1434, column: 5, scope: !2452, inlinedAt: !2395)
!2476 = !DILocation(line: 1436, column: 15, scope: !2477, inlinedAt: !2395)
!2477 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1436, column: 9)
!2478 = !DILocation(line: 1436, column: 44, scope: !2477, inlinedAt: !2395)
!2479 = !DILocation(line: 1436, column: 9, scope: !1271, inlinedAt: !2395)
!2480 = !DILocation(line: 1438, column: 18, scope: !2481, inlinedAt: !2395)
!2481 = distinct !DILexicalBlock(scope: !2477, file: !19, line: 1437, column: 5)
!2482 = !DILocation(line: 1438, column: 9, scope: !2481, inlinedAt: !2395)
!2483 = !DILocation(line: 1439, column: 15, scope: !2481, inlinedAt: !2395)
!2484 = !{!1043, !570, i64 48}
!2485 = !DILocation(line: 1439, column: 32, scope: !2481, inlinedAt: !2395)
!2486 = !DILocation(line: 1439, column: 9, scope: !2481, inlinedAt: !2395)
!2487 = !DILocation(line: 1440, column: 9, scope: !2481, inlinedAt: !2395)
!2488 = !DILocation(line: 1443, column: 5, scope: !1271, inlinedAt: !2395)
!2489 = !DILocation(line: 1445, column: 38, scope: !1271, inlinedAt: !2395)
!2490 = !DILocation(line: 1445, column: 53, scope: !1271, inlinedAt: !2395)
!2491 = !DILocation(line: 1447, column: 16, scope: !2492, inlinedAt: !2395)
!2492 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1447, column: 9)
!2493 = !{!908, !570, i64 8}
!2494 = !DILocation(line: 1447, column: 32, scope: !2492, inlinedAt: !2395)
!2495 = !{!566, !570, i64 16}
!2496 = !DILocation(line: 1447, column: 9, scope: !2492, inlinedAt: !2395)
!2497 = !DILocation(line: 1447, column: 9, scope: !1271, inlinedAt: !2395)
!2498 = !DILocation(line: 1449, column: 18, scope: !2499, inlinedAt: !2395)
!2499 = distinct !DILexicalBlock(scope: !2492, file: !19, line: 1448, column: 5)
!2500 = !DILocation(line: 1449, column: 9, scope: !2499, inlinedAt: !2395)
!2501 = !DILocation(line: 1450, column: 15, scope: !2499, inlinedAt: !2395)
!2502 = !DILocation(line: 1450, column: 32, scope: !2499, inlinedAt: !2395)
!2503 = !DILocation(line: 1450, column: 9, scope: !2499, inlinedAt: !2395)
!2504 = !DILocation(line: 1451, column: 16, scope: !2499, inlinedAt: !2395)
!2505 = !{!908, !570, i64 32}
!2506 = !DILocation(line: 1451, column: 33, scope: !2499, inlinedAt: !2395)
!2507 = !DILocation(line: 1451, column: 9, scope: !2499, inlinedAt: !2395)
!2508 = !DILocation(line: 1452, column: 9, scope: !2499, inlinedAt: !2395)
!2509 = !DILocation(line: 1456, column: 15, scope: !2510, inlinedAt: !2395)
!2510 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1456, column: 9)
!2511 = !{!1043, !570, i64 16}
!2512 = !DILocation(line: 1456, column: 43, scope: !2510, inlinedAt: !2395)
!2513 = !DILocation(line: 1456, column: 57, scope: !2510, inlinedAt: !2395)
!2514 = !DILocation(line: 1456, column: 73, scope: !2510, inlinedAt: !2395)
!2515 = !DILocation(line: 1456, column: 9, scope: !2510, inlinedAt: !2395)
!2516 = !DILocation(line: 1456, column: 9, scope: !1271, inlinedAt: !2395)
!2517 = !DILocation(line: 1458, column: 18, scope: !2518, inlinedAt: !2395)
!2518 = distinct !DILexicalBlock(scope: !2510, file: !19, line: 1457, column: 5)
!2519 = !DILocation(line: 1458, column: 9, scope: !2518, inlinedAt: !2395)
!2520 = !DILocation(line: 1459, column: 9, scope: !2518, inlinedAt: !2395)
!2521 = !DILocation(line: 1462, column: 15, scope: !1271, inlinedAt: !2395)
!2522 = !DILocation(line: 1464, column: 39, scope: !1271, inlinedAt: !2395)
!2523 = !DILocation(line: 1464, column: 23, scope: !1271, inlinedAt: !2395)
!2524 = !DILocation(line: 1464, column: 63, scope: !1271, inlinedAt: !2395)
!2525 = !DILocation(line: 1464, column: 56, scope: !1271, inlinedAt: !2395)
!2526 = !DILocation(line: 1464, column: 54, scope: !1271, inlinedAt: !2395)
!2527 = !DILocation(line: 1464, column: 82, scope: !1271, inlinedAt: !2395)
!2528 = !DILocation(line: 1464, column: 75, scope: !1271, inlinedAt: !2395)
!2529 = !DILocation(line: 1464, column: 73, scope: !1271, inlinedAt: !2395)
!2530 = !DILocation(line: 1464, column: 106, scope: !1271, inlinedAt: !2395)
!2531 = !DILocation(line: 1464, column: 99, scope: !1271, inlinedAt: !2395)
!2532 = !DILocation(line: 1464, column: 97, scope: !1271, inlinedAt: !2395)
!2533 = !DILocation(line: 1465, column: 25, scope: !2534, inlinedAt: !2395)
!2534 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1465, column: 9)
!2535 = !DILocation(line: 1465, column: 9, scope: !1271, inlinedAt: !2395)
!2536 = !DILocation(line: 1467, column: 18, scope: !2537, inlinedAt: !2395)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !19, line: 1466, column: 5)
!2538 = !DILocation(line: 1467, column: 9, scope: !2537, inlinedAt: !2395)
!2539 = !DILocation(line: 1468, column: 9, scope: !2537, inlinedAt: !2395)
!2540 = !DILocation(line: 1471, column: 17, scope: !2385, inlinedAt: !2395)
!2541 = !DILocation(line: 1471, column: 10, scope: !2385, inlinedAt: !2395)
!2542 = !DILocation(line: 1471, column: 9, scope: !1271, inlinedAt: !2395)
!2543 = !DILocation(line: 1474, column: 9, scope: !2384, inlinedAt: !2395)
!2544 = !DILocation(line: 1475, column: 9, scope: !2384, inlinedAt: !2395)
!2545 = !DILocation(line: 0, scope: !2384, inlinedAt: !2395)
!2546 = !DILocation(line: 1477, column: 13, scope: !2547, inlinedAt: !2395)
!2547 = distinct !DILexicalBlock(scope: !2384, file: !19, line: 1477, column: 13)
!2548 = !DILocation(line: 1477, column: 57, scope: !2547, inlinedAt: !2395)
!2549 = !DILocation(line: 1477, column: 13, scope: !2384, inlinedAt: !2395)
!2550 = !DILocation(line: 1479, column: 22, scope: !2551, inlinedAt: !2395)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !19, line: 1478, column: 9)
!2552 = !DILocation(line: 1479, column: 13, scope: !2551, inlinedAt: !2395)
!2553 = !DILocation(line: 1485, column: 5, scope: !2385, inlinedAt: !2395)
!2554 = !DILocation(line: 1483, column: 30, scope: !2555, inlinedAt: !2395)
!2555 = distinct !DILexicalBlock(scope: !2384, file: !19, line: 1483, column: 13)
!2556 = !{!908, !570, i64 16}
!2557 = !DILocation(line: 1483, column: 50, scope: !2555, inlinedAt: !2395)
!2558 = !DILocation(line: 1483, column: 56, scope: !2555, inlinedAt: !2395)
!2559 = !DILocation(line: 1483, column: 23, scope: !2555, inlinedAt: !2395)
!2560 = !DILocation(line: 1483, column: 67, scope: !2555, inlinedAt: !2395)
!2561 = !DILocation(line: 1397, column: 13, scope: !1271, inlinedAt: !2395)
!2562 = !DILocation(line: 1487, column: 14, scope: !2563, inlinedAt: !2395)
!2563 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1487, column: 9)
!2564 = !DILocation(line: 1487, column: 9, scope: !2563, inlinedAt: !2395)
!2565 = !DILocation(line: 1487, column: 9, scope: !1271, inlinedAt: !2395)
!2566 = !DILocation(line: 1488, column: 9, scope: !2563, inlinedAt: !2395)
!2567 = !DILocation(line: 1491, column: 43, scope: !2389, inlinedAt: !2395)
!2568 = !DILocation(line: 1491, column: 57, scope: !2389, inlinedAt: !2395)
!2569 = !DILocation(line: 1493, column: 19, scope: !2570, inlinedAt: !2395)
!2570 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1493, column: 13)
!2571 = !{!1043, !570, i64 24}
!2572 = !DILocation(line: 1493, column: 42, scope: !2570, inlinedAt: !2395)
!2573 = !DILocation(line: 1493, column: 62, scope: !2570, inlinedAt: !2395)
!2574 = !DILocation(line: 1493, column: 13, scope: !2570, inlinedAt: !2395)
!2575 = !DILocation(line: 1493, column: 13, scope: !2388, inlinedAt: !2395)
!2576 = !DILocation(line: 1493, column: 55, scope: !2570, inlinedAt: !2395)
!2577 = !DILocation(line: 1496, column: 21, scope: !2578, inlinedAt: !2395)
!2578 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1496, column: 13)
!2579 = !DILocation(line: 1496, column: 14, scope: !2578, inlinedAt: !2395)
!2580 = !DILocation(line: 1496, column: 13, scope: !2388, inlinedAt: !2395)
!2581 = !DILocation(line: 0, scope: !2388, inlinedAt: !2395)
!2582 = !{!2583, !1190, i64 16}
!2583 = !{!"", !567, i64 0, !567, i64 4, !567, i64 8, !567, i64 12, !1190, i64 16, !1190, i64 24, !570, i64 32, !2584, i64 40, !2585, i64 96, !570, i64 128}
!2584 = !{!"", !567, i64 0, !567, i64 4, !568, i64 8, !568, i64 24}
!2585 = !{!"", !571, i64 0, !571, i64 8, !571, i64 16, !571, i64 24}
!2586 = !DILocation(line: 1497, column: 23, scope: !2578, inlinedAt: !2395)
!2587 = !DILocation(line: 1499, column: 18, scope: !2588, inlinedAt: !2395)
!2588 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1499, column: 13)
!2589 = !DILocation(line: 1499, column: 13, scope: !2588, inlinedAt: !2395)
!2590 = !DILocation(line: 1499, column: 29, scope: !2588, inlinedAt: !2395)
!2591 = !DILocation(line: 1501, column: 71, scope: !2592, inlinedAt: !2395)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !19, line: 1500, column: 9)
!2593 = !{!2463, !567, i64 0}
!2594 = !DILocation(line: 1501, column: 59, scope: !2592, inlinedAt: !2395)
!2595 = !DILocation(line: 1501, column: 32, scope: !2592, inlinedAt: !2395)
!2596 = !DILocation(line: 1501, column: 30, scope: !2592, inlinedAt: !2395)
!2597 = !{!2583, !567, i64 8}
!2598 = !DILocation(line: 1502, column: 49, scope: !2592, inlinedAt: !2395)
!2599 = !DILocation(line: 1502, column: 25, scope: !2592, inlinedAt: !2395)
!2600 = !DILocation(line: 1502, column: 23, scope: !2592, inlinedAt: !2395)
!2601 = !DILocation(line: 1503, column: 29, scope: !2592, inlinedAt: !2395)
!2602 = !{!641, !641, i64 0}
!2603 = !DILocation(line: 1503, column: 26, scope: !2592, inlinedAt: !2395)
!2604 = !DILocation(line: 1504, column: 9, scope: !2592, inlinedAt: !2395)
!2605 = !DILocation(line: 1505, column: 23, scope: !2606, inlinedAt: !2395)
!2606 = distinct !DILexicalBlock(scope: !2588, file: !19, line: 1505, column: 18)
!2607 = !DILocation(line: 1505, column: 18, scope: !2606, inlinedAt: !2395)
!2608 = !DILocation(line: 1505, column: 18, scope: !2588, inlinedAt: !2395)
!2609 = !DILocation(line: 1506, column: 36, scope: !2606, inlinedAt: !2395)
!2610 = !DILocation(line: 1506, column: 81, scope: !2606, inlinedAt: !2395)
!2611 = !DILocation(line: 1506, column: 25, scope: !2606, inlinedAt: !2395)
!2612 = !DILocation(line: 1506, column: 23, scope: !2606, inlinedAt: !2395)
!2613 = !DILocation(line: 1506, column: 13, scope: !2606, inlinedAt: !2395)
!2614 = !DILocation(line: 1508, column: 34, scope: !2388, inlinedAt: !2395)
!2615 = !DILocation(line: 1508, column: 40, scope: !2388, inlinedAt: !2395)
!2616 = !DILocation(line: 1510, column: 23, scope: !2617, inlinedAt: !2395)
!2617 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1510, column: 13)
!2618 = !DILocation(line: 1510, column: 13, scope: !2388, inlinedAt: !2395)
!2619 = !DILocation(line: 1512, column: 24, scope: !2620, inlinedAt: !2395)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !19, line: 1512, column: 17)
!2621 = distinct !DILexicalBlock(scope: !2617, file: !19, line: 1511, column: 9)
!2622 = !DILocation(line: 1512, column: 36, scope: !2620, inlinedAt: !2395)
!2623 = !DILocation(line: 1512, column: 17, scope: !2621, inlinedAt: !2395)
!2624 = !DILocation(line: 1514, column: 40, scope: !2625, inlinedAt: !2395)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !19, line: 1514, column: 21)
!2626 = distinct !DILexicalBlock(scope: !2620, file: !19, line: 1513, column: 13)
!2627 = !DILocation(line: 1514, column: 58, scope: !2625, inlinedAt: !2395)
!2628 = !DILocation(line: 1515, column: 30, scope: !2625, inlinedAt: !2395)
!2629 = !DILocation(line: 1516, column: 63, scope: !2625, inlinedAt: !2395)
!2630 = !DILocation(line: 1515, column: 21, scope: !2625, inlinedAt: !2395)
!2631 = !DILocation(line: 1517, column: 42, scope: !2632, inlinedAt: !2395)
!2632 = distinct !DILexicalBlock(scope: !2625, file: !19, line: 1517, column: 26)
!2633 = !DILocation(line: 1517, column: 26, scope: !2625, inlinedAt: !2395)
!2634 = !DILocation(line: 1518, column: 30, scope: !2632, inlinedAt: !2395)
!2635 = !DILocation(line: 1518, column: 21, scope: !2632, inlinedAt: !2395)
!2636 = !DILocation(line: 1519, column: 32, scope: !2626, inlinedAt: !2395)
!2637 = !DILocation(line: 1520, column: 13, scope: !2626, inlinedAt: !2395)
!2638 = !DILocation(line: 1521, column: 37, scope: !2621, inlinedAt: !2395)
!2639 = !DILocation(line: 1521, column: 23, scope: !2621, inlinedAt: !2395)
!2640 = !DILocation(line: 1522, column: 36, scope: !2621, inlinedAt: !2395)
!2641 = !DILocation(line: 1523, column: 9, scope: !2621, inlinedAt: !2395)
!2642 = !DILocation(line: 1526, column: 27, scope: !2388, inlinedAt: !2395)
!2643 = !DILocation(line: 1527, column: 18, scope: !2644, inlinedAt: !2395)
!2644 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1527, column: 13)
!2645 = !DILocation(line: 1527, column: 13, scope: !2644, inlinedAt: !2395)
!2646 = !DILocation(line: 1527, column: 13, scope: !2388, inlinedAt: !2395)
!2647 = !DILocation(line: 1528, column: 49, scope: !2644, inlinedAt: !2395)
!2648 = !DILocation(line: 1528, column: 78, scope: !2644, inlinedAt: !2395)
!2649 = !DILocation(line: 1528, column: 63, scope: !2644, inlinedAt: !2395)
!2650 = !DILocation(line: 1528, column: 102, scope: !2644, inlinedAt: !2395)
!2651 = !DILocation(line: 1528, column: 95, scope: !2644, inlinedAt: !2395)
!2652 = !DILocation(line: 1528, column: 93, scope: !2644, inlinedAt: !2395)
!2653 = !DILocation(line: 1528, column: 60, scope: !2644, inlinedAt: !2395)
!2654 = !DILocation(line: 1528, column: 118, scope: !2644, inlinedAt: !2395)
!2655 = !DILocation(line: 1528, column: 13, scope: !2644, inlinedAt: !2395)
!2656 = !DILocation(line: 1530, column: 18, scope: !2657, inlinedAt: !2395)
!2657 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1530, column: 13)
!2658 = !DILocation(line: 1530, column: 13, scope: !2657, inlinedAt: !2395)
!2659 = !DILocation(line: 1530, column: 13, scope: !2388, inlinedAt: !2395)
!2660 = !DILocation(line: 1531, column: 53, scope: !2657, inlinedAt: !2395)
!2661 = !DILocation(line: 1531, column: 46, scope: !2657, inlinedAt: !2395)
!2662 = !DILocalVariable(name: "opt", arg: 1, scope: !2663, file: !19, line: 1296, type: !499)
!2663 = distinct !DISubprogram(name: "parse_qpfile", scope: !19, file: !19, line: 1296, type: !2664, scopeLine: 1297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2666)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{null, !499, !67, !6}
!2666 = !{!2662, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2667 = !DILocalVariable(name: "pic", arg: 2, scope: !2663, file: !19, line: 1296, type: !67)
!2668 = !DILocalVariable(name: "i_frame", arg: 3, scope: !2663, file: !19, line: 1296, type: !6)
!2669 = !DILocalVariable(name: "num", scope: !2663, file: !19, line: 1298, type: !6)
!2670 = !DILocalVariable(name: "qp", scope: !2663, file: !19, line: 1298, type: !6)
!2671 = !DILocalVariable(name: "ret", scope: !2663, file: !19, line: 1298, type: !6)
!2672 = !DILocalVariable(name: "type", scope: !2663, file: !19, line: 1299, type: !459)
!2673 = !DILocalVariable(name: "file_pos", scope: !2663, file: !19, line: 1300, type: !545)
!2674 = !DILocation(line: 0, scope: !2663, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1531, column: 13, scope: !2657, inlinedAt: !2395)
!2676 = !DILocation(line: 1298, column: 5, scope: !2663, inlinedAt: !2675)
!2677 = !DILocation(line: 1298, column: 9, scope: !2663, inlinedAt: !2675)
!2678 = !DILocation(line: 1299, column: 5, scope: !2663, inlinedAt: !2675)
!2679 = !DILocation(line: 1301, column: 16, scope: !2663, inlinedAt: !2675)
!2680 = !DILocation(line: 1301, column: 5, scope: !2663, inlinedAt: !2675)
!2681 = !DILocation(line: 1303, column: 20, scope: !2682, inlinedAt: !2675)
!2682 = distinct !DILexicalBlock(scope: !2663, file: !19, line: 1302, column: 5)
!2683 = !DILocation(line: 1304, column: 28, scope: !2682, inlinedAt: !2675)
!2684 = !DILocation(line: 1304, column: 15, scope: !2682, inlinedAt: !2675)
!2685 = !DILocation(line: 1305, column: 13, scope: !2686, inlinedAt: !2675)
!2686 = distinct !DILexicalBlock(scope: !2682, file: !19, line: 1305, column: 13)
!2687 = !DILocation(line: 1305, column: 17, scope: !2686, inlinedAt: !2675)
!2688 = !DILocation(line: 1305, column: 27, scope: !2686, inlinedAt: !2675)
!2689 = !DILocation(line: 1307, column: 25, scope: !2690, inlinedAt: !2675)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !19, line: 1306, column: 9)
!2691 = !{!2583, !567, i64 0}
!2692 = !DILocation(line: 1308, column: 28, scope: !2690, inlinedAt: !2675)
!2693 = !{!2583, !567, i64 4}
!2694 = !DILocation(line: 1309, column: 25, scope: !2690, inlinedAt: !2675)
!2695 = !DILocation(line: 1309, column: 13, scope: !2690, inlinedAt: !2675)
!2696 = !DILocation(line: 1310, column: 13, scope: !2690, inlinedAt: !2675)
!2697 = !DILocation(line: 1312, column: 17, scope: !2698, inlinedAt: !2675)
!2698 = distinct !DILexicalBlock(scope: !2682, file: !19, line: 1312, column: 13)
!2699 = !DILocation(line: 1312, column: 27, scope: !2698, inlinedAt: !2675)
!2700 = distinct !{!2700, !2680, !2701, !680, !681}
!2701 = !DILocation(line: 1330, column: 5, scope: !2663, inlinedAt: !2675)
!2702 = !DILocation(line: 1303, column: 32, scope: !2682, inlinedAt: !2675)
!2703 = !DILocation(line: 1314, column: 26, scope: !2682, inlinedAt: !2675)
!2704 = !DILocation(line: 1314, column: 28, scope: !2682, inlinedAt: !2675)
!2705 = !DILocation(line: 1314, column: 24, scope: !2682, inlinedAt: !2675)
!2706 = !DILocation(line: 1315, column: 18, scope: !2707, inlinedAt: !2675)
!2707 = distinct !DILexicalBlock(scope: !2682, file: !19, line: 1315, column: 18)
!2708 = !DILocation(line: 1315, column: 18, scope: !2682, inlinedAt: !2675)
!2709 = !DILocation(line: 1316, column: 32, scope: !2710, inlinedAt: !2675)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !19, line: 1316, column: 18)
!2711 = !DILocation(line: 1317, column: 32, scope: !2712, inlinedAt: !2675)
!2712 = distinct !DILexicalBlock(scope: !2710, file: !19, line: 1317, column: 18)
!2713 = !DILocation(line: 1318, column: 32, scope: !2714, inlinedAt: !2675)
!2714 = distinct !DILexicalBlock(scope: !2712, file: !19, line: 1318, column: 18)
!2715 = !DILocation(line: 1319, column: 32, scope: !2716, inlinedAt: !2675)
!2716 = distinct !DILexicalBlock(scope: !2714, file: !19, line: 1319, column: 18)
!2717 = !DILocation(line: 0, scope: !2707, inlinedAt: !2675)
!2718 = !DILocation(line: 1321, column: 17, scope: !2719, inlinedAt: !2675)
!2719 = distinct !DILexicalBlock(scope: !2682, file: !19, line: 1321, column: 13)
!2720 = !DILocation(line: 1321, column: 22, scope: !2719, inlinedAt: !2675)
!2721 = !DILocation(line: 1323, column: 22, scope: !2722, inlinedAt: !2675)
!2722 = distinct !DILexicalBlock(scope: !2719, file: !19, line: 1322, column: 9)
!2723 = !DILocation(line: 1323, column: 13, scope: !2722, inlinedAt: !2675)
!2724 = !DILocation(line: 1324, column: 26, scope: !2722, inlinedAt: !2675)
!2725 = !DILocation(line: 1324, column: 13, scope: !2722, inlinedAt: !2675)
!2726 = !DILocation(line: 1325, column: 25, scope: !2722, inlinedAt: !2675)
!2727 = !DILocation(line: 1326, column: 25, scope: !2722, inlinedAt: !2675)
!2728 = !DILocation(line: 1327, column: 28, scope: !2722, inlinedAt: !2675)
!2729 = !DILocation(line: 1328, column: 13, scope: !2722, inlinedAt: !2675)
!2730 = !DILocation(line: 1331, column: 1, scope: !2663, inlinedAt: !2675)
!2731 = !DILocation(line: 1531, column: 13, scope: !2657, inlinedAt: !2395)
!2732 = !DILocation(line: 1535, column: 24, scope: !2733, inlinedAt: !2395)
!2733 = distinct !DILexicalBlock(scope: !2657, file: !19, line: 1533, column: 9)
!2734 = !DILocation(line: 1536, column: 27, scope: !2733, inlinedAt: !2395)
!2735 = !DILocation(line: 1540, column: 46, scope: !2388, inlinedAt: !2395)
!2736 = !DILocalVariable(name: "h", arg: 1, scope: !2737, file: !19, line: 1337, type: !1277)
!2737 = distinct !DISubprogram(name: "Encode_frame", scope: !19, file: !19, line: 1337, type: !2738, scopeLine: 1338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2741)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!6, !1277, !29, !67, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!2741 = !{!2736, !2742, !2743, !2744, !2745, !2746, !2747, !2748}
!2742 = !DILocalVariable(name: "hout", arg: 2, scope: !2737, file: !19, line: 1337, type: !29)
!2743 = !DILocalVariable(name: "pic", arg: 3, scope: !2737, file: !19, line: 1337, type: !67)
!2744 = !DILocalVariable(name: "last_dts", arg: 4, scope: !2737, file: !19, line: 1337, type: !2740)
!2745 = !DILocalVariable(name: "pic_out", scope: !2737, file: !19, line: 1339, type: !68)
!2746 = !DILocalVariable(name: "nal", scope: !2737, file: !19, line: 1340, type: !372)
!2747 = !DILocalVariable(name: "i_nal", scope: !2737, file: !19, line: 1341, type: !6)
!2748 = !DILocalVariable(name: "i_frame_size", scope: !2737, file: !19, line: 1342, type: !6)
!2749 = !DILocation(line: 0, scope: !2737, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1540, column: 24, scope: !2388, inlinedAt: !2395)
!2751 = !DILocation(line: 1339, column: 5, scope: !2737, inlinedAt: !2750)
!2752 = !DILocation(line: 1339, column: 20, scope: !2737, inlinedAt: !2750)
!2753 = !DILocation(line: 1340, column: 5, scope: !2737, inlinedAt: !2750)
!2754 = !DILocation(line: 1341, column: 5, scope: !2737, inlinedAt: !2750)
!2755 = !DILocation(line: 1344, column: 20, scope: !2737, inlinedAt: !2750)
!2756 = !DILocation(line: 1346, column: 22, scope: !2757, inlinedAt: !2750)
!2757 = distinct !DILexicalBlock(scope: !2737, file: !19, line: 1346, column: 9)
!2758 = !DILocation(line: 1346, column: 9, scope: !2737, inlinedAt: !2750)
!2759 = !DILocation(line: 1348, column: 18, scope: !2760, inlinedAt: !2750)
!2760 = distinct !DILexicalBlock(scope: !2757, file: !19, line: 1347, column: 5)
!2761 = !DILocation(line: 1348, column: 9, scope: !2760, inlinedAt: !2750)
!2762 = !DILocation(line: 1359, column: 1, scope: !2737, inlinedAt: !2750)
!2763 = !DILocation(line: 1541, column: 13, scope: !2388, inlinedAt: !2395)
!2764 = !DILocation(line: 1352, column: 9, scope: !2765, inlinedAt: !2750)
!2765 = distinct !DILexicalBlock(scope: !2737, file: !19, line: 1352, column: 9)
!2766 = !DILocation(line: 1352, column: 9, scope: !2737, inlinedAt: !2750)
!2767 = !DILocation(line: 1544, column: 13, scope: !2388, inlinedAt: !2395)
!2768 = !DILocation(line: 1354, column: 31, scope: !2769, inlinedAt: !2750)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !19, line: 1353, column: 5)
!2770 = !{!908, !570, i64 24}
!2771 = !DILocation(line: 1354, column: 50, scope: !2769, inlinedAt: !2750)
!2772 = !DILocation(line: 1354, column: 57, scope: !2769, inlinedAt: !2750)
!2773 = !{!2774, !570, i64 16}
!2774 = !{!"", !567, i64 0, !567, i64 4, !567, i64 8, !570, i64 16}
!2775 = !DILocation(line: 1354, column: 24, scope: !2769, inlinedAt: !2750)
!2776 = !DILocation(line: 1355, column: 29, scope: !2769, inlinedAt: !2750)
!2777 = !{!2583, !1190, i64 24}
!2778 = !DILocation(line: 1541, column: 26, scope: !2779, inlinedAt: !2395)
!2779 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1541, column: 13)
!2780 = !DILocation(line: 1543, column: 19, scope: !2388, inlinedAt: !2395)
!2781 = !DILocation(line: 1543, column: 16, scope: !2388, inlinedAt: !2395)
!2782 = !DILocation(line: 1544, column: 13, scope: !2783, inlinedAt: !2395)
!2783 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1544, column: 13)
!2784 = !DILocation(line: 1546, column: 27, scope: !2785, inlinedAt: !2395)
!2785 = distinct !DILexicalBlock(scope: !2783, file: !19, line: 1545, column: 9)
!2786 = !DILocation(line: 1547, column: 32, scope: !2787, inlinedAt: !2395)
!2787 = distinct !DILexicalBlock(scope: !2785, file: !19, line: 1547, column: 17)
!2788 = !DILocation(line: 1547, column: 17, scope: !2785, inlinedAt: !2395)
!2789 = !DILocation(line: 1548, column: 17, scope: !2787, inlinedAt: !2395)
!2790 = !DILocation(line: 0, scope: !2390, inlinedAt: !2395)
!2791 = !DILocation(line: 1551, column: 16, scope: !2388, inlinedAt: !2395)
!2792 = !DILocation(line: 1553, column: 19, scope: !2793, inlinedAt: !2395)
!2793 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1553, column: 13)
!2794 = !{!1043, !570, i64 32}
!2795 = !DILocation(line: 1553, column: 13, scope: !2793, inlinedAt: !2395)
!2796 = !DILocation(line: 1553, column: 33, scope: !2793, inlinedAt: !2395)
!2797 = !DILocation(line: 1553, column: 68, scope: !2793, inlinedAt: !2395)
!2798 = !DILocation(line: 1553, column: 36, scope: !2793, inlinedAt: !2395)
!2799 = !DILocation(line: 1553, column: 13, scope: !2388, inlinedAt: !2395)
!2800 = !DILocation(line: 1557, column: 18, scope: !2801, inlinedAt: !2395)
!2801 = distinct !DILexicalBlock(scope: !2388, file: !19, line: 1557, column: 13)
!2802 = !DILocation(line: 1557, column: 13, scope: !2801, inlinedAt: !2395)
!2803 = !DILocation(line: 1557, column: 29, scope: !2801, inlinedAt: !2395)
!2804 = !DILocation(line: 1557, column: 47, scope: !2801, inlinedAt: !2395)
!2805 = !DILocation(line: 1557, column: 67, scope: !2801, inlinedAt: !2395)
!2806 = !DILocation(line: 1557, column: 72, scope: !2801, inlinedAt: !2395)
!2807 = !DILocalVariable(name: "i_start", arg: 1, scope: !2808, file: !19, line: 1361, type: !11)
!2808 = distinct !DISubprogram(name: "Print_status", scope: !19, file: !19, line: 1361, type: !2809, scopeLine: 1362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !11, !6, !6, !11, !79, !11}
!2811 = !{!2807, !2812, !2813, !2814, !2815, !2816, !2817, !2821, !2822, !2823}
!2812 = !DILocalVariable(name: "i_frame", arg: 2, scope: !2808, file: !19, line: 1361, type: !6)
!2813 = !DILocalVariable(name: "i_frame_total", arg: 3, scope: !2808, file: !19, line: 1361, type: !6)
!2814 = !DILocalVariable(name: "i_file", arg: 4, scope: !2808, file: !19, line: 1361, type: !11)
!2815 = !DILocalVariable(name: "param", arg: 5, scope: !2808, file: !19, line: 1361, type: !79)
!2816 = !DILocalVariable(name: "last_ts", arg: 6, scope: !2808, file: !19, line: 1361, type: !11)
!2817 = !DILocalVariable(name: "buf", scope: !2808, file: !19, line: 1363, type: !2818)
!2818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1600, elements: !2819)
!2819 = !{!2820}
!2820 = !DISubrange(count: 200)
!2821 = !DILocalVariable(name: "i_elapsed", scope: !2808, file: !19, line: 1364, type: !11)
!2822 = !DILocalVariable(name: "fps", scope: !2808, file: !19, line: 1365, type: !5)
!2823 = !DILocalVariable(name: "bitrate", scope: !2808, file: !19, line: 1366, type: !5)
!2824 = !DILocation(line: 0, scope: !2808, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1558, column: 13, scope: !2801, inlinedAt: !2395)
!2826 = !DILocation(line: 1363, column: 13, scope: !2808, inlinedAt: !2825)
!2827 = !DILocation(line: 1364, column: 25, scope: !2808, inlinedAt: !2825)
!2828 = !DILocation(line: 1366, column: 12, scope: !2808, inlinedAt: !2825)
!2829 = !DILocation(line: 1558, column: 13, scope: !2801, inlinedAt: !2395)
!2830 = !DILocation(line: 1561, column: 13, scope: !1271, inlinedAt: !2395)
!2831 = !DILocation(line: 1561, column: 22, scope: !1271, inlinedAt: !2395)
!2832 = !DILocation(line: 1561, column: 25, scope: !1271, inlinedAt: !2395)
!2833 = !DILocation(line: 1561, column: 5, scope: !1271, inlinedAt: !2395)
!2834 = distinct !{!2834, !2833, !2835, !680, !681}
!2835 = !DILocation(line: 1576, column: 5, scope: !1271, inlinedAt: !2395)
!2836 = !DILocation(line: 1564, column: 46, scope: !2837, inlinedAt: !2395)
!2837 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1562, column: 5)
!2838 = !DILocation(line: 0, scope: !2737, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 1564, column: 24, scope: !2837, inlinedAt: !2395)
!2840 = !DILocation(line: 1339, column: 5, scope: !2737, inlinedAt: !2839)
!2841 = !DILocation(line: 1339, column: 20, scope: !2737, inlinedAt: !2839)
!2842 = !DILocation(line: 1340, column: 5, scope: !2737, inlinedAt: !2839)
!2843 = !DILocation(line: 1341, column: 5, scope: !2737, inlinedAt: !2839)
!2844 = !DILocation(line: 1344, column: 20, scope: !2737, inlinedAt: !2839)
!2845 = !DILocation(line: 1346, column: 22, scope: !2757, inlinedAt: !2839)
!2846 = !DILocation(line: 1346, column: 9, scope: !2737, inlinedAt: !2839)
!2847 = !DILocation(line: 1348, column: 18, scope: !2760, inlinedAt: !2839)
!2848 = !DILocation(line: 1348, column: 9, scope: !2760, inlinedAt: !2839)
!2849 = !DILocation(line: 1359, column: 1, scope: !2737, inlinedAt: !2839)
!2850 = !DILocation(line: 1565, column: 13, scope: !2837, inlinedAt: !2395)
!2851 = !DILocation(line: 1352, column: 9, scope: !2765, inlinedAt: !2839)
!2852 = !DILocation(line: 1352, column: 9, scope: !2737, inlinedAt: !2839)
!2853 = !DILocation(line: 1568, column: 13, scope: !2837, inlinedAt: !2395)
!2854 = !DILocation(line: 1354, column: 31, scope: !2769, inlinedAt: !2839)
!2855 = !DILocation(line: 1354, column: 50, scope: !2769, inlinedAt: !2839)
!2856 = !DILocation(line: 1354, column: 57, scope: !2769, inlinedAt: !2839)
!2857 = !DILocation(line: 1354, column: 24, scope: !2769, inlinedAt: !2839)
!2858 = !DILocation(line: 1355, column: 29, scope: !2769, inlinedAt: !2839)
!2859 = !DILocation(line: 1565, column: 26, scope: !2860, inlinedAt: !2395)
!2860 = distinct !DILexicalBlock(scope: !2837, file: !19, line: 1565, column: 13)
!2861 = !DILocation(line: 1567, column: 19, scope: !2837, inlinedAt: !2395)
!2862 = !DILocation(line: 1567, column: 16, scope: !2837, inlinedAt: !2395)
!2863 = !DILocation(line: 1568, column: 13, scope: !2864, inlinedAt: !2395)
!2864 = distinct !DILexicalBlock(scope: !2837, file: !19, line: 1568, column: 13)
!2865 = !DILocation(line: 1570, column: 27, scope: !2866, inlinedAt: !2395)
!2866 = distinct !DILexicalBlock(scope: !2864, file: !19, line: 1569, column: 9)
!2867 = !DILocation(line: 1571, column: 32, scope: !2868, inlinedAt: !2395)
!2868 = distinct !DILexicalBlock(scope: !2866, file: !19, line: 1571, column: 17)
!2869 = !DILocation(line: 1571, column: 17, scope: !2866, inlinedAt: !2395)
!2870 = !DILocation(line: 1572, column: 17, scope: !2868, inlinedAt: !2395)
!2871 = !DILocation(line: 0, scope: !2837, inlinedAt: !2395)
!2872 = !DILocation(line: 1574, column: 18, scope: !2873, inlinedAt: !2395)
!2873 = distinct !DILexicalBlock(scope: !2837, file: !19, line: 1574, column: 13)
!2874 = !DILocation(line: 1574, column: 13, scope: !2873, inlinedAt: !2395)
!2875 = !DILocation(line: 1574, column: 29, scope: !2873, inlinedAt: !2395)
!2876 = !DILocation(line: 1574, column: 47, scope: !2873, inlinedAt: !2395)
!2877 = !DILocation(line: 1574, column: 67, scope: !2873, inlinedAt: !2395)
!2878 = !DILocation(line: 1574, column: 72, scope: !2873, inlinedAt: !2395)
!2879 = !DILocation(line: 0, scope: !2808, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 1575, column: 13, scope: !2873, inlinedAt: !2395)
!2881 = !DILocation(line: 1363, column: 13, scope: !2808, inlinedAt: !2880)
!2882 = !DILocation(line: 1364, column: 25, scope: !2808, inlinedAt: !2880)
!2883 = !DILocation(line: 1366, column: 12, scope: !2808, inlinedAt: !2880)
!2884 = !DILocation(line: 1575, column: 13, scope: !2873, inlinedAt: !2395)
!2885 = !DILocation(line: 1400, column: 13, scope: !1271, inlinedAt: !2395)
!2886 = !DILocation(line: 1577, column: 25, scope: !2887, inlinedAt: !2395)
!2887 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1577, column: 9)
!2888 = !DILocation(line: 1577, column: 44, scope: !2887, inlinedAt: !2395)
!2889 = !DILocation(line: 1578, column: 18, scope: !2887, inlinedAt: !2395)
!2890 = !DILocation(line: 1578, column: 102, scope: !2887, inlinedAt: !2395)
!2891 = !DILocation(line: 1578, column: 9, scope: !2887, inlinedAt: !2395)
!2892 = !DILocation(line: 1581, column: 24, scope: !2893, inlinedAt: !2395)
!2893 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1581, column: 9)
!2894 = !DILocation(line: 1581, column: 9, scope: !1271, inlinedAt: !2395)
!2895 = !DILocation(line: 1582, column: 35, scope: !2893, inlinedAt: !2395)
!2896 = !DILocation(line: 1582, column: 20, scope: !2893, inlinedAt: !2395)
!2897 = !DILocation(line: 1582, column: 9, scope: !2893, inlinedAt: !2395)
!2898 = !DILocation(line: 1583, column: 14, scope: !2899, inlinedAt: !2395)
!2899 = distinct !DILexicalBlock(scope: !2893, file: !19, line: 1583, column: 14)
!2900 = !DILocation(line: 1583, column: 14, scope: !2893, inlinedAt: !2395)
!2901 = !DILocation(line: 1584, column: 31, scope: !2899, inlinedAt: !2395)
!2902 = !DILocation(line: 1584, column: 53, scope: !2899, inlinedAt: !2395)
!2903 = !DILocation(line: 1584, column: 20, scope: !2899, inlinedAt: !2395)
!2904 = !DILocation(line: 1584, column: 75, scope: !2899, inlinedAt: !2395)
!2905 = !DILocation(line: 1584, column: 68, scope: !2899, inlinedAt: !2395)
!2906 = !DILocation(line: 1584, column: 66, scope: !2899, inlinedAt: !2395)
!2907 = !DILocation(line: 1584, column: 9, scope: !2899, inlinedAt: !2395)
!2908 = !DILocation(line: 1586, column: 31, scope: !2899, inlinedAt: !2395)
!2909 = !DILocation(line: 1586, column: 45, scope: !2899, inlinedAt: !2395)
!2910 = !DILocation(line: 1586, column: 20, scope: !2899, inlinedAt: !2395)
!2911 = !DILocation(line: 1586, column: 76, scope: !2899, inlinedAt: !2395)
!2912 = !DILocation(line: 1586, column: 69, scope: !2899, inlinedAt: !2395)
!2913 = !DILocation(line: 1586, column: 67, scope: !2899, inlinedAt: !2395)
!2914 = !DILocation(line: 0, scope: !2893, inlinedAt: !2395)
!2915 = !DILocation(line: 1587, column: 16, scope: !2916, inlinedAt: !2395)
!2916 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1587, column: 9)
!2917 = !DILocation(line: 1587, column: 11, scope: !2916, inlinedAt: !2395)
!2918 = !DILocation(line: 1587, column: 27, scope: !2916, inlinedAt: !2395)
!2919 = !DILocation(line: 1588, column: 21, scope: !2916, inlinedAt: !2395)
!2920 = !DILocation(line: 1588, column: 18, scope: !2916, inlinedAt: !2395)
!2921 = !DILocation(line: 1588, column: 9, scope: !2916, inlinedAt: !2395)
!2922 = !DILocation(line: 1590, column: 13, scope: !1271, inlinedAt: !2395)
!2923 = !DILocation(line: 1591, column: 11, scope: !1271, inlinedAt: !2395)
!2924 = !{!1043, !570, i64 40}
!2925 = !DILocation(line: 1591, column: 5, scope: !1271, inlinedAt: !2395)
!2926 = !DILocation(line: 1593, column: 14, scope: !2927, inlinedAt: !2395)
!2927 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1593, column: 9)
!2928 = !DILocation(line: 1593, column: 9, scope: !2927, inlinedAt: !2395)
!2929 = !DILocation(line: 1593, column: 9, scope: !1271, inlinedAt: !2395)
!2930 = !DILocation(line: 1594, column: 18, scope: !2927, inlinedAt: !2395)
!2931 = !DILocation(line: 1594, column: 9, scope: !2927, inlinedAt: !2395)
!2932 = !DILocation(line: 1595, column: 5, scope: !1271, inlinedAt: !2395)
!2933 = !DILocation(line: 1596, column: 14, scope: !1271, inlinedAt: !2395)
!2934 = !DILocation(line: 1596, column: 5, scope: !1271, inlinedAt: !2395)
!2935 = !DILocation(line: 1598, column: 9, scope: !2936, inlinedAt: !2395)
!2936 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1598, column: 9)
!2937 = !DILocation(line: 1598, column: 9, scope: !1271, inlinedAt: !2395)
!2938 = !DILocation(line: 1599, column: 18, scope: !2936, inlinedAt: !2395)
!2939 = !DILocation(line: 1599, column: 79, scope: !2936, inlinedAt: !2395)
!2940 = !DILocation(line: 1599, column: 86, scope: !2936, inlinedAt: !2395)
!2941 = !DILocation(line: 1599, column: 9, scope: !2936, inlinedAt: !2395)
!2942 = !DILocation(line: 1601, column: 14, scope: !2943, inlinedAt: !2395)
!2943 = distinct !DILexicalBlock(scope: !1271, file: !19, line: 1601, column: 9)
!2944 = !DILocation(line: 1601, column: 9, scope: !2943, inlinedAt: !2395)
!2945 = !DILocation(line: 1601, column: 9, scope: !1271, inlinedAt: !2395)
!2946 = !DILocation(line: 1603, column: 9, scope: !2947, inlinedAt: !2395)
!2947 = distinct !DILexicalBlock(scope: !2943, file: !19, line: 1602, column: 5)
!2948 = !DILocation(line: 1604, column: 25, scope: !2947, inlinedAt: !2395)
!2949 = !DILocation(line: 1605, column: 5, scope: !2947, inlinedAt: !2395)
!2950 = !DILocation(line: 1607, column: 11, scope: !1271, inlinedAt: !2395)
!2951 = !DILocation(line: 1607, column: 28, scope: !1271, inlinedAt: !2395)
!2952 = !DILocation(line: 1607, column: 5, scope: !1271, inlinedAt: !2395)
!2953 = !DILocation(line: 1608, column: 12, scope: !1271, inlinedAt: !2395)
!2954 = !DILocation(line: 1608, column: 29, scope: !1271, inlinedAt: !2395)
!2955 = !DILocation(line: 1608, column: 5, scope: !1271, inlinedAt: !2395)
!2956 = !DILocation(line: 1610, column: 24, scope: !2393, inlinedAt: !2395)
!2957 = !DILocation(line: 1610, column: 9, scope: !1271, inlinedAt: !2395)
!2958 = !DILocation(line: 1612, column: 22, scope: !2392, inlinedAt: !2395)
!2959 = !DILocation(line: 1612, column: 45, scope: !2392, inlinedAt: !2395)
!2960 = !DILocation(line: 1613, column: 38, scope: !2392, inlinedAt: !2395)
!2961 = !DILocation(line: 1613, column: 22, scope: !2392, inlinedAt: !2395)
!2962 = !DILocation(line: 1612, column: 63, scope: !2392, inlinedAt: !2395)
!2963 = !DILocation(line: 0, scope: !2392, inlinedAt: !2395)
!2964 = !DILocation(line: 1615, column: 18, scope: !2392, inlinedAt: !2395)
!2965 = !DILocation(line: 1616, column: 18, scope: !2392, inlinedAt: !2395)
!2966 = !DILocation(line: 1616, column: 34, scope: !2392, inlinedAt: !2395)
!2967 = !DILocation(line: 1616, column: 47, scope: !2392, inlinedAt: !2395)
!2968 = !DILocation(line: 1616, column: 38, scope: !2392, inlinedAt: !2395)
!2969 = !DILocation(line: 1615, column: 9, scope: !2392, inlinedAt: !2395)
!2970 = !DILocation(line: 1617, column: 5, scope: !2392, inlinedAt: !2395)
!2971 = !DILocation(line: 1620, column: 1, scope: !1271, inlinedAt: !2395)
!2972 = !DILocation(line: 181, column: 5, scope: !413)
!2973 = !DILocation(line: 182, column: 1, scope: !413)
!2974 = !DISubprogram(name: "signal", scope: !2975, file: !2975, line: 88, type: !2976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!2975 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ccc98b488c777571beae1a47763d91")
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!2978, !6, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2975, line: 72, baseType: !2979)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !6}
!2982 = !{}
!2983 = distinct !DISubprogram(name: "SigIntHandler", scope: !19, file: !19, line: 51, type: !2980, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2984)
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "a", arg: 1, scope: !2983, file: !19, line: 51, type: !6)
!2986 = !DILocation(line: 0, scope: !2983)
!2987 = !DILocation(line: 55, column: 14, scope: !2983)
!2988 = !DILocation(line: 56, column: 1, scope: !2983)
!2989 = !DISubprogram(name: "x264_param_default", scope: !69, file: !69, line: 407, type: !2990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !79}
!2992 = !DISubprogram(name: "getopt_long", scope: !307, file: !307, line: 150, type: !2993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!6, !6, !2995, !143, !2997, !312}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!2999 = !DISubprogram(name: "x264_param_default_preset", scope: !69, file: !69, line: 456, type: !3000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!6, !79, !143, !143}
!3002 = distinct !DISubprogram(name: "Help", scope: !19, file: !19, line: 206, type: !3003, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !79, !6}
!3005 = !{!3006, !3007, !3008}
!3006 = !DILocalVariable(name: "defaults", arg: 1, scope: !3002, file: !19, line: 206, type: !79)
!3007 = !DILocalVariable(name: "longhelp", arg: 2, scope: !3002, file: !19, line: 206, type: !6)
!3008 = !DILocalVariable(name: "buf", scope: !3002, file: !19, line: 208, type: !3009)
!3009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 400, elements: !3010)
!3010 = !{!3011}
!3011 = !DISubrange(count: 50)
!3012 = !DILocation(line: 0, scope: !3002)
!3013 = !DILocation(line: 208, column: 5, scope: !3002)
!3014 = !DILocation(line: 208, column: 10, scope: !3002)
!3015 = !DILocation(line: 212, column: 5, scope: !3002)
!3016 = !DILocation(line: 253, column: 5, scope: !3002)
!3017 = !DILocation(line: 254, column: 5, scope: !3002)
!3018 = !DILocation(line: 255, column: 5, scope: !3002)
!3019 = !DILocation(line: 256, column: 5, scope: !3002)
!3020 = !DILocation(line: 257, column: 5, scope: !3002)
!3021 = !DILocation(line: 258, column: 5, scope: !3002)
!3022 = !DILocation(line: 259, column: 5, scope: !3002)
!3023 = !DILocation(line: 260, column: 5, scope: !3002)
!3024 = !DILocation(line: 261, column: 5, scope: !3002)
!3025 = !DILocation(line: 262, column: 5, scope: !3002)
!3026 = !DILocation(line: 263, column: 5, scope: !3002)
!3027 = !DILocation(line: 264, column: 5, scope: !3002)
!3028 = !DILocation(line: 265, column: 5, scope: !3002)
!3029 = !DILocation(line: 266, column: 5, scope: !3002)
!3030 = !DILocation(line: 267, column: 5, scope: !3002)
!3031 = !DILocation(line: 268, column: 5, scope: !3002)
!3032 = !DILocation(line: 269, column: 5, scope: !3002)
!3033 = !DILocation(line: 270, column: 5, scope: !3002)
!3034 = !DILocation(line: 271, column: 5, scope: !3002)
!3035 = !DILocation(line: 272, column: 5, scope: !3002)
!3036 = !DILocation(line: 273, column: 5, scope: !3002)
!3037 = !DILocation(line: 275, column: 5, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 275, column: 5)
!3039 = !DILocation(line: 275, column: 5, scope: !3002)
!3040 = !DILocation(line: 286, column: 5, scope: !3002)
!3041 = !DILocation(line: 288, column: 5, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 288, column: 5)
!3043 = !DILocation(line: 329, column: 5, scope: !3002)
!3044 = !DILocation(line: 334, column: 5, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 334, column: 5)
!3046 = !DILocation(line: 362, column: 5, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 362, column: 5)
!3048 = !DILocation(line: 285, column: 14, scope: !3038)
!3049 = !DILocation(line: 327, column: 10, scope: !3042)
!3050 = !DILocation(line: 359, column: 10, scope: !3045)
!3051 = !DILocation(line: 366, column: 10, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !3047, file: !19, line: 366, column: 10)
!3053 = !DILocation(line: 366, column: 10, scope: !3047)
!3054 = !DILocation(line: 0, scope: !3047)
!3055 = !DILocation(line: 367, column: 5, scope: !3002)
!3056 = !DILocation(line: 368, column: 5, scope: !3002)
!3057 = !DILocation(line: 369, column: 5, scope: !3002)
!3058 = !DILocation(line: 370, column: 76, scope: !3002)
!3059 = !{!638, !567, i64 84}
!3060 = !DILocation(line: 370, column: 5, scope: !3002)
!3061 = !DILocation(line: 371, column: 5, scope: !3002)
!3062 = !DILocation(line: 371, column: 5, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 371, column: 5)
!3064 = !DILocation(line: 372, column: 5, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 372, column: 5)
!3066 = !DILocation(line: 373, column: 101, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 373, column: 5)
!3068 = !{!638, !567, i64 92}
!3069 = !DILocation(line: 373, column: 5, scope: !3067)
!3070 = !DILocation(line: 374, column: 5, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 374, column: 5)
!3072 = !DILocation(line: 375, column: 5, scope: !3002)
!3073 = !DILocation(line: 375, column: 5, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 375, column: 5)
!3075 = !DILocation(line: 375, column: 94, scope: !3074)
!3076 = !{!638, !567, i64 100}
!3077 = !DILocation(line: 380, column: 98, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 376, column: 5)
!3079 = !{!638, !567, i64 104}
!3080 = !DILocation(line: 376, column: 5, scope: !3078)
!3081 = !DILocation(line: 381, column: 5, scope: !3002)
!3082 = !DILocation(line: 381, column: 98, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 381, column: 5)
!3084 = !{!638, !567, i64 108}
!3085 = !DILocation(line: 381, column: 5, scope: !3083)
!3086 = !DILocation(line: 382, column: 5, scope: !3002)
!3087 = !DILocation(line: 386, column: 58, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 382, column: 5)
!3089 = !{!638, !567, i64 112}
!3090 = !DILocalVariable(name: "table", arg: 1, scope: !3091, file: !19, line: 184, type: !664)
!3091 = distinct !DISubprogram(name: "strtable_lookup", scope: !19, file: !19, line: 184, type: !3092, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3094)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!143, !664, !6}
!3094 = !{!3090, !3095, !3096}
!3095 = !DILocalVariable(name: "index", arg: 2, scope: !3091, file: !19, line: 184, type: !6)
!3096 = !DILocalVariable(name: "i", scope: !3091, file: !19, line: 186, type: !6)
!3097 = !DILocation(line: 0, scope: !3091, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 386, column: 9, scope: !3088)
!3099 = !DILocation(line: 187, column: 27, scope: !3091, inlinedAt: !3098)
!3100 = !DILocation(line: 187, column: 44, scope: !3091, inlinedAt: !3098)
!3101 = !DILocation(line: 187, column: 14, scope: !3091, inlinedAt: !3098)
!3102 = !DILocation(line: 382, column: 5, scope: !3088)
!3103 = !DILocation(line: 387, column: 5, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 387, column: 5)
!3105 = !DILocation(line: 388, column: 86, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 388, column: 5)
!3107 = !DILocation(line: 388, column: 5, scope: !3106)
!3108 = !DILocation(line: 389, column: 5, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 389, column: 5)
!3110 = !DILocation(line: 391, column: 50, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 390, column: 5)
!3112 = !{!638, !567, i64 120}
!3113 = !DILocation(line: 391, column: 89, scope: !3111)
!3114 = !{!638, !567, i64 124}
!3115 = !DILocation(line: 390, column: 5, scope: !3111)
!3116 = !DILocation(line: 392, column: 5, scope: !3002)
!3117 = !DILocation(line: 392, column: 5, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 392, column: 5)
!3119 = !DILocation(line: 395, column: 5, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 395, column: 5)
!3121 = !DILocation(line: 396, column: 5, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 396, column: 5)
!3123 = !DILocation(line: 397, column: 5, scope: !3002)
!3124 = !DILocation(line: 402, column: 5, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 402, column: 5)
!3126 = !DILocation(line: 405, column: 5, scope: !3002)
!3127 = !DILocation(line: 406, column: 5, scope: !3002)
!3128 = !DILocation(line: 407, column: 5, scope: !3002)
!3129 = !DILocation(line: 408, column: 5, scope: !3002)
!3130 = !DILocation(line: 408, column: 5, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 408, column: 5)
!3132 = !DILocation(line: 409, column: 5, scope: !3002)
!3133 = !DILocation(line: 410, column: 101, scope: !3002)
!3134 = !{!638, !641, i64 512}
!3135 = !DILocation(line: 410, column: 88, scope: !3002)
!3136 = !DILocation(line: 410, column: 5, scope: !3002)
!3137 = !DILocation(line: 411, column: 104, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 411, column: 5)
!3139 = !{!638, !567, i64 556}
!3140 = !DILocation(line: 411, column: 5, scope: !3138)
!3141 = !DILocation(line: 411, column: 5, scope: !3002)
!3142 = !DILocation(line: 412, column: 89, scope: !3002)
!3143 = !{!638, !567, i64 524}
!3144 = !DILocation(line: 412, column: 5, scope: !3002)
!3145 = !DILocation(line: 413, column: 96, scope: !3002)
!3146 = !{!638, !567, i64 528}
!3147 = !DILocation(line: 413, column: 5, scope: !3002)
!3148 = !DILocation(line: 414, column: 5, scope: !3002)
!3149 = !DILocation(line: 414, column: 93, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 414, column: 5)
!3151 = !{!638, !641, i64 532}
!3152 = !DILocation(line: 414, column: 80, scope: !3150)
!3153 = !DILocation(line: 414, column: 5, scope: !3150)
!3154 = !DILocation(line: 415, column: 5, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 415, column: 5)
!3156 = !DILocation(line: 417, column: 73, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 417, column: 5)
!3158 = !{!638, !567, i64 496}
!3159 = !DILocation(line: 417, column: 5, scope: !3157)
!3160 = !DILocation(line: 418, column: 73, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 418, column: 5)
!3162 = !{!638, !567, i64 500}
!3163 = !DILocation(line: 418, column: 5, scope: !3161)
!3164 = !DILocation(line: 419, column: 78, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 419, column: 5)
!3166 = !{!638, !567, i64 504}
!3167 = !DILocation(line: 419, column: 5, scope: !3165)
!3168 = !DILocation(line: 420, column: 101, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 420, column: 5)
!3170 = !{!638, !641, i64 520}
!3171 = !DILocation(line: 420, column: 88, scope: !3169)
!3172 = !DILocation(line: 420, column: 5, scope: !3169)
!3173 = !DILocation(line: 421, column: 90, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 421, column: 5)
!3175 = !{!638, !641, i64 536}
!3176 = !DILocation(line: 421, column: 77, scope: !3174)
!3177 = !DILocation(line: 421, column: 5, scope: !3174)
!3178 = !DILocation(line: 422, column: 90, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 422, column: 5)
!3180 = !{!638, !641, i64 540}
!3181 = !DILocation(line: 422, column: 77, scope: !3179)
!3182 = !DILocation(line: 422, column: 5, scope: !3179)
!3183 = !DILocation(line: 423, column: 111, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 423, column: 5)
!3185 = !{!638, !567, i64 408}
!3186 = !DILocation(line: 423, column: 5, scope: !3184)
!3187 = !DILocation(line: 427, column: 98, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 424, column: 5)
!3189 = !{!638, !567, i64 544}
!3190 = !DILocation(line: 424, column: 5, scope: !3188)
!3191 = !DILocation(line: 428, column: 5, scope: !3002)
!3192 = !DILocation(line: 429, column: 80, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 428, column: 5)
!3194 = !{!638, !641, i64 548}
!3195 = !DILocation(line: 429, column: 67, scope: !3193)
!3196 = !DILocation(line: 428, column: 5, scope: !3193)
!3197 = !DILocation(line: 430, column: 5, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 430, column: 5)
!3199 = !DILocation(line: 431, column: 5, scope: !3002)
!3200 = !DILocation(line: 434, column: 5, scope: !3002)
!3201 = !DILocation(line: 434, column: 5, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 434, column: 5)
!3203 = !DILocation(line: 435, column: 92, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 435, column: 5)
!3205 = !{!638, !570, i64 568}
!3206 = !DILocation(line: 435, column: 5, scope: !3204)
!3207 = !DILocation(line: 436, column: 5, scope: !3002)
!3208 = !DILocation(line: 436, column: 5, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 436, column: 5)
!3210 = !DILocation(line: 437, column: 85, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 437, column: 5)
!3212 = !{!638, !641, i64 592}
!3213 = !DILocation(line: 437, column: 72, scope: !3211)
!3214 = !DILocation(line: 437, column: 5, scope: !3211)
!3215 = !DILocation(line: 438, column: 117, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 438, column: 5)
!3217 = !{!638, !641, i64 600}
!3218 = !DILocation(line: 438, column: 104, scope: !3216)
!3219 = !DILocation(line: 438, column: 5, scope: !3216)
!3220 = !DILocation(line: 439, column: 116, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 439, column: 5)
!3222 = !{!638, !641, i64 596}
!3223 = !DILocation(line: 439, column: 103, scope: !3221)
!3224 = !DILocation(line: 439, column: 5, scope: !3221)
!3225 = !DILocation(line: 440, column: 5, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 440, column: 5)
!3227 = !DILocation(line: 441, column: 5, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 441, column: 5)
!3229 = !DILocation(line: 446, column: 5, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 446, column: 5)
!3231 = !DILocation(line: 450, column: 5, scope: !3002)
!3232 = !DILocation(line: 450, column: 5, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 450, column: 5)
!3234 = !DILocation(line: 451, column: 5, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 451, column: 5)
!3236 = !DILocation(line: 452, column: 5, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 452, column: 5)
!3238 = !DILocation(line: 453, column: 5, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 453, column: 5)
!3240 = !DILocation(line: 459, column: 99, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 457, column: 5)
!3242 = !{!638, !567, i64 404}
!3243 = !DILocation(line: 0, scope: !3091, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 459, column: 40, scope: !3241)
!3245 = !DILocation(line: 187, column: 27, scope: !3091, inlinedAt: !3244)
!3246 = !DILocation(line: 187, column: 44, scope: !3091, inlinedAt: !3244)
!3247 = !DILocation(line: 187, column: 14, scope: !3091, inlinedAt: !3244)
!3248 = !DILocation(line: 457, column: 5, scope: !3241)
!3249 = !DILocation(line: 460, column: 5, scope: !3002)
!3250 = !DILocation(line: 460, column: 5, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 460, column: 5)
!3252 = !DILocation(line: 461, column: 5, scope: !3002)
!3253 = !DILocation(line: 464, column: 86, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 461, column: 5)
!3255 = !{!638, !567, i64 396}
!3256 = !DILocation(line: 461, column: 5, scope: !3254)
!3257 = !DILocation(line: 466, column: 98, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 465, column: 5)
!3259 = !{!638, !567, i64 412}
!3260 = !DILocation(line: 0, scope: !3091, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 466, column: 40, scope: !3258)
!3262 = !DILocation(line: 187, column: 27, scope: !3091, inlinedAt: !3261)
!3263 = !DILocation(line: 187, column: 44, scope: !3091, inlinedAt: !3261)
!3264 = !DILocation(line: 187, column: 14, scope: !3091, inlinedAt: !3261)
!3265 = !DILocation(line: 465, column: 5, scope: !3258)
!3266 = !DILocation(line: 467, column: 5, scope: !3002)
!3267 = !DILocation(line: 467, column: 5, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 467, column: 5)
!3269 = !DILocation(line: 473, column: 102, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 473, column: 5)
!3271 = !{!638, !567, i64 416}
!3272 = !DILocation(line: 473, column: 5, scope: !3270)
!3273 = !DILocation(line: 474, column: 5, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 474, column: 5)
!3275 = !DILocation(line: 475, column: 5, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 475, column: 5)
!3277 = !DILocation(line: 476, column: 5, scope: !3002)
!3278 = !DILocation(line: 472, column: 10, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3268, file: !19, line: 472, column: 10)
!3280 = !DILocation(line: 487, column: 5, scope: !3002)
!3281 = !DILocation(line: 477, column: 5, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 477, column: 5)
!3283 = !DILocation(line: 491, column: 5, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 491, column: 5)
!3285 = !DILocation(line: 493, column: 5, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 493, column: 5)
!3287 = !DILocation(line: 494, column: 5, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 494, column: 5)
!3289 = !DILocation(line: 500, column: 5, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 500, column: 5)
!3291 = !DILocation(line: 501, column: 5, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 501, column: 5)
!3293 = !DILocation(line: 503, column: 5, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 503, column: 5)
!3295 = !DILocation(line: 504, column: 120, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 504, column: 5)
!3297 = !DILocation(line: 504, column: 102, scope: !3296)
!3298 = !DILocation(line: 504, column: 5, scope: !3296)
!3299 = !DILocation(line: 505, column: 102, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 505, column: 5)
!3301 = !DILocation(line: 505, column: 5, scope: !3300)
!3302 = !DILocation(line: 509, column: 5, scope: !3002)
!3303 = !DILocation(line: 476, column: 112, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 476, column: 5)
!3305 = !{!638, !567, i64 428}
!3306 = !DILocation(line: 476, column: 5, scope: !3304)
!3307 = !DILocation(line: 0, scope: !3282)
!3308 = !DILocation(line: 490, column: 58, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 487, column: 5)
!3310 = !{!638, !641, i64 456}
!3311 = !DILocation(line: 490, column: 40, scope: !3309)
!3312 = !DILocation(line: 490, column: 86, scope: !3309)
!3313 = !{!638, !641, i64 460}
!3314 = !DILocation(line: 490, column: 68, scope: !3309)
!3315 = !DILocation(line: 487, column: 5, scope: !3309)
!3316 = !DILocation(line: 491, column: 5, scope: !3002)
!3317 = !DILocation(line: 495, column: 5, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 495, column: 5)
!3319 = !DILocation(line: 499, column: 101, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 496, column: 5)
!3321 = !{!638, !567, i64 440}
!3322 = !DILocation(line: 496, column: 5, scope: !3320)
!3323 = !DILocation(line: 502, column: 83, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 502, column: 5)
!3325 = !{!638, !567, i64 452}
!3326 = !DILocation(line: 502, column: 5, scope: !3324)
!3327 = !DILocation(line: 506, column: 5, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 506, column: 5)
!3329 = !DILocation(line: 510, column: 5, scope: !3002)
!3330 = !DILocation(line: 552, column: 5, scope: !3002)
!3331 = !DILocation(line: 553, column: 5, scope: !3002)
!3332 = !DILocation(line: 554, column: 5, scope: !3002)
!3333 = !DILocation(line: 555, column: 5, scope: !3002)
!3334 = !DILocation(line: 556, column: 5, scope: !3002)
!3335 = !DILocation(line: 510, column: 5, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 510, column: 5)
!3337 = !DILocation(line: 511, column: 5, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 511, column: 5)
!3339 = !DILocation(line: 513, column: 5, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 513, column: 5)
!3341 = !DILocation(line: 515, column: 5, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 515, column: 5)
!3343 = !DILocation(line: 517, column: 5, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 517, column: 5)
!3345 = !DILocation(line: 519, column: 5, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 519, column: 5)
!3347 = !DILocation(line: 520, column: 5, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 520, column: 5)
!3349 = !DILocation(line: 521, column: 5, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 521, column: 5)
!3351 = !DILocation(line: 522, column: 5, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 522, column: 5)
!3353 = !DILocation(line: 523, column: 5, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 523, column: 5)
!3355 = !DILocation(line: 526, column: 92, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 524, column: 5)
!3357 = !{!638, !567, i64 52}
!3358 = !DILocation(line: 0, scope: !3091, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 526, column: 40, scope: !3356)
!3360 = !DILocation(line: 187, column: 27, scope: !3091, inlinedAt: !3359)
!3361 = !DILocation(line: 187, column: 44, scope: !3091, inlinedAt: !3359)
!3362 = !DILocation(line: 187, column: 14, scope: !3091, inlinedAt: !3359)
!3363 = !DILocation(line: 524, column: 5, scope: !3356)
!3364 = !DILocation(line: 529, column: 93, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 527, column: 5)
!3366 = !{!638, !567, i64 56}
!3367 = !DILocation(line: 0, scope: !3091, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 529, column: 40, scope: !3365)
!3369 = !DILocation(line: 187, column: 27, scope: !3091, inlinedAt: !3368)
!3370 = !DILocation(line: 187, column: 44, scope: !3091, inlinedAt: !3368)
!3371 = !DILocation(line: 187, column: 14, scope: !3091, inlinedAt: !3368)
!3372 = !DILocation(line: 527, column: 5, scope: !3365)
!3373 = !DILocation(line: 532, column: 93, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 530, column: 5)
!3375 = !{!638, !567, i64 60}
!3376 = !DILocation(line: 0, scope: !3091, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 532, column: 40, scope: !3374)
!3378 = !DILocation(line: 187, column: 27, scope: !3091, inlinedAt: !3377)
!3379 = !DILocation(line: 187, column: 44, scope: !3091, inlinedAt: !3377)
!3380 = !DILocation(line: 187, column: 14, scope: !3091, inlinedAt: !3377)
!3381 = !DILocation(line: 530, column: 5, scope: !3374)
!3382 = !DILocation(line: 536, column: 93, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 533, column: 5)
!3384 = !{!638, !567, i64 64}
!3385 = !DILocation(line: 0, scope: !3091, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 536, column: 40, scope: !3383)
!3387 = !DILocation(line: 187, column: 27, scope: !3091, inlinedAt: !3386)
!3388 = !DILocation(line: 187, column: 44, scope: !3091, inlinedAt: !3386)
!3389 = !DILocation(line: 187, column: 14, scope: !3091, inlinedAt: !3386)
!3390 = !DILocation(line: 533, column: 5, scope: !3383)
!3391 = !DILocation(line: 540, column: 92, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 537, column: 5)
!3393 = !{!638, !567, i64 68}
!3394 = !DILocation(line: 0, scope: !3091, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 540, column: 40, scope: !3392)
!3396 = !DILocation(line: 187, column: 27, scope: !3091, inlinedAt: !3395)
!3397 = !DILocation(line: 187, column: 44, scope: !3091, inlinedAt: !3395)
!3398 = !DILocation(line: 187, column: 14, scope: !3091, inlinedAt: !3395)
!3399 = !DILocation(line: 537, column: 5, scope: !3392)
!3400 = !DILocation(line: 544, column: 93, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 541, column: 5)
!3402 = !{!638, !567, i64 72}
!3403 = !DILocation(line: 0, scope: !3091, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 544, column: 40, scope: !3401)
!3405 = !DILocation(line: 187, column: 27, scope: !3091, inlinedAt: !3404)
!3406 = !DILocation(line: 187, column: 44, scope: !3091, inlinedAt: !3404)
!3407 = !DILocation(line: 187, column: 14, scope: !3091, inlinedAt: !3404)
!3408 = !DILocation(line: 541, column: 5, scope: !3401)
!3409 = !DILocation(line: 546, column: 54, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 545, column: 5)
!3411 = !{!638, !567, i64 76}
!3412 = !DILocation(line: 545, column: 5, scope: !3410)
!3413 = !DILocation(line: 548, column: 5, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 548, column: 5)
!3415 = !DILocalVariable(name: "buf", arg: 1, scope: !3416, file: !19, line: 190, type: !8)
!3416 = distinct !DISubprogram(name: "stringify_names", scope: !19, file: !19, line: 190, type: !3417, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3419)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!8, !8, !664}
!3419 = !{!3415, !3420, !3421, !3422}
!3420 = !DILocalVariable(name: "names", arg: 2, scope: !3416, file: !19, line: 190, type: !664)
!3421 = !DILocalVariable(name: "i", scope: !3416, file: !19, line: 192, type: !6)
!3422 = !DILocalVariable(name: "p", scope: !3416, file: !19, line: 193, type: !8)
!3423 = !DILocation(line: 0, scope: !3416, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 557, column: 69, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 556, column: 5)
!3426 = !DILocation(line: 196, column: 14, scope: !3427, inlinedAt: !3424)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !19, line: 195, column: 5)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !19, line: 194, column: 5)
!3429 = distinct !DILexicalBlock(scope: !3416, file: !19, line: 194, column: 5)
!3430 = !DILocation(line: 197, column: 13, scope: !3427, inlinedAt: !3424)
!3431 = !DILocation(line: 196, column: 11, scope: !3427, inlinedAt: !3424)
!3432 = !DILocation(line: 198, column: 18, scope: !3433, inlinedAt: !3424)
!3433 = distinct !DILexicalBlock(scope: !3427, file: !19, line: 197, column: 13)
!3434 = !DILocation(line: 198, column: 15, scope: !3433, inlinedAt: !3424)
!3435 = !DILocation(line: 197, column: 20, scope: !3433, inlinedAt: !3424)
!3436 = !DILocation(line: 197, column: 13, scope: !3433, inlinedAt: !3424)
!3437 = distinct !{!3437, !3438, !3439, !680, !681}
!3438 = !DILocation(line: 194, column: 5, scope: !3429, inlinedAt: !3424)
!3439 = !DILocation(line: 199, column: 5, scope: !3429, inlinedAt: !3424)
!3440 = !DILocation(line: 556, column: 5, scope: !3425)
!3441 = !DILocation(line: 0, scope: !3416, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 559, column: 71, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 558, column: 5)
!3444 = !DILocation(line: 196, column: 14, scope: !3427, inlinedAt: !3442)
!3445 = !DILocation(line: 197, column: 13, scope: !3427, inlinedAt: !3442)
!3446 = !DILocation(line: 196, column: 11, scope: !3427, inlinedAt: !3442)
!3447 = !DILocation(line: 198, column: 18, scope: !3433, inlinedAt: !3442)
!3448 = !DILocation(line: 198, column: 15, scope: !3433, inlinedAt: !3442)
!3449 = !DILocation(line: 197, column: 20, scope: !3433, inlinedAt: !3442)
!3450 = !DILocation(line: 197, column: 13, scope: !3433, inlinedAt: !3442)
!3451 = distinct !{!3451, !3452, !3453, !680, !681}
!3452 = !DILocation(line: 194, column: 5, scope: !3429, inlinedAt: !3442)
!3453 = !DILocation(line: 199, column: 5, scope: !3429, inlinedAt: !3442)
!3454 = !DILocation(line: 561, column: 5, scope: !3002)
!3455 = !DILocation(line: 562, column: 5, scope: !3002)
!3456 = !DILocation(line: 563, column: 5, scope: !3002)
!3457 = !DILocation(line: 564, column: 5, scope: !3002)
!3458 = !DILocation(line: 565, column: 5, scope: !3002)
!3459 = !DILocation(line: 558, column: 5, scope: !3443)
!3460 = !DILocation(line: 560, column: 5, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 560, column: 5)
!3462 = !DILocation(line: 566, column: 5, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 566, column: 5)
!3464 = !DILocation(line: 567, column: 5, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 567, column: 5)
!3466 = !DILocation(line: 568, column: 5, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 568, column: 5)
!3468 = !DILocation(line: 569, column: 5, scope: !3002)
!3469 = !DILocation(line: 570, column: 5, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 570, column: 5)
!3471 = !DILocation(line: 571, column: 5, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 571, column: 5)
!3473 = !DILocation(line: 572, column: 5, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 572, column: 5)
!3475 = !DILocation(line: 573, column: 5, scope: !3002)
!3476 = !DILocation(line: 573, column: 5, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 573, column: 5)
!3478 = !DILocation(line: 574, column: 5, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 574, column: 5)
!3480 = !DILocation(line: 575, column: 5, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 575, column: 5)
!3482 = !DILocation(line: 576, column: 5, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 576, column: 5)
!3484 = !DILocation(line: 577, column: 5, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 577, column: 5)
!3486 = !DILocation(line: 578, column: 5, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 578, column: 5)
!3488 = !DILocation(line: 579, column: 5, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 579, column: 5)
!3490 = !DILocation(line: 580, column: 5, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 580, column: 5)
!3492 = !DILocation(line: 581, column: 86, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 581, column: 5)
!3494 = !{!638, !567, i64 644}
!3495 = !DILocation(line: 581, column: 5, scope: !3493)
!3496 = !DILocation(line: 582, column: 5, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 582, column: 5)
!3498 = !DILocation(line: 583, column: 5, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 583, column: 5)
!3500 = !DILocation(line: 584, column: 5, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 584, column: 5)
!3502 = !DILocation(line: 585, column: 5, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 585, column: 5)
!3504 = !DILocation(line: 586, column: 5, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3002, file: !19, line: 586, column: 5)
!3506 = !DILocation(line: 589, column: 5, scope: !3002)
!3507 = !DILocation(line: 590, column: 1, scope: !3002)
!3508 = !DISubprogram(name: "fclose", scope: !3509, file: !3509, line: 213, type: !3510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3509 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!6, !429}
!3512 = !DISubprogram(name: "x264_param_parse", scope: !69, file: !69, line: 418, type: !3000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3513 = !DISubprogram(name: "x264_param_apply_fastfirstpass", scope: !69, file: !69, line: 462, type: !2990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3514 = !DISubprogram(name: "x264_param_apply_profile", scope: !69, file: !69, line: 477, type: !3515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!6, !79, !143}
!3517 = !DISubprogram(name: "x264_reduce_fraction", scope: !1280, file: !1280, line: 192, type: !3518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{null, !2287, !2287}
!3520 = !DISubprogram(name: "x264_encoder_open_96", scope: !69, file: !69, line: 619, type: !3521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!1277, !79}
!3523 = !DISubprogram(name: "x264_encoder_parameters", scope: !69, file: !69, line: 636, type: !3524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !1277, !79}
!3526 = !DISubprogram(name: "x264_mdate", scope: !1280, file: !1280, line: 181, type: !3527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!11}
!3529 = !DISubprogram(name: "x264_encoder_headers", scope: !69, file: !69, line: 642, type: !3530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!6, !1277, !3532, !312}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!3533 = !DISubprogram(name: "x264_encoder_delayed_frames", scope: !69, file: !69, line: 655, type: !3534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!6, !1277}
!3536 = !DISubprogram(name: "x264_encoder_close", scope: !69, file: !69, line: 651, type: !3537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{null, !1277}
!3539 = !DISubprogram(name: "ftell", scope: !3509, file: !3509, line: 689, type: !3540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!15, !429}
!3542 = !DISubprogram(name: "fseek", scope: !3509, file: !3509, line: 684, type: !3543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!6, !429, !15, !6}
!3545 = !DISubprogram(name: "x264_encoder_encode", scope: !69, file: !69, line: 648, type: !3546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2982)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!6, !1277, !3532, !312, !67, !67}
