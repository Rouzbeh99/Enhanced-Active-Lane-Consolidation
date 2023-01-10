; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r/llvm-ir/538.imagick_r_bc/magick/coder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/coder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CoderMapInfo = type { ptr, ptr }
%struct._ExceptionInfo = type { i32, i32, ptr, ptr, ptr, i32, ptr, i64 }
%struct._CoderInfo = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i64 }

@coder_semaphore = internal global ptr null, align 8, !dbg !0
@coder_cache = internal unnamed_addr global ptr null, align 8, !dbg !235
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/coder.c\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"\0APath: %s\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Magick      Coder\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coder.xml\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"MemoryAllocationFailed\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@CoderMap = internal unnamed_addr constant [144 x %struct._CoderMapInfo] [%struct._CoderMapInfo { ptr @.str.27, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.29, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.31, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.32, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.33, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.35, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.37, ptr @.str.38 }, %struct._CoderMapInfo { ptr @.str.39, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.40, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.41, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.42, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.44, ptr @.str.45 }, %struct._CoderMapInfo { ptr @.str.46, ptr @.str.47 }, %struct._CoderMapInfo { ptr @.str.48, ptr @.str.47 }, %struct._CoderMapInfo { ptr @.str.49, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.50, ptr @.str.51 }, %struct._CoderMapInfo { ptr @.str.52, ptr @.str.53 }, %struct._CoderMapInfo { ptr @.str.54, ptr @.str.55 }, %struct._CoderMapInfo { ptr @.str.56, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.57, ptr @.str.58 }, %struct._CoderMapInfo { ptr @.str.59, ptr @.str.60 }, %struct._CoderMapInfo { ptr @.str.61, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.62, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.63, ptr @.str.64 }, %struct._CoderMapInfo { ptr @.str.65, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.66, ptr @.str.67 }, %struct._CoderMapInfo { ptr @.str.68, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.69, ptr @.str.38 }, %struct._CoderMapInfo { ptr @.str.70, ptr @.str.71 }, %struct._CoderMapInfo { ptr @.str.72, ptr @.str.73 }, %struct._CoderMapInfo { ptr @.str.74, ptr @.str.75 }, %struct._CoderMapInfo { ptr @.str.76, ptr @.str.71 }, %struct._CoderMapInfo { ptr @.str.77, ptr @.str.71 }, %struct._CoderMapInfo { ptr @.str.78, ptr @.str.71 }, %struct._CoderMapInfo { ptr @.str.79, ptr @.str.80 }, %struct._CoderMapInfo { ptr @.str.81, ptr @.str.80 }, %struct._CoderMapInfo { ptr @.str.82, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.83, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.84, ptr @.str.85 }, %struct._CoderMapInfo { ptr @.str.86, ptr @.str.87 }, %struct._CoderMapInfo { ptr @.str.88, ptr @.str.85 }, %struct._CoderMapInfo { ptr @.str.89, ptr @.str.90 }, %struct._CoderMapInfo { ptr @.str.91, ptr @.str.92 }, %struct._CoderMapInfo { ptr @.str.93, ptr @.str.94 }, %struct._CoderMapInfo { ptr @.str.95, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.96, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.98, ptr @.str.99 }, %struct._CoderMapInfo { ptr @.str.100, ptr @.str.101 }, %struct._CoderMapInfo { ptr @.str.102, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.103, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.104, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.105, ptr @.str.106 }, %struct._CoderMapInfo { ptr @.str.107, ptr @.str.85 }, %struct._CoderMapInfo { ptr @.str.108, ptr @.str.85 }, %struct._CoderMapInfo { ptr @.str.109, ptr @.str.110 }, %struct._CoderMapInfo { ptr @.str.111, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.112, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.113, ptr @.str.64 }, %struct._CoderMapInfo { ptr @.str.114, ptr @.str.115 }, %struct._CoderMapInfo { ptr @.str.116, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.117, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.118, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.119, ptr @.str.51 }, %struct._CoderMapInfo { ptr @.str.120, ptr @.str.45 }, %struct._CoderMapInfo { ptr @.str.121, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.123, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.125, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.126, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.127, ptr @.str.128 }, %struct._CoderMapInfo { ptr @.str.129, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.130, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.131, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.132, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.133, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.134, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.135, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.136, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.137, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.138, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.139, ptr @.str.140 }, %struct._CoderMapInfo { ptr @.str.141, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.142, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.143, ptr @.str.144 }, %struct._CoderMapInfo { ptr @.str.145, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.146, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.147, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.148, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.149, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.150, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.151, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.153, ptr @.str.154 }, %struct._CoderMapInfo { ptr @.str.155, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.156, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.157, ptr @.str.158 }, %struct._CoderMapInfo { ptr @.str.159, ptr @.str.38 }, %struct._CoderMapInfo { ptr @.str.160, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.160, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.161, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.162, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.163, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.164, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.165, ptr @.str.124 }, %struct._CoderMapInfo { ptr @.str.166, ptr @.str.167 }, %struct._CoderMapInfo { ptr @.str.168, ptr @.str.128 }, %struct._CoderMapInfo { ptr @.str.169, ptr @.str.167 }, %struct._CoderMapInfo { ptr @.str.170, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.171, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.172, ptr @.str.122 }, %struct._CoderMapInfo { ptr @.str.173, ptr @.str.152 }, %struct._CoderMapInfo { ptr @.str.174, ptr @.str.175 }, %struct._CoderMapInfo { ptr @.str.176, ptr @.str.99 }, %struct._CoderMapInfo { ptr @.str.177, ptr @.str.178 }, %struct._CoderMapInfo { ptr @.str.179, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.180, ptr @.str.181 }, %struct._CoderMapInfo { ptr @.str.182, ptr @.str.183 }, %struct._CoderMapInfo { ptr @.str.184, ptr @.str.183 }, %struct._CoderMapInfo { ptr @.str.185, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.186, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.187, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.188, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.189, ptr @.str.106 }, %struct._CoderMapInfo { ptr @.str.190, ptr @.str.191 }, %struct._CoderMapInfo { ptr @.str.192, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.193, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.194, ptr @.str.144 }, %struct._CoderMapInfo { ptr @.str.195, ptr @.str.191 }, %struct._CoderMapInfo { ptr @.str.196, ptr @.str.99 }, %struct._CoderMapInfo { ptr @.str.197, ptr @.str.99 }, %struct._CoderMapInfo { ptr @.str.198, ptr @.str.34 }, %struct._CoderMapInfo { ptr @.str.199, ptr @.str.51 }, %struct._CoderMapInfo { ptr @.str.200, ptr @.str.110 }, %struct._CoderMapInfo { ptr @.str.201, ptr @.str.110 }, %struct._CoderMapInfo { ptr @.str.202, ptr @.str.97 }, %struct._CoderMapInfo { ptr @.str.203, ptr @.str.43 }, %struct._CoderMapInfo { ptr @.str.204, ptr @.str.205 }, %struct._CoderMapInfo { ptr @.str.206, ptr @.str.28 }, %struct._CoderMapInfo { ptr @.str.207, ptr @.str.30 }, %struct._CoderMapInfo { ptr @.str.208, ptr @.str.209 }, %struct._CoderMapInfo { ptr @.str.210, ptr @.str.209 }, %struct._CoderMapInfo { ptr @.str.211, ptr @.str.209 }, %struct._CoderMapInfo { ptr @.str.212, ptr @.str.209 }, %struct._CoderMapInfo { ptr @.str.213, ptr @.str.214 }, %struct._CoderMapInfo { ptr @.str.215, ptr @.str.36 }, %struct._CoderMapInfo { ptr @.str.216, ptr @.str.217 }], align 16, !dbg !238
@.str.12 = private unnamed_addr constant [11 x i8] c"[built-in]\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Loading coder configuration file \22%s\22 ...\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"<!DOCTYPE\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"]>\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"<include\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"IncludeNodeNestedTooDeeply\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"<coder\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"/>\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"magick\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"stealth\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"3FR\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"DNG\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"8BIM\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"META\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"8BIMTEXT\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"8BIMWTEXT\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"AFM\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"TTF\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"RAW\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"PDF\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"APP1JPEG\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"APP1\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"ARW\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"AVI\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"MPEG\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"BIE\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"JBIG\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"BMP2\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"BMP\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"BMP3\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"BRF\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"BRAILLE\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"BGRA\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"BGR\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"CMYKA\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"CMYK\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"CAL\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"CALS\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"CANVAS\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"XC\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"CR2\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"CRW\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"CUR\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"ICON\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"DCR\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"DCX\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"PCX\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"DFONT\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"EPDF\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"EPI\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"EPS2\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"PS2\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"EPS3\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"PS3\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"EPSF\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"EPSI\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"EPS\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"EPT2\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"EPT\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"EPT3\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"ERF\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"EXIF\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"FRACTAL\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"PLASMA\00", align 1
@.str.88 = private unnamed_addr constant [4 x i8] c"FTP\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"FTS\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"FITS\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"G3\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"FAX\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"GIF87\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"GIF\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"GRANITE\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"MAGICK\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"GROUP4\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"TIFF\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"GV\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"DOT\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"K25\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"KDC\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"HTM\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"HTTPS\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"ICB\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"TGA\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"ICC\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"ICM\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"ICO\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"IMPLICIT\00", align 1
@.str.115 = private unnamed_addr constant [4 x i8] c"***\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"IPTC\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"IPTCTEXT\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"IPTCWTEXT\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"ISOBRL\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"JBG\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"JNG\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"JPC\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"JP2\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"J2C\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"J2K\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"JPG\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"JPEG\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"JPX\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"LOGO\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"M2V\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"M4V\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"MNG\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c"MOV\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"MP4\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"MPG\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"MPRI\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"MPR\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"MEF\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"MRW\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"MSVG\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"SVG\00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"NEF\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"NETSCAPE\00", align 1
@.str.147 = private unnamed_addr constant [4 x i8] c"NRW\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"ORF\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"OTF\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"P7\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"PNM\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"PAL\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"UYVY\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"PAM\00", align 1
@.str.156 = private unnamed_addr constant [4 x i8] c"PBM\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"PCDS\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"PCD\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"PDFA\00", align 1
@.str.160 = private unnamed_addr constant [4 x i8] c"PEF\00", align 1
@.str.161 = private unnamed_addr constant [4 x i8] c"PFA\00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c"PFB\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"PFM\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"PGM\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"PGX\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"PICON\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"XPM\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"PJPEG\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"PNG24\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"PNG32\00", align 1
@.str.172 = private unnamed_addr constant [5 x i8] c"PNG8\00", align 1
@.str.173 = private unnamed_addr constant [4 x i8] c"PPM\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"PSB\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"PSD\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"PTIF\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"RADIAL-GRADIENT\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"GRADIENT\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"RAF\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"RAS\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"SUN\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"RGBA\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.184 = private unnamed_addr constant [5 x i8] c"RGBO\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"RMF\00", align 1
@.str.186 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"ROSE\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"RW2\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"SHTML\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"SPARSE-COLOR\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"SR2\00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c"SRF\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"SVGZ\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"TIFF64\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"TIF\00", align 1
@.str.198 = private unnamed_addr constant [4 x i8] c"TTC\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"UBRL\00", align 1
@.str.200 = private unnamed_addr constant [4 x i8] c"VDA\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"VST\00", align 1
@.str.202 = private unnamed_addr constant [7 x i8] c"WIZARD\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"WMV\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"WMZ\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"WMF\00", align 1
@.str.206 = private unnamed_addr constant [4 x i8] c"X3f\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"XMP\00", align 1
@.str.208 = private unnamed_addr constant [10 x i8] c"XTRNARRAY\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"XTRN\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"XTRNBLOB\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"XTRNFILE\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"XTRNIMAGE\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"XV\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"VIFF\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.216 = private unnamed_addr constant [7 x i8] c"YCbCrA\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"YCbCr\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @CoderComponentGenesis() local_unnamed_addr #0 !dbg !256 {
entry:
  %0 = load ptr, ptr @coder_semaphore, align 8, !dbg !260, !tbaa !262
  %cmp = icmp eq ptr %0, null, !dbg !266
  br i1 %cmp, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %entry
  %call = tail call ptr @AllocateSemaphoreInfo() #11, !dbg !268
  store ptr %call, ptr @coder_semaphore, align 8, !dbg !269, !tbaa !262
  br label %if.end, !dbg !270

if.end:                                           ; preds = %if.then, %entry
  ret i32 1, !dbg !271
}

declare !dbg !272 ptr @AllocateSemaphoreInfo() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CoderComponentTerminus() local_unnamed_addr #0 !dbg !275 {
entry:
  %0 = load ptr, ptr @coder_semaphore, align 8, !dbg !278, !tbaa !262
  %cmp = icmp eq ptr %0, null, !dbg !280
  br i1 %cmp, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %entry
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @coder_semaphore) #11, !dbg !282
  %.pre = load ptr, ptr @coder_semaphore, align 8, !dbg !283, !tbaa !262
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then, %entry
  %1 = phi ptr [ %.pre, %if.then ], [ %0, %entry ], !dbg !283
  tail call void @LockSemaphoreInfo(ptr noundef %1) #11, !dbg !284
  %2 = load ptr, ptr @coder_cache, align 8, !dbg !285, !tbaa !262
  %cmp1.not = icmp eq ptr %2, null, !dbg !287
  br i1 %cmp1.not, label %if.end3, label %if.then2, !dbg !288

if.then2:                                         ; preds = %if.end
  %call = tail call ptr @DestroySplayTree(ptr noundef nonnull %2) #11, !dbg !289
  store ptr %call, ptr @coder_cache, align 8, !dbg !290, !tbaa !262
  br label %if.end3, !dbg !291

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load ptr, ptr @coder_semaphore, align 8, !dbg !292, !tbaa !262
  tail call void @UnlockSemaphoreInfo(ptr noundef %3) #11, !dbg !293
  tail call void @DestroySemaphoreInfo(ptr noundef nonnull @coder_semaphore) #11, !dbg !294
  ret void, !dbg !295
}

declare !dbg !296 void @ActivateSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !300 void @LockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !303 ptr @DestroySplayTree(ptr noundef) local_unnamed_addr #1

declare !dbg !306 void @UnlockSemaphoreInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !307 void @DestroySemaphoreInfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCoderInfo(ptr noundef %name, ptr noundef %exception) local_unnamed_addr #0 !dbg !308 {
entry:
  %exception1.i.i = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %name, metadata !325, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata ptr %exception, metadata !326, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.value(metadata ptr %exception, metadata !329, metadata !DIExpression()) #11, !dbg !334
  %0 = load ptr, ptr @coder_cache, align 8, !dbg !337, !tbaa !262
  %cmp.i = icmp eq ptr %0, null, !dbg !339
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !340

if.then.i:                                        ; preds = %entry
  %1 = load ptr, ptr @coder_semaphore, align 8, !dbg !341, !tbaa !262
  %cmp1.i = icmp eq ptr %1, null, !dbg !344
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i, !dbg !345

if.then2.i:                                       ; preds = %if.then.i
  tail call void @ActivateSemaphoreInfo(ptr noundef nonnull @coder_semaphore) #11, !dbg !346
  %.pre.i = load ptr, ptr @coder_semaphore, align 8, !dbg !347, !tbaa !262
  br label %if.end.i, !dbg !346

if.end.i:                                         ; preds = %if.then2.i, %if.then.i
  %2 = phi ptr [ %.pre.i, %if.then2.i ], [ %1, %if.then.i ], !dbg !347
  tail call void @LockSemaphoreInfo(ptr noundef %2) #11, !dbg !348
  %3 = load ptr, ptr @coder_cache, align 8, !dbg !349, !tbaa !262
  %cmp3.i = icmp eq ptr %3, null, !dbg !351
  br i1 %cmp3.i, label %if.then4.i, label %IsCoderTreeInstantiated.exit, !dbg !352

if.then4.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr @.str.9, metadata !353, metadata !DIExpression()) #11, !dbg !379
  call void @llvm.dbg.value(metadata ptr %exception, metadata !358, metadata !DIExpression()) #11, !dbg !379
  %call.i.i = tail call ptr @NewSplayTree(ptr noundef nonnull @CompareSplayTreeString, ptr noundef nonnull @RelinquishMagickMemory, ptr noundef nonnull @DestroyCoderNode) #11, !dbg !381
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !368, metadata !DIExpression()) #11, !dbg !379
  %cmp.i.i = icmp eq ptr %call.i.i, null, !dbg !382
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !383

if.then.i.i:                                      ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception1.i.i) #11, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %exception1.i.i, metadata !372, metadata !DIExpression()) #11, !dbg !384
  call void @GetExceptionInfo(ptr noundef nonnull %exception1.i.i) #11, !dbg !384
  %call2.i.i = tail call ptr @__errno_location() #12, !dbg !384
  %4 = load i32, ptr %call2.i.i, align 4, !dbg !384, !tbaa !385
  %call3.i.i = call ptr @GetExceptionMessage(i32 noundef %4) #11, !dbg !384
  call void @llvm.dbg.value(metadata ptr %call3.i.i, metadata !369, metadata !DIExpression()) #11, !dbg !387
  %call4.i.i = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception1.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 315, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %call3.i.i) #11, !dbg !384
  %call5.i.i = call ptr @DestroyString(ptr noundef %call3.i.i) #11, !dbg !384
  call void @llvm.dbg.value(metadata ptr %call5.i.i, metadata !369, metadata !DIExpression()) #11, !dbg !387
  call void @CatchException(ptr noundef nonnull %exception1.i.i) #11, !dbg !384
  %call6.i.i = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception1.i.i) #11, !dbg !384
  call void @MagickCoreTerminus() #11, !dbg !384
  call void @_exit(i32 noundef 1) #13, !dbg !384
  unreachable, !dbg !384

if.end.i.i:                                       ; preds = %if.then4.i
  call void @llvm.dbg.value(metadata i32 1, metadata !365, metadata !DIExpression()) #11, !dbg !379
  %call7.i.i = tail call ptr @GetConfigureOptions(ptr noundef nonnull @.str.9, ptr noundef %exception) #11, !dbg !388
  call void @llvm.dbg.value(metadata ptr %call7.i.i, metadata !360, metadata !DIExpression()) #11, !dbg !379
  %call8.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #11, !dbg !389
  call void @llvm.dbg.value(metadata ptr %call8.i.i, metadata !359, metadata !DIExpression()) #11, !dbg !379
  %cmp9.not1.i.i = icmp eq ptr %call8.i.i, null, !dbg !390
  br i1 %cmp9.not1.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !391

while.body.i.i:                                   ; preds = %if.end.i.i, %while.body.i.i
  %option.03.i.i = phi ptr [ %call13.i.i, %while.body.i.i ], [ %call8.i.i, %if.end.i.i ]
  %status.02.i.i = phi i32 [ %and.i.i, %while.body.i.i ], [ 1, %if.end.i.i ]
  call void @llvm.dbg.value(metadata ptr %option.03.i.i, metadata !359, metadata !DIExpression()) #11, !dbg !379
  call void @llvm.dbg.value(metadata i32 %status.02.i.i, metadata !365, metadata !DIExpression()) #11, !dbg !379
  %call10.i.i = tail call ptr @GetStringInfoDatum(ptr noundef nonnull %option.03.i.i) #11, !dbg !392
  %call11.i.i = tail call ptr @GetStringInfoPath(ptr noundef nonnull %option.03.i.i) #11, !dbg !394
  %call12.i.i = tail call fastcc i32 @LoadCoderCache(ptr noundef nonnull %call.i.i, ptr noundef %call10.i.i, ptr noundef %call11.i.i, i64 noundef 0, ptr noundef %exception) #11, !dbg !395
  %and.i.i = and i32 %call12.i.i, %status.02.i.i, !dbg !396
  call void @llvm.dbg.value(metadata i32 %and.i.i, metadata !365, metadata !DIExpression()) #11, !dbg !379
  %call13.i.i = tail call ptr @GetNextValueInLinkedList(ptr noundef %call7.i.i) #11, !dbg !397
  call void @llvm.dbg.value(metadata ptr %call13.i.i, metadata !359, metadata !DIExpression()) #11, !dbg !379
  %cmp9.not.i.i = icmp eq ptr %call13.i.i, null, !dbg !390
  br i1 %cmp9.not.i.i, label %while.end.i.i, label %while.body.i.i, !dbg !391, !llvm.loop !398

while.end.i.i:                                    ; preds = %while.body.i.i, %if.end.i.i
  %status.0.lcssa.i.i = phi i32 [ 1, %if.end.i.i ], [ %and.i.i, %while.body.i.i ], !dbg !379
  %call14.i.i = tail call ptr @DestroyConfigureOptions(ptr noundef %call7.i.i) #11, !dbg !402
  call void @llvm.dbg.value(metadata ptr %call14.i.i, metadata !360, metadata !DIExpression()) #11, !dbg !379
  call void @llvm.dbg.value(metadata i64 0, metadata !367, metadata !DIExpression()) #11, !dbg !379
  call void @llvm.dbg.value(metadata i32 %status.0.lcssa.i.i, metadata !365, metadata !DIExpression()) #11, !dbg !379
  br label %for.body.i.i, !dbg !403

for.body.i.i:                                     ; preds = %cleanup.i.i, %while.end.i.i
  %status.16.i.i = phi i32 [ %status.0.lcssa.i.i, %while.end.i.i ], [ %status.2.i.i, %cleanup.i.i ]
  %i.04.i.i = phi i64 [ 0, %while.end.i.i ], [ %inc.i.i, %cleanup.i.i ]
  call void @llvm.dbg.value(metadata i32 %status.16.i.i, metadata !365, metadata !DIExpression()) #11, !dbg !379
  call void @llvm.dbg.value(metadata i64 %i.04.i.i, metadata !367, metadata !DIExpression()) #11, !dbg !379
  call void @llvm.dbg.value(metadata !DIArgList(ptr @CoderMap, i64 %i.04.i.i), metadata !377, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #11, !dbg !404
  %call16.i.i = tail call ptr @AcquireMagickMemory(i64 noundef 56) #14, !dbg !405
  call void @llvm.dbg.value(metadata ptr %call16.i.i, metadata !373, metadata !DIExpression()) #11, !dbg !404
  %cmp17.i.i = icmp eq ptr %call16.i.i, null, !dbg !406
  br i1 %cmp17.i.i, label %if.then18.i.i, label %if.end20.i.i, !dbg !408

if.then18.i.i:                                    ; preds = %for.body.i.i
  %name.i.i = getelementptr inbounds %struct._CoderMapInfo, ptr @CoderMap, i64 %i.04.i.i, i32 1, !dbg !409
  br label %cleanup.sink.split.i.i, !dbg !411

if.end20.i.i:                                     ; preds = %for.body.i.i
  %add.ptr.i.i = getelementptr inbounds %struct._CoderMapInfo, ptr @CoderMap, i64 %i.04.i.i, !dbg !412
  call void @llvm.dbg.value(metadata ptr %add.ptr.i.i, metadata !377, metadata !DIExpression()) #11, !dbg !404
  %call21.i.i = tail call ptr @ResetMagickMemory(ptr noundef nonnull %call16.i.i, i32 noundef 0, i64 noundef 56) #11, !dbg !413
  store ptr @.str.12, ptr %call16.i.i, align 8, !dbg !414, !tbaa !415
  %5 = load ptr, ptr %add.ptr.i.i, align 16, !dbg !418, !tbaa !419
  %magick22.i.i = getelementptr inbounds %struct._CoderInfo, ptr %call16.i.i, i64 0, i32 1, !dbg !421
  store ptr %5, ptr %magick22.i.i, align 8, !dbg !422, !tbaa !423
  %name23.i.i = getelementptr inbounds %struct._CoderMapInfo, ptr @CoderMap, i64 %i.04.i.i, i32 1, !dbg !424
  %6 = load ptr, ptr %name23.i.i, align 8, !dbg !424, !tbaa !425
  %name24.i.i = getelementptr inbounds %struct._CoderInfo, ptr %call16.i.i, i64 0, i32 2, !dbg !426
  store ptr %6, ptr %name24.i.i, align 8, !dbg !427, !tbaa !428
  %exempt.i.i = getelementptr inbounds %struct._CoderInfo, ptr %call16.i.i, i64 0, i32 3, !dbg !429
  store i32 1, ptr %exempt.i.i, align 8, !dbg !430, !tbaa !431
  %signature.i.i = getelementptr inbounds %struct._CoderInfo, ptr %call16.i.i, i64 0, i32 7, !dbg !432
  store i64 2880220587, ptr %signature.i.i, align 8, !dbg !433, !tbaa !434
  %call26.i.i = tail call ptr @ConstantString(ptr noundef %5) #11, !dbg !435
  %call27.i.i = tail call i32 @AddValueToSplayTree(ptr noundef nonnull %call.i.i, ptr noundef %call26.i.i, ptr noundef nonnull %call16.i.i) #11, !dbg !436
  %and28.i.i = and i32 %call27.i.i, %status.16.i.i, !dbg !437
  call void @llvm.dbg.value(metadata i32 %and28.i.i, metadata !365, metadata !DIExpression()) #11, !dbg !379
  %cmp29.i.i = icmp eq i32 %and28.i.i, 0, !dbg !438
  br i1 %cmp29.i.i, label %cleanup.sink.split.i.i, label %cleanup.i.i, !dbg !440

cleanup.sink.split.i.i:                           ; preds = %if.end20.i.i, %if.then18.i.i
  %name24.sink.i.i = phi ptr [ %name.i.i, %if.then18.i.i ], [ %name24.i.i, %if.end20.i.i ]
  %.sink.i.i = phi i64 [ 341, %if.then18.i.i ], [ 354, %if.end20.i.i ]
  %status.2.ph.i.i = phi i32 [ %status.16.i.i, %if.then18.i.i ], [ 0, %if.end20.i.i ]
  %7 = load ptr, ptr %name24.sink.i.i, align 8, !dbg !404, !tbaa !262
  %call32.i.i = tail call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef %.sink.i.i, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %7) #11, !dbg !404
  br label %cleanup.i.i, !dbg !441

cleanup.i.i:                                      ; preds = %cleanup.sink.split.i.i, %if.end20.i.i
  %status.2.i.i = phi i32 [ %and28.i.i, %if.end20.i.i ], [ %status.2.ph.i.i, %cleanup.sink.split.i.i ], !dbg !379
  call void @llvm.dbg.value(metadata i32 %status.2.i.i, metadata !365, metadata !DIExpression()) #11, !dbg !379
  %inc.i.i = add nuw nsw i64 %i.04.i.i, 1, !dbg !441
  call void @llvm.dbg.value(metadata i64 %inc.i.i, metadata !367, metadata !DIExpression()) #11, !dbg !379
  %exitcond.not.i.i = icmp eq i64 %inc.i.i, 144, !dbg !442
  br i1 %exitcond.not.i.i, label %AcquireCoderCache.exit.i, label %for.body.i.i, !dbg !403, !llvm.loop !443

AcquireCoderCache.exit.i:                         ; preds = %cleanup.i.i
  store ptr %call.i.i, ptr @coder_cache, align 8, !dbg !445, !tbaa !262
  br label %IsCoderTreeInstantiated.exit, !dbg !446

IsCoderTreeInstantiated.exit:                     ; preds = %if.end.i, %AcquireCoderCache.exit.i
  %8 = load ptr, ptr @coder_semaphore, align 8, !dbg !447, !tbaa !262
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #11, !dbg !448
  %.pre8.i = load ptr, ptr @coder_cache, align 8, !dbg !449, !tbaa !262
  %cmp7.not.i.not = icmp eq ptr %.pre8.i, null, !dbg !450
  br i1 %cmp7.not.i.not, label %cleanup, label %if.end, !dbg !451

if.end:                                           ; preds = %entry, %IsCoderTreeInstantiated.exit
  %9 = load ptr, ptr @coder_semaphore, align 8, !dbg !452, !tbaa !262
  tail call void @LockSemaphoreInfo(ptr noundef %9) #11, !dbg !453
  %cmp1 = icmp eq ptr %name, null, !dbg !454
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !456

lor.lhs.false:                                    ; preds = %if.end
  %call2 = tail call i32 @LocaleCompare(ptr noundef nonnull %name, ptr noundef nonnull @.str) #11, !dbg !457
  %cmp3 = icmp eq i32 %call2, 0, !dbg !458
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !459

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  %10 = load ptr, ptr @coder_cache, align 8, !dbg !460, !tbaa !262
  tail call void @ResetSplayTreeIterator(ptr noundef %10) #11, !dbg !462
  %11 = load ptr, ptr @coder_cache, align 8, !dbg !463, !tbaa !262
  %call5 = tail call ptr @GetNextValueInSplayTree(ptr noundef %11) #11, !dbg !464
  call void @llvm.dbg.value(metadata ptr %call5, metadata !327, metadata !DIExpression()), !dbg !328
  br label %cleanup.sink.split, !dbg !465

if.end6:                                          ; preds = %lor.lhs.false
  %12 = load ptr, ptr @coder_cache, align 8, !dbg !466, !tbaa !262
  %call7 = tail call ptr @GetValueFromSplayTree(ptr noundef %12, ptr noundef nonnull %name) #11, !dbg !467
  call void @llvm.dbg.value(metadata ptr %call7, metadata !327, metadata !DIExpression()), !dbg !328
  br label %cleanup.sink.split, !dbg !468

cleanup.sink.split:                               ; preds = %if.then4, %if.end6
  %retval.0.ph = phi ptr [ %call7, %if.end6 ], [ %call5, %if.then4 ]
  %13 = load ptr, ptr @coder_semaphore, align 8, !dbg !328, !tbaa !262
  tail call void @UnlockSemaphoreInfo(ptr noundef %13) #11, !dbg !328
  br label %cleanup, !dbg !469

cleanup:                                          ; preds = %cleanup.sink.split, %IsCoderTreeInstantiated.exit
  %retval.0 = phi ptr [ null, %IsCoderTreeInstantiated.exit ], [ %retval.0.ph, %cleanup.sink.split ], !dbg !328
  ret ptr %retval.0, !dbg !469
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !470 i32 @LocaleCompare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !473 void @ResetSplayTreeIterator(ptr noundef) local_unnamed_addr #1

declare !dbg !476 ptr @GetNextValueInSplayTree(ptr noundef) local_unnamed_addr #1

declare !dbg !481 ptr @GetValueFromSplayTree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCoderInfoList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_coders, ptr noundef %exception) local_unnamed_addr #0 !dbg !484 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !489, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata ptr %number_coders, metadata !490, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata ptr %exception, metadata !491, metadata !DIExpression()), !dbg !495
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 517, ptr noundef nonnull @.str.3, ptr noundef %pattern) #11, !dbg !496
  store i64 0, ptr %number_coders, align 8, !dbg !497, !tbaa !498
  %call1 = tail call ptr @GetCoderInfo(ptr noundef nonnull @.str, ptr noundef %exception), !dbg !499
  call void @llvm.dbg.value(metadata ptr %call1, metadata !493, metadata !DIExpression()), !dbg !495
  %cmp = icmp eq ptr %call1, null, !dbg !500
  br i1 %cmp, label %cleanup, label %if.end, !dbg !502

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @coder_cache, align 8, !dbg !503, !tbaa !262
  %call2 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %0) #11, !dbg !504
  %add = add i64 %call2, 1, !dbg !505
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #15, !dbg !506
  call void @llvm.dbg.value(metadata ptr %call3, metadata !492, metadata !DIExpression()), !dbg !495
  %cmp4 = icmp eq ptr %call3, null, !dbg !507
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !509

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @coder_semaphore, align 8, !dbg !510, !tbaa !262
  tail call void @LockSemaphoreInfo(ptr noundef %1) #11, !dbg !511
  %2 = load ptr, ptr @coder_cache, align 8, !dbg !512, !tbaa !262
  tail call void @ResetSplayTreeIterator(ptr noundef %2) #11, !dbg !513
  %3 = load ptr, ptr @coder_cache, align 8, !dbg !514, !tbaa !262
  %call7 = tail call ptr @GetNextValueInSplayTree(ptr noundef %3) #11, !dbg !515
  call void @llvm.dbg.value(metadata ptr %call7, metadata !493, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata i64 0, metadata !494, metadata !DIExpression()), !dbg !495
  %cmp8.not31 = icmp eq ptr %call7, null, !dbg !516
  br i1 %cmp8.not31, label %for.end, label %for.body, !dbg !519

for.body:                                         ; preds = %if.end6, %if.end13
  %i.033 = phi i64 [ %i.1, %if.end13 ], [ 0, %if.end6 ]
  %p.032 = phi ptr [ %call14, %if.end13 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.033, metadata !494, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.value(metadata ptr %p.032, metadata !493, metadata !DIExpression()), !dbg !495
  %stealth = getelementptr inbounds %struct._CoderInfo, ptr %p.032, i64 0, i32 4, !dbg !520
  %4 = load i32, ptr %stealth, align 4, !dbg !520, !tbaa !523
  %cmp9 = icmp eq i32 %4, 0, !dbg !524
  br i1 %cmp9, label %land.lhs.true, label %if.end13, !dbg !525

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._CoderInfo, ptr %p.032, i64 0, i32 2, !dbg !526
  %5 = load ptr, ptr %name, align 8, !dbg !526, !tbaa !428
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #11, !dbg !527
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !528
  br i1 %cmp11.not, label %if.end13, label %if.then12, !dbg !529

if.then12:                                        ; preds = %land.lhs.true
  %inc = add nsw i64 %i.033, 1, !dbg !530
  call void @llvm.dbg.value(metadata i64 %inc, metadata !494, metadata !DIExpression()), !dbg !495
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.033, !dbg !531
  store ptr %p.032, ptr %arrayidx, align 8, !dbg !532, !tbaa !262
  br label %if.end13, !dbg !531

if.end13:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.033, %land.lhs.true ], [ %i.033, %for.body ], !dbg !533
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !494, metadata !DIExpression()), !dbg !495
  %6 = load ptr, ptr @coder_cache, align 8, !dbg !534, !tbaa !262
  %call14 = tail call ptr @GetNextValueInSplayTree(ptr noundef %6) #11, !dbg !535
  call void @llvm.dbg.value(metadata ptr %call14, metadata !493, metadata !DIExpression()), !dbg !495
  %cmp8.not = icmp eq ptr %call14, null, !dbg !516
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !519, !llvm.loop !536

for.end:                                          ; preds = %if.end13, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end13 ], !dbg !533
  %7 = load ptr, ptr @coder_semaphore, align 8, !dbg !538, !tbaa !262
  tail call void @UnlockSemaphoreInfo(ptr noundef %7) #11, !dbg !539
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @CoderInfoCompare) #11, !dbg !540
  %arrayidx15 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !541
  store ptr null, ptr %arrayidx15, align 8, !dbg !542, !tbaa !262
  store i64 %i.0.lcssa, ptr %number_coders, align 8, !dbg !543, !tbaa !498
  br label %cleanup, !dbg !544

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !495
  ret ptr %retval.0, !dbg !545
}

declare !dbg !546 i32 @LogMagickEvent(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare !dbg !552 ptr @AcquireQuantumMemory(i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !556 i64 @GetNumberOfNodesInSplayTree(ptr noundef) local_unnamed_addr #1

declare !dbg !561 i32 @GlobExpression(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree
declare !dbg !566 void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @CoderInfoCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !574 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !576, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata ptr %y, metadata !577, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata ptr %x, metadata !578, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.value(metadata ptr %y, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load ptr, ptr %x, align 8, !dbg !581, !tbaa !262
  %1 = load ptr, ptr %0, align 8, !dbg !583, !tbaa !415
  %2 = load ptr, ptr %y, align 8, !dbg !584, !tbaa !262
  %3 = load ptr, ptr %2, align 8, !dbg !585, !tbaa !415
  %call = tail call i32 @LocaleCompare(ptr noundef %1, ptr noundef %3) #11, !dbg !586
  %cmp = icmp eq i32 %call, 0, !dbg !587
  %4 = load ptr, ptr %x, align 8, !dbg !580, !tbaa !262
  br i1 %cmp, label %if.then, label %if.end, !dbg !588

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct._CoderInfo, ptr %4, i64 0, i32 2, !dbg !589
  %5 = load ptr, ptr %y, align 8, !dbg !590, !tbaa !262
  %name2 = getelementptr inbounds %struct._CoderInfo, ptr %5, i64 0, i32 2, !dbg !591
  br label %cleanup, !dbg !592

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %y, align 8, !dbg !593, !tbaa !262
  br label %cleanup, !dbg !594

cleanup:                                          ; preds = %if.end, %if.then
  %.sink13 = phi ptr [ %6, %if.end ], [ %name2, %if.then ]
  %.sink.in = phi ptr [ %4, %if.end ], [ %name, %if.then ]
  %.sink = load ptr, ptr %.sink.in, align 8, !dbg !580, !tbaa !262
  %7 = load ptr, ptr %.sink13, align 8, !dbg !580, !tbaa !262
  %call6 = tail call i32 @LocaleCompare(ptr noundef %.sink, ptr noundef %7) #11, !dbg !580
  ret i32 %call6, !dbg !595
}

; Function Attrs: nounwind uwtable
define dso_local ptr @GetCoderList(ptr noundef %pattern, ptr nocapture noundef writeonly %number_coders, ptr noundef %exception) local_unnamed_addr #0 !dbg !596 {
entry:
  call void @llvm.dbg.value(metadata ptr %pattern, metadata !600, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata ptr %number_coders, metadata !601, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata ptr %exception, metadata !602, metadata !DIExpression()), !dbg !606
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 602, ptr noundef nonnull @.str.3, ptr noundef %pattern) #11, !dbg !607
  store i64 0, ptr %number_coders, align 8, !dbg !608, !tbaa !498
  %call1 = tail call ptr @GetCoderInfo(ptr noundef nonnull @.str, ptr noundef %exception), !dbg !609
  call void @llvm.dbg.value(metadata ptr %call1, metadata !604, metadata !DIExpression()), !dbg !606
  %cmp = icmp eq ptr %call1, null, !dbg !610
  br i1 %cmp, label %cleanup, label %if.end, !dbg !612

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @coder_cache, align 8, !dbg !613, !tbaa !262
  %call2 = tail call i64 @GetNumberOfNodesInSplayTree(ptr noundef %0) #11, !dbg !614
  %add = add i64 %call2, 1, !dbg !615
  %call3 = tail call ptr @AcquireQuantumMemory(i64 noundef %add, i64 noundef 8) #15, !dbg !616
  call void @llvm.dbg.value(metadata ptr %call3, metadata !603, metadata !DIExpression()), !dbg !606
  %cmp4 = icmp eq ptr %call3, null, !dbg !617
  br i1 %cmp4, label %cleanup, label %if.end6, !dbg !619

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr @coder_semaphore, align 8, !dbg !620, !tbaa !262
  tail call void @LockSemaphoreInfo(ptr noundef %1) #11, !dbg !621
  %2 = load ptr, ptr @coder_cache, align 8, !dbg !622, !tbaa !262
  tail call void @ResetSplayTreeIterator(ptr noundef %2) #11, !dbg !623
  %3 = load ptr, ptr @coder_cache, align 8, !dbg !624, !tbaa !262
  %call7 = tail call ptr @GetNextValueInSplayTree(ptr noundef %3) #11, !dbg !625
  call void @llvm.dbg.value(metadata ptr %call7, metadata !604, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata i64 0, metadata !605, metadata !DIExpression()), !dbg !606
  %cmp8.not33 = icmp eq ptr %call7, null, !dbg !626
  br i1 %cmp8.not33, label %for.end, label %for.body, !dbg !629

for.body:                                         ; preds = %if.end6, %if.end15
  %i.035 = phi i64 [ %i.1, %if.end15 ], [ 0, %if.end6 ]
  %p.034 = phi ptr [ %call16, %if.end15 ], [ %call7, %if.end6 ]
  call void @llvm.dbg.value(metadata i64 %i.035, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata ptr %p.034, metadata !604, metadata !DIExpression()), !dbg !606
  %stealth = getelementptr inbounds %struct._CoderInfo, ptr %p.034, i64 0, i32 4, !dbg !630
  %4 = load i32, ptr %stealth, align 4, !dbg !630, !tbaa !523
  %cmp9 = icmp eq i32 %4, 0, !dbg !633
  br i1 %cmp9, label %land.lhs.true, label %if.end15, !dbg !634

land.lhs.true:                                    ; preds = %for.body
  %name = getelementptr inbounds %struct._CoderInfo, ptr %p.034, i64 0, i32 2, !dbg !635
  %5 = load ptr, ptr %name, align 8, !dbg !635, !tbaa !428
  %call10 = tail call i32 @GlobExpression(ptr noundef %5, ptr noundef %pattern, i32 noundef 0) #11, !dbg !636
  %cmp11.not = icmp eq i32 %call10, 0, !dbg !637
  br i1 %cmp11.not, label %if.end15, label %if.then12, !dbg !638

if.then12:                                        ; preds = %land.lhs.true
  %6 = load ptr, ptr %name, align 8, !dbg !639, !tbaa !428
  %call14 = tail call ptr @ConstantString(ptr noundef %6) #11, !dbg !640
  %inc = add nsw i64 %i.035, 1, !dbg !641
  call void @llvm.dbg.value(metadata i64 %inc, metadata !605, metadata !DIExpression()), !dbg !606
  %arrayidx = getelementptr inbounds ptr, ptr %call3, i64 %i.035, !dbg !642
  store ptr %call14, ptr %arrayidx, align 8, !dbg !643, !tbaa !262
  br label %if.end15, !dbg !642

if.end15:                                         ; preds = %if.then12, %land.lhs.true, %for.body
  %i.1 = phi i64 [ %inc, %if.then12 ], [ %i.035, %land.lhs.true ], [ %i.035, %for.body ], !dbg !644
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !605, metadata !DIExpression()), !dbg !606
  %7 = load ptr, ptr @coder_cache, align 8, !dbg !645, !tbaa !262
  %call16 = tail call ptr @GetNextValueInSplayTree(ptr noundef %7) #11, !dbg !646
  call void @llvm.dbg.value(metadata ptr %call16, metadata !604, metadata !DIExpression()), !dbg !606
  %cmp8.not = icmp eq ptr %call16, null, !dbg !626
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !629, !llvm.loop !647

for.end:                                          ; preds = %if.end15, %if.end6
  %i.0.lcssa = phi i64 [ 0, %if.end6 ], [ %i.1, %if.end15 ], !dbg !644
  %8 = load ptr, ptr @coder_semaphore, align 8, !dbg !649, !tbaa !262
  tail call void @UnlockSemaphoreInfo(ptr noundef %8) #11, !dbg !650
  tail call void @qsort(ptr noundef nonnull %call3, i64 noundef %i.0.lcssa, i64 noundef 8, ptr noundef nonnull @CoderCompare) #11, !dbg !651
  %arrayidx17 = getelementptr inbounds ptr, ptr %call3, i64 %i.0.lcssa, !dbg !652
  store ptr null, ptr %arrayidx17, align 8, !dbg !653, !tbaa !262
  store i64 %i.0.lcssa, ptr %number_coders, align 8, !dbg !654, !tbaa !498
  br label %cleanup, !dbg !655

cleanup:                                          ; preds = %if.end, %entry, %for.end
  %retval.0 = phi ptr [ %call3, %for.end ], [ null, %entry ], [ null, %if.end ], !dbg !606
  ret ptr %retval.0, !dbg !656
}

declare !dbg !657 ptr @ConstantString(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @CoderCompare(ptr nocapture noundef readonly %x, ptr nocapture noundef readonly %y) #0 !dbg !660 {
entry:
  call void @llvm.dbg.value(metadata ptr %x, metadata !662, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %y, metadata !663, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %x, metadata !664, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata ptr %y, metadata !665, metadata !DIExpression()), !dbg !666
  %0 = load ptr, ptr %x, align 8, !dbg !667, !tbaa !262
  %1 = load ptr, ptr %y, align 8, !dbg !668, !tbaa !262
  %call = tail call i32 @LocaleCompare(ptr noundef %0, ptr noundef %1) #11, !dbg !669
  ret i32 %call, !dbg !670
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ListCoderInfo(ptr noundef %file, ptr noundef %exception) local_unnamed_addr #0 !dbg !671 {
entry:
  %number_coders = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %file, metadata !676, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %exception, metadata !677, metadata !DIExpression()), !dbg !683
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %number_coders) #11, !dbg !684
  %cmp = icmp eq ptr %file, null, !dbg !685
  %0 = load ptr, ptr @stdout, align 8
  %spec.select = select i1 %cmp, ptr %0, ptr %file, !dbg !687
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !676, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %number_coders, metadata !681, metadata !DIExpression(DW_OP_deref)), !dbg !683
  %call = call ptr @GetCoderInfoList(ptr noundef nonnull @.str, ptr noundef nonnull %number_coders, ptr noundef %exception), !dbg !688
  call void @llvm.dbg.value(metadata ptr %call, metadata !679, metadata !DIExpression()), !dbg !683
  %cmp1 = icmp eq ptr %call, null, !dbg !689
  br i1 %cmp1, label %cleanup, label %for.cond.preheader, !dbg !691

for.cond.preheader:                               ; preds = %entry
  %1 = load i64, ptr %number_coders, align 8, !tbaa !498
  call void @llvm.dbg.value(metadata i64 0, metadata !680, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr null, metadata !678, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i64 %1, metadata !681, metadata !DIExpression()), !dbg !683
  %cmp486 = icmp sgt i64 %1, 0, !dbg !692
  br i1 %cmp486, label %for.body, label %for.end46, !dbg !695

for.body:                                         ; preds = %for.cond.preheader, %for.inc44
  %i.088 = phi i64 [ %inc45, %for.inc44 ], [ 0, %for.cond.preheader ]
  %path.087 = phi ptr [ %path.1, %for.inc44 ], [ null, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.088, metadata !680, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata ptr %path.087, metadata !678, metadata !DIExpression()), !dbg !683
  %arrayidx = getelementptr inbounds ptr, ptr %call, i64 %i.088, !dbg !696
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !696, !tbaa !262
  %stealth = getelementptr inbounds %struct._CoderInfo, ptr %2, i64 0, i32 4, !dbg !699
  %3 = load i32, ptr %stealth, align 4, !dbg !699, !tbaa !523
  %cmp5.not = icmp eq i32 %3, 0, !dbg !700
  br i1 %cmp5.not, label %if.end7, label %for.inc44, !dbg !701

if.end7:                                          ; preds = %for.body
  %cmp8 = icmp eq ptr %path.087, null, !dbg !702
  br i1 %cmp8, label %if.then13, label %lor.lhs.false, !dbg !704

lor.lhs.false:                                    ; preds = %if.end7
  %4 = load ptr, ptr %2, align 8, !dbg !705, !tbaa !415
  %call11 = tail call i32 @LocaleCompare(ptr noundef nonnull %path.087, ptr noundef %4) #11, !dbg !706
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !707
  br i1 %cmp12.not, label %if.end24, label %lor.lhs.false.if.then13_crit_edge, !dbg !708

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %arrayidx, align 8, !dbg !709, !tbaa !262
  br label %if.then13, !dbg !708

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7
  %5 = phi ptr [ %.pre, %lor.lhs.false.if.then13_crit_edge ], [ %2, %if.end7 ], !dbg !709
  %6 = load ptr, ptr %5, align 8, !dbg !712, !tbaa !415
  %cmp16.not = icmp eq ptr %6, null, !dbg !713
  br i1 %cmp16.not, label %if.end21, label %if.then17, !dbg !714

if.then17:                                        ; preds = %if.then13
  %call20 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #11, !dbg !715
  br label %if.end21, !dbg !716

if.end21:                                         ; preds = %if.then17, %if.then13
  %call22 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.5) #11, !dbg !717
  %call23 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.6) #11, !dbg !718
  br label %if.end24, !dbg !719

if.end24:                                         ; preds = %if.end21, %lor.lhs.false
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !720, !tbaa !262
  %8 = load ptr, ptr %7, align 8, !dbg !721, !tbaa !415
  call void @llvm.dbg.value(metadata ptr %8, metadata !678, metadata !DIExpression()), !dbg !683
  %magick = getelementptr inbounds %struct._CoderInfo, ptr %7, i64 0, i32 1, !dbg !722
  %9 = load ptr, ptr %magick, align 8, !dbg !722, !tbaa !423
  %call28 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.3, ptr noundef %9) #11, !dbg !723
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !724, !tbaa !262
  %magick30 = getelementptr inbounds %struct._CoderInfo, ptr %10, i64 0, i32 1, !dbg !726
  %11 = load ptr, ptr %magick30, align 8, !dbg !726, !tbaa !423
  %call31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #16, !dbg !727
  call void @llvm.dbg.value(metadata i64 %call31, metadata !682, metadata !DIExpression()), !dbg !683
  %cmp3384 = icmp slt i64 %call31, 12, !dbg !728
  br i1 %cmp3384, label %for.body34, label %for.end, !dbg !730

for.body34:                                       ; preds = %if.end24, %for.body34
  %j.085 = phi i64 [ %inc, %for.body34 ], [ %call31, %if.end24 ]
  call void @llvm.dbg.value(metadata i64 %j.085, metadata !682, metadata !DIExpression()), !dbg !683
  %call35 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.7) #11, !dbg !731
  %inc = add i64 %j.085, 1, !dbg !732
  call void @llvm.dbg.value(metadata i64 %inc, metadata !682, metadata !DIExpression()), !dbg !683
  %exitcond.not = icmp eq i64 %inc, 12, !dbg !728
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body34, !dbg !730, !llvm.loop !733

for.end.loopexit:                                 ; preds = %for.body34
  %.pre90 = load ptr, ptr %arrayidx, align 8, !dbg !735, !tbaa !262
  br label %for.end, !dbg !735

for.end:                                          ; preds = %for.end.loopexit, %if.end24
  %12 = phi ptr [ %.pre90, %for.end.loopexit ], [ %10, %if.end24 ], !dbg !735
  %name = getelementptr inbounds %struct._CoderInfo, ptr %12, i64 0, i32 2, !dbg !737
  %13 = load ptr, ptr %name, align 8, !dbg !737, !tbaa !428
  %cmp37.not = icmp eq ptr %13, null, !dbg !738
  br i1 %cmp37.not, label %if.end42, label %if.then38, !dbg !739

if.then38:                                        ; preds = %for.end
  %call41 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.3, ptr noundef nonnull %13) #11, !dbg !740
  br label %if.end42, !dbg !741

if.end42:                                         ; preds = %if.then38, %for.end
  %call43 = tail call i64 (ptr, ptr, ...) @FormatLocaleFile(ptr noundef %spec.select, ptr noundef nonnull @.str.8) #11, !dbg !742
  br label %for.inc44, !dbg !743

for.inc44:                                        ; preds = %for.body, %if.end42
  %path.1 = phi ptr [ %path.087, %for.body ], [ %8, %if.end42 ], !dbg !683
  call void @llvm.dbg.value(metadata ptr %path.1, metadata !678, metadata !DIExpression()), !dbg !683
  %inc45 = add nuw nsw i64 %i.088, 1, !dbg !744
  call void @llvm.dbg.value(metadata i64 %inc45, metadata !680, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata i64 %1, metadata !681, metadata !DIExpression()), !dbg !683
  %exitcond89.not = icmp eq i64 %inc45, %1, !dbg !692
  br i1 %exitcond89.not, label %for.end46, label %for.body, !dbg !695, !llvm.loop !745

for.end46:                                        ; preds = %for.inc44, %for.cond.preheader
  %call47 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %call) #11, !dbg !747
  call void @llvm.dbg.value(metadata ptr %call47, metadata !679, metadata !DIExpression()), !dbg !683
  %call48 = tail call i32 @fflush(ptr noundef %spec.select), !dbg !748
  br label %cleanup, !dbg !749

cleanup:                                          ; preds = %entry, %for.end46
  %retval.0 = phi i32 [ 1, %for.end46 ], [ 0, %entry ], !dbg !683
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %number_coders) #11, !dbg !750
  ret i32 %retval.0, !dbg !750
}

declare !dbg !751 i64 @FormatLocaleFile(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !756 ptr @RelinquishMagickMemory(ptr noundef) #1

; Function Attrs: nofree nounwind
declare !dbg !759 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

declare !dbg !762 ptr @NewSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @CompareSplayTreeString(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @DestroyCoderNode(ptr noundef %coder_info) #0 !dbg !766 {
entry:
  call void @llvm.dbg.value(metadata ptr %coder_info, metadata !768, metadata !DIExpression()), !dbg !770
  call void @llvm.dbg.value(metadata ptr %coder_info, metadata !769, metadata !DIExpression()), !dbg !770
  %exempt = getelementptr inbounds %struct._CoderInfo, ptr %coder_info, i64 0, i32 3, !dbg !771
  %0 = load i32, ptr %exempt, align 8, !dbg !771, !tbaa !431
  %cmp = icmp eq i32 %0, 0, !dbg !773
  br i1 %cmp, label %if.then, label %if.end17, !dbg !774

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %coder_info, align 8, !dbg !775, !tbaa !415
  %cmp1.not = icmp eq ptr %1, null, !dbg !778
  br i1 %cmp1.not, label %if.end, label %if.then2, !dbg !779

if.then2:                                         ; preds = %if.then
  %call = tail call ptr @DestroyString(ptr noundef nonnull %1) #11, !dbg !780
  store ptr %call, ptr %coder_info, align 8, !dbg !781, !tbaa !415
  br label %if.end, !dbg !782

if.end:                                           ; preds = %if.then2, %if.then
  %name = getelementptr inbounds %struct._CoderInfo, ptr %coder_info, i64 0, i32 2, !dbg !783
  %2 = load ptr, ptr %name, align 8, !dbg !783, !tbaa !428
  %cmp5.not = icmp eq ptr %2, null, !dbg !785
  br i1 %cmp5.not, label %if.end10, label %if.then6, !dbg !786

if.then6:                                         ; preds = %if.end
  %call8 = tail call ptr @DestroyString(ptr noundef nonnull %2) #11, !dbg !787
  store ptr %call8, ptr %name, align 8, !dbg !788, !tbaa !428
  br label %if.end10, !dbg !789

if.end10:                                         ; preds = %if.then6, %if.end
  %magick = getelementptr inbounds %struct._CoderInfo, ptr %coder_info, i64 0, i32 1, !dbg !790
  %3 = load ptr, ptr %magick, align 8, !dbg !790, !tbaa !423
  %cmp11.not = icmp eq ptr %3, null, !dbg !792
  br i1 %cmp11.not, label %if.end17, label %if.then12, !dbg !793

if.then12:                                        ; preds = %if.end10
  %call14 = tail call ptr @DestroyString(ptr noundef nonnull %3) #11, !dbg !794
  store ptr %call14, ptr %magick, align 8, !dbg !795, !tbaa !423
  br label %if.end17, !dbg !796

if.end17:                                         ; preds = %if.end10, %if.then12, %entry
  %call18 = tail call ptr @RelinquishMagickMemory(ptr noundef nonnull %coder_info) #11, !dbg !797
  ret ptr %call18, !dbg !798
}

declare !dbg !799 void @GetExceptionInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !802 ptr @GetExceptionMessage(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #8

declare !dbg !806 i32 @ThrowMagickException(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare !dbg !810 ptr @DestroyString(ptr noundef) local_unnamed_addr #1

declare !dbg !813 void @CatchException(ptr noundef) local_unnamed_addr #1

declare !dbg !814 ptr @DestroyExceptionInfo(ptr noundef) local_unnamed_addr #1

declare !dbg !817 void @MagickCoreTerminus() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #9

declare !dbg !819 ptr @GetConfigureOptions(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !823 ptr @GetNextValueInLinkedList(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @LoadCoderCache(ptr noundef %coder_cache, ptr noundef %xml, ptr noundef %filename, i64 noundef %depth, ptr noundef %exception) unnamed_addr #0 !dbg !826 {
entry:
  %keyword = alloca [4096 x i8], align 16
  %q = alloca ptr, align 8
  %path = alloca [4096 x i8], align 16
  %exception116 = alloca %struct._ExceptionInfo, align 8
  call void @llvm.dbg.value(metadata ptr %coder_cache, metadata !830, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr %xml, metadata !831, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr %filename, metadata !832, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i64 %depth, metadata !833, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr %exception, metadata !834, metadata !DIExpression()), !dbg !858
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %keyword) #11, !dbg !859
  call void @llvm.dbg.declare(metadata ptr %keyword, metadata !835, metadata !DIExpression()), !dbg !860
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %q) #11, !dbg !861
  %call = tail call i32 (i32, ptr, ptr, i64, ptr, ...) @LogMagickEvent(i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 795, ptr noundef nonnull @.str.13, ptr noundef %filename) #11, !dbg !862
  %cmp = icmp eq ptr %xml, null, !dbg !863
  br i1 %cmp, label %cleanup, label %if.end, !dbg !865

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !839, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr null, metadata !838, metadata !DIExpression()), !dbg !858
  %call1 = tail call ptr @AcquireString(ptr noundef nonnull %xml) #11, !dbg !866
  call void @llvm.dbg.value(metadata ptr %call1, metadata !836, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr %xml, metadata !837, metadata !DIExpression()), !dbg !858
  store ptr %xml, ptr %q, align 8, !dbg !867, !tbaa !262
  call void @llvm.dbg.value(metadata i32 1, metadata !839, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr null, metadata !838, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr %xml, metadata !837, metadata !DIExpression()), !dbg !858
  %0 = load i8, ptr %xml, align 1, !dbg !868, !tbaa !869
  %cmp2.not236 = icmp eq i8 %0, 0, !dbg !870
  br i1 %cmp2.not236, label %for.end, label %for.body.lr.ph, !dbg !871

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 1
  %cmp69 = icmp ugt i64 %depth, 200
  %add = add nuw nsw i64 %depth, 1
  br label %for.body, !dbg !871

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %1 = phi ptr [ %xml, %for.body.lr.ph ], [ %7, %for.cond.backedge ]
  %status.0238 = phi i32 [ 1, %for.body.lr.ph ], [ %status.0.be, %for.cond.backedge ]
  %coder_info.0237 = phi ptr [ null, %for.body.lr.ph ], [ %coder_info.0.be, %for.cond.backedge ]
  call void @llvm.dbg.value(metadata i32 %status.0238, metadata !839, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr %coder_info.0237, metadata !838, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr %q, metadata !837, metadata !DIExpression(DW_OP_deref)), !dbg !858
  call void @GetMagickToken(ptr noundef nonnull %1, ptr noundef nonnull %q, ptr noundef %call1) #11, !dbg !872
  %2 = load i8, ptr %call1, align 1, !dbg !873, !tbaa !869
  %cmp5 = icmp eq i8 %2, 0, !dbg !875
  br i1 %cmp5, label %for.end, label %if.end8, !dbg !876

if.end8:                                          ; preds = %for.body
  %call9 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !877
  %call11 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.14, i64 noundef 9) #11, !dbg !878
  %cmp12 = icmp eq i32 %call11, 0, !dbg !880
  br i1 %cmp12, label %while.cond.preheader, label %if.end21, !dbg !881

while.cond.preheader:                             ; preds = %if.end8
  %3 = load ptr, ptr %q, align 8, !dbg !882, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %3, metadata !837, metadata !DIExpression()), !dbg !858
  %call15234 = call i32 @LocaleNCompare(ptr noundef %3, ptr noundef nonnull @.str.15, i64 noundef 2) #11, !dbg !884
  %cmp16.not235 = icmp eq i32 %call15234, 0, !dbg !885
  br i1 %cmp16.not235, label %for.cond.backedge, label %land.rhs, !dbg !886

land.rhs:                                         ; preds = %while.cond.preheader, %while.body
  %4 = load ptr, ptr %q, align 8, !dbg !887, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %4, metadata !837, metadata !DIExpression()), !dbg !858
  %5 = load i8, ptr %4, align 1, !dbg !888, !tbaa !869
  %cmp19.not = icmp eq i8 %5, 0, !dbg !889
  br i1 %cmp19.not, label %for.cond.backedge, label %while.body, !dbg !890

while.body:                                       ; preds = %land.rhs
  call void @llvm.dbg.value(metadata ptr %q, metadata !837, metadata !DIExpression(DW_OP_deref)), !dbg !858
  call void @GetMagickToken(ptr noundef nonnull %4, ptr noundef nonnull %q, ptr noundef %call1) #11, !dbg !891
  %6 = load ptr, ptr %q, align 8, !dbg !882, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %6, metadata !837, metadata !DIExpression()), !dbg !858
  %call15 = call i32 @LocaleNCompare(ptr noundef %6, ptr noundef nonnull @.str.15, i64 noundef 2) #11, !dbg !884
  %cmp16.not = icmp eq i32 %call15, 0, !dbg !885
  br i1 %cmp16.not, label %for.cond.backedge, label %land.rhs, !dbg !886, !llvm.loop !892

for.cond.backedge:                                ; preds = %while.body36, %land.rhs31, %while.body, %land.rhs, %land.rhs51.us, %land.lhs.true.us, %while.cond44.us, %while.cond44, %land.lhs.true, %land.rhs51, %if.then156, %if.then165, %if.then173, %sw.bb, %sw.bb160, %sw.bb168, %if.end149, %if.then135, %if.then140, %while.cond27.preheader, %while.cond.preheader, %if.end122, %if.end126, %if.end144
  %coder_info.0.be = phi ptr [ %call112, %if.end122 ], [ null, %if.end126 ], [ %coder_info.0237, %if.end144 ], [ %coder_info.0237, %while.cond.preheader ], [ %coder_info.0237, %while.cond27.preheader ], [ null, %if.then140 ], [ null, %if.then135 ], [ %coder_info.0237, %if.end149 ], [ %coder_info.0237, %sw.bb168 ], [ %coder_info.0237, %sw.bb160 ], [ %coder_info.0237, %sw.bb ], [ %coder_info.0237, %if.then173 ], [ %coder_info.0237, %if.then165 ], [ %coder_info.0237, %if.then156 ], [ %coder_info.0237, %land.rhs51 ], [ %coder_info.0237, %land.lhs.true ], [ %coder_info.0237, %while.cond44 ], [ %coder_info.0237, %while.cond44.us ], [ %coder_info.0237, %land.lhs.true.us ], [ %coder_info.0237, %land.rhs51.us ], [ %coder_info.0237, %land.rhs ], [ %coder_info.0237, %while.body ], [ %coder_info.0237, %land.rhs31 ], [ %coder_info.0237, %while.body36 ]
  %status.0.be = phi i32 [ %status.0238, %if.end122 ], [ %status.0238, %if.end126 ], [ %status.0238, %if.end144 ], [ %status.0238, %while.cond.preheader ], [ %status.0238, %while.cond27.preheader ], [ 0, %if.then140 ], [ %call137, %if.then135 ], [ %status.0238, %if.end149 ], [ %status.0238, %sw.bb168 ], [ %status.0238, %sw.bb160 ], [ %status.0238, %sw.bb ], [ %status.0238, %if.then173 ], [ %status.0238, %if.then165 ], [ %status.0238, %if.then156 ], [ %status.1.ph.ph231, %land.rhs51 ], [ %status.1.ph.ph231, %land.lhs.true ], [ %status.1.ph.ph231, %while.cond44 ], [ %status.0238, %while.cond44.us ], [ %status.0238, %land.lhs.true.us ], [ %status.0238, %land.rhs51.us ], [ %status.0238, %land.rhs ], [ %status.0238, %while.body ], [ %status.0238, %land.rhs31 ], [ %status.0238, %while.body36 ]
  call void @llvm.dbg.value(metadata i32 %status.0.be, metadata !839, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata ptr %coder_info.0.be, metadata !838, metadata !DIExpression()), !dbg !858
  %7 = load ptr, ptr %q, align 8, !dbg !894, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %7, metadata !837, metadata !DIExpression()), !dbg !858
  %8 = load i8, ptr %7, align 1, !dbg !868, !tbaa !869
  %cmp2.not = icmp eq i8 %8, 0, !dbg !870
  br i1 %cmp2.not, label %for.end, label %for.body, !dbg !871, !llvm.loop !895

if.end21:                                         ; preds = %if.end8
  %call23 = call i32 @LocaleNCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.16, i64 noundef 4) #11, !dbg !897
  %cmp24 = icmp eq i32 %call23, 0, !dbg !899
  br i1 %cmp24, label %while.cond27.preheader, label %if.end38, !dbg !900

while.cond27.preheader:                           ; preds = %if.end21
  %9 = load ptr, ptr %q, align 8, !dbg !901, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %9, metadata !837, metadata !DIExpression()), !dbg !858
  %call28232 = call i32 @LocaleNCompare(ptr noundef %9, ptr noundef nonnull @.str.17, i64 noundef 2) #11, !dbg !903
  %cmp29.not233 = icmp eq i32 %call28232, 0, !dbg !904
  br i1 %cmp29.not233, label %for.cond.backedge, label %land.rhs31, !dbg !905

land.rhs31:                                       ; preds = %while.cond27.preheader, %while.body36
  %10 = load ptr, ptr %q, align 8, !dbg !906, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %10, metadata !837, metadata !DIExpression()), !dbg !858
  %11 = load i8, ptr %10, align 1, !dbg !907, !tbaa !869
  %cmp33.not = icmp eq i8 %11, 0, !dbg !908
  br i1 %cmp33.not, label %for.cond.backedge, label %while.body36, !dbg !909

while.body36:                                     ; preds = %land.rhs31
  call void @llvm.dbg.value(metadata ptr %q, metadata !837, metadata !DIExpression(DW_OP_deref)), !dbg !858
  call void @GetMagickToken(ptr noundef nonnull %10, ptr noundef nonnull %q, ptr noundef %call1) #11, !dbg !910
  %12 = load ptr, ptr %q, align 8, !dbg !901, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %12, metadata !837, metadata !DIExpression()), !dbg !858
  %call28 = call i32 @LocaleNCompare(ptr noundef %12, ptr noundef nonnull @.str.17, i64 noundef 2) #11, !dbg !903
  %cmp29.not = icmp eq i32 %call28, 0, !dbg !904
  br i1 %cmp29.not, label %for.cond.backedge, label %land.rhs31, !dbg !905, !llvm.loop !911

if.end38:                                         ; preds = %if.end21
  %call40 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.18) #11, !dbg !913
  %cmp41 = icmp eq i32 %call40, 0, !dbg !914
  br i1 %cmp41, label %while.cond44thread-pre-split.preheader, label %if.end106, !dbg !915

while.cond44thread-pre-split.preheader:           ; preds = %if.end38
  br i1 %cmp69, label %while.cond44thread-pre-split.us, label %while.cond44thread-pre-split.outer.split, !dbg !916

while.cond44thread-pre-split.us:                  ; preds = %while.cond44thread-pre-split.preheader, %while.cond44thread-pre-split.us.backedge
  %.pr.us = load i8, ptr %call1, align 1, !dbg !917, !tbaa !869
  br label %while.cond44.us, !dbg !917

while.cond44.us:                                  ; preds = %while.body56.us, %while.cond44thread-pre-split.us
  %13 = phi i8 [ %.pr.us, %while.cond44thread-pre-split.us ], [ %18, %while.body56.us ], !dbg !917
  call void @llvm.dbg.value(metadata i32 %status.0238, metadata !839, metadata !DIExpression()), !dbg !858
  %cmp46.not.us = icmp eq i8 %13, 47, !dbg !918
  br i1 %cmp46.not.us, label %for.cond.backedge, label %land.lhs.true.us, !dbg !919

land.lhs.true.us:                                 ; preds = %while.cond44.us
  %14 = load i8, ptr %add.ptr, align 1, !dbg !920, !tbaa !869
  %cmp49.not.us = icmp eq i8 %14, 62, !dbg !921
  br i1 %cmp49.not.us, label %for.cond.backedge, label %land.rhs51.us, !dbg !922

land.rhs51.us:                                    ; preds = %land.lhs.true.us
  %15 = load ptr, ptr %q, align 8, !dbg !923, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %15, metadata !837, metadata !DIExpression()), !dbg !858
  %16 = load i8, ptr %15, align 1, !dbg !924, !tbaa !869
  %cmp53.not.us = icmp eq i8 %16, 0, !dbg !925
  br i1 %cmp53.not.us, label %for.cond.backedge, label %while.body56.us, !dbg !926

while.body56.us:                                  ; preds = %land.rhs51.us
  %call58.us = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !927
  %17 = load ptr, ptr %q, align 8, !dbg !928, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %q, metadata !837, metadata !DIExpression(DW_OP_deref)), !dbg !858
  call void @GetMagickToken(ptr noundef %17, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !929
  %18 = load i8, ptr %call1, align 1, !dbg !930, !tbaa !869
  %cmp60.not.us = icmp eq i8 %18, 61, !dbg !932
  br i1 %cmp60.not.us, label %if.end63.us, label %while.cond44.us, !dbg !933, !llvm.loop !934

if.end63.us:                                      ; preds = %while.body56.us
  %19 = load ptr, ptr %q, align 8, !dbg !936, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %q, metadata !837, metadata !DIExpression(DW_OP_deref)), !dbg !858
  call void @GetMagickToken(ptr noundef %19, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !937
  %call65.us = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.19) #11, !dbg !938
  %cmp66.us = icmp eq i32 %call65.us, 0, !dbg !939
  br i1 %cmp66.us, label %if.then71.us, label %while.cond44thread-pre-split.us.backedge, !dbg !940

if.then71.us:                                     ; preds = %if.end63.us
  %call72.us = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 844, i32 noundef 495, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11, ptr noundef nonnull %call1) #11, !dbg !941
  br label %while.cond44thread-pre-split.us.backedge, !dbg !942

while.cond44thread-pre-split.us.backedge:         ; preds = %if.then71.us, %if.end63.us
  br label %while.cond44thread-pre-split.us, !dbg !917, !llvm.loop !934

while.cond44thread-pre-split.outer.split:         ; preds = %while.cond44thread-pre-split.preheader, %if.end102
  %status.1.ph.ph231 = phi i32 [ %status.2, %if.end102 ], [ %status.0238, %while.cond44thread-pre-split.preheader ]
  br label %while.cond44thread-pre-split, !dbg !926

while.cond44thread-pre-split:                     ; preds = %if.end63, %while.cond44thread-pre-split.outer.split
  %.pr = load i8, ptr %call1, align 1, !dbg !917, !tbaa !869
  br label %while.cond44, !dbg !917

while.cond44:                                     ; preds = %while.cond44thread-pre-split, %while.body56
  %20 = phi i8 [ %.pr, %while.cond44thread-pre-split ], [ %25, %while.body56 ], !dbg !917
  call void @llvm.dbg.value(metadata i32 %status.1.ph.ph231, metadata !839, metadata !DIExpression()), !dbg !858
  %cmp46.not = icmp eq i8 %20, 47, !dbg !918
  br i1 %cmp46.not, label %for.cond.backedge, label %land.lhs.true, !dbg !919

land.lhs.true:                                    ; preds = %while.cond44
  %21 = load i8, ptr %add.ptr, align 1, !dbg !920, !tbaa !869
  %cmp49.not = icmp eq i8 %21, 62, !dbg !921
  br i1 %cmp49.not, label %for.cond.backedge, label %land.rhs51, !dbg !922

land.rhs51:                                       ; preds = %land.lhs.true
  %22 = load ptr, ptr %q, align 8, !dbg !923, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %22, metadata !837, metadata !DIExpression()), !dbg !858
  %23 = load i8, ptr %22, align 1, !dbg !924, !tbaa !869
  %cmp53.not = icmp eq i8 %23, 0, !dbg !925
  br i1 %cmp53.not, label %for.cond.backedge, label %while.body56, !dbg !926

while.body56:                                     ; preds = %land.rhs51
  %call58 = call i64 @CopyMagickString(ptr noundef nonnull %keyword, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !927
  %24 = load ptr, ptr %q, align 8, !dbg !928, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %q, metadata !837, metadata !DIExpression(DW_OP_deref)), !dbg !858
  call void @GetMagickToken(ptr noundef %24, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !929
  %25 = load i8, ptr %call1, align 1, !dbg !930, !tbaa !869
  %cmp60.not = icmp eq i8 %25, 61, !dbg !932
  br i1 %cmp60.not, label %if.end63, label %while.cond44, !dbg !933, !llvm.loop !934

if.end63:                                         ; preds = %while.body56
  %26 = load ptr, ptr %q, align 8, !dbg !936, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %q, metadata !837, metadata !DIExpression(DW_OP_deref)), !dbg !858
  call void @GetMagickToken(ptr noundef %26, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !937
  %call65 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.19) #11, !dbg !938
  %cmp66 = icmp eq i32 %call65, 0, !dbg !939
  br i1 %cmp66, label %if.then68, label %while.cond44thread-pre-split, !dbg !940, !llvm.loop !934

if.then68:                                        ; preds = %if.end63
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %path) #11, !dbg !943
  call void @llvm.dbg.declare(metadata ptr %path, metadata !840, metadata !DIExpression()), !dbg !944
  call void @GetPathComponent(ptr noundef %filename, i32 noundef 3, ptr noundef nonnull %path) #11, !dbg !945
  %27 = load i8, ptr %path, align 16, !dbg !946, !tbaa !869
  %cmp77.not = icmp eq i8 %27, 0, !dbg !948
  br i1 %cmp77.not, label %if.end82, label %if.then79, !dbg !949

if.then79:                                        ; preds = %if.then68
  %call81 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull @.str.21, i64 noundef 4096) #11, !dbg !950
  br label %if.end82, !dbg !951

if.end82:                                         ; preds = %if.then79, %if.then68
  %28 = load i8, ptr %call1, align 1, !dbg !952, !tbaa !869
  %cmp85 = icmp eq i8 %28, 47, !dbg !954
  br i1 %cmp85, label %if.then87, label %if.else90, !dbg !955

if.then87:                                        ; preds = %if.end82
  %call89 = call i64 @CopyMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !956
  br label %if.end93, !dbg !957

if.else90:                                        ; preds = %if.end82
  %call92 = call i64 @ConcatenateMagickString(ptr noundef nonnull %path, ptr noundef nonnull %call1, i64 noundef 4096) #11, !dbg !958
  br label %if.end93

if.end93:                                         ; preds = %if.else90, %if.then87
  %call95 = call ptr @FileToXML(ptr noundef nonnull %path, i64 noundef -1) #11, !dbg !959
  call void @llvm.dbg.value(metadata ptr %call95, metadata !851, metadata !DIExpression()), !dbg !960
  %cmp96.not = icmp eq ptr %call95, null, !dbg !961
  br i1 %cmp96.not, label %if.end102, label %if.then98, !dbg !963

if.then98:                                        ; preds = %if.end93
  %call100 = call fastcc i32 @LoadCoderCache(ptr noundef %coder_cache, ptr noundef nonnull %call95, ptr noundef nonnull %path, i64 noundef %add, ptr noundef %exception), !dbg !964
  %and = and i32 %call100, %status.1.ph.ph231, !dbg !966
  call void @llvm.dbg.value(metadata i32 %and, metadata !839, metadata !DIExpression()), !dbg !858
  %call101 = call ptr @RelinquishMagickMemory(ptr noundef nonnull %call95) #11, !dbg !967
  call void @llvm.dbg.value(metadata ptr %call101, metadata !851, metadata !DIExpression()), !dbg !960
  br label %if.end102, !dbg !968

if.end102:                                        ; preds = %if.then98, %if.end93
  %status.2 = phi i32 [ %and, %if.then98 ], [ %status.1.ph.ph231, %if.end93 ], !dbg !858
  call void @llvm.dbg.value(metadata i32 %status.2, metadata !839, metadata !DIExpression()), !dbg !858
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %path) #11, !dbg !969
  br label %while.cond44thread-pre-split.outer.split, !dbg !916, !llvm.loop !934

if.end106:                                        ; preds = %if.end38
  %call108 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.22) #11, !dbg !970
  %cmp109 = icmp eq i32 %call108, 0, !dbg !971
  br i1 %cmp109, label %if.then111, label %if.end126, !dbg !972

if.then111:                                       ; preds = %if.end106
  %call112 = call ptr @AcquireMagickMemory(i64 noundef 56) #14, !dbg !973
  call void @llvm.dbg.value(metadata ptr %call112, metadata !838, metadata !DIExpression()), !dbg !858
  %cmp113 = icmp eq ptr %call112, null, !dbg !974
  br i1 %cmp113, label %if.then115, label %if.end122, !dbg !975

if.then115:                                       ; preds = %if.then111
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %exception116) #11, !dbg !976
  call void @llvm.dbg.declare(metadata ptr %exception116, metadata !857, metadata !DIExpression()), !dbg !976
  call void @GetExceptionInfo(ptr noundef nonnull %exception116) #11, !dbg !976
  %call117 = tail call ptr @__errno_location() #12, !dbg !976
  %29 = load i32, ptr %call117, align 4, !dbg !976, !tbaa !385
  %call118 = call ptr @GetExceptionMessage(i32 noundef %29) #11, !dbg !976
  call void @llvm.dbg.value(metadata ptr %call118, metadata !852, metadata !DIExpression()), !dbg !977
  %call119 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef nonnull %exception116, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 879, i32 noundef 700, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %call118) #11, !dbg !976
  %call120 = call ptr @DestroyString(ptr noundef %call118) #11, !dbg !976
  call void @llvm.dbg.value(metadata ptr %call120, metadata !852, metadata !DIExpression()), !dbg !977
  call void @CatchException(ptr noundef nonnull %exception116) #11, !dbg !976
  %call121 = call ptr @DestroyExceptionInfo(ptr noundef nonnull %exception116) #11, !dbg !976
  call void @MagickCoreTerminus() #11, !dbg !976
  call void @_exit(i32 noundef 1) #13, !dbg !976
  unreachable, !dbg !976

if.end122:                                        ; preds = %if.then111
  %call123 = call ptr @ResetMagickMemory(ptr noundef nonnull %call112, i32 noundef 0, i64 noundef 56) #11, !dbg !978
  %call124 = call ptr @ConstantString(ptr noundef %filename) #11, !dbg !979
  store ptr %call124, ptr %call112, align 8, !dbg !980, !tbaa !415
  %exempt = getelementptr inbounds %struct._CoderInfo, ptr %call112, i64 0, i32 3, !dbg !981
  store i32 0, ptr %exempt, align 8, !dbg !982, !tbaa !431
  %signature = getelementptr inbounds %struct._CoderInfo, ptr %call112, i64 0, i32 7, !dbg !983
  store i64 2880220587, ptr %signature, align 8, !dbg !984, !tbaa !434
  br label %for.cond.backedge, !dbg !985

if.end126:                                        ; preds = %if.end106
  %cmp127 = icmp eq ptr %coder_info.0237, null, !dbg !986
  br i1 %cmp127, label %for.cond.backedge, label %if.end130, !dbg !988

if.end130:                                        ; preds = %if.end126
  %call132 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.23) #11, !dbg !989
  %cmp133 = icmp eq i32 %call132, 0, !dbg !991
  br i1 %cmp133, label %if.then135, label %if.end144, !dbg !992

if.then135:                                       ; preds = %if.end130
  %magick = getelementptr inbounds %struct._CoderInfo, ptr %coder_info.0237, i64 0, i32 1, !dbg !993
  %30 = load ptr, ptr %magick, align 8, !dbg !993, !tbaa !423
  %call136 = call ptr @ConstantString(ptr noundef %30) #11, !dbg !995
  %call137 = call i32 @AddValueToSplayTree(ptr noundef %coder_cache, ptr noundef %call136, ptr noundef nonnull %coder_info.0237) #11, !dbg !996
  call void @llvm.dbg.value(metadata i32 %call137, metadata !839, metadata !DIExpression()), !dbg !858
  %cmp138 = icmp eq i32 %call137, 0, !dbg !997
  br i1 %cmp138, label %if.then140, label %for.cond.backedge, !dbg !999

if.then140:                                       ; preds = %if.then135
  %31 = load ptr, ptr %magick, align 8, !dbg !1000, !tbaa !423
  %call142 = call i32 (ptr, ptr, ptr, i64, i32, ptr, ptr, ...) @ThrowMagickException(ptr noundef %exception, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i64 noundef 893, i32 noundef 400, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %31) #11, !dbg !1001
  br label %for.cond.backedge, !dbg !1002

if.end144:                                        ; preds = %if.end130
  %32 = load ptr, ptr %q, align 8, !dbg !1003, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %32, metadata !837, metadata !DIExpression()), !dbg !858
  call void @GetMagickToken(ptr noundef %32, ptr noundef null, ptr noundef nonnull %call1) #11, !dbg !1004
  %33 = load i8, ptr %call1, align 1, !dbg !1005, !tbaa !869
  %cmp146.not = icmp eq i8 %33, 61, !dbg !1007
  br i1 %cmp146.not, label %if.end149, label %for.cond.backedge, !dbg !1008

if.end149:                                        ; preds = %if.end144
  %34 = load ptr, ptr %q, align 8, !dbg !1009, !tbaa !262
  call void @llvm.dbg.value(metadata ptr %q, metadata !837, metadata !DIExpression(DW_OP_deref)), !dbg !858
  call void @GetMagickToken(ptr noundef %34, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !1010
  %35 = load ptr, ptr %q, align 8, !dbg !1011, !tbaa !262
  call void @GetMagickToken(ptr noundef %35, ptr noundef nonnull %q, ptr noundef nonnull %call1) #11, !dbg !1012
  %36 = load i8, ptr %keyword, align 16, !dbg !1013, !tbaa !869
  %conv151 = sext i8 %36 to i32, !dbg !1013
  switch i32 %conv151, label %for.cond.backedge [
    i32 77, label %sw.bb
    i32 109, label %sw.bb
    i32 78, label %sw.bb160
    i32 110, label %sw.bb160
    i32 83, label %sw.bb168
    i32 115, label %sw.bb168
  ], !dbg !1014

sw.bb:                                            ; preds = %if.end149, %if.end149
  %call153 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.24) #11, !dbg !1015
  %cmp154 = icmp eq i32 %call153, 0, !dbg !1019
  br i1 %cmp154, label %if.then156, label %for.cond.backedge, !dbg !1020

if.then156:                                       ; preds = %sw.bb
  %call157 = call ptr @ConstantString(ptr noundef nonnull %call1) #11, !dbg !1021
  %magick158 = getelementptr inbounds %struct._CoderInfo, ptr %coder_info.0237, i64 0, i32 1, !dbg !1023
  store ptr %call157, ptr %magick158, align 8, !dbg !1024, !tbaa !423
  br label %for.cond.backedge, !dbg !1025

sw.bb160:                                         ; preds = %if.end149, %if.end149
  %call162 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.25) #11, !dbg !1026
  %cmp163 = icmp eq i32 %call162, 0, !dbg !1029
  br i1 %cmp163, label %if.then165, label %for.cond.backedge, !dbg !1030

if.then165:                                       ; preds = %sw.bb160
  %call166 = call ptr @ConstantString(ptr noundef nonnull %call1) #11, !dbg !1031
  %name = getelementptr inbounds %struct._CoderInfo, ptr %coder_info.0237, i64 0, i32 2, !dbg !1033
  store ptr %call166, ptr %name, align 8, !dbg !1034, !tbaa !428
  br label %for.cond.backedge, !dbg !1035

sw.bb168:                                         ; preds = %if.end149, %if.end149
  %call170 = call i32 @LocaleCompare(ptr noundef nonnull %keyword, ptr noundef nonnull @.str.26) #11, !dbg !1036
  %cmp171 = icmp eq i32 %call170, 0, !dbg !1039
  br i1 %cmp171, label %if.then173, label %for.cond.backedge, !dbg !1040

if.then173:                                       ; preds = %sw.bb168
  %call174 = call i32 @IsMagickTrue(ptr noundef nonnull %call1) #11, !dbg !1041
  %stealth = getelementptr inbounds %struct._CoderInfo, ptr %coder_info.0237, i64 0, i32 4, !dbg !1043
  store i32 %call174, ptr %stealth, align 4, !dbg !1044, !tbaa !523
  br label %for.cond.backedge, !dbg !1045

for.end:                                          ; preds = %for.cond.backedge, %for.body, %if.end
  %status.0.lcssa = phi i32 [ 1, %if.end ], [ %status.0238, %for.body ], [ %status.0.be, %for.cond.backedge ], !dbg !858
  %call176 = call ptr @RelinquishMagickMemory(ptr noundef %call1) #11, !dbg !1046
  call void @llvm.dbg.value(metadata ptr %call176, metadata !836, metadata !DIExpression()), !dbg !858
  br label %cleanup, !dbg !1047

cleanup:                                          ; preds = %entry, %for.end
  %retval.0 = phi i32 [ %status.0.lcssa, %for.end ], [ 0, %entry ], !dbg !858
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %q) #11, !dbg !1048
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %keyword) #11, !dbg !1048
  ret i32 %retval.0, !dbg !1048
}

declare !dbg !1049 ptr @GetStringInfoDatum(ptr noundef) local_unnamed_addr #1

declare !dbg !1052 ptr @GetStringInfoPath(ptr noundef) local_unnamed_addr #1

declare !dbg !1055 ptr @DestroyConfigureOptions(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare !dbg !1058 ptr @AcquireMagickMemory(i64 noundef) local_unnamed_addr #10

declare !dbg !1061 ptr @ResetMagickMemory(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1064 i32 @AddValueToSplayTree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1067 ptr @AcquireString(ptr noundef) local_unnamed_addr #1

declare !dbg !1068 void @GetMagickToken(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1071 i64 @CopyMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1074 i32 @LocaleNCompare(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1077 void @GetPathComponent(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !1081 i64 @ConcatenateMagickString(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1082 hidden ptr @FileToXML(ptr noundef, i64 noundef) local_unnamed_addr #1

declare !dbg !1086 i32 @IsMagickTrue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { allocsize(0,1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone willreturn }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "coder_semaphore", scope: !2, file: !237, line: 233, type: !122, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !121, globals: !234, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/538.imagick_r/src/magick/coder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/538.imagick_r", checksumkind: CSK_MD5, checksum: "91bd6c814c23b7fee73bb832f75d1f0c")
!4 = !{!5, !11, !84, !109}
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
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !110, line: 25, baseType: !7, size: 32, elements: !111)
!110 = !DIFile(filename: "apps/538.imagick_r/src/magick/utility.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7ccc9d0e9544cf426f040ba36e5bd04e")
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120}
!112 = !DIEnumerator(name: "UndefinedPath", value: 0)
!113 = !DIEnumerator(name: "MagickPath", value: 1)
!114 = !DIEnumerator(name: "RootPath", value: 2)
!115 = !DIEnumerator(name: "HeadPath", value: 3)
!116 = !DIEnumerator(name: "TailPath", value: 4)
!117 = !DIEnumerator(name: "BasePath", value: 5)
!118 = !DIEnumerator(name: "ExtensionPath", value: 6)
!119 = !DIEnumerator(name: "SubimagePath", value: 7)
!120 = !DIEnumerator(name: "CanonicalPath", value: 8)
!121 = !{!122, !126, !127, !131, !152, !151, !154, !149, !155, !156, !138, !157, !215, !218, !165, !219}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemaphoreInfo", file: !124, line: 26, baseType: !125)
!124 = !DIFile(filename: "apps/538.imagick_r/src/magick/semaphore.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2aa908a2bf8f89cc488437590c0b4f4e")
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "SemaphoreInfo", file: !124, line: 25, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "SplayTreeInfo", file: !129, line: 26, baseType: !130)
!129 = !DIFile(filename: "apps/538.imagick_r/src/magick/splay-tree.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9016e3627c0f26bd31d286f50189c16b")
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SplayTreeInfo", file: !129, line: 25, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "CoderInfo", file: !134, line: 42, baseType: !135)
!134 = !DIFile(filename: "apps/538.imagick_r/src/magick/coder.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b19db32cde4adab4a8107a917daf2a2c")
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CoderInfo", file: !134, line: 25, size: 448, elements: !136)
!136 = !{!137, !140, !141, !142, !144, !145, !147, !148}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !135, file: !134, line: 28, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !135, file: !134, line: 29, baseType: !138, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !134, line: 30, baseType: !138, size: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "exempt", scope: !135, file: !134, line: 33, baseType: !143, size: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickBooleanType", file: !6, line: 215, baseType: !5)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "stealth", scope: !135, file: !134, line: 34, baseType: !143, size: 32, offset: 224)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "previous", scope: !135, file: !134, line: 37, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !135, file: !134, line: 38, baseType: !146, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !135, file: !134, line: 41, baseType: !149, size: 64, offset: 384)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !150, line: 46, baseType: !151)
!150 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!151 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !160, line: 7, baseType: !161)
!160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !162, line: 49, size: 1728, elements: !163)
!162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!163 = !{!164, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !180, !182, !183, !184, !188, !190, !192, !196, !199, !201, !204, !207, !208, !209, !210, !211}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !161, file: !162, line: 51, baseType: !165, size: 32)
!165 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !161, file: !162, line: 54, baseType: !138, size: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !161, file: !162, line: 55, baseType: !138, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !161, file: !162, line: 56, baseType: !138, size: 64, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !161, file: !162, line: 57, baseType: !138, size: 64, offset: 256)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !161, file: !162, line: 58, baseType: !138, size: 64, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !161, file: !162, line: 59, baseType: !138, size: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !161, file: !162, line: 60, baseType: !138, size: 64, offset: 448)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !161, file: !162, line: 61, baseType: !138, size: 64, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !161, file: !162, line: 64, baseType: !138, size: 64, offset: 576)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !161, file: !162, line: 65, baseType: !138, size: 64, offset: 640)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !161, file: !162, line: 66, baseType: !138, size: 64, offset: 704)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !161, file: !162, line: 68, baseType: !178, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !162, line: 36, flags: DIFlagFwdDecl)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !161, file: !162, line: 70, baseType: !181, size: 64, offset: 832)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !161, file: !162, line: 72, baseType: !165, size: 32, offset: 896)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !161, file: !162, line: 73, baseType: !165, size: 32, offset: 928)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !161, file: !162, line: 74, baseType: !185, size: 64, offset: 960)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !186, line: 152, baseType: !187)
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!187 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !161, file: !162, line: 77, baseType: !189, size: 16, offset: 1024)
!189 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !161, file: !162, line: 78, baseType: !191, size: 8, offset: 1040)
!191 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !161, file: !162, line: 79, baseType: !193, size: 8, offset: 1048)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 1)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !161, file: !162, line: 81, baseType: !197, size: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !162, line: 43, baseType: null)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !161, file: !162, line: 89, baseType: !200, size: 64, offset: 1152)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !186, line: 153, baseType: !187)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !161, file: !162, line: 91, baseType: !202, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !162, line: 37, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !161, file: !162, line: 92, baseType: !205, size: 64, offset: 1280)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !162, line: 38, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !161, file: !162, line: 93, baseType: !181, size: 64, offset: 1344)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !161, file: !162, line: 94, baseType: !126, size: 64, offset: 1408)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !161, file: !162, line: 95, baseType: !149, size: 64, offset: 1472)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !161, file: !162, line: 96, baseType: !165, size: 32, offset: 1536)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !161, file: !162, line: 98, baseType: !212, size: 160, offset: 1568)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 160, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 20)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !216, line: 77, baseType: !217)
!216 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !186, line: 193, baseType: !187)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringInfo", file: !222, line: 40, baseType: !223)
!222 = !DIFile(filename: "apps/538.imagick_r/src/magick/string_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "53229bbaa0eccdd1667d55ca93211203")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_StringInfo", file: !222, line: 29, size: 32960, elements: !224)
!224 = !{!225, !229, !232, !233}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !223, file: !222, line: 32, baseType: !226, size: 32768)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 32768, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 4096)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "datum", scope: !223, file: !222, line: 35, baseType: !230, size: 64, offset: 32768)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !223, file: !222, line: 38, baseType: !149, size: 64, offset: 32832)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !223, file: !222, line: 39, baseType: !149, size: 64, offset: 32896)
!234 = !{!0, !235, !238}
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "coder_cache", scope: !2, file: !237, line: 236, type: !127, isLocal: true, isDefinition: true)
!237 = !DIFile(filename: "apps/538.imagick_r/src/magick/coder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "91bd6c814c23b7fee73bb832f75d1f0c")
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "CoderMap", scope: !2, file: !237, line: 81, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 18432, elements: !247)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "CoderMapInfo", file: !237, line: 75, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CoderMapInfo", file: !237, line: 70, size: 128, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "magick", scope: !243, file: !237, line: 73, baseType: !152, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !243, file: !237, line: 74, baseType: !152, size: 64, offset: 64)
!247 = !{!248}
!248 = !DISubrange(count: 144)
!249 = !{i32 7, !"Dwarf Version", i32 5}
!250 = !{i32 2, !"Debug Info Version", i32 3}
!251 = !{i32 1, !"wchar_size", i32 4}
!252 = !{i32 7, !"PIC Level", i32 2}
!253 = !{i32 7, !"PIE Level", i32 2}
!254 = !{i32 7, !"uwtable", i32 2}
!255 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!256 = distinct !DISubprogram(name: "CoderComponentGenesis", scope: !237, file: !237, line: 378, type: !257, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!257 = !DISubroutineType(types: !258)
!258 = !{!143}
!259 = !{}
!260 = !DILocation(line: 380, column: 7, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !237, line: 380, column: 7)
!262 = !{!263, !263, i64 0}
!263 = !{!"any pointer", !264, i64 0}
!264 = !{!"omnipotent char", !265, i64 0}
!265 = !{!"Simple C/C++ TBAA"}
!266 = !DILocation(line: 380, column: 23, scope: !261)
!267 = !DILocation(line: 380, column: 7, scope: !256)
!268 = !DILocation(line: 381, column: 21, scope: !261)
!269 = !DILocation(line: 381, column: 20, scope: !261)
!270 = !DILocation(line: 381, column: 5, scope: !261)
!271 = !DILocation(line: 382, column: 3, scope: !256)
!272 = !DISubprogram(name: "AllocateSemaphoreInfo", scope: !124, file: !124, line: 32, type: !273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!273 = !DISubroutineType(types: !274)
!274 = !{!122}
!275 = distinct !DISubprogram(name: "CoderComponentTerminus", scope: !237, file: !237, line: 403, type: !276, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!276 = !DISubroutineType(types: !277)
!277 = !{null}
!278 = !DILocation(line: 405, column: 7, scope: !279)
!279 = distinct !DILexicalBlock(scope: !275, file: !237, line: 405, column: 7)
!280 = !DILocation(line: 405, column: 23, scope: !279)
!281 = !DILocation(line: 405, column: 7, scope: !275)
!282 = !DILocation(line: 406, column: 5, scope: !279)
!283 = !DILocation(line: 407, column: 21, scope: !275)
!284 = !DILocation(line: 407, column: 3, scope: !275)
!285 = !DILocation(line: 408, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !275, file: !237, line: 408, column: 7)
!287 = !DILocation(line: 408, column: 19, scope: !286)
!288 = !DILocation(line: 408, column: 7, scope: !275)
!289 = !DILocation(line: 409, column: 17, scope: !286)
!290 = !DILocation(line: 409, column: 16, scope: !286)
!291 = !DILocation(line: 409, column: 5, scope: !286)
!292 = !DILocation(line: 410, column: 23, scope: !275)
!293 = !DILocation(line: 410, column: 3, scope: !275)
!294 = !DILocation(line: 411, column: 3, scope: !275)
!295 = !DILocation(line: 412, column: 1, scope: !275)
!296 = !DISubprogram(name: "ActivateSemaphoreInfo", scope: !124, file: !124, line: 35, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!300 = !DISubprogram(name: "LockSemaphoreInfo", scope: !124, file: !124, line: 37, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !122}
!303 = !DISubprogram(name: "DestroySplayTree", scope: !129, file: !129, line: 44, type: !304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!304 = !DISubroutineType(types: !305)
!305 = !{!127, !127}
!306 = !DISubprogram(name: "UnlockSemaphoreInfo", scope: !124, file: !124, line: 39, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!307 = !DISubprogram(name: "DestroySemaphoreInfo", scope: !124, file: !124, line: 36, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!308 = distinct !DISubprogram(name: "GetCoderInfo", scope: !237, file: !237, line: 439, type: !309, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !324)
!309 = !DISubroutineType(types: !310)
!310 = !{!131, !152, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionInfo", file: !6, line: 219, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ExceptionInfo", file: !12, line: 102, size: 448, elements: !314)
!314 = !{!315, !317, !318, !319, !320, !321, !322, !323}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "severity", scope: !313, file: !12, line: 105, baseType: !316, size: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "ExceptionType", file: !12, line: 100, baseType: !11)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "error_number", scope: !313, file: !12, line: 108, baseType: !165, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "reason", scope: !313, file: !12, line: 111, baseType: !138, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !313, file: !12, line: 112, baseType: !138, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "exceptions", scope: !313, file: !12, line: 115, baseType: !126, size: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish", scope: !313, file: !12, line: 118, baseType: !143, size: 32, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "semaphore", scope: !313, file: !12, line: 121, baseType: !122, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "signature", scope: !313, file: !12, line: 124, baseType: !149, size: 64, offset: 384)
!324 = !{!325, !326, !327}
!325 = !DILocalVariable(name: "name", arg: 1, scope: !308, file: !237, line: 439, type: !152)
!326 = !DILocalVariable(name: "exception", arg: 2, scope: !308, file: !237, line: 440, type: !311)
!327 = !DILocalVariable(name: "coder_info", scope: !308, file: !237, line: 443, type: !131)
!328 = !DILocation(line: 0, scope: !308)
!329 = !DILocalVariable(name: "exception", arg: 1, scope: !330, file: !237, line: 655, type: !311)
!330 = distinct !DISubprogram(name: "IsCoderTreeInstantiated", scope: !237, file: !237, line: 655, type: !331, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{!143, !311}
!333 = !{!329}
!334 = !DILocation(line: 0, scope: !330, inlinedAt: !335)
!335 = distinct !DILocation(line: 446, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !308, file: !237, line: 446, column: 7)
!337 = !DILocation(line: 657, column: 7, scope: !338, inlinedAt: !335)
!338 = distinct !DILexicalBlock(scope: !330, file: !237, line: 657, column: 7)
!339 = !DILocation(line: 657, column: 19, scope: !338, inlinedAt: !335)
!340 = !DILocation(line: 657, column: 7, scope: !330, inlinedAt: !335)
!341 = !DILocation(line: 659, column: 11, scope: !342, inlinedAt: !335)
!342 = distinct !DILexicalBlock(scope: !343, file: !237, line: 659, column: 11)
!343 = distinct !DILexicalBlock(scope: !338, file: !237, line: 658, column: 5)
!344 = !DILocation(line: 659, column: 27, scope: !342, inlinedAt: !335)
!345 = !DILocation(line: 659, column: 11, scope: !343, inlinedAt: !335)
!346 = !DILocation(line: 660, column: 9, scope: !342, inlinedAt: !335)
!347 = !DILocation(line: 661, column: 25, scope: !343, inlinedAt: !335)
!348 = !DILocation(line: 661, column: 7, scope: !343, inlinedAt: !335)
!349 = !DILocation(line: 662, column: 11, scope: !350, inlinedAt: !335)
!350 = distinct !DILexicalBlock(scope: !343, file: !237, line: 662, column: 11)
!351 = !DILocation(line: 662, column: 23, scope: !350, inlinedAt: !335)
!352 = !DILocation(line: 662, column: 11, scope: !343, inlinedAt: !335)
!353 = !DILocalVariable(name: "filename", arg: 1, scope: !354, file: !237, line: 291, type: !152)
!354 = distinct !DISubprogram(name: "AcquireCoderCache", scope: !237, file: !237, line: 291, type: !355, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !357)
!355 = !DISubroutineType(types: !356)
!356 = !{!127, !152, !311}
!357 = !{!353, !358, !359, !360, !365, !367, !368, !369, !372, !373, !377}
!358 = !DILocalVariable(name: "exception", arg: 2, scope: !354, file: !237, line: 292, type: !311)
!359 = !DILocalVariable(name: "option", scope: !354, file: !237, line: 295, type: !219)
!360 = !DILocalVariable(name: "options", scope: !354, file: !237, line: 298, type: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "LinkedListInfo", file: !363, line: 34, baseType: !364)
!363 = !DIFile(filename: "apps/538.imagick_r/src/magick/hashmap.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "683c2bd26601474466c188c023adadf2")
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LinkedListInfo", file: !363, line: 33, flags: DIFlagFwdDecl)
!365 = !DILocalVariable(name: "status", scope: !354, file: !237, line: 301, type: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "MagickStatusType", file: !6, line: 147, baseType: !7)
!367 = !DILocalVariable(name: "i", scope: !354, file: !237, line: 304, type: !215)
!368 = !DILocalVariable(name: "coder_cache", scope: !354, file: !237, line: 307, type: !127)
!369 = !DILocalVariable(name: "message", scope: !370, file: !237, line: 315, type: !138)
!370 = distinct !DILexicalBlock(scope: !371, file: !237, line: 315, column: 5)
!371 = distinct !DILexicalBlock(scope: !354, file: !237, line: 314, column: 7)
!372 = !DILocalVariable(name: "exception", scope: !370, file: !237, line: 315, type: !312)
!373 = !DILocalVariable(name: "coder_info", scope: !374, file: !237, line: 332, type: !155)
!374 = distinct !DILexicalBlock(scope: !375, file: !237, line: 330, column: 3)
!375 = distinct !DILexicalBlock(scope: !376, file: !237, line: 329, column: 3)
!376 = distinct !DILexicalBlock(scope: !354, file: !237, line: 329, column: 3)
!377 = !DILocalVariable(name: "p", scope: !374, file: !237, line: 335, type: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!379 = !DILocation(line: 0, scope: !354, inlinedAt: !380)
!380 = distinct !DILocation(line: 663, column: 21, scope: !350, inlinedAt: !335)
!381 = !DILocation(line: 312, column: 15, scope: !354, inlinedAt: !380)
!382 = !DILocation(line: 314, column: 19, scope: !371, inlinedAt: !380)
!383 = !DILocation(line: 314, column: 7, scope: !354, inlinedAt: !380)
!384 = !DILocation(line: 315, column: 5, scope: !370, inlinedAt: !380)
!385 = !{!386, !386, i64 0}
!386 = !{!"int", !264, i64 0}
!387 = !DILocation(line: 0, scope: !370, inlinedAt: !380)
!388 = !DILocation(line: 317, column: 11, scope: !354, inlinedAt: !380)
!389 = !DILocation(line: 318, column: 31, scope: !354, inlinedAt: !380)
!390 = !DILocation(line: 319, column: 17, scope: !354, inlinedAt: !380)
!391 = !DILocation(line: 319, column: 3, scope: !354, inlinedAt: !380)
!392 = !DILocation(line: 322, column: 7, scope: !393, inlinedAt: !380)
!393 = distinct !DILexicalBlock(scope: !354, file: !237, line: 320, column: 3)
!394 = !DILocation(line: 322, column: 34, scope: !393, inlinedAt: !380)
!395 = !DILocation(line: 321, column: 13, scope: !393, inlinedAt: !380)
!396 = !DILocation(line: 321, column: 11, scope: !393, inlinedAt: !380)
!397 = !DILocation(line: 323, column: 33, scope: !393, inlinedAt: !380)
!398 = distinct !{!398, !391, !399, !400, !401}
!399 = !DILocation(line: 324, column: 3, scope: !354, inlinedAt: !380)
!400 = !{!"llvm.loop.mustprogress"}
!401 = !{!"llvm.loop.unroll.disable"}
!402 = !DILocation(line: 325, column: 11, scope: !354, inlinedAt: !380)
!403 = !DILocation(line: 329, column: 3, scope: !376, inlinedAt: !380)
!404 = !DILocation(line: 0, scope: !374, inlinedAt: !380)
!405 = !DILocation(line: 338, column: 30, scope: !374, inlinedAt: !380)
!406 = !DILocation(line: 339, column: 20, scope: !407, inlinedAt: !380)
!407 = distinct !DILexicalBlock(scope: !374, file: !237, line: 339, column: 9)
!408 = !DILocation(line: 339, column: 9, scope: !374, inlinedAt: !380)
!409 = !DILocation(line: 342, column: 65, scope: !410, inlinedAt: !380)
!410 = distinct !DILexicalBlock(scope: !407, file: !237, line: 340, column: 7)
!411 = !DILocation(line: 343, column: 9, scope: !410, inlinedAt: !380)
!412 = !DILocation(line: 337, column: 15, scope: !374, inlinedAt: !380)
!413 = !DILocation(line: 345, column: 12, scope: !374, inlinedAt: !380)
!414 = !DILocation(line: 346, column: 21, scope: !374, inlinedAt: !380)
!415 = !{!416, !263, i64 0}
!416 = !{!"_CoderInfo", !263, i64 0, !263, i64 8, !263, i64 16, !264, i64 24, !264, i64 28, !263, i64 32, !263, i64 40, !417, i64 48}
!417 = !{!"long", !264, i64 0}
!418 = !DILocation(line: 347, column: 36, scope: !374, inlinedAt: !380)
!419 = !{!420, !263, i64 0}
!420 = !{!"_CoderMapInfo", !263, i64 0, !263, i64 8}
!421 = !DILocation(line: 347, column: 17, scope: !374, inlinedAt: !380)
!422 = !DILocation(line: 347, column: 23, scope: !374, inlinedAt: !380)
!423 = !{!416, !263, i64 8}
!424 = !DILocation(line: 348, column: 34, scope: !374, inlinedAt: !380)
!425 = !{!420, !263, i64 8}
!426 = !DILocation(line: 348, column: 17, scope: !374, inlinedAt: !380)
!427 = !DILocation(line: 348, column: 21, scope: !374, inlinedAt: !380)
!428 = !{!416, !263, i64 16}
!429 = !DILocation(line: 349, column: 17, scope: !374, inlinedAt: !380)
!430 = !DILocation(line: 349, column: 23, scope: !374, inlinedAt: !380)
!431 = !{!416, !264, i64 24}
!432 = !DILocation(line: 350, column: 17, scope: !374, inlinedAt: !380)
!433 = !DILocation(line: 350, column: 26, scope: !374, inlinedAt: !380)
!434 = !{!416, !417, i64 48}
!435 = !DILocation(line: 351, column: 45, scope: !374, inlinedAt: !380)
!436 = !DILocation(line: 351, column: 13, scope: !374, inlinedAt: !380)
!437 = !DILocation(line: 351, column: 11, scope: !374, inlinedAt: !380)
!438 = !DILocation(line: 353, column: 16, scope: !439, inlinedAt: !380)
!439 = distinct !DILexicalBlock(scope: !374, file: !237, line: 353, column: 9)
!440 = !DILocation(line: 353, column: 9, scope: !374, inlinedAt: !380)
!441 = !DILocation(line: 329, column: 66, scope: !375, inlinedAt: !380)
!442 = !DILocation(line: 329, column: 15, scope: !375, inlinedAt: !380)
!443 = distinct !{!443, !403, !444, !400, !401}
!444 = !DILocation(line: 356, column: 3, scope: !376, inlinedAt: !380)
!445 = !DILocation(line: 663, column: 20, scope: !350, inlinedAt: !335)
!446 = !DILocation(line: 663, column: 9, scope: !350, inlinedAt: !335)
!447 = !DILocation(line: 664, column: 27, scope: !343, inlinedAt: !335)
!448 = !DILocation(line: 664, column: 7, scope: !343, inlinedAt: !335)
!449 = !DILocation(line: 666, column: 10, scope: !330, inlinedAt: !335)
!450 = !DILocation(line: 666, column: 22, scope: !330, inlinedAt: !335)
!451 = !DILocation(line: 446, column: 7, scope: !308)
!452 = !DILocation(line: 448, column: 21, scope: !308)
!453 = !DILocation(line: 448, column: 3, scope: !308)
!454 = !DILocation(line: 449, column: 13, scope: !455)
!455 = distinct !DILexicalBlock(scope: !308, file: !237, line: 449, column: 7)
!456 = !DILocation(line: 449, column: 37, scope: !455)
!457 = !DILocation(line: 449, column: 41, scope: !455)
!458 = !DILocation(line: 449, column: 65, scope: !455)
!459 = !DILocation(line: 449, column: 7, scope: !308)
!460 = !DILocation(line: 451, column: 30, scope: !461)
!461 = distinct !DILexicalBlock(scope: !455, file: !237, line: 450, column: 5)
!462 = !DILocation(line: 451, column: 7, scope: !461)
!463 = !DILocation(line: 452, column: 62, scope: !461)
!464 = !DILocation(line: 452, column: 38, scope: !461)
!465 = !DILocation(line: 454, column: 7, scope: !461)
!466 = !DILocation(line: 456, column: 56, scope: !308)
!467 = !DILocation(line: 456, column: 34, scope: !308)
!468 = !DILocation(line: 458, column: 3, scope: !308)
!469 = !DILocation(line: 459, column: 1, scope: !308)
!470 = !DISubprogram(name: "LocaleCompare", scope: !222, file: !222, line: 66, type: !471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!471 = !DISubroutineType(types: !472)
!472 = !{!165, !152, !152}
!473 = !DISubprogram(name: "ResetSplayTreeIterator", scope: !129, file: !129, line: 55, type: !474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !127}
!476 = !DISubprogram(name: "GetNextValueInSplayTree", scope: !129, file: !129, line: 35, type: !477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !127}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!481 = !DISubprogram(name: "GetValueFromSplayTree", scope: !129, file: !129, line: 36, type: !482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!482 = !DISubroutineType(types: !483)
!483 = !{!479, !127, !479}
!484 = distinct !DISubprogram(name: "GetCoderInfoList", scope: !237, file: !237, line: 501, type: !485, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !488)
!485 = !DISubroutineType(types: !486)
!486 = !{!154, !152, !487, !311}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!488 = !{!489, !490, !491, !492, !493, !494}
!489 = !DILocalVariable(name: "pattern", arg: 1, scope: !484, file: !237, line: 501, type: !152)
!490 = !DILocalVariable(name: "number_coders", arg: 2, scope: !484, file: !237, line: 502, type: !487)
!491 = !DILocalVariable(name: "exception", arg: 3, scope: !484, file: !237, line: 502, type: !311)
!492 = !DILocalVariable(name: "coder_map", scope: !484, file: !237, line: 505, type: !154)
!493 = !DILocalVariable(name: "p", scope: !484, file: !237, line: 508, type: !131)
!494 = !DILocalVariable(name: "i", scope: !484, file: !237, line: 511, type: !215)
!495 = !DILocation(line: 0, scope: !484)
!496 = !DILocation(line: 517, column: 10, scope: !484)
!497 = !DILocation(line: 519, column: 17, scope: !484)
!498 = !{!417, !417, i64 0}
!499 = !DILocation(line: 520, column: 5, scope: !484)
!500 = !DILocation(line: 521, column: 9, scope: !501)
!501 = distinct !DILexicalBlock(scope: !484, file: !237, line: 521, column: 7)
!502 = !DILocation(line: 521, column: 7, scope: !484)
!503 = !DILocation(line: 524, column: 33, scope: !484)
!504 = !DILocation(line: 524, column: 5, scope: !484)
!505 = !DILocation(line: 524, column: 45, scope: !484)
!506 = !DILocation(line: 523, column: 34, scope: !484)
!507 = !DILocation(line: 525, column: 17, scope: !508)
!508 = distinct !DILexicalBlock(scope: !484, file: !237, line: 525, column: 7)
!509 = !DILocation(line: 525, column: 7, scope: !484)
!510 = !DILocation(line: 530, column: 21, scope: !484)
!511 = !DILocation(line: 530, column: 3, scope: !484)
!512 = !DILocation(line: 531, column: 26, scope: !484)
!513 = !DILocation(line: 531, column: 3, scope: !484)
!514 = !DILocation(line: 532, column: 49, scope: !484)
!515 = !DILocation(line: 532, column: 25, scope: !484)
!516 = !DILocation(line: 533, column: 15, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !237, line: 533, column: 3)
!518 = distinct !DILexicalBlock(scope: !484, file: !237, line: 533, column: 3)
!519 = !DILocation(line: 533, column: 3, scope: !518)
!520 = !DILocation(line: 535, column: 13, scope: !521)
!521 = distinct !DILexicalBlock(scope: !522, file: !237, line: 535, column: 9)
!522 = distinct !DILexicalBlock(scope: !517, file: !237, line: 534, column: 3)
!523 = !{!416, !264, i64 28}
!524 = !DILocation(line: 535, column: 21, scope: !521)
!525 = !DILocation(line: 535, column: 37, scope: !521)
!526 = !DILocation(line: 536, column: 28, scope: !521)
!527 = !DILocation(line: 536, column: 10, scope: !521)
!528 = !DILocation(line: 536, column: 54, scope: !521)
!529 = !DILocation(line: 535, column: 9, scope: !522)
!530 = !DILocation(line: 537, column: 18, scope: !521)
!531 = !DILocation(line: 537, column: 7, scope: !521)
!532 = !DILocation(line: 537, column: 21, scope: !521)
!533 = !DILocation(line: 0, scope: !518)
!534 = !DILocation(line: 538, column: 51, scope: !522)
!535 = !DILocation(line: 538, column: 27, scope: !522)
!536 = distinct !{!536, !519, !537, !400, !401}
!537 = !DILocation(line: 539, column: 3, scope: !518)
!538 = !DILocation(line: 540, column: 23, scope: !484)
!539 = !DILocation(line: 540, column: 3, scope: !484)
!540 = !DILocation(line: 541, column: 3, scope: !484)
!541 = !DILocation(line: 542, column: 3, scope: !484)
!542 = !DILocation(line: 542, column: 15, scope: !484)
!543 = !DILocation(line: 543, column: 17, scope: !484)
!544 = !DILocation(line: 544, column: 3, scope: !484)
!545 = !DILocation(line: 545, column: 1, scope: !484)
!546 = !DISubprogram(name: "LogMagickEvent", scope: !85, file: !85, line: 83, type: !547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!547 = !DISubroutineType(types: !548)
!548 = !{!143, !549, !152, !152, !551, !152, null}
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEventType", file: !85, line: 58, baseType: !84)
!551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!552 = !DISubprogram(name: "AcquireQuantumMemory", scope: !553, file: !553, line: 42, type: !554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!553 = !DIFile(filename: "apps/538.imagick_r/src/magick/memory_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3e3188004f7f1dd341e651bacd9a624e")
!554 = !DISubroutineType(types: !555)
!555 = !{!126, !551, !551}
!556 = !DISubprogram(name: "GetNumberOfNodesInSplayTree", scope: !129, file: !129, line: 49, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!557 = !DISubroutineType(types: !558)
!558 = !{!149, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!561 = !DISubprogram(name: "GlobExpression", scope: !562, file: !562, line: 36, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!562 = !DIFile(filename: "apps/538.imagick_r/src/magick/token.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f90c1544ca665b41425c6912f2cbc1e4")
!563 = !DISubroutineType(types: !564)
!564 = !{!143, !152, !152, !565}
!565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!566 = !DISubprogram(name: "qsort", scope: !567, file: !567, line: 830, type: !568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!567 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "f0db66726d35051e5af2525f5b33bd81")
!568 = !DISubroutineType(types: !569)
!569 = !{null, !126, !149, !149, !570}
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !567, line: 808, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!165, !479, !479}
!574 = distinct !DISubprogram(name: "CoderInfoCompare", scope: !237, file: !237, line: 488, type: !572, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !575)
!575 = !{!576, !577, !578, !579}
!576 = !DILocalVariable(name: "x", arg: 1, scope: !574, file: !237, line: 488, type: !479)
!577 = !DILocalVariable(name: "y", arg: 2, scope: !574, file: !237, line: 488, type: !479)
!578 = !DILocalVariable(name: "p", scope: !574, file: !237, line: 491, type: !154)
!579 = !DILocalVariable(name: "q", scope: !574, file: !237, line: 492, type: !154)
!580 = !DILocation(line: 0, scope: !574)
!581 = !DILocation(line: 496, column: 22, scope: !582)
!582 = distinct !DILexicalBlock(scope: !574, file: !237, line: 496, column: 7)
!583 = !DILocation(line: 496, column: 27, scope: !582)
!584 = !DILocation(line: 496, column: 33, scope: !582)
!585 = !DILocation(line: 496, column: 38, scope: !582)
!586 = !DILocation(line: 496, column: 7, scope: !582)
!587 = !DILocation(line: 496, column: 44, scope: !582)
!588 = !DILocation(line: 496, column: 7, scope: !574)
!589 = !DILocation(line: 497, column: 32, scope: !582)
!590 = !DILocation(line: 497, column: 38, scope: !582)
!591 = !DILocation(line: 497, column: 43, scope: !582)
!592 = !DILocation(line: 497, column: 5, scope: !582)
!593 = !DILocation(line: 498, column: 36, scope: !574)
!594 = !DILocation(line: 498, column: 3, scope: !574)
!595 = !DILocation(line: 499, column: 1, scope: !574)
!596 = distinct !DISubprogram(name: "GetCoderList", scope: !237, file: !237, line: 586, type: !597, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!597 = !DISubroutineType(types: !598)
!598 = !{!156, !152, !487, !311}
!599 = !{!600, !601, !602, !603, !604, !605}
!600 = !DILocalVariable(name: "pattern", arg: 1, scope: !596, file: !237, line: 586, type: !152)
!601 = !DILocalVariable(name: "number_coders", arg: 2, scope: !596, file: !237, line: 587, type: !487)
!602 = !DILocalVariable(name: "exception", arg: 3, scope: !596, file: !237, line: 587, type: !311)
!603 = !DILocalVariable(name: "coder_map", scope: !596, file: !237, line: 590, type: !156)
!604 = !DILocalVariable(name: "p", scope: !596, file: !237, line: 593, type: !131)
!605 = !DILocalVariable(name: "i", scope: !596, file: !237, line: 596, type: !215)
!606 = !DILocation(line: 0, scope: !596)
!607 = !DILocation(line: 602, column: 10, scope: !596)
!608 = !DILocation(line: 604, column: 17, scope: !596)
!609 = !DILocation(line: 605, column: 5, scope: !596)
!610 = !DILocation(line: 606, column: 9, scope: !611)
!611 = distinct !DILexicalBlock(scope: !596, file: !237, line: 606, column: 7)
!612 = !DILocation(line: 606, column: 7, scope: !596)
!613 = !DILocation(line: 609, column: 33, scope: !596)
!614 = !DILocation(line: 609, column: 5, scope: !596)
!615 = !DILocation(line: 609, column: 45, scope: !596)
!616 = !DILocation(line: 608, column: 23, scope: !596)
!617 = !DILocation(line: 610, column: 17, scope: !618)
!618 = distinct !DILexicalBlock(scope: !596, file: !237, line: 610, column: 7)
!619 = !DILocation(line: 610, column: 7, scope: !596)
!620 = !DILocation(line: 615, column: 21, scope: !596)
!621 = !DILocation(line: 615, column: 3, scope: !596)
!622 = !DILocation(line: 616, column: 26, scope: !596)
!623 = !DILocation(line: 616, column: 3, scope: !596)
!624 = !DILocation(line: 617, column: 49, scope: !596)
!625 = !DILocation(line: 617, column: 25, scope: !596)
!626 = !DILocation(line: 618, column: 15, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !237, line: 618, column: 3)
!628 = distinct !DILexicalBlock(scope: !596, file: !237, line: 618, column: 3)
!629 = !DILocation(line: 618, column: 3, scope: !628)
!630 = !DILocation(line: 620, column: 13, scope: !631)
!631 = distinct !DILexicalBlock(scope: !632, file: !237, line: 620, column: 9)
!632 = distinct !DILexicalBlock(scope: !627, file: !237, line: 619, column: 3)
!633 = !DILocation(line: 620, column: 21, scope: !631)
!634 = !DILocation(line: 620, column: 37, scope: !631)
!635 = !DILocation(line: 621, column: 28, scope: !631)
!636 = !DILocation(line: 621, column: 10, scope: !631)
!637 = !DILocation(line: 621, column: 54, scope: !631)
!638 = !DILocation(line: 620, column: 9, scope: !632)
!639 = !DILocation(line: 622, column: 40, scope: !631)
!640 = !DILocation(line: 622, column: 22, scope: !631)
!641 = !DILocation(line: 622, column: 18, scope: !631)
!642 = !DILocation(line: 622, column: 7, scope: !631)
!643 = !DILocation(line: 622, column: 21, scope: !631)
!644 = !DILocation(line: 0, scope: !628)
!645 = !DILocation(line: 623, column: 51, scope: !632)
!646 = !DILocation(line: 623, column: 27, scope: !632)
!647 = distinct !{!647, !629, !648, !400, !401}
!648 = !DILocation(line: 624, column: 3, scope: !628)
!649 = !DILocation(line: 625, column: 23, scope: !596)
!650 = !DILocation(line: 625, column: 3, scope: !596)
!651 = !DILocation(line: 626, column: 3, scope: !596)
!652 = !DILocation(line: 627, column: 3, scope: !596)
!653 = !DILocation(line: 627, column: 15, scope: !596)
!654 = !DILocation(line: 628, column: 17, scope: !596)
!655 = !DILocation(line: 629, column: 3, scope: !596)
!656 = !DILocation(line: 630, column: 1, scope: !596)
!657 = !DISubprogram(name: "ConstantString", scope: !222, file: !222, line: 45, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!658 = !DISubroutineType(types: !659)
!659 = !{!138, !152}
!660 = distinct !DISubprogram(name: "CoderCompare", scope: !237, file: !237, line: 575, type: !572, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !661)
!661 = !{!662, !663, !664, !665}
!662 = !DILocalVariable(name: "x", arg: 1, scope: !660, file: !237, line: 575, type: !479)
!663 = !DILocalVariable(name: "y", arg: 2, scope: !660, file: !237, line: 575, type: !479)
!664 = !DILocalVariable(name: "p", scope: !660, file: !237, line: 578, type: !218)
!665 = !DILocalVariable(name: "q", scope: !660, file: !237, line: 579, type: !218)
!666 = !DILocation(line: 0, scope: !660)
!667 = !DILocation(line: 583, column: 24, scope: !660)
!668 = !DILocation(line: 583, column: 27, scope: !660)
!669 = !DILocation(line: 583, column: 10, scope: !660)
!670 = !DILocation(line: 583, column: 3, scope: !660)
!671 = distinct !DISubprogram(name: "ListCoderInfo", scope: !237, file: !237, line: 693, type: !672, scopeLine: 695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !675)
!672 = !DISubroutineType(types: !673)
!673 = !{!143, !674, !311}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!675 = !{!676, !677, !678, !679, !680, !681, !682}
!676 = !DILocalVariable(name: "file", arg: 1, scope: !671, file: !237, line: 693, type: !674)
!677 = !DILocalVariable(name: "exception", arg: 2, scope: !671, file: !237, line: 694, type: !311)
!678 = !DILocalVariable(name: "path", scope: !671, file: !237, line: 697, type: !152)
!679 = !DILocalVariable(name: "coder_info", scope: !671, file: !237, line: 700, type: !154)
!680 = !DILocalVariable(name: "i", scope: !671, file: !237, line: 703, type: !215)
!681 = !DILocalVariable(name: "number_coders", scope: !671, file: !237, line: 706, type: !149)
!682 = !DILocalVariable(name: "j", scope: !671, file: !237, line: 709, type: !215)
!683 = !DILocation(line: 0, scope: !671)
!684 = !DILocation(line: 705, column: 3, scope: !671)
!685 = !DILocation(line: 711, column: 12, scope: !686)
!686 = distinct !DILexicalBlock(scope: !671, file: !237, line: 711, column: 7)
!687 = !DILocation(line: 711, column: 7, scope: !671)
!688 = !DILocation(line: 713, column: 14, scope: !671)
!689 = !DILocation(line: 714, column: 18, scope: !690)
!690 = distinct !DILexicalBlock(scope: !671, file: !237, line: 714, column: 7)
!691 = !DILocation(line: 714, column: 7, scope: !671)
!692 = !DILocation(line: 717, column: 15, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !237, line: 717, column: 3)
!694 = distinct !DILexicalBlock(scope: !671, file: !237, line: 717, column: 3)
!695 = !DILocation(line: 717, column: 3, scope: !694)
!696 = !DILocation(line: 719, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !237, line: 719, column: 9)
!698 = distinct !DILexicalBlock(scope: !693, file: !237, line: 718, column: 3)
!699 = !DILocation(line: 719, column: 24, scope: !697)
!700 = !DILocation(line: 719, column: 32, scope: !697)
!701 = !DILocation(line: 719, column: 9, scope: !698)
!702 = !DILocation(line: 721, column: 15, scope: !703)
!703 = distinct !DILexicalBlock(scope: !698, file: !237, line: 721, column: 9)
!704 = !DILocation(line: 721, column: 39, scope: !703)
!705 = !DILocation(line: 722, column: 44, scope: !703)
!706 = !DILocation(line: 722, column: 10, scope: !703)
!707 = !DILocation(line: 722, column: 50, scope: !703)
!708 = !DILocation(line: 721, column: 9, scope: !698)
!709 = !DILocation(line: 724, column: 13, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !237, line: 724, column: 13)
!711 = distinct !DILexicalBlock(scope: !703, file: !237, line: 723, column: 7)
!712 = !DILocation(line: 724, column: 28, scope: !710)
!713 = !DILocation(line: 724, column: 33, scope: !710)
!714 = !DILocation(line: 724, column: 13, scope: !711)
!715 = !DILocation(line: 725, column: 18, scope: !710)
!716 = !DILocation(line: 725, column: 11, scope: !710)
!717 = !DILocation(line: 726, column: 16, scope: !711)
!718 = !DILocation(line: 727, column: 16, scope: !711)
!719 = !DILocation(line: 730, column: 7, scope: !711)
!720 = !DILocation(line: 731, column: 10, scope: !698)
!721 = !DILocation(line: 731, column: 25, scope: !698)
!722 = !DILocation(line: 732, column: 54, scope: !698)
!723 = !DILocation(line: 732, column: 12, scope: !698)
!724 = !DILocation(line: 733, column: 29, scope: !725)
!725 = distinct !DILexicalBlock(scope: !698, file: !237, line: 733, column: 5)
!726 = !DILocation(line: 733, column: 44, scope: !725)
!727 = !DILocation(line: 733, column: 22, scope: !725)
!728 = !DILocation(line: 733, column: 55, scope: !729)
!729 = distinct !DILexicalBlock(scope: !725, file: !237, line: 733, column: 5)
!730 = !DILocation(line: 733, column: 5, scope: !725)
!731 = !DILocation(line: 734, column: 14, scope: !729)
!732 = !DILocation(line: 733, column: 63, scope: !729)
!733 = distinct !{!733, !730, !734, !400, !401}
!734 = !DILocation(line: 734, column: 39, scope: !725)
!735 = !DILocation(line: 735, column: 9, scope: !736)
!736 = distinct !DILexicalBlock(scope: !698, file: !237, line: 735, column: 9)
!737 = !DILocation(line: 735, column: 24, scope: !736)
!738 = !DILocation(line: 735, column: 29, scope: !736)
!739 = !DILocation(line: 735, column: 9, scope: !698)
!740 = !DILocation(line: 736, column: 14, scope: !736)
!741 = !DILocation(line: 736, column: 7, scope: !736)
!742 = !DILocation(line: 737, column: 12, scope: !698)
!743 = !DILocation(line: 738, column: 3, scope: !698)
!744 = !DILocation(line: 717, column: 43, scope: !693)
!745 = distinct !{!745, !695, !746, !400, !401}
!746 = !DILocation(line: 738, column: 3, scope: !694)
!747 = !DILocation(line: 739, column: 35, scope: !671)
!748 = !DILocation(line: 740, column: 10, scope: !671)
!749 = !DILocation(line: 741, column: 3, scope: !671)
!750 = !DILocation(line: 742, column: 1, scope: !671)
!751 = !DISubprogram(name: "FormatLocaleFile", scope: !752, file: !752, line: 67, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!752 = !DIFile(filename: "apps/538.imagick_r/src/magick/locale_.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "156c27c5fb4b55284e5f6c924766571a")
!753 = !DISubroutineType(types: !754)
!754 = !{!215, !674, !755, null}
!755 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !152)
!756 = !DISubprogram(name: "RelinquishMagickMemory", scope: !553, file: !553, line: 51, type: !757, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!757 = !DISubroutineType(types: !758)
!758 = !{!126, !126}
!759 = !DISubprogram(name: "fflush", scope: !216, file: !216, line: 218, type: !760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!760 = !DISubroutineType(types: !761)
!761 = !{!165, !674}
!762 = !DISubprogram(name: "NewSplayTree", scope: !129, file: !129, line: 45, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!763 = !DISubroutineType(types: !764)
!764 = !{!127, !571, !765, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!766 = distinct !DISubprogram(name: "DestroyCoderNode", scope: !237, file: !237, line: 273, type: !757, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !767)
!767 = !{!768, !769}
!768 = !DILocalVariable(name: "coder_info", arg: 1, scope: !766, file: !237, line: 273, type: !126)
!769 = !DILocalVariable(name: "p", scope: !766, file: !237, line: 276, type: !155)
!770 = !DILocation(line: 0, scope: !766)
!771 = !DILocation(line: 279, column: 10, scope: !772)
!772 = distinct !DILexicalBlock(scope: !766, file: !237, line: 279, column: 7)
!773 = !DILocation(line: 279, column: 17, scope: !772)
!774 = !DILocation(line: 279, column: 7, scope: !766)
!775 = !DILocation(line: 281, column: 14, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !237, line: 281, column: 11)
!777 = distinct !DILexicalBlock(scope: !772, file: !237, line: 280, column: 5)
!778 = !DILocation(line: 281, column: 19, scope: !776)
!779 = !DILocation(line: 281, column: 11, scope: !777)
!780 = !DILocation(line: 282, column: 17, scope: !776)
!781 = !DILocation(line: 282, column: 16, scope: !776)
!782 = !DILocation(line: 282, column: 9, scope: !776)
!783 = !DILocation(line: 283, column: 14, scope: !784)
!784 = distinct !DILexicalBlock(scope: !777, file: !237, line: 283, column: 11)
!785 = !DILocation(line: 283, column: 19, scope: !784)
!786 = !DILocation(line: 283, column: 11, scope: !777)
!787 = !DILocation(line: 284, column: 17, scope: !784)
!788 = !DILocation(line: 284, column: 16, scope: !784)
!789 = !DILocation(line: 284, column: 9, scope: !784)
!790 = !DILocation(line: 285, column: 14, scope: !791)
!791 = distinct !DILexicalBlock(scope: !777, file: !237, line: 285, column: 11)
!792 = !DILocation(line: 285, column: 21, scope: !791)
!793 = !DILocation(line: 285, column: 11, scope: !777)
!794 = !DILocation(line: 286, column: 19, scope: !791)
!795 = !DILocation(line: 286, column: 18, scope: !791)
!796 = !DILocation(line: 286, column: 9, scope: !791)
!797 = !DILocation(line: 288, column: 10, scope: !766)
!798 = !DILocation(line: 288, column: 3, scope: !766)
!799 = !DISubprogram(name: "GetExceptionInfo", scope: !12, file: !12, line: 166, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !311}
!802 = !DISubprogram(name: "GetExceptionMessage", scope: !12, file: !12, line: 137, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!803 = !DISubroutineType(types: !804)
!804 = !{!138, !805}
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!806 = !DISubprogram(name: "ThrowMagickException", scope: !12, file: !12, line: 156, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!807 = !DISubroutineType(types: !808)
!808 = !{!143, !311, !152, !152, !551, !809, !152, !152, null}
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!810 = !DISubprogram(name: "DestroyString", scope: !222, file: !222, line: 46, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!811 = !DISubroutineType(types: !812)
!812 = !{!138, !138}
!813 = !DISubprogram(name: "CatchException", scope: !12, file: !12, line: 164, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!814 = !DISubprogram(name: "DestroyExceptionInfo", scope: !12, file: !12, line: 148, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!815 = !DISubroutineType(types: !816)
!816 = !{!311, !311}
!817 = !DISubprogram(name: "MagickCoreTerminus", scope: !818, file: !818, line: 147, type: !276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!818 = !DIFile(filename: "apps/538.imagick_r/src/magick/magick.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5adb931d8998efbd9da8007cf3af7d19")
!819 = !DISubprogram(name: "GetConfigureOptions", scope: !820, file: !820, line: 60, type: !821, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!820 = !DIFile(filename: "apps/538.imagick_r/src/magick/configure.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "509000215663377a353fdb892d1d0c76")
!821 = !DISubroutineType(types: !822)
!822 = !{!361, !152, !311}
!823 = !DISubprogram(name: "GetNextValueInLinkedList", scope: !363, file: !363, line: 69, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!824 = !DISubroutineType(types: !825)
!825 = !{!126, !361}
!826 = distinct !DISubprogram(name: "LoadCoderCache", scope: !237, file: !237, line: 775, type: !827, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{!143, !127, !152, !152, !551, !311}
!829 = !{!830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !851, !852, !857}
!830 = !DILocalVariable(name: "coder_cache", arg: 1, scope: !826, file: !237, line: 775, type: !127)
!831 = !DILocalVariable(name: "xml", arg: 2, scope: !826, file: !237, line: 776, type: !152)
!832 = !DILocalVariable(name: "filename", arg: 3, scope: !826, file: !237, line: 776, type: !152)
!833 = !DILocalVariable(name: "depth", arg: 4, scope: !826, file: !237, line: 776, type: !551)
!834 = !DILocalVariable(name: "exception", arg: 5, scope: !826, file: !237, line: 777, type: !311)
!835 = !DILocalVariable(name: "keyword", scope: !826, file: !237, line: 780, type: !226)
!836 = !DILocalVariable(name: "token", scope: !826, file: !237, line: 781, type: !138)
!837 = !DILocalVariable(name: "q", scope: !826, file: !237, line: 784, type: !152)
!838 = !DILocalVariable(name: "coder_info", scope: !826, file: !237, line: 787, type: !155)
!839 = !DILocalVariable(name: "status", scope: !826, file: !237, line: 790, type: !143)
!840 = !DILocalVariable(name: "path", scope: !841, file: !237, line: 849, type: !226)
!841 = distinct !DILexicalBlock(scope: !842, file: !237, line: 847, column: 17)
!842 = distinct !DILexicalBlock(scope: !843, file: !237, line: 843, column: 19)
!843 = distinct !DILexicalBlock(scope: !844, file: !237, line: 842, column: 13)
!844 = distinct !DILexicalBlock(scope: !845, file: !237, line: 841, column: 15)
!845 = distinct !DILexicalBlock(scope: !846, file: !237, line: 835, column: 9)
!846 = distinct !DILexicalBlock(scope: !847, file: !237, line: 830, column: 7)
!847 = distinct !DILexicalBlock(scope: !848, file: !237, line: 829, column: 9)
!848 = distinct !DILexicalBlock(scope: !849, file: !237, line: 803, column: 3)
!849 = distinct !DILexicalBlock(scope: !850, file: !237, line: 802, column: 3)
!850 = distinct !DILexicalBlock(scope: !826, file: !237, line: 802, column: 3)
!851 = !DILocalVariable(name: "xml", scope: !841, file: !237, line: 850, type: !138)
!852 = !DILocalVariable(name: "message", scope: !853, file: !237, line: 879, type: !138)
!853 = distinct !DILexicalBlock(scope: !854, file: !237, line: 879, column: 11)
!854 = distinct !DILexicalBlock(scope: !855, file: !237, line: 878, column: 13)
!855 = distinct !DILexicalBlock(scope: !856, file: !237, line: 873, column: 7)
!856 = distinct !DILexicalBlock(scope: !848, file: !237, line: 872, column: 9)
!857 = !DILocalVariable(name: "exception", scope: !853, file: !237, line: 879, type: !312)
!858 = !DILocation(line: 0, scope: !826)
!859 = !DILocation(line: 779, column: 3, scope: !826)
!860 = !DILocation(line: 780, column: 5, scope: !826)
!861 = !DILocation(line: 783, column: 3, scope: !826)
!862 = !DILocation(line: 795, column: 10, scope: !826)
!863 = !DILocation(line: 797, column: 11, scope: !864)
!864 = distinct !DILexicalBlock(scope: !826, file: !237, line: 797, column: 7)
!865 = !DILocation(line: 797, column: 7, scope: !826)
!866 = !DILocation(line: 801, column: 9, scope: !826)
!867 = !DILocation(line: 802, column: 9, scope: !850)
!868 = !DILocation(line: 802, column: 24, scope: !849)
!869 = !{!264, !264, i64 0}
!870 = !DILocation(line: 802, column: 27, scope: !849)
!871 = !DILocation(line: 802, column: 3, scope: !850)
!872 = !DILocation(line: 807, column: 5, scope: !848)
!873 = !DILocation(line: 808, column: 9, scope: !874)
!874 = distinct !DILexicalBlock(scope: !848, file: !237, line: 808, column: 9)
!875 = !DILocation(line: 808, column: 16, scope: !874)
!876 = !DILocation(line: 808, column: 9, scope: !848)
!877 = !DILocation(line: 810, column: 12, scope: !848)
!878 = !DILocation(line: 811, column: 9, scope: !879)
!879 = distinct !DILexicalBlock(scope: !848, file: !237, line: 811, column: 9)
!880 = !DILocation(line: 811, column: 47, scope: !879)
!881 = !DILocation(line: 811, column: 9, scope: !848)
!882 = !DILocation(line: 816, column: 32, scope: !883)
!883 = distinct !DILexicalBlock(scope: !879, file: !237, line: 812, column: 7)
!884 = !DILocation(line: 816, column: 17, scope: !883)
!885 = !DILocation(line: 816, column: 42, scope: !883)
!886 = !DILocation(line: 816, column: 48, scope: !883)
!887 = !DILocation(line: 816, column: 53, scope: !883)
!888 = !DILocation(line: 816, column: 52, scope: !883)
!889 = !DILocation(line: 816, column: 55, scope: !883)
!890 = !DILocation(line: 816, column: 9, scope: !883)
!891 = !DILocation(line: 817, column: 11, scope: !883)
!892 = distinct !{!892, !890, !893, !400, !401}
!893 = !DILocation(line: 817, column: 36, scope: !883)
!894 = !DILocation(line: 802, column: 25, scope: !849)
!895 = distinct !{!895, !871, !896, !400, !401}
!896 = !DILocation(line: 939, column: 3, scope: !850)
!897 = !DILocation(line: 820, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !848, file: !237, line: 820, column: 9)
!899 = !DILocation(line: 820, column: 42, scope: !898)
!900 = !DILocation(line: 820, column: 9, scope: !848)
!901 = !DILocation(line: 825, column: 32, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !237, line: 821, column: 7)
!903 = !DILocation(line: 825, column: 17, scope: !902)
!904 = !DILocation(line: 825, column: 42, scope: !902)
!905 = !DILocation(line: 825, column: 48, scope: !902)
!906 = !DILocation(line: 825, column: 53, scope: !902)
!907 = !DILocation(line: 825, column: 52, scope: !902)
!908 = !DILocation(line: 825, column: 55, scope: !902)
!909 = !DILocation(line: 825, column: 9, scope: !902)
!910 = !DILocation(line: 826, column: 11, scope: !902)
!911 = distinct !{!911, !909, !912, !400, !401}
!912 = !DILocation(line: 826, column: 36, scope: !902)
!913 = !DILocation(line: 829, column: 9, scope: !847)
!914 = !DILocation(line: 829, column: 43, scope: !847)
!915 = !DILocation(line: 829, column: 9, scope: !848)
!916 = !DILocation(line: 843, column: 19, scope: !843)
!917 = !DILocation(line: 834, column: 18, scope: !846)
!918 = !DILocation(line: 834, column: 25, scope: !846)
!919 = !DILocation(line: 834, column: 33, scope: !846)
!920 = !DILocation(line: 834, column: 37, scope: !846)
!921 = !DILocation(line: 834, column: 48, scope: !846)
!922 = !DILocation(line: 834, column: 57, scope: !846)
!923 = !DILocation(line: 834, column: 62, scope: !846)
!924 = !DILocation(line: 834, column: 61, scope: !846)
!925 = !DILocation(line: 834, column: 64, scope: !846)
!926 = !DILocation(line: 834, column: 9, scope: !846)
!927 = !DILocation(line: 836, column: 18, scope: !845)
!928 = !DILocation(line: 837, column: 26, scope: !845)
!929 = !DILocation(line: 837, column: 11, scope: !845)
!930 = !DILocation(line: 838, column: 15, scope: !931)
!931 = distinct !DILexicalBlock(scope: !845, file: !237, line: 838, column: 15)
!932 = !DILocation(line: 838, column: 22, scope: !931)
!933 = !DILocation(line: 838, column: 15, scope: !845)
!934 = distinct !{!934, !926, !935, !400, !401}
!935 = !DILocation(line: 869, column: 9, scope: !846)
!936 = !DILocation(line: 840, column: 26, scope: !845)
!937 = !DILocation(line: 840, column: 11, scope: !845)
!938 = !DILocation(line: 841, column: 15, scope: !844)
!939 = !DILocation(line: 841, column: 45, scope: !844)
!940 = !DILocation(line: 841, column: 15, scope: !845)
!941 = !DILocation(line: 844, column: 24, scope: !842)
!942 = !DILocation(line: 844, column: 17, scope: !842)
!943 = !DILocation(line: 848, column: 19, scope: !841)
!944 = !DILocation(line: 849, column: 21, scope: !841)
!945 = !DILocation(line: 852, column: 19, scope: !841)
!946 = !DILocation(line: 853, column: 23, scope: !947)
!947 = distinct !DILexicalBlock(scope: !841, file: !237, line: 853, column: 23)
!948 = !DILocation(line: 853, column: 29, scope: !947)
!949 = !DILocation(line: 853, column: 23, scope: !841)
!950 = !DILocation(line: 854, column: 28, scope: !947)
!951 = !DILocation(line: 854, column: 21, scope: !947)
!952 = !DILocation(line: 856, column: 23, scope: !953)
!953 = distinct !DILexicalBlock(scope: !841, file: !237, line: 856, column: 23)
!954 = !DILocation(line: 856, column: 30, scope: !953)
!955 = !DILocation(line: 856, column: 23, scope: !841)
!956 = !DILocation(line: 857, column: 28, scope: !953)
!957 = !DILocation(line: 857, column: 21, scope: !953)
!958 = !DILocation(line: 859, column: 28, scope: !953)
!959 = !DILocation(line: 860, column: 23, scope: !841)
!960 = !DILocation(line: 0, scope: !841)
!961 = !DILocation(line: 861, column: 27, scope: !962)
!962 = distinct !DILexicalBlock(scope: !841, file: !237, line: 861, column: 23)
!963 = !DILocation(line: 861, column: 23, scope: !841)
!964 = !DILocation(line: 863, column: 31, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !237, line: 862, column: 21)
!966 = !DILocation(line: 863, column: 29, scope: !965)
!967 = !DILocation(line: 865, column: 36, scope: !965)
!968 = !DILocation(line: 866, column: 21, scope: !965)
!969 = !DILocation(line: 867, column: 17, scope: !842)
!970 = !DILocation(line: 872, column: 9, scope: !856)
!971 = !DILocation(line: 872, column: 41, scope: !856)
!972 = !DILocation(line: 872, column: 9, scope: !848)
!973 = !DILocation(line: 877, column: 34, scope: !855)
!974 = !DILocation(line: 878, column: 24, scope: !854)
!975 = !DILocation(line: 878, column: 13, scope: !855)
!976 = !DILocation(line: 879, column: 11, scope: !853)
!977 = !DILocation(line: 0, scope: !853)
!978 = !DILocation(line: 880, column: 16, scope: !855)
!979 = !DILocation(line: 881, column: 26, scope: !855)
!980 = !DILocation(line: 881, column: 25, scope: !855)
!981 = !DILocation(line: 882, column: 21, scope: !855)
!982 = !DILocation(line: 882, column: 27, scope: !855)
!983 = !DILocation(line: 883, column: 21, scope: !855)
!984 = !DILocation(line: 883, column: 30, scope: !855)
!985 = !DILocation(line: 884, column: 9, scope: !855)
!986 = !DILocation(line: 886, column: 20, scope: !987)
!987 = distinct !DILexicalBlock(scope: !848, file: !237, line: 886, column: 9)
!988 = !DILocation(line: 886, column: 9, scope: !848)
!989 = !DILocation(line: 888, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !848, file: !237, line: 888, column: 9)
!991 = !DILocation(line: 888, column: 37, scope: !990)
!992 = !DILocation(line: 888, column: 9, scope: !848)
!993 = !DILocation(line: 891, column: 23, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !237, line: 889, column: 7)
!995 = !DILocation(line: 890, column: 48, scope: !994)
!996 = !DILocation(line: 890, column: 16, scope: !994)
!997 = !DILocation(line: 892, column: 20, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !237, line: 892, column: 13)
!999 = !DILocation(line: 892, column: 13, scope: !994)
!1000 = !DILocation(line: 895, column: 25, scope: !998)
!1001 = !DILocation(line: 893, column: 18, scope: !998)
!1002 = !DILocation(line: 893, column: 11, scope: !998)
!1003 = !DILocation(line: 899, column: 20, scope: !848)
!1004 = !DILocation(line: 899, column: 5, scope: !848)
!1005 = !DILocation(line: 900, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !848, file: !237, line: 900, column: 9)
!1007 = !DILocation(line: 900, column: 16, scope: !1006)
!1008 = !DILocation(line: 900, column: 9, scope: !848)
!1009 = !DILocation(line: 902, column: 20, scope: !848)
!1010 = !DILocation(line: 902, column: 5, scope: !848)
!1011 = !DILocation(line: 903, column: 20, scope: !848)
!1012 = !DILocation(line: 903, column: 5, scope: !848)
!1013 = !DILocation(line: 904, column: 13, scope: !848)
!1014 = !DILocation(line: 904, column: 5, scope: !848)
!1015 = !DILocation(line: 909, column: 13, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !237, line: 909, column: 13)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !237, line: 908, column: 7)
!1018 = distinct !DILexicalBlock(scope: !848, file: !237, line: 905, column: 5)
!1019 = !DILocation(line: 909, column: 54, scope: !1016)
!1020 = !DILocation(line: 909, column: 13, scope: !1017)
!1021 = !DILocation(line: 911, column: 32, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1016, file: !237, line: 910, column: 11)
!1023 = !DILocation(line: 911, column: 25, scope: !1022)
!1024 = !DILocation(line: 911, column: 31, scope: !1022)
!1025 = !DILocation(line: 912, column: 13, scope: !1022)
!1026 = !DILocation(line: 919, column: 13, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !237, line: 919, column: 13)
!1028 = distinct !DILexicalBlock(scope: !1018, file: !237, line: 918, column: 7)
!1029 = !DILocation(line: 919, column: 52, scope: !1027)
!1030 = !DILocation(line: 919, column: 13, scope: !1028)
!1031 = !DILocation(line: 921, column: 30, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !237, line: 920, column: 11)
!1033 = !DILocation(line: 921, column: 25, scope: !1032)
!1034 = !DILocation(line: 921, column: 29, scope: !1032)
!1035 = !DILocation(line: 922, column: 13, scope: !1032)
!1036 = !DILocation(line: 929, column: 13, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !237, line: 929, column: 13)
!1038 = distinct !DILexicalBlock(scope: !1018, file: !237, line: 928, column: 7)
!1039 = !DILocation(line: 929, column: 55, scope: !1037)
!1040 = !DILocation(line: 929, column: 13, scope: !1038)
!1041 = !DILocation(line: 931, column: 33, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !237, line: 930, column: 11)
!1043 = !DILocation(line: 931, column: 25, scope: !1042)
!1044 = !DILocation(line: 931, column: 32, scope: !1042)
!1045 = !DILocation(line: 932, column: 13, scope: !1042)
!1046 = !DILocation(line: 940, column: 18, scope: !826)
!1047 = !DILocation(line: 941, column: 3, scope: !826)
!1048 = !DILocation(line: 942, column: 1, scope: !826)
!1049 = !DISubprogram(name: "GetStringInfoDatum", scope: !222, file: !222, line: 97, type: !1050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!230, !219}
!1052 = !DISubprogram(name: "GetStringInfoPath", scope: !222, file: !222, line: 58, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!152, !219}
!1055 = !DISubprogram(name: "DestroyConfigureOptions", scope: !820, file: !820, line: 58, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!361, !361}
!1058 = !DISubprogram(name: "AcquireMagickMemory", scope: !553, file: !553, line: 40, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!126, !551}
!1061 = !DISubprogram(name: "ResetMagickMemory", scope: !553, file: !553, line: 52, type: !1062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!126, !126, !165, !551}
!1064 = !DISubprogram(name: "AddValueToSplayTree", scope: !129, file: !129, line: 29, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!143, !127, !479, !479}
!1067 = !DISubprogram(name: "AcquireString", scope: !222, file: !222, line: 43, type: !658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1068 = !DISubprogram(name: "GetMagickToken", scope: !562, file: !562, line: 45, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !152, !218, !138}
!1071 = !DISubprogram(name: "CopyMagickString", scope: !222, file: !222, line: 78, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!149, !138, !152, !551}
!1074 = !DISubprogram(name: "LocaleNCompare", scope: !222, file: !222, line: 67, type: !1075, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!165, !152, !152, !551}
!1077 = !DISubprogram(name: "GetPathComponent", scope: !110, file: !110, line: 68, type: !1078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !152, !1080, !138}
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "PathType", file: !110, line: 36, baseType: !109)
!1081 = !DISubprogram(name: "ConcatenateMagickString", scope: !222, file: !222, line: 76, type: !1072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1082 = !DISubprogram(name: "FileToXML", scope: !1083, file: !1083, line: 26, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1083 = !DIFile(filename: "apps/538.imagick_r/src/magick/xml-tree-private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "588d2b9ea15fe3943faca01fa62215a3")
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!138, !152, !551}
!1086 = !DISubprogram(name: "IsMagickTrue", scope: !562, file: !562, line: 38, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !259)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!143, !152}
