; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/universal.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/universal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xsub_details = type { ptr, ptr, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.16 }
%union._xmgu = type { ptr }
%union.anon.16 = type { i64 }
%struct.hv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvhv_aux = type { %union._xhvnameu, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32 }
%union._xhvnameu = type { ptr }
%struct.mro_meta = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.18, %union._xivu }
%union.anon.18 = type { i64 }
%union._xivu = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.19, %union._xivu, %union._xnvu }
%union.anon.19 = type { i64 }
%union._xnvu = type { double }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.9, ptr, %union.anon.10, %union.anon.11, %union.anon.12, ptr, %union.anon.13, ptr, i32, i32, i32 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { ptr }
%union.anon.11 = type { ptr }
%union.anon.12 = type { ptr }
%union.anon.13 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu, %union._xnvu }
%union.anon.8 = type { i64 }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.20, %union._xivu }
%union.anon.20 = type { i64 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.io = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu, ptr, %union.anon.15, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { ptr }
%struct.pmop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr, ptr, ptr, i32, %union.anon.21, %union.anon.22, ptr }
%union.anon.21 = type { ptr }
%union.anon.22 = type { ptr }
%struct.regexp = type { ptr, %union._xmgu, i64, %union.anon.6, ptr, ptr, ptr, i32, i64, i64, i64, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i64, i64, i64, i64, i16, ptr }
%union.anon.6 = type { i64 }
%struct.regexp_engine = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.p5rx = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }

@.str = private unnamed_addr constant [10 x i8] c"UNIVERSAL\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"isa\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Usage: %2p::%2p(%s)\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Usage: %2p(%s)\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Usage: CODE(0x%lx)(%s)\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"reference, kind\00", align 1
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"object-ref, method\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Usage: invocant->DOES(kind)\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"sv, failok=0\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"SCALAR[, ON]\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SCALAR\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"SCALAR[, REFCOUNT]\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"hv\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"filehandle[,args]\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"details\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"get_layers: unknown argument '%s'\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%-p(%-p)\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@PL_curpm = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"name[, all ]\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"[all]\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"NULL array element in re::regnames()\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"msixxnp\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"Usage: UNIVERSAL::VERSION(sv, ...)\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"Cannot find version of an unblessed reference\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"%2p does not define $%2p::VERSION--version check failed\00", align 1
@.str.32 = private unnamed_addr constant [62 x i8] c"%-p defines neither package nor VERSION--version check failed\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"qv\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"%2p version %-p required--this is only version %-p\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"v%s\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"Usage: version::new(class, version)\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"lobj, ...\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"lobj is not of type version\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"ver\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"ver is not of type version\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"operation not supported with version object\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"Invalid version format (version required)\00", align 1
@Perl_boot_core_UNIVERSAL.file = internal constant [83 x i8] c"/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/universal.c\00", align 16, !dbg !0
@details = internal constant [51 x %struct.xsub_details] [%struct.xsub_details { ptr @.str.57, ptr @XS_UNIVERSAL_isa, ptr null }, %struct.xsub_details { ptr @.str.58, ptr @XS_UNIVERSAL_can, ptr null }, %struct.xsub_details { ptr @.str.59, ptr @XS_UNIVERSAL_DOES, ptr null }, %struct.xsub_details { ptr @.str.60, ptr @XS_universal_version, ptr null }, %struct.xsub_details { ptr @.str.61, ptr @XS_universal_version, ptr null }, %struct.xsub_details { ptr @.str.62, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.63, ptr @XS_version_new, ptr null }, %struct.xsub_details { ptr @.str.64, ptr @XS_version_new, ptr null }, %struct.xsub_details { ptr @.str.65, ptr @XS_version_stringify, ptr null }, %struct.xsub_details { ptr @.str.66, ptr @XS_version_stringify, ptr null }, %struct.xsub_details { ptr @.str.67, ptr @XS_version_numify, ptr null }, %struct.xsub_details { ptr @.str.68, ptr @XS_version_numify, ptr null }, %struct.xsub_details { ptr @.str.69, ptr @XS_version_normal, ptr null }, %struct.xsub_details { ptr @.str.70, ptr @XS_version_vcmp, ptr null }, %struct.xsub_details { ptr @.str.71, ptr @XS_version_vcmp, ptr null }, %struct.xsub_details { ptr @.str.72, ptr @XS_version_vcmp, ptr null }, %struct.xsub_details { ptr @.str.73, ptr @XS_version_boolean, ptr null }, %struct.xsub_details { ptr @.str.74, ptr @XS_version_boolean, ptr null }, %struct.xsub_details { ptr @.str.75, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.76, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.77, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.78, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.79, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.80, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.81, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.82, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.83, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.84, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.85, ptr @XS_version_noop, ptr null }, %struct.xsub_details { ptr @.str.86, ptr @XS_version_is_alpha, ptr null }, %struct.xsub_details { ptr @.str.87, ptr @XS_version_qv, ptr null }, %struct.xsub_details { ptr @.str.88, ptr @XS_version_qv, ptr null }, %struct.xsub_details { ptr @.str.89, ptr @XS_version_is_qv, ptr null }, %struct.xsub_details { ptr @.str.90, ptr @XS_utf8_is_utf8, ptr null }, %struct.xsub_details { ptr @.str.91, ptr @XS_utf8_valid, ptr null }, %struct.xsub_details { ptr @.str.92, ptr @XS_utf8_encode, ptr null }, %struct.xsub_details { ptr @.str.93, ptr @XS_utf8_decode, ptr null }, %struct.xsub_details { ptr @.str.94, ptr @XS_utf8_upgrade, ptr null }, %struct.xsub_details { ptr @.str.95, ptr @XS_utf8_downgrade, ptr null }, %struct.xsub_details { ptr @.str.47, ptr @XS_utf8_native_to_unicode, ptr null }, %struct.xsub_details { ptr @.str.46, ptr @XS_utf8_unicode_to_native, ptr null }, %struct.xsub_details { ptr @.str.96, ptr @XS_Internals_SvREADONLY, ptr @.str.97 }, %struct.xsub_details { ptr @.str.98, ptr @XS_constant__make_const, ptr @.str.99 }, %struct.xsub_details { ptr @.str.100, ptr @XS_Internals_SvREFCNT, ptr @.str.97 }, %struct.xsub_details { ptr @.str.101, ptr @XS_Internals_hv_clear_placehold, ptr @.str.102 }, %struct.xsub_details { ptr @.str.103, ptr @XS_PerlIO_get_layers, ptr @.str.104 }, %struct.xsub_details { ptr @.str.105, ptr @XS_re_is_regexp, ptr @.str.106 }, %struct.xsub_details { ptr @.str.107, ptr @XS_re_regname, ptr @.str.108 }, %struct.xsub_details { ptr @.str.109, ptr @XS_re_regnames, ptr @.str.110 }, %struct.xsub_details { ptr @.str.111, ptr @XS_re_regnames_count, ptr @.str.21 }, %struct.xsub_details { ptr @.str.112, ptr @XS_re_regexp_pattern, ptr @.str.106 }], align 16, !dbg !843
@.str.46 = private unnamed_addr constant [24 x i8] c"utf8::unicode_to_native\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"utf8::native_to_unicode\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Regexp::\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"DESTROY\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"aa\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"lobj\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"UNIVERSAL::isa\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"UNIVERSAL::can\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"UNIVERSAL::DOES\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"UNIVERSAL::VERSION\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"version::_VERSION\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"version::()\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"version::new\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"version::parse\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"version::(\22\22\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"version::stringify\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"version::(0+\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"version::numify\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"version::normal\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"version::(cmp\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"version::(<=>\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"version::vcmp\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"version::(bool\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"version::boolean\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"version::(+\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"version::(-\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"version::(*\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"version::(/\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"version::(+=\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"version::(-=\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"version::(*=\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"version::(/=\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"version::(abs\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"version::(nomethod\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"version::noop\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"version::is_alpha\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"version::qv\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"version::declare\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"version::is_qv\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"utf8::is_utf8\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"utf8::valid\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"utf8::encode\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"utf8::decode\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"utf8::upgrade\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"utf8::downgrade\00", align 1
@.str.96 = private unnamed_addr constant [22 x i8] c"Internals::SvREADONLY\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"\\[$%@];$\00", align 1
@.str.98 = private unnamed_addr constant [22 x i8] c"constant::_make_const\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"\\[$@]\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"Internals::SvREFCNT\00", align 1
@.str.101 = private unnamed_addr constant [33 x i8] c"Internals::hv_clear_placeholders\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"\\%\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"PerlIO::get_layers\00", align 1
@.str.104 = private unnamed_addr constant [4 x i8] c"*;@\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"re::is_regexp\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"re::regname\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c";$$\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"re::regnames\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c";$\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"re::regnames_count\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"re::regexp_pattern\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_derived_from_sv(ptr noundef %sv, ptr noundef %namesv, i32 noundef %flags) local_unnamed_addr #0 !dbg !877 {
entry:
  %namelen = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %sv, metadata !881, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata ptr %namesv, metadata !882, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i32 %flags, metadata !883, metadata !DIExpression()), !dbg !886
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %namelen) #8, !dbg !887
  %sv_flags = getelementptr inbounds %struct.sv, ptr %namesv, i64 0, i32 2, !dbg !888
  %0 = load i32, ptr %sv_flags, align 4, !dbg !888
  %and = and i32 %0, 2098176, !dbg !888
  %cmp = icmp eq i32 %and, 1024, !dbg !888
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !888

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %namesv, align 8, !dbg !888
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !888
  %2 = load i64, ptr %xpv_cur, align 8, !dbg !888
  call void @llvm.dbg.value(metadata i64 %2, metadata !885, metadata !DIExpression()), !dbg !886
  store i64 %2, ptr %namelen, align 8, !dbg !888
  %sv_u = getelementptr inbounds %struct.sv, ptr %namesv, i64 0, i32 3, !dbg !888
  %3 = load ptr, ptr %sv_u, align 8, !dbg !888
  br label %cond.end, !dbg !888

cond.false:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %namelen, metadata !885, metadata !DIExpression(DW_OP_deref)), !dbg !886
  %call = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %namesv, ptr noundef nonnull %namelen, i32 noundef 2) #8, !dbg !888
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !889
  %.pre9 = load i64, ptr %namelen, align 8, !dbg !891
  br label %cond.end, !dbg !888

cond.end:                                         ; preds = %cond.false, %cond.true
  %4 = phi i64 [ %2, %cond.true ], [ %.pre9, %cond.false ], !dbg !891
  %5 = phi i32 [ %0, %cond.true ], [ %.pre, %cond.false ], !dbg !889
  %cond = phi ptr [ %3, %cond.true ], [ %call, %cond.false ], !dbg !888
  call void @llvm.dbg.value(metadata ptr %cond, metadata !884, metadata !DIExpression()), !dbg !886
  %and2 = and i32 %5, 536870912, !dbg !889
  %6 = or i32 %and2, %flags, !dbg !892
  call void @llvm.dbg.value(metadata i32 %6, metadata !883, metadata !DIExpression()), !dbg !886
  call void @llvm.dbg.value(metadata i64 %4, metadata !885, metadata !DIExpression()), !dbg !886
  %call3 = call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %sv, ptr noundef %cond, i64 noundef %4, i32 noundef %6), !dbg !891
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %namelen) #8, !dbg !893
  ret i1 %call3, !dbg !894
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !895 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %sv, ptr noundef %name, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 !dbg !901 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !906, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata ptr %name, metadata !907, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i64 %len, metadata !908, metadata !DIExpression()), !dbg !914
  call void @llvm.dbg.value(metadata i32 %flags, metadata !909, metadata !DIExpression()), !dbg !914
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !915
  %0 = load i32, ptr %sv_flags, align 4, !dbg !915
  %and = and i32 %0, 2097152, !dbg !915
  %tobool.not = icmp eq i32 %and, 0, !dbg !915
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !915

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %sv) #8, !dbg !915
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !916
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %1 = phi i32 [ %0, %entry ], [ %.pre, %land.rhs ], !dbg !916
  %and3 = and i32 %1, 2048, !dbg !916
  %tobool4.not = icmp eq i32 %and3, 0, !dbg !916
  br i1 %tobool4.not, label %if.else, label %if.then, !dbg !917

if.then:                                          ; preds = %land.end
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !918
  %2 = load ptr, ptr %sv_u, align 8, !dbg !918
  call void @llvm.dbg.value(metadata ptr %2, metadata !906, metadata !DIExpression()), !dbg !914
  %call5 = tail call ptr @Perl_sv_reftype(ptr noundef %2, i32 noundef 0) #8, !dbg !919
  call void @llvm.dbg.value(metadata ptr %call5, metadata !911, metadata !DIExpression()), !dbg !920
  %tobool6.not = icmp eq ptr %call5, null, !dbg !921
  br i1 %tobool6.not, label %if.end, label %land.lhs.true, !dbg !923

land.lhs.true:                                    ; preds = %if.then
  %call7 = tail call i32 @strcmp(ptr noundef nonnull %call5, ptr noundef nonnull dereferenceable(1) %name) #9, !dbg !924
  %tobool8.not = icmp eq i32 %call7, 0, !dbg !924
  br i1 %tobool8.not, label %cleanup28, label %if.end, !dbg !925

if.end:                                           ; preds = %land.lhs.true, %if.then
  %sv_flags10 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2, !dbg !926
  %3 = load i32, ptr %sv_flags10, align 4, !dbg !926
  %and11 = and i32 %3, 1048576, !dbg !926
  %tobool12.not = icmp eq i32 %and11, 0, !dbg !926
  br i1 %tobool12.not, label %cleanup28, label %cleanup, !dbg !928

cleanup:                                          ; preds = %if.end
  %4 = load ptr, ptr %2, align 8, !dbg !929
  %5 = load ptr, ptr %4, align 8, !dbg !929
  call void @llvm.dbg.value(metadata ptr %5, metadata !910, metadata !DIExpression()), !dbg !914
  br label %if.end16

if.else:                                          ; preds = %land.end
  %call15 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %sv, i32 noundef 0) #8, !dbg !930
  call void @llvm.dbg.value(metadata ptr %call15, metadata !910, metadata !DIExpression()), !dbg !914
  br label %if.end16

if.end16:                                         ; preds = %cleanup, %if.else
  %stash.1 = phi ptr [ %5, %cleanup ], [ %call15, %if.else ], !dbg !932
  call void @llvm.dbg.value(metadata ptr %stash.1, metadata !910, metadata !DIExpression()), !dbg !914
  %tobool17.not = icmp eq ptr %stash.1, null, !dbg !933
  br i1 %tobool17.not, label %if.end21, label %land.lhs.true18, !dbg !935

land.lhs.true18:                                  ; preds = %if.end16
  %call19 = tail call fastcc zeroext i1 @S_isa_lookup(ptr noundef nonnull %stash.1, ptr noundef %name, i64 noundef %len, i32 noundef %flags), !dbg !936
  br i1 %call19, label %cleanup28, label %if.end21, !dbg !937

if.end21:                                         ; preds = %land.lhs.true18, %if.end16
  %call22 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str, i32 noundef 9, i32 noundef 0) #8, !dbg !938
  call void @llvm.dbg.value(metadata ptr %call22, metadata !910, metadata !DIExpression()), !dbg !914
  %tobool23.not = icmp eq ptr %call22, null, !dbg !939
  br i1 %tobool23.not, label %cleanup28, label %land.rhs24, !dbg !940

land.rhs24:                                       ; preds = %if.end21
  %call25 = tail call fastcc zeroext i1 @S_isa_lookup(ptr noundef nonnull %call22, ptr noundef %name, i64 noundef %len, i32 noundef %flags), !dbg !941
  br label %cleanup28

cleanup28:                                        ; preds = %if.end, %land.lhs.true, %if.end21, %land.rhs24, %land.lhs.true18
  %retval.1 = phi i1 [ true, %land.lhs.true18 ], [ false, %if.end21 ], [ %call25, %land.rhs24 ], [ false, %if.end ], [ true, %land.lhs.true ]
  ret i1 %retval.1, !dbg !942
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_derived_from(ptr noundef %sv, ptr noundef %name) local_unnamed_addr #0 !dbg !943 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !947, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr %name, metadata !948, metadata !DIExpression()), !dbg !949
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #9, !dbg !950
  %call1 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %sv, ptr noundef %name, i64 noundef %call, i32 noundef 0), !dbg !950
  ret i1 %call1, !dbg !951
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_derived_from_pv(ptr noundef %sv, ptr noundef %name, i32 noundef %flags) local_unnamed_addr #0 !dbg !952 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !956, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata ptr %name, metadata !957, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.value(metadata i32 %flags, metadata !958, metadata !DIExpression()), !dbg !959
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #9, !dbg !960
  %call1 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %sv, ptr noundef %name, i64 noundef %call, i32 noundef %flags), !dbg !960
  ret i1 %call1, !dbg !961
}

declare !dbg !962 i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #3

declare !dbg !965 ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !969 ptr @Perl_gv_stashsv(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @S_isa_lookup(ptr noundef %stash, ptr noundef %name, i64 noundef %len, i32 noundef %flags) unnamed_addr #0 !dbg !972 {
entry:
  call void @llvm.dbg.value(metadata ptr %stash, metadata !976, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr %name, metadata !977, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i64 %len, metadata !978, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 %flags, metadata !979, metadata !DIExpression()), !dbg !991
  %sv_u = getelementptr inbounds %struct.hv, ptr %stash, i64 0, i32 3, !dbg !992
  %0 = load ptr, ptr %sv_u, align 8, !dbg !992
  %1 = load ptr, ptr %stash, align 8, !dbg !992
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %1, i64 0, i32 3, !dbg !992
  %2 = load i64, ptr %xhv_max, align 8, !dbg !992
  %add = add i64 %2, 1, !dbg !992
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 %add, !dbg !992
  %xhv_mro_meta = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 5, !dbg !992
  %3 = load ptr, ptr %xhv_mro_meta, align 8, !dbg !992
  %tobool.not = icmp eq ptr %3, null, !dbg !992
  br i1 %tobool.not, label %cond.false, label %cond.end, !dbg !992

cond.false:                                       ; preds = %entry
  %call = tail call ptr @Perl_mro_meta_init(ptr noundef nonnull %stash) #8, !dbg !992
  br label %cond.end, !dbg !992

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi ptr [ %call, %cond.false ], [ %3, %entry ], !dbg !992
  call void @llvm.dbg.value(metadata ptr %cond, metadata !980, metadata !DIExpression()), !dbg !991
  %isa7 = getelementptr inbounds %struct.mro_meta, ptr %cond, i64 0, i32 6, !dbg !993
  %4 = load ptr, ptr %isa7, align 8, !dbg !993
  call void @llvm.dbg.value(metadata ptr %4, metadata !984, metadata !DIExpression()), !dbg !991
  %tobool8.not = icmp eq ptr %4, null, !dbg !994
  br i1 %tobool8.not, label %if.then, label %if.end, !dbg !996

if.then:                                          ; preds = %cond.end
  %call9 = tail call ptr @Perl_mro_get_linear_isa(ptr noundef nonnull %stash) #8, !dbg !997
  %5 = load ptr, ptr %isa7, align 8, !dbg !999
  call void @llvm.dbg.value(metadata ptr %5, metadata !984, metadata !DIExpression()), !dbg !991
  br label %if.end, !dbg !1000

if.end:                                           ; preds = %if.then, %cond.end
  %isa.0 = phi ptr [ %4, %cond.end ], [ %5, %if.then ], !dbg !991
  call void @llvm.dbg.value(metadata ptr %isa.0, metadata !984, metadata !DIExpression()), !dbg !991
  %and = lshr i32 %flags, 29, !dbg !1001
  %and.lobit = and i32 %and, 1, !dbg !1001
  %call13 = tail call ptr @Perl_hv_common(ptr noundef %isa.0, ptr noundef null, ptr noundef %name, i64 noundef %len, i32 noundef %and.lobit, i32 noundef 8, ptr noundef null, i32 noundef 0) #8, !dbg !1001
  %tobool14.not = icmp eq ptr %call13, null, !dbg !1001
  br i1 %tobool14.not, label %if.end16, label %cleanup138, !dbg !1003

if.end16:                                         ; preds = %if.end
  %conv = trunc i64 %len to i32, !dbg !1004
  %call17 = tail call ptr @Perl_gv_stashpvn(ptr noundef %name, i32 noundef %conv, i32 noundef %flags) #8, !dbg !1004
  call void @llvm.dbg.value(metadata ptr %call17, metadata !985, metadata !DIExpression()), !dbg !991
  %tobool18.not = icmp eq ptr %call17, null, !dbg !1005
  br i1 %tobool18.not, label %if.end137, label %if.then19, !dbg !1006

if.then19:                                        ; preds = %if.end16
  %sv_flags = getelementptr inbounds %struct.hv, ptr %call17, i64 0, i32 2, !dbg !1007
  %6 = load i32, ptr %sv_flags, align 4, !dbg !1007
  %and20 = and i32 %6, 33554432, !dbg !1007
  %tobool21.not = icmp eq i32 %and20, 0, !dbg !1007
  %sv_u92.phi.trans.insert = getelementptr inbounds %struct.hv, ptr %call17, i64 0, i32 3
  %.pre = load ptr, ptr %sv_u92.phi.trans.insert, align 8, !dbg !1008
  %.pre191 = load ptr, ptr %call17, align 8, !dbg !1008
  %xhv_max94.phi.trans.insert = getelementptr inbounds %struct.xpvhv, ptr %.pre191, i64 0, i32 3
  %.pre192 = load i64, ptr %xhv_max94.phi.trans.insert, align 8, !dbg !1008
  %.pre193 = add i64 %.pre192, 1, !dbg !1008
  %arrayidx96.phi.trans.insert = getelementptr inbounds ptr, ptr %.pre, i64 %.pre193
  %.pre194 = load ptr, ptr %arrayidx96.phi.trans.insert, align 8, !dbg !1008
  br i1 %tobool21.not, label %if.then87, label %land.lhs.true, !dbg !1007

land.lhs.true:                                    ; preds = %if.then19
  %tobool27.not = icmp eq ptr %.pre194, null, !dbg !1007
  br i1 %tobool27.not, label %if.then87, label %cond.true28, !dbg !1007

cond.true28:                                      ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx96.phi.trans.insert, i64 0, i32 4, !dbg !1007
  %7 = load i32, ptr %xhv_name_count, align 4, !dbg !1007
  %cmp = icmp sgt i32 %7, 0, !dbg !1007
  br i1 %cmp, label %cond.end84, label %cond.false43, !dbg !1007

cond.false43:                                     ; preds = %cond.true28
  %cmp50 = icmp slt i32 %7, -1, !dbg !1007
  br i1 %cmp50, label %cond.true52, label %cond.false60, !dbg !1007

cond.true52:                                      ; preds = %cond.false43
  %arrayidx59 = getelementptr inbounds ptr, ptr %.pre194, i64 1, !dbg !1007
  br label %cond.end84, !dbg !1007

cond.false60:                                     ; preds = %cond.false43
  %cmp67 = icmp eq i32 %7, -1, !dbg !1007
  br i1 %cmp67, label %if.then87, label %if.end126, !dbg !1007

cond.end84:                                       ; preds = %cond.true28, %cond.true52
  %cond85.in = phi ptr [ %arrayidx59, %cond.true52 ], [ %.pre194, %cond.true28 ]
  %cond85 = load ptr, ptr %cond85.in, align 8, !dbg !1007
  call void @llvm.dbg.value(metadata ptr %cond85, metadata !988, metadata !DIExpression()), !dbg !1008
  %tobool86.not = icmp eq ptr %cond85, null, !dbg !1009
  br i1 %tobool86.not, label %if.then87, label %if.end126, !dbg !1011

if.then87:                                        ; preds = %if.then19, %cond.false60, %land.lhs.true, %cond.end84
  %8 = phi ptr [ %.pre194, %cond.false60 ], [ null, %land.lhs.true ], [ %.pre194, %cond.end84 ], [ %.pre194, %if.then19 ], !dbg !1012
  %9 = xor i1 %tobool21.not, true, !dbg !1012
  tail call void @llvm.assume(i1 %9), !dbg !1012
  %arrayidx96 = getelementptr inbounds ptr, ptr %.pre, i64 %.pre193, !dbg !1012
  %xhv_name_count105 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx96, i64 0, i32 4, !dbg !1012
  %10 = load i32, ptr %xhv_name_count105, align 4, !dbg !1012
  %tobool106.not = icmp eq i32 %10, 0, !dbg !1012
  br i1 %tobool106.not, label %if.end126, label %cond.true107, !dbg !1012

cond.true107:                                     ; preds = %if.then87
  %11 = load ptr, ptr %8, align 8, !dbg !1012
  br label %if.end126, !dbg !1012

if.end126:                                        ; preds = %cond.false60, %cond.true107, %if.then87, %cond.end84
  %canon_name.0 = phi ptr [ %cond85, %cond.end84 ], [ %11, %cond.true107 ], [ %8, %if.then87 ], [ %.pre194, %cond.false60 ], !dbg !1008
  call void @llvm.dbg.value(metadata ptr %canon_name.0, metadata !988, metadata !DIExpression()), !dbg !1008
  %hek_key = getelementptr inbounds %struct.hek, ptr %canon_name.0, i64 0, i32 2, !dbg !1013
  %hek_len = getelementptr inbounds %struct.hek, ptr %canon_name.0, i64 0, i32 1, !dbg !1013
  %12 = load i32, ptr %hek_len, align 4, !dbg !1013
  %conv127 = sext i32 %12 to i64, !dbg !1013
  %add.ptr = getelementptr inbounds i8, ptr %hek_key, i64 %conv127, !dbg !1013
  %add.ptr131 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !1013
  %13 = load i8, ptr %add.ptr131, align 1, !dbg !1013
  %conv132 = zext i8 %13 to i32, !dbg !1013
  %14 = load i32, ptr %canon_name.0, align 4, !dbg !1013
  %call133 = tail call ptr @Perl_hv_common(ptr noundef %isa.0, ptr noundef null, ptr noundef nonnull %hek_key, i64 noundef %conv127, i32 noundef %conv132, i32 noundef 8, ptr noundef null, i32 noundef %14) #8, !dbg !1013
  %tobool134.not = icmp eq ptr %call133, null, !dbg !1013
  br i1 %tobool134.not, label %if.end137, label %cleanup138

if.end137:                                        ; preds = %if.end126, %if.end16
  br label %cleanup138, !dbg !1015

cleanup138:                                       ; preds = %if.end, %if.end126, %if.end137
  %retval.1 = phi i1 [ false, %if.end137 ], [ true, %if.end126 ], [ true, %if.end ], !dbg !991
  ret i1 %retval.1, !dbg !1016
}

declare !dbg !1017 ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_does_sv(ptr noundef %sv, ptr noundef %namesv, i32 %flags) local_unnamed_addr #0 !dbg !1020 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1022, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata ptr %namesv, metadata !1023, metadata !DIExpression()), !dbg !1032
  call void @llvm.dbg.value(metadata i32 undef, metadata !1024, metadata !DIExpression()), !dbg !1032
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1033
  call void @llvm.dbg.value(metadata ptr %0, metadata !1028, metadata !DIExpression()), !dbg !1032
  tail call void @Perl_push_scope() #8, !dbg !1034
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #8, !dbg !1035
  %1 = load i64, ptr @PL_tmps_ix, align 8, !dbg !1035
  store i64 %1, ptr @PL_tmps_floor, align 8, !dbg !1035
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !1036
  %2 = load i32, ptr %sv_flags, align 4, !dbg !1036
  %and = and i32 %2, 2097152, !dbg !1036
  %tobool.not = icmp eq i32 %and, 0, !dbg !1036
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !1036

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %sv) #8, !dbg !1036
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !1037
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %3 = phi i32 [ %2, %entry ], [ %.pre, %land.rhs ], !dbg !1037
  %and3 = and i32 %3, 65280, !dbg !1037
  %tobool4.not = icmp ne i32 %and3, 0, !dbg !1037
  %and6 = and i32 %3, 255, !dbg !1037
  %cmp = icmp eq i32 %and6, 8, !dbg !1037
  %or.cond = or i1 %tobool4.not, %cmp, !dbg !1037
  %and9 = and i32 %3, 16826623, !dbg !1037
  %cmp10 = icmp eq i32 %and9, 16777226, !dbg !1037
  %or.cond193 = select i1 %or.cond, i1 true, i1 %cmp10, !dbg !1037
  br i1 %or.cond193, label %lor.lhs.false11, label %cleanup, !dbg !1037

lor.lhs.false11:                                  ; preds = %land.end
  %and13 = and i32 %3, 2048, !dbg !1039
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !1039
  br i1 %tobool14.not, label %lor.lhs.false15, label %if.end, !dbg !1040

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %and17 = and i32 %3, 1024, !dbg !1041
  %tobool18.not = icmp eq i32 %and17, 0, !dbg !1041
  br i1 %tobool18.not, label %cleanup, label %land.lhs.true, !dbg !1042

land.lhs.true:                                    ; preds = %lor.lhs.false15
  %4 = load ptr, ptr %sv, align 8, !dbg !1043
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %4, i64 0, i32 2, !dbg !1043
  %5 = load i64, ptr %xpv_cur, align 8, !dbg !1043
  %tobool19.not = icmp eq i64 %5, 0, !dbg !1043
  br i1 %tobool19.not, label %cleanup, label %if.end, !dbg !1044

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false11
  %call20 = tail call i32 @Perl_sv_isobject(ptr noundef nonnull %sv) #8, !dbg !1045
  %tobool21.not = icmp eq i32 %call20, 0, !dbg !1045
  br i1 %tobool21.not, label %if.end24, label %if.then22, !dbg !1047

if.then22:                                        ; preds = %if.end
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !1048
  %6 = load ptr, ptr %sv_u, align 8, !dbg !1048
  %call23 = tail call ptr @Perl_sv_ref(ptr noundef null, ptr noundef %6, i32 noundef 1) #8, !dbg !1048
  call void @llvm.dbg.value(metadata ptr %call23, metadata !1025, metadata !DIExpression()), !dbg !1032
  br label %if.end24, !dbg !1050

if.end24:                                         ; preds = %if.end, %if.then22
  %classname.0 = phi ptr [ %call23, %if.then22 ], [ %sv, %if.end ], !dbg !1051
  call void @llvm.dbg.value(metadata ptr %classname.0, metadata !1025, metadata !DIExpression()), !dbg !1032
  %call25 = tail call i32 @Perl_sv_eq_flags(ptr noundef %classname.0, ptr noundef %namesv, i32 noundef 2) #8, !dbg !1052
  %tobool26.not = icmp eq i32 %call25, 0, !dbg !1052
  br i1 %tobool26.not, label %do.body, label %cleanup, !dbg !1054

do.body:                                          ; preds = %if.end24
  %7 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1055
  %incdec.ptr = getelementptr inbounds i32, ptr %7, i64 1, !dbg !1055
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1055
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1029, metadata !DIExpression()), !dbg !1057
  %8 = load ptr, ptr @PL_markstack_max, align 8, !dbg !1055
  %cmp29 = icmp eq ptr %incdec.ptr, %8, !dbg !1055
  br i1 %cmp29, label %if.then32, label %if.end34, !dbg !1058

if.then32:                                        ; preds = %do.body
  %call33 = tail call ptr @Perl_markstack_grow() #8, !dbg !1055
  call void @llvm.dbg.value(metadata ptr %call33, metadata !1029, metadata !DIExpression()), !dbg !1057
  br label %if.end34, !dbg !1055

if.end34:                                         ; preds = %do.body, %if.then32
  %mark_stack_entry.0 = phi ptr [ %call33, %if.then32 ], [ %incdec.ptr, %do.body ], !dbg !1055
  call void @llvm.dbg.value(metadata ptr %mark_stack_entry.0, metadata !1029, metadata !DIExpression()), !dbg !1057
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !1058
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1058
  %sub.ptr.rhs.cast = ptrtoint ptr %9 to i64, !dbg !1058
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1058
  %10 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1058
  %conv = trunc i64 %10 to i32, !dbg !1058
  store i32 %conv, ptr %mark_stack_entry.0, align 4, !dbg !1058
  %11 = load ptr, ptr @PL_stack_max, align 8, !dbg !1059
  %sub.ptr.lhs.cast36 = ptrtoint ptr %11 to i64, !dbg !1059
  %sub.ptr.sub38 = sub i64 %sub.ptr.lhs.cast36, %sub.ptr.lhs.cast, !dbg !1059
  %cmp40 = icmp slt i64 %sub.ptr.sub38, 16, !dbg !1059
  br i1 %cmp40, label %if.then44, label %do.end48, !dbg !1062

if.then44:                                        ; preds = %if.end34
  %call45 = tail call ptr @Perl_stack_grow(ptr noundef %0, ptr noundef %0, i64 noundef 2) #8, !dbg !1063
  call void @llvm.dbg.value(metadata ptr %call45, metadata !1028, metadata !DIExpression()), !dbg !1032
  br label %do.end48, !dbg !1063

do.end48:                                         ; preds = %if.end34, %if.then44
  %sp.0 = phi ptr [ %call45, %if.then44 ], [ %0, %if.end34 ], !dbg !1032
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !1028, metadata !DIExpression()), !dbg !1032
  %incdec.ptr49 = getelementptr inbounds ptr, ptr %sp.0, i64 1, !dbg !1065
  call void @llvm.dbg.value(metadata ptr %incdec.ptr49, metadata !1028, metadata !DIExpression()), !dbg !1032
  store ptr %sv, ptr %incdec.ptr49, align 8, !dbg !1065
  %incdec.ptr50 = getelementptr inbounds ptr, ptr %sp.0, i64 2, !dbg !1066
  call void @llvm.dbg.value(metadata ptr %incdec.ptr50, metadata !1028, metadata !DIExpression()), !dbg !1032
  store ptr %namesv, ptr %incdec.ptr50, align 8, !dbg !1066
  store ptr %incdec.ptr50, ptr @PL_stack_sp, align 8, !dbg !1067
  %call51 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.1, i64 noundef 3, i32 noundef 524288) #8, !dbg !1068
  call void @llvm.dbg.value(metadata ptr %call51, metadata !1027, metadata !DIExpression()), !dbg !1032
  %sv_flags52 = getelementptr inbounds %struct.sv, ptr %call51, i64 0, i32 2, !dbg !1069
  %12 = load i32, ptr %sv_flags52, align 4, !dbg !1069
  %or = or i32 %12, 32768, !dbg !1069
  store i32 %or, ptr %sv_flags52, align 4, !dbg !1069
  %call53 = tail call i32 @Perl_call_sv(ptr noundef %call51, i32 noundef 130) #8, !dbg !1070
  %13 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1071
  call void @llvm.dbg.value(metadata ptr %13, metadata !1028, metadata !DIExpression()), !dbg !1032
  %14 = load ptr, ptr %13, align 8, !dbg !1072
  %tobool54.not = icmp eq ptr %14, null, !dbg !1072
  br i1 %tobool54.not, label %land.end143, label %land.rhs57, !dbg !1072

land.rhs57:                                       ; preds = %do.end48
  %sv_flags58 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 2, !dbg !1072
  %15 = load i32, ptr %sv_flags58, align 4, !dbg !1072
  %and59 = and i32 %15, 2097152, !dbg !1072
  %tobool60.not = icmp eq i32 %and59, 0, !dbg !1072
  br i1 %tobool60.not, label %cond.false66, label %cond.true63, !dbg !1072

cond.true63:                                      ; preds = %land.rhs57
  %call64 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %14, i32 noundef 2) #8, !dbg !1072
  br label %land.end143, !dbg !1072

cond.false66:                                     ; preds = %land.rhs57
  %and68 = and i32 %15, 65280, !dbg !1072
  %tobool69.not = icmp ne i32 %and68, 0, !dbg !1072
  %and72 = and i32 %15, 255, !dbg !1072
  %cmp73 = icmp eq i32 %and72, 8, !dbg !1072
  %or.cond194 = or i1 %tobool69.not, %cmp73, !dbg !1072
  %and77 = and i32 %15, 16826623, !dbg !1072
  %cmp78 = icmp eq i32 %and77, 16777226, !dbg !1072
  %or.cond195 = select i1 %or.cond194, i1 true, i1 %cmp78, !dbg !1072
  br i1 %or.cond195, label %cond.false81, label %land.end143, !dbg !1072

cond.false81:                                     ; preds = %cond.false66
  %and83 = and i32 %15, 1024, !dbg !1072
  %tobool84.not = icmp eq i32 %and83, 0, !dbg !1072
  br i1 %tobool84.not, label %cond.false105, label %cond.true85, !dbg !1072

cond.true85:                                      ; preds = %cond.false81
  %16 = load ptr, ptr %14, align 8, !dbg !1072
  %tobool87.not = icmp eq ptr %16, null, !dbg !1072
  br i1 %tobool87.not, label %land.end143, label %land.rhs88, !dbg !1072

land.rhs88:                                       ; preds = %cond.true85
  %xpv_cur90 = getelementptr inbounds %struct.xpv, ptr %16, i64 0, i32 2, !dbg !1072
  %17 = load i64, ptr %xpv_cur90, align 8, !dbg !1072
  %cmp91 = icmp ugt i64 %17, 1, !dbg !1072
  br i1 %cmp91, label %land.end143, label %lor.rhs, !dbg !1072

lor.rhs:                                          ; preds = %land.rhs88
  %tobool95.not = icmp eq i64 %17, 0, !dbg !1072
  br i1 %tobool95.not, label %land.end143, label %land.rhs96, !dbg !1072

land.rhs96:                                       ; preds = %lor.rhs
  %sv_u97 = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 3, !dbg !1072
  %18 = load ptr, ptr %sv_u97, align 8, !dbg !1072
  %19 = load i8, ptr %18, align 1, !dbg !1072
  %cmp99 = icmp ne i8 %19, 48, !dbg !1072
  br label %land.end143

cond.false105:                                    ; preds = %cond.false81
  %and107 = and i32 %15, 768, !dbg !1072
  %tobool108.not = icmp eq i32 %and107, 0, !dbg !1072
  br i1 %tobool108.not, label %cond.false133, label %cond.true109, !dbg !1072

cond.true109:                                     ; preds = %cond.false105
  %and111 = and i32 %15, 256, !dbg !1072
  %tobool112.not = icmp eq i32 %and111, 0, !dbg !1072
  br i1 %tobool112.not, label %lor.rhs117, label %land.lhs.true113, !dbg !1072

land.lhs.true113:                                 ; preds = %cond.true109
  %20 = load ptr, ptr %14, align 8, !dbg !1072
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %20, i64 0, i32 4, !dbg !1072
  %21 = load i64, ptr %xiv_u, align 8, !dbg !1072
  %cmp115.not = icmp eq i64 %21, 0, !dbg !1072
  br i1 %cmp115.not, label %lor.rhs117, label %land.end143, !dbg !1072

lor.rhs117:                                       ; preds = %land.lhs.true113, %cond.true109
  %and119 = and i32 %15, 512, !dbg !1072
  %tobool120.not = icmp eq i32 %and119, 0, !dbg !1072
  br i1 %tobool120.not, label %land.end143, label %land.rhs121, !dbg !1072

land.rhs121:                                      ; preds = %lor.rhs117
  %22 = load ptr, ptr %14, align 8, !dbg !1072
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %22, i64 0, i32 5, !dbg !1072
  %23 = load double, ptr %xnv_u, align 8, !dbg !1072
  %cmp123 = fcmp uno double %23, 0.000000e+00, !dbg !1072
  br i1 %cmp123, label %land.end143, label %lor.rhs124, !dbg !1072

lor.rhs124:                                       ; preds = %land.rhs121
  %cmp127 = fcmp une double %23, 0.000000e+00, !dbg !1072
  br label %land.end143, !dbg !1072

cond.false133:                                    ; preds = %cond.false105
  %call134 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %14, i32 noundef 0) #8, !dbg !1072
  br label %land.end143, !dbg !1072

land.end143:                                      ; preds = %cond.true63, %cond.false133, %cond.false66, %land.rhs88, %land.rhs96, %lor.rhs, %cond.true85, %lor.rhs117, %lor.rhs124, %land.rhs121, %land.lhs.true113, %do.end48
  %24 = phi i1 [ false, %do.end48 ], [ %call64, %cond.true63 ], [ %call134, %cond.false133 ], [ false, %cond.false66 ], [ false, %cond.true85 ], [ true, %land.rhs88 ], [ false, %lor.rhs ], [ %cmp99, %land.rhs96 ], [ true, %land.lhs.true113 ], [ false, %lor.rhs117 ], [ true, %land.rhs121 ], [ %cmp127, %lor.rhs124 ], !dbg !1032
  call void @llvm.dbg.value(metadata i1 %24, metadata !1026, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1032
  %25 = load i64, ptr @PL_tmps_ix, align 8, !dbg !1073
  %26 = load i64, ptr @PL_tmps_floor, align 8, !dbg !1073
  %cmp145 = icmp sgt i64 %25, %26, !dbg !1073
  br i1 %cmp145, label %if.then147, label %cleanup, !dbg !1075

if.then147:                                       ; preds = %land.end143
  tail call void @Perl_free_tmps() #8, !dbg !1073
  br label %cleanup, !dbg !1073

cleanup:                                          ; preds = %land.end143, %if.then147, %if.end24, %lor.lhs.false15, %land.lhs.true, %land.end
  %retval.0 = phi i1 [ false, %land.end ], [ false, %land.lhs.true ], [ false, %lor.lhs.false15 ], [ true, %if.end24 ], [ %24, %if.then147 ], [ %24, %land.end143 ], !dbg !1032
  tail call void @Perl_pop_scope() #8, !dbg !1032
  ret i1 %retval.0, !dbg !1076
}

declare !dbg !1077 void @Perl_push_scope() local_unnamed_addr #3

declare !dbg !1078 void @Perl_save_strlen(ptr noundef) local_unnamed_addr #3

declare !dbg !1081 void @Perl_pop_scope() local_unnamed_addr #3

declare !dbg !1082 i32 @Perl_sv_isobject(ptr noundef) local_unnamed_addr #3

declare !dbg !1083 ptr @Perl_sv_ref(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1086 i32 @Perl_sv_eq_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1089 ptr @Perl_markstack_grow() local_unnamed_addr #3

declare !dbg !1092 ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1095 ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1098 i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1102 zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1105 void @Perl_free_tmps() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_does(ptr noundef %sv, ptr noundef %name) local_unnamed_addr #0 !dbg !1106 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1108, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata ptr %name, metadata !1109, metadata !DIExpression()), !dbg !1110
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #9, !dbg !1111
  %call1 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %name, i64 noundef %call, i32 noundef 524288) #8, !dbg !1111
  %call2 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %sv, ptr noundef %call1, i32 undef), !dbg !1111
  ret i1 %call2, !dbg !1112
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_does_pv(ptr noundef %sv, ptr noundef %name, i32 noundef %flags) local_unnamed_addr #0 !dbg !1113 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1115, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata ptr %name, metadata !1116, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1117, metadata !DIExpression()), !dbg !1118
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #9, !dbg !1119
  %or = or i32 %flags, 524288, !dbg !1119
  %call1 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %name, i64 noundef %call, i32 noundef %or) #8, !dbg !1119
  %call2 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %sv, ptr noundef %call1, i32 undef), !dbg !1119
  ret i1 %call2, !dbg !1120
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_sv_does_pvn(ptr noundef %sv, ptr noundef %name, i64 noundef %len, i32 noundef %flags) local_unnamed_addr #0 !dbg !1121 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1123, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr %name, metadata !1124, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i64 %len, metadata !1125, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1126, metadata !DIExpression()), !dbg !1127
  %or = or i32 %flags, 524288, !dbg !1128
  %call = tail call ptr @Perl_newSVpvn_flags(ptr noundef %name, i64 noundef %len, i32 noundef %or) #8, !dbg !1128
  %call1 = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %sv, ptr noundef %call, i32 undef), !dbg !1128
  ret i1 %call1, !dbg !1129
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef %params) local_unnamed_addr #0 !dbg !1130 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1137, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %params, metadata !1138, metadata !DIExpression()), !dbg !1147
  %0 = load ptr, ptr %cv, align 8, !dbg !1148
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 12, !dbg !1148
  %1 = load i32, ptr %xcv_flags, align 4, !dbg !1148
  %and = and i32 %1, 32768, !dbg !1148
  %tobool.not = icmp eq i32 %and, 0, !dbg !1148
  br i1 %tobool.not, label %cond.end, label %S_CvGV.exit, !dbg !1148

cond.end:                                         ; preds = %entry
  %xcv_gv_u = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 7, !dbg !1149
  %2 = load ptr, ptr %xcv_gv_u, align 8, !dbg !1150
  call void @llvm.dbg.value(metadata ptr %2, metadata !1139, metadata !DIExpression()), !dbg !1147
  %tobool2.not = icmp eq ptr %2, null, !dbg !1151
  br i1 %tobool2.not, label %if.end102, label %got_gv, !dbg !1152

got_gv:                                           ; preds = %S_CvGV.exit, %cond.end
  %gv.0 = phi ptr [ %2, %cond.end ], [ %call.i, %S_CvGV.exit ], !dbg !1147
  call void @llvm.dbg.value(metadata ptr %gv.0, metadata !1139, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.label(metadata !1146), !dbg !1153
  %3 = load ptr, ptr %gv.0, align 8, !dbg !1154
  %xnv_u = getelementptr inbounds %struct.xpvgv, ptr %3, i64 0, i32 5, !dbg !1154
  %4 = load ptr, ptr %xnv_u, align 8, !dbg !1154
  call void @llvm.dbg.value(metadata ptr %4, metadata !1142, metadata !DIExpression()), !dbg !1155
  %sv_flags = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 2, !dbg !1156
  %5 = load i32, ptr %sv_flags, align 4, !dbg !1156
  %and4 = and i32 %5, 33554432, !dbg !1156
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !1156
  br i1 %tobool5.not, label %if.else, label %land.lhs.true, !dbg !1156

land.lhs.true:                                    ; preds = %got_gv
  %sv_u = getelementptr inbounds %struct.hv, ptr %4, i64 0, i32 3, !dbg !1156
  %6 = load ptr, ptr %sv_u, align 8, !dbg !1156
  %7 = load ptr, ptr %4, align 8, !dbg !1156
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %7, i64 0, i32 3, !dbg !1156
  %8 = load i64, ptr %xhv_max, align 8, !dbg !1156
  %add = add i64 %8, 1, !dbg !1156
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %add, !dbg !1156
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !1156
  %tobool7.not = icmp eq ptr %9, null, !dbg !1156
  br i1 %tobool7.not, label %if.else, label %land.lhs.true8, !dbg !1156

land.lhs.true8:                                   ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !1156
  %10 = load i32, ptr %xhv_name_count, align 4, !dbg !1156
  %tobool14.not = icmp eq i32 %10, 0, !dbg !1156
  br i1 %tobool14.not, label %cond.end94, label %cond.true15, !dbg !1158

cond.true15:                                      ; preds = %land.lhs.true8
  %11 = load ptr, ptr %9, align 8, !dbg !1156
  %tobool22.not = icmp eq ptr %11, null, !dbg !1156
  br i1 %tobool22.not, label %if.else, label %cond.end94, !dbg !1156

cond.end94:                                       ; preds = %cond.true15, %land.lhs.true8
  %cond95 = phi ptr [ %9, %land.lhs.true8 ], [ %11, %cond.true15 ], !dbg !1159
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %3, i64 0, i32 4, !dbg !1160
  %12 = load ptr, ptr %xiv_u, align 8, !dbg !1160
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef nonnull %cond95, ptr noundef %12, ptr noundef %params) #8, !dbg !1161
  br label %if.end103, !dbg !1161

if.else:                                          ; preds = %got_gv, %land.lhs.true, %cond.true15
  %xiv_u98 = getelementptr inbounds %struct.xpvgv, ptr %3, i64 0, i32 4, !dbg !1162
  %13 = load ptr, ptr %xiv_u98, align 8, !dbg !1162
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3, ptr noundef %13, ptr noundef %params) #8, !dbg !1163
  br label %if.end103

S_CvGV.exit:                                      ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %2, metadata !1139, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1164, metadata !DIExpression()) #8, !dbg !1170
  %call.i = tail call ptr @Perl_cvgv_from_hek(ptr noundef nonnull %cv) #8, !dbg !1174
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1139, metadata !DIExpression()), !dbg !1147
  %tobool100.not = icmp eq ptr %call.i, null, !dbg !1175
  br i1 %tobool100.not, label %if.end102, label %got_gv, !dbg !1176

if.end102:                                        ; preds = %cond.end, %S_CvGV.exit
  %14 = ptrtoint ptr %cv to i64, !dbg !1177
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i64 noundef %14, ptr noundef %params) #8, !dbg !1178
  br label %if.end103

if.end103:                                        ; preds = %cond.end94, %if.else, %if.end102
  ret void, !dbg !1179
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !1180 void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_UNIVERSAL_isa(ptr noundef %cv) #0 !dbg !1183 {
entry:
  %namelen.i = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1185, metadata !DIExpression()), !dbg !1200
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %0, metadata !1186, metadata !DIExpression()), !dbg !1200
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1201
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1201
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1201
  %2 = load i32, ptr %1, align 4, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %2, metadata !1187, metadata !DIExpression()), !dbg !1200
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %2, metadata !1187, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1200
  %idx.ext = sext i32 %2 to i64, !dbg !1201
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1201
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1188, metadata !DIExpression()), !dbg !1200
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1201
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1201
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1201
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1201
  %conv = trunc i64 %4 to i32, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1189, metadata !DIExpression()), !dbg !1200
  %cmp.not = icmp eq i32 %conv, 2, !dbg !1202
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !1203

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.5), !dbg !1204
  br label %cleanup50, !dbg !1205

if.else:                                          ; preds = %entry
  %inc = add nsw i32 %2, 1, !dbg !1201
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1187, metadata !DIExpression()), !dbg !1200
  %idxprom = sext i32 %inc to i64, !dbg !1206
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1206
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %5, metadata !1190, metadata !DIExpression()), !dbg !1207
  %sv_flags = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1208
  %6 = load i32, ptr %sv_flags, align 4, !dbg !1208
  %and = and i32 %6, 2097152, !dbg !1208
  %tobool.not = icmp eq i32 %and, 0, !dbg !1208
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !1208

land.rhs:                                         ; preds = %if.else
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %5) #8, !dbg !1208
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !1209
  br label %land.end

land.end:                                         ; preds = %if.else, %land.rhs
  %7 = phi i32 [ %6, %if.else ], [ %.pre, %land.rhs ], !dbg !1209
  %and4 = and i32 %7, 65280, !dbg !1209
  %tobool5.not = icmp ne i32 %and4, 0, !dbg !1209
  %and7 = and i32 %7, 255, !dbg !1209
  %cmp8 = icmp eq i32 %and7, 8, !dbg !1209
  %or.cond = or i1 %tobool5.not, %cmp8, !dbg !1209
  %and12 = and i32 %7, 16826623, !dbg !1209
  %cmp13 = icmp eq i32 %and12, 16777226, !dbg !1209
  %or.cond71 = select i1 %or.cond, i1 true, i1 %cmp13, !dbg !1209
  br i1 %or.cond71, label %lor.lhs.false15, label %cleanup, !dbg !1209

lor.lhs.false15:                                  ; preds = %land.end
  %and17 = and i32 %7, 2048, !dbg !1210
  %tobool18.not = icmp eq i32 %and17, 0, !dbg !1210
  br i1 %tobool18.not, label %lor.lhs.false19, label %if.end, !dbg !1211

lor.lhs.false19:                                  ; preds = %lor.lhs.false15
  %and21 = and i32 %7, 1024, !dbg !1212
  %tobool22.not = icmp eq i32 %and21, 0, !dbg !1212
  br i1 %tobool22.not, label %cleanup, label %land.lhs.true, !dbg !1213

land.lhs.true:                                    ; preds = %lor.lhs.false19
  %8 = load ptr, ptr %5, align 8, !dbg !1214
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2, !dbg !1214
  %9 = load i64, ptr %xpv_cur, align 8, !dbg !1214
  %tobool23.not = icmp eq i64 %9, 0, !dbg !1214
  br i1 %tobool23.not, label %cleanup, label %if.end, !dbg !1215

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false15
  %10 = load ptr, ptr @PL_stack_base, align 8, !dbg !1216
  %add34 = add nsw i32 %2, 2, !dbg !1216
  %idxprom35 = sext i32 %add34 to i64, !dbg !1216
  %arrayidx36 = getelementptr inbounds ptr, ptr %10, i64 %idxprom35, !dbg !1216
  %11 = load ptr, ptr %arrayidx36, align 8, !dbg !1216
  call void @llvm.dbg.value(metadata ptr %5, metadata !881, metadata !DIExpression()) #8, !dbg !1217
  call void @llvm.dbg.value(metadata ptr %11, metadata !882, metadata !DIExpression()) #8, !dbg !1217
  call void @llvm.dbg.value(metadata i32 0, metadata !883, metadata !DIExpression()) #8, !dbg !1217
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %namelen.i) #8, !dbg !1219
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2, !dbg !1220
  %12 = load i32, ptr %sv_flags.i, align 4, !dbg !1220
  %and.i = and i32 %12, 2098176, !dbg !1220
  %cmp.i = icmp eq i32 %and.i, 1024, !dbg !1220
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i, !dbg !1220

cond.true.i:                                      ; preds = %if.end
  %13 = load ptr, ptr %11, align 8, !dbg !1220
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2, !dbg !1220
  %14 = load i64, ptr %xpv_cur.i, align 8, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %14, metadata !885, metadata !DIExpression()) #8, !dbg !1217
  store i64 %14, ptr %namelen.i, align 8, !dbg !1220
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3, !dbg !1220
  %15 = load ptr, ptr %sv_u.i, align 8, !dbg !1220
  br label %Perl_sv_derived_from_sv.exit, !dbg !1220

cond.false.i:                                     ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %namelen.i, metadata !885, metadata !DIExpression(DW_OP_deref)) #8, !dbg !1217
  %call.i = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %11, ptr noundef nonnull %namelen.i, i32 noundef 2) #8, !dbg !1220
  %.pre.i = load i32, ptr %sv_flags.i, align 4, !dbg !1221
  %.pre9.i = load i64, ptr %namelen.i, align 8, !dbg !1222
  br label %Perl_sv_derived_from_sv.exit, !dbg !1220

Perl_sv_derived_from_sv.exit:                     ; preds = %cond.true.i, %cond.false.i
  %16 = phi i64 [ %14, %cond.true.i ], [ %.pre9.i, %cond.false.i ], !dbg !1222
  %17 = phi i32 [ %12, %cond.true.i ], [ %.pre.i, %cond.false.i ], !dbg !1221
  %cond.i = phi ptr [ %15, %cond.true.i ], [ %call.i, %cond.false.i ], !dbg !1220
  call void @llvm.dbg.value(metadata ptr %cond.i, metadata !884, metadata !DIExpression()) #8, !dbg !1217
  %and2.i = and i32 %17, 536870912, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %and2.i, metadata !883, metadata !DIExpression()) #8, !dbg !1217
  call void @llvm.dbg.value(metadata i64 %16, metadata !885, metadata !DIExpression()) #8, !dbg !1217
  %call3.i = call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef nonnull %5, ptr noundef %cond.i, i64 noundef %16, i32 noundef %and2.i) #8, !dbg !1222
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %namelen.i) #8, !dbg !1223
  %cond = select i1 %call3.i, ptr @PL_sv_yes, ptr @PL_sv_no, !dbg !1216
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %lor.lhs.false19, %land.end, %Perl_sv_derived_from_sv.exit
  %cond.sink = phi ptr [ %cond, %Perl_sv_derived_from_sv.exit ], [ @PL_sv_undef, %land.end ], [ @PL_sv_undef, %lor.lhs.false19 ], [ @PL_sv_undef, %land.lhs.true ]
  %18 = load ptr, ptr @PL_stack_base, align 8, !dbg !1207
  %arrayidx41 = getelementptr inbounds ptr, ptr %18, i64 %idxprom, !dbg !1207
  store ptr %cond.sink, ptr %arrayidx41, align 8, !dbg !1207
  %.pn = load ptr, ptr @PL_stack_base, align 8, !dbg !1207
  %storemerge = getelementptr inbounds ptr, ptr %.pn, i64 %idxprom, !dbg !1207
  store ptr %storemerge, ptr @PL_stack_sp, align 8, !dbg !1207
  br label %cleanup50

cleanup50:                                        ; preds = %cleanup, %if.then
  ret void, !dbg !1205
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_UNIVERSAL_can(ptr noundef %cv) #0 !dbg !1224 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1226, metadata !DIExpression()), !dbg !1245
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1246
  call void @llvm.dbg.value(metadata ptr %0, metadata !1227, metadata !DIExpression()), !dbg !1245
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1246
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1246
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1246
  %2 = load i32, ptr %1, align 4, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %2, metadata !1228, metadata !DIExpression()), !dbg !1245
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1246
  %inc = add nsw i32 %2, 1, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1228, metadata !DIExpression()), !dbg !1245
  %idx.ext = sext i32 %2 to i64, !dbg !1246
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1246
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1229, metadata !DIExpression()), !dbg !1245
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1246
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1246
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1246
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1246
  %conv = trunc i64 %4 to i32, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1230, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr null, metadata !1233, metadata !DIExpression()), !dbg !1245
  %cmp.not = icmp eq i32 %conv, 2, !dbg !1247
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1249

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.6), !dbg !1250
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !1251
  br label %if.end, !dbg !1250

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !1251
  %idxprom = sext i32 %inc to i64, !dbg !1251
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !1251
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1251
  call void @llvm.dbg.value(metadata ptr %6, metadata !1231, metadata !DIExpression()), !dbg !1245
  %sv_flags = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !1252
  %7 = load i32, ptr %sv_flags, align 4, !dbg !1252
  %and = and i32 %7, 2097152, !dbg !1252
  %tobool.not = icmp eq i32 %and, 0, !dbg !1252
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !1252

land.rhs:                                         ; preds = %if.end
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %6) #8, !dbg !1252
  %.pre335 = load i32, ptr %sv_flags, align 4, !dbg !1253
  br label %land.end

land.end:                                         ; preds = %if.end, %land.rhs
  %8 = phi i32 [ %7, %if.end ], [ %.pre335, %land.rhs ], !dbg !1253
  %and4 = and i32 %8, 65280, !dbg !1253
  %tobool5.not = icmp ne i32 %and4, 0, !dbg !1253
  %and7 = and i32 %8, 255, !dbg !1253
  %cmp8 = icmp eq i32 %and7, 8, !dbg !1253
  %or.cond321 = or i1 %tobool5.not, %cmp8, !dbg !1253
  %and12 = and i32 %8, 16826623, !dbg !1253
  %cmp13 = icmp eq i32 %and12, 16777226, !dbg !1253
  %or.cond322 = select i1 %or.cond321, i1 true, i1 %cmp13, !dbg !1253
  br i1 %or.cond322, label %lor.lhs.false15, label %cleanup, !dbg !1253

lor.lhs.false15:                                  ; preds = %land.end
  %and17 = and i32 %8, 1024, !dbg !1254
  %tobool18.not = icmp eq i32 %and17, 0, !dbg !1254
  br i1 %tobool18.not, label %if.end30, label %land.lhs.true, !dbg !1255

land.lhs.true:                                    ; preds = %lor.lhs.false15
  %9 = load ptr, ptr %6, align 8, !dbg !1256
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %9, i64 0, i32 2, !dbg !1256
  %10 = load i64, ptr %xpv_cur, align 8, !dbg !1256
  %tobool19.not = icmp eq i64 %10, 0, !dbg !1256
  br i1 %tobool19.not, label %cleanup, label %if.end30, !dbg !1257

if.end30:                                         ; preds = %land.lhs.true, %lor.lhs.false15
  call void @llvm.dbg.value(metadata ptr @PL_sv_undef, metadata !1232, metadata !DIExpression()), !dbg !1245
  %and32 = and i32 %8, 2048, !dbg !1258
  %tobool33.not = icmp eq i32 %and32, 0, !dbg !1258
  br i1 %tobool33.not, label %if.else100, label %if.then34, !dbg !1260

if.then34:                                        ; preds = %if.end30
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !1261
  %11 = load ptr, ptr %sv_u, align 8, !dbg !1261
  call void @llvm.dbg.value(metadata ptr %11, metadata !1231, metadata !DIExpression()), !dbg !1245
  %sv_flags35 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2, !dbg !1263
  %12 = load i32, ptr %sv_flags35, align 4, !dbg !1263
  %and36 = and i32 %12, 1048576, !dbg !1263
  %tobool37.not = icmp eq i32 %and36, 0, !dbg !1263
  br i1 %tobool37.not, label %if.else, label %if.then38, !dbg !1265

if.then38:                                        ; preds = %if.then34
  %13 = load ptr, ptr %11, align 8, !dbg !1266
  %14 = load ptr, ptr %13, align 8, !dbg !1266
  call void @llvm.dbg.value(metadata ptr %14, metadata !1233, metadata !DIExpression()), !dbg !1245
  br label %if.end220, !dbg !1267

if.else:                                          ; preds = %if.then34
  %and41 = and i32 %12, 49152, !dbg !1268
  %cmp42 = icmp eq i32 %and41, 32768, !dbg !1268
  br i1 %cmp42, label %land.lhs.true44, label %cleanup, !dbg !1268

land.lhs.true44:                                  ; preds = %if.else
  %and46 = and i32 %12, 255, !dbg !1268
  %and46.off = add nsw i32 %and46, -9, !dbg !1268
  %switch = icmp ult i32 %and46.off, 2, !dbg !1268
  br i1 %switch, label %land.lhs.true66, label %cleanup, !dbg !1268

land.lhs.true66:                                  ; preds = %land.lhs.true44
  %sv_u67 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3, !dbg !1270
  %15 = load ptr, ptr %sv_u67, align 8, !dbg !1270
  %tobool69.not = icmp eq ptr %15, null, !dbg !1270
  br i1 %tobool69.not, label %cleanup, label %cond.true70, !dbg !1271

cond.true70:                                      ; preds = %land.lhs.true66
  %gp_io = getelementptr inbounds %struct.gp, ptr %15, i64 0, i32 1, !dbg !1270
  %16 = load ptr, ptr %gp_io, align 8, !dbg !1270
  %tobool73.not = icmp eq ptr %16, null, !dbg !1270
  br i1 %tobool73.not, label %cleanup, label %if.then75, !dbg !1270

if.then75:                                        ; preds = %cond.true70
  %17 = load ptr, ptr %16, align 8, !dbg !1272
  %18 = load ptr, ptr %17, align 8, !dbg !1272
  call void @llvm.dbg.value(metadata ptr %18, metadata !1233, metadata !DIExpression()), !dbg !1245
  br label %if.end220, !dbg !1273

if.else100:                                       ; preds = %if.end30
  %and102 = and i32 %8, 49152, !dbg !1274
  %cmp103 = icmp eq i32 %and102, 32768, !dbg !1274
  %and7.off = add nsw i32 %and7, -9, !dbg !1274
  %switch334 = icmp ult i32 %and7.off, 2, !dbg !1274
  %or.cond = select i1 %cmp103, i1 %switch334, i1 false, !dbg !1274
  br i1 %or.cond, label %land.lhs.true127, label %if.else162, !dbg !1274

land.lhs.true127:                                 ; preds = %if.else100
  %sv_u128 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !1276
  %19 = load ptr, ptr %sv_u128, align 8, !dbg !1276
  %tobool130.not = icmp eq ptr %19, null, !dbg !1276
  br i1 %tobool130.not, label %if.else162, label %cond.true131, !dbg !1277

cond.true131:                                     ; preds = %land.lhs.true127
  %gp_io134 = getelementptr inbounds %struct.gp, ptr %19, i64 0, i32 1, !dbg !1276
  %20 = load ptr, ptr %gp_io134, align 8, !dbg !1276
  %tobool135.not = icmp eq ptr %20, null, !dbg !1276
  br i1 %tobool135.not, label %if.else162, label %if.then137, !dbg !1276

if.then137:                                       ; preds = %cond.true131
  %21 = load ptr, ptr %20, align 8, !dbg !1278
  %22 = load ptr, ptr %21, align 8, !dbg !1278
  call void @llvm.dbg.value(metadata ptr %22, metadata !1233, metadata !DIExpression()), !dbg !1245
  br label %if.end220, !dbg !1279

if.else162:                                       ; preds = %land.lhs.true127, %cond.true131, %if.else100
  %call163 = tail call ptr @Perl_gv_fetchsv(ptr noundef nonnull %6, i32 noundef 2048, i32 noundef 15) #8, !dbg !1280
  call void @llvm.dbg.value(metadata ptr %call163, metadata !1234, metadata !DIExpression()), !dbg !1245
  %tobool164.not = icmp eq ptr %call163, null, !dbg !1282
  br i1 %tobool164.not, label %if.else212, label %land.lhs.true167, !dbg !1283

land.lhs.true167:                                 ; preds = %if.else162
  %sv_flags168 = getelementptr inbounds %struct.sv, ptr %call163, i64 0, i32 2, !dbg !1284
  %23 = load i32, ptr %sv_flags168, align 4, !dbg !1284
  %and169 = and i32 %23, 255, !dbg !1284
  %and169.off = add nsw i32 %and169, -9, !dbg !1284
  %switch324 = icmp ult i32 %and169.off, 2, !dbg !1284
  br i1 %switch324, label %land.lhs.true177, label %if.else212, !dbg !1284

land.lhs.true177:                                 ; preds = %land.lhs.true167
  %sv_u178 = getelementptr inbounds %struct.gv, ptr %call163, i64 0, i32 3, !dbg !1284
  %24 = load ptr, ptr %sv_u178, align 8, !dbg !1284
  %tobool180.not = icmp eq ptr %24, null, !dbg !1284
  br i1 %tobool180.not, label %if.else212, label %cond.true181, !dbg !1285

cond.true181:                                     ; preds = %land.lhs.true177
  %gp_io184 = getelementptr inbounds %struct.gp, ptr %24, i64 0, i32 1, !dbg !1284
  %25 = load ptr, ptr %gp_io184, align 8, !dbg !1284
  %tobool185.not = icmp eq ptr %25, null, !dbg !1284
  br i1 %tobool185.not, label %if.else212, label %if.then187, !dbg !1284

if.then187:                                       ; preds = %cond.true181
  %26 = load ptr, ptr %25, align 8, !dbg !1286
  %27 = load ptr, ptr %26, align 8, !dbg !1286
  call void @llvm.dbg.value(metadata ptr %27, metadata !1233, metadata !DIExpression()), !dbg !1245
  br label %if.end220, !dbg !1287

if.else212:                                       ; preds = %land.lhs.true167, %land.lhs.true177, %cond.true181, %if.else162
  %call213 = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %6, i32 noundef 0) #8, !dbg !1288
  call void @llvm.dbg.value(metadata ptr %call213, metadata !1233, metadata !DIExpression()), !dbg !1245
  %tobool214.not = icmp eq ptr %call213, null, !dbg !1290
  br i1 %tobool214.not, label %if.then215, label %if.then222, !dbg !1292

if.then215:                                       ; preds = %if.else212
  %call216 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str, i32 noundef 9, i32 noundef 0) #8, !dbg !1293
  call void @llvm.dbg.value(metadata ptr %call216, metadata !1233, metadata !DIExpression()), !dbg !1245
  br label %if.end220, !dbg !1294

if.end220:                                        ; preds = %if.then137, %if.then215, %if.then187, %if.then38, %if.then75
  %pkg.0 = phi ptr [ %14, %if.then38 ], [ %18, %if.then75 ], [ %22, %if.then137 ], [ %27, %if.then187 ], [ %call216, %if.then215 ], !dbg !1245
  call void @llvm.dbg.value(metadata ptr %pkg.0, metadata !1233, metadata !DIExpression()), !dbg !1245
  %tobool221.not = icmp eq ptr %pkg.0, null, !dbg !1295
  br i1 %tobool221.not, label %cleanup, label %if.then222, !dbg !1296

if.then222:                                       ; preds = %if.else212, %if.end220
  %pkg.0330 = phi ptr [ %pkg.0, %if.end220 ], [ %call213, %if.else212 ]
  %28 = load ptr, ptr @PL_stack_base, align 8, !dbg !1297
  %add223 = add nsw i32 %2, 2, !dbg !1297
  %idxprom224 = sext i32 %add223 to i64, !dbg !1297
  %arrayidx225 = getelementptr inbounds ptr, ptr %28, i64 %idxprom224, !dbg !1297
  %29 = load ptr, ptr %arrayidx225, align 8, !dbg !1297
  %call226 = tail call ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef nonnull %pkg.0330, ptr noundef %29, i32 noundef 0) #8, !dbg !1297
  call void @llvm.dbg.value(metadata ptr %call226, metadata !1239, metadata !DIExpression()), !dbg !1298
  %tobool227.not = icmp eq ptr %call226, null, !dbg !1299
  br i1 %tobool227.not, label %cleanup, label %land.lhs.true228, !dbg !1301

land.lhs.true228:                                 ; preds = %if.then222
  %sv_flags229 = getelementptr inbounds %struct.gv, ptr %call226, i64 0, i32 2, !dbg !1302
  %30 = load i32, ptr %sv_flags229, align 4, !dbg !1302
  %and230 = and i32 %30, 255, !dbg !1302
  %cmp231 = icmp eq i32 %and230, 9, !dbg !1302
  br i1 %cmp231, label %if.then233, label %cleanup, !dbg !1303

if.then233:                                       ; preds = %land.lhs.true228
  %sv_u234 = getelementptr inbounds %struct.gv, ptr %call226, i64 0, i32 3, !dbg !1304
  %31 = load ptr, ptr %sv_u234, align 8, !dbg !1304
  %gp_cv = getelementptr inbounds %struct.gp, ptr %31, i64 0, i32 2, !dbg !1304
  %32 = load ptr, ptr %gp_cv, align 8, !dbg !1304
  %call237 = tail call ptr @Perl_newRV(ptr noundef %32) #8, !dbg !1304
  %call238 = tail call ptr @Perl_sv_2mortal(ptr noundef %call237) #8, !dbg !1304
  call void @llvm.dbg.value(metadata ptr %call238, metadata !1232, metadata !DIExpression()), !dbg !1245
  br label %cleanup, !dbg !1305

cleanup:                                          ; preds = %if.end220, %if.then233, %land.lhs.true228, %if.then222, %cond.true70, %land.lhs.true66, %if.else, %land.lhs.true44, %land.lhs.true, %land.end
  %rv.1.sink = phi ptr [ @PL_sv_undef, %land.end ], [ @PL_sv_undef, %land.lhs.true ], [ @PL_sv_undef, %if.end220 ], [ %call238, %if.then233 ], [ @PL_sv_undef, %land.lhs.true228 ], [ @PL_sv_undef, %if.then222 ], [ @PL_sv_undef, %cond.true70 ], [ @PL_sv_undef, %land.lhs.true66 ], [ @PL_sv_undef, %if.else ], [ @PL_sv_undef, %land.lhs.true44 ]
  %33 = load ptr, ptr @PL_stack_base, align 8, !dbg !1245
  %arrayidx243 = getelementptr inbounds ptr, ptr %33, i64 %idxprom, !dbg !1245
  store ptr %rv.1.sink, ptr %arrayidx243, align 8, !dbg !1245
  %.pn = load ptr, ptr @PL_stack_base, align 8, !dbg !1245
  %storemerge = getelementptr inbounds ptr, ptr %.pn, i64 %idxprom, !dbg !1245
  store ptr %storemerge, ptr @PL_stack_sp, align 8, !dbg !1245
  ret void, !dbg !1306
}

declare !dbg !1307 ptr @Perl_gv_fetchsv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1311 ptr @Perl_gv_fetchmethod_sv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1314 ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #3

declare !dbg !1317 ptr @Perl_newRV(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_UNIVERSAL_DOES(ptr nocapture readnone %cv) #0 !dbg !1318 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !1320, metadata !DIExpression()), !dbg !1335
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1336
  call void @llvm.dbg.value(metadata ptr %0, metadata !1321, metadata !DIExpression()), !dbg !1335
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1336
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1336
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1336
  %2 = load i32, ptr %1, align 4, !dbg !1336
  call void @llvm.dbg.value(metadata i32 %2, metadata !1322, metadata !DIExpression()), !dbg !1335
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1336
  call void @llvm.dbg.value(metadata i32 %2, metadata !1322, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1335
  %idx.ext = sext i32 %2 to i64, !dbg !1336
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1336
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1323, metadata !DIExpression()), !dbg !1335
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1336
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1336
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1336
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1336
  %conv = trunc i64 %4 to i32, !dbg !1336
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1324, metadata !DIExpression()), !dbg !1335
  %cmp.not = icmp eq i32 %conv, 2, !dbg !1337
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !1338

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7) #8, !dbg !1339
  br label %cleanup29, !dbg !1340

if.else:                                          ; preds = %entry
  %inc = add nsw i32 %2, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1322, metadata !DIExpression()), !dbg !1335
  %idxprom = sext i32 %inc to i64, !dbg !1341
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1341
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1341
  call void @llvm.dbg.value(metadata ptr %5, metadata !1325, metadata !DIExpression()), !dbg !1342
  %add2 = add nsw i32 %2, 2, !dbg !1343
  %idxprom3 = sext i32 %add2 to i64, !dbg !1343
  %arrayidx4 = getelementptr inbounds ptr, ptr %3, i64 %idxprom3, !dbg !1343
  %6 = load ptr, ptr %arrayidx4, align 8, !dbg !1343
  %call = tail call zeroext i1 @Perl_sv_does_sv(ptr noundef %5, ptr noundef %6, i32 undef), !dbg !1343
  %7 = load ptr, ptr @PL_stack_base, align 8, !dbg !1342
  %arrayidx8 = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !1342
  %PL_sv_yes.PL_sv_no = select i1 %call, ptr @PL_sv_yes, ptr @PL_sv_no
  store ptr %PL_sv_yes.PL_sv_no, ptr %arrayidx8, align 8, !dbg !1342
  %.pn = load ptr, ptr @PL_stack_base, align 8, !dbg !1342
  %storemerge = getelementptr inbounds ptr, ptr %.pn, i64 %idxprom, !dbg !1342
  store ptr %storemerge, ptr @PL_stack_sp, align 8, !dbg !1342
  br label %cleanup29

cleanup29:                                        ; preds = %if.else, %if.then
  ret void, !dbg !1340
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_utf8_is_utf8(ptr noundef %cv) #0 !dbg !1344 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1346, metadata !DIExpression()), !dbg !1364
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %0, metadata !1347, metadata !DIExpression()), !dbg !1364
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1365
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1365
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1365
  %2 = load i32, ptr %1, align 4, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %2, metadata !1348, metadata !DIExpression()), !dbg !1364
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1365
  %inc = add nsw i32 %2, 1, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1348, metadata !DIExpression()), !dbg !1364
  %idx.ext = sext i32 %2 to i64, !dbg !1365
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1349, metadata !DIExpression()), !dbg !1364
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1365
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1365
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1365
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1365
  %conv = trunc i64 %4 to i32, !dbg !1365
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1350, metadata !DIExpression()), !dbg !1364
  %cmp.not = icmp eq i32 %conv, 1, !dbg !1366
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !1367

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.8), !dbg !1368
  call void @llvm.dbg.value(metadata i64 0, metadata !1361, metadata !DIExpression()), !dbg !1369
  %5 = load ptr, ptr @PL_stack_base, align 8, !dbg !1370
  %idx.ext34 = sext i32 %inc to i64, !dbg !1370
  %add.ptr35 = getelementptr inbounds ptr, ptr %5, i64 %idx.ext34, !dbg !1370
  %add.ptr36 = getelementptr inbounds ptr, ptr %add.ptr35, i64 -1, !dbg !1370
  br label %cleanup42

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %inc to i64, !dbg !1371
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1371
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1371
  call void @llvm.dbg.value(metadata ptr %6, metadata !1351, metadata !DIExpression()), !dbg !1372
  %sv_flags = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !1373
  %7 = load i32, ptr %sv_flags, align 4, !dbg !1373
  %and = and i32 %7, 2097152, !dbg !1373
  %tobool.not = icmp eq i32 %and, 0, !dbg !1373
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !1373

land.rhs:                                         ; preds = %if.else
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %6) #8, !dbg !1373
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !1374
  br label %land.end

land.end:                                         ; preds = %if.else, %land.rhs
  %8 = phi i32 [ %7, %if.else ], [ %.pre, %land.rhs ], !dbg !1374
  %and4 = and i32 %8, 536870912, !dbg !1374
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !1374
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !1375
  %arrayidx20 = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !1375
  %PL_sv_no.PL_sv_yes = select i1 %tobool5.not, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %PL_sv_no.PL_sv_yes, ptr %arrayidx20, align 8, !dbg !1375
  %.pn = load ptr, ptr @PL_stack_base, align 8, !dbg !1375
  %storemerge = getelementptr inbounds ptr, ptr %.pn, i64 %idxprom, !dbg !1375
  br label %cleanup42

cleanup42:                                        ; preds = %land.end, %if.then
  %storemerge56 = phi ptr [ %storemerge, %land.end ], [ %add.ptr36, %if.then ], !dbg !1364
  store ptr %storemerge56, ptr @PL_stack_sp, align 8, !dbg !1364
  ret void, !dbg !1376
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_utf8_valid(ptr noundef %cv) #0 !dbg !1377 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1379, metadata !DIExpression()), !dbg !1399
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %0, metadata !1380, metadata !DIExpression()), !dbg !1399
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1400
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1400
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1400
  %2 = load i32, ptr %1, align 4, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %2, metadata !1381, metadata !DIExpression()), !dbg !1399
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1400
  %inc = add nsw i32 %2, 1, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1381, metadata !DIExpression()), !dbg !1399
  %idx.ext = sext i32 %2 to i64, !dbg !1400
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1382, metadata !DIExpression()), !dbg !1399
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1400
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1400
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1400
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1400
  %conv = trunc i64 %4 to i32, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1383, metadata !DIExpression()), !dbg !1399
  %cmp.not = icmp eq i32 %conv, 1, !dbg !1401
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !1402

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.8), !dbg !1403
  call void @llvm.dbg.value(metadata i64 0, metadata !1396, metadata !DIExpression()), !dbg !1404
  %5 = load ptr, ptr @PL_stack_base, align 8, !dbg !1405
  %idx.ext39 = sext i32 %inc to i64, !dbg !1405
  %add.ptr40 = getelementptr inbounds ptr, ptr %5, i64 %idx.ext39, !dbg !1405
  %add.ptr41 = getelementptr inbounds ptr, ptr %add.ptr40, i64 -1, !dbg !1405
  store ptr %add.ptr41, ptr @PL_stack_sp, align 8, !dbg !1405
  br label %cleanup47

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %inc to i64, !dbg !1406
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1406
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1406
  call void @llvm.dbg.value(metadata ptr %6, metadata !1384, metadata !DIExpression()), !dbg !1407
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8, !dbg !1408
  %sv_flags = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !1409
  %7 = load i32, ptr %sv_flags, align 4, !dbg !1409
  %and = and i32 %7, 2098176, !dbg !1409
  %cmp2 = icmp eq i32 %and, 1024, !dbg !1409
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !1409

cond.true:                                        ; preds = %if.else
  %8 = load ptr, ptr %6, align 8, !dbg !1409
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2, !dbg !1409
  %9 = load i64, ptr %xpv_cur, align 8, !dbg !1409
  call void @llvm.dbg.value(metadata i64 %9, metadata !1387, metadata !DIExpression()), !dbg !1407
  store i64 %9, ptr %len, align 8, !dbg !1409
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !1409
  %10 = load ptr, ptr %sv_u, align 8, !dbg !1409
  br label %cond.end, !dbg !1409

cond.false:                                       ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %len, metadata !1387, metadata !DIExpression(DW_OP_deref)), !dbg !1407
  %call = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %len, i32 noundef 34) #8, !dbg !1409
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !1410
  br label %cond.end, !dbg !1409

cond.end:                                         ; preds = %cond.false, %cond.true
  %11 = phi i32 [ %7, %cond.true ], [ %.pre, %cond.false ], !dbg !1410
  %cond = phi ptr [ %10, %cond.true ], [ %call, %cond.false ], !dbg !1409
  call void @llvm.dbg.value(metadata ptr %cond, metadata !1388, metadata !DIExpression()), !dbg !1407
  %and6 = and i32 %11, 536870912, !dbg !1410
  %tobool.not = icmp eq i32 %and6, 0, !dbg !1410
  br i1 %tobool.not, label %cleanup, label %lor.lhs.false, !dbg !1411

lor.lhs.false:                                    ; preds = %cond.end
  %12 = load i64, ptr %len, align 8, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %12, metadata !1387, metadata !DIExpression()), !dbg !1407
  %call7 = call zeroext i1 @Perl_is_utf8_string(ptr noundef %cond, i64 noundef %12) #8, !dbg !1413
  %spec.select = select i1 %call7, ptr @PL_sv_yes, ptr @PL_sv_no, !dbg !1414
  br label %cleanup, !dbg !1414

cleanup:                                          ; preds = %lor.lhs.false, %cond.end
  %PL_sv_no.sink = phi ptr [ @PL_sv_yes, %cond.end ], [ %spec.select, %lor.lhs.false ]
  %13 = load ptr, ptr @PL_stack_base, align 8, !dbg !1415
  %arrayidx23 = getelementptr inbounds ptr, ptr %13, i64 %idxprom, !dbg !1415
  store ptr %PL_sv_no.sink, ptr %arrayidx23, align 8, !dbg !1415
  %.pn = load ptr, ptr @PL_stack_base, align 8, !dbg !1415
  %storemerge = getelementptr inbounds ptr, ptr %.pn, i64 %idxprom, !dbg !1415
  store ptr %storemerge, ptr @PL_stack_sp, align 8, !dbg !1415
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !1416
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup, %if.then
  ret void, !dbg !1417
}

declare !dbg !1418 zeroext i1 @Perl_is_utf8_string(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_utf8_encode(ptr noundef %cv) #0 !dbg !1421 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1423, metadata !DIExpression()), !dbg !1431
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1432
  call void @llvm.dbg.value(metadata ptr %0, metadata !1424, metadata !DIExpression()), !dbg !1431
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1432
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1432
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1432
  %2 = load i32, ptr %1, align 4, !dbg !1432
  call void @llvm.dbg.value(metadata i32 %2, metadata !1425, metadata !DIExpression()), !dbg !1431
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1432
  %inc = add nsw i32 %2, 1, !dbg !1432
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1425, metadata !DIExpression()), !dbg !1431
  %idx.ext = sext i32 %2 to i64, !dbg !1432
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1432
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1426, metadata !DIExpression()), !dbg !1431
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1432
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1432
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1432
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1432
  %conv = trunc i64 %4 to i32, !dbg !1432
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1427, metadata !DIExpression()), !dbg !1431
  %cmp.not = icmp eq i32 %conv, 1, !dbg !1433
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !1435

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.8), !dbg !1436
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !1437
  br label %if.end, !dbg !1436

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !1437
  %idxprom = sext i32 %inc to i64, !dbg !1437
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !1437
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !1437
  tail call void @Perl_sv_utf8_encode(ptr noundef %6) #8, !dbg !1437
  %7 = load ptr, ptr @PL_stack_base, align 8, !dbg !1438
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !1438
  %8 = load ptr, ptr %arrayidx4, align 8, !dbg !1438
  %sv_flags = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2, !dbg !1438
  %9 = load i32, ptr %sv_flags, align 4, !dbg !1438
  %and = and i32 %9, 4194304, !dbg !1438
  %tobool.not = icmp eq i32 %and, 0, !dbg !1438
  br i1 %tobool.not, label %do.body11, label %if.then5, !dbg !1441

if.then5:                                         ; preds = %if.end
  %call = tail call i32 @Perl_mg_set(ptr noundef nonnull %8) #8, !dbg !1438
  %.pre26 = load ptr, ptr @PL_stack_base, align 8, !dbg !1442
  br label %do.body11, !dbg !1438

do.body11:                                        ; preds = %if.end, %if.then5
  %10 = phi ptr [ %7, %if.end ], [ %.pre26, %if.then5 ], !dbg !1442
  call void @llvm.dbg.value(metadata i64 0, metadata !1428, metadata !DIExpression()), !dbg !1443
  %add.ptr13 = getelementptr inbounds ptr, ptr %10, i64 %idxprom, !dbg !1442
  %add.ptr14 = getelementptr inbounds ptr, ptr %add.ptr13, i64 -1, !dbg !1442
  store ptr %add.ptr14, ptr @PL_stack_sp, align 8, !dbg !1442
  ret void, !dbg !1444
}

declare !dbg !1445 void @Perl_sv_utf8_encode(ptr noundef) local_unnamed_addr #3

declare !dbg !1448 i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_utf8_decode(ptr noundef %cv) #0 !dbg !1449 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1451, metadata !DIExpression()), !dbg !1462
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1463
  call void @llvm.dbg.value(metadata ptr %0, metadata !1452, metadata !DIExpression()), !dbg !1462
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1463
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1463
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1463
  %2 = load i32, ptr %1, align 4, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %2, metadata !1453, metadata !DIExpression()), !dbg !1462
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1463
  %inc = add nsw i32 %2, 1, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1453, metadata !DIExpression()), !dbg !1462
  %idx.ext = sext i32 %2 to i64, !dbg !1463
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1463
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1454, metadata !DIExpression()), !dbg !1462
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1463
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1463
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1463
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1463
  %conv = trunc i64 %4 to i32, !dbg !1463
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1455, metadata !DIExpression()), !dbg !1462
  %cmp.not = icmp eq i32 %conv, 1, !dbg !1464
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !1465

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.8), !dbg !1466
  %.pre = sext i32 %inc to i64, !dbg !1467
  br label %do.body18, !dbg !1466

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %inc to i64, !dbg !1468
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1468
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1468
  call void @llvm.dbg.value(metadata ptr %5, metadata !1456, metadata !DIExpression()), !dbg !1469
  %sv_flags = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1470
  %6 = load i32, ptr %sv_flags, align 4, !dbg !1470
  %and = and i32 %6, 430018304, !dbg !1470
  %cmp2 = icmp eq i32 %and, 1024, !dbg !1470
  br i1 %cmp2, label %cond.end, label %cond.false, !dbg !1470

cond.false:                                       ; preds = %if.else
  %call = tail call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %5, ptr noundef null, i32 noundef 2) #8, !dbg !1470
  br label %cond.end, !dbg !1470

cond.end:                                         ; preds = %if.else, %cond.false
  %call4 = tail call zeroext i1 @Perl_sv_utf8_decode(ptr noundef nonnull %5) #8, !dbg !1471
  call void @llvm.dbg.value(metadata i1 %call4, metadata !1459, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1469
  %7 = load i32, ptr %sv_flags, align 4, !dbg !1472
  %and6 = and i32 %7, 4194304, !dbg !1472
  %tobool.not = icmp eq i32 %and6, 0, !dbg !1472
  br i1 %tobool.not, label %do.end, label %if.then9, !dbg !1475

if.then9:                                         ; preds = %cond.end
  %call10 = tail call i32 @Perl_mg_set(ptr noundef nonnull %5) #8, !dbg !1472
  br label %do.end, !dbg !1472

do.end:                                           ; preds = %cond.end, %if.then9
  %cond13 = select i1 %call4, ptr @PL_sv_yes, ptr @PL_sv_no, !dbg !1476
  %8 = load ptr, ptr @PL_stack_base, align 8, !dbg !1477
  %arrayidx16 = getelementptr inbounds ptr, ptr %8, i64 %idxprom, !dbg !1477
  store ptr %cond13, ptr %arrayidx16, align 8, !dbg !1478
  br label %do.body18

do.body18:                                        ; preds = %if.then, %do.end
  %idx.ext19.pre-phi = phi i64 [ %.pre, %if.then ], [ %idxprom, %do.end ], !dbg !1467
  call void @llvm.dbg.value(metadata i64 1, metadata !1460, metadata !DIExpression()), !dbg !1479
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !1467
  %add.ptr20 = getelementptr inbounds ptr, ptr %9, i64 %idx.ext19.pre-phi, !dbg !1467
  store ptr %add.ptr20, ptr @PL_stack_sp, align 8, !dbg !1467
  ret void, !dbg !1480
}

declare !dbg !1481 ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1482 zeroext i1 @Perl_sv_utf8_decode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_utf8_upgrade(ptr noundef %cv) #0 !dbg !1485 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1487, metadata !DIExpression()), !dbg !1499
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %0, metadata !1488, metadata !DIExpression()), !dbg !1499
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1500
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1500
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1500
  %2 = load i32, ptr %1, align 4, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %2, metadata !1489, metadata !DIExpression()), !dbg !1499
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1500
  %inc = add nsw i32 %2, 1, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1489, metadata !DIExpression()), !dbg !1499
  %idx.ext = sext i32 %2 to i64, !dbg !1500
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1500
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1490, metadata !DIExpression()), !dbg !1499
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1500
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1500
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1500
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1500
  %conv = trunc i64 %4 to i32, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1491, metadata !DIExpression()), !dbg !1499
  %cmp.not = icmp eq i32 %conv, 1, !dbg !1501
  br i1 %cmp.not, label %if.else, label %if.then, !dbg !1502

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.8), !dbg !1503
  %.pre = sext i32 %inc to i64, !dbg !1504
  br label %do.body22, !dbg !1503

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %inc to i64, !dbg !1505
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1505
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1505
  call void @llvm.dbg.value(metadata ptr %5, metadata !1492, metadata !DIExpression()), !dbg !1506
  %6 = load ptr, ptr @PL_op, align 8, !dbg !1507
  %op_private = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 6, !dbg !1507
  %7 = load i8, ptr %op_private, align 1, !dbg !1507
  %8 = and i8 %7, 4, !dbg !1507
  %tobool.not = icmp eq i8 %8, 0, !dbg !1507
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !1507

cond.true:                                        ; preds = %if.else
  %9 = load ptr, ptr @PL_curpad, align 8, !dbg !1507
  %op_targ = getelementptr inbounds %struct.op, ptr %6, i64 0, i32 3, !dbg !1507
  %10 = load i64, ptr %op_targ, align 8, !dbg !1507
  %arrayidx3 = getelementptr inbounds ptr, ptr %9, i64 %10, !dbg !1507
  %11 = load ptr, ptr %arrayidx3, align 8, !dbg !1507
  br label %cond.end, !dbg !1507

cond.false:                                       ; preds = %if.else
  %call = tail call ptr @Perl_sv_newmortal() #8, !dbg !1507
  br label %cond.end, !dbg !1507

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %11, %cond.true ], [ %call, %cond.false ], !dbg !1507
  call void @llvm.dbg.value(metadata ptr %cond, metadata !1496, metadata !DIExpression()), !dbg !1506
  %call4 = tail call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %5, i32 noundef 2, i64 noundef 0) #8, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %call4, metadata !1495, metadata !DIExpression()), !dbg !1506
  %12 = load ptr, ptr @PL_stack_base, align 8, !dbg !1509
  %add.ptr6 = getelementptr inbounds ptr, ptr %12, i64 %idxprom, !dbg !1509
  %add.ptr7 = getelementptr inbounds ptr, ptr %add.ptr6, i64 -1, !dbg !1509
  call void @llvm.dbg.value(metadata ptr %add.ptr7, metadata !1488, metadata !DIExpression()), !dbg !1499
  tail call void @Perl_sv_setiv(ptr noundef %cond, i64 noundef %call4) #8, !dbg !1510
  %sv_flags = getelementptr inbounds %struct.sv, ptr %cond, i64 0, i32 2, !dbg !1512
  %13 = load i32, ptr %sv_flags, align 4, !dbg !1512
  %and10 = and i32 %13, 4194304, !dbg !1512
  %tobool11.not = icmp eq i32 %and10, 0, !dbg !1512
  br i1 %tobool11.not, label %do.end, label %if.then14, !dbg !1516

if.then14:                                        ; preds = %cond.end
  %call15 = tail call i32 @Perl_mg_set(ptr noundef nonnull %cond) #8, !dbg !1512
  br label %do.end, !dbg !1512

do.end:                                           ; preds = %cond.end, %if.then14
  %incdec.ptr16 = getelementptr inbounds ptr, ptr %add.ptr7, i64 1, !dbg !1517
  call void @llvm.dbg.value(metadata ptr %incdec.ptr16, metadata !1488, metadata !DIExpression()), !dbg !1499
  store ptr %cond, ptr %incdec.ptr16, align 8, !dbg !1517
  br label %do.body22

do.body22:                                        ; preds = %if.then, %do.end
  %idx.ext23.pre-phi = phi i64 [ %.pre, %if.then ], [ %idxprom, %do.end ], !dbg !1504
  call void @llvm.dbg.value(metadata i64 1, metadata !1497, metadata !DIExpression()), !dbg !1518
  %14 = load ptr, ptr @PL_stack_base, align 8, !dbg !1504
  %add.ptr24 = getelementptr inbounds ptr, ptr %14, i64 %idx.ext23.pre-phi, !dbg !1504
  store ptr %add.ptr24, ptr @PL_stack_sp, align 8, !dbg !1504
  ret void, !dbg !1519
}

declare !dbg !1520 ptr @Perl_sv_newmortal() local_unnamed_addr #3

declare !dbg !1523 i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1526 void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_utf8_downgrade(ptr noundef %cv) #0 !dbg !1529 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1531, metadata !DIExpression()), !dbg !1544
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1545
  call void @llvm.dbg.value(metadata ptr %0, metadata !1532, metadata !DIExpression()), !dbg !1544
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1545
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1545
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1545
  %2 = load i32, ptr %1, align 4, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %2, metadata !1533, metadata !DIExpression()), !dbg !1544
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1545
  %inc = add nsw i32 %2, 1, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1533, metadata !DIExpression()), !dbg !1544
  %idx.ext = sext i32 %2 to i64, !dbg !1545
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1545
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1534, metadata !DIExpression()), !dbg !1544
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1545
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1545
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1545
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1545
  %conv = trunc i64 %4 to i32, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1535, metadata !DIExpression()), !dbg !1544
  %5 = add i32 %conv, -3, !dbg !1546
  %6 = icmp ult i32 %5, -2, !dbg !1546
  br i1 %6, label %if.then, label %if.else, !dbg !1546

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.9), !dbg !1547
  %.pre = sext i32 %inc to i64, !dbg !1548
  br label %do.body, !dbg !1547

if.else:                                          ; preds = %entry
  %idxprom = sext i32 %inc to i64, !dbg !1549
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1549
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %7, metadata !1536, metadata !DIExpression()), !dbg !1550
  %cmp4 = icmp ult i32 %conv, 2, !dbg !1551
  br i1 %cmp4, label %cond.end140, label %cond.false, !dbg !1552

cond.false:                                       ; preds = %if.else
  %add6 = add nsw i32 %2, 2, !dbg !1553
  %idxprom7 = sext i32 %add6 to i64, !dbg !1553
  %arrayidx8 = getelementptr inbounds ptr, ptr %3, i64 %idxprom7, !dbg !1553
  %8 = load ptr, ptr %arrayidx8, align 8, !dbg !1553
  %tobool.not = icmp eq ptr %8, null, !dbg !1553
  br i1 %tobool.not, label %cond.end140, label %land.rhs, !dbg !1553

land.rhs:                                         ; preds = %cond.false
  %sv_flags = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2, !dbg !1553
  %9 = load i32, ptr %sv_flags, align 4, !dbg !1553
  %and = and i32 %9, 2097152, !dbg !1553
  %tobool14.not = icmp eq i32 %and, 0, !dbg !1553
  br i1 %tobool14.not, label %cond.false22, label %cond.true17, !dbg !1553

cond.true17:                                      ; preds = %land.rhs
  %call = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %8, i32 noundef 2) #8, !dbg !1553
  br label %cond.end140, !dbg !1553

cond.false22:                                     ; preds = %land.rhs
  %and27 = and i32 %9, 65280, !dbg !1553
  %tobool28.not = icmp ne i32 %and27, 0, !dbg !1553
  %and34 = and i32 %9, 255, !dbg !1553
  %cmp35 = icmp eq i32 %and34, 8, !dbg !1553
  %or.cond = or i1 %tobool28.not, %cmp35, !dbg !1553
  %and42 = and i32 %9, 16826623, !dbg !1553
  %cmp43 = icmp eq i32 %and42, 16777226, !dbg !1553
  %or.cond183 = select i1 %or.cond, i1 true, i1 %cmp43, !dbg !1553
  br i1 %or.cond183, label %cond.false46, label %cond.end140, !dbg !1553

cond.false46:                                     ; preds = %cond.false22
  %and51 = and i32 %9, 1024, !dbg !1553
  %tobool52.not = icmp eq i32 %and51, 0, !dbg !1553
  br i1 %tobool52.not, label %cond.false79, label %cond.true53, !dbg !1553

cond.true53:                                      ; preds = %cond.false46
  %10 = load ptr, ptr %8, align 8, !dbg !1553
  %tobool57.not = icmp eq ptr %10, null, !dbg !1553
  br i1 %tobool57.not, label %cond.end140, label %land.rhs58, !dbg !1553

land.rhs58:                                       ; preds = %cond.true53
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2, !dbg !1553
  %11 = load i64, ptr %xpv_cur, align 8, !dbg !1553
  %cmp63 = icmp ugt i64 %11, 1, !dbg !1553
  br i1 %cmp63, label %cond.end140, label %lor.rhs, !dbg !1553

lor.rhs:                                          ; preds = %land.rhs58
  %tobool70.not = icmp eq i64 %11, 0, !dbg !1553
  br i1 %tobool70.not, label %cond.end140, label %land.rhs71, !dbg !1553

land.rhs71:                                       ; preds = %lor.rhs
  %sv_u = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 3, !dbg !1553
  %12 = load ptr, ptr %sv_u, align 8, !dbg !1553
  %13 = load i8, ptr %12, align 1, !dbg !1553
  %cmp76 = icmp ne i8 %13, 48, !dbg !1553
  br label %cond.end140

cond.false79:                                     ; preds = %cond.false46
  %and84 = and i32 %9, 768, !dbg !1553
  %tobool85.not = icmp eq i32 %and84, 0, !dbg !1553
  br i1 %tobool85.not, label %cond.false124, label %cond.true86, !dbg !1553

cond.true86:                                      ; preds = %cond.false79
  %and91 = and i32 %9, 256, !dbg !1553
  %tobool92.not = icmp eq i32 %and91, 0, !dbg !1553
  br i1 %tobool92.not, label %lor.rhs99, label %land.lhs.true, !dbg !1553

land.lhs.true:                                    ; preds = %cond.true86
  %14 = load ptr, ptr %8, align 8, !dbg !1553
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %14, i64 0, i32 4, !dbg !1553
  %15 = load i64, ptr %xiv_u, align 8, !dbg !1553
  %cmp97.not = icmp eq i64 %15, 0, !dbg !1553
  br i1 %cmp97.not, label %lor.rhs99, label %cond.end140, !dbg !1553

lor.rhs99:                                        ; preds = %land.lhs.true, %cond.true86
  %and104 = and i32 %9, 512, !dbg !1553
  %tobool105.not = icmp eq i32 %and104, 0, !dbg !1553
  br i1 %tobool105.not, label %cond.end140, label %land.rhs106, !dbg !1553

land.rhs106:                                      ; preds = %lor.rhs99
  %16 = load ptr, ptr %8, align 8, !dbg !1553
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %16, i64 0, i32 5, !dbg !1553
  %17 = load double, ptr %xnv_u, align 8, !dbg !1553
  %cmp111 = fcmp uno double %17, 0.000000e+00, !dbg !1553
  br i1 %cmp111, label %cond.end140, label %lor.rhs112, !dbg !1553

lor.rhs112:                                       ; preds = %land.rhs106
  %cmp118 = fcmp une double %17, 0.000000e+00, !dbg !1553
  br label %cond.end140, !dbg !1553

cond.false124:                                    ; preds = %cond.false79
  %call128 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %8, i32 noundef 0) #8, !dbg !1553
  br label %cond.end140, !dbg !1553

cond.end140:                                      ; preds = %cond.true17, %cond.false124, %cond.false22, %land.rhs58, %land.rhs71, %lor.rhs, %cond.true53, %lor.rhs99, %lor.rhs112, %land.rhs106, %land.lhs.true, %cond.false, %if.else
  %cond141 = phi i1 [ false, %if.else ], [ false, %cond.false ], [ %call, %cond.true17 ], [ %call128, %cond.false124 ], [ false, %cond.false22 ], [ false, %cond.true53 ], [ true, %land.rhs58 ], [ false, %lor.rhs ], [ %cmp76, %land.rhs71 ], [ true, %land.lhs.true ], [ false, %lor.rhs99 ], [ true, %land.rhs106 ], [ %cmp118, %lor.rhs112 ]
  call void @llvm.dbg.value(metadata i1 %cond141, metadata !1539, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1550
  %call144 = tail call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef %7, i1 noundef zeroext %cond141) #8, !dbg !1554
  call void @llvm.dbg.value(metadata i1 %call144, metadata !1541, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1550
  %cond148 = select i1 %call144, ptr @PL_sv_yes, ptr @PL_sv_no, !dbg !1555
  %18 = load ptr, ptr @PL_stack_base, align 8, !dbg !1556
  %arrayidx151 = getelementptr inbounds ptr, ptr %18, i64 %idxprom, !dbg !1556
  store ptr %cond148, ptr %arrayidx151, align 8, !dbg !1557
  br label %do.body

do.body:                                          ; preds = %if.then, %cond.end140
  %idx.ext152.pre-phi = phi i64 [ %.pre, %if.then ], [ %idxprom, %cond.end140 ], !dbg !1548
  call void @llvm.dbg.value(metadata i64 1, metadata !1542, metadata !DIExpression()), !dbg !1558
  %19 = load ptr, ptr @PL_stack_base, align 8, !dbg !1548
  %add.ptr153 = getelementptr inbounds ptr, ptr %19, i64 %idx.ext152.pre-phi, !dbg !1548
  store ptr %add.ptr153, ptr @PL_stack_sp, align 8, !dbg !1548
  ret void, !dbg !1559
}

declare !dbg !1560 zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_utf8_native_to_unicode(ptr noundef %cv) #0 !dbg !1563 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1565, metadata !DIExpression()), !dbg !1574
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %0, metadata !1566, metadata !DIExpression()), !dbg !1574
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1575
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1575
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1575
  %2 = load i32, ptr %1, align 4, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %2, metadata !1567, metadata !DIExpression()), !dbg !1574
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1575
  %inc = add nsw i32 %2, 1, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1567, metadata !DIExpression()), !dbg !1574
  %idx.ext = sext i32 %2 to i64, !dbg !1575
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1575
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1568, metadata !DIExpression()), !dbg !1574
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1575
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1575
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1575
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1575
  %conv = trunc i64 %4 to i32, !dbg !1575
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1569, metadata !DIExpression()), !dbg !1574
  %idxprom = sext i32 %inc to i64, !dbg !1576
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1576
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1576
  %sv_flags = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1576
  %6 = load i32, ptr %sv_flags, align 4, !dbg !1576
  %and = and i32 %6, -2145386240, !dbg !1576
  %cmp = icmp eq i32 %and, -2147483392, !dbg !1576
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1576

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %5, align 8, !dbg !1576
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %7, i64 0, i32 4, !dbg !1576
  %8 = load i64, ptr %xuv_u, align 8, !dbg !1576
  br label %cond.end, !dbg !1576

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %5, i32 noundef 2) #8, !dbg !1576
  br label %cond.end, !dbg !1576

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %call, %cond.false ], !dbg !1576
  call void @llvm.dbg.value(metadata i64 %cond, metadata !1570, metadata !DIExpression()), !dbg !1574
  %cmp8 = icmp sgt i32 %conv, 1, !dbg !1577
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1579

if.then:                                          ; preds = %cond.end
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.8), !dbg !1580
  br label %if.end, !dbg !1580

if.end:                                           ; preds = %if.then, %cond.end
  %call10 = tail call ptr @Perl_newSViv(i64 noundef %cond) #8, !dbg !1581
  %call11 = tail call ptr @Perl_sv_2mortal(ptr noundef %call10) #8, !dbg !1581
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !1582
  %arrayidx14 = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !1582
  store ptr %call11, ptr %arrayidx14, align 8, !dbg !1583
  call void @llvm.dbg.value(metadata i64 1, metadata !1572, metadata !DIExpression()), !dbg !1584
  %10 = load ptr, ptr @PL_stack_base, align 8, !dbg !1585
  %add.ptr16 = getelementptr inbounds ptr, ptr %10, i64 %idxprom, !dbg !1585
  store ptr %add.ptr16, ptr @PL_stack_sp, align 8, !dbg !1585
  ret void, !dbg !1586
}

declare !dbg !1587 i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1590 ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_utf8_unicode_to_native(ptr noundef %cv) #0 !dbg !1593 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1595, metadata !DIExpression()), !dbg !1603
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1604
  call void @llvm.dbg.value(metadata ptr %0, metadata !1596, metadata !DIExpression()), !dbg !1603
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1604
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1604
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1604
  %2 = load i32, ptr %1, align 4, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %2, metadata !1597, metadata !DIExpression()), !dbg !1603
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1604
  %inc = add nsw i32 %2, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1597, metadata !DIExpression()), !dbg !1603
  %idx.ext = sext i32 %2 to i64, !dbg !1604
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1604
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1598, metadata !DIExpression()), !dbg !1603
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1604
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1604
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1604
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1604
  %conv = trunc i64 %4 to i32, !dbg !1604
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1599, metadata !DIExpression()), !dbg !1603
  %idxprom = sext i32 %inc to i64, !dbg !1605
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1605
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1605
  %sv_flags = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1605
  %6 = load i32, ptr %sv_flags, align 4, !dbg !1605
  %and = and i32 %6, -2145386240, !dbg !1605
  %cmp = icmp eq i32 %and, -2147483392, !dbg !1605
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1605

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %5, align 8, !dbg !1605
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %7, i64 0, i32 4, !dbg !1605
  %8 = load i64, ptr %xuv_u, align 8, !dbg !1605
  br label %cond.end, !dbg !1605

cond.false:                                       ; preds = %entry
  %call = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %5, i32 noundef 2) #8, !dbg !1605
  br label %cond.end, !dbg !1605

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %8, %cond.true ], [ %call, %cond.false ], !dbg !1605
  call void @llvm.dbg.value(metadata i64 %cond, metadata !1600, metadata !DIExpression()), !dbg !1603
  %cmp8 = icmp sgt i32 %conv, 1, !dbg !1606
  br i1 %cmp8, label %if.then, label %if.end, !dbg !1608

if.then:                                          ; preds = %cond.end
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.8), !dbg !1609
  br label %if.end, !dbg !1609

if.end:                                           ; preds = %if.then, %cond.end
  %call10 = tail call ptr @Perl_newSViv(i64 noundef %cond) #8, !dbg !1610
  %call11 = tail call ptr @Perl_sv_2mortal(ptr noundef %call10) #8, !dbg !1610
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !1611
  %arrayidx14 = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !1611
  store ptr %call11, ptr %arrayidx14, align 8, !dbg !1612
  call void @llvm.dbg.value(metadata i64 1, metadata !1601, metadata !DIExpression()), !dbg !1613
  %10 = load ptr, ptr @PL_stack_base, align 8, !dbg !1614
  %add.ptr16 = getelementptr inbounds ptr, ptr %10, i64 %idxprom, !dbg !1614
  store ptr %add.ptr16, ptr @PL_stack_sp, align 8, !dbg !1614
  ret void, !dbg !1615
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_Internals_SvREADONLY(ptr noundef %cv) #0 !dbg !1616 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1618, metadata !DIExpression()), !dbg !1648
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1649
  call void @llvm.dbg.value(metadata ptr %0, metadata !1619, metadata !DIExpression()), !dbg !1648
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1649
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1649
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1649
  %2 = load i32, ptr %1, align 4, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %2, metadata !1620, metadata !DIExpression()), !dbg !1648
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1649
  %inc = add nsw i32 %2, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1620, metadata !DIExpression()), !dbg !1648
  %idx.ext = sext i32 %2 to i64, !dbg !1649
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1649
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1621, metadata !DIExpression()), !dbg !1648
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1649
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1649
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1649
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1649
  %conv = trunc i64 %4 to i32, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1622, metadata !DIExpression()), !dbg !1648
  %idxprom = sext i32 %inc to i64, !dbg !1650
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1650
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1650
  call void @llvm.dbg.value(metadata ptr %5, metadata !1623, metadata !DIExpression()), !dbg !1648
  %sv_flags = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1651
  %6 = load i32, ptr %sv_flags, align 4, !dbg !1651
  %and = and i32 %6, 2048, !dbg !1651
  %tobool.not = icmp eq i32 %and, 0, !dbg !1651
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1653

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.10), !dbg !1654
  br label %if.end, !dbg !1654

if.end:                                           ; preds = %if.then, %entry
  %sv_u = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3, !dbg !1655
  %7 = load ptr, ptr %sv_u, align 8, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %7, metadata !1624, metadata !DIExpression()), !dbg !1648
  switch i32 %conv, label %do.body190 [
    i32 1, label %if.then2
    i32 2, label %if.then33
  ], !dbg !1656

if.then2:                                         ; preds = %if.end
  %sv_flags3 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2, !dbg !1657
  %8 = load i32, ptr %sv_flags3, align 4, !dbg !1657
  %and4 = and i32 %8, 134283264, !dbg !1657
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !1657
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !1658
  %arrayidx19 = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !1658
  br i1 %tobool5.not, label %do.body16, label %do.body, !dbg !1659

do.body:                                          ; preds = %if.then2
  store ptr @PL_sv_yes, ptr %arrayidx19, align 8, !dbg !1660
  call void @llvm.dbg.value(metadata i64 1, metadata !1625, metadata !DIExpression()), !dbg !1661
  br label %cleanup

do.body16:                                        ; preds = %if.then2
  store ptr @PL_sv_no, ptr %arrayidx19, align 8, !dbg !1662
  call void @llvm.dbg.value(metadata i64 1, metadata !1631, metadata !DIExpression()), !dbg !1663
  br label %cleanup

if.then33:                                        ; preds = %if.end
  %10 = load ptr, ptr @PL_stack_base, align 8, !dbg !1664
  %add34 = add nsw i32 %2, 2, !dbg !1664
  %idxprom35 = sext i32 %add34 to i64, !dbg !1664
  %arrayidx36 = getelementptr inbounds ptr, ptr %10, i64 %idxprom35, !dbg !1664
  %11 = load ptr, ptr %arrayidx36, align 8, !dbg !1664
  %tobool37.not = icmp eq ptr %11, null, !dbg !1664
  br i1 %tobool37.not, label %if.else171, label %land.lhs.true, !dbg !1664

land.lhs.true:                                    ; preds = %if.then33
  %sv_flags41 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2, !dbg !1664
  %12 = load i32, ptr %sv_flags41, align 4, !dbg !1664
  %and42 = and i32 %12, 2097152, !dbg !1664
  %tobool43.not = icmp eq i32 %and42, 0, !dbg !1664
  br i1 %tobool43.not, label %cond.false51, label %cond.true46, !dbg !1665

cond.true46:                                      ; preds = %land.lhs.true
  %call = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %11, i32 noundef 2) #8, !dbg !1664
  br i1 %call, label %if.then156, label %if.else171, !dbg !1664

cond.false51:                                     ; preds = %land.lhs.true
  %and56 = and i32 %12, 65280, !dbg !1664
  %tobool57.not = icmp ne i32 %and56, 0, !dbg !1664
  %and62 = and i32 %12, 255, !dbg !1664
  %cmp63 = icmp eq i32 %and62, 8, !dbg !1664
  %or.cond = or i1 %tobool57.not, %cmp63, !dbg !1664
  %and70 = and i32 %12, 16826623, !dbg !1664
  %cmp71 = icmp eq i32 %and70, 16777226, !dbg !1664
  %or.cond244 = select i1 %or.cond, i1 true, i1 %cmp71, !dbg !1664
  br i1 %or.cond244, label %cond.false74, label %if.else171, !dbg !1664

cond.false74:                                     ; preds = %cond.false51
  %and79 = and i32 %12, 1024, !dbg !1664
  %tobool80.not = icmp eq i32 %and79, 0, !dbg !1664
  br i1 %tobool80.not, label %cond.false108, label %cond.true81, !dbg !1665

cond.true81:                                      ; preds = %cond.false74
  %13 = load ptr, ptr %11, align 8, !dbg !1664
  %tobool85.not = icmp eq ptr %13, null, !dbg !1664
  br i1 %tobool85.not, label %if.else171, label %land.lhs.true86, !dbg !1664

land.lhs.true86:                                  ; preds = %cond.true81
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2, !dbg !1664
  %14 = load i64, ptr %xpv_cur, align 8, !dbg !1664
  %cmp91 = icmp ugt i64 %14, 1, !dbg !1664
  br i1 %cmp91, label %if.then156, label %lor.lhs.false93, !dbg !1664

lor.lhs.false93:                                  ; preds = %land.lhs.true86
  %tobool99.not = icmp eq i64 %14, 0, !dbg !1664
  br i1 %tobool99.not, label %if.else171, label %land.lhs.true100, !dbg !1664

land.lhs.true100:                                 ; preds = %lor.lhs.false93
  %sv_u104 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3, !dbg !1664
  %15 = load ptr, ptr %sv_u104, align 8, !dbg !1664
  %16 = load i8, ptr %15, align 1, !dbg !1664
  %cmp106.not = icmp eq i8 %16, 48, !dbg !1664
  br i1 %cmp106.not, label %if.else171, label %if.then156, !dbg !1664

cond.false108:                                    ; preds = %cond.false74
  %and113 = and i32 %12, 768, !dbg !1664
  %tobool114.not = icmp eq i32 %and113, 0, !dbg !1664
  br i1 %tobool114.not, label %cond.false150, label %cond.true115, !dbg !1665

cond.true115:                                     ; preds = %cond.false108
  %and120 = and i32 %12, 256, !dbg !1664
  %tobool121.not = icmp eq i32 %and120, 0, !dbg !1664
  br i1 %tobool121.not, label %lor.lhs.false129, label %land.lhs.true122, !dbg !1664

land.lhs.true122:                                 ; preds = %cond.true115
  %17 = load ptr, ptr %11, align 8, !dbg !1664
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4, !dbg !1664
  %18 = load i64, ptr %xiv_u, align 8, !dbg !1664
  %cmp127.not = icmp eq i64 %18, 0, !dbg !1664
  br i1 %cmp127.not, label %lor.lhs.false129, label %if.then156, !dbg !1664

lor.lhs.false129:                                 ; preds = %land.lhs.true122, %cond.true115
  %and134 = and i32 %12, 512, !dbg !1664
  %tobool135.not = icmp eq i32 %and134, 0, !dbg !1664
  br i1 %tobool135.not, label %if.else171, label %land.lhs.true136, !dbg !1664

land.lhs.true136:                                 ; preds = %lor.lhs.false129
  %19 = load ptr, ptr %11, align 8, !dbg !1664
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %19, i64 0, i32 5, !dbg !1664
  %20 = load double, ptr %xnv_u, align 8, !dbg !1664
  %21 = fcmp une double %20, 0.000000e+00, !dbg !1664
  br i1 %21, label %if.then156, label %if.else171, !dbg !1664

cond.false150:                                    ; preds = %cond.false108
  %call154 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %11, i32 noundef 0) #8, !dbg !1664
  br i1 %call154, label %if.then156, label %if.else171, !dbg !1665

if.then156:                                       ; preds = %cond.false150, %land.lhs.true136, %land.lhs.true122, %land.lhs.true100, %land.lhs.true86, %cond.true46
  %sv_flags157 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2, !dbg !1666
  %22 = load i32, ptr %sv_flags157, align 4, !dbg !1667
  %or = or i32 %22, 134217728, !dbg !1667
  store i32 %or, ptr %sv_flags157, align 4, !dbg !1667
  %23 = load ptr, ptr @PL_stack_base, align 8, !dbg !1668
  %arrayidx161 = getelementptr inbounds ptr, ptr %23, i64 %idxprom, !dbg !1668
  store ptr @PL_sv_yes, ptr %arrayidx161, align 8, !dbg !1668
  call void @llvm.dbg.value(metadata i64 1, metadata !1634, metadata !DIExpression()), !dbg !1669
  br label %cleanup

if.else171:                                       ; preds = %land.lhs.true136, %cond.false51, %if.then33, %cond.false150, %lor.lhs.false129, %land.lhs.true100, %lor.lhs.false93, %cond.true81, %cond.true46
  %sv_flags172 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2, !dbg !1670
  %24 = load i32, ptr %sv_flags172, align 4, !dbg !1671
  %and173 = and i32 %24, -134217729, !dbg !1671
  store i32 %and173, ptr %sv_flags172, align 4, !dbg !1671
  %25 = load ptr, ptr @PL_stack_base, align 8, !dbg !1672
  %arrayidx177 = getelementptr inbounds ptr, ptr %25, i64 %idxprom, !dbg !1672
  store ptr @PL_sv_no, ptr %arrayidx177, align 8, !dbg !1672
  call void @llvm.dbg.value(metadata i64 1, metadata !1641, metadata !DIExpression()), !dbg !1673
  br label %cleanup

do.body190:                                       ; preds = %if.end
  %26 = load ptr, ptr @PL_stack_base, align 8, !dbg !1674
  %arrayidx193 = getelementptr inbounds ptr, ptr %26, i64 %idxprom, !dbg !1674
  store ptr @PL_sv_undef, ptr %arrayidx193, align 8, !dbg !1674
  call void @llvm.dbg.value(metadata i64 1, metadata !1645, metadata !DIExpression()), !dbg !1675
  br label %cleanup

cleanup:                                          ; preds = %do.body190, %if.else171, %if.then156, %do.body16, %do.body
  %27 = load ptr, ptr @PL_stack_base, align 8, !dbg !1648
  %add.ptr197 = getelementptr inbounds ptr, ptr %27, i64 %idxprom, !dbg !1648
  store ptr %add.ptr197, ptr @PL_stack_sp, align 8, !dbg !1648
  ret void, !dbg !1676
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_constant__make_const(ptr noundef %cv) #0 !dbg !1677 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1679, metadata !DIExpression()), !dbg !1691
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1692
  call void @llvm.dbg.value(metadata ptr %0, metadata !1680, metadata !DIExpression()), !dbg !1691
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1692
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1692
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1692
  %2 = load i32, ptr %1, align 4, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %2, metadata !1681, metadata !DIExpression()), !dbg !1691
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1692
  %inc = add nsw i32 %2, 1, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1681, metadata !DIExpression()), !dbg !1691
  %idx.ext = sext i32 %2 to i64, !dbg !1692
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1692
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1682, metadata !DIExpression()), !dbg !1691
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1692
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1692
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1692
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1692
  %conv = trunc i64 %4 to i32, !dbg !1692
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1683, metadata !DIExpression()), !dbg !1691
  %idxprom = sext i32 %inc to i64, !dbg !1693
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1693
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %5, metadata !1684, metadata !DIExpression()), !dbg !1691
  %sv_flags = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1694
  %6 = load i32, ptr %sv_flags, align 4, !dbg !1694
  %and = and i32 %6, 2048, !dbg !1694
  %tobool = icmp eq i32 %and, 0, !dbg !1694
  %cmp = icmp ne i32 %conv, 1
  %or.cond = select i1 %tobool, i1 true, i1 %cmp, !dbg !1696
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1696

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.11), !dbg !1697
  br label %if.end, !dbg !1697

if.end:                                           ; preds = %entry, %if.then
  %sv_u = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3, !dbg !1698
  %7 = load ptr, ptr %sv_u, align 8, !dbg !1698
  call void @llvm.dbg.value(metadata ptr %7, metadata !1685, metadata !DIExpression()), !dbg !1691
  %sv_flags2 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 2, !dbg !1699
  %8 = load i32, ptr %sv_flags2, align 4, !dbg !1699
  %or = or i32 %8, 134283264, !dbg !1699
  store i32 %or, ptr %sv_flags2, align 4, !dbg !1699
  %and4 = and i32 %8, 255, !dbg !1700
  %cmp5 = icmp eq i32 %and4, 11, !dbg !1701
  br i1 %cmp5, label %land.lhs.true, label %do.body, !dbg !1702

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %7, align 8, !dbg !1703
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %9, i64 0, i32 2, !dbg !1703
  %10 = load i64, ptr %xav_fill, align 8, !dbg !1703
  %cmp7.not = icmp eq i64 %10, -1, !dbg !1704
  br i1 %cmp7.not, label %do.body, label %if.then9, !dbg !1705

if.then9:                                         ; preds = %land.lhs.true
  %sv_u10 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3, !dbg !1706
  call void @llvm.dbg.value(metadata !DIArgList(ptr undef, i64 %10), metadata !1686, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1708
  %cmp15.not45 = icmp slt i64 %10, 0, !dbg !1709
  br i1 %cmp15.not45, label %do.body, label %for.body.preheader, !dbg !1711

for.body.preheader:                               ; preds = %if.then9
  %11 = load ptr, ptr %sv_u10, align 8, !dbg !1706
  call void @llvm.dbg.value(metadata !DIArgList(ptr %11, i64 %10), metadata !1686, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1708
  %add.ptr13 = getelementptr inbounds ptr, ptr %11, i64 %10, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %add.ptr13, metadata !1686, metadata !DIExpression()), !dbg !1708
  br label %for.body, !dbg !1711

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %12 = phi ptr [ %15, %for.inc ], [ %11, %for.body.preheader ]
  %svp.046 = phi ptr [ %incdec.ptr22, %for.inc ], [ %add.ptr13, %for.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %svp.046, metadata !1686, metadata !DIExpression()), !dbg !1708
  %13 = load ptr, ptr %svp.046, align 8, !dbg !1713
  %tobool17.not = icmp eq ptr %13, null, !dbg !1713
  br i1 %tobool17.not, label %for.inc, label %if.then18, !dbg !1715

if.then18:                                        ; preds = %for.body
  %sv_flags19 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2, !dbg !1716
  %14 = load i32, ptr %sv_flags19, align 4, !dbg !1716
  %or20 = or i32 %14, 131072, !dbg !1716
  store i32 %or20, ptr %sv_flags19, align 4, !dbg !1716
  %.pre = load ptr, ptr %sv_u10, align 8, !dbg !1717
  br label %for.inc, !dbg !1716

for.inc:                                          ; preds = %for.body, %if.then18
  %15 = phi ptr [ %12, %for.body ], [ %.pre, %if.then18 ], !dbg !1717
  %incdec.ptr22 = getelementptr inbounds ptr, ptr %svp.046, i64 -1, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %incdec.ptr22, metadata !1686, metadata !DIExpression()), !dbg !1708
  %cmp15.not = icmp ult ptr %incdec.ptr22, %15, !dbg !1709
  br i1 %cmp15.not, label %do.body, label %for.body, !dbg !1711, !llvm.loop !1719

do.body:                                          ; preds = %for.inc, %if.then9, %if.end, %land.lhs.true
  call void @llvm.dbg.value(metadata i64 0, metadata !1689, metadata !DIExpression()), !dbg !1723
  %16 = load ptr, ptr @PL_stack_base, align 8, !dbg !1724
  %add.ptr25 = getelementptr inbounds ptr, ptr %16, i64 %idxprom, !dbg !1724
  %add.ptr26 = getelementptr inbounds ptr, ptr %add.ptr25, i64 -1, !dbg !1724
  store ptr %add.ptr26, ptr @PL_stack_sp, align 8, !dbg !1724
  ret void, !dbg !1725
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_Internals_SvREFCNT(ptr noundef %cv) #0 !dbg !1726 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1728, metadata !DIExpression()), !dbg !1739
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1740
  call void @llvm.dbg.value(metadata ptr %0, metadata !1729, metadata !DIExpression()), !dbg !1739
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1740
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1740
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1740
  %2 = load i32, ptr %1, align 4, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %2, metadata !1730, metadata !DIExpression()), !dbg !1739
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1740
  %inc = add nsw i32 %2, 1, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1730, metadata !DIExpression()), !dbg !1739
  %idx.ext = sext i32 %2 to i64, !dbg !1740
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1740
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1731, metadata !DIExpression()), !dbg !1739
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1740
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1740
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1740
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1740
  %conv = trunc i64 %4 to i32, !dbg !1740
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1732, metadata !DIExpression()), !dbg !1739
  %idxprom = sext i32 %inc to i64, !dbg !1741
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1741
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %5, metadata !1733, metadata !DIExpression()), !dbg !1739
  %6 = add i32 %conv, -3, !dbg !1742
  %7 = icmp ult i32 %6, -2, !dbg !1742
  br i1 %7, label %if.then, label %lor.lhs.false, !dbg !1742

lor.lhs.false:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1744
  %8 = load i32, ptr %sv_flags, align 4, !dbg !1744
  %and = and i32 %8, 2048, !dbg !1744
  %tobool.not = icmp eq i32 %and, 0, !dbg !1744
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1745

if.then:                                          ; preds = %entry, %lor.lhs.false
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.12), !dbg !1746
  br label %if.end, !dbg !1746

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %sv_u = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3, !dbg !1747
  %9 = load ptr, ptr %sv_u, align 8, !dbg !1747
  call void @llvm.dbg.value(metadata ptr %9, metadata !1734, metadata !DIExpression()), !dbg !1739
  %cmp4 = icmp eq i32 %conv, 2, !dbg !1748
  br i1 %cmp4, label %cond.true, label %cond.false22, !dbg !1749

cond.true:                                        ; preds = %if.end
  %10 = load ptr, ptr @PL_stack_base, align 8, !dbg !1750
  %add6 = add nsw i32 %2, 2, !dbg !1750
  %idxprom7 = sext i32 %add6 to i64, !dbg !1750
  %arrayidx8 = getelementptr inbounds ptr, ptr %10, i64 %idxprom7, !dbg !1750
  %11 = load ptr, ptr %arrayidx8, align 8, !dbg !1750
  %sv_flags9 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2, !dbg !1750
  %12 = load i32, ptr %sv_flags9, align 4, !dbg !1750
  %and10 = and i32 %12, -2145386240, !dbg !1750
  %cmp11 = icmp eq i32 %and10, -2147483392, !dbg !1750
  br i1 %cmp11, label %cond.true13, label %cond.false, !dbg !1750

cond.true13:                                      ; preds = %cond.true
  %13 = load ptr, ptr %11, align 8, !dbg !1750
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %13, i64 0, i32 4, !dbg !1750
  %14 = load i64, ptr %xuv_u, align 8, !dbg !1750
  br label %cond.end, !dbg !1750

cond.false:                                       ; preds = %cond.true
  %call = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %11, i32 noundef 2) #8, !dbg !1750
  br label %cond.end, !dbg !1750

cond.end:                                         ; preds = %cond.false, %cond.true13
  %cond = phi i64 [ %14, %cond.true13 ], [ %call, %cond.false ], !dbg !1750
  %15 = trunc i64 %cond to i32, !dbg !1750
  %conv21 = add i32 %15, 1, !dbg !1750
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 1, !dbg !1751
  store i32 %conv21, ptr %sv_refcnt, align 8, !dbg !1752
  br label %cond.end24, !dbg !1749

cond.false22:                                     ; preds = %if.end
  %sv_refcnt23 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 1, !dbg !1753
  %16 = load i32, ptr %sv_refcnt23, align 8, !dbg !1753
  br label %cond.end24, !dbg !1749

cond.end24:                                       ; preds = %cond.false22, %cond.end
  %cond25 = phi i32 [ %conv21, %cond.end ], [ %16, %cond.false22 ], !dbg !1749
  call void @llvm.dbg.value(metadata i32 %cond25, metadata !1735, metadata !DIExpression()), !dbg !1739
  %sub = add i32 %cond25, -1, !dbg !1754
  %conv26 = zext i32 %sub to i64, !dbg !1754
  %call27 = tail call ptr @Perl_newSVuv(i64 noundef %conv26) #8, !dbg !1754
  %call28 = tail call ptr @Perl_sv_2mortal(ptr noundef %call27) #8, !dbg !1754
  %17 = load ptr, ptr @PL_stack_base, align 8, !dbg !1754
  %arrayidx31 = getelementptr inbounds ptr, ptr %17, i64 %idxprom, !dbg !1754
  store ptr %call28, ptr %arrayidx31, align 8, !dbg !1754
  call void @llvm.dbg.value(metadata i64 1, metadata !1736, metadata !DIExpression()), !dbg !1755
  %18 = load ptr, ptr @PL_stack_base, align 8, !dbg !1756
  %add.ptr34 = getelementptr inbounds ptr, ptr %18, i64 %idxprom, !dbg !1756
  store ptr %add.ptr34, ptr @PL_stack_sp, align 8, !dbg !1756
  ret void, !dbg !1757
}

declare !dbg !1758 ptr @Perl_newSVuv(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_Internals_hv_clear_placehold(ptr noundef %cv) #0 !dbg !1761 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1763, metadata !DIExpression()), !dbg !1774
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %0, metadata !1764, metadata !DIExpression()), !dbg !1774
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1775
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1775
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1775
  %2 = load i32, ptr %1, align 4, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %2, metadata !1765, metadata !DIExpression()), !dbg !1774
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %2, metadata !1765, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1774
  %idx.ext = sext i32 %2 to i64, !dbg !1775
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1766, metadata !DIExpression()), !dbg !1774
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1775
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1775
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1775
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1775
  %conv = trunc i64 %4 to i32, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1767, metadata !DIExpression()), !dbg !1774
  %cmp.not = icmp eq i32 %conv, 1, !dbg !1776
  br i1 %cmp.not, label %lor.lhs.false, label %if.then, !dbg !1777

lor.lhs.false:                                    ; preds = %entry
  %inc = add nsw i32 %2, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1765, metadata !DIExpression()), !dbg !1774
  %idxprom = sext i32 %inc to i64, !dbg !1778
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !1778
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !1778
  %sv_flags = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 2, !dbg !1778
  %6 = load i32, ptr %sv_flags, align 4, !dbg !1778
  %and = and i32 %6, 2048, !dbg !1778
  %tobool.not = icmp eq i32 %and, 0, !dbg !1778
  br i1 %tobool.not, label %if.then, label %if.else, !dbg !1779

if.then:                                          ; preds = %lor.lhs.false, %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.13), !dbg !1780
  br label %cleanup8, !dbg !1781

if.else:                                          ; preds = %lor.lhs.false
  %sv_u = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3, !dbg !1782
  %7 = load ptr, ptr %sv_u, align 8, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %7, metadata !1768, metadata !DIExpression()), !dbg !1783
  tail call void @Perl_hv_clear_placeholders(ptr noundef %7) #8, !dbg !1784
  call void @llvm.dbg.value(metadata i64 0, metadata !1772, metadata !DIExpression()), !dbg !1785
  %8 = load ptr, ptr @PL_stack_base, align 8, !dbg !1786
  %add.ptr6 = getelementptr inbounds ptr, ptr %8, i64 %idxprom, !dbg !1786
  %add.ptr7 = getelementptr inbounds ptr, ptr %add.ptr6, i64 -1, !dbg !1786
  store ptr %add.ptr7, ptr @PL_stack_sp, align 8, !dbg !1786
  br label %cleanup8

cleanup8:                                         ; preds = %if.else, %if.then
  ret void, !dbg !1781
}

declare !dbg !1787 void @Perl_hv_clear_placeholders(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_PerlIO_get_layers(ptr noundef %cv) #0 !dbg !1790 {
entry:
  %klen = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1792, metadata !DIExpression()), !dbg !1845
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1846
  call void @llvm.dbg.value(metadata ptr %0, metadata !1793, metadata !DIExpression()), !dbg !1845
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !1846
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !1846
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !1846
  %2 = load i32, ptr %1, align 4, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %2, metadata !1794, metadata !DIExpression()), !dbg !1845
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !1846
  %inc = add nsw i32 %2, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1794, metadata !DIExpression()), !dbg !1845
  %idx.ext = sext i32 %2 to i64, !dbg !1846
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !1846
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1795, metadata !DIExpression()), !dbg !1845
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1846
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !1846
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1846
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1846
  %conv = trunc i64 %4 to i32, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1796, metadata !DIExpression()), !dbg !1845
  %cmp = icmp slt i32 %conv, 1, !dbg !1847
  %5 = and i32 %conv, 1
  %cmp2 = icmp eq i32 %5, 0
  %or.cond = or i1 %cmp, %cmp2, !dbg !1849
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1849

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.14), !dbg !1850
  br label %if.end, !dbg !1850

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata i8 1, metadata !1803, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8 0, metadata !1804, metadata !DIExpression()), !dbg !1851
  %cmp4 = icmp sgt i32 %conv, 1, !dbg !1852
  br i1 %cmp4, label %for.cond.preheader, label %if.end330, !dbg !1853

for.cond.preheader:                               ; preds = %if.end
  %svp.0782 = getelementptr inbounds ptr, ptr %add.ptr, i64 2, !dbg !1854
  call void @llvm.dbg.value(metadata i8 1, metadata !1803, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8 0, metadata !1804, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata ptr %svp.0782, metadata !1805, metadata !DIExpression()), !dbg !1855
  %cmp8.not783 = icmp ugt ptr %svp.0782, %0, !dbg !1856
  br i1 %cmp8.not783, label %for.end, label %for.body, !dbg !1857

for.body:                                         ; preds = %for.cond.preheader, %sw.epilog
  %svp.0789 = phi ptr [ %svp.0, %sw.epilog ], [ %svp.0782, %for.cond.preheader ]
  %input.0787 = phi i8 [ %input.1, %sw.epilog ], [ 1, %for.cond.preheader ]
  %details.0785 = phi i8 [ %details.1, %sw.epilog ], [ 0, %for.cond.preheader ]
  %add.ptr.pn784 = phi ptr [ %svp.0789, %sw.epilog ], [ %add.ptr, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i8 %input.0787, metadata !1803, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8 %details.0785, metadata !1804, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata ptr %svp.0789, metadata !1809, metadata !DIExpression()), !dbg !1858
  %add.ptr10 = getelementptr inbounds ptr, ptr %add.ptr.pn784, i64 3, !dbg !1859
  call void @llvm.dbg.value(metadata ptr %add.ptr10, metadata !1814, metadata !DIExpression()), !dbg !1858
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %klen) #8, !dbg !1860
  %6 = load ptr, ptr %svp.0789, align 8, !dbg !1861
  %sv_flags = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !1861
  %7 = load i32, ptr %sv_flags, align 4, !dbg !1861
  %and = and i32 %7, 2098176, !dbg !1861
  %cmp11 = icmp eq i32 %and, 1024, !dbg !1861
  br i1 %cmp11, label %cond.true, label %cond.false, !dbg !1861

cond.true:                                        ; preds = %for.body
  %8 = load ptr, ptr %6, align 8, !dbg !1861
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2, !dbg !1861
  %9 = load i64, ptr %xpv_cur, align 8, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %9, metadata !1815, metadata !DIExpression()), !dbg !1858
  store i64 %9, ptr %klen, align 8, !dbg !1861
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !1861
  %10 = load ptr, ptr %sv_u, align 8, !dbg !1861
  br label %cond.end, !dbg !1861

cond.false:                                       ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %klen, metadata !1815, metadata !DIExpression(DW_OP_deref)), !dbg !1858
  %call = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %klen, i32 noundef 34) #8, !dbg !1861
  br label %cond.end, !dbg !1861

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ %call, %cond.false ], !dbg !1861
  call void @llvm.dbg.value(metadata ptr %cond, metadata !1816, metadata !DIExpression()), !dbg !1858
  %11 = load i8, ptr %cond, align 1, !dbg !1862
  %conv14 = sext i8 %11 to i32, !dbg !1862
  switch i32 %conv14, label %fail [
    i32 105, label %sw.bb
    i32 111, label %sw.bb109
    i32 100, label %sw.bb218
  ], !dbg !1863

sw.bb:                                            ; preds = %cond.end
  %12 = load i64, ptr %klen, align 8, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %12, metadata !1815, metadata !DIExpression()), !dbg !1858
  %cmp15 = icmp eq i64 %12, 5, !dbg !1866
  br i1 %cmp15, label %land.lhs.true, label %fail, !dbg !1867

land.lhs.true:                                    ; preds = %sw.bb
  %bcmp762 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %cond, ptr noundef nonnull dereferenceable(5) @.str.15, i64 5), !dbg !1868
  %tobool.not = icmp eq i32 %bcmp762, 0, !dbg !1868
  br i1 %tobool.not, label %if.then18, label %fail, !dbg !1869

if.then18:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %add.ptr10, align 8, !dbg !1870
  %tobool19.not = icmp eq ptr %13, null, !dbg !1870
  br i1 %tobool19.not, label %land.end106, label %land.rhs, !dbg !1870

land.rhs:                                         ; preds = %if.then18
  %sv_flags22 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2, !dbg !1870
  %14 = load i32, ptr %sv_flags22, align 4, !dbg !1870
  %and23 = and i32 %14, 2097152, !dbg !1870
  %tobool24.not = icmp eq i32 %and23, 0, !dbg !1870
  br i1 %tobool24.not, label %cond.false30, label %cond.true27, !dbg !1870

cond.true27:                                      ; preds = %land.rhs
  %call28 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %13, i32 noundef 2) #8, !dbg !1870
  br label %land.end106, !dbg !1870

cond.false30:                                     ; preds = %land.rhs
  %and32 = and i32 %14, 65280, !dbg !1870
  %tobool33.not = icmp ne i32 %and32, 0, !dbg !1870
  %and36 = and i32 %14, 255, !dbg !1870
  %cmp37 = icmp eq i32 %and36, 8, !dbg !1870
  %or.cond763 = or i1 %tobool33.not, %cmp37, !dbg !1870
  %and41 = and i32 %14, 16826623, !dbg !1870
  %cmp42 = icmp eq i32 %and41, 16777226, !dbg !1870
  %or.cond764 = select i1 %or.cond763, i1 true, i1 %cmp42, !dbg !1870
  br i1 %or.cond764, label %cond.false45, label %land.end106, !dbg !1870

cond.false45:                                     ; preds = %cond.false30
  %and47 = and i32 %14, 1024, !dbg !1870
  %tobool48.not = icmp eq i32 %and47, 0, !dbg !1870
  br i1 %tobool48.not, label %cond.false66, label %cond.true49, !dbg !1870

cond.true49:                                      ; preds = %cond.false45
  %15 = load ptr, ptr %13, align 8, !dbg !1870
  %tobool51.not = icmp eq ptr %15, null, !dbg !1870
  br i1 %tobool51.not, label %land.end106, label %land.rhs52, !dbg !1870

land.rhs52:                                       ; preds = %cond.true49
  %xpv_cur54 = getelementptr inbounds %struct.xpv, ptr %15, i64 0, i32 2, !dbg !1870
  %16 = load i64, ptr %xpv_cur54, align 8, !dbg !1870
  %cmp55 = icmp ugt i64 %16, 1, !dbg !1870
  br i1 %cmp55, label %land.end106, label %lor.rhs, !dbg !1870

lor.rhs:                                          ; preds = %land.rhs52
  %tobool59.not = icmp eq i64 %16, 0, !dbg !1870
  br i1 %tobool59.not, label %land.end106, label %land.rhs60, !dbg !1870

land.rhs60:                                       ; preds = %lor.rhs
  %sv_u61 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3, !dbg !1870
  %17 = load ptr, ptr %sv_u61, align 8, !dbg !1870
  %18 = load i8, ptr %17, align 1, !dbg !1870
  %cmp63 = icmp ne i8 %18, 48, !dbg !1870
  br label %land.end106

cond.false66:                                     ; preds = %cond.false45
  %and68 = and i32 %14, 768, !dbg !1870
  %tobool69.not = icmp eq i32 %and68, 0, !dbg !1870
  br i1 %tobool69.not, label %cond.false94, label %cond.true70, !dbg !1870

cond.true70:                                      ; preds = %cond.false66
  %and72 = and i32 %14, 256, !dbg !1870
  %tobool73.not = icmp eq i32 %and72, 0, !dbg !1870
  br i1 %tobool73.not, label %lor.rhs78, label %land.lhs.true74, !dbg !1870

land.lhs.true74:                                  ; preds = %cond.true70
  %19 = load ptr, ptr %13, align 8, !dbg !1870
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %19, i64 0, i32 4, !dbg !1870
  %20 = load i64, ptr %xiv_u, align 8, !dbg !1870
  %cmp76.not = icmp eq i64 %20, 0, !dbg !1870
  br i1 %cmp76.not, label %lor.rhs78, label %land.end106, !dbg !1870

lor.rhs78:                                        ; preds = %land.lhs.true74, %cond.true70
  %and80 = and i32 %14, 512, !dbg !1870
  %tobool81.not = icmp eq i32 %and80, 0, !dbg !1870
  br i1 %tobool81.not, label %land.end106, label %land.rhs82, !dbg !1870

land.rhs82:                                       ; preds = %lor.rhs78
  %21 = load ptr, ptr %13, align 8, !dbg !1870
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %21, i64 0, i32 5, !dbg !1870
  %22 = load double, ptr %xnv_u, align 8, !dbg !1870
  %cmp84 = fcmp uno double %22, 0.000000e+00, !dbg !1870
  br i1 %cmp84, label %land.end106, label %lor.rhs85, !dbg !1870

lor.rhs85:                                        ; preds = %land.rhs82
  %cmp88 = fcmp une double %22, 0.000000e+00, !dbg !1870
  br label %land.end106, !dbg !1870

cond.false94:                                     ; preds = %cond.false66
  %call95 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %13, i32 noundef 0) #8, !dbg !1870
  br label %land.end106, !dbg !1870

land.end106:                                      ; preds = %cond.true27, %cond.false94, %cond.false30, %land.rhs52, %land.rhs60, %lor.rhs, %cond.true49, %lor.rhs78, %lor.rhs85, %land.rhs82, %land.lhs.true74, %if.then18
  %23 = phi i1 [ false, %if.then18 ], [ %call28, %cond.true27 ], [ %call95, %cond.false94 ], [ false, %cond.false30 ], [ false, %cond.true49 ], [ true, %land.rhs52 ], [ false, %lor.rhs ], [ %cmp63, %land.rhs60 ], [ true, %land.lhs.true74 ], [ false, %lor.rhs78 ], [ true, %land.rhs82 ], [ %cmp88, %lor.rhs85 ], !dbg !1872
  %frombool = zext i1 %23 to i8, !dbg !1873
  call void @llvm.dbg.value(metadata i8 %frombool, metadata !1803, metadata !DIExpression()), !dbg !1851
  br label %sw.epilog, !dbg !1874

sw.bb109:                                         ; preds = %cond.end
  %24 = load i64, ptr %klen, align 8, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %24, metadata !1815, metadata !DIExpression()), !dbg !1858
  %cmp110 = icmp eq i64 %24, 6, !dbg !1877
  br i1 %cmp110, label %land.lhs.true112, label %fail, !dbg !1878

land.lhs.true112:                                 ; preds = %sw.bb109
  %bcmp761 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %cond, ptr noundef nonnull dereferenceable(6) @.str.16, i64 6), !dbg !1879
  %tobool114.not = icmp eq i32 %bcmp761, 0, !dbg !1879
  br i1 %tobool114.not, label %if.then115, label %fail, !dbg !1880

if.then115:                                       ; preds = %land.lhs.true112
  %25 = load ptr, ptr %add.ptr10, align 8, !dbg !1881
  %tobool116.not = icmp eq ptr %25, null, !dbg !1881
  br i1 %tobool116.not, label %land.end214, label %land.rhs119, !dbg !1881

land.rhs119:                                      ; preds = %if.then115
  %sv_flags120 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2, !dbg !1881
  %26 = load i32, ptr %sv_flags120, align 4, !dbg !1881
  %and121 = and i32 %26, 2097152, !dbg !1881
  %tobool122.not = icmp eq i32 %and121, 0, !dbg !1881
  br i1 %tobool122.not, label %cond.false128, label %cond.true125, !dbg !1881

cond.true125:                                     ; preds = %land.rhs119
  %call126 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %25, i32 noundef 2) #8, !dbg !1881
  br label %land.end214, !dbg !1881

cond.false128:                                    ; preds = %land.rhs119
  %and130 = and i32 %26, 65280, !dbg !1881
  %tobool131.not = icmp ne i32 %and130, 0, !dbg !1881
  %and134 = and i32 %26, 255, !dbg !1881
  %cmp135 = icmp eq i32 %and134, 8, !dbg !1881
  %or.cond765 = or i1 %tobool131.not, %cmp135, !dbg !1881
  %and139 = and i32 %26, 16826623, !dbg !1881
  %cmp140 = icmp eq i32 %and139, 16777226, !dbg !1881
  %or.cond766 = select i1 %or.cond765, i1 true, i1 %cmp140, !dbg !1881
  br i1 %or.cond766, label %cond.false143, label %land.end214, !dbg !1881

cond.false143:                                    ; preds = %cond.false128
  %and145 = and i32 %26, 1024, !dbg !1881
  %tobool146.not = icmp eq i32 %and145, 0, !dbg !1881
  br i1 %tobool146.not, label %cond.false170, label %cond.true147, !dbg !1881

cond.true147:                                     ; preds = %cond.false143
  %27 = load ptr, ptr %25, align 8, !dbg !1881
  %tobool149.not = icmp eq ptr %27, null, !dbg !1881
  br i1 %tobool149.not, label %land.end214, label %land.rhs150, !dbg !1881

land.rhs150:                                      ; preds = %cond.true147
  %xpv_cur152 = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2, !dbg !1881
  %28 = load i64, ptr %xpv_cur152, align 8, !dbg !1881
  %cmp153 = icmp ugt i64 %28, 1, !dbg !1881
  br i1 %cmp153, label %land.end214, label %lor.rhs155, !dbg !1881

lor.rhs155:                                       ; preds = %land.rhs150
  %tobool158.not = icmp eq i64 %28, 0, !dbg !1881
  br i1 %tobool158.not, label %land.end214, label %land.rhs159, !dbg !1881

land.rhs159:                                      ; preds = %lor.rhs155
  %sv_u160 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3, !dbg !1881
  %29 = load ptr, ptr %sv_u160, align 8, !dbg !1881
  %30 = load i8, ptr %29, align 1, !dbg !1881
  %cmp162 = icmp ne i8 %30, 48, !dbg !1881
  br label %land.end214

cond.false170:                                    ; preds = %cond.false143
  %and172 = and i32 %26, 768, !dbg !1881
  %tobool173.not = icmp eq i32 %and172, 0, !dbg !1881
  br i1 %tobool173.not, label %cond.false202, label %cond.true174, !dbg !1881

cond.true174:                                     ; preds = %cond.false170
  %and176 = and i32 %26, 256, !dbg !1881
  %tobool177.not = icmp eq i32 %and176, 0, !dbg !1881
  br i1 %tobool177.not, label %lor.rhs183, label %land.lhs.true178, !dbg !1881

land.lhs.true178:                                 ; preds = %cond.true174
  %31 = load ptr, ptr %25, align 8, !dbg !1881
  %xiv_u180 = getelementptr inbounds %struct.xpviv, ptr %31, i64 0, i32 4, !dbg !1881
  %32 = load i64, ptr %xiv_u180, align 8, !dbg !1881
  %cmp181.not = icmp eq i64 %32, 0, !dbg !1881
  br i1 %cmp181.not, label %lor.rhs183, label %land.end214, !dbg !1881

lor.rhs183:                                       ; preds = %land.lhs.true178, %cond.true174
  %and185 = and i32 %26, 512, !dbg !1881
  %tobool186.not = icmp eq i32 %and185, 0, !dbg !1881
  br i1 %tobool186.not, label %land.end214, label %land.rhs187, !dbg !1881

land.rhs187:                                      ; preds = %lor.rhs183
  %33 = load ptr, ptr %25, align 8, !dbg !1881
  %xnv_u189 = getelementptr inbounds %struct.xpvnv, ptr %33, i64 0, i32 5, !dbg !1881
  %34 = load double, ptr %xnv_u189, align 8, !dbg !1881
  %cmp190 = fcmp uno double %34, 0.000000e+00, !dbg !1881
  br i1 %cmp190, label %land.end214, label %lor.rhs191, !dbg !1881

lor.rhs191:                                       ; preds = %land.rhs187
  %cmp194 = fcmp une double %34, 0.000000e+00, !dbg !1881
  br label %land.end214, !dbg !1881

cond.false202:                                    ; preds = %cond.false170
  %call203 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %25, i32 noundef 0) #8, !dbg !1881
  br label %land.end214, !dbg !1881

land.end214:                                      ; preds = %cond.true125, %cond.false202, %cond.false128, %land.rhs150, %land.rhs159, %lor.rhs155, %cond.true147, %lor.rhs183, %lor.rhs191, %land.rhs187, %land.lhs.true178, %if.then115
  %35 = phi i1 [ false, %if.then115 ], [ %call126, %cond.true125 ], [ %call203, %cond.false202 ], [ false, %cond.false128 ], [ false, %cond.true147 ], [ true, %land.rhs150 ], [ false, %lor.rhs155 ], [ %cmp162, %land.rhs159 ], [ true, %land.lhs.true178 ], [ false, %lor.rhs183 ], [ true, %land.rhs187 ], [ %cmp194, %lor.rhs191 ], !dbg !1883
  %lnot = xor i1 %35, true, !dbg !1884
  %frombool216 = zext i1 %lnot to i8, !dbg !1885
  call void @llvm.dbg.value(metadata i8 %frombool216, metadata !1803, metadata !DIExpression()), !dbg !1851
  br label %sw.epilog, !dbg !1886

sw.bb218:                                         ; preds = %cond.end
  %36 = load i64, ptr %klen, align 8, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %36, metadata !1815, metadata !DIExpression()), !dbg !1858
  %cmp219 = icmp eq i64 %36, 7, !dbg !1889
  br i1 %cmp219, label %land.lhs.true221, label %fail, !dbg !1890

land.lhs.true221:                                 ; preds = %sw.bb218
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %cond, ptr noundef nonnull dereferenceable(7) @.str.17, i64 7), !dbg !1891
  %tobool223.not = icmp eq i32 %bcmp, 0, !dbg !1891
  br i1 %tobool223.not, label %if.then224, label %fail, !dbg !1892

if.then224:                                       ; preds = %land.lhs.true221
  %37 = load ptr, ptr %add.ptr10, align 8, !dbg !1893
  %tobool225.not = icmp eq ptr %37, null, !dbg !1893
  br i1 %tobool225.not, label %land.end323, label %land.rhs228, !dbg !1893

land.rhs228:                                      ; preds = %if.then224
  %sv_flags229 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2, !dbg !1893
  %38 = load i32, ptr %sv_flags229, align 4, !dbg !1893
  %and230 = and i32 %38, 2097152, !dbg !1893
  %tobool231.not = icmp eq i32 %and230, 0, !dbg !1893
  br i1 %tobool231.not, label %cond.false237, label %cond.true234, !dbg !1893

cond.true234:                                     ; preds = %land.rhs228
  %call235 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %37, i32 noundef 2) #8, !dbg !1893
  br label %land.end323, !dbg !1893

cond.false237:                                    ; preds = %land.rhs228
  %and239 = and i32 %38, 65280, !dbg !1893
  %tobool240.not = icmp ne i32 %and239, 0, !dbg !1893
  %and243 = and i32 %38, 255, !dbg !1893
  %cmp244 = icmp eq i32 %and243, 8, !dbg !1893
  %or.cond767 = or i1 %tobool240.not, %cmp244, !dbg !1893
  %and248 = and i32 %38, 16826623, !dbg !1893
  %cmp249 = icmp eq i32 %and248, 16777226, !dbg !1893
  %or.cond768 = select i1 %or.cond767, i1 true, i1 %cmp249, !dbg !1893
  br i1 %or.cond768, label %cond.false252, label %land.end323, !dbg !1893

cond.false252:                                    ; preds = %cond.false237
  %and254 = and i32 %38, 1024, !dbg !1893
  %tobool255.not = icmp eq i32 %and254, 0, !dbg !1893
  br i1 %tobool255.not, label %cond.false279, label %cond.true256, !dbg !1893

cond.true256:                                     ; preds = %cond.false252
  %39 = load ptr, ptr %37, align 8, !dbg !1893
  %tobool258.not = icmp eq ptr %39, null, !dbg !1893
  br i1 %tobool258.not, label %land.end323, label %land.rhs259, !dbg !1893

land.rhs259:                                      ; preds = %cond.true256
  %xpv_cur261 = getelementptr inbounds %struct.xpv, ptr %39, i64 0, i32 2, !dbg !1893
  %40 = load i64, ptr %xpv_cur261, align 8, !dbg !1893
  %cmp262 = icmp ugt i64 %40, 1, !dbg !1893
  br i1 %cmp262, label %land.end323, label %lor.rhs264, !dbg !1893

lor.rhs264:                                       ; preds = %land.rhs259
  %tobool267.not = icmp eq i64 %40, 0, !dbg !1893
  br i1 %tobool267.not, label %land.end323, label %land.rhs268, !dbg !1893

land.rhs268:                                      ; preds = %lor.rhs264
  %sv_u269 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 3, !dbg !1893
  %41 = load ptr, ptr %sv_u269, align 8, !dbg !1893
  %42 = load i8, ptr %41, align 1, !dbg !1893
  %cmp271 = icmp ne i8 %42, 48, !dbg !1893
  br label %land.end323

cond.false279:                                    ; preds = %cond.false252
  %and281 = and i32 %38, 768, !dbg !1893
  %tobool282.not = icmp eq i32 %and281, 0, !dbg !1893
  br i1 %tobool282.not, label %cond.false311, label %cond.true283, !dbg !1893

cond.true283:                                     ; preds = %cond.false279
  %and285 = and i32 %38, 256, !dbg !1893
  %tobool286.not = icmp eq i32 %and285, 0, !dbg !1893
  br i1 %tobool286.not, label %lor.rhs292, label %land.lhs.true287, !dbg !1893

land.lhs.true287:                                 ; preds = %cond.true283
  %43 = load ptr, ptr %37, align 8, !dbg !1893
  %xiv_u289 = getelementptr inbounds %struct.xpviv, ptr %43, i64 0, i32 4, !dbg !1893
  %44 = load i64, ptr %xiv_u289, align 8, !dbg !1893
  %cmp290.not = icmp eq i64 %44, 0, !dbg !1893
  br i1 %cmp290.not, label %lor.rhs292, label %land.end323, !dbg !1893

lor.rhs292:                                       ; preds = %land.lhs.true287, %cond.true283
  %and294 = and i32 %38, 512, !dbg !1893
  %tobool295.not = icmp eq i32 %and294, 0, !dbg !1893
  br i1 %tobool295.not, label %land.end323, label %land.rhs296, !dbg !1893

land.rhs296:                                      ; preds = %lor.rhs292
  %45 = load ptr, ptr %37, align 8, !dbg !1893
  %xnv_u298 = getelementptr inbounds %struct.xpvnv, ptr %45, i64 0, i32 5, !dbg !1893
  %46 = load double, ptr %xnv_u298, align 8, !dbg !1893
  %cmp299 = fcmp uno double %46, 0.000000e+00, !dbg !1893
  br i1 %cmp299, label %land.end323, label %lor.rhs300, !dbg !1893

lor.rhs300:                                       ; preds = %land.rhs296
  %cmp303 = fcmp une double %46, 0.000000e+00, !dbg !1893
  br label %land.end323, !dbg !1893

cond.false311:                                    ; preds = %cond.false279
  %call312 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %37, i32 noundef 0) #8, !dbg !1893
  br label %land.end323, !dbg !1893

land.end323:                                      ; preds = %cond.true234, %cond.false311, %cond.false237, %land.rhs259, %land.rhs268, %lor.rhs264, %cond.true256, %lor.rhs292, %lor.rhs300, %land.rhs296, %land.lhs.true287, %if.then224
  %47 = phi i1 [ false, %if.then224 ], [ %call235, %cond.true234 ], [ %call312, %cond.false311 ], [ false, %cond.false237 ], [ false, %cond.true256 ], [ true, %land.rhs259 ], [ false, %lor.rhs264 ], [ %cmp271, %land.rhs268 ], [ true, %land.lhs.true287 ], [ false, %lor.rhs292 ], [ true, %land.rhs296 ], [ %cmp303, %lor.rhs300 ], !dbg !1895
  %frombool325 = zext i1 %47 to i8, !dbg !1896
  call void @llvm.dbg.value(metadata i8 %frombool325, metadata !1804, metadata !DIExpression()), !dbg !1851
  br label %sw.epilog, !dbg !1897

fail:                                             ; preds = %cond.end, %sw.bb218, %land.lhs.true221, %sw.bb109, %land.lhs.true112, %sw.bb, %land.lhs.true
  call void @llvm.dbg.label(metadata !1843), !dbg !1898
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.18, ptr noundef nonnull %cond) #8, !dbg !1899
  br label %sw.epilog, !dbg !1900

sw.epilog:                                        ; preds = %fail, %land.end323, %land.end214, %land.end106
  %details.1 = phi i8 [ %details.0785, %fail ], [ %frombool325, %land.end323 ], [ %details.0785, %land.end214 ], [ %details.0785, %land.end106 ], !dbg !1851
  %input.1 = phi i8 [ %input.0787, %fail ], [ %input.0787, %land.end323 ], [ %frombool216, %land.end214 ], [ %frombool, %land.end106 ], !dbg !1851
  call void @llvm.dbg.value(metadata i8 %input.1, metadata !1803, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8 %details.1, metadata !1804, metadata !DIExpression()), !dbg !1851
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %klen) #8, !dbg !1901
  call void @llvm.dbg.value(metadata ptr %svp.0789, metadata !1805, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !1855
  %svp.0 = getelementptr inbounds ptr, ptr %svp.0789, i64 2, !dbg !1854
  call void @llvm.dbg.value(metadata ptr %svp.0, metadata !1805, metadata !DIExpression()), !dbg !1855
  %cmp8.not = icmp ugt ptr %svp.0, %0, !dbg !1856
  br i1 %cmp8.not, label %for.end, label %for.body, !dbg !1857, !llvm.loop !1902

for.end:                                          ; preds = %sw.epilog, %for.cond.preheader
  %details.0.lcssa = phi i8 [ 0, %for.cond.preheader ], [ %details.1, %sw.epilog ], !dbg !1904
  %input.0.lcssa = phi i8 [ 1, %for.cond.preheader ], [ %input.1, %sw.epilog ], !dbg !1905
  %sub = add nuw nsw i64 %4, 4294967295, !dbg !1906
  %48 = and i64 %sub, 4294967295
  %idx.neg = sub nsw i64 0, %48, !dbg !1907
  %add.ptr329 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !1907
  call void @llvm.dbg.value(metadata ptr %add.ptr329, metadata !1793, metadata !DIExpression()), !dbg !1845
  br label %if.end330, !dbg !1908

if.end330:                                        ; preds = %for.end, %if.end
  %details.2 = phi i8 [ %details.0.lcssa, %for.end ], [ 0, %if.end ], !dbg !1904
  %input.2 = phi i8 [ %input.0.lcssa, %for.end ], [ 1, %if.end ], !dbg !1905
  %sp.0 = phi ptr [ %add.ptr329, %for.end ], [ %0, %if.end ], !dbg !1845
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !1793, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 %input.2, metadata !1803, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8 %details.2, metadata !1804, metadata !DIExpression()), !dbg !1851
  %incdec.ptr331 = getelementptr inbounds ptr, ptr %sp.0, i64 -1, !dbg !1909
  call void @llvm.dbg.value(metadata ptr %incdec.ptr331, metadata !1793, metadata !DIExpression()), !dbg !1845
  %49 = load ptr, ptr %sp.0, align 8, !dbg !1909
  call void @llvm.dbg.value(metadata ptr %49, metadata !1797, metadata !DIExpression()), !dbg !1851
  %sv_flags332 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 2, !dbg !1910
  %50 = load i32, ptr %sv_flags332, align 4, !dbg !1910
  %and333 = and i32 %50, 2097152, !dbg !1910
  %tobool334.not = icmp eq i32 %and333, 0, !dbg !1910
  br i1 %tobool334.not, label %land.end340, label %land.rhs337, !dbg !1910

land.rhs337:                                      ; preds = %if.end330
  %call338 = call i32 @Perl_mg_get(ptr noundef nonnull %49) #8, !dbg !1910
  %.pre = load i32, ptr %sv_flags332, align 4, !dbg !1910
  br label %land.end340

land.end340:                                      ; preds = %if.end330, %land.rhs337
  %51 = phi i32 [ %50, %if.end330 ], [ %.pre, %land.rhs337 ], !dbg !1910
  %and343 = and i32 %51, 49152, !dbg !1910
  %cmp344 = icmp eq i32 %and343, 32768, !dbg !1910
  br i1 %cmp344, label %land.lhs.true346, label %cond.false357, !dbg !1910

land.lhs.true346:                                 ; preds = %land.end340
  %and348 = and i32 %51, 255, !dbg !1910
  %and348.off = add nsw i32 %and348, -9, !dbg !1910
  %switch = icmp ult i32 %and348.off, 2, !dbg !1910
  br i1 %switch, label %land.lhs.true429, label %cond.false357, !dbg !1910

cond.false357:                                    ; preds = %land.lhs.true346, %land.end340
  %and359 = and i32 %51, 2048, !dbg !1910
  %tobool360.not = icmp eq i32 %and359, 0, !dbg !1910
  br i1 %tobool360.not, label %land.lhs.true409, label %land.lhs.true361, !dbg !1910

land.lhs.true361:                                 ; preds = %cond.false357
  %sv_u362 = getelementptr inbounds %struct.sv, ptr %49, i64 0, i32 3, !dbg !1910
  %52 = load ptr, ptr %sv_u362, align 8, !dbg !1910
  %sv_flags363 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 2, !dbg !1910
  %53 = load i32, ptr %sv_flags363, align 4, !dbg !1910
  %and364 = and i32 %53, 255, !dbg !1910
  %cmp365 = icmp ult i32 %and364, 11, !dbg !1910
  br i1 %cmp365, label %land.lhs.true367, label %land.lhs.true409, !dbg !1910

land.lhs.true367:                                 ; preds = %land.lhs.true361
  %and370 = and i32 %53, 2097152, !dbg !1910
  %tobool371.not = icmp eq i32 %and370, 0, !dbg !1910
  br i1 %tobool371.not, label %land.end378, label %land.rhs374, !dbg !1910

land.rhs374:                                      ; preds = %land.lhs.true367
  %call376 = call i32 @Perl_mg_get(ptr noundef nonnull %52) #8, !dbg !1910
  %.pre796 = load ptr, ptr %sv_u362, align 8, !dbg !1910
  %sv_flags381.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre796, i64 0, i32 2
  %.pre797 = load i32, ptr %sv_flags381.phi.trans.insert, align 4, !dbg !1910
  br label %land.end378

land.end378:                                      ; preds = %land.lhs.true367, %land.rhs374
  %54 = phi i32 [ %53, %land.lhs.true367 ], [ %.pre797, %land.rhs374 ], !dbg !1910
  %55 = phi ptr [ %52, %land.lhs.true367 ], [ %.pre796, %land.rhs374 ], !dbg !1910
  %and382 = and i32 %54, 49152, !dbg !1910
  %cmp383 = icmp eq i32 %and382, 32768, !dbg !1910
  br i1 %cmp383, label %land.rhs385, label %land.lhs.true409, !dbg !1910

land.rhs385:                                      ; preds = %land.end378
  %and388 = and i32 %54, 255, !dbg !1910
  %and388.off = add nsw i32 %and388, -9, !dbg !1910
  %switch770 = icmp ult i32 %and388.off, 2, !dbg !1910
  br i1 %switch770, label %land.lhs.true429, label %land.lhs.true409, !dbg !1910

land.lhs.true409:                                 ; preds = %land.end378, %land.lhs.true361, %cond.false357, %land.rhs385
  call void @llvm.dbg.value(metadata ptr undef, metadata !1799, metadata !DIExpression()), !dbg !1851
  %56 = load i32, ptr %sv_flags332, align 4, !dbg !1911
  %and411 = and i32 %56, 2048, !dbg !1911
  %tobool412.not = icmp eq i32 %and411, 0, !dbg !1911
  br i1 %tobool412.not, label %if.end415, label %do.body593, !dbg !1913

if.end415:                                        ; preds = %land.lhs.true409
  %call414 = call ptr @Perl_gv_fetchsv(ptr noundef nonnull %49, i32 noundef 2048, i32 noundef 15) #8, !dbg !1914
  call void @llvm.dbg.value(metadata ptr %call414, metadata !1799, metadata !DIExpression()), !dbg !1851
  %tobool416.not = icmp eq ptr %call414, null, !dbg !1915
  br i1 %tobool416.not, label %do.body593, label %land.lhs.true419, !dbg !1916

land.lhs.true419:                                 ; preds = %if.end415
  %sv_flags420.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %call414, i64 0, i32 2
  %.pre798 = load i32, ptr %sv_flags420.phi.trans.insert, align 4, !dbg !1917
  %.pre799 = and i32 %.pre798, 255, !dbg !1917
  %.pre800 = add nsw i32 %.pre799, -9, !dbg !1917
  %switch771 = icmp ult i32 %.pre800, 2, !dbg !1917
  br i1 %switch771, label %land.lhs.true429, label %do.body593, !dbg !1917

land.lhs.true429:                                 ; preds = %land.lhs.true346, %land.rhs385, %land.lhs.true419
  %gv.0776804 = phi ptr [ %call414, %land.lhs.true419 ], [ %49, %land.lhs.true346 ], [ %55, %land.rhs385 ]
  %sv_u430 = getelementptr inbounds %struct.gv, ptr %gv.0776804, i64 0, i32 3, !dbg !1917
  %57 = load ptr, ptr %sv_u430, align 8, !dbg !1917
  %tobool432.not = icmp eq ptr %57, null, !dbg !1917
  br i1 %tobool432.not, label %do.body593, label %cond.end437, !dbg !1917

cond.end437:                                      ; preds = %land.lhs.true429
  %gp_io = getelementptr inbounds %struct.gp, ptr %57, i64 0, i32 1, !dbg !1917
  %58 = load ptr, ptr %gp_io, align 8, !dbg !1917
  call void @llvm.dbg.value(metadata ptr %58, metadata !1800, metadata !DIExpression()), !dbg !1851
  %tobool439.not = icmp eq ptr %58, null, !dbg !1918
  br i1 %tobool439.not, label %do.body593, label %if.then440, !dbg !1919

if.then440:                                       ; preds = %cond.end437
  %59 = and i8 %input.2, 1, !dbg !1920
  %tobool441.not = icmp eq i8 %59, 0, !dbg !1920
  br i1 %tobool441.not, label %cond.false445, label %cond.true443, !dbg !1920

cond.true443:                                     ; preds = %if.then440
  %sv_u444 = getelementptr inbounds %struct.io, ptr %58, i64 0, i32 3, !dbg !1921
  br label %cond.end447, !dbg !1920

cond.false445:                                    ; preds = %if.then440
  %60 = load ptr, ptr %58, align 8, !dbg !1922
  %xio_ofp = getelementptr inbounds %struct.xpvio, ptr %60, i64 0, i32 5, !dbg !1922
  br label %cond.end447, !dbg !1920

cond.end447:                                      ; preds = %cond.false445, %cond.true443
  %cond448.in = phi ptr [ %sv_u444, %cond.true443 ], [ %xio_ofp, %cond.false445 ]
  %cond448 = load ptr, ptr %cond448.in, align 8, !dbg !1920
  %call449 = call ptr @PerlIO_get_layers(ptr noundef %cond448) #8, !dbg !1923
  call void @llvm.dbg.value(metadata ptr %call449, metadata !1817, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata ptr %call449, metadata !1925, metadata !DIExpression()) #8, !dbg !1930
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %call449, i64 0, i32 2, !dbg !1932
  %61 = load i32, ptr %sv_flags.i, align 4, !dbg !1932
  %and.i = and i32 %61, 8388608, !dbg !1932
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !1932
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i, !dbg !1932

cond.true.i:                                      ; preds = %cond.end447
  %call.i = call i32 @Perl_mg_size(ptr noundef nonnull %call449) #8, !dbg !1932
  %conv.i = sext i32 %call.i to i64, !dbg !1932
  br label %S_av_top_index.exit, !dbg !1932

cond.false.i:                                     ; preds = %cond.end447
  %62 = load ptr, ptr %call449, align 8, !dbg !1932
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %62, i64 0, i32 2, !dbg !1932
  %63 = load i64, ptr %xav_fill.i, align 8, !dbg !1932
  br label %S_av_top_index.exit, !dbg !1932

S_av_top_index.exit:                              ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i64 [ %conv.i, %cond.true.i ], [ %63, %cond.false.i ], !dbg !1932
  call void @llvm.dbg.value(metadata i64 %cond.i, metadata !1822, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 0, metadata !1824, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 %cond.i, metadata !1821, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata ptr %incdec.ptr331, metadata !1793, metadata !DIExpression()), !dbg !1845
  %cmp452791 = icmp sgt i64 %cond.i, -1, !dbg !1933
  br i1 %cmp452791, label %for.body454.lr.ph, label %if.then.i, !dbg !1934

for.body454.lr.ph:                                ; preds = %S_av_top_index.exit
  %64 = and i8 %details.2, 1
  %tobool501.not = icmp eq i8 %64, 0
  br label %for.body454, !dbg !1934

for.body454:                                      ; preds = %for.body454.lr.ph, %if.end571
  %sp.1794 = phi ptr [ %incdec.ptr331, %for.body454.lr.ph ], [ %sp.5, %if.end571 ]
  %i.0793 = phi i64 [ %cond.i, %for.body454.lr.ph ], [ %sub573, %if.end571 ]
  %nitem.0792 = phi i64 [ 0, %for.body454.lr.ph ], [ %nitem.2, %if.end571 ]
  call void @llvm.dbg.value(metadata ptr %sp.1794, metadata !1793, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %i.0793, metadata !1821, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata i64 %nitem.0792, metadata !1824, metadata !DIExpression()), !dbg !1924
  %sub455 = add nsw i64 %i.0793, -2, !dbg !1935
  %call456 = call ptr @Perl_av_fetch(ptr noundef %call449, i64 noundef %sub455, i32 noundef 0) #8, !dbg !1935
  call void @llvm.dbg.value(metadata ptr %call456, metadata !1825, metadata !DIExpression()), !dbg !1936
  %sub457 = add nsw i64 %i.0793, -1, !dbg !1937
  %call458 = call ptr @Perl_av_fetch(ptr noundef %call449, i64 noundef %sub457, i32 noundef 0) #8, !dbg !1937
  call void @llvm.dbg.value(metadata ptr %call458, metadata !1829, metadata !DIExpression()), !dbg !1936
  %call459 = call ptr @Perl_av_fetch(ptr noundef %call449, i64 noundef %i.0793, i32 noundef 0) #8, !dbg !1938
  call void @llvm.dbg.value(metadata ptr %call459, metadata !1830, metadata !DIExpression()), !dbg !1936
  %tobool460.not = icmp eq ptr %call456, null, !dbg !1939
  br i1 %tobool460.not, label %land.end467, label %land.lhs.true461, !dbg !1940

land.lhs.true461:                                 ; preds = %for.body454
  %65 = load ptr, ptr %call456, align 8, !dbg !1941
  %tobool462.not = icmp eq ptr %65, null, !dbg !1941
  br i1 %tobool462.not, label %land.end467, label %land.rhs463, !dbg !1942

land.rhs463:                                      ; preds = %land.lhs.true461
  %sv_flags464 = getelementptr inbounds %struct.sv, ptr %65, i64 0, i32 2, !dbg !1943
  %66 = load i32, ptr %sv_flags464, align 4, !dbg !1943
  %and465 = and i32 %66, 1024, !dbg !1943
  %tobool466 = icmp ne i32 %and465, 0, !dbg !1942
  br label %land.end467

land.end467:                                      ; preds = %land.rhs463, %land.lhs.true461, %for.body454
  %67 = phi i1 [ false, %land.lhs.true461 ], [ false, %for.body454 ], [ %tobool466, %land.rhs463 ], !dbg !1936
  call void @llvm.dbg.value(metadata i1 %67, metadata !1831, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1936
  %tobool470.not = icmp eq ptr %call458, null, !dbg !1944
  br i1 %tobool470.not, label %land.end477, label %land.lhs.true471, !dbg !1945

land.lhs.true471:                                 ; preds = %land.end467
  %68 = load ptr, ptr %call458, align 8, !dbg !1946
  %tobool472.not = icmp eq ptr %68, null, !dbg !1946
  br i1 %tobool472.not, label %land.end477, label %land.rhs473, !dbg !1947

land.rhs473:                                      ; preds = %land.lhs.true471
  %sv_flags474 = getelementptr inbounds %struct.sv, ptr %68, i64 0, i32 2, !dbg !1948
  %69 = load i32, ptr %sv_flags474, align 4, !dbg !1948
  %and475 = and i32 %69, 1024, !dbg !1948
  %tobool476 = icmp ne i32 %and475, 0, !dbg !1947
  br label %land.end477

land.end477:                                      ; preds = %land.rhs473, %land.lhs.true471, %land.end467
  %70 = phi i1 [ false, %land.lhs.true471 ], [ false, %land.end467 ], [ %tobool476, %land.rhs473 ], !dbg !1936
  call void @llvm.dbg.value(metadata i1 %70, metadata !1832, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1936
  %tobool480.not = icmp eq ptr %call459, null, !dbg !1949
  br i1 %tobool480.not, label %land.end487, label %land.lhs.true481, !dbg !1950

land.lhs.true481:                                 ; preds = %land.end477
  %71 = load ptr, ptr %call459, align 8, !dbg !1951
  %tobool482.not = icmp eq ptr %71, null, !dbg !1951
  br i1 %tobool482.not, label %land.end487, label %land.rhs483, !dbg !1952

land.rhs483:                                      ; preds = %land.lhs.true481
  %sv_flags484 = getelementptr inbounds %struct.sv, ptr %71, i64 0, i32 2, !dbg !1953
  %72 = load i32, ptr %sv_flags484, align 4, !dbg !1953
  %and485 = and i32 %72, 256, !dbg !1953
  %tobool486 = icmp ne i32 %and485, 0, !dbg !1952
  br label %land.end487

land.end487:                                      ; preds = %land.rhs483, %land.lhs.true481, %land.end477
  %73 = phi i1 [ false, %land.lhs.true481 ], [ false, %land.end477 ], [ %tobool486, %land.rhs483 ], !dbg !1936
  call void @llvm.dbg.value(metadata i1 %73, metadata !1833, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1936
  %74 = load ptr, ptr @PL_stack_max, align 8, !dbg !1954
  %sub.ptr.lhs.cast490 = ptrtoint ptr %74 to i64, !dbg !1954
  %sub.ptr.rhs.cast491 = ptrtoint ptr %sp.1794 to i64, !dbg !1954
  %sub.ptr.sub492 = sub i64 %sub.ptr.lhs.cast490, %sub.ptr.rhs.cast491, !dbg !1954
  %cmp494 = icmp slt i64 %sub.ptr.sub492, 24, !dbg !1954
  br i1 %cmp494, label %if.then498, label %do.end, !dbg !1957

if.then498:                                       ; preds = %land.end487
  %call499 = call ptr @Perl_stack_grow(ptr noundef nonnull %sp.1794, ptr noundef nonnull %sp.1794, i64 noundef 3) #8, !dbg !1958
  call void @llvm.dbg.value(metadata ptr %call499, metadata !1793, metadata !DIExpression()), !dbg !1845
  br label %do.end, !dbg !1958

do.end:                                           ; preds = %land.end487, %if.then498
  %sp.2 = phi ptr [ %call499, %if.then498 ], [ %sp.1794, %land.end487 ], !dbg !1851
  call void @llvm.dbg.value(metadata ptr %sp.2, metadata !1793, metadata !DIExpression()), !dbg !1845
  br i1 %tobool501.not, label %if.else, label %if.then502, !dbg !1960

if.then502:                                       ; preds = %do.end
  br i1 %67, label %cond.true505, label %cond.end509, !dbg !1961

cond.true505:                                     ; preds = %if.then502
  %75 = load ptr, ptr %call456, align 8, !dbg !1961
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 1, !dbg !1961
  %76 = load i32, ptr %sv_refcnt, align 8, !dbg !1961
  %inc506 = add i32 %76, 1, !dbg !1961
  store i32 %inc506, ptr %sv_refcnt, align 8, !dbg !1961
  %77 = load ptr, ptr %call456, align 8, !dbg !1961
  %call507 = call ptr @Perl_sv_2mortal(ptr noundef %77) #8, !dbg !1961
  br label %cond.end509, !dbg !1961

cond.end509:                                      ; preds = %if.then502, %cond.true505
  %cond510 = phi ptr [ %call507, %cond.true505 ], [ @PL_sv_undef, %if.then502 ], !dbg !1961
  %incdec.ptr511 = getelementptr inbounds ptr, ptr %sp.2, i64 1, !dbg !1961
  call void @llvm.dbg.value(metadata ptr %incdec.ptr511, metadata !1793, metadata !DIExpression()), !dbg !1845
  store ptr %cond510, ptr %incdec.ptr511, align 8, !dbg !1961
  br i1 %70, label %cond.true514, label %cond.end525, !dbg !1963

cond.true514:                                     ; preds = %cond.end509
  %78 = load ptr, ptr %call458, align 8, !dbg !1963
  %sv_u515 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 3, !dbg !1963
  %79 = load ptr, ptr %sv_u515, align 8, !dbg !1963
  %80 = load ptr, ptr %78, align 8, !dbg !1963
  %xpv_cur518 = getelementptr inbounds %struct.xpv, ptr %80, i64 0, i32 2, !dbg !1963
  %81 = load i64, ptr %xpv_cur518, align 8, !dbg !1963
  %sv_flags519 = getelementptr inbounds %struct.sv, ptr %78, i64 0, i32 2, !dbg !1963
  %82 = load i32, ptr %sv_flags519, align 4, !dbg !1963
  %and520 = and i32 %82, 536870912, !dbg !1963
  %or = or i32 %and520, 524288, !dbg !1963
  %call523 = call ptr @Perl_newSVpvn_flags(ptr noundef %79, i64 noundef %81, i32 noundef %or) #8, !dbg !1963
  br label %cond.end525, !dbg !1963

cond.end525:                                      ; preds = %cond.end509, %cond.true514
  %cond526 = phi ptr [ %call523, %cond.true514 ], [ @PL_sv_undef, %cond.end509 ], !dbg !1963
  %incdec.ptr527 = getelementptr inbounds ptr, ptr %sp.2, i64 2, !dbg !1963
  call void @llvm.dbg.value(metadata ptr %incdec.ptr527, metadata !1793, metadata !DIExpression()), !dbg !1845
  store ptr %cond526, ptr %incdec.ptr527, align 8, !dbg !1963
  br i1 %73, label %cond.true530, label %cond.end535, !dbg !1964

cond.true530:                                     ; preds = %cond.end525
  %83 = load ptr, ptr %call459, align 8, !dbg !1964
  %sv_refcnt531 = getelementptr inbounds %struct.sv, ptr %83, i64 0, i32 1, !dbg !1964
  %84 = load i32, ptr %sv_refcnt531, align 8, !dbg !1964
  %inc532 = add i32 %84, 1, !dbg !1964
  store i32 %inc532, ptr %sv_refcnt531, align 8, !dbg !1964
  %85 = load ptr, ptr %call459, align 8, !dbg !1964
  %call533 = call ptr @Perl_sv_2mortal(ptr noundef %85) #8, !dbg !1964
  br label %cond.end535, !dbg !1964

cond.end535:                                      ; preds = %cond.end525, %cond.true530
  %cond536 = phi ptr [ %call533, %cond.true530 ], [ @PL_sv_undef, %cond.end525 ], !dbg !1964
  %incdec.ptr537 = getelementptr inbounds ptr, ptr %sp.2, i64 3, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %incdec.ptr537, metadata !1793, metadata !DIExpression()), !dbg !1845
  store ptr %cond536, ptr %incdec.ptr537, align 8, !dbg !1964
  %add = add nsw i64 %nitem.0792, 3, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %add, metadata !1824, metadata !DIExpression()), !dbg !1924
  br label %if.end571, !dbg !1966

if.else:                                          ; preds = %do.end
  %86 = select i1 %67, i1 %70, i1 false, !dbg !1967
  br i1 %86, label %if.then543, label %if.else547, !dbg !1967

if.then543:                                       ; preds = %if.else
  %87 = load ptr, ptr %call456, align 8, !dbg !1969
  %88 = load ptr, ptr %call458, align 8, !dbg !1969
  %call544 = call ptr (ptr, ...) @Perl_newSVpvf(ptr noundef nonnull @.str.19, ptr noundef %87, ptr noundef %88) #8, !dbg !1969
  %call545 = call ptr @Perl_sv_2mortal(ptr noundef %call544) #8, !dbg !1969
  %incdec.ptr546 = getelementptr inbounds ptr, ptr %sp.2, i64 1, !dbg !1969
  call void @llvm.dbg.value(metadata ptr %incdec.ptr546, metadata !1793, metadata !DIExpression()), !dbg !1845
  store ptr %call545, ptr %incdec.ptr546, align 8, !dbg !1969
  br label %if.end557, !dbg !1969

if.else547:                                       ; preds = %if.else
  br i1 %67, label %if.then549, label %if.else554, !dbg !1970

if.then549:                                       ; preds = %if.else547
  %89 = load ptr, ptr %call456, align 8, !dbg !1971
  %sv_refcnt550 = getelementptr inbounds %struct.sv, ptr %89, i64 0, i32 1, !dbg !1971
  %90 = load i32, ptr %sv_refcnt550, align 8, !dbg !1971
  %inc551 = add i32 %90, 1, !dbg !1971
  store i32 %inc551, ptr %sv_refcnt550, align 8, !dbg !1971
  %91 = load ptr, ptr %call456, align 8, !dbg !1971
  %call552 = call ptr @Perl_sv_2mortal(ptr noundef %91) #8, !dbg !1971
  %incdec.ptr553 = getelementptr inbounds ptr, ptr %sp.2, i64 1, !dbg !1971
  call void @llvm.dbg.value(metadata ptr %incdec.ptr553, metadata !1793, metadata !DIExpression()), !dbg !1845
  store ptr %call552, ptr %incdec.ptr553, align 8, !dbg !1971
  br label %if.end557, !dbg !1971

if.else554:                                       ; preds = %if.else547
  %incdec.ptr555 = getelementptr inbounds ptr, ptr %sp.2, i64 1, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %incdec.ptr555, metadata !1793, metadata !DIExpression()), !dbg !1845
  store ptr @PL_sv_undef, ptr %incdec.ptr555, align 8, !dbg !1973
  br label %if.end557

if.end557:                                        ; preds = %if.then549, %if.else554, %if.then543
  %sp.3 = phi ptr [ %incdec.ptr546, %if.then543 ], [ %incdec.ptr553, %if.then549 ], [ %incdec.ptr555, %if.else554 ], !dbg !1974
  call void @llvm.dbg.value(metadata ptr %sp.3, metadata !1793, metadata !DIExpression()), !dbg !1845
  %inc558 = add nsw i64 %nitem.0792, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %inc558, metadata !1824, metadata !DIExpression()), !dbg !1924
  br i1 %73, label %if.then560, label %if.end571, !dbg !1976

if.then560:                                       ; preds = %if.end557
  %92 = load ptr, ptr %call459, align 8, !dbg !1977
  %93 = load ptr, ptr %92, align 8, !dbg !1977
  %xiv_u562 = getelementptr inbounds %struct.xpviv, ptr %93, i64 0, i32 4, !dbg !1977
  %94 = load i64, ptr %xiv_u562, align 8, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %94, metadata !1834, metadata !DIExpression()), !dbg !1978
  %and563 = and i64 %94, 32768, !dbg !1979
  %tobool564.not = icmp eq i64 %and563, 0, !dbg !1979
  br i1 %tobool564.not, label %if.end571, label %if.then565, !dbg !1981

if.then565:                                       ; preds = %if.then560
  %call566 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.20, i64 noundef 4, i32 noundef 524288) #8, !dbg !1982
  %incdec.ptr567 = getelementptr inbounds ptr, ptr %sp.2, i64 2, !dbg !1982
  call void @llvm.dbg.value(metadata ptr %incdec.ptr567, metadata !1793, metadata !DIExpression()), !dbg !1845
  store ptr %call566, ptr %incdec.ptr567, align 8, !dbg !1982
  %inc568 = add nsw i64 %nitem.0792, 2, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %inc568, metadata !1824, metadata !DIExpression()), !dbg !1924
  br label %if.end571, !dbg !1985

if.end571:                                        ; preds = %if.then560, %if.then565, %if.end557, %cond.end535
  %nitem.2 = phi i64 [ %add, %cond.end535 ], [ %inc558, %if.end557 ], [ %inc568, %if.then565 ], [ %inc558, %if.then560 ], !dbg !1986
  %sp.5 = phi ptr [ %incdec.ptr537, %cond.end535 ], [ %sp.3, %if.end557 ], [ %incdec.ptr567, %if.then565 ], [ %sp.3, %if.then560 ], !dbg !1986
  call void @llvm.dbg.value(metadata ptr %sp.5, metadata !1793, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i64 %nitem.2, metadata !1824, metadata !DIExpression()), !dbg !1924
  %sub573 = add nsw i64 %i.0793, -3, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %sub573, metadata !1821, metadata !DIExpression()), !dbg !1924
  %cmp452 = icmp sgt i64 %i.0793, 2, !dbg !1933
  br i1 %cmp452, label %for.body454, label %for.end574, !dbg !1934, !llvm.loop !1988

for.end574:                                       ; preds = %if.end571
  call void @llvm.dbg.value(metadata ptr %call449, metadata !1990, metadata !DIExpression()) #8, !dbg !1998
  %cmp.not.i = icmp eq ptr %call449, null, !dbg !2000
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i, !dbg !2001

if.then.i:                                        ; preds = %S_av_top_index.exit, %for.end574
  %nitem.0.lcssa807 = phi i64 [ %nitem.2, %for.end574 ], [ 0, %S_av_top_index.exit ]
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call449, i64 0, i32 1, !dbg !2002
  %95 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %95, metadata !1995, metadata !DIExpression()) #8, !dbg !2003
  %cmp1.i = icmp ugt i32 %95, 1, !dbg !2004
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !2006

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %95, -1, !dbg !2007
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !2008
  br label %S_SvREFCNT_dec.exit, !dbg !2009

if.else.i:                                        ; preds = %if.then.i
  call void @Perl_sv_free2(ptr noundef nonnull %call449, i32 noundef %95) #8, !dbg !2010
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %for.end574, %if.then4.i, %if.else.i
  %nitem.0.lcssa808 = phi i64 [ %nitem.2, %for.end574 ], [ %nitem.0.lcssa807, %if.then4.i ], [ %nitem.0.lcssa807, %if.else.i ]
  call void @llvm.dbg.value(metadata i64 %nitem.2, metadata !1839, metadata !DIExpression()), !dbg !2011
  %96 = load ptr, ptr @PL_stack_base, align 8, !dbg !2012
  %idx.ext576 = sext i32 %inc to i64, !dbg !2012
  %add.ptr577 = getelementptr inbounds ptr, ptr %96, i64 %idx.ext576, !dbg !2012
  %sub578 = add nsw i64 %nitem.0.lcssa808, -1, !dbg !2012
  %add.ptr579 = getelementptr inbounds ptr, ptr %add.ptr577, i64 %sub578, !dbg !2012
  br label %cleanup601

do.body593:                                       ; preds = %land.lhs.true419, %land.lhs.true429, %land.lhs.true409, %cond.end437, %if.end415
  call void @llvm.dbg.value(metadata i64 0, metadata !1841, metadata !DIExpression()), !dbg !2013
  %97 = load ptr, ptr @PL_stack_base, align 8, !dbg !2014
  %idx.ext595 = sext i32 %inc to i64, !dbg !2014
  %add.ptr596 = getelementptr inbounds ptr, ptr %97, i64 %idx.ext595, !dbg !2014
  %add.ptr597 = getelementptr inbounds ptr, ptr %add.ptr596, i64 -1, !dbg !2014
  br label %cleanup601

cleanup601:                                       ; preds = %S_SvREFCNT_dec.exit, %do.body593
  %storemerge = phi ptr [ %add.ptr597, %do.body593 ], [ %add.ptr579, %S_SvREFCNT_dec.exit ], !dbg !1845
  store ptr %storemerge, ptr @PL_stack_sp, align 8, !dbg !1845
  ret void, !dbg !2015
}

declare !dbg !2016 ptr @PerlIO_get_layers(ptr noundef) local_unnamed_addr #3

declare !dbg !2019 ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2022 ptr @Perl_newSVpvf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_re_is_regexp(ptr noundef %cv) #0 !dbg !2025 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2027, metadata !DIExpression()), !dbg !2041
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2042
  call void @llvm.dbg.value(metadata ptr %0, metadata !2028, metadata !DIExpression()), !dbg !2041
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2042
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2042
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2042
  %2 = load i32, ptr %1, align 4, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %2, metadata !2029, metadata !DIExpression()), !dbg !2041
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %2, metadata !2029, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2041
  %idx.ext = sext i32 %2 to i64, !dbg !2042
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2042
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2030, metadata !DIExpression()), !dbg !2041
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2042
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2042
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2042
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2042
  %conv = trunc i64 %4 to i32, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2031, metadata !DIExpression()), !dbg !2041
  %cmp.not = icmp eq i32 %conv, 1, !dbg !2043
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2045

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.8), !dbg !2046
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !2047
  br label %if.end, !dbg !2046

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !2047
  %inc = add nsw i32 %2, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2029, metadata !DIExpression()), !dbg !2041
  %idxprom = sext i32 %inc to i64, !dbg !2047
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2047
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2047
  %call = tail call ptr @Perl_get_re_arg(ptr noundef %6) #8, !dbg !2047
  %tobool.not = icmp eq ptr %call, null, !dbg !2047
  %7 = load ptr, ptr @PL_stack_base, align 8, !dbg !2048
  %arrayidx15 = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !2048
  %PL_sv_no.PL_sv_yes = select i1 %tobool.not, ptr @PL_sv_no, ptr @PL_sv_yes
  store ptr %PL_sv_no.PL_sv_yes, ptr %arrayidx15, align 8, !dbg !2048
  %.pn = load ptr, ptr @PL_stack_base, align 8, !dbg !2048
  %storemerge = getelementptr inbounds ptr, ptr %.pn, i64 %idxprom, !dbg !2048
  store ptr %storemerge, ptr @PL_stack_sp, align 8, !dbg !2048
  ret void, !dbg !2049
}

declare !dbg !2050 ptr @Perl_get_re_arg(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_re_regnames_count(ptr noundef %cv) #0 !dbg !2053 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2055, metadata !DIExpression()), !dbg !2068
  %0 = load ptr, ptr @PL_curpm, align 8, !dbg !2069
  %tobool.not = icmp eq ptr %0, null, !dbg !2069
  br i1 %tobool.not, label %cond.end, label %cond.true, !dbg !2069

cond.true:                                        ; preds = %entry
  %op_pmregexp = getelementptr inbounds %struct.pmop, ptr %0, i64 0, i32 9, !dbg !2070
  %1 = load ptr, ptr %op_pmregexp, align 8, !dbg !2070
  br label %cond.end, !dbg !2069

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi ptr [ %1, %cond.true ], [ null, %entry ], !dbg !2069
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2056, metadata !DIExpression()), !dbg !2068
  %2 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2071
  call void @llvm.dbg.value(metadata ptr %2, metadata !2058, metadata !DIExpression()), !dbg !2068
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2071
  %incdec.ptr = getelementptr inbounds i32, ptr %3, i64 -1, !dbg !2071
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2071
  %4 = load i32, ptr %3, align 4, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %4, metadata !2059, metadata !DIExpression()), !dbg !2068
  %5 = load ptr, ptr @PL_stack_base, align 8, !dbg !2071
  %inc = add nsw i32 %4, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2059, metadata !DIExpression()), !dbg !2068
  %idx.ext = sext i32 %4 to i64, !dbg !2071
  %add.ptr = getelementptr inbounds ptr, ptr %5, i64 %idx.ext, !dbg !2071
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2060, metadata !DIExpression()), !dbg !2068
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64, !dbg !2071
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2071
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !2061, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2068
  %6 = and i64 %sub.ptr.sub, 34359738360, !dbg !2072
  %cmp.not = icmp eq i64 %6, 0, !dbg !2072
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2074

if.then:                                          ; preds = %cond.end
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.21), !dbg !2075
  br label %if.end, !dbg !2075

if.end:                                           ; preds = %if.then, %cond.end
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2076
  %idx.ext2 = ashr i64 %sext, 32, !dbg !2076
  %idx.neg = sub nsw i64 0, %idx.ext2, !dbg !2076
  %add.ptr3 = getelementptr inbounds ptr, ptr %2, i64 %idx.neg, !dbg !2076
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !2058, metadata !DIExpression()), !dbg !2068
  store ptr %add.ptr3, ptr @PL_stack_sp, align 8, !dbg !2077
  %tobool4.not = icmp eq ptr %cond, null, !dbg !2078
  br i1 %tobool4.not, label %do.body, label %if.end12, !dbg !2079

do.body:                                          ; preds = %if.end
  %7 = load ptr, ptr @PL_stack_base, align 8, !dbg !2080
  %idxprom = sext i32 %inc to i64, !dbg !2080
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !2080
  store ptr @PL_sv_undef, ptr %arrayidx, align 8, !dbg !2080
  call void @llvm.dbg.value(metadata i64 1, metadata !2062, metadata !DIExpression()), !dbg !2081
  %8 = load ptr, ptr @PL_stack_base, align 8, !dbg !2082
  %add.ptr8 = getelementptr inbounds ptr, ptr %8, i64 %idxprom, !dbg !2082
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %9 = getelementptr i8, ptr %cond, i64 16, !dbg !2083
  %cond.val = load ptr, ptr %9, align 8, !dbg !2083
  %engine = getelementptr inbounds %struct.regexp, ptr %cond.val, i64 0, i32 4, !dbg !2083
  %10 = load ptr, ptr %engine, align 8, !dbg !2083
  %named_buff = getelementptr inbounds %struct.regexp_engine, ptr %10, i64 0, i32 8, !dbg !2083
  %11 = load ptr, ptr %named_buff, align 8, !dbg !2083
  %call13 = tail call ptr %11(ptr noundef nonnull %cond, ptr noundef null, ptr noundef null, i32 noundef 4096) #8, !dbg !2083
  call void @llvm.dbg.value(metadata ptr %call13, metadata !2057, metadata !DIExpression()), !dbg !2068
  %12 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2084
  call void @llvm.dbg.value(metadata ptr %12, metadata !2058, metadata !DIExpression()), !dbg !2068
  %tobool14.not = icmp eq ptr %call13, null, !dbg !2085
  br i1 %tobool14.not, label %cond.end18, label %cond.true15, !dbg !2085

cond.true15:                                      ; preds = %if.end12
  %call16 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %call13) #8, !dbg !2085
  br label %cond.end18, !dbg !2085

cond.end18:                                       ; preds = %if.end12, %cond.true15
  %cond19 = phi ptr [ %call16, %cond.true15 ], [ @PL_sv_undef, %if.end12 ], !dbg !2085
  %incdec.ptr20 = getelementptr inbounds ptr, ptr %12, i64 1, !dbg !2085
  call void @llvm.dbg.value(metadata ptr %incdec.ptr20, metadata !2058, metadata !DIExpression()), !dbg !2068
  store ptr %cond19, ptr %incdec.ptr20, align 8, !dbg !2085
  call void @llvm.dbg.value(metadata i64 1, metadata !2066, metadata !DIExpression()), !dbg !2086
  %13 = load ptr, ptr @PL_stack_base, align 8, !dbg !2087
  %idx.ext23 = sext i32 %inc to i64, !dbg !2087
  %add.ptr24 = getelementptr inbounds ptr, ptr %13, i64 %idx.ext23, !dbg !2087
  br label %cleanup

cleanup:                                          ; preds = %cond.end18, %do.body
  %storemerge = phi ptr [ %add.ptr8, %do.body ], [ %add.ptr24, %cond.end18 ], !dbg !2068
  store ptr %storemerge, ptr @PL_stack_sp, align 8, !dbg !2068
  ret void, !dbg !2088
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_re_regname(ptr noundef %cv) #0 !dbg !2089 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2091, metadata !DIExpression()), !dbg !2105
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %0, metadata !2092, metadata !DIExpression()), !dbg !2105
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2106
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2106
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2106
  %2 = load i32, ptr %1, align 4, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %2, metadata !2093, metadata !DIExpression()), !dbg !2105
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2106
  %inc = add nsw i32 %2, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2093, metadata !DIExpression()), !dbg !2105
  %idx.ext = sext i32 %2 to i64, !dbg !2106
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2106
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2094, metadata !DIExpression()), !dbg !2105
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2106
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2106
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2106
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2106
  %conv = trunc i64 %4 to i32, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2095, metadata !DIExpression()), !dbg !2105
  %5 = add i32 %conv, -3, !dbg !2107
  %6 = icmp ult i32 %5, -2, !dbg !2107
  br i1 %6, label %if.then, label %if.end, !dbg !2107

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.22), !dbg !2109
  br label %if.end, !dbg !2109

if.end:                                           ; preds = %entry, %if.then
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2110
  %idx.ext4 = ashr i64 %sext, 32, !dbg !2110
  %idx.neg = sub nsw i64 0, %idx.ext4, !dbg !2110
  %add.ptr5 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !2110
  call void @llvm.dbg.value(metadata ptr %add.ptr5, metadata !2092, metadata !DIExpression()), !dbg !2105
  store ptr %add.ptr5, ptr @PL_stack_sp, align 8, !dbg !2111
  %7 = load ptr, ptr @PL_curpm, align 8, !dbg !2112
  %tobool.not = icmp eq ptr %7, null, !dbg !2112
  br i1 %tobool.not, label %do.body, label %cond.end, !dbg !2112

cond.end:                                         ; preds = %if.end
  %op_pmregexp = getelementptr inbounds %struct.pmop, ptr %7, i64 0, i32 9, !dbg !2113
  %8 = load ptr, ptr %op_pmregexp, align 8, !dbg !2113
  call void @llvm.dbg.value(metadata ptr %8, metadata !2096, metadata !DIExpression()), !dbg !2105
  %tobool6.not = icmp eq ptr %8, null, !dbg !2114
  br i1 %tobool6.not, label %do.body, label %if.end14, !dbg !2115

do.body:                                          ; preds = %if.end, %cond.end
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !2116
  %idxprom = sext i32 %inc to i64, !dbg !2116
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !2116
  store ptr @PL_sv_undef, ptr %arrayidx, align 8, !dbg !2116
  call void @llvm.dbg.value(metadata i64 1, metadata !2099, metadata !DIExpression()), !dbg !2117
  br label %cleanup

if.end14:                                         ; preds = %cond.end
  %cmp15 = icmp eq i32 %conv, 2, !dbg !2118
  br i1 %cmp15, label %land.lhs.true, label %if.else, !dbg !2120

land.lhs.true:                                    ; preds = %if.end14
  %10 = load ptr, ptr @PL_stack_base, align 8, !dbg !2121
  %add17 = add nsw i32 %2, 2, !dbg !2121
  %idxprom18 = sext i32 %add17 to i64, !dbg !2121
  %arrayidx19 = getelementptr inbounds ptr, ptr %10, i64 %idxprom18, !dbg !2121
  %11 = load ptr, ptr %arrayidx19, align 8, !dbg !2121
  %tobool20.not = icmp eq ptr %11, null, !dbg !2121
  br i1 %tobool20.not, label %if.else, label %land.lhs.true23, !dbg !2121

land.lhs.true23:                                  ; preds = %land.lhs.true
  %sv_flags = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2, !dbg !2121
  %12 = load i32, ptr %sv_flags, align 4, !dbg !2121
  %and = and i32 %12, 2097152, !dbg !2121
  %tobool27.not = icmp eq i32 %and, 0, !dbg !2121
  br i1 %tobool27.not, label %cond.false35, label %cond.true30, !dbg !2122

cond.true30:                                      ; preds = %land.lhs.true23
  %call = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %11, i32 noundef 2) #8, !dbg !2121
  br i1 %call, label %if.end141, label %if.else, !dbg !2121

cond.false35:                                     ; preds = %land.lhs.true23
  %and40 = and i32 %12, 65280, !dbg !2121
  %tobool41.not = icmp ne i32 %and40, 0, !dbg !2121
  %and47 = and i32 %12, 255, !dbg !2121
  %cmp48 = icmp eq i32 %and47, 8, !dbg !2121
  %or.cond = or i1 %tobool41.not, %cmp48, !dbg !2121
  %and55 = and i32 %12, 16826623, !dbg !2121
  %cmp56 = icmp eq i32 %and55, 16777226, !dbg !2121
  %or.cond202 = select i1 %or.cond, i1 true, i1 %cmp56, !dbg !2121
  br i1 %or.cond202, label %cond.false59, label %if.else, !dbg !2121

cond.false59:                                     ; preds = %cond.false35
  %and64 = and i32 %12, 1024, !dbg !2121
  %tobool65.not = icmp eq i32 %and64, 0, !dbg !2121
  br i1 %tobool65.not, label %cond.false92, label %cond.true66, !dbg !2122

cond.true66:                                      ; preds = %cond.false59
  %13 = load ptr, ptr %11, align 8, !dbg !2121
  %tobool70.not = icmp eq ptr %13, null, !dbg !2121
  br i1 %tobool70.not, label %if.else, label %land.lhs.true71, !dbg !2121

land.lhs.true71:                                  ; preds = %cond.true66
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2, !dbg !2121
  %14 = load i64, ptr %xpv_cur, align 8, !dbg !2121
  %cmp76 = icmp ugt i64 %14, 1, !dbg !2121
  br i1 %cmp76, label %if.end141, label %lor.lhs.false78, !dbg !2121

lor.lhs.false78:                                  ; preds = %land.lhs.true71
  %tobool84.not = icmp eq i64 %14, 0, !dbg !2121
  br i1 %tobool84.not, label %if.else, label %land.lhs.true85, !dbg !2121

land.lhs.true85:                                  ; preds = %lor.lhs.false78
  %sv_u = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 3, !dbg !2121
  %15 = load ptr, ptr %sv_u, align 8, !dbg !2121
  %16 = load i8, ptr %15, align 1, !dbg !2121
  %cmp90.not = icmp eq i8 %16, 48, !dbg !2121
  br i1 %cmp90.not, label %if.else, label %if.end141, !dbg !2121

cond.false92:                                     ; preds = %cond.false59
  %and97 = and i32 %12, 768, !dbg !2121
  %tobool98.not = icmp eq i32 %and97, 0, !dbg !2121
  br i1 %tobool98.not, label %cond.false134, label %cond.true99, !dbg !2122

cond.true99:                                      ; preds = %cond.false92
  %and104 = and i32 %12, 256, !dbg !2121
  %tobool105.not = icmp eq i32 %and104, 0, !dbg !2121
  br i1 %tobool105.not, label %lor.lhs.false113, label %land.lhs.true106, !dbg !2121

land.lhs.true106:                                 ; preds = %cond.true99
  %17 = load ptr, ptr %11, align 8, !dbg !2121
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %17, i64 0, i32 4, !dbg !2121
  %18 = load i64, ptr %xiv_u, align 8, !dbg !2121
  %cmp111.not = icmp eq i64 %18, 0, !dbg !2121
  br i1 %cmp111.not, label %lor.lhs.false113, label %if.end141, !dbg !2121

lor.lhs.false113:                                 ; preds = %land.lhs.true106, %cond.true99
  %and118 = and i32 %12, 512, !dbg !2121
  %tobool119.not = icmp eq i32 %and118, 0, !dbg !2121
  br i1 %tobool119.not, label %if.else, label %land.lhs.true120, !dbg !2121

land.lhs.true120:                                 ; preds = %lor.lhs.false113
  %19 = load ptr, ptr %11, align 8, !dbg !2121
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %19, i64 0, i32 5, !dbg !2121
  %20 = load double, ptr %xnv_u, align 8, !dbg !2121
  %21 = fcmp une double %20, 0.000000e+00, !dbg !2121
  br i1 %21, label %if.end141, label %if.else, !dbg !2121

cond.false134:                                    ; preds = %cond.false92
  %call138 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %11, i32 noundef 0) #8, !dbg !2121
  br i1 %call138, label %if.end141, label %if.else, !dbg !2122

if.else:                                          ; preds = %land.lhs.true120, %cond.false35, %land.lhs.true, %cond.false134, %lor.lhs.false113, %land.lhs.true85, %lor.lhs.false78, %cond.true66, %cond.true30, %if.end14
  call void @llvm.dbg.value(metadata i32 256, metadata !2097, metadata !DIExpression()), !dbg !2105
  br label %if.end141

if.end141:                                        ; preds = %cond.true30, %land.lhs.true71, %land.lhs.true85, %land.lhs.true106, %land.lhs.true120, %cond.false134, %if.else
  %flags.0 = phi i32 [ 1281, %if.else ], [ 1537, %cond.false134 ], [ 1537, %land.lhs.true120 ], [ 1537, %land.lhs.true106 ], [ 1537, %land.lhs.true85 ], [ 1537, %land.lhs.true71 ], [ 1537, %cond.true30 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2097, metadata !DIExpression()), !dbg !2105
  %22 = getelementptr i8, ptr %8, i64 16, !dbg !2123
  %cond.val = load ptr, ptr %22, align 8, !dbg !2123
  %engine = getelementptr inbounds %struct.regexp, ptr %cond.val, i64 0, i32 4, !dbg !2123
  %23 = load ptr, ptr %engine, align 8, !dbg !2123
  %named_buff = getelementptr inbounds %struct.regexp_engine, ptr %23, i64 0, i32 8, !dbg !2123
  %24 = load ptr, ptr %named_buff, align 8, !dbg !2123
  %25 = load ptr, ptr @PL_stack_base, align 8, !dbg !2123
  %idxprom144 = sext i32 %inc to i64, !dbg !2123
  %arrayidx145 = getelementptr inbounds ptr, ptr %25, i64 %idxprom144, !dbg !2123
  %26 = load ptr, ptr %arrayidx145, align 8, !dbg !2123
  %call147 = tail call ptr %24(ptr noundef nonnull %8, ptr noundef %26, ptr noundef null, i32 noundef %flags.0) #8, !dbg !2123
  call void @llvm.dbg.value(metadata ptr %call147, metadata !2098, metadata !DIExpression()), !dbg !2105
  %27 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2124
  call void @llvm.dbg.value(metadata ptr %27, metadata !2092, metadata !DIExpression()), !dbg !2105
  %tobool148.not = icmp eq ptr %call147, null, !dbg !2125
  br i1 %tobool148.not, label %cond.end152, label %cond.true149, !dbg !2125

cond.true149:                                     ; preds = %if.end141
  %call150 = tail call ptr @Perl_sv_2mortal(ptr noundef nonnull %call147) #8, !dbg !2125
  br label %cond.end152, !dbg !2125

cond.end152:                                      ; preds = %if.end141, %cond.true149
  %cond153 = phi ptr [ %call150, %cond.true149 ], [ @PL_sv_undef, %if.end141 ], !dbg !2125
  %incdec.ptr154 = getelementptr inbounds ptr, ptr %27, i64 1, !dbg !2125
  call void @llvm.dbg.value(metadata ptr %incdec.ptr154, metadata !2092, metadata !DIExpression()), !dbg !2105
  store ptr %cond153, ptr %incdec.ptr154, align 8, !dbg !2125
  call void @llvm.dbg.value(metadata i64 1, metadata !2103, metadata !DIExpression()), !dbg !2126
  br label %cleanup

cleanup:                                          ; preds = %cond.end152, %do.body
  %idxprom144.sink = phi i64 [ %idxprom144, %cond.end152 ], [ %idxprom, %do.body ]
  %28 = load ptr, ptr @PL_stack_base, align 8, !dbg !2105
  %add.ptr158 = getelementptr inbounds ptr, ptr %28, i64 %idxprom144.sink, !dbg !2105
  store ptr %add.ptr158, ptr @PL_stack_sp, align 8, !dbg !2105
  ret void, !dbg !2127
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_re_regnames(ptr noundef %cv) #0 !dbg !2128 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2130, metadata !DIExpression()), !dbg !2150
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %0, metadata !2131, metadata !DIExpression()), !dbg !2150
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2151
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2151
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2151
  %2 = load i32, ptr %1, align 4, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %2, metadata !2132, metadata !DIExpression()), !dbg !2150
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2151
  %inc = add nsw i32 %2, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2132, metadata !DIExpression()), !dbg !2150
  %idx.ext = sext i32 %2 to i64, !dbg !2151
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2151
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2133, metadata !DIExpression()), !dbg !2150
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2151
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2151
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2151
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2151
  %conv = trunc i64 %4 to i32, !dbg !2151
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2134, metadata !DIExpression()), !dbg !2150
  %cmp = icmp sgt i32 %conv, 1, !dbg !2152
  br i1 %cmp, label %if.then, label %if.end, !dbg !2154

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.23), !dbg !2155
  br label %if.end, !dbg !2155

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr @PL_curpm, align 8, !dbg !2156
  %tobool.not = icmp eq ptr %5, null, !dbg !2156
  br i1 %tobool.not, label %do.body, label %cond.end, !dbg !2156

cond.end:                                         ; preds = %if.end
  %op_pmregexp = getelementptr inbounds %struct.pmop, ptr %5, i64 0, i32 9, !dbg !2157
  %6 = load ptr, ptr %op_pmregexp, align 8, !dbg !2157
  call void @llvm.dbg.value(metadata ptr %6, metadata !2135, metadata !DIExpression()), !dbg !2150
  %tobool3.not = icmp eq ptr %6, null, !dbg !2158
  br i1 %tobool3.not, label %do.body, label %if.end11, !dbg !2159

do.body:                                          ; preds = %if.end, %cond.end
  %7 = load ptr, ptr @PL_stack_base, align 8, !dbg !2160
  %idxprom = sext i32 %inc to i64, !dbg !2160
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !2160
  store ptr @PL_sv_undef, ptr %arrayidx, align 8, !dbg !2160
  call void @llvm.dbg.value(metadata i64 1, metadata !2142, metadata !DIExpression()), !dbg !2161
  %8 = load ptr, ptr @PL_stack_base, align 8, !dbg !2162
  %add.ptr7 = getelementptr inbounds ptr, ptr %8, i64 %idxprom, !dbg !2162
  br label %cleanup

if.end11:                                         ; preds = %cond.end
  %cmp12 = icmp eq i32 %conv, 1, !dbg !2163
  br i1 %cmp12, label %land.lhs.true, label %if.else, !dbg !2165

land.lhs.true:                                    ; preds = %if.end11
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !2166
  %idxprom15 = sext i32 %inc to i64, !dbg !2166
  %arrayidx16 = getelementptr inbounds ptr, ptr %9, i64 %idxprom15, !dbg !2166
  %10 = load ptr, ptr %arrayidx16, align 8, !dbg !2166
  %tobool17.not = icmp eq ptr %10, null, !dbg !2166
  br i1 %tobool17.not, label %if.else, label %land.lhs.true20, !dbg !2166

land.lhs.true20:                                  ; preds = %land.lhs.true
  %sv_flags = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2, !dbg !2166
  %11 = load i32, ptr %sv_flags, align 4, !dbg !2166
  %and = and i32 %11, 2097152, !dbg !2166
  %tobool24.not = icmp eq i32 %and, 0, !dbg !2166
  br i1 %tobool24.not, label %cond.false32, label %cond.true27, !dbg !2167

cond.true27:                                      ; preds = %land.lhs.true20
  %call = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %10, i32 noundef 2) #8, !dbg !2166
  br i1 %call, label %if.end137, label %if.else, !dbg !2166

cond.false32:                                     ; preds = %land.lhs.true20
  %and37 = and i32 %11, 65280, !dbg !2166
  %tobool38.not = icmp ne i32 %and37, 0, !dbg !2166
  %and43 = and i32 %11, 255, !dbg !2166
  %cmp44 = icmp eq i32 %and43, 8, !dbg !2166
  %or.cond = or i1 %tobool38.not, %cmp44, !dbg !2166
  %and51 = and i32 %11, 16826623, !dbg !2166
  %cmp52 = icmp eq i32 %and51, 16777226, !dbg !2166
  %or.cond242 = select i1 %or.cond, i1 true, i1 %cmp52, !dbg !2166
  br i1 %or.cond242, label %cond.false55, label %if.else, !dbg !2166

cond.false55:                                     ; preds = %cond.false32
  %and60 = and i32 %11, 1024, !dbg !2166
  %tobool61.not = icmp eq i32 %and60, 0, !dbg !2166
  br i1 %tobool61.not, label %cond.false88, label %cond.true62, !dbg !2167

cond.true62:                                      ; preds = %cond.false55
  %12 = load ptr, ptr %10, align 8, !dbg !2166
  %tobool66.not = icmp eq ptr %12, null, !dbg !2166
  br i1 %tobool66.not, label %if.else, label %land.lhs.true67, !dbg !2166

land.lhs.true67:                                  ; preds = %cond.true62
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %12, i64 0, i32 2, !dbg !2166
  %13 = load i64, ptr %xpv_cur, align 8, !dbg !2166
  %cmp72 = icmp ugt i64 %13, 1, !dbg !2166
  br i1 %cmp72, label %if.end137, label %lor.lhs.false74, !dbg !2166

lor.lhs.false74:                                  ; preds = %land.lhs.true67
  %tobool80.not = icmp eq i64 %13, 0, !dbg !2166
  br i1 %tobool80.not, label %if.else, label %land.lhs.true81, !dbg !2166

land.lhs.true81:                                  ; preds = %lor.lhs.false74
  %sv_u = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3, !dbg !2166
  %14 = load ptr, ptr %sv_u, align 8, !dbg !2166
  %15 = load i8, ptr %14, align 1, !dbg !2166
  %cmp86.not = icmp eq i8 %15, 48, !dbg !2166
  br i1 %cmp86.not, label %if.else, label %if.end137, !dbg !2166

cond.false88:                                     ; preds = %cond.false55
  %and93 = and i32 %11, 768, !dbg !2166
  %tobool94.not = icmp eq i32 %and93, 0, !dbg !2166
  br i1 %tobool94.not, label %cond.false130, label %cond.true95, !dbg !2167

cond.true95:                                      ; preds = %cond.false88
  %and100 = and i32 %11, 256, !dbg !2166
  %tobool101.not = icmp eq i32 %and100, 0, !dbg !2166
  br i1 %tobool101.not, label %lor.lhs.false109, label %land.lhs.true102, !dbg !2166

land.lhs.true102:                                 ; preds = %cond.true95
  %16 = load ptr, ptr %10, align 8, !dbg !2166
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %16, i64 0, i32 4, !dbg !2166
  %17 = load i64, ptr %xiv_u, align 8, !dbg !2166
  %cmp107.not = icmp eq i64 %17, 0, !dbg !2166
  br i1 %cmp107.not, label %lor.lhs.false109, label %if.end137, !dbg !2166

lor.lhs.false109:                                 ; preds = %land.lhs.true102, %cond.true95
  %and114 = and i32 %11, 512, !dbg !2166
  %tobool115.not = icmp eq i32 %and114, 0, !dbg !2166
  br i1 %tobool115.not, label %if.else, label %land.lhs.true116, !dbg !2166

land.lhs.true116:                                 ; preds = %lor.lhs.false109
  %18 = load ptr, ptr %10, align 8, !dbg !2166
  %xnv_u = getelementptr inbounds %struct.xpvnv, ptr %18, i64 0, i32 5, !dbg !2166
  %19 = load double, ptr %xnv_u, align 8, !dbg !2166
  %20 = fcmp une double %19, 0.000000e+00, !dbg !2166
  br i1 %20, label %if.end137, label %if.else, !dbg !2166

cond.false130:                                    ; preds = %cond.false88
  %call134 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %10, i32 noundef 0) #8, !dbg !2166
  br i1 %call134, label %if.end137, label %if.else, !dbg !2167

if.else:                                          ; preds = %land.lhs.true116, %cond.false32, %land.lhs.true, %cond.false130, %lor.lhs.false109, %land.lhs.true81, %lor.lhs.false74, %cond.true62, %cond.true27, %if.end11
  call void @llvm.dbg.value(metadata i32 256, metadata !2136, metadata !DIExpression()), !dbg !2150
  br label %if.end137

if.end137:                                        ; preds = %cond.true27, %land.lhs.true67, %land.lhs.true81, %land.lhs.true102, %land.lhs.true116, %cond.false130, %if.else
  %flags.0 = phi i32 [ 2304, %if.else ], [ 2560, %cond.false130 ], [ 2560, %land.lhs.true116 ], [ 2560, %land.lhs.true102 ], [ 2560, %land.lhs.true81 ], [ 2560, %land.lhs.true67 ], [ 2560, %cond.true27 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2136, metadata !DIExpression()), !dbg !2150
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2168
  %idx.ext138 = ashr i64 %sext, 32, !dbg !2168
  %idx.neg = sub nsw i64 0, %idx.ext138, !dbg !2168
  %add.ptr139 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !2168
  call void @llvm.dbg.value(metadata ptr %add.ptr139, metadata !2131, metadata !DIExpression()), !dbg !2150
  store ptr %add.ptr139, ptr @PL_stack_sp, align 8, !dbg !2169
  %21 = getelementptr i8, ptr %6, i64 16, !dbg !2170
  %cond.val = load ptr, ptr %21, align 8, !dbg !2170
  %engine = getelementptr inbounds %struct.regexp, ptr %cond.val, i64 0, i32 4, !dbg !2170
  %22 = load ptr, ptr %engine, align 8, !dbg !2170
  %named_buff = getelementptr inbounds %struct.regexp_engine, ptr %22, i64 0, i32 8, !dbg !2170
  %23 = load ptr, ptr %named_buff, align 8, !dbg !2170
  %call141 = tail call ptr %23(ptr noundef nonnull %6, ptr noundef null, ptr noundef null, i32 noundef %flags.0) #8, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %call141, metadata !2137, metadata !DIExpression()), !dbg !2150
  %24 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2171
  call void @llvm.dbg.value(metadata ptr %24, metadata !2131, metadata !DIExpression()), !dbg !2150
  %tobool142.not = icmp eq ptr %call141, null, !dbg !2172
  br i1 %tobool142.not, label %do.body144, label %if.end157, !dbg !2173

do.body144:                                       ; preds = %if.end137
  %25 = load ptr, ptr @PL_stack_base, align 8, !dbg !2174
  %idxprom146 = sext i32 %inc to i64, !dbg !2174
  %arrayidx147 = getelementptr inbounds ptr, ptr %25, i64 %idxprom146, !dbg !2174
  store ptr @PL_sv_undef, ptr %arrayidx147, align 8, !dbg !2174
  call void @llvm.dbg.value(metadata i64 1, metadata !2146, metadata !DIExpression()), !dbg !2175
  %26 = load ptr, ptr @PL_stack_base, align 8, !dbg !2176
  %add.ptr151 = getelementptr inbounds ptr, ptr %26, i64 %idxprom146, !dbg !2176
  br label %cleanup

if.end157:                                        ; preds = %if.end137
  %sv_u158 = getelementptr inbounds %struct.sv, ptr %call141, i64 0, i32 3, !dbg !2177
  %27 = load ptr, ptr %sv_u158, align 8, !dbg !2177
  call void @llvm.dbg.value(metadata ptr %27, metadata !2138, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata ptr %27, metadata !1925, metadata !DIExpression()) #8, !dbg !2178
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2, !dbg !2180
  %28 = load i32, ptr %sv_flags.i, align 4, !dbg !2180
  %and.i = and i32 %28, 8388608, !dbg !2180
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !2180
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i, !dbg !2180

cond.true.i:                                      ; preds = %if.end157
  %call.i = tail call i32 @Perl_mg_size(ptr noundef nonnull %27) #8, !dbg !2180
  %conv.i = sext i32 %call.i to i64, !dbg !2180
  br label %S_av_top_index.exit, !dbg !2180

cond.false.i:                                     ; preds = %if.end157
  %29 = load ptr, ptr %27, align 8, !dbg !2180
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %29, i64 0, i32 2, !dbg !2180
  %30 = load i64, ptr %xav_fill.i, align 8, !dbg !2180
  br label %S_av_top_index.exit, !dbg !2180

S_av_top_index.exit:                              ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i64 [ %conv.i, %cond.true.i ], [ %30, %cond.false.i ], !dbg !2180
  call void @llvm.dbg.value(metadata i64 %cond.i, metadata !2139, metadata !DIExpression()), !dbg !2150
  %31 = load ptr, ptr @PL_stack_max, align 8, !dbg !2181
  %sub.ptr.lhs.cast161 = ptrtoint ptr %31 to i64, !dbg !2181
  %sub.ptr.rhs.cast162 = ptrtoint ptr %24 to i64, !dbg !2181
  %sub.ptr.sub163 = sub i64 %sub.ptr.lhs.cast161, %sub.ptr.rhs.cast162, !dbg !2181
  %sub.ptr.div164 = ashr exact i64 %sub.ptr.sub163, 3, !dbg !2181
  %cmp166.not = icmp sgt i64 %sub.ptr.div164, %cond.i, !dbg !2181
  br i1 %cmp166.not, label %do.end175, label %if.then170, !dbg !2184

if.then170:                                       ; preds = %S_av_top_index.exit
  %add165 = add nsw i64 %cond.i, 1, !dbg !2181
  %call172 = tail call ptr @Perl_stack_grow(ptr noundef %24, ptr noundef %24, i64 noundef %add165) #8, !dbg !2185
  call void @llvm.dbg.value(metadata ptr %call172, metadata !2131, metadata !DIExpression()), !dbg !2150
  br label %do.end175, !dbg !2185

do.end175:                                        ; preds = %S_av_top_index.exit, %if.then170
  %sp.0 = phi ptr [ %call172, %if.then170 ], [ %24, %S_av_top_index.exit ], !dbg !2150
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !2131, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i64 0, metadata !2140, metadata !DIExpression()), !dbg !2150
  %cmp176.not246 = icmp slt i64 %cond.i, 0, !dbg !2187
  br i1 %cmp176.not246, label %if.then.i, label %for.body, !dbg !2190

for.body:                                         ; preds = %do.end175, %if.end181
  %sp.1248 = phi ptr [ %incdec.ptr184, %if.end181 ], [ %sp.0, %do.end175 ]
  %i.0247 = phi i64 [ %inc185, %if.end181 ], [ 0, %do.end175 ]
  call void @llvm.dbg.value(metadata ptr %sp.1248, metadata !2131, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i64 %i.0247, metadata !2140, metadata !DIExpression()), !dbg !2150
  %call178 = tail call ptr @Perl_av_fetch(ptr noundef %27, i64 noundef %i.0247, i32 noundef 0) #8, !dbg !2191
  call void @llvm.dbg.value(metadata ptr %call178, metadata !2141, metadata !DIExpression()), !dbg !2150
  %tobool179.not = icmp eq ptr %call178, null, !dbg !2193
  br i1 %tobool179.not, label %if.then180, label %if.end181, !dbg !2195

if.then180:                                       ; preds = %for.body
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24) #8, !dbg !2196
  br label %if.end181, !dbg !2196

if.end181:                                        ; preds = %if.then180, %for.body
  %32 = load ptr, ptr %call178, align 8, !dbg !2197
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 1, !dbg !2197
  %33 = load i32, ptr %sv_refcnt, align 8, !dbg !2197
  %inc182 = add i32 %33, 1, !dbg !2197
  store i32 %inc182, ptr %sv_refcnt, align 8, !dbg !2197
  %34 = load ptr, ptr %call178, align 8, !dbg !2197
  %call183 = tail call ptr @Perl_sv_2mortal(ptr noundef %34) #8, !dbg !2197
  %incdec.ptr184 = getelementptr inbounds ptr, ptr %sp.1248, i64 1, !dbg !2197
  call void @llvm.dbg.value(metadata ptr %incdec.ptr184, metadata !2131, metadata !DIExpression()), !dbg !2150
  store ptr %call183, ptr %incdec.ptr184, align 8, !dbg !2197
  %inc185 = add nuw i64 %i.0247, 1, !dbg !2198
  call void @llvm.dbg.value(metadata i64 %inc185, metadata !2140, metadata !DIExpression()), !dbg !2150
  %exitcond.not = icmp eq i64 %i.0247, %cond.i, !dbg !2187
  br i1 %exitcond.not, label %if.then.i, label %for.body, !dbg !2190, !llvm.loop !2199

if.then.i:                                        ; preds = %if.end181, %do.end175
  %sp.1.lcssa = phi ptr [ %sp.0, %do.end175 ], [ %incdec.ptr184, %if.end181 ], !dbg !2150
  call void @llvm.dbg.value(metadata ptr %call141, metadata !1990, metadata !DIExpression()) #8, !dbg !2201
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call141, i64 0, i32 1, !dbg !2203
  %35 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %35, metadata !1995, metadata !DIExpression()) #8, !dbg !2204
  %cmp1.i = icmp ugt i32 %35, 1, !dbg !2205
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !2206

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %35, -1, !dbg !2207
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !2208
  br label %cleanup, !dbg !2209

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %call141, i32 noundef %35) #8, !dbg !2210
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then4.i, %do.body144, %do.body
  %sp.1.lcssa.sink = phi ptr [ %add.ptr151, %do.body144 ], [ %add.ptr7, %do.body ], [ %sp.1.lcssa, %if.then4.i ], [ %sp.1.lcssa, %if.else.i ]
  store ptr %sp.1.lcssa.sink, ptr @PL_stack_sp, align 8, !dbg !2150
  ret void, !dbg !2211
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_re_regexp_pattern(ptr noundef %cv) #0 !dbg !2212 {
entry:
  %reflags = alloca [10 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2214, metadata !DIExpression()), !dbg !2253
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2254
  call void @llvm.dbg.value(metadata ptr %0, metadata !2215, metadata !DIExpression()), !dbg !2253
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2254
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2254
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2254
  %2 = load i32, ptr %1, align 4, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %2, metadata !2216, metadata !DIExpression()), !dbg !2253
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2254
  %inc = add nsw i32 %2, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2216, metadata !DIExpression()), !dbg !2253
  %idx.ext = sext i32 %2 to i64, !dbg !2254
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2254
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2217, metadata !DIExpression()), !dbg !2253
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2254
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2254
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !2218, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2253
  %4 = load ptr, ptr @PL_op, align 8, !dbg !2255
  %op_flags = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 5, !dbg !2255
  %5 = load i8, ptr %op_flags, align 2, !dbg !2255
  %6 = and i8 %5, 3, !dbg !2255
  %tobool.not = icmp eq i8 %6, 0, !dbg !2255
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !2255

cond.true:                                        ; preds = %entry
  %and = zext i8 %6 to i32, !dbg !2255
  br label %cond.end, !dbg !2255

cond.false:                                       ; preds = %entry
  %call = tail call i32 @Perl_block_gimme() #8, !dbg !2255
  br label %cond.end, !dbg !2255

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and, %cond.true ], [ %call, %cond.false ], !dbg !2255
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2220, metadata !DIExpression()), !dbg !2253
  %7 = load ptr, ptr @PL_stack_max, align 8, !dbg !2256
  %sub.ptr.lhs.cast5 = ptrtoint ptr %7 to i64, !dbg !2256
  %sub.ptr.sub7 = sub i64 %sub.ptr.lhs.cast5, %sub.ptr.lhs.cast, !dbg !2256
  %cmp = icmp slt i64 %sub.ptr.sub7, 16, !dbg !2256
  br i1 %cmp, label %if.then, label %do.end, !dbg !2259

if.then:                                          ; preds = %cond.end
  %call12 = tail call ptr @Perl_stack_grow(ptr noundef %0, ptr noundef %0, i64 noundef 2) #8, !dbg !2260
  call void @llvm.dbg.value(metadata ptr %call12, metadata !2215, metadata !DIExpression()), !dbg !2253
  br label %do.end, !dbg !2260

do.end:                                           ; preds = %cond.end, %if.then
  %sp.0 = phi ptr [ %call12, %if.then ], [ %0, %cond.end ], !dbg !2253
  call void @llvm.dbg.value(metadata ptr %sp.0, metadata !2215, metadata !DIExpression()), !dbg !2253
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2262
  %idx.ext13 = ashr i64 %sext, 32, !dbg !2262
  %idx.neg = sub nsw i64 0, %idx.ext13, !dbg !2262
  %add.ptr14 = getelementptr inbounds ptr, ptr %sp.0, i64 %idx.neg, !dbg !2262
  call void @llvm.dbg.value(metadata ptr %add.ptr14, metadata !2215, metadata !DIExpression()), !dbg !2253
  %8 = and i64 %sub.ptr.sub, 34359738360, !dbg !2263
  %cmp15.not = icmp eq i64 %8, 8, !dbg !2263
  br i1 %cmp15.not, label %if.end18, label %if.then17, !dbg !2265

if.then17:                                        ; preds = %do.end
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.8), !dbg !2266
  br label %if.end18, !dbg !2266

if.end18:                                         ; preds = %if.then17, %do.end
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !2267
  %idxprom = sext i32 %inc to i64, !dbg !2267
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !2267
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !2267
  %call19 = tail call ptr @Perl_get_re_arg(ptr noundef %10) #8, !dbg !2267
  call void @llvm.dbg.value(metadata ptr %call19, metadata !2219, metadata !DIExpression()), !dbg !2253
  %tobool20.not = icmp eq ptr %call19, null, !dbg !2268
  %cmp97 = icmp eq i32 %cond, 3, !dbg !2269
  br i1 %tobool20.not, label %if.else96, label %if.then21, !dbg !2270

if.then21:                                        ; preds = %if.end18
  br i1 %cmp97, label %if.then24, label %if.else, !dbg !2271

if.then24:                                        ; preds = %if.then21
  call void @llvm.dbg.value(metadata i64 0, metadata !2224, metadata !DIExpression()), !dbg !2272
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %reflags) #8, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %reflags, metadata !2227, metadata !DIExpression()), !dbg !2274
  %11 = getelementptr i8, ptr %call19, i64 16, !dbg !2275
  %call19.val173 = load ptr, ptr %11, align 8, !dbg !2275
  %extflags = getelementptr inbounds %struct.regexp, ptr %call19.val173, i64 0, i32 7, !dbg !2275
  %12 = load i32, ptr %extflags, align 8, !dbg !2275
  call void @llvm.dbg.value(metadata i32 %12, metadata !2276, metadata !DIExpression()), !dbg !2281
  %and.i = lshr i32 %12, 7, !dbg !2283
  %shr.i = and i32 %and.i, 7, !dbg !2283
  switch i32 %shr.i, label %sw.epilog.i [
    i32 0, label %if.end35
    i32 4, label %sw.bb4.i
    i32 1, label %get_regex_charset_name.exit
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ], !dbg !2284

sw.bb2.i:                                         ; preds = %if.then24
  br label %get_regex_charset_name.exit, !dbg !2285

sw.bb3.i:                                         ; preds = %if.then24
  br label %get_regex_charset_name.exit, !dbg !2294

sw.bb4.i:                                         ; preds = %if.then24
  br label %get_regex_charset_name.exit, !dbg !2295

sw.epilog.i:                                      ; preds = %if.then24
  br label %get_regex_charset_name.exit, !dbg !2296

get_regex_charset_name.exit:                      ; preds = %if.then24, %sw.bb2.i, %sw.bb3.i, %sw.bb4.i, %sw.epilog.i
  %len.0 = phi i64 [ 1, %sw.epilog.i ], [ 2, %sw.bb4.i ], [ 1, %sw.bb3.i ], [ 1, %sw.bb2.i ], [ 1, %if.then24 ], !dbg !2297
  %retval.0.i = phi ptr [ @.str.55, %sw.epilog.i ], [ @.str.54, %sw.bb4.i ], [ @.str.53, %sw.bb3.i ], [ @.str.52, %sw.bb2.i ], [ @.str.51, %if.then24 ], !dbg !2297
  call void @llvm.dbg.value(metadata ptr %retval.0.i, metadata !2237, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %reflags, ptr noundef nonnull align 1 %retval.0.i, i64 %len.0, i1 false), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !2234, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !2224, metadata !DIExpression()), !dbg !2272
  %call19.val171.pre = load ptr, ptr %11, align 8, !dbg !2300
  %extflags37.phi.trans.insert = getelementptr inbounds %struct.regexp, ptr %call19.val171.pre, i64 0, i32 7
  %.pre = load i32, ptr %extflags37.phi.trans.insert, align 8, !dbg !2300
  br label %if.end35, !dbg !2301

if.end35:                                         ; preds = %if.then24, %get_regex_charset_name.exit
  %13 = phi i32 [ %.pre, %get_regex_charset_name.exit ], [ %12, %if.then24 ], !dbg !2300
  %left.0 = phi i64 [ %len.0, %get_regex_charset_name.exit ], [ 0, %if.then24 ], !dbg !2272
  call void @llvm.dbg.value(metadata i64 %left.0, metadata !2224, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2231, metadata !DIExpression()), !dbg !2272
  %conv39 = and i32 %13, 2047, !dbg !2302
  call void @llvm.dbg.value(metadata i32 %13, metadata !2233, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_constu, 2047, DW_OP_and, DW_OP_stack_value)), !dbg !2272
  call void @llvm.dbg.value(metadata i64 %left.0, metadata !2224, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2231, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i16 undef, metadata !2233, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata ptr getelementptr inbounds ([8 x i8], ptr @.str.25, i64 0, i64 1), metadata !2231, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8 109, metadata !2232, metadata !DIExpression()), !dbg !2272
  br label %while.body, !dbg !2303

while.body:                                       ; preds = %if.end35, %if.end48
  %14 = phi i8 [ 109, %if.end35 ], [ %15, %if.end48 ]
  %incdec.ptr40176 = phi ptr [ getelementptr inbounds ([8 x i8], ptr @.str.25, i64 0, i64 1), %if.end35 ], [ %incdec.ptr40, %if.end48 ]
  %left.1175 = phi i64 [ %left.0, %if.end35 ], [ %left.2, %if.end48 ]
  %match_flags.0174 = phi i32 [ %conv39, %if.end35 ], [ %conv42, %if.end48 ]
  call void @llvm.dbg.value(metadata i64 %left.1175, metadata !2224, metadata !DIExpression()), !dbg !2272
  %and43 = and i32 %match_flags.0174, 1, !dbg !2304
  %tobool44.not = icmp eq i32 %and43, 0, !dbg !2304
  br i1 %tobool44.not, label %if.end48, label %if.then45, !dbg !2307

if.then45:                                        ; preds = %while.body
  %inc46 = add i64 %left.1175, 1, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %inc46, metadata !2224, metadata !DIExpression()), !dbg !2272
  %arrayidx47 = getelementptr inbounds [10 x i8], ptr %reflags, i64 0, i64 %left.1175, !dbg !2310
  store i8 %14, ptr %arrayidx47, align 1, !dbg !2311
  br label %if.end48, !dbg !2312

if.end48:                                         ; preds = %if.then45, %while.body
  %left.2 = phi i64 [ %inc46, %if.then45 ], [ %left.1175, %while.body ], !dbg !2272
  call void @llvm.dbg.value(metadata i64 %left.2, metadata !2224, metadata !DIExpression()), !dbg !2272
  %conv42 = lshr i32 %match_flags.0174, 1, !dbg !2313
  call void @llvm.dbg.value(metadata ptr %incdec.ptr40176, metadata !2231, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i16 undef, metadata !2233, metadata !DIExpression()), !dbg !2272
  %incdec.ptr40 = getelementptr inbounds i8, ptr %incdec.ptr40176, i64 1, !dbg !2314
  call void @llvm.dbg.value(metadata ptr %incdec.ptr40, metadata !2231, metadata !DIExpression()), !dbg !2272
  %15 = load i8, ptr %incdec.ptr40176, align 1, !dbg !2315
  call void @llvm.dbg.value(metadata i8 %15, metadata !2232, metadata !DIExpression()), !dbg !2272
  %exitcond = icmp eq ptr %incdec.ptr40176, getelementptr inbounds ([8 x i8], ptr @.str.25, i64 0, i64 7), !dbg !2303
  br i1 %exitcond, label %while.end, label %while.body, !dbg !2303, !llvm.loop !2316

while.end:                                        ; preds = %if.end48
  %call19.val170 = load ptr, ptr %11, align 8, !dbg !2318
  %xpv_len_u = getelementptr inbounds %struct.regexp, ptr %call19.val170, i64 0, i32 3, !dbg !2318
  %16 = load ptr, ptr %xpv_len_u, align 8, !dbg !2318
  %pre_prefix = getelementptr inbounds %struct.regexp, ptr %call19.val170, i64 0, i32 24, !dbg !2318
  %bf.load = load i16, ptr %pre_prefix, align 8, !dbg !2318
  %bf.clear = and i16 %bf.load, 15, !dbg !2318
  %17 = zext i16 %bf.clear to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %16, i64 %17, !dbg !2318
  %18 = load ptr, ptr %call19, align 8, !dbg !2318
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %18, i64 0, i32 2, !dbg !2318
  %19 = load i64, ptr %xpv_cur, align 8, !dbg !2318
  %20 = xor i64 %17, -1, !dbg !2318
  %sub62 = add i64 %19, %20, !dbg !2318
  %sv_flags = getelementptr inbounds %struct.p5rx, ptr %call19, i64 0, i32 2, !dbg !2318
  %21 = load i32, ptr %sv_flags, align 4, !dbg !2318
  %and63 = and i32 %21, 536870912, !dbg !2318
  %or = or i32 %and63, 524288, !dbg !2318
  %call66 = tail call ptr @Perl_newSVpvn_flags(ptr noundef %add.ptr55, i64 noundef %sub62, i32 noundef %or) #8, !dbg !2318
  call void @llvm.dbg.value(metadata ptr %call66, metadata !2221, metadata !DIExpression()), !dbg !2319
  %incdec.ptr67 = getelementptr inbounds ptr, ptr %add.ptr14, i64 1, !dbg !2320
  call void @llvm.dbg.value(metadata ptr %incdec.ptr67, metadata !2215, metadata !DIExpression()), !dbg !2253
  store ptr %call66, ptr %incdec.ptr67, align 8, !dbg !2320
  %call69 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %reflags, i64 noundef %left.2, i32 noundef 524288) #8, !dbg !2321
  %incdec.ptr70 = getelementptr inbounds ptr, ptr %incdec.ptr67, i64 1, !dbg !2321
  call void @llvm.dbg.value(metadata ptr %incdec.ptr70, metadata !2215, metadata !DIExpression()), !dbg !2253
  store ptr %call69, ptr %incdec.ptr70, align 8, !dbg !2321
  call void @llvm.dbg.value(metadata i64 2, metadata !2238, metadata !DIExpression()), !dbg !2322
  %22 = load ptr, ptr @PL_stack_base, align 8, !dbg !2323
  %add.ptr73 = getelementptr inbounds ptr, ptr %22, i64 %idxprom, !dbg !2323
  %add.ptr74 = getelementptr inbounds ptr, ptr %add.ptr73, i64 1, !dbg !2323
  store ptr %add.ptr74, ptr @PL_stack_sp, align 8, !dbg !2323
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %reflags) #8, !dbg !2324
  br label %cleanup128

if.else:                                          ; preds = %if.then21
  %call81 = tail call ptr @Perl_newSVsv(ptr noundef nonnull %call19) #8, !dbg !2325
  %call82 = tail call ptr @Perl_sv_2mortal(ptr noundef %call81) #8, !dbg !2325
  call void @llvm.dbg.value(metadata ptr %call82, metadata !2221, metadata !DIExpression()), !dbg !2319
  %incdec.ptr83 = getelementptr inbounds ptr, ptr %add.ptr14, i64 1, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %incdec.ptr83, metadata !2215, metadata !DIExpression()), !dbg !2253
  store ptr %call82, ptr %incdec.ptr83, align 8, !dbg !2326
  call void @llvm.dbg.value(metadata i64 1, metadata !2240, metadata !DIExpression()), !dbg !2327
  %23 = load ptr, ptr @PL_stack_base, align 8, !dbg !2328
  %add.ptr87 = getelementptr inbounds ptr, ptr %23, i64 %idxprom, !dbg !2328
  store ptr %add.ptr87, ptr @PL_stack_sp, align 8, !dbg !2328
  br label %cleanup128

if.else96:                                        ; preds = %if.end18
  %24 = load ptr, ptr @PL_stack_base, align 8, !dbg !2329
  %add.ptr104 = getelementptr inbounds ptr, ptr %24, i64 %idxprom, !dbg !2329
  br i1 %cmp97, label %do.body101, label %do.body112, !dbg !2330

do.body101:                                       ; preds = %if.else96
  call void @llvm.dbg.value(metadata i64 0, metadata !2243, metadata !DIExpression()), !dbg !2331
  %add.ptr105 = getelementptr inbounds ptr, ptr %add.ptr104, i64 -1, !dbg !2332
  store ptr %add.ptr105, ptr @PL_stack_sp, align 8, !dbg !2332
  br label %cleanup128

do.body112:                                       ; preds = %if.else96
  store ptr @PL_sv_no, ptr %add.ptr104, align 8, !dbg !2333
  call void @llvm.dbg.value(metadata i64 1, metadata !2249, metadata !DIExpression()), !dbg !2334
  %25 = load ptr, ptr @PL_stack_base, align 8, !dbg !2335
  %add.ptr119 = getelementptr inbounds ptr, ptr %25, i64 %idxprom, !dbg !2335
  store ptr %add.ptr119, ptr @PL_stack_sp, align 8, !dbg !2335
  br label %cleanup128

cleanup128:                                       ; preds = %if.else, %while.end, %do.body112, %do.body101
  ret void, !dbg !2336
}

declare !dbg !2337 i32 @Perl_block_gimme() local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare !dbg !2340 ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_universal_version(ptr nocapture readnone %cv) #0 !dbg !2341 {
entry:
  call void @llvm.dbg.value(metadata ptr undef, metadata !2344, metadata !DIExpression()), !dbg !2368
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2369
  call void @llvm.dbg.value(metadata ptr %0, metadata !2345, metadata !DIExpression()), !dbg !2368
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2369
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2369
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2369
  %2 = load i32, ptr %1, align 4, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %2, metadata !2346, metadata !DIExpression()), !dbg !2368
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2369
  %inc = add nsw i32 %2, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2346, metadata !DIExpression()), !dbg !2368
  %idx.ext = sext i32 %2 to i64, !dbg !2369
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2369
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2347, metadata !DIExpression()), !dbg !2368
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2369
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2369
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2369
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2369
  %conv = trunc i64 %4 to i32, !dbg !2369
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2348, metadata !DIExpression()), !dbg !2368
  %cmp = icmp slt i32 %conv, 1, !dbg !2370
  br i1 %cmp, label %if.then, label %if.end, !dbg !2372

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.26) #8, !dbg !2373
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !2374
  br label %if.end, !dbg !2373

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !2374
  %idxprom = sext i32 %inc to i64, !dbg !2374
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2374
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2374
  call void @llvm.dbg.value(metadata ptr %6, metadata !2352, metadata !DIExpression()), !dbg !2368
  %sv_flags = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !2375
  %7 = load i32, ptr %sv_flags, align 4, !dbg !2375
  %and = and i32 %7, 2048, !dbg !2375
  %tobool.not = icmp eq i32 %and, 0, !dbg !2375
  br i1 %tobool.not, label %if.else, label %if.then2, !dbg !2377

if.then2:                                         ; preds = %if.end
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !2378
  %8 = load ptr, ptr %sv_u, align 8, !dbg !2378
  call void @llvm.dbg.value(metadata ptr %8, metadata !2352, metadata !DIExpression()), !dbg !2368
  %sv_flags3 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2, !dbg !2380
  %9 = load i32, ptr %sv_flags3, align 4, !dbg !2380
  %and4 = and i32 %9, 1048576, !dbg !2380
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !2380
  br i1 %tobool5.not, label %if.then6, label %if.end7, !dbg !2382

if.then6:                                         ; preds = %if.then2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27) #8, !dbg !2383
  br label %if.end7, !dbg !2383

if.end7:                                          ; preds = %if.then6, %if.then2
  %10 = load ptr, ptr %8, align 8, !dbg !2384
  %11 = load ptr, ptr %10, align 8, !dbg !2384
  call void @llvm.dbg.value(metadata ptr %11, metadata !2349, metadata !DIExpression()), !dbg !2368
  br label %if.end8, !dbg !2385

if.else:                                          ; preds = %if.end
  %call = tail call ptr @Perl_gv_stashsv(ptr noundef nonnull %6, i32 noundef 0) #8, !dbg !2386
  call void @llvm.dbg.value(metadata ptr %call, metadata !2349, metadata !DIExpression()), !dbg !2368
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end7
  %pkg.0 = phi ptr [ %11, %if.end7 ], [ %call, %if.else ], !dbg !2388
  call void @llvm.dbg.value(metadata ptr %pkg.0, metadata !2349, metadata !DIExpression()), !dbg !2368
  %tobool9.not = icmp eq ptr %pkg.0, null, !dbg !2389
  br i1 %tobool9.not, label %if.end44, label %cond.end, !dbg !2389

cond.end:                                         ; preds = %if.end8
  %call10 = tail call ptr @Perl_hv_common(ptr noundef nonnull %pkg.0, ptr noundef null, ptr noundef nonnull @.str.28, i64 noundef 7, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #8, !dbg !2390
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2350, metadata !DIExpression()), !dbg !2368
  %tobool11.not = icmp eq ptr %call10, null, !dbg !2391
  br i1 %tobool11.not, label %if.end44, label %land.lhs.true, !dbg !2393

land.lhs.true:                                    ; preds = %cond.end
  %12 = load ptr, ptr %call10, align 8, !dbg !2394
  call void @llvm.dbg.value(metadata ptr %12, metadata !2351, metadata !DIExpression()), !dbg !2368
  %sv_flags12 = getelementptr inbounds %struct.gv, ptr %12, i64 0, i32 2, !dbg !2394
  %13 = load i32, ptr %sv_flags12, align 4, !dbg !2394
  %and13 = and i32 %13, 255, !dbg !2394
  %cmp14 = icmp eq i32 %and13, 9, !dbg !2394
  br i1 %cmp14, label %land.lhs.true16, label %if.end44, !dbg !2395

land.lhs.true16:                                  ; preds = %land.lhs.true
  %sv_u17 = getelementptr inbounds %struct.gv, ptr %12, i64 0, i32 3, !dbg !2396
  %14 = load ptr, ptr %sv_u17, align 8, !dbg !2396
  %15 = load ptr, ptr %14, align 8, !dbg !2396
  call void @llvm.dbg.value(metadata ptr %15, metadata !2352, metadata !DIExpression()), !dbg !2368
  %tobool19.not = icmp eq ptr %15, null, !dbg !2397
  br i1 %tobool19.not, label %if.end44, label %land.lhs.true20, !dbg !2398

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %sv_flags21 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2, !dbg !2399
  %16 = load i32, ptr %sv_flags21, align 4, !dbg !2399
  %and22 = and i32 %16, 65280, !dbg !2399
  %tobool23.not = icmp ne i32 %and22, 0, !dbg !2399
  %and25 = and i32 %16, 255, !dbg !2399
  %cmp26 = icmp eq i32 %and25, 8, !dbg !2399
  %or.cond = or i1 %tobool23.not, %cmp26, !dbg !2399
  %and30 = and i32 %16, 16826623, !dbg !2399
  %cmp31 = icmp eq i32 %and30, 16777226, !dbg !2399
  %or.cond247 = select i1 %or.cond, i1 true, i1 %cmp31, !dbg !2399
  br i1 %or.cond247, label %if.then33, label %if.end44, !dbg !2399

if.then33:                                        ; preds = %land.lhs.true20
  %call34 = tail call ptr @Perl_sv_mortalcopy_flags(ptr noundef nonnull %15, i32 noundef 1538) #8, !dbg !2400
  call void @llvm.dbg.value(metadata ptr %call34, metadata !2352, metadata !DIExpression()), !dbg !2368
  %call35 = tail call i32 @Perl_sv_isobject(ptr noundef %call34) #8, !dbg !2402
  %tobool36.not = icmp eq i32 %call35, 0, !dbg !2402
  br i1 %tobool36.not, label %if.then40, label %land.lhs.true37, !dbg !2402

land.lhs.true37:                                  ; preds = %if.then33
  %call38 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %call34, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2402
  br i1 %call38, label %if.end44, label %if.then40, !dbg !2404

if.then40:                                        ; preds = %land.lhs.true37, %if.then33
  %call41 = tail call ptr @Perl_upg_version(ptr noundef %call34, i1 noundef zeroext false) #8, !dbg !2405
  br label %if.end44, !dbg !2405

if.end44:                                         ; preds = %if.end8, %cond.end, %land.lhs.true, %land.lhs.true16, %land.lhs.true20, %land.lhs.true37, %if.then40
  %tobool51.not = phi i1 [ true, %if.then40 ], [ true, %land.lhs.true37 ], [ false, %land.lhs.true20 ], [ false, %land.lhs.true16 ], [ false, %land.lhs.true ], [ false, %cond.end ], [ false, %if.end8 ], !dbg !2406
  %sv.0 = phi ptr [ %call34, %if.then40 ], [ %call34, %land.lhs.true37 ], [ @PL_sv_undef, %land.lhs.true20 ], [ @PL_sv_undef, %land.lhs.true16 ], [ @PL_sv_undef, %land.lhs.true ], [ @PL_sv_undef, %cond.end ], [ @PL_sv_undef, %if.end8 ], !dbg !2406
  call void @llvm.dbg.value(metadata ptr %sv.0, metadata !2352, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata ptr undef, metadata !2353, metadata !DIExpression()), !dbg !2368
  %cmp45 = icmp sgt i32 %conv, 1, !dbg !2407
  br i1 %cmp45, label %if.then47, label %if.end162, !dbg !2408

if.then47:                                        ; preds = %if.end44
  %17 = load ptr, ptr @PL_stack_base, align 8, !dbg !2409
  %add48 = add nsw i32 %2, 2, !dbg !2409
  %idxprom49 = sext i32 %add48 to i64, !dbg !2409
  %arrayidx50 = getelementptr inbounds ptr, ptr %17, i64 %idxprom49, !dbg !2409
  %18 = load ptr, ptr %arrayidx50, align 8, !dbg !2409
  call void @llvm.dbg.value(metadata ptr %18, metadata !2354, metadata !DIExpression()), !dbg !2410
  br i1 %tobool51.not, label %if.end95, label %if.then52, !dbg !2411

if.then52:                                        ; preds = %if.then47
  br i1 %tobool9.not, label %if.else90, label %if.then54, !dbg !2412

if.then54:                                        ; preds = %if.then52
  %sv_flags55 = getelementptr inbounds %struct.hv, ptr %pkg.0, i64 0, i32 2, !dbg !2413
  %19 = load i32, ptr %sv_flags55, align 4, !dbg !2413
  %and56 = and i32 %19, 33554432, !dbg !2413
  %tobool57.not = icmp eq i32 %and56, 0, !dbg !2413
  br i1 %tobool57.not, label %cond.end88, label %land.lhs.true58, !dbg !2413

land.lhs.true58:                                  ; preds = %if.then54
  %sv_u59 = getelementptr inbounds %struct.hv, ptr %pkg.0, i64 0, i32 3, !dbg !2413
  %20 = load ptr, ptr %sv_u59, align 8, !dbg !2413
  %21 = load ptr, ptr %pkg.0, align 8, !dbg !2413
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %21, i64 0, i32 3, !dbg !2413
  %22 = load i64, ptr %xhv_max, align 8, !dbg !2413
  %add61 = add i64 %22, 1, !dbg !2413
  %arrayidx62 = getelementptr inbounds ptr, ptr %20, i64 %add61, !dbg !2413
  %23 = load ptr, ptr %arrayidx62, align 8, !dbg !2413
  %tobool63.not = icmp eq ptr %23, null, !dbg !2413
  br i1 %tobool63.not, label %cond.end88, label %cond.true64, !dbg !2413

cond.true64:                                      ; preds = %land.lhs.true58
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx62, i64 0, i32 4, !dbg !2413
  %24 = load i32, ptr %xhv_name_count, align 4, !dbg !2413
  %tobool70.not = icmp eq i32 %24, 0, !dbg !2413
  br i1 %tobool70.not, label %cond.end88, label %cond.true71, !dbg !2413

cond.true71:                                      ; preds = %cond.true64
  %25 = load ptr, ptr %23, align 8, !dbg !2413
  br label %cond.end88, !dbg !2413

cond.end88:                                       ; preds = %cond.true64, %if.then54, %land.lhs.true58, %cond.true71
  %cond89 = phi ptr [ %25, %cond.true71 ], [ null, %land.lhs.true58 ], [ null, %if.then54 ], [ %23, %cond.true64 ], !dbg !2413
  call void @llvm.dbg.value(metadata ptr %cond89, metadata !2357, metadata !DIExpression()), !dbg !2414
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef %cond89, ptr noundef %cond89) #8, !dbg !2415
  br label %if.end95, !dbg !2416

if.else90:                                        ; preds = %if.then52
  %arrayidx93 = getelementptr inbounds ptr, ptr %17, i64 %idxprom, !dbg !2417
  %26 = load ptr, ptr %arrayidx93, align 8, !dbg !2417
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32, ptr noundef %26) #8, !dbg !2419
  br label %if.end95

if.end95:                                         ; preds = %cond.end88, %if.else90, %if.then47
  %call96 = tail call i32 @Perl_sv_isobject(ptr noundef %18) #8, !dbg !2420
  %tobool97.not = icmp eq i32 %call96, 0, !dbg !2420
  br i1 %tobool97.not, label %if.then101, label %land.lhs.true98, !dbg !2420

land.lhs.true98:                                  ; preds = %if.end95
  %call99 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %18, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2420
  br i1 %call99, label %if.end104, label %if.then101, !dbg !2422

if.then101:                                       ; preds = %land.lhs.true98, %if.end95
  %call102 = tail call ptr @Perl_new_version(ptr noundef %18) #8, !dbg !2423
  %call103 = tail call ptr @Perl_sv_2mortal(ptr noundef %call102) #8, !dbg !2423
  call void @llvm.dbg.value(metadata ptr %call103, metadata !2354, metadata !DIExpression()), !dbg !2410
  br label %if.end104, !dbg !2425

if.end104:                                        ; preds = %if.then101, %land.lhs.true98
  %req.0 = phi ptr [ %18, %land.lhs.true98 ], [ %call103, %if.then101 ], !dbg !2410
  call void @llvm.dbg.value(metadata ptr %req.0, metadata !2354, metadata !DIExpression()), !dbg !2410
  %call105 = tail call i32 @Perl_vcmp(ptr noundef %req.0, ptr noundef %sv.0) #8, !dbg !2426
  %cmp106 = icmp sgt i32 %call105, 0, !dbg !2428
  br i1 %cmp106, label %if.then108, label %if.end162, !dbg !2429

if.then108:                                       ; preds = %if.end104
  %sv_u109 = getelementptr inbounds %struct.sv, ptr %req.0, i64 0, i32 3, !dbg !2430
  %27 = load ptr, ptr %sv_u109, align 8, !dbg !2430
  %call110 = tail call ptr @Perl_hv_common_key_len(ptr noundef %27, ptr noundef nonnull @.str.33, i32 noundef 2, i32 noundef 8, ptr noundef null, i32 noundef 0) #8, !dbg !2430
  %tobool111.not = icmp eq ptr %call110, null, !dbg !2430
  br i1 %tobool111.not, label %if.else117, label %if.then114, !dbg !2433

if.then114:                                       ; preds = %if.then108
  %call115 = tail call ptr @Perl_vnormal(ptr noundef nonnull %req.0) #8, !dbg !2434
  call void @llvm.dbg.value(metadata ptr %call115, metadata !2354, metadata !DIExpression()), !dbg !2410
  %call116 = tail call ptr @Perl_vnormal(ptr noundef %sv.0) #8, !dbg !2436
  call void @llvm.dbg.value(metadata ptr %call116, metadata !2352, metadata !DIExpression()), !dbg !2368
  br label %if.end120, !dbg !2437

if.else117:                                       ; preds = %if.then108
  %call118 = tail call ptr @Perl_vstringify(ptr noundef nonnull %req.0) #8, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %call118, metadata !2354, metadata !DIExpression()), !dbg !2410
  %call119 = tail call ptr @Perl_vstringify(ptr noundef %sv.0) #8, !dbg !2440
  call void @llvm.dbg.value(metadata ptr %call119, metadata !2352, metadata !DIExpression()), !dbg !2368
  br label %if.end120

if.end120:                                        ; preds = %if.else117, %if.then114
  %req.1 = phi ptr [ %call115, %if.then114 ], [ %call118, %if.else117 ], !dbg !2441
  %sv.1 = phi ptr [ %call116, %if.then114 ], [ %call119, %if.else117 ], !dbg !2441
  call void @llvm.dbg.value(metadata ptr %sv.1, metadata !2352, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata ptr %req.1, metadata !2354, metadata !DIExpression()), !dbg !2410
  %sv_flags121 = getelementptr inbounds %struct.hv, ptr %pkg.0, i64 0, i32 2, !dbg !2442
  %28 = load i32, ptr %sv_flags121, align 4, !dbg !2442
  %and122 = and i32 %28, 33554432, !dbg !2442
  %tobool123.not = icmp eq i32 %and122, 0, !dbg !2442
  br i1 %tobool123.not, label %cond.end157, label %land.lhs.true124, !dbg !2442

land.lhs.true124:                                 ; preds = %if.end120
  %sv_u125 = getelementptr inbounds %struct.hv, ptr %pkg.0, i64 0, i32 3, !dbg !2442
  %29 = load ptr, ptr %sv_u125, align 8, !dbg !2442
  %30 = load ptr, ptr %pkg.0, align 8, !dbg !2442
  %xhv_max127 = getelementptr inbounds %struct.xpvhv, ptr %30, i64 0, i32 3, !dbg !2442
  %31 = load i64, ptr %xhv_max127, align 8, !dbg !2442
  %add128 = add i64 %31, 1, !dbg !2442
  %arrayidx129 = getelementptr inbounds ptr, ptr %29, i64 %add128, !dbg !2442
  %32 = load ptr, ptr %arrayidx129, align 8, !dbg !2442
  %tobool131.not = icmp eq ptr %32, null, !dbg !2442
  br i1 %tobool131.not, label %cond.end157, label %cond.true132, !dbg !2442

cond.true132:                                     ; preds = %land.lhs.true124
  %xhv_name_count138 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx129, i64 0, i32 4, !dbg !2442
  %33 = load i32, ptr %xhv_name_count138, align 4, !dbg !2442
  %tobool139.not = icmp eq i32 %33, 0, !dbg !2442
  br i1 %tobool139.not, label %cond.end157, label %cond.true140, !dbg !2442

cond.true140:                                     ; preds = %cond.true132
  %34 = load ptr, ptr %32, align 8, !dbg !2442
  br label %cond.end157, !dbg !2442

cond.end157:                                      ; preds = %cond.true132, %if.end120, %land.lhs.true124, %cond.true140
  %cond158 = phi ptr [ %34, %cond.true140 ], [ null, %land.lhs.true124 ], [ null, %if.end120 ], [ %32, %cond.true132 ], !dbg !2442
  %call159 = tail call ptr @Perl_sv_2mortal(ptr noundef %req.1) #8, !dbg !2443
  %call160 = tail call ptr @Perl_sv_2mortal(ptr noundef %sv.1) #8, !dbg !2444
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.34, ptr noundef %cond158, ptr noundef %call159, ptr noundef %call160) #8, !dbg !2445
  br label %if.end162, !dbg !2446

if.end162:                                        ; preds = %if.end104, %cond.end157, %if.end44
  %sv.3 = phi ptr [ %sv.0, %if.end44 ], [ %sv.1, %cond.end157 ], [ %sv.0, %if.end104 ], !dbg !2368
  call void @llvm.dbg.value(metadata ptr %sv.3, metadata !2352, metadata !DIExpression()), !dbg !2368
  %call163 = tail call i32 @Perl_sv_isobject(ptr noundef %sv.3) #8, !dbg !2447
  %tobool164.not = icmp eq i32 %call163, 0, !dbg !2447
  br i1 %tobool164.not, label %do.body, label %land.lhs.true165, !dbg !2447

land.lhs.true165:                                 ; preds = %if.end162
  %call166 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %sv.3, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2447
  br i1 %call166, label %if.then168, label %do.body, !dbg !2449

if.then168:                                       ; preds = %land.lhs.true165
  %call169 = tail call ptr @Perl_vstringify(ptr noundef %sv.3) #8, !dbg !2450
  %call170 = tail call ptr @Perl_sv_2mortal(ptr noundef %call169) #8, !dbg !2450
  br label %do.body, !dbg !2452

do.body:                                          ; preds = %if.end162, %land.lhs.true165, %if.then168
  %call170.sink = phi ptr [ %call170, %if.then168 ], [ %sv.3, %land.lhs.true165 ], [ %sv.3, %if.end162 ]
  %35 = load ptr, ptr @PL_stack_base, align 8, !dbg !2453
  %arrayidx173 = getelementptr inbounds ptr, ptr %35, i64 %idxprom, !dbg !2453
  store ptr %call170.sink, ptr %arrayidx173, align 8, !dbg !2453
  call void @llvm.dbg.value(metadata i64 1, metadata !2366, metadata !DIExpression()), !dbg !2454
  %36 = load ptr, ptr @PL_stack_base, align 8, !dbg !2455
  %add.ptr180 = getelementptr inbounds ptr, ptr %36, i64 %idxprom, !dbg !2455
  store ptr %add.ptr180, ptr @PL_stack_sp, align 8, !dbg !2455
  ret void, !dbg !2456
}

declare !dbg !2457 ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2460 ptr @Perl_sv_mortalcopy_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2463 ptr @Perl_upg_version(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare !dbg !2467 ptr @Perl_new_version(ptr noundef) local_unnamed_addr #3

declare !dbg !2470 i32 @Perl_vcmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2473 ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2476 ptr @Perl_vnormal(ptr noundef) local_unnamed_addr #3

declare !dbg !2477 ptr @Perl_vstringify(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_new(ptr nocapture readnone %cv) #0 !dbg !2478 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr undef, metadata !2480, metadata !DIExpression()), !dbg !2499
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2500
  call void @llvm.dbg.value(metadata ptr %0, metadata !2481, metadata !DIExpression()), !dbg !2499
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2500
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2500
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2500
  %2 = load i32, ptr %1, align 4, !dbg !2500
  call void @llvm.dbg.value(metadata i32 %2, metadata !2482, metadata !DIExpression()), !dbg !2499
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2500
  %inc = add nsw i32 %2, 1, !dbg !2500
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2482, metadata !DIExpression()), !dbg !2499
  %idx.ext = sext i32 %2 to i64, !dbg !2500
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2500
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2483, metadata !DIExpression()), !dbg !2499
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2500
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2500
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2500
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2500
  %conv = trunc i64 %4 to i32, !dbg !2500
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2484, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr null, metadata !2485, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !2487, metadata !DIExpression()), !dbg !2499
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8, !dbg !2501
  call void @llvm.dbg.value(metadata i32 0, metadata !2489, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr null, metadata !2490, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sub.ptr.sub), metadata !2481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 29, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2499
  switch i32 %conv, label %sw.bb30 [
    i32 3, label %sw.bb
    i32 2, label %sw.bb6
    i32 1, label %sw.bb28
  ], !dbg !2502

sw.bb:                                            ; preds = %entry
  %call = tail call ptr @Perl_sv_newmortal() #8, !dbg !2503
  call void @llvm.dbg.value(metadata ptr %call, metadata !2485, metadata !DIExpression()), !dbg !2499
  %5 = load ptr, ptr @PL_stack_base, align 8, !dbg !2504
  %add = add nsw i32 %2, 3, !dbg !2504
  %idxprom = sext i32 %add to i64, !dbg !2504
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2504
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2504
  call void @llvm.dbg.value(metadata ptr %6, metadata !2491, metadata !DIExpression()), !dbg !2505
  %sv_flags = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !2506
  %7 = load i32, ptr %sv_flags, align 4, !dbg !2506
  %and = and i32 %7, 2098176, !dbg !2506
  %cmp = icmp eq i32 %and, 1024, !dbg !2506
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2506

cond.true:                                        ; preds = %sw.bb
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !2506
  %8 = load ptr, ptr %sv_u, align 8, !dbg !2506
  br label %cond.end, !dbg !2506

cond.false:                                       ; preds = %sw.bb
  %call5 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef null, i32 noundef 34) #8, !dbg !2506
  br label %cond.end, !dbg !2506

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ %call5, %cond.false ], !dbg !2506
  tail call void (ptr, ptr, ...) @Perl_sv_setpvf(ptr noundef %call, ptr noundef nonnull @.str.35, ptr noundef %cond) #8, !dbg !2507
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %add7 = add nsw i32 %2, 2, !dbg !2508
  %idxprom8 = sext i32 %add7 to i64, !dbg !2508
  %arrayidx9 = getelementptr inbounds ptr, ptr %3, i64 %idxprom8, !dbg !2508
  %9 = load ptr, ptr %arrayidx9, align 8, !dbg !2508
  call void @llvm.dbg.value(metadata ptr %9, metadata !2485, metadata !DIExpression()), !dbg !2499
  %sv_flags10 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2, !dbg !2509
  %10 = load i32, ptr %sv_flags10, align 4, !dbg !2509
  %and11 = and i32 %10, 2097152, !dbg !2509
  %tobool.not = icmp eq i32 %and11, 0, !dbg !2509
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !2509

land.rhs:                                         ; preds = %sw.bb6
  %call14 = tail call i32 @Perl_mg_get(ptr noundef nonnull %9) #8, !dbg !2509
  %.pre = load i32, ptr %sv_flags10, align 4, !dbg !2510
  br label %land.end

land.end:                                         ; preds = %sw.bb6, %land.rhs
  %11 = phi i32 [ %10, %sw.bb6 ], [ %.pre, %land.rhs ], !dbg !2510
  %and17 = and i32 %11, 65280, !dbg !2510
  %tobool18.not = icmp ne i32 %and17, 0, !dbg !2510
  %and20 = and i32 %11, 255, !dbg !2510
  %cmp21 = icmp eq i32 %and20, 8, !dbg !2510
  %or.cond = or i1 %tobool18.not, %cmp21, !dbg !2510
  %and25 = and i32 %11, 16826623, !dbg !2510
  %cmp26 = icmp eq i32 %and25, 16777226, !dbg !2510
  %or.cond368 = select i1 %or.cond, i1 true, i1 %cmp26, !dbg !2510
  br i1 %or.cond368, label %sw.epilog, label %sw.bb28, !dbg !2510

sw.bb28:                                          ; preds = %land.end, %entry
  %call29 = tail call ptr @Perl_sv_newmortal() #8, !dbg !2512
  call void @llvm.dbg.value(metadata ptr %call29, metadata !2485, metadata !DIExpression()), !dbg !2499
  tail call void @Perl_sv_setpvn(ptr noundef %call29, ptr noundef nonnull @.str.36, i64 noundef 5) #8, !dbg !2513
  br label %sw.epilog, !dbg !2514

sw.bb30:                                          ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.37) #8, !dbg !2515
  br label %sw.epilog, !dbg !2516

sw.epilog:                                        ; preds = %land.end, %sw.bb30, %sw.bb28, %cond.end
  %vs.0 = phi ptr [ null, %sw.bb30 ], [ %call29, %sw.bb28 ], [ %9, %land.end ], [ %call, %cond.end ], !dbg !2499
  call void @llvm.dbg.value(metadata ptr %vs.0, metadata !2485, metadata !DIExpression()), !dbg !2499
  %12 = load ptr, ptr @PL_stack_base, align 8, !dbg !2517
  %idxprom32 = sext i32 %inc to i64, !dbg !2517
  %arrayidx33 = getelementptr inbounds ptr, ptr %12, i64 %idxprom32, !dbg !2517
  %13 = load ptr, ptr %arrayidx33, align 8, !dbg !2517
  call void @llvm.dbg.value(metadata ptr %13, metadata !2490, metadata !DIExpression()), !dbg !2499
  %call34 = tail call i32 @Perl_sv_isobject(ptr noundef %13) #8, !dbg !2518
  %tobool35.not = icmp eq i32 %call34, 0, !dbg !2518
  br i1 %tobool35.not, label %if.else, label %if.then36, !dbg !2519

if.then36:                                        ; preds = %sw.epilog
  %sv_u37 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3, !dbg !2520
  %14 = load ptr, ptr %sv_u37, align 8, !dbg !2520
  %15 = load ptr, ptr %14, align 8, !dbg !2520
  %16 = load ptr, ptr %15, align 8, !dbg !2520
  call void @llvm.dbg.value(metadata ptr %16, metadata !2494, metadata !DIExpression()), !dbg !2521
  %sv_flags38 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 2, !dbg !2522
  %17 = load i32, ptr %sv_flags38, align 4, !dbg !2522
  %and39 = and i32 %17, 33554432, !dbg !2522
  %tobool40.not = icmp eq i32 %and39, 0, !dbg !2522
  br i1 %tobool40.not, label %cond.end156, label %land.lhs.true, !dbg !2522

land.lhs.true:                                    ; preds = %if.then36
  %sv_u41 = getelementptr inbounds %struct.hv, ptr %16, i64 0, i32 3, !dbg !2522
  %18 = load ptr, ptr %sv_u41, align 8, !dbg !2522
  %19 = load ptr, ptr %16, align 8, !dbg !2522
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %19, i64 0, i32 3, !dbg !2522
  %20 = load i64, ptr %xhv_max, align 8, !dbg !2522
  %add43 = add i64 %20, 1, !dbg !2522
  %arrayidx44 = getelementptr inbounds ptr, ptr %18, i64 %add43, !dbg !2522
  %21 = load ptr, ptr %arrayidx44, align 8, !dbg !2522
  %tobool45.not = icmp eq ptr %21, null, !dbg !2522
  br i1 %tobool45.not, label %land.lhs.true162, label %land.lhs.true46, !dbg !2522

land.lhs.true46:                                  ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx44, i64 0, i32 4, !dbg !2522
  %22 = load i32, ptr %xhv_name_count, align 4, !dbg !2522
  %tobool52.not = icmp eq i32 %22, 0, !dbg !2522
  br i1 %tobool52.not, label %cond.end91, label %cond.true53, !dbg !2522

cond.true53:                                      ; preds = %land.lhs.true46
  %23 = load ptr, ptr %21, align 8, !dbg !2522
  %tobool60.not = icmp eq ptr %23, null, !dbg !2522
  br i1 %tobool60.not, label %land.lhs.true107, label %cond.end91, !dbg !2522

cond.end91:                                       ; preds = %land.lhs.true46, %cond.true53
  %cond92 = phi ptr [ %23, %cond.true53 ], [ %21, %land.lhs.true46 ], !dbg !2522
  %hek_key = getelementptr inbounds %struct.hek, ptr %cond92, i64 0, i32 2, !dbg !2522
  br label %land.lhs.true107, !dbg !2522

land.lhs.true107:                                 ; preds = %cond.true53, %cond.end91
  %cond95.ph.ph = phi ptr [ %hek_key, %cond.end91 ], [ null, %cond.true53 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !2487, metadata !DIExpression()), !dbg !2499
  %xhv_name_count113 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx44, i64 0, i32 4, !dbg !2523
  %24 = load i32, ptr %xhv_name_count113, align 4, !dbg !2523
  %tobool114.not = icmp eq i32 %24, 0, !dbg !2523
  br i1 %tobool114.not, label %cond.end153, label %cond.true115, !dbg !2523

cond.true115:                                     ; preds = %land.lhs.true107
  %25 = load ptr, ptr %21, align 8, !dbg !2523
  %tobool122.not = icmp eq ptr %25, null, !dbg !2523
  br i1 %tobool122.not, label %land.lhs.true162, label %cond.end153, !dbg !2523

cond.end153:                                      ; preds = %land.lhs.true107, %cond.true115
  %cond154 = phi ptr [ %25, %cond.true115 ], [ %21, %land.lhs.true107 ], !dbg !2523
  %hek_len = getelementptr inbounds %struct.hek, ptr %cond154, i64 0, i32 1, !dbg !2523
  %26 = load i32, ptr %hek_len, align 4, !dbg !2523
  %phi.cast = sext i32 %26 to i64, !dbg !2523
  br label %land.lhs.true162, !dbg !2523

cond.end156:                                      ; preds = %if.then36
  call void @llvm.dbg.value(metadata i64 0, metadata !2488, metadata !DIExpression()), !dbg !2499
  store i64 0, ptr %len, align 8, !dbg !2524
  br label %if.end267, !dbg !2525

land.lhs.true162:                                 ; preds = %land.lhs.true, %cond.true115, %cond.end153
  %cond95.ph390 = phi ptr [ %cond95.ph.ph, %cond.true115 ], [ %cond95.ph.ph, %cond.end153 ], [ null, %land.lhs.true ]
  %cond157.ph = phi i64 [ 0, %cond.true115 ], [ %phi.cast, %cond.end153 ], [ 0, %land.lhs.true ]
  call void @llvm.dbg.value(metadata i64 0, metadata !2488, metadata !DIExpression()), !dbg !2499
  store i64 %cond157.ph, ptr %len, align 8, !dbg !2524
  %27 = load ptr, ptr %16, align 8, !dbg !2525
  %xhv_max165 = getelementptr inbounds %struct.xpvhv, ptr %27, i64 0, i32 3, !dbg !2525
  %28 = load i64, ptr %xhv_max165, align 8, !dbg !2525
  %add166 = add i64 %28, 1, !dbg !2525
  %arrayidx167 = getelementptr inbounds ptr, ptr %18, i64 %add166, !dbg !2525
  %29 = load ptr, ptr %arrayidx167, align 8, !dbg !2525
  %tobool169.not = icmp eq ptr %29, null, !dbg !2525
  br i1 %tobool169.not, label %if.end267, label %land.lhs.true170, !dbg !2525

land.lhs.true170:                                 ; preds = %land.lhs.true162
  %xhv_name_count176 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx167, i64 0, i32 4, !dbg !2525
  %30 = load i32, ptr %xhv_name_count176, align 4, !dbg !2525
  %tobool177.not = icmp eq i32 %30, 0, !dbg !2525
  br i1 %tobool177.not, label %cond.end241, label %cond.true178, !dbg !2525

cond.true178:                                     ; preds = %land.lhs.true170
  %31 = load ptr, ptr %29, align 8, !dbg !2525
  %tobool185.not = icmp eq ptr %31, null, !dbg !2525
  br i1 %tobool185.not, label %if.end267, label %cond.end241, !dbg !2525

cond.end241:                                      ; preds = %cond.true178, %land.lhs.true170
  %cond217.pn = phi ptr [ %29, %land.lhs.true170 ], [ %31, %cond.true178 ], !dbg !2525
  %hek_key218383 = getelementptr inbounds %struct.hek, ptr %cond217.pn, i64 0, i32 2, !dbg !2525
  %hek_len243 = getelementptr inbounds %struct.hek, ptr %cond217.pn, i64 0, i32 1, !dbg !2525
  %32 = load i32, ptr %hek_len243, align 4, !dbg !2525
  %idx.ext244 = sext i32 %32 to i64, !dbg !2525
  %add.ptr245 = getelementptr inbounds i8, ptr %hek_key218383, i64 %idx.ext244, !dbg !2525
  %add.ptr246 = getelementptr inbounds i8, ptr %add.ptr245, i64 1, !dbg !2525
  %33 = load i8, ptr %add.ptr246, align 1, !dbg !2525
  %conv247 = zext i8 %33 to i32, !dbg !2525
  %and248 = shl i32 %conv247, 29, !dbg !2525
  %34 = and i32 %and248, 536870912, !dbg !2525
  br label %if.end267, !dbg !2525

if.else:                                          ; preds = %sw.epilog
  %sv_flags254 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2, !dbg !2526
  %35 = load i32, ptr %sv_flags254, align 4, !dbg !2526
  %and255 = and i32 %35, 2098176, !dbg !2526
  %cmp256 = icmp eq i32 %and255, 1024, !dbg !2526
  br i1 %cmp256, label %cond.true258, label %cond.false261, !dbg !2526

cond.true258:                                     ; preds = %if.else
  %36 = load ptr, ptr %13, align 8, !dbg !2526
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %36, i64 0, i32 2, !dbg !2526
  %37 = load i64, ptr %xpv_cur, align 8, !dbg !2526
  call void @llvm.dbg.value(metadata i64 %37, metadata !2488, metadata !DIExpression()), !dbg !2499
  store i64 %37, ptr %len, align 8, !dbg !2526
  %sv_u260 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3, !dbg !2526
  %38 = load ptr, ptr %sv_u260, align 8, !dbg !2526
  br label %cond.end263, !dbg !2526

cond.false261:                                    ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %len, metadata !2488, metadata !DIExpression(DW_OP_deref)), !dbg !2499
  %call262 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %13, ptr noundef nonnull %len, i32 noundef 0) #8, !dbg !2526
  %.pre387 = load i32, ptr %sv_flags254, align 4, !dbg !2528
  br label %cond.end263, !dbg !2526

cond.end263:                                      ; preds = %cond.false261, %cond.true258
  %39 = phi i32 [ %35, %cond.true258 ], [ %.pre387, %cond.false261 ], !dbg !2528
  %cond264 = phi ptr [ %38, %cond.true258 ], [ %call262, %cond.false261 ], !dbg !2526
  call void @llvm.dbg.value(metadata ptr %cond264, metadata !2487, metadata !DIExpression()), !dbg !2499
  %and266 = and i32 %39, 536870912, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %and266, metadata !2489, metadata !DIExpression()), !dbg !2499
  br label %if.end267

if.end267:                                        ; preds = %cond.end156, %cond.end241, %cond.true178, %land.lhs.true162, %cond.end263
  %flags.0 = phi i32 [ %and266, %cond.end263 ], [ %34, %cond.end241 ], [ 0, %cond.true178 ], [ 0, %land.lhs.true162 ], [ 0, %cond.end156 ], !dbg !2529
  %classname.0 = phi ptr [ %cond264, %cond.end263 ], [ %cond95.ph390, %cond.end241 ], [ %cond95.ph390, %cond.true178 ], [ %cond95.ph390, %land.lhs.true162 ], [ null, %cond.end156 ], !dbg !2529
  call void @llvm.dbg.value(metadata ptr %classname.0, metadata !2487, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 %flags.0, metadata !2489, metadata !DIExpression()), !dbg !2499
  %call268 = call ptr @Perl_new_version(ptr noundef %vs.0) #8, !dbg !2530
  call void @llvm.dbg.value(metadata ptr %call268, metadata !2486, metadata !DIExpression()), !dbg !2499
  %40 = load i64, ptr %len, align 8, !dbg !2531
  call void @llvm.dbg.value(metadata i64 %40, metadata !2488, metadata !DIExpression()), !dbg !2499
  %cmp269.not = icmp eq i64 %40, 7, !dbg !2533
  br i1 %cmp269.not, label %lor.lhs.false271, label %if.then275, !dbg !2534

lor.lhs.false271:                                 ; preds = %if.end267
  %call272 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %classname.0, ptr noundef nonnull dereferenceable(8) @.str.29) #9, !dbg !2535
  %cmp273.not = icmp eq i32 %call272, 0, !dbg !2536
  br i1 %cmp273.not, label %do.body, label %if.then275, !dbg !2537

if.then275:                                       ; preds = %lor.lhs.false271, %if.end267
  call void @llvm.dbg.value(metadata i64 %40, metadata !2488, metadata !DIExpression()), !dbg !2499
  %conv276 = trunc i64 %40 to i32, !dbg !2538
  %or = or i32 %flags.0, 1, !dbg !2538
  %call277 = call ptr @Perl_gv_stashpvn(ptr noundef %classname.0, i32 noundef %conv276, i32 noundef %or) #8, !dbg !2538
  %call278 = call ptr @Perl_sv_bless(ptr noundef %call268, ptr noundef %call277) #8, !dbg !2538
  br label %do.body, !dbg !2538

do.body:                                          ; preds = %lor.lhs.false271, %if.then275
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2539
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sext), metadata !2481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2499
  %idx.ext1 = ashr i64 %sext, 32, !dbg !2539
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %idx.ext1), metadata !2481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2499
  %idx.neg = sub nsw i64 0, %idx.ext1, !dbg !2539
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %idx.neg), metadata !2481, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2499
  %add.ptr2 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !2539
  call void @llvm.dbg.value(metadata ptr %add.ptr2, metadata !2481, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata ptr %call268, metadata !2497, metadata !DIExpression()), !dbg !2540
  %incdec.ptr280 = getelementptr inbounds ptr, ptr %add.ptr2, i64 1, !dbg !2541
  call void @llvm.dbg.value(metadata ptr %incdec.ptr280, metadata !2481, metadata !DIExpression()), !dbg !2499
  store ptr %call268, ptr %incdec.ptr280, align 8, !dbg !2541
  store ptr %incdec.ptr280, ptr @PL_stack_sp, align 8, !dbg !2541
  %call281 = call ptr @Perl_sv_2mortal(ptr noundef %call268) #8, !dbg !2541
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !2542
  ret void, !dbg !2542
}

declare !dbg !2543 void @Perl_sv_setpvf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !2546 void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !2549 ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_stringify(ptr noundef %cv) #0 !dbg !2552 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2554, metadata !DIExpression()), !dbg !2565
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2566
  call void @llvm.dbg.value(metadata ptr %0, metadata !2555, metadata !DIExpression()), !dbg !2565
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2566
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2566
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2566
  %2 = load i32, ptr %1, align 4, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %2, metadata !2556, metadata !DIExpression()), !dbg !2565
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2566
  %inc = add nsw i32 %2, 1, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2556, metadata !DIExpression()), !dbg !2565
  %idx.ext = sext i32 %2 to i64, !dbg !2566
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2566
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2557, metadata !DIExpression()), !dbg !2565
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2566
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2566
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2566
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2566
  %conv = trunc i64 %4 to i32, !dbg !2566
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2558, metadata !DIExpression()), !dbg !2565
  %cmp = icmp slt i32 %conv, 1, !dbg !2567
  br i1 %cmp, label %if.then, label %if.end, !dbg !2569

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.38), !dbg !2570
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !2571
  br label %if.end, !dbg !2570

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !2571
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sub.ptr.sub), metadata !2555, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 29, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2565
  call void @llvm.dbg.value(metadata ptr null, metadata !2559, metadata !DIExpression()), !dbg !2572
  %idxprom = sext i32 %inc to i64, !dbg !2571
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2571
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2571
  call void @llvm.dbg.value(metadata ptr %6, metadata !2561, metadata !DIExpression()), !dbg !2573
  %call = tail call i32 @Perl_sv_isobject(ptr noundef %6) #8, !dbg !2574
  %tobool.not = icmp eq i32 %call, 0, !dbg !2574
  br i1 %tobool.not, label %if.else, label %land.lhs.true, !dbg !2574

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %6, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2574
  br i1 %call4, label %if.then6, label %if.else, !dbg !2571

if.then6:                                         ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !2576
  %7 = load ptr, ptr %sv_u, align 8, !dbg !2576
  call void @llvm.dbg.value(metadata ptr %7, metadata !2559, metadata !DIExpression()), !dbg !2572
  br label %if.end7, !dbg !2576

if.else:                                          ; preds = %land.lhs.true, %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8, !dbg !2574
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %lobj.0 = phi ptr [ %7, %if.then6 ], [ null, %if.else ], !dbg !2572
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2578
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sext), metadata !2555, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2565
  %idx.ext2 = ashr i64 %sext, 32, !dbg !2578
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %idx.ext2), metadata !2555, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2565
  %idx.neg = sub nsw i64 0, %idx.ext2, !dbg !2578
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %idx.neg), metadata !2555, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2565
  %add.ptr3 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !2555, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata ptr %lobj.0, metadata !2559, metadata !DIExpression()), !dbg !2572
  %call10 = tail call ptr @Perl_vstringify(ptr noundef %lobj.0) #8, !dbg !2579
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2563, metadata !DIExpression()), !dbg !2580
  %incdec.ptr11 = getelementptr inbounds ptr, ptr %add.ptr3, i64 1, !dbg !2579
  call void @llvm.dbg.value(metadata ptr %incdec.ptr11, metadata !2555, metadata !DIExpression()), !dbg !2565
  store ptr %call10, ptr %incdec.ptr11, align 8, !dbg !2579
  store ptr %incdec.ptr11, ptr @PL_stack_sp, align 8, !dbg !2579
  %call12 = tail call ptr @Perl_sv_2mortal(ptr noundef %call10) #8, !dbg !2579
  ret void, !dbg !2581
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_numify(ptr noundef %cv) #0 !dbg !2582 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2584, metadata !DIExpression()), !dbg !2595
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2596
  call void @llvm.dbg.value(metadata ptr %0, metadata !2585, metadata !DIExpression()), !dbg !2595
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2596
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2596
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2596
  %2 = load i32, ptr %1, align 4, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %2, metadata !2586, metadata !DIExpression()), !dbg !2595
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2596
  %inc = add nsw i32 %2, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2586, metadata !DIExpression()), !dbg !2595
  %idx.ext = sext i32 %2 to i64, !dbg !2596
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2596
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2587, metadata !DIExpression()), !dbg !2595
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2596
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2596
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2596
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2596
  %conv = trunc i64 %4 to i32, !dbg !2596
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2588, metadata !DIExpression()), !dbg !2595
  %cmp = icmp slt i32 %conv, 1, !dbg !2597
  br i1 %cmp, label %if.then, label %if.end, !dbg !2599

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.38), !dbg !2600
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !2601
  br label %if.end, !dbg !2600

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !2601
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sub.ptr.sub), metadata !2585, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 29, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2595
  call void @llvm.dbg.value(metadata ptr null, metadata !2589, metadata !DIExpression()), !dbg !2602
  %idxprom = sext i32 %inc to i64, !dbg !2601
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2601
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2601
  call void @llvm.dbg.value(metadata ptr %6, metadata !2591, metadata !DIExpression()), !dbg !2603
  %call = tail call i32 @Perl_sv_isobject(ptr noundef %6) #8, !dbg !2604
  %tobool.not = icmp eq i32 %call, 0, !dbg !2604
  br i1 %tobool.not, label %if.else, label %land.lhs.true, !dbg !2604

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %6, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2604
  br i1 %call4, label %if.then6, label %if.else, !dbg !2601

if.then6:                                         ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !2606
  %7 = load ptr, ptr %sv_u, align 8, !dbg !2606
  call void @llvm.dbg.value(metadata ptr %7, metadata !2589, metadata !DIExpression()), !dbg !2602
  br label %if.end7, !dbg !2606

if.else:                                          ; preds = %land.lhs.true, %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8, !dbg !2604
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %lobj.0 = phi ptr [ %7, %if.then6 ], [ null, %if.else ], !dbg !2602
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2608
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sext), metadata !2585, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2595
  %idx.ext2 = ashr i64 %sext, 32, !dbg !2608
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %idx.ext2), metadata !2585, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2595
  %idx.neg = sub nsw i64 0, %idx.ext2, !dbg !2608
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %idx.neg), metadata !2585, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2595
  %add.ptr3 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !2608
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !2585, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr %lobj.0, metadata !2589, metadata !DIExpression()), !dbg !2602
  %call10 = tail call ptr @Perl_vnumify(ptr noundef %lobj.0) #8, !dbg !2609
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2593, metadata !DIExpression()), !dbg !2610
  %incdec.ptr11 = getelementptr inbounds ptr, ptr %add.ptr3, i64 1, !dbg !2609
  call void @llvm.dbg.value(metadata ptr %incdec.ptr11, metadata !2585, metadata !DIExpression()), !dbg !2595
  store ptr %call10, ptr %incdec.ptr11, align 8, !dbg !2609
  store ptr %incdec.ptr11, ptr @PL_stack_sp, align 8, !dbg !2609
  %call12 = tail call ptr @Perl_sv_2mortal(ptr noundef %call10) #8, !dbg !2609
  ret void, !dbg !2611
}

declare !dbg !2612 ptr @Perl_vnumify(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_normal(ptr noundef %cv) #0 !dbg !2613 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2615, metadata !DIExpression()), !dbg !2626
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %0, metadata !2616, metadata !DIExpression()), !dbg !2626
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2627
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2627
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2627
  %2 = load i32, ptr %1, align 4, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %2, metadata !2617, metadata !DIExpression()), !dbg !2626
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2627
  %inc = add nsw i32 %2, 1, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2617, metadata !DIExpression()), !dbg !2626
  %idx.ext = sext i32 %2 to i64, !dbg !2627
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2627
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2618, metadata !DIExpression()), !dbg !2626
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2627
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2627
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2627
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !2619, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2626
  %4 = and i64 %sub.ptr.sub, 34359738360, !dbg !2628
  %cmp.not = icmp eq i64 %4, 8, !dbg !2628
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2630

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.40), !dbg !2631
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !2632
  br label %if.end, !dbg !2631

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !2632
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sub.ptr.sub), metadata !2616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 29, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2626
  call void @llvm.dbg.value(metadata ptr null, metadata !2620, metadata !DIExpression()), !dbg !2633
  %idxprom = sext i32 %inc to i64, !dbg !2632
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2632
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2632
  call void @llvm.dbg.value(metadata ptr %6, metadata !2622, metadata !DIExpression()), !dbg !2634
  %call = tail call i32 @Perl_sv_isobject(ptr noundef %6) #8, !dbg !2635
  %tobool.not = icmp eq i32 %call, 0, !dbg !2635
  br i1 %tobool.not, label %if.else, label %land.lhs.true, !dbg !2635

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %6, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2635
  br i1 %call4, label %if.then6, label %if.else, !dbg !2632

if.then6:                                         ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !2637
  %7 = load ptr, ptr %sv_u, align 8, !dbg !2637
  call void @llvm.dbg.value(metadata ptr %7, metadata !2620, metadata !DIExpression()), !dbg !2633
  br label %if.end7, !dbg !2637

if.else:                                          ; preds = %land.lhs.true, %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.41) #8, !dbg !2635
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %ver.0 = phi ptr [ %7, %if.then6 ], [ null, %if.else ], !dbg !2633
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2639
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sext), metadata !2616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2626
  %idx.ext2 = ashr i64 %sext, 32, !dbg !2639
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %idx.ext2), metadata !2616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2626
  %idx.neg = sub nsw i64 0, %idx.ext2, !dbg !2639
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %idx.neg), metadata !2616, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2626
  %add.ptr3 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !2639
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !2616, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %ver.0, metadata !2620, metadata !DIExpression()), !dbg !2633
  %call10 = tail call ptr @Perl_vnormal(ptr noundef %ver.0) #8, !dbg !2640
  call void @llvm.dbg.value(metadata ptr %call10, metadata !2624, metadata !DIExpression()), !dbg !2641
  %incdec.ptr11 = getelementptr inbounds ptr, ptr %add.ptr3, i64 1, !dbg !2640
  call void @llvm.dbg.value(metadata ptr %incdec.ptr11, metadata !2616, metadata !DIExpression()), !dbg !2626
  store ptr %call10, ptr %incdec.ptr11, align 8, !dbg !2640
  store ptr %incdec.ptr11, ptr @PL_stack_sp, align 8, !dbg !2640
  %call12 = tail call ptr @Perl_sv_2mortal(ptr noundef %call10) #8, !dbg !2640
  ret void, !dbg !2642
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_vcmp(ptr noundef %cv) #0 !dbg !2643 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2645, metadata !DIExpression()), !dbg !2661
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %0, metadata !2646, metadata !DIExpression()), !dbg !2661
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2662
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2662
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2662
  %2 = load i32, ptr %1, align 4, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %2, metadata !2647, metadata !DIExpression()), !dbg !2661
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2662
  %inc = add nsw i32 %2, 1, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2647, metadata !DIExpression()), !dbg !2661
  %idx.ext = sext i32 %2 to i64, !dbg !2662
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2648, metadata !DIExpression()), !dbg !2661
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2662
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2662
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2662
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2662
  %conv = trunc i64 %4 to i32, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2649, metadata !DIExpression()), !dbg !2661
  %cmp = icmp slt i32 %conv, 1, !dbg !2663
  br i1 %cmp, label %if.then, label %if.end, !dbg !2665

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.38), !dbg !2666
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !2667
  br label %if.end, !dbg !2666

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !2667
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sub.ptr.sub), metadata !2646, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 29, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2661
  call void @llvm.dbg.value(metadata ptr null, metadata !2650, metadata !DIExpression()), !dbg !2668
  %idxprom = sext i32 %inc to i64, !dbg !2667
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2667
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2667
  call void @llvm.dbg.value(metadata ptr %6, metadata !2652, metadata !DIExpression()), !dbg !2669
  %call = tail call i32 @Perl_sv_isobject(ptr noundef %6) #8, !dbg !2670
  %tobool.not = icmp eq i32 %call, 0, !dbg !2670
  br i1 %tobool.not, label %if.else, label %land.lhs.true, !dbg !2670

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %6, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2670
  br i1 %call4, label %if.then6, label %if.else, !dbg !2667

if.then6:                                         ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !2672
  %7 = load ptr, ptr %sv_u, align 8, !dbg !2672
  call void @llvm.dbg.value(metadata ptr %7, metadata !2650, metadata !DIExpression()), !dbg !2668
  br label %if.end7, !dbg !2672

if.else:                                          ; preds = %land.lhs.true, %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8, !dbg !2670
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %lobj.0 = phi ptr [ %7, %if.then6 ], [ null, %if.else ], !dbg !2668
  call void @llvm.dbg.value(metadata ptr %lobj.0, metadata !2650, metadata !DIExpression()), !dbg !2668
  %8 = load ptr, ptr @PL_stack_base, align 8, !dbg !2674
  %add8 = add nsw i32 %2, 2, !dbg !2674
  %idxprom9 = sext i32 %add8 to i64, !dbg !2674
  %arrayidx10 = getelementptr inbounds ptr, ptr %8, i64 %idxprom9, !dbg !2674
  %9 = load ptr, ptr %arrayidx10, align 8, !dbg !2674
  call void @llvm.dbg.value(metadata ptr %9, metadata !2657, metadata !DIExpression()), !dbg !2675
  %add11 = add nsw i32 %2, 3, !dbg !2676
  %idxprom12 = sext i32 %add11 to i64, !dbg !2676
  %arrayidx13 = getelementptr inbounds ptr, ptr %8, i64 %idxprom12, !dbg !2676
  %10 = load ptr, ptr %arrayidx13, align 8, !dbg !2676
  %sv_flags = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2, !dbg !2676
  %11 = load i32, ptr %sv_flags, align 4, !dbg !2676
  %and = and i32 %11, 2097408, !dbg !2676
  %cmp14 = icmp eq i32 %and, 256, !dbg !2676
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !2676

cond.true:                                        ; preds = %if.end7
  %12 = load ptr, ptr %10, align 8, !dbg !2676
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %12, i64 0, i32 4, !dbg !2676
  %13 = load i64, ptr %xiv_u, align 8, !dbg !2676
  br label %cond.end, !dbg !2676

cond.false:                                       ; preds = %if.end7
  %call22 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %10, i32 noundef 2) #8, !dbg !2676
  br label %cond.end, !dbg !2676

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %13, %cond.true ], [ %call22, %cond.false ], !dbg !2676
  call void @llvm.dbg.value(metadata i64 %cond, metadata !2658, metadata !DIExpression()), !dbg !2675
  %call23 = tail call i32 @Perl_sv_isobject(ptr noundef %9) #8, !dbg !2677
  %tobool24.not = icmp eq i32 %call23, 0, !dbg !2677
  br i1 %tobool24.not, label %if.then28, label %land.lhs.true25, !dbg !2677

land.lhs.true25:                                  ; preds = %cond.end
  %call26 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %9, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2677
  br i1 %call26, label %if.end48, label %if.then28, !dbg !2679

if.then28:                                        ; preds = %land.lhs.true25, %cond.end
  %sv_flags29 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2, !dbg !2680
  %14 = load i32, ptr %sv_flags29, align 4, !dbg !2680
  %and30 = and i32 %14, 65280, !dbg !2680
  %tobool31.not = icmp ne i32 %and30, 0, !dbg !2680
  %and33 = and i32 %14, 255, !dbg !2680
  %cmp34 = icmp eq i32 %and33, 8, !dbg !2680
  %or.cond = or i1 %tobool31.not, %cmp34, !dbg !2680
  %and38 = and i32 %14, 16826623, !dbg !2680
  %cmp39 = icmp eq i32 %and38, 16777226, !dbg !2680
  %or.cond102 = select i1 %or.cond, i1 true, i1 %cmp39, !dbg !2680
  br i1 %or.cond102, label %cond.end44, label %cond.false42, !dbg !2680

cond.false42:                                     ; preds = %if.then28
  %call43 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.42, i64 noundef 1, i32 noundef 524288) #8, !dbg !2680
  br label %cond.end44, !dbg !2680

cond.end44:                                       ; preds = %if.then28, %cond.false42
  %cond45 = phi ptr [ %call43, %cond.false42 ], [ %9, %if.then28 ], !dbg !2680
  %call46 = tail call ptr @Perl_new_version(ptr noundef %cond45) #8, !dbg !2680
  %call47 = tail call ptr @Perl_sv_2mortal(ptr noundef %call46) #8, !dbg !2680
  call void @llvm.dbg.value(metadata ptr %call47, metadata !2657, metadata !DIExpression()), !dbg !2675
  br label %if.end48, !dbg !2682

if.end48:                                         ; preds = %cond.end44, %land.lhs.true25
  %robj.0 = phi ptr [ %9, %land.lhs.true25 ], [ %call47, %cond.end44 ], !dbg !2675
  call void @llvm.dbg.value(metadata ptr %robj.0, metadata !2657, metadata !DIExpression()), !dbg !2675
  %sv_u49 = getelementptr inbounds %struct.sv, ptr %robj.0, i64 0, i32 3, !dbg !2683
  %15 = load ptr, ptr %sv_u49, align 8, !dbg !2683
  call void @llvm.dbg.value(metadata ptr %15, metadata !2656, metadata !DIExpression()), !dbg !2675
  %tobool50.not = icmp eq i64 %cond, 0, !dbg !2684
  br i1 %tobool50.not, label %if.else55, label %if.then51, !dbg !2686

if.then51:                                        ; preds = %if.end48
  %call52 = tail call i32 @Perl_vcmp(ptr noundef %15, ptr noundef %lobj.0) #8, !dbg !2687
  call void @llvm.dbg.value(metadata ptr %call54, metadata !2654, metadata !DIExpression()), !dbg !2675
  br label %do.body60, !dbg !2689

if.else55:                                        ; preds = %if.end48
  %call56 = tail call i32 @Perl_vcmp(ptr noundef %lobj.0, ptr noundef %15) #8, !dbg !2690
  call void @llvm.dbg.value(metadata ptr undef, metadata !2654, metadata !DIExpression()), !dbg !2675
  br label %do.body60

do.body60:                                        ; preds = %if.then51, %if.else55
  %call52.sink = phi i32 [ %call52, %if.then51 ], [ %call56, %if.else55 ]
  %conv53 = sext i32 %call52.sink to i64, !dbg !2692
  %call54 = tail call ptr @Perl_newSViv(i64 noundef %conv53) #8, !dbg !2692
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2693
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sext), metadata !2646, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2661
  %idx.ext2 = ashr i64 %sext, 32, !dbg !2693
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %idx.ext2), metadata !2646, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2661
  %idx.neg = sub nsw i64 0, %idx.ext2, !dbg !2693
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %idx.neg), metadata !2646, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2661
  %add.ptr3 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !2693
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !2646, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata ptr %call54, metadata !2654, metadata !DIExpression()), !dbg !2675
  call void @llvm.dbg.value(metadata ptr %call54, metadata !2659, metadata !DIExpression()), !dbg !2694
  %incdec.ptr62 = getelementptr inbounds ptr, ptr %add.ptr3, i64 1, !dbg !2695
  call void @llvm.dbg.value(metadata ptr %incdec.ptr62, metadata !2646, metadata !DIExpression()), !dbg !2661
  store ptr %call54, ptr %incdec.ptr62, align 8, !dbg !2695
  store ptr %incdec.ptr62, ptr @PL_stack_sp, align 8, !dbg !2695
  %call63 = tail call ptr @Perl_sv_2mortal(ptr noundef %call54) #8, !dbg !2695
  ret void, !dbg !2696
}

declare !dbg !2697 i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_boolean(ptr noundef %cv) #0 !dbg !2700 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2702, metadata !DIExpression()), !dbg !2714
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2715
  call void @llvm.dbg.value(metadata ptr %0, metadata !2703, metadata !DIExpression()), !dbg !2714
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2715
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2715
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2715
  %2 = load i32, ptr %1, align 4, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %2, metadata !2704, metadata !DIExpression()), !dbg !2714
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2715
  %inc = add nsw i32 %2, 1, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2704, metadata !DIExpression()), !dbg !2714
  %idx.ext = sext i32 %2 to i64, !dbg !2715
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2715
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2705, metadata !DIExpression()), !dbg !2714
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2715
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2715
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2715
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2715
  %conv = trunc i64 %4 to i32, !dbg !2715
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2706, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr null, metadata !2707, metadata !DIExpression()), !dbg !2714
  %cmp = icmp slt i32 %conv, 1, !dbg !2716
  br i1 %cmp, label %if.then, label %if.end, !dbg !2718

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.38), !dbg !2719
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !2720
  br label %if.end, !dbg !2719

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !2720
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sub.ptr.sub), metadata !2703, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 29, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2714
  %idxprom = sext i32 %inc to i64, !dbg !2720
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2720
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2720
  call void @llvm.dbg.value(metadata ptr %6, metadata !2708, metadata !DIExpression()), !dbg !2721
  %call = tail call i32 @Perl_sv_isobject(ptr noundef %6) #8, !dbg !2722
  %tobool.not = icmp eq i32 %call, 0, !dbg !2722
  br i1 %tobool.not, label %if.else, label %land.lhs.true, !dbg !2722

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %6, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2722
  br i1 %call4, label %if.then6, label %if.else, !dbg !2720

if.then6:                                         ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !2724
  %7 = load ptr, ptr %sv_u, align 8, !dbg !2724
  call void @llvm.dbg.value(metadata ptr %7, metadata !2707, metadata !DIExpression()), !dbg !2714
  br label %if.end7, !dbg !2724

if.else:                                          ; preds = %land.lhs.true, %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8, !dbg !2722
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then6
  %lobj.0 = phi ptr [ %7, %if.then6 ], [ null, %if.else ], !dbg !2714
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2726
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sext), metadata !2703, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2714
  %idx.ext2 = ashr i64 %sext, 32, !dbg !2726
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %idx.ext2), metadata !2703, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2714
  %idx.neg = sub nsw i64 0, %idx.ext2, !dbg !2726
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %idx.neg), metadata !2703, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2714
  %add.ptr3 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !2726
  call void @llvm.dbg.value(metadata ptr %add.ptr3, metadata !2703, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %lobj.0, metadata !2707, metadata !DIExpression()), !dbg !2714
  %call8 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.42, i64 noundef 1) #8, !dbg !2727
  %call9 = tail call ptr @Perl_sv_2mortal(ptr noundef %call8) #8, !dbg !2727
  %call10 = tail call ptr @Perl_new_version(ptr noundef %call9) #8, !dbg !2727
  %call11 = tail call ptr @Perl_sv_2mortal(ptr noundef %call10) #8, !dbg !2727
  %call12 = tail call i32 @Perl_vcmp(ptr noundef %lobj.0, ptr noundef %call11) #8, !dbg !2727
  %conv13 = sext i32 %call12 to i64, !dbg !2727
  %call14 = tail call ptr @Perl_newSViv(i64 noundef %conv13) #8, !dbg !2727
  call void @llvm.dbg.value(metadata ptr %call14, metadata !2710, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %call14, metadata !2712, metadata !DIExpression()), !dbg !2729
  %incdec.ptr17 = getelementptr inbounds ptr, ptr %add.ptr3, i64 1, !dbg !2730
  call void @llvm.dbg.value(metadata ptr %incdec.ptr17, metadata !2703, metadata !DIExpression()), !dbg !2714
  store ptr %call14, ptr %incdec.ptr17, align 8, !dbg !2730
  store ptr %incdec.ptr17, ptr @PL_stack_sp, align 8, !dbg !2730
  %call18 = tail call ptr @Perl_sv_2mortal(ptr noundef %call14) #8, !dbg !2730
  ret void, !dbg !2731
}

declare !dbg !2732 ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_noop(ptr noundef %cv) #0 !dbg !2735 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2737, metadata !DIExpression()), !dbg !2745
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2746
  call void @llvm.dbg.value(metadata ptr %0, metadata !2738, metadata !DIExpression()), !dbg !2745
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2746
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2746
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2746
  %2 = load i32, ptr %1, align 4, !dbg !2746
  call void @llvm.dbg.value(metadata i32 %2, metadata !2739, metadata !DIExpression()), !dbg !2745
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2746
  %inc = add nsw i32 %2, 1, !dbg !2746
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2739, metadata !DIExpression()), !dbg !2745
  %idx.ext = sext i32 %2 to i64, !dbg !2746
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2746
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2740, metadata !DIExpression()), !dbg !2745
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2746
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2746
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2746
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2746
  %conv = trunc i64 %4 to i32, !dbg !2746
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2741, metadata !DIExpression()), !dbg !2745
  %cmp = icmp slt i32 %conv, 1, !dbg !2747
  br i1 %cmp, label %if.then, label %if.end, !dbg !2749

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.38), !dbg !2750
  %.pre = load ptr, ptr @PL_stack_base, align 8, !dbg !2751
  br label %if.end, !dbg !2750

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %.pre, %if.then ], [ %3, %entry ], !dbg !2751
  %idxprom = sext i32 %inc to i64, !dbg !2751
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom, !dbg !2751
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !2751
  %call = tail call i32 @Perl_sv_isobject(ptr noundef %6) #8, !dbg !2751
  %tobool.not = icmp eq i32 %call, 0, !dbg !2751
  br i1 %tobool.not, label %if.else, label %land.lhs.true, !dbg !2751

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr @PL_stack_base, align 8, !dbg !2751
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 %idxprom, !dbg !2751
  %8 = load ptr, ptr %arrayidx4, align 8, !dbg !2751
  %call5 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %8, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2751
  br i1 %call5, label %do.body9, label %if.else, !dbg !2753

if.else:                                          ; preds = %land.lhs.true, %if.end
  br label %do.body9

do.body9:                                         ; preds = %land.lhs.true, %if.else
  %.str.39.sink = phi ptr [ @.str.39, %if.else ], [ @.str.43, %land.lhs.true ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull %.str.39.sink) #8, !dbg !2754
  call void @llvm.dbg.value(metadata i64 0, metadata !2742, metadata !DIExpression()), !dbg !2755
  %9 = load ptr, ptr @PL_stack_base, align 8, !dbg !2756
  %add.ptr11 = getelementptr inbounds ptr, ptr %9, i64 %idxprom, !dbg !2756
  %add.ptr12 = getelementptr inbounds ptr, ptr %add.ptr11, i64 -1, !dbg !2756
  store ptr %add.ptr12, ptr @PL_stack_sp, align 8, !dbg !2756
  ret void, !dbg !2757
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_is_alpha(ptr noundef %cv) #0 !dbg !2758 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2760, metadata !DIExpression()), !dbg !2761
  tail call fastcc void @S_version_check_key(ptr noundef %cv, ptr noundef nonnull @.str.44, i32 noundef 5), !dbg !2762
  ret void, !dbg !2763
}

; Function Attrs: nounwind uwtable
define internal fastcc void @S_version_check_key(ptr noundef %cv, ptr noundef %key, i32 noundef %keylen) unnamed_addr #0 !dbg !2764 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2768, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %key, metadata !2769, metadata !DIExpression()), !dbg !2780
  call void @llvm.dbg.value(metadata i32 %keylen, metadata !2770, metadata !DIExpression()), !dbg !2780
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2781
  call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression()), !dbg !2780
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2781
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2781
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2781
  %2 = load i32, ptr %1, align 4, !dbg !2781
  call void @llvm.dbg.value(metadata i32 %2, metadata !2772, metadata !DIExpression()), !dbg !2780
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2781
  call void @llvm.dbg.value(metadata i32 %2, metadata !2772, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2780
  %idx.ext = sext i32 %2 to i64, !dbg !2781
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2781
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2773, metadata !DIExpression()), !dbg !2780
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2781
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2781
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2781
  %4 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2781
  %conv = trunc i64 %4 to i32, !dbg !2781
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2774, metadata !DIExpression()), !dbg !2780
  %cmp.not = icmp eq i32 %conv, 1, !dbg !2782
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2784

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_xs_usage(ptr noundef %cv, ptr noundef nonnull @.str.56), !dbg !2785
  br label %if.end, !dbg !2785

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !2780
  %5 = load ptr, ptr %0, align 8, !dbg !2786
  call void @llvm.dbg.value(metadata ptr %5, metadata !2775, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %5, metadata !2778, metadata !DIExpression()), !dbg !2788
  %call = tail call i32 @Perl_sv_isobject(ptr noundef %5) #8, !dbg !2789
  %tobool.not = icmp eq i32 %call, 0, !dbg !2789
  br i1 %tobool.not, label %if.else, label %land.lhs.true, !dbg !2789

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call zeroext i1 @Perl_sv_derived_from_pvn(ptr noundef %5, ptr noundef nonnull @.str.29, i64 noundef 7, i32 noundef 0), !dbg !2789
  br i1 %call3, label %if.then5, label %if.else, !dbg !2791

if.then5:                                         ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 3, !dbg !2792
  %6 = load ptr, ptr %sv_u, align 8, !dbg !2792
  call void @llvm.dbg.value(metadata ptr %6, metadata !2775, metadata !DIExpression()), !dbg !2787
  br label %if.end6, !dbg !2792

if.else:                                          ; preds = %land.lhs.true, %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39) #8, !dbg !2789
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  %lobj.0 = phi ptr [ %6, %if.then5 ], [ %5, %if.else ], !dbg !2787
  call void @llvm.dbg.value(metadata ptr %lobj.0, metadata !2775, metadata !DIExpression()), !dbg !2787
  %call7 = tail call ptr @Perl_hv_common_key_len(ptr noundef %lobj.0, ptr noundef %key, i32 noundef %keylen, i32 noundef 8, ptr noundef null, i32 noundef 0) #8, !dbg !2794
  %tobool8.not = icmp eq ptr %call7, null, !dbg !2794
  %PL_sv_no.PL_sv_yes = select i1 %tobool8.not, ptr @PL_sv_no, ptr @PL_sv_yes
  call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression(DW_OP_constu, 8, DW_OP_minus, DW_OP_stack_value)), !dbg !2780
  call void @llvm.dbg.value(metadata ptr %PL_sv_no.PL_sv_yes, metadata !2777, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %0, metadata !2771, metadata !DIExpression()), !dbg !2780
  store ptr %PL_sv_no.PL_sv_yes, ptr %0, align 8, !dbg !2796
  store ptr %0, ptr @PL_stack_sp, align 8, !dbg !2797
  ret void, !dbg !2798
}

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_qv(ptr nocapture readnone %cv) #0 !dbg !2799 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr undef, metadata !2801, metadata !DIExpression()), !dbg !2819
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !2820
  call void @llvm.dbg.value(metadata ptr %0, metadata !2802, metadata !DIExpression()), !dbg !2819
  %1 = load ptr, ptr @PL_markstack_ptr, align 8, !dbg !2820
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i64 -1, !dbg !2820
  store ptr %incdec.ptr, ptr @PL_markstack_ptr, align 8, !dbg !2820
  %2 = load i32, ptr %1, align 4, !dbg !2820
  call void @llvm.dbg.value(metadata i32 %2, metadata !2803, metadata !DIExpression()), !dbg !2819
  %3 = load ptr, ptr @PL_stack_base, align 8, !dbg !2820
  %inc = add nsw i32 %2, 1, !dbg !2820
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2803, metadata !DIExpression()), !dbg !2819
  %idx.ext = sext i32 %2 to i64, !dbg !2820
  %add.ptr = getelementptr inbounds ptr, ptr %3, i64 %idx.ext, !dbg !2820
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !2804, metadata !DIExpression()), !dbg !2819
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !2820
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i64, !dbg !2820
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2820
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !2805, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2819
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sub.ptr.sub), metadata !2802, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 29, DW_OP_shl, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2819
  %idxprom = sext i32 %inc to i64, !dbg !2821
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom, !dbg !2821
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2821
  call void @llvm.dbg.value(metadata ptr %4, metadata !2806, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %4, metadata !2808, metadata !DIExpression()), !dbg !2822
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8, !dbg !2823
  call void @llvm.dbg.value(metadata i64 0, metadata !2810, metadata !DIExpression()), !dbg !2822
  store i64 0, ptr %len, align 8, !dbg !2824
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !2811, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 0, metadata !2812, metadata !DIExpression()), !dbg !2822
  %5 = and i64 %sub.ptr.sub, 34359738360, !dbg !2825
  %cmp = icmp eq i64 %5, 16, !dbg !2825
  br i1 %cmp, label %if.then, label %if.end253, !dbg !2826

if.then:                                          ; preds = %entry
  %add4 = add nsw i32 %2, 2, !dbg !2827
  %idxprom5 = sext i32 %add4 to i64, !dbg !2827
  %arrayidx6 = getelementptr inbounds ptr, ptr %3, i64 %idxprom5, !dbg !2827
  %6 = load ptr, ptr %arrayidx6, align 8, !dbg !2827
  call void @llvm.dbg.value(metadata ptr %6, metadata !2813, metadata !DIExpression()), !dbg !2828
  %sv_flags = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !2829
  %7 = load i32, ptr %sv_flags, align 4, !dbg !2829
  %and = and i32 %7, 2097152, !dbg !2829
  %tobool.not = icmp eq i32 %and, 0, !dbg !2829
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !2829

land.rhs:                                         ; preds = %if.then
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %6) #8, !dbg !2829
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !2830
  br label %land.end

land.end:                                         ; preds = %if.then, %land.rhs
  %8 = phi i32 [ %7, %if.then ], [ %.pre, %land.rhs ], !dbg !2830
  %and9 = and i32 %8, 65280, !dbg !2830
  %tobool10.not = icmp ne i32 %and9, 0, !dbg !2830
  %and12 = and i32 %8, 255, !dbg !2830
  %cmp13 = icmp eq i32 %and12, 8, !dbg !2830
  %or.cond = or i1 %tobool10.not, %cmp13, !dbg !2830
  %and17 = and i32 %8, 16826623, !dbg !2830
  %cmp18 = icmp eq i32 %and17, 16777226, !dbg !2830
  %or.cond367 = select i1 %or.cond, i1 true, i1 %cmp18, !dbg !2830
  br i1 %or.cond367, label %if.end, label %if.else, !dbg !2830

if.else:                                          ; preds = %land.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #8, !dbg !2832
  br label %if.end

if.end:                                           ; preds = %land.end, %if.else
  %ver.0 = phi ptr [ %4, %if.else ], [ %6, %land.end ], !dbg !2822
  call void @llvm.dbg.value(metadata ptr %ver.0, metadata !2806, metadata !DIExpression()), !dbg !2822
  %call21 = tail call i32 @Perl_sv_isobject(ptr noundef %4) #8, !dbg !2834
  %tobool22.not = icmp eq i32 %call21, 0, !dbg !2834
  br i1 %tobool22.not, label %if.else238, label %if.then23, !dbg !2835

if.then23:                                        ; preds = %if.end
  %sv_u = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3, !dbg !2836
  %9 = load ptr, ptr %sv_u, align 8, !dbg !2836
  %10 = load ptr, ptr %9, align 8, !dbg !2836
  %11 = load ptr, ptr %10, align 8, !dbg !2836
  call void @llvm.dbg.value(metadata ptr %11, metadata !2816, metadata !DIExpression()), !dbg !2837
  %sv_flags24 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 2, !dbg !2838
  %12 = load i32, ptr %sv_flags24, align 4, !dbg !2838
  %and25 = and i32 %12, 33554432, !dbg !2838
  %tobool26.not = icmp eq i32 %and25, 0, !dbg !2838
  br i1 %tobool26.not, label %cond.end140, label %land.lhs.true, !dbg !2838

land.lhs.true:                                    ; preds = %if.then23
  %sv_u27 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 3, !dbg !2838
  %13 = load ptr, ptr %sv_u27, align 8, !dbg !2838
  %14 = load ptr, ptr %11, align 8, !dbg !2838
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %14, i64 0, i32 3, !dbg !2838
  %15 = load i64, ptr %xhv_max, align 8, !dbg !2838
  %add29 = add i64 %15, 1, !dbg !2838
  %arrayidx30 = getelementptr inbounds ptr, ptr %13, i64 %add29, !dbg !2838
  %16 = load ptr, ptr %arrayidx30, align 8, !dbg !2838
  %tobool31.not = icmp eq ptr %16, null, !dbg !2838
  br i1 %tobool31.not, label %land.lhs.true146, label %land.lhs.true32, !dbg !2838

land.lhs.true32:                                  ; preds = %land.lhs.true
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx30, i64 0, i32 4, !dbg !2838
  %17 = load i32, ptr %xhv_name_count, align 4, !dbg !2838
  %tobool38.not = icmp eq i32 %17, 0, !dbg !2838
  br i1 %tobool38.not, label %cond.end, label %cond.true39, !dbg !2838

cond.true39:                                      ; preds = %land.lhs.true32
  %18 = load ptr, ptr %16, align 8, !dbg !2838
  %tobool46.not = icmp eq ptr %18, null, !dbg !2838
  br i1 %tobool46.not, label %land.lhs.true91, label %cond.end, !dbg !2838

cond.end:                                         ; preds = %land.lhs.true32, %cond.true39
  %cond = phi ptr [ %18, %cond.true39 ], [ %16, %land.lhs.true32 ], !dbg !2838
  %hek_key = getelementptr inbounds %struct.hek, ptr %cond, i64 0, i32 2, !dbg !2838
  br label %land.lhs.true91, !dbg !2838

land.lhs.true91:                                  ; preds = %cond.true39, %cond.end
  %cond79.ph.ph = phi ptr [ %hek_key, %cond.end ], [ null, %cond.true39 ]
  call void @llvm.dbg.value(metadata ptr undef, metadata !2811, metadata !DIExpression()), !dbg !2822
  %xhv_name_count97 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx30, i64 0, i32 4, !dbg !2839
  %19 = load i32, ptr %xhv_name_count97, align 4, !dbg !2839
  %tobool98.not = icmp eq i32 %19, 0, !dbg !2839
  br i1 %tobool98.not, label %cond.end137, label %cond.true99, !dbg !2839

cond.true99:                                      ; preds = %land.lhs.true91
  %20 = load ptr, ptr %16, align 8, !dbg !2839
  %tobool106.not = icmp eq ptr %20, null, !dbg !2839
  br i1 %tobool106.not, label %land.lhs.true146, label %cond.end137, !dbg !2839

cond.end137:                                      ; preds = %land.lhs.true91, %cond.true99
  %cond138 = phi ptr [ %20, %cond.true99 ], [ %16, %land.lhs.true91 ], !dbg !2839
  %hek_len = getelementptr inbounds %struct.hek, ptr %cond138, i64 0, i32 1, !dbg !2839
  %21 = load i32, ptr %hek_len, align 4, !dbg !2839
  %phi.cast = sext i32 %21 to i64, !dbg !2839
  br label %land.lhs.true146, !dbg !2839

cond.end140:                                      ; preds = %if.then23
  call void @llvm.dbg.value(metadata i64 0, metadata !2810, metadata !DIExpression()), !dbg !2822
  store i64 0, ptr %len, align 8, !dbg !2840
  br label %if.end253, !dbg !2841

land.lhs.true146:                                 ; preds = %land.lhs.true, %cond.true99, %cond.end137
  %cond79.ph389 = phi ptr [ %cond79.ph.ph, %cond.true99 ], [ %cond79.ph.ph, %cond.end137 ], [ null, %land.lhs.true ]
  %cond141.ph = phi i64 [ 0, %cond.true99 ], [ %phi.cast, %cond.end137 ], [ 0, %land.lhs.true ]
  call void @llvm.dbg.value(metadata i64 0, metadata !2810, metadata !DIExpression()), !dbg !2822
  store i64 %cond141.ph, ptr %len, align 8, !dbg !2840
  %22 = load ptr, ptr %11, align 8, !dbg !2841
  %xhv_max149 = getelementptr inbounds %struct.xpvhv, ptr %22, i64 0, i32 3, !dbg !2841
  %23 = load i64, ptr %xhv_max149, align 8, !dbg !2841
  %add150 = add i64 %23, 1, !dbg !2841
  %arrayidx151 = getelementptr inbounds ptr, ptr %13, i64 %add150, !dbg !2841
  %24 = load ptr, ptr %arrayidx151, align 8, !dbg !2841
  %tobool153.not = icmp eq ptr %24, null, !dbg !2841
  br i1 %tobool153.not, label %if.end253, label %land.lhs.true154, !dbg !2841

land.lhs.true154:                                 ; preds = %land.lhs.true146
  %xhv_name_count160 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx151, i64 0, i32 4, !dbg !2841
  %25 = load i32, ptr %xhv_name_count160, align 4, !dbg !2841
  %tobool161.not = icmp eq i32 %25, 0, !dbg !2841
  br i1 %tobool161.not, label %cond.end225, label %cond.true162, !dbg !2841

cond.true162:                                     ; preds = %land.lhs.true154
  %26 = load ptr, ptr %24, align 8, !dbg !2841
  %tobool169.not = icmp eq ptr %26, null, !dbg !2841
  br i1 %tobool169.not, label %if.end253, label %cond.end225, !dbg !2841

cond.end225:                                      ; preds = %cond.true162, %land.lhs.true154
  %cond201.pn = phi ptr [ %24, %land.lhs.true154 ], [ %26, %cond.true162 ], !dbg !2841
  %hek_key202382 = getelementptr inbounds %struct.hek, ptr %cond201.pn, i64 0, i32 2, !dbg !2841
  %hek_len227 = getelementptr inbounds %struct.hek, ptr %cond201.pn, i64 0, i32 1, !dbg !2841
  %27 = load i32, ptr %hek_len227, align 4, !dbg !2841
  %idx.ext228 = sext i32 %27 to i64, !dbg !2841
  %add.ptr229 = getelementptr inbounds i8, ptr %hek_key202382, i64 %idx.ext228, !dbg !2841
  %add.ptr230 = getelementptr inbounds i8, ptr %add.ptr229, i64 1, !dbg !2841
  %28 = load i8, ptr %add.ptr230, align 1, !dbg !2841
  %conv231 = zext i8 %28 to i32, !dbg !2841
  %and232 = shl i32 %conv231, 29, !dbg !2841
  %29 = and i32 %and232, 536870912, !dbg !2841
  br label %if.end253, !dbg !2841

if.else238:                                       ; preds = %if.end
  %sv_flags239 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2, !dbg !2842
  %30 = load i32, ptr %sv_flags239, align 4, !dbg !2842
  %and240 = and i32 %30, 2098176, !dbg !2842
  %cmp241 = icmp eq i32 %and240, 1024, !dbg !2842
  br i1 %cmp241, label %cond.true243, label %cond.false246, !dbg !2842

cond.true243:                                     ; preds = %if.else238
  %31 = load ptr, ptr %4, align 8, !dbg !2842
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %31, i64 0, i32 2, !dbg !2842
  %32 = load i64, ptr %xpv_cur, align 8, !dbg !2842
  call void @llvm.dbg.value(metadata i64 %32, metadata !2810, metadata !DIExpression()), !dbg !2822
  store i64 %32, ptr %len, align 8, !dbg !2842
  %sv_u245 = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 3, !dbg !2842
  %33 = load ptr, ptr %sv_u245, align 8, !dbg !2842
  br label %cond.end248, !dbg !2842

cond.false246:                                    ; preds = %if.else238
  call void @llvm.dbg.value(metadata ptr %len, metadata !2810, metadata !DIExpression(DW_OP_deref)), !dbg !2822
  %call247 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %4, ptr noundef nonnull %len, i32 noundef 2) #8, !dbg !2842
  %.pre386 = load i32, ptr %sv_flags239, align 4, !dbg !2844
  br label %cond.end248, !dbg !2842

cond.end248:                                      ; preds = %cond.false246, %cond.true243
  %34 = phi i32 [ %30, %cond.true243 ], [ %.pre386, %cond.false246 ], !dbg !2844
  %cond249 = phi ptr [ %33, %cond.true243 ], [ %call247, %cond.false246 ], !dbg !2842
  call void @llvm.dbg.value(metadata ptr %cond249, metadata !2811, metadata !DIExpression()), !dbg !2822
  %and251 = and i32 %34, 536870912, !dbg !2844
  call void @llvm.dbg.value(metadata i32 %and251, metadata !2812, metadata !DIExpression()), !dbg !2822
  br label %if.end253

if.end253:                                        ; preds = %cond.end140, %cond.end248, %land.lhs.true146, %cond.true162, %cond.end225, %entry
  %ver.1 = phi ptr [ %4, %entry ], [ %ver.0, %cond.end225 ], [ %ver.0, %cond.true162 ], [ %ver.0, %land.lhs.true146 ], [ %ver.0, %cond.end140 ], [ %ver.0, %cond.end248 ], !dbg !2822
  %classname.1 = phi ptr [ @.str.21, %entry ], [ %cond79.ph389, %cond.end225 ], [ %cond79.ph389, %cond.true162 ], [ %cond79.ph389, %land.lhs.true146 ], [ null, %cond.end140 ], [ %cond249, %cond.end248 ], !dbg !2822
  %flags.1 = phi i32 [ 0, %entry ], [ %29, %cond.end225 ], [ 0, %cond.true162 ], [ 0, %land.lhs.true146 ], [ 0, %cond.end140 ], [ %and251, %cond.end248 ], !dbg !2822
  call void @llvm.dbg.value(metadata i32 %flags.1, metadata !2812, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %classname.1, metadata !2811, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata ptr %ver.1, metadata !2806, metadata !DIExpression()), !dbg !2822
  %sv_flags254 = getelementptr inbounds %struct.sv, ptr %ver.1, i64 0, i32 2, !dbg !2845
  %35 = load i32, ptr %sv_flags254, align 4, !dbg !2845
  %and255 = and i32 %35, 14680064, !dbg !2845
  %tobool256.not = icmp eq i32 %and255, 0, !dbg !2845
  br i1 %tobool256.not, label %if.then260, label %land.lhs.true257, !dbg !2845

land.lhs.true257:                                 ; preds = %if.end253
  %call258 = call ptr @Perl_mg_find(ptr noundef nonnull %ver.1, i32 noundef 86) #8, !dbg !2845
  %tobool259.not = icmp eq ptr %call258, null, !dbg !2845
  br i1 %tobool259.not, label %if.then260, label %if.else269, !dbg !2847

if.then260:                                       ; preds = %land.lhs.true257, %if.end253
  %call261 = call ptr @Perl_sv_newmortal() #8, !dbg !2848
  call void @llvm.dbg.value(metadata ptr %call261, metadata !2809, metadata !DIExpression()), !dbg !2822
  %cmp262.not = icmp eq ptr %call261, %ver.1, !dbg !2850
  br i1 %cmp262.not, label %do.end, label %if.then266, !dbg !2853

if.then266:                                       ; preds = %if.then260
  call void @Perl_sv_setsv_flags(ptr noundef %call261, ptr noundef nonnull %ver.1, i32 noundef 1554) #8, !dbg !2854
  br label %do.end, !dbg !2854

do.end:                                           ; preds = %if.then260, %if.then266
  %call268 = call ptr @Perl_upg_version(ptr noundef %call261, i1 noundef zeroext true) #8, !dbg !2856
  br label %if.end272, !dbg !2857

if.else269:                                       ; preds = %land.lhs.true257
  %call270 = call ptr @Perl_new_version(ptr noundef nonnull %ver.1) #8, !dbg !2858
  %call271 = call ptr @Perl_sv_2mortal(ptr noundef %call270) #8, !dbg !2858
  call void @llvm.dbg.value(metadata ptr %call271, metadata !2809, metadata !DIExpression()), !dbg !2822
  br label %if.end272

if.end272:                                        ; preds = %if.else269, %do.end
  %rv.0 = phi ptr [ %call271, %if.else269 ], [ %call261, %do.end ], !dbg !2860
  call void @llvm.dbg.value(metadata ptr %rv.0, metadata !2809, metadata !DIExpression()), !dbg !2822
  br i1 %cmp, label %land.lhs.true275, label %if.end285, !dbg !2861

land.lhs.true275:                                 ; preds = %if.end272
  %36 = load i64, ptr %len, align 8, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %36, metadata !2810, metadata !DIExpression()), !dbg !2822
  %cmp276.not = icmp eq i64 %36, 7, !dbg !2864
  br i1 %cmp276.not, label %lor.lhs.false278, label %if.then281, !dbg !2865

lor.lhs.false278:                                 ; preds = %land.lhs.true275
  %call279 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %classname.1, ptr noundef nonnull dereferenceable(8) @.str.29) #9, !dbg !2866
  %tobool280.not = icmp eq i32 %call279, 0, !dbg !2866
  br i1 %tobool280.not, label %if.end285, label %if.then281, !dbg !2867

if.then281:                                       ; preds = %lor.lhs.false278, %land.lhs.true275
  call void @llvm.dbg.value(metadata i64 %36, metadata !2810, metadata !DIExpression()), !dbg !2822
  %conv282 = trunc i64 %36 to i32, !dbg !2868
  %or = or i32 %flags.1, 1, !dbg !2868
  %call283 = call ptr @Perl_gv_stashpvn(ptr noundef %classname.1, i32 noundef %conv282, i32 noundef %or) #8, !dbg !2868
  %call284 = call ptr @Perl_sv_bless(ptr noundef %rv.0, ptr noundef %call283) #8, !dbg !2868
  br label %if.end285, !dbg !2870

if.end285:                                        ; preds = %if.then281, %lor.lhs.false278, %if.end272
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2871
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %sext), metadata !2802, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_constu, 32, DW_OP_shra, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2819
  %idx.ext1 = ashr i64 %sext, 32, !dbg !2871
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 0, i64 %idx.ext1), metadata !2802, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2819
  %idx.neg = sub nsw i64 0, %idx.ext1, !dbg !2871
  call void @llvm.dbg.value(metadata !DIArgList(ptr %0, i64 %idx.neg), metadata !2802, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !2819
  %add.ptr2 = getelementptr inbounds ptr, ptr %0, i64 %idx.neg, !dbg !2871
  call void @llvm.dbg.value(metadata ptr %add.ptr2, metadata !2802, metadata !DIExpression()), !dbg !2819
  %incdec.ptr286 = getelementptr inbounds ptr, ptr %add.ptr2, i64 1, !dbg !2872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr286, metadata !2802, metadata !DIExpression()), !dbg !2819
  store ptr %rv.0, ptr %incdec.ptr286, align 8, !dbg !2872
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !2873
  store ptr %incdec.ptr286, ptr @PL_stack_sp, align 8, !dbg !2874
  ret void, !dbg !2875
}

declare !dbg !2876 ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2879 void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @XS_version_is_qv(ptr noundef %cv) #0 !dbg !2882 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2884, metadata !DIExpression()), !dbg !2885
  tail call fastcc void @S_version_check_key(ptr noundef %cv, ptr noundef nonnull @.str.33, i32 noundef 2), !dbg !2886
  ret void, !dbg !2887
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_boot_core_UNIVERSAL() local_unnamed_addr #0 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata ptr @details, metadata !856, metadata !DIExpression()), !dbg !2888
  br label %do.body, !dbg !2889

do.body:                                          ; preds = %do.body, %entry
  %xsub.0 = phi ptr [ @details, %entry ], [ %incdec.ptr, %do.body ], !dbg !2888
  call void @llvm.dbg.value(metadata ptr %xsub.0, metadata !856, metadata !DIExpression()), !dbg !2888
  %0 = load ptr, ptr %xsub.0, align 8, !dbg !2890
  %xsub1 = getelementptr inbounds %struct.xsub_details, ptr %xsub.0, i64 0, i32 1, !dbg !2890
  %1 = load ptr, ptr %xsub1, align 8, !dbg !2890
  %proto = getelementptr inbounds %struct.xsub_details, ptr %xsub.0, i64 0, i32 2, !dbg !2890
  %2 = load ptr, ptr %proto, align 8, !dbg !2890
  %call = tail call ptr @Perl_newXS_flags(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @Perl_boot_core_UNIVERSAL.file, ptr noundef %2, i32 noundef 0) #8, !dbg !2890
  %incdec.ptr = getelementptr inbounds %struct.xsub_details, ptr %xsub.0, i64 1, !dbg !2892
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !856, metadata !DIExpression()), !dbg !2888
  %cmp = icmp ult ptr %incdec.ptr, getelementptr inbounds ([51 x %struct.xsub_details], ptr @details, i64 1, i64 0), !dbg !2893
  br i1 %cmp, label %do.body, label %do.end, !dbg !2894, !llvm.loop !2895

do.end:                                           ; preds = %do.body
  %call2 = tail call ptr @Perl_get_cv(ptr noundef nonnull @.str.46, i32 noundef 0) #8, !dbg !2897
  call void @llvm.dbg.value(metadata ptr %call2, metadata !859, metadata !DIExpression()), !dbg !2898
  %call3 = tail call ptr @Perl_get_cv(ptr noundef nonnull @.str.47, i32 noundef 0) #8, !dbg !2899
  call void @llvm.dbg.value(metadata ptr %call3, metadata !861, metadata !DIExpression()), !dbg !2898
  tail call void @Perl_cv_set_call_checker(ptr noundef %call2, ptr noundef nonnull @optimize_out_native_convert_function, ptr noundef %call2) #8, !dbg !2900
  tail call void @Perl_cv_set_call_checker(ptr noundef %call3, ptr noundef nonnull @optimize_out_native_convert_function, ptr noundef %call3) #8, !dbg !2901
  %call4 = tail call ptr @Perl_get_hv(ptr noundef nonnull @.str.48, i32 noundef 1) #8, !dbg !2902
  %call5 = tail call ptr @Perl_newCONSTSUB(ptr noundef %call4, ptr noundef nonnull @.str.49, ptr noundef null) #8, !dbg !2902
  call void @llvm.dbg.value(metadata ptr %call5, metadata !862, metadata !DIExpression()), !dbg !2903
  %3 = load ptr, ptr %call5, align 8, !dbg !2904
  %xcv_file = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 8, !dbg !2904
  call void @llvm.dbg.value(metadata ptr %xcv_file, metadata !865, metadata !DIExpression()), !dbg !2903
  %4 = load ptr, ptr %xcv_file, align 8, !dbg !2905
  call void @llvm.dbg.value(metadata ptr %4, metadata !866, metadata !DIExpression()), !dbg !2903
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 12, !dbg !2906
  %5 = load i32, ptr %xcv_flags, align 4, !dbg !2906
  %and = and i32 %5, -4097, !dbg !2906
  store i32 %and, ptr %xcv_flags, align 4, !dbg !2906
  store ptr @Perl_boot_core_UNIVERSAL.file, ptr %xcv_file, align 8, !dbg !2907
  tail call void @Perl_safesysfree(ptr noundef %4) #8, !dbg !2908
  ret void, !dbg !2909
}

declare !dbg !2910 ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2913 ptr @Perl_get_cv(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2916 void @Perl_cv_set_call_checker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @optimize_out_native_convert_function(ptr noundef %entersubop, ptr noundef %namegv, ptr nocapture noundef readnone %protosv) #0 !dbg !2923 {
entry:
  call void @llvm.dbg.value(metadata ptr %entersubop, metadata !2925, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %namegv, metadata !2926, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %protosv, metadata !2927, metadata !DIExpression()), !dbg !2932
  %call = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.106, i64 noundef 1) #8, !dbg !2933
  call void @llvm.dbg.value(metadata ptr %call, metadata !2931, metadata !DIExpression()), !dbg !2932
  %call1 = tail call ptr @Perl_ck_entersub_args_proto(ptr noundef %entersubop, ptr noundef %namegv, ptr noundef %call) #8, !dbg !2934
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2925, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %call, metadata !1990, metadata !DIExpression()) #8, !dbg !2935
  %cmp.not.i = icmp eq ptr %call, null, !dbg !2937
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i, !dbg !2938

if.then.i:                                        ; preds = %entry
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 1, !dbg !2939
  %0 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2939
  call void @llvm.dbg.value(metadata i32 %0, metadata !1995, metadata !DIExpression()) #8, !dbg !2940
  %cmp1.i = icmp ugt i32 %0, 1, !dbg !2941
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !2942

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %0, -1, !dbg !2943
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !2944
  br label %S_SvREFCNT_dec.exit, !dbg !2945

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %call, i32 noundef %0) #8, !dbg !2946
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %entry, %if.then4.i, %if.else.i
  %op_first = getelementptr inbounds %struct.unop, ptr %call1, i64 0, i32 7, !dbg !2947
  %1 = load ptr, ptr %op_first, align 8, !dbg !2947
  call void @llvm.dbg.value(metadata ptr %1, metadata !2928, metadata !DIExpression()), !dbg !2932
  %op_sibling = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 1, !dbg !2948
  %2 = load ptr, ptr %op_sibling, align 8, !dbg !2948
  %tobool.not = icmp eq ptr %2, null, !dbg !2948
  br i1 %tobool.not, label %if.end, label %lor.lhs.false, !dbg !2950

if.end:                                           ; preds = %S_SvREFCNT_dec.exit
  call void @llvm.dbg.value(metadata ptr %1, metadata !2930, metadata !DIExpression()), !dbg !2932
  %op_first2 = getelementptr inbounds %struct.unop, ptr %1, i64 0, i32 7, !dbg !2951
  %3 = load ptr, ptr %op_first2, align 8, !dbg !2951
  call void @llvm.dbg.value(metadata ptr %3, metadata !2928, metadata !DIExpression()), !dbg !2932
  %op_sibling3.phi.trans.insert = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 1
  %.pre = load ptr, ptr %op_sibling3.phi.trans.insert, align 8, !dbg !2953
  call void @llvm.dbg.value(metadata ptr %.pre, metadata !2929, metadata !DIExpression()), !dbg !2932
  %tobool4.not = icmp eq ptr %.pre, null, !dbg !2954
  br i1 %tobool4.not, label %cleanup, label %lor.lhs.false, !dbg !2956

lor.lhs.false:                                    ; preds = %S_SvREFCNT_dec.exit, %if.end
  %parent.039 = phi ptr [ %1, %if.end ], [ %call1, %S_SvREFCNT_dec.exit ]
  %pushop.038 = phi ptr [ %3, %if.end ], [ %1, %S_SvREFCNT_dec.exit ]
  %4 = phi ptr [ %.pre, %if.end ], [ %2, %S_SvREFCNT_dec.exit ]
  %op_sibling5 = getelementptr inbounds %struct.op, ptr %4, i64 0, i32 1, !dbg !2957
  %5 = load ptr, ptr %op_sibling5, align 8, !dbg !2957
  %tobool6.not = icmp eq ptr %5, null, !dbg !2957
  br i1 %tobool6.not, label %cleanup, label %lor.lhs.false9, !dbg !2958

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %op_sibling12 = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 1, !dbg !2959
  %6 = load ptr, ptr %op_sibling12, align 8, !dbg !2959
  %tobool13.not = icmp eq ptr %6, null, !dbg !2959
  br i1 %tobool13.not, label %if.end17, label %cleanup, !dbg !2960

if.end17:                                         ; preds = %lor.lhs.false9
  %call18 = tail call ptr @Perl_op_sibling_splice(ptr noundef nonnull %parent.039, ptr noundef nonnull %pushop.038, i32 noundef 1, ptr noundef null) #8, !dbg !2961
  tail call void @Perl_op_free(ptr noundef nonnull %call1) #8, !dbg !2962
  br label %cleanup, !dbg !2963

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %lor.lhs.false9, %if.end17
  %retval.0 = phi ptr [ %4, %if.end17 ], [ %call1, %lor.lhs.false9 ], [ %call1, %lor.lhs.false ], [ %call1, %if.end ], !dbg !2932
  ret ptr %retval.0, !dbg !2964
}

declare !dbg !2965 ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2968 ptr @Perl_get_hv(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2971 void @Perl_safesysfree(ptr noundef) local_unnamed_addr #3

declare !dbg !2972 ptr @Perl_mro_meta_init(ptr noundef) local_unnamed_addr #3

declare !dbg !2975 ptr @Perl_mro_get_linear_isa(ptr noundef) local_unnamed_addr #3

declare !dbg !2978 ptr @Perl_cvgv_from_hek(ptr noundef) local_unnamed_addr #3

declare !dbg !2979 i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #3

declare !dbg !2982 void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2985 ptr @Perl_ck_entersub_args_proto(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2986 ptr @Perl_op_sibling_splice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !2989 void @Perl_op_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!870, !871, !872, !873, !874, !875}
!llvm.ident = !{!876}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "file", scope: !2, file: !3, line: 1091, type: !867, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "Perl_boot_core_UNIVERSAL", scope: !3, file: !3, line: 1089, type: !4, scopeLine: 1090, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !855)
!3 = !DIFile(filename: "apps/500.perlbench_r/src/universal.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5e625af49a959ecdccd2bdaef7460740")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !38, globals: !842, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/universal.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "5e625af49a959ecdccd2bdaef7460740")
!8 = !{!9, !30}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 132, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "apps/500.perlbench_r/src/sv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e8ddee5f0a5032210b880c8e95bcea58")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!13 = !DIEnumerator(name: "SVt_NULL", value: 0)
!14 = !DIEnumerator(name: "SVt_IV", value: 1)
!15 = !DIEnumerator(name: "SVt_NV", value: 2)
!16 = !DIEnumerator(name: "SVt_PV", value: 3)
!17 = !DIEnumerator(name: "SVt_INVLIST", value: 4)
!18 = !DIEnumerator(name: "SVt_PVIV", value: 5)
!19 = !DIEnumerator(name: "SVt_PVNV", value: 6)
!20 = !DIEnumerator(name: "SVt_PVMG", value: 7)
!21 = !DIEnumerator(name: "SVt_REGEXP", value: 8)
!22 = !DIEnumerator(name: "SVt_PVGV", value: 9)
!23 = !DIEnumerator(name: "SVt_PVLV", value: 10)
!24 = !DIEnumerator(name: "SVt_PVAV", value: 11)
!25 = !DIEnumerator(name: "SVt_PVHV", value: 12)
!26 = !DIEnumerator(name: "SVt_PVCV", value: 13)
!27 = !DIEnumerator(name: "SVt_PVFM", value: 14)
!28 = !DIEnumerator(name: "SVt_PVIO", value: 15)
!29 = !DIEnumerator(name: "SVt_LAST", value: 16)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !31, line: 46, baseType: !11, size: 32, elements: !32)
!31 = !DIFile(filename: "apps/500.perlbench_r/src/op_reg_common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ff1cb0c887e938b9fd44da3e7e9f522e")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "REGEX_DEPENDS_CHARSET", value: 0)
!34 = !DIEnumerator(name: "REGEX_LOCALE_CHARSET", value: 1)
!35 = !DIEnumerator(name: "REGEX_UNICODE_CHARSET", value: 2)
!36 = !DIEnumerator(name: "REGEX_ASCII_RESTRICTED_CHARSET", value: 3)
!37 = !DIEnumerator(name: "REGEX_ASCII_MORE_RESTRICTED_CHARSET", value: 4)
!38 = !{!39, !496, !718, !732, !733, !159, !269, !734, !747, !443, !81, !376, !761, !50, !438, !96, !76, !600, !216, !803, !93, !805, !261, !45, !371, !181, !818, !256, !90, !686, !820, !144, !83, !821, !822, !823}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !41, line: 2659, baseType: !42)
!41 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !10, line: 499, size: 256, elements: !43)
!43 = !{!44, !711, !712, !713}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !42, file: !10, line: 500, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !41, line: 2649, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !10, line: 246, size: 192, elements: !48)
!48 = !{!49, !696, !697, !698}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !47, file: !10, line: 247, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !41, line: 2667, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !53, line: 130, size: 256, elements: !54)
!53 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!54 = !{!55, !56, !694, !695}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !52, file: !53, line: 131, baseType: !45, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !52, file: !53, line: 132, baseType: !57, size: 64, offset: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !10, line: 494, size: 64, elements: !58)
!58 = !{!59, !693}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !57, file: !10, line: 495, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !41, line: 2658, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !63, line: 23, size: 384, elements: !64)
!63 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!64 = !{!65, !66, !685, !688, !689, !690, !691, !692}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !62, file: !63, line: 24, baseType: !60, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !62, file: !63, line: 25, baseType: !67, size: 64, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !41, line: 2673, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !63, line: 11, size: 512, elements: !70)
!70 = !{!71, !669, !670, !674, !675, !676, !680, !684}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !69, file: !63, line: 12, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !76, !60}
!75 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !41, line: 2647, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !10, line: 218, size: 192, elements: !79)
!79 = !{!80, !82, !85, !86}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !78, file: !10, line: 219, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !78, file: !10, line: 219, baseType: !83, size: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !84, line: 175, baseType: !11)
!84 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !78, file: !10, line: 219, baseType: !83, size: 32, offset: 96)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !78, file: !10, line: 220, baseType: !87, size: 64, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !78, file: !10, line: 220, size: 64, elements: !88)
!88 = !{!89, !92, !95, !98, !101, !102, !665, !666, !667, !668}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !87, file: !10, line: 220, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !87, file: !10, line: 220, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !41, line: 1670, baseType: !94)
!94 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !87, file: !10, line: 220, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !41, line: 1671, baseType: !97)
!97 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !87, file: !10, line: 220, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !41, line: 1877, baseType: !100)
!100 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !87, file: !10, line: 220, baseType: !76, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !87, file: !10, line: 220, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !105, line: 140, size: 1536, elements: !106)
!105 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!106 = !{!107, !108, !109, !113, !118, !621, !622, !623, !624, !625, !626, !627, !643, !644, !645, !646, !647, !648, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !104, file: !105, line: 141, baseType: !45, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !104, file: !105, line: 141, baseType: !57, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !104, file: !105, line: 141, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !41, line: 2615, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !97)
!112 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!113 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !104, file: !105, line: 141, baseType: !114, size: 64, offset: 192)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !104, file: !105, line: 141, size: 64, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !114, file: !105, line: 141, baseType: !110, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !114, file: !105, line: 141, baseType: !90, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !104, file: !105, line: 142, baseType: !119, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !105, line: 157, size: 768, elements: !122)
!122 = !{!123, !563, !568, !582, !586, !590, !595, !602, !606, !610, !614, !615}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !121, file: !105, line: 158, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !562, !83}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !41, line: 2651, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !10, line: 256, size: 192, elements: !130)
!130 = !{!131, !132, !133, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !129, file: !10, line: 257, baseType: !103, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !129, file: !10, line: 257, baseType: !83, size: 32, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !129, file: !10, line: 257, baseType: !83, size: 32, offset: 96)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !129, file: !10, line: 258, baseType: !135, size: 64, offset: 128)
!135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !10, line: 258, size: 64, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !143, !145, !169, !561}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !135, file: !10, line: 258, baseType: !90, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !135, file: !10, line: 258, baseType: !93, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !135, file: !10, line: 258, baseType: !96, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !135, file: !10, line: 258, baseType: !99, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !135, file: !10, line: 258, baseType: !76, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !135, file: !10, line: 258, baseType: !103, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !135, file: !10, line: 258, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !135, file: !10, line: 258, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !10, line: 186, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !53, line: 32, size: 192, elements: !150)
!150 = !{!151, !152, !164}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !149, file: !53, line: 36, baseType: !147, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !149, file: !53, line: 37, baseType: !153, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !10, line: 187, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !53, line: 45, size: 96, elements: !156)
!156 = !{!157, !158, !160}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !155, file: !53, line: 46, baseType: !83, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !155, file: !53, line: 47, baseType: !159, size: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !84, line: 174, baseType: !75)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !155, file: !53, line: 48, baseType: !161, size: 8, offset: 64)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 8, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 1)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !149, file: !53, line: 41, baseType: !165, size: 64, offset: 128)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !149, file: !53, line: 38, size: 64, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !165, file: !53, line: 39, baseType: !76, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !165, file: !53, line: 40, baseType: !111, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !135, file: !10, line: 258, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !41, line: 2652, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !173, line: 11, size: 640, elements: !174)
!173 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!174 = !{!175, !176, !437, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !172, file: !173, line: 12, baseType: !76, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !172, file: !173, line: 13, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !10, line: 251, size: 192, elements: !179)
!179 = !{!180, !422, !423, !424}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !178, file: !10, line: 252, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !41, line: 2672, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !10, line: 603, size: 1088, elements: !184)
!184 = !{!185, !186, !187, !188, !193, !199, !357, !366, !367, !368, !369, !370, !414, !415, !416, !417, !418, !419}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !183, file: !10, line: 604, baseType: !45, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !183, file: !10, line: 604, baseType: !57, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !183, file: !10, line: 604, baseType: !110, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !183, file: !10, line: 604, baseType: !189, size: 64, offset: 192)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !10, line: 604, size: 64, elements: !190)
!190 = !{!191, !192}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !189, file: !10, line: 604, baseType: !110, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !189, file: !10, line: 604, baseType: !90, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !183, file: !10, line: 605, baseType: !194, size: 64, offset: 256)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !10, line: 488, size: 64, elements: !195)
!195 = !{!196, !197, !198}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !194, file: !10, line: 489, baseType: !93, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !194, file: !10, line: 490, baseType: !96, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !194, file: !10, line: 491, baseType: !153, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !183, file: !10, line: 607, baseType: !200, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !202, line: 85, baseType: !203)
!202 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !202, line: 83, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !206, line: 66, size: 256, elements: !207)
!206 = !DIFile(filename: "apps/500.perlbench_r/src/perliol.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2d9de85bae3f71c4cc9ed495c75b11f0")
!207 = !{!208, !209, !354, !355, !356}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !206, line: 67, baseType: !203, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tab", scope: !205, file: !206, line: 68, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO_funcs", file: !202, line: 84, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO_funcs", file: !206, line: 16, size: 1792, elements: !213)
!213 = !{!214, !215, !218, !219, !220, !224, !228, !246, !247, !299, !300, !304, !308, !314, !315, !321, !325, !326, !327, !328, !329, !330, !334, !335, !341, !345, !346, !350}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "fsize", scope: !212, file: !206, line: 17, baseType: !111, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !206, line: 18, baseType: !216, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !212, file: !206, line: 19, baseType: !111, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !212, file: !206, line: 20, baseType: !83, size: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "Pushed", scope: !212, file: !206, line: 21, baseType: !221, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!93, !200, !216, !76, !210}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "Popped", scope: !212, file: !206, line: 22, baseType: !225, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!93, !200}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "Open", scope: !212, file: !206, line: 23, baseType: !229, size: 64, offset: 384)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!200, !210, !232, !93, !216, !75, !75, !75, !200, !75, !144}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO_list_t", file: !202, line: 361, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PerlIO_list_s", file: !206, line: 9, size: 256, elements: !235)
!235 = !{!236, !237, !238, !239}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !234, file: !206, line: 10, baseType: !93, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !234, file: !206, line: 11, baseType: !93, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !234, file: !206, line: 12, baseType: !93, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !234, file: !206, line: 13, baseType: !240, size: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO_pair_t", file: !206, line: 7, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 4, size: 128, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !242, file: !206, line: 5, baseType: !210, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !242, file: !206, line: 6, baseType: !76, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "Binmode", scope: !212, file: !206, line: 28, baseType: !225, size: 64, offset: 448)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "Getarg", scope: !212, file: !206, line: 29, baseType: !248, size: 64, offset: 512)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!76, !200, !251, !75}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !41, line: 2677, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !10, line: 2150, size: 320, elements: !254)
!254 = !{!255, !290, !291, !297, !298}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !253, file: !10, line: 2151, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !41, line: 2648, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !10, line: 241, size: 192, elements: !259)
!259 = !{!260, !275, !276, !277}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !258, file: !10, line: 242, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !41, line: 2666, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !264, line: 11, size: 320, elements: !265)
!264 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!265 = !{!266, !267, !268, !273, !274}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !263, file: !264, line: 12, baseType: !45, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !263, file: !264, line: 13, baseType: !57, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !263, file: !264, line: 14, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !270, line: 108, baseType: !271)
!270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !272, line: 193, baseType: !94)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !263, file: !264, line: 15, baseType: !269, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !263, file: !264, line: 16, baseType: !144, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !258, file: !10, line: 242, baseType: !83, size: 32, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !258, file: !10, line: 242, baseType: !83, size: 32, offset: 96)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !258, file: !10, line: 243, baseType: !278, size: 64, offset: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !258, file: !10, line: 243, size: 64, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !278, file: !10, line: 243, baseType: !90, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !278, file: !10, line: 243, baseType: !93, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !278, file: !10, line: 243, baseType: !96, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !278, file: !10, line: 243, baseType: !99, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !278, file: !10, line: 243, baseType: !76, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !278, file: !10, line: 243, baseType: !103, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !278, file: !10, line: 243, baseType: !144, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !278, file: !10, line: 243, baseType: !146, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !278, file: !10, line: 243, baseType: !170, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !278, file: !10, line: 243, baseType: !200, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !253, file: !10, line: 2152, baseType: !96, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !253, file: !10, line: 2153, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !41, line: 2639, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !41, line: 5434, size: 8, elements: !295)
!295 = !{!296}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !294, file: !41, line: 5435, baseType: !91, size: 8)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !253, file: !10, line: 2154, baseType: !292, size: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !253, file: !10, line: 2155, baseType: !256, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "Fileno", scope: !212, file: !206, line: 30, baseType: !225, size: 64, offset: 576)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "Dup", scope: !212, file: !206, line: 31, baseType: !301, size: 64, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!200, !200, !200, !251, !75}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "Read", scope: !212, file: !206, line: 33, baseType: !305, size: 64, offset: 704)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!269, !200, !81, !111}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "Unread", scope: !212, file: !206, line: 34, baseType: !309, size: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!269, !200, !312, !111}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "Write", scope: !212, file: !206, line: 35, baseType: !309, size: 64, offset: 832)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "Seek", scope: !212, file: !206, line: 36, baseType: !316, size: 64, offset: 896)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!93, !200, !319, !75}
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !270, line: 85, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !272, line: 152, baseType: !94)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "Tell", scope: !212, file: !206, line: 37, baseType: !322, size: 64, offset: 960)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!319, !200}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "Close", scope: !212, file: !206, line: 38, baseType: !225, size: 64, offset: 1024)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "Flush", scope: !212, file: !206, line: 40, baseType: !225, size: 64, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "Fill", scope: !212, file: !206, line: 41, baseType: !225, size: 64, offset: 1152)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "Eof", scope: !212, file: !206, line: 42, baseType: !225, size: 64, offset: 1216)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "Error", scope: !212, file: !206, line: 43, baseType: !225, size: 64, offset: 1280)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "Clearerr", scope: !212, file: !206, line: 44, baseType: !331, size: 64, offset: 1344)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !200}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "Setlinebuf", scope: !212, file: !206, line: 45, baseType: !331, size: 64, offset: 1408)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "Get_base", scope: !212, file: !206, line: 47, baseType: !336, size: 64, offset: 1472)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !200}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "Get_bufsiz", scope: !212, file: !206, line: 48, baseType: !342, size: 64, offset: 1536)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!111, !200}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "Get_ptr", scope: !212, file: !206, line: 49, baseType: !336, size: 64, offset: 1600)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "Get_cnt", scope: !212, file: !206, line: 50, baseType: !347, size: 64, offset: 1664)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!269, !200}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "Set_ptrcnt", scope: !212, file: !206, line: 51, baseType: !351, size: 64, offset: 1728)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !200, !339, !269}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !205, file: !206, line: 69, baseType: !83, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !205, file: !206, line: 70, baseType: !75, size: 32, offset: 160)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !205, file: !206, line: 78, baseType: !203, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !183, file: !10, line: 620, baseType: !358, size: 64, offset: 384)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !10, line: 617, size: 64, elements: !359)
!359 = !{!360, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !358, file: !10, line: 618, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !363, line: 127, baseType: !364)
!363 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !363, line: 127, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !358, file: !10, line: 619, baseType: !81, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !183, file: !10, line: 622, baseType: !93, size: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !183, file: !10, line: 623, baseType: !93, size: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !183, file: !10, line: 624, baseType: !93, size: 64, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !183, file: !10, line: 625, baseType: !90, size: 64, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !183, file: !10, line: 626, baseType: !371, size: 64, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !41, line: 2653, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !10, line: 231, size: 192, elements: !374)
!374 = !{!375, !399, !400, !401}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !373, file: !10, line: 232, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !41, line: 2668, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !10, line: 561, size: 384, elements: !379)
!379 = !{!380, !381, !382, !383, !388, !389}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !378, file: !10, line: 562, baseType: !45, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !378, file: !10, line: 562, baseType: !57, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !378, file: !10, line: 562, baseType: !110, size: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !378, file: !10, line: 562, baseType: !384, size: 64, offset: 192)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !378, file: !10, line: 562, size: 64, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !384, file: !10, line: 562, baseType: !110, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !384, file: !10, line: 562, baseType: !90, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !378, file: !10, line: 563, baseType: !194, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !378, file: !10, line: 564, baseType: !390, size: 64, offset: 320)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !10, line: 479, size: 64, elements: !391)
!391 = !{!392, !393, !394}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !390, file: !10, line: 480, baseType: !99, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !390, file: !10, line: 481, baseType: !45, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !390, file: !10, line: 485, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !10, line: 482, size: 64, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !395, file: !10, line: 483, baseType: !83, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !395, file: !10, line: 484, baseType: !83, size: 32, offset: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !373, file: !10, line: 232, baseType: !83, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !373, file: !10, line: 232, baseType: !83, size: 32, offset: 96)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !373, file: !10, line: 233, baseType: !402, size: 64, offset: 128)
!402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !10, line: 233, size: 64, elements: !403)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412, !413}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !402, file: !10, line: 233, baseType: !90, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !402, file: !10, line: 233, baseType: !93, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !402, file: !10, line: 233, baseType: !96, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !402, file: !10, line: 233, baseType: !99, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !402, file: !10, line: 233, baseType: !76, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !402, file: !10, line: 233, baseType: !103, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !402, file: !10, line: 233, baseType: !144, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !402, file: !10, line: 233, baseType: !146, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !402, file: !10, line: 233, baseType: !170, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !402, file: !10, line: 233, baseType: !200, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !183, file: !10, line: 627, baseType: !90, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !183, file: !10, line: 628, baseType: !371, size: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !183, file: !10, line: 629, baseType: !90, size: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !183, file: !10, line: 630, baseType: !371, size: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !183, file: !10, line: 631, baseType: !91, size: 8, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !183, file: !10, line: 632, baseType: !420, size: 8, offset: 1032)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !84, line: 171, baseType: !421)
!421 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !178, file: !10, line: 252, baseType: !83, size: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !178, file: !10, line: 252, baseType: !83, size: 32, offset: 96)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !178, file: !10, line: 253, baseType: !425, size: 64, offset: 128)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !178, file: !10, line: 253, size: 64, elements: !426)
!426 = !{!427, !428, !429, !430, !431, !432, !433, !434, !435, !436}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !425, file: !10, line: 253, baseType: !90, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !425, file: !10, line: 253, baseType: !93, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !425, file: !10, line: 253, baseType: !96, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !425, file: !10, line: 253, baseType: !99, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !425, file: !10, line: 253, baseType: !76, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !425, file: !10, line: 253, baseType: !103, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !425, file: !10, line: 253, baseType: !144, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !425, file: !10, line: 253, baseType: !146, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !425, file: !10, line: 253, baseType: !170, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !425, file: !10, line: 253, baseType: !200, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !172, file: !173, line: 14, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !41, line: 2650, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !10, line: 236, size: 192, elements: !441)
!441 = !{!442, !537, !538, !539}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !440, file: !10, line: 237, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !41, line: 2669, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !446, line: 13, size: 832, elements: !447)
!446 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!447 = !{!448, !449, !450, !451, !456, !457, !502, !510, !515, !516, !532, !533, !534, !536}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !445, file: !446, line: 14, baseType: !45, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !445, file: !446, line: 14, baseType: !57, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !445, file: !446, line: 14, baseType: !110, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !445, file: !446, line: 14, baseType: !452, size: 64, offset: 192)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !446, line: 14, size: 64, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !452, file: !446, line: 14, baseType: !110, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !452, file: !446, line: 14, baseType: !90, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !445, file: !446, line: 15, baseType: !45, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !445, file: !446, line: 15, baseType: !458, size: 64, offset: 320)
!458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !446, line: 15, size: 64, elements: !459)
!459 = !{!460, !485}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !458, file: !446, line: 15, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !41, line: 2617, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !464, line: 202, size: 320, elements: !465)
!464 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!465 = !{!466, !467, !468, !472, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !463, file: !464, line: 203, baseType: !461, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !463, file: !464, line: 203, baseType: !461, size: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !463, file: !464, line: 203, baseType: !469, size: 64, offset: 128)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!461}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !463, file: !464, line: 203, baseType: !473, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !474, line: 25, baseType: !97)
!474 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!475 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !463, file: !464, line: 203, baseType: !11, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !463, file: !464, line: 203, baseType: !11, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !463, file: !464, line: 203, baseType: !11, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !463, file: !464, line: 203, baseType: !11, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !463, file: !464, line: 203, baseType: !11, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !463, file: !464, line: 203, baseType: !11, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !463, file: !464, line: 203, baseType: !11, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !463, file: !464, line: 203, baseType: !11, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !463, file: !464, line: 203, baseType: !420, size: 8, offset: 272)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !463, file: !464, line: 203, baseType: !420, size: 8, offset: 280)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !458, file: !446, line: 15, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !41, line: 2674, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !41, line: 3691, size: 64, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !494, !495, !497, !501}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !487, file: !41, line: 3692, baseType: !81, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !487, file: !41, line: 3693, baseType: !159, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !487, file: !41, line: 3694, baseType: !83, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !487, file: !41, line: 3695, baseType: !93, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !487, file: !41, line: 3696, baseType: !96, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !487, file: !41, line: 3697, baseType: !94, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !487, file: !41, line: 3698, baseType: !496, size: 8)
!496 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !487, file: !41, line: 3699, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !81}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !487, file: !41, line: 3700, baseType: !498, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !445, file: !446, line: 15, baseType: !503, size: 64, offset: 384)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !446, line: 15, size: 64, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !503, file: !446, line: 15, baseType: !461, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !503, file: !446, line: 15, baseType: !507, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !438}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !445, file: !446, line: 15, baseType: !511, size: 64, offset: 448)
!511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !446, line: 15, size: 64, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !511, file: !446, line: 15, baseType: !371, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !511, file: !446, line: 15, baseType: !153, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !445, file: !446, line: 15, baseType: !90, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !445, file: !446, line: 15, baseType: !517, size: 64, offset: 576)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !446, line: 15, size: 64, elements: !518)
!518 = !{!519, !531}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !517, file: !446, line: 15, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !41, line: 2681, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !474, line: 34, size: 192, elements: !523)
!523 = !{!524, !525, !529, !530}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !522, file: !474, line: 35, baseType: !269, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !522, file: !474, line: 36, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !41, line: 2682, baseType: !257)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !522, file: !474, line: 37, baseType: !83, size: 32, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !522, file: !474, line: 38, baseType: !83, size: 32, offset: 160)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !517, file: !446, line: 15, baseType: !81, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !445, file: !446, line: 15, baseType: !438, size: 64, offset: 640)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !445, file: !446, line: 15, baseType: !83, size: 32, offset: 704)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !445, file: !446, line: 15, baseType: !535, size: 32, offset: 736)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !10, line: 567, baseType: !83)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !445, file: !446, line: 15, baseType: !159, size: 32, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !440, file: !10, line: 237, baseType: !83, size: 32, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !440, file: !10, line: 237, baseType: !83, size: 32, offset: 96)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !440, file: !10, line: 238, baseType: !540, size: 64, offset: 128)
!540 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !10, line: 238, size: 64, elements: !541)
!541 = !{!542, !543, !544, !545, !546, !547, !548, !549, !550, !551}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !540, file: !10, line: 238, baseType: !90, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !540, file: !10, line: 238, baseType: !93, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !540, file: !10, line: 238, baseType: !96, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !540, file: !10, line: 238, baseType: !99, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !540, file: !10, line: 238, baseType: !76, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !540, file: !10, line: 238, baseType: !103, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !540, file: !10, line: 238, baseType: !144, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !540, file: !10, line: 238, baseType: !146, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !540, file: !10, line: 238, baseType: !170, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !540, file: !10, line: 238, baseType: !200, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !172, file: !173, line: 15, baseType: !83, size: 32, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !172, file: !173, line: 16, baseType: !83, size: 32, offset: 224)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !172, file: !173, line: 17, baseType: !45, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !172, file: !173, line: 18, baseType: !256, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !172, file: !173, line: 19, baseType: !438, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !172, file: !173, line: 20, baseType: !371, size: 64, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !172, file: !173, line: 21, baseType: !11, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !172, file: !173, line: 22, baseType: !11, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !172, file: !173, line: 23, baseType: !153, size: 64, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !135, file: !10, line: 258, baseType: !200, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !121, file: !105, line: 159, baseType: !564, size: 64, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!159, !567, !90, !90, !90, !269, !76, !81, !83}
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !121, file: !105, line: 162, baseType: !569, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!90, !567, !76, !572, !90, !90, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !105, line: 152, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !105, line: 148, size: 128, elements: !577)
!577 = !{!578, !580}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !576, file: !105, line: 150, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !576, file: !105, line: 151, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !121, file: !105, line: 170, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!76, !567}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !121, file: !105, line: 171, baseType: !587, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !567}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !121, file: !105, line: 172, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !567, !594, !562}
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !121, file: !105, line: 174, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !567, !594, !599}
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !121, file: !105, line: 176, baseType: !603, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!159, !567, !599, !594}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !121, file: !105, line: 178, baseType: !607, size: 64, offset: 512)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!76, !567, !562, !562, !573}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !121, file: !105, line: 180, baseType: !611, size: 64, offset: 576)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!76, !567, !599, !573}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !121, file: !105, line: 182, baseType: !583, size: 64, offset: 640)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !121, file: !105, line: 186, baseType: !616, size: 64, offset: 704)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!127, !619, !75, !461, !119, !127, !620, !83, !83}
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !104, file: !105, line: 142, baseType: !127, size: 64, offset: 320)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !104, file: !105, line: 142, baseType: !45, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !104, file: !105, line: 142, baseType: !83, size: 32, offset: 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !104, file: !105, line: 142, baseType: !269, size: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !104, file: !105, line: 142, baseType: !269, size: 64, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !104, file: !105, line: 142, baseType: !110, size: 64, offset: 640)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !104, file: !105, line: 142, baseType: !628, size: 64, offset: 704)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !105, line: 45, size: 1024, elements: !630)
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !629, file: !105, line: 46, baseType: !420, size: 8)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !629, file: !105, line: 47, baseType: !633, size: 960, offset: 64)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 960, elements: !641)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !105, line: 38, size: 320, elements: !635)
!635 = !{!636, !637, !638, !639, !640}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !634, file: !105, line: 39, baseType: !269, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !634, file: !105, line: 40, baseType: !269, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !634, file: !105, line: 41, baseType: !76, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !634, file: !105, line: 42, baseType: !76, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !634, file: !105, line: 43, baseType: !269, size: 64, offset: 256)
!641 = !{!642}
!642 = !DISubrange(count: 3)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !104, file: !105, line: 142, baseType: !83, size: 32, offset: 768)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !104, file: !105, line: 142, baseType: !83, size: 32, offset: 800)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !104, file: !105, line: 142, baseType: !81, size: 64, offset: 832)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !104, file: !105, line: 142, baseType: !83, size: 32, offset: 896)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !104, file: !105, line: 142, baseType: !83, size: 32, offset: 928)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !104, file: !105, line: 142, baseType: !649, size: 64, offset: 960)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !105, line: 68, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !105, line: 58, size: 192, elements: !652)
!652 = !{!653, !654, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !651, file: !105, line: 59, baseType: !269, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !651, file: !105, line: 60, baseType: !269, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !651, file: !105, line: 67, baseType: !269, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !104, file: !105, line: 142, baseType: !90, size: 64, offset: 1024)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !104, file: !105, line: 142, baseType: !76, size: 64, offset: 1088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !104, file: !105, line: 142, baseType: !269, size: 64, offset: 1152)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !104, file: !105, line: 142, baseType: !269, size: 64, offset: 1216)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !104, file: !105, line: 142, baseType: !269, size: 64, offset: 1280)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !104, file: !105, line: 142, baseType: !269, size: 64, offset: 1344)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !104, file: !105, line: 142, baseType: !11, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !104, file: !105, line: 142, baseType: !11, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !104, file: !105, line: 142, baseType: !438, size: 64, offset: 1472)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !87, file: !10, line: 220, baseType: !144, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !87, file: !10, line: 220, baseType: !146, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !87, file: !10, line: 220, baseType: !170, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !87, file: !10, line: 220, baseType: !200, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !69, file: !63, line: 13, baseType: !72, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !69, file: !63, line: 14, baseType: !671, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!83, !76, !60}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !69, file: !63, line: 15, baseType: !72, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !69, file: !63, line: 16, baseType: !72, size: 64, offset: 256)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !69, file: !63, line: 17, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!75, !76, !60, !76, !216, !159}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !69, file: !63, line: 19, baseType: !681, size: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!75, !60, !251}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !69, file: !63, line: 20, baseType: !72, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !62, file: !63, line: 26, baseType: !686, size: 16, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !84, line: 173, baseType: !687)
!687 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !62, file: !63, line: 27, baseType: !91, size: 8, offset: 144)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !62, file: !63, line: 28, baseType: !420, size: 8, offset: 152)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !62, file: !63, line: 29, baseType: !269, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !62, file: !63, line: 30, baseType: !76, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !62, file: !63, line: 31, baseType: !90, size: 64, offset: 320)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !57, file: !10, line: 496, baseType: !110, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !52, file: !53, line: 133, baseType: !110, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !52, file: !53, line: 134, baseType: !110, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !47, file: !10, line: 247, baseType: !83, size: 32, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !47, file: !10, line: 247, baseType: !83, size: 32, offset: 96)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !47, file: !10, line: 248, baseType: !699, size: 64, offset: 128)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !47, file: !10, line: 248, size: 64, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !699, file: !10, line: 248, baseType: !90, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !699, file: !10, line: 248, baseType: !93, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !699, file: !10, line: 248, baseType: !96, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !699, file: !10, line: 248, baseType: !99, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !699, file: !10, line: 248, baseType: !76, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !699, file: !10, line: 248, baseType: !103, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !699, file: !10, line: 248, baseType: !144, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !699, file: !10, line: 248, baseType: !146, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !699, file: !10, line: 248, baseType: !170, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !699, file: !10, line: 248, baseType: !200, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !42, file: !10, line: 500, baseType: !57, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !42, file: !10, line: 500, baseType: !110, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !42, file: !10, line: 500, baseType: !714, size: 64, offset: 192)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !42, file: !10, line: 500, size: 64, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !714, file: !10, line: 500, baseType: !110, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !714, file: !10, line: 500, baseType: !90, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVMG", file: !41, line: 2663, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvmg", file: !10, line: 524, size: 384, elements: !721)
!721 = !{!722, !723, !724, !725, !730, !731}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !720, file: !10, line: 525, baseType: !45, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !720, file: !10, line: 525, baseType: !57, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !720, file: !10, line: 525, baseType: !110, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !720, file: !10, line: 525, baseType: !726, size: 64, offset: 192)
!726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !10, line: 525, size: 64, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !726, file: !10, line: 525, baseType: !110, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !726, file: !10, line: 525, baseType: !90, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !720, file: !10, line: 526, baseType: !194, size: 64, offset: 256)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !720, file: !10, line: 527, baseType: !390, size: 64, offset: 320)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !10, line: 153, baseType: !9)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIV", file: !41, line: 2660, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpviv", file: !10, line: 503, size: 320, elements: !737)
!737 = !{!738, !739, !740, !741, !746}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !736, file: !10, line: 504, baseType: !45, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !736, file: !10, line: 504, baseType: !57, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !736, file: !10, line: 504, baseType: !110, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !736, file: !10, line: 504, baseType: !742, size: 64, offset: 192)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !736, file: !10, line: 504, size: 64, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !742, file: !10, line: 504, baseType: !110, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !742, file: !10, line: 504, baseType: !90, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !736, file: !10, line: 505, baseType: !194, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVNV", file: !41, line: 2662, baseType: !749)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvnv", file: !10, line: 517, size: 384, elements: !750)
!750 = !{!751, !752, !753, !754, !759, !760}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !749, file: !10, line: 518, baseType: !45, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !749, file: !10, line: 518, baseType: !57, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !749, file: !10, line: 518, baseType: !110, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !749, file: !10, line: 518, baseType: !755, size: 64, offset: 192)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !10, line: 518, size: 64, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !755, file: !10, line: 518, baseType: !110, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !755, file: !10, line: 518, baseType: !90, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !749, file: !10, line: 519, baseType: !194, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !749, file: !10, line: 520, baseType: !390, size: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv_aux", file: !53, line: 102, size: 448, elements: !763)
!763 = !{!764, !770, !771, !772, !773, !774, !799, !800, !801, !802}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_u", scope: !762, file: !53, line: 103, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xhvnameu", file: !53, line: 97, size: 64, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_name", scope: !765, file: !53, line: 98, baseType: !153, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_names", scope: !765, file: !53, line: 99, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_backreferences", scope: !762, file: !53, line: 104, baseType: !256, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_eiter", scope: !762, file: !53, line: 105, baseType: !147, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_riter", scope: !762, file: !53, line: 106, baseType: !159, size: 32, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_count", scope: !762, file: !53, line: 114, baseType: !159, size: 32, offset: 224)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_mro_meta", scope: !762, file: !53, line: 115, baseType: !775, size: 64, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_meta", file: !53, line: 72, size: 512, elements: !777)
!777 = !{!778, !779, !780, !781, !782, !783, !796, !797, !798}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_all", scope: !776, file: !53, line: 74, baseType: !45, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_current", scope: !776, file: !53, line: 78, baseType: !76, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mro_nextmethod", scope: !776, file: !53, line: 79, baseType: !45, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "cache_gen", scope: !776, file: !53, line: 80, baseType: !83, size: 32, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_gen", scope: !776, file: !53, line: 81, baseType: !83, size: 32, offset: 224)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mro_which", scope: !776, file: !53, line: 82, baseType: !784, size: 64, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_alg", file: !53, line: 64, size: 192, elements: !787)
!787 = !{!788, !792, !793, !794, !795}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "resolve", scope: !786, file: !53, line: 65, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!256, !45, !83}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !786, file: !53, line: 66, baseType: !216, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !786, file: !53, line: 67, baseType: !686, size: 16, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "kflags", scope: !786, file: !53, line: 68, baseType: !686, size: 16, offset: 144)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !786, file: !53, line: 69, baseType: !83, size: 32, offset: 160)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !776, file: !53, line: 83, baseType: !45, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !776, file: !53, line: 84, baseType: !45, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_gen", scope: !776, file: !53, line: 85, baseType: !83, size: 32, offset: 448)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_rand", scope: !762, file: !53, line: 117, baseType: !83, size: 32, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_last_rand", scope: !762, file: !53, line: 118, baseType: !83, size: 32, offset: 352)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_fill_lazy", scope: !762, file: !53, line: 121, baseType: !83, size: 32, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_aux_flags", scope: !762, file: !53, line: 122, baseType: !83, size: 32, offset: 416)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVUV", file: !41, line: 2661, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvuv", file: !10, line: 510, size: 320, elements: !808)
!808 = !{!809, !810, !811, !812, !817}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !807, file: !10, line: 511, baseType: !45, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !807, file: !10, line: 511, baseType: !57, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !807, file: !10, line: 511, baseType: !110, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !807, file: !10, line: 511, baseType: !813, size: 64, offset: 192)
!813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !807, file: !10, line: 511, size: 64, elements: !814)
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !813, file: !10, line: 511, baseType: !110, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !813, file: !10, line: 511, baseType: !90, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "xuv_u", scope: !807, file: !10, line: 512, baseType: !194, size: 64, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "regex_charset", file: !31, line: 52, baseType: !30)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "UNOP", file: !41, line: 2619, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unop", file: !464, line: 206, size: 384, elements: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !825, file: !464, line: 207, baseType: !461, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !825, file: !464, line: 207, baseType: !461, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !825, file: !464, line: 207, baseType: !469, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !825, file: !464, line: 207, baseType: !473, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !825, file: !464, line: 207, baseType: !11, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !825, file: !464, line: 207, baseType: !11, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !825, file: !464, line: 207, baseType: !11, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !825, file: !464, line: 207, baseType: !11, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !825, file: !464, line: 207, baseType: !11, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !825, file: !464, line: 207, baseType: !11, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !825, file: !464, line: 207, baseType: !11, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !825, file: !464, line: 207, baseType: !11, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !825, file: !464, line: 207, baseType: !420, size: 8, offset: 272)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !825, file: !464, line: 207, baseType: !420, size: 8, offset: 280)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "op_first", scope: !825, file: !464, line: 208, baseType: !461, size: 64, offset: 320)
!842 = !{!0, !843}
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(name: "details", scope: !6, file: !3, line: 1012, type: !845, isLocal: true, isDefinition: true)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !846, size: 9792, elements: !853)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xsub_details", file: !3, line: 1006, size: 192, elements: !848)
!848 = !{!849, !850, !852}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !847, file: !3, line: 1007, baseType: !216, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "xsub", scope: !847, file: !3, line: 1008, baseType: !851, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "XSUBADDR_t", file: !41, line: 5402, baseType: !507)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !847, file: !3, line: 1009, baseType: !216, size: 64, offset: 128)
!853 = !{!854}
!854 = !DISubrange(count: 51)
!855 = !{!856, !858, !859, !861, !862, !865, !866}
!856 = !DILocalVariable(name: "xsub", scope: !2, file: !3, line: 1092, type: !857)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!858 = !DILocalVariable(name: "end", scope: !2, file: !3, line: 1093, type: !857)
!859 = !DILocalVariable(name: "to_native_cv", scope: !860, file: !3, line: 1103, type: !438)
!860 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1100, column: 5)
!861 = !DILocalVariable(name: "to_unicode_cv", scope: !860, file: !3, line: 1104, type: !438)
!862 = !DILocalVariable(name: "cv", scope: !863, file: !3, line: 1117, type: !864)
!863 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1116, column: 5)
!864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!865 = !DILocalVariable(name: "cvfile", scope: !863, file: !3, line: 1119, type: !579)
!866 = !DILocalVariable(name: "oldfile", scope: !863, file: !3, line: 1120, type: !90)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 664, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 83)
!870 = !{i32 7, !"Dwarf Version", i32 5}
!871 = !{i32 2, !"Debug Info Version", i32 3}
!872 = !{i32 1, !"wchar_size", i32 4}
!873 = !{i32 7, !"PIC Level", i32 2}
!874 = !{i32 7, !"PIE Level", i32 2}
!875 = !{i32 7, !"uwtable", i32 2}
!876 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!877 = distinct !DISubprogram(name: "Perl_sv_derived_from_sv", scope: !3, file: !3, line: 103, type: !878, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{!496, !76, !76, !83}
!880 = !{!881, !882, !883, !884, !885}
!881 = !DILocalVariable(name: "sv", arg: 1, scope: !877, file: !3, line: 103, type: !76)
!882 = !DILocalVariable(name: "namesv", arg: 2, scope: !877, file: !3, line: 103, type: !76)
!883 = !DILocalVariable(name: "flags", arg: 3, scope: !877, file: !3, line: 103, type: !83)
!884 = !DILocalVariable(name: "namepv", scope: !877, file: !3, line: 105, type: !90)
!885 = !DILocalVariable(name: "namelen", scope: !877, file: !3, line: 106, type: !110)
!886 = !DILocation(line: 0, scope: !877)
!887 = !DILocation(line: 106, column: 5, scope: !877)
!888 = !DILocation(line: 108, column: 14, scope: !877)
!889 = !DILocation(line: 109, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !877, file: !3, line: 109, column: 9)
!891 = !DILocation(line: 111, column: 12, scope: !877)
!892 = !DILocation(line: 109, column: 9, scope: !877)
!893 = !DILocation(line: 112, column: 1, scope: !877)
!894 = !DILocation(line: 111, column: 5, scope: !877)
!895 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !896, file: !896, line: 4130, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!896 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!897 = !DISubroutineType(types: !898)
!898 = !{!90, !562, !899, !594}
!899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!900 = !{}
!901 = distinct !DISubprogram(name: "Perl_sv_derived_from_pvn", scope: !3, file: !3, line: 147, type: !902, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !905)
!902 = !DISubroutineType(types: !903)
!903 = !{!496, !76, !572, !904, !83}
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!905 = !{!906, !907, !908, !909, !910, !911}
!906 = !DILocalVariable(name: "sv", arg: 1, scope: !901, file: !3, line: 147, type: !76)
!907 = !DILocalVariable(name: "name", arg: 2, scope: !901, file: !3, line: 147, type: !572)
!908 = !DILocalVariable(name: "len", arg: 3, scope: !901, file: !3, line: 147, type: !904)
!909 = !DILocalVariable(name: "flags", arg: 4, scope: !901, file: !3, line: 147, type: !83)
!910 = !DILocalVariable(name: "stash", scope: !901, file: !3, line: 149, type: !45)
!911 = !DILocalVariable(name: "type", scope: !912, file: !3, line: 156, type: !216)
!912 = distinct !DILexicalBlock(scope: !913, file: !3, line: 155, column: 20)
!913 = distinct !DILexicalBlock(scope: !901, file: !3, line: 155, column: 9)
!914 = !DILocation(line: 0, scope: !901)
!915 = !DILocation(line: 153, column: 5, scope: !901)
!916 = !DILocation(line: 155, column: 9, scope: !913)
!917 = !DILocation(line: 155, column: 9, scope: !901)
!918 = !DILocation(line: 157, column: 14, scope: !912)
!919 = !DILocation(line: 158, column: 16, scope: !912)
!920 = !DILocation(line: 0, scope: !912)
!921 = !DILocation(line: 159, column: 6, scope: !922)
!922 = distinct !DILexicalBlock(scope: !912, file: !3, line: 159, column: 6)
!923 = !DILocation(line: 159, column: 11, scope: !922)
!924 = !DILocation(line: 159, column: 14, scope: !922)
!925 = !DILocation(line: 159, column: 6, scope: !912)
!926 = !DILocation(line: 161, column: 14, scope: !927)
!927 = distinct !DILexicalBlock(scope: !912, file: !3, line: 161, column: 13)
!928 = !DILocation(line: 161, column: 13, scope: !912)
!929 = !DILocation(line: 163, column: 10, scope: !912)
!930 = !DILocation(line: 166, column: 17, scope: !931)
!931 = distinct !DILexicalBlock(scope: !913, file: !3, line: 165, column: 10)
!932 = !DILocation(line: 0, scope: !913)
!933 = !DILocation(line: 169, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !901, file: !3, line: 169, column: 9)
!935 = !DILocation(line: 169, column: 15, scope: !934)
!936 = !DILocation(line: 169, column: 18, scope: !934)
!937 = !DILocation(line: 169, column: 9, scope: !901)
!938 = !DILocation(line: 172, column: 13, scope: !901)
!939 = !DILocation(line: 173, column: 12, scope: !901)
!940 = !DILocation(line: 173, column: 18, scope: !901)
!941 = !DILocation(line: 173, column: 21, scope: !901)
!942 = !DILocation(line: 174, column: 1, scope: !901)
!943 = distinct !DISubprogram(name: "Perl_sv_derived_from", scope: !3, file: !3, line: 123, type: !944, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !946)
!944 = !DISubroutineType(types: !945)
!945 = !{!496, !76, !572}
!946 = !{!947, !948}
!947 = !DILocalVariable(name: "sv", arg: 1, scope: !943, file: !3, line: 123, type: !76)
!948 = !DILocalVariable(name: "name", arg: 2, scope: !943, file: !3, line: 123, type: !572)
!949 = !DILocation(line: 0, scope: !943)
!950 = !DILocation(line: 126, column: 12, scope: !943)
!951 = !DILocation(line: 126, column: 5, scope: !943)
!952 = distinct !DISubprogram(name: "Perl_sv_derived_from_pv", scope: !3, file: !3, line: 140, type: !953, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !955)
!953 = !DISubroutineType(types: !954)
!954 = !{!496, !76, !572, !83}
!955 = !{!956, !957, !958}
!956 = !DILocalVariable(name: "sv", arg: 1, scope: !952, file: !3, line: 140, type: !76)
!957 = !DILocalVariable(name: "name", arg: 2, scope: !952, file: !3, line: 140, type: !572)
!958 = !DILocalVariable(name: "flags", arg: 3, scope: !952, file: !3, line: 140, type: !83)
!959 = !DILocation(line: 0, scope: !952)
!960 = !DILocation(line: 143, column: 12, scope: !952)
!961 = !DILocation(line: 143, column: 5, scope: !952)
!962 = !DISubprogram(name: "Perl_mg_get", scope: !896, file: !896, line: 2670, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!963 = !DISubroutineType(types: !964)
!964 = !{!75, !76}
!965 = !DISubprogram(name: "Perl_sv_reftype", scope: !896, file: !896, line: 4558, type: !966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!966 = !DISubroutineType(types: !967)
!967 = !{!216, !599, !968}
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!969 = !DISubprogram(name: "Perl_gv_stashsv", scope: !896, file: !896, line: 1605, type: !970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!970 = !DISubroutineType(types: !971)
!971 = !{!45, !76, !159}
!972 = distinct !DISubprogram(name: "S_isa_lookup", scope: !3, file: !3, line: 42, type: !973, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !975)
!973 = !DISubroutineType(types: !974)
!974 = !{!496, !45, !572, !110, !83}
!975 = !{!976, !977, !978, !979, !980, !984, !985, !988}
!976 = !DILocalVariable(name: "stash", arg: 1, scope: !972, file: !3, line: 42, type: !45)
!977 = !DILocalVariable(name: "name", arg: 2, scope: !972, file: !3, line: 42, type: !572)
!978 = !DILocalVariable(name: "len", arg: 3, scope: !972, file: !3, line: 42, type: !110)
!979 = !DILocalVariable(name: "flags", arg: 4, scope: !972, file: !3, line: 42, type: !83)
!980 = !DILocalVariable(name: "meta", scope: !972, file: !3, line: 44, type: !981)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!984 = !DILocalVariable(name: "isa", scope: !972, file: !3, line: 45, type: !45)
!985 = !DILocalVariable(name: "our_stash", scope: !972, file: !3, line: 46, type: !986)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!988 = !DILocalVariable(name: "canon_name", scope: !989, file: !3, line: 67, type: !153)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 66, column: 20)
!990 = distinct !DILexicalBlock(scope: !972, file: !3, line: 66, column: 9)
!991 = !DILocation(line: 0, scope: !972)
!992 = !DILocation(line: 44, column: 41, scope: !972)
!993 = !DILocation(line: 45, column: 21, scope: !972)
!994 = !DILocation(line: 50, column: 10, scope: !995)
!995 = distinct !DILexicalBlock(scope: !972, file: !3, line: 50, column: 9)
!996 = !DILocation(line: 50, column: 9, scope: !972)
!997 = !DILocation(line: 51, column: 8, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 50, column: 15)
!999 = !DILocation(line: 52, column: 14, scope: !998)
!1000 = !DILocation(line: 53, column: 5, scope: !998)
!1001 = !DILocation(line: 55, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !972, file: !3, line: 55, column: 9)
!1003 = !DILocation(line: 55, column: 9, scope: !972)
!1004 = !DILocation(line: 64, column: 17, scope: !972)
!1005 = !DILocation(line: 66, column: 9, scope: !990)
!1006 = !DILocation(line: 66, column: 9, scope: !972)
!1007 = !DILocation(line: 67, column: 20, scope: !989)
!1008 = !DILocation(line: 0, scope: !989)
!1009 = !DILocation(line: 68, column: 7, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !989, file: !3, line: 68, column: 6)
!1011 = !DILocation(line: 68, column: 6, scope: !989)
!1012 = !DILocation(line: 68, column: 32, scope: !1010)
!1013 = !DILocation(line: 70, column: 6, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !989, file: !3, line: 70, column: 6)
!1015 = !DILocation(line: 77, column: 5, scope: !972)
!1016 = !DILocation(line: 78, column: 1, scope: !972)
!1017 = !DISubprogram(name: "Perl_gv_stashpvn", scope: !896, file: !896, line: 1600, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!45, !216, !83, !159}
!1020 = distinct !DISubprogram(name: "Perl_sv_does_sv", scope: !3, file: !3, line: 188, type: !878, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1021)
!1021 = !{!1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1022 = !DILocalVariable(name: "sv", arg: 1, scope: !1020, file: !3, line: 188, type: !76)
!1023 = !DILocalVariable(name: "namesv", arg: 2, scope: !1020, file: !3, line: 188, type: !76)
!1024 = !DILocalVariable(name: "flags", arg: 3, scope: !1020, file: !3, line: 188, type: !83)
!1025 = !DILocalVariable(name: "classname", scope: !1020, file: !3, line: 190, type: !76)
!1026 = !DILocalVariable(name: "does_it", scope: !1020, file: !3, line: 191, type: !496)
!1027 = !DILocalVariable(name: "methodname", scope: !1020, file: !3, line: 192, type: !76)
!1028 = !DILocalVariable(name: "sp", scope: !1020, file: !3, line: 193, type: !144)
!1029 = !DILocalVariable(name: "mark_stack_entry", scope: !1030, file: !3, line: 219, type: !1031)
!1030 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 219, column: 5)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!1032 = !DILocation(line: 0, scope: !1020)
!1033 = !DILocation(line: 193, column: 5, scope: !1020)
!1034 = !DILocation(line: 198, column: 5, scope: !1020)
!1035 = !DILocation(line: 199, column: 5, scope: !1020)
!1036 = !DILocation(line: 201, column: 5, scope: !1020)
!1037 = !DILocation(line: 203, column: 10, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 203, column: 9)
!1039 = !DILocation(line: 203, column: 24, scope: !1038)
!1040 = !DILocation(line: 203, column: 34, scope: !1038)
!1041 = !DILocation(line: 203, column: 38, scope: !1038)
!1042 = !DILocation(line: 203, column: 48, scope: !1038)
!1043 = !DILocation(line: 203, column: 51, scope: !1038)
!1044 = !DILocation(line: 203, column: 9, scope: !1020)
!1045 = !DILocation(line: 208, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 208, column: 9)
!1047 = !DILocation(line: 208, column: 9, scope: !1020)
!1048 = !DILocation(line: 209, column: 14, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 208, column: 26)
!1050 = !DILocation(line: 210, column: 5, scope: !1049)
!1051 = !DILocation(line: 0, scope: !1046)
!1052 = !DILocation(line: 214, column: 9, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 214, column: 9)
!1054 = !DILocation(line: 214, column: 9, scope: !1020)
!1055 = !DILocation(line: 219, column: 5, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 219, column: 5)
!1057 = !DILocation(line: 0, scope: !1030)
!1058 = !DILocation(line: 219, column: 5, scope: !1030)
!1059 = !DILocation(line: 220, column: 5, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 220, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 220, column: 5)
!1062 = !DILocation(line: 220, column: 5, scope: !1061)
!1063 = !DILocation(line: 220, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1060, file: !3, line: 220, column: 5)
!1065 = !DILocation(line: 221, column: 5, scope: !1020)
!1066 = !DILocation(line: 222, column: 5, scope: !1020)
!1067 = !DILocation(line: 223, column: 5, scope: !1020)
!1068 = !DILocation(line: 225, column: 18, scope: !1020)
!1069 = !DILocation(line: 229, column: 5, scope: !1020)
!1070 = !DILocation(line: 230, column: 5, scope: !1020)
!1071 = !DILocation(line: 231, column: 5, scope: !1020)
!1072 = !DILocation(line: 233, column: 15, scope: !1020)
!1073 = !DILocation(line: 234, column: 5, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1020, file: !3, line: 234, column: 5)
!1075 = !DILocation(line: 234, column: 5, scope: !1020)
!1076 = !DILocation(line: 238, column: 1, scope: !1020)
!1077 = !DISubprogram(name: "Perl_push_scope", scope: !896, file: !896, line: 3507, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1078 = !DISubprogram(name: "Perl_save_strlen", scope: !896, file: !896, line: 3940, type: !1079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{null, !732}
!1081 = !DISubprogram(name: "Perl_pop_scope", scope: !896, file: !896, line: 3451, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1082 = !DISubprogram(name: "Perl_sv_isobject", scope: !896, file: !896, line: 4413, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1083 = !DISubprogram(name: "Perl_sv_ref", scope: !896, file: !896, line: 4553, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!76, !76, !599, !968}
!1086 = !DISubprogram(name: "Perl_sv_eq_flags", scope: !896, file: !896, line: 4359, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!159, !76, !76, !573}
!1089 = !DISubprogram(name: "Perl_markstack_grow", scope: !896, file: !896, line: 2624, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!1031}
!1092 = !DISubprogram(name: "Perl_stack_grow", scope: !896, file: !896, line: 4061, type: !1093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!144, !144, !144, !269}
!1095 = !DISubprogram(name: "Perl_newSVpvn_flags", scope: !896, file: !896, line: 3116, type: !1096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!76, !572, !904, !573}
!1098 = !DISubprogram(name: "Perl_call_sv", scope: !896, file: !896, line: 365, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!159, !76, !1101}
!1101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !159)
!1102 = !DISubprogram(name: "Perl_sv_2bool_flags", scope: !896, file: !896, line: 4088, type: !1103, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!496, !76, !159}
!1105 = !DISubprogram(name: "Perl_free_tmps", scope: !896, file: !896, line: 1268, type: !4, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1106 = distinct !DISubprogram(name: "Perl_sv_does", scope: !3, file: !3, line: 249, type: !944, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1107)
!1107 = !{!1108, !1109}
!1108 = !DILocalVariable(name: "sv", arg: 1, scope: !1106, file: !3, line: 249, type: !76)
!1109 = !DILocalVariable(name: "name", arg: 2, scope: !1106, file: !3, line: 249, type: !572)
!1110 = !DILocation(line: 0, scope: !1106)
!1111 = !DILocation(line: 252, column: 12, scope: !1106)
!1112 = !DILocation(line: 252, column: 5, scope: !1106)
!1113 = distinct !DISubprogram(name: "Perl_sv_does_pv", scope: !3, file: !3, line: 265, type: !953, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DILocalVariable(name: "sv", arg: 1, scope: !1113, file: !3, line: 265, type: !76)
!1116 = !DILocalVariable(name: "name", arg: 2, scope: !1113, file: !3, line: 265, type: !572)
!1117 = !DILocalVariable(name: "flags", arg: 3, scope: !1113, file: !3, line: 265, type: !83)
!1118 = !DILocation(line: 0, scope: !1113)
!1119 = !DILocation(line: 268, column: 12, scope: !1113)
!1120 = !DILocation(line: 268, column: 5, scope: !1113)
!1121 = distinct !DISubprogram(name: "Perl_sv_does_pvn", scope: !3, file: !3, line: 280, type: !902, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1122)
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DILocalVariable(name: "sv", arg: 1, scope: !1121, file: !3, line: 280, type: !76)
!1124 = !DILocalVariable(name: "name", arg: 2, scope: !1121, file: !3, line: 280, type: !572)
!1125 = !DILocalVariable(name: "len", arg: 3, scope: !1121, file: !3, line: 280, type: !904)
!1126 = !DILocalVariable(name: "flags", arg: 4, scope: !1121, file: !3, line: 280, type: !83)
!1127 = !DILocation(line: 0, scope: !1121)
!1128 = !DILocation(line: 284, column: 12, scope: !1121)
!1129 = !DILocation(line: 284, column: 5, scope: !1121)
!1130 = distinct !DISubprogram(name: "Perl_croak_xs_usage", scope: !3, file: !3, line: 304, type: !1131, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1136)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !1133, !572}
!1133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1134)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!1136 = !{!1137, !1138, !1139, !1142, !1146}
!1137 = !DILocalVariable(name: "cv", arg: 1, scope: !1130, file: !3, line: 304, type: !1133)
!1138 = !DILocalVariable(name: "params", arg: 2, scope: !1130, file: !3, line: 304, type: !572)
!1139 = !DILocalVariable(name: "gv", scope: !1130, file: !3, line: 307, type: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!1142 = !DILocalVariable(name: "stash", scope: !1143, file: !3, line: 312, type: !1145)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 311, column: 21)
!1144 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 311, column: 9)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!1146 = !DILabel(scope: !1144, name: "got_gv", file: !3, line: 311)
!1147 = !DILocation(line: 0, scope: !1130)
!1148 = !DILocation(line: 307, column: 20, scope: !1130)
!1149 = !DILocation(line: 307, column: 53, scope: !1130)
!1150 = !DILocation(line: 307, column: 62, scope: !1130)
!1151 = !DILocation(line: 311, column: 9, scope: !1144)
!1152 = !DILocation(line: 311, column: 9, scope: !1130)
!1153 = !DILocation(line: 311, column: 13, scope: !1144)
!1154 = !DILocation(line: 312, column: 26, scope: !1143)
!1155 = !DILocation(line: 0, scope: !1143)
!1156 = !DILocation(line: 314, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 314, column: 6)
!1158 = !DILocation(line: 314, column: 6, scope: !1143)
!1159 = !DILocation(line: 317, column: 33, scope: !1157)
!1160 = !DILocation(line: 318, column: 33, scope: !1157)
!1161 = !DILocation(line: 316, column: 6, scope: !1157)
!1162 = !DILocation(line: 323, column: 33, scope: !1157)
!1163 = !DILocation(line: 322, column: 6, scope: !1157)
!1164 = !DILocalVariable(name: "sv", arg: 1, scope: !1165, file: !1166, line: 29, type: !438)
!1165 = distinct !DISubprogram(name: "S_CvGV", scope: !1166, file: !1166, line: 29, type: !1167, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1169)
!1166 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!371, !438}
!1169 = !{!1164}
!1170 = !DILocation(line: 0, scope: !1165, inlinedAt: !1171)
!1171 = distinct !DILocation(line: 326, column: 19, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 326, column: 13)
!1173 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 324, column: 12)
!1174 = !DILocation(line: 32, column: 4, scope: !1165, inlinedAt: !1171)
!1175 = !DILocation(line: 326, column: 17, scope: !1172)
!1176 = !DILocation(line: 326, column: 13, scope: !1173)
!1177 = !DILocation(line: 330, column: 49, scope: !1173)
!1178 = !DILocation(line: 330, column: 2, scope: !1173)
!1179 = !DILocation(line: 332, column: 1, scope: !1130)
!1180 = !DISubprogram(name: "Perl_croak", scope: !896, file: !896, line: 741, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{null, !216, null}
!1183 = distinct !DISubprogram(name: "XS_UNIVERSAL_isa", scope: !3, file: !3, line: 335, type: !508, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1193, !1198}
!1185 = !DILocalVariable(name: "cv", arg: 1, scope: !1183, file: !3, line: 335, type: !438)
!1186 = !DILocalVariable(name: "sp", scope: !1183, file: !3, line: 337, type: !144)
!1187 = !DILocalVariable(name: "ax", scope: !1183, file: !3, line: 337, type: !159)
!1188 = !DILocalVariable(name: "mark", scope: !1183, file: !3, line: 337, type: !144)
!1189 = !DILocalVariable(name: "items", scope: !1183, file: !3, line: 337, type: !159)
!1190 = !DILocalVariable(name: "sv", scope: !1191, file: !3, line: 342, type: !562)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 341, column: 10)
!1192 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 339, column: 9)
!1193 = !DILocalVariable(name: "tmpXSoff", scope: !1194, file: !3, line: 347, type: !1197)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 347, column: 6)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 347, column: 6)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 346, column: 6)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!1198 = !DILocalVariable(name: "tmpXSoff", scope: !1199, file: !3, line: 350, type: !1197)
!1199 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 350, column: 2)
!1200 = !DILocation(line: 0, scope: !1183)
!1201 = !DILocation(line: 337, column: 5, scope: !1183)
!1202 = !DILocation(line: 339, column: 15, scope: !1192)
!1203 = !DILocation(line: 339, column: 9, scope: !1183)
!1204 = !DILocation(line: 340, column: 2, scope: !1192)
!1205 = !DILocation(line: 352, column: 1, scope: !1183)
!1206 = !DILocation(line: 342, column: 18, scope: !1191)
!1207 = !DILocation(line: 0, scope: !1191)
!1208 = !DILocation(line: 344, column: 2, scope: !1191)
!1209 = !DILocation(line: 346, column: 7, scope: !1196)
!1210 = !DILocation(line: 346, column: 21, scope: !1196)
!1211 = !DILocation(line: 346, column: 31, scope: !1196)
!1212 = !DILocation(line: 346, column: 35, scope: !1196)
!1213 = !DILocation(line: 346, column: 45, scope: !1196)
!1214 = !DILocation(line: 346, column: 48, scope: !1196)
!1215 = !DILocation(line: 346, column: 6, scope: !1191)
!1216 = !DILocation(line: 349, column: 10, scope: !1191)
!1217 = !DILocation(line: 0, scope: !877, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 349, column: 10, scope: !1191)
!1219 = !DILocation(line: 106, column: 5, scope: !877, inlinedAt: !1218)
!1220 = !DILocation(line: 108, column: 14, scope: !877, inlinedAt: !1218)
!1221 = !DILocation(line: 109, column: 9, scope: !890, inlinedAt: !1218)
!1222 = !DILocation(line: 111, column: 12, scope: !877, inlinedAt: !1218)
!1223 = !DILocation(line: 112, column: 1, scope: !877, inlinedAt: !1218)
!1224 = distinct !DISubprogram(name: "XS_UNIVERSAL_can", scope: !3, file: !3, line: 355, type: !508, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1239, !1243}
!1226 = !DILocalVariable(name: "cv", arg: 1, scope: !1224, file: !3, line: 355, type: !438)
!1227 = !DILocalVariable(name: "sp", scope: !1224, file: !3, line: 357, type: !144)
!1228 = !DILocalVariable(name: "ax", scope: !1224, file: !3, line: 357, type: !159)
!1229 = !DILocalVariable(name: "mark", scope: !1224, file: !3, line: 357, type: !144)
!1230 = !DILocalVariable(name: "items", scope: !1224, file: !3, line: 357, type: !159)
!1231 = !DILocalVariable(name: "sv", scope: !1224, file: !3, line: 358, type: !76)
!1232 = !DILocalVariable(name: "rv", scope: !1224, file: !3, line: 359, type: !76)
!1233 = !DILocalVariable(name: "pkg", scope: !1224, file: !3, line: 360, type: !45)
!1234 = !DILocalVariable(name: "iogv", scope: !1224, file: !3, line: 361, type: !371)
!1235 = !DILocalVariable(name: "tmpXSoff", scope: !1236, file: !3, line: 374, type: !1197)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 374, column: 2)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 374, column: 2)
!1238 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 373, column: 9)
!1239 = !DILocalVariable(name: "gv", scope: !1240, file: !3, line: 396, type: !1242)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 395, column: 14)
!1241 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 395, column: 9)
!1242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!1243 = !DILocalVariable(name: "tmpXSoff", scope: !1244, file: !3, line: 402, type: !1197)
!1244 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 402, column: 5)
!1245 = !DILocation(line: 0, scope: !1224)
!1246 = !DILocation(line: 357, column: 5, scope: !1224)
!1247 = !DILocation(line: 363, column: 15, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 363, column: 9)
!1249 = !DILocation(line: 363, column: 9, scope: !1224)
!1250 = !DILocation(line: 364, column: 2, scope: !1248)
!1251 = !DILocation(line: 366, column: 10, scope: !1224)
!1252 = !DILocation(line: 368, column: 5, scope: !1224)
!1253 = !DILocation(line: 373, column: 10, scope: !1238)
!1254 = !DILocation(line: 373, column: 23, scope: !1238)
!1255 = !DILocation(line: 373, column: 33, scope: !1238)
!1256 = !DILocation(line: 373, column: 37, scope: !1238)
!1257 = !DILocation(line: 373, column: 9, scope: !1224)
!1258 = !DILocation(line: 378, column: 9, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 378, column: 9)
!1260 = !DILocation(line: 378, column: 9, scope: !1224)
!1261 = !DILocation(line: 379, column: 14, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 378, column: 20)
!1263 = !DILocation(line: 380, column: 13, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 380, column: 13)
!1265 = !DILocation(line: 380, column: 13, scope: !1262)
!1266 = !DILocation(line: 381, column: 19, scope: !1264)
!1267 = !DILocation(line: 381, column: 13, scope: !1264)
!1268 = !DILocation(line: 382, column: 18, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 382, column: 18)
!1270 = !DILocation(line: 382, column: 38, scope: !1269)
!1271 = !DILocation(line: 382, column: 18, scope: !1264)
!1272 = !DILocation(line: 383, column: 12, scope: !1269)
!1273 = !DILocation(line: 383, column: 6, scope: !1269)
!1274 = !DILocation(line: 385, column: 14, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 385, column: 14)
!1276 = !DILocation(line: 385, column: 34, scope: !1275)
!1277 = !DILocation(line: 385, column: 14, scope: !1259)
!1278 = !DILocation(line: 386, column: 15, scope: !1275)
!1279 = !DILocation(line: 386, column: 9, scope: !1275)
!1280 = !DILocation(line: 387, column: 22, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 387, column: 14)
!1282 = !DILocation(line: 387, column: 20, scope: !1281)
!1283 = !DILocation(line: 387, column: 56, scope: !1281)
!1284 = !DILocation(line: 387, column: 59, scope: !1281)
!1285 = !DILocation(line: 387, column: 14, scope: !1275)
!1286 = !DILocation(line: 388, column: 15, scope: !1281)
!1287 = !DILocation(line: 388, column: 9, scope: !1281)
!1288 = !DILocation(line: 390, column: 15, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 389, column: 10)
!1290 = !DILocation(line: 391, column: 14, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 391, column: 13)
!1292 = !DILocation(line: 391, column: 13, scope: !1289)
!1293 = !DILocation(line: 392, column: 19, scope: !1291)
!1294 = !DILocation(line: 392, column: 13, scope: !1291)
!1295 = !DILocation(line: 395, column: 9, scope: !1241)
!1296 = !DILocation(line: 395, column: 9, scope: !1224)
!1297 = !DILocation(line: 396, column: 18, scope: !1240)
!1298 = !DILocation(line: 0, scope: !1240)
!1299 = !DILocation(line: 397, column: 13, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 397, column: 13)
!1301 = !DILocation(line: 397, column: 16, scope: !1300)
!1302 = !DILocation(line: 397, column: 19, scope: !1300)
!1303 = !DILocation(line: 397, column: 13, scope: !1240)
!1304 = !DILocation(line: 398, column: 11, scope: !1300)
!1305 = !DILocation(line: 398, column: 6, scope: !1300)
!1306 = !DILocation(line: 403, column: 1, scope: !1224)
!1307 = !DISubprogram(name: "Perl_gv_fetchsv", scope: !896, file: !896, line: 1530, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!371, !76, !159, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !733)
!1311 = !DISubprogram(name: "Perl_gv_fetchmethod_sv_flags", scope: !896, file: !896, line: 1514, type: !1312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!371, !45, !76, !83}
!1314 = !DISubprogram(name: "Perl_sv_2mortal", scope: !896, file: !896, line: 4114, type: !1315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!76, !562}
!1317 = !DISubprogram(name: "Perl_newRV", scope: !896, file: !896, line: 3027, type: !1315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1318 = distinct !DISubprogram(name: "XS_UNIVERSAL_DOES", scope: !3, file: !3, line: 406, type: !508, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1325, !1328, !1332}
!1320 = !DILocalVariable(name: "cv", arg: 1, scope: !1318, file: !3, line: 406, type: !438)
!1321 = !DILocalVariable(name: "sp", scope: !1318, file: !3, line: 408, type: !144)
!1322 = !DILocalVariable(name: "ax", scope: !1318, file: !3, line: 408, type: !159)
!1323 = !DILocalVariable(name: "mark", scope: !1318, file: !3, line: 408, type: !144)
!1324 = !DILocalVariable(name: "items", scope: !1318, file: !3, line: 408, type: !159)
!1325 = !DILocalVariable(name: "sv", scope: !1326, file: !3, line: 414, type: !562)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 413, column: 10)
!1327 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 411, column: 9)
!1328 = !DILocalVariable(name: "tmpXSoff", scope: !1329, file: !3, line: 416, type: !1197)
!1329 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 416, column: 6)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 416, column: 6)
!1331 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 415, column: 6)
!1332 = !DILocalVariable(name: "tmpXSoff", scope: !1333, file: !3, line: 418, type: !1197)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 418, column: 2)
!1334 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 418, column: 2)
!1335 = !DILocation(line: 0, scope: !1318)
!1336 = !DILocation(line: 408, column: 5, scope: !1318)
!1337 = !DILocation(line: 411, column: 15, scope: !1327)
!1338 = !DILocation(line: 411, column: 9, scope: !1318)
!1339 = !DILocation(line: 412, column: 2, scope: !1327)
!1340 = !DILocation(line: 420, column: 1, scope: !1318)
!1341 = !DILocation(line: 414, column: 18, scope: !1326)
!1342 = !DILocation(line: 0, scope: !1326)
!1343 = !DILocation(line: 415, column: 6, scope: !1331)
!1344 = distinct !DISubprogram(name: "XS_utf8_is_utf8", scope: !3, file: !3, line: 423, type: !508, scopeLine: 424, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1354, !1358, !1361}
!1346 = !DILocalVariable(name: "cv", arg: 1, scope: !1344, file: !3, line: 423, type: !438)
!1347 = !DILocalVariable(name: "sp", scope: !1344, file: !3, line: 425, type: !144)
!1348 = !DILocalVariable(name: "ax", scope: !1344, file: !3, line: 425, type: !159)
!1349 = !DILocalVariable(name: "mark", scope: !1344, file: !3, line: 425, type: !144)
!1350 = !DILocalVariable(name: "items", scope: !1344, file: !3, line: 425, type: !159)
!1351 = !DILocalVariable(name: "sv", scope: !1352, file: !3, line: 429, type: !562)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !3, line: 428, column: 11)
!1353 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 426, column: 10)
!1354 = !DILocalVariable(name: "tmpXSoff", scope: !1355, file: !3, line: 432, type: !1197)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 432, column: 3)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 432, column: 3)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 431, column: 10)
!1358 = !DILocalVariable(name: "tmpXSoff", scope: !1359, file: !3, line: 434, type: !1197)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !3, line: 434, column: 3)
!1360 = distinct !DILexicalBlock(scope: !1357, file: !3, line: 434, column: 3)
!1361 = !DILocalVariable(name: "tmpXSoff", scope: !1362, file: !3, line: 436, type: !1197)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 436, column: 6)
!1363 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 436, column: 6)
!1364 = !DILocation(line: 0, scope: !1344)
!1365 = !DILocation(line: 425, column: 6, scope: !1344)
!1366 = !DILocation(line: 426, column: 16, scope: !1353)
!1367 = !DILocation(line: 426, column: 10, scope: !1344)
!1368 = !DILocation(line: 427, column: 3, scope: !1353)
!1369 = !DILocation(line: 0, scope: !1362)
!1370 = !DILocation(line: 436, column: 6, scope: !1362)
!1371 = !DILocation(line: 429, column: 18, scope: !1352)
!1372 = !DILocation(line: 0, scope: !1352)
!1373 = !DILocation(line: 430, column: 2, scope: !1352)
!1374 = !DILocation(line: 431, column: 10, scope: !1357)
!1375 = !DILocation(line: 0, scope: !1357)
!1376 = !DILocation(line: 437, column: 1, scope: !1344)
!1377 = distinct !DISubprogram(name: "XS_utf8_valid", scope: !3, file: !3, line: 440, type: !508, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1378)
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1387, !1388, !1389, !1393, !1396}
!1379 = !DILocalVariable(name: "cv", arg: 1, scope: !1377, file: !3, line: 440, type: !438)
!1380 = !DILocalVariable(name: "sp", scope: !1377, file: !3, line: 442, type: !144)
!1381 = !DILocalVariable(name: "ax", scope: !1377, file: !3, line: 442, type: !159)
!1382 = !DILocalVariable(name: "mark", scope: !1377, file: !3, line: 442, type: !144)
!1383 = !DILocalVariable(name: "items", scope: !1377, file: !3, line: 442, type: !159)
!1384 = !DILocalVariable(name: "sv", scope: !1385, file: !3, line: 446, type: !562)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !3, line: 445, column: 10)
!1386 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 443, column: 10)
!1387 = !DILocalVariable(name: "len", scope: !1385, file: !3, line: 447, type: !110)
!1388 = !DILocalVariable(name: "s", scope: !1385, file: !3, line: 448, type: !572)
!1389 = !DILocalVariable(name: "tmpXSoff", scope: !1390, file: !3, line: 450, type: !1197)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !3, line: 450, column: 6)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 450, column: 6)
!1392 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 449, column: 6)
!1393 = !DILocalVariable(name: "tmpXSoff", scope: !1394, file: !3, line: 452, type: !1197)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 452, column: 6)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 452, column: 6)
!1396 = !DILocalVariable(name: "tmpXSoff", scope: !1397, file: !3, line: 454, type: !1197)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !3, line: 454, column: 6)
!1398 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 454, column: 6)
!1399 = !DILocation(line: 0, scope: !1377)
!1400 = !DILocation(line: 442, column: 6, scope: !1377)
!1401 = !DILocation(line: 443, column: 16, scope: !1386)
!1402 = !DILocation(line: 443, column: 10, scope: !1377)
!1403 = !DILocation(line: 444, column: 3, scope: !1386)
!1404 = !DILocation(line: 0, scope: !1397)
!1405 = !DILocation(line: 454, column: 6, scope: !1397)
!1406 = !DILocation(line: 446, column: 18, scope: !1385)
!1407 = !DILocation(line: 0, scope: !1385)
!1408 = !DILocation(line: 447, column: 2, scope: !1385)
!1409 = !DILocation(line: 448, column: 25, scope: !1385)
!1410 = !DILocation(line: 449, column: 7, scope: !1392)
!1411 = !DILocation(line: 449, column: 18, scope: !1392)
!1412 = !DILocation(line: 449, column: 49, scope: !1392)
!1413 = !DILocation(line: 449, column: 21, scope: !1392)
!1414 = !DILocation(line: 449, column: 6, scope: !1385)
!1415 = !DILocation(line: 0, scope: !1392)
!1416 = !DILocation(line: 453, column: 5, scope: !1386)
!1417 = !DILocation(line: 455, column: 1, scope: !1377)
!1418 = !DISubprogram(name: "Perl_is_utf8_string", scope: !896, file: !896, line: 2179, type: !1419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!496, !803, !110}
!1421 = distinct !DISubprogram(name: "XS_utf8_encode", scope: !3, file: !3, line: 458, type: !508, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1422)
!1422 = !{!1423, !1424, !1425, !1426, !1427, !1428}
!1423 = !DILocalVariable(name: "cv", arg: 1, scope: !1421, file: !3, line: 458, type: !438)
!1424 = !DILocalVariable(name: "sp", scope: !1421, file: !3, line: 460, type: !144)
!1425 = !DILocalVariable(name: "ax", scope: !1421, file: !3, line: 460, type: !159)
!1426 = !DILocalVariable(name: "mark", scope: !1421, file: !3, line: 460, type: !144)
!1427 = !DILocalVariable(name: "items", scope: !1421, file: !3, line: 460, type: !159)
!1428 = !DILocalVariable(name: "tmpXSoff", scope: !1429, file: !3, line: 465, type: !1197)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 465, column: 5)
!1430 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 465, column: 5)
!1431 = !DILocation(line: 0, scope: !1421)
!1432 = !DILocation(line: 460, column: 5, scope: !1421)
!1433 = !DILocation(line: 461, column: 15, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 461, column: 9)
!1435 = !DILocation(line: 461, column: 9, scope: !1421)
!1436 = !DILocation(line: 462, column: 2, scope: !1434)
!1437 = !DILocation(line: 463, column: 5, scope: !1421)
!1438 = !DILocation(line: 464, column: 5, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !3, line: 464, column: 5)
!1440 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 464, column: 5)
!1441 = !DILocation(line: 464, column: 5, scope: !1440)
!1442 = !DILocation(line: 465, column: 5, scope: !1429)
!1443 = !DILocation(line: 0, scope: !1429)
!1444 = !DILocation(line: 466, column: 1, scope: !1421)
!1445 = !DISubprogram(name: "Perl_sv_utf8_encode", scope: !896, file: !896, line: 4777, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !562}
!1448 = !DISubprogram(name: "Perl_mg_set", scope: !896, file: !896, line: 2692, type: !963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1449 = distinct !DISubprogram(name: "XS_utf8_decode", scope: !3, file: !3, line: 469, type: !508, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1456, !1459, !1460}
!1451 = !DILocalVariable(name: "cv", arg: 1, scope: !1449, file: !3, line: 469, type: !438)
!1452 = !DILocalVariable(name: "sp", scope: !1449, file: !3, line: 471, type: !144)
!1453 = !DILocalVariable(name: "ax", scope: !1449, file: !3, line: 471, type: !159)
!1454 = !DILocalVariable(name: "mark", scope: !1449, file: !3, line: 471, type: !144)
!1455 = !DILocalVariable(name: "items", scope: !1449, file: !3, line: 471, type: !159)
!1456 = !DILocalVariable(name: "sv", scope: !1457, file: !3, line: 475, type: !562)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 474, column: 10)
!1458 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 472, column: 9)
!1459 = !DILocalVariable(name: "RETVAL", scope: !1457, file: !3, line: 476, type: !496)
!1460 = !DILocalVariable(name: "tmpXSoff", scope: !1461, file: !3, line: 482, type: !1197)
!1461 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 482, column: 5)
!1462 = !DILocation(line: 0, scope: !1449)
!1463 = !DILocation(line: 471, column: 5, scope: !1449)
!1464 = !DILocation(line: 472, column: 15, scope: !1458)
!1465 = !DILocation(line: 472, column: 9, scope: !1449)
!1466 = !DILocation(line: 473, column: 2, scope: !1458)
!1467 = !DILocation(line: 482, column: 5, scope: !1461)
!1468 = !DILocation(line: 475, column: 18, scope: !1457)
!1469 = !DILocation(line: 0, scope: !1457)
!1470 = !DILocation(line: 477, column: 2, scope: !1457)
!1471 = !DILocation(line: 478, column: 11, scope: !1457)
!1472 = !DILocation(line: 479, column: 2, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !3, line: 479, column: 2)
!1474 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 479, column: 2)
!1475 = !DILocation(line: 479, column: 2, scope: !1474)
!1476 = !DILocation(line: 480, column: 10, scope: !1457)
!1477 = !DILocation(line: 480, column: 2, scope: !1457)
!1478 = !DILocation(line: 480, column: 8, scope: !1457)
!1479 = !DILocation(line: 0, scope: !1461)
!1480 = !DILocation(line: 483, column: 1, scope: !1449)
!1481 = !DISubprogram(name: "Perl_sv_pvn_force_flags", scope: !896, file: !896, line: 4520, type: !897, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1482 = !DISubprogram(name: "Perl_sv_utf8_decode", scope: !896, file: !896, line: 4767, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!496, !562}
!1485 = distinct !DISubprogram(name: "XS_utf8_upgrade", scope: !3, file: !3, line: 486, type: !508, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1495, !1496, !1497}
!1487 = !DILocalVariable(name: "cv", arg: 1, scope: !1485, file: !3, line: 486, type: !438)
!1488 = !DILocalVariable(name: "sp", scope: !1485, file: !3, line: 488, type: !144)
!1489 = !DILocalVariable(name: "ax", scope: !1485, file: !3, line: 488, type: !159)
!1490 = !DILocalVariable(name: "mark", scope: !1485, file: !3, line: 488, type: !144)
!1491 = !DILocalVariable(name: "items", scope: !1485, file: !3, line: 488, type: !159)
!1492 = !DILocalVariable(name: "sv", scope: !1493, file: !3, line: 492, type: !562)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 491, column: 10)
!1494 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 489, column: 9)
!1495 = !DILocalVariable(name: "RETVAL", scope: !1493, file: !3, line: 493, type: !110)
!1496 = !DILocalVariable(name: "targ", scope: !1493, file: !3, line: 494, type: !562)
!1497 = !DILocalVariable(name: "tmpXSoff", scope: !1498, file: !3, line: 499, type: !1197)
!1498 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 499, column: 5)
!1499 = !DILocation(line: 0, scope: !1485)
!1500 = !DILocation(line: 488, column: 5, scope: !1485)
!1501 = !DILocation(line: 489, column: 15, scope: !1494)
!1502 = !DILocation(line: 489, column: 9, scope: !1485)
!1503 = !DILocation(line: 490, column: 2, scope: !1494)
!1504 = !DILocation(line: 499, column: 5, scope: !1498)
!1505 = !DILocation(line: 492, column: 18, scope: !1493)
!1506 = !DILocation(line: 0, scope: !1493)
!1507 = !DILocation(line: 494, column: 2, scope: !1493)
!1508 = !DILocation(line: 496, column: 11, scope: !1493)
!1509 = !DILocation(line: 497, column: 2, scope: !1493)
!1510 = !DILocation(line: 497, column: 13, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 497, column: 13)
!1512 = !DILocation(line: 497, column: 13, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !3, line: 497, column: 13)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 497, column: 13)
!1515 = distinct !DILexicalBlock(scope: !1511, file: !3, line: 497, column: 13)
!1516 = !DILocation(line: 497, column: 13, scope: !1514)
!1517 = !DILocation(line: 497, column: 13, scope: !1515)
!1518 = !DILocation(line: 0, scope: !1498)
!1519 = !DILocation(line: 500, column: 1, scope: !1485)
!1520 = !DISubprogram(name: "Perl_sv_newmortal", scope: !896, file: !896, line: 4449, type: !1521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!76}
!1523 = !DISubprogram(name: "Perl_sv_utf8_upgrade_flags_grow", scope: !896, file: !896, line: 4790, type: !1524, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!110, !562, !594, !110}
!1526 = !DISubprogram(name: "Perl_sv_setiv", scope: !896, file: !896, line: 4587, type: !1527, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !562, !1197}
!1529 = distinct !DISubprogram(name: "XS_utf8_downgrade", scope: !3, file: !3, line: 503, type: !508, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1530)
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1539, !1541, !1542}
!1531 = !DILocalVariable(name: "cv", arg: 1, scope: !1529, file: !3, line: 503, type: !438)
!1532 = !DILocalVariable(name: "sp", scope: !1529, file: !3, line: 505, type: !144)
!1533 = !DILocalVariable(name: "ax", scope: !1529, file: !3, line: 505, type: !159)
!1534 = !DILocalVariable(name: "mark", scope: !1529, file: !3, line: 505, type: !144)
!1535 = !DILocalVariable(name: "items", scope: !1529, file: !3, line: 505, type: !159)
!1536 = !DILocalVariable(name: "sv", scope: !1537, file: !3, line: 509, type: !562)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 508, column: 10)
!1538 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 506, column: 9)
!1539 = !DILocalVariable(name: "failok", scope: !1537, file: !3, line: 510, type: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!1541 = !DILocalVariable(name: "RETVAL", scope: !1537, file: !3, line: 511, type: !1540)
!1542 = !DILocalVariable(name: "tmpXSoff", scope: !1543, file: !3, line: 515, type: !1197)
!1543 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 515, column: 5)
!1544 = !DILocation(line: 0, scope: !1529)
!1545 = !DILocation(line: 505, column: 5, scope: !1529)
!1546 = !DILocation(line: 506, column: 19, scope: !1538)
!1547 = !DILocation(line: 507, column: 2, scope: !1538)
!1548 = !DILocation(line: 515, column: 5, scope: !1543)
!1549 = !DILocation(line: 509, column: 18, scope: !1537)
!1550 = !DILocation(line: 0, scope: !1537)
!1551 = !DILocation(line: 510, column: 36, scope: !1537)
!1552 = !DILocation(line: 510, column: 29, scope: !1537)
!1553 = !DILocation(line: 510, column: 47, scope: !1537)
!1554 = !DILocation(line: 511, column: 29, scope: !1537)
!1555 = !DILocation(line: 513, column: 10, scope: !1537)
!1556 = !DILocation(line: 513, column: 2, scope: !1537)
!1557 = !DILocation(line: 513, column: 8, scope: !1537)
!1558 = !DILocation(line: 0, scope: !1543)
!1559 = !DILocation(line: 516, column: 1, scope: !1529)
!1560 = !DISubprogram(name: "Perl_sv_utf8_downgrade", scope: !896, file: !896, line: 4772, type: !1561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!496, !562, !1540}
!1563 = distinct !DISubprogram(name: "XS_utf8_native_to_unicode", scope: !3, file: !3, line: 519, type: !508, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1564)
!1564 = !{!1565, !1566, !1567, !1568, !1569, !1570, !1572}
!1565 = !DILocalVariable(name: "cv", arg: 1, scope: !1563, file: !3, line: 519, type: !438)
!1566 = !DILocalVariable(name: "sp", scope: !1563, file: !3, line: 521, type: !144)
!1567 = !DILocalVariable(name: "ax", scope: !1563, file: !3, line: 521, type: !159)
!1568 = !DILocalVariable(name: "mark", scope: !1563, file: !3, line: 521, type: !144)
!1569 = !DILocalVariable(name: "items", scope: !1563, file: !3, line: 521, type: !159)
!1570 = !DILocalVariable(name: "uv", scope: !1563, file: !3, line: 522, type: !1571)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1572 = !DILocalVariable(name: "tmpXSoff", scope: !1573, file: !3, line: 528, type: !1197)
!1573 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 528, column: 2)
!1574 = !DILocation(line: 0, scope: !1563)
!1575 = !DILocation(line: 521, column: 2, scope: !1563)
!1576 = !DILocation(line: 522, column: 16, scope: !1563)
!1577 = !DILocation(line: 524, column: 12, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1563, file: !3, line: 524, column: 6)
!1579 = !DILocation(line: 524, column: 6, scope: !1563)
!1580 = !DILocation(line: 525, column: 6, scope: !1578)
!1581 = !DILocation(line: 527, column: 10, scope: !1563)
!1582 = !DILocation(line: 527, column: 2, scope: !1563)
!1583 = !DILocation(line: 527, column: 8, scope: !1563)
!1584 = !DILocation(line: 0, scope: !1573)
!1585 = !DILocation(line: 528, column: 2, scope: !1573)
!1586 = !DILocation(line: 529, column: 1, scope: !1563)
!1587 = !DISubprogram(name: "Perl_sv_2uv_flags", scope: !896, file: !896, line: 4168, type: !1588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!96, !562, !594}
!1590 = !DISubprogram(name: "Perl_newSViv", scope: !896, file: !896, line: 3088, type: !1591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!76, !1197}
!1593 = distinct !DISubprogram(name: "XS_utf8_unicode_to_native", scope: !3, file: !3, line: 532, type: !508, scopeLine: 533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1594)
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601}
!1595 = !DILocalVariable(name: "cv", arg: 1, scope: !1593, file: !3, line: 532, type: !438)
!1596 = !DILocalVariable(name: "sp", scope: !1593, file: !3, line: 534, type: !144)
!1597 = !DILocalVariable(name: "ax", scope: !1593, file: !3, line: 534, type: !159)
!1598 = !DILocalVariable(name: "mark", scope: !1593, file: !3, line: 534, type: !144)
!1599 = !DILocalVariable(name: "items", scope: !1593, file: !3, line: 534, type: !159)
!1600 = !DILocalVariable(name: "uv", scope: !1593, file: !3, line: 535, type: !1571)
!1601 = !DILocalVariable(name: "tmpXSoff", scope: !1602, file: !3, line: 541, type: !1197)
!1602 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 541, column: 2)
!1603 = !DILocation(line: 0, scope: !1593)
!1604 = !DILocation(line: 534, column: 2, scope: !1593)
!1605 = !DILocation(line: 535, column: 16, scope: !1593)
!1606 = !DILocation(line: 537, column: 12, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1593, file: !3, line: 537, column: 6)
!1608 = !DILocation(line: 537, column: 6, scope: !1593)
!1609 = !DILocation(line: 538, column: 6, scope: !1607)
!1610 = !DILocation(line: 540, column: 10, scope: !1593)
!1611 = !DILocation(line: 540, column: 2, scope: !1593)
!1612 = !DILocation(line: 540, column: 8, scope: !1593)
!1613 = !DILocation(line: 0, scope: !1602)
!1614 = !DILocation(line: 541, column: 2, scope: !1602)
!1615 = !DILocation(line: 542, column: 1, scope: !1593)
!1616 = distinct !DISubprogram(name: "XS_Internals_SvREADONLY", scope: !3, file: !3, line: 545, type: !508, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1617)
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1631, !1634, !1641, !1645}
!1618 = !DILocalVariable(name: "cv", arg: 1, scope: !1616, file: !3, line: 545, type: !438)
!1619 = !DILocalVariable(name: "sp", scope: !1616, file: !3, line: 547, type: !144)
!1620 = !DILocalVariable(name: "ax", scope: !1616, file: !3, line: 547, type: !159)
!1621 = !DILocalVariable(name: "mark", scope: !1616, file: !3, line: 547, type: !144)
!1622 = !DILocalVariable(name: "items", scope: !1616, file: !3, line: 547, type: !159)
!1623 = !DILocalVariable(name: "svz", scope: !1616, file: !3, line: 548, type: !562)
!1624 = !DILocalVariable(name: "sv", scope: !1616, file: !3, line: 549, type: !76)
!1625 = !DILocalVariable(name: "tmpXSoff", scope: !1626, file: !3, line: 560, type: !1197)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 560, column: 7)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 560, column: 7)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 559, column: 7)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 558, column: 21)
!1630 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 558, column: 9)
!1631 = !DILocalVariable(name: "tmpXSoff", scope: !1632, file: !3, line: 562, type: !1197)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 562, column: 7)
!1633 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 562, column: 7)
!1634 = !DILocalVariable(name: "tmpXSoff", scope: !1635, file: !3, line: 570, type: !1197)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 570, column: 6)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 570, column: 6)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 565, column: 21)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 565, column: 6)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 564, column: 26)
!1640 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 564, column: 14)
!1641 = !DILocalVariable(name: "tmpXSoff", scope: !1642, file: !3, line: 575, type: !1197)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 575, column: 6)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 575, column: 6)
!1644 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 572, column: 7)
!1645 = !DILocalVariable(name: "tmpXSoff", scope: !1646, file: !3, line: 578, type: !1197)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !3, line: 578, column: 5)
!1647 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 578, column: 5)
!1648 = !DILocation(line: 0, scope: !1616)
!1649 = !DILocation(line: 547, column: 5, scope: !1616)
!1650 = !DILocation(line: 548, column: 22, scope: !1616)
!1651 = !DILocation(line: 553, column: 10, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 553, column: 9)
!1653 = !DILocation(line: 553, column: 9, scope: !1616)
!1654 = !DILocation(line: 554, column: 9, scope: !1652)
!1655 = !DILocation(line: 556, column: 10, scope: !1616)
!1656 = !DILocation(line: 558, column: 9, scope: !1616)
!1657 = !DILocation(line: 559, column: 7, scope: !1628)
!1658 = !DILocation(line: 0, scope: !1628)
!1659 = !DILocation(line: 559, column: 7, scope: !1629)
!1660 = !DILocation(line: 560, column: 7, scope: !1627)
!1661 = !DILocation(line: 0, scope: !1626)
!1662 = !DILocation(line: 562, column: 7, scope: !1633)
!1663 = !DILocation(line: 0, scope: !1632)
!1664 = !DILocation(line: 565, column: 6, scope: !1638)
!1665 = !DILocation(line: 565, column: 6, scope: !1639)
!1666 = !DILocation(line: 569, column: 6, scope: !1637)
!1667 = !DILocation(line: 569, column: 18, scope: !1637)
!1668 = !DILocation(line: 570, column: 6, scope: !1636)
!1669 = !DILocation(line: 0, scope: !1635)
!1670 = !DILocation(line: 574, column: 6, scope: !1644)
!1671 = !DILocation(line: 574, column: 18, scope: !1644)
!1672 = !DILocation(line: 575, column: 6, scope: !1643)
!1673 = !DILocation(line: 0, scope: !1642)
!1674 = !DILocation(line: 578, column: 5, scope: !1647)
!1675 = !DILocation(line: 0, scope: !1646)
!1676 = !DILocation(line: 579, column: 1, scope: !1616)
!1677 = distinct !DISubprogram(name: "XS_constant__make_const", scope: !3, file: !3, line: 582, type: !508, scopeLine: 583, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1689}
!1679 = !DILocalVariable(name: "cv", arg: 1, scope: !1677, file: !3, line: 582, type: !438)
!1680 = !DILocalVariable(name: "sp", scope: !1677, file: !3, line: 584, type: !144)
!1681 = !DILocalVariable(name: "ax", scope: !1677, file: !3, line: 584, type: !159)
!1682 = !DILocalVariable(name: "mark", scope: !1677, file: !3, line: 584, type: !144)
!1683 = !DILocalVariable(name: "items", scope: !1677, file: !3, line: 584, type: !159)
!1684 = !DILocalVariable(name: "svz", scope: !1677, file: !3, line: 585, type: !562)
!1685 = !DILocalVariable(name: "sv", scope: !1677, file: !3, line: 586, type: !76)
!1686 = !DILocalVariable(name: "svp", scope: !1687, file: !3, line: 602, type: !144)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 599, column: 54)
!1688 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 599, column: 9)
!1689 = !DILocalVariable(name: "tmpXSoff", scope: !1690, file: !3, line: 608, type: !1197)
!1690 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 608, column: 5)
!1691 = !DILocation(line: 0, scope: !1677)
!1692 = !DILocation(line: 584, column: 5, scope: !1677)
!1693 = !DILocation(line: 585, column: 22, scope: !1677)
!1694 = !DILocation(line: 590, column: 10, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1677, file: !3, line: 590, column: 9)
!1696 = !DILocation(line: 590, column: 21, scope: !1695)
!1697 = !DILocation(line: 591, column: 9, scope: !1695)
!1698 = !DILocation(line: 593, column: 10, scope: !1677)
!1699 = !DILocation(line: 598, column: 5, scope: !1677)
!1700 = !DILocation(line: 599, column: 9, scope: !1688)
!1701 = !DILocation(line: 599, column: 20, scope: !1688)
!1702 = !DILocation(line: 599, column: 32, scope: !1688)
!1703 = !DILocation(line: 599, column: 35, scope: !1688)
!1704 = !DILocation(line: 599, column: 47, scope: !1688)
!1705 = !DILocation(line: 599, column: 9, scope: !1677)
!1706 = !DILocation(line: 603, column: 13, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 603, column: 2)
!1708 = !DILocation(line: 0, scope: !1687)
!1709 = !DILocation(line: 604, column: 11, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 603, column: 2)
!1711 = !DILocation(line: 603, column: 2, scope: !1707)
!1712 = !DILocation(line: 603, column: 25, scope: !1707)
!1713 = !DILocation(line: 606, column: 10, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !3, line: 606, column: 10)
!1715 = !DILocation(line: 606, column: 10, scope: !1710)
!1716 = !DILocation(line: 606, column: 16, scope: !1714)
!1717 = !DILocation(line: 604, column: 14, scope: !1710)
!1718 = !DILocation(line: 605, column: 7, scope: !1710)
!1719 = distinct !{!1719, !1711, !1720, !1721, !1722}
!1720 = !DILocation(line: 606, column: 16, scope: !1707)
!1721 = !{!"llvm.loop.mustprogress"}
!1722 = !{!"llvm.loop.unroll.disable"}
!1723 = !DILocation(line: 0, scope: !1690)
!1724 = !DILocation(line: 608, column: 5, scope: !1690)
!1725 = !DILocation(line: 609, column: 1, scope: !1677)
!1726 = distinct !DISubprogram(name: "XS_Internals_SvREFCNT", scope: !3, file: !3, line: 612, type: !508, scopeLine: 613, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1727)
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736}
!1728 = !DILocalVariable(name: "cv", arg: 1, scope: !1726, file: !3, line: 612, type: !438)
!1729 = !DILocalVariable(name: "sp", scope: !1726, file: !3, line: 614, type: !144)
!1730 = !DILocalVariable(name: "ax", scope: !1726, file: !3, line: 614, type: !159)
!1731 = !DILocalVariable(name: "mark", scope: !1726, file: !3, line: 614, type: !144)
!1732 = !DILocalVariable(name: "items", scope: !1726, file: !3, line: 614, type: !159)
!1733 = !DILocalVariable(name: "svz", scope: !1726, file: !3, line: 615, type: !562)
!1734 = !DILocalVariable(name: "sv", scope: !1726, file: !3, line: 616, type: !76)
!1735 = !DILocalVariable(name: "refcnt", scope: !1726, file: !3, line: 617, type: !83)
!1736 = !DILocalVariable(name: "tmpXSoff", scope: !1737, file: !3, line: 632, type: !1197)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 632, column: 5)
!1738 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 632, column: 5)
!1739 = !DILocation(line: 0, scope: !1726)
!1740 = !DILocation(line: 614, column: 5, scope: !1726)
!1741 = !DILocation(line: 615, column: 22, scope: !1726)
!1742 = !DILocation(line: 621, column: 21, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1726, file: !3, line: 621, column: 9)
!1744 = !DILocation(line: 621, column: 40, scope: !1743)
!1745 = !DILocation(line: 621, column: 9, scope: !1726)
!1746 = !DILocation(line: 622, column: 9, scope: !1743)
!1747 = !DILocation(line: 624, column: 10, scope: !1726)
!1748 = !DILocation(line: 628, column: 20, scope: !1726)
!1749 = !DILocation(line: 628, column: 14, scope: !1726)
!1750 = !DILocation(line: 630, column: 33, scope: !1726)
!1751 = !DILocation(line: 630, column: 18, scope: !1726)
!1752 = !DILocation(line: 630, column: 31, scope: !1726)
!1753 = !DILocation(line: 631, column: 19, scope: !1726)
!1754 = !DILocation(line: 632, column: 5, scope: !1738)
!1755 = !DILocation(line: 0, scope: !1737)
!1756 = !DILocation(line: 632, column: 5, scope: !1737)
!1757 = !DILocation(line: 634, column: 1, scope: !1726)
!1758 = !DISubprogram(name: "Perl_newSVuv", scope: !896, file: !896, line: 3133, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!76, !1571}
!1761 = distinct !DISubprogram(name: "XS_Internals_hv_clear_placehold", scope: !3, file: !3, line: 637, type: !508, scopeLine: 638, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1762)
!1762 = !{!1763, !1764, !1765, !1766, !1767, !1768, !1772}
!1763 = !DILocalVariable(name: "cv", arg: 1, scope: !1761, file: !3, line: 637, type: !438)
!1764 = !DILocalVariable(name: "sp", scope: !1761, file: !3, line: 639, type: !144)
!1765 = !DILocalVariable(name: "ax", scope: !1761, file: !3, line: 639, type: !159)
!1766 = !DILocalVariable(name: "mark", scope: !1761, file: !3, line: 639, type: !144)
!1767 = !DILocalVariable(name: "items", scope: !1761, file: !3, line: 639, type: !159)
!1768 = !DILocalVariable(name: "hv", scope: !1769, file: !3, line: 644, type: !1771)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !3, line: 643, column: 10)
!1770 = distinct !DILexicalBlock(scope: !1761, file: !3, line: 641, column: 9)
!1771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!1772 = !DILocalVariable(name: "tmpXSoff", scope: !1773, file: !3, line: 646, type: !1197)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !3, line: 646, column: 2)
!1774 = !DILocation(line: 0, scope: !1761)
!1775 = !DILocation(line: 639, column: 5, scope: !1761)
!1776 = !DILocation(line: 641, column: 15, scope: !1770)
!1777 = !DILocation(line: 641, column: 20, scope: !1770)
!1778 = !DILocation(line: 641, column: 24, scope: !1770)
!1779 = !DILocation(line: 641, column: 9, scope: !1761)
!1780 = !DILocation(line: 642, column: 2, scope: !1770)
!1781 = !DILocation(line: 648, column: 1, scope: !1761)
!1782 = !DILocation(line: 644, column: 18, scope: !1769)
!1783 = !DILocation(line: 0, scope: !1769)
!1784 = !DILocation(line: 645, column: 2, scope: !1769)
!1785 = !DILocation(line: 0, scope: !1773)
!1786 = !DILocation(line: 646, column: 2, scope: !1773)
!1787 = !DISubprogram(name: "Perl_hv_clear_placeholders", scope: !896, file: !896, line: 1621, type: !1788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !45}
!1790 = distinct !DISubprogram(name: "XS_PerlIO_get_layers", scope: !3, file: !3, line: 651, type: !508, scopeLine: 652, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1799, !1800, !1803, !1804, !1805, !1809, !1814, !1815, !1816, !1817, !1821, !1822, !1824, !1825, !1829, !1830, !1831, !1832, !1833, !1834, !1839, !1841, !1843}
!1792 = !DILocalVariable(name: "cv", arg: 1, scope: !1790, file: !3, line: 651, type: !438)
!1793 = !DILocalVariable(name: "sp", scope: !1790, file: !3, line: 653, type: !144)
!1794 = !DILocalVariable(name: "ax", scope: !1790, file: !3, line: 653, type: !159)
!1795 = !DILocalVariable(name: "mark", scope: !1790, file: !3, line: 653, type: !144)
!1796 = !DILocalVariable(name: "items", scope: !1790, file: !3, line: 653, type: !159)
!1797 = !DILocalVariable(name: "sv", scope: !1798, file: !3, line: 658, type: !76)
!1798 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 657, column: 5)
!1799 = !DILocalVariable(name: "gv", scope: !1798, file: !3, line: 659, type: !371)
!1800 = !DILocalVariable(name: "io", scope: !1798, file: !3, line: 660, type: !1801)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO", file: !41, line: 2654, baseType: !178)
!1803 = !DILocalVariable(name: "input", scope: !1798, file: !3, line: 661, type: !496)
!1804 = !DILocalVariable(name: "details", scope: !1798, file: !3, line: 662, type: !496)
!1805 = !DILocalVariable(name: "svp", scope: !1806, file: !3, line: 665, type: !1808)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !3, line: 664, column: 17)
!1807 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 664, column: 6)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!1809 = !DILocalVariable(name: "varp", scope: !1810, file: !3, line: 667, type: !1813)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !3, line: 666, column: 49)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !3, line: 666, column: 7)
!1812 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 666, column: 7)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1814 = !DILocalVariable(name: "valp", scope: !1810, file: !3, line: 668, type: !1813)
!1815 = !DILocalVariable(name: "klen", scope: !1810, file: !3, line: 669, type: !110)
!1816 = !DILocalVariable(name: "key", scope: !1810, file: !3, line: 670, type: !572)
!1817 = !DILocalVariable(name: "av", scope: !1818, file: !3, line: 709, type: !1820)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !3, line: 708, column: 29)
!1819 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 708, column: 6)
!1820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!1821 = !DILocalVariable(name: "i", scope: !1818, file: !3, line: 711, type: !269)
!1822 = !DILocalVariable(name: "last", scope: !1818, file: !3, line: 712, type: !1823)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!1824 = !DILocalVariable(name: "nitem", scope: !1818, file: !3, line: 713, type: !269)
!1825 = !DILocalVariable(name: "namsvp", scope: !1826, file: !3, line: 716, type: !1813)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 715, column: 38)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 715, column: 7)
!1828 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 715, column: 7)
!1829 = !DILocalVariable(name: "argsvp", scope: !1826, file: !3, line: 717, type: !1813)
!1830 = !DILocalVariable(name: "flgsvp", scope: !1826, file: !3, line: 718, type: !1813)
!1831 = !DILocalVariable(name: "namok", scope: !1826, file: !3, line: 720, type: !1540)
!1832 = !DILocalVariable(name: "argok", scope: !1826, file: !3, line: 721, type: !1540)
!1833 = !DILocalVariable(name: "flgok", scope: !1826, file: !3, line: 722, type: !1540)
!1834 = !DILocalVariable(name: "flags", scope: !1835, file: !3, line: 755, type: !1197)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !3, line: 754, column: 21)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 754, column: 14)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 744, column: 10)
!1838 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 725, column: 9)
!1839 = !DILocalVariable(name: "tmpXSoff", scope: !1840, file: !3, line: 767, type: !1197)
!1840 = distinct !DILexicalBlock(scope: !1818, file: !3, line: 767, column: 7)
!1841 = !DILocalVariable(name: "tmpXSoff", scope: !1842, file: !3, line: 772, type: !1197)
!1842 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 772, column: 5)
!1843 = !DILabel(scope: !1844, name: "fail", file: !3, line: 692)
!1844 = distinct !DILexicalBlock(scope: !1810, file: !3, line: 672, column: 19)
!1845 = !DILocation(line: 0, scope: !1790)
!1846 = !DILocation(line: 653, column: 5, scope: !1790)
!1847 = !DILocation(line: 654, column: 15, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1790, file: !3, line: 654, column: 9)
!1849 = !DILocation(line: 654, column: 19, scope: !1848)
!1850 = !DILocation(line: 655, column: 2, scope: !1848)
!1851 = !DILocation(line: 0, scope: !1798)
!1852 = !DILocation(line: 664, column: 12, scope: !1807)
!1853 = !DILocation(line: 664, column: 6, scope: !1798)
!1854 = !DILocation(line: 0, scope: !1812)
!1855 = !DILocation(line: 0, scope: !1806)
!1856 = !DILocation(line: 666, column: 32, scope: !1811)
!1857 = !DILocation(line: 666, column: 7, scope: !1812)
!1858 = !DILocation(line: 0, scope: !1810)
!1859 = !DILocation(line: 668, column: 35, scope: !1810)
!1860 = !DILocation(line: 669, column: 5, scope: !1810)
!1861 = !DILocation(line: 670, column: 30, scope: !1810)
!1862 = !DILocation(line: 672, column: 13, scope: !1810)
!1863 = !DILocation(line: 672, column: 5, scope: !1810)
!1864 = !DILocation(line: 674, column: 14, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 674, column: 14)
!1866 = !DILocation(line: 674, column: 19, scope: !1865)
!1867 = !DILocation(line: 674, column: 24, scope: !1865)
!1868 = !DILocation(line: 674, column: 27, scope: !1865)
!1869 = !DILocation(line: 674, column: 14, scope: !1844)
!1870 = !DILocation(line: 675, column: 16, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 674, column: 51)
!1872 = !DILocation(line: 0, scope: !1871)
!1873 = !DILocation(line: 675, column: 14, scope: !1871)
!1874 = !DILocation(line: 676, column: 8, scope: !1871)
!1875 = !DILocation(line: 680, column: 14, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 680, column: 14)
!1877 = !DILocation(line: 680, column: 19, scope: !1876)
!1878 = !DILocation(line: 680, column: 24, scope: !1876)
!1879 = !DILocation(line: 680, column: 27, scope: !1876)
!1880 = !DILocation(line: 680, column: 14, scope: !1844)
!1881 = !DILocation(line: 681, column: 17, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1876, file: !3, line: 680, column: 52)
!1883 = !DILocation(line: 0, scope: !1882)
!1884 = !DILocation(line: 681, column: 16, scope: !1882)
!1885 = !DILocation(line: 681, column: 14, scope: !1882)
!1886 = !DILocation(line: 682, column: 8, scope: !1882)
!1887 = !DILocation(line: 686, column: 14, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 686, column: 14)
!1889 = !DILocation(line: 686, column: 19, scope: !1888)
!1890 = !DILocation(line: 686, column: 24, scope: !1888)
!1891 = !DILocation(line: 686, column: 27, scope: !1888)
!1892 = !DILocation(line: 686, column: 14, scope: !1844)
!1893 = !DILocation(line: 687, column: 18, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 686, column: 53)
!1895 = !DILocation(line: 0, scope: !1894)
!1896 = !DILocation(line: 687, column: 16, scope: !1894)
!1897 = !DILocation(line: 688, column: 8, scope: !1894)
!1898 = !DILocation(line: 692, column: 5, scope: !1844)
!1899 = !DILocation(line: 693, column: 10, scope: !1844)
!1900 = !DILocation(line: 696, column: 5, scope: !1844)
!1901 = !DILocation(line: 697, column: 7, scope: !1811)
!1902 = distinct !{!1902, !1857, !1903, !1721, !1722}
!1903 = !DILocation(line: 697, column: 7, scope: !1812)
!1904 = !DILocation(line: 662, column: 7, scope: !1798)
!1905 = !DILocation(line: 661, column: 7, scope: !1798)
!1906 = !DILocation(line: 699, column: 20, scope: !1806)
!1907 = !DILocation(line: 699, column: 10, scope: !1806)
!1908 = !DILocation(line: 700, column: 2, scope: !1806)
!1909 = !DILocation(line: 702, column: 7, scope: !1798)
!1910 = !DILocation(line: 703, column: 7, scope: !1798)
!1911 = !DILocation(line: 705, column: 14, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1798, file: !3, line: 705, column: 6)
!1913 = !DILocation(line: 705, column: 6, scope: !1798)
!1914 = !DILocation(line: 706, column: 11, scope: !1912)
!1915 = !DILocation(line: 708, column: 6, scope: !1819)
!1916 = !DILocation(line: 708, column: 9, scope: !1819)
!1917 = !DILocation(line: 708, column: 18, scope: !1819)
!1918 = !DILocation(line: 708, column: 16, scope: !1819)
!1919 = !DILocation(line: 708, column: 6, scope: !1798)
!1920 = !DILocation(line: 709, column: 46, scope: !1818)
!1921 = !DILocation(line: 710, column: 6, scope: !1818)
!1922 = !DILocation(line: 710, column: 18, scope: !1818)
!1923 = !DILocation(line: 709, column: 22, scope: !1818)
!1924 = !DILocation(line: 0, scope: !1818)
!1925 = !DILocalVariable(name: "av", arg: 1, scope: !1926, file: !1166, line: 18, type: !256)
!1926 = distinct !DISubprogram(name: "S_av_top_index", scope: !1166, file: !1166, line: 18, type: !1927, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!269, !256}
!1929 = !{!1925}
!1930 = !DILocation(line: 0, scope: !1926, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 712, column: 28, scope: !1818)
!1932 = !DILocation(line: 23, column: 12, scope: !1926, inlinedAt: !1931)
!1933 = !DILocation(line: 715, column: 24, scope: !1827)
!1934 = !DILocation(line: 715, column: 7, scope: !1828)
!1935 = !DILocation(line: 716, column: 33, scope: !1826)
!1936 = !DILocation(line: 0, scope: !1826)
!1937 = !DILocation(line: 717, column: 33, scope: !1826)
!1938 = !DILocation(line: 718, column: 33, scope: !1826)
!1939 = !DILocation(line: 720, column: 24, scope: !1826)
!1940 = !DILocation(line: 720, column: 31, scope: !1826)
!1941 = !DILocation(line: 720, column: 34, scope: !1826)
!1942 = !DILocation(line: 720, column: 42, scope: !1826)
!1943 = !DILocation(line: 720, column: 45, scope: !1826)
!1944 = !DILocation(line: 721, column: 24, scope: !1826)
!1945 = !DILocation(line: 721, column: 31, scope: !1826)
!1946 = !DILocation(line: 721, column: 34, scope: !1826)
!1947 = !DILocation(line: 721, column: 42, scope: !1826)
!1948 = !DILocation(line: 721, column: 45, scope: !1826)
!1949 = !DILocation(line: 722, column: 24, scope: !1826)
!1950 = !DILocation(line: 722, column: 31, scope: !1826)
!1951 = !DILocation(line: 722, column: 34, scope: !1826)
!1952 = !DILocation(line: 722, column: 42, scope: !1826)
!1953 = !DILocation(line: 722, column: 45, scope: !1826)
!1954 = !DILocation(line: 724, column: 5, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !3, line: 724, column: 5)
!1956 = distinct !DILexicalBlock(scope: !1826, file: !3, line: 724, column: 5)
!1957 = !DILocation(line: 724, column: 5, scope: !1956)
!1958 = !DILocation(line: 724, column: 5, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1955, file: !3, line: 724, column: 5)
!1960 = !DILocation(line: 725, column: 9, scope: !1826)
!1961 = !DILocation(line: 730, column: 10, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1838, file: !3, line: 725, column: 18)
!1963 = !DILocation(line: 733, column: 10, scope: !1962)
!1964 = !DILocation(line: 739, column: 10, scope: !1962)
!1965 = !DILocation(line: 742, column: 16, scope: !1962)
!1966 = !DILocation(line: 743, column: 5, scope: !1962)
!1967 = !DILocation(line: 745, column: 20, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1837, file: !3, line: 745, column: 14)
!1969 = !DILocation(line: 746, column: 8, scope: !1968)
!1970 = !DILocation(line: 749, column: 19, scope: !1968)
!1971 = !DILocation(line: 750, column: 8, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 749, column: 19)
!1973 = !DILocation(line: 752, column: 8, scope: !1972)
!1974 = !DILocation(line: 0, scope: !1968)
!1975 = !DILocation(line: 753, column: 15, scope: !1837)
!1976 = !DILocation(line: 754, column: 14, scope: !1837)
!1977 = !DILocation(line: 755, column: 25, scope: !1835)
!1978 = !DILocation(line: 0, scope: !1835)
!1979 = !DILocation(line: 757, column: 18, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 757, column: 12)
!1981 = !DILocation(line: 757, column: 12, scope: !1835)
!1982 = !DILocation(line: 758, column: 6, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1980, file: !3, line: 757, column: 35)
!1984 = !DILocation(line: 759, column: 11, scope: !1983)
!1985 = !DILocation(line: 760, column: 8, scope: !1983)
!1986 = !DILocation(line: 0, scope: !1838)
!1987 = !DILocation(line: 715, column: 32, scope: !1827)
!1988 = distinct !{!1988, !1934, !1989, !1721, !1722}
!1989 = !DILocation(line: 763, column: 7, scope: !1828)
!1990 = !DILocalVariable(name: "sv", arg: 1, scope: !1991, file: !1166, line: 159, type: !76)
!1991 = distinct !DISubprogram(name: "S_SvREFCNT_dec", scope: !1166, file: !1166, line: 159, type: !1992, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !76}
!1994 = !{!1990, !1995}
!1995 = !DILocalVariable(name: "rc", scope: !1996, file: !1166, line: 162, type: !83)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !1166, line: 161, column: 29)
!1997 = distinct !DILexicalBlock(scope: !1991, file: !1166, line: 161, column: 9)
!1998 = !DILocation(line: 0, scope: !1991, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 765, column: 7, scope: !1818)
!2000 = !DILocation(line: 161, column: 9, scope: !1997, inlinedAt: !1999)
!2001 = !DILocation(line: 161, column: 9, scope: !1991, inlinedAt: !1999)
!2002 = !DILocation(line: 162, column: 11, scope: !1996, inlinedAt: !1999)
!2003 = !DILocation(line: 0, scope: !1996, inlinedAt: !1999)
!2004 = !DILocation(line: 163, column: 6, scope: !2005, inlinedAt: !1999)
!2005 = distinct !DILexicalBlock(scope: !1996, file: !1166, line: 163, column: 6)
!2006 = !DILocation(line: 163, column: 6, scope: !1996, inlinedAt: !1999)
!2007 = !DILocation(line: 164, column: 24, scope: !2005, inlinedAt: !1999)
!2008 = !DILocation(line: 164, column: 19, scope: !2005, inlinedAt: !1999)
!2009 = !DILocation(line: 164, column: 6, scope: !2005, inlinedAt: !1999)
!2010 = !DILocation(line: 166, column: 6, scope: !2005, inlinedAt: !1999)
!2011 = !DILocation(line: 0, scope: !1840)
!2012 = !DILocation(line: 767, column: 7, scope: !1840)
!2013 = !DILocation(line: 0, scope: !1842)
!2014 = !DILocation(line: 772, column: 5, scope: !1842)
!2015 = !DILocation(line: 773, column: 1, scope: !1790)
!2016 = !DISubprogram(name: "PerlIO_get_layers", scope: !202, file: !202, line: 106, type: !2017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!256, !200}
!2019 = !DISubprogram(name: "Perl_av_fetch", scope: !896, file: !896, line: 226, type: !2020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!144, !256, !269, !159}
!2022 = !DISubprogram(name: "Perl_newSVpvf", scope: !896, file: !896, line: 3104, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!76, !572, null}
!2025 = distinct !DISubprogram(name: "XS_re_is_regexp", scope: !3, file: !3, line: 777, type: !508, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2026)
!2026 = !{!2027, !2028, !2029, !2030, !2031, !2032, !2037}
!2027 = !DILocalVariable(name: "cv", arg: 1, scope: !2025, file: !3, line: 777, type: !438)
!2028 = !DILocalVariable(name: "sp", scope: !2025, file: !3, line: 779, type: !144)
!2029 = !DILocalVariable(name: "ax", scope: !2025, file: !3, line: 779, type: !159)
!2030 = !DILocalVariable(name: "mark", scope: !2025, file: !3, line: 779, type: !144)
!2031 = !DILocalVariable(name: "items", scope: !2025, file: !3, line: 779, type: !159)
!2032 = !DILocalVariable(name: "tmpXSoff", scope: !2033, file: !3, line: 786, type: !1197)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !3, line: 786, column: 9)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 786, column: 9)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 785, column: 24)
!2036 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 785, column: 9)
!2037 = !DILocalVariable(name: "tmpXSoff", scope: !2038, file: !3, line: 788, type: !1197)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 788, column: 9)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 788, column: 9)
!2040 = distinct !DILexicalBlock(scope: !2036, file: !3, line: 787, column: 12)
!2041 = !DILocation(line: 0, scope: !2025)
!2042 = !DILocation(line: 779, column: 5, scope: !2025)
!2043 = !DILocation(line: 782, column: 15, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 782, column: 9)
!2045 = !DILocation(line: 782, column: 9, scope: !2025)
!2046 = !DILocation(line: 783, column: 2, scope: !2044)
!2047 = !DILocation(line: 785, column: 9, scope: !2036)
!2048 = !DILocation(line: 0, scope: !2036)
!2049 = !DILocation(line: 790, column: 1, scope: !2025)
!2050 = !DISubprogram(name: "Perl_get_re_arg", scope: !896, file: !896, line: 1322, type: !2051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!127, !76}
!2053 = distinct !DISubprogram(name: "XS_re_regnames_count", scope: !3, file: !3, line: 793, type: !508, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2066}
!2055 = !DILocalVariable(name: "cv", arg: 1, scope: !2053, file: !3, line: 793, type: !438)
!2056 = !DILocalVariable(name: "rx", scope: !2053, file: !3, line: 795, type: !127)
!2057 = !DILocalVariable(name: "ret", scope: !2053, file: !3, line: 796, type: !76)
!2058 = !DILocalVariable(name: "sp", scope: !2053, file: !3, line: 797, type: !144)
!2059 = !DILocalVariable(name: "ax", scope: !2053, file: !3, line: 797, type: !159)
!2060 = !DILocalVariable(name: "mark", scope: !2053, file: !3, line: 797, type: !144)
!2061 = !DILocalVariable(name: "items", scope: !2053, file: !3, line: 797, type: !159)
!2062 = !DILocalVariable(name: "tmpXSoff", scope: !2063, file: !3, line: 806, type: !1197)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !3, line: 806, column: 9)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 806, column: 9)
!2065 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 805, column: 9)
!2066 = !DILocalVariable(name: "tmpXSoff", scope: !2067, file: !3, line: 812, type: !1197)
!2067 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 812, column: 5)
!2068 = !DILocation(line: 0, scope: !2053)
!2069 = !DILocation(line: 795, column: 18, scope: !2053)
!2070 = !DILocation(line: 795, column: 29, scope: !2053)
!2071 = !DILocation(line: 797, column: 5, scope: !2053)
!2072 = !DILocation(line: 799, column: 15, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 799, column: 9)
!2074 = !DILocation(line: 799, column: 9, scope: !2053)
!2075 = !DILocation(line: 800, column: 2, scope: !2073)
!2076 = !DILocation(line: 802, column: 8, scope: !2053)
!2077 = !DILocation(line: 803, column: 5, scope: !2053)
!2078 = !DILocation(line: 805, column: 10, scope: !2065)
!2079 = !DILocation(line: 805, column: 9, scope: !2053)
!2080 = !DILocation(line: 806, column: 9, scope: !2064)
!2081 = !DILocation(line: 0, scope: !2063)
!2082 = !DILocation(line: 806, column: 9, scope: !2063)
!2083 = !DILocation(line: 808, column: 11, scope: !2053)
!2084 = !DILocation(line: 810, column: 5, scope: !2053)
!2085 = !DILocation(line: 811, column: 5, scope: !2053)
!2086 = !DILocation(line: 0, scope: !2067)
!2087 = !DILocation(line: 812, column: 5, scope: !2067)
!2088 = !DILocation(line: 813, column: 1, scope: !2053)
!2089 = distinct !DISubprogram(name: "XS_re_regname", scope: !3, file: !3, line: 816, type: !508, scopeLine: 817, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2090)
!2090 = !{!2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2103}
!2091 = !DILocalVariable(name: "cv", arg: 1, scope: !2089, file: !3, line: 816, type: !438)
!2092 = !DILocalVariable(name: "sp", scope: !2089, file: !3, line: 818, type: !144)
!2093 = !DILocalVariable(name: "ax", scope: !2089, file: !3, line: 818, type: !159)
!2094 = !DILocalVariable(name: "mark", scope: !2089, file: !3, line: 818, type: !144)
!2095 = !DILocalVariable(name: "items", scope: !2089, file: !3, line: 818, type: !159)
!2096 = !DILocalVariable(name: "rx", scope: !2089, file: !3, line: 819, type: !127)
!2097 = !DILocalVariable(name: "flags", scope: !2089, file: !3, line: 820, type: !83)
!2098 = !DILocalVariable(name: "ret", scope: !2089, file: !3, line: 821, type: !76)
!2099 = !DILocalVariable(name: "tmpXSoff", scope: !2100, file: !3, line: 832, type: !1197)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !3, line: 832, column: 9)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 832, column: 9)
!2102 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 831, column: 9)
!2103 = !DILocalVariable(name: "tmpXSoff", scope: !2104, file: !3, line: 843, type: !1197)
!2104 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 843, column: 5)
!2105 = !DILocation(line: 0, scope: !2089)
!2106 = !DILocation(line: 818, column: 5, scope: !2089)
!2107 = !DILocation(line: 823, column: 19, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 823, column: 9)
!2109 = !DILocation(line: 824, column: 2, scope: !2108)
!2110 = !DILocation(line: 826, column: 8, scope: !2089)
!2111 = !DILocation(line: 827, column: 5, scope: !2089)
!2112 = !DILocation(line: 829, column: 10, scope: !2089)
!2113 = !DILocation(line: 829, column: 21, scope: !2089)
!2114 = !DILocation(line: 831, column: 10, scope: !2102)
!2115 = !DILocation(line: 831, column: 9, scope: !2089)
!2116 = !DILocation(line: 832, column: 9, scope: !2101)
!2117 = !DILocation(line: 0, scope: !2100)
!2118 = !DILocation(line: 834, column: 15, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 834, column: 9)
!2120 = !DILocation(line: 834, column: 20, scope: !2119)
!2121 = !DILocation(line: 834, column: 23, scope: !2119)
!2122 = !DILocation(line: 834, column: 9, scope: !2089)
!2123 = !DILocation(line: 839, column: 11, scope: !2089)
!2124 = !DILocation(line: 841, column: 5, scope: !2089)
!2125 = !DILocation(line: 842, column: 5, scope: !2089)
!2126 = !DILocation(line: 0, scope: !2104)
!2127 = !DILocation(line: 844, column: 1, scope: !2089)
!2128 = distinct !DISubprogram(name: "XS_re_regnames", scope: !3, file: !3, line: 848, type: !508, scopeLine: 849, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2129)
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2146}
!2130 = !DILocalVariable(name: "cv", arg: 1, scope: !2128, file: !3, line: 848, type: !438)
!2131 = !DILocalVariable(name: "sp", scope: !2128, file: !3, line: 850, type: !144)
!2132 = !DILocalVariable(name: "ax", scope: !2128, file: !3, line: 850, type: !159)
!2133 = !DILocalVariable(name: "mark", scope: !2128, file: !3, line: 850, type: !144)
!2134 = !DILocalVariable(name: "items", scope: !2128, file: !3, line: 850, type: !159)
!2135 = !DILocalVariable(name: "rx", scope: !2128, file: !3, line: 851, type: !127)
!2136 = !DILocalVariable(name: "flags", scope: !2128, file: !3, line: 852, type: !83)
!2137 = !DILocalVariable(name: "ret", scope: !2128, file: !3, line: 853, type: !76)
!2138 = !DILocalVariable(name: "av", scope: !2128, file: !3, line: 854, type: !256)
!2139 = !DILocalVariable(name: "length", scope: !2128, file: !3, line: 855, type: !269)
!2140 = !DILocalVariable(name: "i", scope: !2128, file: !3, line: 856, type: !269)
!2141 = !DILocalVariable(name: "entry", scope: !2128, file: !3, line: 857, type: !144)
!2142 = !DILocalVariable(name: "tmpXSoff", scope: !2143, file: !3, line: 865, type: !1197)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !3, line: 865, column: 9)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !3, line: 865, column: 9)
!2145 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 864, column: 9)
!2146 = !DILocalVariable(name: "tmpXSoff", scope: !2147, file: !3, line: 881, type: !1197)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 881, column: 9)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 881, column: 9)
!2149 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 880, column: 9)
!2150 = !DILocation(line: 0, scope: !2128)
!2151 = !DILocation(line: 850, column: 5, scope: !2128)
!2152 = !DILocation(line: 859, column: 15, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 859, column: 9)
!2154 = !DILocation(line: 859, column: 9, scope: !2128)
!2155 = !DILocation(line: 860, column: 2, scope: !2153)
!2156 = !DILocation(line: 862, column: 10, scope: !2128)
!2157 = !DILocation(line: 862, column: 21, scope: !2128)
!2158 = !DILocation(line: 864, column: 10, scope: !2145)
!2159 = !DILocation(line: 864, column: 9, scope: !2128)
!2160 = !DILocation(line: 865, column: 9, scope: !2144)
!2161 = !DILocation(line: 0, scope: !2143)
!2162 = !DILocation(line: 865, column: 9, scope: !2143)
!2163 = !DILocation(line: 867, column: 15, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 867, column: 9)
!2165 = !DILocation(line: 867, column: 20, scope: !2164)
!2166 = !DILocation(line: 867, column: 23, scope: !2164)
!2167 = !DILocation(line: 867, column: 9, scope: !2128)
!2168 = !DILocation(line: 873, column: 8, scope: !2128)
!2169 = !DILocation(line: 874, column: 5, scope: !2128)
!2170 = !DILocation(line: 876, column: 11, scope: !2128)
!2171 = !DILocation(line: 878, column: 5, scope: !2128)
!2172 = !DILocation(line: 880, column: 10, scope: !2149)
!2173 = !DILocation(line: 880, column: 9, scope: !2128)
!2174 = !DILocation(line: 881, column: 9, scope: !2148)
!2175 = !DILocation(line: 0, scope: !2147)
!2176 = !DILocation(line: 881, column: 9, scope: !2147)
!2177 = !DILocation(line: 883, column: 10, scope: !2128)
!2178 = !DILocation(line: 0, scope: !1926, inlinedAt: !2179)
!2179 = distinct !DILocation(line: 884, column: 14, scope: !2128)
!2180 = !DILocation(line: 23, column: 12, scope: !1926, inlinedAt: !2179)
!2181 = !DILocation(line: 886, column: 5, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !3, line: 886, column: 5)
!2183 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 886, column: 5)
!2184 = !DILocation(line: 886, column: 5, scope: !2183)
!2185 = !DILocation(line: 886, column: 5, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 886, column: 5)
!2187 = !DILocation(line: 887, column: 19, scope: !2188)
!2188 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 887, column: 5)
!2189 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 887, column: 5)
!2190 = !DILocation(line: 887, column: 5, scope: !2189)
!2191 = !DILocation(line: 888, column: 17, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2188, file: !3, line: 887, column: 35)
!2193 = !DILocation(line: 890, column: 14, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2192, file: !3, line: 890, column: 13)
!2195 = !DILocation(line: 890, column: 13, scope: !2192)
!2196 = !DILocation(line: 891, column: 13, scope: !2194)
!2197 = !DILocation(line: 893, column: 9, scope: !2192)
!2198 = !DILocation(line: 887, column: 31, scope: !2188)
!2199 = distinct !{!2199, !2190, !2200, !1721, !1722}
!2200 = !DILocation(line: 894, column: 5, scope: !2189)
!2201 = !DILocation(line: 0, scope: !1991, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 896, column: 5, scope: !2128)
!2203 = !DILocation(line: 162, column: 11, scope: !1996, inlinedAt: !2202)
!2204 = !DILocation(line: 0, scope: !1996, inlinedAt: !2202)
!2205 = !DILocation(line: 163, column: 6, scope: !2005, inlinedAt: !2202)
!2206 = !DILocation(line: 163, column: 6, scope: !1996, inlinedAt: !2202)
!2207 = !DILocation(line: 164, column: 24, scope: !2005, inlinedAt: !2202)
!2208 = !DILocation(line: 164, column: 19, scope: !2005, inlinedAt: !2202)
!2209 = !DILocation(line: 164, column: 6, scope: !2005, inlinedAt: !2202)
!2210 = !DILocation(line: 166, column: 6, scope: !2005, inlinedAt: !2202)
!2211 = !DILocation(line: 900, column: 1, scope: !2128)
!2212 = distinct !DISubprogram(name: "XS_re_regexp_pattern", scope: !3, file: !3, line: 903, type: !508, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2213)
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2224, !2227, !2231, !2232, !2233, !2234, !2237, !2238, !2240, !2243, !2249}
!2214 = !DILocalVariable(name: "cv", arg: 1, scope: !2212, file: !3, line: 903, type: !438)
!2215 = !DILocalVariable(name: "sp", scope: !2212, file: !3, line: 905, type: !144)
!2216 = !DILocalVariable(name: "ax", scope: !2212, file: !3, line: 905, type: !159)
!2217 = !DILocalVariable(name: "mark", scope: !2212, file: !3, line: 905, type: !144)
!2218 = !DILocalVariable(name: "items", scope: !2212, file: !3, line: 905, type: !159)
!2219 = !DILocalVariable(name: "re", scope: !2212, file: !3, line: 906, type: !127)
!2220 = !DILocalVariable(name: "gimme", scope: !2212, file: !3, line: 907, type: !594)
!2221 = !DILocalVariable(name: "pattern", scope: !2222, file: !3, line: 928, type: !76)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 926, column: 5)
!2223 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 925, column: 9)
!2224 = !DILocalVariable(name: "left", scope: !2225, file: !3, line: 931, type: !110)
!2225 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 930, column: 33)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !3, line: 930, column: 14)
!2227 = !DILocalVariable(name: "reflags", scope: !2225, file: !3, line: 932, type: !2228)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 80, elements: !2229)
!2229 = !{!2230}
!2230 = !DISubrange(count: 10)
!2231 = !DILocalVariable(name: "fptr", scope: !2225, file: !3, line: 933, type: !216)
!2232 = !DILocalVariable(name: "ch", scope: !2225, file: !3, line: 934, type: !91)
!2233 = !DILocalVariable(name: "match_flags", scope: !2225, file: !3, line: 935, type: !686)
!2234 = !DILocalVariable(name: "len", scope: !2235, file: !3, line: 944, type: !110)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !3, line: 943, column: 71)
!2236 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 943, column: 10)
!2237 = !DILocalVariable(name: "name", scope: !2235, file: !3, line: 945, type: !572)
!2238 = !DILocalVariable(name: "tmpXSoff", scope: !2239, file: !3, line: 967, type: !1197)
!2239 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 967, column: 13)
!2240 = !DILocalVariable(name: "tmpXSoff", scope: !2241, file: !3, line: 978, type: !1197)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !3, line: 978, column: 13)
!2242 = distinct !DILexicalBlock(scope: !2226, file: !3, line: 968, column: 16)
!2243 = !DILocalVariable(name: "tmpXSoff", scope: !2244, file: !3, line: 984, type: !1197)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !3, line: 984, column: 13)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !3, line: 984, column: 13)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 982, column: 33)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !3, line: 982, column: 14)
!2248 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 980, column: 12)
!2249 = !DILocalVariable(name: "tmpXSoff", scope: !2250, file: !3, line: 997, type: !1197)
!2250 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 997, column: 13)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 997, column: 13)
!2252 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 985, column: 16)
!2253 = !DILocation(line: 0, scope: !2212)
!2254 = !DILocation(line: 905, column: 5, scope: !2212)
!2255 = !DILocation(line: 907, column: 23, scope: !2212)
!2256 = !DILocation(line: 909, column: 5, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !3, line: 909, column: 5)
!2258 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 909, column: 5)
!2259 = !DILocation(line: 909, column: 5, scope: !2258)
!2260 = !DILocation(line: 909, column: 5, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 909, column: 5)
!2262 = !DILocation(line: 910, column: 8, scope: !2212)
!2263 = !DILocation(line: 911, column: 15, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 911, column: 9)
!2265 = !DILocation(line: 911, column: 9, scope: !2212)
!2266 = !DILocation(line: 912, column: 2, scope: !2264)
!2267 = !DILocation(line: 925, column: 15, scope: !2223)
!2268 = !DILocation(line: 925, column: 13, scope: !2223)
!2269 = !DILocation(line: 0, scope: !2223)
!2270 = !DILocation(line: 925, column: 9, scope: !2212)
!2271 = !DILocation(line: 930, column: 14, scope: !2222)
!2272 = !DILocation(line: 0, scope: !2225)
!2273 = !DILocation(line: 932, column: 6, scope: !2225)
!2274 = !DILocation(line: 932, column: 11, scope: !2225)
!2275 = !DILocation(line: 943, column: 28, scope: !2236)
!2276 = !DILocalVariable(name: "flags", arg: 1, scope: !2277, file: !31, line: 79, type: !573)
!2277 = distinct !DISubprogram(name: "get_regex_charset", scope: !31, file: !31, line: 79, type: !2278, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!822, !573}
!2280 = !{!2276}
!2281 = !DILocation(line: 0, scope: !2277, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 943, column: 10, scope: !2236)
!2283 = !DILocation(line: 83, column: 55, scope: !2277, inlinedAt: !2282)
!2284 = !DILocation(line: 943, column: 10, scope: !2225)
!2285 = !DILocation(line: 368, column: 37, scope: !2286, inlinedAt: !2293)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !1166, line: 365, column: 39)
!2287 = distinct !DISubprogram(name: "get_regex_charset_name", scope: !1166, file: !1166, line: 358, type: !2288, scopeLine: 359, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!216, !573, !899}
!2290 = !{!2291, !2292}
!2291 = !DILocalVariable(name: "flags", arg: 1, scope: !2287, file: !1166, line: 358, type: !573)
!2292 = !DILocalVariable(name: "lenp", arg: 2, scope: !2287, file: !1166, line: 358, type: !899)
!2293 = distinct !DILocation(line: 945, column: 28, scope: !2235)
!2294 = !DILocation(line: 369, column: 39, scope: !2286, inlinedAt: !2293)
!2295 = !DILocation(line: 372, column: 6, scope: !2286, inlinedAt: !2293)
!2296 = !DILocation(line: 377, column: 5, scope: !2287, inlinedAt: !2293)
!2297 = !DILocation(line: 0, scope: !2287, inlinedAt: !2293)
!2298 = !DILocation(line: 0, scope: !2235)
!2299 = !DILocation(line: 947, column: 3, scope: !2235)
!2300 = !DILocation(line: 951, column: 34, scope: !2225)
!2301 = !DILocation(line: 949, column: 6, scope: !2235)
!2302 = !DILocation(line: 951, column: 27, scope: !2225)
!2303 = !DILocation(line: 954, column: 13, scope: !2225)
!2304 = !DILocation(line: 955, column: 32, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !3, line: 955, column: 20)
!2306 = distinct !DILexicalBlock(scope: !2225, file: !3, line: 954, column: 35)
!2307 = !DILocation(line: 955, column: 20, scope: !2306)
!2308 = !DILocation(line: 956, column: 33, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 955, column: 37)
!2310 = !DILocation(line: 956, column: 21, scope: !2309)
!2311 = !DILocation(line: 956, column: 37, scope: !2309)
!2312 = !DILocation(line: 957, column: 17, scope: !2309)
!2313 = !DILocation(line: 958, column: 29, scope: !2306)
!2314 = !DILocation(line: 954, column: 30, scope: !2225)
!2315 = !DILocation(line: 954, column: 25, scope: !2225)
!2316 = distinct !{!2316, !2303, !2317, !1721, !1722}
!2317 = !DILocation(line: 959, column: 13, scope: !2225)
!2318 = !DILocation(line: 961, column: 23, scope: !2225)
!2319 = !DILocation(line: 0, scope: !2222)
!2320 = !DILocation(line: 965, column: 13, scope: !2225)
!2321 = !DILocation(line: 966, column: 13, scope: !2225)
!2322 = !DILocation(line: 0, scope: !2239)
!2323 = !DILocation(line: 967, column: 13, scope: !2239)
!2324 = !DILocation(line: 968, column: 9, scope: !2226)
!2325 = !DILocation(line: 972, column: 23, scope: !2242)
!2326 = !DILocation(line: 977, column: 13, scope: !2242)
!2327 = !DILocation(line: 0, scope: !2241)
!2328 = !DILocation(line: 978, column: 13, scope: !2241)
!2329 = !DILocation(line: 0, scope: !2247)
!2330 = !DILocation(line: 982, column: 14, scope: !2248)
!2331 = !DILocation(line: 0, scope: !2244)
!2332 = !DILocation(line: 984, column: 13, scope: !2244)
!2333 = !DILocation(line: 997, column: 13, scope: !2251)
!2334 = !DILocation(line: 0, scope: !2250)
!2335 = !DILocation(line: 997, column: 13, scope: !2250)
!2336 = !DILocation(line: 1001, column: 1, scope: !2212)
!2337 = !DISubprogram(name: "Perl_block_gimme", scope: !896, file: !896, line: 311, type: !2338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!159}
!2340 = !DISubprogram(name: "Perl_newSVsv", scope: !896, file: !896, line: 3129, type: !1315, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2341 = distinct !DISubprogram(name: "XS_universal_version", scope: !2342, file: !2342, line: 87, type: !508, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2343)
!2342 = !DIFile(filename: "apps/500.perlbench_r/src/vxs.inc", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "44cebc077e99585393bce12c0468bd7c")
!2343 = !{!2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2357, !2366}
!2344 = !DILocalVariable(name: "cv", arg: 1, scope: !2341, file: !2342, line: 87, type: !438)
!2345 = !DILocalVariable(name: "sp", scope: !2341, file: !2342, line: 90, type: !144)
!2346 = !DILocalVariable(name: "ax", scope: !2341, file: !2342, line: 90, type: !159)
!2347 = !DILocalVariable(name: "mark", scope: !2341, file: !2342, line: 90, type: !144)
!2348 = !DILocalVariable(name: "items", scope: !2341, file: !2342, line: 90, type: !159)
!2349 = !DILocalVariable(name: "pkg", scope: !2341, file: !2342, line: 91, type: !45)
!2350 = !DILocalVariable(name: "gvp", scope: !2341, file: !2342, line: 92, type: !820)
!2351 = !DILocalVariable(name: "gv", scope: !2341, file: !2342, line: 93, type: !371)
!2352 = !DILocalVariable(name: "sv", scope: !2341, file: !2342, line: 94, type: !76)
!2353 = !DILocalVariable(name: "undef", scope: !2341, file: !2342, line: 95, type: !216)
!2354 = !DILocalVariable(name: "req", scope: !2355, file: !2342, line: 127, type: !76)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !2342, line: 126, column: 20)
!2356 = distinct !DILexicalBlock(scope: !2341, file: !2342, line: 126, column: 9)
!2357 = !DILocalVariable(name: "name", scope: !2358, file: !2342, line: 131, type: !2362)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !2342, line: 130, column: 15)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !2342, line: 130, column: 10)
!2360 = distinct !DILexicalBlock(scope: !2361, file: !2342, line: 129, column: 13)
!2361 = distinct !DILexicalBlock(scope: !2355, file: !2342, line: 129, column: 6)
!2362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2363)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2365)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "HVNAME", file: !2342, line: 75, baseType: !154)
!2366 = !DILocalVariable(name: "tmpXSoff", scope: !2367, file: !2342, line: 183, type: !1197)
!2367 = distinct !DILexicalBlock(scope: !2341, file: !2342, line: 183, column: 5)
!2368 = !DILocation(line: 0, scope: !2341)
!2369 = !DILocation(line: 90, column: 5, scope: !2341)
!2370 = !DILocation(line: 98, column: 15, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2341, file: !2342, line: 98, column: 9)
!2372 = !DILocation(line: 98, column: 9, scope: !2341)
!2373 = !DILocation(line: 99, column: 8, scope: !2371)
!2374 = !DILocation(line: 101, column: 10, scope: !2341)
!2375 = !DILocation(line: 103, column: 9, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2341, file: !2342, line: 103, column: 9)
!2377 = !DILocation(line: 103, column: 9, scope: !2341)
!2378 = !DILocation(line: 104, column: 19, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !2342, line: 103, column: 20)
!2380 = !DILocation(line: 105, column: 14, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2379, file: !2342, line: 105, column: 13)
!2382 = !DILocation(line: 105, column: 13, scope: !2379)
!2383 = !DILocation(line: 106, column: 13, scope: !2381)
!2384 = !DILocation(line: 107, column: 15, scope: !2379)
!2385 = !DILocation(line: 108, column: 5, scope: !2379)
!2386 = !DILocation(line: 110, column: 15, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2376, file: !2342, line: 109, column: 10)
!2388 = !DILocation(line: 0, scope: !2376)
!2389 = !DILocation(line: 113, column: 11, scope: !2341)
!2390 = !DILocation(line: 113, column: 23, scope: !2341)
!2391 = !DILocation(line: 115, column: 9, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2341, file: !2342, line: 115, column: 9)
!2393 = !DILocation(line: 115, column: 13, scope: !2392)
!2394 = !DILocation(line: 115, column: 16, scope: !2392)
!2395 = !DILocation(line: 115, column: 32, scope: !2392)
!2396 = !DILocation(line: 115, column: 41, scope: !2392)
!2397 = !DILocation(line: 115, column: 39, scope: !2392)
!2398 = !DILocation(line: 115, column: 51, scope: !2392)
!2399 = !DILocation(line: 115, column: 54, scope: !2392)
!2400 = !DILocation(line: 116, column: 14, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2392, file: !2342, line: 115, column: 64)
!2402 = !DILocation(line: 117, column: 9, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2401, file: !2342, line: 117, column: 7)
!2404 = !DILocation(line: 117, column: 7, scope: !2401)
!2405 = !DILocation(line: 118, column: 6, scope: !2403)
!2406 = !DILocation(line: 0, scope: !2392)
!2407 = !DILocation(line: 126, column: 15, scope: !2356)
!2408 = !DILocation(line: 126, column: 9, scope: !2341)
!2409 = !DILocation(line: 127, column: 12, scope: !2355)
!2410 = !DILocation(line: 0, scope: !2355)
!2411 = !DILocation(line: 129, column: 6, scope: !2355)
!2412 = !DILocation(line: 130, column: 10, scope: !2360)
!2413 = !DILocation(line: 131, column: 30, scope: !2358)
!2414 = !DILocation(line: 0, scope: !2358)
!2415 = !DILocation(line: 136, column: 3, scope: !2358)
!2416 = !DILocation(line: 141, column: 6, scope: !2358)
!2417 = !DILocation(line: 146, column: 17, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2359, file: !2342, line: 142, column: 11)
!2419 = !DILocation(line: 144, column: 3, scope: !2418)
!2420 = !DILocation(line: 155, column: 9, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2355, file: !2342, line: 155, column: 7)
!2422 = !DILocation(line: 155, column: 7, scope: !2355)
!2423 = !DILocation(line: 157, column: 12, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2421, file: !2342, line: 155, column: 32)
!2425 = !DILocation(line: 158, column: 2, scope: !2424)
!2426 = !DILocation(line: 160, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2355, file: !2342, line: 160, column: 7)
!2428 = !DILocation(line: 160, column: 23, scope: !2427)
!2429 = !DILocation(line: 160, column: 7, scope: !2355)
!2430 = !DILocation(line: 161, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !2342, line: 161, column: 11)
!2432 = distinct !DILexicalBlock(scope: !2427, file: !2342, line: 160, column: 29)
!2433 = !DILocation(line: 161, column: 11, scope: !2432)
!2434 = !DILocation(line: 162, column: 9, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !2342, line: 161, column: 56)
!2436 = !DILocation(line: 163, column: 9, scope: !2435)
!2437 = !DILocation(line: 164, column: 6, scope: !2435)
!2438 = !DILocation(line: 166, column: 9, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2431, file: !2342, line: 165, column: 11)
!2440 = !DILocation(line: 167, column: 9, scope: !2439)
!2441 = !DILocation(line: 0, scope: !2431)
!2442 = !DILocation(line: 170, column: 34, scope: !2432)
!2443 = !DILocation(line: 171, column: 3, scope: !2432)
!2444 = !DILocation(line: 172, column: 3, scope: !2432)
!2445 = !DILocation(line: 169, column: 6, scope: !2432)
!2446 = !DILocation(line: 173, column: 2, scope: !2432)
!2447 = !DILocation(line: 177, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2341, file: !2342, line: 177, column: 9)
!2449 = !DILocation(line: 177, column: 9, scope: !2341)
!2450 = !DILocation(line: 178, column: 10, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !2342, line: 177, column: 30)
!2452 = !DILocation(line: 179, column: 5, scope: !2451)
!2453 = !DILocation(line: 0, scope: !2448)
!2454 = !DILocation(line: 0, scope: !2367)
!2455 = !DILocation(line: 183, column: 5, scope: !2367)
!2456 = !DILocation(line: 184, column: 1, scope: !2341)
!2457 = !DISubprogram(name: "Perl_hv_common", scope: !896, file: !896, line: 1626, type: !2458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!81, !45, !76, !216, !110, !75, !75, !76, !83}
!2460 = !DISubprogram(name: "Perl_sv_mortalcopy_flags", scope: !896, file: !896, line: 4445, type: !2461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!76, !562, !83}
!2463 = !DISubprogram(name: "Perl_upg_version", scope: !2464, file: !2464, line: 165, type: !2465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2464 = !DIFile(filename: "apps/500.perlbench_r/src/vutil.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ecddbe573ce49f1d3c90c54a597f1e85")
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!76, !76, !496}
!2467 = !DISubprogram(name: "Perl_new_version", scope: !2464, file: !2464, line: 164, type: !2468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!76, !76}
!2470 = !DISubprogram(name: "Perl_vcmp", scope: !2464, file: !2464, line: 170, type: !2471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!75, !76, !76}
!2473 = !DISubprogram(name: "Perl_hv_common_key_len", scope: !896, file: !896, line: 1627, type: !2474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!81, !45, !216, !159, !968, !76, !573}
!2476 = !DISubprogram(name: "Perl_vnormal", scope: !2464, file: !2464, line: 168, type: !2468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2477 = !DISubprogram(name: "Perl_vstringify", scope: !2464, file: !2464, line: 169, type: !2468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2478 = distinct !DISubprogram(name: "XS_version_new", scope: !2342, file: !2342, line: 186, type: !508, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2479)
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2494, !2497}
!2480 = !DILocalVariable(name: "cv", arg: 1, scope: !2478, file: !2342, line: 186, type: !438)
!2481 = !DILocalVariable(name: "sp", scope: !2478, file: !2342, line: 189, type: !144)
!2482 = !DILocalVariable(name: "ax", scope: !2478, file: !2342, line: 189, type: !159)
!2483 = !DILocalVariable(name: "mark", scope: !2478, file: !2342, line: 189, type: !144)
!2484 = !DILocalVariable(name: "items", scope: !2478, file: !2342, line: 189, type: !159)
!2485 = !DILocalVariable(name: "vs", scope: !2478, file: !2342, line: 191, type: !76)
!2486 = !DILocalVariable(name: "rv", scope: !2478, file: !2342, line: 195, type: !76)
!2487 = !DILocalVariable(name: "classname", scope: !2478, file: !2342, line: 196, type: !216)
!2488 = !DILocalVariable(name: "len", scope: !2478, file: !2342, line: 197, type: !110)
!2489 = !DILocalVariable(name: "flags", scope: !2478, file: !2342, line: 198, type: !83)
!2490 = !DILocalVariable(name: "svarg0", scope: !2478, file: !2342, line: 199, type: !76)
!2491 = !DILocalVariable(name: "svarg2", scope: !2492, file: !2342, line: 206, type: !76)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !2342, line: 205, column: 13)
!2493 = distinct !DILexicalBlock(scope: !2478, file: !2342, line: 204, column: 24)
!2494 = !DILocalVariable(name: "stash", scope: !2495, file: !2342, line: 238, type: !986)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !2342, line: 236, column: 32)
!2496 = distinct !DILexicalBlock(scope: !2478, file: !2342, line: 236, column: 10)
!2497 = !DILocalVariable(name: "sv_vtc", scope: !2498, file: !2342, line: 259, type: !76)
!2498 = distinct !DILexicalBlock(scope: !2478, file: !2342, line: 259, column: 5)
!2499 = !DILocation(line: 0, scope: !2478)
!2500 = !DILocation(line: 189, column: 5, scope: !2478)
!2501 = !DILocation(line: 197, column: 5, scope: !2478)
!2502 = !DILocation(line: 204, column: 5, scope: !2478)
!2503 = !DILocation(line: 207, column: 14, scope: !2492)
!2504 = !DILocation(line: 208, column: 18, scope: !2492)
!2505 = !DILocation(line: 0, scope: !2492)
!2506 = !DILocation(line: 212, column: 39, scope: !2492)
!2507 = !DILocation(line: 212, column: 9, scope: !2492)
!2508 = !DILocation(line: 217, column: 14, scope: !2493)
!2509 = !DILocation(line: 219, column: 9, scope: !2493)
!2510 = !DILocation(line: 220, column: 12, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2493, file: !2342, line: 220, column: 12)
!2512 = !DILocation(line: 226, column: 14, scope: !2493)
!2513 = !DILocation(line: 227, column: 9, scope: !2493)
!2514 = !DILocation(line: 228, column: 9, scope: !2493)
!2515 = !DILocation(line: 231, column: 9, scope: !2493)
!2516 = !DILocation(line: 232, column: 9, scope: !2493)
!2517 = !DILocation(line: 235, column: 14, scope: !2478)
!2518 = !DILocation(line: 236, column: 10, scope: !2496)
!2519 = !DILocation(line: 236, column: 10, scope: !2478)
!2520 = !DILocation(line: 238, column: 21, scope: !2495)
!2521 = !DILocation(line: 0, scope: !2495)
!2522 = !DILocation(line: 239, column: 14, scope: !2495)
!2523 = !DILocation(line: 240, column: 10, scope: !2495)
!2524 = !DILocation(line: 240, column: 8, scope: !2495)
!2525 = !DILocation(line: 242, column: 12, scope: !2495)
!2526 = !DILocation(line: 246, column: 14, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2496, file: !2342, line: 245, column: 10)
!2528 = !DILocation(line: 247, column: 14, scope: !2527)
!2529 = !DILocation(line: 0, scope: !2496)
!2530 = !DILocation(line: 250, column: 10, scope: !2478)
!2531 = !DILocation(line: 251, column: 10, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2478, file: !2342, line: 251, column: 10)
!2533 = !DILocation(line: 251, column: 14, scope: !2532)
!2534 = !DILocation(line: 252, column: 7, scope: !2532)
!2535 = !DILocation(line: 252, column: 10, scope: !2532)
!2536 = !DILocation(line: 252, column: 38, scope: !2532)
!2537 = !DILocation(line: 251, column: 10, scope: !2478)
!2538 = !DILocation(line: 256, column: 9, scope: !2532)
!2539 = !DILocation(line: 202, column: 8, scope: !2478)
!2540 = !DILocation(line: 0, scope: !2498)
!2541 = !DILocation(line: 259, column: 5, scope: !2498)
!2542 = !DILocation(line: 260, column: 1, scope: !2478)
!2543 = !DISubprogram(name: "Perl_sv_setpvf", scope: !896, file: !896, line: 4617, type: !2544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !562, !572, null}
!2546 = !DISubprogram(name: "Perl_sv_setpvn", scope: !896, file: !896, line: 4641, type: !2547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{null, !562, !572, !904}
!2549 = !DISubprogram(name: "Perl_sv_bless", scope: !896, file: !896, line: 4178, type: !2550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!76, !562, !1771}
!2552 = distinct !DISubprogram(name: "XS_version_stringify", scope: !2342, file: !2342, line: 272, type: !508, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2553)
!2553 = !{!2554, !2555, !2556, !2557, !2558, !2559, !2561, !2563}
!2554 = !DILocalVariable(name: "cv", arg: 1, scope: !2552, file: !2342, line: 272, type: !438)
!2555 = !DILocalVariable(name: "sp", scope: !2552, file: !2342, line: 275, type: !144)
!2556 = !DILocalVariable(name: "ax", scope: !2552, file: !2342, line: 275, type: !159)
!2557 = !DILocalVariable(name: "mark", scope: !2552, file: !2342, line: 275, type: !144)
!2558 = !DILocalVariable(name: "items", scope: !2552, file: !2342, line: 275, type: !159)
!2559 = !DILocalVariable(name: "lobj", scope: !2560, file: !2342, line: 281, type: !76)
!2560 = distinct !DILexicalBlock(scope: !2552, file: !2342, line: 279, column: 6)
!2561 = !DILocalVariable(name: "sv_vtc", scope: !2562, file: !2342, line: 285, type: !76)
!2562 = distinct !DILexicalBlock(scope: !2560, file: !2342, line: 285, column: 4)
!2563 = !DILocalVariable(name: "sv_vtc", scope: !2564, file: !2342, line: 287, type: !76)
!2564 = distinct !DILexicalBlock(scope: !2560, file: !2342, line: 287, column: 4)
!2565 = !DILocation(line: 0, scope: !2552)
!2566 = !DILocation(line: 275, column: 6, scope: !2552)
!2567 = !DILocation(line: 276, column: 16, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2552, file: !2342, line: 276, column: 10)
!2569 = !DILocation(line: 276, column: 10, scope: !2552)
!2570 = !DILocation(line: 277, column: 3, scope: !2568)
!2571 = !DILocation(line: 285, column: 4, scope: !2562)
!2572 = !DILocation(line: 0, scope: !2560)
!2573 = !DILocation(line: 0, scope: !2562)
!2574 = !DILocation(line: 285, column: 4, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2562, file: !2342, line: 285, column: 4)
!2576 = !DILocation(line: 285, column: 4, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2575, file: !2342, line: 285, column: 4)
!2578 = !DILocation(line: 278, column: 9, scope: !2552)
!2579 = !DILocation(line: 287, column: 4, scope: !2564)
!2580 = !DILocation(line: 0, scope: !2564)
!2581 = !DILocation(line: 289, column: 1, scope: !2552)
!2582 = distinct !DISubprogram(name: "XS_version_numify", scope: !2342, file: !2342, line: 291, type: !508, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2583)
!2583 = !{!2584, !2585, !2586, !2587, !2588, !2589, !2591, !2593}
!2584 = !DILocalVariable(name: "cv", arg: 1, scope: !2582, file: !2342, line: 291, type: !438)
!2585 = !DILocalVariable(name: "sp", scope: !2582, file: !2342, line: 294, type: !144)
!2586 = !DILocalVariable(name: "ax", scope: !2582, file: !2342, line: 294, type: !159)
!2587 = !DILocalVariable(name: "mark", scope: !2582, file: !2342, line: 294, type: !144)
!2588 = !DILocalVariable(name: "items", scope: !2582, file: !2342, line: 294, type: !159)
!2589 = !DILocalVariable(name: "lobj", scope: !2590, file: !2342, line: 300, type: !76)
!2590 = distinct !DILexicalBlock(scope: !2582, file: !2342, line: 298, column: 6)
!2591 = !DILocalVariable(name: "sv_vtc", scope: !2592, file: !2342, line: 304, type: !76)
!2592 = distinct !DILexicalBlock(scope: !2590, file: !2342, line: 304, column: 4)
!2593 = !DILocalVariable(name: "sv_vtc", scope: !2594, file: !2342, line: 305, type: !76)
!2594 = distinct !DILexicalBlock(scope: !2590, file: !2342, line: 305, column: 4)
!2595 = !DILocation(line: 0, scope: !2582)
!2596 = !DILocation(line: 294, column: 6, scope: !2582)
!2597 = !DILocation(line: 295, column: 16, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2582, file: !2342, line: 295, column: 10)
!2599 = !DILocation(line: 295, column: 10, scope: !2582)
!2600 = !DILocation(line: 296, column: 3, scope: !2598)
!2601 = !DILocation(line: 304, column: 4, scope: !2592)
!2602 = !DILocation(line: 0, scope: !2590)
!2603 = !DILocation(line: 0, scope: !2592)
!2604 = !DILocation(line: 304, column: 4, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2592, file: !2342, line: 304, column: 4)
!2606 = !DILocation(line: 304, column: 4, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2605, file: !2342, line: 304, column: 4)
!2608 = !DILocation(line: 297, column: 9, scope: !2582)
!2609 = !DILocation(line: 305, column: 4, scope: !2594)
!2610 = !DILocation(line: 0, scope: !2594)
!2611 = !DILocation(line: 307, column: 1, scope: !2582)
!2612 = !DISubprogram(name: "Perl_vnumify", scope: !2464, file: !2464, line: 167, type: !2468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2613 = distinct !DISubprogram(name: "XS_version_normal", scope: !2342, file: !2342, line: 309, type: !508, scopeLine: 310, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2614)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2622, !2624}
!2615 = !DILocalVariable(name: "cv", arg: 1, scope: !2613, file: !2342, line: 309, type: !438)
!2616 = !DILocalVariable(name: "sp", scope: !2613, file: !2342, line: 312, type: !144)
!2617 = !DILocalVariable(name: "ax", scope: !2613, file: !2342, line: 312, type: !159)
!2618 = !DILocalVariable(name: "mark", scope: !2613, file: !2342, line: 312, type: !144)
!2619 = !DILocalVariable(name: "items", scope: !2613, file: !2342, line: 312, type: !159)
!2620 = !DILocalVariable(name: "ver", scope: !2621, file: !2342, line: 318, type: !76)
!2621 = distinct !DILexicalBlock(scope: !2613, file: !2342, line: 316, column: 6)
!2622 = !DILocalVariable(name: "sv_vtc", scope: !2623, file: !2342, line: 322, type: !76)
!2623 = distinct !DILexicalBlock(scope: !2621, file: !2342, line: 322, column: 4)
!2624 = !DILocalVariable(name: "sv_vtc", scope: !2625, file: !2342, line: 324, type: !76)
!2625 = distinct !DILexicalBlock(scope: !2621, file: !2342, line: 324, column: 4)
!2626 = !DILocation(line: 0, scope: !2613)
!2627 = !DILocation(line: 312, column: 6, scope: !2613)
!2628 = !DILocation(line: 313, column: 16, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2613, file: !2342, line: 313, column: 10)
!2630 = !DILocation(line: 313, column: 10, scope: !2613)
!2631 = !DILocation(line: 314, column: 3, scope: !2629)
!2632 = !DILocation(line: 322, column: 4, scope: !2623)
!2633 = !DILocation(line: 0, scope: !2621)
!2634 = !DILocation(line: 0, scope: !2623)
!2635 = !DILocation(line: 322, column: 4, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2623, file: !2342, line: 322, column: 4)
!2637 = !DILocation(line: 322, column: 4, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2636, file: !2342, line: 322, column: 4)
!2639 = !DILocation(line: 315, column: 9, scope: !2613)
!2640 = !DILocation(line: 324, column: 4, scope: !2625)
!2641 = !DILocation(line: 0, scope: !2625)
!2642 = !DILocation(line: 326, column: 1, scope: !2613)
!2643 = distinct !DISubprogram(name: "XS_version_vcmp", scope: !2342, file: !2342, line: 328, type: !508, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2644)
!2644 = !{!2645, !2646, !2647, !2648, !2649, !2650, !2652, !2654, !2656, !2657, !2658, !2659}
!2645 = !DILocalVariable(name: "cv", arg: 1, scope: !2643, file: !2342, line: 328, type: !438)
!2646 = !DILocalVariable(name: "sp", scope: !2643, file: !2342, line: 331, type: !144)
!2647 = !DILocalVariable(name: "ax", scope: !2643, file: !2342, line: 331, type: !159)
!2648 = !DILocalVariable(name: "mark", scope: !2643, file: !2342, line: 331, type: !144)
!2649 = !DILocalVariable(name: "items", scope: !2643, file: !2342, line: 331, type: !159)
!2650 = !DILocalVariable(name: "lobj", scope: !2651, file: !2342, line: 337, type: !76)
!2651 = distinct !DILexicalBlock(scope: !2643, file: !2342, line: 335, column: 6)
!2652 = !DILocalVariable(name: "sv_vtc", scope: !2653, file: !2342, line: 341, type: !76)
!2653 = distinct !DILexicalBlock(scope: !2651, file: !2342, line: 341, column: 4)
!2654 = !DILocalVariable(name: "rs", scope: !2655, file: !2342, line: 343, type: !76)
!2655 = distinct !DILexicalBlock(scope: !2651, file: !2342, line: 342, column: 4)
!2656 = !DILocalVariable(name: "rvs", scope: !2655, file: !2342, line: 344, type: !76)
!2657 = !DILocalVariable(name: "robj", scope: !2655, file: !2342, line: 345, type: !76)
!2658 = !DILocalVariable(name: "swap", scope: !2655, file: !2342, line: 346, type: !1197)
!2659 = !DILocalVariable(name: "sv_vtc", scope: !2660, file: !2342, line: 363, type: !76)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !2342, line: 363, column: 9)
!2661 = !DILocation(line: 0, scope: !2643)
!2662 = !DILocation(line: 331, column: 6, scope: !2643)
!2663 = !DILocation(line: 332, column: 16, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2643, file: !2342, line: 332, column: 10)
!2665 = !DILocation(line: 332, column: 10, scope: !2643)
!2666 = !DILocation(line: 333, column: 3, scope: !2664)
!2667 = !DILocation(line: 341, column: 4, scope: !2653)
!2668 = !DILocation(line: 0, scope: !2651)
!2669 = !DILocation(line: 0, scope: !2653)
!2670 = !DILocation(line: 341, column: 4, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2653, file: !2342, line: 341, column: 4)
!2672 = !DILocation(line: 341, column: 4, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2671, file: !2342, line: 341, column: 4)
!2674 = !DILocation(line: 345, column: 21, scope: !2655)
!2675 = !DILocation(line: 0, scope: !2655)
!2676 = !DILocation(line: 346, column: 30, scope: !2655)
!2677 = !DILocation(line: 348, column: 15, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2655, file: !2342, line: 348, column: 14)
!2679 = !DILocation(line: 348, column: 14, scope: !2655)
!2680 = !DILocation(line: 350, column: 14, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2678, file: !2342, line: 349, column: 9)
!2682 = !DILocation(line: 351, column: 9, scope: !2681)
!2683 = !DILocation(line: 352, column: 15, scope: !2655)
!2684 = !DILocation(line: 354, column: 14, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2655, file: !2342, line: 354, column: 14)
!2686 = !DILocation(line: 354, column: 14, scope: !2655)
!2687 = !DILocation(line: 356, column: 12, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2685, file: !2342, line: 355, column: 9)
!2689 = !DILocation(line: 357, column: 9, scope: !2688)
!2690 = !DILocation(line: 360, column: 12, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2685, file: !2342, line: 359, column: 9)
!2692 = !DILocation(line: 0, scope: !2685)
!2693 = !DILocation(line: 334, column: 9, scope: !2643)
!2694 = !DILocation(line: 0, scope: !2660)
!2695 = !DILocation(line: 363, column: 9, scope: !2660)
!2696 = !DILocation(line: 366, column: 1, scope: !2643)
!2697 = !DISubprogram(name: "Perl_sv_2iv_flags", scope: !896, file: !896, line: 4109, type: !2698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!93, !562, !594}
!2700 = distinct !DISubprogram(name: "XS_version_boolean", scope: !2342, file: !2342, line: 368, type: !508, scopeLine: 369, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2701)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2710, !2712}
!2702 = !DILocalVariable(name: "cv", arg: 1, scope: !2700, file: !2342, line: 368, type: !438)
!2703 = !DILocalVariable(name: "sp", scope: !2700, file: !2342, line: 371, type: !144)
!2704 = !DILocalVariable(name: "ax", scope: !2700, file: !2342, line: 371, type: !159)
!2705 = !DILocalVariable(name: "mark", scope: !2700, file: !2342, line: 371, type: !144)
!2706 = !DILocalVariable(name: "items", scope: !2700, file: !2342, line: 371, type: !159)
!2707 = !DILocalVariable(name: "lobj", scope: !2700, file: !2342, line: 373, type: !76)
!2708 = !DILocalVariable(name: "sv_vtc", scope: !2709, file: !2342, line: 380, type: !76)
!2709 = distinct !DILexicalBlock(scope: !2700, file: !2342, line: 380, column: 5)
!2710 = !DILocalVariable(name: "rs", scope: !2711, file: !2342, line: 382, type: !562)
!2711 = distinct !DILexicalBlock(scope: !2700, file: !2342, line: 381, column: 5)
!2712 = !DILocalVariable(name: "sv_vtc", scope: !2713, file: !2342, line: 389, type: !76)
!2713 = distinct !DILexicalBlock(scope: !2711, file: !2342, line: 389, column: 2)
!2714 = !DILocation(line: 0, scope: !2700)
!2715 = !DILocation(line: 371, column: 5, scope: !2700)
!2716 = !DILocation(line: 377, column: 15, scope: !2717)
!2717 = distinct !DILexicalBlock(scope: !2700, file: !2342, line: 377, column: 9)
!2718 = !DILocation(line: 377, column: 9, scope: !2700)
!2719 = !DILocation(line: 378, column: 2, scope: !2717)
!2720 = !DILocation(line: 380, column: 5, scope: !2709)
!2721 = !DILocation(line: 0, scope: !2709)
!2722 = !DILocation(line: 380, column: 5, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2709, file: !2342, line: 380, column: 5)
!2724 = !DILocation(line: 380, column: 5, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2723, file: !2342, line: 380, column: 5)
!2726 = !DILocation(line: 379, column: 8, scope: !2700)
!2727 = !DILocation(line: 383, column: 6, scope: !2711)
!2728 = !DILocation(line: 0, scope: !2711)
!2729 = !DILocation(line: 0, scope: !2713)
!2730 = !DILocation(line: 389, column: 2, scope: !2713)
!2731 = !DILocation(line: 391, column: 1, scope: !2700)
!2732 = !DISubprogram(name: "Perl_newSVpvn", scope: !896, file: !896, line: 3112, type: !2733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!76, !572, !904}
!2735 = distinct !DISubprogram(name: "XS_version_noop", scope: !2342, file: !2342, line: 393, type: !508, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2736)
!2736 = !{!2737, !2738, !2739, !2740, !2741, !2742}
!2737 = !DILocalVariable(name: "cv", arg: 1, scope: !2735, file: !2342, line: 393, type: !438)
!2738 = !DILocalVariable(name: "sp", scope: !2735, file: !2342, line: 396, type: !144)
!2739 = !DILocalVariable(name: "ax", scope: !2735, file: !2342, line: 396, type: !159)
!2740 = !DILocalVariable(name: "mark", scope: !2735, file: !2342, line: 396, type: !144)
!2741 = !DILocalVariable(name: "items", scope: !2735, file: !2342, line: 396, type: !159)
!2742 = !DILocalVariable(name: "tmpXSoff", scope: !2743, file: !2342, line: 403, type: !1197)
!2743 = distinct !DILexicalBlock(scope: !2744, file: !2342, line: 403, column: 5)
!2744 = distinct !DILexicalBlock(scope: !2735, file: !2342, line: 403, column: 5)
!2745 = !DILocation(line: 0, scope: !2735)
!2746 = !DILocation(line: 396, column: 5, scope: !2735)
!2747 = !DILocation(line: 397, column: 15, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2735, file: !2342, line: 397, column: 9)
!2749 = !DILocation(line: 397, column: 9, scope: !2735)
!2750 = !DILocation(line: 398, column: 2, scope: !2748)
!2751 = !DILocation(line: 399, column: 9, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2735, file: !2342, line: 399, column: 9)
!2753 = !DILocation(line: 399, column: 9, scope: !2735)
!2754 = !DILocation(line: 0, scope: !2752)
!2755 = !DILocation(line: 0, scope: !2743)
!2756 = !DILocation(line: 403, column: 5, scope: !2743)
!2757 = !DILocation(line: 404, column: 1, scope: !2735)
!2758 = distinct !DISubprogram(name: "XS_version_is_alpha", scope: !2342, file: !2342, line: 428, type: !508, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2759)
!2759 = !{!2760}
!2760 = !DILocalVariable(name: "cv", arg: 1, scope: !2758, file: !2342, line: 428, type: !438)
!2761 = !DILocation(line: 0, scope: !2758)
!2762 = !DILocation(line: 430, column: 5, scope: !2758)
!2763 = !DILocation(line: 431, column: 1, scope: !2758)
!2764 = distinct !DISubprogram(name: "S_version_check_key", scope: !2342, file: !2342, line: 408, type: !2765, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{null, !438, !216, !75}
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2777, !2778}
!2768 = !DILocalVariable(name: "cv", arg: 1, scope: !2764, file: !2342, line: 408, type: !438)
!2769 = !DILocalVariable(name: "key", arg: 2, scope: !2764, file: !2342, line: 408, type: !216)
!2770 = !DILocalVariable(name: "keylen", arg: 3, scope: !2764, file: !2342, line: 408, type: !75)
!2771 = !DILocalVariable(name: "sp", scope: !2764, file: !2342, line: 411, type: !144)
!2772 = !DILocalVariable(name: "ax", scope: !2764, file: !2342, line: 411, type: !159)
!2773 = !DILocalVariable(name: "mark", scope: !2764, file: !2342, line: 411, type: !144)
!2774 = !DILocalVariable(name: "items", scope: !2764, file: !2342, line: 411, type: !159)
!2775 = !DILocalVariable(name: "lobj", scope: !2776, file: !2342, line: 415, type: !76)
!2776 = distinct !DILexicalBlock(scope: !2764, file: !2342, line: 414, column: 5)
!2777 = !DILocalVariable(name: "ret", scope: !2776, file: !2342, line: 416, type: !76)
!2778 = !DILocalVariable(name: "sv_vtc", scope: !2779, file: !2342, line: 417, type: !76)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !2342, line: 417, column: 2)
!2780 = !DILocation(line: 0, scope: !2764)
!2781 = !DILocation(line: 411, column: 5, scope: !2764)
!2782 = !DILocation(line: 412, column: 15, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2764, file: !2342, line: 412, column: 9)
!2784 = !DILocation(line: 412, column: 9, scope: !2764)
!2785 = !DILocation(line: 413, column: 2, scope: !2783)
!2786 = !DILocation(line: 415, column: 13, scope: !2776)
!2787 = !DILocation(line: 0, scope: !2776)
!2788 = !DILocation(line: 0, scope: !2779)
!2789 = !DILocation(line: 417, column: 2, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2779, file: !2342, line: 417, column: 2)
!2791 = !DILocation(line: 417, column: 2, scope: !2779)
!2792 = !DILocation(line: 417, column: 2, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2790, file: !2342, line: 417, column: 2)
!2794 = !DILocation(line: 418, column: 7, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2776, file: !2342, line: 418, column: 7)
!2796 = !DILocation(line: 422, column: 2, scope: !2776)
!2797 = !DILocation(line: 423, column: 2, scope: !2776)
!2798 = !DILocation(line: 426, column: 1, scope: !2764)
!2799 = distinct !DISubprogram(name: "XS_version_qv", scope: !2342, file: !2342, line: 433, type: !508, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2800)
!2800 = !{!2801, !2802, !2803, !2804, !2805, !2806, !2808, !2809, !2810, !2811, !2812, !2813, !2816}
!2801 = !DILocalVariable(name: "cv", arg: 1, scope: !2799, file: !2342, line: 433, type: !438)
!2802 = !DILocalVariable(name: "sp", scope: !2799, file: !2342, line: 436, type: !144)
!2803 = !DILocalVariable(name: "ax", scope: !2799, file: !2342, line: 436, type: !159)
!2804 = !DILocalVariable(name: "mark", scope: !2799, file: !2342, line: 436, type: !144)
!2805 = !DILocalVariable(name: "items", scope: !2799, file: !2342, line: 436, type: !159)
!2806 = !DILocalVariable(name: "ver", scope: !2807, file: !2342, line: 440, type: !76)
!2807 = distinct !DILexicalBlock(scope: !2799, file: !2342, line: 439, column: 5)
!2808 = !DILocalVariable(name: "sv0", scope: !2807, file: !2342, line: 441, type: !76)
!2809 = !DILocalVariable(name: "rv", scope: !2807, file: !2342, line: 442, type: !76)
!2810 = !DILocalVariable(name: "len", scope: !2807, file: !2342, line: 443, type: !110)
!2811 = !DILocalVariable(name: "classname", scope: !2807, file: !2342, line: 444, type: !216)
!2812 = !DILocalVariable(name: "flags", scope: !2807, file: !2342, line: 445, type: !83)
!2813 = !DILocalVariable(name: "sv1", scope: !2814, file: !2342, line: 447, type: !76)
!2814 = distinct !DILexicalBlock(scope: !2815, file: !2342, line: 446, column: 27)
!2815 = distinct !DILexicalBlock(scope: !2807, file: !2342, line: 446, column: 14)
!2816 = !DILocalVariable(name: "stash", scope: !2817, file: !2342, line: 456, type: !986)
!2817 = distinct !DILexicalBlock(scope: !2818, file: !2342, line: 455, column: 37)
!2818 = distinct !DILexicalBlock(scope: !2814, file: !2342, line: 455, column: 18)
!2819 = !DILocation(line: 0, scope: !2799)
!2820 = !DILocation(line: 436, column: 5, scope: !2799)
!2821 = !DILocation(line: 440, column: 13, scope: !2807)
!2822 = !DILocation(line: 0, scope: !2807)
!2823 = !DILocation(line: 443, column: 9, scope: !2807)
!2824 = !DILocation(line: 443, column: 16, scope: !2807)
!2825 = !DILocation(line: 446, column: 20, scope: !2815)
!2826 = !DILocation(line: 446, column: 14, scope: !2807)
!2827 = !DILocation(line: 447, column: 17, scope: !2814)
!2828 = !DILocation(line: 0, scope: !2814)
!2829 = !DILocation(line: 448, column: 6, scope: !2814)
!2830 = !DILocation(line: 449, column: 10, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2814, file: !2342, line: 449, column: 10)
!2832 = !DILocation(line: 453, column: 3, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2831, file: !2342, line: 452, column: 11)
!2834 = !DILocation(line: 455, column: 18, scope: !2818)
!2835 = !DILocation(line: 455, column: 18, scope: !2814)
!2836 = !DILocation(line: 456, column: 36, scope: !2817)
!2837 = !DILocation(line: 0, scope: !2817)
!2838 = !DILocation(line: 457, column: 29, scope: !2817)
!2839 = !DILocation(line: 458, column: 29, scope: !2817)
!2840 = !DILocation(line: 458, column: 27, scope: !2817)
!2841 = !DILocation(line: 460, column: 29, scope: !2817)
!2842 = !DILocation(line: 464, column: 21, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2818, file: !2342, line: 463, column: 18)
!2844 = !DILocation(line: 465, column: 29, scope: !2843)
!2845 = !DILocation(line: 468, column: 8, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2807, file: !2342, line: 468, column: 7)
!2847 = !DILocation(line: 468, column: 7, scope: !2807)
!2848 = !DILocation(line: 469, column: 11, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2846, file: !2342, line: 468, column: 21)
!2850 = !DILocation(line: 470, column: 6, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !2342, line: 470, column: 6)
!2852 = distinct !DILexicalBlock(scope: !2849, file: !2342, line: 470, column: 6)
!2853 = !DILocation(line: 470, column: 6, scope: !2852)
!2854 = !DILocation(line: 470, column: 6, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2851, file: !2342, line: 470, column: 6)
!2856 = !DILocation(line: 471, column: 6, scope: !2849)
!2857 = !DILocation(line: 472, column: 2, scope: !2849)
!2858 = !DILocation(line: 473, column: 11, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2846, file: !2342, line: 472, column: 9)
!2860 = !DILocation(line: 0, scope: !2846)
!2861 = !DILocation(line: 475, column: 18, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2807, file: !2342, line: 475, column: 7)
!2863 = !DILocation(line: 475, column: 22, scope: !2862)
!2864 = !DILocation(line: 475, column: 26, scope: !2862)
!2865 = !DILocation(line: 476, column: 17, scope: !2862)
!2866 = !DILocation(line: 476, column: 20, scope: !2862)
!2867 = !DILocation(line: 475, column: 7, scope: !2807)
!2868 = !DILocation(line: 480, column: 6, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2862, file: !2342, line: 476, column: 51)
!2870 = !DILocation(line: 482, column: 9, scope: !2869)
!2871 = !DILocation(line: 438, column: 8, scope: !2799)
!2872 = !DILocation(line: 483, column: 2, scope: !2807)
!2873 = !DILocation(line: 484, column: 5, scope: !2799)
!2874 = !DILocation(line: 485, column: 5, scope: !2799)
!2875 = !DILocation(line: 487, column: 1, scope: !2799)
!2876 = !DISubprogram(name: "Perl_mg_find", scope: !896, file: !896, line: 2648, type: !2877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!60, !600, !75}
!2879 = !DISubprogram(name: "Perl_sv_setsv_flags", scope: !896, file: !896, line: 4683, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !76, !76, !594}
!2882 = distinct !DISubprogram(name: "XS_version_is_qv", scope: !2342, file: !2342, line: 490, type: !508, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2883)
!2883 = !{!2884}
!2884 = !DILocalVariable(name: "cv", arg: 1, scope: !2882, file: !2342, line: 490, type: !438)
!2885 = !DILocation(line: 0, scope: !2882)
!2886 = !DILocation(line: 492, column: 5, scope: !2882)
!2887 = !DILocation(line: 493, column: 1, scope: !2882)
!2888 = !DILocation(line: 0, scope: !2)
!2889 = !DILocation(line: 1095, column: 5, scope: !2)
!2890 = !DILocation(line: 1096, column: 2, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2, file: !3, line: 1095, column: 8)
!2892 = !DILocation(line: 1097, column: 14, scope: !2)
!2893 = !DILocation(line: 1097, column: 21, scope: !2)
!2894 = !DILocation(line: 1097, column: 5, scope: !2891)
!2895 = distinct !{!2895, !2889, !2896, !1721, !1722}
!2896 = !DILocation(line: 1097, column: 26, scope: !2)
!2897 = !DILocation(line: 1103, column: 28, scope: !860)
!2898 = !DILocation(line: 0, scope: !860)
!2899 = !DILocation(line: 1104, column: 29, scope: !860)
!2900 = !DILocation(line: 1106, column: 9, scope: !860)
!2901 = !DILocation(line: 1109, column: 9, scope: !860)
!2902 = !DILocation(line: 1118, column: 6, scope: !863)
!2903 = !DILocation(line: 0, scope: !863)
!2904 = !DILocation(line: 1119, column: 20, scope: !863)
!2905 = !DILocation(line: 1120, column: 19, scope: !863)
!2906 = !DILocation(line: 1121, column: 2, scope: !863)
!2907 = !DILocation(line: 1122, column: 10, scope: !863)
!2908 = !DILocation(line: 1123, column: 2, scope: !863)
!2909 = !DILocation(line: 1125, column: 1, scope: !2)
!2910 = !DISubprogram(name: "Perl_newXS_flags", scope: !896, file: !896, line: 3168, type: !2911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2911 = !DISubroutineType(types: !2912)
!2912 = !{!438, !216, !851, !572, !572, !83}
!2913 = !DISubprogram(name: "Perl_get_cv", scope: !896, file: !896, line: 1277, type: !2914, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!438, !216, !159}
!2916 = !DISubprogram(name: "Perl_cv_set_call_checker", scope: !896, file: !896, line: 834, type: !2917, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{null, !438, !2919, !76}
!2919 = !DIDerivedType(tag: DW_TAG_typedef, name: "Perl_call_checker", file: !446, line: 302, baseType: !2920)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!461, !461, !371, !76}
!2923 = distinct !DISubprogram(name: "optimize_out_native_convert_function", scope: !3, file: !3, line: 1040, type: !2921, scopeLine: 1043, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !2924)
!2924 = !{!2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2925 = !DILocalVariable(name: "entersubop", arg: 1, scope: !2923, file: !3, line: 1040, type: !461)
!2926 = !DILocalVariable(name: "namegv", arg: 2, scope: !2923, file: !3, line: 1041, type: !371)
!2927 = !DILocalVariable(name: "protosv", arg: 3, scope: !2923, file: !3, line: 1042, type: !76)
!2928 = !DILocalVariable(name: "pushop", scope: !2923, file: !3, line: 1052, type: !461)
!2929 = !DILocalVariable(name: "argop", scope: !2923, file: !3, line: 1052, type: !461)
!2930 = !DILocalVariable(name: "parent", scope: !2923, file: !3, line: 1053, type: !461)
!2931 = !DILocalVariable(name: "prototype", scope: !2923, file: !3, line: 1054, type: !76)
!2932 = !DILocation(line: 0, scope: !2923)
!2933 = !DILocation(line: 1054, column: 21, scope: !2923)
!2934 = !DILocation(line: 1060, column: 18, scope: !2923)
!2935 = !DILocation(line: 0, scope: !1991, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 1063, column: 5, scope: !2923)
!2937 = !DILocation(line: 161, column: 9, scope: !1997, inlinedAt: !2936)
!2938 = !DILocation(line: 161, column: 9, scope: !1991, inlinedAt: !2936)
!2939 = !DILocation(line: 162, column: 11, scope: !1996, inlinedAt: !2936)
!2940 = !DILocation(line: 0, scope: !1996, inlinedAt: !2936)
!2941 = !DILocation(line: 163, column: 6, scope: !2005, inlinedAt: !2936)
!2942 = !DILocation(line: 163, column: 6, scope: !1996, inlinedAt: !2936)
!2943 = !DILocation(line: 164, column: 24, scope: !2005, inlinedAt: !2936)
!2944 = !DILocation(line: 164, column: 19, scope: !2005, inlinedAt: !2936)
!2945 = !DILocation(line: 164, column: 6, scope: !2005, inlinedAt: !2936)
!2946 = !DILocation(line: 166, column: 6, scope: !2005, inlinedAt: !2936)
!2947 = !DILocation(line: 1065, column: 34, scope: !2923)
!2948 = !DILocation(line: 1066, column: 11, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1066, column: 9)
!2950 = !DILocation(line: 1066, column: 9, scope: !2923)
!2951 = !DILocation(line: 1068, column: 34, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1066, column: 34)
!2953 = !DILocation(line: 1070, column: 13, scope: !2923)
!2954 = !DILocation(line: 1074, column: 14, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 1074, column: 12)
!2956 = !DILocation(line: 1075, column: 9, scope: !2955)
!2957 = !DILocation(line: 1075, column: 14, scope: !2955)
!2958 = !DILocation(line: 1076, column: 9, scope: !2955)
!2959 = !DILocation(line: 1076, column: 14, scope: !2955)
!2960 = !DILocation(line: 1074, column: 12, scope: !2923)
!2961 = !DILocation(line: 1082, column: 11, scope: !2923)
!2962 = !DILocation(line: 1084, column: 5, scope: !2923)
!2963 = !DILocation(line: 1085, column: 5, scope: !2923)
!2964 = !DILocation(line: 1086, column: 1, scope: !2923)
!2965 = !DISubprogram(name: "Perl_newCONSTSUB", scope: !896, file: !896, line: 2869, type: !2966, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!438, !45, !216, !76}
!2968 = !DISubprogram(name: "Perl_get_hv", scope: !896, file: !896, line: 1297, type: !2969, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!45, !216, !159}
!2971 = !DISubprogram(name: "Perl_safesysfree", scope: !896, file: !896, line: 3750, type: !499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2972 = !DISubprogram(name: "Perl_mro_meta_init", scope: !896, file: !896, line: 2735, type: !2973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!775, !45}
!2975 = !DISubprogram(name: "Perl_mro_get_linear_isa", scope: !896, file: !896, line: 2719, type: !2976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!256, !45}
!2978 = !DISubprogram(name: "Perl_cvgv_from_hek", scope: !896, file: !896, line: 858, type: !1167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2979 = !DISubprogram(name: "Perl_mg_size", scope: !896, file: !896, line: 2697, type: !2980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!159, !76}
!2982 = !DISubprogram(name: "Perl_sv_free2", scope: !896, file: !896, line: 4371, type: !2983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !562, !573}
!2985 = !DISubprogram(name: "Perl_ck_entersub_args_proto", scope: !896, file: !896, line: 458, type: !2921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2986 = !DISubprogram(name: "Perl_op_sibling_splice", scope: !896, file: !896, line: 3273, type: !2987, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!461, !461, !461, !75, !461}
!2989 = !DISubprogram(name: "Perl_op_free", scope: !896, file: !896, line: 3256, type: !2990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !900)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !461}
