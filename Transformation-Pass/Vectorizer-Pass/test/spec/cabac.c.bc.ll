; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/cabac.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/cabac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.x264_t = type { %struct.x264_param_t, [129 x ptr], i32, i32, i32, i32, i32, %struct.anon.2, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [92 x ptr], [92 x [4 x ptr]], ptr, [8 x i8], %struct.x264_slice_header_t, %struct.x264_cabac_t, %struct.anon.8, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], i32, i32, i64, %struct.anon.9, %struct.anon.10, ptr, %struct.anon.13, [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], ptr, [2 x [3 x ptr]], [2 x ptr], [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], ptr, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, ptr, [8 x i8] }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.anon.2 = type { i32, i32, ptr, i32, ptr, %struct.bs_s }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.3, i32, %struct.anon.4, i32 }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.6]], [32 x [3 x %struct.x264_weight_t]], i32, i32, [16 x %struct.anon.7], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.anon.6 = type { i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.anon.7 = type { i32, i32 }
%struct.anon.8 = type { ptr, [2 x ptr], ptr, [18 x ptr], i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], i64, i64, i32, i32 }
%struct.anon.9 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.10 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x [32 x ptr]], ptr, ptr, ptr, [16 x ptr], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], %struct.anon.11, %struct.anon.12, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [2 x i32]], i32, i32, [2 x [32 x [4 x i16]]], ptr, [2 x [32 x [4 x i8]]], ptr, [18 x i8], i32, [34 x i8], [14 x i8] }
%struct.anon.11 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x i32], [4 x i32], i32, i32, [8 x i8], [4 x [64 x i16]], [16 x [16 x i16]], [9 x i64], [8 x i8], [32 x i32], [3 x ptr], [3 x ptr], [3 x ptr], [2 x i32], [2 x [32 x [6 x ptr]]], [32 x ptr], [2 x [16 x ptr]], [3 x i32] }
%struct.anon.12 = type { [40 x i8], [8 x i8], [48 x i8], [2 x [40 x i8]], [2 x [40 x [2 x i16]]], [2 x [40 x [2 x i8]]], [40 x i8], [2 x [4 x [2 x i16]]], [2 x [4 x i8]], i32, [2 x i16], i32, i32, i32, i32, [8 x i8] }
%struct.anon.13 = type { %struct.anon.14, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [6 x i64], [4 x [13 x i64]], [2 x i32], [2 x i32], [3 x i32] }
%struct.anon.14 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], [6 x i32], [4 x [13 x i32]], [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], [5 x ptr] }
%struct.x264_deblock_function_t = type { [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], ptr }

@x264_cabac_range_lps = dso_local local_unnamed_addr constant [64 x [4 x i8]] [[4 x i8] c"\02\02\02\02", [4 x i8] c"\06\07\08\09", [4 x i8] c"\06\07\09\0A", [4 x i8] c"\06\08\09\0B", [4 x i8] c"\07\08\0A\0B", [4 x i8] c"\07\09\0A\0C", [4 x i8] c"\07\09\0B\0C", [4 x i8] c"\08\09\0B\0D", [4 x i8] c"\08\0A\0C\0E", [4 x i8] c"\09\0B\0C\0E", [4 x i8] c"\09\0B\0D\0F", [4 x i8] c"\0A\0C\0E\10", [4 x i8] c"\0A\0C\0F\11", [4 x i8] c"\0B\0D\0F\12", [4 x i8] c"\0B\0E\10\13", [4 x i8] c"\0C\0E\11\14", [4 x i8] c"\0C\0F\12\15", [4 x i8] c"\0D\10\13\16", [4 x i8] c"\0E\11\14\17", [4 x i8] c"\0E\12\15\18", [4 x i8] c"\0F\13\16\19", [4 x i8] c"\10\14\17\1B", [4 x i8] c"\11\15\19\1C", [4 x i8] c"\12\16\1A\1E", [4 x i8] c"\13\17\1B\1F", [4 x i8] c"\14\18\1D!", [4 x i8] c"\15\1A\1E#", [4 x i8] c"\16\1B %", [4 x i8] c"\17\1C!'", [4 x i8] c"\18\1E#)", [4 x i8] c"\1A\1F%+", [4 x i8] c"\1B!'-", [4 x i8] c"\1D#)0", [4 x i8] c"\1E%+2", [4 x i8] c" '.5", [4 x i8] c"!)08", [4 x i8] c"#+3;", [4 x i8] c"%-6>", [4 x i8] c"'08A", [4 x i8] c")2;E", [4 x i8] c"+5?H", [4 x i8] c".8BL", [4 x i8] c"0;EP", [4 x i8] c"3>IU", [4 x i8] c"5AMY", [4 x i8] c"8EQ^", [4 x i8] c";HVc", [4 x i8] c">LZh", [4 x i8] c"BP_n", [4 x i8] c"EUdt", [4 x i8] c"IYiz", [4 x i8] c"M^o\80", [4 x i8] c"Qcu\87", [4 x i8] c"Uh{\8E", [4 x i8] c"Zn\82\96", [4 x i8] c"_t\89\9E", [4 x i8] c"dz\90\A6", [4 x i8] c"i\80\98\AF", [4 x i8] c"o\87\A0\B9", [4 x i8] c"t\8E\A9\C3", [4 x i8] c"{\96\B2\CD", [4 x i8] c"\80\9E\BB\D8", [4 x i8] c"\80\A7\C5\E3", [4 x i8] c"\80\B0\D0\F0"], align 16, !dbg !0
@x264_cabac_transition = dso_local local_unnamed_addr constant [128 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01", [2 x i8] c"\022", [2 x i8] c"3\03", [2 x i8] c"\022", [2 x i8] c"3\03", [2 x i8] c"\044", [2 x i8] c"5\05", [2 x i8] c"\064", [2 x i8] c"5\07", [2 x i8] c"\084", [2 x i8] c"5\09", [2 x i8] c"\0A6", [2 x i8] c"7\0B", [2 x i8] c"\0C6", [2 x i8] c"7\0D", [2 x i8] c"\0E6", [2 x i8] c"7\0F", [2 x i8] c"\108", [2 x i8] c"9\11", [2 x i8] c"\128", [2 x i8] c"9\13", [2 x i8] c"\148", [2 x i8] c"9\15", [2 x i8] c"\16:", [2 x i8] c";\17", [2 x i8] c"\18:", [2 x i8] c";\19", [2 x i8] c"\1A<", [2 x i8] c"=\1B", [2 x i8] c"\1C<", [2 x i8] c"=\1D", [2 x i8] c"\1E<", [2 x i8] c"=\1F", [2 x i8] c" >", [2 x i8] c"?!", [2 x i8] c"\22>", [2 x i8] c"?#", [2 x i8] c"$@", [2 x i8] c"A%", [2 x i8] c"&B", [2 x i8] c"C'", [2 x i8] c"(B", [2 x i8] c"C)", [2 x i8] c"*B", [2 x i8] c"C+", [2 x i8] c",D", [2 x i8] c"E-", [2 x i8] c".D", [2 x i8] c"E/", [2 x i8] c"0F", [2 x i8] c"G1", [2 x i8] c"2H", [2 x i8] c"I3", [2 x i8] c"4H", [2 x i8] c"I5", [2 x i8] c"6J", [2 x i8] c"K7", [2 x i8] c"8J", [2 x i8] c"K9", [2 x i8] c":L", [2 x i8] c"M;", [2 x i8] c"<N", [2 x i8] c"O=", [2 x i8] c">N", [2 x i8] c"O?", [2 x i8] c"@P", [2 x i8] c"QA", [2 x i8] c"BR", [2 x i8] c"SC", [2 x i8] c"DR", [2 x i8] c"SE", [2 x i8] c"FT", [2 x i8] c"UG", [2 x i8] c"HT", [2 x i8] c"UI", [2 x i8] c"JX", [2 x i8] c"YK", [2 x i8] c"LX", [2 x i8] c"YM", [2 x i8] c"NZ", [2 x i8] c"[O", [2 x i8] c"PZ", [2 x i8] c"[Q", [2 x i8] c"R^", [2 x i8] c"_S", [2 x i8] c"T^", [2 x i8] c"_U", [2 x i8] c"V`", [2 x i8] c"aW", [2 x i8] c"X`", [2 x i8] c"aY", [2 x i8] c"Zd", [2 x i8] c"e[", [2 x i8] c"\\d", [2 x i8] c"e]", [2 x i8] c"^f", [2 x i8] c"g_", [2 x i8] c"`h", [2 x i8] c"ia", [2 x i8] c"bh", [2 x i8] c"ic", [2 x i8] c"dl", [2 x i8] c"me", [2 x i8] c"fl", [2 x i8] c"mg", [2 x i8] c"hn", [2 x i8] c"oi", [2 x i8] c"jp", [2 x i8] c"qk", [2 x i8] c"lr", [2 x i8] c"sm", [2 x i8] c"nt", [2 x i8] c"uo", [2 x i8] c"pv", [2 x i8] c"wq", [2 x i8] c"rv", [2 x i8] c"ws", [2 x i8] c"tz", [2 x i8] c"{u", [2 x i8] c"vz", [2 x i8] c"{w", [2 x i8] c"x|", [2 x i8] c"}y", [2 x i8] c"z~", [2 x i8] c"\7F{", [2 x i8] c"|\7F", [2 x i8] c"~}"], align 16, !dbg !15
@x264_cabac_renorm_shift = dso_local local_unnamed_addr constant <{ [32 x i8], [32 x i8] }> <{ [32 x i8] c"\06\05\04\04\03\03\03\03\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [32 x i8] zeroinitializer }>, align 16, !dbg !28
@x264_cabac_entropy = dso_local local_unnamed_addr constant [128 x i16] [i16 7, i16 1469, i16 7, i16 1449, i16 8, i16 1430, i16 8, i16 1411, i16 9, i16 1392, i16 9, i16 1372, i16 10, i16 1353, i16 10, i16 1334, i16 11, i16 1315, i16 11, i16 1295, i16 12, i16 1276, i16 12, i16 1257, i16 13, i16 1238, i16 14, i16 1218, i16 15, i16 1199, i16 15, i16 1180, i16 16, i16 1161, i16 17, i16 1141, i16 18, i16 1122, i16 19, i16 1103, i16 20, i16 1084, i16 21, i16 1064, i16 22, i16 1045, i16 24, i16 1026, i16 25, i16 1007, i16 26, i16 987, i16 28, i16 968, i16 29, i16 949, i16 31, i16 930, i16 33, i16 910, i16 35, i16 891, i16 37, i16 872, i16 39, i16 853, i16 41, i16 833, i16 43, i16 814, i16 46, i16 795, i16 48, i16 776, i16 51, i16 756, i16 54, i16 737, i16 57, i16 718, i16 60, i16 699, i16 64, i16 679, i16 68, i16 660, i16 72, i16 641, i16 76, i16 622, i16 80, i16 602, i16 85, i16 583, i16 90, i16 564, i16 96, i16 545, i16 102, i16 525, i16 108, i16 506, i16 115, i16 487, i16 122, i16 468, i16 130, i16 448, i16 139, i16 429, i16 148, i16 410, i16 157, i16 391, i16 168, i16 371, i16 180, i16 352, i16 192, i16 333, i16 206, i16 314, i16 221, i16 295, i16 238, i16 275, i16 256, i16 256], align 16, !dbg !33
@x264_cabac_context_init_I = internal unnamed_addr constant [460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\00\0B", [2 x i8] c"\017", [2 x i8] c"\00E", [2 x i8] c"\EF\7F", [2 x i8] c"\F3f", [2 x i8] c"\00R", [2 x i8] c"\F9J", [2 x i8] c"\EBk", [2 x i8] c"\E5\7F", [2 x i8] c"\E1\7F", [2 x i8] c"\E8\7F", [2 x i8] c"\EE_", [2 x i8] c"\E5\7F", [2 x i8] c"\EBr", [2 x i8] c"\E2\7F", [2 x i8] c"\EF{", [2 x i8] c"\F4s", [2 x i8] c"\F0z", [2 x i8] c"\F5s", [2 x i8] c"\F4?", [2 x i8] c"\FED", [2 x i8] c"\F1T", [2 x i8] c"\F3h", [2 x i8] c"\FDF", [2 x i8] c"\F8]", [2 x i8] c"\F6Z", [2 x i8] c"\E2\7F", [2 x i8] c"\FFJ", [2 x i8] c"\FAa", [2 x i8] c"\F9[", [2 x i8] c"\EC\7F", [2 x i8] c"\FC8", [2 x i8] c"\FBR", [2 x i8] c"\F9L", [2 x i8] c"\EA}", [2 x i8] c"\F9]", [2 x i8] c"\F5W", [2 x i8] c"\FDM", [2 x i8] c"\FBG", [2 x i8] c"\FC?", [2 x i8] c"\FCD", [2 x i8] c"\F4T", [2 x i8] c"\F9>", [2 x i8] c"\F9A", [2 x i8] c"\08=", [2 x i8] c"\058", [2 x i8] c"\FEB", [2 x i8] c"\01@", [2 x i8] c"\00=", [2 x i8] c"\FEN", [2 x i8] c"\012", [2 x i8] c"\074", [2 x i8] c"\0A#", [2 x i8] c"\00,", [2 x i8] c"\0B&", [2 x i8] c"\01-", [2 x i8] c"\00.", [2 x i8] c"\05,", [2 x i8] c"\1F\11", [2 x i8] c"\013", [2 x i8] c"\072", [2 x i8] c"\1C\13", [2 x i8] c"\10!", [2 x i8] c"\0E>", [2 x i8] c"\F3l", [2 x i8] c"\F1d", [2 x i8] c"\F3e", [2 x i8] c"\F3[", [2 x i8] c"\F4^", [2 x i8] c"\F6X", [2 x i8] c"\F0T", [2 x i8] c"\F6V", [2 x i8] c"\F9S", [2 x i8] c"\F3W", [2 x i8] c"\ED^", [2 x i8] c"\01F", [2 x i8] c"\00H", [2 x i8] c"\FBJ", [2 x i8] c"\12;", [2 x i8] c"\F8f", [2 x i8] c"\F1d", [2 x i8] c"\00_", [2 x i8] c"\FCK", [2 x i8] c"\02H", [2 x i8] c"\F5K", [2 x i8] c"\FDG", [2 x i8] c"\0F.", [2 x i8] c"\F3E", [2 x i8] c"\00>", [2 x i8] c"\00A", [2 x i8] c"\15%", [2 x i8] c"\F1H", [2 x i8] c"\099", [2 x i8] c"\106", [2 x i8] c"\00>", [2 x i8] c"\0CH", [2 x i8] c"\18\00", [2 x i8] c"\0F\09", [2 x i8] c"\08\19", [2 x i8] c"\0D\12", [2 x i8] c"\0F\09", [2 x i8] c"\0D\13", [2 x i8] c"\0A%", [2 x i8] c"\0C\12", [2 x i8] c"\06\1D", [2 x i8] c"\14!", [2 x i8] c"\0F\1E", [2 x i8] c"\04-", [2 x i8] c"\01:", [2 x i8] c"\00>", [2 x i8] c"\07=", [2 x i8] c"\0C&", [2 x i8] c"\0B-", [2 x i8] c"\0F'", [2 x i8] c"\0B*", [2 x i8] c"\0D,", [2 x i8] c"\10-", [2 x i8] c"\0C)", [2 x i8] c"\0A1", [2 x i8] c"\1E\22", [2 x i8] c"\12*", [2 x i8] c"\0A7", [2 x i8] c"\113", [2 x i8] c"\11.", [2 x i8] c"\00Y", [2 x i8] c"\1A\ED", [2 x i8] c"\16\EF", [2 x i8] c"\1A\EF", [2 x i8] c"\1E\E7", [2 x i8] c"\1C\EC", [2 x i8] c"!\E9", [2 x i8] c"%\E5", [2 x i8] c"!\E9", [2 x i8] c"(\E4", [2 x i8] c"&\EF", [2 x i8] c"!\F5", [2 x i8] c"(\F1", [2 x i8] c")\FA", [2 x i8] c"&\01", [2 x i8] c")\11", [2 x i8] c"\1E\FA", [2 x i8] c"\1B\03", [2 x i8] c"\1A\16", [2 x i8] c"%\F0", [2 x i8] c"#\FC", [2 x i8] c"&\F8", [2 x i8] c"&\FD", [2 x i8] c"%\03", [2 x i8] c"&\05", [2 x i8] c"*\00", [2 x i8] c"#\10", [2 x i8] c"'\16", [2 x i8] c"\0E0", [2 x i8] c"\1B%", [2 x i8] c"\15<", [2 x i8] c"\0CD", [2 x i8] c"\02a", [2 x i8] c"\FDG", [2 x i8] c"\FA*", [2 x i8] c"\FB2", [2 x i8] c"\FD6", [2 x i8] c"\FE>", [2 x i8] c"\00:", [2 x i8] c"\01?", [2 x i8] c"\FEH", [2 x i8] c"\FFJ", [2 x i8] c"\F7[", [2 x i8] c"\FBC", [2 x i8] c"\FB\1B", [2 x i8] c"\FD'", [2 x i8] c"\FE,", [2 x i8] c"\00.", [2 x i8] c"\F0@", [2 x i8] c"\F8D", [2 x i8] c"\F6N", [2 x i8] c"\FAM", [2 x i8] c"\F6V", [2 x i8] c"\F4\\", [2 x i8] c"\F17", [2 x i8] c"\F6<", [2 x i8] c"\FA>", [2 x i8] c"\FCA", [2 x i8] c"\F4I", [2 x i8] c"\F8L", [2 x i8] c"\F9P", [2 x i8] c"\F7X", [2 x i8] c"\EFn", [2 x i8] c"\F5a", [2 x i8] c"\ECT", [2 x i8] c"\F5O", [2 x i8] c"\FAI", [2 x i8] c"\FCJ", [2 x i8] c"\F3V", [2 x i8] c"\F3`", [2 x i8] c"\F5a", [2 x i8] c"\EDu", [2 x i8] c"\F8N", [2 x i8] c"\FB!", [2 x i8] c"\FC0", [2 x i8] c"\FE5", [2 x i8] c"\FD>", [2 x i8] c"\F3G", [2 x i8] c"\F6O", [2 x i8] c"\F4V", [2 x i8] c"\F3Z", [2 x i8] c"\F2a", [2 x i8] zeroinitializer, [2 x i8] c"\FA]", [2 x i8] c"\FAT", [2 x i8] c"\F8O", [2 x i8] c"\00B", [2 x i8] c"\FFG", [2 x i8] c"\00>", [2 x i8] c"\FE<", [2 x i8] c"\FE;", [2 x i8] c"\FBK", [2 x i8] c"\FD>", [2 x i8] c"\FC:", [2 x i8] c"\F7B", [2 x i8] c"\FFO", [2 x i8] c"\00G", [2 x i8] c"\03D", [2 x i8] c"\0A,", [2 x i8] c"\F9>", [2 x i8] c"\0F$", [2 x i8] c"\0E(", [2 x i8] c"\10\1B", [2 x i8] c"\0C\1D", [2 x i8] c"\01,", [2 x i8] c"\14$", [2 x i8] c"\12 ", [2 x i8] c"\05*", [2 x i8] c"\010", [2 x i8] c"\0A>", [2 x i8] c"\11.", [2 x i8] c"\09@", [2 x i8] c"\F4h", [2 x i8] c"\F5a", [2 x i8] c"\F0`", [2 x i8] c"\F9X", [2 x i8] c"\F8U", [2 x i8] c"\F9U", [2 x i8] c"\F7U", [2 x i8] c"\F3X", [2 x i8] c"\04B", [2 x i8] c"\FDM", [2 x i8] c"\FDL", [2 x i8] c"\FAL", [2 x i8] c"\0A:", [2 x i8] c"\FFL", [2 x i8] c"\FFS", [2 x i8] c"\F9c", [2 x i8] c"\F2_", [2 x i8] c"\02_", [2 x i8] c"\00L", [2 x i8] c"\FBJ", [2 x i8] c"\00F", [2 x i8] c"\F5K", [2 x i8] c"\01D", [2 x i8] c"\00A", [2 x i8] c"\F2I", [2 x i8] c"\03>", [2 x i8] c"\04>", [2 x i8] c"\FFD", [2 x i8] c"\F3K", [2 x i8] c"\0B7", [2 x i8] c"\05@", [2 x i8] c"\0CF", [2 x i8] c"\0F\06", [2 x i8] c"\06\13", [2 x i8] c"\07\10", [2 x i8] c"\0C\0E", [2 x i8] c"\12\0D", [2 x i8] c"\0D\0B", [2 x i8] c"\0D\0F", [2 x i8] c"\0F\10", [2 x i8] c"\0C\17", [2 x i8] c"\0D\17", [2 x i8] c"\0F\14", [2 x i8] c"\0E\1A", [2 x i8] c"\0E,", [2 x i8] c"\11(", [2 x i8] c"\11/", [2 x i8] c"\18\11", [2 x i8] c"\15\15", [2 x i8] c"\19\16", [2 x i8] c"\1F\1B", [2 x i8] c"\16\1D", [2 x i8] c"\13#", [2 x i8] c"\0E2", [2 x i8] c"\0A9", [2 x i8] c"\07?", [2 x i8] c"\FEM", [2 x i8] c"\FCR", [2 x i8] c"\FD^", [2 x i8] c"\09E", [2 x i8] c"\F4m", [2 x i8] c"$\DD", [2 x i8] c"$\DE", [2 x i8] c" \E6", [2 x i8] c"%\E2", [2 x i8] c",\E0", [2 x i8] c"\22\EE", [2 x i8] c"\22\F1", [2 x i8] c"(\F1", [2 x i8] c"!\F9", [2 x i8] c"#\FB", [2 x i8] c"!\00", [2 x i8] c"&\02", [2 x i8] c"!\0D", [2 x i8] c"\17#", [2 x i8] c"\0D:", [2 x i8] c"\1D\FD", [2 x i8] c"\1A\00", [2 x i8] c"\16\1E", [2 x i8] c"\1F\F9", [2 x i8] c"#\F1", [2 x i8] c"\22\FD", [2 x i8] c"\22\03", [2 x i8] c"$\FF", [2 x i8] c"\22\05", [2 x i8] c" \0B", [2 x i8] c"#\05", [2 x i8] c"\22\0C", [2 x i8] c"'\0B", [2 x i8] c"\1E\1D", [2 x i8] c"\22\1A", [2 x i8] c"\1D'", [2 x i8] c"\13B", [2 x i8] c"\1F\15", [2 x i8] c"\1F\1F", [2 x i8] c"\192", [2 x i8] c"\EFx", [2 x i8] c"\ECp", [2 x i8] c"\EEr", [2 x i8] c"\F5U", [2 x i8] c"\F1\\", [2 x i8] c"\F2Y", [2 x i8] c"\E6G", [2 x i8] c"\F1Q", [2 x i8] c"\F2P", [2 x i8] c"\00D", [2 x i8] c"\F2F", [2 x i8] c"\E88", [2 x i8] c"\E9D", [2 x i8] c"\E82", [2 x i8] c"\F5J", [2 x i8] c"\17\F3", [2 x i8] c"\1A\F3", [2 x i8] c"(\F1", [2 x i8] c"1\F2", [2 x i8] c",\03", [2 x i8] c"-\06", [2 x i8] c",\22", [2 x i8] c"!6", [2 x i8] c"\13R", [2 x i8] c"\FDK", [2 x i8] c"\FF\17", [2 x i8] c"\01\22", [2 x i8] c"\01+", [2 x i8] c"\006", [2 x i8] c"\FE7", [2 x i8] c"\00=", [2 x i8] c"\01@", [2 x i8] c"\00D", [2 x i8] c"\F7\\", [2 x i8] c"\F2j", [2 x i8] c"\F3a", [2 x i8] c"\F1Z", [2 x i8] c"\F4Z", [2 x i8] c"\EEX", [2 x i8] c"\F6I", [2 x i8] c"\F7O", [2 x i8] c"\F2V", [2 x i8] c"\F6I", [2 x i8] c"\F6F", [2 x i8] c"\F6E", [2 x i8] c"\FBB", [2 x i8] c"\F7@", [2 x i8] c"\FB:", [2 x i8] c"\02;", [2 x i8] c"\15\F6", [2 x i8] c"\18\F5", [2 x i8] c"\1C\F8", [2 x i8] c"\1C\FF", [2 x i8] c"\1D\03", [2 x i8] c"\1D\09", [2 x i8] c"#\14", [2 x i8] c"\1D$", [2 x i8] c"\0EC"], align 16, !dbg !41
@x264_cabac_context_init_PB = internal unnamed_addr constant [3 x [460 x [2 x i8]]] [[460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\17!", [2 x i8] c"\17\02", [2 x i8] c"\15\00", [2 x i8] c"\01\09", [2 x i8] c"\001", [2 x i8] c"\DBv", [2 x i8] c"\059", [2 x i8] c"\F3N", [2 x i8] c"\F5A", [2 x i8] c"\01>", [2 x i8] c"\0C1", [2 x i8] c"\FCI", [2 x i8] c"\112", [2 x i8] c"\12@", [2 x i8] c"\09+", [2 x i8] c"\1D\00", [2 x i8] c"\1AC", [2 x i8] c"\10Z", [2 x i8] c"\09h", [2 x i8] c"\D2\7F", [2 x i8] c"\ECh", [2 x i8] c"\01C", [2 x i8] c"\F3N", [2 x i8] c"\F5A", [2 x i8] c"\01>", [2 x i8] c"\FAV", [2 x i8] c"\EF_", [2 x i8] c"\FA=", [2 x i8] c"\09-", [2 x i8] c"\FDE", [2 x i8] c"\FAQ", [2 x i8] c"\F5`", [2 x i8] c"\067", [2 x i8] c"\07C", [2 x i8] c"\FBV", [2 x i8] c"\02X", [2 x i8] c"\00:", [2 x i8] c"\FDL", [2 x i8] c"\F6^", [2 x i8] c"\056", [2 x i8] c"\04E", [2 x i8] c"\FDQ", [2 x i8] c"\00X", [2 x i8] c"\F9C", [2 x i8] c"\FBJ", [2 x i8] c"\FCJ", [2 x i8] c"\FBP", [2 x i8] c"\F9H", [2 x i8] c"\01:", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\00-", [2 x i8] c"\FCN", [2 x i8] c"\FD`", [2 x i8] c"\E5~", [2 x i8] c"\E4b", [2 x i8] c"\E7e", [2 x i8] c"\E9C", [2 x i8] c"\E4R", [2 x i8] c"\EC^", [2 x i8] c"\F0S", [2 x i8] c"\EAn", [2 x i8] c"\EB[", [2 x i8] c"\EEf", [2 x i8] c"\F3]", [2 x i8] c"\E3\7F", [2 x i8] c"\F9\\", [2 x i8] c"\FBY", [2 x i8] c"\F9`", [2 x i8] c"\F3l", [2 x i8] c"\FD.", [2 x i8] c"\FFA", [2 x i8] c"\FF9", [2 x i8] c"\F7]", [2 x i8] c"\FDJ", [2 x i8] c"\F7\\", [2 x i8] c"\F8W", [2 x i8] c"\E9~", [2 x i8] c"\056", [2 x i8] c"\06<", [2 x i8] c"\06;", [2 x i8] c"\06E", [2 x i8] c"\FF0", [2 x i8] c"\00D", [2 x i8] c"\FCE", [2 x i8] c"\F8X", [2 x i8] c"\FEU", [2 x i8] c"\FAN", [2 x i8] c"\FFK", [2 x i8] c"\F9M", [2 x i8] c"\026", [2 x i8] c"\052", [2 x i8] c"\FDD", [2 x i8] c"\012", [2 x i8] c"\06*", [2 x i8] c"\FCQ", [2 x i8] c"\01?", [2 x i8] c"\FCF", [2 x i8] c"\00C", [2 x i8] c"\029", [2 x i8] c"\FEL", [2 x i8] c"\0B#", [2 x i8] c"\04@", [2 x i8] c"\01=", [2 x i8] c"\0B#", [2 x i8] c"\12\19", [2 x i8] c"\0C\18", [2 x i8] c"\0D\1D", [2 x i8] c"\0D$", [2 x i8] c"\F6]", [2 x i8] c"\F9I", [2 x i8] c"\FEI", [2 x i8] c"\0D.", [2 x i8] c"\091", [2 x i8] c"\F9d", [2 x i8] c"\095", [2 x i8] c"\025", [2 x i8] c"\055", [2 x i8] c"\FE=", [2 x i8] c"\008", [2 x i8] c"\008", [2 x i8] c"\F3?", [2 x i8] c"\FB<", [2 x i8] c"\FF>", [2 x i8] c"\049", [2 x i8] c"\FAE", [2 x i8] c"\049", [2 x i8] c"\0E'", [2 x i8] c"\043", [2 x i8] c"\0DD", [2 x i8] c"\03@", [2 x i8] c"\01=", [2 x i8] c"\09?", [2 x i8] c"\072", [2 x i8] c"\10'", [2 x i8] c"\05,", [2 x i8] c"\044", [2 x i8] c"\0B0", [2 x i8] c"\FB<", [2 x i8] c"\FF;", [2 x i8] c"\00;", [2 x i8] c"\16!", [2 x i8] c"\05,", [2 x i8] c"\0E+", [2 x i8] c"\FFN", [2 x i8] c"\00<", [2 x i8] c"\09E", [2 x i8] c"\0B\1C", [2 x i8] c"\02(", [2 x i8] c"\03,", [2 x i8] c"\001", [2 x i8] c"\00.", [2 x i8] c"\02,", [2 x i8] c"\023", [2 x i8] c"\00/", [2 x i8] c"\04'", [2 x i8] c"\02>", [2 x i8] c"\06.", [2 x i8] c"\006", [2 x i8] c"\036", [2 x i8] c"\02:", [2 x i8] c"\04?", [2 x i8] c"\063", [2 x i8] c"\069", [2 x i8] c"\075", [2 x i8] c"\064", [2 x i8] c"\067", [2 x i8] c"\0B-", [2 x i8] c"\0E$", [2 x i8] c"\085", [2 x i8] c"\FFR", [2 x i8] c"\077", [2 x i8] c"\FDN", [2 x i8] c"\0F.", [2 x i8] c"\16\1F", [2 x i8] c"\FFT", [2 x i8] c"\19\07", [2 x i8] c"\1E\F9", [2 x i8] c"\1C\03", [2 x i8] c"\1C\04", [2 x i8] c" \00", [2 x i8] c"\22\FF", [2 x i8] c"\1E\06", [2 x i8] c"\1E\06", [2 x i8] c" \09", [2 x i8] c"\1F\13", [2 x i8] c"\1A\1B", [2 x i8] c"\1A\1E", [2 x i8] c"%\14", [2 x i8] c"\1C\22", [2 x i8] c"\11F", [2 x i8] c"\01C", [2 x i8] c"\05;", [2 x i8] c"\09C", [2 x i8] c"\10\1E", [2 x i8] c"\12 ", [2 x i8] c"\12#", [2 x i8] c"\16\1D", [2 x i8] c"\18\1F", [2 x i8] c"\17&", [2 x i8] c"\12+", [2 x i8] c"\14)", [2 x i8] c"\0B?", [2 x i8] c"\09;", [2 x i8] c"\09@", [2 x i8] c"\FF^", [2 x i8] c"\FEY", [2 x i8] c"\F7l", [2 x i8] c"\FAL", [2 x i8] c"\FE,", [2 x i8] c"\00-", [2 x i8] c"\004", [2 x i8] c"\FD@", [2 x i8] c"\FE;", [2 x i8] c"\FCF", [2 x i8] c"\FCK", [2 x i8] c"\F8R", [2 x i8] c"\EFf", [2 x i8] c"\F7M", [2 x i8] c"\03\18", [2 x i8] c"\00*", [2 x i8] c"\000", [2 x i8] c"\007", [2 x i8] c"\FA;", [2 x i8] c"\F9G", [2 x i8] c"\F4S", [2 x i8] c"\F5W", [2 x i8] c"\E2w", [2 x i8] c"\01:", [2 x i8] c"\FD\1D", [2 x i8] c"\FF$", [2 x i8] c"\01&", [2 x i8] c"\02+", [2 x i8] c"\FA7", [2 x i8] c"\00:", [2 x i8] c"\00@", [2 x i8] c"\FDJ", [2 x i8] c"\F6Z", [2 x i8] c"\00F", [2 x i8] c"\FC\1D", [2 x i8] c"\05\1F", [2 x i8] c"\07*", [2 x i8] c"\01;", [2 x i8] c"\FE:", [2 x i8] c"\FDH", [2 x i8] c"\FDQ", [2 x i8] c"\F5a", [2 x i8] c"\00:", [2 x i8] c"\08\05", [2 x i8] c"\0A\0E", [2 x i8] c"\0E\12", [2 x i8] c"\0D\1B", [2 x i8] c"\02(", [2 x i8] c"\00:", [2 x i8] c"\FDF", [2 x i8] c"\FAO", [2 x i8] c"\F8U", [2 x i8] zeroinitializer, [2 x i8] c"\F3j", [2 x i8] c"\F0j", [2 x i8] c"\F6W", [2 x i8] c"\EBr", [2 x i8] c"\EEn", [2 x i8] c"\F2b", [2 x i8] c"\EAn", [2 x i8] c"\EBj", [2 x i8] c"\EEg", [2 x i8] c"\EBk", [2 x i8] c"\E9l", [2 x i8] c"\E6p", [2 x i8] c"\F6`", [2 x i8] c"\F4_", [2 x i8] c"\FB[", [2 x i8] c"\F7]", [2 x i8] c"\EA^", [2 x i8] c"\FBV", [2 x i8] c"\09C", [2 x i8] c"\FCP", [2 x i8] c"\F6U", [2 x i8] c"\FFF", [2 x i8] c"\07<", [2 x i8] c"\09:", [2 x i8] c"\05=", [2 x i8] c"\0C2", [2 x i8] c"\0F2", [2 x i8] c"\121", [2 x i8] c"\116", [2 x i8] c"\0A)", [2 x i8] c"\07.", [2 x i8] c"\FF3", [2 x i8] c"\071", [2 x i8] c"\084", [2 x i8] c"\09)", [2 x i8] c"\06/", [2 x i8] c"\027", [2 x i8] c"\0D)", [2 x i8] c"\0A,", [2 x i8] c"\062", [2 x i8] c"\055", [2 x i8] c"\0D1", [2 x i8] c"\04?", [2 x i8] c"\06@", [2 x i8] c"\FEE", [2 x i8] c"\FE;", [2 x i8] c"\06F", [2 x i8] c"\0A,", [2 x i8] c"\09\1F", [2 x i8] c"\0C+", [2 x i8] c"\035", [2 x i8] c"\0E\22", [2 x i8] c"\0A&", [2 x i8] c"\FD4", [2 x i8] c"\0D(", [2 x i8] c"\11 ", [2 x i8] c"\07,", [2 x i8] c"\07&", [2 x i8] c"\0D2", [2 x i8] c"\0A9", [2 x i8] c"\1A+", [2 x i8] c"\0E\0B", [2 x i8] c"\0B\0E", [2 x i8] c"\09\0B", [2 x i8] c"\12\0B", [2 x i8] c"\15\09", [2 x i8] c"\17\FE", [2 x i8] c" \F1", [2 x i8] c" \F1", [2 x i8] c"\22\EB", [2 x i8] c"'\E9", [2 x i8] c"*\DF", [2 x i8] c")\E1", [2 x i8] c".\E4", [2 x i8] c"&\F4", [2 x i8] c"\15\1D", [2 x i8] c"-\E8", [2 x i8] c"5\D3", [2 x i8] c"0\E6", [2 x i8] c"A\D5", [2 x i8] c"+\ED", [2 x i8] c"'\F6", [2 x i8] c"\1E\09", [2 x i8] c"\12\1A", [2 x i8] c"\14\1B", [2 x i8] c"\009", [2 x i8] c"\F2R", [2 x i8] c"\FBK", [2 x i8] c"\EDa", [2 x i8] c"\DD}", [2 x i8] c"\1B\00", [2 x i8] c"\1C\00", [2 x i8] c"\1F\FC", [2 x i8] c"\1B\06", [2 x i8] c"\22\08", [2 x i8] c"\1E\0A", [2 x i8] c"\18\16", [2 x i8] c"!\13", [2 x i8] c"\16 ", [2 x i8] c"\1A\1F", [2 x i8] c"\15)", [2 x i8] c"\1A,", [2 x i8] c"\17/", [2 x i8] c"\10A", [2 x i8] c"\0EG", [2 x i8] c"\08<", [2 x i8] c"\06?", [2 x i8] c"\11A", [2 x i8] c"\15\18", [2 x i8] c"\17\14", [2 x i8] c"\1A\17", [2 x i8] c"\1B ", [2 x i8] c"\1C\17", [2 x i8] c"\1C\18", [2 x i8] c"\17(", [2 x i8] c"\18 ", [2 x i8] c"\1C\1D", [2 x i8] c"\17*", [2 x i8] c"\139", [2 x i8] c"\165", [2 x i8] c"\16=", [2 x i8] c"\0BV", [2 x i8] c"\0C(", [2 x i8] c"\0B3", [2 x i8] c"\0E;", [2 x i8] c"\FCO", [2 x i8] c"\F9G", [2 x i8] c"\FBE", [2 x i8] c"\F7F", [2 x i8] c"\F8B", [2 x i8] c"\F6D", [2 x i8] c"\EDI", [2 x i8] c"\F4E", [2 x i8] c"\F0F", [2 x i8] c"\F1C", [2 x i8] c"\EC>", [2 x i8] c"\EDF", [2 x i8] c"\F0B", [2 x i8] c"\EAA", [2 x i8] c"\EC?", [2 x i8] c"\09\FE", [2 x i8] c"\1A\F7", [2 x i8] c"!\F7", [2 x i8] c"'\F9", [2 x i8] c")\FE", [2 x i8] c"-\03", [2 x i8] c"1\09", [2 x i8] c"-\1B", [2 x i8] c"$;", [2 x i8] c"\FAB", [2 x i8] c"\F9#", [2 x i8] c"\F9*", [2 x i8] c"\F8-", [2 x i8] c"\FB0", [2 x i8] c"\F48", [2 x i8] c"\FA<", [2 x i8] c"\FB>", [2 x i8] c"\F8B", [2 x i8] c"\F8L", [2 x i8] c"\FBU", [2 x i8] c"\FAQ", [2 x i8] c"\F6M", [2 x i8] c"\F9Q", [2 x i8] c"\EFP", [2 x i8] c"\EEI", [2 x i8] c"\FCJ", [2 x i8] c"\F6S", [2 x i8] c"\F7G", [2 x i8] c"\F7C", [2 x i8] c"\FF=", [2 x i8] c"\F8B", [2 x i8] c"\F2B", [2 x i8] c"\00;", [2 x i8] c"\02;", [2 x i8] c"\15\F3", [2 x i8] c"!\F2", [2 x i8] c"'\F9", [2 x i8] c".\FE", [2 x i8] c"3\02", [2 x i8] c"<\06", [2 x i8] c"=\11", [2 x i8] c"7\22", [2 x i8] c"*>"], [460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\16\19", [2 x i8] c"\22\00", [2 x i8] c"\10\00", [2 x i8] c"\FE\09", [2 x i8] c"\04)", [2 x i8] c"\E3v", [2 x i8] c"\02A", [2 x i8] c"\FAG", [2 x i8] c"\F3O", [2 x i8] c"\054", [2 x i8] c"\092", [2 x i8] c"\FDF", [2 x i8] c"\0A6", [2 x i8] c"\1A\22", [2 x i8] c"\13\16", [2 x i8] c"(\00", [2 x i8] c"9\02", [2 x i8] c")$", [2 x i8] c"\1AE", [2 x i8] c"\D3\7F", [2 x i8] c"\F1e", [2 x i8] c"\FCL", [2 x i8] c"\FAG", [2 x i8] c"\F3O", [2 x i8] c"\054", [2 x i8] c"\06E", [2 x i8] c"\F3Z", [2 x i8] c"\004", [2 x i8] c"\08+", [2 x i8] c"\FEE", [2 x i8] c"\FBR", [2 x i8] c"\F6`", [2 x i8] c"\02;", [2 x i8] c"\02K", [2 x i8] c"\FDW", [2 x i8] c"\FDd", [2 x i8] c"\018", [2 x i8] c"\FDJ", [2 x i8] c"\FAU", [2 x i8] c"\00;", [2 x i8] c"\FDQ", [2 x i8] c"\F9V", [2 x i8] c"\FB_", [2 x i8] c"\FFB", [2 x i8] c"\FFM", [2 x i8] c"\01F", [2 x i8] c"\FEV", [2 x i8] c"\FBH", [2 x i8] c"\00=", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\0D\0F", [2 x i8] c"\073", [2 x i8] c"\02P", [2 x i8] c"\D9\7F", [2 x i8] c"\EE[", [2 x i8] c"\EF`", [2 x i8] c"\E6Q", [2 x i8] c"\DDb", [2 x i8] c"\E8f", [2 x i8] c"\E9a", [2 x i8] c"\E5w", [2 x i8] c"\E8c", [2 x i8] c"\EBn", [2 x i8] c"\EEf", [2 x i8] c"\DC\7F", [2 x i8] c"\00P", [2 x i8] c"\FBY", [2 x i8] c"\F9^", [2 x i8] c"\FC\\", [2 x i8] c"\00'", [2 x i8] c"\00A", [2 x i8] c"\F1T", [2 x i8] c"\DD\7F", [2 x i8] c"\FEI", [2 x i8] c"\F4h", [2 x i8] c"\F7[", [2 x i8] c"\E1\7F", [2 x i8] c"\037", [2 x i8] c"\078", [2 x i8] c"\077", [2 x i8] c"\08=", [2 x i8] c"\FD5", [2 x i8] c"\00D", [2 x i8] c"\F9J", [2 x i8] c"\F7X", [2 x i8] c"\F3g", [2 x i8] c"\F3[", [2 x i8] c"\F7Y", [2 x i8] c"\F2\\", [2 x i8] c"\F8L", [2 x i8] c"\F4W", [2 x i8] c"\E9n", [2 x i8] c"\E8i", [2 x i8] c"\F6N", [2 x i8] c"\ECp", [2 x i8] c"\EFc", [2 x i8] c"\B2\7F", [2 x i8] c"\BA\7F", [2 x i8] c"\CE\7F", [2 x i8] c"\D2\7F", [2 x i8] c"\FCB", [2 x i8] c"\FBN", [2 x i8] c"\FCG", [2 x i8] c"\F8H", [2 x i8] c"\02;", [2 x i8] c"\FF7", [2 x i8] c"\F9F", [2 x i8] c"\FAK", [2 x i8] c"\F8Y", [2 x i8] c"\DEw", [2 x i8] c"\FDK", [2 x i8] c" \14", [2 x i8] c"\1E\16", [2 x i8] c"\D4\7F", [2 x i8] c"\006", [2 x i8] c"\FB=", [2 x i8] c"\00:", [2 x i8] c"\FF<", [2 x i8] c"\FD=", [2 x i8] c"\F8C", [2 x i8] c"\E7T", [2 x i8] c"\F2J", [2 x i8] c"\FBA", [2 x i8] c"\054", [2 x i8] c"\029", [2 x i8] c"\00=", [2 x i8] c"\F7E", [2 x i8] c"\F5F", [2 x i8] c"\127", [2 x i8] c"\FCG", [2 x i8] c"\00:", [2 x i8] c"\07=", [2 x i8] c"\09)", [2 x i8] c"\12\19", [2 x i8] c"\09 ", [2 x i8] c"\05+", [2 x i8] c"\09/", [2 x i8] c"\00,", [2 x i8] c"\003", [2 x i8] c"\02.", [2 x i8] c"\13&", [2 x i8] c"\FCB", [2 x i8] c"\0F&", [2 x i8] c"\0C*", [2 x i8] c"\09\22", [2 x i8] c"\00Y", [2 x i8] c"\04-", [2 x i8] c"\0A\1C", [2 x i8] c"\0A\1F", [2 x i8] c"!\F5", [2 x i8] c"4\D5", [2 x i8] c"\12\0F", [2 x i8] c"\1C\00", [2 x i8] c"#\EA", [2 x i8] c"&\E7", [2 x i8] c"\22\00", [2 x i8] c"'\EE", [2 x i8] c" \F4", [2 x i8] c"f\A2", [2 x i8] zeroinitializer, [2 x i8] c"8\F1", [2 x i8] c"!\FC", [2 x i8] c"\1D\0A", [2 x i8] c"%\FB", [2 x i8] c"3\E3", [2 x i8] c"'\F7", [2 x i8] c"4\DE", [2 x i8] c"E\C6", [2 x i8] c"C\C1", [2 x i8] c",\FB", [2 x i8] c" \07", [2 x i8] c"7\E3", [2 x i8] c" \01", [2 x i8] zeroinitializer, [2 x i8] c"\1B$", [2 x i8] c"!\E7", [2 x i8] c"\22\E2", [2 x i8] c"$\E4", [2 x i8] c"&\E4", [2 x i8] c"&\E5", [2 x i8] c"\22\EE", [2 x i8] c"#\F0", [2 x i8] c"\22\F2", [2 x i8] c" \F8", [2 x i8] c"%\FA", [2 x i8] c"#\00", [2 x i8] c"\1E\0A", [2 x i8] c"\1C\12", [2 x i8] c"\1A\19", [2 x i8] c"\1D)", [2 x i8] c"\00K", [2 x i8] c"\02H", [2 x i8] c"\08M", [2 x i8] c"\0E#", [2 x i8] c"\12\1F", [2 x i8] c"\11#", [2 x i8] c"\15\1E", [2 x i8] c"\11-", [2 x i8] c"\14*", [2 x i8] c"\12-", [2 x i8] c"\1B\1A", [2 x i8] c"\106", [2 x i8] c"\07B", [2 x i8] c"\108", [2 x i8] c"\0BI", [2 x i8] c"\0AC", [2 x i8] c"\F6t", [2 x i8] c"\E9p", [2 x i8] c"\F1G", [2 x i8] c"\F9=", [2 x i8] c"\005", [2 x i8] c"\FBB", [2 x i8] c"\F5M", [2 x i8] c"\F7P", [2 x i8] c"\F7T", [2 x i8] c"\F6W", [2 x i8] c"\DE\7F", [2 x i8] c"\EBe", [2 x i8] c"\FD'", [2 x i8] c"\FB5", [2 x i8] c"\F9=", [2 x i8] c"\F5K", [2 x i8] c"\F1M", [2 x i8] c"\EF[", [2 x i8] c"\E7k", [2 x i8] c"\E7o", [2 x i8] c"\E4z", [2 x i8] c"\F5L", [2 x i8] c"\F6,", [2 x i8] c"\F64", [2 x i8] c"\F69", [2 x i8] c"\F7:", [2 x i8] c"\F0H", [2 x i8] c"\F9E", [2 x i8] c"\FCE", [2 x i8] c"\FBJ", [2 x i8] c"\F7V", [2 x i8] c"\02B", [2 x i8] c"\F7\22", [2 x i8] c"\01 ", [2 x i8] c"\0B\1F", [2 x i8] c"\054", [2 x i8] c"\FE7", [2 x i8] c"\FEC", [2 x i8] c"\00I", [2 x i8] c"\F8Y", [2 x i8] c"\034", [2 x i8] c"\07\04", [2 x i8] c"\0A\08", [2 x i8] c"\11\08", [2 x i8] c"\10\13", [2 x i8] c"\03%", [2 x i8] c"\FF=", [2 x i8] c"\FBI", [2 x i8] c"\FFF", [2 x i8] c"\FCN", [2 x i8] zeroinitializer, [2 x i8] c"\EB~", [2 x i8] c"\E9|", [2 x i8] c"\ECn", [2 x i8] c"\E6~", [2 x i8] c"\E7|", [2 x i8] c"\EFi", [2 x i8] c"\E5y", [2 x i8] c"\E5u", [2 x i8] c"\EFf", [2 x i8] c"\E6u", [2 x i8] c"\E5t", [2 x i8] c"\DFz", [2 x i8] c"\F6_", [2 x i8] c"\F2d", [2 x i8] c"\F8_", [2 x i8] c"\EFo", [2 x i8] c"\E4r", [2 x i8] c"\FAY", [2 x i8] c"\FEP", [2 x i8] c"\FCR", [2 x i8] c"\F7U", [2 x i8] c"\F8Q", [2 x i8] c"\FFH", [2 x i8] c"\05@", [2 x i8] c"\01C", [2 x i8] c"\098", [2 x i8] c"\00E", [2 x i8] c"\01E", [2 x i8] c"\07E", [2 x i8] c"\F9E", [2 x i8] c"\FAC", [2 x i8] c"\F0M", [2 x i8] c"\FE@", [2 x i8] c"\02=", [2 x i8] c"\FAC", [2 x i8] c"\FD@", [2 x i8] c"\029", [2 x i8] c"\FDA", [2 x i8] c"\FDB", [2 x i8] c"\00>", [2 x i8] c"\093", [2 x i8] c"\FFB", [2 x i8] c"\FEG", [2 x i8] c"\FEK", [2 x i8] c"\FFF", [2 x i8] c"\F7H", [2 x i8] c"\0E<", [2 x i8] c"\10%", [2 x i8] c"\00/", [2 x i8] c"\12#", [2 x i8] c"\0B%", [2 x i8] c"\0C)", [2 x i8] c"\0A)", [2 x i8] c"\020", [2 x i8] c"\0C)", [2 x i8] c"\0D)", [2 x i8] c"\00;", [2 x i8] c"\032", [2 x i8] c"\13(", [2 x i8] c"\03B", [2 x i8] c"\122", [2 x i8] c"\13\FA", [2 x i8] c"\12\FA", [2 x i8] c"\0E\00", [2 x i8] c"\1A\F4", [2 x i8] c"\1F\F0", [2 x i8] c"!\E7", [2 x i8] c"!\EA", [2 x i8] c"%\E4", [2 x i8] c"'\E2", [2 x i8] c"*\E2", [2 x i8] c"/\D6", [2 x i8] c"-\DC", [2 x i8] c"1\DE", [2 x i8] c")\EF", [2 x i8] c" \09", [2 x i8] c"E\B9", [2 x i8] c"?\C1", [2 x i8] c"B\C0", [2 x i8] c"M\B6", [2 x i8] c"6\D9", [2 x i8] c"4\DD", [2 x i8] c")\F6", [2 x i8] c"$\00", [2 x i8] c"(\FF", [2 x i8] c"\1E\0E", [2 x i8] c"\1C\1A", [2 x i8] c"\17%", [2 x i8] c"\0C7", [2 x i8] c"\0BA", [2 x i8] c"%\DF", [2 x i8] c"'\DC", [2 x i8] c"(\DB", [2 x i8] c"&\E2", [2 x i8] c".\DF", [2 x i8] c"*\E2", [2 x i8] c"(\E8", [2 x i8] c"1\E3", [2 x i8] c"&\F4", [2 x i8] c"(\F6", [2 x i8] c"&\FD", [2 x i8] c".\FB", [2 x i8] c"\1F\14", [2 x i8] c"\1D\1E", [2 x i8] c"\19,", [2 x i8] c"\0C0", [2 x i8] c"\0B1", [2 x i8] c"\1A-", [2 x i8] c"\16\16", [2 x i8] c"\17\16", [2 x i8] c"\1B\15", [2 x i8] c"!\14", [2 x i8] c"\1A\1C", [2 x i8] c"\1E\18", [2 x i8] c"\1B\22", [2 x i8] c"\12*", [2 x i8] c"\19'", [2 x i8] c"\122", [2 x i8] c"\0CF", [2 x i8] c"\156", [2 x i8] c"\0EG", [2 x i8] c"\0BS", [2 x i8] c"\19 ", [2 x i8] c"\151", [2 x i8] c"\156", [2 x i8] c"\FBU", [2 x i8] c"\FAQ", [2 x i8] c"\F6M", [2 x i8] c"\F9Q", [2 x i8] c"\EFP", [2 x i8] c"\EEI", [2 x i8] c"\FCJ", [2 x i8] c"\F6S", [2 x i8] c"\F7G", [2 x i8] c"\F7C", [2 x i8] c"\FF=", [2 x i8] c"\F8B", [2 x i8] c"\F2B", [2 x i8] c"\00;", [2 x i8] c"\02;", [2 x i8] c"\11\F6", [2 x i8] c" \F3", [2 x i8] c"*\F7", [2 x i8] c"1\FB", [2 x i8] c"5\00", [2 x i8] c"@\03", [2 x i8] c"D\0A", [2 x i8] c"B\1B", [2 x i8] c"/9", [2 x i8] c"\FBG", [2 x i8] c"\00\18", [2 x i8] c"\FF$", [2 x i8] c"\FE*", [2 x i8] c"\FE4", [2 x i8] c"\F79", [2 x i8] c"\FA?", [2 x i8] c"\FCA", [2 x i8] c"\FCC", [2 x i8] c"\F9R", [2 x i8] c"\FDQ", [2 x i8] c"\FDL", [2 x i8] c"\F9H", [2 x i8] c"\FAN", [2 x i8] c"\F4H", [2 x i8] c"\F2D", [2 x i8] c"\FDF", [2 x i8] c"\FAL", [2 x i8] c"\FBB", [2 x i8] c"\FB>", [2 x i8] c"\009", [2 x i8] c"\FC=", [2 x i8] c"\F7<", [2 x i8] c"\016", [2 x i8] c"\02:", [2 x i8] c"\11\F6", [2 x i8] c" \F3", [2 x i8] c"*\F7", [2 x i8] c"1\FB", [2 x i8] c"5\00", [2 x i8] c"@\03", [2 x i8] c"D\0A", [2 x i8] c"B\1B", [2 x i8] c"/9"], [460 x [2 x i8]] [[2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\14\F1", [2 x i8] c"\026", [2 x i8] c"\03J", [2 x i8] c"\E4\7F", [2 x i8] c"\E9h", [2 x i8] c"\FA5", [2 x i8] c"\FF6", [2 x i8] c"\073", [2 x i8] c"\1D\10", [2 x i8] c"\19\00", [2 x i8] c"\0E\00", [2 x i8] c"\F63", [2 x i8] c"\FD>", [2 x i8] c"\E5c", [2 x i8] c"\1A\10", [2 x i8] c"\FCU", [2 x i8] c"\E8f", [2 x i8] c"\059", [2 x i8] c"\069", [2 x i8] c"\EFI", [2 x i8] c"\0E9", [2 x i8] c"\14(", [2 x i8] c"\14\0A", [2 x i8] c"\1D\00", [2 x i8] c"6\00", [2 x i8] c"%*", [2 x i8] c"\0Ca", [2 x i8] c"\E0\7F", [2 x i8] c"\EAu", [2 x i8] c"\FEJ", [2 x i8] c"\FCU", [2 x i8] c"\E8f", [2 x i8] c"\059", [2 x i8] c"\FA]", [2 x i8] c"\F2X", [2 x i8] c"\FA,", [2 x i8] c"\047", [2 x i8] c"\F5Y", [2 x i8] c"\F1g", [2 x i8] c"\EBt", [2 x i8] c"\139", [2 x i8] c"\14:", [2 x i8] c"\04T", [2 x i8] c"\06`", [2 x i8] c"\01?", [2 x i8] c"\FBU", [2 x i8] c"\F3j", [2 x i8] c"\05?", [2 x i8] c"\06K", [2 x i8] c"\FDZ", [2 x i8] c"\FFe", [2 x i8] c"\037", [2 x i8] c"\FCO", [2 x i8] c"\FEK", [2 x i8] c"\F4a", [2 x i8] c"\F92", [2 x i8] c"\01<", [2 x i8] c"\00)", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\00?", [2 x i8] c"\F7S", [2 x i8] c"\04V", [2 x i8] c"\00a", [2 x i8] c"\F9H", [2 x i8] c"\0D)", [2 x i8] c"\03>", [2 x i8] c"\07\22", [2 x i8] c"\F7X", [2 x i8] c"\EC\7F", [2 x i8] c"\DC\7F", [2 x i8] c"\EF[", [2 x i8] c"\F2_", [2 x i8] c"\E7T", [2 x i8] c"\E7V", [2 x i8] c"\F4Y", [2 x i8] c"\EF[", [2 x i8] c"\E1\7F", [2 x i8] c"\F2L", [2 x i8] c"\EEg", [2 x i8] c"\F3Z", [2 x i8] c"\DB\7F", [2 x i8] c"\0BP", [2 x i8] c"\05L", [2 x i8] c"\02T", [2 x i8] c"\05N", [2 x i8] c"\FA7", [2 x i8] c"\04=", [2 x i8] c"\F2S", [2 x i8] c"\DB\7F", [2 x i8] c"\FBO", [2 x i8] c"\F5h", [2 x i8] c"\F5[", [2 x i8] c"\E2\7F", [2 x i8] c"\00A", [2 x i8] c"\FEO", [2 x i8] c"\00H", [2 x i8] c"\FC\\", [2 x i8] c"\FA8", [2 x i8] c"\03D", [2 x i8] c"\F8G", [2 x i8] c"\F3b", [2 x i8] c"\FCV", [2 x i8] c"\F4X", [2 x i8] c"\FBR", [2 x i8] c"\FDH", [2 x i8] c"\FCC", [2 x i8] c"\F8H", [2 x i8] c"\F0Y", [2 x i8] c"\F7E", [2 x i8] c"\FF;", [2 x i8] c"\05B", [2 x i8] c"\049", [2 x i8] c"\FCG", [2 x i8] c"\FEG", [2 x i8] c"\02:", [2 x i8] c"\FFJ", [2 x i8] c"\FC,", [2 x i8] c"\FFE", [2 x i8] c"\00>", [2 x i8] c"\F93", [2 x i8] c"\FC/", [2 x i8] c"\FA*", [2 x i8] c"\FD)", [2 x i8] c"\FA5", [2 x i8] c"\08L", [2 x i8] c"\F7N", [2 x i8] c"\F5S", [2 x i8] c"\094", [2 x i8] c"\00C", [2 x i8] c"\FBZ", [2 x i8] c"\01C", [2 x i8] c"\F1H", [2 x i8] c"\FBK", [2 x i8] c"\F8P", [2 x i8] c"\EBS", [2 x i8] c"\EB@", [2 x i8] c"\F3\1F", [2 x i8] c"\E7@", [2 x i8] c"\E3^", [2 x i8] c"\09K", [2 x i8] c"\11?", [2 x i8] c"\F8J", [2 x i8] c"\FB#", [2 x i8] c"\FE\1B", [2 x i8] c"\0D[", [2 x i8] c"\03A", [2 x i8] c"\F9E", [2 x i8] c"\08M", [2 x i8] c"\F6B", [2 x i8] c"\03>", [2 x i8] c"\FDD", [2 x i8] c"\ECQ", [2 x i8] c"\00\1E", [2 x i8] c"\01\07", [2 x i8] c"\FD\17", [2 x i8] c"\EBJ", [2 x i8] c"\10B", [2 x i8] c"\E9|", [2 x i8] c"\11%", [2 x i8] c",\EE", [2 x i8] c"2\DE", [2 x i8] c"\EA\7F", [2 x i8] c"\04'", [2 x i8] c"\00*", [2 x i8] c"\07\22", [2 x i8] c"\0B\1D", [2 x i8] c"\08\1F", [2 x i8] c"\06%", [2 x i8] c"\07*", [2 x i8] c"\03(", [2 x i8] c"\08!", [2 x i8] c"\0D+", [2 x i8] c"\0D$", [2 x i8] c"\04/", [2 x i8] c"\037", [2 x i8] c"\02:", [2 x i8] c"\06<", [2 x i8] c"\08,", [2 x i8] c"\0B,", [2 x i8] c"\0E*", [2 x i8] c"\070", [2 x i8] c"\048", [2 x i8] c"\044", [2 x i8] c"\0D%", [2 x i8] c"\091", [2 x i8] c"\13:", [2 x i8] c"\0A0", [2 x i8] c"\0C-", [2 x i8] c"\00E", [2 x i8] c"\14!", [2 x i8] c"\08?", [2 x i8] c"#\EE", [2 x i8] c"!\E7", [2 x i8] c"\1C\FD", [2 x i8] c"\18\0A", [2 x i8] c"\1B\00", [2 x i8] c"\22\F2", [2 x i8] c"4\D4", [2 x i8] c"'\E8", [2 x i8] c"\13\11", [2 x i8] c"\1F\19", [2 x i8] c"$\1D", [2 x i8] c"\18!", [2 x i8] c"\22\0F", [2 x i8] c"\1E\14", [2 x i8] c"\16I", [2 x i8] c"\14\22", [2 x i8] c"\13\1F", [2 x i8] c"\1B,", [2 x i8] c"\13\10", [2 x i8] c"\0F$", [2 x i8] c"\0F$", [2 x i8] c"\15\1C", [2 x i8] c"\19\15", [2 x i8] c"\1E\14", [2 x i8] c"\1F\0C", [2 x i8] c"\1B\10", [2 x i8] c"\18*", [2 x i8] c"\00]", [2 x i8] c"\0E8", [2 x i8] c"\0F9", [2 x i8] c"\1A&", [2 x i8] c"\E8\7F", [2 x i8] c"\E8s", [2 x i8] c"\EAR", [2 x i8] c"\F7>", [2 x i8] c"\005", [2 x i8] c"\00;", [2 x i8] c"\F2U", [2 x i8] c"\F3Y", [2 x i8] c"\F3^", [2 x i8] c"\F5\\", [2 x i8] c"\E3\7F", [2 x i8] c"\EBd", [2 x i8] c"\F29", [2 x i8] c"\F4C", [2 x i8] c"\F5G", [2 x i8] c"\F6M", [2 x i8] c"\EBU", [2 x i8] c"\F0X", [2 x i8] c"\E9h", [2 x i8] c"\F1b", [2 x i8] c"\DB\7F", [2 x i8] c"\F6R", [2 x i8] c"\F80", [2 x i8] c"\F8=", [2 x i8] c"\F8B", [2 x i8] c"\F9F", [2 x i8] c"\F2K", [2 x i8] c"\F6O", [2 x i8] c"\F7S", [2 x i8] c"\F4\\", [2 x i8] c"\EEl", [2 x i8] c"\FCO", [2 x i8] c"\EAE", [2 x i8] c"\F0K", [2 x i8] c"\FE:", [2 x i8] c"\01:", [2 x i8] c"\F3N", [2 x i8] c"\F7S", [2 x i8] c"\FCQ", [2 x i8] c"\F3c", [2 x i8] c"\F3Q", [2 x i8] c"\FA&", [2 x i8] c"\F3>", [2 x i8] c"\FA:", [2 x i8] c"\FE;", [2 x i8] c"\F0I", [2 x i8] c"\F6L", [2 x i8] c"\F3V", [2 x i8] c"\F7S", [2 x i8] c"\F6W", [2 x i8] zeroinitializer, [2 x i8] c"\EA\7F", [2 x i8] c"\E7\7F", [2 x i8] c"\E7x", [2 x i8] c"\E5\7F", [2 x i8] c"\EDr", [2 x i8] c"\E9u", [2 x i8] c"\E7v", [2 x i8] c"\E6u", [2 x i8] c"\E8q", [2 x i8] c"\E4v", [2 x i8] c"\E1x", [2 x i8] c"\DB|", [2 x i8] c"\F6^", [2 x i8] c"\F1f", [2 x i8] c"\F6c", [2 x i8] c"\F3j", [2 x i8] c"\CE\7F", [2 x i8] c"\FB\\", [2 x i8] c"\119", [2 x i8] c"\FBV", [2 x i8] c"\F3^", [2 x i8] c"\F4[", [2 x i8] c"\FEM", [2 x i8] c"\00G", [2 x i8] c"\FFI", [2 x i8] c"\04@", [2 x i8] c"\F9Q", [2 x i8] c"\05@", [2 x i8] c"\0F9", [2 x i8] c"\01C", [2 x i8] c"\00D", [2 x i8] c"\F6C", [2 x i8] c"\01D", [2 x i8] c"\00M", [2 x i8] c"\02@", [2 x i8] c"\00D", [2 x i8] c"\FBN", [2 x i8] c"\077", [2 x i8] c"\05;", [2 x i8] c"\02A", [2 x i8] c"\0E6", [2 x i8] c"\0F,", [2 x i8] c"\05<", [2 x i8] c"\02F", [2 x i8] c"\FEL", [2 x i8] c"\EEV", [2 x i8] c"\0CF", [2 x i8] c"\05@", [2 x i8] c"\F4F", [2 x i8] c"\0B7", [2 x i8] c"\058", [2 x i8] c"\00E", [2 x i8] c"\02A", [2 x i8] c"\FAJ", [2 x i8] c"\056", [2 x i8] c"\076", [2 x i8] c"\FAL", [2 x i8] c"\F5R", [2 x i8] c"\FEM", [2 x i8] c"\FEM", [2 x i8] c"\19*", [2 x i8] c"\11\F3", [2 x i8] c"\10\F7", [2 x i8] c"\11\F4", [2 x i8] c"\1B\EB", [2 x i8] c"%\E2", [2 x i8] c")\D8", [2 x i8] c"*\D7", [2 x i8] c"0\D1", [2 x i8] c"'\E0", [2 x i8] c".\D8", [2 x i8] c"4\CD", [2 x i8] c".\D7", [2 x i8] c"4\D9", [2 x i8] c"+\ED", [2 x i8] c" \0B", [2 x i8] c"=\C9", [2 x i8] c"8\D2", [2 x i8] c">\CE", [2 x i8] c"Q\BD", [2 x i8] c"-\EC", [2 x i8] c"#\FE", [2 x i8] c"\1C\0F", [2 x i8] c"\22\01", [2 x i8] c"'\01", [2 x i8] c"\1E\11", [2 x i8] c"\14&", [2 x i8] c"\12-", [2 x i8] c"\0F6", [2 x i8] c"\00O", [2 x i8] c"$\F0", [2 x i8] c"%\F2", [2 x i8] c"%\EF", [2 x i8] c" \01", [2 x i8] c"\22\0F", [2 x i8] c"\1D\0F", [2 x i8] c"\18\19", [2 x i8] c"\22\16", [2 x i8] c"\1F\10", [2 x i8] c"#\12", [2 x i8] c"\1F\1C", [2 x i8] c"!)", [2 x i8] c"$\1C", [2 x i8] c"\1B/", [2 x i8] c"\15>", [2 x i8] c"\12\1F", [2 x i8] c"\13\1A", [2 x i8] c"$\18", [2 x i8] c"\18\17", [2 x i8] c"\1B\10", [2 x i8] c"\18\1E", [2 x i8] c"\1F\1D", [2 x i8] c"\16)", [2 x i8] c"\16*", [2 x i8] c"\10<", [2 x i8] c"\0F4", [2 x i8] c"\0E<", [2 x i8] c"\03N", [2 x i8] c"\F0{", [2 x i8] c"\155", [2 x i8] c"\168", [2 x i8] c"\19=", [2 x i8] c"\15!", [2 x i8] c"\132", [2 x i8] c"\11=", [2 x i8] c"\FDN", [2 x i8] c"\F8J", [2 x i8] c"\F7H", [2 x i8] c"\F6H", [2 x i8] c"\EEK", [2 x i8] c"\F4G", [2 x i8] c"\F5?", [2 x i8] c"\FBF", [2 x i8] c"\EFK", [2 x i8] c"\F2H", [2 x i8] c"\F0C", [2 x i8] c"\F85", [2 x i8] c"\F2;", [2 x i8] c"\F74", [2 x i8] c"\F5D", [2 x i8] c"\09\FE", [2 x i8] c"\1E\F6", [2 x i8] c"\1F\FC", [2 x i8] c"!\FF", [2 x i8] c"!\07", [2 x i8] c"\1F\0C", [2 x i8] c"%\17", [2 x i8] c"\1F&", [2 x i8] c"\14@", [2 x i8] c"\F7G", [2 x i8] c"\F9%", [2 x i8] c"\F8,", [2 x i8] c"\F51", [2 x i8] c"\F68", [2 x i8] c"\F4;", [2 x i8] c"\F8?", [2 x i8] c"\F7C", [2 x i8] c"\FAD", [2 x i8] c"\F6O", [2 x i8] c"\FDN", [2 x i8] c"\F8J", [2 x i8] c"\F7H", [2 x i8] c"\F6H", [2 x i8] c"\EEK", [2 x i8] c"\F4G", [2 x i8] c"\F5?", [2 x i8] c"\FBF", [2 x i8] c"\EFK", [2 x i8] c"\F2H", [2 x i8] c"\F0C", [2 x i8] c"\F85", [2 x i8] c"\F2;", [2 x i8] c"\F74", [2 x i8] c"\F5D", [2 x i8] c"\09\FE", [2 x i8] c"\1E\F6", [2 x i8] c"\1F\FC", [2 x i8] c"!\FF", [2 x i8] c"!\07", [2 x i8] c"\1F\0C", [2 x i8] c"%\17", [2 x i8] c"\1F&", [2 x i8] c"\14@"]], align 16, !dbg !51

; Function Attrs: argmemonly nofree nosync nounwind writeonly uwtable
define dso_local void @x264_cabac_context_init(ptr nocapture noundef writeonly %cb, i32 noundef %i_slice_type, i32 noundef %i_qp, i32 noundef %i_model) local_unnamed_addr #0 !dbg !66 {
entry:
  call void @llvm.dbg.value(metadata ptr %cb, metadata !88, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 %i_slice_type, metadata !89, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 %i_qp, metadata !90, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 %i_model, metadata !91, metadata !DIExpression()), !dbg !99
  %cmp = icmp eq i32 %i_slice_type, 2, !dbg !100
  br i1 %cmp, label %if.end, label %if.else, !dbg !102

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %i_model to i64, !dbg !103
  %arrayidx = getelementptr inbounds [3 x [460 x [2 x i8]]], ptr @x264_cabac_context_init_PB, i64 0, i64 %idxprom, !dbg !103
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !92, metadata !DIExpression()), !dbg !99
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %cabac_context_init.0 = phi ptr [ %arrayidx, %if.else ], [ @x264_cabac_context_init_I, %entry ], !dbg !104
  call void @llvm.dbg.value(metadata ptr %cabac_context_init.0, metadata !92, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.value(metadata i32 0, metadata !94, metadata !DIExpression()), !dbg !105
  br label %for.body, !dbg !106

for.cond.cleanup:                                 ; preds = %for.body
  ret void, !dbg !107

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !94, metadata !DIExpression()), !dbg !105
  %arrayidx3 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %indvars.iv, !dbg !108
  %0 = load i8, ptr %arrayidx3, align 1, !dbg !108, !tbaa !109
  %conv = sext i8 %0 to i32, !dbg !108
  %mul = mul nsw i32 %conv, %i_qp, !dbg !112
  %shr = ashr i32 %mul, 4, !dbg !113
  %arrayidx7 = getelementptr inbounds [460 x [2 x i8]], ptr %cabac_context_init.0, i64 0, i64 %indvars.iv, i64 1, !dbg !114
  %1 = load i8, ptr %arrayidx7, align 1, !dbg !114, !tbaa !109
  %conv8 = sext i8 %1 to i32, !dbg !114
  %add = add nsw i32 %shr, %conv8, !dbg !115
  call void @llvm.dbg.value(metadata i32 %add, metadata !116, metadata !DIExpression()) #4, !dbg !123
  call void @llvm.dbg.value(metadata i32 1, metadata !121, metadata !DIExpression()) #4, !dbg !123
  call void @llvm.dbg.value(metadata i32 126, metadata !122, metadata !DIExpression()) #4, !dbg !123
  %cmp.i = icmp slt i32 %add, 1, !dbg !125
  %2 = tail call i32 @llvm.umin.i32(i32 %add, i32 126) #4
  %spec.select.i = select i1 %cmp.i, i32 1, i32 %2, !dbg !126
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !96, metadata !DIExpression()), !dbg !127
  %sub = xor i32 %spec.select.i, 127, !dbg !128
  %3 = tail call i32 @llvm.umin.i32(i32 %spec.select.i, i32 %sub), !dbg !128
  %shl = shl nuw nsw i32 %3, 1, !dbg !129
  %4 = lshr i32 %spec.select.i, 6, !dbg !130
  %or = or i32 %shl, %4, !dbg !131
  %conv13 = trunc i32 %or to i8, !dbg !132
  %arrayidx16 = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 9, i64 %indvars.iv, !dbg !133
  store i8 %conv13, ptr %arrayidx16, align 1, !dbg !134, !tbaa !109
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !135
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !94, metadata !DIExpression()), !dbg !105
  %exitcond.not = icmp eq i64 %indvars.iv.next, 460, !dbg !136
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !106, !llvm.loop !137
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_cabac_encode_init_core(ptr nocapture noundef writeonly %cb) local_unnamed_addr #1 !dbg !141 {
entry:
  call void @llvm.dbg.value(metadata ptr %cb, metadata !145, metadata !DIExpression()), !dbg !146
  store i32 0, ptr %cb, align 16, !dbg !147, !tbaa !148
  %i_range = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 1, !dbg !152
  store i32 510, ptr %i_range, align 4, !dbg !153, !tbaa !154
  %i_queue = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 2, !dbg !155
  store i32 -9, ptr %i_queue, align 8, !dbg !156, !tbaa !157
  %i_bytes_outstanding = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !158
  store i32 0, ptr %i_bytes_outstanding, align 4, !dbg !159, !tbaa !160
  ret void, !dbg !161
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_cabac_encode_init(ptr nocapture noundef writeonly %cb, ptr noundef %p_data, ptr noundef %p_end) local_unnamed_addr #1 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata ptr %cb, metadata !166, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata ptr %p_data, metadata !167, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata ptr %p_end, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.value(metadata ptr %cb, metadata !145, metadata !DIExpression()), !dbg !170
  store i32 0, ptr %cb, align 16, !dbg !172, !tbaa !148
  %i_range.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 1, !dbg !173
  store i32 510, ptr %i_range.i, align 4, !dbg !174, !tbaa !154
  %i_queue.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 2, !dbg !175
  store i32 -9, ptr %i_queue.i, align 8, !dbg !176, !tbaa !157
  %i_bytes_outstanding.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !177
  store i32 0, ptr %i_bytes_outstanding.i, align 4, !dbg !178, !tbaa !160
  %p_start = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 4, !dbg !179
  store ptr %p_data, ptr %p_start, align 16, !dbg !180, !tbaa !181
  %p = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 5, !dbg !182
  store ptr %p_data, ptr %p, align 8, !dbg !183, !tbaa !184
  %p_end1 = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 6, !dbg !185
  store ptr %p_end, ptr %p_end1, align 16, !dbg !186, !tbaa !187
  ret void, !dbg !188
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @x264_cabac_encode_decision_c(ptr nocapture noundef %cb, i32 noundef %i_ctx, i32 noundef %b) local_unnamed_addr #2 !dbg !189 {
entry:
  call void @llvm.dbg.value(metadata ptr %cb, metadata !193, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i32 %i_ctx, metadata !194, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i32 %b, metadata !195, metadata !DIExpression()), !dbg !198
  %idxprom = sext i32 %i_ctx to i64, !dbg !199
  %arrayidx = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 9, i64 %idxprom, !dbg !199
  %0 = load i8, ptr %arrayidx, align 1, !dbg !199, !tbaa !109
  %conv = zext i8 %0 to i32, !dbg !199
  call void @llvm.dbg.value(metadata i32 %conv, metadata !196, metadata !DIExpression()), !dbg !198
  %1 = lshr i32 %conv, 1, !dbg !200
  %2 = zext i32 %1 to i64
  %i_range = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 1, !dbg !201
  %3 = load i32, ptr %i_range, align 4, !dbg !201, !tbaa !154
  %shr3 = ashr i32 %3, 6, !dbg !202
  %sub = add nsw i32 %shr3, -4, !dbg !203
  %idxprom4 = sext i32 %sub to i64, !dbg !204
  %arrayidx5 = getelementptr inbounds [64 x [4 x i8]], ptr @x264_cabac_range_lps, i64 0, i64 %2, i64 %idxprom4, !dbg !204
  %4 = load i8, ptr %arrayidx5, align 1, !dbg !204, !tbaa !109
  %conv6 = zext i8 %4 to i32, !dbg !204
  call void @llvm.dbg.value(metadata i32 %conv6, metadata !197, metadata !DIExpression()), !dbg !198
  %sub8 = sub nsw i32 %3, %conv6, !dbg !205
  store i32 %sub8, ptr %i_range, align 4, !dbg !205, !tbaa !154
  %and = and i32 %conv, 1, !dbg !206
  %cmp.not = icmp eq i32 %and, %b, !dbg !208
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !209

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %cb, align 16, !dbg !210, !tbaa !148
  %add = add nsw i32 %5, %sub8, !dbg !210
  store i32 %add, ptr %cb, align 16, !dbg !210, !tbaa !148
  store i32 %conv6, ptr %i_range, align 4, !dbg !212, !tbaa !154
  br label %if.end, !dbg !213

if.end:                                           ; preds = %if.then, %entry
  %6 = zext i8 %0 to i64
  %idxprom14 = sext i32 %b to i64, !dbg !214
  %arrayidx15 = getelementptr inbounds [128 x [2 x i8]], ptr @x264_cabac_transition, i64 0, i64 %6, i64 %idxprom14, !dbg !214
  %7 = load i8, ptr %arrayidx15, align 1, !dbg !214, !tbaa !109
  store i8 %7, ptr %arrayidx, align 1, !dbg !215, !tbaa !109
  call void @llvm.dbg.value(metadata ptr %cb, metadata !216, metadata !DIExpression()), !dbg !220
  %8 = load i32, ptr %i_range, align 4, !dbg !222, !tbaa !154
  %shr.i = ashr i32 %8, 3, !dbg !223
  %idxprom.i = sext i32 %shr.i to i64, !dbg !224
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @x264_cabac_renorm_shift, i64 0, i64 %idxprom.i, !dbg !224
  %9 = load i8, ptr %arrayidx.i, align 1, !dbg !224, !tbaa !109
  %conv.i = zext i8 %9 to i32, !dbg !224
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !219, metadata !DIExpression()), !dbg !220
  %shl.i = shl i32 %8, %conv.i, !dbg !225
  store i32 %shl.i, ptr %i_range, align 4, !dbg !225, !tbaa !154
  %10 = load i32, ptr %cb, align 16, !dbg !226, !tbaa !148
  %shl2.i = shl i32 %10, %conv.i, !dbg !226
  store i32 %shl2.i, ptr %cb, align 16, !dbg !226, !tbaa !148
  %i_queue.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 2, !dbg !227
  %11 = load i32, ptr %i_queue.i, align 8, !dbg !228, !tbaa !157
  %add.i = add nsw i32 %11, %conv.i, !dbg !228
  store i32 %add.i, ptr %i_queue.i, align 8, !dbg !228, !tbaa !157
  call void @llvm.dbg.value(metadata ptr %cb, metadata !229, metadata !DIExpression()), !dbg !239
  %cmp.i.i = icmp sgt i32 %add.i, -1, !dbg !241
  br i1 %cmp.i.i, label %if.then.i.i, label %x264_cabac_encode_renorm.exit, !dbg !242

if.then.i.i:                                      ; preds = %if.end
  %add.i.i = add nuw nsw i32 %add.i, 10, !dbg !243
  %shr.i.i = ashr i32 %shl2.i, %add.i.i, !dbg !244
  call void @llvm.dbg.value(metadata i32 %shr.i.i, metadata !232, metadata !DIExpression()), !dbg !245
  %shl.i.i = shl i32 1024, %add.i, !dbg !246
  %sub.i.i = add nsw i32 %shl.i.i, -1, !dbg !247
  %and.i.i = and i32 %sub.i.i, %shl2.i, !dbg !248
  store i32 %and.i.i, ptr %cb, align 16, !dbg !248, !tbaa !148
  %sub5.i.i = add nsw i32 %add.i, -8, !dbg !249
  store i32 %sub5.i.i, ptr %i_queue.i, align 8, !dbg !249, !tbaa !157
  %and6.i.i = and i32 %shr.i.i, 255, !dbg !250
  %cmp7.i.i = icmp eq i32 %and6.i.i, 255, !dbg !251
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else.i.i, !dbg !252

if.then8.i.i:                                     ; preds = %if.then.i.i
  %i_bytes_outstanding.i.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !253
  %12 = load i32, ptr %i_bytes_outstanding.i.i, align 4, !dbg !254, !tbaa !160
  %inc.i.i = add nsw i32 %12, 1, !dbg !254
  store i32 %inc.i.i, ptr %i_bytes_outstanding.i.i, align 4, !dbg !254, !tbaa !160
  br label %x264_cabac_encode_renorm.exit, !dbg !255

if.else.i.i:                                      ; preds = %if.then.i.i
  %13 = lshr i32 %shr.i.i, 8, !dbg !256
  call void @llvm.dbg.value(metadata i32 %shr.i.i, metadata !235, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value)), !dbg !257
  %i_bytes_outstanding10.i.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !258
  %14 = load i32, ptr %i_bytes_outstanding10.i.i, align 4, !dbg !258, !tbaa !160
  call void @llvm.dbg.value(metadata i32 %14, metadata !238, metadata !DIExpression()), !dbg !257
  %p.i.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 5, !dbg !259
  %15 = load ptr, ptr %p.i.i, align 8, !dbg !259, !tbaa !184
  %arrayidx.i.i = getelementptr inbounds i8, ptr %15, i64 -1, !dbg !260
  %16 = load i8, ptr %arrayidx.i.i, align 1, !dbg !261, !tbaa !109
  %17 = trunc i32 %13 to i8, !dbg !261
  %conv12.i.i = add i8 %16, %17, !dbg !261
  store i8 %conv12.i.i, ptr %arrayidx.i.i, align 1, !dbg !261, !tbaa !109
  call void @llvm.dbg.value(metadata i32 %14, metadata !238, metadata !DIExpression()), !dbg !257
  %cmp1338.i.i = icmp sgt i32 %14, 0, !dbg !262
  br i1 %cmp1338.i.i, label %while.body.lr.ph.i.i, label %while.end.i.i, !dbg !263

while.body.lr.ph.i.i:                             ; preds = %if.else.i.i
  %conv16.i.i = add i8 %17, -1
  br label %while.body.i.i, !dbg !263

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.lr.ph.i.i
  %bytes_outstanding.039.i.i = phi i32 [ %14, %while.body.lr.ph.i.i ], [ %dec.i.i, %while.body.i.i ]
  call void @llvm.dbg.value(metadata i32 %bytes_outstanding.039.i.i, metadata !238, metadata !DIExpression()), !dbg !257
  %18 = load ptr, ptr %p.i.i, align 8, !dbg !264, !tbaa !184
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %18, i64 1, !dbg !264
  store ptr %incdec.ptr.i.i, ptr %p.i.i, align 8, !dbg !264, !tbaa !184
  store i8 %conv16.i.i, ptr %18, align 1, !dbg !266, !tbaa !109
  %dec.i.i = add nsw i32 %bytes_outstanding.039.i.i, -1, !dbg !267
  call void @llvm.dbg.value(metadata i32 %dec.i.i, metadata !238, metadata !DIExpression()), !dbg !257
  %cmp13.i.i = icmp ugt i32 %bytes_outstanding.039.i.i, 1, !dbg !262
  br i1 %cmp13.i.i, label %while.body.i.i, label %while.end.i.i, !dbg !263, !llvm.loop !268

while.end.i.i:                                    ; preds = %while.body.i.i, %if.else.i.i
  %conv18.i.i = trunc i32 %shr.i.i to i8, !dbg !270
  %19 = load ptr, ptr %p.i.i, align 8, !dbg !271, !tbaa !184
  %incdec.ptr20.i.i = getelementptr inbounds i8, ptr %19, i64 1, !dbg !271
  store ptr %incdec.ptr20.i.i, ptr %p.i.i, align 8, !dbg !271, !tbaa !184
  store i8 %conv18.i.i, ptr %19, align 1, !dbg !272, !tbaa !109
  store i32 0, ptr %i_bytes_outstanding10.i.i, align 4, !dbg !273, !tbaa !160
  br label %x264_cabac_encode_renorm.exit

x264_cabac_encode_renorm.exit:                    ; preds = %if.end, %if.then8.i.i, %while.end.i.i
  ret void, !dbg !274
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @x264_cabac_encode_bypass_c(ptr nocapture noundef %cb, i32 noundef %b) local_unnamed_addr #2 !dbg !275 {
entry:
  call void @llvm.dbg.value(metadata ptr %cb, metadata !279, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.value(metadata i32 %b, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i32, ptr %cb, align 16, !dbg !282, !tbaa !148
  %shl = shl i32 %0, 1, !dbg !282
  %sub = sub nsw i32 0, %b, !dbg !283
  %i_range = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 1, !dbg !284
  %1 = load i32, ptr %i_range, align 4, !dbg !284, !tbaa !154
  %and = and i32 %1, %sub, !dbg !285
  %add = add nsw i32 %and, %shl, !dbg !286
  store i32 %add, ptr %cb, align 16, !dbg !286, !tbaa !148
  %i_queue = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 2, !dbg !287
  %2 = load i32, ptr %i_queue, align 8, !dbg !288, !tbaa !157
  %add2 = add nsw i32 %2, 1, !dbg !288
  store i32 %add2, ptr %i_queue, align 8, !dbg !288, !tbaa !157
  call void @llvm.dbg.value(metadata ptr %cb, metadata !229, metadata !DIExpression()), !dbg !289
  %cmp.i = icmp sgt i32 %2, -2, !dbg !291
  br i1 %cmp.i, label %if.then.i, label %x264_cabac_putbyte.exit, !dbg !292

if.then.i:                                        ; preds = %entry
  %add.i = add nsw i32 %2, 11, !dbg !293
  %shr.i = ashr i32 %add, %add.i, !dbg !294
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !232, metadata !DIExpression()), !dbg !295
  %shl.i = shl i32 1024, %add2, !dbg !296
  %sub.i = add nsw i32 %shl.i, -1, !dbg !297
  %and.i = and i32 %sub.i, %add, !dbg !298
  store i32 %and.i, ptr %cb, align 16, !dbg !298, !tbaa !148
  %sub5.i = add nsw i32 %2, -7, !dbg !299
  store i32 %sub5.i, ptr %i_queue, align 8, !dbg !299, !tbaa !157
  %and6.i = and i32 %shr.i, 255, !dbg !300
  %cmp7.i = icmp eq i32 %and6.i, 255, !dbg !301
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i, !dbg !302

if.then8.i:                                       ; preds = %if.then.i
  %i_bytes_outstanding.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !303
  %3 = load i32, ptr %i_bytes_outstanding.i, align 4, !dbg !304, !tbaa !160
  %inc.i = add nsw i32 %3, 1, !dbg !304
  store i32 %inc.i, ptr %i_bytes_outstanding.i, align 4, !dbg !304, !tbaa !160
  br label %x264_cabac_putbyte.exit, !dbg !305

if.else.i:                                        ; preds = %if.then.i
  %4 = lshr i32 %shr.i, 8, !dbg !306
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !235, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value)), !dbg !307
  %i_bytes_outstanding10.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !308
  %5 = load i32, ptr %i_bytes_outstanding10.i, align 4, !dbg !308, !tbaa !160
  call void @llvm.dbg.value(metadata i32 %5, metadata !238, metadata !DIExpression()), !dbg !307
  %p.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 5, !dbg !309
  %6 = load ptr, ptr %p.i, align 8, !dbg !309, !tbaa !184
  %arrayidx.i = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !310
  %7 = load i8, ptr %arrayidx.i, align 1, !dbg !311, !tbaa !109
  %8 = trunc i32 %4 to i8, !dbg !311
  %conv12.i = add i8 %7, %8, !dbg !311
  store i8 %conv12.i, ptr %arrayidx.i, align 1, !dbg !311, !tbaa !109
  call void @llvm.dbg.value(metadata i32 %5, metadata !238, metadata !DIExpression()), !dbg !307
  %cmp1338.i = icmp sgt i32 %5, 0, !dbg !312
  br i1 %cmp1338.i, label %while.body.lr.ph.i, label %while.end.i, !dbg !313

while.body.lr.ph.i:                               ; preds = %if.else.i
  %conv16.i = add i8 %8, -1
  br label %while.body.i, !dbg !313

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %bytes_outstanding.039.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %dec.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i32 %bytes_outstanding.039.i, metadata !238, metadata !DIExpression()), !dbg !307
  %9 = load ptr, ptr %p.i, align 8, !dbg !314, !tbaa !184
  %incdec.ptr.i = getelementptr inbounds i8, ptr %9, i64 1, !dbg !314
  store ptr %incdec.ptr.i, ptr %p.i, align 8, !dbg !314, !tbaa !184
  store i8 %conv16.i, ptr %9, align 1, !dbg !315, !tbaa !109
  %dec.i = add nsw i32 %bytes_outstanding.039.i, -1, !dbg !316
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !238, metadata !DIExpression()), !dbg !307
  %cmp13.i = icmp ugt i32 %bytes_outstanding.039.i, 1, !dbg !312
  br i1 %cmp13.i, label %while.body.i, label %while.end.i, !dbg !313, !llvm.loop !317

while.end.i:                                      ; preds = %while.body.i, %if.else.i
  %conv18.i = trunc i32 %shr.i to i8, !dbg !319
  %10 = load ptr, ptr %p.i, align 8, !dbg !320, !tbaa !184
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %10, i64 1, !dbg !320
  store ptr %incdec.ptr20.i, ptr %p.i, align 8, !dbg !320, !tbaa !184
  store i8 %conv18.i, ptr %10, align 1, !dbg !321, !tbaa !109
  store i32 0, ptr %i_bytes_outstanding10.i, align 4, !dbg !322, !tbaa !160
  br label %x264_cabac_putbyte.exit

x264_cabac_putbyte.exit:                          ; preds = %entry, %if.then8.i, %while.end.i
  ret void, !dbg !323
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @x264_cabac_encode_ue_bypass(ptr nocapture noundef %cb, i32 noundef %exp_bits, i32 noundef %val) local_unnamed_addr #2 !dbg !324 {
entry:
  call void @llvm.dbg.value(metadata ptr %cb, metadata !326, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %exp_bits, metadata !327, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %val, metadata !328, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %exp_bits, metadata !329, metadata !DIExpression()), !dbg !334
  %shl38 = shl nuw i32 1, %exp_bits, !dbg !335
  %cmp.not39 = icmp sgt i32 %shl38, %val, !dbg !338
  br i1 %cmp.not39, label %for.end, label %for.body, !dbg !339

for.body:                                         ; preds = %entry, %for.body
  %shl42 = phi i32 [ %shl, %for.body ], [ %shl38, %entry ]
  %val.addr.041 = phi i32 [ %sub, %for.body ], [ %val, %entry ]
  %k.040 = phi i32 [ %inc, %for.body ], [ %exp_bits, %entry ]
  call void @llvm.dbg.value(metadata i32 %val.addr.041, metadata !328, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %k.040, metadata !329, metadata !DIExpression()), !dbg !334
  %sub = sub nsw i32 %val.addr.041, %shl42, !dbg !340
  call void @llvm.dbg.value(metadata i32 %sub, metadata !328, metadata !DIExpression()), !dbg !334
  %inc = add nsw i32 %k.040, 1, !dbg !341
  call void @llvm.dbg.value(metadata i32 %inc, metadata !329, metadata !DIExpression()), !dbg !334
  %shl = shl nuw i32 1, %inc, !dbg !335
  %cmp.not = icmp slt i32 %sub, %shl, !dbg !338
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !339, !llvm.loop !342

for.end:                                          ; preds = %for.body, %entry
  %k.0.lcssa = phi i32 [ %exp_bits, %entry ], [ %inc, %for.body ], !dbg !344
  %val.addr.0.lcssa = phi i32 [ %val, %entry ], [ %sub, %for.body ]
  %sub2 = sub nsw i32 %k.0.lcssa, %exp_bits, !dbg !345
  %notmask = shl nsw i32 -1, %sub2, !dbg !346
  %sub4 = xor i32 %notmask, -1, !dbg !346
  %add = add nsw i32 %k.0.lcssa, 1, !dbg !347
  %shl5 = shl i32 %sub4, %add, !dbg !348
  %add6 = add nsw i32 %shl5, %val.addr.0.lcssa, !dbg !349
  call void @llvm.dbg.value(metadata i32 %add6, metadata !331, metadata !DIExpression()), !dbg !334
  %mul = shl nsw i32 %k.0.lcssa, 1, !dbg !350
  %add7 = sub i32 1, %exp_bits, !dbg !351
  %sub8 = add i32 %add7, %mul, !dbg !352
  call void @llvm.dbg.value(metadata i32 %sub8, metadata !329, metadata !DIExpression()), !dbg !334
  %sub9 = add i32 %sub8, 7, !dbg !353
  %and = and i32 %sub9, 7, !dbg !354
  %add10 = add nuw nsw i32 %and, 1, !dbg !355
  call void @llvm.dbg.value(metadata i32 %add10, metadata !330, metadata !DIExpression()), !dbg !334
  %i_range = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 1
  %i_queue = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 2
  %i_bytes_outstanding10.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3
  %p.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 5
  %.pre44 = load i32, ptr %cb, align 16, !dbg !356, !tbaa !148
  br label %do.body, !dbg !358

do.body:                                          ; preds = %x264_cabac_putbyte.exit, %for.end
  %0 = phi i32 [ %.pre44, %for.end ], [ %11, %x264_cabac_putbyte.exit ], !dbg !356
  %k.1 = phi i32 [ %sub8, %for.end ], [ %sub11, %x264_cabac_putbyte.exit ], !dbg !334
  %i.0 = phi i32 [ %add10, %for.end ], [ 8, %x264_cabac_putbyte.exit ], !dbg !334
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !330, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %k.1, metadata !329, metadata !DIExpression()), !dbg !334
  %sub11 = sub nsw i32 %k.1, %i.0, !dbg !359
  call void @llvm.dbg.value(metadata i32 %sub11, metadata !329, metadata !DIExpression()), !dbg !334
  %shl12 = shl i32 %0, %i.0, !dbg !356
  %shr = lshr i32 %add6, %sub11, !dbg !360
  %and13 = and i32 %shr, 255, !dbg !361
  %1 = load i32, ptr %i_range, align 4, !dbg !362, !tbaa !154
  %mul14 = mul i32 %and13, %1, !dbg !363
  %add16 = add i32 %mul14, %shl12, !dbg !364
  store i32 %add16, ptr %cb, align 16, !dbg !364, !tbaa !148
  %2 = load i32, ptr %i_queue, align 8, !dbg !365, !tbaa !157
  %add17 = add nsw i32 %2, %i.0, !dbg !365
  store i32 %add17, ptr %i_queue, align 8, !dbg !365, !tbaa !157
  call void @llvm.dbg.value(metadata ptr %cb, metadata !229, metadata !DIExpression()), !dbg !366
  %cmp.i = icmp sgt i32 %add17, -1, !dbg !368
  br i1 %cmp.i, label %if.then.i, label %x264_cabac_putbyte.exit, !dbg !369

if.then.i:                                        ; preds = %do.body
  %add.i = add nuw nsw i32 %add17, 10, !dbg !370
  %shr.i = ashr i32 %add16, %add.i, !dbg !371
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !232, metadata !DIExpression()), !dbg !372
  %shl.i = shl i32 1024, %add17, !dbg !373
  %sub.i = add nsw i32 %shl.i, -1, !dbg !374
  %and.i = and i32 %sub.i, %add16, !dbg !375
  store i32 %and.i, ptr %cb, align 16, !dbg !375, !tbaa !148
  %sub5.i = add nsw i32 %add17, -8, !dbg !376
  store i32 %sub5.i, ptr %i_queue, align 8, !dbg !376, !tbaa !157
  %and6.i = and i32 %shr.i, 255, !dbg !377
  %cmp7.i = icmp eq i32 %and6.i, 255, !dbg !378
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i, !dbg !379

if.then8.i:                                       ; preds = %if.then.i
  %3 = load i32, ptr %i_bytes_outstanding10.i, align 4, !dbg !380, !tbaa !160
  %inc.i = add nsw i32 %3, 1, !dbg !380
  store i32 %inc.i, ptr %i_bytes_outstanding10.i, align 4, !dbg !380, !tbaa !160
  br label %x264_cabac_putbyte.exit, !dbg !381

if.else.i:                                        ; preds = %if.then.i
  %4 = lshr i32 %shr.i, 8, !dbg !382
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !235, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value)), !dbg !383
  %5 = load i32, ptr %i_bytes_outstanding10.i, align 4, !dbg !384, !tbaa !160
  call void @llvm.dbg.value(metadata i32 %5, metadata !238, metadata !DIExpression()), !dbg !383
  %6 = load ptr, ptr %p.i, align 8, !dbg !385, !tbaa !184
  %arrayidx.i = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !386
  %7 = load i8, ptr %arrayidx.i, align 1, !dbg !387, !tbaa !109
  %8 = trunc i32 %4 to i8, !dbg !387
  %conv12.i = add i8 %7, %8, !dbg !387
  store i8 %conv12.i, ptr %arrayidx.i, align 1, !dbg !387, !tbaa !109
  %cmp1338.i = icmp sgt i32 %5, 0, !dbg !388
  br i1 %cmp1338.i, label %while.body.lr.ph.i, label %while.end.i, !dbg !389

while.body.lr.ph.i:                               ; preds = %if.else.i
  %conv16.i = add i8 %8, -1
  br label %while.body.i, !dbg !389

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %bytes_outstanding.039.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %dec.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i32 %bytes_outstanding.039.i, metadata !238, metadata !DIExpression()), !dbg !383
  %9 = load ptr, ptr %p.i, align 8, !dbg !390, !tbaa !184
  %incdec.ptr.i = getelementptr inbounds i8, ptr %9, i64 1, !dbg !390
  store ptr %incdec.ptr.i, ptr %p.i, align 8, !dbg !390, !tbaa !184
  store i8 %conv16.i, ptr %9, align 1, !dbg !391, !tbaa !109
  %dec.i = add nsw i32 %bytes_outstanding.039.i, -1, !dbg !392
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !238, metadata !DIExpression()), !dbg !383
  %cmp13.i = icmp ugt i32 %bytes_outstanding.039.i, 1, !dbg !388
  br i1 %cmp13.i, label %while.body.i, label %while.end.i, !dbg !389, !llvm.loop !393

while.end.i:                                      ; preds = %while.body.i, %if.else.i
  %conv18.i = trunc i32 %shr.i to i8, !dbg !395
  %10 = load ptr, ptr %p.i, align 8, !dbg !396, !tbaa !184
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %10, i64 1, !dbg !396
  store ptr %incdec.ptr20.i, ptr %p.i, align 8, !dbg !396, !tbaa !184
  store i8 %conv18.i, ptr %10, align 1, !dbg !397, !tbaa !109
  store i32 0, ptr %i_bytes_outstanding10.i, align 4, !dbg !398, !tbaa !160
  %.pre = load i32, ptr %cb, align 16, !dbg !356, !tbaa !148
  br label %x264_cabac_putbyte.exit

x264_cabac_putbyte.exit:                          ; preds = %do.body, %if.then8.i, %while.end.i
  %11 = phi i32 [ %add16, %do.body ], [ %and.i, %if.then8.i ], [ %.pre, %while.end.i ]
  call void @llvm.dbg.value(metadata i32 8, metadata !330, metadata !DIExpression()), !dbg !334
  %cmp18 = icmp sgt i32 %sub11, 0, !dbg !399
  br i1 %cmp18, label %do.body, label %do.end, !dbg !400, !llvm.loop !401

do.end:                                           ; preds = %x264_cabac_putbyte.exit
  ret void, !dbg !403
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @x264_cabac_encode_terminal_c(ptr nocapture noundef %cb) local_unnamed_addr #2 !dbg !404 {
entry:
  call void @llvm.dbg.value(metadata ptr %cb, metadata !406, metadata !DIExpression()), !dbg !407
  %i_range = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 1, !dbg !408
  %0 = load i32, ptr %i_range, align 4, !dbg !409, !tbaa !154
  %sub = add nsw i32 %0, -2, !dbg !409
  call void @llvm.dbg.value(metadata ptr %cb, metadata !216, metadata !DIExpression()), !dbg !410
  %shr.i = ashr i32 %sub, 3, !dbg !412
  %idxprom.i = sext i32 %shr.i to i64, !dbg !413
  %arrayidx.i = getelementptr inbounds [64 x i8], ptr @x264_cabac_renorm_shift, i64 0, i64 %idxprom.i, !dbg !413
  %1 = load i8, ptr %arrayidx.i, align 1, !dbg !413, !tbaa !109
  %conv.i = zext i8 %1 to i32, !dbg !413
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !219, metadata !DIExpression()), !dbg !410
  %shl.i = shl i32 %sub, %conv.i, !dbg !414
  store i32 %shl.i, ptr %i_range, align 4, !dbg !414, !tbaa !154
  %2 = load i32, ptr %cb, align 16, !dbg !415, !tbaa !148
  %shl2.i = shl i32 %2, %conv.i, !dbg !415
  store i32 %shl2.i, ptr %cb, align 16, !dbg !415, !tbaa !148
  %i_queue.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 2, !dbg !416
  %3 = load i32, ptr %i_queue.i, align 8, !dbg !417, !tbaa !157
  %add.i = add nsw i32 %3, %conv.i, !dbg !417
  store i32 %add.i, ptr %i_queue.i, align 8, !dbg !417, !tbaa !157
  call void @llvm.dbg.value(metadata ptr %cb, metadata !229, metadata !DIExpression()), !dbg !418
  %cmp.i.i = icmp sgt i32 %add.i, -1, !dbg !420
  br i1 %cmp.i.i, label %if.then.i.i, label %x264_cabac_encode_renorm.exit, !dbg !421

if.then.i.i:                                      ; preds = %entry
  %add.i.i = add nuw nsw i32 %add.i, 10, !dbg !422
  %shr.i.i = ashr i32 %shl2.i, %add.i.i, !dbg !423
  call void @llvm.dbg.value(metadata i32 %shr.i.i, metadata !232, metadata !DIExpression()), !dbg !424
  %shl.i.i = shl i32 1024, %add.i, !dbg !425
  %sub.i.i = add nsw i32 %shl.i.i, -1, !dbg !426
  %and.i.i = and i32 %sub.i.i, %shl2.i, !dbg !427
  store i32 %and.i.i, ptr %cb, align 16, !dbg !427, !tbaa !148
  %sub5.i.i = add nsw i32 %add.i, -8, !dbg !428
  store i32 %sub5.i.i, ptr %i_queue.i, align 8, !dbg !428, !tbaa !157
  %and6.i.i = and i32 %shr.i.i, 255, !dbg !429
  %cmp7.i.i = icmp eq i32 %and6.i.i, 255, !dbg !430
  br i1 %cmp7.i.i, label %if.then8.i.i, label %if.else.i.i, !dbg !431

if.then8.i.i:                                     ; preds = %if.then.i.i
  %i_bytes_outstanding.i.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !432
  %4 = load i32, ptr %i_bytes_outstanding.i.i, align 4, !dbg !433, !tbaa !160
  %inc.i.i = add nsw i32 %4, 1, !dbg !433
  store i32 %inc.i.i, ptr %i_bytes_outstanding.i.i, align 4, !dbg !433, !tbaa !160
  br label %x264_cabac_encode_renorm.exit, !dbg !434

if.else.i.i:                                      ; preds = %if.then.i.i
  %5 = lshr i32 %shr.i.i, 8, !dbg !435
  call void @llvm.dbg.value(metadata i32 %shr.i.i, metadata !235, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value)), !dbg !436
  %i_bytes_outstanding10.i.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !437
  %6 = load i32, ptr %i_bytes_outstanding10.i.i, align 4, !dbg !437, !tbaa !160
  call void @llvm.dbg.value(metadata i32 %6, metadata !238, metadata !DIExpression()), !dbg !436
  %p.i.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 5, !dbg !438
  %7 = load ptr, ptr %p.i.i, align 8, !dbg !438, !tbaa !184
  %arrayidx.i.i = getelementptr inbounds i8, ptr %7, i64 -1, !dbg !439
  %8 = load i8, ptr %arrayidx.i.i, align 1, !dbg !440, !tbaa !109
  %9 = trunc i32 %5 to i8, !dbg !440
  %conv12.i.i = add i8 %8, %9, !dbg !440
  store i8 %conv12.i.i, ptr %arrayidx.i.i, align 1, !dbg !440, !tbaa !109
  call void @llvm.dbg.value(metadata i32 %6, metadata !238, metadata !DIExpression()), !dbg !436
  %cmp1338.i.i = icmp sgt i32 %6, 0, !dbg !441
  br i1 %cmp1338.i.i, label %while.body.lr.ph.i.i, label %while.end.i.i, !dbg !442

while.body.lr.ph.i.i:                             ; preds = %if.else.i.i
  %conv16.i.i = add i8 %9, -1
  br label %while.body.i.i, !dbg !442

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.lr.ph.i.i
  %bytes_outstanding.039.i.i = phi i32 [ %6, %while.body.lr.ph.i.i ], [ %dec.i.i, %while.body.i.i ]
  call void @llvm.dbg.value(metadata i32 %bytes_outstanding.039.i.i, metadata !238, metadata !DIExpression()), !dbg !436
  %10 = load ptr, ptr %p.i.i, align 8, !dbg !443, !tbaa !184
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %10, i64 1, !dbg !443
  store ptr %incdec.ptr.i.i, ptr %p.i.i, align 8, !dbg !443, !tbaa !184
  store i8 %conv16.i.i, ptr %10, align 1, !dbg !444, !tbaa !109
  %dec.i.i = add nsw i32 %bytes_outstanding.039.i.i, -1, !dbg !445
  call void @llvm.dbg.value(metadata i32 %dec.i.i, metadata !238, metadata !DIExpression()), !dbg !436
  %cmp13.i.i = icmp ugt i32 %bytes_outstanding.039.i.i, 1, !dbg !441
  br i1 %cmp13.i.i, label %while.body.i.i, label %while.end.i.i, !dbg !442, !llvm.loop !446

while.end.i.i:                                    ; preds = %while.body.i.i, %if.else.i.i
  %conv18.i.i = trunc i32 %shr.i.i to i8, !dbg !448
  %11 = load ptr, ptr %p.i.i, align 8, !dbg !449, !tbaa !184
  %incdec.ptr20.i.i = getelementptr inbounds i8, ptr %11, i64 1, !dbg !449
  store ptr %incdec.ptr20.i.i, ptr %p.i.i, align 8, !dbg !449, !tbaa !184
  store i8 %conv18.i.i, ptr %11, align 1, !dbg !450, !tbaa !109
  store i32 0, ptr %i_bytes_outstanding10.i.i, align 4, !dbg !451, !tbaa !160
  br label %x264_cabac_encode_renorm.exit

x264_cabac_encode_renorm.exit:                    ; preds = %entry, %if.then8.i.i, %while.end.i.i
  ret void, !dbg !452
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @x264_cabac_encode_flush(ptr nocapture noundef readonly %h, ptr noundef %cb) local_unnamed_addr #2 !dbg !453 {
entry:
  call void @llvm.dbg.value(metadata ptr %h, metadata !1734, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr %cb, metadata !1735, metadata !DIExpression()), !dbg !1736
  %i_range = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 1, !dbg !1737
  %0 = load i32, ptr %i_range, align 4, !dbg !1737, !tbaa !154
  %sub = add i32 %0, 8388606, !dbg !1738
  %1 = load i32, ptr %cb, align 16, !dbg !1739, !tbaa !148
  %add = add i32 %sub, %1, !dbg !1739
  %or = shl i32 %add, 9, !dbg !1740
  %shl = or i32 %or, 512, !dbg !1740
  store i32 %shl, ptr %cb, align 16, !dbg !1740, !tbaa !148
  %i_queue = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 2, !dbg !1741
  %2 = load i32, ptr %i_queue, align 8, !dbg !1742, !tbaa !157
  %add3 = add nsw i32 %2, 9, !dbg !1742
  call void @llvm.dbg.value(metadata ptr %cb, metadata !229, metadata !DIExpression()), !dbg !1743
  %cmp.i = icmp sgt i32 %2, -10, !dbg !1745
  br i1 %cmp.i, label %if.then.i, label %if.then.i69, !dbg !1746

if.then.i:                                        ; preds = %entry
  %add.i = add nsw i32 %2, 19, !dbg !1747
  %shr.i = ashr i32 %shl, %add.i, !dbg !1748
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !232, metadata !DIExpression()), !dbg !1749
  %shl.i = shl i32 1024, %add3, !dbg !1750
  %sub.i = add nsw i32 %shl.i, -1, !dbg !1751
  %and.i = and i32 %sub.i, %shl, !dbg !1752
  store i32 %and.i, ptr %cb, align 16, !dbg !1752, !tbaa !148
  %sub5.i = add nsw i32 %2, 1, !dbg !1753
  store i32 %sub5.i, ptr %i_queue, align 8, !dbg !1753, !tbaa !157
  %and6.i = and i32 %shr.i, 255, !dbg !1754
  %cmp7.i = icmp eq i32 %and6.i, 255, !dbg !1755
  br i1 %cmp7.i, label %if.then8.i, label %if.else.i, !dbg !1756

if.then8.i:                                       ; preds = %if.then.i
  %i_bytes_outstanding.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !1757
  %3 = load i32, ptr %i_bytes_outstanding.i, align 4, !dbg !1758, !tbaa !160
  %inc.i = add nsw i32 %3, 1, !dbg !1758
  store i32 %inc.i, ptr %i_bytes_outstanding.i, align 4, !dbg !1758, !tbaa !160
  br label %x264_cabac_putbyte.exit, !dbg !1759

if.else.i:                                        ; preds = %if.then.i
  %4 = lshr i32 %shr.i, 8, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !235, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value)), !dbg !1761
  %i_bytes_outstanding10.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !1762
  %5 = load i32, ptr %i_bytes_outstanding10.i, align 4, !dbg !1762, !tbaa !160
  call void @llvm.dbg.value(metadata i32 %5, metadata !238, metadata !DIExpression()), !dbg !1761
  %p.i = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 5, !dbg !1763
  %6 = load ptr, ptr %p.i, align 8, !dbg !1763, !tbaa !184
  %arrayidx.i = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !1764
  %7 = load i8, ptr %arrayidx.i, align 1, !dbg !1765, !tbaa !109
  %8 = trunc i32 %4 to i8, !dbg !1765
  %conv12.i = add i8 %7, %8, !dbg !1765
  store i8 %conv12.i, ptr %arrayidx.i, align 1, !dbg !1765, !tbaa !109
  %cmp1338.i = icmp sgt i32 %5, 0, !dbg !1766
  br i1 %cmp1338.i, label %while.body.lr.ph.i, label %while.end.i, !dbg !1767

while.body.lr.ph.i:                               ; preds = %if.else.i
  %conv16.i = add i8 %8, -1
  br label %while.body.i, !dbg !1767

while.body.i:                                     ; preds = %while.body.i, %while.body.lr.ph.i
  %bytes_outstanding.039.i = phi i32 [ %5, %while.body.lr.ph.i ], [ %dec.i, %while.body.i ]
  call void @llvm.dbg.value(metadata i32 %bytes_outstanding.039.i, metadata !238, metadata !DIExpression()), !dbg !1761
  %9 = load ptr, ptr %p.i, align 8, !dbg !1768, !tbaa !184
  %incdec.ptr.i = getelementptr inbounds i8, ptr %9, i64 1, !dbg !1768
  store ptr %incdec.ptr.i, ptr %p.i, align 8, !dbg !1768, !tbaa !184
  store i8 %conv16.i, ptr %9, align 1, !dbg !1769, !tbaa !109
  %dec.i = add nsw i32 %bytes_outstanding.039.i, -1, !dbg !1770
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !238, metadata !DIExpression()), !dbg !1761
  %cmp13.i = icmp ugt i32 %bytes_outstanding.039.i, 1, !dbg !1766
  br i1 %cmp13.i, label %while.body.i, label %while.end.i, !dbg !1767, !llvm.loop !1771

while.end.i:                                      ; preds = %while.body.i, %if.else.i
  %conv18.i = trunc i32 %shr.i to i8, !dbg !1773
  %10 = load ptr, ptr %p.i, align 8, !dbg !1774, !tbaa !184
  %incdec.ptr20.i = getelementptr inbounds i8, ptr %10, i64 1, !dbg !1774
  store ptr %incdec.ptr20.i, ptr %p.i, align 8, !dbg !1774, !tbaa !184
  store i8 %conv18.i, ptr %10, align 1, !dbg !1775, !tbaa !109
  store i32 0, ptr %i_bytes_outstanding10.i, align 4, !dbg !1776, !tbaa !160
  %.pr.pre = load i32, ptr %i_queue, align 8, !dbg !1777, !tbaa !157
  br label %x264_cabac_putbyte.exit

x264_cabac_putbyte.exit:                          ; preds = %if.then8.i, %while.end.i
  %11 = phi i32 [ %inc.i, %if.then8.i ], [ 0, %while.end.i ]
  %.pr = phi i32 [ %sub5.i, %if.then8.i ], [ %.pr.pre, %while.end.i ], !dbg !1777
  call void @llvm.dbg.value(metadata ptr %cb, metadata !229, metadata !DIExpression()), !dbg !1779
  %cmp.i29 = icmp sgt i32 %.pr, -1, !dbg !1780
  br i1 %cmp.i29, label %if.then.i38, label %if.then.i69, !dbg !1781

if.then.i38:                                      ; preds = %x264_cabac_putbyte.exit
  %12 = load i32, ptr %cb, align 16, !dbg !1782, !tbaa !148
  %add.i30 = add nuw nsw i32 %.pr, 10, !dbg !1783
  %shr.i31 = ashr i32 %12, %add.i30, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %shr.i31, metadata !232, metadata !DIExpression()), !dbg !1785
  %shl.i32 = shl i32 1024, %.pr, !dbg !1786
  %sub.i33 = add nsw i32 %shl.i32, -1, !dbg !1787
  %and.i34 = and i32 %12, %sub.i33, !dbg !1788
  store i32 %and.i34, ptr %cb, align 16, !dbg !1788, !tbaa !148
  %sub5.i35 = add nsw i32 %.pr, -8, !dbg !1789
  store i32 %sub5.i35, ptr %i_queue, align 8, !dbg !1789, !tbaa !157
  %and6.i36 = and i32 %shr.i31, 255, !dbg !1790
  %cmp7.i37 = icmp eq i32 %and6.i36, 255, !dbg !1791
  br i1 %cmp7.i37, label %if.then8.i41, label %if.else.i47, !dbg !1792

if.then8.i41:                                     ; preds = %if.then.i38
  %i_bytes_outstanding.i39 = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !1793
  %inc.i40 = add nsw i32 %11, 1, !dbg !1794
  store i32 %inc.i40, ptr %i_bytes_outstanding.i39, align 4, !dbg !1794, !tbaa !160
  br label %if.then.i69, !dbg !1795

if.else.i47:                                      ; preds = %if.then.i38
  %13 = lshr i32 %shr.i31, 8, !dbg !1796
  call void @llvm.dbg.value(metadata i32 %shr.i31, metadata !235, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value)), !dbg !1797
  %i_bytes_outstanding10.i42 = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !1798
  call void @llvm.dbg.value(metadata i32 %11, metadata !238, metadata !DIExpression()), !dbg !1797
  %p.i43 = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 5, !dbg !1799
  %14 = load ptr, ptr %p.i43, align 8, !dbg !1799, !tbaa !184
  %arrayidx.i44 = getelementptr inbounds i8, ptr %14, i64 -1, !dbg !1800
  %15 = load i8, ptr %arrayidx.i44, align 1, !dbg !1801, !tbaa !109
  %16 = trunc i32 %13 to i8, !dbg !1801
  %conv12.i45 = add i8 %15, %16, !dbg !1801
  store i8 %conv12.i45, ptr %arrayidx.i44, align 1, !dbg !1801, !tbaa !109
  %cmp1338.i46 = icmp sgt i32 %11, 0, !dbg !1802
  br i1 %cmp1338.i46, label %while.body.lr.ph.i49, label %while.end.i57, !dbg !1803

while.body.lr.ph.i49:                             ; preds = %if.else.i47
  %conv16.i48 = add i8 %16, -1
  br label %while.body.i54, !dbg !1803

while.body.i54:                                   ; preds = %while.body.i54, %while.body.lr.ph.i49
  %bytes_outstanding.039.i50 = phi i32 [ %11, %while.body.lr.ph.i49 ], [ %dec.i52, %while.body.i54 ]
  call void @llvm.dbg.value(metadata i32 %bytes_outstanding.039.i50, metadata !238, metadata !DIExpression()), !dbg !1797
  %17 = load ptr, ptr %p.i43, align 8, !dbg !1804, !tbaa !184
  %incdec.ptr.i51 = getelementptr inbounds i8, ptr %17, i64 1, !dbg !1804
  store ptr %incdec.ptr.i51, ptr %p.i43, align 8, !dbg !1804, !tbaa !184
  store i8 %conv16.i48, ptr %17, align 1, !dbg !1805, !tbaa !109
  %dec.i52 = add nsw i32 %bytes_outstanding.039.i50, -1, !dbg !1806
  call void @llvm.dbg.value(metadata i32 %dec.i52, metadata !238, metadata !DIExpression()), !dbg !1797
  %cmp13.i53 = icmp ugt i32 %bytes_outstanding.039.i50, 1, !dbg !1802
  br i1 %cmp13.i53, label %while.body.i54, label %while.end.i57, !dbg !1803, !llvm.loop !1807

while.end.i57:                                    ; preds = %while.body.i54, %if.else.i47
  %conv18.i55 = trunc i32 %shr.i31 to i8, !dbg !1809
  %18 = load ptr, ptr %p.i43, align 8, !dbg !1810, !tbaa !184
  %incdec.ptr20.i56 = getelementptr inbounds i8, ptr %18, i64 1, !dbg !1810
  store ptr %incdec.ptr20.i56, ptr %p.i43, align 8, !dbg !1810, !tbaa !184
  store i8 %conv18.i55, ptr %18, align 1, !dbg !1811, !tbaa !109
  store i32 0, ptr %i_bytes_outstanding10.i42, align 4, !dbg !1812, !tbaa !160
  %.pre = load i32, ptr %i_queue, align 8, !dbg !1813, !tbaa !157
  br label %if.then.i69

if.then.i69:                                      ; preds = %entry, %while.end.i57, %if.then8.i41, %x264_cabac_putbyte.exit
  %19 = phi i32 [ %add3, %entry ], [ %.pre, %while.end.i57 ], [ %sub5.i35, %if.then8.i41 ], [ %.pr, %x264_cabac_putbyte.exit ], !dbg !1813
  %sub5 = sub nsw i32 0, %19, !dbg !1814
  %20 = load i32, ptr %cb, align 16, !dbg !1815, !tbaa !148
  %shl7 = shl i32 %20, %sub5, !dbg !1815
  %i_frame = getelementptr inbounds %struct.x264_t, ptr %h, i64 0, i32 10, !dbg !1816
  %21 = load i32, ptr %i_frame, align 4, !dbg !1816, !tbaa !1817
  %and = and i32 %21, 31, !dbg !1842
  %shr = lshr i32 899998965, %and, !dbg !1843
  %and8 = shl i32 %shr, 10, !dbg !1844
  %shl9 = and i32 %and8, 1024, !dbg !1844
  %or11 = or i32 %shl9, %shl7, !dbg !1845
  call void @llvm.dbg.value(metadata ptr %cb, metadata !229, metadata !DIExpression()), !dbg !1846
  %shr.i62 = ashr i32 %or11, 10, !dbg !1848
  call void @llvm.dbg.value(metadata i32 %shr.i62, metadata !232, metadata !DIExpression()), !dbg !1849
  %and.i65 = and i32 %shl7, 1023, !dbg !1850
  store i32 %and.i65, ptr %cb, align 16, !dbg !1850, !tbaa !148
  store i32 -8, ptr %i_queue, align 8, !dbg !1851, !tbaa !157
  %22 = and i32 %or11, 261120, !dbg !1852
  %cmp7.i68 = icmp eq i32 %22, 261120, !dbg !1852
  br i1 %cmp7.i68, label %x264_cabac_putbyte.exit89, label %if.else.i78, !dbg !1853

if.else.i78:                                      ; preds = %if.then.i69
  %23 = lshr i32 %shr.i62, 8, !dbg !1854
  call void @llvm.dbg.value(metadata i32 %shr.i62, metadata !235, metadata !DIExpression(DW_OP_constu, 8, DW_OP_shra, DW_OP_stack_value)), !dbg !1855
  %i_bytes_outstanding10.i73 = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !1856
  %24 = load i32, ptr %i_bytes_outstanding10.i73, align 4, !dbg !1856, !tbaa !160
  call void @llvm.dbg.value(metadata i32 %24, metadata !238, metadata !DIExpression()), !dbg !1855
  %p.i74 = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 5, !dbg !1857
  %25 = load ptr, ptr %p.i74, align 8, !dbg !1857, !tbaa !184
  %arrayidx.i75 = getelementptr inbounds i8, ptr %25, i64 -1, !dbg !1858
  %26 = load i8, ptr %arrayidx.i75, align 1, !dbg !1859, !tbaa !109
  %27 = trunc i32 %23 to i8, !dbg !1859
  %conv12.i76 = add i8 %26, %27, !dbg !1859
  store i8 %conv12.i76, ptr %arrayidx.i75, align 1, !dbg !1859, !tbaa !109
  %cmp1338.i77 = icmp sgt i32 %24, 0, !dbg !1860
  br i1 %cmp1338.i77, label %while.body.lr.ph.i80, label %x264_cabac_putbyte.exit89.thread, !dbg !1861

while.body.lr.ph.i80:                             ; preds = %if.else.i78
  %conv16.i79 = add i8 %27, -1
  br label %while.body.i85, !dbg !1861

while.body.i85:                                   ; preds = %while.body.i85, %while.body.lr.ph.i80
  %bytes_outstanding.039.i81 = phi i32 [ %24, %while.body.lr.ph.i80 ], [ %dec.i83, %while.body.i85 ]
  call void @llvm.dbg.value(metadata i32 %bytes_outstanding.039.i81, metadata !238, metadata !DIExpression()), !dbg !1855
  %28 = load ptr, ptr %p.i74, align 8, !dbg !1862, !tbaa !184
  %incdec.ptr.i82 = getelementptr inbounds i8, ptr %28, i64 1, !dbg !1862
  store ptr %incdec.ptr.i82, ptr %p.i74, align 8, !dbg !1862, !tbaa !184
  store i8 %conv16.i79, ptr %28, align 1, !dbg !1863, !tbaa !109
  %dec.i83 = add nsw i32 %bytes_outstanding.039.i81, -1, !dbg !1864
  call void @llvm.dbg.value(metadata i32 %dec.i83, metadata !238, metadata !DIExpression()), !dbg !1855
  %cmp13.i84 = icmp ugt i32 %bytes_outstanding.039.i81, 1, !dbg !1860
  br i1 %cmp13.i84, label %while.body.i85, label %x264_cabac_putbyte.exit89.thread, !dbg !1861, !llvm.loop !1865

x264_cabac_putbyte.exit89.thread:                 ; preds = %while.body.i85, %if.else.i78
  %conv18.i86 = trunc i32 %shr.i62 to i8, !dbg !1867
  %29 = load ptr, ptr %p.i74, align 8, !dbg !1868, !tbaa !184
  %incdec.ptr20.i87 = getelementptr inbounds i8, ptr %29, i64 1, !dbg !1868
  store ptr %incdec.ptr20.i87, ptr %p.i74, align 8, !dbg !1868, !tbaa !184
  store i8 %conv18.i86, ptr %29, align 1, !dbg !1869, !tbaa !109
  store i32 0, ptr %i_bytes_outstanding10.i73, align 4, !dbg !1870, !tbaa !160
  br label %while.end, !dbg !1871

x264_cabac_putbyte.exit89:                        ; preds = %if.then.i69
  %i_bytes_outstanding.i70 = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3, !dbg !1872
  %30 = load i32, ptr %i_bytes_outstanding.i70, align 4, !dbg !1873, !tbaa !160
  %inc.i71 = add nsw i32 %30, 1, !dbg !1873
  store i32 %inc.i71, ptr %i_bytes_outstanding.i70, align 4, !dbg !1873, !tbaa !160
  %phi.cmp = icmp sgt i32 %30, -1, !dbg !1874
  %i_bytes_outstanding = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 3
  br i1 %phi.cmp, label %while.body.lr.ph, label %while.end, !dbg !1871

while.body.lr.ph:                                 ; preds = %x264_cabac_putbyte.exit89
  %p = getelementptr inbounds %struct.x264_cabac_t, ptr %cb, i64 0, i32 5
  br label %while.body, !dbg !1871

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %31 = load ptr, ptr %p, align 8, !dbg !1875, !tbaa !184
  %incdec.ptr = getelementptr inbounds i8, ptr %31, i64 1, !dbg !1875
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !1875, !tbaa !184
  store i8 -1, ptr %31, align 1, !dbg !1877, !tbaa !109
  %32 = load i32, ptr %i_bytes_outstanding, align 4, !dbg !1878, !tbaa !160
  %dec = add nsw i32 %32, -1, !dbg !1878
  store i32 %dec, ptr %i_bytes_outstanding, align 4, !dbg !1878, !tbaa !160
  %cmp = icmp sgt i32 %32, 1, !dbg !1879
  br i1 %cmp, label %while.body, label %while.end, !dbg !1871, !llvm.loop !1880

while.end:                                        ; preds = %while.body, %x264_cabac_putbyte.exit89.thread, %x264_cabac_putbyte.exit89
  ret void, !dbg !1882
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { argmemonly nofree nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_cabac_range_lps", scope: !2, file: !17, line: 667, type: !56, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/cabac.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "81e922f79a78663e77ecb0915f9a62f5")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "slice_type_e", file: !6, line: 280, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "SLICE_TYPE_P", value: 0)
!10 = !DIEnumerator(name: "SLICE_TYPE_B", value: 1)
!11 = !DIEnumerator(name: "SLICE_TYPE_I", value: 2)
!12 = !DIEnumerator(name: "SLICE_TYPE_SP", value: 3)
!13 = !DIEnumerator(name: "SLICE_TYPE_SI", value: 4)
!14 = !{!0, !15, !28, !33, !41, !51}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "x264_cabac_transition", scope: !2, file: !17, line: 687, type: !18, isLocal: false, isDefinition: true)
!17 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81e922f79a78663e77ecb0915f9a62f5")
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !25)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !21, line: 24, baseType: !22)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !23, line: 38, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !{!26, !27}
!26 = !DISubrange(count: 128)
!27 = !DISubrange(count: 2)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "x264_cabac_renorm_shift", scope: !2, file: !17, line: 707, type: !30, isLocal: false, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 512, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 64)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "x264_cabac_entropy", scope: !2, file: !17, line: 715, type: !35, isLocal: false, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 2048, elements: !40)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !21, line: 25, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !23, line: 40, baseType: !39)
!39 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!40 = !{!26}
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "x264_cabac_context_init_I", scope: !2, file: !17, line: 27, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 7360, elements: !49)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !46, line: 24, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !23, line: 37, baseType: !48)
!48 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!49 = !{!50, !27}
!50 = !DISubrange(count: 460)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "x264_cabac_context_init_PB", scope: !2, file: !17, line: 196, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 22080, elements: !54)
!54 = !{!55, !50, !27}
!55 = !DISubrange(count: 3)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !57)
!57 = !{!32, !58}
!58 = !DISubrange(count: 4)
!59 = !{i32 7, !"Dwarf Version", i32 5}
!60 = !{i32 2, !"Debug Info Version", i32 3}
!61 = !{i32 1, !"wchar_size", i32 4}
!62 = !{i32 7, !"PIC Level", i32 2}
!63 = !{i32 7, !"PIE Level", i32 2}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!66 = distinct !DISubprogram(name: "x264_cabac_context_init", scope: !17, file: !17, line: 755, type: !67, scopeLine: 756, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69, !75, !75, !75}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_cabac_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "22d062fb0f207ca9dcf17e0003a54ffb")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !71, line: 27, size: 4096, elements: !73)
!73 = !{!74, !76, !77, !78, !79, !81, !82, !83, !84}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "i_low", scope: !72, file: !71, line: 30, baseType: !75, size: 32)
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "i_range", scope: !72, file: !71, line: 31, baseType: !75, size: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "i_queue", scope: !72, file: !71, line: 34, baseType: !75, size: 32, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes_outstanding", scope: !72, file: !71, line: 35, baseType: !75, size: 32, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !72, file: !71, line: 37, baseType: !80, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !72, file: !71, line: 38, baseType: !80, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !72, file: !71, line: 39, baseType: !80, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "f8_bits_encoded", scope: !72, file: !71, line: 42, baseType: !75, size: 32, align: 128, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !72, file: !71, line: 45, baseType: !85, size: 3680, offset: 416)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 3680, elements: !86)
!86 = !{!50}
!87 = !{!88, !89, !90, !91, !92, !94, !96}
!88 = !DILocalVariable(name: "cb", arg: 1, scope: !66, file: !17, line: 755, type: !69)
!89 = !DILocalVariable(name: "i_slice_type", arg: 2, scope: !66, file: !17, line: 755, type: !75)
!90 = !DILocalVariable(name: "i_qp", arg: 3, scope: !66, file: !17, line: 755, type: !75)
!91 = !DILocalVariable(name: "i_model", arg: 4, scope: !66, file: !17, line: 755, type: !75)
!92 = !DILocalVariable(name: "cabac_context_init", scope: !66, file: !17, line: 757, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!94 = !DILocalVariable(name: "i", scope: !95, file: !17, line: 764, type: !75)
!95 = distinct !DILexicalBlock(scope: !66, file: !17, line: 764, column: 5)
!96 = !DILocalVariable(name: "state", scope: !97, file: !17, line: 766, type: !75)
!97 = distinct !DILexicalBlock(scope: !98, file: !17, line: 765, column: 5)
!98 = distinct !DILexicalBlock(scope: !95, file: !17, line: 764, column: 5)
!99 = !DILocation(line: 0, scope: !66)
!100 = !DILocation(line: 759, column: 22, scope: !101)
!101 = distinct !DILexicalBlock(scope: !66, file: !17, line: 759, column: 9)
!102 = !DILocation(line: 759, column: 9, scope: !66)
!103 = !DILocation(line: 762, column: 31, scope: !101)
!104 = !DILocation(line: 0, scope: !101)
!105 = !DILocation(line: 0, scope: !95)
!106 = !DILocation(line: 764, column: 5, scope: !95)
!107 = !DILocation(line: 769, column: 1, scope: !66)
!108 = !DILocation(line: 766, column: 35, scope: !97)
!109 = !{!110, !110, i64 0}
!110 = !{!"omnipotent char", !111, i64 0}
!111 = !{!"Simple C/C++ TBAA"}
!112 = !DILocation(line: 766, column: 63, scope: !97)
!113 = !DILocation(line: 766, column: 71, scope: !97)
!114 = !DILocation(line: 766, column: 79, scope: !97)
!115 = !DILocation(line: 766, column: 77, scope: !97)
!116 = !DILocalVariable(name: "v", arg: 1, scope: !117, file: !6, line: 200, type: !75)
!117 = distinct !DISubprogram(name: "x264_clip3", scope: !6, file: !6, line: 200, type: !118, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{!75, !75, !75, !75}
!120 = !{!116, !121, !122}
!121 = !DILocalVariable(name: "i_min", arg: 2, scope: !117, file: !6, line: 200, type: !75)
!122 = !DILocalVariable(name: "i_max", arg: 3, scope: !117, file: !6, line: 200, type: !75)
!123 = !DILocation(line: 0, scope: !117, inlinedAt: !124)
!124 = distinct !DILocation(line: 766, column: 21, scope: !97)
!125 = !DILocation(line: 202, column: 17, scope: !117, inlinedAt: !124)
!126 = !DILocation(line: 202, column: 14, scope: !117, inlinedAt: !124)
!127 = !DILocation(line: 0, scope: !97)
!128 = !DILocation(line: 767, column: 25, scope: !97)
!129 = !DILocation(line: 767, column: 54, scope: !97)
!130 = !DILocation(line: 767, column: 69, scope: !97)
!131 = !DILocation(line: 767, column: 60, scope: !97)
!132 = !DILocation(line: 767, column: 24, scope: !97)
!133 = !DILocation(line: 767, column: 9, scope: !97)
!134 = !DILocation(line: 767, column: 22, scope: !97)
!135 = !DILocation(line: 764, column: 31, scope: !98)
!136 = !DILocation(line: 764, column: 23, scope: !98)
!137 = distinct !{!137, !106, !138, !139, !140}
!138 = !DILocation(line: 768, column: 5, scope: !95)
!139 = !{!"llvm.loop.mustprogress"}
!140 = !{!"llvm.loop.unroll.disable"}
!141 = distinct !DISubprogram(name: "x264_cabac_encode_init_core", scope: !17, file: !17, line: 771, type: !142, scopeLine: 772, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !69}
!144 = !{!145}
!145 = !DILocalVariable(name: "cb", arg: 1, scope: !141, file: !17, line: 771, type: !69)
!146 = !DILocation(line: 0, scope: !141)
!147 = !DILocation(line: 773, column: 17, scope: !141)
!148 = !{!149, !150, i64 0}
!149 = !{!"", !150, i64 0, !150, i64 4, !150, i64 8, !150, i64 12, !151, i64 16, !151, i64 24, !151, i64 32, !150, i64 48, !110, i64 52}
!150 = !{!"int", !110, i64 0}
!151 = !{!"any pointer", !110, i64 0}
!152 = !DILocation(line: 774, column: 9, scope: !141)
!153 = !DILocation(line: 774, column: 17, scope: !141)
!154 = !{!149, !150, i64 4}
!155 = !DILocation(line: 775, column: 9, scope: !141)
!156 = !DILocation(line: 775, column: 17, scope: !141)
!157 = !{!149, !150, i64 8}
!158 = !DILocation(line: 776, column: 9, scope: !141)
!159 = !DILocation(line: 776, column: 29, scope: !141)
!160 = !{!149, !150, i64 12}
!161 = !DILocation(line: 777, column: 1, scope: !141)
!162 = distinct !DISubprogram(name: "x264_cabac_encode_init", scope: !17, file: !17, line: 779, type: !163, scopeLine: 780, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !69, !80, !80}
!165 = !{!166, !167, !168}
!166 = !DILocalVariable(name: "cb", arg: 1, scope: !162, file: !17, line: 779, type: !69)
!167 = !DILocalVariable(name: "p_data", arg: 2, scope: !162, file: !17, line: 779, type: !80)
!168 = !DILocalVariable(name: "p_end", arg: 3, scope: !162, file: !17, line: 779, type: !80)
!169 = !DILocation(line: 0, scope: !162)
!170 = !DILocation(line: 0, scope: !141, inlinedAt: !171)
!171 = distinct !DILocation(line: 781, column: 5, scope: !162)
!172 = !DILocation(line: 773, column: 17, scope: !141, inlinedAt: !171)
!173 = !DILocation(line: 774, column: 9, scope: !141, inlinedAt: !171)
!174 = !DILocation(line: 774, column: 17, scope: !141, inlinedAt: !171)
!175 = !DILocation(line: 775, column: 9, scope: !141, inlinedAt: !171)
!176 = !DILocation(line: 775, column: 17, scope: !141, inlinedAt: !171)
!177 = !DILocation(line: 776, column: 9, scope: !141, inlinedAt: !171)
!178 = !DILocation(line: 776, column: 29, scope: !141, inlinedAt: !171)
!179 = !DILocation(line: 782, column: 9, scope: !162)
!180 = !DILocation(line: 782, column: 17, scope: !162)
!181 = !{!149, !151, i64 16}
!182 = !DILocation(line: 783, column: 9, scope: !162)
!183 = !DILocation(line: 783, column: 17, scope: !162)
!184 = !{!149, !151, i64 24}
!185 = !DILocation(line: 784, column: 9, scope: !162)
!186 = !DILocation(line: 784, column: 17, scope: !162)
!187 = !{!149, !151, i64 32}
!188 = !DILocation(line: 785, column: 1, scope: !162)
!189 = distinct !DISubprogram(name: "x264_cabac_encode_decision_c", scope: !17, file: !17, line: 831, type: !190, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!190 = !DISubroutineType(types: !191)
!191 = !{null, !69, !75, !75}
!192 = !{!193, !194, !195, !196, !197}
!193 = !DILocalVariable(name: "cb", arg: 1, scope: !189, file: !17, line: 831, type: !69)
!194 = !DILocalVariable(name: "i_ctx", arg: 2, scope: !189, file: !17, line: 831, type: !75)
!195 = !DILocalVariable(name: "b", arg: 3, scope: !189, file: !17, line: 831, type: !75)
!196 = !DILocalVariable(name: "i_state", scope: !189, file: !17, line: 833, type: !75)
!197 = !DILocalVariable(name: "i_range_lps", scope: !189, file: !17, line: 834, type: !75)
!198 = !DILocation(line: 0, scope: !189)
!199 = !DILocation(line: 833, column: 19, scope: !189)
!200 = !DILocation(line: 834, column: 51, scope: !189)
!201 = !DILocation(line: 834, column: 61, scope: !189)
!202 = !DILocation(line: 834, column: 68, scope: !189)
!203 = !DILocation(line: 834, column: 72, scope: !189)
!204 = !DILocation(line: 834, column: 23, scope: !189)
!205 = !DILocation(line: 835, column: 17, scope: !189)
!206 = !DILocation(line: 836, column: 23, scope: !207)
!207 = distinct !DILexicalBlock(scope: !189, file: !17, line: 836, column: 9)
!208 = !DILocation(line: 836, column: 11, scope: !207)
!209 = !DILocation(line: 836, column: 9, scope: !189)
!210 = !DILocation(line: 838, column: 19, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !17, line: 837, column: 5)
!212 = !DILocation(line: 839, column: 21, scope: !211)
!213 = !DILocation(line: 840, column: 5, scope: !211)
!214 = !DILocation(line: 841, column: 24, scope: !189)
!215 = !DILocation(line: 841, column: 22, scope: !189)
!216 = !DILocalVariable(name: "cb", arg: 1, scope: !217, file: !17, line: 819, type: !69)
!217 = distinct !DISubprogram(name: "x264_cabac_encode_renorm", scope: !17, file: !17, line: 819, type: !142, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!218 = !{!216, !219}
!219 = !DILocalVariable(name: "shift", scope: !217, file: !17, line: 821, type: !75)
!220 = !DILocation(line: 0, scope: !217, inlinedAt: !221)
!221 = distinct !DILocation(line: 842, column: 5, scope: !189)
!222 = !DILocation(line: 821, column: 45, scope: !217, inlinedAt: !221)
!223 = !DILocation(line: 821, column: 52, scope: !217, inlinedAt: !221)
!224 = !DILocation(line: 821, column: 17, scope: !217, inlinedAt: !221)
!225 = !DILocation(line: 822, column: 17, scope: !217, inlinedAt: !221)
!226 = !DILocation(line: 823, column: 17, scope: !217, inlinedAt: !221)
!227 = !DILocation(line: 824, column: 9, scope: !217, inlinedAt: !221)
!228 = !DILocation(line: 824, column: 18, scope: !217, inlinedAt: !221)
!229 = !DILocalVariable(name: "cb", arg: 1, scope: !230, file: !17, line: 787, type: !69)
!230 = distinct !DISubprogram(name: "x264_cabac_putbyte", scope: !17, file: !17, line: 787, type: !142, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!231 = !{!229, !232, !235, !238}
!232 = !DILocalVariable(name: "out", scope: !233, file: !17, line: 791, type: !75)
!233 = distinct !DILexicalBlock(scope: !234, file: !17, line: 790, column: 5)
!234 = distinct !DILexicalBlock(scope: !230, file: !17, line: 789, column: 9)
!235 = !DILocalVariable(name: "carry", scope: !236, file: !17, line: 799, type: !75)
!236 = distinct !DILexicalBlock(scope: !237, file: !17, line: 798, column: 9)
!237 = distinct !DILexicalBlock(scope: !233, file: !17, line: 795, column: 13)
!238 = !DILocalVariable(name: "bytes_outstanding", scope: !236, file: !17, line: 800, type: !75)
!239 = !DILocation(line: 0, scope: !230, inlinedAt: !240)
!240 = distinct !DILocation(line: 825, column: 5, scope: !217, inlinedAt: !221)
!241 = !DILocation(line: 789, column: 21, scope: !234, inlinedAt: !240)
!242 = !DILocation(line: 789, column: 9, scope: !230, inlinedAt: !240)
!243 = !DILocation(line: 791, column: 44, scope: !233, inlinedAt: !240)
!244 = !DILocation(line: 791, column: 29, scope: !233, inlinedAt: !240)
!245 = !DILocation(line: 0, scope: !233, inlinedAt: !240)
!246 = !DILocation(line: 792, column: 28, scope: !233, inlinedAt: !240)
!247 = !DILocation(line: 792, column: 42, scope: !233, inlinedAt: !240)
!248 = !DILocation(line: 792, column: 19, scope: !233, inlinedAt: !240)
!249 = !DILocation(line: 793, column: 21, scope: !233, inlinedAt: !240)
!250 = !DILocation(line: 795, column: 18, scope: !237, inlinedAt: !240)
!251 = !DILocation(line: 795, column: 26, scope: !237, inlinedAt: !240)
!252 = !DILocation(line: 795, column: 13, scope: !233, inlinedAt: !240)
!253 = !DILocation(line: 796, column: 17, scope: !237, inlinedAt: !240)
!254 = !DILocation(line: 796, column: 36, scope: !237, inlinedAt: !240)
!255 = !DILocation(line: 796, column: 13, scope: !237, inlinedAt: !240)
!256 = !DILocation(line: 799, column: 29, scope: !236, inlinedAt: !240)
!257 = !DILocation(line: 0, scope: !236, inlinedAt: !240)
!258 = !DILocation(line: 800, column: 41, scope: !236, inlinedAt: !240)
!259 = !DILocation(line: 807, column: 17, scope: !236, inlinedAt: !240)
!260 = !DILocation(line: 807, column: 13, scope: !236, inlinedAt: !240)
!261 = !DILocation(line: 807, column: 23, scope: !236, inlinedAt: !240)
!262 = !DILocation(line: 808, column: 38, scope: !236, inlinedAt: !240)
!263 = !DILocation(line: 808, column: 13, scope: !236, inlinedAt: !240)
!264 = !DILocation(line: 810, column: 24, scope: !265, inlinedAt: !240)
!265 = distinct !DILexicalBlock(scope: !236, file: !17, line: 809, column: 13)
!266 = !DILocation(line: 810, column: 28, scope: !265, inlinedAt: !240)
!267 = !DILocation(line: 811, column: 34, scope: !265, inlinedAt: !240)
!268 = distinct !{!268, !263, !269, !139, !140}
!269 = !DILocation(line: 812, column: 13, scope: !236, inlinedAt: !240)
!270 = !DILocation(line: 813, column: 26, scope: !236, inlinedAt: !240)
!271 = !DILocation(line: 813, column: 20, scope: !236, inlinedAt: !240)
!272 = !DILocation(line: 813, column: 24, scope: !236, inlinedAt: !240)
!273 = !DILocation(line: 814, column: 37, scope: !236, inlinedAt: !240)
!274 = !DILocation(line: 843, column: 1, scope: !189)
!275 = distinct !DISubprogram(name: "x264_cabac_encode_bypass_c", scope: !17, file: !17, line: 845, type: !276, scopeLine: 846, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !69, !75}
!278 = !{!279, !280}
!279 = !DILocalVariable(name: "cb", arg: 1, scope: !275, file: !17, line: 845, type: !69)
!280 = !DILocalVariable(name: "b", arg: 2, scope: !275, file: !17, line: 845, type: !75)
!281 = !DILocation(line: 0, scope: !275)
!282 = !DILocation(line: 847, column: 15, scope: !275)
!283 = !DILocation(line: 848, column: 18, scope: !275)
!284 = !DILocation(line: 848, column: 27, scope: !275)
!285 = !DILocation(line: 848, column: 21, scope: !275)
!286 = !DILocation(line: 848, column: 15, scope: !275)
!287 = !DILocation(line: 849, column: 9, scope: !275)
!288 = !DILocation(line: 849, column: 17, scope: !275)
!289 = !DILocation(line: 0, scope: !230, inlinedAt: !290)
!290 = distinct !DILocation(line: 850, column: 5, scope: !275)
!291 = !DILocation(line: 789, column: 21, scope: !234, inlinedAt: !290)
!292 = !DILocation(line: 789, column: 9, scope: !230, inlinedAt: !290)
!293 = !DILocation(line: 791, column: 44, scope: !233, inlinedAt: !290)
!294 = !DILocation(line: 791, column: 29, scope: !233, inlinedAt: !290)
!295 = !DILocation(line: 0, scope: !233, inlinedAt: !290)
!296 = !DILocation(line: 792, column: 28, scope: !233, inlinedAt: !290)
!297 = !DILocation(line: 792, column: 42, scope: !233, inlinedAt: !290)
!298 = !DILocation(line: 792, column: 19, scope: !233, inlinedAt: !290)
!299 = !DILocation(line: 793, column: 21, scope: !233, inlinedAt: !290)
!300 = !DILocation(line: 795, column: 18, scope: !237, inlinedAt: !290)
!301 = !DILocation(line: 795, column: 26, scope: !237, inlinedAt: !290)
!302 = !DILocation(line: 795, column: 13, scope: !233, inlinedAt: !290)
!303 = !DILocation(line: 796, column: 17, scope: !237, inlinedAt: !290)
!304 = !DILocation(line: 796, column: 36, scope: !237, inlinedAt: !290)
!305 = !DILocation(line: 796, column: 13, scope: !237, inlinedAt: !290)
!306 = !DILocation(line: 799, column: 29, scope: !236, inlinedAt: !290)
!307 = !DILocation(line: 0, scope: !236, inlinedAt: !290)
!308 = !DILocation(line: 800, column: 41, scope: !236, inlinedAt: !290)
!309 = !DILocation(line: 807, column: 17, scope: !236, inlinedAt: !290)
!310 = !DILocation(line: 807, column: 13, scope: !236, inlinedAt: !290)
!311 = !DILocation(line: 807, column: 23, scope: !236, inlinedAt: !290)
!312 = !DILocation(line: 808, column: 38, scope: !236, inlinedAt: !290)
!313 = !DILocation(line: 808, column: 13, scope: !236, inlinedAt: !290)
!314 = !DILocation(line: 810, column: 24, scope: !265, inlinedAt: !290)
!315 = !DILocation(line: 810, column: 28, scope: !265, inlinedAt: !290)
!316 = !DILocation(line: 811, column: 34, scope: !265, inlinedAt: !290)
!317 = distinct !{!317, !313, !318, !139, !140}
!318 = !DILocation(line: 812, column: 13, scope: !236, inlinedAt: !290)
!319 = !DILocation(line: 813, column: 26, scope: !236, inlinedAt: !290)
!320 = !DILocation(line: 813, column: 20, scope: !236, inlinedAt: !290)
!321 = !DILocation(line: 813, column: 24, scope: !236, inlinedAt: !290)
!322 = !DILocation(line: 814, column: 37, scope: !236, inlinedAt: !290)
!323 = !DILocation(line: 851, column: 1, scope: !275)
!324 = distinct !DISubprogram(name: "x264_cabac_encode_ue_bypass", scope: !17, file: !17, line: 853, type: !190, scopeLine: 854, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!325 = !{!326, !327, !328, !329, !330, !331}
!326 = !DILocalVariable(name: "cb", arg: 1, scope: !324, file: !17, line: 853, type: !69)
!327 = !DILocalVariable(name: "exp_bits", arg: 2, scope: !324, file: !17, line: 853, type: !75)
!328 = !DILocalVariable(name: "val", arg: 3, scope: !324, file: !17, line: 853, type: !75)
!329 = !DILocalVariable(name: "k", scope: !324, file: !17, line: 855, type: !75)
!330 = !DILocalVariable(name: "i", scope: !324, file: !17, line: 855, type: !75)
!331 = !DILocalVariable(name: "x", scope: !324, file: !17, line: 858, type: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !21, line: 26, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !23, line: 42, baseType: !7)
!334 = !DILocation(line: 0, scope: !324)
!335 = !DILocation(line: 856, column: 33, scope: !336)
!336 = distinct !DILexicalBlock(scope: !337, file: !17, line: 856, column: 5)
!337 = distinct !DILexicalBlock(scope: !324, file: !17, line: 856, column: 5)
!338 = !DILocation(line: 856, column: 28, scope: !336)
!339 = !DILocation(line: 856, column: 5, scope: !337)
!340 = !DILocation(line: 857, column: 13, scope: !336)
!341 = !DILocation(line: 856, column: 40, scope: !336)
!342 = distinct !{!342, !339, !343, !139, !140}
!343 = !DILocation(line: 857, column: 19, scope: !337)
!344 = !DILocation(line: 0, scope: !337)
!345 = !DILocation(line: 858, column: 26, scope: !324)
!346 = !DILocation(line: 858, column: 37, scope: !324)
!347 = !DILocation(line: 858, column: 44, scope: !324)
!348 = !DILocation(line: 858, column: 40, scope: !324)
!349 = !DILocation(line: 858, column: 48, scope: !324)
!350 = !DILocation(line: 859, column: 10, scope: !324)
!351 = !DILocation(line: 859, column: 12, scope: !324)
!352 = !DILocation(line: 859, column: 14, scope: !324)
!353 = !DILocation(line: 860, column: 12, scope: !324)
!354 = !DILocation(line: 860, column: 15, scope: !324)
!355 = !DILocation(line: 860, column: 18, scope: !324)
!356 = !DILocation(line: 863, column: 19, scope: !357)
!357 = distinct !DILexicalBlock(scope: !324, file: !17, line: 861, column: 8)
!358 = !DILocation(line: 861, column: 5, scope: !324)
!359 = !DILocation(line: 862, column: 11, scope: !357)
!360 = !DILocation(line: 864, column: 25, scope: !357)
!361 = !DILocation(line: 864, column: 29, scope: !357)
!362 = !DILocation(line: 864, column: 42, scope: !357)
!363 = !DILocation(line: 864, column: 36, scope: !357)
!364 = !DILocation(line: 864, column: 19, scope: !357)
!365 = !DILocation(line: 865, column: 21, scope: !357)
!366 = !DILocation(line: 0, scope: !230, inlinedAt: !367)
!367 = distinct !DILocation(line: 866, column: 9, scope: !357)
!368 = !DILocation(line: 789, column: 21, scope: !234, inlinedAt: !367)
!369 = !DILocation(line: 789, column: 9, scope: !230, inlinedAt: !367)
!370 = !DILocation(line: 791, column: 44, scope: !233, inlinedAt: !367)
!371 = !DILocation(line: 791, column: 29, scope: !233, inlinedAt: !367)
!372 = !DILocation(line: 0, scope: !233, inlinedAt: !367)
!373 = !DILocation(line: 792, column: 28, scope: !233, inlinedAt: !367)
!374 = !DILocation(line: 792, column: 42, scope: !233, inlinedAt: !367)
!375 = !DILocation(line: 792, column: 19, scope: !233, inlinedAt: !367)
!376 = !DILocation(line: 793, column: 21, scope: !233, inlinedAt: !367)
!377 = !DILocation(line: 795, column: 18, scope: !237, inlinedAt: !367)
!378 = !DILocation(line: 795, column: 26, scope: !237, inlinedAt: !367)
!379 = !DILocation(line: 795, column: 13, scope: !233, inlinedAt: !367)
!380 = !DILocation(line: 796, column: 36, scope: !237, inlinedAt: !367)
!381 = !DILocation(line: 796, column: 13, scope: !237, inlinedAt: !367)
!382 = !DILocation(line: 799, column: 29, scope: !236, inlinedAt: !367)
!383 = !DILocation(line: 0, scope: !236, inlinedAt: !367)
!384 = !DILocation(line: 800, column: 41, scope: !236, inlinedAt: !367)
!385 = !DILocation(line: 807, column: 17, scope: !236, inlinedAt: !367)
!386 = !DILocation(line: 807, column: 13, scope: !236, inlinedAt: !367)
!387 = !DILocation(line: 807, column: 23, scope: !236, inlinedAt: !367)
!388 = !DILocation(line: 808, column: 38, scope: !236, inlinedAt: !367)
!389 = !DILocation(line: 808, column: 13, scope: !236, inlinedAt: !367)
!390 = !DILocation(line: 810, column: 24, scope: !265, inlinedAt: !367)
!391 = !DILocation(line: 810, column: 28, scope: !265, inlinedAt: !367)
!392 = !DILocation(line: 811, column: 34, scope: !265, inlinedAt: !367)
!393 = distinct !{!393, !389, !394, !139, !140}
!394 = !DILocation(line: 812, column: 13, scope: !236, inlinedAt: !367)
!395 = !DILocation(line: 813, column: 26, scope: !236, inlinedAt: !367)
!396 = !DILocation(line: 813, column: 20, scope: !236, inlinedAt: !367)
!397 = !DILocation(line: 813, column: 24, scope: !236, inlinedAt: !367)
!398 = !DILocation(line: 814, column: 37, scope: !236, inlinedAt: !367)
!399 = !DILocation(line: 868, column: 16, scope: !324)
!400 = !DILocation(line: 868, column: 5, scope: !357)
!401 = distinct !{!401, !358, !402, !139, !140}
!402 = !DILocation(line: 868, column: 20, scope: !324)
!403 = !DILocation(line: 869, column: 1, scope: !324)
!404 = distinct !DISubprogram(name: "x264_cabac_encode_terminal_c", scope: !17, file: !17, line: 871, type: !142, scopeLine: 872, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !405)
!405 = !{!406}
!406 = !DILocalVariable(name: "cb", arg: 1, scope: !404, file: !17, line: 871, type: !69)
!407 = !DILocation(line: 0, scope: !404)
!408 = !DILocation(line: 873, column: 9, scope: !404)
!409 = !DILocation(line: 873, column: 17, scope: !404)
!410 = !DILocation(line: 0, scope: !217, inlinedAt: !411)
!411 = distinct !DILocation(line: 874, column: 5, scope: !404)
!412 = !DILocation(line: 821, column: 52, scope: !217, inlinedAt: !411)
!413 = !DILocation(line: 821, column: 17, scope: !217, inlinedAt: !411)
!414 = !DILocation(line: 822, column: 17, scope: !217, inlinedAt: !411)
!415 = !DILocation(line: 823, column: 17, scope: !217, inlinedAt: !411)
!416 = !DILocation(line: 824, column: 9, scope: !217, inlinedAt: !411)
!417 = !DILocation(line: 824, column: 18, scope: !217, inlinedAt: !411)
!418 = !DILocation(line: 0, scope: !230, inlinedAt: !419)
!419 = distinct !DILocation(line: 825, column: 5, scope: !217, inlinedAt: !411)
!420 = !DILocation(line: 789, column: 21, scope: !234, inlinedAt: !419)
!421 = !DILocation(line: 789, column: 9, scope: !230, inlinedAt: !419)
!422 = !DILocation(line: 791, column: 44, scope: !233, inlinedAt: !419)
!423 = !DILocation(line: 791, column: 29, scope: !233, inlinedAt: !419)
!424 = !DILocation(line: 0, scope: !233, inlinedAt: !419)
!425 = !DILocation(line: 792, column: 28, scope: !233, inlinedAt: !419)
!426 = !DILocation(line: 792, column: 42, scope: !233, inlinedAt: !419)
!427 = !DILocation(line: 792, column: 19, scope: !233, inlinedAt: !419)
!428 = !DILocation(line: 793, column: 21, scope: !233, inlinedAt: !419)
!429 = !DILocation(line: 795, column: 18, scope: !237, inlinedAt: !419)
!430 = !DILocation(line: 795, column: 26, scope: !237, inlinedAt: !419)
!431 = !DILocation(line: 795, column: 13, scope: !233, inlinedAt: !419)
!432 = !DILocation(line: 796, column: 17, scope: !237, inlinedAt: !419)
!433 = !DILocation(line: 796, column: 36, scope: !237, inlinedAt: !419)
!434 = !DILocation(line: 796, column: 13, scope: !237, inlinedAt: !419)
!435 = !DILocation(line: 799, column: 29, scope: !236, inlinedAt: !419)
!436 = !DILocation(line: 0, scope: !236, inlinedAt: !419)
!437 = !DILocation(line: 800, column: 41, scope: !236, inlinedAt: !419)
!438 = !DILocation(line: 807, column: 17, scope: !236, inlinedAt: !419)
!439 = !DILocation(line: 807, column: 13, scope: !236, inlinedAt: !419)
!440 = !DILocation(line: 807, column: 23, scope: !236, inlinedAt: !419)
!441 = !DILocation(line: 808, column: 38, scope: !236, inlinedAt: !419)
!442 = !DILocation(line: 808, column: 13, scope: !236, inlinedAt: !419)
!443 = !DILocation(line: 810, column: 24, scope: !265, inlinedAt: !419)
!444 = !DILocation(line: 810, column: 28, scope: !265, inlinedAt: !419)
!445 = !DILocation(line: 811, column: 34, scope: !265, inlinedAt: !419)
!446 = distinct !{!446, !442, !447, !139, !140}
!447 = !DILocation(line: 812, column: 13, scope: !236, inlinedAt: !419)
!448 = !DILocation(line: 813, column: 26, scope: !236, inlinedAt: !419)
!449 = !DILocation(line: 813, column: 20, scope: !236, inlinedAt: !419)
!450 = !DILocation(line: 813, column: 24, scope: !236, inlinedAt: !419)
!451 = !DILocation(line: 814, column: 37, scope: !236, inlinedAt: !419)
!452 = !DILocation(line: 875, column: 1, scope: !404)
!453 = distinct !DISubprogram(name: "x264_cabac_encode_flush", scope: !17, file: !17, line: 877, type: !454, scopeLine: 878, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1733)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !456, !69}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_t", file: !458, line: 46, baseType: !459)
!458 = !DIFile(filename: "apps/525.x264_r/src/x264_src/x264.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0b04871e4f52d5a4d8833c501cba2584")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_t", file: !6, line: 381, size: 266752, elements: !460)
!460 = !{!461, !629, !633, !634, !635, !636, !637, !638, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !773, !775, !802, !804, !805, !806, !811, !815, !816, !817, !821, !825, !826, !827, !832, !835, !836, !913, !914, !1075, !1076, !1077, !1078, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1103, !1297, !1301, !1362, !1365, !1367, !1369, !1370, !1373, !1378, !1387, !1388, !1396, !1398, !1403, !1479, !1565, !1609, !1631, !1680, !1709}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !459, file: !6, line: 384, baseType: !462, size: 5632)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_param_t", file: !458, line: 376, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_param_t", file: !458, line: 176, size: 5632, elements: !464)
!464 = !{!465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !508, !512, !513, !514, !515, !517, !518, !533, !534, !535, !536, !537, !567, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !463, file: !458, line: 179, baseType: !7, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_threads", scope: !463, file: !458, line: 180, baseType: !75, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "b_sliced_threads", scope: !463, file: !458, line: 181, baseType: !75, size: 32, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "b_deterministic", scope: !463, file: !458, line: 182, baseType: !75, size: 32, offset: 96)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "i_sync_lookahead", scope: !463, file: !458, line: 183, baseType: !75, size: 32, offset: 128)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !463, file: !458, line: 186, baseType: !75, size: 32, offset: 160)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "i_height", scope: !463, file: !458, line: 187, baseType: !75, size: 32, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "i_csp", scope: !463, file: !458, line: 188, baseType: !75, size: 32, offset: 224)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !463, file: !458, line: 189, baseType: !75, size: 32, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_total", scope: !463, file: !458, line: 190, baseType: !75, size: 32, offset: 288)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_hrd", scope: !463, file: !458, line: 198, baseType: !75, size: 32, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !463, file: !458, line: 215, baseType: !477, size: 288, offset: 352)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !458, line: 200, size: 288, elements: !478)
!478 = !{!479, !480, !481, !482, !483, !484, !485, !486, !487}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !477, file: !458, line: 203, baseType: !75, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !477, file: !458, line: 204, baseType: !75, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_overscan", scope: !477, file: !458, line: 206, baseType: !75, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !477, file: !458, line: 209, baseType: !75, size: 32, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !477, file: !458, line: 210, baseType: !75, size: 32, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !477, file: !458, line: 211, baseType: !75, size: 32, offset: 160)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !477, file: !458, line: 212, baseType: !75, size: 32, offset: 192)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !477, file: !458, line: 213, baseType: !75, size: 32, offset: 224)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc", scope: !477, file: !458, line: 214, baseType: !75, size: 32, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_reference", scope: !463, file: !458, line: 218, baseType: !75, size: 32, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_max", scope: !463, file: !458, line: 219, baseType: !75, size: 32, offset: 672)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "i_keyint_min", scope: !463, file: !458, line: 220, baseType: !75, size: 32, offset: 704)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "i_scenecut_threshold", scope: !463, file: !458, line: 221, baseType: !75, size: 32, offset: 736)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_refresh", scope: !463, file: !458, line: 222, baseType: !75, size: 32, offset: 768)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe", scope: !463, file: !458, line: 224, baseType: !75, size: 32, offset: 800)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_adaptive", scope: !463, file: !458, line: 225, baseType: !75, size: 32, offset: 832)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_bias", scope: !463, file: !458, line: 226, baseType: !75, size: 32, offset: 864)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_pyramid", scope: !463, file: !458, line: 227, baseType: !75, size: 32, offset: 896)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter", scope: !463, file: !458, line: 229, baseType: !75, size: 32, offset: 928)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_alphac0", scope: !463, file: !458, line: 230, baseType: !75, size: 32, offset: 960)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "i_deblocking_filter_beta", scope: !463, file: !458, line: 231, baseType: !75, size: 32, offset: 992)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !463, file: !458, line: 233, baseType: !75, size: 32, offset: 1024)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !463, file: !458, line: 234, baseType: !75, size: 32, offset: 1056)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !463, file: !458, line: 236, baseType: !75, size: 32, offset: 1088)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra", scope: !463, file: !458, line: 237, baseType: !75, size: 32, offset: 1120)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !463, file: !458, line: 239, baseType: !75, size: 32, offset: 1152)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "psz_cqm_file", scope: !463, file: !458, line: 240, baseType: !506, size: 64, offset: 1216)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4iy", scope: !463, file: !458, line: 241, baseType: !509, size: 128, offset: 1280)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 16)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4ic", scope: !463, file: !458, line: 242, baseType: !509, size: 128, offset: 1408)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4py", scope: !463, file: !458, line: 243, baseType: !509, size: 128, offset: 1536)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_4pc", scope: !463, file: !458, line: 244, baseType: !509, size: 128, offset: 1664)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8iy", scope: !463, file: !458, line: 245, baseType: !516, size: 512, offset: 1792)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 512, elements: !31)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "cqm_8py", scope: !463, file: !458, line: 246, baseType: !516, size: 512, offset: 2304)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pf_log", scope: !463, file: !458, line: 249, baseType: !519, size: 64, offset: 2816)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !522, !75, !523, !525}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !527)
!527 = !{!528, !530, !531, !532}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !526, file: !529, line: 875, baseType: !7, size: 32)
!529 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/cabac.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !526, file: !529, line: 875, baseType: !7, size: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !526, file: !529, line: 875, baseType: !522, size: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !526, file: !529, line: 875, baseType: !522, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "p_log_private", scope: !463, file: !458, line: 250, baseType: !522, size: 64, offset: 2880)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "i_log_level", scope: !463, file: !458, line: 251, baseType: !75, size: 32, offset: 2944)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "b_visualize", scope: !463, file: !458, line: 252, baseType: !75, size: 32, offset: 2976)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "psz_dump_yuv", scope: !463, file: !458, line: 253, baseType: !506, size: 64, offset: 3008)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "analyse", scope: !463, file: !458, line: 287, baseType: !538, size: 800, offset: 3072)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !458, line: 256, size: 800, elements: !539)
!539 = !{!540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !560, !561, !562, !565, !566}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "intra", scope: !538, file: !458, line: 258, baseType: !7, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "inter", scope: !538, file: !458, line: 259, baseType: !7, size: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !538, file: !458, line: 261, baseType: !75, size: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_weighted_pred", scope: !538, file: !458, line: 262, baseType: !75, size: 32, offset: 96)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !538, file: !458, line: 263, baseType: !75, size: 32, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_mv_pred", scope: !538, file: !458, line: 264, baseType: !75, size: 32, offset: 160)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_offset", scope: !538, file: !458, line: 265, baseType: !75, size: 32, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !538, file: !458, line: 267, baseType: !75, size: 32, offset: 224)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_range", scope: !538, file: !458, line: 268, baseType: !75, size: 32, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range", scope: !538, file: !458, line: 269, baseType: !75, size: 32, offset: 288)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_range_thread", scope: !538, file: !458, line: 270, baseType: !75, size: 32, offset: 320)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !538, file: !458, line: 271, baseType: !75, size: 32, offset: 352)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !538, file: !458, line: 272, baseType: !75, size: 32, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "b_mixed_references", scope: !538, file: !458, line: 273, baseType: !75, size: 32, offset: 416)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis", scope: !538, file: !458, line: 274, baseType: !75, size: 32, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "b_fast_pskip", scope: !538, file: !458, line: 275, baseType: !75, size: 32, offset: 480)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !538, file: !458, line: 276, baseType: !75, size: 32, offset: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "i_noise_reduction", scope: !538, file: !458, line: 277, baseType: !75, size: 32, offset: 544)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_rd", scope: !538, file: !458, line: 278, baseType: !559, size: 32, offset: 576)
!559 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "f_psy_trellis", scope: !538, file: !458, line: 279, baseType: !559, size: 32, offset: 608)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "b_psy", scope: !538, file: !458, line: 280, baseType: !75, size: 32, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_luma_deadzone", scope: !538, file: !458, line: 283, baseType: !563, size: 64, offset: 672)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 64, elements: !564)
!564 = !{!27}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "b_psnr", scope: !538, file: !458, line: 285, baseType: !75, size: 32, offset: 736)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "b_ssim", scope: !538, file: !458, line: 286, baseType: !75, size: 32, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !463, file: !458, line: 327, baseType: !568, size: 1152, offset: 3904)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !458, line: 290, size: 1152, elements: !569)
!569 = !{!570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !607, !608}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "i_rc_method", scope: !568, file: !458, line: 292, baseType: !75, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_constant", scope: !568, file: !458, line: 294, baseType: !75, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_min", scope: !568, file: !458, line: 295, baseType: !75, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_max", scope: !568, file: !458, line: 296, baseType: !75, size: 32, offset: 96)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_step", scope: !568, file: !458, line: 297, baseType: !75, size: 32, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitrate", scope: !568, file: !458, line: 299, baseType: !75, size: 32, offset: 160)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant", scope: !568, file: !458, line: 300, baseType: !559, size: 32, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "f_rf_constant_max", scope: !568, file: !458, line: 301, baseType: !559, size: 32, offset: 224)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "f_rate_tolerance", scope: !568, file: !458, line: 302, baseType: !559, size: 32, offset: 256)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_max_bitrate", scope: !568, file: !458, line: 303, baseType: !75, size: 32, offset: 288)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "i_vbv_buffer_size", scope: !568, file: !458, line: 304, baseType: !75, size: 32, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "f_vbv_buffer_init", scope: !568, file: !458, line: 305, baseType: !559, size: 32, offset: 352)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "f_ip_factor", scope: !568, file: !458, line: 306, baseType: !559, size: 32, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_pb_factor", scope: !568, file: !458, line: 307, baseType: !559, size: 32, offset: 416)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "i_aq_mode", scope: !568, file: !458, line: 309, baseType: !75, size: 32, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "f_aq_strength", scope: !568, file: !458, line: 310, baseType: !559, size: 32, offset: 480)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_tree", scope: !568, file: !458, line: 311, baseType: !75, size: 32, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "i_lookahead", scope: !568, file: !458, line: 312, baseType: !75, size: 32, offset: 544)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_write", scope: !568, file: !458, line: 315, baseType: !75, size: 32, offset: 576)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_out", scope: !568, file: !458, line: 316, baseType: !506, size: 64, offset: 640)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "b_stat_read", scope: !568, file: !458, line: 317, baseType: !75, size: 32, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "psz_stat_in", scope: !568, file: !458, line: 318, baseType: !506, size: 64, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "f_qcompress", scope: !568, file: !458, line: 321, baseType: !559, size: 32, offset: 832)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "f_qblur", scope: !568, file: !458, line: 322, baseType: !559, size: 32, offset: 864)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "f_complexity_blur", scope: !568, file: !458, line: 323, baseType: !559, size: 32, offset: 896)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "zones", scope: !568, file: !458, line: 324, baseType: !596, size: 64, offset: 960)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zone_t", file: !458, line: 174, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 167, size: 256, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "i_start", scope: !598, file: !458, line: 169, baseType: !75, size: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "i_end", scope: !598, file: !458, line: 169, baseType: !75, size: 32, offset: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "b_force_qp", scope: !598, file: !458, line: 170, baseType: !75, size: 32, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !598, file: !458, line: 171, baseType: !75, size: 32, offset: 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_bitrate_factor", scope: !598, file: !458, line: 172, baseType: !559, size: 32, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !598, file: !458, line: 173, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "i_zones", scope: !568, file: !458, line: 325, baseType: !75, size: 32, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "psz_zones", scope: !568, file: !458, line: 326, baseType: !506, size: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "b_aud", scope: !463, file: !458, line: 330, baseType: !75, size: 32, offset: 5056)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "b_repeat_headers", scope: !463, file: !458, line: 331, baseType: !75, size: 32, offset: 5088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "b_annexb", scope: !463, file: !458, line: 332, baseType: !75, size: 32, offset: 5120)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !463, file: !458, line: 334, baseType: !75, size: 32, offset: 5152)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "b_vfr_input", scope: !463, file: !458, line: 335, baseType: !75, size: 32, offset: 5184)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_num", scope: !463, file: !458, line: 336, baseType: !332, size: 32, offset: 5216)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "i_fps_den", scope: !463, file: !458, line: 337, baseType: !332, size: 32, offset: 5248)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_num", scope: !463, file: !458, line: 338, baseType: !332, size: 32, offset: 5280)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_timebase_den", scope: !463, file: !458, line: 339, baseType: !332, size: 32, offset: 5312)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "b_dts_compress", scope: !463, file: !458, line: 340, baseType: !75, size: 32, offset: 5344)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "b_tff", scope: !463, file: !458, line: 344, baseType: !75, size: 32, offset: 5376)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct", scope: !463, file: !458, line: 356, baseType: !75, size: 32, offset: 5408)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "b_fake_interlaced", scope: !463, file: !458, line: 364, baseType: !75, size: 32, offset: 5440)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_size", scope: !463, file: !458, line: 367, baseType: !75, size: 32, offset: 5472)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_max_mbs", scope: !463, file: !458, line: 368, baseType: !75, size: 32, offset: 5504)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "i_slice_count", scope: !463, file: !458, line: 369, baseType: !75, size: 32, offset: 5536)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "param_free", scope: !463, file: !458, line: 375, baseType: !626, size: 64, offset: 5568)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !522}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !459, file: !6, line: 386, baseType: !630, size: 8256, offset: 5632)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 8256, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 129)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "thread_handle", scope: !459, file: !6, line: 387, baseType: !75, size: 32, offset: 13888)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !459, file: !6, line: 388, baseType: !75, size: 32, offset: 13920)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_phase", scope: !459, file: !6, line: 389, baseType: !75, size: 32, offset: 13952)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_start", scope: !459, file: !6, line: 390, baseType: !75, size: 32, offset: 13984)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "i_threadslice_end", scope: !459, file: !6, line: 391, baseType: !75, size: 32, offset: 14016)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !459, file: !6, line: 402, baseType: !639, size: 576, offset: 14080)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !6, line: 394, size: 576, elements: !640)
!640 = !{!641, !642, !643, !652, !653, !654}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal", scope: !639, file: !6, line: 396, baseType: !75, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_nals_allocated", scope: !639, file: !6, line: 397, baseType: !75, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "nal", scope: !639, file: !6, line: 398, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_nal_t", file: !458, line: 604, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 593, size: 192, elements: !647)
!647 = !{!648, !649, !650, !651}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref_idc", scope: !646, file: !458, line: 595, baseType: !75, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !646, file: !458, line: 596, baseType: !75, size: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_payload", scope: !646, file: !458, line: 599, baseType: !75, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "p_payload", scope: !646, file: !458, line: 603, baseType: !80, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "i_bitstream", scope: !639, file: !6, line: 399, baseType: !75, size: 32, offset: 128)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "p_bitstream", scope: !639, file: !6, line: 400, baseType: !80, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !639, file: !6, line: 401, baseType: !655, size: 320, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "bs_t", file: !656, line: 56, baseType: !657)
!656 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/bs.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e3e135f4389fadb006d4bc4f2055a86")
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bs_s", file: !656, line: 47, size: 320, elements: !658)
!658 = !{!659, !660, !661, !662, !666, !667}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "p_start", scope: !657, file: !656, line: 49, baseType: !80, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !657, file: !656, line: 50, baseType: !80, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "p_end", scope: !657, file: !656, line: 51, baseType: !80, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bits", scope: !657, file: !656, line: 53, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !664, line: 87, baseType: !665)
!664 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!665 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !657, file: !656, line: 54, baseType: !75, size: 32, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_bits_encoded", scope: !657, file: !656, line: 55, baseType: !75, size: 32, offset: 288)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer", scope: !459, file: !6, line: 404, baseType: !80, size: 64, offset: 14656)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nal_buffer_size", scope: !459, file: !6, line: 405, baseType: !75, size: 32, offset: 14720)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !459, file: !6, line: 410, baseType: !75, size: 32, offset: 14752)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !459, file: !6, line: 411, baseType: !75, size: 32, offset: 14784)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "i_thread_frames", scope: !459, file: !6, line: 413, baseType: !75, size: 32, offset: 14816)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_type", scope: !459, file: !6, line: 415, baseType: !75, size: 32, offset: 14848)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "i_nal_ref_idc", scope: !459, file: !6, line: 416, baseType: !75, size: 32, offset: 14880)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields", scope: !459, file: !6, line: 418, baseType: !75, size: 32, offset: 14912)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_disp_fields_last_frame", scope: !459, file: !6, line: 419, baseType: !75, size: 32, offset: 14944)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_duration", scope: !459, file: !6, line: 420, baseType: !75, size: 32, offset: 14976)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields", scope: !459, file: !6, line: 421, baseType: !75, size: 32, offset: 15008)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !459, file: !6, line: 422, baseType: !75, size: 32, offset: 15040)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !459, file: !6, line: 424, baseType: !75, size: 32, offset: 15072)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !459, file: !6, line: 425, baseType: !75, size: 32, offset: 15104)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "b_queued_intra_refresh", scope: !459, file: !6, line: 427, baseType: !75, size: 32, offset: 15136)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sps_array", scope: !459, file: !6, line: 430, baseType: !684, size: 10400, offset: 15168)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !685, size: 10400, elements: !771)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_sps_t", file: !686, line: 154, baseType: !687)
!686 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/set.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "36bc2db0356ac829288e85d371259e00")
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 52, size: 10400, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !706, !707, !708, !709, !710, !711, !712, !713, !714, !721, !722, !770}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !687, file: !686, line: 54, baseType: !75, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i_profile_idc", scope: !687, file: !686, line: 56, baseType: !75, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "i_level_idc", scope: !687, file: !686, line: 57, baseType: !75, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set0", scope: !687, file: !686, line: 59, baseType: !75, size: 32, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set1", scope: !687, file: !686, line: 60, baseType: !75, size: 32, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "b_constraint_set2", scope: !687, file: !686, line: 61, baseType: !75, size: 32, offset: 160)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_frame_num", scope: !687, file: !686, line: 63, baseType: !75, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_type", scope: !687, file: !686, line: 65, baseType: !75, size: 32, offset: 224)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_poc_lsb", scope: !687, file: !686, line: 67, baseType: !75, size: 32, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "b_delta_pic_order_always_zero", scope: !687, file: !686, line: 69, baseType: !75, size: 32, offset: 288)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_non_ref_pic", scope: !687, file: !686, line: 70, baseType: !75, size: 32, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_top_to_bottom_field", scope: !687, file: !686, line: 71, baseType: !75, size: 32, offset: 352)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames_in_poc_cycle", scope: !687, file: !686, line: 72, baseType: !75, size: 32, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset_for_ref_frame", scope: !687, file: !686, line: 73, baseType: !703, size: 8192, offset: 416)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 8192, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_frames", scope: !687, file: !686, line: 75, baseType: !75, size: 32, offset: 8608)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "b_gaps_in_frame_num_value_allowed", scope: !687, file: !686, line: 76, baseType: !75, size: 32, offset: 8640)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_width", scope: !687, file: !686, line: 77, baseType: !75, size: 32, offset: 8672)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_height", scope: !687, file: !686, line: 78, baseType: !75, size: 32, offset: 8704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "b_frame_mbs_only", scope: !687, file: !686, line: 79, baseType: !75, size: 32, offset: 8736)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "b_mb_adaptive_frame_field", scope: !687, file: !686, line: 80, baseType: !75, size: 32, offset: 8768)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct8x8_inference", scope: !687, file: !686, line: 81, baseType: !75, size: 32, offset: 8800)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "b_crop", scope: !687, file: !686, line: 83, baseType: !75, size: 32, offset: 8832)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "crop", scope: !687, file: !686, line: 90, baseType: !715, size: 128, offset: 8864)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !686, line: 84, size: 128, elements: !716)
!716 = !{!717, !718, !719, !720}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_left", scope: !715, file: !686, line: 86, baseType: !75, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_right", scope: !715, file: !686, line: 87, baseType: !75, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "i_top", scope: !715, file: !686, line: 88, baseType: !75, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_bottom", scope: !715, file: !686, line: 89, baseType: !75, size: 32, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "b_vui", scope: !687, file: !686, line: 92, baseType: !75, size: 32, offset: 8992)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vui", scope: !687, file: !686, line: 150, baseType: !723, size: 1344, offset: 9024)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !687, file: !686, line: 93, size: 1344, elements: !724)
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "b_aspect_ratio_info_present", scope: !723, file: !686, line: 95, baseType: !75, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_width", scope: !723, file: !686, line: 96, baseType: !75, size: 32, offset: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "i_sar_height", scope: !723, file: !686, line: 97, baseType: !75, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info_present", scope: !723, file: !686, line: 99, baseType: !75, size: 32, offset: 96)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "b_overscan_info", scope: !723, file: !686, line: 100, baseType: !75, size: 32, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "b_signal_type_present", scope: !723, file: !686, line: 102, baseType: !75, size: 32, offset: 160)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "i_vidformat", scope: !723, file: !686, line: 103, baseType: !75, size: 32, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "b_fullrange", scope: !723, file: !686, line: 104, baseType: !75, size: 32, offset: 224)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "b_color_description_present", scope: !723, file: !686, line: 105, baseType: !75, size: 32, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "i_colorprim", scope: !723, file: !686, line: 106, baseType: !75, size: 32, offset: 288)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_transfer", scope: !723, file: !686, line: 107, baseType: !75, size: 32, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_colmatrix", scope: !723, file: !686, line: 108, baseType: !75, size: 32, offset: 352)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_loc_info_present", scope: !723, file: !686, line: 110, baseType: !75, size: 32, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_top", scope: !723, file: !686, line: 111, baseType: !75, size: 32, offset: 416)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_loc_bottom", scope: !723, file: !686, line: 112, baseType: !75, size: 32, offset: 448)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "b_timing_info_present", scope: !723, file: !686, line: 114, baseType: !75, size: 32, offset: 480)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_units_in_tick", scope: !723, file: !686, line: 115, baseType: !332, size: 32, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_scale", scope: !723, file: !686, line: 116, baseType: !332, size: 32, offset: 544)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "b_fixed_frame_rate", scope: !723, file: !686, line: 117, baseType: !75, size: 32, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "b_nal_hrd_parameters_present", scope: !723, file: !686, line: 119, baseType: !75, size: 32, offset: 608)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "b_vcl_hrd_parameters_present", scope: !723, file: !686, line: 120, baseType: !75, size: 32, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "hrd", scope: !723, file: !686, line: 137, baseType: !747, size: 384, offset: 672)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !723, file: !686, line: 122, size: 384, elements: !748)
!748 = !{!749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_cnt", scope: !747, file: !686, line: 124, baseType: !75, size: 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_scale", scope: !747, file: !686, line: 125, baseType: !75, size: 32, offset: 32)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_scale", scope: !747, file: !686, line: 126, baseType: !75, size: 32, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_value", scope: !747, file: !686, line: 127, baseType: !75, size: 32, offset: 96)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_value", scope: !747, file: !686, line: 128, baseType: !75, size: 32, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_bit_rate_unscaled", scope: !747, file: !686, line: 129, baseType: !75, size: 32, offset: 160)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_size_unscaled", scope: !747, file: !686, line: 130, baseType: !75, size: 32, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "b_cbr_hrd", scope: !747, file: !686, line: 131, baseType: !75, size: 32, offset: 224)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_initial_cpb_removal_delay_length", scope: !747, file: !686, line: 133, baseType: !75, size: 32, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_removal_delay_length", scope: !747, file: !686, line: 134, baseType: !75, size: 32, offset: 288)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay_length", scope: !747, file: !686, line: 135, baseType: !75, size: 32, offset: 320)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_time_offset_length", scope: !747, file: !686, line: 136, baseType: !75, size: 32, offset: 352)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_struct_present", scope: !723, file: !686, line: 139, baseType: !75, size: 32, offset: 1056)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "b_bitstream_restriction", scope: !723, file: !686, line: 140, baseType: !75, size: 32, offset: 1088)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "b_motion_vectors_over_pic_boundaries", scope: !723, file: !686, line: 141, baseType: !75, size: 32, offset: 1120)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bytes_per_pic_denom", scope: !723, file: !686, line: 142, baseType: !75, size: 32, offset: 1152)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_bits_per_mb_denom", scope: !723, file: !686, line: 143, baseType: !75, size: 32, offset: 1184)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_horizontal", scope: !723, file: !686, line: 144, baseType: !75, size: 32, offset: 1216)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_log2_max_mv_length_vertical", scope: !723, file: !686, line: 145, baseType: !75, size: 32, offset: 1248)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_reorder_frames", scope: !723, file: !686, line: 146, baseType: !75, size: 32, offset: 1280)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dec_frame_buffering", scope: !723, file: !686, line: 147, baseType: !75, size: 32, offset: 1312)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "b_qpprime_y_zero_transform_bypass", scope: !687, file: !686, line: 152, baseType: !75, size: 32, offset: 10368)
!771 = !{!772}
!772 = !DISubrange(count: 1)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !459, file: !6, line: 431, baseType: !774, size: 64, offset: 25600)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pps_array", scope: !459, file: !6, line: 432, baseType: !776, size: 960, offset: 25664)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 960, elements: !771)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pps_t", file: !686, line: 186, baseType: !778)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !686, line: 156, size: 960, elements: !779)
!779 = !{!780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "i_id", scope: !778, file: !686, line: 158, baseType: !75, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "i_sps_id", scope: !778, file: !686, line: 159, baseType: !75, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "b_cabac", scope: !778, file: !686, line: 161, baseType: !75, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "b_pic_order", scope: !778, file: !686, line: 163, baseType: !75, size: 32, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_slice_groups", scope: !778, file: !686, line: 164, baseType: !75, size: 32, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_default_active", scope: !778, file: !686, line: 166, baseType: !75, size: 32, offset: 160)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_default_active", scope: !778, file: !686, line: 167, baseType: !75, size: 32, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_pred", scope: !778, file: !686, line: 169, baseType: !75, size: 32, offset: 224)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "b_weighted_bipred", scope: !778, file: !686, line: 170, baseType: !75, size: 32, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qp", scope: !778, file: !686, line: 172, baseType: !75, size: 32, offset: 288)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_init_qs", scope: !778, file: !686, line: 173, baseType: !75, size: 32, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp_index_offset", scope: !778, file: !686, line: 175, baseType: !75, size: 32, offset: 352)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "b_deblocking_filter_control", scope: !778, file: !686, line: 177, baseType: !75, size: 32, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "b_constrained_intra_pred", scope: !778, file: !686, line: 178, baseType: !75, size: 32, offset: 416)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "b_redundant_pic_cnt", scope: !778, file: !686, line: 179, baseType: !75, size: 32, offset: 448)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8_mode", scope: !778, file: !686, line: 181, baseType: !75, size: 32, offset: 480)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_cqm_preset", scope: !778, file: !686, line: 183, baseType: !75, size: 32, offset: 512)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_list", scope: !778, file: !686, line: 184, baseType: !798, size: 384, offset: 576)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 384, elements: !800)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!800 = !{!801}
!801 = !DISubrange(count: 6)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !459, file: !6, line: 433, baseType: !803, size: 64, offset: 26624)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !459, file: !6, line: 434, baseType: !75, size: 32, offset: 26688)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "i_dts_compress_multiplier", scope: !459, file: !6, line: 437, baseType: !75, size: 32, offset: 26720)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "dequant4_mf", scope: !459, file: !6, line: 440, baseType: !807, size: 256, offset: 26752)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 256, elements: !810)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 512, elements: !510)
!810 = !{!58}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "dequant8_mf", scope: !459, file: !6, line: 441, baseType: !812, size: 128, offset: 27008)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !813, size: 128, elements: !564)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 2048, elements: !31)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "unquant4_mf", scope: !459, file: !6, line: 443, baseType: !807, size: 256, offset: 27136)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "unquant8_mf", scope: !459, file: !6, line: 444, baseType: !812, size: 128, offset: 27392)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_mf", scope: !459, file: !6, line: 446, baseType: !818, size: 256, offset: 27520)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !819, size: 256, elements: !810)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 256, elements: !510)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_mf", scope: !459, file: !6, line: 447, baseType: !822, size: 128, offset: 27776)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !823, size: 128, elements: !564)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 1024, elements: !31)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "quant4_bias", scope: !459, file: !6, line: 448, baseType: !818, size: 256, offset: 27904)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "quant8_bias", scope: !459, file: !6, line: 449, baseType: !822, size: 128, offset: 28160)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv", scope: !459, file: !6, line: 454, baseType: !828, size: 5888, offset: 28288)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 5888, elements: !830)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!830 = !{!831}
!831 = !DISubrange(count: 92)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "cost_mv_fpel", scope: !459, file: !6, line: 455, baseType: !833, size: 23552, offset: 34176)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 23552, elements: !834)
!834 = !{!831, !58}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_qp_table", scope: !459, file: !6, line: 457, baseType: !799, size: 64, offset: 57728)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sh", scope: !459, file: !6, line: 460, baseType: !837, size: 53376, offset: 57856)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_slice_header_t", file: !6, line: 364, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !6, line: 302, size: 53376, elements: !839)
!839 = !{!840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !868, !897, !898, !899, !905, !906, !907, !908, !909, !910, !911, !912}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "sps", scope: !838, file: !6, line: 304, baseType: !774, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pps", scope: !838, file: !6, line: 305, baseType: !803, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !838, file: !6, line: 307, baseType: !75, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "i_first_mb", scope: !838, file: !6, line: 308, baseType: !75, size: 32, offset: 160)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_mb", scope: !838, file: !6, line: 309, baseType: !75, size: 32, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_pps_id", scope: !838, file: !6, line: 311, baseType: !75, size: 32, offset: 224)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !838, file: !6, line: 313, baseType: !75, size: 32, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "b_mbaff", scope: !838, file: !6, line: 315, baseType: !75, size: 32, offset: 288)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "b_field_pic", scope: !838, file: !6, line: 316, baseType: !75, size: 32, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "b_bottom_field", scope: !838, file: !6, line: 317, baseType: !75, size: 32, offset: 352)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "i_idr_pic_id", scope: !838, file: !6, line: 319, baseType: !75, size: 32, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !838, file: !6, line: 321, baseType: !75, size: 32, offset: 416)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc_bottom", scope: !838, file: !6, line: 322, baseType: !75, size: 32, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "i_delta_poc", scope: !838, file: !6, line: 324, baseType: !563, size: 64, offset: 480)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "i_redundant_pic_cnt", scope: !838, file: !6, line: 325, baseType: !75, size: 32, offset: 544)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_spatial_mv_pred", scope: !838, file: !6, line: 327, baseType: !75, size: 32, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "b_num_ref_idx_override", scope: !838, file: !6, line: 329, baseType: !75, size: 32, offset: 608)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l0_active", scope: !838, file: !6, line: 330, baseType: !75, size: 32, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "i_num_ref_idx_l1_active", scope: !838, file: !6, line: 331, baseType: !75, size: 32, offset: 672)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l0", scope: !838, file: !6, line: 333, baseType: !75, size: 32, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_pic_list_reordering_l1", scope: !838, file: !6, line: 334, baseType: !75, size: 32, offset: 736)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ref_pic_list_order", scope: !838, file: !6, line: 339, baseType: !862, size: 2048, offset: 768)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 2048, elements: !867)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !838, file: !6, line: 335, size: 64, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "idc", scope: !863, file: !6, line: 337, baseType: !75, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !863, file: !6, line: 338, baseType: !75, size: 32, offset: 32)
!867 = !{!27, !511}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !838, file: !6, line: 342, baseType: !869, size: 49152, align: 128, offset: 2816)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 49152, align: 128, elements: !895)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_weight_t", file: !871, line: 36, baseType: !872, align: 128)
!871 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/mc.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "04d0fbb98b637fe4174e4cc20d723861")
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_weight_t", file: !871, line: 26, size: 512, elements: !873)
!873 = !{!874, !881, !882, !885, !886, !887}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "cachea", scope: !872, file: !871, line: 30, baseType: !875, size: 128, align: 128)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 128, elements: !879)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !46, line: 25, baseType: !877)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !23, line: 39, baseType: !878)
!878 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!879 = !{!880}
!880 = !DISubrange(count: 8)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "cacheb", scope: !872, file: !871, line: 31, baseType: !875, size: 128, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "i_denom", scope: !872, file: !871, line: 32, baseType: !883, size: 32, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !46, line: 26, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !23, line: 41, baseType: !75)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_scale", scope: !872, file: !871, line: 33, baseType: !883, size: 32, offset: 288)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "i_offset", scope: !872, file: !871, line: 34, baseType: !883, size: 32, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "weightfn", scope: !872, file: !871, line: 35, baseType: !888, size: 64, offset: 384)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "weight_fn_t", file: !871, line: 25, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !80, !75, !80, !75, !893, !75}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!895 = !{!896, !55}
!896 = !DISubrange(count: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_remove_from_end", scope: !838, file: !6, line: 344, baseType: !75, size: 32, offset: 51968)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmco_command_count", scope: !838, file: !6, line: 345, baseType: !75, size: 32, offset: 52000)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mmco", scope: !838, file: !6, line: 350, baseType: !900, size: 1024, offset: 52032)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 1024, elements: !510)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !838, file: !6, line: 346, size: 64, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "i_difference_of_pic_nums", scope: !901, file: !6, line: 348, baseType: !75, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !901, file: !6, line: 349, baseType: !75, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "i_cabac_init_idc", scope: !838, file: !6, line: 352, baseType: !75, size: 32, offset: 53056)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !838, file: !6, line: 354, baseType: !75, size: 32, offset: 53088)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp_delta", scope: !838, file: !6, line: 355, baseType: !75, size: 32, offset: 53120)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "b_sp_for_swidth", scope: !838, file: !6, line: 356, baseType: !75, size: 32, offset: 53152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "i_qs_delta", scope: !838, file: !6, line: 357, baseType: !75, size: 32, offset: 53184)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "i_disable_deblocking_filter_idc", scope: !838, file: !6, line: 360, baseType: !75, size: 32, offset: 53216)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_alpha_c0_offset", scope: !838, file: !6, line: 361, baseType: !75, size: 32, offset: 53248)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "i_beta_offset", scope: !838, file: !6, line: 362, baseType: !75, size: 32, offset: 53280)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "cabac", scope: !459, file: !6, line: 463, baseType: !70, size: 4096, offset: 111232)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "frames", scope: !459, file: !6, line: 494, baseType: !915, size: 2112, offset: 115328)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !6, line: 465, size: 2112, elements: !916)
!916 = !{!917, !1055, !1057, !1058, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1071, !1072, !1073, !1074}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !915, file: !6, line: 468, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_frame_t", file: !921, line: 146, baseType: !922)
!921 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/frame.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4a274a9291201f03b4af1f57e6a86f6f")
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_frame", file: !921, line: 31, size: 125056, elements: !923)
!923 = !{!924, !925, !926, !927, !930, !931, !932, !933, !934, !935, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !954, !955, !956, !957, !958, !959, !961, !963, !964, !965, !966, !967, !970, !972, !973, !975, !977, !978, !982, !983, !987, !991, !994, !996, !997, !999, !1000, !1002, !1003, !1004, !1007, !1009, !1010, !1011, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1022, !1023, !1027, !1036, !1040, !1042, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc", scope: !922, file: !921, line: 34, baseType: !75, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !922, file: !921, line: 35, baseType: !75, size: 32, offset: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "i_qpplus1", scope: !922, file: !921, line: 36, baseType: !75, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_pts", scope: !922, file: !921, line: 37, baseType: !928, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !46, line: 27, baseType: !929)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !23, line: 44, baseType: !665)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts", scope: !922, file: !921, line: 38, baseType: !928, size: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_duration", scope: !922, file: !921, line: 39, baseType: !75, size: 32, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_duration", scope: !922, file: !921, line: 40, baseType: !75, size: 32, offset: 288)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay", scope: !922, file: !921, line: 41, baseType: !75, size: 32, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "i_dpb_output_delay", scope: !922, file: !921, line: 42, baseType: !75, size: 32, offset: 352)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !922, file: !921, line: 43, baseType: !936, size: 64, offset: 384)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame", scope: !922, file: !921, line: 45, baseType: !75, size: 32, offset: 448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded", scope: !922, file: !921, line: 46, baseType: !75, size: 32, offset: 480)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "i_field_cnt", scope: !922, file: !921, line: 47, baseType: !75, size: 32, offset: 512)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_num", scope: !922, file: !921, line: 48, baseType: !75, size: 32, offset: 544)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "b_kept_as_ref", scope: !922, file: !921, line: 49, baseType: !75, size: 32, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_pic_struct", scope: !922, file: !921, line: 50, baseType: !75, size: 32, offset: 608)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "b_keyframe", scope: !922, file: !921, line: 51, baseType: !75, size: 32, offset: 640)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "b_fdec", scope: !922, file: !921, line: 52, baseType: !20, size: 8, offset: 672)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "b_last_minigop_bframe", scope: !922, file: !921, line: 53, baseType: !20, size: 8, offset: 680)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframes", scope: !922, file: !921, line: 54, baseType: !20, size: 8, offset: 688)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_rc", scope: !922, file: !921, line: 55, baseType: !559, size: 32, offset: 704)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_avg_aq", scope: !922, file: !921, line: 56, baseType: !559, size: 32, offset: 736)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "i_poc_l0ref0", scope: !922, file: !921, line: 57, baseType: !75, size: 32, offset: 768)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "i_plane", scope: !922, file: !921, line: 60, baseType: !75, size: 32, offset: 800)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !922, file: !921, line: 61, baseType: !952, size: 96, offset: 832)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 96, elements: !953)
!953 = !{!55}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "i_width", scope: !922, file: !921, line: 62, baseType: !952, size: 96, offset: 928)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines", scope: !922, file: !921, line: 63, baseType: !952, size: 96, offset: 1024)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride_lowres", scope: !922, file: !921, line: 64, baseType: !75, size: 32, offset: 1120)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "i_width_lowres", scope: !922, file: !921, line: 65, baseType: !75, size: 32, offset: 1152)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_lowres", scope: !922, file: !921, line: 66, baseType: !75, size: 32, offset: 1184)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !922, file: !921, line: 67, baseType: !960, size: 192, offset: 1216)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 192, elements: !953)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !922, file: !921, line: 68, baseType: !962, size: 256, offset: 1408)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 256, elements: !810)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "lowres", scope: !922, file: !921, line: 69, baseType: !962, size: 256, offset: 1664)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "integral", scope: !922, file: !921, line: 70, baseType: !829, size: 64, offset: 1920)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !922, file: !921, line: 74, baseType: !962, size: 256, offset: 1984)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_lowres", scope: !922, file: !921, line: 75, baseType: !962, size: 256, offset: 2240)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !922, file: !921, line: 77, baseType: !968, size: 24576, align: 128, offset: 2560)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 24576, align: 128, elements: !969)
!969 = !{!511, !55}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "weighted", scope: !922, file: !921, line: 78, baseType: !971, size: 1024, offset: 27136)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 1024, elements: !510)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "b_duplicate", scope: !922, file: !921, line: 79, baseType: !75, size: 32, offset: 28160)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "orig", scope: !922, file: !921, line: 80, baseType: !974, size: 64, offset: 28224)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mb_type", scope: !922, file: !921, line: 83, baseType: !976, size: 64, offset: 28288)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mb_partition", scope: !922, file: !921, line: 84, baseType: !80, size: 64, offset: 28352)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !922, file: !921, line: 85, baseType: !979, size: 128, offset: 28416)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 128, elements: !564)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 32, elements: !564)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mv16x16", scope: !922, file: !921, line: 86, baseType: !980, size: 64, offset: 28544)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mvs", scope: !922, file: !921, line: 87, baseType: !984, size: 2176, offset: 28608)
!984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 2176, elements: !985)
!985 = !{!27, !986}
!986 = !DISubrange(count: 17)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_costs", scope: !922, file: !921, line: 92, baseType: !988, size: 20736, offset: 30784)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 20736, elements: !989)
!989 = !{!990, !990}
!990 = !DISubrange(count: 18)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "lowres_mv_costs", scope: !922, file: !921, line: 96, baseType: !992, size: 2176, offset: 51520)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 2176, elements: !985)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !922, file: !921, line: 97, baseType: !995, size: 128, offset: 53696)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !976, size: 128, elements: !564)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref", scope: !922, file: !921, line: 98, baseType: !563, size: 64, offset: 53824)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ref_poc", scope: !922, file: !921, line: 99, baseType: !998, size: 1024, offset: 53888)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 1024, elements: !867)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "inv_ref_poc", scope: !922, file: !921, line: 100, baseType: !981, size: 32, offset: 54912)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est", scope: !922, file: !921, line: 105, baseType: !1001, size: 10368, offset: 54944)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 10368, elements: !989)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "i_cost_est_aq", scope: !922, file: !921, line: 106, baseType: !1001, size: 10368, offset: 65312)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_satd", scope: !922, file: !921, line: 107, baseType: !75, size: 32, offset: 75680)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_mbs", scope: !922, file: !921, line: 108, baseType: !1005, size: 576, offset: 75712)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 576, elements: !1006)
!1006 = !{!990}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satds", scope: !922, file: !921, line: 109, baseType: !1008, size: 20736, offset: 76288)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 20736, elements: !989)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_satd", scope: !922, file: !921, line: 110, baseType: !993, size: 64, offset: 97024)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_row_bits", scope: !922, file: !921, line: 111, baseType: !993, size: 64, offset: 97088)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "f_row_qp", scope: !922, file: !921, line: 112, baseType: !1012, size: 64, offset: 97152)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset", scope: !922, file: !921, line: 113, baseType: !1012, size: 64, offset: 97216)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "f_qp_offset_aq", scope: !922, file: !921, line: 114, baseType: !1012, size: 64, offset: 97280)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "b_intra_calculated", scope: !922, file: !921, line: 115, baseType: !75, size: 32, offset: 97344)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra_cost", scope: !922, file: !921, line: 116, baseType: !829, size: 64, offset: 97408)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "i_propagate_cost", scope: !922, file: !921, line: 117, baseType: !829, size: 64, offset: 97472)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "i_inv_qscale_factor", scope: !922, file: !921, line: 118, baseType: !829, size: 64, offset: 97536)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "b_scenecut", scope: !922, file: !921, line: 119, baseType: !75, size: 32, offset: 97600)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "f_weighted_cost_delta", scope: !922, file: !921, line: 120, baseType: !1021, size: 576, offset: 97632)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 576, elements: !1006)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_sum", scope: !922, file: !921, line: 121, baseType: !332, size: 32, offset: 98208)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "i_pixel_ssd", scope: !922, file: !921, line: 122, baseType: !1024, size: 64, offset: 98240)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !21, line: 27, baseType: !1025)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !23, line: 45, baseType: !1026)
!1026 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "hrd_timing", scope: !922, file: !921, line: 125, baseType: !1028, size: 256, offset: 98304)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_hrd_t", file: !458, line: 503, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 496, size: 256, elements: !1030)
!1030 = !{!1031, !1033, !1034, !1035}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_initial_arrival_time", scope: !1029, file: !458, line: 498, baseType: !1032, size: 64)
!1032 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_final_arrival_time", scope: !1029, file: !458, line: 499, baseType: !1032, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "cpb_removal_time", scope: !1029, file: !458, line: 500, baseType: !1032, size: 64, offset: 128)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dpb_output_time", scope: !1029, file: !458, line: 502, baseType: !1032, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_type", scope: !922, file: !921, line: 128, baseType: !1037, size: 2008, offset: 98560)
!1037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2008, elements: !1038)
!1038 = !{!1039}
!1039 = !DISubrange(count: 251)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "i_planned_satd", scope: !922, file: !921, line: 129, baseType: !1041, size: 8032, offset: 100576)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 8032, elements: !1038)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "f_planned_cpb_duration", scope: !922, file: !921, line: 130, baseType: !1043, size: 16064, offset: 108608)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 16064, elements: !1038)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "i_coded_fields_lookahead", scope: !922, file: !921, line: 131, baseType: !75, size: 32, offset: 124672)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "i_cpb_delay_lookahead", scope: !922, file: !921, line: 132, baseType: !75, size: 32, offset: 124704)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_completed", scope: !922, file: !921, line: 135, baseType: !75, size: 32, offset: 124736)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "i_lines_weighted", scope: !922, file: !921, line: 136, baseType: !75, size: 32, offset: 124768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "i_reference_count", scope: !922, file: !921, line: 137, baseType: !75, size: 32, offset: 124800)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !922, file: !921, line: 138, baseType: !75, size: 32, offset: 124832)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !922, file: !921, line: 139, baseType: !75, size: 32, offset: 124864)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "f_pir_position", scope: !922, file: !921, line: 142, baseType: !559, size: 32, offset: 124896)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_start_col", scope: !922, file: !921, line: 143, baseType: !75, size: 32, offset: 124928)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "i_pir_end_col", scope: !922, file: !921, line: 144, baseType: !75, size: 32, offset: 124960)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "i_frames_since_pir", scope: !922, file: !921, line: 145, baseType: !75, size: 32, offset: 124992)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !915, file: !6, line: 470, baseType: !1056, size: 128, offset: 64)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !918, size: 128, elements: !564)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "blank_unused", scope: !915, file: !6, line: 473, baseType: !918, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !915, file: !6, line: 476, baseType: !1059, size: 1152, offset: 256)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 1152, elements: !1006)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !915, file: !6, line: 478, baseType: !75, size: 32, offset: 1408)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "i_input", scope: !915, file: !6, line: 480, baseType: !75, size: 32, offset: 1440)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_dpb", scope: !915, file: !6, line: 482, baseType: !75, size: 32, offset: 1472)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref0", scope: !915, file: !6, line: 483, baseType: !75, size: 32, offset: 1504)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_ref1", scope: !915, file: !6, line: 484, baseType: !75, size: 32, offset: 1536)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "i_delay", scope: !915, file: !6, line: 485, baseType: !75, size: 32, offset: 1568)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay", scope: !915, file: !6, line: 486, baseType: !75, size: 32, offset: 1600)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "i_bframe_delay_time", scope: !915, file: !6, line: 487, baseType: !928, size: 64, offset: 1664)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "i_init_delta", scope: !915, file: !6, line: 488, baseType: !928, size: 64, offset: 1728)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "i_prev_reordered_pts", scope: !915, file: !6, line: 489, baseType: !1070, size: 128, offset: 1792)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 128, elements: !564)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "i_largest_pts", scope: !915, file: !6, line: 490, baseType: !928, size: 64, offset: 1920)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "i_second_largest_pts", scope: !915, file: !6, line: 491, baseType: !928, size: 64, offset: 1984)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_lowres", scope: !915, file: !6, line: 492, baseType: !75, size: 32, offset: 2048)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "b_have_sub8x8_esa", scope: !915, file: !6, line: 493, baseType: !75, size: 32, offset: 2080)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "fenc", scope: !459, file: !6, line: 497, baseType: !919, size: 64, offset: 117440)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "fdec", scope: !459, file: !6, line: 500, baseType: !919, size: 64, offset: 117504)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref0", scope: !459, file: !6, line: 503, baseType: !75, size: 32, offset: 117568)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fref0", scope: !459, file: !6, line: 504, baseType: !1079, size: 1216, offset: 117632)
!1079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 1216, elements: !1080)
!1080 = !{!1081}
!1081 = !DISubrange(count: 19)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "i_ref1", scope: !459, file: !6, line: 505, baseType: !75, size: 32, offset: 118848)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "fref1", scope: !459, file: !6, line: 506, baseType: !1079, size: 1216, offset: 118912)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "b_ref_reorder", scope: !459, file: !6, line: 507, baseType: !563, size: 64, offset: 120128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay", scope: !459, file: !6, line: 510, baseType: !75, size: 32, offset: 120192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "initial_cpb_removal_delay_offset", scope: !459, file: !6, line: 511, baseType: !75, size: 32, offset: 120224)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "i_reordered_pts_delay", scope: !459, file: !6, line: 512, baseType: !928, size: 64, offset: 120256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dct", scope: !459, file: !6, line: 522, baseType: !1089, size: 10624, offset: 120320)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !6, line: 515, size: 10624, elements: !1090)
!1090 = !{!1091, !1093, !1096, !1099}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "luma16x16_dc", scope: !1089, file: !6, line: 517, baseType: !1092, size: 256, align: 128)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 256, elements: !510)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_dc", scope: !1089, file: !6, line: 518, baseType: !1094, size: 128, align: 128, offset: 256)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 128, elements: !1095)
!1095 = !{!27, !58}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "luma8x8", scope: !1089, file: !6, line: 520, baseType: !1097, size: 4096, align: 128, offset: 384)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 4096, elements: !1098)
!1098 = !{!58, !32}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "luma4x4", scope: !1089, file: !6, line: 521, baseType: !1100, size: 6144, align: 128, offset: 4480)
!1100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 6144, elements: !1101)
!1101 = !{!1102, !511}
!1102 = !DISubrange(count: 24)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "mb", scope: !459, file: !6, line: 732, baseType: !1104, size: 82688, offset: 130944)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !6, line: 525, size: 82688, elements: !1105)
!1105 = !{!1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1133, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1151, !1154, !1158, !1159, !1160, !1165, !1166, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1235, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1277, !1278, !1279, !1282, !1285, !1287, !1290, !1292, !1293}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1104, file: !6, line: 527, baseType: !75, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_stride", scope: !1104, file: !6, line: 530, baseType: !75, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_stride", scope: !1104, file: !6, line: 531, baseType: !75, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_stride", scope: !1104, file: !6, line: 532, baseType: !75, size: 32, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_x", scope: !1104, file: !6, line: 535, baseType: !75, size: 32, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_y", scope: !1104, file: !6, line: 536, baseType: !75, size: 32, offset: 160)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_xy", scope: !1104, file: !6, line: 537, baseType: !75, size: 32, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "i_b8_xy", scope: !1104, file: !6, line: 538, baseType: !75, size: 32, offset: 224)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "i_b4_xy", scope: !1104, file: !6, line: 539, baseType: !75, size: 32, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "i_me_method", scope: !1104, file: !6, line: 542, baseType: !75, size: 32, offset: 288)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "i_subpel_refine", scope: !1104, file: !6, line: 543, baseType: !75, size: 32, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "b_chroma_me", scope: !1104, file: !6, line: 544, baseType: !75, size: 32, offset: 352)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "b_trellis", scope: !1104, file: !6, line: 545, baseType: !75, size: 32, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "b_noise_reduction", scope: !1104, file: !6, line: 546, baseType: !75, size: 32, offset: 416)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "b_dct_decimate", scope: !1104, file: !6, line: 547, baseType: !75, size: 32, offset: 448)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd", scope: !1104, file: !6, line: 548, baseType: !75, size: 32, offset: 480)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_trellis", scope: !1104, file: !6, line: 549, baseType: !75, size: 32, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "b_interlaced", scope: !1104, file: !6, line: 551, baseType: !75, size: 32, offset: 544)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min", scope: !1104, file: !6, line: 554, baseType: !563, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max", scope: !1104, file: !6, line: 555, baseType: !563, size: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_spel", scope: !1104, file: !6, line: 558, baseType: !563, size: 64, offset: 704)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_spel", scope: !1104, file: !6, line: 559, baseType: !563, size: 64, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "mv_min_fpel", scope: !1104, file: !6, line: 561, baseType: !563, size: 64, offset: 832)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mv_max_fpel", scope: !1104, file: !6, line: 562, baseType: !563, size: 64, offset: 896)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour", scope: !1104, file: !6, line: 565, baseType: !7, size: 32, offset: 960)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour8", scope: !1104, file: !6, line: 566, baseType: !1132, size: 128, offset: 992)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !810)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour4", scope: !1104, file: !6, line: 567, baseType: !1134, size: 512, offset: 1120)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !510)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_intra", scope: !1104, file: !6, line: 568, baseType: !7, size: 32, offset: 1632)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_frame", scope: !1104, file: !6, line: 569, baseType: !7, size: 32, offset: 1664)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_top", scope: !1104, file: !6, line: 570, baseType: !75, size: 32, offset: 1696)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_left", scope: !1104, file: !6, line: 571, baseType: !75, size: 32, offset: 1728)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topleft", scope: !1104, file: !6, line: 572, baseType: !75, size: 32, offset: 1760)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_type_topright", scope: !1104, file: !6, line: 573, baseType: !75, size: 32, offset: 1792)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_prev_xy", scope: !1104, file: !6, line: 574, baseType: !75, size: 32, offset: 1824)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_left_xy", scope: !1104, file: !6, line: 575, baseType: !75, size: 32, offset: 1856)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_top_xy", scope: !1104, file: !6, line: 576, baseType: !75, size: 32, offset: 1888)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topleft_xy", scope: !1104, file: !6, line: 577, baseType: !75, size: 32, offset: 1920)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_topright_xy", scope: !1104, file: !6, line: 578, baseType: !75, size: 32, offset: 1952)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1104, file: !6, line: 585, baseType: !976, size: 64, offset: 1984)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "partition", scope: !1104, file: !6, line: 586, baseType: !80, size: 64, offset: 2048)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "qp", scope: !1104, file: !6, line: 587, baseType: !976, size: 64, offset: 2112)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cbp", scope: !1104, file: !6, line: 588, baseType: !1150, size: 64, offset: 2176)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !1104, file: !6, line: 589, baseType: !1152, size: 64, offset: 2240)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !879)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !1104, file: !6, line: 591, baseType: !1155, size: 64, offset: 2304)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 192, elements: !1157)
!1157 = !{!1102}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "chroma_pred_mode", scope: !1104, file: !6, line: 592, baseType: !976, size: 64, offset: 2368)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1104, file: !6, line: 593, baseType: !979, size: 128, offset: 2432)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1104, file: !6, line: 594, baseType: !1161, size: 128, offset: 2560)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1162, size: 128, elements: !564)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !1164)
!1164 = !{!880, !27}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1104, file: !6, line: 595, baseType: !995, size: 128, offset: 2688)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mvr", scope: !1104, file: !6, line: 596, baseType: !1167, size: 4096, offset: 2816)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 4096, elements: !1168)
!1168 = !{!27, !896}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "skipbp", scope: !1104, file: !6, line: 597, baseType: !976, size: 64, offset: 6912)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mb_transform_size", scope: !1104, file: !6, line: 598, baseType: !976, size: 64, offset: 6976)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "slice_table", scope: !1104, file: !6, line: 599, baseType: !829, size: 64, offset: 7040)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "p_weight_buf", scope: !1104, file: !6, line: 603, baseType: !971, size: 1024, offset: 7104)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "i_type", scope: !1104, file: !6, line: 606, baseType: !75, size: 32, offset: 8128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "i_partition", scope: !1104, file: !6, line: 607, baseType: !75, size: 32, offset: 8160)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "i_sub_partition", scope: !1104, file: !6, line: 608, baseType: !1176, size: 32, align: 32, offset: 8192)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 32, elements: !810)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "b_transform_8x8", scope: !1104, file: !6, line: 609, baseType: !75, size: 32, offset: 8224)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_luma", scope: !1104, file: !6, line: 611, baseType: !75, size: 32, offset: 8256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_chroma", scope: !1104, file: !6, line: 612, baseType: !75, size: 32, offset: 8288)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "i_intra16x16_pred_mode", scope: !1104, file: !6, line: 614, baseType: !75, size: 32, offset: 8320)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_pred_mode", scope: !1104, file: !6, line: 615, baseType: !75, size: 32, offset: 8352)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "i_skip_intra", scope: !1104, file: !6, line: 621, baseType: !75, size: 32, offset: 8384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "b_skip_mc", scope: !1104, file: !6, line: 624, baseType: !75, size: 32, offset: 8416)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "b_reencode_mb", scope: !1104, file: !6, line: 626, baseType: !75, size: 32, offset: 8448)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ip_offset", scope: !1104, file: !6, line: 627, baseType: !75, size: 32, offset: 8480)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pic", scope: !1104, file: !6, line: 671, baseType: !1187, size: 60672, offset: 8576)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1104, file: !6, line: 629, size: 60672, elements: !1188)
!1188 = !{!1189, !1193, !1197, !1199, !1200, !1203, !1207, !1209, !1210, !1211, !1212, !1213, !1216, !1220, !1223, !1224, !1225, !1226, !1227, !1230, !1232, !1234}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_buf", scope: !1187, file: !6, line: 634, baseType: !1190, size: 3072, align: 128)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 3072, elements: !1191)
!1191 = !{!1192}
!1192 = !DISubrange(count: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "fdec_buf", scope: !1187, file: !6, line: 635, baseType: !1194, size: 6912, align: 128, offset: 3072)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 6912, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 864)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_fdec_buf", scope: !1187, file: !6, line: 638, baseType: !1198, size: 2048, align: 128, offset: 9984)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 2048, elements: !704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_fdec_buf", scope: !1187, file: !6, line: 639, baseType: !1198, size: 2048, align: 128, offset: 12032)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_dct_buf", scope: !1187, file: !6, line: 640, baseType: !1201, size: 3072, align: 128, offset: 14080)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 3072, elements: !1202)
!1202 = !{!55, !32}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_dct_buf", scope: !1187, file: !6, line: 641, baseType: !1204, size: 3840, align: 128, offset: 17152)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 3840, elements: !1205)
!1205 = !{!1206, !511}
!1206 = !DISubrange(count: 15)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_nnz_buf", scope: !1187, file: !6, line: 642, baseType: !1208, size: 128, offset: 20992)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 128, elements: !810)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_nnz_buf", scope: !1187, file: !6, line: 643, baseType: !1208, size: 128, offset: 21120)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "i4x4_cbp", scope: !1187, file: !6, line: 644, baseType: !75, size: 32, offset: 21248)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "i8x8_cbp", scope: !1187, file: !6, line: 645, baseType: !75, size: 32, offset: 21280)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct8", scope: !1187, file: !6, line: 648, baseType: !1097, size: 4096, align: 128, offset: 21376)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_dct4", scope: !1187, file: !6, line: 649, baseType: !1214, size: 4096, align: 128, offset: 25472)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 4096, elements: !1215)
!1215 = !{!511, !511}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_hadamard_cache", scope: !1187, file: !6, line: 652, baseType: !1217, size: 576, align: 128, offset: 29568)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1024, size: 576, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 9)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "fenc_satd_cache", scope: !1187, file: !6, line: 653, baseType: !1221, size: 1024, align: 128, offset: 30208)
!1221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 1024, elements: !1222)
!1222 = !{!896}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc", scope: !1187, file: !6, line: 656, baseType: !960, size: 192, offset: 31232)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "p_fenc_plane", scope: !1187, file: !6, line: 658, baseType: !960, size: 192, offset: 31424)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "p_fdec", scope: !1187, file: !6, line: 661, baseType: !960, size: 192, offset: 31616)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_fref", scope: !1187, file: !6, line: 664, baseType: !563, size: 64, offset: 31808)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref", scope: !1187, file: !6, line: 665, baseType: !1228, size: 24576, offset: 31872)
!1228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 24576, elements: !1229)
!1229 = !{!27, !896, !801}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "p_fref_w", scope: !1187, file: !6, line: 666, baseType: !1231, size: 2048, offset: 56448)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 2048, elements: !1222)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "p_integral", scope: !1187, file: !6, line: 667, baseType: !1233, size: 2048, offset: 58496)
!1233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 2048, elements: !867)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "i_stride", scope: !1187, file: !6, line: 670, baseType: !952, size: 96, offset: 60544)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !1104, file: !6, line: 704, baseType: !1236, size: 6144, offset: 69248)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1104, file: !6, line: 674, size: 6144, elements: !1237)
!1237 = !{!1238, !1242, !1246, !1249, !1252, !1254, !1255, !1258, !1260, !1261, !1262, !1263, !1264, !1265}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "intra4x4_pred_mode", scope: !1236, file: !6, line: 677, baseType: !1239, size: 320, align: 64)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 40)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "non_zero_count", scope: !1236, file: !6, line: 680, baseType: !1243, size: 384, align: 128, offset: 384)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 384, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 48)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1236, file: !6, line: 683, baseType: !1247, size: 640, align: 32, offset: 768)
!1247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 640, elements: !1248)
!1248 = !{!27, !1241}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mv", scope: !1236, file: !6, line: 686, baseType: !1250, size: 2560, align: 128, offset: 1408)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 2560, elements: !1251)
!1251 = !{!27, !1241, !27}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mvd", scope: !1236, file: !6, line: 687, baseType: !1253, size: 1280, align: 64, offset: 3968)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 1280, elements: !1251)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "skip", scope: !1236, file: !6, line: 690, baseType: !1239, size: 320, align: 32, offset: 5248)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "direct_mv", scope: !1236, file: !6, line: 692, baseType: !1256, size: 256, align: 32, offset: 5568)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 256, elements: !1257)
!1257 = !{!27, !58, !27}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "direct_ref", scope: !1236, file: !6, line: 693, baseType: !1259, size: 64, align: 32, offset: 5824)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !1095)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "direct_partition", scope: !1236, file: !6, line: 694, baseType: !75, size: 32, offset: 5888)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pskip_mv", scope: !1236, file: !6, line: 695, baseType: !981, size: 32, align: 32, offset: 5920)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_transform_size", scope: !1236, file: !6, line: 698, baseType: !75, size: 32, offset: 5952)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "i_neighbour_interlaced", scope: !1236, file: !6, line: 699, baseType: !75, size: 32, offset: 5984)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_top", scope: !1236, file: !6, line: 702, baseType: !75, size: 32, offset: 6016)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "i_cbp_left", scope: !1236, file: !6, line: 703, baseType: !75, size: 32, offset: 6048)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "i_qp", scope: !1104, file: !6, line: 707, baseType: !75, size: 32, offset: 75392)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_qp", scope: !1104, file: !6, line: 708, baseType: !75, size: 32, offset: 75424)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_qp", scope: !1104, file: !6, line: 709, baseType: !75, size: 32, offset: 75456)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_dqp", scope: !1104, file: !6, line: 710, baseType: !75, size: 32, offset: 75488)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "b_variable_qp", scope: !1104, file: !6, line: 711, baseType: !75, size: 32, offset: 75520)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "b_lossless", scope: !1104, file: !6, line: 712, baseType: !75, size: 32, offset: 75552)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_read", scope: !1104, file: !6, line: 713, baseType: !75, size: 32, offset: 75584)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "b_direct_auto_write", scope: !1104, file: !6, line: 714, baseType: !75, size: 32, offset: 75616)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "i_trellis_lambda2", scope: !1104, file: !6, line: 717, baseType: !1275, size: 128, offset: 75648)
!1275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !1276)
!1276 = !{!27, !27}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "i_psy_rd_lambda", scope: !1104, file: !6, line: 718, baseType: !75, size: 32, offset: 75776)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "i_chroma_lambda2_offset", scope: !1104, file: !6, line: 719, baseType: !75, size: 32, offset: 75808)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor_buf", scope: !1104, file: !6, line: 722, baseType: !1280, size: 4096, offset: 75840)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 4096, elements: !1281)
!1281 = !{!27, !896, !58}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "dist_scale_factor", scope: !1104, file: !6, line: 723, baseType: !1283, size: 64, offset: 79936)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 64, elements: !810)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight_buf", scope: !1104, file: !6, line: 724, baseType: !1286, size: 2048, offset: 80000)
!1286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !1281)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "bipred_weight", scope: !1104, file: !6, line: 725, baseType: !1288, size: 64, offset: 82048)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !810)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "map_col_to_list0", scope: !1104, file: !6, line: 728, baseType: !1291, size: 144, offset: 82112)
!1291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 144, elements: !1006)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ref_blind_dupe", scope: !1104, file: !6, line: 729, baseType: !75, size: 32, offset: 82272)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_ref_table", scope: !1104, file: !6, line: 730, baseType: !1294, size: 272, offset: 82304)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 272, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 34)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rc", scope: !459, file: !6, line: 735, baseType: !1298, size: 64, offset: 213632)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_ratecontrol_t", file: !6, line: 379, baseType: !1300)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "x264_ratecontrol_t", file: !6, line: 379, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !459, file: !6, line: 793, baseType: !1302, size: 29504, offset: 213696)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !6, line: 738, size: 29504, elements: !1303)
!1303 = !{!1304, !1331, !1335, !1337, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1349, !1351, !1352, !1355, !1357, !1359, !1360, !1361}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !1302, file: !6, line: 764, baseType: !1305, size: 5632)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1302, file: !6, line: 741, size: 5632, elements: !1306)
!1306 = !{!1307, !1308, !1309, !1310, !1312, !1313, !1314, !1315, !1316, !1318, !1321, !1323, !1327, !1328, !1330}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "i_mv_bits", scope: !1305, file: !6, line: 744, baseType: !75, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "i_tex_bits", scope: !1305, file: !6, line: 746, baseType: !75, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "i_misc_bits", scope: !1305, file: !6, line: 748, baseType: !75, size: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1305, file: !6, line: 750, baseType: !1311, size: 608, offset: 96)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 608, elements: !1080)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_i", scope: !1305, file: !6, line: 751, baseType: !75, size: 32, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_p", scope: !1305, file: !6, line: 752, baseType: !75, size: 32, offset: 736)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_skip", scope: !1305, file: !6, line: 753, baseType: !75, size: 32, offset: 768)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1305, file: !6, line: 754, baseType: !563, size: 64, offset: 800)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1305, file: !6, line: 755, baseType: !1317, size: 2048, offset: 864)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 2048, elements: !1168)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1305, file: !6, line: 756, baseType: !1319, size: 544, offset: 2912)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 544, elements: !1320)
!1320 = !{!986}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1305, file: !6, line: 757, baseType: !1322, size: 192, offset: 3456)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 192, elements: !800)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1305, file: !6, line: 758, baseType: !1324, size: 1664, offset: 3648)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 1664, elements: !1325)
!1325 = !{!58, !1326}
!1326 = !DISubrange(count: 13)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1305, file: !6, line: 760, baseType: !563, size: 64, offset: 5312)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd", scope: !1305, file: !6, line: 762, baseType: !1329, size: 192, offset: 5376)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 192, elements: !953)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim", scope: !1305, file: !6, line: 763, baseType: !1032, size: 64, offset: 5568)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_count", scope: !1302, file: !6, line: 769, baseType: !1332, size: 160, offset: 5632)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 160, elements: !1333)
!1333 = !{!1334}
!1334 = !DISubrange(count: 5)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "i_frame_size", scope: !1302, file: !6, line: 770, baseType: !1336, size: 320, offset: 5824)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 320, elements: !1333)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "f_frame_qp", scope: !1302, file: !6, line: 771, baseType: !1338, size: 320, offset: 6144)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 320, elements: !1333)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "i_consecutive_bframes", scope: !1302, file: !6, line: 772, baseType: !1319, size: 544, offset: 6464)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "i_ssd_global", scope: !1302, file: !6, line: 774, baseType: !1336, size: 320, offset: 7040)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_average", scope: !1302, file: !6, line: 775, baseType: !1338, size: 320, offset: 7360)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_y", scope: !1302, file: !6, line: 776, baseType: !1338, size: 320, offset: 7680)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_u", scope: !1302, file: !6, line: 777, baseType: !1338, size: 320, offset: 8000)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "f_psnr_mean_v", scope: !1302, file: !6, line: 778, baseType: !1338, size: 320, offset: 8320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "f_ssim_mean_y", scope: !1302, file: !6, line: 779, baseType: !1338, size: 320, offset: 8640)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count", scope: !1302, file: !6, line: 781, baseType: !1347, size: 6080, offset: 8960)
!1347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 6080, elements: !1348)
!1348 = !{!1334, !1081}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_partition", scope: !1302, file: !6, line: 782, baseType: !1350, size: 2176, offset: 15040)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 2176, elements: !985)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_8x8dct", scope: !1302, file: !6, line: 783, baseType: !1070, size: 128, offset: 17216)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_count_ref", scope: !1302, file: !6, line: 784, baseType: !1353, size: 8192, offset: 17344)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 8192, elements: !1354)
!1354 = !{!27, !27, !896}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_cbp", scope: !1302, file: !6, line: 785, baseType: !1356, size: 384, offset: 25536)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 384, elements: !800)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "i_mb_pred_mode", scope: !1302, file: !6, line: 786, baseType: !1358, size: 3328, offset: 25920)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 3328, elements: !1325)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_score", scope: !1302, file: !6, line: 788, baseType: !563, size: 64, offset: 29248)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "i_direct_frames", scope: !1302, file: !6, line: 789, baseType: !563, size: 64, offset: 29312)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "i_wpred", scope: !1302, file: !6, line: 791, baseType: !952, size: 96, offset: 29376)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_residual_sum", scope: !459, file: !6, line: 795, baseType: !1363, size: 4096, align: 128, offset: 243200)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 4096, elements: !1364)
!1364 = !{!27, !32}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "nr_offset", scope: !459, file: !6, line: 796, baseType: !1366, size: 2048, align: 128, offset: 247296)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !1364)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "nr_count", scope: !459, file: !6, line: 797, baseType: !1368, size: 64, offset: 249344)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 64, elements: !564)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_buffer", scope: !459, file: !6, line: 800, baseType: !522, size: 64, offset: 249408)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "intra_border_backup", scope: !459, file: !6, line: 801, baseType: !1371, size: 384, offset: 249472)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 384, elements: !1372)
!1372 = !{!27, !55}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !459, file: !6, line: 802, baseType: !1374, size: 128, offset: 249856)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1375, size: 128, elements: !564)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 256, elements: !1377)
!1377 = !{!27, !58, !58}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "predict_16x16", scope: !459, file: !6, line: 805, baseType: !1379, size: 448, offset: 249984)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 448, elements: !1385)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_t", file: !1381, line: 27, baseType: !1382)
!1381 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/predict.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5f9c3dfea82ca04aa9f99900c2f3609a")
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !80}
!1385 = !{!1386}
!1386 = !DISubrange(count: 7)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8c", scope: !459, file: !6, line: 806, baseType: !1379, size: 448, offset: 250432)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8", scope: !459, file: !6, line: 807, baseType: !1389, size: 768, offset: 250880)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1390, size: 768, elements: !1394)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict8x8_t", file: !1381, line: 28, baseType: !1391)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !80, !80}
!1394 = !{!1395}
!1395 = !DISubrange(count: 12)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "predict_4x4", scope: !459, file: !6, line: 808, baseType: !1397, size: 768, offset: 251648)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1380, size: 768, elements: !1394)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "predict_8x8_filter", scope: !459, file: !6, line: 809, baseType: !1399, size: 64, offset: 252416)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_predict_8x8_filter_t", file: !1381, line: 29, baseType: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{null, !80, !80, !75, !75}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pixf", scope: !459, file: !6, line: 811, baseType: !1404, size: 8448, offset: 252480)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_function_t", file: !1405, line: 110, baseType: !1406)
!1405 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/pixel.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e9056d80edbb4dc2514d271d596c298e")
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1405, line: 63, size: 8448, elements: !1407)
!1407 = !{!1408, !1414, !1415, !1416, !1417, !1419, !1420, !1421, !1422, !1428, !1434, !1435, !1439, !1444, !1445, !1451, !1455, !1456, !1457, !1458, !1459, !1464, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sad", scope: !1406, file: !1405, line: 65, baseType: !1409, size: 448)
!1409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, size: 448, elements: !1385)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_t", file: !1405, line: 26, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!75, !80, !75, !80, !75}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ssd", scope: !1406, file: !1405, line: 66, baseType: !1409, size: 448, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "satd", scope: !1406, file: !1405, line: 67, baseType: !1409, size: 448, offset: 896)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ssim", scope: !1406, file: !1405, line: 68, baseType: !1409, size: 448, offset: 1344)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sa8d", scope: !1406, file: !1405, line: 69, baseType: !1418, size: 256, offset: 1792)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1410, size: 256, elements: !810)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp", scope: !1406, file: !1405, line: 70, baseType: !1409, size: 448, offset: 2048)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mbcmp_unaligned", scope: !1406, file: !1405, line: 71, baseType: !1409, size: 448, offset: 2496)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp", scope: !1406, file: !1405, line: 72, baseType: !1409, size: 448, offset: 2944)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x3", scope: !1406, file: !1405, line: 73, baseType: !1423, size: 448, offset: 3392)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1424, size: 448, elements: !1385)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x3_t", file: !1405, line: 27, baseType: !1425)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !80, !80, !80, !80, !75, !993}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fpelcmp_x4", scope: !1406, file: !1405, line: 74, baseType: !1429, size: 448, offset: 3840)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1430, size: 448, elements: !1385)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_pixel_cmp_x4_t", file: !1405, line: 28, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !80, !80, !80, !80, !80, !75, !993}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sad_aligned", scope: !1406, file: !1405, line: 75, baseType: !1409, size: 448, offset: 4288)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "var2_8x8", scope: !1406, file: !1405, line: 76, baseType: !1436, size: 64, offset: 4736)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!75, !80, !75, !80, !75, !993}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1406, file: !1405, line: 78, baseType: !1440, size: 256, offset: 4800)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1441, size: 256, elements: !810)
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!1024, !80, !75}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "hadamard_ac", scope: !1406, file: !1405, line: 79, baseType: !1440, size: 256, offset: 5056)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_4x4x2_core", scope: !1406, file: !1405, line: 81, baseType: !1446, size: 64, offset: 5312)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !799, !75, !799, !75, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 128, elements: !810)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ssim_end4", scope: !1406, file: !1405, line: 83, baseType: !1452, size: 64, offset: 5376)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!559, !1449, !1449, !75}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x3", scope: !1406, file: !1405, line: 86, baseType: !1423, size: 448, offset: 5440)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sad_x4", scope: !1406, file: !1405, line: 87, baseType: !1429, size: 448, offset: 5888)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x3", scope: !1406, file: !1405, line: 88, baseType: !1423, size: 448, offset: 6336)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "satd_x4", scope: !1406, file: !1405, line: 89, baseType: !1429, size: 448, offset: 6784)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "ads", scope: !1406, file: !1405, line: 93, baseType: !1460, size: 448, offset: 7232)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1461, size: 448, elements: !1385)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!75, !993, !829, !75, !829, !1150, !75, !75}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_16x16", scope: !1406, file: !1405, line: 98, baseType: !1465, size: 64, offset: 7680)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !80, !80, !993}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_16x16", scope: !1406, file: !1405, line: 99, baseType: !1465, size: 64, offset: 7744)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_16x16", scope: !1406, file: !1405, line: 100, baseType: !1465, size: 64, offset: 7808)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8c", scope: !1406, file: !1405, line: 101, baseType: !1465, size: 64, offset: 7872)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_8x8c", scope: !1406, file: !1405, line: 102, baseType: !1465, size: 64, offset: 7936)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8c", scope: !1406, file: !1405, line: 103, baseType: !1465, size: 64, offset: 8000)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_4x4", scope: !1406, file: !1405, line: 104, baseType: !1465, size: 64, offset: 8064)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "intra_satd_x3_4x4", scope: !1406, file: !1405, line: 105, baseType: !1465, size: 64, offset: 8128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_4x4", scope: !1406, file: !1405, line: 106, baseType: !1465, size: 64, offset: 8192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "intra_mbcmp_x3_8x8", scope: !1406, file: !1405, line: 107, baseType: !1465, size: 64, offset: 8256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sa8d_x3_8x8", scope: !1406, file: !1405, line: 108, baseType: !1465, size: 64, offset: 8320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "intra_sad_x3_8x8", scope: !1406, file: !1405, line: 109, baseType: !1465, size: 64, offset: 8384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mc", scope: !459, file: !6, line: 812, baseType: !1480, size: 2368, offset: 260928)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_mc_functions_t", file: !871, line: 111, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !871, line: 58, size: 2368, elements: !1482)
!1482 = !{!1483, !1490, !1494, !1498, !1505, !1510, !1511, !1515, !1519, !1520, !1524, !1532, !1536, !1540, !1541, !1545, !1549, !1553, !1554, !1555, !1556, !1561}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mc_luma", scope: !1481, file: !871, line: 60, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !80, !75, !1487, !75, !75, !75, !75, !75, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "get_ref", scope: !1481, file: !871, line: 65, baseType: !1491, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!80, !80, !993, !1487, !75, !75, !75, !75, !75, !1488}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mc_chroma", scope: !1481, file: !871, line: 71, baseType: !1495, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !80, !75, !80, !75, !75, !75, !75, !75}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1481, file: !871, line: 75, baseType: !1499, size: 640, offset: 192)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1500, size: 640, elements: !1503)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !80, !75, !80, !75, !80, !75, !75}
!1503 = !{!1504}
!1504 = !DISubrange(count: 10)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !1481, file: !871, line: 78, baseType: !1506, size: 448, offset: 832)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1507, size: 448, elements: !1385)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{null, !80, !75, !80, !75, !75}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "copy_16x16_unaligned", scope: !1481, file: !871, line: 79, baseType: !1507, size: 64, offset: 1280)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "plane_copy", scope: !1481, file: !871, line: 81, baseType: !1512, size: 64, offset: 1344)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !80, !75, !80, !75, !75, !75}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "hpel_filter", scope: !1481, file: !871, line: 84, baseType: !1516, size: 64, offset: 1408)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !80, !80, !80, !80, !75, !75, !75, !1150}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_fenc", scope: !1481, file: !871, line: 88, baseType: !1507, size: 64, offset: 1472)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_ref", scope: !1481, file: !871, line: 91, baseType: !1521, size: 64, offset: 1536)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !80, !75, !75}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "memcpy_aligned", scope: !1481, file: !871, line: 93, baseType: !1525, size: 64, offset: 1600)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!522, !522, !1528, !1530}
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1531, line: 46, baseType: !1026)
!1531 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "memzero_aligned", scope: !1481, file: !871, line: 94, baseType: !1533, size: 64, offset: 1664)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !522, !75}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4h", scope: !1481, file: !871, line: 97, baseType: !1537, size: 64, offset: 1728)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !829, !80, !75}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8h", scope: !1481, file: !871, line: 98, baseType: !1537, size: 64, offset: 1792)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init4v", scope: !1481, file: !871, line: 99, baseType: !1542, size: 64, offset: 1856)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !829, !829, !75}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "integral_init8v", scope: !1481, file: !871, line: 100, baseType: !1546, size: 64, offset: 1920)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{null, !829, !75}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "frame_init_lowres_core", scope: !1481, file: !871, line: 102, baseType: !1550, size: 64, offset: 1984)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !80, !80, !80, !80, !80, !75, !75, !75, !75}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1481, file: !871, line: 104, baseType: !888, size: 64, offset: 2048)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "offsetadd", scope: !1481, file: !871, line: 105, baseType: !888, size: 64, offset: 2112)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "offsetsub", scope: !1481, file: !871, line: 106, baseType: !888, size: 64, offset: 2176)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "weight_cache", scope: !1481, file: !871, line: 107, baseType: !1557, size: 64, offset: 2240)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{null, !456, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mbtree_propagate_cost", scope: !1481, file: !871, line: 109, baseType: !1562, size: 64, offset: 2304)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !993, !829, !829, !829, !829, !75}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dctf", scope: !459, file: !6, line: 813, baseType: !1566, size: 960, offset: 263296)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !1567, line: 115, baseType: !1568)
!1567 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1567, line: 89, size: 960, elements: !1569)
!1569 = !{!1570, !1574, !1578, !1583, !1584, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1600, !1604, !1608}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !1568, file: !1567, line: 94, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !1150, !80, !80}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !1568, file: !1567, line: 95, baseType: !1575, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{null, !80, !1150}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !1568, file: !1567, line: 97, baseType: !1579, size: 64, offset: 128)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !1582, !80, !80}
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !1568, file: !1567, line: 98, baseType: !1571, size: 64, offset: 192)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !1568, file: !1567, line: 99, baseType: !1585, size: 64, offset: 256)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !80, !1582}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !1568, file: !1567, line: 100, baseType: !1575, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !1568, file: !1567, line: 102, baseType: !1579, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !1568, file: !1567, line: 103, baseType: !1585, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !1568, file: !1567, line: 104, baseType: !1575, size: 64, offset: 512)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !1568, file: !1567, line: 106, baseType: !1571, size: 64, offset: 576)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !1568, file: !1567, line: 107, baseType: !1575, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !1568, file: !1567, line: 109, baseType: !1595, size: 64, offset: 704)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1598, !80, !80}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 1024, elements: !31)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !1568, file: !1567, line: 110, baseType: !1601, size: 64, offset: 768)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{null, !80, !1598}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !1568, file: !1567, line: 112, baseType: !1605, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1150}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !1568, file: !1567, line: 113, baseType: !1605, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "zigzagf", scope: !459, file: !6, line: 814, baseType: !1610, size: 384, offset: 264256)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !1567, line: 126, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1567, line: 117, size: 384, elements: !1612)
!1612 = !{!1613, !1617, !1618, !1622, !1623, !1627}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1611, file: !1567, line: 119, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !1150, !1150}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1611, file: !1567, line: 120, baseType: !1614, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1611, file: !1567, line: 121, baseType: !1619, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!75, !1150, !799, !80}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1611, file: !1567, line: 122, baseType: !1619, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1611, file: !1567, line: 123, baseType: !1624, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!75, !1150, !799, !80, !1150}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1611, file: !1567, line: 124, baseType: !1628, size: 64, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1150, !1150, !80}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "quantf", scope: !459, file: !6, line: 815, baseType: !1632, size: 1408, offset: 264640)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_quant_function_t", file: !1633, line: 44, baseType: !1634)
!1633 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/quant.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1558a6947b2031223cf5868b45335f7")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1633, line: 26, size: 1408, elements: !1635)
!1635 = !{!1636, !1640, !1641, !1645, !1646, !1650, !1654, !1655, !1660, !1664, !1665, !1666, !1668}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "quant_8x8", scope: !1634, file: !1633, line: 28, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!75, !1150, !829, !829}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4", scope: !1634, file: !1633, line: 29, baseType: !1637, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "quant_4x4_dc", scope: !1634, file: !1633, line: 30, baseType: !1642, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!75, !1150, !75, !75}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "quant_2x2_dc", scope: !1634, file: !1633, line: 31, baseType: !1642, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_8x8", scope: !1634, file: !1633, line: 33, baseType: !1647, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !1150, !813, !75}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4", scope: !1634, file: !1633, line: 34, baseType: !1651, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{null, !1150, !808, !75}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dequant_4x4_dc", scope: !1634, file: !1633, line: 35, baseType: !1651, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "denoise_dct", scope: !1634, file: !1633, line: 37, baseType: !1656, size: 64, offset: 448)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !1150, !1659, !829, !75}
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score15", scope: !1634, file: !1633, line: 39, baseType: !1661, size: 64, offset: 512)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!75, !1150}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score16", scope: !1634, file: !1633, line: 40, baseType: !1661, size: 64, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "decimate_score64", scope: !1634, file: !1633, line: 41, baseType: !1661, size: 64, offset: 640)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_last", scope: !1634, file: !1633, line: 42, baseType: !1667, size: 384, offset: 704)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1661, size: 384, elements: !800)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "coeff_level_run", scope: !1634, file: !1633, line: 43, baseType: !1669, size: 320, offset: 1088)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, size: 320, elements: !1333)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!75, !1150, !1673}
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_run_level_t", file: !656, line: 63, baseType: !1675)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !656, line: 58, size: 416, elements: !1676)
!1676 = !{!1677, !1678, !1679}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1675, file: !656, line: 60, baseType: !75, size: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1675, file: !656, line: 61, baseType: !1092, size: 256, offset: 32)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1675, file: !656, line: 62, baseType: !509, size: 128, offset: 288)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "loopf", scope: !459, file: !6, line: 816, baseType: !1681, size: 576, offset: 266048)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_function_t", file: !921, line: 170, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !921, line: 161, size: 576, elements: !1683)
!1683 = !{!1684, !1690, !1691, !1697, !1698}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma", scope: !1682, file: !921, line: 163, baseType: !1685, size: 128)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1686, size: 128, elements: !564)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_inter_t", file: !921, line: 159, baseType: !1687)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !80, !75, !75, !75, !976}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma", scope: !1682, file: !921, line: 164, baseType: !1685, size: 128, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_luma_intra", scope: !1682, file: !921, line: 165, baseType: !1692, size: 128, offset: 256)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1693, size: 128, elements: !564)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_deblock_intra_t", file: !921, line: 160, baseType: !1694)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{null, !80, !75, !75, !75}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_chroma_intra", scope: !1682, file: !921, line: 166, baseType: !1692, size: 128, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "deblock_strength", scope: !1682, file: !921, line: 167, baseType: !1699, size: 64, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !80, !1702, !1703, !1706, !75, !75}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 1280, elements: !1705)
!1705 = !{!1241, !27}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 128, elements: !1708)
!1708 = !{!58, !58}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !459, file: !6, line: 821, baseType: !1710, size: 64, offset: 266624)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_lookahead_t", file: !6, line: 377, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x264_lookahead_t", file: !6, line: 366, size: 960, elements: !1713)
!1713 = !{!1714, !1716, !1717, !1718, !1719, !1720, !1721, !1731, !1732}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "b_exit_thread", scope: !1712, file: !6, line: 368, baseType: !1715, size: 8)
!1715 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "b_thread_active", scope: !1712, file: !6, line: 369, baseType: !20, size: 8, offset: 8)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "b_analyse_keyframe", scope: !1712, file: !6, line: 370, baseType: !20, size: 8, offset: 16)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "i_last_keyframe", scope: !1712, file: !6, line: 371, baseType: !75, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "i_slicetype_length", scope: !1712, file: !6, line: 372, baseType: !75, size: 32, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "last_nonb", scope: !1712, file: !6, line: 373, baseType: !919, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ifbuf", scope: !1712, file: !6, line: 374, baseType: !1722, size: 256, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_synch_frame_list_t", file: !921, line: 157, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !921, line: 149, size: 256, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1723, file: !921, line: 151, baseType: !918, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "i_max_size", scope: !1723, file: !921, line: 152, baseType: !75, size: 32, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1723, file: !921, line: 153, baseType: !75, size: 32, offset: 96)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1723, file: !921, line: 154, baseType: !75, size: 32, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "cv_fill", scope: !1723, file: !921, line: 155, baseType: !75, size: 32, offset: 160)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "cv_empty", scope: !1723, file: !921, line: 156, baseType: !75, size: 32, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1712, file: !6, line: 375, baseType: !1722, size: 256, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "ofbuf", scope: !1712, file: !6, line: 376, baseType: !1722, size: 256, offset: 704)
!1733 = !{!1734, !1735}
!1734 = !DILocalVariable(name: "h", arg: 1, scope: !453, file: !17, line: 877, type: !456)
!1735 = !DILocalVariable(name: "cb", arg: 2, scope: !453, file: !17, line: 877, type: !69)
!1736 = !DILocation(line: 0, scope: !453)
!1737 = !DILocation(line: 879, column: 22, scope: !453)
!1738 = !DILocation(line: 879, column: 30, scope: !453)
!1739 = !DILocation(line: 879, column: 15, scope: !453)
!1740 = !DILocation(line: 881, column: 15, scope: !453)
!1741 = !DILocation(line: 882, column: 9, scope: !453)
!1742 = !DILocation(line: 882, column: 17, scope: !453)
!1743 = !DILocation(line: 0, scope: !230, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 883, column: 5, scope: !453)
!1745 = !DILocation(line: 789, column: 21, scope: !234, inlinedAt: !1744)
!1746 = !DILocation(line: 789, column: 9, scope: !230, inlinedAt: !1744)
!1747 = !DILocation(line: 791, column: 44, scope: !233, inlinedAt: !1744)
!1748 = !DILocation(line: 791, column: 29, scope: !233, inlinedAt: !1744)
!1749 = !DILocation(line: 0, scope: !233, inlinedAt: !1744)
!1750 = !DILocation(line: 792, column: 28, scope: !233, inlinedAt: !1744)
!1751 = !DILocation(line: 792, column: 42, scope: !233, inlinedAt: !1744)
!1752 = !DILocation(line: 792, column: 19, scope: !233, inlinedAt: !1744)
!1753 = !DILocation(line: 793, column: 21, scope: !233, inlinedAt: !1744)
!1754 = !DILocation(line: 795, column: 18, scope: !237, inlinedAt: !1744)
!1755 = !DILocation(line: 795, column: 26, scope: !237, inlinedAt: !1744)
!1756 = !DILocation(line: 795, column: 13, scope: !233, inlinedAt: !1744)
!1757 = !DILocation(line: 796, column: 17, scope: !237, inlinedAt: !1744)
!1758 = !DILocation(line: 796, column: 36, scope: !237, inlinedAt: !1744)
!1759 = !DILocation(line: 796, column: 13, scope: !237, inlinedAt: !1744)
!1760 = !DILocation(line: 799, column: 29, scope: !236, inlinedAt: !1744)
!1761 = !DILocation(line: 0, scope: !236, inlinedAt: !1744)
!1762 = !DILocation(line: 800, column: 41, scope: !236, inlinedAt: !1744)
!1763 = !DILocation(line: 807, column: 17, scope: !236, inlinedAt: !1744)
!1764 = !DILocation(line: 807, column: 13, scope: !236, inlinedAt: !1744)
!1765 = !DILocation(line: 807, column: 23, scope: !236, inlinedAt: !1744)
!1766 = !DILocation(line: 808, column: 38, scope: !236, inlinedAt: !1744)
!1767 = !DILocation(line: 808, column: 13, scope: !236, inlinedAt: !1744)
!1768 = !DILocation(line: 810, column: 24, scope: !265, inlinedAt: !1744)
!1769 = !DILocation(line: 810, column: 28, scope: !265, inlinedAt: !1744)
!1770 = !DILocation(line: 811, column: 34, scope: !265, inlinedAt: !1744)
!1771 = distinct !{!1771, !1767, !1772, !139, !140}
!1772 = !DILocation(line: 812, column: 13, scope: !236, inlinedAt: !1744)
!1773 = !DILocation(line: 813, column: 26, scope: !236, inlinedAt: !1744)
!1774 = !DILocation(line: 813, column: 20, scope: !236, inlinedAt: !1744)
!1775 = !DILocation(line: 813, column: 24, scope: !236, inlinedAt: !1744)
!1776 = !DILocation(line: 814, column: 37, scope: !236, inlinedAt: !1744)
!1777 = !DILocation(line: 789, column: 13, scope: !234, inlinedAt: !1778)
!1778 = distinct !DILocation(line: 884, column: 5, scope: !453)
!1779 = !DILocation(line: 0, scope: !230, inlinedAt: !1778)
!1780 = !DILocation(line: 789, column: 21, scope: !234, inlinedAt: !1778)
!1781 = !DILocation(line: 789, column: 9, scope: !230, inlinedAt: !1778)
!1782 = !DILocation(line: 791, column: 23, scope: !233, inlinedAt: !1778)
!1783 = !DILocation(line: 791, column: 44, scope: !233, inlinedAt: !1778)
!1784 = !DILocation(line: 791, column: 29, scope: !233, inlinedAt: !1778)
!1785 = !DILocation(line: 0, scope: !233, inlinedAt: !1778)
!1786 = !DILocation(line: 792, column: 28, scope: !233, inlinedAt: !1778)
!1787 = !DILocation(line: 792, column: 42, scope: !233, inlinedAt: !1778)
!1788 = !DILocation(line: 792, column: 19, scope: !233, inlinedAt: !1778)
!1789 = !DILocation(line: 793, column: 21, scope: !233, inlinedAt: !1778)
!1790 = !DILocation(line: 795, column: 18, scope: !237, inlinedAt: !1778)
!1791 = !DILocation(line: 795, column: 26, scope: !237, inlinedAt: !1778)
!1792 = !DILocation(line: 795, column: 13, scope: !233, inlinedAt: !1778)
!1793 = !DILocation(line: 796, column: 17, scope: !237, inlinedAt: !1778)
!1794 = !DILocation(line: 796, column: 36, scope: !237, inlinedAt: !1778)
!1795 = !DILocation(line: 796, column: 13, scope: !237, inlinedAt: !1778)
!1796 = !DILocation(line: 799, column: 29, scope: !236, inlinedAt: !1778)
!1797 = !DILocation(line: 0, scope: !236, inlinedAt: !1778)
!1798 = !DILocation(line: 800, column: 41, scope: !236, inlinedAt: !1778)
!1799 = !DILocation(line: 807, column: 17, scope: !236, inlinedAt: !1778)
!1800 = !DILocation(line: 807, column: 13, scope: !236, inlinedAt: !1778)
!1801 = !DILocation(line: 807, column: 23, scope: !236, inlinedAt: !1778)
!1802 = !DILocation(line: 808, column: 38, scope: !236, inlinedAt: !1778)
!1803 = !DILocation(line: 808, column: 13, scope: !236, inlinedAt: !1778)
!1804 = !DILocation(line: 810, column: 24, scope: !265, inlinedAt: !1778)
!1805 = !DILocation(line: 810, column: 28, scope: !265, inlinedAt: !1778)
!1806 = !DILocation(line: 811, column: 34, scope: !265, inlinedAt: !1778)
!1807 = distinct !{!1807, !1803, !1808, !139, !140}
!1808 = !DILocation(line: 812, column: 13, scope: !236, inlinedAt: !1778)
!1809 = !DILocation(line: 813, column: 26, scope: !236, inlinedAt: !1778)
!1810 = !DILocation(line: 813, column: 20, scope: !236, inlinedAt: !1778)
!1811 = !DILocation(line: 813, column: 24, scope: !236, inlinedAt: !1778)
!1812 = !DILocation(line: 814, column: 37, scope: !236, inlinedAt: !1778)
!1813 = !DILocation(line: 885, column: 24, scope: !453)
!1814 = !DILocation(line: 885, column: 19, scope: !453)
!1815 = !DILocation(line: 885, column: 15, scope: !453)
!1816 = !DILocation(line: 886, column: 37, scope: !453)
!1817 = !{!1818, !150, i64 1844}
!1818 = !{!"x264_t", !1819, i64 0, !110, i64 704, !150, i64 1736, !150, i64 1740, !150, i64 1744, !150, i64 1748, !150, i64 1752, !1824, i64 1760, !151, i64 1832, !150, i64 1840, !150, i64 1844, !150, i64 1848, !150, i64 1852, !150, i64 1856, !150, i64 1860, !150, i64 1864, !150, i64 1868, !150, i64 1872, !150, i64 1876, !150, i64 1880, !150, i64 1884, !150, i64 1888, !150, i64 1892, !110, i64 1896, !151, i64 3200, !110, i64 3208, !151, i64 3328, !150, i64 3336, !150, i64 3340, !110, i64 3344, !110, i64 3376, !110, i64 3392, !110, i64 3424, !110, i64 3440, !110, i64 3472, !110, i64 3488, !110, i64 3520, !110, i64 3536, !110, i64 4272, !151, i64 7216, !1827, i64 7232, !149, i64 13904, !1828, i64 14416, !151, i64 14680, !151, i64 14688, !150, i64 14696, !110, i64 14704, !150, i64 14856, !110, i64 14864, !110, i64 15016, !150, i64 15024, !150, i64 15028, !1826, i64 15032, !1829, i64 15040, !1830, i64 16368, !151, i64 26704, !1833, i64 26712, !110, i64 30400, !110, i64 30912, !110, i64 31168, !151, i64 31176, !110, i64 31184, !110, i64 31232, !110, i64 31248, !110, i64 31304, !110, i64 31360, !110, i64 31456, !151, i64 31552, !1836, i64 31560, !1837, i64 32616, !1838, i64 32912, !1839, i64 33032, !1840, i64 33080, !1841, i64 33256, !151, i64 33328}
!1819 = !{!"x264_param_t", !150, i64 0, !150, i64 4, !150, i64 8, !150, i64 12, !150, i64 16, !150, i64 20, !150, i64 24, !150, i64 28, !150, i64 32, !150, i64 36, !150, i64 40, !1820, i64 44, !150, i64 80, !150, i64 84, !150, i64 88, !150, i64 92, !150, i64 96, !150, i64 100, !150, i64 104, !150, i64 108, !150, i64 112, !150, i64 116, !150, i64 120, !150, i64 124, !150, i64 128, !150, i64 132, !150, i64 136, !150, i64 140, !150, i64 144, !151, i64 152, !110, i64 160, !110, i64 176, !110, i64 192, !110, i64 208, !110, i64 224, !110, i64 288, !151, i64 352, !151, i64 360, !150, i64 368, !150, i64 372, !151, i64 376, !1821, i64 384, !1823, i64 488, !150, i64 632, !150, i64 636, !150, i64 640, !150, i64 644, !150, i64 648, !150, i64 652, !150, i64 656, !150, i64 660, !150, i64 664, !150, i64 668, !150, i64 672, !150, i64 676, !150, i64 680, !150, i64 684, !150, i64 688, !150, i64 692, !151, i64 696}
!1820 = !{!"", !150, i64 0, !150, i64 4, !150, i64 8, !150, i64 12, !150, i64 16, !150, i64 20, !150, i64 24, !150, i64 28, !150, i64 32}
!1821 = !{!"", !150, i64 0, !150, i64 4, !150, i64 8, !150, i64 12, !150, i64 16, !150, i64 20, !150, i64 24, !150, i64 28, !150, i64 32, !150, i64 36, !150, i64 40, !150, i64 44, !150, i64 48, !150, i64 52, !150, i64 56, !150, i64 60, !150, i64 64, !150, i64 68, !1822, i64 72, !1822, i64 76, !150, i64 80, !110, i64 84, !150, i64 92, !150, i64 96}
!1822 = !{!"float", !110, i64 0}
!1823 = !{!"", !150, i64 0, !150, i64 4, !150, i64 8, !150, i64 12, !150, i64 16, !150, i64 20, !1822, i64 24, !1822, i64 28, !1822, i64 32, !150, i64 36, !150, i64 40, !1822, i64 44, !1822, i64 48, !1822, i64 52, !150, i64 56, !1822, i64 60, !150, i64 64, !150, i64 68, !150, i64 72, !151, i64 80, !150, i64 88, !151, i64 96, !1822, i64 104, !1822, i64 108, !1822, i64 112, !151, i64 120, !150, i64 128, !151, i64 136}
!1824 = !{!"", !150, i64 0, !150, i64 4, !151, i64 8, !150, i64 16, !151, i64 24, !1825, i64 32}
!1825 = !{!"bs_s", !151, i64 0, !151, i64 8, !151, i64 16, !1826, i64 24, !150, i64 32, !150, i64 36}
!1826 = !{!"long", !110, i64 0}
!1827 = !{!"", !151, i64 0, !151, i64 8, !150, i64 16, !150, i64 20, !150, i64 24, !150, i64 28, !150, i64 32, !150, i64 36, !150, i64 40, !150, i64 44, !150, i64 48, !150, i64 52, !150, i64 56, !110, i64 60, !150, i64 68, !150, i64 72, !150, i64 76, !150, i64 80, !150, i64 84, !150, i64 88, !150, i64 92, !110, i64 96, !110, i64 352, !150, i64 6496, !150, i64 6500, !110, i64 6504, !150, i64 6632, !150, i64 6636, !150, i64 6640, !150, i64 6644, !150, i64 6648, !150, i64 6652, !150, i64 6656, !150, i64 6660}
!1828 = !{!"", !151, i64 0, !110, i64 8, !151, i64 24, !110, i64 32, !150, i64 176, !150, i64 180, !150, i64 184, !150, i64 188, !150, i64 192, !150, i64 196, !150, i64 200, !1826, i64 208, !1826, i64 216, !110, i64 224, !1826, i64 240, !1826, i64 248, !150, i64 256, !150, i64 260}
!1829 = !{!"", !110, i64 0, !110, i64 32, !110, i64 48, !110, i64 560}
!1830 = !{!"", !150, i64 0, !150, i64 4, !150, i64 8, !150, i64 12, !150, i64 16, !150, i64 20, !150, i64 24, !150, i64 28, !150, i64 32, !150, i64 36, !150, i64 40, !150, i64 44, !150, i64 48, !150, i64 52, !150, i64 56, !150, i64 60, !150, i64 64, !150, i64 68, !110, i64 72, !110, i64 80, !110, i64 88, !110, i64 96, !110, i64 104, !110, i64 112, !150, i64 120, !110, i64 124, !110, i64 140, !150, i64 204, !150, i64 208, !150, i64 212, !150, i64 216, !150, i64 220, !150, i64 224, !150, i64 228, !150, i64 232, !150, i64 236, !150, i64 240, !150, i64 244, !151, i64 248, !151, i64 256, !151, i64 264, !151, i64 272, !151, i64 280, !151, i64 288, !151, i64 296, !110, i64 304, !110, i64 320, !110, i64 336, !110, i64 352, !151, i64 864, !151, i64 872, !151, i64 880, !110, i64 888, !150, i64 1016, !150, i64 1020, !110, i64 1024, !150, i64 1028, !150, i64 1032, !150, i64 1036, !150, i64 1040, !150, i64 1044, !150, i64 1048, !150, i64 1052, !150, i64 1056, !150, i64 1060, !1831, i64 1072, !1832, i64 8656, !150, i64 9424, !150, i64 9428, !150, i64 9432, !150, i64 9436, !150, i64 9440, !150, i64 9444, !150, i64 9448, !150, i64 9452, !110, i64 9456, !150, i64 9472, !150, i64 9476, !110, i64 9480, !151, i64 9992, !110, i64 10000, !151, i64 10256, !110, i64 10264, !150, i64 10284, !110, i64 10288}
!1831 = !{!"", !110, i64 0, !110, i64 384, !110, i64 1248, !110, i64 1504, !110, i64 1760, !110, i64 2144, !110, i64 2624, !110, i64 2640, !150, i64 2656, !150, i64 2660, !110, i64 2672, !110, i64 3184, !110, i64 3696, !110, i64 3776, !110, i64 3904, !110, i64 3928, !110, i64 3952, !110, i64 3976, !110, i64 3984, !110, i64 7056, !110, i64 7312, !110, i64 7568}
!1832 = !{!"", !110, i64 0, !110, i64 48, !110, i64 96, !110, i64 176, !110, i64 496, !110, i64 656, !110, i64 696, !110, i64 728, !150, i64 736, !110, i64 740, !150, i64 744, !150, i64 748, !150, i64 752, !150, i64 756}
!1833 = !{!"", !1834, i64 0, !110, i64 704, !110, i64 728, !110, i64 768, !110, i64 808, !110, i64 880, !110, i64 920, !110, i64 960, !110, i64 1000, !110, i64 1040, !110, i64 1080, !110, i64 1120, !110, i64 1880, !110, i64 2152, !110, i64 2168, !110, i64 3192, !110, i64 3240, !110, i64 3656, !110, i64 3664, !110, i64 3672}
!1834 = !{!"", !150, i64 0, !150, i64 4, !150, i64 8, !110, i64 12, !150, i64 88, !150, i64 92, !150, i64 96, !110, i64 100, !110, i64 108, !110, i64 364, !110, i64 432, !110, i64 456, !110, i64 664, !110, i64 672, !1835, i64 696}
!1835 = !{!"double", !110, i64 0}
!1836 = !{!"", !110, i64 0, !110, i64 56, !110, i64 112, !110, i64 168, !110, i64 224, !110, i64 256, !110, i64 312, !110, i64 368, !110, i64 424, !110, i64 480, !110, i64 536, !151, i64 592, !110, i64 600, !110, i64 632, !151, i64 664, !151, i64 672, !110, i64 680, !110, i64 736, !110, i64 792, !110, i64 848, !110, i64 904, !151, i64 960, !151, i64 968, !151, i64 976, !151, i64 984, !151, i64 992, !151, i64 1000, !151, i64 1008, !151, i64 1016, !151, i64 1024, !151, i64 1032, !151, i64 1040, !151, i64 1048}
!1837 = !{!"", !151, i64 0, !151, i64 8, !151, i64 16, !110, i64 24, !110, i64 104, !151, i64 160, !151, i64 168, !151, i64 176, !151, i64 184, !151, i64 192, !151, i64 200, !151, i64 208, !151, i64 216, !151, i64 224, !151, i64 232, !151, i64 240, !151, i64 248, !151, i64 256, !151, i64 264, !151, i64 272, !151, i64 280, !151, i64 288}
!1838 = !{!"", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !151, i64 88, !151, i64 96, !151, i64 104, !151, i64 112}
!1839 = !{!"", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40}
!1840 = !{!"", !151, i64 0, !151, i64 8, !151, i64 16, !151, i64 24, !151, i64 32, !151, i64 40, !151, i64 48, !151, i64 56, !151, i64 64, !151, i64 72, !151, i64 80, !110, i64 88, !110, i64 136}
!1841 = !{!"", !110, i64 0, !110, i64 16, !110, i64 32, !110, i64 48, !151, i64 64}
!1842 = !DILocation(line: 886, column: 45, scope: !453)
!1843 = !DILocation(line: 886, column: 30, scope: !453)
!1844 = !DILocation(line: 886, column: 56, scope: !453)
!1845 = !DILocation(line: 886, column: 15, scope: !453)
!1846 = !DILocation(line: 0, scope: !230, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 888, column: 5, scope: !453)
!1848 = !DILocation(line: 791, column: 29, scope: !233, inlinedAt: !1847)
!1849 = !DILocation(line: 0, scope: !233, inlinedAt: !1847)
!1850 = !DILocation(line: 792, column: 19, scope: !233, inlinedAt: !1847)
!1851 = !DILocation(line: 793, column: 21, scope: !233, inlinedAt: !1847)
!1852 = !DILocation(line: 795, column: 26, scope: !237, inlinedAt: !1847)
!1853 = !DILocation(line: 795, column: 13, scope: !233, inlinedAt: !1847)
!1854 = !DILocation(line: 799, column: 29, scope: !236, inlinedAt: !1847)
!1855 = !DILocation(line: 0, scope: !236, inlinedAt: !1847)
!1856 = !DILocation(line: 800, column: 41, scope: !236, inlinedAt: !1847)
!1857 = !DILocation(line: 807, column: 17, scope: !236, inlinedAt: !1847)
!1858 = !DILocation(line: 807, column: 13, scope: !236, inlinedAt: !1847)
!1859 = !DILocation(line: 807, column: 23, scope: !236, inlinedAt: !1847)
!1860 = !DILocation(line: 808, column: 38, scope: !236, inlinedAt: !1847)
!1861 = !DILocation(line: 808, column: 13, scope: !236, inlinedAt: !1847)
!1862 = !DILocation(line: 810, column: 24, scope: !265, inlinedAt: !1847)
!1863 = !DILocation(line: 810, column: 28, scope: !265, inlinedAt: !1847)
!1864 = !DILocation(line: 811, column: 34, scope: !265, inlinedAt: !1847)
!1865 = distinct !{!1865, !1861, !1866, !139, !140}
!1866 = !DILocation(line: 812, column: 13, scope: !236, inlinedAt: !1847)
!1867 = !DILocation(line: 813, column: 26, scope: !236, inlinedAt: !1847)
!1868 = !DILocation(line: 813, column: 20, scope: !236, inlinedAt: !1847)
!1869 = !DILocation(line: 813, column: 24, scope: !236, inlinedAt: !1847)
!1870 = !DILocation(line: 814, column: 37, scope: !236, inlinedAt: !1847)
!1871 = !DILocation(line: 890, column: 5, scope: !453)
!1872 = !DILocation(line: 796, column: 17, scope: !237, inlinedAt: !1847)
!1873 = !DILocation(line: 796, column: 36, scope: !237, inlinedAt: !1847)
!1874 = !DILocation(line: 796, column: 13, scope: !237, inlinedAt: !1847)
!1875 = !DILocation(line: 892, column: 16, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !453, file: !17, line: 891, column: 5)
!1877 = !DILocation(line: 892, column: 20, scope: !1876)
!1878 = !DILocation(line: 893, column: 32, scope: !1876)
!1879 = !DILocation(line: 890, column: 36, scope: !453)
!1880 = distinct !{!1880, !1871, !1881, !139, !140}
!1881 = !DILocation(line: 894, column: 5, scope: !453)
!1882 = !DILocation(line: 895, column: 1, scope: !453)
