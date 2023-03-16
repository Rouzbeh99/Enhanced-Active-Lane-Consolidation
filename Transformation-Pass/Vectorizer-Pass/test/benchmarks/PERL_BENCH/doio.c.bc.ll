; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/doio.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/doio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu, ptr, %union.anon.15, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union._xmgu = type { ptr }
%union.anon.14 = type { i64 }
%union._xivu = type { i64 }
%union.anon.15 = type { ptr }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.17, %union._xivu }
%union.anon.17 = type { i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.8 }
%union.anon.8 = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.io = type { ptr, i32, i32, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.7, %union._xivu, %union._xnvu }
%union.anon.7 = type { i64 }
%union._xnvu = type { double }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.18, %union._xivu }
%union.anon.18 = type { i64 }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }

@.str = private unnamed_addr constant [47 x i8] c"panic: sysopen with multiple args, num_svs=%ld\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sysopen\00", align 1
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_charclass = external local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pathname\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Unknown open() mode '%.*s'\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Missing command in piped open\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"piped open\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Can't open bidirectional pipe\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"More than one argument to '%c&' open\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"More than one argument to '>%c' open\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"More than one argument to '<%c' open\00", align 1
@PL_argvoutgv = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"ARGVOUT\00", align 1
@PL_inplace = external local_unnamed_addr global ptr, align 8
@PL_argvout_stack = external global ptr, align 8
@PL_defoutgv = external local_unnamed_addr global ptr, align 8
@PL_filemode = external local_unnamed_addr global i32, align 4
@PL_oldname = external local_unnamed_addr global ptr, align 8
@PL_lastfd = external local_unnamed_addr global i32, align 4
@PL_Sv = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"inplace open\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"STDOUT\00", align 1
@PL_statbuf = external global %struct.stat, align 8
@.str.16 = private unnamed_addr constant [48 x i8] c"Can't do inplace edit: %s is not a regular file\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Can't rename %s to %-p: %s, skipping file\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"Can't remove %s: %s, skipping file\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"Can't do inplace edit on %s: %s\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"Can't open %s: %s\00", align 1
@PL_argvgv = external local_unnamed_addr global ptr, align 8
@PL_statusvalue_posix = external local_unnamed_addr global i32, align 4
@PL_statusvalue = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"Warning: unable to close filehandle %2p properly: %-p\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.24 = private unnamed_addr constant [50 x i8] c"Warning: unable to close filehandle properly: %-p\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"Wide character in %s\00", align 1
@PL_op_desc = external local_unnamed_addr constant [0 x ptr], align 8
@.str.28 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_laststatval = external local_unnamed_addr global i32, align 4
@PL_laststype = external local_unnamed_addr global i16, align 2
@PL_statgv = external local_unnamed_addr global ptr, align 8
@PL_statname = external local_unnamed_addr global ptr, align 8
@PL_statcache = external global %struct.stat, align 8
@PL_warn_nl = external constant [0 x i8], align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"The stat preceding -l _ wasn't an lstat\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"Use of -l on filehandle %2p\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Use of -l on filehandle\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@PL_Argv = external local_unnamed_addr global ptr, align 8
@PL_sigfpe_saved = external local_unnamed_addr global ptr, align 8
@PL_Cmd = external local_unnamed_addr global ptr, align 8
@PL_cshname = external constant [0 x i8], align 1
@.str.35 = private unnamed_addr constant [4 x i8] c" -c\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"csh\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"$&*(){}[]'\22;\\|?<>~`\0A\00", align 1
@PL_sh_path = external constant [0 x i8], align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"sh\00", align 1
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@PL_no_func = external constant [0 x i8], align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"fchmod\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@PL_unsafe = external local_unnamed_addr global i8, align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"glob\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c" -cf 'set nonomatch; glob \00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"' 2>/dev/null |\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"ENV\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@PL_last_in_gv = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [36 x i8] c"glob failed (can't start child: %s)\00", align 1
@PL_forkprocess = external local_unnamed_addr global i32, align 4
@PL_maxsysfd = external local_unnamed_addr global i32, align 4
@PL_stderrgv = external local_unnamed_addr global ptr, align 8
@.str.53 = private unnamed_addr constant [51 x i8] c"Warning: unable to close filehandle %2p properly.\0A\00", align 1
@.str.54 = private unnamed_addr constant [42 x i8] c"Invalid \\0 character in %s for %s: %s\\0%s\00", align 1
@.str.55 = private unnamed_addr constant [48 x i8] c"Filehandle STD%s reopened as %2p only for input\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"ERR\00", align 1
@.str.58 = private unnamed_addr constant [49 x i8] c"Filehandle STDIN reopened as %2p only for output\00", align 1
@PL_fdpid = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [20 x i8] c"Can't exec \22%s\22: %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_openn(ptr noundef %gv, ptr noundef %oname, i32 noundef %len, i32 noundef %as_raw, i32 noundef %rawmode, i32 noundef %rawperm, ptr noundef %supplied_fp, ptr noundef %svp, i32 noundef %num_svs) local_unnamed_addr #0 !dbg !1086 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1090, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %oname, metadata !1091, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %len, metadata !1092, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %as_raw, metadata !1093, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %rawmode, metadata !1094, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %rawperm, metadata !1095, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %supplied_fp, metadata !1096, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata ptr %svp, metadata !1097, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i32 %num_svs, metadata !1098, metadata !DIExpression()), !dbg !1099
  %tobool.not = icmp eq i32 %as_raw, 0, !dbg !1100
  br i1 %tobool.not, label %if.end3, label %if.then, !dbg !1102

if.then:                                          ; preds = %entry
  %cmp.not = icmp eq i32 %num_svs, 0, !dbg !1103
  br i1 %cmp.not, label %if.end, label %if.then1, !dbg !1106

if.then1:                                         ; preds = %if.then
  %conv = sext i32 %num_svs to i64, !dbg !1107
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str, i64 noundef %conv) #11, !dbg !1109
  br label %if.end, !dbg !1110

if.end:                                           ; preds = %if.then1, %if.then
  %conv2 = sext i32 %len to i64, !dbg !1111
  %call = tail call zeroext i1 @Perl_do_open_raw(ptr noundef %gv, ptr noundef %oname, i64 noundef %conv2, i32 noundef %rawmode, i32 noundef %rawperm), !dbg !1111
  br label %return, !dbg !1112

if.end3:                                          ; preds = %entry
  %conv4 = sext i32 %len to i64, !dbg !1113
  %call5 = tail call zeroext i1 @Perl_do_open6(ptr noundef %gv, ptr noundef %oname, i64 noundef %conv4, ptr noundef %supplied_fp, ptr noundef %svp, i32 noundef %num_svs), !dbg !1113
  br label %return, !dbg !1114

return:                                           ; preds = %if.end3, %if.end
  %retval.0 = phi i1 [ %call, %if.end ], [ %call5, %if.end3 ], !dbg !1099
  ret i1 %retval.0, !dbg !1115
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !1116 void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_open_raw(ptr noundef %gv, ptr noundef %oname, i64 noundef %len, i32 noundef %rawmode, i32 noundef %rawperm) local_unnamed_addr #0 !dbg !1121 {
entry:
  %saveifp = alloca ptr, align 8
  %saveofp = alloca ptr, align 8
  %savefd = alloca i32, align 4
  %savetype = alloca i8, align 1
  %mode = alloca [8 x i8], align 1
  %writing = alloca i32, align 4
  %namesv = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1125, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata ptr %oname, metadata !1126, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i64 %len, metadata !1127, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 %rawmode, metadata !1128, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 %rawperm, metadata !1129, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %saveifp) #11, !dbg !1150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %saveofp) #11, !dbg !1151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %savefd) #11, !dbg !1152
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %savetype) #11, !dbg !1153
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mode) #11, !dbg !1154
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !1134, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %saveifp, metadata !1130, metadata !DIExpression(DW_OP_deref)), !dbg !1149
  call void @llvm.dbg.value(metadata ptr %saveofp, metadata !1131, metadata !DIExpression(DW_OP_deref)), !dbg !1149
  call void @llvm.dbg.value(metadata ptr %savefd, metadata !1132, metadata !DIExpression(DW_OP_deref)), !dbg !1149
  call void @llvm.dbg.value(metadata ptr %savetype, metadata !1133, metadata !DIExpression(DW_OP_deref)), !dbg !1149
  %call = call fastcc ptr @S_openn_setup(ptr noundef %gv, ptr noundef nonnull %mode, ptr noundef nonnull %saveifp, ptr noundef nonnull %saveofp, ptr noundef nonnull %savefd, ptr noundef nonnull %savetype), !dbg !1156
  call void @llvm.dbg.value(metadata ptr %call, metadata !1138, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %writing) #11, !dbg !1157
  call void @llvm.dbg.value(metadata i32 0, metadata !1140, metadata !DIExpression()), !dbg !1149
  store i32 0, ptr %writing, align 4, !dbg !1158
  call void @llvm.dbg.value(metadata i64 0, metadata !1142, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 1536, metadata !1144, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 1603, metadata !1146, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %namesv) #11, !dbg !1160
  %and = and i32 %rawmode, 1603, !dbg !1161
  call void @llvm.dbg.value(metadata i32 %and, metadata !1147, metadata !DIExpression()), !dbg !1159
  %tobool.not = icmp eq i32 %and, 0, !dbg !1163
  %0 = load i8, ptr @PL_tainting, align 1
  %tobool8.not = icmp eq i8 %0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not, !dbg !1164
  br i1 %or.cond, label %if.end11, label %if.then9, !dbg !1164

if.then9:                                         ; preds = %entry
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.1) #11, !dbg !1165
  br label %if.end11, !dbg !1165

if.end11:                                         ; preds = %if.then9, %entry
  call void @llvm.dbg.value(metadata i64 1, metadata !1142, metadata !DIExpression()), !dbg !1159
  store i8 35, ptr %mode, align 1, !dbg !1170
  %arrayidx12 = getelementptr inbounds [8 x i8], ptr %mode, i64 0, i64 1, !dbg !1171
  call void @llvm.dbg.value(metadata ptr %writing, metadata !1140, metadata !DIExpression(DW_OP_deref)), !dbg !1149
  %call13 = call i32 @PerlIO_intmode2str(i32 noundef %rawmode, ptr noundef nonnull %arrayidx12, ptr noundef nonnull %writing) #11, !dbg !1172
  %conv = trunc i32 %call13 to i8, !dbg !1172
  %1 = load ptr, ptr %call, align 8, !dbg !1173
  %xio_type = getelementptr inbounds %struct.xpvio, ptr %1, i64 0, i32 16, !dbg !1173
  store i8 %conv, ptr %xio_type, align 8, !dbg !1174
  %call14 = call ptr @Perl_newSVpvn_flags(ptr noundef %oname, i64 noundef %len, i32 noundef 524288) #11, !dbg !1175
  call void @llvm.dbg.value(metadata ptr %call14, metadata !1148, metadata !DIExpression()), !dbg !1159
  store ptr %call14, ptr %namesv, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %namesv, metadata !1148, metadata !DIExpression(DW_OP_deref)), !dbg !1159
  %call16 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %mode, i32 noundef -1, i32 noundef %rawmode, i32 noundef %rawperm, ptr noundef null, i32 noundef 1, ptr noundef nonnull %namesv) #11, !dbg !1177
  call void @llvm.dbg.value(metadata ptr %call16, metadata !1141, metadata !DIExpression()), !dbg !1149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %namesv) #11, !dbg !1178
  %2 = load ptr, ptr %saveifp, align 8, !dbg !1179
  call void @llvm.dbg.value(metadata ptr %2, metadata !1130, metadata !DIExpression()), !dbg !1149
  %3 = load ptr, ptr %saveofp, align 8, !dbg !1179
  call void @llvm.dbg.value(metadata ptr %3, metadata !1131, metadata !DIExpression()), !dbg !1149
  %4 = load i32, ptr %savefd, align 4, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %4, metadata !1132, metadata !DIExpression()), !dbg !1149
  %5 = load i8, ptr %savetype, align 1, !dbg !1179
  call void @llvm.dbg.value(metadata i8 %5, metadata !1133, metadata !DIExpression()), !dbg !1149
  %6 = load i32, ptr %writing, align 4, !dbg !1179
  call void @llvm.dbg.value(metadata i32 %6, metadata !1140, metadata !DIExpression()), !dbg !1149
  %call18 = call fastcc zeroext i1 @S_openn_cleanup(ptr noundef %gv, ptr noundef nonnull %call, ptr noundef %call16, ptr noundef nonnull %mode, ptr noundef %oname, ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef signext %5, i32 noundef %6, i1 noundef zeroext false, ptr noundef null), !dbg !1179
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %writing) #11, !dbg !1180
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mode) #11, !dbg !1180
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %savetype) #11, !dbg !1180
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %savefd) #11, !dbg !1180
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %saveofp) #11, !dbg !1180
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %saveifp) #11, !dbg !1180
  ret i1 %call18, !dbg !1181
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_open6(ptr noundef %gv, ptr noundef %oname, i64 noundef %len, ptr noundef %supplied_fp, ptr noundef %svp, i32 noundef %num_svs) local_unnamed_addr #0 !dbg !1182 {
entry:
  %saveifp = alloca ptr, align 8
  %saveofp = alloca ptr, align 8
  %savefd = alloca i32, align 4
  %savetype = alloca i8, align 1
  %mode = alloca [8 x i8], align 1
  %nlen = alloca i64, align 8
  %uv = alloca i64, align 8
  %namesv = alloca ptr, align 8
  %namesv554 = alloca ptr, align 8
  %namesv753 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1186, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %oname, metadata !1187, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %len, metadata !1188, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %supplied_fp, metadata !1189, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %svp, metadata !1190, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %num_svs, metadata !1191, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %saveifp) #11, !dbg !1267
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %saveofp) #11, !dbg !1268
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %savefd) #11, !dbg !1269
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %savetype) #11, !dbg !1270
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mode) #11, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !1196, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata ptr %saveifp, metadata !1192, metadata !DIExpression(DW_OP_deref)), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %saveofp, metadata !1193, metadata !DIExpression(DW_OP_deref)), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %savefd, metadata !1194, metadata !DIExpression(DW_OP_deref)), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %savetype, metadata !1195, metadata !DIExpression(DW_OP_deref)), !dbg !1266
  %call = call fastcc ptr @S_openn_setup(ptr noundef %gv, ptr noundef nonnull %mode, ptr noundef nonnull %saveifp, ptr noundef nonnull %saveofp, ptr noundef nonnull %savefd, ptr noundef nonnull %savetype), !dbg !1273
  call void @llvm.dbg.value(metadata ptr %call, metadata !1197, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 0, metadata !1198, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 0, metadata !1200, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr null, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i64 %len, metadata !1204, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i32 0, metadata !1206, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 0, metadata !1207, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 0, metadata !1208, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 0, metadata !1209, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 0, metadata !1210, metadata !DIExpression()), !dbg !1274
  %0 = load ptr, ptr @PL_op, align 8, !dbg !1275
  %tobool.not = icmp eq ptr %0, null, !dbg !1275
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !1276

land.lhs.true:                                    ; preds = %entry
  %op_type = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 4, !dbg !1277
  %bf.load = load i16, ptr %op_type, align 8, !dbg !1277
  %bf.clear = and i16 %bf.load, 511, !dbg !1277
  %cmp = icmp eq i16 %bf.clear, 220, !dbg !1278
  br i1 %cmp, label %if.then, label %if.end, !dbg !1279

if.then:                                          ; preds = %land.lhs.true
  %op_private = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 6, !dbg !1280
  %1 = load i8, ptr %op_private, align 1, !dbg !1280
  call void @llvm.dbg.value(metadata i8 %1, metadata !1211, metadata !DIExpression()), !dbg !1281
  %conv = zext i8 %1 to i32, !dbg !1282
  %and = and i32 %conv, 16, !dbg !1283
  %tobool1 = icmp ne i32 %and, 0, !dbg !1284
  call void @llvm.dbg.value(metadata i1 %tobool1, metadata !1207, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1274
  %and3 = and i32 %conv, 32, !dbg !1285
  %tobool4 = icmp ne i32 %and3, 0, !dbg !1286
  call void @llvm.dbg.value(metadata i1 %tobool4, metadata !1208, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1274
  %and7 = and i32 %conv, 64, !dbg !1287
  %tobool8 = icmp ne i32 %and7, 0, !dbg !1288
  call void @llvm.dbg.value(metadata i1 %tobool8, metadata !1209, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1274
  %and11 = and i32 %conv, 128, !dbg !1289
  %tobool12 = icmp ne i32 %and11, 0, !dbg !1290
  call void @llvm.dbg.value(metadata i1 %tobool12, metadata !1210, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1274
  br label %if.end, !dbg !1291

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %in_raw.0 = phi i1 [ %tobool1, %if.then ], [ false, %land.lhs.true ], [ false, %entry ]
  %in_crlf.0 = phi i1 [ %tobool4, %if.then ], [ false, %land.lhs.true ], [ false, %entry ]
  %out_raw.0 = phi i1 [ %tobool8, %if.then ], [ false, %land.lhs.true ], [ false, %entry ]
  %out_crlf.0 = phi i1 [ %tobool12, %if.then ], [ false, %land.lhs.true ], [ false, %entry ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1210, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 undef, metadata !1209, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 undef, metadata !1208, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata i8 undef, metadata !1207, metadata !DIExpression()), !dbg !1274
  %conv14 = trunc i64 %len to i32, !dbg !1292
  %call15 = tail call ptr @Perl_savepvn(ptr noundef %oname, i32 noundef %conv14) #11, !dbg !1292
  call void @llvm.dbg.value(metadata ptr %call15, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1205, metadata !DIExpression()), !dbg !1274
  tail call void @Perl_save_pushptr(ptr noundef %call15, i32 noundef 10) #11, !dbg !1293
  br label %while.cond, !dbg !1294

while.cond:                                       ; preds = %while.cond, %if.end
  %type.0 = phi ptr [ %call15, %if.end ], [ %incdec.ptr, %while.cond ], !dbg !1274
  call void @llvm.dbg.value(metadata ptr %type.0, metadata !1201, metadata !DIExpression()), !dbg !1266
  %2 = load i8, ptr %type.0, align 1, !dbg !1295
  %idxprom = zext i8 %2 to i64, !dbg !1295
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !1295
  %3 = load i32, ptr %arrayidx, align 4, !dbg !1295
  %and16 = and i32 %3, 17408, !dbg !1295
  %cmp17 = icmp eq i32 %and16, 17408, !dbg !1295
  %incdec.ptr = getelementptr inbounds i8, ptr %type.0, i64 1, !dbg !1296
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1201, metadata !DIExpression()), !dbg !1266
  br i1 %cmp17, label %while.cond, label %while.cond19.preheader, !dbg !1294, !llvm.loop !1297

while.cond19.preheader:                           ; preds = %while.cond
  %add.ptr = getelementptr inbounds i8, ptr %call15, i64 %len, !dbg !1300
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1205, metadata !DIExpression()), !dbg !1274
  %cmp201104 = icmp ugt ptr %add.ptr, %type.0, !dbg !1301
  br i1 %cmp201104, label %land.rhs, label %while.end30, !dbg !1302

land.rhs:                                         ; preds = %while.cond19.preheader, %while.body28
  %tend.01105 = phi ptr [ %arrayidx22, %while.body28 ], [ %add.ptr, %while.cond19.preheader ]
  call void @llvm.dbg.value(metadata ptr %tend.01105, metadata !1205, metadata !DIExpression()), !dbg !1274
  %arrayidx22 = getelementptr inbounds i8, ptr %tend.01105, i64 -1, !dbg !1303
  %4 = load i8, ptr %arrayidx22, align 1, !dbg !1303
  %idxprom23 = zext i8 %4 to i64, !dbg !1303
  %arrayidx24 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom23, !dbg !1303
  %5 = load i32, ptr %arrayidx24, align 4, !dbg !1303
  %and25 = and i32 %5, 17408, !dbg !1303
  %cmp26 = icmp eq i32 %and25, 17408, !dbg !1303
  br i1 %cmp26, label %while.body28, label %while.end30, !dbg !1304

while.body28:                                     ; preds = %land.rhs
  call void @llvm.dbg.value(metadata ptr %arrayidx22, metadata !1205, metadata !DIExpression()), !dbg !1274
  store i8 0, ptr %arrayidx22, align 1, !dbg !1305
  %cmp20 = icmp ugt ptr %arrayidx22, %type.0, !dbg !1301
  br i1 %cmp20, label %land.rhs, label %while.end30, !dbg !1302, !llvm.loop !1306

while.end30:                                      ; preds = %land.rhs, %while.body28, %while.cond19.preheader
  %tend.0.lcssa = phi ptr [ %add.ptr, %while.cond19.preheader ], [ %arrayidx22, %while.body28 ], [ %tend.01105, %land.rhs ], !dbg !1274
  %tobool31 = icmp ne i32 %num_svs, 0, !dbg !1308
  br i1 %tobool31, label %if.then32, label %if.else, !dbg !1309

if.then32:                                        ; preds = %while.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nlen) #11, !dbg !1310
  call void @llvm.dbg.value(metadata i64 0, metadata !1217, metadata !DIExpression()), !dbg !1311
  store i64 0, ptr %nlen, align 8, !dbg !1312
  %6 = load ptr, ptr %svp, align 8, !dbg !1313
  %sv_flags = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !1313
  %7 = load i32, ptr %sv_flags, align 4, !dbg !1313
  %and33 = and i32 %7, 65280, !dbg !1313
  %tobool34.not = icmp eq i32 %and33, 0, !dbg !1313
  %and36 = and i32 %7, 255, !dbg !1313
  %cmp37 = icmp ne i32 %and36, 8, !dbg !1313
  %and41 = and i32 %7, 16826623, !dbg !1313
  %cmp42 = icmp ne i32 %and41, 16777226, !dbg !1313
  %not.or.cond1027 = and i1 %tobool34.not, %cmp37, !dbg !1313
  %or.cond1028 = select i1 %not.or.cond1027, i1 %cmp42, i1 false, !dbg !1313
  %and46 = and i32 %7, 2097152
  %tobool47.not = icmp eq i32 %and46, 0
  %or.cond1029 = select i1 %or.cond1028, i1 %tobool47.not, i1 false, !dbg !1313
  br i1 %or.cond1029, label %cond.false66, label %cond.true, !dbg !1313

cond.true:                                        ; preds = %if.then32
  %and49 = and i32 %7, 2098176, !dbg !1314
  %cmp50 = icmp eq i32 %and49, 1024, !dbg !1314
  br i1 %cmp50, label %cond.true52, label %cond.false, !dbg !1314

cond.true52:                                      ; preds = %cond.true
  %8 = load ptr, ptr %6, align 8, !dbg !1314
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 2, !dbg !1314
  %9 = load i64, ptr %xpv_cur, align 8, !dbg !1314
  call void @llvm.dbg.value(metadata i64 %9, metadata !1217, metadata !DIExpression()), !dbg !1311
  store i64 %9, ptr %nlen, align 8, !dbg !1314
  %sv_u = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 3, !dbg !1314
  %10 = load ptr, ptr %sv_u, align 8, !dbg !1314
  br label %cond.end55, !dbg !1314

cond.false:                                       ; preds = %cond.true
  call void @llvm.dbg.value(metadata ptr %nlen, metadata !1217, metadata !DIExpression(DW_OP_deref)), !dbg !1311
  %call53 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %6, ptr noundef nonnull %nlen, i32 noundef 2) #11, !dbg !1314
  br label %cond.end55, !dbg !1314

cond.end55:                                       ; preds = %cond.true52, %cond.false
  %cond56 = phi ptr [ %10, %cond.true52 ], [ %call53, %cond.false ], !dbg !1315
  call void @llvm.dbg.value(metadata ptr %cond56, metadata !1214, metadata !DIExpression()), !dbg !1311
  %tobool57.not = icmp eq ptr %cond56, null, !dbg !1316
  br i1 %tobool57.not, label %cond.false66, label %land.lhs.true58, !dbg !1318

land.lhs.true58:                                  ; preds = %cond.end55
  %11 = load i64, ptr %nlen, align 8, !dbg !1319
  call void @llvm.dbg.value(metadata i64 %11, metadata !1217, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %cond56, metadata !1320, metadata !DIExpression()) #11, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %11, metadata !1326, metadata !DIExpression()) #11, !dbg !1332
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !1327, metadata !DIExpression()) #11, !dbg !1332
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1328, metadata !DIExpression()) #11, !dbg !1332
  %cmp.i = icmp ugt i64 %11, 1, !dbg !1334
  br i1 %cmp.i, label %if.then.i, label %cond.true63, !dbg !1335

if.then.i:                                        ; preds = %land.lhs.true58
  %sub.i = add i64 %11, -1, !dbg !1336
  %call.i = call ptr @memchr(ptr noundef nonnull %cond56, i32 noundef 0, i64 noundef %sub.i) #12, !dbg !1336
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1329, metadata !DIExpression()) #11, !dbg !1338
  %cmp1.not.i = icmp eq ptr %call.i, null, !dbg !1336
  br i1 %cmp1.not.i, label %cond.true63, label %cleanup, !dbg !1339

cond.true63:                                      ; preds = %if.then.i, %land.lhs.true58
  call void @llvm.dbg.value(metadata i64 %11, metadata !1217, metadata !DIExpression()), !dbg !1311
  %conv64 = trunc i64 %11 to i32, !dbg !1340
  %call65 = call ptr @Perl_savepvn(ptr noundef nonnull %cond56, i32 noundef %conv64) #11, !dbg !1340
  br label %cleanup.thread, !dbg !1341

cond.false66:                                     ; preds = %if.then32, %cond.end55
  %call67 = call ptr @Perl_savepvn(ptr noundef nonnull @.str.4, i32 noundef 0) #11, !dbg !1342
  br label %cleanup.thread, !dbg !1341

cleanup.thread:                                   ; preds = %cond.true63, %cond.false66
  %cond69 = phi ptr [ %call65, %cond.true63 ], [ %call67, %cond.false66 ], !dbg !1341
  call void @llvm.dbg.value(metadata ptr %cond69, metadata !1202, metadata !DIExpression()), !dbg !1274
  call void @Perl_save_pushptr(ptr noundef %cond69, i32 noundef 10) #11, !dbg !1343
  call void @llvm.dbg.value(metadata ptr undef, metadata !1202, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata ptr null, metadata !1199, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nlen) #11, !dbg !1344
  br label %if.end71

cleanup:                                          ; preds = %if.then.i
  %call3.i = tail call ptr @__errno_location() #13, !dbg !1345
  store i32 2, ptr %call3.i, align 4, !dbg !1345
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i, i64 1, !dbg !1347
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond56, ptr noundef nonnull %add.ptr.i) #11, !dbg !1348
  call void @llvm.dbg.value(metadata ptr undef, metadata !1202, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata ptr null, metadata !1199, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nlen) #11, !dbg !1344
  br label %cleanup779

if.else:                                          ; preds = %while.end30
  call void @llvm.dbg.value(metadata ptr %type.0, metadata !1202, metadata !DIExpression()), !dbg !1274
  %sub.ptr.lhs.cast = ptrtoint ptr %tend.0.lcssa to i64, !dbg !1349
  %sub.ptr.rhs.cast = ptrtoint ptr %type.0 to i64, !dbg !1349
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub, metadata !1188, metadata !DIExpression()), !dbg !1266
  br label %if.end71

if.end71:                                         ; preds = %cleanup.thread, %if.else
  %name.1 = phi ptr [ %type.0, %if.else ], [ %cond69, %cleanup.thread ], !dbg !1351
  %len.addr.0 = phi i64 [ %sub.ptr.sub, %if.else ], [ %len, %cleanup.thread ]
  call void @llvm.dbg.value(metadata i64 %len.addr.0, metadata !1188, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %name.1, metadata !1202, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata ptr null, metadata !1199, metadata !DIExpression()), !dbg !1266
  %12 = load i8, ptr %type.0, align 1, !dbg !1352
  %13 = load ptr, ptr %call, align 8, !dbg !1353
  %xio_type = getelementptr inbounds %struct.xpvio, ptr %13, i64 0, i32 16, !dbg !1353
  store i8 %12, ptr %xio_type, align 8, !dbg !1354
  %14 = load i8, ptr %type.0, align 1, !dbg !1355
  %cmp74 = icmp eq i8 %14, 43, !dbg !1357
  br i1 %cmp74, label %land.lhs.true76, label %if.end106, !dbg !1358

land.lhs.true76:                                  ; preds = %if.end71
  %15 = load i8, ptr %incdec.ptr, align 1, !dbg !1359
  switch i8 %15, label %lor.lhs.false593 [
    i8 60, label %land.lhs.true86
    i8 62, label %land.lhs.true86
  ], !dbg !1360

land.lhs.true86:                                  ; preds = %land.lhs.true76, %land.lhs.true76
  br i1 %tobool31, label %lor.lhs.false88, label %if.then97, !dbg !1361

lor.lhs.false88:                                  ; preds = %land.lhs.true86
  %cmp90 = icmp ugt ptr %tend.0.lcssa, %incdec.ptr, !dbg !1362
  br i1 %cmp90, label %land.lhs.true92, label %unknown_open_mode, !dbg !1363

land.lhs.true92:                                  ; preds = %lor.lhs.false88
  %arrayidx93 = getelementptr inbounds i8, ptr %tend.0.lcssa, i64 -1, !dbg !1364
  %16 = load i8, ptr %arrayidx93, align 1, !dbg !1364
  %cmp95.not = icmp eq i8 %16, 124, !dbg !1365
  br i1 %cmp95.not, label %unknown_open_mode, label %if.then97, !dbg !1366

if.then97:                                        ; preds = %land.lhs.true92, %land.lhs.true86
  %17 = load i8, ptr @PL_tainting, align 1, !dbg !1367, !range !1370
  %tobool98.not = icmp eq i8 %17, 0, !dbg !1367
  br i1 %tobool98.not, label %if.end103, label %if.then102, !dbg !1371

if.then102:                                       ; preds = %if.then97
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.3) #11, !dbg !1372
  %.pre = load i8, ptr %type.0, align 1, !dbg !1374
  br label %if.end103, !dbg !1372

if.end103:                                        ; preds = %if.then97, %if.then102
  %18 = phi i8 [ 43, %if.then97 ], [ %.pre, %if.then102 ], !dbg !1374
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1201, metadata !DIExpression()), !dbg !1266
  %arrayidx105 = getelementptr inbounds [8 x i8], ptr %mode, i64 0, i64 1, !dbg !1375
  store i8 %18, ptr %arrayidx105, align 1, !dbg !1376
  call void @llvm.dbg.value(metadata i32 1, metadata !1198, metadata !DIExpression()), !dbg !1266
  %.pr.pre = load i8, ptr %incdec.ptr, align 1, !dbg !1377
  br label %if.end106, !dbg !1378

if.end106:                                        ; preds = %if.end103, %if.end71
  %19 = phi i8 [ %14, %if.end71 ], [ %.pr.pre, %if.end103 ], !dbg !1377
  %type.1 = phi ptr [ %type.0, %if.end71 ], [ %incdec.ptr, %if.end103 ], !dbg !1274
  %writing.0 = phi i32 [ 0, %if.end71 ], [ 1, %if.end103 ], !dbg !1266
  call void @llvm.dbg.value(metadata i32 %writing.0, metadata !1198, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.1, metadata !1201, metadata !DIExpression()), !dbg !1266
  switch i8 %19, label %if.else581 [
    i8 124, label %if.then110
    i8 62, label %if.then214
    i8 60, label %do.body497
  ], !dbg !1379

if.then110:                                       ; preds = %if.end106
  br i1 %tobool31, label %if.then112, label %if.end121, !dbg !1380

if.then112:                                       ; preds = %if.then110
  %arrayidx113 = getelementptr inbounds i8, ptr %type.1, i64 1, !dbg !1381
  %20 = load i8, ptr %arrayidx113, align 1, !dbg !1381
  %cmp115.not = icmp eq i8 %20, 45, !dbg !1382
  br i1 %cmp115.not, label %if.end119, label %unknown_open_mode, !dbg !1383

unknown_open_mode:                                ; preds = %lor.lhs.false88, %land.lhs.true92, %if.else709, %land.lhs.true573, %land.lhs.true484, %if.then112
  %was_fdopen.0 = phi i8 [ 0, %if.then112 ], [ %was_fdopen.6, %land.lhs.true484 ], [ 0, %land.lhs.true573 ], [ 0, %if.else709 ], [ 0, %land.lhs.true92 ], [ 0, %lor.lhs.false88 ], !dbg !1384
  %type.2 = phi ptr [ %type.1, %if.then112 ], [ %type.13, %land.lhs.true484 ], [ %type.15, %land.lhs.true573 ], [ %type.11048, %if.else709 ], [ %type.0, %land.lhs.true92 ], [ %type.0, %lor.lhs.false88 ], !dbg !1274
  %writing.1 = phi i32 [ %writing.0, %if.then112 ], [ %writing.5, %land.lhs.true484 ], [ %writing.0, %land.lhs.true573 ], [ %writing.010521100, %if.else709 ], [ 0, %land.lhs.true92 ], [ 0, %lor.lhs.false88 ], !dbg !1274
  %num_svs.addr.0 = phi i32 [ %num_svs, %if.then112 ], [ %num_svs.addr.5, %land.lhs.true484 ], [ %num_svs, %land.lhs.true573 ], [ %num_svs, %if.else709 ], [ %num_svs, %land.lhs.true92 ], [ %num_svs, %lor.lhs.false88 ]
  call void @llvm.dbg.value(metadata i32 %num_svs.addr.0, metadata !1191, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %writing.1, metadata !1198, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.2, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %was_fdopen.0, metadata !1200, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.label(metadata !1258), !dbg !1385
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5, i32 noundef %conv14, ptr noundef %oname) #11, !dbg !1386
  br label %if.end119, !dbg !1387

if.end119:                                        ; preds = %unknown_open_mode, %if.then112
  %was_fdopen.1 = phi i8 [ %was_fdopen.0, %unknown_open_mode ], [ 0, %if.then112 ], !dbg !1384
  %type.3 = phi ptr [ %type.2, %unknown_open_mode ], [ %type.1, %if.then112 ], !dbg !1388
  %writing.2 = phi i32 [ %writing.1, %unknown_open_mode ], [ %writing.0, %if.then112 ], !dbg !1389
  %num_svs.addr.1 = phi i32 [ %num_svs.addr.0, %unknown_open_mode ], [ %num_svs, %if.then112 ]
  call void @llvm.dbg.value(metadata i32 %num_svs.addr.1, metadata !1191, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %writing.2, metadata !1198, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.3, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %was_fdopen.1, metadata !1200, metadata !DIExpression()), !dbg !1266
  %incdec.ptr120 = getelementptr inbounds i8, ptr %type.3, i64 1, !dbg !1390
  call void @llvm.dbg.value(metadata ptr %incdec.ptr120, metadata !1201, metadata !DIExpression()), !dbg !1266
  br label %if.end121, !dbg !1391

if.end121:                                        ; preds = %if.end119, %if.then110
  %was_fdopen.2 = phi i8 [ %was_fdopen.1, %if.end119 ], [ 0, %if.then110 ], !dbg !1384
  %type.4 = phi ptr [ %incdec.ptr120, %if.end119 ], [ %type.1, %if.then110 ], !dbg !1274
  %writing.3 = phi i32 [ %writing.2, %if.end119 ], [ %writing.0, %if.then110 ], !dbg !1389
  %num_svs.addr.2 = phi i32 [ %num_svs.addr.1, %if.end119 ], [ 0, %if.then110 ]
  call void @llvm.dbg.value(metadata i32 %num_svs.addr.2, metadata !1191, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %writing.3, metadata !1198, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.4, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %was_fdopen.2, metadata !1200, metadata !DIExpression()), !dbg !1266
  br label %do.body, !dbg !1392

do.body:                                          ; preds = %do.body, %if.end121
  %type.5 = phi ptr [ %type.4, %if.end121 ], [ %incdec.ptr122, %do.body ], !dbg !1393
  call void @llvm.dbg.value(metadata ptr %type.5, metadata !1201, metadata !DIExpression()), !dbg !1266
  %incdec.ptr122 = getelementptr inbounds i8, ptr %type.5, i64 1, !dbg !1394
  call void @llvm.dbg.value(metadata ptr %incdec.ptr122, metadata !1201, metadata !DIExpression()), !dbg !1266
  %21 = load i8, ptr %incdec.ptr122, align 1, !dbg !1396
  %idxprom123 = zext i8 %21 to i64, !dbg !1396
  %arrayidx124 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom123, !dbg !1396
  %22 = load i32, ptr %arrayidx124, align 4, !dbg !1396
  %and125 = and i32 %22, 17408, !dbg !1396
  %cmp126 = icmp eq i32 %and125, 17408, !dbg !1396
  br i1 %cmp126, label %do.body, label %do.end, !dbg !1397, !llvm.loop !1398

do.end:                                           ; preds = %do.body
  %tobool128 = icmp ne i32 %num_svs.addr.2, 0, !dbg !1400
  br i1 %tobool128, label %if.end133, label %if.then129, !dbg !1402

if.then129:                                       ; preds = %do.end
  call void @llvm.dbg.value(metadata ptr %incdec.ptr122, metadata !1202, metadata !DIExpression()), !dbg !1274
  %sub.ptr.lhs.cast130 = ptrtoint ptr %tend.0.lcssa to i64, !dbg !1403
  %sub.ptr.rhs.cast131 = ptrtoint ptr %incdec.ptr122 to i64, !dbg !1403
  %sub.ptr.sub132 = sub i64 %sub.ptr.lhs.cast130, %sub.ptr.rhs.cast131, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub132, metadata !1188, metadata !DIExpression()), !dbg !1266
  br label %if.end133, !dbg !1405

if.end133:                                        ; preds = %if.then129, %do.end
  %name.2 = phi ptr [ %name.1, %do.end ], [ %incdec.ptr122, %if.then129 ], !dbg !1274
  %len.addr.1 = phi i64 [ %len.addr.0, %do.end ], [ %sub.ptr.sub132, %if.then129 ]
  call void @llvm.dbg.value(metadata i64 %len.addr.1, metadata !1188, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %name.2, metadata !1202, metadata !DIExpression()), !dbg !1274
  %23 = load i8, ptr %name.2, align 1, !dbg !1406
  switch i8 %23, label %if.then153 [
    i8 0, label %if.then137
    i8 45, label %land.lhs.true146
  ], !dbg !1408

if.then137:                                       ; preds = %if.end133
  %call138 = call zeroext i1 @Perl_ckwarn(i32 noundef 10) #11, !dbg !1409
  br i1 %call138, label %if.then139, label %if.end140, !dbg !1412

if.then139:                                       ; preds = %if.then137
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 10, ptr noundef nonnull @.str.6) #11, !dbg !1413
  br label %if.end140, !dbg !1413

if.end140:                                        ; preds = %if.then139, %if.then137
  %call141 = tail call ptr @__errno_location() #13, !dbg !1414
  store i32 32, ptr %call141, align 4, !dbg !1415
  call void @llvm.dbg.value(metadata ptr null, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %cleanup779, !dbg !1416

land.lhs.true146:                                 ; preds = %if.end133
  %arrayidx147 = getelementptr inbounds i8, ptr %name.2, i64 1, !dbg !1417
  %24 = load i8, ptr %arrayidx147, align 1, !dbg !1417
  %cmp149 = icmp ne i8 %24, 0, !dbg !1419
  %or.cond = or i1 %tobool128, %cmp149, !dbg !1420
  %or.cond.not = xor i1 %or.cond, true, !dbg !1420
  %25 = load i8, ptr @PL_tainting, align 1
  %tobool154.not = icmp eq i8 %25, 0
  %or.cond1030 = select i1 %or.cond.not, i1 true, i1 %tobool154.not, !dbg !1420
  br i1 %or.cond1030, label %if.end160, label %if.then158, !dbg !1420

if.then153:                                       ; preds = %if.end133
  %.old = load i8, ptr @PL_tainting, align 1, !dbg !1421, !range !1370
  %tobool154.not.old = icmp eq i8 %.old, 0, !dbg !1421
  br i1 %tobool154.not.old, label %if.end166, label %if.then158, !dbg !1423

if.then158:                                       ; preds = %land.lhs.true146, %if.then153
  call void @Perl_taint_env() #11, !dbg !1424
  %.pr1055 = load i8, ptr @PL_tainting, align 1, !dbg !1426
  br label %if.end160, !dbg !1424

if.end160:                                        ; preds = %if.then158, %land.lhs.true146
  %26 = phi i8 [ %.pr1055, %if.then158 ], [ %25, %land.lhs.true146 ], !dbg !1426
  %tobool161.not = icmp eq i8 %26, 0, !dbg !1426
  br i1 %tobool161.not, label %if.end166, label %if.then165, !dbg !1428

if.then165:                                       ; preds = %if.end160
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.7) #11, !dbg !1429
  br label %if.end166, !dbg !1429

if.end166:                                        ; preds = %if.then153, %if.end160, %if.then165
  br i1 %tobool128, label %if.end178, label %land.lhs.true168, !dbg !1431

land.lhs.true168:                                 ; preds = %if.end166
  %sub = add i64 %len.addr.1, -1, !dbg !1433
  %arrayidx169 = getelementptr inbounds i8, ptr %name.2, i64 %sub, !dbg !1434
  %27 = load i8, ptr %arrayidx169, align 1, !dbg !1434
  %cmp171 = icmp eq i8 %27, 124, !dbg !1435
  br i1 %cmp171, label %if.then173, label %if.end178, !dbg !1436

if.then173:                                       ; preds = %land.lhs.true168
  call void @llvm.dbg.value(metadata i64 %sub, metadata !1188, metadata !DIExpression()), !dbg !1266
  store i8 0, ptr %arrayidx169, align 1, !dbg !1437
  %call175 = call zeroext i1 @Perl_ckwarn(i32 noundef 10) #11, !dbg !1439
  br i1 %call175, label %if.then176, label %if.end178, !dbg !1441

if.then176:                                       ; preds = %if.then173
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 10, ptr noundef nonnull @.str.8) #11, !dbg !1442
  br label %if.end178, !dbg !1442

if.end178:                                        ; preds = %if.then173, %if.then176, %land.lhs.true168, %if.end166
  store i8 119, ptr %mode, align 1, !dbg !1443
  call void @llvm.dbg.value(metadata i32 1, metadata !1198, metadata !DIExpression()), !dbg !1266
  %brmerge = select i1 %out_raw.0, i1 true, i1 %out_crlf.0, !dbg !1444
  br i1 %brmerge, label %if.end188.sink.split, label %if.end188, !dbg !1444

if.end188.sink.split:                             ; preds = %if.end178
  %.mux = select i1 %out_raw.0, i8 98, i8 116, !dbg !1444
  %arrayidx186 = getelementptr inbounds [8 x i8], ptr %mode, i64 0, i64 1, !dbg !1445
  store i8 %.mux, ptr %arrayidx186, align 1, !dbg !1445
  br label %if.end188, !dbg !1447

if.end188:                                        ; preds = %if.end178, %if.end188.sink.split
  %cmp189 = icmp ugt i32 %num_svs.addr.2, 1, !dbg !1447
  br i1 %cmp189, label %if.then191, label %if.else194, !dbg !1449

if.then191:                                       ; preds = %if.end188
  %call193 = call ptr @Perl_my_popen_list(ptr noundef nonnull %mode, i32 noundef %num_svs.addr.2, ptr noundef %svp) #11, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %call193, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %if.end197, !dbg !1452

if.else194:                                       ; preds = %if.end188
  %call196 = call ptr @Perl_my_popen(ptr noundef nonnull %name.2, ptr noundef nonnull %mode) #11, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %call196, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %if.end197

if.end197:                                        ; preds = %if.else194, %if.then191
  %fp.2 = phi ptr [ %call193, %if.then191 ], [ %call196, %if.else194 ], !dbg !1455
  call void @llvm.dbg.value(metadata ptr %fp.2, metadata !1199, metadata !DIExpression()), !dbg !1266
  br i1 %tobool128, label %if.then199, label %if.end765, !dbg !1456

if.then199:                                       ; preds = %if.end197
  %28 = load i8, ptr %incdec.ptr122, align 1, !dbg !1457
  %tobool200.not = icmp eq i8 %28, 0, !dbg !1457
  br i1 %tobool200.not, label %if.end765, label %if.then201, !dbg !1461

if.then201:                                       ; preds = %if.then199
  %call203 = call i32 @PerlIO_apply_layers(ptr noundef %fp.2, ptr noundef nonnull %mode, ptr noundef nonnull %incdec.ptr122) #11, !dbg !1462
  %cmp204.not = icmp eq i32 %call203, 0, !dbg !1465
  br i1 %cmp204.not, label %if.end765, label %cleanup779, !dbg !1466

if.then214:                                       ; preds = %if.end106
  %29 = load i8, ptr @PL_tainting, align 1, !dbg !1467, !range !1370
  %tobool215.not = icmp eq i8 %29, 0, !dbg !1467
  br i1 %tobool215.not, label %if.end220, label %if.then219, !dbg !1469

if.then219:                                       ; preds = %if.then214
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.3) #11, !dbg !1470
  br label %if.end220, !dbg !1470

if.end220:                                        ; preds = %if.then214, %if.then219
  %incdec.ptr221 = getelementptr inbounds i8, ptr %type.1, i64 1, !dbg !1472
  call void @llvm.dbg.value(metadata ptr %incdec.ptr221, metadata !1201, metadata !DIExpression()), !dbg !1266
  %30 = load i8, ptr %incdec.ptr221, align 1, !dbg !1473
  %cmp223 = icmp eq i8 %30, 62, !dbg !1475
  br i1 %cmp223, label %if.then225, label %if.else230, !dbg !1476

if.then225:                                       ; preds = %if.end220
  %31 = load ptr, ptr %call, align 8, !dbg !1477
  %xio_type227 = getelementptr inbounds %struct.xpvio, ptr %31, i64 0, i32 16, !dbg !1477
  store i8 97, ptr %xio_type227, align 8, !dbg !1479
  store i8 97, ptr %mode, align 1, !dbg !1480
  %incdec.ptr229 = getelementptr inbounds i8, ptr %type.1, i64 2, !dbg !1481
  call void @llvm.dbg.value(metadata ptr %incdec.ptr229, metadata !1201, metadata !DIExpression()), !dbg !1266
  br label %if.end232, !dbg !1482

if.else230:                                       ; preds = %if.end220
  store i8 119, ptr %mode, align 1, !dbg !1483
  br label %if.end232

if.end232:                                        ; preds = %if.else230, %if.then225
  %type.6 = phi ptr [ %incdec.ptr229, %if.then225 ], [ %incdec.ptr221, %if.else230 ], !dbg !1485
  call void @llvm.dbg.value(metadata ptr %type.6, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 1, metadata !1198, metadata !DIExpression()), !dbg !1266
  %brmerge1148 = select i1 %out_raw.0, i1 true, i1 %out_crlf.0, !dbg !1486
  br i1 %brmerge1148, label %if.end241.sink.split, label %if.end241, !dbg !1486

if.end241.sink.split:                             ; preds = %if.end232
  %.mux1149 = select i1 %out_raw.0, i8 98, i8 116, !dbg !1486
  %arrayidx239 = getelementptr inbounds [8 x i8], ptr %mode, i64 0, i64 1, !dbg !1487
  store i8 %.mux1149, ptr %arrayidx239, align 1, !dbg !1487
  br label %if.end241, !dbg !1489

if.end241:                                        ; preds = %if.end232, %if.end241.sink.split
  %32 = load i8, ptr %type.6, align 1, !dbg !1489
  %cmp243 = icmp eq i8 %32, 38, !dbg !1490
  br i1 %cmp243, label %duplicity, label %while.cond423.preheader, !dbg !1491

while.cond423.preheader:                          ; preds = %if.end241
  call void @llvm.dbg.value(metadata ptr %type.6, metadata !1201, metadata !DIExpression()), !dbg !1266
  %idxprom4241107 = zext i8 %32 to i64, !dbg !1492
  %arrayidx4251108 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom4241107, !dbg !1492
  %33 = load i32, ptr %arrayidx4251108, align 4, !dbg !1492
  %and4261109 = and i32 %33, 17408, !dbg !1492
  %cmp4271110 = icmp eq i32 %and4261109, 17408, !dbg !1492
  br i1 %cmp4271110, label %while.body429, label %while.end431, !dbg !1493

duplicity:                                        ; preds = %if.end515, %if.end241
  %type.7 = phi ptr [ %type.6, %if.end241 ], [ %incdec.ptr498, %if.end515 ], !dbg !1494
  %writing.4 = phi i32 [ 1, %if.end241 ], [ %writing.0, %if.end515 ], !dbg !1274
  call void @llvm.dbg.value(metadata i32 %writing.4, metadata !1198, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.7, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.label(metadata !1264), !dbg !1495
  call void @llvm.dbg.value(metadata i32 2, metadata !1206, metadata !DIExpression()), !dbg !1274
  %incdec.ptr246 = getelementptr inbounds i8, ptr %type.7, i64 1, !dbg !1496
  call void @llvm.dbg.value(metadata ptr %incdec.ptr246, metadata !1201, metadata !DIExpression()), !dbg !1266
  %34 = load i8, ptr %incdec.ptr246, align 1, !dbg !1497
  %cmp248 = icmp eq i8 %34, 61, !dbg !1499
  %incdec.ptr251 = getelementptr inbounds i8, ptr %type.7, i64 2
  %spec.select = select i1 %cmp248, ptr %incdec.ptr251, ptr %incdec.ptr246, !dbg !1500
  %spec.select1031 = select i1 %cmp248, i32 0, i32 2, !dbg !1500
  call void @llvm.dbg.value(metadata i32 %spec.select1031, metadata !1206, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !1201, metadata !DIExpression()), !dbg !1266
  br i1 %tobool31, label %if.else259, label %land.lhs.true254, !dbg !1501

land.lhs.true254:                                 ; preds = %duplicity
  %35 = load i8, ptr %spec.select, align 1, !dbg !1502
  %tobool255 = icmp eq i8 %35, 0, !dbg !1502
  %tobool257 = icmp ne ptr %supplied_fp, null
  %or.cond792 = and i1 %tobool257, %tobool255, !dbg !1503
  br i1 %or.cond792, label %if.end765, label %if.else259.thread, !dbg !1503

if.else259.thread:                                ; preds = %land.lhs.true254
  call void @llvm.dbg.value(metadata ptr null, metadata !1218, metadata !DIExpression()), !dbg !1504
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uv) #11, !dbg !1505
  br label %while.cond267.preheader, !dbg !1506

if.else259:                                       ; preds = %duplicity
  call void @llvm.dbg.value(metadata ptr null, metadata !1218, metadata !DIExpression()), !dbg !1504
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uv) #11, !dbg !1505
  %cmp260.not = icmp eq i32 %num_svs, 1, !dbg !1507
  br i1 %cmp260.not, label %while.cond267.preheader, label %if.then262, !dbg !1506

if.then262:                                       ; preds = %if.else259
  %36 = load ptr, ptr %call, align 8, !dbg !1509
  %xio_type264 = getelementptr inbounds %struct.xpvio, ptr %36, i64 0, i32 16, !dbg !1509
  %37 = load i8, ptr %xio_type264, align 8, !dbg !1509
  %conv265 = sext i8 %37 to i32, !dbg !1509
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, i32 noundef %conv265) #11, !dbg !1511
  br label %while.cond267.preheader, !dbg !1512

while.cond267.preheader:                          ; preds = %if.else259.thread, %if.then262, %if.else259
  br label %while.cond267, !dbg !1513

while.cond267:                                    ; preds = %while.cond267.preheader, %while.cond267
  %type.9 = phi ptr [ %incdec.ptr274, %while.cond267 ], [ %spec.select, %while.cond267.preheader ], !dbg !1514
  call void @llvm.dbg.value(metadata ptr %type.9, metadata !1201, metadata !DIExpression()), !dbg !1266
  %38 = load i8, ptr %type.9, align 1, !dbg !1515
  %idxprom268 = zext i8 %38 to i64, !dbg !1515
  %arrayidx269 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom268, !dbg !1515
  %39 = load i32, ptr %arrayidx269, align 4, !dbg !1515
  %and270 = and i32 %39, 17408, !dbg !1515
  %cmp271 = icmp eq i32 %and270, 17408, !dbg !1515
  %incdec.ptr274 = getelementptr inbounds i8, ptr %type.9, i64 1, !dbg !1516
  call void @llvm.dbg.value(metadata ptr %incdec.ptr274, metadata !1201, metadata !DIExpression()), !dbg !1266
  br i1 %cmp271, label %while.cond267, label %while.end275, !dbg !1513, !llvm.loop !1517

while.end275:                                     ; preds = %while.cond267
  br i1 %tobool31, label %land.lhs.true277, label %if.else300, !dbg !1518

land.lhs.true277:                                 ; preds = %while.end275
  %40 = load ptr, ptr %svp, align 8, !dbg !1519
  %sv_flags278 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2, !dbg !1519
  %41 = load i32, ptr %sv_flags278, align 4, !dbg !1519
  %and279 = and i32 %41, 256, !dbg !1519
  %tobool280.not = icmp eq i32 %and279, 0, !dbg !1519
  br i1 %tobool280.not, label %lor.lhs.false281, label %if.then288, !dbg !1520

lor.lhs.false281:                                 ; preds = %land.lhs.true277
  %and283 = and i32 %41, 16384, !dbg !1521
  %tobool284.not = icmp eq i32 %and283, 0, !dbg !1521
  br i1 %tobool284.not, label %if.else300, label %land.lhs.true285, !dbg !1522

land.lhs.true285:                                 ; preds = %lor.lhs.false281
  %call286 = call i32 @Perl_looks_like_number(ptr noundef nonnull %40) #11, !dbg !1523
  %tobool287.not = icmp eq i32 %call286, 0, !dbg !1523
  br i1 %tobool287.not, label %land.lhs.true285.if.else300_crit_edge, label %land.lhs.true285.if.then288_crit_edge, !dbg !1524

land.lhs.true285.if.else300_crit_edge:            ; preds = %land.lhs.true285
  %.pre1119 = load i8, ptr %type.9, align 1, !dbg !1525
  %idxprom301.phi.trans.insert = zext i8 %.pre1119 to i64
  %arrayidx302.phi.trans.insert = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom301.phi.trans.insert
  %.pre1120 = load i32, ptr %arrayidx302.phi.trans.insert, align 4, !dbg !1525
  br label %if.else300, !dbg !1524

land.lhs.true285.if.then288_crit_edge:            ; preds = %land.lhs.true285
  %.pre1117 = load ptr, ptr %svp, align 8, !dbg !1526
  %sv_flags289.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre1117, i64 0, i32 2
  %.pre1118 = load i32, ptr %sv_flags289.phi.trans.insert, align 4, !dbg !1526
  br label %if.then288, !dbg !1524

if.then288:                                       ; preds = %land.lhs.true285.if.then288_crit_edge, %land.lhs.true277
  %42 = phi i32 [ %.pre1118, %land.lhs.true285.if.then288_crit_edge ], [ %41, %land.lhs.true277 ], !dbg !1526
  %43 = phi ptr [ %.pre1117, %land.lhs.true285.if.then288_crit_edge ], [ %40, %land.lhs.true277 ], !dbg !1526
  %and290 = and i32 %42, -2145386240, !dbg !1526
  %cmp291 = icmp eq i32 %and290, -2147483392, !dbg !1526
  br i1 %cmp291, label %cond.true293, label %cond.false295, !dbg !1526

cond.true293:                                     ; preds = %if.then288
  %44 = load ptr, ptr %43, align 8, !dbg !1526
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %44, i64 0, i32 4, !dbg !1526
  %45 = load i64, ptr %xuv_u, align 8, !dbg !1526
  br label %if.end390.thread, !dbg !1526

cond.false295:                                    ; preds = %if.then288
  %call296 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %43, i32 noundef 2) #11, !dbg !1526
  br label %if.end390.thread, !dbg !1526

if.end390.thread:                                 ; preds = %cond.true293, %cond.false295
  %cond298 = phi i64 [ %45, %cond.true293 ], [ %call296, %cond.false295 ], !dbg !1526
  %conv299 = trunc i64 %cond298 to i32, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %wanted_fd.2, metadata !1226, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata ptr %that_fp.1, metadata !1218, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 %num_svs, metadata !1191, metadata !DIExpression()), !dbg !1266
  br label %58, !dbg !1528

if.else300:                                       ; preds = %land.lhs.true285.if.else300_crit_edge, %lor.lhs.false281, %while.end275
  %46 = phi i32 [ %.pre1120, %land.lhs.true285.if.else300_crit_edge ], [ %39, %lor.lhs.false281 ], [ %39, %while.end275 ], !dbg !1525
  %and303 = and i32 %46, 2, !dbg !1525
  %tobool304.not = icmp eq i32 %and303, 0, !dbg !1525
  br i1 %tobool304.not, label %if.else315, label %land.lhs.true307, !dbg !1529

land.lhs.true307:                                 ; preds = %if.else300
  call void @llvm.dbg.value(metadata ptr %uv, metadata !1227, metadata !DIExpression(DW_OP_deref)), !dbg !1504
  %call308 = call zeroext i1 @Perl_grok_atoUV(ptr noundef nonnull %type.9, ptr noundef nonnull %uv, ptr noundef null) #11, !dbg !1530
  %47 = load i64, ptr %uv, align 8
  call void @llvm.dbg.value(metadata i64 %47, metadata !1227, metadata !DIExpression()), !dbg !1504
  %cmp311 = icmp ult i64 %47, 2147483648
  %or.cond793 = select i1 %call308, i1 %cmp311, i1 false, !dbg !1531
  br i1 %or.cond793, label %if.then313, label %if.else315, !dbg !1531

if.then313:                                       ; preds = %land.lhs.true307
  %conv314 = trunc i64 %47 to i32, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %conv314, metadata !1226, metadata !DIExpression()), !dbg !1504
  br label %if.end390, !dbg !1534

if.else315:                                       ; preds = %if.else300, %land.lhs.true307
  br i1 %tobool31, label %if.then317, label %if.else319, !dbg !1535

if.then317:                                       ; preds = %if.else315
  %48 = load ptr, ptr %svp, align 8, !dbg !1536
  %call318 = call ptr @Perl_sv_2io(ptr noundef %48) #11, !dbg !1536
  call void @llvm.dbg.value(metadata ptr %call318, metadata !1228, metadata !DIExpression()), !dbg !1538
  br label %if.end345, !dbg !1539

if.else319:                                       ; preds = %if.else315
  %sub.ptr.lhs.cast320 = ptrtoint ptr %tend.0.lcssa to i64, !dbg !1540
  %sub.ptr.rhs.cast321 = ptrtoint ptr %type.9 to i64, !dbg !1540
  %sub.ptr.sub322 = sub i64 %sub.ptr.lhs.cast320, %sub.ptr.rhs.cast321, !dbg !1540
  %call323 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull %type.9, i64 noundef %sub.ptr.sub322, i32 noundef 0, i32 noundef 15) #11, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %call323, metadata !1234, metadata !DIExpression()), !dbg !1541
  %tobool324.not = icmp eq ptr %call323, null, !dbg !1542
  br i1 %tobool324.not, label %cleanup416, label %land.lhs.true325, !dbg !1542

land.lhs.true325:                                 ; preds = %if.else319
  %sv_flags326 = getelementptr inbounds %struct.sv, ptr %call323, i64 0, i32 2, !dbg !1542
  %49 = load i32, ptr %sv_flags326, align 4, !dbg !1542
  %and327 = and i32 %49, 255, !dbg !1542
  %and327.off = add nsw i32 %and327, -9, !dbg !1542
  %switch = icmp ult i32 %and327.off, 2, !dbg !1542
  br i1 %switch, label %land.lhs.true335, label %cleanup416, !dbg !1542

land.lhs.true335:                                 ; preds = %land.lhs.true325
  %sv_u336 = getelementptr inbounds %struct.gv, ptr %call323, i64 0, i32 3, !dbg !1542
  %50 = load ptr, ptr %sv_u336, align 8, !dbg !1542
  %tobool338.not = icmp eq ptr %50, null, !dbg !1542
  br i1 %tobool338.not, label %cleanup416, label %cond.true339, !dbg !1542

cond.true339:                                     ; preds = %land.lhs.true335
  %gp_io = getelementptr inbounds %struct.gp, ptr %50, i64 0, i32 1, !dbg !1542
  %51 = load ptr, ptr %gp_io, align 8, !dbg !1542
  br label %if.end345, !dbg !1542

if.end345:                                        ; preds = %cond.true339, %if.then317
  %thatio.0 = phi ptr [ %call318, %if.then317 ], [ %51, %cond.true339 ], !dbg !1543
  call void @llvm.dbg.value(metadata ptr %thatio.0, metadata !1228, metadata !DIExpression()), !dbg !1538
  %tobool346.not = icmp eq ptr %thatio.0, null, !dbg !1544
  br i1 %tobool346.not, label %cleanup416, label %if.end349, !dbg !1546

if.end349:                                        ; preds = %if.end345
  %sv_u350 = getelementptr inbounds %struct.io, ptr %thatio.0, i64 0, i32 3, !dbg !1547
  %52 = load ptr, ptr %sv_u350, align 8, !dbg !1547
  call void @llvm.dbg.value(metadata ptr %52, metadata !1218, metadata !DIExpression()), !dbg !1504
  %tobool351.not = icmp eq ptr %52, null, !dbg !1549
  br i1 %tobool351.not, label %if.end390, label %if.then352, !dbg !1550

if.then352:                                       ; preds = %if.end349
  %call353 = call i32 @Perl_PerlIO_flush(ptr noundef nonnull %52) #11, !dbg !1551
  %call354 = call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %52) #11, !dbg !1553
  call void @llvm.dbg.value(metadata i32 %call354, metadata !1226, metadata !DIExpression()), !dbg !1504
  %call355 = call ptr @Perl_PerlIO_stdout() #11, !dbg !1554
  %cmp356 = icmp eq ptr %52, %call355, !dbg !1556
  br i1 %cmp356, label %if.then362, label %lor.lhs.false358, !dbg !1557

lor.lhs.false358:                                 ; preds = %if.then352
  %call359 = call ptr @Perl_PerlIO_stderr() #11, !dbg !1558
  %cmp360 = icmp eq ptr %52, %call359, !dbg !1559
  br i1 %cmp360, label %if.then362, label %if.else365, !dbg !1560

if.then362:                                       ; preds = %lor.lhs.false358, %if.then352
  %53 = load ptr, ptr %call, align 8, !dbg !1561
  %xio_type364 = getelementptr inbounds %struct.xpvio, ptr %53, i64 0, i32 16, !dbg !1561
  store i8 62, ptr %xio_type364, align 8, !dbg !1562
  br label %if.end390, !dbg !1561

if.else365:                                       ; preds = %lor.lhs.false358
  %call366 = call ptr @Perl_PerlIO_stdin() #11, !dbg !1563
  %cmp367 = icmp eq ptr %52, %call366, !dbg !1565
  br i1 %cmp367, label %if.then369, label %if.else372, !dbg !1566

if.then369:                                       ; preds = %if.else365
  %54 = load ptr, ptr %call, align 8, !dbg !1567
  %xio_type371 = getelementptr inbounds %struct.xpvio, ptr %54, i64 0, i32 16, !dbg !1567
  store i8 60, ptr %xio_type371, align 8, !dbg !1568
  br label %if.end390, !dbg !1567

if.else372:                                       ; preds = %if.else365
  %55 = load ptr, ptr %thatio.0, align 8, !dbg !1569
  %xio_type374 = getelementptr inbounds %struct.xpvio, ptr %55, i64 0, i32 16, !dbg !1569
  %56 = load i8, ptr %xio_type374, align 8, !dbg !1569
  %cmp376 = icmp eq i8 %56, 115, !dbg !1571
  br i1 %cmp376, label %if.then378, label %if.end390, !dbg !1572

if.then378:                                       ; preds = %if.else372
  %57 = load ptr, ptr %call, align 8, !dbg !1573
  %xio_type380 = getelementptr inbounds %struct.xpvio, ptr %57, i64 0, i32 16, !dbg !1573
  store i8 115, ptr %xio_type380, align 8, !dbg !1574
  br label %if.end390, !dbg !1573

if.end390:                                        ; preds = %if.then369, %if.then378, %if.else372, %if.then362, %if.end349, %if.then313
  %that_fp.1 = phi ptr [ null, %if.then313 ], [ null, %if.end349 ], [ %52, %if.then362 ], [ %52, %if.else372 ], [ %52, %if.then378 ], [ %52, %if.then369 ], !dbg !1504
  %wanted_fd.2 = phi i32 [ %conv314, %if.then313 ], [ -1, %if.end349 ], [ %call354, %if.then362 ], [ %call354, %if.else372 ], [ %call354, %if.then378 ], [ %call354, %if.then369 ], !dbg !1575
  call void @llvm.dbg.value(metadata i32 %wanted_fd.2, metadata !1226, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata ptr %that_fp.1, metadata !1218, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 %num_svs, metadata !1191, metadata !DIExpression()), !dbg !1266
  %tobool391.not = icmp eq i32 %num_svs, 0, !dbg !1576
  br i1 %tobool391.not, label %58, label %59, !dbg !1528

58:                                               ; preds = %if.end390.thread, %if.end390
  %wanted_fd.21075 = phi i32 [ %conv299, %if.end390.thread ], [ %wanted_fd.2, %if.end390 ]
  %that_fp.11073 = phi ptr [ null, %if.end390.thread ], [ %that_fp.1, %if.end390 ]
  br label %59, !dbg !1528

59:                                               ; preds = %if.end390, %58
  %wanted_fd.21074 = phi i32 [ %wanted_fd.21075, %58 ], [ %wanted_fd.2, %if.end390 ]
  %that_fp.11072 = phi ptr [ %that_fp.11073, %58 ], [ %that_fp.1, %if.end390 ]
  %num_svs.addr.31070 = phi i32 [ 0, %58 ], [ %num_svs, %if.end390 ]
  %60 = phi ptr [ null, %58 ], [ %type.9, %if.end390 ]
  call void @llvm.dbg.value(metadata ptr %60, metadata !1201, metadata !DIExpression()), !dbg !1266
  %tobool394.not = icmp eq ptr %that_fp.11072, null, !dbg !1578
  br i1 %tobool394.not, label %if.else397, label %if.then395, !dbg !1580

if.then395:                                       ; preds = %59
  %call396 = call ptr @PerlIO_fdupopen(ptr noundef nonnull %that_fp.11072, ptr noundef null, i32 noundef %spec.select1031) #11, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %call396, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %cleanup416.thread, !dbg !1583

if.else397:                                       ; preds = %59
  br i1 %cmp248, label %if.end402, label %if.then399, !dbg !1584

if.then399:                                       ; preds = %if.else397
  %call400 = call i32 @dup(i32 noundef %wanted_fd.21074) #11, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %call400, metadata !1226, metadata !DIExpression()), !dbg !1504
  br label %if.end402, !dbg !1588

if.end402:                                        ; preds = %if.else397, %if.then399
  %was_fdopen.3 = phi i8 [ 0, %if.then399 ], [ 1, %if.else397 ], !dbg !1266
  %wanted_fd.3 = phi i32 [ %call400, %if.then399 ], [ %wanted_fd.21074, %if.else397 ], !dbg !1504
  call void @llvm.dbg.value(metadata i32 %wanted_fd.3, metadata !1226, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i8 %was_fdopen.3, metadata !1200, metadata !DIExpression()), !dbg !1266
  %call404 = call ptr @PerlIO_openn(ptr noundef %60, ptr noundef nonnull %mode, i32 noundef %wanted_fd.3, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %num_svs.addr.31070, ptr noundef %svp) #11, !dbg !1589
  call void @llvm.dbg.value(metadata ptr %call404, metadata !1199, metadata !DIExpression()), !dbg !1266
  %tobool405.not = icmp eq ptr %call404, null, !dbg !1591
  br i1 %tobool405.not, label %if.then406, label %cleanup416.thread, !dbg !1592

if.then406:                                       ; preds = %if.end402
  %cmp409 = icmp slt i32 %wanted_fd.3, 0
  %61 = or i1 %cmp248, %cmp409, !dbg !1593
  br i1 %61, label %cleanup416.thread, label %if.then411, !dbg !1593

if.then411:                                       ; preds = %if.then406
  %call412 = call i32 @close(i32 noundef %wanted_fd.3) #11, !dbg !1596
  br label %cleanup416.thread, !dbg !1596

cleanup416.thread:                                ; preds = %if.end402, %if.then411, %if.then406, %if.then395
  %fp.5.ph = phi ptr [ null, %if.then406 ], [ null, %if.then411 ], [ %call404, %if.end402 ], [ %call396, %if.then395 ]
  %was_fdopen.5.ph = phi i8 [ %was_fdopen.3, %if.then406 ], [ %was_fdopen.3, %if.then411 ], [ %was_fdopen.3, %if.end402 ], [ 0, %if.then395 ]
  call void @llvm.dbg.value(metadata i32 %num_svs, metadata !1191, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.9, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 0, metadata !1200, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr null, metadata !1199, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uv) #11, !dbg !1597
  br label %if.end473

cleanup416:                                       ; preds = %land.lhs.true325, %if.else319, %land.lhs.true335, %if.end345
  %call348 = tail call ptr @__errno_location() #13, !dbg !1598
  store i32 22, ptr %call348, align 4, !dbg !1598
  call void @llvm.dbg.value(metadata i32 undef, metadata !1226, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata ptr null, metadata !1218, metadata !DIExpression()), !dbg !1504
  call void @llvm.dbg.value(metadata i32 %num_svs, metadata !1191, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.9, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 0, metadata !1200, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr null, metadata !1199, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uv) #11, !dbg !1597
  br label %cleanup779

while.body429:                                    ; preds = %while.cond423.preheader, %while.body429
  %type.121111 = phi ptr [ %incdec.ptr430, %while.body429 ], [ %type.6, %while.cond423.preheader ]
  call void @llvm.dbg.value(metadata ptr %type.121111, metadata !1201, metadata !DIExpression()), !dbg !1266
  %incdec.ptr430 = getelementptr inbounds i8, ptr %type.121111, i64 1, !dbg !1600
  call void @llvm.dbg.value(metadata ptr %incdec.ptr430, metadata !1201, metadata !DIExpression()), !dbg !1266
  %.pr1082 = load i8, ptr %incdec.ptr430, align 1, !dbg !1492
  %idxprom424 = zext i8 %.pr1082 to i64, !dbg !1492
  %arrayidx425 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom424, !dbg !1492
  %62 = load i32, ptr %arrayidx425, align 4, !dbg !1492
  %and426 = and i32 %62, 17408, !dbg !1492
  %cmp427 = icmp eq i32 %and426, 17408, !dbg !1492
  br i1 %cmp427, label %while.body429, label %while.end431, !dbg !1493, !llvm.loop !1601

while.end431:                                     ; preds = %while.body429, %while.cond423.preheader
  %.lcssa1103 = phi i8 [ %32, %while.cond423.preheader ], [ %.pr1082, %while.body429 ], !dbg !1492
  %type.12.lcssa = phi ptr [ %type.6, %while.cond423.preheader ], [ %incdec.ptr430, %while.body429 ], !dbg !1485
  %cmp433 = icmp eq i8 %.lcssa1103, 45, !dbg !1602
  br i1 %cmp433, label %land.lhs.true435, label %if.else459, !dbg !1603

land.lhs.true435:                                 ; preds = %while.end431
  %arrayidx436 = getelementptr inbounds i8, ptr %type.12.lcssa, i64 1, !dbg !1604
  %63 = load i8, ptr %arrayidx436, align 1, !dbg !1604
  %tobool437.not = icmp eq i8 %63, 0, !dbg !1604
  br i1 %tobool437.not, label %if.then450, label %lor.lhs.false438, !dbg !1605

lor.lhs.false438:                                 ; preds = %land.lhs.true435
  %idxprom440 = zext i8 %63 to i64, !dbg !1606
  %arrayidx441 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom440, !dbg !1606
  %64 = load i32, ptr %arrayidx441, align 4, !dbg !1606
  %and442 = and i32 %64, 17408, !dbg !1606
  %cmp443 = icmp eq i32 %and442, 17408, !dbg !1606
  %cmp448 = icmp eq i8 %63, 58
  %or.cond1033 = select i1 %cmp443, i1 true, i1 %cmp448, !dbg !1607
  br i1 %or.cond1033, label %if.then450, label %if.else459, !dbg !1607

if.then450:                                       ; preds = %lor.lhs.false438, %land.lhs.true435
  call void @llvm.dbg.value(metadata ptr %arrayidx436, metadata !1201, metadata !DIExpression()), !dbg !1266
  %call452 = call ptr @Perl_PerlIO_stdout() #11, !dbg !1608
  call void @llvm.dbg.value(metadata ptr %call452, metadata !1199, metadata !DIExpression()), !dbg !1266
  %65 = load ptr, ptr %call, align 8, !dbg !1610
  %xio_type454 = getelementptr inbounds %struct.xpvio, ptr %65, i64 0, i32 16, !dbg !1610
  store i8 45, ptr %xio_type454, align 8, !dbg !1611
  %cmp455 = icmp ugt i32 %num_svs, 1, !dbg !1612
  br i1 %cmp455, label %if.then457, label %if.end473, !dbg !1614

if.then457:                                       ; preds = %if.then450
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 45) #11, !dbg !1615
  br label %if.end473, !dbg !1617

if.else459:                                       ; preds = %lor.lhs.false438, %while.end431
  br i1 %tobool31, label %if.then461, label %if.else464, !dbg !1618

if.then461:                                       ; preds = %if.else459
  %call463 = call ptr @PerlIO_openn(ptr noundef nonnull %type.12.lcssa, ptr noundef nonnull %mode, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %num_svs, ptr noundef %svp) #11, !dbg !1619
  call void @llvm.dbg.value(metadata ptr %call463, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %if.end473, !dbg !1621

if.else464:                                       ; preds = %if.else459
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %namesv) #11, !dbg !1622
  %sub.ptr.lhs.cast465 = ptrtoint ptr %tend.0.lcssa to i64, !dbg !1623
  %sub.ptr.rhs.cast466 = ptrtoint ptr %type.12.lcssa to i64, !dbg !1623
  %sub.ptr.sub467 = sub i64 %sub.ptr.lhs.cast465, %sub.ptr.rhs.cast466, !dbg !1623
  %call468 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %type.12.lcssa, i64 noundef %sub.ptr.sub467, i32 noundef 524288) #11, !dbg !1623
  call void @llvm.dbg.value(metadata ptr %call468, metadata !1238, metadata !DIExpression()), !dbg !1624
  store ptr %call468, ptr %namesv, align 8, !dbg !1625
  call void @llvm.dbg.value(metadata ptr null, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %namesv, metadata !1238, metadata !DIExpression(DW_OP_deref)), !dbg !1624
  %call470 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %mode, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %namesv) #11, !dbg !1626
  call void @llvm.dbg.value(metadata ptr %call470, metadata !1199, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %namesv) #11, !dbg !1627
  br label %if.end765

if.end473:                                        ; preds = %cleanup416.thread, %if.then457, %if.then450, %if.then461
  %fp.6 = phi ptr [ %call452, %if.then457 ], [ %call452, %if.then450 ], [ %call463, %if.then461 ], [ %fp.5.ph, %cleanup416.thread ], !dbg !1628
  %was_fdopen.6 = phi i8 [ 0, %if.then457 ], [ 0, %if.then450 ], [ 0, %if.then461 ], [ %was_fdopen.5.ph, %cleanup416.thread ], !dbg !1384
  %type.13 = phi ptr [ %arrayidx436, %if.then457 ], [ %arrayidx436, %if.then450 ], [ %type.12.lcssa, %if.then461 ], [ %60, %cleanup416.thread ], !dbg !1485
  %writing.5 = phi i32 [ 1, %if.then457 ], [ 1, %if.then450 ], [ 1, %if.then461 ], [ %writing.4, %cleanup416.thread ], !dbg !1629
  %num_svs.addr.5 = phi i32 [ %num_svs, %if.then457 ], [ %num_svs, %if.then450 ], [ %num_svs, %if.then461 ], [ %num_svs.addr.31070, %cleanup416.thread ]
  call void @llvm.dbg.value(metadata i32 %num_svs.addr.5, metadata !1191, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %writing.5, metadata !1198, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.13, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %was_fdopen.6, metadata !1200, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %fp.6, metadata !1199, metadata !DIExpression()), !dbg !1266
  %tobool474 = icmp eq ptr %fp.6, null, !dbg !1630
  %tobool476 = icmp ne ptr %type.13, null
  %or.cond795 = select i1 %tobool474, i1 %tobool476, i1 false, !dbg !1632
  br i1 %or.cond795, label %land.lhs.true477, label %if.end765, !dbg !1632

land.lhs.true477:                                 ; preds = %if.end473
  %66 = load i8, ptr %type.13, align 1, !dbg !1633
  switch i8 %66, label %land.lhs.true484 [
    i8 0, label %if.end765
    i8 58, label %if.end765
  ], !dbg !1634

land.lhs.true484:                                 ; preds = %land.lhs.true477
  %idxprom485 = zext i8 %66 to i64, !dbg !1635
  %arrayidx486 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom485, !dbg !1635
  %67 = load i32, ptr %arrayidx486, align 4, !dbg !1635
  %and487 = and i32 %67, 81920, !dbg !1635
  %cmp488 = icmp eq i32 %and487, 81920, !dbg !1635
  br i1 %cmp488, label %if.end765, label %unknown_open_mode, !dbg !1636

do.body497:                                       ; preds = %if.end106, %do.body497
  %type.14 = phi ptr [ %incdec.ptr498, %do.body497 ], [ %type.1, %if.end106 ], !dbg !1274
  call void @llvm.dbg.value(metadata ptr %type.14, metadata !1201, metadata !DIExpression()), !dbg !1266
  %incdec.ptr498 = getelementptr inbounds i8, ptr %type.14, i64 1, !dbg !1637
  call void @llvm.dbg.value(metadata ptr %incdec.ptr498, metadata !1201, metadata !DIExpression()), !dbg !1266
  %68 = load i8, ptr %incdec.ptr498, align 1, !dbg !1639
  %idxprom500 = zext i8 %68 to i64, !dbg !1639
  %arrayidx501 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom500, !dbg !1639
  %69 = load i32, ptr %arrayidx501, align 4, !dbg !1639
  %and502 = and i32 %69, 17408, !dbg !1639
  %cmp503 = icmp eq i32 %and502, 17408, !dbg !1639
  br i1 %cmp503, label %do.body497, label %do.end505, !dbg !1640, !llvm.loop !1641

do.end505:                                        ; preds = %do.body497
  store i8 114, ptr %mode, align 1, !dbg !1644
  %brmerge1150 = select i1 %in_raw.0, i1 true, i1 %in_crlf.0, !dbg !1645
  br i1 %brmerge1150, label %if.end515.sink.split, label %if.end515, !dbg !1645

if.end515.sink.split:                             ; preds = %do.end505
  %.mux1151 = select i1 %in_raw.0, i8 98, i8 116, !dbg !1645
  %arrayidx513 = getelementptr inbounds [8 x i8], ptr %mode, i64 0, i64 1, !dbg !1646
  store i8 %.mux1151, ptr %arrayidx513, align 1, !dbg !1646
  br label %if.end515, !dbg !1648

if.end515:                                        ; preds = %do.end505, %if.end515.sink.split
  %70 = load i8, ptr %incdec.ptr498, align 1, !dbg !1648
  switch i8 %70, label %if.else548 [
    i8 38, label %duplicity
    i8 45, label %land.lhs.true524
  ], !dbg !1650

land.lhs.true524:                                 ; preds = %if.end515
  %arrayidx525 = getelementptr inbounds i8, ptr %type.14, i64 2, !dbg !1651
  %71 = load i8, ptr %arrayidx525, align 1, !dbg !1651
  %tobool526.not = icmp eq i8 %71, 0, !dbg !1651
  br i1 %tobool526.not, label %if.then539, label %lor.lhs.false527, !dbg !1652

lor.lhs.false527:                                 ; preds = %land.lhs.true524
  %idxprom529 = zext i8 %71 to i64, !dbg !1653
  %arrayidx530 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom529, !dbg !1653
  %72 = load i32, ptr %arrayidx530, align 4, !dbg !1653
  %and531 = and i32 %72, 17408, !dbg !1653
  %cmp532 = icmp eq i32 %and531, 17408, !dbg !1653
  %cmp537 = icmp eq i8 %71, 58
  %or.cond1034 = select i1 %cmp532, i1 true, i1 %cmp537, !dbg !1654
  br i1 %or.cond1034, label %if.then539, label %if.else548, !dbg !1654

if.then539:                                       ; preds = %lor.lhs.false527, %land.lhs.true524
  call void @llvm.dbg.value(metadata ptr %arrayidx525, metadata !1201, metadata !DIExpression()), !dbg !1266
  %call541 = call ptr @Perl_PerlIO_stdin() #11, !dbg !1655
  call void @llvm.dbg.value(metadata ptr %call541, metadata !1199, metadata !DIExpression()), !dbg !1266
  %73 = load ptr, ptr %call, align 8, !dbg !1657
  %xio_type543 = getelementptr inbounds %struct.xpvio, ptr %73, i64 0, i32 16, !dbg !1657
  store i8 45, ptr %xio_type543, align 8, !dbg !1658
  %cmp544 = icmp ugt i32 %num_svs, 1, !dbg !1659
  br i1 %cmp544, label %if.then546, label %if.end562, !dbg !1661

if.then546:                                       ; preds = %if.then539
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, i32 noundef 45) #11, !dbg !1662
  br label %if.end562, !dbg !1664

if.else548:                                       ; preds = %lor.lhs.false527, %if.end515
  br i1 %tobool31, label %if.then550, label %if.end562.thread, !dbg !1665

if.then550:                                       ; preds = %if.else548
  %call552 = call ptr @PerlIO_openn(ptr noundef nonnull %incdec.ptr498, ptr noundef nonnull %mode, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %num_svs, ptr noundef %svp) #11, !dbg !1666
  call void @llvm.dbg.value(metadata ptr %call552, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %if.end562, !dbg !1668

if.end562.thread:                                 ; preds = %if.else548
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %namesv554) #11, !dbg !1669
  %sub.ptr.lhs.cast555 = ptrtoint ptr %tend.0.lcssa to i64, !dbg !1670
  %sub.ptr.rhs.cast556 = ptrtoint ptr %incdec.ptr498 to i64, !dbg !1670
  %sub.ptr.sub557 = sub i64 %sub.ptr.lhs.cast555, %sub.ptr.rhs.cast556, !dbg !1670
  %call558 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %incdec.ptr498, i64 noundef %sub.ptr.sub557, i32 noundef 524288) #11, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %call558, metadata !1244, metadata !DIExpression()), !dbg !1671
  store ptr %call558, ptr %namesv554, align 8, !dbg !1672
  call void @llvm.dbg.value(metadata ptr null, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %namesv554, metadata !1244, metadata !DIExpression(DW_OP_deref)), !dbg !1671
  %call560 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %mode, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %namesv554) #11, !dbg !1673
  call void @llvm.dbg.value(metadata ptr %call560, metadata !1199, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %namesv554) #11, !dbg !1674
  call void @llvm.dbg.value(metadata ptr %type.15, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %fp.7, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %if.end765, !dbg !1675

if.end562:                                        ; preds = %if.then550, %if.then539, %if.then546
  %fp.7 = phi ptr [ %call541, %if.then546 ], [ %call541, %if.then539 ], [ %call552, %if.then550 ], !dbg !1677
  %type.15 = phi ptr [ %arrayidx525, %if.then546 ], [ %arrayidx525, %if.then539 ], [ %incdec.ptr498, %if.then550 ], !dbg !1678
  call void @llvm.dbg.value(metadata ptr %type.15, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %fp.7, metadata !1199, metadata !DIExpression()), !dbg !1266
  %tobool563 = icmp eq ptr %fp.7, null, !dbg !1679
  br i1 %tobool563, label %land.lhs.true566, label %if.end765, !dbg !1675

land.lhs.true566:                                 ; preds = %if.end562
  %74 = load i8, ptr %type.15, align 1, !dbg !1680
  switch i8 %74, label %land.lhs.true573 [
    i8 0, label %if.end765
    i8 58, label %if.end765
  ], !dbg !1681

land.lhs.true573:                                 ; preds = %land.lhs.true566
  %idxprom574 = zext i8 %74 to i64, !dbg !1682
  %arrayidx575 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom574, !dbg !1682
  %75 = load i32, ptr %arrayidx575, align 4, !dbg !1682
  %and576 = and i32 %75, 81920, !dbg !1682
  %cmp577 = icmp eq i32 %and576, 81920, !dbg !1682
  br i1 %cmp577, label %if.end765, label %unknown_open_mode, !dbg !1683

if.else581:                                       ; preds = %if.end106
  %cmp586 = icmp eq i8 %19, 45
  %or.cond1035 = select i1 %tobool31, i1 %cmp586, i1 false, !dbg !1684
  br i1 %or.cond1035, label %land.lhs.true588, label %lor.lhs.false593, !dbg !1684

land.lhs.true588:                                 ; preds = %if.else581
  %arrayidx589 = getelementptr inbounds i8, ptr %type.1, i64 1, !dbg !1685
  %76 = load i8, ptr %arrayidx589, align 1, !dbg !1685
  %cmp591 = icmp eq i8 %76, 124, !dbg !1686
  br i1 %cmp591, label %if.then604, label %lor.lhs.false593, !dbg !1687

lor.lhs.false593:                                 ; preds = %land.lhs.true76, %land.lhs.true588, %if.else581
  %writing.010521100 = phi i32 [ %writing.0, %land.lhs.true588 ], [ %writing.0, %if.else581 ], [ 0, %land.lhs.true76 ]
  %type.11048 = phi ptr [ %type.1, %land.lhs.true588 ], [ %type.1, %if.else581 ], [ %type.0, %land.lhs.true76 ]
  %tobool31.not = xor i1 %tobool31, true, !dbg !1688
  %add.ptr596 = getelementptr inbounds i8, ptr %type.11048, i64 1
  %cmp597 = icmp ugt ptr %tend.0.lcssa, %add.ptr596
  %or.cond1036 = select i1 %tobool31.not, i1 %cmp597, i1 false, !dbg !1688
  br i1 %or.cond1036, label %land.lhs.true599, label %if.else709, !dbg !1688

land.lhs.true599:                                 ; preds = %lor.lhs.false593
  %arrayidx600 = getelementptr inbounds i8, ptr %tend.0.lcssa, i64 -1, !dbg !1689
  %77 = load i8, ptr %arrayidx600, align 1, !dbg !1689
  %cmp602 = icmp eq i8 %77, 124, !dbg !1690
  br i1 %cmp602, label %if.then604, label %if.else709, !dbg !1691

if.then604:                                       ; preds = %land.lhs.true599, %land.lhs.true588
  %writing.01053 = phi i32 [ %writing.010521100, %land.lhs.true599 ], [ %writing.0, %land.lhs.true588 ]
  %type.11049 = phi ptr [ %type.11048, %land.lhs.true599 ], [ %type.1, %land.lhs.true588 ]
  br i1 %tobool31, label %if.then606, label %if.else608, !dbg !1692

if.then606:                                       ; preds = %if.then604
  %add.ptr607 = getelementptr inbounds i8, ptr %type.11049, i64 2, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %add.ptr607, metadata !1201, metadata !DIExpression()), !dbg !1266
  %.pre1121 = load i8, ptr %name.1, align 1, !dbg !1697
  br label %if.end633, !dbg !1699

if.else608:                                       ; preds = %if.then604
  %incdec.ptr609 = getelementptr inbounds i8, ptr %tend.0.lcssa, i64 -1, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %incdec.ptr609, metadata !1205, metadata !DIExpression()), !dbg !1274
  store i8 0, ptr %incdec.ptr609, align 1, !dbg !1702
  %cmp6111114 = icmp ugt ptr %incdec.ptr609, %type.11049, !dbg !1703
  br i1 %cmp6111114, label %land.rhs613, label %for.cond.preheader, !dbg !1704

land.rhs613:                                      ; preds = %if.else608, %while.body621
  %tend.11115 = phi ptr [ %arrayidx614, %while.body621 ], [ %incdec.ptr609, %if.else608 ]
  call void @llvm.dbg.value(metadata ptr %tend.11115, metadata !1205, metadata !DIExpression()), !dbg !1274
  %arrayidx614 = getelementptr inbounds i8, ptr %tend.11115, i64 -1, !dbg !1705
  %78 = load i8, ptr %arrayidx614, align 1, !dbg !1705
  %idxprom615 = zext i8 %78 to i64, !dbg !1705
  %arrayidx616 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom615, !dbg !1705
  %79 = load i32, ptr %arrayidx616, align 4, !dbg !1705
  %and617 = and i32 %79, 17408, !dbg !1705
  %cmp618 = icmp eq i32 %and617, 17408, !dbg !1705
  br i1 %cmp618, label %while.body621, label %for.cond.preheader, !dbg !1706

while.body621:                                    ; preds = %land.rhs613
  call void @llvm.dbg.value(metadata ptr %arrayidx614, metadata !1205, metadata !DIExpression()), !dbg !1274
  store i8 0, ptr %arrayidx614, align 1, !dbg !1707
  %cmp611 = icmp ugt ptr %arrayidx614, %type.11049, !dbg !1703
  br i1 %cmp611, label %land.rhs613, label %for.cond.preheader, !dbg !1704, !llvm.loop !1708

for.cond.preheader:                               ; preds = %land.rhs613, %while.body621, %if.else608
  br label %for.cond, !dbg !1710

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  %type.16 = phi ptr [ %incdec.ptr629, %for.cond ], [ %type.11049, %for.cond.preheader ], !dbg !1274
  call void @llvm.dbg.value(metadata ptr %type.16, metadata !1201, metadata !DIExpression()), !dbg !1266
  %80 = load i8, ptr %type.16, align 1, !dbg !1712
  %idxprom624 = zext i8 %80 to i64, !dbg !1712
  %arrayidx625 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom624, !dbg !1712
  %81 = load i32, ptr %arrayidx625, align 4, !dbg !1712
  %and626 = and i32 %81, 17408, !dbg !1712
  %cmp627 = icmp eq i32 %and626, 17408, !dbg !1712
  %incdec.ptr629 = getelementptr inbounds i8, ptr %type.16, i64 1, !dbg !1714
  call void @llvm.dbg.value(metadata ptr %incdec.ptr629, metadata !1201, metadata !DIExpression()), !dbg !1266
  br i1 %cmp627, label %for.cond, label %if.end633, !dbg !1710, !llvm.loop !1715

if.end633:                                        ; preds = %for.cond, %if.then606
  %82 = phi i8 [ %.pre1121, %if.then606 ], [ %80, %for.cond ], !dbg !1697
  %type.17 = phi ptr [ %add.ptr607, %if.then606 ], [ %type.16, %for.cond ], !dbg !1274
  %name.3 = phi ptr [ %name.1, %if.then606 ], [ %type.16, %for.cond ], !dbg !1274
  call void @llvm.dbg.value(metadata ptr %name.3, metadata !1202, metadata !DIExpression()), !dbg !1274
  call void @llvm.dbg.value(metadata ptr %type.17, metadata !1201, metadata !DIExpression()), !dbg !1266
  switch i8 %82, label %if.then653 [
    i8 0, label %if.then637
    i8 45, label %land.lhs.true646
  ], !dbg !1717

if.then637:                                       ; preds = %if.end633
  %call638 = call zeroext i1 @Perl_ckwarn(i32 noundef 10) #11, !dbg !1718
  br i1 %call638, label %if.then639, label %if.end640, !dbg !1721

if.then639:                                       ; preds = %if.then637
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 10, ptr noundef nonnull @.str.6) #11, !dbg !1722
  br label %if.end640, !dbg !1722

if.end640:                                        ; preds = %if.then639, %if.then637
  %call641 = tail call ptr @__errno_location() #13, !dbg !1723
  store i32 32, ptr %call641, align 4, !dbg !1724
  call void @llvm.dbg.value(metadata ptr null, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %cleanup779, !dbg !1725

land.lhs.true646:                                 ; preds = %if.end633
  %arrayidx647 = getelementptr inbounds i8, ptr %name.3, i64 1, !dbg !1726
  %83 = load i8, ptr %arrayidx647, align 1, !dbg !1726
  %cmp649 = icmp ne i8 %83, 0, !dbg !1728
  %or.cond797 = or i1 %tobool31, %cmp649, !dbg !1729
  %or.cond797.not = xor i1 %or.cond797, true, !dbg !1729
  %84 = load i8, ptr @PL_tainting, align 1
  %tobool654.not = icmp eq i8 %84, 0
  %or.cond1038 = select i1 %or.cond797.not, i1 true, i1 %tobool654.not, !dbg !1729
  br i1 %or.cond1038, label %if.end660, label %if.then658, !dbg !1729

if.then653:                                       ; preds = %if.end633
  %.old1037 = load i8, ptr @PL_tainting, align 1, !dbg !1730, !range !1370
  %tobool654.not.old = icmp eq i8 %.old1037, 0, !dbg !1730
  br i1 %tobool654.not.old, label %if.end666, label %if.then658, !dbg !1732

if.then658:                                       ; preds = %land.lhs.true646, %if.then653
  call void @Perl_taint_env() #11, !dbg !1733
  %.pr1101 = load i8, ptr @PL_tainting, align 1, !dbg !1735
  br label %if.end660, !dbg !1733

if.end660:                                        ; preds = %if.then658, %land.lhs.true646
  %85 = phi i8 [ %.pr1101, %if.then658 ], [ %84, %land.lhs.true646 ], !dbg !1735
  %tobool661.not = icmp eq i8 %85, 0, !dbg !1735
  br i1 %tobool661.not, label %if.end666, label %if.then665, !dbg !1737

if.then665:                                       ; preds = %if.end660
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.7) #11, !dbg !1738
  br label %if.end666, !dbg !1738

if.end666:                                        ; preds = %if.then653, %if.end660, %if.then665
  store i8 114, ptr %mode, align 1, !dbg !1740
  %brmerge1152 = select i1 %in_raw.0, i1 true, i1 %in_crlf.0, !dbg !1741
  br i1 %brmerge1152, label %if.end676.sink.split, label %if.end676, !dbg !1741

if.end676.sink.split:                             ; preds = %if.end666
  %.mux1153 = select i1 %in_raw.0, i8 98, i8 116, !dbg !1741
  %arrayidx674 = getelementptr inbounds [8 x i8], ptr %mode, i64 0, i64 1, !dbg !1742
  store i8 %.mux1153, ptr %arrayidx674, align 1, !dbg !1742
  br label %if.end676, !dbg !1744

if.end676:                                        ; preds = %if.end666, %if.end676.sink.split
  %cmp677 = icmp ugt i32 %num_svs, 1, !dbg !1744
  br i1 %cmp677, label %if.then679, label %if.else682, !dbg !1746

if.then679:                                       ; preds = %if.end676
  %call681 = call ptr @Perl_my_popen_list(ptr noundef nonnull %mode, i32 noundef %num_svs, ptr noundef %svp) #11, !dbg !1747
  call void @llvm.dbg.value(metadata ptr %call681, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %if.end685, !dbg !1749

if.else682:                                       ; preds = %if.end676
  %call684 = call ptr @Perl_my_popen(ptr noundef nonnull %name.3, ptr noundef nonnull %mode) #11, !dbg !1750
  call void @llvm.dbg.value(metadata ptr %call684, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %if.end685

if.end685:                                        ; preds = %if.else682, %if.then679
  %fp.8 = phi ptr [ %call681, %if.then679 ], [ %call684, %if.else682 ], !dbg !1752
  call void @llvm.dbg.value(metadata ptr %fp.8, metadata !1199, metadata !DIExpression()), !dbg !1266
  %86 = load ptr, ptr %call, align 8, !dbg !1753
  %xio_type687 = getelementptr inbounds %struct.xpvio, ptr %86, i64 0, i32 16, !dbg !1753
  store i8 124, ptr %xio_type687, align 8, !dbg !1754
  br i1 %tobool31, label %while.cond690, label %if.end765, !dbg !1755

while.cond690:                                    ; preds = %if.end685, %while.cond690
  %type.18 = phi ptr [ %incdec.ptr697, %while.cond690 ], [ %type.17, %if.end685 ], !dbg !1756
  call void @llvm.dbg.value(metadata ptr %type.18, metadata !1201, metadata !DIExpression()), !dbg !1266
  %87 = load i8, ptr %type.18, align 1, !dbg !1757
  %idxprom691 = zext i8 %87 to i64, !dbg !1757
  %arrayidx692 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom691, !dbg !1757
  %88 = load i32, ptr %arrayidx692, align 4, !dbg !1757
  %and693 = and i32 %88, 17408, !dbg !1757
  %cmp694 = icmp eq i32 %and693, 17408, !dbg !1757
  %incdec.ptr697 = getelementptr inbounds i8, ptr %type.18, i64 1, !dbg !1760
  call void @llvm.dbg.value(metadata ptr %incdec.ptr697, metadata !1201, metadata !DIExpression()), !dbg !1266
  br i1 %cmp694, label %while.cond690, label %while.end698, !dbg !1761, !llvm.loop !1762

while.end698:                                     ; preds = %while.cond690
  %tobool699.not = icmp eq i8 %87, 0, !dbg !1763
  br i1 %tobool699.not, label %if.end765, label %if.then700, !dbg !1765

if.then700:                                       ; preds = %while.end698
  %call702 = call i32 @PerlIO_apply_layers(ptr noundef %fp.8, ptr noundef nonnull %mode, ptr noundef nonnull %type.18) #11, !dbg !1766
  %cmp703.not = icmp eq i32 %call702, 0, !dbg !1769
  br i1 %cmp703.not, label %if.end765, label %cleanup779, !dbg !1770

if.else709:                                       ; preds = %land.lhs.true599, %lor.lhs.false593
  br i1 %tobool31, label %unknown_open_mode, label %if.end712, !dbg !1771

if.end712:                                        ; preds = %if.else709
  call void @llvm.dbg.value(metadata ptr %type.1, metadata !1202, metadata !DIExpression()), !dbg !1274
  %89 = load ptr, ptr %call, align 8, !dbg !1772
  %xio_type714 = getelementptr inbounds %struct.xpvio, ptr %89, i64 0, i32 16, !dbg !1772
  store i8 60, ptr %xio_type714, align 8, !dbg !1773
  br label %for.cond715, !dbg !1774

for.cond715:                                      ; preds = %for.cond715, %if.end712
  %name.4 = phi ptr [ %type.11048, %if.end712 ], [ %incdec.ptr723, %for.cond715 ], !dbg !1775
  call void @llvm.dbg.value(metadata ptr %name.4, metadata !1202, metadata !DIExpression()), !dbg !1274
  %90 = load i8, ptr %name.4, align 1, !dbg !1776
  %idxprom716 = zext i8 %90 to i64, !dbg !1776
  %arrayidx717 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom716, !dbg !1776
  %91 = load i32, ptr %arrayidx717, align 4, !dbg !1776
  %and718 = and i32 %91, 17408, !dbg !1776
  %cmp719 = icmp eq i32 %and718, 17408, !dbg !1776
  %incdec.ptr723 = getelementptr inbounds i8, ptr %name.4, i64 1, !dbg !1779
  call void @llvm.dbg.value(metadata ptr %incdec.ptr723, metadata !1202, metadata !DIExpression()), !dbg !1274
  br i1 %cmp719, label %for.cond715, label %for.end724, !dbg !1780, !llvm.loop !1781

for.end724:                                       ; preds = %for.cond715
  store i8 114, ptr %mode, align 1, !dbg !1783
  %brmerge1154 = select i1 %in_raw.0, i1 true, i1 %in_crlf.0, !dbg !1784
  br i1 %brmerge1154, label %if.end734.sink.split, label %if.end734, !dbg !1784

if.end734.sink.split:                             ; preds = %for.end724
  %.mux1155 = select i1 %in_raw.0, i8 98, i8 116, !dbg !1784
  %arrayidx732 = getelementptr inbounds [8 x i8], ptr %mode, i64 0, i64 1, !dbg !1785
  store i8 %.mux1155, ptr %arrayidx732, align 1, !dbg !1785
  br label %if.end734, !dbg !1787

if.end734:                                        ; preds = %for.end724, %if.end734.sink.split
  %92 = load i8, ptr %name.4, align 1, !dbg !1787
  %cmp736 = icmp eq i8 %92, 45, !dbg !1788
  br i1 %cmp736, label %land.lhs.true738, label %if.else752, !dbg !1789

land.lhs.true738:                                 ; preds = %if.end734
  %93 = load i8, ptr %incdec.ptr723, align 1, !dbg !1790
  %cmp741 = icmp eq i8 %93, 0, !dbg !1791
  br i1 %cmp741, label %if.then743, label %if.else752, !dbg !1792

if.then743:                                       ; preds = %land.lhs.true738
  %call744 = call ptr @Perl_PerlIO_stdin() #11, !dbg !1793
  call void @llvm.dbg.value(metadata ptr %call744, metadata !1199, metadata !DIExpression()), !dbg !1266
  %94 = load ptr, ptr %call, align 8, !dbg !1795
  %xio_type746 = getelementptr inbounds %struct.xpvio, ptr %94, i64 0, i32 16, !dbg !1795
  store i8 45, ptr %xio_type746, align 8, !dbg !1796
  br label %if.end765, !dbg !1797

if.else752:                                       ; preds = %if.end734, %land.lhs.true738
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %namesv753) #11, !dbg !1798
  %sub.ptr.lhs.cast754 = ptrtoint ptr %tend.0.lcssa to i64, !dbg !1799
  %sub.ptr.rhs.cast755 = ptrtoint ptr %type.11048 to i64, !dbg !1799
  %sub.ptr.sub756 = sub i64 %sub.ptr.lhs.cast754, %sub.ptr.rhs.cast755, !dbg !1799
  %call757 = call ptr @Perl_newSVpvn_flags(ptr noundef nonnull %type.11048, i64 noundef %sub.ptr.sub756, i32 noundef 524288) #11, !dbg !1799
  call void @llvm.dbg.value(metadata ptr %call757, metadata !1251, metadata !DIExpression()), !dbg !1800
  store ptr %call757, ptr %namesv753, align 8, !dbg !1801
  call void @llvm.dbg.value(metadata ptr null, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %namesv753, metadata !1251, metadata !DIExpression(DW_OP_deref)), !dbg !1800
  %call759 = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %mode, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %namesv753) #11, !dbg !1802
  call void @llvm.dbg.value(metadata ptr %call759, metadata !1199, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %namesv753) #11, !dbg !1803
  br label %if.end765

if.end765:                                        ; preds = %if.else464, %land.lhs.true254, %if.end562.thread, %land.lhs.true566, %land.lhs.true566, %land.lhs.true477, %land.lhs.true477, %land.lhs.true484, %if.end473, %while.end698, %if.then700, %if.end685, %if.else752, %if.then743, %if.end562, %land.lhs.true573, %if.end197, %if.then201, %if.then199
  %fp.9 = phi ptr [ %fp.2, %if.then201 ], [ %fp.2, %if.then199 ], [ %fp.2, %if.end197 ], [ null, %land.lhs.true484 ], [ null, %land.lhs.true477 ], [ %fp.6, %if.end473 ], [ null, %land.lhs.true573 ], [ null, %land.lhs.true566 ], [ %fp.7, %if.end562 ], [ %fp.8, %if.then700 ], [ %fp.8, %while.end698 ], [ %fp.8, %if.end685 ], [ %call744, %if.then743 ], [ %call759, %if.else752 ], [ null, %land.lhs.true477 ], [ null, %land.lhs.true566 ], [ %call560, %if.end562.thread ], [ %supplied_fp, %land.lhs.true254 ], [ %call470, %if.else464 ], !dbg !1804
  %was_fdopen.7 = phi i8 [ %was_fdopen.2, %if.then201 ], [ %was_fdopen.2, %if.then199 ], [ %was_fdopen.2, %if.end197 ], [ %was_fdopen.6, %land.lhs.true484 ], [ %was_fdopen.6, %land.lhs.true477 ], [ %was_fdopen.6, %if.end473 ], [ 0, %land.lhs.true573 ], [ 0, %land.lhs.true566 ], [ 0, %if.end562 ], [ 0, %if.then700 ], [ 0, %while.end698 ], [ 0, %if.end685 ], [ 0, %if.then743 ], [ 0, %if.else752 ], [ %was_fdopen.6, %land.lhs.true477 ], [ 0, %land.lhs.true566 ], [ 0, %if.end562.thread ], [ 0, %land.lhs.true254 ], [ 0, %if.else464 ], !dbg !1384
  %type.19 = phi ptr [ %incdec.ptr122, %if.then201 ], [ %incdec.ptr122, %if.then199 ], [ %incdec.ptr122, %if.end197 ], [ %type.13, %land.lhs.true484 ], [ %type.13, %land.lhs.true477 ], [ %type.13, %if.end473 ], [ %type.15, %land.lhs.true573 ], [ %type.15, %land.lhs.true566 ], [ %type.15, %if.end562 ], [ %type.18, %if.then700 ], [ %type.18, %while.end698 ], [ %type.17, %if.end685 ], [ %type.11048, %if.then743 ], [ null, %if.else752 ], [ %type.13, %land.lhs.true477 ], [ %type.15, %land.lhs.true566 ], [ null, %if.end562.thread ], [ %spec.select, %land.lhs.true254 ], [ null, %if.else464 ], !dbg !1274
  %writing.6 = phi i32 [ 1, %if.then201 ], [ 1, %if.then199 ], [ 1, %if.end197 ], [ %writing.5, %land.lhs.true484 ], [ %writing.5, %land.lhs.true477 ], [ %writing.5, %if.end473 ], [ %writing.0, %land.lhs.true573 ], [ %writing.0, %land.lhs.true566 ], [ %writing.0, %if.end562 ], [ %writing.01053, %if.then700 ], [ %writing.01053, %while.end698 ], [ %writing.01053, %if.end685 ], [ %writing.010521100, %if.then743 ], [ %writing.010521100, %if.else752 ], [ %writing.5, %land.lhs.true477 ], [ %writing.0, %land.lhs.true566 ], [ %writing.0, %if.end562.thread ], [ %writing.4, %land.lhs.true254 ], [ 1, %if.else464 ], !dbg !1274
  call void @llvm.dbg.value(metadata i32 %writing.6, metadata !1198, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.19, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %was_fdopen.7, metadata !1200, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %fp.9, metadata !1199, metadata !DIExpression()), !dbg !1266
  br label %cleanup779, !dbg !1805

cleanup779:                                       ; preds = %cleanup416, %cleanup, %if.then700, %if.then201, %if.end640, %if.end140, %if.end765
  %fp.10 = phi ptr [ null, %if.end140 ], [ %fp.9, %if.end765 ], [ null, %cleanup416 ], [ null, %if.end640 ], [ null, %cleanup ], [ null, %if.then201 ], [ null, %if.then700 ]
  %was_fdopen.8 = phi i8 [ %was_fdopen.2, %if.end140 ], [ %was_fdopen.7, %if.end765 ], [ 0, %cleanup416 ], [ 0, %if.end640 ], [ 0, %cleanup ], [ %was_fdopen.2, %if.then201 ], [ 0, %if.then700 ], !dbg !1384
  %type.20 = phi ptr [ %incdec.ptr122, %if.end140 ], [ %type.19, %if.end765 ], [ %type.9, %cleanup416 ], [ %type.17, %if.end640 ], [ %type.0, %cleanup ], [ %incdec.ptr122, %if.then201 ], [ %type.18, %if.then700 ], !dbg !1274
  %writing.7 = phi i32 [ %writing.3, %if.end140 ], [ %writing.6, %if.end765 ], [ %writing.4, %cleanup416 ], [ %writing.01053, %if.end640 ], [ 0, %cleanup ], [ 1, %if.then201 ], [ %writing.01053, %if.then700 ], !dbg !1266
  call void @llvm.dbg.value(metadata i32 %writing.7, metadata !1198, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %type.20, metadata !1201, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i8 %was_fdopen.8, metadata !1200, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %fp.10, metadata !1199, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.label(metadata !1265), !dbg !1806
  %95 = load ptr, ptr %saveifp, align 8, !dbg !1807
  call void @llvm.dbg.value(metadata ptr %95, metadata !1192, metadata !DIExpression()), !dbg !1266
  %96 = load ptr, ptr %saveofp, align 8, !dbg !1807
  call void @llvm.dbg.value(metadata ptr %96, metadata !1193, metadata !DIExpression()), !dbg !1266
  %97 = load i32, ptr %savefd, align 4, !dbg !1807
  call void @llvm.dbg.value(metadata i32 %97, metadata !1194, metadata !DIExpression()), !dbg !1266
  %98 = load i8, ptr %savetype, align 1, !dbg !1807
  call void @llvm.dbg.value(metadata i8 %98, metadata !1195, metadata !DIExpression()), !dbg !1266
  %99 = and i8 %was_fdopen.8, 1, !dbg !1807
  %tobool777 = icmp ne i8 %99, 0, !dbg !1807
  %call778 = call fastcc zeroext i1 @S_openn_cleanup(ptr noundef %gv, ptr noundef %call, ptr noundef %fp.10, ptr noundef nonnull %mode, ptr noundef %oname, ptr noundef %95, ptr noundef %96, i32 noundef %97, i8 noundef signext %98, i32 noundef %writing.7, i1 noundef zeroext %tobool777, ptr noundef %type.20), !dbg !1807
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mode) #11, !dbg !1808
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %savetype) #11, !dbg !1808
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %savefd) #11, !dbg !1808
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %saveofp) #11, !dbg !1808
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %saveifp) #11, !dbg !1808
  ret i1 %call778, !dbg !1808
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_openn_setup(ptr noundef %gv, ptr nocapture noundef writeonly %mode, ptr nocapture noundef writeonly %saveifp, ptr nocapture noundef writeonly %saveofp, ptr nocapture noundef writeonly %savefd, ptr nocapture noundef writeonly %savetype) unnamed_addr #0 !dbg !1809 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1815, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %mode, metadata !1816, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %saveifp, metadata !1817, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %saveofp, metadata !1818, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %savefd, metadata !1819, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr %savetype, metadata !1820, metadata !DIExpression()), !dbg !1830
  %tobool.not = icmp eq ptr %gv, null, !dbg !1831
  br i1 %tobool.not, label %cond.false13, label %land.lhs.true, !dbg !1831

land.lhs.true:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %gv, i64 0, i32 2, !dbg !1831
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1831
  %and = and i32 %0, 255, !dbg !1831
  %and.off = add nsw i32 %and, -9, !dbg !1831
  %switch = icmp ult i32 %and.off, 2, !dbg !1831
  br i1 %switch, label %land.lhs.true4, label %cond.false13, !dbg !1831

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !1831
  %1 = load ptr, ptr %sv_u, align 8, !dbg !1831
  %tobool5.not = icmp eq ptr %1, null, !dbg !1831
  br i1 %tobool5.not, label %cond.false13, label %cond.true, !dbg !1831

cond.true:                                        ; preds = %land.lhs.true4
  %gp_io = getelementptr inbounds %struct.gp, ptr %1, i64 0, i32 1, !dbg !1831
  %2 = load ptr, ptr %gp_io, align 8, !dbg !1831
  %tobool8.not = icmp eq ptr %2, null, !dbg !1831
  br i1 %tobool8.not, label %cond.false13, label %cond.end, !dbg !1831

cond.false13:                                     ; preds = %land.lhs.true, %entry, %land.lhs.true4, %cond.true
  %call = tail call ptr @Perl_gv_add_by_type(ptr noundef %gv, i32 noundef 15) #11, !dbg !1831
  %sv_u14 = getelementptr inbounds %struct.gv, ptr %call, i64 0, i32 3, !dbg !1831
  %3 = load ptr, ptr %sv_u14, align 8, !dbg !1831
  %gp_io16 = getelementptr inbounds %struct.gp, ptr %3, i64 0, i32 1, !dbg !1831
  %4 = load ptr, ptr %gp_io16, align 8, !dbg !1831
  br label %cond.end, !dbg !1831

cond.end:                                         ; preds = %cond.true, %cond.false13
  %cond = phi ptr [ %4, %cond.false13 ], [ %2, %cond.true ], !dbg !1831
  call void @llvm.dbg.value(metadata ptr %cond, metadata !1821, metadata !DIExpression()), !dbg !1830
  store ptr null, ptr %saveifp, align 8, !dbg !1832
  store ptr null, ptr %saveofp, align 8, !dbg !1833
  store i32 -1, ptr %savefd, align 4, !dbg !1834
  store i8 32, ptr %savetype, align 1, !dbg !1835
  store i64 0, ptr %mode, align 1, !dbg !1836
  store i32 1, ptr @PL_forkprocess, align 4, !dbg !1837
  %sv_u17 = getelementptr inbounds %struct.io, ptr %cond, i64 0, i32 3, !dbg !1838
  %5 = load ptr, ptr %sv_u17, align 8, !dbg !1838
  %tobool18.not = icmp eq ptr %5, null, !dbg !1838
  br i1 %tobool18.not, label %if.end119, label %if.then, !dbg !1839

if.then:                                          ; preds = %cond.end
  %6 = load ptr, ptr %cond, align 8, !dbg !1840
  %xio_type = getelementptr inbounds %struct.xpvio, ptr %6, i64 0, i32 16, !dbg !1840
  %7 = load i8, ptr %xio_type, align 8, !dbg !1840
  %cmp19 = icmp eq i8 %7, 45, !dbg !1841
  br i1 %cmp19, label %if.end115, label %if.else, !dbg !1842

if.else:                                          ; preds = %if.then
  %call23 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %5) #11, !dbg !1843
  call void @llvm.dbg.value(metadata i32 %call23, metadata !1822, metadata !DIExpression()), !dbg !1844
  %cmp24 = icmp slt i32 %call23, 0, !dbg !1845
  %8 = load i32, ptr @PL_maxsysfd, align 4
  %cmp27.not = icmp sgt i32 %call23, %8
  %or.cond = select i1 %cmp24, i1 true, i1 %cmp27.not, !dbg !1846
  br i1 %or.cond, label %if.else34, label %if.then29, !dbg !1846

if.then29:                                        ; preds = %if.else
  %9 = load ptr, ptr %sv_u17, align 8, !dbg !1847
  store ptr %9, ptr %saveifp, align 8, !dbg !1849
  %10 = load ptr, ptr %cond, align 8, !dbg !1850
  %xio_ofp = getelementptr inbounds %struct.xpvio, ptr %10, i64 0, i32 5, !dbg !1850
  %11 = load ptr, ptr %xio_ofp, align 8, !dbg !1850
  store ptr %11, ptr %saveofp, align 8, !dbg !1851
  %12 = load ptr, ptr %cond, align 8, !dbg !1852
  %xio_type33 = getelementptr inbounds %struct.xpvio, ptr %12, i64 0, i32 16, !dbg !1852
  %13 = load i8, ptr %xio_type33, align 8, !dbg !1852
  store i8 %13, ptr %savetype, align 1, !dbg !1853
  store i32 %call23, ptr %savefd, align 4, !dbg !1854
  br label %if.end115, !dbg !1855

if.else34:                                        ; preds = %if.else
  %14 = load ptr, ptr %cond, align 8, !dbg !1856
  %xio_type36 = getelementptr inbounds %struct.xpvio, ptr %14, i64 0, i32 16, !dbg !1856
  %15 = load i8, ptr %xio_type36, align 8, !dbg !1856
  %cmp38 = icmp eq i8 %15, 124, !dbg !1858
  %16 = load ptr, ptr %sv_u17, align 8, !dbg !1859
  br i1 %cmp38, label %if.then40, label %if.else43, !dbg !1860

if.then40:                                        ; preds = %if.else34
  %call42 = tail call i32 @Perl_my_pclose(ptr noundef %16) #11, !dbg !1861
  call void @llvm.dbg.value(metadata i32 %call42, metadata !1827, metadata !DIExpression()), !dbg !1862
  br label %if.end66, !dbg !1863

if.else43:                                        ; preds = %if.else34
  %xio_ofp46 = getelementptr inbounds %struct.xpvio, ptr %14, i64 0, i32 5, !dbg !1864
  %17 = load ptr, ptr %xio_ofp46, align 8, !dbg !1864
  %cmp47.not = icmp eq ptr %16, %17, !dbg !1866
  br i1 %cmp47.not, label %if.else62, label %if.then49, !dbg !1867

if.then49:                                        ; preds = %if.else43
  %tobool52.not = icmp eq ptr %17, null, !dbg !1868
  br i1 %tobool52.not, label %if.else59, label %if.then53, !dbg !1871

if.then53:                                        ; preds = %if.then49
  %call56 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %17) #11, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %call56, metadata !1827, metadata !DIExpression()), !dbg !1862
  %18 = load ptr, ptr %sv_u17, align 8, !dbg !1874
  %call58 = tail call i32 @Perl_PerlIO_close(ptr noundef %18) #11, !dbg !1874
  br label %if.end66, !dbg !1875

if.else59:                                        ; preds = %if.then49
  %call61 = tail call i32 @Perl_PerlIO_close(ptr noundef %16) #11, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %call61, metadata !1827, metadata !DIExpression()), !dbg !1862
  br label %if.end66

if.else62:                                        ; preds = %if.else43
  %call64 = tail call i32 @Perl_PerlIO_close(ptr noundef %16) #11, !dbg !1877
  call void @llvm.dbg.value(metadata i32 %call64, metadata !1827, metadata !DIExpression()), !dbg !1862
  br label %if.end66

if.end66:                                         ; preds = %if.else62, %if.else59, %if.then53, %if.then40
  %result.0 = phi i32 [ %call42, %if.then40 ], [ %call56, %if.then53 ], [ %call61, %if.else59 ], [ %call64, %if.else62 ], !dbg !1859
  call void @llvm.dbg.value(metadata i32 %result.0, metadata !1827, metadata !DIExpression()), !dbg !1862
  %cmp67 = icmp eq i32 %result.0, -1, !dbg !1878
  %19 = load i32, ptr @PL_maxsysfd, align 4
  %cmp70 = icmp sgt i32 %call23, %19
  %or.cond161 = select i1 %cmp67, i1 %cmp70, i1 false, !dbg !1880
  br i1 %or.cond161, label %if.then72, label %if.end115, !dbg !1880

if.then72:                                        ; preds = %if.end66
  %20 = load ptr, ptr @PL_stderrgv, align 8, !dbg !1881
  %tobool73.not = icmp eq ptr %20, null, !dbg !1881
  br i1 %tobool73.not, label %cond.false97, label %land.lhs.true74, !dbg !1881

land.lhs.true74:                                  ; preds = %if.then72
  %sv_flags75 = getelementptr inbounds %struct.gv, ptr %20, i64 0, i32 2, !dbg !1881
  %21 = load i32, ptr %sv_flags75, align 4, !dbg !1881
  %and76 = and i32 %21, 255, !dbg !1881
  %cmp77 = icmp eq i32 %and76, 9, !dbg !1881
  br i1 %cmp77, label %land.lhs.true79, label %cond.false97, !dbg !1881

land.lhs.true79:                                  ; preds = %land.lhs.true74
  %sv_u80 = getelementptr inbounds %struct.gv, ptr %20, i64 0, i32 3, !dbg !1881
  %22 = load ptr, ptr %sv_u80, align 8, !dbg !1881
  %gp_io82 = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 1, !dbg !1881
  %23 = load ptr, ptr %gp_io82, align 8, !dbg !1881
  %tobool83.not = icmp eq ptr %23, null, !dbg !1881
  br i1 %tobool83.not, label %cond.false97, label %land.lhs.true84, !dbg !1881

land.lhs.true84:                                  ; preds = %land.lhs.true79
  %24 = load ptr, ptr %23, align 8, !dbg !1881
  %xio_ofp89 = getelementptr inbounds %struct.xpvio, ptr %24, i64 0, i32 5, !dbg !1881
  %25 = load ptr, ptr %xio_ofp89, align 8, !dbg !1881
  %tobool90.not = icmp eq ptr %25, null, !dbg !1881
  br i1 %tobool90.not, label %cond.false97, label %cond.end99, !dbg !1881

cond.false97:                                     ; preds = %land.lhs.true84, %land.lhs.true79, %land.lhs.true74, %if.then72
  %call98 = tail call ptr @Perl_PerlIO_stderr() #11, !dbg !1881
  br label %cond.end99, !dbg !1881

cond.end99:                                       ; preds = %land.lhs.true84, %cond.false97
  %cond100 = phi ptr [ %call98, %cond.false97 ], [ %25, %land.lhs.true84 ], !dbg !1881
  %sv_u101 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !1883
  %26 = load ptr, ptr %sv_u101, align 8, !dbg !1883
  %gp_egv = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 8, !dbg !1883
  %27 = load ptr, ptr %gp_egv, align 8, !dbg !1883
  %tobool103.not = icmp eq ptr %27, null, !dbg !1883
  %gv. = select i1 %tobool103.not, ptr %gv, ptr %27, !dbg !1883
  %28 = load ptr, ptr %gv., align 8, !dbg !1883
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %28, i64 0, i32 4, !dbg !1883
  %29 = load ptr, ptr %xiv_u, align 8, !dbg !1883
  %call112 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %cond100, ptr noundef nonnull @.str.53, ptr noundef %29) #11, !dbg !1884
  br label %if.end115, !dbg !1885

if.end115:                                        ; preds = %if.then29, %cond.end99, %if.end66, %if.then
  store ptr null, ptr %sv_u17, align 8, !dbg !1886
  %30 = load ptr, ptr %cond, align 8, !dbg !1887
  %xio_ofp118 = getelementptr inbounds %struct.xpvio, ptr %30, i64 0, i32 5, !dbg !1887
  store ptr null, ptr %xio_ofp118, align 8, !dbg !1888
  br label %if.end119, !dbg !1889

if.end119:                                        ; preds = %if.end115, %cond.end
  ret ptr %cond, !dbg !1890
}

declare !dbg !1891 void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1894 i32 @PerlIO_intmode2str(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !1897 ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1901 ptr @PerlIO_openn(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @S_openn_cleanup(ptr nocapture noundef readonly %gv, ptr nocapture noundef %io, ptr noundef %fp, ptr noundef %mode, ptr nocapture noundef readonly %oname, ptr noundef %saveifp, ptr noundef %saveofp, i32 noundef %savefd, i8 noundef signext %savetype, i32 noundef %writing, i1 noundef zeroext %was_fdopen, ptr noundef %type) unnamed_addr #0 !dbg !1904 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1908, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %io, metadata !1909, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %fp, metadata !1910, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %mode, metadata !1911, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %oname, metadata !1912, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %saveifp, metadata !1913, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %saveofp, metadata !1914, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %savefd, metadata !1915, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 %savetype, metadata !1916, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %writing, metadata !1917, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i1 %was_fdopen, metadata !1918, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %type, metadata !1919, metadata !DIExpression()), !dbg !1941
  %tobool.not = icmp eq ptr %fp, null, !dbg !1942
  br i1 %tobool.not, label %if.then, label %if.end7, !dbg !1944

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %io, align 8, !dbg !1945
  %xio_type = getelementptr inbounds %struct.xpvio, ptr %0, i64 0, i32 16, !dbg !1945
  %1 = load i8, ptr %xio_type, align 8, !dbg !1945
  %cmp = icmp eq i8 %1, 60, !dbg !1948
  br i1 %cmp, label %land.lhs.true, label %say_false, !dbg !1949

land.lhs.true:                                    ; preds = %if.then
  %call = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #11, !dbg !1950
  br i1 %call, label %land.lhs.true3, label %say_false, !dbg !1951

land.lhs.true3:                                   ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %oname, metadata !1952, metadata !DIExpression()) #11, !dbg !1958
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %oname) #12, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %call.i, metadata !1957, metadata !DIExpression()) #11, !dbg !1958
  %cmp.not.i = icmp eq i64 %call.i, 0, !dbg !1961
  br i1 %cmp.not.i, label %say_false, label %S_should_warn_nl.exit, !dbg !1962

S_should_warn_nl.exit:                            ; preds = %land.lhs.true3
  %sub.i = add i64 %call.i, -1, !dbg !1963
  %arrayidx.i = getelementptr inbounds i8, ptr %oname, i64 %sub.i, !dbg !1964
  %2 = load i8, ptr %arrayidx.i, align 1, !dbg !1964
  %cmp1.i = icmp eq i8 %2, 10, !dbg !1965
  br i1 %cmp1.i, label %if.then6, label %say_false, !dbg !1966

if.then6:                                         ; preds = %S_should_warn_nl.exit
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.3) #11, !dbg !1967
  br label %say_false, !dbg !1969

if.end7:                                          ; preds = %entry
  %call8 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11, !dbg !1970
  br i1 %call8, label %if.then9, label %if.end57, !dbg !1972

if.then9:                                         ; preds = %if.end7
  %3 = load ptr, ptr %io, align 8, !dbg !1973
  %xio_type11 = getelementptr inbounds %struct.xpvio, ptr %3, i64 0, i32 16, !dbg !1973
  %4 = load i8, ptr %xio_type11, align 8, !dbg !1973
  %cmp13 = icmp eq i8 %4, 60, !dbg !1976
  br i1 %cmp13, label %land.lhs.true15, label %if.else, !dbg !1977

land.lhs.true15:                                  ; preds = %if.then9
  %call16 = tail call ptr @Perl_PerlIO_stdout() #11, !dbg !1978
  %cmp17 = icmp eq ptr %call16, %fp, !dbg !1979
  br i1 %cmp17, label %if.then22, label %lor.lhs.false, !dbg !1980

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %call19 = tail call ptr @Perl_PerlIO_stderr() #11, !dbg !1981
  %cmp20 = icmp eq ptr %call19, %fp, !dbg !1982
  br i1 %cmp20, label %if.then22, label %lor.lhs.false.if.else_crit_edge, !dbg !1983

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %io, align 8, !dbg !1984
  %xio_type33.phi.trans.insert = getelementptr inbounds %struct.xpvio, ptr %.pre, i64 0, i32 16
  %.pre361 = load i8, ptr %xio_type33.phi.trans.insert, align 8, !dbg !1984
  br label %if.else, !dbg !1983

if.then22:                                        ; preds = %lor.lhs.false, %land.lhs.true15
  %call23 = tail call ptr @Perl_PerlIO_stdout() #11, !dbg !1986
  %cmp24 = icmp eq ptr %call23, %fp, !dbg !1988
  %cond = select i1 %cmp24, ptr @.str.56, ptr @.str.57, !dbg !1989
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !1990
  %5 = load ptr, ptr %sv_u, align 8, !dbg !1990
  %gp_egv = getelementptr inbounds %struct.gp, ptr %5, i64 0, i32 8, !dbg !1990
  %6 = load ptr, ptr %gp_egv, align 8, !dbg !1990
  %tobool26.not = icmp eq ptr %6, null, !dbg !1990
  %gv. = select i1 %tobool26.not, ptr %gv, ptr %6, !dbg !1990
  %7 = load ptr, ptr %gv., align 8, !dbg !1990
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %7, i64 0, i32 4, !dbg !1990
  %8 = load ptr, ptr %xiv_u, align 8, !dbg !1990
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.55, ptr noundef nonnull %cond, ptr noundef %8) #11, !dbg !1991
  br label %if.end57, !dbg !1992

if.else:                                          ; preds = %lor.lhs.false.if.else_crit_edge, %if.then9
  %9 = phi i8 [ %.pre361, %lor.lhs.false.if.else_crit_edge ], [ %4, %if.then9 ], !dbg !1984
  %cmp35 = icmp eq i8 %9, 62, !dbg !1993
  br i1 %cmp35, label %land.lhs.true37, label %if.end57, !dbg !1994

land.lhs.true37:                                  ; preds = %if.else
  %call38 = tail call ptr @Perl_PerlIO_stdin() #11, !dbg !1995
  %cmp39 = icmp eq ptr %call38, %fp, !dbg !1996
  br i1 %cmp39, label %if.then41, label %if.end57, !dbg !1997

if.then41:                                        ; preds = %land.lhs.true37
  %sv_u42 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !1998
  %10 = load ptr, ptr %sv_u42, align 8, !dbg !1998
  %gp_egv44 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 8, !dbg !1998
  %11 = load ptr, ptr %gp_egv44, align 8, !dbg !1998
  %tobool45.not = icmp eq ptr %11, null, !dbg !1998
  %gv.342 = select i1 %tobool45.not, ptr %gv, ptr %11, !dbg !1998
  %12 = load ptr, ptr %gv.342, align 8, !dbg !1998
  %xiv_u54 = getelementptr inbounds %struct.xpvgv, ptr %12, i64 0, i32 4, !dbg !1998
  %13 = load ptr, ptr %xiv_u54, align 8, !dbg !1998
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.58, ptr noundef %13) #11, !dbg !2000
  br label %if.end57, !dbg !2001

if.end57:                                         ; preds = %if.then22, %if.then41, %land.lhs.true37, %if.else, %if.end7
  %call58 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %fp) #11, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %call58, metadata !1920, metadata !DIExpression()), !dbg !1941
  %14 = load ptr, ptr %io, align 8, !dbg !2003
  %xio_type60 = getelementptr inbounds %struct.xpvio, ptr %14, i64 0, i32 16, !dbg !2003
  %15 = load i8, ptr %xio_type60, align 8, !dbg !2003
  switch i8 %15, label %land.lhs.true69 [
    i8 0, label %if.end91
    i8 124, label %if.end91
  ], !dbg !2005

land.lhs.true69:                                  ; preds = %if.end57
  %cmp73 = icmp ne i8 %15, 45, !dbg !2006
  %cmp76 = icmp sgt i32 %call58, -1
  %or.cond = select i1 %cmp73, i1 %cmp76, i1 false, !dbg !2007
  br i1 %or.cond, label %if.then78, label %if.end91, !dbg !2007

if.then78:                                        ; preds = %land.lhs.true69
  call void @llvm.dbg.value(metadata i32 %call58, metadata !2008, metadata !DIExpression()) #11, !dbg !2050
  call void @llvm.dbg.value(metadata ptr @PL_statbuf, metadata !2049, metadata !DIExpression()) #11, !dbg !2050
  %call.i346 = tail call i32 @__fxstat(i32 noundef 1, i32 noundef %call58, ptr noundef nonnull @PL_statbuf) #11, !dbg !2054
  %cmp80 = icmp slt i32 %call.i346, 0, !dbg !2055
  br i1 %cmp80, label %if.then82, label %if.end84, !dbg !2056

if.then82:                                        ; preds = %if.then78
  %call83 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %fp) #11, !dbg !2057
  br label %say_false, !dbg !2059

if.end84:                                         ; preds = %if.then78
  %16 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !dbg !2060
  %and = and i32 %16, 61440, !dbg !2060
  %cmp85 = icmp eq i32 %and, 49152, !dbg !2060
  br i1 %cmp85, label %if.then87, label %if.end91, !dbg !2062

if.then87:                                        ; preds = %if.end84
  %17 = load ptr, ptr %io, align 8, !dbg !2063
  %xio_type89 = getelementptr inbounds %struct.xpvio, ptr %17, i64 0, i32 16, !dbg !2063
  store i8 115, ptr %xio_type89, align 8, !dbg !2064
  br label %if.end91, !dbg !2063

if.end91:                                         ; preds = %if.end57, %if.end57, %if.end84, %if.then87, %land.lhs.true69
  %tobool92.not = icmp eq ptr %saveifp, null, !dbg !2065
  br i1 %tobool92.not, label %if.end192, label %if.then93, !dbg !2066

if.then93:                                        ; preds = %if.end91
  %tobool94.not = icmp eq ptr %saveofp, null, !dbg !2067
  br i1 %tobool94.not, label %if.end102, label %if.then95, !dbg !2069

if.then95:                                        ; preds = %if.then93
  %call96 = tail call i32 @Perl_PerlIO_flush(ptr noundef nonnull %saveofp) #11, !dbg !2070
  %cmp97.not = icmp eq ptr %saveofp, %saveifp, !dbg !2072
  br i1 %cmp97.not, label %if.end102, label %if.then99, !dbg !2074

if.then99:                                        ; preds = %if.then95
  %call100 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %saveofp) #11, !dbg !2075
  br label %if.end102, !dbg !2077

if.end102:                                        ; preds = %if.then95, %if.then99, %if.then93
  %cmp103.not = icmp eq i32 %call58, %savefd, !dbg !2078
  br i1 %cmp103.not, label %if.end190, label %if.then105, !dbg !2079

if.then105:                                       ; preds = %if.end102
  %cmp106 = icmp slt i32 %call58, 0, !dbg !2080
  br i1 %cmp106, label %if.then108, label %if.else110, !dbg !2082

if.then108:                                       ; preds = %if.then105
  %call109 = tail call ptr @__errno_location() #13, !dbg !2083
  store i32 9, ptr %call109, align 4, !dbg !2083
  br label %say_false, !dbg !2085

if.else110:                                       ; preds = %if.then105
  %call111 = tail call i32 @dup2(i32 noundef %call58, i32 noundef %savefd) #11, !dbg !2086
  %cmp112 = icmp slt i32 %call111, 0, !dbg !2088
  br i1 %cmp112, label %if.then114, label %if.end117, !dbg !2089

if.then114:                                       ; preds = %if.else110
  %call115 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %fp) #11, !dbg !2090
  br label %say_false, !dbg !2092

if.end117:                                        ; preds = %if.else110
  %18 = load ptr, ptr @PL_fdpid, align 8, !dbg !2093
  %conv118360 = zext i32 %call58 to i64, !dbg !2093
  %call119 = tail call ptr @Perl_av_fetch(ptr noundef %18, i64 noundef %conv118360, i32 noundef 1) #11, !dbg !2093
  %19 = load ptr, ptr %call119, align 8, !dbg !2094
  call void @llvm.dbg.value(metadata ptr %19, metadata !1929, metadata !DIExpression()), !dbg !2095
  %sv_flags = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2, !dbg !2096
  %20 = load i32, ptr %sv_flags, align 4, !dbg !2096
  %and120 = and i32 %20, 255, !dbg !2096
  %cmp121.not = icmp eq i32 %and120, 0, !dbg !2096
  br i1 %cmp121.not, label %lor.rhs, label %lor.end, !dbg !2096

lor.rhs:                                          ; preds = %if.end117
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %19, i32 noundef 1) #11, !dbg !2096
  br label %lor.end, !dbg !2096

lor.end:                                          ; preds = %lor.rhs, %if.end117
  %21 = load ptr, ptr %19, align 8, !dbg !2097
  %xiv_u124 = getelementptr inbounds %struct.xpviv, ptr %21, i64 0, i32 4, !dbg !2097
  %22 = load i64, ptr %xiv_u124, align 8, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %22, metadata !1921, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2095
  store i64 0, ptr %xiv_u124, align 8, !dbg !2098
  %23 = load ptr, ptr @PL_fdpid, align 8, !dbg !2100
  %conv128 = sext i32 %savefd to i64, !dbg !2100
  %call129 = tail call ptr @Perl_av_fetch(ptr noundef %23, i64 noundef %conv128, i32 noundef 1) #11, !dbg !2100
  %24 = load ptr, ptr %call129, align 8, !dbg !2101
  call void @llvm.dbg.value(metadata ptr %24, metadata !1929, metadata !DIExpression()), !dbg !2095
  %sv_flags130 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 2, !dbg !2102
  %25 = load i32, ptr %sv_flags130, align 4, !dbg !2102
  %and131 = and i32 %25, 255, !dbg !2102
  %cmp132.not = icmp eq i32 %and131, 0, !dbg !2102
  br i1 %cmp132.not, label %lor.rhs134, label %lor.end135, !dbg !2102

lor.rhs134:                                       ; preds = %lor.end
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %24, i32 noundef 1) #11, !dbg !2102
  br label %lor.end135, !dbg !2102

lor.end135:                                       ; preds = %lor.rhs134, %lor.end
  %sext = shl i64 %22, 32, !dbg !2103
  %conv138 = ashr exact i64 %sext, 32, !dbg !2103
  %26 = load ptr, ptr %24, align 8, !dbg !2103
  %xiv_u140 = getelementptr inbounds %struct.xpviv, ptr %26, i64 0, i32 4, !dbg !2103
  store i64 %conv138, ptr %xiv_u140, align 8, !dbg !2103
  br i1 %was_fdopen, label %if.then144, label %if.else187, !dbg !2105

if.then144:                                       ; preds = %lor.end135
  %call145 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %fp) #11, !dbg !2106
  call void @llvm.dbg.value(metadata i32 %call145, metadata !1930, metadata !DIExpression()), !dbg !2107
  %cmp146 = icmp sgt i32 %call145, -1, !dbg !2108
  br i1 %cmp146, label %cond.end158, label %say_false, !dbg !2109

cond.end158:                                      ; preds = %if.then144
  %call149 = tail call i32 @dup(i32 noundef %call145) #11, !dbg !2110
  call void @llvm.dbg.value(metadata i32 undef, metadata !1933, metadata !DIExpression()), !dbg !2107
  %call156 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %call145, i32 noundef 1) #11, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %call156, metadata !1934, metadata !DIExpression()), !dbg !2107
  %cmp160 = icmp slt i32 %call156, 0, !dbg !2112
  br i1 %cmp160, label %if.then162, label %if.end168, !dbg !2114

if.then162:                                       ; preds = %cond.end158
  %cmp163 = icmp sgt i32 %call149, -1, !dbg !2115
  br i1 %cmp163, label %if.then165, label %say_false, !dbg !2118

if.then165:                                       ; preds = %if.then162
  %call166 = tail call i32 @close(i32 noundef %call149) #11, !dbg !2119
  br label %say_false, !dbg !2119

if.end168:                                        ; preds = %cond.end158
  %cmp172 = icmp slt i32 %call149, 0
  br i1 %cmp172, label %say_false, label %cleanup, !dbg !2120

cleanup:                                          ; preds = %if.end168
  %call181 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %fp) #11, !dbg !2122
  %call182 = tail call i32 @dup2(i32 noundef %call149, i32 noundef %call145) #11, !dbg !2123
  %call183 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %call145, i32 noundef 2, i32 noundef %call156) #11, !dbg !2124
  %call184 = tail call i32 @close(i32 noundef %call149) #11, !dbg !2125
  br label %if.end190

if.else187:                                       ; preds = %lor.end135
  %call188 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %fp) #11, !dbg !2126
  br label %if.end190

if.end190:                                        ; preds = %cleanup, %if.else187, %if.end102
  call void @llvm.dbg.value(metadata ptr %saveifp, metadata !1910, metadata !DIExpression()), !dbg !1941
  tail call void @Perl_PerlIO_clearerr(ptr noundef nonnull %saveifp) #11, !dbg !2127
  %call191 = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %saveifp) #11, !dbg !2128
  call void @llvm.dbg.value(metadata i32 %call191, metadata !1920, metadata !DIExpression()), !dbg !1941
  br label %if.end192, !dbg !2129

if.end192:                                        ; preds = %if.end190, %if.end91
  %fd.0 = phi i32 [ %call191, %if.end190 ], [ %call58, %if.end91 ], !dbg !1941
  %fp.addr.0 = phi ptr [ %saveifp, %if.end190 ], [ %fp, %if.end91 ]
  call void @llvm.dbg.value(metadata ptr %fp.addr.0, metadata !1910, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %fd.0, metadata !1920, metadata !DIExpression()), !dbg !1941
  %cmp193 = icmp sgt i32 %fd.0, -1, !dbg !2130
  br i1 %cmp193, label %if.then195, label %if.end204, !dbg !2132

if.then195:                                       ; preds = %if.end192
  %27 = load i32, ptr @PL_maxsysfd, align 4, !dbg !2133
  %cmp196 = icmp sgt i32 %fd.0, %27, !dbg !2136
  %conv197 = zext i1 %cmp196 to i32, !dbg !2136
  %call198 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %fd.0, i32 noundef 2, i32 noundef %conv197) #11, !dbg !2137
  %cmp199 = icmp slt i32 %call198, 0, !dbg !2138
  br i1 %cmp199, label %if.then201, label %if.end204, !dbg !2139

if.then201:                                       ; preds = %if.then195
  %call202 = tail call i32 @close(i32 noundef %fd.0) #11, !dbg !2140
  br label %say_false, !dbg !2142

if.end204:                                        ; preds = %if.then195, %if.end192
  %sv_u205 = getelementptr inbounds %struct.io, ptr %io, i64 0, i32 3, !dbg !2143
  store ptr %fp.addr.0, ptr %sv_u205, align 8, !dbg !2144
  %28 = load ptr, ptr %io, align 8, !dbg !2145
  %xio_flags = getelementptr inbounds %struct.xpvio, ptr %28, i64 0, i32 17, !dbg !2145
  %29 = load i8, ptr %xio_flags, align 1, !dbg !2146
  %30 = and i8 %29, -33, !dbg !2146
  store i8 %30, ptr %xio_flags, align 1, !dbg !2146
  %tobool210.not = icmp eq i32 %writing, 0, !dbg !2147
  br i1 %tobool210.not, label %cleanup259, label %if.then211, !dbg !2148

if.then211:                                       ; preds = %if.end204
  %31 = load ptr, ptr %io, align 8, !dbg !2149
  %xio_type213 = getelementptr inbounds %struct.xpvio, ptr %31, i64 0, i32 16, !dbg !2149
  %32 = load i8, ptr %xio_type213, align 8, !dbg !2149
  %cmp215 = icmp eq i8 %32, 115, !dbg !2150
  br i1 %cmp215, label %if.then230, label %lor.lhs.false217, !dbg !2151

lor.lhs.false217:                                 ; preds = %if.then211
  %cmp221 = icmp eq i8 %32, 62, !dbg !2152
  %or.cond261 = select i1 %cmp221, i1 %cmp193, i1 false, !dbg !2153
  br i1 %or.cond261, label %land.lhs.true226, label %if.else249, !dbg !2153

land.lhs.true226:                                 ; preds = %lor.lhs.false217
  %33 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !dbg !2154
  %and227 = and i32 %33, 61440, !dbg !2154
  %cmp228 = icmp eq i32 %and227, 8192, !dbg !2154
  br i1 %cmp228, label %if.then230, label %if.else249, !dbg !2155

if.then230:                                       ; preds = %land.lhs.true226, %if.then211
  call void @llvm.dbg.value(metadata ptr %mode, metadata !1935, metadata !DIExpression()), !dbg !2156
  %34 = load i8, ptr %mode, align 1, !dbg !2157
  switch i8 %34, label %if.end239 [
    i8 73, label %if.then238
    i8 35, label %if.then238
  ], !dbg !2159

if.then238:                                       ; preds = %if.then230, %if.then230
  %incdec.ptr = getelementptr inbounds i8, ptr %mode, i64 1, !dbg !2160
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1935, metadata !DIExpression()), !dbg !2156
  br label %if.end239, !dbg !2161

if.end239:                                        ; preds = %if.then230, %if.then238
  %s.0 = phi ptr [ %incdec.ptr, %if.then238 ], [ %mode, %if.then230 ], !dbg !2156
  call void @llvm.dbg.value(metadata ptr %s.0, metadata !1935, metadata !DIExpression()), !dbg !2156
  store i8 119, ptr %s.0, align 1, !dbg !2162
  %call240 = tail call ptr @PerlIO_openn(ptr noundef %type, ptr noundef nonnull %s.0, i32 noundef %fd.0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null) #11, !dbg !2163
  %35 = load ptr, ptr %io, align 8, !dbg !2165
  %xio_ofp = getelementptr inbounds %struct.xpvio, ptr %35, i64 0, i32 5, !dbg !2165
  store ptr %call240, ptr %xio_ofp, align 8, !dbg !2166
  %tobool242.not = icmp eq ptr %call240, null, !dbg !2166
  br i1 %tobool242.not, label %cleanup246, label %cleanup259, !dbg !2167

cleanup246:                                       ; preds = %if.end239
  %call244 = tail call i32 @Perl_PerlIO_close(ptr noundef nonnull %fp.addr.0) #11, !dbg !2168
  br label %say_false

if.else249:                                       ; preds = %land.lhs.true226, %lor.lhs.false217
  %xio_ofp251 = getelementptr inbounds %struct.xpvio, ptr %31, i64 0, i32 5, !dbg !2170
  store ptr %fp.addr.0, ptr %xio_ofp251, align 8, !dbg !2171
  br label %cleanup259

say_false:                                        ; preds = %if.end168, %if.then144, %if.then162, %if.then165, %land.lhs.true3, %cleanup246, %if.then, %land.lhs.true, %S_should_warn_nl.exit, %if.then6, %if.then201, %if.then114, %if.then108, %if.then82
  call void @llvm.dbg.label(metadata !1940), !dbg !2172
  %sv_u254 = getelementptr inbounds %struct.io, ptr %io, i64 0, i32 3, !dbg !2173
  store ptr %saveifp, ptr %sv_u254, align 8, !dbg !2174
  %36 = load ptr, ptr %io, align 8, !dbg !2175
  %xio_ofp256 = getelementptr inbounds %struct.xpvio, ptr %36, i64 0, i32 5, !dbg !2175
  store ptr %saveofp, ptr %xio_ofp256, align 8, !dbg !2176
  %37 = load ptr, ptr %io, align 8, !dbg !2177
  %xio_type258 = getelementptr inbounds %struct.xpvio, ptr %37, i64 0, i32 16, !dbg !2177
  store i8 %savetype, ptr %xio_type258, align 8, !dbg !2178
  br label %cleanup259, !dbg !2179

cleanup259:                                       ; preds = %if.end239, %if.end204, %if.else249, %say_false
  %retval.0 = phi i1 [ false, %say_false ], [ true, %if.else249 ], [ true, %if.end204 ], [ true, %if.end239 ]
  ret i1 %retval.0, !dbg !2180
}

declare !dbg !2181 ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2184 void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2188 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare !dbg !2193 zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare !dbg !2196 void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare ptr @__errno_location() local_unnamed_addr #4

declare !dbg !2199 void @Perl_taint_env() local_unnamed_addr #2

declare !dbg !2202 ptr @Perl_my_popen_list(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2205 ptr @Perl_my_popen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2208 i32 @PerlIO_apply_layers(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2211 i32 @Perl_looks_like_number(ptr noundef) local_unnamed_addr #2

declare !dbg !2214 i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2217 zeroext i1 @Perl_grok_atoUV(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2221 ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #2

declare !dbg !2224 ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2228 i32 @Perl_PerlIO_flush(ptr noundef) local_unnamed_addr #2

declare !dbg !2231 i32 @Perl_PerlIO_fileno(ptr noundef) local_unnamed_addr #2

declare !dbg !2232 ptr @Perl_PerlIO_stdout() local_unnamed_addr #2

declare !dbg !2235 ptr @Perl_PerlIO_stderr() local_unnamed_addr #2

declare !dbg !2236 ptr @Perl_PerlIO_stdin() local_unnamed_addr #2

declare !dbg !2237 ptr @PerlIO_fdupopen(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2240 i32 @dup(i32 noundef) local_unnamed_addr #5

declare !dbg !2244 i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_nextargv(ptr noundef %gv, i1 noundef zeroext %nomagicopen) local_unnamed_addr #0 !dbg !2245 {
entry:
  %saveifp.i = alloca ptr, align 8
  %saveofp.i = alloca ptr, align 8
  %savefd.i = alloca i32, align 4
  %savetype.i = alloca i8, align 1
  %mode.i = alloca [8 x i8], align 1
  %writing.i = alloca i32, align 4
  %namesv.i = alloca ptr, align 8
  %oldlen = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2249, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i1 %nomagicopen, metadata !2250, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2277
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2278
  %0 = load ptr, ptr %sv_u, align 8, !dbg !2278
  %gp_io = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 1, !dbg !2278
  %1 = load ptr, ptr %gp_io, align 8, !dbg !2278
  call void @llvm.dbg.value(metadata ptr %1, metadata !2251, metadata !DIExpression()), !dbg !2277
  %2 = load ptr, ptr @PL_argvoutgv, align 8, !dbg !2279
  %tobool.not = icmp eq ptr %2, null, !dbg !2279
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !2281

if.then:                                          ; preds = %entry
  %call = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.12, i64 noundef 7, i32 noundef 129, i32 noundef 15) #11, !dbg !2282
  store ptr %call, ptr @PL_argvoutgv, align 8, !dbg !2283
  br label %if.end, !dbg !2284

if.end:                                           ; preds = %if.then, %entry
  %tobool1.not = icmp eq ptr %1, null, !dbg !2285
  br i1 %tobool1.not, label %if.end12, label %land.lhs.true, !dbg !2287

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %1, align 8, !dbg !2288
  %xio_flags = getelementptr inbounds %struct.xpvio, ptr %3, i64 0, i32 17, !dbg !2288
  %4 = load i8, ptr %xio_flags, align 1, !dbg !2288
  %5 = and i8 %4, 3, !dbg !2289
  %cmp = icmp eq i8 %5, 3, !dbg !2290
  br i1 %cmp, label %if.then3, label %if.end12, !dbg !2291

if.then3:                                         ; preds = %land.lhs.true
  %and7 = and i8 %4, -3, !dbg !2292
  store i8 %and7, ptr %xio_flags, align 1, !dbg !2292
  %6 = load ptr, ptr @PL_inplace, align 8, !dbg !2294
  %tobool9.not = icmp eq ptr %6, null, !dbg !2294
  br i1 %tobool9.not, label %if.end12, label %if.then10, !dbg !2296

if.then10:                                        ; preds = %if.then3
  %7 = load ptr, ptr @PL_defoutgv, align 8, !dbg !2297
  %sv_refcnt = getelementptr inbounds %struct.gv, ptr %7, i64 0, i32 1, !dbg !2297
  %8 = load i32, ptr %sv_refcnt, align 8, !dbg !2297
  %inc = add i32 %8, 1, !dbg !2297
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !2297
  tail call void @Perl_av_create_and_push(ptr noundef nonnull @PL_argvout_stack, ptr noundef %7) #11, !dbg !2299
  br label %if.end12, !dbg !2300

if.end12:                                         ; preds = %if.then3, %if.then10, %land.lhs.true, %if.end
  %9 = load i32, ptr @PL_filemode, align 4, !dbg !2301
  %and13 = and i32 %9, 3072, !dbg !2303
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !2303
  br i1 %tobool14.not, label %if.end45, label %if.then15, !dbg !2304

if.then15:                                        ; preds = %if.end12
  %10 = load ptr, ptr @PL_argvoutgv, align 8, !dbg !2305
  %tobool16.not = icmp eq ptr %10, null, !dbg !2305
  br i1 %tobool16.not, label %cond.false37, label %land.lhs.true17, !dbg !2305

land.lhs.true17:                                  ; preds = %if.then15
  %sv_flags = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2, !dbg !2305
  %11 = load i32, ptr %sv_flags, align 4, !dbg !2305
  %and18 = and i32 %11, 255, !dbg !2305
  %and18.off = add nsw i32 %and18, -9, !dbg !2305
  %switch = icmp ult i32 %and18.off, 2, !dbg !2305
  br i1 %switch, label %land.lhs.true25, label %cond.false37, !dbg !2305

land.lhs.true25:                                  ; preds = %land.lhs.true17
  %sv_u26 = getelementptr inbounds %struct.gv, ptr %10, i64 0, i32 3, !dbg !2305
  %12 = load ptr, ptr %sv_u26, align 8, !dbg !2305
  %tobool28.not = icmp eq ptr %12, null, !dbg !2305
  br i1 %tobool28.not, label %cond.false37, label %cond.true, !dbg !2305

cond.true:                                        ; preds = %land.lhs.true25
  %gp_io31 = getelementptr inbounds %struct.gp, ptr %12, i64 0, i32 1, !dbg !2305
  %13 = load ptr, ptr %gp_io31, align 8, !dbg !2305
  %tobool32.not = icmp eq ptr %13, null, !dbg !2305
  br i1 %tobool32.not, label %cond.false37, label %cond.end, !dbg !2305

cond.false37:                                     ; preds = %land.lhs.true17, %if.then15, %land.lhs.true25, %cond.true
  %call38 = tail call ptr @Perl_gv_add_by_type(ptr noundef %10, i32 noundef 15) #11, !dbg !2305
  %sv_u39 = getelementptr inbounds %struct.gv, ptr %call38, i64 0, i32 3, !dbg !2305
  %14 = load ptr, ptr %sv_u39, align 8, !dbg !2305
  %gp_io41 = getelementptr inbounds %struct.gp, ptr %14, i64 0, i32 1, !dbg !2305
  %15 = load ptr, ptr %gp_io41, align 8, !dbg !2305
  br label %cond.end, !dbg !2305

cond.end:                                         ; preds = %cond.true, %cond.false37
  %cond = phi ptr [ %15, %cond.false37 ], [ %13, %cond.true ], !dbg !2305
  %sv_u42 = getelementptr inbounds %struct.io, ptr %cond, i64 0, i32 3, !dbg !2305
  %16 = load ptr, ptr %sv_u42, align 8, !dbg !2305
  %call43 = tail call i32 @Perl_PerlIO_flush(ptr noundef %16) #11, !dbg !2305
  %17 = load ptr, ptr @PL_oldname, align 8, !dbg !2307
  %18 = load i32, ptr @PL_filemode, align 4, !dbg !2307
  %call44 = tail call i32 @chmod(ptr noundef %17, i32 noundef %18) #11, !dbg !2307
  br label %if.end45, !dbg !2308

if.end45:                                         ; preds = %cond.end, %if.end12
  store i32 -1, ptr @PL_lastfd, align 4, !dbg !2309
  store i32 0, ptr @PL_filemode, align 4, !dbg !2310
  %19 = load ptr, ptr %sv_u, align 8, !dbg !2311
  %gp_av = getelementptr inbounds %struct.gp, ptr %19, i64 0, i32 6, !dbg !2311
  %20 = load ptr, ptr %gp_av, align 8, !dbg !2311
  %tobool48.not = icmp eq ptr %20, null, !dbg !2311
  br i1 %tobool48.not, label %cleanup309, label %while.cond.preheader, !dbg !2313

while.cond.preheader:                             ; preds = %if.end45
  %arrayidx12.i = getelementptr inbounds [8 x i8], ptr %mode.i, i64 0, i64 1
  %sv_flags.i368 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 2
  %tobool2.not.i373 = icmp eq ptr %gv, null
  %sv_flags.i374 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 2
  %sv_u.i383 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3
  %tobool2.not.i421 = icmp eq ptr %gv, null
  %sv_flags.i422 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 2
  %sv_u.i431 = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3
  br label %while.cond, !dbg !2314

while.cond:                                       ; preds = %while.cond.preheader, %cleanup270
  %21 = phi ptr [ %20, %while.cond.preheader ], [ %.pre473, %cleanup270 ], !dbg !2321
  call void @llvm.dbg.value(metadata ptr %21, metadata !2319, metadata !DIExpression()) #11, !dbg !2322
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 2, !dbg !2314
  %22 = load i32, ptr %sv_flags.i, align 4, !dbg !2314
  %and.i = and i32 %22, 8388608, !dbg !2314
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !2314
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i, !dbg !2314

cond.true.i:                                      ; preds = %while.cond
  %call.i = call i32 @Perl_mg_size(ptr noundef nonnull %21) #11, !dbg !2314
  %conv.i = sext i32 %call.i to i64, !dbg !2314
  br label %S_av_top_index.exit, !dbg !2314

cond.false.i:                                     ; preds = %while.cond
  %23 = load ptr, ptr %21, align 8, !dbg !2314
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %23, i64 0, i32 2, !dbg !2314
  %24 = load i64, ptr %xav_fill.i, align 8, !dbg !2314
  br label %S_av_top_index.exit, !dbg !2314

S_av_top_index.exit:                              ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i64 [ %conv.i, %cond.true.i ], [ %24, %cond.false.i ], !dbg !2314
  %cmp55 = icmp sgt i64 %cond.i, -1, !dbg !2323
  br i1 %cmp55, label %while.body, label %while.end, !dbg !2324

while.body:                                       ; preds = %S_av_top_index.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oldlen) #11, !dbg !2325
  %25 = load ptr, ptr %sv_u, align 8, !dbg !2326
  %gp_av59 = getelementptr inbounds %struct.gp, ptr %25, i64 0, i32 6, !dbg !2326
  %26 = load ptr, ptr %gp_av59, align 8, !dbg !2326
  %call60 = call ptr @Perl_av_shift(ptr noundef %26) #11, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %call60, metadata !2254, metadata !DIExpression()), !dbg !2327
  call void @Perl_save_pushptr(ptr noundef %call60, i32 noundef 11) #11, !dbg !2328
  %27 = load i8, ptr @PL_tainting, align 1, !dbg !2329, !range !1370
  %tobool61.not = icmp eq i8 %27, 0, !dbg !2329
  br i1 %tobool61.not, label %do.end, label %if.then65, !dbg !2332

if.then65:                                        ; preds = %while.body
  %28 = load ptr, ptr %sv_u, align 8, !dbg !2333
  %29 = load ptr, ptr %28, align 8, !dbg !2333
  %tobool68.not = icmp eq ptr %29, null, !dbg !2333
  br i1 %tobool68.not, label %cond.false73, label %cond.end78, !dbg !2333

cond.false73:                                     ; preds = %if.then65
  %call74 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %gv, i32 noundef 0) #11, !dbg !2333
  %sv_u75 = getelementptr inbounds %struct.gv, ptr %call74, i64 0, i32 3, !dbg !2333
  %30 = load ptr, ptr %sv_u75, align 8, !dbg !2333
  %.pre474 = load ptr, ptr %30, align 8, !dbg !2333
  br label %cond.end78, !dbg !2333

cond.end78:                                       ; preds = %if.then65, %cond.false73
  %31 = phi ptr [ %.pre474, %cond.false73 ], [ %29, %if.then65 ], !dbg !2333
  call void @Perl_sv_untaint(ptr noundef %31) #11, !dbg !2333
  br label %do.end, !dbg !2333

do.end:                                           ; preds = %while.body, %cond.end78
  %32 = load ptr, ptr %sv_u, align 8, !dbg !2335
  %33 = load ptr, ptr %32, align 8, !dbg !2335
  %tobool84.not = icmp eq ptr %33, null, !dbg !2335
  br i1 %tobool84.not, label %cond.false89, label %cond.end94, !dbg !2335

cond.false89:                                     ; preds = %do.end
  %call90 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %gv, i32 noundef 0) #11, !dbg !2335
  %sv_u91 = getelementptr inbounds %struct.gv, ptr %call90, i64 0, i32 3, !dbg !2335
  %34 = load ptr, ptr %sv_u91, align 8, !dbg !2335
  %.pre475 = load ptr, ptr %34, align 8, !dbg !2335
  br label %cond.end94, !dbg !2335

cond.end94:                                       ; preds = %do.end, %cond.false89
  %35 = phi ptr [ %.pre475, %cond.false89 ], [ %33, %do.end ], !dbg !2335
  call void @Perl_sv_setsv_flags(ptr noundef %35, ptr noundef %call60, i32 noundef 1538) #11, !dbg !2335
  %36 = load ptr, ptr %sv_u, align 8, !dbg !2336
  %37 = load ptr, ptr %36, align 8, !dbg !2336
  %sv_flags100 = getelementptr inbounds %struct.sv, ptr %37, i64 0, i32 2, !dbg !2336
  %38 = load i32, ptr %sv_flags100, align 4, !dbg !2336
  %and101 = and i32 %38, 4194304, !dbg !2336
  %tobool102.not = icmp eq i32 %and101, 0, !dbg !2336
  br i1 %tobool102.not, label %do.end112, label %if.then105, !dbg !2339

if.then105:                                       ; preds = %cond.end94
  %call109 = call i32 @Perl_mg_set(ptr noundef nonnull %37) #11, !dbg !2336
  %.pre476 = load ptr, ptr %sv_u, align 8, !dbg !2340
  %.pre477 = load ptr, ptr %.pre476, align 8, !dbg !2340
  %sv_flags116.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre477, i64 0, i32 2
  %.pre478 = load i32, ptr %sv_flags116.phi.trans.insert, align 4, !dbg !2340
  br label %do.end112, !dbg !2336

do.end112:                                        ; preds = %cond.end94, %if.then105
  %39 = phi i32 [ %38, %cond.end94 ], [ %.pre478, %if.then105 ], !dbg !2340
  %40 = phi ptr [ %37, %cond.end94 ], [ %.pre477, %if.then105 ], !dbg !2340
  store ptr %40, ptr @PL_Sv, align 8, !dbg !2340
  %and117 = and i32 %39, 2098176, !dbg !2340
  %cmp118 = icmp eq i32 %and117, 1024, !dbg !2340
  br i1 %cmp118, label %cond.true120, label %cond.false123, !dbg !2340

cond.true120:                                     ; preds = %do.end112
  %41 = load ptr, ptr %40, align 8, !dbg !2340
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %41, i64 0, i32 2, !dbg !2340
  %42 = load i64, ptr %xpv_cur, align 8, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %42, metadata !2252, metadata !DIExpression()), !dbg !2327
  store i64 %42, ptr %oldlen, align 8, !dbg !2340
  %sv_u122 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3, !dbg !2340
  %43 = load ptr, ptr %sv_u122, align 8, !dbg !2340
  br label %cond.end125, !dbg !2340

cond.false123:                                    ; preds = %do.end112
  call void @llvm.dbg.value(metadata ptr %oldlen, metadata !2252, metadata !DIExpression(DW_OP_deref)), !dbg !2327
  %call124 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %40, ptr noundef nonnull %oldlen, i32 noundef 2) #11, !dbg !2340
  br label %cond.end125, !dbg !2340

cond.end125:                                      ; preds = %cond.false123, %cond.true120
  %cond126 = phi ptr [ %43, %cond.true120 ], [ %call124, %cond.false123 ], !dbg !2340
  store ptr %cond126, ptr @PL_oldname, align 8, !dbg !2341
  %44 = load ptr, ptr @PL_inplace, align 8, !dbg !2342
  %tobool127.not = icmp eq ptr %44, null, !dbg !2342
  br i1 %tobool127.not, label %if.then130, label %if.else, !dbg !2343

if.then130:                                       ; preds = %cond.end125
  br i1 %nomagicopen, label %cond.true133, label %cond.false139, !dbg !2344

cond.true133:                                     ; preds = %if.then130
  %45 = load ptr, ptr %sv_u, align 8, !dbg !2346
  %call137 = call zeroext i1 @Perl_do_open6(ptr noundef nonnull %gv, ptr noundef nonnull @.str.13, i64 noundef 1, ptr noundef null, ptr noundef %45, i32 noundef 1), !dbg !2346
  br i1 %call137, label %cleanup270.thread, label %if.end254, !dbg !2348

cond.false139:                                    ; preds = %if.then130
  %46 = load i64, ptr %oldlen, align 8, !dbg !2349
  call void @llvm.dbg.value(metadata i64 %46, metadata !2252, metadata !DIExpression()), !dbg !2327
  %call140 = call zeroext i1 @Perl_do_open6(ptr noundef nonnull %gv, ptr noundef %cond126, i64 noundef %46, ptr noundef null, ptr noundef null, i32 noundef 0), !dbg !2349
  br i1 %call140, label %cleanup270.thread, label %if.end254, !dbg !2344

if.else:                                          ; preds = %cond.end125
  %47 = load i64, ptr %oldlen, align 8, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %47, metadata !2252, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata ptr %gv, metadata !1125, metadata !DIExpression()) #11, !dbg !2351
  call void @llvm.dbg.value(metadata ptr %cond126, metadata !1126, metadata !DIExpression()) #11, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %47, metadata !1127, metadata !DIExpression()) #11, !dbg !2351
  call void @llvm.dbg.value(metadata i32 0, metadata !1128, metadata !DIExpression()) #11, !dbg !2351
  call void @llvm.dbg.value(metadata i32 0, metadata !1129, metadata !DIExpression()) #11, !dbg !2351
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %saveifp.i) #11, !dbg !2353
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %saveofp.i) #11, !dbg !2354
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %savefd.i) #11, !dbg !2355
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %savetype.i) #11, !dbg !2356
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mode.i) #11, !dbg !2357
  call void @llvm.dbg.declare(metadata ptr %mode.i, metadata !1134, metadata !DIExpression()) #11, !dbg !2358
  call void @llvm.dbg.value(metadata ptr %saveifp.i, metadata !1130, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2351
  call void @llvm.dbg.value(metadata ptr %saveofp.i, metadata !1131, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2351
  call void @llvm.dbg.value(metadata ptr %savefd.i, metadata !1132, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2351
  call void @llvm.dbg.value(metadata ptr %savetype.i, metadata !1133, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2351
  %call.i365 = call fastcc ptr @S_openn_setup(ptr noundef nonnull %gv, ptr noundef nonnull %mode.i, ptr noundef nonnull %saveifp.i, ptr noundef nonnull %saveofp.i, ptr noundef nonnull %savefd.i, ptr noundef nonnull %savetype.i) #11, !dbg !2359
  call void @llvm.dbg.value(metadata ptr %call.i365, metadata !1138, metadata !DIExpression()) #11, !dbg !2351
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %writing.i) #11, !dbg !2360
  call void @llvm.dbg.value(metadata i32 0, metadata !1140, metadata !DIExpression()) #11, !dbg !2351
  store i32 0, ptr %writing.i, align 4, !dbg !2361
  call void @llvm.dbg.value(metadata i64 0, metadata !1142, metadata !DIExpression()) #11, !dbg !2362
  call void @llvm.dbg.value(metadata i32 1536, metadata !1144, metadata !DIExpression()) #11, !dbg !2362
  call void @llvm.dbg.value(metadata i32 1603, metadata !1146, metadata !DIExpression()) #11, !dbg !2362
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %namesv.i) #11, !dbg !2363
  call void @llvm.dbg.value(metadata i32 0, metadata !1147, metadata !DIExpression()) #11, !dbg !2362
  call void @llvm.dbg.value(metadata i64 1, metadata !1142, metadata !DIExpression()) #11, !dbg !2362
  store i8 35, ptr %mode.i, align 1, !dbg !2364
  call void @llvm.dbg.value(metadata ptr %writing.i, metadata !1140, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2351
  %call13.i = call i32 @PerlIO_intmode2str(i32 noundef 0, ptr noundef nonnull %arrayidx12.i, ptr noundef nonnull %writing.i) #11, !dbg !2365
  %conv.i366 = trunc i32 %call13.i to i8, !dbg !2365
  %48 = load ptr, ptr %call.i365, align 8, !dbg !2366
  %xio_type.i = getelementptr inbounds %struct.xpvio, ptr %48, i64 0, i32 16, !dbg !2366
  store i8 %conv.i366, ptr %xio_type.i, align 8, !dbg !2367
  %call14.i = call ptr @Perl_newSVpvn_flags(ptr noundef %cond126, i64 noundef %47, i32 noundef 524288) #11, !dbg !2368
  call void @llvm.dbg.value(metadata ptr %call14.i, metadata !1148, metadata !DIExpression()) #11, !dbg !2362
  store ptr %call14.i, ptr %namesv.i, align 8, !dbg !2369
  call void @llvm.dbg.value(metadata ptr %namesv.i, metadata !1148, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2362
  %call16.i = call ptr @PerlIO_openn(ptr noundef null, ptr noundef nonnull %mode.i, i32 noundef -1, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 1, ptr noundef nonnull %namesv.i) #11, !dbg !2370
  call void @llvm.dbg.value(metadata ptr %call16.i, metadata !1141, metadata !DIExpression()) #11, !dbg !2351
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %namesv.i) #11, !dbg !2371
  %49 = load ptr, ptr %saveifp.i, align 8, !dbg !2372
  call void @llvm.dbg.value(metadata ptr %49, metadata !1130, metadata !DIExpression()) #11, !dbg !2351
  %50 = load ptr, ptr %saveofp.i, align 8, !dbg !2372
  call void @llvm.dbg.value(metadata ptr %50, metadata !1131, metadata !DIExpression()) #11, !dbg !2351
  %51 = load i32, ptr %savefd.i, align 4, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %51, metadata !1132, metadata !DIExpression()) #11, !dbg !2351
  %52 = load i8, ptr %savetype.i, align 1, !dbg !2372
  call void @llvm.dbg.value(metadata i8 %52, metadata !1133, metadata !DIExpression()) #11, !dbg !2351
  %53 = load i32, ptr %writing.i, align 4, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %53, metadata !1140, metadata !DIExpression()) #11, !dbg !2351
  %call18.i = call fastcc zeroext i1 @S_openn_cleanup(ptr noundef nonnull %gv, ptr noundef nonnull %call.i365, ptr noundef %call16.i, ptr noundef nonnull %mode.i, ptr noundef %cond126, ptr noundef %49, ptr noundef %50, i32 noundef %51, i8 noundef signext %52, i32 noundef %53, i1 noundef zeroext false, ptr noundef null) #11, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %writing.i) #11, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mode.i) #11, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %savetype.i) #11, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %savefd.i) #11, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %saveofp.i) #11, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %saveifp.i) #11, !dbg !2373
  br i1 %call18.i, label %if.then149, label %if.end254, !dbg !2374

if.then149:                                       ; preds = %if.else
  %54 = load i8, ptr @PL_tainting, align 1, !dbg !2375, !range !1370
  %tobool150.not = icmp eq i8 %54, 0, !dbg !2375
  br i1 %tobool150.not, label %if.end155, label %if.then154, !dbg !2377

if.then154:                                       ; preds = %if.then149
  call void @Perl_taint_proper(ptr noundef null, ptr noundef nonnull @.str.14) #11, !dbg !2378
  br label %if.end155, !dbg !2378

if.end155:                                        ; preds = %if.then149, %if.then154
  %55 = load i64, ptr %oldlen, align 8, !dbg !2380
  call void @llvm.dbg.value(metadata i64 %55, metadata !2252, metadata !DIExpression()), !dbg !2327
  %cmp156 = icmp eq i64 %55, 1, !dbg !2382
  br i1 %cmp156, label %land.lhs.true158, label %if.end168, !dbg !2383

land.lhs.true158:                                 ; preds = %if.end155
  %56 = load ptr, ptr @PL_oldname, align 8, !dbg !2384
  %57 = load i8, ptr %56, align 1, !dbg !2385
  %cmp160 = icmp eq i8 %57, 45, !dbg !2386
  br i1 %cmp160, label %if.then162, label %if.end168, !dbg !2387

if.then162:                                       ; preds = %land.lhs.true158
  %call163 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.15, i64 noundef 6, i32 noundef 129, i32 noundef 15) #11, !dbg !2388
  call void @Perl_setdefout(ptr noundef %call163) #11, !dbg !2388
  br label %cleanup270.thread, !dbg !2390

if.end168:                                        ; preds = %land.lhs.true158, %if.end155
  %58 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !dbg !2391
  store i32 %58, ptr @PL_filemode, align 4, !dbg !2392
  call void @llvm.dbg.value(metadata i32 undef, metadata !2255, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i32 undef, metadata !2261, metadata !DIExpression()), !dbg !2393
  %and169 = and i32 %58, 61440, !dbg !2394
  %cmp170 = icmp eq i32 %and169, 32768, !dbg !2394
  br i1 %cmp170, label %if.end174, label %lor.lhs.false.i, !dbg !2396

lor.lhs.false.i:                                  ; preds = %if.end168
  %59 = load ptr, ptr @PL_oldname, align 8, !dbg !2397
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.16, ptr noundef %59) #11, !dbg !2399
  call void @llvm.dbg.value(metadata i1 false, metadata !2400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2408
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2405, metadata !DIExpression()) #11, !dbg !2408
  %60 = load i32, ptr %sv_flags.i368, align 4, !dbg !2410
  %and.i369 = and i32 %60, 49152, !dbg !2410
  %cmp.i = icmp eq i32 %and.i369, 32768, !dbg !2410
  br i1 %cmp.i, label %land.lhs.true.i, label %cleanup270, !dbg !2410, !llvm.loop !2412

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %and4.i = and i32 %60, 255, !dbg !2410
  %and4.off.i = add nsw i32 %and4.i, -9, !dbg !2410
  %switch.i = icmp ult i32 %and4.off.i, 2, !dbg !2410
  br i1 %switch.i, label %land.lhs.true24.i, label %cleanup270, !dbg !2410, !llvm.loop !2412

land.lhs.true24.i:                                ; preds = %land.lhs.true.i
  %61 = load ptr, ptr %sv_u, align 8, !dbg !2414
  %tobool25.not.i = icmp eq ptr %61, null, !dbg !2414
  br i1 %tobool25.not.i, label %cleanup270, label %cond.end.i, !dbg !2414, !llvm.loop !2412

cond.end.i:                                       ; preds = %land.lhs.true24.i
  %gp_io.i = getelementptr inbounds %struct.gp, ptr %61, i64 0, i32 1, !dbg !2414
  %62 = load ptr, ptr %gp_io.i, align 8, !dbg !2414
  call void @llvm.dbg.value(metadata ptr %62, metadata !2407, metadata !DIExpression()) #11, !dbg !2408
  %tobool28.not.i = icmp eq ptr %62, null, !dbg !2415
  br i1 %tobool28.not.i, label %cleanup270, label %if.end34.i, !dbg !2417, !llvm.loop !2412

if.end34.i:                                       ; preds = %cond.end.i
  %call36.i = call zeroext i1 @Perl_io_close(ptr noundef nonnull %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11, !dbg !2418
  call void @llvm.dbg.value(metadata i1 %call36.i, metadata !2406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2408
  %63 = load ptr, ptr %62, align 8, !dbg !2419
  %xio_type.i370 = getelementptr inbounds %struct.xpvio, ptr %63, i64 0, i32 16, !dbg !2419
  store i8 32, ptr %xio_type.i370, align 8, !dbg !2420
  br label %cleanup270, !dbg !2421, !llvm.loop !2412

if.end174:                                        ; preds = %if.end168
  %64 = load ptr, ptr @PL_inplace, align 8, !dbg !2422
  %65 = load i8, ptr %64, align 1, !dbg !2423
  %tobool176.not = icmp eq i8 %65, 0, !dbg !2423
  br i1 %tobool176.not, label %if.else208, label %land.lhs.true177, !dbg !2424

land.lhs.true177:                                 ; preds = %if.end174
  %call178 = call i32 @strcmp(ptr noundef nonnull %64, ptr noundef nonnull dereferenceable(2) @.str.17) #12, !dbg !2425
  %tobool179.not = icmp eq i32 %call178, 0, !dbg !2425
  br i1 %tobool179.not, label %if.else208, label %if.then180, !dbg !2426

if.then180:                                       ; preds = %land.lhs.true177
  %call181 = call ptr @strchr(ptr noundef nonnull %64, i32 noundef 42) #12, !dbg !2427
  call void @llvm.dbg.value(metadata ptr %call181, metadata !2263, metadata !DIExpression()), !dbg !2428
  %tobool182.not = icmp eq ptr %call181, null, !dbg !2429
  br i1 %tobool182.not, label %if.end193.sink.split, label %if.then183, !dbg !2430

if.then183:                                       ; preds = %if.then180
  call void @llvm.dbg.value(metadata ptr %64, metadata !2266, metadata !DIExpression()), !dbg !2431
  call void @Perl_sv_setpvn(ptr noundef %call60, ptr noundef nonnull @.str.4, i64 noundef 0) #11, !dbg !2432
  br label %do.body184, !dbg !2433

do.body184:                                       ; preds = %do.body184, %if.then183
  %star.0 = phi ptr [ %call181, %if.then183 ], [ %call186, %do.body184 ], !dbg !2428
  %begin.0 = phi ptr [ %64, %if.then183 ], [ %incdec.ptr, %do.body184 ], !dbg !2431
  call void @llvm.dbg.value(metadata ptr %begin.0, metadata !2266, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %star.0, metadata !2263, metadata !DIExpression()), !dbg !2428
  %sub.ptr.lhs.cast = ptrtoint ptr %star.0 to i64, !dbg !2434
  %sub.ptr.rhs.cast = ptrtoint ptr %begin.0 to i64, !dbg !2434
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2434
  call void @Perl_sv_catpvn_flags(ptr noundef %call60, ptr noundef nonnull %begin.0, i64 noundef %sub.ptr.sub, i32 noundef 2) #11, !dbg !2434
  %66 = load ptr, ptr @PL_oldname, align 8, !dbg !2436
  %67 = load i64, ptr %oldlen, align 8, !dbg !2436
  call void @llvm.dbg.value(metadata i64 %67, metadata !2252, metadata !DIExpression()), !dbg !2327
  call void @Perl_sv_catpvn_flags(ptr noundef %call60, ptr noundef %66, i64 noundef %67, i32 noundef 2) #11, !dbg !2436
  %incdec.ptr = getelementptr inbounds i8, ptr %star.0, i64 1, !dbg !2437
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2263, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2266, metadata !DIExpression()), !dbg !2431
  %call186 = call ptr @strchr(ptr noundef nonnull %incdec.ptr, i32 noundef 42) #12, !dbg !2438
  call void @llvm.dbg.value(metadata ptr %call186, metadata !2263, metadata !DIExpression()), !dbg !2428
  %tobool187.not = icmp eq ptr %call186, null, !dbg !2439
  br i1 %tobool187.not, label %do.end188, label %do.body184, !dbg !2439, !llvm.loop !2440

do.end188:                                        ; preds = %do.body184
  %68 = load i8, ptr %incdec.ptr, align 1, !dbg !2442
  %tobool189.not = icmp eq i8 %68, 0, !dbg !2442
  br i1 %tobool189.not, label %if.end193, label %if.end193.sink.split, !dbg !2444

if.end193.sink.split:                             ; preds = %if.then180, %do.end188
  %incdec.ptr.lcssa.sink = phi ptr [ %incdec.ptr, %do.end188 ], [ %64, %if.then180 ]
  call void @Perl_sv_catpv(ptr noundef %call60, ptr noundef nonnull %incdec.ptr.lcssa.sink) #11, !dbg !2445
  br label %if.end193, !dbg !2446

if.end193:                                        ; preds = %if.end193.sink.split, %do.end188
  %sv_u194 = getelementptr inbounds %struct.sv, ptr %call60, i64 0, i32 3, !dbg !2446
  %69 = load ptr, ptr %sv_u194, align 8, !dbg !2446
  %call196 = call i32 @unlink(ptr noundef %69) #11, !dbg !2446
  %70 = load ptr, ptr @PL_oldname, align 8, !dbg !2447
  %71 = load ptr, ptr %sv_u194, align 8, !dbg !2449
  %call199 = call i32 @link(ptr noundef %70, ptr noundef %71) #11, !dbg !2450
  %cmp200 = icmp slt i32 %call199, 0, !dbg !2451
  %72 = load ptr, ptr @PL_oldname, align 8, !dbg !2428
  br i1 %cmp200, label %if.then202, label %cleanup, !dbg !2452

if.then202:                                       ; preds = %if.end193
  %call203 = tail call ptr @__errno_location() #13, !dbg !2453
  %73 = load i32, ptr %call203, align 4, !dbg !2453
  %call204 = call ptr @strerror(i32 noundef %73) #11, !dbg !2453
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.18, ptr noundef %72, ptr noundef nonnull %call60, ptr noundef %call204) #11, !dbg !2455
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2405, metadata !DIExpression()) #11, !dbg !2456
  call void @llvm.dbg.value(metadata i1 false, metadata !2400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2456
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2405, metadata !DIExpression()) #11, !dbg !2456
  br i1 %tobool2.not.i373, label %cleanup270, label %lor.lhs.false.i377, !dbg !2458, !llvm.loop !2412

lor.lhs.false.i377:                               ; preds = %if.then202
  %74 = load i32, ptr %sv_flags.i374, align 4, !dbg !2459
  %and.i375 = and i32 %74, 49152, !dbg !2459
  %cmp.i376 = icmp eq i32 %and.i375, 32768, !dbg !2459
  br i1 %cmp.i376, label %land.lhs.true.i381, label %cleanup270, !dbg !2459, !llvm.loop !2412

land.lhs.true.i381:                               ; preds = %lor.lhs.false.i377
  %and4.i378 = and i32 %74, 255, !dbg !2459
  %and4.off.i379 = add nsw i32 %and4.i378, -9, !dbg !2459
  %switch.i380 = icmp ult i32 %and4.off.i379, 2, !dbg !2459
  br i1 %switch.i380, label %land.lhs.true24.i385, label %cleanup270, !dbg !2459, !llvm.loop !2412

land.lhs.true24.i385:                             ; preds = %land.lhs.true.i381
  %75 = load ptr, ptr %sv_u.i383, align 8, !dbg !2460
  %tobool25.not.i384 = icmp eq ptr %75, null, !dbg !2460
  br i1 %tobool25.not.i384, label %cleanup270, label %cond.end.i388, !dbg !2460, !llvm.loop !2412

cond.end.i388:                                    ; preds = %land.lhs.true24.i385
  %gp_io.i386 = getelementptr inbounds %struct.gp, ptr %75, i64 0, i32 1, !dbg !2460
  %76 = load ptr, ptr %gp_io.i386, align 8, !dbg !2460
  call void @llvm.dbg.value(metadata ptr %76, metadata !2407, metadata !DIExpression()) #11, !dbg !2456
  %tobool28.not.i387 = icmp eq ptr %76, null, !dbg !2461
  br i1 %tobool28.not.i387, label %cleanup270, label %if.end34.i391, !dbg !2462, !llvm.loop !2412

if.end34.i391:                                    ; preds = %cond.end.i388
  %call36.i390 = call zeroext i1 @Perl_io_close(ptr noundef nonnull %76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11, !dbg !2463
  call void @llvm.dbg.value(metadata i1 %call36.i390, metadata !2406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2456
  %77 = load ptr, ptr %76, align 8, !dbg !2464
  %xio_type.i392 = getelementptr inbounds %struct.xpvio, ptr %77, i64 0, i32 16, !dbg !2464
  store i8 32, ptr %xio_type.i392, align 8, !dbg !2465
  br label %cleanup270, !dbg !2466, !llvm.loop !2412

cleanup:                                          ; preds = %if.end193
  %call207 = call i32 @unlink(ptr noundef %72) #11, !dbg !2467
  br label %if.end217

if.else208:                                       ; preds = %land.lhs.true177, %if.end174
  %78 = load ptr, ptr @PL_oldname, align 8, !dbg !2468
  %call209 = call i32 @unlink(ptr noundef %78) #11, !dbg !2468
  %cmp210 = icmp slt i32 %call209, 0, !dbg !2471
  br i1 %cmp210, label %lor.lhs.false.i401, label %if.end217, !dbg !2472

lor.lhs.false.i401:                               ; preds = %if.else208
  %79 = load ptr, ptr @PL_oldname, align 8, !dbg !2473
  %call213 = tail call ptr @__errno_location() #13, !dbg !2475
  %80 = load i32, ptr %call213, align 4, !dbg !2475
  %call214 = call ptr @strerror(i32 noundef %80) #11, !dbg !2475
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.19, ptr noundef %79, ptr noundef %call214) #11, !dbg !2476
  call void @llvm.dbg.value(metadata i1 false, metadata !2400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2477
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2405, metadata !DIExpression()) #11, !dbg !2477
  %81 = load i32, ptr %sv_flags.i368, align 4, !dbg !2479
  %and.i399 = and i32 %81, 49152, !dbg !2479
  %cmp.i400 = icmp eq i32 %and.i399, 32768, !dbg !2479
  br i1 %cmp.i400, label %land.lhs.true.i405, label %cleanup270, !dbg !2479, !llvm.loop !2412

land.lhs.true.i405:                               ; preds = %lor.lhs.false.i401
  %and4.i402 = and i32 %81, 255, !dbg !2479
  %and4.off.i403 = add nsw i32 %and4.i402, -9, !dbg !2479
  %switch.i404 = icmp ult i32 %and4.off.i403, 2, !dbg !2479
  br i1 %switch.i404, label %land.lhs.true24.i409, label %cleanup270, !dbg !2479, !llvm.loop !2412

land.lhs.true24.i409:                             ; preds = %land.lhs.true.i405
  %82 = load ptr, ptr %sv_u, align 8, !dbg !2480
  %tobool25.not.i408 = icmp eq ptr %82, null, !dbg !2480
  br i1 %tobool25.not.i408, label %cleanup270, label %cond.end.i412, !dbg !2480, !llvm.loop !2412

cond.end.i412:                                    ; preds = %land.lhs.true24.i409
  %gp_io.i410 = getelementptr inbounds %struct.gp, ptr %82, i64 0, i32 1, !dbg !2480
  %83 = load ptr, ptr %gp_io.i410, align 8, !dbg !2480
  call void @llvm.dbg.value(metadata ptr %83, metadata !2407, metadata !DIExpression()) #11, !dbg !2477
  %tobool28.not.i411 = icmp eq ptr %83, null, !dbg !2481
  br i1 %tobool28.not.i411, label %cleanup270, label %if.end34.i415, !dbg !2482, !llvm.loop !2412

if.end34.i415:                                    ; preds = %cond.end.i412
  %call36.i414 = call zeroext i1 @Perl_io_close(ptr noundef nonnull %83, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11, !dbg !2483
  call void @llvm.dbg.value(metadata i1 %call36.i414, metadata !2406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2477
  %84 = load ptr, ptr %83, align 8, !dbg !2484
  %xio_type.i416 = getelementptr inbounds %struct.xpvio, ptr %84, i64 0, i32 16, !dbg !2484
  store i8 32, ptr %xio_type.i416, align 8, !dbg !2485
  br label %cleanup270, !dbg !2486, !llvm.loop !2412

if.end217:                                        ; preds = %cleanup, %if.else208
  %85 = load ptr, ptr @PL_oldname, align 8, !dbg !2487
  %86 = load i64, ptr %oldlen, align 8, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %86, metadata !2252, metadata !DIExpression()), !dbg !2327
  call void @Perl_sv_setpvn(ptr noundef %call60, ptr noundef %85, i64 noundef %86) #11, !dbg !2487
  %call218 = tail call ptr @__errno_location() #13, !dbg !2488
  store i32 0, ptr %call218, align 4, !dbg !2488
  %87 = load ptr, ptr @PL_argvoutgv, align 8, !dbg !2489
  %sv_u219 = getelementptr inbounds %struct.sv, ptr %call60, i64 0, i32 3, !dbg !2491
  %88 = load ptr, ptr %sv_u219, align 8, !dbg !2491
  %89 = load ptr, ptr %call60, align 8, !dbg !2492
  %xpv_cur222 = getelementptr inbounds %struct.xpv, ptr %89, i64 0, i32 2, !dbg !2492
  %90 = load i64, ptr %xpv_cur222, align 8, !dbg !2492
  %call223 = call zeroext i1 @Perl_do_open_raw(ptr noundef %87, ptr noundef %88, i64 noundef %90, i32 noundef 193, i32 noundef 384), !dbg !2493
  br i1 %call223, label %if.end228, label %if.then224, !dbg !2494

if.then224:                                       ; preds = %if.end217
  %91 = load ptr, ptr @PL_oldname, align 8, !dbg !2495
  %92 = load i32, ptr %call218, align 4, !dbg !2497
  %call226 = call ptr @strerror(i32 noundef %92) #11, !dbg !2497
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 23, ptr noundef nonnull @.str.20, ptr noundef %91, ptr noundef %call226) #11, !dbg !2498
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2405, metadata !DIExpression()) #11, !dbg !2499
  call void @llvm.dbg.value(metadata i1 false, metadata !2400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2499
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2405, metadata !DIExpression()) #11, !dbg !2499
  br i1 %tobool2.not.i421, label %cleanup270, label %lor.lhs.false.i425, !dbg !2501, !llvm.loop !2412

lor.lhs.false.i425:                               ; preds = %if.then224
  %93 = load i32, ptr %sv_flags.i422, align 4, !dbg !2502
  %and.i423 = and i32 %93, 49152, !dbg !2502
  %cmp.i424 = icmp eq i32 %and.i423, 32768, !dbg !2502
  br i1 %cmp.i424, label %land.lhs.true.i429, label %cleanup270, !dbg !2502, !llvm.loop !2412

land.lhs.true.i429:                               ; preds = %lor.lhs.false.i425
  %and4.i426 = and i32 %93, 255, !dbg !2502
  %and4.off.i427 = add nsw i32 %and4.i426, -9, !dbg !2502
  %switch.i428 = icmp ult i32 %and4.off.i427, 2, !dbg !2502
  br i1 %switch.i428, label %land.lhs.true24.i433, label %cleanup270, !dbg !2502, !llvm.loop !2412

land.lhs.true24.i433:                             ; preds = %land.lhs.true.i429
  %94 = load ptr, ptr %sv_u.i431, align 8, !dbg !2503
  %tobool25.not.i432 = icmp eq ptr %94, null, !dbg !2503
  br i1 %tobool25.not.i432, label %cleanup270, label %cond.end.i436, !dbg !2503, !llvm.loop !2412

cond.end.i436:                                    ; preds = %land.lhs.true24.i433
  %gp_io.i434 = getelementptr inbounds %struct.gp, ptr %94, i64 0, i32 1, !dbg !2503
  %95 = load ptr, ptr %gp_io.i434, align 8, !dbg !2503
  call void @llvm.dbg.value(metadata ptr %95, metadata !2407, metadata !DIExpression()) #11, !dbg !2499
  %tobool28.not.i435 = icmp eq ptr %95, null, !dbg !2504
  br i1 %tobool28.not.i435, label %cleanup270, label %if.end34.i439, !dbg !2505, !llvm.loop !2412

if.end34.i439:                                    ; preds = %cond.end.i436
  %call36.i438 = call zeroext i1 @Perl_io_close(ptr noundef nonnull %95, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11, !dbg !2506
  call void @llvm.dbg.value(metadata i1 %call36.i438, metadata !2406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2499
  %96 = load ptr, ptr %95, align 8, !dbg !2507
  %xio_type.i440 = getelementptr inbounds %struct.xpvio, ptr %96, i64 0, i32 16, !dbg !2507
  store i8 32, ptr %xio_type.i440, align 8, !dbg !2508
  br label %cleanup270, !dbg !2509, !llvm.loop !2412

if.end228:                                        ; preds = %if.end217
  %97 = load ptr, ptr @PL_argvoutgv, align 8, !dbg !2510
  call void @Perl_setdefout(ptr noundef %97) #11, !dbg !2510
  %98 = load ptr, ptr @PL_argvoutgv, align 8, !dbg !2511
  %sv_u229 = getelementptr inbounds %struct.gv, ptr %98, i64 0, i32 3, !dbg !2511
  %99 = load ptr, ptr %sv_u229, align 8, !dbg !2511
  %gp_io231 = getelementptr inbounds %struct.gp, ptr %99, i64 0, i32 1, !dbg !2511
  %100 = load ptr, ptr %gp_io231, align 8, !dbg !2511
  %sv_u232 = getelementptr inbounds %struct.io, ptr %100, i64 0, i32 3, !dbg !2511
  %101 = load ptr, ptr %sv_u232, align 8, !dbg !2511
  %call233 = call i32 @Perl_PerlIO_fileno(ptr noundef %101) #11, !dbg !2511
  store i32 %call233, ptr @PL_lastfd, align 4, !dbg !2512
  %cmp234 = icmp sgt i32 %call233, -1, !dbg !2513
  br i1 %cmp234, label %if.then236, label %cleanup270.thread, !dbg !2515

if.then236:                                       ; preds = %if.end228
  call void @llvm.dbg.value(metadata i32 %call233, metadata !2008, metadata !DIExpression()) #11, !dbg !2516
  call void @llvm.dbg.value(metadata ptr @PL_statbuf, metadata !2049, metadata !DIExpression()) #11, !dbg !2516
  %call.i443 = call i32 @__fxstat(i32 noundef 1, i32 noundef %call233, ptr noundef nonnull @PL_statbuf) #11, !dbg !2519
  %102 = load ptr, ptr @PL_oldname, align 8, !dbg !2520
  %103 = load i32, ptr @PL_filemode, align 4, !dbg !2520
  %call238 = call i32 @chmod(ptr noundef %102, i32 noundef %103) #11, !dbg !2520
  br label %cleanup270.thread, !dbg !2521

if.end254:                                        ; preds = %if.else, %cond.true133, %cond.false139
  %call255 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 23) #11, !dbg !2523
  br i1 %call255, label %if.then256, label %cleanup270, !dbg !2524

if.then256:                                       ; preds = %if.end254
  %call257 = tail call ptr @__errno_location() #13, !dbg !2525
  %104 = load i32, ptr %call257, align 4, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %104, metadata !2269, metadata !DIExpression()), !dbg !2526
  %105 = load ptr, ptr @PL_oldname, align 8, !dbg !2527
  call void @llvm.dbg.value(metadata ptr %105, metadata !2529, metadata !DIExpression()) #11, !dbg !2535
  call void @llvm.dbg.value(metadata ptr @PL_statbuf, metadata !2534, metadata !DIExpression()) #11, !dbg !2535
  %call.i444 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %105, ptr noundef nonnull @PL_statbuf) #11, !dbg !2537
  %cmp259 = icmp sgt i32 %call.i444, -1, !dbg !2538
  br i1 %cmp259, label %land.lhs.true261, label %if.else266, !dbg !2539

land.lhs.true261:                                 ; preds = %if.then256
  %106 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !dbg !2540
  %and262 = and i32 %106, 61440, !dbg !2540
  %cmp263 = icmp eq i32 %and262, 32768, !dbg !2540
  br i1 %cmp263, label %if.else266, label %if.then265, !dbg !2541

if.then265:                                       ; preds = %land.lhs.true261
  %107 = load ptr, ptr @PL_oldname, align 8, !dbg !2542
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 23, ptr noundef nonnull @.str.16, ptr noundef %107) #11, !dbg !2544
  br label %cleanup270, !dbg !2545

if.else266:                                       ; preds = %land.lhs.true261, %if.then256
  %108 = load ptr, ptr @PL_oldname, align 8, !dbg !2546
  %call267 = call ptr @strerror(i32 noundef %104) #11, !dbg !2548
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 23, ptr noundef nonnull @.str.21, ptr noundef %108, ptr noundef %call267) #11, !dbg !2549
  br label %cleanup270

cleanup270.thread:                                ; preds = %cond.true133, %cond.false139, %if.end228, %if.then236, %if.then162
  %109 = load ptr, ptr %sv_u, align 8, !dbg !2550
  %gp_io145 = getelementptr inbounds %struct.gp, ptr %109, i64 0, i32 1, !dbg !2550
  %110 = load ptr, ptr %gp_io145, align 8, !dbg !2550
  %sv_u146 = getelementptr inbounds %struct.io, ptr %110, i64 0, i32 3, !dbg !2550
  %retval.2.ph = load ptr, ptr %sv_u146, align 8, !dbg !2550
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oldlen) #11, !dbg !2413
  br label %cleanup309

cleanup270:                                       ; preds = %land.lhs.true24.i385, %cond.end.i388, %if.then202, %lor.lhs.false.i377, %land.lhs.true.i381, %if.end34.i391, %if.end34.i439, %land.lhs.true.i429, %lor.lhs.false.i425, %if.then224, %cond.end.i436, %land.lhs.true24.i433, %if.end34.i415, %land.lhs.true.i405, %lor.lhs.false.i401, %cond.end.i412, %land.lhs.true24.i409, %if.end34.i, %land.lhs.true.i, %lor.lhs.false.i, %cond.end.i, %land.lhs.true24.i, %if.end254, %if.else266, %if.then265
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oldlen) #11, !dbg !2413
  %.pre = load ptr, ptr %sv_u, align 8, !dbg !2321
  %gp_av53.phi.trans.insert = getelementptr inbounds %struct.gp, ptr %.pre, i64 0, i32 6
  %.pre473 = load ptr, ptr %gp_av53.phi.trans.insert, align 8, !dbg !2321
  br label %while.cond

while.end:                                        ; preds = %S_av_top_index.exit
  br i1 %tobool1.not, label %if.end286, label %land.lhs.true275, !dbg !2551

land.lhs.true275:                                 ; preds = %while.end
  %111 = load ptr, ptr %1, align 8, !dbg !2553
  %xio_flags277 = getelementptr inbounds %struct.xpvio, ptr %111, i64 0, i32 17, !dbg !2553
  %112 = load i8, ptr %xio_flags277, align 1, !dbg !2553
  %113 = and i8 %112, 1, !dbg !2554
  %tobool280.not = icmp eq i8 %113, 0, !dbg !2554
  br i1 %tobool280.not, label %if.end286, label %if.then281, !dbg !2555

if.then281:                                       ; preds = %land.lhs.true275
  %or = or i8 %112, 2, !dbg !2556
  store i8 %or, ptr %xio_flags277, align 1, !dbg !2556
  br label %if.end286, !dbg !2557

if.end286:                                        ; preds = %if.then281, %land.lhs.true275, %while.end
  %114 = load ptr, ptr @PL_inplace, align 8, !dbg !2558
  %tobool287.not = icmp eq ptr %114, null, !dbg !2558
  br i1 %tobool287.not, label %cleanup309, label %if.then288, !dbg !2559

if.then288:                                       ; preds = %if.end286
  %115 = load ptr, ptr @PL_argvoutgv, align 8, !dbg !2560
  call void @llvm.dbg.value(metadata ptr %115, metadata !2405, metadata !DIExpression()) #11, !dbg !2561
  call void @llvm.dbg.value(metadata i1 false, metadata !2400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2561
  %tobool.not.i445 = icmp eq ptr %115, null, !dbg !2563
  %116 = load ptr, ptr @PL_argvgv, align 8
  %spec.select.i446 = select i1 %tobool.not.i445, ptr %116, ptr %115, !dbg !2565
  call void @llvm.dbg.value(metadata ptr %spec.select.i446, metadata !2405, metadata !DIExpression()) #11, !dbg !2561
  %tobool2.not.i447 = icmp eq ptr %spec.select.i446, null, !dbg !2566
  br i1 %tobool2.not.i447, label %Perl_do_close.exit468, label %lor.lhs.false.i451, !dbg !2567

lor.lhs.false.i451:                               ; preds = %if.then288
  %sv_flags.i448 = getelementptr inbounds %struct.gv, ptr %spec.select.i446, i64 0, i32 2, !dbg !2568
  %117 = load i32, ptr %sv_flags.i448, align 4, !dbg !2568
  %and.i449 = and i32 %117, 49152, !dbg !2568
  %cmp.i450 = icmp eq i32 %and.i449, 32768, !dbg !2568
  br i1 %cmp.i450, label %land.lhs.true.i455, label %Perl_do_close.exit468, !dbg !2568

land.lhs.true.i455:                               ; preds = %lor.lhs.false.i451
  %and4.i452 = and i32 %117, 255, !dbg !2568
  %and4.off.i453 = add nsw i32 %and4.i452, -9, !dbg !2568
  %switch.i454 = icmp ult i32 %and4.off.i453, 2, !dbg !2568
  br i1 %switch.i454, label %land.lhs.true24.i459, label %Perl_do_close.exit468, !dbg !2568

land.lhs.true24.i459:                             ; preds = %land.lhs.true.i455
  %sv_u.i457 = getelementptr inbounds %struct.gv, ptr %spec.select.i446, i64 0, i32 3, !dbg !2569
  %118 = load ptr, ptr %sv_u.i457, align 8, !dbg !2569
  %tobool25.not.i458 = icmp eq ptr %118, null, !dbg !2569
  br i1 %tobool25.not.i458, label %Perl_do_close.exit468, label %cond.end.i462, !dbg !2569

cond.end.i462:                                    ; preds = %land.lhs.true24.i459
  %gp_io.i460 = getelementptr inbounds %struct.gp, ptr %118, i64 0, i32 1, !dbg !2569
  %119 = load ptr, ptr %gp_io.i460, align 8, !dbg !2569
  call void @llvm.dbg.value(metadata ptr %119, metadata !2407, metadata !DIExpression()) #11, !dbg !2561
  %tobool28.not.i461 = icmp eq ptr %119, null, !dbg !2570
  br i1 %tobool28.not.i461, label %Perl_do_close.exit468, label %if.end34.i465, !dbg !2571

if.end34.i465:                                    ; preds = %cond.end.i462
  %call36.i464 = call zeroext i1 @Perl_io_close(ptr noundef nonnull %119, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11, !dbg !2572
  call void @llvm.dbg.value(metadata i1 %call36.i464, metadata !2406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2561
  %120 = load ptr, ptr %119, align 8, !dbg !2573
  %xio_type.i466 = getelementptr inbounds %struct.xpvio, ptr %120, i64 0, i32 16, !dbg !2573
  store i8 32, ptr %xio_type.i466, align 8, !dbg !2574
  br label %Perl_do_close.exit468, !dbg !2575

Perl_do_close.exit468:                            ; preds = %land.lhs.true24.i459, %cond.end.i462, %if.then288, %lor.lhs.false.i451, %land.lhs.true.i455, %if.end34.i465
  br i1 %tobool1.not, label %if.end306, label %land.lhs.true291, !dbg !2576

land.lhs.true291:                                 ; preds = %Perl_do_close.exit468
  %121 = load ptr, ptr %1, align 8, !dbg !2577
  %xio_flags293 = getelementptr inbounds %struct.xpvio, ptr %121, i64 0, i32 17, !dbg !2577
  %122 = load i8, ptr %xio_flags293, align 1, !dbg !2577
  %123 = and i8 %122, 1, !dbg !2578
  %tobool296 = icmp ne i8 %123, 0, !dbg !2578
  %124 = load ptr, ptr @PL_argvout_stack, align 8
  %tobool298 = icmp ne ptr %124, null
  %or.cond = select i1 %tobool296, i1 %tobool298, i1 false, !dbg !2579
  br i1 %or.cond, label %land.lhs.true299, label %if.end306, !dbg !2579

land.lhs.true299:                                 ; preds = %land.lhs.true291
  %125 = load ptr, ptr %124, align 8, !dbg !2580
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %125, i64 0, i32 2, !dbg !2580
  %126 = load i64, ptr %xav_fill, align 8, !dbg !2580
  %cmp301 = icmp sgt i64 %126, -1, !dbg !2581
  br i1 %cmp301, label %if.then303, label %if.end306, !dbg !2582

if.then303:                                       ; preds = %land.lhs.true299
  %call304 = call ptr @Perl_av_pop(ptr noundef nonnull %124) #11, !dbg !2583
  call void @llvm.dbg.value(metadata ptr %call304, metadata !2272, metadata !DIExpression()), !dbg !2584
  call void @Perl_setdefout(ptr noundef %call304) #11, !dbg !2585
  call void @llvm.dbg.value(metadata ptr %call304, metadata !2586, metadata !DIExpression()) #11, !dbg !2592
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %call304, i64 0, i32 1, !dbg !2594
  %127 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %127, metadata !2591, metadata !DIExpression()) #11, !dbg !2592
  %cmp.i469 = icmp ugt i32 %127, 1, !dbg !2595
  br i1 %cmp.i469, label %if.then.i, label %if.else.i, !dbg !2597

if.then.i:                                        ; preds = %if.then303
  %sub.i = add i32 %127, -1, !dbg !2598
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !2599
  br label %cleanup309, !dbg !2600

if.else.i:                                        ; preds = %if.then303
  call void @Perl_sv_free2(ptr noundef nonnull %call304, i32 noundef %127) #11, !dbg !2601
  br label %cleanup309

if.end306:                                        ; preds = %land.lhs.true299, %land.lhs.true291, %Perl_do_close.exit468
  %call307 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.15, i64 noundef 6, i32 noundef 129, i32 noundef 15) #11, !dbg !2602
  call void @Perl_setdefout(ptr noundef %call307) #11, !dbg !2602
  br label %cleanup309, !dbg !2603

cleanup309:                                       ; preds = %if.else.i, %if.then.i, %cleanup270.thread, %if.end286, %if.end306, %if.end45
  %retval.3 = phi ptr [ null, %if.end45 ], [ null, %if.end306 ], [ null, %if.end286 ], [ %retval.2.ph, %cleanup270.thread ], [ null, %if.then.i ], [ null, %if.else.i ], !dbg !2277
  ret ptr %retval.3, !dbg !2604
}

declare !dbg !2605 void @Perl_av_create_and_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2610 ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !2613 noundef i32 @chmod(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

declare !dbg !2616 ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #2

declare !dbg !2619 void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

declare !dbg !2622 void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2625 i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

declare !dbg !2628 void @Perl_setdefout(ptr noundef) local_unnamed_addr #2

declare !dbg !2631 void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_close(ptr noundef %gv, i1 noundef zeroext %not_implicit) local_unnamed_addr #0 !dbg !2401 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2405, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i1 %not_implicit, metadata !2400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2632
  %tobool.not = icmp eq ptr %gv, null, !dbg !2633
  %0 = load ptr, ptr @PL_argvgv, align 8
  %spec.select = select i1 %tobool.not, ptr %0, ptr %gv, !dbg !2634
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2405, metadata !DIExpression()), !dbg !2632
  %tobool2.not = icmp eq ptr %spec.select, null, !dbg !2635
  br i1 %tobool2.not, label %if.then10, label %lor.lhs.false, !dbg !2636

lor.lhs.false:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.gv, ptr %spec.select, i64 0, i32 2, !dbg !2637
  %1 = load i32, ptr %sv_flags, align 4, !dbg !2637
  %and = and i32 %1, 49152, !dbg !2637
  %cmp = icmp eq i32 %and, 32768, !dbg !2637
  br i1 %cmp, label %land.lhs.true, label %if.then10, !dbg !2637

land.lhs.true:                                    ; preds = %lor.lhs.false
  %and4 = and i32 %1, 255, !dbg !2637
  %and4.off = add nsw i32 %and4, -9, !dbg !2637
  %switch = icmp ult i32 %and4.off, 2, !dbg !2637
  br i1 %switch, label %land.lhs.true24, label %if.then10, !dbg !2637

if.then10:                                        ; preds = %land.lhs.true, %lor.lhs.false, %entry
  br i1 %not_implicit, label %if.then12, label %cleanup, !dbg !2638

if.then12:                                        ; preds = %if.then10
  %call = tail call ptr @__errno_location() #13, !dbg !2640
  store i32 9, ptr %call, align 4, !dbg !2640
  br label %cleanup, !dbg !2640

land.lhs.true24:                                  ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.gv, ptr %spec.select, i64 0, i32 3, !dbg !2642
  %2 = load ptr, ptr %sv_u, align 8, !dbg !2642
  %tobool25.not = icmp eq ptr %2, null, !dbg !2642
  br i1 %tobool25.not, label %if.then29, label %cond.end, !dbg !2642

cond.end:                                         ; preds = %land.lhs.true24
  %gp_io = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 1, !dbg !2642
  %3 = load ptr, ptr %gp_io, align 8, !dbg !2642
  call void @llvm.dbg.value(metadata ptr %3, metadata !2407, metadata !DIExpression()), !dbg !2632
  %tobool28.not = icmp eq ptr %3, null, !dbg !2643
  br i1 %tobool28.not, label %if.then29, label %if.end34, !dbg !2644

if.then29:                                        ; preds = %land.lhs.true24, %cond.end
  br i1 %not_implicit, label %if.then31, label %cleanup, !dbg !2645

if.then31:                                        ; preds = %if.then29
  tail call void @Perl_report_evil_fh(ptr noundef nonnull %spec.select) #11, !dbg !2647
  %call32 = tail call ptr @__errno_location() #13, !dbg !2650
  store i32 9, ptr %call32, align 4, !dbg !2650
  br label %cleanup, !dbg !2651

if.end34:                                         ; preds = %cond.end
  %call36 = tail call zeroext i1 @Perl_io_close(ptr noundef nonnull %3, ptr noundef null, i1 noundef zeroext %not_implicit, i1 noundef zeroext false), !dbg !2652
  call void @llvm.dbg.value(metadata i1 %call36, metadata !2406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2632
  br i1 %not_implicit, label %if.then39, label %if.end43, !dbg !2653

if.then39:                                        ; preds = %if.end34
  %4 = load ptr, ptr %3, align 8, !dbg !2654
  %xiv_u = getelementptr inbounds %struct.xpvio, ptr %4, i64 0, i32 4, !dbg !2654
  store i64 0, ptr %xiv_u, align 8, !dbg !2657
  %5 = load ptr, ptr %3, align 8, !dbg !2658
  %xio_page = getelementptr inbounds %struct.xpvio, ptr %5, i64 0, i32 7, !dbg !2658
  store i64 0, ptr %xio_page, align 8, !dbg !2659
  %6 = load ptr, ptr %3, align 8, !dbg !2660
  %xio_page_len = getelementptr inbounds %struct.xpvio, ptr %6, i64 0, i32 8, !dbg !2660
  %7 = load i64, ptr %xio_page_len, align 8, !dbg !2660
  %xio_lines_left = getelementptr inbounds %struct.xpvio, ptr %6, i64 0, i32 9, !dbg !2661
  store i64 %7, ptr %xio_lines_left, align 8, !dbg !2662
  br label %if.end43, !dbg !2663

if.end43:                                         ; preds = %if.then39, %if.end34
  %8 = load ptr, ptr %3, align 8, !dbg !2664
  %xio_type = getelementptr inbounds %struct.xpvio, ptr %8, i64 0, i32 16, !dbg !2664
  store i8 32, ptr %xio_type, align 8, !dbg !2665
  br label %cleanup, !dbg !2666

cleanup:                                          ; preds = %if.then29, %if.then31, %if.then10, %if.then12, %if.end43
  %retval.0 = phi i1 [ %call36, %if.end43 ], [ false, %if.then12 ], [ false, %if.then10 ], [ false, %if.then31 ], [ false, %if.then29 ], !dbg !2632
  ret i1 %retval.0, !dbg !2667
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

declare !dbg !2668 void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2671 void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2674 void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !2677 noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2680 i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

declare !dbg !2683 zeroext i1 @Perl_ckwarn_d(i32 noundef) local_unnamed_addr #2

declare !dbg !2684 ptr @Perl_av_pop(ptr noundef) local_unnamed_addr #2

declare !dbg !2685 void @Perl_report_evil_fh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_io_close(ptr nocapture noundef %io, ptr noundef readonly %gv, i1 noundef zeroext %not_implicit, i1 noundef zeroext %warn_on_fail) local_unnamed_addr #0 !dbg !2688 {
entry:
  call void @llvm.dbg.value(metadata ptr %io, metadata !2692, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2693, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i1 %not_implicit, metadata !2694, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2710
  call void @llvm.dbg.value(metadata i1 %warn_on_fail, metadata !2695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2710
  call void @llvm.dbg.value(metadata i8 0, metadata !2696, metadata !DIExpression()), !dbg !2710
  %sv_u = getelementptr inbounds %struct.io, ptr %io, i64 0, i32 3, !dbg !2711
  %0 = load ptr, ptr %sv_u, align 8, !dbg !2711
  %tobool.not = icmp eq ptr %0, null, !dbg !2711
  br i1 %tobool.not, label %if.else107, label %if.then, !dbg !2712

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %io, align 8, !dbg !2713
  %xio_type = getelementptr inbounds %struct.xpvio, ptr %1, i64 0, i32 16, !dbg !2713
  %2 = load i8, ptr %xio_type, align 8, !dbg !2713
  switch i8 %2, label %if.else41 [
    i8 124, label %if.then4
    i8 45, label %if.end90.thread
  ], !dbg !2714

if.end90.thread:                                  ; preds = %if.then
  call void @llvm.dbg.value(metadata i1 %retval2.1.in, metadata !2696, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2710
  store ptr null, ptr %sv_u, align 8, !dbg !2715
  %xio_ofp93142 = getelementptr inbounds %struct.xpvio, ptr %1, i64 0, i32 5, !dbg !2716
  store ptr null, ptr %xio_ofp93142, align 8, !dbg !2717
  br label %if.end112, !dbg !2718

if.then4:                                         ; preds = %if.then
  %call = tail call i32 @Perl_my_pclose(ptr noundef nonnull %0) #11, !dbg !2720
  call void @llvm.dbg.value(metadata i32 %call, metadata !2697, metadata !DIExpression()), !dbg !2721
  br i1 %not_implicit, label %do.body, label %if.else29, !dbg !2722

do.body:                                          ; preds = %if.then4
  store i32 %call, ptr @PL_statusvalue_posix, align 4, !dbg !2723
  %cmp8 = icmp eq i32 %call, -1, !dbg !2727
  br i1 %cmp8, label %do.end, label %if.else, !dbg !2723

if.else:                                          ; preds = %do.body
  %and = and i32 %call, 127, !dbg !2729
  %cmp11 = icmp eq i32 %and, 0, !dbg !2729
  %3 = and i32 %call, 65280
  %spec.select = select i1 %cmp11, i32 %3, i32 0, !dbg !2729
  %conv15 = shl nuw nsw i32 %and, 24, !dbg !2729
  %sext = add nuw i32 %conv15, 16777216, !dbg !2729
  %cmp18 = icmp sgt i32 %sext, 33554431, !dbg !2729
  %spec.select140 = select i1 %cmp18, i32 %and, i32 0, !dbg !2729
  %or = or i32 %spec.select140, %spec.select, !dbg !2729
  br label %do.end

do.end:                                           ; preds = %do.body, %if.else
  %storemerge = phi i32 [ %or, %if.else ], [ -1, %do.body ], !dbg !2731
  store i32 %storemerge, ptr @PL_statusvalue, align 4, !dbg !2731
  %cmp26 = icmp eq i32 %storemerge, 0, !dbg !2732
  call void @llvm.dbg.value(metadata i1 %cmp26, metadata !2696, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2710
  br label %if.end90, !dbg !2733

if.else29:                                        ; preds = %if.then4
  %cmp30 = icmp ne i32 %call, -1, !dbg !2734
  call void @llvm.dbg.value(metadata i1 %cmp30, metadata !2696, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2710
  br label %if.end90

if.else41:                                        ; preds = %if.then
  %xio_ofp = getelementptr inbounds %struct.xpvio, ptr %1, i64 0, i32 5, !dbg !2736
  %4 = load ptr, ptr %xio_ofp, align 8, !dbg !2736
  %tobool43.not = icmp eq ptr %4, null, !dbg !2736
  %cmp47.not = icmp eq ptr %4, %0
  %or.cond = select i1 %tobool43.not, i1 true, i1 %cmp47.not, !dbg !2737
  br i1 %or.cond, label %if.else69, label %if.then49, !dbg !2737

if.then49:                                        ; preds = %if.else41
  %call52 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %4) #11, !dbg !2738
  %tobool53.not = icmp eq i32 %call52, 0, !dbg !2738
  call void @llvm.dbg.value(metadata i1 %tobool53.not, metadata !2702, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2739
  br i1 %tobool53.not, label %if.end59, label %if.then56, !dbg !2740

if.then56:                                        ; preds = %if.then49
  %5 = load ptr, ptr %io, align 8, !dbg !2741
  %xio_ofp58 = getelementptr inbounds %struct.xpvio, ptr %5, i64 0, i32 5, !dbg !2741
  %6 = load ptr, ptr %xio_ofp58, align 8, !dbg !2741
  tail call void @Perl_PerlIO_restore_errno(ptr noundef %6) #11, !dbg !2741
  br label %if.end59, !dbg !2741

if.end59:                                         ; preds = %if.then56, %if.then49
  %7 = load ptr, ptr %io, align 8, !dbg !2743
  %xio_ofp61 = getelementptr inbounds %struct.xpvio, ptr %7, i64 0, i32 5, !dbg !2743
  %8 = load ptr, ptr %xio_ofp61, align 8, !dbg !2743
  %call62 = tail call i32 @Perl_PerlIO_close(ptr noundef %8) #11, !dbg !2743
  %cmp63.not = icmp ne i32 %call62, -1, !dbg !2744
  %narrow = select i1 %cmp63.not, i1 %tobool53.not, i1 false, !dbg !2745
  call void @llvm.dbg.value(metadata i1 %narrow, metadata !2696, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2710
  %9 = load ptr, ptr %sv_u, align 8, !dbg !2746
  %call68 = tail call i32 @Perl_PerlIO_close(ptr noundef %9) #11, !dbg !2746
  br label %if.end90, !dbg !2747

if.else69:                                        ; preds = %if.else41
  %call72 = tail call i32 @Perl_PerlIO_error(ptr noundef nonnull %0) #11, !dbg !2748
  %tobool73.not = icmp eq i32 %call72, 0, !dbg !2748
  call void @llvm.dbg.value(metadata i1 %tobool73.not, metadata !2708, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2749
  br i1 %tobool73.not, label %if.end78, label %if.then76, !dbg !2750

if.then76:                                        ; preds = %if.else69
  %10 = load ptr, ptr %sv_u, align 8, !dbg !2751
  tail call void @Perl_PerlIO_restore_errno(ptr noundef %10) #11, !dbg !2751
  br label %if.end78, !dbg !2751

if.end78:                                         ; preds = %if.then76, %if.else69
  %11 = load ptr, ptr %sv_u, align 8, !dbg !2753
  %call80 = tail call i32 @Perl_PerlIO_close(ptr noundef %11) #11, !dbg !2753
  %cmp81.not = icmp ne i32 %call80, -1, !dbg !2754
  %narrow145 = select i1 %cmp81.not, i1 %tobool73.not, i1 false, !dbg !2755
  call void @llvm.dbg.value(metadata i1 %narrow145, metadata !2696, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2710
  br label %if.end90

if.end90:                                         ; preds = %do.end, %if.else29, %if.end78, %if.end59
  %retval2.1.in = phi i1 [ %narrow, %if.end59 ], [ %narrow145, %if.end78 ], [ %cmp26, %do.end ], [ %cmp30, %if.else29 ]
  call void @llvm.dbg.value(metadata i1 %retval2.1.in, metadata !2696, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2710
  store ptr null, ptr %sv_u, align 8, !dbg !2715
  %12 = load ptr, ptr %io, align 8, !dbg !2716
  %xio_ofp93 = getelementptr inbounds %struct.xpvio, ptr %12, i64 0, i32 5, !dbg !2716
  store ptr null, ptr %xio_ofp93, align 8, !dbg !2717
  %tobool97.not = xor i1 %retval2.1.in, true
  %or.cond139 = select i1 %warn_on_fail, i1 %tobool97.not, i1 false, !dbg !2718
  br i1 %or.cond139, label %if.then98, label %if.end112, !dbg !2718

if.then98:                                        ; preds = %if.end90
  %tobool99.not = icmp eq ptr %gv, null, !dbg !2756
  br i1 %tobool99.not, label %if.else103, label %if.then100, !dbg !2759

if.then100:                                       ; preds = %if.then98
  %13 = load ptr, ptr %gv, align 8, !dbg !2760
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %13, i64 0, i32 4, !dbg !2760
  %14 = load ptr, ptr %xiv_u, align 8, !dbg !2760
  %call102 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 1) #11, !dbg !2761
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 5, ptr noundef nonnull @.str.22, ptr noundef %14, ptr noundef %call102) #11, !dbg !2762
  br label %if.end112, !dbg !2762

if.else103:                                       ; preds = %if.then98
  %call104 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.23, i32 noundef 1) #11, !dbg !2763
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef %call104) #11, !dbg !2764
  br label %if.end112

if.else107:                                       ; preds = %entry
  br i1 %not_implicit, label %if.then109, label %if.end112, !dbg !2765

if.then109:                                       ; preds = %if.else107
  %call110 = tail call ptr @__errno_location() #13, !dbg !2766
  store i32 9, ptr %call110, align 4, !dbg !2766
  br label %if.end112, !dbg !2769

if.end112:                                        ; preds = %if.end90.thread, %if.else107, %if.then109, %if.end90, %if.else103, %if.then100
  %retval2.2.shrunk = phi i1 [ %retval2.1.in, %if.then100 ], [ %retval2.1.in, %if.else103 ], [ %retval2.1.in, %if.end90 ], [ false, %if.then109 ], [ false, %if.else107 ], [ true, %if.end90.thread ]
  call void @llvm.dbg.value(metadata i1 %retval2.2.shrunk, metadata !2696, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2710
  ret i1 %retval2.2.shrunk, !dbg !2770
}

declare !dbg !2771 i32 @Perl_my_pclose(ptr noundef) local_unnamed_addr #2

declare !dbg !2774 i32 @Perl_PerlIO_error(ptr noundef) local_unnamed_addr #2

declare !dbg !2775 void @Perl_PerlIO_restore_errno(ptr noundef) local_unnamed_addr #2

declare !dbg !2778 i32 @Perl_PerlIO_close(ptr noundef) local_unnamed_addr #2

declare !dbg !2779 ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_eof(ptr noundef %gv) local_unnamed_addr #0 !dbg !2782 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2786, metadata !DIExpression()), !dbg !2792
  %tobool.not = icmp eq ptr %gv, null, !dbg !2793
  br i1 %tobool.not, label %cleanup66, label %land.lhs.true, !dbg !2793

land.lhs.true:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %gv, i64 0, i32 2, !dbg !2793
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2793
  %and = and i32 %0, 255, !dbg !2793
  %and.off = add nsw i32 %and, -9, !dbg !2793
  %switch = icmp ult i32 %and.off, 2, !dbg !2793
  br i1 %switch, label %land.lhs.true4, label %cleanup66, !dbg !2793

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2793
  %1 = load ptr, ptr %sv_u, align 8, !dbg !2793
  %tobool5.not = icmp eq ptr %1, null, !dbg !2793
  br i1 %tobool5.not, label %cleanup66, label %cond.end, !dbg !2793

cond.end:                                         ; preds = %land.lhs.true4
  %gp_io = getelementptr inbounds %struct.gp, ptr %1, i64 0, i32 1, !dbg !2793
  %2 = load ptr, ptr %gp_io, align 8, !dbg !2793
  call void @llvm.dbg.value(metadata ptr %2, metadata !2787, metadata !DIExpression()), !dbg !2792
  %tobool8.not = icmp eq ptr %2, null, !dbg !2794
  br i1 %tobool8.not, label %cleanup66, label %if.else, !dbg !2796

if.else:                                          ; preds = %cond.end
  %3 = load ptr, ptr %2, align 8, !dbg !2797
  %xio_type = getelementptr inbounds %struct.xpvio, ptr %3, i64 0, i32 16, !dbg !2797
  %4 = load i8, ptr %xio_type, align 8, !dbg !2797
  %cmp9 = icmp eq i8 %4, 62, !dbg !2799
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !2800

if.then11:                                        ; preds = %if.else
  tail call void @Perl_report_wrongway_fh(ptr noundef nonnull %gv, i8 noundef signext 62) #11, !dbg !2801
  br label %if.end12, !dbg !2801

if.end12:                                         ; preds = %if.else, %if.then11
  %sv_u13 = getelementptr inbounds %struct.io, ptr %2, i64 0, i32 3
  br label %while.cond, !dbg !2802

while.cond:                                       ; preds = %lor.lhs.false59, %if.end12
  %5 = load ptr, ptr %sv_u13, align 8, !dbg !2803
  %tobool14.not = icmp eq ptr %5, null, !dbg !2802
  br i1 %tobool14.not, label %cleanup66, label %while.body, !dbg !2802

while.body:                                       ; preds = %while.cond
  %call = tail call i32 @PerlIO_has_cntptr(ptr noundef nonnull %5) #11, !dbg !2804
  %tobool16.not = icmp eq i32 %call, 0, !dbg !2804
  br i1 %tobool16.not, label %if.end24, label %if.then17, !dbg !2806

if.then17:                                        ; preds = %while.body
  %6 = load ptr, ptr %sv_u13, align 8, !dbg !2807
  %call19 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %6) #11, !dbg !2807
  %cmp20 = icmp sgt i64 %call19, 0, !dbg !2810
  br i1 %cmp20, label %cleanup66, label %if.end24, !dbg !2811

if.end24:                                         ; preds = %if.then17, %while.body
  %call25 = tail call ptr @__errno_location() #13, !dbg !2812
  %7 = load i32, ptr %call25, align 4, !dbg !2812
  call void @llvm.dbg.value(metadata i32 %7, metadata !2788, metadata !DIExpression()), !dbg !2813
  %8 = load ptr, ptr %sv_u13, align 8, !dbg !2814
  %call27 = tail call i32 @PerlIO_getc(ptr noundef %8) #11, !dbg !2815
  call void @llvm.dbg.value(metadata i32 %call27, metadata !2791, metadata !DIExpression()), !dbg !2813
  %cmp28.not = icmp eq i32 %call27, -1, !dbg !2816
  br i1 %cmp28.not, label %cleanup.cont.critedge, label %if.then30, !dbg !2818

if.then30:                                        ; preds = %if.end24
  %9 = load ptr, ptr %sv_u13, align 8, !dbg !2819
  %call32 = tail call i32 @PerlIO_ungetc(ptr noundef %9, i32 noundef %call27) #11, !dbg !2821
  store i32 %7, ptr %call25, align 4, !dbg !2813
  br label %cleanup66

cleanup.cont.critedge:                            ; preds = %if.end24
  store i32 %7, ptr %call25, align 4, !dbg !2813
  %10 = load ptr, ptr %sv_u13, align 8, !dbg !2822
  %call38 = tail call i32 @PerlIO_has_cntptr(ptr noundef %10) #11, !dbg !2824
  %tobool39.not = icmp eq i32 %call38, 0, !dbg !2824
  br i1 %tobool39.not, label %if.end52, label %land.lhs.true40, !dbg !2825

land.lhs.true40:                                  ; preds = %cleanup.cont.critedge
  %11 = load ptr, ptr %sv_u13, align 8, !dbg !2826
  %call42 = tail call i32 @PerlIO_canset_cnt(ptr noundef %11) #11, !dbg !2827
  %tobool43.not = icmp eq i32 %call42, 0, !dbg !2827
  br i1 %tobool43.not, label %if.end52, label %if.then44, !dbg !2828

if.then44:                                        ; preds = %land.lhs.true40
  %12 = load ptr, ptr %sv_u13, align 8, !dbg !2829
  %call46 = tail call i64 @Perl_PerlIO_get_cnt(ptr noundef %12) #11, !dbg !2829
  %cmp47 = icmp slt i64 %call46, -1, !dbg !2832
  br i1 %cmp47, label %if.then49, label %if.end52, !dbg !2833

if.then49:                                        ; preds = %if.then44
  %13 = load ptr, ptr %sv_u13, align 8, !dbg !2834
  tail call void @Perl_PerlIO_set_cnt(ptr noundef %13, i64 noundef -1) #11, !dbg !2834
  br label %if.end52, !dbg !2834

if.end52:                                         ; preds = %if.then44, %if.then49, %land.lhs.true40, %cleanup.cont.critedge
  %14 = load ptr, ptr @PL_op, align 8, !dbg !2835
  %op_flags = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 5, !dbg !2837
  %15 = load i8, ptr %op_flags, align 2, !dbg !2837
  %tobool55.not = icmp slt i8 %15, 0, !dbg !2838
  %16 = load ptr, ptr @PL_argvgv, align 8
  %cmp57.not = icmp eq ptr %16, %gv
  %or.cond = select i1 %tobool55.not, i1 %cmp57.not, i1 false, !dbg !2839
  br i1 %or.cond, label %lor.lhs.false59, label %cleanup66, !dbg !2839

lor.lhs.false59:                                  ; preds = %if.end52
  %call60 = tail call ptr @Perl_nextargv(ptr noundef nonnull %gv, i1 noundef zeroext false), !dbg !2840
  %tobool61.not = icmp eq ptr %call60, null, !dbg !2840
  br i1 %tobool61.not, label %cleanup66, label %while.cond, !dbg !2843, !llvm.loop !2844

cleanup66:                                        ; preds = %while.cond, %if.end52, %lor.lhs.false59, %if.then17, %land.lhs.true, %entry, %land.lhs.true4, %if.then30, %cond.end
  %retval.2 = phi i1 [ false, %if.then30 ], [ true, %cond.end ], [ true, %land.lhs.true4 ], [ true, %entry ], [ true, %land.lhs.true ], [ true, %while.cond ], [ true, %if.end52 ], [ true, %lor.lhs.false59 ], [ false, %if.then17 ], !dbg !2792
  ret i1 %retval.2, !dbg !2846
}

declare !dbg !2847 void @Perl_report_wrongway_fh(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare !dbg !2850 i32 @PerlIO_has_cntptr(ptr noundef) local_unnamed_addr #2

declare !dbg !2851 i64 @Perl_PerlIO_get_cnt(ptr noundef) local_unnamed_addr #2

declare !dbg !2854 i32 @PerlIO_getc(ptr noundef) local_unnamed_addr #2

declare !dbg !2855 i32 @PerlIO_ungetc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2858 i32 @PerlIO_canset_cnt(ptr noundef) local_unnamed_addr #2

declare !dbg !2859 void @Perl_PerlIO_set_cnt(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_do_tell(ptr noundef %gv) local_unnamed_addr #0 !dbg !2862 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2866, metadata !DIExpression()), !dbg !2869
  %tobool.not = icmp eq ptr %gv, null, !dbg !2870
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !2870

land.lhs.true:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %gv, i64 0, i32 2, !dbg !2870
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2870
  %and = and i32 %0, 255, !dbg !2870
  %and.off = add nsw i32 %and, -9, !dbg !2870
  %switch = icmp ult i32 %and.off, 2, !dbg !2870
  br i1 %switch, label %land.lhs.true4, label %if.end, !dbg !2870

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2870
  %1 = load ptr, ptr %sv_u, align 8, !dbg !2870
  %tobool5.not = icmp eq ptr %1, null, !dbg !2870
  br i1 %tobool5.not, label %if.end, label %cond.end, !dbg !2870

cond.end:                                         ; preds = %land.lhs.true4
  %gp_io = getelementptr inbounds %struct.gp, ptr %1, i64 0, i32 1, !dbg !2870
  %2 = load ptr, ptr %gp_io, align 8, !dbg !2870
  call void @llvm.dbg.value(metadata ptr %2, metadata !2867, metadata !DIExpression()), !dbg !2869
  %tobool8.not = icmp eq ptr %2, null, !dbg !2871
  br i1 %tobool8.not, label %if.end, label %land.lhs.true9, !dbg !2873

land.lhs.true9:                                   ; preds = %cond.end
  %sv_u10 = getelementptr inbounds %struct.io, ptr %2, i64 0, i32 3, !dbg !2874
  %3 = load ptr, ptr %sv_u10, align 8, !dbg !2874
  call void @llvm.dbg.value(metadata ptr %3, metadata !2868, metadata !DIExpression()), !dbg !2869
  %tobool11.not = icmp eq ptr %3, null, !dbg !2875
  br i1 %tobool11.not, label %if.end, label %if.then, !dbg !2876

if.then:                                          ; preds = %land.lhs.true9
  %call = tail call i64 @Perl_PerlIO_tell(ptr noundef nonnull %3) #11, !dbg !2877
  br label %cleanup, !dbg !2879

if.end:                                           ; preds = %land.lhs.true, %entry, %land.lhs.true4, %land.lhs.true9, %cond.end
  tail call void @Perl_report_evil_fh(ptr noundef %gv) #11, !dbg !2880
  %call12 = tail call ptr @__errno_location() #13, !dbg !2881
  store i32 9, ptr %call12, align 4, !dbg !2881
  br label %cleanup, !dbg !2882

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i64 [ %call, %if.then ], [ -1, %if.end ], !dbg !2869
  ret i64 %retval.0, !dbg !2883
}

declare !dbg !2884 i64 @Perl_PerlIO_tell(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_seek(ptr noundef %gv, i64 noundef %pos, i32 noundef %whence) local_unnamed_addr #0 !dbg !2887 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2891, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i64 %pos, metadata !2892, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i32 %whence, metadata !2893, metadata !DIExpression()), !dbg !2896
  %tobool.not = icmp eq ptr %gv, null, !dbg !2897
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !2897

land.lhs.true:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %gv, i64 0, i32 2, !dbg !2897
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2897
  %and = and i32 %0, 255, !dbg !2897
  %and.off = add nsw i32 %and, -9, !dbg !2897
  %switch = icmp ult i32 %and.off, 2, !dbg !2897
  br i1 %switch, label %land.lhs.true4, label %if.end, !dbg !2897

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2897
  %1 = load ptr, ptr %sv_u, align 8, !dbg !2897
  %tobool5.not = icmp eq ptr %1, null, !dbg !2897
  br i1 %tobool5.not, label %if.end, label %cond.end, !dbg !2897

cond.end:                                         ; preds = %land.lhs.true4
  %gp_io = getelementptr inbounds %struct.gp, ptr %1, i64 0, i32 1, !dbg !2897
  %2 = load ptr, ptr %gp_io, align 8, !dbg !2897
  call void @llvm.dbg.value(metadata ptr %2, metadata !2894, metadata !DIExpression()), !dbg !2896
  %tobool8.not = icmp eq ptr %2, null, !dbg !2898
  br i1 %tobool8.not, label %if.end, label %land.lhs.true9, !dbg !2900

land.lhs.true9:                                   ; preds = %cond.end
  %sv_u10 = getelementptr inbounds %struct.io, ptr %2, i64 0, i32 3, !dbg !2901
  %3 = load ptr, ptr %sv_u10, align 8, !dbg !2901
  call void @llvm.dbg.value(metadata ptr %3, metadata !2895, metadata !DIExpression()), !dbg !2896
  %tobool11.not = icmp eq ptr %3, null, !dbg !2902
  br i1 %tobool11.not, label %if.end, label %if.then, !dbg !2903

if.then:                                          ; preds = %land.lhs.true9
  %call = tail call i32 @Perl_PerlIO_seek(ptr noundef nonnull %3, i64 noundef %pos, i32 noundef %whence) #11, !dbg !2904
  %cmp12 = icmp sgt i32 %call, -1, !dbg !2906
  br label %cleanup, !dbg !2907

if.end:                                           ; preds = %land.lhs.true, %entry, %land.lhs.true4, %land.lhs.true9, %cond.end
  tail call void @Perl_report_evil_fh(ptr noundef %gv) #11, !dbg !2908
  %call13 = tail call ptr @__errno_location() #13, !dbg !2909
  store i32 9, ptr %call13, align 4, !dbg !2909
  br label %cleanup, !dbg !2910

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %cmp12, %if.then ], [ false, %if.end ], !dbg !2896
  ret i1 %retval.0, !dbg !2911
}

declare !dbg !2912 i32 @Perl_PerlIO_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_do_sysseek(ptr noundef %gv, i64 noundef %pos, i32 noundef %whence) local_unnamed_addr #0 !dbg !2915 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2919, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i64 %pos, metadata !2920, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.value(metadata i32 %whence, metadata !2921, metadata !DIExpression()), !dbg !2927
  %tobool.not = icmp eq ptr %gv, null, !dbg !2928
  br i1 %tobool.not, label %if.end15, label %land.lhs.true, !dbg !2928

land.lhs.true:                                    ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %gv, i64 0, i32 2, !dbg !2928
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2928
  %and = and i32 %0, 255, !dbg !2928
  %and.off = add nsw i32 %and, -9, !dbg !2928
  %switch = icmp ult i32 %and.off, 2, !dbg !2928
  br i1 %switch, label %land.lhs.true4, label %if.end15, !dbg !2928

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2928
  %1 = load ptr, ptr %sv_u, align 8, !dbg !2928
  %tobool5.not = icmp eq ptr %1, null, !dbg !2928
  br i1 %tobool5.not, label %if.end15, label %cond.end, !dbg !2928

cond.end:                                         ; preds = %land.lhs.true4
  %gp_io = getelementptr inbounds %struct.gp, ptr %1, i64 0, i32 1, !dbg !2928
  %2 = load ptr, ptr %gp_io, align 8, !dbg !2928
  call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !2927
  %tobool8.not = icmp eq ptr %2, null, !dbg !2929
  br i1 %tobool8.not, label %if.end15, label %land.lhs.true9, !dbg !2930

land.lhs.true9:                                   ; preds = %cond.end
  %sv_u10 = getelementptr inbounds %struct.io, ptr %2, i64 0, i32 3, !dbg !2931
  %3 = load ptr, ptr %sv_u10, align 8, !dbg !2931
  call void @llvm.dbg.value(metadata ptr %3, metadata !2923, metadata !DIExpression()), !dbg !2927
  %tobool11.not = icmp eq ptr %3, null, !dbg !2932
  br i1 %tobool11.not, label %if.end15, label %if.then, !dbg !2933

if.then:                                          ; preds = %land.lhs.true9
  %call = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %3) #11, !dbg !2934
  call void @llvm.dbg.value(metadata i32 %call, metadata !2924, metadata !DIExpression()), !dbg !2935
  %cmp12 = icmp sgt i32 %call, -1, !dbg !2936
  br i1 %cmp12, label %cleanup.thread, label %if.end15, !dbg !2938

cleanup.thread:                                   ; preds = %if.then
  %call14 = tail call i64 @lseek(i32 noundef %call, i64 noundef %pos, i32 noundef %whence) #11, !dbg !2939
  br label %cleanup17

if.end15:                                         ; preds = %land.lhs.true, %entry, %land.lhs.true4, %if.then, %land.lhs.true9, %cond.end
  tail call void @Perl_report_evil_fh(ptr noundef %gv) #11, !dbg !2941
  %call16 = tail call ptr @__errno_location() #13, !dbg !2942
  store i32 9, ptr %call16, align 4, !dbg !2942
  br label %cleanup17, !dbg !2943

cleanup17:                                        ; preds = %cleanup.thread, %if.end15
  %retval.1 = phi i64 [ -1, %if.end15 ], [ %call14, %cleanup.thread ], !dbg !2927
  ret i64 %retval.1, !dbg !2944
}

; Function Attrs: nounwind
declare !dbg !2945 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @Perl_mode_from_discipline(ptr noundef %s, i64 noundef %len) local_unnamed_addr #8 !dbg !2948 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !2952, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %len, metadata !2953, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 0, metadata !2954, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i32 0, metadata !2954, metadata !DIExpression()), !dbg !2963
  ret i32 0, !dbg !2964
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_print(ptr noundef %sv, ptr noundef %fp) local_unnamed_addr #0 !dbg !2965 {
entry:
  %len = alloca i64, align 8
  %tmplen = alloca i64, align 8
  %utf8 = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2969, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.value(metadata ptr %fp, metadata !2970, metadata !DIExpression()), !dbg !2985
  %tobool.not = icmp eq ptr %sv, null, !dbg !2986
  br i1 %tobool.not, label %return, label %if.end, !dbg !2988

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2989
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2989
  %1 = and i32 %0, 511, !dbg !2990
  %.not = icmp eq i32 %1, 257, !dbg !2990
  br i1 %.not, label %if.then4, label %if.else14, !dbg !2990

if.then4:                                         ; preds = %if.end
  %tobool7.not = icmp sgt i32 %0, -1, !dbg !2991
  %2 = load ptr, ptr %sv, align 8, !dbg !2994
  br i1 %tobool7.not, label %if.else, label %if.then8, !dbg !2995

if.then8:                                         ; preds = %if.then4
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %2, i64 0, i32 4, !dbg !2996
  br label %if.end11, !dbg !2997

if.else:                                          ; preds = %if.then4
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %2, i64 0, i32 4, !dbg !2998
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then8
  %xiv_u.sink = phi ptr [ %xiv_u, %if.else ], [ %xuv_u, %if.then8 ]
  %.str.26.sink = phi ptr [ @.str.26, %if.else ], [ @.str.25, %if.then8 ]
  %3 = load i64, ptr %xiv_u.sink, align 8, !dbg !2994
  %call10 = tail call i32 (ptr, ptr, ...) @PerlIO_printf(ptr noundef %fp, ptr noundef nonnull %.str.26.sink, i64 noundef %3) #11, !dbg !2994
  %call12 = tail call i32 @Perl_PerlIO_error(ptr noundef %fp) #11, !dbg !2999
  %tobool13.not = icmp eq i32 %call12, 0, !dbg !3000
  br label %return, !dbg !3001

if.else14:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #11, !dbg !3002
  %and16 = and i32 %0, 2098176, !dbg !3003
  %cmp17 = icmp eq i32 %and16, 1024, !dbg !3003
  br i1 %cmp17, label %cond.true, label %cond.false, !dbg !3003

cond.true:                                        ; preds = %if.else14
  %4 = load ptr, ptr %sv, align 8, !dbg !3003
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %4, i64 0, i32 2, !dbg !3003
  %5 = load i64, ptr %xpv_cur, align 8, !dbg !3003
  call void @llvm.dbg.value(metadata i64 %5, metadata !2971, metadata !DIExpression()), !dbg !3004
  store i64 %5, ptr %len, align 8, !dbg !3003
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !3003
  %6 = load ptr, ptr %sv_u, align 8, !dbg !3003
  br label %cond.end, !dbg !3003

cond.false:                                       ; preds = %if.else14
  call void @llvm.dbg.value(metadata ptr %len, metadata !2971, metadata !DIExpression(DW_OP_deref)), !dbg !3004
  %call19 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len, i32 noundef 34) #11, !dbg !3003
  br label %cond.end, !dbg !3003

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %call19, %cond.false ], !dbg !3003
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2974, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr null, metadata !2975, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i8 1, metadata !2977, metadata !DIExpression()), !dbg !3004
  %call20 = call i32 @PerlIO_isutf8(ptr noundef %fp) #11, !dbg !3005
  %tobool21.not = icmp eq i32 %call20, 0, !dbg !3005
  %7 = load i32, ptr %sv_flags, align 4, !dbg !3006
  %and36 = and i32 %7, 536870912, !dbg !3006
  %tobool37.not = icmp eq i32 %and36, 0, !dbg !3006
  br i1 %tobool21.not, label %if.else34, label %if.then22, !dbg !3007

if.then22:                                        ; preds = %cond.end
  br i1 %tobool37.not, label %if.then26, label %if.else28, !dbg !3008

if.then26:                                        ; preds = %if.then22
  call void @llvm.dbg.value(metadata ptr %len, metadata !2971, metadata !DIExpression(DW_OP_deref)), !dbg !3004
  %call27 = call ptr @Perl_bytes_to_utf8(ptr noundef %cond, ptr noundef nonnull %len) #11, !dbg !3010
  call void @llvm.dbg.value(metadata ptr %call27, metadata !2975, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %call27, metadata !2974, metadata !DIExpression()), !dbg !3004
  br label %if.end63, !dbg !3013

if.else28:                                        ; preds = %if.then22
  %call29 = call zeroext i1 @Perl_ckwarn_d(i32 noundef 825242156) #11, !dbg !3014
  br i1 %call29, label %if.then30, label %if.end63, !dbg !3016

if.then30:                                        ; preds = %if.else28
  %8 = load i64, ptr %len, align 8, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %8, metadata !2971, metadata !DIExpression()), !dbg !3004
  %call31 = call zeroext i1 @Perl_check_utf8_print(ptr noundef %cond, i64 noundef %8) #11, !dbg !3017
  br label %if.end63, !dbg !3019

if.else34:                                        ; preds = %cond.end
  br i1 %tobool37.not, label %if.end63, label %land.lhs.true38, !dbg !3020

land.lhs.true38:                                  ; preds = %if.else34
  %9 = load ptr, ptr @PL_curcop, align 8, !dbg !3020
  %cop_hints = getelementptr inbounds %struct.cop, ptr %9, i64 0, i32 10, !dbg !3020
  %10 = load i32, ptr %cop_hints, align 8, !dbg !3020
  %and39 = and i32 %10, 8, !dbg !3020
  %tobool40.not = icmp eq i32 %and39, 0, !dbg !3020
  br i1 %tobool40.not, label %if.then41, label %if.end63, !dbg !3021

if.then41:                                        ; preds = %land.lhs.true38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmplen) #11, !dbg !3022
  %11 = load i64, ptr %len, align 8, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %11, metadata !2971, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata i64 %11, metadata !2978, metadata !DIExpression()), !dbg !3024
  store i64 %11, ptr %tmplen, align 8, !dbg !3025
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %utf8) #11, !dbg !3026
  call void @llvm.dbg.value(metadata i8 1, metadata !2982, metadata !DIExpression()), !dbg !3024
  store i8 1, ptr %utf8, align 1, !dbg !3027
  call void @llvm.dbg.value(metadata ptr %tmplen, metadata !2978, metadata !DIExpression(DW_OP_deref)), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %utf8, metadata !2982, metadata !DIExpression(DW_OP_deref)), !dbg !3024
  %call42 = call ptr @Perl_bytes_from_utf8(ptr noundef %cond, ptr noundef nonnull %tmplen, ptr noundef nonnull %utf8) #11, !dbg !3028
  call void @llvm.dbg.value(metadata ptr %call42, metadata !2983, metadata !DIExpression()), !dbg !3024
  %12 = load i8, ptr %utf8, align 1, !dbg !3029, !range !1370
  call void @llvm.dbg.value(metadata i8 %12, metadata !2982, metadata !DIExpression()), !dbg !3024
  %tobool43.not = icmp eq i8 %12, 0, !dbg !3029
  br i1 %tobool43.not, label %if.then44, label %if.else45, !dbg !3031

if.then44:                                        ; preds = %if.then41
  call void @llvm.dbg.value(metadata ptr %call42, metadata !2975, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %call42, metadata !2974, metadata !DIExpression()), !dbg !3004
  %13 = load i64, ptr %tmplen, align 8, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %13, metadata !2978, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %13, metadata !2971, metadata !DIExpression()), !dbg !3004
  store i64 %13, ptr %len, align 8, !dbg !3034
  br label %if.end61, !dbg !3035

if.else45:                                        ; preds = %if.then41
  %14 = load ptr, ptr @PL_op, align 8, !dbg !3036
  %tobool46.not = icmp eq ptr %14, null, !dbg !3036
  br i1 %tobool46.not, label %cond.end59, label %cond.true47, !dbg !3036

cond.true47:                                      ; preds = %if.else45
  %op_type = getelementptr inbounds %struct.op, ptr %14, i64 0, i32 4, !dbg !3038
  %bf.load = load i16, ptr %op_type, align 8, !dbg !3038
  %bf.clear = and i16 %bf.load, 511, !dbg !3038
  %cmp48 = icmp eq i16 %bf.clear, 380, !dbg !3038
  br i1 %cmp48, label %cond.true49, label %cond.false51, !dbg !3038

cond.true49:                                      ; preds = %cond.true47
  %call50 = call ptr @Perl_custom_op_get_field(ptr noundef nonnull %14, i32 noundef 2) #11, !dbg !3038
  br label %cond.end59, !dbg !3038

cond.false51:                                     ; preds = %cond.true47
  %idxprom = zext i16 %bf.clear to i64, !dbg !3038
  %arrayidx = getelementptr inbounds [0 x ptr], ptr @PL_op_desc, i64 0, i64 %idxprom, !dbg !3038
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !3038
  br label %cond.end59, !dbg !3038

cond.end59:                                       ; preds = %if.else45, %cond.true49, %cond.false51
  %cond60 = phi ptr [ %call50, %cond.true49 ], [ %15, %cond.false51 ], [ @.str.28, %if.else45 ], !dbg !3036
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 44, ptr noundef nonnull @.str.27, ptr noundef %cond60) #11, !dbg !3039
  br label %if.end61

if.end61:                                         ; preds = %cond.end59, %if.then44
  %tmpbuf.0 = phi ptr [ null, %cond.end59 ], [ %call42, %if.then44 ], !dbg !3004
  %tmps.0 = phi ptr [ %cond, %cond.end59 ], [ %call42, %if.then44 ], !dbg !3004
  call void @llvm.dbg.value(metadata ptr %tmps.0, metadata !2974, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %tmpbuf.0, metadata !2975, metadata !DIExpression()), !dbg !3004
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %utf8) #11, !dbg !3040
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmplen) #11, !dbg !3040
  br label %if.end63, !dbg !3041

if.end63:                                         ; preds = %if.else34, %land.lhs.true38, %if.end61, %if.then26, %if.then30, %if.else28
  %tmpbuf.1 = phi ptr [ null, %if.then30 ], [ null, %if.else28 ], [ %call27, %if.then26 ], [ null, %land.lhs.true38 ], [ %tmpbuf.0, %if.end61 ], [ null, %if.else34 ], !dbg !3004
  %tmps.1 = phi ptr [ %cond, %if.then30 ], [ %cond, %if.else28 ], [ %call27, %if.then26 ], [ %cond, %land.lhs.true38 ], [ %tmps.0, %if.end61 ], [ %cond, %if.else34 ], !dbg !3004
  call void @llvm.dbg.value(metadata ptr %tmps.1, metadata !2974, metadata !DIExpression()), !dbg !3004
  call void @llvm.dbg.value(metadata ptr %tmpbuf.1, metadata !2975, metadata !DIExpression()), !dbg !3004
  %16 = load i64, ptr %len, align 8, !dbg !3042
  call void @llvm.dbg.value(metadata i64 %16, metadata !2971, metadata !DIExpression()), !dbg !3004
  %tobool64.not = icmp eq i64 %16, 0, !dbg !3042
  br i1 %tobool64.not, label %cond.true71.critedge, label %land.lhs.true65, !dbg !3044

land.lhs.true65:                                  ; preds = %if.end63
  %call66 = call i64 @Perl_PerlIO_write(ptr noundef %fp, ptr noundef %tmps.1, i64 noundef %16) #11, !dbg !3045
  %cmp67.not = icmp eq i64 %call66, 0, !dbg !3046
  call void @llvm.dbg.value(metadata i8 undef, metadata !2977, metadata !DIExpression()), !dbg !3004
  call void @Perl_safesysfree(ptr noundef %tmpbuf.1) #11, !dbg !3047
  br i1 %cmp67.not, label %cond.end76, label %cond.true71, !dbg !3048

cond.true71.critedge:                             ; preds = %if.end63
  call void @llvm.dbg.value(metadata i8 undef, metadata !2977, metadata !DIExpression()), !dbg !3004
  call void @Perl_safesysfree(ptr noundef %tmpbuf.1) #11, !dbg !3047
  br label %cond.true71, !dbg !3048

cond.true71:                                      ; preds = %cond.true71.critedge, %land.lhs.true65
  %call72 = call i32 @Perl_PerlIO_error(ptr noundef %fp) #11, !dbg !3049
  %tobool73.not = icmp eq i32 %call72, 0, !dbg !3050
  br label %cond.end76, !dbg !3048

cond.end76:                                       ; preds = %land.lhs.true65, %cond.true71
  %cond77 = phi i1 [ %tobool73.not, %cond.true71 ], [ false, %land.lhs.true65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #11, !dbg !3051
  br label %return

return:                                           ; preds = %entry, %cond.end76, %if.end11
  %retval.0 = phi i1 [ %tobool13.not, %if.end11 ], [ %cond77, %cond.end76 ], [ true, %entry ], !dbg !2985
  ret i1 %retval.0, !dbg !3052
}

declare !dbg !3053 i32 @PerlIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !3056 i32 @PerlIO_isutf8(ptr noundef) local_unnamed_addr #2

declare !dbg !3057 ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !3060 zeroext i1 @Perl_check_utf8_print(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !3063 ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !3066 ptr @Perl_custom_op_get_field(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !3093 i64 @Perl_PerlIO_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !3098 void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_my_stat_flags(i32 noundef %flags) local_unnamed_addr #0 !dbg !3099 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3101, metadata !DIExpression()), !dbg !3119
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !3120
  call void @llvm.dbg.value(metadata ptr %0, metadata !3102, metadata !DIExpression()), !dbg !3119
  %1 = load ptr, ptr @PL_op, align 8, !dbg !3121
  %op_flags = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 5, !dbg !3122
  %2 = load i8, ptr %op_flags, align 2, !dbg !3122
  %3 = and i8 %2, 16, !dbg !3123
  %tobool.not = icmp eq i8 %3, 0, !dbg !3123
  br i1 %tobool.not, label %if.else40, label %if.then, !dbg !3124

if.then:                                          ; preds = %entry
  %op_sv = getelementptr inbounds %struct.svop, ptr %1, i64 0, i32 7, !dbg !3125
  %4 = load ptr, ptr %op_sv, align 8, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %4, metadata !3104, metadata !DIExpression()), !dbg !3119
  br label %do_fstat, !dbg !3126

do_fstat:                                         ; preds = %cleanup163.thread, %if.then
  %gv.0 = phi ptr [ %4, %if.then ], [ %gv.2.ph, %cleanup163.thread ], !dbg !3127
  call void @llvm.dbg.value(metadata ptr %gv.0, metadata !3104, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.label(metadata !3117), !dbg !3128
  %5 = load ptr, ptr @PL_defgv, align 8, !dbg !3129
  %cmp = icmp eq ptr %gv.0, %5, !dbg !3131
  br i1 %cmp, label %if.then2, label %if.end, !dbg !3132

if.then2:                                         ; preds = %do_fstat
  %6 = load i32, ptr @PL_laststatval, align 4, !dbg !3133
  br label %cleanup166, !dbg !3134

if.end:                                           ; preds = %do_fstat
  %tobool3.not = icmp eq ptr %gv.0, null, !dbg !3135
  br i1 %tobool3.not, label %do_fstat_have_io, label %land.lhs.true, !dbg !3135

land.lhs.true:                                    ; preds = %if.end
  %sv_flags = getelementptr inbounds %struct.sv, ptr %gv.0, i64 0, i32 2, !dbg !3135
  %7 = load i32, ptr %sv_flags, align 4, !dbg !3135
  %and4 = and i32 %7, 255, !dbg !3135
  %and4.off = add nsw i32 %and4, -9, !dbg !3135
  %switch = icmp ult i32 %and4.off, 2, !dbg !3135
  br i1 %switch, label %land.lhs.true11, label %do_fstat_have_io, !dbg !3135

land.lhs.true11:                                  ; preds = %land.lhs.true
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv.0, i64 0, i32 3, !dbg !3135
  %8 = load ptr, ptr %sv_u, align 8, !dbg !3135
  %tobool12.not = icmp eq ptr %8, null, !dbg !3135
  br i1 %tobool12.not, label %do_fstat_have_io, label %cond.true, !dbg !3135

cond.true:                                        ; preds = %land.lhs.true11
  %gp_io = getelementptr inbounds %struct.gp, ptr %8, i64 0, i32 1, !dbg !3135
  %9 = load ptr, ptr %gp_io, align 8, !dbg !3135
  br label %do_fstat_have_io, !dbg !3135

do_fstat_have_io:                                 ; preds = %cleanup163, %land.lhs.true, %cond.true, %land.lhs.true11, %if.end
  %gv.1 = phi ptr [ null, %cleanup163 ], [ %gv.0, %land.lhs.true ], [ null, %if.end ], [ %gv.0, %land.lhs.true11 ], [ %gv.0, %cond.true ], !dbg !3127
  %io.0 = phi ptr [ %25, %cleanup163 ], [ null, %land.lhs.true ], [ null, %if.end ], [ null, %land.lhs.true11 ], [ %9, %cond.true ]
  call void @llvm.dbg.value(metadata ptr %io.0, metadata !3103, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr %gv.1, metadata !3104, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.label(metadata !3118), !dbg !3136
  store i16 265, ptr @PL_laststype, align 2, !dbg !3137
  %tobool15.not = icmp eq ptr %gv.1, null, !dbg !3138
  %io.0.gv.1 = select i1 %tobool15.not, ptr %io.0, ptr %gv.1, !dbg !3138
  store ptr %io.0.gv.1, ptr @PL_statgv, align 8, !dbg !3139
  %10 = load ptr, ptr @PL_statname, align 8, !dbg !3140
  tail call void @Perl_sv_setpvn(ptr noundef %10, ptr noundef nonnull @.str.4, i64 noundef 0) #11, !dbg !3140
  %tobool20.not = icmp eq ptr %io.0, null, !dbg !3141
  br i1 %tobool20.not, label %if.end39, label %if.then21, !dbg !3142

if.then21:                                        ; preds = %do_fstat_have_io
  %sv_u22 = getelementptr inbounds %struct.io, ptr %io.0, i64 0, i32 3, !dbg !3143
  %11 = load ptr, ptr %sv_u22, align 8, !dbg !3143
  %tobool23.not = icmp eq ptr %11, null, !dbg !3143
  br i1 %tobool23.not, label %if.else30, label %if.then24, !dbg !3144

if.then24:                                        ; preds = %if.then21
  %call = tail call i32 @Perl_PerlIO_fileno(ptr noundef nonnull %11) #11, !dbg !3145
  call void @llvm.dbg.value(metadata i32 %call, metadata !3105, metadata !DIExpression()), !dbg !3146
  %cmp26 = icmp slt i32 %call, 0, !dbg !3147
  br i1 %cmp26, label %cleanup, label %if.else, !dbg !3149

if.else:                                          ; preds = %if.then24
  call void @llvm.dbg.value(metadata i32 %call, metadata !2008, metadata !DIExpression()) #11, !dbg !3150
  call void @llvm.dbg.value(metadata ptr @PL_statcache, metadata !2049, metadata !DIExpression()) #11, !dbg !3150
  %call.i = tail call i32 @__fxstat(i32 noundef 1, i32 noundef %call, ptr noundef nonnull @PL_statcache) #11, !dbg !3153
  br label %cleanup, !dbg !3154

cleanup:                                          ; preds = %if.then24, %if.else
  %storemerge = phi i32 [ %call.i, %if.else ], [ -1, %if.then24 ], !dbg !3155
  store i32 %storemerge, ptr @PL_laststatval, align 4, !dbg !3155
  br label %cleanup166

if.else30:                                        ; preds = %if.then21
  %12 = load ptr, ptr %io.0, align 8, !dbg !3156
  %xio_dirpu = getelementptr inbounds %struct.xpvio, ptr %12, i64 0, i32 6, !dbg !3156
  %13 = load ptr, ptr %xio_dirpu, align 8, !dbg !3156
  %tobool31.not = icmp eq ptr %13, null, !dbg !3156
  br i1 %tobool31.not, label %if.end39, label %if.then32, !dbg !3158

if.then32:                                        ; preds = %if.else30
  %call35 = tail call i32 @Perl_my_dirfd(ptr noundef nonnull %13) #11, !dbg !3159
  call void @llvm.dbg.value(metadata i32 %call35, metadata !2008, metadata !DIExpression()) #11, !dbg !3161
  call void @llvm.dbg.value(metadata ptr @PL_statcache, metadata !2049, metadata !DIExpression()) #11, !dbg !3161
  %call.i210 = tail call i32 @__fxstat(i32 noundef 1, i32 noundef %call35, ptr noundef nonnull @PL_statcache) #11, !dbg !3163
  store i32 %call.i210, ptr @PL_laststatval, align 4, !dbg !3164
  br label %cleanup166, !dbg !3165

if.end39:                                         ; preds = %if.else30, %do_fstat_have_io
  store i32 -1, ptr @PL_laststatval, align 4, !dbg !3166
  tail call void @Perl_report_evil_fh(ptr noundef %gv.1) #11, !dbg !3167
  br label %cleanup166, !dbg !3168

if.else40:                                        ; preds = %entry
  %op_private = getelementptr inbounds %struct.op, ptr %1, i64 0, i32 6, !dbg !3169
  %14 = load i8, ptr %op_private, align 1, !dbg !3169
  %15 = and i8 %14, 20, !dbg !3170
  %cmp43 = icmp eq i8 %15, 4, !dbg !3171
  br i1 %cmp43, label %if.then45, label %if.else46, !dbg !3172

if.then45:                                        ; preds = %if.else40
  %16 = load i32, ptr @PL_laststatval, align 4, !dbg !3173
  br label %cleanup166, !dbg !3174

if.else46:                                        ; preds = %if.else40
  %17 = load ptr, ptr %0, align 8, !dbg !3175
  call void @llvm.dbg.value(metadata ptr %17, metadata !3112, metadata !DIExpression()), !dbg !3176
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #11, !dbg !3177
  %and47 = and i32 %flags, 2, !dbg !3178
  %tobool48.not = icmp eq i32 %and47, 0, !dbg !3178
  br i1 %tobool48.not, label %land.end57, label %land.rhs, !dbg !3178

land.rhs:                                         ; preds = %if.else46
  %sv_flags49 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2, !dbg !3178
  %18 = load i32, ptr %sv_flags49, align 4, !dbg !3178
  %and50 = and i32 %18, 2097152, !dbg !3178
  %tobool51.not = icmp eq i32 %and50, 0, !dbg !3178
  br i1 %tobool51.not, label %land.end57, label %land.rhs54, !dbg !3178

land.rhs54:                                       ; preds = %land.rhs
  %call55 = tail call i32 @Perl_mg_get(ptr noundef nonnull %17) #11, !dbg !3178
  br label %land.end57

land.end57:                                       ; preds = %land.rhs54, %land.rhs, %if.else46
  %sv_flags59 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2, !dbg !3178
  %19 = load i32, ptr %sv_flags59, align 4, !dbg !3178
  %and60 = and i32 %19, 49152, !dbg !3178
  %cmp61 = icmp eq i32 %and60, 32768, !dbg !3178
  br i1 %cmp61, label %land.lhs.true63, label %cond.false74, !dbg !3178

land.lhs.true63:                                  ; preds = %land.end57
  %and65 = and i32 %19, 255, !dbg !3178
  %and65.off = add nsw i32 %and65, -9, !dbg !3178
  %switch208 = icmp ult i32 %and65.off, 2, !dbg !3178
  br i1 %switch208, label %cleanup163.thread, label %cond.false74, !dbg !3178

cond.false74:                                     ; preds = %land.lhs.true63, %land.end57
  %and76 = and i32 %19, 2048, !dbg !3178
  %tobool77.not = icmp eq i32 %and76, 0, !dbg !3178
  br i1 %tobool77.not, label %if.else124, label %land.lhs.true78, !dbg !3178

land.lhs.true78:                                  ; preds = %cond.false74
  %sv_u79 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3, !dbg !3178
  %20 = load ptr, ptr %sv_u79, align 8, !dbg !3178
  %sv_flags80 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2, !dbg !3178
  %21 = load i32, ptr %sv_flags80, align 4, !dbg !3178
  %and81 = and i32 %21, 255, !dbg !3178
  %cmp82 = icmp ult i32 %and81, 11, !dbg !3178
  br i1 %cmp82, label %land.lhs.true84, label %if.else124, !dbg !3178

land.lhs.true84:                                  ; preds = %land.lhs.true78
  %and87 = and i32 %21, 2097152, !dbg !3178
  %tobool88.not = icmp eq i32 %and87, 0, !dbg !3178
  br i1 %tobool88.not, label %land.end95, label %land.rhs91, !dbg !3178

land.rhs91:                                       ; preds = %land.lhs.true84
  %call93 = tail call i32 @Perl_mg_get(ptr noundef nonnull %20) #11, !dbg !3178
  %.pre = load ptr, ptr %sv_u79, align 8, !dbg !3178
  %sv_flags98.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre, i64 0, i32 2
  %.pre224 = load i32, ptr %sv_flags98.phi.trans.insert, align 4, !dbg !3178
  br label %land.end95

land.end95:                                       ; preds = %land.lhs.true84, %land.rhs91
  %22 = phi i32 [ %21, %land.lhs.true84 ], [ %.pre224, %land.rhs91 ], !dbg !3178
  %23 = phi ptr [ %20, %land.lhs.true84 ], [ %.pre, %land.rhs91 ], !dbg !3178
  %and99 = and i32 %22, 49152, !dbg !3178
  %cmp100 = icmp eq i32 %and99, 32768, !dbg !3178
  br i1 %cmp100, label %land.rhs102, label %if.else124, !dbg !3178

land.rhs102:                                      ; preds = %land.end95
  %and105 = and i32 %22, 255, !dbg !3178
  %and105.off = add nsw i32 %and105, -9, !dbg !3178
  %switch209 = icmp ult i32 %and105.off, 2, !dbg !3178
  br i1 %switch209, label %cleanup163.thread, label %if.else124, !dbg !3178

if.else124:                                       ; preds = %land.end95, %land.lhs.true78, %cond.false74, %land.rhs102
  call void @llvm.dbg.value(metadata ptr undef, metadata !3104, metadata !DIExpression()), !dbg !3119
  %24 = load i32, ptr %sv_flags59, align 4, !dbg !3180
  %and126 = and i32 %24, 2048, !dbg !3180
  %tobool127.not = icmp eq i32 %and126, 0, !dbg !3180
  br i1 %tobool127.not, label %if.end137, label %land.lhs.true128, !dbg !3182

land.lhs.true128:                                 ; preds = %if.else124
  %sv_u129 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3, !dbg !3183
  %25 = load ptr, ptr %sv_u129, align 8, !dbg !3183
  %sv_flags130 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2, !dbg !3183
  %26 = load i32, ptr %sv_flags130, align 4, !dbg !3183
  %and131 = and i32 %26, 255, !dbg !3183
  %cmp132 = icmp eq i32 %and131, 15, !dbg !3184
  br i1 %cmp132, label %cleanup163, label %if.end137, !dbg !3185

if.end137:                                        ; preds = %if.else124, %land.lhs.true128
  %and139 = and i32 %24, 2098176, !dbg !3186
  %cmp140 = icmp eq i32 %and139, 1024, !dbg !3186
  br i1 %cmp140, label %cond.true142, label %cond.false146, !dbg !3186

cond.true142:                                     ; preds = %if.end137
  %27 = load ptr, ptr %17, align 8, !dbg !3186
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2, !dbg !3186
  %28 = load i64, ptr %xpv_cur, align 8, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %28, metadata !3116, metadata !DIExpression()), !dbg !3176
  store i64 %28, ptr %len, align 8, !dbg !3186
  %sv_u144 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 3, !dbg !3186
  %29 = load ptr, ptr %sv_u144, align 8, !dbg !3186
  br label %cond.end148, !dbg !3186

cond.false146:                                    ; preds = %if.end137
  %or = or i32 %flags, 32, !dbg !3186
  call void @llvm.dbg.value(metadata ptr %len, metadata !3116, metadata !DIExpression(DW_OP_deref)), !dbg !3176
  %call147 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %17, ptr noundef nonnull %len, i32 noundef %or) #11, !dbg !3186
  %.pre225 = load i64, ptr %len, align 8, !dbg !3187
  br label %cond.end148, !dbg !3186

cond.end148:                                      ; preds = %cond.false146, %cond.true142
  %30 = phi i64 [ %28, %cond.true142 ], [ %.pre225, %cond.false146 ], !dbg !3187
  %cond149 = phi ptr [ %29, %cond.true142 ], [ %call147, %cond.false146 ], !dbg !3186
  call void @llvm.dbg.value(metadata ptr %cond149, metadata !3115, metadata !DIExpression()), !dbg !3176
  store ptr null, ptr @PL_statgv, align 8, !dbg !3188
  %31 = load ptr, ptr @PL_statname, align 8, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %30, metadata !3116, metadata !DIExpression()), !dbg !3176
  call void @Perl_sv_setpvn(ptr noundef %31, ptr noundef %cond149, i64 noundef %30) #11, !dbg !3187
  %32 = load ptr, ptr @PL_statname, align 8, !dbg !3189
  %sv_u150 = getelementptr inbounds %struct.sv, ptr %32, i64 0, i32 3, !dbg !3189
  %33 = load ptr, ptr %sv_u150, align 8, !dbg !3189
  call void @llvm.dbg.value(metadata ptr %33, metadata !3115, metadata !DIExpression()), !dbg !3176
  store i16 265, ptr @PL_laststype, align 2, !dbg !3190
  call void @llvm.dbg.value(metadata ptr %33, metadata !2529, metadata !DIExpression()) #11, !dbg !3191
  call void @llvm.dbg.value(metadata ptr @PL_statcache, metadata !2534, metadata !DIExpression()) #11, !dbg !3191
  %call.i211 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %33, ptr noundef nonnull @PL_statcache) #11, !dbg !3193
  store i32 %call.i211, ptr @PL_laststatval, align 4, !dbg !3194
  %cmp153 = icmp slt i32 %call.i211, 0, !dbg !3195
  br i1 %cmp153, label %land.lhs.true155, label %cleanup163.thread219, !dbg !3197

land.lhs.true155:                                 ; preds = %cond.end148
  %call156 = call zeroext i1 @Perl_ckwarn(i32 noundef 9) #11, !dbg !3198
  br i1 %call156, label %land.lhs.true158, label %cleanup163.thread219, !dbg !3199

land.lhs.true158:                                 ; preds = %land.lhs.true155
  call void @llvm.dbg.value(metadata ptr %33, metadata !1952, metadata !DIExpression()) #11, !dbg !3200
  %call.i212 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #12, !dbg !3202
  call void @llvm.dbg.value(metadata i64 %call.i212, metadata !1957, metadata !DIExpression()) #11, !dbg !3200
  %cmp.not.i = icmp eq i64 %call.i212, 0, !dbg !3203
  br i1 %cmp.not.i, label %cleanup163.thread219, label %S_should_warn_nl.exit, !dbg !3204

S_should_warn_nl.exit:                            ; preds = %land.lhs.true158
  %sub.i = add i64 %call.i212, -1, !dbg !3205
  %arrayidx.i = getelementptr inbounds i8, ptr %33, i64 %sub.i, !dbg !3206
  %34 = load i8, ptr %arrayidx.i, align 1, !dbg !3206
  %cmp1.i = icmp eq i8 %34, 10, !dbg !3207
  br i1 %cmp1.i, label %if.then161, label %cleanup163.thread219, !dbg !3208

if.then161:                                       ; preds = %S_should_warn_nl.exit
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.29) #11, !dbg !3209
  br label %cleanup163.thread219, !dbg !3211

cleanup163.thread219:                             ; preds = %cond.end148, %land.lhs.true155, %S_should_warn_nl.exit, %if.then161, %land.lhs.true158
  %35 = load i32, ptr @PL_laststatval, align 4, !dbg !3212
  call void @llvm.dbg.value(metadata ptr %25, metadata !3103, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr null, metadata !3104, metadata !DIExpression()), !dbg !3119
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #11, !dbg !3213
  br label %cleanup166

cleanup163.thread:                                ; preds = %land.lhs.true63, %land.rhs102
  %gv.2.ph = phi ptr [ %17, %land.lhs.true63 ], [ %23, %land.rhs102 ]
  call void @llvm.dbg.value(metadata ptr %25, metadata !3103, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr null, metadata !3104, metadata !DIExpression()), !dbg !3119
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #11, !dbg !3213
  br label %do_fstat

cleanup163:                                       ; preds = %land.lhs.true128
  call void @llvm.dbg.value(metadata ptr %25, metadata !3103, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata ptr null, metadata !3104, metadata !DIExpression()), !dbg !3119
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #11, !dbg !3213
  br label %do_fstat_have_io

cleanup166:                                       ; preds = %cleanup163.thread219, %if.then45, %if.end39, %if.then32, %cleanup, %if.then2
  %retval.2 = phi i32 [ %6, %if.then2 ], [ %storemerge, %cleanup ], [ %call.i210, %if.then32 ], [ -1, %if.end39 ], [ %16, %if.then45 ], [ %35, %cleanup163.thread219 ]
  ret i32 %retval.2, !dbg !3214
}

declare !dbg !3215 i32 @Perl_my_dirfd(ptr noundef) local_unnamed_addr #2

declare !dbg !3218 i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_my_lstat_flags(i32 noundef %flags) local_unnamed_addr #0 !dbg !1069 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1074, metadata !DIExpression()), !dbg !3219
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !3220
  call void @llvm.dbg.value(metadata ptr %0, metadata !1075, metadata !DIExpression()), !dbg !3219
  %1 = load ptr, ptr %0, align 8, !dbg !3221
  call void @llvm.dbg.value(metadata ptr %1, metadata !1077, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 0, metadata !1078, metadata !DIExpression()), !dbg !3219
  %2 = load ptr, ptr @PL_op, align 8, !dbg !3222
  %op_flags = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5, !dbg !3224
  %3 = load i8, ptr %op_flags, align 2, !dbg !3224
  %4 = and i8 %3, 16, !dbg !3225
  %tobool.not = icmp eq i8 %4, 0, !dbg !3225
  br i1 %tobool.not, label %if.end17, label %if.then, !dbg !3226

if.then:                                          ; preds = %entry
  %op_sv = getelementptr inbounds %struct.svop, ptr %2, i64 0, i32 7, !dbg !3227
  %5 = load ptr, ptr %op_sv, align 8, !dbg !3227
  %6 = load ptr, ptr @PL_defgv, align 8, !dbg !3230
  %cmp = icmp eq ptr %5, %6, !dbg !3231
  br i1 %cmp, label %if.then2, label %if.end7, !dbg !3232

if.then2:                                         ; preds = %if.then
  %7 = load i16, ptr @PL_laststype, align 2, !dbg !3233
  %cmp4.not = icmp eq i16 %7, 264, !dbg !3236
  br i1 %cmp4.not, label %if.end, label %if.then6, !dbg !3237

if.then6:                                         ; preds = %if.then2
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #11, !dbg !3238
  br label %if.end, !dbg !3238

if.end:                                           ; preds = %if.then6, %if.then2
  %8 = load i32, ptr @PL_laststatval, align 4, !dbg !3239
  br label %cleanup, !dbg !3240

if.end7:                                          ; preds = %if.then
  store i32 -1, ptr @PL_laststatval, align 4, !dbg !3241
  %call = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11, !dbg !3242
  br i1 %call, label %if.then8, label %cleanup, !dbg !3244

if.then8:                                         ; preds = %if.end7
  %9 = load ptr, ptr @PL_op, align 8, !dbg !3245
  %op_sv9 = getelementptr inbounds %struct.svop, ptr %9, i64 0, i32 7, !dbg !3245
  %10 = load ptr, ptr %op_sv9, align 8, !dbg !3245
  %sv_u = getelementptr inbounds %struct.gv, ptr %10, i64 0, i32 3, !dbg !3245
  %11 = load ptr, ptr %sv_u, align 8, !dbg !3245
  %gp_egv = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 8, !dbg !3245
  %12 = load ptr, ptr %gp_egv, align 8, !dbg !3245
  %tobool10.not = icmp eq ptr %12, null, !dbg !3245
  %. = select i1 %tobool10.not, ptr %10, ptr %12, !dbg !3245
  %13 = load ptr, ptr %., align 8, !dbg !3245
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %13, i64 0, i32 4, !dbg !3245
  %14 = load ptr, ptr %xiv_u, align 8, !dbg !3245
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.32, ptr noundef %14) #11, !dbg !3247
  br label %cleanup, !dbg !3248

if.end17:                                         ; preds = %entry
  %op_private = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 6, !dbg !3249
  %15 = load i8, ptr %op_private, align 1, !dbg !3249
  %16 = and i8 %15, 20, !dbg !3251
  %cmp20 = icmp eq i8 %16, 4, !dbg !3252
  br i1 %cmp20, label %if.then22, label %if.end28, !dbg !3253

if.then22:                                        ; preds = %if.end17
  %17 = load i16, ptr @PL_laststype, align 2, !dbg !3254
  %cmp24.not = icmp eq i16 %17, 264, !dbg !3257
  br i1 %cmp24.not, label %if.end27, label %if.then26, !dbg !3258

if.then26:                                        ; preds = %if.then22
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30) #11, !dbg !3259
  br label %if.end27, !dbg !3259

if.end27:                                         ; preds = %if.then26, %if.then22
  %18 = load i32, ptr @PL_laststatval, align 4, !dbg !3260
  br label %cleanup, !dbg !3261

if.end28:                                         ; preds = %if.end17
  store i16 264, ptr @PL_laststype, align 2, !dbg !3262
  store ptr null, ptr @PL_statgv, align 8, !dbg !3263
  %sv_flags = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2, !dbg !3264
  %19 = load i32, ptr %sv_flags, align 4, !dbg !3264
  %and29 = and i32 %19, 2048, !dbg !3264
  %tobool30.not = icmp eq i32 %and29, 0, !dbg !3264
  br i1 %tobool30.not, label %lor.lhs.false54, label %land.lhs.true, !dbg !3266

land.lhs.true:                                    ; preds = %if.end28
  %sv_u31 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3, !dbg !3267
  %20 = load ptr, ptr %sv_u31, align 8, !dbg !3267
  %sv_flags32 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2, !dbg !3267
  %21 = load i32, ptr %sv_flags32, align 4, !dbg !3267
  %and33 = and i32 %21, 49152, !dbg !3267
  %cmp34 = icmp eq i32 %and33, 32768, !dbg !3267
  %and39 = and i32 %21, 255, !dbg !3268
  %and39.off = add nsw i32 %and39, -9, !dbg !3267
  %switch = icmp ult i32 %and39.off, 2, !dbg !3267
  %or.cond = select i1 %cmp34, i1 %switch, i1 false, !dbg !3267
  br i1 %or.cond, label %land.lhs.true69, label %lor.lhs.false47, !dbg !3267

lor.lhs.false47:                                  ; preds = %land.lhs.true
  %cmp51 = icmp eq i32 %and39, 15, !dbg !3269
  call void @llvm.dbg.value(metadata i1 %cmp51, metadata !1078, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3219
  br i1 %cmp51, label %land.lhs.true69.thread, label %lor.lhs.false54, !dbg !3270

lor.lhs.false54:                                  ; preds = %lor.lhs.false47, %if.end28
  call void @llvm.dbg.value(metadata i8 0, metadata !1078, metadata !DIExpression()), !dbg !3219
  %and56 = and i32 %19, 49152, !dbg !3271
  %cmp57 = icmp eq i32 %and56, 32768, !dbg !3271
  br i1 %cmp57, label %land.lhs.true59, label %if.end113, !dbg !3271

land.lhs.true59:                                  ; preds = %lor.lhs.false54
  %and61 = and i32 %19, 255, !dbg !3271
  %and61.off = add nsw i32 %and61, -9, !dbg !3271
  %switch160 = icmp ult i32 %and61.off, 2, !dbg !3271
  br i1 %switch160, label %land.lhs.true69, label %if.end113, !dbg !3271

land.lhs.true69:                                  ; preds = %land.lhs.true, %land.lhs.true59
  call void @llvm.dbg.value(metadata i8 undef, metadata !1078, metadata !DIExpression()), !dbg !3219
  %call70 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11, !dbg !3272
  br i1 %call70, label %if.else, label %if.end113, !dbg !3273

land.lhs.true69.thread:                           ; preds = %lor.lhs.false47
  call void @llvm.dbg.value(metadata i8 undef, metadata !1078, metadata !DIExpression()), !dbg !3219
  %call70167 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 5) #11, !dbg !3272
  br i1 %call70167, label %if.then74, label %if.end113, !dbg !3273

if.then74:                                        ; preds = %land.lhs.true69.thread
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.33) #11, !dbg !3274
  br label %if.end113, !dbg !3274

if.else:                                          ; preds = %land.lhs.true69
  %22 = load i32, ptr %sv_flags, align 4, !dbg !3277
  %and76 = and i32 %22, 2048, !dbg !3277
  %tobool77.not = icmp eq i32 %and76, 0, !dbg !3277
  br i1 %tobool77.not, label %cond.end81, label %cond.end81.thread, !dbg !3277

cond.end81:                                       ; preds = %if.else
  %sv_u83 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3, !dbg !3277
  %23 = load ptr, ptr %sv_u83, align 8, !dbg !3277
  %gp_egv85 = getelementptr inbounds %struct.gp, ptr %23, i64 0, i32 8, !dbg !3277
  %24 = load ptr, ptr %gp_egv85, align 8, !dbg !3277
  %tobool86.not = icmp eq ptr %24, null, !dbg !3277
  br i1 %tobool86.not, label %cond.end108, label %cond.end94, !dbg !3277

cond.end81.thread:                                ; preds = %if.else
  %sv_u79 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3, !dbg !3277
  %25 = load ptr, ptr %sv_u79, align 8, !dbg !3277
  %sv_u83163 = getelementptr inbounds %struct.gv, ptr %25, i64 0, i32 3, !dbg !3277
  %26 = load ptr, ptr %sv_u83163, align 8, !dbg !3277
  %gp_egv85164 = getelementptr inbounds %struct.gp, ptr %26, i64 0, i32 8, !dbg !3277
  %27 = load ptr, ptr %gp_egv85164, align 8, !dbg !3277
  %tobool86.not165 = icmp eq ptr %27, null, !dbg !3277
  br i1 %tobool86.not165, label %cond.end108, label %cond.end94, !dbg !3277

cond.end94:                                       ; preds = %cond.end81.thread, %cond.end81
  %28 = phi ptr [ %24, %cond.end81 ], [ %27, %cond.end81.thread ], !dbg !3277
  br label %cond.end108, !dbg !3277

cond.end108:                                      ; preds = %cond.end81.thread, %cond.end81, %cond.end94
  %cond109 = phi ptr [ %28, %cond.end94 ], [ %1, %cond.end81 ], [ %25, %cond.end81.thread ], !dbg !3277
  %29 = load ptr, ptr %cond109, align 8, !dbg !3277
  %xiv_u111 = getelementptr inbounds %struct.xpvgv, ptr %29, i64 0, i32 4, !dbg !3277
  %30 = load ptr, ptr %xiv_u111, align 8, !dbg !3277
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 5, ptr noundef nonnull @.str.32, ptr noundef %30) #11, !dbg !3278
  br label %if.end113

if.end113:                                        ; preds = %land.lhs.true69.thread, %land.lhs.true59, %if.then74, %cond.end108, %land.lhs.true69, %lor.lhs.false54
  %31 = load i32, ptr %sv_flags, align 4, !dbg !3279
  %and115 = and i32 %31, 2098176, !dbg !3279
  %cmp116 = icmp eq i32 %and115, 1024, !dbg !3279
  br i1 %cmp116, label %cond.true118, label %cond.false121, !dbg !3279

cond.true118:                                     ; preds = %if.end113
  %sv_u119 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3, !dbg !3279
  %32 = load ptr, ptr %sv_u119, align 8, !dbg !3279
  br label %cond.end123, !dbg !3279

cond.false121:                                    ; preds = %if.end113
  %or = or i32 %flags, 32, !dbg !3279
  %call122 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef null, i32 noundef %or) #11, !dbg !3279
  br label %cond.end123, !dbg !3279

cond.end123:                                      ; preds = %cond.false121, %cond.true118
  %cond124 = phi ptr [ %32, %cond.true118 ], [ %call122, %cond.false121 ], !dbg !3279
  call void @llvm.dbg.value(metadata ptr %cond124, metadata !1076, metadata !DIExpression()), !dbg !3219
  %33 = load ptr, ptr @PL_statname, align 8, !dbg !3280
  tail call void @Perl_sv_setpv(ptr noundef %33, ptr noundef %cond124) #11, !dbg !3280
  call void @llvm.dbg.value(metadata ptr %cond124, metadata !2529, metadata !DIExpression()) #11, !dbg !3281
  call void @llvm.dbg.value(metadata ptr @PL_statcache, metadata !2534, metadata !DIExpression()) #11, !dbg !3281
  %call.i = tail call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %cond124, ptr noundef nonnull @PL_statcache) #11, !dbg !3283
  store i32 %call.i, ptr @PL_laststatval, align 4, !dbg !3284
  %cmp126 = icmp slt i32 %call.i, 0, !dbg !3285
  br i1 %cmp126, label %land.lhs.true128, label %if.end135, !dbg !3287

land.lhs.true128:                                 ; preds = %cond.end123
  %call129 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 9) #11, !dbg !3288
  br i1 %call129, label %land.lhs.true131, label %if.end135, !dbg !3289

land.lhs.true131:                                 ; preds = %land.lhs.true128
  call void @llvm.dbg.value(metadata ptr %cond124, metadata !1952, metadata !DIExpression()) #11, !dbg !3290
  %call.i161 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %cond124) #12, !dbg !3292
  call void @llvm.dbg.value(metadata i64 %call.i161, metadata !1957, metadata !DIExpression()) #11, !dbg !3290
  %cmp.not.i = icmp eq i64 %call.i161, 0, !dbg !3293
  br i1 %cmp.not.i, label %if.end135, label %S_should_warn_nl.exit, !dbg !3294

S_should_warn_nl.exit:                            ; preds = %land.lhs.true131
  %sub.i = add i64 %call.i161, -1, !dbg !3295
  %arrayidx.i = getelementptr inbounds i8, ptr %cond124, i64 %sub.i, !dbg !3296
  %34 = load i8, ptr %arrayidx.i, align 1, !dbg !3296
  %cmp1.i = icmp eq i8 %34, 10, !dbg !3297
  br i1 %cmp1.i, label %if.then134, label %if.end135, !dbg !3298

if.then134:                                       ; preds = %S_should_warn_nl.exit
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 9, ptr noundef nonnull @PL_warn_nl, ptr noundef nonnull @.str.34) #11, !dbg !3299
  br label %if.end135, !dbg !3301

if.end135:                                        ; preds = %land.lhs.true131, %if.then134, %S_should_warn_nl.exit, %land.lhs.true128, %cond.end123
  %35 = load i32, ptr @PL_laststatval, align 4, !dbg !3302
  br label %cleanup, !dbg !3303

cleanup:                                          ; preds = %if.end7, %if.then8, %if.end135, %if.end27, %if.end
  %retval.0 = phi i32 [ %8, %if.end ], [ %18, %if.end27 ], [ %35, %if.end135 ], [ -1, %if.then8 ], [ -1, %if.end7 ], !dbg !3219
  ret i32 %retval.0, !dbg !3304
}

declare !dbg !3305 void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_aexec5(ptr noundef %really, ptr noundef %mark, ptr noundef %sp, i32 noundef %fd, i32 noundef %do_report) local_unnamed_addr #0 !dbg !3308 {
entry:
  %e.i = alloca i32, align 4
  %xfpe = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %really, metadata !3312, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata ptr %mark, metadata !3313, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata ptr %sp, metadata !3314, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %fd, metadata !3315, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %do_report, metadata !3316, metadata !DIExpression()), !dbg !3329
  %cmp = icmp ugt ptr %sp, %mark, !dbg !3330
  br i1 %cmp, label %if.then, label %if.end54, !dbg !3331

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr null, metadata !3320, metadata !DIExpression()), !dbg !3332
  %sub.ptr.lhs.cast = ptrtoint ptr %sp to i64, !dbg !3333
  %sub.ptr.rhs.cast = ptrtoint ptr %mark to i64, !dbg !3333
  %sub.ptr.sub = sub i64 8, %sub.ptr.rhs.cast, !dbg !3333
  %mul = add i64 %sub.ptr.sub, %sub.ptr.lhs.cast, !dbg !3333
  %call = tail call ptr @Perl_safesysmalloc(i64 noundef %mul) #11, !dbg !3333
  store ptr %call, ptr @PL_Argv, align 8, !dbg !3333
  call void @llvm.dbg.value(metadata ptr %call, metadata !3317, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata ptr %mark, metadata !3313, metadata !DIExpression()), !dbg !3329
  %incdec.ptr89 = getelementptr inbounds ptr, ptr %mark, i64 1, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %incdec.ptr89, metadata !3313, metadata !DIExpression()), !dbg !3329
  %cmp1.not90 = icmp ugt ptr %incdec.ptr89, %sp, !dbg !3335
  br i1 %cmp1.not90, label %while.end, label %while.body, !dbg !3336

while.body:                                       ; preds = %if.then, %if.end
  %incdec.ptr92 = phi ptr [ %incdec.ptr, %if.end ], [ %incdec.ptr89, %if.then ]
  %a.091 = phi ptr [ %a.1, %if.end ], [ %call, %if.then ]
  call void @llvm.dbg.value(metadata ptr %a.091, metadata !3317, metadata !DIExpression()), !dbg !3332
  %0 = load ptr, ptr %incdec.ptr92, align 8, !dbg !3337
  %tobool.not = icmp eq ptr %0, null, !dbg !3337
  br i1 %tobool.not, label %if.end, label %if.then2, !dbg !3340

if.then2:                                         ; preds = %while.body
  %sv_flags = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2, !dbg !3341
  %1 = load i32, ptr %sv_flags, align 4, !dbg !3341
  %and = and i32 %1, 2098176, !dbg !3341
  %cmp3 = icmp eq i32 %and, 1024, !dbg !3341
  br i1 %cmp3, label %cond.true, label %cond.false, !dbg !3341

cond.true:                                        ; preds = %if.then2
  %sv_u = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3, !dbg !3341
  %2 = load ptr, ptr %sv_u, align 8, !dbg !3341
  br label %if.end, !dbg !3341

cond.false:                                       ; preds = %if.then2
  %call4 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef null, i32 noundef 34) #11, !dbg !3341
  br label %if.end, !dbg !3341

if.end:                                           ; preds = %while.body, %cond.true, %cond.false
  %storemerge = phi ptr [ %2, %cond.true ], [ %call4, %cond.false ], [ @.str.4, %while.body ], !dbg !3342
  %a.1 = getelementptr inbounds ptr, ptr %a.091, i64 1, !dbg !3342
  store ptr %storemerge, ptr %a.091, align 8, !dbg !3342
  call void @llvm.dbg.value(metadata ptr %a.1, metadata !3317, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata ptr %incdec.ptr92, metadata !3313, metadata !DIExpression()), !dbg !3329
  %incdec.ptr = getelementptr inbounds ptr, ptr %incdec.ptr92, i64 1, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3313, metadata !DIExpression()), !dbg !3329
  %cmp1.not = icmp ugt ptr %incdec.ptr, %sp, !dbg !3335
  br i1 %cmp1.not, label %while.end, label %while.body, !dbg !3336, !llvm.loop !3343

while.end:                                        ; preds = %if.end, %if.then
  %a.0.lcssa = phi ptr [ %call, %if.then ], [ %a.1, %if.end ], !dbg !3332
  store ptr null, ptr %a.0.lcssa, align 8, !dbg !3345
  %tobool7.not = icmp eq ptr %really, null, !dbg !3346
  br i1 %tobool7.not, label %land.lhs.true, label %if.then8, !dbg !3348

if.then8:                                         ; preds = %while.end
  %sv_flags9 = getelementptr inbounds %struct.sv, ptr %really, i64 0, i32 2, !dbg !3349
  %3 = load i32, ptr %sv_flags9, align 4, !dbg !3349
  %and10 = and i32 %3, 2098176, !dbg !3349
  %cmp11 = icmp eq i32 %and10, 1024, !dbg !3349
  br i1 %cmp11, label %cond.true12, label %cond.false15, !dbg !3349

cond.true12:                                      ; preds = %if.then8
  %sv_u13 = getelementptr inbounds %struct.sv, ptr %really, i64 0, i32 3, !dbg !3349
  %4 = load ptr, ptr %sv_u13, align 8, !dbg !3349
  br label %land.lhs.true24, !dbg !3349

cond.false15:                                     ; preds = %if.then8
  %call16 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %really, ptr noundef null, i32 noundef 34) #11, !dbg !3349
  br label %land.lhs.true24, !dbg !3349

land.lhs.true:                                    ; preds = %while.end
  call void @llvm.dbg.value(metadata ptr null, metadata !3320, metadata !DIExpression()), !dbg !3332
  %5 = load ptr, ptr @PL_Argv, align 8, !dbg !3350
  %6 = load ptr, ptr %5, align 8, !dbg !3350
  %7 = load i8, ptr %6, align 1, !dbg !3352
  %cmp21.not = icmp eq i8 %7, 47, !dbg !3353
  br i1 %cmp21.not, label %if.else43.critedge, label %if.then28, !dbg !3354

land.lhs.true24:                                  ; preds = %cond.true12, %cond.false15
  %tmps.0.ph = phi ptr [ %call16, %cond.false15 ], [ %4, %cond.true12 ]
  call void @llvm.dbg.value(metadata ptr null, metadata !3320, metadata !DIExpression()), !dbg !3332
  %8 = load i8, ptr %tmps.0.ph, align 1, !dbg !3355
  %cmp26.not = icmp eq i8 %8, 47, !dbg !3356
  %9 = load i8, ptr @PL_tainting, align 1
  %tobool29.not = icmp eq i8 %9, 0
  %or.cond = select i1 %cmp26.not, i1 true, i1 %tobool29.not, !dbg !3357
  br i1 %or.cond, label %if.end35.thread83, label %if.end35, !dbg !3357

if.end35.thread83:                                ; preds = %land.lhs.true24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xfpe) #11, !dbg !3358
  %10 = load ptr, ptr @PL_sigfpe_saved, align 8, !dbg !3358
  call void @llvm.dbg.value(metadata ptr %xfpe, metadata !3321, metadata !DIExpression(DW_OP_deref)), !dbg !3359
  %call3685 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %10, ptr noundef nonnull %xfpe) #11, !dbg !3358
  br label %land.lhs.true38, !dbg !3360

if.then28:                                        ; preds = %land.lhs.true
  %.old = load i8, ptr @PL_tainting, align 1, !dbg !3362, !range !1370
  %tobool29.not.old = icmp eq i8 %.old, 0, !dbg !3362
  br i1 %tobool29.not.old, label %if.end35.thread, label %if.end35, !dbg !3364

if.end35.thread:                                  ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xfpe) #11, !dbg !3358
  call void @llvm.dbg.value(metadata ptr %xfpe, metadata !3321, metadata !DIExpression(DW_OP_deref)), !dbg !3359
  br label %if.end46.sink.split, !dbg !3360

if.end35:                                         ; preds = %if.then28, %land.lhs.true24
  %tmps.077 = phi ptr [ %tmps.0.ph, %land.lhs.true24 ], [ null, %if.then28 ]
  tail call void @Perl_taint_env() #11, !dbg !3365
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xfpe) #11, !dbg !3358
  %11 = load ptr, ptr @PL_sigfpe_saved, align 8, !dbg !3358
  call void @llvm.dbg.value(metadata ptr %xfpe, metadata !3321, metadata !DIExpression(DW_OP_deref)), !dbg !3359
  %call36 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %11, ptr noundef nonnull %xfpe) #11, !dbg !3358
  br i1 %tobool7.not, label %if.end46, label %land.lhs.true38, !dbg !3360

land.lhs.true38:                                  ; preds = %if.end35.thread83, %if.end35
  %tmps.07886 = phi ptr [ %tmps.0.ph, %if.end35.thread83 ], [ %tmps.077, %if.end35 ]
  %12 = load i8, ptr %tmps.07886, align 1, !dbg !3367
  %tobool40.not = icmp eq i8 %12, 0, !dbg !3367
  br i1 %tobool40.not, label %if.end46, label %if.end46.thread, !dbg !3368

if.end46.thread:                                  ; preds = %land.lhs.true38
  %13 = load ptr, ptr @PL_Argv, align 8, !dbg !3369
  %call42 = call i32 @execvp(ptr noundef nonnull %tmps.07886, ptr noundef %13) #11, !dbg !3369
  call void @llvm.dbg.value(metadata ptr %xfpe, metadata !3321, metadata !DIExpression(DW_OP_deref)), !dbg !3359
  %call4788 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %xfpe) #11, !dbg !3370
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xfpe) #11, !dbg !3371
  br label %cond.end52, !dbg !3372

if.else43.critedge:                               ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xfpe) #11, !dbg !3358
  call void @llvm.dbg.value(metadata ptr %xfpe, metadata !3321, metadata !DIExpression(DW_OP_deref)), !dbg !3359
  br label %if.end46.sink.split, !dbg !3360

if.end46.sink.split:                              ; preds = %if.end35.thread, %if.else43.critedge
  %14 = load ptr, ptr @PL_sigfpe_saved, align 8, !dbg !3358
  %call36.c = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %14, ptr noundef nonnull %xfpe) #11, !dbg !3358
  br label %if.end46, !dbg !3373

if.end46:                                         ; preds = %if.end46.sink.split, %if.end35, %land.lhs.true38
  %tmps.080 = phi ptr [ %tmps.07886, %land.lhs.true38 ], [ %tmps.077, %if.end35 ], [ null, %if.end46.sink.split ]
  %15 = load ptr, ptr @PL_Argv, align 8, !dbg !3373
  %16 = load ptr, ptr %15, align 8, !dbg !3373
  %call45 = call i32 @execvp(ptr noundef %16, ptr noundef nonnull %15) #11, !dbg !3373
  call void @llvm.dbg.value(metadata ptr %xfpe, metadata !3321, metadata !DIExpression(DW_OP_deref)), !dbg !3359
  %call47 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %xfpe) #11, !dbg !3370
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xfpe) #11, !dbg !3371
  br i1 %tobool7.not, label %cond.false50, label %cond.end52, !dbg !3372

cond.false50:                                     ; preds = %if.end46
  %17 = load ptr, ptr @PL_Argv, align 8, !dbg !3374
  %18 = load ptr, ptr %17, align 8, !dbg !3374
  br label %cond.end52, !dbg !3372

cond.end52:                                       ; preds = %if.end46.thread, %if.end46, %cond.false50
  %cond53 = phi ptr [ %18, %cond.false50 ], [ %tmps.080, %if.end46 ], [ %tmps.07886, %if.end46.thread ], !dbg !3372
  call void @llvm.dbg.value(metadata ptr %cond53, metadata !3375, metadata !DIExpression()) #11, !dbg !3383
  call void @llvm.dbg.value(metadata i32 %fd, metadata !3380, metadata !DIExpression()) #11, !dbg !3383
  call void @llvm.dbg.value(metadata i32 %do_report, metadata !3381, metadata !DIExpression()) #11, !dbg !3383
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e.i) #11, !dbg !3385
  %call.i = tail call ptr @__errno_location() #13, !dbg !3386
  %19 = load i32, ptr %call.i, align 4, !dbg !3386
  call void @llvm.dbg.value(metadata i32 %19, metadata !3382, metadata !DIExpression()) #11, !dbg !3383
  store i32 %19, ptr %e.i, align 4, !dbg !3387
  %call1.i = call zeroext i1 @Perl_ckwarn(i32 noundef 7) #11, !dbg !3388
  br i1 %call1.i, label %if.then.i, label %if.end.i, !dbg !3390

if.then.i:                                        ; preds = %cond.end52
  call void @llvm.dbg.value(metadata i32 %19, metadata !3382, metadata !DIExpression()) #11, !dbg !3383
  %call2.i = call ptr @strerror(i32 noundef %19) #11, !dbg !3391
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 7, ptr noundef nonnull @.str.59, ptr noundef %cond53, ptr noundef %call2.i) #11, !dbg !3392
  br label %if.end.i, !dbg !3392

if.end.i:                                         ; preds = %if.then.i, %cond.end52
  %tobool.not.i = icmp eq i32 %do_report, 0, !dbg !3393
  br i1 %tobool.not.i, label %S_exec_failed.exit, label %if.then3.i, !dbg !3395

if.then3.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr %e.i, metadata !3382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3383
  %call4.i = call i64 @write(i32 noundef %fd, ptr noundef nonnull %e.i, i64 noundef 4) #11, !dbg !3396
  %call5.i = call i32 @close(i32 noundef %fd) #11, !dbg !3398
  br label %S_exec_failed.exit, !dbg !3399

S_exec_failed.exit:                               ; preds = %if.end.i, %if.then3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e.i) #11, !dbg !3400
  br label %if.end54, !dbg !3401

if.end54:                                         ; preds = %S_exec_failed.exit, %entry
  %20 = load ptr, ptr @PL_Argv, align 8, !dbg !3402
  call void @Perl_safesysfree(ptr noundef %20) #11, !dbg !3402
  store ptr null, ptr @PL_Argv, align 8, !dbg !3405
  %21 = load ptr, ptr @PL_Cmd, align 8, !dbg !3406
  call void @Perl_safesysfree(ptr noundef %21) #11, !dbg !3406
  store ptr null, ptr @PL_Cmd, align 8, !dbg !3407
  ret i1 false, !dbg !3408
}

declare !dbg !3409 ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare !dbg !3412 i32 @Perl_rsignal_save(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !3416 i32 @execvp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare !dbg !3421 i32 @Perl_rsignal_restore(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_execfree() local_unnamed_addr #0 !dbg !3403 {
entry:
  %0 = load ptr, ptr @PL_Argv, align 8, !dbg !3424
  tail call void @Perl_safesysfree(ptr noundef %0) #11, !dbg !3424
  store ptr null, ptr @PL_Argv, align 8, !dbg !3425
  %1 = load ptr, ptr @PL_Cmd, align 8, !dbg !3426
  tail call void @Perl_safesysfree(ptr noundef %1) #11, !dbg !3426
  store ptr null, ptr @PL_Cmd, align 8, !dbg !3427
  ret void, !dbg !3428
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_do_exec3(ptr nocapture noundef readonly %incmd, i32 noundef %fd, i32 noundef %do_report) local_unnamed_addr #0 !dbg !3429 {
entry:
  %e.i340 = alloca i32, align 4
  %e.i329 = alloca i32, align 4
  %e.i = alloca i32, align 4
  %flags = alloca [10 x i8], align 1
  %xfpe = alloca ptr, align 8
  %xfpe181 = alloca ptr, align 8
  %xfpe232 = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %incmd, metadata !3433, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 %fd, metadata !3434, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i32 %do_report, metadata !3435, metadata !DIExpression()), !dbg !3471
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %incmd) #12, !dbg !3472
  %add = add i64 %call, 1, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %add, metadata !3440, metadata !DIExpression()), !dbg !3471
  %call1 = tail call ptr @Perl_safesysmalloc(i64 noundef %add) #11, !dbg !3474
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3438, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3439, metadata !DIExpression()), !dbg !3471
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call1, ptr align 1 %incmd, i64 %add, i1 false), !dbg !3475
  call void @llvm.dbg.value(metadata ptr %call1, metadata !3439, metadata !DIExpression()), !dbg !3471
  %0 = load i8, ptr %call1, align 1, !dbg !3476
  %tobool.not361 = icmp eq i8 %0, 0, !dbg !3476
  br i1 %tobool.not361, label %while.end, label %land.rhs, !dbg !3477

land.rhs:                                         ; preds = %entry, %while.body
  %1 = phi i8 [ %3, %while.body ], [ %0, %entry ]
  %cmd.0362 = phi ptr [ %incdec.ptr, %while.body ], [ %call1, %entry ]
  call void @llvm.dbg.value(metadata ptr %cmd.0362, metadata !3439, metadata !DIExpression()), !dbg !3471
  %idxprom = zext i8 %1 to i64, !dbg !3478
  %arrayidx = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom, !dbg !3478
  %2 = load i32, ptr %arrayidx, align 4, !dbg !3478
  %and = and i32 %2, 17408, !dbg !3478
  %cmp = icmp eq i32 %and, 17408, !dbg !3478
  br i1 %cmp, label %while.body, label %while.end, !dbg !3479

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, ptr %cmd.0362, i64 1, !dbg !3480
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3439, metadata !DIExpression()), !dbg !3471
  %3 = load i8, ptr %incdec.ptr, align 1, !dbg !3476
  %tobool.not = icmp eq i8 %3, 0, !dbg !3476
  br i1 %tobool.not, label %while.end, label %land.rhs, !dbg !3477, !llvm.loop !3481

while.end:                                        ; preds = %land.rhs, %while.body, %entry
  %cmd.0.lcssa = phi ptr [ %call1, %entry ], [ %incdec.ptr, %while.body ], [ %cmd.0362, %land.rhs ], !dbg !3471
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %flags) #11, !dbg !3482
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !3442, metadata !DIExpression()), !dbg !3483
  %call5 = tail call i32 @strncmp(ptr noundef nonnull %cmd.0.lcssa, ptr noundef nonnull dereferenceable(4) @.str.35, i64 noundef 3) #12, !dbg !3484
  %tobool6.not = icmp eq i32 %call5, 0, !dbg !3484
  br i1 %tobool6.not, label %if.then, label %if.end52, !dbg !3485

if.then:                                          ; preds = %while.end
  %call7 = call i64 @Perl_my_strlcpy(ptr noundef nonnull %flags, ptr noundef nonnull @.str.36, i64 noundef 10) #11, !dbg !3486
  %add.ptr9 = getelementptr inbounds i8, ptr %cmd.0.lcssa, i64 3, !dbg !3487
  call void @llvm.dbg.value(metadata ptr %add.ptr9, metadata !3437, metadata !DIExpression()), !dbg !3471
  %4 = load i8, ptr %add.ptr9, align 1, !dbg !3488
  %cmp11 = icmp eq i8 %4, 102, !dbg !3490
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !3491

if.then13:                                        ; preds = %if.then
  %incdec.ptr14 = getelementptr inbounds i8, ptr %cmd.0.lcssa, i64 4, !dbg !3492
  call void @llvm.dbg.value(metadata ptr %incdec.ptr14, metadata !3437, metadata !DIExpression()), !dbg !3471
  %call16 = call i64 @Perl_my_strlcat(ptr noundef nonnull %flags, ptr noundef nonnull @.str.37, i64 noundef 8) #11, !dbg !3494
  %.pre = load i8, ptr %incdec.ptr14, align 1, !dbg !3495
  br label %if.end, !dbg !3497

if.end:                                           ; preds = %if.then13, %if.then
  %5 = phi i8 [ %.pre, %if.then13 ], [ %4, %if.then ], !dbg !3495
  %6 = phi i64 [ 4, %if.then13 ], [ 3, %if.then ], !dbg !3498
  %7 = getelementptr inbounds i8, ptr %cmd.0.lcssa, i64 %6, !dbg !3492
  call void @llvm.dbg.value(metadata ptr undef, metadata !3437, metadata !DIExpression()), !dbg !3471
  %cmp18 = icmp eq i8 %5, 32, !dbg !3499
  %spec.select.idx = zext i1 %cmp18 to i64, !dbg !3500
  %spec.select = getelementptr i8, ptr %7, i64 %spec.select.idx, !dbg !3500
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !3437, metadata !DIExpression()), !dbg !3471
  %incdec.ptr23 = getelementptr inbounds i8, ptr %spec.select, i64 1, !dbg !3501
  call void @llvm.dbg.value(metadata ptr %incdec.ptr23, metadata !3437, metadata !DIExpression()), !dbg !3471
  %8 = load i8, ptr %spec.select, align 1, !dbg !3502
  %cmp25 = icmp eq i8 %8, 39, !dbg !3503
  br i1 %cmp25, label %while.cond28, label %if.end52, !dbg !3504

while.cond28:                                     ; preds = %if.end, %while.cond28
  %s.2 = phi ptr [ %incdec.ptr31, %while.cond28 ], [ %incdec.ptr23, %if.end ], !dbg !3505
  call void @llvm.dbg.value(metadata ptr %s.2, metadata !3437, metadata !DIExpression()), !dbg !3471
  %9 = load i8, ptr %s.2, align 1, !dbg !3506
  %tobool29.not = icmp eq i8 %9, 0, !dbg !3507
  %incdec.ptr31 = getelementptr inbounds i8, ptr %s.2, i64 1, !dbg !3508
  call void @llvm.dbg.value(metadata ptr %incdec.ptr31, metadata !3437, metadata !DIExpression()), !dbg !3471
  br i1 %tobool29.not, label %while.end32, label %while.cond28, !dbg !3507, !llvm.loop !3509

while.end32:                                      ; preds = %while.cond28
  %arrayidx33 = getelementptr inbounds i8, ptr %s.2, i64 -1, !dbg !3510
  %10 = load i8, ptr %arrayidx33, align 1, !dbg !3510
  %cmp35 = icmp eq i8 %10, 10, !dbg !3512
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !3513

if.then37:                                        ; preds = %while.end32
  call void @llvm.dbg.value(metadata ptr %arrayidx33, metadata !3437, metadata !DIExpression()), !dbg !3471
  store i8 0, ptr %arrayidx33, align 1, !dbg !3514
  %arrayidx40.phi.trans.insert = getelementptr inbounds i8, ptr %s.2, i64 -2
  %.pre390 = load i8, ptr %arrayidx40.phi.trans.insert, align 1, !dbg !3515
  br label %if.end39, !dbg !3516

if.end39:                                         ; preds = %if.then37, %while.end32
  %11 = phi i8 [ %.pre390, %if.then37 ], [ %10, %while.end32 ], !dbg !3515
  %s.3 = phi ptr [ %arrayidx33, %if.then37 ], [ %s.2, %while.end32 ], !dbg !3505
  call void @llvm.dbg.value(metadata ptr %s.3, metadata !3437, metadata !DIExpression()), !dbg !3471
  %cmp42 = icmp eq i8 %11, 39, !dbg !3517
  br i1 %cmp42, label %if.then44, label %if.end52, !dbg !3518

if.then44:                                        ; preds = %if.end39
  %arrayidx40 = getelementptr inbounds i8, ptr %s.3, i64 -1, !dbg !3515
  call void @llvm.dbg.value(metadata ptr %arrayidx40, metadata !3437, metadata !DIExpression()), !dbg !3471
  store i8 0, ptr %arrayidx40, align 1, !dbg !3519
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xfpe) #11, !dbg !3520
  %12 = load ptr, ptr @PL_sigfpe_saved, align 8, !dbg !3520
  call void @llvm.dbg.value(metadata ptr %xfpe, metadata !3452, metadata !DIExpression(DW_OP_deref)), !dbg !3521
  %call46 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %12, ptr noundef nonnull %xfpe) #11, !dbg !3520
  %call48 = call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @PL_cshname, ptr noundef nonnull @.str.38, ptr noundef nonnull %flags, ptr noundef nonnull %incdec.ptr23, ptr noundef null) #11, !dbg !3522
  %call49 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %xfpe) #11, !dbg !3523
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xfpe) #11, !dbg !3524
  store i8 39, ptr %arrayidx40, align 1, !dbg !3525
  call void @llvm.dbg.value(metadata ptr @PL_cshname, metadata !3375, metadata !DIExpression()) #11, !dbg !3526
  call void @llvm.dbg.value(metadata i32 %fd, metadata !3380, metadata !DIExpression()) #11, !dbg !3526
  call void @llvm.dbg.value(metadata i32 %do_report, metadata !3381, metadata !DIExpression()) #11, !dbg !3526
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e.i) #11, !dbg !3528
  %call.i = tail call ptr @__errno_location() #13, !dbg !3529
  %13 = load i32, ptr %call.i, align 4, !dbg !3529
  call void @llvm.dbg.value(metadata i32 %13, metadata !3382, metadata !DIExpression()) #11, !dbg !3526
  store i32 %13, ptr %e.i, align 4, !dbg !3530
  %call1.i = call zeroext i1 @Perl_ckwarn(i32 noundef 7) #11, !dbg !3531
  br i1 %call1.i, label %if.then.i, label %if.end.i, !dbg !3532

if.then.i:                                        ; preds = %if.then44
  call void @llvm.dbg.value(metadata i32 %13, metadata !3382, metadata !DIExpression()) #11, !dbg !3526
  %call2.i = call ptr @strerror(i32 noundef %13) #11, !dbg !3533
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 7, ptr noundef nonnull @.str.59, ptr noundef nonnull @PL_cshname, ptr noundef %call2.i) #11, !dbg !3534
  br label %if.end.i, !dbg !3534

if.end.i:                                         ; preds = %if.then.i, %if.then44
  %tobool.not.i = icmp eq i32 %do_report, 0, !dbg !3535
  br i1 %tobool.not.i, label %S_exec_failed.exit, label %if.then3.i, !dbg !3536

if.then3.i:                                       ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr %e.i, metadata !3382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3526
  %call4.i = call i64 @write(i32 noundef %fd, ptr noundef nonnull %e.i, i64 noundef 4) #11, !dbg !3537
  %call5.i = call i32 @close(i32 noundef %fd) #11, !dbg !3538
  br label %S_exec_failed.exit, !dbg !3539

S_exec_failed.exit:                               ; preds = %if.end.i, %if.then3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e.i) #11, !dbg !3540
  call void @Perl_safesysfree(ptr noundef nonnull %call1) #11, !dbg !3541
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %flags) #11, !dbg !3542
  br label %cleanup244

if.end52:                                         ; preds = %if.end39, %if.end, %while.end
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %flags) #11, !dbg !3542
  %14 = load i8, ptr %cmd.0.lcssa, align 1, !dbg !3543
  %cmp57 = icmp eq i8 %14, 46, !dbg !3545
  br i1 %cmp57, label %land.lhs.true59, label %if.end67, !dbg !3546

land.lhs.true59:                                  ; preds = %if.end52
  %arrayidx60 = getelementptr inbounds i8, ptr %cmd.0.lcssa, i64 1, !dbg !3547
  %15 = load i8, ptr %arrayidx60, align 1, !dbg !3547
  %idxprom61 = zext i8 %15 to i64, !dbg !3547
  %arrayidx62 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom61, !dbg !3547
  %16 = load i32, ptr %arrayidx62, align 4, !dbg !3547
  %and63 = and i32 %16, 17408, !dbg !3547
  %cmp64 = icmp eq i32 %and63, 17408, !dbg !3547
  br i1 %cmp64, label %doshell, label %if.end67, !dbg !3548

if.end67:                                         ; preds = %land.lhs.true59, %if.end52
  %call68 = call i32 @strncmp(ptr noundef nonnull %cmd.0.lcssa, ptr noundef nonnull dereferenceable(5) @.str.39, i64 noundef 4) #12, !dbg !3549
  %tobool69.not = icmp eq i32 %call68, 0, !dbg !3549
  br i1 %tobool69.not, label %land.lhs.true70, label %if.end78, !dbg !3551

land.lhs.true70:                                  ; preds = %if.end67
  %arrayidx71 = getelementptr inbounds i8, ptr %cmd.0.lcssa, i64 4, !dbg !3552
  %17 = load i8, ptr %arrayidx71, align 1, !dbg !3552
  %idxprom72 = zext i8 %17 to i64, !dbg !3552
  %arrayidx73 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom72, !dbg !3552
  %18 = load i32, ptr %arrayidx73, align 4, !dbg !3552
  %and74 = and i32 %18, 17408, !dbg !3552
  %cmp75 = icmp eq i32 %and74, 17408, !dbg !3552
  br i1 %cmp75, label %doshell, label %if.end78, !dbg !3553

if.end78:                                         ; preds = %land.lhs.true70, %if.end67
  call void @llvm.dbg.value(metadata ptr %cmd.0.lcssa, metadata !3437, metadata !DIExpression()), !dbg !3471
  %idxprom80417 = zext i8 %14 to i64, !dbg !3554
  %arrayidx81418 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom80417, !dbg !3554
  %19 = load i32, ptr %arrayidx81418, align 4, !dbg !3554
  %and82419 = and i32 %19, 16385, !dbg !3554
  %cmp83420 = icmp eq i32 %and82419, 16385, !dbg !3554
  call void @llvm.dbg.value(metadata ptr %cmd.0.lcssa, metadata !3437, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3471
  br i1 %cmp83420, label %while.cond79.while.cond79_crit_edge, label %while.end87, !dbg !3555, !llvm.loop !3556

while.cond79.while.cond79_crit_edge:              ; preds = %if.end78, %while.cond79.while.cond79_crit_edge
  %s.4421 = phi ptr [ %incdec.ptr86, %while.cond79.while.cond79_crit_edge ], [ %cmd.0.lcssa, %if.end78 ]
  call void @llvm.dbg.value(metadata ptr %s.4421, metadata !3437, metadata !DIExpression()), !dbg !3471
  %incdec.ptr86 = getelementptr inbounds i8, ptr %s.4421, i64 1, !dbg !3557
  call void @llvm.dbg.value(metadata ptr %incdec.ptr86, metadata !3437, metadata !DIExpression()), !dbg !3471
  %.pre391 = load i8, ptr %incdec.ptr86, align 1, !dbg !3554
  %idxprom80 = zext i8 %.pre391 to i64, !dbg !3554
  %arrayidx81 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom80, !dbg !3554
  %20 = load i32, ptr %arrayidx81, align 4, !dbg !3554
  %and82 = and i32 %20, 16385, !dbg !3554
  %cmp83 = icmp eq i32 %and82, 16385, !dbg !3554
  call void @llvm.dbg.value(metadata ptr %incdec.ptr86, metadata !3437, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3471
  br i1 %cmp83, label %while.cond79.while.cond79_crit_edge, label %while.end87, !dbg !3555, !llvm.loop !3556

while.end87:                                      ; preds = %while.cond79.while.cond79_crit_edge, %if.end78
  %.lcssa416 = phi i8 [ %14, %if.end78 ], [ %.pre391, %while.cond79.while.cond79_crit_edge ], !dbg !3554
  %cmp89 = icmp eq i8 %.lcssa416, 61, !dbg !3558
  br i1 %cmp89, label %doshell, label %for.cond.preheader, !dbg !3560

for.cond.preheader:                               ; preds = %while.end87
  call void @llvm.dbg.value(metadata ptr %cmd.0.lcssa, metadata !3437, metadata !DIExpression()), !dbg !3471
  %tobool93.not365 = icmp eq i8 %14, 0, !dbg !3561
  br i1 %tobool93.not365, label %for.end, label %for.body, !dbg !3561

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %21 = phi i8 [ %36, %for.inc ], [ %14, %for.cond.preheader ]
  %s.5.idx366 = phi i64 [ %s.5.add, %for.inc ], [ 0, %for.cond.preheader ]
  %conv94 = sext i8 %21 to i32, !dbg !3562
  %cmp95.not = icmp eq i8 %21, 32, !dbg !3563
  br i1 %cmp95.not, label %for.inc, label %land.lhs.true97, !dbg !3564

land.lhs.true97:                                  ; preds = %for.body
  %idxprom98 = zext i8 %21 to i64, !dbg !3565
  %arrayidx99 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom98, !dbg !3565
  %22 = load i32, ptr %arrayidx99, align 4, !dbg !3565
  %and100 = and i32 %22, 16388, !dbg !3565
  %cmp101 = icmp eq i32 %and100, 16388, !dbg !3565
  br i1 %cmp101, label %for.inc, label %land.lhs.true103, !dbg !3566

land.lhs.true103:                                 ; preds = %land.lhs.true97
  %memchr = call ptr @memchr(ptr nonnull @.str.40, i32 %conv94, i64 21), !dbg !3567
  %tobool106.not = icmp eq ptr %memchr, null, !dbg !3567
  br i1 %tobool106.not, label %for.inc, label %if.then107, !dbg !3568

if.then107:                                       ; preds = %land.lhs.true103
  %s.5.ptr.le = getelementptr inbounds i8, ptr %cmd.0.lcssa, i64 %s.5.idx366, !dbg !3471
  switch i8 %21, label %doshell [
    i8 10, label %land.lhs.true111
    i8 62, label %land.lhs.true119
  ], !dbg !3569

land.lhs.true111:                                 ; preds = %if.then107
  %arrayidx112 = getelementptr inbounds i8, ptr %s.5.ptr.le, i64 1, !dbg !3571
  %23 = load i8, ptr %arrayidx112, align 1, !dbg !3571
  %tobool113.not = icmp eq i8 %23, 0, !dbg !3571
  br i1 %tobool113.not, label %for.end.sink.split, label %doshell, !dbg !3572

land.lhs.true119:                                 ; preds = %if.then107
  %arrayidx120 = getelementptr inbounds i8, ptr %s.5.ptr.le, i64 1, !dbg !3573
  %24 = load i8, ptr %arrayidx120, align 1, !dbg !3573
  %cmp122 = icmp eq i8 %24, 38, !dbg !3574
  br i1 %cmp122, label %land.lhs.true124, label %doshell, !dbg !3575

land.lhs.true124:                                 ; preds = %land.lhs.true119
  %arrayidx125 = getelementptr inbounds i8, ptr %s.5.ptr.le, i64 2, !dbg !3576
  %25 = load i8, ptr %arrayidx125, align 1, !dbg !3576
  %cmp127 = icmp eq i8 %25, 49, !dbg !3577
  %cmp131 = icmp ugt i64 %s.5.idx366, 1
  %or.cond = select i1 %cmp127, i1 %cmp131, i1 false, !dbg !3578
  br i1 %or.cond, label %land.lhs.true133, label %doshell, !dbg !3578

land.lhs.true133:                                 ; preds = %land.lhs.true124
  %arrayidx134 = getelementptr inbounds i8, ptr %s.5.ptr.le, i64 -1, !dbg !3579
  %26 = load i8, ptr %arrayidx134, align 1, !dbg !3579
  %cmp136 = icmp eq i8 %26, 50, !dbg !3580
  br i1 %cmp136, label %land.lhs.true138, label %doshell, !dbg !3581

land.lhs.true138:                                 ; preds = %land.lhs.true133
  %arrayidx139 = getelementptr inbounds i8, ptr %s.5.ptr.le, i64 -2, !dbg !3582
  %27 = load i8, ptr %arrayidx139, align 1, !dbg !3582
  %idxprom140 = zext i8 %27 to i64, !dbg !3582
  %arrayidx141 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom140, !dbg !3582
  %28 = load i32, ptr %arrayidx141, align 4, !dbg !3582
  %and142 = and i32 %28, 17408, !dbg !3582
  %cmp143 = icmp eq i32 %and142, 17408, !dbg !3582
  br i1 %cmp143, label %land.lhs.true145, label %doshell, !dbg !3583

land.lhs.true145:                                 ; preds = %land.lhs.true138
  %arrayidx146 = getelementptr inbounds i8, ptr %s.5.ptr.le, i64 3, !dbg !3584
  %29 = load i8, ptr %arrayidx146, align 1, !dbg !3584
  %tobool147.not = icmp eq i8 %29, 0, !dbg !3584
  br i1 %tobool147.not, label %land.lhs.true170, label %lor.lhs.false, !dbg !3585

lor.lhs.false:                                    ; preds = %land.lhs.true145
  %idxprom149 = zext i8 %29 to i64, !dbg !3586
  %arrayidx150 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom149, !dbg !3586
  %30 = load i32, ptr %arrayidx150, align 4, !dbg !3586
  %and151 = and i32 %30, 17408, !dbg !3586
  %cmp152 = icmp eq i32 %and151, 17408, !dbg !3586
  br i1 %cmp152, label %land.rhs159, label %doshell, !dbg !3587

while.cond156:                                    ; preds = %land.rhs159
  %incdec.ptr167 = getelementptr inbounds i8, ptr %t.0370, i64 1, !dbg !3588
  call void @llvm.dbg.value(metadata ptr %t.0370, metadata !3456, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3589
  %31 = load i8, ptr %incdec.ptr167, align 1, !dbg !3590
  %tobool158.not = icmp eq i8 %31, 0, !dbg !3590
  br i1 %tobool158.not, label %land.lhs.true170, label %land.rhs159, !dbg !3591, !llvm.loop !3592

land.rhs159:                                      ; preds = %lor.lhs.false, %while.cond156
  %32 = phi i8 [ %31, %while.cond156 ], [ %29, %lor.lhs.false ]
  %t.0370 = phi ptr [ %incdec.ptr167, %while.cond156 ], [ %arrayidx146, %lor.lhs.false ]
  call void @llvm.dbg.value(metadata ptr %t.0370, metadata !3456, metadata !DIExpression()), !dbg !3589
  %idxprom160 = zext i8 %32 to i64, !dbg !3595
  %arrayidx161 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom160, !dbg !3595
  %33 = load i32, ptr %arrayidx161, align 4, !dbg !3595
  %and162 = and i32 %33, 17408, !dbg !3595
  %cmp163 = icmp eq i32 %and162, 17408, !dbg !3595
  call void @llvm.dbg.value(metadata ptr %t.0370, metadata !3456, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3589
  br i1 %cmp163, label %while.cond156, label %doshell, !dbg !3593

land.lhs.true170:                                 ; preds = %while.cond156, %land.lhs.true145
  %call171 = call i32 @dup2(i32 noundef 1, i32 noundef 2) #11, !dbg !3596
  %cmp172.not = icmp eq i32 %call171, -1, !dbg !3598
  br i1 %cmp172.not, label %doshell, label %for.end.sink.split, !dbg !3599

doshell:                                          ; preds = %land.rhs159, %if.then107, %land.lhs.true170, %land.lhs.true111, %land.lhs.true119, %land.lhs.true124, %land.lhs.true133, %land.lhs.true138, %lor.lhs.false, %while.end87, %land.lhs.true70, %land.lhs.true59, %if.then240
  call void @llvm.dbg.label(metadata !3470), !dbg !3600
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xfpe181) #11, !dbg !3601
  %34 = load ptr, ptr @PL_sigfpe_saved, align 8, !dbg !3601
  call void @llvm.dbg.value(metadata ptr %xfpe181, metadata !3464, metadata !DIExpression(DW_OP_deref)), !dbg !3602
  %call182 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %34, ptr noundef nonnull %xfpe181) #11, !dbg !3601
  %call183 = call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @PL_sh_path, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36, ptr noundef nonnull %cmd.0.lcssa, ptr noundef null) #11, !dbg !3603
  %call184 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %xfpe181) #11, !dbg !3604
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xfpe181) #11, !dbg !3605
  call void @llvm.dbg.value(metadata ptr @PL_sh_path, metadata !3375, metadata !DIExpression()) #11, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %fd, metadata !3380, metadata !DIExpression()) #11, !dbg !3606
  call void @llvm.dbg.value(metadata i32 %do_report, metadata !3381, metadata !DIExpression()) #11, !dbg !3606
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e.i329) #11, !dbg !3608
  %call.i330 = tail call ptr @__errno_location() #13, !dbg !3609
  %35 = load i32, ptr %call.i330, align 4, !dbg !3609
  call void @llvm.dbg.value(metadata i32 %35, metadata !3382, metadata !DIExpression()) #11, !dbg !3606
  store i32 %35, ptr %e.i329, align 4, !dbg !3610
  %call1.i331 = call zeroext i1 @Perl_ckwarn(i32 noundef 7) #11, !dbg !3611
  br i1 %call1.i331, label %if.then.i333, label %if.end.i335, !dbg !3612

if.then.i333:                                     ; preds = %doshell
  call void @llvm.dbg.value(metadata i32 %35, metadata !3382, metadata !DIExpression()) #11, !dbg !3606
  %call2.i332 = call ptr @strerror(i32 noundef %35) #11, !dbg !3613
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 7, ptr noundef nonnull @.str.59, ptr noundef nonnull @PL_sh_path, ptr noundef %call2.i332) #11, !dbg !3614
  br label %if.end.i335, !dbg !3614

if.end.i335:                                      ; preds = %if.then.i333, %doshell
  %tobool.not.i334 = icmp eq i32 %do_report, 0, !dbg !3615
  br i1 %tobool.not.i334, label %S_exec_failed.exit339, label %if.then3.i338, !dbg !3616

if.then3.i338:                                    ; preds = %if.end.i335
  call void @llvm.dbg.value(metadata ptr %e.i329, metadata !3382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3606
  %call4.i336 = call i64 @write(i32 noundef %fd, ptr noundef nonnull %e.i329, i64 noundef 4) #11, !dbg !3617
  %call5.i337 = call i32 @close(i32 noundef %fd) #11, !dbg !3618
  br label %S_exec_failed.exit339, !dbg !3619

S_exec_failed.exit339:                            ; preds = %if.end.i335, %if.then3.i338
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e.i329) #11, !dbg !3620
  call void @Perl_safesysfree(ptr noundef nonnull %call1) #11, !dbg !3621
  br label %cleanup244, !dbg !3622

for.inc:                                          ; preds = %for.body, %land.lhs.true97, %land.lhs.true103
  %s.5.add = add nuw nsw i64 %s.5.idx366, 1, !dbg !3623
  call void @llvm.dbg.value(metadata !DIArgList(ptr %cmd.0.lcssa, i64 %s.5.add), metadata !3437, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3471
  %s.5.ptr = getelementptr inbounds i8, ptr %cmd.0.lcssa, i64 %s.5.add, !dbg !3471
  call void @llvm.dbg.value(metadata ptr %s.5.ptr, metadata !3437, metadata !DIExpression()), !dbg !3471
  %36 = load i8, ptr %s.5.ptr, align 1, !dbg !3624
  %tobool93.not = icmp eq i8 %36, 0, !dbg !3561
  br i1 %tobool93.not, label %for.end, label %for.body, !dbg !3561, !llvm.loop !3625

for.end.sink.split:                               ; preds = %land.lhs.true170, %land.lhs.true111
  %arrayidx139.sink = phi ptr [ %s.5.ptr.le, %land.lhs.true111 ], [ %arrayidx139, %land.lhs.true170 ]
  store i8 0, ptr %arrayidx139.sink, align 1, !dbg !3627
  br label %for.end, !dbg !3628

for.end:                                          ; preds = %for.inc, %for.end.sink.split, %for.cond.preheader
  %s.5.idx359 = phi i64 [ 0, %for.cond.preheader ], [ %s.5.idx366, %for.end.sink.split ], [ %s.5.add, %for.inc ]
  %37 = shl i64 %s.5.idx359, 2, !dbg !3628
  %38 = add i64 %37, 16, !dbg !3628
  %mul188 = and i64 %38, -8, !dbg !3628
  %call189 = call ptr @Perl_safesysmalloc(i64 noundef %mul188) #11, !dbg !3628
  store ptr %call189, ptr @PL_Argv, align 8, !dbg !3628
  %conv193 = trunc i64 %s.5.idx359 to i32, !dbg !3629
  %call194 = call ptr @Perl_savepvn(ptr noundef nonnull %cmd.0.lcssa, i32 noundef %conv193) #11, !dbg !3629
  store ptr %call194, ptr @PL_Cmd, align 8, !dbg !3630
  %39 = load ptr, ptr @PL_Argv, align 8, !dbg !3631
  call void @llvm.dbg.value(metadata ptr %39, metadata !3436, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %call194, metadata !3437, metadata !DIExpression()), !dbg !3471
  %40 = load i8, ptr %call194, align 1, !dbg !3632
  %tobool196.not381 = icmp eq i8 %40, 0, !dbg !3635
  br i1 %tobool196.not381, label %for.end228, label %while.cond198.preheader, !dbg !3635

while.cond198.preheader:                          ; preds = %for.end, %if.end227
  %41 = phi i8 [ %.pre393, %if.end227 ], [ %40, %for.end ]
  %a.0383 = phi ptr [ %incdec.ptr209, %if.end227 ], [ %39, %for.end ]
  %s.6382 = phi ptr [ %incdec.ptr226, %if.end227 ], [ %call194, %for.end ]
  call void @llvm.dbg.value(metadata ptr %a.0383, metadata !3436, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %s.6382, metadata !3437, metadata !DIExpression()), !dbg !3471
  %idxprom199371 = zext i8 %41 to i64, !dbg !3636
  %arrayidx200372 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom199371, !dbg !3636
  %42 = load i32, ptr %arrayidx200372, align 4, !dbg !3636
  %and201373 = and i32 %42, 17408, !dbg !3636
  %cmp202374 = icmp eq i32 %and201373, 17408, !dbg !3636
  br i1 %cmp202374, label %while.body204, label %if.end210, !dbg !3638

while.body204:                                    ; preds = %while.cond198.preheader, %while.body204
  %s.7375 = phi ptr [ %incdec.ptr205, %while.body204 ], [ %s.6382, %while.cond198.preheader ]
  call void @llvm.dbg.value(metadata ptr %s.7375, metadata !3437, metadata !DIExpression()), !dbg !3471
  %incdec.ptr205 = getelementptr inbounds i8, ptr %s.7375, i64 1, !dbg !3639
  call void @llvm.dbg.value(metadata ptr %incdec.ptr205, metadata !3437, metadata !DIExpression()), !dbg !3471
  %.pr = load i8, ptr %incdec.ptr205, align 1, !dbg !3636
  %idxprom199 = zext i8 %.pr to i64, !dbg !3636
  %arrayidx200 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom199, !dbg !3636
  %43 = load i32, ptr %arrayidx200, align 4, !dbg !3636
  %and201 = and i32 %43, 17408, !dbg !3636
  %cmp202 = icmp eq i32 %and201, 17408, !dbg !3636
  br i1 %cmp202, label %while.body204, label %while.end206, !dbg !3638, !llvm.loop !3640

while.end206:                                     ; preds = %while.body204
  %tobool207.not = icmp eq i8 %.pr, 0, !dbg !3641
  br i1 %tobool207.not, label %for.end228, label %if.end210, !dbg !3643

if.end210:                                        ; preds = %while.cond198.preheader, %while.end206
  %s.7.lcssa397 = phi ptr [ %incdec.ptr205, %while.end206 ], [ %s.6382, %while.cond198.preheader ]
  %incdec.ptr209 = getelementptr inbounds ptr, ptr %a.0383, i64 1, !dbg !3644
  call void @llvm.dbg.value(metadata ptr %incdec.ptr209, metadata !3436, metadata !DIExpression()), !dbg !3471
  store ptr %s.7.lcssa397, ptr %a.0383, align 8, !dbg !3645
  %.pre392 = load i8, ptr %s.7.lcssa397, align 1, !dbg !3646
  call void @llvm.dbg.value(metadata ptr %incdec.ptr205, metadata !3437, metadata !DIExpression()), !dbg !3471
  %tobool213.not378 = icmp eq i8 %.pre392, 0, !dbg !3646
  br i1 %tobool213.not378, label %for.end228, label %land.rhs214, !dbg !3647

land.rhs214:                                      ; preds = %if.end210, %while.body221
  %44 = phi i8 [ %46, %while.body221 ], [ %.pre392, %if.end210 ]
  %s.8379 = phi ptr [ %incdec.ptr226, %while.body221 ], [ %s.7.lcssa397, %if.end210 ]
  call void @llvm.dbg.value(metadata ptr %s.8379, metadata !3437, metadata !DIExpression()), !dbg !3471
  %idxprom215 = zext i8 %44 to i64, !dbg !3648
  %arrayidx216 = getelementptr inbounds [0 x i32], ptr @PL_charclass, i64 0, i64 %idxprom215, !dbg !3648
  %45 = load i32, ptr %arrayidx216, align 4, !dbg !3648
  %and217 = and i32 %45, 17408, !dbg !3648
  %cmp218.not = icmp eq i32 %and217, 17408, !dbg !3648
  %incdec.ptr226 = getelementptr inbounds i8, ptr %s.8379, i64 1, !dbg !3649
  call void @llvm.dbg.value(metadata ptr %incdec.ptr226, metadata !3437, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata ptr %incdec.ptr226, metadata !3437, metadata !DIExpression()), !dbg !3471
  br i1 %cmp218.not, label %if.end227, label %while.body221, !dbg !3650

while.body221:                                    ; preds = %land.rhs214
  %46 = load i8, ptr %incdec.ptr226, align 1, !dbg !3646
  %tobool213.not = icmp eq i8 %46, 0, !dbg !3646
  br i1 %tobool213.not, label %for.end228, label %land.rhs214, !dbg !3647, !llvm.loop !3651

if.end227:                                        ; preds = %land.rhs214
  store i8 0, ptr %s.8379, align 1, !dbg !3653
  %.pre393 = load i8, ptr %incdec.ptr226, align 1, !dbg !3632
  call void @llvm.dbg.value(metadata ptr %incdec.ptr209, metadata !3436, metadata !DIExpression()), !dbg !3471
  %tobool196.not = icmp eq i8 %.pre393, 0, !dbg !3635
  br i1 %tobool196.not, label %for.end228, label %while.cond198.preheader, !dbg !3635, !llvm.loop !3655

for.end228:                                       ; preds = %while.end206, %if.end210, %if.end227, %while.body221, %for.end
  %a.0.lcssa = phi ptr [ %39, %for.end ], [ %incdec.ptr209, %while.body221 ], [ %a.0383, %while.end206 ], [ %incdec.ptr209, %if.end210 ], [ %incdec.ptr209, %if.end227 ], !dbg !3471
  store ptr null, ptr %a.0.lcssa, align 8, !dbg !3657
  %47 = load ptr, ptr @PL_Argv, align 8, !dbg !3658
  %48 = load ptr, ptr %47, align 8, !dbg !3658
  %tobool230.not = icmp eq ptr %48, null, !dbg !3658
  br i1 %tobool230.not, label %if.end243, label %if.then231, !dbg !3659

if.then231:                                       ; preds = %for.end228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xfpe232) #11, !dbg !3660
  %49 = load ptr, ptr @PL_sigfpe_saved, align 8, !dbg !3660
  call void @llvm.dbg.value(metadata ptr %xfpe232, metadata !3466, metadata !DIExpression(DW_OP_deref)), !dbg !3661
  %call233 = call i32 @Perl_rsignal_save(i32 noundef 8, ptr noundef %49, ptr noundef nonnull %xfpe232) #11, !dbg !3660
  %50 = load ptr, ptr @PL_Argv, align 8, !dbg !3662
  %51 = load ptr, ptr %50, align 8, !dbg !3662
  %call235 = call i32 @execvp(ptr noundef %51, ptr noundef nonnull %50) #11, !dbg !3662
  %call236 = call i32 @Perl_rsignal_restore(i32 noundef 8, ptr noundef nonnull %xfpe232) #11, !dbg !3663
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xfpe232) #11, !dbg !3664
  %call237 = tail call ptr @__errno_location() #13, !dbg !3665
  %52 = load i32, ptr %call237, align 4, !dbg !3665
  %cmp238 = icmp eq i32 %52, 8, !dbg !3667
  %53 = load ptr, ptr @PL_Argv, align 8, !dbg !3668
  br i1 %cmp238, label %if.then240, label %if.end241, !dbg !3669

if.then240:                                       ; preds = %if.then231
  call void @Perl_safesysfree(ptr noundef %53) #11, !dbg !3670
  store ptr null, ptr @PL_Argv, align 8, !dbg !3673
  %54 = load ptr, ptr @PL_Cmd, align 8, !dbg !3674
  call void @Perl_safesysfree(ptr noundef %54) #11, !dbg !3674
  store ptr null, ptr @PL_Cmd, align 8, !dbg !3675
  br label %doshell, !dbg !3676

if.end241:                                        ; preds = %if.then231
  %55 = load ptr, ptr %53, align 8, !dbg !3677
  call void @llvm.dbg.value(metadata ptr %55, metadata !3375, metadata !DIExpression()) #11, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %fd, metadata !3380, metadata !DIExpression()) #11, !dbg !3678
  call void @llvm.dbg.value(metadata i32 %do_report, metadata !3381, metadata !DIExpression()) #11, !dbg !3678
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %e.i340) #11, !dbg !3680
  call void @llvm.dbg.value(metadata i32 %52, metadata !3382, metadata !DIExpression()) #11, !dbg !3678
  store i32 %52, ptr %e.i340, align 4, !dbg !3681
  %call1.i342 = call zeroext i1 @Perl_ckwarn(i32 noundef 7) #11, !dbg !3682
  br i1 %call1.i342, label %if.then.i344, label %if.end.i346, !dbg !3683

if.then.i344:                                     ; preds = %if.end241
  call void @llvm.dbg.value(metadata i32 %52, metadata !3382, metadata !DIExpression()) #11, !dbg !3678
  %call2.i343 = call ptr @strerror(i32 noundef %52) #11, !dbg !3684
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 7, ptr noundef nonnull @.str.59, ptr noundef %55, ptr noundef %call2.i343) #11, !dbg !3685
  br label %if.end.i346, !dbg !3685

if.end.i346:                                      ; preds = %if.then.i344, %if.end241
  %tobool.not.i345 = icmp eq i32 %do_report, 0, !dbg !3686
  br i1 %tobool.not.i345, label %S_exec_failed.exit350, label %if.then3.i349, !dbg !3687

if.then3.i349:                                    ; preds = %if.end.i346
  call void @llvm.dbg.value(metadata ptr %e.i340, metadata !3382, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3678
  %call4.i347 = call i64 @write(i32 noundef %fd, ptr noundef nonnull %e.i340, i64 noundef 4) #11, !dbg !3688
  %call5.i348 = call i32 @close(i32 noundef %fd) #11, !dbg !3689
  br label %S_exec_failed.exit350, !dbg !3690

S_exec_failed.exit350:                            ; preds = %if.end.i346, %if.then3.i349
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %e.i340) #11, !dbg !3691
  %.pre394 = load ptr, ptr @PL_Argv, align 8, !dbg !3692
  br label %if.end243, !dbg !3694

if.end243:                                        ; preds = %S_exec_failed.exit350, %for.end228
  %56 = phi ptr [ %.pre394, %S_exec_failed.exit350 ], [ %47, %for.end228 ], !dbg !3692
  call void @Perl_safesysfree(ptr noundef %56) #11, !dbg !3692
  store ptr null, ptr @PL_Argv, align 8, !dbg !3695
  %57 = load ptr, ptr @PL_Cmd, align 8, !dbg !3696
  call void @Perl_safesysfree(ptr noundef %57) #11, !dbg !3696
  store ptr null, ptr @PL_Cmd, align 8, !dbg !3697
  call void @Perl_safesysfree(ptr noundef nonnull %call1) #11, !dbg !3698
  br label %cleanup244, !dbg !3699

cleanup244:                                       ; preds = %S_exec_failed.exit, %if.end243, %S_exec_failed.exit339
  ret i1 false, !dbg !3700
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !3701 i64 @Perl_my_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !3704 i64 @Perl_my_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !3705 i32 @execl(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3708 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_apply(i32 noundef %type, ptr noundef %mark, ptr noundef %sp) local_unnamed_addr #0 !dbg !3711 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %type, metadata !3715, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %mark, metadata !3716, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %sp, metadata !3717, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 0, metadata !3719, metadata !DIExpression()), !dbg !3733
  %idxprom = sext i32 %type to i64, !dbg !3734
  %arrayidx = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %idxprom, !dbg !3734
  %0 = load ptr, ptr %arrayidx, align 8, !dbg !3734
  call void @llvm.dbg.value(metadata ptr %0, metadata !3720, metadata !DIExpression()), !dbg !3733
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #11, !dbg !3735
  call void @llvm.dbg.value(metadata ptr %mark, metadata !3723, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i8 0, metadata !3724, metadata !DIExpression()), !dbg !3733
  switch i32 %type, label %if.end4 [
    i32 316, label %if.end4.sink.split
    i32 294, label %if.end4.sink.split
  ], !dbg !3736

if.end4.sink.split:                               ; preds = %entry, %entry
  %call = tail call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef %0) #11, !dbg !3733
  br label %if.end4, !dbg !3737

if.end4:                                          ; preds = %if.end4.sink.split, %entry
  %1 = load i8, ptr @PL_tainting, align 1, !dbg !3737, !range !1370
  %tobool.not = icmp eq i8 %1, 0, !dbg !3737
  %incdec.ptr350 = getelementptr inbounds ptr, ptr %mark, i64 1
  %cmp6.not351 = icmp ugt ptr %incdec.ptr350, %sp
  %or.cond365 = select i1 %tobool.not, i1 true, i1 %cmp6.not351, !dbg !3739
  call void @llvm.dbg.value(metadata ptr %mark, metadata !3716, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %incdec.ptr350, metadata !3716, metadata !DIExpression()), !dbg !3733
  br i1 %or.cond365, label %if.end11, label %while.body, !dbg !3739

while.body:                                       ; preds = %if.end4, %if.end10
  %incdec.ptr352 = phi ptr [ %incdec.ptr, %if.end10 ], [ %incdec.ptr350, %if.end4 ]
  %2 = load ptr, ptr %incdec.ptr352, align 8, !dbg !3740
  %sv_flags = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2, !dbg !3740
  %3 = load i32, ptr %sv_flags, align 4, !dbg !3740
  %and = and i32 %3, 14680064, !dbg !3740
  %tobool7.not = icmp eq i32 %and, 0, !dbg !3740
  br i1 %tobool7.not, label %if.end10, label %land.lhs.true, !dbg !3740

land.lhs.true:                                    ; preds = %while.body
  %call8 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %2) #11, !dbg !3740
  br i1 %call8, label %if.then9, label %if.end10, !dbg !3744

if.then9:                                         ; preds = %land.lhs.true
  store i8 1, ptr @PL_tainted, align 1, !dbg !3745
  br label %if.end11, !dbg !3747

if.end10:                                         ; preds = %land.lhs.true, %while.body
  call void @llvm.dbg.value(metadata ptr %incdec.ptr352, metadata !3716, metadata !DIExpression()), !dbg !3733
  %incdec.ptr = getelementptr inbounds ptr, ptr %incdec.ptr352, i64 1, !dbg !3748
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3716, metadata !DIExpression()), !dbg !3733
  %cmp6.not = icmp ugt ptr %incdec.ptr, %sp, !dbg !3749
  br i1 %cmp6.not, label %if.end11, label %while.body, !dbg !3750, !llvm.loop !3751

if.end11:                                         ; preds = %if.end10, %if.then9, %if.end4
  call void @llvm.dbg.value(metadata ptr %mark, metadata !3716, metadata !DIExpression()), !dbg !3733
  switch i32 %type, label %sw.epilog [
    i32 297, label %do.body
    i32 296, label %do.body180
  ], !dbg !3753

do.body:                                          ; preds = %if.end11
  %4 = load i8, ptr @PL_tainted, align 1, !dbg !3754, !range !1370
  %tobool12.not = icmp eq i8 %4, 0, !dbg !3754
  %5 = load i8, ptr @PL_tainting, align 1
  %tobool14.not = icmp eq i8 %5, 0
  %or.cond = select i1 %tobool12.not, i1 true, i1 %tobool14.not, !dbg !3757
  br i1 %or.cond, label %do.end, label %if.then15, !dbg !3757

if.then15:                                        ; preds = %do.body
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef %0) #11, !dbg !3758
  br label %do.end, !dbg !3758

do.end:                                           ; preds = %if.then15, %do.body
  call void @llvm.dbg.value(metadata ptr %incdec.ptr350, metadata !3716, metadata !DIExpression()), !dbg !3733
  br i1 %cmp6.not351, label %sw.epilog, label %if.then20, !dbg !3762

if.then20:                                        ; preds = %do.end
  %6 = load ptr, ptr %incdec.ptr350, align 8, !dbg !3763
  %sv_flags21 = getelementptr inbounds %struct.sv, ptr %6, i64 0, i32 2, !dbg !3763
  %7 = load i32, ptr %sv_flags21, align 4, !dbg !3763
  %and22 = and i32 %7, 2097408, !dbg !3763
  %cmp23 = icmp eq i32 %and22, 256, !dbg !3763
  br i1 %cmp23, label %cond.true24, label %cond.false25, !dbg !3763

cond.true24:                                      ; preds = %if.then20
  %8 = load ptr, ptr %6, align 8, !dbg !3763
  %xiv_u = getelementptr inbounds %struct.xpviv, ptr %8, i64 0, i32 4, !dbg !3763
  %9 = load i64, ptr %xiv_u, align 8, !dbg !3763
  br label %cond.end, !dbg !3763

cond.false25:                                     ; preds = %if.then20
  %call26 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %6, i32 noundef 2) #11, !dbg !3763
  br label %cond.end, !dbg !3763

cond.end:                                         ; preds = %cond.false25, %cond.true24
  %cond = phi i64 [ %9, %cond.true24 ], [ %call26, %cond.false25 ], !dbg !3763
  %conv = trunc i64 %cond to i32, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %conv, metadata !3718, metadata !DIExpression()), !dbg !3733
  %10 = load i8, ptr @PL_tainted, align 1, !dbg !3764, !range !1370
  %tobool28.not = icmp eq i8 %10, 0, !dbg !3764
  %11 = load i8, ptr @PL_tainting, align 1
  %tobool30.not = icmp eq i8 %11, 0
  %or.cond327 = select i1 %tobool28.not, i1 true, i1 %tobool30.not, !dbg !3767
  br i1 %or.cond327, label %do.end38, label %if.then34, !dbg !3767

if.then34:                                        ; preds = %cond.end
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef %0) #11, !dbg !3768
  br label %do.end38, !dbg !3768

do.end38:                                         ; preds = %if.then34, %cond.end
  %sub.ptr.lhs.cast = ptrtoint ptr %sp to i64, !dbg !3772
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr350 to i64, !dbg !3772
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3772
  %12 = lshr exact i64 %sub.ptr.sub, 3, !dbg !3772
  %conv39 = trunc i64 %12 to i32, !dbg !3773
  call void @llvm.dbg.value(metadata i32 %conv39, metadata !3719, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %incdec.ptr350, metadata !3716, metadata !DIExpression()), !dbg !3733
  %incdec.ptr41357 = getelementptr inbounds ptr, ptr %mark, i64 2, !dbg !3774
  call void @llvm.dbg.value(metadata ptr %incdec.ptr41357, metadata !3716, metadata !DIExpression()), !dbg !3733
  %cmp42.not358 = icmp ugt ptr %incdec.ptr41357, %sp, !dbg !3775
  br i1 %cmp42.not358, label %sw.epilog, label %while.body44, !dbg !3776

while.body44:                                     ; preds = %do.end38, %if.end176
  %incdec.ptr41363 = phi ptr [ %incdec.ptr41, %if.end176 ], [ %incdec.ptr41357, %do.end38 ]
  %tot.0359 = phi i32 [ %tot.2, %if.end176 ], [ %conv39, %do.end38 ]
  call void @llvm.dbg.value(metadata i32 %tot.0359, metadata !3719, metadata !DIExpression()), !dbg !3733
  %13 = load ptr, ptr %incdec.ptr41363, align 8, !dbg !3777
  %sv_flags45 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2, !dbg !3777
  %14 = load i32, ptr %sv_flags45, align 4, !dbg !3777
  %and46 = and i32 %14, 2097152, !dbg !3777
  %tobool47.not = icmp eq i32 %and46, 0, !dbg !3777
  br i1 %tobool47.not, label %land.end, label %land.rhs, !dbg !3777

land.rhs:                                         ; preds = %while.body44
  %call50 = call i32 @Perl_mg_get(ptr noundef nonnull %13) #11, !dbg !3777
  %.pre = load ptr, ptr %incdec.ptr41363, align 8, !dbg !3777
  %sv_flags52.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre, i64 0, i32 2
  %.pre367 = load i32, ptr %sv_flags52.phi.trans.insert, align 4, !dbg !3777
  br label %land.end

land.end:                                         ; preds = %while.body44, %land.rhs
  %15 = phi i32 [ %14, %while.body44 ], [ %.pre367, %land.rhs ], !dbg !3777
  %16 = phi ptr [ %13, %while.body44 ], [ %.pre, %land.rhs ], !dbg !3777
  %and53 = and i32 %15, 49152, !dbg !3777
  %cmp54 = icmp eq i32 %and53, 32768, !dbg !3777
  br i1 %cmp54, label %land.lhs.true56, label %cond.false66, !dbg !3777

land.lhs.true56:                                  ; preds = %land.end
  %and58 = and i32 %15, 255, !dbg !3777
  %and58.off = add nsw i32 %and58, -9, !dbg !3777
  %switch = icmp ult i32 %and58.off, 2, !dbg !3777
  br i1 %switch, label %land.lhs.true126, label %cond.false66, !dbg !3777

cond.false66:                                     ; preds = %land.lhs.true56, %land.end
  %and68 = and i32 %15, 2048, !dbg !3777
  %tobool69.not = icmp eq i32 %and68, 0, !dbg !3777
  br i1 %tobool69.not, label %if.else144, label %land.lhs.true70, !dbg !3777

land.lhs.true70:                                  ; preds = %cond.false66
  %sv_u = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 3, !dbg !3777
  %17 = load ptr, ptr %sv_u, align 8, !dbg !3777
  %sv_flags71 = getelementptr inbounds %struct.sv, ptr %17, i64 0, i32 2, !dbg !3777
  %18 = load i32, ptr %sv_flags71, align 4, !dbg !3777
  %and72 = and i32 %18, 255, !dbg !3777
  %cmp73 = icmp ult i32 %and72, 11, !dbg !3777
  br i1 %cmp73, label %land.lhs.true75, label %if.else144, !dbg !3777

land.lhs.true75:                                  ; preds = %land.lhs.true70
  %and78 = and i32 %18, 2097152, !dbg !3777
  %tobool79.not = icmp eq i32 %and78, 0, !dbg !3777
  br i1 %tobool79.not, label %land.end86, label %land.rhs82, !dbg !3777

land.rhs82:                                       ; preds = %land.lhs.true75
  %call84 = call i32 @Perl_mg_get(ptr noundef nonnull %17) #11, !dbg !3777
  %.pre368 = load ptr, ptr %incdec.ptr41363, align 8, !dbg !3777
  %sv_u88.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre368, i64 0, i32 3
  %.pre369 = load ptr, ptr %sv_u88.phi.trans.insert, align 8, !dbg !3777
  %sv_flags89.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre369, i64 0, i32 2
  %.pre370 = load i32, ptr %sv_flags89.phi.trans.insert, align 4, !dbg !3777
  br label %land.end86

land.end86:                                       ; preds = %land.lhs.true75, %land.rhs82
  %19 = phi i32 [ %18, %land.lhs.true75 ], [ %.pre370, %land.rhs82 ], !dbg !3777
  %20 = phi ptr [ %17, %land.lhs.true75 ], [ %.pre369, %land.rhs82 ], !dbg !3777
  %21 = phi ptr [ %16, %land.lhs.true75 ], [ %.pre368, %land.rhs82 ], !dbg !3777
  %and90 = and i32 %19, 49152, !dbg !3777
  %cmp91 = icmp eq i32 %and90, 32768, !dbg !3777
  br i1 %cmp91, label %land.rhs93, label %if.else144, !dbg !3777

land.rhs93:                                       ; preds = %land.end86
  %and96 = and i32 %19, 255, !dbg !3777
  %and96.off = add nsw i32 %and96, -9, !dbg !3777
  %switch332 = icmp ult i32 %and96.off, 2, !dbg !3777
  br i1 %switch332, label %land.lhs.true126, label %if.else144, !dbg !3777

land.lhs.true126:                                 ; preds = %land.lhs.true56, %land.rhs93
  %cond112 = phi ptr [ %20, %land.rhs93 ], [ %16, %land.lhs.true56 ], !dbg !3777
  call void @llvm.dbg.value(metadata ptr %cond112, metadata !3725, metadata !DIExpression()), !dbg !3778
  %sv_u127 = getelementptr inbounds %struct.gv, ptr %cond112, i64 0, i32 3, !dbg !3779
  %22 = load ptr, ptr %sv_u127, align 8, !dbg !3779
  %tobool128.not = icmp eq ptr %22, null, !dbg !3779
  br i1 %tobool128.not, label %if.else, label %cond.true129, !dbg !3782

cond.true129:                                     ; preds = %land.lhs.true126
  %gp_io = getelementptr inbounds %struct.gp, ptr %22, i64 0, i32 1, !dbg !3779
  %23 = load ptr, ptr %gp_io, align 8, !dbg !3779
  %tobool132.not = icmp eq ptr %23, null, !dbg !3779
  br i1 %tobool132.not, label %if.else, label %land.lhs.true134, !dbg !3779

land.lhs.true134:                                 ; preds = %cond.true129
  %sv_u138 = getelementptr inbounds %struct.io, ptr %23, i64 0, i32 3, !dbg !3783
  %24 = load ptr, ptr %sv_u138, align 8, !dbg !3783
  %tobool139.not = icmp eq ptr %24, null, !dbg !3783
  br i1 %tobool139.not, label %if.else, label %if.then140, !dbg !3784

if.then140:                                       ; preds = %land.lhs.true134
  %call141 = call ptr (ptr, ...) @Perl_die(ptr noundef nonnull @PL_no_func, ptr noundef nonnull @.str.42) #11, !dbg !3785
  br label %if.end176, !dbg !3787

if.else:                                          ; preds = %land.lhs.true126, %land.lhs.true134, %cond.true129
  %call142 = tail call ptr @__errno_location() #13, !dbg !3788
  store i32 9, ptr %call142, align 4, !dbg !3788
  %dec = add nsw i32 %tot.0359, -1, !dbg !3790
  call void @llvm.dbg.value(metadata i32 %dec, metadata !3719, metadata !DIExpression()), !dbg !3733
  br label %if.end176

if.else144:                                       ; preds = %land.end86, %land.lhs.true70, %cond.false66, %land.rhs93
  %25 = phi ptr [ %21, %land.end86 ], [ %16, %land.lhs.true70 ], [ %16, %cond.false66 ], [ %21, %land.rhs93 ], !dbg !3791
  call void @llvm.dbg.value(metadata ptr %cond112, metadata !3725, metadata !DIExpression()), !dbg !3778
  %sv_flags145 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 2, !dbg !3791
  %26 = load i32, ptr %sv_flags145, align 4, !dbg !3791
  %and146 = and i32 %26, 2098176, !dbg !3791
  %cmp147 = icmp eq i32 %and146, 1024, !dbg !3791
  br i1 %cmp147, label %cond.true149, label %cond.false153, !dbg !3791

cond.true149:                                     ; preds = %if.else144
  %27 = load ptr, ptr %25, align 8, !dbg !3791
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %27, i64 0, i32 2, !dbg !3791
  %28 = load i64, ptr %xpv_cur, align 8, !dbg !3791
  call void @llvm.dbg.value(metadata i64 %28, metadata !3722, metadata !DIExpression()), !dbg !3733
  store i64 %28, ptr %len, align 8, !dbg !3791
  %sv_u151 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3, !dbg !3791
  %29 = load ptr, ptr %sv_u151, align 8, !dbg !3791
  br label %cond.end155, !dbg !3791

cond.false153:                                    ; preds = %if.else144
  call void @llvm.dbg.value(metadata ptr %len, metadata !3722, metadata !DIExpression(DW_OP_deref)), !dbg !3733
  %call154 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %25, ptr noundef nonnull %len, i32 noundef 32) #11, !dbg !3791
  br label %cond.end155, !dbg !3791

cond.end155:                                      ; preds = %cond.false153, %cond.true149
  %cond156 = phi ptr [ %29, %cond.true149 ], [ %call154, %cond.false153 ], !dbg !3791
  call void @llvm.dbg.value(metadata ptr %cond156, metadata !3730, metadata !DIExpression()), !dbg !3792
  %30 = load i8, ptr @PL_tainted, align 1, !dbg !3793, !range !1370
  %tobool158.not = icmp eq i8 %30, 0, !dbg !3793
  %31 = load i8, ptr @PL_tainting, align 1
  %tobool160.not = icmp eq i8 %31, 0
  %or.cond328 = select i1 %tobool158.not, i1 true, i1 %tobool160.not, !dbg !3796
  br i1 %or.cond328, label %do.end168, label %if.then164, !dbg !3796

if.then164:                                       ; preds = %cond.end155
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %0) #11, !dbg !3797
  br label %do.end168, !dbg !3797

do.end168:                                        ; preds = %if.then164, %cond.end155
  %32 = load i64, ptr %len, align 8, !dbg !3801
  call void @llvm.dbg.value(metadata i64 %32, metadata !3722, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %cond156, metadata !1320, metadata !DIExpression()) #11, !dbg !3803
  call void @llvm.dbg.value(metadata i64 %32, metadata !1326, metadata !DIExpression()) #11, !dbg !3803
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !1327, metadata !DIExpression()) #11, !dbg !3803
  call void @llvm.dbg.value(metadata ptr @.str.43, metadata !1328, metadata !DIExpression()) #11, !dbg !3803
  %cmp.i = icmp ugt i64 %32, 1, !dbg !3805
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false170, !dbg !3806

if.then.i:                                        ; preds = %do.end168
  %sub.i = add i64 %32, -1, !dbg !3807
  %call.i = call ptr @memchr(ptr noundef %cond156, i32 noundef 0, i64 noundef %sub.i) #12, !dbg !3807
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1329, metadata !DIExpression()) #11, !dbg !3808
  %cmp1.not.i = icmp eq ptr %call.i, null, !dbg !3807
  br i1 %cmp1.not.i, label %lor.lhs.false170, label %S_is_safe_syscall.exit, !dbg !3809

S_is_safe_syscall.exit:                           ; preds = %if.then.i
  %call3.i = tail call ptr @__errno_location() #13, !dbg !3810
  store i32 2, ptr %call3.i, align 4, !dbg !3810
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i, i64 1, !dbg !3811
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.43, ptr noundef %cond156, ptr noundef nonnull %add.ptr.i) #11, !dbg !3812
  br label %if.then173, !dbg !3813

lor.lhs.false170:                                 ; preds = %do.end168, %if.then.i
  %call171 = call i32 @chmod(ptr noundef %cond156, i32 noundef %conv) #11, !dbg !3814
  %tobool172.not = icmp eq i32 %call171, 0, !dbg !3814
  br i1 %tobool172.not, label %if.end176, label %if.then173, !dbg !3815

if.then173:                                       ; preds = %S_is_safe_syscall.exit, %lor.lhs.false170
  %dec174 = add nsw i32 %tot.0359, -1, !dbg !3816
  call void @llvm.dbg.value(metadata i32 %dec174, metadata !3719, metadata !DIExpression()), !dbg !3733
  br label %if.end176, !dbg !3818

if.end176:                                        ; preds = %lor.lhs.false170, %if.then173, %if.then140, %if.else
  %tot.2 = phi i32 [ %tot.0359, %if.then140 ], [ %dec, %if.else ], [ %dec174, %if.then173 ], [ %tot.0359, %lor.lhs.false170 ], !dbg !3819
  call void @llvm.dbg.value(metadata ptr %incdec.ptr41363, metadata !3716, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %tot.2, metadata !3719, metadata !DIExpression()), !dbg !3733
  %incdec.ptr41 = getelementptr inbounds ptr, ptr %incdec.ptr41363, i64 1, !dbg !3774
  call void @llvm.dbg.value(metadata ptr %incdec.ptr41, metadata !3716, metadata !DIExpression()), !dbg !3733
  %cmp42.not = icmp ugt ptr %incdec.ptr41, %sp, !dbg !3775
  br i1 %cmp42.not, label %sw.epilog, label %while.body44, !dbg !3776, !llvm.loop !3820

do.body180:                                       ; preds = %if.end11
  %33 = load i8, ptr @PL_tainted, align 1, !dbg !3822, !range !1370
  %tobool181.not = icmp eq i8 %33, 0, !dbg !3822
  %34 = load i8, ptr @PL_tainting, align 1
  %tobool183.not = icmp eq i8 %34, 0
  %or.cond329 = select i1 %tobool181.not, i1 true, i1 %tobool183.not, !dbg !3825
  br i1 %or.cond329, label %do.end191, label %if.then187, !dbg !3825

if.then187:                                       ; preds = %do.body180
  tail call void @Perl_taint_proper(ptr noundef null, ptr noundef %0) #11, !dbg !3826
  br label %do.end191, !dbg !3826

do.end191:                                        ; preds = %if.then187, %do.body180
  %sub.ptr.lhs.cast192 = ptrtoint ptr %sp to i64, !dbg !3830
  %sub.ptr.rhs.cast193 = ptrtoint ptr %mark to i64, !dbg !3830
  %sub.ptr.sub194 = sub i64 %sub.ptr.lhs.cast192, %sub.ptr.rhs.cast193, !dbg !3830
  %35 = lshr exact i64 %sub.ptr.sub194, 3, !dbg !3830
  %conv196 = trunc i64 %35 to i32, !dbg !3831
  call void @llvm.dbg.value(metadata i32 %conv196, metadata !3719, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %incdec.ptr350, metadata !3716, metadata !DIExpression()), !dbg !3733
  br i1 %cmp6.not351, label %sw.epilog, label %while.body201, !dbg !3832

while.body201:                                    ; preds = %do.end191, %if.end260
  %incdec.ptr198356 = phi ptr [ %incdec.ptr198, %if.end260 ], [ %incdec.ptr350, %do.end191 ]
  %tot.3355 = phi i32 [ %tot.4, %if.end260 ], [ %conv196, %do.end191 ]
  call void @llvm.dbg.value(metadata i32 %tot.3355, metadata !3719, metadata !DIExpression()), !dbg !3733
  %36 = load ptr, ptr %incdec.ptr198356, align 8, !dbg !3833
  %sv_flags202 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2, !dbg !3833
  %37 = load i32, ptr %sv_flags202, align 4, !dbg !3833
  %and203 = and i32 %37, 2098176, !dbg !3833
  %cmp204 = icmp eq i32 %and203, 1024, !dbg !3833
  br i1 %cmp204, label %cond.true206, label %cond.false211, !dbg !3833

cond.true206:                                     ; preds = %while.body201
  %38 = load ptr, ptr %36, align 8, !dbg !3833
  %xpv_cur208 = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2, !dbg !3833
  %39 = load i64, ptr %xpv_cur208, align 8, !dbg !3833
  call void @llvm.dbg.value(metadata i64 %39, metadata !3722, metadata !DIExpression()), !dbg !3733
  store i64 %39, ptr %len, align 8, !dbg !3833
  %sv_u209 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 3, !dbg !3833
  %40 = load ptr, ptr %sv_u209, align 8, !dbg !3833
  br label %cond.end213, !dbg !3833

cond.false211:                                    ; preds = %while.body201
  call void @llvm.dbg.value(metadata ptr %len, metadata !3722, metadata !DIExpression(DW_OP_deref)), !dbg !3733
  %call212 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %36, ptr noundef nonnull %len, i32 noundef 34) #11, !dbg !3833
  br label %cond.end213, !dbg !3833

cond.end213:                                      ; preds = %cond.false211, %cond.true206
  %cond214 = phi ptr [ %40, %cond.true206 ], [ %call212, %cond.false211 ], !dbg !3833
  call void @llvm.dbg.value(metadata ptr %cond214, metadata !3721, metadata !DIExpression()), !dbg !3733
  %41 = load i8, ptr @PL_tainted, align 1, !dbg !3835, !range !1370
  %tobool216.not = icmp eq i8 %41, 0, !dbg !3835
  %42 = load i8, ptr @PL_tainting, align 1
  %tobool218.not = icmp eq i8 %42, 0
  %or.cond330 = select i1 %tobool216.not, i1 true, i1 %tobool218.not, !dbg !3838
  br i1 %or.cond330, label %do.end226, label %if.then222, !dbg !3838

if.then222:                                       ; preds = %cond.end213
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %0) #11, !dbg !3839
  br label %do.end226, !dbg !3839

do.end226:                                        ; preds = %if.then222, %cond.end213
  %43 = load i64, ptr %len, align 8, !dbg !3843
  call void @llvm.dbg.value(metadata i64 %43, metadata !3722, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata ptr %cond214, metadata !1320, metadata !DIExpression()) #11, !dbg !3845
  call void @llvm.dbg.value(metadata i64 %43, metadata !1326, metadata !DIExpression()) #11, !dbg !3845
  call void @llvm.dbg.value(metadata ptr @.str.2, metadata !1327, metadata !DIExpression()) #11, !dbg !3845
  call void @llvm.dbg.value(metadata ptr @.str.44, metadata !1328, metadata !DIExpression()) #11, !dbg !3845
  %cmp.i334 = icmp ugt i64 %43, 1, !dbg !3847
  br i1 %cmp.i334, label %if.then.i338, label %if.else230, !dbg !3848

if.then.i338:                                     ; preds = %do.end226
  %sub.i335 = add i64 %43, -1, !dbg !3849
  %call.i336 = call ptr @memchr(ptr noundef %cond214, i32 noundef 0, i64 noundef %sub.i335) #12, !dbg !3849
  call void @llvm.dbg.value(metadata ptr %call.i336, metadata !1329, metadata !DIExpression()) #11, !dbg !3850
  %cmp1.not.i337 = icmp eq ptr %call.i336, null, !dbg !3849
  br i1 %cmp1.not.i337, label %if.else230, label %if.then228, !dbg !3851

if.then228:                                       ; preds = %if.then.i338
  %call3.i339 = tail call ptr @__errno_location() #13, !dbg !3852
  store i32 2, ptr %call3.i339, align 4, !dbg !3852
  %add.ptr.i340 = getelementptr inbounds i8, ptr %call.i336, i64 1, !dbg !3853
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.44, ptr noundef %cond214, ptr noundef nonnull %add.ptr.i340) #11, !dbg !3854
  %dec229 = add nsw i32 %tot.3355, -1, !dbg !3855
  call void @llvm.dbg.value(metadata i32 %dec229, metadata !3719, metadata !DIExpression()), !dbg !3733
  br label %if.end260, !dbg !3857

if.else230:                                       ; preds = %do.end226, %if.then.i338
  %44 = load i8, ptr @PL_unsafe, align 1, !dbg !3858, !range !1370
  %tobool231.not = icmp eq i8 %44, 0, !dbg !3858
  br i1 %tobool231.not, label %if.else238, label %if.then232, !dbg !3860

if.then232:                                       ; preds = %if.else230
  %call233 = call i32 @unlink(ptr noundef %cond214) #11, !dbg !3861
  %tobool234.not = icmp ne i32 %call233, 0, !dbg !3861
  %dec236 = sext i1 %tobool234.not to i32, !dbg !3864
  %spec.select = add nsw i32 %tot.3355, %dec236, !dbg !3864
  br label %if.end260, !dbg !3864

if.else238:                                       ; preds = %if.else230
  call void @llvm.dbg.value(metadata ptr %cond214, metadata !2529, metadata !DIExpression()) #11, !dbg !3865
  call void @llvm.dbg.value(metadata ptr @PL_statbuf, metadata !2534, metadata !DIExpression()) #11, !dbg !3865
  %call.i344 = call i32 @__xstat(i32 noundef 1, ptr noundef nonnull %cond214, ptr noundef nonnull @PL_statbuf) #11, !dbg !3869
  %cmp240 = icmp slt i32 %call.i344, 0, !dbg !3870
  br i1 %cmp240, label %if.then242, label %if.else244, !dbg !3871

if.then242:                                       ; preds = %if.else238
  %dec243 = add nsw i32 %tot.3355, -1, !dbg !3872
  call void @llvm.dbg.value(metadata i32 %dec243, metadata !3719, metadata !DIExpression()), !dbg !3733
  br label %if.end260, !dbg !3873

if.else244:                                       ; preds = %if.else238
  %45 = load i32, ptr getelementptr inbounds (%struct.stat, ptr @PL_statbuf, i64 0, i32 3), align 8, !dbg !3874
  %and245 = and i32 %45, 61440, !dbg !3874
  %cmp246 = icmp eq i32 %and245, 16384, !dbg !3874
  br i1 %cmp246, label %if.then248, label %if.else251, !dbg !3876

if.then248:                                       ; preds = %if.else244
  %dec249 = add nsw i32 %tot.3355, -1, !dbg !3877
  call void @llvm.dbg.value(metadata i32 %dec249, metadata !3719, metadata !DIExpression()), !dbg !3733
  %call250 = tail call ptr @__errno_location() #13, !dbg !3879
  store i32 21, ptr %call250, align 4, !dbg !3879
  br label %if.end260, !dbg !3880

if.else251:                                       ; preds = %if.else244
  %call252 = call i32 @unlink(ptr noundef nonnull %cond214) #11, !dbg !3881
  %tobool253.not = icmp ne i32 %call252, 0, !dbg !3881
  %dec255 = sext i1 %tobool253.not to i32, !dbg !3884
  %spec.select331 = add nsw i32 %tot.3355, %dec255, !dbg !3884
  br label %if.end260, !dbg !3884

if.end260:                                        ; preds = %if.else251, %if.then232, %if.then248, %if.then242, %if.then228
  %tot.4 = phi i32 [ %dec243, %if.then242 ], [ %dec249, %if.then248 ], [ %dec229, %if.then228 ], [ %spec.select, %if.then232 ], [ %spec.select331, %if.else251 ], !dbg !3885
  call void @llvm.dbg.value(metadata ptr %incdec.ptr198356, metadata !3716, metadata !DIExpression()), !dbg !3733
  call void @llvm.dbg.value(metadata i32 %tot.4, metadata !3719, metadata !DIExpression()), !dbg !3733
  %incdec.ptr198 = getelementptr inbounds ptr, ptr %incdec.ptr198356, i64 1, !dbg !3886
  call void @llvm.dbg.value(metadata ptr %incdec.ptr198, metadata !3716, metadata !DIExpression()), !dbg !3733
  %cmp199.not = icmp ugt ptr %incdec.ptr198, %sp, !dbg !3887
  br i1 %cmp199.not, label %sw.epilog, label %while.body201, !dbg !3832, !llvm.loop !3888

sw.epilog:                                        ; preds = %if.end260, %if.end176, %do.end191, %do.end38, %do.end, %if.end11
  %tot.5 = phi i32 [ 0, %if.end11 ], [ 0, %do.end ], [ %conv39, %do.end38 ], [ %conv196, %do.end191 ], [ %tot.2, %if.end176 ], [ %tot.4, %if.end260 ], !dbg !3733
  call void @llvm.dbg.value(metadata i32 %tot.5, metadata !3719, metadata !DIExpression()), !dbg !3733
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #11, !dbg !3890
  ret i32 %tot.5, !dbg !3891
}

declare !dbg !3892 ptr @Perl_die(ptr noundef, ...) local_unnamed_addr #2

declare !dbg !3895 zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

declare !dbg !3898 i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @Perl_cando(i32 noundef %mode, i1 noundef zeroext %effective, ptr nocapture noundef readonly %statbufp) local_unnamed_addr #0 !dbg !3901 {
entry:
  call void @llvm.dbg.value(metadata i32 %mode, metadata !3908, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i1 %effective, metadata !3909, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3911
  call void @llvm.dbg.value(metadata ptr %statbufp, metadata !3910, metadata !DIExpression()), !dbg !3911
  br i1 %effective, label %cond.end, label %cond.end.thread, !dbg !3912

cond.end:                                         ; preds = %entry
  %call = tail call i32 @geteuid() #11, !dbg !3914
  %cmp = icmp eq i32 %call, 0, !dbg !3915
  br i1 %cmp, label %if.then, label %cond.end16, !dbg !3916

cond.end.thread:                                  ; preds = %entry
  %call1 = tail call i32 @getuid() #11, !dbg !3917
  %cmp55 = icmp eq i32 %call1, 0, !dbg !3915
  br i1 %cmp55, label %if.then, label %cond.end16.thread, !dbg !3916

if.then:                                          ; preds = %cond.end.thread, %cond.end
  %cmp2 = icmp eq i32 %mode, 64, !dbg !3918
  br i1 %cmp2, label %if.then3, label %return, !dbg !3921

if.then3:                                         ; preds = %if.then
  %st_mode = getelementptr inbounds %struct.stat, ptr %statbufp, i64 0, i32 3, !dbg !3922
  %0 = load i32, ptr %st_mode, align 8, !dbg !3922
  %and = and i32 %0, 73, !dbg !3925
  %tobool4.not = icmp ne i32 %and, 0, !dbg !3925
  %and6 = and i32 %0, 61440
  %cmp7 = icmp eq i32 %and6, 16384
  %or.cond = or i1 %tobool4.not, %cmp7, !dbg !3926
  br label %return, !dbg !3926

cond.end16:                                       ; preds = %cond.end
  %st_uid = getelementptr inbounds %struct.stat, ptr %statbufp, i64 0, i32 4, !dbg !3927
  %1 = load i32, ptr %st_uid, align 4, !dbg !3927
  %call13 = tail call i32 @geteuid() #11, !dbg !3929
  %cmp18 = icmp eq i32 %1, %call13, !dbg !3930
  br i1 %cmp18, label %if.then19, label %cond.true.i, !dbg !3931

cond.end16.thread:                                ; preds = %cond.end.thread
  %st_uid56 = getelementptr inbounds %struct.stat, ptr %statbufp, i64 0, i32 4, !dbg !3927
  %2 = load i32, ptr %st_uid56, align 4, !dbg !3927
  %call15 = tail call i32 @getuid() #11, !dbg !3932
  %cmp1858 = icmp eq i32 %2, %call15, !dbg !3930
  br i1 %cmp1858, label %if.then19, label %cond.false.i, !dbg !3931

if.then19:                                        ; preds = %cond.end16.thread, %cond.end16
  %st_mode20 = getelementptr inbounds %struct.stat, ptr %statbufp, i64 0, i32 3, !dbg !3933
  %3 = load i32, ptr %st_mode20, align 8, !dbg !3933
  %and21 = and i32 %3, %mode, !dbg !3936
  %tobool22.not = icmp eq i32 %and21, 0, !dbg !3936
  br i1 %tobool22.not, label %if.end42, label %return, !dbg !3937

cond.true.i:                                      ; preds = %cond.end16
  %st_gid = getelementptr inbounds %struct.stat, ptr %statbufp, i64 0, i32 5, !dbg !3938
  %4 = load i32, ptr %st_gid, align 8, !dbg !3938
  call void @llvm.dbg.value(metadata i32 %4, metadata !3940, metadata !DIExpression()) #11, !dbg !3946
  call void @llvm.dbg.value(metadata i1 %effective, metadata !3945, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !3946
  %call.i = tail call i32 @getegid() #11, !dbg !3948
  br label %S_ingroup.exit, !dbg !3950

cond.false.i:                                     ; preds = %cond.end16.thread
  %st_gid59 = getelementptr inbounds %struct.stat, ptr %statbufp, i64 0, i32 5, !dbg !3938
  %5 = load i32, ptr %st_gid59, align 8, !dbg !3938
  call void @llvm.dbg.value(metadata i32 %4, metadata !3940, metadata !DIExpression()) #11, !dbg !3946
  call void @llvm.dbg.value(metadata i1 %effective, metadata !3945, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !3946
  %call1.i = tail call i32 @getgid() #11, !dbg !3951
  br label %S_ingroup.exit, !dbg !3950

S_ingroup.exit:                                   ; preds = %cond.true.i, %cond.false.i
  %6 = phi i32 [ %4, %cond.true.i ], [ %5, %cond.false.i ]
  %cond.i = phi i32 [ %call.i, %cond.true.i ], [ %call1.i, %cond.false.i ], !dbg !3950
  %cmp.i = icmp eq i32 %cond.i, %6, !dbg !3952
  %st_mode29 = getelementptr inbounds %struct.stat, ptr %statbufp, i64 0, i32 3, !dbg !3953
  %7 = load i32, ptr %st_mode29, align 8, !dbg !3953
  br i1 %cmp.i, label %if.then28, label %if.else34, !dbg !3954

if.then28:                                        ; preds = %S_ingroup.exit
  %shr = lshr i32 %mode, 3, !dbg !3955
  %and30 = and i32 %7, %shr, !dbg !3958
  %tobool31.not = icmp eq i32 %and30, 0, !dbg !3958
  br i1 %tobool31.not, label %if.end42, label %return, !dbg !3959

if.else34:                                        ; preds = %S_ingroup.exit
  %shr36 = lshr i32 %mode, 6, !dbg !3960
  %and37 = and i32 %7, %shr36, !dbg !3962
  %tobool38.not = icmp eq i32 %and37, 0, !dbg !3962
  br i1 %tobool38.not, label %if.end42, label %return, !dbg !3963

if.end42:                                         ; preds = %if.then28, %if.else34, %if.then19
  br label %return, !dbg !3964

return:                                           ; preds = %if.then3, %if.else34, %if.then28, %if.then19, %if.then, %if.end42
  %retval.0 = phi i1 [ false, %if.end42 ], [ true, %if.then ], [ true, %if.then19 ], [ true, %if.then28 ], [ true, %if.else34 ], [ %or.cond, %if.then3 ], !dbg !3911
  ret i1 %retval.0, !dbg !3965
}

; Function Attrs: nounwind
declare !dbg !3966 i32 @geteuid() local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !3969 i32 @getuid() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_start_glob(ptr noundef %tmpglob, ptr nocapture noundef readonly %io) local_unnamed_addr #0 !dbg !3970 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %tmpglob, metadata !3974, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr %io, metadata !3975, metadata !DIExpression()), !dbg !3984
  %call = tail call ptr @Perl_newSV(i64 noundef 0) #11, !dbg !3985
  call void @llvm.dbg.value(metadata ptr %call, metadata !3976, metadata !DIExpression()), !dbg !3984
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #11, !dbg !3986
  %sv_flags = getelementptr inbounds %struct.sv, ptr %tmpglob, i64 0, i32 2, !dbg !3987
  %0 = load i32, ptr %sv_flags, align 4, !dbg !3987
  %and = and i32 %0, 2098176, !dbg !3987
  %cmp = icmp eq i32 %and, 1024, !dbg !3987
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3987

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %tmpglob, align 8, !dbg !3987
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !3987
  %2 = load i64, ptr %xpv_cur, align 8, !dbg !3987
  call void @llvm.dbg.value(metadata i64 %2, metadata !3978, metadata !DIExpression()), !dbg !3984
  store i64 %2, ptr %len, align 8, !dbg !3987
  %sv_u = getelementptr inbounds %struct.sv, ptr %tmpglob, i64 0, i32 3, !dbg !3987
  %3 = load ptr, ptr %sv_u, align 8, !dbg !3987
  br label %cond.end, !dbg !3987

cond.false:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %len, metadata !3978, metadata !DIExpression(DW_OP_deref)), !dbg !3984
  %call1 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %tmpglob, ptr noundef nonnull %len, i32 noundef 2) #11, !dbg !3987
  %.pr = load i64, ptr %len, align 8, !dbg !3988
  br label %cond.end, !dbg !3987

cond.end:                                         ; preds = %cond.false, %cond.true
  %4 = phi i64 [ %.pr, %cond.false ], [ %2, %cond.true ], !dbg !3988
  %cond = phi ptr [ %call1, %cond.false ], [ %3, %cond.true ], !dbg !3987
  call void @llvm.dbg.value(metadata ptr %cond, metadata !3979, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64 %4, metadata !3978, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata ptr %cond, metadata !1320, metadata !DIExpression()) #11, !dbg !3990
  call void @llvm.dbg.value(metadata i64 %4, metadata !1326, metadata !DIExpression()) #11, !dbg !3990
  call void @llvm.dbg.value(metadata ptr @.str.45, metadata !1327, metadata !DIExpression()) #11, !dbg !3990
  call void @llvm.dbg.value(metadata ptr @.str.46, metadata !1328, metadata !DIExpression()) #11, !dbg !3990
  %cmp.i = icmp ugt i64 %4, 1, !dbg !3992
  br i1 %cmp.i, label %if.then.i, label %if.end, !dbg !3993

if.then.i:                                        ; preds = %cond.end
  %sub.i = add i64 %4, -1, !dbg !3994
  %call.i = call ptr @memchr(ptr noundef %cond, i32 noundef 0, i64 noundef %sub.i) #12, !dbg !3994
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1329, metadata !DIExpression()) #11, !dbg !3995
  %cmp1.not.i = icmp eq ptr %call.i, null, !dbg !3994
  br i1 %cmp1.not.i, label %if.end, label %S_is_safe_syscall.exit, !dbg !3996

S_is_safe_syscall.exit:                           ; preds = %if.then.i
  %call3.i = tail call ptr @__errno_location() #13, !dbg !3997
  store i32 2, ptr %call3.i, align 4, !dbg !3997
  %add.ptr.i = getelementptr inbounds i8, ptr %call.i, i64 1, !dbg !3998
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 59, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %cond, ptr noundef nonnull %add.ptr.i) #11, !dbg !3999
  br label %cleanup, !dbg !4000

if.end:                                           ; preds = %cond.end, %if.then.i
  call void @Perl_push_scope() #11, !dbg !4001
  call void @Perl_save_pushptr(ptr noundef %call, i32 noundef 11) #11, !dbg !4002
  call void @Perl_sv_setpvn(ptr noundef %call, ptr noundef nonnull @PL_cshname, i64 noundef 0) #11, !dbg !4003
  call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.47) #11, !dbg !4004
  call void @Perl_sv_catsv_flags(ptr noundef %call, ptr noundef nonnull %tmpglob, i32 noundef 2) #11, !dbg !4005
  call void @Perl_sv_catpv(ptr noundef %call, ptr noundef nonnull @.str.48) #11, !dbg !4006
  %call3 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.49, i64 noundef 3, i32 noundef 0, i32 noundef 12) #11, !dbg !4007
  call void @llvm.dbg.value(metadata ptr %call3, metadata !3980, metadata !DIExpression()), !dbg !4008
  %sv_u4 = getelementptr inbounds %struct.gv, ptr %call3, i64 0, i32 3, !dbg !4009
  %5 = load ptr, ptr %sv_u4, align 8, !dbg !4009
  %gp_hv = getelementptr inbounds %struct.gp, ptr %5, i64 0, i32 5, !dbg !4009
  %6 = load ptr, ptr %gp_hv, align 8, !dbg !4009
  %call5 = call ptr @Perl_hv_common(ptr noundef %6, ptr noundef null, ptr noundef nonnull @.str.50, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #11, !dbg !4009
  call void @llvm.dbg.value(metadata ptr %call5, metadata !3982, metadata !DIExpression()), !dbg !4008
  %7 = load ptr, ptr %sv_u4, align 8, !dbg !4010
  %gp_hv8 = getelementptr inbounds %struct.gp, ptr %7, i64 0, i32 5, !dbg !4010
  %8 = load ptr, ptr %gp_hv8, align 8, !dbg !4010
  %call9 = call ptr @Perl_hv_common(ptr noundef %8, ptr noundef null, ptr noundef nonnull @.str.51, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #11, !dbg !4010
  call void @llvm.dbg.value(metadata ptr %call9, metadata !3983, metadata !DIExpression()), !dbg !4008
  %tobool.not = icmp eq ptr %call5, null, !dbg !4011
  br i1 %tobool.not, label %if.end19, label %land.lhs.true, !dbg !4013

land.lhs.true:                                    ; preds = %if.end
  %9 = load ptr, ptr %call5, align 8, !dbg !4014
  %tobool10.not = icmp eq ptr %9, null, !dbg !4014
  br i1 %tobool10.not, label %if.end19, label %if.then11, !dbg !4015

if.then11:                                        ; preds = %land.lhs.true
  %sv_flags12 = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2, !dbg !4016
  %10 = load i32, ptr %sv_flags12, align 4, !dbg !4016
  %and13 = and i32 %10, 2097152, !dbg !4016
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !4016
  br i1 %tobool14.not, label %if.end19, label %land.rhs, !dbg !4016

land.rhs:                                         ; preds = %if.then11
  %call17 = call i32 @Perl_mg_get(ptr noundef nonnull %9) #11, !dbg !4016
  br label %if.end19

if.end19:                                         ; preds = %land.rhs, %if.then11, %land.lhs.true, %if.end
  %tobool20.not = icmp eq ptr %call9, null, !dbg !4017
  br i1 %tobool20.not, label %if.end34, label %land.lhs.true21, !dbg !4019

land.lhs.true21:                                  ; preds = %if.end19
  %11 = load ptr, ptr %call9, align 8, !dbg !4020
  %tobool22.not = icmp eq ptr %11, null, !dbg !4020
  br i1 %tobool22.not, label %if.end34, label %if.then23, !dbg !4021

if.then23:                                        ; preds = %land.lhs.true21
  %sv_flags24 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2, !dbg !4022
  %12 = load i32, ptr %sv_flags24, align 4, !dbg !4022
  %and25 = and i32 %12, 2097152, !dbg !4022
  %tobool26.not = icmp eq i32 %and25, 0, !dbg !4022
  br i1 %tobool26.not, label %if.end34, label %land.rhs29, !dbg !4022

land.rhs29:                                       ; preds = %if.then23
  %call30 = call i32 @Perl_mg_get(ptr noundef nonnull %11) #11, !dbg !4022
  br label %if.end34

if.end34:                                         ; preds = %land.rhs29, %if.then23, %land.lhs.true21, %if.end19
  %call35 = call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str.49, i64 noundef 3, i32 noundef 0, i32 noundef 12) #11, !dbg !4023
  %call36 = call ptr @Perl_save_hash(ptr noundef %call35) #11, !dbg !4023
  br i1 %tobool.not, label %if.end49, label %land.lhs.true38, !dbg !4024

land.lhs.true38:                                  ; preds = %if.end34
  %13 = load ptr, ptr %call5, align 8, !dbg !4026
  %tobool39.not = icmp eq ptr %13, null, !dbg !4026
  br i1 %tobool39.not, label %if.end49, label %do.body, !dbg !4027

do.body:                                          ; preds = %land.lhs.true38
  %sv_flags41 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2, !dbg !4028
  %14 = load i32, ptr %sv_flags41, align 4, !dbg !4028
  %and42 = and i32 %14, 4194304, !dbg !4028
  %tobool43.not = icmp eq i32 %and42, 0, !dbg !4028
  br i1 %tobool43.not, label %if.end49, label %if.then46, !dbg !4031

if.then46:                                        ; preds = %do.body
  %call47 = call i32 @Perl_mg_set(ptr noundef nonnull %13) #11, !dbg !4028
  br label %if.end49, !dbg !4028

if.end49:                                         ; preds = %if.then46, %do.body, %land.lhs.true38, %if.end34
  br i1 %tobool20.not, label %if.end65, label %land.lhs.true51, !dbg !4032

land.lhs.true51:                                  ; preds = %if.end49
  %15 = load ptr, ptr %call9, align 8, !dbg !4034
  %tobool52.not = icmp eq ptr %15, null, !dbg !4034
  br i1 %tobool52.not, label %if.end65, label %do.body54, !dbg !4035

do.body54:                                        ; preds = %land.lhs.true51
  %sv_flags55 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2, !dbg !4036
  %16 = load i32, ptr %sv_flags55, align 4, !dbg !4036
  %and56 = and i32 %16, 4194304, !dbg !4036
  %tobool57.not = icmp eq i32 %and56, 0, !dbg !4036
  br i1 %tobool57.not, label %if.end65, label %if.then60, !dbg !4039

if.then60:                                        ; preds = %do.body54
  %call61 = call i32 @Perl_mg_set(ptr noundef nonnull %15) #11, !dbg !4036
  br label %if.end65, !dbg !4036

if.end65:                                         ; preds = %if.then60, %do.body54, %land.lhs.true51, %if.end49
  %17 = load ptr, ptr @PL_last_in_gv, align 8, !dbg !4040
  %sv_u66 = getelementptr inbounds %struct.sv, ptr %call, i64 0, i32 3, !dbg !4040
  %18 = load ptr, ptr %sv_u66, align 8, !dbg !4040
  %19 = load ptr, ptr %call, align 8, !dbg !4040
  %xpv_cur69 = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 2, !dbg !4040
  %20 = load i64, ptr %xpv_cur69, align 8, !dbg !4040
  %call70 = call zeroext i1 @Perl_do_open6(ptr noundef %17, ptr noundef %18, i64 noundef %20, ptr noundef null, ptr noundef null, i32 noundef 0), !dbg !4040
  %sv_u71 = getelementptr inbounds %struct.io, ptr %io, i64 0, i32 3, !dbg !4041
  %21 = load ptr, ptr %sv_u71, align 8, !dbg !4041
  call void @llvm.dbg.value(metadata ptr %21, metadata !3977, metadata !DIExpression()), !dbg !3984
  call void @Perl_pop_scope() #11, !dbg !4042
  %tobool72.not = icmp eq ptr %21, null, !dbg !4043
  br i1 %tobool72.not, label %land.lhs.true73, label %cleanup, !dbg !4045

land.lhs.true73:                                  ; preds = %if.end65
  %call74 = call zeroext i1 @Perl_ckwarn(i32 noundef 4) #11, !dbg !4046
  br i1 %call74, label %if.then75, label %cleanup, !dbg !4047

if.then75:                                        ; preds = %land.lhs.true73
  %call76 = tail call ptr @__errno_location() #13, !dbg !4048
  %22 = load i32, ptr %call76, align 4, !dbg !4048
  %call77 = call ptr @strerror(i32 noundef %22) #11, !dbg !4048
  call void (i32, ptr, ...) @Perl_warner(i32 noundef 4, ptr noundef nonnull @.str.52, ptr noundef %call77) #11, !dbg !4050
  br label %cleanup, !dbg !4051

cleanup:                                          ; preds = %S_is_safe_syscall.exit, %if.end65, %land.lhs.true73, %if.then75
  %retval.0 = phi ptr [ null, %S_is_safe_syscall.exit ], [ null, %if.then75 ], [ null, %land.lhs.true73 ], [ %21, %if.end65 ], !dbg !3984
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #11, !dbg !4052
  ret ptr %retval.0, !dbg !4052
}

declare !dbg !4053 ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

declare !dbg !4056 void @Perl_push_scope() local_unnamed_addr #2

declare !dbg !4057 void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !4060 ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !4063 ptr @Perl_save_hash(ptr noundef) local_unnamed_addr #2

declare !dbg !4066 void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare !dbg !4067 void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare !dbg !4068 ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !4071 void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !4074 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

declare !dbg !4078 void @Perl_PerlIO_clearerr(ptr noundef) local_unnamed_addr #2

declare !dbg !4079 i32 @Perl_mg_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__xstat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare !dbg !4082 void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !4085 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare !dbg !4088 i32 @getegid() local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !4091 i32 @getgid() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nofree "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1079, !1080, !1081, !1082, !1083, !1084}
!llvm.ident = !{!1085}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !432, globals: !1066, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/doio.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "cc664a9593f1cccc7db0357384979cc5")
!2 = !{!3, !404, !424}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opcode", file: !4, line: 16, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/500.perlbench_r/src/opnames.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1f3c200effbe760f517f3ab2ea52b45")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403}
!7 = !DIEnumerator(name: "OP_NULL", value: 0)
!8 = !DIEnumerator(name: "OP_STUB", value: 1)
!9 = !DIEnumerator(name: "OP_SCALAR", value: 2)
!10 = !DIEnumerator(name: "OP_PUSHMARK", value: 3)
!11 = !DIEnumerator(name: "OP_WANTARRAY", value: 4)
!12 = !DIEnumerator(name: "OP_CONST", value: 5)
!13 = !DIEnumerator(name: "OP_GVSV", value: 6)
!14 = !DIEnumerator(name: "OP_GV", value: 7)
!15 = !DIEnumerator(name: "OP_GELEM", value: 8)
!16 = !DIEnumerator(name: "OP_PADSV", value: 9)
!17 = !DIEnumerator(name: "OP_PADAV", value: 10)
!18 = !DIEnumerator(name: "OP_PADHV", value: 11)
!19 = !DIEnumerator(name: "OP_PADANY", value: 12)
!20 = !DIEnumerator(name: "OP_PUSHRE", value: 13)
!21 = !DIEnumerator(name: "OP_RV2GV", value: 14)
!22 = !DIEnumerator(name: "OP_RV2SV", value: 15)
!23 = !DIEnumerator(name: "OP_AV2ARYLEN", value: 16)
!24 = !DIEnumerator(name: "OP_RV2CV", value: 17)
!25 = !DIEnumerator(name: "OP_ANONCODE", value: 18)
!26 = !DIEnumerator(name: "OP_PROTOTYPE", value: 19)
!27 = !DIEnumerator(name: "OP_REFGEN", value: 20)
!28 = !DIEnumerator(name: "OP_SREFGEN", value: 21)
!29 = !DIEnumerator(name: "OP_REF", value: 22)
!30 = !DIEnumerator(name: "OP_BLESS", value: 23)
!31 = !DIEnumerator(name: "OP_BACKTICK", value: 24)
!32 = !DIEnumerator(name: "OP_GLOB", value: 25)
!33 = !DIEnumerator(name: "OP_READLINE", value: 26)
!34 = !DIEnumerator(name: "OP_RCATLINE", value: 27)
!35 = !DIEnumerator(name: "OP_REGCMAYBE", value: 28)
!36 = !DIEnumerator(name: "OP_REGCRESET", value: 29)
!37 = !DIEnumerator(name: "OP_REGCOMP", value: 30)
!38 = !DIEnumerator(name: "OP_MATCH", value: 31)
!39 = !DIEnumerator(name: "OP_QR", value: 32)
!40 = !DIEnumerator(name: "OP_SUBST", value: 33)
!41 = !DIEnumerator(name: "OP_SUBSTCONT", value: 34)
!42 = !DIEnumerator(name: "OP_TRANS", value: 35)
!43 = !DIEnumerator(name: "OP_TRANSR", value: 36)
!44 = !DIEnumerator(name: "OP_SASSIGN", value: 37)
!45 = !DIEnumerator(name: "OP_AASSIGN", value: 38)
!46 = !DIEnumerator(name: "OP_CHOP", value: 39)
!47 = !DIEnumerator(name: "OP_SCHOP", value: 40)
!48 = !DIEnumerator(name: "OP_CHOMP", value: 41)
!49 = !DIEnumerator(name: "OP_SCHOMP", value: 42)
!50 = !DIEnumerator(name: "OP_DEFINED", value: 43)
!51 = !DIEnumerator(name: "OP_UNDEF", value: 44)
!52 = !DIEnumerator(name: "OP_STUDY", value: 45)
!53 = !DIEnumerator(name: "OP_POS", value: 46)
!54 = !DIEnumerator(name: "OP_PREINC", value: 47)
!55 = !DIEnumerator(name: "OP_I_PREINC", value: 48)
!56 = !DIEnumerator(name: "OP_PREDEC", value: 49)
!57 = !DIEnumerator(name: "OP_I_PREDEC", value: 50)
!58 = !DIEnumerator(name: "OP_POSTINC", value: 51)
!59 = !DIEnumerator(name: "OP_I_POSTINC", value: 52)
!60 = !DIEnumerator(name: "OP_POSTDEC", value: 53)
!61 = !DIEnumerator(name: "OP_I_POSTDEC", value: 54)
!62 = !DIEnumerator(name: "OP_POW", value: 55)
!63 = !DIEnumerator(name: "OP_MULTIPLY", value: 56)
!64 = !DIEnumerator(name: "OP_I_MULTIPLY", value: 57)
!65 = !DIEnumerator(name: "OP_DIVIDE", value: 58)
!66 = !DIEnumerator(name: "OP_I_DIVIDE", value: 59)
!67 = !DIEnumerator(name: "OP_MODULO", value: 60)
!68 = !DIEnumerator(name: "OP_I_MODULO", value: 61)
!69 = !DIEnumerator(name: "OP_REPEAT", value: 62)
!70 = !DIEnumerator(name: "OP_ADD", value: 63)
!71 = !DIEnumerator(name: "OP_I_ADD", value: 64)
!72 = !DIEnumerator(name: "OP_SUBTRACT", value: 65)
!73 = !DIEnumerator(name: "OP_I_SUBTRACT", value: 66)
!74 = !DIEnumerator(name: "OP_CONCAT", value: 67)
!75 = !DIEnumerator(name: "OP_STRINGIFY", value: 68)
!76 = !DIEnumerator(name: "OP_LEFT_SHIFT", value: 69)
!77 = !DIEnumerator(name: "OP_RIGHT_SHIFT", value: 70)
!78 = !DIEnumerator(name: "OP_LT", value: 71)
!79 = !DIEnumerator(name: "OP_I_LT", value: 72)
!80 = !DIEnumerator(name: "OP_GT", value: 73)
!81 = !DIEnumerator(name: "OP_I_GT", value: 74)
!82 = !DIEnumerator(name: "OP_LE", value: 75)
!83 = !DIEnumerator(name: "OP_I_LE", value: 76)
!84 = !DIEnumerator(name: "OP_GE", value: 77)
!85 = !DIEnumerator(name: "OP_I_GE", value: 78)
!86 = !DIEnumerator(name: "OP_EQ", value: 79)
!87 = !DIEnumerator(name: "OP_I_EQ", value: 80)
!88 = !DIEnumerator(name: "OP_NE", value: 81)
!89 = !DIEnumerator(name: "OP_I_NE", value: 82)
!90 = !DIEnumerator(name: "OP_NCMP", value: 83)
!91 = !DIEnumerator(name: "OP_I_NCMP", value: 84)
!92 = !DIEnumerator(name: "OP_SLT", value: 85)
!93 = !DIEnumerator(name: "OP_SGT", value: 86)
!94 = !DIEnumerator(name: "OP_SLE", value: 87)
!95 = !DIEnumerator(name: "OP_SGE", value: 88)
!96 = !DIEnumerator(name: "OP_SEQ", value: 89)
!97 = !DIEnumerator(name: "OP_SNE", value: 90)
!98 = !DIEnumerator(name: "OP_SCMP", value: 91)
!99 = !DIEnumerator(name: "OP_BIT_AND", value: 92)
!100 = !DIEnumerator(name: "OP_BIT_XOR", value: 93)
!101 = !DIEnumerator(name: "OP_BIT_OR", value: 94)
!102 = !DIEnumerator(name: "OP_NBIT_AND", value: 95)
!103 = !DIEnumerator(name: "OP_NBIT_XOR", value: 96)
!104 = !DIEnumerator(name: "OP_NBIT_OR", value: 97)
!105 = !DIEnumerator(name: "OP_SBIT_AND", value: 98)
!106 = !DIEnumerator(name: "OP_SBIT_XOR", value: 99)
!107 = !DIEnumerator(name: "OP_SBIT_OR", value: 100)
!108 = !DIEnumerator(name: "OP_NEGATE", value: 101)
!109 = !DIEnumerator(name: "OP_I_NEGATE", value: 102)
!110 = !DIEnumerator(name: "OP_NOT", value: 103)
!111 = !DIEnumerator(name: "OP_COMPLEMENT", value: 104)
!112 = !DIEnumerator(name: "OP_NCOMPLEMENT", value: 105)
!113 = !DIEnumerator(name: "OP_SCOMPLEMENT", value: 106)
!114 = !DIEnumerator(name: "OP_SMARTMATCH", value: 107)
!115 = !DIEnumerator(name: "OP_ATAN2", value: 108)
!116 = !DIEnumerator(name: "OP_SIN", value: 109)
!117 = !DIEnumerator(name: "OP_COS", value: 110)
!118 = !DIEnumerator(name: "OP_RAND", value: 111)
!119 = !DIEnumerator(name: "OP_SRAND", value: 112)
!120 = !DIEnumerator(name: "OP_EXP", value: 113)
!121 = !DIEnumerator(name: "OP_LOG", value: 114)
!122 = !DIEnumerator(name: "OP_SQRT", value: 115)
!123 = !DIEnumerator(name: "OP_INT", value: 116)
!124 = !DIEnumerator(name: "OP_HEX", value: 117)
!125 = !DIEnumerator(name: "OP_OCT", value: 118)
!126 = !DIEnumerator(name: "OP_ABS", value: 119)
!127 = !DIEnumerator(name: "OP_LENGTH", value: 120)
!128 = !DIEnumerator(name: "OP_SUBSTR", value: 121)
!129 = !DIEnumerator(name: "OP_VEC", value: 122)
!130 = !DIEnumerator(name: "OP_INDEX", value: 123)
!131 = !DIEnumerator(name: "OP_RINDEX", value: 124)
!132 = !DIEnumerator(name: "OP_SPRINTF", value: 125)
!133 = !DIEnumerator(name: "OP_FORMLINE", value: 126)
!134 = !DIEnumerator(name: "OP_ORD", value: 127)
!135 = !DIEnumerator(name: "OP_CHR", value: 128)
!136 = !DIEnumerator(name: "OP_CRYPT", value: 129)
!137 = !DIEnumerator(name: "OP_UCFIRST", value: 130)
!138 = !DIEnumerator(name: "OP_LCFIRST", value: 131)
!139 = !DIEnumerator(name: "OP_UC", value: 132)
!140 = !DIEnumerator(name: "OP_LC", value: 133)
!141 = !DIEnumerator(name: "OP_QUOTEMETA", value: 134)
!142 = !DIEnumerator(name: "OP_RV2AV", value: 135)
!143 = !DIEnumerator(name: "OP_AELEMFAST", value: 136)
!144 = !DIEnumerator(name: "OP_AELEMFAST_LEX", value: 137)
!145 = !DIEnumerator(name: "OP_AELEM", value: 138)
!146 = !DIEnumerator(name: "OP_ASLICE", value: 139)
!147 = !DIEnumerator(name: "OP_KVASLICE", value: 140)
!148 = !DIEnumerator(name: "OP_AEACH", value: 141)
!149 = !DIEnumerator(name: "OP_AKEYS", value: 142)
!150 = !DIEnumerator(name: "OP_AVALUES", value: 143)
!151 = !DIEnumerator(name: "OP_EACH", value: 144)
!152 = !DIEnumerator(name: "OP_VALUES", value: 145)
!153 = !DIEnumerator(name: "OP_KEYS", value: 146)
!154 = !DIEnumerator(name: "OP_DELETE", value: 147)
!155 = !DIEnumerator(name: "OP_EXISTS", value: 148)
!156 = !DIEnumerator(name: "OP_RV2HV", value: 149)
!157 = !DIEnumerator(name: "OP_HELEM", value: 150)
!158 = !DIEnumerator(name: "OP_HSLICE", value: 151)
!159 = !DIEnumerator(name: "OP_KVHSLICE", value: 152)
!160 = !DIEnumerator(name: "OP_MULTIDEREF", value: 153)
!161 = !DIEnumerator(name: "OP_UNPACK", value: 154)
!162 = !DIEnumerator(name: "OP_PACK", value: 155)
!163 = !DIEnumerator(name: "OP_SPLIT", value: 156)
!164 = !DIEnumerator(name: "OP_JOIN", value: 157)
!165 = !DIEnumerator(name: "OP_LIST", value: 158)
!166 = !DIEnumerator(name: "OP_LSLICE", value: 159)
!167 = !DIEnumerator(name: "OP_ANONLIST", value: 160)
!168 = !DIEnumerator(name: "OP_ANONHASH", value: 161)
!169 = !DIEnumerator(name: "OP_SPLICE", value: 162)
!170 = !DIEnumerator(name: "OP_PUSH", value: 163)
!171 = !DIEnumerator(name: "OP_POP", value: 164)
!172 = !DIEnumerator(name: "OP_SHIFT", value: 165)
!173 = !DIEnumerator(name: "OP_UNSHIFT", value: 166)
!174 = !DIEnumerator(name: "OP_SORT", value: 167)
!175 = !DIEnumerator(name: "OP_REVERSE", value: 168)
!176 = !DIEnumerator(name: "OP_GREPSTART", value: 169)
!177 = !DIEnumerator(name: "OP_GREPWHILE", value: 170)
!178 = !DIEnumerator(name: "OP_MAPSTART", value: 171)
!179 = !DIEnumerator(name: "OP_MAPWHILE", value: 172)
!180 = !DIEnumerator(name: "OP_RANGE", value: 173)
!181 = !DIEnumerator(name: "OP_FLIP", value: 174)
!182 = !DIEnumerator(name: "OP_FLOP", value: 175)
!183 = !DIEnumerator(name: "OP_AND", value: 176)
!184 = !DIEnumerator(name: "OP_OR", value: 177)
!185 = !DIEnumerator(name: "OP_XOR", value: 178)
!186 = !DIEnumerator(name: "OP_DOR", value: 179)
!187 = !DIEnumerator(name: "OP_COND_EXPR", value: 180)
!188 = !DIEnumerator(name: "OP_ANDASSIGN", value: 181)
!189 = !DIEnumerator(name: "OP_ORASSIGN", value: 182)
!190 = !DIEnumerator(name: "OP_DORASSIGN", value: 183)
!191 = !DIEnumerator(name: "OP_METHOD", value: 184)
!192 = !DIEnumerator(name: "OP_ENTERSUB", value: 185)
!193 = !DIEnumerator(name: "OP_LEAVESUB", value: 186)
!194 = !DIEnumerator(name: "OP_LEAVESUBLV", value: 187)
!195 = !DIEnumerator(name: "OP_CALLER", value: 188)
!196 = !DIEnumerator(name: "OP_WARN", value: 189)
!197 = !DIEnumerator(name: "OP_DIE", value: 190)
!198 = !DIEnumerator(name: "OP_RESET", value: 191)
!199 = !DIEnumerator(name: "OP_LINESEQ", value: 192)
!200 = !DIEnumerator(name: "OP_NEXTSTATE", value: 193)
!201 = !DIEnumerator(name: "OP_DBSTATE", value: 194)
!202 = !DIEnumerator(name: "OP_UNSTACK", value: 195)
!203 = !DIEnumerator(name: "OP_ENTER", value: 196)
!204 = !DIEnumerator(name: "OP_LEAVE", value: 197)
!205 = !DIEnumerator(name: "OP_SCOPE", value: 198)
!206 = !DIEnumerator(name: "OP_ENTERITER", value: 199)
!207 = !DIEnumerator(name: "OP_ITER", value: 200)
!208 = !DIEnumerator(name: "OP_ENTERLOOP", value: 201)
!209 = !DIEnumerator(name: "OP_LEAVELOOP", value: 202)
!210 = !DIEnumerator(name: "OP_RETURN", value: 203)
!211 = !DIEnumerator(name: "OP_LAST", value: 204)
!212 = !DIEnumerator(name: "OP_NEXT", value: 205)
!213 = !DIEnumerator(name: "OP_REDO", value: 206)
!214 = !DIEnumerator(name: "OP_DUMP", value: 207)
!215 = !DIEnumerator(name: "OP_GOTO", value: 208)
!216 = !DIEnumerator(name: "OP_EXIT", value: 209)
!217 = !DIEnumerator(name: "OP_METHOD_NAMED", value: 210)
!218 = !DIEnumerator(name: "OP_METHOD_SUPER", value: 211)
!219 = !DIEnumerator(name: "OP_METHOD_REDIR", value: 212)
!220 = !DIEnumerator(name: "OP_METHOD_REDIR_SUPER", value: 213)
!221 = !DIEnumerator(name: "OP_ENTERGIVEN", value: 214)
!222 = !DIEnumerator(name: "OP_LEAVEGIVEN", value: 215)
!223 = !DIEnumerator(name: "OP_ENTERWHEN", value: 216)
!224 = !DIEnumerator(name: "OP_LEAVEWHEN", value: 217)
!225 = !DIEnumerator(name: "OP_BREAK", value: 218)
!226 = !DIEnumerator(name: "OP_CONTINUE", value: 219)
!227 = !DIEnumerator(name: "OP_OPEN", value: 220)
!228 = !DIEnumerator(name: "OP_CLOSE", value: 221)
!229 = !DIEnumerator(name: "OP_PIPE_OP", value: 222)
!230 = !DIEnumerator(name: "OP_FILENO", value: 223)
!231 = !DIEnumerator(name: "OP_UMASK", value: 224)
!232 = !DIEnumerator(name: "OP_BINMODE", value: 225)
!233 = !DIEnumerator(name: "OP_TIE", value: 226)
!234 = !DIEnumerator(name: "OP_UNTIE", value: 227)
!235 = !DIEnumerator(name: "OP_TIED", value: 228)
!236 = !DIEnumerator(name: "OP_DBMOPEN", value: 229)
!237 = !DIEnumerator(name: "OP_DBMCLOSE", value: 230)
!238 = !DIEnumerator(name: "OP_SSELECT", value: 231)
!239 = !DIEnumerator(name: "OP_SELECT", value: 232)
!240 = !DIEnumerator(name: "OP_GETC", value: 233)
!241 = !DIEnumerator(name: "OP_READ", value: 234)
!242 = !DIEnumerator(name: "OP_ENTERWRITE", value: 235)
!243 = !DIEnumerator(name: "OP_LEAVEWRITE", value: 236)
!244 = !DIEnumerator(name: "OP_PRTF", value: 237)
!245 = !DIEnumerator(name: "OP_PRINT", value: 238)
!246 = !DIEnumerator(name: "OP_SAY", value: 239)
!247 = !DIEnumerator(name: "OP_SYSOPEN", value: 240)
!248 = !DIEnumerator(name: "OP_SYSSEEK", value: 241)
!249 = !DIEnumerator(name: "OP_SYSREAD", value: 242)
!250 = !DIEnumerator(name: "OP_SYSWRITE", value: 243)
!251 = !DIEnumerator(name: "OP_EOF", value: 244)
!252 = !DIEnumerator(name: "OP_TELL", value: 245)
!253 = !DIEnumerator(name: "OP_SEEK", value: 246)
!254 = !DIEnumerator(name: "OP_TRUNCATE", value: 247)
!255 = !DIEnumerator(name: "OP_FCNTL", value: 248)
!256 = !DIEnumerator(name: "OP_IOCTL", value: 249)
!257 = !DIEnumerator(name: "OP_FLOCK", value: 250)
!258 = !DIEnumerator(name: "OP_SEND", value: 251)
!259 = !DIEnumerator(name: "OP_RECV", value: 252)
!260 = !DIEnumerator(name: "OP_SOCKET", value: 253)
!261 = !DIEnumerator(name: "OP_SOCKPAIR", value: 254)
!262 = !DIEnumerator(name: "OP_BIND", value: 255)
!263 = !DIEnumerator(name: "OP_CONNECT", value: 256)
!264 = !DIEnumerator(name: "OP_LISTEN", value: 257)
!265 = !DIEnumerator(name: "OP_ACCEPT", value: 258)
!266 = !DIEnumerator(name: "OP_SHUTDOWN", value: 259)
!267 = !DIEnumerator(name: "OP_GSOCKOPT", value: 260)
!268 = !DIEnumerator(name: "OP_SSOCKOPT", value: 261)
!269 = !DIEnumerator(name: "OP_GETSOCKNAME", value: 262)
!270 = !DIEnumerator(name: "OP_GETPEERNAME", value: 263)
!271 = !DIEnumerator(name: "OP_LSTAT", value: 264)
!272 = !DIEnumerator(name: "OP_STAT", value: 265)
!273 = !DIEnumerator(name: "OP_FTRREAD", value: 266)
!274 = !DIEnumerator(name: "OP_FTRWRITE", value: 267)
!275 = !DIEnumerator(name: "OP_FTREXEC", value: 268)
!276 = !DIEnumerator(name: "OP_FTEREAD", value: 269)
!277 = !DIEnumerator(name: "OP_FTEWRITE", value: 270)
!278 = !DIEnumerator(name: "OP_FTEEXEC", value: 271)
!279 = !DIEnumerator(name: "OP_FTIS", value: 272)
!280 = !DIEnumerator(name: "OP_FTSIZE", value: 273)
!281 = !DIEnumerator(name: "OP_FTMTIME", value: 274)
!282 = !DIEnumerator(name: "OP_FTATIME", value: 275)
!283 = !DIEnumerator(name: "OP_FTCTIME", value: 276)
!284 = !DIEnumerator(name: "OP_FTROWNED", value: 277)
!285 = !DIEnumerator(name: "OP_FTEOWNED", value: 278)
!286 = !DIEnumerator(name: "OP_FTZERO", value: 279)
!287 = !DIEnumerator(name: "OP_FTSOCK", value: 280)
!288 = !DIEnumerator(name: "OP_FTCHR", value: 281)
!289 = !DIEnumerator(name: "OP_FTBLK", value: 282)
!290 = !DIEnumerator(name: "OP_FTFILE", value: 283)
!291 = !DIEnumerator(name: "OP_FTDIR", value: 284)
!292 = !DIEnumerator(name: "OP_FTPIPE", value: 285)
!293 = !DIEnumerator(name: "OP_FTSUID", value: 286)
!294 = !DIEnumerator(name: "OP_FTSGID", value: 287)
!295 = !DIEnumerator(name: "OP_FTSVTX", value: 288)
!296 = !DIEnumerator(name: "OP_FTLINK", value: 289)
!297 = !DIEnumerator(name: "OP_FTTTY", value: 290)
!298 = !DIEnumerator(name: "OP_FTTEXT", value: 291)
!299 = !DIEnumerator(name: "OP_FTBINARY", value: 292)
!300 = !DIEnumerator(name: "OP_CHDIR", value: 293)
!301 = !DIEnumerator(name: "OP_CHOWN", value: 294)
!302 = !DIEnumerator(name: "OP_CHROOT", value: 295)
!303 = !DIEnumerator(name: "OP_UNLINK", value: 296)
!304 = !DIEnumerator(name: "OP_CHMOD", value: 297)
!305 = !DIEnumerator(name: "OP_UTIME", value: 298)
!306 = !DIEnumerator(name: "OP_RENAME", value: 299)
!307 = !DIEnumerator(name: "OP_LINK", value: 300)
!308 = !DIEnumerator(name: "OP_SYMLINK", value: 301)
!309 = !DIEnumerator(name: "OP_READLINK", value: 302)
!310 = !DIEnumerator(name: "OP_MKDIR", value: 303)
!311 = !DIEnumerator(name: "OP_RMDIR", value: 304)
!312 = !DIEnumerator(name: "OP_OPEN_DIR", value: 305)
!313 = !DIEnumerator(name: "OP_READDIR", value: 306)
!314 = !DIEnumerator(name: "OP_TELLDIR", value: 307)
!315 = !DIEnumerator(name: "OP_SEEKDIR", value: 308)
!316 = !DIEnumerator(name: "OP_REWINDDIR", value: 309)
!317 = !DIEnumerator(name: "OP_CLOSEDIR", value: 310)
!318 = !DIEnumerator(name: "OP_FORK", value: 311)
!319 = !DIEnumerator(name: "OP_WAIT", value: 312)
!320 = !DIEnumerator(name: "OP_WAITPID", value: 313)
!321 = !DIEnumerator(name: "OP_SYSTEM", value: 314)
!322 = !DIEnumerator(name: "OP_EXEC", value: 315)
!323 = !DIEnumerator(name: "OP_KILL", value: 316)
!324 = !DIEnumerator(name: "OP_GETPPID", value: 317)
!325 = !DIEnumerator(name: "OP_GETPGRP", value: 318)
!326 = !DIEnumerator(name: "OP_SETPGRP", value: 319)
!327 = !DIEnumerator(name: "OP_GETPRIORITY", value: 320)
!328 = !DIEnumerator(name: "OP_SETPRIORITY", value: 321)
!329 = !DIEnumerator(name: "OP_TIME", value: 322)
!330 = !DIEnumerator(name: "OP_TMS", value: 323)
!331 = !DIEnumerator(name: "OP_LOCALTIME", value: 324)
!332 = !DIEnumerator(name: "OP_GMTIME", value: 325)
!333 = !DIEnumerator(name: "OP_ALARM", value: 326)
!334 = !DIEnumerator(name: "OP_SLEEP", value: 327)
!335 = !DIEnumerator(name: "OP_SHMGET", value: 328)
!336 = !DIEnumerator(name: "OP_SHMCTL", value: 329)
!337 = !DIEnumerator(name: "OP_SHMREAD", value: 330)
!338 = !DIEnumerator(name: "OP_SHMWRITE", value: 331)
!339 = !DIEnumerator(name: "OP_MSGGET", value: 332)
!340 = !DIEnumerator(name: "OP_MSGCTL", value: 333)
!341 = !DIEnumerator(name: "OP_MSGSND", value: 334)
!342 = !DIEnumerator(name: "OP_MSGRCV", value: 335)
!343 = !DIEnumerator(name: "OP_SEMOP", value: 336)
!344 = !DIEnumerator(name: "OP_SEMGET", value: 337)
!345 = !DIEnumerator(name: "OP_SEMCTL", value: 338)
!346 = !DIEnumerator(name: "OP_REQUIRE", value: 339)
!347 = !DIEnumerator(name: "OP_DOFILE", value: 340)
!348 = !DIEnumerator(name: "OP_HINTSEVAL", value: 341)
!349 = !DIEnumerator(name: "OP_ENTEREVAL", value: 342)
!350 = !DIEnumerator(name: "OP_LEAVEEVAL", value: 343)
!351 = !DIEnumerator(name: "OP_ENTERTRY", value: 344)
!352 = !DIEnumerator(name: "OP_LEAVETRY", value: 345)
!353 = !DIEnumerator(name: "OP_GHBYNAME", value: 346)
!354 = !DIEnumerator(name: "OP_GHBYADDR", value: 347)
!355 = !DIEnumerator(name: "OP_GHOSTENT", value: 348)
!356 = !DIEnumerator(name: "OP_GNBYNAME", value: 349)
!357 = !DIEnumerator(name: "OP_GNBYADDR", value: 350)
!358 = !DIEnumerator(name: "OP_GNETENT", value: 351)
!359 = !DIEnumerator(name: "OP_GPBYNAME", value: 352)
!360 = !DIEnumerator(name: "OP_GPBYNUMBER", value: 353)
!361 = !DIEnumerator(name: "OP_GPROTOENT", value: 354)
!362 = !DIEnumerator(name: "OP_GSBYNAME", value: 355)
!363 = !DIEnumerator(name: "OP_GSBYPORT", value: 356)
!364 = !DIEnumerator(name: "OP_GSERVENT", value: 357)
!365 = !DIEnumerator(name: "OP_SHOSTENT", value: 358)
!366 = !DIEnumerator(name: "OP_SNETENT", value: 359)
!367 = !DIEnumerator(name: "OP_SPROTOENT", value: 360)
!368 = !DIEnumerator(name: "OP_SSERVENT", value: 361)
!369 = !DIEnumerator(name: "OP_EHOSTENT", value: 362)
!370 = !DIEnumerator(name: "OP_ENETENT", value: 363)
!371 = !DIEnumerator(name: "OP_EPROTOENT", value: 364)
!372 = !DIEnumerator(name: "OP_ESERVENT", value: 365)
!373 = !DIEnumerator(name: "OP_GPWNAM", value: 366)
!374 = !DIEnumerator(name: "OP_GPWUID", value: 367)
!375 = !DIEnumerator(name: "OP_GPWENT", value: 368)
!376 = !DIEnumerator(name: "OP_SPWENT", value: 369)
!377 = !DIEnumerator(name: "OP_EPWENT", value: 370)
!378 = !DIEnumerator(name: "OP_GGRNAM", value: 371)
!379 = !DIEnumerator(name: "OP_GGRGID", value: 372)
!380 = !DIEnumerator(name: "OP_GGRENT", value: 373)
!381 = !DIEnumerator(name: "OP_SGRENT", value: 374)
!382 = !DIEnumerator(name: "OP_EGRENT", value: 375)
!383 = !DIEnumerator(name: "OP_GETLOGIN", value: 376)
!384 = !DIEnumerator(name: "OP_SYSCALL", value: 377)
!385 = !DIEnumerator(name: "OP_LOCK", value: 378)
!386 = !DIEnumerator(name: "OP_ONCE", value: 379)
!387 = !DIEnumerator(name: "OP_CUSTOM", value: 380)
!388 = !DIEnumerator(name: "OP_REACH", value: 381)
!389 = !DIEnumerator(name: "OP_RKEYS", value: 382)
!390 = !DIEnumerator(name: "OP_RVALUES", value: 383)
!391 = !DIEnumerator(name: "OP_COREARGS", value: 384)
!392 = !DIEnumerator(name: "OP_RUNCV", value: 385)
!393 = !DIEnumerator(name: "OP_FC", value: 386)
!394 = !DIEnumerator(name: "OP_PADCV", value: 387)
!395 = !DIEnumerator(name: "OP_INTROCV", value: 388)
!396 = !DIEnumerator(name: "OP_CLONECV", value: 389)
!397 = !DIEnumerator(name: "OP_PADRANGE", value: 390)
!398 = !DIEnumerator(name: "OP_REFASSIGN", value: 391)
!399 = !DIEnumerator(name: "OP_LVREF", value: 392)
!400 = !DIEnumerator(name: "OP_LVREFSLICE", value: 393)
!401 = !DIEnumerator(name: "OP_LVAVREF", value: 394)
!402 = !DIEnumerator(name: "OP_ANONCONST", value: 395)
!403 = !DIEnumerator(name: "OP_max", value: 396)
!404 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !405, line: 132, baseType: !5, size: 32, elements: !406)
!405 = !DIFile(filename: "apps/500.perlbench_r/src/sv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e8ddee5f0a5032210b880c8e95bcea58")
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!407 = !DIEnumerator(name: "SVt_NULL", value: 0)
!408 = !DIEnumerator(name: "SVt_IV", value: 1)
!409 = !DIEnumerator(name: "SVt_NV", value: 2)
!410 = !DIEnumerator(name: "SVt_PV", value: 3)
!411 = !DIEnumerator(name: "SVt_INVLIST", value: 4)
!412 = !DIEnumerator(name: "SVt_PVIV", value: 5)
!413 = !DIEnumerator(name: "SVt_PVNV", value: 6)
!414 = !DIEnumerator(name: "SVt_PVMG", value: 7)
!415 = !DIEnumerator(name: "SVt_REGEXP", value: 8)
!416 = !DIEnumerator(name: "SVt_PVGV", value: 9)
!417 = !DIEnumerator(name: "SVt_PVLV", value: 10)
!418 = !DIEnumerator(name: "SVt_PVAV", value: 11)
!419 = !DIEnumerator(name: "SVt_PVHV", value: 12)
!420 = !DIEnumerator(name: "SVt_PVCV", value: 13)
!421 = !DIEnumerator(name: "SVt_PVFM", value: 14)
!422 = !DIEnumerator(name: "SVt_PVIO", value: 15)
!423 = !DIEnumerator(name: "SVt_LAST", value: 16)
!424 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !425, line: 867, baseType: !5, size: 32, elements: !426)
!425 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!426 = !{!427, !428, !429, !430, !431}
!427 = !DIEnumerator(name: "XOPe_xop_ptr", value: 0)
!428 = !DIEnumerator(name: "XOPe_xop_name", value: 1)
!429 = !DIEnumerator(name: "XOPe_xop_desc", value: 2)
!430 = !DIEnumerator(name: "XOPe_xop_class", value: 4)
!431 = !DIEnumerator(name: "XOPe_xop_peep", value: 8)
!432 = !{!433, !434, !435, !477, !486, !643, !998, !999, !471, !1011, !844, !472, !815, !745, !674, !1024, !679, !1025, !491, !489, !1027, !1040, !1042, !1061, !1063, !1065, !506, !823, !539}
!433 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!434 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !437, line: 2672, baseType: !438)
!437 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !405, line: 603, size: 1088, elements: !439)
!439 = !{!440, !969, !970, !971, !976, !977, !978, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !438, file: !405, line: 604, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !437, line: 2649, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !405, line: 246, size: 192, elements: !444)
!444 = !{!445, !954, !955, !956}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !443, file: !405, line: 247, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !437, line: 2667, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !449, line: 130, size: 256, elements: !450)
!449 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!450 = !{!451, !452, !952, !953}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !448, file: !449, line: 131, baseType: !441, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !448, file: !449, line: 132, baseType: !453, size: 64, offset: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !405, line: 494, size: 64, elements: !454)
!454 = !{!455, !951}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !453, file: !405, line: 495, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !437, line: 2658, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !459, line: 23, size: 384, elements: !460)
!459 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!460 = !{!461, !462, !943, !946, !947, !948, !949, !950}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !458, file: !459, line: 24, baseType: !456, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !458, file: !459, line: 25, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !437, line: 2673, baseType: !465)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !459, line: 11, size: 512, elements: !466)
!466 = !{!467, !913, !914, !918, !919, !920, !924, !942}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !465, file: !459, line: 12, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!471, !472, !456}
!471 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !437, line: 2647, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !405, line: 218, size: 192, elements: !475)
!475 = !{!476, !478, !481, !482}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !474, file: !405, line: 219, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !474, file: !405, line: 219, baseType: !479, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !480, line: 175, baseType: !5)
!480 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !474, file: !405, line: 219, baseType: !479, size: 32, offset: 96)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !474, file: !405, line: 220, baseType: !483, size: 64, offset: 128)
!483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !405, line: 220, size: 64, elements: !484)
!484 = !{!485, !488, !490, !493, !496, !497, !909, !910, !911, !912}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !483, file: !405, line: 220, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !483, file: !405, line: 220, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !437, line: 1670, baseType: !433)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !483, file: !405, line: 220, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !437, line: 1671, baseType: !492)
!492 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !483, file: !405, line: 220, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !437, line: 1877, baseType: !495)
!495 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !483, file: !405, line: 220, baseType: !472, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !483, file: !405, line: 220, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !500, line: 140, size: 1536, elements: !501)
!500 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!501 = !{!502, !503, !504, !508, !513, !865, !866, !867, !868, !869, !870, !871, !887, !888, !889, !890, !891, !892, !900, !901, !902, !903, !904, !905, !906, !907, !908}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !499, file: !500, line: 141, baseType: !441, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !499, file: !500, line: 141, baseType: !453, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !499, file: !500, line: 141, baseType: !505, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !437, line: 2615, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !507, line: 46, baseType: !492)
!507 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !499, file: !500, line: 141, baseType: !509, size: 64, offset: 192)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !499, file: !500, line: 141, size: 64, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !509, file: !500, line: 141, baseType: !505, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !509, file: !500, line: 141, baseType: !486, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !499, file: !500, line: 142, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !500, line: 157, size: 768, elements: !517)
!517 = !{!518, !805, !810, !826, !830, !834, !839, !846, !850, !854, !858, !859}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !516, file: !500, line: 158, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!522, !804, !479}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !437, line: 2651, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !405, line: 256, size: 192, elements: !525)
!525 = !{!526, !527, !528, !529}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !524, file: !405, line: 257, baseType: !498, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !524, file: !405, line: 257, baseType: !479, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !524, file: !405, line: 257, baseType: !479, size: 32, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !524, file: !405, line: 258, baseType: !530, size: 64, offset: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !524, file: !405, line: 258, size: 64, elements: !531)
!531 = !{!532, !533, !534, !535, !536, !537, !538, !540, !564, !803}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !530, file: !405, line: 258, baseType: !486, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !530, file: !405, line: 258, baseType: !489, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !530, file: !405, line: 258, baseType: !491, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !530, file: !405, line: 258, baseType: !494, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !530, file: !405, line: 258, baseType: !472, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !530, file: !405, line: 258, baseType: !498, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !530, file: !405, line: 258, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !530, file: !405, line: 258, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !405, line: 186, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !449, line: 32, size: 192, elements: !545)
!545 = !{!546, !547, !559}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !544, file: !449, line: 36, baseType: !542, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !544, file: !449, line: 37, baseType: !548, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !405, line: 187, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !449, line: 45, size: 96, elements: !551)
!551 = !{!552, !553, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !550, file: !449, line: 46, baseType: !479, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !550, file: !449, line: 47, baseType: !554, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !480, line: 174, baseType: !471)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !550, file: !449, line: 48, baseType: !556, size: 8, offset: 64)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 8, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 1)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !544, file: !449, line: 41, baseType: !560, size: 64, offset: 128)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !544, file: !449, line: 38, size: 64, elements: !561)
!561 = !{!562, !563}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !560, file: !449, line: 39, baseType: !472, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !560, file: !449, line: 40, baseType: !506, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !530, file: !405, line: 258, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !437, line: 2652, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !568, line: 11, size: 640, elements: !569)
!568 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!569 = !{!570, !571, !597, !793, !794, !795, !796, !798, !799, !800, !801, !802}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !567, file: !568, line: 12, baseType: !472, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !567, file: !568, line: 13, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !405, line: 251, size: 192, elements: !574)
!574 = !{!575, !576, !577, !578}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !573, file: !405, line: 252, baseType: !435, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !573, file: !405, line: 252, baseType: !479, size: 32, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !573, file: !405, line: 252, baseType: !479, size: 32, offset: 96)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !573, file: !405, line: 253, baseType: !579, size: 64, offset: 128)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !405, line: 253, size: 64, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !579, file: !405, line: 253, baseType: !486, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !579, file: !405, line: 253, baseType: !489, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !579, file: !405, line: 253, baseType: !491, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !579, file: !405, line: 253, baseType: !494, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !579, file: !405, line: 253, baseType: !472, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !579, file: !405, line: 253, baseType: !498, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !579, file: !405, line: 253, baseType: !539, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !579, file: !405, line: 253, baseType: !541, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !579, file: !405, line: 253, baseType: !565, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !579, file: !405, line: 253, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !593, line: 85, baseType: !594)
!593 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !593, line: 83, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !593, line: 83, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !567, file: !568, line: 14, baseType: !598, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !437, line: 2650, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !405, line: 236, size: 192, elements: !601)
!601 = !{!602, !778, !779, !780}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !600, file: !405, line: 237, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !437, line: 2669, baseType: !605)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !606, line: 13, size: 832, elements: !607)
!606 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!607 = !{!608, !609, !610, !611, !616, !617, !662, !670, !723, !724, !773, !774, !775, !777}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !605, file: !606, line: 14, baseType: !441, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !605, file: !606, line: 14, baseType: !453, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !605, file: !606, line: 14, baseType: !505, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !605, file: !606, line: 14, baseType: !612, size: 64, offset: 192)
!612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 14, size: 64, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !612, file: !606, line: 14, baseType: !505, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !612, file: !606, line: 14, baseType: !486, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !605, file: !606, line: 15, baseType: !441, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !605, file: !606, line: 15, baseType: !618, size: 64, offset: 320)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 15, size: 64, elements: !619)
!619 = !{!620, !646}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !618, file: !606, line: 15, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !437, line: 2617, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !425, line: 202, size: 320, elements: !624)
!624 = !{!625, !626, !627, !631, !634, !635, !636, !637, !638, !639, !640, !641, !642, !645}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !623, file: !425, line: 203, baseType: !621, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !623, file: !425, line: 203, baseType: !621, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !623, file: !425, line: 203, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!621}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !623, file: !425, line: 203, baseType: !632, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !633, line: 25, baseType: !492)
!633 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!634 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !623, file: !425, line: 203, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !623, file: !425, line: 203, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !623, file: !425, line: 203, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !623, file: !425, line: 203, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !623, file: !425, line: 203, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !623, file: !425, line: 203, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !623, file: !425, line: 203, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !623, file: !425, line: 203, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !623, file: !425, line: 203, baseType: !643, size: 8, offset: 272)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !480, line: 171, baseType: !644)
!644 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !623, file: !425, line: 203, baseType: !643, size: 8, offset: 280)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !618, file: !606, line: 15, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !437, line: 2674, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !437, line: 3691, size: 64, elements: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !661}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !648, file: !437, line: 3692, baseType: !477, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !648, file: !437, line: 3693, baseType: !554, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !648, file: !437, line: 3694, baseType: !479, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !648, file: !437, line: 3695, baseType: !489, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !648, file: !437, line: 3696, baseType: !491, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !648, file: !437, line: 3697, baseType: !433, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !648, file: !437, line: 3698, baseType: !434, size: 8)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !648, file: !437, line: 3699, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !477}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !648, file: !437, line: 3700, baseType: !658, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !605, file: !606, line: 15, baseType: !663, size: 64, offset: 384)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 15, size: 64, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !663, file: !606, line: 15, baseType: !621, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !663, file: !606, line: 15, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !598}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !605, file: !606, line: 15, baseType: !671, size: 64, offset: 448)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 15, size: 64, elements: !672)
!672 = !{!673, !722}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !671, file: !606, line: 15, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !437, line: 2653, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !405, line: 231, size: 192, elements: !677)
!677 = !{!678, !707, !708, !709}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !676, file: !405, line: 232, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !437, line: 2668, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !405, line: 561, size: 384, elements: !682)
!682 = !{!683, !684, !685, !686, !691, !697}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !681, file: !405, line: 562, baseType: !441, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !681, file: !405, line: 562, baseType: !453, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !681, file: !405, line: 562, baseType: !505, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !681, file: !405, line: 562, baseType: !687, size: 64, offset: 192)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !405, line: 562, size: 64, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !687, file: !405, line: 562, baseType: !505, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !687, file: !405, line: 562, baseType: !486, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !681, file: !405, line: 563, baseType: !692, size: 64, offset: 256)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !405, line: 488, size: 64, elements: !693)
!693 = !{!694, !695, !696}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !692, file: !405, line: 489, baseType: !489, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !692, file: !405, line: 490, baseType: !491, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !692, file: !405, line: 491, baseType: !548, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !681, file: !405, line: 564, baseType: !698, size: 64, offset: 320)
!698 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !405, line: 479, size: 64, elements: !699)
!699 = !{!700, !701, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !698, file: !405, line: 480, baseType: !494, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !698, file: !405, line: 481, baseType: !441, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !698, file: !405, line: 485, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !698, file: !405, line: 482, size: 64, elements: !704)
!704 = !{!705, !706}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !703, file: !405, line: 483, baseType: !479, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !703, file: !405, line: 484, baseType: !479, size: 32, offset: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !676, file: !405, line: 232, baseType: !479, size: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !676, file: !405, line: 232, baseType: !479, size: 32, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !676, file: !405, line: 233, baseType: !710, size: 64, offset: 128)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !405, line: 233, size: 64, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !710, file: !405, line: 233, baseType: !486, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !710, file: !405, line: 233, baseType: !489, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !710, file: !405, line: 233, baseType: !491, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !710, file: !405, line: 233, baseType: !494, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !710, file: !405, line: 233, baseType: !472, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !710, file: !405, line: 233, baseType: !498, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !710, file: !405, line: 233, baseType: !539, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !710, file: !405, line: 233, baseType: !541, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !710, file: !405, line: 233, baseType: !565, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !710, file: !405, line: 233, baseType: !591, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !671, file: !606, line: 15, baseType: !548, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !605, file: !606, line: 15, baseType: !486, size: 64, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !605, file: !606, line: 15, baseType: !725, size: 64, offset: 576)
!725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !606, line: 15, size: 64, elements: !726)
!726 = !{!727, !772}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !725, file: !606, line: 15, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !437, line: 2681, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !633, line: 34, size: 192, elements: !731)
!731 = !{!732, !737, !770, !771}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !730, file: !633, line: 35, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !734, line: 108, baseType: !735)
!734 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !736, line: 193, baseType: !433)
!736 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!737 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !730, file: !633, line: 36, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !437, line: 2682, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !437, line: 2648, baseType: !742)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !405, line: 241, size: 192, elements: !743)
!743 = !{!744, !755, !756, !757}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !742, file: !405, line: 242, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !437, line: 2666, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !748, line: 11, size: 320, elements: !749)
!748 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!749 = !{!750, !751, !752, !753, !754}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !747, file: !748, line: 12, baseType: !441, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !747, file: !748, line: 13, baseType: !453, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !747, file: !748, line: 14, baseType: !733, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !747, file: !748, line: 15, baseType: !733, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !747, file: !748, line: 16, baseType: !539, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !742, file: !405, line: 242, baseType: !479, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !742, file: !405, line: 242, baseType: !479, size: 32, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !742, file: !405, line: 243, baseType: !758, size: 64, offset: 128)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !742, file: !405, line: 243, size: 64, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !758, file: !405, line: 243, baseType: !486, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !758, file: !405, line: 243, baseType: !489, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !758, file: !405, line: 243, baseType: !491, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !758, file: !405, line: 243, baseType: !494, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !758, file: !405, line: 243, baseType: !472, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !758, file: !405, line: 243, baseType: !498, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !758, file: !405, line: 243, baseType: !539, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !758, file: !405, line: 243, baseType: !541, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !758, file: !405, line: 243, baseType: !565, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !758, file: !405, line: 243, baseType: !591, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !730, file: !633, line: 37, baseType: !479, size: 32, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !730, file: !633, line: 38, baseType: !479, size: 32, offset: 160)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !725, file: !606, line: 15, baseType: !477, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !605, file: !606, line: 15, baseType: !598, size: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !605, file: !606, line: 15, baseType: !479, size: 32, offset: 704)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !605, file: !606, line: 15, baseType: !776, size: 32, offset: 736)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !405, line: 567, baseType: !479)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !605, file: !606, line: 15, baseType: !554, size: 32, offset: 768)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !600, file: !405, line: 237, baseType: !479, size: 32, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !600, file: !405, line: 237, baseType: !479, size: 32, offset: 96)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !600, file: !405, line: 238, baseType: !781, size: 64, offset: 128)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !405, line: 238, size: 64, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !788, !789, !790, !791, !792}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !781, file: !405, line: 238, baseType: !486, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !781, file: !405, line: 238, baseType: !489, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !781, file: !405, line: 238, baseType: !491, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !781, file: !405, line: 238, baseType: !494, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !781, file: !405, line: 238, baseType: !472, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !781, file: !405, line: 238, baseType: !498, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !781, file: !405, line: 238, baseType: !539, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !781, file: !405, line: 238, baseType: !541, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !781, file: !405, line: 238, baseType: !565, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !781, file: !405, line: 238, baseType: !591, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !567, file: !568, line: 15, baseType: !479, size: 32, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !567, file: !568, line: 16, baseType: !479, size: 32, offset: 224)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !567, file: !568, line: 17, baseType: !441, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !567, file: !568, line: 18, baseType: !797, size: 64, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !567, file: !568, line: 19, baseType: !598, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !567, file: !568, line: 20, baseType: !674, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !567, file: !568, line: 21, baseType: !5, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !567, file: !568, line: 22, baseType: !5, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !567, file: !568, line: 23, baseType: !548, size: 64, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !530, file: !405, line: 258, baseType: !591, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !516, file: !500, line: 159, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!554, !809, !486, !486, !486, !733, !472, !477, !479}
!809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !516, file: !500, line: 162, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!486, !809, !472, !814, !486, !486, !817, !818}
!814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !500, line: 152, baseType: !820)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !500, line: 148, size: 128, elements: !821)
!821 = !{!822, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !820, file: !500, line: 150, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !820, file: !500, line: 151, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !516, file: !500, line: 170, baseType: !827, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!472, !809}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !516, file: !500, line: 171, baseType: !831, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !809}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !516, file: !500, line: 172, baseType: !835, size: 64, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !809, !838, !804}
!838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !516, file: !500, line: 174, baseType: !840, size: 64, offset: 384)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{null, !809, !838, !843}
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !516, file: !500, line: 176, baseType: !847, size: 64, offset: 448)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!554, !809, !843, !838}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !516, file: !500, line: 178, baseType: !851, size: 64, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!472, !809, !804, !804, !817}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !516, file: !500, line: 180, baseType: !855, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!472, !809, !843, !817}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !516, file: !500, line: 182, baseType: !827, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !516, file: !500, line: 186, baseType: !860, size: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!522, !863, !471, !621, !514, !522, !864, !479, !479}
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !499, file: !500, line: 142, baseType: !522, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !499, file: !500, line: 142, baseType: !441, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !499, file: !500, line: 142, baseType: !479, size: 32, offset: 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !499, file: !500, line: 142, baseType: !733, size: 64, offset: 512)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !499, file: !500, line: 142, baseType: !733, size: 64, offset: 576)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !499, file: !500, line: 142, baseType: !505, size: 64, offset: 640)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !499, file: !500, line: 142, baseType: !872, size: 64, offset: 704)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !500, line: 45, size: 1024, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !873, file: !500, line: 46, baseType: !643, size: 8)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !873, file: !500, line: 47, baseType: !877, size: 960, offset: 64)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 960, elements: !885)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !500, line: 38, size: 320, elements: !879)
!879 = !{!880, !881, !882, !883, !884}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !878, file: !500, line: 39, baseType: !733, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !878, file: !500, line: 40, baseType: !733, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !878, file: !500, line: 41, baseType: !472, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !878, file: !500, line: 42, baseType: !472, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !878, file: !500, line: 43, baseType: !733, size: 64, offset: 256)
!885 = !{!886}
!886 = !DISubrange(count: 3)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !499, file: !500, line: 142, baseType: !479, size: 32, offset: 768)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !499, file: !500, line: 142, baseType: !479, size: 32, offset: 800)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !499, file: !500, line: 142, baseType: !477, size: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !499, file: !500, line: 142, baseType: !479, size: 32, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !499, file: !500, line: 142, baseType: !479, size: 32, offset: 928)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !499, file: !500, line: 142, baseType: !893, size: 64, offset: 960)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !500, line: 68, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !500, line: 58, size: 192, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !895, file: !500, line: 59, baseType: !733, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !895, file: !500, line: 60, baseType: !733, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !895, file: !500, line: 67, baseType: !733, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !499, file: !500, line: 142, baseType: !486, size: 64, offset: 1024)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !499, file: !500, line: 142, baseType: !472, size: 64, offset: 1088)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !499, file: !500, line: 142, baseType: !733, size: 64, offset: 1152)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !499, file: !500, line: 142, baseType: !733, size: 64, offset: 1216)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !499, file: !500, line: 142, baseType: !733, size: 64, offset: 1280)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !499, file: !500, line: 142, baseType: !733, size: 64, offset: 1344)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !499, file: !500, line: 142, baseType: !5, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !499, file: !500, line: 142, baseType: !5, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !499, file: !500, line: 142, baseType: !598, size: 64, offset: 1472)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !483, file: !405, line: 220, baseType: !539, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !483, file: !405, line: 220, baseType: !541, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !483, file: !405, line: 220, baseType: !565, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !483, file: !405, line: 220, baseType: !591, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !465, file: !459, line: 13, baseType: !468, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !465, file: !459, line: 14, baseType: !915, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!479, !472, !456}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !465, file: !459, line: 15, baseType: !468, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !465, file: !459, line: 16, baseType: !468, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !465, file: !459, line: 17, baseType: !921, size: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!471, !472, !456, !472, !815, !554}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !465, file: !459, line: 19, baseType: !925, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!471, !456, !928}
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !437, line: 2677, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !405, line: 2150, size: 320, elements: !931)
!931 = !{!932, !933, !934, !940, !941}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !930, file: !405, line: 2151, baseType: !797, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !930, file: !405, line: 2152, baseType: !491, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !930, file: !405, line: 2153, baseType: !935, size: 64, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !437, line: 2639, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !437, line: 5434, size: 8, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !937, file: !437, line: 5435, baseType: !487, size: 8)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !930, file: !405, line: 2154, baseType: !935, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !930, file: !405, line: 2155, baseType: !797, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !465, file: !459, line: 20, baseType: !468, size: 64, offset: 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !458, file: !459, line: 26, baseType: !944, size: 16, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !480, line: 173, baseType: !945)
!945 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !458, file: !459, line: 27, baseType: !487, size: 8, offset: 144)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !458, file: !459, line: 28, baseType: !643, size: 8, offset: 152)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !458, file: !459, line: 29, baseType: !733, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !458, file: !459, line: 30, baseType: !472, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !458, file: !459, line: 31, baseType: !486, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !453, file: !405, line: 496, baseType: !505, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !448, file: !449, line: 133, baseType: !505, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !448, file: !449, line: 134, baseType: !505, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !443, file: !405, line: 247, baseType: !479, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !443, file: !405, line: 247, baseType: !479, size: 32, offset: 96)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !443, file: !405, line: 248, baseType: !957, size: 64, offset: 128)
!957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !405, line: 248, size: 64, elements: !958)
!958 = !{!959, !960, !961, !962, !963, !964, !965, !966, !967, !968}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !957, file: !405, line: 248, baseType: !486, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !957, file: !405, line: 248, baseType: !489, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !957, file: !405, line: 248, baseType: !491, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !957, file: !405, line: 248, baseType: !494, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !957, file: !405, line: 248, baseType: !472, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !957, file: !405, line: 248, baseType: !498, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !957, file: !405, line: 248, baseType: !539, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !957, file: !405, line: 248, baseType: !541, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !957, file: !405, line: 248, baseType: !565, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !957, file: !405, line: 248, baseType: !591, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !438, file: !405, line: 604, baseType: !453, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !438, file: !405, line: 604, baseType: !505, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !438, file: !405, line: 604, baseType: !972, size: 64, offset: 192)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !405, line: 604, size: 64, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !972, file: !405, line: 604, baseType: !505, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !972, file: !405, line: 604, baseType: !486, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !438, file: !405, line: 605, baseType: !692, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !438, file: !405, line: 607, baseType: !591, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !438, file: !405, line: 620, baseType: !979, size: 64, offset: 384)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !438, file: !405, line: 617, size: 64, elements: !980)
!980 = !{!981, !986}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !979, file: !405, line: 618, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !984, line: 127, baseType: !985)
!984 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !984, line: 127, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !979, file: !405, line: 619, baseType: !477, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !438, file: !405, line: 622, baseType: !489, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !438, file: !405, line: 623, baseType: !489, size: 64, offset: 512)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !438, file: !405, line: 624, baseType: !489, size: 64, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !438, file: !405, line: 625, baseType: !486, size: 64, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !438, file: !405, line: 626, baseType: !674, size: 64, offset: 704)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !438, file: !405, line: 627, baseType: !486, size: 64, offset: 768)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !438, file: !405, line: 628, baseType: !674, size: 64, offset: 832)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !438, file: !405, line: 629, baseType: !486, size: 64, offset: 896)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !438, file: !405, line: 630, baseType: !674, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !438, file: !405, line: 631, baseType: !487, size: 8, offset: 1024)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !438, file: !405, line: 632, baseType: !643, size: 8, offset: 1032)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !405, line: 153, baseType: !404)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !437, line: 2659, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !405, line: 499, size: 256, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1001, file: !405, line: 500, baseType: !441, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1001, file: !405, line: 500, baseType: !453, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1001, file: !405, line: 500, baseType: !505, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1001, file: !405, line: 500, baseType: !1007, size: 64, offset: 192)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !405, line: 500, size: 64, elements: !1008)
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1007, file: !405, line: 500, baseType: !505, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1007, file: !405, line: 500, baseType: !486, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVUV", file: !437, line: 2661, baseType: !1013)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvuv", file: !405, line: 510, size: 320, elements: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1023}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1013, file: !405, line: 511, baseType: !441, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1013, file: !405, line: 511, baseType: !453, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1013, file: !405, line: 511, baseType: !505, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1013, file: !405, line: 511, baseType: !1019, size: 64, offset: 192)
!1019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !405, line: 511, size: 64, elements: !1020)
!1020 = !{!1021, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1019, file: !405, line: 511, baseType: !505, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1019, file: !405, line: 511, baseType: !486, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "xuv_u", scope: !1013, file: !405, line: 512, baseType: !692, size: 64, offset: 256)
!1024 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !734, line: 85, baseType: !1026)
!1026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !736, line: 152, baseType: !433)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIV", file: !437, line: 2660, baseType: !1029)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpviv", file: !405, line: 503, size: 320, elements: !1030)
!1030 = !{!1031, !1032, !1033, !1034, !1039}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1029, file: !405, line: 504, baseType: !441, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1029, file: !405, line: 504, baseType: !453, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1029, file: !405, line: 504, baseType: !505, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1029, file: !405, line: 504, baseType: !1035, size: 64, offset: 192)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1029, file: !405, line: 504, size: 64, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1035, file: !405, line: 504, baseType: !505, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1035, file: !405, line: 504, baseType: !486, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !1029, file: !405, line: 505, baseType: !692, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "SVOP", file: !437, line: 2625, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svop", file: !425, line: 407, size: 384, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1044, file: !425, line: 408, baseType: !621, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1044, file: !425, line: 408, baseType: !621, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1044, file: !425, line: 408, baseType: !628, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1044, file: !425, line: 408, baseType: !632, size: 64, offset: 192)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1044, file: !425, line: 408, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1044, file: !425, line: 408, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1044, file: !425, line: 408, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1044, file: !425, line: 408, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1044, file: !425, line: 408, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1044, file: !425, line: 408, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1044, file: !425, line: 408, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1044, file: !425, line: 408, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1044, file: !425, line: 408, baseType: !643, size: 8, offset: 272)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1044, file: !425, line: 408, baseType: !643, size: 8, offset: 280)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "op_sv", scope: !1044, file: !425, line: 409, baseType: !472, size: 64, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO", file: !437, line: 2654, baseType: !573)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!1066 = !{!1067}
!1067 = !DIGlobalVariableExpression(var: !1068, expr: !DIExpression())
!1068 = distinct !DIGlobalVariable(name: "no_prev_lstat", scope: !1069, file: !1070, line: 1462, type: !814, isLocal: true, isDefinition: true)
!1069 = distinct !DISubprogram(name: "Perl_my_lstat_flags", scope: !1070, file: !1070, line: 1460, type: !1071, scopeLine: 1461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1073)
!1070 = !DIFile(filename: "apps/500.perlbench_r/src/doio.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "cc664a9593f1cccc7db0357384979cc5")
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!554, !817}
!1073 = !{!1074, !1075, !1076, !1077, !1078}
!1074 = !DILocalVariable(name: "flags", arg: 1, scope: !1069, file: !1070, line: 1460, type: !817)
!1075 = !DILocalVariable(name: "sp", scope: !1069, file: !1070, line: 1463, type: !539)
!1076 = !DILocalVariable(name: "file", scope: !1069, file: !1070, line: 1464, type: !815)
!1077 = !DILocalVariable(name: "sv", scope: !1069, file: !1070, line: 1465, type: !804)
!1078 = !DILocalVariable(name: "isio", scope: !1069, file: !1070, line: 1466, type: !434)
!1079 = !{i32 7, !"Dwarf Version", i32 5}
!1080 = !{i32 2, !"Debug Info Version", i32 3}
!1081 = !{i32 1, !"wchar_size", i32 4}
!1082 = !{i32 7, !"PIC Level", i32 2}
!1083 = !{i32 7, !"PIE Level", i32 2}
!1084 = !{i32 7, !"uwtable", i32 2}
!1085 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1086 = distinct !DISubprogram(name: "Perl_do_openn", scope: !1070, file: !1070, line: 125, type: !1087, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!434, !674, !815, !554, !471, !471, !471, !591, !539, !554}
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098}
!1090 = !DILocalVariable(name: "gv", arg: 1, scope: !1086, file: !1070, line: 125, type: !674)
!1091 = !DILocalVariable(name: "oname", arg: 2, scope: !1086, file: !1070, line: 125, type: !815)
!1092 = !DILocalVariable(name: "len", arg: 3, scope: !1086, file: !1070, line: 125, type: !554)
!1093 = !DILocalVariable(name: "as_raw", arg: 4, scope: !1086, file: !1070, line: 125, type: !471)
!1094 = !DILocalVariable(name: "rawmode", arg: 5, scope: !1086, file: !1070, line: 126, type: !471)
!1095 = !DILocalVariable(name: "rawperm", arg: 6, scope: !1086, file: !1070, line: 126, type: !471)
!1096 = !DILocalVariable(name: "supplied_fp", arg: 7, scope: !1086, file: !1070, line: 126, type: !591)
!1097 = !DILocalVariable(name: "svp", arg: 8, scope: !1086, file: !1070, line: 126, type: !539)
!1098 = !DILocalVariable(name: "num_svs", arg: 9, scope: !1086, file: !1070, line: 127, type: !554)
!1099 = !DILocation(line: 0, scope: !1086)
!1100 = !DILocation(line: 131, column: 9, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1086, file: !1070, line: 131, column: 9)
!1102 = !DILocation(line: 131, column: 9, scope: !1086)
!1103 = !DILocation(line: 134, column: 14, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !1070, line: 134, column: 6)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !1070, line: 131, column: 17)
!1106 = !DILocation(line: 134, column: 6, scope: !1105)
!1107 = !DILocation(line: 136, column: 10, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1104, file: !1070, line: 134, column: 20)
!1109 = !DILocation(line: 135, column: 6, scope: !1108)
!1110 = !DILocation(line: 137, column: 2, scope: !1108)
!1111 = !DILocation(line: 138, column: 16, scope: !1105)
!1112 = !DILocation(line: 138, column: 9, scope: !1105)
!1113 = !DILocation(line: 140, column: 12, scope: !1086)
!1114 = !DILocation(line: 140, column: 5, scope: !1086)
!1115 = !DILocation(line: 141, column: 1, scope: !1086)
!1116 = !DISubprogram(name: "Perl_croak", scope: !1117, file: !1117, line: 741, type: !1118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!1117 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !815, null}
!1120 = !{}
!1121 = distinct !DISubprogram(name: "Perl_do_open_raw", scope: !1070, file: !1070, line: 144, type: !1122, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1124)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!434, !674, !815, !505, !471, !471}
!1124 = !{!1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1138, !1140, !1141, !1142, !1144, !1146, !1147, !1148}
!1125 = !DILocalVariable(name: "gv", arg: 1, scope: !1121, file: !1070, line: 144, type: !674)
!1126 = !DILocalVariable(name: "oname", arg: 2, scope: !1121, file: !1070, line: 144, type: !815)
!1127 = !DILocalVariable(name: "len", arg: 3, scope: !1121, file: !1070, line: 144, type: !505)
!1128 = !DILocalVariable(name: "rawmode", arg: 4, scope: !1121, file: !1070, line: 145, type: !471)
!1129 = !DILocalVariable(name: "rawperm", arg: 5, scope: !1121, file: !1070, line: 145, type: !471)
!1130 = !DILocalVariable(name: "saveifp", scope: !1121, file: !1070, line: 147, type: !591)
!1131 = !DILocalVariable(name: "saveofp", scope: !1121, file: !1070, line: 148, type: !591)
!1132 = !DILocalVariable(name: "savefd", scope: !1121, file: !1070, line: 149, type: !471)
!1133 = !DILocalVariable(name: "savetype", scope: !1121, file: !1070, line: 150, type: !487)
!1134 = !DILocalVariable(name: "mode", scope: !1121, file: !1070, line: 151, type: !1135)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 64, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 8)
!1138 = !DILocalVariable(name: "io", scope: !1121, file: !1070, line: 152, type: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1140 = !DILocalVariable(name: "writing", scope: !1121, file: !1070, line: 153, type: !471)
!1141 = !DILocalVariable(name: "fp", scope: !1121, file: !1070, line: 154, type: !591)
!1142 = !DILocalVariable(name: "ix", scope: !1143, file: !1070, line: 161, type: !505)
!1143 = distinct !DILexicalBlock(scope: !1121, file: !1070, line: 159, column: 5)
!1144 = !DILocalVariable(name: "appendtrunc", scope: !1143, file: !1070, line: 162, type: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!1146 = !DILocalVariable(name: "modifyingmode", scope: !1143, file: !1070, line: 171, type: !1145)
!1147 = !DILocalVariable(name: "ismodifying", scope: !1143, file: !1070, line: 172, type: !471)
!1148 = !DILocalVariable(name: "namesv", scope: !1143, file: !1070, line: 173, type: !472)
!1149 = !DILocation(line: 0, scope: !1121)
!1150 = !DILocation(line: 147, column: 5, scope: !1121)
!1151 = !DILocation(line: 148, column: 5, scope: !1121)
!1152 = !DILocation(line: 149, column: 5, scope: !1121)
!1153 = !DILocation(line: 150, column: 5, scope: !1121)
!1154 = !DILocation(line: 151, column: 5, scope: !1121)
!1155 = !DILocation(line: 151, column: 10, scope: !1121)
!1156 = !DILocation(line: 152, column: 21, scope: !1121)
!1157 = !DILocation(line: 153, column: 5, scope: !1121)
!1158 = !DILocation(line: 153, column: 9, scope: !1121)
!1159 = !DILocation(line: 0, scope: !1143)
!1160 = !DILocation(line: 173, column: 9, scope: !1143)
!1161 = !DILocation(line: 191, column: 30, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1143, file: !1070, line: 191, column: 6)
!1163 = !DILocation(line: 191, column: 19, scope: !1162)
!1164 = !DILocation(line: 191, column: 6, scope: !1143)
!1165 = !DILocation(line: 195, column: 5, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !1070, line: 195, column: 5)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !1070, line: 195, column: 5)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !1070, line: 192, column: 11)
!1169 = distinct !DILexicalBlock(scope: !1162, file: !1070, line: 191, column: 49)
!1170 = !DILocation(line: 197, column: 13, scope: !1143)
!1171 = !DILocation(line: 203, column: 51, scope: !1143)
!1172 = !DILocation(line: 203, column: 22, scope: !1143)
!1173 = !DILocation(line: 203, column: 9, scope: !1143)
!1174 = !DILocation(line: 203, column: 20, scope: !1143)
!1175 = !DILocation(line: 205, column: 11, scope: !1143)
!1176 = !DILocation(line: 205, column: 9, scope: !1143)
!1177 = !DILocation(line: 206, column: 7, scope: !1143)
!1178 = !DILocation(line: 207, column: 5, scope: !1121)
!1179 = !DILocation(line: 208, column: 12, scope: !1121)
!1180 = !DILocation(line: 210, column: 1, scope: !1121)
!1181 = !DILocation(line: 208, column: 5, scope: !1121)
!1182 = distinct !DISubprogram(name: "Perl_do_open6", scope: !1070, file: !1070, line: 213, type: !1183, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1185)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!434, !674, !815, !505, !591, !539, !479}
!1185 = !{!1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1214, !1217, !1218, !1226, !1227, !1228, !1234, !1238, !1244, !1251, !1258, !1264, !1265}
!1186 = !DILocalVariable(name: "gv", arg: 1, scope: !1182, file: !1070, line: 213, type: !674)
!1187 = !DILocalVariable(name: "oname", arg: 2, scope: !1182, file: !1070, line: 213, type: !815)
!1188 = !DILocalVariable(name: "len", arg: 3, scope: !1182, file: !1070, line: 213, type: !505)
!1189 = !DILocalVariable(name: "supplied_fp", arg: 4, scope: !1182, file: !1070, line: 214, type: !591)
!1190 = !DILocalVariable(name: "svp", arg: 5, scope: !1182, file: !1070, line: 214, type: !539)
!1191 = !DILocalVariable(name: "num_svs", arg: 6, scope: !1182, file: !1070, line: 214, type: !479)
!1192 = !DILocalVariable(name: "saveifp", scope: !1182, file: !1070, line: 216, type: !591)
!1193 = !DILocalVariable(name: "saveofp", scope: !1182, file: !1070, line: 217, type: !591)
!1194 = !DILocalVariable(name: "savefd", scope: !1182, file: !1070, line: 218, type: !471)
!1195 = !DILocalVariable(name: "savetype", scope: !1182, file: !1070, line: 219, type: !487)
!1196 = !DILocalVariable(name: "mode", scope: !1182, file: !1070, line: 220, type: !1135)
!1197 = !DILocalVariable(name: "io", scope: !1182, file: !1070, line: 221, type: !1139)
!1198 = !DILocalVariable(name: "writing", scope: !1182, file: !1070, line: 222, type: !471)
!1199 = !DILocalVariable(name: "fp", scope: !1182, file: !1070, line: 223, type: !591)
!1200 = !DILocalVariable(name: "was_fdopen", scope: !1182, file: !1070, line: 224, type: !434)
!1201 = !DILocalVariable(name: "type", scope: !1182, file: !1070, line: 225, type: !486)
!1202 = !DILocalVariable(name: "name", scope: !1203, file: !1070, line: 232, type: !486)
!1203 = distinct !DILexicalBlock(scope: !1182, file: !1070, line: 230, column: 5)
!1204 = !DILocalVariable(name: "olen", scope: !1203, file: !1070, line: 233, type: !505)
!1205 = !DILocalVariable(name: "tend", scope: !1203, file: !1070, line: 234, type: !486)
!1206 = !DILocalVariable(name: "dodup", scope: !1203, file: !1070, line: 235, type: !471)
!1207 = !DILocalVariable(name: "in_raw", scope: !1203, file: !1070, line: 236, type: !434)
!1208 = !DILocalVariable(name: "in_crlf", scope: !1203, file: !1070, line: 236, type: !434)
!1209 = !DILocalVariable(name: "out_raw", scope: !1203, file: !1070, line: 236, type: !434)
!1210 = !DILocalVariable(name: "out_crlf", scope: !1203, file: !1070, line: 236, type: !434)
!1211 = !DILocalVariable(name: "flags", scope: !1212, file: !1070, line: 241, type: !1041)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !1070, line: 239, column: 49)
!1213 = distinct !DILexicalBlock(scope: !1203, file: !1070, line: 239, column: 13)
!1214 = !DILocalVariable(name: "p", scope: !1215, file: !1070, line: 259, type: !815)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !1070, line: 258, column: 15)
!1216 = distinct !DILexicalBlock(scope: !1203, file: !1070, line: 258, column: 6)
!1217 = !DILocalVariable(name: "nlen", scope: !1215, file: !1070, line: 260, type: !505)
!1218 = !DILocalVariable(name: "that_fp", scope: !1219, file: !1070, line: 378, type: !591)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !1070, line: 377, column: 8)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !1070, line: 373, column: 7)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !1070, line: 365, column: 24)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !1070, line: 365, column: 10)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !1070, line: 348, column: 35)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !1070, line: 348, column: 11)
!1225 = distinct !DILexicalBlock(scope: !1203, file: !1070, line: 296, column: 6)
!1226 = !DILocalVariable(name: "wanted_fd", scope: !1219, file: !1070, line: 379, type: !471)
!1227 = !DILocalVariable(name: "uv", scope: !1219, file: !1070, line: 380, type: !491)
!1228 = !DILocalVariable(name: "thatio", scope: !1229, file: !1070, line: 401, type: !1232)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !1070, line: 400, column: 12)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !1070, line: 394, column: 16)
!1231 = distinct !DILexicalBlock(scope: !1219, file: !1070, line: 387, column: 11)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!1234 = !DILocalVariable(name: "thatgv", scope: !1235, file: !1070, line: 406, type: !1237)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !1070, line: 405, column: 9)
!1236 = distinct !DILexicalBlock(scope: !1229, file: !1070, line: 402, column: 8)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!1238 = !DILocalVariable(name: "namesv", scope: !1239, file: !1070, line: 478, type: !472)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !1070, line: 477, column: 26)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !1070, line: 474, column: 11)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !1070, line: 473, column: 9)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !1070, line: 464, column: 7)
!1243 = distinct !DILexicalBlock(scope: !1222, file: !1070, line: 461, column: 11)
!1244 = !DILocalVariable(name: "namesv", scope: !1245, file: !1070, line: 513, type: !472)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !1070, line: 512, column: 22)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !1070, line: 509, column: 7)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !1070, line: 508, column: 11)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !1070, line: 499, column: 10)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !1070, line: 487, column: 35)
!1250 = distinct !DILexicalBlock(scope: !1224, file: !1070, line: 487, column: 11)
!1251 = !DILocalVariable(name: "namesv", scope: !1252, file: !1070, line: 595, type: !472)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !1070, line: 594, column: 22)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !1070, line: 591, column: 7)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !1070, line: 590, column: 11)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !1070, line: 586, column: 10)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !1070, line: 572, column: 7)
!1257 = distinct !DILexicalBlock(scope: !1250, file: !1070, line: 521, column: 11)
!1258 = !DILabel(scope: !1259, name: "unknown_open_mode", file: !1070, line: 299)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !1070, line: 298, column: 30)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !1070, line: 298, column: 7)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !1070, line: 297, column: 19)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 297, column: 10)
!1263 = distinct !DILexicalBlock(scope: !1225, file: !1070, line: 296, column: 28)
!1264 = !DILabel(scope: !1221, name: "duplicity", file: !1070, line: 366)
!1265 = !DILabel(scope: !1182, name: "say_false", file: !1070, line: 603)
!1266 = !DILocation(line: 0, scope: !1182)
!1267 = !DILocation(line: 216, column: 5, scope: !1182)
!1268 = !DILocation(line: 217, column: 5, scope: !1182)
!1269 = !DILocation(line: 218, column: 5, scope: !1182)
!1270 = !DILocation(line: 219, column: 5, scope: !1182)
!1271 = !DILocation(line: 220, column: 5, scope: !1182)
!1272 = !DILocation(line: 220, column: 10, scope: !1182)
!1273 = !DILocation(line: 221, column: 21, scope: !1182)
!1274 = !DILocation(line: 0, scope: !1203)
!1275 = !DILocation(line: 239, column: 13, scope: !1213)
!1276 = !DILocation(line: 239, column: 19, scope: !1213)
!1277 = !DILocation(line: 239, column: 29, scope: !1213)
!1278 = !DILocation(line: 239, column: 37, scope: !1213)
!1279 = !DILocation(line: 239, column: 13, scope: !1203)
!1280 = !DILocation(line: 241, column: 37, scope: !1212)
!1281 = !DILocation(line: 0, scope: !1212)
!1282 = !DILocation(line: 242, column: 23, scope: !1212)
!1283 = !DILocation(line: 242, column: 29, scope: !1212)
!1284 = !DILocation(line: 242, column: 22, scope: !1212)
!1285 = !DILocation(line: 243, column: 30, scope: !1212)
!1286 = !DILocation(line: 243, column: 23, scope: !1212)
!1287 = !DILocation(line: 244, column: 30, scope: !1212)
!1288 = !DILocation(line: 244, column: 23, scope: !1212)
!1289 = !DILocation(line: 245, column: 31, scope: !1212)
!1290 = !DILocation(line: 245, column: 24, scope: !1212)
!1291 = !DILocation(line: 246, column: 9, scope: !1212)
!1292 = !DILocation(line: 248, column: 9, scope: !1203)
!1293 = !DILocation(line: 250, column: 2, scope: !1203)
!1294 = !DILocation(line: 253, column: 2, scope: !1203)
!1295 = !DILocation(line: 253, column: 9, scope: !1203)
!1296 = !DILocation(line: 254, column: 10, scope: !1203)
!1297 = distinct !{!1297, !1294, !1296, !1298, !1299}
!1298 = !{!"llvm.loop.mustprogress"}
!1299 = !{!"llvm.loop.unroll.disable"}
!1300 = !DILocation(line: 249, column: 13, scope: !1203)
!1301 = !DILocation(line: 255, column: 21, scope: !1203)
!1302 = !DILocation(line: 255, column: 28, scope: !1203)
!1303 = !DILocation(line: 255, column: 31, scope: !1203)
!1304 = !DILocation(line: 255, column: 9, scope: !1203)
!1305 = !DILocation(line: 256, column: 14, scope: !1203)
!1306 = distinct !{!1306, !1304, !1307, !1298, !1299}
!1307 = !DILocation(line: 256, column: 16, scope: !1203)
!1308 = !DILocation(line: 258, column: 6, scope: !1216)
!1309 = !DILocation(line: 258, column: 6, scope: !1203)
!1310 = !DILocation(line: 260, column: 13, scope: !1215)
!1311 = !DILocation(line: 0, scope: !1215)
!1312 = !DILocation(line: 260, column: 20, scope: !1215)
!1313 = !DILocation(line: 272, column: 18, scope: !1215)
!1314 = !DILocation(line: 272, column: 52, scope: !1215)
!1315 = !DILocation(line: 272, column: 17, scope: !1215)
!1316 = !DILocation(line: 274, column: 17, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1215, file: !1070, line: 274, column: 17)
!1318 = !DILocation(line: 274, column: 19, scope: !1317)
!1319 = !DILocation(line: 274, column: 23, scope: !1317)
!1320 = !DILocalVariable(name: "pv", arg: 1, scope: !1321, file: !1322, line: 300, type: !815)
!1321 = distinct !DISubprogram(name: "S_is_safe_syscall", scope: !1322, file: !1322, line: 300, type: !1323, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1325)
!1322 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!434, !815, !505, !815, !815}
!1325 = !{!1320, !1326, !1327, !1328, !1329}
!1326 = !DILocalVariable(name: "len", arg: 2, scope: !1321, file: !1322, line: 300, type: !505)
!1327 = !DILocalVariable(name: "what", arg: 3, scope: !1321, file: !1322, line: 300, type: !815)
!1328 = !DILocalVariable(name: "op_name", arg: 4, scope: !1321, file: !1322, line: 300, type: !815)
!1329 = !DILocalVariable(name: "null_at", scope: !1330, file: !1322, line: 308, type: !486)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !1322, line: 307, column: 18)
!1331 = distinct !DILexicalBlock(scope: !1321, file: !1322, line: 307, column: 9)
!1332 = !DILocation(line: 0, scope: !1321, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 274, column: 23, scope: !1317)
!1334 = !DILocation(line: 307, column: 13, scope: !1331, inlinedAt: !1333)
!1335 = !DILocation(line: 307, column: 9, scope: !1321, inlinedAt: !1333)
!1336 = !DILocation(line: 309, column: 13, scope: !1337, inlinedAt: !1333)
!1337 = distinct !DILexicalBlock(scope: !1330, file: !1322, line: 309, column: 13)
!1338 = !DILocation(line: 0, scope: !1330, inlinedAt: !1333)
!1339 = !DILocation(line: 309, column: 13, scope: !1330, inlinedAt: !1333)
!1340 = !DILocation(line: 279, column: 17, scope: !1215)
!1341 = !DILocation(line: 279, column: 13, scope: !1215)
!1342 = !DILocation(line: 279, column: 36, scope: !1215)
!1343 = !DILocation(line: 281, column: 6, scope: !1215)
!1344 = !DILocation(line: 282, column: 2, scope: !1216)
!1345 = !DILocation(line: 310, column: 17, scope: !1346, inlinedAt: !1333)
!1346 = distinct !DILexicalBlock(scope: !1337, file: !1322, line: 309, column: 73)
!1347 = !DILocation(line: 313, column: 62, scope: !1346, inlinedAt: !1333)
!1348 = !DILocation(line: 311, column: 17, scope: !1346, inlinedAt: !1333)
!1349 = !DILocation(line: 285, column: 17, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1216, file: !1070, line: 283, column: 7)
!1351 = !DILocation(line: 0, scope: !1216)
!1352 = !DILocation(line: 287, column: 15, scope: !1203)
!1353 = !DILocation(line: 287, column: 2, scope: !1203)
!1354 = !DILocation(line: 287, column: 13, scope: !1203)
!1355 = !DILocation(line: 288, column: 7, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1203, file: !1070, line: 288, column: 6)
!1357 = !DILocation(line: 288, column: 13, scope: !1356)
!1358 = !DILocation(line: 288, column: 29, scope: !1356)
!1359 = !DILocation(line: 289, column: 13, scope: !1356)
!1360 = !DILocation(line: 289, column: 40, scope: !1356)
!1361 = !DILocation(line: 290, column: 17, scope: !1356)
!1362 = !DILocation(line: 290, column: 26, scope: !1356)
!1363 = !DILocation(line: 290, column: 35, scope: !1356)
!1364 = !DILocation(line: 290, column: 38, scope: !1356)
!1365 = !DILocation(line: 290, column: 47, scope: !1356)
!1366 = !DILocation(line: 288, column: 6, scope: !1203)
!1367 = !DILocation(line: 291, column: 6, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !1070, line: 291, column: 6)
!1369 = distinct !DILexicalBlock(scope: !1356, file: !1070, line: 290, column: 66)
!1370 = !{i8 0, i8 2}
!1371 = !DILocation(line: 291, column: 6, scope: !1369)
!1372 = !DILocation(line: 291, column: 6, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1368, file: !1070, line: 291, column: 6)
!1374 = !DILocation(line: 292, column: 16, scope: !1369)
!1375 = !DILocation(line: 292, column: 6, scope: !1369)
!1376 = !DILocation(line: 292, column: 14, scope: !1369)
!1377 = !DILocation(line: 296, column: 6, scope: !1225)
!1378 = !DILocation(line: 294, column: 2, scope: !1369)
!1379 = !DILocation(line: 296, column: 6, scope: !1203)
!1380 = !DILocation(line: 297, column: 10, scope: !1263)
!1381 = !DILocation(line: 298, column: 7, scope: !1260)
!1382 = !DILocation(line: 298, column: 15, scope: !1260)
!1383 = !DILocation(line: 298, column: 7, scope: !1261)
!1384 = !DILocation(line: 224, column: 10, scope: !1182)
!1385 = !DILocation(line: 299, column: 12, scope: !1259)
!1386 = !DILocation(line: 300, column: 7, scope: !1259)
!1387 = !DILocation(line: 301, column: 3, scope: !1259)
!1388 = !DILocation(line: 292, column: 21, scope: !1369)
!1389 = !DILocation(line: 293, column: 14, scope: !1369)
!1390 = !DILocation(line: 302, column: 7, scope: !1261)
!1391 = !DILocation(line: 303, column: 6, scope: !1261)
!1392 = !DILocation(line: 304, column: 6, scope: !1263)
!1393 = !DILocation(line: 0, scope: !1263)
!1394 = !DILocation(line: 305, column: 7, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 304, column: 9)
!1396 = !DILocation(line: 306, column: 15, scope: !1263)
!1397 = !DILocation(line: 306, column: 6, scope: !1395)
!1398 = distinct !{!1398, !1392, !1399, !1298, !1299}
!1399 = !DILocation(line: 306, column: 29, scope: !1263)
!1400 = !DILocation(line: 307, column: 11, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 307, column: 10)
!1402 = !DILocation(line: 307, column: 10, scope: !1263)
!1403 = !DILocation(line: 309, column: 13, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !1070, line: 307, column: 20)
!1405 = !DILocation(line: 310, column: 6, scope: !1404)
!1406 = !DILocation(line: 311, column: 10, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 311, column: 10)
!1408 = !DILocation(line: 311, column: 10, scope: !1263)
!1409 = !DILocation(line: 313, column: 7, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !1070, line: 313, column: 7)
!1411 = distinct !DILexicalBlock(scope: !1407, file: !1070, line: 311, column: 25)
!1412 = !DILocation(line: 313, column: 7, scope: !1411)
!1413 = !DILocation(line: 314, column: 7, scope: !1410)
!1414 = !DILocation(line: 315, column: 3, scope: !1411)
!1415 = !DILocation(line: 315, column: 9, scope: !1411)
!1416 = !DILocation(line: 317, column: 3, scope: !1411)
!1417 = !DILocation(line: 319, column: 28, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 319, column: 10)
!1419 = !DILocation(line: 319, column: 36, scope: !1418)
!1420 = !DILocation(line: 319, column: 45, scope: !1418)
!1421 = !DILocation(line: 320, column: 3, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !1070, line: 320, column: 3)
!1423 = !DILocation(line: 320, column: 3, scope: !1418)
!1424 = !DILocation(line: 320, column: 3, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1422, file: !1070, line: 320, column: 3)
!1426 = !DILocation(line: 321, column: 6, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 321, column: 6)
!1428 = !DILocation(line: 321, column: 6, scope: !1263)
!1429 = !DILocation(line: 321, column: 6, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1427, file: !1070, line: 321, column: 6)
!1431 = !DILocation(line: 322, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 322, column: 10)
!1433 = !DILocation(line: 322, column: 30, scope: !1432)
!1434 = !DILocation(line: 322, column: 22, scope: !1432)
!1435 = !DILocation(line: 322, column: 34, scope: !1432)
!1436 = !DILocation(line: 322, column: 10, scope: !1263)
!1437 = !DILocation(line: 323, column: 15, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1432, file: !1070, line: 322, column: 42)
!1439 = !DILocation(line: 324, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1438, file: !1070, line: 324, column: 7)
!1441 = !DILocation(line: 324, column: 7, scope: !1438)
!1442 = !DILocation(line: 325, column: 7, scope: !1440)
!1443 = !DILocation(line: 327, column: 14, scope: !1263)
!1444 = !DILocation(line: 329, column: 17, scope: !1263)
!1445 = !DILocation(line: 0, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 329, column: 17)
!1447 = !DILocation(line: 333, column: 18, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 333, column: 10)
!1449 = !DILocation(line: 333, column: 10, scope: !1263)
!1450 = !DILocation(line: 334, column: 8, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1448, file: !1070, line: 333, column: 23)
!1452 = !DILocation(line: 335, column: 6, scope: !1451)
!1453 = !DILocation(line: 337, column: 8, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1448, file: !1070, line: 336, column: 11)
!1455 = !DILocation(line: 0, scope: !1448)
!1456 = !DILocation(line: 339, column: 10, scope: !1263)
!1457 = !DILocation(line: 340, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !1070, line: 340, column: 7)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !1070, line: 339, column: 19)
!1460 = distinct !DILexicalBlock(scope: !1263, file: !1070, line: 339, column: 10)
!1461 = !DILocation(line: 340, column: 7, scope: !1459)
!1462 = !DILocation(line: 341, column: 11, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !1070, line: 341, column: 11)
!1464 = distinct !DILexicalBlock(scope: !1458, file: !1070, line: 340, column: 14)
!1465 = !DILocation(line: 341, column: 53, scope: !1463)
!1466 = !DILocation(line: 341, column: 11, scope: !1464)
!1467 = !DILocation(line: 349, column: 6, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1223, file: !1070, line: 349, column: 6)
!1469 = !DILocation(line: 349, column: 6, scope: !1223)
!1470 = !DILocation(line: 349, column: 6, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1468, file: !1070, line: 349, column: 6)
!1472 = !DILocation(line: 350, column: 10, scope: !1223)
!1473 = !DILocation(line: 351, column: 10, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1223, file: !1070, line: 351, column: 10)
!1475 = !DILocation(line: 351, column: 16, scope: !1474)
!1476 = !DILocation(line: 351, column: 10, scope: !1223)
!1477 = !DILocation(line: 353, column: 13, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !1070, line: 351, column: 34)
!1479 = !DILocation(line: 353, column: 24, scope: !1478)
!1480 = !DILocation(line: 353, column: 11, scope: !1478)
!1481 = !DILocation(line: 354, column: 7, scope: !1478)
!1482 = !DILocation(line: 355, column: 6, scope: !1478)
!1483 = !DILocation(line: 357, column: 11, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1474, file: !1070, line: 356, column: 11)
!1485 = !DILocation(line: 0, scope: !1223)
!1486 = !DILocation(line: 361, column: 17, scope: !1223)
!1487 = !DILocation(line: 0, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1223, file: !1070, line: 361, column: 17)
!1489 = !DILocation(line: 365, column: 10, scope: !1222)
!1490 = !DILocation(line: 365, column: 16, scope: !1222)
!1491 = !DILocation(line: 365, column: 10, scope: !1223)
!1492 = !DILocation(line: 462, column: 10, scope: !1243)
!1493 = !DILocation(line: 462, column: 3, scope: !1243)
!1494 = !DILocation(line: 0, scope: !1224)
!1495 = !DILocation(line: 366, column: 8, scope: !1221)
!1496 = !DILocation(line: 368, column: 7, scope: !1221)
!1497 = !DILocation(line: 369, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1221, file: !1070, line: 369, column: 7)
!1499 = !DILocation(line: 369, column: 13, scope: !1498)
!1500 = !DILocation(line: 369, column: 7, scope: !1221)
!1501 = !DILocation(line: 373, column: 16, scope: !1220)
!1502 = !DILocation(line: 373, column: 20, scope: !1220)
!1503 = !DILocation(line: 373, column: 26, scope: !1220)
!1504 = !DILocation(line: 0, scope: !1219)
!1505 = !DILocation(line: 380, column: 21, scope: !1219)
!1506 = !DILocation(line: 381, column: 11, scope: !1219)
!1507 = !DILocation(line: 381, column: 19, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1219, file: !1070, line: 381, column: 11)
!1509 = !DILocation(line: 383, column: 60, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1508, file: !1070, line: 381, column: 24)
!1511 = !DILocation(line: 383, column: 4, scope: !1510)
!1512 = !DILocation(line: 384, column: 7, scope: !1510)
!1513 = !DILocation(line: 385, column: 7, scope: !1219)
!1514 = !DILocation(line: 0, scope: !1221)
!1515 = !DILocation(line: 385, column: 14, scope: !1219)
!1516 = !DILocation(line: 386, column: 8, scope: !1219)
!1517 = distinct !{!1517, !1513, !1516, !1298, !1299}
!1518 = !DILocation(line: 387, column: 19, scope: !1231)
!1519 = !DILocation(line: 388, column: 9, scope: !1231)
!1520 = !DILocation(line: 389, column: 6, scope: !1231)
!1521 = !DILocation(line: 389, column: 10, scope: !1231)
!1522 = !DILocation(line: 389, column: 23, scope: !1231)
!1523 = !DILocation(line: 389, column: 26, scope: !1231)
!1524 = !DILocation(line: 387, column: 11, scope: !1219)
!1525 = !DILocation(line: 394, column: 16, scope: !1230)
!1526 = !DILocation(line: 391, column: 37, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1231, file: !1070, line: 390, column: 13)
!1528 = !DILocation(line: 444, column: 11, scope: !1219)
!1529 = !DILocation(line: 395, column: 25, scope: !1230)
!1530 = !DILocation(line: 395, column: 28, scope: !1230)
!1531 = !DILocation(line: 396, column: 25, scope: !1230)
!1532 = !DILocation(line: 398, column: 37, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1230, file: !1070, line: 397, column: 23)
!1534 = !DILocation(line: 399, column: 7, scope: !1533)
!1535 = !DILocation(line: 402, column: 8, scope: !1229)
!1536 = !DILocation(line: 403, column: 17, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1236, file: !1070, line: 402, column: 17)
!1538 = !DILocation(line: 0, scope: !1229)
!1539 = !DILocation(line: 404, column: 4, scope: !1537)
!1540 = !DILocation(line: 406, column: 28, scope: !1235)
!1541 = !DILocation(line: 0, scope: !1235)
!1542 = !DILocation(line: 408, column: 17, scope: !1235)
!1543 = !DILocation(line: 0, scope: !1236)
!1544 = !DILocation(line: 410, column: 9, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1229, file: !1070, line: 410, column: 8)
!1546 = !DILocation(line: 410, column: 8, scope: !1229)
!1547 = !DILocation(line: 417, column: 19, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1229, file: !1070, line: 417, column: 8)
!1549 = !DILocation(line: 417, column: 17, scope: !1548)
!1550 = !DILocation(line: 417, column: 8, scope: !1229)
!1551 = !DILocation(line: 427, column: 8, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !1070, line: 417, column: 35)
!1553 = !DILocation(line: 428, column: 20, scope: !1552)
!1554 = !DILocation(line: 431, column: 23, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1552, file: !1070, line: 431, column: 12)
!1556 = !DILocation(line: 431, column: 20, scope: !1555)
!1557 = !DILocation(line: 432, column: 5, scope: !1555)
!1558 = !DILocation(line: 432, column: 19, scope: !1555)
!1559 = !DILocation(line: 432, column: 16, scope: !1555)
!1560 = !DILocation(line: 431, column: 12, scope: !1552)
!1561 = !DILocation(line: 433, column: 12, scope: !1555)
!1562 = !DILocation(line: 433, column: 23, scope: !1555)
!1563 = !DILocation(line: 434, column: 28, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1555, file: !1070, line: 434, column: 17)
!1565 = !DILocation(line: 434, column: 25, scope: !1564)
!1566 = !DILocation(line: 434, column: 17, scope: !1555)
!1567 = !DILocation(line: 435, column: 33, scope: !1564)
!1568 = !DILocation(line: 435, column: 44, scope: !1564)
!1569 = !DILocation(line: 438, column: 17, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1564, file: !1070, line: 438, column: 17)
!1571 = !DILocation(line: 438, column: 32, scope: !1570)
!1572 = !DILocation(line: 438, column: 17, scope: !1564)
!1573 = !DILocation(line: 439, column: 5, scope: !1570)
!1574 = !DILocation(line: 439, column: 16, scope: !1570)
!1575 = !DILocation(line: 0, scope: !1231)
!1576 = !DILocation(line: 444, column: 12, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1219, file: !1070, line: 444, column: 11)
!1578 = !DILocation(line: 446, column: 11, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1219, file: !1070, line: 446, column: 11)
!1580 = !DILocation(line: 446, column: 11, scope: !1219)
!1581 = !DILocation(line: 447, column: 9, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !1070, line: 446, column: 20)
!1583 = !DILocation(line: 448, column: 7, scope: !1582)
!1584 = !DILocation(line: 450, column: 8, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1579, file: !1070, line: 449, column: 12)
!1586 = !DILocation(line: 451, column: 41, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1585, file: !1070, line: 450, column: 8)
!1588 = !DILocation(line: 451, column: 29, scope: !1587)
!1589 = !DILocation(line: 454, column: 36, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1585, file: !1070, line: 454, column: 29)
!1591 = !DILocation(line: 454, column: 34, scope: !1590)
!1592 = !DILocation(line: 454, column: 29, scope: !1585)
!1593 = !DILocation(line: 455, column: 39, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !1070, line: 455, column: 33)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !1070, line: 454, column: 99)
!1596 = !DILocation(line: 456, column: 33, scope: !1594)
!1597 = !DILocation(line: 459, column: 3, scope: !1220)
!1598 = !DILocation(line: 412, column: 8, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1545, file: !1070, line: 410, column: 17)
!1600 = !DILocation(line: 463, column: 11, scope: !1243)
!1601 = distinct !{!1601, !1493, !1600, !1298, !1299}
!1602 = !DILocation(line: 464, column: 13, scope: !1242)
!1603 = !DILocation(line: 464, column: 27, scope: !1242)
!1604 = !DILocation(line: 464, column: 32, scope: !1242)
!1605 = !DILocation(line: 464, column: 40, scope: !1242)
!1606 = !DILocation(line: 464, column: 43, scope: !1242)
!1607 = !DILocation(line: 464, column: 60, scope: !1242)
!1608 = !DILocation(line: 466, column: 12, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1242, file: !1070, line: 464, column: 80)
!1610 = !DILocation(line: 467, column: 7, scope: !1609)
!1611 = !DILocation(line: 467, column: 18, scope: !1609)
!1612 = !DILocation(line: 468, column: 19, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1609, file: !1070, line: 468, column: 11)
!1614 = !DILocation(line: 468, column: 11, scope: !1609)
!1615 = !DILocation(line: 470, column: 4, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1613, file: !1070, line: 468, column: 24)
!1617 = !DILocation(line: 471, column: 7, scope: !1616)
!1618 = !DILocation(line: 474, column: 11, scope: !1241)
!1619 = !DILocation(line: 475, column: 30, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1240, file: !1070, line: 474, column: 20)
!1621 = !DILocation(line: 476, column: 21, scope: !1620)
!1622 = !DILocation(line: 478, column: 25, scope: !1239)
!1623 = !DILocation(line: 478, column: 38, scope: !1239)
!1624 = !DILocation(line: 0, scope: !1239)
!1625 = !DILocation(line: 478, column: 29, scope: !1239)
!1626 = !DILocation(line: 480, column: 30, scope: !1239)
!1627 = !DILocation(line: 481, column: 7, scope: !1240)
!1628 = !DILocation(line: 0, scope: !1222)
!1629 = !DILocation(line: 359, column: 14, scope: !1223)
!1630 = !DILocation(line: 484, column: 11, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1223, file: !1070, line: 484, column: 10)
!1632 = !DILocation(line: 484, column: 14, scope: !1631)
!1633 = !DILocation(line: 484, column: 25, scope: !1631)
!1634 = !DILocation(line: 484, column: 31, scope: !1631)
!1635 = !DILocation(line: 484, column: 51, scope: !1631)
!1636 = !DILocation(line: 484, column: 10, scope: !1223)
!1637 = !DILocation(line: 489, column: 7, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1249, file: !1070, line: 488, column: 9)
!1639 = !DILocation(line: 490, column: 15, scope: !1249)
!1640 = !DILocation(line: 490, column: 6, scope: !1638)
!1641 = distinct !{!1641, !1642, !1643, !1298, !1299}
!1642 = !DILocation(line: 488, column: 6, scope: !1249)
!1643 = !DILocation(line: 490, column: 29, scope: !1249)
!1644 = !DILocation(line: 491, column: 14, scope: !1249)
!1645 = !DILocation(line: 492, column: 17, scope: !1249)
!1646 = !DILocation(line: 0, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1249, file: !1070, line: 492, column: 17)
!1648 = !DILocation(line: 496, column: 10, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1249, file: !1070, line: 496, column: 10)
!1650 = !DILocation(line: 496, column: 10, scope: !1249)
!1651 = !DILocation(line: 499, column: 35, scope: !1248)
!1652 = !DILocation(line: 499, column: 43, scope: !1248)
!1653 = !DILocation(line: 499, column: 46, scope: !1248)
!1654 = !DILocation(line: 499, column: 63, scope: !1248)
!1655 = !DILocation(line: 501, column: 8, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1248, file: !1070, line: 499, column: 83)
!1657 = !DILocation(line: 502, column: 3, scope: !1656)
!1658 = !DILocation(line: 502, column: 14, scope: !1656)
!1659 = !DILocation(line: 503, column: 15, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !1070, line: 503, column: 7)
!1661 = !DILocation(line: 503, column: 7, scope: !1656)
!1662 = !DILocation(line: 505, column: 7, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !1070, line: 503, column: 20)
!1664 = !DILocation(line: 506, column: 3, scope: !1663)
!1665 = !DILocation(line: 509, column: 7, scope: !1247)
!1666 = !DILocation(line: 510, column: 26, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1246, file: !1070, line: 509, column: 16)
!1668 = !DILocation(line: 511, column: 17, scope: !1667)
!1669 = !DILocation(line: 513, column: 21, scope: !1245)
!1670 = !DILocation(line: 513, column: 35, scope: !1245)
!1671 = !DILocation(line: 0, scope: !1245)
!1672 = !DILocation(line: 513, column: 25, scope: !1245)
!1673 = !DILocation(line: 515, column: 26, scope: !1245)
!1674 = !DILocation(line: 516, column: 3, scope: !1246)
!1675 = !DILocation(line: 518, column: 14, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1249, file: !1070, line: 518, column: 10)
!1677 = !DILocation(line: 0, scope: !1248)
!1678 = !DILocation(line: 0, scope: !1249)
!1679 = !DILocation(line: 518, column: 11, scope: !1676)
!1680 = !DILocation(line: 518, column: 25, scope: !1676)
!1681 = !DILocation(line: 518, column: 31, scope: !1676)
!1682 = !DILocation(line: 518, column: 51, scope: !1676)
!1683 = !DILocation(line: 518, column: 10, scope: !1249)
!1684 = !DILocation(line: 521, column: 20, scope: !1257)
!1685 = !DILocation(line: 522, column: 30, scope: !1257)
!1686 = !DILocation(line: 522, column: 38, scope: !1257)
!1687 = !DILocation(line: 522, column: 54, scope: !1257)
!1688 = !DILocation(line: 523, column: 21, scope: !1257)
!1689 = !DILocation(line: 523, column: 41, scope: !1257)
!1690 = !DILocation(line: 523, column: 50, scope: !1257)
!1691 = !DILocation(line: 521, column: 11, scope: !1250)
!1692 = !DILocation(line: 524, column: 10, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1257, file: !1070, line: 523, column: 67)
!1694 = !DILocation(line: 525, column: 8, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !1070, line: 524, column: 19)
!1696 = distinct !DILexicalBlock(scope: !1693, file: !1070, line: 524, column: 10)
!1697 = !DILocation(line: 536, column: 10, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1693, file: !1070, line: 536, column: 10)
!1699 = !DILocation(line: 526, column: 6, scope: !1695)
!1700 = !DILocation(line: 528, column: 4, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1696, file: !1070, line: 527, column: 11)
!1702 = !DILocation(line: 528, column: 11, scope: !1701)
!1703 = !DILocation(line: 529, column: 15, scope: !1701)
!1704 = !DILocation(line: 529, column: 22, scope: !1701)
!1705 = !DILocation(line: 529, column: 25, scope: !1701)
!1706 = !DILocation(line: 529, column: 3, scope: !1701)
!1707 = !DILocation(line: 530, column: 15, scope: !1701)
!1708 = distinct !{!1708, !1706, !1709, !1298, !1299}
!1709 = !DILocation(line: 530, column: 17, scope: !1701)
!1710 = !DILocation(line: 531, column: 3, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1701, file: !1070, line: 531, column: 3)
!1712 = !DILocation(line: 531, column: 10, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1711, file: !1070, line: 531, column: 3)
!1714 = !DILocation(line: 531, column: 30, scope: !1713)
!1715 = distinct !{!1715, !1710, !1716, !1298, !1299}
!1716 = !DILocation(line: 532, column: 7, scope: !1711)
!1717 = !DILocation(line: 536, column: 10, scope: !1693)
!1718 = !DILocation(line: 538, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !1070, line: 538, column: 7)
!1720 = distinct !DILexicalBlock(scope: !1698, file: !1070, line: 536, column: 25)
!1721 = !DILocation(line: 538, column: 7, scope: !1720)
!1722 = !DILocation(line: 539, column: 7, scope: !1719)
!1723 = !DILocation(line: 540, column: 3, scope: !1720)
!1724 = !DILocation(line: 540, column: 9, scope: !1720)
!1725 = !DILocation(line: 542, column: 3, scope: !1720)
!1726 = !DILocation(line: 544, column: 28, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1693, file: !1070, line: 544, column: 10)
!1728 = !DILocation(line: 544, column: 36, scope: !1727)
!1729 = !DILocation(line: 544, column: 45, scope: !1727)
!1730 = !DILocation(line: 545, column: 3, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !1070, line: 545, column: 3)
!1732 = !DILocation(line: 545, column: 3, scope: !1727)
!1733 = !DILocation(line: 545, column: 3, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !1070, line: 545, column: 3)
!1735 = !DILocation(line: 546, column: 6, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1693, file: !1070, line: 546, column: 6)
!1737 = !DILocation(line: 546, column: 6, scope: !1693)
!1738 = !DILocation(line: 546, column: 6, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1736, file: !1070, line: 546, column: 6)
!1740 = !DILocation(line: 547, column: 14, scope: !1693)
!1741 = !DILocation(line: 549, column: 17, scope: !1693)
!1742 = !DILocation(line: 0, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1693, file: !1070, line: 549, column: 17)
!1744 = !DILocation(line: 554, column: 18, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1693, file: !1070, line: 554, column: 10)
!1746 = !DILocation(line: 554, column: 10, scope: !1693)
!1747 = !DILocation(line: 555, column: 8, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1745, file: !1070, line: 554, column: 23)
!1749 = !DILocation(line: 556, column: 6, scope: !1748)
!1750 = !DILocation(line: 558, column: 8, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1745, file: !1070, line: 557, column: 11)
!1752 = !DILocation(line: 0, scope: !1745)
!1753 = !DILocation(line: 560, column: 6, scope: !1693)
!1754 = !DILocation(line: 560, column: 17, scope: !1693)
!1755 = !DILocation(line: 561, column: 10, scope: !1693)
!1756 = !DILocation(line: 0, scope: !1693)
!1757 = !DILocation(line: 562, column: 10, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1070, line: 561, column: 19)
!1759 = distinct !DILexicalBlock(scope: !1693, file: !1070, line: 561, column: 10)
!1760 = !DILocation(line: 563, column: 11, scope: !1758)
!1761 = !DILocation(line: 562, column: 3, scope: !1758)
!1762 = distinct !{!1762, !1761, !1760, !1298, !1299}
!1763 = !DILocation(line: 564, column: 7, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1758, file: !1070, line: 564, column: 7)
!1765 = !DILocation(line: 564, column: 7, scope: !1758)
!1766 = !DILocation(line: 565, column: 11, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !1070, line: 565, column: 11)
!1768 = distinct !DILexicalBlock(scope: !1764, file: !1070, line: 564, column: 14)
!1769 = !DILocation(line: 565, column: 53, scope: !1767)
!1770 = !DILocation(line: 565, column: 11, scope: !1768)
!1771 = !DILocation(line: 573, column: 10, scope: !1256)
!1772 = !DILocation(line: 576, column: 6, scope: !1256)
!1773 = !DILocation(line: 576, column: 17, scope: !1256)
!1774 = !DILocation(line: 577, column: 6, scope: !1256)
!1775 = !DILocation(line: 0, scope: !1256)
!1776 = !DILocation(line: 577, column: 13, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !1070, line: 577, column: 6)
!1778 = distinct !DILexicalBlock(scope: !1256, file: !1070, line: 577, column: 6)
!1779 = !DILocation(line: 577, column: 33, scope: !1777)
!1780 = !DILocation(line: 577, column: 6, scope: !1778)
!1781 = distinct !{!1781, !1780, !1782, !1298, !1299}
!1782 = !DILocation(line: 578, column: 3, scope: !1778)
!1783 = !DILocation(line: 579, column: 14, scope: !1256)
!1784 = !DILocation(line: 581, column: 17, scope: !1256)
!1785 = !DILocation(line: 0, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1256, file: !1070, line: 581, column: 17)
!1787 = !DILocation(line: 586, column: 10, scope: !1255)
!1788 = !DILocation(line: 586, column: 16, scope: !1255)
!1789 = !DILocation(line: 586, column: 23, scope: !1255)
!1790 = !DILocation(line: 586, column: 26, scope: !1255)
!1791 = !DILocation(line: 586, column: 34, scope: !1255)
!1792 = !DILocation(line: 586, column: 10, scope: !1256)
!1793 = !DILocation(line: 587, column: 8, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1255, file: !1070, line: 586, column: 43)
!1795 = !DILocation(line: 588, column: 3, scope: !1794)
!1796 = !DILocation(line: 588, column: 14, scope: !1794)
!1797 = !DILocation(line: 589, column: 6, scope: !1794)
!1798 = !DILocation(line: 595, column: 7, scope: !1252)
!1799 = !DILocation(line: 595, column: 20, scope: !1252)
!1800 = !DILocation(line: 0, scope: !1252)
!1801 = !DILocation(line: 595, column: 11, scope: !1252)
!1802 = !DILocation(line: 597, column: 26, scope: !1252)
!1803 = !DILocation(line: 598, column: 3, scope: !1253)
!1804 = !DILocation(line: 0, scope: !1225)
!1805 = !DILocation(line: 601, column: 5, scope: !1182)
!1806 = !DILocation(line: 603, column: 3, scope: !1182)
!1807 = !DILocation(line: 604, column: 12, scope: !1182)
!1808 = !DILocation(line: 606, column: 1, scope: !1182)
!1809 = distinct !DISubprogram(name: "S_openn_setup", scope: !1070, file: !1070, line: 64, type: !1810, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1814)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!1061, !674, !486, !1812, !1812, !1813, !486}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!1814 = !{!1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1827}
!1815 = !DILocalVariable(name: "gv", arg: 1, scope: !1809, file: !1070, line: 64, type: !674)
!1816 = !DILocalVariable(name: "mode", arg: 2, scope: !1809, file: !1070, line: 64, type: !486)
!1817 = !DILocalVariable(name: "saveifp", arg: 3, scope: !1809, file: !1070, line: 64, type: !1812)
!1818 = !DILocalVariable(name: "saveofp", arg: 4, scope: !1809, file: !1070, line: 64, type: !1812)
!1819 = !DILocalVariable(name: "savefd", arg: 5, scope: !1809, file: !1070, line: 65, type: !1813)
!1820 = !DILocalVariable(name: "savetype", arg: 6, scope: !1809, file: !1070, line: 65, type: !486)
!1821 = !DILocalVariable(name: "io", scope: !1809, file: !1070, line: 67, type: !1139)
!1822 = !DILocalVariable(name: "old_fd", scope: !1823, file: !1070, line: 85, type: !1145)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !1070, line: 84, column: 7)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !1070, line: 81, column: 6)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !1070, line: 80, column: 20)
!1826 = distinct !DILexicalBlock(scope: !1809, file: !1070, line: 80, column: 9)
!1827 = !DILocalVariable(name: "result", scope: !1828, file: !1070, line: 95, type: !471)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !1070, line: 94, column: 18)
!1829 = distinct !DILexicalBlock(scope: !1823, file: !1070, line: 87, column: 17)
!1830 = !DILocation(line: 0, scope: !1809)
!1831 = !DILocation(line: 67, column: 21, scope: !1809)
!1832 = !DILocation(line: 71, column: 14, scope: !1809)
!1833 = !DILocation(line: 72, column: 14, scope: !1809)
!1834 = !DILocation(line: 73, column: 13, scope: !1809)
!1835 = !DILocation(line: 74, column: 15, scope: !1809)
!1836 = !DILocation(line: 76, column: 5, scope: !1809)
!1837 = !DILocation(line: 77, column: 20, scope: !1809)
!1838 = !DILocation(line: 80, column: 9, scope: !1826)
!1839 = !DILocation(line: 80, column: 9, scope: !1809)
!1840 = !DILocation(line: 81, column: 6, scope: !1824)
!1841 = !DILocation(line: 81, column: 17, scope: !1824)
!1842 = !DILocation(line: 81, column: 6, scope: !1825)
!1843 = !DILocation(line: 85, column: 32, scope: !1823)
!1844 = !DILocation(line: 0, scope: !1823)
!1845 = !DILocation(line: 87, column: 24, scope: !1829)
!1846 = !DILocation(line: 87, column: 29, scope: !1829)
!1847 = !DILocation(line: 89, column: 29, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1829, file: !1070, line: 87, column: 55)
!1849 = !DILocation(line: 89, column: 27, scope: !1848)
!1850 = !DILocation(line: 90, column: 29, scope: !1848)
!1851 = !DILocation(line: 90, column: 27, scope: !1848)
!1852 = !DILocation(line: 91, column: 29, scope: !1848)
!1853 = !DILocation(line: 91, column: 27, scope: !1848)
!1854 = !DILocation(line: 92, column: 27, scope: !1848)
!1855 = !DILocation(line: 93, column: 13, scope: !1848)
!1856 = !DILocation(line: 97, column: 21, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1828, file: !1070, line: 97, column: 21)
!1858 = !DILocation(line: 97, column: 32, scope: !1857)
!1859 = !DILocation(line: 0, scope: !1857)
!1860 = !DILocation(line: 97, column: 21, scope: !1828)
!1861 = !DILocation(line: 98, column: 30, scope: !1857)
!1862 = !DILocation(line: 0, scope: !1828)
!1863 = !DILocation(line: 98, column: 21, scope: !1857)
!1864 = !DILocation(line: 99, column: 39, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1857, file: !1070, line: 99, column: 26)
!1866 = !DILocation(line: 99, column: 36, scope: !1865)
!1867 = !DILocation(line: 99, column: 26, scope: !1857)
!1868 = !DILocation(line: 100, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !1070, line: 100, column: 25)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !1070, line: 99, column: 50)
!1871 = !DILocation(line: 100, column: 25, scope: !1870)
!1872 = !DILocation(line: 101, column: 34, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1869, file: !1070, line: 100, column: 36)
!1874 = !DILocation(line: 102, column: 25, scope: !1873)
!1875 = !DILocation(line: 103, column: 21, scope: !1873)
!1876 = !DILocation(line: 105, column: 34, scope: !1869)
!1877 = !DILocation(line: 108, column: 30, scope: !1865)
!1878 = !DILocation(line: 110, column: 28, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1828, file: !1070, line: 110, column: 21)
!1880 = !DILocation(line: 110, column: 35, scope: !1879)
!1881 = !DILocation(line: 112, column: 35, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !1070, line: 110, column: 60)
!1883 = !DILocation(line: 114, column: 35, scope: !1882)
!1884 = !DILocation(line: 112, column: 21, scope: !1882)
!1885 = !DILocation(line: 116, column: 17, scope: !1882)
!1886 = !DILocation(line: 119, column: 24, scope: !1825)
!1887 = !DILocation(line: 119, column: 2, scope: !1825)
!1888 = !DILocation(line: 119, column: 12, scope: !1825)
!1889 = !DILocation(line: 120, column: 5, scope: !1825)
!1890 = !DILocation(line: 121, column: 5, scope: !1809)
!1891 = !DISubprogram(name: "Perl_taint_proper", scope: !1117, file: !1117, line: 4875, type: !1892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !815, !814}
!1894 = !DISubprogram(name: "PerlIO_intmode2str", scope: !593, file: !593, line: 354, type: !1895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!471, !471, !486, !1813}
!1897 = !DISubprogram(name: "Perl_newSVpvn_flags", scope: !1117, file: !1117, line: 3116, type: !1898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{!472, !814, !1900, !817}
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!1901 = !DISubprogram(name: "PerlIO_openn", scope: !593, file: !593, line: 218, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!591, !815, !815, !471, !471, !471, !591, !471, !539}
!1904 = distinct !DISubprogram(name: "S_openn_cleanup", scope: !1070, file: !1070, line: 611, type: !1905, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1907)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!434, !674, !1061, !591, !486, !815, !591, !591, !471, !487, !471, !434, !815}
!1907 = !{!1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1929, !1930, !1933, !1934, !1935, !1940}
!1908 = !DILocalVariable(name: "gv", arg: 1, scope: !1904, file: !1070, line: 611, type: !674)
!1909 = !DILocalVariable(name: "io", arg: 2, scope: !1904, file: !1070, line: 611, type: !1061)
!1910 = !DILocalVariable(name: "fp", arg: 3, scope: !1904, file: !1070, line: 611, type: !591)
!1911 = !DILocalVariable(name: "mode", arg: 4, scope: !1904, file: !1070, line: 611, type: !486)
!1912 = !DILocalVariable(name: "oname", arg: 5, scope: !1904, file: !1070, line: 611, type: !815)
!1913 = !DILocalVariable(name: "saveifp", arg: 6, scope: !1904, file: !1070, line: 612, type: !591)
!1914 = !DILocalVariable(name: "saveofp", arg: 7, scope: !1904, file: !1070, line: 612, type: !591)
!1915 = !DILocalVariable(name: "savefd", arg: 8, scope: !1904, file: !1070, line: 612, type: !471)
!1916 = !DILocalVariable(name: "savetype", arg: 9, scope: !1904, file: !1070, line: 612, type: !487)
!1917 = !DILocalVariable(name: "writing", arg: 10, scope: !1904, file: !1070, line: 613, type: !471)
!1918 = !DILocalVariable(name: "was_fdopen", arg: 11, scope: !1904, file: !1070, line: 613, type: !434)
!1919 = !DILocalVariable(name: "type", arg: 12, scope: !1904, file: !1070, line: 613, type: !815)
!1920 = !DILocalVariable(name: "fd", scope: !1904, file: !1070, line: 615, type: !471)
!1921 = !DILocalVariable(name: "pid", scope: !1922, file: !1070, line: 723, type: !1927)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !1070, line: 722, column: 13)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !1070, line: 695, column: 20)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !1070, line: 695, column: 6)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !1070, line: 685, column: 18)
!1926 = distinct !DILexicalBlock(scope: !1904, file: !1070, line: 685, column: 9)
!1927 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !734, line: 97, baseType: !1928)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !736, line: 154, baseType: !471)
!1929 = !DILocalVariable(name: "sv", scope: !1922, file: !1070, line: 724, type: !472)
!1930 = !DILocalVariable(name: "ofd", scope: !1931, file: !1070, line: 738, type: !471)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !1070, line: 736, column: 22)
!1932 = distinct !DILexicalBlock(scope: !1923, file: !1070, line: 736, column: 10)
!1933 = !DILocalVariable(name: "dupfd", scope: !1931, file: !1070, line: 739, type: !471)
!1934 = !DILocalVariable(name: "coe", scope: !1931, file: !1070, line: 742, type: !471)
!1935 = !DILocalVariable(name: "s", scope: !1936, file: !1070, line: 783, type: !486)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !1070, line: 782, column: 83)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !1070, line: 781, column: 6)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !1070, line: 780, column: 18)
!1939 = distinct !DILexicalBlock(scope: !1904, file: !1070, line: 780, column: 9)
!1940 = !DILabel(scope: !1904, name: "say_false", file: !1070, line: 797)
!1941 = !DILocation(line: 0, scope: !1904)
!1942 = !DILocation(line: 619, column: 10, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1904, file: !1070, line: 619, column: 9)
!1944 = !DILocation(line: 619, column: 9, scope: !1904)
!1945 = !DILocation(line: 620, column: 6, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !1070, line: 620, column: 6)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !1070, line: 619, column: 14)
!1948 = !DILocation(line: 620, column: 17, scope: !1946)
!1949 = !DILocation(line: 620, column: 34, scope: !1946)
!1950 = !DILocation(line: 620, column: 37, scope: !1946)
!1951 = !DILocation(line: 621, column: 6, scope: !1946)
!1952 = !DILocalVariable(name: "pv", arg: 1, scope: !1953, file: !1322, line: 341, type: !815)
!1953 = distinct !DISubprogram(name: "S_should_warn_nl", scope: !1322, file: !1322, line: 341, type: !1954, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1956)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!434, !815}
!1956 = !{!1952, !1957}
!1957 = !DILocalVariable(name: "len", scope: !1953, file: !1322, line: 342, type: !505)
!1958 = !DILocation(line: 0, scope: !1953, inlinedAt: !1959)
!1959 = distinct !DILocation(line: 621, column: 9, scope: !1946)
!1960 = !DILocation(line: 346, column: 11, scope: !1953, inlinedAt: !1959)
!1961 = !DILocation(line: 348, column: 16, scope: !1953, inlinedAt: !1959)
!1962 = !DILocation(line: 348, column: 20, scope: !1953, inlinedAt: !1959)
!1963 = !DILocation(line: 348, column: 29, scope: !1953, inlinedAt: !1959)
!1964 = !DILocation(line: 348, column: 23, scope: !1953, inlinedAt: !1959)
!1965 = !DILocation(line: 348, column: 33, scope: !1953, inlinedAt: !1959)
!1966 = !DILocation(line: 620, column: 6, scope: !1947)
!1967 = !DILocation(line: 626, column: 6, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1946, file: !1070, line: 624, column: 9)
!1969 = !DILocation(line: 628, column: 9, scope: !1968)
!1970 = !DILocation(line: 632, column: 9, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1904, file: !1070, line: 632, column: 9)
!1972 = !DILocation(line: 632, column: 9, scope: !1904)
!1973 = !DILocation(line: 633, column: 7, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !1070, line: 633, column: 6)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !1070, line: 632, column: 26)
!1976 = !DILocation(line: 633, column: 18, scope: !1974)
!1977 = !DILocation(line: 633, column: 36, scope: !1974)
!1978 = !DILocation(line: 634, column: 13, scope: !1974)
!1979 = !DILocation(line: 634, column: 10, scope: !1974)
!1980 = !DILocation(line: 634, column: 29, scope: !1974)
!1981 = !DILocation(line: 634, column: 38, scope: !1974)
!1982 = !DILocation(line: 634, column: 35, scope: !1974)
!1983 = !DILocation(line: 633, column: 6, scope: !1975)
!1984 = !DILocation(line: 641, column: 12, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !1070, line: 641, column: 11)
!1986 = !DILocation(line: 638, column: 16, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1974, file: !1070, line: 634, column: 56)
!1988 = !DILocation(line: 638, column: 13, scope: !1987)
!1989 = !DILocation(line: 638, column: 9, scope: !1987)
!1990 = !DILocation(line: 639, column: 8, scope: !1987)
!1991 = !DILocation(line: 635, column: 3, scope: !1987)
!1992 = !DILocation(line: 640, column: 2, scope: !1987)
!1993 = !DILocation(line: 641, column: 23, scope: !1985)
!1994 = !DILocation(line: 641, column: 41, scope: !1985)
!1995 = !DILocation(line: 641, column: 50, scope: !1985)
!1996 = !DILocation(line: 641, column: 47, scope: !1985)
!1997 = !DILocation(line: 641, column: 11, scope: !1974)
!1998 = !DILocation(line: 644, column: 8, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1985, file: !1070, line: 641, column: 66)
!2000 = !DILocation(line: 642, column: 3, scope: !1999)
!2001 = !DILocation(line: 646, column: 2, scope: !1999)
!2002 = !DILocation(line: 649, column: 10, scope: !1904)
!2003 = !DILocation(line: 654, column: 9, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1904, file: !1070, line: 654, column: 9)
!2005 = !DILocation(line: 654, column: 20, scope: !2004)
!2006 = !DILocation(line: 654, column: 63, scope: !2004)
!2007 = !DILocation(line: 654, column: 77, scope: !2004)
!2008 = !DILocalVariable(name: "__fd", arg: 1, scope: !2009, file: !2010, line: 467, type: !471)
!2009 = distinct !DISubprogram(name: "fstat", scope: !2010, file: !2010, line: 467, type: !2011, scopeLine: 468, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2048)
!2010 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "461013b06495e219438a7cca03a67307")
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!471, !471, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2015, line: 46, size: 1152, elements: !2016)
!2015 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "f8d5b541c4f89219f8e8ff8c3e2940d9")
!2016 = !{!2017, !2019, !2021, !2023, !2025, !2027, !2029, !2030, !2031, !2032, !2034, !2036, !2044, !2045, !2046}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2014, file: !2015, line: 48, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !736, line: 145, baseType: !492)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2014, file: !2015, line: 53, baseType: !2020, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !736, line: 148, baseType: !492)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2014, file: !2015, line: 61, baseType: !2022, size: 64, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !736, line: 151, baseType: !492)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2014, file: !2015, line: 62, baseType: !2024, size: 32, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !736, line: 150, baseType: !5)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2014, file: !2015, line: 64, baseType: !2026, size: 32, offset: 224)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !736, line: 146, baseType: !5)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2014, file: !2015, line: 65, baseType: !2028, size: 32, offset: 256)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !736, line: 147, baseType: !5)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2014, file: !2015, line: 67, baseType: !471, size: 32, offset: 288)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2014, file: !2015, line: 69, baseType: !2018, size: 64, offset: 320)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2014, file: !2015, line: 74, baseType: !1026, size: 64, offset: 384)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2014, file: !2015, line: 78, baseType: !2033, size: 64, offset: 448)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !736, line: 174, baseType: !433)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2014, file: !2015, line: 80, baseType: !2035, size: 64, offset: 512)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !736, line: 179, baseType: !433)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2014, file: !2015, line: 91, baseType: !2037, size: 128, offset: 576)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2038, line: 10, size: 128, elements: !2039)
!2038 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "33f28095c70788baa6982a79b13f774b")
!2039 = !{!2040, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2037, file: !2038, line: 12, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !736, line: 160, baseType: !433)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2037, file: !2038, line: 16, baseType: !2043, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !736, line: 196, baseType: !433)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2014, file: !2015, line: 92, baseType: !2037, size: 128, offset: 704)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2014, file: !2015, line: 93, baseType: !2037, size: 128, offset: 832)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2014, file: !2015, line: 106, baseType: !2047, size: 192, offset: 960)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2043, size: 192, elements: !885)
!2048 = !{!2008, !2049}
!2049 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2009, file: !2010, line: 467, type: !2013)
!2050 = !DILocation(line: 0, scope: !2009, inlinedAt: !2051)
!2051 = distinct !DILocation(line: 655, column: 6, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !1070, line: 655, column: 6)
!2053 = distinct !DILexicalBlock(scope: !2004, file: !1070, line: 654, column: 89)
!2054 = !DILocation(line: 469, column: 10, scope: !2009, inlinedAt: !2051)
!2055 = !DILocation(line: 655, column: 36, scope: !2052)
!2056 = !DILocation(line: 655, column: 6, scope: !2053)
!2057 = !DILocation(line: 657, column: 13, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2052, file: !1070, line: 655, column: 41)
!2059 = !DILocation(line: 658, column: 6, scope: !2058)
!2060 = !DILocation(line: 661, column: 6, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2053, file: !1070, line: 661, column: 6)
!2062 = !DILocation(line: 661, column: 6, scope: !2053)
!2063 = !DILocation(line: 662, column: 6, scope: !2061)
!2064 = !DILocation(line: 662, column: 17, scope: !2061)
!2065 = !DILocation(line: 685, column: 9, scope: !1926)
!2066 = !DILocation(line: 685, column: 9, scope: !1904)
!2067 = !DILocation(line: 689, column: 6, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1925, file: !1070, line: 689, column: 6)
!2069 = !DILocation(line: 689, column: 6, scope: !1925)
!2070 = !DILocation(line: 690, column: 6, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !1070, line: 689, column: 15)
!2072 = !DILocation(line: 691, column: 18, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2071, file: !1070, line: 691, column: 10)
!2074 = !DILocation(line: 691, column: 10, scope: !2071)
!2075 = !DILocation(line: 692, column: 3, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !1070, line: 691, column: 30)
!2077 = !DILocation(line: 693, column: 6, scope: !2076)
!2078 = !DILocation(line: 695, column: 13, scope: !1924)
!2079 = !DILocation(line: 695, column: 6, scope: !1925)
!2080 = !DILocation(line: 700, column: 13, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !1923, file: !1070, line: 700, column: 10)
!2082 = !DILocation(line: 700, column: 10, scope: !1923)
!2083 = !DILocation(line: 701, column: 17, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2081, file: !1070, line: 700, column: 18)
!2085 = !DILocation(line: 702, column: 3, scope: !2084)
!2086 = !DILocation(line: 703, column: 24, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2081, file: !1070, line: 703, column: 24)
!2088 = !DILocation(line: 703, column: 49, scope: !2087)
!2089 = !DILocation(line: 703, column: 24, scope: !2081)
!2090 = !DILocation(line: 704, column: 9, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !1070, line: 703, column: 54)
!2092 = !DILocation(line: 705, column: 3, scope: !2091)
!2093 = !DILocation(line: 726, column: 23, scope: !1922)
!2094 = !DILocation(line: 726, column: 22, scope: !1922)
!2095 = !DILocation(line: 0, scope: !1922)
!2096 = !DILocation(line: 727, column: 17, scope: !1922)
!2097 = !DILocation(line: 728, column: 23, scope: !1922)
!2098 = !DILocation(line: 729, column: 17, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1922, file: !1070, line: 729, column: 17)
!2100 = !DILocation(line: 730, column: 23, scope: !1922)
!2101 = !DILocation(line: 730, column: 22, scope: !1922)
!2102 = !DILocation(line: 731, column: 17, scope: !1922)
!2103 = !DILocation(line: 732, column: 17, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1922, file: !1070, line: 732, column: 17)
!2105 = !DILocation(line: 736, column: 10, scope: !1923)
!2106 = !DILocation(line: 738, column: 27, scope: !1931)
!2107 = !DILocation(line: 0, scope: !1931)
!2108 = !DILocation(line: 739, column: 33, scope: !1931)
!2109 = !DILocation(line: 739, column: 29, scope: !1931)
!2110 = !DILocation(line: 739, column: 40, scope: !1931)
!2111 = !DILocation(line: 742, column: 38, scope: !1931)
!2112 = !DILocation(line: 743, column: 25, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1931, file: !1070, line: 743, column: 21)
!2114 = !DILocation(line: 743, column: 21, scope: !1931)
!2115 = !DILocation(line: 744, column: 31, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !1070, line: 744, column: 25)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !1070, line: 743, column: 30)
!2118 = !DILocation(line: 744, column: 25, scope: !2117)
!2119 = !DILocation(line: 745, column: 25, scope: !2116)
!2120 = !DILocation(line: 749, column: 29, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1931, file: !1070, line: 749, column: 21)
!2122 = !DILocation(line: 754, column: 17, scope: !1931)
!2123 = !DILocation(line: 755, column: 17, scope: !1931)
!2124 = !DILocation(line: 758, column: 3, scope: !1931)
!2125 = !DILocation(line: 760, column: 17, scope: !1931)
!2126 = !DILocation(line: 763, column: 3, scope: !1932)
!2127 = !DILocation(line: 766, column: 2, scope: !1925)
!2128 = !DILocation(line: 767, column: 7, scope: !1925)
!2129 = !DILocation(line: 768, column: 5, scope: !1925)
!2130 = !DILocation(line: 770, column: 12, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1904, file: !1070, line: 770, column: 9)
!2132 = !DILocation(line: 770, column: 9, scope: !1904)
!2133 = !DILocation(line: 771, column: 37, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !1070, line: 771, column: 13)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !1070, line: 770, column: 18)
!2136 = !DILocation(line: 771, column: 35, scope: !2134)
!2137 = !DILocation(line: 771, column: 13, scope: !2134)
!2138 = !DILocation(line: 771, column: 50, scope: !2134)
!2139 = !DILocation(line: 771, column: 13, scope: !2135)
!2140 = !DILocation(line: 772, column: 13, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2134, file: !1070, line: 771, column: 55)
!2142 = !DILocation(line: 773, column: 13, scope: !2141)
!2143 = !DILocation(line: 777, column: 5, scope: !1904)
!2144 = !DILocation(line: 777, column: 15, scope: !1904)
!2145 = !DILocation(line: 779, column: 5, scope: !1904)
!2146 = !DILocation(line: 779, column: 17, scope: !1904)
!2147 = !DILocation(line: 780, column: 9, scope: !1939)
!2148 = !DILocation(line: 780, column: 9, scope: !1904)
!2149 = !DILocation(line: 781, column: 6, scope: !1937)
!2150 = !DILocation(line: 781, column: 17, scope: !1937)
!2151 = !DILocation(line: 782, column: 6, scope: !1937)
!2152 = !DILocation(line: 782, column: 21, scope: !1937)
!2153 = !DILocation(line: 782, column: 38, scope: !1937)
!2154 = !DILocation(line: 782, column: 52, scope: !1937)
!2155 = !DILocation(line: 781, column: 6, scope: !1938)
!2156 = !DILocation(line: 0, scope: !1936)
!2157 = !DILocation(line: 784, column: 10, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !1936, file: !1070, line: 784, column: 10)
!2159 = !DILocation(line: 784, column: 32, scope: !2158)
!2160 = !DILocation(line: 785, column: 9, scope: !2158)
!2161 = !DILocation(line: 785, column: 8, scope: !2158)
!2162 = !DILocation(line: 786, column: 9, scope: !1936)
!2163 = !DILocation(line: 787, column: 24, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !1936, file: !1070, line: 787, column: 10)
!2165 = !DILocation(line: 787, column: 12, scope: !2164)
!2166 = !DILocation(line: 787, column: 22, scope: !2164)
!2167 = !DILocation(line: 787, column: 10, scope: !1936)
!2168 = !DILocation(line: 788, column: 3, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !1070, line: 787, column: 72)
!2170 = !DILocation(line: 793, column: 6, scope: !1937)
!2171 = !DILocation(line: 793, column: 16, scope: !1937)
!2172 = !DILocation(line: 797, column: 3, scope: !1904)
!2173 = !DILocation(line: 798, column: 5, scope: !1904)
!2174 = !DILocation(line: 798, column: 15, scope: !1904)
!2175 = !DILocation(line: 799, column: 5, scope: !1904)
!2176 = !DILocation(line: 799, column: 15, scope: !1904)
!2177 = !DILocation(line: 800, column: 5, scope: !1904)
!2178 = !DILocation(line: 800, column: 16, scope: !1904)
!2179 = !DILocation(line: 801, column: 5, scope: !1904)
!2180 = !DILocation(line: 802, column: 1, scope: !1904)
!2181 = !DISubprogram(name: "Perl_savepvn", scope: !1117, file: !1117, line: 3959, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!486, !815, !554}
!2184 = !DISubprogram(name: "Perl_save_pushptr", scope: !1117, file: !1117, line: 3917, type: !2185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{null, !2187, !1145}
!2187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!2188 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !1117, file: !1117, line: 4130, type: !2189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!486, !804, !2191, !838}
!2191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2192)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!2193 = !DISubprogram(name: "Perl_ckwarn", scope: !1117, file: !1117, line: 712, type: !2194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!434, !479}
!2196 = !DISubprogram(name: "Perl_warner", scope: !1117, file: !1117, line: 5194, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !479, !815, null}
!2199 = !DISubprogram(name: "Perl_taint_env", scope: !1117, file: !1117, line: 4874, type: !2200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null}
!2202 = !DISubprogram(name: "Perl_my_popen_list", scope: !1117, file: !1117, line: 2801, type: !2203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!591, !815, !471, !539}
!2205 = !DISubprogram(name: "Perl_my_popen", scope: !1117, file: !1117, line: 5431, type: !2206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!591, !815, !815}
!2208 = !DISubprogram(name: "PerlIO_apply_layers", scope: !593, file: !593, line: 341, type: !2209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!471, !591, !815, !815}
!2211 = !DISubprogram(name: "Perl_looks_like_number", scope: !1117, file: !1117, line: 2294, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!554, !804}
!2214 = !DISubprogram(name: "Perl_sv_2uv_flags", scope: !1117, file: !1117, line: 4168, type: !2215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!491, !804, !838}
!2217 = !DISubprogram(name: "Perl_grok_atoUV", scope: !1117, file: !1117, line: 1338, type: !2218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!434, !815, !2220, !1065}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!2221 = !DISubprogram(name: "Perl_sv_2io", scope: !1117, file: !1117, line: 4099, type: !2222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!1061, !804}
!2224 = !DISubprogram(name: "Perl_gv_fetchpvn_flags", scope: !1117, file: !1117, line: 1525, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!674, !815, !505, !554, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!2228 = !DISubprogram(name: "Perl_PerlIO_flush", scope: !1117, file: !1117, line: 8254, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!471, !591}
!2231 = !DISubprogram(name: "Perl_PerlIO_fileno", scope: !1117, file: !1117, line: 8252, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2232 = !DISubprogram(name: "Perl_PerlIO_stdout", scope: !1117, file: !1117, line: 8280, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!591}
!2235 = !DISubprogram(name: "Perl_PerlIO_stderr", scope: !1117, file: !1117, line: 8274, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2236 = !DISubprogram(name: "Perl_PerlIO_stdin", scope: !1117, file: !1117, line: 8277, type: !2233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2237 = !DISubprogram(name: "PerlIO_fdupopen", scope: !593, file: !593, line: 332, type: !2238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{!591, !591, !928, !471}
!2240 = !DISubprogram(name: "dup", scope: !2241, file: !2241, line: 531, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2241 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "29bea3f2d65ec3bb874f389bfdfa2266")
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!471, !471}
!2244 = !DISubprogram(name: "close", scope: !2241, file: !2241, line: 353, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2245 = distinct !DISubprogram(name: "Perl_nextargv", scope: !1070, file: !1070, line: 805, type: !2246, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2248)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!591, !674, !434}
!2248 = !{!2249, !2250, !2251, !2252, !2254, !2255, !2261, !2263, !2266, !2269, !2272}
!2249 = !DILocalVariable(name: "gv", arg: 1, scope: !2245, file: !1070, line: 805, type: !674)
!2250 = !DILocalVariable(name: "nomagicopen", arg: 2, scope: !2245, file: !1070, line: 805, type: !434)
!2251 = !DILocalVariable(name: "io", scope: !2245, file: !1070, line: 807, type: !1139)
!2252 = !DILocalVariable(name: "oldlen", scope: !2253, file: !1070, line: 835, type: !505)
!2253 = distinct !DILexicalBlock(scope: !2245, file: !1070, line: 834, column: 38)
!2254 = !DILocalVariable(name: "sv", scope: !2253, file: !1070, line: 836, type: !804)
!2255 = !DILocalVariable(name: "fileuid", scope: !2256, file: !1070, line: 860, type: !2260)
!2256 = distinct !DILexicalBlock(scope: !2257, file: !1070, line: 855, column: 67)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !1070, line: 855, column: 17)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !1070, line: 850, column: 14)
!2259 = distinct !DILexicalBlock(scope: !2253, file: !1070, line: 842, column: 13)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !734, line: 79, baseType: !2026)
!2261 = !DILocalVariable(name: "filegid", scope: !2256, file: !1070, line: 861, type: !2262)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !734, line: 64, baseType: !2028)
!2263 = !DILocalVariable(name: "star", scope: !2264, file: !1070, line: 884, type: !815)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !1070, line: 883, column: 46)
!2265 = distinct !DILexicalBlock(scope: !2256, file: !1070, line: 883, column: 7)
!2266 = !DILocalVariable(name: "begin", scope: !2267, file: !1070, line: 886, type: !815)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !1070, line: 885, column: 17)
!2268 = distinct !DILexicalBlock(scope: !2264, file: !1070, line: 885, column: 11)
!2269 = !DILocalVariable(name: "eno", scope: !2270, file: !1070, line: 998, type: !1145)
!2270 = distinct !DILexicalBlock(scope: !2271, file: !1070, line: 997, column: 37)
!2271 = distinct !DILexicalBlock(scope: !2253, file: !1070, line: 997, column: 13)
!2272 = !DILocalVariable(name: "oldout", scope: !2273, file: !1070, line: 1018, type: !1237)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !1070, line: 1017, column: 2)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !1070, line: 1015, column: 6)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !1070, line: 1013, column: 21)
!2276 = distinct !DILexicalBlock(scope: !2245, file: !1070, line: 1013, column: 9)
!2277 = !DILocation(line: 0, scope: !2245)
!2278 = !DILocation(line: 807, column: 21, scope: !2245)
!2279 = !DILocation(line: 811, column: 10, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2245, file: !1070, line: 811, column: 9)
!2281 = !DILocation(line: 811, column: 9, scope: !2245)
!2282 = !DILocation(line: 812, column: 17, scope: !2280)
!2283 = !DILocation(line: 812, column: 15, scope: !2280)
!2284 = !DILocation(line: 812, column: 2, scope: !2280)
!2285 = !DILocation(line: 813, column: 9, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2245, file: !1070, line: 813, column: 9)
!2287 = !DILocation(line: 813, column: 12, scope: !2286)
!2288 = !DILocation(line: 813, column: 16, scope: !2286)
!2289 = !DILocation(line: 813, column: 28, scope: !2286)
!2290 = !DILocation(line: 813, column: 52, scope: !2286)
!2291 = !DILocation(line: 813, column: 9, scope: !2245)
!2292 = !DILocation(line: 814, column: 14, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2286, file: !1070, line: 813, column: 77)
!2294 = !DILocation(line: 815, column: 6, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2293, file: !1070, line: 815, column: 6)
!2296 = !DILocation(line: 815, column: 6, scope: !2293)
!2297 = !DILocation(line: 818, column: 9, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !1070, line: 815, column: 18)
!2299 = !DILocation(line: 817, column: 6, scope: !2298)
!2300 = !DILocation(line: 819, column: 2, scope: !2298)
!2301 = !DILocation(line: 821, column: 9, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2245, file: !1070, line: 821, column: 9)
!2303 = !DILocation(line: 821, column: 21, scope: !2302)
!2304 = !DILocation(line: 821, column: 9, scope: !2245)
!2305 = !DILocation(line: 822, column: 2, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !1070, line: 821, column: 42)
!2307 = !DILocation(line: 827, column: 8, scope: !2306)
!2308 = !DILocation(line: 829, column: 5, scope: !2306)
!2309 = !DILocation(line: 830, column: 15, scope: !2245)
!2310 = !DILocation(line: 831, column: 17, scope: !2245)
!2311 = !DILocation(line: 832, column: 10, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2245, file: !1070, line: 832, column: 9)
!2313 = !DILocation(line: 832, column: 9, scope: !2245)
!2314 = !DILocation(line: 23, column: 12, scope: !2315, inlinedAt: !2320)
!2315 = distinct !DISubprogram(name: "S_av_top_index", scope: !1322, file: !1322, line: 18, type: !2316, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!733, !797}
!2318 = !{!2319}
!2319 = !DILocalVariable(name: "av", arg: 1, scope: !2315, file: !1322, line: 18, type: !797)
!2320 = distinct !DILocation(line: 834, column: 12, scope: !2245)
!2321 = !DILocation(line: 834, column: 12, scope: !2245)
!2322 = !DILocation(line: 0, scope: !2315, inlinedAt: !2320)
!2323 = !DILocation(line: 834, column: 32, scope: !2245)
!2324 = !DILocation(line: 834, column: 5, scope: !2245)
!2325 = !DILocation(line: 835, column: 2, scope: !2253)
!2326 = !DILocation(line: 836, column: 24, scope: !2253)
!2327 = !DILocation(line: 0, scope: !2253)
!2328 = !DILocation(line: 837, column: 2, scope: !2253)
!2329 = !DILocation(line: 838, column: 2, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !1070, line: 838, column: 2)
!2331 = distinct !DILexicalBlock(scope: !2253, file: !1070, line: 838, column: 2)
!2332 = !DILocation(line: 838, column: 2, scope: !2331)
!2333 = !DILocation(line: 838, column: 2, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2330, file: !1070, line: 838, column: 2)
!2335 = !DILocation(line: 839, column: 2, scope: !2253)
!2336 = !DILocation(line: 840, column: 2, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !1070, line: 840, column: 2)
!2338 = distinct !DILexicalBlock(scope: !2253, file: !1070, line: 840, column: 2)
!2339 = !DILocation(line: 840, column: 2, scope: !2338)
!2340 = !DILocation(line: 841, column: 15, scope: !2253)
!2341 = !DILocation(line: 841, column: 13, scope: !2253)
!2342 = !DILocation(line: 842, column: 13, scope: !2259)
!2343 = !DILocation(line: 842, column: 13, scope: !2253)
!2344 = !DILocation(line: 843, column: 17, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2259, file: !1070, line: 842, column: 34)
!2346 = !DILocation(line: 844, column: 23, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2345, file: !1070, line: 843, column: 17)
!2348 = !DILocation(line: 843, column: 17, scope: !2347)
!2349 = !DILocation(line: 845, column: 23, scope: !2347)
!2350 = !DILocation(line: 855, column: 17, scope: !2257)
!2351 = !DILocation(line: 0, scope: !1121, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 855, column: 17, scope: !2257)
!2353 = !DILocation(line: 147, column: 5, scope: !1121, inlinedAt: !2352)
!2354 = !DILocation(line: 148, column: 5, scope: !1121, inlinedAt: !2352)
!2355 = !DILocation(line: 149, column: 5, scope: !1121, inlinedAt: !2352)
!2356 = !DILocation(line: 150, column: 5, scope: !1121, inlinedAt: !2352)
!2357 = !DILocation(line: 151, column: 5, scope: !1121, inlinedAt: !2352)
!2358 = !DILocation(line: 151, column: 10, scope: !1121, inlinedAt: !2352)
!2359 = !DILocation(line: 152, column: 21, scope: !1121, inlinedAt: !2352)
!2360 = !DILocation(line: 153, column: 5, scope: !1121, inlinedAt: !2352)
!2361 = !DILocation(line: 153, column: 9, scope: !1121, inlinedAt: !2352)
!2362 = !DILocation(line: 0, scope: !1143, inlinedAt: !2352)
!2363 = !DILocation(line: 173, column: 9, scope: !1143, inlinedAt: !2352)
!2364 = !DILocation(line: 197, column: 13, scope: !1143, inlinedAt: !2352)
!2365 = !DILocation(line: 203, column: 22, scope: !1143, inlinedAt: !2352)
!2366 = !DILocation(line: 203, column: 9, scope: !1143, inlinedAt: !2352)
!2367 = !DILocation(line: 203, column: 20, scope: !1143, inlinedAt: !2352)
!2368 = !DILocation(line: 205, column: 11, scope: !1143, inlinedAt: !2352)
!2369 = !DILocation(line: 205, column: 9, scope: !1143, inlinedAt: !2352)
!2370 = !DILocation(line: 206, column: 7, scope: !1143, inlinedAt: !2352)
!2371 = !DILocation(line: 207, column: 5, scope: !1121, inlinedAt: !2352)
!2372 = !DILocation(line: 208, column: 12, scope: !1121, inlinedAt: !2352)
!2373 = !DILocation(line: 210, column: 1, scope: !1121, inlinedAt: !2352)
!2374 = !DILocation(line: 855, column: 17, scope: !2258)
!2375 = !DILocation(line: 863, column: 3, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2256, file: !1070, line: 863, column: 3)
!2377 = !DILocation(line: 863, column: 3, scope: !2256)
!2378 = !DILocation(line: 863, column: 3, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !1070, line: 863, column: 3)
!2380 = !DILocation(line: 864, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2256, file: !1070, line: 864, column: 7)
!2382 = !DILocation(line: 864, column: 14, scope: !2381)
!2383 = !DILocation(line: 864, column: 19, scope: !2381)
!2384 = !DILocation(line: 864, column: 23, scope: !2381)
!2385 = !DILocation(line: 864, column: 22, scope: !2381)
!2386 = !DILocation(line: 864, column: 34, scope: !2381)
!2387 = !DILocation(line: 864, column: 7, scope: !2256)
!2388 = !DILocation(line: 865, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2381, file: !1070, line: 864, column: 42)
!2390 = !DILocation(line: 867, column: 7, scope: !2389)
!2391 = !DILocation(line: 873, column: 28, scope: !2256)
!2392 = !DILocation(line: 873, column: 15, scope: !2256)
!2393 = !DILocation(line: 0, scope: !2256)
!2394 = !DILocation(line: 876, column: 8, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2256, file: !1070, line: 876, column: 7)
!2396 = !DILocation(line: 876, column: 7, scope: !2256)
!2397 = !DILocation(line: 879, column: 10, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2395, file: !1070, line: 876, column: 30)
!2399 = !DILocation(line: 877, column: 7, scope: !2398)
!2400 = !DILocalVariable(name: "not_implicit", arg: 2, scope: !2401, file: !1070, line: 1030, type: !434)
!2401 = distinct !DISubprogram(name: "Perl_do_close", scope: !1070, file: !1070, line: 1030, type: !2402, scopeLine: 1031, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!434, !674, !434}
!2404 = !{!2405, !2400, !2406, !2407}
!2405 = !DILocalVariable(name: "gv", arg: 1, scope: !2401, file: !1070, line: 1030, type: !674)
!2406 = !DILocalVariable(name: "retval", scope: !2401, file: !1070, line: 1032, type: !434)
!2407 = !DILocalVariable(name: "io", scope: !2401, file: !1070, line: 1033, type: !1061)
!2408 = !DILocation(line: 0, scope: !2401, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 880, column: 7, scope: !2398)
!2410 = !DILocation(line: 1037, column: 17, scope: !2411, inlinedAt: !2409)
!2411 = distinct !DILexicalBlock(scope: !2401, file: !1070, line: 1037, column: 9)
!2412 = distinct !{!2412, !2324, !2413, !1298, !1299}
!2413 = !DILocation(line: 1010, column: 5, scope: !2245)
!2414 = !DILocation(line: 1042, column: 10, scope: !2401, inlinedAt: !2409)
!2415 = !DILocation(line: 1043, column: 10, scope: !2416, inlinedAt: !2409)
!2416 = distinct !DILexicalBlock(scope: !2401, file: !1070, line: 1043, column: 9)
!2417 = !DILocation(line: 1043, column: 9, scope: !2401, inlinedAt: !2409)
!2418 = !DILocation(line: 1050, column: 14, scope: !2401, inlinedAt: !2409)
!2419 = !DILocation(line: 1056, column: 5, scope: !2401, inlinedAt: !2409)
!2420 = !DILocation(line: 1056, column: 16, scope: !2401, inlinedAt: !2409)
!2421 = !DILocation(line: 1057, column: 5, scope: !2401, inlinedAt: !2409)
!2422 = !DILocation(line: 883, column: 8, scope: !2265)
!2423 = !DILocation(line: 883, column: 7, scope: !2265)
!2424 = !DILocation(line: 883, column: 19, scope: !2265)
!2425 = !DILocation(line: 883, column: 22, scope: !2265)
!2426 = !DILocation(line: 883, column: 7, scope: !2256)
!2427 = !DILocation(line: 884, column: 26, scope: !2264)
!2428 = !DILocation(line: 0, scope: !2264)
!2429 = !DILocation(line: 885, column: 11, scope: !2268)
!2430 = !DILocation(line: 885, column: 11, scope: !2264)
!2431 = !DILocation(line: 0, scope: !2267)
!2432 = !DILocation(line: 887, column: 4, scope: !2267)
!2433 = !DILocation(line: 888, column: 4, scope: !2267)
!2434 = !DILocation(line: 889, column: 8, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2267, file: !1070, line: 888, column: 7)
!2436 = !DILocation(line: 890, column: 8, scope: !2435)
!2437 = !DILocation(line: 891, column: 16, scope: !2435)
!2438 = !DILocation(line: 892, column: 21, scope: !2267)
!2439 = !DILocation(line: 892, column: 4, scope: !2435)
!2440 = distinct !{!2440, !2433, !2441, !1298, !1299}
!2441 = !DILocation(line: 892, column: 40, scope: !2267)
!2442 = !DILocation(line: 893, column: 8, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2267, file: !1070, line: 893, column: 8)
!2444 = !DILocation(line: 893, column: 8, scope: !2267)
!2445 = !DILocation(line: 0, scope: !2268)
!2446 = !DILocation(line: 931, column: 13, scope: !2264)
!2447 = !DILocation(line: 932, column: 16, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2264, file: !1070, line: 932, column: 11)
!2449 = !DILocation(line: 932, column: 27, scope: !2448)
!2450 = !DILocation(line: 932, column: 11, scope: !2448)
!2451 = !DILocation(line: 932, column: 44, scope: !2448)
!2452 = !DILocation(line: 932, column: 11, scope: !2264)
!2453 = !DILocation(line: 935, column: 31, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2448, file: !1070, line: 932, column: 49)
!2455 = !DILocation(line: 933, column: 4, scope: !2454)
!2456 = !DILocation(line: 0, scope: !2401, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 936, column: 4, scope: !2454)
!2458 = !DILocation(line: 1037, column: 13, scope: !2411, inlinedAt: !2457)
!2459 = !DILocation(line: 1037, column: 17, scope: !2411, inlinedAt: !2457)
!2460 = !DILocation(line: 1042, column: 10, scope: !2401, inlinedAt: !2457)
!2461 = !DILocation(line: 1043, column: 10, scope: !2416, inlinedAt: !2457)
!2462 = !DILocation(line: 1043, column: 9, scope: !2401, inlinedAt: !2457)
!2463 = !DILocation(line: 1050, column: 14, scope: !2401, inlinedAt: !2457)
!2464 = !DILocation(line: 1056, column: 5, scope: !2401, inlinedAt: !2457)
!2465 = !DILocation(line: 1056, column: 16, scope: !2401, inlinedAt: !2457)
!2466 = !DILocation(line: 1057, column: 5, scope: !2401, inlinedAt: !2457)
!2467 = !DILocation(line: 939, column: 13, scope: !2264)
!2468 = !DILocation(line: 945, column: 11, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !1070, line: 945, column: 11)
!2470 = distinct !DILexicalBlock(scope: !2265, file: !1070, line: 942, column: 8)
!2471 = !DILocation(line: 945, column: 30, scope: !2469)
!2472 = !DILocation(line: 945, column: 11, scope: !2470)
!2473 = !DILocation(line: 948, column: 7, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2469, file: !1070, line: 945, column: 35)
!2475 = !DILocation(line: 948, column: 19, scope: !2474)
!2476 = !DILocation(line: 946, column: 4, scope: !2474)
!2477 = !DILocation(line: 0, scope: !2401, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 949, column: 4, scope: !2474)
!2479 = !DILocation(line: 1037, column: 17, scope: !2411, inlinedAt: !2478)
!2480 = !DILocation(line: 1042, column: 10, scope: !2401, inlinedAt: !2478)
!2481 = !DILocation(line: 1043, column: 10, scope: !2416, inlinedAt: !2478)
!2482 = !DILocation(line: 1043, column: 9, scope: !2401, inlinedAt: !2478)
!2483 = !DILocation(line: 1050, column: 14, scope: !2401, inlinedAt: !2478)
!2484 = !DILocation(line: 1056, column: 5, scope: !2401, inlinedAt: !2478)
!2485 = !DILocation(line: 1056, column: 16, scope: !2401, inlinedAt: !2478)
!2486 = !DILocation(line: 1057, column: 5, scope: !2401, inlinedAt: !2478)
!2487 = !DILocation(line: 958, column: 3, scope: !2256)
!2488 = !DILocation(line: 959, column: 3, scope: !2256)
!2489 = !DILocation(line: 960, column: 31, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2256, file: !1070, line: 960, column: 7)
!2491 = !DILocation(line: 960, column: 45, scope: !2490)
!2492 = !DILocation(line: 961, column: 39, scope: !2490)
!2493 = !DILocation(line: 960, column: 8, scope: !2490)
!2494 = !DILocation(line: 960, column: 7, scope: !2256)
!2495 = !DILocation(line: 969, column: 10, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2490, file: !1070, line: 967, column: 28)
!2497 = !DILocation(line: 969, column: 22, scope: !2496)
!2498 = !DILocation(line: 968, column: 7, scope: !2496)
!2499 = !DILocation(line: 0, scope: !2401, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 970, column: 7, scope: !2496)
!2501 = !DILocation(line: 1037, column: 13, scope: !2411, inlinedAt: !2500)
!2502 = !DILocation(line: 1037, column: 17, scope: !2411, inlinedAt: !2500)
!2503 = !DILocation(line: 1042, column: 10, scope: !2401, inlinedAt: !2500)
!2504 = !DILocation(line: 1043, column: 10, scope: !2416, inlinedAt: !2500)
!2505 = !DILocation(line: 1043, column: 9, scope: !2401, inlinedAt: !2500)
!2506 = !DILocation(line: 1050, column: 14, scope: !2401, inlinedAt: !2500)
!2507 = !DILocation(line: 1056, column: 5, scope: !2401, inlinedAt: !2500)
!2508 = !DILocation(line: 1056, column: 16, scope: !2401, inlinedAt: !2500)
!2509 = !DILocation(line: 1057, column: 5, scope: !2401, inlinedAt: !2500)
!2510 = !DILocation(line: 973, column: 3, scope: !2256)
!2511 = !DILocation(line: 974, column: 15, scope: !2256)
!2512 = !DILocation(line: 974, column: 13, scope: !2256)
!2513 = !DILocation(line: 975, column: 31, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2256, file: !1070, line: 975, column: 21)
!2515 = !DILocation(line: 975, column: 21, scope: !2256)
!2516 = !DILocation(line: 0, scope: !2009, inlinedAt: !2517)
!2517 = distinct !DILocation(line: 976, column: 27, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2514, file: !1070, line: 975, column: 37)
!2519 = !DILocation(line: 469, column: 10, scope: !2009, inlinedAt: !2517)
!2520 = !DILocation(line: 980, column: 27, scope: !2518)
!2521 = !DILocation(line: 982, column: 54, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2518, file: !1070, line: 982, column: 25)
!2523 = !DILocation(line: 997, column: 13, scope: !2271)
!2524 = !DILocation(line: 997, column: 13, scope: !2253)
!2525 = !DILocation(line: 998, column: 29, scope: !2270)
!2526 = !DILocation(line: 0, scope: !2270)
!2527 = !DILocation(line: 999, column: 17, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2270, file: !1070, line: 999, column: 17)
!2529 = !DILocalVariable(name: "__path", arg: 1, scope: !2530, file: !2010, line: 453, type: !815)
!2530 = distinct !DISubprogram(name: "stat", scope: !2010, file: !2010, line: 453, type: !2531, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!471, !815, !2013}
!2533 = !{!2529, !2534}
!2534 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2530, file: !2010, line: 453, type: !2013)
!2535 = !DILocation(line: 0, scope: !2530, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 999, column: 17, scope: !2528)
!2537 = !DILocation(line: 455, column: 10, scope: !2530, inlinedAt: !2536)
!2538 = !DILocation(line: 999, column: 55, scope: !2528)
!2539 = !DILocation(line: 1000, column: 17, scope: !2528)
!2540 = !DILocation(line: 1000, column: 21, scope: !2528)
!2541 = !DILocation(line: 999, column: 17, scope: !2270)
!2542 = !DILocation(line: 1003, column: 29, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2528, file: !1070, line: 1000, column: 50)
!2544 = !DILocation(line: 1001, column: 17, scope: !2543)
!2545 = !DILocation(line: 1004, column: 13, scope: !2543)
!2546 = !DILocation(line: 1007, column: 29, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2528, file: !1070, line: 1005, column: 18)
!2548 = !DILocation(line: 1007, column: 41, scope: !2547)
!2549 = !DILocation(line: 1006, column: 17, scope: !2547)
!2550 = !DILocation(line: 0, scope: !2259)
!2551 = !DILocation(line: 1011, column: 12, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2245, file: !1070, line: 1011, column: 9)
!2553 = !DILocation(line: 1011, column: 16, scope: !2552)
!2554 = !DILocation(line: 1011, column: 28, scope: !2552)
!2555 = !DILocation(line: 1011, column: 9, scope: !2245)
!2556 = !DILocation(line: 1012, column: 14, scope: !2552)
!2557 = !DILocation(line: 1012, column: 2, scope: !2552)
!2558 = !DILocation(line: 1013, column: 9, scope: !2276)
!2559 = !DILocation(line: 1013, column: 9, scope: !2245)
!2560 = !DILocation(line: 1014, column: 8, scope: !2275)
!2561 = !DILocation(line: 0, scope: !2401, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 1014, column: 8, scope: !2275)
!2563 = !DILocation(line: 1035, column: 10, scope: !2564, inlinedAt: !2562)
!2564 = distinct !DILexicalBlock(scope: !2401, file: !1070, line: 1035, column: 9)
!2565 = !DILocation(line: 1035, column: 9, scope: !2401, inlinedAt: !2562)
!2566 = !DILocation(line: 1037, column: 10, scope: !2411, inlinedAt: !2562)
!2567 = !DILocation(line: 1037, column: 13, scope: !2411, inlinedAt: !2562)
!2568 = !DILocation(line: 1037, column: 17, scope: !2411, inlinedAt: !2562)
!2569 = !DILocation(line: 1042, column: 10, scope: !2401, inlinedAt: !2562)
!2570 = !DILocation(line: 1043, column: 10, scope: !2416, inlinedAt: !2562)
!2571 = !DILocation(line: 1043, column: 9, scope: !2401, inlinedAt: !2562)
!2572 = !DILocation(line: 1050, column: 14, scope: !2401, inlinedAt: !2562)
!2573 = !DILocation(line: 1056, column: 5, scope: !2401, inlinedAt: !2562)
!2574 = !DILocation(line: 1056, column: 16, scope: !2401, inlinedAt: !2562)
!2575 = !DILocation(line: 1057, column: 5, scope: !2401, inlinedAt: !2562)
!2576 = !DILocation(line: 1015, column: 9, scope: !2274)
!2577 = !DILocation(line: 1015, column: 13, scope: !2274)
!2578 = !DILocation(line: 1015, column: 25, scope: !2274)
!2579 = !DILocation(line: 1016, column: 6, scope: !2274)
!2580 = !DILocation(line: 1016, column: 29, scope: !2274)
!2581 = !DILocation(line: 1016, column: 55, scope: !2274)
!2582 = !DILocation(line: 1015, column: 6, scope: !2275)
!2583 = !DILocation(line: 1018, column: 26, scope: !2273)
!2584 = !DILocation(line: 0, scope: !2273)
!2585 = !DILocation(line: 1019, column: 6, scope: !2273)
!2586 = !DILocalVariable(name: "sv", arg: 1, scope: !2587, file: !1322, line: 171, type: !472)
!2587 = distinct !DISubprogram(name: "S_SvREFCNT_dec_NN", scope: !1322, file: !1322, line: 171, type: !2588, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !472}
!2590 = !{!2586, !2591}
!2591 = !DILocalVariable(name: "rc", scope: !2587, file: !1322, line: 173, type: !479)
!2592 = !DILocation(line: 0, scope: !2587, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 1020, column: 6, scope: !2273)
!2594 = !DILocation(line: 173, column: 14, scope: !2587, inlinedAt: !2593)
!2595 = !DILocation(line: 174, column: 9, scope: !2596, inlinedAt: !2593)
!2596 = distinct !DILexicalBlock(scope: !2587, file: !1322, line: 174, column: 9)
!2597 = !DILocation(line: 174, column: 9, scope: !2587, inlinedAt: !2593)
!2598 = !DILocation(line: 175, column: 20, scope: !2596, inlinedAt: !2593)
!2599 = !DILocation(line: 175, column: 15, scope: !2596, inlinedAt: !2593)
!2600 = !DILocation(line: 175, column: 2, scope: !2596, inlinedAt: !2593)
!2601 = !DILocation(line: 177, column: 2, scope: !2596, inlinedAt: !2593)
!2602 = !DILocation(line: 1023, column: 2, scope: !2275)
!2603 = !DILocation(line: 1024, column: 5, scope: !2275)
!2604 = !DILocation(line: 1026, column: 1, scope: !2245)
!2605 = !DISubprogram(name: "Perl_av_create_and_push", scope: !1117, file: !1117, line: 191, type: !2606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{null, !2608, !804}
!2608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2609)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!2610 = !DISubprogram(name: "Perl_gv_add_by_type", scope: !1117, file: !1117, line: 1391, type: !2611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!674, !674, !998}
!2613 = !DISubprogram(name: "chmod", scope: !2010, file: !2010, line: 280, type: !2614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!471, !815, !2024}
!2616 = !DISubprogram(name: "Perl_av_shift", scope: !1117, file: !1117, line: 270, type: !2617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!472, !797}
!2619 = !DISubprogram(name: "Perl_sv_untaint", scope: !1117, file: !1117, line: 4742, type: !2620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !804}
!2622 = !DISubprogram(name: "Perl_sv_setsv_flags", scope: !1117, file: !1117, line: 4683, type: !2623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !472, !472, !838}
!2625 = !DISubprogram(name: "Perl_mg_set", scope: !1117, file: !1117, line: 2692, type: !2626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!471, !472}
!2628 = !DISubprogram(name: "Perl_setdefout", scope: !1117, file: !1117, line: 4041, type: !2629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{null, !674}
!2631 = !DISubprogram(name: "Perl_ck_warner_d", scope: !1117, file: !1117, line: 706, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2632 = !DILocation(line: 0, scope: !2401)
!2633 = !DILocation(line: 1035, column: 10, scope: !2564)
!2634 = !DILocation(line: 1035, column: 9, scope: !2401)
!2635 = !DILocation(line: 1037, column: 10, scope: !2411)
!2636 = !DILocation(line: 1037, column: 13, scope: !2411)
!2637 = !DILocation(line: 1037, column: 17, scope: !2411)
!2638 = !DILocation(line: 1038, column: 6, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2411, file: !1070, line: 1037, column: 35)
!2640 = !DILocation(line: 1039, column: 6, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2639, file: !1070, line: 1038, column: 6)
!2642 = !DILocation(line: 1042, column: 10, scope: !2401)
!2643 = !DILocation(line: 1043, column: 10, scope: !2416)
!2644 = !DILocation(line: 1043, column: 9, scope: !2401)
!2645 = !DILocation(line: 1044, column: 6, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2416, file: !1070, line: 1043, column: 14)
!2647 = !DILocation(line: 1045, column: 6, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !1070, line: 1044, column: 20)
!2649 = distinct !DILexicalBlock(scope: !2646, file: !1070, line: 1044, column: 6)
!2650 = !DILocation(line: 1046, column: 6, scope: !2648)
!2651 = !DILocation(line: 1047, column: 2, scope: !2648)
!2652 = !DILocation(line: 1050, column: 14, scope: !2401)
!2653 = !DILocation(line: 1051, column: 9, scope: !2401)
!2654 = !DILocation(line: 1052, column: 2, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !1070, line: 1051, column: 23)
!2656 = distinct !DILexicalBlock(scope: !2401, file: !1070, line: 1051, column: 9)
!2657 = !DILocation(line: 1052, column: 14, scope: !2655)
!2658 = !DILocation(line: 1053, column: 2, scope: !2655)
!2659 = !DILocation(line: 1053, column: 13, scope: !2655)
!2660 = !DILocation(line: 1054, column: 21, scope: !2655)
!2661 = !DILocation(line: 1054, column: 2, scope: !2655)
!2662 = !DILocation(line: 1054, column: 19, scope: !2655)
!2663 = !DILocation(line: 1055, column: 5, scope: !2655)
!2664 = !DILocation(line: 1056, column: 5, scope: !2401)
!2665 = !DILocation(line: 1056, column: 16, scope: !2401)
!2666 = !DILocation(line: 1057, column: 5, scope: !2401)
!2667 = !DILocation(line: 1058, column: 1, scope: !2401)
!2668 = !DISubprogram(name: "Perl_sv_setpvn", scope: !1117, file: !1117, line: 4641, type: !2669, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{null, !804, !814, !1900}
!2671 = !DISubprogram(name: "Perl_sv_catpvn_flags", scope: !1117, file: !1117, line: 4229, type: !2672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{null, !804, !815, !1900, !838}
!2674 = !DISubprogram(name: "Perl_sv_catpv", scope: !1117, file: !1117, line: 4193, type: !2675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{null, !804, !815}
!2677 = !DISubprogram(name: "unlink", scope: !2241, file: !2241, line: 825, type: !2678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!471, !815}
!2680 = !DISubprogram(name: "link", scope: !2241, file: !2241, line: 789, type: !2681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!471, !815, !815}
!2683 = !DISubprogram(name: "Perl_ckwarn_d", scope: !1117, file: !1117, line: 713, type: !2194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2684 = !DISubprogram(name: "Perl_av_pop", scope: !1117, file: !1117, line: 254, type: !2617, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2685 = !DISubprogram(name: "Perl_report_evil_fh", scope: !1117, file: !1117, line: 3707, type: !2686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{null, !1063}
!2688 = distinct !DISubprogram(name: "Perl_io_close", scope: !1070, file: !1070, line: 1061, type: !2689, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2691)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{!434, !1061, !674, !434, !434}
!2691 = !{!2692, !2693, !2694, !2695, !2696, !2697, !2702, !2708}
!2692 = !DILocalVariable(name: "io", arg: 1, scope: !2688, file: !1070, line: 1061, type: !1061)
!2693 = !DILocalVariable(name: "gv", arg: 2, scope: !2688, file: !1070, line: 1061, type: !674)
!2694 = !DILocalVariable(name: "not_implicit", arg: 3, scope: !2688, file: !1070, line: 1061, type: !434)
!2695 = !DILocalVariable(name: "warn_on_fail", arg: 4, scope: !2688, file: !1070, line: 1061, type: !434)
!2696 = !DILocalVariable(name: "retval", scope: !2688, file: !1070, line: 1063, type: !434)
!2697 = !DILocalVariable(name: "status", scope: !2698, file: !1070, line: 1069, type: !1145)
!2698 = distinct !DILexicalBlock(scope: !2699, file: !1070, line: 1068, column: 33)
!2699 = distinct !DILexicalBlock(scope: !2700, file: !1070, line: 1068, column: 6)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !1070, line: 1067, column: 20)
!2701 = distinct !DILexicalBlock(scope: !2688, file: !1070, line: 1067, column: 9)
!2702 = !DILocalVariable(name: "prev_err", scope: !2703, file: !1070, line: 1082, type: !2707)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !1070, line: 1081, column: 47)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !1070, line: 1081, column: 10)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !1070, line: 1080, column: 7)
!2706 = distinct !DILexicalBlock(scope: !2699, file: !1070, line: 1078, column: 11)
!2707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!2708 = !DILocalVariable(name: "prev_err", scope: !2709, file: !1070, line: 1091, type: !2707)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !1070, line: 1090, column: 11)
!2710 = !DILocation(line: 0, scope: !2688)
!2711 = !DILocation(line: 1067, column: 9, scope: !2701)
!2712 = !DILocation(line: 1067, column: 9, scope: !2688)
!2713 = !DILocation(line: 1068, column: 6, scope: !2699)
!2714 = !DILocation(line: 1068, column: 6, scope: !2700)
!2715 = !DILocation(line: 1099, column: 24, scope: !2700)
!2716 = !DILocation(line: 1099, column: 2, scope: !2700)
!2717 = !DILocation(line: 1099, column: 12, scope: !2700)
!2718 = !DILocation(line: 1101, column: 19, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2700, file: !1070, line: 1101, column: 6)
!2720 = !DILocation(line: 1069, column: 25, scope: !2698)
!2721 = !DILocation(line: 0, scope: !2698)
!2722 = !DILocation(line: 1070, column: 10, scope: !2698)
!2723 = !DILocation(line: 1071, column: 3, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !1070, line: 1071, column: 3)
!2725 = distinct !DILexicalBlock(scope: !2726, file: !1070, line: 1070, column: 24)
!2726 = distinct !DILexicalBlock(scope: !2698, file: !1070, line: 1070, column: 10)
!2727 = !DILocation(line: 1071, column: 3, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2724, file: !1070, line: 1071, column: 3)
!2729 = !DILocation(line: 1071, column: 3, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2728, file: !1070, line: 1071, column: 3)
!2731 = !DILocation(line: 0, scope: !2728)
!2732 = !DILocation(line: 1072, column: 25, scope: !2725)
!2733 = !DILocation(line: 1073, column: 6, scope: !2725)
!2734 = !DILocation(line: 1075, column: 20, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2726, file: !1070, line: 1074, column: 11)
!2736 = !DILocation(line: 1081, column: 10, scope: !2704)
!2737 = !DILocation(line: 1081, column: 20, scope: !2704)
!2738 = !DILocation(line: 1082, column: 25, scope: !2703)
!2739 = !DILocation(line: 0, scope: !2703)
!2740 = !DILocation(line: 1084, column: 7, scope: !2703)
!2741 = !DILocation(line: 1085, column: 7, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2703, file: !1070, line: 1084, column: 7)
!2743 = !DILocation(line: 1087, column: 13, scope: !2703)
!2744 = !DILocation(line: 1087, column: 37, scope: !2703)
!2745 = !DILocation(line: 1087, column: 44, scope: !2703)
!2746 = !DILocation(line: 1088, column: 3, scope: !2703)
!2747 = !DILocation(line: 1089, column: 6, scope: !2703)
!2748 = !DILocation(line: 1091, column: 25, scope: !2709)
!2749 = !DILocation(line: 0, scope: !2709)
!2750 = !DILocation(line: 1093, column: 7, scope: !2709)
!2751 = !DILocation(line: 1094, column: 7, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2709, file: !1070, line: 1093, column: 7)
!2753 = !DILocation(line: 1096, column: 13, scope: !2709)
!2754 = !DILocation(line: 1096, column: 37, scope: !2709)
!2755 = !DILocation(line: 1096, column: 44, scope: !2709)
!2756 = !DILocation(line: 1102, column: 10, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2758, file: !1070, line: 1102, column: 10)
!2758 = distinct !DILexicalBlock(scope: !2719, file: !1070, line: 1101, column: 31)
!2759 = !DILocation(line: 1102, column: 10, scope: !2758)
!2760 = !DILocation(line: 1106, column: 6, scope: !2757)
!2761 = !DILocation(line: 1106, column: 22, scope: !2757)
!2762 = !DILocation(line: 1103, column: 3, scope: !2757)
!2763 = !DILocation(line: 1111, column: 6, scope: !2757)
!2764 = !DILocation(line: 1108, column: 3, scope: !2757)
!2765 = !DILocation(line: 1114, column: 14, scope: !2701)
!2766 = !DILocation(line: 1115, column: 2, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !1070, line: 1114, column: 28)
!2768 = distinct !DILexicalBlock(scope: !2701, file: !1070, line: 1114, column: 14)
!2769 = !DILocation(line: 1116, column: 5, scope: !2767)
!2770 = !DILocation(line: 1118, column: 5, scope: !2688)
!2771 = !DISubprogram(name: "Perl_my_pclose", scope: !1117, file: !1117, line: 5430, type: !2772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!554, !591}
!2774 = !DISubprogram(name: "Perl_PerlIO_error", scope: !1117, file: !1117, line: 8251, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2775 = !DISubprogram(name: "Perl_PerlIO_restore_errno", scope: !1117, file: !1117, line: 8268, type: !2776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !591}
!2778 = !DISubprogram(name: "Perl_PerlIO_close", scope: !1117, file: !1117, line: 8249, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2779 = !DISubprogram(name: "Perl_get_sv", scope: !1117, file: !1117, line: 1323, type: !2780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!472, !815, !554}
!2782 = distinct !DISubprogram(name: "Perl_do_eof", scope: !1070, file: !1070, line: 1122, type: !2783, scopeLine: 1123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!434, !674}
!2785 = !{!2786, !2787, !2788, !2791}
!2786 = !DILocalVariable(name: "gv", arg: 1, scope: !2782, file: !1070, line: 1122, type: !674)
!2787 = !DILocalVariable(name: "io", scope: !2782, file: !1070, line: 1124, type: !1139)
!2788 = !DILocalVariable(name: "saved_errno", scope: !2789, file: !1070, line: 1141, type: !471)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !1070, line: 1139, column: 2)
!2790 = distinct !DILexicalBlock(scope: !2782, file: !1070, line: 1133, column: 23)
!2791 = !DILocalVariable(name: "ch", scope: !2789, file: !1070, line: 1142, type: !1145)
!2792 = !DILocation(line: 0, scope: !2782)
!2793 = !DILocation(line: 1124, column: 21, scope: !2782)
!2794 = !DILocation(line: 1128, column: 10, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2782, file: !1070, line: 1128, column: 9)
!2796 = !DILocation(line: 1128, column: 9, scope: !2782)
!2797 = !DILocation(line: 1130, column: 14, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2795, file: !1070, line: 1130, column: 14)
!2799 = !DILocation(line: 1130, column: 25, scope: !2798)
!2800 = !DILocation(line: 1130, column: 14, scope: !2795)
!2801 = !DILocation(line: 1131, column: 2, scope: !2798)
!2802 = !DILocation(line: 1133, column: 5, scope: !2782)
!2803 = !DILocation(line: 1133, column: 12, scope: !2782)
!2804 = !DILocation(line: 1134, column: 13, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2790, file: !1070, line: 1134, column: 13)
!2806 = !DILocation(line: 1134, column: 13, scope: !2790)
!2807 = !DILocation(line: 1135, column: 10, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !1070, line: 1135, column: 10)
!2809 = distinct !DILexicalBlock(scope: !2805, file: !1070, line: 1134, column: 43)
!2810 = !DILocation(line: 1135, column: 36, scope: !2808)
!2811 = !DILocation(line: 1135, column: 10, scope: !2809)
!2812 = !DILocation(line: 1141, column: 6, scope: !2789)
!2813 = !DILocation(line: 0, scope: !2789)
!2814 = !DILocation(line: 1142, column: 33, scope: !2789)
!2815 = !DILocation(line: 1142, column: 21, scope: !2789)
!2816 = !DILocation(line: 1143, column: 13, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2789, file: !1070, line: 1143, column: 10)
!2818 = !DILocation(line: 1143, column: 10, scope: !2789)
!2819 = !DILocation(line: 1144, column: 23, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2817, file: !1070, line: 1143, column: 21)
!2821 = !DILocation(line: 1144, column: 9, scope: !2820)
!2822 = !DILocation(line: 1151, column: 31, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2790, file: !1070, line: 1151, column: 13)
!2824 = !DILocation(line: 1151, column: 13, scope: !2823)
!2825 = !DILocation(line: 1151, column: 42, scope: !2823)
!2826 = !DILocation(line: 1151, column: 63, scope: !2823)
!2827 = !DILocation(line: 1151, column: 45, scope: !2823)
!2828 = !DILocation(line: 1151, column: 13, scope: !2790)
!2829 = !DILocation(line: 1152, column: 10, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2831, file: !1070, line: 1152, column: 10)
!2831 = distinct !DILexicalBlock(scope: !2823, file: !1070, line: 1151, column: 75)
!2832 = !DILocation(line: 1152, column: 36, scope: !2830)
!2833 = !DILocation(line: 1152, column: 10, scope: !2831)
!2834 = !DILocation(line: 1153, column: 3, scope: !2830)
!2835 = !DILocation(line: 1155, column: 6, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2790, file: !1070, line: 1155, column: 6)
!2837 = !DILocation(line: 1155, column: 13, scope: !2836)
!2838 = !DILocation(line: 1155, column: 22, scope: !2836)
!2839 = !DILocation(line: 1155, column: 6, scope: !2790)
!2840 = !DILocation(line: 1156, column: 30, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !1070, line: 1156, column: 10)
!2842 = distinct !DILexicalBlock(scope: !2836, file: !1070, line: 1155, column: 37)
!2843 = !DILocation(line: 1156, column: 10, scope: !2842)
!2844 = distinct !{!2844, !2802, !2845, !1298, !1299}
!2845 = !DILocation(line: 1161, column: 5, scope: !2782)
!2846 = !DILocation(line: 1163, column: 1, scope: !2782)
!2847 = !DISubprogram(name: "Perl_report_wrongway_fh", scope: !1117, file: !1117, line: 3709, type: !2848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !1063, !816}
!2850 = !DISubprogram(name: "PerlIO_has_cntptr", scope: !593, file: !593, line: 287, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2851 = !DISubprogram(name: "Perl_PerlIO_get_cnt", scope: !1117, file: !1117, line: 8259, type: !2852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!733, !591}
!2854 = !DISubprogram(name: "PerlIO_getc", scope: !593, file: !593, line: 232, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2855 = !DISubprogram(name: "PerlIO_ungetc", scope: !593, file: !593, line: 238, type: !2856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!471, !591, !471}
!2858 = !DISubprogram(name: "PerlIO_canset_cnt", scope: !593, file: !593, line: 293, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2859 = !DISubprogram(name: "Perl_PerlIO_set_cnt", scope: !1117, file: !1117, line: 8271, type: !2860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !591, !733}
!2862 = distinct !DISubprogram(name: "Perl_do_tell", scope: !1070, file: !1070, line: 1166, type: !2863, scopeLine: 1167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2865)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!1025, !674}
!2865 = !{!2866, !2867, !2868}
!2866 = !DILocalVariable(name: "gv", arg: 1, scope: !2862, file: !1070, line: 1166, type: !674)
!2867 = !DILocalVariable(name: "io", scope: !2862, file: !1070, line: 1168, type: !1139)
!2868 = !DILocalVariable(name: "fp", scope: !2862, file: !1070, line: 1169, type: !591)
!2869 = !DILocation(line: 0, scope: !2862)
!2870 = !DILocation(line: 1168, column: 20, scope: !2862)
!2871 = !DILocation(line: 1173, column: 9, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2862, file: !1070, line: 1173, column: 9)
!2873 = !DILocation(line: 1173, column: 12, scope: !2872)
!2874 = !DILocation(line: 1173, column: 21, scope: !2872)
!2875 = !DILocation(line: 1173, column: 19, scope: !2872)
!2876 = !DILocation(line: 1173, column: 9, scope: !2862)
!2877 = !DILocation(line: 1174, column: 9, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2872, file: !1070, line: 1173, column: 33)
!2879 = !DILocation(line: 1174, column: 2, scope: !2878)
!2880 = !DILocation(line: 1176, column: 5, scope: !2862)
!2881 = !DILocation(line: 1177, column: 5, scope: !2862)
!2882 = !DILocation(line: 1178, column: 5, scope: !2862)
!2883 = !DILocation(line: 1179, column: 1, scope: !2862)
!2884 = !DISubprogram(name: "Perl_PerlIO_tell", scope: !1117, file: !1117, line: 8283, type: !2885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{!1025, !591}
!2887 = distinct !DISubprogram(name: "Perl_do_seek", scope: !1070, file: !1070, line: 1182, type: !2888, scopeLine: 1183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2890)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!434, !674, !1025, !471}
!2890 = !{!2891, !2892, !2893, !2894, !2895}
!2891 = !DILocalVariable(name: "gv", arg: 1, scope: !2887, file: !1070, line: 1182, type: !674)
!2892 = !DILocalVariable(name: "pos", arg: 2, scope: !2887, file: !1070, line: 1182, type: !1025)
!2893 = !DILocalVariable(name: "whence", arg: 3, scope: !2887, file: !1070, line: 1182, type: !471)
!2894 = !DILocalVariable(name: "io", scope: !2887, file: !1070, line: 1184, type: !1139)
!2895 = !DILocalVariable(name: "fp", scope: !2887, file: !1070, line: 1185, type: !591)
!2896 = !DILocation(line: 0, scope: !2887)
!2897 = !DILocation(line: 1184, column: 20, scope: !2887)
!2898 = !DILocation(line: 1187, column: 9, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2887, file: !1070, line: 1187, column: 9)
!2900 = !DILocation(line: 1187, column: 12, scope: !2899)
!2901 = !DILocation(line: 1187, column: 21, scope: !2899)
!2902 = !DILocation(line: 1187, column: 19, scope: !2899)
!2903 = !DILocation(line: 1187, column: 9, scope: !2887)
!2904 = !DILocation(line: 1188, column: 9, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2899, file: !1070, line: 1187, column: 33)
!2906 = !DILocation(line: 1188, column: 38, scope: !2905)
!2907 = !DILocation(line: 1188, column: 2, scope: !2905)
!2908 = !DILocation(line: 1190, column: 5, scope: !2887)
!2909 = !DILocation(line: 1191, column: 5, scope: !2887)
!2910 = !DILocation(line: 1192, column: 5, scope: !2887)
!2911 = !DILocation(line: 1193, column: 1, scope: !2887)
!2912 = !DISubprogram(name: "Perl_PerlIO_seek", scope: !1117, file: !1117, line: 8270, type: !2913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!471, !591, !1025, !471}
!2915 = distinct !DISubprogram(name: "Perl_do_sysseek", scope: !1070, file: !1070, line: 1196, type: !2916, scopeLine: 1197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2918)
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!1025, !674, !1025, !471}
!2918 = !{!2919, !2920, !2921, !2922, !2923, !2924}
!2919 = !DILocalVariable(name: "gv", arg: 1, scope: !2915, file: !1070, line: 1196, type: !674)
!2920 = !DILocalVariable(name: "pos", arg: 2, scope: !2915, file: !1070, line: 1196, type: !1025)
!2921 = !DILocalVariable(name: "whence", arg: 3, scope: !2915, file: !1070, line: 1196, type: !471)
!2922 = !DILocalVariable(name: "io", scope: !2915, file: !1070, line: 1198, type: !1139)
!2923 = !DILocalVariable(name: "fp", scope: !2915, file: !1070, line: 1199, type: !591)
!2924 = !DILocalVariable(name: "fd", scope: !2925, file: !1070, line: 1204, type: !471)
!2925 = distinct !DILexicalBlock(scope: !2926, file: !1070, line: 1203, column: 33)
!2926 = distinct !DILexicalBlock(scope: !2915, file: !1070, line: 1203, column: 9)
!2927 = !DILocation(line: 0, scope: !2915)
!2928 = !DILocation(line: 1198, column: 20, scope: !2915)
!2929 = !DILocation(line: 1203, column: 9, scope: !2926)
!2930 = !DILocation(line: 1203, column: 12, scope: !2926)
!2931 = !DILocation(line: 1203, column: 21, scope: !2926)
!2932 = !DILocation(line: 1203, column: 19, scope: !2926)
!2933 = !DILocation(line: 1203, column: 9, scope: !2915)
!2934 = !DILocation(line: 1204, column: 18, scope: !2925)
!2935 = !DILocation(line: 0, scope: !2925)
!2936 = !DILocation(line: 1205, column: 16, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2925, file: !1070, line: 1205, column: 13)
!2938 = !DILocation(line: 1205, column: 13, scope: !2925)
!2939 = !DILocation(line: 1206, column: 20, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !1070, line: 1205, column: 22)
!2941 = !DILocation(line: 1209, column: 5, scope: !2915)
!2942 = !DILocation(line: 1210, column: 5, scope: !2915)
!2943 = !DILocation(line: 1211, column: 5, scope: !2915)
!2944 = !DILocation(line: 1212, column: 1, scope: !2915)
!2945 = !DISubprogram(name: "lseek", scope: !2241, file: !2241, line: 334, type: !2946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!1026, !471, !1026, !471}
!2948 = distinct !DISubprogram(name: "Perl_mode_from_discipline", scope: !1070, file: !1070, line: 1215, type: !2949, scopeLine: 1216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!471, !815, !505}
!2951 = !{!2952, !2953, !2954, !2955, !2962}
!2952 = !DILocalVariable(name: "s", arg: 1, scope: !2948, file: !1070, line: 1215, type: !815)
!2953 = !DILocalVariable(name: "len", arg: 2, scope: !2948, file: !1070, line: 1215, type: !505)
!2954 = !DILocalVariable(name: "mode", scope: !2948, file: !1070, line: 1217, type: !471)
!2955 = !DILocalVariable(name: "end", scope: !2956, file: !1070, line: 1252, type: !815)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !1070, line: 1251, column: 11)
!2957 = distinct !DILexicalBlock(scope: !2958, file: !1070, line: 1247, column: 15)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !1070, line: 1221, column: 10)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !1070, line: 1220, column: 13)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !1070, line: 1219, column: 12)
!2961 = distinct !DILexicalBlock(scope: !2948, file: !1070, line: 1219, column: 9)
!2962 = !DILabel(scope: !2956, name: "fail_discipline", file: !1070, line: 1253)
!2963 = !DILocation(line: 0, scope: !2948)
!2964 = !DILocation(line: 1266, column: 5, scope: !2948)
!2965 = distinct !DISubprogram(name: "Perl_do_print", scope: !1070, file: !1070, line: 1323, type: !2966, scopeLine: 1324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!434, !472, !591}
!2968 = !{!2969, !2970, !2971, !2974, !2975, !2977, !2978, !2982, !2983}
!2969 = !DILocalVariable(name: "sv", arg: 1, scope: !2965, file: !1070, line: 1323, type: !472)
!2970 = !DILocalVariable(name: "fp", arg: 2, scope: !2965, file: !1070, line: 1323, type: !591)
!2971 = !DILocalVariable(name: "len", scope: !2972, file: !1070, line: 1339, type: !505)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !1070, line: 1338, column: 10)
!2973 = distinct !DILexicalBlock(scope: !2965, file: !1070, line: 1330, column: 9)
!2974 = !DILocalVariable(name: "tmps", scope: !2972, file: !1070, line: 1341, type: !815)
!2975 = !DILocalVariable(name: "tmpbuf", scope: !2972, file: !1070, line: 1342, type: !2976)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!2977 = !DILocalVariable(name: "happy", scope: !2972, file: !1070, line: 1343, type: !434)
!2978 = !DILocalVariable(name: "tmplen", scope: !2979, file: !1070, line: 1357, type: !505)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !1070, line: 1355, column: 24)
!2980 = distinct !DILexicalBlock(scope: !2981, file: !1070, line: 1355, column: 11)
!2981 = distinct !DILexicalBlock(scope: !2972, file: !1070, line: 1345, column: 6)
!2982 = !DILocalVariable(name: "utf8", scope: !2979, file: !1070, line: 1358, type: !434)
!2983 = !DILocalVariable(name: "result", scope: !2979, file: !1070, line: 1359, type: !2984)
!2984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2976)
!2985 = !DILocation(line: 0, scope: !2965)
!2986 = !DILocation(line: 1328, column: 10, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2965, file: !1070, line: 1328, column: 9)
!2988 = !DILocation(line: 1328, column: 9, scope: !2965)
!2989 = !DILocation(line: 1330, column: 9, scope: !2973)
!2990 = !DILocation(line: 1330, column: 30, scope: !2973)
!2991 = !DILocation(line: 1332, column: 6, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !1070, line: 1332, column: 6)
!2993 = distinct !DILexicalBlock(scope: !2973, file: !1070, line: 1330, column: 44)
!2994 = !DILocation(line: 0, scope: !2992)
!2995 = !DILocation(line: 1332, column: 6, scope: !2993)
!2996 = !DILocation(line: 1333, column: 37, scope: !2992)
!2997 = !DILocation(line: 1333, column: 6, scope: !2992)
!2998 = !DILocation(line: 1335, column: 37, scope: !2992)
!2999 = !DILocation(line: 1336, column: 10, scope: !2993)
!3000 = !DILocation(line: 1336, column: 9, scope: !2993)
!3001 = !DILocation(line: 1336, column: 2, scope: !2993)
!3002 = !DILocation(line: 1339, column: 2, scope: !2972)
!3003 = !DILocation(line: 1341, column: 21, scope: !2972)
!3004 = !DILocation(line: 0, scope: !2972)
!3005 = !DILocation(line: 1345, column: 6, scope: !2981)
!3006 = !DILocation(line: 0, scope: !2981)
!3007 = !DILocation(line: 1345, column: 6, scope: !2972)
!3008 = !DILocation(line: 1346, column: 10, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2981, file: !1070, line: 1345, column: 25)
!3010 = !DILocation(line: 1348, column: 12, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !1070, line: 1346, column: 23)
!3012 = distinct !DILexicalBlock(scope: !3009, file: !1070, line: 1346, column: 10)
!3013 = !DILocation(line: 1350, column: 6, scope: !3011)
!3014 = !DILocation(line: 1351, column: 15, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3012, file: !1070, line: 1351, column: 15)
!3016 = !DILocation(line: 1351, column: 15, scope: !3012)
!3017 = !DILocation(line: 1352, column: 10, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3015, file: !1070, line: 1351, column: 85)
!3019 = !DILocation(line: 1353, column: 6, scope: !3018)
!3020 = !DILocation(line: 1355, column: 11, scope: !2980)
!3021 = !DILocation(line: 1355, column: 11, scope: !2981)
!3022 = !DILocation(line: 1357, column: 6, scope: !2979)
!3023 = !DILocation(line: 1357, column: 22, scope: !2979)
!3024 = !DILocation(line: 0, scope: !2979)
!3025 = !DILocation(line: 1357, column: 13, scope: !2979)
!3026 = !DILocation(line: 1358, column: 6, scope: !2979)
!3027 = !DILocation(line: 1358, column: 11, scope: !2979)
!3028 = !DILocation(line: 1359, column: 26, scope: !2979)
!3029 = !DILocation(line: 1360, column: 11, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !2979, file: !1070, line: 1360, column: 10)
!3031 = !DILocation(line: 1360, column: 10, scope: !2979)
!3032 = !DILocation(line: 1366, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3030, file: !1070, line: 1360, column: 17)
!3034 = !DILocation(line: 1366, column: 7, scope: !3033)
!3035 = !DILocation(line: 1367, column: 6, scope: !3033)
!3036 = !DILocation(line: 1373, column: 8, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3030, file: !1070, line: 1368, column: 11)
!3038 = !DILocation(line: 1373, column: 16, scope: !3037)
!3039 = !DILocation(line: 1371, column: 3, scope: !3037)
!3040 = !DILocation(line: 1379, column: 2, scope: !2980)
!3041 = !DILocation(line: 1379, column: 2, scope: !2979)
!3042 = !DILocation(line: 1386, column: 6, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !2972, file: !1070, line: 1386, column: 6)
!3044 = !DILocation(line: 1386, column: 10, scope: !3043)
!3045 = !DILocation(line: 1386, column: 14, scope: !3043)
!3046 = !DILocation(line: 1386, column: 40, scope: !3043)
!3047 = !DILocation(line: 1388, column: 2, scope: !2972)
!3048 = !DILocation(line: 1389, column: 9, scope: !2972)
!3049 = !DILocation(line: 1389, column: 18, scope: !2972)
!3050 = !DILocation(line: 1389, column: 17, scope: !2972)
!3051 = !DILocation(line: 1390, column: 5, scope: !2973)
!3052 = !DILocation(line: 1391, column: 1, scope: !2965)
!3053 = !DISubprogram(name: "PerlIO_printf", scope: !593, file: !593, line: 268, type: !3054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!471, !591, !815, null}
!3056 = !DISubprogram(name: "PerlIO_isutf8", scope: !593, file: !593, line: 338, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3057 = !DISubprogram(name: "Perl_bytes_to_utf8", scope: !1117, file: !1117, line: 337, type: !3058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{!2976, !1040, !2192}
!3060 = !DISubprogram(name: "Perl_check_utf8_print", scope: !1117, file: !1117, line: 393, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!434, !1040, !1900}
!3063 = !DISubprogram(name: "Perl_bytes_from_utf8", scope: !1117, file: !1117, line: 331, type: !3064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!2976, !1040, !2192, !864}
!3066 = !DISubprogram(name: "Perl_custom_op_get_field", scope: !1117, file: !1117, line: 777, type: !3067, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3067 = !DISubroutineType(types: !3068)
!3068 = !{!3069, !3089, !3091}
!3069 = !DIDerivedType(tag: DW_TAG_typedef, name: "XOPRETANY", file: !425, line: 857, baseType: !3070)
!3070 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !425, line: 851, size: 64, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075, !3079}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "xop_name", scope: !3070, file: !425, line: 852, baseType: !815, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "xop_desc", scope: !3070, file: !425, line: 853, baseType: !815, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "xop_class", scope: !3070, file: !425, line: 854, baseType: !479, size: 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "xop_peep", scope: !3070, file: !425, line: 855, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{null, !621, !621}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "xop_ptr", scope: !3070, file: !425, line: 856, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_typedef, name: "XOP", file: !437, line: 2637, baseType: !3082)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "custom_op", file: !425, line: 840, size: 320, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087, !3088}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "xop_flags", scope: !3082, file: !425, line: 841, baseType: !479, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "xop_name", scope: !3082, file: !425, line: 842, baseType: !815, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "xop_desc", scope: !3082, file: !425, line: 843, baseType: !815, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "xop_class", scope: !3082, file: !425, line: 844, baseType: !479, size: 32, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "xop_peep", scope: !3082, file: !425, line: 845, baseType: !3076, size: 64, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!3091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3092)
!3092 = !DIDerivedType(tag: DW_TAG_typedef, name: "xop_flags_enum", file: !425, line: 873, baseType: !424)
!3093 = !DISubprogram(name: "Perl_PerlIO_write", scope: !1117, file: !1117, line: 8289, type: !3094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!733, !591, !3096, !506}
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3098 = !DISubprogram(name: "Perl_safesysfree", scope: !1117, file: !1117, line: 3750, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3099 = distinct !DISubprogram(name: "Perl_my_stat_flags", scope: !1070, file: !1070, line: 1394, type: !1071, scopeLine: 1395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3100)
!3100 = !{!3101, !3102, !3103, !3104, !3105, !3112, !3115, !3116, !3117, !3118}
!3101 = !DILocalVariable(name: "flags", arg: 1, scope: !3099, file: !1070, line: 1394, type: !817)
!3102 = !DILocalVariable(name: "sp", scope: !3099, file: !1070, line: 1396, type: !539)
!3103 = !DILocalVariable(name: "io", scope: !3099, file: !1070, line: 1397, type: !1061)
!3104 = !DILocalVariable(name: "gv", scope: !3099, file: !1070, line: 1398, type: !674)
!3105 = !DILocalVariable(name: "fd", scope: !3106, file: !1070, line: 1412, type: !471)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !1070, line: 1411, column: 21)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !1070, line: 1411, column: 10)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !1070, line: 1410, column: 17)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !1070, line: 1410, column: 13)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !1070, line: 1400, column: 36)
!3111 = distinct !DILexicalBlock(scope: !3099, file: !1070, line: 1400, column: 9)
!3112 = !DILocalVariable(name: "sv", scope: !3113, file: !1070, line: 1431, type: !804)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !1070, line: 1430, column: 10)
!3114 = distinct !DILexicalBlock(scope: !3111, file: !1070, line: 1427, column: 14)
!3115 = !DILocalVariable(name: "s", scope: !3113, file: !1070, line: 1432, type: !815)
!3116 = !DILocalVariable(name: "len", scope: !3113, file: !1070, line: 1433, type: !505)
!3117 = !DILabel(scope: !3110, name: "do_fstat", file: !1070, line: 1402)
!3118 = !DILabel(scope: !3110, name: "do_fstat_have_io", file: !1070, line: 1406)
!3119 = !DILocation(line: 0, scope: !3099)
!3120 = !DILocation(line: 1396, column: 5, scope: !3099)
!3121 = !DILocation(line: 1400, column: 9, scope: !3111)
!3122 = !DILocation(line: 1400, column: 16, scope: !3111)
!3123 = !DILocation(line: 1400, column: 25, scope: !3111)
!3124 = !DILocation(line: 1400, column: 9, scope: !3099)
!3125 = !DILocation(line: 1401, column: 7, scope: !3110)
!3126 = !DILocation(line: 1401, column: 2, scope: !3110)
!3127 = !DILocation(line: 0, scope: !3111)
!3128 = !DILocation(line: 1402, column: 7, scope: !3110)
!3129 = !DILocation(line: 1403, column: 19, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3110, file: !1070, line: 1403, column: 13)
!3131 = !DILocation(line: 1403, column: 16, scope: !3130)
!3132 = !DILocation(line: 1403, column: 13, scope: !3110)
!3133 = !DILocation(line: 1404, column: 20, scope: !3130)
!3134 = !DILocation(line: 1404, column: 13, scope: !3130)
!3135 = !DILocation(line: 1405, column: 7, scope: !3110)
!3136 = !DILocation(line: 1406, column: 9, scope: !3110)
!3137 = !DILocation(line: 1407, column: 22, scope: !3110)
!3138 = !DILocation(line: 1408, column: 21, scope: !3110)
!3139 = !DILocation(line: 1408, column: 19, scope: !3110)
!3140 = !DILocation(line: 1409, column: 9, scope: !3110)
!3141 = !DILocation(line: 1410, column: 13, scope: !3109)
!3142 = !DILocation(line: 1410, column: 13, scope: !3110)
!3143 = !DILocation(line: 1411, column: 10, scope: !3107)
!3144 = !DILocation(line: 1411, column: 10, scope: !3108)
!3145 = !DILocation(line: 1412, column: 26, scope: !3106)
!3146 = !DILocation(line: 0, scope: !3106)
!3147 = !DILocation(line: 1413, column: 24, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3106, file: !1070, line: 1413, column: 21)
!3149 = !DILocation(line: 1413, column: 21, scope: !3106)
!3150 = !DILocation(line: 0, scope: !2009, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 1417, column: 46, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !1070, line: 1416, column: 24)
!3153 = !DILocation(line: 469, column: 10, scope: !2009, inlinedAt: !3151)
!3154 = !DILocation(line: 1417, column: 21, scope: !3152)
!3155 = !DILocation(line: 0, scope: !3148)
!3156 = !DILocation(line: 1419, column: 24, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3107, file: !1070, line: 1419, column: 24)
!3158 = !DILocation(line: 1419, column: 24, scope: !3107)
!3159 = !DILocation(line: 1420, column: 42, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3157, file: !1070, line: 1419, column: 36)
!3161 = !DILocation(line: 0, scope: !2009, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 1420, column: 42, scope: !3160)
!3163 = !DILocation(line: 469, column: 10, scope: !2009, inlinedAt: !3162)
!3164 = !DILocation(line: 1420, column: 40, scope: !3160)
!3165 = !DILocation(line: 1420, column: 17, scope: !3160)
!3166 = !DILocation(line: 1423, column: 17, scope: !3110)
!3167 = !DILocation(line: 1424, column: 2, scope: !3110)
!3168 = !DILocation(line: 1425, column: 2, scope: !3110)
!3169 = !DILocation(line: 1427, column: 22, scope: !3114)
!3170 = !DILocation(line: 1427, column: 33, scope: !3114)
!3171 = !DILocation(line: 1428, column: 7, scope: !3114)
!3172 = !DILocation(line: 1427, column: 14, scope: !3111)
!3173 = !DILocation(line: 1429, column: 9, scope: !3114)
!3174 = !DILocation(line: 1429, column: 2, scope: !3114)
!3175 = !DILocation(line: 1431, column: 17, scope: !3113)
!3176 = !DILocation(line: 0, scope: !3113)
!3177 = !DILocation(line: 1433, column: 2, scope: !3113)
!3178 = !DILocation(line: 1434, column: 12, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3113, file: !1070, line: 1434, column: 6)
!3180 = !DILocation(line: 1437, column: 18, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3179, file: !1070, line: 1437, column: 18)
!3182 = !DILocation(line: 1437, column: 28, scope: !3181)
!3183 = !DILocation(line: 1437, column: 31, scope: !3181)
!3184 = !DILocation(line: 1437, column: 48, scope: !3181)
!3185 = !DILocation(line: 1437, column: 18, scope: !3179)
!3186 = !DILocation(line: 1443, column: 6, scope: !3113)
!3187 = !DILocation(line: 1445, column: 2, scope: !3113)
!3188 = !DILocation(line: 1444, column: 12, scope: !3113)
!3189 = !DILocation(line: 1446, column: 6, scope: !3113)
!3190 = !DILocation(line: 1447, column: 15, scope: !3113)
!3191 = !DILocation(line: 0, scope: !2530, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 1448, column: 19, scope: !3113)
!3193 = !DILocation(line: 455, column: 10, scope: !2530, inlinedAt: !3192)
!3194 = !DILocation(line: 1448, column: 17, scope: !3113)
!3195 = !DILocation(line: 1449, column: 21, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3113, file: !1070, line: 1449, column: 6)
!3197 = !DILocation(line: 1449, column: 25, scope: !3196)
!3198 = !DILocation(line: 1449, column: 28, scope: !3196)
!3199 = !DILocation(line: 1449, column: 49, scope: !3196)
!3200 = !DILocation(line: 0, scope: !1953, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 1449, column: 52, scope: !3196)
!3202 = !DILocation(line: 346, column: 11, scope: !1953, inlinedAt: !3201)
!3203 = !DILocation(line: 348, column: 16, scope: !1953, inlinedAt: !3201)
!3204 = !DILocation(line: 348, column: 20, scope: !1953, inlinedAt: !3201)
!3205 = !DILocation(line: 348, column: 29, scope: !1953, inlinedAt: !3201)
!3206 = !DILocation(line: 348, column: 23, scope: !1953, inlinedAt: !3201)
!3207 = !DILocation(line: 348, column: 33, scope: !1953, inlinedAt: !3201)
!3208 = !DILocation(line: 1449, column: 6, scope: !3113)
!3209 = !DILocation(line: 1451, column: 6, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3196, file: !1070, line: 1449, column: 71)
!3211 = !DILocation(line: 1453, column: 9, scope: !3210)
!3212 = !DILocation(line: 1454, column: 9, scope: !3113)
!3213 = !DILocation(line: 1455, column: 5, scope: !3114)
!3214 = !DILocation(line: 1456, column: 1, scope: !3099)
!3215 = !DISubprogram(name: "Perl_my_dirfd", scope: !1117, file: !1117, line: 2790, type: !3216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!471, !982}
!3218 = !DISubprogram(name: "Perl_mg_get", scope: !1117, file: !1117, line: 2670, type: !2626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3219 = !DILocation(line: 0, scope: !1069)
!3220 = !DILocation(line: 1463, column: 5, scope: !1069)
!3221 = !DILocation(line: 1465, column: 20, scope: !1069)
!3222 = !DILocation(line: 1467, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !1069, file: !1070, line: 1467, column: 9)
!3224 = !DILocation(line: 1467, column: 16, scope: !3223)
!3225 = !DILocation(line: 1467, column: 25, scope: !3223)
!3226 = !DILocation(line: 1467, column: 9, scope: !1069)
!3227 = !DILocation(line: 1468, column: 6, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !1070, line: 1468, column: 6)
!3229 = distinct !DILexicalBlock(scope: !3223, file: !1070, line: 1467, column: 36)
!3230 = !DILocation(line: 1468, column: 18, scope: !3228)
!3231 = !DILocation(line: 1468, column: 15, scope: !3228)
!3232 = !DILocation(line: 1468, column: 6, scope: !3229)
!3233 = !DILocation(line: 1469, column: 10, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !1070, line: 1469, column: 10)
!3235 = distinct !DILexicalBlock(scope: !3228, file: !1070, line: 1468, column: 28)
!3236 = !DILocation(line: 1469, column: 23, scope: !3234)
!3237 = !DILocation(line: 1469, column: 10, scope: !3235)
!3238 = !DILocation(line: 1470, column: 3, scope: !3234)
!3239 = !DILocation(line: 1471, column: 13, scope: !3235)
!3240 = !DILocation(line: 1471, column: 6, scope: !3235)
!3241 = !DILocation(line: 1473, column: 17, scope: !3229)
!3242 = !DILocation(line: 1474, column: 6, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3229, file: !1070, line: 1474, column: 6)
!3244 = !DILocation(line: 1474, column: 6, scope: !3229)
!3245 = !DILocation(line: 1478, column: 10, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3243, file: !1070, line: 1474, column: 23)
!3247 = !DILocation(line: 1476, column: 6, scope: !3246)
!3248 = !DILocation(line: 1479, column: 2, scope: !3246)
!3249 = !DILocation(line: 1482, column: 17, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !1069, file: !1070, line: 1482, column: 9)
!3251 = !DILocation(line: 1482, column: 28, scope: !3250)
!3252 = !DILocation(line: 1483, column: 7, scope: !3250)
!3253 = !DILocation(line: 1482, column: 9, scope: !1069)
!3254 = !DILocation(line: 1484, column: 11, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !1070, line: 1484, column: 11)
!3256 = distinct !DILexicalBlock(scope: !3250, file: !1070, line: 1483, column: 25)
!3257 = !DILocation(line: 1484, column: 24, scope: !3255)
!3258 = !DILocation(line: 1484, column: 11, scope: !3256)
!3259 = !DILocation(line: 1485, column: 2, scope: !3255)
!3260 = !DILocation(line: 1486, column: 14, scope: !3256)
!3261 = !DILocation(line: 1486, column: 7, scope: !3256)
!3262 = !DILocation(line: 1489, column: 18, scope: !1069)
!3263 = !DILocation(line: 1490, column: 15, scope: !1069)
!3264 = !DILocation(line: 1491, column: 14, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !1069, file: !1070, line: 1491, column: 10)
!3266 = !DILocation(line: 1491, column: 24, scope: !3265)
!3267 = !DILocation(line: 1491, column: 30, scope: !3265)
!3268 = !DILocation(line: 0, scope: !3265)
!3269 = !DILocation(line: 1492, column: 55, scope: !3265)
!3270 = !DILocation(line: 1494, column: 10, scope: !3265)
!3271 = !DILocation(line: 1494, column: 13, scope: !3265)
!3272 = !DILocation(line: 1496, column: 10, scope: !3265)
!3273 = !DILocation(line: 1491, column: 10, scope: !1069)
!3274 = !DILocation(line: 1499, column: 13, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !1070, line: 1497, column: 13)
!3276 = distinct !DILexicalBlock(scope: !3265, file: !1070, line: 1496, column: 27)
!3277 = !DILocation(line: 1505, column: 31, scope: !3275)
!3278 = !DILocation(line: 1503, column: 13, scope: !3275)
!3279 = !DILocation(line: 1508, column: 12, scope: !1069)
!3280 = !DILocation(line: 1509, column: 5, scope: !1069)
!3281 = !DILocation(line: 0, scope: !2530, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 1510, column: 22, scope: !1069)
!3283 = !DILocation(line: 455, column: 10, scope: !2530, inlinedAt: !3282)
!3284 = !DILocation(line: 1510, column: 20, scope: !1069)
!3285 = !DILocation(line: 1511, column: 24, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !1069, file: !1070, line: 1511, column: 9)
!3287 = !DILocation(line: 1511, column: 28, scope: !3286)
!3288 = !DILocation(line: 1511, column: 31, scope: !3286)
!3289 = !DILocation(line: 1511, column: 52, scope: !3286)
!3290 = !DILocation(line: 0, scope: !1953, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 1511, column: 55, scope: !3286)
!3292 = !DILocation(line: 346, column: 11, scope: !1953, inlinedAt: !3291)
!3293 = !DILocation(line: 348, column: 16, scope: !1953, inlinedAt: !3291)
!3294 = !DILocation(line: 348, column: 20, scope: !1953, inlinedAt: !3291)
!3295 = !DILocation(line: 348, column: 29, scope: !1953, inlinedAt: !3291)
!3296 = !DILocation(line: 348, column: 23, scope: !1953, inlinedAt: !3291)
!3297 = !DILocation(line: 348, column: 33, scope: !1953, inlinedAt: !3291)
!3298 = !DILocation(line: 1511, column: 9, scope: !1069)
!3299 = !DILocation(line: 1513, column: 9, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3286, file: !1070, line: 1511, column: 77)
!3301 = !DILocation(line: 1515, column: 5, scope: !3300)
!3302 = !DILocation(line: 1516, column: 12, scope: !1069)
!3303 = !DILocation(line: 1516, column: 5, scope: !1069)
!3304 = !DILocation(line: 1517, column: 1, scope: !1069)
!3305 = !DISubprogram(name: "Perl_sv_setpv", scope: !1117, file: !1117, line: 4607, type: !3306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{null, !804, !814}
!3308 = distinct !DISubprogram(name: "Perl_do_aexec5", scope: !1070, file: !1070, line: 1535, type: !3309, scopeLine: 1537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!434, !472, !539, !539, !471, !471}
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317, !3320, !3321}
!3312 = !DILocalVariable(name: "really", arg: 1, scope: !3308, file: !1070, line: 1535, type: !472)
!3313 = !DILocalVariable(name: "mark", arg: 2, scope: !3308, file: !1070, line: 1535, type: !539)
!3314 = !DILocalVariable(name: "sp", arg: 3, scope: !3308, file: !1070, line: 1535, type: !539)
!3315 = !DILocalVariable(name: "fd", arg: 4, scope: !3308, file: !1070, line: 1536, type: !471)
!3316 = !DILocalVariable(name: "do_report", arg: 5, scope: !3308, file: !1070, line: 1536, type: !471)
!3317 = !DILocalVariable(name: "a", scope: !3318, file: !1070, line: 1544, type: !1065)
!3318 = distinct !DILexicalBlock(scope: !3319, file: !1070, line: 1543, column: 20)
!3319 = distinct !DILexicalBlock(scope: !3308, file: !1070, line: 1543, column: 9)
!3320 = !DILocalVariable(name: "tmps", scope: !3318, file: !1070, line: 1545, type: !815)
!3321 = !DILocalVariable(name: "xfpe", scope: !3322, file: !1070, line: 1561, type: !3323)
!3322 = distinct !DILexicalBlock(scope: !3318, file: !1070, line: 1561, column: 2)
!3323 = !DIDerivedType(tag: DW_TAG_typedef, name: "Sigsave_t", file: !437, line: 4491, baseType: !3324)
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "Sighandler_t", file: !3325, line: 57, baseType: !3326)
!3325 = !DIFile(filename: "apps/500.perlbench_r/src/iperlsys.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "6d4b5b9e53fb4e2d8ffc4f141f7dc428")
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !471}
!3329 = !DILocation(line: 0, scope: !3308)
!3330 = !DILocation(line: 1543, column: 12, scope: !3319)
!3331 = !DILocation(line: 1543, column: 9, scope: !3308)
!3332 = !DILocation(line: 0, scope: !3318)
!3333 = !DILocation(line: 1546, column: 2, scope: !3318)
!3334 = !DILocation(line: 1549, column: 9, scope: !3318)
!3335 = !DILocation(line: 1549, column: 16, scope: !3318)
!3336 = !DILocation(line: 1549, column: 2, scope: !3318)
!3337 = !DILocation(line: 1550, column: 10, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !1070, line: 1550, column: 10)
!3339 = distinct !DILexicalBlock(scope: !3318, file: !1070, line: 1549, column: 23)
!3340 = !DILocation(line: 1550, column: 10, scope: !3339)
!3341 = !DILocation(line: 1551, column: 10, scope: !3338)
!3342 = !DILocation(line: 0, scope: !3338)
!3343 = distinct !{!3343, !3336, !3344, !1298, !1299}
!3344 = !DILocation(line: 1554, column: 2, scope: !3318)
!3345 = !DILocation(line: 1555, column: 5, scope: !3318)
!3346 = !DILocation(line: 1556, column: 6, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3318, file: !1070, line: 1556, column: 6)
!3348 = !DILocation(line: 1556, column: 6, scope: !3318)
!3349 = !DILocation(line: 1557, column: 13, scope: !3347)
!3350 = !DILocation(line: 1558, column: 19, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3318, file: !1070, line: 1558, column: 6)
!3352 = !DILocation(line: 1558, column: 18, scope: !3351)
!3353 = !DILocation(line: 1558, column: 30, scope: !3351)
!3354 = !DILocation(line: 1558, column: 38, scope: !3351)
!3355 = !DILocation(line: 1559, column: 17, scope: !3351)
!3356 = !DILocation(line: 1559, column: 23, scope: !3351)
!3357 = !DILocation(line: 1558, column: 6, scope: !3318)
!3358 = !DILocation(line: 1561, column: 2, scope: !3322)
!3359 = !DILocation(line: 0, scope: !3322)
!3360 = !DILocation(line: 1562, column: 13, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3322, file: !1070, line: 1562, column: 6)
!3362 = !DILocation(line: 1560, column: 6, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3351, file: !1070, line: 1560, column: 6)
!3364 = !DILocation(line: 1560, column: 6, scope: !3351)
!3365 = !DILocation(line: 1560, column: 6, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3363, file: !1070, line: 1560, column: 6)
!3367 = !DILocation(line: 1562, column: 16, scope: !3361)
!3368 = !DILocation(line: 1562, column: 6, scope: !3322)
!3369 = !DILocation(line: 1563, column: 6, scope: !3361)
!3370 = !DILocation(line: 1566, column: 2, scope: !3322)
!3371 = !DILocation(line: 1566, column: 2, scope: !3318)
!3372 = !DILocation(line: 1567, column: 24, scope: !3318)
!3373 = !DILocation(line: 1565, column: 6, scope: !3361)
!3374 = !DILocation(line: 1567, column: 40, scope: !3318)
!3375 = !DILocalVariable(name: "cmd", arg: 1, scope: !3376, file: !1070, line: 1520, type: !815)
!3376 = distinct !DISubprogram(name: "S_exec_failed", scope: !1070, file: !1070, line: 1520, type: !3377, scopeLine: 1521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{null, !815, !471, !471}
!3379 = !{!3375, !3380, !3381, !3382}
!3380 = !DILocalVariable(name: "fd", arg: 2, scope: !3376, file: !1070, line: 1520, type: !471)
!3381 = !DILocalVariable(name: "do_report", arg: 3, scope: !3376, file: !1070, line: 1520, type: !471)
!3382 = !DILocalVariable(name: "e", scope: !3376, file: !1070, line: 1522, type: !1145)
!3383 = !DILocation(line: 0, scope: !3376, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 1567, column: 3, scope: !3318)
!3385 = !DILocation(line: 1522, column: 5, scope: !3376, inlinedAt: !3384)
!3386 = !DILocation(line: 1522, column: 19, scope: !3376, inlinedAt: !3384)
!3387 = !DILocation(line: 1522, column: 15, scope: !3376, inlinedAt: !3384)
!3388 = !DILocation(line: 1524, column: 9, scope: !3389, inlinedAt: !3384)
!3389 = distinct !DILexicalBlock(scope: !3376, file: !1070, line: 1524, column: 9)
!3390 = !DILocation(line: 1524, column: 9, scope: !3376, inlinedAt: !3384)
!3391 = !DILocation(line: 1526, column: 12, scope: !3389, inlinedAt: !3384)
!3392 = !DILocation(line: 1525, column: 2, scope: !3389, inlinedAt: !3384)
!3393 = !DILocation(line: 1527, column: 9, scope: !3394, inlinedAt: !3384)
!3394 = distinct !DILexicalBlock(scope: !3376, file: !1070, line: 1527, column: 9)
!3395 = !DILocation(line: 1527, column: 9, scope: !3376, inlinedAt: !3384)
!3396 = !DILocation(line: 1529, column: 9, scope: !3397, inlinedAt: !3384)
!3397 = distinct !DILexicalBlock(scope: !3394, file: !1070, line: 1527, column: 20)
!3398 = !DILocation(line: 1530, column: 2, scope: !3397, inlinedAt: !3384)
!3399 = !DILocation(line: 1531, column: 5, scope: !3397, inlinedAt: !3384)
!3400 = !DILocation(line: 1532, column: 1, scope: !3376, inlinedAt: !3384)
!3401 = !DILocation(line: 1568, column: 5, scope: !3318)
!3402 = !DILocation(line: 1577, column: 5, scope: !3403, inlinedAt: !3404)
!3403 = distinct !DISubprogram(name: "Perl_do_execfree", scope: !1070, file: !1070, line: 1575, type: !2200, scopeLine: 1576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1120)
!3404 = distinct !DILocation(line: 1569, column: 5, scope: !3308)
!3405 = !DILocation(line: 1578, column: 13, scope: !3403, inlinedAt: !3404)
!3406 = !DILocation(line: 1579, column: 5, scope: !3403, inlinedAt: !3404)
!3407 = !DILocation(line: 1580, column: 12, scope: !3403, inlinedAt: !3404)
!3408 = !DILocation(line: 1571, column: 5, scope: !3308)
!3409 = !DISubprogram(name: "Perl_safesysmalloc", scope: !1117, file: !1117, line: 3751, type: !3410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!477, !506}
!3412 = !DISubprogram(name: "Perl_rsignal_save", scope: !1117, file: !1117, line: 3727, type: !3413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{!471, !471, !3324, !3415}
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3416 = !DISubprogram(name: "execvp", scope: !2241, file: !2241, line: 578, type: !3417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!471, !815, !3419}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!3421 = !DISubprogram(name: "Perl_rsignal_restore", scope: !1117, file: !1117, line: 3726, type: !3422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!471, !471, !3415}
!3424 = !DILocation(line: 1577, column: 5, scope: !3403)
!3425 = !DILocation(line: 1578, column: 13, scope: !3403)
!3426 = !DILocation(line: 1579, column: 5, scope: !3403)
!3427 = !DILocation(line: 1580, column: 12, scope: !3403)
!3428 = !DILocation(line: 1581, column: 1, scope: !3403)
!3429 = distinct !DISubprogram(name: "Perl_do_exec3", scope: !1070, file: !1070, line: 1586, type: !3430, scopeLine: 1587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3432)
!3430 = !DISubroutineType(types: !3431)
!3431 = !{!434, !815, !471, !471}
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3442, !3447, !3452, !3456, !3464, !3466, !3470}
!3433 = !DILocalVariable(name: "incmd", arg: 1, scope: !3429, file: !1070, line: 1586, type: !815)
!3434 = !DILocalVariable(name: "fd", arg: 2, scope: !3429, file: !1070, line: 1586, type: !471)
!3435 = !DILocalVariable(name: "do_report", arg: 3, scope: !3429, file: !1070, line: 1586, type: !471)
!3436 = !DILocalVariable(name: "a", scope: !3429, file: !1070, line: 1589, type: !1065)
!3437 = !DILocalVariable(name: "s", scope: !3429, file: !1070, line: 1590, type: !486)
!3438 = !DILocalVariable(name: "buf", scope: !3429, file: !1070, line: 1591, type: !486)
!3439 = !DILocalVariable(name: "cmd", scope: !3429, file: !1070, line: 1592, type: !486)
!3440 = !DILocalVariable(name: "cmdlen", scope: !3429, file: !1070, line: 1594, type: !3441)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!3442 = !DILocalVariable(name: "flags", scope: !3443, file: !1070, line: 1609, type: !3444)
!3443 = distinct !DILexicalBlock(scope: !3429, file: !1070, line: 1608, column: 5)
!3444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 80, elements: !3445)
!3445 = !{!3446}
!3446 = !DISubrange(count: 10)
!3447 = !DILocalVariable(name: "ncmd", scope: !3448, file: !1070, line: 1621, type: !3420)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !1070, line: 1620, column: 22)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !1070, line: 1620, column: 8)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !1070, line: 1611, column: 37)
!3451 = distinct !DILexicalBlock(scope: !3443, file: !1070, line: 1610, column: 6)
!3452 = !DILocalVariable(name: "xfpe", scope: !3453, file: !1070, line: 1629, type: !3323)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !1070, line: 1629, column: 5)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !1070, line: 1627, column: 27)
!3455 = distinct !DILexicalBlock(scope: !3448, file: !1070, line: 1627, column: 12)
!3456 = !DILocalVariable(name: "t", scope: !3457, file: !1070, line: 1668, type: !815)
!3457 = distinct !DILexicalBlock(scope: !3458, file: !1070, line: 1667, column: 6)
!3458 = distinct !DILexicalBlock(scope: !3459, file: !1070, line: 1664, column: 10)
!3459 = distinct !DILexicalBlock(scope: !3460, file: !1070, line: 1658, column: 44)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !1070, line: 1657, column: 6)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !1070, line: 1656, column: 28)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !1070, line: 1656, column: 5)
!3463 = distinct !DILexicalBlock(scope: !3429, file: !1070, line: 1656, column: 5)
!3464 = !DILocalVariable(name: "xfpe", scope: !3465, file: !1070, line: 1678, type: !3323)
!3465 = distinct !DILexicalBlock(scope: !3459, file: !1070, line: 1678, column: 6)
!3466 = !DILocalVariable(name: "xfpe", scope: !3467, file: !1070, line: 1702, type: !3323)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !1070, line: 1702, column: 2)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !1070, line: 1701, column: 21)
!3469 = distinct !DILexicalBlock(scope: !3429, file: !1070, line: 1701, column: 9)
!3470 = !DILabel(scope: !3459, name: "doshell", file: !1070, line: 1677)
!3471 = !DILocation(line: 0, scope: !3429)
!3472 = !DILocation(line: 1594, column: 27, scope: !3429)
!3473 = !DILocation(line: 1594, column: 41, scope: !3429)
!3474 = !DILocation(line: 1598, column: 5, scope: !3429)
!3475 = !DILocation(line: 1600, column: 5, scope: !3429)
!3476 = !DILocation(line: 1602, column: 12, scope: !3429)
!3477 = !DILocation(line: 1602, column: 17, scope: !3429)
!3478 = !DILocation(line: 1602, column: 20, scope: !3429)
!3479 = !DILocation(line: 1602, column: 5, scope: !3429)
!3480 = !DILocation(line: 1603, column: 5, scope: !3429)
!3481 = distinct !{!3481, !3479, !3480, !1298, !1299}
!3482 = !DILocation(line: 1609, column: 9, scope: !3443)
!3483 = !DILocation(line: 1609, column: 14, scope: !3443)
!3484 = !DILocation(line: 1611, column: 6, scope: !3451)
!3485 = !DILocation(line: 1610, column: 6, scope: !3443)
!3486 = !DILocation(line: 1612, column: 11, scope: !3450)
!3487 = !DILocation(line: 1613, column: 21, scope: !3450)
!3488 = !DILocation(line: 1614, column: 8, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3450, file: !1070, line: 1614, column: 8)
!3490 = !DILocation(line: 1614, column: 11, scope: !3489)
!3491 = !DILocation(line: 1614, column: 8, scope: !3450)
!3492 = !DILocation(line: 1615, column: 9, scope: !3493)
!3493 = distinct !DILexicalBlock(scope: !3489, file: !1070, line: 1614, column: 19)
!3494 = !DILocation(line: 1616, column: 15, scope: !3493)
!3495 = !DILocation(line: 1618, column: 8, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3450, file: !1070, line: 1618, column: 8)
!3497 = !DILocation(line: 1617, column: 4, scope: !3493)
!3498 = !DILocation(line: 0, scope: !3450)
!3499 = !DILocation(line: 1618, column: 11, scope: !3496)
!3500 = !DILocation(line: 1618, column: 8, scope: !3450)
!3501 = !DILocation(line: 1620, column: 10, scope: !3449)
!3502 = !DILocation(line: 1620, column: 8, scope: !3449)
!3503 = !DILocation(line: 1620, column: 13, scope: !3449)
!3504 = !DILocation(line: 1620, column: 8, scope: !3450)
!3505 = !DILocation(line: 0, scope: !3449)
!3506 = !DILocation(line: 1623, column: 15, scope: !3448)
!3507 = !DILocation(line: 1623, column: 8, scope: !3448)
!3508 = !DILocation(line: 1624, column: 6, scope: !3448)
!3509 = distinct !{!3509, !3507, !3508, !1298, !1299}
!3510 = !DILocation(line: 1625, column: 12, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3448, file: !1070, line: 1625, column: 12)
!3512 = !DILocation(line: 1625, column: 18, scope: !3511)
!3513 = !DILocation(line: 1625, column: 12, scope: !3448)
!3514 = !DILocation(line: 1626, column: 10, scope: !3511)
!3515 = !DILocation(line: 1627, column: 12, scope: !3455)
!3516 = !DILocation(line: 1626, column: 5, scope: !3511)
!3517 = !DILocation(line: 1627, column: 18, scope: !3455)
!3518 = !DILocation(line: 1627, column: 12, scope: !3448)
!3519 = !DILocation(line: 1628, column: 10, scope: !3454)
!3520 = !DILocation(line: 1629, column: 5, scope: !3453)
!3521 = !DILocation(line: 0, scope: !3453)
!3522 = !DILocation(line: 1630, column: 5, scope: !3453)
!3523 = !DILocation(line: 1631, column: 5, scope: !3453)
!3524 = !DILocation(line: 1631, column: 5, scope: !3454)
!3525 = !DILocation(line: 1632, column: 8, scope: !3454)
!3526 = !DILocation(line: 0, scope: !3376, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 1633, column: 6, scope: !3454)
!3528 = !DILocation(line: 1522, column: 5, scope: !3376, inlinedAt: !3527)
!3529 = !DILocation(line: 1522, column: 19, scope: !3376, inlinedAt: !3527)
!3530 = !DILocation(line: 1522, column: 15, scope: !3376, inlinedAt: !3527)
!3531 = !DILocation(line: 1524, column: 9, scope: !3389, inlinedAt: !3527)
!3532 = !DILocation(line: 1524, column: 9, scope: !3376, inlinedAt: !3527)
!3533 = !DILocation(line: 1526, column: 12, scope: !3389, inlinedAt: !3527)
!3534 = !DILocation(line: 1525, column: 2, scope: !3389, inlinedAt: !3527)
!3535 = !DILocation(line: 1527, column: 9, scope: !3394, inlinedAt: !3527)
!3536 = !DILocation(line: 1527, column: 9, scope: !3376, inlinedAt: !3527)
!3537 = !DILocation(line: 1529, column: 9, scope: !3397, inlinedAt: !3527)
!3538 = !DILocation(line: 1530, column: 2, scope: !3397, inlinedAt: !3527)
!3539 = !DILocation(line: 1531, column: 5, scope: !3397, inlinedAt: !3527)
!3540 = !DILocation(line: 1532, column: 1, scope: !3376, inlinedAt: !3527)
!3541 = !DILocation(line: 1634, column: 5, scope: !3454)
!3542 = !DILocation(line: 1639, column: 5, scope: !3429)
!3543 = !DILocation(line: 1644, column: 9, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3429, file: !1070, line: 1644, column: 9)
!3545 = !DILocation(line: 1644, column: 14, scope: !3544)
!3546 = !DILocation(line: 1644, column: 21, scope: !3544)
!3547 = !DILocation(line: 1644, column: 24, scope: !3544)
!3548 = !DILocation(line: 1644, column: 9, scope: !3429)
!3549 = !DILocation(line: 1647, column: 9, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3429, file: !1070, line: 1647, column: 9)
!3551 = !DILocation(line: 1647, column: 30, scope: !3550)
!3552 = !DILocation(line: 1647, column: 33, scope: !3550)
!3553 = !DILocation(line: 1647, column: 9, scope: !3429)
!3554 = !DILocation(line: 1651, column: 12, scope: !3429)
!3555 = !DILocation(line: 1651, column: 5, scope: !3429)
!3556 = distinct !{!3556, !3555, !3557, !1298, !1299}
!3557 = !DILocation(line: 1652, column: 3, scope: !3429)
!3558 = !DILocation(line: 1653, column: 12, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3429, file: !1070, line: 1653, column: 9)
!3560 = !DILocation(line: 1653, column: 9, scope: !3429)
!3561 = !DILocation(line: 1656, column: 5, scope: !3463)
!3562 = !DILocation(line: 1657, column: 6, scope: !3460)
!3563 = !DILocation(line: 1657, column: 9, scope: !3460)
!3564 = !DILocation(line: 1657, column: 16, scope: !3460)
!3565 = !DILocation(line: 1657, column: 20, scope: !3460)
!3566 = !DILocation(line: 1657, column: 32, scope: !3460)
!3567 = !DILocation(line: 1658, column: 6, scope: !3460)
!3568 = !DILocation(line: 1657, column: 6, scope: !3461)
!3569 = !DILocation(line: 1659, column: 21, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3459, file: !1070, line: 1659, column: 10)
!3571 = !DILocation(line: 1659, column: 25, scope: !3570)
!3572 = !DILocation(line: 1659, column: 10, scope: !3459)
!3573 = !DILocation(line: 1664, column: 23, scope: !3458)
!3574 = !DILocation(line: 1664, column: 28, scope: !3458)
!3575 = !DILocation(line: 1664, column: 35, scope: !3458)
!3576 = !DILocation(line: 1664, column: 38, scope: !3458)
!3577 = !DILocation(line: 1664, column: 43, scope: !3458)
!3578 = !DILocation(line: 1665, column: 3, scope: !3458)
!3579 = !DILocation(line: 1665, column: 21, scope: !3458)
!3580 = !DILocation(line: 1665, column: 27, scope: !3458)
!3581 = !DILocation(line: 1665, column: 34, scope: !3458)
!3582 = !DILocation(line: 1665, column: 37, scope: !3458)
!3583 = !DILocation(line: 1666, column: 3, scope: !3458)
!3584 = !DILocation(line: 1666, column: 8, scope: !3458)
!3585 = !DILocation(line: 1666, column: 13, scope: !3458)
!3586 = !DILocation(line: 1666, column: 16, scope: !3458)
!3587 = !DILocation(line: 1664, column: 10, scope: !3459)
!3588 = !DILocation(line: 1671, column: 7, scope: !3457)
!3589 = !DILocation(line: 0, scope: !3457)
!3590 = !DILocation(line: 1670, column: 10, scope: !3457)
!3591 = !DILocation(line: 1670, column: 13, scope: !3457)
!3592 = distinct !{!3592, !3593, !3594, !1298, !1299}
!3593 = !DILocation(line: 1670, column: 3, scope: !3457)
!3594 = !DILocation(line: 1671, column: 9, scope: !3457)
!3595 = !DILocation(line: 1670, column: 16, scope: !3457)
!3596 = !DILocation(line: 1672, column: 15, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3457, file: !1070, line: 1672, column: 7)
!3598 = !DILocation(line: 1672, column: 33, scope: !3597)
!3599 = !DILocation(line: 1672, column: 7, scope: !3457)
!3600 = !DILocation(line: 1677, column: 4, scope: !3459)
!3601 = !DILocation(line: 1678, column: 6, scope: !3465)
!3602 = !DILocation(line: 0, scope: !3465)
!3603 = !DILocation(line: 1679, column: 6, scope: !3465)
!3604 = !DILocation(line: 1680, column: 6, scope: !3465)
!3605 = !DILocation(line: 1680, column: 6, scope: !3459)
!3606 = !DILocation(line: 0, scope: !3376, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 1681, column: 7, scope: !3459)
!3608 = !DILocation(line: 1522, column: 5, scope: !3376, inlinedAt: !3607)
!3609 = !DILocation(line: 1522, column: 19, scope: !3376, inlinedAt: !3607)
!3610 = !DILocation(line: 1522, column: 15, scope: !3376, inlinedAt: !3607)
!3611 = !DILocation(line: 1524, column: 9, scope: !3389, inlinedAt: !3607)
!3612 = !DILocation(line: 1524, column: 9, scope: !3376, inlinedAt: !3607)
!3613 = !DILocation(line: 1526, column: 12, scope: !3389, inlinedAt: !3607)
!3614 = !DILocation(line: 1525, column: 2, scope: !3389, inlinedAt: !3607)
!3615 = !DILocation(line: 1527, column: 9, scope: !3394, inlinedAt: !3607)
!3616 = !DILocation(line: 1527, column: 9, scope: !3376, inlinedAt: !3607)
!3617 = !DILocation(line: 1529, column: 9, scope: !3397, inlinedAt: !3607)
!3618 = !DILocation(line: 1530, column: 2, scope: !3397, inlinedAt: !3607)
!3619 = !DILocation(line: 1531, column: 5, scope: !3397, inlinedAt: !3607)
!3620 = !DILocation(line: 1532, column: 1, scope: !3376, inlinedAt: !3607)
!3621 = !DILocation(line: 1682, column: 6, scope: !3459)
!3622 = !DILocation(line: 1683, column: 6, scope: !3459)
!3623 = !DILocation(line: 1656, column: 24, scope: !3462)
!3624 = !DILocation(line: 1656, column: 19, scope: !3462)
!3625 = distinct !{!3625, !3561, !3626, !1298, !1299}
!3626 = !DILocation(line: 1685, column: 5, scope: !3463)
!3627 = !DILocation(line: 0, scope: !3459)
!3628 = !DILocation(line: 1687, column: 5, scope: !3429)
!3629 = !DILocation(line: 1688, column: 14, scope: !3429)
!3630 = !DILocation(line: 1688, column: 12, scope: !3429)
!3631 = !DILocation(line: 1689, column: 9, scope: !3429)
!3632 = !DILocation(line: 1690, column: 22, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !1070, line: 1690, column: 5)
!3634 = distinct !DILexicalBlock(scope: !3429, file: !1070, line: 1690, column: 5)
!3635 = !DILocation(line: 1690, column: 5, scope: !3634)
!3636 = !DILocation(line: 1691, column: 9, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3633, file: !1070, line: 1690, column: 27)
!3638 = !DILocation(line: 1691, column: 2, scope: !3637)
!3639 = !DILocation(line: 1692, column: 7, scope: !3637)
!3640 = distinct !{!3640, !3638, !3639, !1298, !1299}
!3641 = !DILocation(line: 1693, column: 6, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3637, file: !1070, line: 1693, column: 6)
!3643 = !DILocation(line: 1693, column: 6, scope: !3637)
!3644 = !DILocation(line: 1694, column: 9, scope: !3642)
!3645 = !DILocation(line: 1694, column: 13, scope: !3642)
!3646 = !DILocation(line: 1695, column: 9, scope: !3637)
!3647 = !DILocation(line: 1695, column: 12, scope: !3637)
!3648 = !DILocation(line: 1695, column: 16, scope: !3637)
!3649 = !DILocation(line: 0, scope: !3637)
!3650 = !DILocation(line: 1695, column: 2, scope: !3637)
!3651 = distinct !{!3651, !3650, !3652, !1298, !1299}
!3652 = !DILocation(line: 1696, column: 7, scope: !3637)
!3653 = !DILocation(line: 1698, column: 11, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3637, file: !1070, line: 1697, column: 6)
!3655 = distinct !{!3655, !3635, !3656, !1298, !1299}
!3656 = !DILocation(line: 1699, column: 5, scope: !3634)
!3657 = !DILocation(line: 1700, column: 8, scope: !3429)
!3658 = !DILocation(line: 1701, column: 9, scope: !3469)
!3659 = !DILocation(line: 1701, column: 9, scope: !3429)
!3660 = !DILocation(line: 1702, column: 2, scope: !3467)
!3661 = !DILocation(line: 0, scope: !3467)
!3662 = !DILocation(line: 1703, column: 2, scope: !3467)
!3663 = !DILocation(line: 1704, column: 2, scope: !3467)
!3664 = !DILocation(line: 1704, column: 2, scope: !3468)
!3665 = !DILocation(line: 1705, column: 6, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3468, file: !1070, line: 1705, column: 6)
!3667 = !DILocation(line: 1705, column: 12, scope: !3666)
!3668 = !DILocation(line: 0, scope: !3468)
!3669 = !DILocation(line: 1705, column: 6, scope: !3468)
!3670 = !DILocation(line: 1577, column: 5, scope: !3403, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1706, column: 6, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3666, file: !1070, line: 1705, column: 24)
!3673 = !DILocation(line: 1578, column: 13, scope: !3403, inlinedAt: !3671)
!3674 = !DILocation(line: 1579, column: 5, scope: !3403, inlinedAt: !3671)
!3675 = !DILocation(line: 1580, column: 12, scope: !3403, inlinedAt: !3671)
!3676 = !DILocation(line: 1707, column: 6, scope: !3672)
!3677 = !DILocation(line: 1709, column: 23, scope: !3468)
!3678 = !DILocation(line: 0, scope: !3376, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 1709, column: 3, scope: !3468)
!3680 = !DILocation(line: 1522, column: 5, scope: !3376, inlinedAt: !3679)
!3681 = !DILocation(line: 1522, column: 15, scope: !3376, inlinedAt: !3679)
!3682 = !DILocation(line: 1524, column: 9, scope: !3389, inlinedAt: !3679)
!3683 = !DILocation(line: 1524, column: 9, scope: !3376, inlinedAt: !3679)
!3684 = !DILocation(line: 1526, column: 12, scope: !3389, inlinedAt: !3679)
!3685 = !DILocation(line: 1525, column: 2, scope: !3389, inlinedAt: !3679)
!3686 = !DILocation(line: 1527, column: 9, scope: !3394, inlinedAt: !3679)
!3687 = !DILocation(line: 1527, column: 9, scope: !3376, inlinedAt: !3679)
!3688 = !DILocation(line: 1529, column: 9, scope: !3397, inlinedAt: !3679)
!3689 = !DILocation(line: 1530, column: 2, scope: !3397, inlinedAt: !3679)
!3690 = !DILocation(line: 1531, column: 5, scope: !3397, inlinedAt: !3679)
!3691 = !DILocation(line: 1532, column: 1, scope: !3376, inlinedAt: !3679)
!3692 = !DILocation(line: 1577, column: 5, scope: !3403, inlinedAt: !3693)
!3693 = distinct !DILocation(line: 1711, column: 5, scope: !3429)
!3694 = !DILocation(line: 1710, column: 5, scope: !3468)
!3695 = !DILocation(line: 1578, column: 13, scope: !3403, inlinedAt: !3693)
!3696 = !DILocation(line: 1579, column: 5, scope: !3403, inlinedAt: !3693)
!3697 = !DILocation(line: 1580, column: 12, scope: !3403, inlinedAt: !3693)
!3698 = !DILocation(line: 1712, column: 5, scope: !3429)
!3699 = !DILocation(line: 1713, column: 5, scope: !3429)
!3700 = !DILocation(line: 1714, column: 1, scope: !3429)
!3701 = !DISubprogram(name: "Perl_my_strlcpy", scope: !1117, file: !1117, line: 5369, type: !3702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!506, !486, !815, !506}
!3704 = !DISubprogram(name: "Perl_my_strlcat", scope: !1117, file: !1117, line: 5366, type: !3702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3705 = !DISubprogram(name: "execl", scope: !2241, file: !2241, line: 573, type: !3706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!471, !815, !815, null}
!3708 = !DISubprogram(name: "dup2", scope: !2241, file: !2241, line: 534, type: !3709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!471, !471, !471}
!3711 = distinct !DISubprogram(name: "Perl_apply", scope: !1070, file: !1070, line: 1723, type: !3712, scopeLine: 1724, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!554, !554, !539, !539}
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3730}
!3715 = !DILocalVariable(name: "type", arg: 1, scope: !3711, file: !1070, line: 1723, type: !554)
!3716 = !DILocalVariable(name: "mark", arg: 2, scope: !3711, file: !1070, line: 1723, type: !539)
!3717 = !DILocalVariable(name: "sp", arg: 3, scope: !3711, file: !1070, line: 1723, type: !539)
!3718 = !DILocalVariable(name: "val", scope: !3711, file: !1070, line: 1725, type: !554)
!3719 = !DILocalVariable(name: "tot", scope: !3711, file: !1070, line: 1726, type: !554)
!3720 = !DILocalVariable(name: "what", scope: !3711, file: !1070, line: 1727, type: !814)
!3721 = !DILocalVariable(name: "s", scope: !3711, file: !1070, line: 1728, type: !815)
!3722 = !DILocalVariable(name: "len", scope: !3711, file: !1070, line: 1729, type: !505)
!3723 = !DILocalVariable(name: "oldmark", scope: !3711, file: !1070, line: 1730, type: !863)
!3724 = !DILocalVariable(name: "killgp", scope: !3711, file: !1070, line: 1731, type: !434)
!3725 = !DILocalVariable(name: "gv", scope: !3726, file: !1070, line: 1773, type: !674)
!3726 = distinct !DILexicalBlock(scope: !3727, file: !1070, line: 1772, column: 27)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !1070, line: 1768, column: 20)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !1070, line: 1768, column: 6)
!3729 = distinct !DILexicalBlock(scope: !3711, file: !1070, line: 1765, column: 19)
!3730 = !DILocalVariable(name: "name", scope: !3731, file: !1070, line: 1794, type: !815)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !1070, line: 1793, column: 8)
!3732 = distinct !DILexicalBlock(scope: !3726, file: !1070, line: 1774, column: 21)
!3733 = !DILocation(line: 0, scope: !3711)
!3734 = !DILocation(line: 1727, column: 30, scope: !3711)
!3735 = !DILocation(line: 1729, column: 5, scope: !3711)
!3736 = !DILocation(line: 1741, column: 9, scope: !3711)
!3737 = !DILocation(line: 1756, column: 9, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3711, file: !1070, line: 1756, column: 9)
!3739 = !DILocation(line: 1756, column: 9, scope: !3711)
!3740 = !DILocation(line: 1758, column: 10, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3742, file: !1070, line: 1758, column: 10)
!3742 = distinct !DILexicalBlock(scope: !3743, file: !1070, line: 1757, column: 23)
!3743 = distinct !DILexicalBlock(scope: !3738, file: !1070, line: 1756, column: 23)
!3744 = !DILocation(line: 1758, column: 10, scope: !3742)
!3745 = !DILocation(line: 1759, column: 3, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3741, file: !1070, line: 1758, column: 28)
!3747 = !DILocation(line: 1760, column: 3, scope: !3746)
!3748 = !DILocation(line: 1757, column: 9, scope: !3743)
!3749 = !DILocation(line: 1757, column: 16, scope: !3743)
!3750 = !DILocation(line: 1757, column: 2, scope: !3743)
!3751 = distinct !{!3751, !3750, !3752, !1298, !1299}
!3752 = !DILocation(line: 1762, column: 2, scope: !3743)
!3753 = !DILocation(line: 1765, column: 5, scope: !3711)
!3754 = !DILocation(line: 1767, column: 2, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3756, file: !1070, line: 1767, column: 2)
!3756 = distinct !DILexicalBlock(scope: !3729, file: !1070, line: 1767, column: 2)
!3757 = !DILocation(line: 1767, column: 2, scope: !3756)
!3758 = !DILocation(line: 1767, column: 2, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3760, file: !1070, line: 1767, column: 2)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !1070, line: 1767, column: 2)
!3761 = distinct !DILexicalBlock(scope: !3755, file: !1070, line: 1767, column: 2)
!3762 = !DILocation(line: 1768, column: 6, scope: !3729)
!3763 = !DILocation(line: 1769, column: 12, scope: !3727)
!3764 = !DILocation(line: 1770, column: 6, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !1070, line: 1770, column: 6)
!3766 = distinct !DILexicalBlock(scope: !3727, file: !1070, line: 1770, column: 6)
!3767 = !DILocation(line: 1770, column: 6, scope: !3766)
!3768 = !DILocation(line: 1770, column: 6, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !1070, line: 1770, column: 6)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !1070, line: 1770, column: 6)
!3771 = distinct !DILexicalBlock(scope: !3765, file: !1070, line: 1770, column: 6)
!3772 = !DILocation(line: 1771, column: 15, scope: !3727)
!3773 = !DILocation(line: 1771, column: 12, scope: !3727)
!3774 = !DILocation(line: 1772, column: 13, scope: !3727)
!3775 = !DILocation(line: 1772, column: 20, scope: !3727)
!3776 = !DILocation(line: 1772, column: 6, scope: !3727)
!3777 = !DILocation(line: 1774, column: 27, scope: !3732)
!3778 = !DILocation(line: 0, scope: !3726)
!3779 = !DILocation(line: 1775, column: 11, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !1070, line: 1775, column: 11)
!3781 = distinct !DILexicalBlock(scope: !3732, file: !1070, line: 1774, column: 51)
!3782 = !DILocation(line: 1775, column: 20, scope: !3780)
!3783 = !DILocation(line: 1775, column: 23, scope: !3780)
!3784 = !DILocation(line: 1775, column: 11, scope: !3781)
!3785 = !DILocation(line: 1785, column: 4, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3780, file: !1070, line: 1775, column: 41)
!3787 = !DILocation(line: 1787, column: 7, scope: !3786)
!3788 = !DILocation(line: 1789, column: 25, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3780, file: !1070, line: 1788, column: 12)
!3790 = !DILocation(line: 1790, column: 7, scope: !3789)
!3791 = !DILocation(line: 1794, column: 26, scope: !3731)
!3792 = !DILocation(line: 0, scope: !3731)
!3793 = !DILocation(line: 1795, column: 7, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !1070, line: 1795, column: 7)
!3795 = distinct !DILexicalBlock(scope: !3731, file: !1070, line: 1795, column: 7)
!3796 = !DILocation(line: 1795, column: 7, scope: !3795)
!3797 = !DILocation(line: 1795, column: 7, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !1070, line: 1795, column: 7)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !1070, line: 1795, column: 7)
!3800 = distinct !DILexicalBlock(scope: !3794, file: !1070, line: 1795, column: 7)
!3801 = !DILocation(line: 1796, column: 26, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3731, file: !1070, line: 1796, column: 25)
!3803 = !DILocation(line: 0, scope: !1321, inlinedAt: !3804)
!3804 = distinct !DILocation(line: 1796, column: 26, scope: !3802)
!3805 = !DILocation(line: 307, column: 13, scope: !1331, inlinedAt: !3804)
!3806 = !DILocation(line: 307, column: 9, scope: !1321, inlinedAt: !3804)
!3807 = !DILocation(line: 309, column: 13, scope: !1337, inlinedAt: !3804)
!3808 = !DILocation(line: 0, scope: !1330, inlinedAt: !3804)
!3809 = !DILocation(line: 309, column: 13, scope: !1330, inlinedAt: !3804)
!3810 = !DILocation(line: 310, column: 17, scope: !1346, inlinedAt: !3804)
!3811 = !DILocation(line: 313, column: 62, scope: !1346, inlinedAt: !3804)
!3812 = !DILocation(line: 311, column: 17, scope: !1346, inlinedAt: !3804)
!3813 = !DILocation(line: 1796, column: 63, scope: !3802)
!3814 = !DILocation(line: 1797, column: 25, scope: !3802)
!3815 = !DILocation(line: 1796, column: 25, scope: !3731)
!3816 = !DILocation(line: 1798, column: 28, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3802, file: !1070, line: 1797, column: 51)
!3818 = !DILocation(line: 1799, column: 21, scope: !3817)
!3819 = !DILocation(line: 0, scope: !3727)
!3820 = distinct !{!3820, !3776, !3821, !1298, !1299}
!3821 = !DILocation(line: 1801, column: 6, scope: !3727)
!3822 = !DILocation(line: 1938, column: 2, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3824, file: !1070, line: 1938, column: 2)
!3824 = distinct !DILexicalBlock(scope: !3729, file: !1070, line: 1938, column: 2)
!3825 = !DILocation(line: 1938, column: 2, scope: !3824)
!3826 = !DILocation(line: 1938, column: 2, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3828, file: !1070, line: 1938, column: 2)
!3828 = distinct !DILexicalBlock(scope: !3829, file: !1070, line: 1938, column: 2)
!3829 = distinct !DILexicalBlock(scope: !3823, file: !1070, line: 1938, column: 2)
!3830 = !DILocation(line: 1939, column: 11, scope: !3729)
!3831 = !DILocation(line: 1939, column: 8, scope: !3729)
!3832 = !DILocation(line: 1940, column: 2, scope: !3729)
!3833 = !DILocation(line: 1941, column: 10, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3729, file: !1070, line: 1940, column: 23)
!3835 = !DILocation(line: 1942, column: 6, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3837, file: !1070, line: 1942, column: 6)
!3837 = distinct !DILexicalBlock(scope: !3834, file: !1070, line: 1942, column: 6)
!3838 = !DILocation(line: 1942, column: 6, scope: !3837)
!3839 = !DILocation(line: 1942, column: 6, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !1070, line: 1942, column: 6)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !1070, line: 1942, column: 6)
!3842 = distinct !DILexicalBlock(scope: !3836, file: !1070, line: 1942, column: 6)
!3843 = !DILocation(line: 1943, column: 11, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3834, file: !1070, line: 1943, column: 10)
!3845 = !DILocation(line: 0, scope: !1321, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 1943, column: 11, scope: !3844)
!3847 = !DILocation(line: 307, column: 13, scope: !1331, inlinedAt: !3846)
!3848 = !DILocation(line: 307, column: 9, scope: !1321, inlinedAt: !3846)
!3849 = !DILocation(line: 309, column: 13, scope: !1337, inlinedAt: !3846)
!3850 = !DILocation(line: 0, scope: !1330, inlinedAt: !3846)
!3851 = !DILocation(line: 309, column: 13, scope: !1330, inlinedAt: !3846)
!3852 = !DILocation(line: 310, column: 17, scope: !1346, inlinedAt: !3846)
!3853 = !DILocation(line: 313, column: 62, scope: !1346, inlinedAt: !3846)
!3854 = !DILocation(line: 311, column: 17, scope: !1346, inlinedAt: !3846)
!3855 = !DILocation(line: 1944, column: 20, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3844, file: !1070, line: 1943, column: 47)
!3857 = !DILocation(line: 1945, column: 13, scope: !3856)
!3858 = !DILocation(line: 1946, column: 15, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3844, file: !1070, line: 1946, column: 15)
!3860 = !DILocation(line: 1946, column: 15, scope: !3844)
!3861 = !DILocation(line: 1947, column: 7, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !1070, line: 1947, column: 7)
!3863 = distinct !DILexicalBlock(scope: !3859, file: !1070, line: 1946, column: 26)
!3864 = !DILocation(line: 1947, column: 7, scope: !3863)
!3865 = !DILocation(line: 0, scope: !2530, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 1951, column: 7, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !1070, line: 1951, column: 7)
!3868 = distinct !DILexicalBlock(scope: !3859, file: !1070, line: 1950, column: 11)
!3869 = !DILocation(line: 455, column: 10, scope: !2530, inlinedAt: !3866)
!3870 = !DILocation(line: 1951, column: 36, scope: !3867)
!3871 = !DILocation(line: 1951, column: 7, scope: !3868)
!3872 = !DILocation(line: 1952, column: 10, scope: !3867)
!3873 = !DILocation(line: 1952, column: 7, scope: !3867)
!3874 = !DILocation(line: 1953, column: 12, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3867, file: !1070, line: 1953, column: 12)
!3876 = !DILocation(line: 1953, column: 12, scope: !3867)
!3877 = !DILocation(line: 1954, column: 10, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3875, file: !1070, line: 1953, column: 41)
!3879 = !DILocation(line: 1955, column: 7, scope: !3878)
!3880 = !DILocation(line: 1956, column: 3, scope: !3878)
!3881 = !DILocation(line: 1958, column: 11, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !1070, line: 1958, column: 11)
!3883 = distinct !DILexicalBlock(scope: !3875, file: !1070, line: 1957, column: 8)
!3884 = !DILocation(line: 1958, column: 11, scope: !3883)
!3885 = !DILocation(line: 0, scope: !3729)
!3886 = !DILocation(line: 1940, column: 9, scope: !3729)
!3887 = !DILocation(line: 1940, column: 16, scope: !3729)
!3888 = distinct !{!3888, !3832, !3889, !1298, !1299}
!3889 = !DILocation(line: 1962, column: 2, scope: !3729)
!3890 = !DILocation(line: 2053, column: 1, scope: !3711)
!3891 = !DILocation(line: 2050, column: 5, scope: !3711)
!3892 = !DISubprogram(name: "Perl_die", scope: !1117, file: !1117, line: 913, type: !3893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!621, !815, null}
!3895 = !DISubprogram(name: "Perl_sv_tainted", scope: !1117, file: !1117, line: 4708, type: !3896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!434, !804}
!3898 = !DISubprogram(name: "Perl_sv_2iv_flags", scope: !1117, file: !1117, line: 4109, type: !3899, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3899 = !DISubroutineType(types: !3900)
!3900 = !{!489, !804, !838}
!3901 = distinct !DISubprogram(name: "Perl_cando", scope: !1070, file: !1070, line: 2058, type: !3902, scopeLine: 2062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3907)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!434, !3904, !434, !3905}
!3904 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !734, line: 69, baseType: !2024)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2014)
!3907 = !{!3908, !3909, !3910}
!3908 = !DILocalVariable(name: "mode", arg: 1, scope: !3901, file: !1070, line: 2058, type: !3904)
!3909 = !DILocalVariable(name: "effective", arg: 2, scope: !3901, file: !1070, line: 2058, type: !434)
!3910 = !DILocalVariable(name: "statbufp", arg: 3, scope: !3901, file: !1070, line: 2058, type: !3905)
!3911 = !DILocation(line: 0, scope: !3901)
!3912 = !DILocation(line: 2094, column: 10, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3901, file: !1070, line: 2094, column: 9)
!3914 = !DILocation(line: 2094, column: 22, scope: !3913)
!3915 = !DILocation(line: 2094, column: 62, scope: !3913)
!3916 = !DILocation(line: 2094, column: 9, scope: !3901)
!3917 = !DILocation(line: 2094, column: 43, scope: !3913)
!3918 = !DILocation(line: 2096, column: 11, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !1070, line: 2096, column: 6)
!3920 = distinct !DILexicalBlock(scope: !3913, file: !1070, line: 2094, column: 68)
!3921 = !DILocation(line: 2096, column: 6, scope: !3920)
!3922 = !DILocation(line: 2097, column: 20, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3924, file: !1070, line: 2097, column: 10)
!3924 = distinct !DILexicalBlock(scope: !3919, file: !1070, line: 2096, column: 23)
!3925 = !DILocation(line: 2097, column: 28, scope: !3923)
!3926 = !DILocation(line: 2097, column: 35, scope: !3923)
!3927 = !DILocation(line: 2104, column: 19, scope: !3928)
!3928 = distinct !DILexicalBlock(scope: !3901, file: !1070, line: 2104, column: 9)
!3929 = !DILocation(line: 2104, column: 42, scope: !3928)
!3930 = !DILocation(line: 2104, column: 26, scope: !3928)
!3931 = !DILocation(line: 2104, column: 9, scope: !3901)
!3932 = !DILocation(line: 2104, column: 63, scope: !3928)
!3933 = !DILocation(line: 2105, column: 16, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !1070, line: 2105, column: 6)
!3935 = distinct !DILexicalBlock(scope: !3928, file: !1070, line: 2104, column: 84)
!3936 = !DILocation(line: 2105, column: 24, scope: !3934)
!3937 = !DILocation(line: 2105, column: 6, scope: !3935)
!3938 = !DILocation(line: 2108, column: 14, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3928, file: !1070, line: 2108, column: 14)
!3940 = !DILocalVariable(name: "testgid", arg: 1, scope: !3941, file: !1070, line: 2120, type: !2262)
!3941 = distinct !DISubprogram(name: "S_ingroup", scope: !1070, file: !1070, line: 2120, type: !3942, scopeLine: 2121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!434, !2262, !434}
!3944 = !{!3940, !3945}
!3945 = !DILocalVariable(name: "effective", arg: 2, scope: !3941, file: !1070, line: 2120, type: !434)
!3946 = !DILocation(line: 0, scope: !3941, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 2108, column: 14, scope: !3939)
!3948 = !DILocation(line: 2126, column: 33, scope: !3949, inlinedAt: !3947)
!3949 = distinct !DILexicalBlock(scope: !3941, file: !1070, line: 2126, column: 9)
!3950 = !DILocation(line: 2126, column: 21, scope: !3949, inlinedAt: !3947)
!3951 = !DILocation(line: 2126, column: 54, scope: !3949, inlinedAt: !3947)
!3952 = !DILocation(line: 2126, column: 17, scope: !3949, inlinedAt: !3947)
!3953 = !DILocation(line: 0, scope: !3939)
!3954 = !DILocation(line: 2108, column: 14, scope: !3928)
!3955 = !DILocation(line: 2109, column: 31, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3957, file: !1070, line: 2109, column: 6)
!3957 = distinct !DILexicalBlock(scope: !3939, file: !1070, line: 2108, column: 51)
!3958 = !DILocation(line: 2109, column: 24, scope: !3956)
!3959 = !DILocation(line: 2109, column: 6, scope: !3957)
!3960 = !DILocation(line: 2112, column: 39, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3939, file: !1070, line: 2112, column: 14)
!3962 = !DILocation(line: 2112, column: 32, scope: !3961)
!3963 = !DILocation(line: 2112, column: 14, scope: !3939)
!3964 = !DILocation(line: 2114, column: 5, scope: !3901)
!3965 = !DILocation(line: 2116, column: 1, scope: !3901)
!3966 = !DISubprogram(name: "geteuid", scope: !437, file: !437, line: 4004, type: !3967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!2026}
!3969 = !DISubprogram(name: "getuid", scope: !437, file: !437, line: 4003, type: !3967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!3970 = distinct !DISubprogram(name: "Perl_start_glob", scope: !1070, file: !1070, line: 2509, type: !3971, scopeLine: 2510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3973)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!591, !472, !1061}
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979, !3980, !3982, !3983}
!3974 = !DILocalVariable(name: "tmpglob", arg: 1, scope: !3970, file: !1070, line: 2509, type: !472)
!3975 = !DILocalVariable(name: "io", arg: 2, scope: !3970, file: !1070, line: 2509, type: !1061)
!3976 = !DILocalVariable(name: "tmpcmd", scope: !3970, file: !1070, line: 2511, type: !804)
!3977 = !DILocalVariable(name: "fp", scope: !3970, file: !1070, line: 2512, type: !591)
!3978 = !DILocalVariable(name: "len", scope: !3970, file: !1070, line: 2513, type: !505)
!3979 = !DILocalVariable(name: "s", scope: !3970, file: !1070, line: 2514, type: !815)
!3980 = !DILocalVariable(name: "envgv", scope: !3981, file: !1070, line: 2562, type: !1237)
!3981 = distinct !DILexicalBlock(scope: !3970, file: !1070, line: 2561, column: 5)
!3982 = !DILocalVariable(name: "home", scope: !3981, file: !1070, line: 2563, type: !863)
!3983 = !DILocalVariable(name: "path", scope: !3981, file: !1070, line: 2564, type: !863)
!3984 = !DILocation(line: 0, scope: !3970)
!3985 = !DILocation(line: 2511, column: 25, scope: !3970)
!3986 = !DILocation(line: 2513, column: 5, scope: !3970)
!3987 = !DILocation(line: 2514, column: 21, scope: !3970)
!3988 = !DILocation(line: 2518, column: 10, scope: !3989)
!3989 = distinct !DILexicalBlock(scope: !3970, file: !1070, line: 2518, column: 9)
!3990 = !DILocation(line: 0, scope: !1321, inlinedAt: !3991)
!3991 = distinct !DILocation(line: 2518, column: 10, scope: !3989)
!3992 = !DILocation(line: 307, column: 13, scope: !1331, inlinedAt: !3991)
!3993 = !DILocation(line: 307, column: 9, scope: !1321, inlinedAt: !3991)
!3994 = !DILocation(line: 309, column: 13, scope: !1337, inlinedAt: !3991)
!3995 = !DILocation(line: 0, scope: !1330, inlinedAt: !3991)
!3996 = !DILocation(line: 309, column: 13, scope: !1330, inlinedAt: !3991)
!3997 = !DILocation(line: 310, column: 17, scope: !1346, inlinedAt: !3991)
!3998 = !DILocation(line: 313, column: 62, scope: !1346, inlinedAt: !3991)
!3999 = !DILocation(line: 311, column: 17, scope: !1346, inlinedAt: !3991)
!4000 = !DILocation(line: 2518, column: 9, scope: !3970)
!4001 = !DILocation(line: 2521, column: 5, scope: !3970)
!4002 = !DILocation(line: 2522, column: 5, scope: !3970)
!4003 = !DILocation(line: 2551, column: 5, scope: !3970)
!4004 = !DILocation(line: 2552, column: 5, scope: !3970)
!4005 = !DILocation(line: 2553, column: 5, scope: !3970)
!4006 = !DILocation(line: 2554, column: 5, scope: !3970)
!4007 = !DILocation(line: 2562, column: 21, scope: !3981)
!4008 = !DILocation(line: 0, scope: !3981)
!4009 = !DILocation(line: 2563, column: 21, scope: !3981)
!4010 = !DILocation(line: 2564, column: 21, scope: !3981)
!4011 = !DILocation(line: 2565, column: 6, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3981, file: !1070, line: 2565, column: 6)
!4013 = !DILocation(line: 2565, column: 11, scope: !4012)
!4014 = !DILocation(line: 2565, column: 14, scope: !4012)
!4015 = !DILocation(line: 2565, column: 6, scope: !3981)
!4016 = !DILocation(line: 2565, column: 21, scope: !4012)
!4017 = !DILocation(line: 2566, column: 6, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3981, file: !1070, line: 2566, column: 6)
!4019 = !DILocation(line: 2566, column: 11, scope: !4018)
!4020 = !DILocation(line: 2566, column: 14, scope: !4018)
!4021 = !DILocation(line: 2566, column: 6, scope: !3981)
!4022 = !DILocation(line: 2566, column: 21, scope: !4018)
!4023 = !DILocation(line: 2567, column: 2, scope: !3981)
!4024 = !DILocation(line: 2568, column: 11, scope: !4025)
!4025 = distinct !DILexicalBlock(scope: !3981, file: !1070, line: 2568, column: 6)
!4026 = !DILocation(line: 2568, column: 14, scope: !4025)
!4027 = !DILocation(line: 2568, column: 6, scope: !3981)
!4028 = !DILocation(line: 2568, column: 21, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !1070, line: 2568, column: 21)
!4030 = distinct !DILexicalBlock(scope: !4025, file: !1070, line: 2568, column: 21)
!4031 = !DILocation(line: 2568, column: 21, scope: !4030)
!4032 = !DILocation(line: 2569, column: 11, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !3981, file: !1070, line: 2569, column: 6)
!4034 = !DILocation(line: 2569, column: 14, scope: !4033)
!4035 = !DILocation(line: 2569, column: 6, scope: !3981)
!4036 = !DILocation(line: 2569, column: 21, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4038, file: !1070, line: 2569, column: 21)
!4038 = distinct !DILexicalBlock(scope: !4033, file: !1070, line: 2569, column: 21)
!4039 = !DILocation(line: 2569, column: 21, scope: !4038)
!4040 = !DILocation(line: 2571, column: 11, scope: !3970)
!4041 = !DILocation(line: 2573, column: 10, scope: !3970)
!4042 = !DILocation(line: 2575, column: 5, scope: !3970)
!4043 = !DILocation(line: 2577, column: 10, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !3970, file: !1070, line: 2577, column: 9)
!4045 = !DILocation(line: 2577, column: 13, scope: !4044)
!4046 = !DILocation(line: 2577, column: 16, scope: !4044)
!4047 = !DILocation(line: 2577, column: 9, scope: !3970)
!4048 = !DILocation(line: 2579, column: 21, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4044, file: !1070, line: 2577, column: 35)
!4050 = !DILocation(line: 2578, column: 9, scope: !4049)
!4051 = !DILocation(line: 2580, column: 5, scope: !4049)
!4052 = !DILocation(line: 2583, column: 1, scope: !3970)
!4053 = !DISubprogram(name: "Perl_newSV", scope: !1117, file: !1117, line: 3055, type: !4054, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!472, !1900}
!4056 = !DISubprogram(name: "Perl_push_scope", scope: !1117, file: !1117, line: 3507, type: !2200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4057 = !DISubprogram(name: "Perl_sv_catsv_flags", scope: !1117, file: !1117, line: 4246, type: !4058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !804, !804, !838}
!4060 = !DISubprogram(name: "Perl_hv_common", scope: !1117, file: !1117, line: 1626, type: !4061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!477, !441, !472, !815, !505, !471, !471, !472, !479}
!4063 = !DISubprogram(name: "Perl_save_hash", scope: !1117, file: !1117, line: 3845, type: !4064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!441, !674}
!4066 = !DISubprogram(name: "Perl_pop_scope", scope: !1117, file: !1117, line: 3451, type: !2200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4067 = !DISubprogram(name: "Perl_ck_warner", scope: !1117, file: !1117, line: 700, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4068 = !DISubprogram(name: "Perl_av_fetch", scope: !1117, file: !1117, line: 226, type: !4069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!539, !797, !733, !554}
!4071 = !DISubprogram(name: "Perl_sv_upgrade", scope: !1117, file: !1117, line: 4747, type: !4072, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !804, !998}
!4074 = !DISubprogram(name: "fcntl", scope: !4075, file: !4075, line: 148, type: !4076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4075 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "270596b098606fab5166d0114edf8288")
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!471, !471, !471, null}
!4078 = !DISubprogram(name: "Perl_PerlIO_clearerr", scope: !1117, file: !1117, line: 8248, type: !2776, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4079 = !DISubprogram(name: "Perl_mg_size", scope: !1117, file: !1117, line: 2697, type: !4080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4080 = !DISubroutineType(types: !4081)
!4081 = !{!554, !472}
!4082 = !DISubprogram(name: "Perl_sv_free2", scope: !1117, file: !1117, line: 4371, type: !4083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !804, !817}
!4085 = !DISubprogram(name: "write", scope: !2241, file: !2241, line: 366, type: !4086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!733, !471, !3096, !506}
!4088 = !DISubprogram(name: "getegid", scope: !437, file: !437, line: 4006, type: !4089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!2028}
!4091 = !DISubprogram(name: "getgid", scope: !437, file: !437, line: 4005, type: !4089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1120)
