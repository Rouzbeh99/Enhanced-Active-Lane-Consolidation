; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/scope.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%union._xmgu = type { ptr }
%struct.stackinfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.context = type { %union.anon.16 }
%union.anon.16 = type { %struct.subst }
%struct.subst = type { i8, i8, i16, i32, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.any = type { ptr }
%struct.gv = type { ptr, i32, i32, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.xpvgv = type { ptr, %union._xmgu, i64, %union.anon.8, %union._xivu, %union._xnvu }
%union.anon.8 = type { i64 }
%union._xivu = type { i64 }
%union._xnvu = type { double }
%struct.hv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvhv_aux = type { %union._xhvnameu, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32 }
%union._xhvnameu = type { ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon.9, ptr, %union.anon.10, %union.anon.11, %union.anon.12, ptr, %union.anon.13, ptr, i32, i32, i32 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { ptr }
%union.anon.11 = type { ptr }
%union.anon.12 = type { ptr }
%union.anon.13 = type { ptr }
%struct.he = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.26, %union._xivu, %union._xnvu }
%union.anon.26 = type { i64 }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu, ptr, %union.anon.15, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.27 }
%union.anon.27 = type { i64 }

@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curstack = external local_unnamed_addr global ptr, align 8
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_sv_undef = external global %struct.sv, align 8
@PL_curstackinfo = external local_unnamed_addr global ptr, align 8
@PL_scopestack_ix = external local_unnamed_addr global i32, align 4
@PL_scopestack_max = external local_unnamed_addr global i32, align 4
@PL_scopestack = external local_unnamed_addr global ptr, align 8
@PL_savestack_ix = external local_unnamed_addr global i32, align 4
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_markstack = external local_unnamed_addr global ptr, align 8
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@PL_savestack_max = external local_unnamed_addr global i32, align 4
@PL_savestack = external local_unnamed_addr global ptr, align 8
@PL_tmps_max = external local_unnamed_addr global i64, align 8
@PL_tmps_stack = external local_unnamed_addr global ptr, align 8
@PL_tmps_floor = external local_unnamed_addr global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_localizing = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_comppad = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"panic: pad offset %lu out of range (%p-%p)\00", align 1
@PL_compiling = external local_unnamed_addr global %struct.cop, align 8
@PL_hintgv = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"panic: save_alloc elems %lu out of range (%ld-%ld)\00", align 1
@PL_tainted = external global i8, align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"panic: corrupt saved stack index %ld\00", align 1
@PL_sub_generation = external local_unnamed_addr global i32, align 4
@PL_op = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"panic: leave_scope inconsistency %u\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_stack_grow(ptr noundef %sp, ptr noundef %p, i64 noundef %n) local_unnamed_addr #0 !dbg !1051 {
entry:
  call void @llvm.dbg.value(metadata ptr %sp, metadata !1056, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata ptr %p, metadata !1057, metadata !DIExpression()), !dbg !1059
  call void @llvm.dbg.value(metadata i64 %n, metadata !1058, metadata !DIExpression()), !dbg !1059
  store ptr %sp, ptr @PL_stack_sp, align 8, !dbg !1060
  %0 = load ptr, ptr @PL_curstack, align 8, !dbg !1061
  %1 = load ptr, ptr @PL_stack_base, align 8, !dbg !1061
  %sub.ptr.lhs.cast = ptrtoint ptr %p to i64, !dbg !1061
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !1061
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1061
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3, !dbg !1061
  %add = add i64 %n, 128, !dbg !1061
  %add1 = add i64 %add, %sub.ptr.div, !dbg !1061
  tail call void @Perl_av_extend(ptr noundef %0, i64 noundef %add1) #8, !dbg !1061
  %2 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1062
  ret ptr %2, !dbg !1063
}

declare !dbg !1064 void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_new_stackinfo(i32 noundef %stitems, i32 noundef %cxitems) local_unnamed_addr #0 !dbg !1069 {
entry:
  call void @llvm.dbg.value(metadata i32 %stitems, metadata !1073, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i32 %cxitems, metadata !1074, metadata !DIExpression()), !dbg !1076
  %call = tail call ptr @Perl_safesysmalloc(i64 noundef 48) #8, !dbg !1077
  call void @llvm.dbg.value(metadata ptr %call, metadata !1075, metadata !DIExpression()), !dbg !1076
  %call1 = tail call ptr @Perl_newSV_type(i32 noundef 11) #8, !dbg !1078
  store ptr %call1, ptr %call, align 8, !dbg !1079
  %sv_flags = getelementptr inbounds %struct.av, ptr %call1, i64 0, i32 2, !dbg !1080
  %0 = load i32, ptr %sv_flags, align 4, !dbg !1080
  %and = and i32 %0, -1073741825, !dbg !1080
  store i32 %and, ptr %sv_flags, align 4, !dbg !1080
  %1 = load ptr, ptr %call, align 8, !dbg !1081
  %cmp = icmp sgt i32 %stitems, 0, !dbg !1081
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1081

cond.true:                                        ; preds = %entry
  %sub = add nsw i32 %stitems, -1, !dbg !1081
  %phi.cast = zext i32 %sub to i64, !dbg !1081
  br label %cond.end, !dbg !1081

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %phi.cast, %cond.true ], [ 0, %entry ]
  tail call void @Perl_av_extend(ptr noundef %1, i64 noundef %cond) #8, !dbg !1081
  %2 = load ptr, ptr %call, align 8, !dbg !1082
  %3 = load ptr, ptr %2, align 8, !dbg !1082
  %xav_alloc = getelementptr inbounds %struct.xpvav, ptr %3, i64 0, i32 4, !dbg !1082
  %4 = load ptr, ptr %xav_alloc, align 8, !dbg !1082
  store ptr @PL_sv_undef, ptr %4, align 8, !dbg !1083
  %5 = load ptr, ptr %call, align 8, !dbg !1084
  %6 = load ptr, ptr %5, align 8, !dbg !1084
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %6, i64 0, i32 2, !dbg !1084
  store i64 0, ptr %xav_fill, align 8, !dbg !1085
  %si_prev = getelementptr inbounds %struct.stackinfo, ptr %call, i64 0, i32 2, !dbg !1086
  %sub7 = add nsw i32 %cxitems, -1, !dbg !1087
  %si_cxmax = getelementptr inbounds %struct.stackinfo, ptr %call, i64 0, i32 5, !dbg !1088
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %si_prev, i8 0, i64 16, i1 false), !dbg !1089
  store i32 %sub7, ptr %si_cxmax, align 4, !dbg !1090
  %si_cxix = getelementptr inbounds %struct.stackinfo, ptr %call, i64 0, i32 4, !dbg !1091
  store i32 -1, ptr %si_cxix, align 8, !dbg !1092
  %si_type = getelementptr inbounds %struct.stackinfo, ptr %call, i64 0, i32 6, !dbg !1093
  store i32 0, ptr %si_type, align 8, !dbg !1094
  %conv8 = sext i32 %cxitems to i64, !dbg !1095
  %mul = mul nsw i64 %conv8, 88, !dbg !1095
  %call9 = tail call ptr @Perl_safesysmalloc(i64 noundef %mul) #8, !dbg !1095
  %si_cxstack = getelementptr inbounds %struct.stackinfo, ptr %call, i64 0, i32 1, !dbg !1095
  store ptr %call9, ptr %si_cxstack, align 8, !dbg !1095
  tail call void @llvm.memset.p0.i64(ptr align 1 %call9, i8 -85, i64 %mul, i1 false), !dbg !1096
  ret ptr %call, !dbg !1097
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare !dbg !1098 ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #1

declare !dbg !1101 ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_cxinc() local_unnamed_addr #0 !dbg !1105 {
entry:
  %0 = load ptr, ptr @PL_curstackinfo, align 8, !dbg !1111
  %si_cxmax = getelementptr inbounds %struct.stackinfo, ptr %0, i64 0, i32 5, !dbg !1111
  %1 = load i32, ptr %si_cxmax, align 4, !dbg !1111
  %conv = sext i32 %1 to i64, !dbg !1111
  call void @llvm.dbg.value(metadata i64 %conv, metadata !1109, metadata !DIExpression()), !dbg !1112
  %mul = mul nsw i32 %1, 3, !dbg !1113
  %div = sdiv i32 %mul, 2, !dbg !1113
  store i32 %div, ptr %si_cxmax, align 4, !dbg !1114
  %si_cxstack = getelementptr inbounds %struct.stackinfo, ptr %0, i64 0, i32 1, !dbg !1115
  %2 = load ptr, ptr %si_cxstack, align 8, !dbg !1115
  %add = add nsw i32 %div, 1, !dbg !1115
  %conv4 = sext i32 %add to i64, !dbg !1115
  %mul5 = mul nsw i64 %conv4, 88, !dbg !1115
  %call = tail call ptr @Perl_safesysrealloc(ptr noundef %2, i64 noundef %mul5) #8, !dbg !1115
  %3 = load ptr, ptr @PL_curstackinfo, align 8, !dbg !1115
  %si_cxstack6 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 1, !dbg !1115
  store ptr %call, ptr %si_cxstack6, align 8, !dbg !1115
  %add.ptr = getelementptr inbounds %struct.context, ptr %call, i64 %conv, !dbg !1116
  %add.ptr8 = getelementptr inbounds %struct.context, ptr %add.ptr, i64 1, !dbg !1116
  %si_cxmax9 = getelementptr inbounds %struct.stackinfo, ptr %3, i64 0, i32 5, !dbg !1116
  %4 = load i32, ptr %si_cxmax9, align 4, !dbg !1116
  %conv10 = sext i32 %4 to i64, !dbg !1116
  %sub = sub nsw i64 %conv10, %conv, !dbg !1116
  %mul11 = mul nsw i64 %sub, 88, !dbg !1116
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr8, i8 -85, i64 %mul11, i1 false), !dbg !1116
  %5 = load ptr, ptr @PL_curstackinfo, align 8, !dbg !1117
  %si_cxix = getelementptr inbounds %struct.stackinfo, ptr %5, i64 0, i32 4, !dbg !1117
  %6 = load i32, ptr %si_cxix, align 8, !dbg !1117
  %add12 = add nsw i32 %6, 1, !dbg !1118
  ret i32 %add12, !dbg !1119
}

declare !dbg !1120 ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_push_scope() local_unnamed_addr #0 !dbg !1123 {
entry:
  %0 = load i32, ptr @PL_scopestack_ix, align 4, !dbg !1126
  %1 = load i32, ptr @PL_scopestack_max, align 4, !dbg !1126
  %cmp = icmp eq i32 %0, %1, !dbg !1126
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !1128

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = load ptr, ptr @PL_scopestack, align 8, !dbg !1129
  br label %if.end, !dbg !1128

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %0, 3, !dbg !1130
  %div = sdiv i32 %mul, 2, !dbg !1130
  store i32 %div, ptr @PL_scopestack_max, align 4, !dbg !1132
  %2 = load ptr, ptr @PL_scopestack, align 8, !dbg !1133
  %conv = sext i32 %div to i64, !dbg !1133
  %mul1 = shl nsw i64 %conv, 2, !dbg !1133
  %call = tail call ptr @Perl_safesysrealloc(ptr noundef %2, i64 noundef %mul1) #8, !dbg !1133
  store ptr %call, ptr @PL_scopestack, align 8, !dbg !1133
  %.pre2 = load i32, ptr @PL_scopestack_ix, align 4, !dbg !1134
  br label %if.end, !dbg !1135

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %3 = phi i32 [ %0, %entry.if.end_crit_edge ], [ %.pre2, %if.then ], !dbg !1134
  %4 = phi ptr [ %.pre, %entry.if.end_crit_edge ], [ %call, %if.then ], !dbg !1129
  %5 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1136
  %inc = add nsw i32 %3, 1, !dbg !1134
  store i32 %inc, ptr @PL_scopestack_ix, align 4, !dbg !1134
  %idxprom = sext i32 %3 to i64, !dbg !1129
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom, !dbg !1129
  store i32 %5, ptr %arrayidx, align 4, !dbg !1137
  ret void, !dbg !1138
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_pop_scope() local_unnamed_addr #0 !dbg !1139 {
entry:
  %0 = load ptr, ptr @PL_scopestack, align 8, !dbg !1142
  %1 = load i32, ptr @PL_scopestack_ix, align 4, !dbg !1143
  %dec = add nsw i32 %1, -1, !dbg !1143
  store i32 %dec, ptr @PL_scopestack_ix, align 4, !dbg !1143
  %idxprom = sext i32 %dec to i64, !dbg !1142
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom, !dbg !1142
  %2 = load i32, ptr %arrayidx, align 4, !dbg !1142
  call void @llvm.dbg.value(metadata i32 %2, metadata !1141, metadata !DIExpression()), !dbg !1144
  %3 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1145
  %cmp = icmp sgt i32 %3, %2, !dbg !1145
  br i1 %cmp, label %if.then, label %do.end, !dbg !1148

if.then:                                          ; preds = %entry
  tail call void @Perl_leave_scope(i32 noundef %2), !dbg !1145
  br label %do.end, !dbg !1145

do.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1149
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_leave_scope(i32 noundef %base) local_unnamed_addr #0 !dbg !1150 {
entry:
  call void @llvm.dbg.value(metadata i32 %base, metadata !1154, metadata !DIExpression()), !dbg !1227
  %0 = load i8, ptr @PL_tainted, align 1, !dbg !1228, !range !1229
  call void @llvm.dbg.value(metadata i8 %0, metadata !1155, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr null, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr null, metadata !1159, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr null, metadata !1160, metadata !DIExpression()), !dbg !1227
  %cmp = icmp slt i32 %base, -1, !dbg !1230
  br i1 %cmp, label %if.then, label %if.end, !dbg !1232

if.then:                                          ; preds = %entry
  %conv = sext i32 %base to i64, !dbg !1233
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3, i64 noundef %conv) #8, !dbg !1234
  br label %if.end, !dbg !1234

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.dbg.value(metadata i8 %0, metadata !1155, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr null, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr null, metadata !1159, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr null, metadata !1160, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr undef, metadata !1164, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr undef, metadata !1165, metadata !DIExpression()), !dbg !1235
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1236
  %cmp11269 = icmp sgt i32 %1, %base, !dbg !1237
  br i1 %cmp11269, label %while.body, label %while.end743, !dbg !1238

while.body:                                       ; preds = %if.end, %sw.epilog742
  %2 = phi i32 [ %181, %sw.epilog742 ], [ %1, %if.end ]
  %was.01275 = phi i8 [ %was.1, %sw.epilog742 ], [ %0, %if.end ]
  %arg0.sroa.0.01274 = phi ptr [ %arg0.sroa.0.1, %sw.epilog742 ], [ null, %if.end ]
  %arg1.sroa.0.01273 = phi ptr [ %arg1.sroa.0.2, %sw.epilog742 ], [ null, %if.end ]
  %arg2.sroa.0.01272 = phi ptr [ %arg2.sroa.0.2, %sw.epilog742 ], [ null, %if.end ]
  call void @llvm.dbg.value(metadata i8 %was.01275, metadata !1155, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.01274, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.01273, metadata !1159, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg2.sroa.0.01272, metadata !1160, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr undef, metadata !1164, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr undef, metadata !1165, metadata !DIExpression()), !dbg !1235
  store i8 0, ptr @PL_tainted, align 1, !dbg !1239
  %sub = add nsw i32 %2, -1, !dbg !1240
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1166, metadata !DIExpression()), !dbg !1241
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !1242
  %idxprom = sext i32 %sub to i64, !dbg !1242
  %arrayidx = getelementptr inbounds %union.any, ptr %3, i64 %idxprom, !dbg !1242
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !1168, metadata !DIExpression()), !dbg !1241
  %4 = load i64, ptr %arrayidx, align 8, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %4, metadata !1161, metadata !DIExpression()), !dbg !1235
  %conv3 = trunc i64 %4 to i32, !dbg !1244
  %and = and i32 %conv3, 63, !dbg !1245
  call void @llvm.dbg.value(metadata i32 %and, metadata !1163, metadata !DIExpression()), !dbg !1235
  %cmp7 = icmp ugt i32 %and, 3, !dbg !1246
  br i1 %cmp7, label %if.then9, label %if.end25, !dbg !1247

if.then9:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !1169, metadata !DIExpression()), !dbg !1248
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 -1, !dbg !1249
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !1168, metadata !DIExpression()), !dbg !1241
  %arg0.sroa.0.0.copyload = load ptr, ptr %incdec.ptr, align 8, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.0.copyload, metadata !1158, metadata !DIExpression()), !dbg !1227
  %cmp11 = icmp ugt i32 %and, 22, !dbg !1251
  br i1 %cmp11, label %if.then13, label %if.end21, !dbg !1253

if.then13:                                        ; preds = %if.then9
  %incdec.ptr14 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 -1, !dbg !1254
  call void @llvm.dbg.value(metadata ptr %incdec.ptr14, metadata !1168, metadata !DIExpression()), !dbg !1241
  %arg1.sroa.0.0.copyload = load ptr, ptr %incdec.ptr14, align 8, !dbg !1256
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.0.copyload, metadata !1159, metadata !DIExpression()), !dbg !1227
  %cmp16 = icmp ugt i32 %and, 47, !dbg !1257
  br i1 %cmp16, label %if.then18, label %if.end21, !dbg !1259

if.then18:                                        ; preds = %if.then13
  %incdec.ptr19 = getelementptr inbounds %union.any, ptr %incdec.ptr14, i64 -1, !dbg !1260
  call void @llvm.dbg.value(metadata ptr %incdec.ptr19, metadata !1168, metadata !DIExpression()), !dbg !1241
  %arg2.sroa.0.0.copyload = load ptr, ptr %incdec.ptr19, align 8, !dbg !1262
  call void @llvm.dbg.value(metadata ptr %arg2.sroa.0.0.copyload, metadata !1160, metadata !DIExpression()), !dbg !1227
  br label %if.end21, !dbg !1263

if.end21:                                         ; preds = %if.then13, %if.then18, %if.then9
  %p.0 = phi ptr [ %incdec.ptr19, %if.then18 ], [ %incdec.ptr14, %if.then13 ], [ %incdec.ptr, %if.then9 ], !dbg !1248
  %arg2.sroa.0.1 = phi ptr [ %arg2.sroa.0.0.copyload, %if.then18 ], [ %arg2.sroa.0.01272, %if.then13 ], [ %arg2.sroa.0.01272, %if.then9 ], !dbg !1227
  %arg1.sroa.0.1 = phi ptr [ %arg1.sroa.0.0.copyload, %if.then18 ], [ %arg1.sroa.0.0.copyload, %if.then13 ], [ %arg1.sroa.0.01273, %if.then9 ], !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.1, metadata !1159, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg2.sroa.0.1, metadata !1160, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %p.0, metadata !1168, metadata !DIExpression()), !dbg !1241
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i64, !dbg !1264
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0 to i64, !dbg !1264
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1264
  %5 = lshr exact i64 %sub.ptr.sub, 3, !dbg !1264
  %6 = trunc i64 %5 to i32, !dbg !1265
  %conv24 = sub i32 %sub, %6, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %conv24, metadata !1166, metadata !DIExpression()), !dbg !1241
  br label %if.end25, !dbg !1266

if.end25:                                         ; preds = %if.end21, %while.body
  %ix.0 = phi i32 [ %conv24, %if.end21 ], [ %sub, %while.body ], !dbg !1241
  %arg2.sroa.0.2 = phi ptr [ %arg2.sroa.0.1, %if.end21 ], [ %arg2.sroa.0.01272, %while.body ], !dbg !1227
  %arg1.sroa.0.2 = phi ptr [ %arg1.sroa.0.1, %if.end21 ], [ %arg1.sroa.0.01273, %while.body ], !dbg !1227
  %arg0.sroa.0.1 = phi ptr [ %arg0.sroa.0.0.copyload, %if.end21 ], [ %arg0.sroa.0.01274, %while.body ], !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.2, metadata !1159, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg2.sroa.0.2, metadata !1160, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !1166, metadata !DIExpression()), !dbg !1241
  store i32 %ix.0, ptr @PL_savestack_ix, align 4, !dbg !1267
  switch i32 %and, label %sw.default740 [
    i32 35, label %sw.bb
    i32 44, label %restore_sv
    i32 43, label %sw.bb34
    i32 26, label %sw.bb44
    i32 40, label %sw.bb49
    i32 29, label %sw.bb54
    i32 27, label %restore_svp
    i32 51, label %sw.bb60
    i32 23, label %sw.bb167
    i32 32, label %sw.bb181
    i32 15, label %sw.bb195
    i32 34, label %sw.bb197
    i32 42, label %sw.bb198
    i32 5, label %sw.bb199
    i32 13, label %sw.bb213
    i32 33, label %sw.bb216
    i32 41, label %sw.bb217
    i32 45, label %sw.bb218
    i32 38, label %sw.bb218
    i32 31, label %sw.bb219
    i32 47, label %sw.bb220
    i32 28, label %sw.bb221
    i32 11, label %sw.bb362
    i32 22, label %sw.bb363
    i32 8, label %sw.bb364
    i32 16, label %sw.bb365
    i32 9, label %sw.bb367
    i32 10, label %sw.bb368
    i32 1, label %clearsv
    i32 2, label %clearsv.thread
    i32 53, label %sw.bb517
    i32 46, label %sw.bb519
    i32 25, label %sw.bb521
    i32 3, label %sw.bb522
    i32 0, label %sw.bb522
    i32 20, label %sw.bb527
    i32 52, label %sw.bb530
    i32 48, label %sw.bb570
    i32 18, label %sw.bb603
    i32 30, label %sw.bb604
    i32 7, label %sw.bb646
    i32 49, label %sw.bb654
    i32 39, label %sw.bb659
    i32 50, label %sw.bb671
    i32 17, label %sw.bb676
    i32 37, label %sw.bb677
    i32 36, label %sw.bb678
    i32 12, label %sw.bb679
    i32 14, label %sw.bb682
    i32 24, label %sw.bb685
    i32 6, label %sw.bb686
    i32 19, label %sw.bb697
    i32 21, label %sw.bb698
    i32 4, label %sw.bb701
  ], !dbg !1268

sw.bb:                                            ; preds = %if.end25
  tail call void @Perl_sv_replace(ptr noundef %arg1.sroa.0.2, ptr noundef %arg0.sroa.0.1) #8, !dbg !1269
  %sv_flags = getelementptr inbounds %struct.sv, ptr %arg1.sroa.0.2, i64 0, i32 2, !dbg !1270
  %7 = load i32, ptr %sv_flags, align 4, !dbg !1270
  %and27 = and i32 %7, 4194304, !dbg !1270
  %tobool28.not = icmp eq i32 %and27, 0, !dbg !1270
  br i1 %tobool28.not, label %sw.epilog742, label %if.then31, !dbg !1272

if.then31:                                        ; preds = %sw.bb
  store i8 2, ptr @PL_localizing, align 1, !dbg !1273
  %call = tail call i32 @Perl_mg_set(ptr noundef nonnull %arg1.sroa.0.2) #8, !dbg !1275
  store i8 0, ptr @PL_localizing, align 1, !dbg !1276
  br label %sw.epilog742, !dbg !1277

sw.bb34:                                          ; preds = %if.end25
  %sv_u = getelementptr inbounds %struct.gv, ptr %arg1.sroa.0.2, i64 0, i32 3, !dbg !1278
  %8 = load ptr, ptr %sv_u, align 8, !dbg !1278
  call void @llvm.dbg.value(metadata ptr %8, metadata !1165, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.2, metadata !1164, metadata !DIExpression()), !dbg !1235
  br label %restore_sv, !dbg !1279

restore_sv:                                       ; preds = %cond.true588, %if.then583, %if.then.i1208, %if.then564, %if.then554, %cond.true558, %if.end25, %sw.bb34
  %svp.1.ph = phi ptr [ %he_valu576, %cond.true588 ], [ %he_valu576, %if.then583 ], [ %he_valu576, %if.then.i1208 ], [ %call531, %if.then564 ], [ %call531, %if.then554 ], [ %call531, %cond.true558 ], [ %arg1.sroa.0.2, %if.end25 ], [ %8, %sw.bb34 ]
  %refsv.1.ph = phi ptr [ %arg2.sroa.0.2, %cond.true588 ], [ %arg2.sroa.0.2, %if.then583 ], [ %arg2.sroa.0.2, %if.then.i1208 ], [ %arg2.sroa.0.2, %if.then564 ], [ %arg2.sroa.0.2, %if.then554 ], [ %arg2.sroa.0.2, %cond.true558 ], [ null, %if.end25 ], [ %arg1.sroa.0.2, %sw.bb34 ]
  %.pr1284 = load ptr, ptr %svp.1.ph, align 8, !dbg !1280
  call void @llvm.dbg.value(metadata ptr %refsv.1.ph, metadata !1164, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %svp.1.ph, metadata !1165, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.label(metadata !1224), !dbg !1281
  call void @llvm.dbg.value(metadata ptr %.pr1284, metadata !1172, metadata !DIExpression()), !dbg !1282
  store ptr %arg0.sroa.0.1, ptr %svp.1.ph, align 8, !dbg !1283
  call void @llvm.dbg.value(metadata ptr %.pr1284, metadata !1284, metadata !DIExpression()) #8, !dbg !1293
  %cmp.not.i = icmp eq ptr %.pr1284, null, !dbg !1295
  br i1 %cmp.not.i, label %S_SvREFCNT_dec.exit, label %if.then.i, !dbg !1296

if.then.i:                                        ; preds = %restore_sv
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %.pr1284, i64 0, i32 1, !dbg !1297
  %9 = load i32, ptr %sv_refcnt.i, align 8, !dbg !1297
  call void @llvm.dbg.value(metadata i32 %9, metadata !1290, metadata !DIExpression()) #8, !dbg !1298
  %cmp1.i = icmp ugt i32 %9, 1, !dbg !1299
  br i1 %cmp1.i, label %if.then4.i, label %if.else.i, !dbg !1301

if.then4.i:                                       ; preds = %if.then.i
  %sub.i = add i32 %9, -1, !dbg !1302
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !1303
  br label %S_SvREFCNT_dec.exit, !dbg !1304

if.else.i:                                        ; preds = %if.then.i
  tail call void @Perl_sv_free2(ptr noundef nonnull %.pr1284, i32 noundef %9) #8, !dbg !1305
  br label %S_SvREFCNT_dec.exit

S_SvREFCNT_dec.exit:                              ; preds = %restore_sv.thread, %restore_sv, %if.then4.i, %if.else.i
  %refsv.11288 = phi ptr [ %arg2.sroa.0.2, %restore_sv.thread ], [ %refsv.1.ph, %restore_sv ], [ %refsv.1.ph, %if.then4.i ], [ %refsv.1.ph, %if.else.i ]
  %sv_flags36 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 2, !dbg !1306
  %10 = load i32, ptr %sv_flags36, align 4, !dbg !1306
  %and37 = and i32 %10, 4194304, !dbg !1306
  %tobool38.not = icmp eq i32 %and37, 0, !dbg !1306
  br i1 %tobool38.not, label %if.end43, label %if.then41, !dbg !1308

if.then41:                                        ; preds = %S_SvREFCNT_dec.exit
  store i8 2, ptr @PL_localizing, align 1, !dbg !1309
  %call42 = tail call i32 @Perl_mg_set(ptr noundef nonnull %arg0.sroa.0.1) #8, !dbg !1311
  store i8 0, ptr @PL_localizing, align 1, !dbg !1312
  br label %if.end43, !dbg !1313

if.end43:                                         ; preds = %S_SvREFCNT_dec.exit, %if.then41
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1314, metadata !DIExpression()) #8, !dbg !1318
  %sv_refcnt.i1046 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 1, !dbg !1320
  %11 = load i32, ptr %sv_refcnt.i1046, align 8, !dbg !1320
  call void @llvm.dbg.value(metadata i32 %11, metadata !1317, metadata !DIExpression()) #8, !dbg !1318
  %cmp.i = icmp ugt i32 %11, 1, !dbg !1321
  br i1 %cmp.i, label %if.then.i1048, label %if.else.i1049, !dbg !1323

if.then.i1048:                                    ; preds = %if.end43
  %sub.i1047 = add i32 %11, -1, !dbg !1324
  store i32 %sub.i1047, ptr %sv_refcnt.i1046, align 8, !dbg !1325
  br label %S_SvREFCNT_dec_NN.exit, !dbg !1326

if.else.i1049:                                    ; preds = %if.end43
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %11) #8, !dbg !1327
  br label %S_SvREFCNT_dec_NN.exit

S_SvREFCNT_dec_NN.exit:                           ; preds = %if.then.i1048, %if.else.i1049
  call void @llvm.dbg.value(metadata ptr %refsv.1.ph, metadata !1284, metadata !DIExpression()) #8, !dbg !1328
  %cmp.not.i1050 = icmp eq ptr %refsv.11288, null, !dbg !1330
  br i1 %cmp.not.i1050, label %sw.epilog742, label %if.then.i1053, !dbg !1331

if.then.i1053:                                    ; preds = %S_SvREFCNT_dec_NN.exit
  %sv_refcnt.i1051 = getelementptr inbounds %struct.sv, ptr %refsv.11288, i64 0, i32 1, !dbg !1332
  %12 = load i32, ptr %sv_refcnt.i1051, align 8, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %12, metadata !1290, metadata !DIExpression()) #8, !dbg !1333
  %cmp1.i1052 = icmp ugt i32 %12, 1, !dbg !1334
  br i1 %cmp1.i1052, label %if.then4.i1055, label %if.else.i1056, !dbg !1335

if.then4.i1055:                                   ; preds = %if.then.i1053
  %sub.i1054 = add i32 %12, -1, !dbg !1336
  store i32 %sub.i1054, ptr %sv_refcnt.i1051, align 8, !dbg !1337
  br label %sw.epilog742, !dbg !1338

if.else.i1056:                                    ; preds = %if.then.i1053
  tail call void @Perl_sv_free2(ptr noundef nonnull %refsv.11288, i32 noundef %12) #8, !dbg !1339
  br label %sw.epilog742

sw.bb44:                                          ; preds = %if.end25
  %13 = load ptr, ptr %arg0.sroa.0.1, align 8, !dbg !1340
  %cmp45.not = icmp eq ptr %13, %arg1.sroa.0.2, !dbg !1342
  br i1 %cmp45.not, label %sw.epilog742, label %if.then47, !dbg !1343

if.then47:                                        ; preds = %sw.bb44
  tail call void @Perl_safesysfree(ptr noundef %13) #8, !dbg !1344
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8, !dbg !1346
  br label %sw.epilog742, !dbg !1347

sw.bb49:                                          ; preds = %if.end25
  %14 = load ptr, ptr %arg1.sroa.0.2, align 8, !dbg !1348
  %cmp50.not = icmp eq ptr %14, %arg0.sroa.0.1, !dbg !1350
  br i1 %cmp50.not, label %sw.epilog742, label %if.then52, !dbg !1351

if.then52:                                        ; preds = %sw.bb49
  tail call void @free(ptr noundef %14) #8, !dbg !1352
  store ptr %arg0.sroa.0.1, ptr %arg1.sroa.0.2, align 8, !dbg !1354
  br label %sw.epilog742, !dbg !1355

sw.bb54:                                          ; preds = %if.end25
  %sv_u55 = getelementptr inbounds %struct.gv, ptr %arg1.sroa.0.2, i64 0, i32 3, !dbg !1356
  %15 = load ptr, ptr %sv_u55, align 8, !dbg !1356
  call void @llvm.dbg.value(metadata ptr %15, metadata !1165, metadata !DIExpression()), !dbg !1235
  br label %restore_svp, !dbg !1357

restore_svp:                                      ; preds = %sw.bb60, %land.lhs.true143, %land.lhs.true70, %land.lhs.true65, %land.lhs.true, %if.else, %if.then164, %if.end25, %sw.bb54
  %svp.2.ph = phi ptr [ %arg1.sroa.0.2, %sw.bb60 ], [ %arg1.sroa.0.2, %land.lhs.true143 ], [ %arg1.sroa.0.2, %land.lhs.true70 ], [ %arg1.sroa.0.2, %land.lhs.true65 ], [ %arg1.sroa.0.2, %land.lhs.true ], [ %arg1.sroa.0.2, %if.else ], [ %arg1.sroa.0.2, %if.then164 ], [ %arg1.sroa.0.2, %if.end25 ], [ %15, %sw.bb54 ]
  %.pr = load ptr, ptr %svp.2.ph, align 8, !dbg !1358
  call void @llvm.dbg.value(metadata ptr %svp.2.ph, metadata !1165, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.label(metadata !1225), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %.pr, metadata !1175, metadata !DIExpression()), !dbg !1360
  store ptr %arg0.sroa.0.1, ptr %svp.2.ph, align 8, !dbg !1361
  call void @llvm.dbg.value(metadata ptr %.pr, metadata !1284, metadata !DIExpression()) #8, !dbg !1362
  %cmp.not.i1058 = icmp eq ptr %.pr, null, !dbg !1364
  br i1 %cmp.not.i1058, label %S_SvREFCNT_dec.exit1065, label %if.then.i1061, !dbg !1365

if.then.i1061:                                    ; preds = %restore_svp
  %sv_refcnt.i1059 = getelementptr inbounds %struct.sv, ptr %.pr, i64 0, i32 1, !dbg !1366
  %16 = load i32, ptr %sv_refcnt.i1059, align 8, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %16, metadata !1290, metadata !DIExpression()) #8, !dbg !1367
  %cmp1.i1060 = icmp ugt i32 %16, 1, !dbg !1368
  br i1 %cmp1.i1060, label %if.then4.i1063, label %if.else.i1064, !dbg !1369

if.then4.i1063:                                   ; preds = %if.then.i1061
  %sub.i1062 = add i32 %16, -1, !dbg !1370
  store i32 %sub.i1062, ptr %sv_refcnt.i1059, align 8, !dbg !1371
  br label %S_SvREFCNT_dec.exit1065, !dbg !1372

if.else.i1064:                                    ; preds = %if.then.i1061
  tail call void @Perl_sv_free2(ptr noundef nonnull %.pr, i32 noundef %16) #8, !dbg !1373
  br label %S_SvREFCNT_dec.exit1065

S_SvREFCNT_dec.exit1065:                          ; preds = %restore_svp.thread, %restore_svp, %if.then4.i1063, %if.else.i1064
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1284, metadata !DIExpression()) #8, !dbg !1374
  %cmp.not.i1066 = icmp eq ptr %arg0.sroa.0.1, null, !dbg !1376
  br i1 %cmp.not.i1066, label %sw.epilog742, label %if.then.i1069, !dbg !1377

if.then.i1069:                                    ; preds = %S_SvREFCNT_dec.exit1065
  %sv_refcnt.i1067 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 1, !dbg !1378
  %17 = load i32, ptr %sv_refcnt.i1067, align 8, !dbg !1378
  call void @llvm.dbg.value(metadata i32 %17, metadata !1290, metadata !DIExpression()) #8, !dbg !1379
  %cmp1.i1068 = icmp ugt i32 %17, 1, !dbg !1380
  br i1 %cmp1.i1068, label %if.then4.i1071, label %if.else.i1072, !dbg !1381

if.then4.i1071:                                   ; preds = %if.then.i1069
  %sub.i1070 = add i32 %17, -1, !dbg !1382
  store i32 %sub.i1070, ptr %sv_refcnt.i1067, align 8, !dbg !1383
  br label %sw.epilog742, !dbg !1384

if.else.i1072:                                    ; preds = %if.then.i1069
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %17) #8, !dbg !1385
  br label %sw.epilog742

sw.bb60:                                          ; preds = %if.end25
  %18 = load ptr, ptr %arg2.sroa.0.2, align 8, !dbg !1386
  %xnv_u = getelementptr inbounds %struct.xpvgv, ptr %18, i64 0, i32 5, !dbg !1386
  %19 = load ptr, ptr %xnv_u, align 8, !dbg !1386
  call void @llvm.dbg.value(metadata ptr %19, metadata !1177, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.2, metadata !1165, metadata !DIExpression()), !dbg !1235
  %tobool61.not = icmp eq ptr %19, null, !dbg !1388
  br i1 %tobool61.not, label %restore_svp, label %land.lhs.true, !dbg !1390

land.lhs.true:                                    ; preds = %sw.bb60
  %sv_flags62 = getelementptr inbounds %struct.hv, ptr %19, i64 0, i32 2, !dbg !1391
  %20 = load i32, ptr %sv_flags62, align 4, !dbg !1391
  %and63 = and i32 %20, 33554432, !dbg !1391
  %tobool64.not = icmp eq i32 %and63, 0, !dbg !1391
  br i1 %tobool64.not, label %restore_svp, label %land.lhs.true65, !dbg !1391

land.lhs.true65:                                  ; preds = %land.lhs.true
  %sv_u66 = getelementptr inbounds %struct.hv, ptr %19, i64 0, i32 3, !dbg !1391
  %21 = load ptr, ptr %sv_u66, align 8, !dbg !1391
  %22 = load ptr, ptr %19, align 8, !dbg !1391
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %22, i64 0, i32 3, !dbg !1391
  %23 = load i64, ptr %xhv_max, align 8, !dbg !1391
  %add = add i64 %23, 1, !dbg !1391
  %arrayidx68 = getelementptr inbounds ptr, ptr %21, i64 %add, !dbg !1391
  %24 = load ptr, ptr %arrayidx68, align 8, !dbg !1391
  %tobool69.not = icmp eq ptr %24, null, !dbg !1391
  br i1 %tobool69.not, label %restore_svp, label %land.lhs.true70, !dbg !1391

land.lhs.true70:                                  ; preds = %land.lhs.true65
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx68, i64 0, i32 4, !dbg !1391
  %25 = load i32, ptr %xhv_name_count, align 4, !dbg !1391
  %cmp76.not = icmp eq i32 %25, -1, !dbg !1391
  br i1 %cmp76.not, label %restore_svp, label %cond.true78, !dbg !1392

cond.true78:                                      ; preds = %land.lhs.true70
  %tobool136.not = icmp eq ptr %arg0.sroa.0.1, null, !dbg !1393
  br i1 %tobool136.not, label %lor.lhs.false, label %land.lhs.true137, !dbg !1394

land.lhs.true137:                                 ; preds = %cond.true78
  %sv_flags138 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 2, !dbg !1395
  %26 = load i32, ptr %sv_flags138, align 4, !dbg !1395
  %and139 = and i32 %26, 255, !dbg !1395
  %cmp140 = icmp eq i32 %and139, 13, !dbg !1396
  br i1 %cmp140, label %if.then148, label %lor.lhs.false, !dbg !1397

lor.lhs.false:                                    ; preds = %land.lhs.true137, %cond.true78
  %27 = load ptr, ptr %arg1.sroa.0.2, align 8, !dbg !1398
  %tobool142.not = icmp eq ptr %27, null, !dbg !1398
  br i1 %tobool142.not, label %restore_svp.thread, label %land.lhs.true143, !dbg !1399

restore_svp.thread:                               ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata ptr %svp.2.ph, metadata !1165, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.label(metadata !1225), !dbg !1359
  call void @llvm.dbg.value(metadata ptr %.pr, metadata !1175, metadata !DIExpression()), !dbg !1360
  store ptr %arg0.sroa.0.1, ptr %arg1.sroa.0.2, align 8, !dbg !1361
  call void @llvm.dbg.value(metadata ptr %.pr, metadata !1284, metadata !DIExpression()) #8, !dbg !1362
  br label %S_SvREFCNT_dec.exit1065, !dbg !1365

land.lhs.true143:                                 ; preds = %lor.lhs.false
  %sv_flags144 = getelementptr inbounds %struct.sv, ptr %27, i64 0, i32 2, !dbg !1400
  %28 = load i32, ptr %sv_flags144, align 4, !dbg !1400
  %and145 = and i32 %28, 255, !dbg !1400
  %cmp146 = icmp eq i32 %and145, 13, !dbg !1401
  br i1 %cmp146, label %if.then148, label %restore_svp, !dbg !1402

if.then148:                                       ; preds = %land.lhs.true143, %land.lhs.true137
  %sv_u149 = getelementptr inbounds %struct.gv, ptr %arg2.sroa.0.2, i64 0, i32 3, !dbg !1403
  %29 = load ptr, ptr %sv_u149, align 8, !dbg !1403
  %cmp151 = icmp ult ptr %arg1.sroa.0.2, %29, !dbg !1406
  %add.ptr156 = getelementptr inbounds i8, ptr %29, i64 80
  %cmp157 = icmp ugt ptr %arg1.sroa.0.2, %add.ptr156
  %or.cond1041 = select i1 %cmp151, i1 true, i1 %cmp157, !dbg !1407
  br i1 %or.cond1041, label %if.then164, label %lor.lhs.false159, !dbg !1407

lor.lhs.false159:                                 ; preds = %if.then148
  %gp_refcnt = getelementptr inbounds %struct.gp, ptr %29, i64 0, i32 4, !dbg !1408
  %30 = load i32, ptr %gp_refcnt, align 4, !dbg !1408
  %cmp162 = icmp ugt i32 %30, 2, !dbg !1409
  br i1 %cmp162, label %if.then164, label %if.else, !dbg !1410

if.then164:                                       ; preds = %lor.lhs.false159, %if.then148
  %31 = load i32, ptr @PL_sub_generation, align 4, !dbg !1411
  %inc = add i32 %31, 1, !dbg !1411
  store i32 %inc, ptr @PL_sub_generation, align 4, !dbg !1411
  br label %restore_svp, !dbg !1412

if.else:                                          ; preds = %lor.lhs.false159
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %19) #8, !dbg !1413
  br label %restore_svp

sw.bb167:                                         ; preds = %if.end25
  %sv_u168 = getelementptr inbounds %struct.gv, ptr %arg1.sroa.0.2, i64 0, i32 3, !dbg !1414
  %32 = load ptr, ptr %sv_u168, align 8, !dbg !1414
  %gp_av = getelementptr inbounds %struct.gp, ptr %32, i64 0, i32 6, !dbg !1414
  %33 = load ptr, ptr %gp_av, align 8, !dbg !1414
  call void @llvm.dbg.value(metadata ptr %33, metadata !1284, metadata !DIExpression()) #8, !dbg !1415
  %cmp.not.i1074 = icmp eq ptr %33, null, !dbg !1417
  br i1 %cmp.not.i1074, label %S_SvREFCNT_dec.exit1081, label %if.then.i1077, !dbg !1418

if.then.i1077:                                    ; preds = %sw.bb167
  %sv_refcnt.i1075 = getelementptr inbounds %struct.sv, ptr %33, i64 0, i32 1, !dbg !1419
  %34 = load i32, ptr %sv_refcnt.i1075, align 8, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %34, metadata !1290, metadata !DIExpression()) #8, !dbg !1420
  %cmp1.i1076 = icmp ugt i32 %34, 1, !dbg !1421
  br i1 %cmp1.i1076, label %if.then4.i1079, label %if.else.i1080, !dbg !1422

if.then4.i1079:                                   ; preds = %if.then.i1077
  %sub.i1078 = add i32 %34, -1, !dbg !1423
  store i32 %sub.i1078, ptr %sv_refcnt.i1075, align 8, !dbg !1424
  br label %S_SvREFCNT_dec.exit1081, !dbg !1425

if.else.i1080:                                    ; preds = %if.then.i1077
  tail call void @Perl_sv_free2(ptr noundef nonnull %33, i32 noundef %34) #8, !dbg !1426
  br label %S_SvREFCNT_dec.exit1081

S_SvREFCNT_dec.exit1081:                          ; preds = %sw.bb167, %if.then4.i1079, %if.else.i1080
  %35 = load ptr, ptr %sv_u168, align 8, !dbg !1427
  %gp_av172 = getelementptr inbounds %struct.gp, ptr %35, i64 0, i32 6, !dbg !1427
  store ptr %arg0.sroa.0.1, ptr %gp_av172, align 8, !dbg !1428
  %sv_flags173 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 2, !dbg !1429
  %36 = load i32, ptr %sv_flags173, align 4, !dbg !1429
  %and174 = and i32 %36, 4194304, !dbg !1429
  %tobool175.not = icmp eq i32 %and174, 0, !dbg !1429
  br i1 %tobool175.not, label %if.end180, label %if.then178, !dbg !1431

if.then178:                                       ; preds = %S_SvREFCNT_dec.exit1081
  store i8 2, ptr @PL_localizing, align 1, !dbg !1432
  %call179 = tail call i32 @Perl_mg_set(ptr noundef nonnull %arg0.sroa.0.1) #8, !dbg !1434
  store i8 0, ptr @PL_localizing, align 1, !dbg !1435
  br label %if.end180, !dbg !1436

if.end180:                                        ; preds = %S_SvREFCNT_dec.exit1081, %if.then178
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.2, metadata !1314, metadata !DIExpression()) #8, !dbg !1437
  %sv_refcnt.i1082 = getelementptr inbounds %struct.sv, ptr %arg1.sroa.0.2, i64 0, i32 1, !dbg !1439
  %37 = load i32, ptr %sv_refcnt.i1082, align 8, !dbg !1439
  call void @llvm.dbg.value(metadata i32 %37, metadata !1317, metadata !DIExpression()) #8, !dbg !1437
  %cmp.i1083 = icmp ugt i32 %37, 1, !dbg !1440
  br i1 %cmp.i1083, label %if.then.i1085, label %if.else.i1086, !dbg !1441

if.then.i1085:                                    ; preds = %if.end180
  %sub.i1084 = add i32 %37, -1, !dbg !1442
  store i32 %sub.i1084, ptr %sv_refcnt.i1082, align 8, !dbg !1443
  br label %sw.epilog742, !dbg !1444

if.else.i1086:                                    ; preds = %if.end180
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg1.sroa.0.2, i32 noundef %37) #8, !dbg !1445
  br label %sw.epilog742

sw.bb181:                                         ; preds = %if.end25
  %sv_u182 = getelementptr inbounds %struct.gv, ptr %arg1.sroa.0.2, i64 0, i32 3, !dbg !1446
  %38 = load ptr, ptr %sv_u182, align 8, !dbg !1446
  %gp_hv = getelementptr inbounds %struct.gp, ptr %38, i64 0, i32 5, !dbg !1446
  %39 = load ptr, ptr %gp_hv, align 8, !dbg !1446
  call void @llvm.dbg.value(metadata ptr %39, metadata !1284, metadata !DIExpression()) #8, !dbg !1447
  %cmp.not.i1088 = icmp eq ptr %39, null, !dbg !1449
  br i1 %cmp.not.i1088, label %S_SvREFCNT_dec.exit1095, label %if.then.i1091, !dbg !1450

if.then.i1091:                                    ; preds = %sw.bb181
  %sv_refcnt.i1089 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 1, !dbg !1451
  %40 = load i32, ptr %sv_refcnt.i1089, align 8, !dbg !1451
  call void @llvm.dbg.value(metadata i32 %40, metadata !1290, metadata !DIExpression()) #8, !dbg !1452
  %cmp1.i1090 = icmp ugt i32 %40, 1, !dbg !1453
  br i1 %cmp1.i1090, label %if.then4.i1093, label %if.else.i1094, !dbg !1454

if.then4.i1093:                                   ; preds = %if.then.i1091
  %sub.i1092 = add i32 %40, -1, !dbg !1455
  store i32 %sub.i1092, ptr %sv_refcnt.i1089, align 8, !dbg !1456
  br label %S_SvREFCNT_dec.exit1095, !dbg !1457

if.else.i1094:                                    ; preds = %if.then.i1091
  tail call void @Perl_sv_free2(ptr noundef nonnull %39, i32 noundef %40) #8, !dbg !1458
  br label %S_SvREFCNT_dec.exit1095

S_SvREFCNT_dec.exit1095:                          ; preds = %sw.bb181, %if.then4.i1093, %if.else.i1094
  %41 = load ptr, ptr %sv_u182, align 8, !dbg !1459
  %gp_hv186 = getelementptr inbounds %struct.gp, ptr %41, i64 0, i32 5, !dbg !1459
  store ptr %arg0.sroa.0.1, ptr %gp_hv186, align 8, !dbg !1460
  %sv_flags187 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 2, !dbg !1461
  %42 = load i32, ptr %sv_flags187, align 4, !dbg !1461
  %and188 = and i32 %42, 4194304, !dbg !1461
  %tobool189.not = icmp eq i32 %and188, 0, !dbg !1461
  br i1 %tobool189.not, label %if.end194, label %if.then192, !dbg !1463

if.then192:                                       ; preds = %S_SvREFCNT_dec.exit1095
  store i8 2, ptr @PL_localizing, align 1, !dbg !1464
  %call193 = tail call i32 @Perl_mg_set(ptr noundef nonnull %arg0.sroa.0.1) #8, !dbg !1466
  store i8 0, ptr @PL_localizing, align 1, !dbg !1467
  br label %if.end194, !dbg !1468

if.end194:                                        ; preds = %S_SvREFCNT_dec.exit1095, %if.then192
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.2, metadata !1314, metadata !DIExpression()) #8, !dbg !1469
  %sv_refcnt.i1096 = getelementptr inbounds %struct.sv, ptr %arg1.sroa.0.2, i64 0, i32 1, !dbg !1471
  %43 = load i32, ptr %sv_refcnt.i1096, align 8, !dbg !1471
  call void @llvm.dbg.value(metadata i32 %43, metadata !1317, metadata !DIExpression()) #8, !dbg !1469
  %cmp.i1097 = icmp ugt i32 %43, 1, !dbg !1472
  br i1 %cmp.i1097, label %if.then.i1099, label %if.else.i1100, !dbg !1473

if.then.i1099:                                    ; preds = %if.end194
  %sub.i1098 = add i32 %43, -1, !dbg !1474
  store i32 %sub.i1098, ptr %sv_refcnt.i1096, align 8, !dbg !1475
  br label %sw.epilog742, !dbg !1476

if.else.i1100:                                    ; preds = %if.end194
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg1.sroa.0.2, i32 noundef %43) #8, !dbg !1477
  br label %sw.epilog742

sw.bb195:                                         ; preds = %if.end25
  %shr = lshr i64 %4, 6, !dbg !1478
  %conv196 = trunc i64 %shr to i32, !dbg !1479
  store i32 %conv196, ptr %arg0.sroa.0.1, align 4, !dbg !1480
  br label %sw.epilog742, !dbg !1481

sw.bb197:                                         ; preds = %if.end25
  %44 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1482
  %arg1.sroa.0.0.extract.trunc = trunc i64 %44 to i32, !dbg !1482
  store i32 %arg1.sroa.0.0.extract.trunc, ptr %arg0.sroa.0.1, align 4, !dbg !1483
  br label %sw.epilog742, !dbg !1484

sw.bb198:                                         ; preds = %if.end25
  %45 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1485
  store i64 %45, ptr %arg0.sroa.0.1, align 8, !dbg !1486
  br label %sw.epilog742, !dbg !1487

sw.bb199:                                         ; preds = %if.end25
  %tobool201 = icmp ugt i64 %4, 255, !dbg !1488
  %frombool204 = zext i1 %tobool201 to i8, !dbg !1489
  store i8 %frombool204, ptr %arg0.sroa.0.1, align 1, !dbg !1489
  %cmp205 = icmp eq ptr %arg0.sroa.0.1, @PL_tainted, !dbg !1490
  %spec.select = select i1 %cmp205, i8 %frombool204, i8 %was.01275, !dbg !1492
  br label %sw.epilog742, !dbg !1492

sw.bb213:                                         ; preds = %if.end25
  %shr214 = lshr i64 %4, 6, !dbg !1493
  %conv215 = trunc i64 %shr214 to i32, !dbg !1494
  store i32 %conv215, ptr %arg0.sroa.0.1, align 4, !dbg !1495
  br label %sw.epilog742, !dbg !1496

sw.bb216:                                         ; preds = %if.end25
  %46 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1497
  %arg1.sroa.0.0.extract.trunc913 = trunc i64 %46 to i32, !dbg !1497
  store i32 %arg1.sroa.0.0.extract.trunc913, ptr %arg0.sroa.0.1, align 4, !dbg !1498
  br label %sw.epilog742, !dbg !1499

sw.bb217:                                         ; preds = %if.end25
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8, !dbg !1500
  br label %sw.epilog742, !dbg !1501

sw.bb218:                                         ; preds = %if.end25, %if.end25
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8, !dbg !1502
  br label %sw.epilog742, !dbg !1503

sw.bb219:                                         ; preds = %if.end25
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8, !dbg !1504
  br label %sw.epilog742, !dbg !1505

sw.bb220:                                         ; preds = %if.end25
  store ptr %arg1.sroa.0.2, ptr %arg0.sroa.0.1, align 8, !dbg !1506
  br label %sw.epilog742, !dbg !1507

sw.bb221:                                         ; preds = %if.end25
  %sv_u223 = getelementptr inbounds %struct.gv, ptr %arg1.sroa.0.2, i64 0, i32 3, !dbg !1508
  %47 = load ptr, ptr %sv_u223, align 8, !dbg !1508
  %gp_cvgen = getelementptr inbounds %struct.gp, ptr %47, i64 0, i32 3, !dbg !1508
  %48 = load i32, ptr %gp_cvgen, align 8, !dbg !1508
  %tobool225.not = icmp eq i32 %48, 0, !dbg !1508
  br i1 %tobool225.not, label %cond.false227, label %cond.end230, !dbg !1508

cond.false227:                                    ; preds = %sw.bb221
  %gp_cv = getelementptr inbounds %struct.gp, ptr %47, i64 0, i32 2, !dbg !1508
  %49 = load ptr, ptr %gp_cv, align 8, !dbg !1508
  br label %cond.end230, !dbg !1508

cond.end230:                                      ; preds = %sw.bb221, %cond.false227
  %cond231 = phi ptr [ %49, %cond.false227 ], [ null, %sw.bb221 ], !dbg !1508
  %tobool232.not = icmp eq ptr %cond231, null, !dbg !1509
  call void @llvm.dbg.value(metadata i1 %tobool232.not, metadata !1182, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1510
  tail call void @Perl_gp_free(ptr noundef nonnull %arg1.sroa.0.2) #8, !dbg !1511
  store ptr %arg0.sroa.0.1, ptr %sv_u223, align 8, !dbg !1512
  %50 = load ptr, ptr %arg1.sroa.0.2, align 8, !dbg !1513
  %xnv_u237 = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 5, !dbg !1513
  %51 = load ptr, ptr %xnv_u237, align 8, !dbg !1513
  call void @llvm.dbg.value(metadata ptr %51, metadata !1180, metadata !DIExpression()), !dbg !1510
  %tobool238.not = icmp eq ptr %51, null, !dbg !1515
  br i1 %tobool238.not, label %if.end361, label %land.lhs.true239, !dbg !1516

land.lhs.true239:                                 ; preds = %cond.end230
  %sv_flags240 = getelementptr inbounds %struct.hv, ptr %51, i64 0, i32 2, !dbg !1517
  %52 = load i32, ptr %sv_flags240, align 4, !dbg !1517
  %and241 = and i32 %52, 33554432, !dbg !1517
  %tobool242.not = icmp eq i32 %and241, 0, !dbg !1517
  br i1 %tobool242.not, label %if.end361, label %land.lhs.true243, !dbg !1517

land.lhs.true243:                                 ; preds = %land.lhs.true239
  %sv_u244 = getelementptr inbounds %struct.hv, ptr %51, i64 0, i32 3, !dbg !1517
  %53 = load ptr, ptr %sv_u244, align 8, !dbg !1517
  %54 = load ptr, ptr %51, align 8, !dbg !1517
  %xhv_max246 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3, !dbg !1517
  %55 = load i64, ptr %xhv_max246, align 8, !dbg !1517
  %add247 = add i64 %55, 1, !dbg !1517
  %arrayidx248 = getelementptr inbounds ptr, ptr %53, i64 %add247, !dbg !1517
  %56 = load ptr, ptr %arrayidx248, align 8, !dbg !1517
  %tobool250.not = icmp eq ptr %56, null, !dbg !1517
  br i1 %tobool250.not, label %if.end361, label %land.lhs.true251, !dbg !1517

land.lhs.true251:                                 ; preds = %land.lhs.true243
  %xhv_name_count257 = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx248, i64 0, i32 4, !dbg !1517
  %57 = load i32, ptr %xhv_name_count257, align 4, !dbg !1517
  %cmp258.not = icmp eq i32 %57, -1, !dbg !1517
  br i1 %cmp258.not, label %if.end361, label %cond.true260, !dbg !1518

cond.true260:                                     ; preds = %land.lhs.true251
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %50, i64 0, i32 4, !dbg !1519
  %58 = load ptr, ptr %xiv_u, align 8, !dbg !1519
  %hek_len = getelementptr inbounds %struct.hek, ptr %58, i64 0, i32 1, !dbg !1519
  %59 = load i32, ptr %hek_len, align 4, !dbg !1519
  %cmp323 = icmp eq i32 %59, 3, !dbg !1522
  br i1 %cmp323, label %land.lhs.true325, label %if.else333, !dbg !1523

land.lhs.true325:                                 ; preds = %cond.true260
  %hek_key328 = getelementptr inbounds %struct.hek, ptr %58, i64 0, i32 2, !dbg !1524
  %call330 = tail call i32 @strncmp(ptr noundef nonnull %hek_key328, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #9, !dbg !1524
  %tobool331.not = icmp eq i32 %call330, 0, !dbg !1524
  br i1 %tobool331.not, label %if.then332, label %if.else333, !dbg !1525

if.then332:                                       ; preds = %land.lhs.true325
  tail call void @Perl_mro_isa_changed_in(ptr noundef nonnull %51) #8, !dbg !1526
  br label %if.end361, !dbg !1526

if.else333:                                       ; preds = %land.lhs.true325, %cond.true260
  br i1 %tobool232.not, label %lor.lhs.false336, label %if.then347, !dbg !1527

lor.lhs.false336:                                 ; preds = %if.else333
  %gp_cvgen339 = getelementptr inbounds %struct.gp, ptr %arg0.sroa.0.1, i64 0, i32 3, !dbg !1529
  %60 = load i32, ptr %gp_cvgen339, align 8, !dbg !1529
  %tobool340.not = icmp eq i32 %60, 0, !dbg !1529
  br i1 %tobool340.not, label %cond.false342, label %if.end361, !dbg !1530

cond.false342:                                    ; preds = %lor.lhs.false336
  %gp_cv345 = getelementptr inbounds %struct.gp, ptr %arg0.sroa.0.1, i64 0, i32 2, !dbg !1529
  %61 = load ptr, ptr %gp_cv345, align 8, !dbg !1529
  %tobool346.not = icmp eq ptr %61, null, !dbg !1529
  br i1 %tobool346.not, label %if.end361, label %if.then347, !dbg !1530

if.then347:                                       ; preds = %cond.false342, %if.else333
  %gp_refcnt350 = getelementptr inbounds %struct.gp, ptr %arg0.sroa.0.1, i64 0, i32 4, !dbg !1531
  %62 = load i32, ptr %gp_refcnt350, align 4, !dbg !1531
  %cmp351 = icmp ugt i32 %62, 1, !dbg !1531
  br i1 %cmp351, label %cond.true353, label %cond.false355, !dbg !1531

cond.true353:                                     ; preds = %if.then347
  %63 = load i32, ptr @PL_sub_generation, align 4, !dbg !1531
  %inc354 = add i32 %63, 1, !dbg !1531
  store i32 %inc354, ptr @PL_sub_generation, align 4, !dbg !1531
  br label %if.end361, !dbg !1531

cond.false355:                                    ; preds = %if.then347
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %51) #8, !dbg !1531
  br label %if.end361, !dbg !1531

if.end361:                                        ; preds = %if.then332, %cond.true353, %cond.false355, %lor.lhs.false336, %cond.false342, %land.lhs.true239, %land.lhs.true243, %land.lhs.true251, %cond.end230
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.2, metadata !1314, metadata !DIExpression()) #8, !dbg !1532
  %sv_refcnt.i1102 = getelementptr inbounds %struct.sv, ptr %arg1.sroa.0.2, i64 0, i32 1, !dbg !1534
  %64 = load i32, ptr %sv_refcnt.i1102, align 8, !dbg !1534
  call void @llvm.dbg.value(metadata i32 %64, metadata !1317, metadata !DIExpression()) #8, !dbg !1532
  %cmp.i1103 = icmp ugt i32 %64, 1, !dbg !1535
  br i1 %cmp.i1103, label %if.then.i1105, label %if.else.i1106, !dbg !1536

if.then.i1105:                                    ; preds = %if.end361
  %sub.i1104 = add i32 %64, -1, !dbg !1537
  store i32 %sub.i1104, ptr %sv_refcnt.i1102, align 8, !dbg !1538
  br label %sw.epilog742, !dbg !1539

if.else.i1106:                                    ; preds = %if.end361
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg1.sroa.0.2, i32 noundef %64) #8, !dbg !1540
  br label %sw.epilog742

sw.bb362:                                         ; preds = %if.end25
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1284, metadata !DIExpression()) #8, !dbg !1541
  %cmp.not.i1108 = icmp eq ptr %arg0.sroa.0.1, null, !dbg !1543
  br i1 %cmp.not.i1108, label %sw.epilog742, label %if.then.i1111, !dbg !1544

if.then.i1111:                                    ; preds = %sw.bb362
  %sv_refcnt.i1109 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 1, !dbg !1545
  %65 = load i32, ptr %sv_refcnt.i1109, align 8, !dbg !1545
  call void @llvm.dbg.value(metadata i32 %65, metadata !1290, metadata !DIExpression()) #8, !dbg !1546
  %cmp1.i1110 = icmp ugt i32 %65, 1, !dbg !1547
  br i1 %cmp1.i1110, label %if.then4.i1113, label %if.else.i1114, !dbg !1548

if.then4.i1113:                                   ; preds = %if.then.i1111
  %sub.i1112 = add i32 %65, -1, !dbg !1549
  store i32 %sub.i1112, ptr %sv_refcnt.i1109, align 8, !dbg !1550
  br label %sw.epilog742, !dbg !1551

if.else.i1114:                                    ; preds = %if.then.i1111
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %65) #8, !dbg !1552
  br label %sw.epilog742

sw.bb363:                                         ; preds = %if.end25
  tail call void @Perl_padname_free(ptr noundef %arg0.sroa.0.1) #8, !dbg !1553
  br label %sw.epilog742, !dbg !1554

sw.bb364:                                         ; preds = %if.end25
  tail call void @Perl_refcounted_he_free(ptr noundef %arg0.sroa.0.1) #8, !dbg !1555
  br label %sw.epilog742, !dbg !1556

sw.bb365:                                         ; preds = %if.end25
  %call366 = tail call ptr @Perl_sv_2mortal(ptr noundef %arg0.sroa.0.1) #8, !dbg !1557
  br label %sw.epilog742, !dbg !1558

sw.bb367:                                         ; preds = %if.end25
  tail call void @Perl_op_free(ptr noundef %arg0.sroa.0.1) #8, !dbg !1559
  br label %sw.epilog742, !dbg !1560

sw.bb368:                                         ; preds = %if.end25
  tail call void @Perl_safesysfree(ptr noundef %arg0.sroa.0.1) #8, !dbg !1561
  br label %sw.epilog742, !dbg !1562

clearsv.thread:                                   ; preds = %if.end25
  %66 = load ptr, ptr @PL_curpad, align 8, !dbg !1563
  %shr378 = lshr i64 %4, 6, !dbg !1564
  %arrayidx379 = getelementptr inbounds ptr, ptr %66, i64 %shr378, !dbg !1563
  call void @llvm.dbg.value(metadata i32 %conv372, metadata !1156, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %add.ptr376, metadata !1165, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.label(metadata !1226), !dbg !1565
  br label %for.body.preheader, !dbg !1566

clearsv:                                          ; preds = %if.end25
  %67 = lshr i32 %conv3, 6, !dbg !1567
  %conv372 = and i32 %67, 127, !dbg !1567
  call void @llvm.dbg.value(metadata i32 %conv372, metadata !1156, metadata !DIExpression()), !dbg !1227
  %68 = load ptr, ptr @PL_curpad, align 8, !dbg !1568
  %shr373 = lshr i64 %4, 13, !dbg !1569
  %arrayidx374 = getelementptr inbounds ptr, ptr %68, i64 -1, !dbg !1568
  %69 = zext i32 %conv372 to i64
  %add.ptr375 = getelementptr inbounds ptr, ptr %arrayidx374, i64 %shr373, !dbg !1570
  %add.ptr376 = getelementptr inbounds ptr, ptr %add.ptr375, i64 %69, !dbg !1571
  call void @llvm.dbg.value(metadata ptr %add.ptr376, metadata !1165, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.label(metadata !1226), !dbg !1565
  %tobool380.not1264 = icmp eq i32 %conv372, 0, !dbg !1566
  br i1 %tobool380.not1264, label %sw.epilog742, label %for.body.preheader, !dbg !1566

for.body.preheader:                               ; preds = %clearsv.thread, %clearsv
  %i.11268.ph = phi i32 [ %conv372, %clearsv ], [ 1, %clearsv.thread ]
  %svp.41265.ph = phi ptr [ %add.ptr376, %clearsv ], [ %arrayidx379, %clearsv.thread ]
  br label %for.body, !dbg !1566

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %i.11268 = phi i32 [ %dec, %for.inc ], [ %i.11268.ph, %for.body.preheader ]
  %svp.41265 = phi ptr [ %incdec.ptr516, %for.inc ], [ %svp.41265.ph, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i32 %i.11268, metadata !1156, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %svp.41265, metadata !1165, metadata !DIExpression()), !dbg !1235
  %70 = load ptr, ptr %svp.41265, align 8, !dbg !1572
  call void @llvm.dbg.value(metadata ptr %70, metadata !1157, metadata !DIExpression()), !dbg !1227
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 1, !dbg !1573
  %71 = load i32, ptr %sv_refcnt, align 8, !dbg !1573
  %cmp381 = icmp eq i32 %71, 1, !dbg !1574
  %sv_flags384 = getelementptr inbounds %struct.sv, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %sv_flags384, align 4, !dbg !1575
  %and385 = and i32 %72, 1048576
  %tobool386.not = icmp eq i32 %and385, 0
  %or.cond1294 = select i1 %cmp381, i1 %tobool386.not, i1 false, !dbg !1576
  br i1 %or.cond1294, label %if.then387, label %if.else469, !dbg !1576

if.then387:                                       ; preds = %for.body
  %and389 = and i32 %72, 467732480, !dbg !1577
  %tobool390.not = icmp eq i32 %and389, 0, !dbg !1577
  br i1 %tobool390.not, label %if.end432, label %if.then393, !dbg !1579

if.then393:                                       ; preds = %if.then387
  %and395 = and i32 %72, 134283264, !dbg !1580
  %tobool396.not = icmp eq i32 %and395, 0, !dbg !1580
  br i1 %tobool396.not, label %if.end400, label %if.then397, !dbg !1583

if.then397:                                       ; preds = %if.then393
  %and399 = and i32 %72, -134283265, !dbg !1584
  store i32 %and399, ptr %sv_flags384, align 4, !dbg !1584
  br label %if.end400, !dbg !1584

if.end400:                                        ; preds = %if.then397, %if.then393
  %73 = phi i32 [ %and399, %if.then397 ], [ %72, %if.then393 ], !dbg !1585
  %and402 = and i32 %73, 33554432, !dbg !1585
  %tobool403.not = icmp eq i32 %and402, 0, !dbg !1585
  br i1 %tobool403.not, label %if.end413, label %if.then404, !dbg !1587

if.then404:                                       ; preds = %if.end400
  %and406 = and i32 %73, 255, !dbg !1588
  %cmp407 = icmp eq i32 %and406, 12, !dbg !1591
  br i1 %cmp407, label %if.then409, label %if.else410, !dbg !1592

if.then409:                                       ; preds = %if.then404
  tail call void @Perl_hv_kill_backrefs(ptr noundef nonnull %70) #8, !dbg !1593
  br label %if.end413, !dbg !1593

if.else410:                                       ; preds = %if.then404
  %call411 = tail call i32 @Perl_sv_backoff(ptr noundef nonnull %70) #8, !dbg !1594
  br label %if.end413

if.end413:                                        ; preds = %if.then409, %if.else410, %if.end400
  %74 = load i32, ptr %sv_flags384, align 4, !dbg !1595
  %and415 = and i32 %74, 14680064, !dbg !1595
  %tobool416.not = icmp eq i32 %and415, 0, !dbg !1595
  br i1 %tobool416.not, label %if.end426, label %if.then417, !dbg !1597

if.then417:                                       ; preds = %if.end413
  %call418 = tail call i32 @Perl_sv_unmagic(ptr noundef nonnull %70, i32 noundef 60) #8, !dbg !1598
  %75 = load i32, ptr %sv_flags384, align 4, !dbg !1600
  %and420 = and i32 %75, 255, !dbg !1600
  %cmp421.not = icmp eq i32 %and420, 13, !dbg !1602
  br i1 %cmp421.not, label %if.end426, label %if.then423, !dbg !1603

if.then423:                                       ; preds = %if.then417
  %call424 = tail call i32 @Perl_mg_free(ptr noundef nonnull %70) #8, !dbg !1604
  %.pre1281 = load i32, ptr %sv_flags384, align 4, !dbg !1605
  br label %if.end426, !dbg !1604

if.end426:                                        ; preds = %if.then417, %if.then423, %if.end413
  %76 = phi i32 [ %75, %if.then417 ], [ %.pre1281, %if.then423 ], [ %74, %if.end413 ], !dbg !1605
  %and428 = and i32 %76, 427886592, !dbg !1605
  %tobool429.not = icmp eq i32 %and428, 0, !dbg !1605
  br i1 %tobool429.not, label %if.end432, label %if.then430, !dbg !1607

if.then430:                                       ; preds = %if.end426
  tail call void @Perl_sv_force_normal_flags(ptr noundef nonnull %70, i32 noundef 5) #8, !dbg !1608
  %.pre1282 = load i32, ptr %sv_flags384, align 4, !dbg !1609
  br label %if.end432, !dbg !1608

if.end432:                                        ; preds = %if.end426, %if.then430, %if.then387
  %77 = phi i32 [ %76, %if.end426 ], [ %.pre1282, %if.then430 ], [ %72, %if.then387 ], !dbg !1609
  %trunc1040 = trunc i32 %77 to i8, !dbg !1610
  switch i8 %trunc1040, label %sw.default [
    i8 0, label %sw.epilog
    i8 11, label %sw.bb435
    i8 12, label %sw.bb436
    i8 13, label %sw.bb437
  ], !dbg !1610

sw.bb435:                                         ; preds = %if.end432
  tail call void @Perl_av_clear(ptr noundef nonnull %70) #8, !dbg !1611
  br label %sw.epilog, !dbg !1612

sw.bb436:                                         ; preds = %if.end432
  tail call void @Perl_hv_clear(ptr noundef nonnull %70) #8, !dbg !1613
  br label %sw.epilog, !dbg !1614

sw.bb437:                                         ; preds = %if.end432
  %78 = load ptr, ptr %70, align 8, !dbg !1615
  %xcv_flags = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 12, !dbg !1615
  %79 = load i32, ptr %xcv_flags, align 4, !dbg !1615
  %and439 = and i32 %79, 32768, !dbg !1615
  %tobool440.not = icmp eq i32 %and439, 0, !dbg !1615
  %xcv_gv_u.i1120 = getelementptr inbounds %struct.xpvcv, ptr %78, i64 0, i32 7, !dbg !1616
  br i1 %tobool440.not, label %S_CvGV.exit, label %cond.end447, !dbg !1615

S_CvGV.exit:                                      ; preds = %sw.bb437
  call void @llvm.dbg.value(metadata ptr %70, metadata !1617, metadata !DIExpression()) #8, !dbg !1622
  %80 = load ptr, ptr %xcv_gv_u.i1120, align 8, !dbg !1624
  %81 = load ptr, ptr %80, align 8, !dbg !1625
  %xiv_u446 = getelementptr inbounds %struct.xpvgv, ptr %81, i64 0, i32 4, !dbg !1625
  br label %cond.end447, !dbg !1615

cond.end447:                                      ; preds = %sw.bb437, %S_CvGV.exit
  %cond448.in = phi ptr [ %xiv_u446, %S_CvGV.exit ], [ %xcv_gv_u.i1120, %sw.bb437 ]
  %cond448 = load ptr, ptr %cond448.in, align 8, !dbg !1615
  call void @llvm.dbg.value(metadata ptr %cond448, metadata !1184, metadata !DIExpression()), !dbg !1616
  %add.ptr449 = getelementptr inbounds i8, ptr %cond448, i64 -24, !dbg !1626
  %he_valu = getelementptr inbounds %struct.he, ptr %add.ptr449, i64 0, i32 2, !dbg !1626
  %82 = load i64, ptr %he_valu, align 8, !dbg !1626
  %inc450 = add i64 %82, 1, !dbg !1626
  store i64 %inc450, ptr %he_valu, align 8, !dbg !1626
  tail call void @Perl_cv_undef(ptr noundef nonnull %70) #8, !dbg !1627
  %.val1044 = load ptr, ptr %70, align 8, !dbg !1628
  call void @llvm.dbg.value(metadata ptr undef, metadata !1629, metadata !DIExpression()), !dbg !1634
  %xcv_flags.i1122 = getelementptr inbounds %struct.xpvcv, ptr %.val1044, i64 0, i32 12, !dbg !1636
  %83 = load i32, ptr %xcv_flags.i1122, align 4, !dbg !1636
  %and.i1123 = and i32 %83, 32768, !dbg !1636
  %tobool.not.i1124 = icmp eq i32 %and.i1123, 0, !dbg !1636
  br i1 %tobool.not.i1124, label %cond.end456, label %CvNAME_HEK.exit1128, !dbg !1636

CvNAME_HEK.exit1128:                              ; preds = %cond.end447
  %xcv_gv_u.i1125 = getelementptr inbounds %struct.xpvcv, ptr %.val1044, i64 0, i32 7, !dbg !1637
  %84 = load ptr, ptr %xcv_gv_u.i1125, align 8, !dbg !1638
  %tobool452.not = icmp eq ptr %84, null, !dbg !1628
  br i1 %tobool452.not, label %cond.end456, label %cond.true453, !dbg !1628

cond.true453:                                     ; preds = %CvNAME_HEK.exit1128
  tail call void @Perl_unshare_hek(ptr noundef nonnull %84) #8, !dbg !1628
  %.pre1283 = load ptr, ptr %70, align 8, !dbg !1628
  br label %cond.end456, !dbg !1628

cond.end456:                                      ; preds = %cond.end447, %CvNAME_HEK.exit1128, %cond.true453
  %85 = phi ptr [ %.val1044, %cond.end447 ], [ %.val1044, %CvNAME_HEK.exit1128 ], [ %.pre1283, %cond.true453 ], !dbg !1628
  %xcv_gv_u458 = getelementptr inbounds %struct.xpvcv, ptr %85, i64 0, i32 7, !dbg !1628
  store ptr %cond448, ptr %xcv_gv_u458, align 8, !dbg !1628
  %86 = load ptr, ptr %70, align 8, !dbg !1628
  %xcv_flags460 = getelementptr inbounds %struct.xpvcv, ptr %86, i64 0, i32 12, !dbg !1628
  %87 = load i32, ptr %xcv_flags460, align 4, !dbg !1628
  %or = or i32 %87, 32768, !dbg !1628
  store i32 %or, ptr %xcv_flags460, align 4, !dbg !1628
  %88 = load ptr, ptr %70, align 8, !dbg !1639
  %xcv_flags462 = getelementptr inbounds %struct.xpvcv, ptr %88, i64 0, i32 12, !dbg !1639
  %89 = load i32, ptr %xcv_flags462, align 4, !dbg !1639
  %or463 = or i32 %89, 65536, !dbg !1639
  store i32 %or463, ptr %xcv_flags462, align 4, !dbg !1639
  br label %sw.epilog

sw.default:                                       ; preds = %if.end432
  %and465 = and i32 %77, 1610547455, !dbg !1640
  store i32 %and465, ptr %sv_flags384, align 4, !dbg !1640
  br label %sw.epilog, !dbg !1641

sw.epilog:                                        ; preds = %sw.default, %cond.end456, %sw.bb436, %sw.bb435, %if.end432
  %90 = load i32, ptr %sv_flags384, align 4, !dbg !1642
  %and467 = and i32 %90, -393217, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %70, metadata !1643, metadata !DIExpression()), !dbg !1648
  br label %for.inc, !dbg !1650

if.else469:                                       ; preds = %for.body
  %trunc = trunc i32 %72 to i8, !dbg !1651
  switch i8 %trunc, label %sw.default510 [
    i8 11, label %sw.bb472
    i8 12, label %sw.bb474
    i8 13, label %sw.bb476
  ], !dbg !1651

sw.bb472:                                         ; preds = %if.else469
  %call473 = tail call ptr @Perl_newSV_type(i32 noundef 11) #8, !dbg !1652
  store ptr %call473, ptr %svp.41265, align 8, !dbg !1653
  br label %sw.epilog512, !dbg !1654

sw.bb474:                                         ; preds = %if.else469
  %call475 = tail call ptr @Perl_newSV_type(i32 noundef 12) #8, !dbg !1655
  store ptr %call475, ptr %svp.41265, align 8, !dbg !1656
  br label %sw.epilog512, !dbg !1657

sw.bb476:                                         ; preds = %if.else469
  %91 = load ptr, ptr %70, align 8, !dbg !1658
  %xcv_flags479 = getelementptr inbounds %struct.xpvcv, ptr %91, i64 0, i32 12, !dbg !1658
  %92 = load i32, ptr %xcv_flags479, align 4, !dbg !1658
  %and480 = and i32 %92, 32768, !dbg !1658
  %tobool481.not = icmp eq i32 %and480, 0, !dbg !1658
  %xcv_gv_u.i1141 = getelementptr inbounds %struct.xpvcv, ptr %91, i64 0, i32 7, !dbg !1659
  br i1 %tobool481.not, label %S_CvGV.exit1144, label %cond.end488, !dbg !1658

S_CvGV.exit1144:                                  ; preds = %sw.bb476
  call void @llvm.dbg.value(metadata ptr %70, metadata !1617, metadata !DIExpression()) #8, !dbg !1660
  %93 = load ptr, ptr %xcv_gv_u.i1141, align 8, !dbg !1662
  %94 = load ptr, ptr %93, align 8, !dbg !1663
  %xiv_u487 = getelementptr inbounds %struct.xpvgv, ptr %94, i64 0, i32 4, !dbg !1663
  br label %cond.end488, !dbg !1658

cond.end488:                                      ; preds = %sw.bb476, %S_CvGV.exit1144
  %cond489.in = phi ptr [ %xiv_u487, %S_CvGV.exit1144 ], [ %xcv_gv_u.i1141, %sw.bb476 ]
  %cond489 = load ptr, ptr %cond489.in, align 8, !dbg !1658
  call void @llvm.dbg.value(metadata ptr %cond489, metadata !1192, metadata !DIExpression()), !dbg !1659
  %call490 = tail call ptr @Perl_newSV_type(i32 noundef 13) #8, !dbg !1664
  store ptr %call490, ptr %svp.41265, align 8, !dbg !1665
  %call490.val = load ptr, ptr %call490, align 8, !dbg !1666
  call void @llvm.dbg.value(metadata ptr undef, metadata !1629, metadata !DIExpression()), !dbg !1667
  %xcv_flags.i1145 = getelementptr inbounds %struct.xpvcv, ptr %call490.val, i64 0, i32 12, !dbg !1669
  %95 = load i32, ptr %xcv_flags.i1145, align 4, !dbg !1669
  %and.i1146 = and i32 %95, 32768, !dbg !1669
  %tobool.not.i1147 = icmp eq i32 %and.i1146, 0, !dbg !1669
  br i1 %tobool.not.i1147, label %cond.end497, label %CvNAME_HEK.exit1151, !dbg !1669

CvNAME_HEK.exit1151:                              ; preds = %cond.end488
  %xcv_gv_u.i1148 = getelementptr inbounds %struct.xpvcv, ptr %call490.val, i64 0, i32 7, !dbg !1670
  %96 = load ptr, ptr %xcv_gv_u.i1148, align 8, !dbg !1671
  %tobool492.not = icmp eq ptr %96, null, !dbg !1666
  br i1 %tobool492.not, label %cond.end497, label %cond.true493, !dbg !1666

cond.true493:                                     ; preds = %CvNAME_HEK.exit1151
  tail call void @Perl_unshare_hek(ptr noundef nonnull %96) #8, !dbg !1666
  br label %cond.end497, !dbg !1666

cond.end497:                                      ; preds = %cond.end488, %CvNAME_HEK.exit1151, %cond.true493
  %add.ptr498 = getelementptr inbounds i8, ptr %cond489, i64 -24, !dbg !1666
  %he_valu500 = getelementptr inbounds %struct.he, ptr %add.ptr498, i64 0, i32 2, !dbg !1666
  %97 = load i64, ptr %he_valu500, align 8, !dbg !1666
  %inc501 = add i64 %97, 1, !dbg !1666
  store i64 %inc501, ptr %he_valu500, align 8, !dbg !1666
  %98 = load ptr, ptr %svp.41265, align 8, !dbg !1666
  %99 = load ptr, ptr %98, align 8, !dbg !1666
  %xcv_gv_u503 = getelementptr inbounds %struct.xpvcv, ptr %99, i64 0, i32 7, !dbg !1666
  store ptr %cond489, ptr %xcv_gv_u503, align 8, !dbg !1666
  %100 = load ptr, ptr %svp.41265, align 8, !dbg !1666
  %101 = load ptr, ptr %100, align 8, !dbg !1666
  %xcv_flags505 = getelementptr inbounds %struct.xpvcv, ptr %101, i64 0, i32 12, !dbg !1666
  %102 = load i32, ptr %xcv_flags505, align 4, !dbg !1666
  %or506 = or i32 %102, 32768, !dbg !1666
  store i32 %or506, ptr %xcv_flags505, align 4, !dbg !1666
  %103 = load ptr, ptr %svp.41265, align 8, !dbg !1672
  %104 = load ptr, ptr %103, align 8, !dbg !1672
  %xcv_flags508 = getelementptr inbounds %struct.xpvcv, ptr %104, i64 0, i32 12, !dbg !1672
  %105 = load i32, ptr %xcv_flags508, align 4, !dbg !1672
  %or509 = or i32 %105, 65536, !dbg !1672
  store i32 %or509, ptr %xcv_flags508, align 4, !dbg !1672
  br label %sw.epilog512

sw.default510:                                    ; preds = %if.else469
  %call511 = tail call ptr @Perl_newSV(i64 noundef 0) #8, !dbg !1673
  store ptr %call511, ptr %svp.41265, align 8, !dbg !1674
  br label %sw.epilog512, !dbg !1675

sw.epilog512:                                     ; preds = %sw.default510, %cond.end497, %sw.bb474, %sw.bb472
  call void @llvm.dbg.value(metadata ptr %70, metadata !1314, metadata !DIExpression()) #8, !dbg !1676
  %106 = load i32, ptr %sv_refcnt, align 8, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %106, metadata !1317, metadata !DIExpression()) #8, !dbg !1676
  %cmp.i1153 = icmp ugt i32 %106, 1, !dbg !1679
  br i1 %cmp.i1153, label %if.then.i1155, label %if.else.i1156, !dbg !1680

if.then.i1155:                                    ; preds = %sw.epilog512
  %sub.i1154 = add i32 %106, -1, !dbg !1681
  store i32 %sub.i1154, ptr %sv_refcnt, align 8, !dbg !1682
  br label %S_SvREFCNT_dec_NN.exit1157, !dbg !1683

if.else.i1156:                                    ; preds = %sw.epilog512
  tail call void @Perl_sv_free2(ptr noundef nonnull %70, i32 noundef %106) #8, !dbg !1684
  br label %S_SvREFCNT_dec_NN.exit1157

S_SvREFCNT_dec_NN.exit1157:                       ; preds = %if.then.i1155, %if.else.i1156
  %107 = load ptr, ptr %svp.41265, align 8, !dbg !1685
  %sv_flags513 = getelementptr inbounds %struct.sv, ptr %107, i64 0, i32 2, !dbg !1685
  %108 = load i32, ptr %sv_flags513, align 4, !dbg !1686
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %S_SvREFCNT_dec_NN.exit1157
  %and467.sink = phi i32 [ %and467, %sw.epilog ], [ %108, %S_SvREFCNT_dec_NN.exit1157 ]
  %sv_flags384.sink = phi ptr [ %sv_flags384, %sw.epilog ], [ %sv_flags513, %S_SvREFCNT_dec_NN.exit1157 ]
  %or.i = or i32 %and467.sink, 262144, !dbg !1575
  store i32 %or.i, ptr %sv_flags384.sink, align 4, !dbg !1575
  %dec = add nsw i32 %i.11268, -1, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %dec, metadata !1156, metadata !DIExpression()), !dbg !1227
  %incdec.ptr516 = getelementptr inbounds ptr, ptr %svp.41265, i64 -1, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %incdec.ptr516, metadata !1165, metadata !DIExpression()), !dbg !1235
  %tobool380.not = icmp eq i32 %dec, 0, !dbg !1566
  br i1 %tobool380.not, label %sw.epilog742, label %for.body, !dbg !1566, !llvm.loop !1689

sw.bb517:                                         ; preds = %if.end25
  %109 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1693
  %arg1.sroa.0.0.extract.trunc915 = trunc i64 %109 to i32, !dbg !1693
  %call518 = tail call ptr @Perl_hv_common_key_len(ptr noundef %arg0.sroa.0.1, ptr noundef %arg2.sroa.0.2, i32 noundef %arg1.sroa.0.0.extract.trunc915, i32 noundef 68, ptr noundef null, i32 noundef 0) #8, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1284, metadata !DIExpression()) #8, !dbg !1694
  %cmp.not.i1158 = icmp eq ptr %arg0.sroa.0.1, null, !dbg !1696
  br i1 %cmp.not.i1158, label %S_SvREFCNT_dec.exit1165, label %if.then.i1161, !dbg !1697

if.then.i1161:                                    ; preds = %sw.bb517
  %sv_refcnt.i1159 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 1, !dbg !1698
  %110 = load i32, ptr %sv_refcnt.i1159, align 8, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %110, metadata !1290, metadata !DIExpression()) #8, !dbg !1699
  %cmp1.i1160 = icmp ugt i32 %110, 1, !dbg !1700
  br i1 %cmp1.i1160, label %if.then4.i1163, label %if.else.i1164, !dbg !1701

if.then4.i1163:                                   ; preds = %if.then.i1161
  %sub.i1162 = add i32 %110, -1, !dbg !1702
  store i32 %sub.i1162, ptr %sv_refcnt.i1159, align 8, !dbg !1703
  br label %S_SvREFCNT_dec.exit1165, !dbg !1704

if.else.i1164:                                    ; preds = %if.then.i1161
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %110) #8, !dbg !1705
  br label %S_SvREFCNT_dec.exit1165

S_SvREFCNT_dec.exit1165:                          ; preds = %sw.bb517, %if.then4.i1163, %if.else.i1164
  tail call void @Perl_safesysfree(ptr noundef %arg2.sroa.0.2) #8, !dbg !1706
  br label %sw.epilog742, !dbg !1707

sw.bb519:                                         ; preds = %if.end25
  %111 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1708
  %call520 = tail call ptr @Perl_av_delete(ptr noundef %arg0.sroa.0.1, i64 noundef %111, i32 noundef 4) #8, !dbg !1708
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1284, metadata !DIExpression()) #8, !dbg !1709
  %cmp.not.i1166 = icmp eq ptr %arg0.sroa.0.1, null, !dbg !1711
  br i1 %cmp.not.i1166, label %sw.epilog742, label %if.then.i1169, !dbg !1712

if.then.i1169:                                    ; preds = %sw.bb519
  %sv_refcnt.i1167 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 1, !dbg !1713
  %112 = load i32, ptr %sv_refcnt.i1167, align 8, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %112, metadata !1290, metadata !DIExpression()) #8, !dbg !1714
  %cmp1.i1168 = icmp ugt i32 %112, 1, !dbg !1715
  br i1 %cmp1.i1168, label %if.then4.i1171, label %if.else.i1172, !dbg !1716

if.then4.i1171:                                   ; preds = %if.then.i1169
  %sub.i1170 = add i32 %112, -1, !dbg !1717
  store i32 %sub.i1170, ptr %sv_refcnt.i1167, align 8, !dbg !1718
  br label %sw.epilog742, !dbg !1719

if.else.i1172:                                    ; preds = %if.then.i1169
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %112) #8, !dbg !1720
  br label %sw.epilog742

sw.bb521:                                         ; preds = %if.end25
  tail call void %arg1.sroa.0.2(ptr noundef %arg0.sroa.0.1) #8, !dbg !1721
  br label %sw.epilog742, !dbg !1722

sw.bb522:                                         ; preds = %if.end25, %if.end25
  %shr523 = lshr i64 %4, 6, !dbg !1723
  %113 = trunc i64 %shr523 to i32, !dbg !1724
  %conv526 = sub i32 %ix.0, %113, !dbg !1724
  store i32 %conv526, ptr @PL_savestack_ix, align 4, !dbg !1724
  br label %sw.epilog742, !dbg !1725

sw.bb527:                                         ; preds = %if.end25
  %114 = load ptr, ptr @PL_stack_base, align 8, !dbg !1726
  %115 = ptrtoint ptr %arg0.sroa.0.1 to i64, !dbg !1727
  %sext = shl i64 %115, 32, !dbg !1728
  %idx.ext528 = ashr exact i64 %sext, 32, !dbg !1728
  %add.ptr529 = getelementptr inbounds ptr, ptr %114, i64 %idx.ext528, !dbg !1728
  store ptr %add.ptr529, ptr @PL_stack_sp, align 8, !dbg !1729
  br label %sw.epilog742, !dbg !1730

sw.bb530:                                         ; preds = %if.end25
  %116 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1731
  %call531 = tail call ptr @Perl_av_fetch(ptr noundef %arg2.sroa.0.2, i64 noundef %116, i32 noundef 1) #8, !dbg !1731
  call void @llvm.dbg.value(metadata ptr %call531, metadata !1165, metadata !DIExpression()), !dbg !1235
  %sv_flags532 = getelementptr inbounds %struct.av, ptr %arg2.sroa.0.2, i64 0, i32 2, !dbg !1732
  %117 = load i32, ptr %sv_flags532, align 4, !dbg !1732
  %118 = and i32 %117, -1073741824, !dbg !1732
  %119 = icmp ne i32 %118, -2147483648, !dbg !1732
  %cmp.not.i1174 = icmp eq ptr %arg0.sroa.0.1, null
  %or.cond1259 = select i1 %119, i1 true, i1 %cmp.not.i1174, !dbg !1732
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1284, metadata !DIExpression()) #8, !dbg !1734
  br i1 %or.cond1259, label %if.end542, label %if.then.i1177, !dbg !1732

if.then.i1177:                                    ; preds = %sw.bb530
  %sv_refcnt.i1175 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 1, !dbg !1736
  %120 = load i32, ptr %sv_refcnt.i1175, align 8, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %120, metadata !1290, metadata !DIExpression()) #8, !dbg !1737
  %cmp1.i1176 = icmp ugt i32 %120, 1, !dbg !1738
  br i1 %cmp1.i1176, label %if.then4.i1179, label %if.else.i1180, !dbg !1739

if.then4.i1179:                                   ; preds = %if.then.i1177
  %sub.i1178 = add i32 %120, -1, !dbg !1740
  store i32 %sub.i1178, ptr %sv_refcnt.i1175, align 8, !dbg !1741
  br label %if.end542, !dbg !1742

if.else.i1180:                                    ; preds = %if.then.i1177
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %120) #8, !dbg !1743
  br label %if.end542

if.end542:                                        ; preds = %if.else.i1180, %if.then4.i1179, %sw.bb530
  %tobool543.not = icmp eq ptr %call531, null, !dbg !1744
  br i1 %tobool543.not, label %if.then.i1185, label %if.then546, !dbg !1745

if.then546:                                       ; preds = %if.end542
  %121 = load ptr, ptr %call531, align 8, !dbg !1746
  call void @llvm.dbg.value(metadata ptr %121, metadata !1197, metadata !DIExpression()), !dbg !1747
  %tobool548 = icmp ne ptr %121, null, !dbg !1748
  %cmp550 = icmp ne ptr %121, @PL_sv_undef, !dbg !1748
  %or.cond = and i1 %tobool548, %cmp550, !dbg !1748
  br i1 %or.cond, label %if.then554, label %if.then.i1185, !dbg !1748

if.then554:                                       ; preds = %if.then546
  %sv_flags555 = getelementptr inbounds %struct.sv, ptr %arg2.sroa.0.2, i64 0, i32 2, !dbg !1750
  %122 = load i32, ptr %sv_flags555, align 4, !dbg !1750
  %and556 = and i32 %122, 8388608, !dbg !1750
  %tobool557.not = icmp eq i32 %and556, 0, !dbg !1750
  br i1 %tobool557.not, label %restore_sv, label %cond.true558, !dbg !1753

cond.true558:                                     ; preds = %if.then554
  %call559 = tail call ptr @Perl_mg_find(ptr noundef nonnull %arg2.sroa.0.2, i32 noundef 80) #8, !dbg !1750
  %tobool560.not = icmp eq ptr %call559, null, !dbg !1750
  br i1 %tobool560.not, label %restore_sv, label %if.then564, !dbg !1750

if.then564:                                       ; preds = %cond.true558
  %sv_refcnt565 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 1, !dbg !1754
  %123 = load i32, ptr %sv_refcnt565, align 8, !dbg !1754
  %inc566 = add i32 %123, 1, !dbg !1754
  store i32 %inc566, ptr %sv_refcnt565, align 8, !dbg !1754
  br label %restore_sv, !dbg !1754

if.then.i1185:                                    ; preds = %if.end542, %if.then546
  call void @llvm.dbg.value(metadata ptr undef, metadata !1164, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %arg2.sroa.0.2, metadata !1284, metadata !DIExpression()) #8, !dbg !1755
  %sv_refcnt.i1183 = getelementptr inbounds %struct.sv, ptr %arg2.sroa.0.2, i64 0, i32 1, !dbg !1757
  %124 = load i32, ptr %sv_refcnt.i1183, align 8, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %124, metadata !1290, metadata !DIExpression()) #8, !dbg !1758
  %cmp1.i1184 = icmp ugt i32 %124, 1, !dbg !1759
  br i1 %cmp1.i1184, label %if.then4.i1187, label %if.else.i1188, !dbg !1760

if.then4.i1187:                                   ; preds = %if.then.i1185
  %sub.i1186 = add i32 %124, -1, !dbg !1761
  store i32 %sub.i1186, ptr %sv_refcnt.i1183, align 8, !dbg !1762
  br label %S_SvREFCNT_dec.exit1189, !dbg !1763

if.else.i1188:                                    ; preds = %if.then.i1185
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg2.sroa.0.2, i32 noundef %124) #8, !dbg !1764
  br label %S_SvREFCNT_dec.exit1189

S_SvREFCNT_dec.exit1189:                          ; preds = %if.then4.i1187, %if.else.i1188
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1284, metadata !DIExpression()) #8, !dbg !1765
  br i1 %cmp.not.i1174, label %sw.epilog742, label %if.then.i1193, !dbg !1767

if.then.i1193:                                    ; preds = %S_SvREFCNT_dec.exit1189
  %sv_refcnt.i1191 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 1, !dbg !1768
  %125 = load i32, ptr %sv_refcnt.i1191, align 8, !dbg !1768
  call void @llvm.dbg.value(metadata i32 %125, metadata !1290, metadata !DIExpression()) #8, !dbg !1769
  %cmp1.i1192 = icmp ugt i32 %125, 1, !dbg !1770
  br i1 %cmp1.i1192, label %if.then4.i1195, label %if.else.i1196, !dbg !1771

if.then4.i1195:                                   ; preds = %if.then.i1193
  %sub.i1194 = add i32 %125, -1, !dbg !1772
  store i32 %sub.i1194, ptr %sv_refcnt.i1191, align 8, !dbg !1773
  br label %sw.epilog742, !dbg !1774

if.else.i1196:                                    ; preds = %if.then.i1193
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %125) #8, !dbg !1775
  br label %sw.epilog742

sw.bb570:                                         ; preds = %if.end25
  %call571 = tail call ptr @Perl_hv_common(ptr noundef %arg2.sroa.0.2, ptr noundef %arg1.sroa.0.2, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef null, i32 noundef 0) #8, !dbg !1776
  call void @llvm.dbg.value(metadata ptr %call571, metadata !1200, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.2, metadata !1284, metadata !DIExpression()) #8, !dbg !1778
  %cmp.not.i1198 = icmp eq ptr %arg1.sroa.0.2, null, !dbg !1780
  br i1 %cmp.not.i1198, label %S_SvREFCNT_dec.exit1205, label %if.then.i1201, !dbg !1781

if.then.i1201:                                    ; preds = %sw.bb570
  %sv_refcnt.i1199 = getelementptr inbounds %struct.sv, ptr %arg1.sroa.0.2, i64 0, i32 1, !dbg !1782
  %126 = load i32, ptr %sv_refcnt.i1199, align 8, !dbg !1782
  call void @llvm.dbg.value(metadata i32 %126, metadata !1290, metadata !DIExpression()) #8, !dbg !1783
  %cmp1.i1200 = icmp ugt i32 %126, 1, !dbg !1784
  br i1 %cmp1.i1200, label %if.then4.i1203, label %if.else.i1204, !dbg !1785

if.then4.i1203:                                   ; preds = %if.then.i1201
  %sub.i1202 = add i32 %126, -1, !dbg !1786
  store i32 %sub.i1202, ptr %sv_refcnt.i1199, align 8, !dbg !1787
  br label %S_SvREFCNT_dec.exit1205, !dbg !1788

if.else.i1204:                                    ; preds = %if.then.i1201
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg1.sroa.0.2, i32 noundef %126) #8, !dbg !1789
  br label %S_SvREFCNT_dec.exit1205

S_SvREFCNT_dec.exit1205:                          ; preds = %sw.bb570, %if.then4.i1203, %if.else.i1204
  %tobool572.not = icmp eq ptr %call571, null, !dbg !1790
  br i1 %tobool572.not, label %if.end600, label %if.then575, !dbg !1791

if.then575:                                       ; preds = %S_SvREFCNT_dec.exit1205
  %he_valu576 = getelementptr inbounds %struct.he, ptr %call571, i64 0, i32 2, !dbg !1792
  %127 = load ptr, ptr %he_valu576, align 8, !dbg !1792
  call void @llvm.dbg.value(metadata ptr %127, metadata !1203, metadata !DIExpression()), !dbg !1793
  %tobool577 = icmp ne ptr %127, null, !dbg !1794
  %cmp579 = icmp ne ptr %127, @PL_sv_undef, !dbg !1794
  %or.cond747 = and i1 %tobool577, %cmp579, !dbg !1794
  br i1 %or.cond747, label %if.then583, label %if.end600, !dbg !1794

if.then583:                                       ; preds = %if.then575
  call void @llvm.dbg.value(metadata ptr %he_valu576, metadata !1165, metadata !DIExpression()), !dbg !1235
  %sv_flags585 = getelementptr inbounds %struct.sv, ptr %arg2.sroa.0.2, i64 0, i32 2, !dbg !1796
  %128 = load i32, ptr %sv_flags585, align 4, !dbg !1796
  %and586 = and i32 %128, 8388608, !dbg !1796
  %tobool587.not = icmp eq i32 %and586, 0, !dbg !1796
  br i1 %tobool587.not, label %restore_sv, label %cond.true588, !dbg !1799

cond.true588:                                     ; preds = %if.then583
  %call589 = tail call ptr @Perl_mg_find(ptr noundef nonnull %arg2.sroa.0.2, i32 noundef 80) #8, !dbg !1796
  %tobool590.not = icmp eq ptr %call589, null, !dbg !1796
  br i1 %tobool590.not, label %restore_sv, label %if.then594, !dbg !1796

if.then594:                                       ; preds = %cond.true588
  %129 = load ptr, ptr %he_valu576, align 8, !dbg !1800
  call void @llvm.dbg.value(metadata ptr %129, metadata !1801, metadata !DIExpression()), !dbg !1804
  %cmp.not.i1206 = icmp eq ptr %129, null, !dbg !1806
  br i1 %cmp.not.i1206, label %restore_sv.thread, label %if.then.i1208, !dbg !1808

restore_sv.thread:                                ; preds = %if.then594
  call void @llvm.dbg.value(metadata ptr %refsv.1.ph, metadata !1164, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %svp.1.ph, metadata !1165, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.label(metadata !1224), !dbg !1281
  call void @llvm.dbg.value(metadata ptr %.pr1284, metadata !1172, metadata !DIExpression()), !dbg !1282
  store ptr %arg0.sroa.0.1, ptr %he_valu576, align 8, !dbg !1283
  call void @llvm.dbg.value(metadata ptr %.pr1284, metadata !1284, metadata !DIExpression()) #8, !dbg !1293
  br label %S_SvREFCNT_dec.exit, !dbg !1296

if.then.i1208:                                    ; preds = %if.then594
  %sv_refcnt.i1207 = getelementptr inbounds %struct.sv, ptr %129, i64 0, i32 1, !dbg !1809
  %130 = load i32, ptr %sv_refcnt.i1207, align 8, !dbg !1810
  %inc.i = add i32 %130, 1, !dbg !1810
  store i32 %inc.i, ptr %sv_refcnt.i1207, align 8, !dbg !1810
  br label %restore_sv, !dbg !1809

if.end600:                                        ; preds = %if.then575, %S_SvREFCNT_dec.exit1205
  call void @llvm.dbg.value(metadata ptr undef, metadata !1164, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr undef, metadata !1165, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr %arg2.sroa.0.2, metadata !1284, metadata !DIExpression()) #8, !dbg !1811
  %cmp.not.i1209 = icmp eq ptr %arg2.sroa.0.2, null, !dbg !1813
  br i1 %cmp.not.i1209, label %S_SvREFCNT_dec.exit1216, label %if.then.i1212, !dbg !1814

if.then.i1212:                                    ; preds = %if.end600
  %sv_refcnt.i1210 = getelementptr inbounds %struct.sv, ptr %arg2.sroa.0.2, i64 0, i32 1, !dbg !1815
  %131 = load i32, ptr %sv_refcnt.i1210, align 8, !dbg !1815
  call void @llvm.dbg.value(metadata i32 %131, metadata !1290, metadata !DIExpression()) #8, !dbg !1816
  %cmp1.i1211 = icmp ugt i32 %131, 1, !dbg !1817
  br i1 %cmp1.i1211, label %if.then4.i1214, label %if.else.i1215, !dbg !1818

if.then4.i1214:                                   ; preds = %if.then.i1212
  %sub.i1213 = add i32 %131, -1, !dbg !1819
  store i32 %sub.i1213, ptr %sv_refcnt.i1210, align 8, !dbg !1820
  br label %S_SvREFCNT_dec.exit1216, !dbg !1821

if.else.i1215:                                    ; preds = %if.then.i1212
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg2.sroa.0.2, i32 noundef %131) #8, !dbg !1822
  br label %S_SvREFCNT_dec.exit1216

S_SvREFCNT_dec.exit1216:                          ; preds = %if.end600, %if.then4.i1214, %if.else.i1215
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1284, metadata !DIExpression()) #8, !dbg !1823
  %cmp.not.i1217 = icmp eq ptr %arg0.sroa.0.1, null, !dbg !1825
  br i1 %cmp.not.i1217, label %sw.epilog742, label %if.then.i1220, !dbg !1826

if.then.i1220:                                    ; preds = %S_SvREFCNT_dec.exit1216
  %sv_refcnt.i1218 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 1, !dbg !1827
  %132 = load i32, ptr %sv_refcnt.i1218, align 8, !dbg !1827
  call void @llvm.dbg.value(metadata i32 %132, metadata !1290, metadata !DIExpression()) #8, !dbg !1828
  %cmp1.i1219 = icmp ugt i32 %132, 1, !dbg !1829
  br i1 %cmp1.i1219, label %if.then4.i1222, label %if.else.i1223, !dbg !1830

if.then4.i1222:                                   ; preds = %if.then.i1220
  %sub.i1221 = add i32 %132, -1, !dbg !1831
  store i32 %sub.i1221, ptr %sv_refcnt.i1218, align 8, !dbg !1832
  br label %sw.epilog742, !dbg !1833

if.else.i1223:                                    ; preds = %if.then.i1220
  tail call void @Perl_sv_free2(ptr noundef nonnull %arg0.sroa.0.1, i32 noundef %132) #8, !dbg !1834
  br label %sw.epilog742

sw.bb603:                                         ; preds = %if.end25
  store ptr %arg0.sroa.0.1, ptr @PL_op, align 8, !dbg !1835
  br label %sw.epilog742, !dbg !1836

sw.bb604:                                         ; preds = %if.end25
  %133 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !dbg !1837
  %and605 = and i32 %133, 131072, !dbg !1838
  %tobool606.not = icmp eq i32 %and605, 0, !dbg !1838
  br i1 %tobool606.not, label %if.end621, label %while.cond608.preheader, !dbg !1839

while.cond608.preheader:                          ; preds = %sw.bb604
  %134 = load ptr, ptr @PL_hintgv, align 8, !dbg !1840
  %sv_u6091260 = getelementptr inbounds %struct.gv, ptr %134, i64 0, i32 3, !dbg !1840
  %135 = load ptr, ptr %sv_u6091260, align 8, !dbg !1840
  %gp_hv6111261 = getelementptr inbounds %struct.gp, ptr %135, i64 0, i32 5, !dbg !1840
  %136 = load ptr, ptr %gp_hv6111261, align 8, !dbg !1840
  %tobool612.not1262 = icmp eq ptr %136, null, !dbg !1841
  br i1 %tobool612.not1262, label %if.end621, label %if.then.i1228, !dbg !1841

if.then.i1228:                                    ; preds = %while.cond608.preheader, %S_SvREFCNT_dec.exit1232
  %137 = phi ptr [ %140, %S_SvREFCNT_dec.exit1232 ], [ %134, %while.cond608.preheader ]
  %138 = phi ptr [ %142, %S_SvREFCNT_dec.exit1232 ], [ %136, %while.cond608.preheader ]
  %gp_hv6111263 = phi ptr [ %gp_hv611, %S_SvREFCNT_dec.exit1232 ], [ %gp_hv6111261, %while.cond608.preheader ]
  call void @llvm.dbg.value(metadata ptr %138, metadata !1206, metadata !DIExpression()), !dbg !1842
  store ptr null, ptr %gp_hv6111263, align 8, !dbg !1843
  call void @llvm.dbg.value(metadata ptr %138, metadata !1284, metadata !DIExpression()) #8, !dbg !1844
  %sv_refcnt.i1226 = getelementptr inbounds %struct.sv, ptr %138, i64 0, i32 1, !dbg !1846
  %139 = load i32, ptr %sv_refcnt.i1226, align 8, !dbg !1846
  call void @llvm.dbg.value(metadata i32 %139, metadata !1290, metadata !DIExpression()) #8, !dbg !1847
  %cmp1.i1227 = icmp ugt i32 %139, 1, !dbg !1848
  br i1 %cmp1.i1227, label %if.then4.i1230, label %if.else.i1231, !dbg !1849

if.then4.i1230:                                   ; preds = %if.then.i1228
  %sub.i1229 = add i32 %139, -1, !dbg !1850
  store i32 %sub.i1229, ptr %sv_refcnt.i1226, align 8, !dbg !1851
  br label %S_SvREFCNT_dec.exit1232, !dbg !1852

if.else.i1231:                                    ; preds = %if.then.i1228
  tail call void @Perl_sv_free2(ptr noundef nonnull %138, i32 noundef %139) #8, !dbg !1853
  %.pre = load ptr, ptr @PL_hintgv, align 8, !dbg !1840
  br label %S_SvREFCNT_dec.exit1232

S_SvREFCNT_dec.exit1232:                          ; preds = %if.then4.i1230, %if.else.i1231
  %140 = phi ptr [ %137, %if.then4.i1230 ], [ %.pre, %if.else.i1231 ], !dbg !1840
  %sv_u609 = getelementptr inbounds %struct.gv, ptr %140, i64 0, i32 3, !dbg !1840
  %141 = load ptr, ptr %sv_u609, align 8, !dbg !1840
  %gp_hv611 = getelementptr inbounds %struct.gp, ptr %141, i64 0, i32 5, !dbg !1840
  %142 = load ptr, ptr %gp_hv611, align 8, !dbg !1840
  %tobool612.not = icmp eq ptr %142, null, !dbg !1841
  br i1 %tobool612.not, label %if.end621, label %if.then.i1228, !dbg !1841, !llvm.loop !1854

if.end621:                                        ; preds = %S_SvREFCNT_dec.exit1232, %while.cond608.preheader, %sw.bb604
  %143 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !dbg !1856
  tail call void @Perl_refcounted_he_free(ptr noundef %143) #8, !dbg !1856
  store ptr %arg0.sroa.0.1, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !dbg !1857
  %144 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1858
  %arg1.sroa.0.0.extract.trunc917 = trunc i64 %144 to i32, !dbg !1858
  store i32 %arg1.sroa.0.0.extract.trunc917, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !dbg !1859
  %and622 = and i32 %arg1.sroa.0.0.extract.trunc917, 131072, !dbg !1860
  %tobool623.not = icmp eq i32 %and622, 0, !dbg !1860
  %.pre1279 = load ptr, ptr @PL_hintgv, align 8, !dbg !1862
  br i1 %tobool623.not, label %if.end634, label %if.then624, !dbg !1863

if.then624:                                       ; preds = %if.end621
  %sv_u625 = getelementptr inbounds %struct.gv, ptr %.pre1279, i64 0, i32 3, !dbg !1864
  %145 = load ptr, ptr %sv_u625, align 8, !dbg !1864
  %gp_hv627 = getelementptr inbounds %struct.gp, ptr %145, i64 0, i32 5, !dbg !1864
  %146 = load ptr, ptr %gp_hv627, align 8, !dbg !1864
  call void @llvm.dbg.value(metadata ptr %146, metadata !1284, metadata !DIExpression()) #8, !dbg !1866
  %cmp.not.i1233 = icmp eq ptr %146, null, !dbg !1868
  br i1 %cmp.not.i1233, label %S_SvREFCNT_dec.exit1240, label %if.then.i1236, !dbg !1869

if.then.i1236:                                    ; preds = %if.then624
  %sv_refcnt.i1234 = getelementptr inbounds %struct.sv, ptr %146, i64 0, i32 1, !dbg !1870
  %147 = load i32, ptr %sv_refcnt.i1234, align 8, !dbg !1870
  call void @llvm.dbg.value(metadata i32 %147, metadata !1290, metadata !DIExpression()) #8, !dbg !1871
  %cmp1.i1235 = icmp ugt i32 %147, 1, !dbg !1872
  br i1 %cmp1.i1235, label %if.then4.i1238, label %if.else.i1239, !dbg !1873

if.then4.i1238:                                   ; preds = %if.then.i1236
  %sub.i1237 = add i32 %147, -1, !dbg !1874
  store i32 %sub.i1237, ptr %sv_refcnt.i1234, align 8, !dbg !1875
  br label %S_SvREFCNT_dec.exit1240, !dbg !1876

if.else.i1239:                                    ; preds = %if.then.i1236
  tail call void @Perl_sv_free2(ptr noundef nonnull %146, i32 noundef %147) #8, !dbg !1877
  %.pre1278 = load ptr, ptr @PL_hintgv, align 8, !dbg !1878
  br label %S_SvREFCNT_dec.exit1240

S_SvREFCNT_dec.exit1240:                          ; preds = %if.then624, %if.then4.i1238, %if.else.i1239
  %148 = phi ptr [ %.pre1279, %if.then624 ], [ %.pre1279, %if.then4.i1238 ], [ %.pre1278, %if.else.i1239 ], !dbg !1878
  %149 = load ptr, ptr @PL_savestack, align 8, !dbg !1879
  %150 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1879
  %dec628 = add nsw i32 %150, -1, !dbg !1879
  store i32 %dec628, ptr @PL_savestack_ix, align 4, !dbg !1879
  %idxprom629 = sext i32 %dec628 to i64, !dbg !1879
  %arrayidx630 = getelementptr inbounds %union.any, ptr %149, i64 %idxprom629, !dbg !1879
  %151 = load ptr, ptr %arrayidx630, align 8, !dbg !1879
  %sv_u631 = getelementptr inbounds %struct.gv, ptr %148, i64 0, i32 3, !dbg !1878
  %152 = load ptr, ptr %sv_u631, align 8, !dbg !1878
  %gp_hv633 = getelementptr inbounds %struct.gp, ptr %152, i64 0, i32 5, !dbg !1878
  store ptr %151, ptr %gp_hv633, align 8, !dbg !1880
  br label %if.end634, !dbg !1881

if.end634:                                        ; preds = %if.end621, %S_SvREFCNT_dec.exit1240
  %153 = phi ptr [ %148, %S_SvREFCNT_dec.exit1240 ], [ %.pre1279, %if.end621 ], !dbg !1882
  %sv_u635 = getelementptr inbounds %struct.gv, ptr %153, i64 0, i32 3, !dbg !1882
  %154 = load ptr, ptr %sv_u635, align 8, !dbg !1882
  %gp_hv637 = getelementptr inbounds %struct.gp, ptr %154, i64 0, i32 5, !dbg !1882
  %155 = load ptr, ptr %gp_hv637, align 8, !dbg !1882
  %tobool638.not = icmp eq ptr %155, null, !dbg !1882
  br i1 %tobool638.not, label %if.then639, label %sw.epilog742, !dbg !1883

if.then639:                                       ; preds = %if.end634
  %call641 = tail call ptr @Perl_newSV_type(i32 noundef 12) #8, !dbg !1884
  call void @llvm.dbg.value(metadata ptr %call641, metadata !1210, metadata !DIExpression()), !dbg !1885
  tail call void @Perl_sv_magic(ptr noundef %call641, ptr noundef null, i32 noundef 72, ptr noundef null, i32 noundef 0) #8, !dbg !1886
  %156 = load ptr, ptr @PL_hintgv, align 8, !dbg !1887
  %sv_u642 = getelementptr inbounds %struct.gv, ptr %156, i64 0, i32 3, !dbg !1887
  %157 = load ptr, ptr %sv_u642, align 8, !dbg !1887
  %gp_hv644 = getelementptr inbounds %struct.gp, ptr %157, i64 0, i32 5, !dbg !1887
  store ptr %call641, ptr %gp_hv644, align 8, !dbg !1888
  br label %sw.epilog742, !dbg !1889

sw.bb646:                                         ; preds = %if.end25
  store ptr %arg0.sroa.0.1, ptr @PL_comppad, align 8, !dbg !1890
  %tobool647.not = icmp eq ptr %arg0.sroa.0.1, null, !dbg !1891
  br i1 %tobool647.not, label %if.else652, label %if.then650, !dbg !1893

if.then650:                                       ; preds = %sw.bb646
  %sv_u651 = getelementptr inbounds %struct.av, ptr %arg0.sroa.0.1, i64 0, i32 3, !dbg !1894
  %158 = load ptr, ptr %sv_u651, align 8, !dbg !1894
  store ptr %158, ptr @PL_curpad, align 8, !dbg !1895
  br label %sw.epilog742, !dbg !1896

if.else652:                                       ; preds = %sw.bb646
  store ptr null, ptr @PL_curpad, align 8, !dbg !1897
  br label %sw.epilog742

sw.bb654:                                         ; preds = %if.end25
  %sv_u656 = getelementptr inbounds %struct.av, ptr %arg1.sroa.0.2, i64 0, i32 3, !dbg !1898
  %159 = load ptr, ptr %sv_u656, align 8, !dbg !1898
  %160 = ptrtoint ptr %arg0.sroa.0.1 to i64, !dbg !1899
  %add.ptr657 = getelementptr inbounds ptr, ptr %159, i64 %160, !dbg !1900
  call void @llvm.dbg.value(metadata ptr %add.ptr657, metadata !1213, metadata !DIExpression()), !dbg !1901
  %161 = load ptr, ptr %add.ptr657, align 8, !dbg !1902
  %call658 = tail call ptr @Perl_sv_2mortal(ptr noundef %161) #8, !dbg !1902
  store ptr %arg2.sroa.0.2, ptr %add.ptr657, align 8, !dbg !1903
  br label %sw.epilog742, !dbg !1904

sw.bb659:                                         ; preds = %if.end25
  %162 = load ptr, ptr @PL_stack_sp, align 8, !dbg !1905
  call void @llvm.dbg.value(metadata ptr %162, metadata !1215, metadata !DIExpression()), !dbg !1906
  %163 = load ptr, ptr @PL_stack_base, align 8, !dbg !1907
  %sub.ptr.lhs.cast660 = ptrtoint ptr %162 to i64, !dbg !1907
  %sub.ptr.rhs.cast661 = ptrtoint ptr %163 to i64, !dbg !1907
  %sub.ptr.sub662 = sub i64 %sub.ptr.lhs.cast660, %sub.ptr.rhs.cast661, !dbg !1907
  %sub.ptr.div663 = ashr exact i64 %sub.ptr.sub662, 3, !dbg !1907
  %164 = load ptr, ptr %arg0.sroa.0.1, align 8, !dbg !1907
  %xav_fill = getelementptr inbounds %struct.xpvav, ptr %164, i64 0, i32 2, !dbg !1907
  store i64 %sub.ptr.div663, ptr %xav_fill, align 8, !dbg !1907
  %sv_u665 = getelementptr inbounds %struct.av, ptr %arg1.sroa.0.2, i64 0, i32 3, !dbg !1907
  %165 = load ptr, ptr %sv_u665, align 8, !dbg !1907
  store ptr %165, ptr @PL_stack_base, align 8, !dbg !1907
  %166 = load ptr, ptr %arg1.sroa.0.2, align 8, !dbg !1907
  %xav_max = getelementptr inbounds %struct.xpvav, ptr %166, i64 0, i32 3, !dbg !1907
  %167 = load i64, ptr %xav_max, align 8, !dbg !1907
  %add.ptr667 = getelementptr inbounds ptr, ptr %165, i64 %167, !dbg !1907
  store ptr %add.ptr667, ptr @PL_stack_max, align 8, !dbg !1907
  %168 = load ptr, ptr %arg1.sroa.0.2, align 8, !dbg !1907
  %xav_fill669 = getelementptr inbounds %struct.xpvav, ptr %168, i64 0, i32 2, !dbg !1907
  %169 = load i64, ptr %xav_fill669, align 8, !dbg !1907
  %add.ptr670 = getelementptr inbounds ptr, ptr %165, i64 %169, !dbg !1907
  store ptr %add.ptr670, ptr @PL_stack_sp, align 8, !dbg !1907
  call void @llvm.dbg.value(metadata ptr %add.ptr670, metadata !1215, metadata !DIExpression()), !dbg !1906
  store ptr %arg1.sroa.0.2, ptr @PL_curstack, align 8, !dbg !1907
  %170 = load ptr, ptr @PL_curstackinfo, align 8, !dbg !1909
  store ptr %arg1.sroa.0.2, ptr %170, align 8, !dbg !1910
  br label %sw.epilog742, !dbg !1911

sw.bb671:                                         ; preds = %if.end25
  %171 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1912
  %arg1.sroa.0.0.extract.trunc919 = trunc i64 %171 to i32, !dbg !1912
  %neg = xor i32 %arg1.sroa.0.0.extract.trunc919, -1, !dbg !1913
  %sv_flags672 = getelementptr inbounds %struct.sv, ptr %arg2.sroa.0.2, i64 0, i32 2, !dbg !1914
  %172 = load i32, ptr %sv_flags672, align 4, !dbg !1915
  %and673 = and i32 %172, %neg, !dbg !1915
  %173 = ptrtoint ptr %arg0.sroa.0.1 to i64, !dbg !1916
  %arg0.sroa.0.0.extract.trunc986 = trunc i64 %173 to i32, !dbg !1916
  %or675 = or i32 %and673, %arg0.sroa.0.0.extract.trunc986, !dbg !1917
  store i32 %or675, ptr %sv_flags672, align 4, !dbg !1917
  br label %sw.epilog742, !dbg !1918

sw.bb676:                                         ; preds = %if.end25
  tail call void @Perl_sv_clear(ptr noundef %arg0.sroa.0.1) #8, !dbg !1919
  br label %sw.epilog742, !dbg !1920

sw.bb677:                                         ; preds = %if.end25
  %174 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1921
  store i64 %174, ptr %arg0.sroa.0.1, align 8, !dbg !1922
  br label %sw.epilog742, !dbg !1923

sw.bb678:                                         ; preds = %if.end25
  %175 = ptrtoint ptr %arg1.sroa.0.2 to i64, !dbg !1924
  store i64 %175, ptr %arg0.sroa.0.1, align 8, !dbg !1925
  br label %sw.epilog742, !dbg !1926

sw.bb679:                                         ; preds = %if.end25
  %shr680 = lshr i64 %4, 8, !dbg !1927
  %conv681 = trunc i64 %shr680 to i16, !dbg !1928
  store i16 %conv681, ptr %arg0.sroa.0.1, align 2, !dbg !1929
  br label %sw.epilog742, !dbg !1930

sw.bb682:                                         ; preds = %if.end25
  %shr683 = lshr i64 %4, 8, !dbg !1931
  %conv684 = trunc i64 %shr683 to i8, !dbg !1932
  store i8 %conv684, ptr %arg0.sroa.0.1, align 1, !dbg !1933
  br label %sw.epilog742, !dbg !1934

sw.bb685:                                         ; preds = %if.end25
  tail call void %arg1.sroa.0.2(ptr noundef %arg0.sroa.0.1) #8, !dbg !1935
  br label %sw.epilog742, !dbg !1936

sw.bb686:                                         ; preds = %if.end25
  %176 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !dbg !1937
  %magicptr = ptrtoint ptr %176 to i64, !dbg !1937
  switch i64 %magicptr, label %if.then695 [
    i64 16, label %if.end696
    i64 8, label %if.end696
    i64 0, label %if.end696
  ], !dbg !1937

if.then695:                                       ; preds = %sw.bb686
  tail call void @free(ptr noundef %176) #8, !dbg !1939
  br label %if.end696, !dbg !1939

if.end696:                                        ; preds = %sw.bb686, %sw.bb686, %sw.bb686, %if.then695
  store ptr %arg0.sroa.0.1, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 12), align 8, !dbg !1940
  br label %sw.epilog742, !dbg !1941

sw.bb697:                                         ; preds = %if.end25
  tail call void @Perl_parser_free(ptr noundef %arg0.sroa.0.1) #8, !dbg !1942
  br label %sw.epilog742, !dbg !1943

sw.bb698:                                         ; preds = %if.end25
  %sv_flags699 = getelementptr inbounds %struct.sv, ptr %arg0.sroa.0.1, i64 0, i32 2, !dbg !1944
  %177 = load i32, ptr %sv_flags699, align 4, !dbg !1944
  %and700 = and i32 %177, -134283265, !dbg !1944
  store i32 %and700, ptr %sv_flags699, align 4, !dbg !1944
  br label %sw.epilog742, !dbg !1945

sw.bb701:                                         ; preds = %if.end25
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1217, metadata !DIExpression()), !dbg !1946
  %gp_refcnt702 = getelementptr inbounds %struct.gp, ptr %arg0.sroa.0.1, i64 0, i32 4, !dbg !1947
  %178 = load i32, ptr %gp_refcnt702, align 4, !dbg !1947
  %cmp703 = icmp eq i32 %178, 1, !dbg !1948
  br i1 %cmp703, label %if.then705, label %if.else719, !dbg !1949

if.then705:                                       ; preds = %sw.bb701
  %call706 = tail call ptr @Perl_newSV_type(i32 noundef 9) #8, !dbg !1950
  %call707 = tail call ptr @Perl_sv_2mortal(ptr noundef %call706) #8, !dbg !1950
  call void @llvm.dbg.value(metadata ptr %call707, metadata !1220, metadata !DIExpression()), !dbg !1951
  %sv_flags709 = getelementptr inbounds %struct.gv, ptr %call707, i64 0, i32 2, !dbg !1952
  %179 = load i32, ptr %sv_flags709, align 4, !dbg !1952
  %or710 = or i32 %179, 32768, !dbg !1952
  store i32 %or710, ptr %sv_flags709, align 4, !dbg !1952
  %sv_u713 = getelementptr inbounds %struct.gv, ptr %call707, i64 0, i32 3, !dbg !1954
  store ptr %arg0.sroa.0.1, ptr %sv_u713, align 8, !dbg !1954
  tail call void @Perl_gp_free(ptr noundef %call707) #8, !dbg !1955
  %180 = load i32, ptr %sv_flags709, align 4, !dbg !1956
  %and716 = and i32 %180, -32769, !dbg !1956
  store i32 %and716, ptr %sv_flags709, align 4, !dbg !1956
  br label %sw.epilog742, !dbg !1958

if.else719:                                       ; preds = %sw.bb701
  %dec721 = add i32 %178, -1, !dbg !1959
  store i32 %dec721, ptr %gp_refcnt702, align 4, !dbg !1959
  %tobool723.not = icmp ult i64 %4, 256, !dbg !1961
  %gp_flags728 = getelementptr inbounds %struct.gp, ptr %arg0.sroa.0.1, i64 0, i32 9, !dbg !1963
  %bf.load729 = load i32, ptr %gp_flags728, align 8, !dbg !1963
  br i1 %tobool723.not, label %if.else727, label %if.then724, !dbg !1964

if.then724:                                       ; preds = %if.else719
  %bf.set = or i32 %bf.load729, -2147483648, !dbg !1965
  store i32 %bf.set, ptr %gp_flags728, align 8, !dbg !1965
  br label %sw.epilog742, !dbg !1966

if.else727:                                       ; preds = %if.else719
  %bf.clear735 = and i32 %bf.load729, 2147483647, !dbg !1967
  store i32 %bf.clear735, ptr %gp_flags728, align 8, !dbg !1967
  br label %sw.epilog742

sw.default740:                                    ; preds = %if.end25
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.4, i32 noundef %and) #8, !dbg !1968
  br label %sw.epilog742, !dbg !1969

sw.epilog742:                                     ; preds = %for.inc, %clearsv, %if.else.i1223, %if.then4.i1222, %S_SvREFCNT_dec.exit1216, %if.else.i1196, %if.then4.i1195, %S_SvREFCNT_dec.exit1189, %if.else.i1172, %if.then4.i1171, %sw.bb519, %if.else.i1114, %if.then4.i1113, %sw.bb362, %if.else.i1106, %if.then.i1105, %if.else.i1100, %if.then.i1099, %if.else.i1086, %if.then.i1085, %if.else.i1072, %if.then4.i1071, %S_SvREFCNT_dec.exit1065, %if.else.i1056, %if.then4.i1055, %S_SvREFCNT_dec_NN.exit, %sw.bb199, %if.then705, %if.else727, %if.then724, %if.then650, %if.else652, %if.end634, %if.then639, %sw.bb49, %if.then52, %sw.bb44, %if.then47, %if.then31, %sw.bb, %sw.default740, %sw.bb698, %sw.bb697, %if.end696, %sw.bb685, %sw.bb682, %sw.bb679, %sw.bb678, %sw.bb677, %sw.bb676, %sw.bb671, %sw.bb659, %sw.bb654, %sw.bb603, %sw.bb527, %sw.bb522, %sw.bb521, %S_SvREFCNT_dec.exit1165, %sw.bb368, %sw.bb367, %sw.bb365, %sw.bb364, %sw.bb363, %sw.bb220, %sw.bb219, %sw.bb218, %sw.bb217, %sw.bb216, %sw.bb213, %sw.bb198, %sw.bb197, %sw.bb195
  %was.1 = phi i8 [ %was.01275, %sw.default740 ], [ %was.01275, %sw.bb698 ], [ %was.01275, %sw.bb697 ], [ %was.01275, %if.end696 ], [ %was.01275, %sw.bb685 ], [ %was.01275, %sw.bb682 ], [ %was.01275, %sw.bb679 ], [ %was.01275, %sw.bb678 ], [ %was.01275, %sw.bb677 ], [ %was.01275, %sw.bb676 ], [ %was.01275, %sw.bb671 ], [ %was.01275, %sw.bb659 ], [ %was.01275, %sw.bb654 ], [ %was.01275, %if.then650 ], [ %was.01275, %if.else652 ], [ %was.01275, %if.end634 ], [ %was.01275, %if.then639 ], [ %was.01275, %sw.bb603 ], [ %was.01275, %sw.bb527 ], [ %was.01275, %sw.bb522 ], [ %was.01275, %sw.bb521 ], [ %was.01275, %S_SvREFCNT_dec.exit1165 ], [ %was.01275, %sw.bb368 ], [ %was.01275, %sw.bb367 ], [ %was.01275, %sw.bb365 ], [ %was.01275, %sw.bb364 ], [ %was.01275, %sw.bb363 ], [ %was.01275, %sw.bb220 ], [ %was.01275, %sw.bb219 ], [ %was.01275, %sw.bb218 ], [ %was.01275, %sw.bb217 ], [ %was.01275, %sw.bb216 ], [ %was.01275, %sw.bb213 ], [ %was.01275, %sw.bb198 ], [ %was.01275, %sw.bb197 ], [ %was.01275, %sw.bb195 ], [ %was.01275, %if.then52 ], [ %was.01275, %sw.bb49 ], [ %was.01275, %if.then47 ], [ %was.01275, %sw.bb44 ], [ %was.01275, %if.then31 ], [ %was.01275, %sw.bb ], [ %spec.select, %sw.bb199 ], [ %was.01275, %if.then724 ], [ %was.01275, %if.else727 ], [ %was.01275, %if.then705 ], [ %was.01275, %S_SvREFCNT_dec_NN.exit ], [ %was.01275, %if.then4.i1055 ], [ %was.01275, %if.else.i1056 ], [ %was.01275, %S_SvREFCNT_dec.exit1065 ], [ %was.01275, %if.then4.i1071 ], [ %was.01275, %if.else.i1072 ], [ %was.01275, %if.then.i1085 ], [ %was.01275, %if.else.i1086 ], [ %was.01275, %if.then.i1099 ], [ %was.01275, %if.else.i1100 ], [ %was.01275, %if.then.i1105 ], [ %was.01275, %if.else.i1106 ], [ %was.01275, %sw.bb362 ], [ %was.01275, %if.then4.i1113 ], [ %was.01275, %if.else.i1114 ], [ %was.01275, %sw.bb519 ], [ %was.01275, %if.then4.i1171 ], [ %was.01275, %if.else.i1172 ], [ %was.01275, %S_SvREFCNT_dec.exit1189 ], [ %was.01275, %if.then4.i1195 ], [ %was.01275, %if.else.i1196 ], [ %was.01275, %S_SvREFCNT_dec.exit1216 ], [ %was.01275, %if.then4.i1222 ], [ %was.01275, %if.else.i1223 ], [ %was.01275, %clearsv ], [ %was.01275, %for.inc ], !dbg !1227
  call void @llvm.dbg.value(metadata i8 %was.1, metadata !1155, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg0.sroa.0.1, metadata !1158, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg1.sroa.0.2, metadata !1159, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %arg2.sroa.0.2, metadata !1160, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr undef, metadata !1164, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata ptr undef, metadata !1165, metadata !DIExpression()), !dbg !1235
  %181 = load i32, ptr @PL_savestack_ix, align 4, !dbg !1236
  %cmp1 = icmp sgt i32 %181, %base, !dbg !1237
  br i1 %cmp1, label %while.body, label %while.end743, !dbg !1238, !llvm.loop !1970

while.end743:                                     ; preds = %sw.epilog742, %if.end
  %was.0.lcssa = phi i8 [ %0, %if.end ], [ %was.1, %sw.epilog742 ], !dbg !1972
  %182 = and i8 %was.0.lcssa, 1, !dbg !1973
  store i8 %182, ptr @PL_tainted, align 1, !dbg !1973
  ret void, !dbg !1974
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_markstack_grow() local_unnamed_addr #0 !dbg !1975 {
entry:
  %0 = load ptr, ptr @PL_markstack_max, align 8, !dbg !1981
  %1 = load ptr, ptr @PL_markstack, align 8, !dbg !1982
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64, !dbg !1983
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !1983
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1983
  %2 = lshr exact i64 %sub.ptr.sub, 2, !dbg !1983
  %conv = trunc i64 %2 to i32, !dbg !1981
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1979, metadata !DIExpression()), !dbg !1984
  %mul = mul nsw i32 %conv, 3, !dbg !1985
  %div = sdiv i32 %mul, 2, !dbg !1985
  call void @llvm.dbg.value(metadata i32 %div, metadata !1980, metadata !DIExpression()), !dbg !1984
  %conv1 = sext i32 %div to i64, !dbg !1986
  %mul2 = shl nsw i64 %conv1, 2, !dbg !1986
  %call = tail call ptr @Perl_safesysrealloc(ptr noundef %1, i64 noundef %mul2) #8, !dbg !1986
  store ptr %call, ptr @PL_markstack, align 8, !dbg !1986
  %add.ptr = getelementptr inbounds i32, ptr %call, i64 %conv1, !dbg !1987
  store ptr %add.ptr, ptr @PL_markstack_max, align 8, !dbg !1988
  %sext = shl i64 %sub.ptr.sub, 30, !dbg !1989
  %idx.ext3 = ashr i64 %sext, 32, !dbg !1989
  %add.ptr4 = getelementptr inbounds i32, ptr %call, i64 %idx.ext3, !dbg !1989
  store ptr %add.ptr4, ptr @PL_markstack_ptr, align 8, !dbg !1990
  ret ptr %add.ptr4, !dbg !1991
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_savestack_grow() local_unnamed_addr #0 !dbg !1992 {
entry:
  %0 = load i32, ptr @PL_savestack_max, align 4, !dbg !1993
  %mul = mul nsw i32 %0, 3, !dbg !1993
  %div = sdiv i32 %mul, 2, !dbg !1993
  %add = add nsw i32 %div, 4, !dbg !1994
  store i32 %add, ptr @PL_savestack_max, align 4, !dbg !1995
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !1996
  %conv = sext i32 %add to i64, !dbg !1996
  %mul1 = shl nsw i64 %conv, 3, !dbg !1996
  %call = tail call ptr @Perl_safesysrealloc(ptr noundef %1, i64 noundef %mul1) #8, !dbg !1996
  store ptr %call, ptr @PL_savestack, align 8, !dbg !1996
  ret void, !dbg !1997
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_savestack_grow_cnt(i32 noundef %need) local_unnamed_addr #0 !dbg !1998 {
entry:
  call void @llvm.dbg.value(metadata i32 %need, metadata !2000, metadata !DIExpression()), !dbg !2001
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2002
  %add = add nsw i32 %0, %need, !dbg !2003
  store i32 %add, ptr @PL_savestack_max, align 4, !dbg !2004
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2005
  %conv = sext i32 %add to i64, !dbg !2005
  %mul = shl nsw i64 %conv, 3, !dbg !2005
  %call = tail call ptr @Perl_safesysrealloc(ptr noundef %1, i64 noundef %mul) #8, !dbg !2005
  store ptr %call, ptr @PL_savestack, align 8, !dbg !2005
  ret void, !dbg !2006
}

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_tmps_grow_p(i64 noundef returned %ix) local_unnamed_addr #0 !dbg !2007 {
entry:
  call void @llvm.dbg.value(metadata i64 %ix, metadata !2011, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i64 %ix, metadata !2012, metadata !DIExpression()), !dbg !2013
  %0 = load i64, ptr @PL_tmps_max, align 8, !dbg !2014
  %sub = sub nsw i64 %ix, %0, !dbg !2016
  %cmp = icmp slt i64 %sub, 128, !dbg !2017
  br i1 %cmp, label %if.then, label %if.end, !dbg !2018

if.then:                                          ; preds = %entry
  %cmp1 = icmp slt i64 %0, 512, !dbg !2019
  %1 = select i1 %cmp1, i64 128, i64 512, !dbg !2020
  %add = add nsw i64 %1, %ix, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %add, metadata !2012, metadata !DIExpression()), !dbg !2013
  br label %if.end, !dbg !2022

if.end:                                           ; preds = %if.then, %entry
  %extend_to.0 = phi i64 [ %add, %if.then ], [ %ix, %entry ], !dbg !2013
  call void @llvm.dbg.value(metadata i64 %extend_to.0, metadata !2012, metadata !DIExpression()), !dbg !2013
  %add2 = add nsw i64 %extend_to.0, 1, !dbg !2023
  store i64 %add2, ptr @PL_tmps_max, align 8, !dbg !2024
  %2 = load ptr, ptr @PL_tmps_stack, align 8, !dbg !2025
  %mul = shl i64 %add2, 3, !dbg !2025
  %call = tail call ptr @Perl_safesysrealloc(ptr noundef %2, i64 noundef %mul) #8, !dbg !2025
  store ptr %call, ptr @PL_tmps_stack, align 8, !dbg !2025
  ret i64 %ix, !dbg !2026
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_free_tmps() local_unnamed_addr #0 !dbg !2027 {
entry:
  %0 = load i64, ptr @PL_tmps_floor, align 8, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %0, metadata !2029, metadata !DIExpression()), !dbg !2034
  %1 = load i64, ptr @PL_tmps_ix, align 8, !dbg !2035
  %cmp6 = icmp sgt i64 %1, %0, !dbg !2036
  br i1 %cmp6, label %while.body.preheader, label %while.end, !dbg !2037

while.body.preheader:                             ; preds = %entry
  %.pre7 = load ptr, ptr @PL_tmps_stack, align 8, !dbg !2038
  br label %while.body, !dbg !2037

while.body:                                       ; preds = %while.body.preheader, %if.end
  %2 = phi ptr [ %8, %if.end ], [ %.pre7, %while.body.preheader ], !dbg !2038
  %3 = phi i64 [ %7, %if.end ], [ %1, %while.body.preheader ]
  %dec = add nsw i64 %3, -1, !dbg !2039
  store i64 %dec, ptr @PL_tmps_ix, align 8, !dbg !2039
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %3, !dbg !2038
  %4 = load ptr, ptr %arrayidx, align 8, !dbg !2038
  call void @llvm.dbg.value(metadata ptr %4, metadata !2031, metadata !DIExpression()), !dbg !2040
  %tobool = icmp ne ptr %4, null, !dbg !2041
  %cmp1 = icmp ne ptr %4, @PL_sv_undef, !dbg !2041
  %or.cond = and i1 %tobool, %cmp1, !dbg !2041
  br i1 %or.cond, label %if.then, label %if.end, !dbg !2041

if.then:                                          ; preds = %while.body
  %sv_flags = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 2, !dbg !2043
  %5 = load i32, ptr %sv_flags, align 4, !dbg !2043
  %and = and i32 %5, -524289, !dbg !2043
  store i32 %and, ptr %sv_flags, align 4, !dbg !2043
  call void @llvm.dbg.value(metadata ptr %4, metadata !1314, metadata !DIExpression()) #8, !dbg !2045
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %4, i64 0, i32 1, !dbg !2047
  %6 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2047
  call void @llvm.dbg.value(metadata i32 %6, metadata !1317, metadata !DIExpression()) #8, !dbg !2045
  %cmp.i = icmp ugt i32 %6, 1, !dbg !2048
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !2049

if.then.i:                                        ; preds = %if.then
  %sub.i = add i32 %6, -1, !dbg !2050
  store i32 %sub.i, ptr %sv_refcnt.i, align 8, !dbg !2051
  br label %if.end, !dbg !2052

if.else.i:                                        ; preds = %if.then
  tail call void @Perl_sv_free2(ptr noundef nonnull %4, i32 noundef %6) #8, !dbg !2053
  %.pre = load ptr, ptr @PL_tmps_stack, align 8, !dbg !2038
  %.pre8 = load i64, ptr @PL_tmps_ix, align 8, !dbg !2035
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i, %while.body
  %7 = phi i64 [ %.pre8, %if.else.i ], [ %dec, %if.then.i ], [ %dec, %while.body ], !dbg !2035
  %8 = phi ptr [ %.pre, %if.else.i ], [ %2, %if.then.i ], [ %2, %while.body ]
  %cmp = icmp sgt i64 %7, %0, !dbg !2036
  br i1 %cmp, label %while.body, label %while.end, !dbg !2037, !llvm.loop !2054

while.end:                                        ; preds = %if.end, %entry
  ret void, !dbg !2056
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_pushptrptr(ptr noundef %ptr1, ptr noundef %ptr2, i32 noundef %type) local_unnamed_addr #0 !dbg !2057 {
entry:
  call void @llvm.dbg.value(metadata ptr %ptr1, metadata !2063, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata ptr %ptr2, metadata !2064, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %type, metadata !2065, metadata !DIExpression()), !dbg !2068
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2069
  call void @llvm.dbg.value(metadata i32 %0, metadata !2066, metadata !DIExpression()), !dbg !2068
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2069
  %idxprom = sext i32 %0 to i64, !dbg !2069
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2069
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2067, metadata !DIExpression()), !dbg !2068
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2070
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2067, metadata !DIExpression()), !dbg !2068
  store ptr %ptr1, ptr %arrayidx, align 8, !dbg !2070
  %incdec.ptr1 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !2071
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2067, metadata !DIExpression()), !dbg !2068
  store ptr %ptr2, ptr %incdec.ptr, align 8, !dbg !2071
  %conv = sext i32 %type to i64, !dbg !2072
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2068
  store i64 %conv, ptr %incdec.ptr1, align 8, !dbg !2072
  %add = add nsw i32 %0, 3, !dbg !2073
  call void @llvm.dbg.value(metadata i32 %add, metadata !2066, metadata !DIExpression()), !dbg !2068
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2073
  %add3 = add nsw i32 %0, 7, !dbg !2074
  %2 = load i32, ptr @PL_savestack_max, align 4, !dbg !2074
  %cmp = icmp sgt i32 %add3, %2, !dbg !2074
  br i1 %cmp, label %if.then, label %if.end, !dbg !2073

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %2, 3, !dbg !2076
  %div.i = sdiv i32 %mul.i, 2, !dbg !2076
  %add.i = add nsw i32 %div.i, 4, !dbg !2078
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2079
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !2080
  %conv.i = sext i32 %add.i to i64, !dbg !2080
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2080
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %3, i64 noundef %mul1.i) #8, !dbg !2080
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2080
  br label %if.end, !dbg !2074

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2081
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_save_scalar(ptr noundef %gv) local_unnamed_addr #0 !dbg !2082 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2086, metadata !DIExpression()), !dbg !2088
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2089
  %0 = load ptr, ptr %sv_u, align 8, !dbg !2089
  %1 = load ptr, ptr %0, align 8, !dbg !2089
  %tobool.not = icmp eq ptr %1, null, !dbg !2089
  br i1 %tobool.not, label %cond.false, label %cond.end, !dbg !2089

cond.false:                                       ; preds = %entry
  %call = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %gv, i32 noundef 0) #8, !dbg !2089
  %sv_u4 = getelementptr inbounds %struct.gv, ptr %call, i64 0, i32 3, !dbg !2089
  %2 = load ptr, ptr %sv_u4, align 8, !dbg !2089
  %.pre = load ptr, ptr %2, align 8, !dbg !2090
  br label %cond.end, !dbg !2089

cond.end:                                         ; preds = %entry, %cond.false
  %3 = phi ptr [ %.pre, %cond.false ], [ %1, %entry ], !dbg !2090
  %cond = phi ptr [ %2, %cond.false ], [ %0, %entry ], !dbg !2089
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2087, metadata !DIExpression()), !dbg !2088
  %sv_flags = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2, !dbg !2090
  %4 = load i32, ptr %sv_flags, align 4, !dbg !2090
  %and = and i32 %4, 2097152, !dbg !2090
  %tobool7.not = icmp eq i32 %and, 0, !dbg !2090
  br i1 %tobool7.not, label %S_SvREFCNT_inc.exit, label %if.then, !dbg !2092

if.then:                                          ; preds = %cond.end
  store i8 1, ptr @PL_localizing, align 1, !dbg !2093
  %5 = load ptr, ptr %cond, align 8, !dbg !2095
  %call10 = tail call i32 @Perl_mg_get(ptr noundef %5) #8, !dbg !2095
  store i8 0, ptr @PL_localizing, align 1, !dbg !2096
  br label %S_SvREFCNT_inc.exit, !dbg !2097

S_SvREFCNT_inc.exit:                              ; preds = %cond.end, %if.then
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2098, metadata !DIExpression()), !dbg !2103
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %gv, i64 0, i32 1, !dbg !2105
  %6 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2107
  %inc.i = add i32 %6, 1, !dbg !2107
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !2107
  %7 = load ptr, ptr %cond, align 8, !dbg !2108
  call void @llvm.dbg.value(metadata ptr %7, metadata !2098, metadata !DIExpression()), !dbg !2109
  %cmp.not.i20 = icmp eq ptr %7, null, !dbg !2111
  br i1 %cmp.not.i20, label %S_SvREFCNT_inc.exit24, label %if.then.i23, !dbg !2112

if.then.i23:                                      ; preds = %S_SvREFCNT_inc.exit
  %sv_refcnt.i21 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 1, !dbg !2113
  %8 = load i32, ptr %sv_refcnt.i21, align 8, !dbg !2114
  %inc.i22 = add i32 %8, 1, !dbg !2114
  store i32 %inc.i22, ptr %sv_refcnt.i21, align 8, !dbg !2114
  br label %S_SvREFCNT_inc.exit24, !dbg !2113

S_SvREFCNT_inc.exit24:                            ; preds = %S_SvREFCNT_inc.exit, %if.then.i23
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2063, metadata !DIExpression()) #8, !dbg !2115
  call void @llvm.dbg.value(metadata ptr %7, metadata !2064, metadata !DIExpression()) #8, !dbg !2115
  call void @llvm.dbg.value(metadata i32 43, metadata !2065, metadata !DIExpression()) #8, !dbg !2115
  %9 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %9, metadata !2066, metadata !DIExpression()) #8, !dbg !2115
  %10 = load ptr, ptr @PL_savestack, align 8, !dbg !2117
  %idxprom.i = sext i32 %9 to i64, !dbg !2117
  %arrayidx.i = getelementptr inbounds %union.any, ptr %10, i64 %idxprom.i, !dbg !2117
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2115
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2118
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2115
  store ptr %gv, ptr %arrayidx.i, align 8, !dbg !2118
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2119
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2115
  store ptr %7, ptr %incdec.ptr.i, align 8, !dbg !2119
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2115
  store i64 43, ptr %incdec.ptr1.i, align 8, !dbg !2120
  %add.i = add nsw i32 %9, 3, !dbg !2121
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2115
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2121
  %add3.i = add nsw i32 %9, 7, !dbg !2122
  %11 = load i32, ptr @PL_savestack_max, align 4, !dbg !2122
  %cmp.i = icmp sgt i32 %add3.i, %11, !dbg !2122
  br i1 %cmp.i, label %if.then.i25, label %Perl_save_pushptrptr.exit, !dbg !2121

if.then.i25:                                      ; preds = %S_SvREFCNT_inc.exit24
  %mul.i.i = mul nsw i32 %11, 3, !dbg !2123
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2123
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2125
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2126
  %12 = load ptr, ptr @PL_savestack, align 8, !dbg !2127
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2127
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2127
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %12, i64 noundef %mul1.i.i) #8, !dbg !2127
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2127
  br label %Perl_save_pushptrptr.exit, !dbg !2122

Perl_save_pushptrptr.exit:                        ; preds = %S_SvREFCNT_inc.exit24, %if.then.i25
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2128, metadata !DIExpression()) #8, !dbg !2136
  call void @llvm.dbg.value(metadata i32 1, metadata !2133, metadata !DIExpression()) #8, !dbg !2136
  %13 = load ptr, ptr %cond, align 8, !dbg !2138
  call void @llvm.dbg.value(metadata ptr %13, metadata !2134, metadata !DIExpression()) #8, !dbg !2136
  %call.i = tail call ptr @Perl_newSV(i64 noundef 0) #8, !dbg !2139
  store ptr %call.i, ptr %cond, align 8, !dbg !2140
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2135, metadata !DIExpression()) #8, !dbg !2136
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 2, !dbg !2141
  %14 = load i32, ptr %sv_flags.i, align 4, !dbg !2141
  %and1.i = and i32 %14, 255, !dbg !2141
  %cmp.i26 = icmp ugt i32 %and1.i, 6, !dbg !2143
  br i1 %cmp.i26, label %land.lhs.true.i, label %S_save_scalar_at.exit, !dbg !2144

land.lhs.true.i:                                  ; preds = %Perl_save_pushptrptr.exit
  %15 = load ptr, ptr %13, align 8, !dbg !2145
  %xmg_u.i = getelementptr inbounds %struct.xpvmg, ptr %15, i64 0, i32 1, !dbg !2145
  %16 = load ptr, ptr %xmg_u.i, align 8, !dbg !2145
  %tobool2.not.i = icmp eq ptr %16, null, !dbg !2145
  br i1 %tobool2.not.i, label %S_save_scalar_at.exit, label %if.then.i27, !dbg !2146

if.then.i27:                                      ; preds = %land.lhs.true.i
  %and4.i = and i32 %14, 2097152, !dbg !2147
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !2147
  br i1 %tobool5.not.i, label %if.end.i, label %if.then6.i, !dbg !2150

if.then6.i:                                       ; preds = %if.then.i27
  %and8.i = lshr i32 %14, 4, !dbg !2151
  %shr.i = and i32 %and8.i, 1792, !dbg !2151
  %or.i = or i32 %shr.i, %14, !dbg !2153
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !2153
  br label %if.end.i, !dbg !2154

if.end.i:                                         ; preds = %if.then6.i, %if.then.i27
  tail call void @Perl_mg_localize(ptr noundef nonnull %13, ptr noundef %call.i, i1 noundef zeroext true) #8, !dbg !2155
  br label %S_save_scalar_at.exit, !dbg !2155

S_save_scalar_at.exit:                            ; preds = %Perl_save_pushptrptr.exit, %land.lhs.true.i, %if.end.i
  ret ptr %call.i, !dbg !2157
}

declare !dbg !2158 ptr @Perl_gv_add_by_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !2161 i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_generic_svref(ptr noundef %sptr) local_unnamed_addr #0 !dbg !2164 {
entry:
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !2168, metadata !DIExpression()), !dbg !2169
  %0 = load ptr, ptr %sptr, align 8, !dbg !2170
  call void @llvm.dbg.value(metadata ptr %0, metadata !2098, metadata !DIExpression()), !dbg !2171
  %cmp.not.i = icmp eq ptr %0, null, !dbg !2173
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !2174

if.then.i:                                        ; preds = %entry
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1, !dbg !2175
  %1 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2176
  %inc.i = add i32 %1, 1, !dbg !2176
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !2176
  br label %S_SvREFCNT_inc.exit, !dbg !2175

S_SvREFCNT_inc.exit:                              ; preds = %entry, %if.then.i
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !2063, metadata !DIExpression()) #8, !dbg !2177
  call void @llvm.dbg.value(metadata ptr %0, metadata !2064, metadata !DIExpression()) #8, !dbg !2177
  call void @llvm.dbg.value(metadata i32 27, metadata !2065, metadata !DIExpression()) #8, !dbg !2177
  %2 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2179
  call void @llvm.dbg.value(metadata i32 %2, metadata !2066, metadata !DIExpression()) #8, !dbg !2177
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !2179
  %idxprom.i = sext i32 %2 to i64, !dbg !2179
  %arrayidx.i = getelementptr inbounds %union.any, ptr %3, i64 %idxprom.i, !dbg !2179
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2177
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2180
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2177
  store ptr %sptr, ptr %arrayidx.i, align 8, !dbg !2180
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2177
  store ptr %0, ptr %incdec.ptr.i, align 8, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2177
  store i64 27, ptr %incdec.ptr1.i, align 8, !dbg !2182
  %add.i = add nsw i32 %2, 3, !dbg !2183
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2177
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2183
  %add3.i = add nsw i32 %2, 7, !dbg !2184
  %4 = load i32, ptr @PL_savestack_max, align 4, !dbg !2184
  %cmp.i = icmp sgt i32 %add3.i, %4, !dbg !2184
  br i1 %cmp.i, label %if.then.i2, label %Perl_save_pushptrptr.exit, !dbg !2183

if.then.i2:                                       ; preds = %S_SvREFCNT_inc.exit
  %mul.i.i = mul nsw i32 %4, 3, !dbg !2185
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2185
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2187
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2188
  %5 = load ptr, ptr @PL_savestack, align 8, !dbg !2189
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2189
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2189
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %5, i64 noundef %mul1.i.i) #8, !dbg !2189
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2189
  br label %Perl_save_pushptrptr.exit, !dbg !2184

Perl_save_pushptrptr.exit:                        ; preds = %S_SvREFCNT_inc.exit, %if.then.i2
  ret void, !dbg !2190
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_generic_pvref(ptr noundef %str) local_unnamed_addr #0 !dbg !2191 {
entry:
  call void @llvm.dbg.value(metadata ptr %str, metadata !2195, metadata !DIExpression()), !dbg !2196
  %0 = load ptr, ptr %str, align 8, !dbg !2197
  call void @llvm.dbg.value(metadata ptr %0, metadata !2063, metadata !DIExpression()) #8, !dbg !2198
  call void @llvm.dbg.value(metadata ptr %str, metadata !2064, metadata !DIExpression()) #8, !dbg !2198
  call void @llvm.dbg.value(metadata i32 26, metadata !2065, metadata !DIExpression()) #8, !dbg !2198
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()) #8, !dbg !2198
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2200
  %idxprom.i = sext i32 %1 to i64, !dbg !2200
  %arrayidx.i = getelementptr inbounds %union.any, ptr %2, i64 %idxprom.i, !dbg !2200
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2198
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2201
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2198
  store ptr %0, ptr %arrayidx.i, align 8, !dbg !2201
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2202
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2198
  store ptr %str, ptr %incdec.ptr.i, align 8, !dbg !2202
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2198
  store i64 26, ptr %incdec.ptr1.i, align 8, !dbg !2203
  %add.i = add nsw i32 %1, 3, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2198
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2204
  %add3.i = add nsw i32 %1, 7, !dbg !2205
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2205
  %cmp.i = icmp sgt i32 %add3.i, %3, !dbg !2205
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2204

if.then.i:                                        ; preds = %entry
  %mul.i.i = mul nsw i32 %3, 3, !dbg !2206
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2206
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2208
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2209
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2210
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2210
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2210
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i.i) #8, !dbg !2210
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2210
  br label %Perl_save_pushptrptr.exit, !dbg !2205

Perl_save_pushptrptr.exit:                        ; preds = %entry, %if.then.i
  ret void, !dbg !2211
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_shared_pvref(ptr noundef %str) local_unnamed_addr #0 !dbg !2212 {
entry:
  call void @llvm.dbg.value(metadata ptr %str, metadata !2214, metadata !DIExpression()), !dbg !2215
  %0 = load ptr, ptr %str, align 8, !dbg !2216
  call void @llvm.dbg.value(metadata ptr %str, metadata !2063, metadata !DIExpression()) #8, !dbg !2217
  call void @llvm.dbg.value(metadata ptr %0, metadata !2064, metadata !DIExpression()) #8, !dbg !2217
  call void @llvm.dbg.value(metadata i32 40, metadata !2065, metadata !DIExpression()) #8, !dbg !2217
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()) #8, !dbg !2217
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2219
  %idxprom.i = sext i32 %1 to i64, !dbg !2219
  %arrayidx.i = getelementptr inbounds %union.any, ptr %2, i64 %idxprom.i, !dbg !2219
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2217
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2220
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2217
  store ptr %str, ptr %arrayidx.i, align 8, !dbg !2220
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2221
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2217
  store ptr %0, ptr %incdec.ptr.i, align 8, !dbg !2221
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2217
  store i64 40, ptr %incdec.ptr1.i, align 8, !dbg !2222
  %add.i = add nsw i32 %1, 3, !dbg !2223
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2217
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2223
  %add3.i = add nsw i32 %1, 7, !dbg !2224
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2224
  %cmp.i = icmp sgt i32 %add3.i, %3, !dbg !2224
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2223

if.then.i:                                        ; preds = %entry
  %mul.i.i = mul nsw i32 %3, 3, !dbg !2225
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2225
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2227
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2228
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2229
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2229
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2229
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i.i) #8, !dbg !2229
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2229
  br label %Perl_save_pushptrptr.exit, !dbg !2224

Perl_save_pushptrptr.exit:                        ; preds = %entry, %if.then.i
  ret void, !dbg !2230
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_set_svflags(ptr noundef %sv, i32 noundef %mask, i32 noundef %val) local_unnamed_addr #0 !dbg !2231 {
entry:
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2235, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %mask, metadata !2236, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 %val, metadata !2237, metadata !DIExpression()), !dbg !2240
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2241
  call void @llvm.dbg.value(metadata i32 %0, metadata !2238, metadata !DIExpression()), !dbg !2240
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2241
  %idxprom = sext i32 %0 to i64, !dbg !2241
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2241
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2239, metadata !DIExpression()), !dbg !2240
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2242
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2239, metadata !DIExpression()), !dbg !2240
  store ptr %sv, ptr %arrayidx, align 8, !dbg !2242
  %incdec.ptr1 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !2243
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2239, metadata !DIExpression()), !dbg !2240
  store i32 %mask, ptr %incdec.ptr, align 8, !dbg !2243
  %incdec.ptr2 = getelementptr inbounds %union.any, ptr %incdec.ptr1, i64 1, !dbg !2244
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2, metadata !2239, metadata !DIExpression()), !dbg !2240
  store i32 %val, ptr %incdec.ptr1, align 8, !dbg !2244
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2, metadata !2239, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2240
  store i64 50, ptr %incdec.ptr2, align 8, !dbg !2245
  %add = add nsw i32 %0, 4, !dbg !2246
  call void @llvm.dbg.value(metadata i32 %add, metadata !2238, metadata !DIExpression()), !dbg !2240
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2246
  %add4 = add nsw i32 %0, 8, !dbg !2247
  %2 = load i32, ptr @PL_savestack_max, align 4, !dbg !2247
  %cmp = icmp sgt i32 %add4, %2, !dbg !2247
  br i1 %cmp, label %if.then, label %if.end, !dbg !2246

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %2, 3, !dbg !2249
  %div.i = sdiv i32 %mul.i, 2, !dbg !2249
  %add.i = add nsw i32 %div.i, 4, !dbg !2251
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2252
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !2253
  %conv.i = sext i32 %add.i to i64, !dbg !2253
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2253
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %3, i64 noundef %mul1.i) #8, !dbg !2253
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2253
  br label %if.end, !dbg !2247

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2254
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_gp(ptr noundef %gv, i32 noundef %empty) local_unnamed_addr #0 !dbg !2255 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2259, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i32 %empty, metadata !2260, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2098, metadata !DIExpression()), !dbg !2267
  %cmp.not.i = icmp eq ptr %gv, null, !dbg !2269
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !2270

if.then.i:                                        ; preds = %entry
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %gv, i64 0, i32 1, !dbg !2271
  %0 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2272
  %inc.i = add i32 %0, 1, !dbg !2272
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !2272
  br label %S_SvREFCNT_inc.exit, !dbg !2271

S_SvREFCNT_inc.exit:                              ; preds = %entry, %if.then.i
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2273
  %1 = load ptr, ptr %sv_u, align 8, !dbg !2273
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2063, metadata !DIExpression()) #8, !dbg !2274
  call void @llvm.dbg.value(metadata ptr %1, metadata !2064, metadata !DIExpression()) #8, !dbg !2274
  call void @llvm.dbg.value(metadata i32 28, metadata !2065, metadata !DIExpression()) #8, !dbg !2274
  %2 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2276
  call void @llvm.dbg.value(metadata i32 %2, metadata !2066, metadata !DIExpression()) #8, !dbg !2274
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !2276
  %idxprom.i = sext i32 %2 to i64, !dbg !2276
  %arrayidx.i = getelementptr inbounds %union.any, ptr %3, i64 %idxprom.i, !dbg !2276
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2274
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2277
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2274
  store ptr %gv, ptr %arrayidx.i, align 8, !dbg !2277
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2278
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2274
  store ptr %1, ptr %incdec.ptr.i, align 8, !dbg !2278
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2274
  store i64 28, ptr %incdec.ptr1.i, align 8, !dbg !2279
  %add.i = add nsw i32 %2, 3, !dbg !2280
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2274
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2280
  %add3.i = add nsw i32 %2, 7, !dbg !2281
  %4 = load i32, ptr @PL_savestack_max, align 4, !dbg !2281
  %cmp.i = icmp sgt i32 %add3.i, %4, !dbg !2281
  br i1 %cmp.i, label %if.then.i154, label %Perl_save_pushptrptr.exit, !dbg !2280

if.then.i154:                                     ; preds = %S_SvREFCNT_inc.exit
  %mul.i.i = mul nsw i32 %4, 3, !dbg !2282
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2282
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2284
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2285
  %5 = load ptr, ptr @PL_savestack, align 8, !dbg !2286
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2286
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2286
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %5, i64 noundef %mul1.i.i) #8, !dbg !2286
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2286
  br label %Perl_save_pushptrptr.exit, !dbg !2281

Perl_save_pushptrptr.exit:                        ; preds = %S_SvREFCNT_inc.exit, %if.then.i154
  %tobool.not = icmp eq i32 %empty, 0, !dbg !2287
  br i1 %tobool.not, label %if.else111, label %if.then, !dbg !2288

if.then:                                          ; preds = %Perl_save_pushptrptr.exit
  %call1 = tail call ptr @Perl_newGP(ptr noundef nonnull %gv) #8, !dbg !2289
  call void @llvm.dbg.value(metadata ptr %call1, metadata !2261, metadata !DIExpression()), !dbg !2290
  %6 = load ptr, ptr %gv, align 8, !dbg !2291
  %xnv_u = getelementptr inbounds %struct.xpvgv, ptr %6, i64 0, i32 5, !dbg !2291
  %7 = load ptr, ptr %xnv_u, align 8, !dbg !2291
  call void @llvm.dbg.value(metadata ptr %7, metadata !2264, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i8 0, metadata !2265, metadata !DIExpression()), !dbg !2290
  %tobool2.not = icmp eq ptr %7, null, !dbg !2292
  br i1 %tobool2.not, label %if.end87, label %land.lhs.true, !dbg !2294

land.lhs.true:                                    ; preds = %if.then
  %sv_flags = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2, !dbg !2295
  %8 = load i32, ptr %sv_flags, align 4, !dbg !2295
  %and = and i32 %8, 33554432, !dbg !2295
  %tobool3.not = icmp eq i32 %and, 0, !dbg !2295
  br i1 %tobool3.not, label %if.end87, label %land.lhs.true4, !dbg !2295

land.lhs.true4:                                   ; preds = %land.lhs.true
  %sv_u5 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3, !dbg !2295
  %9 = load ptr, ptr %sv_u5, align 8, !dbg !2295
  %10 = load ptr, ptr %7, align 8, !dbg !2295
  %xhv_max = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3, !dbg !2295
  %11 = load i64, ptr %xhv_max, align 8, !dbg !2295
  %add = add i64 %11, 1, !dbg !2295
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %add, !dbg !2295
  %12 = load ptr, ptr %arrayidx, align 8, !dbg !2295
  %tobool7.not = icmp eq ptr %12, null, !dbg !2295
  br i1 %tobool7.not, label %if.end87, label %land.lhs.true8, !dbg !2295

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %xhv_name_count = getelementptr inbounds %struct.xpvhv_aux, ptr %arrayidx, i64 0, i32 4, !dbg !2295
  %13 = load i32, ptr %xhv_name_count, align 4, !dbg !2295
  %cmp.not = icmp eq i32 %13, -1, !dbg !2295
  br i1 %cmp.not, label %if.end87, label %cond.true, !dbg !2296

cond.true:                                        ; preds = %land.lhs.true8
  %xiv_u = getelementptr inbounds %struct.xpvgv, ptr %6, i64 0, i32 4, !dbg !2297
  %14 = load ptr, ptr %xiv_u, align 8, !dbg !2297
  %hek_len = getelementptr inbounds %struct.hek, ptr %14, i64 0, i32 1, !dbg !2297
  %15 = load i32, ptr %hek_len, align 4, !dbg !2297
  %cmp68 = icmp eq i32 %15, 3, !dbg !2300
  br i1 %cmp68, label %land.lhs.true69, label %if.else, !dbg !2301

land.lhs.true69:                                  ; preds = %cond.true
  %hek_key72 = getelementptr inbounds %struct.hek, ptr %14, i64 0, i32 2, !dbg !2302
  %call74 = tail call i32 @strncmp(ptr noundef nonnull %hek_key72, ptr noundef nonnull dereferenceable(4) @.str, i64 noundef 3) #9, !dbg !2302
  %tobool75.not = icmp eq i32 %call74, 0, !dbg !2302
  br i1 %tobool75.not, label %if.end87, label %if.else, !dbg !2303

if.else:                                          ; preds = %land.lhs.true69, %cond.true
  %16 = load ptr, ptr %sv_u, align 8, !dbg !2304
  %gp_cvgen = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 3, !dbg !2304
  %17 = load i32, ptr %gp_cvgen, align 8, !dbg !2304
  %tobool79.not = icmp eq i32 %17, 0, !dbg !2304
  br i1 %tobool79.not, label %cond.false81, label %if.end87, !dbg !2306

cond.false81:                                     ; preds = %if.else
  %gp_cv = getelementptr inbounds %struct.gp, ptr %16, i64 0, i32 2, !dbg !2304
  %18 = load ptr, ptr %gp_cv, align 8, !dbg !2304
  %tobool84.not = icmp eq ptr %18, null, !dbg !2304
  br i1 %tobool84.not, label %if.end87, label %if.then85, !dbg !2306

if.then85:                                        ; preds = %cond.false81
  tail call void @Perl_mro_method_changed_in(ptr noundef nonnull %7) #8, !dbg !2307
  br label %if.end87, !dbg !2307

if.end87:                                         ; preds = %land.lhs.true69, %if.else, %if.then85, %cond.false81, %land.lhs.true, %land.lhs.true4, %land.lhs.true8, %if.then
  %isa_changed.0 = phi i1 [ false, %if.else ], [ false, %if.then85 ], [ false, %cond.false81 ], [ false, %land.lhs.true8 ], [ false, %land.lhs.true4 ], [ false, %land.lhs.true ], [ false, %if.then ], [ true, %land.lhs.true69 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2265, metadata !DIExpression()), !dbg !2290
  %19 = load ptr, ptr %sv_u, align 8, !dbg !2308
  %gp_io = getelementptr inbounds %struct.gp, ptr %19, i64 0, i32 1, !dbg !2308
  %20 = load ptr, ptr %gp_io, align 8, !dbg !2308
  %tobool90.not = icmp eq ptr %20, null, !dbg !2308
  br i1 %tobool90.not, label %if.end106, label %land.lhs.true91, !dbg !2310

land.lhs.true91:                                  ; preds = %if.end87
  %21 = load ptr, ptr %20, align 8, !dbg !2311
  %xio_flags = getelementptr inbounds %struct.xpvio, ptr %21, i64 0, i32 17, !dbg !2311
  %22 = load i8, ptr %xio_flags, align 1, !dbg !2311
  %23 = and i8 %22, 1, !dbg !2312
  %tobool97.not = icmp eq i8 %23, 0, !dbg !2312
  br i1 %tobool97.not, label %if.end106, label %if.then98, !dbg !2313

if.then98:                                        ; preds = %land.lhs.true91
  %call99 = tail call ptr @Perl_newSV_type(i32 noundef 15) #8, !dbg !2314
  %gp_io100 = getelementptr inbounds %struct.gp, ptr %call1, i64 0, i32 1, !dbg !2316
  store ptr %call99, ptr %gp_io100, align 8, !dbg !2317
  %24 = load ptr, ptr %call99, align 8, !dbg !2318
  %xio_flags103 = getelementptr inbounds %struct.xpvio, ptr %24, i64 0, i32 17, !dbg !2318
  %25 = load i8, ptr %xio_flags103, align 1, !dbg !2319
  %26 = or i8 %25, 3, !dbg !2319
  store i8 %26, ptr %xio_flags103, align 1, !dbg !2319
  br label %if.end106, !dbg !2320

if.end106:                                        ; preds = %if.then98, %land.lhs.true91, %if.end87
  store ptr %call1, ptr %sv_u, align 8, !dbg !2321
  br i1 %isa_changed.0, label %if.then109, label %if.end117, !dbg !2322

if.then109:                                       ; preds = %if.end106
  tail call void @Perl_mro_isa_changed_in(ptr noundef %7) #8, !dbg !2323
  br label %if.end117, !dbg !2323

if.else111:                                       ; preds = %Perl_save_pushptrptr.exit
  %27 = load ptr, ptr %sv_u, align 8, !dbg !2325
  %call114 = tail call ptr @Perl_gp_ref(ptr noundef %27) #8, !dbg !2325
  %28 = load ptr, ptr %gv, align 8, !dbg !2327
  %xpv_cur = getelementptr inbounds %struct.xpvgv, ptr %28, i64 0, i32 2, !dbg !2327
  %29 = load i64, ptr %xpv_cur, align 8, !dbg !2327
  %or116 = or i64 %29, 1, !dbg !2327
  store i64 %or116, ptr %xpv_cur, align 8, !dbg !2327
  br label %if.end117

if.end117:                                        ; preds = %if.end106, %if.then109, %if.else111
  ret void, !dbg !2328
}

declare !dbg !2329 ptr @Perl_newGP(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

declare !dbg !2332 void @Perl_mro_method_changed_in(ptr noundef) local_unnamed_addr #1

declare !dbg !2335 void @Perl_mro_isa_changed_in(ptr noundef) local_unnamed_addr #1

declare !dbg !2336 ptr @Perl_gp_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_save_ary(ptr noundef %gv) local_unnamed_addr #0 !dbg !2339 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2343, metadata !DIExpression()), !dbg !2347
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2348
  %0 = load ptr, ptr %sv_u, align 8, !dbg !2348
  %gp_av = getelementptr inbounds %struct.gp, ptr %0, i64 0, i32 6, !dbg !2348
  %1 = load ptr, ptr %gp_av, align 8, !dbg !2348
  %tobool.not = icmp eq ptr %1, null, !dbg !2348
  br i1 %tobool.not, label %cond.false, label %cond.end, !dbg !2348

cond.false:                                       ; preds = %entry
  %call = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %gv, i32 noundef 11) #8, !dbg !2348
  %sv_u4 = getelementptr inbounds %struct.gv, ptr %call, i64 0, i32 3, !dbg !2348
  %2 = load ptr, ptr %sv_u4, align 8, !dbg !2348
  %gp_av6 = getelementptr inbounds %struct.gp, ptr %2, i64 0, i32 6, !dbg !2348
  %3 = load ptr, ptr %gp_av6, align 8, !dbg !2348
  br label %cond.end, !dbg !2348

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi ptr [ %3, %cond.false ], [ %1, %entry ], !dbg !2348
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2344, metadata !DIExpression()), !dbg !2347
  %sv_flags = getelementptr inbounds %struct.av, ptr %cond, i64 0, i32 2, !dbg !2349
  %4 = load i32, ptr %sv_flags, align 4, !dbg !2349
  %5 = and i32 %4, -1073741824, !dbg !2349
  %.not = icmp eq i32 %5, -2147483648, !dbg !2349
  br i1 %.not, label %if.then, label %if.end, !dbg !2349

if.then:                                          ; preds = %cond.end
  tail call void @Perl_av_reify(ptr noundef nonnull %cond) #8, !dbg !2351
  br label %if.end, !dbg !2351

if.end:                                           ; preds = %cond.end, %if.then
  %sv_refcnt = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 1, !dbg !2352
  %6 = load i32, ptr %sv_refcnt, align 8, !dbg !2352
  %inc = add i32 %6, 1, !dbg !2352
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !2352
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2063, metadata !DIExpression()) #8, !dbg !2353
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2064, metadata !DIExpression()) #8, !dbg !2353
  call void @llvm.dbg.value(metadata i32 23, metadata !2065, metadata !DIExpression()) #8, !dbg !2353
  %7 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2355
  call void @llvm.dbg.value(metadata i32 %7, metadata !2066, metadata !DIExpression()) #8, !dbg !2353
  %8 = load ptr, ptr @PL_savestack, align 8, !dbg !2355
  %idxprom.i = sext i32 %7 to i64, !dbg !2355
  %arrayidx.i = getelementptr inbounds %union.any, ptr %8, i64 %idxprom.i, !dbg !2355
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2353
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2356
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2353
  store ptr %gv, ptr %arrayidx.i, align 8, !dbg !2356
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2357
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2353
  store ptr %cond, ptr %incdec.ptr.i, align 8, !dbg !2357
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2353
  store i64 23, ptr %incdec.ptr1.i, align 8, !dbg !2358
  %add.i = add nsw i32 %7, 3, !dbg !2359
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2353
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2359
  %add3.i = add nsw i32 %7, 7, !dbg !2360
  %9 = load i32, ptr @PL_savestack_max, align 4, !dbg !2360
  %cmp.i = icmp sgt i32 %add3.i, %9, !dbg !2360
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2359

if.then.i:                                        ; preds = %if.end
  %mul.i.i = mul nsw i32 %9, 3, !dbg !2361
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2361
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2363
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2364
  %10 = load ptr, ptr @PL_savestack, align 8, !dbg !2365
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2365
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2365
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %10, i64 noundef %mul1.i.i) #8, !dbg !2365
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2365
  br label %Perl_save_pushptrptr.exit, !dbg !2360

Perl_save_pushptrptr.exit:                        ; preds = %if.end, %if.then.i
  %11 = load ptr, ptr %sv_u, align 8, !dbg !2366
  %gp_av15 = getelementptr inbounds %struct.gp, ptr %11, i64 0, i32 6, !dbg !2366
  store ptr null, ptr %gp_av15, align 8, !dbg !2367
  %12 = load ptr, ptr %sv_u, align 8, !dbg !2368
  %gp_av18 = getelementptr inbounds %struct.gp, ptr %12, i64 0, i32 6, !dbg !2368
  %13 = load ptr, ptr %gp_av18, align 8, !dbg !2368
  %tobool19.not = icmp eq ptr %13, null, !dbg !2368
  br i1 %tobool19.not, label %cond.false24, label %cond.end29, !dbg !2368

cond.false24:                                     ; preds = %Perl_save_pushptrptr.exit
  %call25 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %gv, i32 noundef 11) #8, !dbg !2368
  %sv_u26 = getelementptr inbounds %struct.gv, ptr %call25, i64 0, i32 3, !dbg !2368
  %14 = load ptr, ptr %sv_u26, align 8, !dbg !2368
  %gp_av28 = getelementptr inbounds %struct.gp, ptr %14, i64 0, i32 6, !dbg !2368
  %15 = load ptr, ptr %gp_av28, align 8, !dbg !2368
  br label %cond.end29, !dbg !2368

cond.end29:                                       ; preds = %Perl_save_pushptrptr.exit, %cond.false24
  %cond30 = phi ptr [ %15, %cond.false24 ], [ %13, %Perl_save_pushptrptr.exit ], !dbg !2368
  call void @llvm.dbg.value(metadata ptr %cond30, metadata !2346, metadata !DIExpression()), !dbg !2347
  %16 = load ptr, ptr %cond, align 8, !dbg !2369
  %xmg_u = getelementptr inbounds %struct.xpvmg, ptr %16, i64 0, i32 1, !dbg !2369
  %17 = load ptr, ptr %xmg_u, align 8, !dbg !2369
  %tobool31.not = icmp eq ptr %17, null, !dbg !2369
  br i1 %tobool31.not, label %if.end35, label %if.then34, !dbg !2371

if.then34:                                        ; preds = %cond.end29
  tail call void @Perl_mg_localize(ptr noundef nonnull %cond, ptr noundef %cond30, i1 noundef zeroext true) #8, !dbg !2372
  br label %if.end35, !dbg !2372

if.end35:                                         ; preds = %cond.end29, %if.then34
  ret ptr %cond30, !dbg !2373
}

declare !dbg !2374 void @Perl_av_reify(ptr noundef) local_unnamed_addr #1

declare !dbg !2377 void @Perl_mg_localize(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_save_hash(ptr noundef %gv) local_unnamed_addr #0 !dbg !2380 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2384, metadata !DIExpression()), !dbg !2387
  %sv_refcnt = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 1, !dbg !2388
  %0 = load i32, ptr %sv_refcnt, align 8, !dbg !2388
  %inc = add i32 %0, 1, !dbg !2388
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !2388
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !2388
  %1 = load ptr, ptr %sv_u, align 8, !dbg !2388
  %gp_hv = getelementptr inbounds %struct.gp, ptr %1, i64 0, i32 5, !dbg !2388
  %2 = load ptr, ptr %gp_hv, align 8, !dbg !2388
  %tobool.not = icmp eq ptr %2, null, !dbg !2388
  br i1 %tobool.not, label %cond.false, label %cond.end, !dbg !2388

cond.false:                                       ; preds = %entry
  %call = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %gv, i32 noundef 12) #8, !dbg !2388
  %sv_u4 = getelementptr inbounds %struct.gv, ptr %call, i64 0, i32 3, !dbg !2388
  %3 = load ptr, ptr %sv_u4, align 8, !dbg !2388
  %gp_hv6 = getelementptr inbounds %struct.gp, ptr %3, i64 0, i32 5, !dbg !2388
  %4 = load ptr, ptr %gp_hv6, align 8, !dbg !2388
  br label %cond.end, !dbg !2388

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi ptr [ %4, %cond.false ], [ %2, %entry ], !dbg !2388
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2385, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata ptr %gv, metadata !2063, metadata !DIExpression()) #8, !dbg !2389
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2064, metadata !DIExpression()) #8, !dbg !2389
  call void @llvm.dbg.value(metadata i32 32, metadata !2065, metadata !DIExpression()) #8, !dbg !2389
  %5 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2391
  call void @llvm.dbg.value(metadata i32 %5, metadata !2066, metadata !DIExpression()) #8, !dbg !2389
  %6 = load ptr, ptr @PL_savestack, align 8, !dbg !2391
  %idxprom.i = sext i32 %5 to i64, !dbg !2391
  %arrayidx.i = getelementptr inbounds %union.any, ptr %6, i64 %idxprom.i, !dbg !2391
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2389
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2392
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2389
  store ptr %gv, ptr %arrayidx.i, align 8, !dbg !2392
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2393
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2389
  store ptr %cond, ptr %incdec.ptr.i, align 8, !dbg !2393
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2389
  store i64 32, ptr %incdec.ptr1.i, align 8, !dbg !2394
  %add.i = add nsw i32 %5, 3, !dbg !2395
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2389
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2395
  %add3.i = add nsw i32 %5, 7, !dbg !2396
  %7 = load i32, ptr @PL_savestack_max, align 4, !dbg !2396
  %cmp.i = icmp sgt i32 %add3.i, %7, !dbg !2396
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2395

if.then.i:                                        ; preds = %cond.end
  %mul.i.i = mul nsw i32 %7, 3, !dbg !2397
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2397
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2399
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2400
  %8 = load ptr, ptr @PL_savestack, align 8, !dbg !2401
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2401
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2401
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %mul1.i.i) #8, !dbg !2401
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2401
  br label %Perl_save_pushptrptr.exit, !dbg !2396

Perl_save_pushptrptr.exit:                        ; preds = %cond.end, %if.then.i
  %9 = load ptr, ptr %sv_u, align 8, !dbg !2402
  %gp_hv9 = getelementptr inbounds %struct.gp, ptr %9, i64 0, i32 5, !dbg !2402
  store ptr null, ptr %gp_hv9, align 8, !dbg !2403
  %10 = load ptr, ptr %sv_u, align 8, !dbg !2404
  %gp_hv12 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 5, !dbg !2404
  %11 = load ptr, ptr %gp_hv12, align 8, !dbg !2404
  %tobool13.not = icmp eq ptr %11, null, !dbg !2404
  br i1 %tobool13.not, label %cond.false18, label %cond.end23, !dbg !2404

cond.false18:                                     ; preds = %Perl_save_pushptrptr.exit
  %call19 = tail call ptr @Perl_gv_add_by_type(ptr noundef nonnull %gv, i32 noundef 12) #8, !dbg !2404
  %sv_u20 = getelementptr inbounds %struct.gv, ptr %call19, i64 0, i32 3, !dbg !2404
  %12 = load ptr, ptr %sv_u20, align 8, !dbg !2404
  %gp_hv22 = getelementptr inbounds %struct.gp, ptr %12, i64 0, i32 5, !dbg !2404
  %13 = load ptr, ptr %gp_hv22, align 8, !dbg !2404
  br label %cond.end23, !dbg !2404

cond.end23:                                       ; preds = %Perl_save_pushptrptr.exit, %cond.false18
  %cond24 = phi ptr [ %13, %cond.false18 ], [ %11, %Perl_save_pushptrptr.exit ], !dbg !2404
  call void @llvm.dbg.value(metadata ptr %cond24, metadata !2386, metadata !DIExpression()), !dbg !2387
  %14 = load ptr, ptr %cond, align 8, !dbg !2405
  %xmg_u = getelementptr inbounds %struct.xpvmg, ptr %14, i64 0, i32 1, !dbg !2405
  %15 = load ptr, ptr %xmg_u, align 8, !dbg !2405
  %tobool25.not = icmp eq ptr %15, null, !dbg !2405
  br i1 %tobool25.not, label %if.end, label %if.then, !dbg !2407

if.then:                                          ; preds = %cond.end23
  tail call void @Perl_mg_localize(ptr noundef nonnull %cond, ptr noundef %cond24, i1 noundef zeroext true) #8, !dbg !2408
  br label %if.end, !dbg !2408

if.end:                                           ; preds = %cond.end23, %if.then
  ret ptr %cond24, !dbg !2409
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_item(ptr noundef %item) local_unnamed_addr #0 !dbg !2410 {
entry:
  call void @llvm.dbg.value(metadata ptr %item, metadata !2412, metadata !DIExpression()), !dbg !2414
  %call = tail call ptr @Perl_newSVsv(ptr noundef %item) #8, !dbg !2415
  call void @llvm.dbg.value(metadata ptr %call, metadata !2413, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %item, metadata !2063, metadata !DIExpression()) #8, !dbg !2416
  call void @llvm.dbg.value(metadata ptr %call, metadata !2064, metadata !DIExpression()) #8, !dbg !2416
  call void @llvm.dbg.value(metadata i32 35, metadata !2065, metadata !DIExpression()) #8, !dbg !2416
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2418
  call void @llvm.dbg.value(metadata i32 %0, metadata !2066, metadata !DIExpression()) #8, !dbg !2416
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2418
  %idxprom.i = sext i32 %0 to i64, !dbg !2418
  %arrayidx.i = getelementptr inbounds %union.any, ptr %1, i64 %idxprom.i, !dbg !2418
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2416
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2419
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2416
  store ptr %item, ptr %arrayidx.i, align 8, !dbg !2419
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2420
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2416
  store ptr %call, ptr %incdec.ptr.i, align 8, !dbg !2420
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2416
  store i64 35, ptr %incdec.ptr1.i, align 8, !dbg !2421
  %add.i = add nsw i32 %0, 3, !dbg !2422
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2416
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2422
  %add3.i = add nsw i32 %0, 7, !dbg !2423
  %2 = load i32, ptr @PL_savestack_max, align 4, !dbg !2423
  %cmp.i = icmp sgt i32 %add3.i, %2, !dbg !2423
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2422

if.then.i:                                        ; preds = %entry
  %mul.i.i = mul nsw i32 %2, 3, !dbg !2424
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2424
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2426
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2427
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !2428
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2428
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2428
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %3, i64 noundef %mul1.i.i) #8, !dbg !2428
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2428
  br label %Perl_save_pushptrptr.exit, !dbg !2423

Perl_save_pushptrptr.exit:                        ; preds = %entry, %if.then.i
  ret void, !dbg !2429
}

declare !dbg !2430 ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_bool(ptr noundef %boolp) local_unnamed_addr #0 !dbg !2433 {
entry:
  call void @llvm.dbg.value(metadata ptr %boolp, metadata !2437, metadata !DIExpression()), !dbg !2440
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2441
  call void @llvm.dbg.value(metadata i32 %0, metadata !2438, metadata !DIExpression()), !dbg !2440
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2441
  %idxprom = sext i32 %0 to i64, !dbg !2441
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2441
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2439, metadata !DIExpression()), !dbg !2440
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2442
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2439, metadata !DIExpression()), !dbg !2440
  store ptr %boolp, ptr %arrayidx, align 8, !dbg !2442
  %2 = load i8, ptr %boolp, align 1, !dbg !2443, !range !1229
  %3 = zext i8 %2 to i64, !dbg !2443
  %shl = shl nuw nsw i64 %3, 8, !dbg !2443
  %or = or i64 %shl, 5, !dbg !2443
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2439, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2440
  store i64 %or, ptr %incdec.ptr, align 8, !dbg !2443
  %add = add nsw i32 %0, 2, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %add, metadata !2438, metadata !DIExpression()), !dbg !2440
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2444
  %add3 = add nsw i32 %0, 6, !dbg !2445
  %4 = load i32, ptr @PL_savestack_max, align 4, !dbg !2445
  %cmp = icmp sgt i32 %add3, %4, !dbg !2445
  br i1 %cmp, label %if.then, label %if.end, !dbg !2444

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %4, 3, !dbg !2447
  %div.i = sdiv i32 %mul.i, 2, !dbg !2447
  %add.i = add nsw i32 %div.i, 4, !dbg !2449
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2450
  %5 = load ptr, ptr @PL_savestack, align 8, !dbg !2451
  %conv.i = sext i32 %add.i to i64, !dbg !2451
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2451
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %5, i64 noundef %mul1.i) #8, !dbg !2451
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2451
  br label %if.end, !dbg !2445

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2452
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_pushi32ptr(i32 noundef %i, ptr noundef %ptr, i32 noundef %type) local_unnamed_addr #0 !dbg !2453 {
entry:
  call void @llvm.dbg.value(metadata i32 %i, metadata !2457, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !2458, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %type, metadata !2459, metadata !DIExpression()), !dbg !2462
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()), !dbg !2462
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2463
  %idxprom = sext i32 %0 to i64, !dbg !2463
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2463
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2461, metadata !DIExpression()), !dbg !2462
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2464
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2461, metadata !DIExpression()), !dbg !2462
  store i32 %i, ptr %arrayidx, align 8, !dbg !2464
  %incdec.ptr1 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !2465
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2461, metadata !DIExpression()), !dbg !2462
  store ptr %ptr, ptr %incdec.ptr, align 8, !dbg !2465
  %conv = sext i32 %type to i64, !dbg !2466
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2462
  store i64 %conv, ptr %incdec.ptr1, align 8, !dbg !2466
  %add = add nsw i32 %0, 3, !dbg !2467
  call void @llvm.dbg.value(metadata i32 %add, metadata !2460, metadata !DIExpression()), !dbg !2462
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2467
  %add3 = add nsw i32 %0, 7, !dbg !2468
  %2 = load i32, ptr @PL_savestack_max, align 4, !dbg !2468
  %cmp = icmp sgt i32 %add3, %2, !dbg !2468
  br i1 %cmp, label %if.then, label %if.end, !dbg !2467

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %2, 3, !dbg !2470
  %div.i = sdiv i32 %mul.i, 2, !dbg !2470
  %add.i = add nsw i32 %div.i, 4, !dbg !2472
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2473
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !2474
  %conv.i = sext i32 %add.i to i64, !dbg !2474
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2474
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %3, i64 noundef %mul1.i) #8, !dbg !2474
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2474
  br label %if.end, !dbg !2468

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2475
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_int(ptr noundef %intp) local_unnamed_addr #0 !dbg !2476 {
entry:
  call void @llvm.dbg.value(metadata ptr %intp, metadata !2480, metadata !DIExpression()), !dbg !2486
  %0 = load i32, ptr %intp, align 4, !dbg !2487
  call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2486
  %conv = sext i32 %0 to i64, !dbg !2488
  %shl = shl nsw i64 %conv, 6, !dbg !2489
  %or = or i64 %shl, 15, !dbg !2490
  call void @llvm.dbg.value(metadata i64 %shl, metadata !2482, metadata !DIExpression(DW_OP_constu, 15, DW_OP_or, DW_OP_stack_value)), !dbg !2486
  call void @llvm.dbg.value(metadata i32 2, metadata !2483, metadata !DIExpression()), !dbg !2486
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %1, metadata !2484, metadata !DIExpression()), !dbg !2486
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2491
  %idxprom = sext i32 %1 to i64, !dbg !2491
  %arrayidx = getelementptr inbounds %union.any, ptr %2, i64 %idxprom, !dbg !2491
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2485, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i32 2, metadata !2483, metadata !DIExpression()), !dbg !2486
  call void @llvm.dbg.value(metadata i64 %or, metadata !2482, metadata !DIExpression()), !dbg !2486
  %incdec.ptr3 = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2492
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3, metadata !2485, metadata !DIExpression()), !dbg !2486
  store ptr %intp, ptr %arrayidx, align 8, !dbg !2492
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3, metadata !2485, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2486
  store i64 %or, ptr %incdec.ptr3, align 8, !dbg !2493
  %add = add nsw i32 %1, 2, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %add, metadata !2484, metadata !DIExpression()), !dbg !2486
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2494
  %add5 = add nsw i32 %1, 6, !dbg !2495
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2495
  %cmp6 = icmp sgt i32 %add5, %3, !dbg !2495
  br i1 %cmp6, label %if.then10, label %if.end11, !dbg !2494

if.then10:                                        ; preds = %entry
  %mul.i = mul nsw i32 %3, 3, !dbg !2497
  %div.i = sdiv i32 %mul.i, 2, !dbg !2497
  %add.i = add nsw i32 %div.i, 4, !dbg !2499
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2500
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2501
  %conv.i = sext i32 %add.i to i64, !dbg !2501
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2501
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i) #8, !dbg !2501
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2501
  br label %if.end11, !dbg !2495

if.end11:                                         ; preds = %entry, %if.then10
  ret void, !dbg !2502
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_I8(ptr noundef %bytep) local_unnamed_addr #0 !dbg !2503 {
entry:
  call void @llvm.dbg.value(metadata ptr %bytep, metadata !2507, metadata !DIExpression()), !dbg !2510
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %0, metadata !2508, metadata !DIExpression()), !dbg !2510
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2511
  %idxprom = sext i32 %0 to i64, !dbg !2511
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2511
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2509, metadata !DIExpression()), !dbg !2510
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2512
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2509, metadata !DIExpression()), !dbg !2510
  store ptr %bytep, ptr %arrayidx, align 8, !dbg !2512
  %2 = load i8, ptr %bytep, align 1, !dbg !2513
  %conv = sext i8 %2 to i64, !dbg !2513
  %shl = shl nsw i64 %conv, 8, !dbg !2513
  %or = or i64 %shl, 14, !dbg !2513
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2509, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2510
  store i64 %or, ptr %incdec.ptr, align 8, !dbg !2513
  %add = add nsw i32 %0, 2, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %add, metadata !2508, metadata !DIExpression()), !dbg !2510
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2514
  %add2 = add nsw i32 %0, 6, !dbg !2515
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2515
  %cmp = icmp sgt i32 %add2, %3, !dbg !2515
  br i1 %cmp, label %if.then, label %if.end, !dbg !2514

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %3, 3, !dbg !2517
  %div.i = sdiv i32 %mul.i, 2, !dbg !2517
  %add.i = add nsw i32 %div.i, 4, !dbg !2519
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2520
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2521
  %conv.i = sext i32 %add.i to i64, !dbg !2521
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2521
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i) #8, !dbg !2521
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2521
  br label %if.end, !dbg !2515

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2522
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_I16(ptr noundef %intp) local_unnamed_addr #0 !dbg !2523 {
entry:
  call void @llvm.dbg.value(metadata ptr %intp, metadata !2527, metadata !DIExpression()), !dbg !2530
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %0, metadata !2528, metadata !DIExpression()), !dbg !2530
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2531
  %idxprom = sext i32 %0 to i64, !dbg !2531
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2531
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2529, metadata !DIExpression()), !dbg !2530
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2532
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2529, metadata !DIExpression()), !dbg !2530
  store ptr %intp, ptr %arrayidx, align 8, !dbg !2532
  %2 = load i16, ptr %intp, align 2, !dbg !2533
  %conv = sext i16 %2 to i64, !dbg !2533
  %shl = shl nsw i64 %conv, 8, !dbg !2533
  %or = or i64 %shl, 12, !dbg !2533
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2529, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2530
  store i64 %or, ptr %incdec.ptr, align 8, !dbg !2533
  %add = add nsw i32 %0, 2, !dbg !2534
  call void @llvm.dbg.value(metadata i32 %add, metadata !2528, metadata !DIExpression()), !dbg !2530
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2534
  %add2 = add nsw i32 %0, 6, !dbg !2535
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2535
  %cmp = icmp sgt i32 %add2, %3, !dbg !2535
  br i1 %cmp, label %if.then, label %if.end, !dbg !2534

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %3, 3, !dbg !2537
  %div.i = sdiv i32 %mul.i, 2, !dbg !2537
  %add.i = add nsw i32 %div.i, 4, !dbg !2539
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2540
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2541
  %conv.i = sext i32 %add.i to i64, !dbg !2541
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2541
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i) #8, !dbg !2541
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2541
  br label %if.end, !dbg !2535

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2542
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_I32(ptr noundef %intp) local_unnamed_addr #0 !dbg !2543 {
entry:
  call void @llvm.dbg.value(metadata ptr %intp, metadata !2547, metadata !DIExpression()), !dbg !2553
  %0 = load i32, ptr %intp, align 4, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %0, metadata !2548, metadata !DIExpression()), !dbg !2553
  %shl = shl i32 %0, 6, !dbg !2555
  %or = or i32 %shl, 13, !dbg !2556
  %conv = sext i32 %or to i64, !dbg !2557
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2549, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 2, metadata !2550, metadata !DIExpression()), !dbg !2553
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2558
  call void @llvm.dbg.value(metadata i32 %1, metadata !2551, metadata !DIExpression()), !dbg !2553
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2558
  %idxprom = sext i32 %1 to i64, !dbg !2558
  %arrayidx = getelementptr inbounds %union.any, ptr %2, i64 %idxprom, !dbg !2558
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2552, metadata !DIExpression()), !dbg !2553
  %3 = add i32 %0, 33554432, !dbg !2559
  %4 = icmp ult i32 %3, 67108864, !dbg !2559
  br i1 %4, label %if.end, label %if.then, !dbg !2561

if.then:                                          ; preds = %entry
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2562
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2552, metadata !DIExpression()), !dbg !2553
  store i32 %0, ptr %arrayidx, align 8, !dbg !2562
  call void @llvm.dbg.value(metadata i64 33, metadata !2549, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 3, metadata !2550, metadata !DIExpression()), !dbg !2553
  br label %if.end, !dbg !2564

if.end:                                           ; preds = %entry, %if.then
  %type.0 = phi i64 [ 33, %if.then ], [ %conv, %entry ], !dbg !2553
  %size.0 = phi i32 [ 3, %if.then ], [ 2, %entry ], !dbg !2553
  %ssp.0 = phi ptr [ %incdec.ptr, %if.then ], [ %arrayidx, %entry ], !dbg !2553
  call void @llvm.dbg.value(metadata ptr %ssp.0, metadata !2552, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 %size.0, metadata !2550, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i64 %type.0, metadata !2549, metadata !DIExpression()), !dbg !2553
  %incdec.ptr3 = getelementptr inbounds %union.any, ptr %ssp.0, i64 1, !dbg !2565
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3, metadata !2552, metadata !DIExpression()), !dbg !2553
  store ptr %intp, ptr %ssp.0, align 8, !dbg !2565
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3, metadata !2552, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2553
  store i64 %type.0, ptr %incdec.ptr3, align 8, !dbg !2566
  %add = add nsw i32 %size.0, %1, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %add, metadata !2551, metadata !DIExpression()), !dbg !2553
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2567
  %add5 = add nsw i32 %add, 4, !dbg !2568
  %5 = load i32, ptr @PL_savestack_max, align 4, !dbg !2568
  %cmp6 = icmp sgt i32 %add5, %5, !dbg !2568
  br i1 %cmp6, label %if.then10, label %if.end11, !dbg !2567

if.then10:                                        ; preds = %if.end
  %mul.i = mul nsw i32 %5, 3, !dbg !2570
  %div.i = sdiv i32 %mul.i, 2, !dbg !2570
  %add.i = add nsw i32 %div.i, 4, !dbg !2572
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2573
  %6 = load ptr, ptr @PL_savestack, align 8, !dbg !2574
  %conv.i = sext i32 %add.i to i64, !dbg !2574
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2574
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %6, i64 noundef %mul1.i) #8, !dbg !2574
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2574
  br label %if.end11, !dbg !2568

if.end11:                                         ; preds = %if.end, %if.then10
  ret void, !dbg !2575
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_strlen(ptr noundef %ptr) local_unnamed_addr #0 !dbg !2576 {
entry:
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !2580, metadata !DIExpression()), !dbg !2583
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2584
  call void @llvm.dbg.value(metadata i32 %0, metadata !2581, metadata !DIExpression()), !dbg !2583
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2584
  %idxprom = sext i32 %0 to i64, !dbg !2584
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2584
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2582, metadata !DIExpression()), !dbg !2583
  %2 = load i64, ptr %ptr, align 8, !dbg !2585
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2585
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2582, metadata !DIExpression()), !dbg !2583
  store i64 %2, ptr %arrayidx, align 8, !dbg !2585
  %incdec.ptr1 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !2586
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2582, metadata !DIExpression()), !dbg !2583
  store ptr %ptr, ptr %incdec.ptr, align 8, !dbg !2586
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2582, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2583
  store i64 42, ptr %incdec.ptr1, align 8, !dbg !2587
  %add = add nsw i32 %0, 3, !dbg !2588
  call void @llvm.dbg.value(metadata i32 %add, metadata !2581, metadata !DIExpression()), !dbg !2583
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2588
  %add3 = add nsw i32 %0, 7, !dbg !2589
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2589
  %cmp = icmp sgt i32 %add3, %3, !dbg !2589
  br i1 %cmp, label %if.then, label %if.end, !dbg !2588

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %3, 3, !dbg !2591
  %div.i = sdiv i32 %mul.i, 2, !dbg !2591
  %add.i = add nsw i32 %div.i, 4, !dbg !2593
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2594
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2595
  %conv.i = sext i32 %add.i to i64, !dbg !2595
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2595
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i) #8, !dbg !2595
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2595
  br label %if.end, !dbg !2589

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2596
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_pptr(ptr noundef %pptr) local_unnamed_addr #0 !dbg !2597 {
entry:
  call void @llvm.dbg.value(metadata ptr %pptr, metadata !2599, metadata !DIExpression()), !dbg !2600
  %0 = load ptr, ptr %pptr, align 8, !dbg !2601
  call void @llvm.dbg.value(metadata ptr %0, metadata !2063, metadata !DIExpression()) #8, !dbg !2602
  call void @llvm.dbg.value(metadata ptr %pptr, metadata !2064, metadata !DIExpression()) #8, !dbg !2602
  call void @llvm.dbg.value(metadata i32 38, metadata !2065, metadata !DIExpression()) #8, !dbg !2602
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2604
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()) #8, !dbg !2602
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2604
  %idxprom.i = sext i32 %1 to i64, !dbg !2604
  %arrayidx.i = getelementptr inbounds %union.any, ptr %2, i64 %idxprom.i, !dbg !2604
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2602
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2605
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2602
  store ptr %0, ptr %arrayidx.i, align 8, !dbg !2605
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2606
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2602
  store ptr %pptr, ptr %incdec.ptr.i, align 8, !dbg !2606
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2602
  store i64 38, ptr %incdec.ptr1.i, align 8, !dbg !2607
  %add.i = add nsw i32 %1, 3, !dbg !2608
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2602
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2608
  %add3.i = add nsw i32 %1, 7, !dbg !2609
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2609
  %cmp.i = icmp sgt i32 %add3.i, %3, !dbg !2609
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2608

if.then.i:                                        ; preds = %entry
  %mul.i.i = mul nsw i32 %3, 3, !dbg !2610
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2610
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2612
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2613
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2614
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2614
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2614
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i.i) #8, !dbg !2614
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2614
  br label %Perl_save_pushptrptr.exit, !dbg !2609

Perl_save_pushptrptr.exit:                        ; preds = %entry, %if.then.i
  ret void, !dbg !2615
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_vptr(ptr noundef %ptr) local_unnamed_addr #0 !dbg !2616 {
entry:
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !2618, metadata !DIExpression()), !dbg !2619
  %0 = load ptr, ptr %ptr, align 8, !dbg !2620
  call void @llvm.dbg.value(metadata ptr %0, metadata !2063, metadata !DIExpression()) #8, !dbg !2621
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !2064, metadata !DIExpression()) #8, !dbg !2621
  call void @llvm.dbg.value(metadata i32 45, metadata !2065, metadata !DIExpression()) #8, !dbg !2621
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2623
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()) #8, !dbg !2621
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2623
  %idxprom.i = sext i32 %1 to i64, !dbg !2623
  %arrayidx.i = getelementptr inbounds %union.any, ptr %2, i64 %idxprom.i, !dbg !2623
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2621
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2624
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2621
  store ptr %0, ptr %arrayidx.i, align 8, !dbg !2624
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2625
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2621
  store ptr %ptr, ptr %incdec.ptr.i, align 8, !dbg !2625
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2621
  store i64 45, ptr %incdec.ptr1.i, align 8, !dbg !2626
  %add.i = add nsw i32 %1, 3, !dbg !2627
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2621
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2627
  %add3.i = add nsw i32 %1, 7, !dbg !2628
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2628
  %cmp.i = icmp sgt i32 %add3.i, %3, !dbg !2628
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2627

if.then.i:                                        ; preds = %entry
  %mul.i.i = mul nsw i32 %3, 3, !dbg !2629
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2629
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2631
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2632
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2633
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2633
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2633
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i.i) #8, !dbg !2633
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2633
  br label %Perl_save_pushptrptr.exit, !dbg !2628

Perl_save_pushptrptr.exit:                        ; preds = %entry, %if.then.i
  ret void, !dbg !2634
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_sptr(ptr noundef %sptr) local_unnamed_addr #0 !dbg !2635 {
entry:
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !2637, metadata !DIExpression()), !dbg !2638
  %0 = load ptr, ptr %sptr, align 8, !dbg !2639
  call void @llvm.dbg.value(metadata ptr %0, metadata !2063, metadata !DIExpression()) #8, !dbg !2640
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !2064, metadata !DIExpression()) #8, !dbg !2640
  call void @llvm.dbg.value(metadata i32 41, metadata !2065, metadata !DIExpression()) #8, !dbg !2640
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2642
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()) #8, !dbg !2640
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2642
  %idxprom.i = sext i32 %1 to i64, !dbg !2642
  %arrayidx.i = getelementptr inbounds %union.any, ptr %2, i64 %idxprom.i, !dbg !2642
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2640
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2643
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2640
  store ptr %0, ptr %arrayidx.i, align 8, !dbg !2643
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2644
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2640
  store ptr %sptr, ptr %incdec.ptr.i, align 8, !dbg !2644
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2640
  store i64 41, ptr %incdec.ptr1.i, align 8, !dbg !2645
  %add.i = add nsw i32 %1, 3, !dbg !2646
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2640
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2646
  %add3.i = add nsw i32 %1, 7, !dbg !2647
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2647
  %cmp.i = icmp sgt i32 %add3.i, %3, !dbg !2647
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2646

if.then.i:                                        ; preds = %entry
  %mul.i.i = mul nsw i32 %3, 3, !dbg !2648
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2648
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2650
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2651
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2652
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2652
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2652
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i.i) #8, !dbg !2652
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2652
  br label %Perl_save_pushptrptr.exit, !dbg !2647

Perl_save_pushptrptr.exit:                        ; preds = %entry, %if.then.i
  ret void, !dbg !2653
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_padsv_and_mortalize(i64 noundef %off) local_unnamed_addr #0 !dbg !2654 {
entry:
  call void @llvm.dbg.value(metadata i64 %off, metadata !2658, metadata !DIExpression()), !dbg !2661
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2662
  call void @llvm.dbg.value(metadata i32 %0, metadata !2659, metadata !DIExpression()), !dbg !2661
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2662
  %idxprom = sext i32 %0 to i64, !dbg !2662
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2662
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2660, metadata !DIExpression()), !dbg !2661
  %2 = load ptr, ptr @PL_curpad, align 8, !dbg !2663
  %arrayidx1 = getelementptr inbounds ptr, ptr %2, i64 %off, !dbg !2663
  %3 = load ptr, ptr %arrayidx1, align 8, !dbg !2663
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 1, !dbg !2663
  %4 = load i32, ptr %sv_refcnt, align 8, !dbg !2663
  %inc = add i32 %4, 1, !dbg !2663
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !2663
  %5 = load ptr, ptr %arrayidx1, align 8, !dbg !2663
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2663
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2660, metadata !DIExpression()), !dbg !2661
  store ptr %5, ptr %arrayidx, align 8, !dbg !2663
  %6 = load ptr, ptr @PL_comppad, align 8, !dbg !2664
  %incdec.ptr3 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !2664
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3, metadata !2660, metadata !DIExpression()), !dbg !2661
  store ptr %6, ptr %incdec.ptr, align 8, !dbg !2664
  %incdec.ptr4 = getelementptr inbounds %union.any, ptr %incdec.ptr3, i64 1, !dbg !2665
  call void @llvm.dbg.value(metadata ptr %incdec.ptr4, metadata !2660, metadata !DIExpression()), !dbg !2661
  store i64 %off, ptr %incdec.ptr3, align 8, !dbg !2665
  call void @llvm.dbg.value(metadata ptr %incdec.ptr4, metadata !2660, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2661
  store i64 49, ptr %incdec.ptr4, align 8, !dbg !2666
  %add = add nsw i32 %0, 4, !dbg !2667
  call void @llvm.dbg.value(metadata i32 %add, metadata !2659, metadata !DIExpression()), !dbg !2661
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2667
  %add6 = add nsw i32 %0, 8, !dbg !2668
  %7 = load i32, ptr @PL_savestack_max, align 4, !dbg !2668
  %cmp = icmp sgt i32 %add6, %7, !dbg !2668
  br i1 %cmp, label %if.then, label %if.end, !dbg !2667

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %7, 3, !dbg !2670
  %div.i = sdiv i32 %mul.i, 2, !dbg !2670
  %add.i = add nsw i32 %div.i, 4, !dbg !2672
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2673
  %8 = load ptr, ptr @PL_savestack, align 8, !dbg !2674
  %conv.i = sext i32 %add.i to i64, !dbg !2674
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2674
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %mul1.i) #8, !dbg !2674
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2674
  br label %if.end, !dbg !2668

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2675
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_hptr(ptr noundef %hptr) local_unnamed_addr #0 !dbg !2676 {
entry:
  call void @llvm.dbg.value(metadata ptr %hptr, metadata !2680, metadata !DIExpression()), !dbg !2681
  %0 = load ptr, ptr %hptr, align 8, !dbg !2682
  call void @llvm.dbg.value(metadata ptr %0, metadata !2063, metadata !DIExpression()) #8, !dbg !2683
  call void @llvm.dbg.value(metadata ptr %hptr, metadata !2064, metadata !DIExpression()) #8, !dbg !2683
  call void @llvm.dbg.value(metadata i32 31, metadata !2065, metadata !DIExpression()) #8, !dbg !2683
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2685
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()) #8, !dbg !2683
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2685
  %idxprom.i = sext i32 %1 to i64, !dbg !2685
  %arrayidx.i = getelementptr inbounds %union.any, ptr %2, i64 %idxprom.i, !dbg !2685
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2683
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2686
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2683
  store ptr %0, ptr %arrayidx.i, align 8, !dbg !2686
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2687
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2683
  store ptr %hptr, ptr %incdec.ptr.i, align 8, !dbg !2687
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2683
  store i64 31, ptr %incdec.ptr1.i, align 8, !dbg !2688
  %add.i = add nsw i32 %1, 3, !dbg !2689
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2683
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2689
  %add3.i = add nsw i32 %1, 7, !dbg !2690
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2690
  %cmp.i = icmp sgt i32 %add3.i, %3, !dbg !2690
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2689

if.then.i:                                        ; preds = %entry
  %mul.i.i = mul nsw i32 %3, 3, !dbg !2691
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2691
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2693
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2694
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2695
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2695
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2695
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i.i) #8, !dbg !2695
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2695
  br label %Perl_save_pushptrptr.exit, !dbg !2690

Perl_save_pushptrptr.exit:                        ; preds = %entry, %if.then.i
  ret void, !dbg !2696
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_aptr(ptr noundef %aptr) local_unnamed_addr #0 !dbg !2697 {
entry:
  call void @llvm.dbg.value(metadata ptr %aptr, metadata !2701, metadata !DIExpression()), !dbg !2702
  %0 = load ptr, ptr %aptr, align 8, !dbg !2703
  call void @llvm.dbg.value(metadata ptr %0, metadata !2063, metadata !DIExpression()) #8, !dbg !2704
  call void @llvm.dbg.value(metadata ptr %aptr, metadata !2064, metadata !DIExpression()) #8, !dbg !2704
  call void @llvm.dbg.value(metadata i32 47, metadata !2065, metadata !DIExpression()) #8, !dbg !2704
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %1, metadata !2066, metadata !DIExpression()) #8, !dbg !2704
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2706
  %idxprom.i = sext i32 %1 to i64, !dbg !2706
  %arrayidx.i = getelementptr inbounds %union.any, ptr %2, i64 %idxprom.i, !dbg !2706
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2704
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2707
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2704
  store ptr %0, ptr %arrayidx.i, align 8, !dbg !2707
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2708
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !2704
  store ptr %aptr, ptr %incdec.ptr.i, align 8, !dbg !2708
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2704
  store i64 47, ptr %incdec.ptr1.i, align 8, !dbg !2709
  %add.i = add nsw i32 %1, 3, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !2704
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2710
  %add3.i = add nsw i32 %1, 7, !dbg !2711
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2711
  %cmp.i = icmp sgt i32 %add3.i, %3, !dbg !2711
  br i1 %cmp.i, label %if.then.i, label %Perl_save_pushptrptr.exit, !dbg !2710

if.then.i:                                        ; preds = %entry
  %mul.i.i = mul nsw i32 %3, 3, !dbg !2712
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2712
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2714
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2715
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2716
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2716
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2716
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i.i) #8, !dbg !2716
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2716
  br label %Perl_save_pushptrptr.exit, !dbg !2711

Perl_save_pushptrptr.exit:                        ; preds = %entry, %if.then.i
  ret void, !dbg !2717
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_pushptr(ptr noundef %ptr, i32 noundef %type) local_unnamed_addr #0 !dbg !2718 {
entry:
  call void @llvm.dbg.value(metadata ptr %ptr, metadata !2722, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 %type, metadata !2723, metadata !DIExpression()), !dbg !2726
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2727
  call void @llvm.dbg.value(metadata i32 %0, metadata !2724, metadata !DIExpression()), !dbg !2726
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2727
  %idxprom = sext i32 %0 to i64, !dbg !2727
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2727
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2725, metadata !DIExpression()), !dbg !2726
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2728
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2725, metadata !DIExpression()), !dbg !2726
  store ptr %ptr, ptr %arrayidx, align 8, !dbg !2728
  %conv = sext i32 %type to i64, !dbg !2729
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2725, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2726
  store i64 %conv, ptr %incdec.ptr, align 8, !dbg !2729
  %add = add nsw i32 %0, 2, !dbg !2730
  call void @llvm.dbg.value(metadata i32 %add, metadata !2724, metadata !DIExpression()), !dbg !2726
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2730
  %add2 = add nsw i32 %0, 6, !dbg !2731
  %2 = load i32, ptr @PL_savestack_max, align 4, !dbg !2731
  %cmp = icmp sgt i32 %add2, %2, !dbg !2731
  br i1 %cmp, label %if.then, label %if.end, !dbg !2730

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %2, 3, !dbg !2733
  %div.i = sdiv i32 %mul.i, 2, !dbg !2733
  %add.i = add nsw i32 %div.i, 4, !dbg !2735
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2736
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !2737
  %conv.i = sext i32 %add.i to i64, !dbg !2737
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2737
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %3, i64 noundef %mul1.i) #8, !dbg !2737
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2737
  br label %if.end, !dbg !2731

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_clearsv(ptr noundef %svp) local_unnamed_addr #0 !dbg !2739 {
entry:
  call void @llvm.dbg.value(metadata ptr %svp, metadata !2741, metadata !DIExpression()), !dbg !2748
  %0 = load ptr, ptr @PL_curpad, align 8, !dbg !2749
  %sub.ptr.lhs.cast = ptrtoint ptr %svp to i64, !dbg !2750
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i64, !dbg !2750
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2750
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3, !dbg !2750
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div, metadata !2742, metadata !DIExpression()), !dbg !2748
  %shl = shl i64 %sub.ptr.sub, 3, !dbg !2751
  call void @llvm.dbg.value(metadata i64 %shl, metadata !2744, metadata !DIExpression()), !dbg !2748
  %1 = load ptr, ptr %svp, align 8, !dbg !2752
  call void @llvm.dbg.value(metadata ptr %1, metadata !2753, metadata !DIExpression()), !dbg !2756
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2, !dbg !2758
  %2 = load i32, ptr %sv_flags.i, align 4, !dbg !2759
  %and.i = and i32 %2, -262145, !dbg !2759
  store i32 %and.i, ptr %sv_flags.i, align 4, !dbg !2759
  %shr = lshr i64 %shl, 6, !dbg !2760
  %cmp.not = icmp eq i64 %shr, %sub.ptr.div, !dbg !2760
  br i1 %cmp.not, label %if.end, label %if.then, !dbg !2762

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.1, i64 noundef %sub.ptr.div, ptr noundef nonnull %svp, ptr noundef %0) #8, !dbg !2763
  br label %if.end, !dbg !2765

if.end:                                           ; preds = %entry, %if.then
  %3 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2766
  call void @llvm.dbg.value(metadata i32 %3, metadata !2745, metadata !DIExpression()), !dbg !2767
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2766
  %idxprom = sext i32 %3 to i64, !dbg !2766
  %arrayidx = getelementptr inbounds %union.any, ptr %4, i64 %idxprom, !dbg !2766
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2747, metadata !DIExpression()), !dbg !2767
  %or = or i64 %shl, 2, !dbg !2768
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2747, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2767
  store i64 %or, ptr %arrayidx, align 8, !dbg !2768
  %add = add nsw i32 %3, 1, !dbg !2769
  call void @llvm.dbg.value(metadata i32 %add, metadata !2745, metadata !DIExpression()), !dbg !2767
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2769
  %add1 = add nsw i32 %3, 5, !dbg !2770
  %5 = load i32, ptr @PL_savestack_max, align 4, !dbg !2770
  %cmp2 = icmp sgt i32 %add1, %5, !dbg !2770
  br i1 %cmp2, label %if.then5, label %if.end6, !dbg !2769

if.then5:                                         ; preds = %if.end
  %mul.i = mul nsw i32 %5, 3, !dbg !2772
  %div.i = sdiv i32 %mul.i, 2, !dbg !2772
  %add.i = add nsw i32 %div.i, 4, !dbg !2774
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2775
  %6 = load ptr, ptr @PL_savestack, align 8, !dbg !2776
  %conv.i = sext i32 %add.i to i64, !dbg !2776
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2776
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %6, i64 noundef %mul1.i) #8, !dbg !2776
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2776
  br label %if.end6, !dbg !2770

if.end6:                                          ; preds = %if.end, %if.then5
  ret void, !dbg !2777
}

declare !dbg !2778 void @Perl_croak(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_delete(ptr noundef %hv, ptr noundef %key, i32 noundef %klen) local_unnamed_addr #0 !dbg !2781 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !2785, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata ptr %key, metadata !2786, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata i32 %klen, metadata !2787, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.value(metadata ptr %hv, metadata !2098, metadata !DIExpression()), !dbg !2789
  %cmp.not.i = icmp eq ptr %hv, null, !dbg !2791
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !2792

if.then.i:                                        ; preds = %entry
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %hv, i64 0, i32 1, !dbg !2793
  %0 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2794
  %inc.i = add i32 %0, 1, !dbg !2794
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !2794
  br label %S_SvREFCNT_inc.exit, !dbg !2793

S_SvREFCNT_inc.exit:                              ; preds = %entry, %if.then.i
  call void @llvm.dbg.value(metadata ptr %key, metadata !2795, metadata !DIExpression()) #8, !dbg !2805
  call void @llvm.dbg.value(metadata i32 %klen, metadata !2800, metadata !DIExpression()) #8, !dbg !2805
  call void @llvm.dbg.value(metadata ptr %hv, metadata !2801, metadata !DIExpression()) #8, !dbg !2805
  call void @llvm.dbg.value(metadata i32 53, metadata !2802, metadata !DIExpression()) #8, !dbg !2805
  %1 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2807
  call void @llvm.dbg.value(metadata i32 %1, metadata !2803, metadata !DIExpression()) #8, !dbg !2805
  %2 = load ptr, ptr @PL_savestack, align 8, !dbg !2807
  %idxprom.i = sext i32 %1 to i64, !dbg !2807
  %arrayidx.i = getelementptr inbounds %union.any, ptr %2, i64 %idxprom.i, !dbg !2807
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2805
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2808
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2805
  store ptr %key, ptr %arrayidx.i, align 8, !dbg !2808
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2809
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2805
  store i32 %klen, ptr %incdec.ptr.i, align 8, !dbg !2809
  %incdec.ptr2.i = getelementptr inbounds %union.any, ptr %incdec.ptr1.i, i64 1, !dbg !2810
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2805
  store ptr %hv, ptr %incdec.ptr1.i, align 8, !dbg !2810
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !2804, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2805
  store i64 53, ptr %incdec.ptr2.i, align 8, !dbg !2811
  %add.i = add nsw i32 %1, 4, !dbg !2812
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2803, metadata !DIExpression()) #8, !dbg !2805
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2812
  %add4.i = add nsw i32 %1, 8, !dbg !2813
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2813
  %cmp.i = icmp sgt i32 %add4.i, %3, !dbg !2813
  br i1 %cmp.i, label %if.then.i1, label %S_save_pushptri32ptr.exit, !dbg !2812

if.then.i1:                                       ; preds = %S_SvREFCNT_inc.exit
  %mul.i.i = mul nsw i32 %3, 3, !dbg !2815
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2815
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2817
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2818
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2819
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2819
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2819
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i.i) #8, !dbg !2819
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2819
  br label %S_save_pushptri32ptr.exit, !dbg !2813

S_save_pushptri32ptr.exit:                        ; preds = %S_SvREFCNT_inc.exit, %if.then.i1
  ret void, !dbg !2820
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_hdelete(ptr noundef %hv, ptr noundef %keysv) local_unnamed_addr #0 !dbg !2821 {
entry:
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %hv, metadata !2825, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata ptr %keysv, metadata !2826, metadata !DIExpression()), !dbg !2830
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #8, !dbg !2831
  %sv_flags = getelementptr inbounds %struct.sv, ptr %keysv, i64 0, i32 2, !dbg !2832
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2832
  %and = and i32 %0, 2098176, !dbg !2832
  %cmp = icmp eq i32 %and, 1024, !dbg !2832
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2832

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %keysv, align 8, !dbg !2832
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %1, i64 0, i32 2, !dbg !2832
  %2 = load i64, ptr %xpv_cur, align 8, !dbg !2832
  call void @llvm.dbg.value(metadata i64 %2, metadata !2827, metadata !DIExpression()), !dbg !2830
  store i64 %2, ptr %len, align 8, !dbg !2832
  %sv_u = getelementptr inbounds %struct.sv, ptr %keysv, i64 0, i32 3, !dbg !2832
  %3 = load ptr, ptr %sv_u, align 8, !dbg !2832
  br label %cond.end, !dbg !2832

cond.false:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %len, metadata !2827, metadata !DIExpression(DW_OP_deref)), !dbg !2830
  %call = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %keysv, ptr noundef nonnull %len, i32 noundef 34) #8, !dbg !2832
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !2833
  br label %cond.end, !dbg !2832

cond.end:                                         ; preds = %cond.false, %cond.true
  %4 = phi i32 [ %0, %cond.true ], [ %.pre, %cond.false ], !dbg !2833
  %cond = phi ptr [ %3, %cond.true ], [ %call, %cond.false ], !dbg !2832
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2829, metadata !DIExpression()), !dbg !2830
  %and2 = and i32 %4, 536870912, !dbg !2833
  %tobool.not = icmp eq i32 %and2, 0, !dbg !2833
  %5 = load i64, ptr %len, align 8, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %5, metadata !2827, metadata !DIExpression()), !dbg !2830
  call void @llvm.dbg.value(metadata i64 %5, metadata !2827, metadata !DIExpression()), !dbg !2830
  %conv5 = trunc i64 %5 to i32, !dbg !2830
  %sub = sub nsw i32 0, %conv5
  %spec.select = select i1 %tobool.not, i32 %conv5, i32 %sub, !dbg !2833
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2828, metadata !DIExpression()), !dbg !2830
  %sv_refcnt = getelementptr inbounds %struct.sv, ptr %hv, i64 0, i32 1, !dbg !2834
  %6 = load i32, ptr %sv_refcnt, align 8, !dbg !2834
  %inc = add i32 %6, 1, !dbg !2834
  store i32 %inc, ptr %sv_refcnt, align 8, !dbg !2834
  call void @llvm.dbg.value(metadata i64 undef, metadata !2827, metadata !DIExpression()), !dbg !2830
  %call9 = call ptr @Perl_savepvn(ptr noundef %cond, i32 noundef %conv5) #8, !dbg !2835
  call void @llvm.dbg.value(metadata ptr %call9, metadata !2795, metadata !DIExpression()) #8, !dbg !2836
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2800, metadata !DIExpression()) #8, !dbg !2836
  call void @llvm.dbg.value(metadata ptr %hv, metadata !2801, metadata !DIExpression()) #8, !dbg !2836
  call void @llvm.dbg.value(metadata i32 53, metadata !2802, metadata !DIExpression()) #8, !dbg !2836
  %7 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2838
  call void @llvm.dbg.value(metadata i32 %7, metadata !2803, metadata !DIExpression()) #8, !dbg !2836
  %8 = load ptr, ptr @PL_savestack, align 8, !dbg !2838
  %idxprom.i = sext i32 %7 to i64, !dbg !2838
  %arrayidx.i = getelementptr inbounds %union.any, ptr %8, i64 %idxprom.i, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2836
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2839
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2836
  store ptr %call9, ptr %arrayidx.i, align 8, !dbg !2839
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2840
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2836
  store i32 %spec.select, ptr %incdec.ptr.i, align 8, !dbg !2840
  %incdec.ptr2.i = getelementptr inbounds %union.any, ptr %incdec.ptr1.i, i64 1, !dbg !2841
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2836
  store ptr %hv, ptr %incdec.ptr1.i, align 8, !dbg !2841
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !2804, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2836
  store i64 53, ptr %incdec.ptr2.i, align 8, !dbg !2842
  %add.i = add nsw i32 %7, 4, !dbg !2843
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2803, metadata !DIExpression()) #8, !dbg !2836
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2843
  %add4.i = add nsw i32 %7, 8, !dbg !2844
  %9 = load i32, ptr @PL_savestack_max, align 4, !dbg !2844
  %cmp.i = icmp sgt i32 %add4.i, %9, !dbg !2844
  br i1 %cmp.i, label %if.then.i, label %S_save_pushptri32ptr.exit, !dbg !2843

if.then.i:                                        ; preds = %cond.end
  %mul.i.i = mul nsw i32 %9, 3, !dbg !2845
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2845
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2847
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2848
  %10 = load ptr, ptr @PL_savestack, align 8, !dbg !2849
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2849
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2849
  %call.i.i = call ptr @Perl_safesysrealloc(ptr noundef %10, i64 noundef %mul1.i.i) #8, !dbg !2849
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2849
  br label %S_save_pushptri32ptr.exit, !dbg !2844

S_save_pushptri32ptr.exit:                        ; preds = %cond.end, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #8, !dbg !2850
  ret void, !dbg !2850
}

declare !dbg !2851 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !2855 ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_adelete(ptr noundef %av, i64 noundef %key) local_unnamed_addr #0 !dbg !2858 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !2860, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata i64 %key, metadata !2861, metadata !DIExpression()), !dbg !2864
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2865
  call void @llvm.dbg.value(metadata i32 %0, metadata !2862, metadata !DIExpression()), !dbg !2864
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2865
  %idxprom = sext i32 %0 to i64, !dbg !2865
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2865
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2863, metadata !DIExpression()), !dbg !2864
  call void @llvm.dbg.value(metadata ptr %av, metadata !1801, metadata !DIExpression()), !dbg !2866
  %cmp.not.i = icmp eq ptr %av, null, !dbg !2868
  br i1 %cmp.not.i, label %S_SvREFCNT_inc_void.exit, label %if.then.i, !dbg !2869

if.then.i:                                        ; preds = %entry
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 1, !dbg !2870
  %2 = load i32, ptr %sv_refcnt.i, align 8, !dbg !2871
  %inc.i = add i32 %2, 1, !dbg !2871
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !2871
  br label %S_SvREFCNT_inc_void.exit, !dbg !2870

S_SvREFCNT_inc_void.exit:                         ; preds = %entry, %if.then.i
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2872
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2863, metadata !DIExpression()), !dbg !2864
  store i64 %key, ptr %arrayidx, align 8, !dbg !2872
  %incdec.ptr1 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !2873
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2863, metadata !DIExpression()), !dbg !2864
  store ptr %av, ptr %incdec.ptr, align 8, !dbg !2873
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2863, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2864
  store i64 46, ptr %incdec.ptr1, align 8, !dbg !2874
  %add = add nsw i32 %0, 3, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %add, metadata !2862, metadata !DIExpression()), !dbg !2864
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2875
  %add3 = add nsw i32 %0, 7, !dbg !2876
  %3 = load i32, ptr @PL_savestack_max, align 4, !dbg !2876
  %cmp = icmp sgt i32 %add3, %3, !dbg !2876
  br i1 %cmp, label %if.then, label %if.end, !dbg !2875

if.then:                                          ; preds = %S_SvREFCNT_inc_void.exit
  %mul.i = mul nsw i32 %3, 3, !dbg !2878
  %div.i = sdiv i32 %mul.i, 2, !dbg !2878
  %add.i = add nsw i32 %div.i, 4, !dbg !2880
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2881
  %4 = load ptr, ptr @PL_savestack, align 8, !dbg !2882
  %conv.i = sext i32 %add.i to i64, !dbg !2882
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2882
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %4, i64 noundef %mul1.i) #8, !dbg !2882
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2882
  br label %if.end, !dbg !2876

if.end:                                           ; preds = %S_SvREFCNT_inc_void.exit, %if.then
  ret void, !dbg !2883
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_destructor(ptr noundef %f, ptr noundef %p) local_unnamed_addr #0 !dbg !2884 {
entry:
  call void @llvm.dbg.value(metadata ptr %f, metadata !2889, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata ptr %p, metadata !2890, metadata !DIExpression()), !dbg !2893
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2894
  call void @llvm.dbg.value(metadata i32 %0, metadata !2891, metadata !DIExpression()), !dbg !2893
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2894
  %idxprom = sext i32 %0 to i64, !dbg !2894
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2894
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2892, metadata !DIExpression()), !dbg !2893
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2895
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2892, metadata !DIExpression()), !dbg !2893
  store ptr %f, ptr %arrayidx, align 8, !dbg !2895
  %incdec.ptr1 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !2896
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2892, metadata !DIExpression()), !dbg !2893
  store ptr %p, ptr %incdec.ptr, align 8, !dbg !2896
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2892, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2893
  store i64 24, ptr %incdec.ptr1, align 8, !dbg !2897
  %add = add nsw i32 %0, 3, !dbg !2898
  call void @llvm.dbg.value(metadata i32 %add, metadata !2891, metadata !DIExpression()), !dbg !2893
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2898
  %add3 = add nsw i32 %0, 7, !dbg !2899
  %2 = load i32, ptr @PL_savestack_max, align 4, !dbg !2899
  %cmp = icmp sgt i32 %add3, %2, !dbg !2899
  br i1 %cmp, label %if.then, label %if.end, !dbg !2898

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %2, 3, !dbg !2901
  %div.i = sdiv i32 %mul.i, 2, !dbg !2901
  %add.i = add nsw i32 %div.i, 4, !dbg !2903
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2904
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !2905
  %conv.i = sext i32 %add.i to i64, !dbg !2905
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2905
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %3, i64 noundef %mul1.i) #8, !dbg !2905
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2905
  br label %if.end, !dbg !2899

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2906
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_destructor_x(ptr noundef %f, ptr noundef %p) local_unnamed_addr #0 !dbg !2907 {
entry:
  call void @llvm.dbg.value(metadata ptr %f, metadata !2912, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.value(metadata ptr %p, metadata !2913, metadata !DIExpression()), !dbg !2916
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2917
  call void @llvm.dbg.value(metadata i32 %0, metadata !2914, metadata !DIExpression()), !dbg !2916
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2917
  %idxprom = sext i32 %0 to i64, !dbg !2917
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2917
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2915, metadata !DIExpression()), !dbg !2916
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !2918
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2915, metadata !DIExpression()), !dbg !2916
  store ptr %f, ptr %arrayidx, align 8, !dbg !2918
  %incdec.ptr1 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !2919
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2915, metadata !DIExpression()), !dbg !2916
  store ptr %p, ptr %incdec.ptr, align 8, !dbg !2919
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1, metadata !2915, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2916
  store i64 25, ptr %incdec.ptr1, align 8, !dbg !2920
  %add = add nsw i32 %0, 3, !dbg !2921
  call void @llvm.dbg.value(metadata i32 %add, metadata !2914, metadata !DIExpression()), !dbg !2916
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !2921
  %add3 = add nsw i32 %0, 7, !dbg !2922
  %2 = load i32, ptr @PL_savestack_max, align 4, !dbg !2922
  %cmp = icmp sgt i32 %add3, %2, !dbg !2922
  br i1 %cmp, label %if.then, label %if.end, !dbg !2921

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %2, 3, !dbg !2924
  %div.i = sdiv i32 %mul.i, 2, !dbg !2924
  %add.i = add nsw i32 %div.i, 4, !dbg !2926
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !2927
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !2928
  %conv.i = sext i32 %add.i to i64, !dbg !2928
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !2928
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %3, i64 noundef %mul1.i) #8, !dbg !2928
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !2928
  br label %if.end, !dbg !2922

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2929
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_hints() local_unnamed_addr #0 !dbg !2930 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 13), align 8, !dbg !2936
  %call = tail call ptr @Perl_refcounted_he_inc(ptr noundef %0) #8, !dbg !2936
  call void @llvm.dbg.value(metadata ptr %call, metadata !2932, metadata !DIExpression()), !dbg !2937
  %1 = load i32, ptr getelementptr inbounds (%struct.cop, ptr @PL_compiling, i64 0, i32 10), align 8, !dbg !2938
  %and = and i32 %1, 131072, !dbg !2939
  %tobool.not = icmp eq i32 %and, 0, !dbg !2939
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !2940

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @PL_hintgv, align 8, !dbg !2941
  %sv_u = getelementptr inbounds %struct.gv, ptr %2, i64 0, i32 3, !dbg !2941
  %3 = load ptr, ptr %sv_u, align 8, !dbg !2941
  %gp_hv = getelementptr inbounds %struct.gp, ptr %3, i64 0, i32 5, !dbg !2941
  %4 = load ptr, ptr %gp_hv, align 8, !dbg !2941
  call void @llvm.dbg.value(metadata ptr %4, metadata !2933, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %4, metadata !2795, metadata !DIExpression()) #8, !dbg !2943
  call void @llvm.dbg.value(metadata i32 %1, metadata !2800, metadata !DIExpression()) #8, !dbg !2943
  call void @llvm.dbg.value(metadata ptr %call, metadata !2801, metadata !DIExpression()) #8, !dbg !2943
  call void @llvm.dbg.value(metadata i32 30, metadata !2802, metadata !DIExpression()) #8, !dbg !2943
  %5 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2945
  call void @llvm.dbg.value(metadata i32 %5, metadata !2803, metadata !DIExpression()) #8, !dbg !2943
  %6 = load ptr, ptr @PL_savestack, align 8, !dbg !2945
  %idxprom.i = sext i32 %5 to i64, !dbg !2945
  %arrayidx.i = getelementptr inbounds %union.any, ptr %6, i64 %idxprom.i, !dbg !2945
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2943
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !2946
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2943
  store ptr %4, ptr %arrayidx.i, align 8, !dbg !2946
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !2947
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2943
  store i32 %1, ptr %incdec.ptr.i, align 8, !dbg !2947
  %incdec.ptr2.i = getelementptr inbounds %union.any, ptr %incdec.ptr1.i, i64 1, !dbg !2948
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !2804, metadata !DIExpression()) #8, !dbg !2943
  store ptr %call, ptr %incdec.ptr1.i, align 8, !dbg !2948
  call void @llvm.dbg.value(metadata ptr %incdec.ptr2.i, metadata !2804, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2943
  store i64 30, ptr %incdec.ptr2.i, align 8, !dbg !2949
  %add.i = add nsw i32 %5, 4, !dbg !2950
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2803, metadata !DIExpression()) #8, !dbg !2943
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !2950
  %add4.i = add nsw i32 %5, 8, !dbg !2951
  %7 = load i32, ptr @PL_savestack_max, align 4, !dbg !2951
  %cmp.i = icmp sgt i32 %add4.i, %7, !dbg !2951
  br i1 %cmp.i, label %if.then.i, label %S_save_pushptri32ptr.exit, !dbg !2950

if.then.i:                                        ; preds = %if.then
  %mul.i.i = mul nsw i32 %7, 3, !dbg !2952
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !2952
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !2954
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !2955
  %8 = load ptr, ptr @PL_savestack, align 8, !dbg !2956
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !2956
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !2956
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %mul1.i.i) #8, !dbg !2956
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !2956
  br label %S_save_pushptri32ptr.exit, !dbg !2951

S_save_pushptri32ptr.exit:                        ; preds = %if.then, %if.then.i
  %9 = load ptr, ptr @PL_hintgv, align 8, !dbg !2957
  %sv_u1 = getelementptr inbounds %struct.gv, ptr %9, i64 0, i32 3, !dbg !2957
  %10 = load ptr, ptr %sv_u1, align 8, !dbg !2957
  %gp_hv3 = getelementptr inbounds %struct.gp, ptr %10, i64 0, i32 5, !dbg !2957
  store ptr null, ptr %gp_hv3, align 8, !dbg !2958
  %call4 = tail call ptr @Perl_hv_copy_hints_hv(ptr noundef %4) #8, !dbg !2959
  %11 = load ptr, ptr @PL_hintgv, align 8, !dbg !2960
  %sv_u5 = getelementptr inbounds %struct.gv, ptr %11, i64 0, i32 3, !dbg !2960
  %12 = load ptr, ptr %sv_u5, align 8, !dbg !2960
  %gp_hv7 = getelementptr inbounds %struct.gp, ptr %12, i64 0, i32 5, !dbg !2960
  store ptr %call4, ptr %gp_hv7, align 8, !dbg !2961
  br label %if.end, !dbg !2962

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %1, metadata !2457, metadata !DIExpression()) #8, !dbg !2963
  call void @llvm.dbg.value(metadata ptr %call, metadata !2458, metadata !DIExpression()) #8, !dbg !2963
  call void @llvm.dbg.value(metadata i32 30, metadata !2459, metadata !DIExpression()) #8, !dbg !2963
  %13 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2966
  call void @llvm.dbg.value(metadata i32 %13, metadata !2460, metadata !DIExpression()) #8, !dbg !2963
  %14 = load ptr, ptr @PL_savestack, align 8, !dbg !2966
  %idxprom.i10 = sext i32 %13 to i64, !dbg !2966
  %arrayidx.i11 = getelementptr inbounds %union.any, ptr %14, i64 %idxprom.i10, !dbg !2966
  call void @llvm.dbg.value(metadata ptr %arrayidx.i11, metadata !2461, metadata !DIExpression()) #8, !dbg !2963
  %incdec.ptr.i12 = getelementptr inbounds %union.any, ptr %arrayidx.i11, i64 1, !dbg !2967
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i12, metadata !2461, metadata !DIExpression()) #8, !dbg !2963
  store i32 %1, ptr %arrayidx.i11, align 8, !dbg !2967
  %incdec.ptr1.i13 = getelementptr inbounds %union.any, ptr %incdec.ptr.i12, i64 1, !dbg !2968
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i13, metadata !2461, metadata !DIExpression()) #8, !dbg !2963
  store ptr %call, ptr %incdec.ptr.i12, align 8, !dbg !2968
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i13, metadata !2461, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !2963
  store i64 30, ptr %incdec.ptr1.i13, align 8, !dbg !2969
  %add.i14 = add nsw i32 %13, 3, !dbg !2970
  call void @llvm.dbg.value(metadata i32 %add.i14, metadata !2460, metadata !DIExpression()) #8, !dbg !2963
  store i32 %add.i14, ptr @PL_savestack_ix, align 4, !dbg !2970
  %add3.i = add nsw i32 %13, 7, !dbg !2971
  %15 = load i32, ptr @PL_savestack_max, align 4, !dbg !2971
  %cmp.i15 = icmp sgt i32 %add3.i, %15, !dbg !2971
  br i1 %cmp.i15, label %if.then.i22, label %if.end, !dbg !2970

if.then.i22:                                      ; preds = %if.else
  %mul.i.i16 = mul nsw i32 %15, 3, !dbg !2972
  %div.i.i17 = sdiv i32 %mul.i.i16, 2, !dbg !2972
  %add.i.i18 = add nsw i32 %div.i.i17, 4, !dbg !2974
  store i32 %add.i.i18, ptr @PL_savestack_max, align 4, !dbg !2975
  %16 = load ptr, ptr @PL_savestack, align 8, !dbg !2976
  %conv.i.i19 = sext i32 %add.i.i18 to i64, !dbg !2976
  %mul1.i.i20 = shl nsw i64 %conv.i.i19, 3, !dbg !2976
  %call.i.i21 = tail call ptr @Perl_safesysrealloc(ptr noundef %16, i64 noundef %mul1.i.i20) #8, !dbg !2976
  store ptr %call.i.i21, ptr @PL_savestack, align 8, !dbg !2976
  br label %if.end, !dbg !2971

if.end:                                           ; preds = %if.then.i22, %if.else, %S_save_pushptri32ptr.exit
  ret void, !dbg !2977
}

declare !dbg !2978 ptr @Perl_refcounted_he_inc(ptr noundef) local_unnamed_addr #1

declare !dbg !2981 ptr @Perl_hv_copy_hints_hv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_aelem_flags(ptr noundef %av, i64 noundef %idx, ptr nocapture noundef %sptr, i32 noundef %flags) local_unnamed_addr #0 !dbg !2984 {
entry:
  call void @llvm.dbg.value(metadata ptr %av, metadata !2988, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %idx, metadata !2989, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !2990, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2991, metadata !DIExpression()), !dbg !2995
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !2996
  call void @llvm.dbg.value(metadata i32 %0, metadata !2992, metadata !DIExpression()), !dbg !2995
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !2996
  %idxprom = sext i32 %0 to i64, !dbg !2996
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !2996
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !2993, metadata !DIExpression()), !dbg !2995
  %2 = load ptr, ptr %sptr, align 8, !dbg !2997
  %sv_flags = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 2, !dbg !2997
  %3 = load i32, ptr %sv_flags, align 4, !dbg !2997
  %and = and i32 %3, 2097152, !dbg !2997
  %tobool.not = icmp eq i32 %and, 0, !dbg !2997
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !2997

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %2) #8, !dbg !2997
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  call void @llvm.dbg.value(metadata ptr %av, metadata !2098, metadata !DIExpression()), !dbg !2998
  %cmp.not.i = icmp eq ptr %av, null, !dbg !3000
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !3001

if.then.i:                                        ; preds = %land.end
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 1, !dbg !3002
  %4 = load i32, ptr %sv_refcnt.i, align 8, !dbg !3003
  %inc.i = add i32 %4, 1, !dbg !3003
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !3003
  br label %S_SvREFCNT_inc.exit, !dbg !3002

S_SvREFCNT_inc.exit:                              ; preds = %land.end, %if.then.i
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !3004
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2993, metadata !DIExpression()), !dbg !2995
  store ptr %av, ptr %arrayidx, align 8, !dbg !3004
  %incdec.ptr3 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !3005
  call void @llvm.dbg.value(metadata ptr %incdec.ptr3, metadata !2993, metadata !DIExpression()), !dbg !2995
  store i64 %idx, ptr %incdec.ptr, align 8, !dbg !3005
  %5 = load ptr, ptr %sptr, align 8, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %5, metadata !2098, metadata !DIExpression()), !dbg !3007
  %cmp.not.i55 = icmp eq ptr %5, null, !dbg !3009
  br i1 %cmp.not.i55, label %S_SvREFCNT_inc.exit59, label %if.then.i58, !dbg !3010

if.then.i58:                                      ; preds = %S_SvREFCNT_inc.exit
  %sv_refcnt.i56 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 1, !dbg !3011
  %6 = load i32, ptr %sv_refcnt.i56, align 8, !dbg !3012
  %inc.i57 = add i32 %6, 1, !dbg !3012
  store i32 %inc.i57, ptr %sv_refcnt.i56, align 8, !dbg !3012
  br label %S_SvREFCNT_inc.exit59, !dbg !3011

S_SvREFCNT_inc.exit59:                            ; preds = %S_SvREFCNT_inc.exit, %if.then.i58
  %incdec.ptr5 = getelementptr inbounds %union.any, ptr %incdec.ptr3, i64 1, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %incdec.ptr5, metadata !2993, metadata !DIExpression()), !dbg !2995
  store ptr %5, ptr %incdec.ptr3, align 8, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %incdec.ptr5, metadata !2993, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2995
  store i64 52, ptr %incdec.ptr5, align 8, !dbg !3013
  %add = add nsw i32 %0, 4, !dbg !3014
  call void @llvm.dbg.value(metadata i32 %add, metadata !2992, metadata !DIExpression()), !dbg !2995
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !3014
  %add7 = add nsw i32 %0, 8, !dbg !3015
  %7 = load i32, ptr @PL_savestack_max, align 4, !dbg !3015
  %cmp = icmp sgt i32 %add7, %7, !dbg !3015
  br i1 %cmp, label %if.then, label %if.end, !dbg !3014

if.then:                                          ; preds = %S_SvREFCNT_inc.exit59
  %mul.i = mul nsw i32 %7, 3, !dbg !3017
  %div.i = sdiv i32 %mul.i, 2, !dbg !3017
  %add.i = add nsw i32 %div.i, 4, !dbg !3019
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !3020
  %8 = load ptr, ptr @PL_savestack, align 8, !dbg !3021
  %conv.i = sext i32 %add.i to i64, !dbg !3021
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !3021
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %mul1.i) #8, !dbg !3021
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !3021
  br label %if.end, !dbg !3015

if.end:                                           ; preds = %S_SvREFCNT_inc.exit59, %if.then
  %sv_flags10 = getelementptr inbounds %struct.av, ptr %av, i64 0, i32 2, !dbg !3022
  %9 = load i32, ptr %sv_flags10, align 4, !dbg !3022
  %10 = and i32 %9, -1073741824, !dbg !3022
  %.not = icmp eq i32 %10, -2147483648, !dbg !3022
  br i1 %.not, label %if.then18, label %if.end19, !dbg !3022

if.then18:                                        ; preds = %if.end
  tail call void @Perl_av_reify(ptr noundef nonnull %av) #8, !dbg !3024
  br label %if.end19, !dbg !3024

if.end19:                                         ; preds = %if.end, %if.then18
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !2128, metadata !DIExpression()) #8, !dbg !3025
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2133, metadata !DIExpression()) #8, !dbg !3025
  %11 = load ptr, ptr %sptr, align 8, !dbg !3027
  call void @llvm.dbg.value(metadata ptr %11, metadata !2134, metadata !DIExpression()) #8, !dbg !3025
  %and.i = and i32 %flags, 2, !dbg !3028
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !3028
  br i1 %tobool.not.i, label %cond.false.i, label %cond.end.i, !dbg !3029

cond.false.i:                                     ; preds = %if.end19
  %call.i60 = tail call ptr @Perl_newSV(i64 noundef 0) #8, !dbg !3030
  store ptr %call.i60, ptr %sptr, align 8, !dbg !3031
  br label %cond.end.i, !dbg !3029

cond.end.i:                                       ; preds = %cond.false.i, %if.end19
  %cond.i = phi ptr [ %call.i60, %cond.false.i ], [ %11, %if.end19 ], !dbg !3029
  call void @llvm.dbg.value(metadata ptr %cond.i, metadata !2135, metadata !DIExpression()) #8, !dbg !3025
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2, !dbg !3032
  %12 = load i32, ptr %sv_flags.i, align 4, !dbg !3032
  %and1.i = and i32 %12, 255, !dbg !3032
  %cmp.i = icmp ugt i32 %and1.i, 6, !dbg !3033
  br i1 %cmp.i, label %land.lhs.true.i, label %S_save_scalar_at.exit, !dbg !3034

land.lhs.true.i:                                  ; preds = %cond.end.i
  %13 = load ptr, ptr %11, align 8, !dbg !3035
  %xmg_u.i = getelementptr inbounds %struct.xpvmg, ptr %13, i64 0, i32 1, !dbg !3035
  %14 = load ptr, ptr %xmg_u.i, align 8, !dbg !3035
  %tobool2.not.i = icmp eq ptr %14, null, !dbg !3035
  br i1 %tobool2.not.i, label %S_save_scalar_at.exit, label %if.then.i61, !dbg !3036

if.then.i61:                                      ; preds = %land.lhs.true.i
  %and4.i = and i32 %12, 2097152, !dbg !3037
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !3037
  br i1 %tobool5.not.i, label %if.end.i, label %if.then6.i, !dbg !3038

if.then6.i:                                       ; preds = %if.then.i61
  %and8.i = lshr i32 %12, 4, !dbg !3039
  %shr.i = and i32 %and8.i, 1792, !dbg !3039
  %or.i = or i32 %shr.i, %12, !dbg !3040
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !3040
  br label %if.end.i, !dbg !3041

if.end.i:                                         ; preds = %if.then6.i, %if.then.i61
  br i1 %tobool.not.i, label %S_save_scalar_at.exit.thread, label %cleanup, !dbg !3042

S_save_scalar_at.exit.thread:                     ; preds = %if.end.i
  %and13.i = and i32 %flags, 1, !dbg !3043
  %tobool14.i = icmp ne i32 %and13.i, 0, !dbg !3043
  tail call void @Perl_mg_localize(ptr noundef nonnull %11, ptr noundef %cond.i, i1 noundef zeroext %tobool14.i) #8, !dbg !3043
  %.pre = load ptr, ptr %sptr, align 8, !dbg !3044
  br label %if.end24, !dbg !3045

S_save_scalar_at.exit:                            ; preds = %cond.end.i, %land.lhs.true.i
  br i1 %tobool.not.i, label %if.end24, label %cleanup, !dbg !3045

if.end24:                                         ; preds = %S_save_scalar_at.exit.thread, %S_save_scalar_at.exit
  %15 = phi ptr [ %.pre, %S_save_scalar_at.exit.thread ], [ %cond.i, %S_save_scalar_at.exit ], !dbg !3044
  call void @llvm.dbg.value(metadata ptr %15, metadata !2994, metadata !DIExpression()), !dbg !2995
  %sv_flags25 = getelementptr inbounds %struct.sv, ptr %av, i64 0, i32 2, !dbg !3046
  %16 = load i32, ptr %sv_flags25, align 4, !dbg !3046
  %and26 = and i32 %16, 8388608, !dbg !3046
  %tobool27.not = icmp eq i32 %and26, 0, !dbg !3046
  br i1 %tobool27.not, label %cleanup, label %cond.true28, !dbg !3048

cond.true28:                                      ; preds = %if.end24
  %call29 = tail call ptr @Perl_mg_find(ptr noundef nonnull %av, i32 noundef 80) #8, !dbg !3046
  %tobool30.not = icmp eq ptr %call29, null, !dbg !3046
  br i1 %tobool30.not, label %cleanup, label %if.then34, !dbg !3046

if.then34:                                        ; preds = %cond.true28
  %call35 = tail call ptr @Perl_sv_2mortal(ptr noundef %15) #8, !dbg !3049
  br label %cleanup, !dbg !3049

cleanup:                                          ; preds = %if.end.i, %if.then34, %if.end24, %cond.true28, %S_save_scalar_at.exit
  ret void, !dbg !3050
}

declare !dbg !3051 ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3054 ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_helem_flags(ptr noundef %hv, ptr noundef %key, ptr nocapture noundef %sptr, i32 noundef %flags) local_unnamed_addr #0 !dbg !3055 {
entry:
  call void @llvm.dbg.value(metadata ptr %hv, metadata !3059, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %key, metadata !3060, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !3061, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3062, metadata !DIExpression()), !dbg !3067
  %0 = load ptr, ptr %sptr, align 8, !dbg !3068
  %sv_flags = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2, !dbg !3068
  %1 = load i32, ptr %sv_flags, align 4, !dbg !3068
  %and = and i32 %1, 2097152, !dbg !3068
  %tobool.not = icmp eq i32 %and, 0, !dbg !3068
  br i1 %tobool.not, label %land.end, label %land.rhs, !dbg !3068

land.rhs:                                         ; preds = %entry
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #8, !dbg !3068
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %2 = load i32, ptr @PL_savestack_ix, align 4, !dbg !3069
  call void @llvm.dbg.value(metadata i32 %2, metadata !3064, metadata !DIExpression()), !dbg !3070
  %3 = load ptr, ptr @PL_savestack, align 8, !dbg !3069
  %idxprom = sext i32 %2 to i64, !dbg !3069
  %arrayidx = getelementptr inbounds %union.any, ptr %3, i64 %idxprom, !dbg !3069
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !3066, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata ptr %hv, metadata !2098, metadata !DIExpression()), !dbg !3071
  %cmp.not.i = icmp eq ptr %hv, null, !dbg !3073
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !3074

if.then.i:                                        ; preds = %land.end
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %hv, i64 0, i32 1, !dbg !3075
  %4 = load i32, ptr %sv_refcnt.i, align 8, !dbg !3076
  %inc.i = add i32 %4, 1, !dbg !3076
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !3076
  br label %S_SvREFCNT_inc.exit, !dbg !3075

S_SvREFCNT_inc.exit:                              ; preds = %land.end, %if.then.i
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !3077
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3066, metadata !DIExpression()), !dbg !3070
  store ptr %hv, ptr %arrayidx, align 8, !dbg !3077
  %call3 = tail call ptr @Perl_newSVsv(ptr noundef %key) #8, !dbg !3078
  %incdec.ptr4 = getelementptr inbounds %union.any, ptr %incdec.ptr, i64 1, !dbg !3078
  call void @llvm.dbg.value(metadata ptr %incdec.ptr4, metadata !3066, metadata !DIExpression()), !dbg !3070
  store ptr %call3, ptr %incdec.ptr, align 8, !dbg !3078
  %5 = load ptr, ptr %sptr, align 8, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %5, metadata !2098, metadata !DIExpression()), !dbg !3080
  %cmp.not.i41 = icmp eq ptr %5, null, !dbg !3082
  br i1 %cmp.not.i41, label %S_SvREFCNT_inc.exit45, label %if.then.i44, !dbg !3083

if.then.i44:                                      ; preds = %S_SvREFCNT_inc.exit
  %sv_refcnt.i42 = getelementptr inbounds %struct.sv, ptr %5, i64 0, i32 1, !dbg !3084
  %6 = load i32, ptr %sv_refcnt.i42, align 8, !dbg !3085
  %inc.i43 = add i32 %6, 1, !dbg !3085
  store i32 %inc.i43, ptr %sv_refcnt.i42, align 8, !dbg !3085
  br label %S_SvREFCNT_inc.exit45, !dbg !3084

S_SvREFCNT_inc.exit45:                            ; preds = %S_SvREFCNT_inc.exit, %if.then.i44
  %incdec.ptr6 = getelementptr inbounds %union.any, ptr %incdec.ptr4, i64 1, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !3066, metadata !DIExpression()), !dbg !3070
  store ptr %5, ptr %incdec.ptr4, align 8, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !3066, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3070
  store i64 48, ptr %incdec.ptr6, align 8, !dbg !3086
  %add = add nsw i32 %2, 4, !dbg !3087
  call void @llvm.dbg.value(metadata i32 %add, metadata !3064, metadata !DIExpression()), !dbg !3070
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !3087
  %add8 = add nsw i32 %2, 8, !dbg !3088
  %7 = load i32, ptr @PL_savestack_max, align 4, !dbg !3088
  %cmp = icmp sgt i32 %add8, %7, !dbg !3088
  br i1 %cmp, label %if.then, label %if.end, !dbg !3087

if.then:                                          ; preds = %S_SvREFCNT_inc.exit45
  %mul.i = mul nsw i32 %7, 3, !dbg !3090
  %div.i = sdiv i32 %mul.i, 2, !dbg !3090
  %add.i = add nsw i32 %div.i, 4, !dbg !3092
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !3093
  %8 = load ptr, ptr @PL_savestack, align 8, !dbg !3094
  %conv.i = sext i32 %add.i to i64, !dbg !3094
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !3094
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %mul1.i) #8, !dbg !3094
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !3094
  br label %if.end, !dbg !3088

if.end:                                           ; preds = %S_SvREFCNT_inc.exit45, %if.then
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !2128, metadata !DIExpression()) #8, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2133, metadata !DIExpression()) #8, !dbg !3095
  %9 = load ptr, ptr %sptr, align 8, !dbg !3097
  call void @llvm.dbg.value(metadata ptr %9, metadata !2134, metadata !DIExpression()) #8, !dbg !3095
  %and.i = and i32 %flags, 2, !dbg !3098
  %tobool.not.i = icmp eq i32 %and.i, 0, !dbg !3098
  br i1 %tobool.not.i, label %cond.false.i, label %cond.end.i, !dbg !3099

cond.false.i:                                     ; preds = %if.end
  %call.i46 = tail call ptr @Perl_newSV(i64 noundef 0) #8, !dbg !3100
  store ptr %call.i46, ptr %sptr, align 8, !dbg !3101
  br label %cond.end.i, !dbg !3099

cond.end.i:                                       ; preds = %cond.false.i, %if.end
  %cond.i = phi ptr [ %call.i46, %cond.false.i ], [ %9, %if.end ], !dbg !3099
  call void @llvm.dbg.value(metadata ptr %cond.i, metadata !2135, metadata !DIExpression()) #8, !dbg !3095
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2, !dbg !3102
  %10 = load i32, ptr %sv_flags.i, align 4, !dbg !3102
  %and1.i = and i32 %10, 255, !dbg !3102
  %cmp.i = icmp ugt i32 %and1.i, 6, !dbg !3103
  br i1 %cmp.i, label %land.lhs.true.i, label %S_save_scalar_at.exit, !dbg !3104

land.lhs.true.i:                                  ; preds = %cond.end.i
  %11 = load ptr, ptr %9, align 8, !dbg !3105
  %xmg_u.i = getelementptr inbounds %struct.xpvmg, ptr %11, i64 0, i32 1, !dbg !3105
  %12 = load ptr, ptr %xmg_u.i, align 8, !dbg !3105
  %tobool2.not.i = icmp eq ptr %12, null, !dbg !3105
  br i1 %tobool2.not.i, label %S_save_scalar_at.exit, label %if.then.i47, !dbg !3106

if.then.i47:                                      ; preds = %land.lhs.true.i
  %and4.i = and i32 %10, 2097152, !dbg !3107
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !3107
  br i1 %tobool5.not.i, label %if.end.i, label %if.then6.i, !dbg !3108

if.then6.i:                                       ; preds = %if.then.i47
  %and8.i = lshr i32 %10, 4, !dbg !3109
  %shr.i = and i32 %and8.i, 1792, !dbg !3109
  %or.i = or i32 %shr.i, %10, !dbg !3110
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !3110
  br label %if.end.i, !dbg !3111

if.end.i:                                         ; preds = %if.then6.i, %if.then.i47
  br i1 %tobool.not.i, label %S_save_scalar_at.exit.thread, label %cleanup, !dbg !3112

S_save_scalar_at.exit.thread:                     ; preds = %if.end.i
  %and13.i = and i32 %flags, 1, !dbg !3113
  %tobool14.i = icmp ne i32 %and13.i, 0, !dbg !3113
  tail call void @Perl_mg_localize(ptr noundef nonnull %9, ptr noundef %cond.i, i1 noundef zeroext %tobool14.i) #8, !dbg !3113
  %.pre = load ptr, ptr %sptr, align 8, !dbg !3114
  br label %if.end15, !dbg !3115

S_save_scalar_at.exit:                            ; preds = %cond.end.i, %land.lhs.true.i
  br i1 %tobool.not.i, label %if.end15, label %cleanup, !dbg !3115

if.end15:                                         ; preds = %S_save_scalar_at.exit.thread, %S_save_scalar_at.exit
  %13 = phi ptr [ %.pre, %S_save_scalar_at.exit.thread ], [ %cond.i, %S_save_scalar_at.exit ], !dbg !3114
  call void @llvm.dbg.value(metadata ptr %13, metadata !3063, metadata !DIExpression()), !dbg !3067
  %sv_flags16 = getelementptr inbounds %struct.sv, ptr %hv, i64 0, i32 2, !dbg !3116
  %14 = load i32, ptr %sv_flags16, align 4, !dbg !3116
  %and17 = and i32 %14, 8388608, !dbg !3116
  %tobool18.not = icmp eq i32 %and17, 0, !dbg !3116
  br i1 %tobool18.not, label %cleanup, label %cond.true19, !dbg !3118

cond.true19:                                      ; preds = %if.end15
  %call20 = tail call ptr @Perl_mg_find(ptr noundef nonnull %hv, i32 noundef 80) #8, !dbg !3116
  %tobool21.not = icmp eq ptr %call20, null, !dbg !3116
  br i1 %tobool21.not, label %cleanup, label %if.then25, !dbg !3116

if.then25:                                        ; preds = %cond.true19
  %call26 = tail call ptr @Perl_sv_2mortal(ptr noundef %13) #8, !dbg !3119
  br label %cleanup, !dbg !3119

cleanup:                                          ; preds = %if.end.i, %if.then25, %if.end15, %cond.true19, %S_save_scalar_at.exit
  ret void, !dbg !3120
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_save_svref(ptr noundef %sptr) local_unnamed_addr #0 !dbg !3121 {
entry:
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !3125, metadata !DIExpression()), !dbg !3126
  %0 = load ptr, ptr %sptr, align 8, !dbg !3127
  %sv_flags = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2, !dbg !3127
  %1 = load i32, ptr %sv_flags, align 4, !dbg !3127
  %and = and i32 %1, 2097152, !dbg !3127
  %tobool.not = icmp eq i32 %and, 0, !dbg !3127
  br i1 %tobool.not, label %if.then.i, label %land.end, !dbg !3127

land.end:                                         ; preds = %entry
  %call = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #8, !dbg !3127
  %.pr = load ptr, ptr %sptr, align 8, !dbg !3128
  call void @llvm.dbg.value(metadata ptr %.pr, metadata !2098, metadata !DIExpression()), !dbg !3129
  %cmp.not.i = icmp eq ptr %.pr, null, !dbg !3131
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !3132

if.then.i:                                        ; preds = %entry, %land.end
  %2 = phi ptr [ %.pr, %land.end ], [ %0, %entry ]
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 1, !dbg !3133
  %3 = load i32, ptr %sv_refcnt.i, align 8, !dbg !3134
  %inc.i = add i32 %3, 1, !dbg !3134
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !3134
  br label %S_SvREFCNT_inc.exit, !dbg !3133

S_SvREFCNT_inc.exit:                              ; preds = %land.end, %if.then.i
  %4 = phi ptr [ null, %land.end ], [ %2, %if.then.i ]
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !2063, metadata !DIExpression()) #8, !dbg !3135
  call void @llvm.dbg.value(metadata ptr %.pr, metadata !2064, metadata !DIExpression()) #8, !dbg !3135
  call void @llvm.dbg.value(metadata i32 44, metadata !2065, metadata !DIExpression()) #8, !dbg !3135
  %5 = load i32, ptr @PL_savestack_ix, align 4, !dbg !3137
  call void @llvm.dbg.value(metadata i32 %5, metadata !2066, metadata !DIExpression()) #8, !dbg !3135
  %6 = load ptr, ptr @PL_savestack, align 8, !dbg !3137
  %idxprom.i = sext i32 %5 to i64, !dbg !3137
  %arrayidx.i = getelementptr inbounds %union.any, ptr %6, i64 %idxprom.i, !dbg !3137
  call void @llvm.dbg.value(metadata ptr %arrayidx.i, metadata !2067, metadata !DIExpression()) #8, !dbg !3135
  %incdec.ptr.i = getelementptr inbounds %union.any, ptr %arrayidx.i, i64 1, !dbg !3138
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i, metadata !2067, metadata !DIExpression()) #8, !dbg !3135
  store ptr %sptr, ptr %arrayidx.i, align 8, !dbg !3138
  %incdec.ptr1.i = getelementptr inbounds %union.any, ptr %incdec.ptr.i, i64 1, !dbg !3139
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression()) #8, !dbg !3135
  store ptr %4, ptr %incdec.ptr.i, align 8, !dbg !3139
  call void @llvm.dbg.value(metadata ptr %incdec.ptr1.i, metadata !2067, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)) #8, !dbg !3135
  store i64 44, ptr %incdec.ptr1.i, align 8, !dbg !3140
  %add.i = add nsw i32 %5, 3, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !2066, metadata !DIExpression()) #8, !dbg !3135
  store i32 %add.i, ptr @PL_savestack_ix, align 4, !dbg !3141
  %add3.i = add nsw i32 %5, 7, !dbg !3142
  %7 = load i32, ptr @PL_savestack_max, align 4, !dbg !3142
  %cmp.i = icmp sgt i32 %add3.i, %7, !dbg !3142
  br i1 %cmp.i, label %if.then.i8, label %Perl_save_pushptrptr.exit, !dbg !3141

if.then.i8:                                       ; preds = %S_SvREFCNT_inc.exit
  %mul.i.i = mul nsw i32 %7, 3, !dbg !3143
  %div.i.i = sdiv i32 %mul.i.i, 2, !dbg !3143
  %add.i.i = add nsw i32 %div.i.i, 4, !dbg !3145
  store i32 %add.i.i, ptr @PL_savestack_max, align 4, !dbg !3146
  %8 = load ptr, ptr @PL_savestack, align 8, !dbg !3147
  %conv.i.i = sext i32 %add.i.i to i64, !dbg !3147
  %mul1.i.i = shl nsw i64 %conv.i.i, 3, !dbg !3147
  %call.i.i = tail call ptr @Perl_safesysrealloc(ptr noundef %8, i64 noundef %mul1.i.i) #8, !dbg !3147
  store ptr %call.i.i, ptr @PL_savestack, align 8, !dbg !3147
  br label %Perl_save_pushptrptr.exit, !dbg !3142

Perl_save_pushptrptr.exit:                        ; preds = %S_SvREFCNT_inc.exit, %if.then.i8
  call void @llvm.dbg.value(metadata ptr %sptr, metadata !2128, metadata !DIExpression()) #8, !dbg !3148
  call void @llvm.dbg.value(metadata i32 1, metadata !2133, metadata !DIExpression()) #8, !dbg !3148
  %9 = load ptr, ptr %sptr, align 8, !dbg !3150
  call void @llvm.dbg.value(metadata ptr %9, metadata !2134, metadata !DIExpression()) #8, !dbg !3148
  %call.i = tail call ptr @Perl_newSV(i64 noundef 0) #8, !dbg !3151
  store ptr %call.i, ptr %sptr, align 8, !dbg !3152
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !2135, metadata !DIExpression()) #8, !dbg !3148
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %9, i64 0, i32 2, !dbg !3153
  %10 = load i32, ptr %sv_flags.i, align 4, !dbg !3153
  %and1.i = and i32 %10, 255, !dbg !3153
  %cmp.i9 = icmp ugt i32 %and1.i, 6, !dbg !3154
  br i1 %cmp.i9, label %land.lhs.true.i, label %S_save_scalar_at.exit, !dbg !3155

land.lhs.true.i:                                  ; preds = %Perl_save_pushptrptr.exit
  %11 = load ptr, ptr %9, align 8, !dbg !3156
  %xmg_u.i = getelementptr inbounds %struct.xpvmg, ptr %11, i64 0, i32 1, !dbg !3156
  %12 = load ptr, ptr %xmg_u.i, align 8, !dbg !3156
  %tobool2.not.i = icmp eq ptr %12, null, !dbg !3156
  br i1 %tobool2.not.i, label %S_save_scalar_at.exit, label %if.then.i10, !dbg !3157

if.then.i10:                                      ; preds = %land.lhs.true.i
  %and4.i = and i32 %10, 2097152, !dbg !3158
  %tobool5.not.i = icmp eq i32 %and4.i, 0, !dbg !3158
  br i1 %tobool5.not.i, label %if.end.i, label %if.then6.i, !dbg !3159

if.then6.i:                                       ; preds = %if.then.i10
  %and8.i = lshr i32 %10, 4, !dbg !3160
  %shr.i = and i32 %and8.i, 1792, !dbg !3160
  %or.i = or i32 %shr.i, %10, !dbg !3161
  store i32 %or.i, ptr %sv_flags.i, align 4, !dbg !3161
  br label %if.end.i, !dbg !3162

if.end.i:                                         ; preds = %if.then6.i, %if.then.i10
  tail call void @Perl_mg_localize(ptr noundef nonnull %9, ptr noundef %call.i, i1 noundef zeroext true) #8, !dbg !3163
  br label %S_save_scalar_at.exit, !dbg !3163

S_save_scalar_at.exit:                            ; preds = %Perl_save_pushptrptr.exit, %land.lhs.true.i, %if.end.i
  ret ptr %call.i, !dbg !3164
}

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_save_alloc(i32 noundef %size, i32 noundef %pad) local_unnamed_addr #0 !dbg !3165 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !3169, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i32 %pad, metadata !3170, metadata !DIExpression()), !dbg !3174
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !3175
  call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i32 %pad), metadata !3171, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3174
  %add2 = add nsw i32 %pad, %size, !dbg !3176
  %sub = add nsw i32 %add2, -1, !dbg !3177
  %conv3 = sext i32 %sub to i64, !dbg !3178
  %div35 = lshr i64 %conv3, 3, !dbg !3179
  %add4 = add nuw nsw i64 %div35, 1, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %add4, metadata !3172, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 %add4, metadata !3173, metadata !DIExpression(DW_OP_constu, 6, DW_OP_shl, DW_OP_stack_value)), !dbg !3174
  %1 = icmp sgt i32 %add2, 0, !dbg !3181
  br i1 %1, label %if.end, label %if.then, !dbg !3183

if.then:                                          ; preds = %entry
  %conv = sext i32 %pad to i64, !dbg !3184
  call void @llvm.dbg.value(metadata !DIArgList(i32 %0, i64 %conv), metadata !3171, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_constu, 3, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3174
  %conv6 = sext i32 %size to i64, !dbg !3185
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.2, i64 noundef %add4, i64 noundef %conv6, i64 noundef %conv) #8, !dbg !3186
  %.pre = load i32, ptr @PL_savestack_ix, align 4, !dbg !3187
  br label %if.end, !dbg !3186

if.end:                                           ; preds = %entry, %if.then
  %2 = phi i32 [ %0, %entry ], [ %.pre, %if.then ], !dbg !3187
  %3 = ashr i32 %sub, 3, !dbg !3187
  %add10 = add i32 %2, %3, !dbg !3187
  %add11 = add i32 %add10, 6, !dbg !3187
  %4 = load i32, ptr @PL_savestack_max, align 4, !dbg !3187
  %cmp12 = icmp sgt i32 %add11, %4, !dbg !3187
  br i1 %cmp12, label %if.then16, label %if.end.if.end20_crit_edge, !dbg !3189

if.end.if.end20_crit_edge:                        ; preds = %if.end
  %.pre38 = load ptr, ptr @PL_savestack, align 8, !dbg !3190
  br label %if.end20, !dbg !3189

if.then16:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 undef, metadata !2000, metadata !DIExpression()) #8, !dbg !3191
  store i32 %add11, ptr @PL_savestack_max, align 4, !dbg !3193
  %5 = load ptr, ptr @PL_savestack, align 8, !dbg !3194
  %conv.i = sext i32 %add11 to i64, !dbg !3194
  %mul.i = shl nsw i64 %conv.i, 3, !dbg !3194
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %5, i64 noundef %mul.i) #8, !dbg !3194
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !3194
  %.pre37 = load i32, ptr @PL_savestack_ix, align 4, !dbg !3195
  br label %if.end20, !dbg !3187

if.end20:                                         ; preds = %if.end.if.end20_crit_edge, %if.then16
  %6 = phi ptr [ %.pre38, %if.end.if.end20_crit_edge ], [ %call.i, %if.then16 ], !dbg !3190
  %7 = phi i32 [ %2, %if.end.if.end20_crit_edge ], [ %.pre37, %if.then16 ], !dbg !3195
  %shl = shl i64 %add4, 6, !dbg !3196
  call void @llvm.dbg.value(metadata i64 %shl, metadata !3173, metadata !DIExpression()), !dbg !3174
  %arrayidx.idx = shl i32 %0, 3, !dbg !3197
  %add = add i32 %arrayidx.idx, %pad, !dbg !3198
  call void @llvm.dbg.value(metadata i32 %add, metadata !3171, metadata !DIExpression()), !dbg !3174
  %8 = trunc i64 %add4 to i32, !dbg !3195
  %conv23 = add i32 %7, %8, !dbg !3195
  %inc = add nsw i32 %conv23, 1, !dbg !3190
  store i32 %inc, ptr @PL_savestack_ix, align 4, !dbg !3190
  %idxprom24 = sext i32 %conv23 to i64, !dbg !3190
  %arrayidx25 = getelementptr inbounds %union.any, ptr %6, i64 %idxprom24, !dbg !3190
  store i64 %shl, ptr %arrayidx25, align 8, !dbg !3190
  ret i32 %add, !dbg !3199
}

; Function Attrs: nounwind uwtable
define dso_local void @Perl_save_aliased_sv(ptr nocapture noundef readonly %gv) local_unnamed_addr #0 !dbg !3200 {
entry:
  call void @llvm.dbg.value(metadata ptr %gv, metadata !3204, metadata !DIExpression()), !dbg !3207
  %0 = load i32, ptr @PL_savestack_ix, align 4, !dbg !3208
  call void @llvm.dbg.value(metadata i32 %0, metadata !3205, metadata !DIExpression()), !dbg !3207
  %1 = load ptr, ptr @PL_savestack, align 8, !dbg !3208
  %idxprom = sext i32 %0 to i64, !dbg !3208
  %arrayidx = getelementptr inbounds %union.any, ptr %1, i64 %idxprom, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %arrayidx, metadata !3206, metadata !DIExpression()), !dbg !3207
  %sv_u = getelementptr inbounds %struct.gv, ptr %gv, i64 0, i32 3, !dbg !3209
  %2 = load ptr, ptr %sv_u, align 8, !dbg !3209
  %call = tail call ptr @Perl_gp_ref(ptr noundef %2) #8, !dbg !3209
  %incdec.ptr = getelementptr inbounds %union.any, ptr %arrayidx, i64 1, !dbg !3209
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3206, metadata !DIExpression()), !dbg !3207
  store ptr %call, ptr %arrayidx, align 8, !dbg !3209
  %3 = load ptr, ptr %sv_u, align 8, !dbg !3210
  %gp_flags = getelementptr inbounds %struct.gp, ptr %3, i64 0, i32 9, !dbg !3210
  %bf.load = load i32, ptr %gp_flags, align 8, !dbg !3210
  %4 = lshr i32 %bf.load, 23, !dbg !3210
  %shl = and i32 %4, 256, !dbg !3210
  %or = or i32 %shl, 4, !dbg !3210
  %conv = zext i32 %or to i64, !dbg !3210
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3206, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !3207
  store i64 %conv, ptr %incdec.ptr, align 8, !dbg !3210
  %add = add nsw i32 %0, 2, !dbg !3211
  call void @llvm.dbg.value(metadata i32 %add, metadata !3205, metadata !DIExpression()), !dbg !3207
  store i32 %add, ptr @PL_savestack_ix, align 4, !dbg !3211
  %add4 = add nsw i32 %0, 6, !dbg !3212
  %5 = load i32, ptr @PL_savestack_max, align 4, !dbg !3212
  %cmp = icmp sgt i32 %add4, %5, !dbg !3212
  br i1 %cmp, label %if.then, label %if.end, !dbg !3211

if.then:                                          ; preds = %entry
  %mul.i = mul nsw i32 %5, 3, !dbg !3214
  %div.i = sdiv i32 %mul.i, 2, !dbg !3214
  %add.i = add nsw i32 %div.i, 4, !dbg !3216
  store i32 %add.i, ptr @PL_savestack_max, align 4, !dbg !3217
  %6 = load ptr, ptr @PL_savestack, align 8, !dbg !3218
  %conv.i = sext i32 %add.i to i64, !dbg !3218
  %mul1.i = shl nsw i64 %conv.i, 3, !dbg !3218
  %call.i = tail call ptr @Perl_safesysrealloc(ptr noundef %6, i64 noundef %mul1.i) #8, !dbg !3218
  store ptr %call.i, ptr @PL_savestack, align 8, !dbg !3218
  br label %if.end, !dbg !3212

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3219
}

declare !dbg !3220 void @Perl_sv_replace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare !dbg !3223 i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #5

declare !dbg !3224 void @Perl_safesysfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #6

declare !dbg !3225 void @Perl_gp_free(ptr noundef) local_unnamed_addr #1

declare !dbg !3226 void @Perl_padname_free(ptr noundef) local_unnamed_addr #1

declare !dbg !3229 void @Perl_refcounted_he_free(ptr noundef) local_unnamed_addr #1

declare !dbg !3232 void @Perl_op_free(ptr noundef) local_unnamed_addr #1

declare !dbg !3235 void @Perl_hv_kill_backrefs(ptr noundef) local_unnamed_addr #1

declare !dbg !3236 i32 @Perl_sv_backoff(ptr noundef) local_unnamed_addr #1

declare !dbg !3239 i32 @Perl_sv_unmagic(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3242 i32 @Perl_mg_free(ptr noundef) local_unnamed_addr #1

declare !dbg !3243 void @Perl_sv_force_normal_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3246 void @Perl_av_clear(ptr noundef) local_unnamed_addr #1

declare !dbg !3247 void @Perl_hv_clear(ptr noundef) local_unnamed_addr #1

declare !dbg !3248 void @Perl_cv_undef(ptr noundef) local_unnamed_addr #1

declare !dbg !3249 void @Perl_unshare_hek(ptr noundef) local_unnamed_addr #1

declare !dbg !3252 ptr @Perl_newSV(i64 noundef) local_unnamed_addr #1

declare !dbg !3256 ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3259 ptr @Perl_av_delete(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3262 ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3265 ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3268 void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare !dbg !3271 void @Perl_sv_clear(ptr noundef) local_unnamed_addr #1

declare !dbg !3274 void @Perl_parser_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @Perl_cx_dump(ptr nocapture noundef %cx) local_unnamed_addr #7 !dbg !3279 {
entry:
  call void @llvm.dbg.value(metadata ptr %cx, metadata !3283, metadata !DIExpression()), !dbg !3284
  ret void, !dbg !3285
}

declare !dbg !3286 void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1044, !1045, !1046, !1047, !1048, !1049}
!llvm.ident = !{!1050}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !24, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/scope.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "3dd6693d494385a3479a373b6b5c2b90")
!2 = !{!3}
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
!24 = !{!25, !109, !31, !79, !37, !598, !88, !267, !343, !830, !831, !142, !74, !94, !157, !223, !832, !48, !179, !874, !876, !73, !81, !91, !432, !890, !424, !640, !453, !92, !218, !902, !43, !903, !108, !638, !473, !904, !905, !168, !906, !308, !290, !285, !923, !145, !378, !320, !928, !929, !930, !932, !933, !935, !936}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "PERL_SI", file: !27, line: 1129, baseType: !28)
!27 = !DIFile(filename: "apps/500.perlbench_r/src/cop.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "64d4f81e93be43c58d053d27101a3a5e")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stackinfo", file: !27, line: 1116, size: 384, elements: !29)
!29 = !{!30, !597, !823, !825, !826, !827, !828, !829}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "si_stack", scope: !28, file: !27, line: 1117, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !33, line: 2648, baseType: !34)
!33 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !4, line: 241, size: 192, elements: !35)
!35 = !{!36, !582, !583, !584}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !34, file: !4, line: 242, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !33, line: 2666, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !40, line: 11, size: 320, elements: !41)
!40 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!41 = !{!42, !578, !579, !580, !581}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !39, file: !40, line: 12, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !33, line: 2649, baseType: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !4, line: 246, size: 192, elements: !46)
!46 = !{!47, !563, !564, !565}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !45, file: !4, line: 247, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !33, line: 2667, baseType: !50)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !51, line: 130, size: 256, elements: !52)
!51 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!52 = !{!53, !54, !561, !562}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !50, file: !51, line: 131, baseType: !43, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !50, file: !51, line: 132, baseType: !55, size: 64, offset: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !4, line: 494, size: 64, elements: !56)
!56 = !{!57, !560}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !55, file: !4, line: 495, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !33, line: 2658, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !61, line: 23, size: 384, elements: !62)
!61 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!62 = !{!63, !64, !552, !555, !556, !557, !558, !559}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !60, file: !61, line: 24, baseType: !58, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !60, file: !61, line: 25, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !33, line: 2673, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !61, line: 11, size: 512, elements: !68)
!68 = !{!69, !522, !523, !527, !528, !529, !533, !551}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !67, file: !61, line: 12, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!73, !74, !58}
!73 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !33, line: 2647, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !4, line: 218, size: 192, elements: !77)
!77 = !{!78, !80, !83, !84}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !76, file: !4, line: 219, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !76, file: !4, line: 219, baseType: !81, size: 32, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !82, line: 175, baseType: !5)
!82 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !76, file: !4, line: 219, baseType: !81, size: 32, offset: 96)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !76, file: !4, line: 220, baseType: !85, size: 64, offset: 128)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !4, line: 220, size: 64, elements: !86)
!86 = !{!87, !90, !93, !96, !99, !100, !518, !519, !520, !521}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !85, file: !4, line: 220, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !85, file: !4, line: 220, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !33, line: 1670, baseType: !92)
!92 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !85, file: !4, line: 220, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !33, line: 1671, baseType: !95)
!95 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !85, file: !4, line: 220, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !33, line: 1877, baseType: !98)
!98 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !85, file: !4, line: 220, baseType: !74, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !85, file: !4, line: 220, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !103, line: 140, size: 1536, elements: !104)
!103 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!104 = !{!105, !106, !107, !111, !116, !474, !475, !476, !477, !478, !479, !480, !496, !497, !498, !499, !500, !501, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !102, file: !103, line: 141, baseType: !43, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !102, file: !103, line: 141, baseType: !55, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !102, file: !103, line: 141, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !33, line: 2615, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 46, baseType: !95)
!110 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !102, file: !103, line: 141, baseType: !112, size: 64, offset: 192)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !103, line: 141, size: 64, elements: !113)
!113 = !{!114, !115}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !112, file: !103, line: 141, baseType: !108, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !112, file: !103, line: 141, baseType: !88, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !102, file: !103, line: 142, baseType: !117, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !103, line: 157, size: 768, elements: !120)
!120 = !{!121, !414, !419, !435, !439, !443, !448, !455, !459, !463, !467, !468}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !119, file: !103, line: 158, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !413, !81}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !33, line: 2651, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !4, line: 256, size: 192, elements: !128)
!128 = !{!129, !130, !131, !132}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !127, file: !4, line: 257, baseType: !101, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !127, file: !4, line: 257, baseType: !81, size: 32, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !127, file: !4, line: 257, baseType: !81, size: 32, offset: 96)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !127, file: !4, line: 258, baseType: !133, size: 64, offset: 128)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !4, line: 258, size: 64, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141, !143, !167, !412}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !133, file: !4, line: 258, baseType: !88, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !133, file: !4, line: 258, baseType: !91, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !133, file: !4, line: 258, baseType: !94, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !133, file: !4, line: 258, baseType: !97, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !133, file: !4, line: 258, baseType: !74, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !133, file: !4, line: 258, baseType: !101, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !133, file: !4, line: 258, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !133, file: !4, line: 258, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !4, line: 186, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !51, line: 32, size: 192, elements: !148)
!148 = !{!149, !150, !162}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !147, file: !51, line: 36, baseType: !145, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !147, file: !51, line: 37, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !4, line: 187, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !51, line: 45, size: 96, elements: !154)
!154 = !{!155, !156, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !153, file: !51, line: 46, baseType: !81, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !153, file: !51, line: 47, baseType: !157, size: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !82, line: 174, baseType: !73)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !153, file: !51, line: 48, baseType: !159, size: 8, offset: 64)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 8, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 1)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !147, file: !51, line: 41, baseType: !163, size: 64, offset: 128)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !51, line: 38, size: 64, elements: !164)
!164 = !{!165, !166}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !163, file: !51, line: 39, baseType: !74, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !163, file: !51, line: 40, baseType: !109, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !133, file: !4, line: 258, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !33, line: 2652, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !171, line: 11, size: 640, elements: !172)
!171 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!172 = !{!173, !174, !284, !403, !404, !405, !406, !407, !408, !409, !410, !411}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !170, file: !171, line: 12, baseType: !74, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !170, file: !171, line: 13, baseType: !175, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !4, line: 251, size: 192, elements: !177)
!177 = !{!178, !269, !270, !271}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !176, file: !4, line: 252, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !33, line: 2672, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !4, line: 603, size: 1088, elements: !182)
!182 = !{!183, !184, !185, !186, !191, !197, !204, !213, !214, !215, !216, !217, !261, !262, !263, !264, !265, !266}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !181, file: !4, line: 604, baseType: !43, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !181, file: !4, line: 604, baseType: !55, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !181, file: !4, line: 604, baseType: !108, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !181, file: !4, line: 604, baseType: !187, size: 64, offset: 192)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !4, line: 604, size: 64, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !187, file: !4, line: 604, baseType: !108, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !187, file: !4, line: 604, baseType: !88, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !181, file: !4, line: 605, baseType: !192, size: 64, offset: 256)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !4, line: 488, size: 64, elements: !193)
!193 = !{!194, !195, !196}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !192, file: !4, line: 489, baseType: !91, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !192, file: !4, line: 490, baseType: !94, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !192, file: !4, line: 491, baseType: !151, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !181, file: !4, line: 607, baseType: !198, size: 64, offset: 320)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !200, line: 85, baseType: !201)
!200 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !200, line: 83, baseType: !203)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !200, line: 83, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !181, file: !4, line: 620, baseType: !205, size: 64, offset: 384)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !4, line: 617, size: 64, elements: !206)
!206 = !{!207, !212}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !205, file: !4, line: 618, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !210, line: 127, baseType: !211)
!210 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!211 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !210, line: 127, flags: DIFlagFwdDecl)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !205, file: !4, line: 619, baseType: !79, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !181, file: !4, line: 622, baseType: !91, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !181, file: !4, line: 623, baseType: !91, size: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !181, file: !4, line: 624, baseType: !91, size: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !181, file: !4, line: 625, baseType: !88, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !181, file: !4, line: 626, baseType: !218, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !33, line: 2653, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !4, line: 231, size: 192, elements: !221)
!221 = !{!222, !246, !247, !248}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !220, file: !4, line: 232, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !33, line: 2668, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !4, line: 561, size: 384, elements: !226)
!226 = !{!227, !228, !229, !230, !235, !236}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !225, file: !4, line: 562, baseType: !43, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !225, file: !4, line: 562, baseType: !55, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !225, file: !4, line: 562, baseType: !108, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !225, file: !4, line: 562, baseType: !231, size: 64, offset: 192)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !4, line: 562, size: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !231, file: !4, line: 562, baseType: !108, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !231, file: !4, line: 562, baseType: !88, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !225, file: !4, line: 563, baseType: !192, size: 64, offset: 256)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !225, file: !4, line: 564, baseType: !237, size: 64, offset: 320)
!237 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !4, line: 479, size: 64, elements: !238)
!238 = !{!239, !240, !241}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !237, file: !4, line: 480, baseType: !97, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !237, file: !4, line: 481, baseType: !43, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !237, file: !4, line: 485, baseType: !242, size: 64)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !237, file: !4, line: 482, size: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !242, file: !4, line: 483, baseType: !81, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !242, file: !4, line: 484, baseType: !81, size: 32, offset: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !220, file: !4, line: 232, baseType: !81, size: 32, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !220, file: !4, line: 232, baseType: !81, size: 32, offset: 96)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !220, file: !4, line: 233, baseType: !249, size: 64, offset: 128)
!249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !220, file: !4, line: 233, size: 64, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !249, file: !4, line: 233, baseType: !88, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !249, file: !4, line: 233, baseType: !91, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !249, file: !4, line: 233, baseType: !94, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !249, file: !4, line: 233, baseType: !97, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !249, file: !4, line: 233, baseType: !74, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !249, file: !4, line: 233, baseType: !101, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !249, file: !4, line: 233, baseType: !142, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !249, file: !4, line: 233, baseType: !144, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !249, file: !4, line: 233, baseType: !168, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !249, file: !4, line: 233, baseType: !198, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !181, file: !4, line: 627, baseType: !88, size: 64, offset: 768)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !181, file: !4, line: 628, baseType: !218, size: 64, offset: 832)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !181, file: !4, line: 629, baseType: !88, size: 64, offset: 896)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !181, file: !4, line: 630, baseType: !218, size: 64, offset: 960)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !181, file: !4, line: 631, baseType: !89, size: 8, offset: 1024)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !181, file: !4, line: 632, baseType: !267, size: 8, offset: 1032)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !82, line: 171, baseType: !268)
!268 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !176, file: !4, line: 252, baseType: !81, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !176, file: !4, line: 252, baseType: !81, size: 32, offset: 96)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !176, file: !4, line: 253, baseType: !272, size: 64, offset: 128)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !4, line: 253, size: 64, elements: !273)
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !272, file: !4, line: 253, baseType: !88, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !272, file: !4, line: 253, baseType: !91, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !272, file: !4, line: 253, baseType: !94, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !272, file: !4, line: 253, baseType: !97, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !272, file: !4, line: 253, baseType: !74, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !272, file: !4, line: 253, baseType: !101, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !272, file: !4, line: 253, baseType: !142, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !272, file: !4, line: 253, baseType: !144, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !272, file: !4, line: 253, baseType: !168, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !272, file: !4, line: 253, baseType: !198, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !170, file: !171, line: 14, baseType: !285, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !33, line: 2650, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !4, line: 236, size: 192, elements: !288)
!288 = !{!289, !388, !389, !390}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !287, file: !4, line: 237, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !33, line: 2669, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !293, line: 13, size: 832, elements: !294)
!293 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!294 = !{!295, !296, !297, !298, !303, !304, !349, !357, !362, !363, !383, !384, !385, !387}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !292, file: !293, line: 14, baseType: !43, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !292, file: !293, line: 14, baseType: !55, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !292, file: !293, line: 14, baseType: !108, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !292, file: !293, line: 14, baseType: !299, size: 64, offset: 192)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !293, line: 14, size: 64, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !299, file: !293, line: 14, baseType: !108, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !299, file: !293, line: 14, baseType: !88, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !292, file: !293, line: 15, baseType: !43, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !292, file: !293, line: 15, baseType: !305, size: 64, offset: 320)
!305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !293, line: 15, size: 64, elements: !306)
!306 = !{!307, !332}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !305, file: !293, line: 15, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !33, line: 2617, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !311, line: 202, size: 320, elements: !312)
!311 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!312 = !{!313, !314, !315, !319, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !310, file: !311, line: 203, baseType: !308, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !310, file: !311, line: 203, baseType: !308, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !310, file: !311, line: 203, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!308}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !310, file: !311, line: 203, baseType: !320, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !321, line: 25, baseType: !95)
!321 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!322 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !310, file: !311, line: 203, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !310, file: !311, line: 203, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !310, file: !311, line: 203, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !310, file: !311, line: 203, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !310, file: !311, line: 203, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !310, file: !311, line: 203, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !310, file: !311, line: 203, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !310, file: !311, line: 203, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !310, file: !311, line: 203, baseType: !267, size: 8, offset: 272)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !310, file: !311, line: 203, baseType: !267, size: 8, offset: 280)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !305, file: !293, line: 15, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !33, line: 2674, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !33, line: 3691, size: 64, elements: !335)
!335 = !{!336, !337, !338, !339, !340, !341, !342, !344, !348}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !334, file: !33, line: 3692, baseType: !79, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !334, file: !33, line: 3693, baseType: !157, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !334, file: !33, line: 3694, baseType: !81, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !334, file: !33, line: 3695, baseType: !91, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !334, file: !33, line: 3696, baseType: !94, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !334, file: !33, line: 3697, baseType: !92, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !334, file: !33, line: 3698, baseType: !343, size: 8)
!343 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !334, file: !33, line: 3699, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !79}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !334, file: !33, line: 3700, baseType: !345, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !292, file: !293, line: 15, baseType: !350, size: 64, offset: 384)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !293, line: 15, size: 64, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !350, file: !293, line: 15, baseType: !308, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !350, file: !293, line: 15, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !285}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !292, file: !293, line: 15, baseType: !358, size: 64, offset: 448)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !293, line: 15, size: 64, elements: !359)
!359 = !{!360, !361}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !358, file: !293, line: 15, baseType: !218, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !358, file: !293, line: 15, baseType: !151, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !292, file: !293, line: 15, baseType: !88, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !292, file: !293, line: 15, baseType: !364, size: 64, offset: 576)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !293, line: 15, size: 64, elements: !365)
!365 = !{!366, !382}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !364, file: !293, line: 15, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !33, line: 2681, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !321, line: 34, size: 192, elements: !370)
!370 = !{!371, !376, !380, !381}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !369, file: !321, line: 35, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !373, line: 108, baseType: !374)
!373 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !375, line: 193, baseType: !92)
!375 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!376 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !369, file: !321, line: 36, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !33, line: 2682, baseType: !32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !369, file: !321, line: 37, baseType: !81, size: 32, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !369, file: !321, line: 38, baseType: !81, size: 32, offset: 160)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !364, file: !293, line: 15, baseType: !79, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !292, file: !293, line: 15, baseType: !285, size: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !292, file: !293, line: 15, baseType: !81, size: 32, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !292, file: !293, line: 15, baseType: !386, size: 32, offset: 736)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !4, line: 567, baseType: !81)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !292, file: !293, line: 15, baseType: !157, size: 32, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !287, file: !4, line: 237, baseType: !81, size: 32, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !287, file: !4, line: 237, baseType: !81, size: 32, offset: 96)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !287, file: !4, line: 238, baseType: !391, size: 64, offset: 128)
!391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !4, line: 238, size: 64, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !391, file: !4, line: 238, baseType: !88, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !391, file: !4, line: 238, baseType: !91, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !391, file: !4, line: 238, baseType: !94, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !391, file: !4, line: 238, baseType: !97, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !391, file: !4, line: 238, baseType: !74, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !391, file: !4, line: 238, baseType: !101, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !391, file: !4, line: 238, baseType: !142, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !391, file: !4, line: 238, baseType: !144, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !391, file: !4, line: 238, baseType: !168, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !391, file: !4, line: 238, baseType: !198, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !170, file: !171, line: 15, baseType: !81, size: 32, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !170, file: !171, line: 16, baseType: !81, size: 32, offset: 224)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !170, file: !171, line: 17, baseType: !43, size: 64, offset: 256)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !170, file: !171, line: 18, baseType: !31, size: 64, offset: 320)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !170, file: !171, line: 19, baseType: !285, size: 64, offset: 384)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !170, file: !171, line: 20, baseType: !218, size: 64, offset: 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !170, file: !171, line: 21, baseType: !5, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !170, file: !171, line: 22, baseType: !5, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !170, file: !171, line: 23, baseType: !151, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !133, file: !4, line: 258, baseType: !198, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !119, file: !103, line: 159, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!157, !418, !88, !88, !88, !372, !74, !79, !81}
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !119, file: !103, line: 162, baseType: !420, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!88, !418, !74, !423, !88, !88, !426, !427}
!423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !103, line: 152, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !103, line: 148, size: 128, elements: !430)
!430 = !{!431, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !429, file: !103, line: 150, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !429, file: !103, line: 151, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !119, file: !103, line: 170, baseType: !436, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!74, !418}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !119, file: !103, line: 171, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !418}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !119, file: !103, line: 172, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !418, !447, !413}
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !119, file: !103, line: 174, baseType: !449, size: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !418, !447, !452}
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !119, file: !103, line: 176, baseType: !456, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!157, !418, !452, !447}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !119, file: !103, line: 178, baseType: !460, size: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!74, !418, !413, !413, !426}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !119, file: !103, line: 180, baseType: !464, size: 64, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!74, !418, !452, !426}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !119, file: !103, line: 182, baseType: !436, size: 64, offset: 640)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !119, file: !103, line: 186, baseType: !469, size: 64, offset: 704)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!125, !472, !73, !308, !117, !125, !473, !81, !81}
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !102, file: !103, line: 142, baseType: !125, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !102, file: !103, line: 142, baseType: !43, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !102, file: !103, line: 142, baseType: !81, size: 32, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !102, file: !103, line: 142, baseType: !372, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !102, file: !103, line: 142, baseType: !372, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !102, file: !103, line: 142, baseType: !108, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !102, file: !103, line: 142, baseType: !481, size: 64, offset: 704)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !103, line: 45, size: 1024, elements: !483)
!483 = !{!484, !485}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !482, file: !103, line: 46, baseType: !267, size: 8)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !482, file: !103, line: 47, baseType: !486, size: 960, offset: 64)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 960, elements: !494)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !103, line: 38, size: 320, elements: !488)
!488 = !{!489, !490, !491, !492, !493}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !487, file: !103, line: 39, baseType: !372, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !487, file: !103, line: 40, baseType: !372, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !487, file: !103, line: 41, baseType: !74, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !487, file: !103, line: 42, baseType: !74, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !487, file: !103, line: 43, baseType: !372, size: 64, offset: 256)
!494 = !{!495}
!495 = !DISubrange(count: 3)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !102, file: !103, line: 142, baseType: !81, size: 32, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !102, file: !103, line: 142, baseType: !81, size: 32, offset: 800)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !102, file: !103, line: 142, baseType: !79, size: 64, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !102, file: !103, line: 142, baseType: !81, size: 32, offset: 896)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !102, file: !103, line: 142, baseType: !81, size: 32, offset: 928)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !102, file: !103, line: 142, baseType: !502, size: 64, offset: 960)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !103, line: 68, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !103, line: 58, size: 192, elements: !505)
!505 = !{!506, !507, !508}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !504, file: !103, line: 59, baseType: !372, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !504, file: !103, line: 60, baseType: !372, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !504, file: !103, line: 67, baseType: !372, size: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !102, file: !103, line: 142, baseType: !88, size: 64, offset: 1024)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !102, file: !103, line: 142, baseType: !74, size: 64, offset: 1088)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !102, file: !103, line: 142, baseType: !372, size: 64, offset: 1152)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !102, file: !103, line: 142, baseType: !372, size: 64, offset: 1216)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !102, file: !103, line: 142, baseType: !372, size: 64, offset: 1280)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !102, file: !103, line: 142, baseType: !372, size: 64, offset: 1344)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !102, file: !103, line: 142, baseType: !5, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !102, file: !103, line: 142, baseType: !5, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !102, file: !103, line: 142, baseType: !285, size: 64, offset: 1472)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !85, file: !4, line: 220, baseType: !142, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !85, file: !4, line: 220, baseType: !144, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !85, file: !4, line: 220, baseType: !168, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !85, file: !4, line: 220, baseType: !198, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !67, file: !61, line: 13, baseType: !70, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !67, file: !61, line: 14, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!81, !74, !58}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !67, file: !61, line: 15, baseType: !70, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !67, file: !61, line: 16, baseType: !70, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !67, file: !61, line: 17, baseType: !530, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!73, !74, !58, !74, !424, !157}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !67, file: !61, line: 19, baseType: !534, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!73, !58, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !33, line: 2677, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !4, line: 2150, size: 320, elements: !540)
!540 = !{!541, !542, !543, !549, !550}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !539, file: !4, line: 2151, baseType: !31, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !4, line: 2152, baseType: !94, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !539, file: !4, line: 2153, baseType: !544, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !33, line: 2639, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !33, line: 5434, size: 8, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !546, file: !33, line: 5435, baseType: !89, size: 8)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !539, file: !4, line: 2154, baseType: !544, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !539, file: !4, line: 2155, baseType: !31, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !67, file: !61, line: 20, baseType: !70, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !60, file: !61, line: 26, baseType: !553, size: 16, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !82, line: 173, baseType: !554)
!554 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !60, file: !61, line: 27, baseType: !89, size: 8, offset: 144)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !60, file: !61, line: 28, baseType: !267, size: 8, offset: 152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !60, file: !61, line: 29, baseType: !372, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !60, file: !61, line: 30, baseType: !74, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !60, file: !61, line: 31, baseType: !88, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !55, file: !4, line: 496, baseType: !108, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !50, file: !51, line: 133, baseType: !108, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !50, file: !51, line: 134, baseType: !108, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !45, file: !4, line: 247, baseType: !81, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !45, file: !4, line: 247, baseType: !81, size: 32, offset: 96)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !45, file: !4, line: 248, baseType: !566, size: 64, offset: 128)
!566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !4, line: 248, size: 64, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !566, file: !4, line: 248, baseType: !88, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !566, file: !4, line: 248, baseType: !91, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !566, file: !4, line: 248, baseType: !94, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !566, file: !4, line: 248, baseType: !97, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !566, file: !4, line: 248, baseType: !74, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !566, file: !4, line: 248, baseType: !101, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !566, file: !4, line: 248, baseType: !142, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !566, file: !4, line: 248, baseType: !144, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !566, file: !4, line: 248, baseType: !168, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !566, file: !4, line: 248, baseType: !198, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !39, file: !40, line: 13, baseType: !55, size: 64, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !39, file: !40, line: 14, baseType: !372, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !39, file: !40, line: 15, baseType: !372, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !39, file: !40, line: 16, baseType: !142, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !34, file: !4, line: 242, baseType: !81, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !34, file: !4, line: 242, baseType: !81, size: 32, offset: 96)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !34, file: !4, line: 243, baseType: !585, size: 64, offset: 128)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !34, file: !4, line: 243, size: 64, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !592, !593, !594, !595, !596}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !585, file: !4, line: 243, baseType: !88, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !585, file: !4, line: 243, baseType: !91, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !585, file: !4, line: 243, baseType: !94, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !585, file: !4, line: 243, baseType: !97, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !585, file: !4, line: 243, baseType: !74, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !585, file: !4, line: 243, baseType: !101, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !585, file: !4, line: 243, baseType: !142, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !585, file: !4, line: 243, baseType: !144, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !585, file: !4, line: 243, baseType: !168, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !585, file: !4, line: 243, baseType: !198, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "si_cxstack", scope: !28, file: !27, line: 1118, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "PERL_CONTEXT", file: !33, line: 2655, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context", file: !27, line: 967, size: 704, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cx_u", scope: !600, file: !27, line: 971, baseType: !603, size: 704)
!603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !600, file: !27, line: 968, size: 704, elements: !604)
!604 = !{!605, !806}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cx_blk", scope: !603, file: !27, line: 969, baseType: !606, size: 640)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block", file: !27, line: 838, size: 640, elements: !607)
!607 = !{!608, !609, !610, !611, !612, !656, !657, !658, !692}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "blku_type", scope: !606, file: !27, line: 839, baseType: !267, size: 8)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "blku_gimme", scope: !606, file: !27, line: 840, baseType: !267, size: 8, offset: 8)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "blku_u16", scope: !606, file: !27, line: 841, baseType: !553, size: 16, offset: 16)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldsp", scope: !606, file: !27, line: 842, baseType: !157, size: 32, offset: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldcop", scope: !606, file: !27, line: 843, baseType: !613, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "COP", file: !33, line: 2618, baseType: !615)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cop", file: !27, line: 393, size: 640, elements: !616)
!616 = !{!617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !633, !634, !635, !636, !637, !639}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !615, file: !27, line: 394, baseType: !308, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !615, file: !27, line: 394, baseType: !308, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !615, file: !27, line: 394, baseType: !316, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !615, file: !27, line: 394, baseType: !320, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !615, file: !27, line: 394, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !615, file: !27, line: 394, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !615, file: !27, line: 394, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !615, file: !27, line: 394, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !615, file: !27, line: 394, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !615, file: !27, line: 394, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !615, file: !27, line: 394, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !615, file: !27, line: 394, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !615, file: !27, line: 394, baseType: !267, size: 8, offset: 272)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !615, file: !27, line: 394, baseType: !267, size: 8, offset: 280)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cop_line", scope: !615, file: !27, line: 397, baseType: !632, size: 32, offset: 288)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "line_t", file: !82, line: 1734, baseType: !81)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cop_stash", scope: !615, file: !27, line: 404, baseType: !43, size: 64, offset: 320)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cop_filegv", scope: !615, file: !27, line: 405, baseType: !218, size: 64, offset: 384)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cop_hints", scope: !615, file: !27, line: 407, baseType: !81, size: 32, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "cop_seq", scope: !615, file: !27, line: 408, baseType: !81, size: 32, offset: 480)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "cop_warnings", scope: !615, file: !27, line: 410, baseType: !638, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cop_hints_hash", scope: !615, file: !27, line: 413, baseType: !640, size: 64, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "COPHH", file: !27, line: 170, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcounted_he", file: !51, line: 523, size: 256, elements: !643)
!643 = !{!644, !646, !647, !654, !655}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_next", scope: !642, file: !51, line: 524, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_hek", scope: !642, file: !51, line: 529, baseType: !151, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_val", scope: !642, file: !51, line: 536, baseType: !648, size: 64, offset: 128)
!648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !51, line: 531, size: 64, elements: !649)
!649 = !{!650, !651, !652, !653}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_iv", scope: !648, file: !51, line: 532, baseType: !91, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_uv", scope: !648, file: !51, line: 533, baseType: !94, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_len", scope: !648, file: !51, line: 534, baseType: !108, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_u_ptr", scope: !648, file: !51, line: 535, baseType: !79, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_refcnt", scope: !642, file: !51, line: 537, baseType: !81, size: 32, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "refcounted_he_data", scope: !642, file: !51, line: 540, baseType: !159, size: 8, offset: 224)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldmarksp", scope: !606, file: !27, line: 844, baseType: !157, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldscopesp", scope: !606, file: !27, line: 845, baseType: !157, size: 32, offset: 160)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "blku_oldpm", scope: !606, file: !27, line: 846, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "PMOP", file: !33, line: 2624, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmop", file: !311, line: 251, size: 768, elements: !662)
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !686, !691}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !661, file: !311, line: 252, baseType: !308, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !661, file: !311, line: 252, baseType: !308, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !661, file: !311, line: 252, baseType: !316, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !661, file: !311, line: 252, baseType: !320, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !661, file: !311, line: 252, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !661, file: !311, line: 252, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !661, file: !311, line: 252, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !661, file: !311, line: 252, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !661, file: !311, line: 252, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !661, file: !311, line: 252, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !661, file: !311, line: 252, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !661, file: !311, line: 252, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !661, file: !311, line: 252, baseType: !267, size: 8, offset: 272)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !661, file: !311, line: 252, baseType: !267, size: 8, offset: 280)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "op_first", scope: !661, file: !311, line: 253, baseType: !308, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "op_last", scope: !661, file: !311, line: 254, baseType: !308, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmregexp", scope: !661, file: !311, line: 258, baseType: !125, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmflags", scope: !661, file: !311, line: 260, baseType: !81, size: 32, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmreplrootu", scope: !661, file: !311, line: 268, baseType: !682, size: 64, offset: 576)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !311, line: 261, size: 64, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmreplroot", scope: !682, file: !311, line: 262, baseType: !308, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmtargetgv", scope: !682, file: !311, line: 266, baseType: !218, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmstashstartu", scope: !661, file: !311, line: 276, baseType: !687, size: 64, offset: 640)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !311, line: 269, size: 64, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmreplstart", scope: !687, file: !311, line: 270, baseType: !308, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "op_pmstash", scope: !687, file: !311, line: 274, baseType: !43, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "op_code_list", scope: !661, file: !311, line: 277, baseType: !308, size: 64, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "blk_u", scope: !606, file: !27, line: 854, baseType: !693, size: 384, offset: 256)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !606, file: !27, line: 848, size: 384, elements: !694)
!694 = !{!695, !704, !711, !750, !802}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "blku_sub", scope: !693, file: !27, line: 849, baseType: !696, size: 384)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_sub", file: !27, line: 567, size: 384, elements: !697)
!697 = !{!698, !699, !700, !701, !702, !703}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "retop", scope: !696, file: !27, line: 568, baseType: !308, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !696, file: !27, line: 570, baseType: !285, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "savearray", scope: !696, file: !27, line: 572, baseType: !31, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "argarray", scope: !696, file: !27, line: 573, baseType: !31, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "olddepth", scope: !696, file: !27, line: 574, baseType: !157, size: 32, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "oldcomppad", scope: !696, file: !27, line: 575, baseType: !378, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "blku_format", scope: !693, file: !27, line: 850, baseType: !705, size: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_format", file: !27, line: 580, size: 256, elements: !706)
!706 = !{!707, !708, !709, !710}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "retop", scope: !705, file: !27, line: 581, baseType: !308, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !705, file: !27, line: 583, baseType: !285, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gv", scope: !705, file: !27, line: 585, baseType: !218, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dfoutgv", scope: !705, file: !27, line: 586, baseType: !218, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "blku_eval", scope: !693, file: !27, line: 851, baseType: !712, size: 384)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_eval", file: !27, line: 714, size: 384, elements: !713)
!713 = !{!714, !715, !716, !717, !718, !719}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "retop", scope: !712, file: !27, line: 715, baseType: !308, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "old_namesv", scope: !712, file: !27, line: 717, baseType: !74, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "old_eval_root", scope: !712, file: !27, line: 718, baseType: !308, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "cur_text", scope: !712, file: !27, line: 719, baseType: !74, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cv", scope: !712, file: !27, line: 720, baseType: !285, size: 64, offset: 256)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cur_top_env", scope: !712, file: !27, line: 721, baseType: !720, size: 64, offset: 320)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "JMPENV", file: !27, line: 59, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jmpenv", file: !27, line: 32, size: 1728, elements: !723)
!723 = !{!724, !746, !748, !749}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "je_buf", scope: !722, file: !27, line: 49, baseType: !725, size: 1600)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigjmp_buf", file: !726, line: 83, baseType: !727)
!726 = !DIFile(filename: "/usr/include/setjmp.h", directory: "", checksumkind: CSK_MD5, checksum: "76b05e9ee1ce4e0a46e91c06a0fc7c7a")
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !728, size: 1600, elements: !160)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !726, line: 33, size: 1600, elements: !729)
!729 = !{!730, !736, !737}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !728, file: !726, line: 39, baseType: !731, size: 512)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !732, line: 31, baseType: !733)
!732 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/setjmp.h", directory: "", checksumkind: CSK_MD5, checksum: "45ab2ca18833449ad9660bc3075914aa")
!733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 512, elements: !734)
!734 = !{!735}
!735 = !DISubrange(count: 8)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !728, file: !726, line: 40, baseType: !73, size: 32, offset: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !728, file: !726, line: 41, baseType: !738, size: 1024, offset: 576)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !739, line: 8, baseType: !740)
!739 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h", directory: "", checksumkind: CSK_MD5, checksum: "acc6b14c0967857fec362a8d433e1cf2")
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 5, size: 1024, elements: !741)
!741 = !{!742}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !740, file: !739, line: 7, baseType: !743, size: 1024)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 1024, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 16)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "je_prev", scope: !722, file: !27, line: 50, baseType: !747, size: 64, offset: 1600)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "je_ret", scope: !722, file: !27, line: 55, baseType: !73, size: 32, offset: 1664)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "je_mustcatch", scope: !722, file: !27, line: 56, baseType: !343, size: 8, offset: 1696)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "blku_loop", scope: !693, file: !27, line: 852, baseType: !751, size: 320)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_loop", file: !27, line: 756, size: 320, elements: !752)
!752 = !{!753, !754, !778, !784}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "resetsp", scope: !751, file: !27, line: 757, baseType: !157, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "my_op", scope: !751, file: !27, line: 758, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOOP", file: !33, line: 2628, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !311, line: 422, size: 640, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !757, file: !311, line: 423, baseType: !308, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !757, file: !311, line: 423, baseType: !308, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !757, file: !311, line: 423, baseType: !316, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !757, file: !311, line: 423, baseType: !320, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !757, file: !311, line: 423, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !757, file: !311, line: 423, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !757, file: !311, line: 423, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !757, file: !311, line: 423, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !757, file: !311, line: 423, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !757, file: !311, line: 423, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !757, file: !311, line: 423, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !757, file: !311, line: 423, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !757, file: !311, line: 423, baseType: !267, size: 8, offset: 272)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !757, file: !311, line: 423, baseType: !267, size: 8, offset: 280)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "op_first", scope: !757, file: !311, line: 424, baseType: !308, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "op_last", scope: !757, file: !311, line: 425, baseType: !308, size: 64, offset: 384)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "op_redoop", scope: !757, file: !311, line: 426, baseType: !308, size: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "op_nextop", scope: !757, file: !311, line: 427, baseType: !308, size: 64, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "op_lastop", scope: !757, file: !311, line: 428, baseType: !308, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "itervar_u", scope: !751, file: !27, line: 763, baseType: !779, size: 64, offset: 128)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !27, line: 759, size: 64, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "svp", scope: !779, file: !27, line: 760, baseType: !142, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "gv", scope: !779, file: !27, line: 761, baseType: !218, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "oldcomppad", scope: !779, file: !27, line: 762, baseType: !378, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "state_u", scope: !751, file: !27, line: 777, baseType: !785, size: 128, offset: 192)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !27, line: 764, size: 128, elements: !786)
!786 = !{!787, !792, !797}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ary", scope: !785, file: !27, line: 768, baseType: !788, size: 128)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !27, line: 765, size: 128, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ary", scope: !788, file: !27, line: 766, baseType: !31, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ix", scope: !788, file: !27, line: 767, baseType: !91, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lazyiv", scope: !785, file: !27, line: 772, baseType: !793, size: 128)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !27, line: 769, size: 128, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !793, file: !27, line: 770, baseType: !91, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !793, file: !27, line: 771, baseType: !91, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lazysv", scope: !785, file: !27, line: 776, baseType: !798, size: 128)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !27, line: 773, size: 128, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !798, file: !27, line: 774, baseType: !74, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !798, file: !27, line: 775, baseType: !74, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "blku_givwhen", scope: !693, file: !27, line: 853, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_givwhen", file: !27, line: 828, size: 64, elements: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "leave_op", scope: !803, file: !27, line: 829, baseType: !308, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "cx_subst", scope: !603, file: !27, line: 970, baseType: !807, size: 704)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "subst", file: !27, line: 911, size: 704, elements: !808)
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_type", scope: !807, file: !27, line: 912, baseType: !267, size: 8)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_rflags", scope: !807, file: !27, line: 913, baseType: !267, size: 8, offset: 8)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_rxtainted", scope: !807, file: !27, line: 914, baseType: !553, size: 16, offset: 16)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_oldsave", scope: !807, file: !27, line: 915, baseType: !157, size: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_iters", scope: !807, file: !27, line: 916, baseType: !372, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_maxiters", scope: !807, file: !27, line: 917, baseType: !372, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_orig", scope: !807, file: !27, line: 918, baseType: !88, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_dstr", scope: !807, file: !27, line: 919, baseType: !74, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_targ", scope: !807, file: !27, line: 920, baseType: !74, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_s", scope: !807, file: !27, line: 921, baseType: !88, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_m", scope: !807, file: !27, line: 922, baseType: !88, size: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_strend", scope: !807, file: !27, line: 923, baseType: !88, size: 64, offset: 512)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_rxres", scope: !807, file: !27, line: 924, baseType: !79, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sbu_rx", scope: !807, file: !27, line: 925, baseType: !125, size: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "si_prev", scope: !28, file: !27, line: 1119, baseType: !824, size: 64, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "si_next", scope: !28, file: !27, line: 1120, baseType: !824, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "si_cxix", scope: !28, file: !27, line: 1121, baseType: !157, size: 32, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "si_cxmax", scope: !28, file: !27, line: 1122, baseType: !157, size: 32, offset: 288)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "si_type", scope: !28, file: !27, line: 1123, baseType: !157, size: 32, offset: 320)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "si_markoff", scope: !28, file: !27, line: 1124, baseType: !157, size: 32, offset: 352)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv_aux", file: !51, line: 102, size: 448, elements: !834)
!834 = !{!835, !841, !842, !843, !844, !845, !870, !871, !872, !873}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_u", scope: !833, file: !51, line: 103, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xhvnameu", file: !51, line: 97, size: 64, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_name", scope: !836, file: !51, line: 98, baseType: !151, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "xhvnameu_names", scope: !836, file: !51, line: 99, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_backreferences", scope: !833, file: !51, line: 104, baseType: !31, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_eiter", scope: !833, file: !51, line: 105, baseType: !145, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_riter", scope: !833, file: !51, line: 106, baseType: !157, size: 32, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_name_count", scope: !833, file: !51, line: 114, baseType: !157, size: 32, offset: 224)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_mro_meta", scope: !833, file: !51, line: 115, baseType: !846, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_meta", file: !51, line: 72, size: 512, elements: !848)
!848 = !{!849, !850, !851, !852, !853, !854, !867, !868, !869}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_all", scope: !847, file: !51, line: 74, baseType: !43, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mro_linear_current", scope: !847, file: !51, line: 78, baseType: !74, size: 64, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "mro_nextmethod", scope: !847, file: !51, line: 79, baseType: !43, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "cache_gen", scope: !847, file: !51, line: 80, baseType: !81, size: 32, offset: 192)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pkg_gen", scope: !847, file: !51, line: 81, baseType: !81, size: 32, offset: 224)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "mro_which", scope: !847, file: !51, line: 82, baseType: !855, size: 64, offset: 256)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !857)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mro_alg", file: !51, line: 64, size: 192, elements: !858)
!858 = !{!859, !863, !864, !865, !866}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "resolve", scope: !857, file: !51, line: 65, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!31, !43, !81}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !857, file: !51, line: 66, baseType: !424, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !857, file: !51, line: 67, baseType: !553, size: 16, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "kflags", scope: !857, file: !51, line: 68, baseType: !553, size: 16, offset: 144)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !857, file: !51, line: 69, baseType: !81, size: 32, offset: 160)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "isa", scope: !847, file: !51, line: 83, baseType: !43, size: 64, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "super", scope: !847, file: !51, line: 84, baseType: !43, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_gen", scope: !847, file: !51, line: 85, baseType: !81, size: 32, offset: 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_rand", scope: !833, file: !51, line: 117, baseType: !81, size: 32, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_last_rand", scope: !833, file: !51, line: 118, baseType: !81, size: 32, offset: 352)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_fill_lazy", scope: !833, file: !51, line: 121, baseType: !81, size: 32, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_aux_flags", scope: !833, file: !51, line: 122, baseType: !81, size: 32, offset: 416)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "IO", file: !33, line: 2654, baseType: !176)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVMG", file: !33, line: 2663, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvmg", file: !4, line: 524, size: 384, elements: !879)
!879 = !{!880, !881, !882, !883, !888, !889}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !878, file: !4, line: 525, baseType: !43, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !878, file: !4, line: 525, baseType: !55, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !878, file: !4, line: 525, baseType: !108, size: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !878, file: !4, line: 525, baseType: !884, size: 64, offset: 192)
!884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !4, line: 525, size: 64, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !884, file: !4, line: 525, baseType: !108, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !884, file: !4, line: 525, baseType: !88, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !878, file: !4, line: 526, baseType: !192, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !878, file: !4, line: 527, baseType: !237, size: 64, offset: 320)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !33, line: 2659, baseType: !892)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !4, line: 499, size: 256, elements: !893)
!893 = !{!894, !895, !896, !897}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !892, file: !4, line: 500, baseType: !43, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !892, file: !4, line: 500, baseType: !55, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !892, file: !4, line: 500, baseType: !108, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !892, file: !4, line: 500, baseType: !898, size: 64, offset: 192)
!898 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !892, file: !4, line: 500, size: 64, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !898, file: !4, line: 500, baseType: !108, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !898, file: !4, line: 500, baseType: !88, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !4, line: 153, baseType: !3)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADNAME", file: !33, line: 2684, baseType: !908)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padname", file: !321, line: 74, size: 384, elements: !909)
!909 = !{!910, !911, !912, !917, !918, !919, !920, !921, !922}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_pv", scope: !908, file: !321, line: 75, baseType: !88, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_ourstash", scope: !908, file: !321, line: 75, baseType: !43, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_type_u", scope: !908, file: !321, line: 75, baseType: !913, size: 64, offset: 128)
!913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !908, file: !321, line: 75, size: 64, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_typestash", scope: !913, file: !321, line: 75, baseType: !43, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_protocv", scope: !913, file: !321, line: 75, baseType: !285, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_low", scope: !908, file: !321, line: 75, baseType: !81, size: 32, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_high", scope: !908, file: !321, line: 75, baseType: !81, size: 32, offset: 224)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_refcnt", scope: !908, file: !321, line: 75, baseType: !81, size: 32, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_gen", scope: !908, file: !321, line: 75, baseType: !73, size: 32, offset: 288)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_len", scope: !908, file: !321, line: 75, baseType: !267, size: 8, offset: 320)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "xpadn_flags", scope: !908, file: !321, line: 75, baseType: !267, size: 8, offset: 328)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shared_he", file: !51, line: 54, size: 320, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "shared_he_he", scope: !924, file: !51, line: 55, baseType: !147, size: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "shared_he_hek", scope: !924, file: !51, line: 56, baseType: !153, size: 96, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "I16", file: !82, line: 172, baseType: !931)
!931 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "I8", file: !82, line: 170, baseType: !934)
!934 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "yy_parser", file: !938, line: 115, baseType: !939)
!938 = !DIFile(filename: "apps/500.perlbench_r/src/parser.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b29878d1d36330394157136b32aba033")
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yy_parser", file: !938, line: 34, size: 4928, elements: !940)
!940 = !{!941, !943, !952, !953, !954, !955, !956, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !997, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1028, !1030, !1031, !1032, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "old_parser", scope: !939, file: !938, line: 38, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "yylval", scope: !939, file: !938, line: 39, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "YYSTYPE", file: !945, line: 249, baseType: !946)
!945 = !DIFile(filename: "apps/500.perlbench_r/src/perly.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "f407f7801e08e631a7d045a6cdd4beeb")
!946 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "YYSTYPE", file: !945, line: 240, size: 64, elements: !947)
!947 = !{!948, !949, !950, !951}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ival", scope: !946, file: !945, line: 242, baseType: !157, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pval", scope: !946, file: !945, line: 244, baseType: !88, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "opval", scope: !946, file: !945, line: 245, baseType: !308, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "gvval", scope: !946, file: !945, line: 246, baseType: !218, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "yychar", scope: !939, file: !938, line: 40, baseType: !73, size: 32, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "yyerrstatus", scope: !939, file: !938, line: 43, baseType: !73, size: 32, offset: 160)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "stack_size", scope: !939, file: !938, line: 45, baseType: !73, size: 32, offset: 192)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "yylen", scope: !939, file: !938, line: 46, baseType: !73, size: 32, offset: 224)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !939, file: !938, line: 47, baseType: !957, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "yy_stack_frame", file: !938, line: 22, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !938, line: 14, size: 192, elements: !960)
!960 = !{!961, !962, !963, !964}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !959, file: !938, line: 15, baseType: !944, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !959, file: !938, line: 16, baseType: !931, size: 16, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "savestack_ix", scope: !959, file: !938, line: 17, baseType: !157, size: 32, offset: 96)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "compcv", scope: !959, file: !938, line: 18, baseType: !285, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "ps", scope: !939, file: !938, line: 48, baseType: !957, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "lex_brackets", scope: !939, file: !938, line: 52, baseType: !157, size: 32, offset: 384)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lex_casemods", scope: !939, file: !938, line: 53, baseType: !157, size: 32, offset: 416)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "lex_brackstack", scope: !939, file: !938, line: 54, baseType: !88, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lex_casestack", scope: !939, file: !938, line: 55, baseType: !88, size: 64, offset: 512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "lex_defer", scope: !939, file: !938, line: 56, baseType: !267, size: 8, offset: 576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lex_dojoin", scope: !939, file: !938, line: 57, baseType: !267, size: 8, offset: 584)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "lex_expect", scope: !939, file: !938, line: 59, baseType: !267, size: 8, offset: 592)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "expect", scope: !939, file: !938, line: 60, baseType: !267, size: 8, offset: 600)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "lex_formbrack", scope: !939, file: !938, line: 61, baseType: !157, size: 32, offset: 608)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "lex_inpat", scope: !939, file: !938, line: 62, baseType: !308, size: 64, offset: 640)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lex_op", scope: !939, file: !938, line: 63, baseType: !308, size: 64, offset: 704)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lex_repl", scope: !939, file: !938, line: 64, baseType: !74, size: 64, offset: 768)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "lex_inwhat", scope: !939, file: !938, line: 65, baseType: !553, size: 16, offset: 832)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "last_lop_op", scope: !939, file: !938, line: 66, baseType: !553, size: 16, offset: 848)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lex_starts", scope: !939, file: !938, line: 67, baseType: !157, size: 32, offset: 864)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "lex_stuff", scope: !939, file: !938, line: 68, baseType: !74, size: 64, offset: 896)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "multi_start", scope: !939, file: !938, line: 69, baseType: !157, size: 32, offset: 960)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "multi_end", scope: !939, file: !938, line: 70, baseType: !157, size: 32, offset: 992)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "multi_open", scope: !939, file: !938, line: 71, baseType: !89, size: 8, offset: 1024)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "multi_close", scope: !939, file: !938, line: 72, baseType: !89, size: 8, offset: 1032)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "preambled", scope: !939, file: !938, line: 73, baseType: !343, size: 8, offset: 1040)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lex_re_reparsing", scope: !939, file: !938, line: 74, baseType: !343, size: 8, offset: 1048)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lex_allbrackets", scope: !939, file: !938, line: 75, baseType: !157, size: 32, offset: 1056)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "sublex_info", scope: !939, file: !938, line: 76, baseType: !990, size: 192, offset: 1088)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "SUBLEXINFO", file: !33, line: 3799, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sublex_info", file: !33, line: 3800, size: 192, elements: !992)
!992 = !{!993, !994, !995, !996}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "super_state", scope: !991, file: !33, line: 3801, baseType: !267, size: 8)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sub_inwhat", scope: !991, file: !33, line: 3802, baseType: !553, size: 16, offset: 16)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "sub_op", scope: !991, file: !33, line: 3803, baseType: !308, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "repl", scope: !991, file: !33, line: 3804, baseType: !74, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "lex_shared", scope: !939, file: !938, line: 77, baseType: !998, size: 64, offset: 1280)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "LEXSHARED", file: !938, line: 32, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "yy_lexshared", file: !938, line: 26, size: 320, elements: !1001)
!1001 = !{!1002, !1004, !1005, !1006, !1007}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ls_prev", scope: !1000, file: !938, line: 27, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ls_linestr", scope: !1000, file: !938, line: 28, baseType: !74, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ls_bufptr", scope: !1000, file: !938, line: 29, baseType: !88, size: 64, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "re_eval_start", scope: !1000, file: !938, line: 30, baseType: !88, size: 64, offset: 192)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "re_eval_str", scope: !1000, file: !938, line: 31, baseType: !74, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "linestr", scope: !939, file: !938, line: 78, baseType: !74, size: 64, offset: 1344)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "bufptr", scope: !939, file: !938, line: 79, baseType: !88, size: 64, offset: 1408)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "oldbufptr", scope: !939, file: !938, line: 82, baseType: !88, size: 64, offset: 1472)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "oldoldbufptr", scope: !939, file: !938, line: 83, baseType: !88, size: 64, offset: 1536)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "bufend", scope: !939, file: !938, line: 84, baseType: !88, size: 64, offset: 1600)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "linestart", scope: !939, file: !938, line: 85, baseType: !88, size: 64, offset: 1664)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "last_uni", scope: !939, file: !938, line: 86, baseType: !88, size: 64, offset: 1728)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "last_lop", scope: !939, file: !938, line: 87, baseType: !88, size: 64, offset: 1792)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "copline", scope: !939, file: !938, line: 92, baseType: !632, size: 32, offset: 1856)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "in_my", scope: !939, file: !938, line: 93, baseType: !553, size: 16, offset: 1888)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lex_state", scope: !939, file: !938, line: 94, baseType: !267, size: 8, offset: 1904)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !939, file: !938, line: 95, baseType: !267, size: 8, offset: 1912)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "in_my_stash", scope: !939, file: !938, line: 96, baseType: !43, size: 64, offset: 1920)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "rsfp", scope: !939, file: !938, line: 97, baseType: !198, size: 64, offset: 1984)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "rsfp_filters", scope: !939, file: !938, line: 98, baseType: !31, size: 64, offset: 2048)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "form_lex_state", scope: !939, file: !938, line: 99, baseType: !267, size: 8, offset: 2112)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nextval", scope: !939, file: !938, line: 101, baseType: !1025, size: 320, offset: 2176)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 320, elements: !1026)
!1026 = !{!1027}
!1027 = !DISubrange(count: 5)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "nexttype", scope: !939, file: !938, line: 102, baseType: !1029, size: 160, offset: 2496)
!1029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 160, elements: !1026)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nexttoke", scope: !939, file: !938, line: 103, baseType: !81, size: 32, offset: 2656)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "saved_curcop", scope: !939, file: !938, line: 105, baseType: !613, size: 64, offset: 2688)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "tokenbuf", scope: !939, file: !938, line: 106, baseType: !1033, size: 2048, offset: 2752)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 2048, elements: !1034)
!1034 = !{!1035}
!1035 = !DISubrange(count: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "herelines", scope: !939, file: !938, line: 107, baseType: !632, size: 32, offset: 4800)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "preambling", scope: !939, file: !938, line: 108, baseType: !632, size: 32, offset: 4832)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lex_fakeeof", scope: !939, file: !938, line: 109, baseType: !267, size: 8, offset: 4864)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "lex_flags", scope: !939, file: !938, line: 110, baseType: !267, size: 8, offset: 4872)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "in_pod", scope: !939, file: !938, line: 111, baseType: !5, size: 1, offset: 4880, flags: DIFlagBitField, extraData: i64 4880)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "filtered", scope: !939, file: !938, line: 112, baseType: !5, size: 1, offset: 4881, flags: DIFlagBitField, extraData: i64 4880)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "saw_infix_sigil", scope: !939, file: !938, line: 113, baseType: !5, size: 1, offset: 4882, flags: DIFlagBitField, extraData: i64 4880)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "parsed_sub", scope: !939, file: !938, line: 114, baseType: !5, size: 1, offset: 4883, flags: DIFlagBitField, extraData: i64 4880)
!1044 = !{i32 7, !"Dwarf Version", i32 5}
!1045 = !{i32 2, !"Debug Info Version", i32 3}
!1046 = !{i32 1, !"wchar_size", i32 4}
!1047 = !{i32 7, !"PIC Level", i32 2}
!1048 = !{i32 7, !"PIE Level", i32 2}
!1049 = !{i32 7, !"uwtable", i32 2}
!1050 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1051 = distinct !DISubprogram(name: "Perl_stack_grow", scope: !1052, file: !1052, line: 30, type: !1053, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1055)
!1052 = !DIFile(filename: "apps/500.perlbench_r/src/scope.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3dd6693d494385a3479a373b6b5c2b90")
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!142, !142, !142, !372}
!1055 = !{!1056, !1057, !1058}
!1056 = !DILocalVariable(name: "sp", arg: 1, scope: !1051, file: !1052, line: 30, type: !142)
!1057 = !DILocalVariable(name: "p", arg: 2, scope: !1051, file: !1052, line: 30, type: !142)
!1058 = !DILocalVariable(name: "n", arg: 3, scope: !1051, file: !1052, line: 30, type: !372)
!1059 = !DILocation(line: 0, scope: !1051)
!1060 = !DILocation(line: 34, column: 17, scope: !1051)
!1061 = !DILocation(line: 36, column: 5, scope: !1051)
!1062 = !DILocation(line: 40, column: 12, scope: !1051)
!1063 = !DILocation(line: 40, column: 5, scope: !1051)
!1064 = !DISubprogram(name: "Perl_av_extend", scope: !1065, file: !1065, line: 214, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!1065 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !31, !372}
!1068 = !{}
!1069 = distinct !DISubprogram(name: "Perl_new_stackinfo", scope: !1052, file: !1052, line: 50, type: !1070, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1072)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!25, !157, !157}
!1072 = !{!1073, !1074, !1075}
!1073 = !DILocalVariable(name: "stitems", arg: 1, scope: !1069, file: !1052, line: 50, type: !157)
!1074 = !DILocalVariable(name: "cxitems", arg: 2, scope: !1069, file: !1052, line: 50, type: !157)
!1075 = !DILocalVariable(name: "si", scope: !1069, file: !1052, line: 52, type: !25)
!1076 = !DILocation(line: 0, scope: !1069)
!1077 = !DILocation(line: 53, column: 5, scope: !1069)
!1078 = !DILocation(line: 54, column: 20, scope: !1069)
!1079 = !DILocation(line: 54, column: 18, scope: !1069)
!1080 = !DILocation(line: 55, column: 5, scope: !1069)
!1081 = !DILocation(line: 56, column: 5, scope: !1069)
!1082 = !DILocation(line: 57, column: 5, scope: !1069)
!1083 = !DILocation(line: 57, column: 30, scope: !1069)
!1084 = !DILocation(line: 58, column: 5, scope: !1069)
!1085 = !DILocation(line: 58, column: 27, scope: !1069)
!1086 = !DILocation(line: 59, column: 9, scope: !1069)
!1087 = !DILocation(line: 61, column: 28, scope: !1069)
!1088 = !DILocation(line: 61, column: 9, scope: !1069)
!1089 = !DILocation(line: 60, column: 17, scope: !1069)
!1090 = !DILocation(line: 61, column: 18, scope: !1069)
!1091 = !DILocation(line: 62, column: 9, scope: !1069)
!1092 = !DILocation(line: 62, column: 17, scope: !1069)
!1093 = !DILocation(line: 63, column: 9, scope: !1069)
!1094 = !DILocation(line: 63, column: 17, scope: !1069)
!1095 = !DILocation(line: 64, column: 5, scope: !1069)
!1096 = !DILocation(line: 67, column: 5, scope: !1069)
!1097 = !DILocation(line: 68, column: 5, scope: !1069)
!1098 = !DISubprogram(name: "Perl_safesysmalloc", scope: !1065, file: !1065, line: 3751, type: !1099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{!79, !109}
!1101 = !DISubprogram(name: "Perl_newSV_type", scope: !1065, file: !1065, line: 3073, type: !1102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!74, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !902)
!1105 = distinct !DISubprogram(name: "Perl_cxinc", scope: !1052, file: !1052, line: 72, type: !1106, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!157}
!1108 = !{!1109}
!1109 = !DILocalVariable(name: "old_max", scope: !1105, file: !1052, line: 74, type: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!1111 = !DILocation(line: 74, column: 24, scope: !1105)
!1112 = !DILocation(line: 0, scope: !1105)
!1113 = !DILocation(line: 75, column: 19, scope: !1105)
!1114 = !DILocation(line: 75, column: 17, scope: !1105)
!1115 = !DILocation(line: 76, column: 5, scope: !1105)
!1116 = !DILocation(line: 79, column: 5, scope: !1105)
!1117 = !DILocation(line: 80, column: 12, scope: !1105)
!1118 = !DILocation(line: 80, column: 23, scope: !1105)
!1119 = !DILocation(line: 80, column: 5, scope: !1105)
!1120 = !DISubprogram(name: "Perl_safesysrealloc", scope: !1065, file: !1065, line: 3755, type: !1121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!79, !79, !109}
!1123 = distinct !DISubprogram(name: "Perl_push_scope", scope: !1052, file: !1052, line: 84, type: !1124, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1068)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null}
!1126 = !DILocation(line: 86, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !1052, line: 86, column: 9)
!1128 = !DILocation(line: 86, column: 9, scope: !1123)
!1129 = !DILocation(line: 96, column: 5, scope: !1123)
!1130 = !DILocation(line: 87, column: 22, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1127, file: !1052, line: 86, column: 58)
!1132 = !DILocation(line: 87, column: 20, scope: !1131)
!1133 = !DILocation(line: 88, column: 2, scope: !1131)
!1134 = !DILocation(line: 96, column: 35, scope: !1123)
!1135 = !DILocation(line: 92, column: 5, scope: !1131)
!1136 = !DILocation(line: 96, column: 41, scope: !1123)
!1137 = !DILocation(line: 96, column: 39, scope: !1123)
!1138 = !DILocation(line: 98, column: 1, scope: !1123)
!1139 = distinct !DISubprogram(name: "Perl_pop_scope", scope: !1052, file: !1052, line: 101, type: !1124, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1140)
!1140 = !{!1141}
!1141 = !DILocalVariable(name: "oldsave", scope: !1139, file: !1052, line: 103, type: !447)
!1142 = !DILocation(line: 103, column: 25, scope: !1139)
!1143 = !DILocation(line: 103, column: 39, scope: !1139)
!1144 = !DILocation(line: 0, scope: !1139)
!1145 = !DILocation(line: 104, column: 5, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !1052, line: 104, column: 5)
!1147 = distinct !DILexicalBlock(scope: !1139, file: !1052, line: 104, column: 5)
!1148 = !DILocation(line: 104, column: 5, scope: !1147)
!1149 = !DILocation(line: 105, column: 1, scope: !1139)
!1150 = distinct !DISubprogram(name: "Perl_leave_scope", scope: !1052, file: !1052, line: 759, type: !1151, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{null, !157}
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1163, !1164, !1165, !1166, !1168, !1169, !1172, !1175, !1177, !1180, !1182, !1184, !1192, !1197, !1200, !1203, !1206, !1210, !1213, !1215, !1217, !1220, !1224, !1225, !1226}
!1154 = !DILocalVariable(name: "base", arg: 1, scope: !1150, file: !1052, line: 759, type: !157)
!1155 = !DILocalVariable(name: "was", scope: !1150, file: !1052, line: 762, type: !343)
!1156 = !DILocalVariable(name: "i", scope: !1150, file: !1052, line: 764, type: !157)
!1157 = !DILocalVariable(name: "sv", scope: !1150, file: !1052, line: 765, type: !74)
!1158 = !DILocalVariable(name: "arg0", scope: !1150, file: !1052, line: 767, type: !333)
!1159 = !DILocalVariable(name: "arg1", scope: !1150, file: !1052, line: 767, type: !333)
!1160 = !DILocalVariable(name: "arg2", scope: !1150, file: !1052, line: 767, type: !333)
!1161 = !DILocalVariable(name: "uv", scope: !1162, file: !1052, line: 780, type: !94)
!1162 = distinct !DILexicalBlock(scope: !1150, file: !1052, line: 779, column: 36)
!1163 = !DILocalVariable(name: "type", scope: !1162, file: !1052, line: 781, type: !267)
!1164 = !DILocalVariable(name: "refsv", scope: !1162, file: !1052, line: 783, type: !74)
!1165 = !DILocalVariable(name: "svp", scope: !1162, file: !1052, line: 784, type: !142)
!1166 = !DILocalVariable(name: "ix", scope: !1167, file: !1052, line: 789, type: !157)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !1052, line: 788, column: 9)
!1168 = !DILocalVariable(name: "p", scope: !1167, file: !1052, line: 790, type: !831)
!1169 = !DILocalVariable(name: "p0", scope: !1170, file: !1052, line: 794, type: !831)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !1052, line: 793, column: 40)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !1052, line: 793, column: 17)
!1172 = !DILocalVariable(name: "sv", scope: !1173, file: !1052, line: 829, type: !413)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 828, column: 9)
!1174 = distinct !DILexicalBlock(scope: !1162, file: !1052, line: 807, column: 16)
!1175 = !DILocalVariable(name: "sv", scope: !1176, file: !1052, line: 864, type: !413)
!1176 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 863, column: 9)
!1177 = !DILocalVariable(name: "hv", scope: !1178, file: !1052, line: 872, type: !1179)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 871, column: 9)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!1180 = !DILocalVariable(name: "hv", scope: !1181, file: !1052, line: 955, type: !43)
!1181 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 954, column: 9)
!1182 = !DILocalVariable(name: "had_method", scope: !1181, file: !1052, line: 957, type: !1183)
!1183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!1184 = !DILocalVariable(name: "hek", scope: !1185, file: !1052, line: 1060, type: !151)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !1052, line: 1059, column: 21)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !1052, line: 1049, column: 41)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !1052, line: 1012, column: 57)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !1052, line: 1012, column: 21)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !1052, line: 1001, column: 35)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !1052, line: 1001, column: 13)
!1191 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1001, column: 13)
!1192 = !DILocalVariable(name: "hek", scope: !1193, file: !1052, line: 1089, type: !1196)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !1052, line: 1088, column: 21)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !1052, line: 1084, column: 41)
!1195 = distinct !DILexicalBlock(scope: !1188, file: !1052, line: 1083, column: 22)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!1197 = !DILocalVariable(name: "sv", scope: !1198, file: !1052, line: 1136, type: !413)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !1052, line: 1135, column: 23)
!1199 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1135, column: 10)
!1200 = !DILocalVariable(name: "he", scope: !1201, file: !1052, line: 1149, type: !1202)
!1201 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1148, column: 9)
!1202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!1203 = !DILocalVariable(name: "oval", scope: !1204, file: !1052, line: 1152, type: !452)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1052, line: 1151, column: 22)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !1052, line: 1151, column: 10)
!1206 = !DILocalVariable(name: "hv", scope: !1207, file: !1052, line: 1171, type: !43)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !1052, line: 1170, column: 32)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !1052, line: 1169, column: 41)
!1209 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1169, column: 10)
!1210 = !DILocalVariable(name: "hv", scope: !1211, file: !1052, line: 1186, type: !1179)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !1052, line: 1183, column: 28)
!1212 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1183, column: 10)
!1213 = !DILocalVariable(name: "svp", scope: !1214, file: !1052, line: 1201, type: !142)
!1214 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1200, column: 6)
!1215 = !DILocalVariable(name: "sp", scope: !1216, file: !1052, line: 1213, type: !142)
!1216 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1212, column: 6)
!1217 = !DILocalVariable(name: "gp", scope: !1218, file: !1052, line: 1258, type: !1219)
!1218 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1255, column: 28)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!1220 = !DILocalVariable(name: "gv", scope: !1221, file: !1052, line: 1260, type: !1223)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !1052, line: 1259, column: 30)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !1052, line: 1259, column: 10)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!1224 = !DILabel(scope: !1174, name: "restore_sv", file: !1052, line: 827)
!1225 = !DILabel(scope: !1174, name: "restore_svp", file: !1052, line: 862)
!1226 = !DILabel(scope: !1174, name: "clearsv", file: !1052, line: 1000)
!1227 = !DILocation(line: 0, scope: !1150)
!1228 = !DILocation(line: 762, column: 16, scope: !1150)
!1229 = !{i8 0, i8 2}
!1230 = !DILocation(line: 775, column: 9, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1150, file: !1052, line: 775, column: 9)
!1232 = !DILocation(line: 775, column: 9, scope: !1150)
!1233 = !DILocation(line: 776, column: 59, scope: !1231)
!1234 = !DILocation(line: 776, column: 2, scope: !1231)
!1235 = !DILocation(line: 0, scope: !1162)
!1236 = !DILocation(line: 779, column: 12, scope: !1150)
!1237 = !DILocation(line: 779, column: 28, scope: !1150)
!1238 = !DILocation(line: 779, column: 5, scope: !1150)
!1239 = !DILocation(line: 786, column: 2, scope: !1162)
!1240 = !DILocation(line: 789, column: 38, scope: !1167)
!1241 = !DILocation(line: 0, scope: !1167)
!1242 = !DILocation(line: 790, column: 23, scope: !1167)
!1243 = !DILocation(line: 791, column: 21, scope: !1167)
!1244 = !DILocation(line: 792, column: 20, scope: !1167)
!1245 = !DILocation(line: 792, column: 27, scope: !1167)
!1246 = !DILocation(line: 793, column: 22, scope: !1171)
!1247 = !DILocation(line: 793, column: 17, scope: !1167)
!1248 = !DILocation(line: 0, scope: !1170)
!1249 = !DILocation(line: 795, column: 25, scope: !1170)
!1250 = !DILocation(line: 795, column: 24, scope: !1170)
!1251 = !DILocation(line: 796, column: 26, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1170, file: !1052, line: 796, column: 21)
!1253 = !DILocation(line: 796, column: 21, scope: !1170)
!1254 = !DILocation(line: 797, column: 29, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1252, file: !1052, line: 796, column: 44)
!1256 = !DILocation(line: 797, column: 28, scope: !1255)
!1257 = !DILocation(line: 798, column: 30, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1255, file: !1052, line: 798, column: 25)
!1259 = !DILocation(line: 798, column: 25, scope: !1255)
!1260 = !DILocation(line: 799, column: 33, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !1052, line: 798, column: 48)
!1262 = !DILocation(line: 799, column: 32, scope: !1261)
!1263 = !DILocation(line: 800, column: 21, scope: !1261)
!1264 = !DILocation(line: 802, column: 27, scope: !1170)
!1265 = !DILocation(line: 802, column: 20, scope: !1170)
!1266 = !DILocation(line: 803, column: 13, scope: !1170)
!1267 = !DILocation(line: 804, column: 29, scope: !1167)
!1268 = !DILocation(line: 807, column: 2, scope: !1162)
!1269 = !DILocation(line: 809, column: 6, scope: !1174)
!1270 = !DILocation(line: 810, column: 17, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 810, column: 17)
!1272 = !DILocation(line: 810, column: 17, scope: !1174)
!1273 = !DILocation(line: 811, column: 31, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1271, file: !1052, line: 810, column: 48)
!1275 = !DILocation(line: 812, column: 17, scope: !1274)
!1276 = !DILocation(line: 813, column: 31, scope: !1274)
!1277 = !DILocation(line: 814, column: 13, scope: !1274)
!1278 = !DILocation(line: 825, column: 13, scope: !1174)
!1279 = !DILocation(line: 826, column: 6, scope: !1174)
!1280 = !DILocation(line: 829, column: 22, scope: !1173)
!1281 = !DILocation(line: 827, column: 2, scope: !1174)
!1282 = !DILocation(line: 0, scope: !1173)
!1283 = !DILocation(line: 830, column: 11, scope: !1173)
!1284 = !DILocalVariable(name: "sv", arg: 1, scope: !1285, file: !1286, line: 159, type: !74)
!1285 = distinct !DISubprogram(name: "S_SvREFCNT_dec", scope: !1286, file: !1286, line: 159, type: !1287, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1289)
!1286 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !74}
!1289 = !{!1284, !1290}
!1290 = !DILocalVariable(name: "rc", scope: !1291, file: !1286, line: 162, type: !81)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !1286, line: 161, column: 29)
!1292 = distinct !DILexicalBlock(scope: !1285, file: !1286, line: 161, column: 9)
!1293 = !DILocation(line: 0, scope: !1285, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 831, column: 6, scope: !1173)
!1295 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1294)
!1296 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1294)
!1297 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1294)
!1298 = !DILocation(line: 0, scope: !1291, inlinedAt: !1294)
!1299 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1294)
!1300 = distinct !DILexicalBlock(scope: !1291, file: !1286, line: 163, column: 6)
!1301 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1294)
!1302 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1294)
!1303 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1294)
!1304 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1294)
!1305 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1294)
!1306 = !DILocation(line: 832, column: 17, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1173, file: !1052, line: 832, column: 17)
!1308 = !DILocation(line: 832, column: 17, scope: !1173)
!1309 = !DILocation(line: 833, column: 31, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1307, file: !1052, line: 832, column: 48)
!1311 = !DILocation(line: 834, column: 17, scope: !1310)
!1312 = !DILocation(line: 835, column: 31, scope: !1310)
!1313 = !DILocation(line: 836, column: 13, scope: !1310)
!1314 = !DILocalVariable(name: "sv", arg: 1, scope: !1315, file: !1286, line: 171, type: !74)
!1315 = distinct !DISubprogram(name: "S_SvREFCNT_dec_NN", scope: !1286, file: !1286, line: 171, type: !1287, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1316)
!1316 = !{!1314, !1317}
!1317 = !DILocalVariable(name: "rc", scope: !1315, file: !1286, line: 173, type: !81)
!1318 = !DILocation(line: 0, scope: !1315, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 837, column: 6, scope: !1173)
!1320 = !DILocation(line: 173, column: 14, scope: !1315, inlinedAt: !1319)
!1321 = !DILocation(line: 174, column: 9, scope: !1322, inlinedAt: !1319)
!1322 = distinct !DILexicalBlock(scope: !1315, file: !1286, line: 174, column: 9)
!1323 = !DILocation(line: 174, column: 9, scope: !1315, inlinedAt: !1319)
!1324 = !DILocation(line: 175, column: 20, scope: !1322, inlinedAt: !1319)
!1325 = !DILocation(line: 175, column: 15, scope: !1322, inlinedAt: !1319)
!1326 = !DILocation(line: 175, column: 2, scope: !1322, inlinedAt: !1319)
!1327 = !DILocation(line: 177, column: 2, scope: !1322, inlinedAt: !1319)
!1328 = !DILocation(line: 0, scope: !1285, inlinedAt: !1329)
!1329 = distinct !DILocation(line: 838, column: 6, scope: !1173)
!1330 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1329)
!1331 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1329)
!1332 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1329)
!1333 = !DILocation(line: 0, scope: !1291, inlinedAt: !1329)
!1334 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1329)
!1335 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1329)
!1336 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1329)
!1337 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1329)
!1338 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1329)
!1339 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1329)
!1340 = !DILocation(line: 842, column: 10, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 842, column: 10)
!1342 = !DILocation(line: 842, column: 20, scope: !1341)
!1343 = !DILocation(line: 842, column: 10, scope: !1174)
!1344 = !DILocation(line: 843, column: 3, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !1052, line: 842, column: 32)
!1346 = !DILocation(line: 844, column: 13, scope: !1345)
!1347 = !DILocation(line: 845, column: 6, scope: !1345)
!1348 = !DILocation(line: 848, column: 10, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 848, column: 10)
!1350 = !DILocation(line: 848, column: 20, scope: !1349)
!1351 = !DILocation(line: 848, column: 10, scope: !1174)
!1352 = !DILocation(line: 852, column: 3, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1349, file: !1052, line: 848, column: 32)
!1354 = !DILocation(line: 854, column: 13, scope: !1353)
!1355 = !DILocation(line: 855, column: 6, scope: !1353)
!1356 = !DILocation(line: 858, column: 13, scope: !1174)
!1357 = !DILocation(line: 859, column: 6, scope: !1174)
!1358 = !DILocation(line: 864, column: 22, scope: !1176)
!1359 = !DILocation(line: 862, column: 2, scope: !1174)
!1360 = !DILocation(line: 0, scope: !1176)
!1361 = !DILocation(line: 865, column: 11, scope: !1176)
!1362 = !DILocation(line: 0, scope: !1285, inlinedAt: !1363)
!1363 = distinct !DILocation(line: 866, column: 6, scope: !1176)
!1364 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1363)
!1365 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1363)
!1366 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1363)
!1367 = !DILocation(line: 0, scope: !1291, inlinedAt: !1363)
!1368 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1363)
!1369 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1363)
!1370 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1363)
!1371 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1363)
!1372 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1363)
!1373 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1363)
!1374 = !DILocation(line: 0, scope: !1285, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 867, column: 6, scope: !1176)
!1376 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1375)
!1377 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1375)
!1378 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1375)
!1379 = !DILocation(line: 0, scope: !1291, inlinedAt: !1375)
!1380 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1375)
!1381 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1375)
!1382 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1375)
!1383 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1375)
!1384 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1375)
!1385 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1375)
!1386 = !DILocation(line: 872, column: 28, scope: !1178)
!1387 = !DILocation(line: 0, scope: !1178)
!1388 = !DILocation(line: 874, column: 10, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1178, file: !1052, line: 874, column: 10)
!1390 = !DILocation(line: 874, column: 13, scope: !1389)
!1391 = !DILocation(line: 874, column: 16, scope: !1389)
!1392 = !DILocation(line: 874, column: 28, scope: !1389)
!1393 = !DILocation(line: 875, column: 8, scope: !1389)
!1394 = !DILocation(line: 875, column: 16, scope: !1389)
!1395 = !DILocation(line: 875, column: 19, scope: !1389)
!1396 = !DILocation(line: 875, column: 35, scope: !1389)
!1397 = !DILocation(line: 876, column: 4, scope: !1389)
!1398 = !DILocation(line: 876, column: 8, scope: !1389)
!1399 = !DILocation(line: 876, column: 13, scope: !1389)
!1400 = !DILocation(line: 876, column: 16, scope: !1389)
!1401 = !DILocation(line: 876, column: 29, scope: !1389)
!1402 = !DILocation(line: 874, column: 10, scope: !1178)
!1403 = !DILocation(line: 879, column: 29, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !1052, line: 879, column: 7)
!1405 = distinct !DILexicalBlock(scope: !1389, file: !1052, line: 878, column: 6)
!1406 = !DILocation(line: 879, column: 19, scope: !1404)
!1407 = !DILocation(line: 880, column: 4, scope: !1404)
!1408 = !DILocation(line: 881, column: 7, scope: !1404)
!1409 = !DILocation(line: 881, column: 25, scope: !1404)
!1410 = !DILocation(line: 879, column: 7, scope: !1405)
!1411 = !DILocation(line: 882, column: 24, scope: !1404)
!1412 = !DILocation(line: 882, column: 7, scope: !1404)
!1413 = !DILocation(line: 883, column: 8, scope: !1404)
!1414 = !DILocation(line: 888, column: 6, scope: !1174)
!1415 = !DILocation(line: 0, scope: !1285, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 888, column: 6, scope: !1174)
!1417 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1416)
!1418 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1416)
!1419 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1416)
!1420 = !DILocation(line: 0, scope: !1291, inlinedAt: !1416)
!1421 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1416)
!1422 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1416)
!1423 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1416)
!1424 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1416)
!1425 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1416)
!1426 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1416)
!1427 = !DILocation(line: 889, column: 6, scope: !1174)
!1428 = !DILocation(line: 889, column: 20, scope: !1174)
!1429 = !DILocation(line: 890, column: 17, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 890, column: 17)
!1431 = !DILocation(line: 890, column: 17, scope: !1174)
!1432 = !DILocation(line: 891, column: 31, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1430, file: !1052, line: 890, column: 48)
!1434 = !DILocation(line: 892, column: 17, scope: !1433)
!1435 = !DILocation(line: 893, column: 31, scope: !1433)
!1436 = !DILocation(line: 894, column: 13, scope: !1433)
!1437 = !DILocation(line: 0, scope: !1315, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 895, column: 6, scope: !1174)
!1439 = !DILocation(line: 173, column: 14, scope: !1315, inlinedAt: !1438)
!1440 = !DILocation(line: 174, column: 9, scope: !1322, inlinedAt: !1438)
!1441 = !DILocation(line: 174, column: 9, scope: !1315, inlinedAt: !1438)
!1442 = !DILocation(line: 175, column: 20, scope: !1322, inlinedAt: !1438)
!1443 = !DILocation(line: 175, column: 15, scope: !1322, inlinedAt: !1438)
!1444 = !DILocation(line: 175, column: 2, scope: !1322, inlinedAt: !1438)
!1445 = !DILocation(line: 177, column: 2, scope: !1322, inlinedAt: !1438)
!1446 = !DILocation(line: 898, column: 6, scope: !1174)
!1447 = !DILocation(line: 0, scope: !1285, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 898, column: 6, scope: !1174)
!1449 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1448)
!1450 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1448)
!1451 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1448)
!1452 = !DILocation(line: 0, scope: !1291, inlinedAt: !1448)
!1453 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1448)
!1454 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1448)
!1455 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1448)
!1456 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1448)
!1457 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1448)
!1458 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1448)
!1459 = !DILocation(line: 899, column: 6, scope: !1174)
!1460 = !DILocation(line: 899, column: 20, scope: !1174)
!1461 = !DILocation(line: 900, column: 17, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 900, column: 17)
!1463 = !DILocation(line: 900, column: 17, scope: !1174)
!1464 = !DILocation(line: 901, column: 31, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !1052, line: 900, column: 48)
!1466 = !DILocation(line: 902, column: 17, scope: !1465)
!1467 = !DILocation(line: 903, column: 31, scope: !1465)
!1468 = !DILocation(line: 904, column: 13, scope: !1465)
!1469 = !DILocation(line: 0, scope: !1315, inlinedAt: !1470)
!1470 = distinct !DILocation(line: 905, column: 6, scope: !1174)
!1471 = !DILocation(line: 173, column: 14, scope: !1315, inlinedAt: !1470)
!1472 = !DILocation(line: 174, column: 9, scope: !1322, inlinedAt: !1470)
!1473 = !DILocation(line: 174, column: 9, scope: !1315, inlinedAt: !1470)
!1474 = !DILocation(line: 175, column: 20, scope: !1322, inlinedAt: !1470)
!1475 = !DILocation(line: 175, column: 15, scope: !1322, inlinedAt: !1470)
!1476 = !DILocation(line: 175, column: 2, scope: !1322, inlinedAt: !1470)
!1477 = !DILocation(line: 177, column: 2, scope: !1322, inlinedAt: !1470)
!1478 = !DILocation(line: 908, column: 33, scope: !1174)
!1479 = !DILocation(line: 908, column: 24, scope: !1174)
!1480 = !DILocation(line: 908, column: 22, scope: !1174)
!1481 = !DILocation(line: 909, column: 6, scope: !1174)
!1482 = !DILocation(line: 911, column: 29, scope: !1174)
!1483 = !DILocation(line: 911, column: 22, scope: !1174)
!1484 = !DILocation(line: 912, column: 6, scope: !1174)
!1485 = !DILocation(line: 914, column: 40, scope: !1174)
!1486 = !DILocation(line: 914, column: 25, scope: !1174)
!1487 = !DILocation(line: 915, column: 6, scope: !1174)
!1488 = !DILocation(line: 917, column: 25, scope: !1174)
!1489 = !DILocation(line: 917, column: 23, scope: !1174)
!1490 = !DILocation(line: 921, column: 10, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 921, column: 10)
!1492 = !DILocation(line: 921, column: 10, scope: !1174)
!1493 = !DILocation(line: 932, column: 33, scope: !1174)
!1494 = !DILocation(line: 932, column: 24, scope: !1174)
!1495 = !DILocation(line: 932, column: 22, scope: !1174)
!1496 = !DILocation(line: 933, column: 6, scope: !1174)
!1497 = !DILocation(line: 938, column: 35, scope: !1174)
!1498 = !DILocation(line: 938, column: 33, scope: !1174)
!1499 = !DILocation(line: 939, column: 6, scope: !1174)
!1500 = !DILocation(line: 941, column: 23, scope: !1174)
!1501 = !DILocation(line: 942, column: 6, scope: !1174)
!1502 = !DILocation(line: 945, column: 16, scope: !1174)
!1503 = !DILocation(line: 946, column: 6, scope: !1174)
!1504 = !DILocation(line: 948, column: 22, scope: !1174)
!1505 = !DILocation(line: 949, column: 6, scope: !1174)
!1506 = !DILocation(line: 951, column: 22, scope: !1174)
!1507 = !DILocation(line: 952, column: 6, scope: !1174)
!1508 = !DILocation(line: 957, column: 32, scope: !1181)
!1509 = !DILocation(line: 957, column: 31, scope: !1181)
!1510 = !DILocation(line: 0, scope: !1181)
!1511 = !DILocation(line: 958, column: 6, scope: !1181)
!1512 = !DILocation(line: 959, column: 6, scope: !1181)
!1513 = !DILocation(line: 960, column: 14, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1181, file: !1052, line: 960, column: 10)
!1515 = !DILocation(line: 960, column: 13, scope: !1514)
!1516 = !DILocation(line: 960, column: 32, scope: !1514)
!1517 = !DILocation(line: 960, column: 35, scope: !1514)
!1518 = !DILocation(line: 960, column: 10, scope: !1181)
!1519 = !DILocation(line: 961, column: 17, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !1052, line: 961, column: 17)
!1521 = distinct !DILexicalBlock(scope: !1514, file: !1052, line: 960, column: 52)
!1522 = !DILocation(line: 961, column: 36, scope: !1520)
!1523 = !DILocation(line: 962, column: 21, scope: !1520)
!1524 = !DILocation(line: 962, column: 24, scope: !1520)
!1525 = !DILocation(line: 961, column: 17, scope: !1521)
!1526 = !DILocation(line: 964, column: 14, scope: !1520)
!1527 = !DILocation(line: 965, column: 37, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1520, file: !1052, line: 965, column: 26)
!1529 = !DILocation(line: 965, column: 40, scope: !1528)
!1530 = !DILocation(line: 965, column: 26, scope: !1520)
!1531 = !DILocation(line: 967, column: 21, scope: !1528)
!1532 = !DILocation(line: 0, scope: !1315, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 969, column: 6, scope: !1181)
!1534 = !DILocation(line: 173, column: 14, scope: !1315, inlinedAt: !1533)
!1535 = !DILocation(line: 174, column: 9, scope: !1322, inlinedAt: !1533)
!1536 = !DILocation(line: 174, column: 9, scope: !1315, inlinedAt: !1533)
!1537 = !DILocation(line: 175, column: 20, scope: !1322, inlinedAt: !1533)
!1538 = !DILocation(line: 175, column: 15, scope: !1322, inlinedAt: !1533)
!1539 = !DILocation(line: 175, column: 2, scope: !1322, inlinedAt: !1533)
!1540 = !DILocation(line: 177, column: 2, scope: !1322, inlinedAt: !1533)
!1541 = !DILocation(line: 0, scope: !1285, inlinedAt: !1542)
!1542 = distinct !DILocation(line: 973, column: 6, scope: !1174)
!1543 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1542)
!1544 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1542)
!1545 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1542)
!1546 = !DILocation(line: 0, scope: !1291, inlinedAt: !1542)
!1547 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1542)
!1548 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1542)
!1549 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1542)
!1550 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1542)
!1551 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1542)
!1552 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1542)
!1553 = !DILocation(line: 976, column: 6, scope: !1174)
!1554 = !DILocation(line: 977, column: 6, scope: !1174)
!1555 = !DILocation(line: 979, column: 6, scope: !1174)
!1556 = !DILocation(line: 980, column: 6, scope: !1174)
!1557 = !DILocation(line: 982, column: 6, scope: !1174)
!1558 = !DILocation(line: 983, column: 6, scope: !1174)
!1559 = !DILocation(line: 986, column: 6, scope: !1174)
!1560 = !DILocation(line: 987, column: 6, scope: !1174)
!1561 = !DILocation(line: 989, column: 6, scope: !1174)
!1562 = !DILocation(line: 990, column: 6, scope: !1174)
!1563 = !DILocation(line: 998, column: 13, scope: !1174)
!1564 = !DILocation(line: 998, column: 26, scope: !1174)
!1565 = !DILocation(line: 1000, column: 11, scope: !1174)
!1566 = !DILocation(line: 1001, column: 13, scope: !1191)
!1567 = !DILocation(line: 993, column: 17, scope: !1174)
!1568 = !DILocation(line: 994, column: 13, scope: !1174)
!1569 = !DILocation(line: 994, column: 26, scope: !1174)
!1570 = !DILocation(line: 995, column: 66, scope: !1174)
!1571 = !DILocation(line: 995, column: 70, scope: !1174)
!1572 = !DILocation(line: 1002, column: 22, scope: !1189)
!1573 = !DILocation(line: 1012, column: 21, scope: !1188)
!1574 = !DILocation(line: 1012, column: 34, scope: !1188)
!1575 = !DILocation(line: 0, scope: !1188)
!1576 = !DILocation(line: 1012, column: 39, scope: !1188)
!1577 = !DILocation(line: 1016, column: 25, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1187, file: !1052, line: 1016, column: 25)
!1579 = !DILocation(line: 1016, column: 25, scope: !1187)
!1580 = !DILocation(line: 1027, column: 29, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !1052, line: 1027, column: 29)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !1052, line: 1021, column: 21)
!1583 = !DILocation(line: 1027, column: 29, scope: !1582)
!1584 = !DILocation(line: 1028, column: 29, scope: !1581)
!1585 = !DILocation(line: 1030, column: 29, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1582, file: !1052, line: 1030, column: 29)
!1587 = !DILocation(line: 1030, column: 29, scope: !1582)
!1588 = !DILocation(line: 1031, column: 33, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !1052, line: 1031, column: 33)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !1052, line: 1030, column: 40)
!1591 = !DILocation(line: 1031, column: 44, scope: !1589)
!1592 = !DILocation(line: 1031, column: 33, scope: !1590)
!1593 = !DILocation(line: 1032, column: 33, scope: !1589)
!1594 = !DILocation(line: 1034, column: 33, scope: !1589)
!1595 = !DILocation(line: 1037, column: 29, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1582, file: !1052, line: 1037, column: 29)
!1597 = !DILocation(line: 1037, column: 29, scope: !1582)
!1598 = !DILocation(line: 1040, column: 29, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !1052, line: 1037, column: 44)
!1600 = !DILocation(line: 1041, column: 33, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1599, file: !1052, line: 1041, column: 33)
!1602 = !DILocation(line: 1041, column: 44, scope: !1601)
!1603 = !DILocation(line: 1041, column: 33, scope: !1599)
!1604 = !DILocation(line: 1042, column: 33, scope: !1601)
!1605 = !DILocation(line: 1044, column: 29, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1582, file: !1052, line: 1044, column: 29)
!1607 = !DILocation(line: 1044, column: 29, scope: !1582)
!1608 = !DILocation(line: 1045, column: 29, scope: !1606)
!1609 = !DILocation(line: 1049, column: 29, scope: !1187)
!1610 = !DILocation(line: 1049, column: 21, scope: !1187)
!1611 = !DILocation(line: 1053, column: 25, scope: !1186)
!1612 = !DILocation(line: 1054, column: 25, scope: !1186)
!1613 = !DILocation(line: 1056, column: 25, scope: !1186)
!1614 = !DILocation(line: 1057, column: 25, scope: !1186)
!1615 = !DILocation(line: 1061, column: 10, scope: !1185)
!1616 = !DILocation(line: 0, scope: !1185)
!1617 = !DILocalVariable(name: "sv", arg: 1, scope: !1618, file: !1286, line: 29, type: !285)
!1618 = distinct !DISubprogram(name: "S_CvGV", scope: !1286, file: !1286, line: 29, type: !1619, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1621)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!218, !285}
!1621 = !{!1617}
!1622 = !DILocation(line: 0, scope: !1618, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 1063, column: 7, scope: !1185)
!1624 = !DILocation(line: 33, column: 47, scope: !1618, inlinedAt: !1623)
!1625 = !DILocation(line: 1063, column: 7, scope: !1185)
!1626 = !DILocation(line: 1065, column: 31, scope: !1185)
!1627 = !DILocation(line: 1066, column: 25, scope: !1185)
!1628 = !DILocation(line: 1067, column: 25, scope: !1185)
!1629 = !DILocalVariable(name: "sv", arg: 1, scope: !1630, file: !293, line: 231, type: !285)
!1630 = distinct !DISubprogram(name: "CvNAME_HEK", scope: !293, file: !293, line: 231, type: !1631, scopeLine: 232, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1633)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!151, !285}
!1633 = !{!1629}
!1634 = !DILocation(line: 0, scope: !1630, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 1067, column: 25, scope: !1185)
!1636 = !DILocation(line: 233, column: 12, scope: !1630, inlinedAt: !1635)
!1637 = !DILocation(line: 234, column: 38, scope: !1630, inlinedAt: !1635)
!1638 = !DILocation(line: 234, column: 47, scope: !1630, inlinedAt: !1635)
!1639 = !DILocation(line: 1068, column: 25, scope: !1185)
!1640 = !DILocation(line: 1077, column: 37, scope: !1186)
!1641 = !DILocation(line: 1078, column: 25, scope: !1186)
!1642 = !DILocation(line: 1080, column: 21, scope: !1187)
!1643 = !DILocalVariable(name: "sv", arg: 1, scope: !1644, file: !1286, line: 194, type: !74)
!1644 = distinct !DISubprogram(name: "S_SvPADSTALE_on", scope: !1286, file: !1286, line: 194, type: !1645, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1647)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!81, !74}
!1647 = !{!1643}
!1648 = !DILocation(line: 0, scope: !1644, inlinedAt: !1649)
!1649 = distinct !DILocation(line: 1081, column: 21, scope: !1187)
!1650 = !DILocation(line: 1082, column: 17, scope: !1187)
!1651 = !DILocation(line: 1084, column: 21, scope: !1195)
!1652 = !DILocation(line: 1085, column: 43, scope: !1194)
!1653 = !DILocation(line: 1085, column: 41, scope: !1194)
!1654 = !DILocation(line: 1085, column: 64, scope: !1194)
!1655 = !DILocation(line: 1086, column: 43, scope: !1194)
!1656 = !DILocation(line: 1086, column: 41, scope: !1194)
!1657 = !DILocation(line: 1086, column: 64, scope: !1194)
!1658 = !DILocation(line: 1089, column: 43, scope: !1193)
!1659 = !DILocation(line: 0, scope: !1193)
!1660 = !DILocation(line: 0, scope: !1618, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 1091, column: 48, scope: !1193)
!1662 = !DILocation(line: 33, column: 47, scope: !1618, inlinedAt: !1661)
!1663 = !DILocation(line: 1091, column: 48, scope: !1193)
!1664 = !DILocation(line: 1094, column: 32, scope: !1193)
!1665 = !DILocation(line: 1094, column: 30, scope: !1193)
!1666 = !DILocation(line: 1097, column: 25, scope: !1193)
!1667 = !DILocation(line: 0, scope: !1630, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 1097, column: 25, scope: !1193)
!1669 = !DILocation(line: 233, column: 12, scope: !1630, inlinedAt: !1668)
!1670 = !DILocation(line: 234, column: 38, scope: !1630, inlinedAt: !1668)
!1671 = !DILocation(line: 234, column: 47, scope: !1630, inlinedAt: !1668)
!1672 = !DILocation(line: 1099, column: 25, scope: !1193)
!1673 = !DILocation(line: 1102, column: 37, scope: !1194)
!1674 = !DILocation(line: 1102, column: 35, scope: !1194)
!1675 = !DILocation(line: 1102, column: 48, scope: !1194)
!1676 = !DILocation(line: 0, scope: !1315, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 1104, column: 21, scope: !1195)
!1678 = !DILocation(line: 173, column: 14, scope: !1315, inlinedAt: !1677)
!1679 = !DILocation(line: 174, column: 9, scope: !1322, inlinedAt: !1677)
!1680 = !DILocation(line: 174, column: 9, scope: !1315, inlinedAt: !1677)
!1681 = !DILocation(line: 175, column: 20, scope: !1322, inlinedAt: !1677)
!1682 = !DILocation(line: 175, column: 15, scope: !1322, inlinedAt: !1677)
!1683 = !DILocation(line: 175, column: 2, scope: !1322, inlinedAt: !1677)
!1684 = !DILocation(line: 177, column: 2, scope: !1322, inlinedAt: !1677)
!1685 = !DILocation(line: 1107, column: 21, scope: !1195)
!1686 = !DILocation(line: 1107, column: 35, scope: !1195)
!1687 = !DILocation(line: 1001, column: 24, scope: !1190)
!1688 = !DILocation(line: 1001, column: 31, scope: !1190)
!1689 = distinct !{!1689, !1566, !1690, !1691, !1692}
!1690 = !DILocation(line: 1109, column: 13, scope: !1191)
!1691 = !{!"llvm.loop.mustprogress"}
!1692 = !{!"llvm.loop.unroll.disable"}
!1693 = !DILocation(line: 1112, column: 12, scope: !1174)
!1694 = !DILocation(line: 0, scope: !1285, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 1113, column: 6, scope: !1174)
!1696 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1695)
!1697 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1695)
!1698 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1695)
!1699 = !DILocation(line: 0, scope: !1291, inlinedAt: !1695)
!1700 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1695)
!1701 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1695)
!1702 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1695)
!1703 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1695)
!1704 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1695)
!1705 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1695)
!1706 = !DILocation(line: 1114, column: 6, scope: !1174)
!1707 = !DILocation(line: 1115, column: 6, scope: !1174)
!1708 = !DILocation(line: 1117, column: 12, scope: !1174)
!1709 = !DILocation(line: 0, scope: !1285, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 1118, column: 6, scope: !1174)
!1711 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1710)
!1712 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1710)
!1713 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1710)
!1714 = !DILocation(line: 0, scope: !1291, inlinedAt: !1710)
!1715 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1710)
!1716 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1710)
!1717 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1710)
!1718 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1710)
!1719 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1710)
!1720 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1710)
!1721 = !DILocation(line: 1121, column: 6, scope: !1174)
!1722 = !DILocation(line: 1122, column: 6, scope: !1174)
!1723 = !DILocation(line: 1126, column: 28, scope: !1174)
!1724 = !DILocation(line: 1126, column: 22, scope: !1174)
!1725 = !DILocation(line: 1127, column: 6, scope: !1174)
!1726 = !DILocation(line: 1129, column: 20, scope: !1174)
!1727 = !DILocation(line: 1129, column: 41, scope: !1174)
!1728 = !DILocation(line: 1129, column: 34, scope: !1174)
!1729 = !DILocation(line: 1129, column: 18, scope: !1174)
!1730 = !DILocation(line: 1130, column: 6, scope: !1174)
!1731 = !DILocation(line: 1132, column: 12, scope: !1174)
!1732 = !DILocation(line: 1133, column: 10, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1133, column: 10)
!1734 = !DILocation(line: 0, scope: !1285, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 1134, column: 3, scope: !1733)
!1736 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1735)
!1737 = !DILocation(line: 0, scope: !1291, inlinedAt: !1735)
!1738 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1735)
!1739 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1735)
!1740 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1735)
!1741 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1735)
!1742 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1735)
!1743 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1735)
!1744 = !DILocation(line: 1135, column: 10, scope: !1199)
!1745 = !DILocation(line: 1135, column: 10, scope: !1174)
!1746 = !DILocation(line: 1136, column: 19, scope: !1198)
!1747 = !DILocation(line: 0, scope: !1198)
!1748 = !DILocation(line: 1137, column: 7, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1198, file: !1052, line: 1137, column: 7)
!1750 = !DILocation(line: 1138, column: 11, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !1052, line: 1138, column: 11)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !1052, line: 1137, column: 41)
!1753 = !DILocation(line: 1138, column: 11, scope: !1752)
!1754 = !DILocation(line: 1139, column: 4, scope: !1751)
!1755 = !DILocation(line: 0, scope: !1285, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 1144, column: 6, scope: !1174)
!1757 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1756)
!1758 = !DILocation(line: 0, scope: !1291, inlinedAt: !1756)
!1759 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1756)
!1760 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1756)
!1761 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1756)
!1762 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1756)
!1763 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1756)
!1764 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1756)
!1765 = !DILocation(line: 0, scope: !1285, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 1145, column: 6, scope: !1174)
!1767 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1766)
!1768 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1766)
!1769 = !DILocation(line: 0, scope: !1291, inlinedAt: !1766)
!1770 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1766)
!1771 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1766)
!1772 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1766)
!1773 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1766)
!1774 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1766)
!1775 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1766)
!1776 = !DILocation(line: 1149, column: 22, scope: !1201)
!1777 = !DILocation(line: 0, scope: !1201)
!1778 = !DILocation(line: 0, scope: !1285, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 1150, column: 6, scope: !1201)
!1780 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1779)
!1781 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1779)
!1782 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1779)
!1783 = !DILocation(line: 0, scope: !1291, inlinedAt: !1779)
!1784 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1779)
!1785 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1779)
!1786 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1779)
!1787 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1779)
!1788 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1779)
!1789 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1779)
!1790 = !DILocation(line: 1151, column: 10, scope: !1205)
!1791 = !DILocation(line: 1151, column: 10, scope: !1201)
!1792 = !DILocation(line: 1152, column: 27, scope: !1204)
!1793 = !DILocation(line: 0, scope: !1204)
!1794 = !DILocation(line: 1153, column: 7, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1204, file: !1052, line: 1153, column: 7)
!1796 = !DILocation(line: 1155, column: 11, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !1052, line: 1155, column: 11)
!1798 = distinct !DILexicalBlock(scope: !1795, file: !1052, line: 1153, column: 45)
!1799 = !DILocation(line: 1155, column: 11, scope: !1798)
!1800 = !DILocation(line: 1156, column: 4, scope: !1797)
!1801 = !DILocalVariable(name: "sv", arg: 1, scope: !1802, file: !1286, line: 153, type: !74)
!1802 = distinct !DISubprogram(name: "S_SvREFCNT_inc_void", scope: !1286, file: !1286, line: 153, type: !1287, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1803)
!1803 = !{!1801}
!1804 = !DILocation(line: 0, scope: !1802, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 1156, column: 4, scope: !1797)
!1806 = !DILocation(line: 155, column: 9, scope: !1807, inlinedAt: !1805)
!1807 = distinct !DILexicalBlock(scope: !1802, file: !1286, line: 155, column: 9)
!1808 = !DILocation(line: 155, column: 9, scope: !1802, inlinedAt: !1805)
!1809 = !DILocation(line: 156, column: 2, scope: !1807, inlinedAt: !1805)
!1810 = !DILocation(line: 156, column: 14, scope: !1807, inlinedAt: !1805)
!1811 = !DILocation(line: 0, scope: !1285, inlinedAt: !1812)
!1812 = distinct !DILocation(line: 1161, column: 6, scope: !1201)
!1813 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1812)
!1814 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1812)
!1815 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1812)
!1816 = !DILocation(line: 0, scope: !1291, inlinedAt: !1812)
!1817 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1812)
!1818 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1812)
!1819 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1812)
!1820 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1812)
!1821 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1812)
!1822 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1812)
!1823 = !DILocation(line: 0, scope: !1285, inlinedAt: !1824)
!1824 = distinct !DILocation(line: 1162, column: 6, scope: !1201)
!1825 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1824)
!1826 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1824)
!1827 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1824)
!1828 = !DILocation(line: 0, scope: !1291, inlinedAt: !1824)
!1829 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1824)
!1830 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1824)
!1831 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1824)
!1832 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1824)
!1833 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1824)
!1834 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1824)
!1835 = !DILocation(line: 1166, column: 12, scope: !1174)
!1836 = !DILocation(line: 1167, column: 6, scope: !1174)
!1837 = !DILocation(line: 1169, column: 11, scope: !1209)
!1838 = !DILocation(line: 1169, column: 20, scope: !1209)
!1839 = !DILocation(line: 1169, column: 10, scope: !1174)
!1840 = !DILocation(line: 1170, column: 15, scope: !1208)
!1841 = !DILocation(line: 1170, column: 8, scope: !1208)
!1842 = !DILocation(line: 0, scope: !1207)
!1843 = !DILocation(line: 1172, column: 19, scope: !1207)
!1844 = !DILocation(line: 0, scope: !1285, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 1173, column: 3, scope: !1207)
!1846 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1845)
!1847 = !DILocation(line: 0, scope: !1291, inlinedAt: !1845)
!1848 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1845)
!1849 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1845)
!1850 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1845)
!1851 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1845)
!1852 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1845)
!1853 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1845)
!1854 = distinct !{!1854, !1841, !1855, !1691, !1692}
!1855 = !DILocation(line: 1174, column: 8, scope: !1208)
!1856 = !DILocation(line: 1176, column: 6, scope: !1174)
!1857 = !DILocation(line: 1177, column: 6, scope: !1174)
!1858 = !DILocation(line: 1178, column: 25, scope: !1174)
!1859 = !DILocation(line: 1178, column: 23, scope: !1174)
!1860 = !DILocation(line: 1179, column: 19, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1179, column: 10)
!1862 = !DILocation(line: 0, scope: !1174)
!1863 = !DILocation(line: 1179, column: 10, scope: !1174)
!1864 = !DILocation(line: 1180, column: 3, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1861, file: !1052, line: 1179, column: 39)
!1866 = !DILocation(line: 0, scope: !1285, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 1180, column: 3, scope: !1865)
!1868 = !DILocation(line: 161, column: 9, scope: !1292, inlinedAt: !1867)
!1869 = !DILocation(line: 161, column: 9, scope: !1285, inlinedAt: !1867)
!1870 = !DILocation(line: 162, column: 11, scope: !1291, inlinedAt: !1867)
!1871 = !DILocation(line: 0, scope: !1291, inlinedAt: !1867)
!1872 = !DILocation(line: 163, column: 6, scope: !1300, inlinedAt: !1867)
!1873 = !DILocation(line: 163, column: 6, scope: !1291, inlinedAt: !1867)
!1874 = !DILocation(line: 164, column: 24, scope: !1300, inlinedAt: !1867)
!1875 = !DILocation(line: 164, column: 19, scope: !1300, inlinedAt: !1867)
!1876 = !DILocation(line: 164, column: 6, scope: !1300, inlinedAt: !1867)
!1877 = !DILocation(line: 166, column: 6, scope: !1300, inlinedAt: !1867)
!1878 = !DILocation(line: 1181, column: 3, scope: !1865)
!1879 = !DILocation(line: 1181, column: 21, scope: !1865)
!1880 = !DILocation(line: 1181, column: 19, scope: !1865)
!1881 = !DILocation(line: 1182, column: 6, scope: !1865)
!1882 = !DILocation(line: 1183, column: 11, scope: !1212)
!1883 = !DILocation(line: 1183, column: 10, scope: !1174)
!1884 = !DILocation(line: 1186, column: 18, scope: !1211)
!1885 = !DILocation(line: 0, scope: !1211)
!1886 = !DILocation(line: 1187, column: 3, scope: !1211)
!1887 = !DILocation(line: 1188, column: 3, scope: !1211)
!1888 = !DILocation(line: 1188, column: 19, scope: !1211)
!1889 = !DILocation(line: 1189, column: 6, scope: !1211)
!1890 = !DILocation(line: 1193, column: 17, scope: !1174)
!1891 = !DILocation(line: 1194, column: 10, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1194, column: 10)
!1893 = !DILocation(line: 1194, column: 10, scope: !1174)
!1894 = !DILocation(line: 1195, column: 15, scope: !1892)
!1895 = !DILocation(line: 1195, column: 13, scope: !1892)
!1896 = !DILocation(line: 1195, column: 3, scope: !1892)
!1897 = !DILocation(line: 1197, column: 13, scope: !1892)
!1898 = !DILocation(line: 1203, column: 9, scope: !1214)
!1899 = !DILocation(line: 1203, column: 51, scope: !1214)
!1900 = !DILocation(line: 1203, column: 33, scope: !1214)
!1901 = !DILocation(line: 0, scope: !1214)
!1902 = !DILocation(line: 1207, column: 3, scope: !1214)
!1903 = !DILocation(line: 1208, column: 8, scope: !1214)
!1904 = !DILocation(line: 1210, column: 6, scope: !1174)
!1905 = !DILocation(line: 1213, column: 3, scope: !1216)
!1906 = !DILocation(line: 0, scope: !1216)
!1907 = !DILocation(line: 1214, column: 3, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1216, file: !1052, line: 1214, column: 3)
!1909 = !DILocation(line: 1215, column: 3, scope: !1216)
!1910 = !DILocation(line: 1215, column: 29, scope: !1216)
!1911 = !DILocation(line: 1217, column: 6, scope: !1174)
!1912 = !DILocation(line: 1219, column: 40, scope: !1174)
!1913 = !DILocation(line: 1219, column: 33, scope: !1174)
!1914 = !DILocation(line: 1219, column: 13, scope: !1174)
!1915 = !DILocation(line: 1219, column: 30, scope: !1174)
!1916 = !DILocation(line: 1220, column: 38, scope: !1174)
!1917 = !DILocation(line: 1220, column: 30, scope: !1174)
!1918 = !DILocation(line: 1221, column: 6, scope: !1174)
!1919 = !DILocation(line: 1225, column: 12, scope: !1174)
!1920 = !DILocation(line: 1226, column: 6, scope: !1174)
!1921 = !DILocation(line: 1228, column: 30, scope: !1174)
!1922 = !DILocation(line: 1228, column: 23, scope: !1174)
!1923 = !DILocation(line: 1229, column: 6, scope: !1174)
!1924 = !DILocation(line: 1231, column: 28, scope: !1174)
!1925 = !DILocation(line: 1231, column: 21, scope: !1174)
!1926 = !DILocation(line: 1232, column: 6, scope: !1174)
!1927 = !DILocation(line: 1235, column: 33, scope: !1174)
!1928 = !DILocation(line: 1235, column: 24, scope: !1174)
!1929 = !DILocation(line: 1235, column: 22, scope: !1174)
!1930 = !DILocation(line: 1236, column: 6, scope: !1174)
!1931 = !DILocation(line: 1238, column: 31, scope: !1174)
!1932 = !DILocation(line: 1238, column: 23, scope: !1174)
!1933 = !DILocation(line: 1238, column: 21, scope: !1174)
!1934 = !DILocation(line: 1239, column: 6, scope: !1174)
!1935 = !DILocation(line: 1241, column: 6, scope: !1174)
!1936 = !DILocation(line: 1242, column: 6, scope: !1174)
!1937 = !DILocation(line: 1244, column: 11, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1174, file: !1052, line: 1244, column: 10)
!1939 = !DILocation(line: 1245, column: 3, scope: !1938)
!1940 = !DILocation(line: 1247, column: 32, scope: !1174)
!1941 = !DILocation(line: 1248, column: 6, scope: !1174)
!1942 = !DILocation(line: 1250, column: 6, scope: !1174)
!1943 = !DILocation(line: 1251, column: 6, scope: !1174)
!1944 = !DILocation(line: 1253, column: 6, scope: !1174)
!1945 = !DILocation(line: 1254, column: 6, scope: !1174)
!1946 = !DILocation(line: 0, scope: !1218)
!1947 = !DILocation(line: 1259, column: 14, scope: !1222)
!1948 = !DILocation(line: 1259, column: 24, scope: !1222)
!1949 = !DILocation(line: 1259, column: 10, scope: !1218)
!1950 = !DILocation(line: 1260, column: 25, scope: !1221)
!1951 = !DILocation(line: 0, scope: !1221)
!1952 = !DILocation(line: 1261, column: 3, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1221, file: !1052, line: 1261, column: 3)
!1954 = !DILocation(line: 1262, column: 3, scope: !1221)
!1955 = !DILocation(line: 1263, column: 3, scope: !1221)
!1956 = !DILocation(line: 1264, column: 3, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1221, file: !1052, line: 1264, column: 3)
!1958 = !DILocation(line: 1265, column: 6, scope: !1221)
!1959 = !DILocation(line: 1267, column: 16, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1222, file: !1052, line: 1266, column: 11)
!1961 = !DILocation(line: 1268, column: 10, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1960, file: !1052, line: 1268, column: 7)
!1963 = !DILocation(line: 0, scope: !1962)
!1964 = !DILocation(line: 1268, column: 7, scope: !1960)
!1965 = !DILocation(line: 1268, column: 29, scope: !1962)
!1966 = !DILocation(line: 1268, column: 16, scope: !1962)
!1967 = !DILocation(line: 1269, column: 26, scope: !1962)
!1968 = !DILocation(line: 1274, column: 6, scope: !1174)
!1969 = !DILocation(line: 1275, column: 2, scope: !1174)
!1970 = distinct !{!1970, !1238, !1971, !1691, !1692}
!1971 = !DILocation(line: 1276, column: 5, scope: !1150)
!1972 = !DILocation(line: 762, column: 10, scope: !1150)
!1973 = !DILocation(line: 1278, column: 5, scope: !1150)
!1974 = !DILocation(line: 1279, column: 1, scope: !1150)
!1975 = distinct !DISubprogram(name: "Perl_markstack_grow", scope: !1052, file: !1052, line: 108, type: !1976, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1978)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!830}
!1978 = !{!1979, !1980}
!1979 = !DILocalVariable(name: "oldmax", scope: !1975, file: !1052, line: 110, type: !447)
!1980 = !DILocalVariable(name: "newmax", scope: !1975, file: !1052, line: 111, type: !447)
!1981 = !DILocation(line: 110, column: 24, scope: !1975)
!1982 = !DILocation(line: 110, column: 43, scope: !1975)
!1983 = !DILocation(line: 110, column: 41, scope: !1975)
!1984 = !DILocation(line: 0, scope: !1975)
!1985 = !DILocation(line: 111, column: 24, scope: !1975)
!1986 = !DILocation(line: 113, column: 5, scope: !1975)
!1987 = !DILocation(line: 114, column: 37, scope: !1975)
!1988 = !DILocation(line: 114, column: 22, scope: !1975)
!1989 = !DILocation(line: 115, column: 37, scope: !1975)
!1990 = !DILocation(line: 115, column: 22, scope: !1975)
!1991 = !DILocation(line: 116, column: 5, scope: !1975)
!1992 = distinct !DISubprogram(name: "Perl_savestack_grow", scope: !1052, file: !1052, line: 120, type: !1124, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1068)
!1993 = !DILocation(line: 122, column: 24, scope: !1992)
!1994 = !DILocation(line: 122, column: 47, scope: !1992)
!1995 = !DILocation(line: 122, column: 22, scope: !1992)
!1996 = !DILocation(line: 123, column: 5, scope: !1992)
!1997 = !DILocation(line: 124, column: 1, scope: !1992)
!1998 = distinct !DISubprogram(name: "Perl_savestack_grow_cnt", scope: !1052, file: !1052, line: 127, type: !1151, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1999)
!1999 = !{!2000}
!2000 = !DILocalVariable(name: "need", arg: 1, scope: !1998, file: !1052, line: 127, type: !157)
!2001 = !DILocation(line: 0, scope: !1998)
!2002 = !DILocation(line: 129, column: 24, scope: !1998)
!2003 = !DILocation(line: 129, column: 40, scope: !1998)
!2004 = !DILocation(line: 129, column: 22, scope: !1998)
!2005 = !DILocation(line: 130, column: 5, scope: !1998)
!2006 = !DILocation(line: 131, column: 1, scope: !1998)
!2007 = distinct !DISubprogram(name: "Perl_tmps_grow_p", scope: !1052, file: !1052, line: 153, type: !2008, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!372, !372}
!2010 = !{!2011, !2012}
!2011 = !DILocalVariable(name: "ix", arg: 1, scope: !2007, file: !1052, line: 153, type: !372)
!2012 = !DILocalVariable(name: "extend_to", scope: !2007, file: !1052, line: 155, type: !372)
!2013 = !DILocation(line: 0, scope: !2007)
!2014 = !DILocation(line: 157, column: 14, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2007, file: !1052, line: 157, column: 9)
!2016 = !DILocation(line: 157, column: 12, scope: !2015)
!2017 = !DILocation(line: 157, column: 26, scope: !2015)
!2018 = !DILocation(line: 157, column: 9, scope: !2007)
!2019 = !DILocation(line: 158, column: 28, scope: !2015)
!2020 = !DILocation(line: 158, column: 15, scope: !2015)
!2021 = !DILocation(line: 158, column: 12, scope: !2015)
!2022 = !DILocation(line: 158, column: 2, scope: !2015)
!2023 = !DILocation(line: 160, column: 29, scope: !2007)
!2024 = !DILocation(line: 160, column: 17, scope: !2007)
!2025 = !DILocation(line: 161, column: 5, scope: !2007)
!2026 = !DILocation(line: 162, column: 5, scope: !2007)
!2027 = distinct !DISubprogram(name: "Perl_free_tmps", scope: !1052, file: !1052, line: 167, type: !1124, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2028)
!2028 = !{!2029, !2031}
!2029 = !DILocalVariable(name: "myfloor", scope: !2027, file: !1052, line: 170, type: !2030)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!2031 = !DILocalVariable(name: "sv", scope: !2032, file: !1052, line: 172, type: !413)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !1052, line: 171, column: 34)
!2033 = !DILocation(line: 170, column: 29, scope: !2027)
!2034 = !DILocation(line: 0, scope: !2027)
!2035 = !DILocation(line: 171, column: 12, scope: !2027)
!2036 = !DILocation(line: 171, column: 23, scope: !2027)
!2037 = !DILocation(line: 171, column: 5, scope: !2027)
!2038 = !DILocation(line: 172, column: 17, scope: !2032)
!2039 = !DILocation(line: 172, column: 41, scope: !2032)
!2040 = !DILocation(line: 0, scope: !2032)
!2041 = !DILocation(line: 176, column: 6, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2032, file: !1052, line: 176, column: 6)
!2043 = !DILocation(line: 177, column: 6, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2042, file: !1052, line: 176, column: 40)
!2045 = !DILocation(line: 0, scope: !1315, inlinedAt: !2046)
!2046 = distinct !DILocation(line: 178, column: 6, scope: !2044)
!2047 = !DILocation(line: 173, column: 14, scope: !1315, inlinedAt: !2046)
!2048 = !DILocation(line: 174, column: 9, scope: !1322, inlinedAt: !2046)
!2049 = !DILocation(line: 174, column: 9, scope: !1315, inlinedAt: !2046)
!2050 = !DILocation(line: 175, column: 20, scope: !1322, inlinedAt: !2046)
!2051 = !DILocation(line: 175, column: 15, scope: !1322, inlinedAt: !2046)
!2052 = !DILocation(line: 175, column: 2, scope: !1322, inlinedAt: !2046)
!2053 = !DILocation(line: 177, column: 2, scope: !1322, inlinedAt: !2046)
!2054 = distinct !{!2054, !2037, !2055, !1691, !1692}
!2055 = !DILocation(line: 180, column: 5, scope: !2027)
!2056 = !DILocation(line: 181, column: 1, scope: !2027)
!2057 = distinct !DISubprogram(name: "Perl_save_pushptrptr", scope: !1052, file: !1052, line: 207, type: !2058, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2062)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !2060, !2060, !2061}
!2060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!2061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!2062 = !{!2063, !2064, !2065, !2066, !2067}
!2063 = !DILocalVariable(name: "ptr1", arg: 1, scope: !2057, file: !1052, line: 207, type: !2060)
!2064 = !DILocalVariable(name: "ptr2", arg: 2, scope: !2057, file: !1052, line: 207, type: !2060)
!2065 = !DILocalVariable(name: "type", arg: 3, scope: !2057, file: !1052, line: 207, type: !2061)
!2066 = !DILocalVariable(name: "ix", scope: !2057, file: !1052, line: 209, type: !157)
!2067 = !DILocalVariable(name: "ssp", scope: !2057, file: !1052, line: 209, type: !831)
!2068 = !DILocation(line: 0, scope: !2057)
!2069 = !DILocation(line: 209, column: 5, scope: !2057)
!2070 = !DILocation(line: 210, column: 5, scope: !2057)
!2071 = !DILocation(line: 211, column: 5, scope: !2057)
!2072 = !DILocation(line: 212, column: 5, scope: !2057)
!2073 = !DILocation(line: 213, column: 5, scope: !2057)
!2074 = !DILocation(line: 213, column: 5, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2057, file: !1052, line: 213, column: 5)
!2076 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 213, column: 5, scope: !2075)
!2078 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2077)
!2079 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2077)
!2080 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2077)
!2081 = !DILocation(line: 214, column: 1, scope: !2057)
!2082 = distinct !DISubprogram(name: "Perl_save_scalar", scope: !1052, file: !1052, line: 217, type: !2083, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2085)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!74, !218}
!2085 = !{!2086, !2087}
!2086 = !DILocalVariable(name: "gv", arg: 1, scope: !2082, file: !1052, line: 217, type: !218)
!2087 = !DILocalVariable(name: "sptr", scope: !2082, file: !1052, line: 219, type: !472)
!2088 = !DILocation(line: 0, scope: !2082)
!2089 = !DILocation(line: 219, column: 25, scope: !2082)
!2090 = !DILocation(line: 223, column: 9, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2082, file: !1052, line: 223, column: 9)
!2092 = !DILocation(line: 223, column: 9, scope: !2082)
!2093 = !DILocation(line: 224, column: 23, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2091, file: !1052, line: 223, column: 38)
!2095 = !DILocation(line: 225, column: 15, scope: !2094)
!2096 = !DILocation(line: 226, column: 23, scope: !2094)
!2097 = !DILocation(line: 227, column: 5, scope: !2094)
!2098 = !DILocalVariable(name: "sv", arg: 1, scope: !2099, file: !1286, line: 140, type: !74)
!2099 = distinct !DISubprogram(name: "S_SvREFCNT_inc", scope: !1286, file: !1286, line: 140, type: !2100, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2102)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!74, !74}
!2102 = !{!2098}
!2103 = !DILocation(line: 0, scope: !2099, inlinedAt: !2104)
!2104 = distinct !DILocation(line: 228, column: 5, scope: !2082)
!2105 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !2104)
!2106 = distinct !DILexicalBlock(scope: !2099, file: !1286, line: 142, column: 9)
!2107 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !2104)
!2108 = !DILocation(line: 228, column: 5, scope: !2082)
!2109 = !DILocation(line: 0, scope: !2099, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 228, column: 5, scope: !2082)
!2111 = !DILocation(line: 142, column: 9, scope: !2106, inlinedAt: !2110)
!2112 = !DILocation(line: 142, column: 9, scope: !2099, inlinedAt: !2110)
!2113 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !2110)
!2114 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !2110)
!2115 = !DILocation(line: 0, scope: !2057, inlinedAt: !2116)
!2116 = distinct !DILocation(line: 228, column: 5, scope: !2082)
!2117 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2116)
!2118 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2116)
!2119 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2116)
!2120 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2116)
!2121 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2116)
!2122 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2116)
!2123 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2124)
!2124 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2116)
!2125 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2124)
!2126 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2124)
!2127 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2124)
!2128 = !DILocalVariable(name: "sptr", arg: 1, scope: !2129, file: !1052, line: 184, type: !142)
!2129 = distinct !DISubprogram(name: "S_save_scalar_at", scope: !1052, file: !1052, line: 184, type: !2130, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!74, !142, !426}
!2132 = !{!2128, !2133, !2134, !2135}
!2133 = !DILocalVariable(name: "flags", arg: 2, scope: !2129, file: !1052, line: 184, type: !426)
!2134 = !DILocalVariable(name: "osv", scope: !2129, file: !1052, line: 186, type: !74)
!2135 = !DILocalVariable(name: "sv", scope: !2129, file: !1052, line: 187, type: !74)
!2136 = !DILocation(line: 0, scope: !2129, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 229, column: 12, scope: !2082)
!2138 = !DILocation(line: 191, column: 11, scope: !2129, inlinedAt: !2137)
!2139 = !DILocation(line: 192, column: 56, scope: !2129, inlinedAt: !2137)
!2140 = !DILocation(line: 192, column: 54, scope: !2129, inlinedAt: !2137)
!2141 = !DILocation(line: 194, column: 9, scope: !2142, inlinedAt: !2137)
!2142 = distinct !DILexicalBlock(scope: !2129, file: !1052, line: 194, column: 9)
!2143 = !DILocation(line: 194, column: 21, scope: !2142, inlinedAt: !2137)
!2144 = !DILocation(line: 194, column: 33, scope: !2142, inlinedAt: !2137)
!2145 = !DILocation(line: 194, column: 36, scope: !2142, inlinedAt: !2137)
!2146 = !DILocation(line: 194, column: 9, scope: !2129, inlinedAt: !2137)
!2147 = !DILocation(line: 195, column: 6, scope: !2148, inlinedAt: !2137)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !1052, line: 195, column: 6)
!2149 = distinct !DILexicalBlock(scope: !2142, file: !1052, line: 194, column: 50)
!2150 = !DILocation(line: 195, column: 6, scope: !2149, inlinedAt: !2137)
!2151 = !DILocation(line: 197, column: 36, scope: !2152, inlinedAt: !2137)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !1052, line: 195, column: 23)
!2153 = !DILocation(line: 196, column: 19, scope: !2152, inlinedAt: !2137)
!2154 = !DILocation(line: 198, column: 2, scope: !2152, inlinedAt: !2137)
!2155 = !DILocation(line: 200, column: 6, scope: !2156, inlinedAt: !2137)
!2156 = distinct !DILexicalBlock(scope: !2149, file: !1052, line: 199, column: 6)
!2157 = !DILocation(line: 229, column: 5, scope: !2082)
!2158 = !DISubprogram(name: "Perl_gv_add_by_type", scope: !1065, file: !1065, line: 1391, type: !2159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!218, !218, !902}
!2161 = !DISubprogram(name: "Perl_mg_get", scope: !1065, file: !1065, line: 2670, type: !2162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!73, !74}
!2164 = distinct !DISubprogram(name: "Perl_save_generic_svref", scope: !1052, file: !1052, line: 235, type: !2165, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !142}
!2167 = !{!2168}
!2168 = !DILocalVariable(name: "sptr", arg: 1, scope: !2164, file: !1052, line: 235, type: !142)
!2169 = !DILocation(line: 0, scope: !2164)
!2170 = !DILocation(line: 239, column: 5, scope: !2164)
!2171 = !DILocation(line: 0, scope: !2099, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 239, column: 5, scope: !2164)
!2173 = !DILocation(line: 142, column: 9, scope: !2106, inlinedAt: !2172)
!2174 = !DILocation(line: 142, column: 9, scope: !2099, inlinedAt: !2172)
!2175 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !2172)
!2176 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !2172)
!2177 = !DILocation(line: 0, scope: !2057, inlinedAt: !2178)
!2178 = distinct !DILocation(line: 239, column: 5, scope: !2164)
!2179 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2178)
!2180 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2178)
!2181 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2178)
!2182 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2178)
!2183 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2178)
!2184 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2178)
!2185 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2186)
!2186 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2178)
!2187 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2186)
!2188 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2186)
!2189 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2186)
!2190 = !DILocation(line: 240, column: 1, scope: !2164)
!2191 = distinct !DISubprogram(name: "Perl_save_generic_pvref", scope: !1052, file: !1052, line: 246, type: !2192, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2194)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !432}
!2194 = !{!2195}
!2195 = !DILocalVariable(name: "str", arg: 1, scope: !2191, file: !1052, line: 246, type: !432)
!2196 = !DILocation(line: 0, scope: !2191)
!2197 = !DILocation(line: 250, column: 5, scope: !2191)
!2198 = !DILocation(line: 0, scope: !2057, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 250, column: 5, scope: !2191)
!2200 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2199)
!2201 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2199)
!2202 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2199)
!2203 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2199)
!2204 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2199)
!2205 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2199)
!2206 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2199)
!2208 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2207)
!2209 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2207)
!2210 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2207)
!2211 = !DILocation(line: 251, column: 1, scope: !2191)
!2212 = distinct !DISubprogram(name: "Perl_save_shared_pvref", scope: !1052, file: !1052, line: 257, type: !2192, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2213)
!2213 = !{!2214}
!2214 = !DILocalVariable(name: "str", arg: 1, scope: !2212, file: !1052, line: 257, type: !432)
!2215 = !DILocation(line: 0, scope: !2212)
!2216 = !DILocation(line: 261, column: 5, scope: !2212)
!2217 = !DILocation(line: 0, scope: !2057, inlinedAt: !2218)
!2218 = distinct !DILocation(line: 261, column: 5, scope: !2212)
!2219 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2218)
!2220 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2218)
!2221 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2218)
!2222 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2218)
!2223 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2218)
!2224 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2218)
!2225 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2218)
!2227 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2226)
!2228 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2226)
!2229 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2226)
!2230 = !DILocation(line: 262, column: 1, scope: !2212)
!2231 = distinct !DISubprogram(name: "Perl_save_set_svflags", scope: !1052, file: !1052, line: 267, type: !2232, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2234)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !74, !81, !81}
!2234 = !{!2235, !2236, !2237, !2238, !2239}
!2235 = !DILocalVariable(name: "sv", arg: 1, scope: !2231, file: !1052, line: 267, type: !74)
!2236 = !DILocalVariable(name: "mask", arg: 2, scope: !2231, file: !1052, line: 267, type: !81)
!2237 = !DILocalVariable(name: "val", arg: 3, scope: !2231, file: !1052, line: 267, type: !81)
!2238 = !DILocalVariable(name: "ix", scope: !2231, file: !1052, line: 269, type: !157)
!2239 = !DILocalVariable(name: "ssp", scope: !2231, file: !1052, line: 269, type: !831)
!2240 = !DILocation(line: 0, scope: !2231)
!2241 = !DILocation(line: 269, column: 5, scope: !2231)
!2242 = !DILocation(line: 273, column: 5, scope: !2231)
!2243 = !DILocation(line: 274, column: 5, scope: !2231)
!2244 = !DILocation(line: 275, column: 5, scope: !2231)
!2245 = !DILocation(line: 276, column: 5, scope: !2231)
!2246 = !DILocation(line: 277, column: 5, scope: !2231)
!2247 = !DILocation(line: 277, column: 5, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2231, file: !1052, line: 277, column: 5)
!2249 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 277, column: 5, scope: !2248)
!2251 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2250)
!2252 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2250)
!2253 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2250)
!2254 = !DILocation(line: 278, column: 1, scope: !2231)
!2255 = distinct !DISubprogram(name: "Perl_save_gp", scope: !1052, file: !1052, line: 281, type: !2256, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !218, !157}
!2258 = !{!2259, !2260, !2261, !2264, !2265}
!2259 = !DILocalVariable(name: "gv", arg: 1, scope: !2255, file: !1052, line: 281, type: !218)
!2260 = !DILocalVariable(name: "empty", arg: 2, scope: !2255, file: !1052, line: 281, type: !157)
!2261 = !DILocalVariable(name: "gp", scope: !2262, file: !1052, line: 288, type: !168)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !1052, line: 287, column: 16)
!2263 = distinct !DILexicalBlock(scope: !2255, file: !1052, line: 287, column: 9)
!2264 = !DILocalVariable(name: "stash", scope: !2262, file: !1052, line: 289, type: !1179)
!2265 = !DILocalVariable(name: "isa_changed", scope: !2262, file: !1052, line: 290, type: !343)
!2266 = !DILocation(line: 0, scope: !2255)
!2267 = !DILocation(line: 0, scope: !2099, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 285, column: 5, scope: !2255)
!2269 = !DILocation(line: 142, column: 9, scope: !2106, inlinedAt: !2268)
!2270 = !DILocation(line: 142, column: 9, scope: !2099, inlinedAt: !2268)
!2271 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !2268)
!2272 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !2268)
!2273 = !DILocation(line: 285, column: 5, scope: !2255)
!2274 = !DILocation(line: 0, scope: !2057, inlinedAt: !2275)
!2275 = distinct !DILocation(line: 285, column: 5, scope: !2255)
!2276 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2275)
!2277 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2275)
!2278 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2275)
!2279 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2275)
!2280 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2275)
!2281 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2275)
!2282 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2275)
!2284 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2283)
!2285 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2283)
!2286 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2283)
!2287 = !DILocation(line: 287, column: 9, scope: !2263)
!2288 = !DILocation(line: 287, column: 9, scope: !2255)
!2289 = !DILocation(line: 288, column: 11, scope: !2262)
!2290 = !DILocation(line: 0, scope: !2262)
!2291 = !DILocation(line: 289, column: 21, scope: !2262)
!2292 = !DILocation(line: 292, column: 6, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2262, file: !1052, line: 292, column: 6)
!2294 = !DILocation(line: 292, column: 12, scope: !2293)
!2295 = !DILocation(line: 292, column: 15, scope: !2293)
!2296 = !DILocation(line: 292, column: 6, scope: !2262)
!2297 = !DILocation(line: 293, column: 10, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2299, file: !1052, line: 293, column: 10)
!2299 = distinct !DILexicalBlock(scope: !2293, file: !1052, line: 292, column: 31)
!2300 = !DILocation(line: 293, column: 24, scope: !2298)
!2301 = !DILocation(line: 293, column: 29, scope: !2298)
!2302 = !DILocation(line: 293, column: 32, scope: !2298)
!2303 = !DILocation(line: 293, column: 10, scope: !2299)
!2304 = !DILocation(line: 295, column: 15, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2298, file: !1052, line: 295, column: 15)
!2306 = !DILocation(line: 295, column: 15, scope: !2298)
!2307 = !DILocation(line: 297, column: 17, scope: !2305)
!2308 = !DILocation(line: 299, column: 6, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2262, file: !1052, line: 299, column: 6)
!2310 = !DILocation(line: 299, column: 16, scope: !2309)
!2311 = !DILocation(line: 299, column: 20, scope: !2309)
!2312 = !DILocation(line: 299, column: 39, scope: !2309)
!2313 = !DILocation(line: 299, column: 6, scope: !2262)
!2314 = !DILocation(line: 300, column: 18, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2309, file: !1052, line: 299, column: 52)
!2316 = !DILocation(line: 300, column: 10, scope: !2315)
!2317 = !DILocation(line: 300, column: 16, scope: !2315)
!2318 = !DILocation(line: 301, column: 6, scope: !2315)
!2319 = !DILocation(line: 301, column: 25, scope: !2315)
!2320 = !DILocation(line: 302, column: 2, scope: !2315)
!2321 = !DILocation(line: 303, column: 2, scope: !2262)
!2322 = !DILocation(line: 304, column: 6, scope: !2262)
!2323 = !DILocation(line: 304, column: 19, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2262, file: !1052, line: 304, column: 6)
!2325 = !DILocation(line: 307, column: 2, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2263, file: !1052, line: 306, column: 10)
!2327 = !DILocation(line: 308, column: 2, scope: !2326)
!2328 = !DILocation(line: 310, column: 1, scope: !2255)
!2329 = !DISubprogram(name: "Perl_newGP", scope: !1065, file: !1065, line: 2894, type: !2330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!168, !1223}
!2332 = !DISubprogram(name: "Perl_mro_method_changed_in", scope: !1065, file: !1065, line: 2740, type: !2333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{null, !43}
!2335 = !DISubprogram(name: "Perl_mro_isa_changed_in", scope: !1065, file: !1065, line: 2730, type: !2333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2336 = !DISubprogram(name: "Perl_gp_ref", scope: !1065, file: !1065, line: 1337, type: !2337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!168, !168}
!2339 = distinct !DISubprogram(name: "Perl_save_ary", scope: !1052, file: !1052, line: 313, type: !2340, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2342)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!31, !218}
!2342 = !{!2343, !2344, !2346}
!2343 = !DILocalVariable(name: "gv", arg: 1, scope: !2339, file: !1052, line: 313, type: !218)
!2344 = !DILocalVariable(name: "oav", scope: !2339, file: !1052, line: 315, type: !2345)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!2346 = !DILocalVariable(name: "av", scope: !2339, file: !1052, line: 316, type: !31)
!2347 = !DILocation(line: 0, scope: !2339)
!2348 = !DILocation(line: 315, column: 22, scope: !2339)
!2349 = !DILocation(line: 320, column: 9, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2339, file: !1052, line: 320, column: 9)
!2351 = !DILocation(line: 321, column: 2, scope: !2350)
!2352 = !DILocation(line: 322, column: 5, scope: !2339)
!2353 = !DILocation(line: 0, scope: !2057, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 322, column: 5, scope: !2339)
!2355 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2354)
!2356 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2354)
!2357 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2354)
!2358 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2354)
!2359 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2354)
!2360 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2354)
!2361 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2354)
!2363 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2362)
!2364 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2362)
!2365 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2362)
!2366 = !DILocation(line: 324, column: 5, scope: !2339)
!2367 = !DILocation(line: 324, column: 14, scope: !2339)
!2368 = !DILocation(line: 325, column: 10, scope: !2339)
!2369 = !DILocation(line: 326, column: 9, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2339, file: !1052, line: 326, column: 9)
!2371 = !DILocation(line: 326, column: 9, scope: !2339)
!2372 = !DILocation(line: 327, column: 2, scope: !2370)
!2373 = !DILocation(line: 328, column: 5, scope: !2339)
!2374 = !DISubprogram(name: "Perl_av_reify", scope: !1065, file: !1065, line: 265, type: !2375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{null, !31}
!2377 = !DISubprogram(name: "Perl_mg_localize", scope: !1065, file: !1065, line: 2681, type: !2378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{null, !74, !74, !343}
!2380 = distinct !DISubprogram(name: "Perl_save_hash", scope: !1052, file: !1052, line: 332, type: !2381, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!43, !218}
!2383 = !{!2384, !2385, !2386}
!2384 = !DILocalVariable(name: "gv", arg: 1, scope: !2380, file: !1052, line: 332, type: !218)
!2385 = !DILocalVariable(name: "ohv", scope: !2380, file: !1052, line: 334, type: !43)
!2386 = !DILocalVariable(name: "hv", scope: !2380, file: !1052, line: 334, type: !43)
!2387 = !DILocation(line: 0, scope: !2380)
!2388 = !DILocation(line: 338, column: 5, scope: !2380)
!2389 = !DILocation(line: 0, scope: !2057, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 338, column: 5, scope: !2380)
!2391 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2390)
!2392 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2390)
!2393 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2390)
!2394 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2390)
!2395 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2390)
!2396 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2390)
!2397 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2390)
!2399 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2398)
!2400 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2398)
!2401 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2398)
!2402 = !DILocation(line: 342, column: 5, scope: !2380)
!2403 = !DILocation(line: 342, column: 14, scope: !2380)
!2404 = !DILocation(line: 343, column: 10, scope: !2380)
!2405 = !DILocation(line: 344, column: 9, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2380, file: !1052, line: 344, column: 9)
!2407 = !DILocation(line: 344, column: 9, scope: !2380)
!2408 = !DILocation(line: 345, column: 2, scope: !2406)
!2409 = !DILocation(line: 346, column: 5, scope: !2380)
!2410 = distinct !DISubprogram(name: "Perl_save_item", scope: !1052, file: !1052, line: 350, type: !1287, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2411)
!2411 = !{!2412, !2413}
!2412 = !DILocalVariable(name: "item", arg: 1, scope: !2410, file: !1052, line: 350, type: !74)
!2413 = !DILocalVariable(name: "sv", scope: !2410, file: !1052, line: 352, type: !413)
!2414 = !DILocation(line: 0, scope: !2410)
!2415 = !DILocation(line: 352, column: 21, scope: !2410)
!2416 = !DILocation(line: 0, scope: !2057, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 356, column: 5, scope: !2410)
!2418 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2417)
!2419 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2417)
!2420 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2417)
!2421 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2417)
!2422 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2417)
!2423 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2417)
!2424 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2417)
!2426 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2425)
!2427 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2425)
!2428 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2425)
!2429 = !DILocation(line: 359, column: 1, scope: !2410)
!2430 = !DISubprogram(name: "Perl_newSVsv", scope: !1065, file: !1065, line: 3129, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!74, !413}
!2433 = distinct !DISubprogram(name: "Perl_save_bool", scope: !1052, file: !1052, line: 362, type: !2434, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !473}
!2436 = !{!2437, !2438, !2439}
!2437 = !DILocalVariable(name: "boolp", arg: 1, scope: !2433, file: !1052, line: 362, type: !473)
!2438 = !DILocalVariable(name: "ix", scope: !2433, file: !1052, line: 364, type: !157)
!2439 = !DILocalVariable(name: "ssp", scope: !2433, file: !1052, line: 364, type: !831)
!2440 = !DILocation(line: 0, scope: !2433)
!2441 = !DILocation(line: 364, column: 5, scope: !2433)
!2442 = !DILocation(line: 368, column: 5, scope: !2433)
!2443 = !DILocation(line: 369, column: 5, scope: !2433)
!2444 = !DILocation(line: 370, column: 5, scope: !2433)
!2445 = !DILocation(line: 370, column: 5, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2433, file: !1052, line: 370, column: 5)
!2447 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 370, column: 5, scope: !2446)
!2449 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2448)
!2450 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2448)
!2451 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2448)
!2452 = !DILocation(line: 371, column: 1, scope: !2433)
!2453 = distinct !DISubprogram(name: "Perl_save_pushi32ptr", scope: !1052, file: !1052, line: 374, type: !2454, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2456)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{null, !447, !2060, !2061}
!2456 = !{!2457, !2458, !2459, !2460, !2461}
!2457 = !DILocalVariable(name: "i", arg: 1, scope: !2453, file: !1052, line: 374, type: !447)
!2458 = !DILocalVariable(name: "ptr", arg: 2, scope: !2453, file: !1052, line: 374, type: !2060)
!2459 = !DILocalVariable(name: "type", arg: 3, scope: !2453, file: !1052, line: 374, type: !2061)
!2460 = !DILocalVariable(name: "ix", scope: !2453, file: !1052, line: 376, type: !157)
!2461 = !DILocalVariable(name: "ssp", scope: !2453, file: !1052, line: 376, type: !831)
!2462 = !DILocation(line: 0, scope: !2453)
!2463 = !DILocation(line: 376, column: 5, scope: !2453)
!2464 = !DILocation(line: 378, column: 5, scope: !2453)
!2465 = !DILocation(line: 379, column: 5, scope: !2453)
!2466 = !DILocation(line: 380, column: 5, scope: !2453)
!2467 = !DILocation(line: 381, column: 5, scope: !2453)
!2468 = !DILocation(line: 381, column: 5, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2453, file: !1052, line: 381, column: 5)
!2470 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 381, column: 5, scope: !2469)
!2472 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2471)
!2473 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2471)
!2474 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2471)
!2475 = !DILocation(line: 382, column: 1, scope: !2453)
!2476 = distinct !DISubprogram(name: "Perl_save_int", scope: !1052, file: !1052, line: 385, type: !2477, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !903}
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485}
!2480 = !DILocalVariable(name: "intp", arg: 1, scope: !2476, file: !1052, line: 385, type: !903)
!2481 = !DILocalVariable(name: "i", scope: !2476, file: !1052, line: 387, type: !2061)
!2482 = !DILocalVariable(name: "type", scope: !2476, file: !1052, line: 388, type: !94)
!2483 = !DILocalVariable(name: "size", scope: !2476, file: !1052, line: 389, type: !73)
!2484 = !DILocalVariable(name: "ix", scope: !2476, file: !1052, line: 390, type: !157)
!2485 = !DILocalVariable(name: "ssp", scope: !2476, file: !1052, line: 390, type: !831)
!2486 = !DILocation(line: 0, scope: !2476)
!2487 = !DILocation(line: 387, column: 19, scope: !2476)
!2488 = !DILocation(line: 388, column: 21, scope: !2476)
!2489 = !DILocation(line: 388, column: 27, scope: !2476)
!2490 = !DILocation(line: 388, column: 48, scope: !2476)
!2491 = !DILocation(line: 390, column: 5, scope: !2476)
!2492 = !DILocation(line: 399, column: 5, scope: !2476)
!2493 = !DILocation(line: 400, column: 5, scope: !2476)
!2494 = !DILocation(line: 401, column: 5, scope: !2476)
!2495 = !DILocation(line: 401, column: 5, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2476, file: !1052, line: 401, column: 5)
!2497 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 401, column: 5, scope: !2496)
!2499 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2498)
!2500 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2498)
!2501 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2498)
!2502 = !DILocation(line: 402, column: 1, scope: !2476)
!2503 = distinct !DISubprogram(name: "Perl_save_I8", scope: !1052, file: !1052, line: 405, type: !2504, scopeLine: 406, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{null, !935}
!2506 = !{!2507, !2508, !2509}
!2507 = !DILocalVariable(name: "bytep", arg: 1, scope: !2503, file: !1052, line: 405, type: !935)
!2508 = !DILocalVariable(name: "ix", scope: !2503, file: !1052, line: 407, type: !157)
!2509 = !DILocalVariable(name: "ssp", scope: !2503, file: !1052, line: 407, type: !831)
!2510 = !DILocation(line: 0, scope: !2503)
!2511 = !DILocation(line: 407, column: 5, scope: !2503)
!2512 = !DILocation(line: 411, column: 5, scope: !2503)
!2513 = !DILocation(line: 412, column: 5, scope: !2503)
!2514 = !DILocation(line: 413, column: 5, scope: !2503)
!2515 = !DILocation(line: 413, column: 5, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2503, file: !1052, line: 413, column: 5)
!2517 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2518)
!2518 = distinct !DILocation(line: 413, column: 5, scope: !2516)
!2519 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2518)
!2520 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2518)
!2521 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2518)
!2522 = !DILocation(line: 414, column: 1, scope: !2503)
!2523 = distinct !DISubprogram(name: "Perl_save_I16", scope: !1052, file: !1052, line: 417, type: !2524, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !932}
!2526 = !{!2527, !2528, !2529}
!2527 = !DILocalVariable(name: "intp", arg: 1, scope: !2523, file: !1052, line: 417, type: !932)
!2528 = !DILocalVariable(name: "ix", scope: !2523, file: !1052, line: 419, type: !157)
!2529 = !DILocalVariable(name: "ssp", scope: !2523, file: !1052, line: 419, type: !831)
!2530 = !DILocation(line: 0, scope: !2523)
!2531 = !DILocation(line: 419, column: 5, scope: !2523)
!2532 = !DILocation(line: 423, column: 5, scope: !2523)
!2533 = !DILocation(line: 424, column: 5, scope: !2523)
!2534 = !DILocation(line: 425, column: 5, scope: !2523)
!2535 = !DILocation(line: 425, column: 5, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2523, file: !1052, line: 425, column: 5)
!2537 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 425, column: 5, scope: !2536)
!2539 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2538)
!2540 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2538)
!2541 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2538)
!2542 = !DILocation(line: 426, column: 1, scope: !2523)
!2543 = distinct !DISubprogram(name: "Perl_save_I32", scope: !1052, file: !1052, line: 429, type: !2544, scopeLine: 430, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !830}
!2546 = !{!2547, !2548, !2549, !2550, !2551, !2552}
!2547 = !DILocalVariable(name: "intp", arg: 1, scope: !2543, file: !1052, line: 429, type: !830)
!2548 = !DILocalVariable(name: "i", scope: !2543, file: !1052, line: 431, type: !447)
!2549 = !DILocalVariable(name: "type", scope: !2543, file: !1052, line: 432, type: !94)
!2550 = !DILocalVariable(name: "size", scope: !2543, file: !1052, line: 433, type: !73)
!2551 = !DILocalVariable(name: "ix", scope: !2543, file: !1052, line: 434, type: !157)
!2552 = !DILocalVariable(name: "ssp", scope: !2543, file: !1052, line: 434, type: !831)
!2553 = !DILocation(line: 0, scope: !2543)
!2554 = !DILocation(line: 431, column: 19, scope: !2543)
!2555 = !DILocation(line: 432, column: 29, scope: !2543)
!2556 = !DILocation(line: 432, column: 50, scope: !2543)
!2557 = !DILocation(line: 432, column: 15, scope: !2543)
!2558 = !DILocation(line: 434, column: 5, scope: !2543)
!2559 = !DILocation(line: 438, column: 9, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2543, file: !1052, line: 438, column: 9)
!2561 = !DILocation(line: 438, column: 9, scope: !2543)
!2562 = !DILocation(line: 439, column: 9, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2560, file: !1052, line: 438, column: 57)
!2564 = !DILocation(line: 442, column: 5, scope: !2563)
!2565 = !DILocation(line: 443, column: 5, scope: !2543)
!2566 = !DILocation(line: 444, column: 5, scope: !2543)
!2567 = !DILocation(line: 445, column: 5, scope: !2543)
!2568 = !DILocation(line: 445, column: 5, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2543, file: !1052, line: 445, column: 5)
!2570 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 445, column: 5, scope: !2569)
!2572 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2571)
!2573 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2571)
!2574 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2571)
!2575 = !DILocation(line: 446, column: 1, scope: !2543)
!2576 = distinct !DISubprogram(name: "Perl_save_strlen", scope: !1052, file: !1052, line: 449, type: !2577, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !638}
!2579 = !{!2580, !2581, !2582}
!2580 = !DILocalVariable(name: "ptr", arg: 1, scope: !2576, file: !1052, line: 449, type: !638)
!2581 = !DILocalVariable(name: "ix", scope: !2576, file: !1052, line: 451, type: !157)
!2582 = !DILocalVariable(name: "ssp", scope: !2576, file: !1052, line: 451, type: !831)
!2583 = !DILocation(line: 0, scope: !2576)
!2584 = !DILocation(line: 451, column: 5, scope: !2576)
!2585 = !DILocation(line: 455, column: 5, scope: !2576)
!2586 = !DILocation(line: 456, column: 5, scope: !2576)
!2587 = !DILocation(line: 457, column: 5, scope: !2576)
!2588 = !DILocation(line: 458, column: 5, scope: !2576)
!2589 = !DILocation(line: 458, column: 5, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2576, file: !1052, line: 458, column: 5)
!2591 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 458, column: 5, scope: !2590)
!2593 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2592)
!2594 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2592)
!2595 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2592)
!2596 = !DILocation(line: 459, column: 1, scope: !2576)
!2597 = distinct !DISubprogram(name: "Perl_save_pptr", scope: !1052, file: !1052, line: 465, type: !2192, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2598)
!2598 = !{!2599}
!2599 = !DILocalVariable(name: "pptr", arg: 1, scope: !2597, file: !1052, line: 465, type: !432)
!2600 = !DILocation(line: 0, scope: !2597)
!2601 = !DILocation(line: 469, column: 5, scope: !2597)
!2602 = !DILocation(line: 0, scope: !2057, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 469, column: 5, scope: !2597)
!2604 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2603)
!2605 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2603)
!2606 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2603)
!2607 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2603)
!2608 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2603)
!2609 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2603)
!2610 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2603)
!2612 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2611)
!2613 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2611)
!2614 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2611)
!2615 = !DILocation(line: 470, column: 1, scope: !2597)
!2616 = distinct !DISubprogram(name: "Perl_save_vptr", scope: !1052, file: !1052, line: 473, type: !346, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2617)
!2617 = !{!2618}
!2618 = !DILocalVariable(name: "ptr", arg: 1, scope: !2616, file: !1052, line: 473, type: !79)
!2619 = !DILocation(line: 0, scope: !2616)
!2620 = !DILocation(line: 477, column: 5, scope: !2616)
!2621 = !DILocation(line: 0, scope: !2057, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 477, column: 5, scope: !2616)
!2623 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2622)
!2624 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2622)
!2625 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2622)
!2626 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2622)
!2627 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2622)
!2628 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2622)
!2629 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2622)
!2631 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2630)
!2632 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2630)
!2633 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2630)
!2634 = !DILocation(line: 478, column: 1, scope: !2616)
!2635 = distinct !DISubprogram(name: "Perl_save_sptr", scope: !1052, file: !1052, line: 481, type: !2165, scopeLine: 482, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2636)
!2636 = !{!2637}
!2637 = !DILocalVariable(name: "sptr", arg: 1, scope: !2635, file: !1052, line: 481, type: !142)
!2638 = !DILocation(line: 0, scope: !2635)
!2639 = !DILocation(line: 485, column: 5, scope: !2635)
!2640 = !DILocation(line: 0, scope: !2057, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 485, column: 5, scope: !2635)
!2642 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2641)
!2643 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2641)
!2644 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2641)
!2645 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2641)
!2646 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2641)
!2647 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2641)
!2648 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2641)
!2650 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2649)
!2651 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2649)
!2652 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2649)
!2653 = !DILocation(line: 486, column: 1, scope: !2635)
!2654 = distinct !DISubprogram(name: "Perl_save_padsv_and_mortalize", scope: !1052, file: !1052, line: 489, type: !2655, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2657)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{null, !320}
!2657 = !{!2658, !2659, !2660}
!2658 = !DILocalVariable(name: "off", arg: 1, scope: !2654, file: !1052, line: 489, type: !320)
!2659 = !DILocalVariable(name: "ix", scope: !2654, file: !1052, line: 491, type: !157)
!2660 = !DILocalVariable(name: "ssp", scope: !2654, file: !1052, line: 491, type: !831)
!2661 = !DILocation(line: 0, scope: !2654)
!2662 = !DILocation(line: 491, column: 5, scope: !2654)
!2663 = !DILocation(line: 494, column: 5, scope: !2654)
!2664 = !DILocation(line: 495, column: 5, scope: !2654)
!2665 = !DILocation(line: 496, column: 5, scope: !2654)
!2666 = !DILocation(line: 497, column: 5, scope: !2654)
!2667 = !DILocation(line: 498, column: 5, scope: !2654)
!2668 = !DILocation(line: 498, column: 5, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2654, file: !1052, line: 498, column: 5)
!2670 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 498, column: 5, scope: !2669)
!2672 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2671)
!2673 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2671)
!2674 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2671)
!2675 = !DILocation(line: 499, column: 1, scope: !2654)
!2676 = distinct !DISubprogram(name: "Perl_save_hptr", scope: !1052, file: !1052, line: 502, type: !2677, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2679)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !904}
!2679 = !{!2680}
!2680 = !DILocalVariable(name: "hptr", arg: 1, scope: !2676, file: !1052, line: 502, type: !904)
!2681 = !DILocation(line: 0, scope: !2676)
!2682 = !DILocation(line: 506, column: 5, scope: !2676)
!2683 = !DILocation(line: 0, scope: !2057, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 506, column: 5, scope: !2676)
!2685 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2684)
!2686 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2684)
!2687 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2684)
!2688 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2684)
!2689 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2684)
!2690 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2684)
!2691 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2684)
!2693 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2692)
!2694 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2692)
!2695 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2692)
!2696 = !DILocation(line: 507, column: 1, scope: !2676)
!2697 = distinct !DISubprogram(name: "Perl_save_aptr", scope: !1052, file: !1052, line: 510, type: !2698, scopeLine: 511, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{null, !905}
!2700 = !{!2701}
!2701 = !DILocalVariable(name: "aptr", arg: 1, scope: !2697, file: !1052, line: 510, type: !905)
!2702 = !DILocation(line: 0, scope: !2697)
!2703 = !DILocation(line: 514, column: 5, scope: !2697)
!2704 = !DILocation(line: 0, scope: !2057, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 514, column: 5, scope: !2697)
!2706 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !2705)
!2707 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !2705)
!2708 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !2705)
!2709 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !2705)
!2710 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !2705)
!2711 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2705)
!2712 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !2705)
!2714 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2713)
!2715 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2713)
!2716 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2713)
!2717 = !DILocation(line: 515, column: 1, scope: !2697)
!2718 = distinct !DISubprogram(name: "Perl_save_pushptr", scope: !1052, file: !1052, line: 518, type: !2719, scopeLine: 519, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2721)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{null, !2060, !2061}
!2721 = !{!2722, !2723, !2724, !2725}
!2722 = !DILocalVariable(name: "ptr", arg: 1, scope: !2718, file: !1052, line: 518, type: !2060)
!2723 = !DILocalVariable(name: "type", arg: 2, scope: !2718, file: !1052, line: 518, type: !2061)
!2724 = !DILocalVariable(name: "ix", scope: !2718, file: !1052, line: 520, type: !157)
!2725 = !DILocalVariable(name: "ssp", scope: !2718, file: !1052, line: 520, type: !831)
!2726 = !DILocation(line: 0, scope: !2718)
!2727 = !DILocation(line: 520, column: 5, scope: !2718)
!2728 = !DILocation(line: 521, column: 5, scope: !2718)
!2729 = !DILocation(line: 522, column: 5, scope: !2718)
!2730 = !DILocation(line: 523, column: 5, scope: !2718)
!2731 = !DILocation(line: 523, column: 5, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2718, file: !1052, line: 523, column: 5)
!2733 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 523, column: 5, scope: !2732)
!2735 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2734)
!2736 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2734)
!2737 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2734)
!2738 = !DILocation(line: 524, column: 1, scope: !2718)
!2739 = distinct !DISubprogram(name: "Perl_save_clearsv", scope: !1052, file: !1052, line: 527, type: !2165, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2740)
!2740 = !{!2741, !2742, !2744, !2745, !2747}
!2741 = !DILocalVariable(name: "svp", arg: 1, scope: !2739, file: !1052, line: 527, type: !142)
!2742 = !DILocalVariable(name: "offset", scope: !2739, file: !1052, line: 529, type: !2743)
!2743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!2744 = !DILocalVariable(name: "offset_shifted", scope: !2739, file: !1052, line: 530, type: !2743)
!2745 = !DILocalVariable(name: "ix", scope: !2746, file: !1052, line: 542, type: !157)
!2746 = distinct !DILexicalBlock(scope: !2739, file: !1052, line: 541, column: 5)
!2747 = !DILocalVariable(name: "ssp", scope: !2746, file: !1052, line: 542, type: !831)
!2748 = !DILocation(line: 0, scope: !2739)
!2749 = !DILocation(line: 529, column: 29, scope: !2739)
!2750 = !DILocation(line: 529, column: 27, scope: !2739)
!2751 = !DILocation(line: 530, column: 38, scope: !2739)
!2752 = !DILocation(line: 535, column: 5, scope: !2739)
!2753 = !DILocalVariable(name: "sv", arg: 1, scope: !2754, file: !1286, line: 200, type: !74)
!2754 = distinct !DISubprogram(name: "S_SvPADSTALE_off", scope: !1286, file: !1286, line: 200, type: !1645, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2755)
!2755 = !{!2753}
!2756 = !DILocation(line: 0, scope: !2754, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 535, column: 5, scope: !2739)
!2758 = !DILocation(line: 203, column: 12, scope: !2754, inlinedAt: !2757)
!2759 = !DILocation(line: 203, column: 24, scope: !2754, inlinedAt: !2757)
!2760 = !DILocation(line: 536, column: 9, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2739, file: !1052, line: 536, column: 9)
!2762 = !DILocation(line: 536, column: 9, scope: !2739)
!2763 = !DILocation(line: 537, column: 2, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2761, file: !1052, line: 536, column: 67)
!2765 = !DILocation(line: 539, column: 5, scope: !2764)
!2766 = !DILocation(line: 542, column: 9, scope: !2746)
!2767 = !DILocation(line: 0, scope: !2746)
!2768 = !DILocation(line: 543, column: 9, scope: !2746)
!2769 = !DILocation(line: 544, column: 9, scope: !2746)
!2770 = !DILocation(line: 544, column: 9, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2746, file: !1052, line: 544, column: 9)
!2772 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 544, column: 9, scope: !2771)
!2774 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2773)
!2775 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2773)
!2776 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2773)
!2777 = !DILocation(line: 546, column: 1, scope: !2739)
!2778 = !DISubprogram(name: "Perl_croak", scope: !1065, file: !1065, line: 741, type: !2779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !424, null}
!2781 = distinct !DISubprogram(name: "Perl_save_delete", scope: !1052, file: !1052, line: 549, type: !2782, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{null, !43, !88, !157}
!2784 = !{!2785, !2786, !2787}
!2785 = !DILocalVariable(name: "hv", arg: 1, scope: !2781, file: !1052, line: 549, type: !43)
!2786 = !DILocalVariable(name: "key", arg: 2, scope: !2781, file: !1052, line: 549, type: !88)
!2787 = !DILocalVariable(name: "klen", arg: 3, scope: !2781, file: !1052, line: 549, type: !157)
!2788 = !DILocation(line: 0, scope: !2781)
!2789 = !DILocation(line: 0, scope: !2099, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 553, column: 5, scope: !2781)
!2791 = !DILocation(line: 142, column: 9, scope: !2106, inlinedAt: !2790)
!2792 = !DILocation(line: 142, column: 9, scope: !2099, inlinedAt: !2790)
!2793 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !2790)
!2794 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !2790)
!2795 = !DILocalVariable(name: "ptr1", arg: 1, scope: !2796, file: !1052, line: 623, type: !2060)
!2796 = distinct !DISubprogram(name: "S_save_pushptri32ptr", scope: !1052, file: !1052, line: 623, type: !2797, scopeLine: 625, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{null, !2060, !447, !2060, !2061}
!2799 = !{!2795, !2800, !2801, !2802, !2803, !2804}
!2800 = !DILocalVariable(name: "i", arg: 2, scope: !2796, file: !1052, line: 623, type: !447)
!2801 = !DILocalVariable(name: "ptr2", arg: 3, scope: !2796, file: !1052, line: 623, type: !2060)
!2802 = !DILocalVariable(name: "type", arg: 4, scope: !2796, file: !1052, line: 624, type: !2061)
!2803 = !DILocalVariable(name: "ix", scope: !2796, file: !1052, line: 626, type: !157)
!2804 = !DILocalVariable(name: "ssp", scope: !2796, file: !1052, line: 626, type: !831)
!2805 = !DILocation(line: 0, scope: !2796, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 553, column: 5, scope: !2781)
!2807 = !DILocation(line: 626, column: 5, scope: !2796, inlinedAt: !2806)
!2808 = !DILocation(line: 627, column: 5, scope: !2796, inlinedAt: !2806)
!2809 = !DILocation(line: 628, column: 5, scope: !2796, inlinedAt: !2806)
!2810 = !DILocation(line: 629, column: 5, scope: !2796, inlinedAt: !2806)
!2811 = !DILocation(line: 630, column: 5, scope: !2796, inlinedAt: !2806)
!2812 = !DILocation(line: 631, column: 5, scope: !2796, inlinedAt: !2806)
!2813 = !DILocation(line: 631, column: 5, scope: !2814, inlinedAt: !2806)
!2814 = distinct !DILexicalBlock(scope: !2796, file: !1052, line: 631, column: 5)
!2815 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 631, column: 5, scope: !2814, inlinedAt: !2806)
!2817 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2816)
!2818 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2816)
!2819 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2816)
!2820 = !DILocation(line: 554, column: 1, scope: !2781)
!2821 = distinct !DISubprogram(name: "Perl_save_hdelete", scope: !1052, file: !1052, line: 557, type: !2822, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{null, !43, !74}
!2824 = !{!2825, !2826, !2827, !2828, !2829}
!2825 = !DILocalVariable(name: "hv", arg: 1, scope: !2821, file: !1052, line: 557, type: !43)
!2826 = !DILocalVariable(name: "keysv", arg: 2, scope: !2821, file: !1052, line: 557, type: !74)
!2827 = !DILocalVariable(name: "len", scope: !2821, file: !1052, line: 559, type: !108)
!2828 = !DILocalVariable(name: "klen", scope: !2821, file: !1052, line: 560, type: !157)
!2829 = !DILocalVariable(name: "key", scope: !2821, file: !1052, line: 561, type: !424)
!2830 = !DILocation(line: 0, scope: !2821)
!2831 = !DILocation(line: 559, column: 5, scope: !2821)
!2832 = !DILocation(line: 565, column: 12, scope: !2821)
!2833 = !DILocation(line: 566, column: 12, scope: !2821)
!2834 = !DILocation(line: 567, column: 5, scope: !2821)
!2835 = !DILocation(line: 568, column: 5, scope: !2821)
!2836 = !DILocation(line: 0, scope: !2796, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 568, column: 5, scope: !2821)
!2838 = !DILocation(line: 626, column: 5, scope: !2796, inlinedAt: !2837)
!2839 = !DILocation(line: 627, column: 5, scope: !2796, inlinedAt: !2837)
!2840 = !DILocation(line: 628, column: 5, scope: !2796, inlinedAt: !2837)
!2841 = !DILocation(line: 629, column: 5, scope: !2796, inlinedAt: !2837)
!2842 = !DILocation(line: 630, column: 5, scope: !2796, inlinedAt: !2837)
!2843 = !DILocation(line: 631, column: 5, scope: !2796, inlinedAt: !2837)
!2844 = !DILocation(line: 631, column: 5, scope: !2814, inlinedAt: !2837)
!2845 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2846)
!2846 = distinct !DILocation(line: 631, column: 5, scope: !2814, inlinedAt: !2837)
!2847 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2846)
!2848 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2846)
!2849 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2846)
!2850 = !DILocation(line: 569, column: 1, scope: !2821)
!2851 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !1065, file: !1065, line: 4130, type: !2852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!88, !413, !2854, !447}
!2854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!2855 = !DISubprogram(name: "Perl_savepvn", scope: !1065, file: !1065, line: 3959, type: !2856, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!88, !424, !157}
!2858 = distinct !DISubprogram(name: "Perl_save_adelete", scope: !1052, file: !1052, line: 572, type: !1066, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2859)
!2859 = !{!2860, !2861, !2862, !2863}
!2860 = !DILocalVariable(name: "av", arg: 1, scope: !2858, file: !1052, line: 572, type: !31)
!2861 = !DILocalVariable(name: "key", arg: 2, scope: !2858, file: !1052, line: 572, type: !372)
!2862 = !DILocalVariable(name: "ix", scope: !2858, file: !1052, line: 574, type: !157)
!2863 = !DILocalVariable(name: "ssp", scope: !2858, file: !1052, line: 574, type: !831)
!2864 = !DILocation(line: 0, scope: !2858)
!2865 = !DILocation(line: 574, column: 5, scope: !2858)
!2866 = !DILocation(line: 0, scope: !1802, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 578, column: 5, scope: !2858)
!2868 = !DILocation(line: 155, column: 9, scope: !1807, inlinedAt: !2867)
!2869 = !DILocation(line: 155, column: 9, scope: !1802, inlinedAt: !2867)
!2870 = !DILocation(line: 156, column: 2, scope: !1807, inlinedAt: !2867)
!2871 = !DILocation(line: 156, column: 14, scope: !1807, inlinedAt: !2867)
!2872 = !DILocation(line: 579, column: 5, scope: !2858)
!2873 = !DILocation(line: 580, column: 5, scope: !2858)
!2874 = !DILocation(line: 581, column: 5, scope: !2858)
!2875 = !DILocation(line: 582, column: 5, scope: !2858)
!2876 = !DILocation(line: 582, column: 5, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2858, file: !1052, line: 582, column: 5)
!2878 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 582, column: 5, scope: !2877)
!2880 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2879)
!2881 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2879)
!2882 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2879)
!2883 = !DILocation(line: 583, column: 1, scope: !2858)
!2884 = distinct !DISubprogram(name: "Perl_save_destructor", scope: !1052, file: !1052, line: 586, type: !2885, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2888)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{null, !2887, !79}
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "DESTRUCTORFUNC_NOCONTEXT_t", file: !33, line: 5396, baseType: !345)
!2888 = !{!2889, !2890, !2891, !2892}
!2889 = !DILocalVariable(name: "f", arg: 1, scope: !2884, file: !1052, line: 586, type: !2887)
!2890 = !DILocalVariable(name: "p", arg: 2, scope: !2884, file: !1052, line: 586, type: !79)
!2891 = !DILocalVariable(name: "ix", scope: !2884, file: !1052, line: 588, type: !157)
!2892 = !DILocalVariable(name: "ssp", scope: !2884, file: !1052, line: 588, type: !831)
!2893 = !DILocation(line: 0, scope: !2884)
!2894 = !DILocation(line: 588, column: 5, scope: !2884)
!2895 = !DILocation(line: 591, column: 5, scope: !2884)
!2896 = !DILocation(line: 592, column: 5, scope: !2884)
!2897 = !DILocation(line: 593, column: 5, scope: !2884)
!2898 = !DILocation(line: 594, column: 5, scope: !2884)
!2899 = !DILocation(line: 594, column: 5, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2884, file: !1052, line: 594, column: 5)
!2901 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2902)
!2902 = distinct !DILocation(line: 594, column: 5, scope: !2900)
!2903 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2902)
!2904 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2902)
!2905 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2902)
!2906 = !DILocation(line: 595, column: 1, scope: !2884)
!2907 = distinct !DISubprogram(name: "Perl_save_destructor_x", scope: !1052, file: !1052, line: 598, type: !2908, scopeLine: 599, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2911)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{null, !2910, !79}
!2910 = !DIDerivedType(tag: DW_TAG_typedef, name: "DESTRUCTORFUNC_t", file: !33, line: 5397, baseType: !345)
!2911 = !{!2912, !2913, !2914, !2915}
!2912 = !DILocalVariable(name: "f", arg: 1, scope: !2907, file: !1052, line: 598, type: !2910)
!2913 = !DILocalVariable(name: "p", arg: 2, scope: !2907, file: !1052, line: 598, type: !79)
!2914 = !DILocalVariable(name: "ix", scope: !2907, file: !1052, line: 600, type: !157)
!2915 = !DILocalVariable(name: "ssp", scope: !2907, file: !1052, line: 600, type: !831)
!2916 = !DILocation(line: 0, scope: !2907)
!2917 = !DILocation(line: 600, column: 5, scope: !2907)
!2918 = !DILocation(line: 602, column: 5, scope: !2907)
!2919 = !DILocation(line: 603, column: 5, scope: !2907)
!2920 = !DILocation(line: 604, column: 5, scope: !2907)
!2921 = !DILocation(line: 605, column: 5, scope: !2907)
!2922 = !DILocation(line: 605, column: 5, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2907, file: !1052, line: 605, column: 5)
!2924 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 605, column: 5, scope: !2923)
!2926 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2925)
!2927 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2925)
!2928 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2925)
!2929 = !DILocation(line: 606, column: 1, scope: !2907)
!2930 = distinct !DISubprogram(name: "Perl_save_hints", scope: !1052, file: !1052, line: 609, type: !1124, scopeLine: 610, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2931)
!2931 = !{!2932, !2933}
!2932 = !DILocalVariable(name: "save_cophh", scope: !2930, file: !1052, line: 611, type: !640)
!2933 = !DILocalVariable(name: "oldhh", scope: !2934, file: !1052, line: 613, type: !43)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !1052, line: 612, column: 38)
!2935 = distinct !DILexicalBlock(scope: !2930, file: !1052, line: 612, column: 9)
!2936 = !DILocation(line: 611, column: 25, scope: !2930)
!2937 = !DILocation(line: 0, scope: !2930)
!2938 = !DILocation(line: 612, column: 9, scope: !2935)
!2939 = !DILocation(line: 612, column: 18, scope: !2935)
!2940 = !DILocation(line: 612, column: 9, scope: !2930)
!2941 = !DILocation(line: 613, column: 14, scope: !2934)
!2942 = !DILocation(line: 0, scope: !2934)
!2943 = !DILocation(line: 0, scope: !2796, inlinedAt: !2944)
!2944 = distinct !DILocation(line: 614, column: 2, scope: !2934)
!2945 = !DILocation(line: 626, column: 5, scope: !2796, inlinedAt: !2944)
!2946 = !DILocation(line: 627, column: 5, scope: !2796, inlinedAt: !2944)
!2947 = !DILocation(line: 628, column: 5, scope: !2796, inlinedAt: !2944)
!2948 = !DILocation(line: 629, column: 5, scope: !2796, inlinedAt: !2944)
!2949 = !DILocation(line: 630, column: 5, scope: !2796, inlinedAt: !2944)
!2950 = !DILocation(line: 631, column: 5, scope: !2796, inlinedAt: !2944)
!2951 = !DILocation(line: 631, column: 5, scope: !2814, inlinedAt: !2944)
!2952 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 631, column: 5, scope: !2814, inlinedAt: !2944)
!2954 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2953)
!2955 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2953)
!2956 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2953)
!2957 = !DILocation(line: 615, column: 2, scope: !2934)
!2958 = !DILocation(line: 615, column: 18, scope: !2934)
!2959 = !DILocation(line: 616, column: 20, scope: !2934)
!2960 = !DILocation(line: 616, column: 2, scope: !2934)
!2961 = !DILocation(line: 616, column: 18, scope: !2934)
!2962 = !DILocation(line: 617, column: 5, scope: !2934)
!2963 = !DILocation(line: 0, scope: !2453, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 618, column: 2, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2935, file: !1052, line: 617, column: 12)
!2966 = !DILocation(line: 376, column: 5, scope: !2453, inlinedAt: !2964)
!2967 = !DILocation(line: 378, column: 5, scope: !2453, inlinedAt: !2964)
!2968 = !DILocation(line: 379, column: 5, scope: !2453, inlinedAt: !2964)
!2969 = !DILocation(line: 380, column: 5, scope: !2453, inlinedAt: !2964)
!2970 = !DILocation(line: 381, column: 5, scope: !2453, inlinedAt: !2964)
!2971 = !DILocation(line: 381, column: 5, scope: !2469, inlinedAt: !2964)
!2972 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 381, column: 5, scope: !2469, inlinedAt: !2964)
!2974 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !2973)
!2975 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !2973)
!2976 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !2973)
!2977 = !DILocation(line: 620, column: 1, scope: !2930)
!2978 = !DISubprogram(name: "Perl_refcounted_he_inc", scope: !1065, file: !1065, line: 3589, type: !2979, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2979 = !DISubroutineType(types: !2980)
!2980 = !{!645, !645}
!2981 = !DISubprogram(name: "Perl_hv_copy_hints_hv", scope: !1065, file: !1065, line: 1632, type: !2982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!43, !1179}
!2984 = distinct !DISubprogram(name: "Perl_save_aelem_flags", scope: !1052, file: !1052, line: 635, type: !2985, scopeLine: 637, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{null, !31, !372, !142, !426}
!2987 = !{!2988, !2989, !2990, !2991, !2992, !2993, !2994}
!2988 = !DILocalVariable(name: "av", arg: 1, scope: !2984, file: !1052, line: 635, type: !31)
!2989 = !DILocalVariable(name: "idx", arg: 2, scope: !2984, file: !1052, line: 635, type: !372)
!2990 = !DILocalVariable(name: "sptr", arg: 3, scope: !2984, file: !1052, line: 635, type: !142)
!2991 = !DILocalVariable(name: "flags", arg: 4, scope: !2984, file: !1052, line: 636, type: !426)
!2992 = !DILocalVariable(name: "ix", scope: !2984, file: !1052, line: 638, type: !157)
!2993 = !DILocalVariable(name: "ssp", scope: !2984, file: !1052, line: 638, type: !831)
!2994 = !DILocalVariable(name: "sv", scope: !2984, file: !1052, line: 639, type: !74)
!2995 = !DILocation(line: 0, scope: !2984)
!2996 = !DILocation(line: 638, column: 5, scope: !2984)
!2997 = !DILocation(line: 643, column: 5, scope: !2984)
!2998 = !DILocation(line: 0, scope: !2099, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 644, column: 5, scope: !2984)
!3000 = !DILocation(line: 142, column: 9, scope: !2106, inlinedAt: !2999)
!3001 = !DILocation(line: 142, column: 9, scope: !2099, inlinedAt: !2999)
!3002 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !2999)
!3003 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !2999)
!3004 = !DILocation(line: 644, column: 5, scope: !2984)
!3005 = !DILocation(line: 645, column: 5, scope: !2984)
!3006 = !DILocation(line: 646, column: 5, scope: !2984)
!3007 = !DILocation(line: 0, scope: !2099, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 646, column: 5, scope: !2984)
!3009 = !DILocation(line: 142, column: 9, scope: !2106, inlinedAt: !3008)
!3010 = !DILocation(line: 142, column: 9, scope: !2099, inlinedAt: !3008)
!3011 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !3008)
!3012 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !3008)
!3013 = !DILocation(line: 647, column: 5, scope: !2984)
!3014 = !DILocation(line: 648, column: 5, scope: !2984)
!3015 = !DILocation(line: 648, column: 5, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2984, file: !1052, line: 648, column: 5)
!3017 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 648, column: 5, scope: !3016)
!3019 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !3018)
!3020 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !3018)
!3021 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !3018)
!3022 = !DILocation(line: 651, column: 9, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2984, file: !1052, line: 651, column: 9)
!3024 = !DILocation(line: 652, column: 2, scope: !3023)
!3025 = !DILocation(line: 0, scope: !2129, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 653, column: 5, scope: !2984)
!3027 = !DILocation(line: 191, column: 11, scope: !2129, inlinedAt: !3026)
!3028 = !DILocation(line: 192, column: 18, scope: !2129, inlinedAt: !3026)
!3029 = !DILocation(line: 192, column: 11, scope: !2129, inlinedAt: !3026)
!3030 = !DILocation(line: 192, column: 56, scope: !2129, inlinedAt: !3026)
!3031 = !DILocation(line: 192, column: 54, scope: !2129, inlinedAt: !3026)
!3032 = !DILocation(line: 194, column: 9, scope: !2142, inlinedAt: !3026)
!3033 = !DILocation(line: 194, column: 21, scope: !2142, inlinedAt: !3026)
!3034 = !DILocation(line: 194, column: 33, scope: !2142, inlinedAt: !3026)
!3035 = !DILocation(line: 194, column: 36, scope: !2142, inlinedAt: !3026)
!3036 = !DILocation(line: 194, column: 9, scope: !2129, inlinedAt: !3026)
!3037 = !DILocation(line: 195, column: 6, scope: !2148, inlinedAt: !3026)
!3038 = !DILocation(line: 195, column: 6, scope: !2149, inlinedAt: !3026)
!3039 = !DILocation(line: 197, column: 36, scope: !2152, inlinedAt: !3026)
!3040 = !DILocation(line: 196, column: 19, scope: !2152, inlinedAt: !3026)
!3041 = !DILocation(line: 198, column: 2, scope: !2152, inlinedAt: !3026)
!3042 = !DILocation(line: 199, column: 6, scope: !2149, inlinedAt: !3026)
!3043 = !DILocation(line: 200, column: 6, scope: !2156, inlinedAt: !3026)
!3044 = !DILocation(line: 656, column: 10, scope: !2984)
!3045 = !DILocation(line: 654, column: 9, scope: !2984)
!3046 = !DILocation(line: 661, column: 9, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !2984, file: !1052, line: 661, column: 9)
!3048 = !DILocation(line: 661, column: 9, scope: !2984)
!3049 = !DILocation(line: 662, column: 2, scope: !3047)
!3050 = !DILocation(line: 663, column: 1, scope: !2984)
!3051 = !DISubprogram(name: "Perl_mg_find", scope: !1065, file: !1065, line: 2648, type: !3052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!58, !453, !73}
!3054 = !DISubprogram(name: "Perl_sv_2mortal", scope: !1065, file: !1065, line: 4114, type: !2431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3055 = distinct !DISubprogram(name: "Perl_save_helem_flags", scope: !1052, file: !1052, line: 666, type: !3056, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{null, !43, !74, !142, !426}
!3058 = !{!3059, !3060, !3061, !3062, !3063, !3064, !3066}
!3059 = !DILocalVariable(name: "hv", arg: 1, scope: !3055, file: !1052, line: 666, type: !43)
!3060 = !DILocalVariable(name: "key", arg: 2, scope: !3055, file: !1052, line: 666, type: !74)
!3061 = !DILocalVariable(name: "sptr", arg: 3, scope: !3055, file: !1052, line: 666, type: !142)
!3062 = !DILocalVariable(name: "flags", arg: 4, scope: !3055, file: !1052, line: 666, type: !426)
!3063 = !DILocalVariable(name: "sv", scope: !3055, file: !1052, line: 668, type: !74)
!3064 = !DILocalVariable(name: "ix", scope: !3065, file: !1052, line: 674, type: !157)
!3065 = distinct !DILexicalBlock(scope: !3055, file: !1052, line: 673, column: 5)
!3066 = !DILocalVariable(name: "ssp", scope: !3065, file: !1052, line: 674, type: !831)
!3067 = !DILocation(line: 0, scope: !3055)
!3068 = !DILocation(line: 672, column: 5, scope: !3055)
!3069 = !DILocation(line: 674, column: 9, scope: !3065)
!3070 = !DILocation(line: 0, scope: !3065)
!3071 = !DILocation(line: 0, scope: !2099, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 675, column: 9, scope: !3065)
!3073 = !DILocation(line: 142, column: 9, scope: !2106, inlinedAt: !3072)
!3074 = !DILocation(line: 142, column: 9, scope: !2099, inlinedAt: !3072)
!3075 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !3072)
!3076 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !3072)
!3077 = !DILocation(line: 675, column: 9, scope: !3065)
!3078 = !DILocation(line: 676, column: 9, scope: !3065)
!3079 = !DILocation(line: 677, column: 9, scope: !3065)
!3080 = !DILocation(line: 0, scope: !2099, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 677, column: 9, scope: !3065)
!3082 = !DILocation(line: 142, column: 9, scope: !2106, inlinedAt: !3081)
!3083 = !DILocation(line: 142, column: 9, scope: !2099, inlinedAt: !3081)
!3084 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !3081)
!3085 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !3081)
!3086 = !DILocation(line: 678, column: 9, scope: !3065)
!3087 = !DILocation(line: 679, column: 9, scope: !3065)
!3088 = !DILocation(line: 679, column: 9, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3065, file: !1052, line: 679, column: 9)
!3090 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 679, column: 9, scope: !3089)
!3092 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !3091)
!3093 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !3091)
!3094 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !3091)
!3095 = !DILocation(line: 0, scope: !2129, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 681, column: 5, scope: !3055)
!3097 = !DILocation(line: 191, column: 11, scope: !2129, inlinedAt: !3096)
!3098 = !DILocation(line: 192, column: 18, scope: !2129, inlinedAt: !3096)
!3099 = !DILocation(line: 192, column: 11, scope: !2129, inlinedAt: !3096)
!3100 = !DILocation(line: 192, column: 56, scope: !2129, inlinedAt: !3096)
!3101 = !DILocation(line: 192, column: 54, scope: !2129, inlinedAt: !3096)
!3102 = !DILocation(line: 194, column: 9, scope: !2142, inlinedAt: !3096)
!3103 = !DILocation(line: 194, column: 21, scope: !2142, inlinedAt: !3096)
!3104 = !DILocation(line: 194, column: 33, scope: !2142, inlinedAt: !3096)
!3105 = !DILocation(line: 194, column: 36, scope: !2142, inlinedAt: !3096)
!3106 = !DILocation(line: 194, column: 9, scope: !2129, inlinedAt: !3096)
!3107 = !DILocation(line: 195, column: 6, scope: !2148, inlinedAt: !3096)
!3108 = !DILocation(line: 195, column: 6, scope: !2149, inlinedAt: !3096)
!3109 = !DILocation(line: 197, column: 36, scope: !2152, inlinedAt: !3096)
!3110 = !DILocation(line: 196, column: 19, scope: !2152, inlinedAt: !3096)
!3111 = !DILocation(line: 198, column: 2, scope: !2152, inlinedAt: !3096)
!3112 = !DILocation(line: 199, column: 6, scope: !2149, inlinedAt: !3096)
!3113 = !DILocation(line: 200, column: 6, scope: !2156, inlinedAt: !3096)
!3114 = !DILocation(line: 684, column: 10, scope: !3055)
!3115 = !DILocation(line: 682, column: 9, scope: !3055)
!3116 = !DILocation(line: 689, column: 9, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3055, file: !1052, line: 689, column: 9)
!3118 = !DILocation(line: 689, column: 9, scope: !3055)
!3119 = !DILocation(line: 690, column: 2, scope: !3117)
!3120 = !DILocation(line: 691, column: 1, scope: !3055)
!3121 = distinct !DISubprogram(name: "Perl_save_svref", scope: !1052, file: !1052, line: 694, type: !3122, scopeLine: 695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!74, !142}
!3124 = !{!3125}
!3125 = !DILocalVariable(name: "sptr", arg: 1, scope: !3121, file: !1052, line: 694, type: !142)
!3126 = !DILocation(line: 0, scope: !3121)
!3127 = !DILocation(line: 698, column: 5, scope: !3121)
!3128 = !DILocation(line: 699, column: 5, scope: !3121)
!3129 = !DILocation(line: 0, scope: !2099, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 699, column: 5, scope: !3121)
!3131 = !DILocation(line: 142, column: 9, scope: !2106, inlinedAt: !3130)
!3132 = !DILocation(line: 142, column: 9, scope: !2099, inlinedAt: !3130)
!3133 = !DILocation(line: 143, column: 2, scope: !2106, inlinedAt: !3130)
!3134 = !DILocation(line: 143, column: 14, scope: !2106, inlinedAt: !3130)
!3135 = !DILocation(line: 0, scope: !2057, inlinedAt: !3136)
!3136 = distinct !DILocation(line: 699, column: 5, scope: !3121)
!3137 = !DILocation(line: 209, column: 5, scope: !2057, inlinedAt: !3136)
!3138 = !DILocation(line: 210, column: 5, scope: !2057, inlinedAt: !3136)
!3139 = !DILocation(line: 211, column: 5, scope: !2057, inlinedAt: !3136)
!3140 = !DILocation(line: 212, column: 5, scope: !2057, inlinedAt: !3136)
!3141 = !DILocation(line: 213, column: 5, scope: !2057, inlinedAt: !3136)
!3142 = !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !3136)
!3143 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !3144)
!3144 = distinct !DILocation(line: 213, column: 5, scope: !2075, inlinedAt: !3136)
!3145 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !3144)
!3146 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !3144)
!3147 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !3144)
!3148 = !DILocation(line: 0, scope: !2129, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 700, column: 12, scope: !3121)
!3150 = !DILocation(line: 191, column: 11, scope: !2129, inlinedAt: !3149)
!3151 = !DILocation(line: 192, column: 56, scope: !2129, inlinedAt: !3149)
!3152 = !DILocation(line: 192, column: 54, scope: !2129, inlinedAt: !3149)
!3153 = !DILocation(line: 194, column: 9, scope: !2142, inlinedAt: !3149)
!3154 = !DILocation(line: 194, column: 21, scope: !2142, inlinedAt: !3149)
!3155 = !DILocation(line: 194, column: 33, scope: !2142, inlinedAt: !3149)
!3156 = !DILocation(line: 194, column: 36, scope: !2142, inlinedAt: !3149)
!3157 = !DILocation(line: 194, column: 9, scope: !2129, inlinedAt: !3149)
!3158 = !DILocation(line: 195, column: 6, scope: !2148, inlinedAt: !3149)
!3159 = !DILocation(line: 195, column: 6, scope: !2149, inlinedAt: !3149)
!3160 = !DILocation(line: 197, column: 36, scope: !2152, inlinedAt: !3149)
!3161 = !DILocation(line: 196, column: 19, scope: !2152, inlinedAt: !3149)
!3162 = !DILocation(line: 198, column: 2, scope: !2152, inlinedAt: !3149)
!3163 = !DILocation(line: 200, column: 6, scope: !2156, inlinedAt: !3149)
!3164 = !DILocation(line: 700, column: 5, scope: !3121)
!3165 = distinct !DISubprogram(name: "Perl_save_alloc", scope: !1052, file: !1052, line: 704, type: !3166, scopeLine: 705, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3168)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!157, !157, !157}
!3168 = !{!3169, !3170, !3171, !3172, !3173}
!3169 = !DILocalVariable(name: "size", arg: 1, scope: !3165, file: !1052, line: 704, type: !157)
!3170 = !DILocalVariable(name: "pad", arg: 2, scope: !3165, file: !1052, line: 704, type: !157)
!3171 = !DILocalVariable(name: "start", scope: !3165, file: !1052, line: 706, type: !447)
!3172 = !DILocalVariable(name: "elems", scope: !3165, file: !1052, line: 708, type: !2743)
!3173 = !DILocalVariable(name: "elems_shifted", scope: !3165, file: !1052, line: 709, type: !2743)
!3174 = !DILocation(line: 0, scope: !3165)
!3175 = !DILocation(line: 706, column: 51, scope: !3165)
!3176 = !DILocation(line: 708, column: 33, scope: !3165)
!3177 = !DILocation(line: 708, column: 39, scope: !3165)
!3178 = !DILocation(line: 708, column: 27, scope: !3165)
!3179 = !DILocation(line: 708, column: 44, scope: !3165)
!3180 = !DILocation(line: 708, column: 24, scope: !3165)
!3181 = !DILocation(line: 711, column: 9, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !3165, file: !1052, line: 711, column: 9)
!3183 = !DILocation(line: 711, column: 9, scope: !3165)
!3184 = !DILocation(line: 706, column: 23, scope: !3165)
!3185 = !DILocation(line: 714, column: 13, scope: !3182)
!3186 = !DILocation(line: 712, column: 2, scope: !3182)
!3187 = !DILocation(line: 716, column: 5, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3165, file: !1052, line: 716, column: 5)
!3189 = !DILocation(line: 716, column: 5, scope: !3165)
!3190 = !DILocation(line: 719, column: 5, scope: !3165)
!3191 = !DILocation(line: 0, scope: !1998, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 716, column: 5, scope: !3188)
!3193 = !DILocation(line: 129, column: 22, scope: !1998, inlinedAt: !3192)
!3194 = !DILocation(line: 130, column: 5, scope: !1998, inlinedAt: !3192)
!3195 = !DILocation(line: 718, column: 21, scope: !3165)
!3196 = !DILocation(line: 709, column: 36, scope: !3165)
!3197 = !DILocation(line: 707, column: 27, scope: !3165)
!3198 = !DILocation(line: 706, column: 27, scope: !3165)
!3199 = !DILocation(line: 720, column: 5, scope: !3165)
!3200 = distinct !DISubprogram(name: "Perl_save_aliased_sv", scope: !1052, file: !1052, line: 724, type: !3201, scopeLine: 725, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3203)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{null, !218}
!3203 = !{!3204, !3205, !3206}
!3204 = !DILocalVariable(name: "gv", arg: 1, scope: !3200, file: !1052, line: 724, type: !218)
!3205 = !DILocalVariable(name: "ix", scope: !3200, file: !1052, line: 726, type: !157)
!3206 = !DILocalVariable(name: "ssp", scope: !3200, file: !1052, line: 726, type: !831)
!3207 = !DILocation(line: 0, scope: !3200)
!3208 = !DILocation(line: 726, column: 5, scope: !3200)
!3209 = !DILocation(line: 728, column: 5, scope: !3200)
!3210 = !DILocation(line: 729, column: 5, scope: !3200)
!3211 = !DILocation(line: 730, column: 5, scope: !3200)
!3212 = !DILocation(line: 730, column: 5, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3200, file: !1052, line: 730, column: 5)
!3214 = !DILocation(line: 122, column: 24, scope: !1992, inlinedAt: !3215)
!3215 = distinct !DILocation(line: 730, column: 5, scope: !3213)
!3216 = !DILocation(line: 122, column: 47, scope: !1992, inlinedAt: !3215)
!3217 = !DILocation(line: 122, column: 22, scope: !1992, inlinedAt: !3215)
!3218 = !DILocation(line: 123, column: 5, scope: !1992, inlinedAt: !3215)
!3219 = !DILocation(line: 731, column: 1, scope: !3200)
!3220 = !DISubprogram(name: "Perl_sv_replace", scope: !1065, file: !1065, line: 4564, type: !3221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{null, !413, !413}
!3223 = !DISubprogram(name: "Perl_mg_set", scope: !1065, file: !1065, line: 2692, type: !2162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3224 = !DISubprogram(name: "Perl_safesysfree", scope: !1065, file: !1065, line: 3750, type: !346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3225 = !DISubprogram(name: "Perl_gp_free", scope: !1065, file: !1065, line: 1336, type: !3201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3226 = !DISubprogram(name: "Perl_padname_free", scope: !1065, file: !1065, line: 3374, type: !3227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{null, !906}
!3229 = !DISubprogram(name: "Perl_refcounted_he_free", scope: !1065, file: !1065, line: 3588, type: !3230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{null, !645}
!3232 = !DISubprogram(name: "Perl_op_free", scope: !1065, file: !1065, line: 3256, type: !3233, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{null, !308}
!3235 = !DISubprogram(name: "Perl_hv_kill_backrefs", scope: !1065, file: !1065, line: 6047, type: !2333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3236 = !DISubprogram(name: "Perl_sv_backoff", scope: !1065, file: !1065, line: 4173, type: !3237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!73, !413}
!3239 = !DISubprogram(name: "Perl_sv_unmagic", scope: !1065, file: !1065, line: 4722, type: !3240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!73, !413, !2061}
!3242 = !DISubprogram(name: "Perl_mg_free", scope: !1065, file: !1065, line: 2660, type: !2162, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3243 = !DISubprogram(name: "Perl_sv_force_normal_flags", scope: !1065, file: !1065, line: 4365, type: !3244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{null, !413, !426}
!3246 = !DISubprogram(name: "Perl_av_clear", scope: !1065, file: !1065, line: 186, type: !2375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3247 = !DISubprogram(name: "Perl_hv_clear", scope: !1065, file: !1065, line: 1620, type: !2333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3248 = !DISubprogram(name: "Perl_cv_undef", scope: !1065, file: !1065, line: 848, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3249 = !DISubprogram(name: "Perl_unshare_hek", scope: !1065, file: !1065, line: 4976, type: !3250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{null, !151}
!3252 = !DISubprogram(name: "Perl_newSV", scope: !1065, file: !1065, line: 3055, type: !3253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!74, !3255}
!3255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!3256 = !DISubprogram(name: "Perl_hv_common_key_len", scope: !1065, file: !1065, line: 1627, type: !3257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!79, !43, !424, !157, !2061, !74, !426}
!3259 = !DISubprogram(name: "Perl_av_delete", scope: !1065, file: !1065, line: 203, type: !3260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!74, !31, !372, !157}
!3262 = !DISubprogram(name: "Perl_av_fetch", scope: !1065, file: !1065, line: 226, type: !3263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!142, !31, !372, !157}
!3265 = !DISubprogram(name: "Perl_hv_common", scope: !1065, file: !1065, line: 1626, type: !3266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!79, !43, !74, !424, !108, !73, !73, !74, !81}
!3268 = !DISubprogram(name: "Perl_sv_magic", scope: !1065, file: !1065, line: 4426, type: !3269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !413, !413, !2061, !423, !447}
!3271 = !DISubprogram(name: "Perl_sv_clear", scope: !1065, file: !1065, line: 4263, type: !3272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{null, !413}
!3274 = !DISubprogram(name: "Perl_parser_free", scope: !1065, file: !1065, line: 3412, type: !3275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{null, !3277}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!3279 = distinct !DISubprogram(name: "Perl_cx_dump", scope: !1052, file: !1052, line: 1282, type: !3280, scopeLine: 1283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3282)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{null, !598}
!3282 = !{!3283}
!3283 = !DILocalVariable(name: "cx", arg: 1, scope: !3279, file: !1052, line: 1282, type: !598)
!3284 = !DILocation(line: 0, scope: !3279)
!3285 = !DILocation(line: 1402, column: 1, scope: !3279)
!3286 = !DISubprogram(name: "Perl_sv_free2", scope: !1065, file: !1065, line: 4371, type: !3244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1068)
