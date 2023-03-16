; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/pad.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padname = type { ptr, ptr, %union.anon.16, i32, i32, i32, i32, i8, i8 }
%union.anon.16 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.av = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.padnamelist = type { i64, ptr, i64, i64, i32 }
%struct.padlist = type { i64, ptr, i32, i32 }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.9, ptr, %union.anon.10, %union.anon.11, %union.anon.12, ptr, %union.anon.13, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon.9 = type { i64 }
%union.anon.10 = type { ptr }
%union.anon.11 = type { ptr }
%union.anon.12 = type { ptr }
%union.anon.13 = type { ptr }
%struct.opslot = type { ptr, ptr, %struct.op }
%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.opslab = type { ptr, ptr, ptr, i64, %struct.opslot }
%struct.cv = type { ptr, i32, i32, %union.anon.2 }
%union.anon.2 = type { ptr }
%struct.padname_with_str = type { ptr, ptr, %union.anon.19, i32, i32, i32, i32, i8, i8, [1 x i8] }
%union.anon.19 = type { ptr }
%struct.yy_parser = type { ptr, %union.YYSTYPE, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, i16, i16, i32, ptr, i32, i32, i8, i8, i8, i8, i32, %struct._sublex_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i8, i8, ptr, ptr, ptr, i8, [5 x %union.YYSTYPE], [5 x i32], i32, ptr, [256 x i8], i32, i32, i8, i8, i8 }
%union.YYSTYPE = type { ptr }
%struct._sublex_info = type { i8, i16, ptr, ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.18 }
%union.anon.18 = type { i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.3 }
%union.anon.3 = type { ptr }
%struct.he = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.20, %union._xivu, %union._xnvu }
%union.anon.20 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.unop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvhv_aux = type { %union._xhvnameu, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32 }
%union._xhvnameu = type { ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu, %union._xnvu }
%union.anon.8 = type { i64 }

@PL_comppad = external local_unnamed_addr global ptr, align 8
@PL_comppad_name = external global ptr, align 8
@PL_padix = external global i32, align 4
@PL_constpadix = external global i32, align 4
@PL_comppad_name_fill = external global i32, align 4
@PL_min_intro_pending = external global i32, align 4
@PL_max_intro_pending = external global i32, align 4
@PL_cv_has_eval = external global i8, align 1
@PL_pad_reset_pending = external global i8, align 1
@PL_padlist_generation = external local_unnamed_addr global i32, align 4
@PL_padname_undef = external global %struct.padname, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Can't undef active subroutine\00", align 1
@PL_parser = external local_unnamed_addr global ptr, align 8
@PL_phase = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"panic: pad_add_name_pvn illegal flag bits 0x%lx\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"panic: pad_alloc, %p!=%p\00", align 1
@PL_padname_const = external global %struct.padname, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"panic: pad_findmy_pvn illegal flag bits 0x%lx\00", align 1
@PL_compcv = external global ptr, align 8
@PL_cop_seqmax = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"$_\00", align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@PL_defgv = external local_unnamed_addr global ptr, align 8
@PL_comppad_name_floor = external global i32, align 4
@PL_padix_floor = external global i32, align 4
@PL_compiling = external local_unnamed_addr global %struct.cop, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"%d%lu%4p never introduced\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"panic: pad_swipe curpad, %p!=%p\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"panic: pad_swipe po=%ld, fill=%ld\00", align 1
@PL_perldb = external local_unnamed_addr global i32, align 4
@PL_sv_undef = external global %struct.sv, align 8
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_no = external global %struct.sv, align 8
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"panic: pad_free curpad, %p!=%p\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"panic: pad_free po\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"PADNAME = 0x%lx(0x%lx) PAD = 0x%lx(0x%lx)\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"%2d. 0x%lx<%lu> FAKE \22%s\22 flags=0x%lx index=%lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"%2d. 0x%lx<%lu> (%lu,%lu) \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"%2d. 0x%lx<%lu>\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"panic: no pad in cv_clone\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"\22%s\22 %s %d%lu%4p masks earlier declaration in same %s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"subroutine\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"variable\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"\22our\22 variable %d%lu%4p redeclared\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"\09(Did you mean \22local\22 instead of \22our\22?)\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"panic: pad_findlex illegal flag bits 0x%lx\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"%se \22%d%lu%4p\22 will not stay shared\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Subroutin\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"Variabl\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"%se \22%d%lu%4p\22 is not available\00", align 1
@.str.33 = private unnamed_addr constant [79 x i8] c"Constants from lexical variables potentially modified elsewhere are deprecated\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pad_new(i32 noundef %flags) local_unnamed_addr #0 !dbg !1177 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1182, metadata !DIExpression()), !dbg !1191
  %and = and i32 %flags, 2, !dbg !1192
  %tobool.not = icmp eq i32 %and, 0, !dbg !1192
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then, !dbg !1194

entry.if.end8_crit_edge:                          ; preds = %entry
  %.pre47 = and i32 %flags, 1, !dbg !1195
  %phi.cmp = icmp eq i32 %.pre47, 0, !dbg !1194
  br label %if.end8, !dbg !1194

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @PL_comppad, align 8, !dbg !1196
  tail call void @Perl_save_pushptr(ptr noundef %0, i32 noundef 7) #11, !dbg !1196
  %and1 = and i32 %flags, 1, !dbg !1198
  %tobool2.not = icmp eq i32 %and1, 0, !dbg !1198
  br i1 %tobool2.not, label %if.then3, label %if.end8, !dbg !1200

if.then3:                                         ; preds = %if.then
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_comppad_name) #11, !dbg !1201
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_padix) #11, !dbg !1203
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_constpadix) #11, !dbg !1204
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_comppad_name_fill) #11, !dbg !1205
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_min_intro_pending) #11, !dbg !1206
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_max_intro_pending) #11, !dbg !1207
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_cv_has_eval) #11, !dbg !1208
  %and4 = and i32 %flags, 4, !dbg !1209
  %tobool5.not = icmp eq i32 %and4, 0, !dbg !1209
  br i1 %tobool5.not, label %if.end8, label %if.then6, !dbg !1211

if.then6:                                         ; preds = %if.then3
  tail call void @Perl_save_bool(ptr noundef nonnull @PL_pad_reset_pending) #11, !dbg !1212
  br label %if.end8, !dbg !1214

if.end8:                                          ; preds = %entry.if.end8_crit_edge, %if.then, %if.then6, %if.then3
  %and10.pre-phi = phi i1 [ %phi.cmp, %entry.if.end8_crit_edge ], [ false, %if.then ], [ true, %if.then6 ], [ true, %if.then3 ]
  %call = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 24) #11, !dbg !1215
  call void @llvm.dbg.value(metadata ptr %call, metadata !1183, metadata !DIExpression()), !dbg !1191
  %call9 = tail call ptr @Perl_newSV_type(i32 noundef 11) #11, !dbg !1216
  call void @llvm.dbg.value(metadata ptr %call9, metadata !1185, metadata !DIExpression()), !dbg !1191
  br i1 %and10.pre-phi, label %if.end10.i, label %if.then12, !dbg !1217

if.then12:                                        ; preds = %if.end8
  %call13 = tail call ptr @Perl_newSV_type(i32 noundef 11) #11, !dbg !1218
  call void @llvm.dbg.value(metadata ptr %call13, metadata !1187, metadata !DIExpression()), !dbg !1219
  %call14 = tail call ptr @Perl_av_store(ptr noundef %call9, i64 noundef 0, ptr noundef %call13) #11, !dbg !1220
  %sv_flags = getelementptr inbounds %struct.av, ptr %call13, i64 0, i32 2, !dbg !1221
  %1 = load i32, ptr %sv_flags, align 4, !dbg !1221
  %and15 = and i32 %1, 1073741823, !dbg !1221
  %or = or i32 %and15, -2147483648, !dbg !1221
  store i32 %or, ptr %sv_flags, align 4, !dbg !1221
  %2 = load ptr, ptr @PL_comppad_name, align 8, !dbg !1222
  call void @llvm.dbg.value(metadata ptr %2, metadata !1184, metadata !DIExpression()), !dbg !1191
  %xpadnl_refcnt = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 4, !dbg !1222
  %3 = load i32, ptr %xpadnl_refcnt, align 8, !dbg !1223
  %inc = add i32 %3, 1, !dbg !1223
  store i32 %inc, ptr %xpadnl_refcnt, align 8, !dbg !1223
  br label %if.end21, !dbg !1224

if.end10.i:                                       ; preds = %if.end8
  %4 = load i32, ptr @PL_padlist_generation, align 4, !dbg !1225
  %inc17 = add i32 %4, 1, !dbg !1225
  store i32 %inc17, ptr @PL_padlist_generation, align 4, !dbg !1225
  %xpadl_id = getelementptr inbounds %struct.padlist, ptr %call, i64 0, i32 2, !dbg !1227
  store i32 %4, ptr %xpadl_id, align 8, !dbg !1228
  %call18 = tail call ptr @Perl_av_store(ptr noundef %call9, i64 noundef 0, ptr noundef null) #11, !dbg !1229
  call void @llvm.dbg.value(metadata i64 0, metadata !1230, metadata !DIExpression()) #11, !dbg !1236
  %call.i = tail call ptr @Perl_safesysmalloc(i64 noundef 40) #11, !dbg !1238
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1235, metadata !DIExpression()) #11, !dbg !1236
  %call1.i = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 8) #11, !dbg !1239
  %xpadnl_alloc.i = getelementptr inbounds %struct.padnamelist, ptr %call.i, i64 0, i32 1, !dbg !1239
  store ptr %call1.i, ptr %xpadnl_alloc.i, align 8, !dbg !1239
  %xpadnl_refcnt.i = getelementptr inbounds %struct.padnamelist, ptr %call.i, i64 0, i32 4, !dbg !1240
  store i32 1, ptr %xpadnl_refcnt.i, align 8, !dbg !1241
  %xpadnl_max.i = getelementptr inbounds %struct.padnamelist, ptr %call.i, i64 0, i32 2, !dbg !1242
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1184, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1243, metadata !DIExpression()) #11, !dbg !1251
  call void @llvm.dbg.value(metadata i64 0, metadata !1248, metadata !DIExpression()) #11, !dbg !1251
  call void @llvm.dbg.value(metadata ptr @PL_padname_undef, metadata !1249, metadata !DIExpression()) #11, !dbg !1251
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %xpadnl_max.i, i8 0, i64 16, i1 false), !dbg !1253
  store i64 0, ptr %call1.i, align 1, !dbg !1254
  store i64 0, ptr %call.i, align 8, !dbg !1257
  %.pre = load ptr, ptr %xpadnl_alloc.i, align 8, !dbg !1258
  call void @llvm.dbg.value(metadata ptr %.pre, metadata !1250, metadata !DIExpression()) #11, !dbg !1251
  %5 = load ptr, ptr %.pre, align 8, !dbg !1259
  %tobool.not.i = icmp eq ptr %5, null, !dbg !1259
  br i1 %tobool.not.i, label %Perl_padnamelist_store.exit, label %if.then12.i, !dbg !1261

if.then12.i:                                      ; preds = %if.end10.i
  tail call void @Perl_padname_free(ptr noundef nonnull %5) #11, !dbg !1262
  br label %Perl_padnamelist_store.exit, !dbg !1262

Perl_padnamelist_store.exit:                      ; preds = %if.end10.i, %if.then12.i
  store ptr @PL_padname_undef, ptr %.pre, align 8, !dbg !1263
  br label %if.end21

if.end21:                                         ; preds = %Perl_padnamelist_store.exit, %if.then12
  %padname.0 = phi ptr [ %2, %if.then12 ], [ %call.i, %Perl_padnamelist_store.exit ], !dbg !1264
  call void @llvm.dbg.value(metadata ptr %padname.0, metadata !1184, metadata !DIExpression()), !dbg !1191
  %call22 = tail call ptr @Perl_safesysmalloc(i64 noundef 16) #11, !dbg !1265
  call void @llvm.dbg.value(metadata ptr %call22, metadata !1186, metadata !DIExpression()), !dbg !1191
  store i64 1, ptr %call, align 8, !dbg !1266
  %xpadl_alloc = getelementptr inbounds %struct.padlist, ptr %call, i64 0, i32 1, !dbg !1267
  store ptr %call22, ptr %xpadl_alloc, align 8, !dbg !1268
  store ptr %padname.0, ptr %call22, align 8, !dbg !1269
  %arrayidx23 = getelementptr inbounds ptr, ptr %call22, i64 1, !dbg !1270
  store ptr %call9, ptr %arrayidx23, align 8, !dbg !1271
  store ptr %call9, ptr @PL_comppad, align 8, !dbg !1272
  %sv_u = getelementptr inbounds %struct.av, ptr %call9, i64 0, i32 3, !dbg !1273
  %6 = load ptr, ptr %sv_u, align 8, !dbg !1273
  store ptr %6, ptr @PL_curpad, align 8, !dbg !1274
  br i1 %and10.pre-phi, label %if.then26, label %if.end27, !dbg !1275

if.then26:                                        ; preds = %if.end21
  store ptr %padname.0, ptr @PL_comppad_name, align 8, !dbg !1276
  store i32 0, ptr @PL_comppad_name_fill, align 4, !dbg !1279
  store i32 0, ptr @PL_min_intro_pending, align 4, !dbg !1280
  store i32 0, ptr @PL_padix, align 4, !dbg !1281
  store i32 0, ptr @PL_constpadix, align 4, !dbg !1282
  store i8 0, ptr @PL_cv_has_eval, align 1, !dbg !1283
  br label %if.end27, !dbg !1284

if.end27:                                         ; preds = %if.then26, %if.end21
  ret ptr %call, !dbg !1285
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1286 void @Perl_save_pushptr(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1293 void @Perl_save_sptr(ptr noundef) local_unnamed_addr #3

declare !dbg !1296 void @Perl_save_I32(ptr noundef) local_unnamed_addr #3

declare !dbg !1299 void @Perl_save_bool(ptr noundef) local_unnamed_addr #3

declare !dbg !1302 ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !1305 ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #3

declare !dbg !1309 ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_newPADNAMELIST(i64 noundef %max) local_unnamed_addr #0 !dbg !1231 {
entry:
  call void @llvm.dbg.value(metadata i64 %max, metadata !1230, metadata !DIExpression()), !dbg !1312
  %call = tail call ptr @Perl_safesysmalloc(i64 noundef 40) #11, !dbg !1313
  call void @llvm.dbg.value(metadata ptr %call, metadata !1235, metadata !DIExpression()), !dbg !1312
  %add = add i64 %max, 1, !dbg !1314
  %call1 = tail call ptr @Perl_safesyscalloc(i64 noundef %add, i64 noundef 8) #11, !dbg !1314
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %call, i64 0, i32 1, !dbg !1314
  store ptr %call1, ptr %xpadnl_alloc, align 8, !dbg !1314
  store i64 -1, ptr %call, align 8, !dbg !1315
  %xpadnl_refcnt = getelementptr inbounds %struct.padnamelist, ptr %call, i64 0, i32 4, !dbg !1316
  store i32 1, ptr %xpadnl_refcnt, align 8, !dbg !1317
  %xpadnl_max_named = getelementptr inbounds %struct.padnamelist, ptr %call, i64 0, i32 3, !dbg !1318
  store i64 0, ptr %xpadnl_max_named, align 8, !dbg !1319
  %xpadnl_max = getelementptr inbounds %struct.padnamelist, ptr %call, i64 0, i32 2, !dbg !1320
  store i64 %max, ptr %xpadnl_max, align 8, !dbg !1321
  ret ptr %call, !dbg !1322
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_padnamelist_store(ptr noundef %pnl, i64 noundef %key, ptr noundef %val) local_unnamed_addr #0 !dbg !1244 {
entry:
  call void @llvm.dbg.value(metadata ptr %pnl, metadata !1243, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %key, metadata !1248, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata ptr %val, metadata !1249, metadata !DIExpression()), !dbg !1323
  %xpadnl_max = getelementptr inbounds %struct.padnamelist, ptr %pnl, i64 0, i32 2, !dbg !1324
  %0 = load i64, ptr %xpadnl_max, align 8, !dbg !1324
  %cmp = icmp slt i64 %0, %key, !dbg !1326
  br i1 %cmp, label %if.then, label %if.end, !dbg !1327

if.then:                                          ; preds = %entry
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %pnl, i64 0, i32 1, !dbg !1328
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %key, ptr noundef nonnull %xpadnl_max, ptr noundef nonnull %xpadnl_alloc, ptr noundef nonnull %xpadnl_alloc) #11, !dbg !1328
  br label %if.end, !dbg !1328

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, ptr %pnl, align 8, !dbg !1329
  %cmp3 = icmp slt i64 %1, %key, !dbg !1330
  br i1 %cmp3, label %if.then4, label %if.end10, !dbg !1331

if.then4:                                         ; preds = %if.end
  %xpadnl_alloc5 = getelementptr inbounds %struct.padnamelist, ptr %pnl, i64 0, i32 1, !dbg !1332
  %2 = load ptr, ptr %xpadnl_alloc5, align 8, !dbg !1332
  %add.ptr = getelementptr inbounds ptr, ptr %2, i64 %1, !dbg !1332
  %add.ptr7 = getelementptr inbounds ptr, ptr %add.ptr, i64 1, !dbg !1332
  %sub = sub nsw i64 %key, %1, !dbg !1332
  %mul = shl i64 %sub, 3, !dbg !1332
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr7, i8 0, i64 %mul, i1 false), !dbg !1332
  store i64 %key, ptr %pnl, align 8, !dbg !1333
  br label %if.end10, !dbg !1334

if.end10:                                         ; preds = %if.then4, %if.end
  %xpadnl_alloc11 = getelementptr inbounds %struct.padnamelist, ptr %pnl, i64 0, i32 1, !dbg !1335
  %3 = load ptr, ptr %xpadnl_alloc11, align 8, !dbg !1335
  call void @llvm.dbg.value(metadata ptr %3, metadata !1250, metadata !DIExpression()), !dbg !1323
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %key, !dbg !1336
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1336
  %tobool.not = icmp eq ptr %4, null, !dbg !1336
  br i1 %tobool.not, label %if.end14, label %if.then12, !dbg !1337

if.then12:                                        ; preds = %if.end10
  tail call void @Perl_padname_free(ptr noundef nonnull %4), !dbg !1338
  br label %if.end14, !dbg !1338

if.end14:                                         ; preds = %if.then12, %if.end10
  store ptr %val, ptr %arrayidx, align 8, !dbg !1339
  ret ptr %arrayidx, !dbg !1340
}

declare !dbg !1341 ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Perl_cv_undef(ptr noundef %cv) local_unnamed_addr #0 !dbg !1344 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1346, metadata !DIExpression()), !dbg !1347
  tail call void @Perl_cv_undef_flags(ptr noundef %cv, i32 noundef 0), !dbg !1348
  ret void, !dbg !1349
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_cv_undef_flags(ptr noundef %cv, i32 noundef %flags) local_unnamed_addr #0 !dbg !1350 {
entry:
  call void @llvm.dbg.declare(metadata ptr undef, metadata !1356, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 128)), !dbg !1394
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1354, metadata !DIExpression()), !dbg !1395
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1355, metadata !DIExpression()), !dbg !1395
  %0 = load ptr, ptr %cv, align 8, !dbg !1396
  call void @llvm.dbg.value(metadata ptr %0, metadata !1356, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1395
  %xcv_file = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 8, !dbg !1397
  %1 = load ptr, ptr %xcv_file, align 8, !dbg !1397
  %tobool.not = icmp eq ptr %1, null, !dbg !1397
  br i1 %tobool.not, label %if.end10, label %if.then, !dbg !1398

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %1, metadata !1357, metadata !DIExpression()), !dbg !1399
  store ptr null, ptr %xcv_file, align 8, !dbg !1400
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 12, !dbg !1401
  %2 = load i32, ptr %xcv_flags, align 4, !dbg !1401
  %and = and i32 %2, 4096, !dbg !1401
  %tobool8.not = icmp eq i32 %and, 0, !dbg !1401
  br i1 %tobool8.not, label %if.end10, label %if.then9, !dbg !1403

if.then9:                                         ; preds = %if.then
  tail call void @Perl_safesysfree(ptr noundef nonnull %1) #11, !dbg !1404
  br label %if.end10, !dbg !1404

if.end10:                                         ; preds = %if.then, %if.then9, %entry
  %xcv_flags12 = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 12, !dbg !1405
  %3 = load i32, ptr %xcv_flags12, align 4, !dbg !1405
  %and13 = and i32 %3, 8, !dbg !1405
  %tobool14.not = icmp eq i32 %and13, 0, !dbg !1405
  %xcv_root_u = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 6, !dbg !1407
  br i1 %tobool14.not, label %if.then15, label %if.else66, !dbg !1408

if.then15:                                        ; preds = %if.end10
  %4 = load ptr, ptr %xcv_root_u, align 8, !dbg !1409
  %tobool17.not = icmp eq ptr %4, null, !dbg !1409
  br i1 %tobool17.not, label %if.else, label %if.then18, !dbg !1412

if.then18:                                        ; preds = %if.then15
  %xcv_depth = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 13, !dbg !1413
  %5 = load i32, ptr %xcv_depth, align 8, !dbg !1413
  %tobool20.not = icmp eq i32 %5, 0, !dbg !1413
  br i1 %tobool20.not, label %if.end22, label %if.then21, !dbg !1416

if.then21:                                        ; preds = %if.then18
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str) #11, !dbg !1417
  br label %if.end22, !dbg !1419

if.end22:                                         ; preds = %if.then21, %if.then18
  tail call void @Perl_push_scope() #11, !dbg !1420
  %6 = load ptr, ptr @PL_comppad, align 8, !dbg !1421
  tail call void @Perl_save_pushptr(ptr noundef %6, i32 noundef 7) #11, !dbg !1421
  store ptr null, ptr @PL_comppad, align 8, !dbg !1421
  store ptr null, ptr @PL_curpad, align 8, !dbg !1421
  %7 = load i32, ptr %xcv_flags12, align 4, !dbg !1422
  %and25 = and i32 %7, 2048, !dbg !1422
  %tobool26.not = icmp eq i32 %and25, 0, !dbg !1422
  br i1 %tobool26.not, label %if.end39, label %if.then27, !dbg !1424

if.then27:                                        ; preds = %if.end22
  %8 = load ptr, ptr %xcv_root_u, align 8, !dbg !1425
  %add.ptr = getelementptr inbounds i8, ptr %8, i64 -16, !dbg !1425
  %opslot_slab = getelementptr inbounds %struct.opslot, ptr %add.ptr, i64 0, i32 1, !dbg !1425
  %9 = load ptr, ptr %opslot_slab, align 8, !dbg !1425
  %opslab_refcnt = getelementptr inbounds %struct.opslab, ptr %9, i64 0, i32 3, !dbg !1425
  %10 = load i64, ptr %opslab_refcnt, align 8, !dbg !1425
  %cmp = icmp eq i64 %10, 1, !dbg !1425
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1425

cond.true:                                        ; preds = %if.then27
  tail call void @Perl_opslab_free(ptr noundef nonnull %9) #11, !dbg !1425
  br label %if.end39, !dbg !1425

cond.false:                                       ; preds = %if.then27
  %dec = add i64 %10, -1, !dbg !1425
  store i64 %dec, ptr %opslab_refcnt, align 8, !dbg !1425
  br label %if.end39, !dbg !1425

if.end39:                                         ; preds = %cond.true, %cond.false, %if.end22
  %11 = load ptr, ptr %xcv_root_u, align 8, !dbg !1426
  tail call void @Perl_op_free(ptr noundef %11) #11, !dbg !1426
  %xcv_start_u = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 5, !dbg !1427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %xcv_start_u, i8 0, i64 16, i1 false), !dbg !1428
  tail call void @Perl_pop_scope() #11, !dbg !1429
  br label %if.end69, !dbg !1430

if.else:                                          ; preds = %if.then15
  %and47 = and i32 %3, 2048, !dbg !1431
  %tobool48.not = icmp eq i32 %and47, 0, !dbg !1431
  br i1 %tobool48.not, label %if.end69, label %if.then49, !dbg !1433

if.then49:                                        ; preds = %if.else
  %xcv_start_u51 = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 5, !dbg !1434
  %12 = load ptr, ptr %xcv_start_u51, align 8, !dbg !1434
  %tobool52.not = icmp eq ptr %12, null, !dbg !1434
  br i1 %tobool52.not, label %if.end69, label %if.then53, !dbg !1437

if.then53:                                        ; preds = %if.then49
  tail call void @Perl_push_scope() #11, !dbg !1438
  %13 = load ptr, ptr @PL_comppad, align 8, !dbg !1440
  tail call void @Perl_save_pushptr(ptr noundef %13, i32 noundef 7) #11, !dbg !1440
  store ptr null, ptr @PL_comppad, align 8, !dbg !1440
  store ptr null, ptr @PL_curpad, align 8, !dbg !1440
  %14 = load ptr, ptr @PL_parser, align 8, !dbg !1441
  %tobool54.not = icmp eq ptr %14, null, !dbg !1441
  br i1 %tobool54.not, label %if.end58, label %if.then55, !dbg !1443

if.then55:                                        ; preds = %if.then53
  %15 = load ptr, ptr %xcv_start_u51, align 8, !dbg !1444
  tail call void @Perl_parser_free_nexttoke_ops(ptr noundef nonnull %14, ptr noundef %15) #11, !dbg !1444
  br label %if.end58, !dbg !1444

if.end58:                                         ; preds = %if.then55, %if.then53
  %16 = load ptr, ptr %xcv_start_u51, align 8, !dbg !1445
  tail call void @Perl_opslab_force_free(ptr noundef %16) #11, !dbg !1445
  store ptr null, ptr %xcv_start_u51, align 8, !dbg !1446
  tail call void @Perl_pop_scope() #11, !dbg !1447
  br label %if.end69, !dbg !1448

if.else66:                                        ; preds = %if.end10
  store ptr null, ptr %xcv_root_u, align 8, !dbg !1449
  br label %if.end69

if.end69:                                         ; preds = %if.end39, %if.then49, %if.end58, %if.else, %if.else66
  %sv_flags = getelementptr inbounds %struct.sv, ptr %cv, i64 0, i32 2, !dbg !1451
  %17 = load i32, ptr %sv_flags, align 4, !dbg !1451
  %and70 = and i32 %17, -17409, !dbg !1451
  store i32 %and70, ptr %sv_flags, align 4, !dbg !1451
  %call = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %cv, i32 noundef 93) #11, !dbg !1452
  %and71 = and i32 %flags, 1, !dbg !1453
  %tobool72.not = icmp eq i32 %and71, 0, !dbg !1453
  br i1 %tobool72.not, label %if.then73, label %if.end94, !dbg !1455

if.then73:                                        ; preds = %if.end69
  %18 = load i32, ptr %xcv_flags12, align 4, !dbg !1456
  %and76 = and i32 %18, 32768, !dbg !1456
  %tobool77.not = icmp eq i32 %and76, 0, !dbg !1456
  br i1 %tobool77.not, label %if.else92, label %CvNAME_HEK.exit, !dbg !1459

CvNAME_HEK.exit:                                  ; preds = %if.then73
  call void @llvm.dbg.value(metadata ptr undef, metadata !1460, metadata !DIExpression()), !dbg !1465
  %xcv_gv_u.i = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 7, !dbg !1468
  %19 = load ptr, ptr %xcv_gv_u.i, align 8, !dbg !1469
  %tobool80.not = icmp eq ptr %19, null, !dbg !1470
  br i1 %tobool80.not, label %cond.end84, label %cond.true81, !dbg !1470

cond.true81:                                      ; preds = %CvNAME_HEK.exit
  tail call void @Perl_unshare_hek(ptr noundef nonnull %19) #11, !dbg !1470
  %.pre = load i32, ptr %xcv_flags12, align 4, !dbg !1470
  br label %cond.end84, !dbg !1470

cond.end84:                                       ; preds = %CvNAME_HEK.exit, %cond.true81
  %20 = phi i32 [ %18, %CvNAME_HEK.exit ], [ %.pre, %cond.true81 ], !dbg !1470
  store ptr null, ptr %xcv_gv_u.i, align 8, !dbg !1470
  %and91 = and i32 %20, -32769, !dbg !1471
  store i32 %and91, ptr %xcv_flags12, align 4, !dbg !1471
  br label %if.end94, !dbg !1472

if.else92:                                        ; preds = %if.then73
  tail call void @Perl_cvgv_set(ptr noundef nonnull %cv, ptr noundef null) #11, !dbg !1473
  br label %if.end94

if.end94:                                         ; preds = %cond.end84, %if.else92, %if.end69
  %21 = load i32, ptr %xcv_flags12, align 4, !dbg !1474
  %and97 = and i32 %21, 8, !dbg !1474
  %tobool98.not = icmp eq i32 %and97, 0, !dbg !1474
  %xcv_padlist_u = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 9, !dbg !1475
  br i1 %tobool98.not, label %land.lhs.true, label %if.end202.sink.split, !dbg !1476

land.lhs.true:                                    ; preds = %if.end94
  %22 = load ptr, ptr %xcv_padlist_u, align 8, !dbg !1477
  %tobool100.not = icmp eq ptr %22, null, !dbg !1477
  br i1 %tobool100.not, label %if.end202, label %if.then101, !dbg !1478

if.then101:                                       ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %22, metadata !1363, metadata !DIExpression()), !dbg !1479
  %23 = load i32, ptr @PL_phase, align 4, !dbg !1480
  %cmp104.not = icmp eq i32 %23, 6, !dbg !1481
  br i1 %cmp104.not, label %if.end163, label %if.then105, !dbg !1482

if.then105:                                       ; preds = %if.then101
  %xcv_outside = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 10, !dbg !1483
  %24 = load ptr, ptr %xcv_outside, align 8, !dbg !1483
  call void @llvm.dbg.value(metadata ptr %24, metadata !1366, metadata !DIExpression()), !dbg !1484
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 11, !dbg !1485
  %25 = load i32, ptr %xcv_outside_seq, align 8, !dbg !1485
  call void @llvm.dbg.value(metadata i32 %25, metadata !1370, metadata !DIExpression()), !dbg !1484
  %xpadl_alloc = getelementptr inbounds %struct.padlist, ptr %22, i64 0, i32 1, !dbg !1486
  %26 = load ptr, ptr %xpadl_alloc, align 8, !dbg !1486
  %27 = load ptr, ptr %26, align 8, !dbg !1486
  call void @llvm.dbg.value(metadata ptr %27, metadata !1371, metadata !DIExpression()), !dbg !1484
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %27, i64 0, i32 1, !dbg !1487
  %28 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !1487
  call void @llvm.dbg.value(metadata ptr %28, metadata !1373, metadata !DIExpression()), !dbg !1484
  %arrayidx = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !1488
  %29 = load ptr, ptr %arrayidx, align 8, !dbg !1488
  call void @llvm.dbg.value(metadata ptr %29, metadata !1375, metadata !DIExpression()), !dbg !1484
  %sv_u = getelementptr inbounds %struct.av, ptr %29, i64 0, i32 3, !dbg !1489
  %30 = load ptr, ptr %sv_u, align 8, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %30, metadata !1377, metadata !DIExpression()), !dbg !1484
  %31 = load i64, ptr %27, align 8, !dbg !1490
  %conv = trunc i64 %31 to i32, !dbg !1490
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1360, metadata !DIExpression()), !dbg !1479
  %cmp109320 = icmp sgt i32 %conv, 0, !dbg !1491
  br i1 %cmp109320, label %for.body.lr.ph, label %if.end163, !dbg !1492

for.body.lr.ph:                                   ; preds = %if.then105
  %sv_refcnt123 = getelementptr inbounds %struct.av, ptr %29, i64 0, i32 1
  %tobool143.not = icmp eq ptr %24, null
  %sv_refcnt145 = getelementptr inbounds %struct.cv, ptr %24, i64 0, i32 1
  %sv_refcnt155 = getelementptr inbounds %struct.sv, ptr %24, i64 0, i32 1
  %32 = and i64 %31, 4294967295, !dbg !1492
  br i1 %tobool143.not, label %for.body.us, label %for.body, !dbg !1493

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end161.us
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %if.end161.us ], [ %32, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv326, metadata !1360, metadata !DIExpression()), !dbg !1479
  %arrayidx111.us = getelementptr inbounds ptr, ptr %28, i64 %indvars.iv326, !dbg !1497
  %33 = load ptr, ptr %arrayidx111.us, align 8, !dbg !1497
  call void @llvm.dbg.value(metadata ptr %33, metadata !1378, metadata !DIExpression()), !dbg !1498
  %tobool112.not.us = icmp eq ptr %33, null, !dbg !1499
  br i1 %tobool112.not.us, label %if.end161.us, label %land.lhs.true113.us, !dbg !1500

land.lhs.true113.us:                              ; preds = %for.body.us
  %34 = load ptr, ptr %33, align 8, !dbg !1501
  %tobool114.not.us = icmp eq ptr %34, null, !dbg !1501
  br i1 %tobool114.not.us, label %if.end161.us, label %land.lhs.true115.us, !dbg !1502

land.lhs.true115.us:                              ; preds = %land.lhs.true113.us
  %35 = load i8, ptr %34, align 1, !dbg !1503
  %cmp118.us = icmp eq i8 %35, 38, !dbg !1504
  br i1 %cmp118.us, label %if.then120.us, label %if.end161.us, !dbg !1505

if.then120.us:                                    ; preds = %land.lhs.true115.us
  %arrayidx122.us = getelementptr inbounds ptr, ptr %30, i64 %indvars.iv326, !dbg !1506
  %36 = load ptr, ptr %arrayidx122.us, align 8, !dbg !1506
  call void @llvm.dbg.value(metadata ptr %36, metadata !1383, metadata !DIExpression()), !dbg !1507
  %sv_refcnt.us = getelementptr inbounds %struct.cv, ptr %36, i64 0, i32 1, !dbg !1508
  %37 = load i32, ptr %sv_refcnt.us, align 8, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %37, metadata !1386, metadata !DIExpression()), !dbg !1507
  %38 = load i32, ptr %sv_refcnt123, align 8, !dbg !1509
  %cmp124.us = icmp ult i32 %38, 2, !dbg !1511
  br i1 %cmp124.us, label %if.then126.us, label %if.end130.us, !dbg !1512

if.then126.us:                                    ; preds = %if.then120.us
  store ptr null, ptr %arrayidx122.us, align 8, !dbg !1513
  call void @llvm.dbg.value(metadata ptr %36, metadata !1515, metadata !DIExpression()) #11, !dbg !1522
  %sv_refcnt.i.us = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 1, !dbg !1524
  %39 = load i32, ptr %sv_refcnt.i.us, align 8, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %39, metadata !1521, metadata !DIExpression()) #11, !dbg !1522
  %cmp.i.us = icmp ugt i32 %39, 1, !dbg !1525
  br i1 %cmp.i.us, label %if.then.i.us, label %if.else.i.us, !dbg !1527

if.else.i.us:                                     ; preds = %if.then126.us
  tail call void @Perl_sv_free2(ptr noundef nonnull %36, i32 noundef %39) #11, !dbg !1528
  br label %S_SvREFCNT_dec_NN.exit.us

if.then.i.us:                                     ; preds = %if.then126.us
  %sub.i.us = add i32 %39, -1, !dbg !1529
  store i32 %sub.i.us, ptr %sv_refcnt.i.us, align 8, !dbg !1530
  br label %S_SvREFCNT_dec_NN.exit.us, !dbg !1531

S_SvREFCNT_dec_NN.exit.us:                        ; preds = %if.then.i.us, %if.else.i.us
  %dec129.us = add i32 %37, -1, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %dec129.us, metadata !1386, metadata !DIExpression()), !dbg !1507
  br label %if.end130.us, !dbg !1533

if.end130.us:                                     ; preds = %S_SvREFCNT_dec_NN.exit.us, %if.then120.us
  %inner_rc.0.us = phi i32 [ %dec129.us, %S_SvREFCNT_dec_NN.exit.us ], [ %37, %if.then120.us ], !dbg !1507
  call void @llvm.dbg.value(metadata i32 %inner_rc.0.us, metadata !1386, metadata !DIExpression()), !dbg !1507
  %tobool131.not.us = icmp eq i32 %inner_rc.0.us, 0, !dbg !1534
  br i1 %tobool131.not.us, label %if.end161.us, label %land.lhs.true132.us, !dbg !1535

land.lhs.true132.us:                              ; preds = %if.end130.us
  %sv_flags133.us = getelementptr inbounds %struct.cv, ptr %36, i64 0, i32 2, !dbg !1536
  %40 = load i32, ptr %sv_flags133.us, align 4, !dbg !1536
  %and134.us = and i32 %40, 255, !dbg !1536
  %cmp135.us = icmp eq i32 %and134.us, 13, !dbg !1537
  br i1 %cmp135.us, label %land.lhs.true137.us, label %if.end161.us, !dbg !1538

land.lhs.true137.us:                              ; preds = %land.lhs.true132.us
  %41 = load ptr, ptr %36, align 8, !dbg !1539
  %xcv_outside139.us = getelementptr inbounds %struct.xpvcv, ptr %41, i64 0, i32 10, !dbg !1539
  %42 = load ptr, ptr %xcv_outside139.us, align 8, !dbg !1539
  %cmp140.us = icmp eq ptr %42, %cv, !dbg !1540
  br i1 %cmp140.us, label %if.then142.us, label %if.end161.us, !dbg !1541

if.then142.us:                                    ; preds = %land.lhs.true137.us
  store ptr null, ptr %xcv_outside139.us, align 8, !dbg !1542
  br label %if.end161.us

if.end161.us:                                     ; preds = %if.then142.us, %land.lhs.true137.us, %land.lhs.true132.us, %if.end130.us, %land.lhs.true115.us, %land.lhs.true113.us, %for.body.us
  %indvars.iv.next327 = add nsw i64 %indvars.iv326, -1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next327, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1479
  %cmp109.us = icmp sgt i64 %indvars.iv326, 1, !dbg !1491
  br i1 %cmp109.us, label %for.body.us, label %if.end163, !dbg !1492, !llvm.loop !1545

for.body:                                         ; preds = %for.body.lr.ph, %if.end161
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end161 ], [ %32, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1360, metadata !DIExpression()), !dbg !1479
  %arrayidx111 = getelementptr inbounds ptr, ptr %28, i64 %indvars.iv, !dbg !1497
  %43 = load ptr, ptr %arrayidx111, align 8, !dbg !1497
  call void @llvm.dbg.value(metadata ptr %43, metadata !1378, metadata !DIExpression()), !dbg !1498
  %tobool112.not = icmp eq ptr %43, null, !dbg !1499
  br i1 %tobool112.not, label %if.end161, label %land.lhs.true113, !dbg !1500

land.lhs.true113:                                 ; preds = %for.body
  %44 = load ptr, ptr %43, align 8, !dbg !1501
  %tobool114.not = icmp eq ptr %44, null, !dbg !1501
  br i1 %tobool114.not, label %if.end161, label %land.lhs.true115, !dbg !1502

land.lhs.true115:                                 ; preds = %land.lhs.true113
  %45 = load i8, ptr %44, align 1, !dbg !1503
  %cmp118 = icmp eq i8 %45, 38, !dbg !1504
  br i1 %cmp118, label %if.then120, label %if.end161, !dbg !1505

if.then120:                                       ; preds = %land.lhs.true115
  %arrayidx122 = getelementptr inbounds ptr, ptr %30, i64 %indvars.iv, !dbg !1506
  %46 = load ptr, ptr %arrayidx122, align 8, !dbg !1506
  call void @llvm.dbg.value(metadata ptr %46, metadata !1383, metadata !DIExpression()), !dbg !1507
  %sv_refcnt = getelementptr inbounds %struct.cv, ptr %46, i64 0, i32 1, !dbg !1508
  %47 = load i32, ptr %sv_refcnt, align 8, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %47, metadata !1386, metadata !DIExpression()), !dbg !1507
  %48 = load i32, ptr %sv_refcnt123, align 8, !dbg !1509
  %cmp124 = icmp ult i32 %48, 2, !dbg !1511
  br i1 %cmp124, label %if.then126, label %if.end130, !dbg !1512

if.then126:                                       ; preds = %if.then120
  store ptr null, ptr %arrayidx122, align 8, !dbg !1513
  call void @llvm.dbg.value(metadata ptr %46, metadata !1515, metadata !DIExpression()) #11, !dbg !1522
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 1, !dbg !1524
  %49 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %49, metadata !1521, metadata !DIExpression()) #11, !dbg !1522
  %cmp.i = icmp ugt i32 %49, 1, !dbg !1525
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !1527

if.then.i:                                        ; preds = %if.then126
  %sub.i = add i32 %49, -1, !dbg !1529
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !1530
  br label %S_SvREFCNT_dec_NN.exit, !dbg !1531

if.else.i:                                        ; preds = %if.then126
  tail call void @Perl_sv_free2(ptr noundef nonnull %46, i32 noundef %49) #11, !dbg !1528
  br label %S_SvREFCNT_dec_NN.exit

S_SvREFCNT_dec_NN.exit:                           ; preds = %if.then.i, %if.else.i
  %dec129 = add i32 %47, -1, !dbg !1532
  call void @llvm.dbg.value(metadata i32 %dec129, metadata !1386, metadata !DIExpression()), !dbg !1507
  br label %if.end130, !dbg !1533

if.end130:                                        ; preds = %S_SvREFCNT_dec_NN.exit, %if.then120
  %inner_rc.0 = phi i32 [ %dec129, %S_SvREFCNT_dec_NN.exit ], [ %47, %if.then120 ], !dbg !1507
  call void @llvm.dbg.value(metadata i32 %inner_rc.0, metadata !1386, metadata !DIExpression()), !dbg !1507
  %tobool131.not = icmp eq i32 %inner_rc.0, 0, !dbg !1534
  br i1 %tobool131.not, label %if.end161, label %land.lhs.true132, !dbg !1535

land.lhs.true132:                                 ; preds = %if.end130
  %sv_flags133 = getelementptr inbounds %struct.cv, ptr %46, i64 0, i32 2, !dbg !1536
  %50 = load i32, ptr %sv_flags133, align 4, !dbg !1536
  %and134 = and i32 %50, 255, !dbg !1536
  %cmp135 = icmp eq i32 %and134, 13, !dbg !1537
  br i1 %cmp135, label %land.lhs.true137, label %if.end161, !dbg !1538

land.lhs.true137:                                 ; preds = %land.lhs.true132
  %51 = load ptr, ptr %46, align 8, !dbg !1539
  %xcv_outside139 = getelementptr inbounds %struct.xpvcv, ptr %51, i64 0, i32 10, !dbg !1539
  %52 = load ptr, ptr %xcv_outside139, align 8, !dbg !1539
  %cmp140 = icmp eq ptr %52, %cv, !dbg !1540
  br i1 %cmp140, label %if.then142, label %if.end161, !dbg !1541

if.then142:                                       ; preds = %land.lhs.true137
  %53 = load i32, ptr %sv_refcnt145, align 8, !dbg !1549
  %tobool146.not = icmp eq i32 %53, 0, !dbg !1549
  br i1 %tobool146.not, label %if.else156, label %if.then147, !dbg !1550

if.then147:                                       ; preds = %if.then142
  %xcv_flags149 = getelementptr inbounds %struct.xpvcv, ptr %51, i64 0, i32 12, !dbg !1551
  %54 = load i32, ptr %xcv_flags149, align 4, !dbg !1551
  %and150 = and i32 %54, -17, !dbg !1551
  store i32 %and150, ptr %xcv_flags149, align 4, !dbg !1551
  %55 = load ptr, ptr %46, align 8, !dbg !1553
  %xcv_outside152 = getelementptr inbounds %struct.xpvcv, ptr %55, i64 0, i32 10, !dbg !1553
  store ptr %24, ptr %xcv_outside152, align 8, !dbg !1554
  %56 = load ptr, ptr %46, align 8, !dbg !1555
  %xcv_outside_seq154 = getelementptr inbounds %struct.xpvcv, ptr %56, i64 0, i32 11, !dbg !1555
  store i32 %25, ptr %xcv_outside_seq154, align 8, !dbg !1556
  %57 = load i32, ptr %sv_refcnt155, align 8, !dbg !1557
  %inc = add i32 %57, 1, !dbg !1557
  store i32 %inc, ptr %sv_refcnt155, align 8, !dbg !1557
  br label %if.end161, !dbg !1558

if.else156:                                       ; preds = %if.then142
  store ptr null, ptr %xcv_outside139, align 8, !dbg !1542
  br label %if.end161

if.end161:                                        ; preds = %if.end130, %land.lhs.true132, %land.lhs.true137, %if.else156, %if.then147, %land.lhs.true115, %land.lhs.true113, %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1479
  %cmp109 = icmp sgt i64 %indvars.iv, 1, !dbg !1491
  br i1 %cmp109, label %for.body, label %if.end163, !dbg !1492, !llvm.loop !1545

if.end163:                                        ; preds = %if.end161, %if.end161.us, %if.then105, %if.then101
  %58 = load i64, ptr %22, align 8, !dbg !1559
  %conv164 = trunc i64 %58 to i32, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %conv164, metadata !1360, metadata !DIExpression()), !dbg !1479
  %cmp165322 = icmp sgt i32 %conv164, 0, !dbg !1560
  br i1 %cmp165322, label %while.body.lr.ph, label %while.end, !dbg !1561

while.body.lr.ph:                                 ; preds = %if.end163
  %xpadl_alloc167 = getelementptr inbounds %struct.padlist, ptr %22, i64 0, i32 1
  %59 = and i64 %58, 4294967295, !dbg !1561
  br label %while.body, !dbg !1561

while.body:                                       ; preds = %while.body.lr.ph, %if.end177
  %indvars.iv329 = phi i64 [ %59, %while.body.lr.ph ], [ %indvars.iv.next330, %if.end177 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv329, metadata !1360, metadata !DIExpression()), !dbg !1479
  %60 = load ptr, ptr %xpadl_alloc167, align 8, !dbg !1562
  %indvars.iv.next330 = add nsw i64 %indvars.iv329, -1, !dbg !1563
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next330, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1479
  %arrayidx170 = getelementptr inbounds ptr, ptr %60, i64 %indvars.iv329, !dbg !1562
  %61 = load ptr, ptr %arrayidx170, align 8, !dbg !1562
  call void @llvm.dbg.value(metadata ptr %61, metadata !1387, metadata !DIExpression()), !dbg !1564
  %tobool171.not = icmp eq ptr %61, null, !dbg !1565
  br i1 %tobool171.not, label %if.end177, label %if.then172, !dbg !1567

if.then172:                                       ; preds = %while.body
  %62 = load ptr, ptr @PL_comppad, align 8, !dbg !1568
  %cmp173 = icmp eq ptr %61, %62, !dbg !1571
  br i1 %cmp173, label %if.then175, label %if.end176, !dbg !1572

if.then175:                                       ; preds = %if.then172
  store ptr null, ptr @PL_comppad, align 8, !dbg !1573
  store ptr null, ptr @PL_curpad, align 8, !dbg !1575
  br label %if.end176, !dbg !1576

if.end176:                                        ; preds = %if.then175, %if.then172
  call void @llvm.dbg.value(metadata ptr %61, metadata !1515, metadata !DIExpression()) #11, !dbg !1577
  %sv_refcnt.i280 = getelementptr inbounds %struct.sv, ptr %61, i64 0, i32 1, !dbg !1579
  %63 = load i32, ptr %sv_refcnt.i280, align 8, !dbg !1579
  call void @llvm.dbg.value(metadata i32 %63, metadata !1521, metadata !DIExpression()) #11, !dbg !1577
  %cmp.i281 = icmp ugt i32 %63, 1, !dbg !1580
  br i1 %cmp.i281, label %if.then.i283, label %if.else.i284, !dbg !1581

if.then.i283:                                     ; preds = %if.end176
  %sub.i282 = add i32 %63, -1, !dbg !1582
  store i32 %sub.i282, ptr %sv_refcnt.i280, align 8, !dbg !1583
  br label %if.end177, !dbg !1584

if.else.i284:                                     ; preds = %if.end176
  tail call void @Perl_sv_free2(ptr noundef nonnull %61, i32 noundef %63) #11, !dbg !1585
  br label %if.end177

if.end177:                                        ; preds = %if.else.i284, %if.then.i283, %while.body
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next330, metadata !1360, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1479
  %cmp165 = icmp ugt i64 %indvars.iv329, 1, !dbg !1560
  br i1 %cmp165, label %while.body, label %while.end, !dbg !1561, !llvm.loop !1586

while.end:                                        ; preds = %if.end177, %if.end163
  %xpadl_alloc178 = getelementptr inbounds %struct.padlist, ptr %22, i64 0, i32 1, !dbg !1588
  %64 = load ptr, ptr %xpadl_alloc178, align 8, !dbg !1588
  %65 = load ptr, ptr %64, align 8, !dbg !1588
  call void @llvm.dbg.value(metadata ptr %65, metadata !1389, metadata !DIExpression()), !dbg !1589
  %66 = load ptr, ptr @PL_comppad_name, align 8, !dbg !1590
  %cmp179 = icmp eq ptr %65, %66, !dbg !1592
  %xpadnl_refcnt = getelementptr inbounds %struct.padnamelist, ptr %65, i64 0, i32 4
  %67 = load i32, ptr %xpadnl_refcnt, align 8, !dbg !1589
  %cmp182 = icmp eq i32 %67, 1
  %or.cond = select i1 %cmp179, i1 %cmp182, i1 false, !dbg !1593
  br i1 %or.cond, label %if.end185.thread, label %if.end185, !dbg !1593

if.end185.thread:                                 ; preds = %while.end
  store ptr null, ptr @PL_comppad_name, align 8, !dbg !1594
  call void @llvm.dbg.value(metadata ptr %65, metadata !1595, metadata !DIExpression()) #11, !dbg !1604
  %xpadnl_refcnt.i333 = getelementptr inbounds %struct.padnamelist, ptr %65, i64 0, i32 4, !dbg !1606
  store i32 0, ptr %xpadnl_refcnt.i333, align 8, !dbg !1607
  br label %while.cond.preheader.i, !dbg !1608

if.end185:                                        ; preds = %while.end
  call void @llvm.dbg.value(metadata ptr %65, metadata !1595, metadata !DIExpression()) #11, !dbg !1604
  %xpadnl_refcnt.i = getelementptr inbounds %struct.padnamelist, ptr %65, i64 0, i32 4, !dbg !1606
  %dec.i = add i32 %67, -1, !dbg !1607
  store i32 %dec.i, ptr %xpadnl_refcnt.i, align 8, !dbg !1607
  %tobool.not.i286 = icmp eq i32 %dec.i, 0, !dbg !1607
  br i1 %tobool.not.i286, label %while.cond.preheader.i, label %Perl_padnamelist_free.exit, !dbg !1608

while.cond.preheader.i:                           ; preds = %if.end185.thread, %if.end185
  %68 = load i64, ptr %65, align 8, !dbg !1609
  %cmp14.i = icmp sgt i64 %68, -1, !dbg !1610
  br i1 %cmp14.i, label %while.body.lr.ph.i, label %while.end.i, !dbg !1611

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %xpadnl_alloc.i = getelementptr inbounds %struct.padnamelist, ptr %65, i64 0, i32 1
  br label %while.body.i, !dbg !1611

while.body.i:                                     ; preds = %if.end.i, %while.body.lr.ph.i
  %69 = phi i64 [ %68, %while.body.lr.ph.i ], [ %72, %if.end.i ]
  %70 = load ptr, ptr %xpadnl_alloc.i, align 8, !dbg !1612
  %dec2.i = add nsw i64 %69, -1, !dbg !1613
  store i64 %dec2.i, ptr %65, align 8, !dbg !1613
  %arrayidx.i = getelementptr inbounds ptr, ptr %70, i64 %69, !dbg !1612
  %71 = load ptr, ptr %arrayidx.i, align 8, !dbg !1612
  call void @llvm.dbg.value(metadata ptr %71, metadata !1600, metadata !DIExpression()) #11, !dbg !1614
  %tobool3.not.i = icmp eq ptr %71, null, !dbg !1615
  br i1 %tobool3.not.i, label %if.end.i, label %if.then4.i, !dbg !1617

if.then4.i:                                       ; preds = %while.body.i
  tail call void @Perl_padname_free(ptr noundef nonnull %71) #11, !dbg !1618
  %.pre.i = load i64, ptr %65, align 8, !dbg !1609
  br label %if.end.i, !dbg !1618

if.end.i:                                         ; preds = %if.then4.i, %while.body.i
  %72 = phi i64 [ %.pre.i, %if.then4.i ], [ %dec2.i, %while.body.i ], !dbg !1609
  %cmp.i287 = icmp sgt i64 %72, -1, !dbg !1610
  br i1 %cmp.i287, label %while.body.i, label %while.end.i, !dbg !1611, !llvm.loop !1619

while.end.i:                                      ; preds = %if.end.i, %while.cond.preheader.i
  %xpadnl_alloc5.i = getelementptr inbounds %struct.padnamelist, ptr %65, i64 0, i32 1, !dbg !1621
  %73 = load ptr, ptr %xpadnl_alloc5.i, align 8, !dbg !1621
  tail call void @Perl_safesysfree(ptr noundef %73) #11, !dbg !1621
  tail call void @Perl_safesysfree(ptr noundef nonnull %65) #11, !dbg !1622
  br label %Perl_padnamelist_free.exit, !dbg !1623

Perl_padnamelist_free.exit:                       ; preds = %if.end185, %while.end.i
  %74 = load ptr, ptr %xpadl_alloc178, align 8, !dbg !1624
  %tobool187.not = icmp eq ptr %74, null, !dbg !1624
  br i1 %tobool187.not, label %if.end190, label %if.then188, !dbg !1626

if.then188:                                       ; preds = %Perl_padnamelist_free.exit
  tail call void @Perl_safesysfree(ptr noundef nonnull %74) #11, !dbg !1627
  br label %if.end190, !dbg !1627

if.end190:                                        ; preds = %if.then188, %Perl_padnamelist_free.exit
  tail call void @Perl_safesysfree(ptr noundef nonnull %22) #11, !dbg !1628
  br label %if.end202.sink.split, !dbg !1629

if.end202.sink.split:                             ; preds = %if.end94, %if.end190
  store ptr null, ptr %xcv_padlist_u, align 8, !dbg !1475
  br label %if.end202, !dbg !1630

if.end202:                                        ; preds = %if.end202.sink.split, %land.lhs.true
  %sv_refcnt203 = getelementptr inbounds %struct.cv, ptr %cv, i64 0, i32 1, !dbg !1630
  %75 = load i32, ptr %sv_refcnt203, align 8, !dbg !1630
  %tobool204.not = icmp eq i32 %75, 0, !dbg !1630
  br i1 %tobool204.not, label %if.then205, label %if.end219, !dbg !1631

if.then205:                                       ; preds = %if.end202
  %xcv_outside207 = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 10, !dbg !1632
  %76 = load ptr, ptr %xcv_outside207, align 8, !dbg !1632
  call void @llvm.dbg.value(metadata ptr %76, metadata !1391, metadata !DIExpression()), !dbg !1633
  %tobool208.not = icmp eq ptr %76, null, !dbg !1634
  br i1 %tobool208.not, label %if.end219, label %if.then209, !dbg !1636

if.then209:                                       ; preds = %if.then205
  store ptr null, ptr %xcv_outside207, align 8, !dbg !1637
  %77 = load i32, ptr %xcv_flags12, align 4, !dbg !1639
  %and214 = and i32 %77, 16, !dbg !1639
  %tobool215.not = icmp eq i32 %and214, 0, !dbg !1639
  br i1 %tobool215.not, label %if.then216, label %if.end219, !dbg !1641

if.then216:                                       ; preds = %if.then209
  call void @llvm.dbg.value(metadata ptr %76, metadata !1515, metadata !DIExpression()) #11, !dbg !1642
  %sv_refcnt.i288 = getelementptr inbounds %struct.sv, ptr %76, i64 0, i32 1, !dbg !1644
  %78 = load i32, ptr %sv_refcnt.i288, align 8, !dbg !1644
  call void @llvm.dbg.value(metadata i32 %78, metadata !1521, metadata !DIExpression()) #11, !dbg !1642
  %cmp.i289 = icmp ugt i32 %78, 1, !dbg !1645
  br i1 %cmp.i289, label %if.then.i291, label %if.else.i292, !dbg !1646

if.then.i291:                                     ; preds = %if.then216
  %sub.i290 = add i32 %78, -1, !dbg !1647
  store i32 %sub.i290, ptr %sv_refcnt.i288, align 8, !dbg !1648
  br label %if.end219, !dbg !1649

if.else.i292:                                     ; preds = %if.then216
  tail call void @Perl_sv_free2(ptr noundef nonnull %76, i32 noundef %78) #11, !dbg !1650
  br label %if.end219

if.end219:                                        ; preds = %if.else.i292, %if.then.i291, %if.then205, %if.then209, %if.end202
  %79 = load i32, ptr %xcv_flags12, align 4, !dbg !1651
  %and222 = and i32 %79, 4, !dbg !1651
  %tobool223.not = icmp eq i32 %and222, 0, !dbg !1651
  br i1 %tobool223.not, label %if.end227, label %if.then224, !dbg !1653

if.then224:                                       ; preds = %if.end219
  %xcv_start_u226 = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 5, !dbg !1654
  %80 = load ptr, ptr %xcv_start_u226, align 8, !dbg !1654
  call void @llvm.dbg.value(metadata ptr %80, metadata !1656, metadata !DIExpression()) #11, !dbg !1662
  %cmp.not.i = icmp eq ptr %80, null, !dbg !1664
  br i1 %cmp.not.i, label %if.end227, label %if.then.i296, !dbg !1665

if.then.i296:                                     ; preds = %if.then224
  %sv_refcnt.i295 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 1, !dbg !1666
  %81 = load i32, ptr %sv_refcnt.i295, align 8, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %81, metadata !1659, metadata !DIExpression()) #11, !dbg !1667
  %cmp1.i = icmp ugt i32 %81, 1, !dbg !1668
  br i1 %cmp1.i, label %if.then4.i298, label %if.else.i299, !dbg !1670

if.then4.i298:                                    ; preds = %if.then.i296
  %sub.i297 = add i32 %81, -1, !dbg !1671
  store i32 %sub.i297, ptr %sv_refcnt.i295, align 8, !dbg !1672
  br label %if.end227, !dbg !1673

if.else.i299:                                     ; preds = %if.then.i296
  tail call void @Perl_sv_free2(ptr noundef nonnull %80, i32 noundef %81) #11, !dbg !1674
  br label %if.end227

if.end227:                                        ; preds = %if.else.i299, %if.then4.i298, %if.then224, %if.end219
  %82 = load i32, ptr %xcv_flags12, align 4, !dbg !1675
  %and230 = and i32 %82, 99472, !dbg !1675
  store i32 %and230, ptr %xcv_flags12, align 4, !dbg !1675
  ret void, !dbg !1676
}

declare !dbg !1677 void @Perl_safesysfree(ptr noundef) local_unnamed_addr #3

declare !dbg !1678 void @Perl_croak(ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1681 void @Perl_push_scope() local_unnamed_addr #3

declare !dbg !1684 void @Perl_opslab_free(ptr noundef) local_unnamed_addr #3

declare !dbg !1687 void @Perl_op_free(ptr noundef) local_unnamed_addr #3

declare !dbg !1690 void @Perl_pop_scope() local_unnamed_addr #3

declare !dbg !1691 void @Perl_parser_free_nexttoke_ops(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !1847 void @Perl_opslab_force_free(ptr noundef) local_unnamed_addr #3

declare !dbg !1848 i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1851 void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #3

declare !dbg !1854 void @Perl_cvgv_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Perl_padnamelist_free(ptr noundef %pnl) local_unnamed_addr #0 !dbg !1596 {
entry:
  call void @llvm.dbg.value(metadata ptr %pnl, metadata !1595, metadata !DIExpression()), !dbg !1857
  %xpadnl_refcnt = getelementptr inbounds %struct.padnamelist, ptr %pnl, i64 0, i32 4, !dbg !1858
  %0 = load i32, ptr %xpadnl_refcnt, align 8, !dbg !1859
  %dec = add i32 %0, -1, !dbg !1859
  store i32 %dec, ptr %xpadnl_refcnt, align 8, !dbg !1859
  %tobool.not = icmp eq i32 %dec, 0, !dbg !1859
  br i1 %tobool.not, label %while.cond.preheader, label %if.end6, !dbg !1860

while.cond.preheader:                             ; preds = %entry
  %1 = load i64, ptr %pnl, align 8, !dbg !1861
  %cmp14 = icmp sgt i64 %1, -1, !dbg !1862
  br i1 %cmp14, label %while.body.lr.ph, label %while.end, !dbg !1863

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %pnl, i64 0, i32 1
  br label %while.body, !dbg !1863

while.body:                                       ; preds = %while.body.lr.ph, %if.end
  %2 = phi i64 [ %1, %while.body.lr.ph ], [ %5, %if.end ]
  %3 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !1864
  %dec2 = add nsw i64 %2, -1, !dbg !1865
  store i64 %dec2, ptr %pnl, align 8, !dbg !1865
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %2, !dbg !1864
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %4, metadata !1600, metadata !DIExpression()), !dbg !1866
  %tobool3.not = icmp eq ptr %4, null, !dbg !1867
  br i1 %tobool3.not, label %if.end, label %if.then4, !dbg !1868

if.then4:                                         ; preds = %while.body
  tail call void @Perl_padname_free(ptr noundef nonnull %4), !dbg !1869
  %.pre = load i64, ptr %pnl, align 8, !dbg !1861
  br label %if.end, !dbg !1869

if.end:                                           ; preds = %if.then4, %while.body
  %5 = phi i64 [ %.pre, %if.then4 ], [ %dec2, %while.body ], !dbg !1861
  %cmp = icmp sgt i64 %5, -1, !dbg !1862
  br i1 %cmp, label %while.body, label %while.end, !dbg !1863, !llvm.loop !1870

while.end:                                        ; preds = %if.end, %while.cond.preheader
  %xpadnl_alloc5 = getelementptr inbounds %struct.padnamelist, ptr %pnl, i64 0, i32 1, !dbg !1872
  %6 = load ptr, ptr %xpadnl_alloc5, align 8, !dbg !1872
  tail call void @Perl_safesysfree(ptr noundef %6) #11, !dbg !1872
  tail call void @Perl_safesysfree(ptr noundef nonnull %pnl) #11, !dbg !1873
  br label %if.end6, !dbg !1874

if.end6:                                          ; preds = %while.end, %entry
  ret void, !dbg !1875
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_cv_forget_slab(ptr noundef readonly %cv) local_unnamed_addr #0 !dbg !1876 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !1878, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata ptr null, metadata !1880, metadata !DIExpression()), !dbg !1881
  %tobool.not = icmp eq ptr %cv, null, !dbg !1882
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !1884

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %cv, align 8, !dbg !1885
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 12, !dbg !1885
  %1 = load i32, ptr %xcv_flags, align 4, !dbg !1885
  %and = and i32 %1, 2048, !dbg !1885
  %tobool1.not = icmp eq i32 %and, 0, !dbg !1885
  call void @llvm.dbg.value(metadata i1 %tobool1.not, metadata !1879, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1881
  br i1 %tobool1.not, label %cleanup, label %if.end5, !dbg !1886

if.end5:                                          ; preds = %if.end
  %and8 = and i32 %1, -2049, !dbg !1887
  store i32 %and8, ptr %xcv_flags, align 4, !dbg !1887
  %2 = load ptr, ptr %cv, align 8, !dbg !1888
  %xcv_root_u = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 6, !dbg !1888
  %3 = load ptr, ptr %xcv_root_u, align 8, !dbg !1888
  %tobool10.not = icmp eq ptr %3, null, !dbg !1888
  br i1 %tobool10.not, label %if.else, label %if.then11, !dbg !1890

if.then11:                                        ; preds = %if.end5
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 -16, !dbg !1891
  %opslot_slab = getelementptr inbounds %struct.opslot, ptr %add.ptr, i64 0, i32 1, !dbg !1891
  call void @llvm.dbg.value(metadata ptr undef, metadata !1880, metadata !DIExpression()), !dbg !1881
  br label %if.end20, !dbg !1892

if.else:                                          ; preds = %if.end5
  %xcv_start_u = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 5, !dbg !1893
  br label %if.end20, !dbg !1895

if.end20:                                         ; preds = %if.else, %if.then11
  %slab.0.in = phi ptr [ %opslot_slab, %if.then11 ], [ %xcv_start_u, %if.else ]
  %slab.0 = load ptr, ptr %slab.0.in, align 8, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %slab.0, metadata !1880, metadata !DIExpression()), !dbg !1881
  %tobool21.not = icmp eq ptr %slab.0, null, !dbg !1896
  br i1 %tobool21.not, label %cleanup, label %if.then22, !dbg !1898

if.then22:                                        ; preds = %if.end20
  %opslab_refcnt = getelementptr inbounds %struct.opslab, ptr %slab.0, i64 0, i32 3, !dbg !1899
  %4 = load i64, ptr %opslab_refcnt, align 8, !dbg !1899
  %cmp = icmp eq i64 %4, 1, !dbg !1899
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1899

cond.true:                                        ; preds = %if.then22
  tail call void @Perl_opslab_free_nopad(ptr noundef nonnull %slab.0) #11, !dbg !1899
  br label %cleanup, !dbg !1899

cond.false:                                       ; preds = %if.then22
  %dec = add i64 %4, -1, !dbg !1899
  store i64 %dec, ptr %opslab_refcnt, align 8, !dbg !1899
  br label %cleanup, !dbg !1899

cleanup:                                          ; preds = %if.end20, %cond.false, %cond.true, %if.end, %entry
  ret void, !dbg !1901
}

declare !dbg !1902 void @Perl_opslab_free_nopad(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_add_name_pvn(ptr nocapture noundef readonly %namepv, i64 noundef %namelen, i32 noundef %flags, ptr noundef %typestash, ptr noundef %ourstash) local_unnamed_addr #0 !dbg !1903 {
entry:
  call void @llvm.dbg.value(metadata ptr %namepv, metadata !1907, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i64 %namelen, metadata !1908, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata i32 %flags, metadata !1909, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata ptr %typestash, metadata !1910, metadata !DIExpression()), !dbg !1914
  call void @llvm.dbg.value(metadata ptr %ourstash, metadata !1911, metadata !DIExpression()), !dbg !1914
  %tobool.not = icmp ult i32 %flags, 8, !dbg !1915
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !1917

if.then:                                          ; preds = %entry
  %conv = zext i32 %flags to i64, !dbg !1918
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i64 noundef %conv) #11, !dbg !1919
  br label %if.end, !dbg !1919

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.value(metadata ptr %namepv, metadata !1920, metadata !DIExpression()) #11, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %namelen, metadata !1925, metadata !DIExpression()) #11, !dbg !1929
  %add1.i = add i64 %namelen, 43, !dbg !1931
  %call.i = tail call ptr @Perl_safesyscalloc(i64 noundef %add1.i, i64 noundef 1) #11, !dbg !1931
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1927, metadata !DIExpression()) #11, !dbg !1929
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1926, metadata !DIExpression()) #11, !dbg !1929
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1928, metadata !DIExpression()) #11, !dbg !1929
  %xpadn_refcnt.i = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 5, !dbg !1932
  store i32 1, ptr %xpadn_refcnt.i, align 8, !dbg !1933
  %xpadn_str.i = getelementptr inbounds %struct.padname_with_str, ptr %call.i, i64 0, i32 9, !dbg !1934
  store ptr %xpadn_str.i, ptr %call.i, align 8, !dbg !1935
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %xpadn_str.i, ptr align 1 %namepv, i64 %namelen, i1 false) #11, !dbg !1936
  %add.ptr.i = getelementptr inbounds i8, ptr %xpadn_str.i, i64 %namelen, !dbg !1937
  store i8 0, ptr %add.ptr.i, align 1, !dbg !1938
  %conv.i = trunc i64 %namelen to i8, !dbg !1939
  %xpadn_len.i = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 7, !dbg !1940
  store i8 %conv.i, ptr %xpadn_len.i, align 8, !dbg !1941
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1913, metadata !DIExpression()), !dbg !1914
  %and1 = and i32 %flags, 4, !dbg !1942
  %cmp = icmp eq i32 %and1, 0, !dbg !1944
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !1945

if.then3:                                         ; preds = %if.end
  tail call void @Perl_push_scope() #11, !dbg !1946
  tail call void @Perl_save_pushptr(ptr noundef nonnull %call.i, i32 noundef 22) #11, !dbg !1948
  %and4 = and i32 %flags, 1, !dbg !1949
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1950, metadata !DIExpression()) #11, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %and4, metadata !1957, metadata !DIExpression()) #11, !dbg !1971
  call void @llvm.dbg.value(metadata ptr %ourstash, metadata !1958, metadata !DIExpression()) #11, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %and4, metadata !1962, metadata !DIExpression()) #11, !dbg !1971
  %0 = load ptr, ptr @PL_comppad_name, align 8, !dbg !1973
  %1 = load i64, ptr %0, align 8, !dbg !1973
  %cmp.i = icmp slt i64 %1, 0, !dbg !1975
  br i1 %cmp.i, label %S_pad_check_dup.exit, label %lor.lhs.false.i, !dbg !1976

lor.lhs.false.i:                                  ; preds = %if.then3
  %call.i63 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 12) #11, !dbg !1977
  br i1 %call.i63, label %if.end.i, label %S_pad_check_dup.exit, !dbg !1978

if.end.i:                                         ; preds = %lor.lhs.false.i
  %2 = load ptr, ptr @PL_comppad_name, align 8, !dbg !1979
  %xpadnl_alloc.i = getelementptr inbounds %struct.padnamelist, ptr %2, i64 0, i32 1, !dbg !1979
  %3 = load ptr, ptr %xpadnl_alloc.i, align 8, !dbg !1979
  call void @llvm.dbg.value(metadata ptr %3, metadata !1959, metadata !DIExpression()) #11, !dbg !1971
  %4 = load i64, ptr %2, align 8, !dbg !1980
  call void @llvm.dbg.value(metadata i64 %4, metadata !1960, metadata !DIExpression()) #11, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %4, metadata !1961, metadata !DIExpression()) #11, !dbg !1971
  %5 = load i32, ptr @PL_comppad_name_floor, align 4
  call void @llvm.dbg.value(metadata i64 %4, metadata !1961, metadata !DIExpression()) #11, !dbg !1971
  %conv164.i = trunc i64 %4 to i32, !dbg !1981
  %cmp2165.i = icmp slt i32 %5, %conv164.i, !dbg !1982
  br i1 %cmp2165.i, label %for.body.i, label %for.end.i, !dbg !1983

for.body.i:                                       ; preds = %if.end.i, %for.inc.i
  %off.0166.i = phi i64 [ %dec49.i, %for.inc.i ], [ %4, %if.end.i ]
  call void @llvm.dbg.value(metadata i64 %off.0166.i, metadata !1961, metadata !DIExpression()) #11, !dbg !1971
  %arrayidx.i = getelementptr inbounds ptr, ptr %3, i64 %off.0166.i, !dbg !1984
  %6 = load ptr, ptr %arrayidx.i, align 8, !dbg !1984
  call void @llvm.dbg.value(metadata ptr %6, metadata !1963, metadata !DIExpression()) #11, !dbg !1985
  %tobool.not.i = icmp eq ptr %6, null, !dbg !1986
  br i1 %tobool.not.i, label %for.inc.i, label %land.lhs.true.i, !dbg !1988

land.lhs.true.i:                                  ; preds = %for.body.i
  %xpadn_len.i64 = getelementptr inbounds %struct.padname, ptr %6, i64 0, i32 7, !dbg !1989
  %7 = load i8, ptr %xpadn_len.i64, align 8, !dbg !1989
  %8 = load i8, ptr %xpadn_len.i, align 8, !dbg !1990
  %cmp7.i = icmp eq i8 %7, %8, !dbg !1991
  br i1 %cmp7.i, label %land.lhs.true9.i, label %for.inc.i, !dbg !1992

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %xpadn_flags.i = getelementptr inbounds %struct.padname, ptr %6, i64 0, i32 8, !dbg !1993
  %9 = load i8, ptr %xpadn_flags.i, align 1, !dbg !1993
  %10 = and i8 %9, 1, !dbg !1993
  %tobool12.not.i = icmp eq i8 %10, 0, !dbg !1993
  br i1 %tobool12.not.i, label %land.lhs.true13.i, label %for.inc.i, !dbg !1994

land.lhs.true13.i:                                ; preds = %land.lhs.true9.i
  %xpadn_low.i = getelementptr inbounds %struct.padname, ptr %6, i64 0, i32 3, !dbg !1995
  %11 = load i32, ptr %xpadn_low.i, align 8, !dbg !1995
  %cmp14.i = icmp eq i32 %11, -1, !dbg !1996
  br i1 %cmp14.i, label %land.lhs.true19.i, label %lor.lhs.false16.i, !dbg !1997

lor.lhs.false16.i:                                ; preds = %land.lhs.true13.i
  %xpadn_high.i = getelementptr inbounds %struct.padname, ptr %6, i64 0, i32 4, !dbg !1998
  %12 = load i32, ptr %xpadn_high.i, align 4, !dbg !1998
  %cmp17.i = icmp eq i32 %12, -1, !dbg !1999
  br i1 %cmp17.i, label %land.lhs.true19.i, label %for.inc.i, !dbg !2000

land.lhs.true19.i:                                ; preds = %lor.lhs.false16.i, %land.lhs.true13.i
  %13 = load ptr, ptr %6, align 8, !dbg !2001
  %14 = load ptr, ptr %call.i, align 8, !dbg !2001
  %conv22.i = zext i8 %7 to i64, !dbg !2001
  %bcmp145.i = tail call i32 @bcmp(ptr %13, ptr %14, i64 %conv22.i) #11, !dbg !2001
  %tobool24.not.i = icmp eq i32 %bcmp145.i, 0, !dbg !2001
  br i1 %tobool24.not.i, label %if.then25.i, label %for.inc.i, !dbg !2002

if.then25.i:                                      ; preds = %land.lhs.true19.i
  %conv22.i.le = zext i8 %7 to i64, !dbg !2001
  %tobool26.not.i = icmp eq i32 %and4, 0, !dbg !2003
  br i1 %tobool26.not.i, label %cond.false.i, label %land.lhs.true27.i, !dbg !2006

land.lhs.true27.i:                                ; preds = %if.then25.i
  %xpadn_ourstash.i = getelementptr inbounds %struct.padname, ptr %6, i64 0, i32 1, !dbg !2007
  %15 = load ptr, ptr %xpadn_ourstash.i, align 8, !dbg !2007
  %tobool28.not.i = icmp eq ptr %15, null, !dbg !2007
  br i1 %tobool28.not.i, label %cond.end.i, label %for.end.i, !dbg !2008

cond.false.i:                                     ; preds = %if.then25.i
  %16 = load ptr, ptr @PL_parser, align 8, !dbg !2009
  %in_my.i = getelementptr inbounds %struct.yy_parser, ptr %16, i64 0, i32 42, !dbg !2010
  %17 = load i16, ptr %in_my.i, align 4, !dbg !2010
  %cmp33.i = icmp eq i16 %17, 133, !dbg !2011
  %cond.i = select i1 %cmp33.i, ptr @.str.19, ptr @.str.20, !dbg !2009
  br label %cond.end.i, !dbg !2012

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true27.i
  %cond35.i = phi ptr [ %cond.i, %cond.false.i ], [ @.str.18, %land.lhs.true27.i ], !dbg !2012
  %18 = load i8, ptr %13, align 1, !dbg !2013
  %cmp38.i = icmp eq i8 %18, 38, !dbg !2014
  %cond40.i = select i1 %cmp38.i, ptr @.str.21, ptr @.str.22, !dbg !2013
  %xpadn_high44.i = getelementptr inbounds %struct.padname, ptr %6, i64 0, i32 4, !dbg !2015
  %19 = load i32, ptr %xpadn_high44.i, align 4, !dbg !2015
  %cmp45.i = icmp eq i32 %19, -1, !dbg !2016
  %cond47.i = select i1 %cmp45.i, ptr @.str.23, ptr @.str.24, !dbg !2015
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond35.i, ptr noundef nonnull %cond40.i, i32 noundef 1, i64 noundef %conv22.i.le, ptr noundef nonnull %13, ptr noundef nonnull %cond47.i) #11, !dbg !2017
  %dec.i = add i64 %off.0166.i, -1, !dbg !2018
  call void @llvm.dbg.value(metadata i64 %dec.i, metadata !1961, metadata !DIExpression()) #11, !dbg !1971
  br label %for.end.i, !dbg !2019

for.inc.i:                                        ; preds = %land.lhs.true19.i, %lor.lhs.false16.i, %land.lhs.true9.i, %land.lhs.true.i, %for.body.i
  call void @llvm.dbg.value(metadata i64 undef, metadata !1961, metadata !DIExpression()) #11, !dbg !1971
  %dec49.i = add i64 %off.0166.i, -1, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %dec49.i, metadata !1961, metadata !DIExpression()) #11, !dbg !1971
  %conv.i65 = trunc i64 %dec49.i to i32, !dbg !1981
  %cmp2.i = icmp slt i32 %5, %conv.i65, !dbg !1982
  br i1 %cmp2.i, label %for.body.i, label %for.end.i, !dbg !1983, !llvm.loop !2021

for.end.i:                                        ; preds = %for.inc.i, %cond.end.i, %land.lhs.true27.i, %if.end.i
  %off.2.i = phi i64 [ %dec.i, %cond.end.i ], [ %off.0166.i, %land.lhs.true27.i ], [ %4, %if.end.i ], [ %dec49.i, %for.inc.i ], !dbg !2023
  call void @llvm.dbg.value(metadata i64 %off.2.i, metadata !1961, metadata !DIExpression()) #11, !dbg !1971
  %tobool50.i = icmp ne i32 %and4, 0, !dbg !2024
  %cmp52.i = icmp ne i64 %off.2.i, 0
  %or.cond.i = select i1 %tobool50.i, i1 %cmp52.i, i1 false, !dbg !2025
  br i1 %or.cond.i, label %while.body.i, label %S_pad_check_dup.exit, !dbg !2025

while.body.i:                                     ; preds = %for.end.i, %cleanup99.i
  %off.3.i = phi i64 [ %dec98.i, %cleanup99.i ], [ %off.2.i, %for.end.i ], !dbg !1971
  call void @llvm.dbg.value(metadata i64 %off.3.i, metadata !1961, metadata !DIExpression()) #11, !dbg !1971
  %arrayidx55.i = getelementptr inbounds ptr, ptr %3, i64 %off.3.i, !dbg !2026
  %20 = load ptr, ptr %arrayidx55.i, align 8, !dbg !2026
  call void @llvm.dbg.value(metadata ptr %20, metadata !1967, metadata !DIExpression()) #11, !dbg !2027
  %tobool56.not.i = icmp eq ptr %20, null, !dbg !2028
  br i1 %tobool56.not.i, label %cleanup99.i, label %land.lhs.true57.i, !dbg !2030

land.lhs.true57.i:                                ; preds = %while.body.i
  %xpadn_len58.i = getelementptr inbounds %struct.padname, ptr %20, i64 0, i32 7, !dbg !2031
  %21 = load i8, ptr %xpadn_len58.i, align 8, !dbg !2031
  %22 = load i8, ptr %xpadn_len.i, align 8, !dbg !2032
  %cmp62.i = icmp eq i8 %21, %22, !dbg !2033
  br i1 %cmp62.i, label %land.lhs.true64.i, label %cleanup99.i, !dbg !2034

land.lhs.true64.i:                                ; preds = %land.lhs.true57.i
  %xpadn_flags65.i = getelementptr inbounds %struct.padname, ptr %20, i64 0, i32 8, !dbg !2035
  %23 = load i8, ptr %xpadn_flags65.i, align 1, !dbg !2035
  %24 = and i8 %23, 1, !dbg !2035
  %tobool68.not.i = icmp eq i8 %24, 0, !dbg !2035
  br i1 %tobool68.not.i, label %land.lhs.true69.i, label %cleanup99.i, !dbg !2036

land.lhs.true69.i:                                ; preds = %land.lhs.true64.i
  %xpadn_low70.i = getelementptr inbounds %struct.padname, ptr %20, i64 0, i32 3, !dbg !2037
  %25 = load i32, ptr %xpadn_low70.i, align 8, !dbg !2037
  %cmp71.i = icmp eq i32 %25, -1, !dbg !2038
  br i1 %cmp71.i, label %land.lhs.true77.i, label %lor.lhs.false73.i, !dbg !2039

lor.lhs.false73.i:                                ; preds = %land.lhs.true69.i
  %xpadn_high74.i = getelementptr inbounds %struct.padname, ptr %20, i64 0, i32 4, !dbg !2040
  %26 = load i32, ptr %xpadn_high74.i, align 4, !dbg !2040
  %cmp75.i = icmp eq i32 %26, -1, !dbg !2041
  br i1 %cmp75.i, label %land.lhs.true77.i, label %cleanup99.i, !dbg !2042

land.lhs.true77.i:                                ; preds = %lor.lhs.false73.i, %land.lhs.true69.i
  %xpadn_ourstash78.i = getelementptr inbounds %struct.padname, ptr %20, i64 0, i32 1, !dbg !2043
  %27 = load ptr, ptr %xpadn_ourstash78.i, align 8, !dbg !2043
  %cmp79.i = icmp eq ptr %27, %ourstash, !dbg !2044
  br i1 %cmp79.i, label %land.lhs.true81.i, label %cleanup99.i, !dbg !2045

land.lhs.true81.i:                                ; preds = %land.lhs.true77.i
  %28 = load ptr, ptr %20, align 8, !dbg !2046
  %29 = load ptr, ptr %call.i, align 8, !dbg !2046
  %conv85.i = zext i8 %21 to i64, !dbg !2046
  %bcmp.i = tail call i32 @bcmp(ptr %28, ptr %29, i64 %conv85.i) #11, !dbg !2046
  %tobool87.not.i = icmp eq i32 %bcmp.i, 0, !dbg !2046
  br i1 %tobool87.not.i, label %if.then88.i, label %cleanup99.i, !dbg !2047

if.then88.i:                                      ; preds = %land.lhs.true81.i
  %conv85.i.le = zext i8 %21 to i64, !dbg !2046
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.25, i32 noundef 1, i64 noundef %conv85.i.le, ptr noundef %28) #11, !dbg !2048
  %conv92.i = trunc i64 %off.3.i to i32, !dbg !2050
  %30 = load i32, ptr @PL_comppad_name_floor, align 4, !dbg !2052
  %cmp93.not.i = icmp slt i32 %30, %conv92.i, !dbg !2053
  br i1 %cmp93.not.i, label %S_pad_check_dup.exit, label %if.then95.i, !dbg !2054

if.then95.i:                                      ; preds = %if.then88.i
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 12, ptr noundef nonnull @.str.26) #11, !dbg !2055
  br label %S_pad_check_dup.exit, !dbg !2055

cleanup99.i:                                      ; preds = %land.lhs.true81.i, %land.lhs.true77.i, %lor.lhs.false73.i, %land.lhs.true64.i, %land.lhs.true57.i, %while.body.i
  %dec98.i = add i64 %off.3.i, -1, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %dec98.i, metadata !1961, metadata !DIExpression()) #11, !dbg !1971
  %cmp52.old.not.i = icmp eq i64 %dec98.i, 0
  br i1 %cmp52.old.not.i, label %S_pad_check_dup.exit, label %while.body.i

S_pad_check_dup.exit:                             ; preds = %cleanup99.i, %if.then3, %lor.lhs.false.i, %for.end.i, %if.then88.i, %if.then95.i
  %31 = load i32, ptr %xpadn_refcnt.i, align 8, !dbg !2057
  %inc = add i32 %31, 1, !dbg !2057
  store i32 %inc, ptr %xpadn_refcnt.i, align 8, !dbg !2057
  tail call void @Perl_pop_scope() #11, !dbg !2058
  br label %if.end5, !dbg !2059

if.end5:                                          ; preds = %S_pad_check_dup.exit, %if.end
  %call6 = tail call fastcc i64 @S_pad_alloc_name(ptr noundef nonnull %call.i, i32 noundef %flags, ptr noundef %typestash, ptr noundef %ourstash), !dbg !2060
  call void @llvm.dbg.value(metadata i64 %call6, metadata !1912, metadata !DIExpression()), !dbg !1914
  %xpadn_low = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 3, !dbg !2061
  store i32 -1, ptr %xpadn_low, align 8, !dbg !2061
  %xpadn_high = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 4, !dbg !2063
  store i32 0, ptr %xpadn_high, align 4, !dbg !2063
  %32 = load i32, ptr @PL_min_intro_pending, align 4, !dbg !2065
  %tobool10.not = icmp eq i32 %32, 0, !dbg !2065
  %conv12 = trunc i64 %call6 to i32, !dbg !1914
  br i1 %tobool10.not, label %if.then11, label %if.end13, !dbg !2067

if.then11:                                        ; preds = %if.end5
  store i32 %conv12, ptr @PL_min_intro_pending, align 4, !dbg !2068
  br label %if.end13, !dbg !2069

if.end13:                                         ; preds = %if.end5, %if.then11
  store i32 %conv12, ptr @PL_max_intro_pending, align 4, !dbg !2070
  %cmp15.not = icmp eq i64 %namelen, 0, !dbg !2071
  br i1 %cmp15.not, label %if.end40, label %land.lhs.true, !dbg !2073

land.lhs.true:                                    ; preds = %if.end13
  %33 = load i8, ptr %namepv, align 1, !dbg !2074
  switch i8 %33, label %if.end40 [
    i8 64, label %if.end40.sink.split
    i8 37, label %if.then27
    i8 38, label %if.then36
  ], !dbg !2075

if.then27:                                        ; preds = %land.lhs.true
  br label %if.end40.sink.split, !dbg !2076

if.then36:                                        ; preds = %land.lhs.true
  br label %if.end40.sink.split, !dbg !2078

if.end40.sink.split:                              ; preds = %land.lhs.true, %if.then36, %if.then27
  %.sink88 = phi i32 [ 12, %if.then27 ], [ 13, %if.then36 ], [ 11, %land.lhs.true ]
  %34 = load ptr, ptr @PL_curpad, align 8, !dbg !2080
  %arrayidx28 = getelementptr inbounds ptr, ptr %34, i64 %call6, !dbg !2080
  %35 = load ptr, ptr %arrayidx28, align 8, !dbg !2080
  tail call void @Perl_sv_upgrade(ptr noundef %35, i32 noundef %.sink88) #11, !dbg !2080
  br label %if.end40, !dbg !2081

if.end40:                                         ; preds = %if.end40.sink.split, %land.lhs.true, %if.end13
  ret i64 %call6, !dbg !2081
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_newPADNAMEpvn(ptr nocapture noundef readonly %s, i64 noundef %len) local_unnamed_addr #0 !dbg !1921 {
entry:
  call void @llvm.dbg.value(metadata ptr %s, metadata !1920, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %len, metadata !1925, metadata !DIExpression()), !dbg !2082
  %add1 = add i64 %len, 43, !dbg !2083
  %call = tail call ptr @Perl_safesyscalloc(i64 noundef %add1, i64 noundef 1) #11, !dbg !2083
  call void @llvm.dbg.value(metadata ptr %call, metadata !1927, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %call, metadata !1926, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %call, metadata !1928, metadata !DIExpression()), !dbg !2082
  %xpadn_refcnt = getelementptr inbounds %struct.padname, ptr %call, i64 0, i32 5, !dbg !2084
  store i32 1, ptr %xpadn_refcnt, align 8, !dbg !2085
  %xpadn_str = getelementptr inbounds %struct.padname_with_str, ptr %call, i64 0, i32 9, !dbg !2086
  store ptr %xpadn_str, ptr %call, align 8, !dbg !2087
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %xpadn_str, ptr align 1 %s, i64 %len, i1 false), !dbg !2088
  %add.ptr = getelementptr inbounds i8, ptr %xpadn_str, i64 %len, !dbg !2089
  store i8 0, ptr %add.ptr, align 1, !dbg !2090
  %conv = trunc i64 %len to i8, !dbg !2091
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %call, i64 0, i32 7, !dbg !2092
  store i8 %conv, ptr %xpadn_len, align 8, !dbg !2093
  ret ptr %call, !dbg !2094
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @S_pad_alloc_name(ptr noundef %name, i32 noundef %flags, ptr noundef %typestash, ptr noundef %ourstash) unnamed_addr #0 !dbg !2095 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !2099, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2100, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata ptr %typestash, metadata !2101, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata ptr %ourstash, metadata !2102, metadata !DIExpression()), !dbg !2105
  call void @llvm.dbg.value(metadata i32 undef, metadata !2106, metadata !DIExpression()) #11, !dbg !2127
  call void @llvm.dbg.value(metadata i32 0, metadata !2111, metadata !DIExpression()) #11, !dbg !2127
  %0 = load ptr, ptr @PL_comppad, align 8, !dbg !2129
  %sv_u.i = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3, !dbg !2129
  %1 = load ptr, ptr %sv_u.i, align 8, !dbg !2129
  %2 = load ptr, ptr @PL_curpad, align 8, !dbg !2131
  %cmp.not.i = icmp eq ptr %1, %2, !dbg !2132
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !2133

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %2) #11, !dbg !2134
  br label %if.end.i, !dbg !2134

if.end.i:                                         ; preds = %if.then.i, %entry
  %3 = load i8, ptr @PL_pad_reset_pending, align 1, !dbg !2135, !range !2137
  %tobool.not.i = icmp eq i8 %3, 0, !dbg !2135
  br i1 %tobool.not.i, label %Perl_pad_alloc.exit, label %if.then3.i, !dbg !2138

if.then3.i:                                       ; preds = %if.end.i
  store i8 0, ptr @PL_pad_reset_pending, align 1, !dbg !2139
  br label %Perl_pad_alloc.exit, !dbg !2142

Perl_pad_alloc.exit:                              ; preds = %if.end.i, %if.then3.i
  %4 = load ptr, ptr @PL_comppad, align 8, !dbg !2143
  %5 = load ptr, ptr %4, align 8, !dbg !2143
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %5, i64 0, i32 2, !dbg !2143
  %6 = load i64, ptr %xav_fill.i, align 8, !dbg !2143
  %add.i = add nsw i64 %6, 1, !dbg !2143
  %call.i = tail call ptr @Perl_av_fetch(ptr noundef nonnull %4, i64 noundef %add.i, i32 noundef 1) #11, !dbg !2143
  call void @llvm.dbg.value(metadata ptr undef, metadata !2112, metadata !DIExpression()) #11, !dbg !2127
  %7 = load ptr, ptr @PL_comppad, align 8, !dbg !2145
  %8 = load ptr, ptr %7, align 8, !dbg !2145
  %xav_fill8.i = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 2, !dbg !2145
  %9 = load i64, ptr %xav_fill8.i, align 8, !dbg !2145
  call void @llvm.dbg.value(metadata i64 %9, metadata !2113, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2127
  call void @llvm.dbg.value(metadata i32 0, metadata !2111, metadata !DIExpression()) #11, !dbg !2127
  call void @llvm.dbg.value(metadata ptr undef, metadata !2112, metadata !DIExpression()) #11, !dbg !2127
  call void @llvm.dbg.value(metadata i32 undef, metadata !2113, metadata !DIExpression()) #11, !dbg !2127
  %sv_u40.i = getelementptr inbounds %struct.av, ptr %7, i64 0, i32 3, !dbg !2146
  %10 = load ptr, ptr %sv_u40.i, align 8, !dbg !2146
  store ptr %10, ptr @PL_curpad, align 8, !dbg !2147
  %sext.i = shl i64 %9, 32, !dbg !2148
  %conv41.i = ashr exact i64 %sext.i, 32, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %conv41.i, metadata !2103, metadata !DIExpression()), !dbg !2105
  %tobool.not = icmp eq ptr %typestash, null, !dbg !2149
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2151

if.then:                                          ; preds = %Perl_pad_alloc.exit
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %name, i64 0, i32 8, !dbg !2152
  %11 = load i8, ptr %xpadn_flags, align 1, !dbg !2152
  %12 = or i8 %11, 8, !dbg !2152
  store i8 %12, ptr %xpadn_flags, align 1, !dbg !2152
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %typestash, i64 0, i32 1, !dbg !2154
  %13 = load i32, ptr %sv_refcnt, align 8, !dbg !2154
  %inc = add i32 %13, 1, !dbg !2154
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !2154
  %xpadn_type_u = getelementptr inbounds %struct.padname, ptr %name, i64 0, i32 2, !dbg !2155
  store ptr %typestash, ptr %xpadn_type_u, align 8, !dbg !2156
  br label %if.end, !dbg !2157

if.end:                                           ; preds = %if.then, %Perl_pad_alloc.exit
  %tobool2.not = icmp eq ptr %ourstash, null, !dbg !2158
  br i1 %tobool2.not, label %if.else, label %if.then3, !dbg !2160

if.then3:                                         ; preds = %if.end
  %xpadn_flags4 = getelementptr inbounds %struct.padname, ptr %name, i64 0, i32 8, !dbg !2161
  %14 = load i8, ptr %xpadn_flags4, align 1, !dbg !2161
  %15 = or i8 %14, 16, !dbg !2161
  store i8 %15, ptr %xpadn_flags4, align 1, !dbg !2161
  %xpadn_ourstash = getelementptr inbounds %struct.padname, ptr %name, i64 0, i32 1, !dbg !2163
  store ptr %ourstash, ptr %xpadn_ourstash, align 8, !dbg !2163
  %sv_refcnt8 = getelementptr inbounds %struct.sv, ptr %ourstash, i64 0, i32 1, !dbg !2164
  %16 = load i32, ptr %sv_refcnt8, align 8, !dbg !2164
  %inc9 = add i32 %16, 1, !dbg !2164
  store i32 %inc9, ptr %sv_refcnt8, align 8, !dbg !2164
  br label %if.end17, !dbg !2165

if.else:                                          ; preds = %if.end
  %and = and i32 %flags, 2, !dbg !2166
  %tobool10.not = icmp eq i32 %and, 0, !dbg !2166
  br i1 %tobool10.not, label %if.end17, label %if.then11, !dbg !2168

if.then11:                                        ; preds = %if.else
  %xpadn_flags12 = getelementptr inbounds %struct.padname, ptr %name, i64 0, i32 8, !dbg !2169
  %17 = load i8, ptr %xpadn_flags12, align 1, !dbg !2169
  %18 = or i8 %17, 2, !dbg !2169
  store i8 %18, ptr %xpadn_flags12, align 1, !dbg !2169
  br label %if.end17, !dbg !2171

if.end17:                                         ; preds = %if.else, %if.then11, %if.then3
  %19 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2172
  call void @llvm.dbg.value(metadata ptr %19, metadata !1243, metadata !DIExpression()) #11, !dbg !2173
  call void @llvm.dbg.value(metadata i64 %conv41.i, metadata !1248, metadata !DIExpression()) #11, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %name, metadata !1249, metadata !DIExpression()) #11, !dbg !2173
  %xpadnl_max.i = getelementptr inbounds %struct.padnamelist, ptr %19, i64 0, i32 2, !dbg !2175
  %20 = load i64, ptr %xpadnl_max.i, align 8, !dbg !2175
  %cmp.i = icmp slt i64 %20, %conv41.i, !dbg !2176
  br i1 %cmp.i, label %if.then.i35, label %if.end.i36, !dbg !2177

if.then.i35:                                      ; preds = %if.end17
  %xpadnl_alloc.i = getelementptr inbounds %struct.padnamelist, ptr %19, i64 0, i32 1, !dbg !2178
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %conv41.i, ptr noundef nonnull %xpadnl_max.i, ptr noundef nonnull %xpadnl_alloc.i, ptr noundef nonnull %xpadnl_alloc.i) #11, !dbg !2178
  br label %if.end.i36, !dbg !2178

if.end.i36:                                       ; preds = %if.then.i35, %if.end17
  %21 = load i64, ptr %19, align 8, !dbg !2179
  %cmp3.i = icmp sgt i64 %conv41.i, %21, !dbg !2180
  br i1 %cmp3.i, label %if.then4.i, label %if.end10.i, !dbg !2181

if.then4.i:                                       ; preds = %if.end.i36
  %xpadnl_alloc5.i = getelementptr inbounds %struct.padnamelist, ptr %19, i64 0, i32 1, !dbg !2182
  %22 = load ptr, ptr %xpadnl_alloc5.i, align 8, !dbg !2182
  %add.ptr.i = getelementptr inbounds ptr, ptr %22, i64 %21, !dbg !2182
  %add.ptr7.i = getelementptr inbounds ptr, ptr %add.ptr.i, i64 1, !dbg !2182
  %sub.i = sub nsw i64 %conv41.i, %21, !dbg !2182
  %mul.i = shl i64 %sub.i, 3, !dbg !2182
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr7.i, i8 0, i64 %mul.i, i1 false) #11, !dbg !2182
  store i64 %conv41.i, ptr %19, align 8, !dbg !2183
  br label %if.end10.i, !dbg !2184

if.end10.i:                                       ; preds = %if.then4.i, %if.end.i36
  %xpadnl_alloc11.i = getelementptr inbounds %struct.padnamelist, ptr %19, i64 0, i32 1, !dbg !2185
  %23 = load ptr, ptr %xpadnl_alloc11.i, align 8, !dbg !2185
  call void @llvm.dbg.value(metadata ptr %23, metadata !1250, metadata !DIExpression()) #11, !dbg !2173
  %arrayidx.i = getelementptr inbounds ptr, ptr %23, i64 %conv41.i, !dbg !2186
  %24 = load ptr, ptr %arrayidx.i, align 8, !dbg !2186
  %tobool.not.i37 = icmp eq ptr %24, null, !dbg !2186
  br i1 %tobool.not.i37, label %Perl_padnamelist_store.exit, label %if.then12.i, !dbg !2187

if.then12.i:                                      ; preds = %if.end10.i
  tail call void @Perl_padname_free(ptr noundef nonnull %24) #11, !dbg !2188
  br label %Perl_padnamelist_store.exit, !dbg !2188

Perl_padnamelist_store.exit:                      ; preds = %if.end10.i, %if.then12.i
  store ptr %name, ptr %arrayidx.i, align 8, !dbg !2189
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %name, i64 0, i32 7, !dbg !2190
  %25 = load i8, ptr %xpadn_len, align 8, !dbg !2190
  %cmp = icmp ugt i8 %25, 1, !dbg !2192
  br i1 %cmp, label %if.then21, label %if.end22, !dbg !2193

if.then21:                                        ; preds = %Perl_padnamelist_store.exit
  %26 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2194
  %xpadnl_max_named = getelementptr inbounds %struct.padnamelist, ptr %26, i64 0, i32 3, !dbg !2194
  store i64 %conv41.i, ptr %xpadnl_max_named, align 8, !dbg !2195
  br label %if.end22, !dbg !2194

if.end22:                                         ; preds = %if.then21, %Perl_padnamelist_store.exit
  ret i64 %conv41.i, !dbg !2196
}

declare !dbg !2197 void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_add_name_pv(ptr nocapture noundef readonly %name, i32 noundef %flags, ptr noundef %typestash, ptr noundef %ourstash) local_unnamed_addr #0 !dbg !2200 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !2204, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2205, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata ptr %typestash, metadata !2206, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata ptr %ourstash, metadata !2207, metadata !DIExpression()), !dbg !2208
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #12, !dbg !2209
  %call1 = tail call i64 @Perl_pad_add_name_pvn(ptr noundef %name, i64 noundef %call, i32 noundef %flags, ptr noundef %typestash, ptr noundef %ourstash), !dbg !2209
  ret i64 %call1, !dbg !2210
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_add_name_sv(ptr noundef %name, i32 noundef %flags, ptr noundef %typestash, ptr noundef %ourstash) local_unnamed_addr #0 !dbg !2211 {
entry:
  %namelen = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %name, metadata !2215, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2216, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata ptr %typestash, metadata !2217, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata ptr %ourstash, metadata !2218, metadata !DIExpression()), !dbg !2221
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %namelen) #11, !dbg !2222
  %sv_flags = getelementptr inbounds %struct.sv, ptr %name, i64 0, i32 2, !dbg !2223
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2223
  %and = and i32 %0, 538969088, !dbg !2223
  %cmp = icmp eq i32 %and, 536871936, !dbg !2223
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2223

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %name, align 8, !dbg !2223
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !2223
  %2 = load i64, ptr %xpv_cur, align 8, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %2, metadata !2220, metadata !DIExpression()), !dbg !2221
  store i64 %2, ptr %namelen, align 8, !dbg !2223
  %sv_u = getelementptr inbounds %struct.sv, ptr %name, i64 0, i32 3, !dbg !2223
  %3 = load ptr, ptr %sv_u, align 8, !dbg !2223
  br label %cond.end, !dbg !2223

cond.false:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %namelen, metadata !2220, metadata !DIExpression(DW_OP_deref)), !dbg !2221
  %call = call ptr @Perl_sv_2pvutf8(ptr noundef nonnull %name, ptr noundef nonnull %namelen) #11, !dbg !2223
  %.pre = load i64, ptr %namelen, align 8, !dbg !2224
  br label %cond.end, !dbg !2223

cond.end:                                         ; preds = %cond.false, %cond.true
  %4 = phi i64 [ %2, %cond.true ], [ %.pre, %cond.false ], !dbg !2224
  %cond = phi ptr [ %3, %cond.true ], [ %call, %cond.false ], !dbg !2223
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2219, metadata !DIExpression()), !dbg !2221
  call void @llvm.dbg.value(metadata i64 %4, metadata !2220, metadata !DIExpression()), !dbg !2221
  %call1 = call i64 @Perl_pad_add_name_pvn(ptr noundef %cond, i64 noundef %4, i32 noundef %flags, ptr noundef %typestash, ptr noundef %ourstash), !dbg !2224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %namelen) #11, !dbg !2225
  ret i64 %call1, !dbg !2226
}

declare !dbg !2227 ptr @Perl_sv_2pvutf8(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_alloc(i32 %optype, i32 noundef %tmptype) local_unnamed_addr #0 !dbg !2107 {
entry:
  call void @llvm.dbg.value(metadata i32 undef, metadata !2106, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %tmptype, metadata !2111, metadata !DIExpression()), !dbg !2231
  %0 = load ptr, ptr @PL_comppad, align 8, !dbg !2232
  %sv_u = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3, !dbg !2232
  %1 = load ptr, ptr %sv_u, align 8, !dbg !2232
  %2 = load ptr, ptr @PL_curpad, align 8, !dbg !2233
  %cmp.not = icmp eq ptr %1, %2, !dbg !2234
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2235

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %2) #11, !dbg !2236
  br label %if.end, !dbg !2236

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr @PL_pad_reset_pending, align 1, !dbg !2237, !range !2137
  %tobool.not = icmp eq i8 %3, 0, !dbg !2237
  br i1 %tobool.not, label %if.end4, label %if.then3, !dbg !2238

if.then3:                                         ; preds = %if.end
  store i8 0, ptr @PL_pad_reset_pending, align 1, !dbg !2239
  br label %if.end4, !dbg !2241

if.end4:                                          ; preds = %if.then3, %if.end
  %cmp5 = icmp eq i32 %tmptype, 0, !dbg !2242
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !2243

if.then6:                                         ; preds = %if.end4
  %4 = load ptr, ptr @PL_comppad, align 8, !dbg !2244
  %5 = load ptr, ptr %4, align 8, !dbg !2244
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %5, i64 0, i32 2, !dbg !2244
  %6 = load i64, ptr %xav_fill, align 8, !dbg !2244
  %add = add nsw i64 %6, 1, !dbg !2244
  %call = tail call ptr @Perl_av_fetch(ptr noundef nonnull %4, i64 noundef %add, i32 noundef 1) #11, !dbg !2244
  %7 = load ptr, ptr %call, align 8, !dbg !2245
  call void @llvm.dbg.value(metadata ptr %7, metadata !2112, metadata !DIExpression()), !dbg !2231
  %8 = load ptr, ptr @PL_comppad, align 8, !dbg !2246
  %9 = load ptr, ptr %8, align 8, !dbg !2246
  %xav_fill8 = getelementptr inbounds %struct.xpvav, ptr %9, i64 0, i32 2, !dbg !2246
  %10 = load i64, ptr %xav_fill8, align 8, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %10, metadata !2113, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2231
  br label %if.end37, !dbg !2247

if.else:                                          ; preds = %if.end4
  %11 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2248
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1, !dbg !2248
  %12 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !2248
  call void @llvm.dbg.value(metadata ptr %12, metadata !2114, metadata !DIExpression()), !dbg !2249
  %13 = load i64, ptr %11, align 8, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %13, metadata !2119, metadata !DIExpression()), !dbg !2249
  %and = and i32 %tmptype, 134217728, !dbg !2251
  %tobool9.not = icmp eq i32 %and, 0, !dbg !2251
  call void @llvm.dbg.value(metadata i1 %tobool9.not, metadata !2121, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2249
  %PL_padix.val = load i32, ptr @PL_padix, align 4, !dbg !2252
  %PL_constpadix.val = load i32, ptr @PL_constpadix, align 4, !dbg !2252
  %cond13 = select i1 %tobool9.not, i32 %PL_padix.val, i32 %PL_constpadix.val, !dbg !2252
  call void @llvm.dbg.value(metadata i32 %cond13, metadata !2113, metadata !DIExpression()), !dbg !2231
  %14 = sext i32 %cond13 to i64, !dbg !2253
  br label %for.cond, !dbg !2253

for.cond:                                         ; preds = %cleanup, %if.else
  %indvars.iv = phi i64 [ %indvars.iv.next, %cleanup ], [ %14, %if.else ], !dbg !2249
  %sv.0 = phi ptr [ %sv.1, %cleanup ], [ undef, %if.else ]
  call void @llvm.dbg.value(metadata ptr %sv.0, metadata !2112, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2113, metadata !DIExpression()), !dbg !2231
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !2254
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2113, metadata !DIExpression()), !dbg !2231
  %cmp15.not = icmp slt i64 %13, %indvars.iv.next, !dbg !2256
  br i1 %cmp15.not, label %if.end21, label %land.lhs.true, !dbg !2257

land.lhs.true:                                    ; preds = %for.cond
  %arrayidx = getelementptr inbounds ptr, ptr %12, i64 %indvars.iv.next, !dbg !2258
  %15 = load ptr, ptr %arrayidx, align 8, !dbg !2258
  call void @llvm.dbg.value(metadata ptr %15, metadata !2123, metadata !DIExpression()), !dbg !2259
  %tobool17.not = icmp eq ptr %15, null, !dbg !2260
  br i1 %tobool17.not, label %if.end21, label %land.lhs.true18, !dbg !2261

land.lhs.true18:                                  ; preds = %land.lhs.true
  %16 = load ptr, ptr %15, align 8, !dbg !2262
  %tobool19.not = icmp eq ptr %16, null, !dbg !2262
  br i1 %tobool19.not, label %if.end21, label %cleanup, !dbg !2263, !llvm.loop !2264

if.end21:                                         ; preds = %land.lhs.true18, %land.lhs.true, %for.cond
  %17 = load ptr, ptr @PL_comppad, align 8, !dbg !2267
  %call23 = tail call ptr @Perl_av_fetch(ptr noundef %17, i64 noundef %indvars.iv.next, i32 noundef 1) #11, !dbg !2267
  %18 = load ptr, ptr %call23, align 8, !dbg !2268
  call void @llvm.dbg.value(metadata ptr %18, metadata !2112, metadata !DIExpression()), !dbg !2231
  %sv_flags = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 2, !dbg !2269
  %19 = load i32, ptr %sv_flags, align 4, !dbg !2269
  %and24 = lshr i32 %19, 16, !dbg !2271
  %20 = and i32 %and24, 2, !dbg !2271
  %21 = xor i32 %20, 2, !dbg !2271
  br label %cleanup, !dbg !2271

cleanup:                                          ; preds = %if.end21, %land.lhs.true18
  %sv.1 = phi ptr [ %sv.0, %land.lhs.true18 ], [ %18, %if.end21 ]
  %cleanup.dest.slot.0 = phi i32 [ 3, %land.lhs.true18 ], [ %21, %if.end21 ]
  call void @llvm.dbg.value(metadata ptr %sv.1, metadata !2112, metadata !DIExpression()), !dbg !2231
  %switch = icmp eq i32 %cleanup.dest.slot.0, 2
  br i1 %switch, label %for.end, label %for.cond

for.end:                                          ; preds = %cleanup
  %22 = trunc i64 %indvars.iv.next to i32, !dbg !2272
  br i1 %tobool9.not, label %if.end33, label %if.then29, !dbg !2272

if.then29:                                        ; preds = %for.end
  %23 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2273
  call void @llvm.dbg.value(metadata ptr %23, metadata !1243, metadata !DIExpression()) #11, !dbg !2276
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1248, metadata !DIExpression()) #11, !dbg !2276
  call void @llvm.dbg.value(metadata ptr @PL_padname_const, metadata !1249, metadata !DIExpression()) #11, !dbg !2276
  %xpadnl_max.i = getelementptr inbounds %struct.padnamelist, ptr %23, i64 0, i32 2, !dbg !2278
  %24 = load i64, ptr %xpadnl_max.i, align 8, !dbg !2278
  %cmp.i = icmp slt i64 %24, %indvars.iv.next, !dbg !2279
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !2280

if.then.i:                                        ; preds = %if.then29
  %xpadnl_alloc.i = getelementptr inbounds %struct.padnamelist, ptr %23, i64 0, i32 1, !dbg !2281
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %indvars.iv.next, ptr noundef nonnull %xpadnl_max.i, ptr noundef nonnull %xpadnl_alloc.i, ptr noundef nonnull %xpadnl_alloc.i) #11, !dbg !2281
  br label %if.end.i, !dbg !2281

if.end.i:                                         ; preds = %if.then.i, %if.then29
  %25 = load i64, ptr %23, align 8, !dbg !2282
  %cmp3.i = icmp sgt i64 %indvars.iv.next, %25, !dbg !2283
  br i1 %cmp3.i, label %if.then4.i, label %if.end10.i, !dbg !2284

if.then4.i:                                       ; preds = %if.end.i
  %xpadnl_alloc5.i = getelementptr inbounds %struct.padnamelist, ptr %23, i64 0, i32 1, !dbg !2285
  %26 = load ptr, ptr %xpadnl_alloc5.i, align 8, !dbg !2285
  %add.ptr.i = getelementptr inbounds ptr, ptr %26, i64 %25, !dbg !2285
  %add.ptr7.i = getelementptr inbounds ptr, ptr %add.ptr.i, i64 1, !dbg !2285
  %sub.i = sub nsw i64 %indvars.iv.next, %25, !dbg !2285
  %mul.i = shl i64 %sub.i, 3, !dbg !2285
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr7.i, i8 0, i64 %mul.i, i1 false) #11, !dbg !2285
  store i64 %indvars.iv.next, ptr %23, align 8, !dbg !2286
  br label %if.end10.i, !dbg !2287

if.end10.i:                                       ; preds = %if.then4.i, %if.end.i
  %xpadnl_alloc11.i = getelementptr inbounds %struct.padnamelist, ptr %23, i64 0, i32 1, !dbg !2288
  %27 = load ptr, ptr %xpadnl_alloc11.i, align 8, !dbg !2288
  call void @llvm.dbg.value(metadata ptr %27, metadata !1250, metadata !DIExpression()) #11, !dbg !2276
  %arrayidx.i = getelementptr inbounds ptr, ptr %27, i64 %indvars.iv.next, !dbg !2289
  %28 = load ptr, ptr %arrayidx.i, align 8, !dbg !2289
  %tobool.not.i = icmp eq ptr %28, null, !dbg !2289
  br i1 %tobool.not.i, label %Perl_padnamelist_store.exit, label %if.then12.i, !dbg !2290

if.then12.i:                                      ; preds = %if.end10.i
  tail call void @Perl_padname_free(ptr noundef nonnull %28) #11, !dbg !2291
  br label %Perl_padnamelist_store.exit, !dbg !2291

Perl_padnamelist_store.exit:                      ; preds = %if.end10.i, %if.then12.i
  store ptr @PL_padname_const, ptr %arrayidx.i, align 8, !dbg !2292
  %and32 = and i32 %tmptype, -134348801, !dbg !2293
  call void @llvm.dbg.value(metadata i32 %tmptype, metadata !2111, metadata !DIExpression(DW_OP_constu, 18446744073575202815, DW_OP_and, DW_OP_stack_value)), !dbg !2231
  %or = or i32 %and32, 131072, !dbg !2294
  call void @llvm.dbg.value(metadata i32 %or, metadata !2111, metadata !DIExpression()), !dbg !2231
  br label %if.end33, !dbg !2295

if.end33:                                         ; preds = %Perl_padnamelist_store.exit, %for.end
  %cond36 = phi ptr [ @PL_constpadix, %Perl_padnamelist_store.exit ], [ @PL_padix, %for.end ]
  %tmptype.addr.0 = phi i32 [ %or, %Perl_padnamelist_store.exit ], [ %tmptype, %for.end ]
  call void @llvm.dbg.value(metadata i32 %tmptype.addr.0, metadata !2111, metadata !DIExpression()), !dbg !2231
  store i32 %22, ptr %cond36, align 4, !dbg !2296
  %.pre = load ptr, ptr @PL_comppad, align 8, !dbg !2297
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.then6
  %29 = phi ptr [ %8, %if.then6 ], [ %.pre, %if.end33 ], !dbg !2297
  %retval1.1 = phi i64 [ %10, %if.then6 ], [ %indvars.iv.next, %if.end33 ], !dbg !2298
  %sv.2 = phi ptr [ %7, %if.then6 ], [ %sv.1, %if.end33 ]
  %tmptype.addr.1 = phi i32 [ 0, %if.then6 ], [ %tmptype.addr.0, %if.end33 ]
  call void @llvm.dbg.value(metadata i32 %tmptype.addr.1, metadata !2111, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata ptr %sv.2, metadata !2112, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 undef, metadata !2113, metadata !DIExpression()), !dbg !2231
  %sv_flags38 = getelementptr inbounds %struct.sv, ptr %sv.2, i64 0, i32 2, !dbg !2299
  %30 = load i32, ptr %sv_flags38, align 4, !dbg !2300
  %or39 = or i32 %30, %tmptype.addr.1, !dbg !2300
  store i32 %or39, ptr %sv_flags38, align 4, !dbg !2300
  %sv_u40 = getelementptr inbounds %struct.av, ptr %29, i64 0, i32 3, !dbg !2297
  %31 = load ptr, ptr %sv_u40, align 8, !dbg !2297
  store ptr %31, ptr @PL_curpad, align 8, !dbg !2301
  %sext = shl i64 %retval1.1, 32, !dbg !2302
  %conv41 = ashr exact i64 %sext, 32, !dbg !2302
  ret i64 %conv41, !dbg !2303
}

declare !dbg !2304 ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_add_anon(ptr noundef %func, i32 noundef %optype) local_unnamed_addr #0 !dbg !2307 {
entry:
  call void @llvm.dbg.value(metadata ptr %func, metadata !2311, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 %optype, metadata !2312, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i64 1, metadata !1925, metadata !DIExpression()) #11, !dbg !2316
  %call.i = tail call ptr @Perl_safesyscalloc(i64 noundef 44, i64 noundef 1) #11, !dbg !2318
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1927, metadata !DIExpression()) #11, !dbg !2316
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1926, metadata !DIExpression()) #11, !dbg !2316
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1928, metadata !DIExpression()) #11, !dbg !2316
  %xpadn_refcnt.i = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 5, !dbg !2319
  store i32 1, ptr %xpadn_refcnt.i, align 8, !dbg !2320
  %xpadn_str.i = getelementptr inbounds %struct.padname_with_str, ptr %call.i, i64 0, i32 9, !dbg !2321
  store ptr %xpadn_str.i, ptr %call.i, align 8, !dbg !2322
  store i8 38, ptr %xpadn_str.i, align 1, !dbg !2323
  %add.ptr.i = getelementptr inbounds i8, ptr %xpadn_str.i, i64 1, !dbg !2324
  store i8 0, ptr %add.ptr.i, align 1, !dbg !2325
  %xpadn_len.i = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 7, !dbg !2326
  store i8 1, ptr %xpadn_len.i, align 8, !dbg !2327
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 undef, metadata !2106, metadata !DIExpression()) #11, !dbg !2328
  call void @llvm.dbg.value(metadata i32 0, metadata !2111, metadata !DIExpression()) #11, !dbg !2328
  %0 = load ptr, ptr @PL_comppad, align 8, !dbg !2330
  %sv_u.i = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3, !dbg !2330
  %1 = load ptr, ptr %sv_u.i, align 8, !dbg !2330
  %2 = load ptr, ptr @PL_curpad, align 8, !dbg !2331
  %cmp.not.i = icmp eq ptr %1, %2, !dbg !2332
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !2333

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %2) #11, !dbg !2334
  br label %if.end.i, !dbg !2334

if.end.i:                                         ; preds = %if.then.i, %entry
  %3 = load i8, ptr @PL_pad_reset_pending, align 1, !dbg !2335, !range !2137
  %tobool.not.i = icmp eq i8 %3, 0, !dbg !2335
  br i1 %tobool.not.i, label %Perl_pad_alloc.exit, label %if.then3.i, !dbg !2336

if.then3.i:                                       ; preds = %if.end.i
  store i8 0, ptr @PL_pad_reset_pending, align 1, !dbg !2337
  br label %Perl_pad_alloc.exit, !dbg !2339

Perl_pad_alloc.exit:                              ; preds = %if.end.i, %if.then3.i
  %4 = load ptr, ptr @PL_comppad, align 8, !dbg !2340
  %5 = load ptr, ptr %4, align 8, !dbg !2340
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %5, i64 0, i32 2, !dbg !2340
  %6 = load i64, ptr %xav_fill.i, align 8, !dbg !2340
  %add.i = add nsw i64 %6, 1, !dbg !2340
  %call.i12 = tail call ptr @Perl_av_fetch(ptr noundef nonnull %4, i64 noundef %add.i, i32 noundef 1) #11, !dbg !2340
  call void @llvm.dbg.value(metadata ptr undef, metadata !2112, metadata !DIExpression()) #11, !dbg !2328
  %7 = load ptr, ptr @PL_comppad, align 8, !dbg !2341
  %8 = load ptr, ptr %7, align 8, !dbg !2341
  %xav_fill8.i = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 2, !dbg !2341
  %9 = load i64, ptr %xav_fill8.i, align 8, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %9, metadata !2113, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2328
  call void @llvm.dbg.value(metadata i32 0, metadata !2111, metadata !DIExpression()) #11, !dbg !2328
  call void @llvm.dbg.value(metadata ptr undef, metadata !2112, metadata !DIExpression()) #11, !dbg !2328
  call void @llvm.dbg.value(metadata i32 undef, metadata !2113, metadata !DIExpression()) #11, !dbg !2328
  %sv_u40.i = getelementptr inbounds %struct.av, ptr %7, i64 0, i32 3, !dbg !2342
  %10 = load ptr, ptr %sv_u40.i, align 8, !dbg !2342
  store ptr %10, ptr @PL_curpad, align 8, !dbg !2343
  %sext.i = shl i64 %9, 32, !dbg !2344
  %conv41.i = ashr exact i64 %sext.i, 32, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %conv41.i, metadata !2313, metadata !DIExpression()), !dbg !2315
  %11 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2345
  call void @llvm.dbg.value(metadata ptr %11, metadata !1243, metadata !DIExpression()) #11, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %conv41.i, metadata !1248, metadata !DIExpression()) #11, !dbg !2346
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1249, metadata !DIExpression()) #11, !dbg !2346
  %xpadnl_max.i = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 2, !dbg !2348
  %12 = load i64, ptr %xpadnl_max.i, align 8, !dbg !2348
  %cmp.i = icmp slt i64 %12, %conv41.i, !dbg !2349
  br i1 %cmp.i, label %if.then.i13, label %if.end.i14, !dbg !2350

if.then.i13:                                      ; preds = %Perl_pad_alloc.exit
  %xpadnl_alloc.i = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1, !dbg !2351
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %conv41.i, ptr noundef nonnull %xpadnl_max.i, ptr noundef nonnull %xpadnl_alloc.i, ptr noundef nonnull %xpadnl_alloc.i) #11, !dbg !2351
  br label %if.end.i14, !dbg !2351

if.end.i14:                                       ; preds = %if.then.i13, %Perl_pad_alloc.exit
  %13 = load i64, ptr %11, align 8, !dbg !2352
  %cmp3.i = icmp sgt i64 %conv41.i, %13, !dbg !2353
  br i1 %cmp3.i, label %if.then4.i, label %if.end10.i, !dbg !2354

if.then4.i:                                       ; preds = %if.end.i14
  %xpadnl_alloc5.i = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1, !dbg !2355
  %14 = load ptr, ptr %xpadnl_alloc5.i, align 8, !dbg !2355
  %add.ptr.i15 = getelementptr inbounds ptr, ptr %14, i64 %13, !dbg !2355
  %add.ptr7.i = getelementptr inbounds ptr, ptr %add.ptr.i15, i64 1, !dbg !2355
  %sub.i = sub nsw i64 %conv41.i, %13, !dbg !2355
  %mul.i = shl i64 %sub.i, 3, !dbg !2355
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr7.i, i8 0, i64 %mul.i, i1 false) #11, !dbg !2355
  store i64 %conv41.i, ptr %11, align 8, !dbg !2356
  br label %if.end10.i, !dbg !2357

if.end10.i:                                       ; preds = %if.then4.i, %if.end.i14
  %xpadnl_alloc11.i = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1, !dbg !2358
  %15 = load ptr, ptr %xpadnl_alloc11.i, align 8, !dbg !2358
  call void @llvm.dbg.value(metadata ptr %15, metadata !1250, metadata !DIExpression()) #11, !dbg !2346
  %arrayidx.i = getelementptr inbounds ptr, ptr %15, i64 %conv41.i, !dbg !2359
  %16 = load ptr, ptr %arrayidx.i, align 8, !dbg !2359
  %tobool.not.i16 = icmp eq ptr %16, null, !dbg !2359
  br i1 %tobool.not.i16, label %Perl_padnamelist_store.exit, label %if.then12.i, !dbg !2360

if.then12.i:                                      ; preds = %if.end10.i
  tail call void @Perl_padname_free(ptr noundef nonnull %16) #11, !dbg !2361
  br label %Perl_padnamelist_store.exit, !dbg !2361

Perl_padnamelist_store.exit:                      ; preds = %if.end10.i, %if.then12.i
  store ptr %call.i, ptr %arrayidx.i, align 8, !dbg !2362
  %17 = load ptr, ptr @PL_comppad, align 8, !dbg !2363
  %call3 = tail call ptr @Perl_av_store(ptr noundef %17, i64 noundef %conv41.i, ptr noundef %func) #11, !dbg !2363
  %18 = load ptr, ptr %func, align 8, !dbg !2364
  %xcv_outside = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 10, !dbg !2364
  %19 = load ptr, ptr %xcv_outside, align 8, !dbg !2364
  %tobool.not = icmp eq ptr %19, null, !dbg !2364
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2366

if.then:                                          ; preds = %Perl_padnamelist_store.exit
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 12, !dbg !2367
  %20 = load i32, ptr %xcv_flags, align 4, !dbg !2367
  %or = or i32 %20, 16, !dbg !2367
  store i32 %or, ptr %xcv_flags, align 4, !dbg !2367
  %21 = load ptr, ptr %func, align 8, !dbg !2369
  %xcv_outside6 = getelementptr inbounds %struct.xpvcv, ptr %21, i64 0, i32 10, !dbg !2369
  %22 = load ptr, ptr %xcv_outside6, align 8, !dbg !2369
  call void @llvm.dbg.value(metadata ptr %22, metadata !1515, metadata !DIExpression()) #11, !dbg !2370
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 1, !dbg !2372
  %23 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2372
  call void @llvm.dbg.value(metadata i32 %23, metadata !1521, metadata !DIExpression()) #11, !dbg !2370
  %cmp.i17 = icmp ugt i32 %23, 1, !dbg !2373
  br i1 %cmp.i17, label %if.then.i19, label %if.else.i, !dbg !2374

if.then.i19:                                      ; preds = %if.then
  %sub.i18 = add i32 %23, -1, !dbg !2375
  store i32 %sub.i18, ptr %sv_refcnt.i, align 8, !dbg !2376
  br label %if.end, !dbg !2377

if.else.i:                                        ; preds = %if.then
  tail call void @Perl_sv_free2(ptr noundef nonnull %22, i32 noundef %23) #11, !dbg !2378
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i19, %Perl_padnamelist_store.exit
  ret i64 %conv41.i, !dbg !2379
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_add_weakref(ptr noundef %func) local_unnamed_addr #0 !dbg !2380 {
entry:
  call void @llvm.dbg.value(metadata ptr %func, metadata !2382, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 undef, metadata !2106, metadata !DIExpression()) #11, !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !2111, metadata !DIExpression()) #11, !dbg !2387
  %0 = load ptr, ptr @PL_comppad, align 8, !dbg !2389
  %sv_u.i = getelementptr inbounds %struct.av, ptr %0, i64 0, i32 3, !dbg !2389
  %1 = load ptr, ptr %sv_u.i, align 8, !dbg !2389
  %2 = load ptr, ptr @PL_curpad, align 8, !dbg !2390
  %cmp.not.i = icmp eq ptr %1, %2, !dbg !2391
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !dbg !2392

if.then.i:                                        ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %2) #11, !dbg !2393
  br label %if.end.i, !dbg !2393

if.end.i:                                         ; preds = %if.then.i, %entry
  %3 = load i8, ptr @PL_pad_reset_pending, align 1, !dbg !2394, !range !2137
  %tobool.not.i = icmp eq i8 %3, 0, !dbg !2394
  br i1 %tobool.not.i, label %Perl_pad_alloc.exit, label %if.then3.i, !dbg !2395

if.then3.i:                                       ; preds = %if.end.i
  store i8 0, ptr @PL_pad_reset_pending, align 1, !dbg !2396
  br label %Perl_pad_alloc.exit, !dbg !2398

Perl_pad_alloc.exit:                              ; preds = %if.end.i, %if.then3.i
  %4 = load ptr, ptr @PL_comppad, align 8, !dbg !2399
  %5 = load ptr, ptr %4, align 8, !dbg !2399
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %5, i64 0, i32 2, !dbg !2399
  %6 = load i64, ptr %xav_fill.i, align 8, !dbg !2399
  %add.i = add nsw i64 %6, 1, !dbg !2399
  %call.i = tail call ptr @Perl_av_fetch(ptr noundef nonnull %4, i64 noundef %add.i, i32 noundef 1) #11, !dbg !2399
  call void @llvm.dbg.value(metadata ptr undef, metadata !2112, metadata !DIExpression()) #11, !dbg !2387
  %7 = load ptr, ptr @PL_comppad, align 8, !dbg !2400
  %8 = load ptr, ptr %7, align 8, !dbg !2400
  %xav_fill8.i = getelementptr inbounds %struct.xpvav, ptr %8, i64 0, i32 2, !dbg !2400
  %9 = load i64, ptr %xav_fill8.i, align 8, !dbg !2400
  call void @llvm.dbg.value(metadata i64 %9, metadata !2113, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !2111, metadata !DIExpression()) #11, !dbg !2387
  call void @llvm.dbg.value(metadata ptr undef, metadata !2112, metadata !DIExpression()) #11, !dbg !2387
  call void @llvm.dbg.value(metadata i32 undef, metadata !2113, metadata !DIExpression()) #11, !dbg !2387
  %sv_u40.i = getelementptr inbounds %struct.av, ptr %7, i64 0, i32 3, !dbg !2401
  %10 = load ptr, ptr %sv_u40.i, align 8, !dbg !2401
  store ptr %10, ptr @PL_curpad, align 8, !dbg !2402
  %sext.i = shl i64 %9, 32, !dbg !2403
  %conv41.i = ashr exact i64 %sext.i, 32, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %conv41.i, metadata !2383, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i64 1, metadata !1925, metadata !DIExpression()) #11, !dbg !2404
  %call.i8 = tail call ptr @Perl_safesyscalloc(i64 noundef 44, i64 noundef 1) #11, !dbg !2406
  call void @llvm.dbg.value(metadata ptr %call.i8, metadata !1927, metadata !DIExpression()) #11, !dbg !2404
  call void @llvm.dbg.value(metadata ptr %call.i8, metadata !1926, metadata !DIExpression()) #11, !dbg !2404
  call void @llvm.dbg.value(metadata ptr %call.i8, metadata !1928, metadata !DIExpression()) #11, !dbg !2404
  %xpadn_refcnt.i = getelementptr inbounds %struct.padname, ptr %call.i8, i64 0, i32 5, !dbg !2407
  store i32 1, ptr %xpadn_refcnt.i, align 8, !dbg !2408
  %xpadn_str.i = getelementptr inbounds %struct.padname_with_str, ptr %call.i8, i64 0, i32 9, !dbg !2409
  store ptr %xpadn_str.i, ptr %call.i8, align 8, !dbg !2410
  store i8 38, ptr %xpadn_str.i, align 1, !dbg !2411
  %add.ptr.i = getelementptr inbounds i8, ptr %xpadn_str.i, i64 1, !dbg !2412
  store i8 0, ptr %add.ptr.i, align 1, !dbg !2413
  %xpadn_len.i = getelementptr inbounds %struct.padname, ptr %call.i8, i64 0, i32 7, !dbg !2414
  store i8 1, ptr %xpadn_len.i, align 8, !dbg !2415
  call void @llvm.dbg.value(metadata ptr %call.i8, metadata !2384, metadata !DIExpression()), !dbg !2386
  %call2 = tail call ptr @Perl_newRV(ptr noundef %func) #11, !dbg !2416
  call void @llvm.dbg.value(metadata ptr %call2, metadata !2385, metadata !DIExpression()), !dbg !2386
  %11 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2417
  call void @llvm.dbg.value(metadata ptr %11, metadata !1243, metadata !DIExpression()) #11, !dbg !2418
  call void @llvm.dbg.value(metadata i64 %conv41.i, metadata !1248, metadata !DIExpression()) #11, !dbg !2418
  call void @llvm.dbg.value(metadata ptr %call.i8, metadata !1249, metadata !DIExpression()) #11, !dbg !2418
  %xpadnl_max.i = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 2, !dbg !2420
  %12 = load i64, ptr %xpadnl_max.i, align 8, !dbg !2420
  %cmp.i = icmp slt i64 %12, %conv41.i, !dbg !2421
  br i1 %cmp.i, label %if.then.i9, label %if.end.i10, !dbg !2422

if.then.i9:                                       ; preds = %Perl_pad_alloc.exit
  %xpadnl_alloc.i = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1, !dbg !2423
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %conv41.i, ptr noundef nonnull %xpadnl_max.i, ptr noundef nonnull %xpadnl_alloc.i, ptr noundef nonnull %xpadnl_alloc.i) #11, !dbg !2423
  br label %if.end.i10, !dbg !2423

if.end.i10:                                       ; preds = %if.then.i9, %Perl_pad_alloc.exit
  %13 = load i64, ptr %11, align 8, !dbg !2424
  %cmp3.i = icmp sgt i64 %conv41.i, %13, !dbg !2425
  br i1 %cmp3.i, label %if.then4.i, label %if.end10.i, !dbg !2426

if.then4.i:                                       ; preds = %if.end.i10
  %xpadnl_alloc5.i = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1, !dbg !2427
  %14 = load ptr, ptr %xpadnl_alloc5.i, align 8, !dbg !2427
  %add.ptr.i11 = getelementptr inbounds ptr, ptr %14, i64 %13, !dbg !2427
  %add.ptr7.i = getelementptr inbounds ptr, ptr %add.ptr.i11, i64 1, !dbg !2427
  %sub.i = sub nsw i64 %conv41.i, %13, !dbg !2427
  %mul.i = shl i64 %sub.i, 3, !dbg !2427
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr7.i, i8 0, i64 %mul.i, i1 false) #11, !dbg !2427
  store i64 %conv41.i, ptr %11, align 8, !dbg !2428
  br label %if.end10.i, !dbg !2429

if.end10.i:                                       ; preds = %if.then4.i, %if.end.i10
  %xpadnl_alloc11.i = getelementptr inbounds %struct.padnamelist, ptr %11, i64 0, i32 1, !dbg !2430
  %15 = load ptr, ptr %xpadnl_alloc11.i, align 8, !dbg !2430
  call void @llvm.dbg.value(metadata ptr %15, metadata !1250, metadata !DIExpression()) #11, !dbg !2418
  %arrayidx.i = getelementptr inbounds ptr, ptr %15, i64 %conv41.i, !dbg !2431
  %16 = load ptr, ptr %arrayidx.i, align 8, !dbg !2431
  %tobool.not.i12 = icmp eq ptr %16, null, !dbg !2431
  br i1 %tobool.not.i12, label %Perl_padnamelist_store.exit, label %if.then12.i, !dbg !2432

if.then12.i:                                      ; preds = %if.end10.i
  tail call void @Perl_padname_free(ptr noundef nonnull %16) #11, !dbg !2433
  br label %Perl_padnamelist_store.exit, !dbg !2433

Perl_padnamelist_store.exit:                      ; preds = %if.end10.i, %if.then12.i
  store ptr %call.i8, ptr %arrayidx.i, align 8, !dbg !2434
  %call4 = tail call ptr @Perl_sv_rvweaken(ptr noundef %call2) #11, !dbg !2435
  %17 = load ptr, ptr @PL_comppad, align 8, !dbg !2436
  %call5 = tail call ptr @Perl_av_store(ptr noundef %17, i64 noundef %conv41.i, ptr noundef %call2) #11, !dbg !2436
  ret void, !dbg !2437
}

declare !dbg !2438 ptr @Perl_newRV(ptr noundef) local_unnamed_addr #3

declare !dbg !2441 ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_findmy_pvn(ptr noundef %namepv, i64 noundef %namelen, i32 noundef %flags) local_unnamed_addr #0 !dbg !2442 {
entry:
  %out_pn = alloca ptr, align 8
  %out_flags = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %namepv, metadata !2446, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %namelen, metadata !2447, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2448, metadata !DIExpression()), !dbg !2463
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pn) #11, !dbg !2464
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_flags) #11, !dbg !2465
  %tobool.not = icmp eq i32 %flags, 0, !dbg !2466
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2468

if.then:                                          ; preds = %entry
  %conv = zext i32 %flags to i64, !dbg !2469
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i64 noundef %conv) #11, !dbg !2470
  br label %if.end, !dbg !2470

if.end:                                           ; preds = %if.then, %entry
  %0 = load ptr, ptr @PL_compcv, align 8, !dbg !2471
  %tobool1.not = icmp eq ptr %0, null, !dbg !2471
  br i1 %tobool1.not, label %cleanup39, label %if.end3, !dbg !2473

if.end3:                                          ; preds = %if.end
  %1 = load i32, ptr @PL_cop_seqmax, align 4, !dbg !2474
  call void @llvm.dbg.value(metadata ptr %out_pn, metadata !2449, metadata !DIExpression(DW_OP_deref)), !dbg !2463
  call void @llvm.dbg.value(metadata ptr %out_flags, metadata !2450, metadata !DIExpression(DW_OP_deref)), !dbg !2463
  %call = call fastcc i64 @S_pad_findlex(ptr noundef %namepv, i64 noundef %namelen, i32 noundef %flags, ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull %out_pn, ptr noundef nonnull %out_flags), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %call, metadata !2451, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2463
  %sext = shl i64 %call, 32, !dbg !2475
  %cmp.not = icmp eq i64 %sext, -4294967296, !dbg !2477
  br i1 %cmp.not, label %if.end9, label %if.then7, !dbg !2478

if.then7:                                         ; preds = %if.end3
  %conv5 = ashr exact i64 %sext, 32, !dbg !2475
  br label %cleanup39, !dbg !2479

if.end9:                                          ; preds = %if.end3
  %2 = load i8, ptr %namepv, align 1, !dbg !2480
  %cmp11 = icmp eq i8 %2, 38, !dbg !2482
  br i1 %cmp11, label %cleanup39, label %if.end14, !dbg !2483

if.end14:                                         ; preds = %if.end9
  %3 = load ptr, ptr @PL_compcv, align 8, !dbg !2484
  %4 = load ptr, ptr %3, align 8, !dbg !2484
  %xcv_padlist_u = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 9, !dbg !2484
  %5 = load ptr, ptr %xcv_padlist_u, align 8, !dbg !2484
  %xpadl_alloc = getelementptr inbounds %struct.padlist, ptr %5, i64 0, i32 1, !dbg !2484
  %6 = load ptr, ptr %xpadl_alloc, align 8, !dbg !2484
  %7 = load ptr, ptr %6, align 8, !dbg !2484
  call void @llvm.dbg.value(metadata ptr %7, metadata !2452, metadata !DIExpression()), !dbg !2463
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %7, i64 0, i32 1, !dbg !2485
  %8 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !2485
  call void @llvm.dbg.value(metadata ptr %8, metadata !2455, metadata !DIExpression()), !dbg !2463
  %xpadnl_max_named = getelementptr inbounds %struct.padnamelist, ptr %7, i64 0, i32 3, !dbg !2486
  %9 = load i64, ptr %xpadnl_max_named, align 8, !dbg !2486
  %conv15 = trunc i64 %9 to i32, !dbg !2486
  call void @llvm.dbg.value(metadata i32 %conv15, metadata !2451, metadata !DIExpression()), !dbg !2463
  %cmp1671 = icmp sgt i32 %conv15, 0, !dbg !2487
  br i1 %cmp1671, label %for.body.preheader, label %cleanup39, !dbg !2488

for.body.preheader:                               ; preds = %if.end14
  %10 = and i64 %9, 4294967295, !dbg !2488
  br label %for.body, !dbg !2488

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %10, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2451, metadata !DIExpression()), !dbg !2463
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv, !dbg !2489
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !2489
  call void @llvm.dbg.value(metadata ptr %11, metadata !2456, metadata !DIExpression()), !dbg !2490
  %tobool18.not = icmp eq ptr %11, null, !dbg !2491
  br i1 %tobool18.not, label %for.inc, label %land.lhs.true, !dbg !2493

land.lhs.true:                                    ; preds = %for.body
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 7, !dbg !2494
  %12 = load i8, ptr %xpadn_len, align 8, !dbg !2494
  %conv19 = zext i8 %12 to i64, !dbg !2494
  %cmp20 = icmp eq i64 %conv19, %namelen, !dbg !2495
  br i1 %cmp20, label %land.lhs.true22, label %for.inc, !dbg !2496

land.lhs.true22:                                  ; preds = %land.lhs.true
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 8, !dbg !2497
  %13 = load i8, ptr %xpadn_flags, align 1, !dbg !2497
  %14 = and i8 %13, 1, !dbg !2497
  %tobool24.not = icmp eq i8 %14, 0, !dbg !2497
  br i1 %tobool24.not, label %land.lhs.true25, label %for.inc, !dbg !2498

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %xpadn_ourstash = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 1, !dbg !2499
  %15 = load ptr, ptr %xpadn_ourstash, align 8, !dbg !2499
  %tobool26.not = icmp eq ptr %15, null, !dbg !2499
  br i1 %tobool26.not, label %for.inc, label %land.lhs.true27, !dbg !2500

land.lhs.true27:                                  ; preds = %land.lhs.true25
  %16 = load ptr, ptr %11, align 8, !dbg !2501
  %cmp28 = icmp eq ptr %16, %namepv, !dbg !2502
  br i1 %cmp28, label %land.lhs.true33, label %lor.lhs.false, !dbg !2503

lor.lhs.false:                                    ; preds = %land.lhs.true27
  %bcmp = call i32 @bcmp(ptr %16, ptr nonnull %namepv, i64 %namelen), !dbg !2504
  %tobool32.not = icmp eq i32 %bcmp, 0, !dbg !2504
  br i1 %tobool32.not, label %land.lhs.true33, label %for.inc, !dbg !2505

land.lhs.true33:                                  ; preds = %lor.lhs.false, %land.lhs.true27
  %xpadn_low = getelementptr inbounds %struct.padname, ptr %11, i64 0, i32 3, !dbg !2506
  %17 = load i32, ptr %xpadn_low, align 8, !dbg !2506
  %cmp34 = icmp eq i32 %17, -1, !dbg !2507
  br i1 %cmp34, label %cleanup39.loopexit.split.loop.exit69, label %for.inc, !dbg !2508

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true22, %land.lhs.true25, %lor.lhs.false, %land.lhs.true33
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2509
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2451, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2463
  %cmp16 = icmp sgt i64 %indvars.iv, 1, !dbg !2487
  br i1 %cmp16, label %for.body, label %cleanup39, !dbg !2488, !llvm.loop !2510

cleanup39.loopexit.split.loop.exit69:             ; preds = %land.lhs.true33
  %idxprom68.le = and i64 %indvars.iv, 4294967295, !dbg !2489
  br label %cleanup39, !dbg !2512

cleanup39:                                        ; preds = %for.inc, %cleanup39.loopexit.split.loop.exit69, %if.end14, %if.end9, %if.end, %if.then7
  %retval.2 = phi i64 [ %conv5, %if.then7 ], [ -1, %if.end ], [ -1, %if.end9 ], [ %idxprom68.le, %cleanup39.loopexit.split.loop.exit69 ], [ -1, %if.end14 ], [ -1, %for.inc ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_flags) #11, !dbg !2512
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pn) #11, !dbg !2512
  ret i64 %retval.2, !dbg !2512
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @S_pad_findlex(ptr noundef %namepv, i64 noundef %namelen, i32 noundef %flags, ptr nocapture noundef readonly %cv, i32 noundef %seq, i32 noundef %Perl_warn, ptr noundef %out_capture, ptr noundef %out_name, ptr noundef %out_flags) unnamed_addr #0 !dbg !2513 {
entry:
  %new_capture = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %namepv, metadata !2518, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i64 %namelen, metadata !2519, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2520, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2521, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %seq, metadata !2522, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %Perl_warn, metadata !2523, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %out_capture, metadata !2524, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %out_name, metadata !2525, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %out_flags, metadata !2526, metadata !DIExpression()), !dbg !2558
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_capture) #11, !dbg !2559
  %0 = load ptr, ptr %cv, align 8, !dbg !2560
  %xcv_padlist_u = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 9, !dbg !2560
  %1 = load ptr, ptr %xcv_padlist_u, align 8, !dbg !2560
  call void @llvm.dbg.value(metadata ptr %1, metadata !2531, metadata !DIExpression()), !dbg !2558
  %and = and i32 %flags, 8, !dbg !2561
  %tobool.not = icmp eq i32 %and, 0, !dbg !2562
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !2533, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2558
  %and2 = and i32 %flags, -9, !dbg !2563
  call void @llvm.dbg.value(metadata i32 %and2, metadata !2520, metadata !DIExpression()), !dbg !2558
  %tobool3.not = icmp eq i32 %and2, 0, !dbg !2564
  br i1 %tobool3.not, label %if.end, label %if.then, !dbg !2566

if.then:                                          ; preds = %entry
  %conv = zext i32 %and2 to i64, !dbg !2567
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.27, i64 noundef %conv) #11, !dbg !2568
  br label %if.end, !dbg !2568

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %out_flags, align 4, !dbg !2569
  %tobool4 = icmp ne ptr %1, null, !dbg !2570
  br i1 %tobool4, label %if.then5, label %if.end210, !dbg !2571

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !2534, metadata !DIExpression()), !dbg !2572
  %xpadl_alloc = getelementptr inbounds %struct.padlist, ptr %1, i64 0, i32 1, !dbg !2573
  %2 = load ptr, ptr %xpadl_alloc, align 8, !dbg !2573
  %3 = load ptr, ptr %2, align 8, !dbg !2573
  call void @llvm.dbg.value(metadata ptr %3, metadata !2537, metadata !DIExpression()), !dbg !2572
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %3, i64 0, i32 1, !dbg !2574
  %4 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !2574
  call void @llvm.dbg.value(metadata ptr %4, metadata !2539, metadata !DIExpression()), !dbg !2572
  %xpadnl_max_named = getelementptr inbounds %struct.padnamelist, ptr %3, i64 0, i32 3, !dbg !2575
  %5 = load i64, ptr %xpadnl_max_named, align 8, !dbg !2575
  %conv6 = trunc i64 %5 to i32, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %conv6, metadata !2527, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 0, metadata !2534, metadata !DIExpression()), !dbg !2572
  %cmp527 = icmp sgt i32 %conv6, 0, !dbg !2576
  br i1 %cmp527, label %for.body.preheader, label %if.end210, !dbg !2577

for.body.preheader:                               ; preds = %if.then5
  %6 = and i64 %5, 4294967295, !dbg !2577
  br label %for.body, !dbg !2577

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %6, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  %fake_offset.0528 = phi i32 [ 0, %for.body.preheader ], [ %fake_offset.1.ph, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2527, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %fake_offset.0528, metadata !2534, metadata !DIExpression()), !dbg !2572
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv, !dbg !2578
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %7, metadata !2540, metadata !DIExpression()), !dbg !2579
  %tobool8.not = icmp eq ptr %7, null, !dbg !2580
  br i1 %tobool8.not, label %for.inc, label %land.lhs.true, !dbg !2582

land.lhs.true:                                    ; preds = %for.body
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %7, i64 0, i32 7, !dbg !2583
  %8 = load i8, ptr %xpadn_len, align 8, !dbg !2583
  %conv9 = zext i8 %8 to i64, !dbg !2583
  %cmp10 = icmp eq i64 %conv9, %namelen, !dbg !2584
  br i1 %cmp10, label %land.lhs.true12, label %for.inc, !dbg !2585

land.lhs.true12:                                  ; preds = %land.lhs.true
  %9 = load ptr, ptr %7, align 8, !dbg !2586
  %cmp13 = icmp eq ptr %9, %namepv, !dbg !2587
  br i1 %cmp13, label %if.then17, label %lor.lhs.false, !dbg !2588

lor.lhs.false:                                    ; preds = %land.lhs.true12
  %bcmp = tail call i32 @bcmp(ptr %9, ptr %namepv, i64 %namelen), !dbg !2589
  %tobool16.not = icmp eq i32 %bcmp, 0, !dbg !2589
  br i1 %tobool16.not, label %if.then17, label %for.inc, !dbg !2590

if.then17:                                        ; preds = %lor.lhs.false, %land.lhs.true12
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %7, i64 0, i32 8, !dbg !2591
  %10 = load i8, ptr %xpadn_flags, align 1, !dbg !2591
  %11 = and i8 %10, 1, !dbg !2591
  %tobool20.not = icmp eq i8 %11, 0, !dbg !2591
  %12 = trunc i64 %indvars.iv to i32, !dbg !2594
  br i1 %tobool20.not, label %if.end22, label %for.inc, !dbg !2594

if.end22:                                         ; preds = %if.then17
  call void @llvm.dbg.value(metadata ptr %7, metadata !2595, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i32 %seq, metadata !2600, metadata !DIExpression()), !dbg !2601
  %xpadn_low.i = getelementptr inbounds %struct.padname, ptr %7, i64 0, i32 3, !dbg !2604
  %13 = load i32, ptr %xpadn_low.i, align 8, !dbg !2604
  %cmp.i = icmp eq i32 %13, -1, !dbg !2606
  br i1 %cmp.i, label %for.inc, label %if.end.i, !dbg !2607

if.end.i:                                         ; preds = %if.end22
  %xpadn_high.i = getelementptr inbounds %struct.padname, ptr %7, i64 0, i32 4, !dbg !2608
  %14 = load i32, ptr %xpadn_high.i, align 4, !dbg !2608
  %cmp1.i = icmp eq i32 %14, -1, !dbg !2610
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i, !dbg !2611

if.then2.i:                                       ; preds = %if.end.i
  %cmp4.i = icmp ult i32 %13, %seq, !dbg !2612
  br i1 %cmp4.i, label %cond.true.i, label %cond.false.i, !dbg !2615

cond.true.i:                                      ; preds = %if.then2.i
  %sub.i = sub i32 %seq, %13, !dbg !2616
  %cmp6.i = icmp ult i32 %sub.i, 2147483647, !dbg !2617
  br i1 %cmp6.i, label %if.then35, label %for.inc, !dbg !2618

cond.false.i:                                     ; preds = %if.then2.i
  %sub8.i = sub i32 %13, %seq, !dbg !2619
  %cmp9.i = icmp slt i32 %sub8.i, 0, !dbg !2620
  br i1 %cmp9.i, label %if.then35, label %for.inc, !dbg !2615

if.else.i:                                        ; preds = %if.end.i
  %cmp14.i = icmp ugt i32 %13, %14, !dbg !2621
  %cmp17.i = icmp uge i32 %13, %seq, !dbg !2623
  %cmp19.not.i = icmp ult i32 %14, %seq
  br i1 %cmp14.i, label %cond.true15.i, label %cond.false20.i, !dbg !2624

cond.true15.i:                                    ; preds = %if.else.i
  %or.cond.i = select i1 %cmp17.i, i1 %cmp19.not.i, i1 false, !dbg !2625
  br i1 %or.cond.i, label %for.inc, label %if.then35, !dbg !2625

cond.false20.i:                                   ; preds = %if.else.i
  %or.cond45.i = select i1 %cmp17.i, i1 true, i1 %cmp19.not.i, !dbg !2626
  br i1 %or.cond45.i, label %for.inc, label %if.then35, !dbg !2626

for.inc:                                          ; preds = %cond.true.i, %cond.false.i, %cond.true15.i, %cond.false20.i, %if.then17, %if.end22, %lor.lhs.false, %land.lhs.true, %for.body
  %fake_offset.1.ph = phi i32 [ %fake_offset.0528, %for.body ], [ %fake_offset.0528, %land.lhs.true ], [ %fake_offset.0528, %lor.lhs.false ], [ %fake_offset.0528, %if.end22 ], [ %12, %if.then17 ], [ %fake_offset.0528, %cond.false20.i ], [ %fake_offset.0528, %cond.true15.i ], [ %fake_offset.0528, %cond.false.i ], [ %fake_offset.0528, %cond.true.i ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !2527, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2558
  call void @llvm.dbg.value(metadata i32 %fake_offset.1.ph, metadata !2534, metadata !DIExpression()), !dbg !2572
  %cmp = icmp sgt i64 %indvars.iv, 1, !dbg !2576
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !2627
  br i1 %cmp, label %for.body, label %for.end, !dbg !2577, !llvm.loop !2628

for.end:                                          ; preds = %for.inc
  call void @llvm.dbg.value(metadata i32 %fake_offset.1.ph, metadata !2534, metadata !DIExpression()), !dbg !2572
  %cmp30 = icmp sgt i32 %fake_offset.1.ph, 0
  br i1 %cmp30, label %if.else, label %if.end210, !dbg !2630

if.then35:                                        ; preds = %cond.true15.i, %cond.false20.i, %cond.true.i, %cond.false.i
  %15 = trunc i64 %indvars.iv to i32, !dbg !2594
  call void @llvm.dbg.value(metadata i32 0, metadata !2534, metadata !DIExpression()), !dbg !2572
  %idxprom36519 = and i64 %indvars.iv, 4294967295, !dbg !2631
  %arrayidx37 = getelementptr inbounds ptr, ptr %4, i64 %idxprom36519, !dbg !2631
  %16 = load ptr, ptr %arrayidx37, align 8, !dbg !2631
  store ptr %16, ptr %out_name, align 8, !dbg !2634
  %17 = load ptr, ptr %cv, align 8, !dbg !2635
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 12, !dbg !2635
  %18 = load i32, ptr %xcv_flags, align 4, !dbg !2635
  %and39 = and i32 %18, 128, !dbg !2635
  %tobool40.not = icmp eq i32 %and39, 0, !dbg !2635
  br i1 %tobool40.not, label %cond.false, label %if.end51, !dbg !2635

cond.false:                                       ; preds = %if.then35
  %and43 = and i32 %18, 256, !dbg !2636
  %tobool44.not = icmp eq i32 %and43, 0, !dbg !2636
  br i1 %tobool44.not, label %land.end, label %if.end51, !dbg !2637

land.end:                                         ; preds = %cond.false
  %xcv_root_u = getelementptr inbounds %struct.xpvcv, ptr %17, i64 0, i32 6, !dbg !2638
  %19 = load ptr, ptr %xcv_root_u, align 8, !dbg !2638
  %tobool46.not = icmp eq ptr %19, null, !dbg !2639
  %spec.select521 = select i1 %tobool46.not, i32 2, i32 0, !dbg !2640
  br label %if.end51, !dbg !2640

if.else:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 %fake_offset.1.ph, metadata !2527, metadata !DIExpression()), !dbg !2558
  %idxprom49520 = zext i32 %fake_offset.1.ph to i64, !dbg !2641
  %arrayidx50 = getelementptr inbounds ptr, ptr %4, i64 %idxprom49520, !dbg !2641
  %20 = load ptr, ptr %arrayidx50, align 8, !dbg !2641
  store ptr %20, ptr %out_name, align 8, !dbg !2643
  %xpadn_high = getelementptr inbounds %struct.padname, ptr %20, i64 0, i32 4, !dbg !2644
  %21 = load i32, ptr %xpadn_high, align 4, !dbg !2644
  br label %if.end51

if.end51:                                         ; preds = %land.end, %cond.false, %if.then35, %if.else
  %cmp524 = phi i1 [ false, %if.else ], [ true, %if.then35 ], [ true, %cond.false ], [ true, %land.end ]
  %storemerge = phi i32 [ %21, %if.else ], [ 1, %if.then35 ], [ 0, %cond.false ], [ %spec.select521, %land.end ], !dbg !2645
  %offset.1 = phi i32 [ %fake_offset.1.ph, %if.else ], [ %15, %if.then35 ], [ %15, %cond.false ], [ %15, %land.end ], !dbg !2572
  store i32 %storemerge, ptr %out_flags, align 4, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %offset.1, metadata !2527, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 undef, metadata !2534, metadata !DIExpression()), !dbg !2572
  %tobool52.not = icmp eq ptr %out_capture, null, !dbg !2646
  br i1 %tobool52.not, label %if.end51.if.end202_crit_edge, label %if.then53, !dbg !2647

if.end51.if.end202_crit_edge:                     ; preds = %if.end51
  %.pre = sext i32 %offset.1 to i64, !dbg !2648
  br label %cleanup320, !dbg !2647

if.then53:                                        ; preds = %if.end51
  %22 = load ptr, ptr %out_name, align 8, !dbg !2649
  %xpadn_ourstash = getelementptr inbounds %struct.padname, ptr %22, i64 0, i32 1, !dbg !2649
  %23 = load ptr, ptr %xpadn_ourstash, align 8, !dbg !2649
  %tobool54.not = icmp eq ptr %23, null, !dbg !2649
  br i1 %tobool54.not, label %if.end57, label %if.then55, !dbg !2651

if.then55:                                        ; preds = %if.then53
  store ptr null, ptr %out_capture, align 8, !dbg !2652
  %conv56 = sext i32 %offset.1 to i64, !dbg !2654
  br label %cleanup320

if.end57:                                         ; preds = %if.then53
  %24 = load ptr, ptr %cv, align 8, !dbg !2655
  %xcv_root_u59 = getelementptr inbounds %struct.xpvcv, ptr %24, i64 0, i32 6, !dbg !2655
  %25 = load ptr, ptr %xcv_root_u59, align 8, !dbg !2655
  %tobool60.not = icmp eq ptr %25, null, !dbg !2655
  br i1 %tobool60.not, label %cond.false76, label %cond.true61, !dbg !2656

cond.true61:                                      ; preds = %if.end57
  %xcv_flags63 = getelementptr inbounds %struct.xpvcv, ptr %24, i64 0, i32 12, !dbg !2657
  %26 = load i32, ptr %xcv_flags63, align 4, !dbg !2657
  %27 = and i32 %26, 224, !dbg !2658
  %28 = icmp eq i32 %27, 160, !dbg !2658
  br i1 %28, label %if.then79, label %if.end107, !dbg !2658

cond.false76:                                     ; preds = %if.end57
  %and77 = and i32 %storemerge, 1, !dbg !2659
  %tobool78.not = icmp eq i32 %and77, 0, !dbg !2659
  br i1 %tobool78.not, label %land.lhs.true87, label %if.then79, !dbg !2656

if.then79:                                        ; preds = %cond.true61, %cond.false76
  %tobool80.not = icmp eq i32 %Perl_warn, 0, !dbg !2660
  br i1 %tobool80.not, label %if.then166, label %if.then166.sink.split, !dbg !2663

land.lhs.true87:                                  ; preds = %cond.false76
  call void @llvm.dbg.value(metadata i32 %Perl_warn, metadata !2544, metadata !DIExpression()), !dbg !2664
  %and88 = and i32 %storemerge, 2, !dbg !2665
  %tobool89.not = icmp eq i32 %and88, 0, !dbg !2665
  br i1 %tobool89.not, label %if.end107, label %land.lhs.true90, !dbg !2667

land.lhs.true90:                                  ; preds = %land.lhs.true87
  %idxprom91 = sext i32 %offset.1 to i64, !dbg !2668
  %arrayidx92 = getelementptr inbounds ptr, ptr %4, i64 %idxprom91, !dbg !2668
  %29 = load ptr, ptr %arrayidx92, align 8, !dbg !2668
  %xpadn_flags93 = getelementptr inbounds %struct.padname, ptr %29, i64 0, i32 8, !dbg !2668
  %30 = load i8, ptr %xpadn_flags93, align 1, !dbg !2668
  %31 = and i8 %30, 2, !dbg !2668
  %tobool96 = icmp eq i8 %31, 0, !dbg !2668
  %tobool98 = icmp ne i32 %Perl_warn, 0
  %or.cond328 = and i1 %tobool98, %tobool96, !dbg !2669
  br i1 %or.cond328, label %land.lhs.true99, label %if.end107, !dbg !2669

land.lhs.true99:                                  ; preds = %land.lhs.true90
  %call100 = tail call zeroext i1 @Perl_ckwarn(i32 noundef 1) #11, !dbg !2670
  br i1 %call100, label %if.then102, label %if.end107, !dbg !2671

if.then102:                                       ; preds = %land.lhs.true99
  call void @llvm.dbg.value(metadata i32 0, metadata !2544, metadata !DIExpression()), !dbg !2664
  %32 = load i8, ptr %namepv, align 1, !dbg !2672
  %cmp104 = icmp eq i8 %32, 38, !dbg !2674
  %cond106 = select i1 %cmp104, ptr @.str.29, ptr @.str.30, !dbg !2672
  tail call void (i32, ptr, ...) @Perl_warner(i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond106, i32 noundef 1, i64 noundef %namelen, ptr noundef nonnull %namepv) #11, !dbg !2675
  br label %if.end107, !dbg !2676

if.end107:                                        ; preds = %cond.true61, %if.then102, %land.lhs.true99, %land.lhs.true90, %land.lhs.true87
  %newwarn.0 = phi i32 [ 0, %if.then102 ], [ 1, %land.lhs.true99 ], [ %Perl_warn, %land.lhs.true90 ], [ %Perl_warn, %land.lhs.true87 ], [ %Perl_warn, %cond.true61 ], !dbg !2664
  call void @llvm.dbg.value(metadata i32 %newwarn.0, metadata !2544, metadata !DIExpression()), !dbg !2664
  %cv.val477.pre = load ptr, ptr %cv, align 8, !dbg !2664
  br i1 %cmp524, label %if.end130, label %land.lhs.true109, !dbg !2677

land.lhs.true109:                                 ; preds = %if.end107
  %xcv_flags111 = getelementptr inbounds %struct.xpvcv, ptr %cv.val477.pre, i64 0, i32 12, !dbg !2678
  %33 = load i32, ptr %xcv_flags111, align 4, !dbg !2678
  %34 = and i32 %33, 224, !dbg !2679
  %35 = icmp eq i32 %34, 160, !dbg !2679
  br i1 %35, label %cleanup205, label %if.end130, !dbg !2679

if.end130:                                        ; preds = %if.end107, %land.lhs.true109
  %36 = load ptr, ptr %xpadl_alloc, align 8, !dbg !2680
  call void @llvm.dbg.value(metadata ptr undef, metadata !2681, metadata !DIExpression()), !dbg !2687
  %xcv_depth.i = getelementptr inbounds %struct.xpvcv, ptr %cv.val477.pre, i64 0, i32 13, !dbg !2689
  %37 = load i32, ptr %xcv_depth.i, align 4, !dbg !2680
  %tobool133.not = icmp eq i32 %37, 0, !dbg !2680
  %spec.select522 = select i1 %tobool133.not, i32 1, i32 %37, !dbg !2680
  %idxprom139 = sext i32 %spec.select522 to i64, !dbg !2680
  %arrayidx140 = getelementptr inbounds ptr, ptr %36, i64 %idxprom139, !dbg !2680
  %38 = load ptr, ptr %arrayidx140, align 8, !dbg !2680
  %sv_u = getelementptr inbounds %struct.av, ptr %38, i64 0, i32 3, !dbg !2680
  %39 = load ptr, ptr %sv_u, align 8, !dbg !2680
  %idxprom141 = sext i32 %offset.1 to i64, !dbg !2680
  %arrayidx142 = getelementptr inbounds ptr, ptr %39, i64 %idxprom141, !dbg !2680
  %40 = load ptr, ptr %arrayidx142, align 8, !dbg !2680
  store ptr %40, ptr %out_capture, align 8, !dbg !2690
  %sv_flags = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 2, !dbg !2691
  %41 = load i32, ptr %sv_flags, align 4, !dbg !2691
  %and143 = and i32 %41, 262144, !dbg !2691
  %tobool144.not = icmp eq i32 %and143, 0, !dbg !2691
  br i1 %tobool144.not, label %cleanup320, label %land.lhs.true145, !dbg !2693

land.lhs.true145:                                 ; preds = %if.end130
  %cv.val = load ptr, ptr %cv, align 8, !dbg !2694
  call void @llvm.dbg.value(metadata ptr undef, metadata !2681, metadata !DIExpression()), !dbg !2695
  %xcv_depth.i480 = getelementptr inbounds %struct.xpvcv, ptr %cv.val, i64 0, i32 13, !dbg !2697
  %42 = load i32, ptr %xcv_depth.i480, align 4, !dbg !2694
  %tobool147.not = icmp eq i32 %42, 0, !dbg !2694
  %brmerge = or i1 %tobool.not, %tobool147.not, !dbg !2698
  br i1 %brmerge, label %land.lhs.true150, label %cleanup320, !dbg !2698

land.lhs.true150:                                 ; preds = %land.lhs.true145
  %arrayidx152 = getelementptr inbounds ptr, ptr %4, i64 %idxprom141, !dbg !2699
  %43 = load ptr, ptr %arrayidx152, align 8, !dbg !2699
  %xpadn_flags153 = getelementptr inbounds %struct.padname, ptr %43, i64 0, i32 8, !dbg !2699
  %44 = load i8, ptr %xpadn_flags153, align 1, !dbg !2699
  %45 = and i8 %44, 2, !dbg !2699
  %tobool156.not = icmp eq i8 %45, 0, !dbg !2699
  br i1 %tobool156.not, label %if.then166.sink.split, label %cleanup320, !dbg !2700

if.then166.sink.split:                            ; preds = %land.lhs.true150, %if.then79
  %.sink = phi ptr [ %22, %if.then79 ], [ %43, %land.lhs.true150 ]
  %.val = load ptr, ptr %.sink, align 8, !dbg !2701
  %46 = getelementptr i8, ptr %.sink, i64 40, !dbg !2701
  %.val475 = load i8, ptr %46, align 8, !dbg !2701
  %47 = load i8, ptr %.val, align 1, !dbg !2701
  %cmp.i478 = icmp eq i8 %47, 38, !dbg !2701
  %cond.i = select i1 %cmp.i478, ptr @.str.29, ptr @.str.30, !dbg !2701
  %conv2.i = zext i8 %.val475 to i64, !dbg !2701
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond.i, i32 noundef 1, i64 noundef %conv2.i, ptr noundef nonnull %.val) #11, !dbg !2701
  br label %if.then166, !dbg !2701

if.then166:                                       ; preds = %if.then166.sink.split, %if.then79
  store ptr null, ptr %out_capture, align 8, !dbg !2701
  %cmp167.not = icmp eq i64 %namelen, 0, !dbg !2702
  br i1 %cmp167.not, label %if.else196, label %land.lhs.true169, !dbg !2706

land.lhs.true169:                                 ; preds = %if.then166
  %48 = load i8, ptr %namepv, align 1, !dbg !2707
  switch i8 %48, label %if.else196 [
    i8 64, label %if.then173
    i8 37, label %if.then183
    i8 38, label %if.then193
  ], !dbg !2708

if.then173:                                       ; preds = %land.lhs.true169
  %call174 = tail call ptr @Perl_newSV_type(i32 noundef 11) #11, !dbg !2709
  %call175 = tail call ptr @Perl_sv_2mortal(ptr noundef %call174) #11, !dbg !2709
  store ptr %call175, ptr %out_capture, align 8, !dbg !2710
  %conv203517 = sext i32 %offset.1 to i64, !dbg !2648
  br label %cleanup320

if.then183:                                       ; preds = %land.lhs.true169
  %call184 = tail call ptr @Perl_newSV_type(i32 noundef 12) #11, !dbg !2711
  %call185 = tail call ptr @Perl_sv_2mortal(ptr noundef %call184) #11, !dbg !2711
  store ptr %call185, ptr %out_capture, align 8, !dbg !2713
  %conv203514 = sext i32 %offset.1 to i64, !dbg !2648
  br label %cleanup320

if.then193:                                       ; preds = %land.lhs.true169
  %call194 = tail call ptr @Perl_newSV_type(i32 noundef 13) #11, !dbg !2714
  %call195 = tail call ptr @Perl_sv_2mortal(ptr noundef %call194) #11, !dbg !2714
  store ptr %call195, ptr %out_capture, align 8, !dbg !2716
  %conv203516 = sext i32 %offset.1 to i64, !dbg !2648
  br label %cleanup320

if.else196:                                       ; preds = %land.lhs.true169, %if.then166
  %call197 = tail call ptr @Perl_sv_newmortal() #11, !dbg !2717
  store ptr %call197, ptr %out_capture, align 8, !dbg !2718
  %conv203515 = sext i32 %offset.1 to i64, !dbg !2648
  br label %cleanup320

cleanup205:                                       ; preds = %land.lhs.true109
  %49 = load ptr, ptr %out_name, align 8, !dbg !2719
  call void @llvm.dbg.value(metadata ptr %49, metadata !2551, metadata !DIExpression()), !dbg !2720
  %xcv_outside = getelementptr inbounds %struct.xpvcv, ptr %cv.val477.pre, i64 0, i32 10, !dbg !2721
  %50 = load ptr, ptr %xcv_outside, align 8, !dbg !2721
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv, ptr %cv.val477.pre, i64 0, i32 11, !dbg !2721
  %51 = load i32, ptr %xcv_outside_seq, align 8, !dbg !2721
  %call127 = tail call fastcc i64 @S_pad_findlex(ptr noundef %namepv, i64 noundef %namelen, i32 noundef %and2, ptr noundef %50, i32 noundef %51, i32 noundef %newwarn.0, ptr noundef nonnull %out_capture, ptr noundef nonnull %out_name, ptr noundef nonnull %out_flags), !dbg !2721
  store ptr %49, ptr %out_name, align 8, !dbg !2722
  %conv128 = sext i32 %offset.1 to i64, !dbg !2723
  br label %cleanup320

if.end210:                                        ; preds = %if.then5, %for.end, %if.end
  %52 = load ptr, ptr %cv, align 8, !dbg !2724
  %xcv_outside212 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 10, !dbg !2724
  %53 = load ptr, ptr %xcv_outside212, align 8, !dbg !2724
  %tobool213.not = icmp eq ptr %53, null, !dbg !2724
  br i1 %tobool213.not, label %cleanup320, label %if.end215, !dbg !2726

if.end215:                                        ; preds = %if.end210
  %tobool216.not = icmp eq ptr %out_capture, null, !dbg !2727
  br i1 %tobool216.not, label %cond.false218, label %cond.end237, !dbg !2727

cond.false218:                                    ; preds = %if.end215
  %xcv_flags220 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 12, !dbg !2728
  %54 = load i32, ptr %xcv_flags220, align 4, !dbg !2728
  %55 = and i32 %54, 160, !dbg !2728
  %56 = icmp eq i32 %55, 0, !dbg !2728
  br i1 %56, label %lor.lhs.false228, label %cond.end237, !dbg !2728

lor.lhs.false228:                                 ; preds = %cond.false218
  %sv_flags229 = getelementptr inbounds %struct.cv, ptr %cv, i64 0, i32 2, !dbg !2728
  %57 = load i32, ptr %sv_flags229, align 4, !dbg !2728
  %and230 = and i32 %57, 255, !dbg !2728
  %cmp231 = icmp eq i32 %and230, 14, !dbg !2728
  %spec.select = select i1 %cmp231, ptr null, ptr %new_capture, !dbg !2728
  br label %cond.end237, !dbg !2728

cond.end237:                                      ; preds = %if.end215, %lor.lhs.false228, %cond.false218
  %cond238 = phi ptr [ null, %cond.false218 ], [ %spec.select, %lor.lhs.false228 ], [ %out_capture, %if.end215 ], !dbg !2727
  call void @llvm.dbg.value(metadata ptr %cond238, metadata !2530, metadata !DIExpression()), !dbg !2558
  %cmp239 = icmp eq ptr %cond238, %new_capture, !dbg !2729
  %mul = select i1 %cmp239, i32 8, i32 0, !dbg !2729
  %or = or i32 %mul, %and2, !dbg !2729
  %xcv_outside_seq244 = getelementptr inbounds %struct.xpvcv, ptr %52, i64 0, i32 11, !dbg !2729
  %58 = load i32, ptr %xcv_outside_seq244, align 8, !dbg !2729
  %call245 = call fastcc i64 @S_pad_findlex(ptr noundef %namepv, i64 noundef %namelen, i32 noundef %or, ptr noundef nonnull %53, i32 noundef %58, i32 noundef 1, ptr noundef %cond238, ptr noundef %out_name, ptr noundef nonnull %out_flags), !dbg !2729
  %conv246 = trunc i64 %call245 to i32, !dbg !2729
  call void @llvm.dbg.value(metadata i32 %conv246, metadata !2527, metadata !DIExpression()), !dbg !2558
  %sext.mask = and i64 %call245, 4294967295, !dbg !2730
  %cmp248 = icmp eq i64 %sext.mask, 4294967295, !dbg !2730
  br i1 %cmp248, label %cleanup320, label %if.end251, !dbg !2732

if.end251:                                        ; preds = %cond.end237
  %59 = load ptr, ptr %cv, align 8, !dbg !2733
  %xcv_root_u253 = getelementptr inbounds %struct.xpvcv, ptr %59, i64 0, i32 6, !dbg !2733
  %60 = load ptr, ptr %xcv_root_u253, align 8, !dbg !2733
  %tobool254 = icmp eq ptr %60, null, !dbg !2733
  %or.cond329 = select i1 %tobool254, i1 %tobool4, i1 false, !dbg !2735
  br i1 %or.cond329, label %if.end258, label %cleanup320, !dbg !2735

if.end258:                                        ; preds = %if.end251
  %61 = load ptr, ptr %out_name, align 8, !dbg !2736
  call void @llvm.dbg.value(metadata ptr %61, metadata !2737, metadata !DIExpression()) #11, !dbg !2743
  %call.i = call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 48) #11, !dbg !2745
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2742, metadata !DIExpression()) #11, !dbg !2743
  %xpadn_refcnt.i = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 5, !dbg !2746
  store i32 1, ptr %xpadn_refcnt.i, align 8, !dbg !2747
  %62 = load ptr, ptr %61, align 8, !dbg !2748
  store ptr %62, ptr %call.i, align 8, !dbg !2749
  %63 = load ptr, ptr %61, align 8, !dbg !2750
  %add.ptr.i = getelementptr inbounds i8, ptr %63, i64 -42, !dbg !2750
  %xpadn_refcnt3.i = getelementptr inbounds %struct.padname, ptr %add.ptr.i, i64 0, i32 5, !dbg !2750
  %64 = load i32, ptr %xpadn_refcnt3.i, align 8, !dbg !2751
  %inc.i = add i32 %64, 1, !dbg !2751
  store i32 %inc.i, ptr %xpadn_refcnt3.i, align 8, !dbg !2751
  %xpadn_flags.i = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 8, !dbg !2752
  store i8 1, ptr %xpadn_flags.i, align 1, !dbg !2753
  %xpadn_len.i = getelementptr inbounds %struct.padname, ptr %61, i64 0, i32 7, !dbg !2754
  %65 = load i8, ptr %xpadn_len.i, align 8, !dbg !2754
  %xpadn_len4.i = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 7, !dbg !2755
  store i8 %65, ptr %xpadn_len4.i, align 8, !dbg !2756
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2554, metadata !DIExpression()), !dbg !2757
  %66 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2758
  call void @llvm.dbg.value(metadata ptr %66, metadata !2556, metadata !DIExpression()), !dbg !2757
  %67 = load ptr, ptr @PL_comppad, align 8, !dbg !2759
  call void @llvm.dbg.value(metadata ptr %67, metadata !2557, metadata !DIExpression()), !dbg !2757
  %xpadl_alloc260 = getelementptr inbounds %struct.padlist, ptr %1, i64 0, i32 1, !dbg !2760
  %68 = load ptr, ptr %xpadl_alloc260, align 8, !dbg !2760
  %69 = load ptr, ptr %68, align 8, !dbg !2760
  store ptr %69, ptr @PL_comppad_name, align 8, !dbg !2761
  %arrayidx262 = getelementptr inbounds ptr, ptr %68, i64 1, !dbg !2762
  %70 = load ptr, ptr %arrayidx262, align 8, !dbg !2762
  store ptr %70, ptr @PL_comppad, align 8, !dbg !2763
  %sv_u263 = getelementptr inbounds %struct.av, ptr %70, i64 0, i32 3, !dbg !2764
  %71 = load ptr, ptr %sv_u263, align 8, !dbg !2764
  store ptr %71, ptr @PL_curpad, align 8, !dbg !2765
  %72 = load ptr, ptr %out_name, align 8, !dbg !2766
  %xpadn_flags264 = getelementptr inbounds %struct.padname, ptr %72, i64 0, i32 8, !dbg !2766
  %73 = load i8, ptr %xpadn_flags264, align 1, !dbg !2766
  %74 = and i8 %73, 2, !dbg !2766
  %75 = zext i8 %74 to i32, !dbg !2766
  %xpadn_type_u = getelementptr inbounds %struct.padname, ptr %72, i64 0, i32 2, !dbg !2766
  %76 = load ptr, ptr %xpadn_type_u, align 8, !dbg !2766
  %xpadn_ourstash269 = getelementptr inbounds %struct.padname, ptr %72, i64 0, i32 1, !dbg !2766
  %77 = load ptr, ptr %xpadn_ourstash269, align 8, !dbg !2766
  %call270 = call fastcc i64 @S_pad_alloc_name(ptr noundef nonnull %call.i, i32 noundef %75, ptr noundef %76, ptr noundef %77), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %call270, metadata !2528, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2558
  %78 = load i32, ptr %out_flags, align 4, !dbg !2767
  %xpadn_high272 = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 4, !dbg !2767
  store i32 %78, ptr %xpadn_high272, align 4, !dbg !2767
  %xpadn_low = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 3, !dbg !2769
  store i32 0, ptr %xpadn_low, align 8, !dbg !2769
  %xpadn_ourstash276 = getelementptr inbounds %struct.padname, ptr %call.i, i64 0, i32 1, !dbg !2771
  %79 = load ptr, ptr %xpadn_ourstash276, align 8, !dbg !2771
  %tobool277.not = icmp eq ptr %79, null, !dbg !2771
  br i1 %tobool277.not, label %if.else279, label %if.end311, !dbg !2773

if.else279:                                       ; preds = %if.end258
  %80 = load ptr, ptr %cv, align 8, !dbg !2774
  %xcv_flags281 = getelementptr inbounds %struct.xpvcv, ptr %80, i64 0, i32 12, !dbg !2774
  %81 = load i32, ptr %xcv_flags281, align 4, !dbg !2774
  %82 = and i32 %81, 160, !dbg !2774
  %83 = icmp eq i32 %82, 0, !dbg !2774
  br i1 %83, label %lor.lhs.false289, label %do.body295, !dbg !2774

lor.lhs.false289:                                 ; preds = %if.else279
  %sv_flags290 = getelementptr inbounds %struct.cv, ptr %cv, i64 0, i32 2, !dbg !2774
  %84 = load i32, ptr %sv_flags290, align 4, !dbg !2774
  %and291 = and i32 %84, 255, !dbg !2774
  %cmp292 = icmp eq i32 %and291, 14, !dbg !2774
  br i1 %cmp292, label %do.body295, label %if.else302, !dbg !2776

do.body295:                                       ; preds = %if.else279, %lor.lhs.false289
  store i32 %conv246, ptr %xpadn_low, align 8, !dbg !2777
  %85 = load ptr, ptr %cv, align 8, !dbg !2780
  %xcv_flags300 = getelementptr inbounds %struct.xpvcv, ptr %85, i64 0, i32 12, !dbg !2780
  %86 = load i32, ptr %xcv_flags300, align 4, !dbg !2780
  %or301 = or i32 %86, 32, !dbg !2780
  store i32 %or301, ptr %xcv_flags300, align 4, !dbg !2780
  br label %if.end311, !dbg !2781

if.else302:                                       ; preds = %lor.lhs.false289
  %87 = load ptr, ptr @PL_comppad, align 8, !dbg !2782
  %sext = shl i64 %call270, 32, !dbg !2782
  %conv303 = ashr exact i64 %sext, 32, !dbg !2782
  %88 = load ptr, ptr %cond238, align 8, !dbg !2782
  call void @llvm.dbg.value(metadata ptr %88, metadata !2784, metadata !DIExpression()), !dbg !2789
  %cmp.not.i = icmp eq ptr %88, null, !dbg !2791
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !2793

if.then.i:                                        ; preds = %if.else302
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 1, !dbg !2794
  %89 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2795
  %inc.i484 = add i32 %89, 1, !dbg !2795
  store i32 %inc.i484, ptr %sv_refcnt.i, align 8, !dbg !2795
  br label %S_SvREFCNT_inc.exit, !dbg !2794

S_SvREFCNT_inc.exit:                              ; preds = %if.else302, %if.then.i
  %call305 = call ptr @Perl_av_store(ptr noundef %87, i64 noundef %conv303, ptr noundef %88) #11, !dbg !2782
  store i32 %conv246, ptr %xpadn_low, align 8, !dbg !2796
  br label %if.end311

if.end311:                                        ; preds = %do.body295, %S_SvREFCNT_inc.exit, %if.end258
  store ptr %call.i, ptr %out_name, align 8, !dbg !2798
  %90 = load i32, ptr %xpadn_high272, align 4, !dbg !2799
  store i32 %90, ptr %out_flags, align 4, !dbg !2800
  store ptr %66, ptr @PL_comppad_name, align 8, !dbg !2801
  store ptr %67, ptr @PL_comppad, align 8, !dbg !2802
  %tobool313.not = icmp eq ptr %67, null, !dbg !2803
  br i1 %tobool313.not, label %cond.end317, label %cond.true314, !dbg !2803

cond.true314:                                     ; preds = %if.end311
  %sv_u315 = getelementptr inbounds %struct.av, ptr %67, i64 0, i32 3, !dbg !2804
  %91 = load ptr, ptr %sv_u315, align 8, !dbg !2804
  br label %cond.end317, !dbg !2803

cond.end317:                                      ; preds = %if.end311, %cond.true314
  %cond318 = phi ptr [ %91, %cond.true314 ], [ null, %if.end311 ], !dbg !2803
  store ptr %cond318, ptr @PL_curpad, align 8, !dbg !2805
  %sext465 = shl i64 %call270, 32, !dbg !2806
  %conv319 = ashr exact i64 %sext465, 32, !dbg !2806
  br label %cleanup320, !dbg !2807

cleanup320:                                       ; preds = %if.end130, %if.end51.if.end202_crit_edge, %land.lhs.true145, %land.lhs.true150, %if.else196, %if.then173, %if.then183, %if.then193, %cleanup205, %if.then55, %if.end251, %cond.end237, %if.end210, %cond.end317
  %retval.2 = phi i64 [ %conv319, %cond.end317 ], [ %conv128, %cleanup205 ], [ -1, %if.end210 ], [ -1, %cond.end237 ], [ 0, %if.end251 ], [ %conv56, %if.then55 ], [ %conv203514, %if.then183 ], [ %conv203515, %if.else196 ], [ %conv203516, %if.then193 ], [ %conv203517, %if.then173 ], [ %.pre, %if.end51.if.end202_crit_edge ], [ %idxprom141, %if.end130 ], [ %idxprom141, %land.lhs.true145 ], [ %idxprom141, %land.lhs.true150 ], !dbg !2558
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_capture) #11, !dbg !2808
  ret i64 %retval.2, !dbg !2808
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_findmy_pv(ptr noundef %name, i32 noundef %flags) local_unnamed_addr #0 !dbg !2809 {
entry:
  call void @llvm.dbg.value(metadata ptr %name, metadata !2813, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2814, metadata !DIExpression()), !dbg !2815
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %name) #12, !dbg !2816
  %call1 = tail call i64 @Perl_pad_findmy_pvn(ptr noundef %name, i64 noundef %call, i32 noundef %flags), !dbg !2816
  ret i64 %call1, !dbg !2817
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_pad_findmy_sv(ptr noundef %name, i32 noundef %flags) local_unnamed_addr #0 !dbg !2818 {
entry:
  %namelen = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %name, metadata !2822, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2823, metadata !DIExpression()), !dbg !2826
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %namelen) #11, !dbg !2827
  %sv_flags = getelementptr inbounds %struct.sv, ptr %name, i64 0, i32 2, !dbg !2828
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2828
  %and = and i32 %0, 538969088, !dbg !2828
  %cmp = icmp eq i32 %and, 536871936, !dbg !2828
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2828

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %name, align 8, !dbg !2828
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !2828
  %2 = load i64, ptr %xpv_cur, align 8, !dbg !2828
  call void @llvm.dbg.value(metadata i64 %2, metadata !2825, metadata !DIExpression()), !dbg !2826
  store i64 %2, ptr %namelen, align 8, !dbg !2828
  %sv_u = getelementptr inbounds %struct.sv, ptr %name, i64 0, i32 3, !dbg !2828
  %3 = load ptr, ptr %sv_u, align 8, !dbg !2828
  br label %cond.end, !dbg !2828

cond.false:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %namelen, metadata !2825, metadata !DIExpression(DW_OP_deref)), !dbg !2826
  %call = call ptr @Perl_sv_2pvutf8(ptr noundef nonnull %name, ptr noundef nonnull %namelen) #11, !dbg !2828
  %.pre = load i64, ptr %namelen, align 8, !dbg !2829
  br label %cond.end, !dbg !2828

cond.end:                                         ; preds = %cond.false, %cond.true
  %4 = phi i64 [ %2, %cond.true ], [ %.pre, %cond.false ], !dbg !2829
  %cond = phi ptr [ %3, %cond.true ], [ %call, %cond.false ], !dbg !2828
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2824, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i64 %4, metadata !2825, metadata !DIExpression()), !dbg !2826
  %call1 = call i64 @Perl_pad_findmy_pvn(ptr noundef %cond, i64 noundef %4, i32 noundef %flags), !dbg !2829
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %namelen) #11, !dbg !2830
  ret i64 %call1, !dbg !2831
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_find_rundefsvoffset() local_unnamed_addr #0 !dbg !2832 {
entry:
  %out_pn = alloca ptr, align 8
  %out_flags = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pn) #11, !dbg !2838
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_flags) #11, !dbg !2839
  %call = tail call ptr @Perl_find_runcv(ptr noundef null) #11, !dbg !2840
  %0 = load ptr, ptr @PL_curcop, align 8, !dbg !2840
  %cop_seq = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 11, !dbg !2840
  %1 = load i32, ptr %cop_seq, align 4, !dbg !2840
  call void @llvm.dbg.value(metadata ptr %out_pn, metadata !2836, metadata !DIExpression(DW_OP_deref)), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %out_flags, metadata !2837, metadata !DIExpression(DW_OP_deref)), !dbg !2841
  %call1 = call fastcc i64 @S_pad_findlex(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0, ptr noundef %call, i32 noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull %out_pn, ptr noundef nonnull %out_flags), !dbg !2840
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_flags) #11, !dbg !2842
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pn) #11, !dbg !2842
  ret i64 %call1, !dbg !2843
}

declare !dbg !2844 ptr @Perl_find_runcv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_find_rundefsv() local_unnamed_addr #0 !dbg !2847 {
entry:
  %name = alloca ptr, align 8
  %flags = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #11, !dbg !2854
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11, !dbg !2855
  %call = tail call ptr @Perl_find_runcv(ptr noundef null) #11, !dbg !2856
  %0 = load ptr, ptr @PL_curcop, align 8, !dbg !2856
  %cop_seq = getelementptr inbounds %struct.cop, ptr %0, i64 0, i32 11, !dbg !2856
  %1 = load i32, ptr %cop_seq, align 4, !dbg !2856
  call void @llvm.dbg.value(metadata ptr %name, metadata !2851, metadata !DIExpression(DW_OP_deref)), !dbg !2857
  call void @llvm.dbg.value(metadata ptr %flags, metadata !2852, metadata !DIExpression(DW_OP_deref)), !dbg !2857
  %call1 = call fastcc i64 @S_pad_findlex(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0, ptr noundef %call, i32 noundef %1, i32 noundef 1, ptr noundef null, ptr noundef nonnull %name, ptr noundef nonnull %flags), !dbg !2856
  call void @llvm.dbg.value(metadata i64 %call1, metadata !2853, metadata !DIExpression()), !dbg !2857
  %cmp = icmp eq i64 %call1, -1, !dbg !2858
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2860

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %name, align 8, !dbg !2861
  call void @llvm.dbg.value(metadata ptr %2, metadata !2851, metadata !DIExpression()), !dbg !2857
  %xpadn_ourstash = getelementptr inbounds %struct.padname, ptr %2, i64 0, i32 1, !dbg !2861
  %3 = load ptr, ptr %xpadn_ourstash, align 8, !dbg !2861
  %tobool.not = icmp eq ptr %3, null, !dbg !2861
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2862

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr @PL_defgv, align 8, !dbg !2863
  %sv_u = getelementptr inbounds %struct.gv, ptr %4, i64 0, i32 3, !dbg !2863
  %5 = load ptr, ptr %sv_u, align 8, !dbg !2863
  %6 = load ptr, ptr %5, align 8, !dbg !2863
  %tobool2.not = icmp eq ptr %6, null, !dbg !2863
  br i1 %tobool2.not, label %cond.false, label %cleanup, !dbg !2863

cond.false:                                       ; preds = %if.then
  %call6 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %4, i32 noundef 0) #11, !dbg !2863
  %sv_u7 = getelementptr inbounds %struct.gv, ptr %call6, i64 0, i32 3, !dbg !2863
  %7 = load ptr, ptr %sv_u7, align 8, !dbg !2863
  br label %cleanup, !dbg !2863

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr @PL_curpad, align 8, !dbg !2864
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %call1, !dbg !2864
  br label %cleanup, !dbg !2865

cleanup:                                          ; preds = %cond.false, %if.then, %if.end
  %retval.0.in = phi ptr [ %arrayidx, %if.end ], [ %7, %cond.false ], [ %5, %if.then ]
  %retval.0 = load ptr, ptr %retval.0.in, align 8, !dbg !2857
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11, !dbg !2866
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #11, !dbg !2866
  ret ptr %retval.0, !dbg !2866
}

declare !dbg !2867 ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_find_rundefsv2(ptr nocapture noundef readonly %cv, i32 noundef %seq) local_unnamed_addr #0 !dbg !2870 {
entry:
  %name = alloca ptr, align 8
  %flags = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %cv, metadata !2874, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i32 %seq, metadata !2875, metadata !DIExpression()), !dbg !2879
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #11, !dbg !2880
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #11, !dbg !2881
  call void @llvm.dbg.value(metadata ptr %name, metadata !2876, metadata !DIExpression(DW_OP_deref)), !dbg !2879
  call void @llvm.dbg.value(metadata ptr %flags, metadata !2877, metadata !DIExpression(DW_OP_deref)), !dbg !2879
  %call = call fastcc i64 @S_pad_findlex(ptr noundef nonnull @.str.5, i64 noundef 2, i32 noundef 0, ptr noundef %cv, i32 noundef %seq, i32 noundef 1, ptr noundef null, ptr noundef nonnull %name, ptr noundef nonnull %flags), !dbg !2882
  call void @llvm.dbg.value(metadata i64 %call, metadata !2878, metadata !DIExpression()), !dbg !2879
  %cmp = icmp eq i64 %call, -1, !dbg !2883
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2885

lor.lhs.false:                                    ; preds = %entry
  %0 = load ptr, ptr %name, align 8, !dbg !2886
  call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2879
  %xpadn_ourstash = getelementptr inbounds %struct.padname, ptr %0, i64 0, i32 1, !dbg !2886
  %1 = load ptr, ptr %xpadn_ourstash, align 8, !dbg !2886
  %tobool.not = icmp eq ptr %1, null, !dbg !2886
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2887

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr @PL_defgv, align 8, !dbg !2888
  %sv_u = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 3, !dbg !2888
  %3 = load ptr, ptr %sv_u, align 8, !dbg !2888
  %4 = load ptr, ptr %3, align 8, !dbg !2888
  %tobool1.not = icmp eq ptr %4, null, !dbg !2888
  br i1 %tobool1.not, label %cond.false, label %cleanup, !dbg !2888

cond.false:                                       ; preds = %if.then
  %call5 = call ptr @Perl_gv_add_by_type(ptr noundef nonnull %2, i32 noundef 0) #11, !dbg !2888
  %sv_u6 = getelementptr inbounds %struct.gv, ptr %call5, i64 0, i32 3, !dbg !2888
  %5 = load ptr, ptr %sv_u6, align 8, !dbg !2888
  br label %cleanup, !dbg !2888

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %cv, align 8, !dbg !2889
  %xcv_padlist_u = getelementptr inbounds %struct.xpvcv, ptr %6, i64 0, i32 9, !dbg !2889
  %7 = load ptr, ptr %xcv_padlist_u, align 8, !dbg !2889
  %xpadl_alloc = getelementptr inbounds %struct.padlist, ptr %7, i64 0, i32 1, !dbg !2889
  %8 = load ptr, ptr %xpadl_alloc, align 8, !dbg !2889
  call void @llvm.dbg.value(metadata ptr undef, metadata !2681, metadata !DIExpression()), !dbg !2890
  %xcv_depth.i = getelementptr inbounds %struct.xpvcv, ptr %6, i64 0, i32 13, !dbg !2892
  %9 = load i32, ptr %xcv_depth.i, align 4, !dbg !2889
  %idxprom = sext i32 %9 to i64, !dbg !2889
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom, !dbg !2889
  %10 = load ptr, ptr %arrayidx, align 8, !dbg !2889
  %sv_u11 = getelementptr inbounds %struct.av, ptr %10, i64 0, i32 3, !dbg !2889
  %11 = load ptr, ptr %sv_u11, align 8, !dbg !2889
  %arrayidx12 = getelementptr inbounds ptr, ptr %11, i64 %call, !dbg !2889
  br label %cleanup, !dbg !2893

cleanup:                                          ; preds = %cond.false, %if.then, %if.end
  %retval.0.in = phi ptr [ %arrayidx12, %if.end ], [ %5, %cond.false ], [ %3, %if.then ]
  %retval.0 = load ptr, ptr %retval.0.in, align 8, !dbg !2879
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #11, !dbg !2894
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #11, !dbg !2894
  ret ptr %retval.0, !dbg !2894
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_block_start(i32 noundef %full) local_unnamed_addr #0 !dbg !2895 {
entry:
  call void @llvm.dbg.value(metadata i32 %full, metadata !2899, metadata !DIExpression()), !dbg !2900
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_comppad_name_floor) #11, !dbg !2901
  %0 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2902
  %1 = load i64, ptr %0, align 8, !dbg !2902
  %conv = trunc i64 %1 to i32, !dbg !2902
  store i32 %conv, ptr @PL_comppad_name_floor, align 4, !dbg !2903
  %tobool.not = icmp eq i32 %full, 0, !dbg !2904
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !2906

if.then:                                          ; preds = %entry
  store i32 %conv, ptr @PL_comppad_name_fill, align 4, !dbg !2907
  br label %if.end, !dbg !2908

if.end:                                           ; preds = %if.then, %entry
  %cmp = icmp slt i32 %conv, 0, !dbg !2909
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2911

if.then2:                                         ; preds = %if.end
  store i32 0, ptr @PL_comppad_name_floor, align 4, !dbg !2912
  br label %if.end3, !dbg !2913

if.end3:                                          ; preds = %if.then2, %if.end
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_min_intro_pending) #11, !dbg !2914
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_max_intro_pending) #11, !dbg !2915
  store i32 0, ptr @PL_min_intro_pending, align 4, !dbg !2916
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_comppad_name_fill) #11, !dbg !2917
  tail call void @Perl_save_I32(ptr noundef nonnull @PL_padix_floor) #11, !dbg !2918
  %2 = load i32, ptr @PL_padix, align 4, !dbg !2919
  store i32 %2, ptr @PL_padix_floor, align 4, !dbg !2920
  store i8 0, ptr @PL_pad_reset_pending, align 1, !dbg !2921
  ret void, !dbg !2922
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local i32 @Perl_intro_my() local_unnamed_addr #5 !dbg !2923 {
entry:
  %0 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 11), align 4, !dbg !2934
  %tobool.not = icmp eq i32 %0, 0, !dbg !2936
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2937

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %0, metadata !2929, metadata !DIExpression()), !dbg !2938
  store i32 0, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 11), align 4, !dbg !2939
  br label %if.end, !dbg !2941

if.else:                                          ; preds = %entry
  %1 = load i32, ptr @PL_cop_seqmax, align 4, !dbg !2942
  call void @llvm.dbg.value(metadata i32 %1, metadata !2929, metadata !DIExpression()), !dbg !2938
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %seq.0 = phi i32 [ %0, %if.then ], [ %1, %if.else ], !dbg !2943
  call void @llvm.dbg.value(metadata i32 %seq.0, metadata !2929, metadata !DIExpression()), !dbg !2938
  %2 = load i32, ptr @PL_min_intro_pending, align 4, !dbg !2944
  %tobool1.not = icmp eq i32 %2, 0, !dbg !2944
  br i1 %tobool1.not, label %cleanup, label %if.end3, !dbg !2946

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2947
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %3, i64 0, i32 1, !dbg !2947
  %4 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !2947
  call void @llvm.dbg.value(metadata ptr %4, metadata !2927, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i32 %2, metadata !2928, metadata !DIExpression()), !dbg !2938
  %5 = load i32, ptr @PL_max_intro_pending, align 4
  call void @llvm.dbg.value(metadata i32 %2, metadata !2928, metadata !DIExpression()), !dbg !2938
  %cmp.not35 = icmp sgt i32 %2, %5, !dbg !2948
  %.pre = load i32, ptr @PL_cop_seqmax, align 4
  br i1 %cmp.not35, label %for.end, label %for.body.lr.ph, !dbg !2949

for.body.lr.ph:                                   ; preds = %if.end3
  %6 = sext i32 %2 to i64, !dbg !2949
  %7 = add i32 %5, 1, !dbg !2949
  br label %for.body, !dbg !2949

for.body:                                         ; preds = %for.body.lr.ph, %if.end17
  %indvars.iv = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next, %if.end17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2928, metadata !DIExpression()), !dbg !2938
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv, !dbg !2950
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !2950
  call void @llvm.dbg.value(metadata ptr %8, metadata !2930, metadata !DIExpression()), !dbg !2951
  %tobool4.not = icmp eq ptr %8, null, !dbg !2952
  br i1 %tobool4.not, label %if.end17, label %land.lhs.true, !dbg !2954

land.lhs.true:                                    ; preds = %for.body
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %8, i64 0, i32 7, !dbg !2955
  %9 = load i8, ptr %xpadn_len, align 8, !dbg !2955
  %tobool5.not = icmp eq i8 %9, 0, !dbg !2955
  br i1 %tobool5.not, label %if.end17, label %land.lhs.true6, !dbg !2956

land.lhs.true6:                                   ; preds = %land.lhs.true
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %8, i64 0, i32 8, !dbg !2957
  %10 = load i8, ptr %xpadn_flags, align 1, !dbg !2957
  %11 = and i8 %10, 1, !dbg !2957
  %tobool8.not = icmp eq i8 %11, 0, !dbg !2957
  br i1 %tobool8.not, label %land.lhs.true9, label %if.end17, !dbg !2958

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %xpadn_low = getelementptr inbounds %struct.padname, ptr %8, i64 0, i32 3, !dbg !2959
  %12 = load i32, ptr %xpadn_low, align 8, !dbg !2959
  %cmp10 = icmp eq i32 %12, -1, !dbg !2960
  br i1 %cmp10, label %do.body, label %if.end17, !dbg !2961

do.body:                                          ; preds = %land.lhs.true9
  %xpadn_high = getelementptr inbounds %struct.padname, ptr %8, i64 0, i32 4, !dbg !2962
  store i32 -1, ptr %xpadn_high, align 4, !dbg !2962
  store i32 %.pre, ptr %xpadn_low, align 8, !dbg !2965
  br label %if.end17, !dbg !2967

if.end17:                                         ; preds = %do.body, %land.lhs.true9, %land.lhs.true6, %land.lhs.true, %for.body
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2928, metadata !DIExpression()), !dbg !2938
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !2948
  %exitcond.not = icmp eq i32 %7, %lftr.wideiv, !dbg !2948
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !2949, !llvm.loop !2969

for.end:                                          ; preds = %if.end17, %if.end3
  %inc18 = add i32 %.pre, 1, !dbg !2971
  %cmp19 = icmp eq i32 %inc18, -1, !dbg !2971
  %spec.select = select i1 %cmp19, i32 0, i32 %inc18, !dbg !2971
  store i32 %spec.select, ptr @PL_cop_seqmax, align 4, !dbg !2971
  store i32 0, ptr @PL_min_intro_pending, align 4, !dbg !2972
  store i32 %5, ptr @PL_comppad_name_fill, align 4, !dbg !2973
  br label %cleanup, !dbg !2974

cleanup:                                          ; preds = %if.end, %for.end
  ret i32 %seq.0, !dbg !2975
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_pad_leavemy() local_unnamed_addr #0 !dbg !2976 {
entry:
  call void @llvm.dbg.value(metadata ptr null, metadata !2979, metadata !DIExpression()), !dbg !2996
  %0 = load ptr, ptr @PL_comppad_name, align 8, !dbg !2997
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %0, i64 0, i32 1, !dbg !2997
  %1 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !2997
  call void @llvm.dbg.value(metadata ptr %1, metadata !2980, metadata !DIExpression()), !dbg !2996
  store i8 0, ptr @PL_pad_reset_pending, align 1, !dbg !2998
  %2 = load i32, ptr @PL_min_intro_pending, align 4, !dbg !2999
  %tobool.not = icmp ne i32 %2, 0, !dbg !2999
  %3 = load i32, ptr @PL_comppad_name_fill, align 4
  %cmp = icmp slt i32 %3, %2
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false, !dbg !3000
  br i1 %or.cond, label %if.then, label %if.end11, !dbg !3000

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @PL_max_intro_pending, align 4, !dbg !3001
  call void @llvm.dbg.value(metadata i32 %4, metadata !2978, metadata !DIExpression()), !dbg !2996
  %cmp1.not86 = icmp slt i32 %4, %2, !dbg !3002
  br i1 %cmp1.not86, label %if.end11, label %for.body.preheader, !dbg !3003

for.body.preheader:                               ; preds = %if.then
  %5 = sext i32 %4 to i64, !dbg !3003
  br label %for.body, !dbg !3003

for.body:                                         ; preds = %for.body.preheader, %if.end
  %6 = phi i32 [ %2, %for.body.preheader ], [ %12, %if.end ]
  %indvars.iv = phi i64 [ %5, %for.body.preheader ], [ %indvars.iv.next, %if.end ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2978, metadata !DIExpression()), !dbg !2996
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv, !dbg !3004
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !3004
  call void @llvm.dbg.value(metadata ptr %7, metadata !2981, metadata !DIExpression()), !dbg !3005
  %tobool2.not = icmp eq ptr %7, null, !dbg !3006
  br i1 %tobool2.not, label %if.end, label %land.lhs.true3, !dbg !3008

land.lhs.true3:                                   ; preds = %for.body
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %7, i64 0, i32 7, !dbg !3009
  %8 = load i8, ptr %xpadn_len, align 8, !dbg !3009
  %tobool4.not = icmp eq i8 %8, 0, !dbg !3009
  br i1 %tobool4.not, label %if.end, label %land.lhs.true5, !dbg !3010

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %7, i64 0, i32 8, !dbg !3011
  %9 = load i8, ptr %xpadn_flags, align 1, !dbg !3011
  %10 = and i8 %9, 1, !dbg !3011
  %tobool7.not = icmp eq i8 %10, 0, !dbg !3011
  br i1 %tobool7.not, label %if.then8, label %if.end, !dbg !3012

if.then8:                                         ; preds = %land.lhs.true5
  %conv10 = zext i8 %8 to i64, !dbg !3013
  %11 = load ptr, ptr %7, align 8, !dbg !3013
  tail call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 24, ptr noundef nonnull @.str.6, i32 noundef 1, i64 noundef %conv10, ptr noundef %11) #11, !dbg !3014
  %.pre = load i32, ptr @PL_min_intro_pending, align 4, !dbg !3015
  br label %if.end, !dbg !3014

if.end:                                           ; preds = %if.then8, %land.lhs.true5, %land.lhs.true3, %for.body
  %12 = phi i32 [ %.pre, %if.then8 ], [ %6, %land.lhs.true5 ], [ %6, %land.lhs.true3 ], [ %6, %for.body ], !dbg !3015
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !3016
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2978, metadata !DIExpression()), !dbg !2996
  %13 = sext i32 %12 to i64, !dbg !3002
  %cmp1.not.not = icmp sgt i64 %indvars.iv, %13, !dbg !3002
  br i1 %cmp1.not.not, label %for.body, label %if.end11.loopexit, !dbg !3003, !llvm.loop !3017

if.end11.loopexit:                                ; preds = %if.end
  %.pre95 = load ptr, ptr @PL_comppad_name, align 8, !dbg !3019
  %.pre96 = load i32, ptr @PL_comppad_name_fill, align 4, !dbg !3020
  br label %if.end11, !dbg !3019

if.end11:                                         ; preds = %if.end11.loopexit, %if.then, %entry
  %14 = phi i32 [ %.pre96, %if.end11.loopexit ], [ %3, %if.then ], [ %3, %entry ], !dbg !3020
  %15 = phi ptr [ %.pre95, %if.end11.loopexit ], [ %0, %if.then ], [ %0, %entry ], !dbg !3019
  %16 = load i64, ptr %15, align 8, !dbg !3019
  %conv12 = trunc i64 %16 to i32, !dbg !3019
  call void @llvm.dbg.value(metadata i32 %conv12, metadata !2978, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr null, metadata !2979, metadata !DIExpression()), !dbg !2996
  %cmp1488 = icmp slt i32 %14, %conv12, !dbg !3021
  br i1 %cmp1488, label %for.body16.preheader, label %for.end57, !dbg !3022

for.body16.preheader:                             ; preds = %if.end11
  %sext = shl i64 %16, 32, !dbg !3022
  %17 = ashr exact i64 %sext, 32, !dbg !3022
  br label %for.body16, !dbg !3022

for.body16:                                       ; preds = %for.body16.preheader, %if.end54
  %18 = phi i32 [ %14, %for.body16.preheader ], [ %29, %if.end54 ]
  %indvars.iv92 = phi i64 [ %17, %for.body16.preheader ], [ %indvars.iv.next93, %if.end54 ]
  %o.089 = phi ptr [ null, %for.body16.preheader ], [ %o.1, %if.end54 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv92, metadata !2978, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %o.089, metadata !2979, metadata !DIExpression()), !dbg !2996
  %arrayidx18 = getelementptr inbounds ptr, ptr %1, i64 %indvars.iv92, !dbg !3023
  %19 = load ptr, ptr %arrayidx18, align 8, !dbg !3023
  call void @llvm.dbg.value(metadata ptr %19, metadata !2987, metadata !DIExpression()), !dbg !3024
  %tobool19.not = icmp eq ptr %19, null, !dbg !3025
  br i1 %tobool19.not, label %if.end54, label %land.lhs.true20, !dbg !3026

land.lhs.true20:                                  ; preds = %for.body16
  %xpadn_len21 = getelementptr inbounds %struct.padname, ptr %19, i64 0, i32 7, !dbg !3027
  %20 = load i8, ptr %xpadn_len21, align 8, !dbg !3027
  %tobool23.not = icmp eq i8 %20, 0, !dbg !3027
  br i1 %tobool23.not, label %if.end54, label %land.lhs.true24, !dbg !3028

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %xpadn_flags25 = getelementptr inbounds %struct.padname, ptr %19, i64 0, i32 8, !dbg !3029
  %21 = load i8, ptr %xpadn_flags25, align 1, !dbg !3029
  %22 = and i8 %21, 1, !dbg !3029
  %tobool28.not = icmp eq i8 %22, 0, !dbg !3029
  br i1 %tobool28.not, label %land.lhs.true29, label %if.end54, !dbg !3030

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %xpadn_high = getelementptr inbounds %struct.padname, ptr %19, i64 0, i32 4, !dbg !3031
  %23 = load i32, ptr %xpadn_high, align 4, !dbg !3031
  %cmp30 = icmp eq i32 %23, -1, !dbg !3032
  br i1 %cmp30, label %do.body, label %if.end54, !dbg !3033

do.body:                                          ; preds = %land.lhs.true29
  %24 = load i32, ptr @PL_cop_seqmax, align 4, !dbg !3034
  store i32 %24, ptr %xpadn_high, align 4, !dbg !3034
  %25 = and i8 %21, 2, !dbg !3036
  %tobool37.not = icmp eq i8 %25, 0, !dbg !3036
  br i1 %tobool37.not, label %land.lhs.true38, label %if.end54, !dbg !3037

land.lhs.true38:                                  ; preds = %do.body
  %xpadn_ourstash = getelementptr inbounds %struct.padname, ptr %19, i64 0, i32 1, !dbg !3038
  %26 = load ptr, ptr %xpadn_ourstash, align 8, !dbg !3038
  %tobool39.not = icmp eq ptr %26, null, !dbg !3038
  br i1 %tobool39.not, label %land.lhs.true40, label %if.end54, !dbg !3039

land.lhs.true40:                                  ; preds = %land.lhs.true38
  %27 = load ptr, ptr %19, align 8, !dbg !3040
  %28 = load i8, ptr %27, align 1, !dbg !3041
  %cmp43 = icmp eq i8 %28, 38, !dbg !3042
  %cmp48 = icmp ugt i8 %20, 1
  %or.cond85 = select i1 %cmp43, i1 %cmp48, i1 false, !dbg !3043
  br i1 %or.cond85, label %if.then50, label %if.end54, !dbg !3043

if.then50:                                        ; preds = %land.lhs.true40
  %call = tail call ptr @Perl_newOP(i32 noundef 388, i32 noundef 0) #11, !dbg !3044
  call void @llvm.dbg.value(metadata ptr %call, metadata !2991, metadata !DIExpression()), !dbg !3045
  %op_targ = getelementptr inbounds %struct.op, ptr %call, i64 0, i32 3, !dbg !3046
  store i64 %indvars.iv92, ptr %op_targ, align 8, !dbg !3047
  %call52 = tail call ptr @Perl_op_prepend_elem(i32 noundef 192, ptr noundef %call, ptr noundef %o.089) #11, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %call52, metadata !2979, metadata !DIExpression()), !dbg !2996
  %.pre97 = load i32, ptr @PL_comppad_name_fill, align 4, !dbg !3020
  br label %if.end54, !dbg !3049

if.end54:                                         ; preds = %do.body, %land.lhs.true38, %land.lhs.true40, %if.then50, %land.lhs.true29, %land.lhs.true24, %land.lhs.true20, %for.body16
  %29 = phi i32 [ %18, %land.lhs.true24 ], [ %18, %do.body ], [ %18, %land.lhs.true38 ], [ %.pre97, %if.then50 ], [ %18, %land.lhs.true40 ], [ %18, %land.lhs.true29 ], [ %18, %land.lhs.true20 ], [ %18, %for.body16 ], !dbg !3020
  %o.1 = phi ptr [ %o.089, %land.lhs.true24 ], [ %o.089, %do.body ], [ %o.089, %land.lhs.true38 ], [ %call52, %if.then50 ], [ %o.089, %land.lhs.true40 ], [ %o.089, %land.lhs.true29 ], [ %o.089, %land.lhs.true20 ], [ %o.089, %for.body16 ], !dbg !2996
  call void @llvm.dbg.value(metadata ptr %o.1, metadata !2979, metadata !DIExpression()), !dbg !2996
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, -1, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next93, metadata !2978, metadata !DIExpression()), !dbg !2996
  %30 = sext i32 %29 to i64, !dbg !3021
  %cmp14 = icmp sgt i64 %indvars.iv.next93, %30, !dbg !3021
  br i1 %cmp14, label %for.body16, label %for.end57, !dbg !3022, !llvm.loop !3051

for.end57:                                        ; preds = %if.end54, %if.end11
  %o.0.lcssa = phi ptr [ null, %if.end11 ], [ %o.1, %if.end54 ], !dbg !3053
  %31 = load i32, ptr @PL_cop_seqmax, align 4, !dbg !3054
  %inc = add i32 %31, 1, !dbg !3054
  %cmp58 = icmp eq i32 %inc, -1, !dbg !3054
  %spec.select = select i1 %cmp58, i32 0, i32 %inc, !dbg !3054
  store i32 %spec.select, ptr @PL_cop_seqmax, align 4, !dbg !3054
  ret ptr %o.0.lcssa, !dbg !3055
}

declare !dbg !3056 void @Perl_ck_warner_d(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !3059 ptr @Perl_newOP(i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !3062 ptr @Perl_op_prepend_elem(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_swipe(i64 noundef %po, i1 noundef zeroext %refadjust) local_unnamed_addr #0 !dbg !3065 {
entry:
  call void @llvm.dbg.value(metadata i64 %po, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i1 %refadjust, metadata !3070, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3071
  %0 = load ptr, ptr @PL_curpad, align 8, !dbg !3072
  %tobool.not = icmp eq ptr %0, null, !dbg !3072
  br i1 %tobool.not, label %if.end29, label %if.end, !dbg !3074

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @PL_comppad, align 8, !dbg !3075
  %sv_u = getelementptr inbounds %struct.av, ptr %1, i64 0, i32 3, !dbg !3075
  %2 = load ptr, ptr %sv_u, align 8, !dbg !3075
  %cmp.not = icmp eq ptr %2, %0, !dbg !3077
  br i1 %cmp.not, label %if.end3, label %if.then1, !dbg !3078

if.then1:                                         ; preds = %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.7, ptr noundef %2, ptr noundef nonnull %0) #11, !dbg !3079
  br label %if.end3, !dbg !3079

if.end3:                                          ; preds = %if.then1, %if.end
  %tobool4.not = icmp eq i64 %po, 0, !dbg !3080
  %.pre = load ptr, ptr @PL_comppad, align 8, !dbg !3082
  %.pre41 = load ptr, ptr %.pre, align 8, !dbg !3082
  %xav_fill8.phi.trans.insert = getelementptr inbounds %struct.xpvav, ptr %.pre41, i64 0, i32 2
  %.pre42 = load i64, ptr %xav_fill8.phi.trans.insert, align 8, !dbg !3082
  %cmp5 = icmp slt i64 %.pre42, %po
  %or.cond43 = select i1 %tobool4.not, i1 true, i1 %cmp5, !dbg !3083
  br i1 %or.cond43, label %if.then6, label %if.end9, !dbg !3083

if.then6:                                         ; preds = %if.end3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, i64 noundef %po, i64 noundef %.pre42) #11, !dbg !3084
  br label %if.end9, !dbg !3084

if.end9:                                          ; preds = %if.end3, %if.then6
  br i1 %refadjust, label %if.then11, label %if.end12, !dbg !3085

if.then11:                                        ; preds = %if.end9
  %3 = load ptr, ptr @PL_curpad, align 8, !dbg !3086
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %po, !dbg !3086
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !3086
  call void @llvm.dbg.value(metadata ptr %4, metadata !1656, metadata !DIExpression()) #11, !dbg !3088
  %cmp.not.i = icmp eq ptr %4, null, !dbg !3090
  br i1 %cmp.not.i, label %if.end12, label %if.then.i, !dbg !3091

if.then.i:                                        ; preds = %if.then11
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 1, !dbg !3092
  %5 = load i32, ptr %sv_refcnt.i, align 8, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %5, metadata !1659, metadata !DIExpression()) #11, !dbg !3093
  %cmp1.i = icmp ugt i32 %5, 1, !dbg !3094
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !3095

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %5, -1, !dbg !3096
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !3097
  br label %if.end12, !dbg !3098

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %4, i32 noundef %5) #11, !dbg !3099
  br label %if.end12

if.end12:                                         ; preds = %if.else.i, %if.then4.i, %if.then11, %if.end9
  %6 = load ptr, ptr @PL_curpad, align 8, !dbg !3100
  %arrayidx13 = getelementptr inbounds ptr, ptr %6, i64 %po, !dbg !3100
  store ptr null, ptr %arrayidx13, align 8, !dbg !3101
  %7 = load ptr, ptr @PL_comppad_name, align 8, !dbg !3102
  %8 = load i64, ptr %7, align 8, !dbg !3102
  %cmp14.not = icmp eq i64 %8, -1, !dbg !3104
  %cmp16.not = icmp ult i64 %8, %po
  %or.cond = or i1 %cmp14.not, %cmp16.not, !dbg !3105
  br i1 %or.cond, label %if.end24, label %if.then17, !dbg !3105

if.then17:                                        ; preds = %if.end12
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %7, i64 0, i32 1, !dbg !3106
  %9 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !3106
  %arrayidx18 = getelementptr inbounds ptr, ptr %9, i64 %po, !dbg !3106
  store ptr @PL_padname_undef, ptr %arrayidx18, align 8, !dbg !3109
  br label %if.end24, !dbg !3110

if.end24:                                         ; preds = %if.then17, %if.end12
  %conv = trunc i64 %po to i32, !dbg !3111
  %10 = load i32, ptr @PL_constpadix, align 4, !dbg !3113
  %cmp25 = icmp sgt i32 %10, %conv, !dbg !3114
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !3115

if.then27:                                        ; preds = %if.end24
  %conv28 = add i32 %conv, -1, !dbg !3116
  store i32 %conv28, ptr @PL_constpadix, align 4, !dbg !3117
  br label %if.end29, !dbg !3118

if.end29:                                         ; preds = %entry, %if.then27, %if.end24
  ret void, !dbg !3119
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_tidy(i32 noundef %type) local_unnamed_addr #0 !dbg !3120 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !3125, metadata !DIExpression()), !dbg !3144
  %0 = load i8, ptr @PL_cv_has_eval, align 1, !dbg !3145, !range !2137
  %tobool = icmp ne i8 %0, 0, !dbg !3145
  %1 = load i32, ptr @PL_perldb, align 4
  %tobool1 = icmp ne i32 %1, 0
  %or.cond = select i1 %tobool, i1 true, i1 %tobool1, !dbg !3146
  br i1 %or.cond, label %for.cond.preheader, label %if.end15, !dbg !3146

for.cond.preheader:                               ; preds = %entry
  %cv.0195 = load ptr, ptr @PL_compcv, align 8, !dbg !3147
  call void @llvm.dbg.value(metadata ptr %cv.0195, metadata !3126, metadata !DIExpression()), !dbg !3149
  %tobool2.not196 = icmp eq ptr %cv.0195, null, !dbg !3150
  br i1 %tobool2.not196, label %if.end15, label %for.body, !dbg !3150

for.body:                                         ; preds = %for.cond.preheader, %if.end10
  %cv.0197 = phi ptr [ %cv.0, %if.end10 ], [ %cv.0195, %for.cond.preheader ]
  %cmp.not = icmp eq ptr %cv.0197, %cv.0195, !dbg !3151
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %land.lhs.true, !dbg !3155

for.body.if.end_crit_edge:                        ; preds = %for.body
  %.pre = load ptr, ptr %cv.0195, align 8, !dbg !3156
  br label %if.end, !dbg !3155

land.lhs.true:                                    ; preds = %for.body
  %2 = load ptr, ptr %cv.0197, align 8, !dbg !3158
  %xcv_root_u = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 6, !dbg !3158
  %3 = load ptr, ptr %xcv_root_u, align 8, !dbg !3158
  %tobool3.not = icmp eq ptr %3, null, !dbg !3158
  br i1 %tobool3.not, label %if.end, label %if.end15, !dbg !3159

if.end:                                           ; preds = %for.body.if.end_crit_edge, %land.lhs.true
  %4 = phi ptr [ %.pre, %for.body.if.end_crit_edge ], [ %2, %land.lhs.true ], !dbg !3156
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 12, !dbg !3156
  %5 = load i32, ptr %xcv_flags, align 4, !dbg !3156
  %and = and i32 %5, 128, !dbg !3156
  %tobool6.not = icmp eq i32 %and, 0, !dbg !3156
  br i1 %tobool6.not, label %if.end10, label %if.then7, !dbg !3160

if.then7:                                         ; preds = %if.end
  %or = or i32 %5, 32, !dbg !3161
  store i32 %or, ptr %xcv_flags, align 4, !dbg !3161
  %.pre203 = load ptr, ptr %cv.0197, align 8, !dbg !3163
  %xcv_flags12.phi.trans.insert = getelementptr inbounds %struct.xpvcv, ptr %.pre203, i64 0, i32 12
  %.pre204 = load i32, ptr %xcv_flags12.phi.trans.insert, align 4, !dbg !3163
  br label %if.end10, !dbg !3164

if.end10:                                         ; preds = %if.then7, %if.end
  %6 = phi i32 [ %.pre204, %if.then7 ], [ %5, %if.end ], !dbg !3163
  %7 = phi ptr [ %.pre203, %if.then7 ], [ %4, %if.end ], !dbg !3163
  %xcv_flags12 = getelementptr inbounds %struct.xpvcv, ptr %7, i64 0, i32 12, !dbg !3163
  %or13 = or i32 %6, 16384, !dbg !3163
  store i32 %or13, ptr %xcv_flags12, align 4, !dbg !3163
  %8 = load ptr, ptr %cv.0197, align 8, !dbg !3165
  %xcv_outside = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 10, !dbg !3165
  call void @llvm.dbg.value(metadata ptr undef, metadata !3126, metadata !DIExpression()), !dbg !3149
  %cv.0 = load ptr, ptr %xcv_outside, align 8, !dbg !3147
  call void @llvm.dbg.value(metadata ptr %cv.0, metadata !3126, metadata !DIExpression()), !dbg !3149
  %tobool2.not = icmp eq ptr %cv.0, null, !dbg !3150
  br i1 %tobool2.not, label %if.end15, label %for.body, !dbg !3150, !llvm.loop !3166

if.end15:                                         ; preds = %land.lhs.true, %if.end10, %for.cond.preheader, %entry
  %9 = load ptr, ptr @PL_comppad_name, align 8, !dbg !3168
  %10 = load i64, ptr %9, align 8, !dbg !3168
  %11 = load ptr, ptr @PL_comppad, align 8, !dbg !3170
  %12 = load ptr, ptr %11, align 8, !dbg !3170
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %12, i64 0, i32 2, !dbg !3170
  %13 = load i64, ptr %xav_fill, align 8, !dbg !3170
  %cmp17 = icmp slt i64 %10, %13, !dbg !3171
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !3172

if.then18:                                        ; preds = %if.end15
  call void @llvm.dbg.value(metadata ptr %9, metadata !1243, metadata !DIExpression()) #11, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %13, metadata !1248, metadata !DIExpression()) #11, !dbg !3173
  call void @llvm.dbg.value(metadata ptr null, metadata !1249, metadata !DIExpression()) #11, !dbg !3173
  %xpadnl_max.i = getelementptr inbounds %struct.padnamelist, ptr %9, i64 0, i32 2, !dbg !3175
  %14 = load i64, ptr %xpadnl_max.i, align 8, !dbg !3175
  %cmp.i = icmp slt i64 %14, %13, !dbg !3176
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !3177

if.then.i:                                        ; preds = %if.then18
  %xpadnl_alloc.i = getelementptr inbounds %struct.padnamelist, ptr %9, i64 0, i32 1, !dbg !3178
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %13, ptr noundef nonnull %xpadnl_max.i, ptr noundef nonnull %xpadnl_alloc.i, ptr noundef nonnull %xpadnl_alloc.i) #11, !dbg !3178
  %.pre205 = load i64, ptr %9, align 8, !dbg !3179
  br label %if.end.i, !dbg !3178

if.end.i:                                         ; preds = %if.then.i, %if.then18
  %15 = phi i64 [ %.pre205, %if.then.i ], [ %10, %if.then18 ], !dbg !3179
  %cmp3.i = icmp sgt i64 %13, %15, !dbg !3180
  br i1 %cmp3.i, label %if.then4.i, label %if.end10.i, !dbg !3181

if.then4.i:                                       ; preds = %if.end.i
  %xpadnl_alloc5.i = getelementptr inbounds %struct.padnamelist, ptr %9, i64 0, i32 1, !dbg !3182
  %16 = load ptr, ptr %xpadnl_alloc5.i, align 8, !dbg !3182
  %add.ptr.i = getelementptr inbounds ptr, ptr %16, i64 %15, !dbg !3182
  %add.ptr7.i = getelementptr inbounds ptr, ptr %add.ptr.i, i64 1, !dbg !3182
  %sub.i = sub nsw i64 %13, %15, !dbg !3182
  %mul.i = shl i64 %sub.i, 3, !dbg !3182
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr7.i, i8 0, i64 %mul.i, i1 false) #11, !dbg !3182
  store i64 %13, ptr %9, align 8, !dbg !3183
  br label %if.end10.i, !dbg !3184

if.end10.i:                                       ; preds = %if.then4.i, %if.end.i
  %xpadnl_alloc11.i = getelementptr inbounds %struct.padnamelist, ptr %9, i64 0, i32 1, !dbg !3185
  %17 = load ptr, ptr %xpadnl_alloc11.i, align 8, !dbg !3185
  call void @llvm.dbg.value(metadata ptr %17, metadata !1250, metadata !DIExpression()) #11, !dbg !3173
  %arrayidx.i = getelementptr inbounds ptr, ptr %17, i64 %13, !dbg !3186
  %18 = load ptr, ptr %arrayidx.i, align 8, !dbg !3186
  %tobool.not.i = icmp eq ptr %18, null, !dbg !3186
  br i1 %tobool.not.i, label %Perl_padnamelist_store.exit, label %if.then12.i, !dbg !3187

if.then12.i:                                      ; preds = %if.end10.i
  tail call void @Perl_padname_free(ptr noundef nonnull %18) #11, !dbg !3188
  br label %Perl_padnamelist_store.exit, !dbg !3188

Perl_padnamelist_store.exit:                      ; preds = %if.end10.i, %if.then12.i
  store ptr null, ptr %arrayidx.i, align 8, !dbg !3189
  br label %if.end21, !dbg !3190

if.end21:                                         ; preds = %Perl_padnamelist_store.exit, %if.end15
  switch i32 %type, label %if.end77 [
    i32 1, label %if.then23
    i32 0, label %if.end77.thread
  ], !dbg !3191

if.then23:                                        ; preds = %if.end21
  %19 = load ptr, ptr @PL_comppad_name, align 8, !dbg !3192
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %19, i64 0, i32 1, !dbg !3192
  %20 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !3192
  call void @llvm.dbg.value(metadata ptr %20, metadata !3129, metadata !DIExpression()), !dbg !3193
  %21 = load ptr, ptr @PL_comppad, align 8, !dbg !3194
  %22 = load ptr, ptr %21, align 8, !dbg !3194
  %xav_fill25 = getelementptr inbounds %struct.xpvav, ptr %22, i64 0, i32 2, !dbg !3194
  %23 = load i64, ptr %xav_fill25, align 8, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %23, metadata !3132, metadata !DIExpression()), !dbg !3193
  %cmp27.not198 = icmp eq i64 %23, 0, !dbg !3195
  br i1 %cmp27.not198, label %if.end139, label %for.body28, !dbg !3196

for.body28:                                       ; preds = %if.then23, %cleanup
  %ix.0199 = phi i64 [ %dec, %cleanup ], [ %23, %if.then23 ]
  call void @llvm.dbg.value(metadata i64 %ix.0199, metadata !3132, metadata !DIExpression()), !dbg !3193
  %arrayidx = getelementptr inbounds ptr, ptr %20, i64 %ix.0199, !dbg !3197
  %24 = load ptr, ptr %arrayidx, align 8, !dbg !3197
  %tobool29.not = icmp eq ptr %24, null, !dbg !3197
  br i1 %tobool29.not, label %if.then30, label %if.end32, !dbg !3199

if.then30:                                        ; preds = %for.body28
  store ptr @PL_padname_undef, ptr %arrayidx, align 8, !dbg !3200
  br label %if.end32, !dbg !3201

if.end32:                                         ; preds = %if.then30, %for.body28
  %25 = phi ptr [ @PL_padname_undef, %if.then30 ], [ %24, %for.body28 ]
  %26 = load ptr, ptr @PL_curpad, align 8, !dbg !3202
  %arrayidx33 = getelementptr inbounds ptr, ptr %26, i64 %ix.0199, !dbg !3202
  %27 = load ptr, ptr %arrayidx33, align 8, !dbg !3202
  %tobool34.not = icmp eq ptr %27, null, !dbg !3202
  br i1 %tobool34.not, label %cleanup, label %lor.lhs.false35, !dbg !3204

lor.lhs.false35:                                  ; preds = %if.end32
  %sv_flags = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2, !dbg !3205
  %28 = load i32, ptr %sv_flags, align 4, !dbg !3205
  %and37 = and i32 %28, 134283264, !dbg !3205
  %tobool38.not = icmp eq i32 %and37, 0, !dbg !3205
  br i1 %tobool38.not, label %if.end52, label %land.lhs.true39, !dbg !3205

land.lhs.true39:                                  ; preds = %lor.lhs.false35
  %cmp41 = icmp eq ptr %27, @PL_sv_undef, !dbg !3205
  %cmp44 = icmp eq ptr %27, @PL_sv_yes, !dbg !3205
  %or.cond185 = or i1 %cmp41, %cmp44, !dbg !3205
  %cmp47 = icmp eq ptr %27, @PL_sv_no, !dbg !3205
  %or.cond186 = or i1 %cmp47, %or.cond185, !dbg !3205
  %cmp50 = icmp eq ptr %27, @PL_sv_placeholder, !dbg !3205
  %or.cond187 = or i1 %cmp50, %or.cond186, !dbg !3205
  br i1 %or.cond187, label %cleanup, label %if.end52, !dbg !3205

if.end52:                                         ; preds = %land.lhs.true39, %lor.lhs.false35
  call void @llvm.dbg.value(metadata ptr %25, metadata !3133, metadata !DIExpression()), !dbg !3206
  %29 = load ptr, ptr %25, align 8, !dbg !3207
  %tobool54.not = icmp eq ptr %29, null, !dbg !3207
  br i1 %tobool54.not, label %if.then.i191, label %land.lhs.true55, !dbg !3209

land.lhs.true55:                                  ; preds = %if.end52
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %25, i64 0, i32 7, !dbg !3210
  %30 = load i8, ptr %xpadn_len, align 8, !dbg !3210
  %tobool56.not = icmp eq i8 %30, 0, !dbg !3210
  br i1 %tobool56.not, label %cleanup, label %lor.lhs.false57, !dbg !3211

lor.lhs.false57:                                  ; preds = %land.lhs.true55
  %31 = load i8, ptr %29, align 1, !dbg !3212
  %cmp59 = icmp eq i8 %31, 38, !dbg !3213
  br i1 %cmp59, label %cleanup, label %if.then.i191, !dbg !3214

if.then.i191:                                     ; preds = %if.end52, %lor.lhs.false57
  call void @llvm.dbg.value(metadata ptr %27, metadata !1656, metadata !DIExpression()) #11, !dbg !3215
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1, !dbg !3218
  %32 = load i32, ptr %sv_refcnt.i, align 8, !dbg !3218
  call void @llvm.dbg.value(metadata i32 %32, metadata !1659, metadata !DIExpression()) #11, !dbg !3219
  %cmp1.i = icmp ugt i32 %32, 1, !dbg !3220
  br i1 %cmp1.i, label %if.then4.i193, label %if.else.i, !dbg !3221

if.then4.i193:                                    ; preds = %if.then.i191
  %sub.i192 = add i32 %32, -1, !dbg !3222
  store i32 %sub.i192, ptr %sv_refcnt.i, align 8, !dbg !3223
  br label %S_SvREFCNT_dec.exit, !dbg !3224

if.else.i:                                        ; preds = %if.then.i191
  tail call void @Perl_sv_free2(ptr noundef nonnull %27, i32 noundef %32) #11, !dbg !3225
  %.pre206 = load ptr, ptr @PL_curpad, align 8, !dbg !3226
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.then4.i193, %if.else.i
  %33 = phi ptr [ %26, %if.then4.i193 ], [ %.pre206, %if.else.i ], !dbg !3226
  %arrayidx63 = getelementptr inbounds ptr, ptr %33, i64 %ix.0199, !dbg !3226
  store ptr null, ptr %arrayidx63, align 8, !dbg !3227
  br label %cleanup, !dbg !3228

cleanup:                                          ; preds = %land.lhs.true55, %lor.lhs.false57, %S_SvREFCNT_dec.exit, %if.end32, %land.lhs.true39
  %dec = add i64 %ix.0199, -1, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %dec, metadata !3132, metadata !DIExpression()), !dbg !3193
  %cmp27.not = icmp eq i64 %dec, 0, !dbg !3195
  br i1 %cmp27.not, label %if.end77, label %for.body28, !dbg !3196, !llvm.loop !3230

if.end77.thread:                                  ; preds = %if.end21
  %call70 = tail call ptr @Perl_newSV_type(i32 noundef 11) #11, !dbg !3232
  call void @llvm.dbg.value(metadata ptr %call70, metadata !3137, metadata !DIExpression()), !dbg !3233
  %34 = load ptr, ptr @PL_comppad, align 8, !dbg !3234
  %call71 = tail call ptr @Perl_av_store(ptr noundef %34, i64 noundef 0, ptr noundef %call70) #11, !dbg !3234
  %sv_flags72 = getelementptr inbounds %struct.av, ptr %call70, i64 0, i32 2, !dbg !3235
  %35 = load i32, ptr %sv_flags72, align 4, !dbg !3235
  %and73 = and i32 %35, 1073741823, !dbg !3235
  %or75 = or i32 %and73, -2147483648, !dbg !3235
  store i32 %or75, ptr %sv_flags72, align 4, !dbg !3235
  br label %if.then83, !dbg !3236

if.end77:                                         ; preds = %cleanup, %if.end21
  %36 = and i32 %type, -3, !dbg !3236
  %37 = icmp eq i32 %36, 0, !dbg !3236
  br i1 %37, label %if.then83, label %if.end139, !dbg !3236

if.then83:                                        ; preds = %if.end77.thread, %if.end77
  %38 = load ptr, ptr @PL_comppad_name, align 8, !dbg !3237
  %xpadnl_alloc85 = getelementptr inbounds %struct.padnamelist, ptr %38, i64 0, i32 1, !dbg !3237
  %39 = load ptr, ptr %xpadnl_alloc85, align 8, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %39, metadata !3140, metadata !DIExpression()), !dbg !3238
  %40 = load ptr, ptr @PL_comppad, align 8, !dbg !3239
  %41 = load ptr, ptr %40, align 8, !dbg !3239
  %xav_fill88 = getelementptr inbounds %struct.xpvav, ptr %41, i64 0, i32 2, !dbg !3239
  %42 = load i64, ptr %xav_fill88, align 8, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %42, metadata !3143, metadata !DIExpression()), !dbg !3238
  %cmp90.not201 = icmp eq i64 %42, 0, !dbg !3241
  br i1 %cmp90.not201, label %if.end139, label %for.body92, !dbg !3243

for.body92:                                       ; preds = %if.then83, %for.inc136
  %ix86.0202 = phi i64 [ %dec137, %for.inc136 ], [ %42, %if.then83 ]
  call void @llvm.dbg.value(metadata i64 %ix86.0202, metadata !3143, metadata !DIExpression()), !dbg !3238
  %arrayidx93 = getelementptr inbounds ptr, ptr %39, i64 %ix86.0202, !dbg !3244
  %43 = load ptr, ptr %arrayidx93, align 8, !dbg !3244
  %tobool94.not = icmp eq ptr %43, null, !dbg !3244
  br i1 %tobool94.not, label %if.then95, label %if.end97, !dbg !3247

if.then95:                                        ; preds = %for.body92
  store ptr @PL_padname_undef, ptr %arrayidx93, align 8, !dbg !3248
  br label %if.end97, !dbg !3249

if.end97:                                         ; preds = %if.then95, %for.body92
  %44 = phi ptr [ @PL_padname_undef, %if.then95 ], [ %43, %for.body92 ]
  %45 = load ptr, ptr @PL_curpad, align 8, !dbg !3250
  %arrayidx98 = getelementptr inbounds ptr, ptr %45, i64 %ix86.0202, !dbg !3250
  %46 = load ptr, ptr %arrayidx98, align 8, !dbg !3250
  %tobool99.not = icmp eq ptr %46, null, !dbg !3250
  br i1 %tobool99.not, label %for.inc136, label %lor.lhs.false100, !dbg !3252

lor.lhs.false100:                                 ; preds = %if.end97
  %sv_flags102 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2, !dbg !3253
  %47 = load i32, ptr %sv_flags102, align 4, !dbg !3253
  %and103 = and i32 %47, 134283264, !dbg !3253
  %tobool104.not = icmp eq i32 %and103, 0, !dbg !3253
  br i1 %tobool104.not, label %if.end122, label %land.lhs.true105, !dbg !3253

land.lhs.true105:                                 ; preds = %lor.lhs.false100
  %cmp107 = icmp eq ptr %46, @PL_sv_undef, !dbg !3253
  %cmp111 = icmp eq ptr %46, @PL_sv_yes, !dbg !3253
  %or.cond188 = or i1 %cmp107, %cmp111, !dbg !3253
  %cmp115 = icmp eq ptr %46, @PL_sv_no, !dbg !3253
  %or.cond189 = or i1 %cmp115, %or.cond188, !dbg !3253
  %cmp119 = icmp eq ptr %46, @PL_sv_placeholder, !dbg !3253
  %or.cond190 = or i1 %cmp119, %or.cond189, !dbg !3253
  %or.cond190.not = xor i1 %or.cond190, true, !dbg !3253
  %and125 = and i32 %47, 131072
  %tobool126.not = icmp eq i32 %and125, 0
  %or.cond194 = select i1 %or.cond190.not, i1 %tobool126.not, i1 false, !dbg !3253
  br i1 %or.cond194, label %land.lhs.true127, label %for.inc136, !dbg !3253

if.end122:                                        ; preds = %lor.lhs.false100
  %and125.old = and i32 %47, 131072, !dbg !3254
  %tobool126.not.old = icmp eq i32 %and125.old, 0, !dbg !3254
  br i1 %tobool126.not.old, label %land.lhs.true127, label %for.inc136, !dbg !3256

land.lhs.true127:                                 ; preds = %land.lhs.true105, %if.end122
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %44, i64 0, i32 8, !dbg !3257
  %48 = load i8, ptr %xpadn_flags, align 1, !dbg !3257
  %49 = and i8 %48, 1, !dbg !3257
  %tobool131.not = icmp eq i8 %49, 0, !dbg !3257
  br i1 %tobool131.not, label %if.then132, label %for.inc136, !dbg !3258

if.then132:                                       ; preds = %land.lhs.true127
  call void @llvm.dbg.value(metadata ptr %46, metadata !3259, metadata !DIExpression()), !dbg !3264
  %or.i = or i32 %47, 262144, !dbg !3267
  store i32 %or.i, ptr %sv_flags102, align 4, !dbg !3267
  br label %for.inc136, !dbg !3268

for.inc136:                                       ; preds = %if.end122, %land.lhs.true127, %if.then132, %if.end97, %land.lhs.true105
  %dec137 = add i64 %ix86.0202, -1, !dbg !3269
  call void @llvm.dbg.value(metadata i64 %dec137, metadata !3143, metadata !DIExpression()), !dbg !3238
  %cmp90.not = icmp eq i64 %dec137, 0, !dbg !3241
  br i1 %cmp90.not, label %if.end139, label %for.body92, !dbg !3243, !llvm.loop !3270

if.end139:                                        ; preds = %for.inc136, %if.then23, %if.then83, %if.end77
  %50 = load ptr, ptr @PL_comppad, align 8, !dbg !3272
  %sv_u = getelementptr inbounds %struct.av, ptr %50, i64 0, i32 3, !dbg !3272
  %51 = load ptr, ptr %sv_u, align 8, !dbg !3272
  store ptr %51, ptr @PL_curpad, align 8, !dbg !3273
  ret void, !dbg !3274
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_free(i64 noundef %po) local_unnamed_addr #0 !dbg !3275 {
entry:
  call void @llvm.dbg.value(metadata i64 %po, metadata !3279, metadata !DIExpression()), !dbg !3281
  %0 = load ptr, ptr @PL_curpad, align 8, !dbg !3282
  %tobool.not = icmp eq ptr %0, null, !dbg !3282
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !3284

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @PL_comppad, align 8, !dbg !3285
  %sv_u = getelementptr inbounds %struct.av, ptr %1, i64 0, i32 3, !dbg !3285
  %2 = load ptr, ptr %sv_u, align 8, !dbg !3285
  %cmp.not = icmp eq ptr %2, %0, !dbg !3287
  br i1 %cmp.not, label %if.end3, label %if.then1, !dbg !3288

if.then1:                                         ; preds = %if.end
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.9, ptr noundef %2, ptr noundef nonnull %0) #11, !dbg !3289
  br label %if.end3, !dbg !3289

if.end3:                                          ; preds = %if.then1, %if.end
  %tobool4.not = icmp eq i64 %po, 0, !dbg !3290
  br i1 %tobool4.not, label %if.then5, label %if.end6, !dbg !3292

if.then5:                                         ; preds = %if.end3
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10) #11, !dbg !3293
  br label %if.end6, !dbg !3293

if.end6:                                          ; preds = %if.then5, %if.end3
  %3 = load ptr, ptr @PL_curpad, align 8, !dbg !3294
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %po, !dbg !3294
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !3294
  call void @llvm.dbg.value(metadata ptr %4, metadata !3280, metadata !DIExpression()), !dbg !3281
  %tobool7 = icmp ne ptr %4, null, !dbg !3295
  %cmp8 = icmp ne ptr %4, @PL_sv_undef
  %or.cond = and i1 %tobool7, %cmp8, !dbg !3297
  br i1 %or.cond, label %land.lhs.true9, label %if.end14, !dbg !3297

land.lhs.true9:                                   ; preds = %if.end6
  %sv_flags = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2, !dbg !3298
  %5 = load i32, ptr %sv_flags, align 4, !dbg !3298
  %and = and i32 %5, 131072, !dbg !3298
  %tobool10.not = icmp eq i32 %and, 0, !dbg !3298
  br i1 %tobool10.not, label %if.end14, label %if.then11, !dbg !3299

if.then11:                                        ; preds = %land.lhs.true9
  %and13 = and i32 %5, -131073, !dbg !3300
  store i32 %and13, ptr %sv_flags, align 4, !dbg !3300
  br label %if.end14, !dbg !3301

if.end14:                                         ; preds = %if.then11, %land.lhs.true9, %if.end6
  %conv = trunc i64 %po to i32, !dbg !3302
  %6 = load i32, ptr @PL_padix, align 4, !dbg !3304
  %cmp15 = icmp sgt i32 %6, %conv, !dbg !3305
  br i1 %cmp15, label %if.then17, label %cleanup, !dbg !3306

if.then17:                                        ; preds = %if.end14
  %conv18 = add i32 %conv, -1, !dbg !3307
  store i32 %conv18, ptr @PL_padix, align 4, !dbg !3308
  br label %cleanup, !dbg !3309

cleanup:                                          ; preds = %if.end14, %if.then17, %entry
  ret void, !dbg !3310
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_dump_pad(i32 noundef %level, ptr noundef %file, ptr noundef readonly %padlist, i32 noundef %full) local_unnamed_addr #0 !dbg !3311 {
entry:
  call void @llvm.dbg.value(metadata i32 %level, metadata !3315, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %file, metadata !3316, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata ptr %padlist, metadata !3317, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %full, metadata !3318, metadata !DIExpression()), !dbg !3328
  %tobool.not = icmp eq ptr %padlist, null, !dbg !3329
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !3331

if.end:                                           ; preds = %entry
  %xpadl_alloc = getelementptr inbounds %struct.padlist, ptr %padlist, i64 0, i32 1, !dbg !3332
  %0 = load ptr, ptr %xpadl_alloc, align 8, !dbg !3332
  %1 = load ptr, ptr %0, align 8, !dbg !3332
  call void @llvm.dbg.value(metadata ptr %1, metadata !3319, metadata !DIExpression()), !dbg !3328
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1, !dbg !3333
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !3333
  call void @llvm.dbg.value(metadata ptr %2, metadata !3320, metadata !DIExpression()), !dbg !3328
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %1, i64 0, i32 1, !dbg !3334
  %3 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %3, metadata !3321, metadata !DIExpression()), !dbg !3328
  %sv_u = getelementptr inbounds %struct.av, ptr %2, i64 0, i32 3, !dbg !3335
  %4 = load ptr, ptr %sv_u, align 8, !dbg !3335
  call void @llvm.dbg.value(metadata ptr %4, metadata !3322, metadata !DIExpression()), !dbg !3328
  %5 = ptrtoint ptr %1 to i64, !dbg !3336
  %6 = ptrtoint ptr %3 to i64, !dbg !3337
  %7 = ptrtoint ptr %2 to i64, !dbg !3338
  %8 = ptrtoint ptr %4 to i64, !dbg !3339
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %level, ptr noundef %file, ptr noundef nonnull @.str.11, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #11, !dbg !3340
  call void @llvm.dbg.value(metadata i32 1, metadata !3323, metadata !DIExpression()), !dbg !3328
  %9 = load i64, ptr %1, align 8, !dbg !3341
  %cmp.not115 = icmp slt i64 %9, 1, !dbg !3342
  br i1 %cmp.not115, label %cleanup, label %for.body.lr.ph, !dbg !3343

for.body.lr.ph:                                   ; preds = %if.end
  %add = add nsw i32 %level, 1
  %tobool44.not = icmp eq i32 %full, 0
  br i1 %tobool44.not, label %for.body.us, label %for.body, !dbg !3344

for.body.us:                                      ; preds = %for.body.lr.ph, %if.end61.us
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %if.end61.us ], [ 1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv121, metadata !3323, metadata !DIExpression()), !dbg !3328
  %arrayidx3.us = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv121, !dbg !3346
  %10 = load ptr, ptr %arrayidx3.us, align 8, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %10, metadata !3324, metadata !DIExpression()), !dbg !3347
  %tobool4.not.us = icmp eq ptr %10, null, !dbg !3348
  br i1 %tobool4.not.us, label %if.end61.us, label %land.lhs.true.us, !dbg !3350

land.lhs.true.us:                                 ; preds = %for.body.us
  %xpadn_len.us = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 7, !dbg !3351
  %11 = load i8, ptr %xpadn_len.us, align 8, !dbg !3351
  %tobool5.not.us = icmp eq i8 %11, 0, !dbg !3351
  call void @llvm.dbg.value(metadata ptr undef, metadata !3324, metadata !DIExpression()), !dbg !3347
  br i1 %tobool5.not.us, label %if.end61.us, label %if.then9.us, !dbg !3352

if.then9.us:                                      ; preds = %land.lhs.true.us
  call void @llvm.dbg.value(metadata ptr %10, metadata !3324, metadata !DIExpression()), !dbg !3347
  %xpadn_flags.us = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 8, !dbg !3353
  %12 = load i8, ptr %xpadn_flags.us, align 1, !dbg !3353
  %13 = and i8 %12, 1, !dbg !3353
  %tobool11.not.us = icmp eq i8 %13, 0, !dbg !3353
  %arrayidx25.us = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv121, !dbg !3356
  %14 = load ptr, ptr %arrayidx25.us, align 8, !dbg !3356
  %15 = ptrtoint ptr %14 to i64, !dbg !3356
  %tobool28.not.us = icmp eq ptr %14, null, !dbg !3356
  br i1 %tobool11.not.us, label %if.else.us, label %if.then12.us, !dbg !3357

if.then12.us:                                     ; preds = %if.then9.us
  br i1 %tobool28.not.us, label %cond.end.us, label %cond.true.us, !dbg !3358

cond.true.us:                                     ; preds = %if.then12.us
  %sv_refcnt.us = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 1, !dbg !3359
  %16 = load i32, ptr %sv_refcnt.us, align 8, !dbg !3359
  br label %cond.end.us, !dbg !3358

cond.end.us:                                      ; preds = %cond.true.us, %if.then12.us
  %cond.us = phi i32 [ %16, %cond.true.us ], [ 0, %if.then12.us ], !dbg !3358
  %conv20.us = zext i32 %cond.us to i64, !dbg !3360
  %17 = load ptr, ptr %10, align 8, !dbg !3361
  %xpadn_high.us = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 4, !dbg !3362
  %18 = load i32, ptr %xpadn_high.us, align 4, !dbg !3362
  %conv21.us = zext i32 %18 to i64, !dbg !3363
  %xpadn_low.us = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 3, !dbg !3364
  %19 = load i32, ptr %xpadn_low.us, align 8, !dbg !3364
  %conv22.us = zext i32 %19 to i64, !dbg !3365
  %20 = trunc i64 %indvars.iv121 to i32, !dbg !3366
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add, ptr noundef %file, ptr noundef nonnull @.str.12, i32 noundef %20, i64 noundef %15, i64 noundef %conv20.us, ptr noundef %17, i64 noundef %conv21.us, i64 noundef %conv22.us) #11, !dbg !3366
  br label %if.end61.us, !dbg !3366

if.else.us:                                       ; preds = %if.then9.us
  br i1 %tobool28.not.us, label %cond.end34.us, label %cond.true29.us, !dbg !3367

cond.true29.us:                                   ; preds = %if.else.us
  %sv_refcnt32.us = getelementptr inbounds %struct.sv, ptr %14, i64 0, i32 1, !dbg !3368
  %21 = load i32, ptr %sv_refcnt32.us, align 8, !dbg !3368
  br label %cond.end34.us, !dbg !3367

cond.end34.us:                                    ; preds = %cond.true29.us, %if.else.us
  %cond35.us = phi i32 [ %21, %cond.true29.us ], [ 0, %if.else.us ], !dbg !3367
  %conv36.us = zext i32 %cond35.us to i64, !dbg !3369
  %xpadn_low37.us = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 3, !dbg !3370
  %22 = load i32, ptr %xpadn_low37.us, align 8, !dbg !3370
  %conv38.us = zext i32 %22 to i64, !dbg !3371
  %xpadn_high39.us = getelementptr inbounds %struct.padname, ptr %10, i64 0, i32 4, !dbg !3372
  %23 = load i32, ptr %xpadn_high39.us, align 4, !dbg !3372
  %conv40.us = zext i32 %23 to i64, !dbg !3373
  %24 = load ptr, ptr %10, align 8, !dbg !3374
  %25 = trunc i64 %indvars.iv121 to i32, !dbg !3375
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add, ptr noundef %file, ptr noundef nonnull @.str.13, i32 noundef %25, i64 noundef %15, i64 noundef %conv36.us, i64 noundef %conv38.us, i64 noundef %conv40.us, ptr noundef %24) #11, !dbg !3375
  br label %if.end61.us

if.end61.us:                                      ; preds = %for.body.us, %land.lhs.true.us, %cond.end34.us, %cond.end.us
  %indvars.iv.next122 = add nuw i64 %indvars.iv121, 1, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next122, metadata !3323, metadata !DIExpression()), !dbg !3328
  %26 = load i64, ptr %1, align 8, !dbg !3341
  %cmp.not.us = icmp slt i64 %26, %indvars.iv.next122, !dbg !3342
  br i1 %cmp.not.us, label %cleanup, label %for.body.us, !dbg !3343, !llvm.loop !3377

for.body:                                         ; preds = %for.body.lr.ph, %if.end61
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end61 ], [ 1, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3323, metadata !DIExpression()), !dbg !3328
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv, !dbg !3346
  %27 = load ptr, ptr %arrayidx3, align 8, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %27, metadata !3324, metadata !DIExpression()), !dbg !3347
  %tobool4.not = icmp eq ptr %27, null, !dbg !3348
  br i1 %tobool4.not, label %if.else43, label %land.lhs.true, !dbg !3350

land.lhs.true:                                    ; preds = %for.body
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %27, i64 0, i32 7, !dbg !3351
  %28 = load i8, ptr %xpadn_len, align 8, !dbg !3351
  %tobool5.not = icmp eq i8 %28, 0, !dbg !3351
  call void @llvm.dbg.value(metadata ptr undef, metadata !3324, metadata !DIExpression()), !dbg !3347
  br i1 %tobool5.not, label %if.else43, label %if.then9, !dbg !3352

if.then9:                                         ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata ptr %27, metadata !3324, metadata !DIExpression()), !dbg !3347
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %27, i64 0, i32 8, !dbg !3353
  %29 = load i8, ptr %xpadn_flags, align 1, !dbg !3353
  %30 = and i8 %29, 1, !dbg !3353
  %tobool11.not = icmp eq i8 %30, 0, !dbg !3353
  %arrayidx25 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv, !dbg !3356
  %31 = load ptr, ptr %arrayidx25, align 8, !dbg !3356
  %32 = ptrtoint ptr %31 to i64, !dbg !3356
  %tobool28.not = icmp eq ptr %31, null, !dbg !3356
  br i1 %tobool11.not, label %if.else, label %if.then12, !dbg !3357

if.then12:                                        ; preds = %if.then9
  br i1 %tobool28.not, label %cond.end, label %cond.true, !dbg !3358

cond.true:                                        ; preds = %if.then12
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 1, !dbg !3359
  %33 = load i32, ptr %sv_refcnt, align 8, !dbg !3359
  br label %cond.end, !dbg !3358

cond.end:                                         ; preds = %if.then12, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ 0, %if.then12 ], !dbg !3358
  %conv20 = zext i32 %cond to i64, !dbg !3360
  %34 = load ptr, ptr %27, align 8, !dbg !3361
  %xpadn_high = getelementptr inbounds %struct.padname, ptr %27, i64 0, i32 4, !dbg !3362
  %35 = load i32, ptr %xpadn_high, align 4, !dbg !3362
  %conv21 = zext i32 %35 to i64, !dbg !3363
  %xpadn_low = getelementptr inbounds %struct.padname, ptr %27, i64 0, i32 3, !dbg !3364
  %36 = load i32, ptr %xpadn_low, align 8, !dbg !3364
  %conv22 = zext i32 %36 to i64, !dbg !3365
  %37 = trunc i64 %indvars.iv to i32, !dbg !3366
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add, ptr noundef %file, ptr noundef nonnull @.str.12, i32 noundef %37, i64 noundef %32, i64 noundef %conv20, ptr noundef %34, i64 noundef %conv21, i64 noundef %conv22) #11, !dbg !3366
  br label %if.end61, !dbg !3366

if.else:                                          ; preds = %if.then9
  br i1 %tobool28.not, label %cond.end34, label %cond.true29, !dbg !3367

cond.true29:                                      ; preds = %if.else
  %sv_refcnt32 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 1, !dbg !3368
  %38 = load i32, ptr %sv_refcnt32, align 8, !dbg !3368
  br label %cond.end34, !dbg !3367

cond.end34:                                       ; preds = %if.else, %cond.true29
  %cond35 = phi i32 [ %38, %cond.true29 ], [ 0, %if.else ], !dbg !3367
  %conv36 = zext i32 %cond35 to i64, !dbg !3369
  %xpadn_low37 = getelementptr inbounds %struct.padname, ptr %27, i64 0, i32 3, !dbg !3370
  %39 = load i32, ptr %xpadn_low37, align 8, !dbg !3370
  %conv38 = zext i32 %39 to i64, !dbg !3371
  %xpadn_high39 = getelementptr inbounds %struct.padname, ptr %27, i64 0, i32 4, !dbg !3372
  %40 = load i32, ptr %xpadn_high39, align 4, !dbg !3372
  %conv40 = zext i32 %40 to i64, !dbg !3373
  %41 = load ptr, ptr %27, align 8, !dbg !3374
  %42 = trunc i64 %indvars.iv to i32, !dbg !3375
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add, ptr noundef %file, ptr noundef nonnull @.str.13, i32 noundef %42, i64 noundef %32, i64 noundef %conv36, i64 noundef %conv38, i64 noundef %conv40, ptr noundef %41) #11, !dbg !3375
  br label %if.end61

if.else43:                                        ; preds = %land.lhs.true, %for.body
  call void @llvm.dbg.value(metadata ptr %27, metadata !3324, metadata !DIExpression()), !dbg !3347
  %arrayidx48 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv, !dbg !3379
  %43 = load ptr, ptr %arrayidx48, align 8, !dbg !3379
  %44 = ptrtoint ptr %43 to i64, !dbg !3379
  %tobool51.not = icmp eq ptr %43, null, !dbg !3382
  br i1 %tobool51.not, label %cond.end57, label %cond.true52, !dbg !3382

cond.true52:                                      ; preds = %if.else43
  %sv_refcnt55 = getelementptr inbounds %struct.sv, ptr %43, i64 0, i32 1, !dbg !3383
  %45 = load i32, ptr %sv_refcnt55, align 8, !dbg !3383
  br label %cond.end57, !dbg !3382

cond.end57:                                       ; preds = %if.else43, %cond.true52
  %cond58 = phi i32 [ %45, %cond.true52 ], [ 0, %if.else43 ], !dbg !3382
  %conv59 = zext i32 %cond58 to i64, !dbg !3384
  %46 = trunc i64 %indvars.iv to i32, !dbg !3385
  tail call void (i32, ptr, ptr, ...) @Perl_dump_indent(i32 noundef %add, ptr noundef %file, ptr noundef nonnull @.str.14, i32 noundef %46, i64 noundef %44, i64 noundef %conv59) #11, !dbg !3385
  br label %if.end61, !dbg !3386

if.end61:                                         ; preds = %cond.end57, %cond.end, %cond.end34
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3323, metadata !DIExpression()), !dbg !3328
  %47 = load i64, ptr %1, align 8, !dbg !3341
  %cmp.not = icmp slt i64 %47, %indvars.iv.next, !dbg !3342
  br i1 %cmp.not, label %cleanup, label %for.body, !dbg !3343, !llvm.loop !3377

cleanup:                                          ; preds = %if.end61, %if.end61.us, %if.end, %entry
  ret void, !dbg !3387
}

declare !dbg !3388 void @Perl_dump_indent(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_cv_clone(ptr noundef %proto) local_unnamed_addr #0 !dbg !3391 {
entry:
  call void @llvm.dbg.value(metadata ptr %proto, metadata !3395, metadata !DIExpression()), !dbg !3396
  %0 = load ptr, ptr %proto, align 8, !dbg !3397
  %xcv_padlist_u = getelementptr inbounds %struct.xpvcv, ptr %0, i64 0, i32 9, !dbg !3397
  %1 = load ptr, ptr %xcv_padlist_u, align 8, !dbg !3397
  %tobool.not = icmp eq ptr %1, null, !dbg !3397
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !3399

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.15) #11, !dbg !3400
  br label %if.end, !dbg !3400

if.end:                                           ; preds = %if.then, %entry
  %call = tail call fastcc ptr @S_cv_clone(ptr noundef nonnull %proto, ptr noundef null, ptr noundef null, ptr noundef null), !dbg !3401
  ret ptr %call, !dbg !3402
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @S_cv_clone(ptr noundef %proto, ptr noundef %cv, ptr noundef %outside, ptr noundef %cloned) unnamed_addr #0 !dbg !3403 {
entry:
  %cv.addr.i = alloca ptr, align 8
  %protokey.i = alloca ptr, align 8
  call void @llvm.dbg.value(metadata ptr %proto, metadata !3407, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata ptr %cv, metadata !3408, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata ptr %outside, metadata !3409, metadata !DIExpression()), !dbg !3412
  call void @llvm.dbg.value(metadata ptr %cloned, metadata !3410, metadata !DIExpression()), !dbg !3412
  %tobool.not = icmp eq ptr %cv, null, !dbg !3413
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3412
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !3414

if.then:                                          ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.cv, ptr %proto, i64 0, i32 2, !dbg !3415
  %0 = load i32, ptr %sv_flags, align 4, !dbg !3415
  %and = and i32 %0, 255, !dbg !3415
  %call = tail call ptr @Perl_newSV_type(i32 noundef %and) #11, !dbg !3415
  call void @llvm.dbg.value(metadata ptr %call, metadata !3408, metadata !DIExpression()), !dbg !3412
  br label %if.end, !dbg !3417

if.end:                                           ; preds = %if.then, %entry
  %cv.addr.i.0.328 = phi ptr [ %cv, %entry ], [ %call, %if.then ]
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3408, metadata !DIExpression()), !dbg !3412
  %1 = load ptr, ptr %proto, align 8, !dbg !3418
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %1, i64 0, i32 12, !dbg !3418
  %2 = load i32, ptr %xcv_flags, align 4, !dbg !3418
  %and2 = and i32 %2, -3121, !dbg !3419
  %3 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3420
  %xcv_flags4 = getelementptr inbounds %struct.xpvcv, ptr %3, i64 0, i32 12, !dbg !3420
  store i32 %and2, ptr %xcv_flags4, align 4, !dbg !3421
  %4 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3422
  %xcv_flags6 = getelementptr inbounds %struct.xpvcv, ptr %4, i64 0, i32 12, !dbg !3422
  %5 = load i32, ptr %xcv_flags6, align 4, !dbg !3422
  %or = or i32 %5, 64, !dbg !3422
  store i32 %or, ptr %xcv_flags6, align 4, !dbg !3422
  %6 = load ptr, ptr %proto, align 8, !dbg !3423
  %xcv_flags8 = getelementptr inbounds %struct.xpvcv, ptr %6, i64 0, i32 12, !dbg !3423
  %7 = load i32, ptr %xcv_flags8, align 4, !dbg !3423
  %and9 = and i32 %7, 4096, !dbg !3423
  %tobool10.not = icmp eq i32 %and9, 0, !dbg !3423
  %xcv_file14 = getelementptr inbounds %struct.xpvcv, ptr %6, i64 0, i32 8, !dbg !3412
  %8 = load ptr, ptr %xcv_file14, align 8, !dbg !3412
  br i1 %tobool10.not, label %cond.end, label %cond.true, !dbg !3423

cond.true:                                        ; preds = %if.end
  %call12 = tail call ptr @Perl_savepv(ptr noundef %8) #11, !dbg !3424
  br label %cond.end, !dbg !3423

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi ptr [ %call12, %cond.true ], [ %8, %if.end ], !dbg !3423
  %9 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3425
  %xcv_file16 = getelementptr inbounds %struct.xpvcv, ptr %9, i64 0, i32 8, !dbg !3425
  store ptr %cond, ptr %xcv_file16, align 8, !dbg !3426
  %10 = load ptr, ptr %proto, align 8, !dbg !3427
  %xcv_flags18 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 12, !dbg !3427
  %11 = load i32, ptr %xcv_flags18, align 4, !dbg !3427
  %and19 = and i32 %11, 32768, !dbg !3427
  %tobool20.not = icmp eq i32 %and19, 0, !dbg !3427
  br i1 %tobool20.not, label %S_CvGV.exit, label %if.then21, !dbg !3429

if.then21:                                        ; preds = %cond.end
  %cv.addr.0.val = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3430
  call void @llvm.dbg.value(metadata ptr undef, metadata !1460, metadata !DIExpression()), !dbg !3431
  %xcv_flags.i = getelementptr inbounds %struct.xpvcv, ptr %cv.addr.0.val, i64 0, i32 12, !dbg !3433
  %12 = load i32, ptr %xcv_flags.i, align 4, !dbg !3433
  %and.i = and i32 %12, 32768, !dbg !3433
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !3433
  br i1 %tobool.not.i, label %cond.end27, label %CvNAME_HEK.exit, !dbg !3433

CvNAME_HEK.exit:                                  ; preds = %if.then21
  %xcv_gv_u.i = getelementptr inbounds %struct.xpvcv, ptr %cv.addr.0.val, i64 0, i32 7, !dbg !3434
  %13 = load ptr, ptr %xcv_gv_u.i, align 8, !dbg !3435
  %tobool23.not = icmp eq ptr %13, null, !dbg !3430
  br i1 %tobool23.not, label %cond.end27, label %cond.true24, !dbg !3430

cond.true24:                                      ; preds = %CvNAME_HEK.exit
  tail call void @Perl_unshare_hek(ptr noundef nonnull %13) #11, !dbg !3430
  %proto.val123.pre = load ptr, ptr %proto, align 8, !dbg !3430
  %xcv_flags.i124.phi.trans.insert = getelementptr inbounds %struct.xpvcv, ptr %proto.val123.pre, i64 0, i32 12
  %.pre = load i32, ptr %xcv_flags.i124.phi.trans.insert, align 4, !dbg !3436
  %.pre334 = and i32 %.pre, 32768, !dbg !3436
  br label %cond.end27, !dbg !3430

cond.end27:                                       ; preds = %if.then21, %CvNAME_HEK.exit, %cond.true24
  %and.i125.pre-phi = phi i32 [ 1, %if.then21 ], [ 1, %CvNAME_HEK.exit ], [ %.pre334, %cond.true24 ], !dbg !3436
  %proto.val123 = phi ptr [ %10, %if.then21 ], [ %10, %CvNAME_HEK.exit ], [ %proto.val123.pre, %cond.true24 ], !dbg !3430
  call void @llvm.dbg.value(metadata ptr undef, metadata !1460, metadata !DIExpression()), !dbg !3438
  %tobool.not.i126 = icmp ne i32 %and.i125.pre-phi, 0, !dbg !3436
  tail call void @llvm.assume(i1 %tobool.not.i126), !dbg !3436
  %xcv_gv_u.i127 = getelementptr inbounds %struct.xpvcv, ptr %proto.val123, i64 0, i32 7, !dbg !3439
  %14 = load ptr, ptr %xcv_gv_u.i127, align 8, !dbg !3440
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 -24, !dbg !3430
  %he_valu = getelementptr inbounds %struct.he, ptr %add.ptr, i64 0, i32 2, !dbg !3430
  %15 = load i64, ptr %he_valu, align 8, !dbg !3430
  %inc = add i64 %15, 1, !dbg !3430
  store i64 %inc, ptr %he_valu, align 8, !dbg !3430
  %proto.val = load ptr, ptr %proto, align 8, !dbg !3430
  call void @llvm.dbg.value(metadata ptr undef, metadata !1460, metadata !DIExpression()), !dbg !3441
  %xcv_flags.i131 = getelementptr inbounds %struct.xpvcv, ptr %proto.val, i64 0, i32 12, !dbg !3443
  %16 = load i32, ptr %xcv_flags.i131, align 4, !dbg !3443
  %and.i132 = and i32 %16, 32768, !dbg !3443
  %tobool.not.i133 = icmp eq i32 %and.i132, 0, !dbg !3443
  br i1 %tobool.not.i133, label %CvNAME_HEK.exit137, label %cond.true.i135, !dbg !3443

cond.true.i135:                                   ; preds = %cond.end27
  %xcv_gv_u.i134 = getelementptr inbounds %struct.xpvcv, ptr %proto.val, i64 0, i32 7, !dbg !3444
  %17 = load ptr, ptr %xcv_gv_u.i134, align 8, !dbg !3445
  br label %CvNAME_HEK.exit137, !dbg !3443

CvNAME_HEK.exit137:                               ; preds = %cond.end27, %cond.true.i135
  %cond.i136 = phi ptr [ %17, %cond.true.i135 ], [ null, %cond.end27 ], !dbg !3443
  %18 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3430
  %xcv_gv_u31 = getelementptr inbounds %struct.xpvcv, ptr %18, i64 0, i32 7, !dbg !3430
  store ptr %cond.i136, ptr %xcv_gv_u31, align 8, !dbg !3430
  %19 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3430
  %xcv_flags33 = getelementptr inbounds %struct.xpvcv, ptr %19, i64 0, i32 12, !dbg !3430
  %20 = load i32, ptr %xcv_flags33, align 4, !dbg !3430
  %or34 = or i32 %20, 32768, !dbg !3430
  store i32 %or34, ptr %xcv_flags33, align 4, !dbg !3430
  br label %if.end36, !dbg !3430

S_CvGV.exit:                                      ; preds = %cond.end
  call void @llvm.dbg.value(metadata ptr %proto, metadata !3446, metadata !DIExpression()) #11, !dbg !3451
  %xcv_gv_u.i142 = getelementptr inbounds %struct.xpvcv, ptr %10, i64 0, i32 7, !dbg !3453
  %21 = load ptr, ptr %xcv_gv_u.i142, align 8, !dbg !3454
  tail call void @Perl_cvgv_set(ptr noundef nonnull %cv.addr.i.0.328, ptr noundef %21) #11, !dbg !3455
  br label %if.end36

if.end36:                                         ; preds = %S_CvGV.exit, %CvNAME_HEK.exit137
  %22 = load ptr, ptr %proto, align 8, !dbg !3456
  %xcv_stash = getelementptr inbounds %struct.xpvcv, ptr %22, i64 0, i32 4, !dbg !3456
  %23 = load ptr, ptr %xcv_stash, align 8, !dbg !3456
  tail call void @Perl_cvstash_set(ptr noundef nonnull %cv.addr.i.0.328, ptr noundef %23) #11, !dbg !3456
  %24 = load ptr, ptr %proto, align 8, !dbg !3457
  %xcv_root_u = getelementptr inbounds %struct.xpvcv, ptr %24, i64 0, i32 6, !dbg !3457
  %25 = load ptr, ptr %xcv_root_u, align 8, !dbg !3457
  %tobool40.not = icmp eq ptr %25, null, !dbg !3457
  br i1 %tobool40.not, label %cond.end48, label %cond.true41, !dbg !3457

cond.true41:                                      ; preds = %if.end36
  %op_targ = getelementptr inbounds %struct.op, ptr %25, i64 0, i32 3, !dbg !3457
  %26 = load i64, ptr %op_targ, align 8, !dbg !3457
  %inc44 = add i64 %26, 1, !dbg !3457
  store i64 %inc44, ptr %op_targ, align 8, !dbg !3457
  %27 = load ptr, ptr %proto, align 8, !dbg !3457
  %xcv_root_u46 = getelementptr inbounds %struct.xpvcv, ptr %27, i64 0, i32 6, !dbg !3457
  %28 = load ptr, ptr %xcv_root_u46, align 8, !dbg !3457
  br label %cond.end48, !dbg !3457

cond.end48:                                       ; preds = %if.end36, %cond.true41
  %cond49 = phi ptr [ %28, %cond.true41 ], [ null, %if.end36 ], !dbg !3457
  %29 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3458
  %xcv_root_u51 = getelementptr inbounds %struct.xpvcv, ptr %29, i64 0, i32 6, !dbg !3458
  store ptr %cond49, ptr %xcv_root_u51, align 8, !dbg !3459
  %30 = load ptr, ptr %proto, align 8, !dbg !3460
  %xcv_start_u = getelementptr inbounds %struct.xpvcv, ptr %30, i64 0, i32 5, !dbg !3460
  %31 = load ptr, ptr %xcv_start_u, align 8, !dbg !3460
  %32 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3461
  %xcv_start_u54 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 5, !dbg !3461
  store ptr %31, ptr %xcv_start_u54, align 8, !dbg !3462
  %33 = load ptr, ptr %proto, align 8, !dbg !3463
  %xcv_outside_seq = getelementptr inbounds %struct.xpvcv, ptr %33, i64 0, i32 11, !dbg !3463
  %34 = load i32, ptr %xcv_outside_seq, align 8, !dbg !3463
  %35 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3464
  %xcv_outside_seq57 = getelementptr inbounds %struct.xpvcv, ptr %35, i64 0, i32 11, !dbg !3464
  store i32 %34, ptr %xcv_outside_seq57, align 8, !dbg !3465
  %sv_flags58 = getelementptr inbounds %struct.cv, ptr %proto, i64 0, i32 2, !dbg !3466
  %36 = load i32, ptr %sv_flags58, align 4, !dbg !3466
  %and59 = and i32 %36, 1024, !dbg !3466
  %tobool60.not = icmp eq i32 %and59, 0, !dbg !3466
  br i1 %tobool60.not, label %if.end71, label %if.then61, !dbg !3468

if.then61:                                        ; preds = %cond.end48
  %sv_u = getelementptr inbounds %struct.cv, ptr %proto, i64 0, i32 3, !dbg !3469
  %37 = load ptr, ptr %sv_u, align 8, !dbg !3469
  %38 = load ptr, ptr %proto, align 8, !dbg !3469
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 2, !dbg !3469
  %39 = load i64, ptr %xpv_cur, align 8, !dbg !3469
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %cv.addr.i.0.328, ptr noundef %37, i64 noundef %39) #11, !dbg !3469
  %40 = load i32, ptr %sv_flags58, align 4, !dbg !3471
  %and65 = and i32 %40, 536870912, !dbg !3471
  %tobool66.not = icmp eq i32 %and65, 0, !dbg !3471
  br i1 %tobool66.not, label %if.end71, label %if.then67, !dbg !3473

if.then67:                                        ; preds = %if.then61
  %sv_flags68 = getelementptr inbounds %struct.sv, ptr %cv.addr.i.0.328, i64 0, i32 2, !dbg !3474
  %41 = load i32, ptr %sv_flags68, align 4, !dbg !3474
  %or69 = or i32 %41, 536870912, !dbg !3474
  store i32 %or69, ptr %sv_flags68, align 4, !dbg !3474
  br label %if.end71, !dbg !3474

if.end71:                                         ; preds = %if.then61, %if.then67, %cond.end48
  %42 = load ptr, ptr %proto, align 8, !dbg !3475
  %xmg_u = getelementptr inbounds %struct.xpvmg, ptr %42, i64 0, i32 1, !dbg !3475
  %43 = load ptr, ptr %xmg_u, align 8, !dbg !3475
  %tobool73.not = icmp eq ptr %43, null, !dbg !3475
  br i1 %tobool73.not, label %if.end76, label %if.then74, !dbg !3477

if.then74:                                        ; preds = %if.end71
  %call75 = tail call i32 @Perl_mg_copy(ptr noundef nonnull %proto, ptr noundef nonnull %cv.addr.i.0.328, ptr noundef null, i32 noundef 0) #11, !dbg !3478
  %.pre330 = load ptr, ptr %proto, align 8, !dbg !3479
  br label %if.end76, !dbg !3478

if.end76:                                         ; preds = %if.then74, %if.end71
  %44 = phi ptr [ %.pre330, %if.then74 ], [ %42, %if.end71 ], !dbg !3479
  %xcv_padlist_u = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 9, !dbg !3479
  %45 = load ptr, ptr %xcv_padlist_u, align 8, !dbg !3479
  %tobool78.not = icmp eq ptr %45, null, !dbg !3479
  br i1 %tobool78.not, label %if.end82, label %if.then79, !dbg !3481

if.then79:                                        ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cv.addr.i), !dbg !3482
  call void @llvm.dbg.value(metadata ptr %proto, metadata !3487, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  store ptr %cv.addr.i.0.328, ptr %cv.addr.i, align 8
  call void @llvm.dbg.value(metadata ptr %outside, metadata !3489, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata ptr %cloned, metadata !3490, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i1 %tobool.not, metadata !3491, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !3482
  call void @llvm.dbg.value(metadata ptr %45, metadata !3493, metadata !DIExpression()) #11, !dbg !3482
  %xpadl_alloc.i = getelementptr inbounds %struct.padlist, ptr %45, i64 0, i32 1, !dbg !3563
  %46 = load ptr, ptr %xpadl_alloc.i, align 8, !dbg !3563
  %47 = load ptr, ptr %46, align 8, !dbg !3563
  call void @llvm.dbg.value(metadata ptr %47, metadata !3495, metadata !DIExpression()) #11, !dbg !3482
  %arrayidx.i = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !3564
  %48 = load ptr, ptr %arrayidx.i, align 8, !dbg !3564
  call void @llvm.dbg.value(metadata ptr %48, metadata !3496, metadata !DIExpression()) #11, !dbg !3482
  %xpadnl_alloc.i = getelementptr inbounds %struct.padnamelist, ptr %47, i64 0, i32 1, !dbg !3565
  %49 = load ptr, ptr %xpadnl_alloc.i, align 8, !dbg !3565
  call void @llvm.dbg.value(metadata ptr %49, metadata !3500, metadata !DIExpression()) #11, !dbg !3482
  %sv_u.i = getelementptr inbounds %struct.av, ptr %48, i64 0, i32 3, !dbg !3566
  %50 = load ptr, ptr %sv_u.i, align 8, !dbg !3566
  call void @llvm.dbg.value(metadata ptr %50, metadata !3501, metadata !DIExpression()) #11, !dbg !3482
  %51 = load i64, ptr %47, align 8, !dbg !3567
  call void @llvm.dbg.value(metadata i64 %51, metadata !3502, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !3482
  %52 = load ptr, ptr %48, align 8, !dbg !3568
  %xav_fill.i = getelementptr inbounds %struct.xpvav, ptr %52, i64 0, i32 2, !dbg !3568
  %53 = load i64, ptr %xav_fill.i, align 8, !dbg !3568
  %conv3.i = trunc i64 %53 to i32, !dbg !3568
  call void @llvm.dbg.value(metadata i32 %conv3.i, metadata !3503, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i32 0, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8 0, metadata !3507, metadata !DIExpression()) #11, !dbg !3482
  %tobool.not.i144 = icmp eq ptr %outside, null, !dbg !3569
  br i1 %tobool.not.i144, label %if.then.i, label %cond.end.i, !dbg !3571

if.then.i:                                        ; preds = %if.then79
  %xcv_flags.i145 = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 12, !dbg !3572
  %54 = load i32, ptr %xcv_flags.i145, align 4, !dbg !3572
  %and.i146 = and i32 %54, 16, !dbg !3572
  %tobool5.not.i = icmp eq i32 %and.i146, 0, !dbg !3572
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i, !dbg !3575

if.then6.i:                                       ; preds = %if.then.i
  %call.i147 = tail call ptr @Perl_find_runcv(ptr noundef null) #11, !dbg !3576
  call void @llvm.dbg.value(metadata ptr %call.i147, metadata !3489, metadata !DIExpression()) #11, !dbg !3482
  br label %if.end28.i, !dbg !3577

if.else.i:                                        ; preds = %if.then.i
  %xcv_outside.i = getelementptr inbounds %struct.xpvcv, ptr %44, i64 0, i32 10, !dbg !3578
  %55 = load ptr, ptr %xcv_outside.i, align 8, !dbg !3578
  call void @llvm.dbg.value(metadata ptr %55, metadata !3489, metadata !DIExpression()) #11, !dbg !3482
  %56 = load ptr, ptr %55, align 8, !dbg !3580
  %xcv_flags9.i = getelementptr inbounds %struct.xpvcv, ptr %56, i64 0, i32 12, !dbg !3580
  %57 = load i32, ptr %xcv_flags9.i, align 4, !dbg !3580
  %58 = and i32 %57, 96, !dbg !3582
  %59 = icmp eq i32 %58, 32, !dbg !3582
  br i1 %59, label %if.then23.i, label %lor.lhs.false.i, !dbg !3582

lor.lhs.false.i:                                  ; preds = %if.else.i
  %xcv_padlist_u17.i = getelementptr inbounds %struct.xpvcv, ptr %56, i64 0, i32 9, !dbg !3583
  %60 = load ptr, ptr %xcv_padlist_u17.i, align 8, !dbg !3583
  %tobool18.not.i = icmp eq ptr %60, null, !dbg !3583
  br i1 %tobool18.not.i, label %if.then23.i, label %lor.lhs.false19.i, !dbg !3584

lor.lhs.false19.i:                                ; preds = %lor.lhs.false.i
  %xpadl_id.i = getelementptr inbounds %struct.padlist, ptr %60, i64 0, i32 2, !dbg !3585
  %61 = load i32, ptr %xpadl_id.i, align 8, !dbg !3585
  %xpadl_outid.i = getelementptr inbounds %struct.padlist, ptr %45, i64 0, i32 3, !dbg !3586
  %62 = load i32, ptr %xpadl_outid.i, align 4, !dbg !3586
  %cmp.not.i = icmp eq i32 %61, %62, !dbg !3587
  br i1 %cmp.not.i, label %cond.end.i, label %if.then23.i, !dbg !3588

if.then23.i:                                      ; preds = %lor.lhs.false19.i, %lor.lhs.false.i, %if.else.i
  %xpadl_outid24.i = getelementptr inbounds %struct.padlist, ptr %45, i64 0, i32 3, !dbg !3589
  %63 = load i32, ptr %xpadl_outid24.i, align 4, !dbg !3589
  %conv25.i = zext i32 %63 to i64, !dbg !3589
  %call26.i = tail call ptr @Perl_find_runcv_where(i8 noundef zeroext 1, i64 noundef %conv25.i, ptr noundef null) #11, !dbg !3589
  call void @llvm.dbg.value(metadata ptr %call26.i, metadata !3489, metadata !DIExpression()) #11, !dbg !3482
  br label %if.end28.i, !dbg !3591

if.end28.i:                                       ; preds = %if.then23.i, %if.then6.i
  %outside.addr.0.i = phi ptr [ %call.i147, %if.then6.i ], [ %call26.i, %if.then23.i ]
  call void @llvm.dbg.value(metadata ptr %outside.addr.0.i, metadata !3489, metadata !DIExpression()) #11, !dbg !3482
  %tobool29.not.i = icmp eq ptr %outside.addr.0.i, null, !dbg !3592
  br i1 %tobool29.not.i, label %cond.end.i.thread, label %cond.end.i, !dbg !3592

cond.end.i:                                       ; preds = %lor.lhs.false19.i, %if.then79, %if.end28.i
  %outside.addr.0.i195 = phi ptr [ %outside.addr.0.i, %if.end28.i ], [ %55, %lor.lhs.false19.i ], [ %outside, %if.then79 ]
  %outside.addr.0.val718.i = load ptr, ptr %outside.addr.0.i195, align 8, !dbg !3593
  call void @llvm.dbg.value(metadata ptr undef, metadata !2681, metadata !DIExpression()), !dbg !3594
  %xcv_depth.i190 = getelementptr inbounds %struct.xpvcv, ptr %outside.addr.0.val718.i, i64 0, i32 13, !dbg !3596
  %64 = load i32, ptr %xcv_depth.i190, align 4, !dbg !3593
  call void @llvm.dbg.value(metadata i32 %64, metadata !3505, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #11, !dbg !3482
  %tobool32.not.i = icmp eq i32 %64, 0, !dbg !3597
  br i1 %tobool32.not.i, label %cond.end.i.thread, label %65, !dbg !3599

cond.end.i.thread:                                ; preds = %if.end28.i, %cond.end.i
  %outside.addr.0.i196208 = phi ptr [ %outside.addr.0.i195, %cond.end.i ], [ null, %if.end28.i ]
  %tobool29.not.i200206 = phi i1 [ false, %cond.end.i ], [ true, %if.end28.i ]
  br label %65, !dbg !3599

65:                                               ; preds = %cond.end.i, %cond.end.i.thread
  %outside.addr.0.i196207 = phi ptr [ %outside.addr.0.i196208, %cond.end.i.thread ], [ %outside.addr.0.i195, %cond.end.i ]
  %tobool29.not.i200205 = phi i1 [ %tobool29.not.i200206, %cond.end.i.thread ], [ false, %cond.end.i ]
  %66 = phi i32 [ 1, %cond.end.i.thread ], [ %64, %cond.end.i ]
  %spec.store.select.i = sext i32 %66 to i64, !dbg !3599
  call void @llvm.dbg.value(metadata i64 %spec.store.select.i, metadata !3505, metadata !DIExpression()) #11, !dbg !3482
  tail call void @Perl_push_scope() #11, !dbg !3600
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_compcv) #11, !dbg !3601
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  store ptr %cv.addr.i.0.328, ptr @PL_compcv, align 8, !dbg !3602
  br i1 %tobool.not, label %if.then36.i, label %if.end37.i, !dbg !3603

if.then36.i:                                      ; preds = %65
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  tail call void @Perl_save_pushptr(ptr noundef nonnull %cv.addr.i.0.328, i32 noundef 11) #11, !dbg !3604
  br label %if.end37.i, !dbg !3604

if.end37.i:                                       ; preds = %if.then36.i, %65
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %67 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3606
  %xcv_flags39.i = getelementptr inbounds %struct.xpvcv, ptr %67, i64 0, i32 12, !dbg !3606
  %68 = load i32, ptr %xcv_flags39.i, align 4, !dbg !3606
  %and40.i = and i32 %68, 16384, !dbg !3606
  %tobool41.not.i = icmp eq i32 %and40.i, 0, !dbg !3606
  br i1 %tobool41.not.i, label %if.end46.i, label %if.then42.i, !dbg !3608

if.then42.i:                                      ; preds = %if.end37.i
  call void @llvm.dbg.value(metadata ptr %outside.addr.0.i, metadata !2784, metadata !DIExpression()), !dbg !3609
  br i1 %tobool29.not.i200205, label %S_SvREFCNT_inc.exit189, label %if.then.i188, !dbg !3611

if.then.i188:                                     ; preds = %if.then42.i
  %sv_refcnt.i186 = getelementptr inbounds %struct.sv, ptr %outside.addr.0.i196207, i64 0, i32 1, !dbg !3612
  %69 = load i32, ptr %sv_refcnt.i186, align 8, !dbg !3613
  %inc.i187 = add i32 %69, 1, !dbg !3613
  store i32 %inc.i187, ptr %sv_refcnt.i186, align 8, !dbg !3613
  %.pre331 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3614
  br label %S_SvREFCNT_inc.exit189, !dbg !3612

S_SvREFCNT_inc.exit189:                           ; preds = %if.then42.i, %if.then.i188
  %70 = phi ptr [ %67, %if.then42.i ], [ %.pre331, %if.then.i188 ], !dbg !3614
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %xcv_outside45.i = getelementptr inbounds %struct.xpvcv, ptr %70, i64 0, i32 10, !dbg !3614
  store ptr %outside.addr.0.i196207, ptr %xcv_outside45.i, align 8, !dbg !3615
  br label %if.end46.i, !dbg !3614

if.end46.i:                                       ; preds = %S_SvREFCNT_inc.exit189, %if.end37.i
  tail call void @Perl_save_sptr(ptr noundef nonnull @PL_comppad_name) #11, !dbg !3616
  store ptr %47, ptr @PL_comppad_name, align 8, !dbg !3617
  call void @llvm.dbg.value(metadata i32 3, metadata !1182, metadata !DIExpression()) #11, !dbg !3618
  %71 = load ptr, ptr @PL_comppad, align 8, !dbg !3620
  tail call void @Perl_save_pushptr(ptr noundef %71, i32 noundef 7) #11, !dbg !3620
  %call.i178 = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 24) #11, !dbg !3621
  call void @llvm.dbg.value(metadata ptr %call.i178, metadata !1183, metadata !DIExpression()) #11, !dbg !3618
  %call9.i = tail call ptr @Perl_newSV_type(i32 noundef 11) #11, !dbg !3622
  call void @llvm.dbg.value(metadata ptr %call9.i, metadata !1185, metadata !DIExpression()) #11, !dbg !3618
  %call13.i = tail call ptr @Perl_newSV_type(i32 noundef 11) #11, !dbg !3623
  call void @llvm.dbg.value(metadata ptr %call13.i, metadata !1187, metadata !DIExpression()) #11, !dbg !3624
  %call14.i = tail call ptr @Perl_av_store(ptr noundef %call9.i, i64 noundef 0, ptr noundef %call13.i) #11, !dbg !3625
  %sv_flags.i179 = getelementptr inbounds %struct.av, ptr %call13.i, i64 0, i32 2, !dbg !3626
  %72 = load i32, ptr %sv_flags.i179, align 4, !dbg !3626
  %and15.i = and i32 %72, 1073741823, !dbg !3626
  %or.i180 = or i32 %and15.i, -2147483648, !dbg !3626
  store i32 %or.i180, ptr %sv_flags.i179, align 4, !dbg !3626
  %73 = load ptr, ptr @PL_comppad_name, align 8, !dbg !3627
  call void @llvm.dbg.value(metadata ptr %73, metadata !1184, metadata !DIExpression()) #11, !dbg !3618
  %xpadnl_refcnt.i = getelementptr inbounds %struct.padnamelist, ptr %73, i64 0, i32 4, !dbg !3627
  %74 = load i32, ptr %xpadnl_refcnt.i, align 8, !dbg !3628
  %inc.i181 = add i32 %74, 1, !dbg !3628
  store i32 %inc.i181, ptr %xpadnl_refcnt.i, align 8, !dbg !3628
  %call22.i = tail call ptr @Perl_safesysmalloc(i64 noundef 16) #11, !dbg !3629
  call void @llvm.dbg.value(metadata ptr %call22.i, metadata !1186, metadata !DIExpression()) #11, !dbg !3618
  store i64 1, ptr %call.i178, align 8, !dbg !3630
  %xpadl_alloc.i183 = getelementptr inbounds %struct.padlist, ptr %call.i178, i64 0, i32 1, !dbg !3631
  store ptr %call22.i, ptr %xpadl_alloc.i183, align 8, !dbg !3632
  store ptr %73, ptr %call22.i, align 8, !dbg !3633
  %arrayidx23.i = getelementptr inbounds ptr, ptr %call22.i, i64 1, !dbg !3634
  store ptr %call9.i, ptr %arrayidx23.i, align 8, !dbg !3635
  store ptr %call9.i, ptr @PL_comppad, align 8, !dbg !3636
  %sv_u.i184 = getelementptr inbounds %struct.av, ptr %call9.i, i64 0, i32 3, !dbg !3637
  %75 = load ptr, ptr %sv_u.i184, align 8, !dbg !3637
  store ptr %75, ptr @PL_curpad, align 8, !dbg !3638
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %76 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3639
  %xcv_padlist_u49.i = getelementptr inbounds %struct.xpvcv, ptr %76, i64 0, i32 9, !dbg !3639
  store ptr %call.i178, ptr %xcv_padlist_u49.i, align 8, !dbg !3639
  %xpadl_id50.i = getelementptr inbounds %struct.padlist, ptr %45, i64 0, i32 2, !dbg !3640
  %77 = load i32, ptr %xpadl_id50.i, align 8, !dbg !3640
  %78 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3641
  %xcv_padlist_u52.i = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 9, !dbg !3641
  %79 = load ptr, ptr %xcv_padlist_u52.i, align 8, !dbg !3641
  %xpadl_id53.i = getelementptr inbounds %struct.padlist, ptr %79, i64 0, i32 2, !dbg !3642
  store i32 %77, ptr %xpadl_id53.i, align 8, !dbg !3643
  %sext.i = shl i64 %53, 32, !dbg !3644
  %conv54.i = ashr exact i64 %sext.i, 32, !dbg !3644
  tail call void @Perl_av_fill(ptr noundef %call9.i, i64 noundef %conv54.i) #11, !dbg !3644
  %80 = load ptr, ptr @PL_comppad, align 8, !dbg !3645
  %sv_u55.i = getelementptr inbounds %struct.av, ptr %80, i64 0, i32 3, !dbg !3645
  %81 = load ptr, ptr %sv_u55.i, align 8, !dbg !3645
  store ptr %81, ptr @PL_curpad, align 8, !dbg !3646
  br i1 %tobool29.not.i200205, label %if.end78.i, label %land.lhs.true57.i, !dbg !3647

land.lhs.true57.i:                                ; preds = %if.end46.i
  %82 = load ptr, ptr %outside.addr.0.i196207, align 8, !dbg !3648
  %xcv_padlist_u59.i = getelementptr inbounds %struct.xpvcv, ptr %82, i64 0, i32 9, !dbg !3648
  %83 = load ptr, ptr %xcv_padlist_u59.i, align 8, !dbg !3648
  %tobool60.not.i = icmp eq ptr %83, null, !dbg !3648
  br i1 %tobool60.not.i, label %if.end78.i, label %cond.end68.i, !dbg !3649

cond.end68.i:                                     ; preds = %land.lhs.true57.i
  %xpadl_alloc64.i = getelementptr inbounds %struct.padlist, ptr %83, i64 0, i32 1, !dbg !3650
  %84 = load ptr, ptr %xpadl_alloc64.i, align 8, !dbg !3650
  %arrayidx65.i = getelementptr inbounds ptr, ptr %84, i64 %spec.store.select.i, !dbg !3650
  %85 = load ptr, ptr %arrayidx65.i, align 8, !dbg !3650
  %sv_u66.i = getelementptr inbounds %struct.av, ptr %85, i64 0, i32 3, !dbg !3650
  %86 = load ptr, ptr %sv_u66.i, align 8, !dbg !3650
  call void @llvm.dbg.value(metadata ptr %86, metadata !3504, metadata !DIExpression()) #11, !dbg !3482
  %tobool70.not.i = icmp eq ptr %86, null, !dbg !3651
  br i1 %tobool70.not.i, label %if.end78.i, label %if.then71.i, !dbg !3653

if.then71.i:                                      ; preds = %cond.end68.i
  %xpadl_id74.i = getelementptr inbounds %struct.padlist, ptr %83, i64 0, i32 2, !dbg !3654
  %87 = load i32, ptr %xpadl_id74.i, align 8, !dbg !3654
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %88 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3655
  %xcv_padlist_u76.i = getelementptr inbounds %struct.xpvcv, ptr %88, i64 0, i32 9, !dbg !3655
  %89 = load ptr, ptr %xcv_padlist_u76.i, align 8, !dbg !3655
  %xpadl_outid77.i = getelementptr inbounds %struct.padlist, ptr %89, i64 0, i32 3, !dbg !3656
  store i32 %87, ptr %xpadl_outid77.i, align 4, !dbg !3657
  br label %if.end78.i, !dbg !3655

if.end78.i:                                       ; preds = %if.end46.i, %land.lhs.true57.i, %if.then71.i, %cond.end68.i
  %tobool70.not.i213 = phi i1 [ false, %if.then71.i ], [ true, %cond.end68.i ], [ true, %land.lhs.true57.i ], [ true, %if.end46.i ]
  %cond69.i212 = phi ptr [ %86, %if.then71.i ], [ null, %cond.end68.i ], [ null, %land.lhs.true57.i ], [ null, %if.end46.i ]
  call void @llvm.dbg.value(metadata i32 %conv3.i, metadata !3492, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i32 0, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8 0, metadata !3507, metadata !DIExpression()) #11, !dbg !3482
  %cmp79.i279 = icmp sgt i32 %conv3.i, 0, !dbg !3658
  br i1 %cmp79.i279, label %for.body.i.preheader, label %if.end431.i, !dbg !3659

for.body.i.preheader:                             ; preds = %if.end78.i
  %sext338 = shl i64 %51, 32, !dbg !3659
  %90 = ashr exact i64 %sext338, 32, !dbg !3659
  br label %for.body.i, !dbg !3659

for.body.i:                                       ; preds = %for.body.i.preheader, %if.end238.i
  %indvars.iv = phi i64 [ %conv54.i, %for.body.i.preheader ], [ %indvars.iv.next, %if.end238.i ]
  %subclones.0.i284 = phi i32 [ 0, %for.body.i.preheader ], [ %subclones.2.i, %if.end238.i ]
  %trouble.0.i280 = phi i8 [ 0, %for.body.i.preheader ], [ %trouble.3.i, %if.end238.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3492, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i32 %subclones.0.i284, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8 %trouble.0.i280, metadata !3507, metadata !DIExpression()) #11, !dbg !3482
  %cmp81.not.i = icmp sgt i64 %indvars.iv, %90, !dbg !3660
  br i1 %cmp81.not.i, label %if.else233.i, label %cond.end86.i, !dbg !3661

cond.end86.i:                                     ; preds = %for.body.i
  %arrayidx84.i = getelementptr inbounds ptr, ptr %49, i64 %indvars.iv, !dbg !3662
  %91 = load ptr, ptr %arrayidx84.i, align 8, !dbg !3662
  call void @llvm.dbg.value(metadata ptr %91, metadata !3508, metadata !DIExpression()) #11, !dbg !3663
  call void @llvm.dbg.value(metadata ptr null, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  %tobool88.not.i = icmp eq ptr %91, null, !dbg !3664
  br i1 %tobool88.not.i, label %if.else233.i, label %land.lhs.true89.i, !dbg !3665

land.lhs.true89.i:                                ; preds = %cond.end86.i
  %xpadn_len.i = getelementptr inbounds %struct.padname, ptr %91, i64 0, i32 7, !dbg !3666
  %92 = load i8, ptr %xpadn_len.i, align 8, !dbg !3666
  %tobool91.not.i = icmp eq i8 %92, 0, !dbg !3666
  br i1 %tobool91.not.i, label %land.lhs.true226.i, label %if.then92.i, !dbg !3667

if.then92.i:                                      ; preds = %land.lhs.true89.i
  %xpadn_ourstash.i = getelementptr inbounds %struct.padname, ptr %91, i64 0, i32 1, !dbg !3668
  %93 = load ptr, ptr %xpadn_ourstash.i, align 8, !dbg !3668
  %tobool93.not.i = icmp eq ptr %93, null, !dbg !3668
  br i1 %tobool93.not.i, label %if.else95.i, label %if.end238.i, !dbg !3669

if.else95.i:                                      ; preds = %if.then92.i
  %xpadn_flags.i = getelementptr inbounds %struct.padname, ptr %91, i64 0, i32 8, !dbg !3670
  %94 = load i8, ptr %xpadn_flags.i, align 1, !dbg !3670
  %conv96.i = zext i8 %94 to i32, !dbg !3670
  %and97.i = and i32 %conv96.i, 1, !dbg !3670
  %tobool98.not.i = icmp eq i32 %and97.i, 0, !dbg !3670
  br i1 %tobool98.not.i, label %if.then123.i, label %if.then99.i, !dbg !3672

if.then99.i:                                      ; preds = %if.else95.i
  br i1 %tobool70.not.i213, label %if.then118.i, label %lor.lhs.false101.i, !dbg !3673

lor.lhs.false101.i:                               ; preds = %if.then99.i
  %xpadn_low.i = getelementptr inbounds %struct.padname, ptr %91, i64 0, i32 3, !dbg !3676
  %95 = load i32, ptr %xpadn_low.i, align 8, !dbg !3676
  %idxprom102.i = zext i32 %95 to i64, !dbg !3677
  %arrayidx103.i = getelementptr inbounds ptr, ptr %cond69.i212, i64 %idxprom102.i, !dbg !3677
  %96 = load ptr, ptr %arrayidx103.i, align 8, !dbg !3677
  call void @llvm.dbg.value(metadata ptr %96, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  %tobool104.not.i = icmp eq ptr %96, null, !dbg !3678
  br i1 %tobool104.not.i, label %if.then118.i, label %lor.lhs.false105.i, !dbg !3679

lor.lhs.false105.i:                               ; preds = %lor.lhs.false101.i
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %96, i64 0, i32 2, !dbg !3680
  %97 = load i32, ptr %sv_flags.i, align 4, !dbg !3680
  %and106.i = and i32 %97, 262144, !dbg !3680
  %tobool107.not.i = icmp ne i32 %and106.i, 0, !dbg !3680
  %and111.i = and i32 %conv96.i, 2
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  %or.cond713.i = select i1 %tobool107.not.i, i1 %tobool112.not.i, i1 false, !dbg !3681
  br i1 %or.cond713.i, label %land.lhs.true113.i, label %if.end121.i, !dbg !3681

land.lhs.true113.i:                               ; preds = %lor.lhs.false105.i
  br i1 %tobool29.not.i200205, label %if.then118.i, label %lor.lhs.false115.i, !dbg !3682

lor.lhs.false115.i:                               ; preds = %land.lhs.true113.i
  %outside.addr.0.val.i = load ptr, ptr %outside.addr.0.i196207, align 8, !dbg !3683
  call void @llvm.dbg.value(metadata ptr undef, metadata !2681, metadata !DIExpression()), !dbg !3684
  %xcv_depth.i = getelementptr inbounds %struct.xpvcv, ptr %outside.addr.0.val.i, i64 0, i32 13, !dbg !3686
  %98 = load i32, ptr %xcv_depth.i, align 4, !dbg !3683
  %tobool117.not.i = icmp eq i32 %98, 0, !dbg !3683
  br i1 %tobool117.not.i, label %if.then118.i, label %if.end121.i, !dbg !3687

if.then118.i:                                     ; preds = %lor.lhs.false115.i, %land.lhs.true113.i, %lor.lhs.false101.i, %if.then99.i
  %cond87.val.i = load ptr, ptr %91, align 8, !dbg !3688
  call void @llvm.dbg.value(metadata ptr undef, metadata !3690, metadata !DIExpression()) #11, !dbg !3695
  %99 = load i8, ptr %cond87.val.i, align 1, !dbg !3697
  %cmp.i175 = icmp eq i8 %99, 38, !dbg !3698
  %cond.i176 = select i1 %cmp.i175, ptr @.str.29, ptr @.str.30, !dbg !3697
  %conv2.i = zext i8 %92 to i64, !dbg !3699
  tail call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond.i176, i32 noundef 1, i64 noundef %conv2.i, ptr noundef nonnull %cond87.val.i) #11, !dbg !3700
  call void @llvm.dbg.value(metadata ptr null, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  br label %if.then123.i, !dbg !3701

if.end121.i:                                      ; preds = %lor.lhs.false105.i, %lor.lhs.false115.i
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %96, i64 0, i32 1, !dbg !3702
  %100 = load i32, ptr %sv_refcnt.i, align 8, !dbg !3702
  %inc.i = add i32 %100, 1, !dbg !3702
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !3702
  call void @llvm.dbg.value(metadata ptr %96, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  br label %if.end238.i, !dbg !3703

if.then123.i:                                     ; preds = %if.then118.i, %if.else95.i
  call void @llvm.dbg.value(metadata ptr %96, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  %101 = load ptr, ptr %91, align 8, !dbg !3704
  %102 = load i8, ptr %101, align 1, !dbg !3704
  call void @llvm.dbg.value(metadata i8 %102, metadata !3513, metadata !DIExpression()) #11, !dbg !3705
  switch i8 %102, label %if.else206.i [
    i8 38, label %if.then128.i
    i8 64, label %land.lhs.true214.i.sink.split
    i8 37, label %if.then204.i
  ], !dbg !3706

if.then128.i:                                     ; preds = %if.then123.i
  %103 = load i8, ptr %xpadn_flags.i, align 1, !dbg !3707
  %104 = and i8 %103, 2, !dbg !3707
  %tobool132.not.i = icmp eq i8 %104, 0, !dbg !3707
  br i1 %tobool132.not.i, label %if.else153.i, label %land.lhs.true133.i, !dbg !3708

land.lhs.true133.i:                               ; preds = %if.then128.i
  %arrayidx135.i = getelementptr inbounds ptr, ptr %50, i64 %indvars.iv, !dbg !3709
  %105 = load ptr, ptr %arrayidx135.i, align 8, !dbg !3709
  %106 = load ptr, ptr %105, align 8, !dbg !3709
  %xcv_flags137.i = getelementptr inbounds %struct.xpvcv, ptr %106, i64 0, i32 12, !dbg !3709
  %107 = load i32, ptr %xcv_flags137.i, align 4, !dbg !3709
  %and138.i = and i32 %107, 64, !dbg !3709
  %tobool139.not.i = icmp eq i32 %and138.i, 0, !dbg !3709
  br i1 %tobool139.not.i, label %if.then140.i, label %if.else153.i, !dbg !3710

if.then140.i:                                     ; preds = %land.lhs.true133.i
  %inc141.i = add i32 %subclones.0.i284, 1, !dbg !3711
  call void @llvm.dbg.value(metadata i32 %inc141.i, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  %xcv_outside145.i = getelementptr inbounds %struct.xpvcv, ptr %106, i64 0, i32 10, !dbg !3713
  %108 = load ptr, ptr %xcv_outside145.i, align 8, !dbg !3713
  %cmp146.not.i = icmp eq ptr %108, %proto, !dbg !3715
  %spec.select.i = select i1 %cmp146.not.i, i8 %trouble.0.i280, i8 1, !dbg !3716
  call void @llvm.dbg.value(metadata i8 %spec.select.i, metadata !3507, metadata !DIExpression()) #11, !dbg !3482
  %call150.i = tail call ptr @Perl_newSV_type(i32 noundef 13) #11, !dbg !3717
  call void @llvm.dbg.value(metadata ptr %call150.i, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  %109 = load ptr, ptr %call150.i, align 8, !dbg !3718
  %xcv_flags152.i = getelementptr inbounds %struct.xpvcv, ptr %109, i64 0, i32 12, !dbg !3718
  %110 = load i32, ptr %xcv_flags152.i, align 4, !dbg !3718
  %or.i = or i32 %110, 65536, !dbg !3718
  store i32 %or.i, ptr %xcv_flags152.i, align 4, !dbg !3718
  br label %if.end238.i, !dbg !3719

if.else153.i:                                     ; preds = %land.lhs.true133.i, %if.then128.i
  %111 = load i8, ptr %xpadn_len.i, align 8, !dbg !3720
  %conv155.i = zext i8 %111 to i64, !dbg !3720
  %cmp156.i = icmp ugt i8 %111, 1, !dbg !3721
  br i1 %cmp156.i, label %land.lhs.true158.i, label %if.else188.i, !dbg !3722

land.lhs.true158.i:                               ; preds = %if.else153.i
  %112 = load ptr, ptr %xpadn_ourstash.i, align 8, !dbg !3723
  %tobool160.not.i = icmp eq ptr %112, null, !dbg !3723
  br i1 %tobool160.not.i, label %if.then161.i, label %if.else188.i, !dbg !3724

if.then161.i:                                     ; preds = %land.lhs.true158.i
  %add.ptr.i = getelementptr inbounds i8, ptr %101, i64 1, !dbg !3725
  %sub.i = add nuw nsw i64 %conv155.i, 4294967295, !dbg !3725
  %113 = and i64 %sub.i, 4294967295
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !3726, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %sub.i, metadata !3735, metadata !DIExpression(DW_OP_constu, 4294967295, DW_OP_and, DW_OP_stack_value)), !dbg !3738
  %add.ptr.i171 = getelementptr inbounds i8, ptr %add.ptr.i, i64 %113, !dbg !3740
  call void @llvm.dbg.value(metadata ptr %add.ptr.i171, metadata !3736, metadata !DIExpression()), !dbg !3738
  %conv.i172 = trunc i64 %sub.i to i32, !dbg !3741
  %add.i = add nsw i32 %conv.i172, 544173908, !dbg !3742
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %cmp1.i.not = icmp eq i64 %113, 0, !dbg !3743
  br i1 %cmp1.i.not, label %S_perl_hash_one_at_a_time_hard.exit, label %while.body.i, !dbg !3744

while.body.i:                                     ; preds = %if.then161.i, %while.body.i
  %hash.03.i = phi i32 [ %add4.i, %while.body.i ], [ %add.i, %if.then161.i ]
  %str.addr.02.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ %add.ptr.i, %if.then161.i ]
  call void @llvm.dbg.value(metadata i32 %hash.03.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata ptr %str.addr.02.i, metadata !3726, metadata !DIExpression()), !dbg !3738
  %add2.i = mul i32 %hash.03.i, 1025, !dbg !3745
  call void @llvm.dbg.value(metadata i32 %add2.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %shr.i = lshr i32 %add2.i, 6, !dbg !3747
  %xor.i = xor i32 %shr.i, %add2.i, !dbg !3748
  call void @llvm.dbg.value(metadata i32 %xor.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %incdec.ptr.i = getelementptr inbounds i8, ptr %str.addr.02.i, i64 1, !dbg !3749
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !3726, metadata !DIExpression()), !dbg !3738
  %114 = load i8, ptr %str.addr.02.i, align 1, !dbg !3750
  %conv3.i173 = zext i8 %114 to i32, !dbg !3750
  %add4.i = add i32 %xor.i, %conv3.i173, !dbg !3751
  call void @llvm.dbg.value(metadata i32 %add4.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %cmp.i174 = icmp ult ptr %incdec.ptr.i, %add.ptr.i171, !dbg !3743
  br i1 %cmp.i174, label %while.body.i, label %S_perl_hash_one_at_a_time_hard.exit, !dbg !3744, !llvm.loop !3752

S_perl_hash_one_at_a_time_hard.exit:              ; preds = %while.body.i, %if.then161.i
  %hash.0.lcssa.i = phi i32 [ %add.i, %if.then161.i ], [ %add4.i, %while.body.i ], !dbg !3738
  %add6.i = mul i32 %hash.0.lcssa.i, 1025, !dbg !3754
  call void @llvm.dbg.value(metadata i32 %add6.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %shr7.i = lshr i32 %add6.i, 6, !dbg !3755
  %xor8.i = xor i32 %shr7.i, %add6.i, !dbg !3756
  call void @llvm.dbg.value(metadata i32 %xor8.i, metadata !3737, metadata !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value)), !dbg !3738
  %115 = mul i32 %xor8.i, 1025, !dbg !3757
  %add12.i = add i32 %115, 73800, !dbg !3757
  call void @llvm.dbg.value(metadata i32 %add12.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %shr13.i = lshr i32 %add12.i, 6, !dbg !3758
  %xor14.i = xor i32 %shr13.i, %add12.i, !dbg !3759
  call void @llvm.dbg.value(metadata i32 %xor14.i, metadata !3737, metadata !DIExpression(DW_OP_plus_uconst, 111, DW_OP_stack_value)), !dbg !3738
  %116 = mul i32 %xor14.i, 1025, !dbg !3760
  %add19.i = add i32 %116, 113775, !dbg !3760
  call void @llvm.dbg.value(metadata i32 %add19.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %shr20.i = lshr i32 %add19.i, 6, !dbg !3761
  %xor21.i = xor i32 %shr20.i, %add19.i, !dbg !3762
  call void @llvm.dbg.value(metadata i32 %xor21.i, metadata !3737, metadata !DIExpression(DW_OP_plus_uconst, 116, DW_OP_stack_value)), !dbg !3738
  %117 = mul i32 %xor21.i, 1025, !dbg !3763
  %add26.i = add i32 %117, 118900, !dbg !3763
  call void @llvm.dbg.value(metadata i32 %add26.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %shr27.i = lshr i32 %add26.i, 6, !dbg !3764
  %xor28.i = xor i32 %shr27.i, %add26.i, !dbg !3765
  call void @llvm.dbg.value(metadata i32 %xor28.i, metadata !3737, metadata !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value)), !dbg !3738
  %118 = mul i32 %xor28.i, 1025, !dbg !3766
  %add33.i = add i32 %118, 32800, !dbg !3766
  call void @llvm.dbg.value(metadata i32 %add33.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %shr34.i = lshr i32 %add33.i, 6, !dbg !3767
  %xor35.i = xor i32 %shr34.i, %add33.i, !dbg !3768
  call void @llvm.dbg.value(metadata i32 %xor35.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %add37.i = mul i32 %xor35.i, 9, !dbg !3769
  call void @llvm.dbg.value(metadata i32 %add37.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %shr38.i = lshr i32 %add37.i, 11, !dbg !3770
  %xor39.i = xor i32 %shr38.i, %add37.i, !dbg !3771
  call void @llvm.dbg.value(metadata i32 %xor39.i, metadata !3737, metadata !DIExpression()), !dbg !3738
  %add41.i = mul i32 %xor39.i, 32769, !dbg !3772
  call void @llvm.dbg.value(metadata i32 %add41.i, metadata !3520, metadata !DIExpression()) #11, !dbg !3773
  %call167.i = tail call ptr @Perl_newSV_type(i32 noundef 13) #11, !dbg !3774
  call void @llvm.dbg.value(metadata ptr %call167.i, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  %call167.val.i = load ptr, ptr %call167.i, align 8, !dbg !3775
  call void @llvm.dbg.value(metadata ptr undef, metadata !1460, metadata !DIExpression()), !dbg !3776
  %xcv_flags.i163 = getelementptr inbounds %struct.xpvcv, ptr %call167.val.i, i64 0, i32 12, !dbg !3778
  %119 = load i32, ptr %xcv_flags.i163, align 4, !dbg !3778
  %and.i164 = and i32 %119, 32768, !dbg !3778
  %tobool.not.i165 = icmp eq i32 %and.i164, 0, !dbg !3778
  br i1 %tobool.not.i165, label %cond.end173.i, label %CvNAME_HEK.exit170, !dbg !3778

CvNAME_HEK.exit170:                               ; preds = %S_perl_hash_one_at_a_time_hard.exit
  %xcv_gv_u.i166 = getelementptr inbounds %struct.xpvcv, ptr %call167.val.i, i64 0, i32 7, !dbg !3779
  %120 = load ptr, ptr %xcv_gv_u.i166, align 8, !dbg !3780
  %tobool169.not.i = icmp eq ptr %120, null, !dbg !3775
  br i1 %tobool169.not.i, label %cond.end173.i, label %cond.true170.i, !dbg !3775

cond.true170.i:                                   ; preds = %CvNAME_HEK.exit170
  tail call void @Perl_unshare_hek(ptr noundef nonnull %120) #11, !dbg !3775
  br label %cond.end173.i, !dbg !3775

cond.end173.i:                                    ; preds = %S_perl_hash_one_at_a_time_hard.exit, %cond.true170.i, %CvNAME_HEK.exit170
  %121 = load ptr, ptr %91, align 8, !dbg !3775
  %add.ptr175.i = getelementptr inbounds i8, ptr %121, i64 1, !dbg !3775
  %122 = load i8, ptr %xpadn_len.i, align 8, !dbg !3775
  %conv177.i = zext i8 %122 to i32, !dbg !3775
  %sub178.i = sub nsw i32 1, %conv177.i, !dbg !3775
  %call179.i = tail call ptr @Perl_share_hek(ptr noundef nonnull %add.ptr175.i, i32 noundef %sub178.i, i32 noundef %add41.i) #11, !dbg !3775
  %123 = load ptr, ptr %call167.i, align 8, !dbg !3775
  %xcv_gv_u181.i = getelementptr inbounds %struct.xpvcv, ptr %123, i64 0, i32 7, !dbg !3775
  store ptr %call179.i, ptr %xcv_gv_u181.i, align 8, !dbg !3775
  %124 = load ptr, ptr %call167.i, align 8, !dbg !3775
  %xcv_flags183.i = getelementptr inbounds %struct.xpvcv, ptr %124, i64 0, i32 12, !dbg !3775
  %125 = load i32, ptr %xcv_flags183.i, align 4, !dbg !3775
  %or184.i = or i32 %125, 32768, !dbg !3775
  store i32 %or184.i, ptr %xcv_flags183.i, align 4, !dbg !3775
  %126 = load ptr, ptr %call167.i, align 8, !dbg !3781
  %xcv_flags186.i = getelementptr inbounds %struct.xpvcv, ptr %126, i64 0, i32 12, !dbg !3781
  %127 = load i32, ptr %xcv_flags186.i, align 4, !dbg !3781
  %or187.i = or i32 %127, 65536, !dbg !3781
  store i32 %or187.i, ptr %xcv_flags186.i, align 4, !dbg !3781
  br label %if.end210.i, !dbg !3782

if.else188.i:                                     ; preds = %land.lhs.true158.i, %if.else153.i
  %arrayidx190.i = getelementptr inbounds ptr, ptr %50, i64 %indvars.iv, !dbg !3783
  %128 = load ptr, ptr %arrayidx190.i, align 8, !dbg !3783
  call void @llvm.dbg.value(metadata ptr %128, metadata !2784, metadata !DIExpression()), !dbg !3784
  %cmp.not.i159 = icmp eq ptr %128, null, !dbg !3786
  br i1 %cmp.not.i159, label %if.end238.i, label %if.then.i162, !dbg !3787

if.then.i162:                                     ; preds = %if.else188.i
  %sv_refcnt.i160 = getelementptr inbounds %struct.sv, ptr %128, i64 0, i32 1, !dbg !3788
  %129 = load i32, ptr %sv_refcnt.i160, align 8, !dbg !3789
  %inc.i161 = add i32 %129, 1, !dbg !3789
  store i32 %inc.i161, ptr %sv_refcnt.i160, align 8, !dbg !3789
  br label %if.end238.i, !dbg !3788

if.then204.i:                                     ; preds = %if.then123.i
  call void @llvm.dbg.value(metadata ptr undef, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  br label %land.lhs.true214.i.sink.split, !dbg !3790

if.else206.i:                                     ; preds = %if.then123.i
  %call207.i = tail call ptr @Perl_newSV(i64 noundef 0) #11, !dbg !3793
  call void @llvm.dbg.value(metadata ptr %call207.i, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  br label %if.end210.i

if.end210.i:                                      ; preds = %if.else206.i, %cond.end173.i
  %sv.1.i = phi ptr [ %call167.i, %cond.end173.i ], [ %call207.i, %if.else206.i ], !dbg !3794
  call void @llvm.dbg.value(metadata i32 %subclones.0.i284, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8 %trouble.0.i280, metadata !3507, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata ptr %sv.1.i, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  %cmp212.not.i = icmp eq i8 %102, 38, !dbg !3795
  br i1 %cmp212.not.i, label %if.end238.i, label %land.lhs.true214.i, !dbg !3797

land.lhs.true214.i.sink.split:                    ; preds = %if.then123.i, %if.then204.i
  %.sink = phi i32 [ 12, %if.then204.i ], [ 11, %if.then123.i ]
  %call199.i = tail call ptr @Perl_newSV_type(i32 noundef %.sink) #11, !dbg !3798
  br label %land.lhs.true214.i, !dbg !3799

land.lhs.true214.i:                               ; preds = %land.lhs.true214.i.sink.split, %if.end210.i
  %sv.1.i235 = phi ptr [ %sv.1.i, %if.end210.i ], [ %call199.i, %land.lhs.true214.i.sink.split ]
  %130 = load i8, ptr %xpadn_flags.i, align 1, !dbg !3799
  %131 = and i8 %130, 2, !dbg !3799
  %tobool218.not.i = icmp eq i8 %131, 0, !dbg !3799
  br i1 %tobool218.not.i, label %if.end238.i, label %if.then219.i, !dbg !3800

if.then219.i:                                     ; preds = %land.lhs.true214.i
  call void @llvm.dbg.value(metadata ptr %sv.1.i, metadata !3259, metadata !DIExpression()), !dbg !3801
  %sv_flags.i157 = getelementptr inbounds %struct.sv, ptr %sv.1.i235, i64 0, i32 2, !dbg !3803
  %132 = load i32, ptr %sv_flags.i157, align 4, !dbg !3804
  %or.i158 = or i32 %132, 262144, !dbg !3804
  store i32 %or.i158, ptr %sv_flags.i157, align 4, !dbg !3804
  br label %if.end238.i, !dbg !3805

land.lhs.true226.i:                               ; preds = %land.lhs.true89.i
  %133 = load ptr, ptr %91, align 8, !dbg !3806
  %tobool228.not.i = icmp eq ptr %133, null, !dbg !3806
  br i1 %tobool228.not.i, label %if.else233.i, label %if.then229.i, !dbg !3808

if.then229.i:                                     ; preds = %land.lhs.true226.i
  %arrayidx231.i = getelementptr inbounds ptr, ptr %50, i64 %indvars.iv, !dbg !3809
  %134 = load ptr, ptr %arrayidx231.i, align 8, !dbg !3809
  call void @llvm.dbg.value(metadata ptr %134, metadata !3811, metadata !DIExpression()), !dbg !3814
  %sv_refcnt.i155 = getelementptr inbounds %struct.sv, ptr %134, i64 0, i32 1, !dbg !3816
  %135 = load i32, ptr %sv_refcnt.i155, align 8, !dbg !3817
  %inc.i156 = add i32 %135, 1, !dbg !3817
  store i32 %inc.i156, ptr %sv_refcnt.i155, align 8, !dbg !3817
  call void @llvm.dbg.value(metadata ptr %134, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  br label %if.end238.i, !dbg !3818

if.else233.i:                                     ; preds = %for.body.i, %land.lhs.true226.i, %cond.end86.i
  %call234.i = tail call ptr @Perl_newSV(i64 noundef 0) #11, !dbg !3819
  call void @llvm.dbg.value(metadata ptr %call234.i, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  %sv_flags235.i = getelementptr inbounds %struct.sv, ptr %call234.i, i64 0, i32 2, !dbg !3821
  %136 = load i32, ptr %sv_flags235.i, align 4, !dbg !3821
  %or236.i = or i32 %136, 131072, !dbg !3821
  store i32 %or236.i, ptr %sv_flags235.i, align 4, !dbg !3821
  br label %if.end238.i

if.end238.i:                                      ; preds = %if.then140.i, %if.else188.i, %if.then.i162, %if.end121.i, %if.else233.i, %if.then229.i, %if.then219.i, %land.lhs.true214.i, %if.end210.i, %if.then92.i
  %sv.2.i = phi ptr [ null, %if.then92.i ], [ %96, %if.end121.i ], [ %134, %if.then229.i ], [ %call234.i, %if.else233.i ], [ %sv.1.i235, %if.then219.i ], [ %sv.1.i235, %land.lhs.true214.i ], [ %sv.1.i, %if.end210.i ], [ %128, %if.then.i162 ], [ null, %if.else188.i ], [ %call150.i, %if.then140.i ], !dbg !3663
  %trouble.3.i = phi i8 [ %trouble.0.i280, %if.then92.i ], [ %trouble.0.i280, %if.end121.i ], [ %trouble.0.i280, %if.then229.i ], [ %trouble.0.i280, %if.else233.i ], [ %trouble.0.i280, %if.then219.i ], [ %trouble.0.i280, %land.lhs.true214.i ], [ %trouble.0.i280, %if.end210.i ], [ %trouble.0.i280, %if.then.i162 ], [ %trouble.0.i280, %if.else188.i ], [ %spec.select.i, %if.then140.i ], !dbg !3822
  %subclones.2.i = phi i32 [ %subclones.0.i284, %if.then92.i ], [ %subclones.0.i284, %if.end121.i ], [ %subclones.0.i284, %if.then229.i ], [ %subclones.0.i284, %if.else233.i ], [ %subclones.0.i284, %if.then219.i ], [ %subclones.0.i284, %land.lhs.true214.i ], [ %subclones.0.i284, %if.end210.i ], [ %subclones.0.i284, %if.then.i162 ], [ %subclones.0.i284, %if.else188.i ], [ %inc141.i, %if.then140.i ], !dbg !3823
  call void @llvm.dbg.value(metadata i32 %subclones.2.i, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8 %trouble.3.i, metadata !3507, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata ptr %sv.2.i, metadata !3512, metadata !DIExpression()) #11, !dbg !3663
  %137 = load ptr, ptr @PL_curpad, align 8, !dbg !3824
  %arrayidx240.i = getelementptr inbounds ptr, ptr %137, i64 %indvars.iv, !dbg !3824
  store ptr %sv.2.i, ptr %arrayidx240.i, align 8, !dbg !3825
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3826
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !3492, metadata !DIExpression()) #11, !dbg !3482
  %cmp79.i = icmp sgt i64 %indvars.iv, 1, !dbg !3658
  br i1 %cmp79.i, label %for.body.i, label %for.end.i, !dbg !3659, !llvm.loop !3827

for.end.i:                                        ; preds = %if.end238.i
  %tobool241.not.i = icmp eq i32 %subclones.2.i, 0, !dbg !3829
  br i1 %tobool241.not.i, label %if.end431.i, label %if.then242.i, !dbg !3830

if.then242.i:                                     ; preds = %for.end.i
  %138 = and i8 %trouble.3.i, 1, !dbg !3831
  %tobool243.i = icmp ne i8 %138, 0, !dbg !3831
  %tobool246.i = icmp ne ptr %cloned, null
  %or.cond.i = or i1 %tobool246.i, %tobool243.i, !dbg !3832
  br i1 %or.cond.i, label %if.then247.i, label %for.body390.i.lr.ph, !dbg !3832

for.body390.i.lr.ph:                              ; preds = %if.then242.i
  call void @llvm.dbg.value(metadata i32 %conv3.i, metadata !3492, metadata !DIExpression()) #11, !dbg !3482
  %139 = and i64 %53, 4294967295, !dbg !3833
  br label %for.body390.i, !dbg !3833

if.then247.i:                                     ; preds = %if.then242.i
  br i1 %tobool246.i, label %do.body.i.us.preheader, label %if.then249.i, !dbg !3834

if.then249.i:                                     ; preds = %if.then247.i
  %call250.i = tail call ptr @Perl_newSV_type(i32 noundef 12) #11, !dbg !3835
  %call251.i = tail call ptr @Perl_sv_2mortal(ptr noundef %call250.i) #11, !dbg !3835
  call void @llvm.dbg.value(metadata ptr %call251.i, metadata !3490, metadata !DIExpression()) #11, !dbg !3482
  br label %do.body.i.us.preheader, !dbg !3837

do.body.i.us.preheader:                           ; preds = %if.then247.i, %if.then249.i
  %cloned.addr.0.i = phi ptr [ %cloned, %if.then247.i ], [ %call251.i, %if.then249.i ]
  call void @llvm.dbg.value(metadata ptr %cloned.addr.0.i, metadata !3490, metadata !DIExpression()) #11, !dbg !3482
  %140 = and i64 %53, 4294967295, !dbg !3838
  br label %for.body256.i.us, !dbg !3838

for.body256.i.us:                                 ; preds = %for.body256.i.us.backedge, %do.body.i.us.preheader
  %indvars.iv315 = phi i64 [ %140, %do.body.i.us.preheader ], [ %indvars.iv315.be, %for.body256.i.us.backedge ]
  %subclones.4.i302.us = phi i32 [ %subclones.2.i, %do.body.i.us.preheader ], [ %subclones.6.i.us, %for.body256.i.us.backedge ]
  %cloned_in_this_pass.0.i300.us = phi i8 [ 0, %do.body.i.us.preheader ], [ %cloned_in_this_pass.0.i300.us.be, %for.body256.i.us.backedge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv315, metadata !3492, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i32 %subclones.4.i302.us, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8 %cloned_in_this_pass.0.i300.us, metadata !3525, metadata !DIExpression()) #11, !dbg !3839
  %cmp257.not.i.us = icmp sgt i64 %indvars.iv315, %90, !dbg !3840
  br i1 %cmp257.not.i.us, label %if.end324.i.us, label %cond.end263.i.us, !dbg !3841

cond.end263.i.us:                                 ; preds = %for.body256.i.us
  %arrayidx261.i.us = getelementptr inbounds ptr, ptr %49, i64 %indvars.iv315, !dbg !3842
  %141 = load ptr, ptr %arrayidx261.i.us, align 8, !dbg !3842
  call void @llvm.dbg.value(metadata ptr %141, metadata !3530, metadata !DIExpression()) #11, !dbg !3843
  %tobool265.i.us = icmp ne ptr %141, null, !dbg !3844
  %cmp267.i.us = icmp ne ptr %141, @PL_padname_undef
  %or.cond556.i.us = and i1 %tobool265.i.us, %cmp267.i.us, !dbg !3845
  br i1 %or.cond556.i.us, label %land.lhs.true269.i.us, label %if.end324.i.us, !dbg !3845

land.lhs.true269.i.us:                            ; preds = %cond.end263.i.us
  %xpadn_flags270.i.us = getelementptr inbounds %struct.padname, ptr %141, i64 0, i32 8, !dbg !3846
  %142 = load i8, ptr %xpadn_flags270.i.us, align 1, !dbg !3846
  %conv271.i.us = zext i8 %142 to i32, !dbg !3846
  %and272.i.us = and i32 %conv271.i.us, 1, !dbg !3846
  %tobool273.not.i.us = icmp eq i32 %and272.i.us, 0, !dbg !3846
  br i1 %tobool273.not.i.us, label %land.lhs.true274.i.us, label %if.end324.i.us, !dbg !3847

land.lhs.true274.i.us:                            ; preds = %land.lhs.true269.i.us
  %143 = load ptr, ptr %141, align 8, !dbg !3848
  %144 = load i8, ptr %143, align 1, !dbg !3848
  %cmp278.i.us = icmp ne i8 %144, 38, !dbg !3849
  %and283.i.us = and i32 %conv271.i.us, 2
  %tobool284.not.i.us = icmp eq i32 %and283.i.us, 0
  %or.cond714.i.us = select i1 %cmp278.i.us, i1 true, i1 %tobool284.not.i.us, !dbg !3850
  br i1 %or.cond714.i.us, label %if.end324.i.us, label %land.lhs.true285.i.us, !dbg !3850

land.lhs.true285.i.us:                            ; preds = %land.lhs.true274.i.us
  %145 = load ptr, ptr @PL_curpad, align 8, !dbg !3851
  %arrayidx287.i.us = getelementptr inbounds ptr, ptr %145, i64 %indvars.iv315, !dbg !3851
  %146 = load ptr, ptr %arrayidx287.i.us, align 8, !dbg !3851
  %147 = load ptr, ptr %146, align 8, !dbg !3851
  %xcv_flags289.i.us = getelementptr inbounds %struct.xpvcv, ptr %147, i64 0, i32 12, !dbg !3851
  %148 = load i32, ptr %xcv_flags289.i.us, align 4, !dbg !3851
  %and290.i.us = and i32 %148, 64, !dbg !3851
  %tobool291.not.i.us = icmp eq i32 %and290.i.us, 0, !dbg !3851
  br i1 %tobool291.not.i.us, label %if.then292.i.us, label %if.end324.i.us, !dbg !3852

if.then292.i.us:                                  ; preds = %land.lhs.true285.i.us
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %protokey.i) #11, !dbg !3853
  %arrayidx294.i.us = getelementptr inbounds ptr, ptr %50, i64 %indvars.iv315, !dbg !3854
  %149 = load ptr, ptr %arrayidx294.i.us, align 8, !dbg !3854
  %150 = load ptr, ptr %149, align 8, !dbg !3854
  %xcv_outside296.i.us = getelementptr inbounds %struct.xpvcv, ptr %150, i64 0, i32 10, !dbg !3854
  %151 = load ptr, ptr %xcv_outside296.i.us, align 8, !dbg !3854
  call void @llvm.dbg.value(metadata ptr %151, metadata !3535, metadata !DIExpression()) #11, !dbg !3855
  store ptr %151, ptr %protokey.i, align 8, !dbg !3856
  %cmp297.i.us = icmp eq ptr %151, %proto, !dbg !3857
  br i1 %cmp297.i.us, label %land.lhs.true305.i.us, label %cond.end302.i.us, !dbg !3858

cond.end302.i.us:                                 ; preds = %if.then292.i.us
  call void @llvm.dbg.value(metadata ptr %protokey.i, metadata !3535, metadata !DIExpression(DW_OP_deref)) #11, !dbg !3855
  %call301.i.us = call ptr @Perl_hv_common_key_len(ptr noundef %cloned.addr.0.i, ptr noundef nonnull %protokey.i, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #11, !dbg !3859
  call void @llvm.dbg.value(metadata ptr %call301.i.us, metadata !3538, metadata !DIExpression()) #11, !dbg !3855
  %tobool304.not.i.us = icmp eq ptr %call301.i.us, null, !dbg !3860
  br i1 %tobool304.not.i.us, label %if.end323.i.us, label %land.lhs.true305.i.us, !dbg !3862

land.lhs.true305.i.us:                            ; preds = %cond.end302.i.us, %if.then292.i.us
  %cond303.i244.us = phi ptr [ %call301.i.us, %cond.end302.i.us ], [ %cv.addr.i, %if.then292.i.us ]
  %152 = load ptr, ptr %cond303.i244.us, align 8, !dbg !3863
  %tobool306.not.i.us = icmp eq ptr %152, null, !dbg !3863
  br i1 %tobool306.not.i.us, label %if.end323.i.us, label %if.then307.i.us, !dbg !3864

if.then307.i.us:                                  ; preds = %land.lhs.true305.i.us
  %153 = load ptr, ptr %arrayidx294.i.us, align 8, !dbg !3865
  %154 = load ptr, ptr @PL_curpad, align 8, !dbg !3867
  %arrayidx311.i.us = getelementptr inbounds ptr, ptr %154, i64 %indvars.iv315, !dbg !3867
  %155 = load ptr, ptr %arrayidx311.i.us, align 8, !dbg !3867
  %call312.i.us = call fastcc ptr @S_cv_clone(ptr noundef %153, ptr noundef %155, ptr noundef nonnull %152, ptr noundef %cloned.addr.0.i) #11, !dbg !3868
  %156 = load ptr, ptr @PL_curpad, align 8, !dbg !3869
  %arrayidx316.i.us = getelementptr inbounds ptr, ptr %156, i64 %indvars.iv315, !dbg !3869
  %157 = load ptr, ptr %arrayidx316.i.us, align 8, !dbg !3869
  %sv_refcnt317.i.us = getelementptr inbounds %struct.sv, ptr %157, i64 0, i32 1, !dbg !3869
  %158 = load i32, ptr %sv_refcnt317.i.us, align 8, !dbg !3869
  %inc318.i.us = add i32 %158, 1, !dbg !3869
  store i32 %inc318.i.us, ptr %sv_refcnt317.i.us, align 8, !dbg !3869
  %159 = load ptr, ptr %arrayidx316.i.us, align 8, !dbg !3869
  %call321.i.us = call ptr @Perl_hv_common_key_len(ptr noundef %cloned.addr.0.i, ptr noundef nonnull %arrayidx294.i.us, i32 noundef 8, i32 noundef 36, ptr noundef %159, i32 noundef 0) #11, !dbg !3869
  %dec322.i.us = add i32 %subclones.4.i302.us, -1, !dbg !3870
  call void @llvm.dbg.value(metadata i32 %dec322.i.us, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8 1, metadata !3525, metadata !DIExpression()) #11, !dbg !3839
  br label %if.end323.i.us, !dbg !3871

if.end323.i.us:                                   ; preds = %if.then307.i.us, %land.lhs.true305.i.us, %cond.end302.i.us
  %cloned_in_this_pass.1.i.us = phi i8 [ 1, %if.then307.i.us ], [ %cloned_in_this_pass.0.i300.us, %land.lhs.true305.i.us ], [ %cloned_in_this_pass.0.i300.us, %cond.end302.i.us ], !dbg !3872
  %subclones.5.i.us = phi i32 [ %dec322.i.us, %if.then307.i.us ], [ %subclones.4.i302.us, %land.lhs.true305.i.us ], [ %subclones.4.i302.us, %cond.end302.i.us ], !dbg !3482
  call void @llvm.dbg.value(metadata i32 %subclones.5.i.us, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8 %cloned_in_this_pass.1.i.us, metadata !3525, metadata !DIExpression()) #11, !dbg !3839
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %protokey.i) #11, !dbg !3873
  br label %if.end324.i.us, !dbg !3874

if.end324.i.us:                                   ; preds = %if.end323.i.us, %land.lhs.true285.i.us, %land.lhs.true274.i.us, %land.lhs.true269.i.us, %cond.end263.i.us, %for.body256.i.us
  %cloned_in_this_pass.2.i.us = phi i8 [ %cloned_in_this_pass.0.i300.us, %land.lhs.true269.i.us ], [ %cloned_in_this_pass.0.i300.us, %land.lhs.true285.i.us ], [ %cloned_in_this_pass.1.i.us, %if.end323.i.us ], [ %cloned_in_this_pass.0.i300.us, %land.lhs.true274.i.us ], [ %cloned_in_this_pass.0.i300.us, %cond.end263.i.us ], [ %cloned_in_this_pass.0.i300.us, %for.body256.i.us ], !dbg !3872
  %subclones.6.i.us = phi i32 [ %subclones.4.i302.us, %land.lhs.true269.i.us ], [ %subclones.4.i302.us, %land.lhs.true285.i.us ], [ %subclones.5.i.us, %if.end323.i.us ], [ %subclones.4.i302.us, %land.lhs.true274.i.us ], [ %subclones.4.i302.us, %cond.end263.i.us ], [ %subclones.4.i302.us, %for.body256.i.us ], !dbg !3482
  call void @llvm.dbg.value(metadata i32 %subclones.6.i.us, metadata !3506, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata i8 %cloned_in_this_pass.2.i.us, metadata !3525, metadata !DIExpression()) #11, !dbg !3839
  call void @llvm.dbg.value(metadata i32 undef, metadata !3492, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #11, !dbg !3482
  %cmp254.i.us = icmp sgt i64 %indvars.iv315, 1, !dbg !3875
  %indvars.iv.next316 = add nsw i64 %indvars.iv315, -1, !dbg !3876
  br i1 %cmp254.i.us, label %for.body256.i.us.backedge, label %for.cond253.i.do.cond.i_crit_edge.us, !dbg !3877

for.body256.i.us.backedge:                        ; preds = %if.end324.i.us, %for.cond253.i.do.cond.i_crit_edge.us
  %indvars.iv315.be = phi i64 [ %indvars.iv.next316, %if.end324.i.us ], [ %140, %for.cond253.i.do.cond.i_crit_edge.us ]
  %cloned_in_this_pass.0.i300.us.be = phi i8 [ %cloned_in_this_pass.2.i.us, %if.end324.i.us ], [ 0, %for.cond253.i.do.cond.i_crit_edge.us ]
  br label %for.body256.i.us, !dbg !3482, !llvm.loop !3878

for.cond253.i.do.cond.i_crit_edge.us:             ; preds = %if.end324.i.us
  %160 = and i8 %cloned_in_this_pass.2.i.us, 1, !dbg !3880
  %tobool328.not.i.us = icmp eq i8 %160, 0, !dbg !3880
  br i1 %tobool328.not.i.us, label %do.end.i, label %for.body256.i.us.backedge, !dbg !3881

do.end.i:                                         ; preds = %for.cond253.i.do.cond.i_crit_edge.us
  %tobool329.not.i.not = icmp eq i32 %subclones.6.i.us, 0, !dbg !3882
  call void @llvm.dbg.value(metadata i32 %conv3.i, metadata !3492, metadata !DIExpression()) #11, !dbg !3482
  br i1 %tobool329.not.i.not, label %if.end431.i, label %for.body334.i, !dbg !3883

for.body334.i:                                    ; preds = %do.end.i, %if.end381.i
  %indvars.iv317 = phi i64 [ %indvars.iv.next318, %if.end381.i ], [ %140, %do.end.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv317, metadata !3492, metadata !DIExpression()) #11, !dbg !3482
  %cmp336.not.i = icmp sgt i64 %indvars.iv317, %90, !dbg !3884
  br i1 %cmp336.not.i, label %if.end381.i, label %cond.end342.i, !dbg !3885

cond.end342.i:                                    ; preds = %for.body334.i
  %arrayidx340.i = getelementptr inbounds ptr, ptr %49, i64 %indvars.iv317, !dbg !3886
  %161 = load ptr, ptr %arrayidx340.i, align 8, !dbg !3886
  call void @llvm.dbg.value(metadata ptr %161, metadata !3540, metadata !DIExpression()) #11, !dbg !3887
  %tobool344.i = icmp ne ptr %161, null, !dbg !3888
  %cmp346.i = icmp ne ptr %161, @PL_padname_undef
  %or.cond557.i = and i1 %tobool344.i, %cmp346.i, !dbg !3890
  br i1 %or.cond557.i, label %land.lhs.true348.i, label %if.end381.i, !dbg !3890

land.lhs.true348.i:                               ; preds = %cond.end342.i
  %xpadn_flags349.i = getelementptr inbounds %struct.padname, ptr %161, i64 0, i32 8, !dbg !3891
  %162 = load i8, ptr %xpadn_flags349.i, align 1, !dbg !3891
  %conv350.i = zext i8 %162 to i32, !dbg !3891
  %and351.i = and i32 %conv350.i, 1, !dbg !3891
  %tobool352.not.i = icmp eq i32 %and351.i, 0, !dbg !3891
  br i1 %tobool352.not.i, label %land.lhs.true353.i, label %if.end381.i, !dbg !3892

land.lhs.true353.i:                               ; preds = %land.lhs.true348.i
  %163 = load ptr, ptr %161, align 8, !dbg !3893
  %164 = load i8, ptr %163, align 1, !dbg !3893
  %cmp357.i = icmp ne i8 %164, 38, !dbg !3894
  %and362.i = and i32 %conv350.i, 2
  %tobool363.not.i = icmp eq i32 %and362.i, 0
  %or.cond715.i = select i1 %cmp357.i, i1 true, i1 %tobool363.not.i, !dbg !3895
  br i1 %or.cond715.i, label %if.end381.i, label %land.lhs.true364.i, !dbg !3895

land.lhs.true364.i:                               ; preds = %land.lhs.true353.i
  %165 = load ptr, ptr @PL_curpad, align 8, !dbg !3896
  %arrayidx366.i = getelementptr inbounds ptr, ptr %165, i64 %indvars.iv317, !dbg !3896
  %166 = load ptr, ptr %arrayidx366.i, align 8, !dbg !3896
  %167 = load ptr, ptr %166, align 8, !dbg !3896
  %xcv_flags368.i = getelementptr inbounds %struct.xpvcv, ptr %167, i64 0, i32 12, !dbg !3896
  %168 = load i32, ptr %xcv_flags368.i, align 4, !dbg !3896
  %and369.i = and i32 %168, 64, !dbg !3896
  %tobool370.not.i = icmp eq i32 %and369.i, 0, !dbg !3896
  br i1 %tobool370.not.i, label %if.then371.i, label %if.end381.i, !dbg !3897

if.then371.i:                                     ; preds = %land.lhs.true364.i
  %arrayidx373.i = getelementptr inbounds ptr, ptr %50, i64 %indvars.iv317, !dbg !3898
  %169 = load ptr, ptr %arrayidx373.i, align 8, !dbg !3898
  %170 = load ptr, ptr %169, align 8, !dbg !3899
  %xcv_outside379.i = getelementptr inbounds %struct.xpvcv, ptr %170, i64 0, i32 10, !dbg !3899
  %171 = load ptr, ptr %xcv_outside379.i, align 8, !dbg !3899
  %call380.i = call fastcc ptr @S_cv_clone(ptr noundef nonnull %169, ptr noundef nonnull %166, ptr noundef %171, ptr noundef %cloned.addr.0.i) #11, !dbg !3900
  br label %if.end381.i, !dbg !3900

if.end381.i:                                      ; preds = %for.body334.i, %if.then371.i, %land.lhs.true364.i, %land.lhs.true353.i, %land.lhs.true348.i, %cond.end342.i
  %indvars.iv.next318 = add nsw i64 %indvars.iv317, -1, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next318, metadata !3492, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !3482
  %cmp332.i = icmp sgt i64 %indvars.iv317, 1, !dbg !3902
  br i1 %cmp332.i, label %for.body334.i, label %if.end431.i, !dbg !3903, !llvm.loop !3904

for.body390.i:                                    ; preds = %for.body390.i.lr.ph, %if.end426.i
  %indvars.iv312 = phi i64 [ %139, %for.body390.i.lr.ph ], [ %indvars.iv.next313, %if.end426.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv312, metadata !3492, metadata !DIExpression()) #11, !dbg !3482
  %cmp392.not.i = icmp sgt i64 %indvars.iv312, %90, !dbg !3906
  br i1 %cmp392.not.i, label %if.end426.i, label %cond.end398.i, !dbg !3907

cond.end398.i:                                    ; preds = %for.body390.i
  %arrayidx396.i = getelementptr inbounds ptr, ptr %49, i64 %indvars.iv312, !dbg !3908
  %172 = load ptr, ptr %arrayidx396.i, align 8, !dbg !3908
  call void @llvm.dbg.value(metadata ptr %172, metadata !3545, metadata !DIExpression()) #11, !dbg !3909
  %tobool400.i = icmp ne ptr %172, null, !dbg !3910
  %cmp402.i = icmp ne ptr %172, @PL_padname_undef
  %or.cond558.i = and i1 %tobool400.i, %cmp402.i, !dbg !3912
  br i1 %or.cond558.i, label %land.lhs.true404.i, label %if.end426.i, !dbg !3912

land.lhs.true404.i:                               ; preds = %cond.end398.i
  %xpadn_flags405.i = getelementptr inbounds %struct.padname, ptr %172, i64 0, i32 8, !dbg !3913
  %173 = load i8, ptr %xpadn_flags405.i, align 1, !dbg !3913
  %conv406.i = zext i8 %173 to i32, !dbg !3913
  %and407.i = and i32 %conv406.i, 1, !dbg !3913
  %tobool408.not.i = icmp eq i32 %and407.i, 0, !dbg !3913
  br i1 %tobool408.not.i, label %land.lhs.true409.i, label %if.end426.i, !dbg !3914

land.lhs.true409.i:                               ; preds = %land.lhs.true404.i
  %174 = load ptr, ptr %172, align 8, !dbg !3915
  %175 = load i8, ptr %174, align 1, !dbg !3915
  %cmp413.i = icmp ne i8 %175, 38, !dbg !3916
  %and418.i = and i32 %conv406.i, 2
  %tobool419.not.i = icmp eq i32 %and418.i, 0
  %or.cond716.i = select i1 %cmp413.i, i1 true, i1 %tobool419.not.i, !dbg !3917
  br i1 %or.cond716.i, label %if.end426.i, label %if.then420.i, !dbg !3917

if.then420.i:                                     ; preds = %land.lhs.true409.i
  %arrayidx422.i = getelementptr inbounds ptr, ptr %50, i64 %indvars.iv312, !dbg !3918
  %176 = load ptr, ptr %arrayidx422.i, align 8, !dbg !3918
  %177 = load ptr, ptr @PL_curpad, align 8, !dbg !3919
  %arrayidx424.i = getelementptr inbounds ptr, ptr %177, i64 %indvars.iv312, !dbg !3919
  %178 = load ptr, ptr %arrayidx424.i, align 8, !dbg !3919
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %call425.i = tail call fastcc ptr @S_cv_clone(ptr noundef %176, ptr noundef %178, ptr noundef nonnull %cv.addr.i.0.328, ptr noundef null) #11, !dbg !3920
  br label %if.end426.i, !dbg !3920

if.end426.i:                                      ; preds = %for.body390.i, %if.then420.i, %land.lhs.true409.i, %land.lhs.true404.i, %cond.end398.i
  %indvars.iv.next313 = add nsw i64 %indvars.iv312, -1, !dbg !3921
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next313, metadata !3492, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !3482
  %cmp388.i = icmp sgt i64 %indvars.iv312, 1, !dbg !3922
  br i1 %cmp388.i, label %for.body390.i, label %if.end431.i, !dbg !3833, !llvm.loop !3923

if.end431.i:                                      ; preds = %if.end426.i, %if.end381.i, %if.end78.i, %do.end.i, %for.end.i
  br i1 %tobool.not, label %if.then433.i, label %if.end436.i, !dbg !3925

if.then433.i:                                     ; preds = %if.end431.i
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %sv_refcnt434.i = getelementptr inbounds %struct.sv, ptr %cv.addr.i.0.328, i64 0, i32 1, !dbg !3926
  %179 = load i32, ptr %sv_refcnt434.i, align 8, !dbg !3926
  %inc435.i = add i32 %179, 1, !dbg !3926
  store i32 %inc435.i, ptr %sv_refcnt434.i, align 8, !dbg !3926
  br label %if.end436.i, !dbg !3926

if.end436.i:                                      ; preds = %if.end431.i, %if.then433.i
  call void @Perl_pop_scope() #11, !dbg !3928
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %180 = load ptr, ptr %cv.addr.i.0.328, align 8, !dbg !3929
  %xcv_flags438.i = getelementptr inbounds %struct.xpvcv, ptr %180, i64 0, i32 12, !dbg !3929
  %181 = load i32, ptr %xcv_flags438.i, align 4, !dbg !3929
  %and439.i = and i32 %181, 4, !dbg !3929
  %tobool440.not.i = icmp eq i32 %and439.i, 0, !dbg !3929
  br i1 %tobool440.not.i, label %S_cv_clone_pad.exit, label %if.then441.i, !dbg !3930

if.then441.i:                                     ; preds = %if.end436.i
  %xcv_start_u.i = getelementptr inbounds %struct.xpvcv, ptr %180, i64 0, i32 5, !dbg !3931
  call void @llvm.dbg.value(metadata ptr undef, metadata !3552, metadata !DIExpression()) #11, !dbg !3932
  br label %for.cond443.i, !dbg !3933

for.cond443.i:                                    ; preds = %for.body445.i, %if.then441.i
  %o.0.in.i = phi ptr [ %xcv_start_u.i, %if.then441.i ], [ %o.0.i, %for.body445.i ]
  %o.0.i = load ptr, ptr %o.0.in.i, align 8, !dbg !3932
  call void @llvm.dbg.value(metadata ptr %o.0.i, metadata !3552, metadata !DIExpression()) #11, !dbg !3932
  %tobool444.not.i = icmp eq ptr %o.0.i, null, !dbg !3934
  br i1 %tobool444.not.i, label %for.end451.i, label %for.body445.i, !dbg !3934

for.body445.i:                                    ; preds = %for.cond443.i
  %op_type.i = getelementptr inbounds %struct.op, ptr %o.0.i, i64 0, i32 4, !dbg !3936
  %bf.load.i = load i16, ptr %op_type.i, align 8, !dbg !3936
  %bf.clear.i = and i16 %bf.load.i, 511, !dbg !3936
  %cmp446.i = icmp eq i16 %bf.clear.i, 9, !dbg !3939
  br i1 %cmp446.i, label %for.end451.i, label %for.cond443.i, !dbg !3940, !llvm.loop !3941

for.end451.i:                                     ; preds = %for.body445.i, %for.cond443.i
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %xcv_padlist_u453.i = getelementptr inbounds %struct.xpvcv, ptr %180, i64 0, i32 9, !dbg !3943
  %182 = load ptr, ptr %xcv_padlist_u453.i, align 8, !dbg !3943
  %xpadl_alloc454.i = getelementptr inbounds %struct.padlist, ptr %182, i64 0, i32 1, !dbg !3943
  %183 = load ptr, ptr %xpadl_alloc454.i, align 8, !dbg !3943
  %arrayidx455.i = getelementptr inbounds ptr, ptr %183, i64 1, !dbg !3943
  %184 = load ptr, ptr %arrayidx455.i, align 8, !dbg !3943
  %tobool456.not.i = icmp eq ptr %184, null, !dbg !3943
  br i1 %tobool456.not.i, label %constoff.i, label %cond.end465.i, !dbg !3943

cond.end465.i:                                    ; preds = %for.end451.i
  %sv_u462.i = getelementptr inbounds %struct.av, ptr %184, i64 0, i32 3, !dbg !3943
  %185 = load ptr, ptr %sv_u462.i, align 8, !dbg !3943
  %op_targ.i = getelementptr inbounds %struct.op, ptr %o.0.i, i64 0, i32 3, !dbg !3943
  %186 = load i64, ptr %op_targ.i, align 8, !dbg !3943
  %arrayidx463.i = getelementptr inbounds ptr, ptr %185, i64 %186, !dbg !3943
  %187 = load ptr, ptr %arrayidx463.i, align 8, !dbg !3943
  call void @llvm.dbg.value(metadata ptr %187, metadata !3549, metadata !DIExpression()) #11, !dbg !3932
  %tobool467.not.i = icmp eq ptr %187, null, !dbg !3944
  br i1 %tobool467.not.i, label %constoff.i, label %land.lhs.true468.i, !dbg !3945

land.lhs.true468.i:                               ; preds = %cond.end465.i
  %sv_refcnt469.i = getelementptr inbounds %struct.sv, ptr %187, i64 0, i32 1, !dbg !3946
  %188 = load i32, ptr %sv_refcnt469.i, align 8, !dbg !3946
  %cmp470.i = icmp eq i32 %188, 2, !dbg !3947
  br i1 %cmp470.i, label %if.then472.i, label %constoff.i, !dbg !3948

if.then472.i:                                     ; preds = %land.lhs.true468.i
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %and475.i = and i32 %181, 1, !dbg !3949
  %tobool476.not.i = icmp eq i32 %and475.i, 0, !dbg !3949
  call void @llvm.dbg.value(metadata i1 %tobool476.not.i, metadata !3553, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !3950
  call void @llvm.dbg.value(metadata i8 0, metadata !3556, metadata !DIExpression()) #11, !dbg !3950
  br i1 %tobool29.not.i200205, label %if.then516.i, label %if.then481.i, !dbg !3951

if.then481.i:                                     ; preds = %if.then472.i
  %189 = load ptr, ptr %outside.addr.0.i196207, align 8, !dbg !3952
  %xcv_padlist_u483.i = getelementptr inbounds %struct.xpvcv, ptr %189, i64 0, i32 9, !dbg !3952
  %190 = load ptr, ptr %xcv_padlist_u483.i, align 8, !dbg !3952
  %xpadl_alloc484.i = getelementptr inbounds %struct.padlist, ptr %190, i64 0, i32 1, !dbg !3952
  %191 = load ptr, ptr %xpadl_alloc484.i, align 8, !dbg !3952
  %192 = load ptr, ptr %191, align 8, !dbg !3952
  %xpadnl_alloc485.i = getelementptr inbounds %struct.padnamelist, ptr %192, i64 0, i32 1, !dbg !3952
  %193 = load ptr, ptr %xpadnl_alloc485.i, align 8, !dbg !3952
  %194 = load ptr, ptr %183, align 8, !dbg !3953
  %xpadnl_alloc489.i = getelementptr inbounds %struct.padnamelist, ptr %194, i64 0, i32 1, !dbg !3953
  %195 = load ptr, ptr %xpadnl_alloc489.i, align 8, !dbg !3953
  %arrayidx491.i = getelementptr inbounds ptr, ptr %195, i64 %186, !dbg !3953
  %196 = load ptr, ptr %arrayidx491.i, align 8, !dbg !3953
  %xpadn_low492.i = getelementptr inbounds %struct.padname, ptr %196, i64 0, i32 3, !dbg !3953
  %197 = load i32, ptr %xpadn_low492.i, align 8, !dbg !3953
  %idxprom493.i = zext i32 %197 to i64, !dbg !3952
  %arrayidx494.i = getelementptr inbounds ptr, ptr %193, i64 %idxprom493.i, !dbg !3952
  %198 = load ptr, ptr %arrayidx494.i, align 8, !dbg !3952
  call void @llvm.dbg.value(metadata ptr %198, metadata !3557, metadata !DIExpression()) #11, !dbg !3954
  %xpadn_flags495.i = getelementptr inbounds %struct.padname, ptr %198, i64 0, i32 8, !dbg !3955
  %199 = load i8, ptr %xpadn_flags495.i, align 1, !dbg !3955
  %200 = and i8 %199, 4, !dbg !3955
  %tobool498.i.not = icmp eq i8 %200, 0, !dbg !3955
  br i1 %tobool498.i.not, label %if.then516.i, label %if.then499.i, !dbg !3957

if.then499.i:                                     ; preds = %if.then481.i
  %xcv_root_u.i = getelementptr inbounds %struct.xpvcv, ptr %180, i64 0, i32 6, !dbg !3958
  %201 = load ptr, ptr %xcv_root_u.i, align 8, !dbg !3958
  %op_first.i = getelementptr inbounds %struct.unop, ptr %201, i64 0, i32 7, !dbg !3958
  %202 = load ptr, ptr %op_first.i, align 8, !dbg !3958
  %op_first501.i = getelementptr inbounds %struct.unop, ptr %202, i64 0, i32 7, !dbg !3958
  %203 = load ptr, ptr %op_first501.i, align 8, !dbg !3958
  %op_sibling.i = getelementptr inbounds %struct.op, ptr %203, i64 0, i32 1, !dbg !3958
  %204 = load ptr, ptr %op_sibling.i, align 8, !dbg !3958
  %cmp503.i = icmp eq ptr %204, %o.0.i, !dbg !3961
  br i1 %cmp503.i, label %land.lhs.true505.i, label %constoff.i, !dbg !3962

land.lhs.true505.i:                               ; preds = %if.then499.i
  %op_sibling506.i = getelementptr inbounds %struct.op, ptr %o.0.i, i64 0, i32 1, !dbg !3963
  %205 = load ptr, ptr %op_sibling506.i, align 8, !dbg !3963
  %tobool508.not.i = icmp eq ptr %205, null, !dbg !3963
  br i1 %tobool508.not.i, label %if.end514.i.thread263, label %constoff.i, !dbg !3964

if.end514.i.thread263:                            ; preds = %land.lhs.true505.i
  call void (i32, ptr, ...) @Perl_ck_warner_d(i32 noundef 2, ptr noundef nonnull @.str.33) #11, !dbg !3965
  %call510.i = call ptr @Perl_newSVsv(ptr noundef nonnull %187) #11, !dbg !3967
  call void @llvm.dbg.value(metadata i8 undef, metadata !3556, metadata !DIExpression()) #11, !dbg !3950
  call void @llvm.dbg.value(metadata ptr undef, metadata !3549, metadata !DIExpression()) #11, !dbg !3932
  br label %if.end519.i, !dbg !3968

if.then516.i:                                     ; preds = %if.then472.i, %if.then481.i
  store i32 3, ptr %sv_refcnt469.i, align 8, !dbg !3969
  br label %if.end519.i, !dbg !3969

if.end519.i:                                      ; preds = %if.end514.i.thread263, %if.then516.i
  %const_sv.2.i262 = phi ptr [ %187, %if.then516.i ], [ %call510.i, %if.end514.i.thread263 ]
  %sv_flags520.i = getelementptr inbounds %struct.sv, ptr %const_sv.2.i262, i64 0, i32 2, !dbg !3971
  %206 = load i32, ptr %sv_flags520.i, align 4, !dbg !3971
  %or523.i = or i32 %206, 134414336, !dbg !3972
  store i32 %or523.i, ptr %sv_flags520.i, align 4, !dbg !3972
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !1515, metadata !DIExpression()) #11, !dbg !3973
  %sv_refcnt.i151 = getelementptr inbounds %struct.sv, ptr %cv.addr.i.0.328, i64 0, i32 1, !dbg !3975
  %207 = load i32, ptr %sv_refcnt.i151, align 8, !dbg !3975
  call void @llvm.dbg.value(metadata i32 %207, metadata !1521, metadata !DIExpression()) #11, !dbg !3973
  %cmp.i = icmp ugt i32 %207, 1, !dbg !3976
  br i1 %cmp.i, label %if.then.i153, label %if.else.i154, !dbg !3977

if.then.i153:                                     ; preds = %if.end519.i
  %sub.i152 = add i32 %207, -1, !dbg !3978
  store i32 %sub.i152, ptr %sv_refcnt.i151, align 8, !dbg !3979
  br label %S_SvREFCNT_dec_NN.exit, !dbg !3980

if.else.i154:                                     ; preds = %if.end519.i
  call void @Perl_sv_free2(ptr noundef nonnull %cv.addr.i.0.328, i32 noundef %207) #11, !dbg !3981
  br label %S_SvREFCNT_dec_NN.exit

S_SvREFCNT_dec_NN.exit:                           ; preds = %if.then.i153, %if.else.i154
  %208 = load ptr, ptr %proto, align 8, !dbg !3982
  %xcv_stash.i = getelementptr inbounds %struct.xpvcv, ptr %208, i64 0, i32 4, !dbg !3982
  %209 = load ptr, ptr %xcv_stash.i, align 8, !dbg !3982
  %call526.i = call ptr @Perl_newCONSTSUB(ptr noundef %209, ptr noundef null, ptr noundef nonnull %const_sv.2.i262) #11, !dbg !3982
  call void @llvm.dbg.value(metadata ptr %call526.i, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  br i1 %tobool476.not.i, label %S_cv_clone_pad.exit, label %if.then528.i, !dbg !3983

if.then528.i:                                     ; preds = %S_SvREFCNT_dec_NN.exit
  %210 = load ptr, ptr %call526.i, align 8, !dbg !3984
  %xcv_flags530.i = getelementptr inbounds %struct.xpvcv, ptr %210, i64 0, i32 12, !dbg !3984
  %211 = load i32, ptr %xcv_flags530.i, align 4, !dbg !3984
  %or531.i = or i32 %211, 1, !dbg !3984
  store i32 %or531.i, ptr %xcv_flags530.i, align 4, !dbg !3984
  br label %S_cv_clone_pad.exit, !dbg !3984

constoff.i:                                       ; preds = %for.end451.i, %land.lhs.true505.i, %if.then499.i, %land.lhs.true468.i, %cond.end465.i
  call void @llvm.dbg.label(metadata !3560) #11, !dbg !3986
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.328, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  %and540.i = and i32 %181, -5, !dbg !3987
  store i32 %and540.i, ptr %xcv_flags438.i, align 4, !dbg !3987
  br label %S_cv_clone_pad.exit

S_cv_clone_pad.exit:                              ; preds = %S_SvREFCNT_dec_NN.exit, %if.then528.i, %if.end436.i, %constoff.i
  %cv.addr.i.0.325 = phi ptr [ %call526.i, %S_SvREFCNT_dec_NN.exit ], [ %call526.i, %if.then528.i ], [ %cv.addr.i.0.328, %if.end436.i ], [ %cv.addr.i.0.328, %constoff.i ], !dbg !3988
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.325, metadata !3488, metadata !DIExpression()) #11, !dbg !3482
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cv.addr.i), !dbg !3989
  call void @llvm.dbg.value(metadata ptr %cv.addr.i.0.325, metadata !3408, metadata !DIExpression()), !dbg !3412
  br label %if.end82, !dbg !3990

if.end82:                                         ; preds = %S_cv_clone_pad.exit, %if.end76
  %cv.addr.1 = phi ptr [ %cv.addr.i.0.325, %S_cv_clone_pad.exit ], [ %cv.addr.i.0.328, %if.end76 ]
  call void @llvm.dbg.value(metadata ptr %cv.addr.1, metadata !3408, metadata !DIExpression()), !dbg !3412
  ret ptr %cv.addr.1, !dbg !3991
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_cv_clone_into(ptr noundef %proto, ptr noundef %target) local_unnamed_addr #0 !dbg !3992 {
entry:
  call void @llvm.dbg.value(metadata ptr %proto, metadata !3996, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata ptr %target, metadata !3997, metadata !DIExpression()), !dbg !3998
  call void @llvm.dbg.value(metadata ptr %target, metadata !1346, metadata !DIExpression()) #11, !dbg !3999
  tail call void @Perl_cv_undef_flags(ptr noundef %target, i32 noundef 0) #11, !dbg !4001
  %call = tail call fastcc ptr @S_cv_clone(ptr noundef %proto, ptr noundef %target, ptr noundef null, ptr noundef null), !dbg !4002
  ret ptr %call, !dbg !4003
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_cv_name(ptr noundef %cv, ptr noundef %sv, i32 noundef %flags) local_unnamed_addr #0 !dbg !4004 {
entry:
  call void @llvm.dbg.value(metadata ptr %cv, metadata !4008, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata ptr %sv, metadata !4009, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 %flags, metadata !4010, metadata !DIExpression()), !dbg !4022
  %sv_flags = getelementptr inbounds %struct.cv, ptr %cv, i64 0, i32 2, !dbg !4023
  %0 = load i32, ptr %sv_flags, align 4, !dbg !4023
  %and = and i32 %0, 49152, !dbg !4023
  %cmp = icmp eq i32 %and, 32768, !dbg !4023
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true7, !dbg !4023

land.lhs.true:                                    ; preds = %entry
  %trunc = trunc i32 %0 to i8, !dbg !4023
  switch i8 %trunc, label %if.then [
    i8 13, label %if.end13
    i8 10, label %if.end13
    i8 9, label %if.end13
  ], !dbg !4023

land.lhs.true7:                                   ; preds = %entry
  %and2 = and i32 %0, 255, !dbg !4025
  %cmp10.not.old = icmp eq i32 %and2, 13, !dbg !4026
  br i1 %cmp10.not.old, label %if.end13, label %if.then, !dbg !4027

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true7
  %tobool.not = icmp eq ptr %sv, null, !dbg !4028
  br i1 %tobool.not, label %return, label %if.then11, !dbg !4031

if.then11:                                        ; preds = %if.then
  tail call void @Perl_sv_setsv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %cv, i32 noundef 1538) #11, !dbg !4032
  br label %return, !dbg !4032

if.end13:                                         ; preds = %land.lhs.true, %land.lhs.true, %land.lhs.true, %land.lhs.true7
  %tobool14.not = icmp eq ptr %sv, null, !dbg !4033
  br i1 %tobool14.not, label %cond.false16, label %cond.end17, !dbg !4033

cond.false16:                                     ; preds = %if.end13
  %call = tail call ptr @Perl_sv_newmortal() #11, !dbg !4034
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !4035
  br label %cond.end17, !dbg !4033

cond.end17:                                       ; preds = %if.end13, %cond.false16
  %1 = phi i32 [ %.pre, %cond.false16 ], [ %0, %if.end13 ], !dbg !4035
  %cond18 = phi ptr [ %call, %cond.false16 ], [ %sv, %if.end13 ], !dbg !4033
  call void @llvm.dbg.value(metadata ptr %cond18, metadata !4011, metadata !DIExpression()), !dbg !4036
  %and20 = and i32 %1, 255, !dbg !4035
  %cmp21 = icmp eq i32 %and20, 13, !dbg !4037
  br i1 %cmp21, label %if.then22, label %if.else120, !dbg !4038

if.then22:                                        ; preds = %cond.end17
  %2 = load ptr, ptr %cv, align 8, !dbg !4039
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 12, !dbg !4039
  %3 = load i32, ptr %xcv_flags, align 4, !dbg !4039
  %and23 = and i32 %3, 32768, !dbg !4039
  %tobool24.not = icmp eq i32 %and23, 0, !dbg !4039
  %and106 = and i32 %3, 65536, !dbg !4040
  %and109 = and i32 %flags, 1
  %4 = or i32 %and106, %and109, !dbg !4040
  %5 = icmp eq i32 %4, 0, !dbg !4040
  br i1 %tobool24.not, label %if.else103, label %if.then25, !dbg !4041

if.then25:                                        ; preds = %if.then22
  br i1 %5, label %if.else, label %CvNAME_HEK.exit, !dbg !4042

CvNAME_HEK.exit:                                  ; preds = %if.then25
  call void @llvm.dbg.value(metadata ptr undef, metadata !1460, metadata !DIExpression()), !dbg !4043
  %xcv_gv_u.i = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7, !dbg !4045
  %6 = load ptr, ptr %xcv_gv_u.i, align 8, !dbg !4046
  tail call void @Perl_sv_sethek(ptr noundef %cond18, ptr noundef %6) #11, !dbg !4047
  br label %return, !dbg !4047

if.else:                                          ; preds = %if.then25
  %xcv_stash = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 4, !dbg !4048
  %7 = load ptr, ptr %xcv_stash, align 8, !dbg !4048
  %sv_flags36 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2, !dbg !4048
  %8 = load i32, ptr %sv_flags36, align 4, !dbg !4048
  %and37 = and i32 %8, 33554432, !dbg !4048
  %tobool38.not = icmp eq i32 %and37, 0, !dbg !4048
  br i1 %tobool38.not, label %cond.end90, label %land.lhs.true39, !dbg !4048

land.lhs.true39:                                  ; preds = %if.else
  %sv_u = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3, !dbg !4048
  %9 = load ptr, ptr %sv_u, align 8, !dbg !4048
  %10 = load ptr, ptr %7, align 8, !dbg !4048
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3, !dbg !4048
  %11 = load i64, ptr %xhv_max, align 8, !dbg !4048
  %add = add i64 %11, 1, !dbg !4048
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %add, !dbg !4048
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !4048
  %tobool47.not = icmp eq ptr %12, null, !dbg !4048
  br i1 %tobool47.not, label %cond.end90, label %cond.true48, !dbg !4048

cond.true48:                                      ; preds = %land.lhs.true39
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !4048
  %13 = load i32, ptr %xhv_name_count, align 4, !dbg !4048
  %tobool60.not = icmp eq i32 %13, 0, !dbg !4048
  br i1 %tobool60.not, label %cond.end90, label %cond.true61, !dbg !4048

cond.true61:                                      ; preds = %cond.true48
  %14 = load ptr, ptr %12, align 8, !dbg !4048
  br label %cond.end90, !dbg !4048

cond.end90:                                       ; preds = %cond.true48, %if.else, %land.lhs.true39, %cond.true61
  %cond91 = phi ptr [ %14, %cond.true61 ], [ null, %land.lhs.true39 ], [ null, %if.else ], [ %12, %cond.true48 ], !dbg !4048
  tail call void @Perl_sv_sethek(ptr noundef %cond18, ptr noundef %cond91) #11, !dbg !4048
  tail call void @Perl_sv_catpvn_flags(ptr noundef %cond18, ptr noundef nonnull @.str.16, i64 noundef 2, i32 noundef 2) #11, !dbg !4049
  %cv.val = load ptr, ptr %cv, align 8, !dbg !4050
  call void @llvm.dbg.value(metadata ptr undef, metadata !1460, metadata !DIExpression()), !dbg !4051
  %xcv_flags.i173 = getelementptr inbounds %struct.xpvcv, ptr %cv.val, i64 0, i32 12, !dbg !4053
  %15 = load i32, ptr %xcv_flags.i173, align 4, !dbg !4053
  %and.i174 = and i32 %15, 32768, !dbg !4053
  %tobool.not.i175 = icmp ne i32 %and.i174, 0, !dbg !4053
  tail call void @llvm.assume(i1 %tobool.not.i175), !dbg !4053
  %xcv_gv_u.i176 = getelementptr inbounds %struct.xpvcv, ptr %cv.val, i64 0, i32 7, !dbg !4054
  %16 = load ptr, ptr %xcv_gv_u.i176, align 8, !dbg !4055
  call void @llvm.dbg.value(metadata ptr %16, metadata !4013, metadata !DIExpression()), !dbg !4056
  %hek_key = getelementptr inbounds %struct.hek, ptr %16, i64 0, i32 2, !dbg !4050
  %hek_len = getelementptr inbounds %struct.hek, ptr %16, i64 0, i32 1, !dbg !4050
  %17 = load i32, ptr %hek_len, align 4, !dbg !4050
  %conv = sext i32 %17 to i64, !dbg !4050
  %add.ptr96 = getelementptr inbounds i8, ptr %hek_key, i64 %conv, !dbg !4050
  %add.ptr97 = getelementptr inbounds i8, ptr %add.ptr96, i64 1, !dbg !4050
  %18 = load i8, ptr %add.ptr97, align 1, !dbg !4050
  %19 = and i8 %18, 1, !dbg !4050
  %tobool100.not = icmp eq i8 %19, 0, !dbg !4050
  %cond101 = select i1 %tobool100.not, i32 16384, i32 32768, !dbg !4050
  tail call void @Perl_sv_catpvn_flags(ptr noundef %cond18, ptr noundef nonnull %hek_key, i64 noundef %conv, i32 noundef %cond101) #11, !dbg !4050
  br label %return

if.else103:                                       ; preds = %if.then22
  call void @llvm.dbg.value(metadata ptr %cv, metadata !3446, metadata !DIExpression()) #11, !dbg !4057
  call void @llvm.dbg.value(metadata ptr %cv, metadata !3446, metadata !DIExpression()) #11, !dbg !4060
  %xcv_gv_u.i191 = getelementptr inbounds %struct.xpvcv, ptr %2, i64 0, i32 7, !dbg !4062
  %20 = load ptr, ptr %xcv_gv_u.i191, align 8, !dbg !4062
  br i1 %5, label %S_CvGV.exit194, label %S_CvGV.exit, !dbg !4063

S_CvGV.exit:                                      ; preds = %if.else103
  %sv_u113 = getelementptr inbounds %struct.gv, ptr %20, i64 0, i32 3, !dbg !4064
  %21 = load ptr, ptr %sv_u113, align 8, !dbg !4064
  %gp_egv = getelementptr inbounds %struct.gp, ptr %21, i64 0, i32 8, !dbg !4064
  %22 = load ptr, ptr %gp_egv, align 8, !dbg !4064
  %23 = load ptr, ptr %22, align 8, !dbg !4064
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %23, i64 0, i32 4, !dbg !4064
  %24 = load ptr, ptr %xiv_u, align 8, !dbg !4064
  tail call void @Perl_sv_sethek(ptr noundef %cond18, ptr noundef %24) #11, !dbg !4064
  br label %return, !dbg !4064

S_CvGV.exit194:                                   ; preds = %if.else103
  tail call void @Perl_gv_efullname4(ptr noundef %cond18, ptr noundef %20, ptr noundef null, i1 noundef zeroext true) #11, !dbg !4065
  br label %return

if.else120:                                       ; preds = %cond.end17
  %and121 = and i32 %flags, 1, !dbg !4066
  %tobool122.not = icmp eq i32 %and121, 0, !dbg !4066
  br i1 %tobool122.not, label %if.else126, label %if.then123, !dbg !4068

if.then123:                                       ; preds = %if.else120
  %25 = load ptr, ptr %cv, align 8, !dbg !4069
  %xiv_u125 = getelementptr inbounds %struct.xpvgv, ptr %25, i64 0, i32 4, !dbg !4069
  %26 = load ptr, ptr %xiv_u125, align 8, !dbg !4069
  tail call void @Perl_sv_sethek(ptr noundef %cond18, ptr noundef %26) #11, !dbg !4069
  br label %return, !dbg !4069

if.else126:                                       ; preds = %if.else120
  tail call void @Perl_gv_efullname4(ptr noundef %cond18, ptr noundef nonnull %cv, ptr noundef null, i1 noundef zeroext true) #11, !dbg !4070
  br label %return

return:                                           ; preds = %if.then, %if.then11, %S_CvGV.exit, %S_CvGV.exit194, %CvNAME_HEK.exit, %cond.end90, %if.else126, %if.then123
  %retval.0 = phi ptr [ %cond18, %if.then123 ], [ %cond18, %if.else126 ], [ %cond18, %cond.end90 ], [ %cond18, %CvNAME_HEK.exit ], [ %cond18, %S_CvGV.exit194 ], [ %cond18, %S_CvGV.exit ], [ %sv, %if.then11 ], [ %cv, %if.then ], !dbg !4022
  ret ptr %retval.0, !dbg !4071
}

declare !dbg !4072 void @Perl_sv_setsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !4075 ptr @Perl_sv_newmortal() local_unnamed_addr #3

declare !dbg !4076 void @Perl_sv_sethek(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4082 void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !4085 void @Perl_gv_efullname4(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_fixup_inner_anons(ptr nocapture noundef readonly %padlist, ptr noundef %old_cv, ptr noundef %new_cv) local_unnamed_addr #0 !dbg !4090 {
entry:
  call void @llvm.dbg.value(metadata ptr %padlist, metadata !4094, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata ptr %old_cv, metadata !4095, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata ptr %new_cv, metadata !4096, metadata !DIExpression()), !dbg !4118
  %xpadl_alloc = getelementptr inbounds %struct.padlist, ptr %padlist, i64 0, i32 1, !dbg !4119
  %0 = load ptr, ptr %xpadl_alloc, align 8, !dbg !4119
  %1 = load ptr, ptr %0, align 8, !dbg !4119
  call void @llvm.dbg.value(metadata ptr %1, metadata !4098, metadata !DIExpression()), !dbg !4118
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 1, !dbg !4120
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4120
  call void @llvm.dbg.value(metadata ptr %2, metadata !4099, metadata !DIExpression()), !dbg !4118
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %1, i64 0, i32 1, !dbg !4121
  %3 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !4121
  call void @llvm.dbg.value(metadata ptr %3, metadata !4100, metadata !DIExpression()), !dbg !4118
  %sv_u = getelementptr inbounds %struct.av, ptr %2, i64 0, i32 3, !dbg !4122
  %4 = load ptr, ptr %sv_u, align 8, !dbg !4122
  call void @llvm.dbg.value(metadata ptr %4, metadata !4101, metadata !DIExpression()), !dbg !4118
  %5 = load i64, ptr %1, align 8, !dbg !4123
  %conv = trunc i64 %5 to i32, !dbg !4123
  call void @llvm.dbg.value(metadata i32 %conv, metadata !4097, metadata !DIExpression()), !dbg !4118
  %cmp132 = icmp sgt i32 %conv, 0, !dbg !4124
  br i1 %cmp132, label %for.body.lr.ph, label %for.end, !dbg !4125

for.body.lr.ph:                                   ; preds = %entry
  %sv_refcnt70 = getelementptr inbounds %struct.cv, ptr %new_cv, i64 0, i32 1
  %cmp.not.i = icmp eq ptr %old_cv, null
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %old_cv, i64 0, i32 1
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %new_cv, i64 0, i32 1
  %6 = and i64 %5, 4294967295, !dbg !4125
  br label %for.body, !dbg !4125

for.body:                                         ; preds = %for.body.lr.ph, %cleanup80
  %indvars.iv = phi i64 [ %6, %for.body.lr.ph ], [ %indvars.iv.next, %cleanup80 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4097, metadata !DIExpression()), !dbg !4118
  %arrayidx3 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv, !dbg !4126
  %7 = load ptr, ptr %arrayidx3, align 8, !dbg !4126
  call void @llvm.dbg.value(metadata ptr %7, metadata !4102, metadata !DIExpression()), !dbg !4127
  %tobool = icmp ne ptr %7, null, !dbg !4128
  %cmp4 = icmp ne ptr %7, @PL_padname_undef
  %or.cond = and i1 %tobool, %cmp4, !dbg !4129
  br i1 %or.cond, label %land.lhs.true6, label %cleanup80, !dbg !4129

land.lhs.true6:                                   ; preds = %for.body
  %xpadn_ourstash = getelementptr inbounds %struct.padname, ptr %7, i64 0, i32 1, !dbg !4130
  %8 = load ptr, ptr %xpadn_ourstash, align 8, !dbg !4130
  %tobool7.not = icmp eq ptr %8, null, !dbg !4130
  br i1 %tobool7.not, label %land.lhs.true8, label %cleanup80, !dbg !4131

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %9 = load ptr, ptr %7, align 8, !dbg !4132
  %10 = load i8, ptr %9, align 1, !dbg !4133
  %cmp10 = icmp eq i8 %10, 38, !dbg !4134
  br i1 %cmp10, label %if.then, label %cleanup80, !dbg !4135

if.then:                                          ; preds = %land.lhs.true8
  %arrayidx13 = getelementptr inbounds ptr, ptr %4, i64 %indvars.iv, !dbg !4136
  call void @llvm.dbg.value(metadata ptr undef, metadata !4106, metadata !DIExpression()), !dbg !4137
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %7, i64 0, i32 8, !dbg !4138
  %11 = load i8, ptr %xpadn_flags, align 1, !dbg !4138
  %12 = and i8 %11, 1, !dbg !4138
  %tobool15.not = icmp eq i8 %12, 0, !dbg !4138
  br i1 %tobool15.not, label %if.end, label %while.body.preheader, !dbg !4139

while.body.preheader:                             ; preds = %if.then
  call void @llvm.dbg.value(metadata ptr %7, metadata !4102, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4113, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata ptr %new_cv, metadata !4109, metadata !DIExpression()), !dbg !4140
  %.pre = load ptr, ptr %new_cv, align 8, !dbg !4141
  br label %while.body, !dbg !4143

while.body:                                       ; preds = %while.body.preheader, %while.body
  %13 = phi ptr [ %15, %while.body ], [ %.pre, %while.body.preheader ], !dbg !4141
  %name.0130 = phi ptr [ %21, %while.body ], [ %7, %while.body.preheader ]
  call void @llvm.dbg.value(metadata ptr %name.0130, metadata !4102, metadata !DIExpression()), !dbg !4127
  call void @llvm.dbg.value(metadata ptr undef, metadata !4109, metadata !DIExpression()), !dbg !4140
  %xcv_outside = getelementptr inbounds %struct.xpvcv, ptr %13, i64 0, i32 10, !dbg !4141
  %14 = load ptr, ptr %xcv_outside, align 8, !dbg !4141
  call void @llvm.dbg.value(metadata ptr %14, metadata !4109, metadata !DIExpression()), !dbg !4140
  %15 = load ptr, ptr %14, align 8, !dbg !4144
  %xcv_padlist_u = getelementptr inbounds %struct.xpvcv, ptr %15, i64 0, i32 9, !dbg !4144
  %16 = load ptr, ptr %xcv_padlist_u, align 8, !dbg !4144
  %xpadl_alloc23 = getelementptr inbounds %struct.padlist, ptr %16, i64 0, i32 1, !dbg !4144
  %17 = load ptr, ptr %xpadl_alloc23, align 8, !dbg !4144
  %18 = load ptr, ptr %17, align 8, !dbg !4144
  %xpadnl_alloc24 = getelementptr inbounds %struct.padnamelist, ptr %18, i64 0, i32 1, !dbg !4144
  %19 = load ptr, ptr %xpadnl_alloc24, align 8, !dbg !4144
  call void @llvm.dbg.value(metadata ptr %19, metadata !4112, metadata !DIExpression()), !dbg !4140
  %xpadn_low = getelementptr inbounds %struct.padname, ptr %name.0130, i64 0, i32 3, !dbg !4145
  %20 = load i32, ptr %xpadn_low, align 8, !dbg !4145
  %conv25 = zext i32 %20 to i64, !dbg !4145
  call void @llvm.dbg.value(metadata i64 %conv25, metadata !4113, metadata !DIExpression()), !dbg !4140
  %arrayidx26 = getelementptr inbounds ptr, ptr %19, i64 %conv25, !dbg !4146
  %21 = load ptr, ptr %arrayidx26, align 8, !dbg !4146
  call void @llvm.dbg.value(metadata ptr %21, metadata !4102, metadata !DIExpression()), !dbg !4127
  %xpadn_flags18 = getelementptr inbounds %struct.padname, ptr %21, i64 0, i32 8, !dbg !4147
  %22 = load i8, ptr %xpadn_flags18, align 1, !dbg !4147
  %23 = and i8 %22, 1, !dbg !4147
  %tobool21.not = icmp eq i8 %23, 0, !dbg !4143
  br i1 %tobool21.not, label %while.end, label %while.body, !dbg !4143, !llvm.loop !4148

while.end:                                        ; preds = %while.body
  %conv25.le = zext i32 %20 to i64, !dbg !4145
  %arrayidx30.phi.trans.insert = getelementptr inbounds ptr, ptr %17, i64 1
  %.pre137 = load ptr, ptr %arrayidx30.phi.trans.insert, align 8, !dbg !4150
  %sv_u31.phi.trans.insert = getelementptr inbounds %struct.av, ptr %.pre137, i64 0, i32 3
  %.pre138 = load ptr, ptr %sv_u31.phi.trans.insert, align 8, !dbg !4150
  %arrayidx32 = getelementptr inbounds ptr, ptr %.pre138, i64 %conv25.le, !dbg !4150
  call void @llvm.dbg.value(metadata ptr undef, metadata !4106, metadata !DIExpression()), !dbg !4137
  br label %if.end, !dbg !4151

if.end:                                           ; preds = %if.then, %while.end
  %innercv.0.in = phi ptr [ %arrayidx32, %while.end ], [ %arrayidx13, %if.then ]
  %innercv.0 = load ptr, ptr %innercv.0.in, align 8, !dbg !4137
  call void @llvm.dbg.value(metadata ptr %innercv.0, metadata !4106, metadata !DIExpression()), !dbg !4137
  %sv_flags = getelementptr inbounds %struct.cv, ptr %innercv.0, i64 0, i32 2, !dbg !4152
  %24 = load i32, ptr %sv_flags, align 4, !dbg !4152
  %and33 = and i32 %24, 255, !dbg !4152
  %cmp34 = icmp eq i32 %and33, 13, !dbg !4153
  br i1 %cmp34, label %if.then36, label %if.else, !dbg !4154

if.then36:                                        ; preds = %if.end
  %25 = load ptr, ptr %innercv.0, align 8, !dbg !4155
  %xcv_outside38 = getelementptr inbounds %struct.xpvcv, ptr %25, i64 0, i32 10, !dbg !4155
  %26 = load ptr, ptr %xcv_outside38, align 8, !dbg !4155
  %cmp39 = icmp eq ptr %26, %old_cv, !dbg !4158
  br i1 %cmp39, label %if.then41, label %cleanup80, !dbg !4159

if.then41:                                        ; preds = %if.then36
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %25, i64 0, i32 12, !dbg !4160
  %27 = load i32, ptr %xcv_flags, align 4, !dbg !4160
  %and43 = and i32 %27, 16, !dbg !4160
  %tobool44.not = icmp eq i32 %and43, 0, !dbg !4160
  br i1 %tobool44.not, label %if.then45, label %cleanup80.sink.split, !dbg !4163

if.then45:                                        ; preds = %if.then41
  call void @llvm.dbg.value(metadata ptr %old_cv, metadata !1656, metadata !DIExpression()) #11, !dbg !4164
  br i1 %cmp.not.i, label %cleanup80.sink.split.sink.split, label %if.then.i, !dbg !4167

if.then.i:                                        ; preds = %if.then45
  %28 = load i32, ptr %sv_refcnt.i, align 8, !dbg !4168
  call void @llvm.dbg.value(metadata i32 %28, metadata !1659, metadata !DIExpression()) #11, !dbg !4169
  %cmp1.i = icmp ugt i32 %28, 1, !dbg !4170
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !4171

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %28, -1, !dbg !4172
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !4173
  br label %cleanup80.sink.split.sink.split, !dbg !4174

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %old_cv, i32 noundef %28) #11, !dbg !4175
  br label %cleanup80.sink.split.sink.split

if.else:                                          ; preds = %if.end
  %29 = load ptr, ptr %arrayidx13, align 8, !dbg !4176
  call void @llvm.dbg.value(metadata ptr %29, metadata !4114, metadata !DIExpression()), !dbg !4177
  %sv_flags53 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 2, !dbg !4178
  %30 = load i32, ptr %sv_flags53, align 4, !dbg !4178
  %and54 = and i32 %30, 65280, !dbg !4178
  %tobool55.not = icmp ne i32 %and54, 0, !dbg !4178
  %and57 = and i32 %30, 255, !dbg !4178
  %cmp58 = icmp eq i32 %and57, 8, !dbg !4178
  %or.cond116 = or i1 %tobool55.not, %cmp58, !dbg !4178
  %and62 = and i32 %30, 16826623, !dbg !4178
  %cmp63 = icmp eq i32 %and62, 16777226, !dbg !4178
  %or.cond117 = select i1 %or.cond116, i1 true, i1 %cmp63, !dbg !4178
  br i1 %or.cond117, label %if.end66, label %cleanup80, !dbg !4178

if.end66:                                         ; preds = %if.else
  %sv_u67 = getelementptr inbounds %struct.sv, ptr %29, i64 0, i32 3, !dbg !4180
  %31 = load ptr, ptr %sv_u67, align 8, !dbg !4180
  call void @llvm.dbg.value(metadata ptr %31, metadata !4117, metadata !DIExpression()), !dbg !4177
  %32 = load ptr, ptr %31, align 8, !dbg !4181
  %xcv_outside69 = getelementptr inbounds %struct.xpvcv, ptr %32, i64 0, i32 10, !dbg !4181
  %33 = load ptr, ptr %xcv_outside69, align 8, !dbg !4181
  call void @llvm.dbg.value(metadata ptr %33, metadata !1656, metadata !DIExpression()) #11, !dbg !4182
  %cmp.not.i118 = icmp eq ptr %33, null, !dbg !4184
  br i1 %cmp.not.i118, label %cleanup80.sink.split.sink.split, label %if.then.i121, !dbg !4185

if.then.i121:                                     ; preds = %if.end66
  %sv_refcnt.i119 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 1, !dbg !4186
  %34 = load i32, ptr %sv_refcnt.i119, align 8, !dbg !4186
  call void @llvm.dbg.value(metadata i32 %34, metadata !1659, metadata !DIExpression()) #11, !dbg !4187
  %cmp1.i120 = icmp ugt i32 %34, 1, !dbg !4188
  br i1 %cmp1.i120, label %if.then4.i123, label %if.else.i124, !dbg !4189

if.then4.i123:                                    ; preds = %if.then.i121
  %sub.i122 = add i32 %34, -1, !dbg !4190
  store i32 %sub.i122, ptr %sv_refcnt.i119, align 8, !dbg !4191
  br label %cleanup80.sink.split.sink.split, !dbg !4192

if.else.i124:                                     ; preds = %if.then.i121
  tail call void @Perl_sv_free2(ptr noundef nonnull %33, i32 noundef %34) #11, !dbg !4193
  br label %cleanup80.sink.split.sink.split

cleanup80.sink.split.sink.split:                  ; preds = %if.else.i124, %if.then4.i123, %if.end66, %if.else.i, %if.then4.i, %if.then45
  %sv_refcnt.sink142 = phi ptr [ %sv_refcnt, %if.then45 ], [ %sv_refcnt, %if.then4.i ], [ %sv_refcnt, %if.else.i ], [ %sv_refcnt70, %if.end66 ], [ %sv_refcnt70, %if.then4.i123 ], [ %sv_refcnt70, %if.else.i124 ]
  %innercv.0.sink = phi ptr [ %innercv.0, %if.then45 ], [ %innercv.0, %if.then4.i ], [ %innercv.0, %if.else.i ], [ %31, %if.end66 ], [ %31, %if.then4.i123 ], [ %31, %if.else.i124 ]
  %35 = load i32, ptr %sv_refcnt.sink142, align 8, !dbg !4194
  %inc = add i32 %35, 1, !dbg !4194
  store i32 %inc, ptr %sv_refcnt.sink142, align 8, !dbg !4194
  %.pre139 = load ptr, ptr %innercv.0.sink, align 8, !dbg !4194
  br label %cleanup80.sink.split, !dbg !4194

cleanup80.sink.split:                             ; preds = %cleanup80.sink.split.sink.split, %if.then41
  %.sink = phi ptr [ %25, %if.then41 ], [ %.pre139, %cleanup80.sink.split.sink.split ]
  %xcv_outside48 = getelementptr inbounds %struct.xpvcv, ptr %.sink, i64 0, i32 10, !dbg !4194
  store ptr %new_cv, ptr %xcv_outside48, align 8, !dbg !4194
  br label %cleanup80, !dbg !4195

cleanup80:                                        ; preds = %cleanup80.sink.split, %if.then36, %if.else, %for.body, %land.lhs.true6, %land.lhs.true8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !4195
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4097, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4118
  %cmp = icmp sgt i64 %indvars.iv, 1, !dbg !4124
  br i1 %cmp, label %for.body, label %for.end, !dbg !4125, !llvm.loop !4196

for.end:                                          ; preds = %cleanup80, %entry
  ret void, !dbg !4198
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pad_push(ptr noundef %padlist, i32 noundef %depth) local_unnamed_addr #0 !dbg !4199 {
entry:
  call void @llvm.dbg.value(metadata ptr %padlist, metadata !4203, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.value(metadata i32 %depth, metadata !4204, metadata !DIExpression()), !dbg !4227
  %conv = sext i32 %depth to i64, !dbg !4228
  %0 = load i64, ptr %padlist, align 8, !dbg !4229
  %cmp = icmp slt i64 %0, %conv, !dbg !4230
  %xpadl_alloc2.phi.trans.insert = getelementptr inbounds %struct.padlist, ptr %padlist, i64 0, i32 1
  %.pre = load ptr, ptr %xpadl_alloc2.phi.trans.insert, align 8, !dbg !4231
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4232

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds ptr, ptr %.pre, i64 %conv, !dbg !4233
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !4233
  %tobool.not = icmp eq ptr %1, null, !dbg !4233
  br i1 %tobool.not, label %if.then, label %if.end85, !dbg !4234

if.then:                                          ; preds = %entry, %lor.lhs.false
  %xpadl_alloc2 = getelementptr inbounds %struct.padlist, ptr %padlist, i64 0, i32 1, !dbg !4235
  call void @llvm.dbg.value(metadata ptr %.pre, metadata !4205, metadata !DIExpression()), !dbg !4236
  %call = tail call ptr @Perl_newSV_type(i32 noundef 11) #11, !dbg !4237
  call void @llvm.dbg.value(metadata ptr %call, metadata !4209, metadata !DIExpression()), !dbg !4236
  %sub = add nsw i32 %depth, -1, !dbg !4238
  %idxprom3 = sext i32 %sub to i64, !dbg !4238
  %arrayidx4 = getelementptr inbounds ptr, ptr %.pre, i64 %idxprom3, !dbg !4238
  %2 = load ptr, ptr %arrayidx4, align 8, !dbg !4238
  %sv_u = getelementptr inbounds %struct.av, ptr %2, i64 0, i32 3, !dbg !4238
  %3 = load ptr, ptr %sv_u, align 8, !dbg !4238
  call void @llvm.dbg.value(metadata ptr %3, metadata !4210, metadata !DIExpression()), !dbg !4236
  %arrayidx5 = getelementptr inbounds ptr, ptr %.pre, i64 1, !dbg !4239
  %4 = load ptr, ptr %arrayidx5, align 8, !dbg !4239
  %5 = load ptr, ptr %4, align 8, !dbg !4239
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %5, i64 0, i32 2, !dbg !4239
  %6 = load i64, ptr %xav_fill, align 8, !dbg !4239
  %conv6 = trunc i64 %6 to i32, !dbg !4239
  call void @llvm.dbg.value(metadata i32 %conv6, metadata !4211, metadata !DIExpression()), !dbg !4236
  %7 = load ptr, ptr %.pre, align 8, !dbg !4240
  call void @llvm.dbg.value(metadata i64 undef, metadata !4212, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4236
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %7, i64 0, i32 1, !dbg !4241
  %8 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !4241
  call void @llvm.dbg.value(metadata ptr %8, metadata !4213, metadata !DIExpression()), !dbg !4236
  call void @llvm.dbg.value(metadata i32 %conv6, metadata !4211, metadata !DIExpression()), !dbg !4236
  %cmp10128 = icmp sgt i32 %conv6, 0, !dbg !4242
  br i1 %cmp10128, label %for.body.preheader, label %for.end, !dbg !4243

for.body.preheader:                               ; preds = %if.then
  %9 = load i64, ptr %7, align 8, !dbg !4240
  call void @llvm.dbg.value(metadata i64 %9, metadata !4212, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4236
  call void @llvm.dbg.value(metadata i64 %9, metadata !4212, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4236
  %10 = and i64 %6, 4294967295, !dbg !4243
  %sext = shl i64 %9, 32, !dbg !4243
  %11 = ashr exact i64 %sext, 32, !dbg !4243
  br label %for.body, !dbg !4243

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %indvars.iv = phi i64 [ %10, %for.body.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !4211, metadata !DIExpression()), !dbg !4236
  %cmp12.not = icmp sgt i64 %indvars.iv, %11, !dbg !4244
  %arrayidx62.phi.trans.insert = getelementptr inbounds ptr, ptr %8, i64 %indvars.iv
  %.pre133 = load ptr, ptr %arrayidx62.phi.trans.insert, align 8, !dbg !4245
  br i1 %cmp12.not, label %if.else60, label %land.lhs.true, !dbg !4246

land.lhs.true:                                    ; preds = %for.body
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %.pre133, i64 0, i32 7, !dbg !4247
  %12 = load i8, ptr %xpadn_len, align 8, !dbg !4247
  %tobool17.not = icmp eq i8 %12, 0, !dbg !4247
  br i1 %tobool17.not, label %if.else60, label %if.then18, !dbg !4248

if.then18:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i8 undef, metadata !4215, metadata !DIExpression()), !dbg !4249
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %.pre133, i64 0, i32 8, !dbg !4250
  %13 = load i8, ptr %xpadn_flags, align 1, !dbg !4250
  %conv24 = zext i8 %13 to i32, !dbg !4250
  %and = and i32 %conv24, 1, !dbg !4250
  %tobool25.not = icmp eq i32 %and, 0, !dbg !4250
  br i1 %tobool25.not, label %lor.lhs.false26, label %if.then37, !dbg !4251

lor.lhs.false26:                                  ; preds = %if.then18
  %14 = load ptr, ptr %.pre133, align 8, !dbg !4252
  %15 = load i8, ptr %14, align 1, !dbg !4252
  call void @llvm.dbg.value(metadata i8 %15, metadata !4215, metadata !DIExpression()), !dbg !4249
  %and31 = and i32 %conv24, 2, !dbg !4253
  %tobool32 = icmp ne i32 %and31, 0, !dbg !4253
  %cmp35 = icmp eq i8 %15, 38
  %or.cond = select i1 %tobool32, i1 true, i1 %cmp35, !dbg !4254
  br i1 %or.cond, label %if.then37, label %if.else, !dbg !4254

if.then37:                                        ; preds = %lor.lhs.false26, %if.then18
  %arrayidx40 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv, !dbg !4255
  %16 = load ptr, ptr %arrayidx40, align 8, !dbg !4255
  call void @llvm.dbg.value(metadata ptr %16, metadata !2784, metadata !DIExpression()), !dbg !4257
  %cmp.not.i = icmp eq ptr %16, null, !dbg !4259
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !4260

if.then.i:                                        ; preds = %if.then37
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %16, i64 0, i32 1, !dbg !4261
  %17 = load i32, ptr %sv_refcnt.i, align 8, !dbg !4262
  %inc.i = add i32 %17, 1, !dbg !4262
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !4262
  br label %S_SvREFCNT_inc.exit, !dbg !4261

S_SvREFCNT_inc.exit:                              ; preds = %if.then37, %if.then.i
  %call42 = tail call ptr @Perl_av_store(ptr noundef %call, i64 noundef %indvars.iv, ptr noundef %16) #11, !dbg !4255
  br label %for.inc, !dbg !4263

if.else:                                          ; preds = %lor.lhs.false26
  switch i8 %15, label %if.else54 [
    i8 64, label %if.then46
    i8 37, label %if.then52
  ], !dbg !4264

if.then46:                                        ; preds = %if.else
  %call47 = tail call ptr @Perl_newSV_type(i32 noundef 11) #11, !dbg !4265
  call void @llvm.dbg.value(metadata ptr %call47, metadata !4221, metadata !DIExpression()), !dbg !4267
  br label %if.end56, !dbg !4268

if.then52:                                        ; preds = %if.else
  %call53 = tail call ptr @Perl_newSV_type(i32 noundef 12) #11, !dbg !4269
  call void @llvm.dbg.value(metadata ptr %call53, metadata !4221, metadata !DIExpression()), !dbg !4267
  br label %if.end56, !dbg !4271

if.else54:                                        ; preds = %if.else
  %call55 = tail call ptr @Perl_newSV(i64 noundef 0) #11, !dbg !4272
  call void @llvm.dbg.value(metadata ptr %call55, metadata !4221, metadata !DIExpression()), !dbg !4267
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %if.else54, %if.then46
  %sv.0 = phi ptr [ %call47, %if.then46 ], [ %call53, %if.then52 ], [ %call55, %if.else54 ], !dbg !4273
  call void @llvm.dbg.value(metadata ptr %sv.0, metadata !4221, metadata !DIExpression()), !dbg !4267
  %call58 = tail call ptr @Perl_av_store(ptr noundef %call, i64 noundef %indvars.iv, ptr noundef %sv.0) #11, !dbg !4274
  br label %for.inc

if.else60:                                        ; preds = %for.body, %land.lhs.true
  %18 = load ptr, ptr %.pre133, align 8, !dbg !4275
  %tobool64.not = icmp eq ptr %18, null, !dbg !4275
  br i1 %tobool64.not, label %if.else71, label %if.then65, !dbg !4276

if.then65:                                        ; preds = %if.else60
  %arrayidx68 = getelementptr inbounds ptr, ptr %3, i64 %indvars.iv, !dbg !4277
  %19 = load ptr, ptr %arrayidx68, align 8, !dbg !4277
  call void @llvm.dbg.value(metadata ptr %19, metadata !3811, metadata !DIExpression()), !dbg !4279
  %sv_refcnt.i123 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 1, !dbg !4281
  %20 = load i32, ptr %sv_refcnt.i123, align 8, !dbg !4282
  %inc.i124 = add i32 %20, 1, !dbg !4282
  store i32 %inc.i124, ptr %sv_refcnt.i123, align 8, !dbg !4282
  %call70 = tail call ptr @Perl_av_store(ptr noundef %call, i64 noundef %indvars.iv, ptr noundef %19) #11, !dbg !4277
  br label %for.inc, !dbg !4283

if.else71:                                        ; preds = %if.else60
  %call73 = tail call ptr @Perl_newSV(i64 noundef 0) #11, !dbg !4284
  call void @llvm.dbg.value(metadata ptr %call73, metadata !4224, metadata !DIExpression()), !dbg !4285
  %call75 = tail call ptr @Perl_av_store(ptr noundef %call, i64 noundef %indvars.iv, ptr noundef %call73) #11, !dbg !4286
  %sv_flags = getelementptr inbounds %struct.sv, ptr %call73, i64 0, i32 2, !dbg !4287
  %21 = load i32, ptr %sv_flags, align 4, !dbg !4287
  %or = or i32 %21, 131072, !dbg !4287
  store i32 %or, ptr %sv_flags, align 4, !dbg !4287
  br label %for.inc

for.inc:                                          ; preds = %S_SvREFCNT_inc.exit, %if.end56, %if.else71, %if.then65
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !4288
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !4211, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4236
  %cmp10 = icmp sgt i64 %indvars.iv, 1, !dbg !4242
  br i1 %cmp10, label %for.body, label %for.end, !dbg !4243, !llvm.loop !4289

for.end:                                          ; preds = %for.inc, %if.then
  %call78 = tail call ptr @Perl_newSV_type(i32 noundef 11) #11, !dbg !4291
  call void @llvm.dbg.value(metadata ptr %call78, metadata !4214, metadata !DIExpression()), !dbg !4236
  %call79 = tail call ptr @Perl_av_store(ptr noundef %call, i64 noundef 0, ptr noundef %call78) #11, !dbg !4292
  %sv_flags80 = getelementptr inbounds %struct.av, ptr %call78, i64 0, i32 2, !dbg !4293
  %22 = load i32, ptr %sv_flags80, align 4, !dbg !4293
  %and81 = and i32 %22, 1073741823, !dbg !4293
  %or83 = or i32 %and81, -2147483648, !dbg !4293
  store i32 %or83, ptr %sv_flags80, align 4, !dbg !4293
  call void @llvm.dbg.value(metadata ptr %padlist, metadata !4294, metadata !DIExpression()) #11, !dbg !4303
  call void @llvm.dbg.value(metadata i32 %depth, metadata !4299, metadata !DIExpression()) #11, !dbg !4303
  call void @llvm.dbg.value(metadata ptr %call, metadata !4300, metadata !DIExpression()) #11, !dbg !4303
  %23 = load i64, ptr %padlist, align 8, !dbg !4305
  call void @llvm.dbg.value(metadata i64 %23, metadata !4302, metadata !DIExpression()) #11, !dbg !4303
  %cmp.i = icmp slt i64 %23, %conv, !dbg !4306
  br i1 %cmp.i, label %if.then.i125, label %if.end.i, !dbg !4308

if.then.i125:                                     ; preds = %for.end
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %conv, ptr noundef nonnull %padlist, ptr noundef nonnull %xpadl_alloc2, ptr noundef nonnull %xpadl_alloc2) #11, !dbg !4309
  %24 = load ptr, ptr %xpadl_alloc2, align 8, !dbg !4311
  %add.ptr.i = getelementptr inbounds ptr, ptr %24, i64 %23, !dbg !4311
  %add.ptr7.i = getelementptr inbounds ptr, ptr %add.ptr.i, i64 1, !dbg !4311
  %25 = load i64, ptr %padlist, align 8, !dbg !4311
  %sub.i = sub nsw i64 %25, %23, !dbg !4311
  %mul.i = shl i64 %sub.i, 3, !dbg !4311
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr7.i, i8 0, i64 %mul.i, i1 false) #11, !dbg !4311
  br label %if.end.i, !dbg !4312

if.end.i:                                         ; preds = %if.then.i125, %for.end
  %26 = load ptr, ptr %xpadl_alloc2, align 8, !dbg !4313
  call void @llvm.dbg.value(metadata ptr %26, metadata !4301, metadata !DIExpression()) #11, !dbg !4303
  %arrayidx.i = getelementptr inbounds ptr, ptr %26, i64 %conv, !dbg !4314
  %27 = load ptr, ptr %arrayidx.i, align 8, !dbg !4314
  call void @llvm.dbg.value(metadata ptr %27, metadata !1656, metadata !DIExpression()) #11, !dbg !4315
  %cmp.not.i.i = icmp eq ptr %27, null, !dbg !4317
  br i1 %cmp.not.i.i, label %Perl_padlist_store.exit, label %if.then.i.i, !dbg !4318

if.then.i.i:                                      ; preds = %if.end.i
  %sv_refcnt.i.i = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 1, !dbg !4319
  %28 = load i32, ptr %sv_refcnt.i.i, align 8, !dbg !4319
  call void @llvm.dbg.value(metadata i32 %28, metadata !1659, metadata !DIExpression()) #11, !dbg !4320
  %cmp1.i.i = icmp ugt i32 %28, 1, !dbg !4321
  br i1 %cmp1.i.i, label %if.then4.i.i, label %if.else.i.i, !dbg !4322

if.then4.i.i:                                     ; preds = %if.then.i.i
  %sub.i.i = add i32 %28, -1, !dbg !4323
  store i32 %sub.i.i, ptr %sv_refcnt.i.i, align 8, !dbg !4324
  br label %Perl_padlist_store.exit, !dbg !4325

if.else.i.i:                                      ; preds = %if.then.i.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %27, i32 noundef %28) #11, !dbg !4326
  br label %Perl_padlist_store.exit

Perl_padlist_store.exit:                          ; preds = %if.end.i, %if.then4.i.i, %if.else.i.i
  store ptr %call, ptr %arrayidx.i, align 8, !dbg !4327
  br label %if.end85, !dbg !4328

if.end85:                                         ; preds = %Perl_padlist_store.exit, %lor.lhs.false
  ret void, !dbg !4329
}

declare !dbg !4330 ptr @Perl_newSV(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_padlist_store(ptr noundef %padlist, i32 noundef %key, ptr noundef %val) local_unnamed_addr #0 !dbg !4295 {
entry:
  call void @llvm.dbg.value(metadata ptr %padlist, metadata !4294, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 %key, metadata !4299, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata ptr %val, metadata !4300, metadata !DIExpression()), !dbg !4333
  %0 = load i64, ptr %padlist, align 8, !dbg !4334
  call void @llvm.dbg.value(metadata i64 %0, metadata !4302, metadata !DIExpression()), !dbg !4333
  %conv = sext i32 %key to i64, !dbg !4335
  %cmp = icmp slt i64 %0, %conv, !dbg !4336
  br i1 %cmp, label %if.then, label %if.end, !dbg !4337

if.then:                                          ; preds = %entry
  %xpadl_alloc = getelementptr inbounds %struct.padlist, ptr %padlist, i64 0, i32 1, !dbg !4338
  tail call void @Perl_av_extend_guts(ptr noundef null, i64 noundef %conv, ptr noundef nonnull %padlist, ptr noundef nonnull %xpadl_alloc, ptr noundef nonnull %xpadl_alloc) #11, !dbg !4338
  %1 = load ptr, ptr %xpadl_alloc, align 8, !dbg !4339
  %add.ptr = getelementptr inbounds ptr, ptr %1, i64 %0, !dbg !4339
  %add.ptr7 = getelementptr inbounds ptr, ptr %add.ptr, i64 1, !dbg !4339
  %2 = load i64, ptr %padlist, align 8, !dbg !4339
  %sub = sub nsw i64 %2, %0, !dbg !4339
  %mul = shl i64 %sub, 3, !dbg !4339
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr7, i8 0, i64 %mul, i1 false), !dbg !4339
  br label %if.end, !dbg !4340

if.end:                                           ; preds = %if.then, %entry
  %xpadl_alloc9 = getelementptr inbounds %struct.padlist, ptr %padlist, i64 0, i32 1, !dbg !4341
  %3 = load ptr, ptr %xpadl_alloc9, align 8, !dbg !4341
  call void @llvm.dbg.value(metadata ptr %3, metadata !4301, metadata !DIExpression()), !dbg !4333
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %conv, !dbg !4342
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !4342
  call void @llvm.dbg.value(metadata ptr %4, metadata !1656, metadata !DIExpression()) #11, !dbg !4343
  %cmp.not.i = icmp eq ptr %4, null, !dbg !4345
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i, !dbg !4346

if.then.i:                                        ; preds = %if.end
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 1, !dbg !4347
  %5 = load i32, ptr %sv_refcnt.i, align 8, !dbg !4347
  call void @llvm.dbg.value(metadata i32 %5, metadata !1659, metadata !DIExpression()) #11, !dbg !4348
  %cmp1.i = icmp ugt i32 %5, 1, !dbg !4349
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !4350

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %5, -1, !dbg !4351
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !4352
  br label %S_SvREFCNT_dec.exit, !dbg !4353

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %4, i32 noundef %5) #11, !dbg !4354
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.end, %if.then4.i, %if.else.i
  store ptr %val, ptr %arrayidx, align 8, !dbg !4355
  ret ptr %arrayidx, !dbg !4356
}

declare !dbg !4357 void @Perl_av_extend_guts(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @Perl_padname_free(ptr noundef %pn) local_unnamed_addr #0 !dbg !4360 {
entry:
  call void @llvm.dbg.value(metadata ptr %pn, metadata !4362, metadata !DIExpression()), !dbg !4363
  %xpadn_refcnt = getelementptr inbounds %struct.padname, ptr %pn, i64 0, i32 5, !dbg !4364
  %0 = load i32, ptr %xpadn_refcnt, align 8, !dbg !4366
  %dec = add i32 %0, -1, !dbg !4366
  store i32 %dec, ptr %xpadn_refcnt, align 8, !dbg !4366
  %tobool.not = icmp eq i32 %dec, 0, !dbg !4366
  br i1 %tobool.not, label %if.then, label %if.end7, !dbg !4367

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %pn, @PL_padname_undef, !dbg !4368
  %cmp1 = icmp eq ptr %pn, @PL_padname_const, !dbg !4368
  %or.cond = or i1 %cmp, %cmp1, !dbg !4368
  br i1 %or.cond, label %if.then2, label %if.end, !dbg !4368

if.then2:                                         ; preds = %if.then
  store i32 2147483647, ptr %xpadn_refcnt, align 8, !dbg !4371
  br label %if.end7, !dbg !4373

if.end:                                           ; preds = %if.then
  %xpadn_type_u = getelementptr inbounds %struct.padname, ptr %pn, i64 0, i32 2, !dbg !4374
  %1 = load ptr, ptr %xpadn_type_u, align 8, !dbg !4374
  call void @llvm.dbg.value(metadata ptr %1, metadata !1656, metadata !DIExpression()) #11, !dbg !4375
  %cmp.not.i = icmp eq ptr %1, null, !dbg !4377
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i, !dbg !4378

if.then.i:                                        ; preds = %if.end
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1, !dbg !4379
  %2 = load i32, ptr %sv_refcnt.i, align 8, !dbg !4379
  call void @llvm.dbg.value(metadata i32 %2, metadata !1659, metadata !DIExpression()) #11, !dbg !4380
  %cmp1.i = icmp ugt i32 %2, 1, !dbg !4381
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !4382

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %2, -1, !dbg !4383
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !4384
  br label %S_SvREFCNT_dec.exit, !dbg !4385

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %1, i32 noundef %2) #11, !dbg !4386
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %if.end, %if.then4.i, %if.else.i
  %xpadn_ourstash = getelementptr inbounds %struct.padname, ptr %pn, i64 0, i32 1, !dbg !4387
  %3 = load ptr, ptr %xpadn_ourstash, align 8, !dbg !4387
  call void @llvm.dbg.value(metadata ptr %3, metadata !1656, metadata !DIExpression()) #11, !dbg !4388
  %cmp.not.i16 = icmp eq ptr %3, null, !dbg !4390
  br i1 %cmp.not.i16, label %S_SvREFCNT_dec.exit23, label %if.then.i19, !dbg !4391

if.then.i19:                                      ; preds = %S_SvREFCNT_dec.exit
  %sv_refcnt.i17 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1, !dbg !4392
  %4 = load i32, ptr %sv_refcnt.i17, align 8, !dbg !4392
  call void @llvm.dbg.value(metadata i32 %4, metadata !1659, metadata !DIExpression()) #11, !dbg !4393
  %cmp1.i18 = icmp ugt i32 %4, 1, !dbg !4394
  br i1 %cmp1.i18, label %if.then4.i21, label %if.else.i22, !dbg !4395

if.then4.i21:                                     ; preds = %if.then.i19
  %sub.i20 = add i32 %4, -1, !dbg !4396
  store i32 %sub.i20, ptr %sv_refcnt.i17, align 8, !dbg !4397
  br label %S_SvREFCNT_dec.exit23, !dbg !4398

if.else.i22:                                      ; preds = %if.then.i19
  tail call void @Perl_sv_free2(ptr noundef nonnull %3, i32 noundef %4) #11, !dbg !4399
  br label %S_SvREFCNT_dec.exit23

S_SvREFCNT_dec.exit23:                            ; preds = %S_SvREFCNT_dec.exit, %if.then4.i21, %if.else.i22
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %pn, i64 0, i32 8, !dbg !4400
  %5 = load i8, ptr %xpadn_flags, align 1, !dbg !4400
  %6 = and i8 %5, 1, !dbg !4400
  %tobool4.not = icmp eq i8 %6, 0, !dbg !4400
  br i1 %tobool4.not, label %if.end6, label %if.then5, !dbg !4402

if.then5:                                         ; preds = %S_SvREFCNT_dec.exit23
  %7 = load ptr, ptr %pn, align 8, !dbg !4403
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 -42, !dbg !4403
  tail call void @Perl_padname_free(ptr noundef nonnull %add.ptr), !dbg !4403
  br label %if.end6, !dbg !4403

if.end6:                                          ; preds = %if.then5, %S_SvREFCNT_dec.exit23
  tail call void @Perl_safesysfree(ptr noundef %pn) #11, !dbg !4404
  br label %if.end7, !dbg !4405

if.end7:                                          ; preds = %if.then2, %if.end6, %entry
  ret void, !dbg !4406
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local ptr @Perl_padnamelist_fetch(ptr nocapture noundef readonly %pnl, i64 noundef %key) local_unnamed_addr #7 !dbg !4407 {
entry:
  call void @llvm.dbg.value(metadata ptr %pnl, metadata !4411, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i64 %key, metadata !4412, metadata !DIExpression()), !dbg !4413
  %0 = load i64, ptr %pnl, align 8, !dbg !4414
  %cmp = icmp slt i64 %0, %key, !dbg !4415
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !4416

cond.false:                                       ; preds = %entry
  %xpadnl_alloc = getelementptr inbounds %struct.padnamelist, ptr %pnl, i64 0, i32 1, !dbg !4417
  %1 = load ptr, ptr %xpadnl_alloc, align 8, !dbg !4417
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 %key, !dbg !4417
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4417
  br label %cond.end, !dbg !4416

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi ptr [ %2, %cond.false ], [ null, %entry ], !dbg !4416
  ret ptr %cond, !dbg !4418
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_newPADNAMEouter(ptr nocapture noundef readonly %outer) local_unnamed_addr #0 !dbg !2738 {
entry:
  call void @llvm.dbg.value(metadata ptr %outer, metadata !2737, metadata !DIExpression()), !dbg !4419
  %call = tail call ptr @Perl_safesyscalloc(i64 noundef 1, i64 noundef 48) #11, !dbg !4420
  call void @llvm.dbg.value(metadata ptr %call, metadata !2742, metadata !DIExpression()), !dbg !4419
  %xpadn_refcnt = getelementptr inbounds %struct.padname, ptr %call, i64 0, i32 5, !dbg !4421
  store i32 1, ptr %xpadn_refcnt, align 8, !dbg !4422
  %0 = load ptr, ptr %outer, align 8, !dbg !4423
  store ptr %0, ptr %call, align 8, !dbg !4424
  %1 = load ptr, ptr %outer, align 8, !dbg !4425
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 -42, !dbg !4425
  %xpadn_refcnt3 = getelementptr inbounds %struct.padname, ptr %add.ptr, i64 0, i32 5, !dbg !4425
  %2 = load i32, ptr %xpadn_refcnt3, align 8, !dbg !4426
  %inc = add i32 %2, 1, !dbg !4426
  store i32 %inc, ptr %xpadn_refcnt3, align 8, !dbg !4426
  %xpadn_flags = getelementptr inbounds %struct.padname, ptr %call, i64 0, i32 8, !dbg !4427
  store i8 1, ptr %xpadn_flags, align 1, !dbg !4428
  %xpadn_len = getelementptr inbounds %struct.padname, ptr %outer, i64 0, i32 7, !dbg !4429
  %3 = load i8, ptr %xpadn_len, align 8, !dbg !4429
  %xpadn_len4 = getelementptr inbounds %struct.padname, ptr %call, i64 0, i32 7, !dbg !4430
  store i8 %3, ptr %xpadn_len4, align 8, !dbg !4431
  ret ptr %call, !dbg !4432
}

declare !dbg !4433 void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !4436 zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #3

declare !dbg !4439 void @Perl_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !4440 ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #3

declare !dbg !4441 void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !4442 ptr @Perl_savepv(ptr noundef) local_unnamed_addr #3

declare !dbg !4445 void @Perl_cvstash_set(ptr noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4448 void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !4451 i32 @Perl_mg_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !4454 ptr @Perl_find_runcv_where(i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #3

declare !dbg !4457 void @Perl_av_fill(ptr noundef, i64 noundef) local_unnamed_addr #3

declare !dbg !4460 ptr @Perl_share_hek(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !4463 ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !4466 ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #3

declare !dbg !4467 ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1170, !1171, !1172, !1173, !1174, !1175}
!llvm.ident = !{!1176}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !440, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/pad.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "382a44231383b8c31983de563b38c869")
!2 = !{!3, !24, !34, !434}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 132, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/500.perlbench_r/src/sv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e8ddee5f0a5032210b880c8e95bcea58")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!7 = !DIEnumerator(name: "SVt_NULL", value: 0)
!8 = !DIEnumerator(name: "SVt_IV", value: 1)
!9 = !DIEnumerator(name: "SVt_NV", value: 2)
!10 = !DIEnumerator(name: "SVt_PV", value: 3)
!11 = !DIEnumerator(name: "SVt_INVLIST", value: 4)
!12 = !DIEnumerator(name: "SVt_PVIV", value: 5)
!13 = !DIEnumerator(name: "SVt_PVNV", value: 6)
!14 = !DIEnumerator(name: "SVt_PVMG", value: 7)
!15 = !DIEnumerator(name: "SVt_REGEXP", value: 8)
!16 = !DIEnumerator(name: "SVt_PVGV", value: 9)
!17 = !DIEnumerator(name: "SVt_PVLV", value: 10)
!18 = !DIEnumerator(name: "SVt_PVAV", value: 11)
!19 = !DIEnumerator(name: "SVt_PVHV", value: 12)
!20 = !DIEnumerator(name: "SVt_PVCV", value: 13)
!21 = !DIEnumerator(name: "SVt_PVFM", value: 14)
!22 = !DIEnumerator(name: "SVt_PVIO", value: 15)
!23 = !DIEnumerator(name: "SVt_LAST", value: 16)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perl_phase", file: !25, line: 5211, baseType: !5, size: 32, elements: !26)
!25 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!26 = !{!27, !28, !29, !30, !31, !32, !33}
!27 = !DIEnumerator(name: "PERL_PHASE_CONSTRUCT", value: 0)
!28 = !DIEnumerator(name: "PERL_PHASE_START", value: 1)
!29 = !DIEnumerator(name: "PERL_PHASE_CHECK", value: 2)
!30 = !DIEnumerator(name: "PERL_PHASE_INIT", value: 3)
!31 = !DIEnumerator(name: "PERL_PHASE_RUN", value: 4)
!32 = !DIEnumerator(name: "PERL_PHASE_END", value: 5)
!33 = !DIEnumerator(name: "PERL_PHASE_DESTRUCT", value: 6)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opcode", file: !35, line: 16, baseType: !5, size: 32, elements: !36)
!35 = !DIFile(filename: "apps/500.perlbench_r/src/opnames.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1f3c200effbe760f517f3ab2ea52b45")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!37 = !DIEnumerator(name: "OP_NULL", value: 0)
!38 = !DIEnumerator(name: "OP_STUB", value: 1)
!39 = !DIEnumerator(name: "OP_SCALAR", value: 2)
!40 = !DIEnumerator(name: "OP_PUSHMARK", value: 3)
!41 = !DIEnumerator(name: "OP_WANTARRAY", value: 4)
!42 = !DIEnumerator(name: "OP_CONST", value: 5)
!43 = !DIEnumerator(name: "OP_GVSV", value: 6)
!44 = !DIEnumerator(name: "OP_GV", value: 7)
!45 = !DIEnumerator(name: "OP_GELEM", value: 8)
!46 = !DIEnumerator(name: "OP_PADSV", value: 9)
!47 = !DIEnumerator(name: "OP_PADAV", value: 10)
!48 = !DIEnumerator(name: "OP_PADHV", value: 11)
!49 = !DIEnumerator(name: "OP_PADANY", value: 12)
!50 = !DIEnumerator(name: "OP_PUSHRE", value: 13)
!51 = !DIEnumerator(name: "OP_RV2GV", value: 14)
!52 = !DIEnumerator(name: "OP_RV2SV", value: 15)
!53 = !DIEnumerator(name: "OP_AV2ARYLEN", value: 16)
!54 = !DIEnumerator(name: "OP_RV2CV", value: 17)
!55 = !DIEnumerator(name: "OP_ANONCODE", value: 18)
!56 = !DIEnumerator(name: "OP_PROTOTYPE", value: 19)
!57 = !DIEnumerator(name: "OP_REFGEN", value: 20)
!58 = !DIEnumerator(name: "OP_SREFGEN", value: 21)
!59 = !DIEnumerator(name: "OP_REF", value: 22)
!60 = !DIEnumerator(name: "OP_BLESS", value: 23)
!61 = !DIEnumerator(name: "OP_BACKTICK", value: 24)
!62 = !DIEnumerator(name: "OP_GLOB", value: 25)
!63 = !DIEnumerator(name: "OP_READLINE", value: 26)
!64 = !DIEnumerator(name: "OP_RCATLINE", value: 27)
!65 = !DIEnumerator(name: "OP_REGCMAYBE", value: 28)
!66 = !DIEnumerator(name: "OP_REGCRESET", value: 29)
!67 = !DIEnumerator(name: "OP_REGCOMP", value: 30)
!68 = !DIEnumerator(name: "OP_MATCH", value: 31)
!69 = !DIEnumerator(name: "OP_QR", value: 32)
!70 = !DIEnumerator(name: "OP_SUBST", value: 33)
!71 = !DIEnumerator(name: "OP_SUBSTCONT", value: 34)
!72 = !DIEnumerator(name: "OP_TRANS", value: 35)
!73 = !DIEnumerator(name: "OP_TRANSR", value: 36)
!74 = !DIEnumerator(name: "OP_SASSIGN", value: 37)
!75 = !DIEnumerator(name: "OP_AASSIGN", value: 38)
!76 = !DIEnumerator(name: "OP_CHOP", value: 39)
!77 = !DIEnumerator(name: "OP_SCHOP", value: 40)
!78 = !DIEnumerator(name: "OP_CHOMP", value: 41)
!79 = !DIEnumerator(name: "OP_SCHOMP", value: 42)
!80 = !DIEnumerator(name: "OP_DEFINED", value: 43)
!81 = !DIEnumerator(name: "OP_UNDEF", value: 44)
!82 = !DIEnumerator(name: "OP_STUDY", value: 45)
!83 = !DIEnumerator(name: "OP_POS", value: 46)
!84 = !DIEnumerator(name: "OP_PREINC", value: 47)
!85 = !DIEnumerator(name: "OP_I_PREINC", value: 48)
!86 = !DIEnumerator(name: "OP_PREDEC", value: 49)
!87 = !DIEnumerator(name: "OP_I_PREDEC", value: 50)
!88 = !DIEnumerator(name: "OP_POSTINC", value: 51)
!89 = !DIEnumerator(name: "OP_I_POSTINC", value: 52)
!90 = !DIEnumerator(name: "OP_POSTDEC", value: 53)
!91 = !DIEnumerator(name: "OP_I_POSTDEC", value: 54)
!92 = !DIEnumerator(name: "OP_POW", value: 55)
!93 = !DIEnumerator(name: "OP_MULTIPLY", value: 56)
!94 = !DIEnumerator(name: "OP_I_MULTIPLY", value: 57)
!95 = !DIEnumerator(name: "OP_DIVIDE", value: 58)
!96 = !DIEnumerator(name: "OP_I_DIVIDE", value: 59)
!97 = !DIEnumerator(name: "OP_MODULO", value: 60)
!98 = !DIEnumerator(name: "OP_I_MODULO", value: 61)
!99 = !DIEnumerator(name: "OP_REPEAT", value: 62)
!100 = !DIEnumerator(name: "OP_ADD", value: 63)
!101 = !DIEnumerator(name: "OP_I_ADD", value: 64)
!102 = !DIEnumerator(name: "OP_SUBTRACT", value: 65)
!103 = !DIEnumerator(name: "OP_I_SUBTRACT", value: 66)
!104 = !DIEnumerator(name: "OP_CONCAT", value: 67)
!105 = !DIEnumerator(name: "OP_STRINGIFY", value: 68)
!106 = !DIEnumerator(name: "OP_LEFT_SHIFT", value: 69)
!107 = !DIEnumerator(name: "OP_RIGHT_SHIFT", value: 70)
!108 = !DIEnumerator(name: "OP_LT", value: 71)
!109 = !DIEnumerator(name: "OP_I_LT", value: 72)
!110 = !DIEnumerator(name: "OP_GT", value: 73)
!111 = !DIEnumerator(name: "OP_I_GT", value: 74)
!112 = !DIEnumerator(name: "OP_LE", value: 75)
!113 = !DIEnumerator(name: "OP_I_LE", value: 76)
!114 = !DIEnumerator(name: "OP_GE", value: 77)
!115 = !DIEnumerator(name: "OP_I_GE", value: 78)
!116 = !DIEnumerator(name: "OP_EQ", value: 79)
!117 = !DIEnumerator(name: "OP_I_EQ", value: 80)
!118 = !DIEnumerator(name: "OP_NE", value: 81)
!119 = !DIEnumerator(name: "OP_I_NE", value: 82)
!120 = !DIEnumerator(name: "OP_NCMP", value: 83)
!121 = !DIEnumerator(name: "OP_I_NCMP", value: 84)
!122 = !DIEnumerator(name: "OP_SLT", value: 85)
!123 = !DIEnumerator(name: "OP_SGT", value: 86)
!124 = !DIEnumerator(name: "OP_SLE", value: 87)
!125 = !DIEnumerator(name: "OP_SGE", value: 88)
!126 = !DIEnumerator(name: "OP_SEQ", value: 89)
!127 = !DIEnumerator(name: "OP_SNE", value: 90)
!128 = !DIEnumerator(name: "OP_SCMP", value: 91)
!129 = !DIEnumerator(name: "OP_BIT_AND", value: 92)
!130 = !DIEnumerator(name: "OP_BIT_XOR", value: 93)
!131 = !DIEnumerator(name: "OP_BIT_OR", value: 94)
!132 = !DIEnumerator(name: "OP_NBIT_AND", value: 95)
!133 = !DIEnumerator(name: "OP_NBIT_XOR", value: 96)
!134 = !DIEnumerator(name: "OP_NBIT_OR", value: 97)
!135 = !DIEnumerator(name: "OP_SBIT_AND", value: 98)
!136 = !DIEnumerator(name: "OP_SBIT_XOR", value: 99)
!137 = !DIEnumerator(name: "OP_SBIT_OR", value: 100)
!138 = !DIEnumerator(name: "OP_NEGATE", value: 101)
!139 = !DIEnumerator(name: "OP_I_NEGATE", value: 102)
!140 = !DIEnumerator(name: "OP_NOT", value: 103)
!141 = !DIEnumerator(name: "OP_COMPLEMENT", value: 104)
!142 = !DIEnumerator(name: "OP_NCOMPLEMENT", value: 105)
!143 = !DIEnumerator(name: "OP_SCOMPLEMENT", value: 106)
!144 = !DIEnumerator(name: "OP_SMARTMATCH", value: 107)
!145 = !DIEnumerator(name: "OP_ATAN2", value: 108)
!146 = !DIEnumerator(name: "OP_SIN", value: 109)
!147 = !DIEnumerator(name: "OP_COS", value: 110)
!148 = !DIEnumerator(name: "OP_RAND", value: 111)
!149 = !DIEnumerator(name: "OP_SRAND", value: 112)
!150 = !DIEnumerator(name: "OP_EXP", value: 113)
!151 = !DIEnumerator(name: "OP_LOG", value: 114)
!152 = !DIEnumerator(name: "OP_SQRT", value: 115)
!153 = !DIEnumerator(name: "OP_INT", value: 116)
!154 = !DIEnumerator(name: "OP_HEX", value: 117)
!155 = !DIEnumerator(name: "OP_OCT", value: 118)
!156 = !DIEnumerator(name: "OP_ABS", value: 119)
!157 = !DIEnumerator(name: "OP_LENGTH", value: 120)
!158 = !DIEnumerator(name: "OP_SUBSTR", value: 121)
!159 = !DIEnumerator(name: "OP_VEC", value: 122)
!160 = !DIEnumerator(name: "OP_INDEX", value: 123)
!161 = !DIEnumerator(name: "OP_RINDEX", value: 124)
!162 = !DIEnumerator(name: "OP_SPRINTF", value: 125)
!163 = !DIEnumerator(name: "OP_FORMLINE", value: 126)
!164 = !DIEnumerator(name: "OP_ORD", value: 127)
!165 = !DIEnumerator(name: "OP_CHR", value: 128)
!166 = !DIEnumerator(name: "OP_CRYPT", value: 129)
!167 = !DIEnumerator(name: "OP_UCFIRST", value: 130)
!168 = !DIEnumerator(name: "OP_LCFIRST", value: 131)
!169 = !DIEnumerator(name: "OP_UC", value: 132)
!170 = !DIEnumerator(name: "OP_LC", value: 133)
!171 = !DIEnumerator(name: "OP_QUOTEMETA", value: 134)
!172 = !DIEnumerator(name: "OP_RV2AV", value: 135)
!173 = !DIEnumerator(name: "OP_AELEMFAST", value: 136)
!174 = !DIEnumerator(name: "OP_AELEMFAST_LEX", value: 137)
!175 = !DIEnumerator(name: "OP_AELEM", value: 138)
!176 = !DIEnumerator(name: "OP_ASLICE", value: 139)
!177 = !DIEnumerator(name: "OP_KVASLICE", value: 140)
!178 = !DIEnumerator(name: "OP_AEACH", value: 141)
!179 = !DIEnumerator(name: "OP_AKEYS", value: 142)
!180 = !DIEnumerator(name: "OP_AVALUES", value: 143)
!181 = !DIEnumerator(name: "OP_EACH", value: 144)
!182 = !DIEnumerator(name: "OP_VALUES", value: 145)
!183 = !DIEnumerator(name: "OP_KEYS", value: 146)
!184 = !DIEnumerator(name: "OP_DELETE", value: 147)
!185 = !DIEnumerator(name: "OP_EXISTS", value: 148)
!186 = !DIEnumerator(name: "OP_RV2HV", value: 149)
!187 = !DIEnumerator(name: "OP_HELEM", value: 150)
!188 = !DIEnumerator(name: "OP_HSLICE", value: 151)
!189 = !DIEnumerator(name: "OP_KVHSLICE", value: 152)
!190 = !DIEnumerator(name: "OP_MULTIDEREF", value: 153)
!191 = !DIEnumerator(name: "OP_UNPACK", value: 154)
!192 = !DIEnumerator(name: "OP_PACK", value: 155)
!193 = !DIEnumerator(name: "OP_SPLIT", value: 156)
!194 = !DIEnumerator(name: "OP_JOIN", value: 157)
!195 = !DIEnumerator(name: "OP_LIST", value: 158)
!196 = !DIEnumerator(name: "OP_LSLICE", value: 159)
!197 = !DIEnumerator(name: "OP_ANONLIST", value: 160)
!198 = !DIEnumerator(name: "OP_ANONHASH", value: 161)
!199 = !DIEnumerator(name: "OP_SPLICE", value: 162)
!200 = !DIEnumerator(name: "OP_PUSH", value: 163)
!201 = !DIEnumerator(name: "OP_POP", value: 164)
!202 = !DIEnumerator(name: "OP_SHIFT", value: 165)
!203 = !DIEnumerator(name: "OP_UNSHIFT", value: 166)
!204 = !DIEnumerator(name: "OP_SORT", value: 167)
!205 = !DIEnumerator(name: "OP_REVERSE", value: 168)
!206 = !DIEnumerator(name: "OP_GREPSTART", value: 169)
!207 = !DIEnumerator(name: "OP_GREPWHILE", value: 170)
!208 = !DIEnumerator(name: "OP_MAPSTART", value: 171)
!209 = !DIEnumerator(name: "OP_MAPWHILE", value: 172)
!210 = !DIEnumerator(name: "OP_RANGE", value: 173)
!211 = !DIEnumerator(name: "OP_FLIP", value: 174)
!212 = !DIEnumerator(name: "OP_FLOP", value: 175)
!213 = !DIEnumerator(name: "OP_AND", value: 176)
!214 = !DIEnumerator(name: "OP_OR", value: 177)
!215 = !DIEnumerator(name: "OP_XOR", value: 178)
!216 = !DIEnumerator(name: "OP_DOR", value: 179)
!217 = !DIEnumerator(name: "OP_COND_EXPR", value: 180)
!218 = !DIEnumerator(name: "OP_ANDASSIGN", value: 181)
!219 = !DIEnumerator(name: "OP_ORASSIGN", value: 182)
!220 = !DIEnumerator(name: "OP_DORASSIGN", value: 183)
!221 = !DIEnumerator(name: "OP_METHOD", value: 184)
!222 = !DIEnumerator(name: "OP_ENTERSUB", value: 185)
!223 = !DIEnumerator(name: "OP_LEAVESUB", value: 186)
!224 = !DIEnumerator(name: "OP_LEAVESUBLV", value: 187)
!225 = !DIEnumerator(name: "OP_CALLER", value: 188)
!226 = !DIEnumerator(name: "OP_WARN", value: 189)
!227 = !DIEnumerator(name: "OP_DIE", value: 190)
!228 = !DIEnumerator(name: "OP_RESET", value: 191)
!229 = !DIEnumerator(name: "OP_LINESEQ", value: 192)
!230 = !DIEnumerator(name: "OP_NEXTSTATE", value: 193)
!231 = !DIEnumerator(name: "OP_DBSTATE", value: 194)
!232 = !DIEnumerator(name: "OP_UNSTACK", value: 195)
!233 = !DIEnumerator(name: "OP_ENTER", value: 196)
!234 = !DIEnumerator(name: "OP_LEAVE", value: 197)
!235 = !DIEnumerator(name: "OP_SCOPE", value: 198)
!236 = !DIEnumerator(name: "OP_ENTERITER", value: 199)
!237 = !DIEnumerator(name: "OP_ITER", value: 200)
!238 = !DIEnumerator(name: "OP_ENTERLOOP", value: 201)
!239 = !DIEnumerator(name: "OP_LEAVELOOP", value: 202)
!240 = !DIEnumerator(name: "OP_RETURN", value: 203)
!241 = !DIEnumerator(name: "OP_LAST", value: 204)
!242 = !DIEnumerator(name: "OP_NEXT", value: 205)
!243 = !DIEnumerator(name: "OP_REDO", value: 206)
!244 = !DIEnumerator(name: "OP_DUMP", value: 207)
!245 = !DIEnumerator(name: "OP_GOTO", value: 208)
!246 = !DIEnumerator(name: "OP_EXIT", value: 209)
!247 = !DIEnumerator(name: "OP_METHOD_NAMED", value: 210)
!248 = !DIEnumerator(name: "OP_METHOD_SUPER", value: 211)
!249 = !DIEnumerator(name: "OP_METHOD_REDIR", value: 212)
!250 = !DIEnumerator(name: "OP_METHOD_REDIR_SUPER", value: 213)
!251 = !DIEnumerator(name: "OP_ENTERGIVEN", value: 214)
!252 = !DIEnumerator(name: "OP_LEAVEGIVEN", value: 215)
!253 = !DIEnumerator(name: "OP_ENTERWHEN", value: 216)
!254 = !DIEnumerator(name: "OP_LEAVEWHEN", value: 217)
!255 = !DIEnumerator(name: "OP_BREAK", value: 218)
!256 = !DIEnumerator(name: "OP_CONTINUE", value: 219)
!257 = !DIEnumerator(name: "OP_OPEN", value: 220)
!258 = !DIEnumerator(name: "OP_CLOSE", value: 221)
!259 = !DIEnumerator(name: "OP_PIPE_OP", value: 222)
!260 = !DIEnumerator(name: "OP_FILENO", value: 223)
!261 = !DIEnumerator(name: "OP_UMASK", value: 224)
!262 = !DIEnumerator(name: "OP_BINMODE", value: 225)
!263 = !DIEnumerator(name: "OP_TIE", value: 226)
!264 = !DIEnumerator(name: "OP_UNTIE", value: 227)
!265 = !DIEnumerator(name: "OP_TIED", value: 228)
!266 = !DIEnumerator(name: "OP_DBMOPEN", value: 229)
!267 = !DIEnumerator(name: "OP_DBMCLOSE", value: 230)
!268 = !DIEnumerator(name: "OP_SSELECT", value: 231)
!269 = !DIEnumerator(name: "OP_SELECT", value: 232)
!270 = !DIEnumerator(name: "OP_GETC", value: 233)
!271 = !DIEnumerator(name: "OP_READ", value: 234)
!272 = !DIEnumerator(name: "OP_ENTERWRITE", value: 235)
!273 = !DIEnumerator(name: "OP_LEAVEWRITE", value: 236)
!274 = !DIEnumerator(name: "OP_PRTF", value: 237)
!275 = !DIEnumerator(name: "OP_PRINT", value: 238)
!276 = !DIEnumerator(name: "OP_SAY", value: 239)
!277 = !DIEnumerator(name: "OP_SYSOPEN", value: 240)
!278 = !DIEnumerator(name: "OP_SYSSEEK", value: 241)
!279 = !DIEnumerator(name: "OP_SYSREAD", value: 242)
!280 = !DIEnumerator(name: "OP_SYSWRITE", value: 243)
!281 = !DIEnumerator(name: "OP_EOF", value: 244)
!282 = !DIEnumerator(name: "OP_TELL", value: 245)
!283 = !DIEnumerator(name: "OP_SEEK", value: 246)
!284 = !DIEnumerator(name: "OP_TRUNCATE", value: 247)
!285 = !DIEnumerator(name: "OP_FCNTL", value: 248)
!286 = !DIEnumerator(name: "OP_IOCTL", value: 249)
!287 = !DIEnumerator(name: "OP_FLOCK", value: 250)
!288 = !DIEnumerator(name: "OP_SEND", value: 251)
!289 = !DIEnumerator(name: "OP_RECV", value: 252)
!290 = !DIEnumerator(name: "OP_SOCKET", value: 253)
!291 = !DIEnumerator(name: "OP_SOCKPAIR", value: 254)
!292 = !DIEnumerator(name: "OP_BIND", value: 255)
!293 = !DIEnumerator(name: "OP_CONNECT", value: 256)
!294 = !DIEnumerator(name: "OP_LISTEN", value: 257)
!295 = !DIEnumerator(name: "OP_ACCEPT", value: 258)
!296 = !DIEnumerator(name: "OP_SHUTDOWN", value: 259)
!297 = !DIEnumerator(name: "OP_GSOCKOPT", value: 260)
!298 = !DIEnumerator(name: "OP_SSOCKOPT", value: 261)
!299 = !DIEnumerator(name: "OP_GETSOCKNAME", value: 262)
!300 = !DIEnumerator(name: "OP_GETPEERNAME", value: 263)
!301 = !DIEnumerator(name: "OP_LSTAT", value: 264)
!302 = !DIEnumerator(name: "OP_STAT", value: 265)
!303 = !DIEnumerator(name: "OP_FTRREAD", value: 266)
!304 = !DIEnumerator(name: "OP_FTRWRITE", value: 267)
!305 = !DIEnumerator(name: "OP_FTREXEC", value: 268)
!306 = !DIEnumerator(name: "OP_FTEREAD", value: 269)
!307 = !DIEnumerator(name: "OP_FTEWRITE", value: 270)
!308 = !DIEnumerator(name: "OP_FTEEXEC", value: 271)
!309 = !DIEnumerator(name: "OP_FTIS", value: 272)
!310 = !DIEnumerator(name: "OP_FTSIZE", value: 273)
!311 = !DIEnumerator(name: "OP_FTMTIME", value: 274)
!312 = !DIEnumerator(name: "OP_FTATIME", value: 275)
!313 = !DIEnumerator(name: "OP_FTCTIME", value: 276)
!314 = !DIEnumerator(name: "OP_FTROWNED", value: 277)
!315 = !DIEnumerator(name: "OP_FTEOWNED", value: 278)
!316 = !DIEnumerator(name: "OP_FTZERO", value: 279)
!317 = !DIEnumerator(name: "OP_FTSOCK", value: 280)
!318 = !DIEnumerator(name: "OP_FTCHR", value: 281)
!319 = !DIEnumerator(name: "OP_FTBLK", value: 282)
!320 = !DIEnumerator(name: "OP_FTFILE", value: 283)
!321 = !DIEnumerator(name: "OP_FTDIR", value: 284)
!322 = !DIEnumerator(name: "OP_FTPIPE", value: 285)
!323 = !DIEnumerator(name: "OP_FTSUID", value: 286)
!324 = !DIEnumerator(name: "OP_FTSGID", value: 287)
!325 = !DIEnumerator(name: "OP_FTSVTX", value: 288)
!326 = !DIEnumerator(name: "OP_FTLINK", value: 289)
!327 = !DIEnumerator(name: "OP_FTTTY", value: 290)
!328 = !DIEnumerator(name: "OP_FTTEXT", value: 291)
!329 = !DIEnumerator(name: "OP_FTBINARY", value: 292)
!330 = !DIEnumerator(name: "OP_CHDIR", value: 293)
!331 = !DIEnumerator(name: "OP_CHOWN", value: 294)
!332 = !DIEnumerator(name: "OP_CHROOT", value: 295)
!333 = !DIEnumerator(name: "OP_UNLINK", value: 296)
!334 = !DIEnumerator(name: "OP_CHMOD", value: 297)
!335 = !DIEnumerator(name: "OP_UTIME", value: 298)
!336 = !DIEnumerator(name: "OP_RENAME", value: 299)
!337 = !DIEnumerator(name: "OP_LINK", value: 300)
!338 = !DIEnumerator(name: "OP_SYMLINK", value: 301)
!339 = !DIEnumerator(name: "OP_READLINK", value: 302)
!340 = !DIEnumerator(name: "OP_MKDIR", value: 303)
!341 = !DIEnumerator(name: "OP_RMDIR", value: 304)
!342 = !DIEnumerator(name: "OP_OPEN_DIR", value: 305)
!343 = !DIEnumerator(name: "OP_READDIR", value: 306)
!344 = !DIEnumerator(name: "OP_TELLDIR", value: 307)
!345 = !DIEnumerator(name: "OP_SEEKDIR", value: 308)
!346 = !DIEnumerator(name: "OP_REWINDDIR", value: 309)
!347 = !DIEnumerator(name: "OP_CLOSEDIR", value: 310)
!348 = !DIEnumerator(name: "OP_FORK", value: 311)
!349 = !DIEnumerator(name: "OP_WAIT", value: 312)
!350 = !DIEnumerator(name: "OP_WAITPID", value: 313)
!351 = !DIEnumerator(name: "OP_SYSTEM", value: 314)
!352 = !DIEnumerator(name: "OP_EXEC", value: 315)
!353 = !DIEnumerator(name: "OP_KILL", value: 316)
!354 = !DIEnumerator(name: "OP_GETPPID", value: 317)
!355 = !DIEnumerator(name: "OP_GETPGRP", value: 318)
!356 = !DIEnumerator(name: "OP_SETPGRP", value: 319)
!357 = !DIEnumerator(name: "OP_GETPRIORITY", value: 320)
!358 = !DIEnumerator(name: "OP_SETPRIORITY", value: 321)
!359 = !DIEnumerator(name: "OP_TIME", value: 322)
!360 = !DIEnumerator(name: "OP_TMS", value: 323)
!361 = !DIEnumerator(name: "OP_LOCALTIME", value: 324)
!362 = !DIEnumerator(name: "OP_GMTIME", value: 325)
!363 = !DIEnumerator(name: "OP_ALARM", value: 326)
!364 = !DIEnumerator(name: "OP_SLEEP", value: 327)
!365 = !DIEnumerator(name: "OP_SHMGET", value: 328)
!366 = !DIEnumerator(name: "OP_SHMCTL", value: 329)
!367 = !DIEnumerator(name: "OP_SHMREAD", value: 330)
!368 = !DIEnumerator(name: "OP_SHMWRITE", value: 331)
!369 = !DIEnumerator(name: "OP_MSGGET", value: 332)
!370 = !DIEnumerator(name: "OP_MSGCTL", value: 333)
!371 = !DIEnumerator(name: "OP_MSGSND", value: 334)
!372 = !DIEnumerator(name: "OP_MSGRCV", value: 335)
!373 = !DIEnumerator(name: "OP_SEMOP", value: 336)
!374 = !DIEnumerator(name: "OP_SEMGET", value: 337)
!375 = !DIEnumerator(name: "OP_SEMCTL", value: 338)
!376 = !DIEnumerator(name: "OP_REQUIRE", value: 339)
!377 = !DIEnumerator(name: "OP_DOFILE", value: 340)
!378 = !DIEnumerator(name: "OP_HINTSEVAL", value: 341)
!379 = !DIEnumerator(name: "OP_ENTEREVAL", value: 342)
!380 = !DIEnumerator(name: "OP_LEAVEEVAL", value: 343)
!381 = !DIEnumerator(name: "OP_ENTERTRY", value: 344)
!382 = !DIEnumerator(name: "OP_LEAVETRY", value: 345)
!383 = !DIEnumerator(name: "OP_GHBYNAME", value: 346)
!384 = !DIEnumerator(name: "OP_GHBYADDR", value: 347)
!385 = !DIEnumerator(name: "OP_GHOSTENT", value: 348)
!386 = !DIEnumerator(name: "OP_GNBYNAME", value: 349)
!387 = !DIEnumerator(name: "OP_GNBYADDR", value: 350)
!388 = !DIEnumerator(name: "OP_GNETENT", value: 351)
!389 = !DIEnumerator(name: "OP_GPBYNAME", value: 352)
!390 = !DIEnumerator(name: "OP_GPBYNUMBER", value: 353)
!391 = !DIEnumerator(name: "OP_GPROTOENT", value: 354)
!392 = !DIEnumerator(name: "OP_GSBYNAME", value: 355)
!393 = !DIEnumerator(name: "OP_GSBYPORT", value: 356)
!394 = !DIEnumerator(name: "OP_GSERVENT", value: 357)
!395 = !DIEnumerator(name: "OP_SHOSTENT", value: 358)
!396 = !DIEnumerator(name: "OP_SNETENT", value: 359)
!397 = !DIEnumerator(name: "OP_SPROTOENT", value: 360)
!398 = !DIEnumerator(name: "OP_SSERVENT", value: 361)
!399 = !DIEnumerator(name: "OP_EHOSTENT", value: 362)
!400 = !DIEnumerator(name: "OP_ENETENT", value: 363)
!401 = !DIEnumerator(name: "OP_EPROTOENT", value: 364)
!402 = !DIEnumerator(name: "OP_ESERVENT", value: 365)
!403 = !DIEnumerator(name: "OP_GPWNAM", value: 366)
!404 = !DIEnumerator(name: "OP_GPWUID", value: 367)
!405 = !DIEnumerator(name: "OP_GPWENT", value: 368)
!406 = !DIEnumerator(name: "OP_SPWENT", value: 369)
!407 = !DIEnumerator(name: "OP_EPWENT", value: 370)
!408 = !DIEnumerator(name: "OP_GGRNAM", value: 371)
!409 = !DIEnumerator(name: "OP_GGRGID", value: 372)
!410 = !DIEnumerator(name: "OP_GGRENT", value: 373)
!411 = !DIEnumerator(name: "OP_SGRENT", value: 374)
!412 = !DIEnumerator(name: "OP_EGRENT", value: 375)
!413 = !DIEnumerator(name: "OP_GETLOGIN", value: 376)
!414 = !DIEnumerator(name: "OP_SYSCALL", value: 377)
!415 = !DIEnumerator(name: "OP_LOCK", value: 378)
!416 = !DIEnumerator(name: "OP_ONCE", value: 379)
!417 = !DIEnumerator(name: "OP_CUSTOM", value: 380)
!418 = !DIEnumerator(name: "OP_REACH", value: 381)
!419 = !DIEnumerator(name: "OP_RKEYS", value: 382)
!420 = !DIEnumerator(name: "OP_RVALUES", value: 383)
!421 = !DIEnumerator(name: "OP_COREARGS", value: 384)
!422 = !DIEnumerator(name: "OP_RUNCV", value: 385)
!423 = !DIEnumerator(name: "OP_FC", value: 386)
!424 = !DIEnumerator(name: "OP_PADCV", value: 387)
!425 = !DIEnumerator(name: "OP_INTROCV", value: 388)
!426 = !DIEnumerator(name: "OP_CLONECV", value: 389)
!427 = !DIEnumerator(name: "OP_PADRANGE", value: 390)
!428 = !DIEnumerator(name: "OP_REFASSIGN", value: 391)
!429 = !DIEnumerator(name: "OP_LVREF", value: 392)
!430 = !DIEnumerator(name: "OP_LVREFSLICE", value: 393)
!431 = !DIEnumerator(name: "OP_LVAVREF", value: 394)
!432 = !DIEnumerator(name: "OP_ANONCONST", value: 395)
!433 = !DIEnumerator(name: "OP_max", value: 396)
!434 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !435, line: 124, baseType: !5, size: 32, elements: !436)
!435 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!436 = !{!437, !438, !439}
!437 = !DIEnumerator(name: "padtidy_SUB", value: 0)
!438 = !DIEnumerator(name: "padtidy_SUBCLONE", value: 1)
!439 = !DIEnumerator(name: "padtidy_FORMAT", value: 2)
!440 = !{!441, !446, !546, !1005, !784, !527, !790, !582, !791, !708, !1006, !455, !1012, !703, !1022, !1049, !760, !461, !1050, !532, !738, !1062, !503, !540, !459, !517, !462, !1064, !478, !1106, !641, !636, !1107, !473, !1109, !1028, !1110, !1029, !515, !448, !1127, !1132, !458, !1146, !1148, !1149, !1150, !1169}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !25, line: 2647, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !4, line: 218, size: 192, elements: !444)
!444 = !{!445, !447, !450, !451}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !443, file: !4, line: 219, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !443, file: !4, line: 219, baseType: !448, size: 32, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !449, line: 175, baseType: !5)
!449 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !443, file: !4, line: 219, baseType: !448, size: 32, offset: 96)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !443, file: !4, line: 220, baseType: !452, size: 64, offset: 128)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !4, line: 220, size: 64, elements: !453)
!453 = !{!454, !457, !460, !463, !466, !467, !1001, !1002, !1003, !1004}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !452, file: !4, line: 220, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !452, file: !4, line: 220, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !25, line: 1670, baseType: !459)
!459 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !452, file: !4, line: 220, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !25, line: 1671, baseType: !462)
!462 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !452, file: !4, line: 220, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !25, line: 1877, baseType: !465)
!465 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !452, file: !4, line: 220, baseType: !441, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !452, file: !4, line: 220, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !470, line: 140, size: 1536, elements: !471)
!470 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!471 = !{!472, !862, !863, !864, !869, !957, !958, !959, !960, !961, !962, !963, !979, !980, !981, !982, !983, !984, !992, !993, !994, !995, !996, !997, !998, !999, !1000}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !469, file: !470, line: 141, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !25, line: 2649, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !4, line: 246, size: 192, elements: !476)
!476 = !{!477, !847, !848, !849}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !475, file: !4, line: 247, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !25, line: 2667, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !481, line: 130, size: 256, elements: !482)
!481 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!482 = !{!483, !484, !845, !846}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !480, file: !481, line: 131, baseType: !473, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !480, file: !481, line: 132, baseType: !485, size: 64, offset: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !4, line: 494, size: 64, elements: !486)
!486 = !{!487, !844}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !485, file: !4, line: 495, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !25, line: 2658, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !491, line: 23, size: 384, elements: !492)
!491 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!492 = !{!493, !494, !836, !839, !840, !841, !842, !843}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !490, file: !491, line: 24, baseType: !488, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !490, file: !491, line: 25, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !25, line: 2673, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !491, line: 11, size: 512, elements: !498)
!498 = !{!499, !504, !505, !509, !510, !511, !518, !835}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !497, file: !491, line: 12, baseType: !500, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!503, !441, !488}
!503 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !497, file: !491, line: 13, baseType: !500, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !497, file: !491, line: 14, baseType: !506, size: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!448, !441, !488}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !497, file: !491, line: 15, baseType: !500, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !497, file: !491, line: 16, baseType: !500, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !497, file: !491, line: 17, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!503, !441, !488, !441, !515, !517}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !449, line: 174, baseType: !503)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !497, file: !491, line: 19, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!503, !488, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !25, line: 2677, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !4, line: 2150, size: 320, elements: !525)
!525 = !{!526, !826, !827, !833, !834}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !524, file: !4, line: 2151, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !25, line: 2648, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !4, line: 241, size: 192, elements: !530)
!530 = !{!531, !547, !548, !549}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !529, file: !4, line: 242, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !25, line: 2666, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !535, line: 11, size: 320, elements: !536)
!535 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!536 = !{!537, !538, !539, !544, !545}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !534, file: !535, line: 12, baseType: !473, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !534, file: !535, line: 13, baseType: !485, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !534, file: !535, line: 14, baseType: !540, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !541, line: 108, baseType: !542)
!541 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !543, line: 193, baseType: !459)
!543 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!544 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !534, file: !535, line: 15, baseType: !540, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !534, file: !535, line: 16, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !529, file: !4, line: 242, baseType: !448, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !529, file: !4, line: 242, baseType: !448, size: 32, offset: 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !529, file: !4, line: 243, baseType: !550, size: 64, offset: 128)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !529, file: !4, line: 243, size: 64, elements: !551)
!551 = !{!552, !553, !554, !555, !556, !557, !558, !559, !584, !825}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !550, file: !4, line: 243, baseType: !455, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !550, file: !4, line: 243, baseType: !458, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !550, file: !4, line: 243, baseType: !461, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !550, file: !4, line: 243, baseType: !464, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !550, file: !4, line: 243, baseType: !441, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !550, file: !4, line: 243, baseType: !468, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !550, file: !4, line: 243, baseType: !546, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !550, file: !4, line: 243, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !4, line: 186, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !481, line: 32, size: 192, elements: !564)
!564 = !{!565, !566, !577}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !563, file: !481, line: 36, baseType: !561, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !563, file: !481, line: 37, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !4, line: 187, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !481, line: 45, size: 96, elements: !570)
!570 = !{!571, !572, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !569, file: !481, line: 46, baseType: !448, size: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !569, file: !481, line: 47, baseType: !517, size: 32, offset: 32)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !569, file: !481, line: 48, baseType: !574, size: 8, offset: 64)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 8, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 1)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !563, file: !481, line: 41, baseType: !578, size: 64, offset: 128)
!578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !481, line: 38, size: 64, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !578, file: !481, line: 39, baseType: !441, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !578, file: !481, line: 40, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !583, line: 46, baseType: !462)
!583 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!584 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !550, file: !4, line: 243, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !25, line: 2652, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !588, line: 11, size: 640, elements: !589)
!588 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!589 = !{!590, !591, !702, !816, !817, !818, !819, !820, !821, !822, !823, !824}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !587, file: !588, line: 12, baseType: !441, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !587, file: !588, line: 13, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !4, line: 251, size: 192, elements: !594)
!594 = !{!595, !687, !688, !689}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !593, file: !4, line: 252, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !25, line: 2672, baseType: !598)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !4, line: 603, size: 1088, elements: !599)
!599 = !{!600, !601, !602, !604, !609, !615, !622, !631, !632, !633, !634, !635, !679, !680, !681, !682, !683, !684}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !598, file: !4, line: 604, baseType: !473, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !598, file: !4, line: 604, baseType: !485, size: 64, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !598, file: !4, line: 604, baseType: !603, size: 64, offset: 128)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !25, line: 2615, baseType: !582)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !598, file: !4, line: 604, baseType: !605, size: 64, offset: 192)
!605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !4, line: 604, size: 64, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !605, file: !4, line: 604, baseType: !603, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !605, file: !4, line: 604, baseType: !455, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !598, file: !4, line: 605, baseType: !610, size: 64, offset: 256)
!610 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !4, line: 488, size: 64, elements: !611)
!611 = !{!612, !613, !614}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !610, file: !4, line: 489, baseType: !458, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !610, file: !4, line: 490, baseType: !461, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !610, file: !4, line: 491, baseType: !567, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !598, file: !4, line: 607, baseType: !616, size: 64, offset: 320)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !618, line: 85, baseType: !619)
!618 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !618, line: 83, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !618, line: 83, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !598, file: !4, line: 620, baseType: !623, size: 64, offset: 384)
!623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !598, file: !4, line: 617, size: 64, elements: !624)
!624 = !{!625, !630}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !623, file: !4, line: 618, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !628, line: 127, baseType: !629)
!628 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !628, line: 127, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !623, file: !4, line: 619, baseType: !446, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !598, file: !4, line: 622, baseType: !458, size: 64, offset: 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !598, file: !4, line: 623, baseType: !458, size: 64, offset: 512)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !598, file: !4, line: 624, baseType: !458, size: 64, offset: 576)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !598, file: !4, line: 625, baseType: !455, size: 64, offset: 640)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !598, file: !4, line: 626, baseType: !636, size: 64, offset: 704)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !25, line: 2653, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !4, line: 231, size: 192, elements: !639)
!639 = !{!640, !664, !665, !666}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !638, file: !4, line: 232, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !25, line: 2668, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !4, line: 561, size: 384, elements: !644)
!644 = !{!645, !646, !647, !648, !653, !654}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !643, file: !4, line: 562, baseType: !473, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !643, file: !4, line: 562, baseType: !485, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !643, file: !4, line: 562, baseType: !603, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !643, file: !4, line: 562, baseType: !649, size: 64, offset: 192)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !4, line: 562, size: 64, elements: !650)
!650 = !{!651, !652}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !649, file: !4, line: 562, baseType: !603, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !649, file: !4, line: 562, baseType: !455, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !643, file: !4, line: 563, baseType: !610, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !643, file: !4, line: 564, baseType: !655, size: 64, offset: 320)
!655 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !4, line: 479, size: 64, elements: !656)
!656 = !{!657, !658, !659}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !655, file: !4, line: 480, baseType: !464, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !655, file: !4, line: 481, baseType: !473, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !655, file: !4, line: 485, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !655, file: !4, line: 482, size: 64, elements: !661)
!661 = !{!662, !663}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !660, file: !4, line: 483, baseType: !448, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !660, file: !4, line: 484, baseType: !448, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !638, file: !4, line: 232, baseType: !448, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !638, file: !4, line: 232, baseType: !448, size: 32, offset: 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !638, file: !4, line: 233, baseType: !667, size: 64, offset: 128)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !4, line: 233, size: 64, elements: !668)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !667, file: !4, line: 233, baseType: !455, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !667, file: !4, line: 233, baseType: !458, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !667, file: !4, line: 233, baseType: !461, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !667, file: !4, line: 233, baseType: !464, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !667, file: !4, line: 233, baseType: !441, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !667, file: !4, line: 233, baseType: !468, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !667, file: !4, line: 233, baseType: !546, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !667, file: !4, line: 233, baseType: !560, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !667, file: !4, line: 233, baseType: !585, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !667, file: !4, line: 233, baseType: !616, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !598, file: !4, line: 627, baseType: !455, size: 64, offset: 768)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !598, file: !4, line: 628, baseType: !636, size: 64, offset: 832)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !598, file: !4, line: 629, baseType: !455, size: 64, offset: 896)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !598, file: !4, line: 630, baseType: !636, size: 64, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !598, file: !4, line: 631, baseType: !456, size: 8, offset: 1024)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !598, file: !4, line: 632, baseType: !685, size: 8, offset: 1032)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !449, line: 171, baseType: !686)
!686 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !593, file: !4, line: 252, baseType: !448, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !593, file: !4, line: 252, baseType: !448, size: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !593, file: !4, line: 253, baseType: !690, size: 64, offset: 128)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !4, line: 253, size: 64, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !690, file: !4, line: 253, baseType: !455, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !690, file: !4, line: 253, baseType: !458, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !690, file: !4, line: 253, baseType: !461, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !690, file: !4, line: 253, baseType: !464, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !690, file: !4, line: 253, baseType: !441, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !690, file: !4, line: 253, baseType: !468, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !690, file: !4, line: 253, baseType: !546, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !690, file: !4, line: 253, baseType: !560, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !690, file: !4, line: 253, baseType: !585, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !690, file: !4, line: 253, baseType: !616, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !587, file: !588, line: 14, baseType: !703, size: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !25, line: 2650, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !4, line: 236, size: 192, elements: !706)
!706 = !{!707, !801, !802, !803}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !705, file: !4, line: 237, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !25, line: 2669, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !711, line: 13, size: 832, elements: !712)
!711 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!712 = !{!713, !714, !715, !716, !721, !722, !766, !774, !779, !780, !796, !797, !798, !800}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !710, file: !711, line: 14, baseType: !473, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !710, file: !711, line: 14, baseType: !485, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !710, file: !711, line: 14, baseType: !603, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !710, file: !711, line: 14, baseType: !717, size: 64, offset: 192)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !711, line: 14, size: 64, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !717, file: !711, line: 14, baseType: !603, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !717, file: !711, line: 14, baseType: !455, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !710, file: !711, line: 15, baseType: !473, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !710, file: !711, line: 15, baseType: !723, size: 64, offset: 320)
!723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !711, line: 15, size: 64, elements: !724)
!724 = !{!725, !749}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !723, file: !711, line: 15, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !25, line: 2617, baseType: !728)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !729, line: 202, size: 320, elements: !730)
!729 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!730 = !{!731, !732, !733, !737, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !728, file: !729, line: 203, baseType: !726, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !728, file: !729, line: 203, baseType: !726, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !728, file: !729, line: 203, baseType: !734, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!726}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !728, file: !729, line: 203, baseType: !738, size: 64, offset: 192)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !435, line: 25, baseType: !462)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !728, file: !729, line: 203, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !728, file: !729, line: 203, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !728, file: !729, line: 203, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !728, file: !729, line: 203, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !728, file: !729, line: 203, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !728, file: !729, line: 203, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !728, file: !729, line: 203, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !728, file: !729, line: 203, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !728, file: !729, line: 203, baseType: !685, size: 8, offset: 272)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !728, file: !729, line: 203, baseType: !685, size: 8, offset: 280)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !723, file: !711, line: 15, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !25, line: 2674, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !25, line: 3691, size: 64, elements: !752)
!752 = !{!753, !754, !755, !756, !757, !758, !759, !761, !765}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !751, file: !25, line: 3692, baseType: !446, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !751, file: !25, line: 3693, baseType: !517, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !751, file: !25, line: 3694, baseType: !448, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !751, file: !25, line: 3695, baseType: !458, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !751, file: !25, line: 3696, baseType: !461, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !751, file: !25, line: 3697, baseType: !459, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !751, file: !25, line: 3698, baseType: !760, size: 8)
!760 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !751, file: !25, line: 3699, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !446}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !751, file: !25, line: 3700, baseType: !762, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !710, file: !711, line: 15, baseType: !767, size: 64, offset: 384)
!767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !711, line: 15, size: 64, elements: !768)
!768 = !{!769, !770}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !767, file: !711, line: 15, baseType: !726, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !767, file: !711, line: 15, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !703}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !710, file: !711, line: 15, baseType: !775, size: 64, offset: 448)
!775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !711, line: 15, size: 64, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !775, file: !711, line: 15, baseType: !636, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !775, file: !711, line: 15, baseType: !567, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !710, file: !711, line: 15, baseType: !455, size: 64, offset: 512)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !710, file: !711, line: 15, baseType: !781, size: 64, offset: 576)
!781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !711, line: 15, size: 64, elements: !782)
!782 = !{!783, !795}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !781, file: !711, line: 15, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !25, line: 2681, baseType: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !435, line: 34, size: 192, elements: !787)
!787 = !{!788, !789, !793, !794}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !786, file: !435, line: 35, baseType: !540, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !786, file: !435, line: 36, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !25, line: 2682, baseType: !528)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !786, file: !435, line: 37, baseType: !448, size: 32, offset: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !786, file: !435, line: 38, baseType: !448, size: 32, offset: 160)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !781, file: !711, line: 15, baseType: !446, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !710, file: !711, line: 15, baseType: !703, size: 64, offset: 640)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !710, file: !711, line: 15, baseType: !448, size: 32, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !710, file: !711, line: 15, baseType: !799, size: 32, offset: 736)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !4, line: 567, baseType: !448)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !710, file: !711, line: 15, baseType: !517, size: 32, offset: 768)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !705, file: !4, line: 237, baseType: !448, size: 32, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !705, file: !4, line: 237, baseType: !448, size: 32, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !705, file: !4, line: 238, baseType: !804, size: 64, offset: 128)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !4, line: 238, size: 64, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !804, file: !4, line: 238, baseType: !455, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !804, file: !4, line: 238, baseType: !458, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !804, file: !4, line: 238, baseType: !461, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !804, file: !4, line: 238, baseType: !464, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !804, file: !4, line: 238, baseType: !441, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !804, file: !4, line: 238, baseType: !468, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !804, file: !4, line: 238, baseType: !546, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !804, file: !4, line: 238, baseType: !560, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !804, file: !4, line: 238, baseType: !585, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !804, file: !4, line: 238, baseType: !616, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !587, file: !588, line: 15, baseType: !448, size: 32, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !587, file: !588, line: 16, baseType: !448, size: 32, offset: 224)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !587, file: !588, line: 17, baseType: !473, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !587, file: !588, line: 18, baseType: !527, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !587, file: !588, line: 19, baseType: !703, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !587, file: !588, line: 20, baseType: !636, size: 64, offset: 448)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !587, file: !588, line: 21, baseType: !5, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !587, file: !588, line: 22, baseType: !5, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !587, file: !588, line: 23, baseType: !567, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !550, file: !4, line: 243, baseType: !616, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !4, line: 2152, baseType: !461, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !524, file: !4, line: 2153, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !25, line: 2639, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !25, line: 5434, size: 8, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !830, file: !25, line: 5435, baseType: !456, size: 8)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !524, file: !4, line: 2154, baseType: !828, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !524, file: !4, line: 2155, baseType: !527, size: 64, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !497, file: !491, line: 20, baseType: !500, size: 64, offset: 448)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !490, file: !491, line: 26, baseType: !837, size: 16, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !449, line: 173, baseType: !838)
!838 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !490, file: !491, line: 27, baseType: !456, size: 8, offset: 144)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !490, file: !491, line: 28, baseType: !685, size: 8, offset: 152)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !490, file: !491, line: 29, baseType: !540, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !490, file: !491, line: 30, baseType: !441, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !490, file: !491, line: 31, baseType: !455, size: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !485, file: !4, line: 496, baseType: !603, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !480, file: !481, line: 133, baseType: !603, size: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !480, file: !481, line: 134, baseType: !603, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !475, file: !4, line: 247, baseType: !448, size: 32, offset: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !475, file: !4, line: 247, baseType: !448, size: 32, offset: 96)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !475, file: !4, line: 248, baseType: !850, size: 64, offset: 128)
!850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !475, file: !4, line: 248, size: 64, elements: !851)
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !860, !861}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !850, file: !4, line: 248, baseType: !455, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !850, file: !4, line: 248, baseType: !458, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !850, file: !4, line: 248, baseType: !461, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !850, file: !4, line: 248, baseType: !464, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !850, file: !4, line: 248, baseType: !441, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !850, file: !4, line: 248, baseType: !468, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !850, file: !4, line: 248, baseType: !546, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !850, file: !4, line: 248, baseType: !560, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !850, file: !4, line: 248, baseType: !585, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !850, file: !4, line: 248, baseType: !616, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !469, file: !470, line: 141, baseType: !485, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !469, file: !470, line: 141, baseType: !603, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !469, file: !470, line: 141, baseType: !865, size: 64, offset: 192)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !469, file: !470, line: 141, size: 64, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !865, file: !470, line: 141, baseType: !603, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !865, file: !470, line: 141, baseType: !455, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !469, file: !470, line: 142, baseType: !870, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !872)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !470, line: 157, size: 768, elements: !873)
!873 = !{!874, !899, !904, !918, !922, !926, !931, !938, !942, !946, !950, !951}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !872, file: !470, line: 158, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!878, !898, !448}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !25, line: 2651, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !4, line: 256, size: 192, elements: !881)
!881 = !{!882, !883, !884, !885}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !880, file: !4, line: 257, baseType: !468, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !880, file: !4, line: 257, baseType: !448, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !880, file: !4, line: 257, baseType: !448, size: 32, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !880, file: !4, line: 258, baseType: !886, size: 64, offset: 128)
!886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !4, line: 258, size: 64, elements: !887)
!887 = !{!888, !889, !890, !891, !892, !893, !894, !895, !896, !897}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !886, file: !4, line: 258, baseType: !455, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !886, file: !4, line: 258, baseType: !458, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !886, file: !4, line: 258, baseType: !461, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !886, file: !4, line: 258, baseType: !464, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !886, file: !4, line: 258, baseType: !441, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !886, file: !4, line: 258, baseType: !468, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !886, file: !4, line: 258, baseType: !546, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !886, file: !4, line: 258, baseType: !560, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !886, file: !4, line: 258, baseType: !585, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !886, file: !4, line: 258, baseType: !616, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !872, file: !470, line: 159, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!517, !903, !455, !455, !455, !540, !441, !446, !448}
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !872, file: !470, line: 162, baseType: !905, size: 64, offset: 128)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!455, !903, !441, !908, !455, !455, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !470, line: 152, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !470, line: 148, size: 128, elements: !913)
!913 = !{!914, !916}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !912, file: !470, line: 150, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !912, file: !470, line: 151, baseType: !917, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !872, file: !470, line: 170, baseType: !919, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!441, !903}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !872, file: !470, line: 171, baseType: !923, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{null, !903}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !872, file: !470, line: 172, baseType: !927, size: 64, offset: 320)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !903, !930, !898}
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !872, file: !470, line: 174, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{null, !903, !930, !935}
!935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !936)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !442)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !872, file: !470, line: 176, baseType: !939, size: 64, offset: 448)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!517, !903, !935, !930}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !872, file: !470, line: 178, baseType: !943, size: 64, offset: 512)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!441, !903, !898, !898, !909}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !872, file: !470, line: 180, baseType: !947, size: 64, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!441, !903, !935, !909}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !872, file: !470, line: 182, baseType: !919, size: 64, offset: 640)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !872, file: !470, line: 186, baseType: !952, size: 64, offset: 704)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!878, !955, !503, !726, !870, !878, !956, !448, !448}
!955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !469, file: !470, line: 142, baseType: !878, size: 64, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !469, file: !470, line: 142, baseType: !473, size: 64, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !469, file: !470, line: 142, baseType: !448, size: 32, offset: 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !469, file: !470, line: 142, baseType: !540, size: 64, offset: 512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !469, file: !470, line: 142, baseType: !540, size: 64, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !469, file: !470, line: 142, baseType: !603, size: 64, offset: 640)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !469, file: !470, line: 142, baseType: !964, size: 64, offset: 704)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !470, line: 45, size: 1024, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !965, file: !470, line: 46, baseType: !685, size: 8)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !965, file: !470, line: 47, baseType: !969, size: 960, offset: 64)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, size: 960, elements: !977)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !470, line: 38, size: 320, elements: !971)
!971 = !{!972, !973, !974, !975, !976}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !970, file: !470, line: 39, baseType: !540, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !970, file: !470, line: 40, baseType: !540, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !970, file: !470, line: 41, baseType: !441, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !970, file: !470, line: 42, baseType: !441, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !970, file: !470, line: 43, baseType: !540, size: 64, offset: 256)
!977 = !{!978}
!978 = !DISubrange(count: 3)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !469, file: !470, line: 142, baseType: !448, size: 32, offset: 768)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !469, file: !470, line: 142, baseType: !448, size: 32, offset: 800)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !469, file: !470, line: 142, baseType: !446, size: 64, offset: 832)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !469, file: !470, line: 142, baseType: !448, size: 32, offset: 896)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !469, file: !470, line: 142, baseType: !448, size: 32, offset: 928)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !469, file: !470, line: 142, baseType: !985, size: 64, offset: 960)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !470, line: 68, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !470, line: 58, size: 192, elements: !988)
!988 = !{!989, !990, !991}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !987, file: !470, line: 59, baseType: !540, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !987, file: !470, line: 60, baseType: !540, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !987, file: !470, line: 67, baseType: !540, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !469, file: !470, line: 142, baseType: !455, size: 64, offset: 1024)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !469, file: !470, line: 142, baseType: !441, size: 64, offset: 1088)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !469, file: !470, line: 142, baseType: !540, size: 64, offset: 1152)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !469, file: !470, line: 142, baseType: !540, size: 64, offset: 1216)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !469, file: !470, line: 142, baseType: !540, size: 64, offset: 1280)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !469, file: !470, line: 142, baseType: !540, size: 64, offset: 1344)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !469, file: !470, line: 142, baseType: !5, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !469, file: !470, line: 142, baseType: !5, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !469, file: !470, line: 142, baseType: !703, size: 64, offset: 1472)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !452, file: !4, line: 220, baseType: !546, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !452, file: !4, line: 220, baseType: !560, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !452, file: !4, line: 220, baseType: !585, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !452, file: !4, line: 220, baseType: !616, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "OPSLOT", file: !25, line: 2633, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opslot", file: !729, line: 665, size: 448, elements: !1009)
!1009 = !{!1010, !1011, !1021}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "opslot_next", scope: !1008, file: !729, line: 667, baseType: !1006, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "opslot_slab", scope: !1008, file: !729, line: 668, baseType: !1012, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "OPSLAB", file: !25, line: 2632, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opslab", file: !729, line: 672, size: 704, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "opslab_first", scope: !1014, file: !729, line: 673, baseType: !1006, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "opslab_next", scope: !1014, file: !729, line: 674, baseType: !1012, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "opslab_freed", scope: !1014, file: !729, line: 675, baseType: !726, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "opslab_refcnt", scope: !1014, file: !729, line: 676, baseType: !582, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "opslab_slots", scope: !1014, file: !729, line: 681, baseType: !1007, size: 448, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "opslot_op", scope: !1008, file: !729, line: 669, baseType: !727, size: 320, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADNAMELIST", file: !25, line: 2683, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padnamelist", file: !435, line: 41, size: 320, elements: !1025)
!1025 = !{!1026, !1027, !1046, !1047, !1048}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_fill", scope: !1024, file: !435, line: 42, baseType: !540, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_alloc", scope: !1024, file: !435, line: 43, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADNAME", file: !25, line: 2684, baseType: !1031)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padname", file: !435, line: 74, size: 384, elements: !1032)
!1032 = !{!1033, !1034, !1035, !1040, !1041, !1042, !1043, !1044, !1045}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_pv", scope: !1031, file: !435, line: 75, baseType: !455, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_ourstash", scope: !1031, file: !435, line: 75, baseType: !473, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_type_u", scope: !1031, file: !435, line: 75, baseType: !1036, size: 64, offset: 128)
!1036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !435, line: 75, size: 64, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_typestash", scope: !1036, file: !435, line: 75, baseType: !473, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_protocv", scope: !1036, file: !435, line: 75, baseType: !703, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_low", scope: !1031, file: !435, line: 75, baseType: !448, size: 32, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_high", scope: !1031, file: !435, line: 75, baseType: !448, size: 32, offset: 224)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_refcnt", scope: !1031, file: !435, line: 75, baseType: !448, size: 32, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_gen", scope: !1031, file: !435, line: 75, baseType: !503, size: 32, offset: 288)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_len", scope: !1031, file: !435, line: 75, baseType: !685, size: 8, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_flags", scope: !1031, file: !435, line: 75, baseType: !685, size: 8, offset: 328)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_max", scope: !1024, file: !435, line: 44, baseType: !540, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_max_named", scope: !1024, file: !435, line: 45, baseType: !738, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "xpadnl_refcnt", scope: !1024, file: !435, line: 46, baseType: !448, size: 32, offset: 256)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !4, line: 153, baseType: !3)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !25, line: 2659, baseType: !1052)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !4, line: 499, size: 256, elements: !1053)
!1053 = !{!1054, !1055, !1056, !1057}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1052, file: !4, line: 500, baseType: !473, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1052, file: !4, line: 500, baseType: !485, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1052, file: !4, line: 500, baseType: !603, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1052, file: !4, line: 500, baseType: !1058, size: 64, offset: 192)
!1058 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1052, file: !4, line: 500, size: 64, elements: !1059)
!1059 = !{!1060, !1061}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1058, file: !4, line: 500, baseType: !603, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1058, file: !4, line: 500, baseType: !455, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv_aux", file: !481, line: 102, size: 448, elements: !1066)
!1066 = !{!1067, !1073, !1074, !1075, !1076, !1077, !1102, !1103, !1104, !1105}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_u", scope: !1065, file: !481, line: 103, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xhvnameu", file: !481, line: 97, size: 64, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_name", scope: !1068, file: !481, line: 98, baseType: !567, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_names", scope: !1068, file: !481, line: 99, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_backreferences", scope: !1065, file: !481, line: 104, baseType: !527, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_eiter", scope: !1065, file: !481, line: 105, baseType: !561, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_riter", scope: !1065, file: !481, line: 106, baseType: !517, size: 32, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_count", scope: !1065, file: !481, line: 114, baseType: !517, size: 32, offset: 224)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_mro_meta", scope: !1065, file: !481, line: 115, baseType: !1078, size: 64, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_meta", file: !481, line: 72, size: 512, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086, !1099, !1100, !1101}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_all", scope: !1079, file: !481, line: 74, baseType: !473, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_current", scope: !1079, file: !481, line: 78, baseType: !441, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "mro_nextmethod", scope: !1079, file: !481, line: 79, baseType: !473, size: 64, offset: 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "cache_gen", scope: !1079, file: !481, line: 80, baseType: !448, size: 32, offset: 192)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_gen", scope: !1079, file: !481, line: 81, baseType: !448, size: 32, offset: 224)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mro_which", scope: !1079, file: !481, line: 82, baseType: !1087, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_alg", file: !481, line: 64, size: 192, elements: !1090)
!1090 = !{!1091, !1095, !1096, !1097, !1098}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "resolve", scope: !1089, file: !481, line: 65, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{!527, !473, !448}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1089, file: !481, line: 66, baseType: !515, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1089, file: !481, line: 67, baseType: !837, size: 16, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "kflags", scope: !1089, file: !481, line: 68, baseType: !837, size: 16, offset: 144)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1089, file: !481, line: 69, baseType: !448, size: 32, offset: 160)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !1079, file: !481, line: 83, baseType: !473, size: 64, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !1079, file: !481, line: 84, baseType: !473, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_gen", scope: !1079, file: !481, line: 85, baseType: !448, size: 32, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_rand", scope: !1065, file: !481, line: 117, baseType: !448, size: 32, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_last_rand", scope: !1065, file: !481, line: 118, baseType: !448, size: 32, offset: 352)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_fill_lazy", scope: !1065, file: !481, line: 121, baseType: !448, size: 32, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_aux_flags", scope: !1065, file: !481, line: 122, baseType: !448, size: 32, offset: 416)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padname_with_str", file: !435, line: 78, size: 384, elements: !1112)
!1112 = !{!1113, !1114, !1115, !1120, !1121, !1122, !1123, !1124, !1125, !1126}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_pv", scope: !1111, file: !435, line: 80, baseType: !455, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_ourstash", scope: !1111, file: !435, line: 80, baseType: !473, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_type_u", scope: !1111, file: !435, line: 80, baseType: !1116, size: 64, offset: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !435, line: 80, size: 64, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_typestash", scope: !1116, file: !435, line: 80, baseType: !473, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_protocv", scope: !1116, file: !435, line: 80, baseType: !703, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_low", scope: !1111, file: !435, line: 80, baseType: !448, size: 32, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_high", scope: !1111, file: !435, line: 80, baseType: !448, size: 32, offset: 224)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_refcnt", scope: !1111, file: !435, line: 80, baseType: !448, size: 32, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_gen", scope: !1111, file: !435, line: 80, baseType: !503, size: 32, offset: 288)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_len", scope: !1111, file: !435, line: 80, baseType: !685, size: 8, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_flags", scope: !1111, file: !435, line: 80, baseType: !685, size: 8, offset: 328)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_str", scope: !1111, file: !435, line: 84, baseType: !574, size: 8, offset: 336)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shared_he", file: !481, line: 54, size: 320, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "shared_he_he", scope: !1128, file: !481, line: 55, baseType: !563, size: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "shared_he_hek", scope: !1128, file: !481, line: 56, baseType: !569, size: 96, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVMG", file: !25, line: 2663, baseType: !1134)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvmg", file: !4, line: 524, size: 384, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1144, !1145}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1134, file: !4, line: 525, baseType: !473, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1134, file: !4, line: 525, baseType: !485, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1134, file: !4, line: 525, baseType: !603, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1134, file: !4, line: 525, baseType: !1140, size: 64, offset: 192)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1134, file: !4, line: 525, size: 64, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1140, file: !4, line: 525, baseType: !603, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1140, file: !4, line: 525, baseType: !455, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !1134, file: !4, line: 526, baseType: !610, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !1134, file: !4, line: 527, baseType: !655, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "UNOP", file: !25, line: 2619, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unop", file: !729, line: 206, size: 384, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1152, file: !729, line: 207, baseType: !726, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1152, file: !729, line: 207, baseType: !726, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1152, file: !729, line: 207, baseType: !734, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1152, file: !729, line: 207, baseType: !738, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1152, file: !729, line: 207, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1152, file: !729, line: 207, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1152, file: !729, line: 207, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1152, file: !729, line: 207, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1152, file: !729, line: 207, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1152, file: !729, line: 207, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1152, file: !729, line: 207, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1152, file: !729, line: 207, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1152, file: !729, line: 207, baseType: !685, size: 8, offset: 272)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1152, file: !729, line: 207, baseType: !685, size: 8, offset: 280)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "op_first", scope: !1152, file: !729, line: 208, baseType: !726, size: 64, offset: 320)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!1170 = !{i32 7, !"Dwarf Version", i32 5}
!1171 = !{i32 2, !"Debug Info Version", i32 3}
!1172 = !{i32 1, !"wchar_size", i32 4}
!1173 = !{i32 7, !"PIC Level", i32 2}
!1174 = !{i32 7, !"PIE Level", i32 2}
!1175 = !{i32 7, !"uwtable", i32 2}
!1176 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1177 = distinct !DISubprogram(name: "Perl_pad_new", scope: !1178, file: !1178, line: 189, type: !1179, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1181)
!1178 = !DIFile(filename: "apps/500.perlbench_r/src/pad.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "382a44231383b8c31983de563b38c869")
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!784, !503}
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187}
!1182 = !DILocalVariable(name: "flags", arg: 1, scope: !1177, file: !1178, line: 189, type: !503)
!1183 = !DILocalVariable(name: "padlist", scope: !1177, file: !1178, line: 191, type: !784)
!1184 = !DILocalVariable(name: "padname", scope: !1177, file: !1178, line: 192, type: !1022)
!1185 = !DILocalVariable(name: "pad", scope: !1177, file: !1178, line: 193, type: !791)
!1186 = !DILocalVariable(name: "ary", scope: !1177, file: !1178, line: 194, type: !790)
!1187 = !DILocalVariable(name: "a0", scope: !1188, file: !1178, line: 235, type: !1190)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !1178, line: 229, column: 31)
!1189 = distinct !DILexicalBlock(scope: !1177, file: !1178, line: 229, column: 9)
!1190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!1191 = !DILocation(line: 0, scope: !1177)
!1192 = !DILocation(line: 206, column: 15, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1177, file: !1178, line: 206, column: 9)
!1194 = !DILocation(line: 206, column: 9, scope: !1177)
!1195 = !DILocation(line: 229, column: 15, scope: !1189)
!1196 = !DILocation(line: 207, column: 2, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !1178, line: 206, column: 30)
!1198 = !DILocation(line: 208, column: 15, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1197, file: !1178, line: 208, column: 6)
!1200 = !DILocation(line: 208, column: 6, scope: !1197)
!1201 = !DILocation(line: 209, column: 6, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !1178, line: 208, column: 32)
!1203 = !DILocation(line: 210, column: 6, scope: !1202)
!1204 = !DILocation(line: 211, column: 6, scope: !1202)
!1205 = !DILocation(line: 212, column: 6, scope: !1202)
!1206 = !DILocation(line: 213, column: 6, scope: !1202)
!1207 = !DILocation(line: 214, column: 6, scope: !1202)
!1208 = !DILocation(line: 215, column: 6, scope: !1202)
!1209 = !DILocation(line: 216, column: 16, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1202, file: !1178, line: 216, column: 10)
!1211 = !DILocation(line: 216, column: 10, scope: !1202)
!1212 = !DILocation(line: 217, column: 3, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1210, file: !1178, line: 216, column: 34)
!1214 = !DILocation(line: 218, column: 6, scope: !1213)
!1215 = !DILocation(line: 226, column: 5, scope: !1177)
!1216 = !DILocation(line: 227, column: 12, scope: !1177)
!1217 = !DILocation(line: 229, column: 9, scope: !1177)
!1218 = !DILocation(line: 235, column: 25, scope: !1188)
!1219 = !DILocation(line: 0, scope: !1188)
!1220 = !DILocation(line: 236, column: 2, scope: !1188)
!1221 = !DILocation(line: 237, column: 2, scope: !1188)
!1222 = !DILocation(line: 239, column: 2, scope: !1188)
!1223 = !DILocation(line: 239, column: 46, scope: !1188)
!1224 = !DILocation(line: 240, column: 5, scope: !1188)
!1225 = !DILocation(line: 242, column: 43, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1189, file: !1178, line: 241, column: 10)
!1227 = !DILocation(line: 242, column: 11, scope: !1226)
!1228 = !DILocation(line: 242, column: 20, scope: !1226)
!1229 = !DILocation(line: 243, column: 2, scope: !1226)
!1230 = !DILocalVariable(name: "max", arg: 1, scope: !1231, file: !1178, line: 2661, type: !582)
!1231 = distinct !DISubprogram(name: "Perl_newPADNAMELIST", scope: !1178, file: !1178, line: 2661, type: !1232, scopeLine: 2662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1234)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!1022, !582}
!1234 = !{!1230, !1235}
!1235 = !DILocalVariable(name: "pnl", scope: !1231, file: !1178, line: 2663, type: !1022)
!1236 = !DILocation(line: 0, scope: !1231, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 244, column: 12, scope: !1226)
!1238 = !DILocation(line: 2664, column: 5, scope: !1231, inlinedAt: !1237)
!1239 = !DILocation(line: 2665, column: 5, scope: !1231, inlinedAt: !1237)
!1240 = !DILocation(line: 2667, column: 5, scope: !1231, inlinedAt: !1237)
!1241 = !DILocation(line: 2667, column: 28, scope: !1231, inlinedAt: !1237)
!1242 = !DILocation(line: 2669, column: 10, scope: !1231, inlinedAt: !1237)
!1243 = !DILocalVariable(name: "pnl", arg: 1, scope: !1244, file: !1178, line: 2683, type: !1022)
!1244 = distinct !DISubprogram(name: "Perl_padnamelist_store", scope: !1178, file: !1178, line: 2683, type: !1245, scopeLine: 2684, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1247)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!1028, !1022, !540, !1029}
!1247 = !{!1243, !1248, !1249, !1250}
!1248 = !DILocalVariable(name: "key", arg: 2, scope: !1244, file: !1178, line: 2683, type: !540)
!1249 = !DILocalVariable(name: "val", arg: 3, scope: !1244, file: !1178, line: 2683, type: !1029)
!1250 = !DILocalVariable(name: "ary", scope: !1244, file: !1178, line: 2685, type: !1028)
!1251 = !DILocation(line: 0, scope: !1244, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 245, column: 2, scope: !1226)
!1253 = !DILocation(line: 2669, column: 21, scope: !1231, inlinedAt: !1237)
!1254 = !DILocation(line: 2696, column: 2, scope: !1255, inlinedAt: !1252)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !1178, line: 2695, column: 36)
!1256 = distinct !DILexicalBlock(scope: !1244, file: !1178, line: 2695, column: 9)
!1257 = !DILocation(line: 2698, column: 22, scope: !1255, inlinedAt: !1252)
!1258 = !DILocation(line: 2700, column: 11, scope: !1244, inlinedAt: !1252)
!1259 = !DILocation(line: 2701, column: 9, scope: !1260, inlinedAt: !1252)
!1260 = distinct !DILexicalBlock(scope: !1244, file: !1178, line: 2701, column: 9)
!1261 = !DILocation(line: 2701, column: 9, scope: !1244, inlinedAt: !1252)
!1262 = !DILocation(line: 2702, column: 2, scope: !1260, inlinedAt: !1252)
!1263 = !DILocation(line: 2703, column: 14, scope: !1244, inlinedAt: !1252)
!1264 = !DILocation(line: 0, scope: !1189)
!1265 = !DILocation(line: 252, column: 5, scope: !1177)
!1266 = !DILocation(line: 253, column: 25, scope: !1177)
!1267 = !DILocation(line: 254, column: 5, scope: !1177)
!1268 = !DILocation(line: 254, column: 27, scope: !1177)
!1269 = !DILocation(line: 255, column: 12, scope: !1177)
!1270 = !DILocation(line: 256, column: 5, scope: !1177)
!1271 = !DILocation(line: 256, column: 12, scope: !1177)
!1272 = !DILocation(line: 260, column: 17, scope: !1177)
!1273 = !DILocation(line: 261, column: 18, scope: !1177)
!1274 = !DILocation(line: 261, column: 16, scope: !1177)
!1275 = !DILocation(line: 263, column: 9, scope: !1177)
!1276 = !DILocation(line: 264, column: 23, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !1178, line: 263, column: 35)
!1278 = distinct !DILexicalBlock(scope: !1177, file: !1178, line: 263, column: 9)
!1279 = !DILocation(line: 265, column: 23, scope: !1277)
!1280 = !DILocation(line: 266, column: 23, scope: !1277)
!1281 = !DILocation(line: 267, column: 16, scope: !1277)
!1282 = !DILocation(line: 268, column: 21, scope: !1277)
!1283 = !DILocation(line: 269, column: 22, scope: !1277)
!1284 = !DILocation(line: 270, column: 5, scope: !1277)
!1285 = !DILocation(line: 280, column: 5, scope: !1177)
!1286 = !DISubprogram(name: "Perl_save_pushptr", scope: !1287, file: !1287, line: 3917, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1287 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !503)
!1292 = !{}
!1293 = !DISubprogram(name: "Perl_save_sptr", scope: !1287, file: !1287, line: 3935, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !546}
!1296 = !DISubprogram(name: "Perl_save_I32", scope: !1287, file: !1287, line: 3764, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1005}
!1299 = !DISubprogram(name: "Perl_save_bool", scope: !1287, file: !1287, line: 3805, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !956}
!1302 = !DISubprogram(name: "Perl_safesyscalloc", scope: !1287, file: !1287, line: 3746, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!446, !582, !582}
!1305 = !DISubprogram(name: "Perl_newSV_type", scope: !1287, file: !1287, line: 3073, type: !1306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!441, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1309 = !DISubprogram(name: "Perl_av_store", scope: !1287, file: !1287, line: 276, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!546, !527, !540, !441}
!1312 = !DILocation(line: 0, scope: !1231)
!1313 = !DILocation(line: 2664, column: 5, scope: !1231)
!1314 = !DILocation(line: 2665, column: 5, scope: !1231)
!1315 = !DILocation(line: 2666, column: 25, scope: !1231)
!1316 = !DILocation(line: 2667, column: 5, scope: !1231)
!1317 = !DILocation(line: 2667, column: 28, scope: !1231)
!1318 = !DILocation(line: 2668, column: 5, scope: !1231)
!1319 = !DILocation(line: 2668, column: 30, scope: !1231)
!1320 = !DILocation(line: 2669, column: 10, scope: !1231)
!1321 = !DILocation(line: 2669, column: 21, scope: !1231)
!1322 = !DILocation(line: 2670, column: 5, scope: !1231)
!1323 = !DILocation(line: 0, scope: !1244)
!1324 = !DILocation(line: 2691, column: 20, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1244, file: !1178, line: 2691, column: 9)
!1326 = !DILocation(line: 2691, column: 13, scope: !1325)
!1327 = !DILocation(line: 2691, column: 9, scope: !1244)
!1328 = !DILocation(line: 2692, column: 2, scope: !1325)
!1329 = !DILocation(line: 2695, column: 9, scope: !1256)
!1330 = !DILocation(line: 2695, column: 29, scope: !1256)
!1331 = !DILocation(line: 2695, column: 9, scope: !1244)
!1332 = !DILocation(line: 2696, column: 2, scope: !1255)
!1333 = !DILocation(line: 2698, column: 22, scope: !1255)
!1334 = !DILocation(line: 2699, column: 5, scope: !1255)
!1335 = !DILocation(line: 2700, column: 11, scope: !1244)
!1336 = !DILocation(line: 2701, column: 9, scope: !1260)
!1337 = !DILocation(line: 2701, column: 9, scope: !1244)
!1338 = !DILocation(line: 2702, column: 2, scope: !1260)
!1339 = !DILocation(line: 2703, column: 14, scope: !1244)
!1340 = !DILocation(line: 2704, column: 5, scope: !1244)
!1341 = !DISubprogram(name: "Perl_safesysmalloc", scope: !1287, file: !1287, line: 3751, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!446, !582}
!1344 = distinct !DISubprogram(name: "Perl_cv_undef", scope: !1178, file: !1178, line: 298, type: !772, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1345)
!1345 = !{!1346}
!1346 = !DILocalVariable(name: "cv", arg: 1, scope: !1344, file: !1178, line: 298, type: !703)
!1347 = !DILocation(line: 0, scope: !1344)
!1348 = !DILocation(line: 301, column: 5, scope: !1344)
!1349 = !DILocation(line: 302, column: 1, scope: !1344)
!1350 = distinct !DISubprogram(name: "Perl_cv_undef_flags", scope: !1178, file: !1178, line: 305, type: !1351, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !703, !448}
!1353 = !{!1354, !1355, !1356, !1357, !1360, !1363, !1366, !1370, !1371, !1373, !1375, !1377, !1378, !1383, !1386, !1387, !1389, !1391}
!1354 = !DILocalVariable(name: "cv", arg: 1, scope: !1350, file: !1178, line: 305, type: !703)
!1355 = !DILocalVariable(name: "flags", arg: 2, scope: !1350, file: !1178, line: 305, type: !448)
!1356 = !DILocalVariable(name: "cvbody", scope: !1350, file: !1178, line: 307, type: !704)
!1357 = !DILocalVariable(name: "file", scope: !1358, file: !1178, line: 320, type: !455)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !1178, line: 319, column: 26)
!1359 = distinct !DILexicalBlock(scope: !1350, file: !1178, line: 319, column: 9)
!1360 = !DILocalVariable(name: "ix", scope: !1361, file: !1178, line: 380, type: !517)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !1178, line: 379, column: 51)
!1362 = distinct !DILexicalBlock(scope: !1350, file: !1178, line: 379, column: 9)
!1363 = !DILocalVariable(name: "padlist", scope: !1361, file: !1178, line: 381, type: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!1366 = !DILocalVariable(name: "outercv", scope: !1367, file: !1178, line: 401, type: !1369)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !1178, line: 400, column: 39)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !1178, line: 400, column: 6)
!1369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!1370 = !DILocalVariable(name: "seq", scope: !1367, file: !1178, line: 402, type: !909)
!1371 = !DILocalVariable(name: "comppad_name", scope: !1367, file: !1178, line: 403, type: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1373 = !DILocalVariable(name: "namepad", scope: !1367, file: !1178, line: 404, type: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1375 = !DILocalVariable(name: "comppad", scope: !1367, file: !1178, line: 405, type: !1376)
!1376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!1377 = !DILocalVariable(name: "curpad", scope: !1367, file: !1178, line: 406, type: !955)
!1378 = !DILocalVariable(name: "name", scope: !1379, file: !1178, line: 408, type: !1382)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !1178, line: 407, column: 60)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !1178, line: 407, column: 6)
!1381 = distinct !DILexicalBlock(scope: !1367, file: !1178, line: 407, column: 6)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!1383 = !DILocalVariable(name: "innercv", scope: !1384, file: !1178, line: 411, type: !1369)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !1178, line: 410, column: 7)
!1385 = distinct !DILexicalBlock(scope: !1379, file: !1178, line: 409, column: 7)
!1386 = !DILocalVariable(name: "inner_rc", scope: !1384, file: !1178, line: 412, type: !448)
!1387 = !DILocalVariable(name: "sv", scope: !1388, file: !1178, line: 444, type: !1376)
!1388 = distinct !DILexicalBlock(scope: !1361, file: !1178, line: 443, column: 17)
!1389 = !DILocalVariable(name: "names", scope: !1390, file: !1178, line: 454, type: !1372)
!1390 = distinct !DILexicalBlock(scope: !1361, file: !1178, line: 453, column: 2)
!1391 = !DILocalVariable(name: "outside", scope: !1392, file: !1178, line: 470, type: !703)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !1178, line: 469, column: 24)
!1393 = distinct !DILexicalBlock(scope: !1350, file: !1178, line: 469, column: 9)
!1394 = !DILocation(line: 307, column: 8, scope: !1350)
!1395 = !DILocation(line: 0, scope: !1350)
!1396 = !DILocation(line: 310, column: 22, scope: !1350)
!1397 = !DILocation(line: 319, column: 9, scope: !1359)
!1398 = !DILocation(line: 319, column: 9, scope: !1350)
!1399 = !DILocation(line: 0, scope: !1358)
!1400 = !DILocation(line: 321, column: 18, scope: !1358)
!1401 = !DILocation(line: 322, column: 5, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1358, file: !1178, line: 322, column: 5)
!1403 = !DILocation(line: 322, column: 5, scope: !1358)
!1404 = !DILocation(line: 323, column: 6, scope: !1402)
!1405 = !DILocation(line: 328, column: 10, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1350, file: !1178, line: 328, column: 9)
!1407 = !DILocation(line: 0, scope: !1406)
!1408 = !DILocation(line: 328, column: 9, scope: !1350)
!1409 = !DILocation(line: 329, column: 12, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !1178, line: 329, column: 12)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !1178, line: 328, column: 29)
!1412 = !DILocation(line: 329, column: 12, scope: !1411)
!1413 = !DILocation(line: 331, column: 17, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !1178, line: 331, column: 17)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !1178, line: 329, column: 29)
!1416 = !DILocation(line: 331, column: 17, scope: !1415)
!1417 = !DILocation(line: 333, column: 17, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !1178, line: 331, column: 41)
!1419 = !DILocation(line: 334, column: 13, scope: !1418)
!1420 = !DILocation(line: 335, column: 13, scope: !1415)
!1421 = !DILocation(line: 337, column: 13, scope: !1415)
!1422 = !DILocation(line: 339, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1415, file: !1178, line: 339, column: 17)
!1424 = !DILocation(line: 339, column: 17, scope: !1415)
!1425 = !DILocation(line: 339, column: 37, scope: !1423)
!1426 = !DILocation(line: 340, column: 13, scope: !1415)
!1427 = !DILocation(line: 342, column: 13, scope: !1415)
!1428 = !DILocation(line: 342, column: 30, scope: !1415)
!1429 = !DILocation(line: 343, column: 13, scope: !1415)
!1430 = !DILocation(line: 344, column: 9, scope: !1415)
!1431 = !DILocation(line: 345, column: 11, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1410, file: !1178, line: 345, column: 11)
!1433 = !DILocation(line: 345, column: 11, scope: !1410)
!1434 = !DILocation(line: 346, column: 17, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !1178, line: 346, column: 17)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !1178, line: 345, column: 31)
!1437 = !DILocation(line: 346, column: 17, scope: !1436)
!1438 = !DILocation(line: 347, column: 17, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !1178, line: 346, column: 35)
!1440 = !DILocation(line: 348, column: 17, scope: !1439)
!1441 = !DILocation(line: 351, column: 21, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !1178, line: 351, column: 21)
!1443 = !DILocation(line: 351, column: 21, scope: !1439)
!1444 = !DILocation(line: 352, column: 21, scope: !1442)
!1445 = !DILocation(line: 353, column: 17, scope: !1439)
!1446 = !DILocation(line: 354, column: 34, scope: !1439)
!1447 = !DILocation(line: 356, column: 17, scope: !1439)
!1448 = !DILocation(line: 357, column: 13, scope: !1439)
!1449 = !DILocation(line: 364, column: 18, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1406, file: !1178, line: 363, column: 10)
!1451 = !DILocation(line: 366, column: 5, scope: !1350)
!1452 = !DILocation(line: 367, column: 5, scope: !1350)
!1453 = !DILocation(line: 368, column: 17, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1350, file: !1178, line: 368, column: 9)
!1455 = !DILocation(line: 368, column: 9, scope: !1350)
!1456 = !DILocation(line: 369, column: 6, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !1178, line: 369, column: 6)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !1178, line: 368, column: 40)
!1459 = !DILocation(line: 369, column: 6, scope: !1458)
!1460 = !DILocalVariable(name: "sv", arg: 1, scope: !1461, file: !711, line: 231, type: !703)
!1461 = distinct !DISubprogram(name: "CvNAME_HEK", scope: !711, file: !711, line: 231, type: !1462, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1464)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!567, !703}
!1464 = !{!1460}
!1465 = !DILocation(line: 0, scope: !1461, inlinedAt: !1466)
!1466 = distinct !DILocation(line: 370, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1457, file: !1178, line: 369, column: 24)
!1468 = !DILocation(line: 234, column: 38, scope: !1461, inlinedAt: !1466)
!1469 = !DILocation(line: 234, column: 47, scope: !1461, inlinedAt: !1466)
!1470 = !DILocation(line: 370, column: 6, scope: !1467)
!1471 = !DILocation(line: 371, column: 6, scope: !1467)
!1472 = !DILocation(line: 372, column: 2, scope: !1467)
!1473 = !DILocation(line: 373, column: 7, scope: !1457)
!1474 = !DILocation(line: 379, column: 10, scope: !1362)
!1475 = !DILocation(line: 0, scope: !1362)
!1476 = !DILocation(line: 379, column: 28, scope: !1362)
!1477 = !DILocation(line: 379, column: 31, scope: !1362)
!1478 = !DILocation(line: 379, column: 9, scope: !1350)
!1479 = !DILocation(line: 0, scope: !1361)
!1480 = !DILocation(line: 400, column: 6, scope: !1368)
!1481 = !DILocation(line: 400, column: 15, scope: !1368)
!1482 = !DILocation(line: 400, column: 6, scope: !1361)
!1483 = !DILocation(line: 401, column: 27, scope: !1367)
!1484 = !DILocation(line: 0, scope: !1367)
!1485 = !DILocation(line: 402, column: 22, scope: !1367)
!1486 = !DILocation(line: 403, column: 41, scope: !1367)
!1487 = !DILocation(line: 404, column: 33, scope: !1367)
!1488 = !DILocation(line: 405, column: 28, scope: !1367)
!1489 = !DILocation(line: 406, column: 27, scope: !1367)
!1490 = !DILocation(line: 407, column: 16, scope: !1381)
!1491 = !DILocation(line: 407, column: 49, scope: !1380)
!1492 = !DILocation(line: 407, column: 6, scope: !1381)
!1493 = !DILocation(line: 428, column: 20, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !1178, line: 428, column: 12)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !1178, line: 425, column: 4)
!1496 = distinct !DILexicalBlock(scope: !1384, file: !1178, line: 423, column: 8)
!1497 = !DILocation(line: 408, column: 26, scope: !1379)
!1498 = !DILocation(line: 0, scope: !1379)
!1499 = !DILocation(line: 409, column: 7, scope: !1385)
!1500 = !DILocation(line: 409, column: 12, scope: !1385)
!1501 = !DILocation(line: 409, column: 15, scope: !1385)
!1502 = !DILocation(line: 409, column: 31, scope: !1385)
!1503 = !DILocation(line: 409, column: 34, scope: !1385)
!1504 = !DILocation(line: 409, column: 51, scope: !1385)
!1505 = !DILocation(line: 409, column: 7, scope: !1379)
!1506 = !DILocation(line: 411, column: 25, scope: !1384)
!1507 = !DILocation(line: 0, scope: !1384)
!1508 = !DILocation(line: 412, column: 19, scope: !1384)
!1509 = !DILocation(line: 416, column: 8, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1384, file: !1178, line: 416, column: 8)
!1511 = !DILocation(line: 416, column: 26, scope: !1510)
!1512 = !DILocation(line: 416, column: 8, scope: !1384)
!1513 = !DILocation(line: 417, column: 19, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1510, file: !1178, line: 416, column: 31)
!1515 = !DILocalVariable(name: "sv", arg: 1, scope: !1516, file: !1517, line: 171, type: !441)
!1516 = distinct !DISubprogram(name: "S_SvREFCNT_dec_NN", scope: !1517, file: !1517, line: 171, type: !1518, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1520)
!1517 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !441}
!1520 = !{!1515, !1521}
!1521 = !DILocalVariable(name: "rc", scope: !1516, file: !1517, line: 173, type: !448)
!1522 = !DILocation(line: 0, scope: !1516, inlinedAt: !1523)
!1523 = distinct !DILocation(line: 418, column: 8, scope: !1514)
!1524 = !DILocation(line: 173, column: 14, scope: !1516, inlinedAt: !1523)
!1525 = !DILocation(line: 174, column: 9, scope: !1526, inlinedAt: !1523)
!1526 = distinct !DILexicalBlock(scope: !1516, file: !1517, line: 174, column: 9)
!1527 = !DILocation(line: 174, column: 9, scope: !1516, inlinedAt: !1523)
!1528 = !DILocation(line: 177, column: 2, scope: !1526, inlinedAt: !1523)
!1529 = !DILocation(line: 175, column: 20, scope: !1526, inlinedAt: !1523)
!1530 = !DILocation(line: 175, column: 15, scope: !1526, inlinedAt: !1523)
!1531 = !DILocation(line: 175, column: 2, scope: !1526, inlinedAt: !1523)
!1532 = !DILocation(line: 419, column: 16, scope: !1514)
!1533 = !DILocation(line: 420, column: 4, scope: !1514)
!1534 = !DILocation(line: 423, column: 8, scope: !1496)
!1535 = !DILocation(line: 423, column: 17, scope: !1496)
!1536 = !DILocation(line: 423, column: 20, scope: !1496)
!1537 = !DILocation(line: 423, column: 36, scope: !1496)
!1538 = !DILocation(line: 424, column: 5, scope: !1496)
!1539 = !DILocation(line: 424, column: 9, scope: !1496)
!1540 = !DILocation(line: 424, column: 28, scope: !1496)
!1541 = !DILocation(line: 423, column: 8, scope: !1384)
!1542 = !DILocation(line: 435, column: 24, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1494, file: !1178, line: 434, column: 13)
!1544 = !DILocation(line: 407, column: 56, scope: !1380)
!1545 = distinct !{!1545, !1492, !1546, !1547, !1548}
!1546 = !DILocation(line: 439, column: 6, scope: !1381)
!1547 = !{!"llvm.loop.mustprogress"}
!1548 = !{!"llvm.loop.unroll.disable"}
!1549 = !DILocation(line: 428, column: 23, scope: !1494)
!1550 = !DILocation(line: 428, column: 12, scope: !1495)
!1551 = !DILocation(line: 429, column: 5, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1494, file: !1178, line: 428, column: 42)
!1553 = !DILocation(line: 430, column: 5, scope: !1552)
!1554 = !DILocation(line: 430, column: 24, scope: !1552)
!1555 = !DILocation(line: 431, column: 5, scope: !1552)
!1556 = !DILocation(line: 431, column: 28, scope: !1552)
!1557 = !DILocation(line: 432, column: 5, scope: !1552)
!1558 = !DILocation(line: 433, column: 8, scope: !1552)
!1559 = !DILocation(line: 442, column: 7, scope: !1361)
!1560 = !DILocation(line: 443, column: 12, scope: !1361)
!1561 = !DILocation(line: 443, column: 2, scope: !1361)
!1562 = !DILocation(line: 444, column: 23, scope: !1388)
!1563 = !DILocation(line: 444, column: 47, scope: !1388)
!1564 = !DILocation(line: 0, scope: !1388)
!1565 = !DILocation(line: 445, column: 10, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1388, file: !1178, line: 445, column: 10)
!1567 = !DILocation(line: 445, column: 10, scope: !1388)
!1568 = !DILocation(line: 446, column: 13, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !1178, line: 446, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1566, file: !1178, line: 445, column: 14)
!1571 = !DILocation(line: 446, column: 10, scope: !1569)
!1572 = !DILocation(line: 446, column: 7, scope: !1570)
!1573 = !DILocation(line: 447, column: 18, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1569, file: !1178, line: 446, column: 25)
!1575 = !DILocation(line: 448, column: 17, scope: !1574)
!1576 = !DILocation(line: 449, column: 3, scope: !1574)
!1577 = !DILocation(line: 0, scope: !1516, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 450, column: 3, scope: !1570)
!1579 = !DILocation(line: 173, column: 14, scope: !1516, inlinedAt: !1578)
!1580 = !DILocation(line: 174, column: 9, scope: !1526, inlinedAt: !1578)
!1581 = !DILocation(line: 174, column: 9, scope: !1516, inlinedAt: !1578)
!1582 = !DILocation(line: 175, column: 20, scope: !1526, inlinedAt: !1578)
!1583 = !DILocation(line: 175, column: 15, scope: !1526, inlinedAt: !1578)
!1584 = !DILocation(line: 175, column: 2, scope: !1526, inlinedAt: !1578)
!1585 = !DILocation(line: 177, column: 2, scope: !1526, inlinedAt: !1578)
!1586 = distinct !{!1586, !1561, !1587, !1547, !1548}
!1587 = !DILocation(line: 452, column: 2, scope: !1361)
!1588 = !DILocation(line: 454, column: 34, scope: !1390)
!1589 = !DILocation(line: 0, scope: !1390)
!1590 = !DILocation(line: 455, column: 19, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1390, file: !1178, line: 455, column: 10)
!1592 = !DILocation(line: 455, column: 16, scope: !1591)
!1593 = !DILocation(line: 455, column: 35, scope: !1591)
!1594 = !DILocation(line: 456, column: 19, scope: !1591)
!1595 = !DILocalVariable(name: "pnl", arg: 1, scope: !1596, file: !1178, line: 2725, type: !1022)
!1596 = distinct !DISubprogram(name: "Perl_padnamelist_free", scope: !1178, file: !1178, line: 2725, type: !1597, scopeLine: 2726, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1599)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{null, !1022}
!1599 = !{!1595, !1600}
!1600 = !DILocalVariable(name: "pn", scope: !1601, file: !1178, line: 2731, type: !1382)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !1178, line: 2730, column: 2)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !1178, line: 2728, column: 36)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !1178, line: 2728, column: 9)
!1604 = !DILocation(line: 0, scope: !1596, inlinedAt: !1605)
!1605 = distinct !DILocation(line: 457, column: 6, scope: !1390)
!1606 = !DILocation(line: 2728, column: 12, scope: !1603, inlinedAt: !1605)
!1607 = !DILocation(line: 2728, column: 10, scope: !1603, inlinedAt: !1605)
!1608 = !DILocation(line: 2728, column: 9, scope: !1596, inlinedAt: !1605)
!1609 = !DILocation(line: 2729, column: 8, scope: !1602, inlinedAt: !1605)
!1610 = !DILocation(line: 2729, column: 28, scope: !1602, inlinedAt: !1605)
!1611 = !DILocation(line: 2729, column: 2, scope: !1602, inlinedAt: !1605)
!1612 = !DILocation(line: 2732, column: 3, scope: !1601, inlinedAt: !1605)
!1613 = !DILocation(line: 2732, column: 44, scope: !1601, inlinedAt: !1605)
!1614 = !DILocation(line: 0, scope: !1601, inlinedAt: !1605)
!1615 = !DILocation(line: 2733, column: 10, scope: !1616, inlinedAt: !1605)
!1616 = distinct !DILexicalBlock(scope: !1601, file: !1178, line: 2733, column: 10)
!1617 = !DILocation(line: 2733, column: 10, scope: !1601, inlinedAt: !1605)
!1618 = !DILocation(line: 2734, column: 3, scope: !1616, inlinedAt: !1605)
!1619 = distinct !{!1619, !1611, !1620, !1547, !1548}
!1620 = !DILocation(line: 2735, column: 2, scope: !1602, inlinedAt: !1605)
!1621 = !DILocation(line: 2736, column: 2, scope: !1602, inlinedAt: !1605)
!1622 = !DILocation(line: 2737, column: 2, scope: !1602, inlinedAt: !1605)
!1623 = !DILocation(line: 2738, column: 5, scope: !1602, inlinedAt: !1605)
!1624 = !DILocation(line: 459, column: 6, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1361, file: !1178, line: 459, column: 6)
!1626 = !DILocation(line: 459, column: 6, scope: !1361)
!1627 = !DILocation(line: 459, column: 29, scope: !1625)
!1628 = !DILocation(line: 460, column: 2, scope: !1361)
!1629 = !DILocation(line: 462, column: 5, scope: !1361)
!1630 = !DILocation(line: 469, column: 10, scope: !1393)
!1631 = !DILocation(line: 469, column: 9, scope: !1350)
!1632 = !DILocation(line: 470, column: 17, scope: !1392)
!1633 = !DILocation(line: 0, scope: !1392)
!1634 = !DILocation(line: 471, column: 5, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1392, file: !1178, line: 471, column: 5)
!1636 = !DILocation(line: 471, column: 5, scope: !1392)
!1637 = !DILocation(line: 472, column: 25, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1635, file: !1178, line: 471, column: 14)
!1639 = !DILocation(line: 473, column: 11, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1638, file: !1178, line: 473, column: 10)
!1641 = !DILocation(line: 473, column: 10, scope: !1638)
!1642 = !DILocation(line: 0, scope: !1516, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 474, column: 3, scope: !1640)
!1644 = !DILocation(line: 173, column: 14, scope: !1516, inlinedAt: !1643)
!1645 = !DILocation(line: 174, column: 9, scope: !1526, inlinedAt: !1643)
!1646 = !DILocation(line: 174, column: 9, scope: !1516, inlinedAt: !1643)
!1647 = !DILocation(line: 175, column: 20, scope: !1526, inlinedAt: !1643)
!1648 = !DILocation(line: 175, column: 15, scope: !1526, inlinedAt: !1643)
!1649 = !DILocation(line: 175, column: 2, scope: !1526, inlinedAt: !1643)
!1650 = !DILocation(line: 177, column: 2, scope: !1526, inlinedAt: !1643)
!1651 = !DILocation(line: 477, column: 9, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1350, file: !1178, line: 477, column: 9)
!1653 = !DILocation(line: 477, column: 9, scope: !1350)
!1654 = !DILocation(line: 478, column: 2, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !1178, line: 477, column: 27)
!1656 = !DILocalVariable(name: "sv", arg: 1, scope: !1657, file: !1517, line: 159, type: !441)
!1657 = distinct !DISubprogram(name: "S_SvREFCNT_dec", scope: !1517, file: !1517, line: 159, type: !1518, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1658)
!1658 = !{!1656, !1659}
!1659 = !DILocalVariable(name: "rc", scope: !1660, file: !1517, line: 162, type: !448)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !1517, line: 161, column: 29)
!1661 = distinct !DILexicalBlock(scope: !1657, file: !1517, line: 161, column: 9)
!1662 = !DILocation(line: 0, scope: !1657, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 478, column: 2, scope: !1655)
!1664 = !DILocation(line: 161, column: 9, scope: !1661, inlinedAt: !1663)
!1665 = !DILocation(line: 161, column: 9, scope: !1657, inlinedAt: !1663)
!1666 = !DILocation(line: 162, column: 11, scope: !1660, inlinedAt: !1663)
!1667 = !DILocation(line: 0, scope: !1660, inlinedAt: !1663)
!1668 = !DILocation(line: 163, column: 6, scope: !1669, inlinedAt: !1663)
!1669 = distinct !DILexicalBlock(scope: !1660, file: !1517, line: 163, column: 6)
!1670 = !DILocation(line: 163, column: 6, scope: !1660, inlinedAt: !1663)
!1671 = !DILocation(line: 164, column: 24, scope: !1669, inlinedAt: !1663)
!1672 = !DILocation(line: 164, column: 19, scope: !1669, inlinedAt: !1663)
!1673 = !DILocation(line: 164, column: 6, scope: !1669, inlinedAt: !1663)
!1674 = !DILocation(line: 166, column: 6, scope: !1669, inlinedAt: !1663)
!1675 = !DILocation(line: 484, column: 22, scope: !1350)
!1676 = !DILocation(line: 486, column: 1, scope: !1350)
!1677 = !DISubprogram(name: "Perl_safesysfree", scope: !1287, file: !1287, line: 3750, type: !763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1678 = !DISubprogram(name: "Perl_croak", scope: !1287, file: !1287, line: 741, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !515, null}
!1681 = !DISubprogram(name: "Perl_push_scope", scope: !1287, file: !1287, line: 3507, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null}
!1684 = !DISubprogram(name: "Perl_opslab_free", scope: !1287, file: !1287, line: 5723, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1012}
!1687 = !DISubprogram(name: "Perl_op_free", scope: !1287, file: !1287, line: 3256, type: !1688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !726}
!1690 = !DISubprogram(name: "Perl_pop_scope", scope: !1287, file: !1287, line: 3451, type: !1682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1691 = !DISubprogram(name: "Perl_parser_free_nexttoke_ops", scope: !1287, file: !1287, line: 5733, type: !1692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !1694, !1012}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "yy_parser", file: !1696, line: 115, baseType: !1697)
!1696 = !DIFile(filename: "apps/500.perlbench_r/src/parser.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b29878d1d36330394157136b32aba033")
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yy_parser", file: !1696, line: 34, size: 4928, elements: !1698)
!1698 = !{!1699, !1701, !1710, !1711, !1712, !1713, !1714, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1756, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1788, !1790, !1791, !1835, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "old_parser", scope: !1697, file: !1696, line: 38, baseType: !1700, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "yylval", scope: !1697, file: !1696, line: 39, baseType: !1702, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "YYSTYPE", file: !1703, line: 249, baseType: !1704)
!1703 = !DIFile(filename: "apps/500.perlbench_r/src/perly.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f407f7801e08e631a7d045a6cdd4beeb")
!1704 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "YYSTYPE", file: !1703, line: 240, size: 64, elements: !1705)
!1705 = !{!1706, !1707, !1708, !1709}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ival", scope: !1704, file: !1703, line: 242, baseType: !517, size: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pval", scope: !1704, file: !1703, line: 244, baseType: !455, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "opval", scope: !1704, file: !1703, line: 245, baseType: !726, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "gvval", scope: !1704, file: !1703, line: 246, baseType: !636, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "yychar", scope: !1697, file: !1696, line: 40, baseType: !503, size: 32, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "yyerrstatus", scope: !1697, file: !1696, line: 43, baseType: !503, size: 32, offset: 160)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !1697, file: !1696, line: 45, baseType: !503, size: 32, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "yylen", scope: !1697, file: !1696, line: 46, baseType: !503, size: 32, offset: 224)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1697, file: !1696, line: 47, baseType: !1715, size: 64, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "yy_stack_frame", file: !1696, line: 22, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1696, line: 14, size: 192, elements: !1718)
!1718 = !{!1719, !1720, !1722, !1723}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1717, file: !1696, line: 15, baseType: !1702, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1717, file: !1696, line: 16, baseType: !1721, size: 16, offset: 64)
!1721 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "savestack_ix", scope: !1717, file: !1696, line: 17, baseType: !517, size: 32, offset: 96)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "compcv", scope: !1717, file: !1696, line: 18, baseType: !703, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "ps", scope: !1697, file: !1696, line: 48, baseType: !1715, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "lex_brackets", scope: !1697, file: !1696, line: 52, baseType: !517, size: 32, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "lex_casemods", scope: !1697, file: !1696, line: 53, baseType: !517, size: 32, offset: 416)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "lex_brackstack", scope: !1697, file: !1696, line: 54, baseType: !455, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "lex_casestack", scope: !1697, file: !1696, line: 55, baseType: !455, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "lex_defer", scope: !1697, file: !1696, line: 56, baseType: !685, size: 8, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lex_dojoin", scope: !1697, file: !1696, line: 57, baseType: !685, size: 8, offset: 584)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "lex_expect", scope: !1697, file: !1696, line: 59, baseType: !685, size: 8, offset: 592)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !1697, file: !1696, line: 60, baseType: !685, size: 8, offset: 600)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "lex_formbrack", scope: !1697, file: !1696, line: 61, baseType: !517, size: 32, offset: 608)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "lex_inpat", scope: !1697, file: !1696, line: 62, baseType: !726, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "lex_op", scope: !1697, file: !1696, line: 63, baseType: !726, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "lex_repl", scope: !1697, file: !1696, line: 64, baseType: !441, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "lex_inwhat", scope: !1697, file: !1696, line: 65, baseType: !837, size: 16, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "last_lop_op", scope: !1697, file: !1696, line: 66, baseType: !837, size: 16, offset: 848)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "lex_starts", scope: !1697, file: !1696, line: 67, baseType: !517, size: 32, offset: 864)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "lex_stuff", scope: !1697, file: !1696, line: 68, baseType: !441, size: 64, offset: 896)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "multi_start", scope: !1697, file: !1696, line: 69, baseType: !517, size: 32, offset: 960)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "multi_end", scope: !1697, file: !1696, line: 70, baseType: !517, size: 32, offset: 992)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "multi_open", scope: !1697, file: !1696, line: 71, baseType: !456, size: 8, offset: 1024)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "multi_close", scope: !1697, file: !1696, line: 72, baseType: !456, size: 8, offset: 1032)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "preambled", scope: !1697, file: !1696, line: 73, baseType: !760, size: 8, offset: 1040)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lex_re_reparsing", scope: !1697, file: !1696, line: 74, baseType: !760, size: 8, offset: 1048)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "lex_allbrackets", scope: !1697, file: !1696, line: 75, baseType: !517, size: 32, offset: 1056)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "sublex_info", scope: !1697, file: !1696, line: 76, baseType: !1749, size: 192, offset: 1088)
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "SUBLEXINFO", file: !25, line: 3799, baseType: !1750)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sublex_info", file: !25, line: 3800, size: 192, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "super_state", scope: !1750, file: !25, line: 3801, baseType: !685, size: 8)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sub_inwhat", scope: !1750, file: !25, line: 3802, baseType: !837, size: 16, offset: 16)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "sub_op", scope: !1750, file: !25, line: 3803, baseType: !726, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "repl", scope: !1750, file: !25, line: 3804, baseType: !441, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "lex_shared", scope: !1697, file: !1696, line: 77, baseType: !1757, size: 64, offset: 1280)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "LEXSHARED", file: !1696, line: 32, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yy_lexshared", file: !1696, line: 26, size: 320, elements: !1760)
!1760 = !{!1761, !1763, !1764, !1765, !1766}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ls_prev", scope: !1759, file: !1696, line: 27, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ls_linestr", scope: !1759, file: !1696, line: 28, baseType: !441, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ls_bufptr", scope: !1759, file: !1696, line: 29, baseType: !455, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "re_eval_start", scope: !1759, file: !1696, line: 30, baseType: !455, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "re_eval_str", scope: !1759, file: !1696, line: 31, baseType: !441, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "linestr", scope: !1697, file: !1696, line: 78, baseType: !441, size: 64, offset: 1344)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "bufptr", scope: !1697, file: !1696, line: 79, baseType: !455, size: 64, offset: 1408)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "oldbufptr", scope: !1697, file: !1696, line: 82, baseType: !455, size: 64, offset: 1472)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "oldoldbufptr", scope: !1697, file: !1696, line: 83, baseType: !455, size: 64, offset: 1536)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "bufend", scope: !1697, file: !1696, line: 84, baseType: !455, size: 64, offset: 1600)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "linestart", scope: !1697, file: !1696, line: 85, baseType: !455, size: 64, offset: 1664)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "last_uni", scope: !1697, file: !1696, line: 86, baseType: !455, size: 64, offset: 1728)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "last_lop", scope: !1697, file: !1696, line: 87, baseType: !455, size: 64, offset: 1792)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "copline", scope: !1697, file: !1696, line: 92, baseType: !1776, size: 32, offset: 1856)
!1776 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_t", file: !449, line: 1734, baseType: !448)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "in_my", scope: !1697, file: !1696, line: 93, baseType: !837, size: 16, offset: 1888)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "lex_state", scope: !1697, file: !1696, line: 94, baseType: !685, size: 8, offset: 1904)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !1697, file: !1696, line: 95, baseType: !685, size: 8, offset: 1912)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "in_my_stash", scope: !1697, file: !1696, line: 96, baseType: !473, size: 64, offset: 1920)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "rsfp", scope: !1697, file: !1696, line: 97, baseType: !616, size: 64, offset: 1984)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "rsfp_filters", scope: !1697, file: !1696, line: 98, baseType: !527, size: 64, offset: 2048)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "form_lex_state", scope: !1697, file: !1696, line: 99, baseType: !685, size: 8, offset: 2112)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "nextval", scope: !1697, file: !1696, line: 101, baseType: !1785, size: 320, offset: 2176)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1702, size: 320, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 5)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "nexttype", scope: !1697, file: !1696, line: 102, baseType: !1789, size: 160, offset: 2496)
!1789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 160, elements: !1786)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nexttoke", scope: !1697, file: !1696, line: 103, baseType: !448, size: 32, offset: 2656)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "saved_curcop", scope: !1697, file: !1696, line: 105, baseType: !1792, size: 64, offset: 2688)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "COP", file: !25, line: 2618, baseType: !1794)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cop", file: !1795, line: 393, size: 640, elements: !1796)
!1795 = !DIFile(filename: "apps/500.perlbench_r/src/cop.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "64d4f81e93be43c58d053d27101a3a5e")
!1796 = !{!1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1818}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1794, file: !1795, line: 394, baseType: !726, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1794, file: !1795, line: 394, baseType: !726, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1794, file: !1795, line: 394, baseType: !734, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1794, file: !1795, line: 394, baseType: !738, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1794, file: !1795, line: 394, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1794, file: !1795, line: 394, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1794, file: !1795, line: 394, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1794, file: !1795, line: 394, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1794, file: !1795, line: 394, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1794, file: !1795, line: 394, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1794, file: !1795, line: 394, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1794, file: !1795, line: 394, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1794, file: !1795, line: 394, baseType: !685, size: 8, offset: 272)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1794, file: !1795, line: 394, baseType: !685, size: 8, offset: 280)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cop_line", scope: !1794, file: !1795, line: 397, baseType: !1776, size: 32, offset: 288)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cop_stash", scope: !1794, file: !1795, line: 404, baseType: !473, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cop_filegv", scope: !1794, file: !1795, line: 405, baseType: !636, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cop_hints", scope: !1794, file: !1795, line: 407, baseType: !448, size: 32, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "cop_seq", scope: !1794, file: !1795, line: 408, baseType: !448, size: 32, offset: 480)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "cop_warnings", scope: !1794, file: !1795, line: 410, baseType: !1817, size: 64, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cop_hints_hash", scope: !1794, file: !1795, line: 413, baseType: !1819, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "COPHH", file: !1795, line: 170, baseType: !1821)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcounted_he", file: !481, line: 523, size: 256, elements: !1822)
!1822 = !{!1823, !1825, !1826, !1833, !1834}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_next", scope: !1821, file: !481, line: 524, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_hek", scope: !1821, file: !481, line: 529, baseType: !567, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_val", scope: !1821, file: !481, line: 536, baseType: !1827, size: 64, offset: 128)
!1827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !481, line: 531, size: 64, elements: !1828)
!1828 = !{!1829, !1830, !1831, !1832}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_iv", scope: !1827, file: !481, line: 532, baseType: !458, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_uv", scope: !1827, file: !481, line: 533, baseType: !461, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_len", scope: !1827, file: !481, line: 534, baseType: !603, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_ptr", scope: !1827, file: !481, line: 535, baseType: !446, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_refcnt", scope: !1821, file: !481, line: 537, baseType: !448, size: 32, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_data", scope: !1821, file: !481, line: 540, baseType: !574, size: 8, offset: 224)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tokenbuf", scope: !1697, file: !1696, line: 106, baseType: !1836, size: 2048, offset: 2752)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 2048, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 256)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "herelines", scope: !1697, file: !1696, line: 107, baseType: !1776, size: 32, offset: 4800)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "preambling", scope: !1697, file: !1696, line: 108, baseType: !1776, size: 32, offset: 4832)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lex_fakeeof", scope: !1697, file: !1696, line: 109, baseType: !685, size: 8, offset: 4864)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "lex_flags", scope: !1697, file: !1696, line: 110, baseType: !685, size: 8, offset: 4872)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "in_pod", scope: !1697, file: !1696, line: 111, baseType: !5, size: 1, offset: 4880, flags: DIFlagBitField, extraData: i64 4880)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !1697, file: !1696, line: 112, baseType: !5, size: 1, offset: 4881, flags: DIFlagBitField, extraData: i64 4880)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "saw_infix_sigil", scope: !1697, file: !1696, line: 113, baseType: !5, size: 1, offset: 4882, flags: DIFlagBitField, extraData: i64 4880)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "parsed_sub", scope: !1697, file: !1696, line: 114, baseType: !5, size: 1, offset: 4883, flags: DIFlagBitField, extraData: i64 4880)
!1847 = !DISubprogram(name: "Perl_opslab_force_free", scope: !1287, file: !1287, line: 5718, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1848 = !DISubprogram(name: "Perl_sv_unmagic", scope: !1287, file: !1287, line: 4722, type: !1849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{!503, !898, !1291}
!1851 = !DISubprogram(name: "Perl_unshare_hek", scope: !1287, file: !1287, line: 4976, type: !1852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !567}
!1854 = !DISubprogram(name: "Perl_cvgv_set", scope: !1287, file: !1287, line: 863, type: !1855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !703, !636}
!1857 = !DILocation(line: 0, scope: !1596)
!1858 = !DILocation(line: 2728, column: 12, scope: !1603)
!1859 = !DILocation(line: 2728, column: 10, scope: !1603)
!1860 = !DILocation(line: 2728, column: 9, scope: !1596)
!1861 = !DILocation(line: 2729, column: 8, scope: !1602)
!1862 = !DILocation(line: 2729, column: 28, scope: !1602)
!1863 = !DILocation(line: 2729, column: 2, scope: !1602)
!1864 = !DILocation(line: 2732, column: 3, scope: !1601)
!1865 = !DILocation(line: 2732, column: 44, scope: !1601)
!1866 = !DILocation(line: 0, scope: !1601)
!1867 = !DILocation(line: 2733, column: 10, scope: !1616)
!1868 = !DILocation(line: 2733, column: 10, scope: !1601)
!1869 = !DILocation(line: 2734, column: 3, scope: !1616)
!1870 = distinct !{!1870, !1863, !1871, !1547, !1548}
!1871 = !DILocation(line: 2735, column: 2, scope: !1602)
!1872 = !DILocation(line: 2736, column: 2, scope: !1602)
!1873 = !DILocation(line: 2737, column: 2, scope: !1602)
!1874 = !DILocation(line: 2738, column: 5, scope: !1602)
!1875 = !DILocation(line: 2739, column: 1, scope: !1596)
!1876 = distinct !DISubprogram(name: "Perl_cv_forget_slab", scope: !1178, file: !1178, line: 501, type: !772, scopeLine: 502, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1877)
!1877 = !{!1878, !1879, !1880}
!1878 = !DILocalVariable(name: "cv", arg: 1, scope: !1876, file: !1178, line: 501, type: !703)
!1879 = !DILocalVariable(name: "slabbed", scope: !1876, file: !1178, line: 503, type: !760)
!1880 = !DILocalVariable(name: "slab", scope: !1876, file: !1178, line: 504, type: !1012)
!1881 = !DILocation(line: 0, scope: !1876)
!1882 = !DILocation(line: 506, column: 10, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1876, file: !1178, line: 506, column: 9)
!1884 = !DILocation(line: 506, column: 9, scope: !1876)
!1885 = !DILocation(line: 508, column: 15, scope: !1876)
!1886 = !DILocation(line: 509, column: 9, scope: !1876)
!1887 = !DILocation(line: 511, column: 5, scope: !1876)
!1888 = !DILocation(line: 513, column: 14, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1876, file: !1178, line: 513, column: 14)
!1890 = !DILocation(line: 513, column: 14, scope: !1876)
!1891 = !DILocation(line: 513, column: 34, scope: !1889)
!1892 = !DILocation(line: 513, column: 27, scope: !1889)
!1893 = !DILocation(line: 514, column: 14, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1889, file: !1178, line: 514, column: 14)
!1895 = !DILocation(line: 514, column: 14, scope: !1889)
!1896 = !DILocation(line: 519, column: 9, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1876, file: !1178, line: 519, column: 9)
!1898 = !DILocation(line: 519, column: 9, scope: !1876)
!1899 = !DILocation(line: 523, column: 2, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1897, file: !1178, line: 519, column: 15)
!1901 = !DILocation(line: 528, column: 1, scope: !1876)
!1902 = !DISubprogram(name: "Perl_opslab_free_nopad", scope: !1287, file: !1287, line: 5728, type: !1685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!1903 = distinct !DISubprogram(name: "Perl_pad_add_name_pvn", scope: !1178, file: !1178, line: 597, type: !1904, scopeLine: 599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1906)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!738, !515, !603, !448, !473, !473}
!1906 = !{!1907, !1908, !1909, !1910, !1911, !1912, !1913}
!1907 = !DILocalVariable(name: "namepv", arg: 1, scope: !1903, file: !1178, line: 597, type: !515)
!1908 = !DILocalVariable(name: "namelen", arg: 2, scope: !1903, file: !1178, line: 597, type: !603)
!1909 = !DILocalVariable(name: "flags", arg: 3, scope: !1903, file: !1178, line: 598, type: !448)
!1910 = !DILocalVariable(name: "typestash", arg: 4, scope: !1903, file: !1178, line: 598, type: !473)
!1911 = !DILocalVariable(name: "ourstash", arg: 5, scope: !1903, file: !1178, line: 598, type: !473)
!1912 = !DILocalVariable(name: "offset", scope: !1903, file: !1178, line: 600, type: !738)
!1913 = !DILocalVariable(name: "name", scope: !1903, file: !1178, line: 601, type: !1029)
!1914 = !DILocation(line: 0, scope: !1903)
!1915 = !DILocation(line: 605, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1903, file: !1178, line: 605, column: 9)
!1917 = !DILocation(line: 605, column: 9, scope: !1903)
!1918 = !DILocation(line: 607, column: 6, scope: !1916)
!1919 = !DILocation(line: 606, column: 2, scope: !1916)
!1920 = !DILocalVariable(name: "s", arg: 1, scope: !1921, file: !1178, line: 2793, type: !515)
!1921 = distinct !DISubprogram(name: "Perl_newPADNAMEpvn", scope: !1178, file: !1178, line: 2793, type: !1922, scopeLine: 2794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1029, !515, !603}
!1924 = !{!1920, !1925, !1926, !1927, !1928}
!1925 = !DILocalVariable(name: "len", arg: 2, scope: !1921, file: !1178, line: 2793, type: !603)
!1926 = !DILocalVariable(name: "alloc", scope: !1921, file: !1178, line: 2795, type: !1110)
!1927 = !DILocalVariable(name: "alloc2", scope: !1921, file: !1178, line: 2796, type: !455)
!1928 = !DILocalVariable(name: "pn", scope: !1921, file: !1178, line: 2797, type: !1029)
!1929 = !DILocation(line: 0, scope: !1921, inlinedAt: !1930)
!1930 = distinct !DILocation(line: 609, column: 12, scope: !1903)
!1931 = !DILocation(line: 2799, column: 5, scope: !1921, inlinedAt: !1930)
!1932 = !DILocation(line: 2804, column: 5, scope: !1921, inlinedAt: !1930)
!1933 = !DILocation(line: 2804, column: 23, scope: !1921, inlinedAt: !1930)
!1934 = !DILocation(line: 2805, column: 28, scope: !1921, inlinedAt: !1930)
!1935 = !DILocation(line: 2805, column: 19, scope: !1921, inlinedAt: !1930)
!1936 = !DILocation(line: 2806, column: 5, scope: !1921, inlinedAt: !1930)
!1937 = !DILocation(line: 2807, column: 21, scope: !1921, inlinedAt: !1930)
!1938 = !DILocation(line: 2807, column: 28, scope: !1921, inlinedAt: !1930)
!1939 = !DILocation(line: 2808, column: 22, scope: !1921, inlinedAt: !1930)
!1940 = !DILocation(line: 2808, column: 5, scope: !1921, inlinedAt: !1930)
!1941 = !DILocation(line: 2808, column: 20, scope: !1921, inlinedAt: !1930)
!1942 = !DILocation(line: 611, column: 16, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1903, file: !1178, line: 611, column: 9)
!1944 = !DILocation(line: 611, column: 39, scope: !1943)
!1945 = !DILocation(line: 611, column: 9, scope: !1903)
!1946 = !DILocation(line: 612, column: 2, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1943, file: !1178, line: 611, column: 45)
!1948 = !DILocation(line: 613, column: 2, scope: !1947)
!1949 = !DILocation(line: 615, column: 2, scope: !1947)
!1950 = !DILocalVariable(name: "name", arg: 1, scope: !1951, file: !1178, line: 866, type: !1029)
!1951 = distinct !DISubprogram(name: "S_pad_check_dup", scope: !1178, file: !1178, line: 866, type: !1952, scopeLine: 867, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1956)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !1029, !448, !1954}
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !474)
!1956 = !{!1950, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1967}
!1957 = !DILocalVariable(name: "flags", arg: 2, scope: !1951, file: !1178, line: 866, type: !448)
!1958 = !DILocalVariable(name: "ourstash", arg: 3, scope: !1951, file: !1178, line: 866, type: !1954)
!1959 = !DILocalVariable(name: "svp", scope: !1951, file: !1178, line: 868, type: !1028)
!1960 = !DILocalVariable(name: "top", scope: !1951, file: !1178, line: 869, type: !738)
!1961 = !DILocalVariable(name: "off", scope: !1951, file: !1178, line: 869, type: !738)
!1962 = !DILocalVariable(name: "is_our", scope: !1951, file: !1178, line: 870, type: !909)
!1963 = !DILocalVariable(name: "sv", scope: !1964, file: !1178, line: 887, type: !1382)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !1178, line: 886, column: 62)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !1178, line: 886, column: 5)
!1966 = distinct !DILexicalBlock(scope: !1951, file: !1178, line: 886, column: 5)
!1967 = !DILocalVariable(name: "sv", scope: !1968, file: !1178, line: 912, type: !1382)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !1178, line: 911, column: 18)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !1178, line: 910, column: 17)
!1970 = distinct !DILexicalBlock(scope: !1951, file: !1178, line: 910, column: 9)
!1971 = !DILocation(line: 0, scope: !1951, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 615, column: 2, scope: !1947)
!1973 = !DILocation(line: 878, column: 9, scope: !1974, inlinedAt: !1972)
!1974 = distinct !DILexicalBlock(scope: !1951, file: !1178, line: 878, column: 9)
!1975 = !DILocation(line: 878, column: 41, scope: !1974, inlinedAt: !1972)
!1976 = !DILocation(line: 878, column: 45, scope: !1974, inlinedAt: !1972)
!1977 = !DILocation(line: 878, column: 49, scope: !1974, inlinedAt: !1972)
!1978 = !DILocation(line: 878, column: 9, scope: !1951, inlinedAt: !1972)
!1979 = !DILocation(line: 881, column: 11, scope: !1951, inlinedAt: !1972)
!1980 = !DILocation(line: 882, column: 11, scope: !1951, inlinedAt: !1972)
!1981 = !DILocation(line: 886, column: 21, scope: !1965, inlinedAt: !1972)
!1982 = !DILocation(line: 886, column: 30, scope: !1965, inlinedAt: !1972)
!1983 = !DILocation(line: 886, column: 5, scope: !1966, inlinedAt: !1972)
!1984 = !DILocation(line: 887, column: 23, scope: !1964, inlinedAt: !1972)
!1985 = !DILocation(line: 0, scope: !1964, inlinedAt: !1972)
!1986 = !DILocation(line: 888, column: 6, scope: !1987, inlinedAt: !1972)
!1987 = distinct !DILexicalBlock(scope: !1964, file: !1178, line: 888, column: 6)
!1988 = !DILocation(line: 889, column: 6, scope: !1987, inlinedAt: !1972)
!1989 = !DILocation(line: 889, column: 9, scope: !1987, inlinedAt: !1972)
!1990 = !DILocation(line: 889, column: 27, scope: !1987, inlinedAt: !1972)
!1991 = !DILocation(line: 889, column: 24, scope: !1987, inlinedAt: !1972)
!1992 = !DILocation(line: 890, column: 6, scope: !1987, inlinedAt: !1972)
!1993 = !DILocation(line: 890, column: 10, scope: !1987, inlinedAt: !1972)
!1994 = !DILocation(line: 891, column: 6, scope: !1987, inlinedAt: !1972)
!1995 = !DILocation(line: 891, column: 13, scope: !1987, inlinedAt: !1972)
!1996 = !DILocation(line: 891, column: 36, scope: !1987, inlinedAt: !1972)
!1997 = !DILocation(line: 892, column: 3, scope: !1987, inlinedAt: !1972)
!1998 = !DILocation(line: 892, column: 6, scope: !1987, inlinedAt: !1972)
!1999 = !DILocation(line: 892, column: 29, scope: !1987, inlinedAt: !1972)
!2000 = !DILocation(line: 893, column: 6, scope: !1987, inlinedAt: !1972)
!2001 = !DILocation(line: 893, column: 9, scope: !1987, inlinedAt: !1972)
!2002 = !DILocation(line: 888, column: 6, scope: !1964, inlinedAt: !1972)
!2003 = !DILocation(line: 895, column: 10, scope: !2004, inlinedAt: !1972)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !1178, line: 895, column: 10)
!2005 = distinct !DILexicalBlock(scope: !1987, file: !1178, line: 894, column: 2)
!2006 = !DILocation(line: 895, column: 17, scope: !2004, inlinedAt: !1972)
!2007 = !DILocation(line: 895, column: 21, scope: !2004, inlinedAt: !1972)
!2008 = !DILocation(line: 895, column: 10, scope: !2005, inlinedAt: !1972)
!2009 = !DILocation(line: 900, column: 21, scope: !2005, inlinedAt: !1972)
!2010 = !DILocation(line: 900, column: 32, scope: !2005, inlinedAt: !1972)
!2011 = !DILocation(line: 900, column: 38, scope: !2005, inlinedAt: !1972)
!2012 = !DILocation(line: 900, column: 4, scope: !2005, inlinedAt: !1972)
!2013 = !DILocation(line: 901, column: 3, scope: !2005, inlinedAt: !1972)
!2014 = !DILocation(line: 901, column: 18, scope: !2005, inlinedAt: !1972)
!2015 = !DILocation(line: 903, column: 4, scope: !2005, inlinedAt: !1972)
!2016 = !DILocation(line: 903, column: 27, scope: !2005, inlinedAt: !1972)
!2017 = !DILocation(line: 898, column: 6, scope: !2005, inlinedAt: !1972)
!2018 = !DILocation(line: 905, column: 6, scope: !2005, inlinedAt: !1972)
!2019 = !DILocation(line: 906, column: 6, scope: !2005, inlinedAt: !1972)
!2020 = !DILocation(line: 886, column: 58, scope: !1965, inlinedAt: !1972)
!2021 = distinct !{!2021, !1983, !2022, !1547, !1548}
!2022 = !DILocation(line: 908, column: 5, scope: !1966, inlinedAt: !1972)
!2023 = !DILocation(line: 886, column: 14, scope: !1966, inlinedAt: !1972)
!2024 = !DILocation(line: 910, column: 9, scope: !1970, inlinedAt: !1972)
!2025 = !DILocation(line: 910, column: 9, scope: !1951, inlinedAt: !1972)
!2026 = !DILocation(line: 912, column: 27, scope: !1968, inlinedAt: !1972)
!2027 = !DILocation(line: 0, scope: !1968, inlinedAt: !1972)
!2028 = !DILocation(line: 913, column: 10, scope: !2029, inlinedAt: !1972)
!2029 = distinct !DILexicalBlock(scope: !1968, file: !1178, line: 913, column: 10)
!2030 = !DILocation(line: 914, column: 3, scope: !2029, inlinedAt: !1972)
!2031 = !DILocation(line: 914, column: 6, scope: !2029, inlinedAt: !1972)
!2032 = !DILocation(line: 914, column: 24, scope: !2029, inlinedAt: !1972)
!2033 = !DILocation(line: 914, column: 21, scope: !2029, inlinedAt: !1972)
!2034 = !DILocation(line: 915, column: 3, scope: !2029, inlinedAt: !1972)
!2035 = !DILocation(line: 915, column: 7, scope: !2029, inlinedAt: !1972)
!2036 = !DILocation(line: 916, column: 3, scope: !2029, inlinedAt: !1972)
!2037 = !DILocation(line: 916, column: 10, scope: !2029, inlinedAt: !1972)
!2038 = !DILocation(line: 916, column: 33, scope: !2029, inlinedAt: !1972)
!2039 = !DILocation(line: 917, column: 7, scope: !2029, inlinedAt: !1972)
!2040 = !DILocation(line: 917, column: 10, scope: !2029, inlinedAt: !1972)
!2041 = !DILocation(line: 917, column: 33, scope: !2029, inlinedAt: !1972)
!2042 = !DILocation(line: 918, column: 3, scope: !2029, inlinedAt: !1972)
!2043 = !DILocation(line: 918, column: 6, scope: !2029, inlinedAt: !1972)
!2044 = !DILocation(line: 918, column: 21, scope: !2029, inlinedAt: !1972)
!2045 = !DILocation(line: 919, column: 3, scope: !2029, inlinedAt: !1972)
!2046 = !DILocation(line: 919, column: 6, scope: !2029, inlinedAt: !1972)
!2047 = !DILocation(line: 913, column: 10, scope: !1968, inlinedAt: !1972)
!2048 = !DILocation(line: 921, column: 3, scope: !2049, inlinedAt: !1972)
!2049 = distinct !DILexicalBlock(scope: !2029, file: !1178, line: 920, column: 6)
!2050 = !DILocation(line: 923, column: 7, scope: !2051, inlinedAt: !1972)
!2051 = distinct !DILexicalBlock(scope: !2049, file: !1178, line: 923, column: 7)
!2052 = !DILocation(line: 923, column: 19, scope: !2051, inlinedAt: !1972)
!2053 = !DILocation(line: 923, column: 16, scope: !2051, inlinedAt: !1972)
!2054 = !DILocation(line: 923, column: 7, scope: !2049, inlinedAt: !1972)
!2055 = !DILocation(line: 924, column: 7, scope: !2051, inlinedAt: !1972)
!2056 = !DILocation(line: 928, column: 6, scope: !1968, inlinedAt: !1972)
!2057 = !DILocation(line: 616, column: 21, scope: !1947)
!2058 = !DILocation(line: 617, column: 2, scope: !1947)
!2059 = !DILocation(line: 618, column: 5, scope: !1947)
!2060 = !DILocation(line: 620, column: 14, scope: !1903)
!2061 = !DILocation(line: 623, column: 5, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1903, file: !1178, line: 623, column: 5)
!2063 = !DILocation(line: 624, column: 5, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1903, file: !1178, line: 624, column: 5)
!2065 = !DILocation(line: 626, column: 10, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1903, file: !1178, line: 626, column: 9)
!2067 = !DILocation(line: 626, column: 9, scope: !1903)
!2068 = !DILocation(line: 627, column: 23, scope: !2066)
!2069 = !DILocation(line: 627, column: 2, scope: !2066)
!2070 = !DILocation(line: 628, column: 26, scope: !1903)
!2071 = !DILocation(line: 632, column: 17, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1903, file: !1178, line: 632, column: 9)
!2073 = !DILocation(line: 632, column: 22, scope: !2072)
!2074 = !DILocation(line: 632, column: 25, scope: !2072)
!2075 = !DILocation(line: 632, column: 9, scope: !1903)
!2076 = !DILocation(line: 635, column: 2, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2072, file: !1178, line: 634, column: 14)
!2078 = !DILocation(line: 637, column: 2, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2077, file: !1178, line: 636, column: 14)
!2080 = !DILocation(line: 0, scope: !2072)
!2081 = !DILocation(line: 644, column: 5, scope: !1903)
!2082 = !DILocation(line: 0, scope: !1921)
!2083 = !DILocation(line: 2799, column: 5, scope: !1921)
!2084 = !DILocation(line: 2804, column: 5, scope: !1921)
!2085 = !DILocation(line: 2804, column: 23, scope: !1921)
!2086 = !DILocation(line: 2805, column: 28, scope: !1921)
!2087 = !DILocation(line: 2805, column: 19, scope: !1921)
!2088 = !DILocation(line: 2806, column: 5, scope: !1921)
!2089 = !DILocation(line: 2807, column: 21, scope: !1921)
!2090 = !DILocation(line: 2807, column: 28, scope: !1921)
!2091 = !DILocation(line: 2808, column: 22, scope: !1921)
!2092 = !DILocation(line: 2808, column: 5, scope: !1921)
!2093 = !DILocation(line: 2808, column: 20, scope: !1921)
!2094 = !DILocation(line: 2809, column: 5, scope: !1921)
!2095 = distinct !DISubprogram(name: "S_pad_alloc_name", scope: !1178, file: !1178, line: 546, type: !2096, scopeLine: 548, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!738, !1029, !448, !473, !473}
!2098 = !{!2099, !2100, !2101, !2102, !2103}
!2099 = !DILocalVariable(name: "name", arg: 1, scope: !2095, file: !1178, line: 546, type: !1029)
!2100 = !DILocalVariable(name: "flags", arg: 2, scope: !2095, file: !1178, line: 546, type: !448)
!2101 = !DILocalVariable(name: "typestash", arg: 3, scope: !2095, file: !1178, line: 546, type: !473)
!2102 = !DILocalVariable(name: "ourstash", arg: 4, scope: !2095, file: !1178, line: 547, type: !473)
!2103 = !DILocalVariable(name: "offset", scope: !2095, file: !1178, line: 549, type: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!2105 = !DILocation(line: 0, scope: !2095)
!2106 = !DILocalVariable(name: "optype", arg: 1, scope: !2107, file: !1178, line: 713, type: !517)
!2107 = distinct !DISubprogram(name: "Perl_pad_alloc", scope: !1178, file: !1178, line: 713, type: !2108, scopeLine: 714, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{!738, !517, !448}
!2110 = !{!2106, !2111, !2112, !2113, !2114, !2119, !2121, !2123}
!2111 = !DILocalVariable(name: "tmptype", arg: 2, scope: !2107, file: !1178, line: 713, type: !448)
!2112 = !DILocalVariable(name: "sv", scope: !2107, file: !1178, line: 715, type: !441)
!2113 = !DILocalVariable(name: "retval", scope: !2107, file: !1178, line: 716, type: !517)
!2114 = !DILocalVariable(name: "names", scope: !2115, file: !1178, line: 736, type: !2117)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !1178, line: 731, column: 10)
!2116 = distinct !DILexicalBlock(scope: !2107, file: !1178, line: 726, column: 9)
!2117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2118)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!2119 = !DILocalVariable(name: "names_fill", scope: !2115, file: !1178, line: 737, type: !2120)
!2120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!2121 = !DILocalVariable(name: "konst", scope: !2115, file: !1178, line: 738, type: !2122)
!2122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!2123 = !DILocalVariable(name: "pn", scope: !2124, file: !1178, line: 751, type: !1029)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !1178, line: 740, column: 11)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !1178, line: 740, column: 2)
!2126 = distinct !DILexicalBlock(scope: !2115, file: !1178, line: 740, column: 2)
!2127 = !DILocation(line: 0, scope: !2107, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 549, column: 30, scope: !2095)
!2129 = !DILocation(line: 721, column: 9, scope: !2130, inlinedAt: !2128)
!2130 = distinct !DILexicalBlock(scope: !2107, file: !1178, line: 721, column: 9)
!2131 = !DILocation(line: 721, column: 32, scope: !2130, inlinedAt: !2128)
!2132 = !DILocation(line: 721, column: 29, scope: !2130, inlinedAt: !2128)
!2133 = !DILocation(line: 721, column: 9, scope: !2107, inlinedAt: !2128)
!2134 = !DILocation(line: 722, column: 2, scope: !2130, inlinedAt: !2128)
!2135 = !DILocation(line: 724, column: 9, scope: !2136, inlinedAt: !2128)
!2136 = distinct !DILexicalBlock(scope: !2107, file: !1178, line: 724, column: 9)
!2137 = !{i8 0, i8 2}
!2138 = !DILocation(line: 724, column: 9, scope: !2107, inlinedAt: !2128)
!2139 = !DILocation(line: 1662, column: 26, scope: !2140, inlinedAt: !2141)
!2140 = distinct !DISubprogram(name: "S_pad_reset", scope: !1178, file: !1178, line: 1644, type: !1682, scopeLine: 1645, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1292)
!2141 = distinct !DILocation(line: 725, column: 2, scope: !2136, inlinedAt: !2128)
!2142 = !DILocation(line: 725, column: 2, scope: !2136, inlinedAt: !2128)
!2143 = !DILocation(line: 728, column: 8, scope: !2144, inlinedAt: !2128)
!2144 = distinct !DILexicalBlock(scope: !2116, file: !1178, line: 726, column: 31)
!2145 = !DILocation(line: 729, column: 11, scope: !2144, inlinedAt: !2128)
!2146 = !DILocation(line: 773, column: 17, scope: !2107, inlinedAt: !2128)
!2147 = !DILocation(line: 773, column: 15, scope: !2107, inlinedAt: !2128)
!2148 = !DILocation(line: 783, column: 12, scope: !2107, inlinedAt: !2128)
!2149 = !DILocation(line: 555, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2095, file: !1178, line: 555, column: 9)
!2151 = !DILocation(line: 555, column: 9, scope: !2095)
!2152 = !DILocation(line: 556, column: 2, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2150, file: !1178, line: 555, column: 20)
!2154 = !DILocation(line: 558, column: 6, scope: !2153)
!2155 = !DILocation(line: 557, column: 2, scope: !2153)
!2156 = !DILocation(line: 557, column: 20, scope: !2153)
!2157 = !DILocation(line: 559, column: 5, scope: !2153)
!2158 = !DILocation(line: 560, column: 9, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2095, file: !1178, line: 560, column: 9)
!2160 = !DILocation(line: 560, column: 9, scope: !2095)
!2161 = !DILocation(line: 561, column: 2, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !1178, line: 560, column: 19)
!2163 = !DILocation(line: 562, column: 2, scope: !2162)
!2164 = !DILocation(line: 563, column: 2, scope: !2162)
!2165 = !DILocation(line: 564, column: 5, scope: !2162)
!2166 = !DILocation(line: 565, column: 20, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2159, file: !1178, line: 565, column: 14)
!2168 = !DILocation(line: 565, column: 14, scope: !2159)
!2169 = !DILocation(line: 566, column: 2, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2167, file: !1178, line: 565, column: 36)
!2171 = !DILocation(line: 567, column: 5, scope: !2170)
!2172 = !DILocation(line: 569, column: 5, scope: !2095)
!2173 = !DILocation(line: 0, scope: !1244, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 569, column: 5, scope: !2095)
!2175 = !DILocation(line: 2691, column: 20, scope: !1325, inlinedAt: !2174)
!2176 = !DILocation(line: 2691, column: 13, scope: !1325, inlinedAt: !2174)
!2177 = !DILocation(line: 2691, column: 9, scope: !1244, inlinedAt: !2174)
!2178 = !DILocation(line: 2692, column: 2, scope: !1325, inlinedAt: !2174)
!2179 = !DILocation(line: 2695, column: 9, scope: !1256, inlinedAt: !2174)
!2180 = !DILocation(line: 2695, column: 29, scope: !1256, inlinedAt: !2174)
!2181 = !DILocation(line: 2695, column: 9, scope: !1244, inlinedAt: !2174)
!2182 = !DILocation(line: 2696, column: 2, scope: !1255, inlinedAt: !2174)
!2183 = !DILocation(line: 2698, column: 22, scope: !1255, inlinedAt: !2174)
!2184 = !DILocation(line: 2699, column: 5, scope: !1255, inlinedAt: !2174)
!2185 = !DILocation(line: 2700, column: 11, scope: !1244, inlinedAt: !2174)
!2186 = !DILocation(line: 2701, column: 9, scope: !1260, inlinedAt: !2174)
!2187 = !DILocation(line: 2701, column: 9, scope: !1244, inlinedAt: !2174)
!2188 = !DILocation(line: 2702, column: 2, scope: !1260, inlinedAt: !2174)
!2189 = !DILocation(line: 2703, column: 14, scope: !1244, inlinedAt: !2174)
!2190 = !DILocation(line: 570, column: 9, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2095, file: !1178, line: 570, column: 9)
!2192 = !DILocation(line: 570, column: 26, scope: !2191)
!2193 = !DILocation(line: 570, column: 9, scope: !2095)
!2194 = !DILocation(line: 571, column: 2, scope: !2191)
!2195 = !DILocation(line: 571, column: 39, scope: !2191)
!2196 = !DILocation(line: 572, column: 5, scope: !2095)
!2197 = !DISubprogram(name: "Perl_sv_upgrade", scope: !1287, file: !1287, line: 4747, type: !2198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !898, !1049}
!2200 = distinct !DISubprogram(name: "Perl_pad_add_name_pv", scope: !1178, file: !1178, line: 657, type: !2201, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!738, !515, !909, !473, !473}
!2203 = !{!2204, !2205, !2206, !2207}
!2204 = !DILocalVariable(name: "name", arg: 1, scope: !2200, file: !1178, line: 657, type: !515)
!2205 = !DILocalVariable(name: "flags", arg: 2, scope: !2200, file: !1178, line: 658, type: !909)
!2206 = !DILocalVariable(name: "typestash", arg: 3, scope: !2200, file: !1178, line: 658, type: !473)
!2207 = !DILocalVariable(name: "ourstash", arg: 4, scope: !2200, file: !1178, line: 658, type: !473)
!2208 = !DILocation(line: 0, scope: !2200)
!2209 = !DILocation(line: 661, column: 12, scope: !2200)
!2210 = !DILocation(line: 661, column: 5, scope: !2200)
!2211 = distinct !DISubprogram(name: "Perl_pad_add_name_sv", scope: !1178, file: !1178, line: 674, type: !2212, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!738, !441, !448, !473, !473}
!2214 = !{!2215, !2216, !2217, !2218, !2219, !2220}
!2215 = !DILocalVariable(name: "name", arg: 1, scope: !2211, file: !1178, line: 674, type: !441)
!2216 = !DILocalVariable(name: "flags", arg: 2, scope: !2211, file: !1178, line: 674, type: !448)
!2217 = !DILocalVariable(name: "typestash", arg: 3, scope: !2211, file: !1178, line: 674, type: !473)
!2218 = !DILocalVariable(name: "ourstash", arg: 4, scope: !2211, file: !1178, line: 674, type: !473)
!2219 = !DILocalVariable(name: "namepv", scope: !2211, file: !1178, line: 676, type: !455)
!2220 = !DILocalVariable(name: "namelen", scope: !2211, file: !1178, line: 677, type: !603)
!2221 = !DILocation(line: 0, scope: !2211)
!2222 = !DILocation(line: 677, column: 5, scope: !2211)
!2223 = !DILocation(line: 679, column: 14, scope: !2211)
!2224 = !DILocation(line: 680, column: 12, scope: !2211)
!2225 = !DILocation(line: 681, column: 1, scope: !2211)
!2226 = !DILocation(line: 680, column: 5, scope: !2211)
!2227 = !DISubprogram(name: "Perl_sv_2pvutf8", scope: !1287, file: !1287, line: 4152, type: !2228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!455, !441, !2230}
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1817)
!2231 = !DILocation(line: 0, scope: !2107)
!2232 = !DILocation(line: 721, column: 9, scope: !2130)
!2233 = !DILocation(line: 721, column: 32, scope: !2130)
!2234 = !DILocation(line: 721, column: 29, scope: !2130)
!2235 = !DILocation(line: 721, column: 9, scope: !2107)
!2236 = !DILocation(line: 722, column: 2, scope: !2130)
!2237 = !DILocation(line: 724, column: 9, scope: !2136)
!2238 = !DILocation(line: 724, column: 9, scope: !2107)
!2239 = !DILocation(line: 1662, column: 26, scope: !2140, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 725, column: 2, scope: !2136)
!2241 = !DILocation(line: 725, column: 2, scope: !2136)
!2242 = !DILocation(line: 726, column: 17, scope: !2116)
!2243 = !DILocation(line: 726, column: 9, scope: !2107)
!2244 = !DILocation(line: 728, column: 8, scope: !2144)
!2245 = !DILocation(line: 728, column: 7, scope: !2144)
!2246 = !DILocation(line: 729, column: 11, scope: !2144)
!2247 = !DILocation(line: 730, column: 5, scope: !2144)
!2248 = !DILocation(line: 736, column: 34, scope: !2115)
!2249 = !DILocation(line: 0, scope: !2115)
!2250 = !DILocation(line: 737, column: 29, scope: !2115)
!2251 = !DILocation(line: 738, column: 21, scope: !2115)
!2252 = !DILocation(line: 739, column: 11, scope: !2115)
!2253 = !DILocation(line: 740, column: 2, scope: !2115)
!2254 = !DILocation(line: 752, column: 10, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2124, file: !1178, line: 752, column: 10)
!2256 = !DILocation(line: 752, column: 19, scope: !2255)
!2257 = !DILocation(line: 752, column: 33, scope: !2255)
!2258 = !DILocation(line: 753, column: 12, scope: !2255)
!2259 = !DILocation(line: 0, scope: !2124)
!2260 = !DILocation(line: 753, column: 10, scope: !2255)
!2261 = !DILocation(line: 753, column: 27, scope: !2255)
!2262 = !DILocation(line: 753, column: 30, scope: !2255)
!2263 = !DILocation(line: 752, column: 10, scope: !2124)
!2264 = distinct !{!2264, !2265, !2266, !1548}
!2265 = !DILocation(line: 740, column: 2, scope: !2126)
!2266 = !DILocation(line: 764, column: 2, scope: !2126)
!2267 = !DILocation(line: 755, column: 12, scope: !2124)
!2268 = !DILocation(line: 755, column: 11, scope: !2124)
!2269 = !DILocation(line: 756, column: 12, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2124, file: !1178, line: 756, column: 10)
!2271 = !DILocation(line: 0, scope: !2125)
!2272 = !DILocation(line: 765, column: 6, scope: !2115)
!2273 = !DILocation(line: 766, column: 6, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !1178, line: 765, column: 13)
!2275 = distinct !DILexicalBlock(scope: !2115, file: !1178, line: 765, column: 6)
!2276 = !DILocation(line: 0, scope: !1244, inlinedAt: !2277)
!2277 = distinct !DILocation(line: 766, column: 6, scope: !2274)
!2278 = !DILocation(line: 2691, column: 20, scope: !1325, inlinedAt: !2277)
!2279 = !DILocation(line: 2691, column: 13, scope: !1325, inlinedAt: !2277)
!2280 = !DILocation(line: 2691, column: 9, scope: !1244, inlinedAt: !2277)
!2281 = !DILocation(line: 2692, column: 2, scope: !1325, inlinedAt: !2277)
!2282 = !DILocation(line: 2695, column: 9, scope: !1256, inlinedAt: !2277)
!2283 = !DILocation(line: 2695, column: 29, scope: !1256, inlinedAt: !2277)
!2284 = !DILocation(line: 2695, column: 9, scope: !1244, inlinedAt: !2277)
!2285 = !DILocation(line: 2696, column: 2, scope: !1255, inlinedAt: !2277)
!2286 = !DILocation(line: 2698, column: 22, scope: !1255, inlinedAt: !2277)
!2287 = !DILocation(line: 2699, column: 5, scope: !1255, inlinedAt: !2277)
!2288 = !DILocation(line: 2700, column: 11, scope: !1244, inlinedAt: !2277)
!2289 = !DILocation(line: 2701, column: 9, scope: !1260, inlinedAt: !2277)
!2290 = !DILocation(line: 2701, column: 9, scope: !1244, inlinedAt: !2277)
!2291 = !DILocation(line: 2702, column: 2, scope: !1260, inlinedAt: !2277)
!2292 = !DILocation(line: 2703, column: 14, scope: !1244, inlinedAt: !2277)
!2293 = !DILocation(line: 767, column: 14, scope: !2274)
!2294 = !DILocation(line: 768, column: 14, scope: !2274)
!2295 = !DILocation(line: 769, column: 2, scope: !2274)
!2296 = !DILocation(line: 770, column: 40, scope: !2115)
!2297 = !DILocation(line: 773, column: 17, scope: !2107)
!2298 = !DILocation(line: 0, scope: !2116)
!2299 = !DILocation(line: 772, column: 5, scope: !2107)
!2300 = !DILocation(line: 772, column: 17, scope: !2107)
!2301 = !DILocation(line: 773, column: 15, scope: !2107)
!2302 = !DILocation(line: 783, column: 12, scope: !2107)
!2303 = !DILocation(line: 783, column: 5, scope: !2107)
!2304 = !DISubprogram(name: "Perl_av_fetch", scope: !1287, file: !1287, line: 226, type: !2305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!546, !527, !540, !517}
!2307 = distinct !DISubprogram(name: "Perl_pad_add_anon", scope: !1178, file: !1178, line: 805, type: !2308, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2310)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!738, !703, !517}
!2310 = !{!2311, !2312, !2313, !2314}
!2311 = !DILocalVariable(name: "func", arg: 1, scope: !2307, file: !1178, line: 805, type: !703)
!2312 = !DILocalVariable(name: "optype", arg: 2, scope: !2307, file: !1178, line: 805, type: !517)
!2313 = !DILocalVariable(name: "ix", scope: !2307, file: !1178, line: 807, type: !738)
!2314 = !DILocalVariable(name: "name", scope: !2307, file: !1178, line: 808, type: !1382)
!2315 = !DILocation(line: 0, scope: !2307)
!2316 = !DILocation(line: 0, scope: !1921, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 808, column: 28, scope: !2307)
!2318 = !DILocation(line: 2799, column: 5, scope: !1921, inlinedAt: !2317)
!2319 = !DILocation(line: 2804, column: 5, scope: !1921, inlinedAt: !2317)
!2320 = !DILocation(line: 2804, column: 23, scope: !1921, inlinedAt: !2317)
!2321 = !DILocation(line: 2805, column: 28, scope: !1921, inlinedAt: !2317)
!2322 = !DILocation(line: 2805, column: 19, scope: !1921, inlinedAt: !2317)
!2323 = !DILocation(line: 2806, column: 5, scope: !1921, inlinedAt: !2317)
!2324 = !DILocation(line: 2807, column: 21, scope: !1921, inlinedAt: !2317)
!2325 = !DILocation(line: 2807, column: 28, scope: !1921, inlinedAt: !2317)
!2326 = !DILocation(line: 2808, column: 5, scope: !1921, inlinedAt: !2317)
!2327 = !DILocation(line: 2808, column: 20, scope: !1921, inlinedAt: !2317)
!2328 = !DILocation(line: 0, scope: !2107, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 818, column: 10, scope: !2307)
!2330 = !DILocation(line: 721, column: 9, scope: !2130, inlinedAt: !2329)
!2331 = !DILocation(line: 721, column: 32, scope: !2130, inlinedAt: !2329)
!2332 = !DILocation(line: 721, column: 29, scope: !2130, inlinedAt: !2329)
!2333 = !DILocation(line: 721, column: 9, scope: !2107, inlinedAt: !2329)
!2334 = !DILocation(line: 722, column: 2, scope: !2130, inlinedAt: !2329)
!2335 = !DILocation(line: 724, column: 9, scope: !2136, inlinedAt: !2329)
!2336 = !DILocation(line: 724, column: 9, scope: !2107, inlinedAt: !2329)
!2337 = !DILocation(line: 1662, column: 26, scope: !2140, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 725, column: 2, scope: !2136, inlinedAt: !2329)
!2339 = !DILocation(line: 725, column: 2, scope: !2136, inlinedAt: !2329)
!2340 = !DILocation(line: 728, column: 8, scope: !2144, inlinedAt: !2329)
!2341 = !DILocation(line: 729, column: 11, scope: !2144, inlinedAt: !2329)
!2342 = !DILocation(line: 773, column: 17, scope: !2107, inlinedAt: !2329)
!2343 = !DILocation(line: 773, column: 15, scope: !2107, inlinedAt: !2329)
!2344 = !DILocation(line: 783, column: 12, scope: !2107, inlinedAt: !2329)
!2345 = !DILocation(line: 819, column: 5, scope: !2307)
!2346 = !DILocation(line: 0, scope: !1244, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 819, column: 5, scope: !2307)
!2348 = !DILocation(line: 2691, column: 20, scope: !1325, inlinedAt: !2347)
!2349 = !DILocation(line: 2691, column: 13, scope: !1325, inlinedAt: !2347)
!2350 = !DILocation(line: 2691, column: 9, scope: !1244, inlinedAt: !2347)
!2351 = !DILocation(line: 2692, column: 2, scope: !1325, inlinedAt: !2347)
!2352 = !DILocation(line: 2695, column: 9, scope: !1256, inlinedAt: !2347)
!2353 = !DILocation(line: 2695, column: 29, scope: !1256, inlinedAt: !2347)
!2354 = !DILocation(line: 2695, column: 9, scope: !1244, inlinedAt: !2347)
!2355 = !DILocation(line: 2696, column: 2, scope: !1255, inlinedAt: !2347)
!2356 = !DILocation(line: 2698, column: 22, scope: !1255, inlinedAt: !2347)
!2357 = !DILocation(line: 2699, column: 5, scope: !1255, inlinedAt: !2347)
!2358 = !DILocation(line: 2700, column: 11, scope: !1244, inlinedAt: !2347)
!2359 = !DILocation(line: 2701, column: 9, scope: !1260, inlinedAt: !2347)
!2360 = !DILocation(line: 2701, column: 9, scope: !1244, inlinedAt: !2347)
!2361 = !DILocation(line: 2702, column: 2, scope: !1260, inlinedAt: !2347)
!2362 = !DILocation(line: 2703, column: 14, scope: !1244, inlinedAt: !2347)
!2363 = !DILocation(line: 821, column: 5, scope: !2307)
!2364 = !DILocation(line: 825, column: 9, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2307, file: !1178, line: 825, column: 9)
!2366 = !DILocation(line: 825, column: 9, scope: !2307)
!2367 = !DILocation(line: 827, column: 2, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2365, file: !1178, line: 825, column: 26)
!2369 = !DILocation(line: 828, column: 2, scope: !2368)
!2370 = !DILocation(line: 0, scope: !1516, inlinedAt: !2371)
!2371 = distinct !DILocation(line: 828, column: 2, scope: !2368)
!2372 = !DILocation(line: 173, column: 14, scope: !1516, inlinedAt: !2371)
!2373 = !DILocation(line: 174, column: 9, scope: !1526, inlinedAt: !2371)
!2374 = !DILocation(line: 174, column: 9, scope: !1516, inlinedAt: !2371)
!2375 = !DILocation(line: 175, column: 20, scope: !1526, inlinedAt: !2371)
!2376 = !DILocation(line: 175, column: 15, scope: !1526, inlinedAt: !2371)
!2377 = !DILocation(line: 175, column: 2, scope: !1526, inlinedAt: !2371)
!2378 = !DILocation(line: 177, column: 2, scope: !1526, inlinedAt: !2371)
!2379 = !DILocation(line: 830, column: 5, scope: !2307)
!2380 = distinct !DISubprogram(name: "Perl_pad_add_weakref", scope: !1178, file: !1178, line: 834, type: !772, scopeLine: 835, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2381)
!2381 = !{!2382, !2383, !2384, !2385}
!2382 = !DILocalVariable(name: "func", arg: 1, scope: !2380, file: !1178, line: 834, type: !703)
!2383 = !DILocalVariable(name: "ix", scope: !2380, file: !1178, line: 836, type: !2104)
!2384 = !DILocalVariable(name: "name", scope: !2380, file: !1178, line: 837, type: !1382)
!2385 = !DILocalVariable(name: "rv", scope: !2380, file: !1178, line: 838, type: !898)
!2386 = !DILocation(line: 0, scope: !2380)
!2387 = !DILocation(line: 0, scope: !2107, inlinedAt: !2388)
!2388 = distinct !DILocation(line: 836, column: 26, scope: !2380)
!2389 = !DILocation(line: 721, column: 9, scope: !2130, inlinedAt: !2388)
!2390 = !DILocation(line: 721, column: 32, scope: !2130, inlinedAt: !2388)
!2391 = !DILocation(line: 721, column: 29, scope: !2130, inlinedAt: !2388)
!2392 = !DILocation(line: 721, column: 9, scope: !2107, inlinedAt: !2388)
!2393 = !DILocation(line: 722, column: 2, scope: !2130, inlinedAt: !2388)
!2394 = !DILocation(line: 724, column: 9, scope: !2136, inlinedAt: !2388)
!2395 = !DILocation(line: 724, column: 9, scope: !2107, inlinedAt: !2388)
!2396 = !DILocation(line: 1662, column: 26, scope: !2140, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 725, column: 2, scope: !2136, inlinedAt: !2388)
!2398 = !DILocation(line: 725, column: 2, scope: !2136, inlinedAt: !2388)
!2399 = !DILocation(line: 728, column: 8, scope: !2144, inlinedAt: !2388)
!2400 = !DILocation(line: 729, column: 11, scope: !2144, inlinedAt: !2388)
!2401 = !DILocation(line: 773, column: 17, scope: !2107, inlinedAt: !2388)
!2402 = !DILocation(line: 773, column: 15, scope: !2107, inlinedAt: !2388)
!2403 = !DILocation(line: 783, column: 12, scope: !2107, inlinedAt: !2388)
!2404 = !DILocation(line: 0, scope: !1921, inlinedAt: !2405)
!2405 = distinct !DILocation(line: 837, column: 28, scope: !2380)
!2406 = !DILocation(line: 2799, column: 5, scope: !1921, inlinedAt: !2405)
!2407 = !DILocation(line: 2804, column: 5, scope: !1921, inlinedAt: !2405)
!2408 = !DILocation(line: 2804, column: 23, scope: !1921, inlinedAt: !2405)
!2409 = !DILocation(line: 2805, column: 28, scope: !1921, inlinedAt: !2405)
!2410 = !DILocation(line: 2805, column: 19, scope: !1921, inlinedAt: !2405)
!2411 = !DILocation(line: 2806, column: 5, scope: !1921, inlinedAt: !2405)
!2412 = !DILocation(line: 2807, column: 21, scope: !1921, inlinedAt: !2405)
!2413 = !DILocation(line: 2807, column: 28, scope: !1921, inlinedAt: !2405)
!2414 = !DILocation(line: 2808, column: 5, scope: !1921, inlinedAt: !2405)
!2415 = !DILocation(line: 2808, column: 20, scope: !1921, inlinedAt: !2405)
!2416 = !DILocation(line: 838, column: 21, scope: !2380)
!2417 = !DILocation(line: 846, column: 5, scope: !2380)
!2418 = !DILocation(line: 0, scope: !1244, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 846, column: 5, scope: !2380)
!2420 = !DILocation(line: 2691, column: 20, scope: !1325, inlinedAt: !2419)
!2421 = !DILocation(line: 2691, column: 13, scope: !1325, inlinedAt: !2419)
!2422 = !DILocation(line: 2691, column: 9, scope: !1244, inlinedAt: !2419)
!2423 = !DILocation(line: 2692, column: 2, scope: !1325, inlinedAt: !2419)
!2424 = !DILocation(line: 2695, column: 9, scope: !1256, inlinedAt: !2419)
!2425 = !DILocation(line: 2695, column: 29, scope: !1256, inlinedAt: !2419)
!2426 = !DILocation(line: 2695, column: 9, scope: !1244, inlinedAt: !2419)
!2427 = !DILocation(line: 2696, column: 2, scope: !1255, inlinedAt: !2419)
!2428 = !DILocation(line: 2698, column: 22, scope: !1255, inlinedAt: !2419)
!2429 = !DILocation(line: 2699, column: 5, scope: !1255, inlinedAt: !2419)
!2430 = !DILocation(line: 2700, column: 11, scope: !1244, inlinedAt: !2419)
!2431 = !DILocation(line: 2701, column: 9, scope: !1260, inlinedAt: !2419)
!2432 = !DILocation(line: 2701, column: 9, scope: !1244, inlinedAt: !2419)
!2433 = !DILocation(line: 2702, column: 2, scope: !1260, inlinedAt: !2419)
!2434 = !DILocation(line: 2703, column: 14, scope: !1244, inlinedAt: !2419)
!2435 = !DILocation(line: 847, column: 5, scope: !2380)
!2436 = !DILocation(line: 848, column: 5, scope: !2380)
!2437 = !DILocation(line: 849, column: 1, scope: !2380)
!2438 = !DISubprogram(name: "Perl_newRV", scope: !1287, file: !1287, line: 3027, type: !2439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!441, !898}
!2441 = !DISubprogram(name: "Perl_sv_rvweaken", scope: !1287, file: !1287, line: 4577, type: !2439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!2442 = distinct !DISubprogram(name: "Perl_pad_findmy_pvn", scope: !1178, file: !1178, line: 950, type: !2443, scopeLine: 951, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!738, !515, !603, !448}
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2455, !2456}
!2446 = !DILocalVariable(name: "namepv", arg: 1, scope: !2442, file: !1178, line: 950, type: !515)
!2447 = !DILocalVariable(name: "namelen", arg: 2, scope: !2442, file: !1178, line: 950, type: !603)
!2448 = !DILocalVariable(name: "flags", arg: 3, scope: !2442, file: !1178, line: 950, type: !448)
!2449 = !DILocalVariable(name: "out_pn", scope: !2442, file: !1178, line: 952, type: !1029)
!2450 = !DILocalVariable(name: "out_flags", scope: !2442, file: !1178, line: 953, type: !503)
!2451 = !DILocalVariable(name: "offset", scope: !2442, file: !1178, line: 954, type: !517)
!2452 = !DILocalVariable(name: "namelist", scope: !2442, file: !1178, line: 955, type: !2453)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1023)
!2455 = !DILocalVariable(name: "name_p", scope: !2442, file: !1178, line: 956, type: !1028)
!2456 = !DILocalVariable(name: "name", scope: !2457, file: !1178, line: 986, type: !2460)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !1178, line: 985, column: 72)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !1178, line: 985, column: 5)
!2459 = distinct !DILexicalBlock(scope: !2442, file: !1178, line: 985, column: 5)
!2460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2461)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!2463 = !DILocation(line: 0, scope: !2442)
!2464 = !DILocation(line: 952, column: 5, scope: !2442)
!2465 = !DILocation(line: 953, column: 5, scope: !2442)
!2466 = !DILocation(line: 962, column: 9, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2442, file: !1178, line: 962, column: 9)
!2468 = !DILocation(line: 962, column: 9, scope: !2442)
!2469 = !DILocation(line: 964, column: 6, scope: !2467)
!2470 = !DILocation(line: 963, column: 2, scope: !2467)
!2471 = !DILocation(line: 967, column: 10, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2442, file: !1178, line: 967, column: 9)
!2473 = !DILocation(line: 967, column: 9, scope: !2442)
!2474 = !DILocation(line: 970, column: 14, scope: !2442)
!2475 = !DILocation(line: 972, column: 9, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2442, file: !1178, line: 972, column: 9)
!2477 = !DILocation(line: 972, column: 27, scope: !2476)
!2478 = !DILocation(line: 972, column: 9, scope: !2442)
!2479 = !DILocation(line: 973, column: 2, scope: !2476)
!2480 = !DILocation(line: 977, column: 9, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2442, file: !1178, line: 977, column: 9)
!2482 = !DILocation(line: 977, column: 17, scope: !2481)
!2483 = !DILocation(line: 977, column: 9, scope: !2442)
!2484 = !DILocation(line: 983, column: 16, scope: !2442)
!2485 = !DILocation(line: 984, column: 14, scope: !2442)
!2486 = !DILocation(line: 985, column: 19, scope: !2459)
!2487 = !DILocation(line: 985, column: 57, scope: !2458)
!2488 = !DILocation(line: 985, column: 5, scope: !2459)
!2489 = !DILocation(line: 986, column: 38, scope: !2457)
!2490 = !DILocation(line: 0, scope: !2457)
!2491 = !DILocation(line: 987, column: 13, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2457, file: !1178, line: 987, column: 13)
!2493 = !DILocation(line: 987, column: 18, scope: !2492)
!2494 = !DILocation(line: 987, column: 21, scope: !2492)
!2495 = !DILocation(line: 987, column: 38, scope: !2492)
!2496 = !DILocation(line: 988, column: 13, scope: !2492)
!2497 = !DILocation(line: 988, column: 17, scope: !2492)
!2498 = !DILocation(line: 989, column: 13, scope: !2492)
!2499 = !DILocation(line: 989, column: 17, scope: !2492)
!2500 = !DILocation(line: 990, column: 13, scope: !2492)
!2501 = !DILocation(line: 990, column: 19, scope: !2492)
!2502 = !DILocation(line: 990, column: 35, scope: !2492)
!2503 = !DILocation(line: 991, column: 16, scope: !2492)
!2504 = !DILocation(line: 991, column: 19, scope: !2492)
!2505 = !DILocation(line: 992, column: 13, scope: !2492)
!2506 = !DILocation(line: 992, column: 16, scope: !2492)
!2507 = !DILocation(line: 992, column: 40, scope: !2492)
!2508 = !DILocation(line: 987, column: 13, scope: !2457)
!2509 = !DILocation(line: 985, column: 68, scope: !2458)
!2510 = distinct !{!2510, !2488, !2511, !1547, !1548}
!2511 = !DILocation(line: 995, column: 5, scope: !2459)
!2512 = !DILocation(line: 997, column: 1, scope: !2442)
!2513 = distinct !DISubprogram(name: "S_pad_findlex", scope: !1178, file: !1178, line: 1143, type: !2514, scopeLine: 1145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2517)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!738, !515, !603, !448, !1062, !448, !503, !546, !1028, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2533, !2534, !2537, !2539, !2540, !2544, !2551, !2554, !2556, !2557}
!2518 = !DILocalVariable(name: "namepv", arg: 1, scope: !2513, file: !1178, line: 1143, type: !515)
!2519 = !DILocalVariable(name: "namelen", arg: 2, scope: !2513, file: !1178, line: 1143, type: !603)
!2520 = !DILocalVariable(name: "flags", arg: 3, scope: !2513, file: !1178, line: 1143, type: !448)
!2521 = !DILocalVariable(name: "cv", arg: 4, scope: !2513, file: !1178, line: 1143, type: !1062)
!2522 = !DILocalVariable(name: "seq", arg: 5, scope: !2513, file: !1178, line: 1143, type: !448)
!2523 = !DILocalVariable(name: "Perl_warn", arg: 6, scope: !2513, file: !1178, line: 1144, type: !503)
!2524 = !DILocalVariable(name: "out_capture", arg: 7, scope: !2513, file: !1178, line: 1144, type: !546)
!2525 = !DILocalVariable(name: "out_name", arg: 8, scope: !2513, file: !1178, line: 1144, type: !1028)
!2526 = !DILocalVariable(name: "out_flags", arg: 9, scope: !2513, file: !1178, line: 1144, type: !2516)
!2527 = !DILocalVariable(name: "offset", scope: !2513, file: !1178, line: 1146, type: !517)
!2528 = !DILocalVariable(name: "new_offset", scope: !2513, file: !1178, line: 1146, type: !517)
!2529 = !DILocalVariable(name: "new_capture", scope: !2513, file: !1178, line: 1147, type: !441)
!2530 = !DILocalVariable(name: "new_capturep", scope: !2513, file: !1178, line: 1148, type: !546)
!2531 = !DILocalVariable(name: "padlist", scope: !2513, file: !1178, line: 1149, type: !2532)
!2532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1364)
!2533 = !DILocalVariable(name: "staleok", scope: !2513, file: !1178, line: 1150, type: !2122)
!2534 = !DILocalVariable(name: "fake_offset", scope: !2535, file: !1178, line: 1169, type: !517)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !1178, line: 1168, column: 18)
!2536 = distinct !DILexicalBlock(scope: !2513, file: !1178, line: 1168, column: 9)
!2537 = !DILocalVariable(name: "names", scope: !2535, file: !1178, line: 1170, type: !2538)
!2538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2539 = !DILocalVariable(name: "name_p", scope: !2535, file: !1178, line: 1171, type: !2117)
!2540 = !DILocalVariable(name: "name", scope: !2541, file: !1178, line: 1174, type: !2460)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !1178, line: 1173, column: 66)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !1178, line: 1173, column: 2)
!2543 = distinct !DILexicalBlock(scope: !2535, file: !1178, line: 1173, column: 2)
!2544 = !DILocalVariable(name: "newwarn", scope: !2545, file: !1178, line: 1246, type: !503)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !1178, line: 1245, column: 8)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !1178, line: 1233, column: 7)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !1178, line: 1224, column: 23)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !1178, line: 1224, column: 10)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !1178, line: 1188, column: 38)
!2550 = distinct !DILexicalBlock(scope: !2535, file: !1178, line: 1188, column: 6)
!2551 = !DILocalVariable(name: "n", scope: !2552, file: !1178, line: 1262, type: !1029)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !1178, line: 1261, column: 7)
!2553 = distinct !DILexicalBlock(scope: !2545, file: !1178, line: 1259, column: 11)
!2554 = !DILocalVariable(name: "new_name", scope: !2555, file: !1178, line: 1331, type: !1029)
!2555 = distinct !DILexicalBlock(scope: !2513, file: !1178, line: 1330, column: 5)
!2556 = !DILocalVariable(name: "ocomppad_name", scope: !2555, file: !1178, line: 1332, type: !1372)
!2557 = !DILocalVariable(name: "ocomppad", scope: !2555, file: !1178, line: 1333, type: !1376)
!2558 = !DILocation(line: 0, scope: !2513)
!2559 = !DILocation(line: 1147, column: 5, scope: !2513)
!2560 = !DILocation(line: 1149, column: 37, scope: !2513)
!2561 = !DILocation(line: 1150, column: 35, scope: !2513)
!2562 = !DILocation(line: 1150, column: 27, scope: !2513)
!2563 = !DILocation(line: 1154, column: 11, scope: !2513)
!2564 = !DILocation(line: 1155, column: 9, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2513, file: !1178, line: 1155, column: 9)
!2566 = !DILocation(line: 1155, column: 9, scope: !2513)
!2567 = !DILocation(line: 1157, column: 6, scope: !2565)
!2568 = !DILocation(line: 1156, column: 2, scope: !2565)
!2569 = !DILocation(line: 1159, column: 16, scope: !2513)
!2570 = !DILocation(line: 1168, column: 9, scope: !2536)
!2571 = !DILocation(line: 1168, column: 9, scope: !2513)
!2572 = !DILocation(line: 0, scope: !2535)
!2573 = !DILocation(line: 1170, column: 43, scope: !2535)
!2574 = !DILocation(line: 1171, column: 35, scope: !2535)
!2575 = !DILocation(line: 1173, column: 16, scope: !2543)
!2576 = !DILocation(line: 1173, column: 51, scope: !2542)
!2577 = !DILocation(line: 1173, column: 2, scope: !2543)
!2578 = !DILocation(line: 1174, column: 42, scope: !2541)
!2579 = !DILocation(line: 0, scope: !2541)
!2580 = !DILocation(line: 1175, column: 17, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2541, file: !1178, line: 1175, column: 17)
!2582 = !DILocation(line: 1175, column: 22, scope: !2581)
!2583 = !DILocation(line: 1175, column: 25, scope: !2581)
!2584 = !DILocation(line: 1175, column: 42, scope: !2581)
!2585 = !DILocation(line: 1176, column: 22, scope: !2581)
!2586 = !DILocation(line: 1176, column: 28, scope: !2581)
!2587 = !DILocation(line: 1176, column: 44, scope: !2581)
!2588 = !DILocation(line: 1177, column: 25, scope: !2581)
!2589 = !DILocation(line: 1177, column: 28, scope: !2581)
!2590 = !DILocation(line: 1175, column: 17, scope: !2541)
!2591 = !DILocation(line: 1179, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !1178, line: 1179, column: 7)
!2593 = distinct !DILexicalBlock(scope: !2581, file: !1178, line: 1178, column: 6)
!2594 = !DILocation(line: 1179, column: 7, scope: !2593)
!2595 = !DILocalVariable(name: "pn", arg: 1, scope: !2596, file: !1517, line: 97, type: !2460)
!2596 = distinct !DISubprogram(name: "PadnameIN_SCOPE", scope: !1517, file: !1517, line: 97, type: !2597, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2599)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!760, !2460, !909}
!2599 = !{!2595, !2600}
!2600 = !DILocalVariable(name: "seq", arg: 2, scope: !2596, file: !1517, line: 97, type: !909)
!2601 = !DILocation(line: 0, scope: !2596, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 1183, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2593, file: !1178, line: 1183, column: 7)
!2604 = !DILocation(line: 102, column: 9, scope: !2605, inlinedAt: !2602)
!2605 = distinct !DILexicalBlock(scope: !2596, file: !1517, line: 102, column: 9)
!2606 = !DILocation(line: 102, column: 31, scope: !2605, inlinedAt: !2602)
!2607 = !DILocation(line: 102, column: 9, scope: !2596, inlinedAt: !2602)
!2608 = !DILocation(line: 105, column: 9, scope: !2609, inlinedAt: !2602)
!2609 = distinct !DILexicalBlock(scope: !2596, file: !1517, line: 105, column: 9)
!2610 = !DILocation(line: 105, column: 32, scope: !2609, inlinedAt: !2602)
!2611 = !DILocation(line: 105, column: 9, scope: !2596, inlinedAt: !2602)
!2612 = !DILocation(line: 108, column: 11, scope: !2613, inlinedAt: !2602)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !1517, line: 108, column: 6)
!2614 = distinct !DILexicalBlock(scope: !2609, file: !1517, line: 105, column: 54)
!2615 = !DILocation(line: 108, column: 6, scope: !2614, inlinedAt: !2602)
!2616 = !DILocation(line: 109, column: 13, scope: !2613, inlinedAt: !2602)
!2617 = !DILocation(line: 109, column: 37, scope: !2613, inlinedAt: !2602)
!2618 = !DILocation(line: 108, column: 6, scope: !2613, inlinedAt: !2602)
!2619 = !DILocation(line: 110, column: 31, scope: !2613, inlinedAt: !2602)
!2620 = !DILocation(line: 110, column: 37, scope: !2613, inlinedAt: !2602)
!2621 = !DILocation(line: 115, column: 25, scope: !2622, inlinedAt: !2602)
!2622 = distinct !DILexicalBlock(scope: !2609, file: !1517, line: 115, column: 2)
!2623 = !DILocation(line: 0, scope: !2622, inlinedAt: !2602)
!2624 = !DILocation(line: 115, column: 2, scope: !2609, inlinedAt: !2602)
!2625 = !DILocation(line: 118, column: 6, scope: !2622, inlinedAt: !2602)
!2626 = !DILocation(line: 121, column: 7, scope: !2622, inlinedAt: !2602)
!2627 = !DILocation(line: 1173, column: 62, scope: !2542)
!2628 = distinct !{!2628, !2577, !2629, !1547, !1548}
!2629 = !DILocation(line: 1186, column: 2, scope: !2543)
!2630 = !DILocation(line: 1188, column: 17, scope: !2550)
!2631 = !DILocation(line: 1191, column: 15, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !1178, line: 1189, column: 22)
!2633 = distinct !DILexicalBlock(scope: !2549, file: !1178, line: 1189, column: 10)
!2634 = !DILocation(line: 1191, column: 13, scope: !2632)
!2635 = !DILocation(line: 1200, column: 16, scope: !2632)
!2636 = !DILocation(line: 1202, column: 10, scope: !2632)
!2637 = !DILocation(line: 1202, column: 23, scope: !2632)
!2638 = !DILocation(line: 1202, column: 28, scope: !2632)
!2639 = !DILocation(line: 1202, column: 26, scope: !2632)
!2640 = !DILocation(line: 1202, column: 8, scope: !2632)
!2641 = !DILocation(line: 1213, column: 15, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2633, file: !1178, line: 1211, column: 11)
!2643 = !DILocation(line: 1213, column: 13, scope: !2642)
!2644 = !DILocation(line: 1214, column: 16, scope: !2642)
!2645 = !DILocation(line: 0, scope: !2633)
!2646 = !DILocation(line: 1224, column: 10, scope: !2548)
!2647 = !DILocation(line: 1224, column: 10, scope: !2549)
!2648 = !DILocation(line: 1302, column: 13, scope: !2549)
!2649 = !DILocation(line: 1227, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2547, file: !1178, line: 1227, column: 7)
!2651 = !DILocation(line: 1227, column: 7, scope: !2547)
!2652 = !DILocation(line: 1228, column: 20, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !1178, line: 1227, column: 32)
!2654 = !DILocation(line: 1229, column: 14, scope: !2653)
!2655 = !DILocation(line: 1233, column: 7, scope: !2546)
!2656 = !DILocation(line: 1233, column: 7, scope: !2547)
!2657 = !DILocation(line: 1234, column: 6, scope: !2546)
!2658 = !DILocation(line: 1234, column: 17, scope: !2546)
!2659 = !DILocation(line: 1235, column: 17, scope: !2546)
!2660 = !DILocation(line: 1237, column: 11, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2662, file: !1178, line: 1237, column: 11)
!2662 = distinct !DILexicalBlock(scope: !2546, file: !1178, line: 1236, column: 3)
!2663 = !DILocation(line: 1237, column: 11, scope: !2662)
!2664 = !DILocation(line: 0, scope: !2545)
!2665 = !DILocation(line: 1247, column: 42, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2545, file: !1178, line: 1247, column: 11)
!2667 = !DILocation(line: 1248, column: 5, scope: !2666)
!2668 = !DILocation(line: 1248, column: 9, scope: !2666)
!2669 = !DILocation(line: 1249, column: 5, scope: !2666)
!2670 = !DILocation(line: 1249, column: 16, scope: !2666)
!2671 = !DILocation(line: 1247, column: 11, scope: !2545)
!2672 = !DILocation(line: 1255, column: 9, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2666, file: !1178, line: 1249, column: 38)
!2674 = !DILocation(line: 1255, column: 17, scope: !2673)
!2675 = !DILocation(line: 1253, column: 4, scope: !2673)
!2676 = !DILocation(line: 1257, column: 7, scope: !2673)
!2677 = !DILocation(line: 1259, column: 23, scope: !2553)
!2678 = !DILocation(line: 1259, column: 26, scope: !2553)
!2679 = !DILocation(line: 1260, column: 8, scope: !2553)
!2680 = !DILocation(line: 1275, column: 22, scope: !2545)
!2681 = !DILocalVariable(name: "sv", arg: 1, scope: !2682, file: !1517, line: 37, type: !2685)
!2682 = distinct !DISubprogram(name: "S_CvDEPTHp", scope: !1517, file: !1517, line: 37, type: !2683, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2686)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!1005, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1062)
!2686 = !{!2681}
!2687 = !DILocation(line: 0, scope: !2682, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1275, column: 22, scope: !2545)
!2689 = !DILocation(line: 40, column: 34, scope: !2682, inlinedAt: !2688)
!2690 = !DILocation(line: 1275, column: 20, scope: !2545)
!2691 = !DILocation(line: 1281, column: 11, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2545, file: !1178, line: 1281, column: 11)
!2693 = !DILocation(line: 1282, column: 4, scope: !2692)
!2694 = !DILocation(line: 1282, column: 9, scope: !2692)
!2695 = !DILocation(line: 0, scope: !2682, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1282, column: 9, scope: !2692)
!2697 = !DILocation(line: 40, column: 34, scope: !2682, inlinedAt: !2696)
!2698 = !DILocation(line: 1282, column: 21, scope: !2692)
!2699 = !DILocation(line: 1283, column: 8, scope: !2692)
!2700 = !DILocation(line: 1281, column: 11, scope: !2545)
!2701 = !DILocation(line: 0, scope: !2546)
!2702 = !DILocation(line: 1291, column: 19, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !1178, line: 1291, column: 11)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !1178, line: 1290, column: 22)
!2705 = distinct !DILexicalBlock(scope: !2547, file: !1178, line: 1290, column: 7)
!2706 = !DILocation(line: 1291, column: 24, scope: !2703)
!2707 = !DILocation(line: 1291, column: 27, scope: !2703)
!2708 = !DILocation(line: 1291, column: 11, scope: !2704)
!2709 = !DILocation(line: 1292, column: 19, scope: !2703)
!2710 = !DILocation(line: 1292, column: 17, scope: !2703)
!2711 = !DILocation(line: 1294, column: 19, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2703, file: !1178, line: 1293, column: 16)
!2713 = !DILocation(line: 1294, column: 17, scope: !2712)
!2714 = !DILocation(line: 1296, column: 19, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !1178, line: 1295, column: 16)
!2716 = !DILocation(line: 1296, column: 17, scope: !2715)
!2717 = !DILocation(line: 1298, column: 19, scope: !2715)
!2718 = !DILocation(line: 1298, column: 17, scope: !2715)
!2719 = !DILocation(line: 1267, column: 8, scope: !2552)
!2720 = !DILocation(line: 0, scope: !2552)
!2721 = !DILocation(line: 1268, column: 11, scope: !2552)
!2722 = !DILocation(line: 1271, column: 14, scope: !2552)
!2723 = !DILocation(line: 1272, column: 11, scope: !2552)
!2724 = !DILocation(line: 1308, column: 10, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2513, file: !1178, line: 1308, column: 9)
!2726 = !DILocation(line: 1308, column: 9, scope: !2513)
!2727 = !DILocation(line: 1313, column: 20, scope: !2513)
!2728 = !DILocation(line: 1314, column: 3, scope: !2513)
!2729 = !DILocation(line: 1316, column: 14, scope: !2513)
!2730 = !DILocation(line: 1320, column: 27, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2513, file: !1178, line: 1320, column: 9)
!2732 = !DILocation(line: 1320, column: 9, scope: !2513)
!2733 = !DILocation(line: 1327, column: 9, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2513, file: !1178, line: 1327, column: 9)
!2735 = !DILocation(line: 1327, column: 24, scope: !2734)
!2736 = !DILocation(line: 1331, column: 38, scope: !2555)
!2737 = !DILocalVariable(name: "outer", arg: 1, scope: !2738, file: !1178, line: 2824, type: !1029)
!2738 = distinct !DISubprogram(name: "Perl_newPADNAMEouter", scope: !1178, file: !1178, line: 2824, type: !2739, scopeLine: 2825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!1029, !1029}
!2741 = !{!2737, !2742}
!2742 = !DILocalVariable(name: "pn", scope: !2738, file: !1178, line: 2826, type: !1029)
!2743 = !DILocation(line: 0, scope: !2738, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1331, column: 22, scope: !2555)
!2745 = !DILocation(line: 2828, column: 5, scope: !2738, inlinedAt: !2744)
!2746 = !DILocation(line: 2829, column: 5, scope: !2738, inlinedAt: !2744)
!2747 = !DILocation(line: 2829, column: 23, scope: !2738, inlinedAt: !2744)
!2748 = !DILocation(line: 2830, column: 21, scope: !2738, inlinedAt: !2744)
!2749 = !DILocation(line: 2830, column: 19, scope: !2738, inlinedAt: !2744)
!2750 = !DILocation(line: 2833, column: 5, scope: !2738, inlinedAt: !2744)
!2751 = !DILocation(line: 2833, column: 53, scope: !2738, inlinedAt: !2744)
!2752 = !DILocation(line: 2834, column: 5, scope: !2738, inlinedAt: !2744)
!2753 = !DILocation(line: 2834, column: 22, scope: !2738, inlinedAt: !2744)
!2754 = !DILocation(line: 2835, column: 22, scope: !2738, inlinedAt: !2744)
!2755 = !DILocation(line: 2835, column: 5, scope: !2738, inlinedAt: !2744)
!2756 = !DILocation(line: 2835, column: 20, scope: !2738, inlinedAt: !2744)
!2757 = !DILocation(line: 0, scope: !2555)
!2758 = !DILocation(line: 1332, column: 38, scope: !2555)
!2759 = !DILocation(line: 1333, column: 25, scope: !2555)
!2760 = !DILocation(line: 1334, column: 20, scope: !2555)
!2761 = !DILocation(line: 1334, column: 18, scope: !2555)
!2762 = !DILocation(line: 1335, column: 15, scope: !2555)
!2763 = !DILocation(line: 1335, column: 13, scope: !2555)
!2764 = !DILocation(line: 1336, column: 14, scope: !2555)
!2765 = !DILocation(line: 1336, column: 12, scope: !2555)
!2766 = !DILocation(line: 1339, column: 8, scope: !2555)
!2767 = !DILocation(line: 1350, column: 2, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2555, file: !1178, line: 1350, column: 2)
!2769 = !DILocation(line: 1352, column: 2, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2555, file: !1178, line: 1352, column: 2)
!2771 = !DILocation(line: 1353, column: 6, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2555, file: !1178, line: 1353, column: 6)
!2773 = !DILocation(line: 1353, column: 6, scope: !2555)
!2774 = !DILocation(line: 1356, column: 11, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2772, file: !1178, line: 1356, column: 11)
!2776 = !DILocation(line: 1356, column: 11, scope: !2772)
!2777 = !DILocation(line: 1358, column: 6, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !1178, line: 1358, column: 6)
!2779 = distinct !DILexicalBlock(scope: !2775, file: !1178, line: 1356, column: 23)
!2780 = !DILocation(line: 1359, column: 6, scope: !2779)
!2781 = !DILocation(line: 1360, column: 2, scope: !2779)
!2782 = !DILocation(line: 1363, column: 6, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2775, file: !1178, line: 1361, column: 7)
!2784 = !DILocalVariable(name: "sv", arg: 1, scope: !2785, file: !1517, line: 140, type: !441)
!2785 = distinct !DISubprogram(name: "S_SvREFCNT_inc", scope: !1517, file: !1517, line: 140, type: !2786, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!441, !441}
!2788 = !{!2784}
!2789 = !DILocation(line: 0, scope: !2785, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1363, column: 6, scope: !2783)
!2791 = !DILocation(line: 142, column: 9, scope: !2792, inlinedAt: !2790)
!2792 = distinct !DILexicalBlock(scope: !2785, file: !1517, line: 142, column: 9)
!2793 = !DILocation(line: 142, column: 9, scope: !2785, inlinedAt: !2790)
!2794 = !DILocation(line: 143, column: 2, scope: !2792, inlinedAt: !2790)
!2795 = !DILocation(line: 143, column: 14, scope: !2792, inlinedAt: !2790)
!2796 = !DILocation(line: 1365, column: 6, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2783, file: !1178, line: 1365, column: 6)
!2798 = !DILocation(line: 1370, column: 12, scope: !2555)
!2799 = !DILocation(line: 1371, column: 15, scope: !2555)
!2800 = !DILocation(line: 1371, column: 13, scope: !2555)
!2801 = !DILocation(line: 1373, column: 18, scope: !2555)
!2802 = !DILocation(line: 1374, column: 13, scope: !2555)
!2803 = !DILocation(line: 1375, column: 14, scope: !2555)
!2804 = !DILocation(line: 1375, column: 25, scope: !2555)
!2805 = !DILocation(line: 1375, column: 12, scope: !2555)
!2806 = !DILocation(line: 1377, column: 12, scope: !2513)
!2807 = !DILocation(line: 1377, column: 5, scope: !2513)
!2808 = !DILocation(line: 1378, column: 1, scope: !2513)
!2809 = distinct !DISubprogram(name: "Perl_pad_findmy_pv", scope: !1178, file: !1178, line: 1009, type: !2810, scopeLine: 1010, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2812)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!738, !515, !448}
!2812 = !{!2813, !2814}
!2813 = !DILocalVariable(name: "name", arg: 1, scope: !2809, file: !1178, line: 1009, type: !515)
!2814 = !DILocalVariable(name: "flags", arg: 2, scope: !2809, file: !1178, line: 1009, type: !448)
!2815 = !DILocation(line: 0, scope: !2809)
!2816 = !DILocation(line: 1012, column: 12, scope: !2809)
!2817 = !DILocation(line: 1012, column: 5, scope: !2809)
!2818 = distinct !DISubprogram(name: "Perl_pad_findmy_sv", scope: !1178, file: !1178, line: 1025, type: !2819, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!738, !441, !448}
!2821 = !{!2822, !2823, !2824, !2825}
!2822 = !DILocalVariable(name: "name", arg: 1, scope: !2818, file: !1178, line: 1025, type: !441)
!2823 = !DILocalVariable(name: "flags", arg: 2, scope: !2818, file: !1178, line: 1025, type: !448)
!2824 = !DILocalVariable(name: "namepv", scope: !2818, file: !1178, line: 1027, type: !455)
!2825 = !DILocalVariable(name: "namelen", scope: !2818, file: !1178, line: 1028, type: !603)
!2826 = !DILocation(line: 0, scope: !2818)
!2827 = !DILocation(line: 1028, column: 5, scope: !2818)
!2828 = !DILocation(line: 1030, column: 14, scope: !2818)
!2829 = !DILocation(line: 1031, column: 12, scope: !2818)
!2830 = !DILocation(line: 1032, column: 1, scope: !2818)
!2831 = !DILocation(line: 1031, column: 5, scope: !2818)
!2832 = distinct !DISubprogram(name: "Perl_find_rundefsvoffset", scope: !1178, file: !1178, line: 1047, type: !2833, scopeLine: 1048, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!738}
!2835 = !{!2836, !2837}
!2836 = !DILocalVariable(name: "out_pn", scope: !2832, file: !1178, line: 1049, type: !1029)
!2837 = !DILocalVariable(name: "out_flags", scope: !2832, file: !1178, line: 1050, type: !503)
!2838 = !DILocation(line: 1049, column: 5, scope: !2832)
!2839 = !DILocation(line: 1050, column: 5, scope: !2832)
!2840 = !DILocation(line: 1051, column: 12, scope: !2832)
!2841 = !DILocation(line: 0, scope: !2832)
!2842 = !DILocation(line: 1053, column: 1, scope: !2832)
!2843 = !DILocation(line: 1051, column: 5, scope: !2832)
!2844 = !DISubprogram(name: "Perl_find_runcv", scope: !1287, file: !1287, line: 1210, type: !2845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!703, !1169}
!2847 = distinct !DISubprogram(name: "Perl_find_rundefsv", scope: !1178, file: !1178, line: 1066, type: !2848, scopeLine: 1067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2850)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!441}
!2850 = !{!2851, !2852, !2853}
!2851 = !DILocalVariable(name: "name", scope: !2847, file: !1178, line: 1068, type: !1029)
!2852 = !DILocalVariable(name: "flags", scope: !2847, file: !1178, line: 1069, type: !503)
!2853 = !DILocalVariable(name: "po", scope: !2847, file: !1178, line: 1070, type: !738)
!2854 = !DILocation(line: 1068, column: 5, scope: !2847)
!2855 = !DILocation(line: 1069, column: 5, scope: !2847)
!2856 = !DILocation(line: 1072, column: 10, scope: !2847)
!2857 = !DILocation(line: 0, scope: !2847)
!2858 = !DILocation(line: 1075, column: 12, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2847, file: !1178, line: 1075, column: 9)
!2860 = !DILocation(line: 1075, column: 26, scope: !2859)
!2861 = !DILocation(line: 1075, column: 29, scope: !2859)
!2862 = !DILocation(line: 1075, column: 9, scope: !2847)
!2863 = !DILocation(line: 1076, column: 9, scope: !2859)
!2864 = !DILocation(line: 1078, column: 12, scope: !2847)
!2865 = !DILocation(line: 1078, column: 5, scope: !2847)
!2866 = !DILocation(line: 1079, column: 1, scope: !2847)
!2867 = !DISubprogram(name: "Perl_gv_add_by_type", scope: !1287, file: !1287, line: 1391, type: !2868, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!636, !636, !1049}
!2870 = distinct !DISubprogram(name: "Perl_find_rundefsv2", scope: !1178, file: !1178, line: 1082, type: !2871, scopeLine: 1083, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!441, !703, !448}
!2873 = !{!2874, !2875, !2876, !2877, !2878}
!2874 = !DILocalVariable(name: "cv", arg: 1, scope: !2870, file: !1178, line: 1082, type: !703)
!2875 = !DILocalVariable(name: "seq", arg: 2, scope: !2870, file: !1178, line: 1082, type: !448)
!2876 = !DILocalVariable(name: "name", scope: !2870, file: !1178, line: 1084, type: !1029)
!2877 = !DILocalVariable(name: "flags", scope: !2870, file: !1178, line: 1085, type: !503)
!2878 = !DILocalVariable(name: "po", scope: !2870, file: !1178, line: 1086, type: !738)
!2879 = !DILocation(line: 0, scope: !2870)
!2880 = !DILocation(line: 1084, column: 5, scope: !2870)
!2881 = !DILocation(line: 1085, column: 5, scope: !2870)
!2882 = !DILocation(line: 1090, column: 10, scope: !2870)
!2883 = !DILocation(line: 1093, column: 12, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2870, file: !1178, line: 1093, column: 9)
!2885 = !DILocation(line: 1093, column: 26, scope: !2884)
!2886 = !DILocation(line: 1093, column: 29, scope: !2884)
!2887 = !DILocation(line: 1093, column: 9, scope: !2870)
!2888 = !DILocation(line: 1094, column: 9, scope: !2884)
!2889 = !DILocation(line: 1096, column: 12, scope: !2870)
!2890 = !DILocation(line: 0, scope: !2682, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 1096, column: 12, scope: !2870)
!2892 = !DILocation(line: 40, column: 34, scope: !2682, inlinedAt: !2891)
!2893 = !DILocation(line: 1096, column: 5, scope: !2870)
!2894 = !DILocation(line: 1097, column: 1, scope: !2870)
!2895 = distinct !DISubprogram(name: "Perl_pad_block_start", scope: !1178, file: !1178, line: 1445, type: !2896, scopeLine: 1446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{null, !503}
!2898 = !{!2899}
!2899 = !DILocalVariable(name: "full", arg: 1, scope: !2895, file: !1178, line: 1445, type: !503)
!2900 = !DILocation(line: 0, scope: !2895)
!2901 = !DILocation(line: 1448, column: 5, scope: !2895)
!2902 = !DILocation(line: 1449, column: 29, scope: !2895)
!2903 = !DILocation(line: 1449, column: 27, scope: !2895)
!2904 = !DILocation(line: 1450, column: 9, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2895, file: !1178, line: 1450, column: 9)
!2906 = !DILocation(line: 1450, column: 9, scope: !2895)
!2907 = !DILocation(line: 1451, column: 23, scope: !2905)
!2908 = !DILocation(line: 1451, column: 2, scope: !2905)
!2909 = !DILocation(line: 1452, column: 31, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2895, file: !1178, line: 1452, column: 9)
!2911 = !DILocation(line: 1452, column: 9, scope: !2895)
!2912 = !DILocation(line: 1453, column: 24, scope: !2910)
!2913 = !DILocation(line: 1453, column: 2, scope: !2910)
!2914 = !DILocation(line: 1454, column: 5, scope: !2895)
!2915 = !DILocation(line: 1455, column: 5, scope: !2895)
!2916 = !DILocation(line: 1456, column: 26, scope: !2895)
!2917 = !DILocation(line: 1457, column: 5, scope: !2895)
!2918 = !DILocation(line: 1458, column: 5, scope: !2895)
!2919 = !DILocation(line: 1465, column: 22, scope: !2895)
!2920 = !DILocation(line: 1465, column: 20, scope: !2895)
!2921 = !DILocation(line: 1466, column: 26, scope: !2895)
!2922 = !DILocation(line: 1467, column: 1, scope: !2895)
!2923 = distinct !DISubprogram(name: "Perl_intro_my", scope: !1178, file: !1178, line: 1480, type: !2924, scopeLine: 1481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!448}
!2926 = !{!2927, !2928, !2929, !2930}
!2927 = !DILocalVariable(name: "svp", scope: !2923, file: !1178, line: 1482, type: !1028)
!2928 = !DILocalVariable(name: "i", scope: !2923, file: !1178, line: 1483, type: !517)
!2929 = !DILocalVariable(name: "seq", scope: !2923, file: !1178, line: 1484, type: !448)
!2930 = !DILocalVariable(name: "sv", scope: !2931, file: !1178, line: 1498, type: !1382)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !1178, line: 1497, column: 68)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !1178, line: 1497, column: 5)
!2933 = distinct !DILexicalBlock(scope: !2923, file: !1178, line: 1497, column: 5)
!2934 = !DILocation(line: 1487, column: 22, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2923, file: !1178, line: 1487, column: 9)
!2936 = !DILocation(line: 1487, column: 9, scope: !2935)
!2937 = !DILocation(line: 1487, column: 9, scope: !2923)
!2938 = !DILocation(line: 0, scope: !2923)
!2939 = !DILocation(line: 1489, column: 23, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2935, file: !1178, line: 1487, column: 31)
!2941 = !DILocation(line: 1490, column: 5, scope: !2940)
!2942 = !DILocation(line: 1492, column: 8, scope: !2935)
!2943 = !DILocation(line: 0, scope: !2935)
!2944 = !DILocation(line: 1493, column: 11, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2923, file: !1178, line: 1493, column: 9)
!2946 = !DILocation(line: 1493, column: 9, scope: !2923)
!2947 = !DILocation(line: 1496, column: 11, scope: !2923)
!2948 = !DILocation(line: 1497, column: 38, scope: !2932)
!2949 = !DILocation(line: 1497, column: 5, scope: !2933)
!2950 = !DILocation(line: 1498, column: 23, scope: !2931)
!2951 = !DILocation(line: 0, scope: !2931)
!2952 = !DILocation(line: 1500, column: 6, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2931, file: !1178, line: 1500, column: 6)
!2954 = !DILocation(line: 1500, column: 9, scope: !2953)
!2955 = !DILocation(line: 1500, column: 12, scope: !2953)
!2956 = !DILocation(line: 1500, column: 27, scope: !2953)
!2957 = !DILocation(line: 1500, column: 31, scope: !2953)
!2958 = !DILocation(line: 1501, column: 6, scope: !2953)
!2959 = !DILocation(line: 1501, column: 9, scope: !2953)
!2960 = !DILocation(line: 1501, column: 31, scope: !2953)
!2961 = !DILocation(line: 1500, column: 6, scope: !2931)
!2962 = !DILocation(line: 1503, column: 6, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !1178, line: 1503, column: 6)
!2964 = distinct !DILexicalBlock(scope: !2953, file: !1178, line: 1502, column: 2)
!2965 = !DILocation(line: 1504, column: 6, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2964, file: !1178, line: 1504, column: 6)
!2967 = !DILocation(line: 1511, column: 2, scope: !2964)
!2968 = !DILocation(line: 1497, column: 64, scope: !2932)
!2969 = distinct !{!2969, !2949, !2970, !1547, !1548}
!2970 = !DILocation(line: 1512, column: 5, scope: !2933)
!2971 = !DILocation(line: 1513, column: 5, scope: !2923)
!2972 = !DILocation(line: 1514, column: 26, scope: !2923)
!2973 = !DILocation(line: 1515, column: 26, scope: !2923)
!2974 = !DILocation(line: 1519, column: 5, scope: !2923)
!2975 = !DILocation(line: 1520, column: 1, scope: !2923)
!2976 = distinct !DISubprogram(name: "Perl_pad_leavemy", scope: !1178, file: !1178, line: 1532, type: !735, scopeLine: 1533, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2977)
!2977 = !{!2978, !2979, !2980, !2981, !2987, !2991}
!2978 = !DILocalVariable(name: "off", scope: !2976, file: !1178, line: 1534, type: !517)
!2979 = !DILocalVariable(name: "o", scope: !2976, file: !1178, line: 1535, type: !726)
!2980 = !DILocalVariable(name: "svp", scope: !2976, file: !1178, line: 1536, type: !2117)
!2981 = !DILocalVariable(name: "name", scope: !2982, file: !1178, line: 1543, type: !2460)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !1178, line: 1542, column: 71)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !1178, line: 1542, column: 2)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !1178, line: 1542, column: 2)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !1178, line: 1541, column: 78)
!2986 = distinct !DILexicalBlock(scope: !2976, file: !1178, line: 1541, column: 9)
!2987 = !DILocalVariable(name: "sv", scope: !2988, file: !1178, line: 1553, type: !1382)
!2988 = distinct !DILexicalBlock(scope: !2989, file: !1178, line: 1552, column: 38)
!2989 = distinct !DILexicalBlock(scope: !2990, file: !1178, line: 1551, column: 5)
!2990 = distinct !DILexicalBlock(scope: !2976, file: !1178, line: 1551, column: 5)
!2991 = !DILocalVariable(name: "kid", scope: !2992, file: !1178, line: 1566, type: !726)
!2992 = distinct !DILexicalBlock(scope: !2993, file: !1178, line: 1565, column: 55)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !1178, line: 1564, column: 10)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !1178, line: 1556, column: 2)
!2995 = distinct !DILexicalBlock(scope: !2988, file: !1178, line: 1554, column: 6)
!2996 = !DILocation(line: 0, scope: !2976)
!2997 = !DILocation(line: 1536, column: 35, scope: !2976)
!2998 = !DILocation(line: 1538, column: 26, scope: !2976)
!2999 = !DILocation(line: 1541, column: 9, scope: !2986)
!3000 = !DILocation(line: 1541, column: 30, scope: !2986)
!3001 = !DILocation(line: 1542, column: 13, scope: !2984)
!3002 = !DILocation(line: 1542, column: 39, scope: !2983)
!3003 = !DILocation(line: 1542, column: 2, scope: !2984)
!3004 = !DILocation(line: 1543, column: 35, scope: !2982)
!3005 = !DILocation(line: 0, scope: !2982)
!3006 = !DILocation(line: 1544, column: 10, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2982, file: !1178, line: 1544, column: 10)
!3008 = !DILocation(line: 1544, column: 15, scope: !3007)
!3009 = !DILocation(line: 1544, column: 18, scope: !3007)
!3010 = !DILocation(line: 1544, column: 35, scope: !3007)
!3011 = !DILocation(line: 1544, column: 39, scope: !3007)
!3012 = !DILocation(line: 1544, column: 10, scope: !2982)
!3013 = !DILocation(line: 1547, column: 12, scope: !3007)
!3014 = !DILocation(line: 1545, column: 3, scope: !3007)
!3015 = !DILocation(line: 1542, column: 42, scope: !2983)
!3016 = !DILocation(line: 1542, column: 67, scope: !2983)
!3017 = distinct !{!3017, !3003, !3018, !1547, !1548}
!3018 = !DILocation(line: 1548, column: 2, scope: !2984)
!3019 = !DILocation(line: 1551, column: 16, scope: !2990)
!3020 = !DILocation(line: 1552, column: 9, scope: !2989)
!3021 = !DILocation(line: 1552, column: 7, scope: !2989)
!3022 = !DILocation(line: 1551, column: 5, scope: !2990)
!3023 = !DILocation(line: 1553, column: 23, scope: !2988)
!3024 = !DILocation(line: 0, scope: !2988)
!3025 = !DILocation(line: 1554, column: 6, scope: !2995)
!3026 = !DILocation(line: 1554, column: 9, scope: !2995)
!3027 = !DILocation(line: 1554, column: 12, scope: !2995)
!3028 = !DILocation(line: 1554, column: 27, scope: !2995)
!3029 = !DILocation(line: 1554, column: 31, scope: !2995)
!3030 = !DILocation(line: 1555, column: 6, scope: !2995)
!3031 = !DILocation(line: 1555, column: 9, scope: !2995)
!3032 = !DILocation(line: 1555, column: 32, scope: !2995)
!3033 = !DILocation(line: 1554, column: 6, scope: !2988)
!3034 = !DILocation(line: 1557, column: 6, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2994, file: !1178, line: 1557, column: 6)
!3036 = !DILocation(line: 1564, column: 11, scope: !2993)
!3037 = !DILocation(line: 1564, column: 30, scope: !2993)
!3038 = !DILocation(line: 1564, column: 34, scope: !2993)
!3039 = !DILocation(line: 1565, column: 7, scope: !2993)
!3040 = !DILocation(line: 1565, column: 11, scope: !2993)
!3041 = !DILocation(line: 1565, column: 10, scope: !2993)
!3042 = !DILocation(line: 1565, column: 25, scope: !2993)
!3043 = !DILocation(line: 1565, column: 32, scope: !2993)
!3044 = !DILocation(line: 1566, column: 13, scope: !2992)
!3045 = !DILocation(line: 0, scope: !2992)
!3046 = !DILocation(line: 1567, column: 8, scope: !2992)
!3047 = !DILocation(line: 1567, column: 16, scope: !2992)
!3048 = !DILocation(line: 1568, column: 7, scope: !2992)
!3049 = !DILocation(line: 1569, column: 6, scope: !2992)
!3050 = !DILocation(line: 1552, column: 34, scope: !2989)
!3051 = distinct !{!3051, !3022, !3052, !1547, !1548}
!3052 = !DILocation(line: 1571, column: 5, scope: !2990)
!3053 = !DILocation(line: 1535, column: 9, scope: !2976)
!3054 = !DILocation(line: 1572, column: 5, scope: !2976)
!3055 = !DILocation(line: 1575, column: 5, scope: !2976)
!3056 = !DISubprogram(name: "Perl_ck_warner_d", scope: !1287, file: !1287, line: 706, type: !3057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{null, !448, !515, null}
!3059 = !DISubprogram(name: "Perl_newOP", scope: !1287, file: !1287, line: 2984, type: !3060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!726, !517, !517}
!3062 = !DISubprogram(name: "Perl_op_prepend_elem", scope: !1287, file: !1287, line: 3269, type: !3063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!726, !517, !726, !726}
!3065 = distinct !DISubprogram(name: "Perl_pad_swipe", scope: !1178, file: !1178, line: 1588, type: !3066, scopeLine: 1589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !738, !760}
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "po", arg: 1, scope: !3065, file: !1178, line: 1588, type: !738)
!3070 = !DILocalVariable(name: "refadjust", arg: 2, scope: !3065, file: !1178, line: 1588, type: !760)
!3071 = !DILocation(line: 0, scope: !3065)
!3072 = !DILocation(line: 1591, column: 10, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !3065, file: !1178, line: 1591, column: 9)
!3074 = !DILocation(line: 1591, column: 9, scope: !3065)
!3075 = !DILocation(line: 1593, column: 9, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3065, file: !1178, line: 1593, column: 9)
!3077 = !DILocation(line: 1593, column: 29, scope: !3076)
!3078 = !DILocation(line: 1593, column: 9, scope: !3065)
!3079 = !DILocation(line: 1594, column: 2, scope: !3076)
!3080 = !DILocation(line: 1596, column: 10, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3065, file: !1178, line: 1596, column: 9)
!3082 = !DILocation(line: 0, scope: !3081)
!3083 = !DILocation(line: 1596, column: 13, scope: !3081)
!3084 = !DILocation(line: 1597, column: 2, scope: !3081)
!3085 = !DILocation(line: 1604, column: 9, scope: !3065)
!3086 = !DILocation(line: 1605, column: 2, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3065, file: !1178, line: 1604, column: 9)
!3088 = !DILocation(line: 0, scope: !1657, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 1605, column: 2, scope: !3087)
!3090 = !DILocation(line: 161, column: 9, scope: !1661, inlinedAt: !3089)
!3091 = !DILocation(line: 161, column: 9, scope: !1657, inlinedAt: !3089)
!3092 = !DILocation(line: 162, column: 11, scope: !1660, inlinedAt: !3089)
!3093 = !DILocation(line: 0, scope: !1660, inlinedAt: !3089)
!3094 = !DILocation(line: 163, column: 6, scope: !1669, inlinedAt: !3089)
!3095 = !DILocation(line: 163, column: 6, scope: !1660, inlinedAt: !3089)
!3096 = !DILocation(line: 164, column: 24, scope: !1669, inlinedAt: !3089)
!3097 = !DILocation(line: 164, column: 19, scope: !1669, inlinedAt: !3089)
!3098 = !DILocation(line: 164, column: 6, scope: !1669, inlinedAt: !3089)
!3099 = !DILocation(line: 166, column: 6, scope: !1669, inlinedAt: !3089)
!3100 = !DILocation(line: 1614, column: 5, scope: !3065)
!3101 = !DILocation(line: 1614, column: 19, scope: !3065)
!3102 = !DILocation(line: 1616, column: 9, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3065, file: !1178, line: 1616, column: 9)
!3104 = !DILocation(line: 1616, column: 41, scope: !3103)
!3105 = !DILocation(line: 1617, column: 6, scope: !3103)
!3106 = !DILocation(line: 1618, column: 6, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !1178, line: 1618, column: 6)
!3108 = distinct !DILexicalBlock(scope: !3103, file: !1178, line: 1617, column: 59)
!3109 = !DILocation(line: 1621, column: 40, scope: !3108)
!3110 = !DILocation(line: 1622, column: 5, scope: !3108)
!3111 = !DILocation(line: 1626, column: 9, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3065, file: !1178, line: 1626, column: 9)
!3113 = !DILocation(line: 1626, column: 19, scope: !3112)
!3114 = !DILocation(line: 1626, column: 17, scope: !3112)
!3115 = !DILocation(line: 1626, column: 9, scope: !3065)
!3116 = !DILocation(line: 1627, column: 18, scope: !3112)
!3117 = !DILocation(line: 1627, column: 16, scope: !3112)
!3118 = !DILocation(line: 1627, column: 2, scope: !3112)
!3119 = !DILocation(line: 1628, column: 1, scope: !3065)
!3120 = distinct !DISubprogram(name: "Perl_pad_tidy", scope: !1178, file: !1178, line: 1686, type: !3121, scopeLine: 1687, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3124)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{null, !3123}
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "padtidy_type", file: !435, line: 128, baseType: !434)
!3124 = !{!3125, !3126, !3129, !3132, !3133, !3137, !3140, !3143}
!3125 = !DILocalVariable(name: "type", arg: 1, scope: !3120, file: !1178, line: 1686, type: !3123)
!3126 = !DILocalVariable(name: "cv", scope: !3127, file: !1178, line: 1710, type: !1062)
!3127 = distinct !DILexicalBlock(scope: !3128, file: !1178, line: 1709, column: 38)
!3128 = distinct !DILexicalBlock(scope: !3120, file: !1178, line: 1709, column: 9)
!3129 = !DILocalVariable(name: "namep", scope: !3130, file: !1178, line: 1728, type: !1374)
!3130 = distinct !DILexicalBlock(scope: !3131, file: !1178, line: 1727, column: 35)
!3131 = distinct !DILexicalBlock(scope: !3120, file: !1178, line: 1727, column: 9)
!3132 = !DILocalVariable(name: "ix", scope: !3130, file: !1178, line: 1729, type: !738)
!3133 = !DILocalVariable(name: "namesv", scope: !3134, file: !1178, line: 1732, type: !1029)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !1178, line: 1731, column: 47)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !1178, line: 1731, column: 2)
!3136 = distinct !DILexicalBlock(scope: !3130, file: !1178, line: 1731, column: 2)
!3137 = !DILocalVariable(name: "av", scope: !3138, file: !1178, line: 1753, type: !1190)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !1178, line: 1751, column: 35)
!3139 = distinct !DILexicalBlock(scope: !3131, file: !1178, line: 1751, column: 14)
!3140 = !DILocalVariable(name: "namep", scope: !3141, file: !1178, line: 1759, type: !1374)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !1178, line: 1758, column: 56)
!3142 = distinct !DILexicalBlock(scope: !3120, file: !1178, line: 1758, column: 9)
!3143 = !DILocalVariable(name: "ix", scope: !3141, file: !1178, line: 1760, type: !738)
!3144 = !DILocation(line: 0, scope: !3120)
!3145 = !DILocation(line: 1709, column: 9, scope: !3128)
!3146 = !DILocation(line: 1709, column: 24, scope: !3128)
!3147 = !DILocation(line: 0, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3127, file: !1178, line: 1711, column: 2)
!3149 = !DILocation(line: 0, scope: !3127)
!3150 = !DILocation(line: 1711, column: 2, scope: !3148)
!3151 = !DILocation(line: 1712, column: 13, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !1178, line: 1712, column: 10)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !1178, line: 1711, column: 47)
!3154 = distinct !DILexicalBlock(scope: !3148, file: !1178, line: 1711, column: 2)
!3155 = !DILocation(line: 1712, column: 26, scope: !3152)
!3156 = !DILocation(line: 1714, column: 10, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !1178, line: 1714, column: 10)
!3158 = !DILocation(line: 1712, column: 29, scope: !3152)
!3159 = !DILocation(line: 1712, column: 10, scope: !3153)
!3160 = !DILocation(line: 1714, column: 10, scope: !3153)
!3161 = !DILocation(line: 1717, column: 3, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3157, file: !1178, line: 1714, column: 22)
!3163 = !DILocation(line: 1719, column: 6, scope: !3153)
!3164 = !DILocation(line: 1718, column: 6, scope: !3162)
!3165 = !DILocation(line: 1711, column: 32, scope: !3154)
!3166 = distinct !{!3166, !3150, !3167, !1547, !1548}
!3167 = !DILocation(line: 1720, column: 2, scope: !3148)
!3168 = !DILocation(line: 1724, column: 9, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3120, file: !1178, line: 1724, column: 9)
!3170 = !DILocation(line: 1724, column: 43, scope: !3169)
!3171 = !DILocation(line: 1724, column: 41, scope: !3169)
!3172 = !DILocation(line: 1724, column: 9, scope: !3120)
!3173 = !DILocation(line: 0, scope: !1244, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 1725, column: 2, scope: !3169)
!3175 = !DILocation(line: 2691, column: 20, scope: !1325, inlinedAt: !3174)
!3176 = !DILocation(line: 2691, column: 13, scope: !1325, inlinedAt: !3174)
!3177 = !DILocation(line: 2691, column: 9, scope: !1244, inlinedAt: !3174)
!3178 = !DILocation(line: 2692, column: 2, scope: !1325, inlinedAt: !3174)
!3179 = !DILocation(line: 2695, column: 9, scope: !1256, inlinedAt: !3174)
!3180 = !DILocation(line: 2695, column: 29, scope: !1256, inlinedAt: !3174)
!3181 = !DILocation(line: 2695, column: 9, scope: !1244, inlinedAt: !3174)
!3182 = !DILocation(line: 2696, column: 2, scope: !1255, inlinedAt: !3174)
!3183 = !DILocation(line: 2698, column: 22, scope: !1255, inlinedAt: !3174)
!3184 = !DILocation(line: 2699, column: 5, scope: !1255, inlinedAt: !3174)
!3185 = !DILocation(line: 2700, column: 11, scope: !1244, inlinedAt: !3174)
!3186 = !DILocation(line: 2701, column: 9, scope: !1260, inlinedAt: !3174)
!3187 = !DILocation(line: 2701, column: 9, scope: !1244, inlinedAt: !3174)
!3188 = !DILocation(line: 2702, column: 2, scope: !1260, inlinedAt: !3174)
!3189 = !DILocation(line: 2703, column: 14, scope: !1244, inlinedAt: !3174)
!3190 = !DILocation(line: 1725, column: 2, scope: !3169)
!3191 = !DILocation(line: 1727, column: 9, scope: !3120)
!3192 = !DILocation(line: 1728, column: 27, scope: !3130)
!3193 = !DILocation(line: 0, scope: !3130)
!3194 = !DILocation(line: 1731, column: 12, scope: !3136)
!3195 = !DILocation(line: 1731, column: 36, scope: !3135)
!3196 = !DILocation(line: 1731, column: 2, scope: !3136)
!3197 = !DILocation(line: 1733, column: 11, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3134, file: !1178, line: 1733, column: 10)
!3199 = !DILocation(line: 1733, column: 10, scope: !3134)
!3200 = !DILocation(line: 1733, column: 32, scope: !3198)
!3201 = !DILocation(line: 1733, column: 22, scope: !3198)
!3202 = !DILocation(line: 1740, column: 11, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !3134, file: !1178, line: 1740, column: 10)
!3204 = !DILocation(line: 1740, column: 25, scope: !3203)
!3205 = !DILocation(line: 1740, column: 28, scope: !3203)
!3206 = !DILocation(line: 0, scope: !3134)
!3207 = !DILocation(line: 1743, column: 12, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3134, file: !1178, line: 1743, column: 10)
!3209 = !DILocation(line: 1743, column: 30, scope: !3208)
!3210 = !DILocation(line: 1744, column: 8, scope: !3208)
!3211 = !DILocation(line: 1744, column: 27, scope: !3208)
!3212 = !DILocation(line: 1744, column: 30, scope: !3208)
!3213 = !DILocation(line: 1744, column: 49, scope: !3208)
!3214 = !DILocation(line: 1743, column: 10, scope: !3134)
!3215 = !DILocation(line: 0, scope: !1657, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 1746, column: 3, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3208, file: !1178, line: 1745, column: 6)
!3218 = !DILocation(line: 162, column: 11, scope: !1660, inlinedAt: !3216)
!3219 = !DILocation(line: 0, scope: !1660, inlinedAt: !3216)
!3220 = !DILocation(line: 163, column: 6, scope: !1669, inlinedAt: !3216)
!3221 = !DILocation(line: 163, column: 6, scope: !1660, inlinedAt: !3216)
!3222 = !DILocation(line: 164, column: 24, scope: !1669, inlinedAt: !3216)
!3223 = !DILocation(line: 164, column: 19, scope: !1669, inlinedAt: !3216)
!3224 = !DILocation(line: 164, column: 6, scope: !1669, inlinedAt: !3216)
!3225 = !DILocation(line: 166, column: 6, scope: !1669, inlinedAt: !3216)
!3226 = !DILocation(line: 1747, column: 3, scope: !3217)
!3227 = !DILocation(line: 1747, column: 17, scope: !3217)
!3228 = !DILocation(line: 1748, column: 6, scope: !3217)
!3229 = !DILocation(line: 1731, column: 43, scope: !3135)
!3230 = distinct !{!3230, !3196, !3231, !1547, !1548}
!3231 = !DILocation(line: 1749, column: 2, scope: !3136)
!3232 = !DILocation(line: 1753, column: 18, scope: !3138)
!3233 = !DILocation(line: 0, scope: !3138)
!3234 = !DILocation(line: 1754, column: 2, scope: !3138)
!3235 = !DILocation(line: 1755, column: 2, scope: !3138)
!3236 = !DILocation(line: 1758, column: 29, scope: !3142)
!3237 = !DILocation(line: 1759, column: 27, scope: !3141)
!3238 = !DILocation(line: 0, scope: !3141)
!3239 = !DILocation(line: 1761, column: 12, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3141, file: !1178, line: 1761, column: 2)
!3241 = !DILocation(line: 1761, column: 36, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3240, file: !1178, line: 1761, column: 2)
!3243 = !DILocation(line: 1761, column: 2, scope: !3240)
!3244 = !DILocation(line: 1762, column: 11, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !1178, line: 1762, column: 10)
!3246 = distinct !DILexicalBlock(scope: !3242, file: !1178, line: 1761, column: 47)
!3247 = !DILocation(line: 1762, column: 10, scope: !3246)
!3248 = !DILocation(line: 1762, column: 32, scope: !3245)
!3249 = !DILocation(line: 1762, column: 22, scope: !3245)
!3250 = !DILocation(line: 1763, column: 11, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3246, file: !1178, line: 1763, column: 10)
!3252 = !DILocation(line: 1763, column: 25, scope: !3251)
!3253 = !DILocation(line: 1763, column: 28, scope: !3251)
!3254 = !DILocation(line: 1765, column: 10, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3246, file: !1178, line: 1765, column: 10)
!3256 = !DILocation(line: 1765, column: 33, scope: !3255)
!3257 = !DILocation(line: 1765, column: 37, scope: !3255)
!3258 = !DILocation(line: 1765, column: 10, scope: !3246)
!3259 = !DILocalVariable(name: "sv", arg: 1, scope: !3260, file: !1517, line: 194, type: !441)
!3260 = distinct !DISubprogram(name: "S_SvPADSTALE_on", scope: !1517, file: !1517, line: 194, type: !3261, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3263)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!448, !441}
!3263 = !{!3259}
!3264 = !DILocation(line: 0, scope: !3260, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 1782, column: 3, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3255, file: !1178, line: 1765, column: 62)
!3267 = !DILocation(line: 197, column: 24, scope: !3260, inlinedAt: !3265)
!3268 = !DILocation(line: 1783, column: 6, scope: !3266)
!3269 = !DILocation(line: 1761, column: 43, scope: !3242)
!3270 = distinct !{!3270, !3243, !3271, !1547, !1548}
!3271 = !DILocation(line: 1784, column: 2, scope: !3240)
!3272 = !DILocation(line: 1786, column: 17, scope: !3120)
!3273 = !DILocation(line: 1786, column: 15, scope: !3120)
!3274 = !DILocation(line: 1787, column: 1, scope: !3120)
!3275 = distinct !DISubprogram(name: "Perl_pad_free", scope: !1178, file: !1178, line: 1799, type: !3276, scopeLine: 1800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{null, !738}
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "po", arg: 1, scope: !3275, file: !1178, line: 1799, type: !738)
!3280 = !DILocalVariable(name: "sv", scope: !3275, file: !1178, line: 1802, type: !441)
!3281 = !DILocation(line: 0, scope: !3275)
!3282 = !DILocation(line: 1805, column: 10, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3275, file: !1178, line: 1805, column: 9)
!3284 = !DILocation(line: 1805, column: 9, scope: !3275)
!3285 = !DILocation(line: 1807, column: 9, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3275, file: !1178, line: 1807, column: 9)
!3287 = !DILocation(line: 1807, column: 29, scope: !3286)
!3288 = !DILocation(line: 1807, column: 9, scope: !3275)
!3289 = !DILocation(line: 1808, column: 2, scope: !3286)
!3290 = !DILocation(line: 1810, column: 10, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3275, file: !1178, line: 1810, column: 9)
!3292 = !DILocation(line: 1810, column: 9, scope: !3275)
!3293 = !DILocation(line: 1811, column: 2, scope: !3291)
!3294 = !DILocation(line: 1819, column: 10, scope: !3275)
!3295 = !DILocation(line: 1820, column: 9, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3275, file: !1178, line: 1820, column: 9)
!3297 = !DILocation(line: 1820, column: 12, scope: !3296)
!3298 = !DILocation(line: 1820, column: 38, scope: !3296)
!3299 = !DILocation(line: 1820, column: 9, scope: !3275)
!3300 = !DILocation(line: 1821, column: 14, scope: !3296)
!3301 = !DILocation(line: 1821, column: 2, scope: !3296)
!3302 = !DILocation(line: 1823, column: 9, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3275, file: !1178, line: 1823, column: 9)
!3304 = !DILocation(line: 1823, column: 19, scope: !3303)
!3305 = !DILocation(line: 1823, column: 17, scope: !3303)
!3306 = !DILocation(line: 1823, column: 9, scope: !3275)
!3307 = !DILocation(line: 1824, column: 13, scope: !3303)
!3308 = !DILocation(line: 1824, column: 11, scope: !3303)
!3309 = !DILocation(line: 1824, column: 2, scope: !3303)
!3310 = !DILocation(line: 1826, column: 1, scope: !3275)
!3311 = distinct !DISubprogram(name: "Perl_do_dump_pad", scope: !1178, file: !1178, line: 1837, type: !3312, scopeLine: 1838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{null, !517, !616, !784, !503}
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324}
!3315 = !DILocalVariable(name: "level", arg: 1, scope: !3311, file: !1178, line: 1837, type: !517)
!3316 = !DILocalVariable(name: "file", arg: 2, scope: !3311, file: !1178, line: 1837, type: !616)
!3317 = !DILocalVariable(name: "padlist", arg: 3, scope: !3311, file: !1178, line: 1837, type: !784)
!3318 = !DILocalVariable(name: "full", arg: 4, scope: !3311, file: !1178, line: 1837, type: !503)
!3319 = !DILocalVariable(name: "pad_name", scope: !3311, file: !1178, line: 1839, type: !2453)
!3320 = !DILocalVariable(name: "pad", scope: !3311, file: !1178, line: 1840, type: !1107)
!3321 = !DILocalVariable(name: "pname", scope: !3311, file: !1178, line: 1841, type: !1028)
!3322 = !DILocalVariable(name: "ppad", scope: !3311, file: !1178, line: 1842, type: !546)
!3323 = !DILocalVariable(name: "ix", scope: !3311, file: !1178, line: 1843, type: !517)
!3324 = !DILocalVariable(name: "namesv", scope: !3325, file: !1178, line: 1860, type: !2461)
!3325 = distinct !DILexicalBlock(scope: !3326, file: !1178, line: 1859, column: 56)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !1178, line: 1859, column: 5)
!3327 = distinct !DILexicalBlock(scope: !3311, file: !1178, line: 1859, column: 5)
!3328 = !DILocation(line: 0, scope: !3311)
!3329 = !DILocation(line: 1847, column: 10, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3311, file: !1178, line: 1847, column: 9)
!3331 = !DILocation(line: 1847, column: 9, scope: !3311)
!3332 = !DILocation(line: 1850, column: 16, scope: !3311)
!3333 = !DILocation(line: 1851, column: 11, scope: !3311)
!3334 = !DILocation(line: 1852, column: 13, scope: !3311)
!3335 = !DILocation(line: 1853, column: 12, scope: !3311)
!3336 = !DILocation(line: 1856, column: 6, scope: !3311)
!3337 = !DILocation(line: 1856, column: 24, scope: !3311)
!3338 = !DILocation(line: 1856, column: 39, scope: !3311)
!3339 = !DILocation(line: 1856, column: 52, scope: !3311)
!3340 = !DILocation(line: 1854, column: 5, scope: !3311)
!3341 = !DILocation(line: 1859, column: 24, scope: !3326)
!3342 = !DILocation(line: 1859, column: 21, scope: !3326)
!3343 = !DILocation(line: 1859, column: 5, scope: !3327)
!3344 = !DILocation(line: 1887, column: 11, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3325, file: !1178, line: 1864, column: 6)
!3346 = !DILocation(line: 1860, column: 33, scope: !3325)
!3347 = !DILocation(line: 0, scope: !3325)
!3348 = !DILocation(line: 1861, column: 6, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3325, file: !1178, line: 1861, column: 6)
!3350 = !DILocation(line: 1861, column: 13, scope: !3349)
!3351 = !DILocation(line: 1861, column: 17, scope: !3349)
!3352 = !DILocation(line: 1861, column: 6, scope: !3325)
!3353 = !DILocation(line: 1865, column: 10, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !1178, line: 1865, column: 10)
!3355 = distinct !DILexicalBlock(scope: !3345, file: !1178, line: 1864, column: 14)
!3356 = !DILocation(line: 0, scope: !3354)
!3357 = !DILocation(line: 1865, column: 10, scope: !3355)
!3358 = !DILocation(line: 1870, column: 24, scope: !3354)
!3359 = !DILocation(line: 1870, column: 35, scope: !3354)
!3360 = !DILocation(line: 1870, column: 7, scope: !3354)
!3361 = !DILocation(line: 1871, column: 7, scope: !3354)
!3362 = !DILocation(line: 1872, column: 22, scope: !3354)
!3363 = !DILocation(line: 1872, column: 7, scope: !3354)
!3364 = !DILocation(line: 1873, column: 22, scope: !3354)
!3365 = !DILocation(line: 1873, column: 7, scope: !3354)
!3366 = !DILocation(line: 1866, column: 3, scope: !3354)
!3367 = !DILocation(line: 1881, column: 24, scope: !3354)
!3368 = !DILocation(line: 1881, column: 35, scope: !3354)
!3369 = !DILocation(line: 1881, column: 7, scope: !3354)
!3370 = !DILocation(line: 1882, column: 22, scope: !3354)
!3371 = !DILocation(line: 1882, column: 7, scope: !3354)
!3372 = !DILocation(line: 1883, column: 22, scope: !3354)
!3373 = !DILocation(line: 1883, column: 7, scope: !3354)
!3374 = !DILocation(line: 1884, column: 7, scope: !3354)
!3375 = !DILocation(line: 1877, column: 3, scope: !3354)
!3376 = !DILocation(line: 1859, column: 52, scope: !3326)
!3377 = distinct !{!3377, !3343, !3378, !1547, !1548}
!3378 = !DILocation(line: 1895, column: 5, scope: !3327)
!3379 = !DILocation(line: 1891, column: 3, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !1178, line: 1887, column: 17)
!3381 = distinct !DILexicalBlock(scope: !3345, file: !1178, line: 1887, column: 11)
!3382 = !DILocation(line: 1892, column: 20, scope: !3380)
!3383 = !DILocation(line: 1892, column: 31, scope: !3380)
!3384 = !DILocation(line: 1892, column: 3, scope: !3380)
!3385 = !DILocation(line: 1888, column: 6, scope: !3380)
!3386 = !DILocation(line: 1894, column: 2, scope: !3380)
!3387 = !DILocation(line: 1896, column: 1, scope: !3311)
!3388 = !DISubprogram(name: "Perl_dump_indent", scope: !1287, file: !1287, line: 1125, type: !3389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{null, !517, !616, !515, null}
!3391 = distinct !DISubprogram(name: "Perl_cv_clone", scope: !1178, file: !1178, line: 2307, type: !3392, scopeLine: 2308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3394)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!703, !703}
!3394 = !{!3395}
!3395 = !DILocalVariable(name: "proto", arg: 1, scope: !3391, file: !1178, line: 2307, type: !703)
!3396 = !DILocation(line: 0, scope: !3391)
!3397 = !DILocation(line: 2311, column: 10, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3391, file: !1178, line: 2311, column: 9)
!3399 = !DILocation(line: 2311, column: 9, scope: !3391)
!3400 = !DILocation(line: 2311, column: 28, scope: !3398)
!3401 = !DILocation(line: 2312, column: 12, scope: !3391)
!3402 = !DILocation(line: 2312, column: 5, scope: !3391)
!3403 = distinct !DISubprogram(name: "S_cv_clone", scope: !1178, file: !1178, line: 2259, type: !3404, scopeLine: 2260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!703, !703, !703, !703, !473}
!3406 = !{!3407, !3408, !3409, !3410, !3411}
!3407 = !DILocalVariable(name: "proto", arg: 1, scope: !3403, file: !1178, line: 2259, type: !703)
!3408 = !DILocalVariable(name: "cv", arg: 2, scope: !3403, file: !1178, line: 2259, type: !703)
!3409 = !DILocalVariable(name: "outside", arg: 3, scope: !3403, file: !1178, line: 2259, type: !703)
!3410 = !DILocalVariable(name: "cloned", arg: 4, scope: !3403, file: !1178, line: 2259, type: !473)
!3411 = !DILocalVariable(name: "newcv", scope: !3403, file: !1178, line: 2264, type: !2122)
!3412 = !DILocation(line: 0, scope: !3403)
!3413 = !DILocation(line: 2264, column: 24, scope: !3403)
!3414 = !DILocation(line: 2268, column: 9, scope: !3403)
!3415 = !DILocation(line: 2268, column: 19, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3403, file: !1178, line: 2268, column: 9)
!3417 = !DILocation(line: 2268, column: 14, scope: !3416)
!3418 = !DILocation(line: 2269, column: 19, scope: !3403)
!3419 = !DILocation(line: 2269, column: 34, scope: !3403)
!3420 = !DILocation(line: 2269, column: 5, scope: !3403)
!3421 = !DILocation(line: 2269, column: 17, scope: !3403)
!3422 = !DILocation(line: 2271, column: 5, scope: !3403)
!3423 = !DILocation(line: 2273, column: 19, scope: !3403)
!3424 = !DILocation(line: 2273, column: 38, scope: !3403)
!3425 = !DILocation(line: 2273, column: 5, scope: !3403)
!3426 = !DILocation(line: 2273, column: 17, scope: !3403)
!3427 = !DILocation(line: 2275, column: 9, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3403, file: !1178, line: 2275, column: 9)
!3429 = !DILocation(line: 2275, column: 9, scope: !3403)
!3430 = !DILocation(line: 2276, column: 3, scope: !3428)
!3431 = !DILocation(line: 0, scope: !1461, inlinedAt: !3432)
!3432 = distinct !DILocation(line: 2276, column: 3, scope: !3428)
!3433 = !DILocation(line: 233, column: 12, scope: !1461, inlinedAt: !3432)
!3434 = !DILocation(line: 234, column: 38, scope: !1461, inlinedAt: !3432)
!3435 = !DILocation(line: 234, column: 47, scope: !1461, inlinedAt: !3432)
!3436 = !DILocation(line: 233, column: 12, scope: !1461, inlinedAt: !3437)
!3437 = distinct !DILocation(line: 2276, column: 3, scope: !3428)
!3438 = !DILocation(line: 0, scope: !1461, inlinedAt: !3437)
!3439 = !DILocation(line: 234, column: 38, scope: !1461, inlinedAt: !3437)
!3440 = !DILocation(line: 234, column: 47, scope: !1461, inlinedAt: !3437)
!3441 = !DILocation(line: 0, scope: !1461, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 2276, column: 3, scope: !3428)
!3443 = !DILocation(line: 233, column: 12, scope: !1461, inlinedAt: !3442)
!3444 = !DILocation(line: 234, column: 38, scope: !1461, inlinedAt: !3442)
!3445 = !DILocation(line: 234, column: 47, scope: !1461, inlinedAt: !3442)
!3446 = !DILocalVariable(name: "sv", arg: 1, scope: !3447, file: !1517, line: 29, type: !703)
!3447 = distinct !DISubprogram(name: "S_CvGV", scope: !1517, file: !1517, line: 29, type: !3448, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3450)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!636, !703}
!3450 = !{!3446}
!3451 = !DILocation(line: 0, scope: !3447, inlinedAt: !3452)
!3452 = distinct !DILocation(line: 2277, column: 10, scope: !3428)
!3453 = !DILocation(line: 33, column: 38, scope: !3447, inlinedAt: !3452)
!3454 = !DILocation(line: 33, column: 47, scope: !3447, inlinedAt: !3452)
!3455 = !DILocation(line: 2277, column: 10, scope: !3428)
!3456 = !DILocation(line: 2278, column: 5, scope: !3403)
!3457 = !DILocation(line: 2280, column: 19, scope: !3403)
!3458 = !DILocation(line: 2280, column: 5, scope: !3403)
!3459 = !DILocation(line: 2280, column: 17, scope: !3403)
!3460 = !DILocation(line: 2282, column: 20, scope: !3403)
!3461 = !DILocation(line: 2282, column: 5, scope: !3403)
!3462 = !DILocation(line: 2282, column: 18, scope: !3403)
!3463 = !DILocation(line: 2283, column: 25, scope: !3403)
!3464 = !DILocation(line: 2283, column: 5, scope: !3403)
!3465 = !DILocation(line: 2283, column: 23, scope: !3403)
!3466 = !DILocation(line: 2285, column: 9, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3403, file: !1178, line: 2285, column: 9)
!3468 = !DILocation(line: 2285, column: 9, scope: !3403)
!3469 = !DILocation(line: 2286, column: 2, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3467, file: !1178, line: 2285, column: 23)
!3471 = !DILocation(line: 2287, column: 13, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3470, file: !1178, line: 2287, column: 13)
!3473 = !DILocation(line: 2287, column: 13, scope: !3470)
!3474 = !DILocation(line: 2288, column: 12, scope: !3472)
!3475 = !DILocation(line: 2290, column: 9, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3403, file: !1178, line: 2290, column: 9)
!3477 = !DILocation(line: 2290, column: 9, scope: !3403)
!3478 = !DILocation(line: 2291, column: 2, scope: !3476)
!3479 = !DILocation(line: 2293, column: 9, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3403, file: !1178, line: 2293, column: 9)
!3481 = !DILocation(line: 2293, column: 9, scope: !3403)
!3482 = !DILocation(line: 0, scope: !3483, inlinedAt: !3562)
!3483 = distinct !DISubprogram(name: "S_cv_clone_pad", scope: !1178, file: !1178, line: 1954, type: !3484, scopeLine: 1956, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!703, !703, !703, !703, !473, !760}
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492, !3493, !3495, !3496, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3512, !3513, !3520, !3525, !3530, !3535, !3538, !3540, !3545, !3549, !3552, !3553, !3556, !3557, !3560}
!3487 = !DILocalVariable(name: "proto", arg: 1, scope: !3483, file: !1178, line: 1954, type: !703)
!3488 = !DILocalVariable(name: "cv", arg: 2, scope: !3483, file: !1178, line: 1954, type: !703)
!3489 = !DILocalVariable(name: "outside", arg: 3, scope: !3483, file: !1178, line: 1954, type: !703)
!3490 = !DILocalVariable(name: "cloned", arg: 4, scope: !3483, file: !1178, line: 1954, type: !473)
!3491 = !DILocalVariable(name: "newcv", arg: 5, scope: !3483, file: !1178, line: 1955, type: !760)
!3492 = !DILocalVariable(name: "ix", scope: !3483, file: !1178, line: 1957, type: !517)
!3493 = !DILocalVariable(name: "protopadlist", scope: !3483, file: !1178, line: 1958, type: !3494)
!3494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!3495 = !DILocalVariable(name: "protopad_name", scope: !3483, file: !1178, line: 1959, type: !1372)
!3496 = !DILocalVariable(name: "protopad", scope: !3483, file: !1178, line: 1960, type: !3497)
!3497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3498)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !792)
!3500 = !DILocalVariable(name: "pname", scope: !3483, file: !1178, line: 1961, type: !1374)
!3501 = !DILocalVariable(name: "ppad", scope: !3483, file: !1178, line: 1962, type: !955)
!3502 = !DILocalVariable(name: "fname", scope: !3483, file: !1178, line: 1963, type: !930)
!3503 = !DILocalVariable(name: "fpad", scope: !3483, file: !1178, line: 1964, type: !930)
!3504 = !DILocalVariable(name: "outpad", scope: !3483, file: !1178, line: 1965, type: !546)
!3505 = !DILocalVariable(name: "depth", scope: !3483, file: !1178, line: 1966, type: !459)
!3506 = !DILocalVariable(name: "subclones", scope: !3483, file: !1178, line: 1967, type: !448)
!3507 = !DILocalVariable(name: "trouble", scope: !3483, file: !1178, line: 1968, type: !760)
!3508 = !DILocalVariable(name: "namesv", scope: !3509, file: !1178, line: 2024, type: !1382)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !1178, line: 2023, column: 35)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !1178, line: 2023, column: 5)
!3511 = distinct !DILexicalBlock(scope: !3483, file: !1178, line: 2023, column: 5)
!3512 = !DILocalVariable(name: "sv", scope: !3509, file: !1178, line: 2025, type: !441)
!3513 = !DILocalVariable(name: "sigil", scope: !3514, file: !1178, line: 2044, type: !516)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !1178, line: 2043, column: 15)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !1178, line: 2043, column: 10)
!3516 = distinct !DILexicalBlock(scope: !3517, file: !1178, line: 2030, column: 9)
!3517 = distinct !DILexicalBlock(scope: !3518, file: !1178, line: 2027, column: 8)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !1178, line: 2026, column: 36)
!3519 = distinct !DILexicalBlock(scope: !3509, file: !1178, line: 2026, column: 6)
!3520 = !DILocalVariable(name: "hash", scope: !3521, file: !1178, line: 2067, type: !448)
!3521 = distinct !DILexicalBlock(scope: !3522, file: !1178, line: 2062, column: 7)
!3522 = distinct !DILexicalBlock(scope: !3523, file: !1178, line: 2061, column: 16)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !1178, line: 2053, column: 11)
!3524 = distinct !DILexicalBlock(scope: !3514, file: !1178, line: 2045, column: 21)
!3525 = !DILocalVariable(name: "cloned_in_this_pass", scope: !3526, file: !1178, line: 2116, type: !760)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !1178, line: 2104, column: 25)
!3527 = distinct !DILexicalBlock(scope: !3528, file: !1178, line: 2104, column: 6)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !1178, line: 2103, column: 5)
!3529 = distinct !DILexicalBlock(scope: !3483, file: !1178, line: 2102, column: 9)
!3530 = !DILocalVariable(name: "name", scope: !3531, file: !1178, line: 2122, type: !1382)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !1178, line: 2121, column: 33)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !1178, line: 2121, column: 3)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !1178, line: 2121, column: 3)
!3534 = distinct !DILexicalBlock(scope: !3526, file: !1178, line: 2119, column: 9)
!3535 = !DILocalVariable(name: "protokey", scope: !3536, file: !1178, line: 2128, type: !1369)
!3536 = distinct !DILexicalBlock(scope: !3537, file: !1178, line: 2127, column: 7)
!3537 = distinct !DILexicalBlock(scope: !3531, file: !1178, line: 2124, column: 11)
!3538 = !DILocalVariable(name: "cvp", scope: !3536, file: !1178, line: 2129, type: !3539)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1149)
!3540 = !DILocalVariable(name: "name", scope: !3541, file: !1178, line: 2149, type: !1382)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !1178, line: 2148, column: 33)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !1178, line: 2148, column: 3)
!3543 = distinct !DILexicalBlock(scope: !3544, file: !1178, line: 2148, column: 3)
!3544 = distinct !DILexicalBlock(scope: !3526, file: !1178, line: 2147, column: 10)
!3545 = !DILocalVariable(name: "name", scope: !3546, file: !1178, line: 2160, type: !1382)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !1178, line: 2159, column: 37)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !1178, line: 2159, column: 7)
!3548 = distinct !DILexicalBlock(scope: !3527, file: !1178, line: 2159, column: 7)
!3549 = !DILocalVariable(name: "const_sv", scope: !3550, file: !1178, line: 2177, type: !441)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !1178, line: 2171, column: 22)
!3551 = distinct !DILexicalBlock(scope: !3483, file: !1178, line: 2171, column: 9)
!3552 = !DILocalVariable(name: "o", scope: !3550, file: !1178, line: 2178, type: !726)
!3553 = !DILocalVariable(name: "was_method", scope: !3554, file: !1178, line: 2188, type: !2122)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !1178, line: 2187, column: 43)
!3555 = distinct !DILexicalBlock(scope: !3550, file: !1178, line: 2187, column: 6)
!3556 = !DILocalVariable(name: "copied", scope: !3554, file: !1178, line: 2189, type: !760)
!3557 = !DILocalVariable(name: "pn", scope: !3558, file: !1178, line: 2191, type: !1382)
!3558 = distinct !DILexicalBlock(scope: !3559, file: !1178, line: 2190, column: 19)
!3559 = distinct !DILexicalBlock(scope: !3554, file: !1178, line: 2190, column: 10)
!3560 = !DILabel(scope: !3561, name: "constoff", file: !1178, line: 2250)
!3561 = distinct !DILexicalBlock(scope: !3555, file: !1178, line: 2249, column: 7)
!3562 = distinct !DILocation(line: 2294, column: 7, scope: !3480)
!3563 = !DILocation(line: 1959, column: 40, scope: !3483, inlinedAt: !3562)
!3564 = !DILocation(line: 1960, column: 33, scope: !3483, inlinedAt: !3562)
!3565 = !DILocation(line: 1961, column: 29, scope: !3483, inlinedAt: !3562)
!3566 = !DILocation(line: 1962, column: 23, scope: !3483, inlinedAt: !3562)
!3567 = !DILocation(line: 1963, column: 23, scope: !3483, inlinedAt: !3562)
!3568 = !DILocation(line: 1964, column: 22, scope: !3483, inlinedAt: !3562)
!3569 = !DILocation(line: 1982, column: 10, scope: !3570, inlinedAt: !3562)
!3570 = distinct !DILexicalBlock(scope: !3483, file: !1178, line: 1982, column: 9)
!3571 = !DILocation(line: 1982, column: 9, scope: !3483, inlinedAt: !3562)
!3572 = !DILocation(line: 1983, column: 11, scope: !3573, inlinedAt: !3562)
!3573 = distinct !DILexicalBlock(scope: !3574, file: !1178, line: 1983, column: 11)
!3574 = distinct !DILexicalBlock(scope: !3570, file: !1178, line: 1982, column: 19)
!3575 = !DILocation(line: 1983, column: 11, scope: !3574, inlinedAt: !3562)
!3576 = !DILocation(line: 1984, column: 12, scope: !3573, inlinedAt: !3562)
!3577 = !DILocation(line: 1984, column: 2, scope: !3573, inlinedAt: !3562)
!3578 = !DILocation(line: 1986, column: 12, scope: !3579, inlinedAt: !3562)
!3579 = distinct !DILexicalBlock(scope: !3573, file: !1178, line: 1985, column: 12)
!3580 = !DILocation(line: 1987, column: 7, scope: !3581, inlinedAt: !3562)
!3581 = distinct !DILexicalBlock(scope: !3579, file: !1178, line: 1987, column: 6)
!3582 = !DILocation(line: 1987, column: 24, scope: !3581, inlinedAt: !3562)
!3583 = !DILocation(line: 1988, column: 10, scope: !3581, inlinedAt: !3562)
!3584 = !DILocation(line: 1989, column: 6, scope: !3581, inlinedAt: !3562)
!3585 = !DILocation(line: 1989, column: 29, scope: !3581, inlinedAt: !3562)
!3586 = !DILocation(line: 1989, column: 55, scope: !3581, inlinedAt: !3562)
!3587 = !DILocation(line: 1989, column: 38, scope: !3581, inlinedAt: !3562)
!3588 = !DILocation(line: 1987, column: 6, scope: !3579, inlinedAt: !3562)
!3589 = !DILocation(line: 1990, column: 16, scope: !3590, inlinedAt: !3562)
!3590 = distinct !DILexicalBlock(scope: !3581, file: !1178, line: 1989, column: 68)
!3591 = !DILocation(line: 1994, column: 2, scope: !3590, inlinedAt: !3562)
!3592 = !DILocation(line: 1997, column: 13, scope: !3483, inlinedAt: !3562)
!3593 = !DILocation(line: 1997, column: 23, scope: !3483, inlinedAt: !3562)
!3594 = !DILocation(line: 0, scope: !2682, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 1997, column: 23, scope: !3483, inlinedAt: !3562)
!3596 = !DILocation(line: 40, column: 34, scope: !2682, inlinedAt: !3595)
!3597 = !DILocation(line: 1998, column: 10, scope: !3598, inlinedAt: !3562)
!3598 = distinct !DILexicalBlock(scope: !3483, file: !1178, line: 1998, column: 9)
!3599 = !DILocation(line: 1998, column: 9, scope: !3483, inlinedAt: !3562)
!3600 = !DILocation(line: 2001, column: 5, scope: !3483, inlinedAt: !3562)
!3601 = !DILocation(line: 2002, column: 5, scope: !3483, inlinedAt: !3562)
!3602 = !DILocation(line: 2003, column: 15, scope: !3483, inlinedAt: !3562)
!3603 = !DILocation(line: 2004, column: 9, scope: !3483, inlinedAt: !3562)
!3604 = !DILocation(line: 2004, column: 16, scope: !3605, inlinedAt: !3562)
!3605 = distinct !DILexicalBlock(scope: !3483, file: !1178, line: 2004, column: 9)
!3606 = !DILocation(line: 2006, column: 9, scope: !3607, inlinedAt: !3562)
!3607 = distinct !DILexicalBlock(scope: !3483, file: !1178, line: 2006, column: 9)
!3608 = !DILocation(line: 2006, column: 9, scope: !3483, inlinedAt: !3562)
!3609 = !DILocation(line: 0, scope: !2785, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 2007, column: 18, scope: !3607, inlinedAt: !3562)
!3611 = !DILocation(line: 142, column: 9, scope: !2785, inlinedAt: !3610)
!3612 = !DILocation(line: 143, column: 2, scope: !2792, inlinedAt: !3610)
!3613 = !DILocation(line: 143, column: 14, scope: !2792, inlinedAt: !3610)
!3614 = !DILocation(line: 2007, column: 2, scope: !3607, inlinedAt: !3562)
!3615 = !DILocation(line: 2007, column: 16, scope: !3607, inlinedAt: !3562)
!3616 = !DILocation(line: 2009, column: 5, scope: !3483, inlinedAt: !3562)
!3617 = !DILocation(line: 2010, column: 21, scope: !3483, inlinedAt: !3562)
!3618 = !DILocation(line: 0, scope: !1177, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 2011, column: 5, scope: !3483, inlinedAt: !3562)
!3620 = !DILocation(line: 207, column: 2, scope: !1197, inlinedAt: !3619)
!3621 = !DILocation(line: 226, column: 5, scope: !1177, inlinedAt: !3619)
!3622 = !DILocation(line: 227, column: 12, scope: !1177, inlinedAt: !3619)
!3623 = !DILocation(line: 235, column: 25, scope: !1188, inlinedAt: !3619)
!3624 = !DILocation(line: 0, scope: !1188, inlinedAt: !3619)
!3625 = !DILocation(line: 236, column: 2, scope: !1188, inlinedAt: !3619)
!3626 = !DILocation(line: 237, column: 2, scope: !1188, inlinedAt: !3619)
!3627 = !DILocation(line: 239, column: 2, scope: !1188, inlinedAt: !3619)
!3628 = !DILocation(line: 239, column: 46, scope: !1188, inlinedAt: !3619)
!3629 = !DILocation(line: 252, column: 5, scope: !1177, inlinedAt: !3619)
!3630 = !DILocation(line: 253, column: 25, scope: !1177, inlinedAt: !3619)
!3631 = !DILocation(line: 254, column: 5, scope: !1177, inlinedAt: !3619)
!3632 = !DILocation(line: 254, column: 27, scope: !1177, inlinedAt: !3619)
!3633 = !DILocation(line: 255, column: 12, scope: !1177, inlinedAt: !3619)
!3634 = !DILocation(line: 256, column: 5, scope: !1177, inlinedAt: !3619)
!3635 = !DILocation(line: 256, column: 12, scope: !1177, inlinedAt: !3619)
!3636 = !DILocation(line: 260, column: 17, scope: !1177, inlinedAt: !3619)
!3637 = !DILocation(line: 261, column: 18, scope: !1177, inlinedAt: !3619)
!3638 = !DILocation(line: 261, column: 16, scope: !1177, inlinedAt: !3619)
!3639 = !DILocation(line: 2011, column: 5, scope: !3483, inlinedAt: !3562)
!3640 = !DILocation(line: 2012, column: 45, scope: !3483, inlinedAt: !3562)
!3641 = !DILocation(line: 2012, column: 5, scope: !3483, inlinedAt: !3562)
!3642 = !DILocation(line: 2012, column: 20, scope: !3483, inlinedAt: !3562)
!3643 = !DILocation(line: 2012, column: 29, scope: !3483, inlinedAt: !3562)
!3644 = !DILocation(line: 2014, column: 5, scope: !3483, inlinedAt: !3562)
!3645 = !DILocation(line: 2016, column: 17, scope: !3483, inlinedAt: !3562)
!3646 = !DILocation(line: 2016, column: 15, scope: !3483, inlinedAt: !3562)
!3647 = !DILocation(line: 2018, column: 22, scope: !3483, inlinedAt: !3562)
!3648 = !DILocation(line: 2018, column: 25, scope: !3483, inlinedAt: !3562)
!3649 = !DILocation(line: 2018, column: 14, scope: !3483, inlinedAt: !3562)
!3650 = !DILocation(line: 2019, column: 4, scope: !3483, inlinedAt: !3562)
!3651 = !DILocation(line: 2021, column: 9, scope: !3652, inlinedAt: !3562)
!3652 = distinct !DILexicalBlock(scope: !3483, file: !1178, line: 2021, column: 9)
!3653 = !DILocation(line: 2021, column: 9, scope: !3483, inlinedAt: !3562)
!3654 = !DILocation(line: 2021, column: 66, scope: !3652, inlinedAt: !3562)
!3655 = !DILocation(line: 2021, column: 17, scope: !3652, inlinedAt: !3562)
!3656 = !DILocation(line: 2021, column: 32, scope: !3652, inlinedAt: !3562)
!3657 = !DILocation(line: 2021, column: 44, scope: !3652, inlinedAt: !3562)
!3658 = !DILocation(line: 2023, column: 24, scope: !3510, inlinedAt: !3562)
!3659 = !DILocation(line: 2023, column: 5, scope: !3511, inlinedAt: !3562)
!3660 = !DILocation(line: 2024, column: 30, scope: !3509, inlinedAt: !3562)
!3661 = !DILocation(line: 2024, column: 26, scope: !3509, inlinedAt: !3562)
!3662 = !DILocation(line: 2024, column: 42, scope: !3509, inlinedAt: !3562)
!3663 = !DILocation(line: 0, scope: !3509, inlinedAt: !3562)
!3664 = !DILocation(line: 2026, column: 6, scope: !3519, inlinedAt: !3562)
!3665 = !DILocation(line: 2026, column: 13, scope: !3519, inlinedAt: !3562)
!3666 = !DILocation(line: 2026, column: 16, scope: !3519, inlinedAt: !3562)
!3667 = !DILocation(line: 2026, column: 6, scope: !3509, inlinedAt: !3562)
!3668 = !DILocation(line: 2027, column: 8, scope: !3517, inlinedAt: !3562)
!3669 = !DILocation(line: 2027, column: 8, scope: !3518, inlinedAt: !3562)
!3670 = !DILocation(line: 2031, column: 10, scope: !3671, inlinedAt: !3562)
!3671 = distinct !DILexicalBlock(scope: !3516, file: !1178, line: 2031, column: 10)
!3672 = !DILocation(line: 2031, column: 10, scope: !3516, inlinedAt: !3562)
!3673 = !DILocation(line: 2034, column: 15, scope: !3674, inlinedAt: !3562)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !1178, line: 2034, column: 7)
!3675 = distinct !DILexicalBlock(scope: !3671, file: !1178, line: 2031, column: 32)
!3676 = !DILocation(line: 2034, column: 32, scope: !3674, inlinedAt: !3562)
!3677 = !DILocation(line: 2034, column: 25, scope: !3674, inlinedAt: !3562)
!3678 = !DILocation(line: 2034, column: 23, scope: !3674, inlinedAt: !3562)
!3679 = !DILocation(line: 2035, column: 4, scope: !3674, inlinedAt: !3562)
!3680 = !DILocation(line: 2035, column: 10, scope: !3674, inlinedAt: !3562)
!3681 = !DILocation(line: 2035, column: 25, scope: !3674, inlinedAt: !3562)
!3682 = !DILocation(line: 2036, column: 20, scope: !3674, inlinedAt: !3562)
!3683 = !DILocation(line: 2036, column: 24, scope: !3674, inlinedAt: !3562)
!3684 = !DILocation(line: 0, scope: !2682, inlinedAt: !3685)
!3685 = distinct !DILocation(line: 2036, column: 24, scope: !3674, inlinedAt: !3562)
!3686 = !DILocation(line: 40, column: 34, scope: !2682, inlinedAt: !3685)
!3687 = !DILocation(line: 2034, column: 7, scope: !3675, inlinedAt: !3562)
!3688 = !DILocation(line: 2037, column: 7, scope: !3689, inlinedAt: !3562)
!3689 = distinct !DILexicalBlock(scope: !3674, file: !1178, line: 2036, column: 46)
!3690 = !DILocalVariable(name: "name", arg: 1, scope: !3691, file: !1178, line: 1131, type: !1029)
!3691 = distinct !DISubprogram(name: "S_unavailable", scope: !1178, file: !1178, line: 1131, type: !3692, scopeLine: 1132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !1029}
!3694 = !{!3690}
!3695 = !DILocation(line: 0, scope: !3691, inlinedAt: !3696)
!3696 = distinct !DILocation(line: 2037, column: 7, scope: !3689, inlinedAt: !3562)
!3697 = !DILocation(line: 1136, column: 5, scope: !3691, inlinedAt: !3696)
!3698 = !DILocation(line: 1136, column: 22, scope: !3691, inlinedAt: !3696)
!3699 = !DILocation(line: 1139, column: 5, scope: !3691, inlinedAt: !3696)
!3700 = !DILocation(line: 1134, column: 5, scope: !3691, inlinedAt: !3696)
!3701 = !DILocation(line: 2039, column: 3, scope: !3689, inlinedAt: !3562)
!3702 = !DILocation(line: 2041, column: 7, scope: !3674, inlinedAt: !3562)
!3703 = !DILocation(line: 2043, column: 10, scope: !3516, inlinedAt: !3562)
!3704 = !DILocation(line: 2044, column: 36, scope: !3514, inlinedAt: !3562)
!3705 = !DILocation(line: 0, scope: !3514, inlinedAt: !3562)
!3706 = !DILocation(line: 2045, column: 21, scope: !3514, inlinedAt: !3562)
!3707 = !DILocation(line: 2053, column: 11, scope: !3523, inlinedAt: !3562)
!3708 = !DILocation(line: 2053, column: 31, scope: !3523, inlinedAt: !3562)
!3709 = !DILocation(line: 2053, column: 35, scope: !3523, inlinedAt: !3562)
!3710 = !DILocation(line: 2053, column: 11, scope: !3524, inlinedAt: !3562)
!3711 = !DILocation(line: 2055, column: 14, scope: !3712, inlinedAt: !3562)
!3712 = distinct !DILexicalBlock(scope: !3523, file: !1178, line: 2053, column: 55)
!3713 = !DILocation(line: 2056, column: 8, scope: !3714, inlinedAt: !3562)
!3714 = distinct !DILexicalBlock(scope: !3712, file: !1178, line: 2056, column: 8)
!3715 = !DILocation(line: 2056, column: 28, scope: !3714, inlinedAt: !3562)
!3716 = !DILocation(line: 2056, column: 8, scope: !3712, inlinedAt: !3562)
!3717 = !DILocation(line: 2058, column: 9, scope: !3712, inlinedAt: !3562)
!3718 = !DILocation(line: 2059, column: 4, scope: !3712, inlinedAt: !3562)
!3719 = !DILocation(line: 2060, column: 7, scope: !3712, inlinedAt: !3562)
!3720 = !DILocation(line: 2061, column: 16, scope: !3522, inlinedAt: !3562)
!3721 = !DILocation(line: 2061, column: 34, scope: !3522, inlinedAt: !3562)
!3722 = !DILocation(line: 2061, column: 37, scope: !3522, inlinedAt: !3562)
!3723 = !DILocation(line: 2061, column: 41, scope: !3522, inlinedAt: !3562)
!3724 = !DILocation(line: 2061, column: 16, scope: !3523, inlinedAt: !3562)
!3725 = !DILocation(line: 2068, column: 4, scope: !3521, inlinedAt: !3562)
!3726 = !DILocalVariable(name: "str", arg: 2, scope: !3727, file: !3728, line: 519, type: !1146)
!3727 = distinct !DISubprogram(name: "S_perl_hash_one_at_a_time_hard", scope: !3728, file: !3728, line: 519, type: !3729, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3733)
!3728 = !DIFile(filename: "apps/500.perlbench_r/src/hv_func.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ed8463fea758373937034f35bb9aed3a")
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!448, !3731, !1146, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!3732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!3733 = !{!3734, !3726, !3735, !3736, !3737}
!3734 = !DILocalVariable(name: "seed", arg: 1, scope: !3727, file: !3728, line: 519, type: !3731)
!3735 = !DILocalVariable(name: "len", arg: 3, scope: !3727, file: !3728, line: 519, type: !3732)
!3736 = !DILocalVariable(name: "end", scope: !3727, file: !3728, line: 520, type: !3731)
!3737 = !DILocalVariable(name: "hash", scope: !3727, file: !3728, line: 521, type: !448)
!3738 = !DILocation(line: 0, scope: !3727, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 2068, column: 4, scope: !3521, inlinedAt: !3562)
!3740 = !DILocation(line: 520, column: 66, scope: !3727, inlinedAt: !3739)
!3741 = !DILocation(line: 521, column: 32, scope: !3727, inlinedAt: !3739)
!3742 = !DILocation(line: 521, column: 30, scope: !3727, inlinedAt: !3739)
!3743 = !DILocation(line: 523, column: 16, scope: !3727, inlinedAt: !3739)
!3744 = !DILocation(line: 523, column: 5, scope: !3727, inlinedAt: !3739)
!3745 = !DILocation(line: 524, column: 14, scope: !3746, inlinedAt: !3739)
!3746 = distinct !DILexicalBlock(scope: !3727, file: !3728, line: 523, column: 23)
!3747 = !DILocation(line: 525, column: 23, scope: !3746, inlinedAt: !3739)
!3748 = !DILocation(line: 525, column: 14, scope: !3746, inlinedAt: !3739)
!3749 = !DILocation(line: 526, column: 21, scope: !3746, inlinedAt: !3739)
!3750 = !DILocation(line: 526, column: 17, scope: !3746, inlinedAt: !3739)
!3751 = !DILocation(line: 526, column: 14, scope: !3746, inlinedAt: !3739)
!3752 = distinct !{!3752, !3744, !3753, !1547, !1548}
!3753 = !DILocation(line: 527, column: 5, scope: !3727, inlinedAt: !3739)
!3754 = !DILocation(line: 529, column: 10, scope: !3727, inlinedAt: !3739)
!3755 = !DILocation(line: 530, column: 19, scope: !3727, inlinedAt: !3739)
!3756 = !DILocation(line: 530, column: 10, scope: !3727, inlinedAt: !3739)
!3757 = !DILocation(line: 533, column: 10, scope: !3727, inlinedAt: !3739)
!3758 = !DILocation(line: 534, column: 19, scope: !3727, inlinedAt: !3739)
!3759 = !DILocation(line: 534, column: 10, scope: !3727, inlinedAt: !3739)
!3760 = !DILocation(line: 537, column: 10, scope: !3727, inlinedAt: !3739)
!3761 = !DILocation(line: 538, column: 19, scope: !3727, inlinedAt: !3739)
!3762 = !DILocation(line: 538, column: 10, scope: !3727, inlinedAt: !3739)
!3763 = !DILocation(line: 541, column: 10, scope: !3727, inlinedAt: !3739)
!3764 = !DILocation(line: 542, column: 19, scope: !3727, inlinedAt: !3739)
!3765 = !DILocation(line: 542, column: 10, scope: !3727, inlinedAt: !3739)
!3766 = !DILocation(line: 545, column: 10, scope: !3727, inlinedAt: !3739)
!3767 = !DILocation(line: 546, column: 19, scope: !3727, inlinedAt: !3739)
!3768 = !DILocation(line: 546, column: 10, scope: !3727, inlinedAt: !3739)
!3769 = !DILocation(line: 548, column: 10, scope: !3727, inlinedAt: !3739)
!3770 = !DILocation(line: 549, column: 19, scope: !3727, inlinedAt: !3739)
!3771 = !DILocation(line: 549, column: 10, scope: !3727, inlinedAt: !3739)
!3772 = !DILocation(line: 550, column: 18, scope: !3727, inlinedAt: !3739)
!3773 = !DILocation(line: 0, scope: !3521, inlinedAt: !3562)
!3774 = !DILocation(line: 2070, column: 9, scope: !3521, inlinedAt: !3562)
!3775 = !DILocation(line: 2071, column: 4, scope: !3521, inlinedAt: !3562)
!3776 = !DILocation(line: 0, scope: !1461, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 2071, column: 4, scope: !3521, inlinedAt: !3562)
!3778 = !DILocation(line: 233, column: 12, scope: !1461, inlinedAt: !3777)
!3779 = !DILocation(line: 234, column: 38, scope: !1461, inlinedAt: !3777)
!3780 = !DILocation(line: 234, column: 47, scope: !1461, inlinedAt: !3777)
!3781 = !DILocation(line: 2077, column: 4, scope: !3521, inlinedAt: !3562)
!3782 = !DILocation(line: 2078, column: 7, scope: !3521, inlinedAt: !3562)
!3783 = !DILocation(line: 2079, column: 17, scope: !3522, inlinedAt: !3562)
!3784 = !DILocation(line: 0, scope: !2785, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 2079, column: 17, scope: !3522, inlinedAt: !3562)
!3786 = !DILocation(line: 142, column: 9, scope: !2792, inlinedAt: !3785)
!3787 = !DILocation(line: 142, column: 9, scope: !2785, inlinedAt: !3785)
!3788 = !DILocation(line: 143, column: 2, scope: !2792, inlinedAt: !3785)
!3789 = !DILocation(line: 143, column: 14, scope: !2792, inlinedAt: !3785)
!3790 = !DILocation(line: 2083, column: 7, scope: !3791, inlinedAt: !3562)
!3791 = distinct !DILexicalBlock(scope: !3792, file: !1178, line: 2082, column: 26)
!3792 = distinct !DILexicalBlock(scope: !3524, file: !1178, line: 2080, column: 26)
!3793 = !DILocation(line: 2085, column: 12, scope: !3791, inlinedAt: !3562)
!3794 = !DILocation(line: 0, scope: !3524, inlinedAt: !3562)
!3795 = !DILocation(line: 2087, column: 13, scope: !3796, inlinedAt: !3562)
!3796 = distinct !DILexicalBlock(scope: !3514, file: !1178, line: 2087, column: 7)
!3797 = !DILocation(line: 2087, column: 20, scope: !3796, inlinedAt: !3562)
!3798 = !DILocation(line: 0, scope: !3792, inlinedAt: !3562)
!3799 = !DILocation(line: 2087, column: 23, scope: !3796, inlinedAt: !3562)
!3800 = !DILocation(line: 2087, column: 7, scope: !3514, inlinedAt: !3562)
!3801 = !DILocation(line: 0, scope: !3260, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 2088, column: 7, scope: !3796, inlinedAt: !3562)
!3803 = !DILocation(line: 197, column: 12, scope: !3260, inlinedAt: !3802)
!3804 = !DILocation(line: 197, column: 24, scope: !3260, inlinedAt: !3802)
!3805 = !DILocation(line: 2088, column: 7, scope: !3796, inlinedAt: !3562)
!3806 = !DILocation(line: 2092, column: 21, scope: !3807, inlinedAt: !3562)
!3807 = distinct !DILexicalBlock(scope: !3519, file: !1178, line: 2092, column: 11)
!3808 = !DILocation(line: 2092, column: 11, scope: !3519, inlinedAt: !3562)
!3809 = !DILocation(line: 2093, column: 11, scope: !3810, inlinedAt: !3562)
!3810 = distinct !DILexicalBlock(scope: !3807, file: !1178, line: 2092, column: 40)
!3811 = !DILocalVariable(name: "sv", arg: 1, scope: !3812, file: !1517, line: 147, type: !441)
!3812 = distinct !DISubprogram(name: "S_SvREFCNT_inc_NN", scope: !1517, file: !1517, line: 147, type: !2786, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3813)
!3813 = !{!3811}
!3814 = !DILocation(line: 0, scope: !3812, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 2093, column: 11, scope: !3810, inlinedAt: !3562)
!3816 = !DILocation(line: 149, column: 5, scope: !3812, inlinedAt: !3815)
!3817 = !DILocation(line: 149, column: 17, scope: !3812, inlinedAt: !3815)
!3818 = !DILocation(line: 2094, column: 2, scope: !3810, inlinedAt: !3562)
!3819 = !DILocation(line: 2096, column: 11, scope: !3820, inlinedAt: !3562)
!3820 = distinct !DILexicalBlock(scope: !3807, file: !1178, line: 2095, column: 7)
!3821 = !DILocation(line: 2097, column: 6, scope: !3820, inlinedAt: !3562)
!3822 = !DILocation(line: 1968, column: 10, scope: !3483, inlinedAt: !3562)
!3823 = !DILocation(line: 1967, column: 9, scope: !3483, inlinedAt: !3562)
!3824 = !DILocation(line: 2099, column: 2, scope: !3509, inlinedAt: !3562)
!3825 = !DILocation(line: 2099, column: 16, scope: !3509, inlinedAt: !3562)
!3826 = !DILocation(line: 2023, column: 31, scope: !3510, inlinedAt: !3562)
!3827 = distinct !{!3827, !3659, !3828, !1547, !1548}
!3828 = !DILocation(line: 2100, column: 5, scope: !3511, inlinedAt: !3562)
!3829 = !DILocation(line: 2102, column: 9, scope: !3529, inlinedAt: !3562)
!3830 = !DILocation(line: 2102, column: 9, scope: !3483, inlinedAt: !3562)
!3831 = !DILocation(line: 2104, column: 6, scope: !3527, inlinedAt: !3562)
!3832 = !DILocation(line: 2104, column: 14, scope: !3527, inlinedAt: !3562)
!3833 = !DILocation(line: 2159, column: 7, scope: !3548, inlinedAt: !3562)
!3834 = !DILocation(line: 2117, column: 10, scope: !3526, inlinedAt: !3562)
!3835 = !DILocation(line: 2118, column: 18, scope: !3836, inlinedAt: !3562)
!3836 = distinct !DILexicalBlock(scope: !3526, file: !1178, line: 2117, column: 10)
!3837 = !DILocation(line: 2118, column: 3, scope: !3836, inlinedAt: !3562)
!3838 = !DILocation(line: 2119, column: 6, scope: !3526, inlinedAt: !3562)
!3839 = !DILocation(line: 0, scope: !3526, inlinedAt: !3562)
!3840 = !DILocation(line: 2123, column: 8, scope: !3531, inlinedAt: !3562)
!3841 = !DILocation(line: 2123, column: 4, scope: !3531, inlinedAt: !3562)
!3842 = !DILocation(line: 2123, column: 20, scope: !3531, inlinedAt: !3562)
!3843 = !DILocation(line: 0, scope: !3531, inlinedAt: !3562)
!3844 = !DILocation(line: 2124, column: 11, scope: !3537, inlinedAt: !3562)
!3845 = !DILocation(line: 2124, column: 16, scope: !3537, inlinedAt: !3562)
!3846 = !DILocation(line: 2125, column: 12, scope: !3537, inlinedAt: !3562)
!3847 = !DILocation(line: 2125, column: 31, scope: !3537, inlinedAt: !3562)
!3848 = !DILocation(line: 2125, column: 34, scope: !3537, inlinedAt: !3562)
!3849 = !DILocation(line: 2125, column: 53, scope: !3537, inlinedAt: !3562)
!3850 = !DILocation(line: 2126, column: 8, scope: !3537, inlinedAt: !3562)
!3851 = !DILocation(line: 2126, column: 36, scope: !3537, inlinedAt: !3562)
!3852 = !DILocation(line: 2124, column: 11, scope: !3531, inlinedAt: !3562)
!3853 = !DILocation(line: 2128, column: 4, scope: !3536, inlinedAt: !3562)
!3854 = !DILocation(line: 2128, column: 26, scope: !3536, inlinedAt: !3562)
!3855 = !DILocation(line: 0, scope: !3536, inlinedAt: !3562)
!3856 = !DILocation(line: 2128, column: 15, scope: !3536, inlinedAt: !3562)
!3857 = !DILocation(line: 2129, column: 31, scope: !3536, inlinedAt: !3562)
!3858 = !DILocation(line: 2129, column: 22, scope: !3536, inlinedAt: !3562)
!3859 = !DILocation(line: 2131, column: 17, scope: !3536, inlinedAt: !3562)
!3860 = !DILocation(line: 2133, column: 8, scope: !3861, inlinedAt: !3562)
!3861 = distinct !DILexicalBlock(scope: !3536, file: !1178, line: 2133, column: 8)
!3862 = !DILocation(line: 2133, column: 12, scope: !3861, inlinedAt: !3562)
!3863 = !DILocation(line: 2133, column: 15, scope: !3861, inlinedAt: !3562)
!3864 = !DILocation(line: 2133, column: 8, scope: !3536, inlinedAt: !3562)
!3865 = !DILocation(line: 2134, column: 31, scope: !3866, inlinedAt: !3562)
!3866 = distinct !DILexicalBlock(scope: !3861, file: !1178, line: 2133, column: 21)
!3867 = !DILocation(line: 2135, column: 17, scope: !3866, inlinedAt: !3562)
!3868 = !DILocation(line: 2134, column: 8, scope: !3866, inlinedAt: !3562)
!3869 = !DILocation(line: 2137, column: 14, scope: !3866, inlinedAt: !3562)
!3870 = !DILocation(line: 2141, column: 17, scope: !3866, inlinedAt: !3562)
!3871 = !DILocation(line: 2143, column: 4, scope: !3866, inlinedAt: !3562)
!3872 = !DILocation(line: 0, scope: !3534, inlinedAt: !3562)
!3873 = !DILocation(line: 2144, column: 7, scope: !3537, inlinedAt: !3562)
!3874 = !DILocation(line: 2144, column: 7, scope: !3536, inlinedAt: !3562)
!3875 = !DILocation(line: 2121, column: 22, scope: !3532, inlinedAt: !3562)
!3876 = !DILocation(line: 2121, column: 29, scope: !3532, inlinedAt: !3562)
!3877 = !DILocation(line: 2121, column: 3, scope: !3533, inlinedAt: !3562)
!3878 = distinct !{!3878, !3838, !3879, !1547, !1548}
!3879 = !DILocation(line: 2146, column: 34, scope: !3526, inlinedAt: !3562)
!3880 = !DILocation(line: 2146, column: 15, scope: !3526, inlinedAt: !3562)
!3881 = !DILocation(line: 2146, column: 6, scope: !3534, inlinedAt: !3562)
!3882 = !DILocation(line: 2147, column: 10, scope: !3544, inlinedAt: !3562)
!3883 = !DILocation(line: 2147, column: 10, scope: !3526, inlinedAt: !3562)
!3884 = !DILocation(line: 2150, column: 8, scope: !3541, inlinedAt: !3562)
!3885 = !DILocation(line: 2150, column: 4, scope: !3541, inlinedAt: !3562)
!3886 = !DILocation(line: 2150, column: 20, scope: !3541, inlinedAt: !3562)
!3887 = !DILocation(line: 0, scope: !3541, inlinedAt: !3562)
!3888 = !DILocation(line: 2151, column: 11, scope: !3889, inlinedAt: !3562)
!3889 = distinct !DILexicalBlock(scope: !3541, file: !1178, line: 2151, column: 11)
!3890 = !DILocation(line: 2151, column: 16, scope: !3889, inlinedAt: !3562)
!3891 = !DILocation(line: 2152, column: 12, scope: !3889, inlinedAt: !3562)
!3892 = !DILocation(line: 2152, column: 31, scope: !3889, inlinedAt: !3562)
!3893 = !DILocation(line: 2152, column: 34, scope: !3889, inlinedAt: !3562)
!3894 = !DILocation(line: 2152, column: 53, scope: !3889, inlinedAt: !3562)
!3895 = !DILocation(line: 2153, column: 8, scope: !3889, inlinedAt: !3562)
!3896 = !DILocation(line: 2153, column: 36, scope: !3889, inlinedAt: !3562)
!3897 = !DILocation(line: 2151, column: 11, scope: !3541, inlinedAt: !3562)
!3898 = !DILocation(line: 2154, column: 27, scope: !3889, inlinedAt: !3562)
!3899 = !DILocation(line: 2156, column: 7, scope: !3889, inlinedAt: !3562)
!3900 = !DILocation(line: 2154, column: 4, scope: !3889, inlinedAt: !3562)
!3901 = !DILocation(line: 2148, column: 29, scope: !3542, inlinedAt: !3562)
!3902 = !DILocation(line: 2148, column: 22, scope: !3542, inlinedAt: !3562)
!3903 = !DILocation(line: 2148, column: 3, scope: !3543, inlinedAt: !3562)
!3904 = distinct !{!3904, !3903, !3905, !1547, !1548}
!3905 = !DILocation(line: 2157, column: 3, scope: !3543, inlinedAt: !3562)
!3906 = !DILocation(line: 2160, column: 33, scope: !3546, inlinedAt: !3562)
!3907 = !DILocation(line: 2160, column: 29, scope: !3546, inlinedAt: !3562)
!3908 = !DILocation(line: 2160, column: 45, scope: !3546, inlinedAt: !3562)
!3909 = !DILocation(line: 0, scope: !3546, inlinedAt: !3562)
!3910 = !DILocation(line: 2161, column: 10, scope: !3911, inlinedAt: !3562)
!3911 = distinct !DILexicalBlock(scope: !3546, file: !1178, line: 2161, column: 10)
!3912 = !DILocation(line: 2161, column: 15, scope: !3911, inlinedAt: !3562)
!3913 = !DILocation(line: 2161, column: 48, scope: !3911, inlinedAt: !3562)
!3914 = !DILocation(line: 2162, column: 7, scope: !3911, inlinedAt: !3562)
!3915 = !DILocation(line: 2162, column: 10, scope: !3911, inlinedAt: !3562)
!3916 = !DILocation(line: 2162, column: 29, scope: !3911, inlinedAt: !3562)
!3917 = !DILocation(line: 2162, column: 36, scope: !3911, inlinedAt: !3562)
!3918 = !DILocation(line: 2163, column: 26, scope: !3911, inlinedAt: !3562)
!3919 = !DILocation(line: 2163, column: 42, scope: !3911, inlinedAt: !3562)
!3920 = !DILocation(line: 2163, column: 3, scope: !3911, inlinedAt: !3562)
!3921 = !DILocation(line: 2159, column: 33, scope: !3547, inlinedAt: !3562)
!3922 = !DILocation(line: 2159, column: 26, scope: !3547, inlinedAt: !3562)
!3923 = distinct !{!3923, !3833, !3924, !1547, !1548}
!3924 = !DILocation(line: 2165, column: 2, scope: !3548, inlinedAt: !3562)
!3925 = !DILocation(line: 2168, column: 9, scope: !3483, inlinedAt: !3562)
!3926 = !DILocation(line: 2168, column: 16, scope: !3927, inlinedAt: !3562)
!3927 = distinct !DILexicalBlock(scope: !3483, file: !1178, line: 2168, column: 9)
!3928 = !DILocation(line: 2169, column: 5, scope: !3483, inlinedAt: !3562)
!3929 = !DILocation(line: 2171, column: 9, scope: !3551, inlinedAt: !3562)
!3930 = !DILocation(line: 2171, column: 9, scope: !3483, inlinedAt: !3562)
!3931 = !DILocation(line: 2178, column: 10, scope: !3550, inlinedAt: !3562)
!3932 = !DILocation(line: 0, scope: !3550, inlinedAt: !3562)
!3933 = !DILocation(line: 2180, column: 2, scope: !3550, inlinedAt: !3562)
!3934 = !DILocation(line: 2180, column: 2, scope: !3935, inlinedAt: !3562)
!3935 = distinct !DILexicalBlock(scope: !3550, file: !1178, line: 2180, column: 2)
!3936 = !DILocation(line: 2181, column: 13, scope: !3937, inlinedAt: !3562)
!3937 = distinct !DILexicalBlock(scope: !3938, file: !1178, line: 2181, column: 10)
!3938 = distinct !DILexicalBlock(scope: !3935, file: !1178, line: 2180, column: 2)
!3939 = !DILocation(line: 2181, column: 21, scope: !3937, inlinedAt: !3562)
!3940 = !DILocation(line: 2181, column: 10, scope: !3938, inlinedAt: !3562)
!3941 = distinct !{!3941, !3934, !3942, !1547, !1548}
!3942 = !DILocation(line: 2182, column: 3, scope: !3935, inlinedAt: !3562)
!3943 = !DILocation(line: 2184, column: 13, scope: !3550, inlinedAt: !3562)
!3944 = !DILocation(line: 2187, column: 6, scope: !3555, inlinedAt: !3562)
!3945 = !DILocation(line: 2187, column: 15, scope: !3555, inlinedAt: !3562)
!3946 = !DILocation(line: 2187, column: 18, scope: !3555, inlinedAt: !3562)
!3947 = !DILocation(line: 2187, column: 37, scope: !3555, inlinedAt: !3562)
!3948 = !DILocation(line: 2187, column: 6, scope: !3550, inlinedAt: !3562)
!3949 = !DILocation(line: 2188, column: 30, scope: !3554, inlinedAt: !3562)
!3950 = !DILocation(line: 0, scope: !3554, inlinedAt: !3562)
!3951 = !DILocation(line: 2190, column: 10, scope: !3554, inlinedAt: !3562)
!3952 = !DILocation(line: 2192, column: 7, scope: !3558, inlinedAt: !3562)
!3953 = !DILocation(line: 2193, column: 5, scope: !3558, inlinedAt: !3562)
!3954 = !DILocation(line: 0, scope: !3558, inlinedAt: !3562)
!3955 = !DILocation(line: 2197, column: 7, scope: !3956, inlinedAt: !3562)
!3956 = distinct !DILexicalBlock(scope: !3558, file: !1178, line: 2197, column: 7)
!3957 = !DILocation(line: 2197, column: 7, scope: !3558, inlinedAt: !3562)
!3958 = !DILocation(line: 2213, column: 11, scope: !3959, inlinedAt: !3562)
!3959 = distinct !DILexicalBlock(scope: !3960, file: !1178, line: 2213, column: 11)
!3960 = distinct !DILexicalBlock(scope: !3956, file: !1178, line: 2197, column: 26)
!3961 = !DILocation(line: 2215, column: 6, scope: !3959, inlinedAt: !3562)
!3962 = !DILocation(line: 2216, column: 8, scope: !3959, inlinedAt: !3562)
!3963 = !DILocation(line: 2216, column: 12, scope: !3959, inlinedAt: !3562)
!3964 = !DILocation(line: 2213, column: 11, scope: !3960, inlinedAt: !3562)
!3965 = !DILocation(line: 2218, column: 4, scope: !3966, inlinedAt: !3562)
!3966 = distinct !DILexicalBlock(scope: !3959, file: !1178, line: 2217, column: 7)
!3967 = !DILocation(line: 2230, column: 15, scope: !3966, inlinedAt: !3562)
!3968 = !DILocation(line: 2237, column: 10, scope: !3554, inlinedAt: !3562)
!3969 = !DILocation(line: 2238, column: 3, scope: !3970, inlinedAt: !3562)
!3970 = distinct !DILexicalBlock(scope: !3554, file: !1178, line: 2237, column: 10)
!3971 = !DILocation(line: 2242, column: 6, scope: !3554, inlinedAt: !3562)
!3972 = !DILocation(line: 2243, column: 6, scope: !3554, inlinedAt: !3562)
!3973 = !DILocation(line: 0, scope: !1516, inlinedAt: !3974)
!3974 = distinct !DILocation(line: 2244, column: 6, scope: !3554, inlinedAt: !3562)
!3975 = !DILocation(line: 173, column: 14, scope: !1516, inlinedAt: !3974)
!3976 = !DILocation(line: 174, column: 9, scope: !1526, inlinedAt: !3974)
!3977 = !DILocation(line: 174, column: 9, scope: !1516, inlinedAt: !3974)
!3978 = !DILocation(line: 175, column: 20, scope: !1526, inlinedAt: !3974)
!3979 = !DILocation(line: 175, column: 15, scope: !1526, inlinedAt: !3974)
!3980 = !DILocation(line: 175, column: 2, scope: !1526, inlinedAt: !3974)
!3981 = !DILocation(line: 177, column: 2, scope: !1526, inlinedAt: !3974)
!3982 = !DILocation(line: 2245, column: 11, scope: !3554, inlinedAt: !3562)
!3983 = !DILocation(line: 2246, column: 10, scope: !3554, inlinedAt: !3562)
!3984 = !DILocation(line: 2247, column: 3, scope: !3985, inlinedAt: !3562)
!3985 = distinct !DILexicalBlock(scope: !3554, file: !1178, line: 2246, column: 10)
!3986 = !DILocation(line: 2250, column: 4, scope: !3561, inlinedAt: !3562)
!3987 = !DILocation(line: 2251, column: 6, scope: !3561, inlinedAt: !3562)
!3988 = !DILocation(line: 2255, column: 12, scope: !3483, inlinedAt: !3562)
!3989 = !DILocation(line: 2255, column: 5, scope: !3483, inlinedAt: !3562)
!3990 = !DILocation(line: 2294, column: 2, scope: !3480)
!3991 = !DILocation(line: 2303, column: 5, scope: !3403)
!3992 = distinct !DISubprogram(name: "Perl_cv_clone_into", scope: !1178, file: !1178, line: 2317, type: !3993, scopeLine: 2318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3995)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!703, !703, !703}
!3995 = !{!3996, !3997}
!3996 = !DILocalVariable(name: "proto", arg: 1, scope: !3992, file: !1178, line: 2317, type: !703)
!3997 = !DILocalVariable(name: "target", arg: 2, scope: !3992, file: !1178, line: 2317, type: !703)
!3998 = !DILocation(line: 0, scope: !3992)
!3999 = !DILocation(line: 0, scope: !1344, inlinedAt: !4000)
!4000 = distinct !DILocation(line: 2320, column: 5, scope: !3992)
!4001 = !DILocation(line: 301, column: 5, scope: !1344, inlinedAt: !4000)
!4002 = !DILocation(line: 2321, column: 12, scope: !3992)
!4003 = !DILocation(line: 2321, column: 5, scope: !3992)
!4004 = distinct !DISubprogram(name: "Perl_cv_name", scope: !1178, file: !1178, line: 2344, type: !4005, scopeLine: 2345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4007)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!441, !703, !441, !448}
!4007 = !{!4008, !4009, !4010, !4011, !4013}
!4008 = !DILocalVariable(name: "cv", arg: 1, scope: !4004, file: !1178, line: 2344, type: !703)
!4009 = !DILocalVariable(name: "sv", arg: 2, scope: !4004, file: !1178, line: 2344, type: !441)
!4010 = !DILocalVariable(name: "flags", arg: 3, scope: !4004, file: !1178, line: 2344, type: !448)
!4011 = !DILocalVariable(name: "retsv", scope: !4012, file: !1178, line: 2352, type: !898)
!4012 = distinct !DILexicalBlock(scope: !4004, file: !1178, line: 2351, column: 5)
!4013 = !DILocalVariable(name: "bmxk", scope: !4014, file: !1178, line: 2360, type: !4021)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !1178, line: 2360, column: 7)
!4015 = distinct !DILexicalBlock(scope: !4016, file: !1178, line: 2357, column: 8)
!4016 = distinct !DILexicalBlock(scope: !4017, file: !1178, line: 2355, column: 7)
!4017 = distinct !DILexicalBlock(scope: !4018, file: !1178, line: 2354, column: 23)
!4018 = distinct !DILexicalBlock(scope: !4019, file: !1178, line: 2354, column: 10)
!4019 = distinct !DILexicalBlock(scope: !4020, file: !1178, line: 2353, column: 34)
!4020 = distinct !DILexicalBlock(scope: !4012, file: !1178, line: 2353, column: 10)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !567)
!4022 = !DILocation(line: 0, scope: !4004)
!4023 = !DILocation(line: 2347, column: 10, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4004, file: !1178, line: 2347, column: 9)
!4025 = !DILocation(line: 0, scope: !4024)
!4026 = !DILocation(line: 2347, column: 41, scope: !4024)
!4027 = !DILocation(line: 2347, column: 9, scope: !4004)
!4028 = !DILocation(line: 2348, column: 6, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4030, file: !1178, line: 2348, column: 6)
!4030 = distinct !DILexicalBlock(scope: !4024, file: !1178, line: 2347, column: 54)
!4031 = !DILocation(line: 2348, column: 6, scope: !4030)
!4032 = !DILocation(line: 2348, column: 10, scope: !4029)
!4033 = !DILocation(line: 2352, column: 21, scope: !4012)
!4034 = !DILocation(line: 2352, column: 33, scope: !4012)
!4035 = !DILocation(line: 2353, column: 10, scope: !4020)
!4036 = !DILocation(line: 0, scope: !4012)
!4037 = !DILocation(line: 2353, column: 21, scope: !4020)
!4038 = !DILocation(line: 2353, column: 10, scope: !4012)
!4039 = !DILocation(line: 2354, column: 10, scope: !4018)
!4040 = !DILocation(line: 0, scope: !4018)
!4041 = !DILocation(line: 2354, column: 10, scope: !4019)
!4042 = !DILocation(line: 2355, column: 21, scope: !4016)
!4043 = !DILocation(line: 0, scope: !1461, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 2356, column: 7, scope: !4016)
!4045 = !DILocation(line: 234, column: 38, scope: !1461, inlinedAt: !4044)
!4046 = !DILocation(line: 234, column: 47, scope: !1461, inlinedAt: !4044)
!4047 = !DILocation(line: 2356, column: 7, scope: !4016)
!4048 = !DILocation(line: 2358, column: 7, scope: !4015)
!4049 = !DILocation(line: 2359, column: 7, scope: !4015)
!4050 = !DILocation(line: 2360, column: 7, scope: !4014)
!4051 = !DILocation(line: 0, scope: !1461, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 2360, column: 7, scope: !4014)
!4053 = !DILocation(line: 233, column: 12, scope: !1461, inlinedAt: !4052)
!4054 = !DILocation(line: 234, column: 38, scope: !1461, inlinedAt: !4052)
!4055 = !DILocation(line: 234, column: 47, scope: !1461, inlinedAt: !4052)
!4056 = !DILocation(line: 0, scope: !4014)
!4057 = !DILocation(line: 0, scope: !3447, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 2365, column: 11, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4018, file: !1178, line: 2363, column: 15)
!4060 = !DILocation(line: 0, scope: !3447, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 2364, column: 3, scope: !4059)
!4062 = !DILocation(line: 0, scope: !4059)
!4063 = !DILocation(line: 2363, column: 29, scope: !4059)
!4064 = !DILocation(line: 2364, column: 3, scope: !4059)
!4065 = !DILocation(line: 2365, column: 11, scope: !4059)
!4066 = !DILocation(line: 2367, column: 17, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4020, file: !1178, line: 2367, column: 11)
!4068 = !DILocation(line: 2367, column: 11, scope: !4020)
!4069 = !DILocation(line: 2367, column: 36, scope: !4067)
!4070 = !DILocation(line: 2368, column: 7, scope: !4067)
!4071 = !DILocation(line: 2371, column: 1, scope: !4004)
!4072 = !DISubprogram(name: "Perl_sv_setsv_flags", scope: !1287, file: !1287, line: 4683, type: !4073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{null, !441, !441, !930}
!4075 = !DISubprogram(name: "Perl_sv_newmortal", scope: !1287, file: !1287, line: 4449, type: !2848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4076 = !DISubprogram(name: "Perl_sv_sethek", scope: !1287, file: !1287, line: 4582, type: !4077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !898, !4079}
!4079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4080)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!4082 = !DISubprogram(name: "Perl_sv_catpvn_flags", scope: !1287, file: !1287, line: 4229, type: !4083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{null, !898, !515, !3732, !930}
!4085 = !DISubprogram(name: "Perl_gv_efullname4", scope: !1287, file: !1287, line: 1438, type: !4086, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !441, !4088, !515, !760}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!4090 = distinct !DISubprogram(name: "Perl_pad_fixup_inner_anons", scope: !1178, file: !1178, line: 2384, type: !4091, scopeLine: 2385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4093)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{null, !784, !703, !703}
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4106, !4109, !4112, !4113, !4114, !4117}
!4094 = !DILocalVariable(name: "padlist", arg: 1, scope: !4090, file: !1178, line: 2384, type: !784)
!4095 = !DILocalVariable(name: "old_cv", arg: 2, scope: !4090, file: !1178, line: 2384, type: !703)
!4096 = !DILocalVariable(name: "new_cv", arg: 3, scope: !4090, file: !1178, line: 2384, type: !703)
!4097 = !DILocalVariable(name: "ix", scope: !4090, file: !1178, line: 2386, type: !517)
!4098 = !DILocalVariable(name: "comppad_name", scope: !4090, file: !1178, line: 2387, type: !1372)
!4099 = !DILocalVariable(name: "comppad", scope: !4090, file: !1178, line: 2388, type: !1190)
!4100 = !DILocalVariable(name: "namepad", scope: !4090, file: !1178, line: 2389, type: !1374)
!4101 = !DILocalVariable(name: "curpad", scope: !4090, file: !1178, line: 2390, type: !955)
!4102 = !DILocalVariable(name: "name", scope: !4103, file: !1178, line: 2396, type: !2461)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !1178, line: 2395, column: 59)
!4104 = distinct !DILexicalBlock(scope: !4105, file: !1178, line: 2395, column: 5)
!4105 = distinct !DILexicalBlock(scope: !4090, file: !1178, line: 2395, column: 5)
!4106 = !DILocalVariable(name: "innercv", scope: !4107, file: !1178, line: 2400, type: !703)
!4107 = distinct !DILexicalBlock(scope: !4108, file: !1178, line: 2399, column: 2)
!4108 = distinct !DILexicalBlock(scope: !4103, file: !1178, line: 2397, column: 6)
!4109 = !DILocalVariable(name: "cv", scope: !4110, file: !1178, line: 2402, type: !703)
!4110 = distinct !DILexicalBlock(scope: !4111, file: !1178, line: 2401, column: 38)
!4111 = distinct !DILexicalBlock(scope: !4107, file: !1178, line: 2401, column: 8)
!4112 = !DILocalVariable(name: "names", scope: !4110, file: !1178, line: 2403, type: !1028)
!4113 = !DILocalVariable(name: "i", scope: !4110, file: !1178, line: 2404, type: !738)
!4114 = !DILocalVariable(name: "rv", scope: !4115, file: !1178, line: 2429, type: !898)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !1178, line: 2428, column: 9)
!4116 = distinct !DILexicalBlock(scope: !4107, file: !1178, line: 2413, column: 8)
!4117 = !DILocalVariable(name: "innercv", scope: !4115, file: !1178, line: 2430, type: !703)
!4118 = !DILocation(line: 0, scope: !4090)
!4119 = !DILocation(line: 2387, column: 40, scope: !4090)
!4120 = !DILocation(line: 2388, column: 26, scope: !4090)
!4121 = !DILocation(line: 2389, column: 32, scope: !4090)
!4122 = !DILocation(line: 2390, column: 26, scope: !4090)
!4123 = !DILocation(line: 2395, column: 15, scope: !4105)
!4124 = !DILocation(line: 2395, column: 48, scope: !4104)
!4125 = !DILocation(line: 2395, column: 5, scope: !4105)
!4126 = !DILocation(line: 2396, column: 31, scope: !4103)
!4127 = !DILocation(line: 0, scope: !4103)
!4128 = !DILocation(line: 2397, column: 6, scope: !4108)
!4129 = !DILocation(line: 2397, column: 11, scope: !4108)
!4130 = !DILocation(line: 2397, column: 44, scope: !4108)
!4131 = !DILocation(line: 2398, column: 6, scope: !4108)
!4132 = !DILocation(line: 2398, column: 10, scope: !4108)
!4133 = !DILocation(line: 2398, column: 9, scope: !4108)
!4134 = !DILocation(line: 2398, column: 26, scope: !4108)
!4135 = !DILocation(line: 2397, column: 6, scope: !4103)
!4136 = !DILocation(line: 2400, column: 18, scope: !4107)
!4137 = !DILocation(line: 0, scope: !4107)
!4138 = !DILocation(line: 2401, column: 8, scope: !4111)
!4139 = !DILocation(line: 2401, column: 8, scope: !4107)
!4140 = !DILocation(line: 0, scope: !4110)
!4141 = !DILocation(line: 2406, column: 8, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4110, file: !1178, line: 2405, column: 33)
!4143 = !DILocation(line: 2405, column: 6, scope: !4110)
!4144 = !DILocation(line: 2407, column: 11, scope: !4142)
!4145 = !DILocation(line: 2408, column: 7, scope: !4142)
!4146 = !DILocation(line: 2409, column: 10, scope: !4142)
!4147 = !DILocation(line: 2405, column: 13, scope: !4110)
!4148 = distinct !{!4148, !4143, !4149, !1547, !1548}
!4149 = !DILocation(line: 2410, column: 6, scope: !4110)
!4150 = !DILocation(line: 2411, column: 22, scope: !4110)
!4151 = !DILocation(line: 2412, column: 4, scope: !4110)
!4152 = !DILocation(line: 2413, column: 8, scope: !4116)
!4153 = !DILocation(line: 2413, column: 24, scope: !4116)
!4154 = !DILocation(line: 2413, column: 8, scope: !4107)
!4155 = !DILocation(line: 2420, column: 10, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4157, file: !1178, line: 2420, column: 10)
!4157 = distinct !DILexicalBlock(scope: !4116, file: !1178, line: 2413, column: 37)
!4158 = !DILocation(line: 2420, column: 29, scope: !4156)
!4159 = !DILocation(line: 2420, column: 10, scope: !4157)
!4160 = !DILocation(line: 2421, column: 8, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4162, file: !1178, line: 2421, column: 7)
!4162 = distinct !DILexicalBlock(scope: !4156, file: !1178, line: 2420, column: 40)
!4163 = !DILocation(line: 2421, column: 7, scope: !4162)
!4164 = !DILocation(line: 0, scope: !1657, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 2422, column: 7, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4161, file: !1178, line: 2421, column: 32)
!4167 = !DILocation(line: 161, column: 9, scope: !1657, inlinedAt: !4165)
!4168 = !DILocation(line: 162, column: 11, scope: !1660, inlinedAt: !4165)
!4169 = !DILocation(line: 0, scope: !1660, inlinedAt: !4165)
!4170 = !DILocation(line: 163, column: 6, scope: !1669, inlinedAt: !4165)
!4171 = !DILocation(line: 163, column: 6, scope: !1660, inlinedAt: !4165)
!4172 = !DILocation(line: 164, column: 24, scope: !1669, inlinedAt: !4165)
!4173 = !DILocation(line: 164, column: 19, scope: !1669, inlinedAt: !4165)
!4174 = !DILocation(line: 164, column: 6, scope: !1669, inlinedAt: !4165)
!4175 = !DILocation(line: 166, column: 6, scope: !1669, inlinedAt: !4165)
!4176 = !DILocation(line: 2429, column: 22, scope: !4115)
!4177 = !DILocation(line: 0, scope: !4115)
!4178 = !DILocation(line: 2431, column: 11, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4115, file: !1178, line: 2431, column: 10)
!4180 = !DILocation(line: 2434, column: 22, scope: !4115)
!4181 = !DILocation(line: 2436, column: 6, scope: !4115)
!4182 = !DILocation(line: 0, scope: !1657, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 2436, column: 6, scope: !4115)
!4184 = !DILocation(line: 161, column: 9, scope: !1661, inlinedAt: !4183)
!4185 = !DILocation(line: 161, column: 9, scope: !1657, inlinedAt: !4183)
!4186 = !DILocation(line: 162, column: 11, scope: !1660, inlinedAt: !4183)
!4187 = !DILocation(line: 0, scope: !1660, inlinedAt: !4183)
!4188 = !DILocation(line: 163, column: 6, scope: !1669, inlinedAt: !4183)
!4189 = !DILocation(line: 163, column: 6, scope: !1660, inlinedAt: !4183)
!4190 = !DILocation(line: 164, column: 24, scope: !1669, inlinedAt: !4183)
!4191 = !DILocation(line: 164, column: 19, scope: !1669, inlinedAt: !4183)
!4192 = !DILocation(line: 164, column: 6, scope: !1669, inlinedAt: !4183)
!4193 = !DILocation(line: 166, column: 6, scope: !1669, inlinedAt: !4183)
!4194 = !DILocation(line: 0, scope: !4116)
!4195 = !DILocation(line: 2395, column: 55, scope: !4104)
!4196 = distinct !{!4196, !4125, !4197, !1547, !1548}
!4197 = !DILocation(line: 2440, column: 5, scope: !4105)
!4198 = !DILocation(line: 2441, column: 1, scope: !4090)
!4199 = distinct !DISubprogram(name: "Perl_pad_push", scope: !1178, file: !1178, line: 2454, type: !4200, scopeLine: 2455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4202)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !784, !503}
!4202 = !{!4203, !4204, !4205, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4221, !4224}
!4203 = !DILocalVariable(name: "padlist", arg: 1, scope: !4199, file: !1178, line: 2454, type: !784)
!4204 = !DILocalVariable(name: "depth", arg: 2, scope: !4199, file: !1178, line: 2454, type: !503)
!4205 = !DILocalVariable(name: "svp", scope: !4206, file: !1178, line: 2459, type: !4208)
!4206 = distinct !DILexicalBlock(scope: !4207, file: !1178, line: 2458, column: 71)
!4207 = distinct !DILexicalBlock(scope: !4199, file: !1178, line: 2458, column: 9)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!4209 = !DILocalVariable(name: "newpad", scope: !4206, file: !1178, line: 2460, type: !1190)
!4210 = !DILocalVariable(name: "oldpad", scope: !4206, file: !1178, line: 2461, type: !955)
!4211 = !DILocalVariable(name: "ix", scope: !4206, file: !1178, line: 2462, type: !517)
!4212 = !DILocalVariable(name: "names_fill", scope: !4206, file: !1178, line: 2463, type: !930)
!4213 = !DILocalVariable(name: "names", scope: !4206, file: !1178, line: 2464, type: !1374)
!4214 = !DILocalVariable(name: "av", scope: !4206, file: !1178, line: 2465, type: !527)
!4215 = !DILocalVariable(name: "sigil", scope: !4216, file: !1178, line: 2469, type: !516)
!4216 = distinct !DILexicalBlock(scope: !4217, file: !1178, line: 2468, column: 53)
!4217 = distinct !DILexicalBlock(scope: !4218, file: !1178, line: 2468, column: 10)
!4218 = distinct !DILexicalBlock(scope: !4219, file: !1178, line: 2467, column: 23)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !1178, line: 2467, column: 2)
!4220 = distinct !DILexicalBlock(scope: !4206, file: !1178, line: 2467, column: 2)
!4221 = !DILocalVariable(name: "sv", scope: !4222, file: !1178, line: 2478, type: !441)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !1178, line: 2477, column: 8)
!4223 = distinct !DILexicalBlock(scope: !4216, file: !1178, line: 2470, column: 7)
!4224 = !DILocalVariable(name: "sv", scope: !4225, file: !1178, line: 2493, type: !898)
!4225 = distinct !DILexicalBlock(scope: !4226, file: !1178, line: 2491, column: 11)
!4226 = distinct !DILexicalBlock(scope: !4217, file: !1178, line: 2488, column: 15)
!4227 = !DILocation(line: 0, scope: !4199)
!4228 = !DILocation(line: 2458, column: 9, scope: !4207)
!4229 = !DILocation(line: 2458, column: 17, scope: !4207)
!4230 = !DILocation(line: 2458, column: 15, scope: !4207)
!4231 = !DILocation(line: 0, scope: !4207)
!4232 = !DILocation(line: 2458, column: 37, scope: !4207)
!4233 = !DILocation(line: 2458, column: 41, scope: !4207)
!4234 = !DILocation(line: 2458, column: 9, scope: !4199)
!4235 = !DILocation(line: 2459, column: 20, scope: !4206)
!4236 = !DILocation(line: 0, scope: !4206)
!4237 = !DILocation(line: 2460, column: 21, scope: !4206)
!4238 = !DILocation(line: 2461, column: 22, scope: !4206)
!4239 = !DILocation(line: 2462, column: 11, scope: !4206)
!4240 = !DILocation(line: 2463, column: 25, scope: !4206)
!4241 = !DILocation(line: 2464, column: 27, scope: !4206)
!4242 = !DILocation(line: 2467, column: 12, scope: !4219)
!4243 = !DILocation(line: 2467, column: 2, scope: !4220)
!4244 = !DILocation(line: 2468, column: 21, scope: !4217)
!4245 = !DILocation(line: 0, scope: !4217)
!4246 = !DILocation(line: 2468, column: 27, scope: !4217)
!4247 = !DILocation(line: 2468, column: 30, scope: !4217)
!4248 = !DILocation(line: 2468, column: 10, scope: !4218)
!4249 = !DILocation(line: 0, scope: !4216)
!4250 = !DILocation(line: 2470, column: 7, scope: !4223)
!4251 = !DILocation(line: 2471, column: 4, scope: !4223)
!4252 = !DILocation(line: 2469, column: 22, scope: !4216)
!4253 = !DILocation(line: 2471, column: 7, scope: !4223)
!4254 = !DILocation(line: 2472, column: 4, scope: !4223)
!4255 = !DILocation(line: 2475, column: 7, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4223, file: !1178, line: 2473, column: 3)
!4257 = !DILocation(line: 0, scope: !2785, inlinedAt: !4258)
!4258 = distinct !DILocation(line: 2475, column: 7, scope: !4256)
!4259 = !DILocation(line: 142, column: 9, scope: !2792, inlinedAt: !4258)
!4260 = !DILocation(line: 142, column: 9, scope: !2785, inlinedAt: !4258)
!4261 = !DILocation(line: 143, column: 2, scope: !2792, inlinedAt: !4258)
!4262 = !DILocation(line: 143, column: 14, scope: !2792, inlinedAt: !4258)
!4263 = !DILocation(line: 2476, column: 3, scope: !4256)
!4264 = !DILocation(line: 2479, column: 11, scope: !4222)
!4265 = !DILocation(line: 2480, column: 9, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4222, file: !1178, line: 2479, column: 11)
!4267 = !DILocation(line: 0, scope: !4222)
!4268 = !DILocation(line: 2480, column: 4, scope: !4266)
!4269 = !DILocation(line: 2482, column: 9, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4266, file: !1178, line: 2481, column: 16)
!4271 = !DILocation(line: 2482, column: 4, scope: !4270)
!4272 = !DILocation(line: 2484, column: 9, scope: !4270)
!4273 = !DILocation(line: 0, scope: !4266)
!4274 = !DILocation(line: 2485, column: 7, scope: !4222)
!4275 = !DILocation(line: 2488, column: 15, scope: !4226)
!4276 = !DILocation(line: 2488, column: 15, scope: !4217)
!4277 = !DILocation(line: 2489, column: 3, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4226, file: !1178, line: 2488, column: 37)
!4279 = !DILocation(line: 0, scope: !3812, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 2489, column: 3, scope: !4278)
!4281 = !DILocation(line: 149, column: 5, scope: !3812, inlinedAt: !4280)
!4282 = !DILocation(line: 149, column: 17, scope: !3812, inlinedAt: !4280)
!4283 = !DILocation(line: 2490, column: 6, scope: !4278)
!4284 = !DILocation(line: 2493, column: 19, scope: !4225)
!4285 = !DILocation(line: 0, scope: !4225)
!4286 = !DILocation(line: 2494, column: 3, scope: !4225)
!4287 = !DILocation(line: 2495, column: 3, scope: !4225)
!4288 = !DILocation(line: 2467, column: 19, scope: !4219)
!4289 = distinct !{!4289, !4243, !4290, !1547, !1548}
!4290 = !DILocation(line: 2497, column: 2, scope: !4220)
!4291 = !DILocation(line: 2498, column: 7, scope: !4206)
!4292 = !DILocation(line: 2499, column: 2, scope: !4206)
!4293 = !DILocation(line: 2500, column: 2, scope: !4206)
!4294 = !DILocalVariable(name: "padlist", arg: 1, scope: !4295, file: !1178, line: 2629, type: !784)
!4295 = distinct !DISubprogram(name: "Perl_padlist_store", scope: !1178, file: !1178, line: 2629, type: !4296, scopeLine: 2630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!790, !784, !517, !791}
!4298 = !{!4294, !4299, !4300, !4301, !4302}
!4299 = !DILocalVariable(name: "key", arg: 2, scope: !4295, file: !1178, line: 2629, type: !517)
!4300 = !DILocalVariable(name: "val", arg: 3, scope: !4295, file: !1178, line: 2629, type: !791)
!4301 = !DILocalVariable(name: "ary", scope: !4295, file: !1178, line: 2631, type: !790)
!4302 = !DILocalVariable(name: "oldmax", scope: !4295, file: !1178, line: 2632, type: !2120)
!4303 = !DILocation(line: 0, scope: !4295, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 2502, column: 2, scope: !4206)
!4305 = !DILocation(line: 2632, column: 28, scope: !4295, inlinedAt: !4304)
!4306 = !DILocation(line: 2638, column: 13, scope: !4307, inlinedAt: !4304)
!4307 = distinct !DILexicalBlock(scope: !4295, file: !1178, line: 2638, column: 9)
!4308 = !DILocation(line: 2638, column: 9, scope: !4295, inlinedAt: !4304)
!4309 = !DILocation(line: 2639, column: 2, scope: !4310, inlinedAt: !4304)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !1178, line: 2638, column: 36)
!4311 = !DILocation(line: 2642, column: 2, scope: !4310, inlinedAt: !4304)
!4312 = !DILocation(line: 2644, column: 5, scope: !4310, inlinedAt: !4304)
!4313 = !DILocation(line: 2645, column: 11, scope: !4295, inlinedAt: !4304)
!4314 = !DILocation(line: 2646, column: 5, scope: !4295, inlinedAt: !4304)
!4315 = !DILocation(line: 0, scope: !1657, inlinedAt: !4316)
!4316 = distinct !DILocation(line: 2646, column: 5, scope: !4295, inlinedAt: !4304)
!4317 = !DILocation(line: 161, column: 9, scope: !1661, inlinedAt: !4316)
!4318 = !DILocation(line: 161, column: 9, scope: !1657, inlinedAt: !4316)
!4319 = !DILocation(line: 162, column: 11, scope: !1660, inlinedAt: !4316)
!4320 = !DILocation(line: 0, scope: !1660, inlinedAt: !4316)
!4321 = !DILocation(line: 163, column: 6, scope: !1669, inlinedAt: !4316)
!4322 = !DILocation(line: 163, column: 6, scope: !1660, inlinedAt: !4316)
!4323 = !DILocation(line: 164, column: 24, scope: !1669, inlinedAt: !4316)
!4324 = !DILocation(line: 164, column: 19, scope: !1669, inlinedAt: !4316)
!4325 = !DILocation(line: 164, column: 6, scope: !1669, inlinedAt: !4316)
!4326 = !DILocation(line: 166, column: 6, scope: !1669, inlinedAt: !4316)
!4327 = !DILocation(line: 2647, column: 14, scope: !4295, inlinedAt: !4304)
!4328 = !DILocation(line: 2503, column: 5, scope: !4206)
!4329 = !DILocation(line: 2504, column: 1, scope: !4199)
!4330 = !DISubprogram(name: "Perl_newSV", scope: !1287, file: !1287, line: 3055, type: !4331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!441, !3732}
!4333 = !DILocation(line: 0, scope: !4295)
!4334 = !DILocation(line: 2632, column: 28, scope: !4295)
!4335 = !DILocation(line: 2638, column: 9, scope: !4307)
!4336 = !DILocation(line: 2638, column: 13, scope: !4307)
!4337 = !DILocation(line: 2638, column: 9, scope: !4295)
!4338 = !DILocation(line: 2639, column: 2, scope: !4310)
!4339 = !DILocation(line: 2642, column: 2, scope: !4310)
!4340 = !DILocation(line: 2644, column: 5, scope: !4310)
!4341 = !DILocation(line: 2645, column: 11, scope: !4295)
!4342 = !DILocation(line: 2646, column: 5, scope: !4295)
!4343 = !DILocation(line: 0, scope: !1657, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 2646, column: 5, scope: !4295)
!4345 = !DILocation(line: 161, column: 9, scope: !1661, inlinedAt: !4344)
!4346 = !DILocation(line: 161, column: 9, scope: !1657, inlinedAt: !4344)
!4347 = !DILocation(line: 162, column: 11, scope: !1660, inlinedAt: !4344)
!4348 = !DILocation(line: 0, scope: !1660, inlinedAt: !4344)
!4349 = !DILocation(line: 163, column: 6, scope: !1669, inlinedAt: !4344)
!4350 = !DILocation(line: 163, column: 6, scope: !1660, inlinedAt: !4344)
!4351 = !DILocation(line: 164, column: 24, scope: !1669, inlinedAt: !4344)
!4352 = !DILocation(line: 164, column: 19, scope: !1669, inlinedAt: !4344)
!4353 = !DILocation(line: 164, column: 6, scope: !1669, inlinedAt: !4344)
!4354 = !DILocation(line: 166, column: 6, scope: !1669, inlinedAt: !4344)
!4355 = !DILocation(line: 2647, column: 14, scope: !4295)
!4356 = !DILocation(line: 2648, column: 5, scope: !4295)
!4357 = !DISubprogram(name: "Perl_av_extend_guts", scope: !1287, file: !1287, line: 219, type: !4358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{null, !527, !540, !917, !1109, !1109}
!4360 = distinct !DISubprogram(name: "Perl_padname_free", scope: !1178, file: !1178, line: 2840, type: !3692, scopeLine: 2841, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4361)
!4361 = !{!4362}
!4362 = !DILocalVariable(name: "pn", arg: 1, scope: !4360, file: !1178, line: 2840, type: !1029)
!4363 = !DILocation(line: 0, scope: !4360)
!4364 = !DILocation(line: 2843, column: 12, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4360, file: !1178, line: 2843, column: 9)
!4366 = !DILocation(line: 2843, column: 10, scope: !4365)
!4367 = !DILocation(line: 2843, column: 9, scope: !4360)
!4368 = !DILocation(line: 2844, column: 6, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4370, file: !1178, line: 2844, column: 6)
!4370 = distinct !DILexicalBlock(scope: !4365, file: !1178, line: 2843, column: 31)
!4371 = !DILocation(line: 2845, column: 24, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4369, file: !1178, line: 2844, column: 68)
!4373 = !DILocation(line: 2846, column: 6, scope: !4372)
!4374 = !DILocation(line: 2848, column: 2, scope: !4370)
!4375 = !DILocation(line: 0, scope: !1657, inlinedAt: !4376)
!4376 = distinct !DILocation(line: 2848, column: 2, scope: !4370)
!4377 = !DILocation(line: 161, column: 9, scope: !1661, inlinedAt: !4376)
!4378 = !DILocation(line: 161, column: 9, scope: !1657, inlinedAt: !4376)
!4379 = !DILocation(line: 162, column: 11, scope: !1660, inlinedAt: !4376)
!4380 = !DILocation(line: 0, scope: !1660, inlinedAt: !4376)
!4381 = !DILocation(line: 163, column: 6, scope: !1669, inlinedAt: !4376)
!4382 = !DILocation(line: 163, column: 6, scope: !1660, inlinedAt: !4376)
!4383 = !DILocation(line: 164, column: 24, scope: !1669, inlinedAt: !4376)
!4384 = !DILocation(line: 164, column: 19, scope: !1669, inlinedAt: !4376)
!4385 = !DILocation(line: 164, column: 6, scope: !1669, inlinedAt: !4376)
!4386 = !DILocation(line: 166, column: 6, scope: !1669, inlinedAt: !4376)
!4387 = !DILocation(line: 2849, column: 2, scope: !4370)
!4388 = !DILocation(line: 0, scope: !1657, inlinedAt: !4389)
!4389 = distinct !DILocation(line: 2849, column: 2, scope: !4370)
!4390 = !DILocation(line: 161, column: 9, scope: !1661, inlinedAt: !4389)
!4391 = !DILocation(line: 161, column: 9, scope: !1657, inlinedAt: !4389)
!4392 = !DILocation(line: 162, column: 11, scope: !1660, inlinedAt: !4389)
!4393 = !DILocation(line: 0, scope: !1660, inlinedAt: !4389)
!4394 = !DILocation(line: 163, column: 6, scope: !1669, inlinedAt: !4389)
!4395 = !DILocation(line: 163, column: 6, scope: !1660, inlinedAt: !4389)
!4396 = !DILocation(line: 164, column: 24, scope: !1669, inlinedAt: !4389)
!4397 = !DILocation(line: 164, column: 19, scope: !1669, inlinedAt: !4389)
!4398 = !DILocation(line: 164, column: 6, scope: !1669, inlinedAt: !4389)
!4399 = !DILocation(line: 166, column: 6, scope: !1669, inlinedAt: !4389)
!4400 = !DILocation(line: 2850, column: 6, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4370, file: !1178, line: 2850, column: 6)
!4402 = !DILocation(line: 2850, column: 6, scope: !4370)
!4403 = !DILocation(line: 2851, column: 6, scope: !4401)
!4404 = !DILocation(line: 2852, column: 2, scope: !4370)
!4405 = !DILocation(line: 2853, column: 5, scope: !4370)
!4406 = !DILocation(line: 2854, column: 1, scope: !4360)
!4407 = distinct !DISubprogram(name: "Perl_padnamelist_fetch", scope: !1178, file: !1178, line: 2716, type: !4408, scopeLine: 2717, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4410)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!1029, !1022, !540}
!4410 = !{!4411, !4412}
!4411 = !DILocalVariable(name: "pnl", arg: 1, scope: !4407, file: !1178, line: 2716, type: !1022)
!4412 = !DILocalVariable(name: "key", arg: 2, scope: !4407, file: !1178, line: 2716, type: !540)
!4413 = !DILocation(line: 0, scope: !4407)
!4414 = !DILocation(line: 2721, column: 18, scope: !4407)
!4415 = !DILocation(line: 2721, column: 16, scope: !4407)
!4416 = !DILocation(line: 2721, column: 12, scope: !4407)
!4417 = !DILocation(line: 2721, column: 47, scope: !4407)
!4418 = !DILocation(line: 2721, column: 5, scope: !4407)
!4419 = !DILocation(line: 0, scope: !2738)
!4420 = !DILocation(line: 2828, column: 5, scope: !2738)
!4421 = !DILocation(line: 2829, column: 5, scope: !2738)
!4422 = !DILocation(line: 2829, column: 23, scope: !2738)
!4423 = !DILocation(line: 2830, column: 21, scope: !2738)
!4424 = !DILocation(line: 2830, column: 19, scope: !2738)
!4425 = !DILocation(line: 2833, column: 5, scope: !2738)
!4426 = !DILocation(line: 2833, column: 53, scope: !2738)
!4427 = !DILocation(line: 2834, column: 5, scope: !2738)
!4428 = !DILocation(line: 2834, column: 22, scope: !2738)
!4429 = !DILocation(line: 2835, column: 22, scope: !2738)
!4430 = !DILocation(line: 2835, column: 5, scope: !2738)
!4431 = !DILocation(line: 2835, column: 20, scope: !2738)
!4432 = !DILocation(line: 2836, column: 5, scope: !2738)
!4433 = !DISubprogram(name: "Perl_sv_free2", scope: !1287, file: !1287, line: 4371, type: !4434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !898, !909}
!4436 = !DISubprogram(name: "Perl_ckwarn", scope: !1287, file: !1287, line: 712, type: !4437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!760, !448}
!4439 = !DISubprogram(name: "Perl_warner", scope: !1287, file: !1287, line: 5194, type: !3057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4440 = !DISubprogram(name: "Perl_sv_2mortal", scope: !1287, file: !1287, line: 4114, type: !2439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4441 = !DISubprogram(name: "Perl_ck_warner", scope: !1287, file: !1287, line: 700, type: !3057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4442 = !DISubprogram(name: "Perl_savepv", scope: !1287, file: !1287, line: 3955, type: !4443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!455, !515}
!4445 = !DISubprogram(name: "Perl_cvstash_set", scope: !1287, file: !1287, line: 868, type: !4446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{null, !703, !473}
!4448 = !DISubprogram(name: "Perl_sv_setpvn", scope: !1287, file: !1287, line: 4641, type: !4449, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{null, !898, !908, !3732}
!4451 = !DISubprogram(name: "Perl_mg_copy", scope: !1287, file: !1287, line: 2642, type: !4452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!503, !441, !441, !515, !517}
!4454 = !DISubprogram(name: "Perl_find_runcv_where", scope: !1287, file: !1287, line: 1213, type: !4455, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!703, !685, !458, !1169}
!4457 = !DISubprogram(name: "Perl_av_fill", scope: !1287, file: !1287, line: 232, type: !4458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !527, !540}
!4460 = !DISubprogram(name: "Perl_share_hek", scope: !1287, file: !1287, line: 4046, type: !4461, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!567, !515, !517, !448}
!4463 = !DISubprogram(name: "Perl_hv_common_key_len", scope: !1287, file: !1287, line: 1627, type: !4464, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!446, !473, !515, !517, !1291, !441, !909}
!4466 = !DISubprogram(name: "Perl_newSVsv", scope: !1287, file: !1287, line: 3129, type: !2439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4467 = !DISubprogram(name: "Perl_newCONSTSUB", scope: !1287, file: !1287, line: 2869, type: !4468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1292)
!4468 = !DISubroutineType(types: !4469)
!4469 = !{!703, !473, !515, !441}
