; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/dump.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.flag_to_name = type { i32, ptr }
%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.23 = type { i8, ptr }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.16 }
%union._xmgu = type { ptr }
%union.anon.16 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.17, %union._xivu, %union._xnvu }
%union.anon.17 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.9, ptr, %union.anon.10, %union.anon.11, %union.anon.12, ptr, %union.anon.13, ptr, i32, i32, i32 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { ptr }
%union.anon.11 = type { ptr }
%union.anon.12 = type { ptr }
%union.anon.13 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu, %union._xnvu }
%union.anon.8 = type { i64 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.18, %union._xivu }
%union.anon.18 = type { i64 }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.19, %union._xivu }
%union.anon.19 = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.he = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.20, %union.anon.21, ptr }
%union.anon.20 = type { ptr }
%union.anon.21 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.6, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.6 = type { i64 }
%struct.reg_substr_data = type { i8, [3 x %struct.reg_substr_datum] }
%struct.reg_substr_datum = type { i64, i64, ptr, ptr, i64 }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.unop_aux = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%union.UNOP_AUX_item = type { i64 }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvhv_aux = type { %union._xhvnameu, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32 }
%union._xhvnameu = type { ptr }
%struct.loop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.logop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.p5rx = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu, ptr, %union.anon.15, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.24, %union._xivu, %union._xnvu }
%union.anon.24 = type { i64 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.mro_alg = type { ptr, ptr, i16, i16, i32 }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.25, %union._xivu, %union._xnvu, %union.anon.26, i64, ptr, i8, i8 }
%union.anon.25 = type { i64 }
%union.anon.26 = type { i64 }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.context = type { %union.anon.28 }
%union.anon.28 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.block = type { i8, i8, i16, i32, ptr, i32, i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.block_sub }
%struct.block_sub = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.block_eval = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.padname = type { ptr, ptr, %union.anon.27, i32, i32, i32, i32, i8, i8 }
%union.anon.27 = type { ptr }

@__const.Perl_pv_escape.octbuf = private unnamed_addr constant [32 x i8] c"%123456789ABCDF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%cx%02lx\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%cx{%02lx}\00", align 1
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%c%03o\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%c%o\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\\0\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"VOID\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"WILD\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"SV_UNDEF\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"SV_NO\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"SV_YES\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"SV_PLACEHOLDER\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@PL_debug = external global i32, align 4
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_tmps_stack = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [8 x i8] c"<%lu%s>\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"<T>\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"CV(%s)\00", align 1
@reltable.Perl_sv_peek = internal unnamed_addr constant [16 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.399 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.400 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.401 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.402 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.403 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.404 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.405 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.406 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.407 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.408 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.409 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.410 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.411 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.412 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.413 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.414 to i64), i64 ptrtoint (ptr @reltable.Perl_sv_peek to i64)) to i32)], align 4
@.str.25 = private unnamed_addr constant [6 x i8] c"FREED\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c" [UTF8 \22%s\22]\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"(%g)\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"(%lu)\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"(%ld)\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c")\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.35 = private unnamed_addr constant [11 x i8] c" [tainted]\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@PL_dumpindent = external local_unnamed_addr global i16, align 2
@PL_main_root = external local_unnamed_addr global ptr, align 8
@PL_defstash = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [11 x i8] c"\0ASUB %s = \00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"(xsub 0x%lx %d)\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"<undef>\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"\0AFORMAT %s = \00", align 1
@PL_eval_root = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [4 x i8] c"{}\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"PMf_PRE %c%.*s%c%s\0A\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c" (RUNTIME)\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"PMf_PRE (RUNTIME)\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"PMf_REPL = \00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"CODE_LIST =\0A\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"CODE_LIST = 0x%lx\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"PMFLAGS = (%s)\0A\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c",CONST\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c",KEEP\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c",GLOBAL\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c",CONTINUE\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c",RETAINT\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c",EVAL\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c",NONDESTRUCT\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c",HAS_CV\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c",CODELIST_PRIVATE\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c",IS_QR\00", align 1
@pmflags_flags_names = dso_local constant [10 x %struct.flag_to_name] [%struct.flag_to_name { i32 4194304, ptr @.str.51 }, %struct.flag_to_name { i32 8388608, ptr @.str.52 }, %struct.flag_to_name { i32 16777216, ptr @.str.53 }, %struct.flag_to_name { i32 33554432, ptr @.str.54 }, %struct.flag_to_name { i32 524288, ptr @.str.55 }, %struct.flag_to_name { i32 67108864, ptr @.str.56 }, %struct.flag_to_name { i32 134217728, ptr @.str.57 }, %struct.flag_to_name { i32 268435456, ptr @.str.58 }, %struct.flag_to_name { i32 536870912, ptr @.str.59 }, %struct.flag_to_name { i32 1073741824, ptr @.str.60 }], align 16, !dbg !0
@.str.61 = private unnamed_addr constant [6 x i8] c",KIDS\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c",PARENS\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c",REF\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c",MOD\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c",STACKED\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c",SPECIAL\00", align 1
@op_flags_names = dso_local constant [6 x %struct.flag_to_name] [%struct.flag_to_name { i32 4, ptr @.str.61 }, %struct.flag_to_name { i32 8, ptr @.str.62 }, %struct.flag_to_name { i32 16, ptr @.str.63 }, %struct.flag_to_name { i32 32, ptr @.str.64 }, %struct.flag_to_name { i32 64, ptr @.str.65 }, %struct.flag_to_name { i32 128, ptr @.str.66 }], align 16, !dbg !1390
@.str.67 = private unnamed_addr constant [6 x i8] c"%-4lu\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"%*sTYPE = %s  ===> \00", align 1
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.70 = private unnamed_addr constant [7 x i8] c"(%lu)\0A\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"  (was %s)\0A\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"TARG = %ld\0A\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c",VOID\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c",SCALAR\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c",LIST\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c",UNKNOWN\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c",SLABBED\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c",SAVEFREE\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c",STATIC\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c",FOLDED\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c",MORESIB\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"FLAGS = (%s)\0A\00", align 1
@PL_op_private_bitdef_ix = external local_unnamed_addr constant [0 x i16], align 2
@PL_op_private_bitdefs = external local_unnamed_addr constant [0 x i16], align 2
@PL_op_private_bitfields = external local_unnamed_addr constant [0 x i16], align 2
@PL_op_private_labels = external constant [0 x i8], align 1
@.str.85 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"PRIVATE = (%s)\0A\00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c"PRIVATE = (0x%lx)\0A\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"GV = %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"GV = NULL\0A\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"ARGS = \0A\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"%lu => 0x%lx\0A\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"SV = %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"LINE = %lu\0A\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"PACKAGE = \22%s\22\0A\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"LABEL = \22%s\22\0A\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"SEQ = %u\0A\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"REDO ===> \00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"DONE\0A\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"NEXT ===> \00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"LAST ===> \00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"OTHER ===> \00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"REFCNT = %lu\0A\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"GV_NAME = %s\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"-> %s\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"  MAGIC = 0x%lx\0A\00", align 1
@PL_magic_vtables = external constant [31 x %struct.mgvtbl], align 16
@.str.108 = private unnamed_addr constant [30 x i8] c"    MG_VIRTUAL = &PL_vtbl_%s\0A\00", align 1
@PL_magic_vtable_names = external local_unnamed_addr constant [31 x ptr], align 16
@.str.109 = private unnamed_addr constant [24 x i8] c"    MG_VIRTUAL = 0x%lx\0A\00", align 1
@.str.110 = private unnamed_addr constant [20 x i8] c"    MG_VIRTUAL = 0\0A\00", align 1
@.str.111 = private unnamed_addr constant [21 x i8] c"    MG_PRIVATE = %d\0A\00", align 1
@magic_names = internal unnamed_addr constant [44 x %struct.anon.23] [%struct.anon.23 { i8 0, ptr @.str.421 }, %struct.anon.23 { i8 35, ptr @.str.422 }, %struct.anon.23 { i8 37, ptr @.str.423 }, %struct.anon.23 { i8 42, ptr @.str.424 }, %struct.anon.23 { i8 46, ptr @.str.425 }, %struct.anon.23 { i8 58, ptr @.str.426 }, %struct.anon.23 { i8 60, ptr @.str.427 }, %struct.anon.23 { i8 64, ptr @.str.428 }, %struct.anon.23 { i8 66, ptr @.str.429 }, %struct.anon.23 { i8 99, ptr @.str.430 }, %struct.anon.23 { i8 68, ptr @.str.431 }, %struct.anon.23 { i8 100, ptr @.str.432 }, %struct.anon.23 { i8 69, ptr @.str.433 }, %struct.anon.23 { i8 101, ptr @.str.434 }, %struct.anon.23 { i8 102, ptr @.str.435 }, %struct.anon.23 { i8 103, ptr @.str.436 }, %struct.anon.23 { i8 72, ptr @.str.437 }, %struct.anon.23 { i8 104, ptr @.str.438 }, %struct.anon.23 { i8 73, ptr @.str.439 }, %struct.anon.23 { i8 105, ptr @.str.440 }, %struct.anon.23 { i8 107, ptr @.str.441 }, %struct.anon.23 { i8 76, ptr @.str.442 }, %struct.anon.23 { i8 108, ptr @.str.443 }, %struct.anon.23 { i8 78, ptr @.str.444 }, %struct.anon.23 { i8 110, ptr @.str.445 }, %struct.anon.23 { i8 111, ptr @.str.446 }, %struct.anon.23 { i8 80, ptr @.str.447 }, %struct.anon.23 { i8 112, ptr @.str.448 }, %struct.anon.23 { i8 113, ptr @.str.449 }, %struct.anon.23 { i8 114, ptr @.str.450 }, %struct.anon.23 { i8 83, ptr @.str.451 }, %struct.anon.23 { i8 115, ptr @.str.452 }, %struct.anon.23 { i8 116, ptr @.str.453 }, %struct.anon.23 { i8 85, ptr @.str.454 }, %struct.anon.23 { i8 117, ptr @.str.455 }, %struct.anon.23 { i8 86, ptr @.str.456 }, %struct.anon.23 { i8 118, ptr @.str.457 }, %struct.anon.23 { i8 119, ptr @.str.458 }, %struct.anon.23 { i8 120, ptr @.str.459 }, %struct.anon.23 { i8 121, ptr @.str.460 }, %struct.anon.23 { i8 92, ptr @.str.461 }, %struct.anon.23 { i8 93, ptr @.str.462 }, %struct.anon.23 { i8 126, ptr @.str.463 }, %struct.anon.23 zeroinitializer], align 16, !dbg !1441
@.str.112 = private unnamed_addr constant [29 x i8] c"    MG_TYPE = PERL_MAGIC_%s\0A\00", align 1
@.str.113 = private unnamed_addr constant [28 x i8] c"    MG_TYPE = UNKNOWN(\\%o)\0A\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"    MG_FLAGS = 0x%02X\0A\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"      TAINTEDDIR\0A\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"      MINMATCH\0A\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"      REFCOUNTED\0A\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"      GSKIP\0A\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"      COPY\0A\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"      DUP\0A\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"      LOCAL\0A\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"      BYTES\0A\00", align 1
@.str.123 = private unnamed_addr constant [20 x i8] c"    MG_OBJ = 0x%lx\0A\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"    PAT = %s\0A\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"    REFCNT = %ld\0A\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"    MG_LEN = %ld\0A\00", align 1
@.str.127 = private unnamed_addr constant [19 x i8] c"    MG_PTR = 0x%lx\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c" => HEf_SVKEY\0A\00", align 1
@.str.130 = private unnamed_addr constant [126 x i8] c" ???? - /home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/dump.c does not know how to handle this MG_LEN\00", align 1
@.str.131 = private unnamed_addr constant [24 x i8] c"      %2ld: %lu -> %lu\0A\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"%s = 0x%lx\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"\09\22%s\22\0A\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"\22%s\22 :: \22\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"%s\22\0A\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"TEMP,\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"OBJECT,\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"GMG,\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"SMG,\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"RMG,\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"IOK,\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"NOK,\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"POK,\00", align 1
@first_sv_flags_names = dso_local constant [8 x %struct.flag_to_name] [%struct.flag_to_name { i32 524288, ptr @.str.137 }, %struct.flag_to_name { i32 1048576, ptr @.str.138 }, %struct.flag_to_name { i32 2097152, ptr @.str.139 }, %struct.flag_to_name { i32 4194304, ptr @.str.140 }, %struct.flag_to_name { i32 8388608, ptr @.str.141 }, %struct.flag_to_name { i32 256, ptr @.str.142 }, %struct.flag_to_name { i32 512, ptr @.str.143 }, %struct.flag_to_name { i32 1024, ptr @.str.144 }], align 16, !dbg !1401
@.str.145 = private unnamed_addr constant [5 x i8] c"OOK,\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"FAKE,\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"READONLY,\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"PROTECT,\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"BREAK,\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"pIOK,\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"pNOK,\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"pPOK,\00", align 1
@second_sv_flags_names = dso_local constant [8 x %struct.flag_to_name] [%struct.flag_to_name { i32 33554432, ptr @.str.145 }, %struct.flag_to_name { i32 16777216, ptr @.str.146 }, %struct.flag_to_name { i32 134217728, ptr @.str.147 }, %struct.flag_to_name { i32 65536, ptr @.str.148 }, %struct.flag_to_name { i32 67108864, ptr @.str.149 }, %struct.flag_to_name { i32 4096, ptr @.str.150 }, %struct.flag_to_name { i32 8192, ptr @.str.151 }, %struct.flag_to_name { i32 16384, ptr @.str.152 }], align 16, !dbg !1406
@.str.153 = private unnamed_addr constant [6 x i8] c"ANON,\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"UNIQUE,\00", align 1
@.str.155 = private unnamed_addr constant [7 x i8] c"CLONE,\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"CLONED,\00", align 1
@.str.157 = private unnamed_addr constant [7 x i8] c"CONST,\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"NODEBUG,\00", align 1
@.str.159 = private unnamed_addr constant [8 x i8] c"LVALUE,\00", align 1
@.str.160 = private unnamed_addr constant [8 x i8] c"METHOD,\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"WEAKOUTSIDE,\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"CVGV_RC,\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"DYNFILE,\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"AUTOLOAD,\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"HASEVAL,\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"SLABBED,\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"NAMED,\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"LEXICAL,\00", align 1
@.str.169 = private unnamed_addr constant [8 x i8] c"ISXSUB,\00", align 1
@cv_flags_names = dso_local constant [17 x %struct.flag_to_name] [%struct.flag_to_name { i32 128, ptr @.str.153 }, %struct.flag_to_name { i32 256, ptr @.str.154 }, %struct.flag_to_name { i32 32, ptr @.str.155 }, %struct.flag_to_name { i32 64, ptr @.str.156 }, %struct.flag_to_name { i32 4, ptr @.str.157 }, %struct.flag_to_name { i32 512, ptr @.str.158 }, %struct.flag_to_name { i32 2, ptr @.str.159 }, %struct.flag_to_name { i32 1, ptr @.str.160 }, %struct.flag_to_name { i32 16, ptr @.str.161 }, %struct.flag_to_name { i32 1024, ptr @.str.162 }, %struct.flag_to_name { i32 4096, ptr @.str.163 }, %struct.flag_to_name { i32 8192, ptr @.str.164 }, %struct.flag_to_name { i32 16384, ptr @.str.165 }, %struct.flag_to_name { i32 2048, ptr @.str.166 }, %struct.flag_to_name { i32 32768, ptr @.str.167 }, %struct.flag_to_name { i32 65536, ptr @.str.168 }, %struct.flag_to_name { i32 8, ptr @.str.169 }], align 16, !dbg !1408
@.str.170 = private unnamed_addr constant [11 x i8] c"SHAREKEYS,\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"LAZYDEL,\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"HASKFLAGS,\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"OVERLOAD,\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"CLONEABLE,\00", align 1
@hv_flags_names = dso_local constant [5 x %struct.flag_to_name] [%struct.flag_to_name { i32 536870912, ptr @.str.170 }, %struct.flag_to_name { i32 1073741824, ptr @.str.171 }, %struct.flag_to_name { i32 -2147483648, ptr @.str.172 }, %struct.flag_to_name { i32 268435456, ptr @.str.173 }, %struct.flag_to_name { i32 32768, ptr @.str.174 }], align 16, !dbg !1413
@.str.175 = private unnamed_addr constant [7 x i8] c"INTRO,\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"MULTI,\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"ASSUMECV,\00", align 1
@gp_flags_names = dso_local constant [3 x %struct.flag_to_name] [%struct.flag_to_name { i32 1, ptr @.str.175 }, %struct.flag_to_name { i32 2, ptr @.str.176 }, %struct.flag_to_name { i32 4, ptr @.str.177 }], align 16, !dbg !1418
@.str.178 = private unnamed_addr constant [4 x i8] c" SV\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c" AV\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c" HV\00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c" CV\00", align 1
@gp_flags_imported_names = dso_local constant [4 x %struct.flag_to_name] [%struct.flag_to_name { i32 16, ptr @.str.178 }, %struct.flag_to_name { i32 32, ptr @.str.179 }, %struct.flag_to_name { i32 64, ptr @.str.180 }, %struct.flag_to_name { i32 128, ptr @.str.181 }], align 16, !dbg !1421
@.str.182 = private unnamed_addr constant [15 x i8] c"PMf_MULTILINE,\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"PMf_SINGLELINE,\00", align 1
@.str.184 = private unnamed_addr constant [10 x i8] c"PMf_FOLD,\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"PMf_EXTENDED,\00", align 1
@.str.186 = private unnamed_addr constant [19 x i8] c"PMf_EXTENDED_MORE,\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"PMf_KEEPCOPY,\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"PMf_NOCAPURE,\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"IS_ANCHORED,\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"NO_INPLACE_SUBST,\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"EVAL_SEEN,\00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c"CHECK_ALL,\00", align 1
@.str.193 = private unnamed_addr constant [12 x i8] c"MATCH_UTF8,\00", align 1
@.str.194 = private unnamed_addr constant [17 x i8] c"USE_INTUIT_NOML,\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"USE_INTUIT_ML,\00", align 1
@.str.196 = private unnamed_addr constant [13 x i8] c"INTUIT_TAIL,\00", align 1
@.str.197 = private unnamed_addr constant [7 x i8] c"SPLIT,\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"COPY_DONE,\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"TAINTED_SEEN,\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"TAINTED,\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"START_ONLY,\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"SKIPWHITE,\00", align 1
@.str.203 = private unnamed_addr constant [7 x i8] c"WHITE,\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"NULL,\00", align 1
@regexp_extflags_names = dso_local constant [23 x %struct.flag_to_name] [%struct.flag_to_name { i32 1, ptr @.str.182 }, %struct.flag_to_name { i32 2, ptr @.str.183 }, %struct.flag_to_name { i32 4, ptr @.str.184 }, %struct.flag_to_name { i32 8, ptr @.str.185 }, %struct.flag_to_name { i32 16, ptr @.str.186 }, %struct.flag_to_name { i32 64, ptr @.str.187 }, %struct.flag_to_name { i32 32, ptr @.str.188 }, %struct.flag_to_name { i32 16777216, ptr @.str.189 }, %struct.flag_to_name { i32 65536, ptr @.str.190 }, %struct.flag_to_name { i32 131072, ptr @.str.191 }, %struct.flag_to_name { i32 524288, ptr @.str.192 }, %struct.flag_to_name { i32 1048576, ptr @.str.193 }, %struct.flag_to_name { i32 2097152, ptr @.str.194 }, %struct.flag_to_name { i32 4194304, ptr @.str.195 }, %struct.flag_to_name { i32 8388608, ptr @.str.196 }, %struct.flag_to_name { i32 2048, ptr @.str.197 }, %struct.flag_to_name { i32 33554432, ptr @.str.198 }, %struct.flag_to_name { i32 67108864, ptr @.str.199 }, %struct.flag_to_name { i32 134217728, ptr @.str.200 }, %struct.flag_to_name { i32 268435456, ptr @.str.201 }, %struct.flag_to_name { i32 536870912, ptr @.str.202 }, %struct.flag_to_name { i32 1073741824, ptr @.str.203 }, %struct.flag_to_name { i32 -2147483648, ptr @.str.204 }], align 16, !dbg !1426
@.str.205 = private unnamed_addr constant [6 x i8] c"SKIP,\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"IMPLICIT,\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"NAUGHTY,\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"VERBARG_SEEN,\00", align 1
@.str.209 = private unnamed_addr constant [15 x i8] c"CUTGROUP_SEEN,\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"USE_RE_EVAL,\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"NOSCAN,\00", align 1
@.str.212 = private unnamed_addr constant [11 x i8] c"CANY_SEEN,\00", align 1
@.str.213 = private unnamed_addr constant [11 x i8] c"GPOS_SEEN,\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"GPOS_FLOAT,\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"ANCH_MBOL,\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"ANCH_SBOL,\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"ANCH_GPOS,\00", align 1
@regexp_core_intflags_names = dso_local constant [13 x %struct.flag_to_name] [%struct.flag_to_name { i32 1, ptr @.str.205 }, %struct.flag_to_name { i32 2, ptr @.str.206 }, %struct.flag_to_name { i32 4, ptr @.str.207 }, %struct.flag_to_name { i32 8, ptr @.str.208 }, %struct.flag_to_name { i32 16, ptr @.str.209 }, %struct.flag_to_name { i32 32, ptr @.str.210 }, %struct.flag_to_name { i32 64, ptr @.str.211 }, %struct.flag_to_name { i32 128, ptr @.str.212 }, %struct.flag_to_name { i32 256, ptr @.str.213 }, %struct.flag_to_name { i32 512, ptr @.str.214 }, %struct.flag_to_name { i32 1024, ptr @.str.215 }, %struct.flag_to_name { i32 2048, ptr @.str.216 }, %struct.flag_to_name { i32 4096, ptr @.str.217 }], align 16, !dbg !1431
@.str.218 = private unnamed_addr constant [8 x i8] c"SV = 0\0A\00", align 1
@.str.219 = private unnamed_addr constant [50 x i8] c"(0x%lx) at 0x%lx\0A%*s  REFCNT = %ld\0A%*s  FLAGS = (\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"PADSTALE,\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"PADTMP,\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"ROK,\00", align 1
@.str.223 = private unnamed_addr constant [9 x i8] c"WEAKREF,\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"IsCOW,\00", align 1
@.str.225 = private unnamed_addr constant [14 x i8] c"PCS_IMPORTED,\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"SCREAM,\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"IMPORT\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"ALL,\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c" ),\00", align 1
@.str.230 = private unnamed_addr constant [8 x i8] c"EVALED,\00", align 1
@.str.231 = private unnamed_addr constant [6 x i8] c"IsUV,\00", align 1
@.str.232 = private unnamed_addr constant [6 x i8] c"TAIL,\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"VALID,\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"SV = \00", align 1
@.str.236 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@reltable.Perl_do_sv_dump = internal unnamed_addr constant [16 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.464 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.400 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.401 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.402 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.465 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.404 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.405 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.406 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.407 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.466 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.409 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.467 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.468 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.469 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.470 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.471 to i64), i64 ptrtoint (ptr @reltable.Perl_do_sv_dump to i64)) to i32)], align 4
@.str.237 = private unnamed_addr constant [19 x i8] c"UNKNOWN(0x%lx) %s\0A\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"  UV = %lu\00", align 1
@.str.239 = private unnamed_addr constant [11 x i8] c"  IV = %ld\00", align 1
@.str.240 = private unnamed_addr constant [13 x i8] c"  NV = %.*g\0A\00", align 1
@.str.241 = private unnamed_addr constant [14 x i8] c"  RV = 0x%lx\0A\00", align 1
@.str.242 = private unnamed_addr constant [16 x i8] c"  OFFSET = %lu\0A\00", align 1
@.str.243 = private unnamed_addr constant [14 x i8] c"  PV = 0x%lx \00", align 1
@.str.244 = private unnamed_addr constant [10 x i8] c"( %s . ) \00", align 1
@.str.245 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.247 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"  CUR = %ld\0A\00", align 1
@.str.249 = private unnamed_addr constant [13 x i8] c"  LEN = %ld\0A\00", align 1
@.str.250 = private unnamed_addr constant [19 x i8] c"  COW_REFCNT = %d\0A\00", align 1
@.str.251 = private unnamed_addr constant [10 x i8] c"  PV = 0\0A\00", align 1
@.str.252 = private unnamed_addr constant [8 x i8] c"  STASH\00", align 1
@.str.253 = private unnamed_addr constant [16 x i8] c"  USEFUL = %ld\0A\00", align 1
@.str.254 = private unnamed_addr constant [16 x i8] c"  ARRAY = 0x%lx\00", align 1
@.str.255 = private unnamed_addr constant [15 x i8] c" (offset=%ld)\0A\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"  ALLOC = 0x%lx\0A\00", align 1
@.str.257 = private unnamed_addr constant [14 x i8] c"  FILL = %ld\0A\00", align 1
@.str.258 = private unnamed_addr constant [13 x i8] c"  MAX = %ld\0A\00", align 1
@.str.259 = private unnamed_addr constant [18 x i8] c"  ARYLEN = 0x%lx\0A\00", align 1
@.str.260 = private unnamed_addr constant [6 x i8] c",REAL\00", align 1
@.str.261 = private unnamed_addr constant [7 x i8] c",REIFY\00", align 1
@.str.262 = private unnamed_addr constant [16 x i8] c"  FLAGS = (%s)\0A\00", align 1
@.str.263 = private unnamed_addr constant [13 x i8] c"Elt No. %ld\0A\00", align 1
@.str.264 = private unnamed_addr constant [19 x i8] c"  AUX_FLAGS = %lu\0A\00", align 1
@.str.265 = private unnamed_addr constant [4 x i8] c"  (\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"%d%s:%d\00", align 1
@.str.267 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.269 = private unnamed_addr constant [24 x i8] c"  hash quality = %.1f%%\00", align 1
@.str.270 = private unnamed_addr constant [14 x i8] c"  KEYS = %ld\0A\00", align 1
@.str.271 = private unnamed_addr constant [29 x i8] c"  FILL = %lu (cached = %lu)\0A\00", align 1
@.str.272 = private unnamed_addr constant [14 x i8] c"  FILL = %lu\0A\00", align 1
@.str.273 = private unnamed_addr constant [15 x i8] c"  RITER = %ld\0A\00", align 1
@.str.274 = private unnamed_addr constant [17 x i8] c"  EITER = 0x%lx\0A\00", align 1
@.str.275 = private unnamed_addr constant [15 x i8] c"  RAND = 0x%lx\00", align 1
@.str.276 = private unnamed_addr constant [16 x i8] c" (LAST = 0x%lx)\00", align 1
@.str.277 = private unnamed_addr constant [18 x i8] c"  PMROOT = 0x%lx\0A\00", align 1
@.str.278 = private unnamed_addr constant [15 x i8] c"  NAME = \22%s\22\0A\00", align 1
@.str.279 = private unnamed_addr constant [19 x i8] c"  NAMECOUNT = %ld\0A\00", align 1
@.str.280 = private unnamed_addr constant [7 x i8] c", \22%s\22\00", align 1
@.str.281 = private unnamed_addr constant [9 x i8] c", (null)\00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"  ENAME = %s\0A\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"  ENAME = \22%s\22\0A\00", align 1
@.str.284 = private unnamed_addr constant [20 x i8] c"  BACKREFS = 0x%lx\0A\00", align 1
@.str.285 = private unnamed_addr constant [28 x i8] c"  MRO_WHICH = \22%s\22 (0x%lx)\0A\00", align 1
@.str.286 = private unnamed_addr constant [21 x i8] c"  CACHE_GEN = 0x%lx\0A\00", align 1
@.str.287 = private unnamed_addr constant [19 x i8] c"  PKG_GEN = 0x%lx\0A\00", align 1
@.str.288 = private unnamed_addr constant [26 x i8] c"  MRO_LINEAR_ALL = 0x%lx\0A\00", align 1
@.str.289 = private unnamed_addr constant [30 x i8] c"  MRO_LINEAR_CURRENT = 0x%lx\0A\00", align 1
@.str.290 = private unnamed_addr constant [26 x i8] c"  MRO_NEXTMETHOD = 0x%lx\0A\00", align 1
@.str.291 = private unnamed_addr constant [15 x i8] c"  ISA = 0x%lx\0A\00", align 1
@.str.292 = private unnamed_addr constant [8 x i8] c"Elt %s \00", align 1
@.str.293 = private unnamed_addr constant [13 x i8] c"[UTF8 \22%s\22] \00", align 1
@.str.294 = private unnamed_addr constant [11 x i8] c"[CURRENT] \00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"HASH = 0x%lx\0A\00", align 1
@.str.296 = private unnamed_addr constant [19 x i8] c"  AUTOLOAD = \22%s\22\0A\00", align 1
@.str.297 = private unnamed_addr constant [20 x i8] c"  PROTOTYPE = \22%s\22\0A\00", align 1
@.str.298 = private unnamed_addr constant [13 x i8] c"  COMP_STASH\00", align 1
@.str.299 = private unnamed_addr constant [26 x i8] c"  START = 0x%lx ===> %ld\0A\00", align 1
@.str.300 = private unnamed_addr constant [16 x i8] c"  ROOT = 0x%lx\0A\00", align 1
@.str.301 = private unnamed_addr constant [16 x i8] c"  XSUB = 0x%lx\0A\00", align 1
@.str.302 = private unnamed_addr constant [30 x i8] c"  XSUBANY = 0x%lx (CONST SV)\0A\00", align 1
@.str.303 = private unnamed_addr constant [17 x i8] c"  XSUBANY = %ld\0A\00", align 1
@.str.304 = private unnamed_addr constant [11 x i8] c"  GVGV::GV\00", align 1
@.str.305 = private unnamed_addr constant [15 x i8] c"  FILE = \22%s\22\0A\00", align 1
@.str.306 = private unnamed_addr constant [15 x i8] c"  DEPTH = %ld\0A\00", align 1
@.str.307 = private unnamed_addr constant [17 x i8] c"  FLAGS = 0x%lx\0A\00", align 1
@.str.308 = private unnamed_addr constant [21 x i8] c"  OUTSIDE_SEQ = %lu\0A\00", align 1
@.str.309 = private unnamed_addr constant [19 x i8] c"  PADLIST = 0x%lx\0A\00", align 1
@.str.310 = private unnamed_addr constant [16 x i8] c"  HSCXT = 0x%p\0A\00", align 1
@.str.311 = private unnamed_addr constant [24 x i8] c"  OUTSIDE = 0x%lx (%s)\0A\00", align 1
@.str.312 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.313 = private unnamed_addr constant [5 x i8] c"ANON\00", align 1
@PL_main_cv = external local_unnamed_addr global ptr, align 8
@.str.314 = private unnamed_addr constant [5 x i8] c"MAIN\00", align 1
@.str.315 = private unnamed_addr constant [7 x i8] c"UNIQUE\00", align 1
@.str.316 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@.str.317 = private unnamed_addr constant [13 x i8] c"  TYPE = %c\0A\00", align 1
@.str.318 = private unnamed_addr constant [17 x i8] c"  TARGOFF = %ld\0A\00", align 1
@.str.319 = private unnamed_addr constant [17 x i8] c"  TARGLEN = %ld\0A\00", align 1
@.str.320 = private unnamed_addr constant [16 x i8] c"  TARG = 0x%lx\0A\00", align 1
@.str.321 = private unnamed_addr constant [15 x i8] c"  FLAGS = %ld\0A\00", align 1
@.str.322 = private unnamed_addr constant [17 x i8] c"  NAMELEN = %ld\0A\00", align 1
@.str.323 = private unnamed_addr constant [10 x i8] c"  GvSTASH\00", align 1
@.str.324 = private unnamed_addr constant [14 x i8] c"  GP = 0x%lx\0A\00", align 1
@.str.325 = private unnamed_addr constant [16 x i8] c"    SV = 0x%lx\0A\00", align 1
@.str.326 = private unnamed_addr constant [16 x i8] c"    IO = 0x%lx\0A\00", align 1
@.str.327 = private unnamed_addr constant [20 x i8] c"    FORM = 0x%lx  \0A\00", align 1
@.str.328 = private unnamed_addr constant [16 x i8] c"    AV = 0x%lx\0A\00", align 1
@.str.329 = private unnamed_addr constant [16 x i8] c"    HV = 0x%lx\0A\00", align 1
@.str.330 = private unnamed_addr constant [16 x i8] c"    CV = 0x%lx\0A\00", align 1
@.str.331 = private unnamed_addr constant [19 x i8] c"    CVGEN = 0x%lx\0A\00", align 1
@.str.332 = private unnamed_addr constant [26 x i8] c"    GPFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.333 = private unnamed_addr constant [11 x i8] c"ALIASED_SV\00", align 1
@.str.334 = private unnamed_addr constant [16 x i8] c"    LINE = %ld\0A\00", align 1
@.str.335 = private unnamed_addr constant [17 x i8] c"    FILE = \22%s\22\0A\00", align 1
@.str.336 = private unnamed_addr constant [8 x i8] c"    EGV\00", align 1
@.str.337 = private unnamed_addr constant [15 x i8] c"  IFP = 0x%lx\0A\00", align 1
@.str.338 = private unnamed_addr constant [15 x i8] c"  OFP = 0x%lx\0A\00", align 1
@.str.339 = private unnamed_addr constant [16 x i8] c"  DIRP = 0x%lx\0A\00", align 1
@.str.340 = private unnamed_addr constant [15 x i8] c"  LINES = %ld\0A\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"  PAGE = %ld\0A\00", align 1
@.str.342 = private unnamed_addr constant [18 x i8] c"  PAGE_LEN = %ld\0A\00", align 1
@.str.343 = private unnamed_addr constant [20 x i8] c"  LINES_LEFT = %ld\0A\00", align 1
@.str.344 = private unnamed_addr constant [19 x i8] c"  TOP_NAME = \22%s\22\0A\00", align 1
@.str.345 = private unnamed_addr constant [9 x i8] c"  TOP_GV\00", align 1
@.str.346 = private unnamed_addr constant [18 x i8] c"  TOP_GV = 0x%lx\0A\00", align 1
@.str.347 = private unnamed_addr constant [19 x i8] c"  FMT_NAME = \22%s\22\0A\00", align 1
@.str.348 = private unnamed_addr constant [9 x i8] c"  FMT_GV\00", align 1
@.str.349 = private unnamed_addr constant [18 x i8] c"  FMT_GV = 0x%lx\0A\00", align 1
@.str.350 = private unnamed_addr constant [22 x i8] c"  BOTTOM_NAME = \22%s\22\0A\00", align 1
@.str.351 = private unnamed_addr constant [12 x i8] c"  BOTTOM_GV\00", align 1
@.str.352 = private unnamed_addr constant [21 x i8] c"  BOTTOM_GV = 0x%lx\0A\00", align 1
@.str.353 = private unnamed_addr constant [15 x i8] c"  TYPE = '%c'\0A\00", align 1
@.str.354 = private unnamed_addr constant [16 x i8] c"  TYPE = '\\%o'\0A\00", align 1
@.str.355 = private unnamed_addr constant [26 x i8] c"  COMPFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.356 = private unnamed_addr constant [25 x i8] c"  EXTFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.357 = private unnamed_addr constant [23 x i8] c"  ENGINE = 0x%lx (%s)\0A\00", align 1
@PL_core_reg_engine = external constant %struct.regexp_engine, align 8
@.str.358 = private unnamed_addr constant [9 x i8] c"STANDARD\00", align 1
@.str.359 = private unnamed_addr constant [8 x i8] c"PLUG-IN\00", align 1
@.str.360 = private unnamed_addr constant [25 x i8] c"  INTFLAGS = 0x%lx (%s)\0A\00", align 1
@.str.361 = private unnamed_addr constant [20 x i8] c"  INTFLAGS = 0x%lx\0A\00", align 1
@.str.362 = private unnamed_addr constant [17 x i8] c"  NPARENS = %lu\0A\00", align 1
@.str.363 = private unnamed_addr constant [19 x i8] c"  LASTPAREN = %lu\0A\00", align 1
@.str.364 = private unnamed_addr constant [24 x i8] c"  LASTCLOSEPAREN = %lu\0A\00", align 1
@.str.365 = private unnamed_addr constant [16 x i8] c"  MINLEN = %ld\0A\00", align 1
@.str.366 = private unnamed_addr constant [19 x i8] c"  MINLENRET = %ld\0A\00", align 1
@.str.367 = private unnamed_addr constant [14 x i8] c"  GOFS = %lu\0A\00", align 1
@.str.368 = private unnamed_addr constant [20 x i8] c"  PRE_PREFIX = %lu\0A\00", align 1
@.str.369 = private unnamed_addr constant [16 x i8] c"  SUBLEN = %ld\0A\00", align 1
@.str.370 = private unnamed_addr constant [19 x i8] c"  SUBOFFSET = %ld\0A\00", align 1
@.str.371 = private unnamed_addr constant [20 x i8] c"  SUBCOFFSET = %ld\0A\00", align 1
@.str.372 = private unnamed_addr constant [21 x i8] c"  SUBBEG = 0x%lx %s\0A\00", align 1
@.str.373 = private unnamed_addr constant [16 x i8] c"  SUBBEG = 0x0\0A\00", align 1
@.str.374 = private unnamed_addr constant [21 x i8] c"  MOTHER_RE = 0x%lx\0A\00", align 1
@.str.375 = private unnamed_addr constant [23 x i8] c"  PAREN_NAMES = 0x%lx\0A\00", align 1
@.str.376 = private unnamed_addr constant [19 x i8] c"  SUBSTRS = 0x%lx\0A\00", align 1
@.str.377 = private unnamed_addr constant [20 x i8] c"  PPRIVATE = 0x%lx\0A\00", align 1
@.str.378 = private unnamed_addr constant [16 x i8] c"  OFFS = 0x%lx\0A\00", align 1
@.str.379 = private unnamed_addr constant [21 x i8] c"  QR_ANONCV = 0x%lx\0A\00", align 1
@.str.380 = private unnamed_addr constant [22 x i8] c"  SAVED_COPY = 0x%lx\0A\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@.str.381 = private unnamed_addr constant [15 x i8] c"NULL OP IN RUN\00", align 1
@PL_watchaddr = external local_unnamed_addr global ptr, align 8
@PL_watchok = external local_unnamed_addr global ptr, align 8
@.str.382 = private unnamed_addr constant [38 x i8] c"WARNING: %lx changed from %lx to %lx\0A\00", align 1
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@.str.383 = private unnamed_addr constant [9 x i8] c"%d%lu%4p\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"[%lu]\00", align 1
@.str.385 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.386 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.387 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.388 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.389 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.390 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.391 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.392 = private unnamed_addr constant [12 x i8] c"UNKNOWN(%d)\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_debstash = external local_unnamed_addr global ptr, align 8
@.str.393 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.394 = private unnamed_addr constant [13 x i8] c"(cv ref: %s)\00", align 1
@.str.395 = private unnamed_addr constant [7 x i8] c"(NULL)\00", align 1
@.str.396 = private unnamed_addr constant [6 x i8] c"(%-p)\00", align 1
@.str.397 = private unnamed_addr constant [32 x i8] c"WATCHING, %lx is currently %lx\0A\00", align 1
@PL_profiledata = external local_unnamed_addr global ptr, align 8
@.str.398 = private unnamed_addr constant [9 x i8] c"%5lu %s\0A\00", align 1
@.str.399 = private unnamed_addr constant [6 x i8] c"UNDEF\00", align 1
@.str.400 = private unnamed_addr constant [3 x i8] c"IV\00", align 1
@.str.401 = private unnamed_addr constant [3 x i8] c"NV\00", align 1
@.str.402 = private unnamed_addr constant [3 x i8] c"PV\00", align 1
@.str.403 = private unnamed_addr constant [7 x i8] c"INVLST\00", align 1
@.str.404 = private unnamed_addr constant [5 x i8] c"PVIV\00", align 1
@.str.405 = private unnamed_addr constant [5 x i8] c"PVNV\00", align 1
@.str.406 = private unnamed_addr constant [5 x i8] c"PVMG\00", align 1
@.str.407 = private unnamed_addr constant [7 x i8] c"REGEXP\00", align 1
@.str.408 = private unnamed_addr constant [3 x i8] c"GV\00", align 1
@.str.409 = private unnamed_addr constant [5 x i8] c"PVLV\00", align 1
@.str.410 = private unnamed_addr constant [3 x i8] c"AV\00", align 1
@.str.411 = private unnamed_addr constant [3 x i8] c"HV\00", align 1
@.str.412 = private unnamed_addr constant [3 x i8] c"CV\00", align 1
@.str.413 = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@.str.414 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.415 = private unnamed_addr constant [6 x i8] c",ONCE\00", align 1
@.str.416 = private unnamed_addr constant [6 x i8] c":USED\00", align 1
@.str.417 = private unnamed_addr constant [9 x i8] c",TAINTED\00", align 1
@.str.418 = private unnamed_addr constant [11 x i8] c",SCANFIRST\00", align 1
@.str.419 = private unnamed_addr constant [5 x i8] c",ALL\00", align 1
@.str.420 = private unnamed_addr constant [11 x i8] c",SKIPWHITE\00", align 1
@PL_op_sequence = external local_unnamed_addr global ptr, align 8
@PL_op_seq = external local_unnamed_addr global i64, align 8
@.str.421 = private unnamed_addr constant [7 x i8] c"sv(\\0)\00", align 1
@.str.422 = private unnamed_addr constant [10 x i8] c"arylen(#)\00", align 1
@.str.423 = private unnamed_addr constant [9 x i8] c"rhash(%)\00", align 1
@.str.424 = private unnamed_addr constant [12 x i8] c"debugvar(*)\00", align 1
@.str.425 = private unnamed_addr constant [7 x i8] c"pos(.)\00", align 1
@.str.426 = private unnamed_addr constant [10 x i8] c"symtab(:)\00", align 1
@.str.427 = private unnamed_addr constant [11 x i8] c"backref(<)\00", align 1
@.str.428 = private unnamed_addr constant [12 x i8] c"arylen_p(@)\00", align 1
@.str.429 = private unnamed_addr constant [6 x i8] c"bm(B)\00", align 1
@.str.430 = private unnamed_addr constant [18 x i8] c"overload_table(c)\00", align 1
@.str.431 = private unnamed_addr constant [11 x i8] c"regdata(D)\00", align 1
@.str.432 = private unnamed_addr constant [12 x i8] c"regdatum(d)\00", align 1
@.str.433 = private unnamed_addr constant [7 x i8] c"env(E)\00", align 1
@.str.434 = private unnamed_addr constant [11 x i8] c"envelem(e)\00", align 1
@.str.435 = private unnamed_addr constant [6 x i8] c"fm(f)\00", align 1
@.str.436 = private unnamed_addr constant [16 x i8] c"regex_global(g)\00", align 1
@.str.437 = private unnamed_addr constant [9 x i8] c"hints(H)\00", align 1
@.str.438 = private unnamed_addr constant [13 x i8] c"hintselem(h)\00", align 1
@.str.439 = private unnamed_addr constant [7 x i8] c"isa(I)\00", align 1
@.str.440 = private unnamed_addr constant [11 x i8] c"isaelem(i)\00", align 1
@.str.441 = private unnamed_addr constant [9 x i8] c"nkeys(k)\00", align 1
@.str.442 = private unnamed_addr constant [10 x i8] c"dbfile(L)\00", align 1
@.str.443 = private unnamed_addr constant [10 x i8] c"dbline(l)\00", align 1
@.str.444 = private unnamed_addr constant [10 x i8] c"shared(N)\00", align 1
@.str.445 = private unnamed_addr constant [17 x i8] c"shared_scalar(n)\00", align 1
@.str.446 = private unnamed_addr constant [12 x i8] c"collxfrm(o)\00", align 1
@.str.447 = private unnamed_addr constant [8 x i8] c"tied(P)\00", align 1
@.str.448 = private unnamed_addr constant [12 x i8] c"tiedelem(p)\00", align 1
@.str.449 = private unnamed_addr constant [14 x i8] c"tiedscalar(q)\00", align 1
@.str.450 = private unnamed_addr constant [6 x i8] c"qr(r)\00", align 1
@.str.451 = private unnamed_addr constant [7 x i8] c"sig(S)\00", align 1
@.str.452 = private unnamed_addr constant [11 x i8] c"sigelem(s)\00", align 1
@.str.453 = private unnamed_addr constant [9 x i8] c"taint(t)\00", align 1
@.str.454 = private unnamed_addr constant [8 x i8] c"uvar(U)\00", align 1
@.str.455 = private unnamed_addr constant [13 x i8] c"uvar_elem(u)\00", align 1
@.str.456 = private unnamed_addr constant [11 x i8] c"vstring(V)\00", align 1
@.str.457 = private unnamed_addr constant [7 x i8] c"vec(v)\00", align 1
@.str.458 = private unnamed_addr constant [8 x i8] c"utf8(w)\00", align 1
@.str.459 = private unnamed_addr constant [10 x i8] c"substr(x)\00", align 1
@.str.460 = private unnamed_addr constant [11 x i8] c"defelem(y)\00", align 1
@.str.461 = private unnamed_addr constant [9 x i8] c"lvref(\\)\00", align 1
@.str.462 = private unnamed_addr constant [13 x i8] c"checkcall(])\00", align 1
@.str.463 = private unnamed_addr constant [7 x i8] c"ext(~)\00", align 1
@.str.464 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.465 = private unnamed_addr constant [8 x i8] c"INVLIST\00", align 1
@.str.466 = private unnamed_addr constant [5 x i8] c"PVGV\00", align 1
@.str.467 = private unnamed_addr constant [5 x i8] c"PVAV\00", align 1
@.str.468 = private unnamed_addr constant [5 x i8] c"PVHV\00", align 1
@.str.469 = private unnamed_addr constant [5 x i8] c"PVCV\00", align 1
@.str.470 = private unnamed_addr constant [5 x i8] c"PVFM\00", align 1
@.str.471 = private unnamed_addr constant [5 x i8] c"PVIO\00", align 1
@.str.472 = private unnamed_addr constant [10 x i8] c"[%d%lu%4p\00", align 1
@.str.473 = private unnamed_addr constant [9 x i8] c"<NULLGV>\00", align 1
@.str.474 = private unnamed_addr constant [6 x i8] c"%c%-p\00", align 1
@reltable.Perl_do_op_dump = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.75 to i64), i64 ptrtoint (ptr @reltable.Perl_do_op_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.76 to i64), i64 ptrtoint (ptr @reltable.Perl_do_op_dump to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.77 to i64), i64 ptrtoint (ptr @reltable.Perl_do_op_dump to i64)) to i32)], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pv_escape(ptr noundef %dsv, ptr noundef %str, i64 noundef %count, i64 noundef %max, ptr noundef writeonly %escaped, i32 noundef %flags) local_unnamed_addr #0 !dbg !1463 {
entry:
  %octbuf = alloca [32 x i8], align 16
  %readsize = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %dsv, metadata !1469, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata ptr %str, metadata !1470, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i64 %count, metadata !1471, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i64 %max, metadata !1472, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata ptr %escaped, metadata !1473, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1474, metadata !DIExpression()), !dbg !1494
  %and = and i32 %flags, 32768, !dbg !1495
  %tobool.not = icmp eq i32 %and, 0, !dbg !1496
  %conv = select i1 %tobool.not, i8 92, i8 37, !dbg !1496
  call void @llvm.dbg.value(metadata i8 %conv, metadata !1475, metadata !DIExpression()), !dbg !1494
  %and1 = and i32 %flags, 1, !dbg !1497
  %tobool2.not = icmp eq i32 %and1, 0, !dbg !1497
  %spec.select = select i1 %tobool2.not, i8 %conv, i8 34, !dbg !1498
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !1476, metadata !DIExpression()), !dbg !1494
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %octbuf) #8, !dbg !1499
  call void @llvm.dbg.declare(metadata ptr %octbuf, metadata !1477, metadata !DIExpression()), !dbg !1500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %octbuf, ptr noundef nonnull align 16 dereferenceable(32) @__const.Perl_pv_escape.octbuf, i64 32, i1 false), !dbg !1500
  call void @llvm.dbg.value(metadata i64 0, metadata !1481, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i64 0, metadata !1482, metadata !DIExpression()), !dbg !1494
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %readsize) #8, !dbg !1501
  call void @llvm.dbg.value(metadata i64 1, metadata !1483, metadata !DIExpression()), !dbg !1494
  store i64 1, ptr %readsize, align 8, !dbg !1502
  %and6 = lshr i32 %flags, 8, !dbg !1503
  %0 = trunc i32 %and6 to i8, !dbg !1503
  %1 = and i8 %0, 1, !dbg !1503
  call void @llvm.dbg.value(metadata i8 %1, metadata !1484, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata ptr %str, metadata !1485, metadata !DIExpression()), !dbg !1494
  %add.ptr = getelementptr inbounds i8, ptr %str, i64 %count, !dbg !1504
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1486, metadata !DIExpression()), !dbg !1494
  store i8 %conv, ptr %octbuf, align 16, !dbg !1505
  %tobool10.not = icmp eq ptr %dsv, null, !dbg !1506
  %and11 = and i32 %flags, 16384
  %tobool12.not = icmp ne i32 %and11, 0
  %2 = or i1 %tobool10.not, %tobool12.not, !dbg !1508
  br i1 %2, label %if.end, label %if.then, !dbg !1508

if.then:                                          ; preds = %entry
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %dsv, ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !1509
  br label %if.end, !dbg !1511

if.end:                                           ; preds = %if.then, %entry
  %and13 = and i32 %flags, 512, !dbg !1512
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !1512
  br i1 %tobool14.not, label %if.end18, label %land.lhs.true15, !dbg !1514

land.lhs.true15:                                  ; preds = %if.end
  %call = tail call zeroext i1 @Perl_is_utf8_string(ptr noundef %str, i64 noundef %count) #8, !dbg !1515
  %spec.select270 = select i1 %call, i8 1, i8 %1, !dbg !1516
  br label %if.end18, !dbg !1516

if.end18:                                         ; preds = %land.lhs.true15, %if.end
  %isuni.0 = phi i8 [ %1, %if.end ], [ %spec.select270, %land.lhs.true15 ], !dbg !1494
  call void @llvm.dbg.value(metadata i8 %isuni.0, metadata !1484, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i64 0, metadata !1481, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata ptr %str, metadata !1485, metadata !DIExpression()), !dbg !1494
  %cmp280 = icmp sgt i64 %count, 0, !dbg !1517
  br i1 %cmp280, label %land.rhs.lr.ph, label %for.end, !dbg !1518

land.rhs.lr.ph:                                   ; preds = %if.end18
  %tobool20.not = icmp eq i64 %max, 0
  %tobool23.not = icmp eq i8 %isuni.0, 0
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i64
  %and40 = and i32 %flags, 4096
  %tobool41.not = icmp eq i32 %and40, 0
  %and46 = and i32 %flags, 66560
  %tobool47.not = icmp eq i32 %and46, 0
  %and49 = and i32 %flags, 2048
  %tobool50.not = icmp eq i32 %and49, 0
  %and55 = and i32 %flags, 65536
  %tobool56.not = icmp ne i32 %and55, 0
  %spec.select274 = select i1 %tobool56.not, i1 %tobool23.not, i1 false
  %cond60 = select i1 %spec.select274, ptr @.str.2, ptr @.str.3
  %3 = zext i8 %conv to i32
  %and66 = and i32 %flags, 8192
  %tobool67.not = icmp eq i32 %and66, 0
  %cmp106 = icmp eq i8 %spec.select, 34
  %arrayidx109 = getelementptr inbounds [32 x i8], ptr %octbuf, i64 0, i64 1
  %cond122 = select i1 %tobool23.not, ptr @.str.2, ptr @.str.3
  %tobool20.not.not = xor i1 %tobool20.not, true
  br label %land.rhs, !dbg !1518

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.inc
  %wrote.0282 = phi i64 [ 0, %land.rhs.lr.ph ], [ %wrote.1, %for.inc ]
  %pv.0281 = phi ptr [ %str, %land.rhs.lr.ph ], [ %add.ptr182, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %wrote.0282, metadata !1481, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata ptr %pv.0281, metadata !1485, metadata !DIExpression()), !dbg !1494
  %cmp21 = icmp ult i64 %wrote.0282, %max
  %or.cond271 = select i1 %tobool20.not, i1 true, i1 %cmp21, !dbg !1519
  br i1 %or.cond271, label %for.body, label %for.end, !dbg !1519

for.body:                                         ; preds = %land.rhs
  br i1 %tobool23.not, label %cond.false30, label %cond.true25, !dbg !1520

cond.true25:                                      ; preds = %for.body
  %sub.ptr.rhs.cast = ptrtoint ptr %pv.0281 to i64, !dbg !1521
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1521
  %call26 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 44) #8, !dbg !1521
  %cond28 = select i1 %call26, i32 0, i32 -8161, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %readsize, metadata !1483, metadata !DIExpression(DW_OP_deref)), !dbg !1494
  %call29 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %pv.0281, i64 noundef %sub.ptr.sub, ptr noundef nonnull %readsize, i32 noundef %cond28) #8, !dbg !1521
  br label %cond.end32, !dbg !1520

cond.false30:                                     ; preds = %for.body
  %4 = load i8, ptr %pv.0281, align 1, !dbg !1522
  %conv31 = zext i8 %4 to i64, !dbg !1523
  br label %cond.end32, !dbg !1520

cond.end32:                                       ; preds = %cond.false30, %cond.true25
  %cond33 = phi i64 [ %call29, %cond.true25 ], [ %conv31, %cond.false30 ], !dbg !1520
  call void @llvm.dbg.value(metadata i64 %cond33, metadata !1487, metadata !DIExpression()), !dbg !1524
  %conv34 = trunc i64 %cond33 to i32, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %cond33, metadata !1492, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1524
  %cmp38 = icmp ult i64 %cond33, 256, !dbg !1526
  %or.cond272 = and i1 %tobool41.not, %cmp38, !dbg !1528
  %cmp43 = icmp ult i64 %cond33, 128
  %or.cond273 = or i1 %tobool47.not, %cmp43
  %or.cond286 = and i1 %or.cond272, %or.cond273, !dbg !1528
  br i1 %or.cond286, label %if.else65, label %if.then48, !dbg !1528

if.then48:                                        ; preds = %cond.end32
  br i1 %tobool50.not, label %if.else, label %if.then51, !dbg !1529

if.then51:                                        ; preds = %if.then48
  %call52 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %octbuf, i64 noundef 32, ptr noundef nonnull @.str.1, i64 noundef %cond33) #8, !dbg !1531
  %conv53 = sext i32 %call52 to i64, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %conv53, metadata !1482, metadata !DIExpression()), !dbg !1494
  br label %if.end155, !dbg !1533

if.else:                                          ; preds = %if.then48
  %call62 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %octbuf, i64 noundef 32, ptr noundef nonnull %cond60, i32 noundef %3, i64 noundef %cond33) #8, !dbg !1534
  %conv63 = sext i32 %call62 to i64, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %conv63, metadata !1482, metadata !DIExpression()), !dbg !1494
  br label %if.end155

if.else65:                                        ; preds = %cond.end32
  br i1 %tobool67.not, label %if.else69, label %if.end155, !dbg !1535

if.else69:                                        ; preds = %if.else65
  %conv70 = and i32 %conv34, 255, !dbg !1536
  %5 = trunc i64 %cond33 to i8, !dbg !1540
  %cmp72 = icmp eq i8 %spec.select, %5, !dbg !1540
  %cmp77 = icmp eq i8 %conv, %5
  %or.cond275 = or i1 %cmp72, %cmp77, !dbg !1541
  br i1 %or.cond275, label %if.then84, label %lor.lhs.false79, !dbg !1541

lor.lhs.false79:                                  ; preds = %if.else69
  %arrayidx80 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %cond33, !dbg !1542
  %6 = load i32, ptr %arrayidx80, align 4, !dbg !1542
  %and81 = and i32 %6, 16448, !dbg !1542
  %cmp82 = icmp eq i32 %and81, 16448, !dbg !1542
  br i1 %cmp82, label %if.end155, label %if.then84, !dbg !1543

if.then84:                                        ; preds = %lor.lhs.false79, %if.else69
  call void @llvm.dbg.value(metadata i64 2, metadata !1482, metadata !DIExpression()), !dbg !1494
  switch i8 %5, label %sw.default [
    i8 92, label %sw.bb
    i8 37, label %sw.bb
    i8 11, label %sw.bb94
    i8 9, label %sw.bb96
    i8 13, label %sw.bb98
    i8 10, label %sw.bb100
    i8 12, label %sw.bb102
    i8 34, label %sw.bb104
  ], !dbg !1544

sw.bb:                                            ; preds = %if.then84, %if.then84
  br i1 %cmp77, label %if.then90, label %if.end155, !dbg !1546

if.then90:                                        ; preds = %sw.bb
  store i8 %conv, ptr %arrayidx109, align 1, !dbg !1548
  br label %if.end155, !dbg !1551

sw.bb94:                                          ; preds = %if.then84
  store i8 118, ptr %arrayidx109, align 1, !dbg !1552
  br label %if.end155, !dbg !1553

sw.bb96:                                          ; preds = %if.then84
  store i8 116, ptr %arrayidx109, align 1, !dbg !1554
  br label %if.end155, !dbg !1555

sw.bb98:                                          ; preds = %if.then84
  store i8 114, ptr %arrayidx109, align 1, !dbg !1556
  br label %if.end155, !dbg !1557

sw.bb100:                                         ; preds = %if.then84
  store i8 110, ptr %arrayidx109, align 1, !dbg !1558
  br label %if.end155, !dbg !1559

sw.bb102:                                         ; preds = %if.then84
  store i8 102, ptr %arrayidx109, align 1, !dbg !1560
  br label %if.end155, !dbg !1561

sw.bb104:                                         ; preds = %if.then84
  br i1 %cmp106, label %if.then108, label %if.end155, !dbg !1562

if.then108:                                       ; preds = %sw.bb104
  store i8 34, ptr %arrayidx109, align 1, !dbg !1563
  br label %if.end155, !dbg !1565

sw.default:                                       ; preds = %if.then84
  %cmp116 = icmp ne i32 %conv70, 0
  %or.cond = select i1 %tobool56.not, i1 %cmp116, i1 false, !dbg !1566
  br i1 %or.cond, label %if.then118, label %if.else126, !dbg !1566

if.then118:                                       ; preds = %sw.default
  %call124 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %octbuf, i64 noundef 32, ptr noundef nonnull %cond122, i32 noundef %3, i64 noundef %cond33) #8, !dbg !1568
  %conv125 = sext i32 %call124 to i64, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %conv125, metadata !1482, metadata !DIExpression()), !dbg !1494
  br label %if.end155, !dbg !1570

if.else126:                                       ; preds = %sw.default
  %7 = load i64, ptr %readsize, align 8, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %7, metadata !1483, metadata !DIExpression()), !dbg !1494
  %add.ptr127 = getelementptr inbounds i8, ptr %pv.0281, i64 %7, !dbg !1573
  %cmp128 = icmp ult ptr %add.ptr127, %add.ptr, !dbg !1574
  br i1 %cmp128, label %land.lhs.true130, label %if.else144, !dbg !1575

land.lhs.true130:                                 ; preds = %if.else126
  %8 = load i8, ptr %add.ptr127, align 1, !dbg !1576
  %idxprom132 = zext i8 %8 to i64, !dbg !1576
  %arrayidx133 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom132, !dbg !1576
  %9 = load i32, ptr %arrayidx133, align 4, !dbg !1576
  %and134 = and i32 %9, 2, !dbg !1576
  %tobool135.not = icmp eq i32 %and134, 0, !dbg !1576
  br i1 %tobool135.not, label %if.else144, label %if.then138, !dbg !1577

if.then138:                                       ; preds = %land.lhs.true130
  %call142 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %octbuf, i64 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %3, i32 noundef %conv70) #8, !dbg !1578
  %conv143 = sext i32 %call142 to i64, !dbg !1578
  call void @llvm.dbg.value(metadata i64 %conv143, metadata !1482, metadata !DIExpression()), !dbg !1494
  br label %if.end155, !dbg !1579

if.else144:                                       ; preds = %land.lhs.true130, %if.else126
  %call148 = call i32 (ptr, i64, ptr, ...) @Perl_my_snprintf(ptr noundef nonnull %octbuf, i64 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %3, i32 noundef %conv70) #8, !dbg !1580
  %conv149 = sext i32 %call148 to i64, !dbg !1580
  call void @llvm.dbg.value(metadata i64 %conv149, metadata !1482, metadata !DIExpression()), !dbg !1494
  br label %if.end155

if.end155:                                        ; preds = %lor.lhs.false79, %sw.bb104, %sw.bb, %if.else65, %sw.bb94, %sw.bb96, %sw.bb98, %sw.bb100, %sw.bb102, %if.then90, %if.then108, %if.then138, %if.else144, %if.then118, %if.then51, %if.else
  %chsize.0 = phi i64 [ %conv53, %if.then51 ], [ %conv63, %if.else ], [ %conv125, %if.then118 ], [ %conv143, %if.then138 ], [ %conv149, %if.else144 ], [ 2, %if.then108 ], [ 2, %sw.bb102 ], [ 2, %sw.bb100 ], [ 2, %sw.bb98 ], [ 2, %sw.bb96 ], [ 2, %sw.bb94 ], [ 2, %if.then90 ], [ 1, %if.else65 ], [ 1, %sw.bb ], [ 1, %sw.bb104 ], [ 1, %lor.lhs.false79 ], !dbg !1581
  call void @llvm.dbg.value(metadata i64 %chsize.0, metadata !1482, metadata !DIExpression()), !dbg !1494
  %add = add i64 %chsize.0, %wrote.0282
  %cmp158 = icmp ugt i64 %add, %max
  %or.cond276 = select i1 %tobool20.not.not, i1 %cmp158, i1 false, !dbg !1582
  br i1 %or.cond276, label %for.end, label %if.else161, !dbg !1582

if.else161:                                       ; preds = %if.end155
  %cmp162 = icmp ugt i64 %chsize.0, 1, !dbg !1584
  br i1 %cmp162, label %if.then164, label %if.else170, !dbg !1586

if.then164:                                       ; preds = %if.else161
  br i1 %tobool10.not, label %if.end176, label %if.then166, !dbg !1587

if.then166:                                       ; preds = %if.then164
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %dsv, ptr noundef nonnull %octbuf, i64 noundef %chsize.0, i32 noundef 2) #8, !dbg !1589
  br label %if.end176, !dbg !1589

if.else170:                                       ; preds = %if.else161
  br i1 %tobool10.not, label %if.end176, label %if.then172, !dbg !1591

if.then172:                                       ; preds = %if.else170
  %conv173 = and i32 %conv34, 255, !dbg !1593
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %dsv, ptr noundef nonnull @.str.6, i32 noundef %conv173) #8, !dbg !1595
  br label %if.end176, !dbg !1595

if.end176:                                        ; preds = %if.else170, %if.then172, %if.then164, %if.then166
  %chsize.0.pn = phi i64 [ %chsize.0, %if.then166 ], [ %chsize.0, %if.then164 ], [ 1, %if.then172 ], [ 1, %if.else170 ]
  call void @llvm.dbg.value(metadata !DIArgList(i64 %wrote.0282, i64 %chsize.0.pn), metadata !1481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1494
  br i1 %tobool50.not, label %for.inc, label %for.end, !dbg !1596

for.inc:                                          ; preds = %if.end176
  %wrote.1 = add i64 %chsize.0.pn, %wrote.0282, !dbg !1597
  call void @llvm.dbg.value(metadata !DIArgList(i64 %wrote.0282, i64 %chsize.0.pn), metadata !1481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value)), !dbg !1494
  %10 = load i64, ptr %readsize, align 8, !dbg !1598
  call void @llvm.dbg.value(metadata i64 %10, metadata !1483, metadata !DIExpression()), !dbg !1494
  %add.ptr182 = getelementptr inbounds i8, ptr %pv.0281, i64 %10, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %wrote.1, metadata !1481, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata ptr %add.ptr182, metadata !1485, metadata !DIExpression()), !dbg !1494
  %cmp = icmp ult ptr %add.ptr182, %add.ptr, !dbg !1517
  br i1 %cmp, label %land.rhs, label %for.end, !dbg !1518, !llvm.loop !1600

for.end:                                          ; preds = %for.inc, %land.rhs, %if.end155, %if.end176, %if.end18
  %pv.0.lcssa = phi ptr [ %str, %if.end18 ], [ %str, %if.end176 ], [ %pv.0281, %if.end155 ], [ %pv.0281, %land.rhs ], [ %add.ptr182, %for.inc ], !dbg !1494
  %cmp183.not = icmp eq ptr %escaped, null, !dbg !1605
  br i1 %cmp183.not, label %if.end189, label %if.then185, !dbg !1607

if.then185:                                       ; preds = %for.end
  %sub.ptr.lhs.cast186 = ptrtoint ptr %pv.0.lcssa to i64, !dbg !1608
  %sub.ptr.rhs.cast187 = ptrtoint ptr %str to i64, !dbg !1608
  %sub.ptr.sub188 = sub i64 %sub.ptr.lhs.cast186, %sub.ptr.rhs.cast187, !dbg !1608
  store i64 %sub.ptr.sub188, ptr %escaped, align 8, !dbg !1609
  br label %if.end189, !dbg !1610

if.end189:                                        ; preds = %if.then185, %for.end
  br i1 %tobool10.not, label %cond.end193, label %cond.true191, !dbg !1611

cond.true191:                                     ; preds = %if.end189
  %sv_u = getelementptr inbounds %struct.sv, ptr %dsv, i64 0, i32 3, !dbg !1612
  %11 = load ptr, ptr %sv_u, align 8, !dbg !1612
  br label %cond.end193, !dbg !1611

cond.end193:                                      ; preds = %if.end189, %cond.true191
  %cond194 = phi ptr [ %11, %cond.true191 ], [ null, %if.end189 ], !dbg !1611
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %readsize) #8, !dbg !1613
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %octbuf) #8, !dbg !1613
  ret ptr %cond194, !dbg !1614
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare !dbg !1615 void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1620 zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !1624 i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !1627 zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #4

declare !dbg !1630 i32 @Perl_my_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !1634 void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !1637 void @Perl_sv_catpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pv_pretty(ptr noundef %dsv, ptr noundef %str, i64 noundef %count, i64 noundef %max, ptr noundef %start_color, ptr noundef %end_color, i32 noundef %flags) local_unnamed_addr #0 !dbg !1640 {
entry:
  %escaped = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %dsv, metadata !1644, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata ptr %str, metadata !1645, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %count, metadata !1646, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i64 %max, metadata !1647, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata ptr %start_color, metadata !1648, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata ptr %end_color, metadata !1649, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1650, metadata !DIExpression()), !dbg !1655
  %and = and i32 %flags, 1, !dbg !1656
  %tobool.not = icmp eq i32 %and, 0, !dbg !1656
  br i1 %tobool.not, label %cond.false, label %cond.end, !dbg !1657

cond.false:                                       ; preds = %entry
  %and1 = and i32 %flags, 4, !dbg !1658
  %tobool2.not = icmp eq i32 %and1, 0, !dbg !1659
  %cond = select i1 %tobool2.not, ptr null, ptr @.str.8, !dbg !1659
  br label %cond.end, !dbg !1657

cond.end:                                         ; preds = %entry, %cond.false
  %cond3 = phi ptr [ %cond, %cond.false ], [ @.str.7, %entry ], !dbg !1657
  call void @llvm.dbg.value(metadata ptr %cond3, metadata !1651, metadata !DIExpression()), !dbg !1655
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %escaped) #8, !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1653, metadata !DIExpression()), !dbg !1655
  %and4 = and i32 %flags, 16384, !dbg !1661
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !1661
  br i1 %tobool5.not, label %if.then, label %if.end, !dbg !1663

if.then:                                          ; preds = %cond.end
  tail call void @Perl_sv_setpvn(ptr noundef %dsv, ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !1664
  br label %if.end, !dbg !1666

if.end:                                           ; preds = %if.then, %cond.end
  %0 = load ptr, ptr %dsv, align 8, !dbg !1667
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %0, i64 0, i32 2, !dbg !1667
  %1 = load i64, ptr %xpv_cur, align 8, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %1, metadata !1654, metadata !DIExpression()), !dbg !1655
  %tobool6.not = icmp eq ptr %cond3, null, !dbg !1668
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !1670

if.then7:                                         ; preds = %if.end
  %2 = load i8, ptr %cond3, align 1, !dbg !1671
  %conv = zext i8 %2 to i32, !dbg !1671
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %dsv, ptr noundef nonnull @.str.6, i32 noundef %conv) #8, !dbg !1672
  br label %if.end8, !dbg !1672

if.end8:                                          ; preds = %if.then7, %if.end
  %cmp.not = icmp eq ptr %start_color, null, !dbg !1673
  br i1 %cmp.not, label %if.end11, label %if.then10, !dbg !1675

if.then10:                                        ; preds = %if.end8
  tail call void @Perl_sv_catpv(ptr noundef nonnull %dsv, ptr noundef nonnull %start_color) #8, !dbg !1676
  br label %if.end11, !dbg !1676

if.end11:                                         ; preds = %if.then10, %if.end8
  %and12 = and i32 %flags, 8, !dbg !1677
  %tobool13.not = icmp eq i32 %and12, 0, !dbg !1677
  br i1 %tobool13.not, label %if.end25, label %if.then14, !dbg !1679

if.then14:                                        ; preds = %if.end11
  %spec.select = select i1 %tobool6.not, i64 0, i64 2, !dbg !1680
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1653, metadata !DIExpression()), !dbg !1655
  %sub = sub i64 %max, %spec.select, !dbg !1682
  call void @llvm.dbg.value(metadata ptr %escaped, metadata !1652, metadata !DIExpression(DW_OP_deref)), !dbg !1655
  %call = call ptr @Perl_pv_escape(ptr noundef null, ptr noundef %str, i64 noundef %count, i64 noundef %sub, ptr noundef nonnull %escaped, i32 noundef %flags), !dbg !1682
  %and18 = and i32 %flags, 2, !dbg !1683
  %tobool19.not = icmp ne i32 %and18, 0, !dbg !1683
  %3 = load i64, ptr %escaped, align 8
  %cmp20 = icmp ult i64 %3, %count
  %or.cond = select i1 %tobool19.not, i1 %cmp20, i1 false, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %3, metadata !1652, metadata !DIExpression()), !dbg !1655
  %add23 = add nuw nsw i64 %spec.select, 3
  %spec.select87 = select i1 %or.cond, i64 %add23, i64 %spec.select, !dbg !1685
  br label %if.end25, !dbg !1685

if.end25:                                         ; preds = %if.then14, %if.end11
  %max_adjust.1 = phi i64 [ 0, %if.end11 ], [ %spec.select87, %if.then14 ], !dbg !1655
  call void @llvm.dbg.value(metadata i64 %max_adjust.1, metadata !1653, metadata !DIExpression()), !dbg !1655
  %sub26 = sub i64 %max, %max_adjust.1, !dbg !1686
  %or = or i32 %flags, 16384, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %escaped, metadata !1652, metadata !DIExpression(DW_OP_deref)), !dbg !1655
  %call27 = call ptr @Perl_pv_escape(ptr noundef nonnull %dsv, ptr noundef %str, i64 noundef %count, i64 noundef %sub26, ptr noundef nonnull %escaped, i32 noundef %or), !dbg !1686
  %cmp28.not = icmp eq ptr %end_color, null, !dbg !1687
  br i1 %cmp28.not, label %if.end31, label %if.then30, !dbg !1689

if.then30:                                        ; preds = %if.end25
  call void @Perl_sv_catpv(ptr noundef nonnull %dsv, ptr noundef nonnull %end_color) #8, !dbg !1690
  br label %if.end31, !dbg !1690

if.end31:                                         ; preds = %if.then30, %if.end25
  br i1 %tobool6.not, label %if.end36, label %if.then33, !dbg !1691

if.then33:                                        ; preds = %if.end31
  %arrayidx34 = getelementptr inbounds i8, ptr %cond3, i64 1, !dbg !1692
  %4 = load i8, ptr %arrayidx34, align 1, !dbg !1692
  %conv35 = zext i8 %4 to i32, !dbg !1692
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %dsv, ptr noundef nonnull @.str.6, i32 noundef %conv35) #8, !dbg !1694
  br label %if.end36, !dbg !1694

if.end36:                                         ; preds = %if.then33, %if.end31
  %and37 = and i32 %flags, 2, !dbg !1695
  %tobool38.not = icmp ne i32 %and37, 0, !dbg !1695
  %5 = load i64, ptr %escaped, align 8
  %cmp40 = icmp ult i64 %5, %count
  %or.cond86 = select i1 %tobool38.not, i1 %cmp40, i1 false, !dbg !1697
  call void @llvm.dbg.value(metadata i64 %5, metadata !1652, metadata !DIExpression()), !dbg !1655
  br i1 %or.cond86, label %if.then42, label %if.end43, !dbg !1697

if.then42:                                        ; preds = %if.end36
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %dsv, ptr noundef nonnull @.str.9, i64 noundef 3, i32 noundef 2) #8, !dbg !1698
  br label %if.end43, !dbg !1698

if.end43:                                         ; preds = %if.then42, %if.end36
  br i1 %tobool13.not, label %if.end52, label %while.cond.preheader, !dbg !1699

while.cond.preheader:                             ; preds = %if.end43
  %6 = load ptr, ptr %dsv, align 8, !dbg !1700
  %xpv_cur4888 = getelementptr inbounds %struct.xpv, ptr %6, i64 0, i32 2, !dbg !1700
  %7 = load i64, ptr %xpv_cur4888, align 8, !dbg !1700
  %sub4989 = sub i64 %7, %1, !dbg !1703
  %cmp5090 = icmp ult i64 %sub4989, %max, !dbg !1704
  br i1 %cmp5090, label %while.body, label %if.end52, !dbg !1705

while.body:                                       ; preds = %while.cond.preheader, %while.body
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %dsv, ptr noundef nonnull @.str.10, i64 noundef 1, i32 noundef 2) #8, !dbg !1706
  %8 = load ptr, ptr %dsv, align 8, !dbg !1700
  %xpv_cur48 = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2, !dbg !1700
  %9 = load i64, ptr %xpv_cur48, align 8, !dbg !1700
  %sub49 = sub i64 %9, %1, !dbg !1703
  %cmp50 = icmp ult i64 %sub49, %max, !dbg !1704
  br i1 %cmp50, label %while.body, label %if.end52, !dbg !1705, !llvm.loop !1707

if.end52:                                         ; preds = %while.body, %while.cond.preheader, %if.end43
  %sv_u = getelementptr inbounds %struct.sv, ptr %dsv, i64 0, i32 3, !dbg !1708
  %10 = load ptr, ptr %sv_u, align 8, !dbg !1708
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %escaped) #8, !dbg !1709
  ret ptr %10, !dbg !1710
}

declare !dbg !1711 void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pv_display(ptr noundef %dsv, ptr noundef %pv, i64 noundef %cur, i64 noundef %len, i64 noundef %pvlim) local_unnamed_addr #0 !dbg !1714 {
entry:
  %escaped.i = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %dsv, metadata !1718, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata ptr %pv, metadata !1719, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %cur, metadata !1720, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %len, metadata !1721, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i64 %pvlim, metadata !1722, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata ptr %dsv, metadata !1644, metadata !DIExpression()) #8, !dbg !1724
  call void @llvm.dbg.value(metadata ptr %pv, metadata !1645, metadata !DIExpression()) #8, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %cur, metadata !1646, metadata !DIExpression()) #8, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %pvlim, metadata !1647, metadata !DIExpression()) #8, !dbg !1724
  call void @llvm.dbg.value(metadata ptr null, metadata !1648, metadata !DIExpression()) #8, !dbg !1724
  call void @llvm.dbg.value(metadata ptr null, metadata !1649, metadata !DIExpression()) #8, !dbg !1724
  call void @llvm.dbg.value(metadata i32 3, metadata !1650, metadata !DIExpression()) #8, !dbg !1724
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !1651, metadata !DIExpression()) #8, !dbg !1724
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %escaped.i) #8, !dbg !1726
  call void @llvm.dbg.value(metadata i64 0, metadata !1653, metadata !DIExpression()) #8, !dbg !1724
  tail call void @Perl_sv_setpvn(ptr noundef %dsv, ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !1727
  call void @llvm.dbg.value(metadata i64 undef, metadata !1654, metadata !DIExpression()) #8, !dbg !1724
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %dsv, ptr noundef nonnull @.str.6, i32 noundef 34) #8, !dbg !1728
  call void @llvm.dbg.value(metadata i64 0, metadata !1653, metadata !DIExpression()) #8, !dbg !1724
  call void @llvm.dbg.value(metadata ptr %escaped.i, metadata !1652, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1724
  %call27.i = call ptr @Perl_pv_escape(ptr noundef nonnull %dsv, ptr noundef %pv, i64 noundef %cur, i64 noundef %pvlim, ptr noundef nonnull %escaped.i, i32 noundef 16387) #8, !dbg !1729
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %dsv, ptr noundef nonnull @.str.6, i32 noundef 34) #8, !dbg !1730
  %0 = load i64, ptr %escaped.i, align 8
  %cmp40.i = icmp ult i64 %0, %cur
  call void @llvm.dbg.value(metadata i64 %0, metadata !1652, metadata !DIExpression()) #8, !dbg !1724
  br i1 %cmp40.i, label %if.then42.i, label %Perl_pv_pretty.exit, !dbg !1731

if.then42.i:                                      ; preds = %entry
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %dsv, ptr noundef nonnull @.str.9, i64 noundef 3, i32 noundef 2) #8, !dbg !1732
  br label %Perl_pv_pretty.exit, !dbg !1732

Perl_pv_pretty.exit:                              ; preds = %entry, %if.then42.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %escaped.i) #8, !dbg !1733
  %cmp = icmp ugt i64 %len, %cur, !dbg !1734
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1736

land.lhs.true:                                    ; preds = %Perl_pv_pretty.exit
  %arrayidx = getelementptr inbounds i8, ptr %pv, i64 %cur, !dbg !1737
  %1 = load i8, ptr %arrayidx, align 1, !dbg !1737
  %cmp1 = icmp eq i8 %1, 0, !dbg !1738
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1739

if.then:                                          ; preds = %land.lhs.true
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %dsv, ptr noundef nonnull @.str.11, i64 noundef 2, i32 noundef 2) #8, !dbg !1740
  br label %if.end, !dbg !1740

if.end:                                           ; preds = %if.then, %land.lhs.true, %Perl_pv_pretty.exit
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %dsv, i64 0, i32 3, !dbg !1741
  %2 = load ptr, ptr %sv_u.i, align 8, !dbg !1742
  ret ptr %2, !dbg !1743
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_sv_peek(ptr noundef %sv) local_unnamed_addr #0 !dbg !1744 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1748, metadata !DIExpression()), !dbg !1774
  %call = tail call ptr @Perl_sv_newmortal() #8, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %call, metadata !1749, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 0, metadata !1750, metadata !DIExpression()), !dbg !1774
  tail call void @Perl_sv_setpvn(ptr noundef %call, ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !1776
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1748, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 0, metadata !1750, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.label(metadata !1772), !dbg !1777
  %tobool434.not = icmp eq ptr %sv, null, !dbg !1778
  br i1 %tobool434.not, label %if.then, label %if.else, !dbg !1779

if.then:                                          ; preds = %if.end142, %entry
  %unref.0.lcssa = phi i32 [ 0, %entry ], [ %unref.1, %if.end142 ], !dbg !1780
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.12) #8, !dbg !1781
  br label %finish, !dbg !1783

if.else:                                          ; preds = %entry, %if.end142
  %sv.addr.0438 = phi ptr [ %28, %if.end142 ], [ %sv, %entry ]
  %unref.0435 = phi i32 [ %unref.1, %if.end142 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata ptr %sv.addr.0438, metadata !1748, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %unref.0435, metadata !1750, metadata !DIExpression()), !dbg !1774
  %cmp = icmp eq ptr %sv.addr.0438, inttoptr (i64 1431655765 to ptr), !dbg !1784
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !1785

lor.lhs.false:                                    ; preds = %if.else
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv.addr.0438, i64 0, i32 2, !dbg !1786
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1786
  %sext.mask = and i32 %0, 255, !dbg !1787
  %cmp2 = icmp eq i32 %sext.mask, 85, !dbg !1787
  br i1 %cmp2, label %if.then4, label %if.else5, !dbg !1788

if.then4:                                         ; preds = %lor.lhs.false, %if.else
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.13) #8, !dbg !1789
  br label %finish, !dbg !1791

if.else5:                                         ; preds = %lor.lhs.false
  %cmp6 = icmp eq ptr %sv.addr.0438, @PL_sv_undef, !dbg !1792
  %cmp9 = icmp eq ptr %sv.addr.0438, @PL_sv_no
  %or.cond = or i1 %cmp6, %cmp9, !dbg !1793
  %cmp12 = icmp eq ptr %sv.addr.0438, @PL_sv_yes
  %or.cond298 = or i1 %cmp12, %or.cond, !dbg !1793
  %cmp15 = icmp eq ptr %sv.addr.0438, @PL_sv_placeholder
  %or.cond299 = or i1 %cmp15, %or.cond298, !dbg !1793
  br i1 %or.cond299, label %if.then17, label %if.else93, !dbg !1793

if.then17:                                        ; preds = %if.else5
  br i1 %cmp6, label %if.then20, label %if.else28, !dbg !1794

if.then20:                                        ; preds = %if.then17
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.14) #8, !dbg !1796
  %1 = load i32, ptr %sv_flags, align 4, !dbg !1799
  %and22 = and i32 %1, 49348352, !dbg !1801
  %tobool23.not = icmp ne i32 %and22, 0, !dbg !1801
  %and25 = and i32 %1, 134283264
  %tobool26.not = icmp eq i32 %and25, 0
  %or.cond407 = or i1 %tobool23.not, %tobool26.not, !dbg !1802
  br i1 %or.cond407, label %if.end92, label %finish, !dbg !1802

if.else28:                                        ; preds = %if.then17
  br i1 %cmp9, label %if.then31, label %if.else48, !dbg !1803

if.then31:                                        ; preds = %if.else28
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.15) #8, !dbg !1804
  %2 = load i32, ptr %sv_flags, align 4, !dbg !1807
  %3 = and i32 %2, 183528960, !dbg !1809
  %4 = icmp eq i32 %3, 134243840, !dbg !1809
  br i1 %4, label %land.lhs.true39, label %if.end92, !dbg !1809

land.lhs.true39:                                  ; preds = %if.then31
  %5 = load ptr, ptr @PL_sv_no, align 8, !dbg !1810
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %5, i64 0, i32 2, !dbg !1810
  %6 = load i64, ptr %xpv_cur, align 8, !dbg !1810
  %cmp40 = icmp eq i64 %6, 0, !dbg !1811
  br i1 %cmp40, label %land.lhs.true42, label %if.end92, !dbg !1812

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %5, i64 0, i32 5, !dbg !1813
  %7 = load double, ptr %xnv_u, align 8, !dbg !1813
  %cmp44 = fcmp oeq double %7, 0.000000e+00, !dbg !1814
  br i1 %cmp44, label %finish, label %if.end92, !dbg !1815

if.else48:                                        ; preds = %if.else28
  br i1 %cmp12, label %if.then51, label %if.else80, !dbg !1816

if.then51:                                        ; preds = %if.else48
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.16) #8, !dbg !1817
  %8 = load i32, ptr %sv_flags, align 4, !dbg !1820
  %9 = and i32 %8, 183528960, !dbg !1822
  %10 = icmp eq i32 %9, 134243840, !dbg !1822
  br i1 %10, label %land.lhs.true60, label %if.end92, !dbg !1822

land.lhs.true60:                                  ; preds = %if.then51
  %11 = load ptr, ptr @PL_sv_yes, align 8, !dbg !1823
  %xpv_cur62 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2, !dbg !1823
  %12 = load i64, ptr %xpv_cur62, align 8, !dbg !1823
  %cmp63 = icmp eq i64 %12, 1, !dbg !1824
  br i1 %cmp63, label %land.lhs.true65, label %if.end92, !dbg !1825

land.lhs.true65:                                  ; preds = %land.lhs.true60
  %13 = load ptr, ptr getelementptr inbounds (%struct.sv, ptr @PL_sv_yes, i64 0, i32 3), align 8, !dbg !1826
  %tobool66.not = icmp eq ptr %13, null, !dbg !1826
  br i1 %tobool66.not, label %if.end92, label %land.lhs.true67, !dbg !1827

land.lhs.true67:                                  ; preds = %land.lhs.true65
  %14 = load i8, ptr %13, align 1, !dbg !1828
  %cmp71 = icmp eq i8 %14, 49, !dbg !1829
  br i1 %cmp71, label %land.lhs.true73, label %if.end92, !dbg !1830

land.lhs.true73:                                  ; preds = %land.lhs.true67
  %xnv_u75 = getelementptr inbounds %struct.xpvnv, ptr %11, i64 0, i32 5, !dbg !1831
  %15 = load double, ptr %xnv_u75, align 8, !dbg !1831
  %cmp76 = fcmp oeq double %15, 1.000000e+00, !dbg !1832
  br i1 %cmp76, label %finish, label %if.end92, !dbg !1833

if.else80:                                        ; preds = %if.else48
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.17) #8, !dbg !1834
  %16 = load i32, ptr %sv_flags, align 4, !dbg !1836
  %and82 = and i32 %16, 49348352, !dbg !1838
  %tobool83.not = icmp ne i32 %and82, 0, !dbg !1838
  %and86 = and i32 %16, 134283264
  %tobool87.not = icmp eq i32 %and86, 0
  %or.cond410 = or i1 %tobool83.not, %tobool87.not, !dbg !1839
  br i1 %or.cond410, label %if.end92, label %finish, !dbg !1839

if.end92:                                         ; preds = %land.lhs.true42, %land.lhs.true39, %if.then31, %if.else80, %if.then51, %land.lhs.true60, %land.lhs.true65, %land.lhs.true67, %land.lhs.true73, %if.then20
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.18) #8, !dbg !1840
  br label %if.end123, !dbg !1841

if.else93:                                        ; preds = %if.else5
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %sv.addr.0438, i64 0, i32 1, !dbg !1842
  %17 = load i32, ptr %sv_refcnt, align 8, !dbg !1842
  %cmp94 = icmp eq i32 %17, 0, !dbg !1843
  br i1 %cmp94, label %if.then96, label %if.else97, !dbg !1844

if.then96:                                        ; preds = %if.else93
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.19) #8, !dbg !1845
  %inc = add nsw i32 %unref.0435, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1750, metadata !DIExpression()), !dbg !1774
  br label %if.end123, !dbg !1848

if.else97:                                        ; preds = %if.else93
  %18 = load volatile i32, ptr @PL_debug, align 4, !dbg !1849
  %and98 = and i32 %18, 262144, !dbg !1849
  %tobool99.not = icmp eq i32 %and98, 0, !dbg !1849
  br i1 %tobool99.not, label %if.end123, label %if.then100, !dbg !1850

if.then100:                                       ; preds = %if.else97
  call void @llvm.dbg.value(metadata i32 0, metadata !1752, metadata !DIExpression()), !dbg !1851
  %19 = load i64, ptr @PL_tmps_ix, align 8, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %19, metadata !1759, metadata !DIExpression()), !dbg !1851
  %cmp101431 = icmp sgt i64 %19, -1, !dbg !1854
  br i1 %cmp101431, label %for.body.lr.ph, label %for.end.thread, !dbg !1856

for.body.lr.ph:                                   ; preds = %if.then100
  %20 = load ptr, ptr @PL_tmps_stack, align 8
  br label %for.body, !dbg !1856

for.cond:                                         ; preds = %for.body
  %dec = add nsw i64 %ix.0432, -1, !dbg !1857
  call void @llvm.dbg.value(metadata i64 undef, metadata !1759, metadata !DIExpression()), !dbg !1851
  %cmp101 = icmp sgt i64 %ix.0432, 0, !dbg !1854
  br i1 %cmp101, label %for.body, label %for.end.thread, !dbg !1856, !llvm.loop !1858

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %ix.0432 = phi i64 [ %19, %for.body.lr.ph ], [ %dec, %for.cond ]
  call void @llvm.dbg.value(metadata i64 %ix.0432, metadata !1759, metadata !DIExpression()), !dbg !1851
  %arrayidx = getelementptr inbounds ptr, ptr %20, i64 %ix.0432, !dbg !1860
  %21 = load ptr, ptr %arrayidx, align 8, !dbg !1860
  %cmp103 = icmp eq ptr %21, %sv.addr.0438, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %ix.0432, metadata !1759, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1851
  br i1 %cmp103, label %for.end, label %for.cond, !dbg !1864

for.end:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !1752, metadata !DIExpression()), !dbg !1851
  %cmp108 = icmp ugt i32 %17, 1, !dbg !1865
  br i1 %cmp108, label %if.then110, label %if.then116, !dbg !1867

for.end.thread:                                   ; preds = %for.cond, %if.then100
  call void @llvm.dbg.value(metadata i32 undef, metadata !1752, metadata !DIExpression()), !dbg !1851
  %cmp108411 = icmp ugt i32 %17, 1, !dbg !1865
  br i1 %cmp108411, label %if.then110, label %if.end123, !dbg !1867

if.then110:                                       ; preds = %for.end.thread, %for.end
  %cond = phi ptr [ @.str, %for.end.thread ], [ @.str.21, %for.end ], !dbg !1868
  %conv112 = zext i32 %17 to i64, !dbg !1868
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.20, i64 noundef %conv112, ptr noundef nonnull %cond) #8, !dbg !1869
  br label %if.end123, !dbg !1869

if.then116:                                       ; preds = %for.end
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.22) #8, !dbg !1870
  br label %if.end123, !dbg !1870

if.end123:                                        ; preds = %for.end.thread, %if.then110, %if.then116, %if.then96, %if.else97, %if.end92
  %unref.1 = phi i32 [ %unref.0435, %if.end92 ], [ %inc, %if.then96 ], [ %unref.0435, %if.else97 ], [ %unref.0435, %if.then116 ], [ %unref.0435, %if.then110 ], [ %unref.0435, %for.end.thread ], !dbg !1774
  call void @llvm.dbg.value(metadata i32 %unref.1, metadata !1750, metadata !DIExpression()), !dbg !1774
  %22 = load i32, ptr %sv_flags, align 4, !dbg !1872
  %and125 = and i32 %22, 2048, !dbg !1872
  %tobool126.not = icmp eq i32 %and125, 0, !dbg !1872
  br i1 %tobool126.not, label %if.end144, label %if.then127, !dbg !1874

if.then127:                                       ; preds = %if.end123
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.23) #8, !dbg !1875
  %23 = load ptr, ptr %call, align 8, !dbg !1877
  %xpv_cur129 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2, !dbg !1877
  %24 = load i64, ptr %xpv_cur129, align 8, !dbg !1877
  %conv130 = sext i32 %unref.1 to i64, !dbg !1879
  %add = add i64 %24, %conv130, !dbg !1880
  %cmp131 = icmp ugt i64 %add, 10, !dbg !1881
  br i1 %cmp131, label %do.body, label %if.end142, !dbg !1882

do.body:                                          ; preds = %if.then127
  %xpv_cur129.le = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2, !dbg !1877
  %add134 = add nsw i32 %unref.1, 3, !dbg !1883
  %conv135 = sext i32 %add134 to i64, !dbg !1883
  store i64 %conv135, ptr %xpv_cur129.le, align 8, !dbg !1883
  %sv_u138 = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 3, !dbg !1886
  %25 = load ptr, ptr %sv_u138, align 8, !dbg !1886
  %26 = load ptr, ptr %call, align 8, !dbg !1886
  %xpv_cur140 = getelementptr inbounds %struct.xpv, ptr %26, i64 0, i32 2, !dbg !1886
  %27 = load i64, ptr %xpv_cur140, align 8, !dbg !1886
  %add.ptr141 = getelementptr inbounds i8, ptr %25, i64 %27, !dbg !1886
  store i8 0, ptr %add.ptr141, align 1, !dbg !1887
  tail call void @Perl_sv_catpv(ptr noundef nonnull %call, ptr noundef nonnull @.str.9) #8, !dbg !1888
  br label %finish, !dbg !1889

if.end142:                                        ; preds = %if.then127
  %sv_u143 = getelementptr inbounds %struct.sv, ptr %sv.addr.0438, i64 0, i32 3, !dbg !1890
  %28 = load ptr, ptr %sv_u143, align 8, !dbg !1890
  call void @llvm.dbg.value(metadata ptr %28, metadata !1748, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %unref.1, metadata !1750, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.label(metadata !1772), !dbg !1777
  %tobool.not = icmp eq ptr %28, null, !dbg !1778
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !1779

if.end144:                                        ; preds = %if.end123
  %and146 = and i32 %22, 255, !dbg !1891
  call void @llvm.dbg.value(metadata i32 %and146, metadata !1751, metadata !DIExpression()), !dbg !1774
  %cmp147 = icmp eq i32 %and146, 13, !dbg !1892
  br i1 %cmp147, label %if.then149, label %if.else177, !dbg !1893

if.then149:                                       ; preds = %if.end144
  %call150 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !1894
  call void @llvm.dbg.value(metadata ptr %call150, metadata !1760, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata ptr %sv.addr.0438, metadata !1896, metadata !DIExpression()) #8, !dbg !1902
  %29 = load ptr, ptr %sv.addr.0438, align 8, !dbg !1904
  %xcv_flags.i = getelementptr inbounds %struct.xpvcv, ptr %29, i64 0, i32 12, !dbg !1904
  %30 = load i32, ptr %xcv_flags.i, align 4, !dbg !1904
  %and.i = and i32 %30, 32768, !dbg !1904
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !1904
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i, !dbg !1904

cond.true.i:                                      ; preds = %if.then149
  %call.i = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %sv.addr.0438) #8, !dbg !1905
  br label %S_CvGV.exit, !dbg !1904

cond.false.i:                                     ; preds = %if.then149
  %xcv_gv_u.i = getelementptr inbounds %struct.xpvcv, ptr %29, i64 0, i32 7, !dbg !1906
  %31 = load ptr, ptr %xcv_gv_u.i, align 8, !dbg !1907
  br label %S_CvGV.exit, !dbg !1904

S_CvGV.exit:                                      ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi ptr [ %call.i, %cond.true.i ], [ %31, %cond.false.i ], !dbg !1904
  call void @llvm.dbg.value(metadata ptr %cond.i, metadata !1763, metadata !DIExpression()), !dbg !1895
  %tobool152.not = icmp eq ptr %cond.i, null, !dbg !1908
  br i1 %tobool152.not, label %cond.end, label %cond.true, !dbg !1908

cond.true:                                        ; preds = %S_CvGV.exit
  %32 = load ptr, ptr %cond.i, align 8, !dbg !1909
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %32, i64 0, i32 4, !dbg !1909
  %33 = load ptr, ptr %xiv_u, align 8, !dbg !1909
  %hek_key = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 2, !dbg !1909
  %hek_len = getelementptr inbounds %struct.hek, ptr %33, i64 0, i32 1, !dbg !1909
  %34 = load i32, ptr %hek_len, align 4, !dbg !1909
  %conv156 = sext i32 %34 to i64, !dbg !1909
  %mul = mul nsw i32 %34, 17, !dbg !1909
  %add160 = add nsw i32 %mul, 1, !dbg !1909
  %conv161 = sext i32 %add160 to i64, !dbg !1909
  %add.ptr169 = getelementptr inbounds i8, ptr %hek_key, i64 %conv156, !dbg !1909
  %add.ptr170 = getelementptr inbounds i8, ptr %add.ptr169, i64 1, !dbg !1909
  %35 = load i8, ptr %add.ptr170, align 1, !dbg !1909
  %36 = and i8 %35, 1, !dbg !1909
  %37 = zext i8 %36 to i32, !dbg !1909
  %38 = shl nuw nsw i32 %37, 8, !dbg !1909
  %or = or i32 %38, 66560, !dbg !1909
  %call175 = tail call ptr @Perl_pv_escape(ptr noundef %call150, ptr noundef nonnull %hek_key, i64 noundef %conv156, i64 noundef %conv161, ptr noundef null, i32 noundef %or), !dbg !1909
  br label %cond.end, !dbg !1908

cond.end:                                         ; preds = %S_CvGV.exit, %cond.true
  %cond176 = phi ptr [ %call175, %cond.true ], [ @.str, %S_CvGV.exit ], !dbg !1908
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.24, ptr noundef %cond176) #8, !dbg !1910
  br label %finish

if.else177:                                       ; preds = %if.end144
  %cmp178 = icmp ult i32 %and146, 16, !dbg !1911
  br i1 %cmp178, label %if.then180, label %if.else186, !dbg !1913

if.then180:                                       ; preds = %if.else177
  %idxprom = zext i32 %and146 to i64, !dbg !1914
  %reltable.shift = shl i64 %idxprom, 2, !dbg !1914
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_sv_peek, i64 %reltable.shift), !dbg !1914
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %reltable.intrinsic) #8, !dbg !1914
  %cmp182 = icmp eq i32 %and146, 0, !dbg !1916
  br i1 %cmp182, label %finish, label %if.end188, !dbg !1918

if.else186:                                       ; preds = %if.else177
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.25) #8, !dbg !1919
  br label %finish, !dbg !1921

if.end188:                                        ; preds = %if.then180
  %39 = load i32, ptr %sv_flags, align 4, !dbg !1922
  %and190 = and i32 %39, 16384, !dbg !1922
  %tobool191.not = icmp eq i32 %and190, 0, !dbg !1922
  br i1 %tobool191.not, label %if.else245, label %if.then192, !dbg !1923

if.then192:                                       ; preds = %if.end188
  %sv_u193 = getelementptr inbounds %struct.sv, ptr %sv.addr.0438, i64 0, i32 3, !dbg !1924
  %40 = load ptr, ptr %sv_u193, align 8, !dbg !1924
  %tobool195.not = icmp eq ptr %40, null, !dbg !1924
  br i1 %tobool195.not, label %if.then196, label %if.else197, !dbg !1925

if.then196:                                       ; preds = %if.then192
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.26) #8, !dbg !1926
  br label %finish, !dbg !1926

if.else197:                                       ; preds = %if.then192
  %call199 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !1927
  call void @llvm.dbg.value(metadata ptr %call199, metadata !1764, metadata !DIExpression()), !dbg !1928
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.19) #8, !dbg !1929
  %41 = load i32, ptr %sv_flags, align 4, !dbg !1930
  %and201 = and i32 %41, 33554432, !dbg !1930
  %tobool202.not = icmp eq i32 %and201, 0, !dbg !1930
  br i1 %tobool202.not, label %if.end228, label %if.then208, !dbg !1931

if.then208:                                       ; preds = %if.else197
  %42 = load ptr, ptr %sv_u193, align 8, !dbg !1932
  %arrayidx211 = getelementptr inbounds i8, ptr %42, i64 -1, !dbg !1932
  %43 = load i8, ptr %arrayidx211, align 1, !dbg !1932
  %conv212 = zext i8 %43 to i64, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %conv212, metadata !1769, metadata !DIExpression()), !dbg !1936
  %tobool213.not = icmp eq i8 %43, 0, !dbg !1937
  br i1 %tobool213.not, label %if.then214, label %do.end223, !dbg !1932

if.then214:                                       ; preds = %if.then208
  %add.ptr218 = getelementptr inbounds i8, ptr %42, i64 -9, !dbg !1939
  %delta.0.copyload = load i64, ptr %add.ptr218, align 1, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %delta.0.copyload, metadata !1769, metadata !DIExpression()), !dbg !1936
  br label %do.end223, !dbg !1939

do.end223:                                        ; preds = %if.then208, %if.then214
  %delta.0 = phi i64 [ %conv212, %if.then208 ], [ %delta.0.copyload, %if.then214 ], !dbg !1941
  call void @llvm.dbg.value(metadata i64 %delta.0, metadata !1769, metadata !DIExpression()), !dbg !1936
  %idx.neg = sub i64 0, %delta.0, !dbg !1942
  %add.ptr226 = getelementptr inbounds i8, ptr %42, i64 %idx.neg, !dbg !1942
  %call227 = tail call ptr @Perl_pv_display(ptr noundef %call199, ptr noundef %add.ptr226, i64 noundef %delta.0, i64 noundef 0, i64 noundef 127), !dbg !1942
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.27, ptr noundef %call227) #8, !dbg !1943
  br label %if.end228, !dbg !1944

if.end228:                                        ; preds = %do.end223, %if.else197
  %44 = load ptr, ptr %sv_u193, align 8, !dbg !1945
  %45 = load ptr, ptr %sv.addr.0438, align 8, !dbg !1945
  %xpv_cur232 = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 2, !dbg !1945
  %46 = load i64, ptr %xpv_cur232, align 8, !dbg !1945
  %xpv_len_u = getelementptr inbounds %struct.xpv, ptr %45, i64 0, i32 3, !dbg !1945
  %47 = load i64, ptr %xpv_len_u, align 8, !dbg !1945
  %call234 = tail call ptr @Perl_pv_display(ptr noundef %call199, ptr noundef %44, i64 noundef %46, i64 noundef %47, i64 noundef 127), !dbg !1945
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.28, ptr noundef %call234) #8, !dbg !1946
  %48 = load i32, ptr %sv_flags, align 4, !dbg !1947
  %and236 = and i32 %48, 536870912, !dbg !1947
  %tobool237.not = icmp eq i32 %and236, 0, !dbg !1947
  br i1 %tobool237.not, label %if.end243, label %if.then238, !dbg !1949

if.then238:                                       ; preds = %if.end228
  %49 = load ptr, ptr %sv.addr.0438, align 8, !dbg !1950
  %xpv_cur240 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2, !dbg !1950
  %50 = load i64, ptr %xpv_cur240, align 8, !dbg !1950
  %mul241 = mul i64 %50, 6, !dbg !1950
  %call242 = tail call ptr @Perl_sv_uni_display(ptr noundef %call199, ptr noundef nonnull %sv.addr.0438, i64 noundef %mul241, i64 noundef 3) #8, !dbg !1950
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.29, ptr noundef %call242) #8, !dbg !1951
  br label %if.end243, !dbg !1951

if.end243:                                        ; preds = %if.then238, %if.end228
  call void @llvm.dbg.value(metadata ptr %call199, metadata !1952, metadata !DIExpression()) #8, !dbg !1958
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call199, i64 0, i32 1, !dbg !1960
  %51 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1960
  call void @llvm.dbg.value(metadata i32 %51, metadata !1957, metadata !DIExpression()) #8, !dbg !1958
  %cmp.i = icmp ugt i32 %51, 1, !dbg !1961
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1963

if.then.i:                                        ; preds = %if.end243
  %sub.i = add i32 %51, -1, !dbg !1964
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !1965
  br label %finish, !dbg !1966

if.else.i:                                        ; preds = %if.end243
  tail call void @Perl_sv_free2(ptr noundef nonnull %call199, i32 noundef %51) #8, !dbg !1967
  br label %finish

if.else245:                                       ; preds = %if.end188
  %and247 = and i32 %39, 8192, !dbg !1968
  %tobool248.not = icmp eq i32 %and247, 0, !dbg !1968
  br i1 %tobool248.not, label %if.else252, label %if.then249, !dbg !1970

if.then249:                                       ; preds = %if.else245
  %52 = load ptr, ptr %sv.addr.0438, align 8, !dbg !1971
  %xnv_u251 = getelementptr inbounds %struct.xpvnv, ptr %52, i64 0, i32 5, !dbg !1971
  %53 = load double, ptr %xnv_u251, align 8, !dbg !1971
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.30, double noundef %53) #8, !dbg !1973
  br label %finish, !dbg !1974

if.else252:                                       ; preds = %if.else245
  %and254 = and i32 %39, 4096, !dbg !1975
  %tobool255.not = icmp eq i32 %and254, 0, !dbg !1975
  br i1 %tobool255.not, label %if.else266, label %if.then256, !dbg !1977

if.then256:                                       ; preds = %if.else252
  %tobool259.not = icmp sgt i32 %39, -1, !dbg !1978
  %54 = load ptr, ptr %sv.addr.0438, align 8, !dbg !1981
  br i1 %tobool259.not, label %if.else262, label %if.then260, !dbg !1982

if.then260:                                       ; preds = %if.then256
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %54, i64 0, i32 4, !dbg !1983
  %55 = load i64, ptr %xuv_u, align 8, !dbg !1983
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.31, i64 noundef %55) #8, !dbg !1984
  br label %finish, !dbg !1984

if.else262:                                       ; preds = %if.then256
  %xiv_u264 = getelementptr inbounds %struct.xpviv, ptr %54, i64 0, i32 4, !dbg !1985
  %56 = load i64, ptr %xiv_u264, align 8, !dbg !1985
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.32, i64 noundef %56) #8, !dbg !1986
  br label %finish

if.else266:                                       ; preds = %if.else252
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.33) #8, !dbg !1987
  br label %finish

finish:                                           ; preds = %if.else80, %if.then20, %land.lhs.true73, %land.lhs.true42, %if.else.i, %if.then.i, %cond.end, %if.then196, %if.else266, %if.else262, %if.then260, %if.then249, %if.then180, %if.else186, %do.body, %if.then4, %if.then
  %sv.addr.0421 = phi ptr [ %sv.addr.0438, %if.then4 ], [ %sv.addr.0438, %do.body ], [ %sv.addr.0438, %cond.end ], [ %sv.addr.0438, %if.then180 ], [ %sv.addr.0438, %if.then196 ], [ %sv.addr.0438, %if.then249 ], [ %sv.addr.0438, %if.then260 ], [ %sv.addr.0438, %if.else262 ], [ %sv.addr.0438, %if.else266 ], [ %sv.addr.0438, %if.else186 ], [ null, %if.then ], [ %sv.addr.0438, %if.then.i ], [ %sv.addr.0438, %if.else.i ], [ %sv.addr.0438, %if.else80 ], [ @PL_sv_undef, %if.then20 ], [ @PL_sv_yes, %land.lhs.true73 ], [ @PL_sv_no, %land.lhs.true42 ]
  %tobool416 = phi i1 [ true, %if.then4 ], [ true, %do.body ], [ true, %cond.end ], [ true, %if.then180 ], [ true, %if.then196 ], [ true, %if.then249 ], [ true, %if.then260 ], [ true, %if.else262 ], [ true, %if.else266 ], [ true, %if.else186 ], [ false, %if.then ], [ true, %if.then.i ], [ true, %if.else.i ], [ true, %land.lhs.true42 ], [ true, %land.lhs.true73 ], [ true, %if.then20 ], [ true, %if.else80 ]
  %unref.2 = phi i32 [ %unref.0435, %if.then4 ], [ %unref.1, %do.body ], [ %unref.1, %cond.end ], [ %unref.1, %if.then180 ], [ %unref.1, %if.then196 ], [ %unref.1, %if.then249 ], [ %unref.1, %if.then260 ], [ %unref.1, %if.else262 ], [ %unref.1, %if.else266 ], [ %unref.1, %if.else186 ], [ %unref.0.lcssa, %if.then ], [ %unref.1, %if.then.i ], [ %unref.1, %if.else.i ], [ %unref.0435, %land.lhs.true42 ], [ %unref.0435, %land.lhs.true73 ], [ %unref.0435, %if.then20 ], [ %unref.0435, %if.else80 ], !dbg !1780
  call void @llvm.dbg.value(metadata i32 %unref.2, metadata !1750, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.label(metadata !1773), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %unref.2, metadata !1750, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1774
  %tobool271.not442 = icmp eq i32 %unref.2, 0, !dbg !1989
  br i1 %tobool271.not442, label %while.end, label %while.body, !dbg !1989

while.body:                                       ; preds = %finish, %while.body
  %unref.3443 = phi i32 [ %dec270, %while.body ], [ %unref.2, %finish ]
  call void @llvm.dbg.value(metadata i32 %unref.3443, metadata !1750, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1774
  %dec270 = add nsw i32 %unref.3443, -1, !dbg !1990
  call void @llvm.dbg.value(metadata i32 %dec270, metadata !1750, metadata !DIExpression()), !dbg !1774
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.34) #8, !dbg !1991
  call void @llvm.dbg.value(metadata i32 %dec270, metadata !1750, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1774
  %tobool271.not = icmp eq i32 %dec270, 0, !dbg !1989
  br i1 %tobool271.not, label %while.end, label %while.body, !dbg !1989, !llvm.loop !1992

while.end:                                        ; preds = %while.body, %finish
  %57 = load i8, ptr @PL_tainting, align 1, !dbg !1993, !range !1995
  %tobool272 = icmp ne i8 %57, 0, !dbg !1993
  %or.cond300 = and i1 %tobool272, %tobool416, !dbg !1996
  br i1 %or.cond300, label %land.lhs.true276, label %if.end284, !dbg !1996

land.lhs.true276:                                 ; preds = %while.end
  %sv_flags277 = getelementptr inbounds %struct.sv, ptr %sv.addr.0421, i64 0, i32 2, !dbg !1997
  %58 = load i32, ptr %sv_flags277, align 4, !dbg !1997
  %and278 = and i32 %58, 14680064, !dbg !1997
  %tobool279.not = icmp eq i32 %and278, 0, !dbg !1997
  br i1 %tobool279.not, label %if.end284, label %land.lhs.true280, !dbg !1997

land.lhs.true280:                                 ; preds = %land.lhs.true276
  %call281 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %sv.addr.0421) #8, !dbg !1997
  br i1 %call281, label %if.then283, label %if.end284, !dbg !1998

if.then283:                                       ; preds = %land.lhs.true280
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.35) #8, !dbg !1999
  br label %if.end284, !dbg !1999

if.end284:                                        ; preds = %if.then283, %land.lhs.true280, %land.lhs.true276, %while.end
  %sv_flags285 = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 2, !dbg !2000
  %59 = load i32, ptr %sv_flags285, align 4, !dbg !2000
  %and286 = and i32 %59, 2098176, !dbg !2000
  %cmp287 = icmp eq i32 %and286, 1024, !dbg !2000
  br i1 %cmp287, label %cond.true289, label %cond.false291, !dbg !2000

cond.true289:                                     ; preds = %if.end284
  %sv_u290 = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 3, !dbg !2000
  %60 = load ptr, ptr %sv_u290, align 8, !dbg !2000
  br label %cleanup, !dbg !2000

cond.false291:                                    ; preds = %if.end284
  %call292 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call, ptr noundef null, i32 noundef 2) #8, !dbg !2000
  br label %cleanup, !dbg !2000

cleanup:                                          ; preds = %cond.true289, %cond.false291
  %cond294 = phi ptr [ %60, %cond.true289 ], [ %call292, %cond.false291 ], !dbg !2000
  ret ptr %cond294, !dbg !2001
}

declare !dbg !2002 ptr @Perl_sv_newmortal() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !2005 ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2008 ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2011 ptr @Perl_sv_uni_display(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2014 zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #4

declare !dbg !2017 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef %pat, ...) local_unnamed_addr #0 !dbg !2020 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %level, metadata !2024, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %file, metadata !2025, metadata !DIExpression()), !dbg !2041
  call void @llvm.dbg.value(metadata ptr %pat, metadata !2026, metadata !DIExpression()), !dbg !2041
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #8, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %args, metadata !2027, metadata !DIExpression()), !dbg !2043
  call void @llvm.va_start(ptr nonnull %args), !dbg !2044
  call void @llvm.dbg.value(metadata i32 %level, metadata !2045, metadata !DIExpression()) #8, !dbg !2054
  call void @llvm.dbg.value(metadata ptr %file, metadata !2051, metadata !DIExpression()) #8, !dbg !2054
  call void @llvm.dbg.value(metadata ptr %pat, metadata !2052, metadata !DIExpression()) #8, !dbg !2054
  call void @llvm.dbg.value(metadata ptr %args, metadata !2053, metadata !DIExpression()) #8, !dbg !2054
  %0 = load i16, ptr @PL_dumpindent, align 2, !dbg !2056
  %conv.i = zext i16 %0 to i32, !dbg !2056
  %mul.i = mul nsw i32 %conv.i, %level, !dbg !2057
  %call.i = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.36, i32 noundef %mul.i, ptr noundef nonnull @.str) #8, !dbg !2058
  %call1.i = call i32 @PerlIO_vprintf(ptr noundef %file, ptr noundef %pat, ptr noundef nonnull %args) #8, !dbg !2059
  call void @llvm.va_end(ptr nonnull %args), !dbg !2060
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #8, !dbg !2061
  ret void, !dbg !2061
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_vindent(i32 noundef %level, ptr noundef %file, ptr noundef %pat, ptr noundef %args) local_unnamed_addr #0 !dbg !2046 {
entry:
  call void @llvm.dbg.value(metadata i32 %level, metadata !2045, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr %file, metadata !2051, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr %pat, metadata !2052, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata ptr %args, metadata !2053, metadata !DIExpression()), !dbg !2062
  %0 = load i16, ptr @PL_dumpindent, align 2, !dbg !2063
  %conv = zext i16 %0 to i32, !dbg !2063
  %mul = mul nsw i32 %conv, %level, !dbg !2064
  %call = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.36, i32 noundef %mul, ptr noundef nonnull @.str) #8, !dbg !2065
  %call1 = tail call i32 @PerlIO_vprintf(ptr noundef %file, ptr noundef %pat, ptr noundef %args) #8, !dbg !2066
  ret void, !dbg !2067
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

declare !dbg !2068 i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !2071 i32 @PerlIO_vprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_all() local_unnamed_addr #0 !dbg !2075 {
entry:
  call void @llvm.dbg.value(metadata i1 false, metadata !2078, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !2083
  %call.i = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2085
  tail call void @Perl_PerlIO_setlinebuf(ptr noundef %call.i) #8, !dbg !2085
  %0 = load ptr, ptr @PL_main_root, align 8, !dbg !2086
  %tobool.not.i = icmp eq ptr %0, null, !dbg !2086
  br i1 %tobool.not.i, label %Perl_dump_all_perl.exit, label %if.then.i, !dbg !2088

if.then.i:                                        ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %0, metadata !2089, metadata !DIExpression()) #8, !dbg !2096
  %call.i.i = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2098
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %call.i.i, ptr noundef nonnull %0) #8, !dbg !2098
  br label %Perl_dump_all_perl.exit, !dbg !2099

Perl_dump_all_perl.exit:                          ; preds = %entry, %if.then.i
  %1 = load ptr, ptr @PL_defstash, align 8, !dbg !2100
  tail call void @Perl_dump_packsubs_perl(ptr noundef %1, i1 noundef zeroext false) #8, !dbg !2100
  ret void, !dbg !2101
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_all_perl(i1 noundef zeroext %justperl) local_unnamed_addr #0 !dbg !2079 {
entry:
  call void @llvm.dbg.value(metadata i1 %justperl, metadata !2078, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2102
  %call = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2103
  tail call void @Perl_PerlIO_setlinebuf(ptr noundef %call) #8, !dbg !2103
  %0 = load ptr, ptr @PL_main_root, align 8, !dbg !2104
  %tobool.not = icmp eq ptr %0, null, !dbg !2104
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2105

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %0, metadata !2089, metadata !DIExpression()) #8, !dbg !2106
  %call.i = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2108
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %call.i, ptr noundef nonnull %0) #8, !dbg !2108
  br label %if.end, !dbg !2109

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @PL_defstash, align 8, !dbg !2110
  tail call void @Perl_dump_packsubs_perl(ptr noundef %1, i1 noundef zeroext %justperl), !dbg !2110
  ret void, !dbg !2111
}

declare !dbg !2112 void @Perl_PerlIO_setlinebuf(ptr noundef) local_unnamed_addr #4

declare !dbg !2115 ptr @Perl_PerlIO_stderr() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Perl_op_dump(ptr noundef %o) local_unnamed_addr #0 !dbg !2090 {
entry:
  call void @llvm.dbg.value(metadata ptr %o, metadata !2089, metadata !DIExpression()), !dbg !2118
  %call = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2119
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %call, ptr noundef %o), !dbg !2119
  ret void, !dbg !2120
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_packsubs_perl(ptr nocapture noundef readonly %stash, i1 noundef zeroext %justperl) local_unnamed_addr #0 !dbg !2121 {
entry:
  call void @llvm.dbg.value(metadata ptr %stash, metadata !2125, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i1 %justperl, metadata !2126, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2142
  %sv_u = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !2143
  %0 = load ptr, ptr %sv_u, align 8, !dbg !2143
  %tobool.not = icmp eq ptr %0, null, !dbg !2143
  br i1 %tobool.not, label %cleanup57, label %for.cond.preheader, !dbg !2145

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()), !dbg !2142
  %1 = load ptr, ptr %stash, align 8, !dbg !2146
  %xhv_max87 = getelementptr inbounds %struct.xpvhv, ptr %1, i64 0, i32 3, !dbg !2146
  %2 = load i64, ptr %xhv_max87, align 8, !dbg !2146
  %3 = and i64 %2, 2147483648, !dbg !2147
  %cmp.not89.not = icmp eq i64 %3, 0, !dbg !2147
  br i1 %cmp.not89.not, label %for.body, label %cleanup57, !dbg !2148

for.body:                                         ; preds = %for.cond.preheader, %for.end.for.body_crit_edge
  %4 = phi ptr [ %29, %for.end.for.body_crit_edge ], [ %1, %for.cond.preheader ]
  %5 = phi ptr [ %.pre, %for.end.for.body_crit_edge ], [ %0, %for.cond.preheader ], !dbg !2149
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end.for.body_crit_edge ], [ 0, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2127, metadata !DIExpression()), !dbg !2142
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %indvars.iv, !dbg !2149
  call void @llvm.dbg.value(metadata ptr undef, metadata !2128, metadata !DIExpression()), !dbg !2150
  %entry2.084 = load ptr, ptr %arrayidx, align 8, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %entry2.084, metadata !2128, metadata !DIExpression()), !dbg !2150
  %tobool5.not85 = icmp eq ptr %entry2.084, null, !dbg !2152
  br i1 %tobool5.not85, label %for.end, label %for.body6, !dbg !2152

for.body6:                                        ; preds = %for.body, %cleanup
  %entry2.086 = phi ptr [ %entry2.0, %cleanup ], [ %entry2.084, %for.body ]
  %he_valu = getelementptr inbounds %struct.he, ptr %entry2.086, i64 0, i32 2, !dbg !2153
  %6 = load ptr, ptr %he_valu, align 8, !dbg !2153
  call void @llvm.dbg.value(metadata ptr %6, metadata !2134, metadata !DIExpression()), !dbg !2154
  %sv_flags = getelementptr inbounds %struct.gv, ptr %6, i64 0, i32 2, !dbg !2155
  %7 = load i32, ptr %sv_flags, align 4, !dbg !2155
  %and = and i32 %7, 2048, !dbg !2155
  %tobool7.not = icmp eq i32 %and, 0, !dbg !2155
  br i1 %tobool7.not, label %if.end15, label %land.lhs.true, !dbg !2157

land.lhs.true:                                    ; preds = %for.body6
  %sv_u8 = getelementptr inbounds %struct.gv, ptr %6, i64 0, i32 3, !dbg !2158
  %8 = load ptr, ptr %sv_u8, align 8, !dbg !2158
  %sv_flags9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2, !dbg !2158
  %9 = load i32, ptr %sv_flags9, align 4, !dbg !2158
  %and10 = and i32 %9, 255, !dbg !2158
  %cmp11 = icmp eq i32 %and10, 13, !dbg !2159
  br i1 %cmp11, label %if.then13, label %if.end15, !dbg !2160

if.then13:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %8, metadata !1896, metadata !DIExpression()) #8, !dbg !2161
  %10 = load ptr, ptr %8, align 8, !dbg !2163
  %xcv_flags.i = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 12, !dbg !2163
  %11 = load i32, ptr %xcv_flags.i, align 4, !dbg !2163
  %and.i = and i32 %11, 32768, !dbg !2163
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !2163
  br i1 %tobool.not.i, label %if.end15, label %cond.true.i, !dbg !2163

cond.true.i:                                      ; preds = %if.then13
  %call.i = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %8) #8, !dbg !2164
  %.pre92 = load i32, ptr %sv_flags, align 4, !dbg !2165
  br label %if.end15, !dbg !2163

if.end15:                                         ; preds = %if.then13, %cond.true.i, %land.lhs.true, %for.body6
  %12 = phi i32 [ %7, %if.then13 ], [ %.pre92, %cond.true.i ], [ %7, %land.lhs.true ], [ %7, %for.body6 ], !dbg !2165
  %and17 = and i32 %12, 255, !dbg !2165
  %cmp18.not = icmp eq i32 %and17, 9, !dbg !2167
  br i1 %cmp18.not, label %lor.lhs.false, label %cleanup, !dbg !2168

lor.lhs.false:                                    ; preds = %if.end15
  %sv_u20 = getelementptr inbounds %struct.gv, ptr %6, i64 0, i32 3, !dbg !2169
  %13 = load ptr, ptr %sv_u20, align 8, !dbg !2169
  %tobool21.not = icmp eq ptr %13, null, !dbg !2169
  br i1 %tobool21.not, label %cleanup, label %if.end23, !dbg !2170

if.end23:                                         ; preds = %lor.lhs.false
  %gp_cvgen = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 3, !dbg !2171
  %14 = load i32, ptr %gp_cvgen, align 8, !dbg !2171
  %tobool26.not = icmp eq i32 %14, 0, !dbg !2171
  br i1 %tobool26.not, label %cond.false, label %if.end32, !dbg !2173

cond.false:                                       ; preds = %if.end23
  %gp_cv = getelementptr inbounds %struct.gp, ptr %13, i64 0, i32 2, !dbg !2171
  %15 = load ptr, ptr %gp_cv, align 8, !dbg !2171
  %tobool29.not = icmp eq ptr %15, null, !dbg !2171
  br i1 %tobool29.not, label %if.end32, label %if.then30, !dbg !2173

if.then30:                                        ; preds = %cond.false
  tail call void @Perl_dump_sub_perl(ptr noundef nonnull %6, i1 noundef zeroext %justperl), !dbg !2174
  %.pre93 = load ptr, ptr %sv_u20, align 8, !dbg !2175
  br label %if.end32, !dbg !2174

if.end32:                                         ; preds = %if.end23, %if.then30, %cond.false
  %16 = phi ptr [ %13, %if.end23 ], [ %.pre93, %if.then30 ], [ %13, %cond.false ], !dbg !2175
  %gp_form = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 7, !dbg !2175
  %17 = load ptr, ptr %gp_form, align 8, !dbg !2175
  %tobool35.not = icmp eq ptr %17, null, !dbg !2175
  br i1 %tobool35.not, label %if.end37, label %if.then36, !dbg !2177

if.then36:                                        ; preds = %if.end32
  call void @llvm.dbg.value(metadata ptr %6, metadata !2178, metadata !DIExpression()) #8, !dbg !2186
  %call.i82 = tail call ptr @Perl_sv_newmortal() #8, !dbg !2188
  call void @llvm.dbg.value(metadata ptr %call.i82, metadata !2185, metadata !DIExpression()) #8, !dbg !2186
  tail call void @Perl_gv_fullname4(ptr noundef %call.i82, ptr noundef nonnull %6, ptr noundef null, i1 noundef zeroext true) #8, !dbg !2189
  %call1.i = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2190
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %call.i82, i64 0, i32 3, !dbg !2191
  %18 = load ptr, ptr %sv_u.i, align 8, !dbg !2191
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %call1.i, ptr noundef nonnull @.str.40, ptr noundef %18) #8, !dbg !2192
  %19 = load ptr, ptr %sv_u20, align 8, !dbg !2193
  %gp_form.i = getelementptr inbounds %struct.gp, ptr %19, i64 0, i32 7, !dbg !2193
  %20 = load ptr, ptr %gp_form.i, align 8, !dbg !2193
  %21 = load ptr, ptr %20, align 8, !dbg !2193
  %xcv_root_u.i = getelementptr inbounds %struct.xpvcv, ptr %21, i64 0, i32 6, !dbg !2193
  %22 = load ptr, ptr %xcv_root_u.i, align 8, !dbg !2193
  %tobool.not.i83 = icmp eq ptr %22, null, !dbg !2193
  %call9.i = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2195
  br i1 %tobool.not.i83, label %if.else.i, label %if.then.i, !dbg !2196

if.then.i:                                        ; preds = %if.then36
  call void @llvm.dbg.value(metadata ptr %22, metadata !2089, metadata !DIExpression()) #8, !dbg !2197
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %call9.i, ptr noundef nonnull %22) #8, !dbg !2199
  br label %if.end37, !dbg !2200

if.else.i:                                        ; preds = %if.then36
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %call9.i, ptr noundef nonnull @.str.39) #8, !dbg !2201
  br label %if.end37

if.end37:                                         ; preds = %if.else.i, %if.then.i, %if.end32
  %hent_hek = getelementptr inbounds %struct.he, ptr %entry2.086, i64 0, i32 1, !dbg !2202
  %23 = load ptr, ptr %hent_hek, align 8, !dbg !2202
  %hek_len = getelementptr inbounds %struct.hek, ptr %23, i64 0, i32 1, !dbg !2203
  %24 = load i32, ptr %hek_len, align 4, !dbg !2203
  %sub = add nsw i32 %24, -1, !dbg !2204
  %idxprom39 = sext i32 %sub to i64, !dbg !2202
  %arrayidx40 = getelementptr inbounds %struct.hek, ptr %23, i64 0, i32 2, i64 %idxprom39, !dbg !2202
  %25 = load i8, ptr %arrayidx40, align 1, !dbg !2202
  %cmp42 = icmp eq i8 %25, 58, !dbg !2205
  br i1 %cmp42, label %if.then44, label %cleanup, !dbg !2206

if.then44:                                        ; preds = %if.end37
  %26 = load ptr, ptr %sv_u20, align 8, !dbg !2207
  %gp_hv = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 5, !dbg !2207
  %27 = load ptr, ptr %gp_hv, align 8, !dbg !2207
  call void @llvm.dbg.value(metadata ptr %27, metadata !2138, metadata !DIExpression()), !dbg !2208
  %tobool47.not = icmp eq ptr %27, null, !dbg !2209
  %28 = load ptr, ptr @PL_defstash, align 8
  %cmp49.not = icmp eq ptr %27, %28
  %or.cond = select i1 %tobool47.not, i1 true, i1 %cmp49.not, !dbg !2211
  br i1 %or.cond, label %cleanup, label %if.then51, !dbg !2211

if.then51:                                        ; preds = %if.then44
  tail call void @Perl_dump_packsubs_perl(ptr noundef nonnull %27, i1 noundef zeroext %justperl), !dbg !2212
  br label %cleanup, !dbg !2212

cleanup:                                          ; preds = %if.end37, %if.then51, %if.then44, %if.end15, %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr undef, metadata !2128, metadata !DIExpression()), !dbg !2150
  %entry2.0 = load ptr, ptr %entry2.086, align 8, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %entry2.0, metadata !2128, metadata !DIExpression()), !dbg !2150
  %tobool5.not = icmp eq ptr %entry2.0, null, !dbg !2152
  br i1 %tobool5.not, label %for.end.loopexit, label %for.body6, !dbg !2152, !llvm.loop !2213

for.end.loopexit:                                 ; preds = %cleanup
  %.pre94 = load ptr, ptr %stash, align 8, !dbg !2146
  br label %for.end, !dbg !2215

for.end:                                          ; preds = %for.end.loopexit, %for.body
  %29 = phi ptr [ %.pre94, %for.end.loopexit ], [ %4, %for.body ], !dbg !2146
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2127, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2142
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %29, i64 0, i32 3, !dbg !2146
  %30 = load i64, ptr %xhv_max, align 8, !dbg !2146
  %sext = shl i64 %30, 32, !dbg !2147
  %31 = ashr exact i64 %sext, 32, !dbg !2147
  %cmp.not.not = icmp slt i64 %indvars.iv, %31, !dbg !2147
  br i1 %cmp.not.not, label %for.end.for.body_crit_edge, label %cleanup57, !dbg !2148, !llvm.loop !2216

for.end.for.body_crit_edge:                       ; preds = %for.end
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2127, metadata !DIExpression()), !dbg !2142
  %.pre = load ptr, ptr %sv_u, align 8, !dbg !2149
  br label %for.body, !dbg !2148

cleanup57:                                        ; preds = %for.end, %for.cond.preheader, %entry
  ret void, !dbg !2218
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_packsubs(ptr nocapture noundef readonly %stash) local_unnamed_addr #0 !dbg !2219 {
entry:
  call void @llvm.dbg.value(metadata ptr %stash, metadata !2223, metadata !DIExpression()), !dbg !2224
  tail call void @Perl_dump_packsubs_perl(ptr noundef %stash, i1 noundef zeroext false), !dbg !2225
  ret void, !dbg !2226
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_sub_perl(ptr noundef %gv, i1 noundef zeroext %justperl) local_unnamed_addr #0 !dbg !2227 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2231, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i1 %justperl, metadata !2232, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2237
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8, !dbg !2238
  %call = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !2239
  call void @llvm.dbg.value(metadata ptr %call, metadata !2234, metadata !DIExpression()), !dbg !2237
  br i1 %justperl, label %land.lhs.true, label %if.end, !dbg !2240

land.lhs.true:                                    ; preds = %entry
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2242
  %0 = load ptr, ptr %sv_u, align 8, !dbg !2242
  %gp_cv = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 2, !dbg !2242
  %1 = load ptr, ptr %gp_cv, align 8, !dbg !2242
  %2 = load ptr, ptr %1, align 8, !dbg !2242
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12, !dbg !2242
  %3 = load i32, ptr %xcv_flags, align 4, !dbg !2242
  %and = and i32 %3, 8, !dbg !2242
  %tobool2.not = icmp eq i32 %and, 0, !dbg !2242
  br i1 %tobool2.not, label %lor.lhs.false, label %cleanup, !dbg !2243

lor.lhs.false:                                    ; preds = %land.lhs.true
  %xcv_root_u = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 6, !dbg !2244
  %4 = load ptr, ptr %xcv_root_u, align 8, !dbg !2244
  %tobool8.not = icmp eq ptr %4, null, !dbg !2244
  br i1 %tobool8.not, label %cleanup, label %if.end, !dbg !2245

if.end:                                           ; preds = %lor.lhs.false, %entry
  %call9 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !2246
  call void @llvm.dbg.value(metadata ptr %call9, metadata !2235, metadata !DIExpression()), !dbg !2237
  tail call void @Perl_gv_fullname4(ptr noundef %call, ptr noundef %gv, ptr noundef null, i1 noundef zeroext true) #8, !dbg !2247
  %sv_flags = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 2, !dbg !2248
  %5 = load i32, ptr %sv_flags, align 4, !dbg !2248
  %and10 = and i32 %5, 2098176, !dbg !2248
  %cmp = icmp eq i32 %and10, 1024, !dbg !2248
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2248

cond.true:                                        ; preds = %if.end
  %6 = load ptr, ptr %call, align 8, !dbg !2248
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %6, i64 0, i32 2, !dbg !2248
  %7 = load i64, ptr %xpv_cur, align 8, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %7, metadata !2233, metadata !DIExpression()), !dbg !2237
  store i64 %7, ptr %len, align 8, !dbg !2248
  %sv_u12 = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 3, !dbg !2248
  %8 = load ptr, ptr %sv_u12, align 8, !dbg !2248
  br label %cond.end, !dbg !2248

cond.false:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %len, metadata !2233, metadata !DIExpression(DW_OP_deref)), !dbg !2237
  %call14 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call, ptr noundef nonnull %len, i32 noundef 34) #8, !dbg !2248
  br label %cond.end, !dbg !2248

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ %call14, %cond.false ], !dbg !2248
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2236, metadata !DIExpression()), !dbg !2237
  %call15 = call ptr @Perl_PerlIO_stderr() #8, !dbg !2249
  %9 = load i64, ptr %len, align 8, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %9, metadata !2233, metadata !DIExpression()), !dbg !2237
  %mul = mul i64 %9, 17, !dbg !2250
  %add = add i64 %mul, 1, !dbg !2250
  %10 = load i32, ptr %sv_flags, align 4, !dbg !2250
  %and17 = lshr i32 %10, 21, !dbg !2250
  %11 = and i32 %and17, 256, !dbg !2250
  %or = or i32 %11, 66560, !dbg !2250
  %call20 = call ptr @Perl_pv_escape(ptr noundef %call9, ptr noundef %cond, i64 noundef %9, i64 noundef %add, ptr noundef null, i32 noundef %or), !dbg !2250
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %call15, ptr noundef nonnull @.str.37, ptr noundef %call20), !dbg !2251
  %sv_u21 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2252
  %12 = load ptr, ptr %sv_u21, align 8, !dbg !2252
  %gp_cv23 = getelementptr inbounds %struct.gp, ptr %12, i64 0, i32 2, !dbg !2252
  %13 = load ptr, ptr %gp_cv23, align 8, !dbg !2252
  %14 = load ptr, ptr %13, align 8, !dbg !2252
  %xcv_flags26 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 12, !dbg !2252
  %15 = load i32, ptr %xcv_flags26, align 4, !dbg !2252
  %and27 = and i32 %15, 8, !dbg !2252
  %tobool28.not = icmp eq i32 %and27, 0, !dbg !2252
  br i1 %tobool28.not, label %if.else, label %if.then29, !dbg !2254

if.then29:                                        ; preds = %cond.end
  %call30 = call ptr @Perl_PerlIO_stderr() #8, !dbg !2255
  %16 = load ptr, ptr %sv_u21, align 8, !dbg !2256
  %gp_cv33 = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 2, !dbg !2256
  %17 = load ptr, ptr %gp_cv33, align 8, !dbg !2256
  %18 = load ptr, ptr %17, align 8, !dbg !2256
  %xcv_root_u36 = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 6, !dbg !2256
  %19 = load ptr, ptr %xcv_root_u36, align 8, !dbg !2256
  %20 = ptrtoint ptr %19 to i64, !dbg !2256
  %xcv_start_u = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 5, !dbg !2257
  %21 = load i32, ptr %xcv_start_u, align 8, !dbg !2258
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %call30, ptr noundef nonnull @.str.38, i64 noundef %20, i32 noundef %21), !dbg !2259
  br label %cleanup, !dbg !2259

if.else:                                          ; preds = %cond.end
  %xcv_root_u47 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 6, !dbg !2260
  %22 = load ptr, ptr %xcv_root_u47, align 8, !dbg !2260
  %tobool48.not = icmp eq ptr %22, null, !dbg !2260
  %call57 = call ptr @Perl_PerlIO_stderr() #8, !dbg !2262
  br i1 %tobool48.not, label %if.else56, label %if.then49, !dbg !2263

if.then49:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %22, metadata !2089, metadata !DIExpression()) #8, !dbg !2264
  call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %call57, ptr noundef nonnull %22) #8, !dbg !2266
  br label %cleanup, !dbg !2267

if.else56:                                        ; preds = %if.else
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %call57, ptr noundef nonnull @.str.39), !dbg !2268
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.else56, %if.then49, %land.lhs.true, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !2269
  ret void, !dbg !2269
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_form(ptr noundef %gv) local_unnamed_addr #0 !dbg !2179 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2178, metadata !DIExpression()), !dbg !2270
  %call = tail call ptr @Perl_sv_newmortal() #8, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %call, metadata !2185, metadata !DIExpression()), !dbg !2270
  tail call void @Perl_gv_fullname4(ptr noundef %call, ptr noundef %gv, ptr noundef null, i1 noundef zeroext true) #8, !dbg !2272
  %call1 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2273
  %sv_u = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 3, !dbg !2274
  %0 = load ptr, ptr %sv_u, align 8, !dbg !2274
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %call1, ptr noundef nonnull @.str.40, ptr noundef %0), !dbg !2275
  %sv_u2 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2276
  %1 = load ptr, ptr %sv_u2, align 8, !dbg !2276
  %gp_form = getelementptr inbounds %struct.gp, ptr %1, i64 0, i32 7, !dbg !2276
  %2 = load ptr, ptr %gp_form, align 8, !dbg !2276
  %3 = load ptr, ptr %2, align 8, !dbg !2276
  %xcv_root_u = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 6, !dbg !2276
  %4 = load ptr, ptr %xcv_root_u, align 8, !dbg !2276
  %tobool.not = icmp eq ptr %4, null, !dbg !2276
  %call9 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2277
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2278

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %4, metadata !2089, metadata !DIExpression()) #8, !dbg !2279
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %call9, ptr noundef nonnull %4) #8, !dbg !2281
  br label %if.end, !dbg !2282

if.else:                                          ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %call9, ptr noundef nonnull @.str.39), !dbg !2283
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2284
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_sub(ptr noundef %gv) local_unnamed_addr #0 !dbg !2285 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2287, metadata !DIExpression()), !dbg !2288
  tail call void @Perl_dump_sub_perl(ptr noundef %gv, i1 noundef zeroext false), !dbg !2289
  ret void, !dbg !2290
}

declare !dbg !2291 void @Perl_gv_fullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Perl_dump_eval() local_unnamed_addr #0 !dbg !2294 {
entry:
  %0 = load ptr, ptr @PL_eval_root, align 8, !dbg !2295
  call void @llvm.dbg.value(metadata ptr %0, metadata !2089, metadata !DIExpression()) #8, !dbg !2296
  %call.i = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2298
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %call.i, ptr noundef %0) #8, !dbg !2298
  ret void, !dbg !2299
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_pmop_dump(i32 noundef %level, ptr noundef %file, ptr noundef readonly %pm) local_unnamed_addr #0 !dbg !2300 {
entry:
  call void @llvm.dbg.value(metadata i32 %level, metadata !2306, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata ptr %file, metadata !2307, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata ptr %pm, metadata !2308, metadata !DIExpression()), !dbg !2313
  %tobool.not = icmp eq ptr %pm, null, !dbg !2314
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !2316

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.42), !dbg !2317
  %inc = add nsw i32 %level, 1, !dbg !2318
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2306, metadata !DIExpression()), !dbg !2313
  %op_pmflags = getelementptr inbounds %struct.pmop, ptr %pm, i64 0, i32 10, !dbg !2319
  call void @llvm.dbg.value(metadata i8 undef, metadata !2309, metadata !DIExpression()), !dbg !2313
  %op_pmregexp = getelementptr inbounds %struct.pmop, ptr %pm, i64 0, i32 9, !dbg !2321
  %0 = load ptr, ptr %op_pmregexp, align 8, !dbg !2321
  %tobool4.not = icmp eq ptr %0, null, !dbg !2321
  br i1 %tobool4.not, label %if.else23, label %if.then5, !dbg !2323

if.then5:                                         ; preds = %if.end
  %1 = load i32, ptr %op_pmflags, align 8, !dbg !2319
  %and = and i32 %1, 1048576, !dbg !2324
  %tobool1.not = icmp eq i32 %and, 0, !dbg !2324
  %. = select i1 %tobool1.not, i32 47, i32 63
  %2 = load ptr, ptr %0, align 8, !dbg !2325
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %2, i64 0, i32 2, !dbg !2325
  %3 = load i64, ptr %xpv_cur, align 8, !dbg !2325
  %4 = getelementptr i8, ptr %0, i64 16, !dbg !2325
  %.val106 = load ptr, ptr %4, align 8, !dbg !2325
  %pre_prefix = getelementptr inbounds %struct.regexp, ptr %.val106, i64 0, i32 24, !dbg !2325
  %bf.load = load i16, ptr %pre_prefix, align 8, !dbg !2325
  %bf.clear = and i16 %bf.load, 15, !dbg !2325
  %conv8 = zext i16 %bf.clear to i64, !dbg !2325
  %5 = xor i64 %conv8, -1, !dbg !2325
  %sub9 = add i64 %3, %5, !dbg !2325
  %conv10 = trunc i64 %sub9 to i32, !dbg !2326
  %xpv_len_u = getelementptr inbounds %struct.regexp, ptr %.val106, i64 0, i32 3, !dbg !2327
  %6 = load ptr, ptr %xpv_len_u, align 8, !dbg !2327
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %conv8, !dbg !2327
  %op_private = getelementptr inbounds %struct.pmop, ptr %pm, i64 0, i32 6, !dbg !2328
  %7 = load i8, ptr %op_private, align 1, !dbg !2328
  %8 = and i8 %7, 64, !dbg !2329
  %tobool22.not = icmp eq i8 %8, 0, !dbg !2330
  %cond = select i1 %tobool22.not, ptr @.str, ptr @.str.44, !dbg !2330
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.43, i32 noundef %., i32 noundef %conv10, ptr noundef %add.ptr, i32 noundef %., ptr noundef nonnull %cond), !dbg !2331
  br label %if.end24, !dbg !2331

if.else23:                                        ; preds = %if.end
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.45), !dbg !2332
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.then5
  %op_type = getelementptr inbounds %struct.pmop, ptr %pm, i64 0, i32 4, !dbg !2333
  %bf.load25 = load i16, ptr %op_type, align 8, !dbg !2333
  %bf.clear26 = and i16 %bf.load25, 511, !dbg !2333
  %cmp.not = icmp eq i16 %bf.clear26, 13, !dbg !2335
  br i1 %cmp.not, label %if.end32, label %land.lhs.true, !dbg !2336

land.lhs.true:                                    ; preds = %if.end24
  %op_pmreplrootu = getelementptr inbounds %struct.pmop, ptr %pm, i64 0, i32 11, !dbg !2337
  %9 = load ptr, ptr %op_pmreplrootu, align 8, !dbg !2338
  %tobool29.not = icmp eq ptr %9, null, !dbg !2339
  br i1 %tobool29.not, label %if.end32, label %if.then30, !dbg !2340

if.then30:                                        ; preds = %land.lhs.true
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.46), !dbg !2341
  %10 = load ptr, ptr %op_pmreplrootu, align 8, !dbg !2343
  call void @llvm.dbg.value(metadata ptr %10, metadata !2089, metadata !DIExpression()) #8, !dbg !2344
  %call.i = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2346
  tail call void @Perl_do_op_dump(i32 noundef 0, ptr noundef %call.i, ptr noundef %10) #8, !dbg !2346
  br label %if.end32, !dbg !2347

if.end32:                                         ; preds = %if.then30, %land.lhs.true, %if.end24
  %op_code_list = getelementptr inbounds %struct.pmop, ptr %pm, i64 0, i32 13, !dbg !2348
  %11 = load ptr, ptr %op_code_list, align 8, !dbg !2348
  %tobool33.not = icmp eq ptr %11, null, !dbg !2350
  br i1 %tobool33.not, label %if.end43, label %if.then34, !dbg !2351

if.then34:                                        ; preds = %if.end32
  %12 = load i32, ptr %op_pmflags, align 8, !dbg !2352
  %and36 = and i32 %12, 536870912, !dbg !2355
  %tobool37.not = icmp eq i32 %and36, 0, !dbg !2355
  br i1 %tobool37.not, label %if.else40, label %if.then38, !dbg !2356

if.then38:                                        ; preds = %if.then34
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.47), !dbg !2357
  %13 = load ptr, ptr %op_code_list, align 8, !dbg !2359
  tail call void @Perl_do_op_dump(i32 noundef %inc, ptr noundef %file, ptr noundef %13), !dbg !2359
  br label %if.end43, !dbg !2360

if.else40:                                        ; preds = %if.then34
  %14 = ptrtoint ptr %11 to i64, !dbg !2361
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.48, i64 noundef %14), !dbg !2362
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.else40, %if.end32
  %15 = load i32, ptr %op_pmflags, align 8, !dbg !2363
  %tobool45.not = icmp eq i32 %15, 0, !dbg !2364
  br i1 %tobool45.not, label %lor.lhs.false, label %if.then52, !dbg !2365

lor.lhs.false:                                    ; preds = %if.end43
  %16 = load ptr, ptr %op_pmregexp, align 8, !dbg !2366
  %tobool47.not = icmp eq ptr %16, null, !dbg !2366
  br i1 %tobool47.not, label %cleanup, label %land.lhs.true48, !dbg !2367

land.lhs.true48:                                  ; preds = %lor.lhs.false
  %17 = getelementptr i8, ptr %16, i64 16, !dbg !2368
  %.val = load ptr, ptr %17, align 8, !dbg !2368
  %substrs = getelementptr inbounds %struct.regexp, ptr %.val, i64 0, i32 11, !dbg !2368
  %18 = load ptr, ptr %substrs, align 8, !dbg !2368
  %substr = getelementptr inbounds %struct.reg_substr_data, ptr %18, i64 0, i32 1, i64 2, i32 2, !dbg !2368
  %19 = load ptr, ptr %substr, align 8, !dbg !2368
  %tobool51.not = icmp eq ptr %19, null, !dbg !2368
  br i1 %tobool51.not, label %cleanup, label %if.then52, !dbg !2369

if.then52:                                        ; preds = %land.lhs.true48, %if.end43
  call void @llvm.dbg.value(metadata ptr %pm, metadata !2370, metadata !DIExpression()) #8, !dbg !2379
  %call.i107 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !2381
  call void @llvm.dbg.value(metadata ptr %call.i107, metadata !2375, metadata !DIExpression()) #8, !dbg !2379
  %20 = load ptr, ptr %op_pmregexp, align 8, !dbg !2382
  call void @llvm.dbg.value(metadata ptr %20, metadata !2376, metadata !DIExpression()) #8, !dbg !2379
  %21 = load i32, ptr %op_pmflags, align 8, !dbg !2383
  call void @llvm.dbg.value(metadata i32 %21, metadata !2378, metadata !DIExpression()) #8, !dbg !2379
  %and.i = and i32 %21, 1048576, !dbg !2384
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !2384
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !dbg !2386

if.then.i:                                        ; preds = %if.then52
  tail call void @Perl_sv_catpv(ptr noundef %call.i107, ptr noundef nonnull @.str.415) #8, !dbg !2387
  br label %if.end.i, !dbg !2387

if.end.i:                                         ; preds = %if.then.i, %if.then52
  %and1.i = and i32 %21, 2097152, !dbg !2388
  %tobool2.not.i = icmp eq i32 %and1.i, 0, !dbg !2388
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i, !dbg !2390

if.then3.i:                                       ; preds = %if.end.i
  tail call void @Perl_sv_catpv(ptr noundef %call.i107, ptr noundef nonnull @.str.416) #8, !dbg !2391
  br label %if.end4.i, !dbg !2391

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i
  %tobool5.not.i = icmp eq ptr %20, null, !dbg !2392
  br i1 %tobool5.not.i, label %do.body.i.i.preheader, label %if.then6.i, !dbg !2394

if.then6.i:                                       ; preds = %if.end4.i
  %22 = getelementptr i8, ptr %20, i64 16, !dbg !2395
  %.val52.i = load ptr, ptr %22, align 8, !dbg !2395
  %extflags.i = getelementptr inbounds %struct.regexp, ptr %.val52.i, i64 0, i32 7, !dbg !2395
  %23 = load i32, ptr %extflags.i, align 8, !dbg !2395
  %and8.i = and i32 %23, 134217728, !dbg !2395
  %tobool9.not.i = icmp eq i32 %and8.i, 0, !dbg !2395
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i, !dbg !2398

if.then10.i:                                      ; preds = %if.then6.i
  tail call void @Perl_sv_catpv(ptr noundef %call.i107, ptr noundef nonnull @.str.417) #8, !dbg !2399
  %.val51.pre.i = load ptr, ptr %22, align 8, !dbg !2400
  br label %if.end11.i, !dbg !2399

if.end11.i:                                       ; preds = %if.then10.i, %if.then6.i
  %.val51.i = phi ptr [ %.val51.pre.i, %if.then10.i ], [ %.val52.i, %if.then6.i ], !dbg !2400
  %substrs.i = getelementptr inbounds %struct.regexp, ptr %.val51.i, i64 0, i32 11, !dbg !2400
  %24 = load ptr, ptr %substrs.i, align 8, !dbg !2400
  %substr.i = getelementptr inbounds %struct.reg_substr_data, ptr %24, i64 0, i32 1, i64 2, i32 2, !dbg !2400
  %25 = load ptr, ptr %substr.i, align 8, !dbg !2400
  %tobool13.not.i = icmp eq ptr %25, null, !dbg !2400
  br i1 %tobool13.not.i, label %if.end26.i, label %if.then14.i, !dbg !2402

if.then14.i:                                      ; preds = %if.end11.i
  %intflags.i = getelementptr inbounds %struct.regexp, ptr %.val51.i, i64 0, i32 13, !dbg !2403
  %26 = load i32, ptr %intflags.i, align 4, !dbg !2403
  %and16.i = and i32 %26, 64, !dbg !2406
  %tobool17.not.i = icmp eq i32 %and16.i, 0, !dbg !2406
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end19.i, !dbg !2407

if.then18.i:                                      ; preds = %if.then14.i
  tail call void @Perl_sv_catpv(ptr noundef %call.i107, ptr noundef nonnull @.str.418) #8, !dbg !2408
  %.val49.pre.i = load ptr, ptr %22, align 8, !dbg !2409
  br label %if.end19.i, !dbg !2408

if.end19.i:                                       ; preds = %if.then18.i, %if.then14.i
  %.val49.i = phi ptr [ %.val49.pre.i, %if.then18.i ], [ %.val51.i, %if.then14.i ], !dbg !2409
  %extflags21.i = getelementptr inbounds %struct.regexp, ptr %.val49.i, i64 0, i32 7, !dbg !2409
  %27 = load i32, ptr %extflags21.i, align 8, !dbg !2409
  %and22.i = and i32 %27, 524288, !dbg !2411
  %tobool23.not.i = icmp eq i32 %and22.i, 0, !dbg !2411
  br i1 %tobool23.not.i, label %if.end26.i, label %if.then24.i, !dbg !2412

if.then24.i:                                      ; preds = %if.end19.i
  tail call void @Perl_sv_catpv(ptr noundef %call.i107, ptr noundef nonnull @.str.419) #8, !dbg !2413
  %.val.pre.i = load ptr, ptr %22, align 8, !dbg !2414
  br label %if.end26.i, !dbg !2413

if.end26.i:                                       ; preds = %if.then24.i, %if.end19.i, %if.end11.i
  %.val.i = phi ptr [ %.val49.i, %if.end19.i ], [ %.val.pre.i, %if.then24.i ], [ %.val51.i, %if.end11.i ], !dbg !2414
  %extflags28.i = getelementptr inbounds %struct.regexp, ptr %.val.i, i64 0, i32 7, !dbg !2414
  %28 = load i32, ptr %extflags28.i, align 8, !dbg !2414
  %and29.i = and i32 %28, 536870912, !dbg !2416
  %tobool30.not.i = icmp eq i32 %and29.i, 0, !dbg !2416
  br i1 %tobool30.not.i, label %do.body.i.i.preheader, label %if.then31.i, !dbg !2417

if.then31.i:                                      ; preds = %if.end26.i
  tail call void @Perl_sv_catpv(ptr noundef %call.i107, ptr noundef nonnull @.str.420) #8, !dbg !2418
  br label %do.body.i.i.preheader, !dbg !2418

do.body.i.i.preheader:                            ; preds = %if.then31.i, %if.end26.i, %if.end4.i
  br label %do.body.i.i, !dbg !2419

do.body.i.i:                                      ; preds = %do.body.i.i.preheader, %do.cond.i.i
  %start.addr.0.i.i = phi ptr [ %incdec.ptr.i.i, %do.cond.i.i ], [ @pmflags_flags_names, %do.body.i.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i.i, metadata !2428, metadata !DIExpression()) #8, !dbg !2431
  %29 = load i32, ptr %start.addr.0.i.i, align 8, !dbg !2432
  %and.i.i = and i32 %29, %21, !dbg !2435
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !2435
  br i1 %tobool.not.i.i, label %do.cond.i.i, label %if.then.i.i, !dbg !2436

if.then.i.i:                                      ; preds = %do.body.i.i
  %name.i.i = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i.i, i64 0, i32 1, !dbg !2437
  %30 = load ptr, ptr %name.i.i, align 8, !dbg !2437
  tail call void @Perl_sv_catpv(ptr noundef %call.i107, ptr noundef %30) #8, !dbg !2437
  br label %do.cond.i.i, !dbg !2437

do.cond.i.i:                                      ; preds = %if.then.i.i, %do.body.i.i
  %incdec.ptr.i.i = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i.i, i64 1, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i.i, metadata !2428, metadata !DIExpression()) #8, !dbg !2431
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, getelementptr inbounds ([10 x %struct.flag_to_name], ptr @pmflags_flags_names, i64 1, i64 0), !dbg !2439
  br i1 %cmp.i.i, label %do.body.i.i, label %S_pm_description.exit, !dbg !2440, !llvm.loop !2441

S_pm_description.exit:                            ; preds = %do.cond.i.i
  call void @llvm.dbg.value(metadata ptr %call.i107, metadata !2310, metadata !DIExpression()), !dbg !2443
  %31 = load ptr, ptr %call.i107, align 8, !dbg !2444
  %xpv_cur55 = getelementptr inbounds %struct.xpv, ptr %31, i64 0, i32 2, !dbg !2444
  %32 = load i64, ptr %xpv_cur55, align 8, !dbg !2444
  %tobool56.not = icmp eq i64 %32, 0, !dbg !2444
  br i1 %tobool56.not, label %cond.end, label %cond.true, !dbg !2444

cond.true:                                        ; preds = %S_pm_description.exit
  %sv_u = getelementptr inbounds %struct.sv, ptr %call.i107, i64 0, i32 3, !dbg !2445
  %33 = load ptr, ptr %sv_u, align 8, !dbg !2445
  %add.ptr58 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !2446
  br label %cond.end, !dbg !2444

cond.end:                                         ; preds = %S_pm_description.exit, %cond.true
  %cond59 = phi ptr [ %add.ptr58, %cond.true ], [ @.str, %S_pm_description.exit ], !dbg !2444
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond59), !dbg !2447
  call void @llvm.dbg.value(metadata ptr %call.i107, metadata !1952, metadata !DIExpression()) #8, !dbg !2448
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call.i107, i64 0, i32 1, !dbg !2450
  %34 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %34, metadata !1957, metadata !DIExpression()) #8, !dbg !2448
  %cmp.i = icmp ugt i32 %34, 1, !dbg !2451
  br i1 %cmp.i, label %if.then.i108, label %if.else.i, !dbg !2452

if.then.i108:                                     ; preds = %cond.end
  %sub.i = add i32 %34, -1, !dbg !2453
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !2454
  br label %cleanup, !dbg !2455

if.else.i:                                        ; preds = %cond.end
  tail call void @Perl_sv_free2(ptr noundef nonnull %call.i107, i32 noundef %34) #8, !dbg !2456
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %land.lhs.true48, %if.then.i108, %if.else.i, %entry
  %.str.50.sink = phi ptr [ @.str.41, %entry ], [ @.str.50, %if.else.i ], [ @.str.50, %if.then.i108 ], [ @.str.50, %land.lhs.true48 ], [ @.str.50, %lor.lhs.false ]
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull %.str.50.sink), !dbg !2313
  ret void, !dbg !2457
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_op_dump(i32 noundef %level, ptr noundef %file, ptr noundef %o) local_unnamed_addr #0 !dbg !2458 {
entry:
  %len = alloca i64, align 8
  %label_len = alloca i64, align 8
  %label_flags = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %level, metadata !2462, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %file, metadata !2463, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %o, metadata !2464, metadata !DIExpression()), !dbg !2525
  %op_type = getelementptr inbounds %struct.op, ptr %o, i64 0, i32 4, !dbg !2526
  %bf.load = load i16, ptr %op_type, align 8, !dbg !2526
  %bf.clear = and i16 %bf.load, 511, !dbg !2526
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2526
  call void @llvm.dbg.value(metadata i16 %bf.clear, metadata !2466, metadata !DIExpression()), !dbg !2525
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.42), !dbg !2527
  %inc = add nsw i32 %level, 1, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2462, metadata !DIExpression()), !dbg !2525
  %call = tail call fastcc i64 @S_sequence_num(ptr noundef %o), !dbg !2529
  call void @llvm.dbg.value(metadata i64 %call, metadata !2465, metadata !DIExpression()), !dbg !2525
  %tobool.not = icmp eq i64 %call, 0, !dbg !2530
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2532

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.67, i64 noundef %call) #8, !dbg !2533
  br label %if.end, !dbg !2533

if.else:                                          ; preds = %entry
  %call2 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.68) #8, !dbg !2534
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i16, ptr @PL_dumpindent, align 2, !dbg !2535
  %conv3 = zext i16 %0 to i32, !dbg !2535
  %mul = mul nsw i32 %inc, %conv3, !dbg !2536
  %sub = add nsw i32 %mul, -4, !dbg !2537
  %bf.load5 = load i16, ptr %op_type, align 8, !dbg !2538
  %bf.clear6 = and i16 %bf.load5, 511, !dbg !2538
  %cmp = icmp eq i16 %bf.clear6, 380, !dbg !2538
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2538

cond.true:                                        ; preds = %if.end
  %call9 = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %o, i32 noundef 1) #8, !dbg !2538
  br label %cond.end, !dbg !2538

cond.false:                                       ; preds = %if.end
  %idxprom = zext i16 %bf.clear6 to i64, !dbg !2538
  %arrayidx = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %idxprom, !dbg !2538
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !2538
  br label %cond.end, !dbg !2538

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call9, %cond.true ], [ %1, %cond.false ], !dbg !2538
  %call14 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.69, i32 noundef %sub, ptr noundef nonnull @.str, ptr noundef %cond) #8, !dbg !2539
  %2 = load ptr, ptr %o, align 8, !dbg !2540
  %tobool15.not = icmp eq ptr %2, null, !dbg !2542
  br i1 %tobool15.not, label %if.else27, label %if.then16, !dbg !2543

if.then16:                                        ; preds = %cond.end
  %bf.load18 = load i16, ptr %op_type, align 8, !dbg !2544
  %bf.clear19 = and i16 %bf.load18, 511, !dbg !2544
  %cmp21 = icmp eq i16 %bf.clear19, 0, !dbg !2545
  %cond23 = select i1 %cmp21, ptr @.str.70, ptr @.str.71, !dbg !2546
  %call25 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %2), !dbg !2547
  %call26 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull %cond23, i64 noundef %call25) #8, !dbg !2548
  br label %if.end29, !dbg !2548

if.else27:                                        ; preds = %cond.end
  %call28 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.72) #8, !dbg !2549
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then16
  %op_targ = getelementptr inbounds %struct.op, ptr %o, i64 0, i32 3, !dbg !2550
  %3 = load i64, ptr %op_targ, align 8, !dbg !2550
  %tobool30.not = icmp eq i64 %3, 0, !dbg !2552
  br i1 %tobool30.not, label %if.end41, label %if.then31, !dbg !2553

if.then31:                                        ; preds = %if.end29
  %cmp33 = icmp eq i16 %bf.clear, 0, !dbg !2554
  br i1 %cmp33, label %if.then35, label %if.else38, !dbg !2557

if.then35:                                        ; preds = %if.then31
  %arrayidx37 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %3, !dbg !2558
  %4 = load ptr, ptr %arrayidx37, align 8, !dbg !2558
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.73, ptr noundef %4), !dbg !2560
  br label %if.end41, !dbg !2561

if.else38:                                        ; preds = %if.then31
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.74, i64 noundef %3), !dbg !2562
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.else38, %if.end29
  %op_flags = getelementptr inbounds %struct.op, ptr %o, i64 0, i32 5, !dbg !2563
  %5 = load i8, ptr %op_flags, align 2, !dbg !2563
  %tobool43.not = icmp eq i8 %5, 0, !dbg !2564
  br i1 %tobool43.not, label %lor.lhs.false, label %if.then60, !dbg !2565

lor.lhs.false:                                    ; preds = %if.end41
  %bf.load44 = load i16, ptr %op_type, align 8, !dbg !2566
  %6 = and i16 %bf.load44, 7168, !dbg !2567
  %7 = icmp eq i16 %6, 0, !dbg !2567
  br i1 %7, label %if.end112, label %if.then60, !dbg !2567

if.then60:                                        ; preds = %lor.lhs.false, %if.end41
  %call61 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !2568
  call void @llvm.dbg.value(metadata ptr %call61, metadata !2468, metadata !DIExpression()), !dbg !2569
  %8 = load i8, ptr %op_flags, align 2, !dbg !2570
  %9 = and i8 %8, 3, !dbg !2571
  %and = zext i8 %9 to i32, !dbg !2571
  %switch.tableidx = add nsw i32 %and, -1, !dbg !2572
  %10 = icmp ult i32 %switch.tableidx, 3, !dbg !2572
  br i1 %10, label %switch.lookup, label %sw.epilog, !dbg !2572

switch.lookup:                                    ; preds = %if.then60
  %11 = sext i32 %switch.tableidx to i64, !dbg !2572
  %reltable.shift = shl i64 %11, 2, !dbg !2572
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_do_op_dump, i64 %reltable.shift), !dbg !2572
  br label %sw.epilog, !dbg !2572

sw.epilog:                                        ; preds = %if.then60, %switch.lookup
  %.str.78.sink = phi ptr [ %reltable.intrinsic, %switch.lookup ], [ @.str.78, %if.then60 ]
  tail call void @Perl_sv_catpv(ptr noundef %call61, ptr noundef nonnull %.str.78.sink) #8, !dbg !2573
  %12 = load i8, ptr %op_flags, align 2, !dbg !2575
  %conv67 = zext i8 %12 to i32, !dbg !2575
  call void @llvm.dbg.value(metadata ptr %call61, metadata !2426, metadata !DIExpression()) #8, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %conv67, metadata !2427, metadata !DIExpression()) #8, !dbg !2576
  call void @llvm.dbg.value(metadata ptr @op_flags_names, metadata !2428, metadata !DIExpression()) #8, !dbg !2576
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([6 x %struct.flag_to_name], ptr @op_flags_names, i64 1, i64 0), metadata !2429, metadata !DIExpression()) #8, !dbg !2576
  br label %do.body.i, !dbg !2578

do.body.i:                                        ; preds = %do.cond.i, %sw.epilog
  %start.addr.0.i = phi ptr [ @op_flags_names, %sw.epilog ], [ %incdec.ptr.i, %do.cond.i ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i, metadata !2428, metadata !DIExpression()) #8, !dbg !2576
  %13 = load i32, ptr %start.addr.0.i, align 8, !dbg !2579
  %and.i = and i32 %13, %conv67, !dbg !2580
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !2580
  br i1 %tobool.not.i, label %do.cond.i, label %if.then.i, !dbg !2581

if.then.i:                                        ; preds = %do.body.i
  %name.i = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i, i64 0, i32 1, !dbg !2582
  %14 = load ptr, ptr %name.i, align 8, !dbg !2582
  tail call void @Perl_sv_catpv(ptr noundef %call61, ptr noundef %14) #8, !dbg !2582
  br label %do.cond.i, !dbg !2582

do.cond.i:                                        ; preds = %if.then.i, %do.body.i
  %incdec.ptr.i = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i, i64 1, !dbg !2583
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2428, metadata !DIExpression()) #8, !dbg !2576
  %cmp.i = icmp ult ptr %incdec.ptr.i, getelementptr inbounds ([6 x %struct.flag_to_name], ptr @op_flags_names, i64 1, i64 0), !dbg !2584
  br i1 %cmp.i, label %do.body.i, label %S_append_flags.exit, !dbg !2585, !llvm.loop !2586

S_append_flags.exit:                              ; preds = %do.cond.i
  %bf.load69 = load i16, ptr %op_type, align 8, !dbg !2588
  %15 = and i16 %bf.load69, 1024, !dbg !2590
  %tobool73.not = icmp eq i16 %15, 0, !dbg !2590
  br i1 %tobool73.not, label %if.end75, label %if.then74, !dbg !2591

if.then74:                                        ; preds = %S_append_flags.exit
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call61, ptr noundef nonnull @.str.79, i64 noundef 8, i32 noundef 2) #8, !dbg !2592
  %bf.load77.pre = load i16, ptr %op_type, align 8, !dbg !2593
  br label %if.end75, !dbg !2592

if.end75:                                         ; preds = %if.then74, %S_append_flags.exit
  %bf.load77 = phi i16 [ %bf.load77.pre, %if.then74 ], [ %bf.load69, %S_append_flags.exit ], !dbg !2593
  %16 = and i16 %bf.load77, 2048, !dbg !2595
  %tobool81.not = icmp eq i16 %16, 0, !dbg !2595
  br i1 %tobool81.not, label %if.end83, label %if.then82, !dbg !2596

if.then82:                                        ; preds = %if.end75
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call61, ptr noundef nonnull @.str.80, i64 noundef 9, i32 noundef 2) #8, !dbg !2597
  %bf.load85.pre = load i16, ptr %op_type, align 8, !dbg !2598
  br label %if.end83, !dbg !2597

if.end83:                                         ; preds = %if.then82, %if.end75
  %bf.load85 = phi i16 [ %bf.load85.pre, %if.then82 ], [ %bf.load77, %if.end75 ], !dbg !2598
  %17 = and i16 %bf.load85, 4096, !dbg !2600
  %tobool89.not = icmp eq i16 %17, 0, !dbg !2600
  br i1 %tobool89.not, label %if.end91, label %if.then90, !dbg !2601

if.then90:                                        ; preds = %if.end83
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call61, ptr noundef nonnull @.str.81, i64 noundef 7, i32 noundef 2) #8, !dbg !2602
  %bf.load92.pre = load i16, ptr %op_type, align 8, !dbg !2603
  br label %if.end91, !dbg !2602

if.end91:                                         ; preds = %if.then90, %if.end83
  %bf.load92 = phi i16 [ %bf.load92.pre, %if.then90 ], [ %bf.load85, %if.end83 ], !dbg !2603
  %18 = and i16 %bf.load92, 8192, !dbg !2605
  %tobool96.not = icmp eq i16 %18, 0, !dbg !2605
  br i1 %tobool96.not, label %if.end98, label %if.then97, !dbg !2606

if.then97:                                        ; preds = %if.end91
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call61, ptr noundef nonnull @.str.82, i64 noundef 7, i32 noundef 2) #8, !dbg !2607
  %bf.load99.pre = load i16, ptr %op_type, align 8, !dbg !2608
  br label %if.end98, !dbg !2607

if.end98:                                         ; preds = %if.then97, %if.end91
  %bf.load99 = phi i16 [ %bf.load99.pre, %if.then97 ], [ %bf.load92, %if.end91 ], !dbg !2608
  %19 = and i16 %bf.load99, 16384, !dbg !2610
  %tobool103.not = icmp eq i16 %19, 0, !dbg !2610
  br i1 %tobool103.not, label %if.end105, label %if.then104, !dbg !2611

if.then104:                                       ; preds = %if.end98
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call61, ptr noundef nonnull @.str.83, i64 noundef 8, i32 noundef 2) #8, !dbg !2612
  br label %if.end105, !dbg !2612

if.end105:                                        ; preds = %if.then104, %if.end98
  %20 = load ptr, ptr %call61, align 8, !dbg !2613
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %20, i64 0, i32 2, !dbg !2613
  %21 = load i64, ptr %xpv_cur, align 8, !dbg !2613
  %tobool106.not = icmp eq i64 %21, 0, !dbg !2613
  br i1 %tobool106.not, label %cond.end110, label %cond.true107, !dbg !2613

cond.true107:                                     ; preds = %if.end105
  %sv_u = getelementptr inbounds %struct.sv, ptr %call61, i64 0, i32 3, !dbg !2614
  %22 = load ptr, ptr %sv_u, align 8, !dbg !2614
  %add.ptr108 = getelementptr inbounds i8, ptr %22, i64 1, !dbg !2615
  br label %cond.end110, !dbg !2613

cond.end110:                                      ; preds = %if.end105, %cond.true107
  %cond111 = phi ptr [ %add.ptr108, %cond.true107 ], [ @.str, %if.end105 ], !dbg !2613
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.84, ptr noundef nonnull %cond111), !dbg !2616
  br label %if.end112, !dbg !2617

if.end112:                                        ; preds = %lor.lhs.false, %cond.end110
  %op_private = getelementptr inbounds %struct.op, ptr %o, i64 0, i32 6, !dbg !2618
  %23 = load i8, ptr %op_private, align 1, !dbg !2618
  %tobool113.not = icmp eq i8 %23, 0, !dbg !2619
  br i1 %tobool113.not, label %if.end285, label %if.then114, !dbg !2620

if.then114:                                       ; preds = %if.end112
  %conv116 = zext i8 %23 to i16, !dbg !2621
  call void @llvm.dbg.value(metadata i16 %conv116, metadata !2471, metadata !DIExpression()), !dbg !2622
  %bf.load118 = load i16, ptr %op_type, align 8, !dbg !2623
  %bf.clear119 = and i16 %bf.load118, 511, !dbg !2623
  %idxprom121 = zext i16 %bf.clear119 to i64, !dbg !2624
  %arrayidx122 = getelementptr inbounds [0 x i16], ptr @PL_op_private_bitdef_ix, i64 0, i64 %idxprom121, !dbg !2624
  %24 = load i16, ptr %arrayidx122, align 2, !dbg !2624
  call void @llvm.dbg.value(metadata i16 %24, metadata !2474, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr null, metadata !2477, metadata !DIExpression()), !dbg !2622
  %cmp125.not = icmp eq i16 %24, -1, !dbg !2625
  br i1 %cmp125.not, label %if.else282, label %if.then127, !dbg !2626

if.then127:                                       ; preds = %if.then114
  call void @llvm.dbg.value(metadata i16 0, metadata !2478, metadata !DIExpression()), !dbg !2627
  %call128 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !2628
  call void @llvm.dbg.value(metadata ptr %call128, metadata !2477, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i16 %conv116, metadata !2471, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i16 %24, metadata !2474, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i16 0, metadata !2478, metadata !DIExpression()), !dbg !2627
  br label %for.body, !dbg !2629

for.body:                                         ; preds = %if.then127, %cleanup260
  %oppriv.01109 = phi i16 [ %conv116, %if.then127 ], [ %oppriv.3, %cleanup260 ]
  %op_ix.01108 = phi i16 [ %24, %if.then127 ], [ %inc266, %cleanup260 ]
  call void @llvm.dbg.value(metadata i16 %oppriv.01109, metadata !2471, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i16 %op_ix.01108, metadata !2474, metadata !DIExpression()), !dbg !2622
  %idxprom131 = sext i16 %op_ix.01108 to i64, !dbg !2630
  %arrayidx132 = getelementptr inbounds [0 x i16], ptr @PL_op_private_bitdefs, i64 0, i64 %idxprom131, !dbg !2630
  %25 = load i16, ptr %arrayidx132, align 2, !dbg !2630
  call void @llvm.dbg.value(metadata i16 %25, metadata !2481, metadata !DIExpression()), !dbg !2631
  %26 = lshr i16 %25, 2, !dbg !2632
  %and134 = and i16 %26, 7, !dbg !2633
  call void @llvm.dbg.value(metadata i16 %and134, metadata !2485, metadata !DIExpression()), !dbg !2631
  %27 = lshr i16 %25, 5, !dbg !2634
  call void @llvm.dbg.value(metadata i16 %27, metadata !2486, metadata !DIExpression()), !dbg !2631
  %and140 = and i16 %25, 1, !dbg !2635
  call void @llvm.dbg.value(metadata i16 %and140, metadata !2478, metadata !DIExpression()), !dbg !2627
  %28 = and i16 %25, 2, !dbg !2636
  %tobool144.not = icmp eq i16 %28, 0, !dbg !2636
  br i1 %tobool144.not, label %if.else230, label %if.then145, !dbg !2637

if.then145:                                       ; preds = %for.body
  %idxprom146 = zext i16 %27 to i64, !dbg !2638
  %arrayidx147 = getelementptr inbounds [0 x i16], ptr @PL_op_private_bitfields, i64 0, i64 %idxprom146, !dbg !2638
  call void @llvm.dbg.value(metadata ptr %arrayidx147, metadata !2487, metadata !DIExpression()), !dbg !2639
  %incdec.ptr = getelementptr inbounds i16, ptr %arrayidx147, i64 1, !dbg !2640
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2487, metadata !DIExpression()), !dbg !2639
  %29 = load i16, ptr %arrayidx147, align 2, !dbg !2641
  call void @llvm.dbg.value(metadata i16 %29, metadata !2492, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %arrayidx147, metadata !2487, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !2639
  %30 = load i16, ptr %incdec.ptr, align 2, !dbg !2642
  call void @llvm.dbg.value(metadata i16 %30, metadata !2493, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i16 0, metadata !2495, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i16 %29, metadata !2496, metadata !DIExpression()), !dbg !2639
  %cmp152.not1105 = icmp ugt i16 %29, %and134, !dbg !2643
  br i1 %cmp152.not1105, label %for.end, label %for.body154.preheader, !dbg !2646

for.body154.preheader:                            ; preds = %if.then145
  %31 = zext i16 %29 to i32, !dbg !2646
  %32 = add nuw nsw i16 %and134, 1, !dbg !2646
  %wide.trip.count = zext i16 %32 to i32, !dbg !2643
  br label %for.body154, !dbg !2646

for.body154:                                      ; preds = %for.body154.preheader, %for.body154
  %indvars.iv = phi i32 [ %31, %for.body154.preheader ], [ %indvars.iv.next, %for.body154 ]
  %mask.01107 = phi i16 [ 0, %for.body154.preheader ], [ %conv157, %for.body154 ]
  call void @llvm.dbg.value(metadata i16 %mask.01107, metadata !2495, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i32 %indvars.iv, metadata !2496, metadata !DIExpression()), !dbg !2639
  %shl = shl nuw i32 1, %indvars.iv, !dbg !2647
  %33 = trunc i32 %shl to i16, !dbg !2648
  %conv157 = or i16 %mask.01107, %33, !dbg !2648
  call void @llvm.dbg.value(metadata i16 %conv157, metadata !2495, metadata !DIExpression()), !dbg !2639
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1, !dbg !2649
  call void @llvm.dbg.value(metadata i32 %indvars.iv.next, metadata !2496, metadata !DIExpression()), !dbg !2639
  %exitcond = icmp eq i32 %indvars.iv.next, %wide.trip.count, !dbg !2643
  br i1 %exitcond, label %for.end, label %for.body154, !dbg !2646, !llvm.loop !2650

for.end:                                          ; preds = %for.body154, %if.then145
  %mask.0.lcssa = phi i16 [ 0, %if.then145 ], [ %conv157, %for.body154 ], !dbg !2639
  call void @llvm.dbg.value(metadata i16 %29, metadata !2485, metadata !DIExpression()), !dbg !2631
  %and1611075 = and i16 %mask.0.lcssa, %oppriv.01109, !dbg !2652
  call void @llvm.dbg.value(metadata i16 %and1611075, metadata !2497, metadata !DIExpression()), !dbg !2639
  %conv163 = sext i16 %30 to i64, !dbg !2653
  %cmp164.not = icmp eq i16 %30, -1, !dbg !2655
  br i1 %cmp164.not, label %if.end179, label %land.lhs.true, !dbg !2656

land.lhs.true:                                    ; preds = %for.end
  %arrayidx167 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %conv163, !dbg !2657
  %34 = load i8, ptr %arrayidx167, align 1, !dbg !2657
  %cmp169 = icmp eq i8 %34, 45, !dbg !2658
  br i1 %cmp169, label %land.lhs.true171, label %if.end179, !dbg !2659

land.lhs.true171:                                 ; preds = %land.lhs.true
  %add = add nsw i64 %conv163, 1, !dbg !2660
  %arrayidx174 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %add, !dbg !2661
  %35 = load i8, ptr %arrayidx174, align 1, !dbg !2661
  %cmp176 = icmp eq i8 %35, 0, !dbg !2662
  br i1 %cmp176, label %cleanup260, label %if.end179, !dbg !2663

if.end179:                                        ; preds = %land.lhs.true171, %land.lhs.true, %for.end
  %conv180 = zext i16 %and1611075 to i32, !dbg !2664
  %sub182 = sub i16 %oppriv.01109, %and1611075, !dbg !2665
  call void @llvm.dbg.value(metadata i16 %sub182, metadata !2471, metadata !DIExpression()), !dbg !2622
  %conv184 = zext i16 %29 to i32, !dbg !2666
  %shr186 = lshr i32 %conv180, %conv184, !dbg !2667
  call void @llvm.dbg.value(metadata i32 %shr186, metadata !2497, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2639
  call void @llvm.dbg.value(metadata i16 -1, metadata !2494, metadata !DIExpression()), !dbg !2639
  br label %while.cond, !dbg !2668

while.cond:                                       ; preds = %while.body, %if.end179
  %arrayidx147.pn = phi ptr [ %arrayidx147, %if.end179 ], [ %p.0, %while.body ]
  %p.0 = getelementptr inbounds i16, ptr %arrayidx147.pn, i64 2, !dbg !2639
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2487, metadata !DIExpression()), !dbg !2639
  %36 = load i16, ptr %p.0, align 2, !dbg !2669
  %cmp189.not = icmp eq i16 %36, -1, !dbg !2670
  br i1 %cmp189.not, label %while.end, label %while.body, !dbg !2668

while.body:                                       ; preds = %while.cond
  %conv188 = sext i16 %36 to i32, !dbg !2669
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !2487, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !2639
  %cmp194 = icmp eq i32 %shr186, %conv188, !dbg !2671
  br i1 %cmp194, label %if.then196, label %while.cond, !dbg !2674, !llvm.loop !2675

if.then196:                                       ; preds = %while.body
  %incdec.ptr192 = getelementptr inbounds i16, ptr %arrayidx147.pn, i64 3, !dbg !2677
  call void @llvm.dbg.value(metadata ptr %incdec.ptr192, metadata !2487, metadata !DIExpression()), !dbg !2639
  %37 = load i16, ptr %incdec.ptr192, align 2, !dbg !2678
  call void @llvm.dbg.value(metadata i16 %37, metadata !2494, metadata !DIExpression()), !dbg !2639
  br label %while.end, !dbg !2680

while.end:                                        ; preds = %while.cond, %if.then196
  %enum_label.0 = phi i16 [ %37, %if.then196 ], [ -1, %while.cond ], !dbg !2639
  call void @llvm.dbg.value(metadata i16 %enum_label.0, metadata !2494, metadata !DIExpression()), !dbg !2639
  %cmp200 = icmp eq i32 %shr186, 0, !dbg !2681
  %cmp204 = icmp eq i16 %enum_label.0, -1
  %or.cond = select i1 %cmp200, i1 %cmp204, i1 false, !dbg !2683
  br i1 %or.cond, label %cleanup260, label %if.end207, !dbg !2683

if.end207:                                        ; preds = %while.end
  tail call void @Perl_sv_catpv(ptr noundef %call128, ptr noundef nonnull @.str.85) #8, !dbg !2684
  br i1 %cmp164.not, label %if.end214, label %if.then211, !dbg !2685

if.then211:                                       ; preds = %if.end207
  %arrayidx213 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %conv163, !dbg !2686
  tail call void @Perl_sv_catpv(ptr noundef %call128, ptr noundef nonnull %arrayidx213) #8, !dbg !2686
  tail call void @Perl_sv_catpv(ptr noundef %call128, ptr noundef nonnull @.str.86) #8, !dbg !2689
  br label %if.end214, !dbg !2690

if.end214:                                        ; preds = %if.then211, %if.end207
  br i1 %cmp204, label %if.then218, label %if.else220, !dbg !2691

if.then218:                                       ; preds = %if.end214
  %conv219 = zext i32 %shr186 to i64, !dbg !2692
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call128, ptr noundef nonnull @.str.87, i64 noundef %conv219) #8, !dbg !2694
  br label %cleanup260, !dbg !2694

if.else220:                                       ; preds = %if.end214
  %idxprom221 = sext i16 %enum_label.0 to i64, !dbg !2695
  %arrayidx222 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %idxprom221, !dbg !2695
  tail call void @Perl_sv_catpv(ptr noundef %call128, ptr noundef nonnull %arrayidx222) #8, !dbg !2695
  br label %cleanup260

if.else230:                                       ; preds = %for.body
  %conv231 = zext i16 %oppriv.01109 to i32, !dbg !2696
  %conv232 = zext i16 %and134 to i32, !dbg !2699
  %shl233 = shl nuw nsw i32 1, %conv232, !dbg !2700
  %and234 = and i32 %shl233, %conv231, !dbg !2701
  %tobool235.not = icmp eq i32 %and234, 0, !dbg !2701
  br i1 %tobool235.not, label %cleanup260, label %land.lhs.true236, !dbg !2702

land.lhs.true236:                                 ; preds = %if.else230
  %idxprom237 = zext i16 %27 to i64, !dbg !2703
  %arrayidx238 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %idxprom237, !dbg !2703
  %38 = load i8, ptr %arrayidx238, align 1, !dbg !2703
  %cmp240 = icmp eq i8 %38, 45, !dbg !2704
  br i1 %cmp240, label %land.lhs.true242, label %if.then250, !dbg !2705

land.lhs.true242:                                 ; preds = %land.lhs.true236
  %narrow = add nuw nsw i16 %27, 1, !dbg !2706
  %39 = zext i16 %narrow to i64
  %arrayidx246 = getelementptr inbounds [0 x i8], ptr @PL_op_private_labels, i64 0, i64 %39, !dbg !2707
  %40 = load i8, ptr %arrayidx246, align 1, !dbg !2707
  %cmp248 = icmp eq i8 %40, 0, !dbg !2708
  br i1 %cmp248, label %cleanup260, label %if.then250, !dbg !2709

if.then250:                                       ; preds = %land.lhs.true242, %land.lhs.true236
  %41 = trunc i32 %shl233 to i16, !dbg !2710
  %conv255 = sub i16 %oppriv.01109, %41, !dbg !2710
  call void @llvm.dbg.value(metadata i16 %conv255, metadata !2471, metadata !DIExpression()), !dbg !2622
  tail call void @Perl_sv_catpv(ptr noundef %call128, ptr noundef nonnull @.str.85) #8, !dbg !2712
  tail call void @Perl_sv_catpv(ptr noundef %call128, ptr noundef nonnull %arrayidx238) #8, !dbg !2713
  br label %cleanup260, !dbg !2714

cleanup260:                                       ; preds = %land.lhs.true171, %while.end, %if.else220, %if.then218, %if.then250, %land.lhs.true242, %if.else230
  %oppriv.3 = phi i16 [ %oppriv.01109, %land.lhs.true242 ], [ %conv255, %if.then250 ], [ %oppriv.01109, %if.else230 ], [ %oppriv.01109, %land.lhs.true171 ], [ %sub182, %while.end ], [ %sub182, %if.else220 ], [ %sub182, %if.then218 ], !dbg !2715
  call void @llvm.dbg.value(metadata i16 %oppriv.3, metadata !2471, metadata !DIExpression()), !dbg !2622
  %inc266 = add i16 %op_ix.01108, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i16 %inc266, metadata !2474, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i16 %and140, metadata !2478, metadata !DIExpression()), !dbg !2627
  %tobool129.not = icmp eq i16 %and140, 0, !dbg !2717
  br i1 %tobool129.not, label %for.body, label %for.end267, !dbg !2629, !llvm.loop !2718

for.end267:                                       ; preds = %cleanup260
  %tobool268.not = icmp eq i16 %oppriv.3, 0, !dbg !2720
  br i1 %tobool268.not, label %if.end272, label %if.then269, !dbg !2722

if.then269:                                       ; preds = %for.end267
  tail call void @Perl_sv_catpv(ptr noundef %call128, ptr noundef nonnull @.str.85) #8, !dbg !2723
  %conv270 = zext i16 %oppriv.3 to i64, !dbg !2725
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call128, ptr noundef nonnull @.str.87, i64 noundef %conv270) #8, !dbg !2726
  br label %if.end272, !dbg !2727

if.end272:                                        ; preds = %for.end267, %if.then269
  call void @llvm.dbg.value(metadata i16 %oppriv.3, metadata !2471, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata ptr %call128, metadata !2477, metadata !DIExpression()), !dbg !2622
  %tobool273.not = icmp eq ptr %call128, null, !dbg !2728
  br i1 %tobool273.not, label %if.else282, label %land.lhs.true274, !dbg !2730

land.lhs.true274:                                 ; preds = %if.end272
  %42 = load ptr, ptr %call128, align 8, !dbg !2731
  %xpv_cur276 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2, !dbg !2731
  %43 = load i64, ptr %xpv_cur276, align 8, !dbg !2731
  %tobool277.not = icmp eq i64 %43, 0, !dbg !2731
  br i1 %tobool277.not, label %if.else282, label %if.then278, !dbg !2732

if.then278:                                       ; preds = %land.lhs.true274
  %sv_u279 = getelementptr inbounds %struct.sv, ptr %call128, i64 0, i32 3, !dbg !2733
  %44 = load ptr, ptr %sv_u279, align 8, !dbg !2733
  %add.ptr281 = getelementptr inbounds i8, ptr %44, i64 1, !dbg !2735
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.88, ptr noundef nonnull %add.ptr281), !dbg !2736
  br label %if.end285, !dbg !2737

if.else282:                                       ; preds = %if.then114, %land.lhs.true274, %if.end272
  %oppriv.41081 = phi i16 [ %oppriv.3, %land.lhs.true274 ], [ %oppriv.3, %if.end272 ], [ %conv116, %if.then114 ]
  %conv283 = zext i16 %oppriv.41081 to i64, !dbg !2738
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.89, i64 noundef %conv283), !dbg !2739
  br label %if.end285

if.end285:                                        ; preds = %if.then278, %if.else282, %if.end112
  switch i32 %bf.cast, label %sw.epilog782 [
    i32 136, label %sw.bb287
    i32 6, label %sw.bb287
    i32 7, label %sw.bb287
    i32 153, label %sw.bb322
    i32 5, label %sw.bb334
    i32 341, label %sw.bb334
    i32 210, label %sw.bb334
    i32 211, label %sw.bb334
    i32 212, label %sw.bb334
    i32 213, label %sw.bb334
    i32 0, label %sw.bb337
    i32 193, label %sw.bb347
    i32 194, label %sw.bb347
    i32 201, label %sw.bb738
    i32 180, label %sw.bb763
    i32 173, label %sw.bb763
    i32 172, label %sw.bb763
    i32 170, label %sw.bb763
    i32 177, label %sw.bb763
    i32 176, label %sw.bb763
    i32 13, label %sw.bb772
    i32 31, label %sw.bb772
    i32 32, label %sw.bb772
    i32 33, label %sw.bb772
    i32 197, label %sw.bb773
    i32 343, label %sw.bb773
    i32 186, label %sw.bb773
    i32 187, label %sw.bb773
    i32 236, label %sw.bb773
    i32 198, label %sw.bb773
  ], !dbg !2740

sw.bb287:                                         ; preds = %if.end285, %if.end285, %if.end285
  %45 = load i8, ptr %op_flags, align 2, !dbg !2741
  %tobool291.not = icmp sgt i8 %45, -1, !dbg !2742
  br i1 %tobool291.not, label %if.then292, label %sw.epilog782, !dbg !2743

if.then292:                                       ; preds = %sw.bb287
  %op_sv = getelementptr inbounds %struct.svop, ptr %o, i64 0, i32 7, !dbg !2744
  %46 = load ptr, ptr %op_sv, align 8, !dbg !2744
  %tobool293.not = icmp eq ptr %46, null, !dbg !2745
  br i1 %tobool293.not, label %if.else319, label %if.then294, !dbg !2746

if.then294:                                       ; preds = %if.then292
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8, !dbg !2747
  %call296 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !2748
  call void @llvm.dbg.value(metadata ptr %call296, metadata !2505, metadata !DIExpression()), !dbg !2749
  %call297 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !2750
  call void @llvm.dbg.value(metadata ptr %call297, metadata !2506, metadata !DIExpression()), !dbg !2749
  %47 = load ptr, ptr %op_sv, align 8, !dbg !2751
  tail call void @Perl_gv_fullname4(ptr noundef %call296, ptr noundef %47, ptr noundef null, i1 noundef zeroext true) #8, !dbg !2751
  %sv_flags = getelementptr inbounds %struct.sv, ptr %call296, i64 0, i32 2, !dbg !2752
  %48 = load i32, ptr %sv_flags, align 4, !dbg !2752
  %and299 = and i32 %48, 2098176, !dbg !2752
  %cmp300 = icmp eq i32 %and299, 1024, !dbg !2752
  br i1 %cmp300, label %cond.true302, label %cond.false307, !dbg !2752

cond.true302:                                     ; preds = %if.then294
  %49 = load ptr, ptr %call296, align 8, !dbg !2752
  %xpv_cur304 = getelementptr inbounds %struct.xpv, ptr %49, i64 0, i32 2, !dbg !2752
  %50 = load i64, ptr %xpv_cur304, align 8, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %50, metadata !2498, metadata !DIExpression()), !dbg !2749
  store i64 %50, ptr %len, align 8, !dbg !2752
  %sv_u305 = getelementptr inbounds %struct.sv, ptr %call296, i64 0, i32 3, !dbg !2752
  %51 = load ptr, ptr %sv_u305, align 8, !dbg !2752
  br label %cond.end309, !dbg !2752

cond.false307:                                    ; preds = %if.then294
  call void @llvm.dbg.value(metadata ptr %len, metadata !2498, metadata !DIExpression(DW_OP_deref)), !dbg !2749
  %call308 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call296, ptr noundef nonnull %len, i32 noundef 34) #8, !dbg !2752
  %.pre = load i64, ptr %len, align 8, !dbg !2753
  %.pre1128 = load i32, ptr %sv_flags, align 4, !dbg !2753
  br label %cond.end309, !dbg !2752

cond.end309:                                      ; preds = %cond.false307, %cond.true302
  %52 = phi i32 [ %48, %cond.true302 ], [ %.pre1128, %cond.false307 ], !dbg !2753
  %53 = phi i64 [ %50, %cond.true302 ], [ %.pre, %cond.false307 ], !dbg !2753
  %cond310 = phi ptr [ %51, %cond.true302 ], [ %call308, %cond.false307 ], !dbg !2752
  call void @llvm.dbg.value(metadata ptr %cond310, metadata !2504, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %53, metadata !2498, metadata !DIExpression()), !dbg !2749
  %mul311 = mul i64 %53, 17, !dbg !2753
  %add312 = add i64 %mul311, 1, !dbg !2753
  %and314 = lshr i32 %52, 21, !dbg !2753
  %54 = and i32 %and314, 256, !dbg !2753
  %or317 = or i32 %54, 66560, !dbg !2753
  %call318 = call ptr @Perl_pv_escape(ptr noundef %call297, ptr noundef %cond310, i64 noundef %53, i64 noundef %add312, ptr noundef null, i32 noundef %or317), !dbg !2753
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.90, ptr noundef %call318), !dbg !2754
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !2755
  br label %sw.epilog782, !dbg !2756

if.else319:                                       ; preds = %if.then292
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.91), !dbg !2757
  br label %sw.epilog782

sw.bb322:                                         ; preds = %if.end285
  %op_aux = getelementptr inbounds %struct.unop_aux, ptr %o, i64 0, i32 8, !dbg !2758
  %55 = load ptr, ptr %op_aux, align 8, !dbg !2758
  call void @llvm.dbg.value(metadata ptr %55, metadata !2507, metadata !DIExpression()), !dbg !2759
  %arrayidx324 = getelementptr inbounds %union.UNOP_AUX_item, ptr %55, i64 -1, !dbg !2760
  %56 = load i64, ptr %arrayidx324, align 8, !dbg !2761
  call void @llvm.dbg.value(metadata i64 %56, metadata !2510, metadata !DIExpression()), !dbg !2759
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.92), !dbg !2762
  call void @llvm.dbg.value(metadata i64 0, metadata !2509, metadata !DIExpression()), !dbg !2759
  %cmp3261112.not = icmp eq i64 %56, 0, !dbg !2763
  br i1 %cmp3261112.not, label %sw.bb334, label %for.body328.lr.ph, !dbg !2766

for.body328.lr.ph:                                ; preds = %sw.bb322
  %add329 = add nsw i32 %level, 2
  br label %for.body328, !dbg !2766

for.body328:                                      ; preds = %for.body328.lr.ph, %for.body328
  %i323.01113 = phi i64 [ 0, %for.body328.lr.ph ], [ %inc332, %for.body328 ]
  call void @llvm.dbg.value(metadata i64 %i323.01113, metadata !2509, metadata !DIExpression()), !dbg !2759
  %arrayidx330 = getelementptr inbounds %union.UNOP_AUX_item, ptr %55, i64 %i323.01113, !dbg !2767
  %57 = load i64, ptr %arrayidx330, align 8, !dbg !2768
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add329, ptr noundef %file, ptr noundef nonnull @.str.93, i64 noundef %i323.01113, i64 noundef %57), !dbg !2769
  %inc332 = add nuw i64 %i323.01113, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %inc332, metadata !2509, metadata !DIExpression()), !dbg !2759
  %exitcond1119.not = icmp eq i64 %inc332, %56, !dbg !2763
  br i1 %exitcond1119.not, label %sw.bb334, label %for.body328, !dbg !2766, !llvm.loop !2771

sw.bb334:                                         ; preds = %for.body328, %sw.bb322, %if.end285, %if.end285, %if.end285, %if.end285, %if.end285, %if.end285
  %op_sv335 = getelementptr inbounds %struct.svop, ptr %o, i64 0, i32 7, !dbg !2773
  %58 = load ptr, ptr %op_sv335, align 8, !dbg !2773
  %call336 = tail call ptr @Perl_sv_peek(ptr noundef %58), !dbg !2773
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.94, ptr noundef %call336), !dbg !2774
  br label %sw.epilog782, !dbg !2775

sw.bb337:                                         ; preds = %if.end285
  %59 = load i64, ptr %op_targ, align 8, !dbg !2776
  %.off = add i64 %59, -193, !dbg !2778
  %switch = icmp ult i64 %.off, 2, !dbg !2778
  br i1 %switch, label %sw.bb347, label %sw.epilog782, !dbg !2778

sw.bb347:                                         ; preds = %sw.bb337, %if.end285, %if.end285
  %cop_line = getelementptr inbounds %struct.cop, ptr %o, i64 0, i32 7, !dbg !2779
  %60 = load i32, ptr %cop_line, align 4, !dbg !2779
  %tobool348.not = icmp eq i32 %60, 0, !dbg !2779
  br i1 %tobool348.not, label %if.end352, label %if.then349, !dbg !2781

if.then349:                                       ; preds = %sw.bb347
  %conv351 = zext i32 %60 to i64, !dbg !2782
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.95, i64 noundef %conv351), !dbg !2783
  br label %if.end352, !dbg !2783

if.end352:                                        ; preds = %if.then349, %sw.bb347
  %cop_stash = getelementptr inbounds %struct.cop, ptr %o, i64 0, i32 8, !dbg !2784
  %61 = load ptr, ptr %cop_stash, align 8, !dbg !2784
  %tobool353.not = icmp eq ptr %61, null, !dbg !2784
  br i1 %tobool353.not, label %if.end722, label %cond.true354, !dbg !2785

cond.true354:                                     ; preds = %if.end352
  %sv_flags356 = getelementptr inbounds %struct.hv, ptr %61, i64 0, i32 2, !dbg !2784
  %62 = load i32, ptr %sv_flags356, align 4, !dbg !2784
  %and357 = and i32 %62, 33554432, !dbg !2784
  %tobool358.not = icmp eq i32 %and357, 0, !dbg !2784
  br i1 %tobool358.not, label %if.end722, label %land.lhs.true359, !dbg !2784

land.lhs.true359:                                 ; preds = %cond.true354
  %sv_u361 = getelementptr inbounds %struct.hv, ptr %61, i64 0, i32 3, !dbg !2784
  %63 = load ptr, ptr %sv_u361, align 8, !dbg !2784
  %64 = load ptr, ptr %61, align 8, !dbg !2784
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %64, i64 0, i32 3, !dbg !2784
  %65 = load i64, ptr %xhv_max, align 8, !dbg !2784
  %add364 = add i64 %65, 1, !dbg !2784
  %arrayidx365 = getelementptr inbounds ptr, ptr %63, i64 %add364, !dbg !2784
  %66 = load ptr, ptr %arrayidx365, align 8, !dbg !2784
  %tobool366.not = icmp eq ptr %66, null, !dbg !2784
  br i1 %tobool366.not, label %if.end722, label %land.lhs.true367, !dbg !2784

land.lhs.true367:                                 ; preds = %land.lhs.true359
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx365, i64 0, i32 4, !dbg !2784
  %67 = load i32, ptr %xhv_name_count, align 4, !dbg !2784
  %tobool375.not = icmp eq i32 %67, 0, !dbg !2784
  br i1 %tobool375.not, label %if.then429, label %cond.true376, !dbg !2784

cond.true376:                                     ; preds = %land.lhs.true367
  %68 = load ptr, ptr %66, align 8, !dbg !2784
  %tobool385.not = icmp eq ptr %68, null, !dbg !2784
  br i1 %tobool385.not, label %if.end722, label %if.then429, !dbg !2784

if.then429:                                       ; preds = %land.lhs.true367, %cond.true376
  %call431 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !2786
  call void @llvm.dbg.value(metadata ptr %call431, metadata !2511, metadata !DIExpression()), !dbg !2787
  %69 = load ptr, ptr %cop_stash, align 8, !dbg !2788
  call void @llvm.dbg.value(metadata ptr %69, metadata !2514, metadata !DIExpression()), !dbg !2787
  %sv_flags433 = getelementptr inbounds %struct.hv, ptr %69, i64 0, i32 2, !dbg !2789
  %70 = load i32, ptr %sv_flags433, align 4, !dbg !2789
  %and434 = and i32 %70, 33554432, !dbg !2789
  %tobool435.not = icmp eq i32 %and434, 0, !dbg !2789
  br i1 %tobool435.not, label %cond.end716, label %land.lhs.true436, !dbg !2789

land.lhs.true436:                                 ; preds = %if.then429
  %sv_u437 = getelementptr inbounds %struct.hv, ptr %69, i64 0, i32 3, !dbg !2789
  %71 = load ptr, ptr %sv_u437, align 8, !dbg !2789
  %72 = load ptr, ptr %69, align 8, !dbg !2789
  %xhv_max439 = getelementptr inbounds %struct.xpvhv, ptr %72, i64 0, i32 3, !dbg !2789
  %73 = load i64, ptr %xhv_max439, align 8, !dbg !2789
  %add440 = add i64 %73, 1, !dbg !2789
  %arrayidx441 = getelementptr inbounds ptr, ptr %71, i64 %add440, !dbg !2789
  %74 = load ptr, ptr %arrayidx441, align 8, !dbg !2789
  %tobool443.not = icmp eq ptr %74, null, !dbg !2789
  br i1 %tobool443.not, label %cond.end716, label %land.lhs.true444, !dbg !2789

land.lhs.true444:                                 ; preds = %land.lhs.true436
  %xhv_name_count450 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx441, i64 0, i32 4, !dbg !2789
  %75 = load i32, ptr %xhv_name_count450, align 4, !dbg !2789
  %tobool451.not = icmp eq i32 %75, 0, !dbg !2789
  br i1 %tobool451.not, label %cond.end708, label %cond.true452, !dbg !2789

cond.true452:                                     ; preds = %land.lhs.true444
  %76 = load ptr, ptr %74, align 8, !dbg !2789
  %tobool459.not = icmp eq ptr %76, null, !dbg !2789
  br i1 %tobool459.not, label %cond.end716, label %cond.end708, !dbg !2789

cond.end708:                                      ; preds = %cond.true452, %land.lhs.true444
  %.pn = phi ptr [ %74, %land.lhs.true444 ], [ %76, %cond.true452 ]
  %cond622.ph.ph1181.in.in.in.in = getelementptr inbounds %struct.hek, ptr %.pn, i64 0, i32 1, !dbg !2790
  %cond622.ph.ph1181.in.in.in = load i32, ptr %cond622.ph.ph1181.in.in.in.in, align 4, !dbg !2790
  %idx.ext.pre-phi = sext i32 %cond622.ph.ph1181.in.in.in to i64, !dbg !2790
  %cond496.ph.ph1152 = getelementptr inbounds %struct.hek, ptr %.pn, i64 0, i32 2, !dbg !2789
  %cond622.ph.ph1181.in.in = mul i32 %cond622.ph.ph1181.in.in.in, 17, !dbg !2790
  %cond622.ph.ph1181.in = add i32 %cond622.ph.ph1181.in.in, 1, !dbg !2790
  %cond622.ph.ph1181 = sext i32 %cond622.ph.ph1181.in to i64, !dbg !2790
  %hek_key6851103 = getelementptr inbounds %struct.hek, ptr %.pn, i64 0, i32 2, !dbg !2790
  %add.ptr711 = getelementptr inbounds i8, ptr %hek_key6851103, i64 %idx.ext.pre-phi, !dbg !2790
  %add.ptr712 = getelementptr inbounds i8, ptr %add.ptr711, i64 1, !dbg !2790
  %77 = load i8, ptr %add.ptr712, align 1, !dbg !2790
  %conv713 = zext i8 %77 to i32, !dbg !2790
  %and714 = shl nuw nsw i32 %conv713, 8, !dbg !2790
  %78 = and i32 %and714, 256, !dbg !2790
  %phi.bo1074 = or i32 %78, 66560, !dbg !2790
  br label %cond.end716, !dbg !2790

cond.end716:                                      ; preds = %cond.true452, %land.lhs.true436, %if.then429, %cond.end708
  %cond6221099 = phi i64 [ %cond622.ph.ph1181, %cond.end708 ], [ 1, %if.then429 ], [ 1, %land.lhs.true436 ], [ 1, %cond.true452 ]
  %cond496108410881097 = phi ptr [ %cond496.ph.ph1152, %cond.end708 ], [ null, %if.then429 ], [ null, %land.lhs.true436 ], [ null, %cond.true452 ]
  %cond55810901095 = phi i64 [ %idx.ext.pre-phi, %cond.end708 ], [ 0, %if.then429 ], [ 0, %land.lhs.true436 ], [ 0, %cond.true452 ]
  %cond717 = phi i32 [ %phi.bo1074, %cond.end708 ], [ 66560, %if.then429 ], [ 66560, %land.lhs.true436 ], [ 66560, %cond.true452 ]
  %call721 = tail call ptr @Perl_pv_escape(ptr noundef %call431, ptr noundef %cond496108410881097, i64 noundef %cond55810901095, i64 noundef %cond6221099, ptr noundef null, i32 noundef %cond717), !dbg !2790
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.96, ptr noundef %call721), !dbg !2791
  br label %if.end722, !dbg !2792

if.end722:                                        ; preds = %if.end352, %cond.true354, %land.lhs.true359, %cond.true376, %cond.end716
  %call723 = tail call ptr @Perl_cop_fetch_label(ptr noundef nonnull %o, ptr noundef null, ptr noundef null) #8, !dbg !2793
  %tobool724.not = icmp eq ptr %call723, null, !dbg !2793
  br i1 %tobool724.not, label %if.end737, label %if.then725, !dbg !2794

if.then725:                                       ; preds = %if.end722
  %call727 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !2795
  call void @llvm.dbg.value(metadata ptr %call727, metadata !2516, metadata !DIExpression()), !dbg !2796
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %label_len) #8, !dbg !2797
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %label_flags) #8, !dbg !2798
  call void @llvm.dbg.value(metadata ptr %label_len, metadata !2519, metadata !DIExpression(DW_OP_deref)), !dbg !2796
  call void @llvm.dbg.value(metadata ptr %label_flags, metadata !2520, metadata !DIExpression(DW_OP_deref)), !dbg !2796
  %call729 = call ptr @Perl_cop_fetch_label(ptr noundef nonnull %o, ptr noundef nonnull %label_len, ptr noundef nonnull %label_flags) #8, !dbg !2799
  call void @llvm.dbg.value(metadata ptr %call729, metadata !2521, metadata !DIExpression()), !dbg !2796
  %79 = load i64, ptr %label_len, align 8, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %79, metadata !2519, metadata !DIExpression()), !dbg !2796
  %mul730 = mul i64 %79, 17, !dbg !2800
  %add731 = add i64 %mul730, 1, !dbg !2800
  %80 = load i32, ptr %label_flags, align 4, !dbg !2800
  call void @llvm.dbg.value(metadata i32 %80, metadata !2520, metadata !DIExpression()), !dbg !2796
  %and732 = lshr i32 %80, 21, !dbg !2800
  %81 = and i32 %and732, 256, !dbg !2800
  %or735 = or i32 %81, 66560, !dbg !2800
  %call736 = call ptr @Perl_pv_escape(ptr noundef %call727, ptr noundef %call729, i64 noundef %79, i64 noundef %add731, ptr noundef null, i32 noundef %or735), !dbg !2800
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.97, ptr noundef %call736), !dbg !2801
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label_flags) #8, !dbg !2802
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %label_len) #8, !dbg !2802
  br label %if.end737, !dbg !2803

if.end737:                                        ; preds = %if.then725, %if.end722
  %cop_seq = getelementptr inbounds %struct.cop, ptr %o, i64 0, i32 11, !dbg !2804
  %82 = load i32, ptr %cop_seq, align 4, !dbg !2804
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.98, i32 noundef %82), !dbg !2805
  br label %sw.epilog782, !dbg !2806

sw.bb738:                                         ; preds = %if.end285
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.99), !dbg !2807
  %op_redoop = getelementptr inbounds %struct.loop, ptr %o, i64 0, i32 9, !dbg !2808
  %83 = load ptr, ptr %op_redoop, align 8, !dbg !2808
  %tobool739.not = icmp eq ptr %83, null, !dbg !2810
  br i1 %tobool739.not, label %if.else744, label %if.then740, !dbg !2811

if.then740:                                       ; preds = %sw.bb738
  %call742 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %83), !dbg !2812
  %call743 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.71, i64 noundef %call742) #8, !dbg !2813
  br label %if.end746, !dbg !2813

if.else744:                                       ; preds = %sw.bb738
  %call745 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.100) #8, !dbg !2814
  br label %if.end746

if.end746:                                        ; preds = %if.else744, %if.then740
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.101), !dbg !2815
  %op_nextop = getelementptr inbounds %struct.loop, ptr %o, i64 0, i32 10, !dbg !2816
  %84 = load ptr, ptr %op_nextop, align 8, !dbg !2816
  %tobool747.not = icmp eq ptr %84, null, !dbg !2818
  br i1 %tobool747.not, label %if.else752, label %if.then748, !dbg !2819

if.then748:                                       ; preds = %if.end746
  %call750 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %84), !dbg !2820
  %call751 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.71, i64 noundef %call750) #8, !dbg !2821
  br label %if.end754, !dbg !2821

if.else752:                                       ; preds = %if.end746
  %call753 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.100) #8, !dbg !2822
  br label %if.end754

if.end754:                                        ; preds = %if.else752, %if.then748
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.102), !dbg !2823
  %op_lastop = getelementptr inbounds %struct.loop, ptr %o, i64 0, i32 11, !dbg !2824
  %85 = load ptr, ptr %op_lastop, align 8, !dbg !2824
  %tobool755.not = icmp eq ptr %85, null, !dbg !2826
  br i1 %tobool755.not, label %if.else760, label %if.then756, !dbg !2827

if.then756:                                       ; preds = %if.end754
  %call758 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %85), !dbg !2828
  %call759 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.71, i64 noundef %call758) #8, !dbg !2829
  br label %sw.epilog782, !dbg !2829

if.else760:                                       ; preds = %if.end754
  %call761 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.100) #8, !dbg !2830
  br label %sw.epilog782

sw.bb763:                                         ; preds = %if.end285, %if.end285, %if.end285, %if.end285, %if.end285, %if.end285
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.103), !dbg !2831
  %op_other = getelementptr inbounds %struct.logop, ptr %o, i64 0, i32 8, !dbg !2832
  %86 = load ptr, ptr %op_other, align 8, !dbg !2832
  %tobool764.not = icmp eq ptr %86, null, !dbg !2834
  br i1 %tobool764.not, label %if.else769, label %if.then765, !dbg !2835

if.then765:                                       ; preds = %sw.bb763
  %call767 = tail call fastcc i64 @S_sequence_num(ptr noundef nonnull %86), !dbg !2836
  %call768 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.71, i64 noundef %call767) #8, !dbg !2837
  br label %sw.epilog782, !dbg !2837

if.else769:                                       ; preds = %sw.bb763
  %call770 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.100) #8, !dbg !2838
  br label %sw.epilog782

sw.bb772:                                         ; preds = %if.end285, %if.end285, %if.end285, %if.end285
  tail call void @Perl_do_pmop_dump(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull %o), !dbg !2839
  br label %sw.epilog782, !dbg !2840

sw.bb773:                                         ; preds = %if.end285, %if.end285, %if.end285, %if.end285, %if.end285, %if.end285
  %87 = load i8, ptr %op_private, align 1, !dbg !2841
  %88 = and i8 %87, 64, !dbg !2843
  %tobool777.not = icmp eq i8 %88, 0, !dbg !2843
  br i1 %tobool777.not, label %sw.epilog782, label %if.then778, !dbg !2844

if.then778:                                       ; preds = %sw.bb773
  %89 = load i64, ptr %op_targ, align 8, !dbg !2845
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull @.str.104, i64 noundef %89), !dbg !2846
  br label %sw.epilog782, !dbg !2846

sw.epilog782:                                     ; preds = %sw.bb337, %if.end285, %sw.bb773, %if.then778, %if.then765, %if.else769, %if.then756, %if.else760, %sw.bb287, %if.else319, %cond.end309, %sw.bb772, %if.end737, %sw.bb334
  %90 = load i8, ptr %op_flags, align 2, !dbg !2847
  %91 = and i8 %90, 4, !dbg !2848
  %tobool786.not = icmp eq i8 %91, 0, !dbg !2848
  br i1 %tobool786.not, label %if.end794, label %if.then787, !dbg !2849

if.then787:                                       ; preds = %sw.epilog782
  %op_first = getelementptr inbounds %struct.unop, ptr %o, i64 0, i32 7, !dbg !2850
  call void @llvm.dbg.value(metadata ptr undef, metadata !2522, metadata !DIExpression()), !dbg !2852
  %kid.01114 = load ptr, ptr %op_first, align 8, !dbg !2853
  call void @llvm.dbg.value(metadata ptr %kid.01114, metadata !2522, metadata !DIExpression()), !dbg !2852
  %tobool789.not1115 = icmp eq ptr %kid.01114, null, !dbg !2854
  br i1 %tobool789.not1115, label %if.end794, label %for.body790, !dbg !2854

for.body790:                                      ; preds = %if.then787, %for.body790
  %kid.01116 = phi ptr [ %kid.0, %for.body790 ], [ %kid.01114, %if.then787 ]
  call void @Perl_do_op_dump(i32 noundef %inc, ptr noundef %file, ptr noundef nonnull %kid.01116), !dbg !2855
  %op_sibling = getelementptr inbounds %struct.op, ptr %kid.01116, i64 0, i32 1, !dbg !2857
  call void @llvm.dbg.value(metadata ptr undef, metadata !2522, metadata !DIExpression()), !dbg !2852
  %kid.0 = load ptr, ptr %op_sibling, align 8, !dbg !2853
  call void @llvm.dbg.value(metadata ptr %kid.0, metadata !2522, metadata !DIExpression()), !dbg !2852
  %tobool789.not = icmp eq ptr %kid.0, null, !dbg !2854
  br i1 %tobool789.not, label %if.end794, label %for.body790, !dbg !2854, !llvm.loop !2858

if.end794:                                        ; preds = %for.body790, %if.then787, %sw.epilog782
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.50), !dbg !2860
  ret void, !dbg !2861
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pmop_dump(ptr noundef %pm) local_unnamed_addr #0 !dbg !2862 {
entry:
  call void @llvm.dbg.value(metadata ptr %pm, metadata !2866, metadata !DIExpression()), !dbg !2867
  %call = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2868
  tail call void @Perl_do_pmop_dump(i32 noundef 0, ptr noundef %call, ptr noundef %pm), !dbg !2868
  ret void, !dbg !2869
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @S_sequence_num(ptr noundef %o) unnamed_addr #0 !dbg !2870 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %o, metadata !2874, metadata !DIExpression()), !dbg !2879
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8, !dbg !2880
  %tobool.not = icmp eq ptr %o, null, !dbg !2881
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !2883

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %o to i64, !dbg !2884
  %call = tail call ptr @Perl_newSVuv(i64 noundef %0) #8, !dbg !2884
  call void @llvm.dbg.value(metadata ptr %call, metadata !2875, metadata !DIExpression()), !dbg !2879
  %call1 = tail call ptr @Perl_sv_2mortal(ptr noundef %call) #8, !dbg !2885
  %sv_flags = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 2, !dbg !2886
  %1 = load i32, ptr %sv_flags, align 4, !dbg !2886
  %and = and i32 %1, 2098176, !dbg !2886
  %cmp = icmp eq i32 %and, 1024, !dbg !2886
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2886

cond.true:                                        ; preds = %if.end
  %2 = load ptr, ptr %call, align 8, !dbg !2886
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %2, i64 0, i32 2, !dbg !2886
  %3 = load i64, ptr %xpv_cur, align 8, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %3, metadata !2878, metadata !DIExpression()), !dbg !2879
  store i64 %3, ptr %len, align 8, !dbg !2886
  %sv_u = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 3, !dbg !2886
  %4 = load ptr, ptr %sv_u, align 8, !dbg !2886
  br label %cond.end, !dbg !2886

cond.false:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %len, metadata !2878, metadata !DIExpression(DW_OP_deref)), !dbg !2879
  %call2 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call, ptr noundef nonnull %len, i32 noundef 34) #8, !dbg !2886
  br label %cond.end, !dbg !2886

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ %call2, %cond.false ], !dbg !2886
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2877, metadata !DIExpression()), !dbg !2879
  %5 = load ptr, ptr @PL_op_sequence, align 8, !dbg !2887
  %tobool3.not = icmp eq ptr %5, null, !dbg !2887
  br i1 %tobool3.not, label %if.then4, label %if.end6, !dbg !2889

if.then4:                                         ; preds = %cond.end
  %call5 = call ptr @Perl_newSV_type(i32 noundef 12) #8, !dbg !2890
  store ptr %call5, ptr @PL_op_sequence, align 8, !dbg !2891
  br label %if.end6, !dbg !2892

if.end6:                                          ; preds = %if.then4, %cond.end
  %6 = phi ptr [ %call5, %if.then4 ], [ %5, %cond.end ], !dbg !2893
  %7 = load i64, ptr %len, align 8, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %7, metadata !2878, metadata !DIExpression()), !dbg !2879
  %conv = trunc i64 %7 to i32, !dbg !2893
  %call7 = call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef %cond, i32 noundef %conv, i32 noundef 32, ptr noundef null, i32 noundef 0) #8, !dbg !2893
  call void @llvm.dbg.value(metadata ptr %call7, metadata !2876, metadata !DIExpression()), !dbg !2879
  %tobool8.not = icmp eq ptr %call7, null, !dbg !2894
  br i1 %tobool8.not, label %if.end20, label %if.then9, !dbg !2896

if.then9:                                         ; preds = %if.end6
  %8 = load ptr, ptr %call7, align 8, !dbg !2897
  %sv_flags10 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2, !dbg !2897
  %9 = load i32, ptr %sv_flags10, align 4, !dbg !2897
  %and11 = and i32 %9, -2145386240, !dbg !2897
  %cmp12 = icmp eq i32 %and11, -2147483392, !dbg !2897
  br i1 %cmp12, label %cond.true14, label %cond.false16, !dbg !2897

cond.true14:                                      ; preds = %if.then9
  %10 = load ptr, ptr %8, align 8, !dbg !2897
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %10, i64 0, i32 4, !dbg !2897
  %11 = load i64, ptr %xuv_u, align 8, !dbg !2897
  br label %cleanup, !dbg !2897

cond.false16:                                     ; preds = %if.then9
  %call17 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %8, i32 noundef 2) #8, !dbg !2897
  br label %cleanup, !dbg !2897

if.end20:                                         ; preds = %if.end6
  %12 = load ptr, ptr @PL_op_sequence, align 8, !dbg !2898
  %13 = load i64, ptr %len, align 8, !dbg !2898
  call void @llvm.dbg.value(metadata i64 %13, metadata !2878, metadata !DIExpression()), !dbg !2879
  %conv21 = trunc i64 %13 to i32, !dbg !2898
  %14 = load i64, ptr @PL_op_seq, align 8, !dbg !2898
  %inc = add i64 %14, 1, !dbg !2898
  store i64 %inc, ptr @PL_op_seq, align 8, !dbg !2898
  %call22 = call ptr @Perl_newSVuv(i64 noundef %inc) #8, !dbg !2898
  %call23 = call ptr @Perl_hv_common_key_len(ptr noundef %12, ptr noundef %cond, i32 noundef %conv21, i32 noundef 36, ptr noundef %call22, i32 noundef 0) #8, !dbg !2898
  %15 = load i64, ptr @PL_op_seq, align 8, !dbg !2899
  br label %cleanup, !dbg !2900

cleanup:                                          ; preds = %cond.true14, %cond.false16, %entry, %if.end20
  %retval.0 = phi i64 [ %15, %if.end20 ], [ 0, %entry ], [ %11, %cond.true14 ], [ %call17, %cond.false16 ], !dbg !2879
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !2901
  ret i64 %retval.0, !dbg !2901
}

declare !dbg !2902 ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !2927 ptr @Perl_cop_fetch_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Perl_gv_dump(ptr noundef %gv) local_unnamed_addr #0 !dbg !2931 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2935, metadata !DIExpression()), !dbg !2940
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8, !dbg !2941
  %call = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !2942
  call void @llvm.dbg.value(metadata ptr %call, metadata !2939, metadata !DIExpression()), !dbg !2940
  %tobool.not = icmp eq ptr %gv, null, !dbg !2943
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2945

if.then:                                          ; preds = %entry
  %call1 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2946
  %call2 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call1, ptr noundef nonnull @.str.41) #8, !dbg !2948
  br label %cleanup, !dbg !2949

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @Perl_sv_newmortal() #8, !dbg !2950
  call void @llvm.dbg.value(metadata ptr %call3, metadata !2938, metadata !DIExpression()), !dbg !2940
  %call4 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !2951
  %call5 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call4, ptr noundef nonnull @.str.42) #8, !dbg !2952
  tail call void @Perl_gv_fullname4(ptr noundef %call3, ptr noundef nonnull %gv, ptr noundef null, i1 noundef zeroext true) #8, !dbg !2953
  %sv_flags = getelementptr inbounds %struct.sv, ptr %call3, i64 0, i32 2, !dbg !2954
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2954
  %and = and i32 %0, 2098176, !dbg !2954
  %cmp = icmp eq i32 %and, 1024, !dbg !2954
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2954

cond.true:                                        ; preds = %if.end
  %1 = load ptr, ptr %call3, align 8, !dbg !2954
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !2954
  %2 = load i64, ptr %xpv_cur, align 8, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %2, metadata !2936, metadata !DIExpression()), !dbg !2940
  store i64 %2, ptr %len, align 8, !dbg !2954
  %sv_u = getelementptr inbounds %struct.sv, ptr %call3, i64 0, i32 3, !dbg !2954
  %3 = load ptr, ptr %sv_u, align 8, !dbg !2954
  br label %cond.end, !dbg !2954

cond.false:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %len, metadata !2936, metadata !DIExpression(DW_OP_deref)), !dbg !2940
  %call6 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call3, ptr noundef nonnull %len, i32 noundef 34) #8, !dbg !2954
  br label %cond.end, !dbg !2954

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %call6, %cond.false ], !dbg !2954
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2937, metadata !DIExpression()), !dbg !2940
  %call7 = call ptr @Perl_PerlIO_stderr() #8, !dbg !2955
  %4 = load i64, ptr %len, align 8, !dbg !2956
  call void @llvm.dbg.value(metadata i64 %4, metadata !2936, metadata !DIExpression()), !dbg !2940
  %mul = mul i64 %4, 17, !dbg !2956
  %add = add i64 %mul, 1, !dbg !2956
  %5 = load i32, ptr %sv_flags, align 4, !dbg !2956
  %and9 = lshr i32 %5, 21, !dbg !2956
  %6 = and i32 %and9, 256, !dbg !2956
  %or = or i32 %6, 66560, !dbg !2956
  %call12 = call ptr @Perl_pv_escape(ptr noundef %call, ptr noundef %cond, i64 noundef %4, i64 noundef %add, ptr noundef null, i32 noundef %or), !dbg !2956
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 1, ptr noundef %call7, ptr noundef nonnull @.str.105, ptr noundef %call12), !dbg !2957
  %sv_u13 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2958
  %7 = load ptr, ptr %sv_u13, align 8, !dbg !2958
  %gp_egv = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 8, !dbg !2958
  %8 = load ptr, ptr %gp_egv, align 8, !dbg !2958
  %cmp15.not = icmp eq ptr %8, %gv, !dbg !2960
  br i1 %cmp15.not, label %if.end41, label %if.then16, !dbg !2961

if.then16:                                        ; preds = %cond.end
  call void @Perl_gv_efullname4(ptr noundef nonnull %call3, ptr noundef %8, ptr noundef null, i1 noundef zeroext true) #8, !dbg !2962
  %9 = load i32, ptr %sv_flags, align 4, !dbg !2964
  %and21 = and i32 %9, 2098176, !dbg !2964
  %cmp22 = icmp eq i32 %and21, 1024, !dbg !2964
  br i1 %cmp22, label %cond.true23, label %cond.false28, !dbg !2964

cond.true23:                                      ; preds = %if.then16
  %10 = load ptr, ptr %call3, align 8, !dbg !2964
  %xpv_cur25 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2, !dbg !2964
  %11 = load i64, ptr %xpv_cur25, align 8, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %11, metadata !2936, metadata !DIExpression()), !dbg !2940
  store i64 %11, ptr %len, align 8, !dbg !2964
  %sv_u26 = getelementptr inbounds %struct.sv, ptr %call3, i64 0, i32 3, !dbg !2964
  %12 = load ptr, ptr %sv_u26, align 8, !dbg !2964
  br label %cond.end30, !dbg !2964

cond.false28:                                     ; preds = %if.then16
  call void @llvm.dbg.value(metadata ptr %len, metadata !2936, metadata !DIExpression(DW_OP_deref)), !dbg !2940
  %call29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call3, ptr noundef nonnull %len, i32 noundef 34) #8, !dbg !2964
  br label %cond.end30, !dbg !2964

cond.end30:                                       ; preds = %cond.false28, %cond.true23
  %cond31 = phi ptr [ %12, %cond.true23 ], [ %call29, %cond.false28 ], !dbg !2964
  call void @llvm.dbg.value(metadata ptr %cond31, metadata !2937, metadata !DIExpression()), !dbg !2940
  %call32 = call ptr @Perl_PerlIO_stderr() #8, !dbg !2965
  %13 = load i64, ptr %len, align 8, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %13, metadata !2936, metadata !DIExpression()), !dbg !2940
  %mul33 = mul i64 %13, 17, !dbg !2966
  %add34 = add i64 %mul33, 1, !dbg !2966
  %14 = load i32, ptr %sv_flags, align 4, !dbg !2966
  %and36 = lshr i32 %14, 21, !dbg !2966
  %15 = and i32 %and36, 256, !dbg !2966
  %or39 = or i32 %15, 66560, !dbg !2966
  %call40 = call ptr @Perl_pv_escape(ptr noundef %call, ptr noundef %cond31, i64 noundef %13, i64 noundef %add34, ptr noundef null, i32 noundef %or39), !dbg !2966
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 1, ptr noundef %call32, ptr noundef nonnull @.str.106, ptr noundef %call40), !dbg !2967
  br label %if.end41, !dbg !2968

if.end41:                                         ; preds = %cond.end30, %cond.end
  %call42 = call ptr @Perl_PerlIO_stderr() #8, !dbg !2969
  %call43 = call i32 @PerlIO_putc(ptr noundef %call42, i32 noundef 10) #8, !dbg !2970
  %call44 = call ptr @Perl_PerlIO_stderr() #8, !dbg !2971
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef 0, ptr noundef %call44, ptr noundef nonnull @.str.50), !dbg !2972
  br label %cleanup, !dbg !2973

cleanup:                                          ; preds = %if.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !2973
  ret void, !dbg !2973
}

declare !dbg !2974 void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare !dbg !2975 i32 @PerlIO_putc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_magic_dump(i32 noundef %level, ptr noundef %file, ptr noundef %mg, i32 noundef %nest, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim) local_unnamed_addr #0 !dbg !2978 {
entry:
  call void @llvm.dbg.value(metadata i32 %level, metadata !2984, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %file, metadata !2985, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %mg, metadata !2986, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %nest, metadata !2987, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %maxnest, metadata !2988, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i1 %dumpops, metadata !2989, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %pvlim, metadata !2990, metadata !DIExpression()), !dbg !3028
  %tobool.not330 = icmp eq ptr %mg, null, !dbg !3029
  br i1 %tobool.not330, label %for.end201, label %for.body.lr.ph, !dbg !3029

for.body.lr.ph:                                   ; preds = %entry
  %add = add nsw i32 %level, 1
  %add123 = add nsw i32 %level, 2
  %add125 = add nsw i32 %nest, 1
  br label %for.body, !dbg !3029

for.body:                                         ; preds = %for.body.lr.ph, %for.inc200
  %mg.addr.0331 = phi ptr [ %mg, %for.body.lr.ph ], [ %59, %for.inc200 ]
  call void @llvm.dbg.value(metadata ptr %mg.addr.0331, metadata !2986, metadata !DIExpression()), !dbg !3028
  %0 = ptrtoint ptr %mg.addr.0331 to i64, !dbg !3030
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.107, i64 noundef %0), !dbg !3031
  %mg_virtual = getelementptr inbounds %struct.magic, ptr %mg.addr.0331, i64 0, i32 1, !dbg !3032
  %1 = load ptr, ptr %mg_virtual, align 8, !dbg !3032
  %tobool1.not = icmp eq ptr %1, null, !dbg !3033
  br i1 %tobool1.not, label %if.else5, label %if.then, !dbg !3034

if.then:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %1, metadata !2991, metadata !DIExpression()), !dbg !3035
  %cmp = icmp uge ptr %1, @PL_magic_vtables, !dbg !3036
  %cmp3 = icmp ult ptr %1, getelementptr inbounds ([31 x %struct.mgvtbl], ptr @PL_magic_vtables, i64 1, i64 0)
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false, !dbg !3037
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64, !dbg !3038
  br i1 %or.cond, label %if.then4, label %if.else, !dbg !3037

if.then4:                                         ; preds = %if.then
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @PL_magic_vtables to i64), !dbg !3039
  %2 = lshr exact i64 %sub.ptr.sub, 6, !dbg !3039
  %idxprom = and i64 %2, 4294967295, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %2, metadata !3000, metadata !DIExpression()), !dbg !3041
  %arrayidx = getelementptr inbounds [31 x ptr], ptr @PL_magic_vtable_names, i64 0, i64 %idxprom, !dbg !3040
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !3040
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.108, ptr noundef %3), !dbg !3042
  br label %if.end6, !dbg !3043

if.else:                                          ; preds = %if.then
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.109, i64 noundef %sub.ptr.lhs.cast), !dbg !3044
  br label %if.end6

if.else5:                                         ; preds = %for.body
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.110), !dbg !3045
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else, %if.else5
  %mg_private = getelementptr inbounds %struct.magic, ptr %mg.addr.0331, i64 0, i32 2, !dbg !3046
  %4 = load i16, ptr %mg_private, align 8, !dbg !3046
  %tobool7.not = icmp eq i16 %4, 0, !dbg !3048
  br i1 %tobool7.not, label %if.end11, label %if.then8, !dbg !3049

if.then8:                                         ; preds = %if.end6
  %conv10 = zext i16 %4 to i32, !dbg !3050
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.111, i32 noundef %conv10), !dbg !3051
  br label %if.end11, !dbg !3051

if.end11:                                         ; preds = %if.then8, %if.end6
  call void @llvm.dbg.value(metadata ptr null, metadata !3005, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i32 0, metadata !3003, metadata !DIExpression()), !dbg !3052
  %mg_type = getelementptr inbounds %struct.magic, ptr %mg.addr.0331, i64 0, i32 3
  %5 = load i8, ptr %mg_type, align 2
  call void @llvm.dbg.value(metadata i32 0, metadata !3003, metadata !DIExpression()), !dbg !3052
  br label %for.body17, !dbg !3053

for.body17:                                       ; preds = %if.end11, %for.inc
  %indvars.iv = phi i64 [ 0, %if.end11 ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3003, metadata !DIExpression()), !dbg !3052
  %arrayidx14 = getelementptr inbounds [44 x %struct.anon.23], ptr @magic_names, i64 0, i64 %indvars.iv, !dbg !3055
  %6 = load i8, ptr %arrayidx14, align 16, !dbg !3057
  %cmp22 = icmp eq i8 %5, %6, !dbg !3060
  br i1 %cmp22, label %for.end, label %for.inc, !dbg !3061

for.inc:                                          ; preds = %for.body17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3062
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3003, metadata !DIExpression()), !dbg !3052
  %tobool16.not = icmp eq i64 %indvars.iv.next, 43, !dbg !3053
  br i1 %tobool16.not, label %if.else31, label %for.body17, !dbg !3053, !llvm.loop !3063

for.end:                                          ; preds = %for.body17
  %7 = trunc i64 %indvars.iv to i32, !dbg !3052
  call void @llvm.dbg.value(metadata ptr undef, metadata !3005, metadata !DIExpression()), !dbg !3052
  %tobool29.not = icmp eq i32 %7, 43, !dbg !3065
  br i1 %tobool29.not, label %if.else31, label %if.then30, !dbg !3067

if.then30:                                        ; preds = %for.end
  %idxprom13.le = and i64 %indvars.iv, 4294967295, !dbg !3055
  %name15.le = getelementptr inbounds [44 x %struct.anon.23], ptr @magic_names, i64 0, i64 %idxprom13.le, i32 1, !dbg !3068
  %8 = load ptr, ptr %name15.le, align 8, !dbg !3068
  call void @llvm.dbg.value(metadata ptr %8, metadata !3005, metadata !DIExpression()), !dbg !3052
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.112, ptr noundef nonnull %8), !dbg !3069
  br label %if.end34, !dbg !3069

if.else31:                                        ; preds = %for.inc, %for.end
  %conv33 = sext i8 %5 to i32, !dbg !3070
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.113, i32 noundef %conv33), !dbg !3071
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then30
  %mg_flags = getelementptr inbounds %struct.magic, ptr %mg.addr.0331, i64 0, i32 4, !dbg !3072
  %9 = load i8, ptr %mg_flags, align 1, !dbg !3072
  %tobool35.not = icmp eq i8 %9, 0, !dbg !3074
  br i1 %tobool35.not, label %if.end101, label %if.then36, !dbg !3075

if.then36:                                        ; preds = %if.end34
  %conv38 = zext i8 %9 to i32, !dbg !3076
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.114, i32 noundef %conv38), !dbg !3078
  %10 = load i8, ptr %mg_type, align 2, !dbg !3079
  %cmp41 = icmp eq i8 %10, 101, !dbg !3081
  br i1 %cmp41, label %land.lhs.true43, label %if.end48, !dbg !3082

land.lhs.true43:                                  ; preds = %if.then36
  %11 = load i8, ptr %mg_flags, align 1, !dbg !3083
  %12 = and i8 %11, 1, !dbg !3084
  %tobool46.not = icmp eq i8 %12, 0, !dbg !3084
  br i1 %tobool46.not, label %if.end59, label %if.then47, !dbg !3085

if.then47:                                        ; preds = %land.lhs.true43
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.115), !dbg !3086
  %.pr.pre = load i8, ptr %mg_type, align 2, !dbg !3087
  br label %if.end48, !dbg !3086

if.end48:                                         ; preds = %if.then47, %if.then36
  %13 = phi i8 [ %10, %if.then36 ], [ %.pr.pre, %if.then47 ], !dbg !3087
  %cmp51 = icmp eq i8 %13, 103, !dbg !3089
  br i1 %cmp51, label %land.lhs.true53, label %if.end59, !dbg !3090

land.lhs.true53:                                  ; preds = %if.end48
  %14 = load i8, ptr %mg_flags, align 1, !dbg !3091
  %15 = and i8 %14, 1, !dbg !3092
  %tobool57.not = icmp eq i8 %15, 0, !dbg !3092
  br i1 %tobool57.not, label %if.end59, label %if.then58, !dbg !3093

if.then58:                                        ; preds = %land.lhs.true53
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.116), !dbg !3094
  br label %if.end59, !dbg !3094

if.end59:                                         ; preds = %land.lhs.true43, %if.then58, %land.lhs.true53, %if.end48
  %16 = load i8, ptr %mg_flags, align 1, !dbg !3095
  %17 = and i8 %16, 2, !dbg !3097
  %tobool63.not = icmp eq i8 %17, 0, !dbg !3097
  br i1 %tobool63.not, label %if.end65, label %if.then64, !dbg !3098

if.then64:                                        ; preds = %if.end59
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.117), !dbg !3099
  %.pre = load i8, ptr %mg_flags, align 1, !dbg !3100
  br label %if.end65, !dbg !3099

if.end65:                                         ; preds = %if.then64, %if.end59
  %18 = phi i8 [ %.pre, %if.then64 ], [ %16, %if.end59 ], !dbg !3100
  %19 = and i8 %18, 4, !dbg !3102
  %tobool69.not = icmp eq i8 %19, 0, !dbg !3102
  br i1 %tobool69.not, label %if.end71, label %if.then70, !dbg !3103

if.then70:                                        ; preds = %if.end65
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.118), !dbg !3104
  %.pre341 = load i8, ptr %mg_flags, align 1, !dbg !3105
  br label %if.end71, !dbg !3104

if.end71:                                         ; preds = %if.then70, %if.end65
  %20 = phi i8 [ %.pre341, %if.then70 ], [ %18, %if.end65 ], !dbg !3105
  %21 = and i8 %20, 8, !dbg !3107
  %tobool75.not = icmp eq i8 %21, 0, !dbg !3107
  br i1 %tobool75.not, label %if.end77, label %if.then76, !dbg !3108

if.then76:                                        ; preds = %if.end71
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.119), !dbg !3109
  %.pre342 = load i8, ptr %mg_flags, align 1, !dbg !3110
  br label %if.end77, !dbg !3109

if.end77:                                         ; preds = %if.then76, %if.end71
  %22 = phi i8 [ %.pre342, %if.then76 ], [ %20, %if.end71 ], !dbg !3110
  %23 = and i8 %22, 16, !dbg !3112
  %tobool81.not = icmp eq i8 %23, 0, !dbg !3112
  br i1 %tobool81.not, label %if.end83, label %if.then82, !dbg !3113

if.then82:                                        ; preds = %if.end77
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.120), !dbg !3114
  %.pre343 = load i8, ptr %mg_flags, align 1, !dbg !3115
  br label %if.end83, !dbg !3114

if.end83:                                         ; preds = %if.then82, %if.end77
  %24 = phi i8 [ %.pre343, %if.then82 ], [ %22, %if.end77 ], !dbg !3115
  %25 = and i8 %24, 32, !dbg !3117
  %tobool87.not = icmp eq i8 %25, 0, !dbg !3117
  br i1 %tobool87.not, label %if.end89, label %if.then88, !dbg !3118

if.then88:                                        ; preds = %if.end83
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.121), !dbg !3119
  br label %if.end89, !dbg !3119

if.end89:                                         ; preds = %if.then88, %if.end83
  %26 = load i8, ptr %mg_type, align 2, !dbg !3120
  %cmp92 = icmp eq i8 %26, 103, !dbg !3122
  br i1 %cmp92, label %land.lhs.true94, label %if.end101, !dbg !3123

land.lhs.true94:                                  ; preds = %if.end89
  %27 = load i8, ptr %mg_flags, align 1, !dbg !3124
  %28 = and i8 %27, 64, !dbg !3125
  %tobool98.not = icmp eq i8 %28, 0, !dbg !3125
  br i1 %tobool98.not, label %if.end101, label %if.then99, !dbg !3126

if.then99:                                        ; preds = %land.lhs.true94
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.122), !dbg !3127
  br label %if.end101, !dbg !3127

if.end101:                                        ; preds = %if.end89, %land.lhs.true94, %if.then99, %if.end34
  %mg_obj = getelementptr inbounds %struct.magic, ptr %mg.addr.0331, i64 0, i32 6, !dbg !3128
  %29 = load ptr, ptr %mg_obj, align 8, !dbg !3128
  %tobool102.not = icmp eq ptr %29, null, !dbg !3129
  br i1 %tobool102.not, label %if.end128, label %if.then103, !dbg !3130

if.then103:                                       ; preds = %if.end101
  %30 = ptrtoint ptr %29 to i64, !dbg !3131
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.123, i64 noundef %30), !dbg !3132
  %31 = load i8, ptr %mg_type, align 2, !dbg !3133
  %cmp107 = icmp eq i8 %31, 114, !dbg !3134
  br i1 %cmp107, label %if.then109, label %if.end117, !dbg !3135

if.then109:                                       ; preds = %if.then103
  %32 = load ptr, ptr %mg_obj, align 8, !dbg !3136
  call void @llvm.dbg.value(metadata ptr %32, metadata !3006, metadata !DIExpression()), !dbg !3137
  %call = tail call ptr @Perl_sv_newmortal() #8, !dbg !3138
  call void @llvm.dbg.value(metadata ptr %call, metadata !3011, metadata !DIExpression()), !dbg !3137
  %33 = getelementptr i8, ptr %32, i64 16, !dbg !3139
  %.val = load ptr, ptr %33, align 8, !dbg !3139
  %xpv_len_u = getelementptr inbounds %struct.regexp, ptr %.val, i64 0, i32 3, !dbg !3139
  %34 = load ptr, ptr %xpv_len_u, align 8, !dbg !3139
  %35 = load ptr, ptr %32, align 8, !dbg !3139
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %35, i64 0, i32 2, !dbg !3139
  %36 = load i64, ptr %xpv_cur, align 8, !dbg !3139
  %sv_flags = getelementptr inbounds %struct.p5rx, ptr %32, i64 0, i32 2, !dbg !3139
  %37 = load i32, ptr %sv_flags, align 4, !dbg !3139
  %and112 = lshr i32 %37, 21, !dbg !3139
  %38 = and i32 %and112, 256, !dbg !3139
  %or = or i32 %38, 32771, !dbg !3139
  %call114 = tail call ptr @Perl_pv_pretty(ptr noundef %call, ptr noundef %34, i64 noundef %36, i64 noundef 60, ptr noundef null, ptr noundef null, i32 noundef %or), !dbg !3139
  call void @llvm.dbg.value(metadata ptr %call114, metadata !3012, metadata !DIExpression()), !dbg !3137
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add, ptr noundef %file, ptr noundef nonnull @.str.124, ptr noundef %call114), !dbg !3140
  %sv_refcnt = getelementptr inbounds %struct.p5rx, ptr %32, i64 0, i32 1, !dbg !3141
  %39 = load i32, ptr %sv_refcnt, align 8, !dbg !3141
  %conv116 = zext i32 %39 to i64, !dbg !3142
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add, ptr noundef %file, ptr noundef nonnull @.str.125, i64 noundef %conv116), !dbg !3143
  br label %if.end117, !dbg !3144

if.end117:                                        ; preds = %if.then109, %if.then103
  %40 = load i8, ptr %mg_flags, align 1, !dbg !3145
  %41 = and i8 %40, 2, !dbg !3147
  %tobool121.not = icmp eq i8 %41, 0, !dbg !3147
  br i1 %tobool121.not, label %if.end128, label %if.then122, !dbg !3148

if.then122:                                       ; preds = %if.end117
  %42 = load ptr, ptr %mg_obj, align 8, !dbg !3149
  tail call void @Perl_do_sv_dump(i32 noundef %add123, ptr noundef %file, ptr noundef %42, i32 noundef %add125, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !3149
  br label %if.end128, !dbg !3149

if.end128:                                        ; preds = %if.end117, %if.then122, %if.end101
  %mg_len = getelementptr inbounds %struct.magic, ptr %mg.addr.0331, i64 0, i32 5, !dbg !3150
  %43 = load i64, ptr %mg_len, align 8, !dbg !3150
  %tobool129.not = icmp eq i64 %43, 0, !dbg !3152
  br i1 %tobool129.not, label %if.end132, label %if.then130, !dbg !3153

if.then130:                                       ; preds = %if.end128
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.126, i64 noundef %43), !dbg !3154
  br label %if.end132, !dbg !3154

if.end132:                                        ; preds = %if.then130, %if.end128
  %mg_ptr = getelementptr inbounds %struct.magic, ptr %mg.addr.0331, i64 0, i32 7, !dbg !3155
  %44 = load ptr, ptr %mg_ptr, align 8, !dbg !3155
  %tobool133.not = icmp eq ptr %44, null, !dbg !3156
  br i1 %tobool133.not, label %if.end177, label %if.then134, !dbg !3157

if.then134:                                       ; preds = %if.end132
  %45 = ptrtoint ptr %44 to i64, !dbg !3158
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.127, i64 noundef %45), !dbg !3159
  %46 = load i64, ptr %mg_len, align 8, !dbg !3160
  %cmp137 = icmp sgt i64 %46, -1, !dbg !3161
  br i1 %cmp137, label %if.then139, label %if.else151, !dbg !3162

if.then139:                                       ; preds = %if.then134
  %47 = load i8, ptr %mg_type, align 2, !dbg !3163
  %cmp142.not = icmp eq i8 %47, 119, !dbg !3164
  br i1 %cmp142.not, label %if.end175, label %if.then144, !dbg !3165

if.then144:                                       ; preds = %if.then139
  %call145 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !3166
  call void @llvm.dbg.value(metadata ptr %call145, metadata !3013, metadata !DIExpression()), !dbg !3167
  %48 = load ptr, ptr %mg_ptr, align 8, !dbg !3168
  %49 = load i64, ptr %mg_len, align 8, !dbg !3168
  %call148 = tail call ptr @Perl_pv_display(ptr noundef %call145, ptr noundef %48, i64 noundef %49, i64 noundef 0, i64 noundef %pvlim), !dbg !3168
  %call149 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.128, ptr noundef %call148) #8, !dbg !3169
  call void @llvm.dbg.value(metadata ptr %call145, metadata !1952, metadata !DIExpression()) #8, !dbg !3170
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call145, i64 0, i32 1, !dbg !3172
  %50 = load i32, ptr %sv_refcnt.i, align 8, !dbg !3172
  call void @llvm.dbg.value(metadata i32 %50, metadata !1957, metadata !DIExpression()) #8, !dbg !3170
  %cmp.i = icmp ugt i32 %50, 1, !dbg !3173
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !3174

if.then.i:                                        ; preds = %if.then144
  %sub.i = add i32 %50, -1, !dbg !3175
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !3176
  br label %if.end175, !dbg !3177

if.else.i:                                        ; preds = %if.then144
  tail call void @Perl_sv_free2(ptr noundef nonnull %call145, i32 noundef %50) #8, !dbg !3178
  br label %if.end175

if.else151:                                       ; preds = %if.then134
  switch i64 %46, label %if.else171 [
    i64 -2, label %if.then155
    i64 -1, label %land.lhs.true165
  ], !dbg !3179

if.then155:                                       ; preds = %if.else151
  %call156 = tail call i32 @PerlIO_puts(ptr noundef %file, ptr noundef nonnull @.str.129) #8, !dbg !3180
  %51 = load ptr, ptr %mg_ptr, align 8, !dbg !3183
  tail call void @Perl_do_sv_dump(i32 noundef %add123, ptr noundef %file, ptr noundef %51, i32 noundef %add125, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !3183
  br label %for.inc200, !dbg !3184

land.lhs.true165:                                 ; preds = %if.else151
  %52 = load i8, ptr %mg_type, align 2, !dbg !3185
  %cmp168 = icmp eq i8 %52, 119, !dbg !3187
  br i1 %cmp168, label %if.end175, label %if.else171, !dbg !3188

if.else171:                                       ; preds = %if.else151, %land.lhs.true165
  %call172 = tail call i32 @PerlIO_puts(ptr noundef %file, ptr noundef nonnull @.str.130) #8, !dbg !3189
  br label %if.end175

if.end175:                                        ; preds = %if.else.i, %if.then.i, %land.lhs.true165, %if.else171, %if.then139
  %call176 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 10) #8, !dbg !3190
  br label %if.end177, !dbg !3191

if.end177:                                        ; preds = %if.end175, %if.end132
  %53 = load i8, ptr %mg_type, align 2, !dbg !3192
  %cmp180 = icmp eq i8 %53, 119, !dbg !3193
  br i1 %cmp180, label %if.then182, label %for.inc200, !dbg !3194

if.then182:                                       ; preds = %if.end177
  %54 = load ptr, ptr %mg_ptr, align 8, !dbg !3195
  call void @llvm.dbg.value(metadata ptr %54, metadata !3020, metadata !DIExpression()), !dbg !3196
  %tobool184.not = icmp eq ptr %54, null, !dbg !3197
  br i1 %tobool184.not, label %for.inc200, label %for.body190, !dbg !3198

for.body190:                                      ; preds = %if.then182
  call void @llvm.dbg.value(metadata i64 0, metadata !3025, metadata !DIExpression()), !dbg !3199
  %55 = load i64, ptr %54, align 8, !dbg !3200
  %arrayidx194 = getelementptr inbounds i64, ptr %54, i64 1, !dbg !3203
  %56 = load i64, ptr %arrayidx194, align 8, !dbg !3203
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.131, i64 noundef 0, i64 noundef %55, i64 noundef %56), !dbg !3204
  call void @llvm.dbg.value(metadata i64 0, metadata !3025, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3199
  call void @llvm.dbg.value(metadata i64 0, metadata !3025, metadata !DIExpression()), !dbg !3199
  %arrayidx191.c = getelementptr inbounds i64, ptr %54, i64 2, !dbg !3200
  %57 = load i64, ptr %arrayidx191.c, align 8, !dbg !3200
  %arrayidx194.c = getelementptr inbounds i64, ptr %54, i64 3, !dbg !3203
  %58 = load i64, ptr %arrayidx194.c, align 8, !dbg !3203
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.131, i64 noundef 1, i64 noundef %57, i64 noundef %58), !dbg !3204
  call void @llvm.dbg.value(metadata i64 0, metadata !3025, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3199
  br label %for.inc200, !dbg !3205

for.inc200:                                       ; preds = %for.body190, %if.then182, %if.end177, %if.then155
  %59 = load ptr, ptr %mg.addr.0331, align 8, !dbg !3205
  call void @llvm.dbg.value(metadata ptr %59, metadata !2986, metadata !DIExpression()), !dbg !3028
  %tobool.not = icmp eq ptr %59, null, !dbg !3029
  br i1 %tobool.not, label %for.end201, label %for.body, !dbg !3029, !llvm.loop !3206

for.end201:                                       ; preds = %for.inc200, %entry
  ret void, !dbg !3208
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_sv_dump(i32 noundef %level, ptr noundef %file, ptr noundef %sv, i32 noundef %nest, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim) local_unnamed_addr #0 !dbg !3209 {
entry:
  %freq = alloca [200 x i32], align 16
  %len = alloca i64, align 8
  %len1814 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %level, metadata !3213, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %file, metadata !3214, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %sv, metadata !3215, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %nest, metadata !3216, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %maxnest, metadata !3217, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i1 %dumpops, metadata !3218, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %pvlim, metadata !3219, metadata !DIExpression()), !dbg !3354
  %tobool.not = icmp eq ptr %sv, null, !dbg !3355
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !3357

if.then:                                          ; preds = %entry
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.218), !dbg !3358
  br label %cleanup2516, !dbg !3360

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !3361
  %0 = load i32, ptr %sv_flags, align 4, !dbg !3361
  call void @llvm.dbg.value(metadata i32 %0, metadata !3222, metadata !DIExpression()), !dbg !3354
  %and = and i32 %0, 255, !dbg !3362
  call void @llvm.dbg.value(metadata i32 %0, metadata !3223, metadata !DIExpression(DW_OP_constu, 255, DW_OP_and, DW_OP_stack_value)), !dbg !3354
  %1 = load ptr, ptr %sv, align 8, !dbg !3363
  %2 = ptrtoint ptr %1 to i64, !dbg !3363
  %3 = ptrtoint ptr %sv to i64, !dbg !3364
  %4 = load i16, ptr @PL_dumpindent, align 2, !dbg !3365
  %conv = zext i16 %4 to i32, !dbg !3365
  %mul = mul nsw i32 %conv, %level, !dbg !3366
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 1, !dbg !3367
  %5 = load i32, ptr %sv_refcnt, align 8, !dbg !3367
  %conv2 = zext i32 %5 to i64, !dbg !3368
  %call = tail call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.219, i64 noundef %2, i64 noundef %3, i32 noundef %mul, ptr noundef nonnull @.str, i64 noundef %conv2, i32 noundef %mul, ptr noundef nonnull @.str) #8, !dbg !3369
  call void @llvm.dbg.value(metadata ptr %call, metadata !3220, metadata !DIExpression()), !dbg !3354
  %and5 = and i32 %0, 262144, !dbg !3370
  %tobool6.not = icmp eq i32 %and5, 0, !dbg !3370
  br i1 %tobool6.not, label %if.end8, label %if.then7, !dbg !3372

if.then7:                                         ; preds = %if.end
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.220) #8, !dbg !3373
  br label %if.end8, !dbg !3373

if.end8:                                          ; preds = %if.then7, %if.end
  %and9 = and i32 %0, 131072, !dbg !3374
  %tobool10.not = icmp eq i32 %and9, 0, !dbg !3374
  br i1 %tobool10.not, label %do.body.i.preheader, label %if.then11, !dbg !3376

if.then11:                                        ; preds = %if.end8
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.221) #8, !dbg !3377
  br label %do.body.i.preheader, !dbg !3377

do.body.i.preheader:                              ; preds = %if.then11, %if.end8
  br label %do.body.i, !dbg !3378

do.body.i:                                        ; preds = %do.body.i.preheader, %do.cond.i
  %start.addr.0.i = phi ptr [ %incdec.ptr.i, %do.cond.i ], [ @first_sv_flags_names, %do.body.i.preheader ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i, metadata !2428, metadata !DIExpression()) #8, !dbg !3380
  %6 = load i32, ptr %start.addr.0.i, align 8, !dbg !3381
  %and.i = and i32 %6, %0, !dbg !3382
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !3382
  br i1 %tobool.not.i, label %do.cond.i, label %if.then.i, !dbg !3383

if.then.i:                                        ; preds = %do.body.i
  %name.i = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i, i64 0, i32 1, !dbg !3384
  %7 = load ptr, ptr %name.i, align 8, !dbg !3384
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %7) #8, !dbg !3384
  br label %do.cond.i, !dbg !3384

do.cond.i:                                        ; preds = %if.then.i, %do.body.i
  %incdec.ptr.i = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i, i64 1, !dbg !3385
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2428, metadata !DIExpression()) #8, !dbg !3380
  %cmp.i = icmp ult ptr %incdec.ptr.i, getelementptr inbounds ([8 x %struct.flag_to_name], ptr @first_sv_flags_names, i64 1, i64 0), !dbg !3386
  br i1 %cmp.i, label %do.body.i, label %S_append_flags.exit, !dbg !3387, !llvm.loop !3388

S_append_flags.exit:                              ; preds = %do.cond.i
  %and13 = and i32 %0, 2048, !dbg !3390
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !3390
  br i1 %tobool14.not, label %if.end21, label %if.then15, !dbg !3392

if.then15:                                        ; preds = %S_append_flags.exit
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.222) #8, !dbg !3393
  %8 = load i32, ptr %sv_flags, align 4, !dbg !3395
  %and17 = and i32 %8, -2147481600, !dbg !3395
  %cmp = icmp eq i32 %and17, -2147481600, !dbg !3395
  br i1 %cmp, label %if.then19, label %if.end21, !dbg !3397

if.then19:                                        ; preds = %if.then15
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.223) #8, !dbg !3398
  br label %if.end21, !dbg !3398

if.end21:                                         ; preds = %if.then15, %if.then19, %S_append_flags.exit
  %and22 = and i32 %0, 268435456, !dbg !3399
  %tobool23 = icmp ne i32 %and22, 0, !dbg !3399
  %cmp24 = icmp ne i32 %and, 12
  %or.cond = and i1 %tobool23, %cmp24, !dbg !3401
  br i1 %or.cond, label %if.then26, label %do.body.i3717.preheader, !dbg !3401

if.then26:                                        ; preds = %if.end21
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call, ptr noundef nonnull @.str.224, i64 noundef 6, i32 noundef 2) #8, !dbg !3402
  br label %do.body.i3717.preheader, !dbg !3402

do.body.i3717.preheader:                          ; preds = %if.then26, %if.end21
  br label %do.body.i3717, !dbg !3403

do.body.i3717:                                    ; preds = %do.body.i3717.preheader, %do.cond.i3722
  %start.addr.0.i3714 = phi ptr [ %incdec.ptr.i3720, %do.cond.i3722 ], [ @second_sv_flags_names, %do.body.i3717.preheader ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i3714, metadata !2428, metadata !DIExpression()) #8, !dbg !3405
  %9 = load i32, ptr %start.addr.0.i3714, align 8, !dbg !3406
  %and.i3715 = and i32 %9, %0, !dbg !3407
  %tobool.not.i3716 = icmp eq i32 %and.i3715, 0, !dbg !3407
  br i1 %tobool.not.i3716, label %do.cond.i3722, label %if.then.i3719, !dbg !3408

if.then.i3719:                                    ; preds = %do.body.i3717
  %name.i3718 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3714, i64 0, i32 1, !dbg !3409
  %10 = load ptr, ptr %name.i3718, align 8, !dbg !3409
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %10) #8, !dbg !3409
  br label %do.cond.i3722, !dbg !3409

do.cond.i3722:                                    ; preds = %if.then.i3719, %do.body.i3717
  %incdec.ptr.i3720 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3714, i64 1, !dbg !3410
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i3720, metadata !2428, metadata !DIExpression()) #8, !dbg !3405
  %cmp.i3721 = icmp ult ptr %incdec.ptr.i3720, getelementptr inbounds ([8 x %struct.flag_to_name], ptr @second_sv_flags_names, i64 1, i64 0), !dbg !3411
  br i1 %cmp.i3721, label %do.body.i3717, label %S_append_flags.exit3723, !dbg !3412, !llvm.loop !3413

S_append_flags.exit3723:                          ; preds = %do.cond.i3722
  %and28 = and i32 %0, 32768, !dbg !3415
  %tobool29 = icmp ne i32 %and28, 0, !dbg !3415
  %or.cond2522 = and i1 %tobool29, %cmp24, !dbg !3417
  br i1 %or.cond2522, label %land.lhs.true33, label %if.end57, !dbg !3417

land.lhs.true33:                                  ; preds = %S_append_flags.exit3723
  %11 = load i32, ptr %sv_flags, align 4, !dbg !3418
  %and35 = and i32 %11, 49152, !dbg !3418
  %cmp36 = icmp eq i32 %and35, 32768, !dbg !3418
  br i1 %cmp36, label %land.lhs.true38, label %land.lhs.true47, !dbg !3418

land.lhs.true38:                                  ; preds = %land.lhs.true33
  %and40 = and i32 %11, 255, !dbg !3418
  %cmp41 = icmp eq i32 %and40, 9, !dbg !3418
  br i1 %cmp41, label %if.end57, label %lor.lhs.false, !dbg !3418

lor.lhs.false:                                    ; preds = %land.lhs.true38
  %cmp45 = icmp ne i32 %and40, 10, !dbg !3418
  %cmp48 = icmp ne i32 %and, 11
  %or.cond2523 = select i1 %cmp45, i1 %cmp48, i1 false, !dbg !3419
  br i1 %or.cond2523, label %if.then50, label %if.end57, !dbg !3419

land.lhs.true47:                                  ; preds = %land.lhs.true33
  %cmp48.old.not = icmp eq i32 %and, 11, !dbg !3420
  br i1 %cmp48.old.not, label %if.end57, label %if.then50, !dbg !3421

if.then50:                                        ; preds = %lor.lhs.false, %land.lhs.true47
  %and52 = and i32 %11, 34816, !dbg !3422
  %cmp53 = icmp eq i32 %and52, 34816, !dbg !3422
  %.str.225..str.226 = select i1 %cmp53, ptr @.str.225, ptr @.str.226
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull %.str.225..str.226) #8, !dbg !3425
  br label %if.end57, !dbg !3426

if.end57:                                         ; preds = %if.then50, %land.lhs.true47, %lor.lhs.false, %land.lhs.true38, %S_append_flags.exit3723
  %trunc = trunc i32 %0 to i8, !dbg !3426
  switch i8 %trunc, label %evaled_or_uv [
    i8 13, label %sw.bb
    i8 14, label %sw.bb
    i8 12, label %do.body.i3737
    i8 9, label %sw.bb60
    i8 10, label %sw.bb60
    i8 7, label %sw.bb124
    i8 11, label %sw.epilog
  ], !dbg !3426

sw.bb:                                            ; preds = %if.end57, %if.end57
  %12 = load ptr, ptr %sv, align 8, !dbg !3427
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 12, !dbg !3427
  %13 = load i32, ptr %xcv_flags, align 4, !dbg !3427
  call void @llvm.dbg.value(metadata ptr %call, metadata !2426, metadata !DIExpression()) #8, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %13, metadata !2427, metadata !DIExpression()) #8, !dbg !3428
  call void @llvm.dbg.value(metadata ptr @cv_flags_names, metadata !2428, metadata !DIExpression()) #8, !dbg !3428
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([17 x %struct.flag_to_name], ptr @cv_flags_names, i64 1, i64 0), metadata !2429, metadata !DIExpression()) #8, !dbg !3428
  br label %do.body.i3727, !dbg !3430

do.body.i3727:                                    ; preds = %do.cond.i3732, %sw.bb
  %start.addr.0.i3724 = phi ptr [ @cv_flags_names, %sw.bb ], [ %incdec.ptr.i3730, %do.cond.i3732 ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i3724, metadata !2428, metadata !DIExpression()) #8, !dbg !3428
  %14 = load i32, ptr %start.addr.0.i3724, align 8, !dbg !3431
  %and.i3725 = and i32 %14, %13, !dbg !3432
  %tobool.not.i3726 = icmp eq i32 %and.i3725, 0, !dbg !3432
  br i1 %tobool.not.i3726, label %do.cond.i3732, label %if.then.i3729, !dbg !3433

if.then.i3729:                                    ; preds = %do.body.i3727
  %name.i3728 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3724, i64 0, i32 1, !dbg !3434
  %15 = load ptr, ptr %name.i3728, align 8, !dbg !3434
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %15) #8, !dbg !3434
  br label %do.cond.i3732, !dbg !3434

do.cond.i3732:                                    ; preds = %if.then.i3729, %do.body.i3727
  %incdec.ptr.i3730 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3724, i64 1, !dbg !3435
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i3730, metadata !2428, metadata !DIExpression()) #8, !dbg !3428
  %cmp.i3731 = icmp ult ptr %incdec.ptr.i3730, getelementptr inbounds ([17 x %struct.flag_to_name], ptr @cv_flags_names, i64 1, i64 0), !dbg !3436
  br i1 %cmp.i3731, label %do.body.i3727, label %sw.epilog, !dbg !3437, !llvm.loop !3438

do.body.i3737:                                    ; preds = %if.end57, %do.cond.i3742
  %start.addr.0.i3734 = phi ptr [ %incdec.ptr.i3740, %do.cond.i3742 ], [ @hv_flags_names, %if.end57 ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i3734, metadata !2428, metadata !DIExpression()) #8, !dbg !3440
  %16 = load i32, ptr %start.addr.0.i3734, align 8, !dbg !3442
  %and.i3735 = and i32 %16, %0, !dbg !3443
  %tobool.not.i3736 = icmp eq i32 %and.i3735, 0, !dbg !3443
  br i1 %tobool.not.i3736, label %do.cond.i3742, label %if.then.i3739, !dbg !3444

if.then.i3739:                                    ; preds = %do.body.i3737
  %name.i3738 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3734, i64 0, i32 1, !dbg !3445
  %17 = load ptr, ptr %name.i3738, align 8, !dbg !3445
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %17) #8, !dbg !3445
  br label %do.cond.i3742, !dbg !3445

do.cond.i3742:                                    ; preds = %if.then.i3739, %do.body.i3737
  %incdec.ptr.i3740 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3734, i64 1, !dbg !3446
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i3740, metadata !2428, metadata !DIExpression()) #8, !dbg !3440
  %cmp.i3741 = icmp ult ptr %incdec.ptr.i3740, getelementptr inbounds ([5 x %struct.flag_to_name], ptr @hv_flags_names, i64 1, i64 0), !dbg !3447
  br i1 %cmp.i3741, label %do.body.i3737, label %sw.epilog, !dbg !3448, !llvm.loop !3449

sw.bb60:                                          ; preds = %if.end57, %if.end57
  %18 = load i32, ptr %sv_flags, align 4, !dbg !3452
  %and62 = and i32 %18, 49152, !dbg !3452
  %cmp63 = icmp eq i32 %and62, 32768, !dbg !3452
  br i1 %cmp63, label %land.lhs.true65, label %if.end78, !dbg !3452

land.lhs.true65:                                  ; preds = %sw.bb60
  %and67 = and i32 %18, 255, !dbg !3452
  %and67.off = add nsw i32 %and67, -9, !dbg !3452
  %switch3703 = icmp ult i32 %and67.off, 2, !dbg !3452
  br i1 %switch3703, label %if.then75, label %if.end78, !dbg !3452

if.then75:                                        ; preds = %land.lhs.true65
  %19 = load ptr, ptr %sv, align 8, !dbg !3454
  %xpv_cur = getelementptr inbounds %struct.xpvgv, ptr %19, i64 0, i32 2, !dbg !3454
  %20 = load i64, ptr %xpv_cur, align 8, !dbg !3454
  %conv77 = trunc i64 %20 to i32, !dbg !3454
  call void @llvm.dbg.value(metadata ptr %call, metadata !2426, metadata !DIExpression()) #8, !dbg !3456
  call void @llvm.dbg.value(metadata i32 %conv77, metadata !2427, metadata !DIExpression()) #8, !dbg !3456
  call void @llvm.dbg.value(metadata ptr @gp_flags_names, metadata !2428, metadata !DIExpression()) #8, !dbg !3456
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([3 x %struct.flag_to_name], ptr @gp_flags_names, i64 1, i64 0), metadata !2429, metadata !DIExpression()) #8, !dbg !3456
  br label %do.body.i3747, !dbg !3458

do.body.i3747:                                    ; preds = %do.cond.i3752, %if.then75
  %start.addr.0.i3744 = phi ptr [ @gp_flags_names, %if.then75 ], [ %incdec.ptr.i3750, %do.cond.i3752 ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i3744, metadata !2428, metadata !DIExpression()) #8, !dbg !3456
  %21 = load i32, ptr %start.addr.0.i3744, align 8, !dbg !3459
  %and.i3745 = and i32 %21, %conv77, !dbg !3460
  %tobool.not.i3746 = icmp eq i32 %and.i3745, 0, !dbg !3460
  br i1 %tobool.not.i3746, label %do.cond.i3752, label %if.then.i3749, !dbg !3461

if.then.i3749:                                    ; preds = %do.body.i3747
  %name.i3748 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3744, i64 0, i32 1, !dbg !3462
  %22 = load ptr, ptr %name.i3748, align 8, !dbg !3462
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %22) #8, !dbg !3462
  br label %do.cond.i3752, !dbg !3462

do.cond.i3752:                                    ; preds = %if.then.i3749, %do.body.i3747
  %incdec.ptr.i3750 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3744, i64 1, !dbg !3463
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i3750, metadata !2428, metadata !DIExpression()) #8, !dbg !3456
  %cmp.i3751 = icmp ult ptr %incdec.ptr.i3750, getelementptr inbounds ([3 x %struct.flag_to_name], ptr @gp_flags_names, i64 1, i64 0), !dbg !3464
  br i1 %cmp.i3751, label %do.body.i3747, label %if.end78.loopexit, !dbg !3465, !llvm.loop !3466

if.end78.loopexit:                                ; preds = %do.cond.i3752
  %.pre4028 = load i32, ptr %sv_flags, align 4, !dbg !3468
  br label %if.end78, !dbg !3468

if.end78:                                         ; preds = %if.end78.loopexit, %land.lhs.true65, %sw.bb60
  %23 = phi i32 [ %.pre4028, %if.end78.loopexit ], [ %18, %land.lhs.true65 ], [ %18, %sw.bb60 ], !dbg !3468
  %and80 = and i32 %23, 49152, !dbg !3468
  %cmp81 = icmp eq i32 %and80, 32768, !dbg !3468
  br i1 %cmp81, label %land.lhs.true83, label %evaled_or_uv, !dbg !3468

land.lhs.true83:                                  ; preds = %if.end78
  %and85 = and i32 %23, 255, !dbg !3468
  %and85.off = add nsw i32 %and85, -9, !dbg !3468
  %switch3704 = icmp ult i32 %and85.off, 2, !dbg !3468
  br i1 %switch3704, label %land.lhs.true93, label %evaled_or_uv, !dbg !3468

land.lhs.true93:                                  ; preds = %land.lhs.true83
  %24 = load ptr, ptr %sv, align 8, !dbg !3470
  %xpv_cur95 = getelementptr inbounds %struct.xpvgv, ptr %24, i64 0, i32 2, !dbg !3470
  %25 = load i64, ptr %xpv_cur95, align 8, !dbg !3470
  %and96 = and i64 %25, 240, !dbg !3470
  %tobool97.not = icmp eq i64 %and96, 0, !dbg !3470
  br i1 %tobool97.not, label %evaled_or_uv, label %if.then98, !dbg !3471

if.then98:                                        ; preds = %land.lhs.true93
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.227) #8, !dbg !3472
  %26 = load ptr, ptr %sv, align 8, !dbg !3474
  %xpv_cur100 = getelementptr inbounds %struct.xpvgv, ptr %26, i64 0, i32 2, !dbg !3474
  %27 = load i64, ptr %xpv_cur100, align 8, !dbg !3474
  %and101 = and i64 %27, 240, !dbg !3474
  %cmp102 = icmp eq i64 %and101, 240, !dbg !3476
  br i1 %cmp102, label %evaled_or_uv.sink.split, label %if.else105, !dbg !3477

if.else105:                                       ; preds = %if.then98
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.19) #8, !dbg !3478
  %28 = load ptr, ptr %sv, align 8, !dbg !3480
  %xpv_cur107 = getelementptr inbounds %struct.xpvgv, ptr %28, i64 0, i32 2, !dbg !3480
  %29 = load i64, ptr %xpv_cur107, align 8, !dbg !3480
  %conv108 = trunc i64 %29 to i32, !dbg !3480
  call void @llvm.dbg.value(metadata ptr %call, metadata !2426, metadata !DIExpression()) #8, !dbg !3481
  call void @llvm.dbg.value(metadata i32 %conv108, metadata !2427, metadata !DIExpression()) #8, !dbg !3481
  call void @llvm.dbg.value(metadata ptr @gp_flags_imported_names, metadata !2428, metadata !DIExpression()) #8, !dbg !3481
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([4 x %struct.flag_to_name], ptr @gp_flags_imported_names, i64 1, i64 0), metadata !2429, metadata !DIExpression()) #8, !dbg !3481
  br label %do.body.i3757, !dbg !3483

do.body.i3757:                                    ; preds = %do.cond.i3762, %if.else105
  %start.addr.0.i3754 = phi ptr [ @gp_flags_imported_names, %if.else105 ], [ %incdec.ptr.i3760, %do.cond.i3762 ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i3754, metadata !2428, metadata !DIExpression()) #8, !dbg !3481
  %30 = load i32, ptr %start.addr.0.i3754, align 8, !dbg !3484
  %and.i3755 = and i32 %30, %conv108, !dbg !3485
  %tobool.not.i3756 = icmp eq i32 %and.i3755, 0, !dbg !3485
  br i1 %tobool.not.i3756, label %do.cond.i3762, label %if.then.i3759, !dbg !3486

if.then.i3759:                                    ; preds = %do.body.i3757
  %name.i3758 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3754, i64 0, i32 1, !dbg !3487
  %31 = load ptr, ptr %name.i3758, align 8, !dbg !3487
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %31) #8, !dbg !3487
  br label %do.cond.i3762, !dbg !3487

do.cond.i3762:                                    ; preds = %if.then.i3759, %do.body.i3757
  %incdec.ptr.i3760 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3754, i64 1, !dbg !3488
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i3760, metadata !2428, metadata !DIExpression()) #8, !dbg !3481
  %cmp.i3761 = icmp ult ptr %incdec.ptr.i3760, getelementptr inbounds ([4 x %struct.flag_to_name], ptr @gp_flags_imported_names, i64 1, i64 0), !dbg !3489
  br i1 %cmp.i3761, label %do.body.i3757, label %evaled_or_uv.sink.split, !dbg !3490, !llvm.loop !3491

evaled_or_uv.sink.split:                          ; preds = %do.cond.i3762, %if.then98, %if.end130
  %.str.233.sink = phi ptr [ @.str.233, %if.end130 ], [ @.str.228, %if.then98 ], [ @.str.229, %do.cond.i3762 ]
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull %.str.233.sink) #8, !dbg !3493
  br label %evaled_or_uv, !dbg !3494

evaled_or_uv:                                     ; preds = %evaled_or_uv.sink.split, %land.lhs.true83, %if.end130, %if.end57, %land.lhs.true93, %if.end78
  call void @llvm.dbg.label(metadata !3350), !dbg !3496
  %32 = load i32, ptr %sv_flags, align 4, !dbg !3494
  %and112 = and i32 %32, 1073741824, !dbg !3494
  %tobool113.not = icmp eq i32 %and112, 0, !dbg !3494
  br i1 %tobool113.not, label %if.end115, label %if.then114, !dbg !3497

if.then114:                                       ; preds = %evaled_or_uv
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.230) #8, !dbg !3498
  %.pre4029 = load i32, ptr %sv_flags, align 4, !dbg !3499
  br label %if.end115, !dbg !3498

if.end115:                                        ; preds = %if.then114, %evaled_or_uv
  %33 = phi i32 [ %.pre4029, %if.then114 ], [ %32, %evaled_or_uv ], !dbg !3499
  %tobool118.not = icmp sgt i32 %33, -1, !dbg !3499
  %tobool14.not.not = xor i1 %tobool14.not, true, !dbg !3501
  %brmerge = select i1 %tobool118.not, i1 true, i1 %tobool14.not.not, !dbg !3501
  br i1 %brmerge, label %sw.epilog, label %if.then122, !dbg !3501

if.then122:                                       ; preds = %if.end115
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.231) #8, !dbg !3502
  br label %sw.epilog, !dbg !3502

sw.bb124:                                         ; preds = %if.end57
  %34 = load i32, ptr %sv_flags, align 4, !dbg !3503
  %cmp127 = icmp ugt i32 %34, -1073741825, !dbg !3503
  br i1 %cmp127, label %if.then129, label %if.end130, !dbg !3505

if.then129:                                       ; preds = %sw.bb124
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.232) #8, !dbg !3506
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !3507
  br label %if.end130, !dbg !3506

if.end130:                                        ; preds = %if.then129, %sw.bb124
  %35 = phi i32 [ %.pre, %if.then129 ], [ %34, %sw.bb124 ], !dbg !3507
  %and132 = and i32 %35, 1073741824, !dbg !3507
  %tobool133.not = icmp eq i32 %and132, 0, !dbg !3507
  %and136 = and i32 %35, 49152, !dbg !3507
  %cmp137 = icmp eq i32 %and136, 49152, !dbg !3507
  %or.cond3692 = or i1 %tobool133.not, %cmp137, !dbg !3507
  br i1 %or.cond3692, label %evaled_or_uv, label %evaled_or_uv.sink.split, !dbg !3507

sw.epilog:                                        ; preds = %do.cond.i3742, %do.cond.i3732, %if.end115, %if.then122, %if.end57
  br i1 %cmp24, label %land.lhs.true143, label %if.end148, !dbg !3509

land.lhs.true143:                                 ; preds = %sw.epilog
  %36 = load i32, ptr %sv_flags, align 4, !dbg !3511
  %and145 = and i32 %36, 536870912, !dbg !3511
  %tobool146.not = icmp eq i32 %and145, 0, !dbg !3511
  br i1 %tobool146.not, label %if.end148, label %if.then147, !dbg !3512

if.then147:                                       ; preds = %land.lhs.true143
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.234) #8, !dbg !3513
  br label %if.end148, !dbg !3513

if.end148:                                        ; preds = %if.then147, %land.lhs.true143, %sw.epilog
  %sv_u = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 3, !dbg !3514
  %37 = load ptr, ptr %sv_u, align 8, !dbg !3514
  %38 = load ptr, ptr %call, align 8, !dbg !3514
  %xpv_cur150 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2, !dbg !3514
  %39 = load i64, ptr %xpv_cur150, align 8, !dbg !3514
  %add.ptr = getelementptr inbounds i8, ptr %37, i64 %39, !dbg !3514
  %add.ptr151 = getelementptr inbounds i8, ptr %add.ptr, i64 -1, !dbg !3516
  %40 = load i8, ptr %add.ptr151, align 1, !dbg !3517
  %cmp153 = icmp eq i8 %40, 44, !dbg !3518
  br i1 %cmp153, label %do.body, label %if.end163, !dbg !3519

do.body:                                          ; preds = %if.end148
  %sub = add i64 %39, -1, !dbg !3520
  store i64 %sub, ptr %xpv_cur150, align 8, !dbg !3520
  %41 = load ptr, ptr %sv_u, align 8, !dbg !3523
  %42 = load ptr, ptr %call, align 8, !dbg !3524
  %xpv_cur162 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2, !dbg !3524
  %43 = load i64, ptr %xpv_cur162, align 8, !dbg !3524
  %arrayidx = getelementptr inbounds i8, ptr %41, i64 %43, !dbg !3523
  store i8 0, ptr %arrayidx, align 1, !dbg !3525
  br label %if.end163, !dbg !3526

if.end163:                                        ; preds = %do.body, %if.end148
  tail call void @Perl_sv_catpv(ptr noundef nonnull %call, ptr noundef nonnull @.str.34) #8, !dbg !3527
  %44 = load ptr, ptr %sv_u, align 8, !dbg !3528
  call void @llvm.dbg.value(metadata ptr %44, metadata !3221, metadata !DIExpression()), !dbg !3354
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.235), !dbg !3529
  %cmp166 = icmp ult i32 %and, 16, !dbg !3530
  %idxprom = zext i32 %and to i64, !dbg !3532
  br i1 %cmp166, label %if.then168, label %if.else175, !dbg !3533

if.then168:                                       ; preds = %if.end163
  %reltable.shift = shl i64 %idxprom, 2, !dbg !3534
  %reltable.intrinsic = call ptr @llvm.load.relative.i64(ptr @reltable.Perl_do_sv_dump, i64 %reltable.shift), !dbg !3534
  %call170 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.236, ptr noundef %reltable.intrinsic, ptr noundef %44) #8, !dbg !3536
  switch i8 %trunc, label %land.lhs.true199 [
    i8 0, label %if.then173
    i8 1, label %land.lhs.true226
    i8 15, label %if.end240
    i8 2, label %if.end240
    i8 3, label %if.end240
    i8 4, label %if.end240
    i8 8, label %if.end240
    i8 11, label %if.end240
    i8 12, label %if.end240
    i8 13, label %if.end240
    i8 14, label %if.end240
  ], !dbg !3537

if.then173:                                       ; preds = %if.then168
  call void @llvm.dbg.value(metadata ptr %call, metadata !1952, metadata !DIExpression()) #8, !dbg !3538
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 1, !dbg !3542
  %45 = load i32, ptr %sv_refcnt.i, align 8, !dbg !3542
  call void @llvm.dbg.value(metadata i32 %45, metadata !1957, metadata !DIExpression()) #8, !dbg !3538
  %cmp.i3764 = icmp ugt i32 %45, 1, !dbg !3543
  br i1 %cmp.i3764, label %if.then.i3765, label %if.else.i, !dbg !3544

if.then.i3765:                                    ; preds = %if.then173
  %sub.i = add i32 %45, -1, !dbg !3545
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !3546
  br label %cleanup2516, !dbg !3547

if.else.i:                                        ; preds = %if.then173
  tail call void @Perl_sv_free2(ptr noundef nonnull %call, i32 noundef %45) #8, !dbg !3548
  br label %cleanup2516

if.else175:                                       ; preds = %if.end163
  %call177 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.237, i64 noundef %idxprom, ptr noundef %44) #8, !dbg !3549
  call void @llvm.dbg.value(metadata ptr %call, metadata !1952, metadata !DIExpression()) #8, !dbg !3551
  %sv_refcnt.i3766 = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 1, !dbg !3553
  %46 = load i32, ptr %sv_refcnt.i3766, align 8, !dbg !3553
  call void @llvm.dbg.value(metadata i32 %46, metadata !1957, metadata !DIExpression()) #8, !dbg !3551
  %cmp.i3767 = icmp ugt i32 %46, 1, !dbg !3554
  br i1 %cmp.i3767, label %if.then.i3769, label %if.else.i3770, !dbg !3555

if.then.i3769:                                    ; preds = %if.else175
  %sub.i3768 = add i32 %46, -1, !dbg !3556
  store i32 %sub.i3768, ptr %sv_refcnt.i3766, align 8, !dbg !3557
  br label %cleanup2516, !dbg !3558

if.else.i3770:                                    ; preds = %if.else175
  tail call void @Perl_sv_free2(ptr noundef nonnull %call, i32 noundef %46) #8, !dbg !3559
  br label %cleanup2516

land.lhs.true199:                                 ; preds = %if.then168
  %47 = load i32, ptr %sv_flags, align 4, !dbg !3560
  %and201 = and i32 %47, 49152, !dbg !3560
  %cmp202 = icmp eq i32 %and201, 32768, !dbg !3560
  br i1 %cmp202, label %land.lhs.true204, label %land.lhs.true214, !dbg !3560

land.lhs.true204:                                 ; preds = %land.lhs.true199
  %and206 = and i32 %47, 255, !dbg !3560
  %and206.off = add nsw i32 %and206, -9, !dbg !3560
  %switch3705 = icmp ult i32 %and206.off, 2, !dbg !3560
  br i1 %switch3705, label %if.end240, label %land.lhs.true214, !dbg !3560

land.lhs.true214:                                 ; preds = %land.lhs.true204, %land.lhs.true199
  %and216 = and i32 %47, 1073741824, !dbg !3562
  %tobool217.not = icmp eq i32 %and216, 0, !dbg !3562
  %cmp221 = icmp eq i32 %and201, 49152, !dbg !3562
  %or.cond3693 = or i1 %tobool217.not, %cmp221, !dbg !3562
  br i1 %or.cond3693, label %if.then230, label %if.end240, !dbg !3562

land.lhs.true226:                                 ; preds = %if.then168
  %48 = load i32, ptr %sv_flags, align 4, !dbg !3563
  %and228 = and i32 %48, 2048, !dbg !3563
  %tobool229.not = icmp eq i32 %and228, 0, !dbg !3563
  br i1 %tobool229.not, label %if.then230, label %if.end290, !dbg !3564

if.then230:                                       ; preds = %land.lhs.true214, %land.lhs.true226
  %49 = phi i32 [ %48, %land.lhs.true226 ], [ %47, %land.lhs.true214 ], !dbg !3565
  %tobool233.not = icmp sgt i32 %49, -1, !dbg !3565
  %50 = load ptr, ptr %sv, align 8, !dbg !3568
  br i1 %tobool233.not, label %if.else236, label %if.then234, !dbg !3569

if.then234:                                       ; preds = %if.then230
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %50, i64 0, i32 4, !dbg !3570
  br label %if.end238, !dbg !3571

if.else236:                                       ; preds = %if.then230
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %50, i64 0, i32 4, !dbg !3572
  br label %if.end238

if.end238:                                        ; preds = %if.else236, %if.then234
  %xiv_u.sink = phi ptr [ %xiv_u, %if.else236 ], [ %xuv_u, %if.then234 ]
  %.str.239.sink = phi ptr [ @.str.239, %if.else236 ], [ @.str.238, %if.then234 ]
  %51 = load i64, ptr %xiv_u.sink, align 8, !dbg !3568
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull %.str.239.sink, i64 noundef %51), !dbg !3568
  %call239 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 10) #8, !dbg !3573
  br label %if.end240, !dbg !3574

if.end240:                                        ; preds = %land.lhs.true214, %land.lhs.true204, %if.then168, %if.then168, %if.then168, %if.then168, %if.then168, %if.then168, %if.then168, %if.then168, %if.then168, %if.end238
  switch i8 %trunc, label %land.lhs.true261 [
    i8 15, label %lor.lhs.false285
    i8 14, label %lor.lhs.false285
    i8 13, label %lor.lhs.false285
    i8 12, label %lor.lhs.false285
    i8 11, label %lor.lhs.false285
    i8 8, label %lor.lhs.false285
    i8 5, label %lor.lhs.false285
    i8 4, label %lor.lhs.false285
    i8 3, label %lor.lhs.false285
    i8 2, label %lor.lhs.false285
    i8 1, label %lor.lhs.false285
  ], !dbg !3575

land.lhs.true261:                                 ; preds = %if.end240
  %52 = load i32, ptr %sv_flags, align 4, !dbg !3577
  %and263 = and i32 %52, 49152, !dbg !3577
  %cmp264 = icmp eq i32 %and263, 32768, !dbg !3577
  br i1 %cmp264, label %land.lhs.true266, label %land.lhs.true276, !dbg !3577

land.lhs.true266:                                 ; preds = %land.lhs.true261
  %and268 = and i32 %52, 255, !dbg !3577
  %and268.off = add nsw i32 %and268, -9, !dbg !3577
  %switch3706 = icmp ult i32 %and268.off, 2, !dbg !3577
  br i1 %switch3706, label %lor.lhs.false285, label %land.lhs.true276, !dbg !3577

land.lhs.true276:                                 ; preds = %land.lhs.true266, %land.lhs.true261
  %and278 = and i32 %52, 1073741824, !dbg !3578
  %tobool279.not = icmp eq i32 %and278, 0, !dbg !3578
  %cmp283 = icmp eq i32 %and263, 49152, !dbg !3578
  %or.cond3694 = or i1 %tobool279.not, %cmp283, !dbg !3578
  br i1 %or.cond3694, label %if.then288, label %if.end290, !dbg !3578

lor.lhs.false285:                                 ; preds = %land.lhs.true266, %if.end240, %if.end240, %if.end240, %if.end240, %if.end240, %if.end240, %if.end240, %if.end240, %if.end240, %if.end240, %if.end240
  %cmp286.old = icmp eq i32 %and, 2, !dbg !3579
  br i1 %cmp286.old, label %if.then288, label %if.end290, !dbg !3580

if.then288:                                       ; preds = %lor.lhs.false285, %land.lhs.true276
  %53 = load ptr, ptr %sv, align 8, !dbg !3581
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %53, i64 0, i32 5, !dbg !3581
  %54 = load double, ptr %xnv_u, align 8, !dbg !3581
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.240, i32 noundef 15, double noundef %54), !dbg !3583
  br label %if.end290, !dbg !3584

if.end290:                                        ; preds = %land.lhs.true226, %land.lhs.true276, %if.then288, %lor.lhs.false285
  %55 = load i32, ptr %sv_flags, align 4, !dbg !3585
  %and292 = and i32 %55, 2048, !dbg !3585
  %tobool293.not = icmp eq i32 %and292, 0, !dbg !3585
  br i1 %tobool293.not, label %if.end303, label %if.then294, !dbg !3587

if.then294:                                       ; preds = %if.end290
  %sv_u295 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !3588
  %56 = load ptr, ptr %sv_u295, align 8, !dbg !3588
  %57 = ptrtoint ptr %56 to i64, !dbg !3588
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.241, i64 noundef %57), !dbg !3590
  %cmp296 = icmp sgt i32 %maxnest, %nest, !dbg !3591
  br i1 %cmp296, label %if.then298, label %if.end303, !dbg !3593

if.then298:                                       ; preds = %if.then294
  %add = add nsw i32 %level, 1, !dbg !3594
  %58 = load ptr, ptr %sv_u295, align 8, !dbg !3594
  %add300 = add nsw i32 %nest, 1, !dbg !3594
  tail call void @Perl_do_sv_dump(i32 noundef %add, ptr noundef %file, ptr noundef %58, i32 noundef %add300, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !3594
  br label %if.end303, !dbg !3594

if.end303:                                        ; preds = %if.then294, %if.then298, %if.end290
  %cmp304 = icmp ult i32 %and, 3, !dbg !3595
  br i1 %cmp304, label %if.then306, label %if.end307, !dbg !3597

if.then306:                                       ; preds = %if.end303
  call void @llvm.dbg.value(metadata ptr %call, metadata !1952, metadata !DIExpression()) #8, !dbg !3598
  %sv_refcnt.i3772 = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 1, !dbg !3601
  %59 = load i32, ptr %sv_refcnt.i3772, align 8, !dbg !3601
  call void @llvm.dbg.value(metadata i32 %59, metadata !1957, metadata !DIExpression()) #8, !dbg !3598
  %cmp.i3773 = icmp ugt i32 %59, 1, !dbg !3602
  br i1 %cmp.i3773, label %if.then.i3775, label %if.else.i3776, !dbg !3603

if.then.i3775:                                    ; preds = %if.then306
  %sub.i3774 = add i32 %59, -1, !dbg !3604
  store i32 %sub.i3774, ptr %sv_refcnt.i3772, align 8, !dbg !3605
  br label %cleanup2516, !dbg !3606

if.else.i3776:                                    ; preds = %if.then306
  tail call void @Perl_sv_free2(ptr noundef nonnull %call, i32 noundef %59) #8, !dbg !3607
  br label %cleanup2516

if.end307:                                        ; preds = %if.end303
  %cmp308 = icmp ult i32 %and, 11, !dbg !3608
  br i1 %cmp308, label %land.lhs.true310, label %lor.lhs.false325, !dbg !3609

land.lhs.true310:                                 ; preds = %if.end307
  %60 = load i32, ptr %sv_flags, align 4, !dbg !3610
  %and312 = and i32 %60, 49152, !dbg !3610
  %cmp313 = icmp eq i32 %and312, 32768, !dbg !3610
  br i1 %cmp313, label %land.lhs.true315, label %if.then333, !dbg !3610

land.lhs.true315:                                 ; preds = %land.lhs.true310
  %and317 = and i32 %60, 255, !dbg !3610
  %and317.off = add nsw i32 %and317, -9, !dbg !3610
  %switch3707 = icmp ult i32 %and317.off, 2, !dbg !3610
  br i1 %switch3707, label %if.end437, label %if.then333, !dbg !3610

lor.lhs.false325:                                 ; preds = %if.end307
  %cmp326 = icmp eq i32 %and, 15, !dbg !3611
  br i1 %cmp326, label %land.lhs.true328, label %if.then440, !dbg !3612

land.lhs.true328:                                 ; preds = %lor.lhs.false325
  %61 = load ptr, ptr %sv, align 8, !dbg !3613
  %xio_flags = getelementptr inbounds %struct.xpvio, ptr %61, i64 0, i32 17, !dbg !3613
  %62 = load i8, ptr %xio_flags, align 1, !dbg !3613
  %63 = and i8 %62, 64, !dbg !3614
  %tobool332.not = icmp eq i8 %63, 0, !dbg !3614
  br i1 %tobool332.not, label %if.then440, label %land.lhs.true328.if.then333_crit_edge, !dbg !3615

land.lhs.true328.if.then333_crit_edge:            ; preds = %land.lhs.true328
  %.pre4030 = load i32, ptr %sv_flags, align 4, !dbg !3616
  br label %if.then333, !dbg !3615

if.then333:                                       ; preds = %land.lhs.true328.if.then333_crit_edge, %land.lhs.true315, %land.lhs.true310
  %64 = phi i32 [ %.pre4030, %land.lhs.true328.if.then333_crit_edge ], [ %60, %land.lhs.true315 ], [ %60, %land.lhs.true310 ], !dbg !3616
  %and335 = and i32 %64, 255, !dbg !3616
  %cmp336 = icmp eq i32 %and335, 8, !dbg !3616
  %and339 = and i32 %64, 16826623, !dbg !3616
  %cmp340 = icmp eq i32 %and339, 16777226, !dbg !3616
  %or.cond3986 = or i1 %cmp336, %cmp340, !dbg !3616
  call void @llvm.dbg.value(metadata i1 %cmp340, metadata !3224, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3617
  br i1 %or.cond3986, label %cond.true, label %cond.false, !dbg !3616

cond.true:                                        ; preds = %if.then333
  %65 = getelementptr i8, ptr %sv, i64 16, !dbg !3618
  %sv.val3711 = load ptr, ptr %65, align 8, !dbg !3618
  %xpv_len_u = getelementptr inbounds %struct.regexp, ptr %sv.val3711, i64 0, i32 3, !dbg !3618
  br label %cond.end, !dbg !3619

cond.false:                                       ; preds = %if.then333
  %sv_u346 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !3620
  br label %cond.end, !dbg !3619

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi ptr [ %xpv_len_u, %cond.true ], [ %sv_u346, %cond.false ]
  %cond = load ptr, ptr %cond.in, align 8, !dbg !3619
  call void @llvm.dbg.value(metadata ptr %cond, metadata !3228, metadata !DIExpression()), !dbg !3617
  %tobool348.not = icmp eq ptr %cond, null, !dbg !3621
  br i1 %tobool348.not, label %if.else435, label %if.then349, !dbg !3622

if.then349:                                       ; preds = %cond.end
  %and351 = and i32 %64, 33554432, !dbg !3623
  %tobool352.not = icmp eq i32 %and351, 0, !dbg !3623
  br i1 %tobool352.not, label %if.end375, label %if.then358, !dbg !3625

if.then358:                                       ; preds = %if.then349
  %sv_u359 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !3626
  %66 = load ptr, ptr %sv_u359, align 8, !dbg !3626
  %arrayidx361 = getelementptr inbounds i8, ptr %66, i64 -1, !dbg !3626
  %67 = load i8, ptr %arrayidx361, align 1, !dbg !3626
  %conv362 = zext i8 %67 to i64, !dbg !3626
  call void @llvm.dbg.value(metadata i64 %conv362, metadata !3229, metadata !DIExpression()), !dbg !3631
  %tobool363.not = icmp eq i8 %67, 0, !dbg !3632
  br i1 %tobool363.not, label %if.then364, label %do.end373, !dbg !3626

if.then364:                                       ; preds = %if.then358
  %add.ptr368 = getelementptr inbounds i8, ptr %66, i64 -9, !dbg !3634
  %delta.0.copyload = load i64, ptr %add.ptr368, align 1, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %delta.0.copyload, metadata !3229, metadata !DIExpression()), !dbg !3631
  br label %do.end373, !dbg !3634

do.end373:                                        ; preds = %if.then358, %if.then364
  %delta.0 = phi i64 [ %conv362, %if.then358 ], [ %delta.0.copyload, %if.then364 ], !dbg !3636
  call void @llvm.dbg.value(metadata i64 %delta.0, metadata !3229, metadata !DIExpression()), !dbg !3631
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.242, i64 noundef %delta.0), !dbg !3637
  br label %if.end375, !dbg !3638

if.end375:                                        ; preds = %if.then349, %do.end373
  %delta.1 = phi i64 [ %delta.0, %do.end373 ], [ 0, %if.then349 ], !dbg !3639
  call void @llvm.dbg.value(metadata i64 %delta.1, metadata !3229, metadata !DIExpression()), !dbg !3631
  %68 = ptrtoint ptr %cond to i64, !dbg !3640
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.243, i64 noundef %68), !dbg !3641
  %69 = load i32, ptr %sv_flags, align 4, !dbg !3642
  %and377 = and i32 %69, 33554432, !dbg !3642
  %tobool378.not = icmp eq i32 %and377, 0, !dbg !3642
  br i1 %tobool378.not, label %if.end383, label %if.then379, !dbg !3644

if.then379:                                       ; preds = %if.end375
  %idx.neg = sub i64 0, %delta.1, !dbg !3645
  %add.ptr380 = getelementptr inbounds i8, ptr %cond, i64 %idx.neg, !dbg !3645
  %call381 = tail call ptr @Perl_pv_display(ptr noundef nonnull %call, ptr noundef nonnull %add.ptr380, i64 noundef %delta.1, i64 noundef 0, i64 noundef %pvlim), !dbg !3645
  %call382 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.244, ptr noundef %call381) #8, !dbg !3647
  br label %if.end383, !dbg !3648

if.end383:                                        ; preds = %if.then379, %if.end375
  %cmp384 = icmp eq i32 %and, 4, !dbg !3649
  br i1 %cmp384, label %if.then386, label %if.else388, !dbg !3651

if.then386:                                       ; preds = %if.end383
  %call387 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.245) #8, !dbg !3652
  tail call void @Perl__invlist_dump(ptr noundef %file, i32 noundef %level, ptr noundef nonnull @.str.246, ptr noundef nonnull %sv) #8, !dbg !3654
  br label %if.end412, !dbg !3655

if.else388:                                       ; preds = %if.end383
  %70 = load ptr, ptr %sv, align 8, !dbg !3656
  %xpv_cur390 = getelementptr inbounds %struct.xpv, ptr %70, i64 0, i32 2, !dbg !3656
  %71 = load i64, ptr %xpv_cur390, align 8, !dbg !3656
  br i1 %or.cond3986, label %cond.end397, label %cond.false394, !dbg !3656

cond.false394:                                    ; preds = %if.else388
  %xpv_len_u396 = getelementptr inbounds %struct.xpv, ptr %70, i64 0, i32 3, !dbg !3656
  %72 = load i64, ptr %xpv_len_u396, align 8, !dbg !3656
  br label %cond.end397, !dbg !3656

cond.end397:                                      ; preds = %if.else388, %cond.false394
  %cond398 = phi i64 [ %72, %cond.false394 ], [ 0, %if.else388 ], !dbg !3656
  %call399 = tail call ptr @Perl_pv_display(ptr noundef nonnull %call, ptr noundef nonnull %cond, i64 noundef %71, i64 noundef %cond398, i64 noundef %pvlim), !dbg !3656
  %call400 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.247, ptr noundef %call399) #8, !dbg !3658
  %73 = load i32, ptr %sv_flags, align 4, !dbg !3659
  %and402 = and i32 %73, 536870912, !dbg !3659
  %tobool403.not = icmp eq i32 %and402, 0, !dbg !3659
  br i1 %tobool403.not, label %if.end410, label %if.then404, !dbg !3661

if.then404:                                       ; preds = %cond.end397
  %74 = load ptr, ptr %sv, align 8, !dbg !3662
  %xpv_cur406 = getelementptr inbounds %struct.xpv, ptr %74, i64 0, i32 2, !dbg !3662
  %75 = load i64, ptr %xpv_cur406, align 8, !dbg !3662
  %mul407 = mul i64 %75, 6, !dbg !3662
  %call408 = tail call ptr @Perl_sv_uni_display(ptr noundef nonnull %call, ptr noundef nonnull %sv, i64 noundef %mul407, i64 noundef 3) #8, !dbg !3662
  %call409 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.29, ptr noundef %call408) #8, !dbg !3663
  br label %if.end410, !dbg !3663

if.end410:                                        ; preds = %if.then404, %cond.end397
  %call411 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.245) #8, !dbg !3664
  br label %if.end412

if.end412:                                        ; preds = %if.end410, %if.then386
  %76 = load ptr, ptr %sv, align 8, !dbg !3665
  %xpv_cur414 = getelementptr inbounds %struct.xpv, ptr %76, i64 0, i32 2, !dbg !3665
  %77 = load i64, ptr %xpv_cur414, align 8, !dbg !3665
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.248, i64 noundef %77), !dbg !3666
  br i1 %or.cond3986, label %if.end419, label %if.then416, !dbg !3667

if.then416:                                       ; preds = %if.end412
  %78 = load ptr, ptr %sv, align 8, !dbg !3668
  %xpv_len_u418 = getelementptr inbounds %struct.xpv, ptr %78, i64 0, i32 3, !dbg !3668
  %79 = load i64, ptr %xpv_len_u418, align 8, !dbg !3668
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.249, i64 noundef %79), !dbg !3670
  br label %if.end419, !dbg !3670

if.end419:                                        ; preds = %if.then416, %if.end412
  %80 = load i32, ptr %sv_flags, align 4, !dbg !3671
  %and421 = and i32 %80, 268435456, !dbg !3671
  %tobool422.not = icmp eq i32 %and421, 0, !dbg !3671
  br i1 %tobool422.not, label %if.end437, label %land.lhs.true423, !dbg !3673

land.lhs.true423:                                 ; preds = %if.end419
  %81 = load ptr, ptr %sv, align 8, !dbg !3674
  %xpv_len_u425 = getelementptr inbounds %struct.xpv, ptr %81, i64 0, i32 3, !dbg !3674
  %82 = load i64, ptr %xpv_len_u425, align 8, !dbg !3674
  %tobool426.not = icmp eq i64 %82, 0, !dbg !3674
  br i1 %tobool426.not, label %if.end437, label %if.then427, !dbg !3675

if.then427:                                       ; preds = %land.lhs.true423
  %sv_u428 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !3676
  %83 = load ptr, ptr %sv_u428, align 8, !dbg !3676
  %add.ptr431 = getelementptr inbounds i8, ptr %83, i64 %82, !dbg !3676
  %add.ptr432 = getelementptr inbounds i8, ptr %add.ptr431, i64 -1, !dbg !3676
  %84 = load i8, ptr %add.ptr432, align 1, !dbg !3676
  %conv433 = zext i8 %84 to i32, !dbg !3676
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.250, i32 noundef %conv433), !dbg !3677
  br label %if.end437, !dbg !3677

if.else435:                                       ; preds = %cond.end
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.251), !dbg !3678
  br label %if.end437

if.end437:                                        ; preds = %land.lhs.true315, %if.else435, %if.then427, %land.lhs.true423, %if.end419
  %cmp438 = icmp ugt i32 %and, 6, !dbg !3679
  br i1 %cmp438, label %if.then440, label %if.end473, !dbg !3681

if.then440:                                       ; preds = %lor.lhs.false325, %land.lhs.true328, %if.end437
  %85 = load ptr, ptr %sv, align 8, !dbg !3682
  %xmg_u = getelementptr inbounds %struct.xpvmg, ptr %85, i64 0, i32 1, !dbg !3682
  %86 = load ptr, ptr %xmg_u, align 8, !dbg !3682
  %tobool442.not = icmp eq ptr %86, null, !dbg !3682
  br i1 %tobool442.not, label %if.end448, label %if.then443, !dbg !3685

if.then443:                                       ; preds = %if.then440
  %add446 = add nsw i32 %nest, 1, !dbg !3686
  tail call void @Perl_do_magic_dump(i32 noundef %level, ptr noundef %file, ptr noundef nonnull %86, i32 noundef %add446, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !3686
  %.pre4031 = load ptr, ptr %sv, align 8, !dbg !3687
  br label %if.end448, !dbg !3686

if.end448:                                        ; preds = %if.then443, %if.then440
  %87 = phi ptr [ %.pre4031, %if.then443 ], [ %85, %if.then440 ], !dbg !3687
  %88 = load ptr, ptr %87, align 8, !dbg !3687
  %tobool450.not = icmp eq ptr %88, null, !dbg !3687
  br i1 %tobool450.not, label %if.end454, label %if.then451, !dbg !3689

if.then451:                                       ; preds = %if.end448
  tail call void @Perl_do_hv_dump(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.252, ptr noundef nonnull %88), !dbg !3690
  br label %if.end454, !dbg !3690

if.end454:                                        ; preds = %if.then451, %if.end448
  switch i8 %trunc, label %sw.epilog2515 [
    i8 10, label %land.lhs.true460
    i8 7, label %land.lhs.true460
    i8 11, label %sw.bb474
    i8 12, label %sw.bb542
    i8 13, label %sw.bb1806
    i8 14, label %sw.bb1936
    i8 9, label %sw.bb2111
    i8 15, label %sw.bb2258
    i8 8, label %dumpregexp
  ], !dbg !3691

land.lhs.true460:                                 ; preds = %if.end454, %if.end454
  %89 = load i32, ptr %sv_flags, align 4, !dbg !3693
  %and462 = and i32 %89, 1073741824, !dbg !3693
  %tobool463.not = icmp eq i32 %and462, 0, !dbg !3693
  %and466 = and i32 %89, 49152, !dbg !3693
  %cmp467 = icmp eq i32 %and466, 49152, !dbg !3693
  %or.cond3695 = or i1 %tobool463.not, %cmp467, !dbg !3693
  br i1 %or.cond3695, label %if.end473, label %if.then469, !dbg !3693

if.then469:                                       ; preds = %land.lhs.true460
  %90 = load ptr, ptr %sv, align 8, !dbg !3694
  %xiv_u471 = getelementptr inbounds %struct.xpviv, ptr %90, i64 0, i32 4, !dbg !3694
  %91 = load i64, ptr %xiv_u471, align 8, !dbg !3694
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.253, i64 noundef %91), !dbg !3696
  br label %if.end473, !dbg !3697

if.end473:                                        ; preds = %land.lhs.true460, %if.then469, %if.end437
  switch i8 %trunc, label %sw.epilog2515 [
    i8 11, label %sw.bb474
    i8 12, label %sw.bb542
    i8 13, label %sw.bb1806
    i8 14, label %sw.bb1936
    i8 9, label %sw.bb2111
    i8 10, label %sw.bb2111
    i8 15, label %sw.bb2258
    i8 8, label %dumpregexp
  ], !dbg !3698

sw.bb474:                                         ; preds = %if.end454, %if.end473
  %sv_u475 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !3699
  %92 = load ptr, ptr %sv_u475, align 8, !dbg !3699
  %93 = ptrtoint ptr %92 to i64, !dbg !3699
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.254, i64 noundef %93), !dbg !3700
  %94 = load ptr, ptr %sv_u475, align 8, !dbg !3701
  %95 = load ptr, ptr %sv, align 8, !dbg !3703
  %xav_alloc = getelementptr inbounds %struct.xpvav, ptr %95, i64 0, i32 4, !dbg !3703
  %96 = load ptr, ptr %xav_alloc, align 8, !dbg !3703
  %cmp478.not = icmp eq ptr %94, %96, !dbg !3704
  br i1 %cmp478.not, label %if.else487, label %if.then480, !dbg !3705

if.then480:                                       ; preds = %sw.bb474
  %sub.ptr.lhs.cast = ptrtoint ptr %94 to i64, !dbg !3706
  %sub.ptr.rhs.cast = ptrtoint ptr %96 to i64, !dbg !3706
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3706
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3, !dbg !3706
  %call484 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.255, i64 noundef %sub.ptr.div) #8, !dbg !3708
  %97 = load ptr, ptr %sv, align 8, !dbg !3709
  %xav_alloc486 = getelementptr inbounds %struct.xpvav, ptr %97, i64 0, i32 4, !dbg !3709
  %98 = load ptr, ptr %xav_alloc486, align 8, !dbg !3709
  %99 = ptrtoint ptr %98 to i64, !dbg !3709
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.256, i64 noundef %99), !dbg !3710
  br label %if.end489, !dbg !3711

if.else487:                                       ; preds = %sw.bb474
  %call488 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 10) #8, !dbg !3712
  br label %if.end489

if.end489:                                        ; preds = %if.else487, %if.then480
  %100 = load ptr, ptr %sv, align 8, !dbg !3713
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %100, i64 0, i32 2, !dbg !3713
  %101 = load i64, ptr %xav_fill, align 8, !dbg !3713
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.257, i64 noundef %101), !dbg !3714
  %102 = load ptr, ptr %sv, align 8, !dbg !3715
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %102, i64 0, i32 3, !dbg !3715
  %103 = load i64, ptr %xav_max, align 8, !dbg !3715
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.258, i64 noundef %103), !dbg !3716
  %104 = load ptr, ptr %sv, align 8, !dbg !3717
  %xmg_u493 = getelementptr inbounds %struct.xpvmg, ptr %104, i64 0, i32 1, !dbg !3717
  %105 = load ptr, ptr %xmg_u493, align 8, !dbg !3717
  %tobool494.not = icmp eq ptr %105, null, !dbg !3717
  br i1 %tobool494.not, label %cond.end498, label %cond.true495, !dbg !3717

cond.true495:                                     ; preds = %if.end489
  %call496 = tail call ptr @Perl_av_arylen_p(ptr noundef nonnull %sv) #8, !dbg !3718
  %106 = load ptr, ptr %call496, align 8, !dbg !3718
  %107 = ptrtoint ptr %106 to i64, !dbg !3718
  br label %cond.end498, !dbg !3717

cond.end498:                                      ; preds = %if.end489, %cond.true495
  %cond499 = phi i64 [ %107, %cond.true495 ], [ 0, %if.end489 ], !dbg !3717
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.259, i64 noundef %cond499), !dbg !3719
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %call, ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !3720
  %108 = load i32, ptr %sv_flags, align 4, !dbg !3721
  %and501 = and i32 %108, 1073741824, !dbg !3721
  %tobool502.not = icmp eq i32 %and501, 0, !dbg !3721
  br i1 %tobool502.not, label %if.end504, label %if.then503, !dbg !3723

if.then503:                                       ; preds = %cond.end498
  tail call void @Perl_sv_catpv(ptr noundef nonnull %call, ptr noundef nonnull @.str.260) #8, !dbg !3724
  %.pr3895 = load i32, ptr %sv_flags, align 4, !dbg !3725
  br label %if.end504, !dbg !3724

if.end504:                                        ; preds = %if.then503, %cond.end498
  %109 = phi i32 [ %.pr3895, %if.then503 ], [ %108, %cond.end498 ], !dbg !3725
  %tobool507.not = icmp sgt i32 %109, -1, !dbg !3725
  br i1 %tobool507.not, label %if.end509, label %if.then508, !dbg !3727

if.then508:                                       ; preds = %if.end504
  tail call void @Perl_sv_catpv(ptr noundef nonnull %call, ptr noundef nonnull @.str.261) #8, !dbg !3728
  br label %if.end509, !dbg !3728

if.end509:                                        ; preds = %if.then508, %if.end504
  %110 = load ptr, ptr %call, align 8, !dbg !3729
  %xpv_cur511 = getelementptr inbounds %struct.xpv, ptr %110, i64 0, i32 2, !dbg !3729
  %111 = load i64, ptr %xpv_cur511, align 8, !dbg !3729
  %tobool512.not = icmp eq i64 %111, 0, !dbg !3729
  br i1 %tobool512.not, label %cond.end518, label %cond.true513, !dbg !3729

cond.true513:                                     ; preds = %if.end509
  %112 = load ptr, ptr %sv_u, align 8, !dbg !3730
  %add.ptr516 = getelementptr inbounds i8, ptr %112, i64 1, !dbg !3731
  br label %cond.end518, !dbg !3729

cond.end518:                                      ; preds = %if.end509, %cond.true513
  %cond519 = phi ptr [ %add.ptr516, %cond.true513 ], [ @.str, %if.end509 ], !dbg !3729
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.262, ptr noundef nonnull %cond519), !dbg !3732
  %cmp520 = icmp sgt i32 %maxnest, %nest, !dbg !3733
  br i1 %cmp520, label %land.lhs.true522, label %sw.epilog2515, !dbg !3734

land.lhs.true522:                                 ; preds = %cond.end518
  call void @llvm.dbg.value(metadata ptr %sv, metadata !3735, metadata !DIExpression()) #8, !dbg !3740
  %113 = load i32, ptr %sv_flags, align 4, !dbg !3742
  %and.i3778 = and i32 %113, 8388608, !dbg !3742
  %tobool.not.i3779 = icmp eq i32 %and.i3778, 0, !dbg !3742
  br i1 %tobool.not.i3779, label %cond.false.i, label %cond.true.i, !dbg !3742

cond.true.i:                                      ; preds = %land.lhs.true522
  %call.i = tail call i32 @Perl_mg_size(ptr noundef nonnull %sv) #8, !dbg !3742
  %conv.i = sext i32 %call.i to i64, !dbg !3742
  br label %S_av_top_index.exit, !dbg !3742

cond.false.i:                                     ; preds = %land.lhs.true522
  %114 = load ptr, ptr %sv, align 8, !dbg !3742
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %114, i64 0, i32 2, !dbg !3742
  %115 = load i64, ptr %xav_fill.i, align 8, !dbg !3742
  br label %S_av_top_index.exit, !dbg !3742

S_av_top_index.exit:                              ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i64 [ %conv.i, %cond.true.i ], [ %115, %cond.false.i ], !dbg !3742
  %cmp524 = icmp sgt i64 %cond.i, -1, !dbg !3743
  br i1 %cmp524, label %for.cond.preheader, label %sw.epilog2515, !dbg !3744

for.cond.preheader:                               ; preds = %S_av_top_index.exit
  %conv530 = sext i32 %maxnest to i64
  %add534 = add nsw i32 %level, 1
  %add538 = add nsw i32 %nest, 1
  br label %for.cond, !dbg !3745

for.cond:                                         ; preds = %for.cond.preheader, %if.end540
  %count.0 = phi i64 [ %inc, %if.end540 ], [ 0, %for.cond.preheader ], !dbg !3746
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !3232, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata ptr %sv, metadata !3735, metadata !DIExpression()) #8, !dbg !3748
  %116 = load i32, ptr %sv_flags, align 4, !dbg !3750
  %and.i3781 = and i32 %116, 8388608, !dbg !3750
  %tobool.not.i3782 = icmp eq i32 %and.i3781, 0, !dbg !3750
  br i1 %tobool.not.i3782, label %cond.false.i3787, label %cond.true.i3785, !dbg !3750

cond.true.i3785:                                  ; preds = %for.cond
  %call.i3783 = tail call i32 @Perl_mg_size(ptr noundef nonnull %sv) #8, !dbg !3750
  %conv.i3784 = sext i32 %call.i3783 to i64, !dbg !3750
  br label %S_av_top_index.exit3789, !dbg !3750

cond.false.i3787:                                 ; preds = %for.cond
  %117 = load ptr, ptr %sv, align 8, !dbg !3750
  %xav_fill.i3786 = getelementptr inbounds %struct.xpvav, ptr %117, i64 0, i32 2, !dbg !3750
  %118 = load i64, ptr %xav_fill.i3786, align 8, !dbg !3750
  br label %S_av_top_index.exit3789, !dbg !3750

S_av_top_index.exit3789:                          ; preds = %cond.true.i3785, %cond.false.i3787
  %cond.i3788 = phi i64 [ %conv.i3784, %cond.true.i3785 ], [ %118, %cond.false.i3787 ], !dbg !3750
  %cmp528.not = icmp sle i64 %count.0, %cond.i3788, !dbg !3751
  %cmp531 = icmp slt i64 %count.0, %conv530
  %or.cond3696 = and i1 %cmp531, %cmp528.not, !dbg !3752
  br i1 %or.cond3696, label %for.body, label %sw.epilog2515, !dbg !3752

for.body:                                         ; preds = %S_av_top_index.exit3789
  %call533 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %sv, i64 noundef %count.0, i32 noundef 0) #8, !dbg !3753
  call void @llvm.dbg.value(metadata ptr %call533, metadata !3236, metadata !DIExpression()), !dbg !3754
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add534, ptr noundef %file, ptr noundef nonnull @.str.263, i64 noundef %count.0), !dbg !3755
  %tobool535.not = icmp eq ptr %call533, null, !dbg !3756
  br i1 %tobool535.not, label %if.end540, label %if.then536, !dbg !3758

if.then536:                                       ; preds = %for.body
  %119 = load ptr, ptr %call533, align 8, !dbg !3759
  tail call void @Perl_do_sv_dump(i32 noundef %add534, ptr noundef %file, ptr noundef %119, i32 noundef %add538, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !3759
  br label %if.end540, !dbg !3759

if.end540:                                        ; preds = %if.then536, %for.body
  %inc = add nuw nsw i64 %count.0, 1, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3232, metadata !DIExpression()), !dbg !3747
  br label %for.cond, !dbg !3761, !llvm.loop !3762

sw.bb542:                                         ; preds = %if.end454, %if.end473
  %120 = load i32, ptr %sv_flags, align 4, !dbg !3764
  %and544 = and i32 %120, 33554432, !dbg !3764
  %tobool545.not = icmp eq i32 %and544, 0, !dbg !3764
  br i1 %tobool545.not, label %if.end552, label %if.then546, !dbg !3765

if.then546:                                       ; preds = %sw.bb542
  %sv_u547 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !3766
  %121 = load ptr, ptr %sv_u547, align 8, !dbg !3766
  %122 = load ptr, ptr %sv, align 8, !dbg !3766
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %122, i64 0, i32 3, !dbg !3766
  %123 = load i64, ptr %xhv_max, align 8, !dbg !3766
  %add549 = add i64 %123, 1, !dbg !3766
  %arrayidx550 = getelementptr inbounds ptr, ptr %121, i64 %add549, !dbg !3766
  call void @llvm.dbg.value(metadata ptr %arrayidx550, metadata !3242, metadata !DIExpression()), !dbg !3767
  %xhv_aux_flags = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx550, i64 0, i32 9, !dbg !3768
  %124 = load i32, ptr %xhv_aux_flags, align 4, !dbg !3768
  %conv551 = zext i32 %124 to i64, !dbg !3769
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.264, i64 noundef %conv551), !dbg !3770
  br label %if.end552, !dbg !3771

if.end552:                                        ; preds = %if.then546, %sw.bb542
  %sv_u553 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !3772
  %125 = load ptr, ptr %sv_u553, align 8, !dbg !3772
  %126 = ptrtoint ptr %125 to i64, !dbg !3772
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.254, i64 noundef %126), !dbg !3773
  %127 = load ptr, ptr %sv, align 8, !dbg !3774
  %xhv_keys = getelementptr inbounds %struct.xpvhv, ptr %127, i64 0, i32 2, !dbg !3774
  %128 = load i64, ptr %xhv_keys, align 8, !dbg !3774
  %xmg_u556 = getelementptr inbounds %struct.xpvmg, ptr %127, i64 0, i32 1, !dbg !3774
  %129 = load ptr, ptr %xmg_u556, align 8, !dbg !3774
  %tobool557.not = icmp eq ptr %129, null, !dbg !3774
  br i1 %tobool557.not, label %cond.end561, label %cond.true558, !dbg !3774

cond.true558:                                     ; preds = %if.end552
  %call559 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %sv) #8, !dbg !3774
  br label %cond.end561, !dbg !3774

cond.end561:                                      ; preds = %if.end552, %cond.true558
  %cond562 = phi i32 [ %call559, %cond.true558 ], [ 0, %if.end552 ], !dbg !3774
  %130 = trunc i64 %128 to i32, !dbg !3774
  %conv565 = sub i32 %130, %cond562, !dbg !3774
  call void @llvm.dbg.value(metadata i32 %conv565, metadata !3240, metadata !DIExpression()), !dbg !3775
  %131 = load ptr, ptr %sv_u553, align 8, !dbg !3776
  %tobool567 = icmp ne ptr %131, null, !dbg !3776
  %tobool569 = icmp ne i32 %conv565, 0
  %or.cond2553 = select i1 %tobool567, i1 %tobool569, i1 false, !dbg !3777
  br i1 %or.cond2553, label %if.then570, label %if.end648, !dbg !3777

if.then570:                                       ; preds = %cond.end561
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %freq) #8, !dbg !3778
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !3246, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata i32 0, metadata !3253, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 2, metadata !3254, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %conv565, metadata !3255, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3257, metadata !DIExpression()), !dbg !3780
  %call571 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.265) #8, !dbg !3781
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %freq, i8 0, i64 800, i1 false), !dbg !3782
  call void @llvm.dbg.value(metadata i32 0, metadata !3252, metadata !DIExpression()), !dbg !3780
  %132 = load ptr, ptr %sv, align 8
  %xhv_max575 = getelementptr inbounds %struct.xpvhv, ptr %132, i64 0, i32 3
  %133 = load i64, ptr %xhv_max575, align 8
  %134 = load ptr, ptr %sv_u553, align 8
  br label %for.body578, !dbg !3783

for.cond603.preheader:                            ; preds = %for.end588
  call void @llvm.dbg.value(metadata i32 0, metadata !3252, metadata !DIExpression()), !dbg !3780
  %135 = zext i32 %139 to i64, !dbg !3784
  %136 = add nuw i32 %139, 1, !dbg !3784
  %wide.trip.count = zext i32 %136 to i64, !dbg !3786
  br label %for.body606, !dbg !3784

for.body578:                                      ; preds = %if.then570, %for.end588
  %indvars.iv = phi i64 [ 0, %if.then570 ], [ %indvars.iv.next, %for.end588 ]
  %max.03994 = phi i32 [ 0, %if.then570 ], [ %139, %for.end588 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3252, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %max.03994, metadata !3253, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 0, metadata !3262, metadata !DIExpression()), !dbg !3788
  %arrayidx582 = getelementptr inbounds ptr, ptr %134, i64 %indvars.iv, !dbg !3789
  call void @llvm.dbg.value(metadata ptr undef, metadata !3258, metadata !DIExpression()), !dbg !3788
  br label %for.cond583, !dbg !3791

for.cond583:                                      ; preds = %for.cond583, %for.body578
  %count579.0 = phi i32 [ 0, %for.body578 ], [ %inc586, %for.cond583 ], !dbg !3788
  %h.0.in = phi ptr [ %arrayidx582, %for.body578 ], [ %h.0, %for.cond583 ]
  %h.0 = load ptr, ptr %h.0.in, align 8, !dbg !3792
  call void @llvm.dbg.value(metadata ptr %h.0, metadata !3258, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i32 %count579.0, metadata !3262, metadata !DIExpression()), !dbg !3788
  %tobool584.not = icmp eq ptr %h.0, null, !dbg !3793
  %inc586 = add nuw nsw i32 %count579.0, 1, !dbg !3794
  call void @llvm.dbg.value(metadata i32 %inc586, metadata !3262, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata ptr undef, metadata !3258, metadata !DIExpression()), !dbg !3788
  br i1 %tobool584.not, label %for.end588, label %for.cond583, !dbg !3793, !llvm.loop !3796

for.end588:                                       ; preds = %for.cond583
  %137 = tail call i32 @llvm.umin.i32(i32 %count579.0, i32 199), !dbg !3798
  call void @llvm.dbg.value(metadata i32 %137, metadata !3262, metadata !DIExpression()), !dbg !3788
  %idxprom593 = zext i32 %137 to i64, !dbg !3799
  %arrayidx594 = getelementptr inbounds [200 x i32], ptr %freq, i64 0, i64 %idxprom593, !dbg !3799
  %138 = load i32, ptr %arrayidx594, align 4, !dbg !3800
  %inc595 = add nsw i32 %138, 1, !dbg !3800
  store i32 %inc595, ptr %arrayidx594, align 4, !dbg !3800
  %139 = tail call i32 @llvm.smax.i32(i32 %max.03994, i32 %137), !dbg !3801
  call void @llvm.dbg.value(metadata i32 %139, metadata !3253, metadata !DIExpression()), !dbg !3780
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3802
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3252, metadata !DIExpression()), !dbg !3780
  %exitcond = icmp eq i64 %indvars.iv, %133, !dbg !3803
  br i1 %exitcond, label %for.cond603.preheader, label %for.body578, !dbg !3783, !llvm.loop !3804

for.body606:                                      ; preds = %for.cond603.preheader, %for.inc623
  %indvars.iv4021 = phi i64 [ 0, %for.cond603.preheader ], [ %indvars.iv.next4022, %for.inc623 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4021, metadata !3252, metadata !DIExpression()), !dbg !3780
  %arrayidx608 = getelementptr inbounds [200 x i32], ptr %freq, i64 0, i64 %indvars.iv4021, !dbg !3806
  %140 = load i32, ptr %arrayidx608, align 4, !dbg !3806
  %tobool609.not = icmp eq i32 %140, 0, !dbg !3806
  br i1 %tobool609.not, label %for.inc623, label %if.then610, !dbg !3809

if.then610:                                       ; preds = %for.body606
  %cmp611 = icmp eq i64 %indvars.iv4021, 199, !dbg !3810
  %cond613 = select i1 %cmp611, ptr @.str.267, ptr @.str, !dbg !3812
  %141 = trunc i64 %indvars.iv4021 to i32, !dbg !3813
  %call616 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.266, i32 noundef %141, ptr noundef nonnull %cond613, i32 noundef %140) #8, !dbg !3813
  %cmp617.not = icmp eq i64 %indvars.iv4021, %135, !dbg !3814
  br i1 %cmp617.not, label %for.inc623, label %if.then619, !dbg !3816

if.then619:                                       ; preds = %if.then610
  %call620 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.268) #8, !dbg !3817
  br label %for.inc623, !dbg !3817

for.inc623:                                       ; preds = %for.body606, %if.then619, %if.then610
  %indvars.iv.next4022 = add nuw nsw i64 %indvars.iv4021, 1, !dbg !3818
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4022, metadata !3252, metadata !DIExpression()), !dbg !3780
  %exitcond4024.not = icmp eq i64 %indvars.iv.next4022, %wide.trip.count, !dbg !3786
  br i1 %exitcond4024.not, label %for.end625, label %for.body606, !dbg !3784, !llvm.loop !3819

for.end625:                                       ; preds = %for.inc623
  %call626 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 41) #8, !dbg !3821
  call void @llvm.dbg.value(metadata i32 %139, metadata !3252, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !3257, metadata !DIExpression()), !dbg !3780
  %cmp6283999.not = icmp eq i32 %139, 0, !dbg !3822
  br i1 %cmp6283999.not, label %while.cond.preheader, label %for.body630, !dbg !3825

while.cond.preheader:                             ; preds = %for.body630, %for.end625
  %sum.0.lcssa = phi double [ 0.000000e+00, %for.end625 ], [ %add636, %for.body630 ], !dbg !3780
  call void @llvm.dbg.value(metadata i32 2, metadata !3254, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %conv565, metadata !3255, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !3780
  %tobool639.not4002 = icmp ult i32 %conv565, 2, !dbg !3826
  br i1 %tobool639.not4002, label %while.end, label %while.body, !dbg !3826

for.body630:                                      ; preds = %for.end625, %for.body630
  %indvars.iv4025 = phi i64 [ %indvars.iv.next4026, %for.body630 ], [ %135, %for.end625 ]
  %sum.04000 = phi double [ %add636, %for.body630 ], [ 0.000000e+00, %for.end625 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv4025, metadata !3252, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata double %sum.04000, metadata !3257, metadata !DIExpression()), !dbg !3780
  %arrayidx632 = getelementptr inbounds [200 x i32], ptr %freq, i64 0, i64 %indvars.iv4025, !dbg !3827
  %142 = load i32, ptr %arrayidx632, align 4, !dbg !3827
  %143 = trunc i64 %indvars.iv4025 to i32, !dbg !3829
  %mul633 = mul i32 %143, %143, !dbg !3829
  %mul634 = mul i32 %mul633, %142, !dbg !3830
  %conv635 = sitofp i32 %mul634 to double, !dbg !3827
  %add636 = fadd double %sum.04000, %conv635, !dbg !3831
  call void @llvm.dbg.value(metadata double %add636, metadata !3257, metadata !DIExpression()), !dbg !3780
  %indvars.iv.next4026 = add nsw i64 %indvars.iv4025, -1, !dbg !3832
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next4026, metadata !3252, metadata !DIExpression()), !dbg !3780
  %cmp628 = icmp sgt i64 %indvars.iv4025, 1, !dbg !3822
  br i1 %cmp628, label %for.body630, label %while.cond.preheader, !dbg !3825, !llvm.loop !3833

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %pow2.04004 = phi i32 [ %shl, %while.body ], [ 2, %while.cond.preheader ]
  %keys.04003 = phi i32 [ %shr, %while.body ], [ %conv565, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i32 %pow2.04004, metadata !3254, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %keys.04003, metadata !3255, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !3780
  %shr = lshr i32 %keys.04003, 1, !dbg !3835
  call void @llvm.dbg.value(metadata i32 %shr, metadata !3255, metadata !DIExpression()), !dbg !3780
  %shl = shl i32 %pow2.04004, 1, !dbg !3836
  call void @llvm.dbg.value(metadata i32 %shl, metadata !3254, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i32 %shr, metadata !3255, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shr, DW_OP_stack_value)), !dbg !3780
  %tobool639.not = icmp ult i32 %keys.04003, 4, !dbg !3826
  br i1 %tobool639.not, label %while.end, label %while.body, !dbg !3826, !llvm.loop !3837

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %pow2.0.lcssa = phi i32 [ 2, %while.cond.preheader ], [ %shl, %while.body ], !dbg !3780
  %conv640 = uitofp i32 %conv565 to double, !dbg !3839
  call void @llvm.dbg.value(metadata double %conv640, metadata !3256, metadata !DIExpression()), !dbg !3780
  %sub641 = fadd double %conv640, -1.000000e+00, !dbg !3840
  %mul642 = fmul double %sub641, %conv640, !dbg !3841
  %conv643 = uitofp i32 %pow2.0.lcssa to double, !dbg !3842
  %div = fdiv double %mul642, %conv643, !dbg !3843
  %add644 = fadd double %div, %conv640, !dbg !3844
  call void @llvm.dbg.value(metadata double %add644, metadata !3256, metadata !DIExpression()), !dbg !3780
  %call645 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 10) #8, !dbg !3845
  %div646 = fdiv double %add644, %sum.0.lcssa, !dbg !3846
  %mul647 = fmul double %div646, 1.000000e+02, !dbg !3847
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.269, double noundef %mul647), !dbg !3848
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %freq) #8, !dbg !3849
  br label %if.end648, !dbg !3850

if.end648:                                        ; preds = %while.end, %cond.end561
  %call649 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 10) #8, !dbg !3851
  %conv650 = zext i32 %conv565 to i64, !dbg !3852
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.270, i64 noundef %conv650), !dbg !3853
  call void @llvm.dbg.value(metadata i64 0, metadata !3263, metadata !DIExpression()), !dbg !3854
  %144 = load ptr, ptr %sv_u553, align 8, !dbg !3855
  call void @llvm.dbg.value(metadata ptr %144, metadata !3265, metadata !DIExpression()), !dbg !3854
  %tobool653.not = icmp eq ptr %144, null, !dbg !3856
  br i1 %tobool653.not, label %if.end672, label %if.then654, !dbg !3857

if.then654:                                       ; preds = %if.end648
  %145 = load ptr, ptr %sv, align 8, !dbg !3858
  %xhv_max656 = getelementptr inbounds %struct.xpvhv, ptr %145, i64 0, i32 3, !dbg !3858
  %146 = load i64, ptr %xhv_max656, align 8, !dbg !3858
  %add.ptr657 = getelementptr inbounds ptr, ptr %144, i64 %146, !dbg !3859
  call void @llvm.dbg.value(metadata ptr %add.ptr657, metadata !3266, metadata !DIExpression()), !dbg !3860
  %add.ptr658 = getelementptr inbounds ptr, ptr %add.ptr657, i64 1, !dbg !3861
  %sub.ptr.lhs.cast659 = ptrtoint ptr %add.ptr658 to i64, !dbg !3862
  %sub.ptr.rhs.cast660 = ptrtoint ptr %144 to i64, !dbg !3862
  %sub.ptr.sub661 = sub i64 %sub.ptr.lhs.cast659, %sub.ptr.rhs.cast660, !dbg !3862
  %sub.ptr.div662 = ashr exact i64 %sub.ptr.sub661, 3, !dbg !3862
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div662, metadata !3263, metadata !DIExpression()), !dbg !3854
  br label %do.body663, !dbg !3863

do.body663:                                       ; preds = %do.body663, %if.then654
  %ents.0 = phi ptr [ %144, %if.then654 ], [ %incdec.ptr, %do.body663 ], !dbg !3854
  %count651.0 = phi i64 [ %sub.ptr.div662, %if.then654 ], [ %spec.select3697, %do.body663 ], !dbg !3864
  call void @llvm.dbg.value(metadata i64 %count651.0, metadata !3263, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata ptr %ents.0, metadata !3265, metadata !DIExpression()), !dbg !3854
  %147 = load ptr, ptr %ents.0, align 8, !dbg !3865
  %tobool664.not = icmp eq ptr %147, null, !dbg !3865
  %dec666 = sext i1 %tobool664.not to i64, !dbg !3868
  %spec.select3697 = add i64 %count651.0, %dec666, !dbg !3868
  call void @llvm.dbg.value(metadata i64 %spec.select3697, metadata !3263, metadata !DIExpression()), !dbg !3854
  %incdec.ptr = getelementptr inbounds ptr, ptr %ents.0, i64 1, !dbg !3869
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3265, metadata !DIExpression()), !dbg !3854
  %cmp669.not = icmp ugt ptr %incdec.ptr, %add.ptr657, !dbg !3870
  br i1 %cmp669.not, label %if.end672, label %do.body663, !dbg !3871, !llvm.loop !3872

if.end672:                                        ; preds = %do.body663, %if.end648
  %count651.2 = phi i64 [ 0, %if.end648 ], [ %spec.select3697, %do.body663 ], !dbg !3854
  call void @llvm.dbg.value(metadata i64 %count651.2, metadata !3263, metadata !DIExpression()), !dbg !3854
  %148 = load i32, ptr %sv_flags, align 4, !dbg !3874
  %and674 = and i32 %148, 33554432, !dbg !3874
  %tobool675.not = icmp eq i32 %and674, 0, !dbg !3874
  br i1 %tobool675.not, label %if.else684, label %if.then676, !dbg !3875

if.then676:                                       ; preds = %if.end672
  %149 = load ptr, ptr %sv, align 8, !dbg !3876
  %xhv_max680 = getelementptr inbounds %struct.xpvhv, ptr %149, i64 0, i32 3, !dbg !3876
  %150 = load i64, ptr %xhv_max680, align 8, !dbg !3876
  %add681 = add i64 %150, 1, !dbg !3876
  %arrayidx682 = getelementptr inbounds ptr, ptr %144, i64 %add681, !dbg !3876
  call void @llvm.dbg.value(metadata ptr %arrayidx682, metadata !3272, metadata !DIExpression()), !dbg !3877
  %xhv_fill_lazy = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx682, i64 0, i32 8, !dbg !3878
  %151 = load i32, ptr %xhv_fill_lazy, align 8, !dbg !3878
  %conv683 = zext i32 %151 to i64, !dbg !3879
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.271, i64 noundef %count651.2, i64 noundef %conv683), !dbg !3880
  br label %if.end685, !dbg !3881

if.else684:                                       ; preds = %if.end672
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.272, i64 noundef %count651.2), !dbg !3882
  br label %if.end685

if.end685:                                        ; preds = %if.else684, %if.then676
  %152 = load ptr, ptr %sv, align 8, !dbg !3884
  %xhv_max687 = getelementptr inbounds %struct.xpvhv, ptr %152, i64 0, i32 3, !dbg !3884
  %153 = load i64, ptr %xhv_max687, align 8, !dbg !3884
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.258, i64 noundef %153), !dbg !3885
  %154 = load i32, ptr %sv_flags, align 4, !dbg !3886
  %and689 = and i32 %154, 33554432, !dbg !3886
  %tobool690.not = icmp eq i32 %and689, 0, !dbg !3886
  br i1 %tobool690.not, label %if.end791, label %cond.end702, !dbg !3888

cond.end702:                                      ; preds = %if.end685
  %155 = load ptr, ptr %sv_u553, align 8, !dbg !3889
  %156 = load ptr, ptr %sv, align 8, !dbg !3889
  %xhv_max698 = getelementptr inbounds %struct.xpvhv, ptr %156, i64 0, i32 3, !dbg !3889
  %157 = load i64, ptr %xhv_max698, align 8, !dbg !3889
  %add699 = add i64 %157, 1, !dbg !3889
  %arrayidx700 = getelementptr inbounds ptr, ptr %155, i64 %add699, !dbg !3889
  %xhv_riter = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx700, i64 0, i32 3, !dbg !3889
  %158 = load i32, ptr %xhv_riter, align 8, !dbg !3889
  %conv704 = sext i32 %158 to i64, !dbg !3891
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.273, i64 noundef %conv704), !dbg !3892
  %159 = load i32, ptr %sv_flags, align 4, !dbg !3893
  %and706 = and i32 %159, 33554432, !dbg !3893
  %tobool707.not = icmp eq i32 %and706, 0, !dbg !3893
  br i1 %tobool707.not, label %cond.end715, label %cond.true708, !dbg !3893

cond.true708:                                     ; preds = %cond.end702
  %160 = load ptr, ptr %sv_u553, align 8, !dbg !3893
  %161 = load ptr, ptr %sv, align 8, !dbg !3893
  %xhv_max711 = getelementptr inbounds %struct.xpvhv, ptr %161, i64 0, i32 3, !dbg !3893
  %162 = load i64, ptr %xhv_max711, align 8, !dbg !3893
  %add712 = add i64 %162, 1, !dbg !3893
  %arrayidx713 = getelementptr inbounds ptr, ptr %160, i64 %add712, !dbg !3893
  %xhv_eiter = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx713, i64 0, i32 2, !dbg !3893
  %163 = load ptr, ptr %xhv_eiter, align 8, !dbg !3893
  br label %cond.end715, !dbg !3893

cond.end715:                                      ; preds = %cond.end702, %cond.true708
  %cond716 = phi ptr [ %163, %cond.true708 ], [ null, %cond.end702 ], !dbg !3893
  %164 = ptrtoint ptr %cond716 to i64, !dbg !3893
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.274, i64 noundef %164), !dbg !3894
  %165 = load i32, ptr %sv_flags, align 4, !dbg !3895
  %and718 = and i32 %165, 33554432, !dbg !3895
  %tobool719.not = icmp eq i32 %and718, 0, !dbg !3895
  br i1 %tobool719.not, label %cond.end727, label %cond.true720, !dbg !3895

cond.true720:                                     ; preds = %cond.end715
  %166 = load ptr, ptr %sv_u553, align 8, !dbg !3895
  %167 = load ptr, ptr %sv, align 8, !dbg !3895
  %xhv_max723 = getelementptr inbounds %struct.xpvhv, ptr %167, i64 0, i32 3, !dbg !3895
  %168 = load i64, ptr %xhv_max723, align 8, !dbg !3895
  %add724 = add i64 %168, 1, !dbg !3895
  %arrayidx725 = getelementptr inbounds ptr, ptr %166, i64 %add724, !dbg !3895
  %xhv_rand = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx725, i64 0, i32 6, !dbg !3895
  %169 = load i32, ptr %xhv_rand, align 8, !dbg !3895
  br label %cond.end727, !dbg !3895

cond.end727:                                      ; preds = %cond.end715, %cond.true720
  %cond728 = phi i32 [ %169, %cond.true720 ], [ 0, %cond.end715 ], !dbg !3895
  %conv729 = zext i32 %cond728 to i64, !dbg !3896
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.275, i64 noundef %conv729), !dbg !3897
  %170 = load i32, ptr %sv_flags, align 4, !dbg !3898
  %and731 = and i32 %170, 33554432, !dbg !3898
  %tobool732.not = icmp eq i32 %and731, 0, !dbg !3898
  br i1 %tobool732.not, label %if.end789, label %cond.end753, !dbg !3898

cond.end753:                                      ; preds = %cond.end727
  %171 = load ptr, ptr %sv_u553, align 8, !dbg !3898
  %172 = load ptr, ptr %sv, align 8, !dbg !3898
  %xhv_max736 = getelementptr inbounds %struct.xpvhv, ptr %172, i64 0, i32 3, !dbg !3898
  %173 = load i64, ptr %xhv_max736, align 8, !dbg !3898
  %add737 = add i64 %173, 1, !dbg !3898
  %arrayidx738 = getelementptr inbounds ptr, ptr %171, i64 %add737, !dbg !3898
  %xhv_rand739 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx738, i64 0, i32 6, !dbg !3898
  %174 = load i32, ptr %xhv_rand739, align 8, !dbg !3898
  %xhv_last_rand = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx738, i64 0, i32 7, !dbg !3900
  %175 = load i32, ptr %xhv_last_rand, align 4, !dbg !3900
  %cmp755.not = icmp eq i32 %174, %175, !dbg !3901
  br i1 %cmp755.not, label %if.end789, label %cond.end769, !dbg !3902

cond.end769:                                      ; preds = %cond.end753
  %xhv_riter767 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx738, i64 0, i32 3, !dbg !3903
  %176 = load i32, ptr %xhv_riter767, align 8, !dbg !3903
  %cmp771.not = icmp eq i32 %176, -1, !dbg !3904
  br i1 %cmp771.not, label %if.end789, label %cond.end785, !dbg !3905

cond.end785:                                      ; preds = %cond.end769
  %conv787 = zext i32 %175 to i64, !dbg !3906
  %call788 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.276, i64 noundef %conv787) #8, !dbg !3908
  br label %if.end789, !dbg !3909

if.end789:                                        ; preds = %cond.end727, %cond.end785, %cond.end769, %cond.end753
  %call790 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 10) #8, !dbg !3910
  br label %if.end791, !dbg !3911

if.end791:                                        ; preds = %if.end789, %if.end685
  %call792 = tail call ptr @Perl_mg_find(ptr noundef nonnull %sv, i32 noundef 58) #8, !dbg !3912
  call void @llvm.dbg.value(metadata ptr %call792, metadata !3275, metadata !DIExpression()), !dbg !3913
  %tobool793.not = icmp eq ptr %call792, null, !dbg !3914
  br i1 %tobool793.not, label %if.end798, label %land.lhs.true794, !dbg !3916

land.lhs.true794:                                 ; preds = %if.end791
  %mg_obj = getelementptr inbounds %struct.magic, ptr %call792, i64 0, i32 6, !dbg !3917
  %177 = load ptr, ptr %mg_obj, align 8, !dbg !3917
  %tobool795.not = icmp eq ptr %177, null, !dbg !3918
  br i1 %tobool795.not, label %if.end798, label %if.then796, !dbg !3919

if.then796:                                       ; preds = %land.lhs.true794
  %178 = ptrtoint ptr %177 to i64, !dbg !3920
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.277, i64 noundef %178), !dbg !3922
  br label %if.end798, !dbg !3923

if.end798:                                        ; preds = %if.then796, %land.lhs.true794, %if.end791
  %179 = load i32, ptr %sv_flags, align 4, !dbg !3924
  %and800 = and i32 %179, 33554432, !dbg !3924
  %tobool801.not = icmp eq i32 %and800, 0, !dbg !3924
  br i1 %tobool801.not, label %if.end1717, label %land.lhs.true802, !dbg !3924

land.lhs.true802:                                 ; preds = %if.end798
  %180 = load ptr, ptr %sv_u553, align 8, !dbg !3924
  %181 = load ptr, ptr %sv, align 8, !dbg !3924
  %xhv_max805 = getelementptr inbounds %struct.xpvhv, ptr %181, i64 0, i32 3, !dbg !3924
  %182 = load i64, ptr %xhv_max805, align 8, !dbg !3924
  %add806 = add i64 %182, 1, !dbg !3924
  %arrayidx807 = getelementptr inbounds ptr, ptr %180, i64 %add806, !dbg !3924
  %183 = load ptr, ptr %arrayidx807, align 8, !dbg !3924
  %tobool808.not = icmp eq ptr %183, null, !dbg !3924
  br i1 %tobool808.not, label %if.then1091, label %land.lhs.true809, !dbg !3924

land.lhs.true809:                                 ; preds = %land.lhs.true802
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx807, i64 0, i32 4, !dbg !3924
  %184 = load i32, ptr %xhv_name_count, align 4, !dbg !3924
  %tobool815.not = icmp eq i32 %184, 0, !dbg !3924
  br i1 %tobool815.not, label %if.then861, label %cond.true816, !dbg !3924

cond.true816:                                     ; preds = %land.lhs.true809
  %185 = load ptr, ptr %183, align 8, !dbg !3924
  %tobool823.not = icmp eq ptr %185, null, !dbg !3924
  br i1 %tobool823.not, label %if.then1091, label %if.then861, !dbg !3924

if.then861:                                       ; preds = %land.lhs.true809, %cond.true816
  %cond855 = phi ptr [ %185, %cond.true816 ], [ %183, %land.lhs.true809 ], !dbg !3924
  %hek_key = getelementptr inbounds %struct.hek, ptr %cond855, i64 0, i32 2, !dbg !3924
  call void @llvm.dbg.value(metadata ptr %hek_key, metadata !3278, metadata !DIExpression()), !dbg !3925
  %call862 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !3926
  call void @llvm.dbg.value(metadata ptr %call862, metadata !3280, metadata !DIExpression()), !dbg !3927
  %186 = load i32, ptr %sv_flags, align 4, !dbg !3928
  %and864 = and i32 %186, 33554432, !dbg !3928
  %tobool865.not = icmp eq i32 %and864, 0, !dbg !3928
  br i1 %tobool865.not, label %cond.end1082.thread, label %land.lhs.true866, !dbg !3928

land.lhs.true866:                                 ; preds = %if.then861
  %187 = load ptr, ptr %sv_u553, align 8, !dbg !3928
  %188 = load ptr, ptr %sv, align 8, !dbg !3928
  %xhv_max869 = getelementptr inbounds %struct.xpvhv, ptr %188, i64 0, i32 3, !dbg !3928
  %189 = load i64, ptr %xhv_max869, align 8, !dbg !3928
  %add870 = add i64 %189, 1, !dbg !3928
  %arrayidx871 = getelementptr inbounds ptr, ptr %187, i64 %add870, !dbg !3928
  %190 = load ptr, ptr %arrayidx871, align 8, !dbg !3928
  %tobool873.not = icmp eq ptr %190, null, !dbg !3928
  br i1 %tobool873.not, label %cond.end1082.thread, label %land.lhs.true874, !dbg !3928

land.lhs.true874:                                 ; preds = %land.lhs.true866
  %xhv_name_count880 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx871, i64 0, i32 4, !dbg !3928
  %191 = load i32, ptr %xhv_name_count880, align 4, !dbg !3928
  %tobool881.not = icmp eq i32 %191, 0, !dbg !3928
  br i1 %tobool881.not, label %cond.end920, label %cond.true882, !dbg !3928

cond.true882:                                     ; preds = %land.lhs.true874
  %192 = load ptr, ptr %190, align 8, !dbg !3928
  %tobool889.not = icmp eq ptr %192, null, !dbg !3928
  br i1 %tobool889.not, label %land.lhs.true937, label %cond.end920, !dbg !3928

cond.end920:                                      ; preds = %land.lhs.true874, %cond.true882
  %cond921 = phi ptr [ %192, %cond.true882 ], [ %190, %land.lhs.true874 ], !dbg !3928
  %hek_len = getelementptr inbounds %struct.hek, ptr %cond921, i64 0, i32 1, !dbg !3928
  %193 = load i32, ptr %hek_len, align 4, !dbg !3928
  br label %land.lhs.true937, !dbg !3928

land.lhs.true937:                                 ; preds = %cond.true882, %cond.end920
  %cond924.ph.ph = phi i32 [ %193, %cond.end920 ], [ 0, %cond.true882 ]
  %conv92539044062 = sext i32 %cond924.ph.ph to i64, !dbg !3928
  %xhv_name_count943 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx871, i64 0, i32 4, !dbg !3928
  %194 = load i32, ptr %xhv_name_count943, align 4, !dbg !3928
  %tobool944.not = icmp eq i32 %194, 0, !dbg !3928
  br i1 %tobool944.not, label %cond.end983, label %cond.true945, !dbg !3928

cond.true945:                                     ; preds = %land.lhs.true937
  %195 = load ptr, ptr %190, align 8, !dbg !3928
  %tobool952.not = icmp eq ptr %195, null, !dbg !3928
  br i1 %tobool952.not, label %land.lhs.true1003, label %cond.end983, !dbg !3928

cond.end983:                                      ; preds = %land.lhs.true937, %cond.true945
  %cond984 = phi ptr [ %195, %cond.true945 ], [ %190, %land.lhs.true937 ], !dbg !3928
  %hek_len985 = getelementptr inbounds %struct.hek, ptr %cond984, i64 0, i32 1, !dbg !3928
  %196 = load i32, ptr %hek_len985, align 4, !dbg !3928
  br label %land.lhs.true1003, !dbg !3928

land.lhs.true1003:                                ; preds = %cond.true945, %cond.end983
  %cond988.ph.ph = phi i32 [ %196, %cond.end983 ], [ 0, %cond.true945 ]
  %mul98939094067 = mul nsw i32 %cond988.ph.ph, 17, !dbg !3928
  %add99039104068 = add nsw i32 %mul98939094067, 1, !dbg !3928
  %conv99139114069 = sext i32 %add99039104068 to i64, !dbg !3928
  %xhv_name_count1009 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx871, i64 0, i32 4, !dbg !3928
  %197 = load i32, ptr %xhv_name_count1009, align 4, !dbg !3928
  %tobool1010.not = icmp eq i32 %197, 0, !dbg !3928
  br i1 %tobool1010.not, label %cond.end1082, label %cond.true1011, !dbg !3928

cond.true1011:                                    ; preds = %land.lhs.true1003
  %198 = load ptr, ptr %190, align 8, !dbg !3928
  %tobool1018.not = icmp eq ptr %198, null, !dbg !3928
  br i1 %tobool1018.not, label %cond.end1082.thread, label %cond.end1082, !dbg !3928

cond.end1082:                                     ; preds = %cond.true1011, %land.lhs.true1003
  %cond1050.pn = phi ptr [ %190, %land.lhs.true1003 ], [ %198, %cond.true1011 ], !dbg !3928
  %hek_key10513919 = getelementptr inbounds %struct.hek, ptr %cond1050.pn, i64 0, i32 2, !dbg !3928
  %hek_len1076 = getelementptr inbounds %struct.hek, ptr %cond1050.pn, i64 0, i32 1, !dbg !3928
  %199 = load i32, ptr %hek_len1076, align 4, !dbg !3928
  %idx.ext = sext i32 %199 to i64, !dbg !3928
  %add.ptr1077 = getelementptr inbounds i8, ptr %hek_key10513919, i64 %idx.ext, !dbg !3928
  %add.ptr1078 = getelementptr inbounds i8, ptr %add.ptr1077, i64 1, !dbg !3928
  %200 = load i8, ptr %add.ptr1078, align 1, !dbg !3928
  %201 = and i8 %200, 1, !dbg !3928
  %tobool1084.not = icmp eq i8 %201, 0, !dbg !3928
  br i1 %tobool1084.not, label %cond.end1082.thread, label %if.end1087, !dbg !3928

cond.end1082.thread:                              ; preds = %land.lhs.true866, %if.then861, %cond.true1011, %cond.end1082
  %conv925390639133927 = phi i64 [ %conv92539044062, %cond.end1082 ], [ %conv92539044062, %cond.true1011 ], [ 0, %if.then861 ], [ 0, %land.lhs.true866 ]
  %conv99139153925 = phi i64 [ %conv99139114069, %cond.end1082 ], [ %conv99139114069, %cond.true1011 ], [ 1, %if.then861 ], [ 1, %land.lhs.true866 ]
  br label %if.end1087, !dbg !3928

if.end1087:                                       ; preds = %cond.end1082.thread, %cond.end1082
  %conv925390639133926 = phi i64 [ %conv925390639133927, %cond.end1082.thread ], [ %conv92539044062, %cond.end1082 ]
  %conv99139153924 = phi i64 [ %conv99139153925, %cond.end1082.thread ], [ %conv99139114069, %cond.end1082 ]
  %202 = phi i32 [ 66560, %cond.end1082.thread ], [ 66816, %cond.end1082 ]
  %call1086 = tail call ptr @Perl_pv_escape(ptr noundef %call862, ptr noundef nonnull %hek_key, i64 noundef %conv925390639133926, i64 noundef %conv99139153924, ptr noundef null, i32 noundef %202), !dbg !3928
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.278, ptr noundef %call1086), !dbg !3929
  %.pre4051 = load i32, ptr %sv_flags, align 4, !dbg !3930
  %.pre4059 = and i32 %.pre4051, 33554432, !dbg !3930
  %tobool1090.not = icmp eq i32 %.pre4059, 0, !dbg !3930
  br i1 %tobool1090.not, label %if.end1717, label %if.then1091, !dbg !3931

if.then1091:                                      ; preds = %cond.true816, %land.lhs.true802, %if.end1087
  %call1092 = tail call ptr @Perl_hv_backreferences_p(ptr noundef nonnull %sv) #8, !dbg !3932
  %203 = load ptr, ptr %call1092, align 8, !dbg !3933
  call void @llvm.dbg.value(metadata ptr %203, metadata !3283, metadata !DIExpression()), !dbg !3934
  %204 = load ptr, ptr %sv_u553, align 8, !dbg !3935
  %205 = load ptr, ptr %sv, align 8, !dbg !3935
  %xhv_max1095 = getelementptr inbounds %struct.xpvhv, ptr %205, i64 0, i32 3, !dbg !3935
  %206 = load i64, ptr %xhv_max1095, align 8, !dbg !3935
  %add1096 = add i64 %206, 1, !dbg !3935
  %arrayidx1097 = getelementptr inbounds ptr, ptr %204, i64 %add1096, !dbg !3935
  %xhv_mro_meta = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx1097, i64 0, i32 5, !dbg !3936
  %207 = load ptr, ptr %xhv_mro_meta, align 8, !dbg !3936
  call void @llvm.dbg.value(metadata ptr %207, metadata !3287, metadata !DIExpression()), !dbg !3934
  %xhv_name_count1103 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx1097, i64 0, i32 4, !dbg !3937
  %208 = load i32, ptr %xhv_name_count1103, align 4, !dbg !3937
  %tobool1104.not = icmp eq i32 %208, 0, !dbg !3939
  br i1 %tobool1104.not, label %if.end1113, label %if.then1105, !dbg !3940

if.then1105:                                      ; preds = %if.then1091
  %conv1112 = sext i32 %208 to i64, !dbg !3941
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.279, i64 noundef %conv1112), !dbg !3942
  %.pre4052 = load ptr, ptr %sv_u553, align 8, !dbg !3943
  %.pre4053 = load ptr, ptr %sv, align 8, !dbg !3943
  %xhv_max1116.phi.trans.insert = getelementptr inbounds %struct.xpvhv, ptr %.pre4053, i64 0, i32 3
  %.pre4054 = load i64, ptr %xhv_max1116.phi.trans.insert, align 8, !dbg !3943
  %.pre4058 = add i64 %.pre4054, 1, !dbg !3943
  br label %if.end1113, !dbg !3942

if.end1113:                                       ; preds = %if.then1105, %if.then1091
  %add1117.pre-phi = phi i64 [ %.pre4058, %if.then1105 ], [ %add1096, %if.then1091 ], !dbg !3943
  %209 = phi ptr [ %.pre4052, %if.then1105 ], [ %204, %if.then1091 ], !dbg !3943
  %arrayidx1118 = getelementptr inbounds ptr, ptr %209, i64 %add1117.pre-phi, !dbg !3943
  %210 = load ptr, ptr %arrayidx1118, align 8, !dbg !3944
  %tobool1120.not = icmp eq ptr %210, null, !dbg !3943
  br i1 %tobool1120.not, label %if.end1655, label %land.lhs.true1121, !dbg !3945

land.lhs.true1121:                                ; preds = %if.end1113
  %xhv_name_count1127 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx1118, i64 0, i32 4, !dbg !3946
  %211 = load i32, ptr %xhv_name_count1127, align 4, !dbg !3946
  %cmp1128 = icmp sgt i32 %211, 0, !dbg !3946
  br i1 %cmp1128, label %cond.true1130, label %cond.false1139, !dbg !3947

cond.true1130:                                    ; preds = %land.lhs.true1121
  %212 = load ptr, ptr %210, align 8, !dbg !3946
  %tobool1138.not = icmp eq ptr %212, null, !dbg !3946
  br i1 %tobool1138.not, label %if.end1655, label %if.then1184, !dbg !3946

cond.false1139:                                   ; preds = %land.lhs.true1121
  %cmp1146 = icmp slt i32 %211, -1, !dbg !3946
  br i1 %cmp1146, label %cond.true1148, label %cond.false1157, !dbg !3947

cond.true1148:                                    ; preds = %cond.false1139
  %arrayidx1155 = getelementptr inbounds ptr, ptr %210, i64 1, !dbg !3946
  %213 = load ptr, ptr %arrayidx1155, align 8, !dbg !3946
  %tobool1156.not = icmp eq ptr %213, null, !dbg !3946
  br i1 %tobool1156.not, label %if.end1655, label %if.then1184, !dbg !3946

cond.false1157:                                   ; preds = %cond.false1139
  %cmp1164 = icmp eq i32 %211, -1, !dbg !3946
  br i1 %cmp1164, label %if.end1655, label %if.else1255, !dbg !3947

if.then1184:                                      ; preds = %cond.true1148, %cond.true1130
  call void @llvm.dbg.value(metadata i32 %211, metadata !3289, metadata !DIExpression()), !dbg !3948
  %call1185 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !3949
  call void @llvm.dbg.value(metadata ptr %call1185, metadata !3292, metadata !DIExpression()), !dbg !3950
  %214 = load ptr, ptr %sv_u553, align 8, !dbg !3951
  %215 = load ptr, ptr %sv, align 8, !dbg !3951
  %xhv_max1188 = getelementptr inbounds %struct.xpvhv, ptr %215, i64 0, i32 3, !dbg !3951
  %216 = load i64, ptr %xhv_max1188, align 8, !dbg !3951
  %add1189 = add i64 %216, 1, !dbg !3951
  %arrayidx1190 = getelementptr inbounds ptr, ptr %214, i64 %add1189, !dbg !3951
  %217 = load ptr, ptr %arrayidx1190, align 8, !dbg !3952
  %.lobit = lshr i32 %211, 31, !dbg !3953
  call void @llvm.dbg.value(metadata !DIArgList(ptr %217, i32 %.lobit), metadata !3295, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3950
  %218 = tail call i32 @llvm.abs.i32(i32 %211, i1 true), !dbg !3954
  %idx.ext1210 = zext i32 %218 to i64, !dbg !3955
  %add.ptr1211 = getelementptr inbounds ptr, ptr %217, i64 %idx.ext1210, !dbg !3955
  call void @llvm.dbg.value(metadata ptr %add.ptr1211, metadata !3298, metadata !DIExpression()), !dbg !3950
  %cmp12134006 = icmp ult i32 %.lobit, %218, !dbg !3956
  br i1 %cmp12134006, label %while.body1215.preheader, label %while.end1243, !dbg !3957

while.body1215.preheader:                         ; preds = %if.then1184
  %219 = zext i32 %.lobit to i64
  call void @llvm.dbg.value(metadata !DIArgList(ptr %217, i64 %219), metadata !3295, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3950
  %add.ptr1196 = getelementptr inbounds ptr, ptr %217, i64 %219, !dbg !3958
  call void @llvm.dbg.value(metadata ptr %add.ptr1196, metadata !3295, metadata !DIExpression()), !dbg !3950
  br label %while.body1215, !dbg !3957

while.body1215:                                   ; preds = %while.body1215.preheader, %if.end1241
  %hekp.04007 = phi ptr [ %incdec.ptr1242, %if.end1241 ], [ %add.ptr1196, %while.body1215.preheader ]
  call void @llvm.dbg.value(metadata ptr %hekp.04007, metadata !3295, metadata !DIExpression()), !dbg !3950
  %220 = load ptr, ptr %hekp.04007, align 8, !dbg !3959
  %hek_len1216 = getelementptr inbounds %struct.hek, ptr %220, i64 0, i32 1, !dbg !3959
  %221 = load i32, ptr %hek_len1216, align 4, !dbg !3959
  %tobool1217.not = icmp eq i32 %221, 0, !dbg !3959
  br i1 %tobool1217.not, label %if.else1240, label %if.then1218, !dbg !3960

if.then1218:                                      ; preds = %while.body1215
  %call1219 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !3961
  call void @llvm.dbg.value(metadata ptr %call1219, metadata !3300, metadata !DIExpression()), !dbg !3962
  %222 = load ptr, ptr %hekp.04007, align 8, !dbg !3963
  %hek_key1220 = getelementptr inbounds %struct.hek, ptr %222, i64 0, i32 2, !dbg !3963
  %hek_len1222 = getelementptr inbounds %struct.hek, ptr %222, i64 0, i32 1, !dbg !3963
  %223 = load i32, ptr %hek_len1222, align 4, !dbg !3963
  %conv1223 = sext i32 %223 to i64, !dbg !3963
  %mul1225 = mul nsw i32 %223, 17, !dbg !3963
  %add1226 = add nsw i32 %mul1225, 1, !dbg !3963
  %conv1227 = sext i32 %add1226 to i64, !dbg !3963
  %add.ptr1232 = getelementptr inbounds i8, ptr %hek_key1220, i64 1, !dbg !3963
  %add.ptr1233 = getelementptr inbounds i8, ptr %add.ptr1232, i64 %conv1223, !dbg !3963
  %224 = load i8, ptr %add.ptr1233, align 1, !dbg !3963
  %225 = and i8 %224, 1, !dbg !3963
  %226 = zext i8 %225 to i32, !dbg !3963
  %227 = shl nuw nsw i32 %226, 8, !dbg !3963
  %or1238 = or i32 %227, 66560, !dbg !3963
  %call1239 = tail call ptr @Perl_pv_escape(ptr noundef %call1219, ptr noundef nonnull %hek_key1220, i64 noundef %conv1223, i64 noundef %conv1227, ptr noundef null, i32 noundef %or1238), !dbg !3963
  tail call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call1185, ptr noundef nonnull @.str.280, ptr noundef %call1239) #8, !dbg !3964
  br label %if.end1241, !dbg !3965

if.else1240:                                      ; preds = %while.body1215
  tail call void @Perl_sv_catpvn_flags(ptr noundef %call1185, ptr noundef nonnull @.str.281, i64 noundef 8, i32 noundef 2) #8, !dbg !3966
  br label %if.end1241

if.end1241:                                       ; preds = %if.else1240, %if.then1218
  %incdec.ptr1242 = getelementptr inbounds ptr, ptr %hekp.04007, i64 1, !dbg !3968
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1242, metadata !3295, metadata !DIExpression()), !dbg !3950
  %cmp1213 = icmp ult ptr %incdec.ptr1242, %add.ptr1211, !dbg !3956
  br i1 %cmp1213, label %while.body1215, label %while.end1243, !dbg !3957, !llvm.loop !3969

while.end1243:                                    ; preds = %if.end1241, %if.then1184
  %sv_flags1244 = getelementptr inbounds %struct.sv, ptr %call1185, i64 0, i32 2, !dbg !3971
  %228 = load i32, ptr %sv_flags1244, align 4, !dbg !3971
  %and1245 = and i32 %228, 2098176, !dbg !3971
  %cmp1246 = icmp eq i32 %and1245, 1024, !dbg !3971
  br i1 %cmp1246, label %cond.true1248, label %cond.false1250, !dbg !3971

cond.true1248:                                    ; preds = %while.end1243
  %sv_u1249 = getelementptr inbounds %struct.sv, ptr %call1185, i64 0, i32 3, !dbg !3971
  %229 = load ptr, ptr %sv_u1249, align 8, !dbg !3971
  br label %cond.end1252, !dbg !3971

cond.false1250:                                   ; preds = %while.end1243
  %call1251 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call1185, ptr noundef null, i32 noundef 2) #8, !dbg !3971
  br label %cond.end1252, !dbg !3971

cond.end1252:                                     ; preds = %cond.false1250, %cond.true1248
  %cond1253 = phi ptr [ %229, %cond.true1248 ], [ %call1251, %cond.false1250 ], !dbg !3971
  %add.ptr1254 = getelementptr inbounds i8, ptr %cond1253, i64 2, !dbg !3972
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.282, ptr noundef nonnull %add.ptr1254), !dbg !3973
  br label %if.end1655, !dbg !3974

if.else1255:                                      ; preds = %cond.false1157
  call void @llvm.dbg.value(metadata i32 %211, metadata !3289, metadata !DIExpression()), !dbg !3948
  %call1257 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !3975
  call void @llvm.dbg.value(metadata ptr %call1257, metadata !3304, metadata !DIExpression()), !dbg !3976
  %230 = load i32, ptr %sv_flags, align 4, !dbg !3977
  %and1259 = and i32 %230, 33554432, !dbg !3977
  %tobool1260.not = icmp eq i32 %and1259, 0, !dbg !3977
  br i1 %tobool1260.not, label %cond.end1648.thread, label %land.lhs.true1261, !dbg !3977

land.lhs.true1261:                                ; preds = %if.else1255
  %231 = load ptr, ptr %sv_u553, align 8, !dbg !3977
  %232 = load ptr, ptr %sv, align 8, !dbg !3977
  %xhv_max1264 = getelementptr inbounds %struct.xpvhv, ptr %232, i64 0, i32 3, !dbg !3977
  %233 = load i64, ptr %xhv_max1264, align 8, !dbg !3977
  %add1265 = add i64 %233, 1, !dbg !3977
  %arrayidx1266 = getelementptr inbounds ptr, ptr %231, i64 %add1265, !dbg !3977
  %234 = load ptr, ptr %arrayidx1266, align 8, !dbg !3977
  %tobool1268.not = icmp eq ptr %234, null, !dbg !3977
  br i1 %tobool1268.not, label %cond.end1648.thread, label %land.lhs.true1269, !dbg !3977

land.lhs.true1269:                                ; preds = %land.lhs.true1261
  %xhv_name_count1275 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx1266, i64 0, i32 4, !dbg !3977
  %235 = load i32, ptr %xhv_name_count1275, align 4, !dbg !3977
  %cmp1276.not = icmp eq i32 %235, -1, !dbg !3977
  br i1 %cmp1276.not, label %land.lhs.true1351, label %cond.true1278, !dbg !3977

cond.true1278:                                    ; preds = %land.lhs.true1269
  %cmp1285 = icmp sgt i32 %235, 0, !dbg !3977
  br i1 %cmp1285, label %cond.end1333.sink.split, label %cond.false1295, !dbg !3977

cond.false1295:                                   ; preds = %cond.true1278
  %cmp1302 = icmp slt i32 %235, -1, !dbg !3977
  br i1 %cmp1302, label %cond.true1304, label %cond.end1333, !dbg !3977

cond.true1304:                                    ; preds = %cond.false1295
  %arrayidx1311 = getelementptr inbounds ptr, ptr %234, i64 1, !dbg !3977
  br label %cond.end1333.sink.split, !dbg !3977

cond.end1333.sink.split:                          ; preds = %cond.true1278, %cond.true1304
  %arrayidx1311.sink = phi ptr [ %arrayidx1311, %cond.true1304 ], [ %234, %cond.true1278 ]
  %236 = load ptr, ptr %arrayidx1311.sink, align 8, !dbg !3977
  br label %cond.end1333, !dbg !3977

cond.end1333:                                     ; preds = %cond.end1333.sink.split, %cond.false1295
  %cond1334 = phi ptr [ %234, %cond.false1295 ], [ %236, %cond.end1333.sink.split ], !dbg !3977
  %hek_key1335 = getelementptr inbounds %struct.hek, ptr %cond1334, i64 0, i32 2, !dbg !3977
  br label %land.lhs.true1351, !dbg !3977

land.lhs.true1351:                                ; preds = %land.lhs.true1269, %cond.end1333
  %cond1339.ph.ph = phi ptr [ %hek_key1335, %cond.end1333 ], [ null, %land.lhs.true1269 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !3306, metadata !DIExpression()), !dbg !3976
  %xhv_name_count1357 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx1266, i64 0, i32 4, !dbg !3978
  %237 = load i32, ptr %xhv_name_count1357, align 4, !dbg !3978
  %cmp1358.not = icmp eq i32 %237, -1, !dbg !3978
  br i1 %cmp1358.not, label %land.lhs.true1433, label %cond.true1360, !dbg !3978

cond.true1360:                                    ; preds = %land.lhs.true1351
  %cmp1367 = icmp sgt i32 %237, 0, !dbg !3978
  br i1 %cmp1367, label %cond.end1415.sink.split, label %cond.false1377, !dbg !3978

cond.false1377:                                   ; preds = %cond.true1360
  %cmp1384 = icmp slt i32 %237, -1, !dbg !3978
  br i1 %cmp1384, label %cond.true1386, label %cond.end1415, !dbg !3978

cond.true1386:                                    ; preds = %cond.false1377
  %arrayidx1393 = getelementptr inbounds ptr, ptr %234, i64 1, !dbg !3978
  br label %cond.end1415.sink.split, !dbg !3978

cond.end1415.sink.split:                          ; preds = %cond.true1360, %cond.true1386
  %arrayidx1393.sink = phi ptr [ %arrayidx1393, %cond.true1386 ], [ %234, %cond.true1360 ]
  %238 = load ptr, ptr %arrayidx1393.sink, align 8, !dbg !3978
  br label %cond.end1415, !dbg !3978

cond.end1415:                                     ; preds = %cond.end1415.sink.split, %cond.false1377
  %cond1416 = phi ptr [ %234, %cond.false1377 ], [ %238, %cond.end1415.sink.split ], !dbg !3978
  %hek_len1417 = getelementptr inbounds %struct.hek, ptr %cond1416, i64 0, i32 1, !dbg !3978
  %239 = load i32, ptr %hek_len1417, align 4, !dbg !3978
  br label %land.lhs.true1433, !dbg !3978

land.lhs.true1433:                                ; preds = %land.lhs.true1351, %cond.end1415
  %cond1420.ph.ph = phi i32 [ %239, %cond.end1415 ], [ 0, %land.lhs.true1351 ]
  %conv142139344082 = sext i32 %cond1420.ph.ph to i64, !dbg !3978
  %xhv_name_count1439 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx1266, i64 0, i32 4, !dbg !3978
  %240 = load i32, ptr %xhv_name_count1439, align 4, !dbg !3978
  %cmp1440.not = icmp eq i32 %240, -1, !dbg !3978
  br i1 %cmp1440.not, label %land.lhs.true1517, label %cond.true1442, !dbg !3978

cond.true1442:                                    ; preds = %land.lhs.true1433
  %cmp1449 = icmp sgt i32 %240, 0, !dbg !3978
  br i1 %cmp1449, label %cond.end1497.sink.split, label %cond.false1459, !dbg !3978

cond.false1459:                                   ; preds = %cond.true1442
  %cmp1466 = icmp slt i32 %240, -1, !dbg !3978
  br i1 %cmp1466, label %cond.true1468, label %cond.end1497, !dbg !3978

cond.true1468:                                    ; preds = %cond.false1459
  %arrayidx1475 = getelementptr inbounds ptr, ptr %234, i64 1, !dbg !3978
  br label %cond.end1497.sink.split, !dbg !3978

cond.end1497.sink.split:                          ; preds = %cond.true1442, %cond.true1468
  %arrayidx1475.sink = phi ptr [ %arrayidx1475, %cond.true1468 ], [ %234, %cond.true1442 ]
  %241 = load ptr, ptr %arrayidx1475.sink, align 8, !dbg !3978
  br label %cond.end1497, !dbg !3978

cond.end1497:                                     ; preds = %cond.end1497.sink.split, %cond.false1459
  %cond1498 = phi ptr [ %234, %cond.false1459 ], [ %241, %cond.end1497.sink.split ], !dbg !3978
  %hek_len1499 = getelementptr inbounds %struct.hek, ptr %cond1498, i64 0, i32 1, !dbg !3978
  %242 = load i32, ptr %hek_len1499, align 4, !dbg !3978
  %phi.bo = mul i32 %242, 17, !dbg !3978
  %phi.bo4060 = add i32 %phi.bo, 1, !dbg !3978
  %phi.cast = sext i32 %phi.bo4060 to i64, !dbg !3978
  br label %land.lhs.true1517, !dbg !3978

land.lhs.true1517:                                ; preds = %land.lhs.true1433, %cond.end1497
  %cond1502.ph.ph = phi i64 [ %phi.cast, %cond.end1497 ], [ 1, %land.lhs.true1433 ]
  %xhv_name_count1523 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx1266, i64 0, i32 4, !dbg !3978
  %243 = load i32, ptr %xhv_name_count1523, align 4, !dbg !3978
  %cmp1524.not = icmp eq i32 %243, -1, !dbg !3978
  br i1 %cmp1524.not, label %cond.end1648.thread, label %cond.true1526, !dbg !3978

cond.true1526:                                    ; preds = %land.lhs.true1517
  %cmp1533 = icmp sgt i32 %243, 0, !dbg !3978
  br i1 %cmp1533, label %cond.end1648.sink.split, label %cond.false1543, !dbg !3978

cond.false1543:                                   ; preds = %cond.true1526
  %cmp1550 = icmp slt i32 %243, -1, !dbg !3978
  br i1 %cmp1550, label %cond.true1610, label %cond.end1648, !dbg !3978

cond.true1610:                                    ; preds = %cond.false1543
  %arrayidx1559 = getelementptr inbounds ptr, ptr %234, i64 1, !dbg !3978
  br label %cond.end1648.sink.split, !dbg !3978

cond.end1648.sink.split:                          ; preds = %cond.true1526, %cond.true1610
  %.sink4114 = phi ptr [ %arrayidx1559, %cond.true1610 ], [ %234, %cond.true1526 ]
  %244 = load ptr, ptr %.sink4114, align 8, !dbg !3978
  br label %cond.end1648, !dbg !3978

cond.end1648:                                     ; preds = %cond.end1648.sink.split, %cond.false1543
  %.sink = phi ptr [ %234, %cond.false1543 ], [ %244, %cond.end1648.sink.split ]
  %hek_key1583 = getelementptr inbounds %struct.hek, ptr %.sink, i64 0, i32 2, !dbg !3978
  %hek_len1641 = getelementptr inbounds %struct.hek, ptr %.sink, i64 0, i32 1, !dbg !3978
  %245 = load i32, ptr %hek_len1641, align 4, !dbg !3978
  %idx.ext1642 = sext i32 %245 to i64, !dbg !3978
  %add.ptr1643 = getelementptr inbounds i8, ptr %hek_key1583, i64 %idx.ext1642, !dbg !3978
  %add.ptr1644 = getelementptr inbounds i8, ptr %add.ptr1643, i64 1, !dbg !3978
  %246 = load i8, ptr %add.ptr1644, align 1, !dbg !3978
  %247 = and i8 %246, 1, !dbg !3978
  %tobool1650.not = icmp eq i8 %247, 0, !dbg !3978
  br i1 %tobool1650.not, label %cond.end1648.thread, label %248, !dbg !3978

cond.end1648.thread:                              ; preds = %land.lhs.true1261, %if.else1255, %land.lhs.true1517, %cond.end1648
  %conv1421393839463969 = phi i64 [ %conv142139344082, %cond.end1648 ], [ %conv142139344082, %land.lhs.true1517 ], [ 0, %if.else1255 ], [ 0, %land.lhs.true1261 ]
  %cond13393931393639483967 = phi ptr [ %cond1339.ph.ph, %cond.end1648 ], [ %cond1339.ph.ph, %land.lhs.true1517 ], [ null, %if.else1255 ], [ null, %land.lhs.true1261 ]
  %conv150539503965 = phi i64 [ %cond1502.ph.ph, %cond.end1648 ], [ %cond1502.ph.ph, %land.lhs.true1517 ], [ 1, %if.else1255 ], [ 1, %land.lhs.true1261 ]
  br label %248, !dbg !3978

248:                                              ; preds = %cond.end1648, %cond.end1648.thread
  %conv1421393839463968 = phi i64 [ %conv1421393839463969, %cond.end1648.thread ], [ %conv142139344082, %cond.end1648 ]
  %cond13393931393639483966 = phi ptr [ %cond13393931393639483967, %cond.end1648.thread ], [ %cond1339.ph.ph, %cond.end1648 ]
  %conv150539503964 = phi i64 [ %conv150539503965, %cond.end1648.thread ], [ %cond1502.ph.ph, %cond.end1648 ]
  %249 = phi i32 [ 66560, %cond.end1648.thread ], [ 66816, %cond.end1648 ]
  %call1653 = tail call ptr @Perl_pv_escape(ptr noundef %call1257, ptr noundef %cond13393931393639483966, i64 noundef %conv1421393839463968, i64 noundef %conv150539503964, ptr noundef null, i32 noundef %249), !dbg !3978
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.283, ptr noundef %call1653), !dbg !3979
  br label %if.end1655

if.end1655:                                       ; preds = %cond.end1252, %248, %cond.false1157, %cond.true1148, %cond.true1130, %if.end1113
  %tobool1656.not = icmp eq ptr %203, null, !dbg !3980
  br i1 %tobool1656.not, label %if.end1661, label %if.then1657, !dbg !3982

if.then1657:                                      ; preds = %if.end1655
  %250 = ptrtoint ptr %203 to i64, !dbg !3983
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.284, i64 noundef %250), !dbg !3985
  %add1658 = add nsw i32 %level, 1, !dbg !3986
  %add1659 = add nsw i32 %nest, 1, !dbg !3986
  tail call void @Perl_do_sv_dump(i32 noundef %add1658, ptr noundef %file, ptr noundef nonnull %203, i32 noundef %add1659, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !3986
  br label %if.end1661, !dbg !3987

if.end1661:                                       ; preds = %if.then1657, %if.end1655
  %tobool1662.not = icmp eq ptr %207, null, !dbg !3988
  br i1 %tobool1662.not, label %if.end1717, label %if.then1663, !dbg !3989

if.then1663:                                      ; preds = %if.end1661
  %call1665 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !3990
  call void @llvm.dbg.value(metadata ptr %call1665, metadata !3307, metadata !DIExpression()), !dbg !3991
  %mro_which = getelementptr inbounds %struct.mro_meta, ptr %207, i64 0, i32 5, !dbg !3992
  %251 = load ptr, ptr %mro_which, align 8, !dbg !3992
  %name = getelementptr inbounds %struct.mro_alg, ptr %251, i64 0, i32 1, !dbg !3992
  %252 = load ptr, ptr %name, align 8, !dbg !3992
  %length = getelementptr inbounds %struct.mro_alg, ptr %251, i64 0, i32 2, !dbg !3992
  %253 = load i16, ptr %length, align 8, !dbg !3992
  %conv1667 = zext i16 %253 to i64, !dbg !3992
  %mul1671 = mul nuw nsw i64 %conv1667, 17, !dbg !3992
  %add1672 = add nuw nsw i64 %mul1671, 1, !dbg !3992
  %kflags = getelementptr inbounds %struct.mro_alg, ptr %251, i64 0, i32 3, !dbg !3992
  %254 = load i16, ptr %kflags, align 2, !dbg !3992
  %255 = shl i16 %254, 8, !dbg !3992
  %256 = and i16 %255, 256, !dbg !3992
  %257 = zext i16 %256 to i32, !dbg !3992
  %or1679 = or i32 %257, 66560, !dbg !3992
  %call1680 = tail call ptr @Perl_pv_escape(ptr noundef %call1665, ptr noundef %252, i64 noundef %conv1667, i64 noundef %add1672, ptr noundef null, i32 noundef %or1679), !dbg !3992
  %258 = load ptr, ptr %mro_which, align 8, !dbg !3993
  %259 = ptrtoint ptr %258 to i64, !dbg !3993
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.285, ptr noundef %call1680, i64 noundef %259), !dbg !3994
  %cache_gen = getelementptr inbounds %struct.mro_meta, ptr %207, i64 0, i32 3, !dbg !3995
  %260 = load i32, ptr %cache_gen, align 8, !dbg !3995
  %conv1682 = zext i32 %260 to i64, !dbg !3996
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.286, i64 noundef %conv1682), !dbg !3997
  %pkg_gen = getelementptr inbounds %struct.mro_meta, ptr %207, i64 0, i32 4, !dbg !3998
  %261 = load i32, ptr %pkg_gen, align 4, !dbg !3998
  %conv1683 = zext i32 %261 to i64, !dbg !3999
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.287, i64 noundef %conv1683), !dbg !4000
  %262 = load ptr, ptr %207, align 8, !dbg !4001
  %tobool1684.not = icmp eq ptr %262, null, !dbg !4003
  br i1 %tobool1684.not, label %if.end1691, label %if.then1685, !dbg !4004

if.then1685:                                      ; preds = %if.then1663
  %263 = ptrtoint ptr %262 to i64, !dbg !4005
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.288, i64 noundef %263), !dbg !4007
  %add1687 = add nsw i32 %level, 1, !dbg !4008
  %264 = load ptr, ptr %207, align 8, !dbg !4008
  %add1689 = add nsw i32 %nest, 1, !dbg !4008
  tail call void @Perl_do_sv_dump(i32 noundef %add1687, ptr noundef %file, ptr noundef %264, i32 noundef %add1689, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4008
  br label %if.end1691, !dbg !4009

if.end1691:                                       ; preds = %if.then1685, %if.then1663
  %mro_linear_current = getelementptr inbounds %struct.mro_meta, ptr %207, i64 0, i32 1, !dbg !4010
  %265 = load ptr, ptr %mro_linear_current, align 8, !dbg !4010
  %tobool1692.not = icmp eq ptr %265, null, !dbg !4012
  br i1 %tobool1692.not, label %if.end1699, label %if.then1693, !dbg !4013

if.then1693:                                      ; preds = %if.end1691
  %266 = ptrtoint ptr %265 to i64, !dbg !4014
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.289, i64 noundef %266), !dbg !4016
  %add1695 = add nsw i32 %level, 1, !dbg !4017
  %267 = load ptr, ptr %mro_linear_current, align 8, !dbg !4017
  %add1697 = add nsw i32 %nest, 1, !dbg !4017
  tail call void @Perl_do_sv_dump(i32 noundef %add1695, ptr noundef %file, ptr noundef %267, i32 noundef %add1697, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4017
  br label %if.end1699, !dbg !4018

if.end1699:                                       ; preds = %if.then1693, %if.end1691
  %mro_nextmethod = getelementptr inbounds %struct.mro_meta, ptr %207, i64 0, i32 2, !dbg !4019
  %268 = load ptr, ptr %mro_nextmethod, align 8, !dbg !4019
  %tobool1700.not = icmp eq ptr %268, null, !dbg !4021
  br i1 %tobool1700.not, label %if.end1707, label %if.then1701, !dbg !4022

if.then1701:                                      ; preds = %if.end1699
  %269 = ptrtoint ptr %268 to i64, !dbg !4023
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.290, i64 noundef %269), !dbg !4025
  %add1703 = add nsw i32 %level, 1, !dbg !4026
  %270 = load ptr, ptr %mro_nextmethod, align 8, !dbg !4026
  %add1705 = add nsw i32 %nest, 1, !dbg !4026
  tail call void @Perl_do_sv_dump(i32 noundef %add1703, ptr noundef %file, ptr noundef %270, i32 noundef %add1705, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4026
  br label %if.end1707, !dbg !4027

if.end1707:                                       ; preds = %if.then1701, %if.end1699
  %isa = getelementptr inbounds %struct.mro_meta, ptr %207, i64 0, i32 6, !dbg !4028
  %271 = load ptr, ptr %isa, align 8, !dbg !4028
  %tobool1708.not = icmp eq ptr %271, null, !dbg !4030
  br i1 %tobool1708.not, label %if.end1717, label %if.then1709, !dbg !4031

if.then1709:                                      ; preds = %if.end1707
  %272 = ptrtoint ptr %271 to i64, !dbg !4032
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.291, i64 noundef %272), !dbg !4034
  %add1711 = add nsw i32 %level, 1, !dbg !4035
  %273 = load ptr, ptr %isa, align 8, !dbg !4035
  %add1713 = add nsw i32 %nest, 1, !dbg !4035
  tail call void @Perl_do_sv_dump(i32 noundef %add1711, ptr noundef %file, ptr noundef %273, i32 noundef %add1713, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4035
  br label %if.end1717, !dbg !4036

if.end1717:                                       ; preds = %if.end798, %if.end1661, %if.then1709, %if.end1707, %if.end1087
  %cmp1718 = icmp sgt i32 %maxnest, %nest, !dbg !4037
  br i1 %cmp1718, label %if.then1720, label %sw.epilog2515, !dbg !4038

if.then1720:                                      ; preds = %if.end1717
  call void @llvm.dbg.value(metadata ptr %sv, metadata !3310, metadata !DIExpression()), !dbg !4039
  %sv_u1722 = getelementptr inbounds %struct.hv, ptr %sv, i64 0, i32 3, !dbg !4040
  %274 = load ptr, ptr %sv_u1722, align 8, !dbg !4040
  %tobool1723.not = icmp eq ptr %274, null, !dbg !4040
  br i1 %tobool1723.not, label %sw.epilog2515, label %if.then1724, !dbg !4041

if.then1724:                                      ; preds = %if.then1720
  %sub1726 = sub nsw i32 %maxnest, %nest, !dbg !4042
  call void @llvm.dbg.value(metadata i32 %sub1726, metadata !3316, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 0, metadata !3314, metadata !DIExpression()), !dbg !4039
  %add1758 = add nsw i32 %level, 1
  %sv_flags1770 = getelementptr inbounds %struct.hv, ptr %sv, i64 0, i32 2
  %add1791 = add nsw i32 %nest, 1
  br label %for.body1732, !dbg !4044

for.body1732:                                     ; preds = %for.inc1800.for.body1732_crit_edge, %if.then1724
  %275 = phi ptr [ %274, %if.then1724 ], [ %.pre4056, %for.inc1800.for.body1732_crit_edge ], !dbg !4045
  %count1725.04016 = phi i32 [ %sub1726, %if.then1724 ], [ %count1725.1.lcssa, %for.inc1800.for.body1732_crit_edge ]
  %i1721.04015 = phi i64 [ 0, %if.then1724 ], [ %inc1801, %for.inc1800.for.body1732_crit_edge ]
  call void @llvm.dbg.value(metadata i32 %count1725.04016, metadata !3316, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 %i1721.04015, metadata !3314, metadata !DIExpression()), !dbg !4039
  %arrayidx1734 = getelementptr inbounds ptr, ptr %275, i64 %i1721.04015, !dbg !4045
  call void @llvm.dbg.value(metadata ptr undef, metadata !3315, metadata !DIExpression()), !dbg !4039
  %he.04009 = load ptr, ptr %arrayidx1734, align 8, !dbg !4046
  call void @llvm.dbg.value(metadata ptr %he.04009, metadata !3315, metadata !DIExpression()), !dbg !4039
  %tobool1736.not4010 = icmp eq ptr %he.04009, null, !dbg !4047
  br i1 %tobool1736.not4010, label %for.inc1800, label %for.body1737, !dbg !4047

for.body1737:                                     ; preds = %for.body1732, %cleanup
  %he.04012 = phi ptr [ %he.0, %cleanup ], [ %he.04009, %for.body1732 ]
  %count1725.14011 = phi i32 [ %dec1739, %cleanup ], [ %count1725.04016, %for.body1732 ]
  call void @llvm.dbg.value(metadata i32 %count1725.14011, metadata !3316, metadata !DIExpression()), !dbg !4043
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8, !dbg !4048
  %dec1739 = add nsw i32 %count1725.14011, -1, !dbg !4049
  call void @llvm.dbg.value(metadata i32 %dec1739, metadata !3316, metadata !DIExpression()), !dbg !4043
  %cmp1740 = icmp slt i32 %count1725.14011, 1, !dbg !4051
  br i1 %cmp1740, label %cleanup.thread, label %if.end1743, !dbg !4052

cleanup.thread:                                   ; preds = %for.body1737
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !4053
  br label %sw.epilog2515

if.end1743:                                       ; preds = %for.body1737
  %hent_hek = getelementptr inbounds %struct.he, ptr %he.04012, i64 0, i32 1, !dbg !4054
  %276 = load ptr, ptr %hent_hek, align 8, !dbg !4054
  %277 = load i32, ptr %276, align 4, !dbg !4054
  call void @llvm.dbg.value(metadata i32 %277, metadata !3319, metadata !DIExpression()), !dbg !4055
  %call1744 = call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %he.04012) #8, !dbg !4056
  call void @llvm.dbg.value(metadata ptr %call1744, metadata !3326, metadata !DIExpression()), !dbg !4055
  %sv_flags1745 = getelementptr inbounds %struct.sv, ptr %call1744, i64 0, i32 2, !dbg !4057
  %278 = load i32, ptr %sv_flags1745, align 4, !dbg !4057
  %and1746 = and i32 %278, 2098176, !dbg !4057
  %cmp1747 = icmp eq i32 %and1746, 1024, !dbg !4057
  br i1 %cmp1747, label %cond.true1749, label %cond.false1754, !dbg !4057

cond.true1749:                                    ; preds = %if.end1743
  %279 = load ptr, ptr %call1744, align 8, !dbg !4057
  %xpv_cur1751 = getelementptr inbounds %struct.xpv, ptr %279, i64 0, i32 2, !dbg !4057
  %280 = load i64, ptr %xpv_cur1751, align 8, !dbg !4057
  call void @llvm.dbg.value(metadata i64 %280, metadata !3329, metadata !DIExpression()), !dbg !4055
  store i64 %280, ptr %len, align 8, !dbg !4057
  %sv_u1752 = getelementptr inbounds %struct.sv, ptr %call1744, i64 0, i32 3, !dbg !4057
  %281 = load ptr, ptr %sv_u1752, align 8, !dbg !4057
  br label %cond.end1756, !dbg !4057

cond.false1754:                                   ; preds = %if.end1743
  call void @llvm.dbg.value(metadata ptr %len, metadata !3329, metadata !DIExpression(DW_OP_deref)), !dbg !4055
  %call1755 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call1744, ptr noundef nonnull %len, i32 noundef 34) #8, !dbg !4057
  %.pre4057 = load i64, ptr %len, align 8, !dbg !4058
  br label %cond.end1756, !dbg !4057

cond.end1756:                                     ; preds = %cond.false1754, %cond.true1749
  %282 = phi i64 [ %280, %cond.true1749 ], [ %.pre4057, %cond.false1754 ], !dbg !4058
  %cond1757 = phi ptr [ %281, %cond.true1749 ], [ %call1755, %cond.false1754 ], !dbg !4057
  call void @llvm.dbg.value(metadata ptr %cond1757, metadata !3327, metadata !DIExpression()), !dbg !4055
  %he_valu = getelementptr inbounds %struct.he, ptr %he.04012, i64 0, i32 2, !dbg !4059
  %283 = load ptr, ptr %he_valu, align 8, !dbg !4059
  call void @llvm.dbg.value(metadata ptr %283, metadata !3328, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i64 %282, metadata !3329, metadata !DIExpression()), !dbg !4055
  %call1759 = call ptr @Perl_pv_display(ptr noundef nonnull %call, ptr noundef %cond1757, i64 noundef %282, i64 noundef 0, i64 noundef %pvlim), !dbg !4058
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add1758, ptr noundef %file, ptr noundef nonnull @.str.292, ptr noundef %call1759), !dbg !4060
  %284 = load i32, ptr %sv_flags1745, align 4, !dbg !4061
  %and1761 = and i32 %284, 536870912, !dbg !4061
  %tobool1762.not = icmp eq i32 %and1761, 0, !dbg !4061
  br i1 %tobool1762.not, label %if.end1769, label %if.then1763, !dbg !4063

if.then1763:                                      ; preds = %cond.end1756
  %285 = load ptr, ptr %call1744, align 8, !dbg !4064
  %xpv_cur1765 = getelementptr inbounds %struct.xpv, ptr %285, i64 0, i32 2, !dbg !4064
  %286 = load i64, ptr %xpv_cur1765, align 8, !dbg !4064
  %mul1766 = mul i64 %286, 6, !dbg !4064
  %call1767 = call ptr @Perl_sv_uni_display(ptr noundef nonnull %call, ptr noundef nonnull %call1744, i64 noundef %mul1766, i64 noundef 3) #8, !dbg !4064
  %call1768 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.293, ptr noundef %call1767) #8, !dbg !4065
  br label %if.end1769, !dbg !4065

if.end1769:                                       ; preds = %if.then1763, %cond.end1756
  %287 = load i32, ptr %sv_flags1770, align 4, !dbg !4066
  %and1771 = and i32 %287, 33554432, !dbg !4066
  %tobool1772.not = icmp eq i32 %and1771, 0, !dbg !4066
  br i1 %tobool1772.not, label %cond.end1781, label %cond.true1773, !dbg !4066

cond.true1773:                                    ; preds = %if.end1769
  %288 = load ptr, ptr %sv_u1722, align 8, !dbg !4066
  %289 = load ptr, ptr %sv, align 8, !dbg !4066
  %xhv_max1776 = getelementptr inbounds %struct.xpvhv, ptr %289, i64 0, i32 3, !dbg !4066
  %290 = load i64, ptr %xhv_max1776, align 8, !dbg !4066
  %add1777 = add i64 %290, 1, !dbg !4066
  %arrayidx1778 = getelementptr inbounds ptr, ptr %288, i64 %add1777, !dbg !4066
  %xhv_eiter1779 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx1778, i64 0, i32 2, !dbg !4066
  %291 = load ptr, ptr %xhv_eiter1779, align 8, !dbg !4066
  br label %cond.end1781, !dbg !4066

cond.end1781:                                     ; preds = %if.end1769, %cond.true1773
  %cond1782 = phi ptr [ %291, %cond.true1773 ], [ null, %if.end1769 ], !dbg !4066
  %cmp1783 = icmp eq ptr %cond1782, %he.04012, !dbg !4068
  br i1 %cmp1783, label %if.then1785, label %cleanup, !dbg !4069

if.then1785:                                      ; preds = %cond.end1781
  %call1786 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.294) #8, !dbg !4070
  br label %cleanup, !dbg !4070

cleanup:                                          ; preds = %cond.end1781, %if.then1785
  %conv1788 = zext i32 %277 to i64, !dbg !4071
  %call1789 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.295, i64 noundef %conv1788) #8, !dbg !4072
  call void @Perl_do_sv_dump(i32 noundef %add1758, ptr noundef %file, ptr noundef %283, i32 noundef %add1791, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4073
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !4053
  %he.0 = load ptr, ptr %he.04012, align 8, !dbg !4046
  call void @llvm.dbg.value(metadata i32 %dec1739, metadata !3316, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %he.0, metadata !3315, metadata !DIExpression()), !dbg !4039
  %tobool1736.not = icmp eq ptr %he.0, null, !dbg !4047
  br i1 %tobool1736.not, label %for.inc1800, label %for.body1737, !dbg !4047, !llvm.loop !4074

for.inc1800:                                      ; preds = %cleanup, %for.body1732
  %count1725.1.lcssa = phi i32 [ %count1725.04016, %for.body1732 ], [ %dec1739, %cleanup ], !dbg !4043
  %inc1801 = add i64 %i1721.04015, 1, !dbg !4076
  call void @llvm.dbg.value(metadata i32 %count1725.1.lcssa, metadata !3316, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i64 %inc1801, metadata !3314, metadata !DIExpression()), !dbg !4039
  %292 = load ptr, ptr %sv, align 8, !dbg !4077
  %xhv_max1729 = getelementptr inbounds %struct.xpvhv, ptr %292, i64 0, i32 3, !dbg !4077
  %293 = load i64, ptr %xhv_max1729, align 8, !dbg !4077
  %cmp1730.not = icmp ugt i64 %inc1801, %293, !dbg !4078
  br i1 %cmp1730.not, label %sw.epilog2515, label %for.inc1800.for.body1732_crit_edge, !dbg !4044, !llvm.loop !4079

for.inc1800.for.body1732_crit_edge:               ; preds = %for.inc1800
  %.pre4056 = load ptr, ptr %sv_u1722, align 8, !dbg !4045
  br label %for.body1732, !dbg !4044

sw.bb1806:                                        ; preds = %if.end454, %if.end473
  %294 = load ptr, ptr %sv, align 8, !dbg !4081
  %xcv_flags1808 = getelementptr inbounds %struct.xpvcv, ptr %294, i64 0, i32 12, !dbg !4081
  %295 = load i32, ptr %xcv_flags1808, align 4, !dbg !4081
  %and1809 = and i32 %295, 8192, !dbg !4081
  %tobool1810.not = icmp eq i32 %and1809, 0, !dbg !4081
  br i1 %tobool1810.not, label %if.end1837, label %if.then1811, !dbg !4082

if.then1811:                                      ; preds = %sw.bb1806
  %call1813 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !4083
  call void @llvm.dbg.value(metadata ptr %call1813, metadata !3330, metadata !DIExpression()), !dbg !4084
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len1814) #8, !dbg !4085
  %296 = load i32, ptr %sv_flags, align 4, !dbg !4086
  %and1817 = and i32 %296, 2098176, !dbg !4086
  %cmp1818 = icmp eq i32 %and1817, 1024, !dbg !4086
  br i1 %cmp1818, label %cond.true1820, label %cond.false1825, !dbg !4086

cond.true1820:                                    ; preds = %if.then1811
  %297 = load ptr, ptr %sv, align 8, !dbg !4086
  %xpv_cur1822 = getelementptr inbounds %struct.xpv, ptr %297, i64 0, i32 2, !dbg !4086
  %298 = load i64, ptr %xpv_cur1822, align 8, !dbg !4086
  call void @llvm.dbg.value(metadata i64 %298, metadata !3333, metadata !DIExpression()), !dbg !4084
  store i64 %298, ptr %len1814, align 8, !dbg !4086
  %sv_u1823 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !4086
  %299 = load ptr, ptr %sv_u1823, align 8, !dbg !4086
  br label %cond.end1827, !dbg !4086

cond.false1825:                                   ; preds = %if.then1811
  call void @llvm.dbg.value(metadata ptr %len1814, metadata !3333, metadata !DIExpression(DW_OP_deref)), !dbg !4084
  %call1826 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len1814, i32 noundef 34) #8, !dbg !4086
  %.pre4035 = load i64, ptr %len1814, align 8, !dbg !4087
  %.pre4036 = load i32, ptr %sv_flags, align 4, !dbg !4087
  br label %cond.end1827, !dbg !4086

cond.end1827:                                     ; preds = %cond.false1825, %cond.true1820
  %300 = phi i32 [ %296, %cond.true1820 ], [ %.pre4036, %cond.false1825 ], !dbg !4087
  %301 = phi i64 [ %298, %cond.true1820 ], [ %.pre4035, %cond.false1825 ], !dbg !4087
  %cond1828 = phi ptr [ %299, %cond.true1820 ], [ %call1826, %cond.false1825 ], !dbg !4086
  call void @llvm.dbg.value(metadata ptr %cond1828, metadata !3334, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.value(metadata i64 %301, metadata !3333, metadata !DIExpression()), !dbg !4084
  %mul1829 = mul i64 %301, 17, !dbg !4087
  %add1830 = add i64 %mul1829, 1, !dbg !4087
  %and1832 = lshr i32 %300, 21, !dbg !4087
  %302 = and i32 %and1832, 256, !dbg !4087
  %or1835 = or i32 %302, 66560, !dbg !4087
  %call1836 = call ptr @Perl_pv_escape(ptr noundef %call1813, ptr noundef %cond1828, i64 noundef %301, i64 noundef %add1830, ptr noundef null, i32 noundef %or1835), !dbg !4087
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.296, ptr noundef %call1836), !dbg !4088
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len1814) #8, !dbg !4089
  br label %if.end1837, !dbg !4090

if.end1837:                                       ; preds = %cond.end1827, %sw.bb1806
  %303 = load i32, ptr %sv_flags, align 4, !dbg !4091
  %and1839 = and i32 %303, 1024, !dbg !4091
  %tobool1840.not = icmp eq i32 %and1839, 0, !dbg !4091
  br i1 %tobool1840.not, label %sw.bb1936, label %if.then1841, !dbg !4092

if.then1841:                                      ; preds = %if.end1837
  %call1843 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !4093
  call void @llvm.dbg.value(metadata ptr %call1843, metadata !3335, metadata !DIExpression()), !dbg !4094
  %304 = load i32, ptr %sv_flags, align 4, !dbg !4095
  %and1845 = and i32 %304, 1024, !dbg !4095
  %tobool1846.not = icmp eq i32 %and1845, 0, !dbg !4095
  br i1 %tobool1846.not, label %cond.end1925, label %cond.true1847, !dbg !4095

cond.true1847:                                    ; preds = %if.then1841
  %and1849 = and i32 %304, 255, !dbg !4095
  %cmp1850 = icmp eq i32 %and1849, 13, !dbg !4095
  br i1 %cmp1850, label %land.lhs.true1852, label %cond.true1902, !dbg !4095

land.lhs.true1852:                                ; preds = %cond.true1847
  %305 = load ptr, ptr %sv, align 8, !dbg !4095
  %xcv_flags1854 = getelementptr inbounds %struct.xpvcv, ptr %305, i64 0, i32 12, !dbg !4095
  %306 = load i32, ptr %xcv_flags1854, align 4, !dbg !4095
  %and1855 = and i32 %306, 8192, !dbg !4095
  %tobool1856.not = icmp eq i32 %and1855, 0, !dbg !4095
  %sv_u18644098 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !4095
  %307 = load ptr, ptr %sv_u18644098, align 8, !dbg !4095
  br i1 %tobool1856.not, label %land.lhs.true1879, label %cond.true1874.thread, !dbg !4095

cond.true1874.thread:                             ; preds = %land.lhs.true1852
  %xpv_cur1860 = getelementptr inbounds %struct.xpv, ptr %305, i64 0, i32 2, !dbg !4095
  %308 = load i64, ptr %xpv_cur1860, align 8, !dbg !4095
  %add.ptr1861 = getelementptr inbounds i8, ptr %307, i64 %308, !dbg !4095
  %add.ptr1862 = getelementptr inbounds i8, ptr %add.ptr1861, i64 1, !dbg !4095
  call void @llvm.dbg.value(metadata ptr undef, metadata !3338, metadata !DIExpression()), !dbg !4094
  br label %land.lhs.true1879, !dbg !4096

land.lhs.true1879:                                ; preds = %land.lhs.true1852, %cond.true1874.thread
  %cond1870.ph4096 = phi ptr [ %add.ptr1862, %cond.true1874.thread ], [ %307, %land.lhs.true1852 ]
  %309 = load ptr, ptr %sv, align 8, !dbg !4096
  %xcv_flags1881 = getelementptr inbounds %struct.xpvcv, ptr %309, i64 0, i32 12, !dbg !4096
  %310 = load i32, ptr %xcv_flags1881, align 4, !dbg !4096
  %and1882 = and i32 %310, 8192, !dbg !4096
  %tobool1883.not = icmp eq i32 %and1882, 0, !dbg !4096
  br i1 %tobool1883.not, label %cond.true1902.thread4105, label %cond.true1902.thread, !dbg !4096

cond.true1902.thread4105:                         ; preds = %land.lhs.true1879
  %xpv_cur18934107 = getelementptr inbounds %struct.xpv, ptr %309, i64 0, i32 2, !dbg !4096
  %311 = load i64, ptr %xpv_cur18934107, align 8, !dbg !4096
  br label %land.lhs.true1907, !dbg !4096

cond.true1902.thread:                             ; preds = %land.lhs.true1879
  %xpv_len_u1886 = getelementptr inbounds %struct.xpv, ptr %309, i64 0, i32 3, !dbg !4096
  %312 = load i64, ptr %xpv_len_u1886, align 8, !dbg !4096
  %xpv_cur1888 = getelementptr inbounds %struct.xpv, ptr %309, i64 0, i32 2, !dbg !4096
  %313 = load i64, ptr %xpv_cur1888, align 8, !dbg !4096
  %sub1889 = add i64 %312, -2, !dbg !4096
  %sub1890 = sub i64 %sub1889, %313, !dbg !4096
  br label %land.lhs.true1907, !dbg !4096

cond.true1902:                                    ; preds = %cond.true1847
  %sv_u1864 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !4095
  %314 = load ptr, ptr %sv_u1864, align 8, !dbg !4095
  call void @llvm.dbg.value(metadata ptr undef, metadata !3338, metadata !DIExpression()), !dbg !4094
  %.pre4037 = load ptr, ptr %sv, align 8, !dbg !4096
  %xpv_cur1893 = getelementptr inbounds %struct.xpv, ptr %.pre4037, i64 0, i32 2, !dbg !4096
  %315 = load i64, ptr %xpv_cur1893, align 8, !dbg !4096
  br label %cond.end1925

land.lhs.true1907:                                ; preds = %cond.true1902.thread4105, %cond.true1902.thread
  %cond1898.ph4104 = phi i64 [ %sub1890, %cond.true1902.thread ], [ %311, %cond.true1902.thread4105 ]
  %316 = phi i64 [ %313, %cond.true1902.thread ], [ %311, %cond.true1902.thread4105 ]
  %xcv_flags1909 = getelementptr inbounds %struct.xpvcv, ptr %309, i64 0, i32 12, !dbg !4096
  %317 = load i32, ptr %xcv_flags1909, align 4, !dbg !4096
  %and1910 = and i32 %317, 8192, !dbg !4096
  %tobool1911.not = icmp eq i32 %and1910, 0, !dbg !4096
  br i1 %tobool1911.not, label %cond.end1925, label %cond.true1912, !dbg !4096

cond.true1912:                                    ; preds = %land.lhs.true1907
  %xpv_len_u1914 = getelementptr inbounds %struct.xpv, ptr %309, i64 0, i32 3, !dbg !4096
  %318 = load i64, ptr %xpv_len_u1914, align 8, !dbg !4096
  %sub1917 = add i64 %318, -2, !dbg !4096
  %sub1918 = sub i64 %sub1917, %316, !dbg !4096
  br label %cond.end1925, !dbg !4096

cond.end1925:                                     ; preds = %land.lhs.true1907, %cond.true1902, %if.then1841, %cond.true1912
  %cond18983980 = phi i64 [ %cond1898.ph4104, %cond.true1912 ], [ 0, %if.then1841 ], [ %cond1898.ph4104, %land.lhs.true1907 ], [ %315, %cond.true1902 ]
  %cond187039743978 = phi ptr [ %cond1870.ph4096, %cond.true1912 ], [ null, %if.then1841 ], [ %cond1870.ph4096, %land.lhs.true1907 ], [ %314, %cond.true1902 ]
  %cond1926 = phi i64 [ %sub1918, %cond.true1912 ], [ 0, %if.then1841 ], [ %316, %land.lhs.true1907 ], [ %315, %cond.true1902 ], !dbg !4096
  %mul1927 = mul i64 %cond1926, 17, !dbg !4096
  %add1928 = add i64 %mul1927, 1, !dbg !4096
  %and1930 = lshr i32 %304, 21, !dbg !4096
  %319 = and i32 %and1930, 256, !dbg !4096
  %or1933 = or i32 %319, 66560, !dbg !4096
  %call1934 = call ptr @Perl_pv_escape(ptr noundef %call1843, ptr noundef %cond187039743978, i64 noundef %cond18983980, i64 noundef %add1928, ptr noundef null, i32 noundef %or1933), !dbg !4096
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.297, ptr noundef %call1934), !dbg !4097
  br label %sw.bb1936, !dbg !4098

sw.bb1936:                                        ; preds = %if.end454, %if.end1837, %cond.end1925, %if.end473
  %320 = load ptr, ptr %sv, align 8, !dbg !4099
  %xcv_stash = getelementptr inbounds %struct.xpvcv, ptr %320, i64 0, i32 4, !dbg !4099
  %321 = load ptr, ptr %xcv_stash, align 8, !dbg !4099
  call void @Perl_do_hv_dump(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.298, ptr noundef %321), !dbg !4099
  %322 = load ptr, ptr %sv, align 8, !dbg !4100
  %xcv_flags1940 = getelementptr inbounds %struct.xpvcv, ptr %322, i64 0, i32 12, !dbg !4100
  %323 = load i32, ptr %xcv_flags1940, align 4, !dbg !4100
  %and1941 = and i32 %323, 8, !dbg !4100
  %tobool1942.not = icmp eq i32 %and1941, 0, !dbg !4100
  br i1 %tobool1942.not, label %if.then1943, label %if.else1965, !dbg !4101

if.then1943:                                      ; preds = %sw.bb1936
  %xcv_start_u = getelementptr inbounds %struct.xpvcv, ptr %322, i64 0, i32 5, !dbg !4102
  %324 = load ptr, ptr %xcv_start_u, align 8, !dbg !4102
  %tobool1945.not = icmp eq ptr %324, null, !dbg !4102
  br i1 %tobool1945.not, label %if.end1952, label %if.then1946, !dbg !4105

if.then1946:                                      ; preds = %if.then1943
  %325 = ptrtoint ptr %324 to i64, !dbg !4106
  %call1951 = call fastcc i64 @S_sequence_num(ptr noundef nonnull %324), !dbg !4108
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.299, i64 noundef %325, i64 noundef %call1951), !dbg !4109
  %.pre4038 = load ptr, ptr %sv, align 8, !dbg !4110
  br label %if.end1952, !dbg !4111

if.end1952:                                       ; preds = %if.then1946, %if.then1943
  %326 = phi ptr [ %.pre4038, %if.then1946 ], [ %322, %if.then1943 ], !dbg !4110
  %xcv_root_u = getelementptr inbounds %struct.xpvcv, ptr %326, i64 0, i32 6, !dbg !4110
  %327 = load ptr, ptr %xcv_root_u, align 8, !dbg !4110
  %328 = ptrtoint ptr %327 to i64, !dbg !4110
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.300, i64 noundef %328), !dbg !4112
  %329 = load ptr, ptr %sv, align 8, !dbg !4113
  %xcv_root_u1955 = getelementptr inbounds %struct.xpvcv, ptr %329, i64 0, i32 6, !dbg !4113
  %330 = load ptr, ptr %xcv_root_u1955, align 8, !dbg !4113
  %tobool1956.not = icmp ne ptr %330, null, !dbg !4113
  %331 = and i1 %tobool1956.not, %dumpops, !dbg !4115
  br i1 %331, label %if.then1960, label %if.end1981, !dbg !4115

if.then1960:                                      ; preds = %if.end1952
  %add1961 = add nsw i32 %level, 1, !dbg !4116
  call void @Perl_do_op_dump(i32 noundef %add1961, ptr noundef %file, ptr noundef nonnull %330), !dbg !4116
  br label %if.end1981, !dbg !4118

if.else1965:                                      ; preds = %sw.bb1936
  %call1966 = call ptr @Perl_cv_const_sv(ptr noundef nonnull %sv) #8, !dbg !4119
  call void @llvm.dbg.value(metadata ptr %call1966, metadata !3339, metadata !DIExpression()), !dbg !4120
  %332 = load ptr, ptr %sv, align 8, !dbg !4121
  %xcv_root_u1968 = getelementptr inbounds %struct.xpvcv, ptr %332, i64 0, i32 6, !dbg !4121
  %333 = load ptr, ptr %xcv_root_u1968, align 8, !dbg !4121
  %334 = ptrtoint ptr %333 to i64, !dbg !4121
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.301, i64 noundef %334), !dbg !4122
  %tobool1969.not = icmp eq ptr %call1966, null, !dbg !4123
  %335 = load ptr, ptr %sv, align 8, !dbg !4125
  %xcv_start_u1978 = getelementptr inbounds %struct.xpvcv, ptr %335, i64 0, i32 5, !dbg !4125
  br i1 %tobool1969.not, label %if.else1976, label %if.then1970, !dbg !4126

if.then1970:                                      ; preds = %if.else1965
  %336 = load ptr, ptr %xcv_start_u1978, align 8, !dbg !4127
  %337 = ptrtoint ptr %336 to i64, !dbg !4127
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.302, i64 noundef %337), !dbg !4129
  %add1973 = add nsw i32 %level, 1, !dbg !4130
  %add1974 = add nsw i32 %nest, 1, !dbg !4130
  call void @Perl_do_sv_dump(i32 noundef %add1973, ptr noundef %file, ptr noundef nonnull %call1966, i32 noundef %add1974, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4130
  br label %if.end1981, !dbg !4131

if.else1976:                                      ; preds = %if.else1965
  %338 = load i32, ptr %xcv_start_u1978, align 8, !dbg !4132
  %conv1979 = sext i32 %338 to i64, !dbg !4134
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.303, i64 noundef %conv1979), !dbg !4135
  br label %if.end1981

if.end1981:                                       ; preds = %if.then1970, %if.else1976, %if.end1952, %if.then1960
  %339 = load ptr, ptr %sv, align 8, !dbg !4136
  %xcv_flags1983 = getelementptr inbounds %struct.xpvcv, ptr %339, i64 0, i32 12, !dbg !4136
  %340 = load i32, ptr %xcv_flags1983, align 4, !dbg !4136
  %and1984 = and i32 %340, 32768, !dbg !4136
  %tobool1985.not = icmp eq i32 %and1984, 0, !dbg !4136
  %xcv_gv_u.i3799 = getelementptr inbounds %struct.xpvcv, ptr %339, i64 0, i32 7, !dbg !4138
  %341 = load ptr, ptr %xcv_gv_u.i3799, align 8, !dbg !4138
  br i1 %tobool1985.not, label %S_CvGV.exit, label %CvNAME_HEK.exit, !dbg !4139

CvNAME_HEK.exit:                                  ; preds = %if.end1981
  call void @llvm.dbg.value(metadata ptr undef, metadata !4140, metadata !DIExpression()), !dbg !4145
  %hek_key1988 = getelementptr inbounds %struct.hek, ptr %341, i64 0, i32 2, !dbg !4147
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.278, ptr noundef nonnull %hek_key1988), !dbg !4148
  br label %if.end1992, !dbg !4148

S_CvGV.exit:                                      ; preds = %if.end1981
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1896, metadata !DIExpression()) #8, !dbg !4149
  call void @Perl_do_gvgv_dump(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.304, ptr noundef %341), !dbg !4151
  br label %if.end1992

if.end1992:                                       ; preds = %S_CvGV.exit, %CvNAME_HEK.exit
  %342 = load ptr, ptr %sv, align 8, !dbg !4152
  %xcv_file = getelementptr inbounds %struct.xpvcv, ptr %342, i64 0, i32 8, !dbg !4152
  %343 = load ptr, ptr %xcv_file, align 8, !dbg !4152
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.305, ptr noundef %343), !dbg !4153
  %sv.val3713 = load ptr, ptr %sv, align 8, !dbg !4154
  call void @llvm.dbg.value(metadata ptr undef, metadata !4155, metadata !DIExpression()), !dbg !4161
  %xcv_depth.i = getelementptr inbounds %struct.xpvcv, ptr %sv.val3713, i64 0, i32 13, !dbg !4163
  %344 = load i32, ptr %xcv_depth.i, align 4, !dbg !4154
  %conv1995 = sext i32 %344 to i64, !dbg !4164
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.306, i64 noundef %conv1995), !dbg !4165
  %345 = load ptr, ptr %sv, align 8, !dbg !4166
  %xcv_flags1997 = getelementptr inbounds %struct.xpvcv, ptr %345, i64 0, i32 12, !dbg !4166
  %346 = load i32, ptr %xcv_flags1997, align 4, !dbg !4166
  %conv1998 = zext i32 %346 to i64, !dbg !4167
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.307, i64 noundef %conv1998), !dbg !4168
  %347 = load ptr, ptr %sv, align 8, !dbg !4169
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv, ptr %347, i64 0, i32 11, !dbg !4169
  %348 = load i32, ptr %xcv_outside_seq, align 8, !dbg !4169
  %conv2000 = zext i32 %348 to i64, !dbg !4170
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.308, i64 noundef %conv2000), !dbg !4171
  %349 = load ptr, ptr %sv, align 8, !dbg !4172
  %xcv_flags2002 = getelementptr inbounds %struct.xpvcv, ptr %349, i64 0, i32 12, !dbg !4172
  %350 = load i32, ptr %xcv_flags2002, align 4, !dbg !4172
  %and2003 = and i32 %350, 8, !dbg !4172
  %tobool2004.not = icmp eq i32 %and2003, 0, !dbg !4172
  %xcv_padlist_u = getelementptr inbounds %struct.xpvcv, ptr %349, i64 0, i32 9, !dbg !4174
  %351 = load ptr, ptr %xcv_padlist_u, align 8, !dbg !4174
  br i1 %tobool2004.not, label %if.then2005, label %if.else2014, !dbg !4175

if.then2005:                                      ; preds = %if.end1992
  %352 = ptrtoint ptr %351 to i64, !dbg !4176
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.309, i64 noundef %352), !dbg !4178
  %cmp2007 = icmp sgt i32 %maxnest, %nest, !dbg !4179
  br i1 %cmp2007, label %if.then2009, label %if.end2017, !dbg !4181

if.then2009:                                      ; preds = %if.then2005
  %add2010 = add nsw i32 %level, 1, !dbg !4182
  %353 = load ptr, ptr %sv, align 8, !dbg !4182
  %xcv_padlist_u2012 = getelementptr inbounds %struct.xpvcv, ptr %353, i64 0, i32 9, !dbg !4182
  %354 = load ptr, ptr %xcv_padlist_u2012, align 8, !dbg !4182
  call void @Perl_do_dump_pad(i32 noundef %add2010, ptr noundef %file, ptr noundef %354, i32 noundef 0) #8, !dbg !4182
  br label %if.end2017, !dbg !4184

if.else2014:                                      ; preds = %if.end1992
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.310, ptr noundef %351), !dbg !4185
  br label %if.end2017

if.end2017:                                       ; preds = %if.then2005, %if.then2009, %if.else2014
  %355 = load ptr, ptr %sv, align 8, !dbg !4186
  %xcv_outside = getelementptr inbounds %struct.xpvcv, ptr %355, i64 0, i32 10, !dbg !4186
  %356 = load ptr, ptr %xcv_outside, align 8, !dbg !4186
  call void @llvm.dbg.value(metadata ptr %356, metadata !3342, metadata !DIExpression()), !dbg !4187
  %357 = ptrtoint ptr %356 to i64, !dbg !4188
  %tobool2019.not = icmp eq ptr %356, null, !dbg !4189
  br i1 %tobool2019.not, label %cond.end2086, label %cond.false2021, !dbg !4190

cond.false2021:                                   ; preds = %if.end2017
  %358 = load ptr, ptr %356, align 8, !dbg !4191
  %xcv_flags2023 = getelementptr inbounds %struct.xpvcv, ptr %358, i64 0, i32 12, !dbg !4191
  %359 = load i32, ptr %xcv_flags2023, align 4, !dbg !4191
  %and2024 = and i32 %359, 128, !dbg !4191
  %tobool2025.not = icmp eq i32 %and2024, 0, !dbg !4191
  br i1 %tobool2025.not, label %cond.false2027, label %cond.end2086, !dbg !4191

cond.false2027:                                   ; preds = %cond.false2021
  %360 = load ptr, ptr @PL_main_cv, align 8, !dbg !4192
  %cmp2028 = icmp eq ptr %356, %360, !dbg !4193
  br i1 %cmp2028, label %cond.end2086, label %cond.false2031, !dbg !4194

cond.false2031:                                   ; preds = %cond.false2027
  %and2034 = and i32 %359, 256, !dbg !4195
  %tobool2035.not = icmp eq i32 %and2034, 0, !dbg !4195
  br i1 %tobool2035.not, label %cond.false2037, label %cond.end2086, !dbg !4195

cond.false2037:                                   ; preds = %cond.false2031
  call void @llvm.dbg.value(metadata ptr %356, metadata !1896, metadata !DIExpression()) #8, !dbg !4196
  %and.i3803 = and i32 %359, 32768, !dbg !4198
  %tobool.not.i3804 = icmp eq i32 %and.i3803, 0, !dbg !4198
  br i1 %tobool.not.i3804, label %cond.false.i3808, label %cond.true.i3806, !dbg !4198

cond.true.i3806:                                  ; preds = %cond.false2037
  %call.i3805 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %356) #8, !dbg !4199
  br label %S_CvGV.exit3810, !dbg !4198

cond.false.i3808:                                 ; preds = %cond.false2037
  %xcv_gv_u.i3807 = getelementptr inbounds %struct.xpvcv, ptr %358, i64 0, i32 7, !dbg !4200
  %361 = load ptr, ptr %xcv_gv_u.i3807, align 8, !dbg !4201
  br label %S_CvGV.exit3810, !dbg !4198

S_CvGV.exit3810:                                  ; preds = %cond.true.i3806, %cond.false.i3808
  %cond.i3809 = phi ptr [ %call.i3805, %cond.true.i3806 ], [ %361, %cond.false.i3808 ], !dbg !4198
  %tobool2039.not = icmp eq ptr %cond.i3809, null, !dbg !4202
  br i1 %tobool2039.not, label %cond.end2086, label %cond.true2040, !dbg !4202

cond.true2040:                                    ; preds = %S_CvGV.exit3810
  %call2041 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !4203
  call void @llvm.dbg.value(metadata ptr %356, metadata !1896, metadata !DIExpression()) #8, !dbg !4204
  %362 = load ptr, ptr %356, align 8, !dbg !4206
  %xcv_flags.i3811 = getelementptr inbounds %struct.xpvcv, ptr %362, i64 0, i32 12, !dbg !4206
  %363 = load i32, ptr %xcv_flags.i3811, align 4, !dbg !4206
  %and.i3812 = and i32 %363, 32768, !dbg !4206
  %tobool.not.i3813 = icmp eq i32 %and.i3812, 0, !dbg !4206
  br i1 %tobool.not.i3813, label %cond.false.i3817, label %cond.true.i3815, !dbg !4206

cond.true.i3815:                                  ; preds = %cond.true2040
  %call.i3814 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %356) #8, !dbg !4207
  %.pre4039 = load ptr, ptr %356, align 8, !dbg !4208
  %xcv_flags.i3820.phi.trans.insert = getelementptr inbounds %struct.xpvcv, ptr %.pre4039, i64 0, i32 12
  %.pre4040 = load i32, ptr %xcv_flags.i3820.phi.trans.insert, align 4, !dbg !4208
  br label %S_CvGV.exit3819, !dbg !4206

cond.false.i3817:                                 ; preds = %cond.true2040
  %xcv_gv_u.i3816 = getelementptr inbounds %struct.xpvcv, ptr %362, i64 0, i32 7, !dbg !4210
  %364 = load ptr, ptr %xcv_gv_u.i3816, align 8, !dbg !4211
  br label %S_CvGV.exit3819, !dbg !4206

S_CvGV.exit3819:                                  ; preds = %cond.true.i3815, %cond.false.i3817
  %365 = phi i32 [ %.pre4040, %cond.true.i3815 ], [ %363, %cond.false.i3817 ], !dbg !4208
  %366 = phi ptr [ %.pre4039, %cond.true.i3815 ], [ %362, %cond.false.i3817 ], !dbg !4208
  %cond.i3818 = phi ptr [ %call.i3814, %cond.true.i3815 ], [ %364, %cond.false.i3817 ], !dbg !4206
  %367 = load ptr, ptr %cond.i3818, align 8, !dbg !4203
  %xiv_u2044 = getelementptr inbounds %struct.xpvgv, ptr %367, i64 0, i32 4, !dbg !4203
  %368 = load ptr, ptr %xiv_u2044, align 8, !dbg !4203
  %hek_key2045 = getelementptr inbounds %struct.hek, ptr %368, i64 0, i32 2, !dbg !4203
  call void @llvm.dbg.value(metadata ptr %356, metadata !1896, metadata !DIExpression()) #8, !dbg !4212
  %and.i3821 = and i32 %365, 32768, !dbg !4208
  %tobool.not.i3822 = icmp eq i32 %and.i3821, 0, !dbg !4208
  br i1 %tobool.not.i3822, label %cond.false.i3826, label %cond.true.i3824, !dbg !4208

cond.true.i3824:                                  ; preds = %S_CvGV.exit3819
  %call.i3823 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %356) #8, !dbg !4213
  %.pre4041 = load ptr, ptr %356, align 8, !dbg !4214
  %xcv_flags.i3829.phi.trans.insert = getelementptr inbounds %struct.xpvcv, ptr %.pre4041, i64 0, i32 12
  %.pre4042 = load i32, ptr %xcv_flags.i3829.phi.trans.insert, align 4, !dbg !4214
  br label %S_CvGV.exit3828, !dbg !4208

cond.false.i3826:                                 ; preds = %S_CvGV.exit3819
  %xcv_gv_u.i3825 = getelementptr inbounds %struct.xpvcv, ptr %366, i64 0, i32 7, !dbg !4216
  %369 = load ptr, ptr %xcv_gv_u.i3825, align 8, !dbg !4217
  br label %S_CvGV.exit3828, !dbg !4208

S_CvGV.exit3828:                                  ; preds = %cond.true.i3824, %cond.false.i3826
  %370 = phi i32 [ %.pre4042, %cond.true.i3824 ], [ %365, %cond.false.i3826 ], !dbg !4214
  %371 = phi ptr [ %.pre4041, %cond.true.i3824 ], [ %366, %cond.false.i3826 ], !dbg !4214
  %cond.i3827 = phi ptr [ %call.i3823, %cond.true.i3824 ], [ %369, %cond.false.i3826 ], !dbg !4208
  %372 = load ptr, ptr %cond.i3827, align 8, !dbg !4203
  %xiv_u2049 = getelementptr inbounds %struct.xpvgv, ptr %372, i64 0, i32 4, !dbg !4203
  %373 = load ptr, ptr %xiv_u2049, align 8, !dbg !4203
  %hek_len2050 = getelementptr inbounds %struct.hek, ptr %373, i64 0, i32 1, !dbg !4203
  %374 = load i32, ptr %hek_len2050, align 4, !dbg !4203
  %conv2051 = sext i32 %374 to i64, !dbg !4203
  call void @llvm.dbg.value(metadata ptr %356, metadata !1896, metadata !DIExpression()) #8, !dbg !4218
  %and.i3830 = and i32 %370, 32768, !dbg !4214
  %tobool.not.i3831 = icmp eq i32 %and.i3830, 0, !dbg !4214
  br i1 %tobool.not.i3831, label %cond.false.i3835, label %cond.true.i3833, !dbg !4214

cond.true.i3833:                                  ; preds = %S_CvGV.exit3828
  %call.i3832 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %356) #8, !dbg !4219
  %.pre4043 = load ptr, ptr %356, align 8, !dbg !4220
  %xcv_flags.i3838.phi.trans.insert = getelementptr inbounds %struct.xpvcv, ptr %.pre4043, i64 0, i32 12
  %.pre4044 = load i32, ptr %xcv_flags.i3838.phi.trans.insert, align 4, !dbg !4220
  br label %S_CvGV.exit3837, !dbg !4214

cond.false.i3835:                                 ; preds = %S_CvGV.exit3828
  %xcv_gv_u.i3834 = getelementptr inbounds %struct.xpvcv, ptr %371, i64 0, i32 7, !dbg !4222
  %375 = load ptr, ptr %xcv_gv_u.i3834, align 8, !dbg !4223
  br label %S_CvGV.exit3837, !dbg !4214

S_CvGV.exit3837:                                  ; preds = %cond.true.i3833, %cond.false.i3835
  %376 = phi i32 [ %.pre4044, %cond.true.i3833 ], [ %370, %cond.false.i3835 ], !dbg !4220
  %377 = phi ptr [ %.pre4043, %cond.true.i3833 ], [ %371, %cond.false.i3835 ], !dbg !4220
  %cond.i3836 = phi ptr [ %call.i3832, %cond.true.i3833 ], [ %375, %cond.false.i3835 ], !dbg !4214
  %378 = load ptr, ptr %cond.i3836, align 8, !dbg !4203
  %xiv_u2054 = getelementptr inbounds %struct.xpvgv, ptr %378, i64 0, i32 4, !dbg !4203
  %379 = load ptr, ptr %xiv_u2054, align 8, !dbg !4203
  %hek_len2055 = getelementptr inbounds %struct.hek, ptr %379, i64 0, i32 1, !dbg !4203
  %380 = load i32, ptr %hek_len2055, align 4, !dbg !4203
  %mul2056 = mul nsw i32 %380, 17, !dbg !4203
  %add2057 = add nsw i32 %mul2056, 1, !dbg !4203
  %conv2058 = sext i32 %add2057 to i64, !dbg !4203
  call void @llvm.dbg.value(metadata ptr %356, metadata !1896, metadata !DIExpression()) #8, !dbg !4224
  %and.i3839 = and i32 %376, 32768, !dbg !4220
  %tobool.not.i3840 = icmp eq i32 %and.i3839, 0, !dbg !4220
  br i1 %tobool.not.i3840, label %cond.false.i3844, label %cond.true.i3842, !dbg !4220

cond.true.i3842:                                  ; preds = %S_CvGV.exit3837
  %call.i3841 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %356) #8, !dbg !4225
  %.pre4045 = load ptr, ptr %356, align 8, !dbg !4226
  %xcv_flags.i3847.phi.trans.insert = getelementptr inbounds %struct.xpvcv, ptr %.pre4045, i64 0, i32 12
  %.pre4046 = load i32, ptr %xcv_flags.i3847.phi.trans.insert, align 4, !dbg !4226
  br label %S_CvGV.exit3846, !dbg !4220

cond.false.i3844:                                 ; preds = %S_CvGV.exit3837
  %xcv_gv_u.i3843 = getelementptr inbounds %struct.xpvcv, ptr %377, i64 0, i32 7, !dbg !4228
  %381 = load ptr, ptr %xcv_gv_u.i3843, align 8, !dbg !4229
  br label %S_CvGV.exit3846, !dbg !4220

S_CvGV.exit3846:                                  ; preds = %cond.true.i3842, %cond.false.i3844
  %382 = phi i32 [ %.pre4046, %cond.true.i3842 ], [ %376, %cond.false.i3844 ], !dbg !4226
  %383 = phi ptr [ %.pre4045, %cond.true.i3842 ], [ %377, %cond.false.i3844 ], !dbg !4226
  %cond.i3845 = phi ptr [ %call.i3841, %cond.true.i3842 ], [ %381, %cond.false.i3844 ], !dbg !4220
  %384 = load ptr, ptr %cond.i3845, align 8, !dbg !4203
  %xiv_u2061 = getelementptr inbounds %struct.xpvgv, ptr %384, i64 0, i32 4, !dbg !4203
  %385 = load ptr, ptr %xiv_u2061, align 8, !dbg !4203
  %hek_key2062 = getelementptr inbounds %struct.hek, ptr %385, i64 0, i32 2, !dbg !4203
  call void @llvm.dbg.value(metadata ptr %356, metadata !1896, metadata !DIExpression()) #8, !dbg !4230
  %and.i3848 = and i32 %382, 32768, !dbg !4226
  %tobool.not.i3849 = icmp eq i32 %and.i3848, 0, !dbg !4226
  br i1 %tobool.not.i3849, label %cond.false.i3853, label %cond.true.i3851, !dbg !4226

cond.true.i3851:                                  ; preds = %S_CvGV.exit3846
  %call.i3850 = call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %356) #8, !dbg !4231
  br label %S_CvGV.exit3855, !dbg !4226

cond.false.i3853:                                 ; preds = %S_CvGV.exit3846
  %xcv_gv_u.i3852 = getelementptr inbounds %struct.xpvcv, ptr %383, i64 0, i32 7, !dbg !4232
  %386 = load ptr, ptr %xcv_gv_u.i3852, align 8, !dbg !4233
  br label %S_CvGV.exit3855, !dbg !4226

S_CvGV.exit3855:                                  ; preds = %cond.true.i3851, %cond.false.i3853
  %cond.i3854 = phi ptr [ %call.i3850, %cond.true.i3851 ], [ %386, %cond.false.i3853 ], !dbg !4226
  %387 = load ptr, ptr %cond.i3854, align 8, !dbg !4203
  %xiv_u2066 = getelementptr inbounds %struct.xpvgv, ptr %387, i64 0, i32 4, !dbg !4203
  %388 = load ptr, ptr %xiv_u2066, align 8, !dbg !4203
  %hek_len2067 = getelementptr inbounds %struct.hek, ptr %388, i64 0, i32 1, !dbg !4203
  %389 = load i32, ptr %hek_len2067, align 4, !dbg !4203
  %idx.ext2068 = sext i32 %389 to i64, !dbg !4203
  %add.ptr2069 = getelementptr inbounds i8, ptr %hek_key2062, i64 %idx.ext2068, !dbg !4203
  %add.ptr2070 = getelementptr inbounds i8, ptr %add.ptr2069, i64 1, !dbg !4203
  %390 = load i8, ptr %add.ptr2070, align 1, !dbg !4203
  %391 = and i8 %390, 1, !dbg !4203
  %392 = zext i8 %391 to i32, !dbg !4203
  %393 = shl nuw nsw i32 %392, 8, !dbg !4203
  %or2075 = or i32 %393, 66560, !dbg !4203
  %call2076 = call ptr @Perl_pv_escape(ptr noundef %call2041, ptr noundef nonnull %hek_key2045, i64 noundef %conv2051, i64 noundef %conv2058, ptr noundef null, i32 noundef %or2075), !dbg !4203
  br label %cond.end2086, !dbg !4202

cond.end2086:                                     ; preds = %cond.false2021, %cond.false2031, %S_CvGV.exit3810, %S_CvGV.exit3855, %cond.false2027, %if.end2017
  %cond2087 = phi ptr [ @.str.312, %if.end2017 ], [ @.str.313, %cond.false2021 ], [ @.str.314, %cond.false2027 ], [ @.str.315, %cond.false2031 ], [ %call2076, %S_CvGV.exit3855 ], [ @.str.316, %S_CvGV.exit3810 ], !dbg !4190
  call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.311, i64 noundef %357, ptr noundef %cond2087), !dbg !4234
  %394 = load ptr, ptr %sv, align 8, !dbg !4235
  %xcv_outside2089 = getelementptr inbounds %struct.xpvcv, ptr %394, i64 0, i32 10, !dbg !4235
  %395 = load ptr, ptr %xcv_outside2089, align 8, !dbg !4235
  %tobool2090.not = icmp ne ptr %395, null, !dbg !4235
  %cmp2092 = icmp sgt i32 %maxnest, %nest
  %or.cond3699 = and i1 %cmp2092, %tobool2090.not, !dbg !4237
  br i1 %or.cond3699, label %land.lhs.true2094, label %sw.epilog2515, !dbg !4237

land.lhs.true2094:                                ; preds = %cond.end2086
  %xcv_flags2096 = getelementptr inbounds %struct.xpvcv, ptr %394, i64 0, i32 12, !dbg !4238
  %396 = load i32, ptr %xcv_flags2096, align 4, !dbg !4238
  %397 = and i32 %396, 96, !dbg !4239
  %398 = icmp eq i32 %397, 0, !dbg !4239
  br i1 %398, label %sw.epilog2515, label %if.then2104, !dbg !4239

if.then2104:                                      ; preds = %land.lhs.true2094
  %add2105 = add nsw i32 %level, 1, !dbg !4240
  %add2108 = add nsw i32 %nest, 1, !dbg !4240
  call void @Perl_do_sv_dump(i32 noundef %add2105, ptr noundef %file, ptr noundef nonnull %395, i32 noundef %add2108, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4240
  br label %sw.epilog2515, !dbg !4240

sw.bb2111:                                        ; preds = %if.end454, %if.end473, %if.end473
  %cmp2112 = icmp eq i32 %and, 10, !dbg !4241
  br i1 %cmp2112, label %if.then2114, label %if.end2135, !dbg !4243

if.then2114:                                      ; preds = %sw.bb2111
  %399 = load ptr, ptr %sv, align 8, !dbg !4244
  %xlv_type = getelementptr inbounds %struct.xpvlv, ptr %399, i64 0, i32 9, !dbg !4244
  %400 = load i8, ptr %xlv_type, align 8, !dbg !4244
  %conv2116 = sext i8 %400 to i32, !dbg !4244
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.317, i32 noundef %conv2116), !dbg !4246
  %401 = load ptr, ptr %sv, align 8, !dbg !4247
  %xlv_targoff_u = getelementptr inbounds %struct.xpvlv, ptr %401, i64 0, i32 6, !dbg !4247
  %402 = load i64, ptr %xlv_targoff_u, align 8, !dbg !4247
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.318, i64 noundef %402), !dbg !4248
  %403 = load ptr, ptr %sv, align 8, !dbg !4249
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, ptr %403, i64 0, i32 7, !dbg !4249
  %404 = load i64, ptr %xlv_targlen, align 8, !dbg !4249
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.319, i64 noundef %404), !dbg !4250
  %405 = load ptr, ptr %sv, align 8, !dbg !4251
  %xlv_targ = getelementptr inbounds %struct.xpvlv, ptr %405, i64 0, i32 8, !dbg !4251
  %406 = load ptr, ptr %xlv_targ, align 8, !dbg !4251
  %407 = ptrtoint ptr %406 to i64, !dbg !4251
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.320, i64 noundef %407), !dbg !4252
  %408 = load ptr, ptr %sv, align 8, !dbg !4253
  %xlv_flags = getelementptr inbounds %struct.xpvlv, ptr %408, i64 0, i32 10, !dbg !4253
  %409 = load i8, ptr %xlv_flags, align 1, !dbg !4253
  %conv2121 = sext i8 %409 to i64, !dbg !4254
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.321, i64 noundef %conv2121), !dbg !4255
  %410 = load ptr, ptr %sv, align 8, !dbg !4256
  %xlv_type2123 = getelementptr inbounds %struct.xpvlv, ptr %410, i64 0, i32 9, !dbg !4256
  %411 = load i8, ptr %xlv_type2123, align 8, !dbg !4256
  %412 = and i8 %411, -33, !dbg !4256
  %cmp2126 = icmp eq i8 %412, 84, !dbg !4256
  br i1 %cmp2126, label %if.end2135, label %if.then2128, !dbg !4258

if.then2128:                                      ; preds = %if.then2114
  %add2129 = add nsw i32 %level, 1, !dbg !4259
  %xlv_targ2131 = getelementptr inbounds %struct.xpvlv, ptr %410, i64 0, i32 8, !dbg !4259
  %413 = load ptr, ptr %xlv_targ2131, align 8, !dbg !4259
  %add2132 = add nsw i32 %nest, 1, !dbg !4259
  tail call void @Perl_do_sv_dump(i32 noundef %add2129, ptr noundef %file, ptr noundef %413, i32 noundef %add2132, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4259
  br label %if.end2135, !dbg !4259

if.end2135:                                       ; preds = %if.then2114, %if.then2128, %sw.bb2111
  %414 = load i32, ptr %sv_flags, align 4, !dbg !4260
  %and2137 = and i32 %414, 255, !dbg !4260
  %cmp2138 = icmp eq i32 %and2137, 8, !dbg !4260
  %and2142 = and i32 %414, 16826623, !dbg !4260
  %cmp2143 = icmp eq i32 %and2142, 16777226, !dbg !4260
  %or.cond3701 = or i1 %cmp2138, %cmp2143, !dbg !4260
  br i1 %or.cond3701, label %dumpregexp, label %if.end2146, !dbg !4260

if.end2146:                                       ; preds = %if.end2135
  %and2148 = and i32 %414, 49152, !dbg !4262
  %cmp2149 = icmp eq i32 %and2148, 32768, !dbg !4262
  %and2137.off = add nsw i32 %and2137, -9, !dbg !4262
  %switch3709 = icmp ult i32 %and2137.off, 2, !dbg !4262
  %or.cond3710 = select i1 %cmp2149, i1 %switch3709, i1 false, !dbg !4262
  br i1 %or.cond3710, label %if.end2162, label %sw.epilog2515, !dbg !4262

if.end2162:                                       ; preds = %if.end2146
  %call2164 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !4264
  call void @llvm.dbg.value(metadata ptr %call2164, metadata !3345, metadata !DIExpression()), !dbg !4265
  %415 = load ptr, ptr %sv, align 8, !dbg !4266
  %xiv_u2166 = getelementptr inbounds %struct.xpvgv, ptr %415, i64 0, i32 4, !dbg !4266
  %416 = load ptr, ptr %xiv_u2166, align 8, !dbg !4266
  %hek_key2167 = getelementptr inbounds %struct.hek, ptr %416, i64 0, i32 2, !dbg !4266
  %hek_len2171 = getelementptr inbounds %struct.hek, ptr %416, i64 0, i32 1, !dbg !4266
  %417 = load i32, ptr %hek_len2171, align 4, !dbg !4266
  %conv2172 = sext i32 %417 to i64, !dbg !4266
  %mul2176 = mul nsw i32 %417, 17, !dbg !4266
  %add2177 = add nsw i32 %mul2176, 1, !dbg !4266
  %conv2178 = sext i32 %add2177 to i64, !dbg !4266
  %add.ptr2187 = getelementptr inbounds i8, ptr %hek_key2167, i64 %conv2172, !dbg !4266
  %add.ptr2188 = getelementptr inbounds i8, ptr %add.ptr2187, i64 1, !dbg !4266
  %418 = load i8, ptr %add.ptr2188, align 1, !dbg !4266
  %419 = and i8 %418, 1, !dbg !4266
  %420 = zext i8 %419 to i32, !dbg !4266
  %421 = shl nuw nsw i32 %420, 8, !dbg !4266
  %or2193 = or i32 %421, 66560, !dbg !4266
  %call2194 = tail call ptr @Perl_pv_escape(ptr noundef %call2164, ptr noundef nonnull %hek_key2167, i64 noundef %conv2172, i64 noundef %conv2178, ptr noundef null, i32 noundef %or2193), !dbg !4266
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.278, ptr noundef %call2194), !dbg !4267
  %422 = load ptr, ptr %sv, align 8, !dbg !4268
  %xiv_u2196 = getelementptr inbounds %struct.xpvgv, ptr %422, i64 0, i32 4, !dbg !4268
  %423 = load ptr, ptr %xiv_u2196, align 8, !dbg !4268
  %hek_len2197 = getelementptr inbounds %struct.hek, ptr %423, i64 0, i32 1, !dbg !4268
  %424 = load i32, ptr %hek_len2197, align 4, !dbg !4268
  %conv2198 = sext i32 %424 to i64, !dbg !4269
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.322, i64 noundef %conv2198), !dbg !4270
  %425 = load ptr, ptr %sv, align 8, !dbg !4271
  %xnv_u2200 = getelementptr inbounds %struct.xpvgv, ptr %425, i64 0, i32 5, !dbg !4271
  %426 = load ptr, ptr %xnv_u2200, align 8, !dbg !4271
  tail call void @Perl_do_hv_dump(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.323, ptr noundef %426), !dbg !4271
  %427 = load ptr, ptr %sv, align 8, !dbg !4272
  %xpv_cur2202 = getelementptr inbounds %struct.xpvgv, ptr %427, i64 0, i32 2, !dbg !4272
  %428 = load i64, ptr %xpv_cur2202, align 8, !dbg !4272
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.307, i64 noundef %428), !dbg !4273
  %sv_u2203 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !4274
  %429 = load ptr, ptr %sv_u2203, align 8, !dbg !4274
  %430 = ptrtoint ptr %429 to i64, !dbg !4274
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.324, i64 noundef %430), !dbg !4275
  %431 = load ptr, ptr %sv_u2203, align 8, !dbg !4276
  %tobool2207.not = icmp eq ptr %431, null, !dbg !4276
  br i1 %tobool2207.not, label %sw.epilog2515, label %if.end2209, !dbg !4278

if.end2209:                                       ; preds = %if.end2162
  %432 = load ptr, ptr %431, align 8, !dbg !4279
  %433 = ptrtoint ptr %432 to i64, !dbg !4279
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.325, i64 noundef %433), !dbg !4280
  %434 = load ptr, ptr %sv_u2203, align 8, !dbg !4281
  %gp_refcnt = getelementptr inbounds %struct.gp, ptr %434, i64 0, i32 4, !dbg !4281
  %435 = load i32, ptr %gp_refcnt, align 4, !dbg !4281
  %conv2214 = zext i32 %435 to i64, !dbg !4282
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.125, i64 noundef %conv2214), !dbg !4283
  %436 = load ptr, ptr %sv_u2203, align 8, !dbg !4284
  %gp_io = getelementptr inbounds %struct.gp, ptr %436, i64 0, i32 1, !dbg !4284
  %437 = load ptr, ptr %gp_io, align 8, !dbg !4284
  %438 = ptrtoint ptr %437 to i64, !dbg !4284
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.326, i64 noundef %438), !dbg !4285
  %439 = load ptr, ptr %sv_u2203, align 8, !dbg !4286
  %gp_form = getelementptr inbounds %struct.gp, ptr %439, i64 0, i32 7, !dbg !4286
  %440 = load ptr, ptr %gp_form, align 8, !dbg !4286
  %441 = ptrtoint ptr %440 to i64, !dbg !4286
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.327, i64 noundef %441), !dbg !4287
  %442 = load ptr, ptr %sv_u2203, align 8, !dbg !4288
  %gp_av = getelementptr inbounds %struct.gp, ptr %442, i64 0, i32 6, !dbg !4288
  %443 = load ptr, ptr %gp_av, align 8, !dbg !4288
  %444 = ptrtoint ptr %443 to i64, !dbg !4288
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.328, i64 noundef %444), !dbg !4289
  %445 = load ptr, ptr %sv_u2203, align 8, !dbg !4290
  %gp_hv = getelementptr inbounds %struct.gp, ptr %445, i64 0, i32 5, !dbg !4290
  %446 = load ptr, ptr %gp_hv, align 8, !dbg !4290
  %447 = ptrtoint ptr %446 to i64, !dbg !4290
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.329, i64 noundef %447), !dbg !4291
  %448 = load ptr, ptr %sv_u2203, align 8, !dbg !4292
  %gp_cv = getelementptr inbounds %struct.gp, ptr %448, i64 0, i32 2, !dbg !4292
  %449 = load ptr, ptr %gp_cv, align 8, !dbg !4292
  %450 = ptrtoint ptr %449 to i64, !dbg !4292
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.330, i64 noundef %450), !dbg !4293
  %451 = load ptr, ptr %sv_u2203, align 8, !dbg !4294
  %gp_cvgen = getelementptr inbounds %struct.gp, ptr %451, i64 0, i32 3, !dbg !4294
  %452 = load i32, ptr %gp_cvgen, align 8, !dbg !4294
  %conv2228 = zext i32 %452 to i64, !dbg !4295
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.331, i64 noundef %conv2228), !dbg !4296
  %453 = load ptr, ptr %sv_u2203, align 8, !dbg !4297
  %gp_flags = getelementptr inbounds %struct.gp, ptr %453, i64 0, i32 9, !dbg !4297
  %bf.load = load i32, ptr %gp_flags, align 8, !dbg !4297
  %bf.lshr = lshr i32 %bf.load, 31, !dbg !4297
  %conv2231 = zext i32 %bf.lshr to i64, !dbg !4298
  %tobool2238.not = icmp sgt i32 %bf.load, -1, !dbg !4299
  %cond2239 = select i1 %tobool2238.not, ptr @.str, ptr @.str.333, !dbg !4299
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.332, i64 noundef %conv2231, ptr noundef nonnull %cond2239), !dbg !4300
  %454 = load ptr, ptr %sv_u2203, align 8, !dbg !4301
  %gp_line = getelementptr inbounds %struct.gp, ptr %454, i64 0, i32 9, !dbg !4301
  %bf.load2242 = load i32, ptr %gp_line, align 8, !dbg !4301
  %bf.clear = and i32 %bf.load2242, 2147483647, !dbg !4301
  %conv2243 = zext i32 %bf.clear to i64, !dbg !4302
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.334, i64 noundef %conv2243), !dbg !4303
  %455 = load ptr, ptr %sv_u2203, align 8, !dbg !4304
  %gp_file_hek = getelementptr inbounds %struct.gp, ptr %455, i64 0, i32 10, !dbg !4304
  %456 = load ptr, ptr %gp_file_hek, align 8, !dbg !4304
  %tobool2246.not = icmp eq ptr %456, null, !dbg !4304
  %hek_key2251 = getelementptr inbounds %struct.hek, ptr %456, i64 0, i32 2
  %spec.select3702 = select i1 %tobool2246.not, ptr null, ptr %hek_key2251, !dbg !4304
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.335, ptr noundef %spec.select3702), !dbg !4305
  %457 = load ptr, ptr %sv_u2203, align 8, !dbg !4306
  %gp_egv = getelementptr inbounds %struct.gp, ptr %457, i64 0, i32 8, !dbg !4306
  %458 = load ptr, ptr %gp_egv, align 8, !dbg !4306
  tail call void @Perl_do_gv_dump(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.336, ptr noundef %458), !dbg !4306
  br label %sw.epilog2515, !dbg !4307

sw.bb2258:                                        ; preds = %if.end454, %if.end473
  %sv_u2259 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !4308
  %459 = load ptr, ptr %sv_u2259, align 8, !dbg !4308
  %460 = ptrtoint ptr %459 to i64, !dbg !4308
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.337, i64 noundef %460), !dbg !4309
  %461 = load ptr, ptr %sv, align 8, !dbg !4310
  %xio_ofp = getelementptr inbounds %struct.xpvio, ptr %461, i64 0, i32 5, !dbg !4310
  %462 = load ptr, ptr %xio_ofp, align 8, !dbg !4310
  %463 = ptrtoint ptr %462 to i64, !dbg !4310
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.338, i64 noundef %463), !dbg !4311
  %464 = load ptr, ptr %sv, align 8, !dbg !4312
  %xio_dirpu = getelementptr inbounds %struct.xpvio, ptr %464, i64 0, i32 6, !dbg !4312
  %465 = load ptr, ptr %xio_dirpu, align 8, !dbg !4312
  %466 = ptrtoint ptr %465 to i64, !dbg !4312
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.339, i64 noundef %466), !dbg !4313
  %467 = load ptr, ptr %sv, align 8, !dbg !4314
  %xiv_u2263 = getelementptr inbounds %struct.xpvio, ptr %467, i64 0, i32 4, !dbg !4314
  %468 = load i64, ptr %xiv_u2263, align 8, !dbg !4314
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.340, i64 noundef %468), !dbg !4315
  %469 = load ptr, ptr %sv, align 8, !dbg !4316
  %xio_page = getelementptr inbounds %struct.xpvio, ptr %469, i64 0, i32 7, !dbg !4316
  %470 = load i64, ptr %xio_page, align 8, !dbg !4316
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.341, i64 noundef %470), !dbg !4317
  %471 = load ptr, ptr %sv, align 8, !dbg !4318
  %xio_page_len = getelementptr inbounds %struct.xpvio, ptr %471, i64 0, i32 8, !dbg !4318
  %472 = load i64, ptr %xio_page_len, align 8, !dbg !4318
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.342, i64 noundef %472), !dbg !4319
  %473 = load ptr, ptr %sv, align 8, !dbg !4320
  %xio_lines_left = getelementptr inbounds %struct.xpvio, ptr %473, i64 0, i32 9, !dbg !4320
  %474 = load i64, ptr %xio_lines_left, align 8, !dbg !4320
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.343, i64 noundef %474), !dbg !4321
  %475 = load ptr, ptr %sv, align 8, !dbg !4322
  %xio_top_name = getelementptr inbounds %struct.xpvio, ptr %475, i64 0, i32 10, !dbg !4322
  %476 = load ptr, ptr %xio_top_name, align 8, !dbg !4322
  %tobool2268.not = icmp eq ptr %476, null, !dbg !4322
  br i1 %tobool2268.not, label %if.end2272, label %if.then2269, !dbg !4324

if.then2269:                                      ; preds = %sw.bb2258
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.344, ptr noundef nonnull %476), !dbg !4325
  %.pre4032 = load ptr, ptr %sv, align 8, !dbg !4326
  br label %if.end2272, !dbg !4325

if.end2272:                                       ; preds = %if.then2269, %sw.bb2258
  %477 = phi ptr [ %.pre4032, %if.then2269 ], [ %475, %sw.bb2258 ], !dbg !4326
  %xio_top_gv = getelementptr inbounds %struct.xpvio, ptr %477, i64 0, i32 11, !dbg !4326
  %478 = load ptr, ptr %xio_top_gv, align 8, !dbg !4326
  %tobool2274.not = icmp eq ptr %478, null, !dbg !4326
  br i1 %tobool2274.not, label %if.then2282, label %lor.lhs.false2275, !dbg !4328

lor.lhs.false2275:                                ; preds = %if.end2272
  %sv_flags2278 = getelementptr inbounds %struct.gv, ptr %478, i64 0, i32 2, !dbg !4329
  %479 = load i32, ptr %sv_flags2278, align 4, !dbg !4329
  %and2279 = and i32 %479, 255, !dbg !4329
  %cmp2280 = icmp eq i32 %and2279, 9, !dbg !4330
  br i1 %cmp2280, label %if.then2282, label %if.else2285, !dbg !4331

if.then2282:                                      ; preds = %lor.lhs.false2275, %if.end2272
  tail call void @Perl_do_gv_dump(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.345, ptr noundef %478), !dbg !4332
  br label %if.end2293, !dbg !4332

if.else2285:                                      ; preds = %lor.lhs.false2275
  %480 = ptrtoint ptr %478 to i64, !dbg !4333
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.346, i64 noundef %480), !dbg !4335
  %add2288 = add nsw i32 %level, 1, !dbg !4336
  %481 = load ptr, ptr %sv, align 8, !dbg !4336
  %xio_top_gv2290 = getelementptr inbounds %struct.xpvio, ptr %481, i64 0, i32 11, !dbg !4336
  %482 = load ptr, ptr %xio_top_gv2290, align 8, !dbg !4336
  %add2291 = add nsw i32 %nest, 1, !dbg !4336
  tail call void @Perl_do_sv_dump(i32 noundef %add2288, ptr noundef %file, ptr noundef %482, i32 noundef %add2291, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4336
  br label %if.end2293

if.end2293:                                       ; preds = %if.else2285, %if.then2282
  %483 = load ptr, ptr %sv, align 8, !dbg !4337
  %xio_fmt_name = getelementptr inbounds %struct.xpvio, ptr %483, i64 0, i32 12, !dbg !4337
  %484 = load ptr, ptr %xio_fmt_name, align 8, !dbg !4337
  %tobool2295.not = icmp eq ptr %484, null, !dbg !4337
  br i1 %tobool2295.not, label %if.end2299, label %if.then2296, !dbg !4339

if.then2296:                                      ; preds = %if.end2293
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.347, ptr noundef nonnull %484), !dbg !4340
  %.pre4033 = load ptr, ptr %sv, align 8, !dbg !4341
  br label %if.end2299, !dbg !4340

if.end2299:                                       ; preds = %if.then2296, %if.end2293
  %485 = phi ptr [ %.pre4033, %if.then2296 ], [ %483, %if.end2293 ], !dbg !4341
  %xio_fmt_gv = getelementptr inbounds %struct.xpvio, ptr %485, i64 0, i32 13, !dbg !4341
  %486 = load ptr, ptr %xio_fmt_gv, align 8, !dbg !4341
  %tobool2301.not = icmp eq ptr %486, null, !dbg !4341
  br i1 %tobool2301.not, label %if.then2309, label %lor.lhs.false2302, !dbg !4343

lor.lhs.false2302:                                ; preds = %if.end2299
  %sv_flags2305 = getelementptr inbounds %struct.gv, ptr %486, i64 0, i32 2, !dbg !4344
  %487 = load i32, ptr %sv_flags2305, align 4, !dbg !4344
  %and2306 = and i32 %487, 255, !dbg !4344
  %cmp2307 = icmp eq i32 %and2306, 9, !dbg !4345
  br i1 %cmp2307, label %if.then2309, label %if.else2312, !dbg !4346

if.then2309:                                      ; preds = %lor.lhs.false2302, %if.end2299
  tail call void @Perl_do_gv_dump(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.348, ptr noundef %486), !dbg !4347
  br label %if.end2320, !dbg !4347

if.else2312:                                      ; preds = %lor.lhs.false2302
  %488 = ptrtoint ptr %486 to i64, !dbg !4348
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.349, i64 noundef %488), !dbg !4350
  %add2315 = add nsw i32 %level, 1, !dbg !4351
  %489 = load ptr, ptr %sv, align 8, !dbg !4351
  %xio_fmt_gv2317 = getelementptr inbounds %struct.xpvio, ptr %489, i64 0, i32 13, !dbg !4351
  %490 = load ptr, ptr %xio_fmt_gv2317, align 8, !dbg !4351
  %add2318 = add nsw i32 %nest, 1, !dbg !4351
  tail call void @Perl_do_sv_dump(i32 noundef %add2315, ptr noundef %file, ptr noundef %490, i32 noundef %add2318, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4351
  br label %if.end2320

if.end2320:                                       ; preds = %if.else2312, %if.then2309
  %491 = load ptr, ptr %sv, align 8, !dbg !4352
  %xio_bottom_name = getelementptr inbounds %struct.xpvio, ptr %491, i64 0, i32 14, !dbg !4352
  %492 = load ptr, ptr %xio_bottom_name, align 8, !dbg !4352
  %tobool2322.not = icmp eq ptr %492, null, !dbg !4352
  br i1 %tobool2322.not, label %if.end2326, label %if.then2323, !dbg !4354

if.then2323:                                      ; preds = %if.end2320
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.350, ptr noundef nonnull %492), !dbg !4355
  %.pre4034 = load ptr, ptr %sv, align 8, !dbg !4356
  br label %if.end2326, !dbg !4355

if.end2326:                                       ; preds = %if.then2323, %if.end2320
  %493 = phi ptr [ %.pre4034, %if.then2323 ], [ %491, %if.end2320 ], !dbg !4356
  %xio_bottom_gv = getelementptr inbounds %struct.xpvio, ptr %493, i64 0, i32 15, !dbg !4356
  %494 = load ptr, ptr %xio_bottom_gv, align 8, !dbg !4356
  %tobool2328.not = icmp eq ptr %494, null, !dbg !4356
  br i1 %tobool2328.not, label %if.then2336, label %lor.lhs.false2329, !dbg !4358

lor.lhs.false2329:                                ; preds = %if.end2326
  %sv_flags2332 = getelementptr inbounds %struct.gv, ptr %494, i64 0, i32 2, !dbg !4359
  %495 = load i32, ptr %sv_flags2332, align 4, !dbg !4359
  %and2333 = and i32 %495, 255, !dbg !4359
  %cmp2334 = icmp eq i32 %and2333, 9, !dbg !4360
  br i1 %cmp2334, label %if.then2336, label %if.else2339, !dbg !4361

if.then2336:                                      ; preds = %lor.lhs.false2329, %if.end2326
  tail call void @Perl_do_gv_dump(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.351, ptr noundef %494), !dbg !4362
  br label %if.end2347, !dbg !4362

if.else2339:                                      ; preds = %lor.lhs.false2329
  %496 = ptrtoint ptr %494 to i64, !dbg !4363
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.352, i64 noundef %496), !dbg !4365
  %add2342 = add nsw i32 %level, 1, !dbg !4366
  %497 = load ptr, ptr %sv, align 8, !dbg !4366
  %xio_bottom_gv2344 = getelementptr inbounds %struct.xpvio, ptr %497, i64 0, i32 15, !dbg !4366
  %498 = load ptr, ptr %xio_bottom_gv2344, align 8, !dbg !4366
  %add2345 = add nsw i32 %nest, 1, !dbg !4366
  tail call void @Perl_do_sv_dump(i32 noundef %add2342, ptr noundef %file, ptr noundef %498, i32 noundef %add2345, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4366
  br label %if.end2347

if.end2347:                                       ; preds = %if.else2339, %if.then2336
  %499 = load ptr, ptr %sv, align 8, !dbg !4367
  %xio_type = getelementptr inbounds %struct.xpvio, ptr %499, i64 0, i32 16, !dbg !4367
  %500 = load i8, ptr %xio_type, align 8, !dbg !4367
  %idxprom2349 = zext i8 %500 to i64, !dbg !4367
  %arrayidx2350 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom2349, !dbg !4367
  %501 = load i32, ptr %arrayidx2350, align 4, !dbg !4367
  %and2351 = and i32 %501, 16448, !dbg !4367
  %cmp2352 = icmp eq i32 %and2351, 16448, !dbg !4367
  %conv2357 = sext i8 %500 to i32, !dbg !4369
  %.str.353..str.354 = select i1 %cmp2352, ptr @.str.353, ptr @.str.354
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull %.str.353..str.354, i32 noundef %conv2357), !dbg !4369
  %502 = load ptr, ptr %sv, align 8, !dbg !4370
  %xio_flags2364 = getelementptr inbounds %struct.xpvio, ptr %502, i64 0, i32 17, !dbg !4370
  %503 = load i8, ptr %xio_flags2364, align 1, !dbg !4370
  %conv2365 = zext i8 %503 to i64, !dbg !4371
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.307, i64 noundef %conv2365), !dbg !4372
  br label %sw.epilog2515, !dbg !4373

dumpregexp:                                       ; preds = %if.end454, %if.end473, %if.end2135
  call void @llvm.dbg.label(metadata !3353), !dbg !4374
  %504 = getelementptr i8, ptr %sv, i64 16, !dbg !4375
  %sv.val = load ptr, ptr %504, align 8, !dbg !4375
  call void @llvm.dbg.value(metadata ptr %sv.val, metadata !3347, metadata !DIExpression()), !dbg !4376
  tail call void @Perl_sv_setpv(ptr noundef nonnull %call, ptr noundef nonnull @.str) #8, !dbg !4377
  %compflags = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 24, !dbg !4377
  %bf.load2369 = load i16, ptr %compflags, align 8, !dbg !4377
  %bf.lshr2370 = lshr i16 %bf.load2369, 4, !dbg !4377
  %bf.clear2371 = and i16 %bf.lshr2370, 511, !dbg !4377
  %bf.cast = zext i16 %bf.clear2371 to i32, !dbg !4377
  call void @llvm.dbg.value(metadata ptr %call, metadata !2426, metadata !DIExpression()) #8, !dbg !4379
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2427, metadata !DIExpression()) #8, !dbg !4379
  call void @llvm.dbg.value(metadata ptr @regexp_extflags_names, metadata !2428, metadata !DIExpression()) #8, !dbg !4379
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([23 x %struct.flag_to_name], ptr @regexp_extflags_names, i64 1, i64 0), metadata !2429, metadata !DIExpression()) #8, !dbg !4379
  br label %do.body.i3859, !dbg !4381

do.body.i3859:                                    ; preds = %do.cond.i3864, %dumpregexp
  %start.addr.0.i3856 = phi ptr [ @regexp_extflags_names, %dumpregexp ], [ %incdec.ptr.i3862, %do.cond.i3864 ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i3856, metadata !2428, metadata !DIExpression()) #8, !dbg !4379
  %505 = load i32, ptr %start.addr.0.i3856, align 8, !dbg !4382
  %and.i3857 = and i32 %505, %bf.cast, !dbg !4383
  %tobool.not.i3858 = icmp eq i32 %and.i3857, 0, !dbg !4383
  br i1 %tobool.not.i3858, label %do.cond.i3864, label %if.then.i3861, !dbg !4384

if.then.i3861:                                    ; preds = %do.body.i3859
  %name.i3860 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3856, i64 0, i32 1, !dbg !4385
  %506 = load ptr, ptr %name.i3860, align 8, !dbg !4385
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %506) #8, !dbg !4385
  br label %do.cond.i3864, !dbg !4385

do.cond.i3864:                                    ; preds = %if.then.i3861, %do.body.i3859
  %incdec.ptr.i3862 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3856, i64 1, !dbg !4386
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i3862, metadata !2428, metadata !DIExpression()) #8, !dbg !4379
  %cmp.i3863 = icmp ult ptr %incdec.ptr.i3862, getelementptr inbounds ([23 x %struct.flag_to_name], ptr @regexp_extflags_names, i64 1, i64 0), !dbg !4387
  br i1 %cmp.i3863, label %do.body.i3859, label %S_append_flags.exit3865, !dbg !4388, !llvm.loop !4389

S_append_flags.exit3865:                          ; preds = %do.cond.i3864
  %507 = load ptr, ptr %call, align 8, !dbg !4391
  %xpv_cur2373 = getelementptr inbounds %struct.xpv, ptr %507, i64 0, i32 2, !dbg !4391
  %508 = load i64, ptr %xpv_cur2373, align 8, !dbg !4391
  %cmp2374.not = icmp eq i64 %508, 0, !dbg !4391
  br i1 %cmp2374.not, label %do.end2400, label %land.lhs.true2376, !dbg !4391

land.lhs.true2376:                                ; preds = %S_append_flags.exit3865
  %509 = load ptr, ptr %sv_u, align 8, !dbg !4391
  %add.ptr2380 = getelementptr inbounds i8, ptr %509, i64 %508, !dbg !4391
  %add.ptr2381 = getelementptr inbounds i8, ptr %add.ptr2380, i64 -1, !dbg !4391
  %510 = load i8, ptr %add.ptr2381, align 1, !dbg !4391
  %cmp2383 = icmp eq i8 %510, 44, !dbg !4391
  br i1 %cmp2383, label %do.body2386, label %do.end2400, !dbg !4377

do.body2386:                                      ; preds = %land.lhs.true2376
  %sub2389 = add i64 %508, -1, !dbg !4393
  store i64 %sub2389, ptr %xpv_cur2373, align 8, !dbg !4393
  %511 = load ptr, ptr %sv_u, align 8, !dbg !4396
  %512 = load ptr, ptr %call, align 8, !dbg !4396
  %xpv_cur2396 = getelementptr inbounds %struct.xpv, ptr %512, i64 0, i32 2, !dbg !4396
  %513 = load i64, ptr %xpv_cur2396, align 8, !dbg !4396
  %arrayidx2397 = getelementptr inbounds i8, ptr %511, i64 %513, !dbg !4396
  store i8 0, ptr %arrayidx2397, align 1, !dbg !4396
  br label %do.end2400, !dbg !4396

do.end2400:                                       ; preds = %do.body2386, %land.lhs.true2376, %S_append_flags.exit3865
  %bf.load2402 = load i16, ptr %compflags, align 8, !dbg !4397
  %bf.lshr2403 = lshr i16 %bf.load2402, 4, !dbg !4397
  %bf.clear2404 = and i16 %bf.lshr2403, 511, !dbg !4397
  %conv2406 = zext i16 %bf.clear2404 to i64, !dbg !4398
  %514 = load ptr, ptr %sv_u, align 8, !dbg !4399
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.355, i64 noundef %conv2406, ptr noundef %514), !dbg !4400
  tail call void @Perl_sv_setpv(ptr noundef nonnull %call, ptr noundef nonnull @.str) #8, !dbg !4401
  %extflags = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 7, !dbg !4401
  %515 = load i32, ptr %extflags, align 8, !dbg !4401
  call void @llvm.dbg.value(metadata ptr %call, metadata !2426, metadata !DIExpression()) #8, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %515, metadata !2427, metadata !DIExpression()) #8, !dbg !4403
  call void @llvm.dbg.value(metadata ptr @regexp_extflags_names, metadata !2428, metadata !DIExpression()) #8, !dbg !4403
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([23 x %struct.flag_to_name], ptr @regexp_extflags_names, i64 1, i64 0), metadata !2429, metadata !DIExpression()) #8, !dbg !4403
  br label %do.body.i3869, !dbg !4405

do.body.i3869:                                    ; preds = %do.cond.i3874, %do.end2400
  %start.addr.0.i3866 = phi ptr [ @regexp_extflags_names, %do.end2400 ], [ %incdec.ptr.i3872, %do.cond.i3874 ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i3866, metadata !2428, metadata !DIExpression()) #8, !dbg !4403
  %516 = load i32, ptr %start.addr.0.i3866, align 8, !dbg !4406
  %and.i3867 = and i32 %516, %515, !dbg !4407
  %tobool.not.i3868 = icmp eq i32 %and.i3867, 0, !dbg !4407
  br i1 %tobool.not.i3868, label %do.cond.i3874, label %if.then.i3871, !dbg !4408

if.then.i3871:                                    ; preds = %do.body.i3869
  %name.i3870 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3866, i64 0, i32 1, !dbg !4409
  %517 = load ptr, ptr %name.i3870, align 8, !dbg !4409
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %517) #8, !dbg !4409
  br label %do.cond.i3874, !dbg !4409

do.cond.i3874:                                    ; preds = %if.then.i3871, %do.body.i3869
  %incdec.ptr.i3872 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3866, i64 1, !dbg !4410
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i3872, metadata !2428, metadata !DIExpression()) #8, !dbg !4403
  %cmp.i3873 = icmp ult ptr %incdec.ptr.i3872, getelementptr inbounds ([23 x %struct.flag_to_name], ptr @regexp_extflags_names, i64 1, i64 0), !dbg !4411
  br i1 %cmp.i3873, label %do.body.i3869, label %S_append_flags.exit3875, !dbg !4412, !llvm.loop !4413

S_append_flags.exit3875:                          ; preds = %do.cond.i3874
  %518 = load ptr, ptr %call, align 8, !dbg !4415
  %xpv_cur2411 = getelementptr inbounds %struct.xpv, ptr %518, i64 0, i32 2, !dbg !4415
  %519 = load i64, ptr %xpv_cur2411, align 8, !dbg !4415
  %cmp2412.not = icmp eq i64 %519, 0, !dbg !4415
  br i1 %cmp2412.not, label %do.end2438, label %land.lhs.true2414, !dbg !4415

land.lhs.true2414:                                ; preds = %S_append_flags.exit3875
  %520 = load ptr, ptr %sv_u, align 8, !dbg !4415
  %add.ptr2418 = getelementptr inbounds i8, ptr %520, i64 %519, !dbg !4415
  %add.ptr2419 = getelementptr inbounds i8, ptr %add.ptr2418, i64 -1, !dbg !4415
  %521 = load i8, ptr %add.ptr2419, align 1, !dbg !4415
  %cmp2421 = icmp eq i8 %521, 44, !dbg !4415
  br i1 %cmp2421, label %do.body2424, label %do.end2438, !dbg !4401

do.body2424:                                      ; preds = %land.lhs.true2414
  %sub2427 = add i64 %519, -1, !dbg !4417
  store i64 %sub2427, ptr %xpv_cur2411, align 8, !dbg !4417
  %522 = load ptr, ptr %sv_u, align 8, !dbg !4420
  %523 = load ptr, ptr %call, align 8, !dbg !4420
  %xpv_cur2434 = getelementptr inbounds %struct.xpv, ptr %523, i64 0, i32 2, !dbg !4420
  %524 = load i64, ptr %xpv_cur2434, align 8, !dbg !4420
  %arrayidx2435 = getelementptr inbounds i8, ptr %522, i64 %524, !dbg !4420
  store i8 0, ptr %arrayidx2435, align 1, !dbg !4420
  br label %do.end2438, !dbg !4420

do.end2438:                                       ; preds = %do.body2424, %land.lhs.true2414, %S_append_flags.exit3875
  %525 = load i32, ptr %extflags, align 8, !dbg !4421
  %conv2440 = zext i32 %525 to i64, !dbg !4422
  %526 = load ptr, ptr %sv_u, align 8, !dbg !4423
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.356, i64 noundef %conv2440, ptr noundef %526), !dbg !4424
  %engine = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 4, !dbg !4425
  %527 = load ptr, ptr %engine, align 8, !dbg !4425
  %528 = ptrtoint ptr %527 to i64, !dbg !4425
  %cmp2444 = icmp eq ptr %527, @PL_core_reg_engine, !dbg !4426
  %cond2446 = select i1 %cmp2444, ptr @.str.358, ptr @.str.359, !dbg !4427
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.357, i64 noundef %528, ptr noundef nonnull %cond2446), !dbg !4428
  %529 = load ptr, ptr %engine, align 8, !dbg !4429
  %cmp2448 = icmp eq ptr %529, @PL_core_reg_engine, !dbg !4431
  br i1 %cmp2448, label %do.body2451, label %if.else2485, !dbg !4432

do.body2451:                                      ; preds = %do.end2438
  tail call void @Perl_sv_setpv(ptr noundef nonnull %call, ptr noundef nonnull @.str) #8, !dbg !4433
  %intflags = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 13, !dbg !4433
  %530 = load i32, ptr %intflags, align 4, !dbg !4433
  call void @llvm.dbg.value(metadata ptr %call, metadata !2426, metadata !DIExpression()) #8, !dbg !4436
  call void @llvm.dbg.value(metadata i32 %530, metadata !2427, metadata !DIExpression()) #8, !dbg !4436
  call void @llvm.dbg.value(metadata ptr @regexp_core_intflags_names, metadata !2428, metadata !DIExpression()) #8, !dbg !4436
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([13 x %struct.flag_to_name], ptr @regexp_core_intflags_names, i64 1, i64 0), metadata !2429, metadata !DIExpression()) #8, !dbg !4436
  br label %do.body.i3879, !dbg !4438

do.body.i3879:                                    ; preds = %do.cond.i3884, %do.body2451
  %start.addr.0.i3876 = phi ptr [ @regexp_core_intflags_names, %do.body2451 ], [ %incdec.ptr.i3882, %do.cond.i3884 ]
  call void @llvm.dbg.value(metadata ptr %start.addr.0.i3876, metadata !2428, metadata !DIExpression()) #8, !dbg !4436
  %531 = load i32, ptr %start.addr.0.i3876, align 8, !dbg !4439
  %and.i3877 = and i32 %531, %530, !dbg !4440
  %tobool.not.i3878 = icmp eq i32 %and.i3877, 0, !dbg !4440
  br i1 %tobool.not.i3878, label %do.cond.i3884, label %if.then.i3881, !dbg !4441

if.then.i3881:                                    ; preds = %do.body.i3879
  %name.i3880 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3876, i64 0, i32 1, !dbg !4442
  %532 = load ptr, ptr %name.i3880, align 8, !dbg !4442
  tail call void @Perl_sv_catpv(ptr noundef %call, ptr noundef %532) #8, !dbg !4442
  br label %do.cond.i3884, !dbg !4442

do.cond.i3884:                                    ; preds = %if.then.i3881, %do.body.i3879
  %incdec.ptr.i3882 = getelementptr inbounds %struct.flag_to_name, ptr %start.addr.0.i3876, i64 1, !dbg !4443
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i3882, metadata !2428, metadata !DIExpression()) #8, !dbg !4436
  %cmp.i3883 = icmp ult ptr %incdec.ptr.i3882, getelementptr inbounds ([13 x %struct.flag_to_name], ptr @regexp_core_intflags_names, i64 1, i64 0), !dbg !4444
  br i1 %cmp.i3883, label %do.body.i3879, label %S_append_flags.exit3885, !dbg !4445, !llvm.loop !4446

S_append_flags.exit3885:                          ; preds = %do.cond.i3884
  %533 = load ptr, ptr %call, align 8, !dbg !4448
  %xpv_cur2453 = getelementptr inbounds %struct.xpv, ptr %533, i64 0, i32 2, !dbg !4448
  %534 = load i64, ptr %xpv_cur2453, align 8, !dbg !4448
  %cmp2454.not = icmp eq i64 %534, 0, !dbg !4448
  br i1 %cmp2454.not, label %do.end2480, label %land.lhs.true2456, !dbg !4448

land.lhs.true2456:                                ; preds = %S_append_flags.exit3885
  %535 = load ptr, ptr %sv_u, align 8, !dbg !4448
  %add.ptr2460 = getelementptr inbounds i8, ptr %535, i64 %534, !dbg !4448
  %add.ptr2461 = getelementptr inbounds i8, ptr %add.ptr2460, i64 -1, !dbg !4448
  %536 = load i8, ptr %add.ptr2461, align 1, !dbg !4448
  %cmp2463 = icmp eq i8 %536, 44, !dbg !4448
  br i1 %cmp2463, label %do.body2466, label %do.end2480, !dbg !4433

do.body2466:                                      ; preds = %land.lhs.true2456
  %sub2469 = add i64 %534, -1, !dbg !4450
  store i64 %sub2469, ptr %xpv_cur2453, align 8, !dbg !4450
  %537 = load ptr, ptr %sv_u, align 8, !dbg !4453
  %538 = load ptr, ptr %call, align 8, !dbg !4453
  %xpv_cur2476 = getelementptr inbounds %struct.xpv, ptr %538, i64 0, i32 2, !dbg !4453
  %539 = load i64, ptr %xpv_cur2476, align 8, !dbg !4453
  %arrayidx2477 = getelementptr inbounds i8, ptr %537, i64 %539, !dbg !4453
  store i8 0, ptr %arrayidx2477, align 1, !dbg !4453
  br label %do.end2480, !dbg !4453

do.end2480:                                       ; preds = %do.body2466, %land.lhs.true2456, %S_append_flags.exit3885
  %540 = load i32, ptr %intflags, align 4, !dbg !4454
  %conv2482 = zext i32 %540 to i64, !dbg !4455
  %541 = load ptr, ptr %sv_u, align 8, !dbg !4456
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.360, i64 noundef %conv2482, ptr noundef %541), !dbg !4457
  br label %if.end2488, !dbg !4458

if.else2485:                                      ; preds = %do.end2438
  %intflags2486 = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 13, !dbg !4459
  %542 = load i32, ptr %intflags2486, align 4, !dbg !4459
  %conv2487 = zext i32 %542 to i64, !dbg !4461
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.361, i64 noundef %conv2487), !dbg !4462
  br label %if.end2488

if.end2488:                                       ; preds = %if.else2485, %do.end2480
  %nparens = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 12, !dbg !4463
  %543 = load i32, ptr %nparens, align 8, !dbg !4463
  %conv2489 = zext i32 %543 to i64, !dbg !4464
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.362, i64 noundef %conv2489), !dbg !4465
  %lastparen = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 15, !dbg !4466
  %544 = load i32, ptr %lastparen, align 8, !dbg !4466
  %conv2490 = zext i32 %544 to i64, !dbg !4467
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.363, i64 noundef %conv2490), !dbg !4468
  %lastcloseparen = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 16, !dbg !4469
  %545 = load i32, ptr %lastcloseparen, align 4, !dbg !4469
  %conv2491 = zext i32 %545 to i64, !dbg !4470
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.364, i64 noundef %conv2491), !dbg !4471
  %minlen = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 8, !dbg !4472
  %546 = load i64, ptr %minlen, align 8, !dbg !4472
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.365, i64 noundef %546), !dbg !4473
  %minlenret = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 9, !dbg !4474
  %547 = load i64, ptr %minlenret, align 8, !dbg !4474
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.366, i64 noundef %547), !dbg !4475
  %gofs = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 10, !dbg !4476
  %548 = load i64, ptr %gofs, align 8, !dbg !4476
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.367, i64 noundef %548), !dbg !4477
  %bf.load2492 = load i16, ptr %compflags, align 8, !dbg !4478
  %bf.clear2493 = and i16 %bf.load2492, 15, !dbg !4478
  %conv2495 = zext i16 %bf.clear2493 to i64, !dbg !4479
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.368, i64 noundef %conv2495), !dbg !4480
  %sublen = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 20, !dbg !4481
  %549 = load i64, ptr %sublen, align 8, !dbg !4481
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.369, i64 noundef %549), !dbg !4482
  %suboffset = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 21, !dbg !4483
  %550 = load i64, ptr %suboffset, align 8, !dbg !4483
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.370, i64 noundef %550), !dbg !4484
  %subcoffset = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 22, !dbg !4485
  %551 = load i64, ptr %subcoffset, align 8, !dbg !4485
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.371, i64 noundef %551), !dbg !4486
  %subbeg = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 18, !dbg !4487
  %552 = load ptr, ptr %subbeg, align 8, !dbg !4487
  %tobool2496.not = icmp eq ptr %552, null, !dbg !4489
  br i1 %tobool2496.not, label %if.else2502, label %if.then2497, !dbg !4490

if.then2497:                                      ; preds = %if.end2488
  %553 = ptrtoint ptr %552 to i64, !dbg !4491
  %554 = load i64, ptr %sublen, align 8, !dbg !4492
  %call2501 = tail call ptr @Perl_pv_display(ptr noundef nonnull %call, ptr noundef nonnull %552, i64 noundef %554, i64 noundef 50, i64 noundef %pvlim), !dbg !4492
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.372, i64 noundef %553, ptr noundef %call2501), !dbg !4493
  br label %if.end2503, !dbg !4493

if.else2502:                                      ; preds = %if.end2488
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.373), !dbg !4494
  br label %if.end2503

if.end2503:                                       ; preds = %if.else2502, %if.then2497
  %mother_re = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 5, !dbg !4495
  %555 = load ptr, ptr %mother_re, align 8, !dbg !4495
  %556 = ptrtoint ptr %555 to i64, !dbg !4495
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.374, i64 noundef %556), !dbg !4496
  %cmp2504 = icmp sgt i32 %maxnest, %nest, !dbg !4497
  br i1 %cmp2504, label %land.lhs.true2506, label %if.end2514, !dbg !4499

land.lhs.true2506:                                ; preds = %if.end2503
  %557 = load ptr, ptr %mother_re, align 8, !dbg !4500
  %tobool2508.not = icmp eq ptr %557, null, !dbg !4501
  br i1 %tobool2508.not, label %if.end2514, label %if.then2509, !dbg !4502

if.then2509:                                      ; preds = %land.lhs.true2506
  %add2510 = add nsw i32 %level, 1, !dbg !4503
  %add2512 = add nsw i32 %nest, 1, !dbg !4503
  tail call void @Perl_do_sv_dump(i32 noundef %add2510, ptr noundef %file, ptr noundef nonnull %557, i32 noundef %add2512, i32 noundef %maxnest, i1 noundef zeroext %dumpops, i64 noundef %pvlim), !dbg !4503
  br label %if.end2514, !dbg !4503

if.end2514:                                       ; preds = %if.then2509, %land.lhs.true2506, %if.end2503
  %paren_names = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 6, !dbg !4504
  %558 = load ptr, ptr %paren_names, align 8, !dbg !4504
  %559 = ptrtoint ptr %558 to i64, !dbg !4504
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.375, i64 noundef %559), !dbg !4505
  %substrs = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 11, !dbg !4506
  %560 = load ptr, ptr %substrs, align 8, !dbg !4506
  %561 = ptrtoint ptr %560 to i64, !dbg !4506
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.376, i64 noundef %561), !dbg !4507
  %pprivate = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 14, !dbg !4508
  %562 = load ptr, ptr %pprivate, align 8, !dbg !4508
  %563 = ptrtoint ptr %562 to i64, !dbg !4508
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.377, i64 noundef %563), !dbg !4509
  %offs = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 17, !dbg !4510
  %564 = load ptr, ptr %offs, align 8, !dbg !4510
  %565 = ptrtoint ptr %564 to i64, !dbg !4510
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.378, i64 noundef %565), !dbg !4511
  %qr_anoncv = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 25, !dbg !4512
  %566 = load ptr, ptr %qr_anoncv, align 8, !dbg !4512
  %567 = ptrtoint ptr %566 to i64, !dbg !4512
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.379, i64 noundef %567), !dbg !4513
  %saved_copy = getelementptr inbounds %struct.regexp, ptr %sv.val, i64 0, i32 19, !dbg !4514
  %568 = load ptr, ptr %saved_copy, align 8, !dbg !4514
  %569 = ptrtoint ptr %568 to i64, !dbg !4514
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.380, i64 noundef %569), !dbg !4515
  br label %sw.epilog2515, !dbg !4516

sw.epilog2515:                                    ; preds = %for.inc1800, %S_av_top_index.exit3789, %if.end454, %cleanup.thread, %land.lhs.true2094, %if.end1717, %if.then1720, %if.end2162, %if.end2146, %cond.end2086, %if.then2104, %cond.end518, %S_av_top_index.exit, %if.end473, %if.end2514, %if.end2347, %if.end2209
  call void @llvm.dbg.value(metadata ptr %call, metadata !1952, metadata !DIExpression()) #8, !dbg !4517
  %sv_refcnt.i3886 = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 1, !dbg !4519
  %570 = load i32, ptr %sv_refcnt.i3886, align 8, !dbg !4519
  call void @llvm.dbg.value(metadata i32 %570, metadata !1957, metadata !DIExpression()) #8, !dbg !4517
  %cmp.i3887 = icmp ugt i32 %570, 1, !dbg !4520
  br i1 %cmp.i3887, label %if.then.i3889, label %if.else.i3890, !dbg !4521

if.then.i3889:                                    ; preds = %sw.epilog2515
  %sub.i3888 = add i32 %570, -1, !dbg !4522
  store i32 %sub.i3888, ptr %sv_refcnt.i3886, align 8, !dbg !4523
  br label %cleanup2516, !dbg !4524

if.else.i3890:                                    ; preds = %sw.epilog2515
  call void @Perl_sv_free2(ptr noundef nonnull %call, i32 noundef %570) #8, !dbg !4525
  br label %cleanup2516

cleanup2516:                                      ; preds = %if.else.i3890, %if.then.i3889, %if.else.i3776, %if.then.i3775, %if.else.i3770, %if.then.i3769, %if.else.i, %if.then.i3765, %if.then
  ret void, !dbg !4526
}

declare !dbg !4527 i32 @PerlIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Perl_magic_dump(ptr noundef %mg) local_unnamed_addr #0 !dbg !4530 {
entry:
  call void @llvm.dbg.value(metadata ptr %mg, metadata !4534, metadata !DIExpression()), !dbg !4535
  %call = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !4536
  tail call void @Perl_do_magic_dump(i32 noundef 0, ptr noundef %call, ptr noundef %mg, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false, i64 noundef 0), !dbg !4536
  ret void, !dbg !4537
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_hv_dump(i32 noundef %level, ptr noundef %file, ptr noundef %name, ptr noundef %sv) local_unnamed_addr #0 !dbg !4538 {
entry:
  call void @llvm.dbg.value(metadata i32 %level, metadata !4542, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata ptr %file, metadata !4543, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata ptr %name, metadata !4544, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.value(metadata ptr %sv, metadata !4545, metadata !DIExpression()), !dbg !4550
  %0 = ptrtoint ptr %sv to i64, !dbg !4551
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.132, ptr noundef %name, i64 noundef %0), !dbg !4552
  %tobool.not = icmp eq ptr %sv, null, !dbg !4553
  br i1 %tobool.not, label %if.else, label %land.lhs.true, !dbg !4554

land.lhs.true:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.hv, ptr %sv, i64 0, i32 2, !dbg !4555
  %1 = load i32, ptr %sv_flags, align 4, !dbg !4555
  %and = and i32 %1, 33554432, !dbg !4555
  %tobool1.not = icmp eq i32 %and, 0, !dbg !4555
  br i1 %tobool1.not, label %if.else, label %land.lhs.true2, !dbg !4555

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.hv, ptr %sv, i64 0, i32 3, !dbg !4555
  %2 = load ptr, ptr %sv_u, align 8, !dbg !4555
  %3 = load ptr, ptr %sv, align 8, !dbg !4555
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %3, i64 0, i32 3, !dbg !4555
  %4 = load i64, ptr %xhv_max, align 8, !dbg !4555
  %add = add i64 %4, 1, !dbg !4555
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %add, !dbg !4555
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !4555
  %tobool3.not = icmp eq ptr %5, null, !dbg !4555
  br i1 %tobool3.not, label %if.else, label %land.lhs.true4, !dbg !4555

land.lhs.true4:                                   ; preds = %land.lhs.true2
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !4555
  %6 = load i32, ptr %xhv_name_count, align 4, !dbg !4555
  %tobool10.not = icmp eq i32 %6, 0, !dbg !4555
  br i1 %tobool10.not, label %if.then, label %cond.true, !dbg !4555

cond.true:                                        ; preds = %land.lhs.true4
  %7 = load ptr, ptr %5, align 8, !dbg !4555
  %tobool17.not = icmp eq ptr %7, null, !dbg !4555
  br i1 %tobool17.not, label %if.else, label %if.then, !dbg !4555

if.then:                                          ; preds = %land.lhs.true4, %cond.true
  %cond = phi ptr [ %7, %cond.true ], [ %5, %land.lhs.true4 ], !dbg !4555
  %hek_key = getelementptr inbounds %struct.hek, ptr %cond, i64 0, i32 2, !dbg !4555
  call void @llvm.dbg.value(metadata ptr %hek_key, metadata !4546, metadata !DIExpression()), !dbg !4550
  %call = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !4556
  call void @llvm.dbg.value(metadata ptr %call, metadata !4547, metadata !DIExpression()), !dbg !4557
  %8 = load i32, ptr %sv_flags, align 4, !dbg !4558
  %and52 = and i32 %8, 33554432, !dbg !4558
  %tobool53.not = icmp eq i32 %and52, 0, !dbg !4558
  br i1 %tobool53.not, label %cond.end267, label %land.lhs.true54, !dbg !4558

land.lhs.true54:                                  ; preds = %if.then
  %9 = load ptr, ptr %sv_u, align 8, !dbg !4558
  %10 = load ptr, ptr %sv, align 8, !dbg !4558
  %xhv_max57 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3, !dbg !4558
  %11 = load i64, ptr %xhv_max57, align 8, !dbg !4558
  %add58 = add i64 %11, 1, !dbg !4558
  %arrayidx59 = getelementptr inbounds ptr, ptr %9, i64 %add58, !dbg !4558
  %12 = load ptr, ptr %arrayidx59, align 8, !dbg !4558
  %tobool61.not = icmp eq ptr %12, null, !dbg !4558
  br i1 %tobool61.not, label %cond.end267, label %land.lhs.true62, !dbg !4558

land.lhs.true62:                                  ; preds = %land.lhs.true54
  %xhv_name_count68 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx59, i64 0, i32 4, !dbg !4558
  %13 = load i32, ptr %xhv_name_count68, align 4, !dbg !4558
  %tobool69.not = icmp eq i32 %13, 0, !dbg !4558
  br i1 %tobool69.not, label %cond.end108, label %cond.true70, !dbg !4558

cond.true70:                                      ; preds = %land.lhs.true62
  %14 = load ptr, ptr %12, align 8, !dbg !4558
  %tobool77.not = icmp eq ptr %14, null, !dbg !4558
  br i1 %tobool77.not, label %land.lhs.true124, label %cond.end108, !dbg !4558

cond.end108:                                      ; preds = %land.lhs.true62, %cond.true70
  %cond109 = phi ptr [ %14, %cond.true70 ], [ %12, %land.lhs.true62 ], !dbg !4558
  %hek_len = getelementptr inbounds %struct.hek, ptr %cond109, i64 0, i32 1, !dbg !4558
  %15 = load i32, ptr %hek_len, align 4, !dbg !4558
  %phi.cast = sext i32 %15 to i64, !dbg !4558
  br label %land.lhs.true124, !dbg !4558

land.lhs.true124:                                 ; preds = %cond.true70, %cond.end108
  %cond112.ph.ph = phi i64 [ %phi.cast, %cond.end108 ], [ 0, %cond.true70 ]
  %xhv_name_count130 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx59, i64 0, i32 4, !dbg !4558
  %16 = load i32, ptr %xhv_name_count130, align 4, !dbg !4558
  %tobool131.not = icmp eq i32 %16, 0, !dbg !4558
  br i1 %tobool131.not, label %cond.end170, label %cond.true132, !dbg !4558

cond.true132:                                     ; preds = %land.lhs.true124
  %17 = load ptr, ptr %12, align 8, !dbg !4558
  %tobool139.not = icmp eq ptr %17, null, !dbg !4558
  br i1 %tobool139.not, label %land.lhs.true189, label %cond.end170, !dbg !4558

cond.end170:                                      ; preds = %land.lhs.true124, %cond.true132
  %cond171 = phi ptr [ %17, %cond.true132 ], [ %12, %land.lhs.true124 ], !dbg !4558
  %hek_len172 = getelementptr inbounds %struct.hek, ptr %cond171, i64 0, i32 1, !dbg !4558
  %18 = load i32, ptr %hek_len172, align 4, !dbg !4558
  %phi.bo = mul i32 %18, 17, !dbg !4558
  %phi.bo346 = add i32 %phi.bo, 1, !dbg !4558
  %phi.cast347 = sext i32 %phi.bo346 to i64, !dbg !4558
  br label %land.lhs.true189, !dbg !4558

land.lhs.true189:                                 ; preds = %cond.true132, %cond.end170
  %cond175.ph.ph = phi i64 [ %phi.cast347, %cond.end170 ], [ 1, %cond.true132 ]
  %xhv_name_count195 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx59, i64 0, i32 4, !dbg !4558
  %19 = load i32, ptr %xhv_name_count195, align 4, !dbg !4558
  %tobool196.not = icmp eq i32 %19, 0, !dbg !4558
  br i1 %tobool196.not, label %cond.end260, label %cond.true197, !dbg !4558

cond.true197:                                     ; preds = %land.lhs.true189
  %20 = load ptr, ptr %12, align 8, !dbg !4558
  %tobool204.not = icmp eq ptr %20, null, !dbg !4558
  br i1 %tobool204.not, label %cond.end267, label %cond.end260, !dbg !4558

cond.end260:                                      ; preds = %cond.true197, %land.lhs.true189
  %cond236.pn = phi ptr [ %12, %land.lhs.true189 ], [ %20, %cond.true197 ], !dbg !4558
  %hek_key237363 = getelementptr inbounds %struct.hek, ptr %cond236.pn, i64 0, i32 2, !dbg !4558
  %hek_len262 = getelementptr inbounds %struct.hek, ptr %cond236.pn, i64 0, i32 1, !dbg !4558
  %21 = load i32, ptr %hek_len262, align 4, !dbg !4558
  %idx.ext = sext i32 %21 to i64, !dbg !4558
  %add.ptr = getelementptr inbounds i8, ptr %hek_key237363, i64 %idx.ext, !dbg !4558
  %add.ptr263 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !4558
  %22 = load i8, ptr %add.ptr263, align 1, !dbg !4558
  %conv264 = zext i8 %22 to i32, !dbg !4558
  %and265 = shl nuw nsw i32 %conv264, 8, !dbg !4558
  %23 = and i32 %and265, 256, !dbg !4558
  %phi.bo348 = or i32 %23, 66560, !dbg !4558
  br label %cond.end267, !dbg !4558

cond.end267:                                      ; preds = %land.lhs.true54, %if.then, %cond.true197, %cond.end260
  %cond175359 = phi i64 [ %cond175.ph.ph, %cond.end260 ], [ %cond175.ph.ph, %cond.true197 ], [ 1, %if.then ], [ 1, %land.lhs.true54 ]
  %cond112353357 = phi i64 [ %cond112.ph.ph, %cond.end260 ], [ %cond112.ph.ph, %cond.true197 ], [ 0, %if.then ], [ 0, %land.lhs.true54 ]
  %cond268 = phi i32 [ %phi.bo348, %cond.end260 ], [ 66560, %cond.true197 ], [ 66560, %if.then ], [ 66560, %land.lhs.true54 ]
  %call271 = tail call ptr @Perl_pv_escape(ptr noundef %call, ptr noundef nonnull %hek_key, i64 noundef %cond112353357, i64 noundef %cond175359, ptr noundef null, i32 noundef %cond268), !dbg !4558
  %call272 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.133, ptr noundef %call271) #8, !dbg !4559
  br label %if.end, !dbg !4560

if.else:                                          ; preds = %land.lhs.true, %land.lhs.true2, %cond.true, %entry
  %call273 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 10) #8, !dbg !4561
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end267
  ret void, !dbg !4562
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_gv_dump(i32 noundef %level, ptr noundef %file, ptr noundef %name, ptr noundef %sv) local_unnamed_addr #0 !dbg !4563 {
entry:
  call void @llvm.dbg.value(metadata i32 %level, metadata !4567, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata ptr %file, metadata !4568, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata ptr %name, metadata !4569, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata ptr %sv, metadata !4570, metadata !DIExpression()), !dbg !4574
  %0 = ptrtoint ptr %sv to i64, !dbg !4575
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.132, ptr noundef %name, i64 noundef %0), !dbg !4576
  %tobool.not = icmp eq ptr %sv, null, !dbg !4577
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !4578

if.then:                                          ; preds = %entry
  %call = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str, i64 noundef 0) #8, !dbg !4579
  call void @llvm.dbg.value(metadata ptr %call, metadata !4571, metadata !DIExpression()), !dbg !4580
  %1 = load ptr, ptr %sv, align 8, !dbg !4581
  %xiv_u3 = getelementptr inbounds %struct.xpvgv, ptr %1, i64 0, i32 4, !dbg !4581
  %2 = load ptr, ptr %xiv_u3, align 8, !dbg !4581
  %hek_key4 = getelementptr inbounds %struct.hek, ptr %2, i64 0, i32 2, !dbg !4581
  %hek_len = getelementptr inbounds %struct.hek, ptr %2, i64 0, i32 1, !dbg !4581
  %3 = load i32, ptr %hek_len, align 4, !dbg !4581
  %conv = sext i32 %3 to i64, !dbg !4581
  %mul = mul nsw i32 %3, 17, !dbg !4581
  %add = add nsw i32 %mul, 1, !dbg !4581
  %conv11 = sext i32 %add to i64, !dbg !4581
  %add.ptr = getelementptr inbounds i8, ptr %hek_key4, i64 %conv, !dbg !4581
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !4581
  %4 = load i8, ptr %add.ptr19, align 1, !dbg !4581
  %5 = and i8 %4, 1, !dbg !4581
  %6 = zext i8 %5 to i32, !dbg !4581
  %7 = shl nuw nsw i32 %6, 8, !dbg !4581
  %or = or i32 %7, 66560, !dbg !4581
  %call22 = tail call ptr @Perl_pv_escape(ptr noundef %call, ptr noundef nonnull %hek_key4, i64 noundef %conv, i64 noundef %conv11, ptr noundef null, i32 noundef %or), !dbg !4581
  %call23 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.133, ptr noundef %call22) #8, !dbg !4582
  br label %if.end, !dbg !4583

if.else:                                          ; preds = %entry
  %call24 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 10) #8, !dbg !4584
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4585
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_gvgv_dump(i32 noundef %level, ptr noundef %file, ptr noundef %name, ptr noundef %sv) local_unnamed_addr #0 !dbg !4586 {
entry:
  call void @llvm.dbg.value(metadata i32 %level, metadata !4588, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata ptr %file, metadata !4589, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata ptr %name, metadata !4590, metadata !DIExpression()), !dbg !4597
  call void @llvm.dbg.value(metadata ptr %sv, metadata !4591, metadata !DIExpression()), !dbg !4597
  %0 = ptrtoint ptr %sv to i64, !dbg !4598
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.132, ptr noundef %name, i64 noundef %0), !dbg !4599
  %tobool.not = icmp eq ptr %sv, null, !dbg !4600
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !4601

if.then:                                          ; preds = %entry
  %call = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !4602
  call void @llvm.dbg.value(metadata ptr %call, metadata !4592, metadata !DIExpression()), !dbg !4603
  %1 = load ptr, ptr %sv, align 8, !dbg !4604
  %xnv_u = getelementptr inbounds %struct.xpvgv, ptr %1, i64 0, i32 5, !dbg !4604
  %2 = load ptr, ptr %xnv_u, align 8, !dbg !4604
  call void @llvm.dbg.value(metadata ptr %2, metadata !4596, metadata !DIExpression()), !dbg !4603
  %call3 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.134) #8, !dbg !4605
  %tobool4.not = icmp eq ptr %2, null, !dbg !4606
  br i1 %tobool4.not, label %if.end, label %land.lhs.true5, !dbg !4608

land.lhs.true5:                                   ; preds = %if.then
  %sv_flags = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 2, !dbg !4609
  %3 = load i32, ptr %sv_flags, align 4, !dbg !4609
  %and = and i32 %3, 33554432, !dbg !4609
  %tobool6.not = icmp eq i32 %and, 0, !dbg !4609
  br i1 %tobool6.not, label %if.end, label %land.lhs.true7, !dbg !4609

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %sv_u = getelementptr inbounds %struct.hv, ptr %2, i64 0, i32 3, !dbg !4609
  %4 = load ptr, ptr %sv_u, align 8, !dbg !4609
  %5 = load ptr, ptr %2, align 8, !dbg !4609
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %5, i64 0, i32 3, !dbg !4609
  %6 = load i64, ptr %xhv_max, align 8, !dbg !4609
  %add = add i64 %6, 1, !dbg !4609
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %add, !dbg !4609
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !4609
  %tobool9.not = icmp eq ptr %7, null, !dbg !4609
  br i1 %tobool9.not, label %if.end, label %land.lhs.true10, !dbg !4609

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !4609
  %8 = load i32, ptr %xhv_name_count, align 4, !dbg !4609
  %tobool16.not = icmp eq i32 %8, 0, !dbg !4609
  br i1 %tobool16.not, label %land.lhs.true198.thread443, label %cond.true, !dbg !4609

land.lhs.true198.thread443:                       ; preds = %land.lhs.true10
  %hek_key53412 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 2, !dbg !4609
  call void @llvm.dbg.value(metadata ptr %hek_key53, metadata !4595, metadata !DIExpression()), !dbg !4603
  %hek_len426 = getelementptr inbounds %struct.hek, ptr %7, i64 0, i32 1, !dbg !4610
  %9 = load i32, ptr %hek_len426, align 4, !dbg !4610
  %phi.cast427 = sext i32 %9 to i64, !dbg !4610
  %phi.bo448 = mul i32 %9, 17, !dbg !4610
  %phi.bo398449 = add i32 %phi.bo448, 1, !dbg !4610
  %phi.cast399450 = sext i32 %phi.bo398449 to i64, !dbg !4610
  br label %cond.end269, !dbg !4610

cond.true:                                        ; preds = %land.lhs.true10
  %10 = load ptr, ptr %7, align 8, !dbg !4609
  %tobool23.not = icmp eq ptr %10, null, !dbg !4609
  br i1 %tobool23.not, label %if.end, label %cond.true79, !dbg !4609

cond.true79:                                      ; preds = %cond.true
  %hek_key53 = getelementptr inbounds %struct.hek, ptr %10, i64 0, i32 2, !dbg !4609
  call void @llvm.dbg.value(metadata ptr %hek_key53, metadata !4595, metadata !DIExpression()), !dbg !4603
  %11 = load ptr, ptr %7, align 8, !dbg !4610
  %tobool86.not = icmp eq ptr %11, null, !dbg !4610
  br i1 %tobool86.not, label %cond.end276, label %cond.true141, !dbg !4610

cond.true141:                                     ; preds = %cond.true79
  %hek_len = getelementptr inbounds %struct.hek, ptr %11, i64 0, i32 1, !dbg !4610
  %12 = load i32, ptr %hek_len, align 4, !dbg !4610
  %phi.cast = sext i32 %12 to i64, !dbg !4610
  %.pr = load ptr, ptr %7, align 8, !dbg !4610
  %tobool148.not = icmp eq ptr %.pr, null, !dbg !4610
  br i1 %tobool148.not, label %cond.end276, label %cond.true206, !dbg !4610

cond.true206:                                     ; preds = %cond.true141
  %hek_len181 = getelementptr inbounds %struct.hek, ptr %.pr, i64 0, i32 1, !dbg !4610
  %13 = load i32, ptr %hek_len181, align 4, !dbg !4610
  %phi.bo = mul i32 %13, 17, !dbg !4610
  %phi.bo398 = add i32 %phi.bo, 1, !dbg !4610
  %phi.cast399 = sext i32 %phi.bo398 to i64, !dbg !4610
  %.pr451 = load ptr, ptr %7, align 8, !dbg !4610
  %tobool213.not = icmp eq ptr %.pr451, null, !dbg !4610
  br i1 %tobool213.not, label %cond.end276, label %cond.end269, !dbg !4610

cond.end269:                                      ; preds = %land.lhs.true198.thread443, %cond.true206
  %cond184440 = phi i64 [ %phi.cast399, %cond.true206 ], [ %phi.cast399450, %land.lhs.true198.thread443 ]
  %hek_key53413418437 = phi ptr [ %hek_key53, %cond.true206 ], [ %hek_key53412, %land.lhs.true198.thread443 ]
  %cond121421434 = phi i64 [ %phi.cast, %cond.true206 ], [ %phi.cast427, %land.lhs.true198.thread443 ]
  %cond245.pn = phi ptr [ %.pr451, %cond.true206 ], [ %7, %land.lhs.true198.thread443 ], !dbg !4610
  %hek_key246406 = getelementptr inbounds %struct.hek, ptr %cond245.pn, i64 0, i32 2, !dbg !4610
  %hek_len271 = getelementptr inbounds %struct.hek, ptr %cond245.pn, i64 0, i32 1, !dbg !4610
  %14 = load i32, ptr %hek_len271, align 4, !dbg !4610
  %idx.ext = sext i32 %14 to i64, !dbg !4610
  %add.ptr = getelementptr inbounds i8, ptr %hek_key246406, i64 %idx.ext, !dbg !4610
  %add.ptr272 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !4610
  %15 = load i8, ptr %add.ptr272, align 1, !dbg !4610
  %conv273 = zext i8 %15 to i32, !dbg !4610
  %and274 = shl nuw nsw i32 %conv273, 8, !dbg !4610
  %16 = and i32 %and274, 256, !dbg !4610
  %phi.bo400 = or i32 %16, 66560, !dbg !4610
  br label %cond.end276, !dbg !4610

cond.end276:                                      ; preds = %cond.true141, %cond.true79, %cond.true206, %cond.end269
  %cond184441 = phi i64 [ %cond184440, %cond.end269 ], [ %phi.cast399, %cond.true206 ], [ 1, %cond.true79 ], [ 1, %cond.true141 ]
  %hek_key53413418438 = phi ptr [ %hek_key53413418437, %cond.end269 ], [ %hek_key53, %cond.true206 ], [ %hek_key53, %cond.true79 ], [ %hek_key53, %cond.true141 ]
  %cond121421435 = phi i64 [ %cond121421434, %cond.end269 ], [ %phi.cast, %cond.true206 ], [ 0, %cond.true79 ], [ %phi.cast, %cond.true141 ]
  %cond277 = phi i32 [ %phi.bo400, %cond.end269 ], [ 66560, %cond.true206 ], [ 66560, %cond.true79 ], [ 66560, %cond.true141 ]
  %call280 = tail call ptr @Perl_pv_escape(ptr noundef %call, ptr noundef nonnull %hek_key53413418438, i64 noundef %cond121421435, i64 noundef %cond184441, ptr noundef null, i32 noundef %cond277), !dbg !4610
  %call281 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.135, ptr noundef %call280) #8, !dbg !4612
  br label %if.end, !dbg !4613

if.end:                                           ; preds = %land.lhs.true5, %land.lhs.true7, %cond.true, %cond.end276, %if.then
  %17 = load ptr, ptr %sv, align 8, !dbg !4614
  %xiv_u283 = getelementptr inbounds %struct.xpvgv, ptr %17, i64 0, i32 4, !dbg !4614
  %18 = load ptr, ptr %xiv_u283, align 8, !dbg !4614
  %hek_key284 = getelementptr inbounds %struct.hek, ptr %18, i64 0, i32 2, !dbg !4614
  %hek_len288 = getelementptr inbounds %struct.hek, ptr %18, i64 0, i32 1, !dbg !4614
  %19 = load i32, ptr %hek_len288, align 4, !dbg !4614
  %conv289 = sext i32 %19 to i64, !dbg !4614
  %mul293 = mul nsw i32 %19, 17, !dbg !4614
  %add294 = add nsw i32 %mul293, 1, !dbg !4614
  %conv295 = sext i32 %add294 to i64, !dbg !4614
  %add.ptr304 = getelementptr inbounds i8, ptr %hek_key284, i64 %conv289, !dbg !4614
  %add.ptr305 = getelementptr inbounds i8, ptr %add.ptr304, i64 1, !dbg !4614
  %20 = load i8, ptr %add.ptr305, align 1, !dbg !4614
  %21 = and i8 %20, 1, !dbg !4614
  %22 = zext i8 %21 to i32, !dbg !4614
  %23 = shl nuw nsw i32 %22, 8, !dbg !4614
  %or310 = or i32 %23, 66560, !dbg !4614
  %call311 = tail call ptr @Perl_pv_escape(ptr noundef %call, ptr noundef nonnull %hek_key284, i64 noundef %conv289, i64 noundef %conv295, ptr noundef null, i32 noundef %or310), !dbg !4614
  %call312 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %file, ptr noundef nonnull @.str.136, ptr noundef %call311) #8, !dbg !4615
  br label %if.end314, !dbg !4616

if.else:                                          ; preds = %entry
  %call313 = tail call i32 @PerlIO_putc(ptr noundef %file, i32 noundef 10) #8, !dbg !4617
  br label %if.end314

if.end314:                                        ; preds = %if.else, %if.end
  ret void, !dbg !4618
}

declare !dbg !4619 ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #4

declare !dbg !4622 void @Perl__invlist_dump(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare !dbg !4625 ptr @Perl_av_arylen_p(ptr noundef) local_unnamed_addr #4

declare !dbg !4628 ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !4631 i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare !dbg !4634 ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !4637 ptr @Perl_hv_backreferences_p(ptr noundef) local_unnamed_addr #4

declare !dbg !4641 ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #4

declare !dbg !4644 ptr @Perl_cv_const_sv(ptr noundef) local_unnamed_addr #4

declare !dbg !4647 void @Perl_do_dump_pad(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !4650 void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Perl_sv_dump(ptr noundef %sv) local_unnamed_addr #0 !dbg !4653 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !4655, metadata !DIExpression()), !dbg !4656
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !4657
  %0 = load i32, ptr %sv_flags, align 4, !dbg !4657
  %call1 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !4659
  %and = lshr i32 %0, 9
  %1 = and i32 %and, 4
  tail call void @Perl_do_sv_dump(i32 noundef 0, ptr noundef %call1, ptr noundef nonnull %sv, i32 noundef 0, i32 noundef %1, i1 noundef zeroext false, i64 noundef 0), !dbg !4659
  ret void, !dbg !4660
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_runops_debug() local_unnamed_addr #0 !dbg !4661 {
entry:
  %0 = load ptr, ptr @PL_op, align 8, !dbg !4664
  %tobool.not = icmp eq ptr %0, null, !dbg !4664
  br i1 %tobool.not, label %if.then, label %do.body, !dbg !4666

if.then:                                          ; preds = %entry
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 22, ptr noundef nonnull @.str.381) #8, !dbg !4667
  br label %return, !dbg !4669

do.body:                                          ; preds = %entry, %do.cond
  %1 = load volatile i32, ptr @PL_debug, align 4, !dbg !4670
  %tobool1.not = icmp eq i32 %1, 0, !dbg !4670
  br i1 %tobool1.not, label %do.cond, label %if.then2, !dbg !4673

if.then2:                                         ; preds = %do.body
  %2 = load ptr, ptr @PL_watchaddr, align 8, !dbg !4674
  %tobool3.not = icmp eq ptr %2, null, !dbg !4674
  br i1 %tobool3.not, label %if.end6, label %land.lhs.true, !dbg !4677

land.lhs.true:                                    ; preds = %if.then2
  %3 = load ptr, ptr %2, align 8, !dbg !4678
  %4 = load ptr, ptr @PL_watchok, align 8, !dbg !4679
  %cmp.not = icmp eq ptr %3, %4, !dbg !4680
  br i1 %cmp.not, label %if.end6, label %if.then4, !dbg !4681

if.then4:                                         ; preds = %land.lhs.true
  %call = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !4682
  %5 = load ptr, ptr @PL_watchaddr, align 8, !dbg !4683
  %6 = ptrtoint ptr %5 to i64, !dbg !4683
  %7 = load ptr, ptr @PL_watchok, align 8, !dbg !4684
  %8 = ptrtoint ptr %7 to i64, !dbg !4684
  %9 = load ptr, ptr %5, align 8, !dbg !4685
  %10 = ptrtoint ptr %9 to i64, !dbg !4685
  %call5 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call, ptr noundef nonnull @.str.382, i64 noundef %6, i64 noundef %8, i64 noundef %10) #8, !dbg !4686
  br label %if.end6, !dbg !4686

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %if.then2
  %11 = load volatile i32, ptr @PL_debug, align 4, !dbg !4687
  %and = and i32 %11, 2, !dbg !4687
  %tobool7.not = icmp eq i32 %and, 0, !dbg !4687
  br i1 %tobool7.not, label %if.end16, label %if.then8, !dbg !4689

if.then8:                                         ; preds = %if.end6
  %12 = load volatile i32, ptr @PL_debug, align 4, !dbg !4690
  %and9 = and i32 %12, 1048576, !dbg !4690
  %tobool10.not = icmp eq i32 %and9, 0, !dbg !4690
  br i1 %tobool10.not, label %if.else, label %if.then11, !dbg !4693

if.then11:                                        ; preds = %if.then8
  %call12 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !4694
  %call13 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call12, ptr noundef nonnull @.str.245) #8, !dbg !4696
  tail call void @Perl_deb_stack_all() #8, !dbg !4697
  br label %if.end16, !dbg !4698

if.else:                                          ; preds = %if.then8
  %call14 = tail call i32 @Perl_debstack() #8, !dbg !4699
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.else, %if.end6
  %13 = load volatile i32, ptr @PL_debug, align 4, !dbg !4700
  %and17 = and i32 %13, 8, !dbg !4700
  %tobool18.not = icmp eq i32 %and17, 0, !dbg !4700
  br i1 %tobool18.not, label %if.end21, label %if.then19, !dbg !4702

if.then19:                                        ; preds = %if.end16
  %14 = load ptr, ptr @PL_op, align 8, !dbg !4703
  %call20 = tail call i32 @Perl_debop(ptr noundef %14), !dbg !4703
  br label %if.end21, !dbg !4703

if.end21:                                         ; preds = %if.then19, %if.end16
  %15 = load volatile i32, ptr @PL_debug, align 4, !dbg !4704
  %and22 = and i32 %15, 64, !dbg !4704
  %tobool23.not = icmp eq i32 %and22, 0, !dbg !4704
  br i1 %tobool23.not, label %do.cond, label %if.then24, !dbg !4706

if.then24:                                        ; preds = %if.end21
  %16 = load ptr, ptr @PL_op, align 8, !dbg !4707
  call void @llvm.dbg.value(metadata ptr %16, metadata !4708, metadata !DIExpression()) #8, !dbg !4711
  %17 = load volatile i32, ptr @PL_debug, align 4, !dbg !4713
  %and.i = and i32 %17, 524288, !dbg !4713
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !4713
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.i, !dbg !4715

land.lhs.true.i:                                  ; preds = %if.then24
  %18 = load ptr, ptr @PL_curcop, align 8, !dbg !4716
  %cop_stash.i = getelementptr inbounds %struct.cop, ptr %18, i64 0, i32 8, !dbg !4716
  %19 = load ptr, ptr %cop_stash.i, align 8, !dbg !4716
  %20 = load ptr, ptr @PL_debstash, align 8, !dbg !4716
  %cmp.i = icmp eq ptr %19, %20, !dbg !4716
  br i1 %cmp.i, label %do.cond, label %if.end.i, !dbg !4717

if.end.i:                                         ; preds = %land.lhs.true.i, %if.then24
  %21 = load ptr, ptr @PL_profiledata, align 8, !dbg !4718
  %tobool1.not.i = icmp eq ptr %21, null, !dbg !4718
  br i1 %tobool1.not.i, label %if.then2.i, label %if.end3.i, !dbg !4720

if.then2.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @Perl_safesyscalloc(i64 noundef 396, i64 noundef 4) #8, !dbg !4721
  store ptr %call.i, ptr @PL_profiledata, align 8, !dbg !4721
  br label %if.end3.i, !dbg !4721

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i
  %22 = phi ptr [ %call.i, %if.then2.i ], [ %21, %if.end.i ], !dbg !4722
  %op_type.i = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 4, !dbg !4723
  %bf.load.i = load i16, ptr %op_type.i, align 8, !dbg !4723
  %bf.clear.i = and i16 %bf.load.i, 511, !dbg !4723
  %idxprom.i = zext i16 %bf.clear.i to i64, !dbg !4722
  %arrayidx.i = getelementptr inbounds i32, ptr %22, i64 %idxprom.i, !dbg !4722
  %23 = load i32, ptr %arrayidx.i, align 4, !dbg !4724
  %inc.i = add i32 %23, 1, !dbg !4724
  store i32 %inc.i, ptr %arrayidx.i, align 4, !dbg !4724
  br label %do.cond, !dbg !4725

do.cond:                                          ; preds = %if.end3.i, %land.lhs.true.i, %do.body, %if.end21
  %24 = load ptr, ptr @PL_op, align 8, !dbg !4726
  %op_ppaddr = getelementptr inbounds %struct.op, ptr %24, i64 0, i32 2, !dbg !4727
  %25 = load ptr, ptr %op_ppaddr, align 8, !dbg !4727
  %call27 = tail call ptr %25() #8, !dbg !4726
  store ptr %call27, ptr @PL_op, align 8, !dbg !4728
  %tobool28.not = icmp eq ptr %call27, null, !dbg !4729
  br i1 %tobool28.not, label %do.end, label %do.body, !dbg !4729, !llvm.loop !4730

do.end:                                           ; preds = %do.cond
  %26 = load i32, ptr @PL_sig_pending, align 4, !dbg !4733
  %tobool29.not = icmp eq i32 %26, 0, !dbg !4733
  br i1 %tobool29.not, label %if.end31, label %if.then30, !dbg !4735

if.then30:                                        ; preds = %do.end
  %27 = load ptr, ptr @PL_signalhook, align 8, !dbg !4733
  tail call void %27() #8, !dbg !4733
  br label %if.end31, !dbg !4733

if.end31:                                         ; preds = %do.end, %if.then30
  store i8 0, ptr @PL_tainted, align 1, !dbg !4736
  br label %return, !dbg !4737

return:                                           ; preds = %if.end31, %if.then
  ret i32 0, !dbg !4738
}

declare !dbg !4739 void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare !dbg !4742 void @Perl_deb_stack_all() local_unnamed_addr #4

declare !dbg !4743 i32 @Perl_debstack() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_debop(ptr noundef %o) local_unnamed_addr #0 !dbg !4746 {
entry:
  call void @llvm.dbg.value(metadata ptr %o, metadata !4750, metadata !DIExpression()), !dbg !4758
  %0 = load ptr, ptr @PL_curcop, align 8, !dbg !4759
  %cop_stash = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 8, !dbg !4759
  %1 = load ptr, ptr %cop_stash, align 8, !dbg !4759
  %2 = load ptr, ptr @PL_debstash, align 8, !dbg !4759
  %cmp = icmp eq ptr %1, %2, !dbg !4759
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4761

land.lhs.true:                                    ; preds = %entry
  %3 = load volatile i32, ptr @PL_debug, align 4, !dbg !4762
  %and = and i32 %3, 524288, !dbg !4762
  %tobool.not = icmp eq i32 %and, 0, !dbg !4762
  br i1 %tobool.not, label %return, label %if.end, !dbg !4763

if.end:                                           ; preds = %land.lhs.true, %entry
  %op_type = getelementptr inbounds %struct.op, ptr %o, i64 0, i32 4, !dbg !4764
  %bf.load = load i16, ptr %op_type, align 8, !dbg !4764
  %bf.clear = and i16 %bf.load, 511, !dbg !4764
  %cmp1 = icmp eq i16 %bf.clear, 380, !dbg !4764
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4764

cond.true:                                        ; preds = %if.end
  %call = tail call ptr @Perl_custom_op_get_field(ptr noundef nonnull %o, i32 noundef 1) #8, !dbg !4764
  br label %cond.end, !dbg !4764

cond.false:                                       ; preds = %if.end
  %idxprom = zext i16 %bf.clear to i64, !dbg !4764
  %arrayidx = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %idxprom, !dbg !4764
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !4764
  br label %cond.end, !dbg !4764

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %4, %cond.false ], !dbg !4764
  tail call void (ptr, ...) @Perl_deb(ptr noundef nonnull @.str.247, ptr noundef %cond) #8, !dbg !4765
  %bf.load7 = load i16, ptr %op_type, align 8, !dbg !4766
  %bf.clear8 = and i16 %bf.load7, 511, !dbg !4766
  %bf.cast9 = zext i16 %bf.clear8 to i32, !dbg !4766
  switch i32 %bf.cast9, label %sw.epilog [
    i32 5, label %sw.bb
    i32 341, label %sw.bb
    i32 6, label %sw.bb13
    i32 7, label %sw.bb13
    i32 9, label %sw.bb64
    i32 10, label %sw.bb64
    i32 11, label %sw.bb64
    i32 390, label %sw.bb65
    i32 153, label %sw.bb68
  ], !dbg !4767

sw.bb:                                            ; preds = %cond.end, %cond.end
  %call10 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !4768
  %op_sv = getelementptr inbounds %struct.svop, ptr %o, i64 0, i32 7, !dbg !4769
  %5 = load ptr, ptr %op_sv, align 8, !dbg !4769
  %call11 = tail call ptr @Perl_sv_peek(ptr noundef %5), !dbg !4769
  %call12 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call10, ptr noundef nonnull @.str.393, ptr noundef %call11) #8, !dbg !4770
  br label %sw.epilog, !dbg !4771

sw.bb13:                                          ; preds = %cond.end, %cond.end
  %op_sv14 = getelementptr inbounds %struct.svop, ptr %o, i64 0, i32 7, !dbg !4772
  %6 = load ptr, ptr %op_sv14, align 8, !dbg !4772
  %tobool15.not = icmp eq ptr %6, null, !dbg !4772
  br i1 %tobool15.not, label %if.else59, label %land.lhs.true16, !dbg !4773

land.lhs.true16:                                  ; preds = %sw.bb13
  %sv_flags = getelementptr inbounds %struct.gv, ptr %6, i64 0, i32 2, !dbg !4774
  %7 = load i32, ptr %sv_flags, align 4, !dbg !4774
  %and18 = and i32 %7, 255, !dbg !4774
  %cmp19 = icmp eq i32 %and18, 9, !dbg !4774
  %call21 = tail call ptr @Perl_newSV(i64 noundef 0) #8, !dbg !4775
  br i1 %cmp19, label %if.then20, label %if.then35, !dbg !4776

if.then20:                                        ; preds = %land.lhs.true16
  call void @llvm.dbg.value(metadata ptr %call21, metadata !4751, metadata !DIExpression()), !dbg !4777
  %8 = load ptr, ptr %op_sv14, align 8, !dbg !4778
  tail call void @Perl_gv_fullname4(ptr noundef %call21, ptr noundef %8, ptr noundef null, i1 noundef zeroext true) #8, !dbg !4778
  %call23 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !4779
  %sv_flags24 = getelementptr inbounds %struct.sv, ptr %call21, i64 0, i32 2, !dbg !4780
  %9 = load i32, ptr %sv_flags24, align 4, !dbg !4780
  %and25 = and i32 %9, 2098176, !dbg !4780
  %cmp26 = icmp eq i32 %and25, 1024, !dbg !4780
  br i1 %cmp26, label %cond.true27, label %cond.false28, !dbg !4780

cond.true27:                                      ; preds = %if.then20
  %sv_u = getelementptr inbounds %struct.sv, ptr %call21, i64 0, i32 3, !dbg !4780
  %10 = load ptr, ptr %sv_u, align 8, !dbg !4780
  br label %cond.end30, !dbg !4780

cond.false28:                                     ; preds = %if.then20
  %call29 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call21, ptr noundef null, i32 noundef 34) #8, !dbg !4780
  br label %cond.end30, !dbg !4780

cond.end30:                                       ; preds = %cond.false28, %cond.true27
  %cond31 = phi ptr [ %10, %cond.true27 ], [ %call29, %cond.false28 ], !dbg !4780
  %call32 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call23, ptr noundef nonnull @.str.393, ptr noundef %cond31) #8, !dbg !4781
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1952, metadata !DIExpression()) #8, !dbg !4782
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call21, i64 0, i32 1, !dbg !4784
  %11 = load i32, ptr %sv_refcnt.i, align 8, !dbg !4784
  call void @llvm.dbg.value(metadata i32 %11, metadata !1957, metadata !DIExpression()) #8, !dbg !4782
  %cmp.i = icmp ugt i32 %11, 1, !dbg !4785
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !4786

if.then.i:                                        ; preds = %cond.end30
  %sub.i = add i32 %11, -1, !dbg !4787
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !4788
  br label %sw.epilog, !dbg !4789

if.else.i:                                        ; preds = %cond.end30
  tail call void @Perl_sv_free2(ptr noundef nonnull %call21, i32 noundef %11) #8, !dbg !4790
  br label %sw.epilog

if.then35:                                        ; preds = %land.lhs.true16
  call void @llvm.dbg.value(metadata ptr %call21, metadata !4755, metadata !DIExpression()), !dbg !4791
  %call38 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !4792
  %12 = load ptr, ptr %op_sv14, align 8, !dbg !4793
  %sv_u40 = getelementptr inbounds %struct.gv, ptr %12, i64 0, i32 3, !dbg !4793
  %13 = load ptr, ptr %sv_u40, align 8, !dbg !4793
  %call41 = tail call ptr @Perl_cv_name(ptr noundef %13, ptr noundef %call21, i32 noundef 0) #8, !dbg !4793
  %sv_flags42 = getelementptr inbounds %struct.sv, ptr %call41, i64 0, i32 2, !dbg !4793
  %14 = load i32, ptr %sv_flags42, align 4, !dbg !4793
  %and43 = and i32 %14, 2098176, !dbg !4793
  %cmp44 = icmp eq i32 %and43, 1024, !dbg !4793
  %15 = load ptr, ptr %op_sv14, align 8, !dbg !4793
  %sv_u47 = getelementptr inbounds %struct.gv, ptr %15, i64 0, i32 3, !dbg !4793
  %16 = load ptr, ptr %sv_u47, align 8, !dbg !4793
  %call48 = tail call ptr @Perl_cv_name(ptr noundef %16, ptr noundef %call21, i32 noundef 0) #8, !dbg !4793
  br i1 %cmp44, label %cond.true45, label %cond.false51, !dbg !4793

cond.true45:                                      ; preds = %if.then35
  %sv_u49 = getelementptr inbounds %struct.sv, ptr %call48, i64 0, i32 3, !dbg !4793
  %17 = load ptr, ptr %sv_u49, align 8, !dbg !4793
  br label %cond.end56, !dbg !4793

cond.false51:                                     ; preds = %if.then35
  %call55 = tail call ptr @Perl_sv_2pv_flags(ptr noundef %call48, ptr noundef null, i32 noundef 34) #8, !dbg !4793
  br label %cond.end56, !dbg !4793

cond.end56:                                       ; preds = %cond.false51, %cond.true45
  %cond57 = phi ptr [ %17, %cond.true45 ], [ %call55, %cond.false51 ], !dbg !4793
  %call58 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call38, ptr noundef nonnull @.str.394, ptr noundef %cond57) #8, !dbg !4794
  call void @llvm.dbg.value(metadata ptr %call21, metadata !1952, metadata !DIExpression()) #8, !dbg !4795
  %sv_refcnt.i97 = getelementptr inbounds %struct.sv, ptr %call21, i64 0, i32 1, !dbg !4797
  %18 = load i32, ptr %sv_refcnt.i97, align 8, !dbg !4797
  call void @llvm.dbg.value(metadata i32 %18, metadata !1957, metadata !DIExpression()) #8, !dbg !4795
  %cmp.i98 = icmp ugt i32 %18, 1, !dbg !4798
  br i1 %cmp.i98, label %if.then.i100, label %if.else.i101, !dbg !4799

if.then.i100:                                     ; preds = %cond.end56
  %sub.i99 = add i32 %18, -1, !dbg !4800
  store i32 %sub.i99, ptr %sv_refcnt.i97, align 8, !dbg !4801
  br label %sw.epilog, !dbg !4802

if.else.i101:                                     ; preds = %cond.end56
  tail call void @Perl_sv_free2(ptr noundef nonnull %call21, i32 noundef %18) #8, !dbg !4803
  br label %sw.epilog

if.else59:                                        ; preds = %sw.bb13
  %call60 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !4804
  %call61 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call60, ptr noundef nonnull @.str.395) #8, !dbg !4805
  br label %sw.epilog

sw.bb64:                                          ; preds = %cond.end, %cond.end, %cond.end
  %op_targ = getelementptr inbounds %struct.op, ptr %o, i64 0, i32 3, !dbg !4806
  %19 = load i64, ptr %op_targ, align 8, !dbg !4806
  tail call void @S_deb_padvar(i64 noundef %19, i32 noundef 1, i1 noundef zeroext true), !dbg !4807
  br label %sw.epilog, !dbg !4808

sw.bb65:                                          ; preds = %cond.end
  %op_targ66 = getelementptr inbounds %struct.op, ptr %o, i64 0, i32 3, !dbg !4809
  %20 = load i64, ptr %op_targ66, align 8, !dbg !4809
  %op_private = getelementptr inbounds %struct.op, ptr %o, i64 0, i32 6, !dbg !4810
  %21 = load i8, ptr %op_private, align 1, !dbg !4810
  %22 = and i8 %21, 127, !dbg !4811
  %and67 = zext i8 %22 to i32, !dbg !4811
  tail call void @S_deb_padvar(i64 noundef %20, i32 noundef %and67, i1 noundef zeroext true), !dbg !4812
  br label %sw.epilog, !dbg !4813

sw.bb68:                                          ; preds = %cond.end
  %call69 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !4814
  %23 = load ptr, ptr @PL_curstackinfo, align 8, !dbg !4815
  %si_cxix = getelementptr inbounds %struct.stackinfo, ptr %23, i64 0, i32 4, !dbg !4815
  %24 = load i32, ptr %si_cxix, align 8, !dbg !4815
  call void @llvm.dbg.value(metadata ptr undef, metadata !4816, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i32 %24, metadata !4821, metadata !DIExpression()), !dbg !4964
  %cmp76.i = icmp sgt i32 %24, -1, !dbg !4966
  br i1 %cmp76.i, label %for.body.i, label %S_deb_curcv.exit, !dbg !4967

for.body.i:                                       ; preds = %sw.bb68, %for.inc.i
  %si.078.i = phi ptr [ %si.2.ph.i, %for.inc.i ], [ %23, %sw.bb68 ]
  %ix.addr.077.i = phi i32 [ %dec.i, %for.inc.i ], [ %24, %sw.bb68 ]
  call void @llvm.dbg.value(metadata ptr %si.078.i, metadata !4816, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i32 %ix.addr.077.i, metadata !4821, metadata !DIExpression()), !dbg !4964
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo, ptr %si.078.i, i64 0, i32 1, !dbg !4968
  %25 = load ptr, ptr %si_cxstack.i, align 8, !dbg !4968
  %idxprom73.i = zext i32 %ix.addr.077.i to i64, !dbg !4969
  %arrayidx.i = getelementptr inbounds %struct.context, ptr %25, i64 %idxprom73.i, !dbg !4969
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !4822, metadata !DIExpression()), !dbg !4970
  %26 = load i8, ptr %arrayidx.i, align 8, !dbg !4971
  %conv.i = zext i8 %26 to i32, !dbg !4971
  %and.i = and i32 %conv.i, 15, !dbg !4971
  switch i32 %and.i, label %if.else26.i [
    i32 8, label %if.then.i103
    i32 9, label %if.then.i103
    i32 10, label %land.lhs.true.i
  ], !dbg !4973

if.then.i103:                                     ; preds = %for.body.i, %for.body.i
  %blk_u.i = getelementptr inbounds %struct.block, ptr %arrayidx.i, i64 0, i32 8, !dbg !4974
  %cv.i = getelementptr inbounds %struct.block_sub, ptr %blk_u.i, i64 0, i32 1, !dbg !4975
  br label %cleanup51.sink.split.i, !dbg !4976

land.lhs.true.i:                                  ; preds = %for.body.i
  %and19.i = and i32 %conv.i, 79, !dbg !4977
  %cmp20.i = icmp eq i32 %and19.i, 74, !dbg !4977
  br i1 %cmp20.i, label %if.else26.i, label %if.then22.i, !dbg !4979

if.then22.i:                                      ; preds = %land.lhs.true.i
  %blk_u24.i = getelementptr inbounds %struct.block, ptr %arrayidx.i, i64 0, i32 8, !dbg !4980
  %cv25.i = getelementptr inbounds %struct.block_eval, ptr %blk_u24.i, i64 0, i32 4, !dbg !4981
  br label %cleanup51.sink.split.i, !dbg !4982

if.else26.i:                                      ; preds = %land.lhs.true.i, %for.body.i
  %cmp27.i = icmp eq i32 %ix.addr.077.i, 0, !dbg !4983
  br i1 %cmp27.i, label %land.lhs.true29.i, label %for.inc.i, !dbg !4985

land.lhs.true29.i:                                ; preds = %if.else26.i
  %si_type.i = getelementptr inbounds %struct.stackinfo, ptr %si.078.i, i64 0, i32 6, !dbg !4986
  %27 = load i32, ptr %si_type.i, align 8, !dbg !4986
  %cmp30.i = icmp eq i32 %27, 1, !dbg !4987
  br i1 %cmp30.i, label %cleanup51.sink.split.i, label %land.lhs.true36.i, !dbg !4988

land.lhs.true36.i:                                ; preds = %land.lhs.true29.i
  %28 = and i8 %26, 15, !dbg !4989
  %cmp41.i = icmp eq i8 %28, 0, !dbg !4991
  %cmp45.i = icmp eq i32 %27, 3
  %or.cond.i = select i1 %cmp41.i, i1 %cmp45.i, i1 false, !dbg !4992
  br i1 %or.cond.i, label %if.then47.i, label %S_deb_curcv.exit, !dbg !4992

if.then47.i:                                      ; preds = %land.lhs.true36.i
  %si_prev.i = getelementptr inbounds %struct.stackinfo, ptr %si.078.i, i64 0, i32 2, !dbg !4993
  %29 = load ptr, ptr %si_prev.i, align 8, !dbg !4993
  call void @llvm.dbg.value(metadata ptr %29, metadata !4816, metadata !DIExpression()), !dbg !4964
  %si_cxix.i = getelementptr inbounds %struct.stackinfo, ptr %29, i64 0, i32 4, !dbg !4995
  %30 = load i32, ptr %si_cxix.i, align 8, !dbg !4995
  %add.i = add nsw i32 %30, 1, !dbg !4996
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !4821, metadata !DIExpression()), !dbg !4964
  br label %for.inc.i, !dbg !4997

for.inc.i:                                        ; preds = %if.then47.i, %if.else26.i
  %ix.addr.2.ph.i = phi i32 [ %ix.addr.077.i, %if.else26.i ], [ %add.i, %if.then47.i ]
  %si.2.ph.i = phi ptr [ %si.078.i, %if.else26.i ], [ %29, %if.then47.i ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !4816, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i32 undef, metadata !4821, metadata !DIExpression()), !dbg !4964
  %dec.i = add nsw i32 %ix.addr.2.ph.i, -1, !dbg !4998
  call void @llvm.dbg.value(metadata ptr %si.2.ph.i, metadata !4816, metadata !DIExpression()), !dbg !4964
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !4821, metadata !DIExpression()), !dbg !4964
  %cmp.i104 = icmp sgt i32 %ix.addr.2.ph.i, 0, !dbg !4966
  br i1 %cmp.i104, label %for.body.i, label %S_deb_curcv.exit, !dbg !4967, !llvm.loop !4999

cleanup51.sink.split.i:                           ; preds = %land.lhs.true29.i, %if.then22.i, %if.then.i103
  %cv.sink.i = phi ptr [ %cv.i, %if.then.i103 ], [ %cv25.i, %if.then22.i ], [ @PL_main_cv, %land.lhs.true29.i ]
  %31 = load ptr, ptr %cv.sink.i, align 8, !dbg !5001
  br label %S_deb_curcv.exit, !dbg !5002

S_deb_curcv.exit:                                 ; preds = %land.lhs.true36.i, %for.inc.i, %sw.bb68, %cleanup51.sink.split.i
  %retval.2.i = phi ptr [ null, %sw.bb68 ], [ %31, %cleanup51.sink.split.i ], [ null, %for.inc.i ], [ null, %land.lhs.true36.i ], !dbg !4964
  %call71 = tail call ptr @Perl_multideref_stringify(ptr noundef %o, ptr noundef %retval.2.i), !dbg !4815
  %call72 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call69, ptr noundef nonnull @.str.396, ptr noundef %call71) #8, !dbg !5003
  br label %sw.epilog, !dbg !5004

sw.epilog:                                        ; preds = %if.else.i101, %if.then.i100, %if.else.i, %if.then.i, %cond.end, %if.else59, %S_deb_curcv.exit, %sw.bb65, %sw.bb64, %sw.bb
  %call73 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !5005
  %call74 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call73, ptr noundef nonnull @.str.245) #8, !dbg !5006
  br label %return, !dbg !5007

return:                                           ; preds = %land.lhs.true, %sw.epilog
  ret i32 0, !dbg !5008
}

; Function Attrs: nounwind uwtable
define dso_local void @S_deb_padvar(i64 noundef %off, i32 noundef %n, i1 noundef zeroext %paren) local_unnamed_addr #0 !dbg !5009 {
entry:
  call void @llvm.dbg.value(metadata i64 %off, metadata !5013, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.value(metadata i32 %n, metadata !5014, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.value(metadata i1 %paren, metadata !5015, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5025
  %0 = load ptr, ptr @PL_curstackinfo, align 8, !dbg !5026
  %si_cxix = getelementptr inbounds %struct.stackinfo, ptr %0, i64 0, i32 4, !dbg !5026
  %1 = load i32, ptr %si_cxix, align 8, !dbg !5026
  call void @llvm.dbg.value(metadata i32 %1, metadata !4821, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata ptr undef, metadata !4816, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i32 %1, metadata !4821, metadata !DIExpression()), !dbg !5027
  %cmp76.i = icmp sgt i32 %1, -1, !dbg !5029
  br i1 %cmp76.i, label %for.body.i, label %if.end, !dbg !5030

for.body.i:                                       ; preds = %entry, %for.inc.i
  %si.078.i = phi ptr [ %si.2.ph.i, %for.inc.i ], [ %0, %entry ]
  %ix.addr.077.i = phi i32 [ %dec.i, %for.inc.i ], [ %1, %entry ]
  call void @llvm.dbg.value(metadata ptr %si.078.i, metadata !4816, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i32 %ix.addr.077.i, metadata !4821, metadata !DIExpression()), !dbg !5027
  %si_cxstack.i = getelementptr inbounds %struct.stackinfo, ptr %si.078.i, i64 0, i32 1, !dbg !5031
  %2 = load ptr, ptr %si_cxstack.i, align 8, !dbg !5031
  %idxprom73.i = zext i32 %ix.addr.077.i to i64, !dbg !5032
  %arrayidx.i = getelementptr inbounds %struct.context, ptr %2, i64 %idxprom73.i, !dbg !5032
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !4822, metadata !DIExpression()), !dbg !5033
  %3 = load i8, ptr %arrayidx.i, align 8, !dbg !5034
  %conv.i = zext i8 %3 to i32, !dbg !5034
  %and.i = and i32 %conv.i, 15, !dbg !5034
  switch i32 %and.i, label %if.else26.i [
    i32 8, label %if.then.i
    i32 9, label %if.then.i
    i32 10, label %land.lhs.true.i
  ], !dbg !5035

if.then.i:                                        ; preds = %for.body.i, %for.body.i
  %blk_u.i = getelementptr inbounds %struct.block, ptr %arrayidx.i, i64 0, i32 8, !dbg !5036
  %cv.i = getelementptr inbounds %struct.block_sub, ptr %blk_u.i, i64 0, i32 1, !dbg !5037
  br label %S_deb_curcv.exit, !dbg !5038

land.lhs.true.i:                                  ; preds = %for.body.i
  %and19.i = and i32 %conv.i, 79, !dbg !5039
  %cmp20.i = icmp eq i32 %and19.i, 74, !dbg !5039
  br i1 %cmp20.i, label %if.else26.i, label %if.then22.i, !dbg !5040

if.then22.i:                                      ; preds = %land.lhs.true.i
  %blk_u24.i = getelementptr inbounds %struct.block, ptr %arrayidx.i, i64 0, i32 8, !dbg !5041
  %cv25.i = getelementptr inbounds %struct.block_eval, ptr %blk_u24.i, i64 0, i32 4, !dbg !5042
  br label %S_deb_curcv.exit, !dbg !5043

if.else26.i:                                      ; preds = %land.lhs.true.i, %for.body.i
  %cmp27.i = icmp eq i32 %ix.addr.077.i, 0, !dbg !5044
  br i1 %cmp27.i, label %land.lhs.true29.i, label %for.inc.i, !dbg !5045

land.lhs.true29.i:                                ; preds = %if.else26.i
  %si_type.i = getelementptr inbounds %struct.stackinfo, ptr %si.078.i, i64 0, i32 6, !dbg !5046
  %4 = load i32, ptr %si_type.i, align 8, !dbg !5046
  %cmp30.i = icmp eq i32 %4, 1, !dbg !5047
  br i1 %cmp30.i, label %S_deb_curcv.exit, label %land.lhs.true36.i, !dbg !5048

land.lhs.true36.i:                                ; preds = %land.lhs.true29.i
  %5 = and i8 %3, 15, !dbg !5049
  %cmp41.i = icmp eq i8 %5, 0, !dbg !5050
  %cmp45.i = icmp eq i32 %4, 3
  %or.cond.i = select i1 %cmp41.i, i1 %cmp45.i, i1 false, !dbg !5051
  br i1 %or.cond.i, label %if.then47.i, label %if.end, !dbg !5051

if.then47.i:                                      ; preds = %land.lhs.true36.i
  %si_prev.i = getelementptr inbounds %struct.stackinfo, ptr %si.078.i, i64 0, i32 2, !dbg !5052
  %6 = load ptr, ptr %si_prev.i, align 8, !dbg !5052
  call void @llvm.dbg.value(metadata ptr %6, metadata !4816, metadata !DIExpression()), !dbg !5027
  %si_cxix.i = getelementptr inbounds %struct.stackinfo, ptr %6, i64 0, i32 4, !dbg !5053
  %7 = load i32, ptr %si_cxix.i, align 8, !dbg !5053
  %add.i = add nsw i32 %7, 1, !dbg !5054
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !4821, metadata !DIExpression()), !dbg !5027
  br label %for.inc.i, !dbg !5055

for.inc.i:                                        ; preds = %if.then47.i, %if.else26.i
  %ix.addr.2.ph.i = phi i32 [ %ix.addr.077.i, %if.else26.i ], [ %add.i, %if.then47.i ]
  %si.2.ph.i = phi ptr [ %si.078.i, %if.else26.i ], [ %6, %if.then47.i ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !4816, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i32 undef, metadata !4821, metadata !DIExpression()), !dbg !5027
  %dec.i = add nsw i32 %ix.addr.2.ph.i, -1, !dbg !5056
  call void @llvm.dbg.value(metadata ptr %si.2.ph.i, metadata !4816, metadata !DIExpression()), !dbg !5027
  call void @llvm.dbg.value(metadata i32 %dec.i, metadata !4821, metadata !DIExpression()), !dbg !5027
  %cmp.i = icmp sgt i32 %ix.addr.2.ph.i, 0, !dbg !5029
  br i1 %cmp.i, label %for.body.i, label %if.end, !dbg !5030, !llvm.loop !5057

S_deb_curcv.exit:                                 ; preds = %land.lhs.true29.i, %if.then.i, %if.then22.i
  %cv.sink.i = phi ptr [ %cv.i, %if.then.i ], [ %cv25.i, %if.then22.i ], [ @PL_main_cv, %land.lhs.true29.i ]
  %8 = load ptr, ptr %cv.sink.i, align 8, !dbg !5059
  call void @llvm.dbg.value(metadata ptr %8, metadata !5017, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.value(metadata ptr null, metadata !5019, metadata !DIExpression()), !dbg !5025
  %tobool.not = icmp eq ptr %8, null, !dbg !5060
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !5061

if.then:                                          ; preds = %S_deb_curcv.exit
  %9 = load ptr, ptr %8, align 8, !dbg !5062
  %xcv_padlist_u = getelementptr inbounds %struct.xpvcv, ptr %9, i64 0, i32 9, !dbg !5062
  %10 = load ptr, ptr %xcv_padlist_u, align 8, !dbg !5062
  call void @llvm.dbg.value(metadata ptr %10, metadata !5021, metadata !DIExpression()), !dbg !5063
  %xpadl_alloc = getelementptr inbounds %struct.padlist, ptr %10, i64 0, i32 1, !dbg !5064
  %11 = load ptr, ptr %xpadl_alloc, align 8, !dbg !5064
  %12 = load ptr, ptr %11, align 8, !dbg !5064
  call void @llvm.dbg.value(metadata ptr %12, metadata !5019, metadata !DIExpression()), !dbg !5025
  br label %if.end, !dbg !5065

if.end:                                           ; preds = %land.lhs.true36.i, %for.inc.i, %entry, %if.then, %S_deb_curcv.exit
  %comppad.0 = phi ptr [ %12, %if.then ], [ null, %S_deb_curcv.exit ], [ null, %entry ], [ null, %for.inc.i ], [ null, %land.lhs.true36.i ], !dbg !5025
  call void @llvm.dbg.value(metadata ptr %comppad.0, metadata !5019, metadata !DIExpression()), !dbg !5025
  br i1 %paren, label %if.then2, label %if.end5, !dbg !5066

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !5067
  %call4 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call3, ptr noundef nonnull @.str.19) #8, !dbg !5069
  br label %if.end5, !dbg !5069

if.end5:                                          ; preds = %if.then2, %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !5020, metadata !DIExpression()), !dbg !5025
  %cmp44 = icmp sgt i32 %n, 0, !dbg !5070
  br i1 %cmp44, label %for.body.lr.ph, label %for.end, !dbg !5073

for.body.lr.ph:                                   ; preds = %if.end5
  %tobool6.not = icmp eq ptr %comppad.0, null
  %sub = add nsw i32 %n, -1
  %13 = zext i32 %sub to i64, !dbg !5073
  %wide.trip.count56 = zext i32 %n to i64, !dbg !5070
  br i1 %tobool6.not, label %for.body.us, label %for.body, !dbg !5074

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc.us ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv53, metadata !5020, metadata !DIExpression()), !dbg !5025
  %call13.us = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !5077
  %add15.us = add i64 %indvars.iv53, %off, !dbg !5078
  %call16.us = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call13.us, ptr noundef nonnull @.str.384, i64 noundef %add15.us) #8, !dbg !5079
  %cmp18.us = icmp ult i64 %indvars.iv53, %13, !dbg !5080
  br i1 %cmp18.us, label %if.then20.us, label %for.inc.us, !dbg !5082

if.then20.us:                                     ; preds = %for.body.us
  %call21.us = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !5083
  %call22.us = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call21.us, ptr noundef nonnull @.str.85) #8, !dbg !5084
  br label %for.inc.us, !dbg !5084

for.inc.us:                                       ; preds = %if.then20.us, %for.body.us
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !dbg !5085
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next54, metadata !5020, metadata !DIExpression()), !dbg !5025
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56, !dbg !5070
  br i1 %exitcond57.not, label %for.end, label %for.body.us, !dbg !5073, !llvm.loop !5086

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5020, metadata !DIExpression()), !dbg !5025
  %add = add i64 %indvars.iv, %off, !dbg !5088
  %call7 = tail call ptr @Perl_padnamelist_fetch(ptr noundef nonnull %comppad.0, i64 noundef %add) #8, !dbg !5089
  call void @llvm.dbg.value(metadata ptr %call7, metadata !5016, metadata !DIExpression()), !dbg !5025
  %tobool8.not = icmp eq ptr %call7, null, !dbg !5090
  %call13 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !5091
  br i1 %tobool8.not, label %if.else, label %if.then9, !dbg !5092

if.then9:                                         ; preds = %for.body
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %call7, i64 0, i32 7, !dbg !5093
  %14 = load i8, ptr %xpadn_len, align 8, !dbg !5093
  %conv11 = zext i8 %14 to i64, !dbg !5093
  %15 = load ptr, ptr %call7, align 8, !dbg !5093
  %call12 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call13, ptr noundef nonnull @.str.383, i32 noundef 1, i64 noundef %conv11, ptr noundef %15) #8, !dbg !5094
  br label %if.end17, !dbg !5094

if.else:                                          ; preds = %for.body
  %call16 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call13, ptr noundef nonnull @.str.384, i64 noundef %add) #8, !dbg !5079
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then9
  %cmp18 = icmp ult i64 %indvars.iv, %13, !dbg !5080
  br i1 %cmp18, label %if.then20, label %for.inc, !dbg !5082

if.then20:                                        ; preds = %if.end17
  %call21 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !5083
  %call22 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call21, ptr noundef nonnull @.str.85) #8, !dbg !5084
  br label %for.inc, !dbg !5084

for.inc:                                          ; preds = %if.end17, %if.then20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5085
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !5020, metadata !DIExpression()), !dbg !5025
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count56, !dbg !5070
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !5073, !llvm.loop !5086

for.end:                                          ; preds = %for.inc, %for.inc.us, %if.end5
  br i1 %paren, label %if.then25, label %if.end28, !dbg !5095

if.then25:                                        ; preds = %for.end
  %call26 = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !5096
  %call27 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call26, ptr noundef nonnull @.str.34) #8, !dbg !5098
  br label %if.end28, !dbg !5098

if.end28:                                         ; preds = %if.then25, %for.end
  ret void, !dbg !5099
}

declare !dbg !5100 ptr @Perl_padnamelist_fetch(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_multideref_stringify(ptr nocapture noundef readonly %o, ptr noundef readonly %cv) local_unnamed_addr #0 !dbg !5103 {
entry:
  %escaped.i = alloca i64, align 8
  %cur = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %o, metadata !5107, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata ptr %cv, metadata !5108, metadata !DIExpression()), !dbg !5127
  %op_aux = getelementptr inbounds %struct.unop_aux, ptr %o, i64 0, i32 8, !dbg !5128
  %0 = load ptr, ptr %op_aux, align 8, !dbg !5128
  call void @llvm.dbg.value(metadata ptr %0, metadata !5109, metadata !DIExpression()), !dbg !5127
  %1 = load i64, ptr %0, align 8, !dbg !5129
  call void @llvm.dbg.value(metadata i64 %1, metadata !5110, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 0, metadata !5112, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 0, metadata !5113, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 0, metadata !5114, metadata !DIExpression()), !dbg !5127
  %call = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str, i64 noundef 0, i32 noundef 524288) #8, !dbg !5130
  call void @llvm.dbg.value(metadata ptr %call, metadata !5115, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata ptr %0, metadata !5109, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i64 %1, metadata !5110, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 0, metadata !5114, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 0, metadata !5113, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 0, metadata !5112, metadata !DIExpression()), !dbg !5127
  %tobool.not.i104 = icmp eq ptr %cv, null
  %sv_u.i117 = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 3
  br label %while.body.us.preheader, !dbg !5131

while.body.us.preheader:                          ; preds = %sw.epilog49, %entry
  %items.0.ph240 = phi ptr [ %0, %entry ], [ %items.3, %sw.epilog49 ]
  %actions.0.ph239 = phi i64 [ %1, %entry ], [ %shr, %sw.epilog49 ]
  %derefs.0.ph229 = phi i32 [ 0, %entry ], [ %derefs.1, %sw.epilog49 ]
  %last.0.ph222 = phi i8 [ 0, %entry ], [ %spec.select, %sw.epilog49 ]
  call void @llvm.dbg.value(metadata ptr %items.0.ph240, metadata !5109, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i64 %actions.0.ph239, metadata !5110, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 %derefs.0.ph229, metadata !5114, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 0, metadata !5113, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 %last.0.ph222, metadata !5112, metadata !DIExpression()), !dbg !5127
  br label %while.body.us, !dbg !5132

while.body.us:                                    ; preds = %while.body.us.preheader, %sw.bb.us
  %items.0199.us = phi ptr [ %incdec.ptr.us, %sw.bb.us ], [ %items.0.ph240, %while.body.us.preheader ]
  %actions.0198.us = phi i64 [ %2, %sw.bb.us ], [ %actions.0.ph239, %while.body.us.preheader ]
  call void @llvm.dbg.value(metadata ptr %items.0199.us, metadata !5109, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i64 %actions.0198.us, metadata !5110, metadata !DIExpression()), !dbg !5127
  %and.us = and i64 %actions.0198.us, 15, !dbg !5133
  switch i64 %and.us, label %sw.default [
    i64 0, label %sw.bb.us
    i64 12, label %sw.bb2
    i64 5, label %sw.bb2.loopexit
    i64 13, label %sw.bb5
    i64 6, label %sw.bb5.loopexit
    i64 9, label %sw.bb8
    i64 2, label %sw.bb8.loopexit
    i64 10, label %sw.bb11
    i64 3, label %sw.bb11.loopexit
    i64 8, label %sw.bb14
    i64 11, label %sw.bb14
    i64 1, label %sw.bb14.loopexit
    i64 4, label %sw.bb14.loopexit
  ], !dbg !5132

sw.bb.us:                                         ; preds = %while.body.us
  %incdec.ptr.us = getelementptr inbounds %union.UNOP_AUX_item, ptr %items.0199.us, i64 1, !dbg !5134
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.us, metadata !5109, metadata !DIExpression()), !dbg !5127
  %2 = load i64, ptr %incdec.ptr.us, align 8, !dbg !5135
  call void @llvm.dbg.value(metadata i64 %2, metadata !5110, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 %derefs.0.ph229, metadata !5114, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 0, metadata !5113, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 %last.0.ph222, metadata !5112, metadata !DIExpression()), !dbg !5127
  br label %while.body.us

sw.bb2.loopexit:                                  ; preds = %while.body.us
  br label %sw.bb2, !dbg !5136

sw.bb2:                                           ; preds = %while.body.us, %sw.bb2.loopexit
  %is_hash.1 = phi i8 [ 0, %sw.bb2.loopexit ], [ 1, %while.body.us ], !dbg !5127
  call void @llvm.dbg.value(metadata i8 %is_hash.1, metadata !5113, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 1, metadata !5114, metadata !DIExpression()), !dbg !5127
  %incdec.ptr3 = getelementptr inbounds %union.UNOP_AUX_item, ptr %items.0199.us, i64 1, !dbg !5136
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3, metadata !5109, metadata !DIExpression()), !dbg !5127
  %3 = load i64, ptr %incdec.ptr3, align 8, !dbg !5137
  call void @llvm.dbg.value(metadata i64 %3, metadata !5138, metadata !DIExpression()) #8, !dbg !5160
  call void @llvm.dbg.value(metadata ptr %cv, metadata !5143, metadata !DIExpression()) #8, !dbg !5160
  call void @llvm.dbg.value(metadata ptr %call, metadata !5144, metadata !DIExpression()) #8, !dbg !5160
  call void @llvm.dbg.value(metadata i32 1, metadata !5145, metadata !DIExpression()) #8, !dbg !5160
  call void @llvm.dbg.value(metadata i8 0, metadata !5146, metadata !DIExpression()) #8, !dbg !5160
  call void @llvm.dbg.value(metadata i8 1, metadata !5147, metadata !DIExpression()) #8, !dbg !5160
  call void @llvm.dbg.value(metadata ptr null, metadata !5149, metadata !DIExpression()) #8, !dbg !5160
  br i1 %tobool.not.i104, label %if.else.i, label %if.end4.i, !dbg !5162

if.end4.i:                                        ; preds = %sw.bb2
  %4 = load ptr, ptr %cv, align 8, !dbg !5163
  %xcv_padlist_u.i = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 9, !dbg !5163
  %5 = load ptr, ptr %xcv_padlist_u.i, align 8, !dbg !5163
  call void @llvm.dbg.value(metadata ptr %5, metadata !5151, metadata !DIExpression()) #8, !dbg !5164
  %xpadl_alloc.i = getelementptr inbounds %struct.padlist, ptr %5, i64 0, i32 1, !dbg !5165
  %6 = load ptr, ptr %xpadl_alloc.i, align 8, !dbg !5165
  %7 = load ptr, ptr %6, align 8, !dbg !5165
  call void @llvm.dbg.value(metadata ptr %7, metadata !5149, metadata !DIExpression()) #8, !dbg !5160
  call void @llvm.dbg.value(metadata i32 undef, metadata !5150, metadata !DIExpression()) #8, !dbg !5160
  %tobool5.not.i = icmp eq ptr %7, null, !dbg !5166
  br i1 %tobool5.not.i, label %if.else.i, label %land.lhs.true.i, !dbg !5167

land.lhs.true.i:                                  ; preds = %if.end4.i
  %call.i = call ptr @Perl_padnamelist_fetch(ptr noundef nonnull %7, i64 noundef %3) #8, !dbg !5168
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !5148, metadata !DIExpression()) #8, !dbg !5160
  %tobool6.not.i = icmp eq ptr %call.i, null, !dbg !5169
  br i1 %tobool6.not.i, label %if.else.i, label %if.then7.i, !dbg !5170

if.then7.i:                                       ; preds = %land.lhs.true.i
  %8 = load ptr, ptr %call, align 8, !dbg !5171
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2, !dbg !5171
  %9 = load i64, ptr %xpv_cur.i, align 8, !dbg !5171
  call void @llvm.dbg.value(metadata i64 %9, metadata !5154, metadata !DIExpression()) #8, !dbg !5172
  %xpadn_len.i = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 7, !dbg !5173
  %10 = load i8, ptr %xpadn_len.i, align 8, !dbg !5173
  %conv9.i = zext i8 %10 to i64, !dbg !5173
  %sub.i = add nsw i64 %conv9.i, -1, !dbg !5173
  %11 = load ptr, ptr %call.i, align 8, !dbg !5173
  %add.ptr.i = getelementptr inbounds i8, ptr %11, i64 1, !dbg !5173
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %call, ptr noundef nonnull @.str.472, i32 noundef 1, i64 noundef %sub.i, ptr noundef nonnull %add.ptr.i) #8, !dbg !5174
  %12 = load ptr, ptr %sv_u.i117, align 8, !dbg !5175
  %arrayidx.i = getelementptr inbounds i8, ptr %12, i64 %9, !dbg !5175
  store i8 36, ptr %arrayidx.i, align 1, !dbg !5177
  br label %do_elem, !dbg !5178

if.else.i:                                        ; preds = %land.lhs.true.i, %if.end4.i, %sw.bb2
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.384, i64 noundef %3) #8, !dbg !5179
  br label %do_elem

sw.bb5.loopexit:                                  ; preds = %while.body.us
  br label %sw.bb5, !dbg !5180

sw.bb5:                                           ; preds = %while.body.us, %sw.bb5.loopexit
  %is_hash.2 = phi i8 [ 0, %sw.bb5.loopexit ], [ 1, %while.body.us ], !dbg !5127
  call void @llvm.dbg.value(metadata i8 %is_hash.2, metadata !5113, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 1, metadata !5114, metadata !DIExpression()), !dbg !5127
  %incdec.ptr6 = getelementptr inbounds %union.UNOP_AUX_item, ptr %items.0199.us, i64 1, !dbg !5180
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !5109, metadata !DIExpression()), !dbg !5127
  %13 = load ptr, ptr %incdec.ptr6, align 8, !dbg !5181
  call void @llvm.dbg.value(metadata ptr %13, metadata !5111, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata ptr %13, metadata !5182, metadata !DIExpression()) #8, !dbg !5189
  call void @llvm.dbg.value(metadata ptr %call, metadata !5187, metadata !DIExpression()) #8, !dbg !5189
  %tobool.not.i92 = icmp eq ptr %13, null, !dbg !5191
  br i1 %tobool.not.i92, label %if.then.i, label %if.end.i, !dbg !5193

if.then.i:                                        ; preds = %sw.bb5
  call void @Perl_sv_catpvn_flags(ptr noundef %call, ptr noundef nonnull @.str.473, i64 noundef 8, i32 noundef 0) #8, !dbg !5194
  br label %do_elem, !dbg !5196

if.end.i:                                         ; preds = %sw.bb5
  %call.i93 = call ptr @Perl_newSV(i64 noundef 0) #8, !dbg !5197
  call void @llvm.dbg.value(metadata ptr %call.i93, metadata !5188, metadata !DIExpression()) #8, !dbg !5189
  call void @Perl_gv_fullname4(ptr noundef %call.i93, ptr noundef nonnull %13, ptr noundef null, i1 noundef zeroext false) #8, !dbg !5198
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.474, i32 noundef 36, ptr noundef %call.i93) #8, !dbg !5199
  call void @llvm.dbg.value(metadata ptr %call.i93, metadata !1952, metadata !DIExpression()) #8, !dbg !5200
  %sv_refcnt.i.i = getelementptr inbounds %struct.sv, ptr %call.i93, i64 0, i32 1, !dbg !5202
  %14 = load i32, ptr %sv_refcnt.i.i, align 8, !dbg !5202
  call void @llvm.dbg.value(metadata i32 %14, metadata !1957, metadata !DIExpression()) #8, !dbg !5200
  %cmp.i.i = icmp ugt i32 %14, 1, !dbg !5203
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !5204

if.then.i.i:                                      ; preds = %if.end.i
  %sub.i.i = add i32 %14, -1, !dbg !5205
  store i32 %sub.i.i, ptr %sv_refcnt.i.i, align 8, !dbg !5206
  br label %do_elem, !dbg !5207

if.else.i.i:                                      ; preds = %if.end.i
  call void @Perl_sv_free2(ptr noundef nonnull %call.i93, i32 noundef %14) #8, !dbg !5208
  br label %do_elem

sw.bb8.loopexit:                                  ; preds = %while.body.us
  br label %sw.bb8, !dbg !5209

sw.bb8:                                           ; preds = %while.body.us, %sw.bb8.loopexit
  %is_hash.3 = phi i8 [ 0, %sw.bb8.loopexit ], [ 1, %while.body.us ], !dbg !5127
  call void @llvm.dbg.value(metadata i8 %is_hash.3, metadata !5113, metadata !DIExpression()), !dbg !5127
  %incdec.ptr9 = getelementptr inbounds %union.UNOP_AUX_item, ptr %items.0199.us, i64 1, !dbg !5209
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9, metadata !5109, metadata !DIExpression()), !dbg !5127
  %15 = load ptr, ptr %incdec.ptr9, align 8, !dbg !5210
  call void @llvm.dbg.value(metadata ptr %15, metadata !5111, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata ptr %15, metadata !5182, metadata !DIExpression()) #8, !dbg !5211
  call void @llvm.dbg.value(metadata ptr %call, metadata !5187, metadata !DIExpression()) #8, !dbg !5211
  %tobool.not.i94 = icmp eq ptr %15, null, !dbg !5213
  br i1 %tobool.not.i94, label %if.then.i95, label %if.end.i99, !dbg !5214

if.then.i95:                                      ; preds = %sw.bb8
  call void @Perl_sv_catpvn_flags(ptr noundef %call, ptr noundef nonnull @.str.473, i64 noundef 8, i32 noundef 0) #8, !dbg !5215
  br label %sw.bb14, !dbg !5216

if.end.i99:                                       ; preds = %sw.bb8
  %call.i96 = call ptr @Perl_newSV(i64 noundef 0) #8, !dbg !5217
  call void @llvm.dbg.value(metadata ptr %call.i96, metadata !5188, metadata !DIExpression()) #8, !dbg !5211
  call void @Perl_gv_fullname4(ptr noundef %call.i96, ptr noundef nonnull %15, ptr noundef null, i1 noundef zeroext false) #8, !dbg !5218
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.474, i32 noundef 36, ptr noundef %call.i96) #8, !dbg !5219
  call void @llvm.dbg.value(metadata ptr %call.i96, metadata !1952, metadata !DIExpression()) #8, !dbg !5220
  %sv_refcnt.i.i97 = getelementptr inbounds %struct.sv, ptr %call.i96, i64 0, i32 1, !dbg !5222
  %16 = load i32, ptr %sv_refcnt.i.i97, align 8, !dbg !5222
  call void @llvm.dbg.value(metadata i32 %16, metadata !1957, metadata !DIExpression()) #8, !dbg !5220
  %cmp.i.i98 = icmp ugt i32 %16, 1, !dbg !5223
  br i1 %cmp.i.i98, label %if.then.i.i101, label %if.else.i.i102, !dbg !5224

if.then.i.i101:                                   ; preds = %if.end.i99
  %sub.i.i100 = add i32 %16, -1, !dbg !5225
  store i32 %sub.i.i100, ptr %sv_refcnt.i.i97, align 8, !dbg !5226
  br label %sw.bb14, !dbg !5227

if.else.i.i102:                                   ; preds = %if.end.i99
  call void @Perl_sv_free2(ptr noundef nonnull %call.i96, i32 noundef %16) #8, !dbg !5228
  br label %sw.bb14

sw.bb11.loopexit:                                 ; preds = %while.body.us
  br label %sw.bb11, !dbg !5229

sw.bb11:                                          ; preds = %while.body.us, %sw.bb11.loopexit
  %is_hash.4 = phi i8 [ 0, %sw.bb11.loopexit ], [ 1, %while.body.us ], !dbg !5127
  call void @llvm.dbg.value(metadata i8 %is_hash.4, metadata !5113, metadata !DIExpression()), !dbg !5127
  %incdec.ptr12 = getelementptr inbounds %union.UNOP_AUX_item, ptr %items.0199.us, i64 1, !dbg !5229
  call void @llvm.dbg.value(metadata ptr %incdec.ptr12, metadata !5109, metadata !DIExpression()), !dbg !5127
  %17 = load i64, ptr %incdec.ptr12, align 8, !dbg !5230
  call void @llvm.dbg.value(metadata i64 %17, metadata !5138, metadata !DIExpression()) #8, !dbg !5231
  call void @llvm.dbg.value(metadata ptr %cv, metadata !5143, metadata !DIExpression()) #8, !dbg !5231
  call void @llvm.dbg.value(metadata ptr %call, metadata !5144, metadata !DIExpression()) #8, !dbg !5231
  call void @llvm.dbg.value(metadata i32 1, metadata !5145, metadata !DIExpression()) #8, !dbg !5231
  call void @llvm.dbg.value(metadata i8 0, metadata !5146, metadata !DIExpression()) #8, !dbg !5231
  call void @llvm.dbg.value(metadata i8 1, metadata !5147, metadata !DIExpression()) #8, !dbg !5231
  call void @llvm.dbg.value(metadata ptr null, metadata !5149, metadata !DIExpression()) #8, !dbg !5231
  br i1 %tobool.not.i104, label %if.else.i120, label %if.end4.i108, !dbg !5233

if.end4.i108:                                     ; preds = %sw.bb11
  %18 = load ptr, ptr %cv, align 8, !dbg !5234
  %xcv_padlist_u.i105 = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 9, !dbg !5234
  %19 = load ptr, ptr %xcv_padlist_u.i105, align 8, !dbg !5234
  call void @llvm.dbg.value(metadata ptr %19, metadata !5151, metadata !DIExpression()) #8, !dbg !5235
  %xpadl_alloc.i106 = getelementptr inbounds %struct.padlist, ptr %19, i64 0, i32 1, !dbg !5236
  %20 = load ptr, ptr %xpadl_alloc.i106, align 8, !dbg !5236
  %21 = load ptr, ptr %20, align 8, !dbg !5236
  call void @llvm.dbg.value(metadata ptr %21, metadata !5149, metadata !DIExpression()) #8, !dbg !5231
  call void @llvm.dbg.value(metadata i32 undef, metadata !5150, metadata !DIExpression()) #8, !dbg !5231
  %tobool5.not.i107 = icmp eq ptr %21, null, !dbg !5237
  br i1 %tobool5.not.i107, label %if.else.i120, label %land.lhs.true.i111, !dbg !5238

land.lhs.true.i111:                               ; preds = %if.end4.i108
  %call.i109 = call ptr @Perl_padnamelist_fetch(ptr noundef nonnull %21, i64 noundef %17) #8, !dbg !5239
  call void @llvm.dbg.value(metadata ptr %call.i109, metadata !5148, metadata !DIExpression()) #8, !dbg !5231
  %tobool6.not.i110 = icmp eq ptr %call.i109, null, !dbg !5240
  br i1 %tobool6.not.i110, label %if.else.i120, label %if.then7.i119, !dbg !5241

if.then7.i119:                                    ; preds = %land.lhs.true.i111
  %22 = load ptr, ptr %call, align 8, !dbg !5242
  %xpv_cur.i112 = getelementptr inbounds %struct.xpv, ptr %22, i64 0, i32 2, !dbg !5242
  %23 = load i64, ptr %xpv_cur.i112, align 8, !dbg !5242
  call void @llvm.dbg.value(metadata i64 %23, metadata !5154, metadata !DIExpression()) #8, !dbg !5243
  %xpadn_len.i113 = getelementptr inbounds %struct.padname, ptr %call.i109, i64 0, i32 7, !dbg !5244
  %24 = load i8, ptr %xpadn_len.i113, align 8, !dbg !5244
  %conv9.i114 = zext i8 %24 to i64, !dbg !5244
  %sub.i115 = add nsw i64 %conv9.i114, -1, !dbg !5244
  %25 = load ptr, ptr %call.i109, align 8, !dbg !5244
  %add.ptr.i116 = getelementptr inbounds i8, ptr %25, i64 1, !dbg !5244
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %call, ptr noundef nonnull @.str.472, i32 noundef 1, i64 noundef %sub.i115, ptr noundef nonnull %add.ptr.i116) #8, !dbg !5245
  %26 = load ptr, ptr %sv_u.i117, align 8, !dbg !5246
  %arrayidx.i118 = getelementptr inbounds i8, ptr %26, i64 %23, !dbg !5246
  store i8 36, ptr %arrayidx.i118, align 1, !dbg !5247
  br label %sw.bb14, !dbg !5248

if.else.i120:                                     ; preds = %land.lhs.true.i111, %if.end4.i108, %sw.bb11
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.384, i64 noundef %17) #8, !dbg !5249
  br label %sw.bb14

sw.bb14.loopexit:                                 ; preds = %while.body.us, %while.body.us
  br label %sw.bb14, !dbg !5250

sw.bb14:                                          ; preds = %while.body.us, %while.body.us, %sw.bb14.loopexit, %if.else.i120, %if.then7.i119, %if.else.i.i102, %if.then.i.i101, %if.then.i95
  %is_hash.5 = phi i8 [ %is_hash.3, %if.then.i95 ], [ %is_hash.3, %if.then.i.i101 ], [ %is_hash.3, %if.else.i.i102 ], [ %is_hash.4, %if.then7.i119 ], [ %is_hash.4, %if.else.i120 ], [ 0, %sw.bb14.loopexit ], [ 1, %while.body.us ], [ 1, %while.body.us ], !dbg !5127
  %items.1 = phi ptr [ %incdec.ptr9, %if.then.i95 ], [ %incdec.ptr9, %if.then.i.i101 ], [ %incdec.ptr9, %if.else.i.i102 ], [ %incdec.ptr12, %if.then7.i119 ], [ %incdec.ptr12, %if.else.i120 ], [ %items.0199.us, %sw.bb14.loopexit ], [ %items.0199.us, %while.body.us ], [ %items.0199.us, %while.body.us ], !dbg !5127
  call void @llvm.dbg.value(metadata ptr %items.1, metadata !5109, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 %is_hash.5, metadata !5113, metadata !DIExpression()), !dbg !5127
  %inc = add nsw i32 %derefs.0.ph229, 1, !dbg !5250
  call void @llvm.dbg.value(metadata i32 %inc, metadata !5114, metadata !DIExpression()), !dbg !5127
  %tobool15.not = icmp eq i32 %derefs.0.ph229, 0, !dbg !5250
  br i1 %tobool15.not, label %if.then, label %do_elem, !dbg !5252

if.then:                                          ; preds = %sw.bb14
  call void @Perl_sv_catpvn_flags(ptr noundef %call, ptr noundef nonnull @.str.385, i64 noundef 2, i32 noundef 0) #8, !dbg !5253
  br label %do_elem, !dbg !5253

do_elem:                                          ; preds = %if.else.i.i, %if.then.i.i, %if.then.i, %if.else.i, %if.then7.i, %sw.bb14, %if.then
  %is_hash.6 = phi i8 [ %is_hash.5, %sw.bb14 ], [ %is_hash.5, %if.then ], [ %is_hash.1, %if.then7.i ], [ %is_hash.1, %if.else.i ], [ %is_hash.2, %if.then.i ], [ %is_hash.2, %if.then.i.i ], [ %is_hash.2, %if.else.i.i ], !dbg !5254
  %derefs.1 = phi i32 [ %inc, %sw.bb14 ], [ 1, %if.then ], [ 1, %if.then7.i ], [ 1, %if.else.i ], [ 1, %if.then.i ], [ 1, %if.then.i.i ], [ 1, %if.else.i.i ], !dbg !5255
  %items.2 = phi ptr [ %items.1, %sw.bb14 ], [ %items.1, %if.then ], [ %incdec.ptr3, %if.then7.i ], [ %incdec.ptr3, %if.else.i ], [ %incdec.ptr6, %if.then.i ], [ %incdec.ptr6, %if.then.i.i ], [ %incdec.ptr6, %if.else.i.i ], !dbg !5127
  call void @llvm.dbg.value(metadata ptr %items.2, metadata !5109, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i32 %derefs.1, metadata !5114, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 %is_hash.6, metadata !5113, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.label(metadata !5126), !dbg !5256
  %and16 = and i64 %actions.0198.us, 48, !dbg !5257
  %cmp = icmp eq i64 %and16, 0, !dbg !5259
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !5260

if.then17:                                        ; preds = %do_elem
  call void @Perl_sv_catpvn_flags(ptr noundef %call, ptr noundef nonnull @.str.385, i64 noundef 2, i32 noundef 0) #8, !dbg !5261
  call void @llvm.dbg.value(metadata i8 1, metadata !5112, metadata !DIExpression()), !dbg !5127
  br label %while.end, !dbg !5263

if.end18:                                         ; preds = %do_elem
  %27 = and i8 %is_hash.6, 1, !dbg !5264
  %tobool19.not = icmp eq i8 %27, 0, !dbg !5264
  %cond = select i1 %tobool19.not, ptr @.str.387, ptr @.str.386, !dbg !5264
  call void @Perl_sv_catpvn_flags(ptr noundef %call, ptr noundef nonnull %cond, i64 noundef 1, i32 noundef 0) #8, !dbg !5264
  switch i64 %and16, label %sw.epilog49 [
    i64 16, label %sw.bb21
    i64 32, label %sw.bb36
    i64 48, label %sw.bb38
  ], !dbg !5265

sw.bb21:                                          ; preds = %if.end18
  %incdec.ptr34 = getelementptr inbounds %union.UNOP_AUX_item, ptr %items.2, i64 1, !dbg !5266
  call void @llvm.dbg.value(metadata ptr %incdec.ptr34, metadata !5109, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata ptr %incdec.ptr34, metadata !5109, metadata !DIExpression()), !dbg !5127
  br i1 %tobool19.not, label %if.else33, label %if.then23, !dbg !5267

if.then23:                                        ; preds = %sw.bb21
  %28 = load ptr, ptr %incdec.ptr34, align 8, !dbg !5268
  call void @llvm.dbg.value(metadata ptr %28, metadata !5111, metadata !DIExpression()), !dbg !5127
  %tobool25.not = icmp eq ptr %28, null, !dbg !5269
  br i1 %tobool25.not, label %if.then26, label %if.else, !dbg !5270

if.then26:                                        ; preds = %if.then23
  call void @Perl_sv_catpvn_flags(ptr noundef %call, ptr noundef nonnull @.str.388, i64 noundef 3, i32 noundef 0) #8, !dbg !5271
  br label %sw.epilog49, !dbg !5271

if.else:                                          ; preds = %if.then23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cur) #8, !dbg !5272
  %sv_flags = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 2, !dbg !5273
  %29 = load i32, ptr %sv_flags, align 4, !dbg !5273
  %and27 = and i32 %29, 2098176, !dbg !5273
  %cmp28 = icmp eq i32 %and27, 1024, !dbg !5273
  br i1 %cmp28, label %cond.true, label %cond.false, !dbg !5273

cond.true:                                        ; preds = %if.else
  %30 = load ptr, ptr %28, align 8, !dbg !5273
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2, !dbg !5273
  %31 = load i64, ptr %xpv_cur, align 8, !dbg !5273
  call void @llvm.dbg.value(metadata i64 %31, metadata !5116, metadata !DIExpression()), !dbg !5274
  store i64 %31, ptr %cur, align 8, !dbg !5273
  %sv_u = getelementptr inbounds %struct.sv, ptr %28, i64 0, i32 3, !dbg !5273
  %32 = load ptr, ptr %sv_u, align 8, !dbg !5273
  br label %cond.end, !dbg !5273

cond.false:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %cur, metadata !5116, metadata !DIExpression(DW_OP_deref)), !dbg !5274
  %call29 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %28, ptr noundef nonnull %cur, i32 noundef 2) #8, !dbg !5273
  %.pre = load i64, ptr %cur, align 8, !dbg !5275
  br label %cond.end, !dbg !5273

cond.end:                                         ; preds = %cond.false, %cond.true
  %33 = phi i64 [ %31, %cond.true ], [ %.pre, %cond.false ], !dbg !5275
  %cond30 = phi ptr [ %32, %cond.true ], [ %call29, %cond.false ], !dbg !5273
  call void @llvm.dbg.value(metadata ptr %cond30, metadata !5124, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.value(metadata i64 %33, metadata !5116, metadata !DIExpression()), !dbg !5274
  call void @llvm.dbg.value(metadata ptr %call, metadata !1644, metadata !DIExpression()) #8, !dbg !5276
  call void @llvm.dbg.value(metadata ptr %cond30, metadata !1645, metadata !DIExpression()) #8, !dbg !5276
  call void @llvm.dbg.value(metadata i64 %33, metadata !1646, metadata !DIExpression()) #8, !dbg !5276
  call void @llvm.dbg.value(metadata i64 30, metadata !1647, metadata !DIExpression()) #8, !dbg !5276
  call void @llvm.dbg.value(metadata ptr null, metadata !1648, metadata !DIExpression()) #8, !dbg !5276
  call void @llvm.dbg.value(metadata ptr null, metadata !1649, metadata !DIExpression()) #8, !dbg !5276
  call void @llvm.dbg.value(metadata i32 16387, metadata !1650, metadata !DIExpression()) #8, !dbg !5276
  call void @llvm.dbg.value(metadata ptr @.str.7, metadata !1651, metadata !DIExpression()) #8, !dbg !5276
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %escaped.i) #8, !dbg !5278
  call void @llvm.dbg.value(metadata i64 0, metadata !1653, metadata !DIExpression()) #8, !dbg !5276
  call void @llvm.dbg.value(metadata i64 undef, metadata !1654, metadata !DIExpression()) #8, !dbg !5276
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %call, ptr noundef nonnull @.str.6, i32 noundef 34) #8, !dbg !5279
  call void @llvm.dbg.value(metadata ptr %escaped.i, metadata !1652, metadata !DIExpression(DW_OP_deref)) #8, !dbg !5276
  %call27.i = call ptr @Perl_pv_escape(ptr noundef nonnull %call, ptr noundef %cond30, i64 noundef %33, i64 noundef 30, ptr noundef nonnull %escaped.i, i32 noundef 16387) #8, !dbg !5280
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %call, ptr noundef nonnull @.str.6, i32 noundef 34) #8, !dbg !5281
  %34 = load i64, ptr %escaped.i, align 8
  %cmp40.i = icmp ult i64 %34, %33
  call void @llvm.dbg.value(metadata i64 %34, metadata !1652, metadata !DIExpression()) #8, !dbg !5276
  br i1 %cmp40.i, label %if.then42.i, label %Perl_pv_pretty.exit, !dbg !5282

if.then42.i:                                      ; preds = %cond.end
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %call, ptr noundef nonnull @.str.9, i64 noundef 3, i32 noundef 2) #8, !dbg !5283
  br label %Perl_pv_pretty.exit, !dbg !5283

Perl_pv_pretty.exit:                              ; preds = %cond.end, %if.then42.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %escaped.i) #8, !dbg !5284
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cur) #8, !dbg !5285
  br label %sw.epilog49

if.else33:                                        ; preds = %sw.bb21
  %35 = load i64, ptr %incdec.ptr34, align 8, !dbg !5286
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.389, i64 noundef %35) #8, !dbg !5287
  br label %sw.epilog49

sw.bb36:                                          ; preds = %if.end18
  %incdec.ptr37 = getelementptr inbounds %union.UNOP_AUX_item, ptr %items.2, i64 1, !dbg !5288
  call void @llvm.dbg.value(metadata ptr %incdec.ptr37, metadata !5109, metadata !DIExpression()), !dbg !5127
  %36 = load i64, ptr %incdec.ptr37, align 8, !dbg !5289
  call void @llvm.dbg.value(metadata i64 %36, metadata !5138, metadata !DIExpression()) #8, !dbg !5290
  call void @llvm.dbg.value(metadata ptr %cv, metadata !5143, metadata !DIExpression()) #8, !dbg !5290
  call void @llvm.dbg.value(metadata ptr %call, metadata !5144, metadata !DIExpression()) #8, !dbg !5290
  call void @llvm.dbg.value(metadata i32 1, metadata !5145, metadata !DIExpression()) #8, !dbg !5290
  call void @llvm.dbg.value(metadata i8 0, metadata !5146, metadata !DIExpression()) #8, !dbg !5290
  call void @llvm.dbg.value(metadata i8 1, metadata !5147, metadata !DIExpression()) #8, !dbg !5290
  call void @llvm.dbg.value(metadata ptr null, metadata !5149, metadata !DIExpression()) #8, !dbg !5290
  br i1 %tobool.not.i104, label %if.else.i143, label %if.end4.i131, !dbg !5292

if.end4.i131:                                     ; preds = %sw.bb36
  %37 = load ptr, ptr %cv, align 8, !dbg !5293
  %xcv_padlist_u.i128 = getelementptr inbounds %struct.xpvcv, ptr %37, i64 0, i32 9, !dbg !5293
  %38 = load ptr, ptr %xcv_padlist_u.i128, align 8, !dbg !5293
  call void @llvm.dbg.value(metadata ptr %38, metadata !5151, metadata !DIExpression()) #8, !dbg !5294
  %xpadl_alloc.i129 = getelementptr inbounds %struct.padlist, ptr %38, i64 0, i32 1, !dbg !5295
  %39 = load ptr, ptr %xpadl_alloc.i129, align 8, !dbg !5295
  %40 = load ptr, ptr %39, align 8, !dbg !5295
  call void @llvm.dbg.value(metadata ptr %40, metadata !5149, metadata !DIExpression()) #8, !dbg !5290
  call void @llvm.dbg.value(metadata i32 undef, metadata !5150, metadata !DIExpression()) #8, !dbg !5290
  %tobool5.not.i130 = icmp eq ptr %40, null, !dbg !5296
  br i1 %tobool5.not.i130, label %if.else.i143, label %land.lhs.true.i134, !dbg !5297

land.lhs.true.i134:                               ; preds = %if.end4.i131
  %call.i132 = call ptr @Perl_padnamelist_fetch(ptr noundef nonnull %40, i64 noundef %36) #8, !dbg !5298
  call void @llvm.dbg.value(metadata ptr %call.i132, metadata !5148, metadata !DIExpression()) #8, !dbg !5290
  %tobool6.not.i133 = icmp eq ptr %call.i132, null, !dbg !5299
  br i1 %tobool6.not.i133, label %if.else.i143, label %if.then7.i142, !dbg !5300

if.then7.i142:                                    ; preds = %land.lhs.true.i134
  %41 = load ptr, ptr %call, align 8, !dbg !5301
  %xpv_cur.i135 = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2, !dbg !5301
  %42 = load i64, ptr %xpv_cur.i135, align 8, !dbg !5301
  call void @llvm.dbg.value(metadata i64 %42, metadata !5154, metadata !DIExpression()) #8, !dbg !5302
  %xpadn_len.i136 = getelementptr inbounds %struct.padname, ptr %call.i132, i64 0, i32 7, !dbg !5303
  %43 = load i8, ptr %xpadn_len.i136, align 8, !dbg !5303
  %conv9.i137 = zext i8 %43 to i64, !dbg !5303
  %sub.i138 = add nsw i64 %conv9.i137, -1, !dbg !5303
  %44 = load ptr, ptr %call.i132, align 8, !dbg !5303
  %add.ptr.i139 = getelementptr inbounds i8, ptr %44, i64 1, !dbg !5303
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef nonnull %call, ptr noundef nonnull @.str.472, i32 noundef 1, i64 noundef %sub.i138, ptr noundef nonnull %add.ptr.i139) #8, !dbg !5304
  %45 = load ptr, ptr %sv_u.i117, align 8, !dbg !5305
  %arrayidx.i141 = getelementptr inbounds i8, ptr %45, i64 %42, !dbg !5305
  store i8 36, ptr %arrayidx.i141, align 1, !dbg !5306
  br label %sw.epilog49, !dbg !5307

if.else.i143:                                     ; preds = %land.lhs.true.i134, %if.end4.i131, %sw.bb36
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.384, i64 noundef %36) #8, !dbg !5308
  br label %sw.epilog49

sw.bb38:                                          ; preds = %if.end18
  %incdec.ptr39 = getelementptr inbounds %union.UNOP_AUX_item, ptr %items.2, i64 1, !dbg !5309
  call void @llvm.dbg.value(metadata ptr %incdec.ptr39, metadata !5109, metadata !DIExpression()), !dbg !5127
  %46 = load ptr, ptr %incdec.ptr39, align 8, !dbg !5310
  call void @llvm.dbg.value(metadata ptr %46, metadata !5111, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata ptr %46, metadata !5182, metadata !DIExpression()) #8, !dbg !5311
  call void @llvm.dbg.value(metadata ptr %call, metadata !5187, metadata !DIExpression()) #8, !dbg !5311
  %tobool.not.i145 = icmp eq ptr %46, null, !dbg !5313
  br i1 %tobool.not.i145, label %if.then.i146, label %if.end.i150, !dbg !5314

if.then.i146:                                     ; preds = %sw.bb38
  call void @Perl_sv_catpvn_flags(ptr noundef %call, ptr noundef nonnull @.str.473, i64 noundef 8, i32 noundef 0) #8, !dbg !5315
  br label %sw.epilog49, !dbg !5316

if.end.i150:                                      ; preds = %sw.bb38
  %call.i147 = call ptr @Perl_newSV(i64 noundef 0) #8, !dbg !5317
  call void @llvm.dbg.value(metadata ptr %call.i147, metadata !5188, metadata !DIExpression()) #8, !dbg !5311
  call void @Perl_gv_fullname4(ptr noundef %call.i147, ptr noundef nonnull %46, ptr noundef null, i1 noundef zeroext false) #8, !dbg !5318
  call void (ptr, ptr, ...) @Perl_sv_catpvf(ptr noundef %call, ptr noundef nonnull @.str.474, i32 noundef 36, ptr noundef %call.i147) #8, !dbg !5319
  call void @llvm.dbg.value(metadata ptr %call.i147, metadata !1952, metadata !DIExpression()) #8, !dbg !5320
  %sv_refcnt.i.i148 = getelementptr inbounds %struct.sv, ptr %call.i147, i64 0, i32 1, !dbg !5322
  %47 = load i32, ptr %sv_refcnt.i.i148, align 8, !dbg !5322
  call void @llvm.dbg.value(metadata i32 %47, metadata !1957, metadata !DIExpression()) #8, !dbg !5320
  %cmp.i.i149 = icmp ugt i32 %47, 1, !dbg !5323
  br i1 %cmp.i.i149, label %if.then.i.i152, label %if.else.i.i153, !dbg !5324

if.then.i.i152:                                   ; preds = %if.end.i150
  %sub.i.i151 = add i32 %47, -1, !dbg !5325
  store i32 %sub.i.i151, ptr %sv_refcnt.i.i148, align 8, !dbg !5326
  br label %sw.epilog49, !dbg !5327

if.else.i.i153:                                   ; preds = %if.end.i150
  call void @Perl_sv_free2(ptr noundef nonnull %call.i147, i32 noundef %47) #8, !dbg !5328
  br label %sw.epilog49

sw.default:                                       ; preds = %while.body.us
  %call46 = call ptr @Perl_PerlIO_stderr() #8, !dbg !5329
  %conv = trunc i64 %and.us to i32, !dbg !5330
  %call48 = call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call46, ptr noundef nonnull @.str.392, i32 noundef %conv) #8, !dbg !5331
  call void @llvm.dbg.value(metadata i8 1, metadata !5112, metadata !DIExpression()), !dbg !5127
  br label %while.end, !dbg !5332

sw.epilog49:                                      ; preds = %if.end18, %if.then26, %Perl_pv_pretty.exit, %if.else33, %if.then7.i142, %if.else.i143, %if.then.i146, %if.then.i.i152, %if.else.i.i153
  %items.3 = phi ptr [ %items.2, %if.end18 ], [ %incdec.ptr34, %Perl_pv_pretty.exit ], [ %incdec.ptr34, %if.then26 ], [ %incdec.ptr34, %if.else33 ], [ %incdec.ptr37, %if.then7.i142 ], [ %incdec.ptr37, %if.else.i143 ], [ %incdec.ptr39, %if.then.i146 ], [ %incdec.ptr39, %if.then.i.i152 ], [ %incdec.ptr39, %if.else.i.i153 ], !dbg !5127
  call void @llvm.dbg.value(metadata ptr %items.3, metadata !5109, metadata !DIExpression()), !dbg !5127
  %cond41 = select i1 %tobool19.not, ptr @.str.391, ptr @.str.390, !dbg !5333
  call void @Perl_sv_catpvn_flags(ptr noundef %call, ptr noundef nonnull %cond41, i64 noundef 1, i32 noundef 0) #8, !dbg !5333
  %and42 = and i64 %actions.0198.us, 64, !dbg !5334
  %tobool43.not = icmp eq i64 %and42, 0, !dbg !5334
  %spec.select = select i1 %tobool43.not, i8 %last.0.ph222, i8 1, !dbg !5336
  call void @llvm.dbg.value(metadata i32 %derefs.1, metadata !5114, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 0, metadata !5113, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !5112, metadata !DIExpression()), !dbg !5127
  %shr = lshr i64 %actions.0198.us, 7, !dbg !5337
  call void @llvm.dbg.value(metadata i64 %shr, metadata !5110, metadata !DIExpression()), !dbg !5127
  %48 = and i8 %spec.select, 1
  %tobool.not = icmp eq i8 %48, 0
  br i1 %tobool.not, label %while.body.us.preheader, label %while.end, !dbg !5131, !llvm.loop !5338

while.end:                                        ; preds = %sw.epilog49, %if.then17, %sw.default
  ret ptr %call, !dbg !5340
}

declare !dbg !5341 void @Perl_deb(ptr noundef, ...) local_unnamed_addr #4

declare !dbg !5344 ptr @Perl_newSV(i64 noundef) local_unnamed_addr #4

declare !dbg !5347 ptr @Perl_cv_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @Perl_watch(ptr noundef %addr) local_unnamed_addr #0 !dbg !5350 {
entry:
  call void @llvm.dbg.value(metadata ptr %addr, metadata !5354, metadata !DIExpression()), !dbg !5355
  store ptr %addr, ptr @PL_watchaddr, align 8, !dbg !5356
  %0 = load ptr, ptr %addr, align 8, !dbg !5357
  store ptr %0, ptr @PL_watchok, align 8, !dbg !5358
  %call = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !5359
  %1 = load ptr, ptr @PL_watchaddr, align 8, !dbg !5360
  %2 = ptrtoint ptr %1 to i64, !dbg !5360
  %3 = load ptr, ptr @PL_watchok, align 8, !dbg !5361
  %4 = ptrtoint ptr %3 to i64, !dbg !5361
  %call1 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call, ptr noundef nonnull @.str.397, i64 noundef %2, i64 noundef %4) #8, !dbg !5362
  ret void, !dbg !5363
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_debprofdump() local_unnamed_addr #0 !dbg !5364 {
entry:
  %0 = load ptr, ptr @PL_profiledata, align 8, !dbg !5367
  %tobool.not = icmp eq ptr %0, null, !dbg !5367
  br i1 %tobool.not, label %cleanup, label %for.body, !dbg !5369

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi ptr [ %6, %for.inc ], [ %0, %entry ], !dbg !5370
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !5366, metadata !DIExpression()), !dbg !5375
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %indvars.iv, !dbg !5370
  %2 = load i32, ptr %arrayidx, align 4, !dbg !5370
  %tobool1.not = icmp eq i32 %2, 0, !dbg !5370
  br i1 %tobool1.not, label %for.inc, label %if.then2, !dbg !5376

if.then2:                                         ; preds = %for.body
  %call = tail call ptr @Perl_PerlIO_stderr() #8, !dbg !5377
  %3 = load ptr, ptr @PL_profiledata, align 8, !dbg !5378
  %arrayidx4 = getelementptr inbounds i32, ptr %3, i64 %indvars.iv, !dbg !5378
  %4 = load i32, ptr %arrayidx4, align 4, !dbg !5378
  %conv = zext i32 %4 to i64, !dbg !5379
  %arrayidx6 = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %indvars.iv, !dbg !5380
  %5 = load ptr, ptr %arrayidx6, align 8, !dbg !5380
  %call7 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %call, ptr noundef nonnull @.str.398, i64 noundef %conv, ptr noundef %5) #8, !dbg !5381
  %.pre = load ptr, ptr @PL_profiledata, align 8, !dbg !5370
  br label %for.inc, !dbg !5381

for.inc:                                          ; preds = %for.body, %if.then2
  %6 = phi ptr [ %1, %for.body ], [ %.pre, %if.then2 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !5382
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !5366, metadata !DIExpression()), !dbg !5375
  %exitcond.not = icmp eq i64 %indvars.iv.next, 396, !dbg !5383
  br i1 %exitcond.not, label %cleanup, label %for.body, !dbg !5384, !llvm.loop !5385

cleanup:                                          ; preds = %for.inc, %entry
  ret void, !dbg !5387
}

declare !dbg !5388 ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #4

declare !dbg !5389 void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !5392 ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #4

declare !dbg !5395 ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #4

declare !dbg !5398 ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #4

declare !dbg !5402 ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !5406 i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !5409 i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #4

declare !dbg !5412 ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare ptr @llvm.load.relative.i64(ptr, i64) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1456, !1457, !1458, !1459, !1460, !1461}
!llvm.ident = !{!1462}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pmflags_flags_names", scope: !2, file: !1392, line: 695, type: !1453, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !469, globals: !1389, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/dump.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "555ebf165cb30a2f21aa605d1125c463")
!4 = !{!5, !26, !426, !434}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 132, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "apps/500.perlbench_r/src/sv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e8ddee5f0a5032210b880c8e95bcea58")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!9 = !DIEnumerator(name: "SVt_NULL", value: 0)
!10 = !DIEnumerator(name: "SVt_IV", value: 1)
!11 = !DIEnumerator(name: "SVt_NV", value: 2)
!12 = !DIEnumerator(name: "SVt_PV", value: 3)
!13 = !DIEnumerator(name: "SVt_INVLIST", value: 4)
!14 = !DIEnumerator(name: "SVt_PVIV", value: 5)
!15 = !DIEnumerator(name: "SVt_PVNV", value: 6)
!16 = !DIEnumerator(name: "SVt_PVMG", value: 7)
!17 = !DIEnumerator(name: "SVt_REGEXP", value: 8)
!18 = !DIEnumerator(name: "SVt_PVGV", value: 9)
!19 = !DIEnumerator(name: "SVt_PVLV", value: 10)
!20 = !DIEnumerator(name: "SVt_PVAV", value: 11)
!21 = !DIEnumerator(name: "SVt_PVHV", value: 12)
!22 = !DIEnumerator(name: "SVt_PVCV", value: 13)
!23 = !DIEnumerator(name: "SVt_PVFM", value: 14)
!24 = !DIEnumerator(name: "SVt_PVIO", value: 15)
!25 = !DIEnumerator(name: "SVt_LAST", value: 16)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opcode", file: !27, line: 16, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "apps/500.perlbench_r/src/opnames.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1f3c200effbe760f517f3ab2ea52b45")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!29 = !DIEnumerator(name: "OP_NULL", value: 0)
!30 = !DIEnumerator(name: "OP_STUB", value: 1)
!31 = !DIEnumerator(name: "OP_SCALAR", value: 2)
!32 = !DIEnumerator(name: "OP_PUSHMARK", value: 3)
!33 = !DIEnumerator(name: "OP_WANTARRAY", value: 4)
!34 = !DIEnumerator(name: "OP_CONST", value: 5)
!35 = !DIEnumerator(name: "OP_GVSV", value: 6)
!36 = !DIEnumerator(name: "OP_GV", value: 7)
!37 = !DIEnumerator(name: "OP_GELEM", value: 8)
!38 = !DIEnumerator(name: "OP_PADSV", value: 9)
!39 = !DIEnumerator(name: "OP_PADAV", value: 10)
!40 = !DIEnumerator(name: "OP_PADHV", value: 11)
!41 = !DIEnumerator(name: "OP_PADANY", value: 12)
!42 = !DIEnumerator(name: "OP_PUSHRE", value: 13)
!43 = !DIEnumerator(name: "OP_RV2GV", value: 14)
!44 = !DIEnumerator(name: "OP_RV2SV", value: 15)
!45 = !DIEnumerator(name: "OP_AV2ARYLEN", value: 16)
!46 = !DIEnumerator(name: "OP_RV2CV", value: 17)
!47 = !DIEnumerator(name: "OP_ANONCODE", value: 18)
!48 = !DIEnumerator(name: "OP_PROTOTYPE", value: 19)
!49 = !DIEnumerator(name: "OP_REFGEN", value: 20)
!50 = !DIEnumerator(name: "OP_SREFGEN", value: 21)
!51 = !DIEnumerator(name: "OP_REF", value: 22)
!52 = !DIEnumerator(name: "OP_BLESS", value: 23)
!53 = !DIEnumerator(name: "OP_BACKTICK", value: 24)
!54 = !DIEnumerator(name: "OP_GLOB", value: 25)
!55 = !DIEnumerator(name: "OP_READLINE", value: 26)
!56 = !DIEnumerator(name: "OP_RCATLINE", value: 27)
!57 = !DIEnumerator(name: "OP_REGCMAYBE", value: 28)
!58 = !DIEnumerator(name: "OP_REGCRESET", value: 29)
!59 = !DIEnumerator(name: "OP_REGCOMP", value: 30)
!60 = !DIEnumerator(name: "OP_MATCH", value: 31)
!61 = !DIEnumerator(name: "OP_QR", value: 32)
!62 = !DIEnumerator(name: "OP_SUBST", value: 33)
!63 = !DIEnumerator(name: "OP_SUBSTCONT", value: 34)
!64 = !DIEnumerator(name: "OP_TRANS", value: 35)
!65 = !DIEnumerator(name: "OP_TRANSR", value: 36)
!66 = !DIEnumerator(name: "OP_SASSIGN", value: 37)
!67 = !DIEnumerator(name: "OP_AASSIGN", value: 38)
!68 = !DIEnumerator(name: "OP_CHOP", value: 39)
!69 = !DIEnumerator(name: "OP_SCHOP", value: 40)
!70 = !DIEnumerator(name: "OP_CHOMP", value: 41)
!71 = !DIEnumerator(name: "OP_SCHOMP", value: 42)
!72 = !DIEnumerator(name: "OP_DEFINED", value: 43)
!73 = !DIEnumerator(name: "OP_UNDEF", value: 44)
!74 = !DIEnumerator(name: "OP_STUDY", value: 45)
!75 = !DIEnumerator(name: "OP_POS", value: 46)
!76 = !DIEnumerator(name: "OP_PREINC", value: 47)
!77 = !DIEnumerator(name: "OP_I_PREINC", value: 48)
!78 = !DIEnumerator(name: "OP_PREDEC", value: 49)
!79 = !DIEnumerator(name: "OP_I_PREDEC", value: 50)
!80 = !DIEnumerator(name: "OP_POSTINC", value: 51)
!81 = !DIEnumerator(name: "OP_I_POSTINC", value: 52)
!82 = !DIEnumerator(name: "OP_POSTDEC", value: 53)
!83 = !DIEnumerator(name: "OP_I_POSTDEC", value: 54)
!84 = !DIEnumerator(name: "OP_POW", value: 55)
!85 = !DIEnumerator(name: "OP_MULTIPLY", value: 56)
!86 = !DIEnumerator(name: "OP_I_MULTIPLY", value: 57)
!87 = !DIEnumerator(name: "OP_DIVIDE", value: 58)
!88 = !DIEnumerator(name: "OP_I_DIVIDE", value: 59)
!89 = !DIEnumerator(name: "OP_MODULO", value: 60)
!90 = !DIEnumerator(name: "OP_I_MODULO", value: 61)
!91 = !DIEnumerator(name: "OP_REPEAT", value: 62)
!92 = !DIEnumerator(name: "OP_ADD", value: 63)
!93 = !DIEnumerator(name: "OP_I_ADD", value: 64)
!94 = !DIEnumerator(name: "OP_SUBTRACT", value: 65)
!95 = !DIEnumerator(name: "OP_I_SUBTRACT", value: 66)
!96 = !DIEnumerator(name: "OP_CONCAT", value: 67)
!97 = !DIEnumerator(name: "OP_STRINGIFY", value: 68)
!98 = !DIEnumerator(name: "OP_LEFT_SHIFT", value: 69)
!99 = !DIEnumerator(name: "OP_RIGHT_SHIFT", value: 70)
!100 = !DIEnumerator(name: "OP_LT", value: 71)
!101 = !DIEnumerator(name: "OP_I_LT", value: 72)
!102 = !DIEnumerator(name: "OP_GT", value: 73)
!103 = !DIEnumerator(name: "OP_I_GT", value: 74)
!104 = !DIEnumerator(name: "OP_LE", value: 75)
!105 = !DIEnumerator(name: "OP_I_LE", value: 76)
!106 = !DIEnumerator(name: "OP_GE", value: 77)
!107 = !DIEnumerator(name: "OP_I_GE", value: 78)
!108 = !DIEnumerator(name: "OP_EQ", value: 79)
!109 = !DIEnumerator(name: "OP_I_EQ", value: 80)
!110 = !DIEnumerator(name: "OP_NE", value: 81)
!111 = !DIEnumerator(name: "OP_I_NE", value: 82)
!112 = !DIEnumerator(name: "OP_NCMP", value: 83)
!113 = !DIEnumerator(name: "OP_I_NCMP", value: 84)
!114 = !DIEnumerator(name: "OP_SLT", value: 85)
!115 = !DIEnumerator(name: "OP_SGT", value: 86)
!116 = !DIEnumerator(name: "OP_SLE", value: 87)
!117 = !DIEnumerator(name: "OP_SGE", value: 88)
!118 = !DIEnumerator(name: "OP_SEQ", value: 89)
!119 = !DIEnumerator(name: "OP_SNE", value: 90)
!120 = !DIEnumerator(name: "OP_SCMP", value: 91)
!121 = !DIEnumerator(name: "OP_BIT_AND", value: 92)
!122 = !DIEnumerator(name: "OP_BIT_XOR", value: 93)
!123 = !DIEnumerator(name: "OP_BIT_OR", value: 94)
!124 = !DIEnumerator(name: "OP_NBIT_AND", value: 95)
!125 = !DIEnumerator(name: "OP_NBIT_XOR", value: 96)
!126 = !DIEnumerator(name: "OP_NBIT_OR", value: 97)
!127 = !DIEnumerator(name: "OP_SBIT_AND", value: 98)
!128 = !DIEnumerator(name: "OP_SBIT_XOR", value: 99)
!129 = !DIEnumerator(name: "OP_SBIT_OR", value: 100)
!130 = !DIEnumerator(name: "OP_NEGATE", value: 101)
!131 = !DIEnumerator(name: "OP_I_NEGATE", value: 102)
!132 = !DIEnumerator(name: "OP_NOT", value: 103)
!133 = !DIEnumerator(name: "OP_COMPLEMENT", value: 104)
!134 = !DIEnumerator(name: "OP_NCOMPLEMENT", value: 105)
!135 = !DIEnumerator(name: "OP_SCOMPLEMENT", value: 106)
!136 = !DIEnumerator(name: "OP_SMARTMATCH", value: 107)
!137 = !DIEnumerator(name: "OP_ATAN2", value: 108)
!138 = !DIEnumerator(name: "OP_SIN", value: 109)
!139 = !DIEnumerator(name: "OP_COS", value: 110)
!140 = !DIEnumerator(name: "OP_RAND", value: 111)
!141 = !DIEnumerator(name: "OP_SRAND", value: 112)
!142 = !DIEnumerator(name: "OP_EXP", value: 113)
!143 = !DIEnumerator(name: "OP_LOG", value: 114)
!144 = !DIEnumerator(name: "OP_SQRT", value: 115)
!145 = !DIEnumerator(name: "OP_INT", value: 116)
!146 = !DIEnumerator(name: "OP_HEX", value: 117)
!147 = !DIEnumerator(name: "OP_OCT", value: 118)
!148 = !DIEnumerator(name: "OP_ABS", value: 119)
!149 = !DIEnumerator(name: "OP_LENGTH", value: 120)
!150 = !DIEnumerator(name: "OP_SUBSTR", value: 121)
!151 = !DIEnumerator(name: "OP_VEC", value: 122)
!152 = !DIEnumerator(name: "OP_INDEX", value: 123)
!153 = !DIEnumerator(name: "OP_RINDEX", value: 124)
!154 = !DIEnumerator(name: "OP_SPRINTF", value: 125)
!155 = !DIEnumerator(name: "OP_FORMLINE", value: 126)
!156 = !DIEnumerator(name: "OP_ORD", value: 127)
!157 = !DIEnumerator(name: "OP_CHR", value: 128)
!158 = !DIEnumerator(name: "OP_CRYPT", value: 129)
!159 = !DIEnumerator(name: "OP_UCFIRST", value: 130)
!160 = !DIEnumerator(name: "OP_LCFIRST", value: 131)
!161 = !DIEnumerator(name: "OP_UC", value: 132)
!162 = !DIEnumerator(name: "OP_LC", value: 133)
!163 = !DIEnumerator(name: "OP_QUOTEMETA", value: 134)
!164 = !DIEnumerator(name: "OP_RV2AV", value: 135)
!165 = !DIEnumerator(name: "OP_AELEMFAST", value: 136)
!166 = !DIEnumerator(name: "OP_AELEMFAST_LEX", value: 137)
!167 = !DIEnumerator(name: "OP_AELEM", value: 138)
!168 = !DIEnumerator(name: "OP_ASLICE", value: 139)
!169 = !DIEnumerator(name: "OP_KVASLICE", value: 140)
!170 = !DIEnumerator(name: "OP_AEACH", value: 141)
!171 = !DIEnumerator(name: "OP_AKEYS", value: 142)
!172 = !DIEnumerator(name: "OP_AVALUES", value: 143)
!173 = !DIEnumerator(name: "OP_EACH", value: 144)
!174 = !DIEnumerator(name: "OP_VALUES", value: 145)
!175 = !DIEnumerator(name: "OP_KEYS", value: 146)
!176 = !DIEnumerator(name: "OP_DELETE", value: 147)
!177 = !DIEnumerator(name: "OP_EXISTS", value: 148)
!178 = !DIEnumerator(name: "OP_RV2HV", value: 149)
!179 = !DIEnumerator(name: "OP_HELEM", value: 150)
!180 = !DIEnumerator(name: "OP_HSLICE", value: 151)
!181 = !DIEnumerator(name: "OP_KVHSLICE", value: 152)
!182 = !DIEnumerator(name: "OP_MULTIDEREF", value: 153)
!183 = !DIEnumerator(name: "OP_UNPACK", value: 154)
!184 = !DIEnumerator(name: "OP_PACK", value: 155)
!185 = !DIEnumerator(name: "OP_SPLIT", value: 156)
!186 = !DIEnumerator(name: "OP_JOIN", value: 157)
!187 = !DIEnumerator(name: "OP_LIST", value: 158)
!188 = !DIEnumerator(name: "OP_LSLICE", value: 159)
!189 = !DIEnumerator(name: "OP_ANONLIST", value: 160)
!190 = !DIEnumerator(name: "OP_ANONHASH", value: 161)
!191 = !DIEnumerator(name: "OP_SPLICE", value: 162)
!192 = !DIEnumerator(name: "OP_PUSH", value: 163)
!193 = !DIEnumerator(name: "OP_POP", value: 164)
!194 = !DIEnumerator(name: "OP_SHIFT", value: 165)
!195 = !DIEnumerator(name: "OP_UNSHIFT", value: 166)
!196 = !DIEnumerator(name: "OP_SORT", value: 167)
!197 = !DIEnumerator(name: "OP_REVERSE", value: 168)
!198 = !DIEnumerator(name: "OP_GREPSTART", value: 169)
!199 = !DIEnumerator(name: "OP_GREPWHILE", value: 170)
!200 = !DIEnumerator(name: "OP_MAPSTART", value: 171)
!201 = !DIEnumerator(name: "OP_MAPWHILE", value: 172)
!202 = !DIEnumerator(name: "OP_RANGE", value: 173)
!203 = !DIEnumerator(name: "OP_FLIP", value: 174)
!204 = !DIEnumerator(name: "OP_FLOP", value: 175)
!205 = !DIEnumerator(name: "OP_AND", value: 176)
!206 = !DIEnumerator(name: "OP_OR", value: 177)
!207 = !DIEnumerator(name: "OP_XOR", value: 178)
!208 = !DIEnumerator(name: "OP_DOR", value: 179)
!209 = !DIEnumerator(name: "OP_COND_EXPR", value: 180)
!210 = !DIEnumerator(name: "OP_ANDASSIGN", value: 181)
!211 = !DIEnumerator(name: "OP_ORASSIGN", value: 182)
!212 = !DIEnumerator(name: "OP_DORASSIGN", value: 183)
!213 = !DIEnumerator(name: "OP_METHOD", value: 184)
!214 = !DIEnumerator(name: "OP_ENTERSUB", value: 185)
!215 = !DIEnumerator(name: "OP_LEAVESUB", value: 186)
!216 = !DIEnumerator(name: "OP_LEAVESUBLV", value: 187)
!217 = !DIEnumerator(name: "OP_CALLER", value: 188)
!218 = !DIEnumerator(name: "OP_WARN", value: 189)
!219 = !DIEnumerator(name: "OP_DIE", value: 190)
!220 = !DIEnumerator(name: "OP_RESET", value: 191)
!221 = !DIEnumerator(name: "OP_LINESEQ", value: 192)
!222 = !DIEnumerator(name: "OP_NEXTSTATE", value: 193)
!223 = !DIEnumerator(name: "OP_DBSTATE", value: 194)
!224 = !DIEnumerator(name: "OP_UNSTACK", value: 195)
!225 = !DIEnumerator(name: "OP_ENTER", value: 196)
!226 = !DIEnumerator(name: "OP_LEAVE", value: 197)
!227 = !DIEnumerator(name: "OP_SCOPE", value: 198)
!228 = !DIEnumerator(name: "OP_ENTERITER", value: 199)
!229 = !DIEnumerator(name: "OP_ITER", value: 200)
!230 = !DIEnumerator(name: "OP_ENTERLOOP", value: 201)
!231 = !DIEnumerator(name: "OP_LEAVELOOP", value: 202)
!232 = !DIEnumerator(name: "OP_RETURN", value: 203)
!233 = !DIEnumerator(name: "OP_LAST", value: 204)
!234 = !DIEnumerator(name: "OP_NEXT", value: 205)
!235 = !DIEnumerator(name: "OP_REDO", value: 206)
!236 = !DIEnumerator(name: "OP_DUMP", value: 207)
!237 = !DIEnumerator(name: "OP_GOTO", value: 208)
!238 = !DIEnumerator(name: "OP_EXIT", value: 209)
!239 = !DIEnumerator(name: "OP_METHOD_NAMED", value: 210)
!240 = !DIEnumerator(name: "OP_METHOD_SUPER", value: 211)
!241 = !DIEnumerator(name: "OP_METHOD_REDIR", value: 212)
!242 = !DIEnumerator(name: "OP_METHOD_REDIR_SUPER", value: 213)
!243 = !DIEnumerator(name: "OP_ENTERGIVEN", value: 214)
!244 = !DIEnumerator(name: "OP_LEAVEGIVEN", value: 215)
!245 = !DIEnumerator(name: "OP_ENTERWHEN", value: 216)
!246 = !DIEnumerator(name: "OP_LEAVEWHEN", value: 217)
!247 = !DIEnumerator(name: "OP_BREAK", value: 218)
!248 = !DIEnumerator(name: "OP_CONTINUE", value: 219)
!249 = !DIEnumerator(name: "OP_OPEN", value: 220)
!250 = !DIEnumerator(name: "OP_CLOSE", value: 221)
!251 = !DIEnumerator(name: "OP_PIPE_OP", value: 222)
!252 = !DIEnumerator(name: "OP_FILENO", value: 223)
!253 = !DIEnumerator(name: "OP_UMASK", value: 224)
!254 = !DIEnumerator(name: "OP_BINMODE", value: 225)
!255 = !DIEnumerator(name: "OP_TIE", value: 226)
!256 = !DIEnumerator(name: "OP_UNTIE", value: 227)
!257 = !DIEnumerator(name: "OP_TIED", value: 228)
!258 = !DIEnumerator(name: "OP_DBMOPEN", value: 229)
!259 = !DIEnumerator(name: "OP_DBMCLOSE", value: 230)
!260 = !DIEnumerator(name: "OP_SSELECT", value: 231)
!261 = !DIEnumerator(name: "OP_SELECT", value: 232)
!262 = !DIEnumerator(name: "OP_GETC", value: 233)
!263 = !DIEnumerator(name: "OP_READ", value: 234)
!264 = !DIEnumerator(name: "OP_ENTERWRITE", value: 235)
!265 = !DIEnumerator(name: "OP_LEAVEWRITE", value: 236)
!266 = !DIEnumerator(name: "OP_PRTF", value: 237)
!267 = !DIEnumerator(name: "OP_PRINT", value: 238)
!268 = !DIEnumerator(name: "OP_SAY", value: 239)
!269 = !DIEnumerator(name: "OP_SYSOPEN", value: 240)
!270 = !DIEnumerator(name: "OP_SYSSEEK", value: 241)
!271 = !DIEnumerator(name: "OP_SYSREAD", value: 242)
!272 = !DIEnumerator(name: "OP_SYSWRITE", value: 243)
!273 = !DIEnumerator(name: "OP_EOF", value: 244)
!274 = !DIEnumerator(name: "OP_TELL", value: 245)
!275 = !DIEnumerator(name: "OP_SEEK", value: 246)
!276 = !DIEnumerator(name: "OP_TRUNCATE", value: 247)
!277 = !DIEnumerator(name: "OP_FCNTL", value: 248)
!278 = !DIEnumerator(name: "OP_IOCTL", value: 249)
!279 = !DIEnumerator(name: "OP_FLOCK", value: 250)
!280 = !DIEnumerator(name: "OP_SEND", value: 251)
!281 = !DIEnumerator(name: "OP_RECV", value: 252)
!282 = !DIEnumerator(name: "OP_SOCKET", value: 253)
!283 = !DIEnumerator(name: "OP_SOCKPAIR", value: 254)
!284 = !DIEnumerator(name: "OP_BIND", value: 255)
!285 = !DIEnumerator(name: "OP_CONNECT", value: 256)
!286 = !DIEnumerator(name: "OP_LISTEN", value: 257)
!287 = !DIEnumerator(name: "OP_ACCEPT", value: 258)
!288 = !DIEnumerator(name: "OP_SHUTDOWN", value: 259)
!289 = !DIEnumerator(name: "OP_GSOCKOPT", value: 260)
!290 = !DIEnumerator(name: "OP_SSOCKOPT", value: 261)
!291 = !DIEnumerator(name: "OP_GETSOCKNAME", value: 262)
!292 = !DIEnumerator(name: "OP_GETPEERNAME", value: 263)
!293 = !DIEnumerator(name: "OP_LSTAT", value: 264)
!294 = !DIEnumerator(name: "OP_STAT", value: 265)
!295 = !DIEnumerator(name: "OP_FTRREAD", value: 266)
!296 = !DIEnumerator(name: "OP_FTRWRITE", value: 267)
!297 = !DIEnumerator(name: "OP_FTREXEC", value: 268)
!298 = !DIEnumerator(name: "OP_FTEREAD", value: 269)
!299 = !DIEnumerator(name: "OP_FTEWRITE", value: 270)
!300 = !DIEnumerator(name: "OP_FTEEXEC", value: 271)
!301 = !DIEnumerator(name: "OP_FTIS", value: 272)
!302 = !DIEnumerator(name: "OP_FTSIZE", value: 273)
!303 = !DIEnumerator(name: "OP_FTMTIME", value: 274)
!304 = !DIEnumerator(name: "OP_FTATIME", value: 275)
!305 = !DIEnumerator(name: "OP_FTCTIME", value: 276)
!306 = !DIEnumerator(name: "OP_FTROWNED", value: 277)
!307 = !DIEnumerator(name: "OP_FTEOWNED", value: 278)
!308 = !DIEnumerator(name: "OP_FTZERO", value: 279)
!309 = !DIEnumerator(name: "OP_FTSOCK", value: 280)
!310 = !DIEnumerator(name: "OP_FTCHR", value: 281)
!311 = !DIEnumerator(name: "OP_FTBLK", value: 282)
!312 = !DIEnumerator(name: "OP_FTFILE", value: 283)
!313 = !DIEnumerator(name: "OP_FTDIR", value: 284)
!314 = !DIEnumerator(name: "OP_FTPIPE", value: 285)
!315 = !DIEnumerator(name: "OP_FTSUID", value: 286)
!316 = !DIEnumerator(name: "OP_FTSGID", value: 287)
!317 = !DIEnumerator(name: "OP_FTSVTX", value: 288)
!318 = !DIEnumerator(name: "OP_FTLINK", value: 289)
!319 = !DIEnumerator(name: "OP_FTTTY", value: 290)
!320 = !DIEnumerator(name: "OP_FTTEXT", value: 291)
!321 = !DIEnumerator(name: "OP_FTBINARY", value: 292)
!322 = !DIEnumerator(name: "OP_CHDIR", value: 293)
!323 = !DIEnumerator(name: "OP_CHOWN", value: 294)
!324 = !DIEnumerator(name: "OP_CHROOT", value: 295)
!325 = !DIEnumerator(name: "OP_UNLINK", value: 296)
!326 = !DIEnumerator(name: "OP_CHMOD", value: 297)
!327 = !DIEnumerator(name: "OP_UTIME", value: 298)
!328 = !DIEnumerator(name: "OP_RENAME", value: 299)
!329 = !DIEnumerator(name: "OP_LINK", value: 300)
!330 = !DIEnumerator(name: "OP_SYMLINK", value: 301)
!331 = !DIEnumerator(name: "OP_READLINK", value: 302)
!332 = !DIEnumerator(name: "OP_MKDIR", value: 303)
!333 = !DIEnumerator(name: "OP_RMDIR", value: 304)
!334 = !DIEnumerator(name: "OP_OPEN_DIR", value: 305)
!335 = !DIEnumerator(name: "OP_READDIR", value: 306)
!336 = !DIEnumerator(name: "OP_TELLDIR", value: 307)
!337 = !DIEnumerator(name: "OP_SEEKDIR", value: 308)
!338 = !DIEnumerator(name: "OP_REWINDDIR", value: 309)
!339 = !DIEnumerator(name: "OP_CLOSEDIR", value: 310)
!340 = !DIEnumerator(name: "OP_FORK", value: 311)
!341 = !DIEnumerator(name: "OP_WAIT", value: 312)
!342 = !DIEnumerator(name: "OP_WAITPID", value: 313)
!343 = !DIEnumerator(name: "OP_SYSTEM", value: 314)
!344 = !DIEnumerator(name: "OP_EXEC", value: 315)
!345 = !DIEnumerator(name: "OP_KILL", value: 316)
!346 = !DIEnumerator(name: "OP_GETPPID", value: 317)
!347 = !DIEnumerator(name: "OP_GETPGRP", value: 318)
!348 = !DIEnumerator(name: "OP_SETPGRP", value: 319)
!349 = !DIEnumerator(name: "OP_GETPRIORITY", value: 320)
!350 = !DIEnumerator(name: "OP_SETPRIORITY", value: 321)
!351 = !DIEnumerator(name: "OP_TIME", value: 322)
!352 = !DIEnumerator(name: "OP_TMS", value: 323)
!353 = !DIEnumerator(name: "OP_LOCALTIME", value: 324)
!354 = !DIEnumerator(name: "OP_GMTIME", value: 325)
!355 = !DIEnumerator(name: "OP_ALARM", value: 326)
!356 = !DIEnumerator(name: "OP_SLEEP", value: 327)
!357 = !DIEnumerator(name: "OP_SHMGET", value: 328)
!358 = !DIEnumerator(name: "OP_SHMCTL", value: 329)
!359 = !DIEnumerator(name: "OP_SHMREAD", value: 330)
!360 = !DIEnumerator(name: "OP_SHMWRITE", value: 331)
!361 = !DIEnumerator(name: "OP_MSGGET", value: 332)
!362 = !DIEnumerator(name: "OP_MSGCTL", value: 333)
!363 = !DIEnumerator(name: "OP_MSGSND", value: 334)
!364 = !DIEnumerator(name: "OP_MSGRCV", value: 335)
!365 = !DIEnumerator(name: "OP_SEMOP", value: 336)
!366 = !DIEnumerator(name: "OP_SEMGET", value: 337)
!367 = !DIEnumerator(name: "OP_SEMCTL", value: 338)
!368 = !DIEnumerator(name: "OP_REQUIRE", value: 339)
!369 = !DIEnumerator(name: "OP_DOFILE", value: 340)
!370 = !DIEnumerator(name: "OP_HINTSEVAL", value: 341)
!371 = !DIEnumerator(name: "OP_ENTEREVAL", value: 342)
!372 = !DIEnumerator(name: "OP_LEAVEEVAL", value: 343)
!373 = !DIEnumerator(name: "OP_ENTERTRY", value: 344)
!374 = !DIEnumerator(name: "OP_LEAVETRY", value: 345)
!375 = !DIEnumerator(name: "OP_GHBYNAME", value: 346)
!376 = !DIEnumerator(name: "OP_GHBYADDR", value: 347)
!377 = !DIEnumerator(name: "OP_GHOSTENT", value: 348)
!378 = !DIEnumerator(name: "OP_GNBYNAME", value: 349)
!379 = !DIEnumerator(name: "OP_GNBYADDR", value: 350)
!380 = !DIEnumerator(name: "OP_GNETENT", value: 351)
!381 = !DIEnumerator(name: "OP_GPBYNAME", value: 352)
!382 = !DIEnumerator(name: "OP_GPBYNUMBER", value: 353)
!383 = !DIEnumerator(name: "OP_GPROTOENT", value: 354)
!384 = !DIEnumerator(name: "OP_GSBYNAME", value: 355)
!385 = !DIEnumerator(name: "OP_GSBYPORT", value: 356)
!386 = !DIEnumerator(name: "OP_GSERVENT", value: 357)
!387 = !DIEnumerator(name: "OP_SHOSTENT", value: 358)
!388 = !DIEnumerator(name: "OP_SNETENT", value: 359)
!389 = !DIEnumerator(name: "OP_SPROTOENT", value: 360)
!390 = !DIEnumerator(name: "OP_SSERVENT", value: 361)
!391 = !DIEnumerator(name: "OP_EHOSTENT", value: 362)
!392 = !DIEnumerator(name: "OP_ENETENT", value: 363)
!393 = !DIEnumerator(name: "OP_EPROTOENT", value: 364)
!394 = !DIEnumerator(name: "OP_ESERVENT", value: 365)
!395 = !DIEnumerator(name: "OP_GPWNAM", value: 366)
!396 = !DIEnumerator(name: "OP_GPWUID", value: 367)
!397 = !DIEnumerator(name: "OP_GPWENT", value: 368)
!398 = !DIEnumerator(name: "OP_SPWENT", value: 369)
!399 = !DIEnumerator(name: "OP_EPWENT", value: 370)
!400 = !DIEnumerator(name: "OP_GGRNAM", value: 371)
!401 = !DIEnumerator(name: "OP_GGRGID", value: 372)
!402 = !DIEnumerator(name: "OP_GGRENT", value: 373)
!403 = !DIEnumerator(name: "OP_SGRENT", value: 374)
!404 = !DIEnumerator(name: "OP_EGRENT", value: 375)
!405 = !DIEnumerator(name: "OP_GETLOGIN", value: 376)
!406 = !DIEnumerator(name: "OP_SYSCALL", value: 377)
!407 = !DIEnumerator(name: "OP_LOCK", value: 378)
!408 = !DIEnumerator(name: "OP_ONCE", value: 379)
!409 = !DIEnumerator(name: "OP_CUSTOM", value: 380)
!410 = !DIEnumerator(name: "OP_REACH", value: 381)
!411 = !DIEnumerator(name: "OP_RKEYS", value: 382)
!412 = !DIEnumerator(name: "OP_RVALUES", value: 383)
!413 = !DIEnumerator(name: "OP_COREARGS", value: 384)
!414 = !DIEnumerator(name: "OP_RUNCV", value: 385)
!415 = !DIEnumerator(name: "OP_FC", value: 386)
!416 = !DIEnumerator(name: "OP_PADCV", value: 387)
!417 = !DIEnumerator(name: "OP_INTROCV", value: 388)
!418 = !DIEnumerator(name: "OP_CLONECV", value: 389)
!419 = !DIEnumerator(name: "OP_PADRANGE", value: 390)
!420 = !DIEnumerator(name: "OP_REFASSIGN", value: 391)
!421 = !DIEnumerator(name: "OP_LVREF", value: 392)
!422 = !DIEnumerator(name: "OP_LVREFSLICE", value: 393)
!423 = !DIEnumerator(name: "OP_LVAVREF", value: 394)
!424 = !DIEnumerator(name: "OP_ANONCONST", value: 395)
!425 = !DIEnumerator(name: "OP_max", value: 396)
!426 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !427, line: 867, baseType: !7, size: 32, elements: !428)
!427 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!428 = !{!429, !430, !431, !432, !433}
!429 = !DIEnumerator(name: "XOPe_xop_ptr", value: 0)
!430 = !DIEnumerator(name: "XOPe_xop_name", value: 1)
!431 = !DIEnumerator(name: "XOPe_xop_desc", value: 2)
!432 = !DIEnumerator(name: "XOPe_xop_class", value: 4)
!433 = !DIEnumerator(name: "XOPe_xop_peep", value: 8)
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !435, line: 61, baseType: !7, size: 32, elements: !436)
!435 = !DIFile(filename: "apps/500.perlbench_r/src/mg_vtable.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e447d9af3167273e6abad74e52347050")
!436 = !{!437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468}
!437 = !DIEnumerator(name: "want_vtbl_arylen", value: 0)
!438 = !DIEnumerator(name: "want_vtbl_arylen_p", value: 1)
!439 = !DIEnumerator(name: "want_vtbl_backref", value: 2)
!440 = !DIEnumerator(name: "want_vtbl_checkcall", value: 3)
!441 = !DIEnumerator(name: "want_vtbl_collxfrm", value: 4)
!442 = !DIEnumerator(name: "want_vtbl_dbline", value: 5)
!443 = !DIEnumerator(name: "want_vtbl_debugvar", value: 6)
!444 = !DIEnumerator(name: "want_vtbl_defelem", value: 7)
!445 = !DIEnumerator(name: "want_vtbl_env", value: 8)
!446 = !DIEnumerator(name: "want_vtbl_envelem", value: 9)
!447 = !DIEnumerator(name: "want_vtbl_hints", value: 10)
!448 = !DIEnumerator(name: "want_vtbl_hintselem", value: 11)
!449 = !DIEnumerator(name: "want_vtbl_isa", value: 12)
!450 = !DIEnumerator(name: "want_vtbl_isaelem", value: 13)
!451 = !DIEnumerator(name: "want_vtbl_lvref", value: 14)
!452 = !DIEnumerator(name: "want_vtbl_mglob", value: 15)
!453 = !DIEnumerator(name: "want_vtbl_nkeys", value: 16)
!454 = !DIEnumerator(name: "want_vtbl_ovrld", value: 17)
!455 = !DIEnumerator(name: "want_vtbl_pack", value: 18)
!456 = !DIEnumerator(name: "want_vtbl_packelem", value: 19)
!457 = !DIEnumerator(name: "want_vtbl_pos", value: 20)
!458 = !DIEnumerator(name: "want_vtbl_regdata", value: 21)
!459 = !DIEnumerator(name: "want_vtbl_regdatum", value: 22)
!460 = !DIEnumerator(name: "want_vtbl_regexp", value: 23)
!461 = !DIEnumerator(name: "want_vtbl_sigelem", value: 24)
!462 = !DIEnumerator(name: "want_vtbl_substr", value: 25)
!463 = !DIEnumerator(name: "want_vtbl_sv", value: 26)
!464 = !DIEnumerator(name: "want_vtbl_taint", value: 27)
!465 = !DIEnumerator(name: "want_vtbl_utf8", value: 28)
!466 = !DIEnumerator(name: "want_vtbl_uvar", value: 29)
!467 = !DIEnumerator(name: "want_vtbl_vec", value: 30)
!468 = !DIEnumerator(name: "magic_vtable_max", value: 31)
!469 = !{!470, !471, !474, !475, !476, !477, !916, !527, !1048, !1049, !887, !532, !720, !660, !1063, !526, !514, !1064, !529, !1077, !513, !594, !488, !655, !725, !1090, !530, !1016, !1092, !1111, !1139, !1183, !7, !1225, !1248, !1268, !1301, !562, !1165, !616, !1320, !817, !869, !1334, !545, !483, !1336, !1338, !1361, !579, !1388}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !472, line: 171, baseType: !473)
!472 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!473 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!474 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!475 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !479, line: 2659, baseType: !480)
!479 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !6, line: 499, size: 256, elements: !481)
!481 = !{!482, !1041, !1042, !1043}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !480, file: !6, line: 500, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !479, line: 2649, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !6, line: 246, size: 192, elements: !486)
!486 = !{!487, !1026, !1027, !1028}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !485, file: !6, line: 247, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !479, line: 2667, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !491, line: 130, size: 256, elements: !492)
!491 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!492 = !{!493, !494, !1024, !1025}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !490, file: !491, line: 131, baseType: !483, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !490, file: !491, line: 132, baseType: !495, size: 64, offset: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !6, line: 494, size: 64, elements: !496)
!496 = !{!497, !1023}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !495, file: !6, line: 495, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !479, line: 2658, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !501, line: 23, size: 384, elements: !502)
!501 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!502 = !{!503, !504, !1015, !1018, !1019, !1020, !1021, !1022}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !500, file: !501, line: 24, baseType: !498, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !500, file: !501, line: 25, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !479, line: 2673, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !501, line: 11, size: 512, elements: !508)
!508 = !{!509, !985, !986, !990, !991, !992, !996, !1014}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !507, file: !501, line: 12, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!513, !514, !498}
!513 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !479, line: 2647, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !6, line: 218, size: 192, elements: !517)
!517 = !{!518, !519, !521, !522}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !516, file: !6, line: 219, baseType: !476, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !516, file: !6, line: 219, baseType: !520, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !472, line: 175, baseType: !7)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !516, file: !6, line: 219, baseType: !520, size: 32, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !516, file: !6, line: 220, baseType: !523, size: 64, offset: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !516, file: !6, line: 220, size: 64, elements: !524)
!524 = !{!525, !528, !531, !533, !536, !537, !981, !982, !983, !984}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !523, file: !6, line: 220, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !523, file: !6, line: 220, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !479, line: 1670, baseType: !530)
!530 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !523, file: !6, line: 220, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !479, line: 1671, baseType: !474)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !523, file: !6, line: 220, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !479, line: 1877, baseType: !535)
!535 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !523, file: !6, line: 220, baseType: !514, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !523, file: !6, line: 220, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !540, line: 140, size: 1536, elements: !541)
!540 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!541 = !{!542, !543, !544, !548, !553, !937, !938, !939, !940, !941, !942, !943, !959, !960, !961, !962, !963, !964, !972, !973, !974, !975, !976, !977, !978, !979, !980}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !539, file: !540, line: 141, baseType: !483, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !539, file: !540, line: 141, baseType: !495, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !539, file: !540, line: 141, baseType: !545, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !479, line: 2615, baseType: !546)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !547, line: 46, baseType: !474)
!547 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!548 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !539, file: !540, line: 141, baseType: !549, size: 64, offset: 192)
!549 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !540, line: 141, size: 64, elements: !550)
!550 = !{!551, !552}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !549, file: !540, line: 141, baseType: !545, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !549, file: !540, line: 141, baseType: !526, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !539, file: !540, line: 142, baseType: !554, size: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !540, line: 157, size: 768, elements: !557)
!557 = !{!558, !877, !882, !898, !902, !906, !911, !918, !922, !926, !930, !931}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !556, file: !540, line: 158, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !876, !520}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !479, line: 2651, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !6, line: 256, size: 192, elements: !565)
!565 = !{!566, !567, !568, !569}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !564, file: !6, line: 257, baseType: !538, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !564, file: !6, line: 257, baseType: !520, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !564, file: !6, line: 257, baseType: !520, size: 32, offset: 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !564, file: !6, line: 258, baseType: !570, size: 64, offset: 128)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !564, file: !6, line: 258, size: 64, elements: !571)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !580, !604, !875}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !570, file: !6, line: 258, baseType: !526, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !570, file: !6, line: 258, baseType: !529, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !570, file: !6, line: 258, baseType: !532, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !570, file: !6, line: 258, baseType: !534, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !570, file: !6, line: 258, baseType: !514, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !570, file: !6, line: 258, baseType: !538, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !570, file: !6, line: 258, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !570, file: !6, line: 258, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !6, line: 186, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !491, line: 32, size: 192, elements: !585)
!585 = !{!586, !587, !599}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !584, file: !491, line: 36, baseType: !582, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !584, file: !491, line: 37, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !6, line: 187, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !491, line: 45, size: 96, elements: !591)
!591 = !{!592, !593, !595}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !590, file: !491, line: 46, baseType: !520, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !590, file: !491, line: 47, baseType: !594, size: 32, offset: 32)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !472, line: 174, baseType: !513)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !590, file: !491, line: 48, baseType: !596, size: 8, offset: 64)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 8, elements: !597)
!597 = !{!598}
!598 = !DISubrange(count: 1)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !584, file: !491, line: 41, baseType: !600, size: 64, offset: 128)
!600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !584, file: !491, line: 38, size: 64, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !600, file: !491, line: 39, baseType: !514, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !600, file: !491, line: 40, baseType: !546, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !570, file: !6, line: 258, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !479, line: 2652, baseType: !607)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !608, line: 11, size: 640, elements: !609)
!608 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!609 = !{!610, !611, !719, !865, !866, !867, !868, !870, !871, !872, !873, !874}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !607, file: !608, line: 12, baseType: !514, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !607, file: !608, line: 13, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !6, line: 251, size: 192, elements: !614)
!614 = !{!615, !704, !705, !706}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !613, file: !6, line: 252, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !479, line: 2672, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !6, line: 603, size: 1088, elements: !619)
!619 = !{!620, !621, !622, !623, !628, !634, !641, !650, !651, !652, !653, !654, !698, !699, !700, !701, !702, !703}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !618, file: !6, line: 604, baseType: !483, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !618, file: !6, line: 604, baseType: !495, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !618, file: !6, line: 604, baseType: !545, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !618, file: !6, line: 604, baseType: !624, size: 64, offset: 192)
!624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !6, line: 604, size: 64, elements: !625)
!625 = !{!626, !627}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !624, file: !6, line: 604, baseType: !545, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !624, file: !6, line: 604, baseType: !526, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !618, file: !6, line: 605, baseType: !629, size: 64, offset: 256)
!629 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !6, line: 488, size: 64, elements: !630)
!630 = !{!631, !632, !633}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !629, file: !6, line: 489, baseType: !529, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !629, file: !6, line: 490, baseType: !532, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !629, file: !6, line: 491, baseType: !588, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !618, file: !6, line: 607, baseType: !635, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !637, line: 85, baseType: !638)
!637 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !637, line: 83, baseType: !640)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !637, line: 83, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !618, file: !6, line: 620, baseType: !642, size: 64, offset: 384)
!642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !618, file: !6, line: 617, size: 64, elements: !643)
!643 = !{!644, !649}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !642, file: !6, line: 618, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !647, line: 127, baseType: !648)
!647 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !647, line: 127, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !642, file: !6, line: 619, baseType: !476, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !618, file: !6, line: 622, baseType: !529, size: 64, offset: 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !618, file: !6, line: 623, baseType: !529, size: 64, offset: 512)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !618, file: !6, line: 624, baseType: !529, size: 64, offset: 576)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !618, file: !6, line: 625, baseType: !526, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !618, file: !6, line: 626, baseType: !655, size: 64, offset: 704)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !479, line: 2653, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !6, line: 231, size: 192, elements: !658)
!658 = !{!659, !683, !684, !685}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !657, file: !6, line: 232, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !479, line: 2668, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !6, line: 561, size: 384, elements: !663)
!663 = !{!664, !665, !666, !667, !672, !673}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !662, file: !6, line: 562, baseType: !483, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !662, file: !6, line: 562, baseType: !495, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !662, file: !6, line: 562, baseType: !545, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !662, file: !6, line: 562, baseType: !668, size: 64, offset: 192)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !6, line: 562, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !668, file: !6, line: 562, baseType: !545, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !668, file: !6, line: 562, baseType: !526, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !662, file: !6, line: 563, baseType: !629, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !662, file: !6, line: 564, baseType: !674, size: 64, offset: 320)
!674 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !6, line: 479, size: 64, elements: !675)
!675 = !{!676, !677, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !674, file: !6, line: 480, baseType: !534, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !674, file: !6, line: 481, baseType: !483, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !674, file: !6, line: 485, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !6, line: 482, size: 64, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !679, file: !6, line: 483, baseType: !520, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !679, file: !6, line: 484, baseType: !520, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !657, file: !6, line: 232, baseType: !520, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !657, file: !6, line: 232, baseType: !520, size: 32, offset: 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !657, file: !6, line: 233, baseType: !686, size: 64, offset: 128)
!686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !657, file: !6, line: 233, size: 64, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !686, file: !6, line: 233, baseType: !526, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !686, file: !6, line: 233, baseType: !529, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !686, file: !6, line: 233, baseType: !532, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !686, file: !6, line: 233, baseType: !534, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !686, file: !6, line: 233, baseType: !514, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !686, file: !6, line: 233, baseType: !538, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !686, file: !6, line: 233, baseType: !579, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !686, file: !6, line: 233, baseType: !581, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !686, file: !6, line: 233, baseType: !605, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !686, file: !6, line: 233, baseType: !635, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !618, file: !6, line: 627, baseType: !526, size: 64, offset: 768)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !618, file: !6, line: 628, baseType: !655, size: 64, offset: 832)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !618, file: !6, line: 629, baseType: !526, size: 64, offset: 896)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !618, file: !6, line: 630, baseType: !655, size: 64, offset: 960)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !618, file: !6, line: 631, baseType: !527, size: 8, offset: 1024)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !618, file: !6, line: 632, baseType: !471, size: 8, offset: 1032)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !613, file: !6, line: 252, baseType: !520, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !613, file: !6, line: 252, baseType: !520, size: 32, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !613, file: !6, line: 253, baseType: !707, size: 64, offset: 128)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !6, line: 253, size: 64, elements: !708)
!708 = !{!709, !710, !711, !712, !713, !714, !715, !716, !717, !718}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !707, file: !6, line: 253, baseType: !526, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !707, file: !6, line: 253, baseType: !529, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !707, file: !6, line: 253, baseType: !532, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !707, file: !6, line: 253, baseType: !534, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !707, file: !6, line: 253, baseType: !514, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !707, file: !6, line: 253, baseType: !538, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !707, file: !6, line: 253, baseType: !579, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !707, file: !6, line: 253, baseType: !581, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !707, file: !6, line: 253, baseType: !605, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !707, file: !6, line: 253, baseType: !635, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !607, file: !608, line: 14, baseType: !720, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !479, line: 2650, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !6, line: 236, size: 192, elements: !723)
!723 = !{!724, !850, !851, !852}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !722, file: !6, line: 237, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !479, line: 2669, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !728, line: 13, size: 832, elements: !729)
!728 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!729 = !{!730, !731, !732, !733, !738, !739, !782, !790, !795, !796, !845, !846, !847, !849}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !727, file: !728, line: 14, baseType: !483, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !727, file: !728, line: 14, baseType: !495, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !727, file: !728, line: 14, baseType: !545, size: 64, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !727, file: !728, line: 14, baseType: !734, size: 64, offset: 192)
!734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 14, size: 64, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !734, file: !728, line: 14, baseType: !545, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !734, file: !728, line: 14, baseType: !526, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !727, file: !728, line: 15, baseType: !483, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !727, file: !728, line: 15, baseType: !740, size: 64, offset: 320)
!740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 15, size: 64, elements: !741)
!741 = !{!742, !766}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !740, file: !728, line: 15, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !479, line: 2617, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !427, line: 202, size: 320, elements: !746)
!746 = !{!747, !748, !749, !753, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !745, file: !427, line: 203, baseType: !743, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !745, file: !427, line: 203, baseType: !743, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !745, file: !427, line: 203, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!743}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !745, file: !427, line: 203, baseType: !754, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !755, line: 25, baseType: !474)
!755 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!756 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !745, file: !427, line: 203, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !745, file: !427, line: 203, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !745, file: !427, line: 203, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !745, file: !427, line: 203, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !745, file: !427, line: 203, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !745, file: !427, line: 203, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !745, file: !427, line: 203, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !745, file: !427, line: 203, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !745, file: !427, line: 203, baseType: !471, size: 8, offset: 272)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !745, file: !427, line: 203, baseType: !471, size: 8, offset: 280)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !740, file: !728, line: 15, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !479, line: 2674, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !479, line: 3691, size: 64, elements: !769)
!769 = !{!770, !771, !772, !773, !774, !775, !776, !777, !781}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !768, file: !479, line: 3692, baseType: !476, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !768, file: !479, line: 3693, baseType: !594, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !768, file: !479, line: 3694, baseType: !520, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !768, file: !479, line: 3695, baseType: !529, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !768, file: !479, line: 3696, baseType: !532, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !768, file: !479, line: 3697, baseType: !530, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !768, file: !479, line: 3698, baseType: !475, size: 8)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !768, file: !479, line: 3699, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !476}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !768, file: !479, line: 3700, baseType: !778, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !727, file: !728, line: 15, baseType: !783, size: 64, offset: 384)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 15, size: 64, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !783, file: !728, line: 15, baseType: !743, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !783, file: !728, line: 15, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !720}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !727, file: !728, line: 15, baseType: !791, size: 64, offset: 448)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 15, size: 64, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !791, file: !728, line: 15, baseType: !655, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !791, file: !728, line: 15, baseType: !588, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !727, file: !728, line: 15, baseType: !526, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !727, file: !728, line: 15, baseType: !797, size: 64, offset: 576)
!797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !728, line: 15, size: 64, elements: !798)
!798 = !{!799, !844}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !797, file: !728, line: 15, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !479, line: 2681, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !755, line: 34, size: 192, elements: !803)
!803 = !{!804, !809, !842, !843}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !802, file: !755, line: 35, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !806, line: 108, baseType: !807)
!806 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !808, line: 193, baseType: !530)
!808 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!809 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !802, file: !755, line: 36, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !479, line: 2682, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !479, line: 2648, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !6, line: 241, size: 192, elements: !815)
!815 = !{!816, !827, !828, !829}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !814, file: !6, line: 242, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !479, line: 2666, baseType: !819)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !820, line: 11, size: 320, elements: !821)
!820 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!821 = !{!822, !823, !824, !825, !826}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !819, file: !820, line: 12, baseType: !483, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !819, file: !820, line: 13, baseType: !495, size: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !819, file: !820, line: 14, baseType: !805, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !819, file: !820, line: 15, baseType: !805, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !819, file: !820, line: 16, baseType: !579, size: 64, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !814, file: !6, line: 242, baseType: !520, size: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !814, file: !6, line: 242, baseType: !520, size: 32, offset: 96)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !814, file: !6, line: 243, baseType: !830, size: 64, offset: 128)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !814, file: !6, line: 243, size: 64, elements: !831)
!831 = !{!832, !833, !834, !835, !836, !837, !838, !839, !840, !841}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !830, file: !6, line: 243, baseType: !526, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !830, file: !6, line: 243, baseType: !529, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !830, file: !6, line: 243, baseType: !532, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !830, file: !6, line: 243, baseType: !534, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !830, file: !6, line: 243, baseType: !514, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !830, file: !6, line: 243, baseType: !538, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !830, file: !6, line: 243, baseType: !579, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !830, file: !6, line: 243, baseType: !581, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !830, file: !6, line: 243, baseType: !605, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !830, file: !6, line: 243, baseType: !635, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !802, file: !755, line: 37, baseType: !520, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !802, file: !755, line: 38, baseType: !520, size: 32, offset: 160)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !797, file: !728, line: 15, baseType: !476, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !727, file: !728, line: 15, baseType: !720, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !727, file: !728, line: 15, baseType: !520, size: 32, offset: 704)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !727, file: !728, line: 15, baseType: !848, size: 32, offset: 736)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !6, line: 567, baseType: !520)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !727, file: !728, line: 15, baseType: !594, size: 32, offset: 768)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !722, file: !6, line: 237, baseType: !520, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !722, file: !6, line: 237, baseType: !520, size: 32, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !722, file: !6, line: 238, baseType: !853, size: 64, offset: 128)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !6, line: 238, size: 64, elements: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !861, !862, !863, !864}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !853, file: !6, line: 238, baseType: !526, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !853, file: !6, line: 238, baseType: !529, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !853, file: !6, line: 238, baseType: !532, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !853, file: !6, line: 238, baseType: !534, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !853, file: !6, line: 238, baseType: !514, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !853, file: !6, line: 238, baseType: !538, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !853, file: !6, line: 238, baseType: !579, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !853, file: !6, line: 238, baseType: !581, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !853, file: !6, line: 238, baseType: !605, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !853, file: !6, line: 238, baseType: !635, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !607, file: !608, line: 15, baseType: !520, size: 32, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !607, file: !608, line: 16, baseType: !520, size: 32, offset: 224)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !607, file: !608, line: 17, baseType: !483, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !607, file: !608, line: 18, baseType: !869, size: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !607, file: !608, line: 19, baseType: !720, size: 64, offset: 384)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !607, file: !608, line: 20, baseType: !655, size: 64, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !607, file: !608, line: 21, baseType: !7, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !607, file: !608, line: 22, baseType: !7, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !607, file: !608, line: 23, baseType: !588, size: 64, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !570, file: !6, line: 258, baseType: !635, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !556, file: !540, line: 159, baseType: !878, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!594, !881, !526, !526, !526, !805, !514, !476, !520}
!881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !556, file: !540, line: 162, baseType: !883, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{!526, !881, !514, !886, !526, !526, !889, !890}
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !540, line: 152, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !540, line: 148, size: 128, elements: !893)
!893 = !{!894, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !892, file: !540, line: 150, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !892, file: !540, line: 151, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !556, file: !540, line: 170, baseType: !899, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!514, !881}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !556, file: !540, line: 171, baseType: !903, size: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !881}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !556, file: !540, line: 172, baseType: !907, size: 64, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{null, !881, !910, !876}
!910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !556, file: !540, line: 174, baseType: !912, size: 64, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{null, !881, !910, !915}
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !556, file: !540, line: 176, baseType: !919, size: 64, offset: 448)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!594, !881, !915, !910}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !556, file: !540, line: 178, baseType: !923, size: 64, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!514, !881, !876, !876, !889}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !556, file: !540, line: 180, baseType: !927, size: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!514, !881, !915, !889}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !556, file: !540, line: 182, baseType: !899, size: 64, offset: 640)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !556, file: !540, line: 186, baseType: !932, size: 64, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!562, !935, !513, !743, !554, !562, !936, !520, !520}
!935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !539, file: !540, line: 142, baseType: !562, size: 64, offset: 320)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !539, file: !540, line: 142, baseType: !483, size: 64, offset: 384)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !539, file: !540, line: 142, baseType: !520, size: 32, offset: 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !539, file: !540, line: 142, baseType: !805, size: 64, offset: 512)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !539, file: !540, line: 142, baseType: !805, size: 64, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !539, file: !540, line: 142, baseType: !545, size: 64, offset: 640)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !539, file: !540, line: 142, baseType: !944, size: 64, offset: 704)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !540, line: 45, size: 1024, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !945, file: !540, line: 46, baseType: !471, size: 8)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !945, file: !540, line: 47, baseType: !949, size: 960, offset: 64)
!949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 960, elements: !957)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !540, line: 38, size: 320, elements: !951)
!951 = !{!952, !953, !954, !955, !956}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !950, file: !540, line: 39, baseType: !805, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !950, file: !540, line: 40, baseType: !805, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !950, file: !540, line: 41, baseType: !514, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !950, file: !540, line: 42, baseType: !514, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !950, file: !540, line: 43, baseType: !805, size: 64, offset: 256)
!957 = !{!958}
!958 = !DISubrange(count: 3)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !539, file: !540, line: 142, baseType: !520, size: 32, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !539, file: !540, line: 142, baseType: !520, size: 32, offset: 800)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !539, file: !540, line: 142, baseType: !476, size: 64, offset: 832)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !539, file: !540, line: 142, baseType: !520, size: 32, offset: 896)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !539, file: !540, line: 142, baseType: !520, size: 32, offset: 928)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !539, file: !540, line: 142, baseType: !965, size: 64, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !540, line: 68, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !540, line: 58, size: 192, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !967, file: !540, line: 59, baseType: !805, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !967, file: !540, line: 60, baseType: !805, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !967, file: !540, line: 67, baseType: !805, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !539, file: !540, line: 142, baseType: !526, size: 64, offset: 1024)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !539, file: !540, line: 142, baseType: !514, size: 64, offset: 1088)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !539, file: !540, line: 142, baseType: !805, size: 64, offset: 1152)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !539, file: !540, line: 142, baseType: !805, size: 64, offset: 1216)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !539, file: !540, line: 142, baseType: !805, size: 64, offset: 1280)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !539, file: !540, line: 142, baseType: !805, size: 64, offset: 1344)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !539, file: !540, line: 142, baseType: !7, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !539, file: !540, line: 142, baseType: !7, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !539, file: !540, line: 142, baseType: !720, size: 64, offset: 1472)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !523, file: !6, line: 220, baseType: !579, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !523, file: !6, line: 220, baseType: !581, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !523, file: !6, line: 220, baseType: !605, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !523, file: !6, line: 220, baseType: !635, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !507, file: !501, line: 13, baseType: !510, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !507, file: !501, line: 14, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!520, !514, !498}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !507, file: !501, line: 15, baseType: !510, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !507, file: !501, line: 16, baseType: !510, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !507, file: !501, line: 17, baseType: !993, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!513, !514, !498, !514, !887, !594}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !507, file: !501, line: 19, baseType: !997, size: 64, offset: 384)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!513, !498, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !479, line: 2677, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !6, line: 2150, size: 320, elements: !1003)
!1003 = !{!1004, !1005, !1006, !1012, !1013}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !1002, file: !6, line: 2151, baseType: !869, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1002, file: !6, line: 2152, baseType: !532, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !1002, file: !6, line: 2153, baseType: !1007, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !479, line: 2639, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !479, line: 5434, size: 8, elements: !1010)
!1010 = !{!1011}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !1009, file: !479, line: 5435, baseType: !527, size: 8)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !1002, file: !6, line: 2154, baseType: !1007, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !1002, file: !6, line: 2155, baseType: !869, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !507, file: !501, line: 20, baseType: !510, size: 64, offset: 448)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !500, file: !501, line: 26, baseType: !1016, size: 16, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !472, line: 173, baseType: !1017)
!1017 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !500, file: !501, line: 27, baseType: !527, size: 8, offset: 144)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !500, file: !501, line: 28, baseType: !471, size: 8, offset: 152)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !500, file: !501, line: 29, baseType: !805, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !500, file: !501, line: 30, baseType: !514, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !500, file: !501, line: 31, baseType: !526, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !495, file: !6, line: 496, baseType: !545, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !490, file: !491, line: 133, baseType: !545, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !490, file: !491, line: 134, baseType: !545, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !485, file: !6, line: 247, baseType: !520, size: 32, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !485, file: !6, line: 247, baseType: !520, size: 32, offset: 96)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !485, file: !6, line: 248, baseType: !1029, size: 64, offset: 128)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !485, file: !6, line: 248, size: 64, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !1029, file: !6, line: 248, baseType: !526, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !1029, file: !6, line: 248, baseType: !529, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !1029, file: !6, line: 248, baseType: !532, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !1029, file: !6, line: 248, baseType: !534, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !1029, file: !6, line: 248, baseType: !514, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !1029, file: !6, line: 248, baseType: !538, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !1029, file: !6, line: 248, baseType: !579, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !1029, file: !6, line: 248, baseType: !581, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !1029, file: !6, line: 248, baseType: !605, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !1029, file: !6, line: 248, baseType: !635, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !480, file: !6, line: 500, baseType: !495, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !480, file: !6, line: 500, baseType: !545, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !480, file: !6, line: 500, baseType: !1044, size: 64, offset: 192)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !480, file: !6, line: 500, size: 64, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1044, file: !6, line: 500, baseType: !545, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1044, file: !6, line: 500, baseType: !526, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !6, line: 153, baseType: !5)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVNV", file: !479, line: 2662, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvnv", file: !6, line: 517, size: 384, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1056, !1061, !1062}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1051, file: !6, line: 518, baseType: !483, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1051, file: !6, line: 518, baseType: !495, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1051, file: !6, line: 518, baseType: !545, size: 64, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1051, file: !6, line: 518, baseType: !1057, size: 64, offset: 192)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1051, file: !6, line: 518, size: 64, elements: !1058)
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1057, file: !6, line: 518, baseType: !545, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1057, file: !6, line: 518, baseType: !526, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !1051, file: !6, line: 519, baseType: !629, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !1051, file: !6, line: 520, baseType: !674, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVUV", file: !479, line: 2661, baseType: !1066)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvuv", file: !6, line: 510, size: 320, elements: !1067)
!1067 = !{!1068, !1069, !1070, !1071, !1076}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1066, file: !6, line: 511, baseType: !483, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1066, file: !6, line: 511, baseType: !495, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1066, file: !6, line: 511, baseType: !545, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1066, file: !6, line: 511, baseType: !1072, size: 64, offset: 192)
!1072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !6, line: 511, size: 64, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1072, file: !6, line: 511, baseType: !545, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1072, file: !6, line: 511, baseType: !526, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "xuv_u", scope: !1066, file: !6, line: 512, baseType: !629, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIV", file: !479, line: 2660, baseType: !1079)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpviv", file: !6, line: 503, size: 320, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1089}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1079, file: !6, line: 504, baseType: !483, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1079, file: !6, line: 504, baseType: !495, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1079, file: !6, line: 504, baseType: !545, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1079, file: !6, line: 504, baseType: !1085, size: 64, offset: 192)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !6, line: 504, size: 64, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1085, file: !6, line: 504, baseType: !545, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1085, file: !6, line: 504, baseType: !526, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !1079, file: !6, line: 505, baseType: !629, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !563)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "SVOP", file: !479, line: 2625, baseType: !1094)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svop", file: !427, line: 407, size: 384, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1094, file: !427, line: 408, baseType: !743, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1094, file: !427, line: 408, baseType: !743, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1094, file: !427, line: 408, baseType: !750, size: 64, offset: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1094, file: !427, line: 408, baseType: !754, size: 64, offset: 192)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1094, file: !427, line: 408, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1094, file: !427, line: 408, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1094, file: !427, line: 408, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1094, file: !427, line: 408, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1094, file: !427, line: 408, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1094, file: !427, line: 408, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1094, file: !427, line: 408, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1094, file: !427, line: 408, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1094, file: !427, line: 408, baseType: !471, size: 8, offset: 272)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1094, file: !427, line: 408, baseType: !471, size: 8, offset: 280)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "op_sv", scope: !1094, file: !427, line: 409, baseType: !514, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "UNOP_AUX", file: !479, line: 2620, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unop_aux", file: !427, line: 211, size: 448, elements: !1114)
!1114 = !{!1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1113, file: !427, line: 212, baseType: !743, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1113, file: !427, line: 212, baseType: !743, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1113, file: !427, line: 212, baseType: !750, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1113, file: !427, line: 212, baseType: !754, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1113, file: !427, line: 212, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1113, file: !427, line: 212, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1113, file: !427, line: 212, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1113, file: !427, line: 212, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1113, file: !427, line: 212, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1113, file: !427, line: 212, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1113, file: !427, line: 212, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1113, file: !427, line: 212, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1113, file: !427, line: 212, baseType: !471, size: 8, offset: 272)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1113, file: !427, line: 212, baseType: !471, size: 8, offset: 280)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "op_first", scope: !1113, file: !427, line: 213, baseType: !743, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "op_aux", scope: !1113, file: !427, line: 214, baseType: !1131, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "UNOP_AUX_item", file: !427, line: 191, baseType: !1133)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !427, line: 186, size: 64, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pad_offset", scope: !1133, file: !427, line: 187, baseType: !754, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !1133, file: !427, line: 188, baseType: !514, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "iv", scope: !1133, file: !427, line: 189, baseType: !529, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "uv", scope: !1133, file: !427, line: 190, baseType: !532, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "COP", file: !479, line: 2618, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cop", file: !1142, line: 393, size: 640, elements: !1143)
!1142 = !DIFile(filename: "apps/500.perlbench_r/src/cop.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "64d4f81e93be43c58d053d27101a3a5e")
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1160, !1161, !1162, !1163, !1164, !1166}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1141, file: !1142, line: 394, baseType: !743, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1141, file: !1142, line: 394, baseType: !743, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1141, file: !1142, line: 394, baseType: !750, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1141, file: !1142, line: 394, baseType: !754, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1141, file: !1142, line: 394, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1141, file: !1142, line: 394, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1141, file: !1142, line: 394, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1141, file: !1142, line: 394, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1141, file: !1142, line: 394, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1141, file: !1142, line: 394, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1141, file: !1142, line: 394, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1141, file: !1142, line: 394, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1141, file: !1142, line: 394, baseType: !471, size: 8, offset: 272)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1141, file: !1142, line: 394, baseType: !471, size: 8, offset: 280)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "cop_line", scope: !1141, file: !1142, line: 397, baseType: !1159, size: 32, offset: 288)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_t", file: !472, line: 1734, baseType: !520)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cop_stash", scope: !1141, file: !1142, line: 404, baseType: !483, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cop_filegv", scope: !1141, file: !1142, line: 405, baseType: !655, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cop_hints", scope: !1141, file: !1142, line: 407, baseType: !520, size: 32, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cop_seq", scope: !1141, file: !1142, line: 408, baseType: !520, size: 32, offset: 480)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cop_warnings", scope: !1141, file: !1142, line: 410, baseType: !1165, size: 64, offset: 512)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cop_hints_hash", scope: !1141, file: !1142, line: 413, baseType: !1167, size: 64, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "COPHH", file: !1142, line: 170, baseType: !1169)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcounted_he", file: !491, line: 523, size: 256, elements: !1170)
!1170 = !{!1171, !1173, !1174, !1181, !1182}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_next", scope: !1169, file: !491, line: 524, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_hek", scope: !1169, file: !491, line: 529, baseType: !588, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_val", scope: !1169, file: !491, line: 536, baseType: !1175, size: 64, offset: 128)
!1175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !491, line: 531, size: 64, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_iv", scope: !1175, file: !491, line: 532, baseType: !529, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_uv", scope: !1175, file: !491, line: 533, baseType: !532, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_len", scope: !1175, file: !491, line: 534, baseType: !545, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_ptr", scope: !1175, file: !491, line: 535, baseType: !476, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_refcnt", scope: !1169, file: !491, line: 537, baseType: !520, size: 32, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_data", scope: !1169, file: !491, line: 540, baseType: !596, size: 8, offset: 224)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv_aux", file: !491, line: 102, size: 448, elements: !1185)
!1185 = !{!1186, !1192, !1193, !1194, !1195, !1196, !1221, !1222, !1223, !1224}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_u", scope: !1184, file: !491, line: 103, baseType: !1187, size: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xhvnameu", file: !491, line: 97, size: 64, elements: !1188)
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_name", scope: !1187, file: !491, line: 98, baseType: !588, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_names", scope: !1187, file: !491, line: 99, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_backreferences", scope: !1184, file: !491, line: 104, baseType: !869, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_eiter", scope: !1184, file: !491, line: 105, baseType: !582, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_riter", scope: !1184, file: !491, line: 106, baseType: !594, size: 32, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_count", scope: !1184, file: !491, line: 114, baseType: !594, size: 32, offset: 224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_mro_meta", scope: !1184, file: !491, line: 115, baseType: !1197, size: 64, offset: 256)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_meta", file: !491, line: 72, size: 512, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1218, !1219, !1220}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_all", scope: !1198, file: !491, line: 74, baseType: !483, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_current", scope: !1198, file: !491, line: 78, baseType: !514, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mro_nextmethod", scope: !1198, file: !491, line: 79, baseType: !483, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cache_gen", scope: !1198, file: !491, line: 80, baseType: !520, size: 32, offset: 192)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_gen", scope: !1198, file: !491, line: 81, baseType: !520, size: 32, offset: 224)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "mro_which", scope: !1198, file: !491, line: 82, baseType: !1206, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_alg", file: !491, line: 64, size: 192, elements: !1209)
!1209 = !{!1210, !1214, !1215, !1216, !1217}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "resolve", scope: !1208, file: !491, line: 65, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!869, !483, !520}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1208, file: !491, line: 66, baseType: !887, size: 64, offset: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1208, file: !491, line: 67, baseType: !1016, size: 16, offset: 128)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "kflags", scope: !1208, file: !491, line: 68, baseType: !1016, size: 16, offset: 144)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1208, file: !491, line: 69, baseType: !520, size: 32, offset: 160)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !1198, file: !491, line: 83, baseType: !483, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !1198, file: !491, line: 84, baseType: !483, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_gen", scope: !1198, file: !491, line: 85, baseType: !520, size: 32, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_rand", scope: !1184, file: !491, line: 117, baseType: !520, size: 32, offset: 320)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_last_rand", scope: !1184, file: !491, line: 118, baseType: !520, size: 32, offset: 352)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_fill_lazy", scope: !1184, file: !491, line: 121, baseType: !520, size: 32, offset: 384)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_aux_flags", scope: !1184, file: !491, line: 122, baseType: !520, size: 32, offset: 416)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOOP", file: !479, line: 2628, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !427, line: 422, size: 640, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1227, file: !427, line: 423, baseType: !743, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1227, file: !427, line: 423, baseType: !743, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1227, file: !427, line: 423, baseType: !750, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1227, file: !427, line: 423, baseType: !754, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1227, file: !427, line: 423, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1227, file: !427, line: 423, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1227, file: !427, line: 423, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1227, file: !427, line: 423, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1227, file: !427, line: 423, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1227, file: !427, line: 423, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1227, file: !427, line: 423, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1227, file: !427, line: 423, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1227, file: !427, line: 423, baseType: !471, size: 8, offset: 272)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1227, file: !427, line: 423, baseType: !471, size: 8, offset: 280)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "op_first", scope: !1227, file: !427, line: 424, baseType: !743, size: 64, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "op_last", scope: !1227, file: !427, line: 425, baseType: !743, size: 64, offset: 384)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "op_redoop", scope: !1227, file: !427, line: 426, baseType: !743, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "op_nextop", scope: !1227, file: !427, line: 427, baseType: !743, size: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "op_lastop", scope: !1227, file: !427, line: 428, baseType: !743, size: 64, offset: 576)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOGOP", file: !479, line: 2623, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "logop", file: !427, line: 223, size: 448, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1250, file: !427, line: 224, baseType: !743, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1250, file: !427, line: 224, baseType: !743, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1250, file: !427, line: 224, baseType: !750, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1250, file: !427, line: 224, baseType: !754, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1250, file: !427, line: 224, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1250, file: !427, line: 224, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1250, file: !427, line: 224, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1250, file: !427, line: 224, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1250, file: !427, line: 224, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1250, file: !427, line: 224, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1250, file: !427, line: 224, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1250, file: !427, line: 224, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1250, file: !427, line: 224, baseType: !471, size: 8, offset: 272)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1250, file: !427, line: 224, baseType: !471, size: 8, offset: 280)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "op_first", scope: !1250, file: !427, line: 225, baseType: !743, size: 64, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "op_other", scope: !1250, file: !427, line: 226, baseType: !743, size: 64, offset: 384)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "PMOP", file: !479, line: 2624, baseType: !1270)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmop", file: !427, line: 251, size: 768, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1295, !1300}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1270, file: !427, line: 252, baseType: !743, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1270, file: !427, line: 252, baseType: !743, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1270, file: !427, line: 252, baseType: !750, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1270, file: !427, line: 252, baseType: !754, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1270, file: !427, line: 252, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1270, file: !427, line: 252, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1270, file: !427, line: 252, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1270, file: !427, line: 252, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1270, file: !427, line: 252, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1270, file: !427, line: 252, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1270, file: !427, line: 252, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1270, file: !427, line: 252, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1270, file: !427, line: 252, baseType: !471, size: 8, offset: 272)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1270, file: !427, line: 252, baseType: !471, size: 8, offset: 280)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "op_first", scope: !1270, file: !427, line: 253, baseType: !743, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "op_last", scope: !1270, file: !427, line: 254, baseType: !743, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmregexp", scope: !1270, file: !427, line: 258, baseType: !562, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmflags", scope: !1270, file: !427, line: 260, baseType: !520, size: 32, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmreplrootu", scope: !1270, file: !427, line: 268, baseType: !1291, size: 64, offset: 576)
!1291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !427, line: 261, size: 64, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmreplroot", scope: !1291, file: !427, line: 262, baseType: !743, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmtargetgv", scope: !1291, file: !427, line: 266, baseType: !655, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmstashstartu", scope: !1270, file: !427, line: 276, baseType: !1296, size: 64, offset: 640)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !427, line: 269, size: 64, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmreplstart", scope: !1296, file: !427, line: 270, baseType: !743, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmstash", scope: !1296, file: !427, line: 274, baseType: !483, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "op_code_list", scope: !1270, file: !427, line: 277, baseType: !743, size: 64, offset: 704)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "UNOP", file: !479, line: 2619, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unop", file: !427, line: 206, size: 384, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1303, file: !427, line: 207, baseType: !743, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1303, file: !427, line: 207, baseType: !743, size: 64, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1303, file: !427, line: 207, baseType: !750, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1303, file: !427, line: 207, baseType: !754, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1303, file: !427, line: 207, baseType: !7, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1303, file: !427, line: 207, baseType: !7, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1303, file: !427, line: 207, baseType: !7, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1303, file: !427, line: 207, baseType: !7, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1303, file: !427, line: 207, baseType: !7, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1303, file: !427, line: 207, baseType: !7, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1303, file: !427, line: 207, baseType: !7, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1303, file: !427, line: 207, baseType: !7, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1303, file: !427, line: 207, baseType: !471, size: 8, offset: 272)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1303, file: !427, line: 207, baseType: !471, size: 8, offset: 280)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "op_first", scope: !1303, file: !427, line: 208, baseType: !743, size: 64, offset: 320)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVMG", file: !479, line: 2663, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvmg", file: !6, line: 524, size: 384, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1332, !1333}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1322, file: !6, line: 525, baseType: !483, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1322, file: !6, line: 525, baseType: !495, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1322, file: !6, line: 525, baseType: !545, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1322, file: !6, line: 525, baseType: !1328, size: 64, offset: 192)
!1328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1322, file: !6, line: 525, size: 64, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1328, file: !6, line: 525, baseType: !545, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1328, file: !6, line: 525, baseType: !526, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !1322, file: !6, line: 526, baseType: !629, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !1322, file: !6, line: 527, baseType: !674, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVLV", file: !479, line: 2664, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvlv", file: !6, line: 530, size: 640, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1350, !1351, !1352, !1357, !1358, !1359, !1360}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1340, file: !6, line: 531, baseType: !483, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1340, file: !6, line: 531, baseType: !495, size: 64, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1340, file: !6, line: 531, baseType: !545, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1340, file: !6, line: 531, baseType: !1346, size: 64, offset: 192)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !6, line: 531, size: 64, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1346, file: !6, line: 531, baseType: !545, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1346, file: !6, line: 531, baseType: !526, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !1340, file: !6, line: 532, baseType: !629, size: 64, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !1340, file: !6, line: 533, baseType: !674, size: 64, offset: 320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_targoff_u", scope: !1340, file: !6, line: 537, baseType: !1353, size: 64, offset: 384)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !6, line: 534, size: 64, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "xlvu_targoff", scope: !1353, file: !6, line: 535, baseType: !545, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "xlvu_stargoff", scope: !1353, file: !6, line: 536, baseType: !805, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_targlen", scope: !1340, file: !6, line: 538, baseType: !545, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_targ", scope: !1340, file: !6, line: 539, baseType: !514, size: 64, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_type", scope: !1340, file: !6, line: 540, baseType: !527, size: 8, offset: 576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_flags", scope: !1340, file: !6, line: 542, baseType: !527, size: 8, offset: 584)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADNAMELIST", file: !479, line: 2683, baseType: !1363)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padnamelist", file: !755, line: 41, size: 320, elements: !1364)
!1364 = !{!1365, !1366, !1385, !1386, !1387}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_fill", scope: !1363, file: !755, line: 42, baseType: !805, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_alloc", scope: !1363, file: !755, line: 43, baseType: !1367, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADNAME", file: !479, line: 2684, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padname", file: !755, line: 74, size: 384, elements: !1371)
!1371 = !{!1372, !1373, !1374, !1379, !1380, !1381, !1382, !1383, !1384}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_pv", scope: !1370, file: !755, line: 75, baseType: !526, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_ourstash", scope: !1370, file: !755, line: 75, baseType: !483, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_type_u", scope: !1370, file: !755, line: 75, baseType: !1375, size: 64, offset: 128)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !755, line: 75, size: 64, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_typestash", scope: !1375, file: !755, line: 75, baseType: !483, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_protocv", scope: !1375, file: !755, line: 75, baseType: !720, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_low", scope: !1370, file: !755, line: 75, baseType: !520, size: 32, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_high", scope: !1370, file: !755, line: 75, baseType: !520, size: 32, offset: 224)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_refcnt", scope: !1370, file: !755, line: 75, baseType: !520, size: 32, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_gen", scope: !1370, file: !755, line: 75, baseType: !513, size: 32, offset: 288)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_len", scope: !1370, file: !755, line: 75, baseType: !471, size: 8, offset: 320)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_flags", scope: !1370, file: !755, line: 75, baseType: !471, size: 8, offset: 328)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_max", scope: !1363, file: !755, line: 44, baseType: !805, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_max_named", scope: !1363, file: !755, line: 45, baseType: !754, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_refcnt", scope: !1363, file: !755, line: 46, baseType: !520, size: 32, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!1389 = !{!0, !1390, !1401, !1406, !1408, !1413, !1418, !1421, !1426, !1431, !1436, !1441, !1451}
!1390 = !DIGlobalVariableExpression(var: !1391, expr: !DIExpression())
!1391 = distinct !DIGlobalVariable(name: "op_flags_names", scope: !2, file: !1392, line: 781, type: !1393, isLocal: false, isDefinition: true)
!1392 = !DIFile(filename: "apps/500.perlbench_r/src/dump.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "555ebf165cb30a2f21aa605d1125c463")
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 768, elements: !1399)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flag_to_name", file: !1392, line: 71, size: 128, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1395, file: !1392, line: 72, baseType: !520, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1395, file: !1392, line: 73, baseType: !887, size: 64, offset: 64)
!1399 = !{!1400}
!1400 = !DISubrange(count: 6)
!1401 = !DIGlobalVariableExpression(var: !1402, expr: !DIExpression())
!1402 = distinct !DIGlobalVariable(name: "first_sv_flags_names", scope: !2, file: !1392, line: 1315, type: !1403, isLocal: false, isDefinition: true)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 1024, elements: !1404)
!1404 = !{!1405}
!1405 = !DISubrange(count: 8)
!1406 = !DIGlobalVariableExpression(var: !1407, expr: !DIExpression())
!1407 = distinct !DIGlobalVariable(name: "second_sv_flags_names", scope: !2, file: !1392, line: 1326, type: !1403, isLocal: false, isDefinition: true)
!1408 = !DIGlobalVariableExpression(var: !1409, expr: !DIExpression())
!1409 = distinct !DIGlobalVariable(name: "cv_flags_names", scope: !2, file: !1392, line: 1337, type: !1410, isLocal: false, isDefinition: true)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 2176, elements: !1411)
!1411 = !{!1412}
!1412 = !DISubrange(count: 17)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(name: "hv_flags_names", scope: !2, file: !1392, line: 1357, type: !1415, isLocal: false, isDefinition: true)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 640, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 5)
!1418 = !DIGlobalVariableExpression(var: !1419, expr: !DIExpression())
!1419 = distinct !DIGlobalVariable(name: "gp_flags_names", scope: !2, file: !1392, line: 1365, type: !1420, isLocal: false, isDefinition: true)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 384, elements: !957)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(name: "gp_flags_imported_names", scope: !2, file: !1392, line: 1371, type: !1423, isLocal: false, isDefinition: true)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 512, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 4)
!1426 = !DIGlobalVariableExpression(var: !1427, expr: !DIExpression())
!1427 = distinct !DIGlobalVariable(name: "regexp_extflags_names", scope: !2, file: !1392, line: 1381, type: !1428, isLocal: false, isDefinition: true)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 2944, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 23)
!1431 = !DIGlobalVariableExpression(var: !1432, expr: !DIExpression())
!1432 = distinct !DIGlobalVariable(name: "regexp_core_intflags_names", scope: !2, file: !1392, line: 1410, type: !1433, isLocal: false, isDefinition: true)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 1664, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 13)
!1436 = !DIGlobalVariableExpression(var: !1437, expr: !DIExpression())
!1437 = distinct !DIGlobalVariable(name: "svshorttypenames", scope: !2, file: !1392, line: 52, type: !1438, isLocal: true, isDefinition: true)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 1024, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: 16)
!1441 = !DIGlobalVariableExpression(var: !1442, expr: !DIExpression())
!1442 = distinct !DIGlobalVariable(name: "magic_names", scope: !2, file: !1392, line: 1118, type: !1443, isLocal: true, isDefinition: true)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1444, size: 5632, elements: !1449)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1392, line: 1118, size: 128, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1445, file: !1392, line: 1118, baseType: !888, size: 8)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1445, file: !1392, line: 1118, baseType: !887, size: 64, offset: 64)
!1449 = !{!1450}
!1450 = !DISubrange(count: 44)
!1451 = !DIGlobalVariableExpression(var: !1452, expr: !DIExpression())
!1452 = distinct !DIGlobalVariable(name: "svtypenames", scope: !2, file: !1392, line: 32, type: !1438, isLocal: true, isDefinition: true)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1394, size: 1280, elements: !1454)
!1454 = !{!1455}
!1455 = !DISubrange(count: 10)
!1456 = !{i32 7, !"Dwarf Version", i32 5}
!1457 = !{i32 2, !"Debug Info Version", i32 3}
!1458 = !{i32 1, !"wchar_size", i32 4}
!1459 = !{i32 7, !"PIC Level", i32 2}
!1460 = !{i32 7, !"PIE Level", i32 2}
!1461 = !{i32 7, !"uwtable", i32 2}
!1462 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1463 = distinct !DISubprogram(name: "Perl_pv_escape", scope: !1392, file: !1392, line: 140, type: !1464, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1468)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{!526, !514, !886, !1466, !1466, !1467, !889}
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!1467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1492}
!1469 = !DILocalVariable(name: "dsv", arg: 1, scope: !1463, file: !1392, line: 140, type: !514)
!1470 = !DILocalVariable(name: "str", arg: 2, scope: !1463, file: !1392, line: 140, type: !886)
!1471 = !DILocalVariable(name: "count", arg: 3, scope: !1463, file: !1392, line: 141, type: !1466)
!1472 = !DILocalVariable(name: "max", arg: 4, scope: !1463, file: !1392, line: 141, type: !1466)
!1473 = !DILocalVariable(name: "escaped", arg: 5, scope: !1463, file: !1392, line: 142, type: !1467)
!1474 = !DILocalVariable(name: "flags", arg: 6, scope: !1463, file: !1392, line: 142, type: !889)
!1475 = !DILocalVariable(name: "esc", scope: !1463, file: !1392, line: 144, type: !888)
!1476 = !DILocalVariable(name: "dq", scope: !1463, file: !1392, line: 145, type: !888)
!1477 = !DILocalVariable(name: "octbuf", scope: !1463, file: !1392, line: 146, type: !1478)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 256, elements: !1479)
!1479 = !{!1480}
!1480 = !DISubrange(count: 32)
!1481 = !DILocalVariable(name: "wrote", scope: !1463, file: !1392, line: 147, type: !545)
!1482 = !DILocalVariable(name: "chsize", scope: !1463, file: !1392, line: 148, type: !545)
!1483 = !DILocalVariable(name: "readsize", scope: !1463, file: !1392, line: 149, type: !545)
!1484 = !DILocalVariable(name: "isuni", scope: !1463, file: !1392, line: 150, type: !475)
!1485 = !DILocalVariable(name: "pv", scope: !1463, file: !1392, line: 151, type: !887)
!1486 = !DILocalVariable(name: "end", scope: !1463, file: !1392, line: 152, type: !886)
!1487 = !DILocalVariable(name: "u", scope: !1488, file: !1392, line: 166, type: !1491)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !1392, line: 165, column: 70)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !1392, line: 165, column: 5)
!1490 = distinct !DILexicalBlock(scope: !1463, file: !1392, line: 165, column: 5)
!1491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!1492 = !DILocalVariable(name: "c", scope: !1488, file: !1392, line: 167, type: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!1494 = !DILocation(line: 0, scope: !1463)
!1495 = !DILocation(line: 144, column: 29, scope: !1463)
!1496 = !DILocation(line: 144, column: 22, scope: !1463)
!1497 = !DILocation(line: 145, column: 28, scope: !1463)
!1498 = !DILocation(line: 145, column: 21, scope: !1463)
!1499 = !DILocation(line: 146, column: 5, scope: !1463)
!1500 = !DILocation(line: 146, column: 10, scope: !1463)
!1501 = !DILocation(line: 149, column: 5, scope: !1463)
!1502 = !DILocation(line: 149, column: 12, scope: !1463)
!1503 = !DILocation(line: 150, column: 10, scope: !1463)
!1504 = !DILocation(line: 152, column: 33, scope: !1463)
!1505 = !DILocation(line: 153, column: 15, scope: !1463)
!1506 = !DILocation(line: 157, column: 9, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1463, file: !1392, line: 157, column: 9)
!1508 = !DILocation(line: 157, column: 13, scope: !1507)
!1509 = !DILocation(line: 159, column: 6, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !1392, line: 157, column: 51)
!1511 = !DILocation(line: 160, column: 5, scope: !1510)
!1512 = !DILocation(line: 162, column: 16, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1463, file: !1392, line: 162, column: 9)
!1514 = !DILocation(line: 162, column: 45, scope: !1513)
!1515 = !DILocation(line: 162, column: 48, scope: !1513)
!1516 = !DILocation(line: 162, column: 9, scope: !1463)
!1517 = !DILocation(line: 165, column: 17, scope: !1489)
!1518 = !DILocation(line: 165, column: 23, scope: !1489)
!1519 = !DILocation(line: 165, column: 32, scope: !1489)
!1520 = !DILocation(line: 166, column: 21, scope: !1488)
!1521 = !DILocation(line: 166, column: 31, scope: !1488)
!1522 = !DILocation(line: 166, column: 86, scope: !1488)
!1523 = !DILocation(line: 166, column: 82, scope: !1488)
!1524 = !DILocation(line: 0, scope: !1488)
!1525 = !DILocation(line: 167, column: 22, scope: !1488)
!1526 = !DILocation(line: 169, column: 18, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1488, file: !1392, line: 169, column: 14)
!1528 = !DILocation(line: 170, column: 4, scope: !1527)
!1529 = !DILocation(line: 173, column: 17, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1527, file: !1392, line: 172, column: 2)
!1531 = !DILocation(line: 174, column: 26, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1530, file: !1392, line: 173, column: 17)
!1533 = !DILocation(line: 174, column: 17, scope: !1532)
!1534 = !DILocation(line: 177, column: 26, scope: !1532)
!1535 = !DILocation(line: 182, column: 20, scope: !1527)
!1536 = !DILocation(line: 185, column: 19, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !1392, line: 185, column: 18)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !1392, line: 184, column: 16)
!1539 = distinct !DILexicalBlock(scope: !1527, file: !1392, line: 182, column: 20)
!1540 = !DILocation(line: 185, column: 21, scope: !1537)
!1541 = !DILocation(line: 185, column: 28, scope: !1537)
!1542 = !DILocation(line: 185, column: 46, scope: !1537)
!1543 = !DILocation(line: 185, column: 18, scope: !1538)
!1544 = !DILocation(line: 187, column: 17, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1537, file: !1392, line: 185, column: 59)
!1546 = !DILocation(line: 190, column: 20, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1545, file: !1392, line: 187, column: 28)
!1548 = !DILocation(line: 191, column: 29, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !1392, line: 190, column: 32)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !1392, line: 190, column: 20)
!1551 = !DILocation(line: 192, column: 15, scope: !1549)
!1552 = !DILocation(line: 196, column: 25, scope: !1547)
!1553 = !DILocation(line: 196, column: 33, scope: !1547)
!1554 = !DILocation(line: 197, column: 25, scope: !1547)
!1555 = !DILocation(line: 197, column: 33, scope: !1547)
!1556 = !DILocation(line: 198, column: 25, scope: !1547)
!1557 = !DILocation(line: 198, column: 33, scope: !1547)
!1558 = !DILocation(line: 199, column: 25, scope: !1547)
!1559 = !DILocation(line: 199, column: 33, scope: !1547)
!1560 = !DILocation(line: 200, column: 25, scope: !1547)
!1561 = !DILocation(line: 200, column: 33, scope: !1547)
!1562 = !DILocation(line: 202, column: 30, scope: !1547)
!1563 = !DILocation(line: 203, column: 15, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1547, file: !1392, line: 202, column: 30)
!1565 = !DILocation(line: 203, column: 5, scope: !1564)
!1566 = !DILocation(line: 208, column: 57, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1547, file: !1392, line: 208, column: 27)
!1568 = !DILocation(line: 209, column: 34, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1567, file: !1392, line: 208, column: 72)
!1570 = !DILocation(line: 212, column: 22, scope: !1569)
!1571 = !DILocation(line: 213, column: 36, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1567, file: !1392, line: 213, column: 32)
!1573 = !DILocation(line: 213, column: 35, scope: !1572)
!1574 = !DILocation(line: 213, column: 45, scope: !1572)
!1575 = !DILocation(line: 213, column: 52, scope: !1572)
!1576 = !DILocation(line: 213, column: 55, scope: !1572)
!1577 = !DILocation(line: 213, column: 32, scope: !1567)
!1578 = !DILocation(line: 214, column: 38, scope: !1572)
!1579 = !DILocation(line: 214, column: 29, scope: !1572)
!1580 = !DILocation(line: 217, column: 38, scope: !1572)
!1581 = !DILocation(line: 0, scope: !1527)
!1582 = !DILocation(line: 224, column: 11, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1488, file: !1392, line: 224, column: 7)
!1584 = !DILocation(line: 226, column: 27, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1583, file: !1392, line: 226, column: 20)
!1586 = !DILocation(line: 226, column: 20, scope: !1583)
!1587 = !DILocation(line: 227, column: 17, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1585, file: !1392, line: 226, column: 32)
!1589 = !DILocation(line: 228, column: 17, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1588, file: !1392, line: 227, column: 17)
!1591 = !DILocation(line: 237, column: 17, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1585, file: !1392, line: 230, column: 9)
!1593 = !DILocation(line: 238, column: 50, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1592, file: !1392, line: 237, column: 17)
!1595 = !DILocation(line: 238, column: 17, scope: !1594)
!1596 = !DILocation(line: 0, scope: !1489)
!1597 = !DILocation(line: 0, scope: !1585)
!1598 = !DILocation(line: 165, column: 59, scope: !1489)
!1599 = !DILocation(line: 165, column: 56, scope: !1489)
!1600 = distinct !{!1600, !1601, !1602, !1603, !1604}
!1601 = !DILocation(line: 165, column: 5, scope: !1490)
!1602 = !DILocation(line: 243, column: 5, scope: !1490)
!1603 = !{!"llvm.loop.mustprogress"}
!1604 = !{!"llvm.loop.unroll.disable"}
!1605 = !DILocation(line: 244, column: 17, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1463, file: !1392, line: 244, column: 9)
!1607 = !DILocation(line: 244, column: 9, scope: !1463)
!1608 = !DILocation(line: 245, column: 22, scope: !1606)
!1609 = !DILocation(line: 245, column: 17, scope: !1606)
!1610 = !DILocation(line: 245, column: 9, scope: !1606)
!1611 = !DILocation(line: 246, column: 12, scope: !1463)
!1612 = !DILocation(line: 246, column: 18, scope: !1463)
!1613 = !DILocation(line: 247, column: 1, scope: !1463)
!1614 = !DILocation(line: 246, column: 5, scope: !1463)
!1615 = !DISubprogram(name: "Perl_sv_setpvn", scope: !1616, file: !1616, line: 4641, type: !1617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!1616 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !876, !886, !1466}
!1619 = !{}
!1620 = !DISubprogram(name: "Perl_is_utf8_string", scope: !1616, file: !1616, line: 2179, type: !1621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!475, !1623, !545}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1624 = !DISubprogram(name: "Perl_utf8n_to_uvchr", scope: !1616, file: !1616, line: 5049, type: !1625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!532, !1623, !545, !1165, !520}
!1627 = !DISubprogram(name: "Perl_ckwarn_d", scope: !1616, file: !1616, line: 713, type: !1628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!475, !520}
!1630 = !DISubprogram(name: "Perl_my_snprintf", scope: !1616, file: !1616, line: 2808, type: !1631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!513, !526, !1633, !887, null}
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!1634 = !DISubprogram(name: "Perl_sv_catpvn_flags", scope: !1616, file: !1616, line: 4229, type: !1635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{null, !876, !887, !1466, !910}
!1637 = !DISubprogram(name: "Perl_sv_catpvf", scope: !1616, file: !1616, line: 4209, type: !1638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{null, !876, !886, null}
!1640 = distinct !DISubprogram(name: "Perl_pv_pretty", scope: !1392, file: !1392, line: 274, type: !1641, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1643)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!526, !514, !886, !1466, !1466, !886, !886, !889}
!1643 = !{!1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654}
!1644 = !DILocalVariable(name: "dsv", arg: 1, scope: !1640, file: !1392, line: 274, type: !514)
!1645 = !DILocalVariable(name: "str", arg: 2, scope: !1640, file: !1392, line: 274, type: !886)
!1646 = !DILocalVariable(name: "count", arg: 3, scope: !1640, file: !1392, line: 274, type: !1466)
!1647 = !DILocalVariable(name: "max", arg: 4, scope: !1640, file: !1392, line: 275, type: !1466)
!1648 = !DILocalVariable(name: "start_color", arg: 5, scope: !1640, file: !1392, line: 275, type: !886)
!1649 = !DILocalVariable(name: "end_color", arg: 6, scope: !1640, file: !1392, line: 275, type: !886)
!1650 = !DILocalVariable(name: "flags", arg: 7, scope: !1640, file: !1392, line: 276, type: !889)
!1651 = !DILocalVariable(name: "quotes", scope: !1640, file: !1392, line: 278, type: !1623)
!1652 = !DILocalVariable(name: "escaped", scope: !1640, file: !1392, line: 280, type: !545)
!1653 = !DILocalVariable(name: "max_adjust", scope: !1640, file: !1392, line: 281, type: !545)
!1654 = !DILocalVariable(name: "orig_cur", scope: !1640, file: !1392, line: 282, type: !545)
!1655 = !DILocation(line: 0, scope: !1640)
!1656 = !DILocation(line: 278, column: 37, scope: !1640)
!1657 = !DILocation(line: 278, column: 30, scope: !1640)
!1658 = !DILocation(line: 279, column: 37, scope: !1640)
!1659 = !DILocation(line: 279, column: 30, scope: !1640)
!1660 = !DILocation(line: 280, column: 5, scope: !1640)
!1661 = !DILocation(line: 286, column: 17, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1640, file: !1392, line: 286, column: 9)
!1663 = !DILocation(line: 286, column: 9, scope: !1640)
!1664 = !DILocation(line: 288, column: 9, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !1392, line: 286, column: 44)
!1666 = !DILocation(line: 289, column: 5, scope: !1665)
!1667 = !DILocation(line: 290, column: 15, scope: !1640)
!1668 = !DILocation(line: 292, column: 10, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1640, file: !1392, line: 292, column: 10)
!1670 = !DILocation(line: 292, column: 10, scope: !1640)
!1671 = !DILocation(line: 293, column: 41, scope: !1669)
!1672 = !DILocation(line: 293, column: 9, scope: !1669)
!1673 = !DILocation(line: 295, column: 22, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1640, file: !1392, line: 295, column: 10)
!1675 = !DILocation(line: 295, column: 10, scope: !1640)
!1676 = !DILocation(line: 296, column: 9, scope: !1674)
!1677 = !DILocation(line: 298, column: 16, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1640, file: !1392, line: 298, column: 9)
!1679 = !DILocation(line: 298, column: 9, scope: !1640)
!1680 = !DILocation(line: 299, column: 13, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !1392, line: 298, column: 45)
!1682 = !DILocation(line: 302, column: 9, scope: !1681)
!1683 = !DILocation(line: 303, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !1392, line: 303, column: 14)
!1685 = !DILocation(line: 303, column: 48, scope: !1684)
!1686 = !DILocation(line: 308, column: 5, scope: !1640)
!1687 = !DILocation(line: 310, column: 20, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1640, file: !1392, line: 310, column: 10)
!1689 = !DILocation(line: 310, column: 10, scope: !1640)
!1690 = !DILocation(line: 311, column: 9, scope: !1688)
!1691 = !DILocation(line: 313, column: 10, scope: !1640)
!1692 = !DILocation(line: 314, column: 41, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1640, file: !1392, line: 313, column: 10)
!1694 = !DILocation(line: 314, column: 9, scope: !1693)
!1695 = !DILocation(line: 316, column: 17, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1640, file: !1392, line: 316, column: 10)
!1697 = !DILocation(line: 316, column: 44, scope: !1696)
!1698 = !DILocation(line: 317, column: 6, scope: !1696)
!1699 = !DILocation(line: 319, column: 9, scope: !1640)
!1700 = !DILocation(line: 320, column: 16, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1702, file: !1392, line: 319, column: 45)
!1702 = distinct !DILexicalBlock(scope: !1640, file: !1392, line: 319, column: 9)
!1703 = !DILocation(line: 320, column: 27, scope: !1701)
!1704 = !DILocation(line: 320, column: 38, scope: !1701)
!1705 = !DILocation(line: 320, column: 9, scope: !1701)
!1706 = !DILocation(line: 321, column: 13, scope: !1701)
!1707 = distinct !{!1707, !1705, !1706, !1603, !1604}
!1708 = !DILocation(line: 324, column: 12, scope: !1640)
!1709 = !DILocation(line: 325, column: 1, scope: !1640)
!1710 = !DILocation(line: 324, column: 5, scope: !1640)
!1711 = !DISubprogram(name: "Perl_sv_catpv", scope: !1616, file: !1616, line: 4193, type: !1712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{null, !876, !887}
!1714 = distinct !DISubprogram(name: "Perl_pv_display", scope: !1392, file: !1392, line: 343, type: !1715, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!526, !514, !887, !545, !545, !545}
!1717 = !{!1718, !1719, !1720, !1721, !1722}
!1718 = !DILocalVariable(name: "dsv", arg: 1, scope: !1714, file: !1392, line: 343, type: !514)
!1719 = !DILocalVariable(name: "pv", arg: 2, scope: !1714, file: !1392, line: 343, type: !887)
!1720 = !DILocalVariable(name: "cur", arg: 3, scope: !1714, file: !1392, line: 343, type: !545)
!1721 = !DILocalVariable(name: "len", arg: 4, scope: !1714, file: !1392, line: 343, type: !545)
!1722 = !DILocalVariable(name: "pvlim", arg: 5, scope: !1714, file: !1392, line: 343, type: !545)
!1723 = !DILocation(line: 0, scope: !1714)
!1724 = !DILocation(line: 0, scope: !1640, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 347, column: 5, scope: !1714)
!1726 = !DILocation(line: 280, column: 5, scope: !1640, inlinedAt: !1725)
!1727 = !DILocation(line: 288, column: 9, scope: !1665, inlinedAt: !1725)
!1728 = !DILocation(line: 293, column: 9, scope: !1669, inlinedAt: !1725)
!1729 = !DILocation(line: 308, column: 5, scope: !1640, inlinedAt: !1725)
!1730 = !DILocation(line: 314, column: 9, scope: !1693, inlinedAt: !1725)
!1731 = !DILocation(line: 316, column: 44, scope: !1696, inlinedAt: !1725)
!1732 = !DILocation(line: 317, column: 6, scope: !1696, inlinedAt: !1725)
!1733 = !DILocation(line: 325, column: 1, scope: !1640, inlinedAt: !1725)
!1734 = !DILocation(line: 348, column: 13, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1714, file: !1392, line: 348, column: 9)
!1736 = !DILocation(line: 348, column: 19, scope: !1735)
!1737 = !DILocation(line: 348, column: 22, scope: !1735)
!1738 = !DILocation(line: 348, column: 30, scope: !1735)
!1739 = !DILocation(line: 348, column: 9, scope: !1714)
!1740 = !DILocation(line: 349, column: 13, scope: !1735)
!1741 = !DILocation(line: 324, column: 12, scope: !1640, inlinedAt: !1725)
!1742 = !DILocation(line: 350, column: 12, scope: !1714)
!1743 = !DILocation(line: 350, column: 5, scope: !1714)
!1744 = distinct !DISubprogram(name: "Perl_sv_peek", scope: !1392, file: !1392, line: 354, type: !1745, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1747)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!526, !514}
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1759, !1760, !1763, !1764, !1769, !1772, !1773}
!1748 = !DILocalVariable(name: "sv", arg: 1, scope: !1744, file: !1392, line: 354, type: !514)
!1749 = !DILocalVariable(name: "t", scope: !1744, file: !1392, line: 357, type: !876)
!1750 = !DILocalVariable(name: "unref", scope: !1744, file: !1392, line: 358, type: !513)
!1751 = !DILocalVariable(name: "type", scope: !1744, file: !1392, line: 359, type: !520)
!1752 = !DILocalVariable(name: "is_tmp", scope: !1753, file: !1392, line: 415, type: !513)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !1392, line: 414, column: 29)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !1392, line: 414, column: 14)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !1392, line: 410, column: 14)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !1392, line: 372, column: 14)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !1392, line: 367, column: 14)
!1758 = distinct !DILexicalBlock(scope: !1744, file: !1392, line: 363, column: 9)
!1759 = !DILocalVariable(name: "ix", scope: !1753, file: !1392, line: 416, type: !805)
!1760 = !DILocalVariable(name: "tmp", scope: !1761, file: !1392, line: 444, type: !876)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !1392, line: 443, column: 27)
!1762 = distinct !DILexicalBlock(scope: !1744, file: !1392, line: 443, column: 9)
!1763 = !DILocalVariable(name: "gvcv", scope: !1761, file: !1392, line: 445, type: !655)
!1764 = !DILocalVariable(name: "tmp", scope: !1765, file: !1392, line: 464, type: !876)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !1392, line: 463, column: 7)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !1392, line: 461, column: 6)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !1392, line: 460, column: 21)
!1768 = distinct !DILexicalBlock(scope: !1744, file: !1392, line: 460, column: 9)
!1769 = !DILocalVariable(name: "delta", scope: !1770, file: !1392, line: 467, type: !545)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !1392, line: 466, column: 21)
!1771 = distinct !DILexicalBlock(scope: !1765, file: !1392, line: 466, column: 10)
!1772 = !DILabel(scope: !1744, name: "retry", file: !1392, line: 362)
!1773 = !DILabel(scope: !1744, name: "finish", file: !1392, line: 493)
!1774 = !DILocation(line: 0, scope: !1744)
!1775 = !DILocation(line: 357, column: 20, scope: !1744)
!1776 = !DILocation(line: 361, column: 5, scope: !1744)
!1777 = !DILocation(line: 362, column: 3, scope: !1744)
!1778 = !DILocation(line: 363, column: 10, scope: !1758)
!1779 = !DILocation(line: 363, column: 9, scope: !1744)
!1780 = !DILocation(line: 358, column: 9, scope: !1744)
!1781 = !DILocation(line: 364, column: 2, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1758, file: !1392, line: 363, column: 14)
!1783 = !DILocation(line: 365, column: 2, scope: !1782)
!1784 = !DILocation(line: 367, column: 17, scope: !1757)
!1785 = !DILocation(line: 367, column: 43, scope: !1757)
!1786 = !DILocation(line: 367, column: 53, scope: !1757)
!1787 = !DILocation(line: 367, column: 65, scope: !1757)
!1788 = !DILocation(line: 367, column: 14, scope: !1758)
!1789 = !DILocation(line: 369, column: 2, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1757, file: !1392, line: 367, column: 73)
!1791 = !DILocation(line: 370, column: 2, scope: !1790)
!1792 = !DILocation(line: 372, column: 17, scope: !1756)
!1793 = !DILocation(line: 372, column: 33, scope: !1756)
!1794 = !DILocation(line: 373, column: 6, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1756, file: !1392, line: 372, column: 101)
!1796 = !DILocation(line: 374, column: 6, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !1392, line: 373, column: 26)
!1798 = distinct !DILexicalBlock(scope: !1795, file: !1392, line: 373, column: 6)
!1799 = !DILocation(line: 375, column: 12, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !1392, line: 375, column: 10)
!1801 = !DILocation(line: 375, column: 24, scope: !1800)
!1802 = !DILocation(line: 376, column: 32, scope: !1800)
!1803 = !DILocation(line: 380, column: 11, scope: !1798)
!1804 = !DILocation(line: 381, column: 6, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !1392, line: 380, column: 28)
!1806 = distinct !DILexicalBlock(scope: !1798, file: !1392, line: 380, column: 11)
!1807 = !DILocation(line: 382, column: 12, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1805, file: !1392, line: 382, column: 10)
!1809 = !DILocation(line: 383, column: 32, scope: !1808)
!1810 = !DILocation(line: 386, column: 3, scope: !1808)
!1811 = !DILocation(line: 386, column: 13, scope: !1808)
!1812 = !DILocation(line: 386, column: 18, scope: !1808)
!1813 = !DILocation(line: 387, column: 3, scope: !1808)
!1814 = !DILocation(line: 387, column: 13, scope: !1808)
!1815 = !DILocation(line: 382, column: 10, scope: !1805)
!1816 = !DILocation(line: 390, column: 11, scope: !1806)
!1817 = !DILocation(line: 391, column: 6, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !1392, line: 390, column: 29)
!1819 = distinct !DILexicalBlock(scope: !1806, file: !1392, line: 390, column: 11)
!1820 = !DILocation(line: 392, column: 12, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1818, file: !1392, line: 392, column: 10)
!1822 = !DILocation(line: 393, column: 32, scope: !1821)
!1823 = !DILocation(line: 396, column: 3, scope: !1821)
!1824 = !DILocation(line: 396, column: 13, scope: !1821)
!1825 = !DILocation(line: 396, column: 18, scope: !1821)
!1826 = !DILocation(line: 397, column: 3, scope: !1821)
!1827 = !DILocation(line: 397, column: 19, scope: !1821)
!1828 = !DILocation(line: 397, column: 22, scope: !1821)
!1829 = !DILocation(line: 397, column: 39, scope: !1821)
!1830 = !DILocation(line: 397, column: 46, scope: !1821)
!1831 = !DILocation(line: 398, column: 3, scope: !1821)
!1832 = !DILocation(line: 398, column: 13, scope: !1821)
!1833 = !DILocation(line: 392, column: 10, scope: !1818)
!1834 = !DILocation(line: 402, column: 6, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1819, file: !1392, line: 401, column: 7)
!1836 = !DILocation(line: 403, column: 12, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1835, file: !1392, line: 403, column: 10)
!1838 = !DILocation(line: 403, column: 24, scope: !1837)
!1839 = !DILocation(line: 404, column: 32, scope: !1837)
!1840 = !DILocation(line: 408, column: 2, scope: !1795)
!1841 = !DILocation(line: 409, column: 5, scope: !1795)
!1842 = !DILocation(line: 410, column: 14, scope: !1755)
!1843 = !DILocation(line: 410, column: 27, scope: !1755)
!1844 = !DILocation(line: 410, column: 14, scope: !1756)
!1845 = !DILocation(line: 411, column: 2, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1755, file: !1392, line: 410, column: 33)
!1847 = !DILocation(line: 412, column: 7, scope: !1846)
!1848 = !DILocation(line: 413, column: 5, scope: !1846)
!1849 = !DILocation(line: 414, column: 14, scope: !1754)
!1850 = !DILocation(line: 414, column: 14, scope: !1755)
!1851 = !DILocation(line: 0, scope: !1753)
!1852 = !DILocation(line: 418, column: 10, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1753, file: !1392, line: 418, column: 2)
!1854 = !DILocation(line: 418, column: 24, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1853, file: !1392, line: 418, column: 2)
!1856 = !DILocation(line: 418, column: 2, scope: !1853)
!1857 = !DILocation(line: 418, column: 31, scope: !1855)
!1858 = distinct !{!1858, !1856, !1859, !1603, !1604}
!1859 = !DILocation(line: 423, column: 2, scope: !1853)
!1860 = !DILocation(line: 419, column: 10, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !1392, line: 419, column: 10)
!1862 = distinct !DILexicalBlock(scope: !1855, file: !1392, line: 418, column: 35)
!1863 = !DILocation(line: 419, column: 28, scope: !1861)
!1864 = !DILocation(line: 419, column: 10, scope: !1862)
!1865 = !DILocation(line: 424, column: 19, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1753, file: !1392, line: 424, column: 6)
!1867 = !DILocation(line: 424, column: 6, scope: !1753)
!1868 = !DILocation(line: 425, column: 45, scope: !1866)
!1869 = !DILocation(line: 425, column: 6, scope: !1866)
!1870 = !DILocation(line: 428, column: 6, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !1392, line: 427, column: 11)
!1872 = !DILocation(line: 431, column: 9, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1744, file: !1392, line: 431, column: 9)
!1874 = !DILocation(line: 431, column: 9, scope: !1744)
!1875 = !DILocation(line: 432, column: 2, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1873, file: !1392, line: 431, column: 20)
!1877 = !DILocation(line: 433, column: 6, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1876, file: !1392, line: 433, column: 6)
!1879 = !DILocation(line: 433, column: 17, scope: !1878)
!1880 = !DILocation(line: 433, column: 15, scope: !1878)
!1881 = !DILocation(line: 433, column: 23, scope: !1878)
!1882 = !DILocation(line: 433, column: 6, scope: !1876)
!1883 = !DILocation(line: 434, column: 6, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !1392, line: 434, column: 6)
!1885 = distinct !DILexicalBlock(scope: !1878, file: !1392, line: 433, column: 29)
!1886 = !DILocation(line: 435, column: 7, scope: !1885)
!1887 = !DILocation(line: 435, column: 16, scope: !1885)
!1888 = !DILocation(line: 436, column: 6, scope: !1885)
!1889 = !DILocation(line: 437, column: 6, scope: !1885)
!1890 = !DILocation(line: 439, column: 7, scope: !1876)
!1891 = !DILocation(line: 442, column: 12, scope: !1744)
!1892 = !DILocation(line: 443, column: 14, scope: !1762)
!1893 = !DILocation(line: 443, column: 9, scope: !1744)
!1894 = !DILocation(line: 444, column: 26, scope: !1761)
!1895 = !DILocation(line: 0, scope: !1761)
!1896 = !DILocalVariable(name: "sv", arg: 1, scope: !1897, file: !1898, line: 29, type: !720)
!1897 = distinct !DISubprogram(name: "S_CvGV", scope: !1898, file: !1898, line: 29, type: !1899, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!1898 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!655, !720}
!1901 = !{!1896}
!1902 = !DILocation(line: 0, scope: !1897, inlinedAt: !1903)
!1903 = distinct !DILocation(line: 445, column: 20, scope: !1761)
!1904 = !DILocation(line: 31, column: 12, scope: !1897, inlinedAt: !1903)
!1905 = !DILocation(line: 32, column: 4, scope: !1897, inlinedAt: !1903)
!1906 = !DILocation(line: 33, column: 38, scope: !1897, inlinedAt: !1903)
!1907 = !DILocation(line: 33, column: 47, scope: !1897, inlinedAt: !1903)
!1908 = !DILocation(line: 446, column: 43, scope: !1761)
!1909 = !DILocation(line: 447, column: 26, scope: !1761)
!1910 = !DILocation(line: 446, column: 9, scope: !1761)
!1911 = !DILocation(line: 450, column: 21, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1762, file: !1392, line: 450, column: 16)
!1913 = !DILocation(line: 450, column: 16, scope: !1762)
!1914 = !DILocation(line: 451, column: 2, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !1392, line: 450, column: 33)
!1916 = !DILocation(line: 453, column: 11, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1915, file: !1392, line: 453, column: 6)
!1918 = !DILocation(line: 453, column: 6, scope: !1915)
!1919 = !DILocation(line: 456, column: 2, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1912, file: !1392, line: 455, column: 12)
!1921 = !DILocation(line: 457, column: 2, scope: !1920)
!1922 = !DILocation(line: 460, column: 9, scope: !1768)
!1923 = !DILocation(line: 460, column: 9, scope: !1744)
!1924 = !DILocation(line: 461, column: 7, scope: !1766)
!1925 = !DILocation(line: 461, column: 6, scope: !1767)
!1926 = !DILocation(line: 462, column: 6, scope: !1766)
!1927 = !DILocation(line: 464, column: 23, scope: !1765)
!1928 = !DILocation(line: 0, scope: !1765)
!1929 = !DILocation(line: 465, column: 6, scope: !1765)
!1930 = !DILocation(line: 466, column: 10, scope: !1771)
!1931 = !DILocation(line: 466, column: 10, scope: !1765)
!1932 = !DILocation(line: 468, column: 3, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !1392, line: 468, column: 3)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !1392, line: 468, column: 3)
!1935 = distinct !DILexicalBlock(scope: !1770, file: !1392, line: 468, column: 3)
!1936 = !DILocation(line: 0, scope: !1770)
!1937 = !DILocation(line: 468, column: 3, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1933, file: !1392, line: 468, column: 3)
!1939 = !DILocation(line: 468, column: 3, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1938, file: !1392, line: 468, column: 3)
!1941 = !DILocation(line: 0, scope: !1934)
!1942 = !DILocation(line: 469, column: 35, scope: !1770)
!1943 = !DILocation(line: 469, column: 3, scope: !1770)
!1944 = !DILocation(line: 470, column: 6, scope: !1770)
!1945 = !DILocation(line: 471, column: 37, scope: !1765)
!1946 = !DILocation(line: 471, column: 6, scope: !1765)
!1947 = !DILocation(line: 472, column: 10, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1765, file: !1392, line: 472, column: 10)
!1949 = !DILocation(line: 472, column: 10, scope: !1765)
!1950 = !DILocation(line: 474, column: 11, scope: !1948)
!1951 = !DILocation(line: 473, column: 3, scope: !1948)
!1952 = !DILocalVariable(name: "sv", arg: 1, scope: !1953, file: !1898, line: 171, type: !514)
!1953 = distinct !DISubprogram(name: "S_SvREFCNT_dec_NN", scope: !1898, file: !1898, line: 171, type: !1954, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{null, !514}
!1956 = !{!1952, !1957}
!1957 = !DILocalVariable(name: "rc", scope: !1953, file: !1898, line: 173, type: !520)
!1958 = !DILocation(line: 0, scope: !1953, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 476, column: 6, scope: !1765)
!1960 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !1959)
!1961 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !1959)
!1962 = distinct !DILexicalBlock(scope: !1953, file: !1898, line: 174, column: 9)
!1963 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !1959)
!1964 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !1959)
!1965 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !1959)
!1966 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !1959)
!1967 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !1959)
!1968 = !DILocation(line: 479, column: 14, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1768, file: !1392, line: 479, column: 14)
!1970 = !DILocation(line: 479, column: 14, scope: !1768)
!1971 = !DILocation(line: 481, column: 38, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1969, file: !1392, line: 479, column: 26)
!1973 = !DILocation(line: 481, column: 2, scope: !1972)
!1974 = !DILocation(line: 483, column: 5, scope: !1972)
!1975 = !DILocation(line: 484, column: 14, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1969, file: !1392, line: 484, column: 14)
!1977 = !DILocation(line: 484, column: 14, scope: !1969)
!1978 = !DILocation(line: 485, column: 6, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !1392, line: 485, column: 6)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !1392, line: 484, column: 26)
!1981 = !DILocation(line: 0, scope: !1979)
!1982 = !DILocation(line: 485, column: 6, scope: !1980)
!1983 = !DILocation(line: 486, column: 47, scope: !1979)
!1984 = !DILocation(line: 486, column: 6, scope: !1979)
!1985 = !DILocation(line: 488, column: 54, scope: !1979)
!1986 = !DILocation(line: 488, column: 13, scope: !1979)
!1987 = !DILocation(line: 491, column: 2, scope: !1976)
!1988 = !DILocation(line: 493, column: 3, scope: !1744)
!1989 = !DILocation(line: 494, column: 5, scope: !1744)
!1990 = !DILocation(line: 494, column: 17, scope: !1744)
!1991 = !DILocation(line: 495, column: 2, scope: !1744)
!1992 = distinct !{!1992, !1989, !1991, !1603, !1604}
!1993 = !DILocation(line: 496, column: 9, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1744, file: !1392, line: 496, column: 9)
!1995 = !{i8 0, i8 2}
!1996 = !DILocation(line: 496, column: 22, scope: !1994)
!1997 = !DILocation(line: 496, column: 31, scope: !1994)
!1998 = !DILocation(line: 496, column: 9, scope: !1744)
!1999 = !DILocation(line: 497, column: 2, scope: !1994)
!2000 = !DILocation(line: 498, column: 12, scope: !1744)
!2001 = !DILocation(line: 499, column: 1, scope: !1744)
!2002 = !DISubprogram(name: "Perl_sv_newmortal", scope: !1616, file: !1616, line: 4449, type: !2003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!514}
!2005 = !DISubprogram(name: "Perl_newSVpvn_flags", scope: !1616, file: !1616, line: 3116, type: !2006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!514, !886, !1466, !889}
!2008 = !DISubprogram(name: "Perl_newSVpvn", scope: !1616, file: !1616, line: 3112, type: !2009, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!514, !886, !1466}
!2011 = !DISubprogram(name: "Perl_sv_uni_display", scope: !1616, file: !1616, line: 4715, type: !2012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!526, !514, !514, !545, !532}
!2014 = !DISubprogram(name: "Perl_sv_tainted", scope: !1616, file: !1616, line: 4708, type: !2015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!475, !876}
!2017 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !1616, file: !1616, line: 4130, type: !2018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!526, !876, !1467, !910}
!2020 = distinct !DISubprogram(name: "Perl_dump_indent", scope: !1392, file: !1392, line: 506, type: !2021, scopeLine: 507, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2023)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !594, !635, !887, null}
!2023 = !{!2024, !2025, !2026, !2027}
!2024 = !DILocalVariable(name: "level", arg: 1, scope: !2020, file: !1392, line: 506, type: !594)
!2025 = !DILocalVariable(name: "file", arg: 2, scope: !2020, file: !1392, line: 506, type: !635)
!2026 = !DILocalVariable(name: "pat", arg: 3, scope: !2020, file: !1392, line: 506, type: !887)
!2027 = !DILocalVariable(name: "args", scope: !2020, file: !1392, line: 508, type: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2029, line: 52, baseType: !2030)
!2029 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2031, line: 32, baseType: !2032)
!2031 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stdarg.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2033, baseType: !2034)
!2033 = !DIFile(filename: "apps/500.perlbench_r/src/dump.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!2034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2035, size: 192, elements: !597)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2040}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2035, file: !2033, line: 508, baseType: !7, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2035, file: !2033, line: 508, baseType: !7, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2035, file: !2033, line: 508, baseType: !476, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2035, file: !2033, line: 508, baseType: !476, size: 64, offset: 128)
!2041 = !DILocation(line: 0, scope: !2020)
!2042 = !DILocation(line: 508, column: 5, scope: !2020)
!2043 = !DILocation(line: 508, column: 13, scope: !2020)
!2044 = !DILocation(line: 510, column: 5, scope: !2020)
!2045 = !DILocalVariable(name: "level", arg: 1, scope: !2046, file: !1392, line: 516, type: !594)
!2046 = distinct !DISubprogram(name: "Perl_dump_vindent", scope: !1392, file: !1392, line: 516, type: !2047, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2050)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{null, !594, !635, !887, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2050 = !{!2045, !2051, !2052, !2053}
!2051 = !DILocalVariable(name: "file", arg: 2, scope: !2046, file: !1392, line: 516, type: !635)
!2052 = !DILocalVariable(name: "pat", arg: 3, scope: !2046, file: !1392, line: 516, type: !887)
!2053 = !DILocalVariable(name: "args", arg: 4, scope: !2046, file: !1392, line: 516, type: !2049)
!2054 = !DILocation(line: 0, scope: !2046, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 511, column: 5, scope: !2020)
!2056 = !DILocation(line: 519, column: 44, scope: !2046, inlinedAt: !2055)
!2057 = !DILocation(line: 519, column: 43, scope: !2046, inlinedAt: !2055)
!2058 = !DILocation(line: 519, column: 5, scope: !2046, inlinedAt: !2055)
!2059 = !DILocation(line: 520, column: 5, scope: !2046, inlinedAt: !2055)
!2060 = !DILocation(line: 512, column: 5, scope: !2020)
!2061 = !DILocation(line: 513, column: 1, scope: !2020)
!2062 = !DILocation(line: 0, scope: !2046)
!2063 = !DILocation(line: 519, column: 44, scope: !2046)
!2064 = !DILocation(line: 519, column: 43, scope: !2046)
!2065 = !DILocation(line: 519, column: 5, scope: !2046)
!2066 = !DILocation(line: 520, column: 5, scope: !2046)
!2067 = !DILocation(line: 521, column: 1, scope: !2046)
!2068 = !DISubprogram(name: "PerlIO_printf", scope: !637, file: !637, line: 268, type: !2069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!513, !635, !887, null}
!2071 = !DISubprogram(name: "PerlIO_vprintf", scope: !637, file: !637, line: 272, type: !2072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!513, !635, !887, !2074}
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2075 = distinct !DISubprogram(name: "Perl_dump_all", scope: !1392, file: !1392, line: 534, type: !2076, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1619)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null}
!2078 = !DILocalVariable(name: "justperl", arg: 1, scope: !2079, file: !1392, line: 540, type: !475)
!2079 = distinct !DISubprogram(name: "Perl_dump_all_perl", scope: !1392, file: !1392, line: 540, type: !2080, scopeLine: 541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2082)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !475}
!2082 = !{!2078}
!2083 = !DILocation(line: 0, scope: !2079, inlinedAt: !2084)
!2084 = distinct !DILocation(line: 536, column: 5, scope: !2075)
!2085 = !DILocation(line: 542, column: 5, scope: !2079, inlinedAt: !2084)
!2086 = !DILocation(line: 543, column: 9, scope: !2087, inlinedAt: !2084)
!2087 = distinct !DILexicalBlock(scope: !2079, file: !1392, line: 543, column: 9)
!2088 = !DILocation(line: 543, column: 9, scope: !2079, inlinedAt: !2084)
!2089 = !DILocalVariable(name: "o", arg: 1, scope: !2090, file: !1392, line: 1080, type: !2093)
!2090 = distinct !DISubprogram(name: "Perl_op_dump", scope: !1392, file: !1392, line: 1080, type: !2091, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2095)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !2093}
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!2095 = !{!2089}
!2096 = !DILocation(line: 0, scope: !2090, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 544, column: 2, scope: !2087, inlinedAt: !2084)
!2098 = !DILocation(line: 1083, column: 5, scope: !2090, inlinedAt: !2097)
!2099 = !DILocation(line: 544, column: 2, scope: !2087, inlinedAt: !2084)
!2100 = !DILocation(line: 545, column: 5, scope: !2079, inlinedAt: !2084)
!2101 = !DILocation(line: 537, column: 1, scope: !2075)
!2102 = !DILocation(line: 0, scope: !2079)
!2103 = !DILocation(line: 542, column: 5, scope: !2079)
!2104 = !DILocation(line: 543, column: 9, scope: !2087)
!2105 = !DILocation(line: 543, column: 9, scope: !2079)
!2106 = !DILocation(line: 0, scope: !2090, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 544, column: 2, scope: !2087)
!2108 = !DILocation(line: 1083, column: 5, scope: !2090, inlinedAt: !2107)
!2109 = !DILocation(line: 544, column: 2, scope: !2087)
!2110 = !DILocation(line: 545, column: 5, scope: !2079)
!2111 = !DILocation(line: 546, column: 1, scope: !2079)
!2112 = !DISubprogram(name: "Perl_PerlIO_setlinebuf", scope: !1616, file: !1616, line: 8273, type: !2113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !635}
!2115 = !DISubprogram(name: "Perl_PerlIO_stderr", scope: !1616, file: !1616, line: 8274, type: !2116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!635}
!2118 = !DILocation(line: 0, scope: !2090)
!2119 = !DILocation(line: 1083, column: 5, scope: !2090)
!2120 = !DILocation(line: 1084, column: 1, scope: !2090)
!2121 = distinct !DISubprogram(name: "Perl_dump_packsubs_perl", scope: !1392, file: !1392, line: 564, type: !2122, scopeLine: 565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{null, !1334, !475}
!2124 = !{!2125, !2126, !2127, !2128, !2134, !2138}
!2125 = !DILocalVariable(name: "stash", arg: 1, scope: !2121, file: !1392, line: 564, type: !1334)
!2126 = !DILocalVariable(name: "justperl", arg: 2, scope: !2121, file: !1392, line: 564, type: !475)
!2127 = !DILocalVariable(name: "i", scope: !2121, file: !1392, line: 566, type: !594)
!2128 = !DILocalVariable(name: "entry", scope: !2129, file: !1392, line: 573, type: !2132)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !1392, line: 572, column: 47)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !1392, line: 572, column: 5)
!2131 = distinct !DILexicalBlock(scope: !2121, file: !1392, line: 572, column: 5)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!2134 = !DILocalVariable(name: "gv", scope: !2135, file: !1392, line: 575, type: !655)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !1392, line: 574, column: 64)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !1392, line: 574, column: 2)
!2137 = distinct !DILexicalBlock(scope: !2129, file: !1392, line: 574, column: 2)
!2138 = !DILocalVariable(name: "hv", scope: !2139, file: !1392, line: 586, type: !2141)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !1392, line: 585, column: 48)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !1392, line: 585, column: 10)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!2142 = !DILocation(line: 0, scope: !2121)
!2143 = !DILocation(line: 570, column: 10, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2121, file: !1392, line: 570, column: 9)
!2145 = !DILocation(line: 570, column: 9, scope: !2121)
!2146 = !DILocation(line: 572, column: 28, scope: !2130)
!2147 = !DILocation(line: 572, column: 19, scope: !2130)
!2148 = !DILocation(line: 572, column: 5, scope: !2131)
!2149 = !DILocation(line: 574, column: 15, scope: !2137)
!2150 = !DILocation(line: 0, scope: !2129)
!2151 = !DILocation(line: 0, scope: !2137)
!2152 = !DILocation(line: 574, column: 2, scope: !2137)
!2153 = !DILocation(line: 575, column: 22, scope: !2135)
!2154 = !DILocation(line: 0, scope: !2135)
!2155 = !DILocation(line: 576, column: 17, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2135, file: !1392, line: 576, column: 17)
!2157 = !DILocation(line: 576, column: 27, scope: !2156)
!2158 = !DILocation(line: 576, column: 30, scope: !2156)
!2159 = !DILocation(line: 576, column: 47, scope: !2156)
!2160 = !DILocation(line: 576, column: 17, scope: !2135)
!2161 = !DILocation(line: 0, scope: !1897, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 578, column: 23, scope: !2156)
!2163 = !DILocation(line: 31, column: 12, scope: !1897, inlinedAt: !2162)
!2164 = !DILocation(line: 32, column: 4, scope: !1897, inlinedAt: !2162)
!2165 = !DILocation(line: 579, column: 10, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2135, file: !1392, line: 579, column: 10)
!2167 = !DILocation(line: 579, column: 21, scope: !2166)
!2168 = !DILocation(line: 579, column: 33, scope: !2166)
!2169 = !DILocation(line: 579, column: 37, scope: !2166)
!2170 = !DILocation(line: 579, column: 10, scope: !2135)
!2171 = !DILocation(line: 581, column: 10, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2135, file: !1392, line: 581, column: 10)
!2173 = !DILocation(line: 581, column: 10, scope: !2135)
!2174 = !DILocation(line: 582, column: 3, scope: !2172)
!2175 = !DILocation(line: 583, column: 10, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2135, file: !1392, line: 583, column: 10)
!2177 = !DILocation(line: 583, column: 10, scope: !2135)
!2178 = !DILocalVariable(name: "gv", arg: 1, scope: !2179, file: !1392, line: 630, type: !2182)
!2179 = distinct !DISubprogram(name: "Perl_dump_form", scope: !1392, file: !1392, line: 630, type: !2180, scopeLine: 631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{null, !2182}
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!2184 = !{!2178, !2185}
!2185 = !DILocalVariable(name: "sv", scope: !2179, file: !1392, line: 632, type: !876)
!2186 = !DILocation(line: 0, scope: !2179, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 584, column: 3, scope: !2176)
!2188 = !DILocation(line: 632, column: 21, scope: !2179, inlinedAt: !2187)
!2189 = !DILocation(line: 636, column: 5, scope: !2179, inlinedAt: !2187)
!2190 = !DILocation(line: 637, column: 31, scope: !2179, inlinedAt: !2187)
!2191 = !DILocation(line: 637, column: 65, scope: !2179, inlinedAt: !2187)
!2192 = !DILocation(line: 637, column: 5, scope: !2179, inlinedAt: !2187)
!2193 = !DILocation(line: 638, column: 9, scope: !2194, inlinedAt: !2187)
!2194 = distinct !DILexicalBlock(scope: !2179, file: !1392, line: 638, column: 9)
!2195 = !DILocation(line: 0, scope: !2194, inlinedAt: !2187)
!2196 = !DILocation(line: 638, column: 9, scope: !2179, inlinedAt: !2187)
!2197 = !DILocation(line: 0, scope: !2090, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 639, column: 2, scope: !2194, inlinedAt: !2187)
!2199 = !DILocation(line: 1083, column: 5, scope: !2090, inlinedAt: !2198)
!2200 = !DILocation(line: 639, column: 2, scope: !2194, inlinedAt: !2187)
!2201 = !DILocation(line: 641, column: 2, scope: !2194, inlinedAt: !2187)
!2202 = !DILocation(line: 585, column: 10, scope: !2140)
!2203 = !DILocation(line: 585, column: 23, scope: !2140)
!2204 = !DILocation(line: 585, column: 36, scope: !2140)
!2205 = !DILocation(line: 585, column: 40, scope: !2140)
!2206 = !DILocation(line: 585, column: 10, scope: !2135)
!2207 = !DILocation(line: 586, column: 25, scope: !2139)
!2208 = !DILocation(line: 0, scope: !2139)
!2209 = !DILocation(line: 587, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2139, file: !1392, line: 587, column: 7)
!2211 = !DILocation(line: 587, column: 10, scope: !2210)
!2212 = !DILocation(line: 588, column: 7, scope: !2210)
!2213 = distinct !{!2213, !2152, !2214, !1603, !1604}
!2214 = !DILocation(line: 590, column: 2, scope: !2137)
!2215 = !DILocation(line: 572, column: 43, scope: !2130)
!2216 = distinct !{!2216, !2148, !2217, !1603, !1604}
!2217 = !DILocation(line: 591, column: 5, scope: !2131)
!2218 = !DILocation(line: 592, column: 1, scope: !2121)
!2219 = distinct !DISubprogram(name: "Perl_dump_packsubs", scope: !1392, file: !1392, line: 557, type: !2220, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2222)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{null, !1334}
!2222 = !{!2223}
!2223 = !DILocalVariable(name: "stash", arg: 1, scope: !2219, file: !1392, line: 557, type: !1334)
!2224 = !DILocation(line: 0, scope: !2219)
!2225 = !DILocation(line: 560, column: 5, scope: !2219)
!2226 = !DILocation(line: 561, column: 1, scope: !2219)
!2227 = distinct !DISubprogram(name: "Perl_dump_sub_perl", scope: !1392, file: !1392, line: 602, type: !2228, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !2182, !475}
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236}
!2231 = !DILocalVariable(name: "gv", arg: 1, scope: !2227, file: !1392, line: 602, type: !2182)
!2232 = !DILocalVariable(name: "justperl", arg: 2, scope: !2227, file: !1392, line: 602, type: !475)
!2233 = !DILocalVariable(name: "len", scope: !2227, file: !1392, line: 604, type: !545)
!2234 = !DILocalVariable(name: "sv", scope: !2227, file: !1392, line: 605, type: !876)
!2235 = !DILocalVariable(name: "tmpsv", scope: !2227, file: !1392, line: 606, type: !514)
!2236 = !DILocalVariable(name: "name", scope: !2227, file: !1392, line: 607, type: !887)
!2237 = !DILocation(line: 0, scope: !2227)
!2238 = !DILocation(line: 604, column: 5, scope: !2227)
!2239 = !DILocation(line: 605, column: 21, scope: !2227)
!2240 = !DILocation(line: 611, column: 18, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2227, file: !1392, line: 611, column: 9)
!2242 = !DILocation(line: 611, column: 22, scope: !2241)
!2243 = !DILocation(line: 611, column: 41, scope: !2241)
!2244 = !DILocation(line: 611, column: 45, scope: !2241)
!2245 = !DILocation(line: 611, column: 9, scope: !2227)
!2246 = !DILocation(line: 614, column: 13, scope: !2227)
!2247 = !DILocation(line: 615, column: 5, scope: !2227)
!2248 = !DILocation(line: 616, column: 12, scope: !2227)
!2249 = !DILocation(line: 617, column: 31, scope: !2227)
!2250 = !DILocation(line: 618, column: 22, scope: !2227)
!2251 = !DILocation(line: 617, column: 5, scope: !2227)
!2252 = !DILocation(line: 619, column: 9, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2227, file: !1392, line: 619, column: 9)
!2254 = !DILocation(line: 619, column: 9, scope: !2227)
!2255 = !DILocation(line: 620, column: 28, scope: !2253)
!2256 = !DILocation(line: 621, column: 6, scope: !2253)
!2257 = !DILocation(line: 622, column: 11, scope: !2253)
!2258 = !DILocation(line: 622, column: 31, scope: !2253)
!2259 = !DILocation(line: 620, column: 2, scope: !2253)
!2260 = !DILocation(line: 623, column: 14, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2253, file: !1392, line: 623, column: 14)
!2262 = !DILocation(line: 0, scope: !2261)
!2263 = !DILocation(line: 623, column: 14, scope: !2253)
!2264 = !DILocation(line: 0, scope: !2090, inlinedAt: !2265)
!2265 = distinct !DILocation(line: 624, column: 2, scope: !2261)
!2266 = !DILocation(line: 1083, column: 5, scope: !2090, inlinedAt: !2265)
!2267 = !DILocation(line: 624, column: 2, scope: !2261)
!2268 = !DILocation(line: 626, column: 2, scope: !2261)
!2269 = !DILocation(line: 627, column: 1, scope: !2227)
!2270 = !DILocation(line: 0, scope: !2179)
!2271 = !DILocation(line: 632, column: 21, scope: !2179)
!2272 = !DILocation(line: 636, column: 5, scope: !2179)
!2273 = !DILocation(line: 637, column: 31, scope: !2179)
!2274 = !DILocation(line: 637, column: 65, scope: !2179)
!2275 = !DILocation(line: 637, column: 5, scope: !2179)
!2276 = !DILocation(line: 638, column: 9, scope: !2194)
!2277 = !DILocation(line: 0, scope: !2194)
!2278 = !DILocation(line: 638, column: 9, scope: !2179)
!2279 = !DILocation(line: 0, scope: !2090, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 639, column: 2, scope: !2194)
!2281 = !DILocation(line: 1083, column: 5, scope: !2090, inlinedAt: !2280)
!2282 = !DILocation(line: 639, column: 2, scope: !2194)
!2283 = !DILocation(line: 641, column: 2, scope: !2194)
!2284 = !DILocation(line: 642, column: 1, scope: !2179)
!2285 = distinct !DISubprogram(name: "Perl_dump_sub", scope: !1392, file: !1392, line: 595, type: !2180, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2286)
!2286 = !{!2287}
!2287 = !DILocalVariable(name: "gv", arg: 1, scope: !2285, file: !1392, line: 595, type: !2182)
!2288 = !DILocation(line: 0, scope: !2285)
!2289 = !DILocation(line: 598, column: 5, scope: !2285)
!2290 = !DILocation(line: 599, column: 1, scope: !2285)
!2291 = !DISubprogram(name: "Perl_gv_fullname4", scope: !1616, file: !1616, line: 1547, type: !2292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{null, !514, !2182, !887, !475}
!2294 = distinct !DISubprogram(name: "Perl_dump_eval", scope: !1392, file: !1392, line: 645, type: !2076, scopeLine: 646, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1619)
!2295 = !DILocation(line: 647, column: 5, scope: !2294)
!2296 = !DILocation(line: 0, scope: !2090, inlinedAt: !2297)
!2297 = distinct !DILocation(line: 647, column: 5, scope: !2294)
!2298 = !DILocation(line: 1083, column: 5, scope: !2090, inlinedAt: !2297)
!2299 = !DILocation(line: 648, column: 1, scope: !2294)
!2300 = distinct !DISubprogram(name: "Perl_do_pmop_dump", scope: !1392, file: !1392, line: 651, type: !2301, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2305)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !594, !635, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1269)
!2305 = !{!2306, !2307, !2308, !2309, !2310}
!2306 = !DILocalVariable(name: "level", arg: 1, scope: !2300, file: !1392, line: 651, type: !594)
!2307 = !DILocalVariable(name: "file", arg: 2, scope: !2300, file: !1392, line: 651, type: !635)
!2308 = !DILocalVariable(name: "pm", arg: 3, scope: !2300, file: !1392, line: 651, type: !2303)
!2309 = !DILocalVariable(name: "ch", scope: !2300, file: !1392, line: 653, type: !527)
!2310 = !DILocalVariable(name: "tmpsv", scope: !2311, file: !1392, line: 687, type: !876)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !1392, line: 686, column: 76)
!2312 = distinct !DILexicalBlock(scope: !2300, file: !1392, line: 686, column: 9)
!2313 = !DILocation(line: 0, scope: !2300)
!2314 = !DILocation(line: 657, column: 10, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2300, file: !1392, line: 657, column: 9)
!2316 = !DILocation(line: 657, column: 9, scope: !2300)
!2317 = !DILocation(line: 661, column: 5, scope: !2300)
!2318 = !DILocation(line: 662, column: 10, scope: !2300)
!2319 = !DILocation(line: 663, column: 13, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2300, file: !1392, line: 663, column: 9)
!2321 = !DILocation(line: 667, column: 9, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2300, file: !1392, line: 667, column: 9)
!2323 = !DILocation(line: 667, column: 9, scope: !2300)
!2324 = !DILocation(line: 663, column: 24, scope: !2320)
!2325 = !DILocation(line: 669, column: 15, scope: !2322)
!2326 = !DILocation(line: 669, column: 10, scope: !2322)
!2327 = !DILocation(line: 669, column: 40, scope: !2322)
!2328 = !DILocation(line: 670, column: 12, scope: !2322)
!2329 = !DILocation(line: 670, column: 23, scope: !2322)
!2330 = !DILocation(line: 670, column: 7, scope: !2322)
!2331 = !DILocation(line: 668, column: 2, scope: !2322)
!2332 = !DILocation(line: 672, column: 2, scope: !2322)
!2333 = !DILocation(line: 673, column: 13, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2300, file: !1392, line: 673, column: 9)
!2335 = !DILocation(line: 673, column: 21, scope: !2334)
!2336 = !DILocation(line: 673, column: 34, scope: !2334)
!2337 = !DILocation(line: 673, column: 41, scope: !2334)
!2338 = !DILocation(line: 673, column: 56, scope: !2334)
!2339 = !DILocation(line: 673, column: 37, scope: !2334)
!2340 = !DILocation(line: 673, column: 9, scope: !2300)
!2341 = !DILocation(line: 674, column: 2, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2334, file: !1392, line: 673, column: 71)
!2343 = !DILocation(line: 675, column: 2, scope: !2342)
!2344 = !DILocation(line: 0, scope: !2090, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 675, column: 2, scope: !2342)
!2346 = !DILocation(line: 1083, column: 5, scope: !2090, inlinedAt: !2345)
!2347 = !DILocation(line: 676, column: 5, scope: !2342)
!2348 = !DILocation(line: 677, column: 13, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2300, file: !1392, line: 677, column: 9)
!2350 = !DILocation(line: 677, column: 9, scope: !2349)
!2351 = !DILocation(line: 677, column: 9, scope: !2300)
!2352 = !DILocation(line: 678, column: 10, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2354, file: !1392, line: 678, column: 6)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !1392, line: 677, column: 27)
!2355 = !DILocation(line: 678, column: 21, scope: !2353)
!2356 = !DILocation(line: 678, column: 6, scope: !2354)
!2357 = !DILocation(line: 679, column: 6, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !1392, line: 678, column: 45)
!2359 = !DILocation(line: 680, column: 6, scope: !2358)
!2360 = !DILocation(line: 681, column: 2, scope: !2358)
!2361 = !DILocation(line: 684, column: 9, scope: !2353)
!2362 = !DILocation(line: 683, column: 6, scope: !2353)
!2363 = !DILocation(line: 686, column: 13, scope: !2312)
!2364 = !DILocation(line: 686, column: 9, scope: !2312)
!2365 = !DILocation(line: 686, column: 24, scope: !2312)
!2366 = !DILocation(line: 686, column: 28, scope: !2312)
!2367 = !DILocation(line: 686, column: 41, scope: !2312)
!2368 = !DILocation(line: 686, column: 44, scope: !2312)
!2369 = !DILocation(line: 686, column: 9, scope: !2300)
!2370 = !DILocalVariable(name: "pm", arg: 1, scope: !2371, file: !1392, line: 709, type: !2303)
!2371 = distinct !DISubprogram(name: "S_pm_description", scope: !1392, file: !1392, line: 709, type: !2372, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!514, !2303}
!2374 = !{!2370, !2375, !2376, !2378}
!2375 = !DILocalVariable(name: "desc", scope: !2371, file: !1392, line: 711, type: !876)
!2376 = !DILocalVariable(name: "regex", scope: !2371, file: !1392, line: 712, type: !2377)
!2377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1090)
!2378 = !DILocalVariable(name: "pmflags", scope: !2371, file: !1392, line: 713, type: !889)
!2379 = !DILocation(line: 0, scope: !2371, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 687, column: 21, scope: !2311)
!2381 = !DILocation(line: 711, column: 23, scope: !2371, inlinedAt: !2380)
!2382 = !DILocation(line: 712, column: 34, scope: !2371, inlinedAt: !2380)
!2383 = !DILocation(line: 713, column: 29, scope: !2371, inlinedAt: !2380)
!2384 = !DILocation(line: 717, column: 17, scope: !2385, inlinedAt: !2380)
!2385 = distinct !DILexicalBlock(scope: !2371, file: !1392, line: 717, column: 9)
!2386 = !DILocation(line: 717, column: 9, scope: !2371, inlinedAt: !2380)
!2387 = !DILocation(line: 718, column: 2, scope: !2385, inlinedAt: !2380)
!2388 = !DILocation(line: 723, column: 17, scope: !2389, inlinedAt: !2380)
!2389 = distinct !DILexicalBlock(scope: !2371, file: !1392, line: 723, column: 9)
!2390 = !DILocation(line: 723, column: 9, scope: !2371, inlinedAt: !2380)
!2391 = !DILocation(line: 724, column: 9, scope: !2389, inlinedAt: !2380)
!2392 = !DILocation(line: 727, column: 9, scope: !2393, inlinedAt: !2380)
!2393 = distinct !DILexicalBlock(scope: !2371, file: !1392, line: 727, column: 9)
!2394 = !DILocation(line: 727, column: 9, scope: !2371, inlinedAt: !2380)
!2395 = !DILocation(line: 728, column: 13, scope: !2396, inlinedAt: !2380)
!2396 = distinct !DILexicalBlock(scope: !2397, file: !1392, line: 728, column: 13)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !1392, line: 727, column: 16)
!2398 = !DILocation(line: 728, column: 13, scope: !2397, inlinedAt: !2380)
!2399 = !DILocation(line: 729, column: 13, scope: !2396, inlinedAt: !2380)
!2400 = !DILocation(line: 730, column: 13, scope: !2401, inlinedAt: !2380)
!2401 = distinct !DILexicalBlock(scope: !2397, file: !1392, line: 730, column: 13)
!2402 = !DILocation(line: 730, column: 13, scope: !2397, inlinedAt: !2380)
!2403 = !DILocation(line: 731, column: 19, scope: !2404, inlinedAt: !2380)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !1392, line: 731, column: 17)
!2405 = distinct !DILexicalBlock(scope: !2401, file: !1392, line: 730, column: 37)
!2406 = !DILocation(line: 731, column: 38, scope: !2404, inlinedAt: !2380)
!2407 = !DILocation(line: 731, column: 17, scope: !2405, inlinedAt: !2380)
!2408 = !DILocation(line: 732, column: 17, scope: !2404, inlinedAt: !2380)
!2409 = !DILocation(line: 733, column: 17, scope: !2410, inlinedAt: !2380)
!2410 = distinct !DILexicalBlock(scope: !2405, file: !1392, line: 733, column: 17)
!2411 = !DILocation(line: 733, column: 36, scope: !2410, inlinedAt: !2380)
!2412 = !DILocation(line: 733, column: 17, scope: !2405, inlinedAt: !2380)
!2413 = !DILocation(line: 734, column: 17, scope: !2410, inlinedAt: !2380)
!2414 = !DILocation(line: 736, column: 13, scope: !2415, inlinedAt: !2380)
!2415 = distinct !DILexicalBlock(scope: !2397, file: !1392, line: 736, column: 13)
!2416 = !DILocation(line: 736, column: 32, scope: !2415, inlinedAt: !2380)
!2417 = !DILocation(line: 736, column: 13, scope: !2397, inlinedAt: !2380)
!2418 = !DILocation(line: 737, column: 13, scope: !2415, inlinedAt: !2380)
!2419 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !2430)
!2420 = distinct !DISubprogram(name: "S_append_flags", scope: !1392, file: !1392, line: 77, type: !2421, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2425)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !514, !520, !2423, !2424}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2423)
!2425 = !{!2426, !2427, !2428, !2429}
!2426 = !DILocalVariable(name: "sv", arg: 1, scope: !2420, file: !1392, line: 77, type: !514)
!2427 = !DILocalVariable(name: "flags", arg: 2, scope: !2420, file: !1392, line: 77, type: !520)
!2428 = !DILocalVariable(name: "start", arg: 3, scope: !2420, file: !1392, line: 77, type: !2423)
!2429 = !DILocalVariable(name: "end", arg: 4, scope: !2420, file: !1392, line: 78, type: !2424)
!2430 = distinct !DILocation(line: 740, column: 5, scope: !2371, inlinedAt: !2380)
!2431 = !DILocation(line: 0, scope: !2420, inlinedAt: !2430)
!2432 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !2430)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !1392, line: 81, column: 6)
!2434 = distinct !DILexicalBlock(scope: !2420, file: !1392, line: 80, column: 8)
!2435 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !2430)
!2436 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !2430)
!2437 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !2430)
!2438 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !2430)
!2439 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !2430)
!2440 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !2430)
!2441 = distinct !{!2441, !2419, !2442, !1603, !1604}
!2442 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !2430)
!2443 = !DILocation(line: 0, scope: !2311)
!2444 = !DILocation(line: 688, column: 58, scope: !2311)
!2445 = !DILocation(line: 688, column: 73, scope: !2311)
!2446 = !DILocation(line: 688, column: 92, scope: !2311)
!2447 = !DILocation(line: 688, column: 2, scope: !2311)
!2448 = !DILocation(line: 0, scope: !1953, inlinedAt: !2449)
!2449 = distinct !DILocation(line: 689, column: 2, scope: !2311)
!2450 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !2449)
!2451 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !2449)
!2452 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !2449)
!2453 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !2449)
!2454 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !2449)
!2455 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !2449)
!2456 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !2449)
!2457 = !DILocation(line: 693, column: 1, scope: !2300)
!2458 = distinct !DISubprogram(name: "Perl_do_op_dump", scope: !1392, file: !1392, line: 792, type: !2459, scopeLine: 793, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !594, !635, !2093}
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2468, !2471, !2474, !2477, !2478, !2481, !2485, !2486, !2487, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2504, !2505, !2506, !2507, !2509, !2510, !2511, !2514, !2515, !2516, !2519, !2520, !2521, !2522}
!2462 = !DILocalVariable(name: "level", arg: 1, scope: !2458, file: !1392, line: 792, type: !594)
!2463 = !DILocalVariable(name: "file", arg: 2, scope: !2458, file: !1392, line: 792, type: !635)
!2464 = !DILocalVariable(name: "o", arg: 3, scope: !2458, file: !1392, line: 792, type: !2093)
!2465 = !DILocalVariable(name: "seq", scope: !2458, file: !1392, line: 794, type: !532)
!2466 = !DILocalVariable(name: "optype", scope: !2458, file: !1392, line: 795, type: !2467)
!2467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!2468 = !DILocalVariable(name: "tmpsv", scope: !2469, file: !1392, line: 827, type: !876)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !1392, line: 826, column: 73)
!2470 = distinct !DILexicalBlock(scope: !2458, file: !1392, line: 826, column: 9)
!2471 = !DILocalVariable(name: "oppriv", scope: !2472, file: !1392, line: 853, type: !1016)
!2472 = distinct !DILexicalBlock(scope: !2473, file: !1392, line: 852, column: 24)
!2473 = distinct !DILexicalBlock(scope: !2458, file: !1392, line: 852, column: 9)
!2474 = !DILocalVariable(name: "op_ix", scope: !2472, file: !1392, line: 854, type: !2475)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "I16", file: !472, line: 172, baseType: !2476)
!2476 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2477 = !DILocalVariable(name: "tmpsv", scope: !2472, file: !1392, line: 855, type: !514)
!2478 = !DILocalVariable(name: "stop", scope: !2479, file: !1392, line: 858, type: !1016)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !1392, line: 857, column: 26)
!2480 = distinct !DILexicalBlock(scope: !2472, file: !1392, line: 857, column: 13)
!2481 = !DILocalVariable(name: "entry", scope: !2482, file: !1392, line: 861, type: !1016)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !1392, line: 860, column: 36)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !1392, line: 860, column: 13)
!2484 = distinct !DILexicalBlock(scope: !2479, file: !1392, line: 860, column: 13)
!2485 = !DILocalVariable(name: "bit", scope: !2482, file: !1392, line: 862, type: !1016)
!2486 = !DILocalVariable(name: "ix", scope: !2482, file: !1392, line: 863, type: !1016)
!2487 = !DILocalVariable(name: "p", scope: !2488, file: !1392, line: 869, type: !2490)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !1392, line: 867, column: 32)
!2489 = distinct !DILexicalBlock(scope: !2482, file: !1392, line: 867, column: 21)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2475)
!2492 = !DILocalVariable(name: "bitmin", scope: !2488, file: !1392, line: 870, type: !1016)
!2493 = !DILocalVariable(name: "label", scope: !2488, file: !1392, line: 871, type: !2475)
!2494 = !DILocalVariable(name: "enum_label", scope: !2488, file: !1392, line: 872, type: !2475)
!2495 = !DILocalVariable(name: "mask", scope: !2488, file: !1392, line: 873, type: !1016)
!2496 = !DILocalVariable(name: "i", scope: !2488, file: !1392, line: 874, type: !1016)
!2497 = !DILocalVariable(name: "val", scope: !2488, file: !1392, line: 875, type: !1016)
!2498 = !DILocalVariable(name: "len", scope: !2499, file: !1392, line: 947, type: !545)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !1392, line: 946, column: 25)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !1392, line: 946, column: 10)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !1392, line: 945, column: 38)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 945, column: 7)
!2503 = distinct !DILexicalBlock(scope: !2458, file: !1392, line: 938, column: 21)
!2504 = !DILocalVariable(name: "name", scope: !2499, file: !1392, line: 948, type: !887)
!2505 = !DILocalVariable(name: "tmpsv", scope: !2499, file: !1392, line: 949, type: !876)
!2506 = !DILocalVariable(name: "tmpsv2", scope: !2499, file: !1392, line: 950, type: !876)
!2507 = !DILocalVariable(name: "items", scope: !2508, file: !1392, line: 964, type: !1131)
!2508 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 963, column: 5)
!2509 = !DILocalVariable(name: "i", scope: !2508, file: !1392, line: 965, type: !532)
!2510 = !DILocalVariable(name: "count", scope: !2508, file: !1392, line: 965, type: !532)
!2511 = !DILocalVariable(name: "tmpsv", scope: !2512, file: !1392, line: 995, type: !514)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !1392, line: 994, column: 28)
!2513 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 994, column: 9)
!2514 = !DILocalVariable(name: "stash", scope: !2512, file: !1392, line: 996, type: !483)
!2515 = !DILocalVariable(name: "hvname", scope: !2512, file: !1392, line: 997, type: !886)
!2516 = !DILocalVariable(name: "tmpsv", scope: !2517, file: !1392, line: 1004, type: !514)
!2517 = distinct !DILexicalBlock(scope: !2518, file: !1392, line: 1003, column: 24)
!2518 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 1003, column: 7)
!2519 = !DILocalVariable(name: "label_len", scope: !2517, file: !1392, line: 1005, type: !545)
!2520 = !DILocalVariable(name: "label_flags", scope: !2517, file: !1392, line: 1006, type: !520)
!2521 = !DILocalVariable(name: "label", scope: !2517, file: !1392, line: 1007, type: !887)
!2522 = !DILocalVariable(name: "kid", scope: !2523, file: !1392, line: 1064, type: !743)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !1392, line: 1063, column: 33)
!2524 = distinct !DILexicalBlock(scope: !2458, file: !1392, line: 1063, column: 9)
!2525 = !DILocation(line: 0, scope: !2458)
!2526 = !DILocation(line: 795, column: 30, scope: !2458)
!2527 = !DILocation(line: 799, column: 5, scope: !2458)
!2528 = !DILocation(line: 800, column: 10, scope: !2458)
!2529 = !DILocation(line: 801, column: 11, scope: !2458)
!2530 = !DILocation(line: 802, column: 9, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2458, file: !1392, line: 802, column: 9)
!2532 = !DILocation(line: 802, column: 9, scope: !2458)
!2533 = !DILocation(line: 803, column: 2, scope: !2531)
!2534 = !DILocation(line: 805, column: 2, scope: !2531)
!2535 = !DILocation(line: 808, column: 11, scope: !2458)
!2536 = !DILocation(line: 808, column: 24, scope: !2458)
!2537 = !DILocation(line: 808, column: 30, scope: !2458)
!2538 = !DILocation(line: 808, column: 39, scope: !2458)
!2539 = !DILocation(line: 806, column: 5, scope: !2458)
!2540 = !DILocation(line: 809, column: 12, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2458, file: !1392, line: 809, column: 9)
!2542 = !DILocation(line: 809, column: 9, scope: !2541)
!2543 = !DILocation(line: 809, column: 9, scope: !2458)
!2544 = !DILocation(line: 811, column: 7, scope: !2541)
!2545 = !DILocation(line: 811, column: 15, scope: !2541)
!2546 = !DILocation(line: 811, column: 4, scope: !2541)
!2547 = !DILocation(line: 812, column: 5, scope: !2541)
!2548 = !DILocation(line: 810, column: 2, scope: !2541)
!2549 = !DILocation(line: 814, column: 2, scope: !2541)
!2550 = !DILocation(line: 815, column: 12, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2458, file: !1392, line: 815, column: 9)
!2552 = !DILocation(line: 815, column: 9, scope: !2551)
!2553 = !DILocation(line: 815, column: 9, scope: !2458)
!2554 = !DILocation(line: 816, column: 13, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !1392, line: 816, column: 6)
!2556 = distinct !DILexicalBlock(scope: !2551, file: !1392, line: 815, column: 21)
!2557 = !DILocation(line: 816, column: 6, scope: !2556)
!2558 = !DILocation(line: 817, column: 58, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !1392, line: 816, column: 25)
!2560 = !DILocation(line: 817, column: 6, scope: !2559)
!2561 = !DILocation(line: 818, column: 2, scope: !2559)
!2562 = !DILocation(line: 820, column: 6, scope: !2555)
!2563 = !DILocation(line: 826, column: 12, scope: !2470)
!2564 = !DILocation(line: 826, column: 9, scope: !2470)
!2565 = !DILocation(line: 826, column: 21, scope: !2470)
!2566 = !DILocation(line: 826, column: 27, scope: !2470)
!2567 = !DILocation(line: 826, column: 38, scope: !2470)
!2568 = !DILocation(line: 827, column: 28, scope: !2469)
!2569 = !DILocation(line: 0, scope: !2469)
!2570 = !DILocation(line: 828, column: 20, scope: !2469)
!2571 = !DILocation(line: 828, column: 29, scope: !2469)
!2572 = !DILocation(line: 828, column: 9, scope: !2469)
!2573 = !DILocation(line: 0, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2469, file: !1392, line: 828, column: 41)
!2575 = !DILocation(line: 842, column: 9, scope: !2469)
!2576 = !DILocation(line: 0, scope: !2420, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 842, column: 9, scope: !2469)
!2578 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !2577)
!2579 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !2577)
!2580 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !2577)
!2581 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !2577)
!2582 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !2577)
!2583 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !2577)
!2584 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !2577)
!2585 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !2577)
!2586 = distinct !{!2586, !2578, !2587, !1603, !1604}
!2587 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !2577)
!2588 = !DILocation(line: 843, column: 16, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2469, file: !1392, line: 843, column: 13)
!2590 = !DILocation(line: 843, column: 13, scope: !2589)
!2591 = !DILocation(line: 843, column: 13, scope: !2469)
!2592 = !DILocation(line: 843, column: 29, scope: !2589)
!2593 = !DILocation(line: 844, column: 16, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2469, file: !1392, line: 844, column: 13)
!2595 = !DILocation(line: 844, column: 13, scope: !2594)
!2596 = !DILocation(line: 844, column: 13, scope: !2469)
!2597 = !DILocation(line: 844, column: 29, scope: !2594)
!2598 = !DILocation(line: 845, column: 16, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2469, file: !1392, line: 845, column: 13)
!2600 = !DILocation(line: 845, column: 13, scope: !2599)
!2601 = !DILocation(line: 845, column: 13, scope: !2469)
!2602 = !DILocation(line: 845, column: 29, scope: !2599)
!2603 = !DILocation(line: 846, column: 16, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2469, file: !1392, line: 846, column: 13)
!2605 = !DILocation(line: 846, column: 13, scope: !2604)
!2606 = !DILocation(line: 846, column: 13, scope: !2469)
!2607 = !DILocation(line: 846, column: 29, scope: !2604)
!2608 = !DILocation(line: 847, column: 16, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2469, file: !1392, line: 847, column: 13)
!2610 = !DILocation(line: 847, column: 13, scope: !2609)
!2611 = !DILocation(line: 847, column: 13, scope: !2469)
!2612 = !DILocation(line: 847, column: 29, scope: !2609)
!2613 = !DILocation(line: 849, column: 26, scope: !2469)
!2614 = !DILocation(line: 849, column: 41, scope: !2469)
!2615 = !DILocation(line: 849, column: 60, scope: !2469)
!2616 = !DILocation(line: 848, column: 9, scope: !2469)
!2617 = !DILocation(line: 850, column: 5, scope: !2469)
!2618 = !DILocation(line: 852, column: 12, scope: !2473)
!2619 = !DILocation(line: 852, column: 9, scope: !2473)
!2620 = !DILocation(line: 852, column: 9, scope: !2458)
!2621 = !DILocation(line: 853, column: 22, scope: !2472)
!2622 = !DILocation(line: 0, scope: !2472)
!2623 = !DILocation(line: 854, column: 48, scope: !2472)
!2624 = !DILocation(line: 854, column: 21, scope: !2472)
!2625 = !DILocation(line: 857, column: 19, scope: !2480)
!2626 = !DILocation(line: 857, column: 13, scope: !2472)
!2627 = !DILocation(line: 0, scope: !2479)
!2628 = !DILocation(line: 859, column: 21, scope: !2479)
!2629 = !DILocation(line: 860, column: 13, scope: !2484)
!2630 = !DILocation(line: 861, column: 29, scope: !2482)
!2631 = !DILocation(line: 0, scope: !2482)
!2632 = !DILocation(line: 862, column: 34, scope: !2482)
!2633 = !DILocation(line: 862, column: 40, scope: !2482)
!2634 = !DILocation(line: 863, column: 32, scope: !2482)
!2635 = !DILocation(line: 865, column: 31, scope: !2482)
!2636 = !DILocation(line: 867, column: 27, scope: !2489)
!2637 = !DILocation(line: 867, column: 21, scope: !2482)
!2638 = !DILocation(line: 869, column: 37, scope: !2488)
!2639 = !DILocation(line: 0, scope: !2488)
!2640 = !DILocation(line: 870, column: 42, scope: !2488)
!2641 = !DILocation(line: 870, column: 40, scope: !2488)
!2642 = !DILocation(line: 871, column: 33, scope: !2488)
!2643 = !DILocation(line: 877, column: 39, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !1392, line: 877, column: 21)
!2645 = distinct !DILexicalBlock(scope: !2488, file: !1392, line: 877, column: 21)
!2646 = !DILocation(line: 877, column: 21, scope: !2645)
!2647 = !DILocation(line: 878, column: 35, scope: !2644)
!2648 = !DILocation(line: 878, column: 30, scope: !2644)
!2649 = !DILocation(line: 877, column: 48, scope: !2644)
!2650 = distinct !{!2650, !2646, !2651, !1603, !1604}
!2651 = !DILocation(line: 878, column: 38, scope: !2645)
!2652 = !DILocation(line: 880, column: 35, scope: !2488)
!2653 = !DILocation(line: 882, column: 28, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2488, file: !1392, line: 882, column: 28)
!2655 = !DILocation(line: 882, column: 34, scope: !2654)
!2656 = !DILocation(line: 883, column: 25, scope: !2654)
!2657 = !DILocation(line: 883, column: 28, scope: !2654)
!2658 = !DILocation(line: 883, column: 56, scope: !2654)
!2659 = !DILocation(line: 884, column: 25, scope: !2654)
!2660 = !DILocation(line: 884, column: 54, scope: !2654)
!2661 = !DILocation(line: 884, column: 28, scope: !2654)
!2662 = !DILocation(line: 884, column: 58, scope: !2654)
!2663 = !DILocation(line: 882, column: 28, scope: !2488)
!2664 = !DILocation(line: 889, column: 31, scope: !2488)
!2665 = !DILocation(line: 889, column: 28, scope: !2488)
!2666 = !DILocation(line: 890, column: 29, scope: !2488)
!2667 = !DILocation(line: 890, column: 25, scope: !2488)
!2668 = !DILocation(line: 892, column: 21, scope: !2488)
!2669 = !DILocation(line: 892, column: 28, scope: !2488)
!2670 = !DILocation(line: 892, column: 31, scope: !2488)
!2671 = !DILocation(line: 893, column: 33, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !1392, line: 893, column: 29)
!2673 = distinct !DILexicalBlock(scope: !2488, file: !1392, line: 892, column: 38)
!2674 = !DILocation(line: 893, column: 29, scope: !2673)
!2675 = distinct !{!2675, !2668, !2676, !1603, !1604}
!2676 = !DILocation(line: 898, column: 21, scope: !2488)
!2677 = !DILocation(line: 893, column: 38, scope: !2672)
!2678 = !DILocation(line: 894, column: 42, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2672, file: !1392, line: 893, column: 42)
!2680 = !DILocation(line: 895, column: 29, scope: !2679)
!2681 = !DILocation(line: 899, column: 29, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2488, file: !1392, line: 899, column: 25)
!2683 = !DILocation(line: 899, column: 34, scope: !2682)
!2684 = !DILocation(line: 903, column: 21, scope: !2488)
!2685 = !DILocation(line: 904, column: 25, scope: !2488)
!2686 = !DILocation(line: 905, column: 25, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !1392, line: 904, column: 38)
!2688 = distinct !DILexicalBlock(scope: !2488, file: !1392, line: 904, column: 25)
!2689 = !DILocation(line: 906, column: 25, scope: !2687)
!2690 = !DILocation(line: 907, column: 21, scope: !2687)
!2691 = !DILocation(line: 908, column: 25, scope: !2488)
!2692 = !DILocation(line: 909, column: 64, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2488, file: !1392, line: 908, column: 25)
!2694 = !DILocation(line: 909, column: 25, scope: !2693)
!2695 = !DILocation(line: 911, column: 25, scope: !2693)
!2696 = !DILocation(line: 916, column: 28, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !1392, line: 916, column: 28)
!2698 = distinct !DILexicalBlock(scope: !2489, file: !1392, line: 914, column: 22)
!2699 = !DILocation(line: 916, column: 41, scope: !2697)
!2700 = !DILocation(line: 916, column: 39, scope: !2697)
!2701 = !DILocation(line: 916, column: 35, scope: !2697)
!2702 = !DILocation(line: 917, column: 25, scope: !2697)
!2703 = !DILocation(line: 917, column: 30, scope: !2697)
!2704 = !DILocation(line: 917, column: 55, scope: !2697)
!2705 = !DILocation(line: 918, column: 30, scope: !2697)
!2706 = !DILocation(line: 918, column: 56, scope: !2697)
!2707 = !DILocation(line: 918, column: 33, scope: !2697)
!2708 = !DILocation(line: 918, column: 60, scope: !2697)
!2709 = !DILocation(line: 916, column: 28, scope: !2698)
!2710 = !DILocation(line: 920, column: 32, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2697, file: !1392, line: 919, column: 21)
!2712 = !DILocation(line: 921, column: 25, scope: !2711)
!2713 = !DILocation(line: 922, column: 25, scope: !2711)
!2714 = !DILocation(line: 923, column: 21, scope: !2711)
!2715 = !DILocation(line: 853, column: 13, scope: !2472)
!2716 = !DILocation(line: 860, column: 32, scope: !2483)
!2717 = !DILocation(line: 860, column: 20, scope: !2483)
!2718 = distinct !{!2718, !2629, !2719, !1603, !1604}
!2719 = !DILocation(line: 925, column: 13, scope: !2484)
!2720 = !DILocation(line: 926, column: 17, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2479, file: !1392, line: 926, column: 17)
!2722 = !DILocation(line: 926, column: 17, scope: !2479)
!2723 = !DILocation(line: 927, column: 17, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2721, file: !1392, line: 926, column: 25)
!2725 = !DILocation(line: 928, column: 56, scope: !2724)
!2726 = !DILocation(line: 928, column: 17, scope: !2724)
!2727 = !DILocation(line: 929, column: 13, scope: !2724)
!2728 = !DILocation(line: 931, column: 6, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2472, file: !1392, line: 931, column: 6)
!2730 = !DILocation(line: 931, column: 12, scope: !2729)
!2731 = !DILocation(line: 931, column: 15, scope: !2729)
!2732 = !DILocation(line: 931, column: 6, scope: !2472)
!2733 = !DILocation(line: 932, column: 69, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2729, file: !1392, line: 931, column: 29)
!2735 = !DILocation(line: 932, column: 88, scope: !2734)
!2736 = !DILocation(line: 932, column: 13, scope: !2734)
!2737 = !DILocation(line: 933, column: 2, scope: !2734)
!2738 = !DILocation(line: 935, column: 30, scope: !2729)
!2739 = !DILocation(line: 934, column: 13, scope: !2729)
!2740 = !DILocation(line: 938, column: 5, scope: !2458)
!2741 = !DILocation(line: 945, column: 13, scope: !2502)
!2742 = !DILocation(line: 945, column: 22, scope: !2502)
!2743 = !DILocation(line: 945, column: 7, scope: !2503)
!2744 = !DILocation(line: 946, column: 18, scope: !2500)
!2745 = !DILocation(line: 946, column: 10, scope: !2500)
!2746 = !DILocation(line: 946, column: 10, scope: !2501)
!2747 = !DILocation(line: 947, column: 7, scope: !2499)
!2748 = !DILocation(line: 949, column: 27, scope: !2499)
!2749 = !DILocation(line: 0, scope: !2499)
!2750 = !DILocation(line: 950, column: 27, scope: !2499)
!2751 = !DILocation(line: 951, column: 3, scope: !2499)
!2752 = !DILocation(line: 952, column: 14, scope: !2499)
!2753 = !DILocation(line: 954, column: 24, scope: !2499)
!2754 = !DILocation(line: 953, column: 3, scope: !2499)
!2755 = !DILocation(line: 955, column: 6, scope: !2500)
!2756 = !DILocation(line: 955, column: 6, scope: !2499)
!2757 = !DILocation(line: 957, column: 3, scope: !2500)
!2758 = !DILocation(line: 964, column: 44, scope: !2508)
!2759 = !DILocation(line: 0, scope: !2508)
!2760 = !DILocation(line: 965, column: 23, scope: !2508)
!2761 = !DILocation(line: 965, column: 33, scope: !2508)
!2762 = !DILocation(line: 967, column: 2, scope: !2508)
!2763 = !DILocation(line: 968, column: 21, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !1392, line: 968, column: 9)
!2765 = distinct !DILexicalBlock(scope: !2508, file: !1392, line: 968, column: 9)
!2766 = !DILocation(line: 968, column: 9, scope: !2765)
!2767 = !DILocation(line: 970, column: 40, scope: !2764)
!2768 = !DILocation(line: 970, column: 49, scope: !2764)
!2769 = !DILocation(line: 969, column: 13, scope: !2764)
!2770 = !DILocation(line: 968, column: 32, scope: !2764)
!2771 = distinct !{!2771, !2766, !2772, !1603, !1604}
!2772 = !DILocation(line: 970, column: 51, scope: !2765)
!2773 = !DILocation(line: 982, column: 51, scope: !2503)
!2774 = !DILocation(line: 982, column: 2, scope: !2503)
!2775 = !DILocation(line: 984, column: 2, scope: !2503)
!2776 = !DILocation(line: 986, column: 9, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 986, column: 6)
!2778 = !DILocation(line: 986, column: 33, scope: !2777)
!2779 = !DILocation(line: 991, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 991, column: 6)
!2781 = !DILocation(line: 991, column: 6, scope: !2503)
!2782 = !DILocation(line: 993, column: 9, scope: !2780)
!2783 = !DILocation(line: 992, column: 6, scope: !2780)
!2784 = !DILocation(line: 994, column: 9, scope: !2513)
!2785 = !DILocation(line: 994, column: 9, scope: !2503)
!2786 = !DILocation(line: 995, column: 21, scope: !2512)
!2787 = !DILocation(line: 0, scope: !2512)
!2788 = !DILocation(line: 996, column: 21, scope: !2512)
!2789 = !DILocation(line: 997, column: 37, scope: !2512)
!2790 = !DILocation(line: 1000, column: 28, scope: !2512)
!2791 = !DILocation(line: 999, column: 6, scope: !2512)
!2792 = !DILocation(line: 1002, column: 5, scope: !2512)
!2793 = !DILocation(line: 1003, column: 7, scope: !2518)
!2794 = !DILocation(line: 1003, column: 7, scope: !2503)
!2795 = !DILocation(line: 1004, column: 20, scope: !2517)
!2796 = !DILocation(line: 0, scope: !2517)
!2797 = !DILocation(line: 1005, column: 8, scope: !2517)
!2798 = !DILocation(line: 1006, column: 8, scope: !2517)
!2799 = !DILocation(line: 1007, column: 28, scope: !2517)
!2800 = !DILocation(line: 1010, column: 28, scope: !2517)
!2801 = !DILocation(line: 1009, column: 8, scope: !2517)
!2802 = !DILocation(line: 1012, column: 4, scope: !2518)
!2803 = !DILocation(line: 1012, column: 4, scope: !2517)
!2804 = !DILocation(line: 1014, column: 47, scope: !2503)
!2805 = !DILocation(line: 1013, column: 9, scope: !2503)
!2806 = !DILocation(line: 1015, column: 2, scope: !2503)
!2807 = !DILocation(line: 1017, column: 2, scope: !2503)
!2808 = !DILocation(line: 1018, column: 14, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 1018, column: 6)
!2810 = !DILocation(line: 1018, column: 6, scope: !2809)
!2811 = !DILocation(line: 1018, column: 6, scope: !2503)
!2812 = !DILocation(line: 1019, column: 39, scope: !2809)
!2813 = !DILocation(line: 1019, column: 6, scope: !2809)
!2814 = !DILocation(line: 1021, column: 6, scope: !2809)
!2815 = !DILocation(line: 1022, column: 2, scope: !2503)
!2816 = !DILocation(line: 1023, column: 14, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 1023, column: 6)
!2818 = !DILocation(line: 1023, column: 6, scope: !2817)
!2819 = !DILocation(line: 1023, column: 6, scope: !2503)
!2820 = !DILocation(line: 1024, column: 39, scope: !2817)
!2821 = !DILocation(line: 1024, column: 6, scope: !2817)
!2822 = !DILocation(line: 1026, column: 6, scope: !2817)
!2823 = !DILocation(line: 1027, column: 2, scope: !2503)
!2824 = !DILocation(line: 1028, column: 14, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 1028, column: 6)
!2826 = !DILocation(line: 1028, column: 6, scope: !2825)
!2827 = !DILocation(line: 1028, column: 6, scope: !2503)
!2828 = !DILocation(line: 1029, column: 39, scope: !2825)
!2829 = !DILocation(line: 1029, column: 6, scope: !2825)
!2830 = !DILocation(line: 1031, column: 6, scope: !2825)
!2831 = !DILocation(line: 1039, column: 2, scope: !2503)
!2832 = !DILocation(line: 1040, column: 15, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 1040, column: 6)
!2834 = !DILocation(line: 1040, column: 6, scope: !2833)
!2835 = !DILocation(line: 1040, column: 6, scope: !2503)
!2836 = !DILocation(line: 1041, column: 39, scope: !2833)
!2837 = !DILocation(line: 1041, column: 6, scope: !2833)
!2838 = !DILocation(line: 1043, column: 6, scope: !2833)
!2839 = !DILocation(line: 1049, column: 2, scope: !2503)
!2840 = !DILocation(line: 1050, column: 2, scope: !2503)
!2841 = !DILocation(line: 1057, column: 9, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2503, file: !1392, line: 1057, column: 6)
!2843 = !DILocation(line: 1057, column: 20, scope: !2842)
!2844 = !DILocation(line: 1057, column: 6, scope: !2503)
!2845 = !DILocation(line: 1058, column: 71, scope: !2842)
!2846 = !DILocation(line: 1058, column: 6, scope: !2842)
!2847 = !DILocation(line: 1063, column: 12, scope: !2524)
!2848 = !DILocation(line: 1063, column: 21, scope: !2524)
!2849 = !DILocation(line: 1063, column: 9, scope: !2458)
!2850 = !DILocation(line: 1065, column: 21, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2523, file: !1392, line: 1065, column: 2)
!2852 = !DILocation(line: 0, scope: !2523)
!2853 = !DILocation(line: 0, scope: !2851)
!2854 = !DILocation(line: 1065, column: 2, scope: !2851)
!2855 = !DILocation(line: 1066, column: 6, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2851, file: !1392, line: 1065, column: 2)
!2857 = !DILocation(line: 1065, column: 42, scope: !2856)
!2858 = distinct !{!2858, !2854, !2859, !1603, !1604}
!2859 = !DILocation(line: 1066, column: 6, scope: !2851)
!2860 = !DILocation(line: 1068, column: 5, scope: !2458)
!2861 = !DILocation(line: 1069, column: 1, scope: !2458)
!2862 = distinct !DISubprogram(name: "Perl_pmop_dump", scope: !1392, file: !1392, line: 745, type: !2863, scopeLine: 746, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{null, !1268}
!2865 = !{!2866}
!2866 = !DILocalVariable(name: "pm", arg: 1, scope: !2862, file: !1392, line: 745, type: !1268)
!2867 = !DILocation(line: 0, scope: !2862)
!2868 = !DILocation(line: 747, column: 5, scope: !2862)
!2869 = !DILocation(line: 748, column: 1, scope: !2862)
!2870 = distinct !DISubprogram(name: "S_sequence_num", scope: !1392, file: !1392, line: 756, type: !2871, scopeLine: 757, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!532, !2093}
!2873 = !{!2874, !2875, !2876, !2877, !2878}
!2874 = !DILocalVariable(name: "o", arg: 1, scope: !2870, file: !1392, line: 756, type: !2093)
!2875 = !DILocalVariable(name: "op", scope: !2870, file: !1392, line: 759, type: !514)
!2876 = !DILocalVariable(name: "seq", scope: !2870, file: !1392, line: 760, type: !579)
!2877 = !DILocalVariable(name: "key", scope: !2870, file: !1392, line: 761, type: !887)
!2878 = !DILocalVariable(name: "len", scope: !2870, file: !1392, line: 762, type: !545)
!2879 = !DILocation(line: 0, scope: !2870)
!2880 = !DILocation(line: 762, column: 5, scope: !2870)
!2881 = !DILocation(line: 763, column: 10, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2870, file: !1392, line: 763, column: 9)
!2883 = !DILocation(line: 763, column: 9, scope: !2870)
!2884 = !DILocation(line: 765, column: 10, scope: !2870)
!2885 = !DILocation(line: 766, column: 5, scope: !2870)
!2886 = !DILocation(line: 767, column: 11, scope: !2870)
!2887 = !DILocation(line: 768, column: 10, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2870, file: !1392, line: 768, column: 9)
!2889 = !DILocation(line: 768, column: 9, scope: !2870)
!2890 = !DILocation(line: 769, column: 19, scope: !2888)
!2891 = !DILocation(line: 769, column: 17, scope: !2888)
!2892 = !DILocation(line: 769, column: 2, scope: !2888)
!2893 = !DILocation(line: 770, column: 11, scope: !2870)
!2894 = !DILocation(line: 771, column: 9, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2870, file: !1392, line: 771, column: 9)
!2896 = !DILocation(line: 771, column: 9, scope: !2870)
!2897 = !DILocation(line: 772, column: 9, scope: !2895)
!2898 = !DILocation(line: 773, column: 11, scope: !2870)
!2899 = !DILocation(line: 774, column: 12, scope: !2870)
!2900 = !DILocation(line: 774, column: 5, scope: !2870)
!2901 = !DILocation(line: 775, column: 1, scope: !2870)
!2902 = !DISubprogram(name: "Perl_custom_op_get_field", scope: !1616, file: !1616, line: 777, type: !2903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!2905, !2093, !2925}
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "XOPRETANY", file: !427, line: 857, baseType: !2906)
!2906 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !427, line: 851, size: 64, elements: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2915}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "xop_name", scope: !2906, file: !427, line: 852, baseType: !887, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "xop_desc", scope: !2906, file: !427, line: 853, baseType: !887, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "xop_class", scope: !2906, file: !427, line: 854, baseType: !520, size: 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "xop_peep", scope: !2906, file: !427, line: 855, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !743, !743}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "xop_ptr", scope: !2906, file: !427, line: 856, baseType: !2916, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "XOP", file: !479, line: 2637, baseType: !2918)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "custom_op", file: !427, line: 840, size: 320, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923, !2924}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "xop_flags", scope: !2918, file: !427, line: 841, baseType: !520, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "xop_name", scope: !2918, file: !427, line: 842, baseType: !887, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "xop_desc", scope: !2918, file: !427, line: 843, baseType: !887, size: 64, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "xop_class", scope: !2918, file: !427, line: 844, baseType: !520, size: 32, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "xop_peep", scope: !2918, file: !427, line: 845, baseType: !2912, size: 64, offset: 256)
!2925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2926)
!2926 = !DIDerivedType(tag: DW_TAG_typedef, name: "xop_flags_enum", file: !427, line: 873, baseType: !426)
!2927 = !DISubprogram(name: "Perl_cop_fetch_label", scope: !1616, file: !1616, line: 719, type: !2928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!887, !2930, !1165, !1388}
!2930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1139)
!2931 = distinct !DISubprogram(name: "Perl_gv_dump", scope: !1392, file: !1392, line: 1087, type: !2932, scopeLine: 1088, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{null, !655}
!2934 = !{!2935, !2936, !2937, !2938, !2939}
!2935 = !DILocalVariable(name: "gv", arg: 1, scope: !2931, file: !1392, line: 1087, type: !655)
!2936 = !DILocalVariable(name: "len", scope: !2931, file: !1392, line: 1089, type: !545)
!2937 = !DILocalVariable(name: "name", scope: !2931, file: !1392, line: 1090, type: !887)
!2938 = !DILocalVariable(name: "sv", scope: !2931, file: !1392, line: 1091, type: !514)
!2939 = !DILocalVariable(name: "tmp", scope: !2931, file: !1392, line: 1091, type: !514)
!2940 = !DILocation(line: 0, scope: !2931)
!2941 = !DILocation(line: 1089, column: 5, scope: !2931)
!2942 = !DILocation(line: 1091, column: 20, scope: !2931)
!2943 = !DILocation(line: 1093, column: 10, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2931, file: !1392, line: 1093, column: 9)
!2945 = !DILocation(line: 1093, column: 9, scope: !2931)
!2946 = !DILocation(line: 1094, column: 16, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2944, file: !1392, line: 1093, column: 14)
!2948 = !DILocation(line: 1094, column: 2, scope: !2947)
!2949 = !DILocation(line: 1095, column: 2, scope: !2947)
!2950 = !DILocation(line: 1097, column: 10, scope: !2931)
!2951 = !DILocation(line: 1098, column: 19, scope: !2931)
!2952 = !DILocation(line: 1098, column: 5, scope: !2931)
!2953 = !DILocation(line: 1099, column: 5, scope: !2931)
!2954 = !DILocation(line: 1100, column: 12, scope: !2931)
!2955 = !DILocation(line: 1101, column: 31, scope: !2931)
!2956 = !DILocation(line: 1102, column: 22, scope: !2931)
!2957 = !DILocation(line: 1101, column: 5, scope: !2931)
!2958 = !DILocation(line: 1103, column: 15, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2931, file: !1392, line: 1103, column: 9)
!2960 = !DILocation(line: 1103, column: 12, scope: !2959)
!2961 = !DILocation(line: 1103, column: 9, scope: !2931)
!2962 = !DILocation(line: 1104, column: 2, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2959, file: !1392, line: 1103, column: 26)
!2964 = !DILocation(line: 1105, column: 16, scope: !2963)
!2965 = !DILocation(line: 1106, column: 35, scope: !2963)
!2966 = !DILocation(line: 1107, column: 22, scope: !2963)
!2967 = !DILocation(line: 1106, column: 9, scope: !2963)
!2968 = !DILocation(line: 1108, column: 5, scope: !2963)
!2969 = !DILocation(line: 1109, column: 17, scope: !2931)
!2970 = !DILocation(line: 1109, column: 5, scope: !2931)
!2971 = !DILocation(line: 1110, column: 31, scope: !2931)
!2972 = !DILocation(line: 1110, column: 5, scope: !2931)
!2973 = !DILocation(line: 1111, column: 1, scope: !2931)
!2974 = !DISubprogram(name: "Perl_gv_efullname4", scope: !1616, file: !1616, line: 1438, type: !2292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2975 = !DISubprogram(name: "PerlIO_putc", scope: !637, file: !637, line: 235, type: !2976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!513, !635, !513}
!2978 = distinct !DISubprogram(name: "Perl_do_magic_dump", scope: !1392, file: !1392, line: 1125, type: !2979, scopeLine: 1126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2983)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{null, !594, !635, !2981, !594, !594, !475, !545}
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!2983 = !{!2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !3000, !3003, !3005, !3006, !3011, !3012, !3013, !3020, !3025}
!2984 = !DILocalVariable(name: "level", arg: 1, scope: !2978, file: !1392, line: 1125, type: !594)
!2985 = !DILocalVariable(name: "file", arg: 2, scope: !2978, file: !1392, line: 1125, type: !635)
!2986 = !DILocalVariable(name: "mg", arg: 3, scope: !2978, file: !1392, line: 1125, type: !2981)
!2987 = !DILocalVariable(name: "nest", arg: 4, scope: !2978, file: !1392, line: 1125, type: !594)
!2988 = !DILocalVariable(name: "maxnest", arg: 5, scope: !2978, file: !1392, line: 1125, type: !594)
!2989 = !DILocalVariable(name: "dumpops", arg: 6, scope: !2978, file: !1392, line: 1125, type: !475)
!2990 = !DILocalVariable(name: "pvlim", arg: 7, scope: !2978, file: !1392, line: 1125, type: !545)
!2991 = !DILocalVariable(name: "v", scope: !2992, file: !1392, line: 1133, type: !2997)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !1392, line: 1132, column: 23)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !1392, line: 1132, column: 7)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !1392, line: 1129, column: 39)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !1392, line: 1129, column: 5)
!2996 = distinct !DILexicalBlock(scope: !2978, file: !1392, line: 1129, column: 5)
!2997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2998)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!3000 = !DILocalVariable(name: "i", scope: !3001, file: !1392, line: 1136, type: !889)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !1392, line: 1135, column: 47)
!3002 = distinct !DILexicalBlock(scope: !2992, file: !1392, line: 1134, column: 10)
!3003 = !DILocalVariable(name: "n", scope: !3004, file: !1392, line: 1149, type: !513)
!3004 = distinct !DILexicalBlock(scope: !2994, file: !1392, line: 1148, column: 2)
!3005 = !DILocalVariable(name: "name", scope: !3004, file: !1392, line: 1150, type: !887)
!3006 = !DILocalVariable(name: "re", scope: !3007, file: !1392, line: 1191, type: !881)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !1392, line: 1190, column: 47)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !1392, line: 1190, column: 17)
!3009 = distinct !DILexicalBlock(scope: !3010, file: !1392, line: 1187, column: 18)
!3010 = distinct !DILexicalBlock(scope: !2994, file: !1392, line: 1187, column: 6)
!3011 = !DILocalVariable(name: "dsv", scope: !3007, file: !1392, line: 1192, type: !876)
!3012 = !DILocalVariable(name: "s", scope: !3007, file: !1392, line: 1193, type: !886)
!3013 = !DILocalVariable(name: "sv", scope: !3014, file: !1392, line: 1212, type: !876)
!3014 = distinct !DILexicalBlock(scope: !3015, file: !1392, line: 1211, column: 39)
!3015 = distinct !DILexicalBlock(scope: !3016, file: !1392, line: 1211, column: 7)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !1392, line: 1210, column: 27)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !1392, line: 1210, column: 10)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !1392, line: 1208, column: 25)
!3019 = distinct !DILexicalBlock(scope: !2994, file: !1392, line: 1208, column: 13)
!3020 = !DILocalVariable(name: "cache", scope: !3021, file: !1392, line: 1233, type: !3023)
!3021 = distinct !DILexicalBlock(scope: !3022, file: !1392, line: 1232, column: 38)
!3022 = distinct !DILexicalBlock(scope: !2994, file: !1392, line: 1232, column: 6)
!3023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3024)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!3025 = !DILocalVariable(name: "i", scope: !3026, file: !1392, line: 1235, type: !529)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !1392, line: 1234, column: 17)
!3027 = distinct !DILexicalBlock(scope: !3021, file: !1392, line: 1234, column: 10)
!3028 = !DILocation(line: 0, scope: !2978)
!3029 = !DILocation(line: 1129, column: 5, scope: !2996)
!3030 = !DILocation(line: 1131, column: 30, scope: !2994)
!3031 = !DILocation(line: 1130, column: 3, scope: !2994)
!3032 = !DILocation(line: 1132, column: 11, scope: !2993)
!3033 = !DILocation(line: 1132, column: 7, scope: !2993)
!3034 = !DILocation(line: 1132, column: 7, scope: !2994)
!3035 = !DILocation(line: 0, scope: !2992)
!3036 = !DILocation(line: 1134, column: 12, scope: !3002)
!3037 = !DILocation(line: 1135, column: 3, scope: !3002)
!3038 = !DILocation(line: 0, scope: !3002)
!3039 = !DILocation(line: 1136, column: 19, scope: !3001)
!3040 = !DILocation(line: 1137, column: 80, scope: !3001)
!3041 = !DILocation(line: 0, scope: !3001)
!3042 = !DILocation(line: 1137, column: 10, scope: !3001)
!3043 = !DILocation(line: 1138, column: 6, scope: !3001)
!3044 = !DILocation(line: 1140, column: 10, scope: !3002)
!3045 = !DILocation(line: 1143, column: 6, scope: !2993)
!3046 = !DILocation(line: 1145, column: 10, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2994, file: !1392, line: 1145, column: 6)
!3048 = !DILocation(line: 1145, column: 6, scope: !3047)
!3049 = !DILocation(line: 1145, column: 6, scope: !2994)
!3050 = !DILocation(line: 1146, column: 67, scope: !3047)
!3051 = !DILocation(line: 1146, column: 6, scope: !3047)
!3052 = !DILocation(line: 0, scope: !3004)
!3053 = !DILocation(line: 1151, column: 6, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3004, file: !1392, line: 1151, column: 6)
!3055 = !DILocation(line: 1151, column: 18, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3054, file: !1392, line: 1151, column: 6)
!3057 = !DILocation(line: 1152, column: 37, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !1392, line: 1152, column: 7)
!3059 = distinct !DILexicalBlock(scope: !3056, file: !1392, line: 1151, column: 44)
!3060 = !DILocation(line: 1152, column: 19, scope: !3058)
!3061 = !DILocation(line: 1152, column: 7, scope: !3059)
!3062 = !DILocation(line: 1151, column: 40, scope: !3056)
!3063 = distinct !{!3063, !3053, !3064, !1603, !1604}
!3064 = !DILocation(line: 1156, column: 6, scope: !3054)
!3065 = !DILocation(line: 1157, column: 10, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3004, file: !1392, line: 1157, column: 10)
!3067 = !DILocation(line: 1157, column: 10, scope: !3004)
!3068 = !DILocation(line: 1151, column: 33, scope: !3056)
!3069 = !DILocation(line: 1158, column: 3, scope: !3066)
!3070 = !DILocation(line: 1162, column: 38, scope: !3066)
!3071 = !DILocation(line: 1161, column: 3, scope: !3066)
!3072 = !DILocation(line: 1165, column: 17, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !2994, file: !1392, line: 1165, column: 13)
!3074 = !DILocation(line: 1165, column: 13, scope: !3073)
!3075 = !DILocation(line: 1165, column: 13, scope: !2994)
!3076 = !DILocation(line: 1166, column: 76, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3073, file: !1392, line: 1165, column: 27)
!3078 = !DILocation(line: 1166, column: 13, scope: !3077)
!3079 = !DILocation(line: 1167, column: 14, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3077, file: !1392, line: 1167, column: 10)
!3081 = !DILocation(line: 1167, column: 22, scope: !3080)
!3082 = !DILocation(line: 1167, column: 44, scope: !3080)
!3083 = !DILocation(line: 1168, column: 7, scope: !3080)
!3084 = !DILocation(line: 1168, column: 16, scope: !3080)
!3085 = !DILocation(line: 1167, column: 10, scope: !3077)
!3086 = !DILocation(line: 1169, column: 10, scope: !3080)
!3087 = !DILocation(line: 1170, column: 14, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3077, file: !1392, line: 1170, column: 10)
!3089 = !DILocation(line: 1170, column: 22, scope: !3088)
!3090 = !DILocation(line: 1170, column: 49, scope: !3088)
!3091 = !DILocation(line: 1171, column: 7, scope: !3088)
!3092 = !DILocation(line: 1171, column: 16, scope: !3088)
!3093 = !DILocation(line: 1170, column: 10, scope: !3077)
!3094 = !DILocation(line: 1172, column: 10, scope: !3088)
!3095 = !DILocation(line: 1173, column: 14, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3077, file: !1392, line: 1173, column: 10)
!3097 = !DILocation(line: 1173, column: 23, scope: !3096)
!3098 = !DILocation(line: 1173, column: 10, scope: !3077)
!3099 = !DILocation(line: 1174, column: 10, scope: !3096)
!3100 = !DILocation(line: 1175, column: 21, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3077, file: !1392, line: 1175, column: 17)
!3102 = !DILocation(line: 1175, column: 30, scope: !3101)
!3103 = !DILocation(line: 1175, column: 17, scope: !3077)
!3104 = !DILocation(line: 1176, column: 10, scope: !3101)
!3105 = !DILocation(line: 1177, column: 14, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3077, file: !1392, line: 1177, column: 10)
!3107 = !DILocation(line: 1177, column: 23, scope: !3106)
!3108 = !DILocation(line: 1177, column: 10, scope: !3077)
!3109 = !DILocation(line: 1178, column: 10, scope: !3106)
!3110 = !DILocation(line: 1179, column: 14, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3077, file: !1392, line: 1179, column: 10)
!3112 = !DILocation(line: 1179, column: 23, scope: !3111)
!3113 = !DILocation(line: 1179, column: 10, scope: !3077)
!3114 = !DILocation(line: 1180, column: 10, scope: !3111)
!3115 = !DILocation(line: 1181, column: 14, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3077, file: !1392, line: 1181, column: 10)
!3117 = !DILocation(line: 1181, column: 23, scope: !3116)
!3118 = !DILocation(line: 1181, column: 10, scope: !3077)
!3119 = !DILocation(line: 1182, column: 10, scope: !3116)
!3120 = !DILocation(line: 1183, column: 14, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3077, file: !1392, line: 1183, column: 10)
!3122 = !DILocation(line: 1183, column: 22, scope: !3121)
!3123 = !DILocation(line: 1183, column: 49, scope: !3121)
!3124 = !DILocation(line: 1184, column: 7, scope: !3121)
!3125 = !DILocation(line: 1184, column: 16, scope: !3121)
!3126 = !DILocation(line: 1183, column: 10, scope: !3077)
!3127 = !DILocation(line: 1185, column: 10, scope: !3121)
!3128 = !DILocation(line: 1187, column: 10, scope: !3010)
!3129 = !DILocation(line: 1187, column: 6, scope: !3010)
!3130 = !DILocation(line: 1187, column: 6, scope: !2994)
!3131 = !DILocation(line: 1189, column: 10, scope: !3009)
!3132 = !DILocation(line: 1188, column: 6, scope: !3009)
!3133 = !DILocation(line: 1190, column: 21, scope: !3008)
!3134 = !DILocation(line: 1190, column: 29, scope: !3008)
!3135 = !DILocation(line: 1190, column: 17, scope: !3009)
!3136 = !DILocation(line: 1191, column: 36, scope: !3007)
!3137 = !DILocation(line: 0, scope: !3007)
!3138 = !DILocation(line: 1192, column: 20, scope: !3007)
!3139 = !DILocation(line: 1194, column: 9, scope: !3007)
!3140 = !DILocation(line: 1199, column: 3, scope: !3007)
!3141 = !DILocation(line: 1201, column: 8, scope: !3007)
!3142 = !DILocation(line: 1201, column: 4, scope: !3007)
!3143 = !DILocation(line: 1200, column: 3, scope: !3007)
!3144 = !DILocation(line: 1202, column: 13, scope: !3007)
!3145 = !DILocation(line: 1203, column: 21, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3009, file: !1392, line: 1203, column: 17)
!3147 = !DILocation(line: 1203, column: 30, scope: !3146)
!3148 = !DILocation(line: 1203, column: 17, scope: !3009)
!3149 = !DILocation(line: 1204, column: 3, scope: !3146)
!3150 = !DILocation(line: 1206, column: 17, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !2994, file: !1392, line: 1206, column: 13)
!3152 = !DILocation(line: 1206, column: 13, scope: !3151)
!3153 = !DILocation(line: 1206, column: 13, scope: !2994)
!3154 = !DILocation(line: 1207, column: 6, scope: !3151)
!3155 = !DILocation(line: 1208, column: 17, scope: !3019)
!3156 = !DILocation(line: 1208, column: 13, scope: !3019)
!3157 = !DILocation(line: 1208, column: 13, scope: !2994)
!3158 = !DILocation(line: 1209, column: 66, scope: !3018)
!3159 = !DILocation(line: 1209, column: 6, scope: !3018)
!3160 = !DILocation(line: 1210, column: 14, scope: !3017)
!3161 = !DILocation(line: 1210, column: 21, scope: !3017)
!3162 = !DILocation(line: 1210, column: 10, scope: !3018)
!3163 = !DILocation(line: 1211, column: 11, scope: !3015)
!3164 = !DILocation(line: 1211, column: 19, scope: !3015)
!3165 = !DILocation(line: 1211, column: 7, scope: !3016)
!3166 = !DILocation(line: 1212, column: 23, scope: !3014)
!3167 = !DILocation(line: 0, scope: !3014)
!3168 = !DILocation(line: 1213, column: 34, scope: !3014)
!3169 = !DILocation(line: 1213, column: 7, scope: !3014)
!3170 = !DILocation(line: 0, scope: !1953, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 1214, column: 7, scope: !3014)
!3172 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !3171)
!3173 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !3171)
!3174 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !3171)
!3175 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !3171)
!3176 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !3171)
!3177 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !3171)
!3178 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !3171)
!3179 = !DILocation(line: 1217, column: 15, scope: !3017)
!3180 = !DILocation(line: 1218, column: 3, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !1392, line: 1217, column: 40)
!3182 = distinct !DILexicalBlock(scope: !3017, file: !1392, line: 1217, column: 15)
!3183 = !DILocation(line: 1219, column: 3, scope: !3181)
!3184 = !DILocation(line: 1221, column: 3, scope: !3181)
!3185 = !DILocation(line: 1223, column: 39, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3182, file: !1392, line: 1223, column: 15)
!3187 = !DILocation(line: 1223, column: 47, scope: !3186)
!3188 = !DILocation(line: 1223, column: 15, scope: !3182)
!3189 = !DILocation(line: 1225, column: 3, scope: !3186)
!3190 = !DILocation(line: 1230, column: 13, scope: !3018)
!3191 = !DILocation(line: 1231, column: 9, scope: !3018)
!3192 = !DILocation(line: 1232, column: 10, scope: !3022)
!3193 = !DILocation(line: 1232, column: 18, scope: !3022)
!3194 = !DILocation(line: 1232, column: 6, scope: !2994)
!3195 = !DILocation(line: 1233, column: 50, scope: !3021)
!3196 = !DILocation(line: 0, scope: !3021)
!3197 = !DILocation(line: 1234, column: 10, scope: !3027)
!3198 = !DILocation(line: 1234, column: 10, scope: !3021)
!3199 = !DILocation(line: 0, scope: !3026)
!3200 = !DILocation(line: 1240, column: 14, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !1392, line: 1236, column: 3)
!3202 = distinct !DILexicalBlock(scope: !3026, file: !1392, line: 1236, column: 3)
!3203 = !DILocation(line: 1241, column: 14, scope: !3201)
!3204 = !DILocation(line: 1237, column: 7, scope: !3201)
!3205 = !DILocation(line: 1129, column: 25, scope: !2995)
!3206 = distinct !{!3206, !3029, !3207, !1603, !1604}
!3207 = !DILocation(line: 1244, column: 5, scope: !2996)
!3208 = !DILocation(line: 1245, column: 1, scope: !2978)
!3209 = distinct !DISubprogram(name: "Perl_do_sv_dump", scope: !1392, file: !1392, line: 1427, type: !3210, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !594, !635, !514, !594, !594, !475, !545}
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3228, !3229, !3232, !3236, !3240, !3242, !3246, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3262, !3263, !3265, !3266, !3272, !3275, !3278, !3280, !3283, !3287, !3289, !3292, !3295, !3298, !3300, !3304, !3306, !3307, !3310, !3314, !3315, !3316, !3319, !3326, !3327, !3328, !3329, !3330, !3333, !3334, !3335, !3338, !3339, !3342, !3345, !3347, !3350, !3352, !3353}
!3213 = !DILocalVariable(name: "level", arg: 1, scope: !3209, file: !1392, line: 1427, type: !594)
!3214 = !DILocalVariable(name: "file", arg: 2, scope: !3209, file: !1392, line: 1427, type: !635)
!3215 = !DILocalVariable(name: "sv", arg: 3, scope: !3209, file: !1392, line: 1427, type: !514)
!3216 = !DILocalVariable(name: "nest", arg: 4, scope: !3209, file: !1392, line: 1427, type: !594)
!3217 = !DILocalVariable(name: "maxnest", arg: 5, scope: !3209, file: !1392, line: 1427, type: !594)
!3218 = !DILocalVariable(name: "dumpops", arg: 6, scope: !3209, file: !1392, line: 1427, type: !475)
!3219 = !DILocalVariable(name: "pvlim", arg: 7, scope: !3209, file: !1392, line: 1427, type: !545)
!3220 = !DILocalVariable(name: "d", scope: !3209, file: !1392, line: 1429, type: !514)
!3221 = !DILocalVariable(name: "s", scope: !3209, file: !1392, line: 1430, type: !887)
!3222 = !DILocalVariable(name: "flags", scope: !3209, file: !1392, line: 1431, type: !520)
!3223 = !DILocalVariable(name: "type", scope: !3209, file: !1392, line: 1432, type: !520)
!3224 = !DILocalVariable(name: "re", scope: !3225, file: !1392, line: 1596, type: !3227)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !1392, line: 1595, column: 60)
!3226 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1594, column: 9)
!3227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!3228 = !DILocalVariable(name: "ptr", scope: !3225, file: !1392, line: 1597, type: !886)
!3229 = !DILocalVariable(name: "delta", scope: !3230, file: !1392, line: 1600, type: !545)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !1392, line: 1599, column: 11)
!3231 = distinct !DILexicalBlock(scope: !3225, file: !1392, line: 1599, column: 6)
!3232 = !DILocalVariable(name: "count", scope: !3233, file: !1392, line: 1675, type: !805)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !1392, line: 1674, column: 56)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1674, column: 6)
!3235 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1656, column: 19)
!3236 = !DILocalVariable(name: "elt", scope: !3237, file: !1392, line: 1677, type: !935)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !1392, line: 1676, column: 87)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !1392, line: 1676, column: 6)
!3239 = distinct !DILexicalBlock(scope: !3233, file: !1392, line: 1676, column: 6)
!3240 = !DILocalVariable(name: "usedkeys", scope: !3241, file: !1392, line: 1686, type: !520)
!3241 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1685, column: 20)
!3242 = !DILocalVariable(name: "aux", scope: !3243, file: !1392, line: 1688, type: !3245)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !1392, line: 1687, column: 24)
!3244 = distinct !DILexicalBlock(scope: !3241, file: !1392, line: 1687, column: 13)
!3245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1183)
!3246 = !DILocalVariable(name: "freq", scope: !3247, file: !1392, line: 1696, type: !3249)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !1392, line: 1694, column: 31)
!3248 = distinct !DILexicalBlock(scope: !3241, file: !1392, line: 1694, column: 6)
!3249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 6400, elements: !3250)
!3250 = !{!3251}
!3251 = !DISubrange(count: 200)
!3252 = !DILocalVariable(name: "i", scope: !3247, file: !1392, line: 1698, type: !513)
!3253 = !DILocalVariable(name: "max", scope: !3247, file: !1392, line: 1699, type: !513)
!3254 = !DILocalVariable(name: "pow2", scope: !3247, file: !1392, line: 1700, type: !520)
!3255 = !DILocalVariable(name: "keys", scope: !3247, file: !1392, line: 1700, type: !520)
!3256 = !DILocalVariable(name: "theoret", scope: !3247, file: !1392, line: 1701, type: !534)
!3257 = !DILocalVariable(name: "sum", scope: !3247, file: !1392, line: 1701, type: !534)
!3258 = !DILocalVariable(name: "h", scope: !3259, file: !1392, line: 1706, type: !582)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !1392, line: 1705, column: 47)
!3260 = distinct !DILexicalBlock(scope: !3261, file: !1392, line: 1705, column: 6)
!3261 = distinct !DILexicalBlock(scope: !3247, file: !1392, line: 1705, column: 6)
!3262 = !DILocalVariable(name: "count", scope: !3259, file: !1392, line: 1707, type: !513)
!3263 = !DILocalVariable(name: "count", scope: !3264, file: !1392, line: 1750, type: !545)
!3264 = distinct !DILexicalBlock(scope: !3241, file: !1392, line: 1749, column: 9)
!3265 = !DILocalVariable(name: "ents", scope: !3264, file: !1392, line: 1751, type: !581)
!3266 = !DILocalVariable(name: "last", scope: !3267, file: !1392, line: 1754, type: !3269)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !1392, line: 1753, column: 23)
!3268 = distinct !DILexicalBlock(scope: !3264, file: !1392, line: 1753, column: 17)
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3270)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !582)
!3272 = !DILocalVariable(name: "aux", scope: !3273, file: !1392, line: 1764, type: !3245)
!3273 = distinct !DILexicalBlock(scope: !3274, file: !1392, line: 1763, column: 28)
!3274 = distinct !DILexicalBlock(scope: !3264, file: !1392, line: 1763, column: 17)
!3275 = !DILocalVariable(name: "mg", scope: !3276, file: !1392, line: 1786, type: !3277)
!3276 = distinct !DILexicalBlock(scope: !3241, file: !1392, line: 1785, column: 2)
!3277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!3278 = !DILocalVariable(name: "hvname", scope: !3279, file: !1392, line: 1792, type: !886)
!3279 = distinct !DILexicalBlock(scope: !3241, file: !1392, line: 1791, column: 2)
!3280 = !DILocalVariable(name: "tmpsv", scope: !3281, file: !1392, line: 1794, type: !514)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !1392, line: 1793, column: 18)
!3282 = distinct !DILexicalBlock(scope: !3279, file: !1392, line: 1793, column: 10)
!3283 = !DILocalVariable(name: "backrefs", scope: !3284, file: !1392, line: 1801, type: !3286)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !1392, line: 1800, column: 17)
!3285 = distinct !DILexicalBlock(scope: !3241, file: !1392, line: 1800, column: 6)
!3286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!3287 = !DILocalVariable(name: "meta", scope: !3284, file: !1392, line: 1803, type: !3288)
!3288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!3289 = !DILocalVariable(name: "count", scope: !3290, file: !1392, line: 1810, type: !910)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !1392, line: 1809, column: 69)
!3291 = distinct !DILexicalBlock(scope: !3284, file: !1392, line: 1809, column: 10)
!3292 = !DILocalVariable(name: "names", scope: !3293, file: !1392, line: 1812, type: !876)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !1392, line: 1811, column: 14)
!3294 = distinct !DILexicalBlock(scope: !3290, file: !1392, line: 1811, column: 7)
!3295 = !DILocalVariable(name: "hekp", scope: !3293, file: !1392, line: 1815, type: !3296)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!3298 = !DILocalVariable(name: "endp", scope: !3293, file: !1392, line: 1817, type: !3299)
!3299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3296)
!3300 = !DILocalVariable(name: "tmp", scope: !3301, file: !1392, line: 1821, type: !514)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !1392, line: 1820, column: 24)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !1392, line: 1820, column: 8)
!3303 = distinct !DILexicalBlock(scope: !3293, file: !1392, line: 1819, column: 27)
!3304 = !DILocalVariable(name: "tmp", scope: !3305, file: !1392, line: 1835, type: !876)
!3305 = distinct !DILexicalBlock(scope: !3294, file: !1392, line: 1834, column: 8)
!3306 = !DILocalVariable(name: "hvename", scope: !3305, file: !1392, line: 1836, type: !886)
!3307 = !DILocalVariable(name: "tmpsv", scope: !3308, file: !1392, line: 1850, type: !514)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !1392, line: 1849, column: 16)
!3309 = distinct !DILexicalBlock(scope: !3284, file: !1392, line: 1849, column: 10)
!3310 = !DILocalVariable(name: "hv", scope: !3311, file: !1392, line: 1887, type: !3313)
!3311 = distinct !DILexicalBlock(scope: !3312, file: !1392, line: 1886, column: 22)
!3312 = distinct !DILexicalBlock(scope: !3241, file: !1392, line: 1886, column: 6)
!3313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!3314 = !DILocalVariable(name: "i", scope: !3311, file: !1392, line: 1888, type: !545)
!3315 = !DILocalVariable(name: "he", scope: !3311, file: !1392, line: 1889, type: !582)
!3316 = !DILocalVariable(name: "count", scope: !3317, file: !1392, line: 1892, type: !513)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !1392, line: 1891, column: 23)
!3318 = distinct !DILexicalBlock(scope: !3311, file: !1392, line: 1891, column: 10)
!3319 = !DILocalVariable(name: "hash", scope: !3320, file: !1392, line: 1895, type: !520)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !1392, line: 1894, column: 54)
!3321 = distinct !DILexicalBlock(scope: !3322, file: !1392, line: 1894, column: 7)
!3322 = distinct !DILexicalBlock(scope: !3323, file: !1392, line: 1894, column: 7)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !1392, line: 1893, column: 34)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !1392, line: 1893, column: 3)
!3325 = distinct !DILexicalBlock(scope: !3317, file: !1392, line: 1893, column: 3)
!3326 = !DILocalVariable(name: "keysv", scope: !3320, file: !1392, line: 1896, type: !514)
!3327 = !DILocalVariable(name: "keypv", scope: !3320, file: !1392, line: 1897, type: !887)
!3328 = !DILocalVariable(name: "elt", scope: !3320, file: !1392, line: 1898, type: !514)
!3329 = !DILocalVariable(name: "len", scope: !3320, file: !1392, line: 1899, type: !545)
!3330 = !DILocalVariable(name: "tmpsv", scope: !3331, file: !1392, line: 1925, type: !514)
!3331 = distinct !DILexicalBlock(scope: !3332, file: !1392, line: 1924, column: 22)
!3332 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1924, column: 6)
!3333 = !DILocalVariable(name: "len", scope: !3331, file: !1392, line: 1926, type: !545)
!3334 = !DILocalVariable(name: "name", scope: !3331, file: !1392, line: 1927, type: !886)
!3335 = !DILocalVariable(name: "tmpsv", scope: !3336, file: !1392, line: 1932, type: !514)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !1392, line: 1931, column: 17)
!3337 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1931, column: 6)
!3338 = !DILocalVariable(name: "proto", scope: !3336, file: !1392, line: 1933, type: !886)
!3339 = !DILocalVariable(name: "constant", scope: !3340, file: !1392, line: 1954, type: !876)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !1392, line: 1953, column: 9)
!3341 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1941, column: 6)
!3342 = !DILocalVariable(name: "outside", scope: !3343, file: !1392, line: 1986, type: !3344)
!3343 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1985, column: 2)
!3344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!3345 = !DILocalVariable(name: "tmpsv", scope: !3346, file: !1392, line: 2022, type: !514)
!3346 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2021, column: 8)
!3347 = !DILocalVariable(name: "r", scope: !3348, file: !1392, line: 2099, type: !3349)
!3348 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2098, column: 2)
!3349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!3350 = !DILabel(scope: !3351, name: "evaled_or_uv", file: !1392, line: 1498)
!3351 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1473, column: 19)
!3352 = !DILabel(scope: !3317, name: "DONEHV", file: !1392, line: 1917)
!3353 = !DILabel(scope: !3235, name: "dumpregexp", file: !1392, line: 2097)
!3354 = !DILocation(line: 0, scope: !3209)
!3355 = !DILocation(line: 1436, column: 10, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1436, column: 9)
!3357 = !DILocation(line: 1436, column: 9, scope: !3209)
!3358 = !DILocation(line: 1437, column: 2, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3356, file: !1392, line: 1436, column: 14)
!3360 = !DILocation(line: 1438, column: 2, scope: !3359)
!3361 = !DILocation(line: 1441, column: 13, scope: !3209)
!3362 = !DILocation(line: 1442, column: 12, scope: !3209)
!3363 = !DILocation(line: 1448, column: 6, scope: !3209)
!3364 = !DILocation(line: 1448, column: 25, scope: !3209)
!3365 = !DILocation(line: 1449, column: 12, scope: !3209)
!3366 = !DILocation(line: 1449, column: 25, scope: !3209)
!3367 = !DILocation(line: 1449, column: 42, scope: !3209)
!3368 = !DILocation(line: 1449, column: 38, scope: !3209)
!3369 = !DILocation(line: 1446, column: 9, scope: !3209)
!3370 = !DILocation(line: 1452, column: 16, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1452, column: 9)
!3372 = !DILocation(line: 1452, column: 9, scope: !3209)
!3373 = !DILocation(line: 1453, column: 6, scope: !3371)
!3374 = !DILocation(line: 1454, column: 16, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1454, column: 9)
!3376 = !DILocation(line: 1454, column: 9, scope: !3209)
!3377 = !DILocation(line: 1455, column: 6, scope: !3375)
!3378 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 1456, column: 5, scope: !3209)
!3380 = !DILocation(line: 0, scope: !2420, inlinedAt: !3379)
!3381 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !3379)
!3382 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !3379)
!3383 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !3379)
!3384 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !3379)
!3385 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !3379)
!3386 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !3379)
!3387 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !3379)
!3388 = distinct !{!3388, !3378, !3389, !1603, !1604}
!3389 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !3379)
!3390 = !DILocation(line: 1457, column: 15, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1457, column: 9)
!3392 = !DILocation(line: 1457, column: 9, scope: !3209)
!3393 = !DILocation(line: 1458, column: 9, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3391, file: !1392, line: 1457, column: 27)
!3395 = !DILocation(line: 1459, column: 6, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3394, file: !1392, line: 1459, column: 6)
!3397 = !DILocation(line: 1459, column: 6, scope: !3394)
!3398 = !DILocation(line: 1459, column: 21, scope: !3396)
!3399 = !DILocation(line: 1461, column: 15, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1461, column: 9)
!3401 = !DILocation(line: 1461, column: 27, scope: !3400)
!3402 = !DILocation(line: 1461, column: 48, scope: !3400)
!3403 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 1462, column: 5, scope: !3209)
!3405 = !DILocation(line: 0, scope: !2420, inlinedAt: !3404)
!3406 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !3404)
!3407 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !3404)
!3408 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !3404)
!3409 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !3404)
!3410 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !3404)
!3411 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !3404)
!3412 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !3404)
!3413 = distinct !{!3413, !3403, !3414, !1603, !1604}
!3414 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !3404)
!3415 = !DILocation(line: 1463, column: 15, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1463, column: 9)
!3417 = !DILocation(line: 1463, column: 28, scope: !3416)
!3418 = !DILocation(line: 1463, column: 52, scope: !3416)
!3419 = !DILocation(line: 1464, column: 7, scope: !3416)
!3420 = !DILocation(line: 1464, column: 15, scope: !3416)
!3421 = !DILocation(line: 1463, column: 9, scope: !3209)
!3422 = !DILocation(line: 1465, column: 6, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3424, file: !1392, line: 1465, column: 6)
!3424 = distinct !DILexicalBlock(scope: !3416, file: !1392, line: 1464, column: 28)
!3425 = !DILocation(line: 0, scope: !3423)
!3426 = !DILocation(line: 1473, column: 5, scope: !3209)
!3427 = !DILocation(line: 1476, column: 2, scope: !3351)
!3428 = !DILocation(line: 0, scope: !2420, inlinedAt: !3429)
!3429 = distinct !DILocation(line: 1476, column: 2, scope: !3351)
!3430 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !3429)
!3431 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !3429)
!3432 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !3429)
!3433 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !3429)
!3434 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !3429)
!3435 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !3429)
!3436 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !3429)
!3437 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !3429)
!3438 = distinct !{!3438, !3430, !3439, !1603, !1604}
!3439 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !3429)
!3440 = !DILocation(line: 0, scope: !2420, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 1479, column: 2, scope: !3351)
!3442 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !3441)
!3443 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !3441)
!3444 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !3441)
!3445 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !3441)
!3446 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !3441)
!3447 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !3441)
!3448 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !3441)
!3449 = distinct !{!3449, !3450, !3451, !1603, !1604}
!3450 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !3441)
!3451 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !3441)
!3452 = !DILocation(line: 1483, column: 6, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3351, file: !1392, line: 1483, column: 6)
!3454 = !DILocation(line: 1484, column: 6, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3453, file: !1392, line: 1483, column: 24)
!3456 = !DILocation(line: 0, scope: !2420, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 1484, column: 6, scope: !3455)
!3458 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !3457)
!3459 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !3457)
!3460 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !3457)
!3461 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !3457)
!3462 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !3457)
!3463 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !3457)
!3464 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !3457)
!3465 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !3457)
!3466 = distinct !{!3466, !3458, !3467, !1603, !1604}
!3467 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !3457)
!3468 = !DILocation(line: 1486, column: 6, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3351, file: !1392, line: 1486, column: 6)
!3470 = !DILocation(line: 1486, column: 26, scope: !3469)
!3471 = !DILocation(line: 1486, column: 6, scope: !3351)
!3472 = !DILocation(line: 1487, column: 6, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3469, file: !1392, line: 1486, column: 42)
!3474 = !DILocation(line: 1488, column: 10, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3473, file: !1392, line: 1488, column: 10)
!3476 = !DILocation(line: 1488, column: 25, scope: !3475)
!3477 = !DILocation(line: 1488, column: 10, scope: !3473)
!3478 = !DILocation(line: 1491, column: 3, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3475, file: !1392, line: 1490, column: 11)
!3480 = !DILocation(line: 1492, column: 3, scope: !3479)
!3481 = !DILocation(line: 0, scope: !2420, inlinedAt: !3482)
!3482 = distinct !DILocation(line: 1492, column: 3, scope: !3479)
!3483 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !3482)
!3484 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !3482)
!3485 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !3482)
!3486 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !3482)
!3487 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !3482)
!3488 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !3482)
!3489 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !3482)
!3490 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !3482)
!3491 = distinct !{!3491, !3483, !3492, !1603, !1604}
!3492 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !3482)
!3493 = !DILocation(line: 0, scope: !3351)
!3494 = !DILocation(line: 1499, column: 6, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3351, file: !1392, line: 1499, column: 6)
!3496 = !DILocation(line: 1498, column: 5, scope: !3351)
!3497 = !DILocation(line: 1499, column: 6, scope: !3351)
!3498 = !DILocation(line: 1499, column: 20, scope: !3495)
!3499 = !DILocation(line: 1500, column: 6, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3351, file: !1392, line: 1500, column: 6)
!3501 = !DILocation(line: 1500, column: 17, scope: !3500)
!3502 = !DILocation(line: 1500, column: 40, scope: !3500)
!3503 = !DILocation(line: 1503, column: 6, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3351, file: !1392, line: 1503, column: 6)
!3505 = !DILocation(line: 1503, column: 6, scope: !3351)
!3506 = !DILocation(line: 1503, column: 19, scope: !3504)
!3507 = !DILocation(line: 1504, column: 6, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3351, file: !1392, line: 1504, column: 6)
!3509 = !DILocation(line: 1511, column: 28, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1511, column: 9)
!3511 = !DILocation(line: 1511, column: 31, scope: !3510)
!3512 = !DILocation(line: 1511, column: 9, scope: !3209)
!3513 = !DILocation(line: 1512, column: 9, scope: !3510)
!3514 = !DILocation(line: 1514, column: 11, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1514, column: 9)
!3516 = !DILocation(line: 1514, column: 20, scope: !3515)
!3517 = !DILocation(line: 1514, column: 9, scope: !3515)
!3518 = !DILocation(line: 1514, column: 25, scope: !3515)
!3519 = !DILocation(line: 1514, column: 9, scope: !3209)
!3520 = !DILocation(line: 1515, column: 9, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !1392, line: 1515, column: 9)
!3522 = distinct !DILexicalBlock(scope: !3515, file: !1392, line: 1514, column: 33)
!3523 = !DILocation(line: 1516, column: 2, scope: !3522)
!3524 = !DILocation(line: 1516, column: 11, scope: !3522)
!3525 = !DILocation(line: 1516, column: 21, scope: !3522)
!3526 = !DILocation(line: 1517, column: 5, scope: !3522)
!3527 = !DILocation(line: 1518, column: 5, scope: !3209)
!3528 = !DILocation(line: 1519, column: 9, scope: !3209)
!3529 = !DILocation(line: 1534, column: 5, scope: !3209)
!3530 = !DILocation(line: 1538, column: 14, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1538, column: 9)
!3532 = !DILocation(line: 0, scope: !3531)
!3533 = !DILocation(line: 1538, column: 9, scope: !3209)
!3534 = !DILocation(line: 1539, column: 32, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3531, file: !1392, line: 1538, column: 26)
!3536 = !DILocation(line: 1539, column: 2, scope: !3535)
!3537 = !DILocation(line: 1541, column: 6, scope: !3535)
!3538 = !DILocation(line: 0, scope: !1953, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 1542, column: 6, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !1392, line: 1541, column: 25)
!3541 = distinct !DILexicalBlock(scope: !3535, file: !1392, line: 1541, column: 6)
!3542 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !3539)
!3543 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !3539)
!3544 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !3539)
!3545 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !3539)
!3546 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !3539)
!3547 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !3539)
!3548 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !3539)
!3549 = !DILocation(line: 1546, column: 2, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3531, file: !1392, line: 1545, column: 12)
!3551 = !DILocation(line: 0, scope: !1953, inlinedAt: !3552)
!3552 = distinct !DILocation(line: 1547, column: 2, scope: !3550)
!3553 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !3552)
!3554 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !3552)
!3555 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !3552)
!3556 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !3552)
!3557 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !3552)
!3558 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !3552)
!3559 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !3552)
!3560 = !DILocation(line: 1555, column: 29, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1553, column: 9)
!3562 = !DILocation(line: 1555, column: 50, scope: !3561)
!3563 = !DILocation(line: 1556, column: 25, scope: !3561)
!3564 = !DILocation(line: 1553, column: 9, scope: !3209)
!3565 = !DILocation(line: 1557, column: 6, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !1392, line: 1557, column: 6)
!3567 = distinct !DILexicalBlock(scope: !3561, file: !1392, line: 1556, column: 37)
!3568 = !DILocation(line: 0, scope: !3566)
!3569 = !DILocation(line: 1557, column: 6, scope: !3567)
!3570 = !DILocation(line: 1562, column: 62, scope: !3566)
!3571 = !DILocation(line: 1562, column: 6, scope: !3566)
!3572 = !DILocation(line: 1564, column: 62, scope: !3566)
!3573 = !DILocation(line: 1571, column: 2, scope: !3567)
!3574 = !DILocation(line: 1572, column: 5, scope: !3567)
!3575 = !DILocation(line: 1574, column: 27, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1574, column: 9)
!3577 = !DILocation(line: 1576, column: 27, scope: !3576)
!3578 = !DILocation(line: 1576, column: 48, scope: !3576)
!3579 = !DILocation(line: 1577, column: 17, scope: !3576)
!3580 = !DILocation(line: 1574, column: 9, scope: !3209)
!3581 = !DILocation(line: 1579, column: 70, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3576, file: !1392, line: 1577, column: 28)
!3583 = !DILocation(line: 1579, column: 2, scope: !3582)
!3584 = !DILocation(line: 1581, column: 5, scope: !3582)
!3585 = !DILocation(line: 1583, column: 9, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1583, column: 9)
!3587 = !DILocation(line: 1583, column: 9, scope: !3209)
!3588 = !DILocation(line: 1584, column: 60, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3586, file: !1392, line: 1583, column: 20)
!3590 = !DILocation(line: 1584, column: 2, scope: !3589)
!3591 = !DILocation(line: 1585, column: 11, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !1392, line: 1585, column: 6)
!3593 = !DILocation(line: 1585, column: 6, scope: !3589)
!3594 = !DILocation(line: 1586, column: 6, scope: !3592)
!3595 = !DILocation(line: 1589, column: 14, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1589, column: 9)
!3597 = !DILocation(line: 1589, column: 9, scope: !3209)
!3598 = !DILocation(line: 0, scope: !1953, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1590, column: 2, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3596, file: !1392, line: 1589, column: 24)
!3601 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !3599)
!3602 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !3599)
!3603 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !3599)
!3604 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !3599)
!3605 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !3599)
!3606 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !3599)
!3607 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !3599)
!3608 = !DILocation(line: 1594, column: 15, scope: !3226)
!3609 = !DILocation(line: 1594, column: 27, scope: !3226)
!3610 = !DILocation(line: 1594, column: 31, scope: !3226)
!3611 = !DILocation(line: 1595, column: 15, scope: !3226)
!3612 = !DILocation(line: 1595, column: 27, scope: !3226)
!3613 = !DILocation(line: 1595, column: 30, scope: !3226)
!3614 = !DILocation(line: 1595, column: 42, scope: !3226)
!3615 = !DILocation(line: 1594, column: 9, scope: !3209)
!3616 = !DILocation(line: 1596, column: 18, scope: !3225)
!3617 = !DILocation(line: 0, scope: !3225)
!3618 = !DILocation(line: 1598, column: 11, scope: !3225)
!3619 = !DILocation(line: 1598, column: 6, scope: !3225)
!3620 = !DILocation(line: 1598, column: 37, scope: !3225)
!3621 = !DILocation(line: 1599, column: 6, scope: !3231)
!3622 = !DILocation(line: 1599, column: 6, scope: !3225)
!3623 = !DILocation(line: 1601, column: 10, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3230, file: !1392, line: 1601, column: 10)
!3625 = !DILocation(line: 1601, column: 10, scope: !3230)
!3626 = !DILocation(line: 1602, column: 3, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !1392, line: 1602, column: 3)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !1392, line: 1602, column: 3)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !1392, line: 1602, column: 3)
!3630 = distinct !DILexicalBlock(scope: !3624, file: !1392, line: 1601, column: 21)
!3631 = !DILocation(line: 0, scope: !3230)
!3632 = !DILocation(line: 1602, column: 3, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3627, file: !1392, line: 1602, column: 3)
!3634 = !DILocation(line: 1602, column: 3, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3633, file: !1392, line: 1602, column: 3)
!3636 = !DILocation(line: 0, scope: !3628)
!3637 = !DILocation(line: 1603, column: 3, scope: !3630)
!3638 = !DILocation(line: 1605, column: 6, scope: !3630)
!3639 = !DILocation(line: 0, scope: !3624)
!3640 = !DILocation(line: 1608, column: 62, scope: !3230)
!3641 = !DILocation(line: 1608, column: 6, scope: !3230)
!3642 = !DILocation(line: 1609, column: 10, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3230, file: !1392, line: 1609, column: 10)
!3644 = !DILocation(line: 1609, column: 10, scope: !3230)
!3645 = !DILocation(line: 1611, column: 10, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3643, file: !1392, line: 1609, column: 21)
!3647 = !DILocation(line: 1610, column: 3, scope: !3646)
!3648 = !DILocation(line: 1613, column: 6, scope: !3646)
!3649 = !DILocation(line: 1614, column: 22, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3230, file: !1392, line: 1614, column: 17)
!3651 = !DILocation(line: 1614, column: 17, scope: !3230)
!3652 = !DILocation(line: 1615, column: 3, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3650, file: !1392, line: 1614, column: 38)
!3654 = !DILocation(line: 1617, column: 17, scope: !3653)
!3655 = !DILocation(line: 1618, column: 13, scope: !3653)
!3656 = !DILocation(line: 1620, column: 43, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3650, file: !1392, line: 1619, column: 18)
!3658 = !DILocation(line: 1620, column: 17, scope: !3657)
!3659 = !DILocation(line: 1623, column: 21, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3657, file: !1392, line: 1623, column: 21)
!3661 = !DILocation(line: 1623, column: 21, scope: !3657)
!3662 = !DILocation(line: 1625, column: 42, scope: !3660)
!3663 = !DILocation(line: 1624, column: 21, scope: !3660)
!3664 = !DILocation(line: 1627, column: 17, scope: !3657)
!3665 = !DILocation(line: 1629, column: 67, scope: !3230)
!3666 = !DILocation(line: 1629, column: 6, scope: !3230)
!3667 = !DILocation(line: 1630, column: 10, scope: !3230)
!3668 = !DILocation(line: 1632, column: 16, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3230, file: !1392, line: 1630, column: 10)
!3670 = !DILocation(line: 1631, column: 3, scope: !3669)
!3671 = !DILocation(line: 1634, column: 10, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3230, file: !1392, line: 1634, column: 10)
!3673 = !DILocation(line: 1634, column: 22, scope: !3672)
!3674 = !DILocation(line: 1634, column: 25, scope: !3672)
!3675 = !DILocation(line: 1634, column: 10, scope: !3230)
!3676 = !DILocation(line: 1636, column: 12, scope: !3672)
!3677 = !DILocation(line: 1635, column: 3, scope: !3672)
!3678 = !DILocation(line: 1640, column: 6, scope: !3231)
!3679 = !DILocation(line: 1643, column: 14, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3209, file: !1392, line: 1643, column: 9)
!3681 = !DILocation(line: 1643, column: 9, scope: !3209)
!3682 = !DILocation(line: 1644, column: 6, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !1392, line: 1644, column: 6)
!3684 = distinct !DILexicalBlock(scope: !3680, file: !1392, line: 1643, column: 27)
!3685 = !DILocation(line: 1644, column: 6, scope: !3684)
!3686 = !DILocation(line: 1645, column: 3, scope: !3683)
!3687 = !DILocation(line: 1646, column: 6, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !1392, line: 1646, column: 6)
!3689 = !DILocation(line: 1646, column: 6, scope: !3684)
!3690 = !DILocation(line: 1647, column: 6, scope: !3688)
!3691 = !DILocation(line: 1649, column: 24, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3684, file: !1392, line: 1649, column: 6)
!3693 = !DILocation(line: 1649, column: 48, scope: !3692)
!3694 = !DILocation(line: 1650, column: 70, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3692, file: !1392, line: 1649, column: 61)
!3696 = !DILocation(line: 1650, column: 6, scope: !3695)
!3697 = !DILocation(line: 1651, column: 2, scope: !3695)
!3698 = !DILocation(line: 1656, column: 5, scope: !3209)
!3699 = !DILocation(line: 1658, column: 59, scope: !3235)
!3700 = !DILocation(line: 1658, column: 2, scope: !3235)
!3701 = !DILocation(line: 1659, column: 6, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1659, column: 6)
!3703 = !DILocation(line: 1659, column: 21, scope: !3702)
!3704 = !DILocation(line: 1659, column: 18, scope: !3702)
!3705 = !DILocation(line: 1659, column: 6, scope: !3235)
!3706 = !DILocation(line: 1660, column: 66, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3702, file: !1392, line: 1659, column: 34)
!3708 = !DILocation(line: 1660, column: 6, scope: !3707)
!3709 = !DILocation(line: 1661, column: 67, scope: !3707)
!3710 = !DILocation(line: 1661, column: 6, scope: !3707)
!3711 = !DILocation(line: 1662, column: 2, scope: !3707)
!3712 = !DILocation(line: 1664, column: 6, scope: !3702)
!3713 = !DILocation(line: 1665, column: 64, scope: !3235)
!3714 = !DILocation(line: 1665, column: 2, scope: !3235)
!3715 = !DILocation(line: 1666, column: 63, scope: !3235)
!3716 = !DILocation(line: 1666, column: 2, scope: !3235)
!3717 = !DILocation(line: 1668, column: 8, scope: !3235)
!3718 = !DILocation(line: 1668, column: 22, scope: !3235)
!3719 = !DILocation(line: 1667, column: 2, scope: !3235)
!3720 = !DILocation(line: 1669, column: 2, scope: !3235)
!3721 = !DILocation(line: 1670, column: 6, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1670, column: 6)
!3723 = !DILocation(line: 1670, column: 6, scope: !3235)
!3724 = !DILocation(line: 1670, column: 18, scope: !3722)
!3725 = !DILocation(line: 1671, column: 6, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1671, column: 6)
!3727 = !DILocation(line: 1671, column: 6, scope: !3235)
!3728 = !DILocation(line: 1671, column: 19, scope: !3726)
!3729 = !DILocation(line: 1673, column: 5, scope: !3235)
!3730 = !DILocation(line: 1673, column: 16, scope: !3235)
!3731 = !DILocation(line: 1673, column: 31, scope: !3235)
!3732 = !DILocation(line: 1672, column: 2, scope: !3235)
!3733 = !DILocation(line: 1674, column: 11, scope: !3234)
!3734 = !DILocation(line: 1674, column: 21, scope: !3234)
!3735 = !DILocalVariable(name: "av", arg: 1, scope: !3736, file: !1898, line: 18, type: !869)
!3736 = distinct !DISubprogram(name: "S_av_top_index", scope: !1898, file: !1898, line: 18, type: !3737, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!805, !869}
!3739 = !{!3735}
!3740 = !DILocation(line: 0, scope: !3736, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 1674, column: 24, scope: !3234)
!3742 = !DILocation(line: 23, column: 12, scope: !3736, inlinedAt: !3741)
!3743 = !DILocation(line: 1674, column: 50, scope: !3234)
!3744 = !DILocation(line: 1674, column: 6, scope: !3235)
!3745 = !DILocation(line: 1676, column: 6, scope: !3239)
!3746 = !DILocation(line: 0, scope: !3239)
!3747 = !DILocation(line: 0, scope: !3233)
!3748 = !DILocation(line: 0, scope: !3736, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 1676, column: 32, scope: !3238)
!3750 = !DILocation(line: 23, column: 12, scope: !3736, inlinedAt: !3749)
!3751 = !DILocation(line: 1676, column: 28, scope: !3238)
!3752 = !DILocation(line: 1676, column: 58, scope: !3238)
!3753 = !DILocation(line: 1677, column: 20, scope: !3237)
!3754 = !DILocation(line: 0, scope: !3237)
!3755 = !DILocation(line: 1679, column: 3, scope: !3237)
!3756 = !DILocation(line: 1680, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3237, file: !1392, line: 1680, column: 7)
!3758 = !DILocation(line: 1680, column: 7, scope: !3237)
!3759 = !DILocation(line: 1681, column: 7, scope: !3757)
!3760 = !DILocation(line: 1676, column: 83, scope: !3238)
!3761 = !DILocation(line: 1676, column: 6, scope: !3238)
!3762 = distinct !{!3762, !3745, !3763, !1603, !1604}
!3763 = !DILocation(line: 1682, column: 6, scope: !3239)
!3764 = !DILocation(line: 1687, column: 13, scope: !3244)
!3765 = !DILocation(line: 1687, column: 13, scope: !3241)
!3766 = !DILocation(line: 1688, column: 43, scope: !3243)
!3767 = !DILocation(line: 0, scope: !3243)
!3768 = !DILocation(line: 1690, column: 39, scope: !3243)
!3769 = !DILocation(line: 1690, column: 30, scope: !3243)
!3770 = !DILocation(line: 1689, column: 13, scope: !3243)
!3771 = !DILocation(line: 1691, column: 9, scope: !3243)
!3772 = !DILocation(line: 1692, column: 59, scope: !3241)
!3773 = !DILocation(line: 1692, column: 2, scope: !3241)
!3774 = !DILocation(line: 1693, column: 13, scope: !3241)
!3775 = !DILocation(line: 0, scope: !3241)
!3776 = !DILocation(line: 1694, column: 6, scope: !3248)
!3777 = !DILocation(line: 1694, column: 18, scope: !3248)
!3778 = !DILocation(line: 1696, column: 6, scope: !3247)
!3779 = !DILocation(line: 1696, column: 10, scope: !3247)
!3780 = !DILocation(line: 0, scope: !3247)
!3781 = !DILocation(line: 1703, column: 6, scope: !3247)
!3782 = !DILocation(line: 1704, column: 6, scope: !3247)
!3783 = !DILocation(line: 1705, column: 6, scope: !3261)
!3784 = !DILocation(line: 1716, column: 6, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3247, file: !1392, line: 1716, column: 6)
!3786 = !DILocation(line: 1716, column: 20, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3785, file: !1392, line: 1716, column: 6)
!3788 = !DILocation(line: 0, scope: !3259)
!3789 = !DILocation(line: 1708, column: 26, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3259, file: !1392, line: 1708, column: 17)
!3791 = !DILocation(line: 1708, column: 22, scope: !3790)
!3792 = !DILocation(line: 0, scope: !3790)
!3793 = !DILocation(line: 1708, column: 17, scope: !3790)
!3794 = !DILocation(line: 1709, column: 12, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3790, file: !1392, line: 1708, column: 17)
!3796 = distinct !{!3796, !3793, !3797, !1603, !1604}
!3797 = !DILocation(line: 1709, column: 12, scope: !3790)
!3798 = !DILocation(line: 1710, column: 7, scope: !3259)
!3799 = !DILocation(line: 1712, column: 10, scope: !3259)
!3800 = !DILocation(line: 1712, column: 21, scope: !3259)
!3801 = !DILocation(line: 1713, column: 14, scope: !3259)
!3802 = !DILocation(line: 1705, column: 43, scope: !3260)
!3803 = !DILocation(line: 1705, column: 28, scope: !3260)
!3804 = distinct !{!3804, !3783, !3805, !1603, !1604}
!3805 = !DILocation(line: 1715, column: 6, scope: !3261)
!3806 = !DILocation(line: 1717, column: 7, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !1392, line: 1717, column: 7)
!3808 = distinct !DILexicalBlock(scope: !3787, file: !1392, line: 1716, column: 33)
!3809 = !DILocation(line: 1717, column: 7, scope: !3808)
!3810 = !DILocation(line: 1719, column: 10, scope: !3811)
!3811 = distinct !DILexicalBlock(scope: !3807, file: !1392, line: 1717, column: 16)
!3812 = !DILocation(line: 1719, column: 7, scope: !3811)
!3813 = !DILocation(line: 1718, column: 7, scope: !3811)
!3814 = !DILocation(line: 1721, column: 13, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3811, file: !1392, line: 1721, column: 11)
!3816 = !DILocation(line: 1721, column: 11, scope: !3811)
!3817 = !DILocation(line: 1722, column: 4, scope: !3815)
!3818 = !DILocation(line: 1716, column: 29, scope: !3787)
!3819 = distinct !{!3819, !3784, !3820, !1603, !1604}
!3820 = !DILocation(line: 1724, column: 13, scope: !3785)
!3821 = !DILocation(line: 1725, column: 6, scope: !3247)
!3822 = !DILocation(line: 1737, column: 22, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !1392, line: 1737, column: 6)
!3824 = distinct !DILexicalBlock(scope: !3247, file: !1392, line: 1737, column: 6)
!3825 = !DILocation(line: 1737, column: 6, scope: !3824)
!3826 = !DILocation(line: 1740, column: 6, scope: !3247)
!3827 = !DILocation(line: 1738, column: 10, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3823, file: !1392, line: 1737, column: 32)
!3829 = !DILocation(line: 1738, column: 18, scope: !3828)
!3830 = !DILocation(line: 1738, column: 22, scope: !3828)
!3831 = !DILocation(line: 1738, column: 7, scope: !3828)
!3832 = !DILocation(line: 1737, column: 28, scope: !3823)
!3833 = distinct !{!3833, !3825, !3834, !1603, !1604}
!3834 = !DILocation(line: 1739, column: 13, scope: !3824)
!3835 = !DILocation(line: 1740, column: 26, scope: !3247)
!3836 = !DILocation(line: 1741, column: 15, scope: !3247)
!3837 = distinct !{!3837, !3826, !3838, !1603, !1604}
!3838 = !DILocation(line: 1741, column: 18, scope: !3247)
!3839 = !DILocation(line: 1742, column: 16, scope: !3247)
!3840 = !DILocation(line: 1743, column: 35, scope: !3247)
!3841 = !DILocation(line: 1743, column: 25, scope: !3247)
!3842 = !DILocation(line: 1743, column: 39, scope: !3247)
!3843 = !DILocation(line: 1743, column: 38, scope: !3247)
!3844 = !DILocation(line: 1743, column: 14, scope: !3247)
!3845 = !DILocation(line: 1744, column: 6, scope: !3247)
!3846 = !DILocation(line: 1745, column: 81, scope: !3247)
!3847 = !DILocation(line: 1745, column: 85, scope: !3247)
!3848 = !DILocation(line: 1745, column: 6, scope: !3247)
!3849 = !DILocation(line: 1746, column: 2, scope: !3248)
!3850 = !DILocation(line: 1746, column: 2, scope: !3247)
!3851 = !DILocation(line: 1747, column: 2, scope: !3241)
!3852 = !DILocation(line: 1748, column: 60, scope: !3241)
!3853 = !DILocation(line: 1748, column: 2, scope: !3241)
!3854 = !DILocation(line: 0, scope: !3264)
!3855 = !DILocation(line: 1751, column: 25, scope: !3264)
!3856 = !DILocation(line: 1753, column: 17, scope: !3268)
!3857 = !DILocation(line: 1753, column: 17, scope: !3264)
!3858 = !DILocation(line: 1754, column: 48, scope: !3267)
!3859 = !DILocation(line: 1754, column: 46, scope: !3267)
!3860 = !DILocation(line: 0, scope: !3267)
!3861 = !DILocation(line: 1755, column: 30, scope: !3267)
!3862 = !DILocation(line: 1755, column: 34, scope: !3267)
!3863 = !DILocation(line: 1757, column: 17, scope: !3267)
!3864 = !DILocation(line: 1755, column: 23, scope: !3267)
!3865 = !DILocation(line: 1758, column: 26, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3867, file: !1392, line: 1758, column: 25)
!3867 = distinct !DILexicalBlock(scope: !3267, file: !1392, line: 1757, column: 20)
!3868 = !DILocation(line: 1758, column: 25, scope: !3867)
!3869 = !DILocation(line: 1760, column: 26, scope: !3267)
!3870 = !DILocation(line: 1760, column: 33, scope: !3267)
!3871 = !DILocation(line: 1760, column: 17, scope: !3867)
!3872 = distinct !{!3872, !3863, !3873, !1603, !1604}
!3873 = !DILocation(line: 1760, column: 40, scope: !3267)
!3874 = !DILocation(line: 1763, column: 17, scope: !3274)
!3875 = !DILocation(line: 1763, column: 17, scope: !3264)
!3876 = !DILocation(line: 1764, column: 47, scope: !3273)
!3877 = !DILocation(line: 0, scope: !3273)
!3878 = !DILocation(line: 1767, column: 54, scope: !3273)
!3879 = !DILocation(line: 1767, column: 45, scope: !3273)
!3880 = !DILocation(line: 1765, column: 17, scope: !3273)
!3881 = !DILocation(line: 1768, column: 13, scope: !3273)
!3882 = !DILocation(line: 1769, column: 17, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3274, file: !1392, line: 1768, column: 20)
!3884 = !DILocation(line: 1773, column: 63, scope: !3241)
!3885 = !DILocation(line: 1773, column: 2, scope: !3241)
!3886 = !DILocation(line: 1774, column: 13, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3241, file: !1392, line: 1774, column: 13)
!3888 = !DILocation(line: 1774, column: 13, scope: !3241)
!3889 = !DILocation(line: 1775, column: 69, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3887, file: !1392, line: 1774, column: 24)
!3891 = !DILocation(line: 1775, column: 65, scope: !3890)
!3892 = !DILocation(line: 1775, column: 6, scope: !3890)
!3893 = !DILocation(line: 1776, column: 67, scope: !3890)
!3894 = !DILocation(line: 1776, column: 6, scope: !3890)
!3895 = !DILocation(line: 1778, column: 66, scope: !3890)
!3896 = !DILocation(line: 1778, column: 62, scope: !3890)
!3897 = !DILocation(line: 1778, column: 6, scope: !3890)
!3898 = !DILocation(line: 1779, column: 17, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3890, file: !1392, line: 1779, column: 17)
!3900 = !DILocation(line: 1779, column: 35, scope: !3899)
!3901 = !DILocation(line: 1779, column: 32, scope: !3899)
!3902 = !DILocation(line: 1779, column: 54, scope: !3899)
!3903 = !DILocation(line: 1779, column: 57, scope: !3899)
!3904 = !DILocation(line: 1779, column: 73, scope: !3899)
!3905 = !DILocation(line: 1779, column: 17, scope: !3890)
!3906 = !DILocation(line: 1780, column: 60, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3899, file: !1392, line: 1779, column: 81)
!3908 = !DILocation(line: 1780, column: 17, scope: !3907)
!3909 = !DILocation(line: 1781, column: 13, scope: !3907)
!3910 = !DILocation(line: 1783, column: 13, scope: !3890)
!3911 = !DILocation(line: 1784, column: 9, scope: !3890)
!3912 = !DILocation(line: 1786, column: 25, scope: !3276)
!3913 = !DILocation(line: 0, scope: !3276)
!3914 = !DILocation(line: 1787, column: 10, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3276, file: !1392, line: 1787, column: 10)
!3916 = !DILocation(line: 1787, column: 13, scope: !3915)
!3917 = !DILocation(line: 1787, column: 20, scope: !3915)
!3918 = !DILocation(line: 1787, column: 16, scope: !3915)
!3919 = !DILocation(line: 1787, column: 10, scope: !3276)
!3920 = !DILocation(line: 1788, column: 65, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3915, file: !1392, line: 1787, column: 28)
!3922 = !DILocation(line: 1788, column: 3, scope: !3921)
!3923 = !DILocation(line: 1789, column: 6, scope: !3921)
!3924 = !DILocation(line: 1792, column: 34, scope: !3279)
!3925 = !DILocation(line: 0, scope: !3279)
!3926 = !DILocation(line: 1794, column: 23, scope: !3281)
!3927 = !DILocation(line: 0, scope: !3281)
!3928 = !DILocation(line: 1796, column: 40, scope: !3281)
!3929 = !DILocation(line: 1795, column: 6, scope: !3281)
!3930 = !DILocation(line: 1800, column: 6, scope: !3285)
!3931 = !DILocation(line: 1800, column: 6, scope: !3241)
!3932 = !DILocation(line: 1802, column: 6, scope: !3284)
!3933 = !DILocation(line: 1802, column: 5, scope: !3284)
!3934 = !DILocation(line: 0, scope: !3284)
!3935 = !DILocation(line: 1803, column: 37, scope: !3284)
!3936 = !DILocation(line: 1803, column: 48, scope: !3284)
!3937 = !DILocation(line: 1804, column: 21, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3284, file: !1392, line: 1804, column: 10)
!3939 = !DILocation(line: 1804, column: 10, scope: !3938)
!3940 = !DILocation(line: 1804, column: 10, scope: !3284)
!3941 = !DILocation(line: 1807, column: 4, scope: !3938)
!3942 = !DILocation(line: 1805, column: 3, scope: !3938)
!3943 = !DILocation(line: 1809, column: 10, scope: !3291)
!3944 = !DILocation(line: 1809, column: 32, scope: !3291)
!3945 = !DILocation(line: 1809, column: 46, scope: !3291)
!3946 = !DILocation(line: 1809, column: 49, scope: !3291)
!3947 = !DILocation(line: 1809, column: 10, scope: !3284)
!3948 = !DILocation(line: 0, scope: !3290)
!3949 = !DILocation(line: 1812, column: 26, scope: !3293)
!3950 = !DILocation(line: 0, scope: !3293)
!3951 = !DILocation(line: 1815, column: 26, scope: !3293)
!3952 = !DILocation(line: 1815, column: 48, scope: !3293)
!3953 = !DILocation(line: 1816, column: 7, scope: !3293)
!3954 = !DILocation(line: 1818, column: 7, scope: !3293)
!3955 = !DILocation(line: 1818, column: 4, scope: !3293)
!3956 = !DILocation(line: 1819, column: 19, scope: !3293)
!3957 = !DILocation(line: 1819, column: 7, scope: !3293)
!3958 = !DILocation(line: 1816, column: 4, scope: !3293)
!3959 = !DILocation(line: 1820, column: 8, scope: !3302)
!3960 = !DILocation(line: 1820, column: 8, scope: !3303)
!3961 = !DILocation(line: 1821, column: 24, scope: !3301)
!3962 = !DILocation(line: 0, scope: !3301)
!3963 = !DILocation(line: 1823, column: 31, scope: !3301)
!3964 = !DILocation(line: 1822, column: 8, scope: !3301)
!3965 = !DILocation(line: 1824, column: 4, scope: !3301)
!3966 = !DILocation(line: 1826, column: 8, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3302, file: !1392, line: 1824, column: 11)
!3968 = !DILocation(line: 1828, column: 4, scope: !3303)
!3969 = distinct !{!3969, !3957, !3970, !1603, !1604}
!3970 = !DILocation(line: 1829, column: 7, scope: !3293)
!3971 = !DILocation(line: 1831, column: 39, scope: !3293)
!3972 = !DILocation(line: 1831, column: 56, scope: !3293)
!3973 = !DILocation(line: 1830, column: 7, scope: !3293)
!3974 = !DILocation(line: 1833, column: 3, scope: !3293)
!3975 = !DILocation(line: 1835, column: 38, scope: !3305)
!3976 = !DILocation(line: 0, scope: !3305)
!3977 = !DILocation(line: 1836, column: 49, scope: !3305)
!3978 = !DILocation(line: 1839, column: 22, scope: !3305)
!3979 = !DILocation(line: 1837, column: 7, scope: !3305)
!3980 = !DILocation(line: 1843, column: 10, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3284, file: !1392, line: 1843, column: 10)
!3982 = !DILocation(line: 1843, column: 10, scope: !3284)
!3983 = !DILocation(line: 1845, column: 6, scope: !3984)
!3984 = distinct !DILexicalBlock(scope: !3981, file: !1392, line: 1843, column: 20)
!3985 = !DILocation(line: 1844, column: 3, scope: !3984)
!3986 = !DILocation(line: 1846, column: 3, scope: !3984)
!3987 = !DILocation(line: 1848, column: 6, scope: !3984)
!3988 = !DILocation(line: 1849, column: 10, scope: !3309)
!3989 = !DILocation(line: 1849, column: 10, scope: !3284)
!3990 = !DILocation(line: 1850, column: 15, scope: !3308)
!3991 = !DILocation(line: 0, scope: !3308)
!3992 = !DILocation(line: 1852, column: 6, scope: !3308)
!3993 = !DILocation(line: 1855, column: 6, scope: !3308)
!3994 = !DILocation(line: 1851, column: 3, scope: !3308)
!3995 = !DILocation(line: 1857, column: 16, scope: !3308)
!3996 = !DILocation(line: 1857, column: 6, scope: !3308)
!3997 = !DILocation(line: 1856, column: 3, scope: !3308)
!3998 = !DILocation(line: 1859, column: 16, scope: !3308)
!3999 = !DILocation(line: 1859, column: 6, scope: !3308)
!4000 = !DILocation(line: 1858, column: 3, scope: !3308)
!4001 = !DILocation(line: 1860, column: 13, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3308, file: !1392, line: 1860, column: 7)
!4003 = !DILocation(line: 1860, column: 7, scope: !4002)
!4004 = !DILocation(line: 1860, column: 7, scope: !3308)
!4005 = !DILocation(line: 1862, column: 6, scope: !4006)
!4006 = distinct !DILexicalBlock(scope: !4002, file: !1392, line: 1860, column: 29)
!4007 = !DILocation(line: 1861, column: 7, scope: !4006)
!4008 = !DILocation(line: 1863, column: 3, scope: !4006)
!4009 = !DILocation(line: 1865, column: 3, scope: !4006)
!4010 = !DILocation(line: 1866, column: 13, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3308, file: !1392, line: 1866, column: 7)
!4012 = !DILocation(line: 1866, column: 7, scope: !4011)
!4013 = !DILocation(line: 1866, column: 7, scope: !3308)
!4014 = !DILocation(line: 1868, column: 6, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4011, file: !1392, line: 1866, column: 33)
!4016 = !DILocation(line: 1867, column: 7, scope: !4015)
!4017 = !DILocation(line: 1869, column: 3, scope: !4015)
!4018 = !DILocation(line: 1871, column: 3, scope: !4015)
!4019 = !DILocation(line: 1872, column: 13, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !3308, file: !1392, line: 1872, column: 7)
!4021 = !DILocation(line: 1872, column: 7, scope: !4020)
!4022 = !DILocation(line: 1872, column: 7, scope: !3308)
!4023 = !DILocation(line: 1874, column: 6, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4020, file: !1392, line: 1872, column: 29)
!4025 = !DILocation(line: 1873, column: 7, scope: !4024)
!4026 = !DILocation(line: 1875, column: 3, scope: !4024)
!4027 = !DILocation(line: 1877, column: 3, scope: !4024)
!4028 = !DILocation(line: 1878, column: 13, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !3308, file: !1392, line: 1878, column: 7)
!4030 = !DILocation(line: 1878, column: 7, scope: !4029)
!4031 = !DILocation(line: 1878, column: 7, scope: !3308)
!4032 = !DILocation(line: 1880, column: 6, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4029, file: !1392, line: 1878, column: 18)
!4034 = !DILocation(line: 1879, column: 7, scope: !4033)
!4035 = !DILocation(line: 1881, column: 3, scope: !4033)
!4036 = !DILocation(line: 1883, column: 3, scope: !4033)
!4037 = !DILocation(line: 1886, column: 11, scope: !3312)
!4038 = !DILocation(line: 1886, column: 6, scope: !3241)
!4039 = !DILocation(line: 0, scope: !3311)
!4040 = !DILocation(line: 1891, column: 10, scope: !3318)
!4041 = !DILocation(line: 1891, column: 10, scope: !3311)
!4042 = !DILocation(line: 1892, column: 23, scope: !3317)
!4043 = !DILocation(line: 0, scope: !3317)
!4044 = !DILocation(line: 1893, column: 3, scope: !3325)
!4045 = !DILocation(line: 1894, column: 17, scope: !3322)
!4046 = !DILocation(line: 0, scope: !3322)
!4047 = !DILocation(line: 1894, column: 7, scope: !3322)
!4048 = !DILocation(line: 1899, column: 25, scope: !3320)
!4049 = !DILocation(line: 1901, column: 13, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !3320, file: !1392, line: 1901, column: 8)
!4051 = !DILocation(line: 1901, column: 16, scope: !4050)
!4052 = !DILocation(line: 1901, column: 8, scope: !3320)
!4053 = !DILocation(line: 1915, column: 21, scope: !3321)
!4054 = !DILocation(line: 1903, column: 11, scope: !3320)
!4055 = !DILocation(line: 0, scope: !3320)
!4056 = !DILocation(line: 1904, column: 12, scope: !3320)
!4057 = !DILocation(line: 1905, column: 12, scope: !3320)
!4058 = !DILocation(line: 1908, column: 74, scope: !3320)
!4059 = !DILocation(line: 1906, column: 10, scope: !3320)
!4060 = !DILocation(line: 1908, column: 25, scope: !3320)
!4061 = !DILocation(line: 1909, column: 29, scope: !4062)
!4062 = distinct !DILexicalBlock(scope: !3320, file: !1392, line: 1909, column: 29)
!4063 = !DILocation(line: 1909, column: 29, scope: !3320)
!4064 = !DILocation(line: 1910, column: 67, scope: !4062)
!4065 = !DILocation(line: 1910, column: 29, scope: !4062)
!4066 = !DILocation(line: 1911, column: 8, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !3320, file: !1392, line: 1911, column: 8)
!4068 = !DILocation(line: 1911, column: 24, scope: !4067)
!4069 = !DILocation(line: 1911, column: 8, scope: !3320)
!4070 = !DILocation(line: 1912, column: 8, scope: !4067)
!4071 = !DILocation(line: 1913, column: 67, scope: !3320)
!4072 = !DILocation(line: 1913, column: 25, scope: !3320)
!4073 = !DILocation(line: 1914, column: 25, scope: !3320)
!4074 = distinct !{!4074, !4047, !4075, !1603, !1604}
!4075 = !DILocation(line: 1915, column: 21, scope: !3322)
!4076 = !DILocation(line: 1893, column: 30, scope: !3324)
!4077 = !DILocation(line: 1893, column: 18, scope: !3324)
!4078 = !DILocation(line: 1893, column: 15, scope: !3324)
!4079 = distinct !{!4079, !4044, !4080, !1603, !1604}
!4080 = !DILocation(line: 1916, column: 3, scope: !3325)
!4081 = !DILocation(line: 1924, column: 6, scope: !3332)
!4082 = !DILocation(line: 1924, column: 6, scope: !3235)
!4083 = !DILocation(line: 1925, column: 18, scope: !3331)
!4084 = !DILocation(line: 0, scope: !3331)
!4085 = !DILocation(line: 1926, column: 8, scope: !3331)
!4086 = !DILocation(line: 1927, column: 32, scope: !3331)
!4087 = !DILocation(line: 1929, column: 9, scope: !3331)
!4088 = !DILocation(line: 1928, column: 6, scope: !3331)
!4089 = !DILocation(line: 1930, column: 2, scope: !3332)
!4090 = !DILocation(line: 1930, column: 2, scope: !3331)
!4091 = !DILocation(line: 1931, column: 6, scope: !3337)
!4092 = !DILocation(line: 1931, column: 6, scope: !3235)
!4093 = !DILocation(line: 1932, column: 20, scope: !3336)
!4094 = !DILocation(line: 0, scope: !3336)
!4095 = !DILocation(line: 1933, column: 34, scope: !3336)
!4096 = !DILocation(line: 1935, column: 9, scope: !3336)
!4097 = !DILocation(line: 1934, column: 6, scope: !3336)
!4098 = !DILocation(line: 1937, column: 2, scope: !3336)
!4099 = !DILocation(line: 1940, column: 2, scope: !3235)
!4100 = !DILocation(line: 1941, column: 7, scope: !3341)
!4101 = !DILocation(line: 1941, column: 6, scope: !3235)
!4102 = !DILocation(line: 1942, column: 10, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !1392, line: 1942, column: 10)
!4104 = distinct !DILexicalBlock(scope: !3341, file: !1392, line: 1941, column: 21)
!4105 = !DILocation(line: 1942, column: 10, scope: !4104)
!4106 = !DILocation(line: 1945, column: 6, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4103, file: !1392, line: 1942, column: 23)
!4108 = !DILocation(line: 1946, column: 10, scope: !4107)
!4109 = !DILocation(line: 1943, column: 3, scope: !4107)
!4110 = !DILocation(line: 1949, column: 9, scope: !4104)
!4111 = !DILocation(line: 1947, column: 6, scope: !4107)
!4112 = !DILocation(line: 1948, column: 6, scope: !4104)
!4113 = !DILocation(line: 1950, column: 10, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4104, file: !1392, line: 1950, column: 10)
!4115 = !DILocation(line: 1950, column: 21, scope: !4114)
!4116 = !DILocation(line: 1951, column: 3, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4114, file: !1392, line: 1950, column: 33)
!4118 = !DILocation(line: 1952, column: 6, scope: !4117)
!4119 = !DILocation(line: 1954, column: 28, scope: !3340)
!4120 = !DILocation(line: 0, scope: !3340)
!4121 = !DILocation(line: 1956, column: 66, scope: !3340)
!4122 = !DILocation(line: 1956, column: 6, scope: !3340)
!4123 = !DILocation(line: 1958, column: 10, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !3340, file: !1392, line: 1958, column: 10)
!4125 = !DILocation(line: 0, scope: !4124)
!4126 = !DILocation(line: 1958, column: 10, scope: !3340)
!4127 = !DILocation(line: 1961, column: 6, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4124, file: !1392, line: 1958, column: 20)
!4129 = !DILocation(line: 1959, column: 3, scope: !4128)
!4130 = !DILocation(line: 1962, column: 3, scope: !4128)
!4131 = !DILocation(line: 1964, column: 6, scope: !4128)
!4132 = !DILocation(line: 1966, column: 24, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4124, file: !1392, line: 1964, column: 13)
!4134 = !DILocation(line: 1966, column: 6, scope: !4133)
!4135 = !DILocation(line: 1965, column: 3, scope: !4133)
!4136 = !DILocation(line: 1969, column: 6, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1969, column: 6)
!4138 = !DILocation(line: 0, scope: !4137)
!4139 = !DILocation(line: 1969, column: 6, scope: !3235)
!4140 = !DILocalVariable(name: "sv", arg: 1, scope: !4141, file: !728, line: 231, type: !720)
!4141 = distinct !DISubprogram(name: "CvNAME_HEK", scope: !728, file: !728, line: 231, type: !4142, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4144)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!588, !720}
!4144 = !{!4140}
!4145 = !DILocation(line: 0, scope: !4141, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 1971, column: 8, scope: !4137)
!4147 = !DILocation(line: 1971, column: 8, scope: !4137)
!4148 = !DILocation(line: 1970, column: 6, scope: !4137)
!4149 = !DILocation(line: 0, scope: !1897, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 1972, column: 7, scope: !4137)
!4151 = !DILocation(line: 1972, column: 7, scope: !4137)
!4152 = !DILocation(line: 1973, column: 59, scope: !3235)
!4153 = !DILocation(line: 1973, column: 2, scope: !3235)
!4154 = !DILocation(line: 1974, column: 65, scope: !3235)
!4155 = !DILocalVariable(name: "sv", arg: 1, scope: !4156, file: !1898, line: 37, type: !3344)
!4156 = distinct !DISubprogram(name: "S_CvDEPTHp", scope: !1898, file: !1898, line: 37, type: !4157, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4160)
!4157 = !DISubroutineType(types: !4158)
!4158 = !{!4159, !3344}
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!4160 = !{!4155}
!4161 = !DILocation(line: 0, scope: !4156, inlinedAt: !4162)
!4162 = distinct !DILocation(line: 1974, column: 65, scope: !3235)
!4163 = !DILocation(line: 40, column: 34, scope: !4156, inlinedAt: !4162)
!4164 = !DILocation(line: 1974, column: 61, scope: !3235)
!4165 = !DILocation(line: 1974, column: 2, scope: !3235)
!4166 = !DILocation(line: 1975, column: 67, scope: !3235)
!4167 = !DILocation(line: 1975, column: 63, scope: !3235)
!4168 = !DILocation(line: 1975, column: 2, scope: !3235)
!4169 = !DILocation(line: 1976, column: 71, scope: !3235)
!4170 = !DILocation(line: 1976, column: 67, scope: !3235)
!4171 = !DILocation(line: 1976, column: 2, scope: !3235)
!4172 = !DILocation(line: 1977, column: 7, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 1977, column: 6)
!4174 = !DILocation(line: 0, scope: !4173)
!4175 = !DILocation(line: 1977, column: 6, scope: !3235)
!4176 = !DILocation(line: 1978, column: 69, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4173, file: !1392, line: 1977, column: 21)
!4178 = !DILocation(line: 1978, column: 6, scope: !4177)
!4179 = !DILocation(line: 1979, column: 15, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4177, file: !1392, line: 1979, column: 10)
!4181 = !DILocation(line: 1979, column: 10, scope: !4177)
!4182 = !DILocation(line: 1980, column: 3, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4180, file: !1392, line: 1979, column: 26)
!4184 = !DILocation(line: 1981, column: 6, scope: !4183)
!4185 = !DILocation(line: 1984, column: 6, scope: !4173)
!4186 = !DILocation(line: 1986, column: 33, scope: !3343)
!4187 = !DILocation(line: 0, scope: !3343)
!4188 = !DILocation(line: 1988, column: 4, scope: !3343)
!4189 = !DILocation(line: 1989, column: 6, scope: !3343)
!4190 = !DILocation(line: 1989, column: 5, scope: !3343)
!4191 = !DILocation(line: 1990, column: 7, scope: !3343)
!4192 = !DILocation(line: 1991, column: 19, scope: !3343)
!4193 = !DILocation(line: 1991, column: 16, scope: !3343)
!4194 = !DILocation(line: 1991, column: 7, scope: !3343)
!4195 = !DILocation(line: 1992, column: 7, scope: !3343)
!4196 = !DILocation(line: 0, scope: !1897, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 1993, column: 7, scope: !3343)
!4198 = !DILocation(line: 31, column: 12, scope: !1897, inlinedAt: !4197)
!4199 = !DILocation(line: 32, column: 4, scope: !1897, inlinedAt: !4197)
!4200 = !DILocation(line: 33, column: 38, scope: !1897, inlinedAt: !4197)
!4201 = !DILocation(line: 33, column: 47, scope: !1897, inlinedAt: !4197)
!4202 = !DILocation(line: 1993, column: 7, scope: !3343)
!4203 = !DILocation(line: 1994, column: 9, scope: !3343)
!4204 = !DILocation(line: 0, scope: !1897, inlinedAt: !4205)
!4205 = distinct !DILocation(line: 1994, column: 9, scope: !3343)
!4206 = !DILocation(line: 31, column: 12, scope: !1897, inlinedAt: !4205)
!4207 = !DILocation(line: 32, column: 4, scope: !1897, inlinedAt: !4205)
!4208 = !DILocation(line: 31, column: 12, scope: !1897, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 1994, column: 9, scope: !3343)
!4210 = !DILocation(line: 33, column: 38, scope: !1897, inlinedAt: !4205)
!4211 = !DILocation(line: 33, column: 47, scope: !1897, inlinedAt: !4205)
!4212 = !DILocation(line: 0, scope: !1897, inlinedAt: !4209)
!4213 = !DILocation(line: 32, column: 4, scope: !1897, inlinedAt: !4209)
!4214 = !DILocation(line: 31, column: 12, scope: !1897, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 1994, column: 9, scope: !3343)
!4216 = !DILocation(line: 33, column: 38, scope: !1897, inlinedAt: !4209)
!4217 = !DILocation(line: 33, column: 47, scope: !1897, inlinedAt: !4209)
!4218 = !DILocation(line: 0, scope: !1897, inlinedAt: !4215)
!4219 = !DILocation(line: 32, column: 4, scope: !1897, inlinedAt: !4215)
!4220 = !DILocation(line: 31, column: 12, scope: !1897, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 1994, column: 9, scope: !3343)
!4222 = !DILocation(line: 33, column: 38, scope: !1897, inlinedAt: !4215)
!4223 = !DILocation(line: 33, column: 47, scope: !1897, inlinedAt: !4215)
!4224 = !DILocation(line: 0, scope: !1897, inlinedAt: !4221)
!4225 = !DILocation(line: 32, column: 4, scope: !1897, inlinedAt: !4221)
!4226 = !DILocation(line: 31, column: 12, scope: !1897, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 1994, column: 9, scope: !3343)
!4228 = !DILocation(line: 33, column: 38, scope: !1897, inlinedAt: !4221)
!4229 = !DILocation(line: 33, column: 47, scope: !1897, inlinedAt: !4221)
!4230 = !DILocation(line: 0, scope: !1897, inlinedAt: !4227)
!4231 = !DILocation(line: 32, column: 4, scope: !1897, inlinedAt: !4227)
!4232 = !DILocation(line: 33, column: 38, scope: !1897, inlinedAt: !4227)
!4233 = !DILocation(line: 33, column: 47, scope: !1897, inlinedAt: !4227)
!4234 = !DILocation(line: 1987, column: 6, scope: !3343)
!4235 = !DILocation(line: 2001, column: 6, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2001, column: 6)
!4237 = !DILocation(line: 2002, column: 3, scope: !4236)
!4238 = !DILocation(line: 2002, column: 26, scope: !4236)
!4239 = !DILocation(line: 2002, column: 38, scope: !4236)
!4240 = !DILocation(line: 2003, column: 6, scope: !4236)
!4241 = !DILocation(line: 2008, column: 11, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2008, column: 6)
!4243 = !DILocation(line: 2008, column: 6, scope: !3235)
!4244 = !DILocation(line: 2009, column: 59, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4242, file: !1392, line: 2008, column: 24)
!4246 = !DILocation(line: 2009, column: 6, scope: !4245)
!4247 = !DILocation(line: 2010, column: 71, scope: !4245)
!4248 = !DILocation(line: 2010, column: 6, scope: !4245)
!4249 = !DILocation(line: 2011, column: 71, scope: !4245)
!4250 = !DILocation(line: 2011, column: 6, scope: !4245)
!4251 = !DILocation(line: 2012, column: 66, scope: !4245)
!4252 = !DILocation(line: 2012, column: 6, scope: !4245)
!4253 = !DILocation(line: 2013, column: 69, scope: !4245)
!4254 = !DILocation(line: 2013, column: 65, scope: !4245)
!4255 = !DILocation(line: 2013, column: 6, scope: !4245)
!4256 = !DILocation(line: 2014, column: 10, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4245, file: !1392, line: 2014, column: 10)
!4258 = !DILocation(line: 2014, column: 10, scope: !4245)
!4259 = !DILocation(line: 2015, column: 3, scope: !4257)
!4260 = !DILocation(line: 2018, column: 6, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2018, column: 6)
!4262 = !DILocation(line: 2019, column: 7, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2019, column: 6)
!4264 = !DILocation(line: 2022, column: 23, scope: !3346)
!4265 = !DILocation(line: 0, scope: !3346)
!4266 = !DILocation(line: 2024, column: 21, scope: !3346)
!4267 = !DILocation(line: 2023, column: 11, scope: !3346)
!4268 = !DILocation(line: 2028, column: 67, scope: !3235)
!4269 = !DILocation(line: 2028, column: 63, scope: !3235)
!4270 = !DILocation(line: 2028, column: 2, scope: !3235)
!4271 = !DILocation(line: 2029, column: 2, scope: !3235)
!4272 = !DILocation(line: 2030, column: 67, scope: !3235)
!4273 = !DILocation(line: 2030, column: 2, scope: !3235)
!4274 = !DILocation(line: 2031, column: 60, scope: !3235)
!4275 = !DILocation(line: 2031, column: 2, scope: !3235)
!4276 = !DILocation(line: 2032, column: 7, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2032, column: 6)
!4278 = !DILocation(line: 2032, column: 6, scope: !3235)
!4279 = !DILocation(line: 2034, column: 62, scope: !3235)
!4280 = !DILocation(line: 2034, column: 2, scope: !3235)
!4281 = !DILocation(line: 2035, column: 68, scope: !3235)
!4282 = !DILocation(line: 2035, column: 64, scope: !3235)
!4283 = !DILocation(line: 2035, column: 2, scope: !3235)
!4284 = !DILocation(line: 2036, column: 62, scope: !3235)
!4285 = !DILocation(line: 2036, column: 2, scope: !3235)
!4286 = !DILocation(line: 2037, column: 66, scope: !3235)
!4287 = !DILocation(line: 2037, column: 2, scope: !3235)
!4288 = !DILocation(line: 2038, column: 62, scope: !3235)
!4289 = !DILocation(line: 2038, column: 2, scope: !3235)
!4290 = !DILocation(line: 2039, column: 62, scope: !3235)
!4291 = !DILocation(line: 2039, column: 2, scope: !3235)
!4292 = !DILocation(line: 2040, column: 62, scope: !3235)
!4293 = !DILocation(line: 2040, column: 2, scope: !3235)
!4294 = !DILocation(line: 2041, column: 69, scope: !3235)
!4295 = !DILocation(line: 2041, column: 65, scope: !3235)
!4296 = !DILocation(line: 2041, column: 2, scope: !3235)
!4297 = !DILocation(line: 2044, column: 15, scope: !3235)
!4298 = !DILocation(line: 2044, column: 11, scope: !3235)
!4299 = !DILocation(line: 2045, column: 11, scope: !3235)
!4300 = !DILocation(line: 2042, column: 2, scope: !3235)
!4301 = !DILocation(line: 2046, column: 66, scope: !3235)
!4302 = !DILocation(line: 2046, column: 62, scope: !3235)
!4303 = !DILocation(line: 2046, column: 2, scope: !3235)
!4304 = !DILocation(line: 2047, column: 61, scope: !3235)
!4305 = !DILocation(line: 2047, column: 2, scope: !3235)
!4306 = !DILocation(line: 2048, column: 2, scope: !3235)
!4307 = !DILocation(line: 2049, column: 2, scope: !3235)
!4308 = !DILocation(line: 2051, column: 61, scope: !3235)
!4309 = !DILocation(line: 2051, column: 2, scope: !3235)
!4310 = !DILocation(line: 2052, column: 61, scope: !3235)
!4311 = !DILocation(line: 2052, column: 2, scope: !3235)
!4312 = !DILocation(line: 2053, column: 62, scope: !3235)
!4313 = !DILocation(line: 2053, column: 2, scope: !3235)
!4314 = !DILocation(line: 2054, column: 65, scope: !3235)
!4315 = !DILocation(line: 2054, column: 2, scope: !3235)
!4316 = !DILocation(line: 2055, column: 64, scope: !3235)
!4317 = !DILocation(line: 2055, column: 2, scope: !3235)
!4318 = !DILocation(line: 2056, column: 68, scope: !3235)
!4319 = !DILocation(line: 2056, column: 2, scope: !3235)
!4320 = !DILocation(line: 2057, column: 70, scope: !3235)
!4321 = !DILocation(line: 2057, column: 2, scope: !3235)
!4322 = !DILocation(line: 2058, column: 13, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2058, column: 13)
!4324 = !DILocation(line: 2058, column: 13, scope: !3235)
!4325 = !DILocation(line: 2059, column: 13, scope: !4323)
!4326 = !DILocation(line: 2060, column: 7, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2060, column: 6)
!4328 = !DILocation(line: 2060, column: 20, scope: !4327)
!4329 = !DILocation(line: 2060, column: 23, scope: !4327)
!4330 = !DILocation(line: 2060, column: 44, scope: !4327)
!4331 = !DILocation(line: 2060, column: 6, scope: !3235)
!4332 = !DILocation(line: 2061, column: 6, scope: !4327)
!4333 = !DILocation(line: 2064, column: 9, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4327, file: !1392, line: 2062, column: 7)
!4335 = !DILocation(line: 2063, column: 6, scope: !4334)
!4336 = !DILocation(line: 2065, column: 6, scope: !4334)
!4337 = !DILocation(line: 2070, column: 13, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2070, column: 13)
!4339 = !DILocation(line: 2070, column: 13, scope: !3235)
!4340 = !DILocation(line: 2071, column: 13, scope: !4338)
!4341 = !DILocation(line: 2072, column: 7, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2072, column: 6)
!4343 = !DILocation(line: 2072, column: 20, scope: !4342)
!4344 = !DILocation(line: 2072, column: 23, scope: !4342)
!4345 = !DILocation(line: 2072, column: 44, scope: !4342)
!4346 = !DILocation(line: 2072, column: 6, scope: !3235)
!4347 = !DILocation(line: 2073, column: 6, scope: !4342)
!4348 = !DILocation(line: 2076, column: 9, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4342, file: !1392, line: 2074, column: 7)
!4350 = !DILocation(line: 2075, column: 6, scope: !4349)
!4351 = !DILocation(line: 2077, column: 6, scope: !4349)
!4352 = !DILocation(line: 2080, column: 13, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2080, column: 13)
!4354 = !DILocation(line: 2080, column: 13, scope: !3235)
!4355 = !DILocation(line: 2081, column: 13, scope: !4353)
!4356 = !DILocation(line: 2082, column: 7, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2082, column: 6)
!4358 = !DILocation(line: 2082, column: 23, scope: !4357)
!4359 = !DILocation(line: 2082, column: 26, scope: !4357)
!4360 = !DILocation(line: 2082, column: 50, scope: !4357)
!4361 = !DILocation(line: 2082, column: 6, scope: !3235)
!4362 = !DILocation(line: 2083, column: 6, scope: !4357)
!4363 = !DILocation(line: 2086, column: 9, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4357, file: !1392, line: 2084, column: 7)
!4365 = !DILocation(line: 2085, column: 6, scope: !4364)
!4366 = !DILocation(line: 2087, column: 6, scope: !4364)
!4367 = !DILocation(line: 2090, column: 6, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !3235, file: !1392, line: 2090, column: 6)
!4369 = !DILocation(line: 0, scope: !4368)
!4370 = !DILocation(line: 2094, column: 67, scope: !3235)
!4371 = !DILocation(line: 2094, column: 63, scope: !3235)
!4372 = !DILocation(line: 2094, column: 2, scope: !3235)
!4373 = !DILocation(line: 2095, column: 2, scope: !3235)
!4374 = !DILocation(line: 2097, column: 7, scope: !3235)
!4375 = !DILocation(line: 2099, column: 32, scope: !3348)
!4376 = !DILocation(line: 0, scope: !3348)
!4377 = !DILocation(line: 2109, column: 13, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !3348, file: !1392, line: 2109, column: 13)
!4379 = !DILocation(line: 0, scope: !2420, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 2109, column: 13, scope: !4378)
!4381 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !4380)
!4382 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !4380)
!4383 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !4380)
!4384 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !4380)
!4385 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !4380)
!4386 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !4380)
!4387 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !4380)
!4388 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !4380)
!4389 = distinct !{!4389, !4381, !4390, !1603, !1604}
!4390 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !4380)
!4391 = !DILocation(line: 2109, column: 13, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4378, file: !1392, line: 2109, column: 13)
!4393 = !DILocation(line: 2109, column: 13, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !1392, line: 2109, column: 13)
!4395 = distinct !DILexicalBlock(scope: !4392, file: !1392, line: 2109, column: 13)
!4396 = !DILocation(line: 2109, column: 13, scope: !4395)
!4397 = !DILocation(line: 2111, column: 41, scope: !3348)
!4398 = !DILocation(line: 2111, column: 33, scope: !3348)
!4399 = !DILocation(line: 2111, column: 53, scope: !3348)
!4400 = !DILocation(line: 2110, column: 13, scope: !3348)
!4401 = !DILocation(line: 2113, column: 13, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !3348, file: !1392, line: 2113, column: 13)
!4403 = !DILocation(line: 0, scope: !2420, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 2113, column: 13, scope: !4402)
!4405 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !4404)
!4406 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !4404)
!4407 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !4404)
!4408 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !4404)
!4409 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !4404)
!4410 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !4404)
!4411 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !4404)
!4412 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !4404)
!4413 = distinct !{!4413, !4405, !4414, !1603, !1604}
!4414 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !4404)
!4415 = !DILocation(line: 2113, column: 13, scope: !4416)
!4416 = distinct !DILexicalBlock(scope: !4402, file: !1392, line: 2113, column: 13)
!4417 = !DILocation(line: 2113, column: 13, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !1392, line: 2113, column: 13)
!4419 = distinct !DILexicalBlock(scope: !4416, file: !1392, line: 2113, column: 13)
!4420 = !DILocation(line: 2113, column: 13, scope: !4419)
!4421 = !DILocation(line: 2115, column: 41, scope: !3348)
!4422 = !DILocation(line: 2115, column: 33, scope: !3348)
!4423 = !DILocation(line: 2115, column: 52, scope: !3348)
!4424 = !DILocation(line: 2114, column: 6, scope: !3348)
!4425 = !DILocation(line: 2118, column: 33, scope: !3348)
!4426 = !DILocation(line: 2118, column: 63, scope: !3348)
!4427 = !DILocation(line: 2118, column: 52, scope: !3348)
!4428 = !DILocation(line: 2117, column: 13, scope: !3348)
!4429 = !DILocation(line: 2119, column: 20, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !3348, file: !1392, line: 2119, column: 17)
!4431 = !DILocation(line: 2119, column: 27, scope: !4430)
!4432 = !DILocation(line: 2119, column: 17, scope: !3348)
!4433 = !DILocation(line: 2120, column: 17, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4435, file: !1392, line: 2120, column: 17)
!4435 = distinct !DILexicalBlock(scope: !4430, file: !1392, line: 2119, column: 51)
!4436 = !DILocation(line: 0, scope: !2420, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 2120, column: 17, scope: !4434)
!4438 = !DILocation(line: 80, column: 5, scope: !2420, inlinedAt: !4437)
!4439 = !DILocation(line: 81, column: 21, scope: !2433, inlinedAt: !4437)
!4440 = !DILocation(line: 81, column: 12, scope: !2433, inlinedAt: !4437)
!4441 = !DILocation(line: 81, column: 6, scope: !2434, inlinedAt: !4437)
!4442 = !DILocation(line: 82, column: 6, scope: !2433, inlinedAt: !4437)
!4443 = !DILocation(line: 83, column: 14, scope: !2420, inlinedAt: !4437)
!4444 = !DILocation(line: 83, column: 22, scope: !2420, inlinedAt: !4437)
!4445 = !DILocation(line: 83, column: 5, scope: !2434, inlinedAt: !4437)
!4446 = distinct !{!4446, !4438, !4447, !1603, !1604}
!4447 = !DILocation(line: 83, column: 27, scope: !2420, inlinedAt: !4437)
!4448 = !DILocation(line: 2120, column: 17, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4434, file: !1392, line: 2120, column: 17)
!4450 = !DILocation(line: 2120, column: 17, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4452, file: !1392, line: 2120, column: 17)
!4452 = distinct !DILexicalBlock(scope: !4449, file: !1392, line: 2120, column: 17)
!4453 = !DILocation(line: 2120, column: 17, scope: !4452)
!4454 = !DILocation(line: 2122, column: 41, scope: !4435)
!4455 = !DILocation(line: 2122, column: 33, scope: !4435)
!4456 = !DILocation(line: 2122, column: 52, scope: !4435)
!4457 = !DILocation(line: 2121, column: 17, scope: !4435)
!4458 = !DILocation(line: 2123, column: 13, scope: !4435)
!4459 = !DILocation(line: 2125, column: 13, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4430, file: !1392, line: 2123, column: 20)
!4461 = !DILocation(line: 2125, column: 5, scope: !4460)
!4462 = !DILocation(line: 2124, column: 17, scope: !4460)
!4463 = !DILocation(line: 2129, column: 13, scope: !3348)
!4464 = !DILocation(line: 2129, column: 5, scope: !3348)
!4465 = !DILocation(line: 2128, column: 6, scope: !3348)
!4466 = !DILocation(line: 2131, column: 13, scope: !3348)
!4467 = !DILocation(line: 2131, column: 5, scope: !3348)
!4468 = !DILocation(line: 2130, column: 6, scope: !3348)
!4469 = !DILocation(line: 2133, column: 13, scope: !3348)
!4470 = !DILocation(line: 2133, column: 5, scope: !3348)
!4471 = !DILocation(line: 2132, column: 6, scope: !3348)
!4472 = !DILocation(line: 2135, column: 13, scope: !3348)
!4473 = !DILocation(line: 2134, column: 6, scope: !3348)
!4474 = !DILocation(line: 2137, column: 13, scope: !3348)
!4475 = !DILocation(line: 2136, column: 6, scope: !3348)
!4476 = !DILocation(line: 2139, column: 13, scope: !3348)
!4477 = !DILocation(line: 2138, column: 6, scope: !3348)
!4478 = !DILocation(line: 2141, column: 13, scope: !3348)
!4479 = !DILocation(line: 2141, column: 5, scope: !3348)
!4480 = !DILocation(line: 2140, column: 6, scope: !3348)
!4481 = !DILocation(line: 2143, column: 13, scope: !3348)
!4482 = !DILocation(line: 2142, column: 6, scope: !3348)
!4483 = !DILocation(line: 2145, column: 13, scope: !3348)
!4484 = !DILocation(line: 2144, column: 6, scope: !3348)
!4485 = !DILocation(line: 2147, column: 13, scope: !3348)
!4486 = !DILocation(line: 2146, column: 6, scope: !3348)
!4487 = !DILocation(line: 2148, column: 13, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !3348, file: !1392, line: 2148, column: 10)
!4489 = !DILocation(line: 2148, column: 10, scope: !4488)
!4490 = !DILocation(line: 2148, column: 10, scope: !3348)
!4491 = !DILocation(line: 2150, column: 8, scope: !4488)
!4492 = !DILocation(line: 2151, column: 8, scope: !4488)
!4493 = !DILocation(line: 2149, column: 3, scope: !4488)
!4494 = !DILocation(line: 2153, column: 3, scope: !4488)
!4495 = !DILocation(line: 2155, column: 5, scope: !3348)
!4496 = !DILocation(line: 2154, column: 6, scope: !3348)
!4497 = !DILocation(line: 2156, column: 15, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !3348, file: !1392, line: 2156, column: 10)
!4499 = !DILocation(line: 2156, column: 25, scope: !4498)
!4500 = !DILocation(line: 2156, column: 31, scope: !4498)
!4501 = !DILocation(line: 2156, column: 28, scope: !4498)
!4502 = !DILocation(line: 2156, column: 10, scope: !3348)
!4503 = !DILocation(line: 2157, column: 3, scope: !4498)
!4504 = !DILocation(line: 2160, column: 5, scope: !3348)
!4505 = !DILocation(line: 2159, column: 6, scope: !3348)
!4506 = !DILocation(line: 2162, column: 5, scope: !3348)
!4507 = !DILocation(line: 2161, column: 6, scope: !3348)
!4508 = !DILocation(line: 2164, column: 5, scope: !3348)
!4509 = !DILocation(line: 2163, column: 6, scope: !3348)
!4510 = !DILocation(line: 2166, column: 5, scope: !3348)
!4511 = !DILocation(line: 2165, column: 6, scope: !3348)
!4512 = !DILocation(line: 2168, column: 5, scope: !3348)
!4513 = !DILocation(line: 2167, column: 6, scope: !3348)
!4514 = !DILocation(line: 2171, column: 5, scope: !3348)
!4515 = !DILocation(line: 2170, column: 6, scope: !3348)
!4516 = !DILocation(line: 2174, column: 2, scope: !3235)
!4517 = !DILocation(line: 0, scope: !1953, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 2176, column: 5, scope: !3209)
!4519 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !4518)
!4520 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !4518)
!4521 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !4518)
!4522 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !4518)
!4523 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !4518)
!4524 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !4518)
!4525 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !4518)
!4526 = !DILocation(line: 2177, column: 1, scope: !3209)
!4527 = !DISubprogram(name: "PerlIO_puts", scope: !637, file: !637, line: 212, type: !4528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!513, !635, !887}
!4530 = distinct !DISubprogram(name: "Perl_magic_dump", scope: !1392, file: !1392, line: 1248, type: !4531, scopeLine: 1249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4533)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{null, !2981}
!4533 = !{!4534}
!4534 = !DILocalVariable(name: "mg", arg: 1, scope: !4530, file: !1392, line: 1248, type: !2981)
!4535 = !DILocation(line: 0, scope: !4530)
!4536 = !DILocation(line: 1250, column: 5, scope: !4530)
!4537 = !DILocation(line: 1251, column: 1, scope: !4530)
!4538 = distinct !DISubprogram(name: "Perl_do_hv_dump", scope: !1392, file: !1392, line: 1254, type: !4539, scopeLine: 1255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4541)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{null, !594, !635, !887, !483}
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547}
!4542 = !DILocalVariable(name: "level", arg: 1, scope: !4538, file: !1392, line: 1254, type: !594)
!4543 = !DILocalVariable(name: "file", arg: 2, scope: !4538, file: !1392, line: 1254, type: !635)
!4544 = !DILocalVariable(name: "name", arg: 3, scope: !4538, file: !1392, line: 1254, type: !887)
!4545 = !DILocalVariable(name: "sv", arg: 4, scope: !4538, file: !1392, line: 1254, type: !483)
!4546 = !DILocalVariable(name: "hvname", scope: !4538, file: !1392, line: 1256, type: !887)
!4547 = !DILocalVariable(name: "tmpsv", scope: !4548, file: !1392, line: 1267, type: !876)
!4548 = distinct !DILexicalBlock(scope: !4549, file: !1392, line: 1262, column: 5)
!4549 = distinct !DILexicalBlock(scope: !4538, file: !1392, line: 1261, column: 9)
!4550 = !DILocation(line: 0, scope: !4538)
!4551 = !DILocation(line: 1260, column: 63, scope: !4538)
!4552 = !DILocation(line: 1260, column: 5, scope: !4538)
!4553 = !DILocation(line: 1261, column: 9, scope: !4549)
!4554 = !DILocation(line: 1261, column: 12, scope: !4549)
!4555 = !DILocation(line: 1261, column: 25, scope: !4549)
!4556 = !DILocation(line: 1267, column: 28, scope: !4548)
!4557 = !DILocation(line: 0, scope: !4548)
!4558 = !DILocation(line: 1269, column: 31, scope: !4548)
!4559 = !DILocation(line: 1268, column: 9, scope: !4548)
!4560 = !DILocation(line: 1271, column: 5, scope: !4548)
!4561 = !DILocation(line: 1273, column: 2, scope: !4549)
!4562 = !DILocation(line: 1274, column: 1, scope: !4538)
!4563 = distinct !DISubprogram(name: "Perl_do_gv_dump", scope: !1392, file: !1392, line: 1277, type: !4564, scopeLine: 1278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4566)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{null, !594, !635, !887, !655}
!4566 = !{!4567, !4568, !4569, !4570, !4571}
!4567 = !DILocalVariable(name: "level", arg: 1, scope: !4563, file: !1392, line: 1277, type: !594)
!4568 = !DILocalVariable(name: "file", arg: 2, scope: !4563, file: !1392, line: 1277, type: !635)
!4569 = !DILocalVariable(name: "name", arg: 3, scope: !4563, file: !1392, line: 1277, type: !887)
!4570 = !DILocalVariable(name: "sv", arg: 4, scope: !4563, file: !1392, line: 1277, type: !655)
!4571 = !DILocalVariable(name: "tmpsv", scope: !4572, file: !1392, line: 1283, type: !876)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !1392, line: 1282, column: 27)
!4573 = distinct !DILexicalBlock(scope: !4563, file: !1392, line: 1282, column: 9)
!4574 = !DILocation(line: 0, scope: !4563)
!4575 = !DILocation(line: 1281, column: 63, scope: !4563)
!4576 = !DILocation(line: 1281, column: 5, scope: !4563)
!4577 = !DILocation(line: 1282, column: 9, scope: !4573)
!4578 = !DILocation(line: 1282, column: 12, scope: !4573)
!4579 = !DILocation(line: 1283, column: 28, scope: !4572)
!4580 = !DILocation(line: 0, scope: !4572)
!4581 = !DILocation(line: 1285, column: 31, scope: !4572)
!4582 = !DILocation(line: 1284, column: 9, scope: !4572)
!4583 = !DILocation(line: 1286, column: 5, scope: !4572)
!4584 = !DILocation(line: 1288, column: 2, scope: !4573)
!4585 = !DILocation(line: 1289, column: 1, scope: !4563)
!4586 = distinct !DISubprogram(name: "Perl_do_gvgv_dump", scope: !1392, file: !1392, line: 1292, type: !4564, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4587)
!4587 = !{!4588, !4589, !4590, !4591, !4592, !4595, !4596}
!4588 = !DILocalVariable(name: "level", arg: 1, scope: !4586, file: !1392, line: 1292, type: !594)
!4589 = !DILocalVariable(name: "file", arg: 2, scope: !4586, file: !1392, line: 1292, type: !635)
!4590 = !DILocalVariable(name: "name", arg: 3, scope: !4586, file: !1392, line: 1292, type: !887)
!4591 = !DILocalVariable(name: "sv", arg: 4, scope: !4586, file: !1392, line: 1292, type: !655)
!4592 = !DILocalVariable(name: "tmp", scope: !4593, file: !1392, line: 1298, type: !514)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !1392, line: 1297, column: 27)
!4594 = distinct !DILexicalBlock(scope: !4586, file: !1392, line: 1297, column: 9)
!4595 = !DILocalVariable(name: "hvname", scope: !4593, file: !1392, line: 1299, type: !887)
!4596 = !DILocalVariable(name: "stash", scope: !4593, file: !1392, line: 1300, type: !3313)
!4597 = !DILocation(line: 0, scope: !4586)
!4598 = !DILocation(line: 1296, column: 63, scope: !4586)
!4599 = !DILocation(line: 1296, column: 5, scope: !4586)
!4600 = !DILocation(line: 1297, column: 9, scope: !4594)
!4601 = !DILocation(line: 1297, column: 12, scope: !4594)
!4602 = !DILocation(line: 1298, column: 18, scope: !4593)
!4603 = !DILocation(line: 0, scope: !4593)
!4604 = !DILocation(line: 1300, column: 28, scope: !4593)
!4605 = !DILocation(line: 1301, column: 2, scope: !4593)
!4606 = !DILocation(line: 1303, column: 6, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4593, file: !1392, line: 1303, column: 6)
!4608 = !DILocation(line: 1303, column: 12, scope: !4607)
!4609 = !DILocation(line: 1303, column: 25, scope: !4607)
!4610 = !DILocation(line: 1305, column: 35, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4607, file: !1392, line: 1303, column: 45)
!4612 = !DILocation(line: 1304, column: 13, scope: !4611)
!4613 = !DILocation(line: 1307, column: 9, scope: !4611)
!4614 = !DILocation(line: 1309, column: 31, scope: !4593)
!4615 = !DILocation(line: 1308, column: 9, scope: !4593)
!4616 = !DILocation(line: 1310, column: 5, scope: !4593)
!4617 = !DILocation(line: 1312, column: 2, scope: !4594)
!4618 = !DILocation(line: 1313, column: 1, scope: !4586)
!4619 = !DISubprogram(name: "Perl_newSVpvf", scope: !1616, file: !1616, line: 3104, type: !4620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!514, !886, null}
!4622 = !DISubprogram(name: "Perl__invlist_dump", scope: !1616, file: !1616, line: 7225, type: !4623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{null, !635, !594, !886, !876}
!4625 = !DISubprogram(name: "Perl_av_arylen_p", scope: !1616, file: !1616, line: 181, type: !4626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!579, !869}
!4628 = !DISubprogram(name: "Perl_av_fetch", scope: !1616, file: !1616, line: 226, type: !4629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!579, !869, !805, !594}
!4631 = !DISubprogram(name: "Perl_hv_placeholders_get", scope: !1616, file: !1616, line: 1765, type: !4632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!594, !1334}
!4634 = !DISubprogram(name: "Perl_mg_find", scope: !1616, file: !1616, line: 2648, type: !4635, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!498, !916, !513}
!4637 = !DISubprogram(name: "Perl_hv_backreferences_p", scope: !1616, file: !1616, line: 1615, type: !4638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{!4640, !483}
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!4641 = !DISubprogram(name: "Perl_hv_iterkeysv", scope: !1616, file: !1616, line: 1717, type: !4642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!514, !582}
!4644 = !DISubprogram(name: "Perl_cv_const_sv", scope: !1616, file: !1616, line: 815, type: !4645, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!514, !3344}
!4647 = !DISubprogram(name: "Perl_do_dump_pad", scope: !1616, file: !1616, line: 947, type: !4648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{null, !594, !635, !800, !513}
!4650 = !DISubprogram(name: "Perl_sv_setpv", scope: !1616, file: !1616, line: 4607, type: !4651, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4651 = !DISubroutineType(types: !4652)
!4652 = !{null, !876, !886}
!4653 = distinct !DISubprogram(name: "Perl_sv_dump", scope: !1392, file: !1392, line: 2190, type: !1954, scopeLine: 2191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4654)
!4654 = !{!4655}
!4655 = !DILocalVariable(name: "sv", arg: 1, scope: !4653, file: !1392, line: 2190, type: !514)
!4656 = !DILocation(line: 0, scope: !4653)
!4657 = !DILocation(line: 2194, column: 9, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4653, file: !1392, line: 2194, column: 9)
!4659 = !DILocation(line: 0, scope: !4658)
!4660 = !DILocation(line: 2198, column: 1, scope: !4653)
!4661 = distinct !DISubprogram(name: "Perl_runops_debug", scope: !1392, file: !1392, line: 2201, type: !4662, scopeLine: 2202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1619)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!513}
!4664 = !DILocation(line: 2203, column: 10, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4661, file: !1392, line: 2203, column: 9)
!4666 = !DILocation(line: 2203, column: 9, scope: !4661)
!4667 = !DILocation(line: 2204, column: 2, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4665, file: !1392, line: 2203, column: 17)
!4669 = !DILocation(line: 2205, column: 2, scope: !4668)
!4670 = !DILocation(line: 2213, column: 6, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4672, file: !1392, line: 2213, column: 6)
!4672 = distinct !DILexicalBlock(scope: !4661, file: !1392, line: 2209, column: 8)
!4673 = !DILocation(line: 2213, column: 6, scope: !4672)
!4674 = !DILocation(line: 2214, column: 10, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4676, file: !1392, line: 2214, column: 10)
!4676 = distinct !DILexicalBlock(scope: !4671, file: !1392, line: 2213, column: 16)
!4677 = !DILocation(line: 2214, column: 23, scope: !4675)
!4678 = !DILocation(line: 2214, column: 27, scope: !4675)
!4679 = !DILocation(line: 2214, column: 44, scope: !4675)
!4680 = !DILocation(line: 2214, column: 41, scope: !4675)
!4681 = !DILocation(line: 2214, column: 10, scope: !4676)
!4682 = !DILocation(line: 2215, column: 17, scope: !4675)
!4683 = !DILocation(line: 2217, column: 10, scope: !4675)
!4684 = !DILocation(line: 2217, column: 32, scope: !4675)
!4685 = !DILocation(line: 2218, column: 10, scope: !4675)
!4686 = !DILocation(line: 2215, column: 3, scope: !4675)
!4687 = !DILocation(line: 2219, column: 10, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4676, file: !1392, line: 2219, column: 10)
!4689 = !DILocation(line: 2219, column: 10, scope: !4676)
!4690 = !DILocation(line: 2220, column: 7, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4692, file: !1392, line: 2220, column: 7)
!4692 = distinct !DILexicalBlock(scope: !4688, file: !1392, line: 2219, column: 25)
!4693 = !DILocation(line: 2220, column: 7, scope: !4692)
!4694 = !DILocation(line: 2221, column: 21, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4691, file: !1392, line: 2220, column: 22)
!4696 = !DILocation(line: 2221, column: 7, scope: !4695)
!4697 = !DILocation(line: 2222, column: 7, scope: !4695)
!4698 = !DILocation(line: 2223, column: 3, scope: !4695)
!4699 = !DILocation(line: 2225, column: 7, scope: !4691)
!4700 = !DILocation(line: 2229, column: 10, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4676, file: !1392, line: 2229, column: 10)
!4702 = !DILocation(line: 2229, column: 10, scope: !4676)
!4703 = !DILocation(line: 2229, column: 25, scope: !4701)
!4704 = !DILocation(line: 2230, column: 10, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4676, file: !1392, line: 2230, column: 10)
!4706 = !DILocation(line: 2230, column: 10, scope: !4676)
!4707 = !DILocation(line: 2230, column: 25, scope: !4705)
!4708 = !DILocalVariable(name: "o", arg: 1, scope: !4709, file: !1392, line: 2575, type: !2093)
!4709 = distinct !DISubprogram(name: "S_debprof", scope: !1392, file: !1392, line: 2575, type: !2091, scopeLine: 2576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4710)
!4710 = !{!4708}
!4711 = !DILocation(line: 0, scope: !4709, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 2230, column: 25, scope: !4705)
!4713 = !DILocation(line: 2579, column: 10, scope: !4714, inlinedAt: !4712)
!4714 = distinct !DILexicalBlock(scope: !4709, file: !1392, line: 2579, column: 9)
!4715 = !DILocation(line: 2579, column: 24, scope: !4714, inlinedAt: !4712)
!4716 = !DILocation(line: 2579, column: 27, scope: !4714, inlinedAt: !4712)
!4717 = !DILocation(line: 2579, column: 9, scope: !4709, inlinedAt: !4712)
!4718 = !DILocation(line: 2581, column: 10, scope: !4719, inlinedAt: !4712)
!4719 = distinct !DILexicalBlock(scope: !4709, file: !1392, line: 2581, column: 9)
!4720 = !DILocation(line: 2581, column: 9, scope: !4709, inlinedAt: !4712)
!4721 = !DILocation(line: 2582, column: 2, scope: !4719, inlinedAt: !4712)
!4722 = !DILocation(line: 2583, column: 7, scope: !4709, inlinedAt: !4712)
!4723 = !DILocation(line: 2583, column: 25, scope: !4709, inlinedAt: !4712)
!4724 = !DILocation(line: 2583, column: 5, scope: !4709, inlinedAt: !4712)
!4725 = !DILocation(line: 2584, column: 1, scope: !4709, inlinedAt: !4712)
!4726 = !DILocation(line: 2234, column: 23, scope: !4661)
!4727 = !DILocation(line: 2234, column: 30, scope: !4661)
!4728 = !DILocation(line: 2234, column: 21, scope: !4661)
!4729 = !DILocation(line: 2234, column: 5, scope: !4672)
!4730 = distinct !{!4730, !4731, !4732, !1603, !1604}
!4731 = !DILocation(line: 2209, column: 5, scope: !4661)
!4732 = !DILocation(line: 2234, column: 46, scope: !4661)
!4733 = !DILocation(line: 2236, column: 5, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4661, file: !1392, line: 2236, column: 5)
!4735 = !DILocation(line: 2236, column: 5, scope: !4661)
!4736 = !DILocation(line: 2238, column: 5, scope: !4661)
!4737 = !DILocation(line: 2239, column: 5, scope: !4661)
!4738 = !DILocation(line: 2240, column: 1, scope: !4661)
!4739 = !DISubprogram(name: "Perl_ck_warner_d", scope: !1616, file: !1616, line: 706, type: !4740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{null, !520, !887, null}
!4742 = !DISubprogram(name: "Perl_deb_stack_all", scope: !1616, file: !1616, line: 887, type: !2076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4743 = !DISubprogram(name: "Perl_debstack", scope: !1616, file: !1616, line: 894, type: !4744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!4744 = !DISubroutineType(types: !4745)
!4745 = !{!594}
!4746 = distinct !DISubprogram(name: "Perl_debop", scope: !1392, file: !1392, line: 2476, type: !4747, scopeLine: 2477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4749)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!594, !2093}
!4749 = !{!4750, !4751, !4755}
!4750 = !DILocalVariable(name: "o", arg: 1, scope: !4746, file: !1392, line: 2476, type: !2093)
!4751 = !DILocalVariable(name: "sv", scope: !4752, file: !1392, line: 2499, type: !876)
!4752 = distinct !DILexicalBlock(scope: !4753, file: !1392, line: 2498, column: 36)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !1392, line: 2498, column: 6)
!4754 = distinct !DILexicalBlock(scope: !4746, file: !1392, line: 2484, column: 25)
!4755 = !DILocalVariable(name: "sv", scope: !4756, file: !1392, line: 2505, type: !876)
!4756 = distinct !DILexicalBlock(scope: !4757, file: !1392, line: 2504, column: 22)
!4757 = distinct !DILexicalBlock(scope: !4753, file: !1392, line: 2504, column: 11)
!4758 = !DILocation(line: 0, scope: !4746)
!4759 = !DILocation(line: 2480, column: 9, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4746, file: !1392, line: 2480, column: 9)
!4761 = !DILocation(line: 2480, column: 45, scope: !4760)
!4762 = !DILocation(line: 2480, column: 49, scope: !4760)
!4763 = !DILocation(line: 2480, column: 9, scope: !4746)
!4764 = !DILocation(line: 2483, column: 26, scope: !4746)
!4765 = !DILocation(line: 2483, column: 5, scope: !4746)
!4766 = !DILocation(line: 2484, column: 16, scope: !4746)
!4767 = !DILocation(line: 2484, column: 5, scope: !4746)
!4768 = !DILocation(line: 2494, column: 20, scope: !4754)
!4769 = !DILocation(line: 2494, column: 44, scope: !4754)
!4770 = !DILocation(line: 2494, column: 6, scope: !4754)
!4771 = !DILocation(line: 2495, column: 2, scope: !4754)
!4772 = !DILocation(line: 2498, column: 6, scope: !4753)
!4773 = !DILocation(line: 2498, column: 16, scope: !4753)
!4774 = !DILocation(line: 2498, column: 19, scope: !4753)
!4775 = !DILocation(line: 0, scope: !4753)
!4776 = !DILocation(line: 2498, column: 6, scope: !4754)
!4777 = !DILocation(line: 0, scope: !4752)
!4778 = !DILocation(line: 2500, column: 6, scope: !4752)
!4779 = !DILocation(line: 2501, column: 20, scope: !4752)
!4780 = !DILocation(line: 2501, column: 44, scope: !4752)
!4781 = !DILocation(line: 2501, column: 6, scope: !4752)
!4782 = !DILocation(line: 0, scope: !1953, inlinedAt: !4783)
!4783 = distinct !DILocation(line: 2502, column: 6, scope: !4752)
!4784 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !4783)
!4785 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !4783)
!4786 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !4783)
!4787 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !4783)
!4788 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !4783)
!4789 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !4783)
!4790 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !4783)
!4791 = !DILocation(line: 0, scope: !4756)
!4792 = !DILocation(line: 2508, column: 20, scope: !4756)
!4793 = !DILocation(line: 2509, column: 7, scope: !4756)
!4794 = !DILocation(line: 2508, column: 6, scope: !4756)
!4795 = !DILocation(line: 0, scope: !1953, inlinedAt: !4796)
!4796 = distinct !DILocation(line: 2510, column: 6, scope: !4756)
!4797 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !4796)
!4798 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !4796)
!4799 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !4796)
!4800 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !4796)
!4801 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !4796)
!4802 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !4796)
!4803 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !4796)
!4804 = !DILocation(line: 2513, column: 20, scope: !4757)
!4805 = !DILocation(line: 2513, column: 6, scope: !4757)
!4806 = !DILocation(line: 2519, column: 31, scope: !4754)
!4807 = !DILocation(line: 2519, column: 9, scope: !4754)
!4808 = !DILocation(line: 2520, column: 9, scope: !4754)
!4809 = !DILocation(line: 2523, column: 31, scope: !4754)
!4810 = !DILocation(line: 2524, column: 28, scope: !4754)
!4811 = !DILocation(line: 2524, column: 39, scope: !4754)
!4812 = !DILocation(line: 2523, column: 9, scope: !4754)
!4813 = !DILocation(line: 2525, column: 9, scope: !4754)
!4814 = !DILocation(line: 2528, column: 23, scope: !4754)
!4815 = !DILocation(line: 2529, column: 13, scope: !4754)
!4816 = !DILocalVariable(name: "si", scope: !4817, file: !1392, line: 2542, type: !4950)
!4817 = distinct !DISubprogram(name: "S_deb_curcv", scope: !1392, file: !1392, line: 2540, type: !4818, scopeLine: 2541, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4820)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!720, !594}
!4820 = !{!4821, !4816, !4822}
!4821 = !DILocalVariable(name: "ix", arg: 1, scope: !4817, file: !1392, line: 2540, type: !594)
!4822 = !DILocalVariable(name: "cx", scope: !4823, file: !1392, line: 2544, type: !4826)
!4823 = distinct !DILexicalBlock(scope: !4824, file: !1392, line: 2543, column: 26)
!4824 = distinct !DILexicalBlock(scope: !4825, file: !1392, line: 2543, column: 5)
!4825 = distinct !DILexicalBlock(scope: !4817, file: !1392, line: 2543, column: 5)
!4826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4827)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4829)
!4829 = !DIDerivedType(tag: DW_TAG_typedef, name: "PERL_CONTEXT", file: !479, line: 2655, baseType: !4830)
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context", file: !1142, line: 967, size: 704, elements: !4831)
!4831 = !{!4832}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "cx_u", scope: !4830, file: !1142, line: 971, baseType: !4833, size: 704)
!4833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4830, file: !1142, line: 968, size: 704, elements: !4834)
!4834 = !{!4835, !4933}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "cx_blk", scope: !4833, file: !1142, line: 969, baseType: !4836, size: 640)
!4836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block", file: !1142, line: 838, size: 640, elements: !4837)
!4837 = !{!4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846}
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "blku_type", scope: !4836, file: !1142, line: 839, baseType: !471, size: 8)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "blku_gimme", scope: !4836, file: !1142, line: 840, baseType: !471, size: 8, offset: 8)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "blku_u16", scope: !4836, file: !1142, line: 841, baseType: !1016, size: 16, offset: 16)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldsp", scope: !4836, file: !1142, line: 842, baseType: !594, size: 32, offset: 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldcop", scope: !4836, file: !1142, line: 843, baseType: !1139, size: 64, offset: 64)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldmarksp", scope: !4836, file: !1142, line: 844, baseType: !594, size: 32, offset: 128)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldscopesp", scope: !4836, file: !1142, line: 845, baseType: !594, size: 32, offset: 160)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldpm", scope: !4836, file: !1142, line: 846, baseType: !1268, size: 64, offset: 192)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "blk_u", scope: !4836, file: !1142, line: 854, baseType: !4847, size: 384, offset: 256)
!4847 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4836, file: !1142, line: 848, size: 384, elements: !4848)
!4848 = !{!4849, !4858, !4865, !4900, !4929}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "blku_sub", scope: !4847, file: !1142, line: 849, baseType: !4850, size: 384)
!4850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_sub", file: !1142, line: 567, size: 384, elements: !4851)
!4851 = !{!4852, !4853, !4854, !4855, !4856, !4857}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "retop", scope: !4850, file: !1142, line: 568, baseType: !743, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !4850, file: !1142, line: 570, baseType: !720, size: 64, offset: 64)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "savearray", scope: !4850, file: !1142, line: 572, baseType: !869, size: 64, offset: 128)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "argarray", scope: !4850, file: !1142, line: 573, baseType: !869, size: 64, offset: 192)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "olddepth", scope: !4850, file: !1142, line: 574, baseType: !594, size: 32, offset: 256)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "oldcomppad", scope: !4850, file: !1142, line: 575, baseType: !811, size: 64, offset: 320)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "blku_format", scope: !4847, file: !1142, line: 850, baseType: !4859, size: 256)
!4859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_format", file: !1142, line: 580, size: 256, elements: !4860)
!4860 = !{!4861, !4862, !4863, !4864}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "retop", scope: !4859, file: !1142, line: 581, baseType: !743, size: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !4859, file: !1142, line: 583, baseType: !720, size: 64, offset: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "gv", scope: !4859, file: !1142, line: 585, baseType: !655, size: 64, offset: 128)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "dfoutgv", scope: !4859, file: !1142, line: 586, baseType: !655, size: 64, offset: 192)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "blku_eval", scope: !4847, file: !1142, line: 851, baseType: !4866, size: 384)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_eval", file: !1142, line: 714, size: 384, elements: !4867)
!4867 = !{!4868, !4869, !4870, !4871, !4872, !4873}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "retop", scope: !4866, file: !1142, line: 715, baseType: !743, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "old_namesv", scope: !4866, file: !1142, line: 717, baseType: !514, size: 64, offset: 64)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "old_eval_root", scope: !4866, file: !1142, line: 718, baseType: !743, size: 64, offset: 128)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !4866, file: !1142, line: 719, baseType: !514, size: 64, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !4866, file: !1142, line: 720, baseType: !720, size: 64, offset: 256)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "cur_top_env", scope: !4866, file: !1142, line: 721, baseType: !4874, size: 64, offset: 320)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DIDerivedType(tag: DW_TAG_typedef, name: "JMPENV", file: !1142, line: 59, baseType: !4876)
!4876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jmpenv", file: !1142, line: 32, size: 1728, elements: !4877)
!4877 = !{!4878, !4896, !4898, !4899}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "je_buf", scope: !4876, file: !1142, line: 49, baseType: !4879, size: 1600)
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigjmp_buf", file: !4880, line: 83, baseType: !4881)
!4880 = !DIFile(filename: "/usr/include/setjmp.h", directory: "", checksumkind: CSK_MD5, checksum: "76b05e9ee1ce4e0a46e91c06a0fc7c7a")
!4881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4882, size: 1600, elements: !597)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !4880, line: 33, size: 1600, elements: !4883)
!4883 = !{!4884, !4888, !4889}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !4882, file: !4880, line: 39, baseType: !4885, size: 512)
!4885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !4886, line: 31, baseType: !4887)
!4886 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "", checksumkind: CSK_MD5, checksum: "45ab2ca18833449ad9660bc3075914aa")
!4887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 512, elements: !1404)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !4882, file: !4880, line: 40, baseType: !513, size: 32, offset: 512)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !4882, file: !4880, line: 41, baseType: !4890, size: 1024, offset: 576)
!4890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !4891, line: 8, baseType: !4892)
!4891 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!4892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4891, line: 5, size: 1024, elements: !4893)
!4893 = !{!4894}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !4892, file: !4891, line: 7, baseType: !4895, size: 1024)
!4895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 1024, elements: !1439)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "je_prev", scope: !4876, file: !1142, line: 50, baseType: !4897, size: 64, offset: 1600)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "je_ret", scope: !4876, file: !1142, line: 55, baseType: !513, size: 32, offset: 1664)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "je_mustcatch", scope: !4876, file: !1142, line: 56, baseType: !475, size: 8, offset: 1696)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "blku_loop", scope: !4847, file: !1142, line: 852, baseType: !4901, size: 320)
!4901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_loop", file: !1142, line: 756, size: 320, elements: !4902)
!4902 = !{!4903, !4904, !4905, !4911}
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "resetsp", scope: !4901, file: !1142, line: 757, baseType: !594, size: 32)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "my_op", scope: !4901, file: !1142, line: 758, baseType: !1225, size: 64, offset: 64)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "itervar_u", scope: !4901, file: !1142, line: 763, baseType: !4906, size: 64, offset: 128)
!4906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4901, file: !1142, line: 759, size: 64, elements: !4907)
!4907 = !{!4908, !4909, !4910}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "svp", scope: !4906, file: !1142, line: 760, baseType: !579, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "gv", scope: !4906, file: !1142, line: 761, baseType: !655, size: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "oldcomppad", scope: !4906, file: !1142, line: 762, baseType: !811, size: 64)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "state_u", scope: !4901, file: !1142, line: 777, baseType: !4912, size: 128, offset: 192)
!4912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4901, file: !1142, line: 764, size: 128, elements: !4913)
!4913 = !{!4914, !4919, !4924}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "ary", scope: !4912, file: !1142, line: 768, baseType: !4915, size: 128)
!4915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4912, file: !1142, line: 765, size: 128, elements: !4916)
!4916 = !{!4917, !4918}
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "ary", scope: !4915, file: !1142, line: 766, baseType: !869, size: 64)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "ix", scope: !4915, file: !1142, line: 767, baseType: !529, size: 64, offset: 64)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "lazyiv", scope: !4912, file: !1142, line: 772, baseType: !4920, size: 128)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4912, file: !1142, line: 769, size: 128, elements: !4921)
!4921 = !{!4922, !4923}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !4920, file: !1142, line: 770, baseType: !529, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4920, file: !1142, line: 771, baseType: !529, size: 64, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "lazysv", scope: !4912, file: !1142, line: 776, baseType: !4925, size: 128)
!4925 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4912, file: !1142, line: 773, size: 128, elements: !4926)
!4926 = !{!4927, !4928}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !4925, file: !1142, line: 774, baseType: !514, size: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4925, file: !1142, line: 775, baseType: !514, size: 64, offset: 64)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "blku_givwhen", scope: !4847, file: !1142, line: 853, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_givwhen", file: !1142, line: 828, size: 64, elements: !4931)
!4931 = !{!4932}
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "leave_op", scope: !4930, file: !1142, line: 829, baseType: !743, size: 64)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "cx_subst", scope: !4833, file: !1142, line: 970, baseType: !4934, size: 704)
!4934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subst", file: !1142, line: 911, size: 704, elements: !4935)
!4935 = !{!4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949}
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_type", scope: !4934, file: !1142, line: 912, baseType: !471, size: 8)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_rflags", scope: !4934, file: !1142, line: 913, baseType: !471, size: 8, offset: 8)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_rxtainted", scope: !4934, file: !1142, line: 914, baseType: !1016, size: 16, offset: 16)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_oldsave", scope: !4934, file: !1142, line: 915, baseType: !594, size: 32, offset: 32)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_iters", scope: !4934, file: !1142, line: 916, baseType: !805, size: 64, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_maxiters", scope: !4934, file: !1142, line: 917, baseType: !805, size: 64, offset: 128)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_orig", scope: !4934, file: !1142, line: 918, baseType: !526, size: 64, offset: 192)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_dstr", scope: !4934, file: !1142, line: 919, baseType: !514, size: 64, offset: 256)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_targ", scope: !4934, file: !1142, line: 920, baseType: !514, size: 64, offset: 320)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_s", scope: !4934, file: !1142, line: 921, baseType: !526, size: 64, offset: 384)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_m", scope: !4934, file: !1142, line: 922, baseType: !526, size: 64, offset: 448)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_strend", scope: !4934, file: !1142, line: 923, baseType: !526, size: 64, offset: 512)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_rxres", scope: !4934, file: !1142, line: 924, baseType: !476, size: 64, offset: 576)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_rx", scope: !4934, file: !1142, line: 925, baseType: !562, size: 64, offset: 640)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_typedef, name: "PERL_SI", file: !1142, line: 1129, baseType: !4952)
!4952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stackinfo", file: !1142, line: 1116, size: 384, elements: !4953)
!4953 = !{!4954, !4955, !4957, !4959, !4960, !4961, !4962, !4963}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "si_stack", scope: !4952, file: !1142, line: 1117, baseType: !869, size: 64)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "si_cxstack", scope: !4952, file: !1142, line: 1118, baseType: !4956, size: 64, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "si_prev", scope: !4952, file: !1142, line: 1119, baseType: !4958, size: 64, offset: 128)
!4958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "si_next", scope: !4952, file: !1142, line: 1120, baseType: !4958, size: 64, offset: 192)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "si_cxix", scope: !4952, file: !1142, line: 1121, baseType: !594, size: 32, offset: 256)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "si_cxmax", scope: !4952, file: !1142, line: 1122, baseType: !594, size: 32, offset: 288)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "si_type", scope: !4952, file: !1142, line: 1123, baseType: !594, size: 32, offset: 320)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "si_markoff", scope: !4952, file: !1142, line: 1124, baseType: !594, size: 32, offset: 352)
!4964 = !DILocation(line: 0, scope: !4817, inlinedAt: !4965)
!4965 = distinct !DILocation(line: 2529, column: 13, scope: !4754)
!4966 = !DILocation(line: 2543, column: 15, scope: !4824, inlinedAt: !4965)
!4967 = !DILocation(line: 2543, column: 5, scope: !4825, inlinedAt: !4965)
!4968 = !DILocation(line: 2544, column: 47, scope: !4823, inlinedAt: !4965)
!4969 = !DILocation(line: 2544, column: 42, scope: !4823, inlinedAt: !4965)
!4970 = !DILocation(line: 0, scope: !4823, inlinedAt: !4965)
!4971 = !DILocation(line: 2546, column: 13, scope: !4972, inlinedAt: !4965)
!4972 = distinct !DILexicalBlock(scope: !4823, file: !1392, line: 2546, column: 13)
!4973 = !DILocation(line: 2546, column: 35, scope: !4972, inlinedAt: !4965)
!4974 = !DILocation(line: 2547, column: 24, scope: !4972, inlinedAt: !4965)
!4975 = !DILocation(line: 2547, column: 32, scope: !4972, inlinedAt: !4965)
!4976 = !DILocation(line: 2547, column: 13, scope: !4972, inlinedAt: !4965)
!4977 = !DILocation(line: 2548, column: 45, scope: !4978, inlinedAt: !4965)
!4978 = distinct !DILexicalBlock(scope: !4972, file: !1392, line: 2548, column: 18)
!4979 = !DILocation(line: 2548, column: 18, scope: !4972, inlinedAt: !4965)
!4980 = !DILocation(line: 2549, column: 24, scope: !4978, inlinedAt: !4965)
!4981 = !DILocation(line: 2549, column: 33, scope: !4978, inlinedAt: !4965)
!4982 = !DILocation(line: 2549, column: 13, scope: !4978, inlinedAt: !4965)
!4983 = !DILocation(line: 2550, column: 21, scope: !4984, inlinedAt: !4965)
!4984 = distinct !DILexicalBlock(scope: !4978, file: !1392, line: 2550, column: 18)
!4985 = !DILocation(line: 2550, column: 26, scope: !4984, inlinedAt: !4965)
!4986 = !DILocation(line: 2550, column: 33, scope: !4984, inlinedAt: !4965)
!4987 = !DILocation(line: 2550, column: 41, scope: !4984, inlinedAt: !4965)
!4988 = !DILocation(line: 2550, column: 18, scope: !4978, inlinedAt: !4965)
!4989 = !DILocation(line: 2552, column: 29, scope: !4990, inlinedAt: !4965)
!4990 = distinct !DILexicalBlock(scope: !4984, file: !1392, line: 2552, column: 18)
!4991 = !DILocation(line: 2552, column: 40, scope: !4990, inlinedAt: !4965)
!4992 = !DILocation(line: 2553, column: 16, scope: !4990, inlinedAt: !4965)
!4993 = !DILocation(line: 2556, column: 22, scope: !4994, inlinedAt: !4965)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !1392, line: 2554, column: 9)
!4995 = !DILocation(line: 2557, column: 22, scope: !4994, inlinedAt: !4965)
!4996 = !DILocation(line: 2557, column: 30, scope: !4994, inlinedAt: !4965)
!4997 = !DILocation(line: 2558, column: 9, scope: !4994, inlinedAt: !4965)
!4998 = !DILocation(line: 2543, column: 22, scope: !4824, inlinedAt: !4965)
!4999 = distinct !{!4999, !4967, !5000, !1603, !1604}
!5000 = !DILocation(line: 2559, column: 5, scope: !4825, inlinedAt: !4965)
!5001 = !DILocation(line: 0, scope: !4972, inlinedAt: !4965)
!5002 = !DILocation(line: 2561, column: 1, scope: !4817, inlinedAt: !4965)
!5003 = !DILocation(line: 2528, column: 9, scope: !4754)
!5004 = !DILocation(line: 2530, column: 9, scope: !4754)
!5005 = !DILocation(line: 2535, column: 19, scope: !4746)
!5006 = !DILocation(line: 2535, column: 5, scope: !4746)
!5007 = !DILocation(line: 2536, column: 5, scope: !4746)
!5008 = !DILocation(line: 2537, column: 1, scope: !4746)
!5009 = distinct !DISubprogram(name: "S_deb_padvar", scope: !1392, file: !1392, line: 2246, type: !5010, scopeLine: 2247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5012)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{null, !754, !513, !475}
!5012 = !{!5013, !5014, !5015, !5016, !5017, !5019, !5020, !5021}
!5013 = !DILocalVariable(name: "off", arg: 1, scope: !5009, file: !1392, line: 2246, type: !754)
!5014 = !DILocalVariable(name: "n", arg: 2, scope: !5009, file: !1392, line: 2246, type: !513)
!5015 = !DILocalVariable(name: "paren", arg: 3, scope: !5009, file: !1392, line: 2246, type: !475)
!5016 = !DILocalVariable(name: "sv", scope: !5009, file: !1392, line: 2248, type: !1368)
!5017 = !DILocalVariable(name: "cv", scope: !5009, file: !1392, line: 2249, type: !5018)
!5018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!5019 = !DILocalVariable(name: "comppad", scope: !5009, file: !1392, line: 2250, type: !1361)
!5020 = !DILocalVariable(name: "i", scope: !5009, file: !1392, line: 2251, type: !513)
!5021 = !DILocalVariable(name: "padlist", scope: !5022, file: !1392, line: 2254, type: !5024)
!5022 = distinct !DILexicalBlock(scope: !5023, file: !1392, line: 2253, column: 13)
!5023 = distinct !DILexicalBlock(scope: !5009, file: !1392, line: 2253, column: 9)
!5024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!5025 = !DILocation(line: 0, scope: !5009)
!5026 = !DILocation(line: 2249, column: 21, scope: !5009)
!5027 = !DILocation(line: 0, scope: !4817, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 2249, column: 21, scope: !5009)
!5029 = !DILocation(line: 2543, column: 15, scope: !4824, inlinedAt: !5028)
!5030 = !DILocation(line: 2543, column: 5, scope: !4825, inlinedAt: !5028)
!5031 = !DILocation(line: 2544, column: 47, scope: !4823, inlinedAt: !5028)
!5032 = !DILocation(line: 2544, column: 42, scope: !4823, inlinedAt: !5028)
!5033 = !DILocation(line: 0, scope: !4823, inlinedAt: !5028)
!5034 = !DILocation(line: 2546, column: 13, scope: !4972, inlinedAt: !5028)
!5035 = !DILocation(line: 2546, column: 35, scope: !4972, inlinedAt: !5028)
!5036 = !DILocation(line: 2547, column: 24, scope: !4972, inlinedAt: !5028)
!5037 = !DILocation(line: 2547, column: 32, scope: !4972, inlinedAt: !5028)
!5038 = !DILocation(line: 2547, column: 13, scope: !4972, inlinedAt: !5028)
!5039 = !DILocation(line: 2548, column: 45, scope: !4978, inlinedAt: !5028)
!5040 = !DILocation(line: 2548, column: 18, scope: !4972, inlinedAt: !5028)
!5041 = !DILocation(line: 2549, column: 24, scope: !4978, inlinedAt: !5028)
!5042 = !DILocation(line: 2549, column: 33, scope: !4978, inlinedAt: !5028)
!5043 = !DILocation(line: 2549, column: 13, scope: !4978, inlinedAt: !5028)
!5044 = !DILocation(line: 2550, column: 21, scope: !4984, inlinedAt: !5028)
!5045 = !DILocation(line: 2550, column: 26, scope: !4984, inlinedAt: !5028)
!5046 = !DILocation(line: 2550, column: 33, scope: !4984, inlinedAt: !5028)
!5047 = !DILocation(line: 2550, column: 41, scope: !4984, inlinedAt: !5028)
!5048 = !DILocation(line: 2550, column: 18, scope: !4978, inlinedAt: !5028)
!5049 = !DILocation(line: 2552, column: 29, scope: !4990, inlinedAt: !5028)
!5050 = !DILocation(line: 2552, column: 40, scope: !4990, inlinedAt: !5028)
!5051 = !DILocation(line: 2553, column: 16, scope: !4990, inlinedAt: !5028)
!5052 = !DILocation(line: 2556, column: 22, scope: !4994, inlinedAt: !5028)
!5053 = !DILocation(line: 2557, column: 22, scope: !4994, inlinedAt: !5028)
!5054 = !DILocation(line: 2557, column: 30, scope: !4994, inlinedAt: !5028)
!5055 = !DILocation(line: 2558, column: 9, scope: !4994, inlinedAt: !5028)
!5056 = !DILocation(line: 2543, column: 22, scope: !4824, inlinedAt: !5028)
!5057 = distinct !{!5057, !5030, !5058, !1603, !1604}
!5058 = !DILocation(line: 2559, column: 5, scope: !4825, inlinedAt: !5028)
!5059 = !DILocation(line: 0, scope: !4972, inlinedAt: !5028)
!5060 = !DILocation(line: 2253, column: 9, scope: !5023)
!5061 = !DILocation(line: 2253, column: 9, scope: !5009)
!5062 = !DILocation(line: 2254, column: 35, scope: !5022)
!5063 = !DILocation(line: 0, scope: !5022)
!5064 = !DILocation(line: 2255, column: 19, scope: !5022)
!5065 = !DILocation(line: 2256, column: 5, scope: !5022)
!5066 = !DILocation(line: 2257, column: 9, scope: !5009)
!5067 = !DILocation(line: 2258, column: 23, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5009, file: !1392, line: 2257, column: 9)
!5069 = !DILocation(line: 2258, column: 9, scope: !5068)
!5070 = !DILocation(line: 2259, column: 19, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5072, file: !1392, line: 2259, column: 5)
!5072 = distinct !DILexicalBlock(scope: !5009, file: !1392, line: 2259, column: 5)
!5073 = !DILocation(line: 2259, column: 5, scope: !5072)
!5074 = !DILocation(line: 2260, column: 21, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !1392, line: 2260, column: 13)
!5076 = distinct !DILexicalBlock(scope: !5071, file: !1392, line: 2259, column: 29)
!5077 = !DILocation(line: 2263, column: 27, scope: !5075)
!5078 = !DILocation(line: 2264, column: 29, scope: !5075)
!5079 = !DILocation(line: 2263, column: 13, scope: !5075)
!5080 = !DILocation(line: 2265, column: 15, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5076, file: !1392, line: 2265, column: 13)
!5082 = !DILocation(line: 2265, column: 13, scope: !5076)
!5083 = !DILocation(line: 2266, column: 27, scope: !5081)
!5084 = !DILocation(line: 2266, column: 13, scope: !5081)
!5085 = !DILocation(line: 2259, column: 25, scope: !5071)
!5086 = distinct !{!5086, !5073, !5087, !1603, !1604}
!5087 = !DILocation(line: 2267, column: 5, scope: !5072)
!5088 = !DILocation(line: 2260, column: 61, scope: !5075)
!5089 = !DILocation(line: 2260, column: 30, scope: !5075)
!5090 = !DILocation(line: 2260, column: 28, scope: !5075)
!5091 = !DILocation(line: 0, scope: !5075)
!5092 = !DILocation(line: 2260, column: 13, scope: !5076)
!5093 = !DILocation(line: 2261, column: 51, scope: !5075)
!5094 = !DILocation(line: 2261, column: 13, scope: !5075)
!5095 = !DILocation(line: 2268, column: 9, scope: !5009)
!5096 = !DILocation(line: 2269, column: 23, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5009, file: !1392, line: 2268, column: 9)
!5098 = !DILocation(line: 2269, column: 9, scope: !5097)
!5099 = !DILocation(line: 2270, column: 1, scope: !5009)
!5100 = !DISubprogram(name: "Perl_padnamelist_fetch", scope: !1616, file: !1616, line: 3379, type: !5101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!1368, !1361, !805}
!5103 = distinct !DISubprogram(name: "Perl_multideref_stringify", scope: !1392, file: !1392, line: 2338, type: !5104, scopeLine: 2339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5106)
!5104 = !DISubroutineType(types: !5105)
!5105 = !{!514, !2093, !720}
!5106 = !{!5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5124, !5125, !5126}
!5107 = !DILocalVariable(name: "o", arg: 1, scope: !5103, file: !1392, line: 2338, type: !2093)
!5108 = !DILocalVariable(name: "cv", arg: 2, scope: !5103, file: !1392, line: 2338, type: !720)
!5109 = !DILocalVariable(name: "items", scope: !5103, file: !1392, line: 2340, type: !1131)
!5110 = !DILocalVariable(name: "actions", scope: !5103, file: !1392, line: 2341, type: !532)
!5111 = !DILocalVariable(name: "sv", scope: !5103, file: !1392, line: 2342, type: !514)
!5112 = !DILocalVariable(name: "last", scope: !5103, file: !1392, line: 2343, type: !475)
!5113 = !DILocalVariable(name: "is_hash", scope: !5103, file: !1392, line: 2344, type: !475)
!5114 = !DILocalVariable(name: "derefs", scope: !5103, file: !1392, line: 2345, type: !513)
!5115 = !DILocalVariable(name: "out", scope: !5103, file: !1392, line: 2346, type: !514)
!5116 = !DILocalVariable(name: "cur", scope: !5117, file: !1392, line: 2431, type: !545)
!5117 = distinct !DILexicalBlock(scope: !5118, file: !1392, line: 2430, column: 26)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !1392, line: 2428, column: 25)
!5119 = distinct !DILexicalBlock(scope: !5120, file: !1392, line: 2425, column: 30)
!5120 = distinct !DILexicalBlock(scope: !5121, file: !1392, line: 2425, column: 21)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !1392, line: 2423, column: 50)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !1392, line: 2361, column: 47)
!5123 = distinct !DILexicalBlock(scope: !5103, file: !1392, line: 2360, column: 19)
!5124 = !DILocalVariable(name: "s", scope: !5117, file: !1392, line: 2432, type: !526)
!5125 = !DILabel(scope: !5122, name: "do_vivify_rv2xv_elem", file: !1392, line: 2410)
!5126 = !DILabel(scope: !5122, name: "do_elem", file: !1392, line: 2415)
!5127 = !DILocation(line: 0, scope: !5103)
!5128 = !DILocation(line: 2340, column: 40, scope: !5103)
!5129 = !DILocation(line: 2341, column: 25, scope: !5103)
!5130 = !DILocation(line: 2346, column: 15, scope: !5103)
!5131 = !DILocation(line: 2360, column: 5, scope: !5103)
!5132 = !DILocation(line: 2361, column: 9, scope: !5123)
!5133 = !DILocation(line: 2361, column: 25, scope: !5123)
!5134 = !DILocation(line: 2364, column: 24, scope: !5122)
!5135 = !DILocation(line: 2364, column: 34, scope: !5122)
!5136 = !DILocation(line: 2373, column: 36, scope: !5122)
!5137 = !DILocation(line: 2373, column: 46, scope: !5122)
!5138 = !DILocalVariable(name: "off", arg: 1, scope: !5139, file: !1392, line: 2277, type: !754)
!5139 = distinct !DISubprogram(name: "S_append_padvar", scope: !1392, file: !1392, line: 2277, type: !5140, scopeLine: 2279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5142)
!5140 = !DISubroutineType(types: !5141)
!5141 = !{null, !754, !720, !514, !513, !475, !475}
!5142 = !{!5138, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5154}
!5143 = !DILocalVariable(name: "cv", arg: 2, scope: !5139, file: !1392, line: 2277, type: !720)
!5144 = !DILocalVariable(name: "out", arg: 3, scope: !5139, file: !1392, line: 2277, type: !514)
!5145 = !DILocalVariable(name: "n", arg: 4, scope: !5139, file: !1392, line: 2277, type: !513)
!5146 = !DILocalVariable(name: "paren", arg: 5, scope: !5139, file: !1392, line: 2278, type: !475)
!5147 = !DILocalVariable(name: "is_scalar", arg: 6, scope: !5139, file: !1392, line: 2278, type: !475)
!5148 = !DILocalVariable(name: "sv", scope: !5139, file: !1392, line: 2280, type: !1368)
!5149 = !DILocalVariable(name: "namepad", scope: !5139, file: !1392, line: 2281, type: !1361)
!5150 = !DILocalVariable(name: "i", scope: !5139, file: !1392, line: 2282, type: !513)
!5151 = !DILocalVariable(name: "padlist", scope: !5152, file: !1392, line: 2285, type: !5024)
!5152 = distinct !DILexicalBlock(scope: !5153, file: !1392, line: 2284, column: 13)
!5153 = distinct !DILexicalBlock(scope: !5139, file: !1392, line: 2284, column: 9)
!5154 = !DILocalVariable(name: "cur", scope: !5155, file: !1392, line: 2294, type: !545)
!5155 = distinct !DILexicalBlock(scope: !5156, file: !1392, line: 2293, column: 9)
!5156 = distinct !DILexicalBlock(scope: !5157, file: !1392, line: 2292, column: 13)
!5157 = distinct !DILexicalBlock(scope: !5158, file: !1392, line: 2291, column: 29)
!5158 = distinct !DILexicalBlock(scope: !5159, file: !1392, line: 2291, column: 5)
!5159 = distinct !DILexicalBlock(scope: !5139, file: !1392, line: 2291, column: 5)
!5160 = !DILocation(line: 0, scope: !5139, inlinedAt: !5161)
!5161 = distinct !DILocation(line: 2373, column: 13, scope: !5122)
!5162 = !DILocation(line: 2284, column: 9, scope: !5139, inlinedAt: !5161)
!5163 = !DILocation(line: 2285, column: 35, scope: !5152, inlinedAt: !5161)
!5164 = !DILocation(line: 0, scope: !5152, inlinedAt: !5161)
!5165 = !DILocation(line: 2286, column: 19, scope: !5152, inlinedAt: !5161)
!5166 = !DILocation(line: 2292, column: 13, scope: !5156, inlinedAt: !5161)
!5167 = !DILocation(line: 2292, column: 21, scope: !5156, inlinedAt: !5161)
!5168 = !DILocation(line: 2292, column: 30, scope: !5156, inlinedAt: !5161)
!5169 = !DILocation(line: 2292, column: 28, scope: !5156, inlinedAt: !5161)
!5170 = !DILocation(line: 2292, column: 13, scope: !5157, inlinedAt: !5161)
!5171 = !DILocation(line: 2294, column: 26, scope: !5155, inlinedAt: !5161)
!5172 = !DILocation(line: 0, scope: !5155, inlinedAt: !5161)
!5173 = !DILocation(line: 2296, column: 34, scope: !5155, inlinedAt: !5161)
!5174 = !DILocation(line: 2295, column: 13, scope: !5155, inlinedAt: !5161)
!5175 = !DILocation(line: 2299, column: 17, scope: !5176, inlinedAt: !5161)
!5176 = distinct !DILexicalBlock(scope: !5155, file: !1392, line: 2298, column: 17)
!5177 = !DILocation(line: 2299, column: 33, scope: !5176, inlinedAt: !5161)
!5178 = !DILocation(line: 2300, column: 9, scope: !5155, inlinedAt: !5161)
!5179 = !DILocation(line: 2302, column: 13, scope: !5156, inlinedAt: !5161)
!5180 = !DILocation(line: 2382, column: 18, scope: !5122)
!5181 = !DILocation(line: 2383, column: 18, scope: !5122)
!5182 = !DILocalVariable(name: "gv", arg: 1, scope: !5183, file: !1392, line: 2312, type: !655)
!5183 = distinct !DISubprogram(name: "S_append_gv_name", scope: !1392, file: !1392, line: 2312, type: !5184, scopeLine: 2313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5186)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{null, !655, !514}
!5186 = !{!5182, !5187, !5188}
!5187 = !DILocalVariable(name: "out", arg: 2, scope: !5183, file: !1392, line: 2312, type: !514)
!5188 = !DILocalVariable(name: "sv", scope: !5183, file: !1392, line: 2314, type: !514)
!5189 = !DILocation(line: 0, scope: !5183, inlinedAt: !5190)
!5190 = distinct !DILocation(line: 2384, column: 13, scope: !5122)
!5191 = !DILocation(line: 2315, column: 10, scope: !5192, inlinedAt: !5190)
!5192 = distinct !DILexicalBlock(scope: !5183, file: !1392, line: 2315, column: 9)
!5193 = !DILocation(line: 2315, column: 9, scope: !5183, inlinedAt: !5190)
!5194 = !DILocation(line: 2316, column: 9, scope: !5195, inlinedAt: !5190)
!5195 = distinct !DILexicalBlock(scope: !5192, file: !1392, line: 2315, column: 14)
!5196 = !DILocation(line: 2317, column: 9, scope: !5195, inlinedAt: !5190)
!5197 = !DILocation(line: 2319, column: 10, scope: !5183, inlinedAt: !5190)
!5198 = !DILocation(line: 2320, column: 5, scope: !5183, inlinedAt: !5190)
!5199 = !DILocation(line: 2321, column: 5, scope: !5183, inlinedAt: !5190)
!5200 = !DILocation(line: 0, scope: !1953, inlinedAt: !5201)
!5201 = distinct !DILocation(line: 2322, column: 5, scope: !5183, inlinedAt: !5190)
!5202 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !5201)
!5203 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !5201)
!5204 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !5201)
!5205 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !5201)
!5206 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !5201)
!5207 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !5201)
!5208 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !5201)
!5209 = !DILocation(line: 2392, column: 18, scope: !5122)
!5210 = !DILocation(line: 2393, column: 18, scope: !5122)
!5211 = !DILocation(line: 0, scope: !5183, inlinedAt: !5212)
!5212 = distinct !DILocation(line: 2394, column: 13, scope: !5122)
!5213 = !DILocation(line: 2315, column: 10, scope: !5192, inlinedAt: !5212)
!5214 = !DILocation(line: 2315, column: 9, scope: !5183, inlinedAt: !5212)
!5215 = !DILocation(line: 2316, column: 9, scope: !5195, inlinedAt: !5212)
!5216 = !DILocation(line: 2317, column: 9, scope: !5195, inlinedAt: !5212)
!5217 = !DILocation(line: 2319, column: 10, scope: !5183, inlinedAt: !5212)
!5218 = !DILocation(line: 2320, column: 5, scope: !5183, inlinedAt: !5212)
!5219 = !DILocation(line: 2321, column: 5, scope: !5183, inlinedAt: !5212)
!5220 = !DILocation(line: 0, scope: !1953, inlinedAt: !5221)
!5221 = distinct !DILocation(line: 2322, column: 5, scope: !5183, inlinedAt: !5212)
!5222 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !5221)
!5223 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !5221)
!5224 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !5221)
!5225 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !5221)
!5226 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !5221)
!5227 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !5221)
!5228 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !5221)
!5229 = !DILocation(line: 2402, column: 36, scope: !5122)
!5230 = !DILocation(line: 2402, column: 46, scope: !5122)
!5231 = !DILocation(line: 0, scope: !5139, inlinedAt: !5232)
!5232 = distinct !DILocation(line: 2402, column: 13, scope: !5122)
!5233 = !DILocation(line: 2284, column: 9, scope: !5139, inlinedAt: !5232)
!5234 = !DILocation(line: 2285, column: 35, scope: !5152, inlinedAt: !5232)
!5235 = !DILocation(line: 0, scope: !5152, inlinedAt: !5232)
!5236 = !DILocation(line: 2286, column: 19, scope: !5152, inlinedAt: !5232)
!5237 = !DILocation(line: 2292, column: 13, scope: !5156, inlinedAt: !5232)
!5238 = !DILocation(line: 2292, column: 21, scope: !5156, inlinedAt: !5232)
!5239 = !DILocation(line: 2292, column: 30, scope: !5156, inlinedAt: !5232)
!5240 = !DILocation(line: 2292, column: 28, scope: !5156, inlinedAt: !5232)
!5241 = !DILocation(line: 2292, column: 13, scope: !5157, inlinedAt: !5232)
!5242 = !DILocation(line: 2294, column: 26, scope: !5155, inlinedAt: !5232)
!5243 = !DILocation(line: 0, scope: !5155, inlinedAt: !5232)
!5244 = !DILocation(line: 2296, column: 34, scope: !5155, inlinedAt: !5232)
!5245 = !DILocation(line: 2295, column: 13, scope: !5155, inlinedAt: !5232)
!5246 = !DILocation(line: 2299, column: 17, scope: !5176, inlinedAt: !5232)
!5247 = !DILocation(line: 2299, column: 33, scope: !5176, inlinedAt: !5232)
!5248 = !DILocation(line: 2300, column: 9, scope: !5155, inlinedAt: !5232)
!5249 = !DILocation(line: 2302, column: 13, scope: !5156, inlinedAt: !5232)
!5250 = !DILocation(line: 2413, column: 24, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5122, file: !1392, line: 2413, column: 17)
!5252 = !DILocation(line: 2413, column: 17, scope: !5122)
!5253 = !DILocation(line: 2414, column: 17, scope: !5251)
!5254 = !DILocation(line: 2344, column: 10, scope: !5103)
!5255 = !DILocation(line: 0, scope: !5122)
!5256 = !DILocation(line: 2415, column: 9, scope: !5122)
!5257 = !DILocation(line: 2416, column: 26, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5122, file: !1392, line: 2416, column: 17)
!5259 = !DILocation(line: 2416, column: 46, scope: !5258)
!5260 = !DILocation(line: 2416, column: 17, scope: !5122)
!5261 = !DILocation(line: 2417, column: 17, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5258, file: !1392, line: 2416, column: 68)
!5263 = !DILocation(line: 2419, column: 17, scope: !5262)
!5264 = !DILocation(line: 2422, column: 13, scope: !5122)
!5265 = !DILocation(line: 2423, column: 13, scope: !5122)
!5266 = !DILocation(line: 0, scope: !5120)
!5267 = !DILocation(line: 2425, column: 21, scope: !5121)
!5268 = !DILocation(line: 2427, column: 26, scope: !5119)
!5269 = !DILocation(line: 2428, column: 26, scope: !5118)
!5270 = !DILocation(line: 2428, column: 25, scope: !5119)
!5271 = !DILocation(line: 2429, column: 25, scope: !5118)
!5272 = !DILocation(line: 2431, column: 25, scope: !5117)
!5273 = !DILocation(line: 2433, column: 29, scope: !5117)
!5274 = !DILocation(line: 0, scope: !5117)
!5275 = !DILocation(line: 2434, column: 25, scope: !5117)
!5276 = !DILocation(line: 0, scope: !1640, inlinedAt: !5277)
!5277 = distinct !DILocation(line: 2434, column: 25, scope: !5117)
!5278 = !DILocation(line: 280, column: 5, scope: !1640, inlinedAt: !5277)
!5279 = !DILocation(line: 293, column: 9, scope: !1669, inlinedAt: !5277)
!5280 = !DILocation(line: 308, column: 5, scope: !1640, inlinedAt: !5277)
!5281 = !DILocation(line: 314, column: 9, scope: !1693, inlinedAt: !5277)
!5282 = !DILocation(line: 316, column: 44, scope: !1696, inlinedAt: !5277)
!5283 = !DILocation(line: 317, column: 6, scope: !1696, inlinedAt: !5277)
!5284 = !DILocation(line: 325, column: 1, scope: !1640, inlinedAt: !5277)
!5285 = !DILocation(line: 2439, column: 21, scope: !5118)
!5286 = !DILocation(line: 2442, column: 67, scope: !5120)
!5287 = !DILocation(line: 2442, column: 21, scope: !5120)
!5288 = !DILocation(line: 2445, column: 40, scope: !5121)
!5289 = !DILocation(line: 2445, column: 50, scope: !5121)
!5290 = !DILocation(line: 0, scope: !5139, inlinedAt: !5291)
!5291 = distinct !DILocation(line: 2445, column: 17, scope: !5121)
!5292 = !DILocation(line: 2284, column: 9, scope: !5139, inlinedAt: !5291)
!5293 = !DILocation(line: 2285, column: 35, scope: !5152, inlinedAt: !5291)
!5294 = !DILocation(line: 0, scope: !5152, inlinedAt: !5291)
!5295 = !DILocation(line: 2286, column: 19, scope: !5152, inlinedAt: !5291)
!5296 = !DILocation(line: 2292, column: 13, scope: !5156, inlinedAt: !5291)
!5297 = !DILocation(line: 2292, column: 21, scope: !5156, inlinedAt: !5291)
!5298 = !DILocation(line: 2292, column: 30, scope: !5156, inlinedAt: !5291)
!5299 = !DILocation(line: 2292, column: 28, scope: !5156, inlinedAt: !5291)
!5300 = !DILocation(line: 2292, column: 13, scope: !5157, inlinedAt: !5291)
!5301 = !DILocation(line: 2294, column: 26, scope: !5155, inlinedAt: !5291)
!5302 = !DILocation(line: 0, scope: !5155, inlinedAt: !5291)
!5303 = !DILocation(line: 2296, column: 34, scope: !5155, inlinedAt: !5291)
!5304 = !DILocation(line: 2295, column: 13, scope: !5155, inlinedAt: !5291)
!5305 = !DILocation(line: 2299, column: 17, scope: !5176, inlinedAt: !5291)
!5306 = !DILocation(line: 2299, column: 33, scope: !5176, inlinedAt: !5291)
!5307 = !DILocation(line: 2300, column: 9, scope: !5155, inlinedAt: !5291)
!5308 = !DILocation(line: 2302, column: 13, scope: !5156, inlinedAt: !5291)
!5309 = !DILocation(line: 2448, column: 22, scope: !5121)
!5310 = !DILocation(line: 2449, column: 22, scope: !5121)
!5311 = !DILocation(line: 0, scope: !5183, inlinedAt: !5312)
!5312 = distinct !DILocation(line: 2450, column: 17, scope: !5121)
!5313 = !DILocation(line: 2315, column: 10, scope: !5192, inlinedAt: !5312)
!5314 = !DILocation(line: 2315, column: 9, scope: !5183, inlinedAt: !5312)
!5315 = !DILocation(line: 2316, column: 9, scope: !5195, inlinedAt: !5312)
!5316 = !DILocation(line: 2317, column: 9, scope: !5195, inlinedAt: !5312)
!5317 = !DILocation(line: 2319, column: 10, scope: !5183, inlinedAt: !5312)
!5318 = !DILocation(line: 2320, column: 5, scope: !5183, inlinedAt: !5312)
!5319 = !DILocation(line: 2321, column: 5, scope: !5183, inlinedAt: !5312)
!5320 = !DILocation(line: 0, scope: !1953, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 2322, column: 5, scope: !5183, inlinedAt: !5312)
!5322 = !DILocation(line: 173, column: 14, scope: !1953, inlinedAt: !5321)
!5323 = !DILocation(line: 174, column: 9, scope: !1962, inlinedAt: !5321)
!5324 = !DILocation(line: 174, column: 9, scope: !1953, inlinedAt: !5321)
!5325 = !DILocation(line: 175, column: 20, scope: !1962, inlinedAt: !5321)
!5326 = !DILocation(line: 175, column: 15, scope: !1962, inlinedAt: !5321)
!5327 = !DILocation(line: 175, column: 2, scope: !1962, inlinedAt: !5321)
!5328 = !DILocation(line: 177, column: 2, scope: !1962, inlinedAt: !5321)
!5329 = !DILocation(line: 2462, column: 27, scope: !5122)
!5330 = !DILocation(line: 2463, column: 17, scope: !5122)
!5331 = !DILocation(line: 2462, column: 13, scope: !5122)
!5332 = !DILocation(line: 2465, column: 13, scope: !5122)
!5333 = !DILocation(line: 2453, column: 13, scope: !5122)
!5334 = !DILocation(line: 2455, column: 25, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5122, file: !1392, line: 2455, column: 17)
!5336 = !DILocation(line: 2455, column: 17, scope: !5122)
!5337 = !DILocation(line: 2469, column: 17, scope: !5123)
!5338 = distinct !{!5338, !5131, !5339, !1603, !1604}
!5339 = !DILocation(line: 2470, column: 5, scope: !5103)
!5340 = !DILocation(line: 2471, column: 5, scope: !5103)
!5341 = !DISubprogram(name: "Perl_deb", scope: !1616, file: !1616, line: 881, type: !5342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5342 = !DISubroutineType(types: !5343)
!5343 = !{null, !887, null}
!5344 = !DISubprogram(name: "Perl_newSV", scope: !1616, file: !1616, line: 3055, type: !5345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!514, !1466}
!5347 = !DISubprogram(name: "Perl_cv_name", scope: !1616, file: !1616, line: 829, type: !5348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!514, !720, !514, !520}
!5350 = distinct !DISubprogram(name: "Perl_watch", scope: !1392, file: !1392, line: 2564, type: !5351, scopeLine: 2565, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5353)
!5351 = !DISubroutineType(types: !5352)
!5352 = !{null, !895}
!5353 = !{!5354}
!5354 = !DILocalVariable(name: "addr", arg: 1, scope: !5350, file: !1392, line: 2564, type: !895)
!5355 = !DILocation(line: 0, scope: !5350)
!5356 = !DILocation(line: 2568, column: 18, scope: !5350)
!5357 = !DILocation(line: 2569, column: 18, scope: !5350)
!5358 = !DILocation(line: 2569, column: 16, scope: !5350)
!5359 = !DILocation(line: 2570, column: 19, scope: !5350)
!5360 = !DILocation(line: 2571, column: 2, scope: !5350)
!5361 = !DILocation(line: 2571, column: 24, scope: !5350)
!5362 = !DILocation(line: 2570, column: 5, scope: !5350)
!5363 = !DILocation(line: 2572, column: 1, scope: !5350)
!5364 = distinct !DISubprogram(name: "Perl_debprofdump", scope: !1392, file: !1392, line: 2587, type: !2076, scopeLine: 2588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5365)
!5365 = !{!5366}
!5366 = !DILocalVariable(name: "i", scope: !5364, file: !1392, line: 2589, type: !7)
!5367 = !DILocation(line: 2590, column: 10, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5364, file: !1392, line: 2590, column: 9)
!5369 = !DILocation(line: 2590, column: 9, scope: !5364)
!5370 = !DILocation(line: 2593, column: 6, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !1392, line: 2593, column: 6)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !1392, line: 2592, column: 32)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !1392, line: 2592, column: 5)
!5374 = distinct !DILexicalBlock(scope: !5364, file: !1392, line: 2592, column: 5)
!5375 = !DILocation(line: 0, scope: !5364)
!5376 = !DILocation(line: 2593, column: 6, scope: !5372)
!5377 = !DILocation(line: 2594, column: 20, scope: !5371)
!5378 = !DILocation(line: 2595, column: 34, scope: !5371)
!5379 = !DILocation(line: 2595, column: 19, scope: !5371)
!5380 = !DILocation(line: 2596, column: 40, scope: !5371)
!5381 = !DILocation(line: 2594, column: 6, scope: !5371)
!5382 = !DILocation(line: 2592, column: 28, scope: !5373)
!5383 = !DILocation(line: 2592, column: 19, scope: !5373)
!5384 = !DILocation(line: 2592, column: 5, scope: !5374)
!5385 = distinct !{!5385, !5384, !5386, !1603, !1604}
!5386 = !DILocation(line: 2597, column: 5, scope: !5374)
!5387 = !DILocation(line: 2598, column: 1, scope: !5364)
!5388 = !DISubprogram(name: "Perl_cvgv_from_hek", scope: !1616, file: !1616, line: 858, type: !1899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5389 = !DISubprogram(name: "Perl_sv_free2", scope: !1616, file: !1616, line: 4371, type: !5390, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5390 = !DISubroutineType(types: !5391)
!5391 = !{null, !876, !889}
!5392 = !DISubprogram(name: "Perl_newSVuv", scope: !1616, file: !1616, line: 3133, type: !5393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!514, !1491}
!5395 = !DISubprogram(name: "Perl_sv_2mortal", scope: !1616, file: !1616, line: 4114, type: !5396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!514, !876}
!5398 = !DISubprogram(name: "Perl_newSV_type", scope: !1616, file: !1616, line: 3073, type: !5399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!514, !5401}
!5401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!5402 = !DISubprogram(name: "Perl_hv_common_key_len", scope: !1616, file: !1616, line: 1627, type: !5403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!476, !483, !887, !594, !5405, !514, !889}
!5405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!5406 = !DISubprogram(name: "Perl_sv_2uv_flags", scope: !1616, file: !1616, line: 4168, type: !5407, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5407 = !DISubroutineType(types: !5408)
!5408 = !{!532, !876, !910}
!5409 = !DISubprogram(name: "Perl_mg_size", scope: !1616, file: !1616, line: 2697, type: !5410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!594, !514}
!5412 = !DISubprogram(name: "Perl_safesyscalloc", scope: !1616, file: !1616, line: 3746, type: !5413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1619)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!476, !546, !546}
