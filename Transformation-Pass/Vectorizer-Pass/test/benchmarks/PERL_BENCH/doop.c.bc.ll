; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/doop.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/doop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }
%struct.sv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.16 }
%union._xmgu = type { ptr }
%union.anon.16 = type { i64 }
%struct.svop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.21, %union._xivu }
%union.anon.21 = type { i64 }
%union._xivu = type { i64 }
%struct.pvop = type { ptr, ptr, ptr, i64, i16, i8, i8, ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.cop = type { ptr, ptr, ptr, i64, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.xpvlv = type { ptr, %union._xmgu, i64, %union.anon.19, %union._xivu, %union._xnvu, %union.anon.20, i64, ptr, i8, i8 }
%union.anon.19 = type { i64 }
%union._xnvu = type { double }
%union.anon.20 = type { i64 }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.17, %union._xivu, %union._xnvu }
%union.anon.17 = type { i64 }

@PL_op = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_curcop = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@PL_op_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Illegal number of bits in vec\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Bit vector size > 32 non-portable\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Negative offset to vec in lvalue context\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"panic: do_vop called for op %u (%s)\00", align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@PL_curpad = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@PL_utf8skip = external local_unnamed_addr constant [0 x i8], align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"panic: do_trans_count line %d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"FINAL\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"panic: do_trans_complex_utf8 line %d\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"panic: do_trans_complex line %d\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"panic: do_trans_simple_utf8 line %d\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"panic: do_trans_simple line %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_do_trans(ptr noundef %sv) local_unnamed_addr #0 !dbg !1108 {
entry:
  %len.i237 = alloca i64, align 8
  %ulen.i238 = alloca i64, align 8
  %len.i186 = alloca i64, align 8
  %len.i145 = alloca i64, align 8
  %len103.i = alloca i64, align 8
  %len193.i = alloca i64, align 8
  %len.i109 = alloca i64, align 8
  %len130.i = alloca i64, align 8
  %len.i92 = alloca i64, align 8
  %ulen.i = alloca i64, align 8
  %len.i = alloca i64, align 8
  %len = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1113, metadata !DIExpression()), !dbg !1117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len) #6, !dbg !1118
  %0 = load ptr, ptr @PL_op, align 8, !dbg !1119
  %op_private = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 6, !dbg !1120
  %1 = load i8, ptr %op_private, align 1, !dbg !1120
  %conv = zext i8 %1 to i32, !dbg !1119
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1115, metadata !DIExpression()), !dbg !1117
  %and = and i32 %conv, 3, !dbg !1121
  call void @llvm.dbg.value(metadata i32 %and, metadata !1116, metadata !DIExpression()), !dbg !1117
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !1122
  %2 = load i32, ptr %sv_flags, align 4, !dbg !1122
  %and1 = and i32 %2, 134283264, !dbg !1122
  %tobool.not = icmp ne i32 %and1, 0, !dbg !1122
  %and2 = and i32 %conv, 4
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false, !dbg !1124
  br i1 %or.cond, label %if.then, label %if.end, !dbg !1124

if.then:                                          ; preds = %entry
  tail call void @Perl_croak_no_modify() #6, !dbg !1125
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !1127
  br label %if.end, !dbg !1128

if.end:                                           ; preds = %if.then, %entry
  %3 = phi i32 [ %.pre, %if.then ], [ %2, %entry ], !dbg !1127
  %and5 = and i32 %3, 2098176, !dbg !1127
  %cmp = icmp eq i32 %and5, 1024, !dbg !1127
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1127

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %sv, align 8, !dbg !1127
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %4, i64 0, i32 2, !dbg !1127
  %5 = load i64, ptr %xpv_cur, align 8, !dbg !1127
  call void @llvm.dbg.value(metadata i64 %5, metadata !1114, metadata !DIExpression()), !dbg !1117
  store i64 %5, ptr %len, align 8, !dbg !1127
  br label %cond.end, !dbg !1127

cond.false:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %len, metadata !1114, metadata !DIExpression(DW_OP_deref)), !dbg !1117
  %call = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len, i32 noundef 34) #6, !dbg !1127
  %.pr = load i64, ptr %len, align 8, !dbg !1129
  br label %cond.end, !dbg !1127

cond.end:                                         ; preds = %cond.false, %cond.true
  %6 = phi i64 [ %.pr, %cond.false ], [ %5, %cond.true ], !dbg !1129
  call void @llvm.dbg.value(metadata i64 %6, metadata !1114, metadata !DIExpression()), !dbg !1117
  %tobool7.not = icmp eq i64 %6, 0, !dbg !1129
  br i1 %tobool7.not, label %cleanup, label %if.end9, !dbg !1131

if.end9:                                          ; preds = %cond.end
  br i1 %tobool3.not, label %if.then12, label %if.then39, !dbg !1132

if.then12:                                        ; preds = %if.end9
  %7 = load i32, ptr %sv_flags, align 4, !dbg !1133
  %8 = and i32 %7, 427902976, !dbg !1137
  %9 = icmp eq i32 %8, 16384, !dbg !1137
  br i1 %9, label %if.else, label %if.then19, !dbg !1137

if.then19:                                        ; preds = %if.then12
  %and21 = and i32 %7, 430018304, !dbg !1138
  %cmp22 = icmp eq i32 %and21, 1024, !dbg !1138
  br i1 %cmp22, label %cond.true24, label %cond.false28, !dbg !1138

cond.true24:                                      ; preds = %if.then19
  %10 = load ptr, ptr %sv, align 8, !dbg !1138
  %xpv_cur26 = getelementptr inbounds %struct.xpv, ptr %10, i64 0, i32 2, !dbg !1138
  %11 = load i64, ptr %xpv_cur26, align 8, !dbg !1138
  call void @llvm.dbg.value(metadata i64 %11, metadata !1114, metadata !DIExpression()), !dbg !1117
  store i64 %11, ptr %len, align 8, !dbg !1138
  br label %if.else, !dbg !1138

cond.false28:                                     ; preds = %if.then19
  call void @llvm.dbg.value(metadata ptr %len, metadata !1114, metadata !DIExpression(DW_OP_deref)), !dbg !1117
  %call29 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len, i32 noundef 0) #6, !dbg !1138
  %.pre296 = load i32, ptr %sv_flags, align 4, !dbg !1139
  br label %if.else, !dbg !1138

if.then39:                                        ; preds = %if.end9
  %tobool40.not = icmp eq i32 %and, 0, !dbg !1140
  br i1 %tobool40.not, label %cond.false43, label %cond.true41, !dbg !1140

cond.true41:                                      ; preds = %if.then39
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1143, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata ptr null, metadata !1149, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata i32 0, metadata !1151, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i) #6, !dbg !1174
  %12 = load ptr, ptr @PL_op, align 8, !dbg !1175
  %op_sv.i = getelementptr inbounds %struct.svop, ptr %12, i64 0, i32 7, !dbg !1175
  %13 = load ptr, ptr %op_sv.i, align 8, !dbg !1175
  call void @llvm.dbg.value(metadata ptr %13, metadata !1153, metadata !DIExpression()) #6, !dbg !1172
  %sv_u.i = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3, !dbg !1176
  %14 = load ptr, ptr %sv_u.i, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %14, metadata !1154, metadata !DIExpression()) #6, !dbg !1172
  %call.i = call ptr @Perl_hv_common(ptr noundef %14, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6, !dbg !1177
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !1156, metadata !DIExpression()) #6, !dbg !1172
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !1178
  br i1 %tobool.not.i, label %cond.end4.i, label %cond.true.i, !dbg !1178

cond.true.i:                                      ; preds = %cond.true41
  %15 = load ptr, ptr %call.i, align 8, !dbg !1179
  %sv_flags.i = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2, !dbg !1179
  %16 = load i32, ptr %sv_flags.i, align 4, !dbg !1179
  %and.i = and i32 %16, -2145386240, !dbg !1179
  %cmp.i = icmp eq i32 %and.i, -2147483392, !dbg !1179
  br i1 %cmp.i, label %cond.true1.i, label %cond.false.i, !dbg !1179

cond.true1.i:                                     ; preds = %cond.true.i
  %17 = load ptr, ptr %15, align 8, !dbg !1179
  %xuv_u.i = getelementptr inbounds %struct.xpvuv, ptr %17, i64 0, i32 4, !dbg !1179
  %18 = load i64, ptr %xuv_u.i, align 8, !dbg !1179
  br label %cond.end4.i, !dbg !1179

cond.false.i:                                     ; preds = %cond.true.i
  %call2.i = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %15, i32 noundef 2) #6, !dbg !1179
  br label %cond.end4.i, !dbg !1179

cond.end4.i:                                      ; preds = %cond.false.i, %cond.true1.i, %cond.true41
  %cond5.i = phi i64 [ %18, %cond.true1.i ], [ %call2.i, %cond.false.i ], [ 2147483647, %cond.true41 ], !dbg !1178
  call void @llvm.dbg.value(metadata i64 %cond5.i, metadata !1159, metadata !DIExpression()) #6, !dbg !1172
  %add.i = add i64 %cond5.i, 1, !dbg !1180
  call void @llvm.dbg.value(metadata i64 %add.i, metadata !1161, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata i8 0, metadata !1162, metadata !DIExpression()) #6, !dbg !1172
  %19 = load i32, ptr %sv_flags, align 4, !dbg !1181
  %and7.i = and i32 %19, 2098176, !dbg !1181
  %cmp8.i = icmp eq i32 %and7.i, 1024, !dbg !1181
  br i1 %cmp8.i, label %cond.true9.i, label %cond.false12.i, !dbg !1181

cond.true9.i:                                     ; preds = %cond.end4.i
  %20 = load ptr, ptr %sv, align 8, !dbg !1181
  %xpv_cur.i = getelementptr inbounds %struct.xpv, ptr %20, i64 0, i32 2, !dbg !1181
  %21 = load i64, ptr %xpv_cur.i, align 8, !dbg !1181
  call void @llvm.dbg.value(metadata i64 %21, metadata !1152, metadata !DIExpression()) #6, !dbg !1172
  store i64 %21, ptr %len.i, align 8, !dbg !1181
  %sv_u11.i = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !1181
  %22 = load ptr, ptr %sv_u11.i, align 8, !dbg !1181
  br label %cond.end14.i, !dbg !1181

cond.false12.i:                                   ; preds = %cond.end4.i
  call void @llvm.dbg.value(metadata ptr %len.i, metadata !1152, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1172
  %call13.i = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len.i, i32 noundef 32) #6, !dbg !1181
  %.pre.i = load i32, ptr %sv_flags, align 4, !dbg !1182
  br label %cond.end14.i, !dbg !1181

cond.end14.i:                                     ; preds = %cond.false12.i, %cond.true9.i
  %23 = phi i32 [ %19, %cond.true9.i ], [ %.pre.i, %cond.false12.i ], !dbg !1182
  %cond15.i = phi ptr [ %22, %cond.true9.i ], [ %call13.i, %cond.false12.i ], !dbg !1181
  call void @llvm.dbg.value(metadata ptr %cond15.i, metadata !1148, metadata !DIExpression()) #6, !dbg !1172
  %and17.i = and i32 %23, 536870912, !dbg !1182
  %tobool18.not.i = icmp eq i32 %and17.i, 0, !dbg !1182
  br i1 %tobool18.not.i, label %if.then.i, label %if.end27.i, !dbg !1183

if.then.i:                                        ; preds = %cond.end14.i
  call void @llvm.dbg.value(metadata ptr %cond15.i, metadata !1163, metadata !DIExpression()) #6, !dbg !1184
  %24 = load i64, ptr %len.i, align 8, !dbg !1185
  call void @llvm.dbg.value(metadata i64 %24, metadata !1152, metadata !DIExpression()) #6, !dbg !1172
  %add.ptr19.i = getelementptr inbounds i8, ptr %cond15.i, i64 %24, !dbg !1186
  call void @llvm.dbg.value(metadata ptr %add.ptr19.i, metadata !1166, metadata !DIExpression()) #6, !dbg !1184
  call void @llvm.dbg.value(metadata ptr %cond15.i, metadata !1148, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata ptr null, metadata !1149, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata i8 0, metadata !1162, metadata !DIExpression()) #6, !dbg !1172
  %cmp2082.i = icmp sgt i64 %24, 0, !dbg !1187
  br i1 %cmp2082.i, label %while.body.i, label %S_do_trans_count_utf8.exit, !dbg !1188

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr inbounds i8, ptr %t.083.i, i64 1, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %cond15.i, metadata !1148, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata ptr null, metadata !1149, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %t.083.i, metadata !1163, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !1184
  call void @llvm.dbg.value(metadata i8 %25, metadata !1162, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value)) #6, !dbg !1172
  %cmp20.i = icmp ult ptr %incdec.ptr.i, %add.ptr19.i, !dbg !1187
  br i1 %cmp20.i, label %while.body.i, label %if.end27.i, !dbg !1188

while.body.i:                                     ; preds = %if.then.i, %while.cond.i
  %t.083.i = phi ptr [ %incdec.ptr.i, %while.cond.i ], [ %cond15.i, %if.then.i ]
  call void @llvm.dbg.value(metadata ptr %t.083.i, metadata !1148, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %t.083.i, metadata !1163, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !1184
  %25 = load i8, ptr %t.083.i, align 1, !dbg !1190
  call void @llvm.dbg.value(metadata i8 %25, metadata !1168, metadata !DIExpression()) #6, !dbg !1191
  call void @llvm.dbg.value(metadata i8 %25, metadata !1162, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value)) #6, !dbg !1172
  %tobool24.not.i = icmp sgt i8 %25, -1, !dbg !1192
  br i1 %tobool24.not.i, label %while.cond.i, label %cleanup.thread.i, !dbg !1194

cleanup.thread.i:                                 ; preds = %while.body.i
  call void @llvm.dbg.value(metadata ptr %len.i, metadata !1152, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1172
  %call26.i = call ptr @Perl_bytes_to_utf8(ptr noundef %cond15.i, ptr noundef nonnull %len.i) #6, !dbg !1195
  call void @llvm.dbg.value(metadata ptr %cond15.i, metadata !1148, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata ptr null, metadata !1149, metadata !DIExpression()) #6, !dbg !1172
  br label %if.end27.i

if.end27.i:                                       ; preds = %while.cond.i, %cleanup.thread.i, %cond.end14.i
  %tobool43.not.i = phi i1 [ false, %cleanup.thread.i ], [ true, %cond.end14.i ], [ true, %while.cond.i ]
  %start.3.ph.i = phi ptr [ %call26.i, %cleanup.thread.i ], [ null, %cond.end14.i ], [ null, %while.cond.i ]
  %s.3.ph.i = phi ptr [ %call26.i, %cleanup.thread.i ], [ %cond15.i, %cond.end14.i ], [ %cond15.i, %while.cond.i ]
  %.pr.i = load i64, ptr %len.i, align 8, !dbg !1197
  call void @llvm.dbg.value(metadata ptr %s.3.ph.i, metadata !1148, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %start.3.ph.i, metadata !1149, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata i8 undef, metadata !1162, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata i64 %.pr.i, metadata !1152, metadata !DIExpression()) #6, !dbg !1172
  %add.ptr28.i = getelementptr inbounds i8, ptr %s.3.ph.i, i64 %.pr.i, !dbg !1198
  call void @llvm.dbg.value(metadata ptr %add.ptr28.i, metadata !1150, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata i32 0, metadata !1151, metadata !DIExpression()) #6, !dbg !1172
  %cmp3084.i = icmp sgt i64 %.pr.i, 0, !dbg !1199
  br i1 %cmp3084.i, label %while.body32.i, label %while.end42.i, !dbg !1200

while.body32.i:                                   ; preds = %if.end27.i, %while.body32.i
  %s.486.i = phi ptr [ %add.ptr41.i, %while.body32.i ], [ %s.3.ph.i, %if.end27.i ]
  %matches.085.i = phi i32 [ %spec.select.i, %while.body32.i ], [ 0, %if.end27.i ]
  call void @llvm.dbg.value(metadata ptr %s.486.i, metadata !1148, metadata !DIExpression()) #6, !dbg !1172
  call void @llvm.dbg.value(metadata i32 %matches.085.i, metadata !1151, metadata !DIExpression()) #6, !dbg !1172
  %call33.i = call i64 @Perl_swash_fetch(ptr noundef %13, ptr noundef %s.486.i, i1 noundef zeroext true) #6, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %call33.i, metadata !1170, metadata !DIExpression()) #6, !dbg !1202
  %cmp34.i = icmp ult i64 %call33.i, %cond5.i, !dbg !1203
  %cmp36.i = icmp eq i64 %call33.i, %add.i
  %or.cond.i = or i1 %cmp34.i, %cmp36.i, !dbg !1205
  %inc.i = zext i1 %or.cond.i to i32, !dbg !1205
  %spec.select.i = add nuw nsw i32 %matches.085.i, %inc.i, !dbg !1205
  call void @llvm.dbg.value(metadata i32 %spec.select.i, metadata !1151, metadata !DIExpression()) #6, !dbg !1172
  %26 = load i8, ptr %s.486.i, align 1, !dbg !1206
  %idxprom.i = zext i8 %26 to i64, !dbg !1206
  %arrayidx.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom.i, !dbg !1206
  %27 = load i8, ptr %arrayidx.i, align 1, !dbg !1206
  %28 = zext i8 %27 to i64
  %add.ptr41.i = getelementptr inbounds i8, ptr %s.486.i, i64 %28, !dbg !1207
  call void @llvm.dbg.value(metadata ptr %add.ptr41.i, metadata !1148, metadata !DIExpression()) #6, !dbg !1172
  %cmp30.i = icmp ult ptr %add.ptr41.i, %add.ptr28.i, !dbg !1199
  br i1 %cmp30.i, label %while.body32.i, label %while.end42.i, !dbg !1200, !llvm.loop !1208

while.end42.i:                                    ; preds = %while.body32.i, %if.end27.i
  %matches.0.lcssa.i = phi i32 [ 0, %if.end27.i ], [ %spec.select.i, %while.body32.i ], !dbg !1172
  br i1 %tobool43.not.i, label %S_do_trans_count_utf8.exit, label %if.then44.i, !dbg !1212

if.then44.i:                                      ; preds = %while.end42.i
  call void @Perl_safesysfree(ptr noundef %start.3.ph.i) #6, !dbg !1213
  br label %S_do_trans_count_utf8.exit, !dbg !1213

S_do_trans_count_utf8.exit:                       ; preds = %if.then.i, %while.end42.i, %if.then44.i
  %matches.0.lcssa100.i = phi i32 [ %matches.0.lcssa.i, %if.then44.i ], [ %matches.0.lcssa.i, %while.end42.i ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i) #6, !dbg !1215
  br label %cleanup, !dbg !1140

cond.false43:                                     ; preds = %if.then39
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1216, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i92) #6, !dbg !1235
  %29 = load i32, ptr %sv_flags, align 4, !dbg !1236
  %and.i94 = and i32 %29, 2098176, !dbg !1236
  %cmp.i95 = icmp eq i32 %and.i94, 1024, !dbg !1236
  br i1 %cmp.i95, label %cond.true.i98, label %cond.false.i101, !dbg !1236

cond.true.i98:                                    ; preds = %cond.false43
  %30 = load ptr, ptr %sv, align 8, !dbg !1236
  %xpv_cur.i96 = getelementptr inbounds %struct.xpv, ptr %30, i64 0, i32 2, !dbg !1236
  %31 = load i64, ptr %xpv_cur.i96, align 8, !dbg !1236
  call void @llvm.dbg.value(metadata i64 %31, metadata !1219, metadata !DIExpression()) #6, !dbg !1233
  store i64 %31, ptr %len.i92, align 8, !dbg !1236
  %sv_u.i97 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !1236
  %32 = load ptr, ptr %sv_u.i97, align 8, !dbg !1236
  br label %cond.end.i, !dbg !1236

cond.false.i101:                                  ; preds = %cond.false43
  call void @llvm.dbg.value(metadata ptr %len.i92, metadata !1219, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1233
  %call.i99 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len.i92, i32 noundef 32) #6, !dbg !1236
  %.pre.i100 = load i64, ptr %len.i92, align 8, !dbg !1237
  br label %cond.end.i, !dbg !1236

cond.end.i:                                       ; preds = %cond.false.i101, %cond.true.i98
  %33 = phi i64 [ %31, %cond.true.i98 ], [ %.pre.i100, %cond.false.i101 ], !dbg !1237
  %cond.i = phi ptr [ %32, %cond.true.i98 ], [ %call.i99, %cond.false.i101 ], !dbg !1236
  call void @llvm.dbg.value(metadata ptr %cond.i, metadata !1220, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.dbg.value(metadata i64 %33, metadata !1219, metadata !DIExpression()) #6, !dbg !1233
  %add.ptr1.i = getelementptr inbounds i8, ptr %cond.i, i64 %33, !dbg !1238
  call void @llvm.dbg.value(metadata ptr %add.ptr1.i, metadata !1221, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.dbg.value(metadata i32 0, metadata !1222, metadata !DIExpression()) #6, !dbg !1233
  %34 = load ptr, ptr @PL_op, align 8, !dbg !1239
  %op_pv.i = getelementptr inbounds %struct.pvop, ptr %34, i64 0, i32 7, !dbg !1240
  %35 = load ptr, ptr %op_pv.i, align 8, !dbg !1240
  call void @llvm.dbg.value(metadata ptr %35, metadata !1223, metadata !DIExpression()) #6, !dbg !1233
  %tobool.not.i102 = icmp eq ptr %35, null, !dbg !1241
  br i1 %tobool.not.i102, label %if.then.i103, label %if.end.i, !dbg !1243

if.then.i103:                                     ; preds = %cond.end.i
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.8, i32 noundef 110) #6, !dbg !1244
  br label %if.end.i, !dbg !1244

if.end.i:                                         ; preds = %if.then.i103, %cond.end.i
  %36 = load i32, ptr %sv_flags, align 4, !dbg !1245
  %and3.i = and i32 %36, 536870912, !dbg !1245
  %tobool4.not.i = icmp eq i32 %and3.i, 0, !dbg !1245
  %cmp669.i = icmp sgt i64 %33, 0, !dbg !1246
  br i1 %tobool4.not.i, label %while.cond.preheader.i, label %if.else.i, !dbg !1247

while.cond.preheader.i:                           ; preds = %if.end.i
  call void @llvm.dbg.value(metadata ptr %cond.i, metadata !1220, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.dbg.value(metadata i32 0, metadata !1222, metadata !DIExpression()) #6, !dbg !1233
  br i1 %cmp669.i, label %while.body.i108, label %S_do_trans_count.exit, !dbg !1248

while.body.i108:                                  ; preds = %while.cond.preheader.i, %while.body.i108
  %s.071.i = phi ptr [ %incdec.ptr.i104, %while.body.i108 ], [ %cond.i, %while.cond.preheader.i ]
  %matches.070.i = phi i32 [ %spec.select.i107, %while.body.i108 ], [ 0, %while.cond.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %s.071.i, metadata !1220, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.dbg.value(metadata i32 %matches.070.i, metadata !1222, metadata !DIExpression()) #6, !dbg !1233
  %incdec.ptr.i104 = getelementptr inbounds i8, ptr %s.071.i, i64 1, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i104, metadata !1220, metadata !DIExpression()) #6, !dbg !1233
  %37 = load i8, ptr %s.071.i, align 1, !dbg !1253
  %idxprom.i105 = zext i8 %37 to i64, !dbg !1254
  %arrayidx.i106 = getelementptr inbounds i16, ptr %35, i64 %idxprom.i105, !dbg !1254
  %38 = load i16, ptr %arrayidx.i106, align 2, !dbg !1254
  %39 = xor i16 %38, -1, !dbg !1255
  %40 = lshr i16 %39, 15, !dbg !1255
  %.not64.i = zext i16 %40 to i32, !dbg !1255
  %spec.select.i107 = add nuw nsw i32 %matches.070.i, %.not64.i, !dbg !1255
  call void @llvm.dbg.value(metadata i32 %spec.select.i107, metadata !1222, metadata !DIExpression()) #6, !dbg !1233
  %cmp6.i = icmp ult ptr %incdec.ptr.i104, %add.ptr1.i, !dbg !1256
  br i1 %cmp6.i, label %while.body.i108, label %S_do_trans_count.exit, !dbg !1248, !llvm.loop !1257

if.else.i:                                        ; preds = %if.end.i
  call void @llvm.dbg.value(metadata i8 undef, metadata !1227, metadata !DIExpression(DW_OP_constu, 32, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1259
  call void @llvm.dbg.value(metadata ptr %cond.i, metadata !1220, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.dbg.value(metadata i32 0, metadata !1222, metadata !DIExpression()) #6, !dbg !1233
  br i1 %cmp669.i, label %while.body16.lr.ph.i, label %S_do_trans_count.exit, !dbg !1260

while.body16.lr.ph.i:                             ; preds = %if.else.i
  %41 = load ptr, ptr @PL_op, align 8, !dbg !1261
  %op_private.i = getelementptr inbounds %struct.op, ptr %41, i64 0, i32 6, !dbg !1262
  %42 = load i8, ptr %op_private.i, align 1, !dbg !1262
  call void @llvm.dbg.value(metadata i8 %42, metadata !1227, metadata !DIExpression(DW_OP_constu, 32, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1259
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr1.i to i64
  %43 = lshr i8 %42, 5
  %.lobit.i = and i8 %43, 1
  %44 = zext i8 %.lobit.i to i32
  br label %while.body16.i, !dbg !1260

while.body16.i:                                   ; preds = %if.end36.i, %while.body16.lr.ph.i
  %s.168.i = phi ptr [ %cond.i, %while.body16.lr.ph.i ], [ %add.ptr37.i, %if.end36.i ]
  %matches.267.i = phi i32 [ 0, %while.body16.lr.ph.i ], [ %matches.3.i, %if.end36.i ]
  call void @llvm.dbg.value(metadata ptr %s.168.i, metadata !1220, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.dbg.value(metadata i32 %matches.267.i, metadata !1222, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ulen.i) #6, !dbg !1263
  %sub.ptr.rhs.cast.i = ptrtoint ptr %s.168.i to i64, !dbg !1264
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !1264
  %call17.i = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6, !dbg !1264
  %not.call17.i = xor i1 %call17.i, true, !dbg !1264
  %cond19.i = zext i1 %not.call17.i to i32, !dbg !1264
  call void @llvm.dbg.value(metadata ptr %ulen.i, metadata !1230, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1265
  %call20.i = call i64 @Perl_utf8n_to_uvchr(ptr noundef %s.168.i, i64 noundef %sub.ptr.sub.i, ptr noundef nonnull %ulen.i, i32 noundef %cond19.i) #6, !dbg !1264
  call void @llvm.dbg.value(metadata i64 %call20.i, metadata !1232, metadata !DIExpression()) #6, !dbg !1265
  %cmp21.i = icmp ult i64 %call20.i, 256, !dbg !1266
  br i1 %cmp21.i, label %if.then23.i, label %if.end36.i, !dbg !1268

if.then23.i:                                      ; preds = %while.body16.i
  %arrayidx24.i = getelementptr inbounds i16, ptr %35, i64 %call20.i, !dbg !1269
  %45 = load i16, ptr %arrayidx24.i, align 2, !dbg !1269
  %46 = xor i16 %45, -1, !dbg !1272
  %47 = lshr i16 %46, 15, !dbg !1272
  %.not.i = zext i16 %47 to i32, !dbg !1272
  br label %if.end36.i, !dbg !1272

if.end36.i:                                       ; preds = %if.then23.i, %while.body16.i
  %.not.pn.i = phi i32 [ %.not.i, %if.then23.i ], [ %44, %while.body16.i ]
  %matches.3.i = add nuw nsw i32 %.not.pn.i, %matches.267.i, !dbg !1233
  call void @llvm.dbg.value(metadata i32 %matches.3.i, metadata !1222, metadata !DIExpression()) #6, !dbg !1233
  %48 = load i64, ptr %ulen.i, align 8, !dbg !1273
  call void @llvm.dbg.value(metadata i64 %48, metadata !1230, metadata !DIExpression()) #6, !dbg !1265
  %add.ptr37.i = getelementptr inbounds i8, ptr %s.168.i, i64 %48, !dbg !1274
  call void @llvm.dbg.value(metadata ptr %add.ptr37.i, metadata !1220, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ulen.i) #6, !dbg !1275
  %cmp14.i = icmp ult ptr %add.ptr37.i, %add.ptr1.i, !dbg !1276
  br i1 %cmp14.i, label %while.body16.i, label %S_do_trans_count.exit, !dbg !1260, !llvm.loop !1277

S_do_trans_count.exit:                            ; preds = %if.end36.i, %while.body.i108, %while.cond.preheader.i, %if.else.i
  %matches.4.i = phi i32 [ 0, %while.cond.preheader.i ], [ 0, %if.else.i ], [ %spec.select.i107, %while.body.i108 ], [ %matches.3.i, %if.end36.i ], !dbg !1278
  call void @llvm.dbg.value(metadata i32 %matches.4.i, metadata !1222, metadata !DIExpression()) #6, !dbg !1233
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i92) #6, !dbg !1279
  br label %cleanup, !dbg !1140

if.else:                                          ; preds = %cond.false28, %cond.true24, %if.then12
  %49 = phi i32 [ %.pre296, %cond.false28 ], [ %7, %cond.true24 ], [ %7, %if.then12 ], !dbg !1139
  %and34 = and i32 %49, 2147418367, !dbg !1139
  %or = or i32 %and34, 17408, !dbg !1139
  store i32 %or, ptr %sv_flags, align 4, !dbg !1139
  %and47 = and i32 %conv, 168, !dbg !1280
  %tobool48.not = icmp eq i32 %and47, 0, !dbg !1280
  %tobool58.not = icmp eq i32 %and, 0, !dbg !1282
  br i1 %tobool48.not, label %if.else57, label %if.then49, !dbg !1283

if.then49:                                        ; preds = %if.else
  br i1 %tobool58.not, label %cond.false53, label %cond.true51, !dbg !1284

cond.true51:                                      ; preds = %if.then49
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1286, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i32 0, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  %50 = load ptr, ptr @PL_op, align 8, !dbg !1347
  %op_private.i110 = getelementptr inbounds %struct.op, ptr %50, i64 0, i32 6, !dbg !1348
  %51 = load i8, ptr %op_private.i110, align 1, !dbg !1348
  %conv.i = zext i8 %51 to i32, !dbg !1347
  %and.i111 = and i32 %conv.i, 8, !dbg !1349
  call void @llvm.dbg.value(metadata i32 %and.i111, metadata !1293, metadata !DIExpression()) #6, !dbg !1345
  %and3.i112 = and i32 %conv.i, 128, !dbg !1350
  call void @llvm.dbg.value(metadata i32 %and3.i112, metadata !1294, metadata !DIExpression()) #6, !dbg !1345
  %and6.i = and i32 %conv.i, 64, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %and6.i, metadata !1295, metadata !DIExpression()) #6, !dbg !1345
  %op_sv.i113 = getelementptr inbounds %struct.svop, ptr %50, i64 0, i32 7, !dbg !1352
  %52 = load ptr, ptr %op_sv.i113, align 8, !dbg !1352
  call void @llvm.dbg.value(metadata ptr %52, metadata !1296, metadata !DIExpression()) #6, !dbg !1345
  %sv_u.i114 = getelementptr inbounds %struct.sv, ptr %52, i64 0, i32 3, !dbg !1353
  %53 = load ptr, ptr %sv_u.i114, align 8, !dbg !1353
  call void @llvm.dbg.value(metadata ptr %53, metadata !1297, metadata !DIExpression()) #6, !dbg !1345
  %call.i115 = call ptr @Perl_hv_common(ptr noundef %53, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6, !dbg !1354
  call void @llvm.dbg.value(metadata ptr %call.i115, metadata !1298, metadata !DIExpression()) #6, !dbg !1345
  %tobool.not.i116 = icmp eq ptr %call.i115, null, !dbg !1355
  br i1 %tobool.not.i116, label %cond.end12.i, label %cond.true.i120, !dbg !1355

cond.true.i120:                                   ; preds = %cond.true51
  %54 = load ptr, ptr %call.i115, align 8, !dbg !1356
  %sv_flags.i117 = getelementptr inbounds %struct.sv, ptr %54, i64 0, i32 2, !dbg !1356
  %55 = load i32, ptr %sv_flags.i117, align 4, !dbg !1356
  %and7.i118 = and i32 %55, -2145386240, !dbg !1356
  %cmp.i119 = icmp eq i32 %and7.i118, -2147483392, !dbg !1356
  br i1 %cmp.i119, label %cond.true9.i122, label %cond.false.i123, !dbg !1356

cond.true9.i122:                                  ; preds = %cond.true.i120
  %56 = load ptr, ptr %54, align 8, !dbg !1356
  %xuv_u.i121 = getelementptr inbounds %struct.xpvuv, ptr %56, i64 0, i32 4, !dbg !1356
  %57 = load i64, ptr %xuv_u.i121, align 8, !dbg !1356
  br label %cond.end12.i, !dbg !1356

cond.false.i123:                                  ; preds = %cond.true.i120
  %call10.i = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %54, i32 noundef 2) #6, !dbg !1356
  br label %cond.end12.i, !dbg !1356

cond.end12.i:                                     ; preds = %cond.false.i123, %cond.true9.i122, %cond.true51
  %cond13.i = phi i64 [ %57, %cond.true9.i122 ], [ %call10.i, %cond.false.i123 ], [ 2147483647, %cond.true51 ], !dbg !1355
  call void @llvm.dbg.value(metadata i64 %cond13.i, metadata !1299, metadata !DIExpression()) #6, !dbg !1345
  %add.i124 = add i64 %cond13.i, 1, !dbg !1357
  call void @llvm.dbg.value(metadata i64 %add.i124, metadata !1300, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 0, metadata !1301, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i8 0, metadata !1302, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i109) #6, !dbg !1358
  call void @llvm.dbg.value(metadata i8 0, metadata !1306, metadata !DIExpression()) #6, !dbg !1345
  %58 = load i32, ptr %sv_flags, align 4, !dbg !1359
  %and15.i = and i32 %58, 2098176, !dbg !1359
  %cmp16.i = icmp eq i32 %and15.i, 1024, !dbg !1359
  br i1 %cmp16.i, label %cond.true18.i, label %cond.false21.i, !dbg !1359

cond.true18.i:                                    ; preds = %cond.end12.i
  %59 = load ptr, ptr %sv, align 8, !dbg !1359
  %xpv_cur.i125 = getelementptr inbounds %struct.xpv, ptr %59, i64 0, i32 2, !dbg !1359
  %60 = load i64, ptr %xpv_cur.i125, align 8, !dbg !1359
  call void @llvm.dbg.value(metadata i64 %60, metadata !1303, metadata !DIExpression()) #6, !dbg !1345
  store i64 %60, ptr %len.i109, align 8, !dbg !1359
  %sv_u20.i = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !1359
  %61 = load ptr, ptr %sv_u20.i, align 8, !dbg !1359
  br label %cond.end23.i, !dbg !1359

cond.false21.i:                                   ; preds = %cond.end12.i
  call void @llvm.dbg.value(metadata ptr %len.i109, metadata !1303, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1345
  %call22.i = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len.i109, i32 noundef 0) #6, !dbg !1359
  %.pre.i126 = load i32, ptr %sv_flags, align 4, !dbg !1360
  br label %cond.end23.i, !dbg !1359

cond.end23.i:                                     ; preds = %cond.false21.i, %cond.true18.i
  %62 = phi i32 [ %58, %cond.true18.i ], [ %.pre.i126, %cond.false21.i ], !dbg !1360
  %cond24.i = phi ptr [ %61, %cond.true18.i ], [ %call22.i, %cond.false21.i ], !dbg !1359
  call void @llvm.dbg.value(metadata ptr %cond24.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %and26.i = and i32 %62, 536870912, !dbg !1360
  %tobool27.not.i = icmp eq i32 %and26.i, 0, !dbg !1360
  br i1 %tobool27.not.i, label %if.then.i127, label %if.end37thread-pre-split.i, !dbg !1361

if.then.i127:                                     ; preds = %cond.end23.i
  call void @llvm.dbg.value(metadata ptr %cond24.i, metadata !1308, metadata !DIExpression()) #6, !dbg !1362
  %63 = load i64, ptr %len.i109, align 8, !dbg !1363
  call void @llvm.dbg.value(metadata i64 %63, metadata !1303, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr.i = getelementptr inbounds i8, ptr %cond24.i, i64 %63, !dbg !1364
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !1311, metadata !DIExpression()) #6, !dbg !1362
  call void @llvm.dbg.value(metadata i8 undef, metadata !1306, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %cond24.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %cmp28426.i = icmp sgt i64 %63, 0, !dbg !1365
  br i1 %cmp28426.i, label %while.body.i130, label %if.end37.i, !dbg !1366

while.cond.i129:                                  ; preds = %while.body.i130
  %incdec.ptr.i128 = getelementptr inbounds i8, ptr %t.0427.i, i64 1, !dbg !1367
  call void @llvm.dbg.value(metadata i8 undef, metadata !1306, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %cond24.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %t.0427.i, metadata !1308, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !1362
  %cmp28.i = icmp ult ptr %incdec.ptr.i128, %add.ptr.i, !dbg !1365
  br i1 %cmp28.i, label %while.body.i130, label %if.end37thread-pre-split.i, !dbg !1366

while.body.i130:                                  ; preds = %if.then.i127, %while.cond.i129
  %t.0427.i = phi ptr [ %incdec.ptr.i128, %while.cond.i129 ], [ %cond24.i, %if.then.i127 ]
  call void @llvm.dbg.value(metadata ptr %t.0427.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %t.0427.i, metadata !1308, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !1362
  %64 = load i8, ptr %t.0427.i, align 1, !dbg !1368
  call void @llvm.dbg.value(metadata i8 %64, metadata !1312, metadata !DIExpression()) #6, !dbg !1369
  call void @llvm.dbg.value(metadata i8 %64, metadata !1306, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value)) #6, !dbg !1345
  %tobool34.not.i = icmp sgt i8 %64, -1, !dbg !1370
  br i1 %tobool34.not.i, label %while.cond.i129, label %cleanup.thread.i131, !dbg !1372

cleanup.thread.i131:                              ; preds = %while.body.i130
  call void @llvm.dbg.value(metadata ptr %len.i109, metadata !1303, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1345
  %call36.i = call ptr @Perl_bytes_to_utf8(ptr noundef %cond24.i, ptr noundef nonnull %len.i109) #6, !dbg !1373
  call void @llvm.dbg.value(metadata ptr %cond24.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  br label %if.end37thread-pre-split.i

if.end37thread-pre-split.i:                       ; preds = %while.cond.i129, %cleanup.thread.i131, %cond.end23.i
  %s.3.ph.i133 = phi ptr [ %call36.i, %cleanup.thread.i131 ], [ %cond24.i, %cond.end23.i ], [ %cond24.i, %while.cond.i129 ]
  %hibit.2.shrunk.ph.i = phi i8 [ 1, %cleanup.thread.i131 ], [ 0, %cond.end23.i ], [ 0, %while.cond.i129 ]
  %.pr.i134 = load i64, ptr %len.i109, align 8, !dbg !1375
  br label %if.end37.i, !dbg !1375

if.end37.i:                                       ; preds = %if.end37thread-pre-split.i, %if.then.i127
  %65 = phi i64 [ %.pr.i134, %if.end37thread-pre-split.i ], [ %63, %if.then.i127 ], !dbg !1375
  %s.3.i = phi ptr [ %s.3.ph.i133, %if.end37thread-pre-split.i ], [ %cond24.i, %if.then.i127 ], !dbg !1345
  %hibit.2.shrunk.i = phi i8 [ %hibit.2.shrunk.ph.i, %if.end37thread-pre-split.i ], [ 0, %if.then.i127 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1306, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %s.3.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %65, metadata !1303, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr38.i = getelementptr inbounds i8, ptr %s.3.i, i64 %65, !dbg !1376
  call void @llvm.dbg.value(metadata ptr %add.ptr38.i, metadata !1290, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %s.3.i, metadata !1289, metadata !DIExpression()) #6, !dbg !1345
  %call39.i = call ptr @Perl_hv_common(ptr noundef %53, ptr noundef null, ptr noundef nonnull @.str.9, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6, !dbg !1377
  call void @llvm.dbg.value(metadata ptr %call39.i, metadata !1298, metadata !DIExpression()) #6, !dbg !1345
  %tobool40.not.i = icmp eq ptr %call39.i, null, !dbg !1378
  br i1 %tobool40.not.i, label %if.end53.i, label %if.then41.i, !dbg !1380

if.then41.i:                                      ; preds = %if.end37.i
  %66 = load ptr, ptr %call39.i, align 8, !dbg !1381
  %sv_flags42.i = getelementptr inbounds %struct.sv, ptr %66, i64 0, i32 2, !dbg !1381
  %67 = load i32, ptr %sv_flags42.i, align 4, !dbg !1381
  %and43.i = and i32 %67, -2145386240, !dbg !1381
  %cmp44.i = icmp eq i32 %and43.i, -2147483392, !dbg !1381
  br i1 %cmp44.i, label %cond.true46.i, label %cond.false49.i, !dbg !1381

cond.true46.i:                                    ; preds = %if.then41.i
  %68 = load ptr, ptr %66, align 8, !dbg !1381
  %xuv_u48.i = getelementptr inbounds %struct.xpvuv, ptr %68, i64 0, i32 4, !dbg !1381
  %69 = load i64, ptr %xuv_u48.i, align 8, !dbg !1381
  br label %if.end53.i, !dbg !1381

cond.false49.i:                                   ; preds = %if.then41.i
  %call50.i = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %66, i32 noundef 2) #6, !dbg !1381
  br label %if.end53.i, !dbg !1381

if.end53.i:                                       ; preds = %cond.false49.i, %cond.true46.i, %if.end37.i
  %final.0.i = phi i64 [ 0, %if.end37.i ], [ %69, %cond.true46.i ], [ %call50.i, %cond.false49.i ], !dbg !1345
  call void @llvm.dbg.value(metadata i64 %final.0.i, metadata !1301, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i8 undef, metadata !1302, metadata !DIExpression()) #6, !dbg !1345
  %tobool54.i = icmp ne i32 %and6.i, 0, !dbg !1383
  %70 = load i64, ptr %len.i109, align 8, !dbg !1385
  call void @llvm.dbg.value(metadata i64 %70, metadata !1303, metadata !DIExpression()) #6, !dbg !1345
  br i1 %tobool54.i, label %if.then55.i, label %if.else.i135, !dbg !1386

if.then55.i:                                      ; preds = %if.end53.i
  %mul.i = mul i64 %70, 3, !dbg !1387
  %add56.i = add i64 %mul.i, 13, !dbg !1387
  %call58.i = call ptr @Perl_safesysmalloc(i64 noundef %add56.i) #6, !dbg !1387
  call void @llvm.dbg.value(metadata ptr %call58.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  %71 = load i64, ptr %len.i109, align 8, !dbg !1389
  call void @llvm.dbg.value(metadata i64 %71, metadata !1303, metadata !DIExpression()) #6, !dbg !1345
  %mul59.i = mul i64 %71, 3, !dbg !1390
  %add.ptr60.i = getelementptr inbounds i8, ptr %call58.i, i64 %mul59.i, !dbg !1391
  call void @llvm.dbg.value(metadata ptr %add.ptr60.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %call58.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  br label %if.end62.i, !dbg !1392

if.else.i135:                                     ; preds = %if.end53.i
  call void @llvm.dbg.value(metadata ptr %s.3.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %s.3.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr61.i = getelementptr inbounds i8, ptr %s.3.i, i64 %70, !dbg !1393
  call void @llvm.dbg.value(metadata ptr %add.ptr61.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.else.i135, %if.then55.i
  %dend.0.i = phi ptr [ %add.ptr60.i, %if.then55.i ], [ %add.ptr61.i, %if.else.i135 ], !dbg !1385
  %d.0.i = phi ptr [ %call58.i, %if.then55.i ], [ %s.3.i, %if.else.i135 ], !dbg !1385
  call void @llvm.dbg.value(metadata ptr %d.0.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %d.0.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.0.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  %tobool63.not.i = icmp eq i32 %and.i111, 0, !dbg !1395
  call void @llvm.dbg.value(metadata i32 0, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  %cmp161438.i = icmp sgt i64 %65, 0, !dbg !1396
  br i1 %tobool63.not.i, label %while.cond160.preheader.i, label %while.cond65.preheader.i, !dbg !1397

while.cond65.preheader.i:                         ; preds = %if.end62.i
  call void @llvm.dbg.value(metadata i64 4277009102, metadata !1314, metadata !DIExpression()) #6, !dbg !1398
  call void @llvm.dbg.value(metadata ptr %s.3.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  br i1 %cmp161438.i, label %while.body68.lr.ph.i, label %if.end239.i, !dbg !1399

while.body68.lr.ph.i:                             ; preds = %while.cond65.preheader.i
  %tobool114.i = icmp ne i32 %and3.i112, 0
  %sub.ptr.lhs.cast131.i = ptrtoint ptr %add.ptr38.i to i64
  br label %while.body68.i, !dbg !1399

while.cond160.preheader.i:                        ; preds = %if.end62.i
  call void @llvm.dbg.value(metadata ptr %s.3.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  br i1 %cmp161438.i, label %while.body163.lr.ph.i, label %if.end239.i, !dbg !1400

while.body163.lr.ph.i:                            ; preds = %while.cond160.preheader.i
  %tobool217.not.i = icmp eq i32 %and3.i112, 0
  br i1 %tobool217.not.i, label %while.body163.i, label %while.body163.us.i

while.body163.us.i:                               ; preds = %while.body163.lr.ph.i, %cleanup235.us.i
  %d.7443.us.i = phi ptr [ %d.9.us.i, %cleanup235.us.i ], [ %d.0.i, %while.body163.lr.ph.i ]
  %matches.2442.us.i = phi i32 [ %matches.3.us.i, %cleanup235.us.i ], [ 0, %while.body163.lr.ph.i ]
  %dstart.3441.us.i = phi ptr [ %dstart.4.us.i, %cleanup235.us.i ], [ %d.0.i, %while.body163.lr.ph.i ]
  %dend.3440.us.i = phi ptr [ %dend.4.us.i, %cleanup235.us.i ], [ %dend.0.i, %while.body163.lr.ph.i ]
  %s.7439.us.i = phi ptr [ %s.8.us.i, %cleanup235.us.i ], [ %s.3.i, %while.body163.lr.ph.i ]
  call void @llvm.dbg.value(metadata ptr %d.7443.us.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %matches.2442.us.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.3441.us.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.3440.us.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %s.7439.us.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %call165.us.i = call i64 @Perl_swash_fetch(ptr noundef %52, ptr noundef %s.7439.us.i, i1 noundef zeroext true) #6, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %call165.us.i, metadata !1334, metadata !DIExpression()) #6, !dbg !1402
  %cmp166.us.i = icmp ugt ptr %d.7443.us.i, %dend.3440.us.i, !dbg !1403
  br i1 %cmp166.us.i, label %if.then168.us.i, label %if.end187.us.i, !dbg !1404

if.then168.us.i:                                  ; preds = %while.body163.us.i
  %sub.ptr.lhs.cast170.us.i = ptrtoint ptr %d.7443.us.i to i64, !dbg !1405
  %sub.ptr.rhs.cast171.us.i = ptrtoint ptr %dstart.3441.us.i to i64, !dbg !1405
  %sub.ptr.sub172.us.i = sub i64 %sub.ptr.lhs.cast170.us.i, %sub.ptr.rhs.cast171.us.i, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub172.us.i, metadata !1337, metadata !DIExpression()) #6, !dbg !1406
  %sub.ptr.lhs.cast174.us.i = ptrtoint ptr %dend.3440.us.i to i64, !dbg !1407
  %sub.ptr.sub176.us.i = sub i64 %sub.ptr.lhs.cast174.us.i, %sub.ptr.rhs.cast171.us.i, !dbg !1407
  %72 = load i64, ptr %len.i109, align 8, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %72, metadata !1303, metadata !DIExpression()) #6, !dbg !1345
  %add177.us.i = add i64 %72, %sub.ptr.sub176.us.i, !dbg !1409
  %add178.us.i = add i64 %add177.us.i, 13, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %add178.us.i, metadata !1340, metadata !DIExpression()) #6, !dbg !1406
  br i1 %tobool54.i, label %if.end181.us.i, label %if.then180.us.i, !dbg !1411

if.then180.us.i:                                  ; preds = %if.then168.us.i
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 574) #6, !dbg !1412
  br label %if.end181.us.i, !dbg !1412

if.end181.us.i:                                   ; preds = %if.then180.us.i, %if.then168.us.i
  %add182.us.i = add i64 %add177.us.i, 26, !dbg !1414
  %call184.us.i = call ptr @Perl_safesysrealloc(ptr noundef %dstart.3441.us.i, i64 noundef %add182.us.i) #6, !dbg !1414
  call void @llvm.dbg.value(metadata ptr %call184.us.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr185.us.i = getelementptr inbounds i8, ptr %call184.us.i, i64 %sub.ptr.sub172.us.i, !dbg !1415
  call void @llvm.dbg.value(metadata ptr %add.ptr185.us.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr186.us.i = getelementptr inbounds i8, ptr %call184.us.i, i64 %add178.us.i, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %add.ptr186.us.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  br label %if.end187.us.i, !dbg !1417

if.end187.us.i:                                   ; preds = %if.end181.us.i, %while.body163.us.i
  %dend.4.us.i = phi ptr [ %add.ptr186.us.i, %if.end181.us.i ], [ %dend.3440.us.i, %while.body163.us.i ], !dbg !1345
  %dstart.4.us.i = phi ptr [ %call184.us.i, %if.end181.us.i ], [ %dstart.3441.us.i, %while.body163.us.i ], !dbg !1345
  %d.8.us.i = phi ptr [ %add.ptr185.us.i, %if.end181.us.i ], [ %d.7443.us.i, %while.body163.us.i ], !dbg !1345
  call void @llvm.dbg.value(metadata ptr %d.8.us.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.4.us.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.4.us.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  %cmp188.us.i = icmp ult i64 %call165.us.i, %cond13.i, !dbg !1418
  br i1 %cmp188.us.i, label %if.then190.us.i, label %if.else198.us.i, !dbg !1419

if.else198.us.i:                                  ; preds = %if.end187.us.i
  %cmp199.us.i = icmp eq i64 %call165.us.i, %cond13.i, !dbg !1420
  br i1 %cmp199.us.i, label %if.then201.us.i, label %if.else213.us.i, !dbg !1421

if.else213.us.i:                                  ; preds = %if.else198.us.i
  %inc229.us.i = add nsw i32 %matches.2442.us.i, 1, !dbg !1422
  call void @llvm.dbg.value(metadata i32 %inc229.us.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  %73 = load i8, ptr %s.7439.us.i, align 1, !dbg !1423
  %idxprom230.us.i = zext i8 %73 to i64, !dbg !1423
  %arrayidx231.us.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom230.us.i, !dbg !1423
  %74 = load i8, ptr %arrayidx231.us.i, align 1, !dbg !1423
  %75 = zext i8 %74 to i64
  %add.ptr234.us.i = getelementptr inbounds i8, ptr %s.7439.us.i, i64 %75, !dbg !1424
  call void @llvm.dbg.value(metadata ptr %add.ptr234.us.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  br label %cleanup235.us.i, !dbg !1425

if.then201.us.i:                                  ; preds = %if.else198.us.i
  %76 = load i8, ptr %s.7439.us.i, align 1, !dbg !1426
  %idxprom203.us.i = zext i8 %76 to i64, !dbg !1426
  %arrayidx204.us.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom203.us.i, !dbg !1426
  %77 = load i8, ptr %arrayidx204.us.i, align 1, !dbg !1426
  %78 = zext i8 %77 to i64
  call void @llvm.dbg.value(metadata i64 %78, metadata !1341, metadata !DIExpression()) #6, !dbg !1427
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d.8.us.i, ptr nonnull align 1 %s.7439.us.i, i64 %78, i1 false) #6, !dbg !1428
  %add.ptr209.us.i = getelementptr inbounds i8, ptr %d.8.us.i, i64 %78, !dbg !1429
  call void @llvm.dbg.value(metadata ptr %add.ptr209.us.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr211.us.i = getelementptr inbounds i8, ptr %s.7439.us.i, i64 %78, !dbg !1430
  call void @llvm.dbg.value(metadata ptr %add.ptr211.us.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  br label %cleanup235.us.i

if.then190.us.i:                                  ; preds = %if.end187.us.i
  %inc191.us.i = add nsw i32 %matches.2442.us.i, 1, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %inc191.us.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  %79 = load i8, ptr %s.7439.us.i, align 1, !dbg !1433
  %idxprom192.us.i = zext i8 %79 to i64, !dbg !1433
  %arrayidx193.us.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom192.us.i, !dbg !1433
  %80 = load i8, ptr %arrayidx193.us.i, align 1, !dbg !1433
  %81 = zext i8 %80 to i64
  %add.ptr196.us.i = getelementptr inbounds i8, ptr %s.7439.us.i, i64 %81, !dbg !1434
  call void @llvm.dbg.value(metadata ptr %add.ptr196.us.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %call197.us.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d.8.us.i, i64 noundef %call165.us.i, i64 noundef 0) #6, !dbg !1435
  call void @llvm.dbg.value(metadata ptr %call197.us.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  br label %cleanup235.us.i, !dbg !1436, !llvm.loop !1437

cleanup235.us.i:                                  ; preds = %if.then190.us.i, %if.then201.us.i, %if.else213.us.i
  %s.8.us.i = phi ptr [ %add.ptr196.us.i, %if.then190.us.i ], [ %add.ptr211.us.i, %if.then201.us.i ], [ %add.ptr234.us.i, %if.else213.us.i ], !dbg !1402
  %matches.3.us.i = phi i32 [ %inc191.us.i, %if.then190.us.i ], [ %matches.2442.us.i, %if.then201.us.i ], [ %inc229.us.i, %if.else213.us.i ], !dbg !1345
  %d.9.us.i = phi ptr [ %call197.us.i, %if.then190.us.i ], [ %add.ptr209.us.i, %if.then201.us.i ], [ %d.8.us.i, %if.else213.us.i ], !dbg !1402
  call void @llvm.dbg.value(metadata ptr %d.9.us.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %matches.3.us.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.4.us.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.4.us.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %s.8.us.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %cmp161.us.i = icmp ult ptr %s.8.us.i, %add.ptr38.i, !dbg !1438
  br i1 %cmp161.us.i, label %while.body163.us.i, label %if.end239.i, !dbg !1400

while.body68.i:                                   ; preds = %cleanup155.i, %while.body68.lr.ph.i
  %d.1434.i = phi ptr [ %d.0.i, %while.body68.lr.ph.i ], [ %d.6.i, %cleanup155.i ]
  %matches.0433.i = phi i32 [ 0, %while.body68.lr.ph.i ], [ %matches.1.i, %cleanup155.i ]
  %dstart.1432.i = phi ptr [ %d.0.i, %while.body68.lr.ph.i ], [ %dstart.2.i, %cleanup155.i ]
  %dend.1431.i = phi ptr [ %dend.0.i, %while.body68.lr.ph.i ], [ %dend.2.i, %cleanup155.i ]
  %puv.0430.i = phi i64 [ 4277009102, %while.body68.lr.ph.i ], [ %puv.4.i, %cleanup155.i ]
  %s.4429.i = phi ptr [ %s.3.i, %while.body68.lr.ph.i ], [ %s.6.i, %cleanup155.i ]
  call void @llvm.dbg.value(metadata ptr %d.1434.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %matches.0433.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.1432.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.1431.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %puv.0430.i, metadata !1314, metadata !DIExpression()) #6, !dbg !1398
  call void @llvm.dbg.value(metadata ptr %s.4429.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %call69.i = call i64 @Perl_swash_fetch(ptr noundef %52, ptr noundef %s.4429.i, i1 noundef zeroext true) #6, !dbg !1439
  call void @llvm.dbg.value(metadata i64 %call69.i, metadata !1317, metadata !DIExpression()) #6, !dbg !1440
  %cmp70.i = icmp ugt ptr %d.1434.i, %dend.1431.i, !dbg !1441
  br i1 %cmp70.i, label %if.then72.i, label %if.end86.i, !dbg !1442

if.then72.i:                                      ; preds = %while.body68.i
  %sub.ptr.lhs.cast.i136 = ptrtoint ptr %d.1434.i to i64, !dbg !1443
  %sub.ptr.rhs.cast.i137 = ptrtoint ptr %dstart.1432.i to i64, !dbg !1443
  %sub.ptr.sub.i138 = sub i64 %sub.ptr.lhs.cast.i136, %sub.ptr.rhs.cast.i137, !dbg !1443
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i138, metadata !1319, metadata !DIExpression()) #6, !dbg !1444
  %sub.ptr.lhs.cast73.i = ptrtoint ptr %dend.1431.i to i64, !dbg !1445
  %sub.ptr.sub75.i = sub i64 %sub.ptr.lhs.cast73.i, %sub.ptr.rhs.cast.i137, !dbg !1445
  %82 = load i64, ptr %len.i109, align 8, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %82, metadata !1303, metadata !DIExpression()) #6, !dbg !1345
  %add76.i = add i64 %82, %sub.ptr.sub75.i, !dbg !1447
  %add77.i = add i64 %add76.i, 13, !dbg !1448
  call void @llvm.dbg.value(metadata i64 %add77.i, metadata !1323, metadata !DIExpression()) #6, !dbg !1444
  br i1 %tobool54.i, label %if.end80.i, label %if.then79.i, !dbg !1449

if.then79.i:                                      ; preds = %if.then72.i
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 520) #6, !dbg !1450
  br label %if.end80.i, !dbg !1450

if.end80.i:                                       ; preds = %if.then79.i, %if.then72.i
  %add81.i = add i64 %add76.i, 26, !dbg !1452
  %call83.i = call ptr @Perl_safesysrealloc(ptr noundef %dstart.1432.i, i64 noundef %add81.i) #6, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %call83.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr84.i = getelementptr inbounds i8, ptr %call83.i, i64 %sub.ptr.sub.i138, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %add.ptr84.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr85.i = getelementptr inbounds i8, ptr %call83.i, i64 %add77.i, !dbg !1454
  call void @llvm.dbg.value(metadata ptr %add.ptr85.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  br label %if.end86.i, !dbg !1455

if.end86.i:                                       ; preds = %if.end80.i, %while.body68.i
  %dend.2.i = phi ptr [ %add.ptr85.i, %if.end80.i ], [ %dend.1431.i, %while.body68.i ], !dbg !1345
  %dstart.2.i = phi ptr [ %call83.i, %if.end80.i ], [ %dstart.1432.i, %while.body68.i ], !dbg !1345
  %d.2.i = phi ptr [ %add.ptr84.i, %if.end80.i ], [ %d.1434.i, %while.body68.i ], !dbg !1345
  call void @llvm.dbg.value(metadata ptr %d.2.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.2.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.2.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  %cmp87.i = icmp ult i64 %call69.i, %cond13.i, !dbg !1456
  br i1 %cmp87.i, label %if.then89.i, label %if.else97.i, !dbg !1457

if.then89.i:                                      ; preds = %if.end86.i
  %inc.i139 = add nsw i32 %matches.0433.i, 1, !dbg !1458
  call void @llvm.dbg.value(metadata i32 %inc.i139, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  %83 = load i8, ptr %s.4429.i, align 1, !dbg !1460
  %idxprom.i140 = zext i8 %83 to i64, !dbg !1460
  %arrayidx.i141 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom.i140, !dbg !1460
  %84 = load i8, ptr %arrayidx.i141, align 1, !dbg !1460
  %85 = zext i8 %84 to i64
  %add.ptr91.i = getelementptr inbounds i8, ptr %s.4429.i, i64 %85, !dbg !1461
  call void @llvm.dbg.value(metadata ptr %add.ptr91.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %cmp92.not.i = icmp eq i64 %call69.i, %puv.0430.i, !dbg !1462
  br i1 %cmp92.not.i, label %cleanup155.i, label %if.then94.i, !dbg !1464, !llvm.loop !1465

if.then94.i:                                      ; preds = %if.then89.i
  %call95.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d.2.i, i64 noundef %call69.i, i64 noundef 0) #6, !dbg !1467
  call void @llvm.dbg.value(metadata ptr %call95.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %call69.i, metadata !1314, metadata !DIExpression()) #6, !dbg !1398
  br label %cleanup155.i, !dbg !1469, !llvm.loop !1470

if.else97.i:                                      ; preds = %if.end86.i
  %cmp98.i = icmp eq i64 %call69.i, %cond13.i, !dbg !1471
  br i1 %cmp98.i, label %if.then100.i, label %if.else111.i, !dbg !1472

if.then100.i:                                     ; preds = %if.else97.i
  %86 = load i8, ptr %s.4429.i, align 1, !dbg !1473
  %idxprom101.i = zext i8 %86 to i64, !dbg !1473
  %arrayidx102.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom101.i, !dbg !1473
  %87 = load i8, ptr %arrayidx102.i, align 1, !dbg !1473
  %88 = zext i8 %87 to i64
  call void @llvm.dbg.value(metadata i64 %88, metadata !1324, metadata !DIExpression()) #6, !dbg !1474
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d.2.i, ptr nonnull align 1 %s.4429.i, i64 %88, i1 false) #6, !dbg !1475
  %add.ptr107.i = getelementptr inbounds i8, ptr %d.2.i, i64 %88, !dbg !1476
  call void @llvm.dbg.value(metadata ptr %add.ptr107.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr109.i = getelementptr inbounds i8, ptr %s.4429.i, i64 %88, !dbg !1477
  call void @llvm.dbg.value(metadata ptr %add.ptr109.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 4277009102, metadata !1314, metadata !DIExpression()) #6, !dbg !1398
  br label %cleanup155.i

if.else111.i:                                     ; preds = %if.else97.i
  %cmp112.i = icmp ne i64 %call69.i, %add.i124, !dbg !1478
  %or.cond.i142 = select i1 %cmp112.i, i1 true, i1 %tobool114.i, !dbg !1479
  %inc149.i = add nsw i32 %matches.0433.i, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i32 %inc149.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  br i1 %or.cond.i142, label %if.end148.i, label %if.then115.i, !dbg !1479

if.then115.i:                                     ; preds = %if.else111.i
  br i1 %tobool40.not.i, label %if.else129.i, label %if.then118.i, !dbg !1480

if.then118.i:                                     ; preds = %if.then115.i
  %89 = load i8, ptr %s.4429.i, align 1, !dbg !1481
  %idxprom119.i = zext i8 %89 to i64, !dbg !1481
  %arrayidx120.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom119.i, !dbg !1481
  %90 = load i8, ptr %arrayidx120.i, align 1, !dbg !1481
  %91 = zext i8 %90 to i64
  call void @llvm.dbg.value(metadata !DIArgList(ptr %s.4429.i, i64 %91), metadata !1307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #6, !dbg !1345
  %cmp124.not.i = icmp eq i64 %puv.0430.i, %final.0.i, !dbg !1483
  br i1 %cmp124.not.i, label %if.end145.i, label %if.then126.i, !dbg !1485

if.then126.i:                                     ; preds = %if.then118.i
  %call127.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d.2.i, i64 noundef %final.0.i, i64 noundef 0) #6, !dbg !1486
  call void @llvm.dbg.value(metadata ptr %call127.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %final.0.i, metadata !1314, metadata !DIExpression()) #6, !dbg !1398
  br label %if.end145.i, !dbg !1488

if.else129.i:                                     ; preds = %if.then115.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len130.i) #6, !dbg !1489
  %sub.ptr.rhs.cast132.i = ptrtoint ptr %s.4429.i to i64, !dbg !1490
  %sub.ptr.sub133.i = sub i64 %sub.ptr.lhs.cast131.i, %sub.ptr.rhs.cast132.i, !dbg !1490
  %call134.i = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6, !dbg !1490
  %not.call134.i = xor i1 %call134.i, true, !dbg !1490
  %cond136.i = zext i1 %not.call134.i to i32, !dbg !1490
  call void @llvm.dbg.value(metadata ptr %len130.i, metadata !1329, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1491
  %call137.i = call i64 @Perl_utf8n_to_uvchr(ptr noundef %s.4429.i, i64 noundef %sub.ptr.sub133.i, ptr noundef nonnull %len130.i, i32 noundef %cond136.i) #6, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %call137.i, metadata !1317, metadata !DIExpression()) #6, !dbg !1440
  %cmp138.not.i = icmp eq i64 %call137.i, %puv.0430.i, !dbg !1492
  %.pre452.i = load i64, ptr %len130.i, align 8, !dbg !1491
  br i1 %cmp138.not.i, label %if.end143.i, label %if.then140.i, !dbg !1494

if.then140.i:                                     ; preds = %if.else129.i
  call void @llvm.dbg.value(metadata i64 %.pre452.i, metadata !1329, metadata !DIExpression()) #6, !dbg !1491
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d.2.i, ptr align 1 %s.4429.i, i64 %.pre452.i, i1 false) #6, !dbg !1495
  %92 = load i64, ptr %len130.i, align 8, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %92, metadata !1329, metadata !DIExpression()) #6, !dbg !1491
  %add.ptr142.i = getelementptr inbounds i8, ptr %d.2.i, i64 %92, !dbg !1498
  call void @llvm.dbg.value(metadata ptr %add.ptr142.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %call137.i, metadata !1314, metadata !DIExpression()) #6, !dbg !1398
  br label %if.end143.i, !dbg !1499

if.end143.i:                                      ; preds = %if.then140.i, %if.else129.i
  %93 = phi i64 [ %92, %if.then140.i ], [ %.pre452.i, %if.else129.i ], !dbg !1500
  %puv.2.i = phi i64 [ %call137.i, %if.then140.i ], [ %puv.0430.i, %if.else129.i ], !dbg !1398
  %d.4.i = phi ptr [ %add.ptr142.i, %if.then140.i ], [ %d.2.i, %if.else129.i ], !dbg !1440
  call void @llvm.dbg.value(metadata ptr %d.4.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %puv.2.i, metadata !1314, metadata !DIExpression()) #6, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %93, metadata !1329, metadata !DIExpression()) #6, !dbg !1491
  call void @llvm.dbg.value(metadata !DIArgList(ptr %s.4429.i, i64 %93), metadata !1307, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #6, !dbg !1345
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len130.i) #6, !dbg !1501
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.end143.i, %if.then126.i, %if.then118.i
  %.pn.i = phi i64 [ %91, %if.then126.i ], [ %91, %if.then118.i ], [ %93, %if.end143.i ]
  %puv.3.i = phi i64 [ %final.0.i, %if.then126.i ], [ %final.0.i, %if.then118.i ], [ %puv.2.i, %if.end143.i ], !dbg !1398
  %d.5.i = phi ptr [ %call127.i, %if.then126.i ], [ %d.2.i, %if.then118.i ], [ %d.4.i, %if.end143.i ], !dbg !1440
  %s.5.i = getelementptr inbounds i8, ptr %s.4429.i, i64 %.pn.i, !dbg !1502
  call void @llvm.dbg.value(metadata ptr %d.5.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %puv.3.i, metadata !1314, metadata !DIExpression()) #6, !dbg !1398
  call void @llvm.dbg.value(metadata ptr %s.5.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  br label %cleanup155.i, !dbg !1503, !llvm.loop !1504

if.end148.i:                                      ; preds = %if.else111.i
  %94 = load i8, ptr %s.4429.i, align 1, !dbg !1505
  %idxprom150.i = zext i8 %94 to i64, !dbg !1505
  %arrayidx151.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom150.i, !dbg !1505
  %95 = load i8, ptr %arrayidx151.i, align 1, !dbg !1505
  %96 = zext i8 %95 to i64
  %add.ptr154.i = getelementptr inbounds i8, ptr %s.4429.i, i64 %96, !dbg !1506
  call void @llvm.dbg.value(metadata ptr %add.ptr154.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  br label %cleanup155.i, !dbg !1466

cleanup155.i:                                     ; preds = %if.end148.i, %if.end145.i, %if.then100.i, %if.then94.i, %if.then89.i
  %s.6.i = phi ptr [ %add.ptr109.i, %if.then100.i ], [ %add.ptr154.i, %if.end148.i ], [ %s.5.i, %if.end145.i ], [ %add.ptr91.i, %if.then94.i ], [ %add.ptr91.i, %if.then89.i ], !dbg !1440
  %puv.4.i = phi i64 [ 4277009102, %if.then100.i ], [ %puv.0430.i, %if.end148.i ], [ %puv.3.i, %if.end145.i ], [ %call69.i, %if.then94.i ], [ %puv.0430.i, %if.then89.i ], !dbg !1398
  %matches.1.i = phi i32 [ %matches.0433.i, %if.then100.i ], [ %inc149.i, %if.end148.i ], [ %inc149.i, %if.end145.i ], [ %inc.i139, %if.then94.i ], [ %inc.i139, %if.then89.i ], !dbg !1345
  %d.6.i = phi ptr [ %add.ptr107.i, %if.then100.i ], [ %d.2.i, %if.end148.i ], [ %d.5.i, %if.end145.i ], [ %call95.i, %if.then94.i ], [ %d.2.i, %if.then89.i ], !dbg !1440
  call void @llvm.dbg.value(metadata ptr %d.6.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %matches.1.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.2.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.2.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i64 %puv.4.i, metadata !1314, metadata !DIExpression()) #6, !dbg !1398
  call void @llvm.dbg.value(metadata ptr %s.6.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %cmp66.i = icmp ult ptr %s.6.i, %add.ptr38.i, !dbg !1507
  br i1 %cmp66.i, label %while.body68.i, label %if.end239.i, !dbg !1399

while.body163.i:                                  ; preds = %while.body163.lr.ph.i, %cleanup235.i
  %d.7443.i = phi ptr [ %d.9.i, %cleanup235.i ], [ %d.0.i, %while.body163.lr.ph.i ]
  %matches.2442.i = phi i32 [ %matches.3.i143, %cleanup235.i ], [ 0, %while.body163.lr.ph.i ]
  %dstart.3441.i = phi ptr [ %dstart.4.i, %cleanup235.i ], [ %d.0.i, %while.body163.lr.ph.i ]
  %dend.3440.i = phi ptr [ %dend.4.i, %cleanup235.i ], [ %dend.0.i, %while.body163.lr.ph.i ]
  %s.7439.i = phi ptr [ %s.8.i, %cleanup235.i ], [ %s.3.i, %while.body163.lr.ph.i ]
  call void @llvm.dbg.value(metadata ptr %d.7443.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %matches.2442.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.3441.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.3440.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %s.7439.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %call165.i = call i64 @Perl_swash_fetch(ptr noundef %52, ptr noundef %s.7439.i, i1 noundef zeroext true) #6, !dbg !1401
  call void @llvm.dbg.value(metadata i64 %call165.i, metadata !1334, metadata !DIExpression()) #6, !dbg !1402
  %cmp166.i = icmp ugt ptr %d.7443.i, %dend.3440.i, !dbg !1403
  br i1 %cmp166.i, label %if.then168.i, label %if.end187.i, !dbg !1404

if.then168.i:                                     ; preds = %while.body163.i
  %sub.ptr.lhs.cast170.i = ptrtoint ptr %d.7443.i to i64, !dbg !1405
  %sub.ptr.rhs.cast171.i = ptrtoint ptr %dstart.3441.i to i64, !dbg !1405
  %sub.ptr.sub172.i = sub i64 %sub.ptr.lhs.cast170.i, %sub.ptr.rhs.cast171.i, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub172.i, metadata !1337, metadata !DIExpression()) #6, !dbg !1406
  %sub.ptr.lhs.cast174.i = ptrtoint ptr %dend.3440.i to i64, !dbg !1407
  %sub.ptr.sub176.i = sub i64 %sub.ptr.lhs.cast174.i, %sub.ptr.rhs.cast171.i, !dbg !1407
  %97 = load i64, ptr %len.i109, align 8, !dbg !1408
  call void @llvm.dbg.value(metadata i64 %97, metadata !1303, metadata !DIExpression()) #6, !dbg !1345
  %add177.i = add i64 %97, %sub.ptr.sub176.i, !dbg !1409
  %add178.i = add i64 %add177.i, 13, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %add178.i, metadata !1340, metadata !DIExpression()) #6, !dbg !1406
  br i1 %tobool54.i, label %if.end181.i, label %if.then180.i, !dbg !1411

if.then180.i:                                     ; preds = %if.then168.i
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.10, i32 noundef 574) #6, !dbg !1412
  br label %if.end181.i, !dbg !1412

if.end181.i:                                      ; preds = %if.then180.i, %if.then168.i
  %add182.i = add i64 %add177.i, 26, !dbg !1414
  %call184.i = call ptr @Perl_safesysrealloc(ptr noundef %dstart.3441.i, i64 noundef %add182.i) #6, !dbg !1414
  call void @llvm.dbg.value(metadata ptr %call184.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr185.i = getelementptr inbounds i8, ptr %call184.i, i64 %sub.ptr.sub172.i, !dbg !1415
  call void @llvm.dbg.value(metadata ptr %add.ptr185.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr186.i = getelementptr inbounds i8, ptr %call184.i, i64 %add178.i, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %add.ptr186.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  br label %if.end187.i, !dbg !1417

if.end187.i:                                      ; preds = %if.end181.i, %while.body163.i
  %dend.4.i = phi ptr [ %add.ptr186.i, %if.end181.i ], [ %dend.3440.i, %while.body163.i ], !dbg !1345
  %dstart.4.i = phi ptr [ %call184.i, %if.end181.i ], [ %dstart.3441.i, %while.body163.i ], !dbg !1345
  %d.8.i = phi ptr [ %add.ptr185.i, %if.end181.i ], [ %d.7443.i, %while.body163.i ], !dbg !1345
  call void @llvm.dbg.value(metadata ptr %d.8.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.4.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.4.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  %cmp188.i = icmp ult i64 %call165.i, %cond13.i, !dbg !1418
  br i1 %cmp188.i, label %if.then190.i, label %if.else198.i, !dbg !1419

if.then190.i:                                     ; preds = %if.end187.i
  %inc191.i = add nsw i32 %matches.2442.i, 1, !dbg !1431
  call void @llvm.dbg.value(metadata i32 %inc191.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  %98 = load i8, ptr %s.7439.i, align 1, !dbg !1433
  %idxprom192.i = zext i8 %98 to i64, !dbg !1433
  %arrayidx193.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom192.i, !dbg !1433
  %99 = load i8, ptr %arrayidx193.i, align 1, !dbg !1433
  %100 = zext i8 %99 to i64
  %add.ptr196.i = getelementptr inbounds i8, ptr %s.7439.i, i64 %100, !dbg !1434
  call void @llvm.dbg.value(metadata ptr %add.ptr196.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %call197.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d.8.i, i64 noundef %call165.i, i64 noundef 0) #6, !dbg !1435
  call void @llvm.dbg.value(metadata ptr %call197.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  br label %cleanup235.i, !dbg !1436, !llvm.loop !1508

if.else198.i:                                     ; preds = %if.end187.i
  %cmp199.i = icmp eq i64 %call165.i, %cond13.i, !dbg !1420
  br i1 %cmp199.i, label %if.then201.i, label %if.else213.i, !dbg !1421

if.then201.i:                                     ; preds = %if.else198.i
  %101 = load i8, ptr %s.7439.i, align 1, !dbg !1426
  %idxprom203.i = zext i8 %101 to i64, !dbg !1426
  %arrayidx204.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom203.i, !dbg !1426
  %102 = load i8, ptr %arrayidx204.i, align 1, !dbg !1426
  %103 = zext i8 %102 to i64
  call void @llvm.dbg.value(metadata i64 %103, metadata !1341, metadata !DIExpression()) #6, !dbg !1427
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d.8.i, ptr nonnull align 1 %s.7439.i, i64 %103, i1 false) #6, !dbg !1428
  %add.ptr209.i = getelementptr inbounds i8, ptr %d.8.i, i64 %103, !dbg !1429
  call void @llvm.dbg.value(metadata ptr %add.ptr209.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  %add.ptr211.i = getelementptr inbounds i8, ptr %s.7439.i, i64 %103, !dbg !1430
  call void @llvm.dbg.value(metadata ptr %add.ptr211.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  br label %cleanup235.i

if.else213.i:                                     ; preds = %if.else198.i
  %cmp214.not.i = icmp eq i64 %call165.i, %add.i124, !dbg !1509
  %inc219.i = add nsw i32 %matches.2442.i, 1, !dbg !1402
  call void @llvm.dbg.value(metadata i32 %inc219.i, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  %104 = load i8, ptr %s.7439.i, align 1, !dbg !1402
  %idxprom220.i = zext i8 %104 to i64, !dbg !1402
  %arrayidx221.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom220.i, !dbg !1402
  %105 = load i8, ptr %arrayidx221.i, align 1, !dbg !1402
  %106 = zext i8 %105 to i64
  %add.ptr224.i = getelementptr inbounds i8, ptr %s.7439.i, i64 %106, !dbg !1402
  call void @llvm.dbg.value(metadata ptr %add.ptr224.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  br i1 %cmp214.not.i, label %if.then218.i, label %cleanup235.i, !dbg !1511

if.then218.i:                                     ; preds = %if.else213.i
  %call225.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d.8.i, i64 noundef %final.0.i, i64 noundef 0) #6, !dbg !1512
  call void @llvm.dbg.value(metadata ptr %call225.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  br label %cleanup235.i, !dbg !1514, !llvm.loop !1515

cleanup235.i:                                     ; preds = %if.then218.i, %if.else213.i, %if.then201.i, %if.then190.i
  %s.8.i = phi ptr [ %add.ptr196.i, %if.then190.i ], [ %add.ptr211.i, %if.then201.i ], [ %add.ptr224.i, %if.then218.i ], [ %add.ptr224.i, %if.else213.i ], !dbg !1402
  %matches.3.i143 = phi i32 [ %inc191.i, %if.then190.i ], [ %matches.2442.i, %if.then201.i ], [ %inc219.i, %if.then218.i ], [ %inc219.i, %if.else213.i ], !dbg !1345
  %d.9.i = phi ptr [ %call197.i, %if.then190.i ], [ %add.ptr209.i, %if.then201.i ], [ %call225.i, %if.then218.i ], [ %d.8.i, %if.else213.i ], !dbg !1402
  call void @llvm.dbg.value(metadata ptr %d.9.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %matches.3.i143, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.4.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dend.4.i, metadata !1305, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %s.8.i, metadata !1307, metadata !DIExpression()) #6, !dbg !1345
  %cmp161.i = icmp ult ptr %s.8.i, %add.ptr38.i, !dbg !1438
  br i1 %cmp161.i, label %while.body163.i, label %if.end239.i, !dbg !1400

if.end239.i:                                      ; preds = %cleanup155.i, %cleanup235.us.i, %cleanup235.i, %while.cond160.preheader.i, %while.cond65.preheader.i
  %dstart.5.i = phi ptr [ %d.0.i, %while.cond160.preheader.i ], [ %d.0.i, %while.cond65.preheader.i ], [ %dstart.4.i, %cleanup235.i ], [ %dstart.4.us.i, %cleanup235.us.i ], [ %dstart.2.i, %cleanup155.i ], !dbg !1516
  %matches.4.i144 = phi i32 [ 0, %while.cond160.preheader.i ], [ 0, %while.cond65.preheader.i ], [ %matches.3.i143, %cleanup235.i ], [ %matches.3.us.i, %cleanup235.us.i ], [ %matches.1.i, %cleanup155.i ], !dbg !1517
  %d.10.i = phi ptr [ %d.0.i, %while.cond160.preheader.i ], [ %d.0.i, %while.cond65.preheader.i ], [ %d.9.i, %cleanup235.i ], [ %d.9.us.i, %cleanup235.us.i ], [ %d.6.i, %cleanup155.i ], !dbg !1387
  call void @llvm.dbg.value(metadata ptr %d.10.i, metadata !1291, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata i32 %matches.4.i144, metadata !1292, metadata !DIExpression()) #6, !dbg !1345
  call void @llvm.dbg.value(metadata ptr %dstart.5.i, metadata !1304, metadata !DIExpression()) #6, !dbg !1345
  %tobool242.i = icmp ne i8 %hibit.2.shrunk.i, 0
  %or.cond292.i = or i1 %tobool54.i, %tobool242.i, !dbg !1518
  br i1 %or.cond292.i, label %if.then243.i, label %if.else253.i, !dbg !1518

if.then243.i:                                     ; preds = %if.end239.i
  %sub.ptr.lhs.cast244.i = ptrtoint ptr %d.10.i to i64, !dbg !1520
  %sub.ptr.rhs.cast245.i = ptrtoint ptr %dstart.5.i to i64, !dbg !1520
  %sub.ptr.sub246.i = sub i64 %sub.ptr.lhs.cast244.i, %sub.ptr.rhs.cast245.i, !dbg !1520
  call void @Perl_sv_setpvn(ptr noundef %sv, ptr noundef %dstart.5.i, i64 noundef %sub.ptr.sub246.i) #6, !dbg !1520
  call void @Perl_safesysfree(ptr noundef %dstart.5.i) #6, !dbg !1522
  %or.cond293.i = and i1 %tobool54.i, %tobool242.i, !dbg !1523
  br i1 %or.cond293.i, label %if.then251.i, label %if.end259.i, !dbg !1523

if.then251.i:                                     ; preds = %if.then243.i
  call void @Perl_safesysfree(ptr noundef %s.3.i) #6, !dbg !1525
  br label %if.end259.i, !dbg !1525

if.else253.i:                                     ; preds = %if.end239.i
  store i8 0, ptr %d.10.i, align 1, !dbg !1526
  %sub.ptr.lhs.cast254.i = ptrtoint ptr %d.10.i to i64, !dbg !1528
  %sub.ptr.rhs.cast255.i = ptrtoint ptr %dstart.5.i to i64, !dbg !1528
  %sub.ptr.sub256.i = sub i64 %sub.ptr.lhs.cast254.i, %sub.ptr.rhs.cast255.i, !dbg !1528
  %107 = load ptr, ptr %sv, align 8, !dbg !1528
  %xpv_cur258.i = getelementptr inbounds %struct.xpv, ptr %107, i64 0, i32 2, !dbg !1528
  store i64 %sub.ptr.sub256.i, ptr %xpv_cur258.i, align 8, !dbg !1528
  br label %if.end259.i

if.end259.i:                                      ; preds = %if.else253.i, %if.then251.i, %if.then243.i
  %108 = load i32, ptr %sv_flags, align 4, !dbg !1530
  %or.i = or i32 %108, 536870912, !dbg !1530
  store i32 %or.i, ptr %sv_flags, align 4, !dbg !1530
  %and263.i = and i32 %108, 4194304, !dbg !1531
  %tobool264.not.i = icmp eq i32 %and263.i, 0, !dbg !1531
  br i1 %tobool264.not.i, label %S_do_trans_complex_utf8.exit, label %if.then267.i, !dbg !1534

if.then267.i:                                     ; preds = %if.end259.i
  %call268.i = call i32 @Perl_mg_set(ptr noundef nonnull %sv) #6, !dbg !1531
  br label %S_do_trans_complex_utf8.exit, !dbg !1531

S_do_trans_complex_utf8.exit:                     ; preds = %if.end259.i, %if.then267.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i109) #6, !dbg !1535
  br label %cleanup, !dbg !1284

cond.false53:                                     ; preds = %if.then49
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1536, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i145) #6, !dbg !1578
  %and.i147 = and i32 %or, 2098176, !dbg !1579
  %cmp.i148 = icmp eq i32 %and.i147, 1024, !dbg !1579
  br i1 %cmp.i148, label %cond.true.i151, label %cond.false.i154, !dbg !1579

cond.true.i151:                                   ; preds = %cond.false53
  %109 = load ptr, ptr %sv, align 8, !dbg !1579
  %xpv_cur.i149 = getelementptr inbounds %struct.xpv, ptr %109, i64 0, i32 2, !dbg !1579
  %110 = load i64, ptr %xpv_cur.i149, align 8, !dbg !1579
  call void @llvm.dbg.value(metadata i64 %110, metadata !1539, metadata !DIExpression()) #6, !dbg !1576
  store i64 %110, ptr %len.i145, align 8, !dbg !1579
  %sv_u.i150 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !1579
  %111 = load ptr, ptr %sv_u.i150, align 8, !dbg !1579
  br label %cond.end.i159, !dbg !1579

cond.false.i154:                                  ; preds = %cond.false53
  call void @llvm.dbg.value(metadata ptr %len.i145, metadata !1539, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1576
  %call.i152 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len.i145, i32 noundef 0) #6, !dbg !1579
  %.pre.i153 = load i64, ptr %len.i145, align 8, !dbg !1580
  br label %cond.end.i159, !dbg !1579

cond.end.i159:                                    ; preds = %cond.false.i154, %cond.true.i151
  %112 = phi i64 [ %110, %cond.true.i151 ], [ %.pre.i153, %cond.false.i154 ], !dbg !1580
  %cond.i155 = phi ptr [ %111, %cond.true.i151 ], [ %call.i152, %cond.false.i154 ], !dbg !1579
  call void @llvm.dbg.value(metadata ptr %cond.i155, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %112, metadata !1539, metadata !DIExpression()) #6, !dbg !1576
  %add.ptr.i156 = getelementptr inbounds i8, ptr %cond.i155, i64 %112, !dbg !1581
  call void @llvm.dbg.value(metadata ptr %add.ptr.i156, metadata !1541, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i32 0, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  %113 = load ptr, ptr @PL_op, align 8, !dbg !1582
  %op_pv.i157 = getelementptr inbounds %struct.pvop, ptr %113, i64 0, i32 7, !dbg !1583
  %114 = load ptr, ptr %op_pv.i157, align 8, !dbg !1583
  call void @llvm.dbg.value(metadata ptr %114, metadata !1544, metadata !DIExpression()) #6, !dbg !1576
  %tobool.not.i158 = icmp eq ptr %114, null, !dbg !1584
  br i1 %tobool.not.i158, label %if.then.i160, label %if.end.i162, !dbg !1586

if.then.i160:                                     ; preds = %cond.end.i159
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.11, i32 noundef 147) #6, !dbg !1587
  %.pre297 = load ptr, ptr @PL_op, align 8, !dbg !1588
  br label %if.end.i162, !dbg !1587

if.end.i162:                                      ; preds = %if.then.i160, %cond.end.i159
  %115 = phi ptr [ %.pre297, %if.then.i160 ], [ %113, %cond.end.i159 ], !dbg !1588
  %116 = load i32, ptr %sv_flags, align 4, !dbg !1589
  %and2.i = and i32 %116, 536870912, !dbg !1589
  %tobool3.not.i = icmp eq i32 %and2.i, 0, !dbg !1589
  %op_private.i161 = getelementptr inbounds %struct.op, ptr %115, i64 0, i32 6, !dbg !1588
  %117 = load i8, ptr %op_private.i161, align 1, !dbg !1588
  br i1 %tobool3.not.i, label %if.then4.i, label %if.else70.i, !dbg !1590

if.then4.i:                                       ; preds = %if.end.i162
  call void @llvm.dbg.value(metadata ptr %cond.i155, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %cond.i155, metadata !1548, metadata !DIExpression()) #6, !dbg !1591
  %118 = and i8 %117, 8, !dbg !1592
  %tobool6.not.i = icmp eq i8 %118, 0, !dbg !1592
  call void @llvm.dbg.value(metadata ptr %cond.i155, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i32 0, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  %cmp39436.i = icmp sgt i64 %112, 0, !dbg !1593
  br i1 %tobool6.not.i, label %while.cond38.preheader.i, label %while.cond.preheader.i163, !dbg !1594

while.cond.preheader.i163:                        ; preds = %if.then4.i
  call void @llvm.dbg.value(metadata ptr %add.ptr.i156, metadata !1549, metadata !DIExpression()) #6, !dbg !1595
  br i1 %cmp39436.i, label %while.body.i166, label %if.end67.i, !dbg !1596

while.cond38.preheader.i:                         ; preds = %if.then4.i
  br i1 %cmp39436.i, label %while.body41.i, label %if.end67.i, !dbg !1597

while.body.i166:                                  ; preds = %while.cond.preheader.i163, %if.end35.i
  %s.0433.i = phi ptr [ %incdec.ptr36.i, %if.end35.i ], [ %cond.i155, %while.cond.preheader.i163 ]
  %matches.0432.i = phi i32 [ %matches.1.i170, %if.end35.i ], [ 0, %while.cond.preheader.i163 ]
  %d.0430.i = phi ptr [ %d.1.i, %if.end35.i ], [ %cond.i155, %while.cond.preheader.i163 ]
  %p.0429.i = phi ptr [ %p.1.i, %if.end35.i ], [ %add.ptr.i156, %while.cond.preheader.i163 ]
  call void @llvm.dbg.value(metadata ptr %s.0433.i, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %matches.0432.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %d.0430.i, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %p.0429.i, metadata !1549, metadata !DIExpression()) #6, !dbg !1595
  %119 = load i8, ptr %s.0433.i, align 1, !dbg !1598
  %idxprom.i164 = zext i8 %119 to i64, !dbg !1599
  %arrayidx.i165 = getelementptr inbounds i16, ptr %114, i64 %idxprom.i164, !dbg !1599
  %120 = load i16, ptr %arrayidx.i165, align 2, !dbg !1599
  call void @llvm.dbg.value(metadata i16 %120, metadata !1552, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !1600
  %cmp11.i = icmp sgt i16 %120, -1, !dbg !1601
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i169, !dbg !1603

if.then13.i:                                      ; preds = %while.body.i166
  %conv14.i = trunc i16 %120 to i8, !dbg !1604
  call void @llvm.dbg.value(metadata i16 %120, metadata !1552, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !1600
  store i8 %conv14.i, ptr %d.0430.i, align 1, !dbg !1606
  %inc.i167 = add nsw i32 %matches.0432.i, 1, !dbg !1607
  call void @llvm.dbg.value(metadata i32 %inc.i167, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  %add.ptr15.i = getelementptr inbounds i8, ptr %d.0430.i, i64 -1, !dbg !1608
  %cmp16.not.i = icmp eq ptr %p.0429.i, %add.ptr15.i, !dbg !1610
  br i1 %cmp16.not.i, label %lor.lhs.false.i, label %if.then22.i, !dbg !1611

lor.lhs.false.i:                                  ; preds = %if.then13.i
  %121 = load i8, ptr %p.0429.i, align 1, !dbg !1612
  %cmp20.not.i = icmp eq i8 %121, %conv14.i, !dbg !1613
  br i1 %cmp20.not.i, label %if.end35.i, label %if.then22.i, !dbg !1614

if.then22.i:                                      ; preds = %lor.lhs.false.i, %if.then13.i
  %incdec.ptr.i168 = getelementptr inbounds i8, ptr %d.0430.i, i64 1, !dbg !1615
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i168, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %d.0430.i, metadata !1549, metadata !DIExpression()) #6, !dbg !1595
  br label %if.end35.i, !dbg !1616

if.else.i169:                                     ; preds = %while.body.i166
  switch i16 %120, label %if.end35.i [
    i16 -1, label %if.then26.i
    i16 -2, label %if.then31.i
  ], !dbg !1617

if.then26.i:                                      ; preds = %if.else.i169
  %incdec.ptr27.i = getelementptr inbounds i8, ptr %d.0430.i, i64 1, !dbg !1618
  call void @llvm.dbg.value(metadata ptr %incdec.ptr27.i, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  store i8 %119, ptr %d.0430.i, align 1, !dbg !1620
  br label %if.end35.i, !dbg !1621

if.then31.i:                                      ; preds = %if.else.i169
  %inc32.i = add nsw i32 %matches.0432.i, 1, !dbg !1622
  call void @llvm.dbg.value(metadata i32 %inc32.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  br label %if.end35.i, !dbg !1624

if.end35.i:                                       ; preds = %if.then31.i, %if.then26.i, %if.else.i169, %if.then22.i, %lor.lhs.false.i
  %p.1.i = phi ptr [ %d.0430.i, %if.then22.i ], [ %p.0429.i, %lor.lhs.false.i ], [ %p.0429.i, %if.then26.i ], [ %p.0429.i, %if.then31.i ], [ %p.0429.i, %if.else.i169 ], !dbg !1595
  %d.1.i = phi ptr [ %incdec.ptr.i168, %if.then22.i ], [ %d.0430.i, %lor.lhs.false.i ], [ %incdec.ptr27.i, %if.then26.i ], [ %d.0430.i, %if.then31.i ], [ %d.0430.i, %if.else.i169 ], !dbg !1591
  %matches.1.i170 = phi i32 [ %inc.i167, %if.then22.i ], [ %inc.i167, %lor.lhs.false.i ], [ %matches.0432.i, %if.then26.i ], [ %inc32.i, %if.then31.i ], [ %matches.0432.i, %if.else.i169 ], !dbg !1576
  call void @llvm.dbg.value(metadata i32 %matches.1.i170, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %d.1.i, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  call void @llvm.dbg.value(metadata ptr %p.1.i, metadata !1549, metadata !DIExpression()) #6, !dbg !1595
  %incdec.ptr36.i = getelementptr inbounds i8, ptr %s.0433.i, i64 1, !dbg !1625
  call void @llvm.dbg.value(metadata ptr %incdec.ptr36.i, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  %cmp8.i171 = icmp ult ptr %incdec.ptr36.i, %add.ptr.i156, !dbg !1626
  br i1 %cmp8.i171, label %while.body.i166, label %if.end67.i, !dbg !1596, !llvm.loop !1627

while.body41.i:                                   ; preds = %while.cond38.preheader.i, %if.end64.i
  %s.1439.i = phi ptr [ %incdec.ptr65.i, %if.end64.i ], [ %cond.i155, %while.cond38.preheader.i ]
  %matches.2438.i = phi i32 [ %matches.3.i173, %if.end64.i ], [ 0, %while.cond38.preheader.i ]
  %d.2437.i = phi ptr [ %d.3.i, %if.end64.i ], [ %cond.i155, %while.cond38.preheader.i ]
  call void @llvm.dbg.value(metadata ptr %s.1439.i, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %matches.2438.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %d.2437.i, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  %122 = load i8, ptr %s.1439.i, align 1, !dbg !1629
  %idxprom43.i = zext i8 %122 to i64, !dbg !1630
  %arrayidx44.i = getelementptr inbounds i16, ptr %114, i64 %idxprom43.i, !dbg !1630
  %123 = load i16, ptr %arrayidx44.i, align 2, !dbg !1630
  call void @llvm.dbg.value(metadata i16 %123, metadata !1554, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !1631
  %cmp46.i = icmp sgt i16 %123, -1, !dbg !1632
  br i1 %cmp46.i, label %if.then48.i, label %if.else52.i, !dbg !1634

if.then48.i:                                      ; preds = %while.body41.i
  call void @llvm.dbg.value(metadata i16 %123, metadata !1554, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !1631
  %inc49.i = add nsw i32 %matches.2438.i, 1, !dbg !1635
  call void @llvm.dbg.value(metadata i32 %inc49.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  %conv50.i = trunc i16 %123 to i8, !dbg !1637
  %incdec.ptr51.i = getelementptr inbounds i8, ptr %d.2437.i, i64 1, !dbg !1638
  call void @llvm.dbg.value(metadata ptr %incdec.ptr51.i, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  store i8 %conv50.i, ptr %d.2437.i, align 1, !dbg !1639
  br label %if.end64.i, !dbg !1640

if.else52.i:                                      ; preds = %while.body41.i
  switch i16 %123, label %if.end64.i [
    i16 -1, label %if.then55.i172
    i16 -2, label %if.then60.i
  ], !dbg !1641

if.then55.i172:                                   ; preds = %if.else52.i
  %incdec.ptr56.i = getelementptr inbounds i8, ptr %d.2437.i, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata ptr %incdec.ptr56.i, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  store i8 %122, ptr %d.2437.i, align 1, !dbg !1644
  br label %if.end64.i, !dbg !1645

if.then60.i:                                      ; preds = %if.else52.i
  %inc61.i = add nsw i32 %matches.2438.i, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i32 %inc61.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  br label %if.end64.i, !dbg !1648

if.end64.i:                                       ; preds = %if.then60.i, %if.then55.i172, %if.else52.i, %if.then48.i
  %d.3.i = phi ptr [ %incdec.ptr51.i, %if.then48.i ], [ %incdec.ptr56.i, %if.then55.i172 ], [ %d.2437.i, %if.then60.i ], [ %d.2437.i, %if.else52.i ], !dbg !1591
  %matches.3.i173 = phi i32 [ %inc49.i, %if.then48.i ], [ %matches.2438.i, %if.then55.i172 ], [ %inc61.i, %if.then60.i ], [ %matches.2438.i, %if.else52.i ], !dbg !1576
  call void @llvm.dbg.value(metadata i32 %matches.3.i173, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %d.3.i, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  %incdec.ptr65.i = getelementptr inbounds i8, ptr %s.1439.i, i64 1, !dbg !1649
  call void @llvm.dbg.value(metadata ptr %incdec.ptr65.i, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  %cmp39.i = icmp ult ptr %incdec.ptr65.i, %add.ptr.i156, !dbg !1650
  br i1 %cmp39.i, label %while.body41.i, label %if.end67.i, !dbg !1597, !llvm.loop !1651

if.end67.i:                                       ; preds = %if.end35.i, %if.end64.i, %while.cond38.preheader.i, %while.cond.preheader.i163
  %d.4.i174 = phi ptr [ %cond.i155, %while.cond38.preheader.i ], [ %cond.i155, %while.cond.preheader.i163 ], [ %d.3.i, %if.end64.i ], [ %d.1.i, %if.end35.i ], !dbg !1653
  %matches.4.i175 = phi i32 [ 0, %while.cond38.preheader.i ], [ 0, %while.cond.preheader.i163 ], [ %matches.3.i173, %if.end64.i ], [ %matches.1.i170, %if.end35.i ], !dbg !1654
  call void @llvm.dbg.value(metadata i32 %matches.4.i175, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %d.4.i174, metadata !1545, metadata !DIExpression()) #6, !dbg !1591
  store i8 0, ptr %d.4.i174, align 1, !dbg !1655
  %sub.ptr.lhs.cast.i176 = ptrtoint ptr %d.4.i174 to i64, !dbg !1656
  %sub.ptr.rhs.cast.i177 = ptrtoint ptr %cond.i155 to i64, !dbg !1656
  %sub.ptr.sub.i178 = sub i64 %sub.ptr.lhs.cast.i176, %sub.ptr.rhs.cast.i177, !dbg !1656
  %124 = load ptr, ptr %sv, align 8, !dbg !1656
  %xpv_cur69.i = getelementptr inbounds %struct.xpv, ptr %124, i64 0, i32 2, !dbg !1656
  store i64 %sub.ptr.sub.i178, ptr %xpv_cur69.i, align 8, !dbg !1656
  %.pre444.i = load i32, ptr %sv_flags, align 4, !dbg !1658
  br label %do.body274.i, !dbg !1661

if.else70.i:                                      ; preds = %if.end.i162
  %conv72.i = zext i8 %117 to i32, !dbg !1662
  %and73.i = and i32 %conv72.i, 32, !dbg !1663
  call void @llvm.dbg.value(metadata i32 %and73.i, metadata !1557, metadata !DIExpression()) #6, !dbg !1664
  %and76.i = and i32 %conv72.i, 64, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %and76.i, metadata !1559, metadata !DIExpression()) #6, !dbg !1664
  %and79.i = and i32 %conv72.i, 128, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %and79.i, metadata !1560, metadata !DIExpression()) #6, !dbg !1664
  call void @llvm.dbg.value(metadata i64 0, metadata !1563, metadata !DIExpression()) #6, !dbg !1664
  %tobool82.not.i = icmp eq i32 %and76.i, 0, !dbg !1667
  br i1 %tobool82.not.i, label %if.end87.i, label %if.then83.i, !dbg !1669

if.then83.i:                                      ; preds = %if.else70.i
  %125 = load i64, ptr %len.i145, align 8, !dbg !1670
  call void @llvm.dbg.value(metadata i64 %125, metadata !1539, metadata !DIExpression()) #6, !dbg !1576
  %mul.i179 = shl i64 %125, 1, !dbg !1670
  %add.i180 = or i64 %mul.i179, 1, !dbg !1670
  %call85.i = call ptr @Perl_safesysmalloc(i64 noundef %add.i180) #6, !dbg !1670
  call void @llvm.dbg.value(metadata ptr %call85.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br label %if.end87.i, !dbg !1670

if.end87.i:                                       ; preds = %if.then83.i, %if.else70.i
  %d80.0.i = phi ptr [ %call85.i, %if.then83.i ], [ %cond.i155, %if.else70.i ], !dbg !1671
  call void @llvm.dbg.value(metadata ptr %d80.0.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  call void @llvm.dbg.value(metadata ptr %d80.0.i, metadata !1562, metadata !DIExpression()) #6, !dbg !1664
  %tobool89.not.i = icmp eq i32 %and79.i, 0
  %126 = and i32 %conv72.i, 160, !dbg !1672
  %.not.i181 = icmp eq i32 %126, 32, !dbg !1672
  br i1 %.not.i181, label %if.then90.i, label %if.end93.i, !dbg !1672

if.then90.i:                                      ; preds = %if.end87.i
  %arrayidx91.i = getelementptr inbounds i16, ptr %114, i64 256, !dbg !1674
  %127 = load i16, ptr %arrayidx91.i, align 2, !dbg !1674
  %conv92.i = sext i16 %127 to i64, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %conv92.i, metadata !1563, metadata !DIExpression()) #6, !dbg !1664
  br label %if.end93.i, !dbg !1675

if.end93.i:                                       ; preds = %if.then90.i, %if.end87.i
  %rlen.0.i = phi i64 [ 0, %if.end87.i ], [ %conv92.i, %if.then90.i ], !dbg !1664
  call void @llvm.dbg.value(metadata i64 %rlen.0.i, metadata !1563, metadata !DIExpression()) #6, !dbg !1664
  %128 = load ptr, ptr @PL_op, align 8, !dbg !1676
  %op_private94.i = getelementptr inbounds %struct.op, ptr %128, i64 0, i32 6, !dbg !1677
  %129 = load i8, ptr %op_private94.i, align 1, !dbg !1677
  %130 = and i8 %129, 8, !dbg !1678
  %tobool97.not.i = icmp eq i8 %130, 0, !dbg !1678
  call void @llvm.dbg.value(metadata ptr %cond.i155, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i32 0, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  %cmp190421.i = icmp sgt i64 %112, 0, !dbg !1679
  br i1 %tobool97.not.i, label %while.cond189.preheader.i, label %while.cond99.preheader.i, !dbg !1680

while.cond99.preheader.i:                         ; preds = %if.end93.i
  call void @llvm.dbg.value(metadata i64 4277009102, metadata !1564, metadata !DIExpression()) #6, !dbg !1681
  call void @llvm.dbg.value(metadata ptr %d80.0.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br i1 %cmp190421.i, label %while.body102.lr.ph.i, label %if.end256.i, !dbg !1682

while.body102.lr.ph.i:                            ; preds = %while.cond99.preheader.i
  %sub.ptr.lhs.cast104.i = ptrtoint ptr %add.ptr.i156 to i64
  %tobool115.not.i = icmp eq i32 %and73.i, 0
  %cmp123.i = icmp eq i64 %rlen.0.i, 0
  %add135.i = add nsw i64 %rlen.0.i, 256
  br label %while.body102.i, !dbg !1682

while.cond189.preheader.i:                        ; preds = %if.end93.i
  call void @llvm.dbg.value(metadata ptr %d80.0.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br i1 %cmp190421.i, label %while.body192.lr.ph.i, label %if.end256.i, !dbg !1683

while.body192.lr.ph.i:                            ; preds = %while.cond189.preheader.i
  %sub.ptr.lhs.cast195.i = ptrtoint ptr %add.ptr.i156 to i64
  %tobool206.not.i = icmp eq i32 %and73.i, 0
  %add223.i = add nsw i64 %rlen.0.i, 256
  %arrayidx224.i = getelementptr inbounds i16, ptr %114, i64 %add223.i
  br label %while.body192.i, !dbg !1683

while.body102.i:                                  ; preds = %cleanup.i, %while.body102.lr.ph.i
  %s.2418.i = phi ptr [ %cond.i155, %while.body102.lr.ph.i ], [ %add.ptr184.i, %cleanup.i ]
  %matches.5417.i = phi i32 [ 0, %while.body102.lr.ph.i ], [ %matches.7.i, %cleanup.i ]
  %pch.0416.i = phi i64 [ 4277009102, %while.body102.lr.ph.i ], [ %pch.3.i, %cleanup.i ]
  %d80.1415.i = phi ptr [ %d80.0.i, %while.body102.lr.ph.i ], [ %d80.5.i, %cleanup.i ]
  call void @llvm.dbg.value(metadata ptr %s.2418.i, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %matches.5417.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %pch.0416.i, metadata !1564, metadata !DIExpression()) #6, !dbg !1681
  call void @llvm.dbg.value(metadata ptr %d80.1415.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len103.i) #6, !dbg !1684
  %sub.ptr.rhs.cast105.i = ptrtoint ptr %s.2418.i to i64, !dbg !1685
  %sub.ptr.sub106.i = sub i64 %sub.ptr.lhs.cast104.i, %sub.ptr.rhs.cast105.i, !dbg !1685
  %call107.i = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6, !dbg !1685
  %not.call107.i = xor i1 %call107.i, true, !dbg !1685
  %cond109.i = zext i1 %not.call107.i to i32, !dbg !1685
  call void @llvm.dbg.value(metadata ptr %len103.i, metadata !1567, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1686
  %call110.i = call i64 @Perl_utf8n_to_uvchr(ptr noundef %s.2418.i, i64 noundef %sub.ptr.sub106.i, ptr noundef nonnull %len103.i, i32 noundef %cond109.i) #6, !dbg !1685
  call void @llvm.dbg.value(metadata i64 %call110.i, metadata !1569, metadata !DIExpression()) #6, !dbg !1686
  %cmp112.i182 = icmp ugt i64 %call110.i, 255, !dbg !1687
  br i1 %cmp112.i182, label %if.then114.i, label %if.else153.i, !dbg !1689

if.then114.i:                                     ; preds = %while.body102.i
  br i1 %tobool115.not.i, label %if.then116.i, label %if.else119.i, !dbg !1690

if.then116.i:                                     ; preds = %if.then114.i
  %131 = load i64, ptr %len103.i, align 8, !dbg !1692
  call void @llvm.dbg.value(metadata i64 %131, metadata !1567, metadata !DIExpression()) #6, !dbg !1686
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d80.1415.i, ptr align 1 %s.2418.i, i64 %131, i1 false) #6, !dbg !1692
  %132 = load i64, ptr %len103.i, align 8, !dbg !1695
  call void @llvm.dbg.value(metadata i64 %132, metadata !1567, metadata !DIExpression()) #6, !dbg !1686
  %add.ptr118.i = getelementptr inbounds i8, ptr %d80.1415.i, i64 %132, !dbg !1696
  call void @llvm.dbg.value(metadata ptr %add.ptr118.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br label %cleanup.i, !dbg !1697

if.else119.i:                                     ; preds = %if.then114.i
  %inc120.i = add nsw i32 %matches.5417.i, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %inc120.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  br i1 %tobool89.not.i, label %if.then122.i, label %cleanup.i, !dbg !1700

if.then122.i:                                     ; preds = %if.else119.i
  br i1 %cmp123.i, label %cond.end140.i, label %cond.false127.i, !dbg !1701

cond.false127.i:                                  ; preds = %if.then122.i
  %sub.i = add i64 %call110.i, -256, !dbg !1704
  %cmp128.i = icmp ult i64 %sub.i, %rlen.0.i, !dbg !1705
  %add131.i = add i64 %call110.i, 1
  %spec.select = select i1 %cmp128.i, i64 %add131.i, i64 %add135.i, !dbg !1706
  %arrayidx132.sink.i = getelementptr inbounds i16, ptr %114, i64 %spec.select
  %133 = load i16, ptr %arrayidx132.sink.i, align 2, !dbg !1707
  %conv133.i = sext i16 %133 to i64, !dbg !1707
  br label %cond.end140.i, !dbg !1708

cond.end140.i:                                    ; preds = %cond.false127.i, %if.then122.i
  %cond141.i = phi i64 [ %call110.i, %if.then122.i ], [ %conv133.i, %cond.false127.i ], !dbg !1701
  call void @llvm.dbg.value(metadata i32 undef, metadata !1570, metadata !DIExpression()) #6, !dbg !1686
  %sext.i = shl i64 %cond141.i, 32, !dbg !1708
  %conv142.i = ashr exact i64 %sext.i, 32, !dbg !1708
  %cmp143.not.i = icmp eq i64 %conv142.i, %pch.0416.i, !dbg !1710
  br i1 %cmp143.not.i, label %cleanup.i, label %if.then145.i, !dbg !1711, !llvm.loop !1712

if.then145.i:                                     ; preds = %cond.end140.i
  %call147.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d80.1415.i, i64 noundef %conv142.i, i64 noundef 0) #6, !dbg !1714
  call void @llvm.dbg.value(metadata ptr %call147.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %conv142.i, metadata !1564, metadata !DIExpression()) #6, !dbg !1681
  br label %cleanup.i, !dbg !1716, !llvm.loop !1712

if.else153.i:                                     ; preds = %while.body102.i
  %arrayidx154.i = getelementptr inbounds i16, ptr %114, i64 %call110.i, !dbg !1717
  %134 = load i16, ptr %arrayidx154.i, align 2, !dbg !1717
  call void @llvm.dbg.value(metadata i16 %134, metadata !1570, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !1686
  %cmp156.i = icmp sgt i16 %134, -1, !dbg !1719
  br i1 %cmp156.i, label %if.then158.i, label %if.else169.i, !dbg !1720

if.then158.i:                                     ; preds = %if.else153.i
  call void @llvm.dbg.value(metadata i16 %134, metadata !1570, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !1686
  %inc159.i = add nsw i32 %matches.5417.i, 1, !dbg !1721
  call void @llvm.dbg.value(metadata i32 %inc159.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  %conv160411.i = zext i16 %134 to i64, !dbg !1723
  %cmp161.not.i = icmp eq i64 %pch.0416.i, %conv160411.i, !dbg !1725
  br i1 %cmp161.not.i, label %cleanup.i, label %if.then163.i, !dbg !1726, !llvm.loop !1727

if.then163.i:                                     ; preds = %if.then158.i
  %call165.i183 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d80.1415.i, i64 noundef %conv160411.i, i64 noundef 0) #6, !dbg !1728
  call void @llvm.dbg.value(metadata ptr %call165.i183, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %conv160411.i, metadata !1564, metadata !DIExpression()) #6, !dbg !1681
  br label %cleanup.i, !dbg !1730, !llvm.loop !1727

if.else169.i:                                     ; preds = %if.else153.i
  switch i16 %134, label %cleanup.i [
    i16 -1, label %if.then172.i
    i16 -2, label %if.then178.i
  ], !dbg !1731

if.then172.i:                                     ; preds = %if.else169.i
  %135 = load i64, ptr %len103.i, align 8, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %135, metadata !1567, metadata !DIExpression()) #6, !dbg !1686
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d80.1415.i, ptr align 1 %s.2418.i, i64 %135, i1 false) #6, !dbg !1732
  %136 = load i64, ptr %len103.i, align 8, !dbg !1735
  call void @llvm.dbg.value(metadata i64 %136, metadata !1567, metadata !DIExpression()) #6, !dbg !1686
  %add.ptr174.i = getelementptr inbounds i8, ptr %d80.1415.i, i64 %136, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %add.ptr174.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br label %cleanup.i, !dbg !1737

if.then178.i:                                     ; preds = %if.else169.i
  %inc179.i = add nsw i32 %matches.5417.i, 1, !dbg !1738
  call void @llvm.dbg.value(metadata i32 %inc179.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  br label %cleanup.i, !dbg !1740

cleanup.i:                                        ; preds = %if.then116.i, %if.else119.i, %if.else169.i, %if.then172.i, %if.then178.i, %if.then158.i, %if.then163.i, %cond.end140.i, %if.then145.i
  %d80.5.i = phi ptr [ %call147.i, %if.then145.i ], [ %d80.1415.i, %cond.end140.i ], [ %call165.i183, %if.then163.i ], [ %d80.1415.i, %if.then158.i ], [ %d80.1415.i, %if.else119.i ], [ %add.ptr118.i, %if.then116.i ], [ %add.ptr174.i, %if.then172.i ], [ %d80.1415.i, %if.then178.i ], [ %d80.1415.i, %if.else169.i ], !dbg !1664
  %pch.3.i = phi i64 [ %conv142.i, %if.then145.i ], [ %pch.0416.i, %cond.end140.i ], [ %conv160411.i, %if.then163.i ], [ %pch.0416.i, %if.then158.i ], [ 4277009102, %if.else119.i ], [ 4277009102, %if.then116.i ], [ 4277009102, %if.then172.i ], [ 4277009102, %if.then178.i ], [ 4277009102, %if.else169.i ], !dbg !1686
  %matches.7.i = phi i32 [ %inc120.i, %if.then145.i ], [ %inc120.i, %cond.end140.i ], [ %inc159.i, %if.then163.i ], [ %inc159.i, %if.then158.i ], [ %inc120.i, %if.else119.i ], [ %matches.5417.i, %if.then116.i ], [ %matches.5417.i, %if.then172.i ], [ %inc179.i, %if.then178.i ], [ %matches.5417.i, %if.else169.i ], !dbg !1741
  %.sink.i = load i64, ptr %len103.i, align 8, !dbg !1686
  %add.ptr184.i = getelementptr inbounds i8, ptr %s.2418.i, i64 %.sink.i, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %add.ptr184.i, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %matches.7.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %pch.3.i, metadata !1564, metadata !DIExpression()) #6, !dbg !1681
  call void @llvm.dbg.value(metadata ptr %d80.5.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len103.i) #6, !dbg !1713
  %cmp100.i = icmp ult ptr %add.ptr184.i, %add.ptr.i156, !dbg !1742
  br i1 %cmp100.i, label %while.body102.i, label %if.end256.i, !dbg !1682

while.body192.i:                                  ; preds = %if.end253.i, %while.body192.lr.ph.i
  %s.4424.i = phi ptr [ %cond.i155, %while.body192.lr.ph.i ], [ %add.ptr254.i, %if.end253.i ]
  %matches.8423.i = phi i32 [ 0, %while.body192.lr.ph.i ], [ %matches.9.i, %if.end253.i ]
  %d80.6422.i = phi ptr [ %d80.0.i, %while.body192.lr.ph.i ], [ %d80.7.i, %if.end253.i ]
  call void @llvm.dbg.value(metadata ptr %s.4424.i, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata i32 %matches.8423.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %d80.6422.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len193.i) #6, !dbg !1743
  %sub.ptr.rhs.cast196.i = ptrtoint ptr %s.4424.i to i64, !dbg !1744
  %sub.ptr.sub197.i = sub i64 %sub.ptr.lhs.cast195.i, %sub.ptr.rhs.cast196.i, !dbg !1744
  %call198.i = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6, !dbg !1744
  %not.call198.i = xor i1 %call198.i, true, !dbg !1744
  %cond200.i = zext i1 %not.call198.i to i32, !dbg !1744
  call void @llvm.dbg.value(metadata ptr %len193.i, metadata !1571, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1745
  %call201.i = call i64 @Perl_utf8n_to_uvchr(ptr noundef %s.4424.i, i64 noundef %sub.ptr.sub197.i, ptr noundef nonnull %len193.i, i32 noundef %cond200.i) #6, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %call201.i, metadata !1574, metadata !DIExpression()) #6, !dbg !1745
  %cmp203.i = icmp ugt i64 %call201.i, 255, !dbg !1746
  br i1 %cmp203.i, label %if.then205.i, label %if.else230.i, !dbg !1748

if.then205.i:                                     ; preds = %while.body192.i
  br i1 %tobool206.not.i, label %if.then207.i, label %if.else210.i, !dbg !1749

if.then207.i:                                     ; preds = %if.then205.i
  %137 = load i64, ptr %len193.i, align 8, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %137, metadata !1571, metadata !DIExpression()) #6, !dbg !1745
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d80.6422.i, ptr align 1 %s.4424.i, i64 %137, i1 false) #6, !dbg !1751
  %138 = load i64, ptr %len193.i, align 8, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %138, metadata !1571, metadata !DIExpression()) #6, !dbg !1745
  %add.ptr209.i184 = getelementptr inbounds i8, ptr %d80.6422.i, i64 %138, !dbg !1755
  call void @llvm.dbg.value(metadata ptr %add.ptr209.i184, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br label %if.end253.i, !dbg !1756

if.else210.i:                                     ; preds = %if.then205.i
  %inc211.i = add nsw i32 %matches.8423.i, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i32 %inc211.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  br i1 %tobool89.not.i, label %if.then213.i, label %if.end253.i, !dbg !1759

if.then213.i:                                     ; preds = %if.else210.i
  %sub214.i = add i64 %call201.i, -256, !dbg !1760
  %cmp215.i = icmp ult i64 %sub214.i, %rlen.0.i, !dbg !1764
  br i1 %cmp215.i, label %if.then217.i, label %if.else222.i, !dbg !1765

if.then217.i:                                     ; preds = %if.then213.i
  %add218.i = add i64 %call201.i, 1, !dbg !1766
  %arrayidx219.i = getelementptr inbounds i16, ptr %114, i64 %add218.i, !dbg !1766
  %139 = load i16, ptr %arrayidx219.i, align 2, !dbg !1766
  %conv220.i = sext i16 %139 to i64, !dbg !1766
  %call221.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d80.6422.i, i64 noundef %conv220.i, i64 noundef 0) #6, !dbg !1766
  call void @llvm.dbg.value(metadata ptr %call221.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br label %if.end253.i, !dbg !1767

if.else222.i:                                     ; preds = %if.then213.i
  %140 = load i16, ptr %arrayidx224.i, align 2, !dbg !1768
  %conv225.i = sext i16 %140 to i64, !dbg !1768
  %call226.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d80.6422.i, i64 noundef %conv225.i, i64 noundef 0) #6, !dbg !1768
  call void @llvm.dbg.value(metadata ptr %call226.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br label %if.end253.i

if.else230.i:                                     ; preds = %while.body192.i
  %arrayidx231.i = getelementptr inbounds i16, ptr %114, i64 %call201.i, !dbg !1769
  %141 = load i16, ptr %arrayidx231.i, align 2, !dbg !1769
  call void @llvm.dbg.value(metadata i16 %141, metadata !1575, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !1745
  %cmp233.i = icmp sgt i16 %141, -1, !dbg !1771
  br i1 %cmp233.i, label %if.then235.i, label %if.else239.i, !dbg !1772

if.then235.i:                                     ; preds = %if.else230.i
  %conv236410.i = zext i16 %141 to i64, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %conv236410.i, metadata !1575, metadata !DIExpression()) #6, !dbg !1745
  %call237.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d80.6422.i, i64 noundef %conv236410.i, i64 noundef 0) #6, !dbg !1773
  call void @llvm.dbg.value(metadata ptr %call237.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  %inc238.i = add nsw i32 %matches.8423.i, 1, !dbg !1775
  call void @llvm.dbg.value(metadata i32 %inc238.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  br label %if.end253.i, !dbg !1776

if.else239.i:                                     ; preds = %if.else230.i
  switch i16 %141, label %if.end253.i [
    i16 -1, label %if.then242.i
    i16 -2, label %if.then248.i
  ], !dbg !1777

if.then242.i:                                     ; preds = %if.else239.i
  %142 = load i64, ptr %len193.i, align 8, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %142, metadata !1571, metadata !DIExpression()) #6, !dbg !1745
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d80.6422.i, ptr align 1 %s.4424.i, i64 %142, i1 false) #6, !dbg !1778
  %143 = load i64, ptr %len193.i, align 8, !dbg !1781
  call void @llvm.dbg.value(metadata i64 %143, metadata !1571, metadata !DIExpression()) #6, !dbg !1745
  %add.ptr244.i = getelementptr inbounds i8, ptr %d80.6422.i, i64 %143, !dbg !1782
  call void @llvm.dbg.value(metadata ptr %add.ptr244.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br label %if.end253.i, !dbg !1783

if.then248.i:                                     ; preds = %if.else239.i
  %inc249.i = add nsw i32 %matches.8423.i, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i32 %inc249.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  br label %if.end253.i, !dbg !1786

if.end253.i:                                      ; preds = %if.then248.i, %if.then242.i, %if.else239.i, %if.then235.i, %if.else222.i, %if.then217.i, %if.else210.i, %if.then207.i
  %d80.7.i = phi ptr [ %d80.6422.i, %if.else210.i ], [ %call221.i, %if.then217.i ], [ %call226.i, %if.else222.i ], [ %add.ptr209.i184, %if.then207.i ], [ %call237.i, %if.then235.i ], [ %add.ptr244.i, %if.then242.i ], [ %d80.6422.i, %if.then248.i ], [ %d80.6422.i, %if.else239.i ], !dbg !1664
  %matches.9.i = phi i32 [ %inc211.i, %if.else210.i ], [ %inc211.i, %if.then217.i ], [ %inc211.i, %if.else222.i ], [ %matches.8423.i, %if.then207.i ], [ %inc238.i, %if.then235.i ], [ %matches.8423.i, %if.then242.i ], [ %inc249.i, %if.then248.i ], [ %matches.8423.i, %if.else239.i ], !dbg !1576
  call void @llvm.dbg.value(metadata i32 %matches.9.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %d80.7.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  %144 = load i64, ptr %len193.i, align 8, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %144, metadata !1571, metadata !DIExpression()) #6, !dbg !1745
  %add.ptr254.i = getelementptr inbounds i8, ptr %s.4424.i, i64 %144, !dbg !1788
  call void @llvm.dbg.value(metadata ptr %add.ptr254.i, metadata !1540, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len193.i) #6, !dbg !1789
  %cmp190.i = icmp ult ptr %add.ptr254.i, %add.ptr.i156, !dbg !1790
  br i1 %cmp190.i, label %while.body192.i, label %if.end256.i, !dbg !1683, !llvm.loop !1791

if.end256.i:                                      ; preds = %cleanup.i, %if.end253.i, %while.cond189.preheader.i, %while.cond99.preheader.i
  %d80.8.i = phi ptr [ %d80.0.i, %while.cond189.preheader.i ], [ %d80.0.i, %while.cond99.preheader.i ], [ %d80.7.i, %if.end253.i ], [ %d80.5.i, %cleanup.i ], !dbg !1670
  %matches.10.i = phi i32 [ 0, %while.cond189.preheader.i ], [ 0, %while.cond99.preheader.i ], [ %matches.9.i, %if.end253.i ], [ %matches.7.i, %cleanup.i ], !dbg !1654
  call void @llvm.dbg.value(metadata i32 %matches.10.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %d80.8.i, metadata !1561, metadata !DIExpression()) #6, !dbg !1664
  br i1 %tobool82.not.i, label %if.else262.i, label %if.then258.i, !dbg !1792

if.then258.i:                                     ; preds = %if.end256.i
  %sub.ptr.lhs.cast259.i = ptrtoint ptr %d80.8.i to i64, !dbg !1793
  %sub.ptr.rhs.cast260.i = ptrtoint ptr %d80.0.i to i64, !dbg !1793
  %sub.ptr.sub261.i = sub i64 %sub.ptr.lhs.cast259.i, %sub.ptr.rhs.cast260.i, !dbg !1793
  call void @Perl_sv_setpvn(ptr noundef %sv, ptr noundef %d80.0.i, i64 noundef %sub.ptr.sub261.i) #6, !dbg !1793
  call void @Perl_safesysfree(ptr noundef %d80.0.i) #6, !dbg !1796
  br label %if.end271.i, !dbg !1797

if.else262.i:                                     ; preds = %if.end256.i
  store i8 0, ptr %d80.8.i, align 1, !dbg !1798
  %sub.ptr.lhs.cast264.i = ptrtoint ptr %d80.8.i to i64, !dbg !1800
  %sub.ptr.rhs.cast265.i = ptrtoint ptr %d80.0.i to i64, !dbg !1800
  %sub.ptr.sub266.i = sub i64 %sub.ptr.lhs.cast264.i, %sub.ptr.rhs.cast265.i, !dbg !1800
  %145 = load ptr, ptr %sv, align 8, !dbg !1800
  %xpv_cur268.i = getelementptr inbounds %struct.xpv, ptr %145, i64 0, i32 2, !dbg !1800
  store i64 %sub.ptr.sub266.i, ptr %xpv_cur268.i, align 8, !dbg !1800
  br label %if.end271.i

if.end271.i:                                      ; preds = %if.else262.i, %if.then258.i
  %146 = load i32, ptr %sv_flags, align 4, !dbg !1802
  %or.i185 = or i32 %146, 536870912, !dbg !1802
  store i32 %or.i185, ptr %sv_flags, align 4, !dbg !1802
  br label %do.body274.i

do.body274.i:                                     ; preds = %if.end271.i, %if.end67.i
  %147 = phi i32 [ %or.i185, %if.end271.i ], [ %.pre444.i, %if.end67.i ], !dbg !1658
  %matches.11.i = phi i32 [ %matches.10.i, %if.end271.i ], [ %matches.4.i175, %if.end67.i ], !dbg !1654
  call void @llvm.dbg.value(metadata i32 %matches.11.i, metadata !1543, metadata !DIExpression()) #6, !dbg !1576
  %and276.i = and i32 %147, 4194304, !dbg !1658
  %tobool277.not.i = icmp eq i32 %and276.i, 0, !dbg !1658
  br i1 %tobool277.not.i, label %S_do_trans_complex.exit, label %if.then280.i, !dbg !1803

if.then280.i:                                     ; preds = %do.body274.i
  %call281.i = call i32 @Perl_mg_set(ptr noundef nonnull %sv) #6, !dbg !1658
  br label %S_do_trans_complex.exit, !dbg !1658

S_do_trans_complex.exit:                          ; preds = %do.body274.i, %if.then280.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i145) #6, !dbg !1804
  br label %cleanup, !dbg !1284

if.else57:                                        ; preds = %if.else
  br i1 %tobool58.not, label %cond.false61, label %cond.true59, !dbg !1805

cond.true59:                                      ; preds = %if.else57
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1807, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()) #6, !dbg !1842
  %148 = load ptr, ptr @PL_op, align 8, !dbg !1844
  %op_private.i187 = getelementptr inbounds %struct.op, ptr %148, i64 0, i32 6, !dbg !1845
  %149 = load i8, ptr %op_private.i187, align 1, !dbg !1845
  %150 = and i8 %149, 64, !dbg !1846
  call void @llvm.dbg.value(metadata i8 %150, metadata !1817, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !1842
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i186) #6, !dbg !1847
  %op_sv.i188 = getelementptr inbounds %struct.svop, ptr %148, i64 0, i32 7, !dbg !1848
  %151 = load ptr, ptr %op_sv.i188, align 8, !dbg !1848
  call void @llvm.dbg.value(metadata ptr %151, metadata !1819, metadata !DIExpression()) #6, !dbg !1842
  %sv_u.i189 = getelementptr inbounds %struct.sv, ptr %151, i64 0, i32 3, !dbg !1849
  %152 = load ptr, ptr %sv_u.i189, align 8, !dbg !1849
  call void @llvm.dbg.value(metadata ptr %152, metadata !1820, metadata !DIExpression()) #6, !dbg !1842
  %call.i190 = call ptr @Perl_hv_common(ptr noundef %152, ptr noundef null, ptr noundef nonnull @.str.7, i64 noundef 4, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6, !dbg !1850
  call void @llvm.dbg.value(metadata ptr %call.i190, metadata !1821, metadata !DIExpression()) #6, !dbg !1842
  %tobool.not.i191 = icmp eq ptr %call.i190, null, !dbg !1851
  br i1 %tobool.not.i191, label %cond.end6.i, label %cond.true.i194, !dbg !1851

cond.true.i194:                                   ; preds = %cond.true59
  %153 = load ptr, ptr %call.i190, align 8, !dbg !1852
  %sv_flags.i192 = getelementptr inbounds %struct.sv, ptr %153, i64 0, i32 2, !dbg !1852
  %154 = load i32, ptr %sv_flags.i192, align 4, !dbg !1852
  %and1.i = and i32 %154, -2145386240, !dbg !1852
  %cmp.i193 = icmp eq i32 %and1.i, -2147483392, !dbg !1852
  br i1 %cmp.i193, label %cond.true3.i, label %cond.false.i196, !dbg !1852

cond.true3.i:                                     ; preds = %cond.true.i194
  %155 = load ptr, ptr %153, align 8, !dbg !1852
  %xuv_u.i195 = getelementptr inbounds %struct.xpvuv, ptr %155, i64 0, i32 4, !dbg !1852
  %156 = load i64, ptr %xuv_u.i195, align 8, !dbg !1852
  br label %cond.end6.i, !dbg !1852

cond.false.i196:                                  ; preds = %cond.true.i194
  %call4.i = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %153, i32 noundef 2) #6, !dbg !1852
  br label %cond.end6.i, !dbg !1852

cond.end6.i:                                      ; preds = %cond.false.i196, %cond.true3.i, %cond.true59
  %cond7.i = phi i64 [ %156, %cond.true3.i ], [ %call4.i, %cond.false.i196 ], [ 2147483647, %cond.true59 ], !dbg !1851
  call void @llvm.dbg.value(metadata i64 %cond7.i, metadata !1822, metadata !DIExpression()) #6, !dbg !1842
  %add.i197 = add i64 %cond7.i, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %add.i197, metadata !1823, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i64 0, metadata !1824, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()) #6, !dbg !1842
  %157 = load i32, ptr %sv_flags, align 4, !dbg !1854
  %and9.i = and i32 %157, 2098176, !dbg !1854
  %cmp10.i = icmp eq i32 %and9.i, 1024, !dbg !1854
  br i1 %cmp10.i, label %cond.true12.i, label %cond.false15.i, !dbg !1854

cond.true12.i:                                    ; preds = %cond.end6.i
  %158 = load ptr, ptr %sv, align 8, !dbg !1854
  %xpv_cur.i198 = getelementptr inbounds %struct.xpv, ptr %158, i64 0, i32 2, !dbg !1854
  %159 = load i64, ptr %xpv_cur.i198, align 8, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %159, metadata !1818, metadata !DIExpression()) #6, !dbg !1842
  store i64 %159, ptr %len.i186, align 8, !dbg !1854
  %sv_u14.i = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !1854
  %160 = load ptr, ptr %sv_u14.i, align 8, !dbg !1854
  br label %cond.end17.i, !dbg !1854

cond.false15.i:                                   ; preds = %cond.end6.i
  call void @llvm.dbg.value(metadata ptr %len.i186, metadata !1818, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1842
  %call16.i = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len.i186, i32 noundef 0) #6, !dbg !1854
  %.pre.i199 = load i32, ptr %sv_flags, align 4, !dbg !1855
  br label %cond.end17.i, !dbg !1854

cond.end17.i:                                     ; preds = %cond.false15.i, %cond.true12.i
  %161 = phi i32 [ %157, %cond.true12.i ], [ %.pre.i199, %cond.false15.i ], !dbg !1855
  %cond18.i = phi ptr [ %160, %cond.true12.i ], [ %call16.i, %cond.false15.i ], !dbg !1854
  call void @llvm.dbg.value(metadata ptr %cond18.i, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  %and20.i = and i32 %161, 536870912, !dbg !1855
  %tobool21.not.i = icmp eq i32 %and20.i, 0, !dbg !1855
  br i1 %tobool21.not.i, label %if.then.i201, label %if.end31thread-pre-split.i, !dbg !1856

if.then.i201:                                     ; preds = %cond.end17.i
  call void @llvm.dbg.value(metadata ptr %cond18.i, metadata !1826, metadata !DIExpression()) #6, !dbg !1857
  %162 = load i64, ptr %len.i186, align 8, !dbg !1858
  call void @llvm.dbg.value(metadata i64 %162, metadata !1818, metadata !DIExpression()) #6, !dbg !1842
  %add.ptr.i200 = getelementptr inbounds i8, ptr %cond18.i, i64 %162, !dbg !1859
  call void @llvm.dbg.value(metadata ptr %add.ptr.i200, metadata !1829, metadata !DIExpression()) #6, !dbg !1857
  call void @llvm.dbg.value(metadata ptr %cond18.i, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i8 undef, metadata !1825, metadata !DIExpression()) #6, !dbg !1842
  %cmp22241.i = icmp sgt i64 %162, 0, !dbg !1860
  br i1 %cmp22241.i, label %while.body.i204, label %if.end31.i, !dbg !1861

while.cond.i203:                                  ; preds = %while.body.i204
  %incdec.ptr.i202 = getelementptr inbounds i8, ptr %t.0242.i, i64 1, !dbg !1862
  call void @llvm.dbg.value(metadata ptr %cond18.i, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %t.0242.i, metadata !1826, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !1857
  call void @llvm.dbg.value(metadata i8 undef, metadata !1825, metadata !DIExpression()) #6, !dbg !1842
  %cmp22.i = icmp ult ptr %incdec.ptr.i202, %add.ptr.i200, !dbg !1860
  br i1 %cmp22.i, label %while.body.i204, label %if.end31thread-pre-split.i, !dbg !1861

while.body.i204:                                  ; preds = %if.then.i201, %while.cond.i203
  %t.0242.i = phi ptr [ %incdec.ptr.i202, %while.cond.i203 ], [ %cond18.i, %if.then.i201 ]
  call void @llvm.dbg.value(metadata ptr %t.0242.i, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %t.0242.i, metadata !1826, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #6, !dbg !1857
  %163 = load i8, ptr %t.0242.i, align 1, !dbg !1863
  call void @llvm.dbg.value(metadata i8 %163, metadata !1830, metadata !DIExpression()) #6, !dbg !1864
  call void @llvm.dbg.value(metadata i8 %163, metadata !1825, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value)) #6, !dbg !1842
  %tobool28.not.i = icmp sgt i8 %163, -1, !dbg !1865
  br i1 %tobool28.not.i, label %while.cond.i203, label %cleanup.thread.i205, !dbg !1867

cleanup.thread.i205:                              ; preds = %while.body.i204
  call void @llvm.dbg.value(metadata ptr %len.i186, metadata !1818, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1842
  %call30.i = call ptr @Perl_bytes_to_utf8(ptr noundef %cond18.i, ptr noundef nonnull %len.i186) #6, !dbg !1868
  call void @llvm.dbg.value(metadata ptr %cond18.i, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  br label %if.end31thread-pre-split.i

if.end31thread-pre-split.i:                       ; preds = %while.cond.i203, %cleanup.thread.i205, %cond.end17.i
  %hibit.2.shrunk.ph.i207 = phi i8 [ 1, %cleanup.thread.i205 ], [ 0, %cond.end17.i ], [ 0, %while.cond.i203 ]
  %s.3.ph.i208 = phi ptr [ %call30.i, %cleanup.thread.i205 ], [ %cond18.i, %cond.end17.i ], [ %cond18.i, %while.cond.i203 ]
  %.pr.i209 = load i64, ptr %len.i186, align 8, !dbg !1870
  br label %if.end31.i, !dbg !1870

if.end31.i:                                       ; preds = %if.end31thread-pre-split.i, %if.then.i201
  %164 = phi i64 [ %.pr.i209, %if.end31thread-pre-split.i ], [ %162, %if.then.i201 ], !dbg !1870
  %hibit.2.shrunk.i210 = phi i8 [ %hibit.2.shrunk.ph.i207, %if.end31thread-pre-split.i ], [ 0, %if.then.i201 ]
  %s.3.i211 = phi ptr [ %s.3.ph.i208, %if.end31thread-pre-split.i ], [ %cond18.i, %if.then.i201 ], !dbg !1842
  call void @llvm.dbg.value(metadata ptr %s.3.i211, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i8 undef, metadata !1825, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %164, metadata !1818, metadata !DIExpression()) #6, !dbg !1842
  %add.ptr32.i = getelementptr inbounds i8, ptr %s.3.i211, i64 %164, !dbg !1871
  call void @llvm.dbg.value(metadata ptr %add.ptr32.i, metadata !1811, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %s.3.i211, metadata !1813, metadata !DIExpression()) #6, !dbg !1842
  %call33.i212 = call ptr @Perl_hv_common(ptr noundef %152, ptr noundef null, ptr noundef nonnull @.str.9, i64 noundef 5, i32 noundef 0, i32 noundef 32, ptr noundef null, i32 noundef 0) #6, !dbg !1872
  call void @llvm.dbg.value(metadata ptr %call33.i212, metadata !1821, metadata !DIExpression()) #6, !dbg !1842
  %tobool34.not.i213 = icmp eq ptr %call33.i212, null, !dbg !1873
  br i1 %tobool34.not.i213, label %if.end47.i, label %if.then35.i, !dbg !1875

if.then35.i:                                      ; preds = %if.end31.i
  %165 = load ptr, ptr %call33.i212, align 8, !dbg !1876
  %sv_flags36.i = getelementptr inbounds %struct.sv, ptr %165, i64 0, i32 2, !dbg !1876
  %166 = load i32, ptr %sv_flags36.i, align 4, !dbg !1876
  %and37.i = and i32 %166, -2145386240, !dbg !1876
  %cmp38.i = icmp eq i32 %and37.i, -2147483392, !dbg !1876
  br i1 %cmp38.i, label %cond.true40.i, label %cond.false43.i, !dbg !1876

cond.true40.i:                                    ; preds = %if.then35.i
  %167 = load ptr, ptr %165, align 8, !dbg !1876
  %xuv_u42.i = getelementptr inbounds %struct.xpvuv, ptr %167, i64 0, i32 4, !dbg !1876
  %168 = load i64, ptr %xuv_u42.i, align 8, !dbg !1876
  br label %if.end47.i, !dbg !1876

cond.false43.i:                                   ; preds = %if.then35.i
  %call44.i = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %165, i32 noundef 2) #6, !dbg !1876
  br label %if.end47.i, !dbg !1876

if.end47.i:                                       ; preds = %cond.false43.i, %cond.true40.i, %if.end31.i
  %final.0.i214 = phi i64 [ 0, %if.end31.i ], [ %168, %cond.true40.i ], [ %call44.i, %cond.false43.i ], !dbg !1842
  call void @llvm.dbg.value(metadata i64 %final.0.i214, metadata !1824, metadata !DIExpression()) #6, !dbg !1842
  %tobool48.i = icmp ne i8 %150, 0, !dbg !1877
  %169 = load i64, ptr %len.i186, align 8, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %169, metadata !1818, metadata !DIExpression()) #6, !dbg !1842
  br i1 %tobool48.i, label %if.then49.i, label %if.else.i216, !dbg !1880

if.then49.i:                                      ; preds = %if.end47.i
  %mul.i215 = mul i64 %169, 3, !dbg !1881
  %add50.i = add i64 %mul.i215, 13, !dbg !1881
  %call52.i = call ptr @Perl_safesysmalloc(i64 noundef %add50.i) #6, !dbg !1881
  call void @llvm.dbg.value(metadata ptr %call52.i, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  %170 = load i64, ptr %len.i186, align 8, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %170, metadata !1818, metadata !DIExpression()) #6, !dbg !1842
  %mul53.i = mul i64 %170, 3, !dbg !1884
  %add.ptr54.i = getelementptr inbounds i8, ptr %call52.i, i64 %mul53.i, !dbg !1885
  call void @llvm.dbg.value(metadata ptr %add.ptr54.i, metadata !1815, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %call52.i, metadata !1814, metadata !DIExpression()) #6, !dbg !1842
  br label %if.end56.i, !dbg !1886

if.else.i216:                                     ; preds = %if.end47.i
  call void @llvm.dbg.value(metadata ptr %s.3.i211, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %s.3.i211, metadata !1814, metadata !DIExpression()) #6, !dbg !1842
  %add.ptr55.i = getelementptr inbounds i8, ptr %s.3.i211, i64 %169, !dbg !1887
  call void @llvm.dbg.value(metadata ptr %add.ptr55.i, metadata !1815, metadata !DIExpression()) #6, !dbg !1842
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i216, %if.then49.i
  %dend.0.i217 = phi ptr [ %add.ptr54.i, %if.then49.i ], [ %add.ptr55.i, %if.else.i216 ], !dbg !1879
  %d.0.i218 = phi ptr [ %call52.i, %if.then49.i ], [ %s.3.i211, %if.else.i216 ], !dbg !1879
  call void @llvm.dbg.value(metadata ptr %d.0.i218, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %d.0.i218, metadata !1814, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %dend.0.i217, metadata !1815, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %s.3.i211, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i32 0, metadata !1816, metadata !DIExpression()) #6, !dbg !1842
  %cmp58243.i = icmp sgt i64 %164, 0, !dbg !1889
  br i1 %cmp58243.i, label %while.body60.i, label %while.end118.i, !dbg !1890

while.body60.i:                                   ; preds = %if.end56.i, %if.end117.i
  %s.4248.i = phi ptr [ %s.5.i224, %if.end117.i ], [ %s.3.i211, %if.end56.i ]
  %d.1247.i = phi ptr [ %d.3.i232, %if.end117.i ], [ %d.0.i218, %if.end56.i ]
  %dstart.1246.i = phi ptr [ %dstart.2.i231, %if.end117.i ], [ %d.0.i218, %if.end56.i ]
  %dend.1245.i = phi ptr [ %dend.2.i230, %if.end117.i ], [ %dend.0.i217, %if.end56.i ]
  %matches.0244.i = phi i32 [ %matches.1.i222, %if.end117.i ], [ 0, %if.end56.i ]
  call void @llvm.dbg.value(metadata ptr %s.4248.i, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %d.1247.i, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %dstart.1246.i, metadata !1814, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %dend.1245.i, metadata !1815, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i32 %matches.0244.i, metadata !1816, metadata !DIExpression()) #6, !dbg !1842
  %call61.i = call i64 @Perl_swash_fetch(ptr noundef %151, ptr noundef %s.4248.i, i1 noundef zeroext true) #6, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %call61.i, metadata !1832, metadata !DIExpression()) #6, !dbg !1892
  %cmp62.i = icmp ult i64 %call61.i, %cond7.i, !dbg !1893
  br i1 %cmp62.i, label %if.then64.i, label %if.else68.i, !dbg !1894

if.then64.i:                                      ; preds = %while.body60.i
  %171 = load i8, ptr %s.4248.i, align 1, !dbg !1895
  %idxprom.i219 = zext i8 %171 to i64, !dbg !1895
  %arrayidx.i220 = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom.i219, !dbg !1895
  %172 = load i8, ptr %arrayidx.i220, align 1, !dbg !1895
  %173 = zext i8 %172 to i64
  %add.ptr66.i = getelementptr inbounds i8, ptr %s.4248.i, i64 %173, !dbg !1897
  call void @llvm.dbg.value(metadata ptr %add.ptr66.i, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  %inc.i221 = add nsw i32 %matches.0244.i, 1, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %inc.i221, metadata !1816, metadata !DIExpression()) #6, !dbg !1842
  %call67.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d.1247.i, i64 noundef %call61.i, i64 noundef 0) #6, !dbg !1899
  call void @llvm.dbg.value(metadata ptr %call67.i, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  br label %if.end100.i, !dbg !1900

if.else68.i:                                      ; preds = %while.body60.i
  %cmp69.i = icmp eq i64 %call61.i, %cond7.i, !dbg !1901
  br i1 %cmp69.i, label %if.then71.i, label %if.else81.i, !dbg !1902

if.then71.i:                                      ; preds = %if.else68.i
  %174 = load i8, ptr %s.4248.i, align 1, !dbg !1903
  %idxprom72.i = zext i8 %174 to i64, !dbg !1903
  %arrayidx73.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom72.i, !dbg !1903
  %175 = load i8, ptr %arrayidx73.i, align 1, !dbg !1903
  %176 = zext i8 %175 to i64
  call void @llvm.dbg.value(metadata i64 %176, metadata !1834, metadata !DIExpression()) #6, !dbg !1904
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d.1247.i, ptr nonnull align 1 %s.4248.i, i64 %176, i1 false) #6, !dbg !1905
  %add.ptr78.i = getelementptr inbounds i8, ptr %d.1247.i, i64 %176, !dbg !1906
  call void @llvm.dbg.value(metadata ptr %add.ptr78.i, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  %add.ptr80.i = getelementptr inbounds i8, ptr %s.4248.i, i64 %176, !dbg !1907
  call void @llvm.dbg.value(metadata ptr %add.ptr80.i, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  br label %if.end100.i, !dbg !1908

if.else81.i:                                      ; preds = %if.else68.i
  %cmp82.i = icmp eq i64 %call61.i, %add.i197, !dbg !1909
  %177 = load i8, ptr %s.4248.i, align 1, !dbg !1911
  %idxprom85.i = zext i8 %177 to i64, !dbg !1911
  %arrayidx86.i = getelementptr inbounds [0 x i8], ptr @PL_utf8skip, i64 0, i64 %idxprom85.i, !dbg !1911
  %178 = load i8, ptr %arrayidx86.i, align 1, !dbg !1911
  %179 = zext i8 %178 to i64
  %add.ptr89.i = getelementptr inbounds i8, ptr %s.4248.i, i64 %179, !dbg !1911
  call void @llvm.dbg.value(metadata ptr %add.ptr89.i, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  br i1 %cmp82.i, label %if.then84.i, label %if.end100.i, !dbg !1912

if.then84.i:                                      ; preds = %if.else81.i
  %inc90.i = add nsw i32 %matches.0244.i, 1, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %inc90.i, metadata !1816, metadata !DIExpression()) #6, !dbg !1842
  %call91.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d.1247.i, i64 noundef %final.0.i214, i64 noundef 0) #6, !dbg !1915
  call void @llvm.dbg.value(metadata ptr %call91.i, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  br label %if.end100.i, !dbg !1916

if.end100.i:                                      ; preds = %if.then84.i, %if.else81.i, %if.then71.i, %if.then64.i
  %matches.1.i222 = phi i32 [ %inc.i221, %if.then64.i ], [ %matches.0244.i, %if.then71.i ], [ %inc90.i, %if.then84.i ], [ %matches.0244.i, %if.else81.i ], !dbg !1842
  %d.2.i223 = phi ptr [ %call67.i, %if.then64.i ], [ %add.ptr78.i, %if.then71.i ], [ %call91.i, %if.then84.i ], [ %d.1247.i, %if.else81.i ], !dbg !1842
  %s.5.i224 = phi ptr [ %add.ptr66.i, %if.then64.i ], [ %add.ptr80.i, %if.then71.i ], [ %add.ptr89.i, %if.then84.i ], [ %add.ptr89.i, %if.else81.i ], !dbg !1917
  call void @llvm.dbg.value(metadata ptr %s.5.i224, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %d.2.i223, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i32 %matches.1.i222, metadata !1816, metadata !DIExpression()) #6, !dbg !1842
  %cmp101.i = icmp ugt ptr %d.2.i223, %dend.1245.i, !dbg !1918
  br i1 %cmp101.i, label %if.then103.i, label %if.end117.i, !dbg !1919

if.then103.i:                                     ; preds = %if.end100.i
  %sub.ptr.lhs.cast.i225 = ptrtoint ptr %d.2.i223 to i64, !dbg !1920
  %sub.ptr.rhs.cast.i226 = ptrtoint ptr %dstart.1246.i to i64, !dbg !1920
  %sub.ptr.sub.i227 = sub i64 %sub.ptr.lhs.cast.i225, %sub.ptr.rhs.cast.i226, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %sub.ptr.sub.i227, metadata !1838, metadata !DIExpression()) #6, !dbg !1921
  %sub.ptr.lhs.cast104.i228 = ptrtoint ptr %dend.1245.i to i64, !dbg !1922
  %sub.ptr.sub106.i229 = sub i64 %sub.ptr.lhs.cast104.i228, %sub.ptr.rhs.cast.i226, !dbg !1922
  %180 = load i64, ptr %len.i186, align 8, !dbg !1923
  call void @llvm.dbg.value(metadata i64 %180, metadata !1818, metadata !DIExpression()) #6, !dbg !1842
  %add107.i = add i64 %180, %sub.ptr.sub106.i229, !dbg !1924
  %add108.i = add i64 %add107.i, 13, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %add108.i, metadata !1841, metadata !DIExpression()) #6, !dbg !1921
  br i1 %tobool48.i, label %if.end111.i, label %if.then110.i, !dbg !1926

if.then110.i:                                     ; preds = %if.then103.i
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.12, i32 noundef 380) #6, !dbg !1927
  br label %if.end111.i, !dbg !1927

if.end111.i:                                      ; preds = %if.then110.i, %if.then103.i
  %add112.i = add i64 %add107.i, 26, !dbg !1929
  %call114.i = call ptr @Perl_safesysrealloc(ptr noundef %dstart.1246.i, i64 noundef %add112.i) #6, !dbg !1929
  call void @llvm.dbg.value(metadata ptr %call114.i, metadata !1814, metadata !DIExpression()) #6, !dbg !1842
  %add.ptr115.i = getelementptr inbounds i8, ptr %call114.i, i64 %sub.ptr.sub.i227, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %add.ptr115.i, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  %add.ptr116.i = getelementptr inbounds i8, ptr %call114.i, i64 %add108.i, !dbg !1931
  call void @llvm.dbg.value(metadata ptr %add.ptr116.i, metadata !1815, metadata !DIExpression()) #6, !dbg !1842
  br label %if.end117.i, !dbg !1932

if.end117.i:                                      ; preds = %if.end111.i, %if.end100.i
  %dend.2.i230 = phi ptr [ %add.ptr116.i, %if.end111.i ], [ %dend.1245.i, %if.end100.i ], !dbg !1842
  %dstart.2.i231 = phi ptr [ %call114.i, %if.end111.i ], [ %dstart.1246.i, %if.end100.i ], !dbg !1842
  %d.3.i232 = phi ptr [ %add.ptr115.i, %if.end111.i ], [ %d.2.i223, %if.end100.i ], !dbg !1892
  call void @llvm.dbg.value(metadata ptr %s.5.i224, metadata !1810, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %d.3.i232, metadata !1812, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %dstart.2.i231, metadata !1814, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata ptr %dend.2.i230, metadata !1815, metadata !DIExpression()) #6, !dbg !1842
  call void @llvm.dbg.value(metadata i32 %matches.1.i222, metadata !1816, metadata !DIExpression()) #6, !dbg !1842
  %cmp58.i = icmp ult ptr %s.5.i224, %add.ptr32.i, !dbg !1889
  br i1 %cmp58.i, label %while.body60.i, label %while.end118.i, !dbg !1890, !llvm.loop !1933

while.end118.i:                                   ; preds = %if.end117.i, %if.end56.i
  %matches.0.lcssa.i233 = phi i32 [ 0, %if.end56.i ], [ %matches.1.i222, %if.end117.i ], !dbg !1842
  %dstart.1.lcssa.i = phi ptr [ %d.0.i218, %if.end56.i ], [ %dstart.2.i231, %if.end117.i ], !dbg !1842
  %d.1.lcssa.i = phi ptr [ %d.0.i218, %if.end56.i ], [ %d.3.i232, %if.end117.i ], !dbg !1842
  %181 = or i8 %hibit.2.shrunk.i210, %150, !dbg !1935
  %.not = icmp eq i8 %181, 0, !dbg !1935
  br i1 %.not, label %if.else131.i, label %if.then122.i235, !dbg !1935

if.then122.i235:                                  ; preds = %while.end118.i
  %tobool121.i = icmp ne i8 %hibit.2.shrunk.i210, 0
  %sub.ptr.lhs.cast123.i = ptrtoint ptr %d.1.lcssa.i to i64, !dbg !1937
  %sub.ptr.rhs.cast124.i = ptrtoint ptr %dstart.1.lcssa.i to i64, !dbg !1937
  %sub.ptr.sub125.i = sub i64 %sub.ptr.lhs.cast123.i, %sub.ptr.rhs.cast124.i, !dbg !1937
  call void @Perl_sv_setpvn(ptr noundef %sv, ptr noundef %dstart.1.lcssa.i, i64 noundef %sub.ptr.sub125.i) #6, !dbg !1937
  call void @Perl_safesysfree(ptr noundef %dstart.1.lcssa.i) #6, !dbg !1939
  %or.cond166.i = and i1 %tobool48.i, %tobool121.i, !dbg !1940
  br i1 %or.cond166.i, label %if.then129.i, label %do.body138.i, !dbg !1940

if.then129.i:                                     ; preds = %if.then122.i235
  call void @Perl_safesysfree(ptr noundef %s.3.i211) #6, !dbg !1942
  br label %do.body138.i, !dbg !1942

if.else131.i:                                     ; preds = %while.end118.i
  store i8 0, ptr %d.1.lcssa.i, align 1, !dbg !1943
  %sub.ptr.lhs.cast132.i = ptrtoint ptr %d.1.lcssa.i to i64, !dbg !1945
  %sub.ptr.rhs.cast133.i = ptrtoint ptr %dstart.1.lcssa.i to i64, !dbg !1945
  %sub.ptr.sub134.i = sub i64 %sub.ptr.lhs.cast132.i, %sub.ptr.rhs.cast133.i, !dbg !1945
  %182 = load ptr, ptr %sv, align 8, !dbg !1945
  %xpv_cur136.i = getelementptr inbounds %struct.xpv, ptr %182, i64 0, i32 2, !dbg !1945
  store i64 %sub.ptr.sub134.i, ptr %xpv_cur136.i, align 8, !dbg !1945
  br label %do.body138.i

do.body138.i:                                     ; preds = %if.else131.i, %if.then129.i, %if.then122.i235
  %183 = load i32, ptr %sv_flags, align 4, !dbg !1947
  %and140.i = and i32 %183, 4194304, !dbg !1947
  %tobool141.not.i = icmp eq i32 %and140.i, 0, !dbg !1947
  br i1 %tobool141.not.i, label %S_do_trans_simple_utf8.exit, label %if.then144.i, !dbg !1950

if.then144.i:                                     ; preds = %do.body138.i
  %call145.i = call i32 @Perl_mg_set(ptr noundef nonnull %sv) #6, !dbg !1947
  %.pre253.i = load i32, ptr %sv_flags, align 4, !dbg !1951
  br label %S_do_trans_simple_utf8.exit, !dbg !1947

S_do_trans_simple_utf8.exit:                      ; preds = %do.body138.i, %if.then144.i
  %184 = phi i32 [ %183, %do.body138.i ], [ %.pre253.i, %if.then144.i ], !dbg !1951
  %or.i236 = or i32 %184, 536870912, !dbg !1951
  store i32 %or.i236, ptr %sv_flags, align 4, !dbg !1951
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i186) #6, !dbg !1952
  br label %cleanup, !dbg !1805

cond.false61:                                     ; preds = %if.else57
  call void @llvm.dbg.value(metadata ptr %sv, metadata !1953, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.dbg.value(metadata i32 0, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len.i237) #6, !dbg !1975
  %and.i240 = and i32 %or, 2098176, !dbg !1976
  %cmp.i241 = icmp eq i32 %and.i240, 1024, !dbg !1976
  br i1 %cmp.i241, label %cond.true.i244, label %cond.false.i247, !dbg !1976

cond.true.i244:                                   ; preds = %cond.false61
  %185 = load ptr, ptr %sv, align 8, !dbg !1976
  %xpv_cur.i242 = getelementptr inbounds %struct.xpv, ptr %185, i64 0, i32 2, !dbg !1976
  %186 = load i64, ptr %xpv_cur.i242, align 8, !dbg !1976
  call void @llvm.dbg.value(metadata i64 %186, metadata !1957, metadata !DIExpression()) #6, !dbg !1973
  store i64 %186, ptr %len.i237, align 8, !dbg !1976
  %sv_u.i243 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !1976
  %187 = load ptr, ptr %sv_u.i243, align 8, !dbg !1976
  br label %cond.end.i252, !dbg !1976

cond.false.i247:                                  ; preds = %cond.false61
  call void @llvm.dbg.value(metadata ptr %len.i237, metadata !1957, metadata !DIExpression(DW_OP_deref)) #6, !dbg !1973
  %call.i245 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %len.i237, i32 noundef 0) #6, !dbg !1976
  %.pre.i246 = load i64, ptr %len.i237, align 8, !dbg !1977
  br label %cond.end.i252, !dbg !1976

cond.end.i252:                                    ; preds = %cond.false.i247, %cond.true.i244
  %188 = phi i64 [ %186, %cond.true.i244 ], [ %.pre.i246, %cond.false.i247 ], !dbg !1977
  %cond.i248 = phi ptr [ %187, %cond.true.i244 ], [ %call.i245, %cond.false.i247 ], !dbg !1976
  call void @llvm.dbg.value(metadata ptr %cond.i248, metadata !1958, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %188, metadata !1957, metadata !DIExpression()) #6, !dbg !1973
  %add.ptr.i249 = getelementptr inbounds i8, ptr %cond.i248, i64 %188, !dbg !1978
  call void @llvm.dbg.value(metadata ptr %add.ptr.i249, metadata !1959, metadata !DIExpression()) #6, !dbg !1973
  %189 = load ptr, ptr @PL_op, align 8, !dbg !1979
  %op_pv.i250 = getelementptr inbounds %struct.pvop, ptr %189, i64 0, i32 7, !dbg !1980
  %190 = load ptr, ptr %op_pv.i250, align 8, !dbg !1980
  call void @llvm.dbg.value(metadata ptr %190, metadata !1960, metadata !DIExpression()) #6, !dbg !1973
  %tobool.not.i251 = icmp eq ptr %190, null, !dbg !1981
  br i1 %tobool.not.i251, label %if.then.i253, label %if.end.i256, !dbg !1983

if.then.i253:                                     ; preds = %cond.end.i252
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.13, i32 noundef 42) #6, !dbg !1984
  br label %if.end.i256, !dbg !1984

if.end.i256:                                      ; preds = %if.then.i253, %cond.end.i252
  %191 = load i32, ptr %sv_flags, align 4, !dbg !1985
  %and2.i254 = and i32 %191, 536870912, !dbg !1985
  %tobool3.not.i255 = icmp eq i32 %and2.i254, 0, !dbg !1985
  br i1 %tobool3.not.i255, label %while.cond.preheader.i257, label %if.else.i268, !dbg !1986

while.cond.preheader.i257:                        ; preds = %if.end.i256
  call void @llvm.dbg.value(metadata i32 0, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %cond.i248, metadata !1958, metadata !DIExpression()) #6, !dbg !1973
  %cmp5127.i = icmp sgt i64 %188, 0, !dbg !1987
  br i1 %cmp5127.i, label %while.body.i261, label %do.body.i, !dbg !1988

while.body.i261:                                  ; preds = %while.cond.preheader.i257, %if.end10.i
  %matches.0130.i = phi i32 [ %matches.1.i263, %if.end10.i ], [ 0, %while.cond.preheader.i257 ]
  %s.0128.i = phi ptr [ %incdec.ptr.i264, %if.end10.i ], [ %cond.i248, %while.cond.preheader.i257 ]
  call void @llvm.dbg.value(metadata i32 %matches.0130.i, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %s.0128.i, metadata !1958, metadata !DIExpression()) #6, !dbg !1973
  %192 = load i8, ptr %s.0128.i, align 1, !dbg !1989
  %idxprom.i258 = zext i8 %192 to i64, !dbg !1990
  %arrayidx.i259 = getelementptr inbounds i16, ptr %190, i64 %idxprom.i258, !dbg !1990
  %193 = load i16, ptr %arrayidx.i259, align 2, !dbg !1990
  call void @llvm.dbg.value(metadata i16 %193, metadata !1961, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !1991
  %cmp6.i260 = icmp sgt i16 %193, -1, !dbg !1992
  br i1 %cmp6.i260, label %if.then8.i, label %if.end10.i, !dbg !1994

if.then8.i:                                       ; preds = %while.body.i261
  call void @llvm.dbg.value(metadata i16 %193, metadata !1961, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !1991
  %inc.i262 = add nsw i32 %matches.0130.i, 1, !dbg !1995
  call void @llvm.dbg.value(metadata i32 %inc.i262, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  %conv9.i = trunc i16 %193 to i8, !dbg !1997
  store i8 %conv9.i, ptr %s.0128.i, align 1, !dbg !1998
  br label %if.end10.i, !dbg !1999

if.end10.i:                                       ; preds = %if.then8.i, %while.body.i261
  %matches.1.i263 = phi i32 [ %inc.i262, %if.then8.i ], [ %matches.0130.i, %while.body.i261 ], !dbg !1973
  call void @llvm.dbg.value(metadata i32 %matches.1.i263, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  %incdec.ptr.i264 = getelementptr inbounds i8, ptr %s.0128.i, i64 1, !dbg !2000
  call void @llvm.dbg.value(metadata ptr %incdec.ptr.i264, metadata !1958, metadata !DIExpression()) #6, !dbg !1973
  %cmp5.i = icmp ult ptr %incdec.ptr.i264, %add.ptr.i249, !dbg !1987
  br i1 %cmp5.i, label %while.body.i261, label %do.body.loopexit.i, !dbg !1988, !llvm.loop !2001

do.body.loopexit.i:                               ; preds = %if.end10.i
  %.pre132.i = load i32, ptr %sv_flags, align 4, !dbg !2003
  br label %do.body.i, !dbg !2003

do.body.i:                                        ; preds = %do.body.loopexit.i, %while.cond.preheader.i257
  %194 = phi i32 [ %191, %while.cond.preheader.i257 ], [ %.pre132.i, %do.body.loopexit.i ], !dbg !2003
  %matches.0.lcssa.i265 = phi i32 [ 0, %while.cond.preheader.i257 ], [ %matches.1.i263, %do.body.loopexit.i ], !dbg !1973
  %and12.i = and i32 %194, 4194304, !dbg !2003
  %tobool13.not.i = icmp eq i32 %and12.i, 0, !dbg !2003
  br i1 %tobool13.not.i, label %S_do_trans_simple.exit, label %if.end80.sink.split.i, !dbg !2006

if.else.i268:                                     ; preds = %if.end.i256
  %195 = load ptr, ptr @PL_op, align 8, !dbg !2007
  %op_private.i266 = getelementptr inbounds %struct.op, ptr %195, i64 0, i32 6, !dbg !2008
  %196 = load i8, ptr %op_private.i266, align 1, !dbg !2008
  %197 = and i8 %196, 64, !dbg !2009
  call void @llvm.dbg.value(metadata i8 %197, metadata !1965, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #6, !dbg !2010
  %tobool21.not.i267 = icmp eq i8 %197, 0, !dbg !2011
  br i1 %tobool21.not.i267, label %if.end26.i, label %if.then22.i271, !dbg !2013

if.then22.i271:                                   ; preds = %if.else.i268
  %198 = load i64, ptr %len.i237, align 8, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %198, metadata !1957, metadata !DIExpression()) #6, !dbg !1973
  %mul.i269 = shl i64 %198, 1, !dbg !2014
  %add.i270 = or i64 %mul.i269, 1, !dbg !2014
  %call24.i = call ptr @Perl_safesysmalloc(i64 noundef %add.i270) #6, !dbg !2014
  call void @llvm.dbg.value(metadata ptr %call24.i, metadata !1967, metadata !DIExpression()) #6, !dbg !2010
  br label %if.end26.i, !dbg !2014

if.end26.i:                                       ; preds = %if.then22.i271, %if.else.i268
  %d.0.i272 = phi ptr [ %call24.i, %if.then22.i271 ], [ %cond.i248, %if.else.i268 ], !dbg !2015
  call void @llvm.dbg.value(metadata ptr %d.0.i272, metadata !1967, metadata !DIExpression()) #6, !dbg !2010
  call void @llvm.dbg.value(metadata ptr %d.0.i272, metadata !1968, metadata !DIExpression()) #6, !dbg !2010
  call void @llvm.dbg.value(metadata i32 0, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %cond.i248, metadata !1958, metadata !DIExpression()) #6, !dbg !1973
  %cmp28122.i = icmp sgt i64 %188, 0, !dbg !2016
  br i1 %cmp28122.i, label %while.body30.lr.ph.i, label %while.end52.i, !dbg !2017

while.body30.lr.ph.i:                             ; preds = %if.end26.i
  %sub.ptr.lhs.cast.i273 = ptrtoint ptr %add.ptr.i249 to i64
  br label %while.body30.i, !dbg !2017

while.body30.i:                                   ; preds = %if.end51.i, %while.body30.lr.ph.i
  %matches.2125.i = phi i32 [ 0, %while.body30.lr.ph.i ], [ %matches.3.i279, %if.end51.i ]
  %s.1124.i = phi ptr [ %cond.i248, %while.body30.lr.ph.i ], [ %s.2.i, %if.end51.i ]
  %d.1123.i = phi ptr [ %d.0.i272, %while.body30.lr.ph.i ], [ %d.2.i277, %if.end51.i ]
  call void @llvm.dbg.value(metadata i32 %matches.2125.i, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %s.1124.i, metadata !1958, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %d.1123.i, metadata !1967, metadata !DIExpression()) #6, !dbg !2010
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ulen.i238) #6, !dbg !2018
  %sub.ptr.rhs.cast.i274 = ptrtoint ptr %s.1124.i to i64, !dbg !2019
  %sub.ptr.sub.i275 = sub i64 %sub.ptr.lhs.cast.i273, %sub.ptr.rhs.cast.i274, !dbg !2019
  %call32.i = call zeroext i1 @Perl_ckwarn(i32 noundef 44) #6, !dbg !2019
  %not.call32.i = xor i1 %call32.i, true, !dbg !2019
  %cond34.i = zext i1 %not.call32.i to i32, !dbg !2019
  call void @llvm.dbg.value(metadata ptr %ulen.i238, metadata !1969, metadata !DIExpression(DW_OP_deref)) #6, !dbg !2020
  %call35.i = call i64 @Perl_utf8n_to_uvchr(ptr noundef %s.1124.i, i64 noundef %sub.ptr.sub.i275, ptr noundef nonnull %ulen.i238, i32 noundef %cond34.i) #6, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %call35.i, metadata !1972, metadata !DIExpression()) #6, !dbg !2020
  %cmp36.i276 = icmp ult i64 %call35.i, 256, !dbg !2021
  br i1 %cmp36.i276, label %land.lhs.true.i, label %if.else47.i, !dbg !2023

land.lhs.true.i:                                  ; preds = %while.body30.i
  %arrayidx38.i = getelementptr inbounds i16, ptr %190, i64 %call35.i, !dbg !2024
  %199 = load i16, ptr %arrayidx38.i, align 2, !dbg !2024
  call void @llvm.dbg.value(metadata i16 %199, metadata !1971, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !2020
  %cmp40.i = icmp sgt i16 %199, -1, !dbg !2025
  br i1 %cmp40.i, label %if.then42.i, label %if.else47.i, !dbg !2026

if.then42.i:                                      ; preds = %land.lhs.true.i
  call void @llvm.dbg.value(metadata i16 %199, metadata !1971, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)) #6, !dbg !2020
  %inc43.i = add nsw i32 %matches.2125.i, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %inc43.i, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  %conv44121.i = zext i16 %199 to i64, !dbg !2029
  %call45.i = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %d.1123.i, i64 noundef %conv44121.i, i64 noundef 0) #6, !dbg !2029
  call void @llvm.dbg.value(metadata ptr %call45.i, metadata !1967, metadata !DIExpression()) #6, !dbg !2010
  %200 = load i64, ptr %ulen.i238, align 8, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %200, metadata !1969, metadata !DIExpression()) #6, !dbg !2020
  call void @llvm.dbg.value(metadata !DIArgList(ptr %s.1124.i, i64 %200), metadata !1958, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #6, !dbg !1973
  br label %if.end51.i, !dbg !2031

if.else47.i:                                      ; preds = %land.lhs.true.i, %while.body30.i
  %201 = load i64, ptr %ulen.i238, align 8, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %201, metadata !1969, metadata !DIExpression()) #6, !dbg !2020
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %d.1123.i, ptr align 1 %s.1124.i, i64 %201, i1 false) #6, !dbg !2032
  %202 = load i64, ptr %ulen.i238, align 8, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %202, metadata !1969, metadata !DIExpression()) #6, !dbg !2020
  %add.ptr49.i = getelementptr inbounds i8, ptr %d.1123.i, i64 %202, !dbg !2035
  call void @llvm.dbg.value(metadata ptr %add.ptr49.i, metadata !1967, metadata !DIExpression()) #6, !dbg !2010
  call void @llvm.dbg.value(metadata !DIArgList(ptr %s.1124.i, i64 %202), metadata !1958, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #6, !dbg !1973
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.else47.i, %if.then42.i
  %d.2.i277 = phi ptr [ %call45.i, %if.then42.i ], [ %add.ptr49.i, %if.else47.i ], !dbg !2036
  %.pn.i278 = phi i64 [ %200, %if.then42.i ], [ %202, %if.else47.i ]
  %matches.3.i279 = phi i32 [ %inc43.i, %if.then42.i ], [ %matches.2125.i, %if.else47.i ], !dbg !1973
  %s.2.i = getelementptr inbounds i8, ptr %s.1124.i, i64 %.pn.i278, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %matches.3.i279, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %s.2.i, metadata !1958, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.dbg.value(metadata ptr %d.2.i277, metadata !1967, metadata !DIExpression()) #6, !dbg !2010
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ulen.i238) #6, !dbg !2037
  %cmp28.i280 = icmp ult ptr %s.2.i, %add.ptr.i249, !dbg !2016
  br i1 %cmp28.i280, label %while.body30.i, label %while.end52.i, !dbg !2017, !llvm.loop !2038

while.end52.i:                                    ; preds = %if.end51.i, %if.end26.i
  %d.1.lcssa.i281 = phi ptr [ %d.0.i272, %if.end26.i ], [ %d.2.i277, %if.end51.i ], !dbg !2010
  %matches.2.lcssa.i = phi i32 [ 0, %if.end26.i ], [ %matches.3.i279, %if.end51.i ], !dbg !1973
  br i1 %tobool21.not.i267, label %if.else58.i, label %if.then54.i, !dbg !2039

if.then54.i:                                      ; preds = %while.end52.i
  %sub.ptr.lhs.cast55.i = ptrtoint ptr %d.1.lcssa.i281 to i64, !dbg !2040
  %sub.ptr.rhs.cast56.i = ptrtoint ptr %d.0.i272 to i64, !dbg !2040
  %sub.ptr.sub57.i = sub i64 %sub.ptr.lhs.cast55.i, %sub.ptr.rhs.cast56.i, !dbg !2040
  call void @Perl_sv_setpvn(ptr noundef %sv, ptr noundef %d.0.i272, i64 noundef %sub.ptr.sub57.i) #6, !dbg !2040
  call void @Perl_safesysfree(ptr noundef %d.0.i272) #6, !dbg !2043
  br label %if.end67.i283, !dbg !2044

if.else58.i:                                      ; preds = %while.end52.i
  store i8 0, ptr %d.1.lcssa.i281, align 1, !dbg !2045
  %sub.ptr.lhs.cast60.i = ptrtoint ptr %d.1.lcssa.i281 to i64, !dbg !2047
  %sub.ptr.rhs.cast61.i = ptrtoint ptr %d.0.i272 to i64, !dbg !2047
  %sub.ptr.sub62.i = sub i64 %sub.ptr.lhs.cast60.i, %sub.ptr.rhs.cast61.i, !dbg !2047
  %203 = load ptr, ptr %sv, align 8, !dbg !2047
  %xpv_cur64.i = getelementptr inbounds %struct.xpv, ptr %203, i64 0, i32 2, !dbg !2047
  store i64 %sub.ptr.sub62.i, ptr %xpv_cur64.i, align 8, !dbg !2047
  br label %if.end67.i283

if.end67.i283:                                    ; preds = %if.else58.i, %if.then54.i
  %204 = load i32, ptr %sv_flags, align 4, !dbg !2049
  %or.i282 = or i32 %204, 536870912, !dbg !2049
  store i32 %or.i282, ptr %sv_flags, align 4, !dbg !2049
  %and71.i = and i32 %204, 4194304, !dbg !2050
  %tobool72.not.i = icmp eq i32 %and71.i, 0, !dbg !2050
  br i1 %tobool72.not.i, label %S_do_trans_simple.exit, label %if.end80.sink.split.i, !dbg !2053

if.end80.sink.split.i:                            ; preds = %if.end67.i283, %do.body.i
  %matches.4.ph.i = phi i32 [ %matches.0.lcssa.i265, %do.body.i ], [ %matches.2.lcssa.i, %if.end67.i283 ]
  %call76.i = call i32 @Perl_mg_set(ptr noundef nonnull %sv) #6, !dbg !2054
  br label %S_do_trans_simple.exit, !dbg !2055

S_do_trans_simple.exit:                           ; preds = %do.body.i, %if.end67.i283, %if.end80.sink.split.i
  %matches.4.i284 = phi i32 [ %matches.0.lcssa.i265, %do.body.i ], [ %matches.2.lcssa.i, %if.end67.i283 ], [ %matches.4.ph.i, %if.end80.sink.split.i ], !dbg !2056
  call void @llvm.dbg.value(metadata i32 %matches.4.i284, metadata !1956, metadata !DIExpression()) #6, !dbg !1973
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len.i237) #6, !dbg !2055
  br label %cleanup, !dbg !1805

cleanup:                                          ; preds = %S_do_trans_simple_utf8.exit, %S_do_trans_simple.exit, %S_do_trans_complex_utf8.exit, %S_do_trans_complex.exit, %S_do_trans_count_utf8.exit, %S_do_trans_count.exit, %cond.end
  %retval.0 = phi i32 [ 0, %cond.end ], [ %matches.0.lcssa100.i, %S_do_trans_count_utf8.exit ], [ %matches.4.i, %S_do_trans_count.exit ], [ %matches.4.i144, %S_do_trans_complex_utf8.exit ], [ %matches.11.i, %S_do_trans_complex.exit ], [ %matches.0.lcssa.i233, %S_do_trans_simple_utf8.exit ], [ %matches.4.i284, %S_do_trans_simple.exit ], !dbg !1117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len) #6, !dbg !2057
  ret i32 %retval.0, !dbg !2057
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !2058 void @Perl_croak_no_modify() local_unnamed_addr #2

declare !dbg !2063 ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2068 ptr @Perl_sv_pvn_force_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_join(ptr noundef %sv, ptr noundef %delim, ptr noundef %mark, ptr noundef %sp) local_unnamed_addr #0 !dbg !2069 {
entry:
  %delimlen = alloca i64, align 8
  %tmplen = alloca i64, align 8
  %len125 = alloca i64, align 8
  %len156 = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2073, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata ptr %delim, metadata !2074, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata ptr %mark, metadata !2075, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata ptr %sp, metadata !2076, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata ptr %mark, metadata !2077, metadata !DIExpression()), !dbg !2102
  %sub.ptr.lhs.cast = ptrtoint ptr %sp to i64, !dbg !2103
  %sub.ptr.rhs.cast = ptrtoint ptr %mark to i64, !dbg !2103
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2103
  %0 = lshr exact i64 %sub.ptr.sub, 3, !dbg !2103
  %conv = trunc i64 %0 to i32, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2078, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %delimlen) #6, !dbg !2105
  %sv_flags = getelementptr inbounds %struct.sv, ptr %delim, i64 0, i32 2, !dbg !2106
  %1 = load i32, ptr %sv_flags, align 4, !dbg !2106
  %and = and i32 %1, 2098176, !dbg !2106
  %cmp = icmp eq i32 %and, 1024, !dbg !2106
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2106

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %delim, align 8, !dbg !2106
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %2, i64 0, i32 2, !dbg !2106
  %3 = load i64, ptr %xpv_cur, align 8, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %3, metadata !2080, metadata !DIExpression()), !dbg !2102
  store i64 %3, ptr %delimlen, align 8, !dbg !2106
  %sv_u = getelementptr inbounds %struct.sv, ptr %delim, i64 0, i32 3, !dbg !2106
  %4 = load ptr, ptr %sv_u, align 8, !dbg !2106
  br label %cond.end, !dbg !2106

cond.false:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %delimlen, metadata !2080, metadata !DIExpression(DW_OP_deref)), !dbg !2102
  %call = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %delim, ptr noundef nonnull %delimlen, i32 noundef 34) #6, !dbg !2106
  br label %cond.end, !dbg !2106

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %4, %cond.true ], [ %call, %cond.false ], !dbg !2106
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2081, metadata !DIExpression()), !dbg !2102
  %incdec.ptr = getelementptr inbounds ptr, ptr %mark, i64 1, !dbg !2107
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2075, metadata !DIExpression()), !dbg !2102
  %cmp2 = icmp sgt i32 %conv, 0, !dbg !2108
  br i1 %cmp2, label %cond.true4, label %cond.end7, !dbg !2109

cond.true4:                                       ; preds = %cond.end
  %5 = load i64, ptr %delimlen, align 8, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %5, metadata !2080, metadata !DIExpression()), !dbg !2102
  %sub = add nuw nsw i64 %0, 4294967295, !dbg !2111
  %6 = and i64 %sub, 4294967295
  %mul = mul i64 %5, %6, !dbg !2112
  br label %cond.end7, !dbg !2109

cond.end7:                                        ; preds = %cond.end, %cond.true4
  %cond8 = phi i64 [ %mul, %cond.true4 ], [ 0, %cond.end ], !dbg !2109
  call void @llvm.dbg.value(metadata i64 %cond8, metadata !2079, metadata !DIExpression()), !dbg !2102
  %sv_flags9 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2113
  %7 = load i32, ptr %sv_flags9, align 4, !dbg !2113
  %and10 = and i32 %7, 255, !dbg !2113
  %cmp11 = icmp ugt i32 %and10, 2, !dbg !2113
  br i1 %cmp11, label %lor.end, label %lor.rhs, !dbg !2113

lor.rhs:                                          ; preds = %cond.end7
  call void @Perl_sv_upgrade(ptr noundef nonnull %sv, i32 noundef 3) #6, !dbg !2113
  br label %lor.end, !dbg !2113

lor.end:                                          ; preds = %lor.rhs, %cond.end7
  %8 = load ptr, ptr %sv, align 8, !dbg !2114
  %xpv_len_u = getelementptr inbounds %struct.xpv, ptr %8, i64 0, i32 3, !dbg !2114
  %9 = load i64, ptr %xpv_len_u, align 8, !dbg !2114
  %sext = shl i64 %sub.ptr.sub, 29, !dbg !2115
  %conv14 = ashr i64 %sext, 32, !dbg !2115
  %add = add i64 %cond8, %conv14, !dbg !2116
  %cmp15 = icmp ult i64 %9, %add, !dbg !2117
  br i1 %cmp15, label %while.cond.preheader, label %if.end88, !dbg !2118

while.cond.preheader:                             ; preds = %lor.end
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2075, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2078, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %cond8, metadata !2079, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2078, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2102
  br i1 %cmp2, label %while.body, label %while.end, !dbg !2119

while.body:                                       ; preds = %while.cond.preheader, %if.end
  %dec271.in = phi i32 [ %dec271, %if.end ], [ %conv, %while.cond.preheader ]
  %mark.addr.0270 = phi ptr [ %incdec.ptr65, %if.end ], [ %incdec.ptr, %while.cond.preheader ]
  %len.0269 = phi i64 [ %len.1, %if.end ], [ %cond8, %while.cond.preheader ]
  %dec271 = add nsw i32 %dec271.in, -1, !dbg !2120
  call void @llvm.dbg.value(metadata ptr %mark.addr.0270, metadata !2075, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i64 %len.0269, metadata !2079, metadata !DIExpression()), !dbg !2102
  %10 = load ptr, ptr %mark.addr.0270, align 8, !dbg !2121
  %tobool.not = icmp eq ptr %10, null, !dbg !2121
  br i1 %tobool.not, label %if.end, label %land.lhs.true, !dbg !2122

land.lhs.true:                                    ; preds = %while.body
  %sv_flags19 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 2, !dbg !2123
  %11 = load i32, ptr %sv_flags19, align 4, !dbg !2123
  %and20 = and i32 %11, 2097152, !dbg !2123
  %tobool21.not = icmp eq i32 %and20, 0, !dbg !2123
  br i1 %tobool21.not, label %lor.lhs.false, label %if.end, !dbg !2123

lor.lhs.false:                                    ; preds = %land.lhs.true
  %and23 = and i32 %11, 2048, !dbg !2123
  %tobool24.not = icmp eq i32 %and23, 0, !dbg !2123
  br i1 %tobool24.not, label %land.lhs.true36, label %land.lhs.true25, !dbg !2123

land.lhs.true25:                                  ; preds = %lor.lhs.false
  %sv_u26 = getelementptr inbounds %struct.sv, ptr %10, i64 0, i32 3, !dbg !2123
  %12 = load ptr, ptr %sv_u26, align 8, !dbg !2123
  %sv_flags27 = getelementptr inbounds %struct.sv, ptr %12, i64 0, i32 2, !dbg !2123
  %13 = load i32, ptr %sv_flags27, align 4, !dbg !2123
  %and28 = and i32 %13, 1048576, !dbg !2123
  %tobool29.not = icmp eq i32 %and28, 0, !dbg !2123
  br i1 %tobool29.not, label %land.lhs.true36, label %land.lhs.true30, !dbg !2123

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %14 = load ptr, ptr %12, align 8, !dbg !2123
  %15 = load ptr, ptr %14, align 8, !dbg !2123
  %sv_flags33 = getelementptr inbounds %struct.hv, ptr %15, i64 0, i32 2, !dbg !2123
  %16 = load i32, ptr %sv_flags33, align 4, !dbg !2123
  %and34 = and i32 %16, 268435456, !dbg !2123
  %tobool35.not = icmp eq i32 %and34, 0, !dbg !2123
  br i1 %tobool35.not, label %land.lhs.true36, label %if.end, !dbg !2124

land.lhs.true36:                                  ; preds = %land.lhs.true30, %land.lhs.true25, %lor.lhs.false
  %and38 = and i32 %11, 65280, !dbg !2125
  %tobool39.not = icmp ne i32 %and38, 0, !dbg !2125
  %and42 = and i32 %11, 255, !dbg !2125
  %cmp43 = icmp eq i32 %and42, 8, !dbg !2125
  %or.cond = or i1 %tobool39.not, %cmp43, !dbg !2125
  %and47 = and i32 %11, 16826623, !dbg !2125
  %cmp48 = icmp eq i32 %and47, 16777226, !dbg !2125
  %or.cond263 = select i1 %or.cond, i1 true, i1 %cmp48, !dbg !2125
  br i1 %or.cond263, label %if.then50, label %if.end, !dbg !2125

if.then50:                                        ; preds = %land.lhs.true36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmplen) #6, !dbg !2126
  %and52 = and i32 %11, 2098176, !dbg !2127
  %cmp53 = icmp eq i32 %and52, 1024, !dbg !2127
  br i1 %cmp53, label %cond.true55, label %cond.false60, !dbg !2127

cond.true55:                                      ; preds = %if.then50
  %17 = load ptr, ptr %10, align 8, !dbg !2127
  %xpv_cur57 = getelementptr inbounds %struct.xpv, ptr %17, i64 0, i32 2, !dbg !2127
  call void @llvm.dbg.value(metadata i64 undef, metadata !2082, metadata !DIExpression()), !dbg !2128
  br label %cond.end62, !dbg !2127

cond.false60:                                     ; preds = %if.then50
  call void @llvm.dbg.value(metadata ptr %tmplen, metadata !2082, metadata !DIExpression(DW_OP_deref)), !dbg !2128
  %call61 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %10, ptr noundef nonnull %tmplen, i32 noundef 34) #6, !dbg !2127
  br label %cond.end62, !dbg !2127

cond.end62:                                       ; preds = %cond.false60, %cond.true55
  %.in = phi ptr [ %tmplen, %cond.false60 ], [ %xpv_cur57, %cond.true55 ]
  %18 = load i64, ptr %.in, align 8, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %18, metadata !2082, metadata !DIExpression()), !dbg !2128
  %add64 = add i64 %18, %len.0269, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %add64, metadata !2079, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmplen) #6, !dbg !2131
  br label %if.end, !dbg !2132

if.end:                                           ; preds = %land.lhs.true36, %cond.end62, %land.lhs.true30, %land.lhs.true, %while.body
  %len.1 = phi i64 [ %len.0269, %land.lhs.true ], [ %len.0269, %land.lhs.true30 ], [ %add64, %cond.end62 ], [ %len.0269, %while.body ], [ %len.0269, %land.lhs.true36 ], !dbg !2102
  call void @llvm.dbg.value(metadata i64 %len.1, metadata !2079, metadata !DIExpression()), !dbg !2102
  %incdec.ptr65 = getelementptr inbounds ptr, ptr %mark.addr.0270, i64 1, !dbg !2133
  call void @llvm.dbg.value(metadata ptr %incdec.ptr65, metadata !2075, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %dec271, metadata !2078, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %dec271, metadata !2078, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2102
  %cmp17 = icmp ugt i32 %dec271.in, 1, !dbg !2134
  br i1 %cmp17, label %while.body, label %while.end, !dbg !2119, !llvm.loop !2135

while.end:                                        ; preds = %if.end, %while.cond.preheader
  %len.0.lcssa = phi i64 [ %cond8, %while.cond.preheader ], [ %len.1, %if.end ], !dbg !2137
  %19 = load i32, ptr %sv_flags9, align 4, !dbg !2138
  %and67 = and i32 %19, 268435456, !dbg !2138
  %tobool68.not = icmp eq i32 %and67, 0, !dbg !2138
  br i1 %tobool68.not, label %lor.lhs.false69, label %while.end.cond.true75_crit_edge, !dbg !2138

while.end.cond.true75_crit_edge:                  ; preds = %while.end
  %.pre286 = add i64 %len.0.lcssa, 1, !dbg !2138
  br label %cond.true75, !dbg !2138

lor.lhs.false69:                                  ; preds = %while.end
  %20 = load ptr, ptr %sv, align 8, !dbg !2138
  %xpv_len_u71 = getelementptr inbounds %struct.xpv, ptr %20, i64 0, i32 3, !dbg !2138
  %21 = load i64, ptr %xpv_len_u71, align 8, !dbg !2138
  %add72 = add i64 %len.0.lcssa, 1, !dbg !2138
  %cmp73 = icmp ult i64 %21, %add72, !dbg !2138
  br i1 %cmp73, label %cond.true75, label %if.end88, !dbg !2138

cond.true75:                                      ; preds = %while.end.cond.true75_crit_edge, %lor.lhs.false69
  %add76.pre-phi = phi i64 [ %.pre286, %while.end.cond.true75_crit_edge ], [ %add72, %lor.lhs.false69 ], !dbg !2138
  %call77 = call ptr @Perl_sv_grow(ptr noundef nonnull %sv, i64 noundef %add76.pre-phi) #6, !dbg !2138
  br label %if.end88, !dbg !2138

if.end88:                                         ; preds = %cond.true75, %lor.lhs.false69, %lor.end
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2075, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2078, metadata !DIExpression()), !dbg !2102
  call void @Perl_sv_setpvn(ptr noundef nonnull %sv, ptr noundef nonnull @.str, i64 noundef 0) #6, !dbg !2139
  %22 = load i32, ptr %sv_flags9, align 4, !dbg !2140
  %and90 = and i32 %22, -536870913, !dbg !2140
  store i32 %and90, ptr %sv_flags9, align 4, !dbg !2140
  %23 = load i8, ptr @PL_tainting, align 1, !dbg !2141, !range !2143
  %tobool91.not = icmp eq i8 %23, 0, !dbg !2141
  %and95 = and i32 %22, 14680064
  %tobool96.not = icmp eq i32 %and95, 0
  %or.cond264 = select i1 %tobool91.not, i1 true, i1 %tobool96.not, !dbg !2144
  br i1 %or.cond264, label %if.end104, label %if.then102, !dbg !2144

if.then102:                                       ; preds = %if.end88
  call void @Perl_sv_untaint(ptr noundef nonnull %sv) #6, !dbg !2145
  br label %if.end104, !dbg !2145

if.end104:                                        ; preds = %if.then102, %if.end88
  %dec105 = add nsw i32 %conv, -1, !dbg !2149
  call void @llvm.dbg.value(metadata i32 %dec105, metadata !2078, metadata !DIExpression()), !dbg !2102
  br i1 %cmp2, label %if.then108, label %if.end113, !dbg !2151

if.then108:                                       ; preds = %if.end104
  %24 = load ptr, ptr %incdec.ptr, align 8, !dbg !2152
  %tobool109.not = icmp eq ptr %24, null, !dbg !2152
  br i1 %tobool109.not, label %if.end111, label %if.then110, !dbg !2155

if.then110:                                       ; preds = %if.then108
  call void @Perl_sv_catsv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %24, i32 noundef 2) #6, !dbg !2156
  br label %if.end111, !dbg !2156

if.end111:                                        ; preds = %if.then110, %if.then108
  %incdec.ptr112 = getelementptr inbounds ptr, ptr %mark, i64 2, !dbg !2157
  call void @llvm.dbg.value(metadata ptr %incdec.ptr112, metadata !2075, metadata !DIExpression()), !dbg !2102
  br label %if.end113, !dbg !2158

if.end113:                                        ; preds = %if.end111, %if.end104
  %mark.addr.2 = phi ptr [ %incdec.ptr112, %if.end111 ], [ %incdec.ptr, %if.end104 ], !dbg !2102
  call void @llvm.dbg.value(metadata ptr %mark.addr.2, metadata !2075, metadata !DIExpression()), !dbg !2102
  %25 = load i64, ptr %delimlen, align 8, !dbg !2159
  call void @llvm.dbg.value(metadata i64 %25, metadata !2080, metadata !DIExpression()), !dbg !2102
  %tobool114.not = icmp eq i64 %25, 0, !dbg !2159
  br i1 %tobool114.not, label %for.cond152.preheader, label %if.then115, !dbg !2160

for.cond152.preheader:                            ; preds = %if.end113
  call void @llvm.dbg.value(metadata ptr %mark.addr.2, metadata !2075, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %dec105, metadata !2078, metadata !DIExpression()), !dbg !2102
  %cmp153275 = icmp sgt i32 %conv, 1, !dbg !2161
  br i1 %cmp153275, label %for.body155, label %do.body187, !dbg !2162

if.then115:                                       ; preds = %if.end113
  %26 = load i32, ptr %sv_flags, align 4, !dbg !2163
  %and117 = and i32 %26, 536870912, !dbg !2163
  %tobool118.not = icmp eq i32 %and117, 0, !dbg !2163
  br i1 %tobool118.not, label %land.end, label %land.rhs, !dbg !2163

land.rhs:                                         ; preds = %if.then115
  %27 = load ptr, ptr @PL_curcop, align 8, !dbg !2163
  %cop_hints = getelementptr inbounds %struct.cop, ptr %27, i64 0, i32 10, !dbg !2163
  %28 = load i32, ptr %cop_hints, align 8, !dbg !2163
  %and120 = and i32 %28, 8, !dbg !2163
  %tobool121.not = icmp eq i32 %and120, 0, !dbg !2163
  %phi.sel = select i1 %tobool121.not, i32 32768, i32 16384
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then115
  %29 = phi i32 [ 16384, %if.then115 ], [ %phi.sel, %land.rhs ]
  call void @llvm.dbg.value(metadata i32 %29, metadata !2088, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata ptr %mark.addr.2, metadata !2075, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %dec105, metadata !2078, metadata !DIExpression()), !dbg !2102
  %cmp123272 = icmp sgt i32 %conv, 1, !dbg !2165
  br i1 %cmp123272, label %for.body, label %do.body187, !dbg !2166

for.body:                                         ; preds = %land.end, %land.end148.thread.for.body_crit_edge
  %30 = phi i64 [ %.pre279, %land.end148.thread.for.body_crit_edge ], [ %25, %land.end ], !dbg !2167
  %mark.addr.3274 = phi ptr [ %incdec.ptr151, %land.end148.thread.for.body_crit_edge ], [ %mark.addr.2, %land.end ]
  %items.2273 = phi i32 [ %dec150, %land.end148.thread.for.body_crit_edge ], [ %dec105, %land.end ]
  call void @llvm.dbg.value(metadata ptr %mark.addr.3274, metadata !2075, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %items.2273, metadata !2078, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len125) #6, !dbg !2168
  call void @llvm.dbg.value(metadata i64 %30, metadata !2080, metadata !DIExpression()), !dbg !2102
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %sv, ptr noundef %cond, i64 noundef %30, i32 noundef %29) #6, !dbg !2167
  %31 = load ptr, ptr %mark.addr.3274, align 8, !dbg !2169
  %sv_flags126 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2, !dbg !2169
  %32 = load i32, ptr %sv_flags126, align 4, !dbg !2169
  %and127 = and i32 %32, 2098176, !dbg !2169
  %cmp128 = icmp eq i32 %and127, 1024, !dbg !2169
  br i1 %cmp128, label %cond.true130, label %cond.false135, !dbg !2169

cond.true130:                                     ; preds = %for.body
  %33 = load ptr, ptr %31, align 8, !dbg !2169
  %xpv_cur132 = getelementptr inbounds %struct.xpv, ptr %33, i64 0, i32 2, !dbg !2169
  %34 = load i64, ptr %xpv_cur132, align 8, !dbg !2169
  call void @llvm.dbg.value(metadata i64 %34, metadata !2091, metadata !DIExpression()), !dbg !2170
  store i64 %34, ptr %len125, align 8, !dbg !2169
  %sv_u133 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 3, !dbg !2169
  %35 = load ptr, ptr %sv_u133, align 8, !dbg !2169
  br label %cond.end137, !dbg !2169

cond.false135:                                    ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %len125, metadata !2091, metadata !DIExpression(DW_OP_deref)), !dbg !2170
  %call136 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %31, ptr noundef nonnull %len125, i32 noundef 34) #6, !dbg !2169
  %.pre280 = load i64, ptr %len125, align 8, !dbg !2171
  %.pre281 = load ptr, ptr %mark.addr.3274, align 8, !dbg !2171
  %sv_flags139.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre281, i64 0, i32 2
  %.pre282 = load i32, ptr %sv_flags139.phi.trans.insert, align 4, !dbg !2171
  br label %cond.end137, !dbg !2169

cond.end137:                                      ; preds = %cond.false135, %cond.true130
  %36 = phi i32 [ %32, %cond.true130 ], [ %.pre282, %cond.false135 ], !dbg !2171
  %37 = phi i64 [ %34, %cond.true130 ], [ %.pre280, %cond.false135 ], !dbg !2171
  %cond138 = phi ptr [ %35, %cond.true130 ], [ %call136, %cond.false135 ], !dbg !2169
  call void @llvm.dbg.value(metadata ptr %cond138, metadata !2095, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %37, metadata !2091, metadata !DIExpression()), !dbg !2170
  %and140 = and i32 %36, 536870912, !dbg !2171
  %tobool141.not = icmp eq i32 %and140, 0, !dbg !2171
  br i1 %tobool141.not, label %land.end148.thread, label %land.end148, !dbg !2171

land.end148:                                      ; preds = %cond.end137
  %38 = load ptr, ptr @PL_curcop, align 8, !dbg !2171
  %cop_hints143 = getelementptr inbounds %struct.cop, ptr %38, i64 0, i32 10, !dbg !2171
  %39 = load i32, ptr %cop_hints143, align 8, !dbg !2171
  %and145 = and i32 %39, 8, !dbg !2171
  %tobool146.not = icmp eq i32 %and145, 0, !dbg !2171
  %spec.select = select i1 %tobool146.not, i32 32768, i32 16384, !dbg !2171
  br label %land.end148.thread, !dbg !2171

land.end148.thread:                               ; preds = %land.end148, %cond.end137
  %40 = phi i32 [ 16384, %cond.end137 ], [ %spec.select, %land.end148 ]
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %sv, ptr noundef %cond138, i64 noundef %37, i32 noundef %40) #6, !dbg !2171
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len125) #6, !dbg !2172
  call void @llvm.dbg.value(metadata i32 %items.2273, metadata !2078, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2102
  call void @llvm.dbg.value(metadata ptr %mark.addr.3274, metadata !2075, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !2102
  %cmp123 = icmp sgt i32 %items.2273, 1, !dbg !2165
  br i1 %cmp123, label %land.end148.thread.for.body_crit_edge, label %do.body187, !dbg !2166, !llvm.loop !2173

land.end148.thread.for.body_crit_edge:            ; preds = %land.end148.thread
  %incdec.ptr151 = getelementptr inbounds ptr, ptr %mark.addr.3274, i64 1, !dbg !2175
  call void @llvm.dbg.value(metadata ptr %incdec.ptr151, metadata !2075, metadata !DIExpression()), !dbg !2102
  %dec150 = add nsw i32 %items.2273, -1, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %dec150, metadata !2078, metadata !DIExpression()), !dbg !2102
  %.pre279 = load i64, ptr %delimlen, align 8, !dbg !2167
  br label %for.body, !dbg !2166

for.body155:                                      ; preds = %for.cond152.preheader, %land.end180.thread
  %mark.addr.4277 = phi ptr [ %incdec.ptr184, %land.end180.thread ], [ %mark.addr.2, %for.cond152.preheader ]
  %items.3276 = phi i32 [ %dec183, %land.end180.thread ], [ %dec105, %for.cond152.preheader ]
  call void @llvm.dbg.value(metadata ptr %mark.addr.4277, metadata !2075, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 %items.3276, metadata !2078, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %len156) #6, !dbg !2177
  %41 = load ptr, ptr %mark.addr.4277, align 8, !dbg !2178
  %sv_flags158 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 2, !dbg !2178
  %42 = load i32, ptr %sv_flags158, align 4, !dbg !2178
  %and159 = and i32 %42, 2098176, !dbg !2178
  %cmp160 = icmp eq i32 %and159, 1024, !dbg !2178
  br i1 %cmp160, label %cond.true162, label %cond.false167, !dbg !2178

cond.true162:                                     ; preds = %for.body155
  %43 = load ptr, ptr %41, align 8, !dbg !2178
  %xpv_cur164 = getelementptr inbounds %struct.xpv, ptr %43, i64 0, i32 2, !dbg !2178
  %44 = load i64, ptr %xpv_cur164, align 8, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %44, metadata !2096, metadata !DIExpression()), !dbg !2179
  store i64 %44, ptr %len156, align 8, !dbg !2178
  %sv_u165 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 3, !dbg !2178
  %45 = load ptr, ptr %sv_u165, align 8, !dbg !2178
  br label %cond.end169, !dbg !2178

cond.false167:                                    ; preds = %for.body155
  call void @llvm.dbg.value(metadata ptr %len156, metadata !2096, metadata !DIExpression(DW_OP_deref)), !dbg !2179
  %call168 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %41, ptr noundef nonnull %len156, i32 noundef 34) #6, !dbg !2178
  %.pre283 = load i64, ptr %len156, align 8, !dbg !2180
  %.pre284 = load ptr, ptr %mark.addr.4277, align 8, !dbg !2180
  %sv_flags171.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre284, i64 0, i32 2
  %.pre285 = load i32, ptr %sv_flags171.phi.trans.insert, align 4, !dbg !2180
  br label %cond.end169, !dbg !2178

cond.end169:                                      ; preds = %cond.false167, %cond.true162
  %46 = phi i32 [ %42, %cond.true162 ], [ %.pre285, %cond.false167 ], !dbg !2180
  %47 = phi i64 [ %44, %cond.true162 ], [ %.pre283, %cond.false167 ], !dbg !2180
  %cond170 = phi ptr [ %45, %cond.true162 ], [ %call168, %cond.false167 ], !dbg !2178
  call void @llvm.dbg.value(metadata ptr %cond170, metadata !2101, metadata !DIExpression()), !dbg !2179
  call void @llvm.dbg.value(metadata i64 %47, metadata !2096, metadata !DIExpression()), !dbg !2179
  %and172 = and i32 %46, 536870912, !dbg !2180
  %tobool173.not = icmp eq i32 %and172, 0, !dbg !2180
  br i1 %tobool173.not, label %land.end180.thread, label %land.end180, !dbg !2180

land.end180:                                      ; preds = %cond.end169
  %48 = load ptr, ptr @PL_curcop, align 8, !dbg !2180
  %cop_hints175 = getelementptr inbounds %struct.cop, ptr %48, i64 0, i32 10, !dbg !2180
  %49 = load i32, ptr %cop_hints175, align 8, !dbg !2180
  %and177 = and i32 %49, 8, !dbg !2180
  %tobool178.not = icmp eq i32 %and177, 0, !dbg !2180
  %spec.select265 = select i1 %tobool178.not, i32 32768, i32 16384, !dbg !2180
  br label %land.end180.thread, !dbg !2180

land.end180.thread:                               ; preds = %land.end180, %cond.end169
  %50 = phi i32 [ 16384, %cond.end169 ], [ %spec.select265, %land.end180 ]
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %sv, ptr noundef %cond170, i64 noundef %47, i32 noundef %50) #6, !dbg !2180
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %len156) #6, !dbg !2181
  %dec183 = add nsw i32 %items.3276, -1, !dbg !2182
  call void @llvm.dbg.value(metadata i32 %dec183, metadata !2078, metadata !DIExpression()), !dbg !2102
  %incdec.ptr184 = getelementptr inbounds ptr, ptr %mark.addr.4277, i64 1, !dbg !2183
  call void @llvm.dbg.value(metadata ptr %incdec.ptr184, metadata !2075, metadata !DIExpression()), !dbg !2102
  %cmp153 = icmp sgt i32 %items.3276, 1, !dbg !2161
  br i1 %cmp153, label %for.body155, label %do.body187, !dbg !2162, !llvm.loop !2184

do.body187:                                       ; preds = %land.end148.thread, %land.end180.thread, %land.end, %for.cond152.preheader
  %51 = load i32, ptr %sv_flags9, align 4, !dbg !2186
  %and189 = and i32 %51, 4194304, !dbg !2186
  %tobool190.not = icmp eq i32 %and189, 0, !dbg !2186
  br i1 %tobool190.not, label %do.end197, label %if.then193, !dbg !2189

if.then193:                                       ; preds = %do.body187
  %call194 = call i32 @Perl_mg_set(ptr noundef nonnull %sv) #6, !dbg !2186
  br label %do.end197, !dbg !2186

do.end197:                                        ; preds = %do.body187, %if.then193
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %delimlen) #6, !dbg !2190
  ret void, !dbg !2190
}

declare !dbg !2191 void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2194 ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2197 void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2200 void @Perl_sv_untaint(ptr noundef) local_unnamed_addr #2

declare !dbg !2203 void @Perl_sv_catsv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2206 void @Perl_sv_catpvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !2209 i32 @Perl_mg_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_sprintf(ptr noundef %sv, i32 noundef %len, ptr noundef %sarg) local_unnamed_addr #0 !dbg !2212 {
entry:
  %patlen = alloca i64, align 8
  %do_taint = alloca i8, align 1
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2216, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %len, metadata !2217, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %sarg, metadata !2218, metadata !DIExpression()), !dbg !2222
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %patlen) #6, !dbg !2223
  %0 = load ptr, ptr %sarg, align 8, !dbg !2224
  %sv_flags = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2, !dbg !2224
  %1 = load i32, ptr %sv_flags, align 4, !dbg !2224
  %and = and i32 %1, 2098176, !dbg !2224
  %cmp = icmp eq i32 %and, 1024, !dbg !2224
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2224

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %0, align 8, !dbg !2224
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %2, i64 0, i32 2, !dbg !2224
  %3 = load i64, ptr %xpv_cur, align 8, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !2219, metadata !DIExpression()), !dbg !2222
  store i64 %3, ptr %patlen, align 8, !dbg !2224
  %sv_u = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3, !dbg !2224
  %4 = load ptr, ptr %sv_u, align 8, !dbg !2224
  br label %cond.end, !dbg !2224

cond.false:                                       ; preds = %entry
  call void @llvm.dbg.value(metadata ptr %patlen, metadata !2219, metadata !DIExpression(DW_OP_deref)), !dbg !2222
  %call = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %0, ptr noundef nonnull %patlen, i32 noundef 34) #6, !dbg !2224
  %.pre = load ptr, ptr %sarg, align 8, !dbg !2225
  %sv_flags1.phi.trans.insert = getelementptr inbounds %struct.sv, ptr %.pre, i64 0, i32 2
  %.pre73 = load i32, ptr %sv_flags1.phi.trans.insert, align 4, !dbg !2225
  br label %cond.end, !dbg !2224

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi i32 [ %1, %cond.true ], [ %.pre73, %cond.false ], !dbg !2225
  %6 = phi ptr [ %0, %cond.true ], [ %.pre, %cond.false ], !dbg !2225
  %cond = phi ptr [ %4, %cond.true ], [ %call, %cond.false ], !dbg !2224
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2220, metadata !DIExpression()), !dbg !2222
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %do_taint) #6, !dbg !2227
  call void @llvm.dbg.value(metadata i8 0, metadata !2221, metadata !DIExpression()), !dbg !2222
  store i8 0, ptr %do_taint, align 1, !dbg !2228
  %and2 = and i32 %5, 14680064, !dbg !2225
  %tobool.not = icmp eq i32 %and2, 0, !dbg !2225
  br i1 %tobool.not, label %if.end28, label %land.lhs.true, !dbg !2225

land.lhs.true:                                    ; preds = %cond.end
  %call3 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %6) #6, !dbg !2225
  %call3.not = xor i1 %call3, true, !dbg !2229
  %7 = load i8, ptr @PL_tainting, align 1
  %tobool4.not = icmp eq i8 %7, 0
  %or.cond = select i1 %call3.not, i1 true, i1 %tobool4.not, !dbg !2229
  br i1 %or.cond, label %if.end28, label %if.then7, !dbg !2229

if.then7:                                         ; preds = %land.lhs.true
  %8 = load ptr, ptr @PL_op, align 8, !dbg !2230
  %tobool8.not = icmp eq ptr %8, null, !dbg !2230
  br i1 %tobool8.not, label %cond.end26, label %land.lhs.true9, !dbg !2230

land.lhs.true9:                                   ; preds = %if.then7
  %op_type = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 4, !dbg !2230
  %bf.load = load i16, ptr %op_type, align 8, !dbg !2230
  %bf.clear = and i16 %bf.load, 511, !dbg !2230
  %cmp10 = icmp ult i16 %bf.clear, 396, !dbg !2230
  br i1 %cmp10, label %cond.true11, label %cond.end26, !dbg !2230

cond.true11:                                      ; preds = %land.lhs.true9
  %cmp16 = icmp eq i16 %bf.clear, 237, !dbg !2230
  br i1 %cmp16, label %cond.end26, label %cond.false18, !dbg !2230

cond.false18:                                     ; preds = %cond.true11
  %idxprom = zext i16 %bf.clear to i64, !dbg !2230
  %arrayidx = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %idxprom, !dbg !2230
  %9 = load ptr, ptr %arrayidx, align 8, !dbg !2230
  br label %cond.end26, !dbg !2230

cond.end26:                                       ; preds = %if.then7, %land.lhs.true9, %cond.false18, %cond.true11
  %cond27 = phi ptr [ %9, %cond.false18 ], [ @.str.1, %cond.true11 ], [ @.str.2, %land.lhs.true9 ], [ @.str.2, %if.then7 ], !dbg !2230
  call void @Perl_taint_proper(ptr noundef null, ptr noundef %cond27) #6, !dbg !2230
  br label %if.end28, !dbg !2230

if.end28:                                         ; preds = %cond.end26, %land.lhs.true, %cond.end
  %sv_flags29 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2233
  %10 = load i32, ptr %sv_flags29, align 4, !dbg !2233
  %and30 = and i32 %10, -536870913, !dbg !2233
  store i32 %and30, ptr %sv_flags29, align 4, !dbg !2233
  %11 = load ptr, ptr %sarg, align 8, !dbg !2234
  %sv_flags31 = getelementptr inbounds %struct.sv, ptr %11, i64 0, i32 2, !dbg !2234
  %12 = load i32, ptr %sv_flags31, align 4, !dbg !2234
  %and32 = and i32 %12, 536870912, !dbg !2234
  %tobool33.not = icmp eq i32 %and32, 0, !dbg !2234
  br i1 %tobool33.not, label %if.end39, label %land.lhs.true34, !dbg !2234

land.lhs.true34:                                  ; preds = %if.end28
  %13 = load ptr, ptr @PL_curcop, align 8, !dbg !2234
  %cop_hints = getelementptr inbounds %struct.cop, ptr %13, i64 0, i32 10, !dbg !2234
  %14 = load i32, ptr %cop_hints, align 8, !dbg !2234
  %and35 = and i32 %14, 8, !dbg !2234
  %tobool36.not = icmp eq i32 %and35, 0, !dbg !2234
  br i1 %tobool36.not, label %if.then37, label %if.end39, !dbg !2236

if.then37:                                        ; preds = %land.lhs.true34
  %or = or i32 %10, 536870912, !dbg !2237
  store i32 %or, ptr %sv_flags29, align 4, !dbg !2237
  br label %if.end39, !dbg !2237

if.end39:                                         ; preds = %if.then37, %land.lhs.true34, %if.end28
  %15 = load i64, ptr %patlen, align 8, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %15, metadata !2219, metadata !DIExpression()), !dbg !2222
  %add.ptr40 = getelementptr inbounds ptr, ptr %sarg, i64 1, !dbg !2238
  %sub = add nsw i32 %len, -1, !dbg !2238
  call void @llvm.dbg.value(metadata ptr %do_taint, metadata !2221, metadata !DIExpression(DW_OP_deref)), !dbg !2222
  call void @Perl_sv_vsetpvfn(ptr noundef nonnull %sv, ptr noundef %cond, i64 noundef %15, ptr noundef null, ptr noundef nonnull %add.ptr40, i32 noundef %sub, ptr noundef nonnull %do_taint) #6, !dbg !2238
  %16 = load i32, ptr %sv_flags29, align 4, !dbg !2239
  %and42 = and i32 %16, 4194304, !dbg !2239
  %tobool43.not = icmp eq i32 %and42, 0, !dbg !2239
  br i1 %tobool43.not, label %do.end, label %if.then46, !dbg !2242

if.then46:                                        ; preds = %if.end39
  %call47 = call i32 @Perl_mg_set(ptr noundef nonnull %sv) #6, !dbg !2239
  br label %do.end, !dbg !2239

do.end:                                           ; preds = %if.end39, %if.then46
  %17 = load i8, ptr %do_taint, align 1, !dbg !2243, !range !2143
  call void @llvm.dbg.value(metadata i8 %17, metadata !2221, metadata !DIExpression()), !dbg !2222
  %tobool49.not = icmp eq i8 %17, 0, !dbg !2243
  %18 = load i8, ptr @PL_tainting, align 1
  %tobool52.not = icmp eq i8 %18, 0
  %or.cond72 = select i1 %tobool49.not, i1 true, i1 %tobool52.not, !dbg !2245
  br i1 %or.cond72, label %if.end59, label %if.then55, !dbg !2245

if.then55:                                        ; preds = %do.end
  call void @Perl_sv_magic(ptr noundef nonnull %sv, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #6, !dbg !2246
  br label %if.end59, !dbg !2246

if.end59:                                         ; preds = %if.then55, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %do_taint) #6, !dbg !2250
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %patlen) #6, !dbg !2250
  ret void, !dbg !2250
}

declare !dbg !2251 zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

declare !dbg !2254 void @Perl_taint_proper(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2257 void @Perl_sv_vsetpvfn(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !2276 void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @Perl_do_vecget(ptr noundef %sv, i64 noundef %offset, i32 noundef %size) local_unnamed_addr #0 !dbg !2279 {
entry:
  %srclen = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2283, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %offset, metadata !2284, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 %size, metadata !2285, metadata !DIExpression()), !dbg !2293
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %srclen) #6, !dbg !2294
  call void @llvm.dbg.value(metadata i64 0, metadata !2289, metadata !DIExpression()), !dbg !2293
  %0 = load ptr, ptr @PL_op, align 8, !dbg !2295
  %op_flags = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 5, !dbg !2296
  %1 = load i8, ptr %op_flags, align 2, !dbg !2296
  %2 = and i8 %1, 32, !dbg !2297
  %tobool.not = icmp eq i8 %2, 0, !dbg !2297
  br i1 %tobool.not, label %lor.rhs, label %lor.end.thread, !dbg !2298

lor.rhs:                                          ; preds = %entry
  %op_private = getelementptr inbounds %struct.op, ptr %0, i64 0, i32 6, !dbg !2299
  %3 = load i8, ptr %op_private, align 1, !dbg !2299
  %4 = and i8 %3, 8, !dbg !2299
  %tobool3.not = icmp eq i8 %4, 0, !dbg !2299
  br i1 %tobool3.not, label %lor.end.thread546, label %lor.end, !dbg !2299

lor.end:                                          ; preds = %lor.rhs
  %call = tail call i32 @Perl_is_lvalue_sub() #6, !dbg !2299
  %tobool4.not = icmp eq i32 %call, 0, !dbg !2299
  br i1 %tobool4.not, label %lor.end.thread546, label %lor.end.thread, !dbg !2300

lor.end.thread:                                   ; preds = %entry, %lor.end
  br label %lor.end.thread546, !dbg !2300

lor.end.thread546:                                ; preds = %lor.rhs, %lor.end, %lor.end.thread
  %5 = phi i32 [ 2048, %lor.end.thread ], [ 0, %lor.end ], [ 0, %lor.rhs ]
  call void @llvm.dbg.value(metadata i32 %5, metadata !2290, metadata !DIExpression()), !dbg !2293
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2301
  %6 = load i32, ptr %sv_flags, align 4, !dbg !2301
  %and5 = and i32 %6, 2098176, !dbg !2301
  %cmp = icmp eq i32 %and5, 1024, !dbg !2301
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2301

cond.true:                                        ; preds = %lor.end.thread546
  %7 = load ptr, ptr %sv, align 8, !dbg !2301
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %7, i64 0, i32 2, !dbg !2301
  %8 = load i64, ptr %xpv_cur, align 8, !dbg !2301
  call void @llvm.dbg.value(metadata i64 %8, metadata !2286, metadata !DIExpression()), !dbg !2293
  store i64 %8, ptr %srclen, align 8, !dbg !2301
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !2301
  %9 = load ptr, ptr %sv_u, align 8, !dbg !2301
  br label %cond.end, !dbg !2301

cond.false:                                       ; preds = %lor.end.thread546
  %or = or i32 %5, 2, !dbg !2301
  call void @llvm.dbg.value(metadata ptr %srclen, metadata !2286, metadata !DIExpression(DW_OP_deref)), !dbg !2293
  %call7 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %srclen, i32 noundef %or) #6, !dbg !2301
  br label %cond.end, !dbg !2301

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi ptr [ %9, %cond.true ], [ %call7, %cond.false ], !dbg !2301
  call void @llvm.dbg.value(metadata ptr %cond8, metadata !2291, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 0, metadata !2292, metadata !DIExpression()), !dbg !2293
  %tobool9.not = icmp eq ptr %cond8, null, !dbg !2302
  %spec.select = select i1 %tobool9.not, ptr @.str, ptr %cond8, !dbg !2304
  call void @llvm.dbg.value(metadata ptr %spec.select, metadata !2291, metadata !DIExpression()), !dbg !2293
  %cmp10 = icmp slt i64 %offset, 0, !dbg !2305
  br i1 %cmp10, label %cleanup, label %if.end13, !dbg !2307

if.end13:                                         ; preds = %cond.end
  %cmp14 = icmp sgt i32 %size, 0, !dbg !2308
  %10 = call i32 @llvm.ctpop.i32(i32 %size), !range !2310
  %tobool17.not = icmp ult i32 %10, 2
  %or.cond = and i1 %cmp14, %tobool17.not, !dbg !2311
  br i1 %or.cond, label %if.end19, label %if.then18, !dbg !2311

if.then18:                                        ; preds = %if.end13
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #6, !dbg !2312
  br label %if.end19, !dbg !2312

if.end19:                                         ; preds = %if.end13, %if.then18
  %11 = load i32, ptr %sv_flags, align 4, !dbg !2313
  %and21 = and i32 %11, 536870912, !dbg !2313
  %tobool22.not = icmp eq i32 %and21, 0, !dbg !2313
  br i1 %tobool22.not, label %if.end37, label %if.then23, !dbg !2315

if.then23:                                        ; preds = %if.end19
  %call24 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %sv, i1 noundef zeroext true) #6, !dbg !2316
  %12 = load i32, ptr %sv_flags, align 4, !dbg !2318
  %and26 = and i32 %12, 2098176, !dbg !2318
  %cmp27 = icmp eq i32 %and26, 1024, !dbg !2318
  br i1 %cmp27, label %cond.true29, label %cond.false33, !dbg !2318

cond.true29:                                      ; preds = %if.then23
  %13 = load ptr, ptr %sv, align 8, !dbg !2318
  %xpv_cur31 = getelementptr inbounds %struct.xpv, ptr %13, i64 0, i32 2, !dbg !2318
  %14 = load i64, ptr %xpv_cur31, align 8, !dbg !2318
  call void @llvm.dbg.value(metadata i64 %14, metadata !2286, metadata !DIExpression()), !dbg !2293
  store i64 %14, ptr %srclen, align 8, !dbg !2318
  %sv_u32 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !2318
  %15 = load ptr, ptr %sv_u32, align 8, !dbg !2318
  br label %if.end37, !dbg !2318

cond.false33:                                     ; preds = %if.then23
  call void @llvm.dbg.value(metadata ptr %srclen, metadata !2286, metadata !DIExpression(DW_OP_deref)), !dbg !2293
  %call34 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %sv, ptr noundef nonnull %srclen, i32 noundef %5) #6, !dbg !2318
  br label %if.end37, !dbg !2318

if.end37:                                         ; preds = %cond.true29, %cond.false33, %if.end19
  %s.1 = phi ptr [ %spec.select, %if.end19 ], [ %15, %cond.true29 ], [ %call34, %cond.false33 ], !dbg !2293
  call void @llvm.dbg.value(metadata ptr %s.1, metadata !2291, metadata !DIExpression()), !dbg !2293
  %cmp38 = icmp slt i32 %size, 8, !dbg !2319
  br i1 %cmp38, label %if.then40, label %if.else, !dbg !2321

if.then40:                                        ; preds = %if.end37
  %rem547 = and i64 %offset, 7, !dbg !2322
  %conv41 = sext i32 %size to i64, !dbg !2324
  %mul = mul nsw i64 %rem547, %conv41, !dbg !2325
  %rem42 = srem i64 %mul, 8, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %rem42, metadata !2289, metadata !DIExpression()), !dbg !2293
  %div = sdiv i32 8, %size, !dbg !2327
  %conv43 = sext i32 %div to i64, !dbg !2328
  %div44 = sdiv i64 %offset, %conv43, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %div44, metadata !2288, metadata !DIExpression()), !dbg !2293
  br label %if.end53, !dbg !2330

if.else:                                          ; preds = %if.end37
  %cmp45.not = icmp eq i32 %size, 8, !dbg !2331
  br i1 %cmp45.not, label %if.end53, label %if.then47, !dbg !2333

if.then47:                                        ; preds = %if.else
  %div48548549 = lshr i32 %size, 3, !dbg !2334
  %16 = zext i32 %div48548549 to i64
  %mul50 = mul nsw i64 %16, %offset, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %mul50, metadata !2288, metadata !DIExpression()), !dbg !2293
  br label %if.end53, !dbg !2336

if.end53:                                         ; preds = %if.else, %if.then47, %if.then40
  %uoffset.0 = phi i64 [ %div44, %if.then40 ], [ %mul50, %if.then47 ], [ %offset, %if.else ], !dbg !2337
  %bitoffs.0 = phi i64 [ %rem42, %if.then40 ], [ 0, %if.then47 ], [ 0, %if.else ], !dbg !2293
  call void @llvm.dbg.value(metadata i64 %bitoffs.0, metadata !2289, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i64 %uoffset.0, metadata !2288, metadata !DIExpression()), !dbg !2293
  %conv54 = sext i32 %size to i64, !dbg !2338
  %add = add nsw i64 %conv54, 7, !dbg !2339
  %add55 = add nsw i64 %add, %bitoffs.0, !dbg !2340
  %div56545 = lshr i64 %add55, 3, !dbg !2341
  %add57 = add i64 %div56545, %uoffset.0, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %add57, metadata !2287, metadata !DIExpression()), !dbg !2293
  %17 = load i64, ptr %srclen, align 8, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %17, metadata !2286, metadata !DIExpression()), !dbg !2293
  %cmp58 = icmp ugt i64 %add57, %17, !dbg !2345
  br i1 %cmp58, label %if.then60, label %if.else295, !dbg !2346

if.then60:                                        ; preds = %if.end53
  %cmp61 = icmp slt i32 %size, 9, !dbg !2347
  br i1 %cmp61, label %cleanup, label %if.else64, !dbg !2350

if.else64:                                        ; preds = %if.then60
  switch i32 %size, label %cleanup [
    i32 16, label %if.then67
    i32 32, label %if.then77
    i32 64, label %if.then123
  ], !dbg !2351

if.then67:                                        ; preds = %if.else64
  %cmp68.not = icmp ult i64 %uoffset.0, %17, !dbg !2353
  br i1 %cmp68.not, label %if.else71, label %cleanup, !dbg !2357

if.else71:                                        ; preds = %if.then67
  %arrayidx = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2358
  %18 = load i8, ptr %arrayidx, align 1, !dbg !2358
  %conv72 = zext i8 %18 to i64, !dbg !2359
  %shl = shl nuw nsw i64 %conv72, 8, !dbg !2360
  call void @llvm.dbg.value(metadata i64 %shl, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup

if.then77:                                        ; preds = %if.else64
  %cmp78.not = icmp ult i64 %uoffset.0, %17, !dbg !2361
  br i1 %cmp78.not, label %if.else81, label %cleanup, !dbg !2365

if.else81:                                        ; preds = %if.then77
  %add82 = add nuw i64 %uoffset.0, 1, !dbg !2366
  %cmp83.not = icmp ult i64 %add82, %17, !dbg !2368
  br i1 %cmp83.not, label %if.else89, label %if.then85, !dbg !2369

if.then85:                                        ; preds = %if.else81
  %arrayidx86 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2370
  %19 = load i8, ptr %arrayidx86, align 1, !dbg !2370
  %conv87 = zext i8 %19 to i64, !dbg !2371
  %shl88 = shl nuw nsw i64 %conv87, 24, !dbg !2372
  call void @llvm.dbg.value(metadata i64 %shl88, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2373

if.else89:                                        ; preds = %if.else81
  %add90 = add nuw i64 %uoffset.0, 2, !dbg !2374
  %cmp91.not = icmp ult i64 %add90, %17, !dbg !2376
  %arrayidx103 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2377
  %20 = load i8, ptr %arrayidx103, align 1, !dbg !2377
  %conv104 = zext i8 %20 to i64, !dbg !2377
  %shl105 = shl nuw nsw i64 %conv104, 24, !dbg !2377
  %arrayidx107 = getelementptr inbounds i8, ptr %s.1, i64 %add82, !dbg !2377
  %21 = load i8, ptr %arrayidx107, align 1, !dbg !2377
  %conv108 = zext i8 %21 to i64, !dbg !2377
  %shl109 = shl nuw nsw i64 %conv108, 16, !dbg !2377
  %add110 = or i64 %shl109, %shl105, !dbg !2377
  br i1 %cmp91.not, label %if.else102, label %cleanup, !dbg !2378

if.else102:                                       ; preds = %if.else89
  %arrayidx112 = getelementptr inbounds i8, ptr %s.1, i64 %add90, !dbg !2379
  %22 = load i8, ptr %arrayidx112, align 1, !dbg !2379
  %conv113 = zext i8 %22 to i64, !dbg !2379
  %shl114 = shl nuw nsw i64 %conv113, 8, !dbg !2380
  %add116 = or i64 %add110, %shl114, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %add116, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup

if.then123:                                       ; preds = %if.else64
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.4) #6, !dbg !2382
  %23 = load i64, ptr %srclen, align 8, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %23, metadata !2286, metadata !DIExpression()), !dbg !2293
  %cmp124.not = icmp ult i64 %uoffset.0, %23, !dbg !2387
  br i1 %cmp124.not, label %if.else127, label %cleanup, !dbg !2388

if.else127:                                       ; preds = %if.then123
  %add128 = add nuw i64 %uoffset.0, 1, !dbg !2389
  %cmp129.not = icmp ult i64 %add128, %23, !dbg !2391
  br i1 %cmp129.not, label %if.else135, label %if.then131, !dbg !2392

if.then131:                                       ; preds = %if.else127
  %arrayidx132 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2393
  %24 = load i8, ptr %arrayidx132, align 1, !dbg !2393
  %conv133 = zext i8 %24 to i64, !dbg !2394
  %shl134 = shl nuw i64 %conv133, 56, !dbg !2395
  call void @llvm.dbg.value(metadata i64 %shl134, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2396

if.else135:                                       ; preds = %if.else127
  %add136 = add nuw i64 %uoffset.0, 2, !dbg !2397
  %cmp137.not = icmp ult i64 %add136, %23, !dbg !2399
  br i1 %cmp137.not, label %if.else148, label %if.then139, !dbg !2400

if.then139:                                       ; preds = %if.else135
  %arrayidx140 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2401
  %25 = load i8, ptr %arrayidx140, align 1, !dbg !2401
  %conv141 = zext i8 %25 to i64, !dbg !2402
  %shl142 = shl nuw i64 %conv141, 56, !dbg !2403
  %arrayidx144 = getelementptr inbounds i8, ptr %s.1, i64 %add128, !dbg !2404
  %26 = load i8, ptr %arrayidx144, align 1, !dbg !2404
  %conv145 = zext i8 %26 to i64, !dbg !2405
  %shl146 = shl nuw nsw i64 %conv145, 48, !dbg !2406
  %add147 = or i64 %shl146, %shl142, !dbg !2407
  call void @llvm.dbg.value(metadata i64 %add147, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2408

if.else148:                                       ; preds = %if.else135
  %add149 = add nuw i64 %uoffset.0, 3, !dbg !2409
  %cmp150.not = icmp ult i64 %add149, %23, !dbg !2411
  br i1 %cmp150.not, label %if.else166, label %if.then152, !dbg !2412

if.then152:                                       ; preds = %if.else148
  %arrayidx153 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2413
  %27 = load i8, ptr %arrayidx153, align 1, !dbg !2413
  %conv154 = zext i8 %27 to i64, !dbg !2414
  %shl155 = shl nuw i64 %conv154, 56, !dbg !2415
  %arrayidx157 = getelementptr inbounds i8, ptr %s.1, i64 %add128, !dbg !2416
  %28 = load i8, ptr %arrayidx157, align 1, !dbg !2416
  %conv158 = zext i8 %28 to i64, !dbg !2417
  %shl159 = shl nuw nsw i64 %conv158, 48, !dbg !2418
  %add160 = or i64 %shl159, %shl155, !dbg !2419
  %arrayidx162 = getelementptr inbounds i8, ptr %s.1, i64 %add136, !dbg !2420
  %29 = load i8, ptr %arrayidx162, align 1, !dbg !2420
  %conv163 = zext i8 %29 to i64, !dbg !2421
  %shl164 = shl nuw nsw i64 %conv163, 40, !dbg !2422
  %add165 = or i64 %add160, %shl164, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %add165, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2424

if.else166:                                       ; preds = %if.else148
  %add167 = add nuw i64 %uoffset.0, 4, !dbg !2425
  %cmp168.not = icmp ult i64 %add167, %23, !dbg !2427
  br i1 %cmp168.not, label %if.else189, label %if.then170, !dbg !2428

if.then170:                                       ; preds = %if.else166
  %arrayidx171 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2429
  %30 = load i8, ptr %arrayidx171, align 1, !dbg !2429
  %conv172 = zext i8 %30 to i64, !dbg !2430
  %shl173 = shl nuw i64 %conv172, 56, !dbg !2431
  %arrayidx175 = getelementptr inbounds i8, ptr %s.1, i64 %add128, !dbg !2432
  %31 = load i8, ptr %arrayidx175, align 1, !dbg !2432
  %conv176 = zext i8 %31 to i64, !dbg !2433
  %shl177 = shl nuw nsw i64 %conv176, 48, !dbg !2434
  %add178 = or i64 %shl177, %shl173, !dbg !2435
  %arrayidx180 = getelementptr inbounds i8, ptr %s.1, i64 %add136, !dbg !2436
  %32 = load i8, ptr %arrayidx180, align 1, !dbg !2436
  %conv181 = zext i8 %32 to i64, !dbg !2437
  %shl182 = shl nuw nsw i64 %conv181, 40, !dbg !2438
  %add183 = or i64 %add178, %shl182, !dbg !2439
  %arrayidx185 = getelementptr inbounds i8, ptr %s.1, i64 %add149, !dbg !2440
  %33 = load i8, ptr %arrayidx185, align 1, !dbg !2440
  %conv186 = zext i8 %33 to i64, !dbg !2441
  %shl187 = shl nuw nsw i64 %conv186, 32, !dbg !2442
  %add188 = or i64 %add183, %shl187, !dbg !2443
  call void @llvm.dbg.value(metadata i64 %add188, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2444

if.else189:                                       ; preds = %if.else166
  %add190 = add nuw i64 %uoffset.0, 5, !dbg !2445
  %cmp191.not = icmp ult i64 %add190, %23, !dbg !2447
  br i1 %cmp191.not, label %if.else217, label %if.then193, !dbg !2448

if.then193:                                       ; preds = %if.else189
  %arrayidx194 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2449
  %34 = load i8, ptr %arrayidx194, align 1, !dbg !2449
  %conv195 = zext i8 %34 to i64, !dbg !2450
  %shl196 = shl nuw i64 %conv195, 56, !dbg !2451
  %arrayidx198 = getelementptr inbounds i8, ptr %s.1, i64 %add128, !dbg !2452
  %35 = load i8, ptr %arrayidx198, align 1, !dbg !2452
  %conv199 = zext i8 %35 to i64, !dbg !2453
  %shl200 = shl nuw nsw i64 %conv199, 48, !dbg !2454
  %add201 = or i64 %shl200, %shl196, !dbg !2455
  %arrayidx203 = getelementptr inbounds i8, ptr %s.1, i64 %add136, !dbg !2456
  %36 = load i8, ptr %arrayidx203, align 1, !dbg !2456
  %conv204 = zext i8 %36 to i64, !dbg !2457
  %shl205 = shl nuw nsw i64 %conv204, 40, !dbg !2458
  %add206 = or i64 %add201, %shl205, !dbg !2459
  %arrayidx208 = getelementptr inbounds i8, ptr %s.1, i64 %add149, !dbg !2460
  %37 = load i8, ptr %arrayidx208, align 1, !dbg !2460
  %conv209 = zext i8 %37 to i64, !dbg !2461
  %shl210 = shl nuw nsw i64 %conv209, 32, !dbg !2462
  %add211 = or i64 %add206, %shl210, !dbg !2463
  %arrayidx213 = getelementptr inbounds i8, ptr %s.1, i64 %add167, !dbg !2464
  %38 = load i8, ptr %arrayidx213, align 1, !dbg !2464
  %conv214 = zext i8 %38 to i64, !dbg !2465
  %shl215 = shl nuw nsw i64 %conv214, 24, !dbg !2466
  %add216 = or i64 %add211, %shl215, !dbg !2467
  call void @llvm.dbg.value(metadata i64 %add216, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2468

if.else217:                                       ; preds = %if.else189
  %add218 = add nuw i64 %uoffset.0, 6, !dbg !2469
  %cmp219.not = icmp ult i64 %add218, %23, !dbg !2471
  %arrayidx251 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2472
  %39 = load i8, ptr %arrayidx251, align 1, !dbg !2472
  %conv252 = zext i8 %39 to i64, !dbg !2472
  %shl253 = shl nuw i64 %conv252, 56, !dbg !2472
  %arrayidx255 = getelementptr inbounds i8, ptr %s.1, i64 %add128, !dbg !2472
  %40 = load i8, ptr %arrayidx255, align 1, !dbg !2472
  %conv256 = zext i8 %40 to i64, !dbg !2472
  %shl257 = shl nuw nsw i64 %conv256, 48, !dbg !2472
  %add258 = or i64 %shl257, %shl253, !dbg !2472
  %arrayidx260 = getelementptr inbounds i8, ptr %s.1, i64 %add136, !dbg !2472
  %41 = load i8, ptr %arrayidx260, align 1, !dbg !2472
  %conv261 = zext i8 %41 to i64, !dbg !2472
  %shl262 = shl nuw nsw i64 %conv261, 40, !dbg !2472
  %add263 = or i64 %add258, %shl262, !dbg !2472
  %arrayidx265 = getelementptr inbounds i8, ptr %s.1, i64 %add149, !dbg !2472
  %42 = load i8, ptr %arrayidx265, align 1, !dbg !2472
  %conv266 = zext i8 %42 to i64, !dbg !2472
  %shl267 = shl nuw nsw i64 %conv266, 32, !dbg !2472
  %add268 = or i64 %add263, %shl267, !dbg !2472
  %arrayidx270 = getelementptr inbounds i8, ptr %s.1, i64 %add167, !dbg !2472
  %43 = load i8, ptr %arrayidx270, align 1, !dbg !2472
  %conv271 = zext i8 %43 to i64, !dbg !2472
  %shl272 = shl nuw nsw i64 %conv271, 24, !dbg !2472
  %add273 = or i64 %add268, %shl272, !dbg !2472
  %arrayidx275 = getelementptr inbounds i8, ptr %s.1, i64 %add190, !dbg !2472
  %44 = load i8, ptr %arrayidx275, align 1, !dbg !2472
  %conv276 = zext i8 %44 to i64, !dbg !2472
  %shl277 = shl nuw nsw i64 %conv276, 16, !dbg !2472
  %add278 = or i64 %add273, %shl277, !dbg !2472
  br i1 %cmp219.not, label %if.else250, label %cleanup, !dbg !2473

if.else250:                                       ; preds = %if.else217
  %arrayidx280 = getelementptr inbounds i8, ptr %s.1, i64 %add218, !dbg !2474
  %45 = load i8, ptr %arrayidx280, align 1, !dbg !2474
  %conv281 = zext i8 %45 to i64, !dbg !2475
  %shl282 = shl nuw nsw i64 %conv281, 8, !dbg !2476
  %add283 = or i64 %add278, %shl282, !dbg !2477
  call void @llvm.dbg.value(metadata i64 %add283, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup

if.else295:                                       ; preds = %if.end53
  br i1 %cmp38, label %if.then298, label %if.else305, !dbg !2478

if.then298:                                       ; preds = %if.else295
  %arrayidx299 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2479
  %46 = load i8, ptr %arrayidx299, align 1, !dbg !2479
  %conv300 = zext i8 %46 to i32, !dbg !2479
  %sh_prom = trunc i64 %bitoffs.0 to i32, !dbg !2481
  %shr = lshr i32 %conv300, %sh_prom, !dbg !2481
  %notmask = shl nsw i32 -1, %size, !dbg !2482
  %sub302 = xor i32 %notmask, -1, !dbg !2482
  %and303 = and i32 %shr, %sub302, !dbg !2483
  %47 = zext i32 %and303 to i64
  call void @llvm.dbg.value(metadata i64 %47, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2484

if.else305:                                       ; preds = %if.else295
  %48 = add nsw i32 %size, -8, !dbg !2485
  %49 = call i32 @llvm.fshl.i32(i32 %48, i32 %48, i32 29), !dbg !2485
  switch i32 %49, label %cleanup [
    i32 0, label %if.then308
    i32 1, label %if.then314
    i32 3, label %if.then325
    i32 7, label %if.then347
  ], !dbg !2485

if.then308:                                       ; preds = %if.else305
  %arrayidx309 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2487
  %50 = load i8, ptr %arrayidx309, align 1, !dbg !2487
  %conv310 = zext i8 %50 to i64, !dbg !2487
  call void @llvm.dbg.value(metadata i64 %conv310, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2489

if.then314:                                       ; preds = %if.else305
  %arrayidx315 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2490
  %51 = load i8, ptr %arrayidx315, align 1, !dbg !2490
  %conv316 = zext i8 %51 to i64, !dbg !2492
  %shl317 = shl nuw nsw i64 %conv316, 8, !dbg !2493
  %add318 = add i64 %uoffset.0, 1, !dbg !2494
  %arrayidx319 = getelementptr inbounds i8, ptr %s.1, i64 %add318, !dbg !2495
  %52 = load i8, ptr %arrayidx319, align 1, !dbg !2495
  %conv320 = zext i8 %52 to i64, !dbg !2495
  %add321 = or i64 %shl317, %conv320, !dbg !2496
  call void @llvm.dbg.value(metadata i64 %add321, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2497

if.then325:                                       ; preds = %if.else305
  %arrayidx326 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2498
  %53 = load i8, ptr %arrayidx326, align 1, !dbg !2498
  %conv327 = zext i8 %53 to i64, !dbg !2500
  %shl328 = shl nuw nsw i64 %conv327, 24, !dbg !2501
  %add329 = add i64 %uoffset.0, 1, !dbg !2502
  %arrayidx330 = getelementptr inbounds i8, ptr %s.1, i64 %add329, !dbg !2503
  %54 = load i8, ptr %arrayidx330, align 1, !dbg !2503
  %conv331 = zext i8 %54 to i64, !dbg !2504
  %shl332 = shl nuw nsw i64 %conv331, 16, !dbg !2505
  %add333 = or i64 %shl332, %shl328, !dbg !2506
  %add334 = add i64 %uoffset.0, 2, !dbg !2507
  %arrayidx335 = getelementptr inbounds i8, ptr %s.1, i64 %add334, !dbg !2508
  %55 = load i8, ptr %arrayidx335, align 1, !dbg !2508
  %conv336 = zext i8 %55 to i64, !dbg !2508
  %shl337 = shl nuw nsw i64 %conv336, 8, !dbg !2509
  %add339 = or i64 %add333, %shl337, !dbg !2510
  %add340 = add i64 %uoffset.0, 3, !dbg !2511
  %arrayidx341 = getelementptr inbounds i8, ptr %s.1, i64 %add340, !dbg !2512
  %56 = load i8, ptr %arrayidx341, align 1, !dbg !2512
  %conv342 = zext i8 %56 to i64, !dbg !2512
  %add343 = or i64 %add339, %conv342, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %add343, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2514

if.then347:                                       ; preds = %if.else305
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.4) #6, !dbg !2515
  %arrayidx348 = getelementptr inbounds i8, ptr %s.1, i64 %uoffset.0, !dbg !2518
  %57 = load i8, ptr %arrayidx348, align 1, !dbg !2518
  %conv349 = zext i8 %57 to i64, !dbg !2519
  %shl350 = shl nuw i64 %conv349, 56, !dbg !2520
  %add351 = add i64 %uoffset.0, 1, !dbg !2521
  %arrayidx352 = getelementptr inbounds i8, ptr %s.1, i64 %add351, !dbg !2522
  %58 = load i8, ptr %arrayidx352, align 1, !dbg !2522
  %conv353 = zext i8 %58 to i64, !dbg !2523
  %shl354 = shl nuw nsw i64 %conv353, 48, !dbg !2524
  %add355 = or i64 %shl354, %shl350, !dbg !2525
  %add356 = add i64 %uoffset.0, 2, !dbg !2526
  %arrayidx357 = getelementptr inbounds i8, ptr %s.1, i64 %add356, !dbg !2527
  %59 = load i8, ptr %arrayidx357, align 1, !dbg !2527
  %conv358 = zext i8 %59 to i64, !dbg !2528
  %shl359 = shl nuw nsw i64 %conv358, 40, !dbg !2529
  %add360 = or i64 %add355, %shl359, !dbg !2530
  %add361 = add i64 %uoffset.0, 3, !dbg !2531
  %arrayidx362 = getelementptr inbounds i8, ptr %s.1, i64 %add361, !dbg !2532
  %60 = load i8, ptr %arrayidx362, align 1, !dbg !2532
  %conv363 = zext i8 %60 to i64, !dbg !2533
  %shl364 = shl nuw nsw i64 %conv363, 32, !dbg !2534
  %add365 = or i64 %add360, %shl364, !dbg !2535
  %add366 = add i64 %uoffset.0, 4, !dbg !2536
  %arrayidx367 = getelementptr inbounds i8, ptr %s.1, i64 %add366, !dbg !2537
  %61 = load i8, ptr %arrayidx367, align 1, !dbg !2537
  %conv368 = zext i8 %61 to i64, !dbg !2538
  %shl369 = shl nuw nsw i64 %conv368, 24, !dbg !2539
  %add370 = or i64 %add365, %shl369, !dbg !2540
  %add371 = add i64 %uoffset.0, 5, !dbg !2541
  %arrayidx372 = getelementptr inbounds i8, ptr %s.1, i64 %add371, !dbg !2542
  %62 = load i8, ptr %arrayidx372, align 1, !dbg !2542
  %conv373 = zext i8 %62 to i64, !dbg !2543
  %shl374 = shl nuw nsw i64 %conv373, 16, !dbg !2544
  %add375 = or i64 %add370, %shl374, !dbg !2545
  %add376 = add i64 %uoffset.0, 6, !dbg !2546
  %arrayidx377 = getelementptr inbounds i8, ptr %s.1, i64 %add376, !dbg !2547
  %63 = load i8, ptr %arrayidx377, align 1, !dbg !2547
  %conv378 = zext i8 %63 to i64, !dbg !2547
  %shl379 = shl nuw nsw i64 %conv378, 8, !dbg !2548
  %add381 = or i64 %add375, %shl379, !dbg !2549
  %add382 = add i64 %uoffset.0, 7, !dbg !2550
  %arrayidx383 = getelementptr inbounds i8, ptr %s.1, i64 %add382, !dbg !2551
  %64 = load i8, ptr %arrayidx383, align 1, !dbg !2551
  %conv384 = zext i8 %64 to i64, !dbg !2551
  %add385 = add i64 %add381, %conv384, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %add385, metadata !2292, metadata !DIExpression()), !dbg !2293
  br label %cleanup, !dbg !2553

cleanup:                                          ; preds = %if.else217, %if.else89, %if.else71, %if.then131, %if.then152, %if.then193, %if.else250, %if.then170, %if.then139, %if.else102, %if.then85, %if.then308, %if.then325, %if.then347, %if.then314, %if.then298, %if.then60, %if.then67, %if.then77, %if.else64, %if.then123, %if.else305, %cond.end
  %retval.0 = phi i64 [ 0, %cond.end ], [ %shl, %if.else71 ], [ %shl88, %if.then85 ], [ %add116, %if.else102 ], [ %shl134, %if.then131 ], [ %add147, %if.then139 ], [ %add165, %if.then152 ], [ %add188, %if.then170 ], [ %add216, %if.then193 ], [ %add283, %if.else250 ], [ %47, %if.then298 ], [ %conv310, %if.then308 ], [ %add321, %if.then314 ], [ %add343, %if.then325 ], [ %add385, %if.then347 ], [ 0, %if.then60 ], [ 0, %if.then67 ], [ 0, %if.then77 ], [ 0, %if.else64 ], [ 0, %if.then123 ], [ 0, %if.else305 ], [ %add110, %if.else89 ], [ %add278, %if.else217 ], !dbg !2293
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %srclen) #6, !dbg !2554
  ret i64 %retval.0, !dbg !2554
}

declare !dbg !2555 i32 @Perl_is_lvalue_sub() local_unnamed_addr #2

declare !dbg !2558 void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

declare !dbg !2561 zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare !dbg !2565 void @Perl_ck_warner(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_vecset(ptr noundef %sv) local_unnamed_addr #0 !dbg !2568 {
entry:
  %targlen = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2572, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 0, metadata !2574, metadata !DIExpression()), !dbg !2582
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %targlen) #6, !dbg !2583
  %0 = load ptr, ptr %sv, align 8, !dbg !2584
  %xlv_targ = getelementptr inbounds %struct.xpvlv, ptr %0, i64 0, i32 8, !dbg !2584
  %1 = load ptr, ptr %xlv_targ, align 8, !dbg !2584
  call void @llvm.dbg.value(metadata ptr %1, metadata !2581, metadata !DIExpression()), !dbg !2582
  %tobool.not = icmp eq ptr %1, null, !dbg !2585
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !2587

if.end:                                           ; preds = %entry
  %sv_flags = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2, !dbg !2588
  %2 = load i32, ptr %sv_flags, align 4, !dbg !2588
  %and = and i32 %2, 430018304, !dbg !2588
  %cmp = icmp eq i32 %and, 1024, !dbg !2588
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2588

cond.true:                                        ; preds = %if.end
  %3 = load ptr, ptr %1, align 8, !dbg !2588
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %3, i64 0, i32 2, !dbg !2588
  %4 = load i64, ptr %xpv_cur, align 8, !dbg !2588
  call void @llvm.dbg.value(metadata i64 %4, metadata !2579, metadata !DIExpression()), !dbg !2582
  store i64 %4, ptr %targlen, align 8, !dbg !2588
  %sv_u = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3, !dbg !2588
  %5 = load ptr, ptr %sv_u, align 8, !dbg !2588
  br label %cond.end, !dbg !2588

cond.false:                                       ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %targlen, metadata !2579, metadata !DIExpression(DW_OP_deref)), !dbg !2582
  %call = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %1, ptr noundef nonnull %targlen, i32 noundef 2050) #6, !dbg !2588
  %.pre = load i32, ptr %sv_flags, align 4, !dbg !2589
  br label %cond.end, !dbg !2588

cond.end:                                         ; preds = %cond.false, %cond.true
  %6 = phi i32 [ %2, %cond.true ], [ %.pre, %cond.false ], !dbg !2589
  %cond = phi ptr [ %5, %cond.true ], [ %call, %cond.false ], !dbg !2588
  call void @llvm.dbg.value(metadata ptr %cond, metadata !2576, metadata !DIExpression()), !dbg !2582
  %and3 = and i32 %6, 536870912, !dbg !2589
  %tobool4.not = icmp eq i32 %and3, 0, !dbg !2589
  br i1 %tobool4.not, label %if.end7, label %if.then5, !dbg !2591

if.then5:                                         ; preds = %cond.end
  %call6 = call zeroext i1 @Perl_sv_utf8_downgrade(ptr noundef nonnull %1, i1 noundef zeroext true) #6, !dbg !2592
  %.pre293 = load i32, ptr %sv_flags, align 4, !dbg !2594
  br label %if.end7, !dbg !2595

if.end7:                                          ; preds = %if.then5, %cond.end
  %7 = phi i32 [ %.pre293, %if.then5 ], [ %6, %cond.end ], !dbg !2594
  %and9 = and i32 %7, 1610547455, !dbg !2594
  %or = or i32 %and9, 17408, !dbg !2594
  store i32 %or, ptr %sv_flags, align 4, !dbg !2594
  %sv_flags11 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2596
  %8 = load i32, ptr %sv_flags11, align 4, !dbg !2596
  %and12 = and i32 %8, -2145386240, !dbg !2596
  %cmp13 = icmp eq i32 %and12, -2147483392, !dbg !2596
  br i1 %cmp13, label %cond.true14, label %cond.false16, !dbg !2596

cond.true14:                                      ; preds = %if.end7
  %9 = load ptr, ptr %sv, align 8, !dbg !2596
  %xuv_u = getelementptr inbounds %struct.xpvuv, ptr %9, i64 0, i32 4, !dbg !2596
  %10 = load i64, ptr %xuv_u, align 8, !dbg !2596
  br label %cond.end18, !dbg !2596

cond.false16:                                     ; preds = %if.end7
  %call17 = call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %sv, i32 noundef 2) #6, !dbg !2596
  %.pre294 = load ptr, ptr %sv, align 8, !dbg !2597
  br label %cond.end18, !dbg !2596

cond.end18:                                       ; preds = %cond.false16, %cond.true14
  %11 = phi ptr [ %9, %cond.true14 ], [ %.pre294, %cond.false16 ], !dbg !2597
  %cond19 = phi i64 [ %10, %cond.true14 ], [ %call17, %cond.false16 ], !dbg !2596
  call void @llvm.dbg.value(metadata i64 %cond19, metadata !2577, metadata !DIExpression()), !dbg !2582
  %xlv_targoff_u = getelementptr inbounds %struct.xpvlv, ptr %11, i64 0, i32 6, !dbg !2597
  %12 = load i64, ptr %xlv_targoff_u, align 8, !dbg !2597
  call void @llvm.dbg.value(metadata i64 %12, metadata !2573, metadata !DIExpression()), !dbg !2582
  %cmp21 = icmp slt i64 %12, 0, !dbg !2598
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2600

if.then22:                                        ; preds = %cond.end18
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.5) #6, !dbg !2601
  %.pre295 = load ptr, ptr %sv, align 8, !dbg !2602
  br label %if.end23, !dbg !2601

if.end23:                                         ; preds = %if.then22, %cond.end18
  %13 = phi ptr [ %.pre295, %if.then22 ], [ %11, %cond.end18 ], !dbg !2602
  %xlv_targlen = getelementptr inbounds %struct.xpvlv, ptr %13, i64 0, i32 7, !dbg !2602
  %14 = load i64, ptr %xlv_targlen, align 8, !dbg !2602
  %conv = trunc i64 %14 to i32, !dbg !2602
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2575, metadata !DIExpression()), !dbg !2582
  %cmp25 = icmp sgt i32 %conv, 0, !dbg !2603
  %15 = call i32 @llvm.ctpop.i32(i32 %conv), !range !2310
  %tobool28.not = icmp ult i32 %15, 2
  %or.cond = and i1 %cmp25, %tobool28.not, !dbg !2605
  br i1 %or.cond, label %if.end30, label %if.then29, !dbg !2605

if.then29:                                        ; preds = %if.end23
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.3) #6, !dbg !2606
  br label %if.end30, !dbg !2606

if.end30:                                         ; preds = %if.end23, %if.then29
  %cmp31 = icmp slt i32 %conv, 8, !dbg !2607
  br i1 %cmp31, label %if.then33, label %if.else, !dbg !2609

if.then33:                                        ; preds = %if.end30
  %rem = srem i64 %12, 8, !dbg !2610
  %sext290 = shl i64 %14, 32, !dbg !2612
  %conv34 = ashr exact i64 %sext290, 32, !dbg !2612
  %mul = mul nsw i64 %conv34, %rem, !dbg !2613
  %rem35 = srem i64 %mul, 8, !dbg !2614
  call void @llvm.dbg.value(metadata i64 %rem35, metadata !2574, metadata !DIExpression()), !dbg !2582
  %div = sdiv i32 8, %conv, !dbg !2615
  %conv36 = sext i32 %div to i64, !dbg !2616
  %div37 = sdiv i64 %12, %conv36, !dbg !2617
  call void @llvm.dbg.value(metadata i64 %div37, metadata !2573, metadata !DIExpression()), !dbg !2582
  br label %if.end45, !dbg !2618

if.else:                                          ; preds = %if.end30
  %cmp38.not = icmp eq i32 %conv, 8, !dbg !2619
  br i1 %cmp38.not, label %if.end45, label %if.then40, !dbg !2621

if.then40:                                        ; preds = %if.else
  %div41291292 = lshr i64 %14, 3, !dbg !2622
  %16 = and i64 %div41291292, 536870911
  %mul43 = mul nsw i64 %16, %12, !dbg !2623
  call void @llvm.dbg.value(metadata i64 %mul43, metadata !2573, metadata !DIExpression()), !dbg !2582
  br label %if.end45, !dbg !2624

if.end45:                                         ; preds = %if.else, %if.then40, %if.then33
  %bitoffs.0 = phi i64 [ %rem35, %if.then33 ], [ 0, %if.then40 ], [ 0, %if.else ], !dbg !2582
  %offset.0 = phi i64 [ %div37, %if.then33 ], [ %mul43, %if.then40 ], [ %12, %if.else ], !dbg !2582
  call void @llvm.dbg.value(metadata i64 %offset.0, metadata !2573, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %bitoffs.0, metadata !2574, metadata !DIExpression()), !dbg !2582
  %sext = shl i64 %14, 32, !dbg !2625
  %conv46 = ashr exact i64 %sext, 32, !dbg !2625
  %add = add nsw i64 %conv46, 7, !dbg !2626
  %add47 = add nsw i64 %add, %bitoffs.0, !dbg !2627
  %div48 = sdiv i64 %add47, 8, !dbg !2628
  %add49 = add nsw i64 %div48, %offset.0, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %add49, metadata !2580, metadata !DIExpression()), !dbg !2582
  %17 = load i64, ptr %targlen, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata i64 %17, metadata !2579, metadata !DIExpression()), !dbg !2582
  %cmp50 = icmp ugt i64 %add49, %17, !dbg !2632
  br i1 %cmp50, label %if.then52, label %if.end72, !dbg !2633

if.then52:                                        ; preds = %if.end45
  %18 = load i32, ptr %sv_flags, align 4, !dbg !2634
  %and54 = and i32 %18, 268435456, !dbg !2634
  %tobool55.not = icmp eq i32 %and54, 0, !dbg !2634
  br i1 %tobool55.not, label %lor.lhs.false56, label %if.then52.cond.true61_crit_edge, !dbg !2634

if.then52.cond.true61_crit_edge:                  ; preds = %if.then52
  %.pre297 = add i64 %add49, 1, !dbg !2634
  br label %cond.true61, !dbg !2634

lor.lhs.false56:                                  ; preds = %if.then52
  %19 = load ptr, ptr %1, align 8, !dbg !2634
  %xpv_len_u = getelementptr inbounds %struct.xpv, ptr %19, i64 0, i32 3, !dbg !2634
  %20 = load i64, ptr %xpv_len_u, align 8, !dbg !2634
  %add58 = add i64 %add49, 1, !dbg !2634
  %cmp59 = icmp ult i64 %20, %add58, !dbg !2634
  br i1 %cmp59, label %cond.true61, label %cond.false64, !dbg !2634

cond.true61:                                      ; preds = %if.then52.cond.true61_crit_edge, %lor.lhs.false56
  %add62.pre-phi = phi i64 [ %.pre297, %if.then52.cond.true61_crit_edge ], [ %add58, %lor.lhs.false56 ], !dbg !2634
  %call63 = call ptr @Perl_sv_grow(ptr noundef nonnull %1, i64 noundef %add62.pre-phi) #6, !dbg !2634
  %.pre296 = load i64, ptr %targlen, align 8, !dbg !2636
  br label %cond.end66, !dbg !2634

cond.false64:                                     ; preds = %lor.lhs.false56
  %sv_u65 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3, !dbg !2634
  %21 = load ptr, ptr %sv_u65, align 8, !dbg !2634
  br label %cond.end66, !dbg !2634

cond.end66:                                       ; preds = %cond.false64, %cond.true61
  %sub68.pre-phi = phi i64 [ %add58, %cond.false64 ], [ %add62.pre-phi, %cond.true61 ], !dbg !2636
  %22 = phi i64 [ %17, %cond.false64 ], [ %.pre296, %cond.true61 ], !dbg !2636
  %cond67 = phi ptr [ %21, %cond.false64 ], [ %call63, %cond.true61 ], !dbg !2634
  call void @llvm.dbg.value(metadata ptr %cond67, metadata !2576, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %22, metadata !2579, metadata !DIExpression()), !dbg !2582
  %add.ptr = getelementptr inbounds i8, ptr %cond67, i64 %22, !dbg !2636
  %add69 = sub i64 %sub68.pre-phi, %22, !dbg !2636
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %add69, i1 false), !dbg !2636
  %23 = load ptr, ptr %1, align 8, !dbg !2637
  %xpv_cur71 = getelementptr inbounds %struct.xpv, ptr %23, i64 0, i32 2, !dbg !2637
  store i64 %add49, ptr %xpv_cur71, align 8, !dbg !2637
  br label %if.end72, !dbg !2639

if.end72:                                         ; preds = %cond.end66, %if.end45
  %s.0 = phi ptr [ %cond67, %cond.end66 ], [ %cond, %if.end45 ], !dbg !2582
  call void @llvm.dbg.value(metadata ptr %s.0, metadata !2576, metadata !DIExpression()), !dbg !2582
  br i1 %cmp31, label %if.then75, label %if.else88, !dbg !2640

if.then75:                                        ; preds = %if.end72
  %notmask = shl nsw i32 -1, %conv, !dbg !2641
  %sub76 = xor i32 %notmask, -1, !dbg !2641
  call void @llvm.dbg.value(metadata i32 %sub76, metadata !2578, metadata !DIExpression()), !dbg !2582
  %conv77289 = zext i32 %sub76 to i64, !dbg !2644
  %and78 = and i64 %cond19, %conv77289, !dbg !2645
  call void @llvm.dbg.value(metadata !DIArgList(i64 %cond19, i64 %conv77289), metadata !2577, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2582
  %sh_prom = trunc i64 %bitoffs.0 to i32, !dbg !2646
  %shl79 = shl i32 %sub76, %sh_prom, !dbg !2646
  %arrayidx = getelementptr inbounds i8, ptr %s.0, i64 %offset.0, !dbg !2647
  %24 = load i8, ptr %arrayidx, align 1, !dbg !2648
  %25 = trunc i32 %shl79 to i8, !dbg !2648
  %26 = xor i8 %25, -1, !dbg !2648
  %conv82 = and i8 %24, %26, !dbg !2648
  %shl83 = shl nuw nsw i64 %and78, %bitoffs.0, !dbg !2649
  %27 = trunc i64 %shl83 to i8, !dbg !2650
  %conv87 = or i8 %conv82, %27, !dbg !2650
  store i8 %conv87, ptr %arrayidx, align 1, !dbg !2650
  br label %do.body175, !dbg !2651

if.else88:                                        ; preds = %if.end72
  %28 = add nsw i32 %conv, -8, !dbg !2652
  %29 = call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 29), !dbg !2652
  switch i32 %29, label %do.body175 [
    i32 0, label %if.then91
    i32 1, label %if.then98
    i32 3, label %if.then109
    i32 7, label %if.then131
  ], !dbg !2652

if.then91:                                        ; preds = %if.else88
  %conv93 = trunc i64 %cond19 to i8, !dbg !2654
  %arrayidx94 = getelementptr inbounds i8, ptr %s.0, i64 %offset.0, !dbg !2656
  store i8 %conv93, ptr %arrayidx94, align 1, !dbg !2657
  br label %do.body175, !dbg !2656

if.then98:                                        ; preds = %if.else88
  %shr = lshr i64 %cond19, 8, !dbg !2658
  %conv100 = trunc i64 %shr to i8, !dbg !2661
  %arrayidx101 = getelementptr inbounds i8, ptr %s.0, i64 %offset.0, !dbg !2662
  store i8 %conv100, ptr %arrayidx101, align 1, !dbg !2663
  %conv103 = trunc i64 %cond19 to i8, !dbg !2664
  %add104 = add nsw i64 %offset.0, 1, !dbg !2665
  %arrayidx105 = getelementptr inbounds i8, ptr %s.0, i64 %add104, !dbg !2666
  store i8 %conv103, ptr %arrayidx105, align 1, !dbg !2667
  br label %do.body175, !dbg !2668

if.then109:                                       ; preds = %if.else88
  %shr110 = lshr i64 %cond19, 24, !dbg !2669
  %conv112 = trunc i64 %shr110 to i8, !dbg !2672
  %arrayidx113 = getelementptr inbounds i8, ptr %s.0, i64 %offset.0, !dbg !2673
  store i8 %conv112, ptr %arrayidx113, align 1, !dbg !2674
  %shr114 = lshr i64 %cond19, 16, !dbg !2675
  %conv116 = trunc i64 %shr114 to i8, !dbg !2676
  %add117 = add nsw i64 %offset.0, 1, !dbg !2677
  %arrayidx118 = getelementptr inbounds i8, ptr %s.0, i64 %add117, !dbg !2678
  store i8 %conv116, ptr %arrayidx118, align 1, !dbg !2679
  %shr119 = lshr i64 %cond19, 8, !dbg !2680
  %conv121 = trunc i64 %shr119 to i8, !dbg !2681
  %add122 = add nsw i64 %offset.0, 2, !dbg !2682
  %arrayidx123 = getelementptr inbounds i8, ptr %s.0, i64 %add122, !dbg !2683
  store i8 %conv121, ptr %arrayidx123, align 1, !dbg !2684
  %conv125 = trunc i64 %cond19 to i8, !dbg !2685
  %add126 = add nsw i64 %offset.0, 3, !dbg !2686
  %arrayidx127 = getelementptr inbounds i8, ptr %s.0, i64 %add126, !dbg !2687
  store i8 %conv125, ptr %arrayidx127, align 1, !dbg !2688
  br label %do.body175, !dbg !2689

if.then131:                                       ; preds = %if.else88
  call void (i32, ptr, ...) @Perl_ck_warner(i32 noundef 17, ptr noundef nonnull @.str.4) #6, !dbg !2690
  %shr132 = lshr i64 %cond19, 56, !dbg !2693
  %conv134 = trunc i64 %shr132 to i8, !dbg !2694
  %arrayidx135 = getelementptr inbounds i8, ptr %s.0, i64 %offset.0, !dbg !2695
  store i8 %conv134, ptr %arrayidx135, align 1, !dbg !2696
  %shr136 = lshr i64 %cond19, 48, !dbg !2697
  %conv138 = trunc i64 %shr136 to i8, !dbg !2698
  %add139 = add nsw i64 %offset.0, 1, !dbg !2699
  %arrayidx140 = getelementptr inbounds i8, ptr %s.0, i64 %add139, !dbg !2700
  store i8 %conv138, ptr %arrayidx140, align 1, !dbg !2701
  %shr141 = lshr i64 %cond19, 40, !dbg !2702
  %conv143 = trunc i64 %shr141 to i8, !dbg !2703
  %add144 = add nsw i64 %offset.0, 2, !dbg !2704
  %arrayidx145 = getelementptr inbounds i8, ptr %s.0, i64 %add144, !dbg !2705
  store i8 %conv143, ptr %arrayidx145, align 1, !dbg !2706
  %shr146 = lshr i64 %cond19, 32, !dbg !2707
  %conv148 = trunc i64 %shr146 to i8, !dbg !2708
  %add149 = add nsw i64 %offset.0, 3, !dbg !2709
  %arrayidx150 = getelementptr inbounds i8, ptr %s.0, i64 %add149, !dbg !2710
  store i8 %conv148, ptr %arrayidx150, align 1, !dbg !2711
  %shr151 = lshr i64 %cond19, 24, !dbg !2712
  %conv153 = trunc i64 %shr151 to i8, !dbg !2713
  %add154 = add nsw i64 %offset.0, 4, !dbg !2714
  %arrayidx155 = getelementptr inbounds i8, ptr %s.0, i64 %add154, !dbg !2715
  store i8 %conv153, ptr %arrayidx155, align 1, !dbg !2716
  %shr156 = lshr i64 %cond19, 16, !dbg !2717
  %conv158 = trunc i64 %shr156 to i8, !dbg !2718
  %add159 = add nsw i64 %offset.0, 5, !dbg !2719
  %arrayidx160 = getelementptr inbounds i8, ptr %s.0, i64 %add159, !dbg !2720
  store i8 %conv158, ptr %arrayidx160, align 1, !dbg !2721
  %shr161 = lshr i64 %cond19, 8, !dbg !2722
  %conv163 = trunc i64 %shr161 to i8, !dbg !2723
  %add164 = add nsw i64 %offset.0, 6, !dbg !2724
  %arrayidx165 = getelementptr inbounds i8, ptr %s.0, i64 %add164, !dbg !2725
  store i8 %conv163, ptr %arrayidx165, align 1, !dbg !2726
  %conv167 = trunc i64 %cond19 to i8, !dbg !2727
  %add168 = add nsw i64 %offset.0, 7, !dbg !2728
  %arrayidx169 = getelementptr inbounds i8, ptr %s.0, i64 %add168, !dbg !2729
  store i8 %conv167, ptr %arrayidx169, align 1, !dbg !2730
  br label %do.body175, !dbg !2731

do.body175:                                       ; preds = %if.else88, %if.then75, %if.then98, %if.then131, %if.then109, %if.then91
  %30 = load i32, ptr %sv_flags, align 4, !dbg !2732
  %and177 = and i32 %30, 4194304, !dbg !2732
  %tobool178.not = icmp eq i32 %and177, 0, !dbg !2732
  br i1 %tobool178.not, label %cleanup, label %if.then181, !dbg !2735

if.then181:                                       ; preds = %do.body175
  %call182 = call i32 @Perl_mg_set(ptr noundef nonnull %1) #6, !dbg !2732
  br label %cleanup, !dbg !2732

cleanup:                                          ; preds = %if.then181, %do.body175, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %targlen) #6, !dbg !2736
  ret void, !dbg !2736
}

declare !dbg !2737 i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @Perl_do_vop(i32 noundef %optype, ptr noundef %sv, ptr noundef %left, ptr noundef %right) local_unnamed_addr #0 !dbg !2740 {
entry:
  %leftlen = alloca i64, align 8
  %rightlen = alloca i64, align 8
  %ulen = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %optype, metadata !2744, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %sv, metadata !2745, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %left, metadata !2746, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %right, metadata !2747, metadata !DIExpression()), !dbg !2782
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %leftlen) #6, !dbg !2783
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rightlen) #6, !dbg !2784
  call void @llvm.dbg.value(metadata i64 0, metadata !2762, metadata !DIExpression()), !dbg !2782
  %cmp.not = icmp eq ptr %sv, %left, !dbg !2785
  br i1 %cmp.not, label %lor.lhs.false, label %if.else, !dbg !2787

lor.lhs.false:                                    ; preds = %entry
  %cmp1.not = icmp eq i32 %optype, 92, !dbg !2788
  br i1 %cmp1.not, label %if.then11, label %land.lhs.true, !dbg !2789

land.lhs.true:                                    ; preds = %lor.lhs.false
  %sv_flags = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2790
  %0 = load i32, ptr %sv_flags, align 4, !dbg !2790
  %and = and i32 %0, 65280, !dbg !2790
  %tobool.not = icmp ne i32 %and, 0, !dbg !2790
  %and4 = and i32 %0, 255, !dbg !2790
  %cmp5 = icmp eq i32 %and4, 8, !dbg !2790
  %or.cond733 = or i1 %tobool.not, %cmp5, !dbg !2790
  %and8 = and i32 %0, 16826623, !dbg !2790
  %cmp9 = icmp eq i32 %and8, 16777226, !dbg !2790
  %or.cond734 = select i1 %or.cond733, i1 true, i1 %cmp9, !dbg !2790
  br i1 %or.cond734, label %if.then11, label %if.end.thread750, !dbg !2790

if.end.thread750:                                 ; preds = %land.lhs.true
  tail call void @Perl_sv_setpvn(ptr noundef nonnull %sv, ptr noundef nonnull @.str, i64 noundef 0) #6, !dbg !2791
  br label %if.then11, !dbg !2792

if.then11:                                        ; preds = %lor.lhs.false, %land.lhs.true, %if.end.thread750
  %sv_flags12 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2793
  %1 = load i32, ptr %sv_flags12, align 4, !dbg !2793
  %and13 = and i32 %1, 430018304, !dbg !2793
  %cmp14 = icmp eq i32 %and13, 1024, !dbg !2793
  br i1 %cmp14, label %cond.true, label %cond.false, !dbg !2793

cond.true:                                        ; preds = %if.then11
  %2 = load ptr, ptr %sv, align 8, !dbg !2793
  %xpv_cur = getelementptr inbounds %struct.xpv, ptr %2, i64 0, i32 2, !dbg !2793
  %3 = load i64, ptr %xpv_cur, align 8, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %3, metadata !2752, metadata !DIExpression()), !dbg !2782
  store i64 %3, ptr %leftlen, align 8, !dbg !2793
  %sv_u = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !2793
  %4 = load ptr, ptr %sv_u, align 8, !dbg !2793
  br label %if.end35, !dbg !2793

cond.false:                                       ; preds = %if.then11
  call void @llvm.dbg.value(metadata ptr %leftlen, metadata !2752, metadata !DIExpression(DW_OP_deref)), !dbg !2782
  %call = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %sv, ptr noundef nonnull %leftlen, i32 noundef 0) #6, !dbg !2793
  br label %if.end35, !dbg !2793

if.else:                                          ; preds = %entry
  tail call void @Perl_sv_setpvn(ptr noundef %sv, ptr noundef nonnull @.str, i64 noundef 0) #6, !dbg !2791
  %sv_flags15 = getelementptr inbounds %struct.sv, ptr %left, i64 0, i32 2, !dbg !2796
  %5 = load i32, ptr %sv_flags15, align 4, !dbg !2796
  %and16 = and i32 %5, 2098176, !dbg !2796
  %cmp17 = icmp eq i32 %and16, 1024, !dbg !2796
  br i1 %cmp17, label %cond.true18, label %cond.false22, !dbg !2796

cond.true18:                                      ; preds = %if.else
  %6 = load ptr, ptr %left, align 8, !dbg !2796
  %xpv_cur20 = getelementptr inbounds %struct.xpv, ptr %6, i64 0, i32 2, !dbg !2796
  %7 = load i64, ptr %xpv_cur20, align 8, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %7, metadata !2752, metadata !DIExpression()), !dbg !2782
  store i64 %7, ptr %leftlen, align 8, !dbg !2796
  %sv_u21 = getelementptr inbounds %struct.sv, ptr %left, i64 0, i32 3, !dbg !2796
  %8 = load ptr, ptr %sv_u21, align 8, !dbg !2796
  br label %cond.end24, !dbg !2796

cond.false22:                                     ; preds = %if.else
  call void @llvm.dbg.value(metadata ptr %leftlen, metadata !2752, metadata !DIExpression(DW_OP_deref)), !dbg !2782
  %call23 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %left, ptr noundef nonnull %leftlen, i32 noundef 32) #6, !dbg !2796
  br label %cond.end24, !dbg !2796

cond.end24:                                       ; preds = %cond.false22, %cond.true18
  %cond25 = phi ptr [ %8, %cond.true18 ], [ %call23, %cond.false22 ], !dbg !2796
  call void @llvm.dbg.value(metadata ptr %cond25, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %cond25, metadata !2758, metadata !DIExpression()), !dbg !2782
  %sv_flags26 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2798
  %9 = load i32, ptr %sv_flags26, align 4, !dbg !2798
  %and27 = and i32 %9, 430018304, !dbg !2798
  %cmp28 = icmp eq i32 %and27, 1024, !dbg !2798
  br i1 %cmp28, label %if.end35, label %cond.false31, !dbg !2798

cond.false31:                                     ; preds = %cond.end24
  %call32 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %sv, ptr noundef null, i32 noundef 0) #6, !dbg !2798
  br label %if.end35, !dbg !2798

if.end35:                                         ; preds = %cond.end24, %cond.true, %cond.false, %cond.false31
  %lsave.0 = phi ptr [ %cond25, %cond.false31 ], [ %4, %cond.true ], [ %call, %cond.false ], [ %cond25, %cond.end24 ], !dbg !2799
  call void @llvm.dbg.value(metadata ptr %lsave.0, metadata !2758, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lsave.0, metadata !2754, metadata !DIExpression()), !dbg !2782
  %sv_flags36 = getelementptr inbounds %struct.sv, ptr %right, i64 0, i32 2, !dbg !2800
  %10 = load i32, ptr %sv_flags36, align 4, !dbg !2800
  %and37 = and i32 %10, 2098176, !dbg !2800
  %cmp38 = icmp eq i32 %and37, 1024, !dbg !2800
  br i1 %cmp38, label %cond.true39, label %cond.false44, !dbg !2800

cond.true39:                                      ; preds = %if.end35
  %11 = load ptr, ptr %right, align 8, !dbg !2800
  %xpv_cur41 = getelementptr inbounds %struct.xpv, ptr %11, i64 0, i32 2, !dbg !2800
  %12 = load i64, ptr %xpv_cur41, align 8, !dbg !2800
  call void @llvm.dbg.value(metadata i64 %12, metadata !2753, metadata !DIExpression()), !dbg !2782
  store i64 %12, ptr %rightlen, align 8, !dbg !2800
  %sv_u42 = getelementptr inbounds %struct.sv, ptr %right, i64 0, i32 3, !dbg !2800
  %13 = load ptr, ptr %sv_u42, align 8, !dbg !2800
  br label %cond.end46, !dbg !2800

cond.false44:                                     ; preds = %if.end35
  call void @llvm.dbg.value(metadata ptr %rightlen, metadata !2753, metadata !DIExpression(DW_OP_deref)), !dbg !2782
  %call45 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %right, ptr noundef nonnull %rightlen, i32 noundef 32) #6, !dbg !2800
  br label %cond.end46, !dbg !2800

cond.end46:                                       ; preds = %cond.false44, %cond.true39
  %cond47 = phi ptr [ %13, %cond.true39 ], [ %call45, %cond.false44 ], !dbg !2800
  call void @llvm.dbg.value(metadata ptr %cond47, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %cond47, metadata !2759, metadata !DIExpression()), !dbg !2782
  %sv_flags48 = getelementptr inbounds %struct.sv, ptr %left, i64 0, i32 2, !dbg !2801
  %14 = load i32, ptr %sv_flags48, align 4, !dbg !2801
  %and49 = and i32 %14, 536870912, !dbg !2801
  %tobool50.not = icmp eq i32 %and49, 0, !dbg !2801
  br i1 %tobool50.not, label %land.end, label %land.rhs, !dbg !2801

land.rhs:                                         ; preds = %cond.end46
  %15 = load ptr, ptr @PL_curcop, align 8, !dbg !2801
  %cop_hints = getelementptr inbounds %struct.cop, ptr %15, i64 0, i32 10, !dbg !2801
  %16 = load i32, ptr %cop_hints, align 8, !dbg !2801
  %and51 = and i32 %16, 8, !dbg !2801
  %tobool52.not = icmp eq i32 %and51, 0, !dbg !2801
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end46
  %17 = phi i1 [ false, %cond.end46 ], [ %tobool52.not, %land.rhs ], !dbg !2782
  call void @llvm.dbg.value(metadata i1 %17, metadata !2760, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2782
  %18 = load i32, ptr %sv_flags36, align 4, !dbg !2802
  %and54 = and i32 %18, 536870912, !dbg !2802
  %tobool55.not = icmp eq i32 %and54, 0, !dbg !2802
  br i1 %tobool55.not, label %land.end62, label %land.rhs56, !dbg !2802

land.rhs56:                                       ; preds = %land.end
  %19 = load ptr, ptr @PL_curcop, align 8, !dbg !2802
  %cop_hints57 = getelementptr inbounds %struct.cop, ptr %19, i64 0, i32 10, !dbg !2802
  %20 = load i32, ptr %cop_hints57, align 8, !dbg !2802
  %and59 = and i32 %20, 8, !dbg !2802
  %tobool60.not = icmp eq i32 %and59, 0, !dbg !2802
  br label %land.end62

land.end62:                                       ; preds = %land.rhs56, %land.end
  %21 = phi i1 [ false, %land.end ], [ %tobool60.not, %land.rhs56 ], !dbg !2782
  call void @llvm.dbg.value(metadata i1 %21, metadata !2761, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2782
  %.not = xor i1 %17, true, !dbg !2803
  %brmerge = select i1 %.not, i1 true, i1 %21, !dbg !2803
  br i1 %brmerge, label %if.else82, label %if.then67, !dbg !2803

if.then67:                                        ; preds = %land.end62
  %22 = load i64, ptr %rightlen, align 8, !dbg !2805
  call void @llvm.dbg.value(metadata i64 %22, metadata !2753, metadata !DIExpression()), !dbg !2782
  %call68 = call ptr @Perl_newSVpvn_flags(ptr noundef %cond47, i64 noundef %22, i32 noundef 524288) #6, !dbg !2805
  call void @llvm.dbg.value(metadata ptr %call68, metadata !2747, metadata !DIExpression()), !dbg !2782
  %call69 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %call68, i32 noundef 2, i64 noundef 0) #6, !dbg !2807
  %sv_flags70 = getelementptr inbounds %struct.sv, ptr %call68, i64 0, i32 2, !dbg !2808
  %23 = load i32, ptr %sv_flags70, align 4, !dbg !2808
  %and71 = and i32 %23, 2098176, !dbg !2808
  %cmp72 = icmp eq i32 %and71, 1024, !dbg !2808
  br i1 %cmp72, label %cond.true73, label %cond.false78, !dbg !2808

cond.true73:                                      ; preds = %if.then67
  %24 = load ptr, ptr %call68, align 8, !dbg !2808
  %xpv_cur75 = getelementptr inbounds %struct.xpv, ptr %24, i64 0, i32 2, !dbg !2808
  %25 = load i64, ptr %xpv_cur75, align 8, !dbg !2808
  call void @llvm.dbg.value(metadata i64 %25, metadata !2753, metadata !DIExpression()), !dbg !2782
  store i64 %25, ptr %rightlen, align 8, !dbg !2808
  %sv_u76 = getelementptr inbounds %struct.sv, ptr %call68, i64 0, i32 3, !dbg !2808
  %26 = load ptr, ptr %sv_u76, align 8, !dbg !2808
  br label %if.end102, !dbg !2808

cond.false78:                                     ; preds = %if.then67
  call void @llvm.dbg.value(metadata ptr %rightlen, metadata !2753, metadata !DIExpression(DW_OP_deref)), !dbg !2782
  %call79 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call68, ptr noundef nonnull %rightlen, i32 noundef 32) #6, !dbg !2808
  br label %if.end102, !dbg !2808

if.else82:                                        ; preds = %land.end62
  br i1 %17, label %if.end102, label %land.lhs.true84, !dbg !2809

land.lhs.true84:                                  ; preds = %if.else82
  br i1 %21, label %if.then86, label %if.end102, !dbg !2811

if.then86:                                        ; preds = %land.lhs.true84
  %27 = load i64, ptr %leftlen, align 8, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %27, metadata !2752, metadata !DIExpression()), !dbg !2782
  %call87 = call ptr @Perl_newSVpvn_flags(ptr noundef %lsave.0, i64 noundef %27, i32 noundef 524288) #6, !dbg !2812
  call void @llvm.dbg.value(metadata ptr %call87, metadata !2746, metadata !DIExpression()), !dbg !2782
  %call88 = call i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef %call87, i32 noundef 2, i64 noundef 0) #6, !dbg !2814
  %sv_flags89 = getelementptr inbounds %struct.sv, ptr %call87, i64 0, i32 2, !dbg !2815
  %28 = load i32, ptr %sv_flags89, align 4, !dbg !2815
  %and90 = and i32 %28, 2098176, !dbg !2815
  %cmp91 = icmp eq i32 %and90, 1024, !dbg !2815
  br i1 %cmp91, label %cond.true92, label %cond.false97, !dbg !2815

cond.true92:                                      ; preds = %if.then86
  %29 = load ptr, ptr %call87, align 8, !dbg !2815
  %xpv_cur94 = getelementptr inbounds %struct.xpv, ptr %29, i64 0, i32 2, !dbg !2815
  %30 = load i64, ptr %xpv_cur94, align 8, !dbg !2815
  call void @llvm.dbg.value(metadata i64 %30, metadata !2752, metadata !DIExpression()), !dbg !2782
  store i64 %30, ptr %leftlen, align 8, !dbg !2815
  %sv_u95 = getelementptr inbounds %struct.sv, ptr %call87, i64 0, i32 3, !dbg !2815
  %31 = load ptr, ptr %sv_u95, align 8, !dbg !2815
  br label %if.end102, !dbg !2815

cond.false97:                                     ; preds = %if.then86
  call void @llvm.dbg.value(metadata ptr %leftlen, metadata !2752, metadata !DIExpression(DW_OP_deref)), !dbg !2782
  %call98 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %call87, ptr noundef nonnull %leftlen, i32 noundef 32) #6, !dbg !2815
  br label %if.end102, !dbg !2815

if.end102:                                        ; preds = %cond.true92, %cond.false97, %cond.true73, %cond.false78, %if.else82, %land.lhs.true84
  %lsave.1 = phi ptr [ %lsave.0, %if.else82 ], [ %lsave.0, %land.lhs.true84 ], [ %lsave.0, %cond.false78 ], [ %lsave.0, %cond.true73 ], [ %31, %cond.true92 ], [ %call98, %cond.false97 ], !dbg !2782
  %rsave.0 = phi ptr [ %cond47, %if.else82 ], [ %cond47, %land.lhs.true84 ], [ %call79, %cond.false78 ], [ %26, %cond.true73 ], [ %cond47, %cond.true92 ], [ %cond47, %cond.false97 ], !dbg !2782
  %left_utf.0.shrunk = phi i1 [ true, %if.else82 ], [ false, %land.lhs.true84 ], [ %17, %cond.false78 ], [ %17, %cond.true73 ], [ true, %cond.true92 ], [ true, %cond.false97 ]
  %right_utf.0.shrunk = phi i1 [ %21, %if.else82 ], [ false, %land.lhs.true84 ], [ true, %cond.false78 ], [ true, %cond.true73 ], [ true, %cond.true92 ], [ true, %cond.false97 ]
  %right.addr.0 = phi ptr [ %right, %if.else82 ], [ %right, %land.lhs.true84 ], [ %call68, %cond.false78 ], [ %call68, %cond.true73 ], [ %right, %cond.true92 ], [ %right, %cond.false97 ]
  %left.addr.0 = phi ptr [ %left, %if.else82 ], [ %left, %land.lhs.true84 ], [ %left, %cond.false78 ], [ %left, %cond.true73 ], [ %call87, %cond.true92 ], [ %call87, %cond.false97 ]
  call void @llvm.dbg.value(metadata ptr %left.addr.0, metadata !2746, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %right.addr.0, metadata !2747, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i1 %right_utf.0.shrunk, metadata !2761, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata i1 %left_utf.0.shrunk, metadata !2760, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rsave.0, metadata !2759, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lsave.1, metadata !2758, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rsave.0, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lsave.1, metadata !2754, metadata !DIExpression()), !dbg !2782
  %32 = load i64, ptr %leftlen, align 8, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %32, metadata !2752, metadata !DIExpression()), !dbg !2782
  %33 = load i64, ptr %rightlen, align 8, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %33, metadata !2753, metadata !DIExpression()), !dbg !2782
  %34 = call i64 @llvm.umin.i64(i64 %32, i64 %33), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %34, metadata !2756, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %34, metadata !2757, metadata !DIExpression()), !dbg !2782
  %35 = load ptr, ptr %sv, align 8, !dbg !2818
  %xpv_cur109 = getelementptr inbounds %struct.xpv, ptr %35, i64 0, i32 2, !dbg !2818
  store i64 %34, ptr %xpv_cur109, align 8, !dbg !2818
  %sv_flags110 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 2, !dbg !2820
  %36 = load i32, ptr %sv_flags110, align 4, !dbg !2820
  %and111 = and i32 %36, 1610547455, !dbg !2820
  %or = or i32 %and111, 17408, !dbg !2820
  store i32 %or, ptr %sv_flags110, align 4, !dbg !2820
  %brmerge735 = select i1 %left_utf.0.shrunk, i1 true, i1 %right_utf.0.shrunk, !dbg !2821
  br i1 %brmerge735, label %land.lhs.true116, label %if.then145, !dbg !2821

land.lhs.true116:                                 ; preds = %if.end102
  %cmp117 = icmp eq ptr %left.addr.0, %sv, !dbg !2823
  %cmp119 = icmp eq ptr %right.addr.0, %sv
  %or.cond736 = or i1 %cmp119, %cmp117, !dbg !2824
  br i1 %or.cond736, label %if.then120, label %if.then145, !dbg !2824

if.then120:                                       ; preds = %land.lhs.true116
  %cmp121 = icmp eq i32 %optype, 92, !dbg !2825
  %add124 = add i64 %33, %32
  %spec.select = select i1 %cmp121, i64 %34, i64 %add124, !dbg !2827
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !2762, metadata !DIExpression()), !dbg !2782
  %add127 = add i64 %spec.select, 1, !dbg !2828
  %call128 = call ptr @Perl_safesyscalloc(i64 noundef %add127, i64 noundef 1) #6, !dbg !2828
  call void @llvm.dbg.value(metadata i64 0, metadata !2762, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.1, metadata !2751, metadata !DIExpression()), !dbg !2782
  br label %if.then224, !dbg !2829

if.then145:                                       ; preds = %if.end102, %land.lhs.true116
  %and147 = and i32 %or, 429982720, !dbg !2830
  %cmp148 = icmp eq i32 %and147, 1024, !dbg !2830
  br i1 %cmp148, label %cond.true149, label %cond.false151, !dbg !2830

cond.true149:                                     ; preds = %if.then145
  %sv_u150 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !2830
  %37 = load ptr, ptr %sv_u150, align 8, !dbg !2830
  br label %cond.end153, !dbg !2830

cond.false151:                                    ; preds = %if.then145
  %call152 = call ptr @Perl_sv_pvn_force_flags(ptr noundef nonnull %sv, ptr noundef null, i32 noundef 0) #6, !dbg !2830
  br label %cond.end153, !dbg !2830

cond.end153:                                      ; preds = %cond.false151, %cond.true149
  %cond154 = phi ptr [ %37, %cond.true149 ], [ %call152, %cond.false151 ], !dbg !2830
  call void @llvm.dbg.value(metadata ptr %cond154, metadata !2751, metadata !DIExpression()), !dbg !2782
  %38 = load ptr, ptr %sv, align 8, !dbg !2833
  %xpv_len_u = getelementptr inbounds %struct.xpv, ptr %38, i64 0, i32 3, !dbg !2833
  %39 = load i64, ptr %xpv_len_u, align 8, !dbg !2833
  %add156 = add i64 %34, 1, !dbg !2835
  %cmp157 = icmp ult i64 %39, %add156, !dbg !2836
  br i1 %cmp157, label %if.then158, label %if.end180, !dbg !2837

if.then158:                                       ; preds = %cond.end153
  %call169 = call ptr @Perl_sv_grow(ptr noundef nonnull %sv, i64 noundef %add156) #6, !dbg !2838
  call void @llvm.dbg.value(metadata ptr %call169, metadata !2751, metadata !DIExpression()), !dbg !2782
  %40 = load ptr, ptr %sv, align 8, !dbg !2840
  %xpv_cur175 = getelementptr inbounds %struct.xpv, ptr %40, i64 0, i32 2, !dbg !2840
  %41 = load i64, ptr %xpv_cur175, align 8, !dbg !2840
  %add.ptr176 = getelementptr inbounds i8, ptr %call169, i64 %41, !dbg !2840
  %add179 = sub i64 %add156, %41, !dbg !2840
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr176, i8 0, i64 %add179, i1 false), !dbg !2840
  br label %if.end180, !dbg !2841

if.end180:                                        ; preds = %if.then158, %cond.end153
  %dc.0 = phi ptr [ %call169, %if.then158 ], [ %cond154, %cond.end153 ], !dbg !2842
  call void @llvm.dbg.value(metadata ptr %dc.0, metadata !2751, metadata !DIExpression()), !dbg !2782
  %cmp181.not = icmp ne i32 %optype, 92, !dbg !2843
  %or.cond749 = select i1 %cmp181.not, i1 %brmerge735, i1 false, !dbg !2845
  br i1 %or.cond749, label %if.then186, label %if.end220, !dbg !2845

if.then186:                                       ; preds = %if.end180
  %42 = load i32, ptr %sv_flags110, align 4, !dbg !2846
  %and188 = and i32 %42, 268435456, !dbg !2846
  %tobool189.not = icmp eq i32 %and188, 0, !dbg !2846
  br i1 %tobool189.not, label %lor.lhs.false190, label %if.then186.cond.true196_crit_edge, !dbg !2846

if.then186.cond.true196_crit_edge:                ; preds = %if.then186
  %.pre = load i64, ptr %leftlen, align 8, !dbg !2846
  %.pre839 = load i64, ptr %rightlen, align 8, !dbg !2846
  %.pre840 = add i64 %.pre, 1, !dbg !2846
  %.pre841 = add i64 %.pre840, %.pre839, !dbg !2846
  br label %cond.true196, !dbg !2846

lor.lhs.false190:                                 ; preds = %if.then186
  %43 = load ptr, ptr %sv, align 8, !dbg !2846
  %xpv_len_u192 = getelementptr inbounds %struct.xpv, ptr %43, i64 0, i32 3, !dbg !2846
  %44 = load i64, ptr %xpv_len_u192, align 8, !dbg !2846
  %45 = load i64, ptr %leftlen, align 8, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %45, metadata !2752, metadata !DIExpression()), !dbg !2782
  %46 = load i64, ptr %rightlen, align 8, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %46, metadata !2753, metadata !DIExpression()), !dbg !2782
  %add193 = add i64 %45, 1, !dbg !2846
  %add194 = add i64 %add193, %46, !dbg !2846
  %cmp195 = icmp ult i64 %44, %add194, !dbg !2846
  br i1 %cmp195, label %cond.true196, label %cond.false200, !dbg !2846

cond.true196:                                     ; preds = %if.then186.cond.true196_crit_edge, %lor.lhs.false190
  %add198.pre-phi = phi i64 [ %.pre841, %if.then186.cond.true196_crit_edge ], [ %add194, %lor.lhs.false190 ], !dbg !2846
  call void @llvm.dbg.value(metadata i64 undef, metadata !2752, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 undef, metadata !2753, metadata !DIExpression()), !dbg !2782
  %call199 = call ptr @Perl_sv_grow(ptr noundef nonnull %sv, i64 noundef %add198.pre-phi) #6, !dbg !2846
  br label %if.end220, !dbg !2846

cond.false200:                                    ; preds = %lor.lhs.false190
  %sv_u201 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !2846
  %47 = load ptr, ptr %sv_u201, align 8, !dbg !2846
  br label %if.end220, !dbg !2846

if.end220:                                        ; preds = %cond.true196, %cond.false200, %if.end180
  %dc.1 = phi ptr [ %dc.0, %if.end180 ], [ %call199, %cond.true196 ], [ %47, %cond.false200 ], !dbg !2847
  call void @llvm.dbg.value(metadata i64 0, metadata !2762, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.1, metadata !2751, metadata !DIExpression()), !dbg !2782
  br i1 %brmerge735, label %if.then224, label %if.else324, !dbg !2829

if.then224:                                       ; preds = %if.then120, %if.end220
  %needlen.0756 = phi i64 [ %spec.select, %if.then120 ], [ 0, %if.end220 ]
  %dc.1753 = phi ptr [ %call128, %if.then120 ], [ %dc.1, %if.end220 ]
  call void @llvm.dbg.value(metadata ptr %dc.1, metadata !2768, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr null, metadata !2769, metadata !DIExpression()), !dbg !2848
  %48 = load i64, ptr %leftlen, align 8, !dbg !2849
  call void @llvm.dbg.value(metadata i64 %48, metadata !2752, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %48, metadata !2770, metadata !DIExpression()), !dbg !2848
  %49 = load i64, ptr %rightlen, align 8, !dbg !2850
  call void @llvm.dbg.value(metadata i64 %49, metadata !2753, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %49, metadata !2771, metadata !DIExpression()), !dbg !2848
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ulen) #6, !dbg !2851
  switch i32 %optype, label %sw.default [
    i32 92, label %while.cond.preheader
    i32 93, label %while.cond248.preheader
    i32 94, label %while.cond263.preheader
  ], !dbg !2852

while.cond263.preheader:                          ; preds = %if.then224
  call void @llvm.dbg.value(metadata i64 %49, metadata !2771, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %48, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %rsave.0, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lsave.1, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.1753, metadata !2751, metadata !DIExpression()), !dbg !2782
  %tobool264800 = icmp ne i64 %48, 0, !dbg !2853
  %tobool266801 = icmp ne i64 %49, 0, !dbg !2854
  %or.cond487802 = select i1 %tobool264800, i1 %tobool266801, i1 false, !dbg !2854
  br i1 %or.cond487802, label %while.body268, label %mop_up_utf, !dbg !2854

while.cond248.preheader:                          ; preds = %if.then224
  call void @llvm.dbg.value(metadata i64 %49, metadata !2771, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %48, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %rsave.0, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lsave.1, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.1753, metadata !2751, metadata !DIExpression()), !dbg !2782
  %tobool249813 = icmp ne i64 %48, 0, !dbg !2855
  %tobool251814 = icmp ne i64 %49, 0, !dbg !2856
  %or.cond486815 = select i1 %tobool249813, i1 %tobool251814, i1 false, !dbg !2856
  br i1 %or.cond486815, label %while.body253, label %mop_up_utf, !dbg !2856

while.cond.preheader:                             ; preds = %if.then224
  call void @llvm.dbg.value(metadata i64 %49, metadata !2771, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %48, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %rsave.0, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lsave.1, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.1753, metadata !2751, metadata !DIExpression()), !dbg !2782
  %tobool225826 = icmp ne i64 %48, 0, !dbg !2857
  %tobool227827 = icmp ne i64 %49, 0, !dbg !2858
  %or.cond828 = select i1 %tobool225826, i1 %tobool227827, i1 false, !dbg !2858
  br i1 %or.cond828, label %while.body, label %while.end, !dbg !2858

while.body:                                       ; preds = %while.cond.preheader, %while.body
  %rulen.0833 = phi i64 [ %sub234, %while.body ], [ %49, %while.cond.preheader ]
  %lulen.0832 = phi i64 [ %sub231, %while.body ], [ %48, %while.cond.preheader ]
  %rc.1831 = phi ptr [ %add.ptr233, %while.body ], [ %rsave.0, %while.cond.preheader ]
  %lc.2830 = phi ptr [ %add.ptr230, %while.body ], [ %lsave.1, %while.cond.preheader ]
  %dc.2829 = phi ptr [ %call236, %while.body ], [ %dc.1753, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %rulen.0833, metadata !2771, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %lulen.0832, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %rc.1831, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.2830, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.2829, metadata !2751, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %ulen, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  %call229 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %lc.2830, i64 noundef %lulen.0832, ptr noundef nonnull %ulen, i32 noundef 1) #6, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %call229, metadata !2766, metadata !DIExpression()), !dbg !2848
  %50 = load i64, ptr %ulen, align 8, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %50, metadata !2772, metadata !DIExpression()), !dbg !2848
  %add.ptr230 = getelementptr inbounds i8, ptr %lc.2830, i64 %50, !dbg !2862
  call void @llvm.dbg.value(metadata ptr %add.ptr230, metadata !2754, metadata !DIExpression()), !dbg !2782
  %sub231 = sub i64 %lulen.0832, %50, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %sub231, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %ulen, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  %call232 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %rc.1831, i64 noundef %rulen.0833, ptr noundef nonnull %ulen, i32 noundef 1) #6, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %call232, metadata !2767, metadata !DIExpression()), !dbg !2848
  %51 = load i64, ptr %ulen, align 8, !dbg !2865
  call void @llvm.dbg.value(metadata i64 %51, metadata !2772, metadata !DIExpression()), !dbg !2848
  %add.ptr233 = getelementptr inbounds i8, ptr %rc.1831, i64 %51, !dbg !2866
  call void @llvm.dbg.value(metadata ptr %add.ptr233, metadata !2755, metadata !DIExpression()), !dbg !2782
  %sub234 = sub i64 %rulen.0833, %51, !dbg !2867
  call void @llvm.dbg.value(metadata i64 %sub234, metadata !2771, metadata !DIExpression()), !dbg !2848
  %and235 = and i64 %call232, %call229, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %and235, metadata !2763, metadata !DIExpression()), !dbg !2848
  %call236 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %dc.2829, i64 noundef %and235, i64 noundef 0) #6, !dbg !2869
  call void @llvm.dbg.value(metadata ptr %call236, metadata !2751, metadata !DIExpression()), !dbg !2782
  %tobool225 = icmp ne i64 %sub231, 0, !dbg !2857
  %tobool227 = icmp ne i64 %sub234, 0, !dbg !2858
  %or.cond = select i1 %tobool225, i1 %tobool227, i1 false, !dbg !2858
  br i1 %or.cond, label %while.body, label %while.end, !dbg !2858, !llvm.loop !2870

while.end:                                        ; preds = %while.body, %while.cond.preheader
  %dc.2.lcssa = phi ptr [ %dc.1753, %while.cond.preheader ], [ %call236, %while.body ], !dbg !2782
  %cmp237 = icmp eq ptr %left.addr.0, %sv, !dbg !2873
  %cmp239 = icmp eq ptr %right.addr.0, %sv
  %or.cond742 = or i1 %cmp239, %cmp237, !dbg !2875
  br i1 %or.cond742, label %if.then240, label %do.body242, !dbg !2875

if.then240:                                       ; preds = %while.end
  call void @Perl_sv_usepvn_flags(ptr noundef nonnull %sv, ptr noundef %dc.1753, i64 noundef %needlen.0756, i32 noundef 0) #6, !dbg !2876
  br label %do.body242, !dbg !2877

do.body242:                                       ; preds = %while.end, %if.then240
  %sub.ptr.lhs.cast = ptrtoint ptr %dc.2.lcssa to i64, !dbg !2878
  %sub.ptr.rhs.cast = ptrtoint ptr %dc.1753 to i64, !dbg !2878
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2878
  %52 = load ptr, ptr %sv, align 8, !dbg !2878
  %xpv_cur244 = getelementptr inbounds %struct.xpv, ptr %52, i64 0, i32 2, !dbg !2878
  store i64 %sub.ptr.sub, ptr %xpv_cur244, align 8, !dbg !2878
  br label %sw.epilog, !dbg !2880

while.body253:                                    ; preds = %while.cond248.preheader, %while.body253
  %rulen.1820 = phi i64 [ %sub259, %while.body253 ], [ %49, %while.cond248.preheader ]
  %lulen.1819 = phi i64 [ %sub256, %while.body253 ], [ %48, %while.cond248.preheader ]
  %rc.2818 = phi ptr [ %add.ptr258, %while.body253 ], [ %rsave.0, %while.cond248.preheader ]
  %lc.3817 = phi ptr [ %add.ptr255, %while.body253 ], [ %lsave.1, %while.cond248.preheader ]
  %dc.3816 = phi ptr [ %call260, %while.body253 ], [ %dc.1753, %while.cond248.preheader ]
  call void @llvm.dbg.value(metadata i64 %rulen.1820, metadata !2771, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %lulen.1819, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %rc.2818, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.3817, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.3816, metadata !2751, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %ulen, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  %call254 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %lc.3817, i64 noundef %lulen.1819, ptr noundef nonnull %ulen, i32 noundef 1) #6, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %call254, metadata !2766, metadata !DIExpression()), !dbg !2848
  %53 = load i64, ptr %ulen, align 8, !dbg !2883
  call void @llvm.dbg.value(metadata i64 %53, metadata !2772, metadata !DIExpression()), !dbg !2848
  %add.ptr255 = getelementptr inbounds i8, ptr %lc.3817, i64 %53, !dbg !2884
  call void @llvm.dbg.value(metadata ptr %add.ptr255, metadata !2754, metadata !DIExpression()), !dbg !2782
  %sub256 = sub i64 %lulen.1819, %53, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %sub256, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %ulen, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  %call257 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %rc.2818, i64 noundef %rulen.1820, ptr noundef nonnull %ulen, i32 noundef 1) #6, !dbg !2886
  call void @llvm.dbg.value(metadata i64 %call257, metadata !2767, metadata !DIExpression()), !dbg !2848
  %54 = load i64, ptr %ulen, align 8, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %54, metadata !2772, metadata !DIExpression()), !dbg !2848
  %add.ptr258 = getelementptr inbounds i8, ptr %rc.2818, i64 %54, !dbg !2888
  call void @llvm.dbg.value(metadata ptr %add.ptr258, metadata !2755, metadata !DIExpression()), !dbg !2782
  %sub259 = sub i64 %rulen.1820, %54, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %sub259, metadata !2771, metadata !DIExpression()), !dbg !2848
  %xor = xor i64 %call257, %call254, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %xor, metadata !2763, metadata !DIExpression()), !dbg !2848
  %call260 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %dc.3816, i64 noundef %xor, i64 noundef 0) #6, !dbg !2891
  call void @llvm.dbg.value(metadata ptr %call260, metadata !2751, metadata !DIExpression()), !dbg !2782
  %tobool249 = icmp ne i64 %sub256, 0, !dbg !2855
  %tobool251 = icmp ne i64 %sub259, 0, !dbg !2856
  %or.cond486 = select i1 %tobool249, i1 %tobool251, i1 false, !dbg !2856
  br i1 %or.cond486, label %while.body253, label %mop_up_utf, !dbg !2856, !llvm.loop !2892

while.body268:                                    ; preds = %while.cond263.preheader, %while.body268
  %rulen.2807 = phi i64 [ %sub274, %while.body268 ], [ %49, %while.cond263.preheader ]
  %lulen.2806 = phi i64 [ %sub271, %while.body268 ], [ %48, %while.cond263.preheader ]
  %rc.3805 = phi ptr [ %add.ptr273, %while.body268 ], [ %rsave.0, %while.cond263.preheader ]
  %lc.4804 = phi ptr [ %add.ptr270, %while.body268 ], [ %lsave.1, %while.cond263.preheader ]
  %dc.4803 = phi ptr [ %call276, %while.body268 ], [ %dc.1753, %while.cond263.preheader ]
  call void @llvm.dbg.value(metadata i64 %rulen.2807, metadata !2771, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %lulen.2806, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %rc.3805, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.4804, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.4803, metadata !2751, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %ulen, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  %call269 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %lc.4804, i64 noundef %lulen.2806, ptr noundef nonnull %ulen, i32 noundef 1) #6, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %call269, metadata !2766, metadata !DIExpression()), !dbg !2848
  %55 = load i64, ptr %ulen, align 8, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %55, metadata !2772, metadata !DIExpression()), !dbg !2848
  %add.ptr270 = getelementptr inbounds i8, ptr %lc.4804, i64 %55, !dbg !2898
  call void @llvm.dbg.value(metadata ptr %add.ptr270, metadata !2754, metadata !DIExpression()), !dbg !2782
  %sub271 = sub i64 %lulen.2806, %55, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %sub271, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %ulen, metadata !2772, metadata !DIExpression(DW_OP_deref)), !dbg !2848
  %call272 = call i64 @Perl_utf8n_to_uvchr(ptr noundef %rc.3805, i64 noundef %rulen.2807, ptr noundef nonnull %ulen, i32 noundef 1) #6, !dbg !2900
  call void @llvm.dbg.value(metadata i64 %call272, metadata !2767, metadata !DIExpression()), !dbg !2848
  %56 = load i64, ptr %ulen, align 8, !dbg !2901
  call void @llvm.dbg.value(metadata i64 %56, metadata !2772, metadata !DIExpression()), !dbg !2848
  %add.ptr273 = getelementptr inbounds i8, ptr %rc.3805, i64 %56, !dbg !2902
  call void @llvm.dbg.value(metadata ptr %add.ptr273, metadata !2755, metadata !DIExpression()), !dbg !2782
  %sub274 = sub i64 %rulen.2807, %56, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %sub274, metadata !2771, metadata !DIExpression()), !dbg !2848
  %or275 = or i64 %call272, %call269, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %or275, metadata !2763, metadata !DIExpression()), !dbg !2848
  %call276 = call ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef %dc.4803, i64 noundef %or275, i64 noundef 0) #6, !dbg !2905
  call void @llvm.dbg.value(metadata ptr %call276, metadata !2751, metadata !DIExpression()), !dbg !2782
  %tobool264 = icmp ne i64 %sub271, 0, !dbg !2853
  %tobool266 = icmp ne i64 %sub274, 0, !dbg !2854
  %or.cond487 = select i1 %tobool264, i1 %tobool266, i1 false, !dbg !2854
  br i1 %or.cond487, label %while.body268, label %mop_up_utf, !dbg !2854, !llvm.loop !2906

mop_up_utf:                                       ; preds = %while.body268, %while.body253, %while.cond263.preheader, %while.cond248.preheader
  %dc.5 = phi ptr [ %dc.1753, %while.cond248.preheader ], [ %dc.1753, %while.cond263.preheader ], [ %call260, %while.body253 ], [ %call276, %while.body268 ], !dbg !2828
  %lc.5 = phi ptr [ %lsave.1, %while.cond248.preheader ], [ %lsave.1, %while.cond263.preheader ], [ %add.ptr255, %while.body253 ], [ %add.ptr270, %while.body268 ], !dbg !2909
  %rc.4 = phi ptr [ %rsave.0, %while.cond248.preheader ], [ %rsave.0, %while.cond263.preheader ], [ %add.ptr258, %while.body253 ], [ %add.ptr273, %while.body268 ], !dbg !2910
  %lulen.3 = phi i64 [ %48, %while.cond248.preheader ], [ %48, %while.cond263.preheader ], [ %sub256, %while.body253 ], [ %sub271, %while.body268 ], !dbg !2911
  %rulen.3 = phi i64 [ %49, %while.cond248.preheader ], [ %49, %while.cond263.preheader ], [ %sub259, %while.body253 ], [ %sub274, %while.body268 ], !dbg !2912
  call void @llvm.dbg.value(metadata i64 %rulen.3, metadata !2771, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata i64 %lulen.3, metadata !2770, metadata !DIExpression()), !dbg !2848
  call void @llvm.dbg.value(metadata ptr %rc.4, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.5, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.5, metadata !2751, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.label(metadata !2776), !dbg !2913
  %tobool278.not = icmp eq i64 %rulen.3, 0, !dbg !2914
  br i1 %tobool278.not, label %if.else281, label %if.end287.sink.split, !dbg !2916

if.else281:                                       ; preds = %mop_up_utf
  %tobool282.not = icmp eq i64 %lulen.3, 0, !dbg !2917
  br i1 %tobool282.not, label %if.end287, label %if.end287.sink.split, !dbg !2919

if.end287.sink.split:                             ; preds = %if.else281, %mop_up_utf
  %lulen.3.sink = phi i64 [ %rulen.3, %mop_up_utf ], [ %lulen.3, %if.else281 ]
  %lc.5.sink = phi ptr [ %rc.4, %mop_up_utf ], [ %lc.5, %if.else281 ]
  %conv284 = trunc i64 %lulen.3.sink to i32, !dbg !2920
  %call285 = call ptr @Perl_savepvn(ptr noundef %lc.5.sink, i32 noundef %conv284) #6, !dbg !2920
  br label %if.end287, !dbg !2921

if.end287:                                        ; preds = %if.end287.sink.split, %if.else281
  %dcsave.0 = phi ptr [ null, %if.else281 ], [ %call285, %if.end287.sink.split ], !dbg !2848
  call void @llvm.dbg.value(metadata ptr %dcsave.0, metadata !2769, metadata !DIExpression()), !dbg !2848
  %cmp288 = icmp eq ptr %left.addr.0, %sv, !dbg !2921
  %cmp291 = icmp eq ptr %right.addr.0, %sv
  %or.cond743 = or i1 %cmp291, %cmp288, !dbg !2923
  br i1 %or.cond743, label %if.then293, label %do.body295, !dbg !2923

if.then293:                                       ; preds = %if.end287
  call void @Perl_sv_usepvn_flags(ptr noundef nonnull %sv, ptr noundef %dc.1753, i64 noundef %needlen.0756, i32 noundef 0) #6, !dbg !2924
  br label %do.body295, !dbg !2925

do.body295:                                       ; preds = %if.end287, %if.then293
  %sub.ptr.lhs.cast296 = ptrtoint ptr %dc.5 to i64, !dbg !2926
  %sub.ptr.rhs.cast297 = ptrtoint ptr %dc.1753 to i64, !dbg !2926
  %sub.ptr.sub298 = sub i64 %sub.ptr.lhs.cast296, %sub.ptr.rhs.cast297, !dbg !2926
  %57 = load ptr, ptr %sv, align 8, !dbg !2926
  %xpv_cur300 = getelementptr inbounds %struct.xpv, ptr %57, i64 0, i32 2, !dbg !2926
  store i64 %sub.ptr.sub298, ptr %xpv_cur300, align 8, !dbg !2926
  br i1 %tobool278.not, label %if.else305, label %if.then304, !dbg !2928

if.then304:                                       ; preds = %do.body295
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %sv, ptr noundef %dcsave.0, i64 noundef %rulen.3, i32 noundef 0) #6, !dbg !2929
  br label %if.end314, !dbg !2929

if.else305:                                       ; preds = %do.body295
  %tobool306.not = icmp eq i64 %lulen.3, 0, !dbg !2931
  br i1 %tobool306.not, label %if.else308, label %if.then307, !dbg !2933

if.then307:                                       ; preds = %if.else305
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %sv, ptr noundef %dcsave.0, i64 noundef %lulen.3, i32 noundef 0) #6, !dbg !2934
  br label %if.end314, !dbg !2934

if.else308:                                       ; preds = %if.else305
  %sv_u309 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !2935
  %58 = load ptr, ptr %sv_u309, align 8, !dbg !2935
  %59 = load ptr, ptr %sv, align 8, !dbg !2935
  %xpv_cur311 = getelementptr inbounds %struct.xpv, ptr %59, i64 0, i32 2, !dbg !2935
  %60 = load i64, ptr %xpv_cur311, align 8, !dbg !2935
  %add.ptr312 = getelementptr inbounds i8, ptr %58, i64 %60, !dbg !2935
  store i8 0, ptr %add.ptr312, align 1, !dbg !2936
  br label %if.end314

if.end314:                                        ; preds = %if.then307, %if.else308, %if.then304
  call void @Perl_safesysfree(ptr noundef %dcsave.0) #6, !dbg !2937
  br label %sw.epilog, !dbg !2938

sw.default:                                       ; preds = %if.then224
  %cmp315 = icmp eq ptr %left.addr.0, %sv, !dbg !2939
  %cmp318 = icmp eq ptr %right.addr.0, %sv
  %or.cond744 = or i1 %cmp318, %cmp315, !dbg !2941
  br i1 %or.cond744, label %if.then320, label %if.end321, !dbg !2941

if.then320:                                       ; preds = %sw.default
  call void @Perl_safesysfree(ptr noundef %dc.1753) #6, !dbg !2942
  br label %if.end321, !dbg !2942

if.end321:                                        ; preds = %sw.default, %if.then320
  %idxprom = sext i32 %optype to i64, !dbg !2943
  %arrayidx = getelementptr inbounds [0 x ptr], ptr @PL_op_name, i64 0, i64 %idxprom, !dbg !2943
  %61 = load ptr, ptr %arrayidx, align 8, !dbg !2943
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.6, i32 noundef %optype, ptr noundef %61) #6, !dbg !2944
  br label %sw.epilog, !dbg !2945

sw.epilog:                                        ; preds = %if.end321, %if.end314, %do.body242
  %62 = load i32, ptr %sv_flags110, align 4, !dbg !2946
  %or323 = or i32 %62, 536870912, !dbg !2946
  store i32 %or323, ptr %sv_flags110, align 4, !dbg !2946
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ulen) #6, !dbg !2947
  br label %do.body462

if.else324:                                       ; preds = %if.end220
  %cmp325 = icmp ugt i64 %34, 31, !dbg !2948
  %63 = ptrtoint ptr %dc.1 to i64
  %rem = and i64 %63, 7
  %tobool328.not = icmp eq i64 %rem, 0
  %or.cond745 = select i1 %cmp325, i1 %tobool328.not, i1 false, !dbg !2949
  %64 = ptrtoint ptr %lsave.1 to i64
  %rem330 = and i64 %64, 7
  %tobool331.not = icmp eq i64 %rem330, 0
  %or.cond746 = select i1 %or.cond745, i1 %tobool331.not, i1 false, !dbg !2949
  %65 = ptrtoint ptr %rsave.0 to i64
  %rem333 = and i64 %65, 7
  %tobool334.not = icmp eq i64 %rem333, 0
  %or.cond747 = select i1 %or.cond746, i1 %tobool334.not, i1 false, !dbg !2949
  br i1 %or.cond747, label %if.then335, label %if.end403, !dbg !2949

if.then335:                                       ; preds = %if.else324
  %rem336 = and i64 %34, 31, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %rem336, metadata !2773, metadata !DIExpression()), !dbg !2951
  %div732 = lshr i64 %34, 5, !dbg !2952
  call void @llvm.dbg.value(metadata i64 %div732, metadata !2756, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.1, metadata !2748, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lsave.1, metadata !2749, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rsave.0, metadata !2750, metadata !DIExpression()), !dbg !2782
  switch i32 %optype, label %if.end403 [
    i32 92, label %while.body340
    i32 93, label %while.body361
    i32 94, label %while.body383
  ], !dbg !2953

while.body340:                                    ; preds = %if.then335, %while.body340
  %dl.0780 = phi ptr [ %incdec.ptr355, %while.body340 ], [ %dc.1, %if.then335 ]
  %ll.0779 = phi ptr [ %incdec.ptr352, %while.body340 ], [ %lsave.1, %if.then335 ]
  %len.0778 = phi i64 [ %dec, %while.body340 ], [ %div732, %if.then335 ]
  %rl.0777 = phi ptr [ %incdec.ptr353, %while.body340 ], [ %rsave.0, %if.then335 ]
  call void @llvm.dbg.value(metadata ptr %dl.0780, metadata !2748, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %ll.0779, metadata !2749, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %len.0778, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rl.0777, metadata !2750, metadata !DIExpression()), !dbg !2782
  %dec = add i64 %len.0778, -1, !dbg !2954
  call void @llvm.dbg.value(metadata i64 %dec, metadata !2756, metadata !DIExpression()), !dbg !2782
  %incdec.ptr = getelementptr inbounds i64, ptr %ll.0779, i64 1, !dbg !2956
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !2749, metadata !DIExpression()), !dbg !2782
  %66 = load i64, ptr %ll.0779, align 8, !dbg !2958
  %incdec.ptr341 = getelementptr inbounds i64, ptr %rl.0777, i64 1, !dbg !2959
  call void @llvm.dbg.value(metadata ptr %incdec.ptr341, metadata !2750, metadata !DIExpression()), !dbg !2782
  %67 = load i64, ptr %rl.0777, align 8, !dbg !2960
  %and342 = and i64 %67, %66, !dbg !2961
  %incdec.ptr343 = getelementptr inbounds i64, ptr %dl.0780, i64 1, !dbg !2962
  call void @llvm.dbg.value(metadata ptr %incdec.ptr343, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %and342, ptr %dl.0780, align 8, !dbg !2963
  %incdec.ptr344 = getelementptr inbounds i64, ptr %ll.0779, i64 2, !dbg !2964
  call void @llvm.dbg.value(metadata ptr %incdec.ptr344, metadata !2749, metadata !DIExpression()), !dbg !2782
  %68 = load i64, ptr %incdec.ptr, align 8, !dbg !2965
  %incdec.ptr345 = getelementptr inbounds i64, ptr %rl.0777, i64 2, !dbg !2966
  call void @llvm.dbg.value(metadata ptr %incdec.ptr345, metadata !2750, metadata !DIExpression()), !dbg !2782
  %69 = load i64, ptr %incdec.ptr341, align 8, !dbg !2967
  %and346 = and i64 %69, %68, !dbg !2968
  %incdec.ptr347 = getelementptr inbounds i64, ptr %dl.0780, i64 2, !dbg !2969
  call void @llvm.dbg.value(metadata ptr %incdec.ptr347, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %and346, ptr %incdec.ptr343, align 8, !dbg !2970
  %incdec.ptr348 = getelementptr inbounds i64, ptr %ll.0779, i64 3, !dbg !2971
  call void @llvm.dbg.value(metadata ptr %incdec.ptr348, metadata !2749, metadata !DIExpression()), !dbg !2782
  %70 = load i64, ptr %incdec.ptr344, align 8, !dbg !2972
  %incdec.ptr349 = getelementptr inbounds i64, ptr %rl.0777, i64 3, !dbg !2973
  call void @llvm.dbg.value(metadata ptr %incdec.ptr349, metadata !2750, metadata !DIExpression()), !dbg !2782
  %71 = load i64, ptr %incdec.ptr345, align 8, !dbg !2974
  %and350 = and i64 %71, %70, !dbg !2975
  %incdec.ptr351 = getelementptr inbounds i64, ptr %dl.0780, i64 3, !dbg !2976
  call void @llvm.dbg.value(metadata ptr %incdec.ptr351, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %and350, ptr %incdec.ptr347, align 8, !dbg !2977
  %incdec.ptr352 = getelementptr inbounds i64, ptr %ll.0779, i64 4, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %incdec.ptr352, metadata !2749, metadata !DIExpression()), !dbg !2782
  %72 = load i64, ptr %incdec.ptr348, align 8, !dbg !2979
  %incdec.ptr353 = getelementptr inbounds i64, ptr %rl.0777, i64 4, !dbg !2980
  call void @llvm.dbg.value(metadata ptr %incdec.ptr353, metadata !2750, metadata !DIExpression()), !dbg !2782
  %73 = load i64, ptr %incdec.ptr349, align 8, !dbg !2981
  %and354 = and i64 %73, %72, !dbg !2982
  %incdec.ptr355 = getelementptr inbounds i64, ptr %dl.0780, i64 4, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %incdec.ptr355, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %and354, ptr %incdec.ptr351, align 8, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %dec, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  %tobool339.not = icmp eq i64 %dec, 0, !dbg !2985
  br i1 %tobool339.not, label %if.end403, label %while.body340, !dbg !2985, !llvm.loop !2986

while.body361:                                    ; preds = %if.then335, %while.body361
  %dl.1772 = phi ptr [ %incdec.ptr377, %while.body361 ], [ %dc.1, %if.then335 ]
  %ll.1771 = phi ptr [ %incdec.ptr374, %while.body361 ], [ %lsave.1, %if.then335 ]
  %len.1770 = phi i64 [ %dec359, %while.body361 ], [ %div732, %if.then335 ]
  %rl.1769 = phi ptr [ %incdec.ptr375, %while.body361 ], [ %rsave.0, %if.then335 ]
  call void @llvm.dbg.value(metadata ptr %dl.1772, metadata !2748, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %ll.1771, metadata !2749, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %len.1770, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rl.1769, metadata !2750, metadata !DIExpression()), !dbg !2782
  %dec359 = add i64 %len.1770, -1, !dbg !2988
  call void @llvm.dbg.value(metadata i64 %dec359, metadata !2756, metadata !DIExpression()), !dbg !2782
  %incdec.ptr362 = getelementptr inbounds i64, ptr %ll.1771, i64 1, !dbg !2989
  call void @llvm.dbg.value(metadata ptr %incdec.ptr362, metadata !2749, metadata !DIExpression()), !dbg !2782
  %74 = load i64, ptr %ll.1771, align 8, !dbg !2991
  %incdec.ptr363 = getelementptr inbounds i64, ptr %rl.1769, i64 1, !dbg !2992
  call void @llvm.dbg.value(metadata ptr %incdec.ptr363, metadata !2750, metadata !DIExpression()), !dbg !2782
  %75 = load i64, ptr %rl.1769, align 8, !dbg !2993
  %xor364 = xor i64 %75, %74, !dbg !2994
  %incdec.ptr365 = getelementptr inbounds i64, ptr %dl.1772, i64 1, !dbg !2995
  call void @llvm.dbg.value(metadata ptr %incdec.ptr365, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %xor364, ptr %dl.1772, align 8, !dbg !2996
  %incdec.ptr366 = getelementptr inbounds i64, ptr %ll.1771, i64 2, !dbg !2997
  call void @llvm.dbg.value(metadata ptr %incdec.ptr366, metadata !2749, metadata !DIExpression()), !dbg !2782
  %76 = load i64, ptr %incdec.ptr362, align 8, !dbg !2998
  %incdec.ptr367 = getelementptr inbounds i64, ptr %rl.1769, i64 2, !dbg !2999
  call void @llvm.dbg.value(metadata ptr %incdec.ptr367, metadata !2750, metadata !DIExpression()), !dbg !2782
  %77 = load i64, ptr %incdec.ptr363, align 8, !dbg !3000
  %xor368 = xor i64 %77, %76, !dbg !3001
  %incdec.ptr369 = getelementptr inbounds i64, ptr %dl.1772, i64 2, !dbg !3002
  call void @llvm.dbg.value(metadata ptr %incdec.ptr369, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %xor368, ptr %incdec.ptr365, align 8, !dbg !3003
  %incdec.ptr370 = getelementptr inbounds i64, ptr %ll.1771, i64 3, !dbg !3004
  call void @llvm.dbg.value(metadata ptr %incdec.ptr370, metadata !2749, metadata !DIExpression()), !dbg !2782
  %78 = load i64, ptr %incdec.ptr366, align 8, !dbg !3005
  %incdec.ptr371 = getelementptr inbounds i64, ptr %rl.1769, i64 3, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %incdec.ptr371, metadata !2750, metadata !DIExpression()), !dbg !2782
  %79 = load i64, ptr %incdec.ptr367, align 8, !dbg !3007
  %xor372 = xor i64 %79, %78, !dbg !3008
  %incdec.ptr373 = getelementptr inbounds i64, ptr %dl.1772, i64 3, !dbg !3009
  call void @llvm.dbg.value(metadata ptr %incdec.ptr373, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %xor372, ptr %incdec.ptr369, align 8, !dbg !3010
  %incdec.ptr374 = getelementptr inbounds i64, ptr %ll.1771, i64 4, !dbg !3011
  call void @llvm.dbg.value(metadata ptr %incdec.ptr374, metadata !2749, metadata !DIExpression()), !dbg !2782
  %80 = load i64, ptr %incdec.ptr370, align 8, !dbg !3012
  %incdec.ptr375 = getelementptr inbounds i64, ptr %rl.1769, i64 4, !dbg !3013
  call void @llvm.dbg.value(metadata ptr %incdec.ptr375, metadata !2750, metadata !DIExpression()), !dbg !2782
  %81 = load i64, ptr %incdec.ptr371, align 8, !dbg !3014
  %xor376 = xor i64 %81, %80, !dbg !3015
  %incdec.ptr377 = getelementptr inbounds i64, ptr %dl.1772, i64 4, !dbg !3016
  call void @llvm.dbg.value(metadata ptr %incdec.ptr377, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %xor376, ptr %incdec.ptr373, align 8, !dbg !3017
  call void @llvm.dbg.value(metadata i64 %dec359, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  %tobool360.not = icmp eq i64 %dec359, 0, !dbg !3018
  br i1 %tobool360.not, label %if.end403, label %while.body361, !dbg !3018, !llvm.loop !3019

while.body383:                                    ; preds = %if.then335, %while.body383
  %dl.2765 = phi ptr [ %incdec.ptr399, %while.body383 ], [ %dc.1, %if.then335 ]
  %ll.2764 = phi ptr [ %incdec.ptr396, %while.body383 ], [ %lsave.1, %if.then335 ]
  %len.2763 = phi i64 [ %dec381, %while.body383 ], [ %div732, %if.then335 ]
  %rl.2762 = phi ptr [ %incdec.ptr397, %while.body383 ], [ %rsave.0, %if.then335 ]
  call void @llvm.dbg.value(metadata ptr %dl.2765, metadata !2748, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %ll.2764, metadata !2749, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %len.2763, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rl.2762, metadata !2750, metadata !DIExpression()), !dbg !2782
  %dec381 = add i64 %len.2763, -1, !dbg !3021
  call void @llvm.dbg.value(metadata i64 %dec381, metadata !2756, metadata !DIExpression()), !dbg !2782
  %incdec.ptr384 = getelementptr inbounds i64, ptr %ll.2764, i64 1, !dbg !3022
  call void @llvm.dbg.value(metadata ptr %incdec.ptr384, metadata !2749, metadata !DIExpression()), !dbg !2782
  %82 = load i64, ptr %ll.2764, align 8, !dbg !3024
  %incdec.ptr385 = getelementptr inbounds i64, ptr %rl.2762, i64 1, !dbg !3025
  call void @llvm.dbg.value(metadata ptr %incdec.ptr385, metadata !2750, metadata !DIExpression()), !dbg !2782
  %83 = load i64, ptr %rl.2762, align 8, !dbg !3026
  %or386 = or i64 %83, %82, !dbg !3027
  %incdec.ptr387 = getelementptr inbounds i64, ptr %dl.2765, i64 1, !dbg !3028
  call void @llvm.dbg.value(metadata ptr %incdec.ptr387, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %or386, ptr %dl.2765, align 8, !dbg !3029
  %incdec.ptr388 = getelementptr inbounds i64, ptr %ll.2764, i64 2, !dbg !3030
  call void @llvm.dbg.value(metadata ptr %incdec.ptr388, metadata !2749, metadata !DIExpression()), !dbg !2782
  %84 = load i64, ptr %incdec.ptr384, align 8, !dbg !3031
  %incdec.ptr389 = getelementptr inbounds i64, ptr %rl.2762, i64 2, !dbg !3032
  call void @llvm.dbg.value(metadata ptr %incdec.ptr389, metadata !2750, metadata !DIExpression()), !dbg !2782
  %85 = load i64, ptr %incdec.ptr385, align 8, !dbg !3033
  %or390 = or i64 %85, %84, !dbg !3034
  %incdec.ptr391 = getelementptr inbounds i64, ptr %dl.2765, i64 2, !dbg !3035
  call void @llvm.dbg.value(metadata ptr %incdec.ptr391, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %or390, ptr %incdec.ptr387, align 8, !dbg !3036
  %incdec.ptr392 = getelementptr inbounds i64, ptr %ll.2764, i64 3, !dbg !3037
  call void @llvm.dbg.value(metadata ptr %incdec.ptr392, metadata !2749, metadata !DIExpression()), !dbg !2782
  %86 = load i64, ptr %incdec.ptr388, align 8, !dbg !3038
  %incdec.ptr393 = getelementptr inbounds i64, ptr %rl.2762, i64 3, !dbg !3039
  call void @llvm.dbg.value(metadata ptr %incdec.ptr393, metadata !2750, metadata !DIExpression()), !dbg !2782
  %87 = load i64, ptr %incdec.ptr389, align 8, !dbg !3040
  %or394 = or i64 %87, %86, !dbg !3041
  %incdec.ptr395 = getelementptr inbounds i64, ptr %dl.2765, i64 3, !dbg !3042
  call void @llvm.dbg.value(metadata ptr %incdec.ptr395, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %or394, ptr %incdec.ptr391, align 8, !dbg !3043
  %incdec.ptr396 = getelementptr inbounds i64, ptr %ll.2764, i64 4, !dbg !3044
  call void @llvm.dbg.value(metadata ptr %incdec.ptr396, metadata !2749, metadata !DIExpression()), !dbg !2782
  %88 = load i64, ptr %incdec.ptr392, align 8, !dbg !3045
  %incdec.ptr397 = getelementptr inbounds i64, ptr %rl.2762, i64 4, !dbg !3046
  call void @llvm.dbg.value(metadata ptr %incdec.ptr397, metadata !2750, metadata !DIExpression()), !dbg !2782
  %89 = load i64, ptr %incdec.ptr393, align 8, !dbg !3047
  %or398 = or i64 %89, %88, !dbg !3048
  %incdec.ptr399 = getelementptr inbounds i64, ptr %dl.2765, i64 4, !dbg !3049
  call void @llvm.dbg.value(metadata ptr %incdec.ptr399, metadata !2748, metadata !DIExpression()), !dbg !2782
  store i64 %or398, ptr %incdec.ptr395, align 8, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %dec381, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  %tobool382.not = icmp eq i64 %dec381, 0, !dbg !3051
  br i1 %tobool382.not, label %if.end403, label %while.body383, !dbg !3051, !llvm.loop !3052

if.end403:                                        ; preds = %while.body383, %while.body361, %while.body340, %if.then335, %if.else324
  %dc.6 = phi ptr [ %dc.1, %if.else324 ], [ %dc.1, %if.then335 ], [ %incdec.ptr355, %while.body340 ], [ %incdec.ptr377, %while.body361 ], [ %incdec.ptr399, %while.body383 ], !dbg !2782
  %lc.6 = phi ptr [ %lsave.1, %if.else324 ], [ %lsave.1, %if.then335 ], [ %incdec.ptr352, %while.body340 ], [ %incdec.ptr374, %while.body361 ], [ %incdec.ptr396, %while.body383 ], !dbg !2782
  %rc.5 = phi ptr [ %rsave.0, %if.else324 ], [ %rsave.0, %if.then335 ], [ %incdec.ptr353, %while.body340 ], [ %incdec.ptr375, %while.body361 ], [ %incdec.ptr397, %while.body383 ], !dbg !2782
  %len.3 = phi i64 [ %34, %if.else324 ], [ %rem336, %if.then335 ], [ %rem336, %while.body340 ], [ %rem336, %while.body361 ], [ %rem336, %while.body383 ], !dbg !2782
  call void @llvm.dbg.value(metadata i64 %len.3, metadata !2756, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rc.5, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.6, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.6, metadata !2751, metadata !DIExpression()), !dbg !2782
  switch i32 %optype, label %do.body462 [
    i32 92, label %while.cond405.preheader
    i32 93, label %while.cond418.preheader
    i32 94, label %while.cond431.preheader
  ], !dbg !3054

while.cond431.preheader:                          ; preds = %if.end403
  call void @llvm.dbg.value(metadata ptr %rc.5, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.6, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.6, metadata !2751, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %len.3, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  %tobool433.not784 = icmp eq i64 %len.3, 0, !dbg !3055
  br i1 %tobool433.not784, label %mop_up, label %while.body434, !dbg !3055

while.cond418.preheader:                          ; preds = %if.end403
  call void @llvm.dbg.value(metadata ptr %rc.5, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.6, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.6, metadata !2751, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %len.3, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  %tobool420.not789 = icmp eq i64 %len.3, 0, !dbg !3056
  br i1 %tobool420.not789, label %mop_up, label %while.body421, !dbg !3056

while.cond405.preheader:                          ; preds = %if.end403
  call void @llvm.dbg.value(metadata ptr %rc.5, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.6, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.6, metadata !2751, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 %len.3, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  %tobool407.not794 = icmp eq i64 %len.3, 0, !dbg !3057
  br i1 %tobool407.not794, label %while.end416, label %while.body408, !dbg !3057

while.body408:                                    ; preds = %while.cond405.preheader, %while.body408
  %len.4798 = phi i64 [ %dec406, %while.body408 ], [ %len.3, %while.cond405.preheader ]
  %rc.6797 = phi ptr [ %incdec.ptr411, %while.body408 ], [ %rc.5, %while.cond405.preheader ]
  %lc.7796 = phi ptr [ %incdec.ptr409, %while.body408 ], [ %lc.6, %while.cond405.preheader ]
  %dc.7795 = phi ptr [ %incdec.ptr415, %while.body408 ], [ %dc.6, %while.cond405.preheader ]
  call void @llvm.dbg.value(metadata i64 %len.4798, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rc.6797, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.7796, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.7795, metadata !2751, metadata !DIExpression()), !dbg !2782
  %dec406 = add i64 %len.4798, -1, !dbg !3058
  call void @llvm.dbg.value(metadata i64 %dec406, metadata !2756, metadata !DIExpression()), !dbg !2782
  %incdec.ptr409 = getelementptr inbounds i8, ptr %lc.7796, i64 1, !dbg !3059
  call void @llvm.dbg.value(metadata ptr %incdec.ptr409, metadata !2754, metadata !DIExpression()), !dbg !2782
  %90 = load i8, ptr %lc.7796, align 1, !dbg !3060
  %incdec.ptr411 = getelementptr inbounds i8, ptr %rc.6797, i64 1, !dbg !3061
  call void @llvm.dbg.value(metadata ptr %incdec.ptr411, metadata !2755, metadata !DIExpression()), !dbg !2782
  %91 = load i8, ptr %rc.6797, align 1, !dbg !3062
  %and413731 = and i8 %91, %90, !dbg !3063
  %incdec.ptr415 = getelementptr inbounds i8, ptr %dc.7795, i64 1, !dbg !3064
  call void @llvm.dbg.value(metadata ptr %incdec.ptr415, metadata !2751, metadata !DIExpression()), !dbg !2782
  store i8 %and413731, ptr %dc.7795, align 1, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %dec406, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  %tobool407.not = icmp eq i64 %dec406, 0, !dbg !3057
  br i1 %tobool407.not, label %while.end416, label %while.body408, !dbg !3057, !llvm.loop !3066

while.end416:                                     ; preds = %while.body408, %while.cond405.preheader
  %dc.7.lcssa = phi ptr [ %dc.6, %while.cond405.preheader ], [ %incdec.ptr415, %while.body408 ], !dbg !2782
  store i8 0, ptr %dc.7.lcssa, align 1, !dbg !3067
  br label %do.body462, !dbg !3068

while.body421:                                    ; preds = %while.cond418.preheader, %while.body421
  %len.5793 = phi i64 [ %dec419, %while.body421 ], [ %len.3, %while.cond418.preheader ]
  %rc.7792 = phi ptr [ %incdec.ptr424, %while.body421 ], [ %rc.5, %while.cond418.preheader ]
  %lc.8791 = phi ptr [ %incdec.ptr422, %while.body421 ], [ %lc.6, %while.cond418.preheader ]
  %dc.8790 = phi ptr [ %incdec.ptr428, %while.body421 ], [ %dc.6, %while.cond418.preheader ]
  call void @llvm.dbg.value(metadata i64 %len.5793, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rc.7792, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.8791, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.8790, metadata !2751, metadata !DIExpression()), !dbg !2782
  %dec419 = add i64 %len.5793, -1, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %dec419, metadata !2756, metadata !DIExpression()), !dbg !2782
  %incdec.ptr422 = getelementptr inbounds i8, ptr %lc.8791, i64 1, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %incdec.ptr422, metadata !2754, metadata !DIExpression()), !dbg !2782
  %92 = load i8, ptr %lc.8791, align 1, !dbg !3071
  %incdec.ptr424 = getelementptr inbounds i8, ptr %rc.7792, i64 1, !dbg !3072
  call void @llvm.dbg.value(metadata ptr %incdec.ptr424, metadata !2755, metadata !DIExpression()), !dbg !2782
  %93 = load i8, ptr %rc.7792, align 1, !dbg !3073
  %xor426730 = xor i8 %93, %92, !dbg !3074
  %incdec.ptr428 = getelementptr inbounds i8, ptr %dc.8790, i64 1, !dbg !3075
  call void @llvm.dbg.value(metadata ptr %incdec.ptr428, metadata !2751, metadata !DIExpression()), !dbg !2782
  store i8 %xor426730, ptr %dc.8790, align 1, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %dec419, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  %tobool420.not = icmp eq i64 %dec419, 0, !dbg !3056
  br i1 %tobool420.not, label %mop_up, label %while.body421, !dbg !3056, !llvm.loop !3077

while.body434:                                    ; preds = %while.cond431.preheader, %while.body434
  %len.6788 = phi i64 [ %dec432, %while.body434 ], [ %len.3, %while.cond431.preheader ]
  %rc.8787 = phi ptr [ %incdec.ptr437, %while.body434 ], [ %rc.5, %while.cond431.preheader ]
  %lc.9786 = phi ptr [ %incdec.ptr435, %while.body434 ], [ %lc.6, %while.cond431.preheader ]
  %dc.9785 = phi ptr [ %incdec.ptr441, %while.body434 ], [ %dc.6, %while.cond431.preheader ]
  call void @llvm.dbg.value(metadata i64 %len.6788, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %rc.8787, metadata !2755, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %lc.9786, metadata !2754, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %dc.9785, metadata !2751, metadata !DIExpression()), !dbg !2782
  %dec432 = add i64 %len.6788, -1, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %dec432, metadata !2756, metadata !DIExpression()), !dbg !2782
  %incdec.ptr435 = getelementptr inbounds i8, ptr %lc.9786, i64 1, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %incdec.ptr435, metadata !2754, metadata !DIExpression()), !dbg !2782
  %94 = load i8, ptr %lc.9786, align 1, !dbg !3080
  %incdec.ptr437 = getelementptr inbounds i8, ptr %rc.8787, i64 1, !dbg !3081
  call void @llvm.dbg.value(metadata ptr %incdec.ptr437, metadata !2755, metadata !DIExpression()), !dbg !2782
  %95 = load i8, ptr %rc.8787, align 1, !dbg !3082
  %or439729 = or i8 %95, %94, !dbg !3083
  %incdec.ptr441 = getelementptr inbounds i8, ptr %dc.9785, i64 1, !dbg !3084
  call void @llvm.dbg.value(metadata ptr %incdec.ptr441, metadata !2751, metadata !DIExpression()), !dbg !2782
  store i8 %or439729, ptr %dc.9785, align 1, !dbg !3085
  call void @llvm.dbg.value(metadata i64 %dec432, metadata !2756, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !2782
  %tobool433.not = icmp eq i64 %dec432, 0, !dbg !3055
  br i1 %tobool433.not, label %mop_up, label %while.body434, !dbg !3055, !llvm.loop !3086

mop_up:                                           ; preds = %while.body434, %while.body421, %while.cond431.preheader, %while.cond418.preheader
  call void @llvm.dbg.label(metadata !2778), !dbg !3087
  call void @llvm.dbg.value(metadata i64 %34, metadata !2756, metadata !DIExpression()), !dbg !2782
  %96 = load i64, ptr %rightlen, align 8, !dbg !3088
  call void @llvm.dbg.value(metadata i64 %96, metadata !2753, metadata !DIExpression()), !dbg !2782
  %cmp443 = icmp ugt i64 %96, %34, !dbg !3090
  br i1 %cmp443, label %if.then445, label %if.else448, !dbg !3091

if.then445:                                       ; preds = %mop_up
  %add.ptr446 = getelementptr inbounds i8, ptr %rsave.0, i64 %34, !dbg !3092
  %sub447 = sub i64 %96, %34, !dbg !3092
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %sv, ptr noundef %add.ptr446, i64 noundef %sub447, i32 noundef 0) #6, !dbg !3092
  br label %do.body462, !dbg !3092

if.else448:                                       ; preds = %mop_up
  %97 = load i64, ptr %leftlen, align 8, !dbg !3093
  call void @llvm.dbg.value(metadata i64 %97, metadata !2752, metadata !DIExpression()), !dbg !2782
  %cmp449 = icmp ugt i64 %97, %34, !dbg !3095
  br i1 %cmp449, label %if.then451, label %if.else454, !dbg !3096

if.then451:                                       ; preds = %if.else448
  %add.ptr452 = getelementptr inbounds i8, ptr %lsave.1, i64 %34, !dbg !3097
  %sub453 = sub i64 %97, %34, !dbg !3097
  call void @Perl_sv_catpvn_flags(ptr noundef nonnull %sv, ptr noundef %add.ptr452, i64 noundef %sub453, i32 noundef 0) #6, !dbg !3097
  br label %do.body462, !dbg !3097

if.else454:                                       ; preds = %if.else448
  %sv_u455 = getelementptr inbounds %struct.sv, ptr %sv, i64 0, i32 3, !dbg !3098
  %98 = load ptr, ptr %sv_u455, align 8, !dbg !3098
  %99 = load ptr, ptr %sv, align 8, !dbg !3098
  %xpv_cur457 = getelementptr inbounds %struct.xpv, ptr %99, i64 0, i32 2, !dbg !3098
  %100 = load i64, ptr %xpv_cur457, align 8, !dbg !3098
  %add.ptr458 = getelementptr inbounds i8, ptr %98, i64 %100, !dbg !3098
  store i8 0, ptr %add.ptr458, align 1, !dbg !3099
  br label %do.body462

do.body462:                                       ; preds = %sw.epilog, %if.then445, %if.else454, %if.then451, %if.end403, %while.end416
  call void @llvm.dbg.label(metadata !2781), !dbg !3100
  %101 = load i8, ptr @PL_tainting, align 1, !dbg !3101, !range !2143
  %tobool463.not = icmp eq i8 %101, 0, !dbg !3101
  %102 = load i8, ptr @PL_tainted, align 1
  %tobool468.not = icmp eq i8 %102, 0
  %or.cond748 = select i1 %tobool463.not, i1 true, i1 %tobool468.not, !dbg !3104
  br i1 %or.cond748, label %do.end485, label %if.then478, !dbg !3104

if.then478:                                       ; preds = %do.body462
  call void @Perl_sv_magic(ptr noundef nonnull %sv, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #6, !dbg !3105
  br label %do.end485, !dbg !3105

do.end485:                                        ; preds = %if.then478, %do.body462
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rightlen) #6, !dbg !3111
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %leftlen) #6, !dbg !3111
  ret void, !dbg !3111
}

declare !dbg !3112 ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !3115 i64 @Perl_sv_utf8_upgrade_flags_grow(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !3118 ptr @Perl_safesyscalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !3121 void @Perl_sv_usepvn_flags(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !3124 i64 @Perl_utf8n_to_uvchr(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !3127 ptr @Perl_uvoffuni_to_utf8_flags(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #4

declare !dbg !3130 ptr @Perl_savepvn(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !3133 void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Perl_do_kv() local_unnamed_addr #0 !dbg !3134 {
entry:
  %0 = load ptr, ptr @PL_stack_sp, align 8, !dbg !3158
  call void @llvm.dbg.value(metadata ptr %0, metadata !3136, metadata !DIExpression()), !dbg !3159
  %incdec.ptr = getelementptr inbounds ptr, ptr %0, i64 -1, !dbg !3160
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !3136, metadata !DIExpression()), !dbg !3159
  %1 = load ptr, ptr %0, align 8, !dbg !3160
  call void @llvm.dbg.value(metadata ptr %1, metadata !3137, metadata !DIExpression()), !dbg !3159
  %2 = load ptr, ptr @PL_op, align 8, !dbg !3161
  %op_flags = getelementptr inbounds %struct.op, ptr %2, i64 0, i32 5, !dbg !3161
  %3 = load i8, ptr %op_flags, align 2, !dbg !3161
  %4 = and i8 %3, 3, !dbg !3161
  %tobool.not = icmp eq i8 %4, 0, !dbg !3161
  br i1 %tobool.not, label %cond.false, label %cond.true, !dbg !3161

cond.true:                                        ; preds = %entry
  %and = zext i8 %4 to i32, !dbg !3161
  br label %cond.end, !dbg !3161

cond.false:                                       ; preds = %entry
  %call = tail call i32 @Perl_block_gimme() #6, !dbg !3161
  %.pre = load ptr, ptr @PL_op, align 8, !dbg !3162
  br label %cond.end, !dbg !3161

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = phi ptr [ %2, %cond.true ], [ %.pre, %cond.false ], !dbg !3162
  %cond = phi i32 [ %and, %cond.true ], [ %call, %cond.false ], !dbg !3161
  call void @llvm.dbg.value(metadata i32 %cond, metadata !3139, metadata !DIExpression()), !dbg !3159
  %op_type = getelementptr inbounds %struct.op, ptr %5, i64 0, i32 4, !dbg !3163
  %bf.load = load i16, ptr %op_type, align 8, !dbg !3163
  %bf.clear = and i16 %bf.load, 511, !dbg !3163
  call void @llvm.dbg.value(metadata i1 undef, metadata !3140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3159
  switch i16 %bf.clear, label %lor.rhs13 [
    i16 149, label %lor.end29
    i16 11, label %lor.end29
  ], !dbg !3164

lor.rhs13:                                        ; preds = %cond.end
  %cmp18 = icmp eq i16 %bf.clear, 146, !dbg !3165
  %cmp25 = icmp eq i16 %bf.clear, 382
  %spec.select253 = or i1 %cmp18, %cmp25, !dbg !3166
  br label %lor.end29, !dbg !3166

lor.end29:                                        ; preds = %lor.rhs13, %cond.end, %cond.end
  %6 = phi i1 [ true, %cond.end ], [ %spec.select253, %lor.rhs13 ], [ true, %cond.end ]
  %lor.ext30 = zext i1 %6 to i64, !dbg !3164
  call void @llvm.dbg.value(metadata i1 %6, metadata !3141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3159
  switch i16 %bf.clear, label %lor.rhs32 [
    i16 149, label %lor.end48
    i16 11, label %lor.end48
  ], !dbg !3167

lor.rhs32:                                        ; preds = %lor.end29
  %cmp37 = icmp eq i16 %bf.clear, 145, !dbg !3168
  %cmp44 = icmp eq i16 %bf.clear, 383
  %spec.select254 = or i1 %cmp37, %cmp44, !dbg !3169
  br label %lor.end48, !dbg !3169

lor.end48:                                        ; preds = %lor.rhs32, %lor.end29, %lor.end29
  %7 = phi i1 [ true, %lor.end29 ], [ true, %lor.end29 ], [ %spec.select254, %lor.rhs32 ]
  %lor.ext49 = zext i1 %7 to i64, !dbg !3167
  call void @llvm.dbg.value(metadata i1 %7, metadata !3142, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3159
  %call50 = tail call i32 @Perl_hv_iterinit(ptr noundef %1) #6, !dbg !3170
  switch i32 %cond, label %do.body109 [
    i32 1, label %cleanup
    i32 2, label %if.then55
  ], !dbg !3171

if.then55:                                        ; preds = %lor.end48
  %8 = load ptr, ptr @PL_op, align 8, !dbg !3172
  %op_flags56 = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 5, !dbg !3173
  %9 = load i8, ptr %op_flags56, align 2, !dbg !3173
  %10 = and i8 %9, 32, !dbg !3174
  %tobool59.not = icmp eq i8 %10, 0, !dbg !3174
  br i1 %tobool59.not, label %lor.lhs.false, label %if.then65, !dbg !3175

lor.lhs.false:                                    ; preds = %if.then55
  %op_private = getelementptr inbounds %struct.op, ptr %8, i64 0, i32 6, !dbg !3176
  %11 = load i8, ptr %op_private, align 1, !dbg !3176
  %12 = and i8 %11, 8, !dbg !3176
  %tobool62.not = icmp eq i8 %12, 0, !dbg !3176
  br i1 %tobool62.not, label %if.else, label %land.lhs.true, !dbg !3176

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call63 = tail call i32 @Perl_is_lvalue_sub() #6, !dbg !3176
  %tobool64.not = icmp eq i32 %call63, 0, !dbg !3176
  br i1 %tobool64.not, label %land.lhs.true.if.else_crit_edge, label %if.then65, !dbg !3177

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  %.pre284 = load ptr, ptr @PL_op, align 8, !dbg !3178
  br label %if.else, !dbg !3177

if.then65:                                        ; preds = %land.lhs.true, %if.then55
  %call66 = tail call ptr @Perl_newSV_type(i32 noundef 10) #6, !dbg !3179
  %call67 = tail call ptr @Perl_sv_2mortal(ptr noundef %call66) #6, !dbg !3179
  call void @llvm.dbg.value(metadata ptr %call67, metadata !3143, metadata !DIExpression()), !dbg !3180
  tail call void @Perl_sv_magic(ptr noundef %call67, ptr noundef null, i32 noundef 107, ptr noundef null, i32 noundef 0) #6, !dbg !3181
  %13 = load ptr, ptr %call67, align 8, !dbg !3182
  %xlv_type = getelementptr inbounds %struct.xpvlv, ptr %13, i64 0, i32 9, !dbg !3182
  store i8 107, ptr %xlv_type, align 8, !dbg !3183
  call void @llvm.dbg.value(metadata ptr %1, metadata !3184, metadata !DIExpression()), !dbg !3190
  %cmp.not.i = icmp eq ptr %1, null, !dbg !3192
  br i1 %cmp.not.i, label %S_SvREFCNT_inc.exit, label %if.then.i, !dbg !3194

if.then.i:                                        ; preds = %if.then65
  %sv_refcnt.i = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 1, !dbg !3195
  %14 = load i32, ptr %sv_refcnt.i, align 8, !dbg !3196
  %inc.i = add i32 %14, 1, !dbg !3196
  store i32 %inc.i, ptr %sv_refcnt.i, align 8, !dbg !3196
  br label %S_SvREFCNT_inc.exit, !dbg !3195

S_SvREFCNT_inc.exit:                              ; preds = %if.then65, %if.then.i
  %15 = load ptr, ptr %call67, align 8, !dbg !3197
  %xlv_targ = getelementptr inbounds %struct.xpvlv, ptr %15, i64 0, i32 8, !dbg !3197
  store ptr %1, ptr %xlv_targ, align 8, !dbg !3198
  call void @llvm.dbg.value(metadata ptr %0, metadata !3136, metadata !DIExpression()), !dbg !3159
  br label %if.end106, !dbg !3199

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false
  %16 = phi ptr [ %.pre284, %land.lhs.true.if.else_crit_edge ], [ %8, %lor.lhs.false ], !dbg !3178
  %17 = load ptr, ptr @PL_curpad, align 8, !dbg !3178
  %op_targ = getelementptr inbounds %struct.op, ptr %16, i64 0, i32 3, !dbg !3178
  %18 = load i64, ptr %op_targ, align 8, !dbg !3178
  %arrayidx = getelementptr inbounds ptr, ptr %17, i64 %18, !dbg !3178
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !3178
  call void @llvm.dbg.value(metadata ptr %19, metadata !3150, metadata !DIExpression()), !dbg !3200
  %sv_flags = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2, !dbg !3201
  %20 = load i32, ptr %sv_flags, align 4, !dbg !3201
  %and71 = and i32 %20, 8388608, !dbg !3201
  %tobool72.not = icmp eq i32 %and71, 0, !dbg !3201
  br i1 %tobool72.not, label %if.then77, label %cond.true73, !dbg !3203

cond.true73:                                      ; preds = %if.else
  %call74 = tail call ptr @Perl_mg_find(ptr noundef nonnull %1, i32 noundef 80) #6, !dbg !3201
  %tobool75.not = icmp eq ptr %call74, null, !dbg !3201
  br i1 %tobool75.not, label %if.then77, label %while.cond, !dbg !3201

if.then77:                                        ; preds = %if.else, %cond.true73
  %21 = load ptr, ptr %1, align 8, !dbg !3204
  %xhv_keys = getelementptr inbounds %struct.xpvhv, ptr %21, i64 0, i32 2, !dbg !3204
  %22 = load i64, ptr %xhv_keys, align 8, !dbg !3204
  %xmg_u = getelementptr inbounds %struct.xpvmg, ptr %21, i64 0, i32 1, !dbg !3204
  %23 = load ptr, ptr %xmg_u, align 8, !dbg !3204
  %tobool80.not = icmp eq ptr %23, null, !dbg !3204
  br i1 %tobool80.not, label %cond.end84, label %cond.true81, !dbg !3204

cond.true81:                                      ; preds = %if.then77
  %call82 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %1) #6, !dbg !3204
  %phi.cast252 = sext i32 %call82 to i64, !dbg !3204
  br label %cond.end84, !dbg !3204

cond.end84:                                       ; preds = %if.then77, %cond.true81
  %cond85 = phi i64 [ %phi.cast252, %cond.true81 ], [ 0, %if.then77 ]
  %sub = sub i64 %22, %cond85, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %sub, metadata !3148, metadata !DIExpression()), !dbg !3200
  br label %do.body, !dbg !3206

while.cond:                                       ; preds = %cond.true73, %while.cond
  %i.0 = phi i64 [ %inc, %while.cond ], [ 0, %cond.true73 ], !dbg !3207
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3148, metadata !DIExpression()), !dbg !3200
  %call88 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %1, i32 noundef 0) #6, !dbg !3209
  %tobool89.not = icmp eq ptr %call88, null, !dbg !3210
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3211
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3148, metadata !DIExpression()), !dbg !3200
  br i1 %tobool89.not, label %do.body, label %while.cond, !dbg !3210, !llvm.loop !3212

do.body:                                          ; preds = %while.cond, %cond.end84
  %i.1 = phi i64 [ %sub, %cond.end84 ], [ %i.0, %while.cond ], !dbg !3213
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !3148, metadata !DIExpression()), !dbg !3200
  tail call void @Perl_sv_setiv(ptr noundef %19, i64 noundef %i.1) #6, !dbg !3214
  %sv_flags93 = getelementptr inbounds %struct.sv, ptr %19, i64 0, i32 2, !dbg !3216
  %24 = load i32, ptr %sv_flags93, align 4, !dbg !3216
  %and94 = and i32 %24, 4194304, !dbg !3216
  %tobool95.not = icmp eq i32 %and94, 0, !dbg !3216
  br i1 %tobool95.not, label %if.end106, label %if.then98, !dbg !3220

if.then98:                                        ; preds = %do.body
  %call99 = tail call i32 @Perl_mg_set(ptr noundef nonnull %19) #6, !dbg !3216
  br label %if.end106, !dbg !3216

if.end106:                                        ; preds = %if.then98, %do.body, %S_SvREFCNT_inc.exit
  %storemerge = phi ptr [ %call67, %S_SvREFCNT_inc.exit ], [ %19, %do.body ], [ %19, %if.then98 ], !dbg !3221
  store ptr %storemerge, ptr %0, align 8, !dbg !3221
  call void @llvm.dbg.value(metadata ptr %0, metadata !3136, metadata !DIExpression()), !dbg !3159
  br label %cleanup, !dbg !3222

do.body109:                                       ; preds = %lor.end48
  %25 = load ptr, ptr @PL_stack_max, align 8, !dbg !3223
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i64, !dbg !3223
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr to i64, !dbg !3223
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3223
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 3, !dbg !3223
  %26 = load ptr, ptr %1, align 8, !dbg !3223
  %xhv_keys111 = getelementptr inbounds %struct.xpvhv, ptr %26, i64 0, i32 2, !dbg !3223
  %27 = load i64, ptr %xhv_keys111, align 8, !dbg !3223
  %xmg_u113 = getelementptr inbounds %struct.xpvmg, ptr %26, i64 0, i32 1, !dbg !3223
  %28 = load ptr, ptr %xmg_u113, align 8, !dbg !3223
  %tobool114.not = icmp eq ptr %28, null, !dbg !3223
  br i1 %tobool114.not, label %cond.end118, label %cond.true115, !dbg !3223

cond.true115:                                     ; preds = %do.body109
  %call116 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %1) #6, !dbg !3223
  %phi.cast = sext i32 %call116 to i64, !dbg !3223
  br label %cond.end118, !dbg !3223

cond.end118:                                      ; preds = %do.body109, %cond.true115
  %cond119 = phi i64 [ %phi.cast, %cond.true115 ], [ 0, %do.body109 ]
  %sub121 = sub i64 %27, %cond119, !dbg !3223
  %add = add nuw nsw i64 %lor.ext49, %lor.ext30, !dbg !3223
  %mul = mul i64 %sub121, %add, !dbg !3223
  %cmp123 = icmp slt i64 %sub.ptr.div, %mul, !dbg !3223
  br i1 %cmp123, label %if.then127, label %do.end146, !dbg !3226

if.then127:                                       ; preds = %cond.end118
  %29 = load ptr, ptr %1, align 8, !dbg !3227
  %xhv_keys129 = getelementptr inbounds %struct.xpvhv, ptr %29, i64 0, i32 2, !dbg !3227
  %30 = load i64, ptr %xhv_keys129, align 8, !dbg !3227
  %xmg_u131 = getelementptr inbounds %struct.xpvmg, ptr %29, i64 0, i32 1, !dbg !3227
  %31 = load ptr, ptr %xmg_u131, align 8, !dbg !3227
  %tobool132.not = icmp eq ptr %31, null, !dbg !3227
  br i1 %tobool132.not, label %cond.end136, label %cond.true133, !dbg !3227

cond.true133:                                     ; preds = %if.then127
  %call134 = tail call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %1) #6, !dbg !3227
  %phi.cast251 = sext i32 %call134 to i64, !dbg !3227
  br label %cond.end136, !dbg !3227

cond.end136:                                      ; preds = %if.then127, %cond.true133
  %cond137 = phi i64 [ %phi.cast251, %cond.true133 ], [ 0, %if.then127 ]
  %sub139 = sub i64 %30, %cond137, !dbg !3227
  %mul142 = mul i64 %sub139, %add, !dbg !3227
  %call143 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %incdec.ptr, ptr noundef nonnull %incdec.ptr, i64 noundef %mul142) #6, !dbg !3227
  call void @llvm.dbg.value(metadata ptr %call143, metadata !3136, metadata !DIExpression()), !dbg !3159
  br label %do.end146, !dbg !3227

do.end146:                                        ; preds = %cond.end118, %cond.end136
  %sp.1 = phi ptr [ %call143, %cond.end136 ], [ %incdec.ptr, %cond.end118 ], !dbg !3159
  call void @llvm.dbg.value(metadata ptr %sp.1, metadata !3136, metadata !DIExpression()), !dbg !3159
  %call148255 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %1, i32 noundef 0) #6, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %call148255, metadata !3138, metadata !DIExpression()), !dbg !3159
  %tobool149.not256 = icmp eq ptr %call148255, null, !dbg !3230
  br i1 %tobool149.not256, label %cleanup, label %while.body150.lr.ph, !dbg !3230

while.body150.lr.ph:                              ; preds = %do.end146
  br i1 %7, label %while.body150.lr.ph.split.us, label %while.body150.lr.ph.split, !dbg !3231

while.body150.lr.ph.split.us:                     ; preds = %while.body150.lr.ph
  br i1 %6, label %while.body150.us.us, label %while.body150.us, !dbg !3232

while.body150.us.us:                              ; preds = %while.body150.lr.ph.split.us, %do.end190.us.us
  %call148258.us.us = phi ptr [ %call148.us.us, %do.end190.us.us ], [ %call148255, %while.body150.lr.ph.split.us ]
  %sp.2257.us.us = phi ptr [ %incdec.ptr191.us.us, %do.end190.us.us ], [ %sp.1, %while.body150.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata ptr %sp.2257.us.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  %call153.us.us = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %call148258.us.us) #6, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %call153.us.us, metadata !3151, metadata !DIExpression()), !dbg !3234
  %32 = load ptr, ptr @PL_stack_max, align 8, !dbg !3235
  %sub.ptr.lhs.cast156.us.us = ptrtoint ptr %32 to i64, !dbg !3235
  %sub.ptr.rhs.cast157.us.us = ptrtoint ptr %sp.2257.us.us to i64, !dbg !3235
  %sub.ptr.sub158.us.us = sub i64 %sub.ptr.lhs.cast156.us.us, %sub.ptr.rhs.cast157.us.us, !dbg !3235
  %cmp160.us.us = icmp slt i64 %sub.ptr.sub158.us.us, 8, !dbg !3235
  br i1 %cmp160.us.us, label %if.then164.us.us, label %do.end168.us.us, !dbg !3239

if.then164.us.us:                                 ; preds = %while.body150.us.us
  %call165.us.us = tail call ptr @Perl_stack_grow(ptr noundef %sp.2257.us.us, ptr noundef %sp.2257.us.us, i64 noundef 1) #6, !dbg !3240
  call void @llvm.dbg.value(metadata ptr %call165.us.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  br label %do.end168.us.us, !dbg !3240

do.end168.us.us:                                  ; preds = %if.then164.us.us, %while.body150.us.us
  %sp.3.us.us = phi ptr [ %call165.us.us, %if.then164.us.us ], [ %sp.2257.us.us, %while.body150.us.us ], !dbg !3159
  call void @llvm.dbg.value(metadata ptr %sp.3.us.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  %incdec.ptr169.us.us = getelementptr inbounds ptr, ptr %sp.3.us.us, i64 1, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %incdec.ptr169.us.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  store ptr %call153.us.us, ptr %incdec.ptr169.us.us, align 8, !dbg !3242
  call void @llvm.dbg.value(metadata ptr undef, metadata !3136, metadata !DIExpression()), !dbg !3159
  %call175.us.us = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %1, ptr noundef nonnull %call148258.us.us) #6, !dbg !3243
  call void @llvm.dbg.value(metadata ptr %call175.us.us, metadata !3155, metadata !DIExpression()), !dbg !3244
  %33 = load ptr, ptr @PL_stack_max, align 8, !dbg !3245
  %sub.ptr.lhs.cast178.us.us = ptrtoint ptr %33 to i64, !dbg !3245
  %sub.ptr.rhs.cast179.us.us = ptrtoint ptr %incdec.ptr169.us.us to i64, !dbg !3245
  %sub.ptr.sub180.us.us = sub i64 %sub.ptr.lhs.cast178.us.us, %sub.ptr.rhs.cast179.us.us, !dbg !3245
  %cmp182.us.us = icmp slt i64 %sub.ptr.sub180.us.us, 8, !dbg !3245
  br i1 %cmp182.us.us, label %if.then186.us.us, label %do.end190.us.us, !dbg !3249

if.then186.us.us:                                 ; preds = %do.end168.us.us
  %call187.us.us = tail call ptr @Perl_stack_grow(ptr noundef nonnull %incdec.ptr169.us.us, ptr noundef nonnull %incdec.ptr169.us.us, i64 noundef 1) #6, !dbg !3250
  call void @llvm.dbg.value(metadata ptr %call187.us.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  br label %do.end190.us.us, !dbg !3250

do.end190.us.us:                                  ; preds = %if.then186.us.us, %do.end168.us.us
  %sp.5.us.us = phi ptr [ %call187.us.us, %if.then186.us.us ], [ %incdec.ptr169.us.us, %do.end168.us.us ], !dbg !3252
  call void @llvm.dbg.value(metadata ptr %sp.5.us.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  %incdec.ptr191.us.us = getelementptr inbounds ptr, ptr %sp.5.us.us, i64 1, !dbg !3253
  call void @llvm.dbg.value(metadata ptr %incdec.ptr191.us.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  store ptr %call175.us.us, ptr %incdec.ptr191.us.us, align 8, !dbg !3253
  call void @llvm.dbg.value(metadata ptr undef, metadata !3136, metadata !DIExpression()), !dbg !3159
  %call148.us.us = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %1, i32 noundef 0) #6, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %call148.us.us, metadata !3138, metadata !DIExpression()), !dbg !3159
  %tobool149.not.us.us = icmp eq ptr %call148.us.us, null, !dbg !3230
  br i1 %tobool149.not.us.us, label %cleanup, label %while.body150.us.us, !dbg !3230, !llvm.loop !3254

while.body150.us:                                 ; preds = %while.body150.lr.ph.split.us, %do.end190.us
  %call148258.us = phi ptr [ %call148.us, %do.end190.us ], [ %call148255, %while.body150.lr.ph.split.us ]
  %sp.2257.us = phi ptr [ %incdec.ptr191.us, %do.end190.us ], [ %sp.1, %while.body150.lr.ph.split.us ]
  call void @llvm.dbg.value(metadata ptr %sp.2257.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  %call175.us = tail call ptr @Perl_hv_iterval(ptr noundef nonnull %1, ptr noundef nonnull %call148258.us) #6, !dbg !3243
  call void @llvm.dbg.value(metadata ptr %call175.us, metadata !3155, metadata !DIExpression()), !dbg !3244
  %34 = load ptr, ptr @PL_stack_max, align 8, !dbg !3245
  %sub.ptr.lhs.cast178.us = ptrtoint ptr %34 to i64, !dbg !3245
  %sub.ptr.rhs.cast179.us = ptrtoint ptr %sp.2257.us to i64, !dbg !3245
  %sub.ptr.sub180.us = sub i64 %sub.ptr.lhs.cast178.us, %sub.ptr.rhs.cast179.us, !dbg !3245
  %cmp182.us = icmp slt i64 %sub.ptr.sub180.us, 8, !dbg !3245
  br i1 %cmp182.us, label %if.then186.us, label %do.end190.us, !dbg !3249

if.then186.us:                                    ; preds = %while.body150.us
  %call187.us = tail call ptr @Perl_stack_grow(ptr noundef %sp.2257.us, ptr noundef %sp.2257.us, i64 noundef 1) #6, !dbg !3250
  call void @llvm.dbg.value(metadata ptr %call187.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  br label %do.end190.us, !dbg !3250

do.end190.us:                                     ; preds = %if.then186.us, %while.body150.us
  %sp.5.us = phi ptr [ %call187.us, %if.then186.us ], [ %sp.2257.us, %while.body150.us ], !dbg !3252
  call void @llvm.dbg.value(metadata ptr %sp.5.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  %incdec.ptr191.us = getelementptr inbounds ptr, ptr %sp.5.us, i64 1, !dbg !3253
  call void @llvm.dbg.value(metadata ptr %incdec.ptr191.us, metadata !3136, metadata !DIExpression()), !dbg !3159
  store ptr %call175.us, ptr %incdec.ptr191.us, align 8, !dbg !3253
  call void @llvm.dbg.value(metadata ptr undef, metadata !3136, metadata !DIExpression()), !dbg !3159
  %call148.us = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %1, i32 noundef 0) #6, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %call148.us, metadata !3138, metadata !DIExpression()), !dbg !3159
  %tobool149.not.us = icmp eq ptr %call148.us, null, !dbg !3230
  br i1 %tobool149.not.us, label %cleanup, label %while.body150.us, !dbg !3230, !llvm.loop !3254

while.body150.lr.ph.split:                        ; preds = %while.body150.lr.ph
  br i1 %6, label %while.body150.us260, label %while.body150, !dbg !3232

while.body150.us260:                              ; preds = %while.body150.lr.ph.split, %do.end168.us271
  %call148258.us261 = phi ptr [ %call148.us276, %do.end168.us271 ], [ %call148255, %while.body150.lr.ph.split ]
  %sp.2257.us262 = phi ptr [ %incdec.ptr169.us273, %do.end168.us271 ], [ %sp.1, %while.body150.lr.ph.split ]
  call void @llvm.dbg.value(metadata ptr %sp.2257.us262, metadata !3136, metadata !DIExpression()), !dbg !3159
  %call153.us264 = tail call ptr @Perl_hv_iterkeysv(ptr noundef nonnull %call148258.us261) #6, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %call153.us264, metadata !3151, metadata !DIExpression()), !dbg !3234
  %35 = load ptr, ptr @PL_stack_max, align 8, !dbg !3235
  %sub.ptr.lhs.cast156.us265 = ptrtoint ptr %35 to i64, !dbg !3235
  %sub.ptr.rhs.cast157.us266 = ptrtoint ptr %sp.2257.us262 to i64, !dbg !3235
  %sub.ptr.sub158.us267 = sub i64 %sub.ptr.lhs.cast156.us265, %sub.ptr.rhs.cast157.us266, !dbg !3235
  %cmp160.us268 = icmp slt i64 %sub.ptr.sub158.us267, 8, !dbg !3235
  br i1 %cmp160.us268, label %if.then164.us269, label %do.end168.us271, !dbg !3239

if.then164.us269:                                 ; preds = %while.body150.us260
  %call165.us270 = tail call ptr @Perl_stack_grow(ptr noundef %sp.2257.us262, ptr noundef %sp.2257.us262, i64 noundef 1) #6, !dbg !3240
  call void @llvm.dbg.value(metadata ptr %call165.us270, metadata !3136, metadata !DIExpression()), !dbg !3159
  br label %do.end168.us271, !dbg !3240

do.end168.us271:                                  ; preds = %if.then164.us269, %while.body150.us260
  %sp.3.us272 = phi ptr [ %call165.us270, %if.then164.us269 ], [ %sp.2257.us262, %while.body150.us260 ], !dbg !3159
  call void @llvm.dbg.value(metadata ptr %sp.3.us272, metadata !3136, metadata !DIExpression()), !dbg !3159
  %incdec.ptr169.us273 = getelementptr inbounds ptr, ptr %sp.3.us272, i64 1, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %incdec.ptr169.us273, metadata !3136, metadata !DIExpression()), !dbg !3159
  store ptr %call153.us264, ptr %incdec.ptr169.us273, align 8, !dbg !3242
  call void @llvm.dbg.value(metadata ptr undef, metadata !3136, metadata !DIExpression()), !dbg !3159
  %call148.us276 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %1, i32 noundef 0) #6, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %call148.us276, metadata !3138, metadata !DIExpression()), !dbg !3159
  %tobool149.not.us277 = icmp eq ptr %call148.us276, null, !dbg !3230
  br i1 %tobool149.not.us277, label %cleanup, label %while.body150.us260, !dbg !3230, !llvm.loop !3254

while.body150:                                    ; preds = %while.body150.lr.ph.split, %while.body150
  call void @llvm.dbg.value(metadata ptr undef, metadata !3136, metadata !DIExpression()), !dbg !3159
  %call148 = tail call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %1, i32 noundef 0) #6, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %call148, metadata !3138, metadata !DIExpression()), !dbg !3159
  %tobool149.not = icmp eq ptr %call148, null, !dbg !3230
  br i1 %tobool149.not, label %cleanup, label %while.body150, !dbg !3230, !llvm.loop !3254

cleanup:                                          ; preds = %while.body150, %do.end168.us271, %do.end190.us, %do.end190.us.us, %do.end146, %lor.end48, %if.end106
  %sp.2.lcssa.sink = phi ptr [ %0, %if.end106 ], [ %incdec.ptr, %lor.end48 ], [ %sp.1, %do.end146 ], [ %incdec.ptr191.us.us, %do.end190.us.us ], [ %incdec.ptr191.us, %do.end190.us ], [ %incdec.ptr169.us273, %do.end168.us271 ], [ %sp.1, %while.body150 ]
  store ptr %sp.2.lcssa.sink, ptr @PL_stack_sp, align 8, !dbg !3159
  %retval.0.in = load ptr, ptr @PL_op, align 8, !dbg !3159
  %retval.0 = load ptr, ptr %retval.0.in, align 8, !dbg !3159
  ret ptr %retval.0, !dbg !3256
}

declare !dbg !3257 i32 @Perl_block_gimme() local_unnamed_addr #2

declare !dbg !3258 i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

declare !dbg !3261 ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

declare !dbg !3264 ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

declare !dbg !3268 ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !3271 i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

declare !dbg !3274 ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !3277 void @Perl_sv_setiv(ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !3281 ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !3284 ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

declare !dbg !3287 ptr @Perl_hv_iterval(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !3290 ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !3293 ptr @Perl_bytes_to_utf8(ptr noundef, ptr noundef) local_unnamed_addr #2

declare !dbg !3296 i64 @Perl_swash_fetch(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare !dbg !3299 zeroext i1 @Perl_ckwarn(i32 noundef) local_unnamed_addr #2

declare !dbg !3302 ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

declare !dbg !3305 ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1101, !1102, !1103, !1104, !1105, !1106}
!llvm.ident = !{!1107}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !424, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/doop.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "995ce78900e8685a6915b9963eb14124")
!2 = !{!3, !24}
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opcode", file: !25, line: 16, baseType: !5, size: 32, elements: !26)
!25 = !DIFile(filename: "apps/500.perlbench_r/src/opnames.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d1f3c200effbe760f517f3ab2ea52b45")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!27 = !DIEnumerator(name: "OP_NULL", value: 0)
!28 = !DIEnumerator(name: "OP_STUB", value: 1)
!29 = !DIEnumerator(name: "OP_SCALAR", value: 2)
!30 = !DIEnumerator(name: "OP_PUSHMARK", value: 3)
!31 = !DIEnumerator(name: "OP_WANTARRAY", value: 4)
!32 = !DIEnumerator(name: "OP_CONST", value: 5)
!33 = !DIEnumerator(name: "OP_GVSV", value: 6)
!34 = !DIEnumerator(name: "OP_GV", value: 7)
!35 = !DIEnumerator(name: "OP_GELEM", value: 8)
!36 = !DIEnumerator(name: "OP_PADSV", value: 9)
!37 = !DIEnumerator(name: "OP_PADAV", value: 10)
!38 = !DIEnumerator(name: "OP_PADHV", value: 11)
!39 = !DIEnumerator(name: "OP_PADANY", value: 12)
!40 = !DIEnumerator(name: "OP_PUSHRE", value: 13)
!41 = !DIEnumerator(name: "OP_RV2GV", value: 14)
!42 = !DIEnumerator(name: "OP_RV2SV", value: 15)
!43 = !DIEnumerator(name: "OP_AV2ARYLEN", value: 16)
!44 = !DIEnumerator(name: "OP_RV2CV", value: 17)
!45 = !DIEnumerator(name: "OP_ANONCODE", value: 18)
!46 = !DIEnumerator(name: "OP_PROTOTYPE", value: 19)
!47 = !DIEnumerator(name: "OP_REFGEN", value: 20)
!48 = !DIEnumerator(name: "OP_SREFGEN", value: 21)
!49 = !DIEnumerator(name: "OP_REF", value: 22)
!50 = !DIEnumerator(name: "OP_BLESS", value: 23)
!51 = !DIEnumerator(name: "OP_BACKTICK", value: 24)
!52 = !DIEnumerator(name: "OP_GLOB", value: 25)
!53 = !DIEnumerator(name: "OP_READLINE", value: 26)
!54 = !DIEnumerator(name: "OP_RCATLINE", value: 27)
!55 = !DIEnumerator(name: "OP_REGCMAYBE", value: 28)
!56 = !DIEnumerator(name: "OP_REGCRESET", value: 29)
!57 = !DIEnumerator(name: "OP_REGCOMP", value: 30)
!58 = !DIEnumerator(name: "OP_MATCH", value: 31)
!59 = !DIEnumerator(name: "OP_QR", value: 32)
!60 = !DIEnumerator(name: "OP_SUBST", value: 33)
!61 = !DIEnumerator(name: "OP_SUBSTCONT", value: 34)
!62 = !DIEnumerator(name: "OP_TRANS", value: 35)
!63 = !DIEnumerator(name: "OP_TRANSR", value: 36)
!64 = !DIEnumerator(name: "OP_SASSIGN", value: 37)
!65 = !DIEnumerator(name: "OP_AASSIGN", value: 38)
!66 = !DIEnumerator(name: "OP_CHOP", value: 39)
!67 = !DIEnumerator(name: "OP_SCHOP", value: 40)
!68 = !DIEnumerator(name: "OP_CHOMP", value: 41)
!69 = !DIEnumerator(name: "OP_SCHOMP", value: 42)
!70 = !DIEnumerator(name: "OP_DEFINED", value: 43)
!71 = !DIEnumerator(name: "OP_UNDEF", value: 44)
!72 = !DIEnumerator(name: "OP_STUDY", value: 45)
!73 = !DIEnumerator(name: "OP_POS", value: 46)
!74 = !DIEnumerator(name: "OP_PREINC", value: 47)
!75 = !DIEnumerator(name: "OP_I_PREINC", value: 48)
!76 = !DIEnumerator(name: "OP_PREDEC", value: 49)
!77 = !DIEnumerator(name: "OP_I_PREDEC", value: 50)
!78 = !DIEnumerator(name: "OP_POSTINC", value: 51)
!79 = !DIEnumerator(name: "OP_I_POSTINC", value: 52)
!80 = !DIEnumerator(name: "OP_POSTDEC", value: 53)
!81 = !DIEnumerator(name: "OP_I_POSTDEC", value: 54)
!82 = !DIEnumerator(name: "OP_POW", value: 55)
!83 = !DIEnumerator(name: "OP_MULTIPLY", value: 56)
!84 = !DIEnumerator(name: "OP_I_MULTIPLY", value: 57)
!85 = !DIEnumerator(name: "OP_DIVIDE", value: 58)
!86 = !DIEnumerator(name: "OP_I_DIVIDE", value: 59)
!87 = !DIEnumerator(name: "OP_MODULO", value: 60)
!88 = !DIEnumerator(name: "OP_I_MODULO", value: 61)
!89 = !DIEnumerator(name: "OP_REPEAT", value: 62)
!90 = !DIEnumerator(name: "OP_ADD", value: 63)
!91 = !DIEnumerator(name: "OP_I_ADD", value: 64)
!92 = !DIEnumerator(name: "OP_SUBTRACT", value: 65)
!93 = !DIEnumerator(name: "OP_I_SUBTRACT", value: 66)
!94 = !DIEnumerator(name: "OP_CONCAT", value: 67)
!95 = !DIEnumerator(name: "OP_STRINGIFY", value: 68)
!96 = !DIEnumerator(name: "OP_LEFT_SHIFT", value: 69)
!97 = !DIEnumerator(name: "OP_RIGHT_SHIFT", value: 70)
!98 = !DIEnumerator(name: "OP_LT", value: 71)
!99 = !DIEnumerator(name: "OP_I_LT", value: 72)
!100 = !DIEnumerator(name: "OP_GT", value: 73)
!101 = !DIEnumerator(name: "OP_I_GT", value: 74)
!102 = !DIEnumerator(name: "OP_LE", value: 75)
!103 = !DIEnumerator(name: "OP_I_LE", value: 76)
!104 = !DIEnumerator(name: "OP_GE", value: 77)
!105 = !DIEnumerator(name: "OP_I_GE", value: 78)
!106 = !DIEnumerator(name: "OP_EQ", value: 79)
!107 = !DIEnumerator(name: "OP_I_EQ", value: 80)
!108 = !DIEnumerator(name: "OP_NE", value: 81)
!109 = !DIEnumerator(name: "OP_I_NE", value: 82)
!110 = !DIEnumerator(name: "OP_NCMP", value: 83)
!111 = !DIEnumerator(name: "OP_I_NCMP", value: 84)
!112 = !DIEnumerator(name: "OP_SLT", value: 85)
!113 = !DIEnumerator(name: "OP_SGT", value: 86)
!114 = !DIEnumerator(name: "OP_SLE", value: 87)
!115 = !DIEnumerator(name: "OP_SGE", value: 88)
!116 = !DIEnumerator(name: "OP_SEQ", value: 89)
!117 = !DIEnumerator(name: "OP_SNE", value: 90)
!118 = !DIEnumerator(name: "OP_SCMP", value: 91)
!119 = !DIEnumerator(name: "OP_BIT_AND", value: 92)
!120 = !DIEnumerator(name: "OP_BIT_XOR", value: 93)
!121 = !DIEnumerator(name: "OP_BIT_OR", value: 94)
!122 = !DIEnumerator(name: "OP_NBIT_AND", value: 95)
!123 = !DIEnumerator(name: "OP_NBIT_XOR", value: 96)
!124 = !DIEnumerator(name: "OP_NBIT_OR", value: 97)
!125 = !DIEnumerator(name: "OP_SBIT_AND", value: 98)
!126 = !DIEnumerator(name: "OP_SBIT_XOR", value: 99)
!127 = !DIEnumerator(name: "OP_SBIT_OR", value: 100)
!128 = !DIEnumerator(name: "OP_NEGATE", value: 101)
!129 = !DIEnumerator(name: "OP_I_NEGATE", value: 102)
!130 = !DIEnumerator(name: "OP_NOT", value: 103)
!131 = !DIEnumerator(name: "OP_COMPLEMENT", value: 104)
!132 = !DIEnumerator(name: "OP_NCOMPLEMENT", value: 105)
!133 = !DIEnumerator(name: "OP_SCOMPLEMENT", value: 106)
!134 = !DIEnumerator(name: "OP_SMARTMATCH", value: 107)
!135 = !DIEnumerator(name: "OP_ATAN2", value: 108)
!136 = !DIEnumerator(name: "OP_SIN", value: 109)
!137 = !DIEnumerator(name: "OP_COS", value: 110)
!138 = !DIEnumerator(name: "OP_RAND", value: 111)
!139 = !DIEnumerator(name: "OP_SRAND", value: 112)
!140 = !DIEnumerator(name: "OP_EXP", value: 113)
!141 = !DIEnumerator(name: "OP_LOG", value: 114)
!142 = !DIEnumerator(name: "OP_SQRT", value: 115)
!143 = !DIEnumerator(name: "OP_INT", value: 116)
!144 = !DIEnumerator(name: "OP_HEX", value: 117)
!145 = !DIEnumerator(name: "OP_OCT", value: 118)
!146 = !DIEnumerator(name: "OP_ABS", value: 119)
!147 = !DIEnumerator(name: "OP_LENGTH", value: 120)
!148 = !DIEnumerator(name: "OP_SUBSTR", value: 121)
!149 = !DIEnumerator(name: "OP_VEC", value: 122)
!150 = !DIEnumerator(name: "OP_INDEX", value: 123)
!151 = !DIEnumerator(name: "OP_RINDEX", value: 124)
!152 = !DIEnumerator(name: "OP_SPRINTF", value: 125)
!153 = !DIEnumerator(name: "OP_FORMLINE", value: 126)
!154 = !DIEnumerator(name: "OP_ORD", value: 127)
!155 = !DIEnumerator(name: "OP_CHR", value: 128)
!156 = !DIEnumerator(name: "OP_CRYPT", value: 129)
!157 = !DIEnumerator(name: "OP_UCFIRST", value: 130)
!158 = !DIEnumerator(name: "OP_LCFIRST", value: 131)
!159 = !DIEnumerator(name: "OP_UC", value: 132)
!160 = !DIEnumerator(name: "OP_LC", value: 133)
!161 = !DIEnumerator(name: "OP_QUOTEMETA", value: 134)
!162 = !DIEnumerator(name: "OP_RV2AV", value: 135)
!163 = !DIEnumerator(name: "OP_AELEMFAST", value: 136)
!164 = !DIEnumerator(name: "OP_AELEMFAST_LEX", value: 137)
!165 = !DIEnumerator(name: "OP_AELEM", value: 138)
!166 = !DIEnumerator(name: "OP_ASLICE", value: 139)
!167 = !DIEnumerator(name: "OP_KVASLICE", value: 140)
!168 = !DIEnumerator(name: "OP_AEACH", value: 141)
!169 = !DIEnumerator(name: "OP_AKEYS", value: 142)
!170 = !DIEnumerator(name: "OP_AVALUES", value: 143)
!171 = !DIEnumerator(name: "OP_EACH", value: 144)
!172 = !DIEnumerator(name: "OP_VALUES", value: 145)
!173 = !DIEnumerator(name: "OP_KEYS", value: 146)
!174 = !DIEnumerator(name: "OP_DELETE", value: 147)
!175 = !DIEnumerator(name: "OP_EXISTS", value: 148)
!176 = !DIEnumerator(name: "OP_RV2HV", value: 149)
!177 = !DIEnumerator(name: "OP_HELEM", value: 150)
!178 = !DIEnumerator(name: "OP_HSLICE", value: 151)
!179 = !DIEnumerator(name: "OP_KVHSLICE", value: 152)
!180 = !DIEnumerator(name: "OP_MULTIDEREF", value: 153)
!181 = !DIEnumerator(name: "OP_UNPACK", value: 154)
!182 = !DIEnumerator(name: "OP_PACK", value: 155)
!183 = !DIEnumerator(name: "OP_SPLIT", value: 156)
!184 = !DIEnumerator(name: "OP_JOIN", value: 157)
!185 = !DIEnumerator(name: "OP_LIST", value: 158)
!186 = !DIEnumerator(name: "OP_LSLICE", value: 159)
!187 = !DIEnumerator(name: "OP_ANONLIST", value: 160)
!188 = !DIEnumerator(name: "OP_ANONHASH", value: 161)
!189 = !DIEnumerator(name: "OP_SPLICE", value: 162)
!190 = !DIEnumerator(name: "OP_PUSH", value: 163)
!191 = !DIEnumerator(name: "OP_POP", value: 164)
!192 = !DIEnumerator(name: "OP_SHIFT", value: 165)
!193 = !DIEnumerator(name: "OP_UNSHIFT", value: 166)
!194 = !DIEnumerator(name: "OP_SORT", value: 167)
!195 = !DIEnumerator(name: "OP_REVERSE", value: 168)
!196 = !DIEnumerator(name: "OP_GREPSTART", value: 169)
!197 = !DIEnumerator(name: "OP_GREPWHILE", value: 170)
!198 = !DIEnumerator(name: "OP_MAPSTART", value: 171)
!199 = !DIEnumerator(name: "OP_MAPWHILE", value: 172)
!200 = !DIEnumerator(name: "OP_RANGE", value: 173)
!201 = !DIEnumerator(name: "OP_FLIP", value: 174)
!202 = !DIEnumerator(name: "OP_FLOP", value: 175)
!203 = !DIEnumerator(name: "OP_AND", value: 176)
!204 = !DIEnumerator(name: "OP_OR", value: 177)
!205 = !DIEnumerator(name: "OP_XOR", value: 178)
!206 = !DIEnumerator(name: "OP_DOR", value: 179)
!207 = !DIEnumerator(name: "OP_COND_EXPR", value: 180)
!208 = !DIEnumerator(name: "OP_ANDASSIGN", value: 181)
!209 = !DIEnumerator(name: "OP_ORASSIGN", value: 182)
!210 = !DIEnumerator(name: "OP_DORASSIGN", value: 183)
!211 = !DIEnumerator(name: "OP_METHOD", value: 184)
!212 = !DIEnumerator(name: "OP_ENTERSUB", value: 185)
!213 = !DIEnumerator(name: "OP_LEAVESUB", value: 186)
!214 = !DIEnumerator(name: "OP_LEAVESUBLV", value: 187)
!215 = !DIEnumerator(name: "OP_CALLER", value: 188)
!216 = !DIEnumerator(name: "OP_WARN", value: 189)
!217 = !DIEnumerator(name: "OP_DIE", value: 190)
!218 = !DIEnumerator(name: "OP_RESET", value: 191)
!219 = !DIEnumerator(name: "OP_LINESEQ", value: 192)
!220 = !DIEnumerator(name: "OP_NEXTSTATE", value: 193)
!221 = !DIEnumerator(name: "OP_DBSTATE", value: 194)
!222 = !DIEnumerator(name: "OP_UNSTACK", value: 195)
!223 = !DIEnumerator(name: "OP_ENTER", value: 196)
!224 = !DIEnumerator(name: "OP_LEAVE", value: 197)
!225 = !DIEnumerator(name: "OP_SCOPE", value: 198)
!226 = !DIEnumerator(name: "OP_ENTERITER", value: 199)
!227 = !DIEnumerator(name: "OP_ITER", value: 200)
!228 = !DIEnumerator(name: "OP_ENTERLOOP", value: 201)
!229 = !DIEnumerator(name: "OP_LEAVELOOP", value: 202)
!230 = !DIEnumerator(name: "OP_RETURN", value: 203)
!231 = !DIEnumerator(name: "OP_LAST", value: 204)
!232 = !DIEnumerator(name: "OP_NEXT", value: 205)
!233 = !DIEnumerator(name: "OP_REDO", value: 206)
!234 = !DIEnumerator(name: "OP_DUMP", value: 207)
!235 = !DIEnumerator(name: "OP_GOTO", value: 208)
!236 = !DIEnumerator(name: "OP_EXIT", value: 209)
!237 = !DIEnumerator(name: "OP_METHOD_NAMED", value: 210)
!238 = !DIEnumerator(name: "OP_METHOD_SUPER", value: 211)
!239 = !DIEnumerator(name: "OP_METHOD_REDIR", value: 212)
!240 = !DIEnumerator(name: "OP_METHOD_REDIR_SUPER", value: 213)
!241 = !DIEnumerator(name: "OP_ENTERGIVEN", value: 214)
!242 = !DIEnumerator(name: "OP_LEAVEGIVEN", value: 215)
!243 = !DIEnumerator(name: "OP_ENTERWHEN", value: 216)
!244 = !DIEnumerator(name: "OP_LEAVEWHEN", value: 217)
!245 = !DIEnumerator(name: "OP_BREAK", value: 218)
!246 = !DIEnumerator(name: "OP_CONTINUE", value: 219)
!247 = !DIEnumerator(name: "OP_OPEN", value: 220)
!248 = !DIEnumerator(name: "OP_CLOSE", value: 221)
!249 = !DIEnumerator(name: "OP_PIPE_OP", value: 222)
!250 = !DIEnumerator(name: "OP_FILENO", value: 223)
!251 = !DIEnumerator(name: "OP_UMASK", value: 224)
!252 = !DIEnumerator(name: "OP_BINMODE", value: 225)
!253 = !DIEnumerator(name: "OP_TIE", value: 226)
!254 = !DIEnumerator(name: "OP_UNTIE", value: 227)
!255 = !DIEnumerator(name: "OP_TIED", value: 228)
!256 = !DIEnumerator(name: "OP_DBMOPEN", value: 229)
!257 = !DIEnumerator(name: "OP_DBMCLOSE", value: 230)
!258 = !DIEnumerator(name: "OP_SSELECT", value: 231)
!259 = !DIEnumerator(name: "OP_SELECT", value: 232)
!260 = !DIEnumerator(name: "OP_GETC", value: 233)
!261 = !DIEnumerator(name: "OP_READ", value: 234)
!262 = !DIEnumerator(name: "OP_ENTERWRITE", value: 235)
!263 = !DIEnumerator(name: "OP_LEAVEWRITE", value: 236)
!264 = !DIEnumerator(name: "OP_PRTF", value: 237)
!265 = !DIEnumerator(name: "OP_PRINT", value: 238)
!266 = !DIEnumerator(name: "OP_SAY", value: 239)
!267 = !DIEnumerator(name: "OP_SYSOPEN", value: 240)
!268 = !DIEnumerator(name: "OP_SYSSEEK", value: 241)
!269 = !DIEnumerator(name: "OP_SYSREAD", value: 242)
!270 = !DIEnumerator(name: "OP_SYSWRITE", value: 243)
!271 = !DIEnumerator(name: "OP_EOF", value: 244)
!272 = !DIEnumerator(name: "OP_TELL", value: 245)
!273 = !DIEnumerator(name: "OP_SEEK", value: 246)
!274 = !DIEnumerator(name: "OP_TRUNCATE", value: 247)
!275 = !DIEnumerator(name: "OP_FCNTL", value: 248)
!276 = !DIEnumerator(name: "OP_IOCTL", value: 249)
!277 = !DIEnumerator(name: "OP_FLOCK", value: 250)
!278 = !DIEnumerator(name: "OP_SEND", value: 251)
!279 = !DIEnumerator(name: "OP_RECV", value: 252)
!280 = !DIEnumerator(name: "OP_SOCKET", value: 253)
!281 = !DIEnumerator(name: "OP_SOCKPAIR", value: 254)
!282 = !DIEnumerator(name: "OP_BIND", value: 255)
!283 = !DIEnumerator(name: "OP_CONNECT", value: 256)
!284 = !DIEnumerator(name: "OP_LISTEN", value: 257)
!285 = !DIEnumerator(name: "OP_ACCEPT", value: 258)
!286 = !DIEnumerator(name: "OP_SHUTDOWN", value: 259)
!287 = !DIEnumerator(name: "OP_GSOCKOPT", value: 260)
!288 = !DIEnumerator(name: "OP_SSOCKOPT", value: 261)
!289 = !DIEnumerator(name: "OP_GETSOCKNAME", value: 262)
!290 = !DIEnumerator(name: "OP_GETPEERNAME", value: 263)
!291 = !DIEnumerator(name: "OP_LSTAT", value: 264)
!292 = !DIEnumerator(name: "OP_STAT", value: 265)
!293 = !DIEnumerator(name: "OP_FTRREAD", value: 266)
!294 = !DIEnumerator(name: "OP_FTRWRITE", value: 267)
!295 = !DIEnumerator(name: "OP_FTREXEC", value: 268)
!296 = !DIEnumerator(name: "OP_FTEREAD", value: 269)
!297 = !DIEnumerator(name: "OP_FTEWRITE", value: 270)
!298 = !DIEnumerator(name: "OP_FTEEXEC", value: 271)
!299 = !DIEnumerator(name: "OP_FTIS", value: 272)
!300 = !DIEnumerator(name: "OP_FTSIZE", value: 273)
!301 = !DIEnumerator(name: "OP_FTMTIME", value: 274)
!302 = !DIEnumerator(name: "OP_FTATIME", value: 275)
!303 = !DIEnumerator(name: "OP_FTCTIME", value: 276)
!304 = !DIEnumerator(name: "OP_FTROWNED", value: 277)
!305 = !DIEnumerator(name: "OP_FTEOWNED", value: 278)
!306 = !DIEnumerator(name: "OP_FTZERO", value: 279)
!307 = !DIEnumerator(name: "OP_FTSOCK", value: 280)
!308 = !DIEnumerator(name: "OP_FTCHR", value: 281)
!309 = !DIEnumerator(name: "OP_FTBLK", value: 282)
!310 = !DIEnumerator(name: "OP_FTFILE", value: 283)
!311 = !DIEnumerator(name: "OP_FTDIR", value: 284)
!312 = !DIEnumerator(name: "OP_FTPIPE", value: 285)
!313 = !DIEnumerator(name: "OP_FTSUID", value: 286)
!314 = !DIEnumerator(name: "OP_FTSGID", value: 287)
!315 = !DIEnumerator(name: "OP_FTSVTX", value: 288)
!316 = !DIEnumerator(name: "OP_FTLINK", value: 289)
!317 = !DIEnumerator(name: "OP_FTTTY", value: 290)
!318 = !DIEnumerator(name: "OP_FTTEXT", value: 291)
!319 = !DIEnumerator(name: "OP_FTBINARY", value: 292)
!320 = !DIEnumerator(name: "OP_CHDIR", value: 293)
!321 = !DIEnumerator(name: "OP_CHOWN", value: 294)
!322 = !DIEnumerator(name: "OP_CHROOT", value: 295)
!323 = !DIEnumerator(name: "OP_UNLINK", value: 296)
!324 = !DIEnumerator(name: "OP_CHMOD", value: 297)
!325 = !DIEnumerator(name: "OP_UTIME", value: 298)
!326 = !DIEnumerator(name: "OP_RENAME", value: 299)
!327 = !DIEnumerator(name: "OP_LINK", value: 300)
!328 = !DIEnumerator(name: "OP_SYMLINK", value: 301)
!329 = !DIEnumerator(name: "OP_READLINK", value: 302)
!330 = !DIEnumerator(name: "OP_MKDIR", value: 303)
!331 = !DIEnumerator(name: "OP_RMDIR", value: 304)
!332 = !DIEnumerator(name: "OP_OPEN_DIR", value: 305)
!333 = !DIEnumerator(name: "OP_READDIR", value: 306)
!334 = !DIEnumerator(name: "OP_TELLDIR", value: 307)
!335 = !DIEnumerator(name: "OP_SEEKDIR", value: 308)
!336 = !DIEnumerator(name: "OP_REWINDDIR", value: 309)
!337 = !DIEnumerator(name: "OP_CLOSEDIR", value: 310)
!338 = !DIEnumerator(name: "OP_FORK", value: 311)
!339 = !DIEnumerator(name: "OP_WAIT", value: 312)
!340 = !DIEnumerator(name: "OP_WAITPID", value: 313)
!341 = !DIEnumerator(name: "OP_SYSTEM", value: 314)
!342 = !DIEnumerator(name: "OP_EXEC", value: 315)
!343 = !DIEnumerator(name: "OP_KILL", value: 316)
!344 = !DIEnumerator(name: "OP_GETPPID", value: 317)
!345 = !DIEnumerator(name: "OP_GETPGRP", value: 318)
!346 = !DIEnumerator(name: "OP_SETPGRP", value: 319)
!347 = !DIEnumerator(name: "OP_GETPRIORITY", value: 320)
!348 = !DIEnumerator(name: "OP_SETPRIORITY", value: 321)
!349 = !DIEnumerator(name: "OP_TIME", value: 322)
!350 = !DIEnumerator(name: "OP_TMS", value: 323)
!351 = !DIEnumerator(name: "OP_LOCALTIME", value: 324)
!352 = !DIEnumerator(name: "OP_GMTIME", value: 325)
!353 = !DIEnumerator(name: "OP_ALARM", value: 326)
!354 = !DIEnumerator(name: "OP_SLEEP", value: 327)
!355 = !DIEnumerator(name: "OP_SHMGET", value: 328)
!356 = !DIEnumerator(name: "OP_SHMCTL", value: 329)
!357 = !DIEnumerator(name: "OP_SHMREAD", value: 330)
!358 = !DIEnumerator(name: "OP_SHMWRITE", value: 331)
!359 = !DIEnumerator(name: "OP_MSGGET", value: 332)
!360 = !DIEnumerator(name: "OP_MSGCTL", value: 333)
!361 = !DIEnumerator(name: "OP_MSGSND", value: 334)
!362 = !DIEnumerator(name: "OP_MSGRCV", value: 335)
!363 = !DIEnumerator(name: "OP_SEMOP", value: 336)
!364 = !DIEnumerator(name: "OP_SEMGET", value: 337)
!365 = !DIEnumerator(name: "OP_SEMCTL", value: 338)
!366 = !DIEnumerator(name: "OP_REQUIRE", value: 339)
!367 = !DIEnumerator(name: "OP_DOFILE", value: 340)
!368 = !DIEnumerator(name: "OP_HINTSEVAL", value: 341)
!369 = !DIEnumerator(name: "OP_ENTEREVAL", value: 342)
!370 = !DIEnumerator(name: "OP_LEAVEEVAL", value: 343)
!371 = !DIEnumerator(name: "OP_ENTERTRY", value: 344)
!372 = !DIEnumerator(name: "OP_LEAVETRY", value: 345)
!373 = !DIEnumerator(name: "OP_GHBYNAME", value: 346)
!374 = !DIEnumerator(name: "OP_GHBYADDR", value: 347)
!375 = !DIEnumerator(name: "OP_GHOSTENT", value: 348)
!376 = !DIEnumerator(name: "OP_GNBYNAME", value: 349)
!377 = !DIEnumerator(name: "OP_GNBYADDR", value: 350)
!378 = !DIEnumerator(name: "OP_GNETENT", value: 351)
!379 = !DIEnumerator(name: "OP_GPBYNAME", value: 352)
!380 = !DIEnumerator(name: "OP_GPBYNUMBER", value: 353)
!381 = !DIEnumerator(name: "OP_GPROTOENT", value: 354)
!382 = !DIEnumerator(name: "OP_GSBYNAME", value: 355)
!383 = !DIEnumerator(name: "OP_GSBYPORT", value: 356)
!384 = !DIEnumerator(name: "OP_GSERVENT", value: 357)
!385 = !DIEnumerator(name: "OP_SHOSTENT", value: 358)
!386 = !DIEnumerator(name: "OP_SNETENT", value: 359)
!387 = !DIEnumerator(name: "OP_SPROTOENT", value: 360)
!388 = !DIEnumerator(name: "OP_SSERVENT", value: 361)
!389 = !DIEnumerator(name: "OP_EHOSTENT", value: 362)
!390 = !DIEnumerator(name: "OP_ENETENT", value: 363)
!391 = !DIEnumerator(name: "OP_EPROTOENT", value: 364)
!392 = !DIEnumerator(name: "OP_ESERVENT", value: 365)
!393 = !DIEnumerator(name: "OP_GPWNAM", value: 366)
!394 = !DIEnumerator(name: "OP_GPWUID", value: 367)
!395 = !DIEnumerator(name: "OP_GPWENT", value: 368)
!396 = !DIEnumerator(name: "OP_SPWENT", value: 369)
!397 = !DIEnumerator(name: "OP_EPWENT", value: 370)
!398 = !DIEnumerator(name: "OP_GGRNAM", value: 371)
!399 = !DIEnumerator(name: "OP_GGRGID", value: 372)
!400 = !DIEnumerator(name: "OP_GGRENT", value: 373)
!401 = !DIEnumerator(name: "OP_SGRENT", value: 374)
!402 = !DIEnumerator(name: "OP_EGRENT", value: 375)
!403 = !DIEnumerator(name: "OP_GETLOGIN", value: 376)
!404 = !DIEnumerator(name: "OP_SYSCALL", value: 377)
!405 = !DIEnumerator(name: "OP_LOCK", value: 378)
!406 = !DIEnumerator(name: "OP_ONCE", value: 379)
!407 = !DIEnumerator(name: "OP_CUSTOM", value: 380)
!408 = !DIEnumerator(name: "OP_REACH", value: 381)
!409 = !DIEnumerator(name: "OP_RKEYS", value: 382)
!410 = !DIEnumerator(name: "OP_RVALUES", value: 383)
!411 = !DIEnumerator(name: "OP_COREARGS", value: 384)
!412 = !DIEnumerator(name: "OP_RUNCV", value: 385)
!413 = !DIEnumerator(name: "OP_FC", value: 386)
!414 = !DIEnumerator(name: "OP_PADCV", value: 387)
!415 = !DIEnumerator(name: "OP_INTROCV", value: 388)
!416 = !DIEnumerator(name: "OP_CLONECV", value: 389)
!417 = !DIEnumerator(name: "OP_PADRANGE", value: 390)
!418 = !DIEnumerator(name: "OP_REFASSIGN", value: 391)
!419 = !DIEnumerator(name: "OP_LVREF", value: 392)
!420 = !DIEnumerator(name: "OP_LVREFSLICE", value: 393)
!421 = !DIEnumerator(name: "OP_LVAVREF", value: 394)
!422 = !DIEnumerator(name: "OP_ANONCONST", value: 395)
!423 = !DIEnumerator(name: "OP_max", value: 396)
!424 = !{!425, !842, !1003, !1004, !731, !1018, !482, !1019, !1042, !476, !655, !1055, !467, !5, !483, !1056, !496, !431, !462, !871, !436, !1057, !479, !760, !1059, !530, !1078, !1080, !1082, !497, !545}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPV", file: !427, line: 2659, baseType: !428)
!427 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpv", file: !4, line: 499, size: 256, elements: !429)
!429 = !{!430, !996, !997, !998}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !428, file: !4, line: 500, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "HV", file: !427, line: 2649, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hv", file: !4, line: 246, size: 192, elements: !434)
!434 = !{!435, !981, !982, !983}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !433, file: !4, line: 247, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVHV", file: !427, line: 2667, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvhv", file: !439, line: 130, size: 256, elements: !440)
!439 = !DIFile(filename: "apps/500.perlbench_r/src/hv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "27f8e9a41fdec76d9a4a382c2975f411")
!440 = !{!441, !442, !979, !980}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !438, file: !439, line: 131, baseType: !431, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !438, file: !439, line: 132, baseType: !443, size: 64, offset: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xmgu", file: !4, line: 494, size: 64, elements: !444)
!444 = !{!445, !978}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_magic", scope: !443, file: !4, line: 495, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "MAGIC", file: !427, line: 2658, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "magic", file: !449, line: 23, size: 384, elements: !450)
!449 = !DIFile(filename: "apps/500.perlbench_r/src/mg.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "4fa2ae981502c39a9854b719090d263f")
!450 = !{!451, !452, !970, !973, !974, !975, !976, !977}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mg_moremagic", scope: !448, file: !449, line: 24, baseType: !446, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "mg_virtual", scope: !448, file: !449, line: 25, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "MGVTBL", file: !427, line: 2673, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mgvtbl", file: !449, line: 11, size: 512, elements: !456)
!456 = !{!457, !940, !941, !945, !946, !947, !951, !969}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "svt_get", scope: !455, file: !449, line: 12, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!461, !462, !446}
!461 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "SV", file: !427, line: 2647, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sv", file: !4, line: 218, size: 192, elements: !465)
!465 = !{!466, !468, !471, !472}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !464, file: !4, line: 219, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !464, file: !4, line: 219, baseType: !469, size: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "U32", file: !470, line: 175, baseType: !5)
!470 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !464, file: !4, line: 219, baseType: !469, size: 32, offset: 96)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !464, file: !4, line: 220, baseType: !473, size: 64, offset: 128)
!473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !464, file: !4, line: 220, size: 64, elements: !474)
!474 = !{!475, !478, !481, !484, !487, !488, !936, !937, !938, !939}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !473, file: !4, line: 220, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !473, file: !4, line: 220, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "IV", file: !427, line: 1670, baseType: !480)
!480 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !473, file: !4, line: 220, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "UV", file: !427, line: 1671, baseType: !483)
!483 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !473, file: !4, line: 220, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "NV", file: !427, line: 1877, baseType: !486)
!486 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !473, file: !4, line: 220, baseType: !462, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !473, file: !4, line: 220, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp", file: !491, line: 140, size: 1536, elements: !492)
!491 = !DIFile(filename: "apps/500.perlbench_r/src/regexp.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "83285f03b848d0cf5e30c9354282eae6")
!492 = !{!493, !494, !495, !499, !504, !892, !893, !894, !895, !896, !897, !898, !914, !915, !916, !917, !918, !919, !927, !928, !929, !930, !931, !932, !933, !934, !935}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !490, file: !491, line: 141, baseType: !431, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !490, file: !491, line: 141, baseType: !443, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !490, file: !491, line: 141, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRLEN", file: !427, line: 2615, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !498, line: 46, baseType: !483)
!498 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!499 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !490, file: !491, line: 141, baseType: !500, size: 64, offset: 192)
!500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !490, file: !491, line: 141, size: 64, elements: !501)
!501 = !{!502, !503}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !500, file: !491, line: 141, baseType: !496, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !500, file: !491, line: 141, baseType: !476, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !490, file: !491, line: 142, baseType: !505, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_engine", file: !491, line: 157, size: 768, elements: !508)
!508 = !{!509, !832, !837, !853, !857, !861, !866, !873, !877, !881, !885, !886}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !507, file: !491, line: 158, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!513, !831, !469}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "REGEXP", file: !427, line: 2651, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p5rx", file: !4, line: 256, size: 192, elements: !516)
!516 = !{!517, !518, !519, !520}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !515, file: !4, line: 257, baseType: !489, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !515, file: !4, line: 257, baseType: !469, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !515, file: !4, line: 257, baseType: !469, size: 32, offset: 96)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !515, file: !4, line: 258, baseType: !521, size: 64, offset: 128)
!521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !4, line: 258, size: 64, elements: !522)
!522 = !{!523, !524, !525, !526, !527, !528, !529, !531, !555, !830}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !521, file: !4, line: 258, baseType: !476, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !521, file: !4, line: 258, baseType: !479, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !521, file: !4, line: 258, baseType: !482, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !521, file: !4, line: 258, baseType: !485, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !521, file: !4, line: 258, baseType: !462, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !521, file: !4, line: 258, baseType: !489, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !521, file: !4, line: 258, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !521, file: !4, line: 258, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "HE", file: !4, line: 186, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "he", file: !439, line: 32, size: 192, elements: !536)
!536 = !{!537, !538, !550}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "hent_next", scope: !535, file: !439, line: 36, baseType: !533, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hent_hek", scope: !535, file: !439, line: 37, baseType: !539, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "HEK", file: !4, line: 187, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hek", file: !439, line: 45, size: 96, elements: !542)
!542 = !{!543, !544, !546}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "hek_hash", scope: !541, file: !439, line: 46, baseType: !469, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hek_len", scope: !541, file: !439, line: 47, baseType: !545, size: 32, offset: 32)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "I32", file: !470, line: 174, baseType: !461)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "hek_key", scope: !541, file: !439, line: 48, baseType: !547, size: 8, offset: 64)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 8, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 1)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "he_valu", scope: !535, file: !439, line: 41, baseType: !551, size: 64, offset: 128)
!551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !535, file: !439, line: 38, size: 64, elements: !552)
!552 = !{!553, !554}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "hent_val", scope: !551, file: !439, line: 39, baseType: !462, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hent_refcount", scope: !551, file: !439, line: 40, baseType: !497, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !521, file: !4, line: 258, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "GP", file: !427, line: 2652, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gp", file: !559, line: 11, size: 640, elements: !560)
!559 = !DIFile(filename: "apps/500.perlbench_r/src/gv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9bb5d31ae54fd87680f22708385557b3")
!560 = !{!561, !562, !672, !820, !821, !822, !823, !825, !826, !827, !828, !829}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gp_sv", scope: !558, file: !559, line: 12, baseType: !462, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gp_io", scope: !558, file: !559, line: 13, baseType: !563, size: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io", file: !4, line: 251, size: 192, elements: !565)
!565 = !{!566, !657, !658, !659}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !564, file: !4, line: 252, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVIO", file: !427, line: 2672, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvio", file: !4, line: 603, size: 1088, elements: !570)
!570 = !{!571, !572, !573, !574, !579, !585, !592, !601, !602, !603, !604, !605, !649, !650, !651, !652, !653, !654}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !569, file: !4, line: 604, baseType: !431, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !569, file: !4, line: 604, baseType: !443, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !569, file: !4, line: 604, baseType: !496, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !569, file: !4, line: 604, baseType: !575, size: 64, offset: 192)
!575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !569, file: !4, line: 604, size: 64, elements: !576)
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !575, file: !4, line: 604, baseType: !496, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !575, file: !4, line: 604, baseType: !476, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !569, file: !4, line: 605, baseType: !580, size: 64, offset: 256)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xivu", file: !4, line: 488, size: 64, elements: !581)
!581 = !{!582, !583, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_iv", scope: !580, file: !4, line: 489, baseType: !479, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_uv", scope: !580, file: !4, line: 490, baseType: !482, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "xivu_namehek", scope: !580, file: !4, line: 491, baseType: !539, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "xio_ofp", scope: !569, file: !4, line: 607, baseType: !586, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIO", file: !588, line: 85, baseType: !589)
!588 = !DIFile(filename: "apps/500.perlbench_r/src/perlio.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "97551467ae05102ac1f9e2f28362d918")
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlIOl", file: !588, line: 83, baseType: !591)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PerlIO", file: !588, line: 83, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "xio_dirpu", scope: !569, file: !4, line: 620, baseType: !593, size: 64, offset: 384)
!593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !569, file: !4, line: 617, size: 64, elements: !594)
!594 = !{!595, !600}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_dirp", scope: !593, file: !4, line: 618, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !598, line: 127, baseType: !599)
!598 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "33c45a2c20a17fc93667c8d9aa922ab0")
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !598, line: 127, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "xiou_any", scope: !593, file: !4, line: 619, baseType: !467, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page", scope: !569, file: !4, line: 622, baseType: !479, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "xio_page_len", scope: !569, file: !4, line: 623, baseType: !479, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "xio_lines_left", scope: !569, file: !4, line: 624, baseType: !479, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_name", scope: !569, file: !4, line: 625, baseType: !476, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "xio_top_gv", scope: !569, file: !4, line: 626, baseType: !606, size: 64, offset: 704)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "GV", file: !427, line: 2653, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gv", file: !4, line: 231, size: 192, elements: !609)
!609 = !{!610, !634, !635, !636}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !608, file: !4, line: 232, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVGV", file: !427, line: 2668, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvgv", file: !4, line: 561, size: 384, elements: !614)
!614 = !{!615, !616, !617, !618, !623, !624}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !613, file: !4, line: 562, baseType: !431, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !613, file: !4, line: 562, baseType: !443, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !613, file: !4, line: 562, baseType: !496, size: 64, offset: 128)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !613, file: !4, line: 562, baseType: !619, size: 64, offset: 192)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !613, file: !4, line: 562, size: 64, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !619, file: !4, line: 562, baseType: !496, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !619, file: !4, line: 562, baseType: !476, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !613, file: !4, line: 563, baseType: !580, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !613, file: !4, line: 564, baseType: !625, size: 64, offset: 320)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_xnvu", file: !4, line: 479, size: 64, elements: !626)
!626 = !{!627, !628, !629}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_nv", scope: !625, file: !4, line: 480, baseType: !485, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "xgv_stash", scope: !625, file: !4, line: 481, baseType: !431, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "xpad_cop_seq", scope: !625, file: !4, line: 485, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !4, line: 482, size: 64, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "xlow", scope: !630, file: !4, line: 483, baseType: !469, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "xhigh", scope: !630, file: !4, line: 484, baseType: !469, size: 32, offset: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !608, file: !4, line: 232, baseType: !469, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !608, file: !4, line: 232, baseType: !469, size: 32, offset: 96)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !608, file: !4, line: 233, baseType: !637, size: 64, offset: 128)
!637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !608, file: !4, line: 233, size: 64, elements: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646, !647, !648}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !637, file: !4, line: 233, baseType: !476, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !637, file: !4, line: 233, baseType: !479, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !637, file: !4, line: 233, baseType: !482, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !637, file: !4, line: 233, baseType: !485, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !637, file: !4, line: 233, baseType: !462, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !637, file: !4, line: 233, baseType: !489, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !637, file: !4, line: 233, baseType: !530, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !637, file: !4, line: 233, baseType: !532, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !637, file: !4, line: 233, baseType: !556, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !637, file: !4, line: 233, baseType: !586, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_name", scope: !569, file: !4, line: 627, baseType: !476, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "xio_fmt_gv", scope: !569, file: !4, line: 628, baseType: !606, size: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_name", scope: !569, file: !4, line: 629, baseType: !476, size: 64, offset: 896)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "xio_bottom_gv", scope: !569, file: !4, line: 630, baseType: !606, size: 64, offset: 960)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "xio_type", scope: !569, file: !4, line: 631, baseType: !477, size: 8, offset: 1024)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "xio_flags", scope: !569, file: !4, line: 632, baseType: !655, size: 8, offset: 1032)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !470, line: 171, baseType: !656)
!656 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !564, file: !4, line: 252, baseType: !469, size: 32, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !564, file: !4, line: 252, baseType: !469, size: 32, offset: 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !564, file: !4, line: 253, baseType: !660, size: 64, offset: 128)
!660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !564, file: !4, line: 253, size: 64, elements: !661)
!661 = !{!662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !660, file: !4, line: 253, baseType: !476, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !660, file: !4, line: 253, baseType: !479, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !660, file: !4, line: 253, baseType: !482, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !660, file: !4, line: 253, baseType: !485, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !660, file: !4, line: 253, baseType: !462, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !660, file: !4, line: 253, baseType: !489, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !660, file: !4, line: 253, baseType: !530, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !660, file: !4, line: 253, baseType: !532, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !660, file: !4, line: 253, baseType: !556, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !660, file: !4, line: 253, baseType: !586, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cv", scope: !558, file: !559, line: 14, baseType: !673, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "CV", file: !427, line: 2650, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cv", file: !4, line: 236, size: 192, elements: !676)
!676 = !{!677, !805, !806, !807}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !675, file: !4, line: 237, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVCV", file: !427, line: 2669, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvcv", file: !681, line: 13, size: 832, elements: !682)
!681 = !DIFile(filename: "apps/500.perlbench_r/src/cv.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b8f33b415055b936fc8991c908273806")
!682 = !{!683, !684, !685, !686, !691, !692, !737, !745, !750, !751, !800, !801, !802, !804}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !680, file: !681, line: 14, baseType: !431, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !680, file: !681, line: 14, baseType: !443, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !680, file: !681, line: 14, baseType: !496, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !680, file: !681, line: 14, baseType: !687, size: 64, offset: 192)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 14, size: 64, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !687, file: !681, line: 14, baseType: !496, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !687, file: !681, line: 14, baseType: !476, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_stash", scope: !680, file: !681, line: 15, baseType: !431, size: 64, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start_u", scope: !680, file: !681, line: 15, baseType: !693, size: 64, offset: 320)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 15, size: 64, elements: !694)
!694 = !{!695, !720}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_start", scope: !693, file: !681, line: 15, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !427, line: 2617, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !699, line: 202, size: 320, elements: !700)
!699 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!700 = !{!701, !702, !703, !707, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !698, file: !699, line: 203, baseType: !696, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !698, file: !699, line: 203, baseType: !696, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !698, file: !699, line: 203, baseType: !704, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!696}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !698, file: !699, line: 203, baseType: !708, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !709, line: 25, baseType: !483)
!709 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !698, file: !699, line: 203, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !698, file: !699, line: 203, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !698, file: !699, line: 203, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !698, file: !699, line: 203, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !698, file: !699, line: 203, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !698, file: !699, line: 203, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !698, file: !699, line: 203, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !698, file: !699, line: 203, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !698, file: !699, line: 203, baseType: !655, size: 8, offset: 272)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !698, file: !699, line: 203, baseType: !655, size: 8, offset: 280)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsubany", scope: !693, file: !681, line: 15, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ANY", file: !427, line: 2674, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "any", file: !427, line: 3691, size: 64, elements: !723)
!723 = !{!724, !725, !726, !727, !728, !729, !730, !732, !736}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "any_ptr", scope: !722, file: !427, line: 3692, baseType: !467, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "any_i32", scope: !722, file: !427, line: 3693, baseType: !545, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "any_u32", scope: !722, file: !427, line: 3694, baseType: !469, size: 32)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "any_iv", scope: !722, file: !427, line: 3695, baseType: !479, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "any_uv", scope: !722, file: !427, line: 3696, baseType: !482, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "any_long", scope: !722, file: !427, line: 3697, baseType: !480, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "any_bool", scope: !722, file: !427, line: 3698, baseType: !731, size: 8)
!731 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "any_dptr", scope: !722, file: !427, line: 3699, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !467}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "any_dxptr", scope: !722, file: !427, line: 3700, baseType: !733, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root_u", scope: !680, file: !681, line: 15, baseType: !738, size: 64, offset: 384)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 15, size: 64, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_root", scope: !738, file: !681, line: 15, baseType: !696, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_xsub", scope: !738, file: !681, line: 15, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !673}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv_u", scope: !680, file: !681, line: 15, baseType: !746, size: 64, offset: 448)
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 15, size: 64, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_gv", scope: !746, file: !681, line: 15, baseType: !606, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hek", scope: !746, file: !681, line: 15, baseType: !539, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_file", scope: !680, file: !681, line: 15, baseType: !476, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist_u", scope: !680, file: !681, line: 15, baseType: !752, size: 64, offset: 576)
!752 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 15, size: 64, elements: !753)
!753 = !{!754, !799}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_padlist", scope: !752, file: !681, line: 15, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADLIST", file: !427, line: 2681, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "padlist", file: !709, line: 34, size: 192, elements: !758)
!758 = !{!759, !764, !797, !798}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_max", scope: !757, file: !709, line: 35, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !761, line: 108, baseType: !762)
!761 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "20e2108af45064f5c7b77fc9416f0cce")
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !763, line: 193, baseType: !480)
!763 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!764 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_alloc", scope: !757, file: !709, line: 36, baseType: !765, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "PAD", file: !427, line: 2682, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "AV", file: !427, line: 2648, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "av", file: !4, line: 241, size: 192, elements: !770)
!770 = !{!771, !782, !783, !784}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "sv_any", scope: !769, file: !4, line: 242, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVAV", file: !427, line: 2666, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvav", file: !775, line: 11, size: 320, elements: !776)
!775 = !DIFile(filename: "apps/500.perlbench_r/src/av.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "3a1f05c53eedc93ff5262833cf63fc72")
!776 = !{!777, !778, !779, !780, !781}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !774, file: !775, line: 12, baseType: !431, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !774, file: !775, line: 13, baseType: !443, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "xav_fill", scope: !774, file: !775, line: 14, baseType: !760, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "xav_max", scope: !774, file: !775, line: 15, baseType: !760, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "xav_alloc", scope: !774, file: !775, line: 16, baseType: !530, size: 64, offset: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !769, file: !4, line: 242, baseType: !469, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !769, file: !4, line: 242, baseType: !469, size: 32, offset: 96)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !769, file: !4, line: 243, baseType: !785, size: 64, offset: 128)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !4, line: 243, size: 64, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !785, file: !4, line: 243, baseType: !476, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !785, file: !4, line: 243, baseType: !479, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !785, file: !4, line: 243, baseType: !482, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !785, file: !4, line: 243, baseType: !485, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !785, file: !4, line: 243, baseType: !462, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !785, file: !4, line: 243, baseType: !489, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !785, file: !4, line: 243, baseType: !530, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !785, file: !4, line: 243, baseType: !532, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !785, file: !4, line: 243, baseType: !556, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !785, file: !4, line: 243, baseType: !586, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_id", scope: !757, file: !709, line: 37, baseType: !469, size: 32, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "xpadl_outid", scope: !757, file: !709, line: 38, baseType: !469, size: 32, offset: 160)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_hscxt", scope: !752, file: !681, line: 15, baseType: !467, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside", scope: !680, file: !681, line: 15, baseType: !673, size: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_outside_seq", scope: !680, file: !681, line: 15, baseType: !469, size: 32, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_flags", scope: !680, file: !681, line: 15, baseType: !803, size: 32, offset: 736)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "cv_flags_t", file: !4, line: 567, baseType: !469)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "xcv_depth", scope: !680, file: !681, line: 15, baseType: !545, size: 32, offset: 768)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !675, file: !4, line: 237, baseType: !469, size: 32, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !675, file: !4, line: 237, baseType: !469, size: 32, offset: 96)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !675, file: !4, line: 238, baseType: !808, size: 64, offset: 128)
!808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !675, file: !4, line: 238, size: 64, elements: !809)
!809 = !{!810, !811, !812, !813, !814, !815, !816, !817, !818, !819}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !808, file: !4, line: 238, baseType: !476, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !808, file: !4, line: 238, baseType: !479, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !808, file: !4, line: 238, baseType: !482, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !808, file: !4, line: 238, baseType: !485, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !808, file: !4, line: 238, baseType: !462, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !808, file: !4, line: 238, baseType: !489, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !808, file: !4, line: 238, baseType: !530, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !808, file: !4, line: 238, baseType: !532, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !808, file: !4, line: 238, baseType: !556, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !808, file: !4, line: 238, baseType: !586, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "gp_cvgen", scope: !558, file: !559, line: 15, baseType: !469, size: 32, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gp_refcnt", scope: !558, file: !559, line: 16, baseType: !469, size: 32, offset: 224)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "gp_hv", scope: !558, file: !559, line: 17, baseType: !431, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "gp_av", scope: !558, file: !559, line: 18, baseType: !824, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "gp_form", scope: !558, file: !559, line: 19, baseType: !673, size: 64, offset: 384)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gp_egv", scope: !558, file: !559, line: 20, baseType: !606, size: 64, offset: 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "gp_line", scope: !558, file: !559, line: 21, baseType: !5, size: 31, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "gp_flags", scope: !558, file: !559, line: 22, baseType: !5, size: 1, offset: 543, flags: DIFlagBitField, extraData: i64 512)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "gp_file_hek", scope: !558, file: !559, line: 23, baseType: !539, size: 64, offset: 576)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !521, file: !4, line: 258, baseType: !586, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "exec", scope: !507, file: !491, line: 159, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!545, !836, !476, !476, !476, !760, !462, !467, !469}
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !513)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "intuit", scope: !507, file: !491, line: 162, baseType: !838, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!476, !836, !462, !841, !476, !476, !844, !845}
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "re_scream_pos_data", file: !491, line: 152, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "re_scream_pos_data_s", file: !491, line: 148, size: 128, elements: !848)
!848 = !{!849, !851}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "scream_olds", scope: !847, file: !491, line: 150, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "scream_pos", scope: !847, file: !491, line: 151, baseType: !852, size: 64, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "checkstr", scope: !507, file: !491, line: 170, baseType: !854, size: 64, offset: 192)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!462, !836}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !507, file: !491, line: 171, baseType: !858, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{null, !836}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_FETCH", scope: !507, file: !491, line: 172, baseType: !862, size: 64, offset: 320)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !836, !865, !831}
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_STORE", scope: !507, file: !491, line: 174, baseType: !867, size: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !836, !865, !870}
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "numbered_buff_LENGTH", scope: !507, file: !491, line: 176, baseType: !874, size: 64, offset: 448)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!545, !836, !870, !865}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff", scope: !507, file: !491, line: 178, baseType: !878, size: 64, offset: 512)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!462, !836, !831, !831, !844}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "named_buff_iter", scope: !507, file: !491, line: 180, baseType: !882, size: 64, offset: 576)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!462, !836, !870, !844}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "qr_package", scope: !507, file: !491, line: 182, baseType: !854, size: 64, offset: 640)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "op_comp", scope: !507, file: !491, line: 186, baseType: !887, size: 64, offset: 704)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!513, !890, !461, !696, !505, !513, !891, !469, !469}
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "mother_re", scope: !490, file: !491, line: 142, baseType: !513, size: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "paren_names", scope: !490, file: !491, line: 142, baseType: !431, size: 64, offset: 384)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "extflags", scope: !490, file: !491, line: 142, baseType: !469, size: 32, offset: 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "minlen", scope: !490, file: !491, line: 142, baseType: !760, size: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "minlenret", scope: !490, file: !491, line: 142, baseType: !760, size: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "gofs", scope: !490, file: !491, line: 142, baseType: !496, size: 64, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "substrs", scope: !490, file: !491, line: 142, baseType: !899, size: 64, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_data", file: !491, line: 45, size: 1024, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "check_ix", scope: !900, file: !491, line: 46, baseType: !655, size: 8)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !900, file: !491, line: 47, baseType: !904, size: 960, offset: 64)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 960, elements: !912)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_substr_datum", file: !491, line: 38, size: 320, elements: !906)
!906 = !{!907, !908, !909, !910, !911}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "min_offset", scope: !905, file: !491, line: 39, baseType: !760, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "max_offset", scope: !905, file: !491, line: 40, baseType: !760, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !905, file: !491, line: 41, baseType: !462, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_substr", scope: !905, file: !491, line: 42, baseType: !462, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "end_shift", scope: !905, file: !491, line: 43, baseType: !760, size: 64, offset: 256)
!912 = !{!913}
!913 = !DISubrange(count: 3)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "nparens", scope: !490, file: !491, line: 142, baseType: !469, size: 32, offset: 768)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "intflags", scope: !490, file: !491, line: 142, baseType: !469, size: 32, offset: 800)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "pprivate", scope: !490, file: !491, line: 142, baseType: !467, size: 64, offset: 832)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "lastparen", scope: !490, file: !491, line: 142, baseType: !469, size: 32, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "lastcloseparen", scope: !490, file: !491, line: 142, baseType: !469, size: 32, offset: 928)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !490, file: !491, line: 142, baseType: !920, size: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "regexp_paren_pair", file: !491, line: 68, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "regexp_paren_pair", file: !491, line: 58, size: 192, elements: !923)
!923 = !{!924, !925, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !922, file: !491, line: 59, baseType: !760, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !922, file: !491, line: 60, baseType: !760, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "start_tmp", scope: !922, file: !491, line: 67, baseType: !760, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "subbeg", scope: !490, file: !491, line: 142, baseType: !476, size: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "saved_copy", scope: !490, file: !491, line: 142, baseType: !462, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sublen", scope: !490, file: !491, line: 142, baseType: !760, size: 64, offset: 1152)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "suboffset", scope: !490, file: !491, line: 142, baseType: !760, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "subcoffset", scope: !490, file: !491, line: 142, baseType: !760, size: 64, offset: 1280)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !490, file: !491, line: 142, baseType: !760, size: 64, offset: 1344)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pre_prefix", scope: !490, file: !491, line: 142, baseType: !5, size: 4, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "compflags", scope: !490, file: !491, line: 142, baseType: !5, size: 9, offset: 1412, flags: DIFlagBitField, extraData: i64 1408)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "qr_anoncv", scope: !490, file: !491, line: 142, baseType: !673, size: 64, offset: 1472)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !473, file: !4, line: 220, baseType: !530, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !473, file: !4, line: 220, baseType: !532, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !473, file: !4, line: 220, baseType: !556, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !473, file: !4, line: 220, baseType: !586, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "svt_set", scope: !455, file: !449, line: 13, baseType: !458, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "svt_len", scope: !455, file: !449, line: 14, baseType: !942, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!469, !462, !446}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "svt_clear", scope: !455, file: !449, line: 15, baseType: !458, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "svt_free", scope: !455, file: !449, line: 16, baseType: !458, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "svt_copy", scope: !455, file: !449, line: 17, baseType: !948, size: 64, offset: 320)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!461, !462, !446, !462, !842, !545}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "svt_dup", scope: !455, file: !449, line: 19, baseType: !952, size: 64, offset: 384)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!461, !446, !955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "CLONE_PARAMS", file: !427, line: 2677, baseType: !957)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clone_params", file: !4, line: 2150, size: 320, elements: !958)
!958 = !{!959, !960, !961, !967, !968}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "stashes", scope: !957, file: !4, line: 2151, baseType: !824, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !957, file: !4, line: 2152, baseType: !482, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "proto_perl", scope: !957, file: !4, line: 2153, baseType: !962, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "PerlInterpreter", file: !427, line: 2639, baseType: !964)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "interpreter", file: !427, line: 5434, size: 8, elements: !965)
!965 = !{!966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "broiled", scope: !964, file: !427, line: 5435, baseType: !477, size: 8)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "new_perl", scope: !957, file: !4, line: 2154, baseType: !962, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "unreferenced", scope: !957, file: !4, line: 2155, baseType: !824, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "svt_local", scope: !455, file: !449, line: 20, baseType: !458, size: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "mg_private", scope: !448, file: !449, line: 26, baseType: !971, size: 16, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "U16", file: !470, line: 173, baseType: !972)
!972 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "mg_type", scope: !448, file: !449, line: 27, baseType: !477, size: 8, offset: 144)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mg_flags", scope: !448, file: !449, line: 28, baseType: !655, size: 8, offset: 152)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mg_len", scope: !448, file: !449, line: 29, baseType: !760, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mg_obj", scope: !448, file: !449, line: 30, baseType: !462, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mg_ptr", scope: !448, file: !449, line: 31, baseType: !476, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_hash_index", scope: !443, file: !4, line: 496, baseType: !496, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_keys", scope: !438, file: !439, line: 133, baseType: !496, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "xhv_max", scope: !438, file: !439, line: 134, baseType: !496, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !433, file: !4, line: 247, baseType: !469, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sv_flags", scope: !433, file: !4, line: 247, baseType: !469, size: 32, offset: 96)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "sv_u", scope: !433, file: !4, line: 248, baseType: !984, size: 64, offset: 128)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !4, line: 248, size: 64, elements: !985)
!985 = !{!986, !987, !988, !989, !990, !991, !992, !993, !994, !995}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "svu_pv", scope: !984, file: !4, line: 248, baseType: !476, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "svu_iv", scope: !984, file: !4, line: 248, baseType: !479, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "svu_uv", scope: !984, file: !4, line: 248, baseType: !482, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "svu_nv", scope: !984, file: !4, line: 248, baseType: !485, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rv", scope: !984, file: !4, line: 248, baseType: !462, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "svu_rx", scope: !984, file: !4, line: 248, baseType: !489, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "svu_array", scope: !984, file: !4, line: 248, baseType: !530, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "svu_hash", scope: !984, file: !4, line: 248, baseType: !532, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "svu_gp", scope: !984, file: !4, line: 248, baseType: !556, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "svu_fp", scope: !984, file: !4, line: 248, baseType: !586, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !428, file: !4, line: 500, baseType: !443, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !428, file: !4, line: 500, baseType: !496, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !428, file: !4, line: 500, baseType: !999, size: 64, offset: 192)
!999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !4, line: 500, size: 64, elements: !1000)
!1000 = !{!1001, !1002}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !999, file: !4, line: 500, baseType: !496, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !999, file: !4, line: 500, baseType: !476, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_typedef, name: "svtype", file: !4, line: 153, baseType: !3)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVMG", file: !427, line: 2663, baseType: !1006)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvmg", file: !4, line: 524, size: 384, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1016, !1017}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1006, file: !4, line: 525, baseType: !431, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1006, file: !4, line: 525, baseType: !443, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1006, file: !4, line: 525, baseType: !496, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1006, file: !4, line: 525, baseType: !1012, size: 64, offset: 192)
!1012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !4, line: 525, size: 64, elements: !1013)
!1013 = !{!1014, !1015}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1012, file: !4, line: 525, baseType: !496, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1012, file: !4, line: 525, baseType: !476, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !1006, file: !4, line: 526, baseType: !580, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !1006, file: !4, line: 527, baseType: !625, size: 64, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVLV", file: !427, line: 2664, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvlv", file: !4, line: 530, size: 640, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1031, !1032, !1033, !1038, !1039, !1040, !1041}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1021, file: !4, line: 531, baseType: !431, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1021, file: !4, line: 531, baseType: !443, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1021, file: !4, line: 531, baseType: !496, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1021, file: !4, line: 531, baseType: !1027, size: 64, offset: 192)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !4, line: 531, size: 64, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1027, file: !4, line: 531, baseType: !496, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1027, file: !4, line: 531, baseType: !476, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "xiv_u", scope: !1021, file: !4, line: 532, baseType: !580, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "xnv_u", scope: !1021, file: !4, line: 533, baseType: !625, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_targoff_u", scope: !1021, file: !4, line: 537, baseType: !1034, size: 64, offset: 384)
!1034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !4, line: 534, size: 64, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "xlvu_targoff", scope: !1034, file: !4, line: 535, baseType: !496, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "xlvu_stargoff", scope: !1034, file: !4, line: 536, baseType: !760, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_targlen", scope: !1021, file: !4, line: 538, baseType: !496, size: 64, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_targ", scope: !1021, file: !4, line: 539, baseType: !462, size: 64, offset: 512)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_type", scope: !1021, file: !4, line: 540, baseType: !477, size: 8, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "xlv_flags", scope: !1021, file: !4, line: 542, baseType: !477, size: 8, offset: 584)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "XPVUV", file: !427, line: 2661, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xpvuv", file: !4, line: 510, size: 320, elements: !1045)
!1045 = !{!1046, !1047, !1048, !1049, !1054}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_stash", scope: !1044, file: !4, line: 511, baseType: !431, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "xmg_u", scope: !1044, file: !4, line: 511, baseType: !443, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_cur", scope: !1044, file: !4, line: 511, baseType: !496, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "xpv_len_u", scope: !1044, file: !4, line: 511, baseType: !1050, size: 64, offset: 192)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1044, file: !4, line: 511, size: 64, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_len", scope: !1050, file: !4, line: 511, baseType: !496, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "xpvlenu_pv", scope: !1050, file: !4, line: 511, baseType: !476, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "xuv_u", scope: !1044, file: !4, line: 512, baseType: !580, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "SVOP", file: !427, line: 2625, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svop", file: !699, line: 407, size: 384, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1061, file: !699, line: 408, baseType: !696, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1061, file: !699, line: 408, baseType: !696, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1061, file: !699, line: 408, baseType: !704, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1061, file: !699, line: 408, baseType: !708, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1061, file: !699, line: 408, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1061, file: !699, line: 408, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1061, file: !699, line: 408, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1061, file: !699, line: 408, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1061, file: !699, line: 408, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1061, file: !699, line: 408, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1061, file: !699, line: 408, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1061, file: !699, line: 408, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1061, file: !699, line: 408, baseType: !655, size: 8, offset: 272)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1061, file: !699, line: 408, baseType: !655, size: 8, offset: 280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "op_sv", scope: !1061, file: !699, line: 409, baseType: !462, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "PVOP", file: !427, line: 2627, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pvop", file: !699, line: 417, size: 384, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !1084, file: !699, line: 418, baseType: !696, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !1084, file: !699, line: 418, baseType: !696, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !1084, file: !699, line: 418, baseType: !704, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !1084, file: !699, line: 418, baseType: !708, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !1084, file: !699, line: 418, baseType: !5, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !1084, file: !699, line: 418, baseType: !5, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !1084, file: !699, line: 418, baseType: !5, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !1084, file: !699, line: 418, baseType: !5, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !1084, file: !699, line: 418, baseType: !5, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !1084, file: !699, line: 418, baseType: !5, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !1084, file: !699, line: 418, baseType: !5, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !1084, file: !699, line: 418, baseType: !5, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !1084, file: !699, line: 418, baseType: !655, size: 8, offset: 272)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !1084, file: !699, line: 418, baseType: !655, size: 8, offset: 280)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "op_pv", scope: !1084, file: !699, line: 419, baseType: !476, size: 64, offset: 320)
!1101 = !{i32 7, !"Dwarf Version", i32 5}
!1102 = !{i32 2, !"Debug Info Version", i32 3}
!1103 = !{i32 1, !"wchar_size", i32 4}
!1104 = !{i32 7, !"PIC Level", i32 2}
!1105 = !{i32 7, !"PIE Level", i32 2}
!1106 = !{i32 7, !"uwtable", i32 2}
!1107 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!1108 = distinct !DISubprogram(name: "Perl_do_trans", scope: !1109, file: !1109, line: 619, type: !1110, scopeLine: 620, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1112)
!1109 = !DIFile(filename: "apps/500.perlbench_r/src/doop.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "995ce78900e8685a6915b9963eb14124")
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!545, !462}
!1112 = !{!1113, !1114, !1115, !1116}
!1113 = !DILocalVariable(name: "sv", arg: 1, scope: !1108, file: !1109, line: 619, type: !462)
!1114 = !DILocalVariable(name: "len", scope: !1108, file: !1109, line: 621, type: !496)
!1115 = !DILocalVariable(name: "flags", scope: !1108, file: !1109, line: 622, type: !865)
!1116 = !DILocalVariable(name: "hasutf", scope: !1108, file: !1109, line: 623, type: !865)
!1117 = !DILocation(line: 0, scope: !1108)
!1118 = !DILocation(line: 621, column: 5, scope: !1108)
!1119 = !DILocation(line: 622, column: 23, scope: !1108)
!1120 = !DILocation(line: 622, column: 30, scope: !1108)
!1121 = !DILocation(line: 623, column: 30, scope: !1108)
!1122 = !DILocation(line: 627, column: 9, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1108, file: !1109, line: 627, column: 9)
!1124 = !DILocation(line: 627, column: 24, scope: !1123)
!1125 = !DILocation(line: 628, column: 9, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !1109, line: 627, column: 58)
!1127 = !DILocation(line: 630, column: 11, scope: !1108)
!1128 = !DILocation(line: 629, column: 5, scope: !1126)
!1129 = !DILocation(line: 631, column: 10, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1108, file: !1109, line: 631, column: 9)
!1131 = !DILocation(line: 631, column: 9, scope: !1108)
!1132 = !DILocation(line: 633, column: 9, scope: !1108)
!1133 = !DILocation(line: 634, column: 7, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !1109, line: 634, column: 6)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !1109, line: 633, column: 40)
!1136 = distinct !DILexicalBlock(scope: !1108, file: !1109, line: 633, column: 9)
!1137 = !DILocation(line: 634, column: 18, scope: !1134)
!1138 = !DILocation(line: 635, column: 12, scope: !1134)
!1139 = !DILocation(line: 636, column: 8, scope: !1135)
!1140 = !DILocation(line: 645, column: 16, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !1109, line: 644, column: 37)
!1142 = distinct !DILexicalBlock(scope: !1108, file: !1109, line: 644, column: 9)
!1143 = !DILocalVariable(name: "sv", arg: 1, scope: !1144, file: !1109, line: 403, type: !831)
!1144 = distinct !DISubprogram(name: "S_do_trans_count_utf8", scope: !1109, file: !1109, line: 403, type: !1145, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1147)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!545, !831}
!1147 = !{!1143, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1156, !1159, !1161, !1162, !1163, !1166, !1168, !1170}
!1148 = !DILocalVariable(name: "s", scope: !1144, file: !1109, line: 405, type: !1078)
!1149 = !DILocalVariable(name: "start", scope: !1144, file: !1109, line: 406, type: !1078)
!1150 = !DILocalVariable(name: "send", scope: !1144, file: !1109, line: 407, type: !1078)
!1151 = !DILocalVariable(name: "matches", scope: !1144, file: !1109, line: 408, type: !545)
!1152 = !DILocalVariable(name: "len", scope: !1144, file: !1109, line: 409, type: !496)
!1153 = !DILocalVariable(name: "rv", scope: !1144, file: !1109, line: 410, type: !831)
!1154 = !DILocalVariable(name: "hv", scope: !1144, file: !1109, line: 416, type: !1155)
!1155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!1156 = !DILocalVariable(name: "svp", scope: !1144, file: !1109, line: 417, type: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!1159 = !DILocalVariable(name: "none", scope: !1144, file: !1109, line: 418, type: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!1161 = !DILocalVariable(name: "extra", scope: !1144, file: !1109, line: 419, type: !1160)
!1162 = !DILocalVariable(name: "hibit", scope: !1144, file: !1109, line: 420, type: !655)
!1163 = !DILocalVariable(name: "t", scope: !1164, file: !1109, line: 426, type: !1078)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !1109, line: 425, column: 22)
!1165 = distinct !DILexicalBlock(scope: !1144, file: !1109, line: 425, column: 9)
!1166 = !DILocalVariable(name: "e", scope: !1164, file: !1109, line: 427, type: !1167)
!1167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1078)
!1168 = !DILocalVariable(name: "ch", scope: !1169, file: !1109, line: 429, type: !1079)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !1109, line: 428, column: 16)
!1170 = !DILocalVariable(name: "uv", scope: !1171, file: !1109, line: 440, type: !1160)
!1171 = distinct !DILexicalBlock(scope: !1144, file: !1109, line: 439, column: 22)
!1172 = !DILocation(line: 0, scope: !1144, inlinedAt: !1173)
!1173 = distinct !DILocation(line: 645, column: 25, scope: !1141)
!1174 = !DILocation(line: 409, column: 5, scope: !1144, inlinedAt: !1173)
!1175 = !DILocation(line: 414, column: 7, scope: !1144, inlinedAt: !1173)
!1176 = !DILocation(line: 416, column: 20, scope: !1144, inlinedAt: !1173)
!1177 = !DILocation(line: 417, column: 29, scope: !1144, inlinedAt: !1173)
!1178 = !DILocation(line: 418, column: 21, scope: !1144, inlinedAt: !1173)
!1179 = !DILocation(line: 418, column: 27, scope: !1144, inlinedAt: !1173)
!1180 = !DILocation(line: 419, column: 27, scope: !1144, inlinedAt: !1173)
!1181 = !DILocation(line: 424, column: 20, scope: !1144, inlinedAt: !1173)
!1182 = !DILocation(line: 425, column: 10, scope: !1165, inlinedAt: !1173)
!1183 = !DILocation(line: 425, column: 9, scope: !1144, inlinedAt: !1173)
!1184 = !DILocation(line: 0, scope: !1164, inlinedAt: !1173)
!1185 = !DILocation(line: 427, column: 27, scope: !1164, inlinedAt: !1173)
!1186 = !DILocation(line: 427, column: 25, scope: !1164, inlinedAt: !1173)
!1187 = !DILocation(line: 428, column: 11, scope: !1164, inlinedAt: !1173)
!1188 = !DILocation(line: 428, column: 2, scope: !1164, inlinedAt: !1173)
!1189 = !DILocation(line: 429, column: 22, scope: !1169, inlinedAt: !1173)
!1190 = !DILocation(line: 429, column: 20, scope: !1169, inlinedAt: !1173)
!1191 = !DILocation(line: 0, scope: !1169, inlinedAt: !1173)
!1192 = !DILocation(line: 431, column: 10, scope: !1193, inlinedAt: !1173)
!1193 = distinct !DILexicalBlock(scope: !1169, file: !1109, line: 431, column: 10)
!1194 = !DILocation(line: 431, column: 10, scope: !1169, inlinedAt: !1173)
!1195 = !DILocation(line: 432, column: 15, scope: !1196, inlinedAt: !1173)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !1109, line: 431, column: 17)
!1197 = !DILocation(line: 437, column: 16, scope: !1144, inlinedAt: !1173)
!1198 = !DILocation(line: 437, column: 14, scope: !1144, inlinedAt: !1173)
!1199 = !DILocation(line: 439, column: 14, scope: !1144, inlinedAt: !1173)
!1200 = !DILocation(line: 439, column: 5, scope: !1144, inlinedAt: !1173)
!1201 = !DILocation(line: 440, column: 16, scope: !1171, inlinedAt: !1173)
!1202 = !DILocation(line: 0, scope: !1171, inlinedAt: !1173)
!1203 = !DILocation(line: 441, column: 9, scope: !1204, inlinedAt: !1173)
!1204 = distinct !DILexicalBlock(scope: !1171, file: !1109, line: 441, column: 6)
!1205 = !DILocation(line: 441, column: 16, scope: !1204, inlinedAt: !1173)
!1206 = !DILocation(line: 443, column: 7, scope: !1171, inlinedAt: !1173)
!1207 = !DILocation(line: 443, column: 4, scope: !1171, inlinedAt: !1173)
!1208 = distinct !{!1208, !1200, !1209, !1210, !1211}
!1209 = !DILocation(line: 444, column: 5, scope: !1144, inlinedAt: !1173)
!1210 = !{!"llvm.loop.mustprogress"}
!1211 = !{!"llvm.loop.unroll.disable"}
!1212 = !DILocation(line: 445, column: 9, scope: !1144, inlinedAt: !1173)
!1213 = !DILocation(line: 446, column: 9, scope: !1214, inlinedAt: !1173)
!1214 = distinct !DILexicalBlock(scope: !1144, file: !1109, line: 445, column: 9)
!1215 = !DILocation(line: 449, column: 1, scope: !1144, inlinedAt: !1173)
!1216 = !DILocalVariable(name: "sv", arg: 1, scope: !1217, file: !1109, line: 99, type: !831)
!1217 = distinct !DISubprogram(name: "S_do_trans_count", scope: !1109, file: !1109, line: 99, type: !1145, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1218)
!1218 = !{!1216, !1219, !1220, !1221, !1222, !1223, !1227, !1230, !1232}
!1219 = !DILocalVariable(name: "len", scope: !1217, file: !1109, line: 101, type: !496)
!1220 = !DILocalVariable(name: "s", scope: !1217, file: !1109, line: 102, type: !1078)
!1221 = !DILocalVariable(name: "send", scope: !1217, file: !1109, line: 103, type: !1167)
!1222 = !DILocalVariable(name: "matches", scope: !1217, file: !1109, line: 104, type: !545)
!1223 = !DILocalVariable(name: "tbl", scope: !1217, file: !1109, line: 105, type: !1224)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1227 = !DILocalVariable(name: "complement", scope: !1228, file: !1109, line: 119, type: !865)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !1109, line: 118, column: 10)
!1229 = distinct !DILexicalBlock(scope: !1217, file: !1109, line: 112, column: 9)
!1230 = !DILocalVariable(name: "ulen", scope: !1231, file: !1109, line: 121, type: !496)
!1231 = distinct !DILexicalBlock(scope: !1228, file: !1109, line: 120, column: 19)
!1232 = !DILocalVariable(name: "c", scope: !1231, file: !1109, line: 122, type: !1160)
!1233 = !DILocation(line: 0, scope: !1217, inlinedAt: !1234)
!1234 = distinct !DILocation(line: 645, column: 51, scope: !1141)
!1235 = !DILocation(line: 101, column: 5, scope: !1217, inlinedAt: !1234)
!1236 = !DILocation(line: 102, column: 30, scope: !1217, inlinedAt: !1234)
!1237 = !DILocation(line: 103, column: 33, scope: !1217, inlinedAt: !1234)
!1238 = !DILocation(line: 103, column: 31, scope: !1217, inlinedAt: !1234)
!1239 = !DILocation(line: 105, column: 39, scope: !1217, inlinedAt: !1234)
!1240 = !DILocation(line: 105, column: 46, scope: !1217, inlinedAt: !1234)
!1241 = !DILocation(line: 109, column: 10, scope: !1242, inlinedAt: !1234)
!1242 = distinct !DILexicalBlock(scope: !1217, file: !1109, line: 109, column: 9)
!1243 = !DILocation(line: 109, column: 9, scope: !1217, inlinedAt: !1234)
!1244 = !DILocation(line: 110, column: 2, scope: !1242, inlinedAt: !1234)
!1245 = !DILocation(line: 112, column: 10, scope: !1229, inlinedAt: !1234)
!1246 = !DILocation(line: 0, scope: !1229, inlinedAt: !1234)
!1247 = !DILocation(line: 112, column: 9, scope: !1217, inlinedAt: !1234)
!1248 = !DILocation(line: 113, column: 2, scope: !1249, inlinedAt: !1234)
!1249 = distinct !DILexicalBlock(scope: !1229, file: !1109, line: 112, column: 22)
!1250 = !DILocation(line: 114, column: 23, scope: !1251, inlinedAt: !1234)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !1109, line: 114, column: 17)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !1109, line: 113, column: 19)
!1253 = !DILocation(line: 114, column: 21, scope: !1251, inlinedAt: !1234)
!1254 = !DILocation(line: 114, column: 17, scope: !1251, inlinedAt: !1234)
!1255 = !DILocation(line: 114, column: 17, scope: !1252, inlinedAt: !1234)
!1256 = !DILocation(line: 113, column: 11, scope: !1249, inlinedAt: !1234)
!1257 = distinct !{!1257, !1248, !1258, !1210, !1211}
!1258 = !DILocation(line: 116, column: 2, scope: !1249, inlinedAt: !1234)
!1259 = !DILocation(line: 0, scope: !1228, inlinedAt: !1234)
!1260 = !DILocation(line: 120, column: 2, scope: !1228, inlinedAt: !1234)
!1261 = !DILocation(line: 119, column: 25, scope: !1228, inlinedAt: !1234)
!1262 = !DILocation(line: 119, column: 32, scope: !1228, inlinedAt: !1234)
!1263 = !DILocation(line: 121, column: 6, scope: !1231, inlinedAt: !1234)
!1264 = !DILocation(line: 122, column: 19, scope: !1231, inlinedAt: !1234)
!1265 = !DILocation(line: 0, scope: !1231, inlinedAt: !1234)
!1266 = !DILocation(line: 123, column: 12, scope: !1267, inlinedAt: !1234)
!1267 = distinct !DILexicalBlock(scope: !1231, file: !1109, line: 123, column: 10)
!1268 = !DILocation(line: 123, column: 10, scope: !1231, inlinedAt: !1234)
!1269 = !DILocation(line: 124, column: 7, scope: !1270, inlinedAt: !1234)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !1109, line: 124, column: 7)
!1271 = distinct !DILexicalBlock(scope: !1267, file: !1109, line: 123, column: 21)
!1272 = !DILocation(line: 124, column: 7, scope: !1271, inlinedAt: !1234)
!1273 = !DILocation(line: 128, column: 11, scope: !1231, inlinedAt: !1234)
!1274 = !DILocation(line: 128, column: 8, scope: !1231, inlinedAt: !1234)
!1275 = !DILocation(line: 129, column: 2, scope: !1228, inlinedAt: !1234)
!1276 = !DILocation(line: 120, column: 11, scope: !1228, inlinedAt: !1234)
!1277 = distinct !{!1277, !1260, !1275, !1210, !1211}
!1278 = !DILocation(line: 104, column: 9, scope: !1217, inlinedAt: !1234)
!1279 = !DILocation(line: 133, column: 1, scope: !1217, inlinedAt: !1234)
!1280 = !DILocation(line: 646, column: 22, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1142, file: !1109, line: 646, column: 16)
!1282 = !DILocation(line: 0, scope: !1281)
!1283 = !DILocation(line: 646, column: 16, scope: !1142)
!1284 = !DILocation(line: 647, column: 16, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !1109, line: 646, column: 79)
!1286 = !DILocalVariable(name: "sv", arg: 1, scope: !1287, file: !1109, line: 452, type: !831)
!1287 = distinct !DISubprogram(name: "S_do_trans_complex_utf8", scope: !1109, file: !1109, line: 452, type: !1145, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1288)
!1288 = !{!1286, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1311, !1312, !1314, !1317, !1319, !1323, !1324, !1329, !1334, !1337, !1340, !1341}
!1289 = !DILocalVariable(name: "start", scope: !1287, file: !1109, line: 454, type: !1055)
!1290 = !DILocalVariable(name: "send", scope: !1287, file: !1109, line: 454, type: !1055)
!1291 = !DILocalVariable(name: "d", scope: !1287, file: !1109, line: 455, type: !1055)
!1292 = !DILocalVariable(name: "matches", scope: !1287, file: !1109, line: 456, type: !545)
!1293 = !DILocalVariable(name: "squash", scope: !1287, file: !1109, line: 457, type: !865)
!1294 = !DILocalVariable(name: "del", scope: !1287, file: !1109, line: 458, type: !865)
!1295 = !DILocalVariable(name: "grows", scope: !1287, file: !1109, line: 459, type: !865)
!1296 = !DILocalVariable(name: "rv", scope: !1287, file: !1109, line: 460, type: !831)
!1297 = !DILocalVariable(name: "hv", scope: !1287, file: !1109, line: 466, type: !1155)
!1298 = !DILocalVariable(name: "svp", scope: !1287, file: !1109, line: 467, type: !1158)
!1299 = !DILocalVariable(name: "none", scope: !1287, file: !1109, line: 468, type: !1160)
!1300 = !DILocalVariable(name: "extra", scope: !1287, file: !1109, line: 469, type: !1160)
!1301 = !DILocalVariable(name: "final", scope: !1287, file: !1109, line: 470, type: !482)
!1302 = !DILocalVariable(name: "havefinal", scope: !1287, file: !1109, line: 471, type: !731)
!1303 = !DILocalVariable(name: "len", scope: !1287, file: !1109, line: 472, type: !496)
!1304 = !DILocalVariable(name: "dstart", scope: !1287, file: !1109, line: 473, type: !1055)
!1305 = !DILocalVariable(name: "dend", scope: !1287, file: !1109, line: 473, type: !1055)
!1306 = !DILocalVariable(name: "hibit", scope: !1287, file: !1109, line: 474, type: !655)
!1307 = !DILocalVariable(name: "s", scope: !1287, file: !1109, line: 475, type: !1055)
!1308 = !DILocalVariable(name: "t", scope: !1309, file: !1109, line: 480, type: !1078)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !1109, line: 479, column: 22)
!1310 = distinct !DILexicalBlock(scope: !1287, file: !1109, line: 479, column: 9)
!1311 = !DILocalVariable(name: "e", scope: !1309, file: !1109, line: 481, type: !1167)
!1312 = !DILocalVariable(name: "ch", scope: !1313, file: !1109, line: 483, type: !1079)
!1313 = distinct !DILexicalBlock(scope: !1309, file: !1109, line: 482, column: 16)
!1314 = !DILocalVariable(name: "puv", scope: !1315, file: !1109, line: 512, type: !482)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !1109, line: 511, column: 17)
!1316 = distinct !DILexicalBlock(scope: !1287, file: !1109, line: 511, column: 9)
!1317 = !DILocalVariable(name: "uv", scope: !1318, file: !1109, line: 514, type: !482)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !1109, line: 513, column: 19)
!1319 = !DILocalVariable(name: "clen", scope: !1320, file: !1109, line: 517, type: !1322)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !1109, line: 516, column: 20)
!1321 = distinct !DILexicalBlock(scope: !1318, file: !1109, line: 516, column: 10)
!1322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!1323 = !DILocalVariable(name: "nlen", scope: !1320, file: !1109, line: 518, type: !1322)
!1324 = !DILocalVariable(name: "i", scope: !1325, file: !1109, line: 535, type: !1328)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !1109, line: 534, column: 27)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !1109, line: 534, column: 15)
!1327 = distinct !DILexicalBlock(scope: !1318, file: !1109, line: 525, column: 10)
!1328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!1329 = !DILocalVariable(name: "len", scope: !1330, file: !1109, line: 552, type: !496)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !1109, line: 551, column: 8)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !1109, line: 544, column: 7)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !1109, line: 542, column: 36)
!1333 = distinct !DILexicalBlock(scope: !1326, file: !1109, line: 542, column: 15)
!1334 = !DILocalVariable(name: "uv", scope: !1335, file: !1109, line: 569, type: !1160)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !1109, line: 568, column: 19)
!1336 = distinct !DILexicalBlock(scope: !1316, file: !1109, line: 567, column: 10)
!1337 = !DILocalVariable(name: "clen", scope: !1338, file: !1109, line: 571, type: !1322)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !1109, line: 570, column: 20)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !1109, line: 570, column: 10)
!1340 = !DILocalVariable(name: "nlen", scope: !1338, file: !1109, line: 572, type: !1322)
!1341 = !DILocalVariable(name: "i", scope: !1342, file: !1109, line: 586, type: !1328)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !1109, line: 585, column: 27)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !1109, line: 585, column: 15)
!1344 = distinct !DILexicalBlock(scope: !1335, file: !1109, line: 579, column: 10)
!1345 = !DILocation(line: 0, scope: !1287, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 647, column: 25, scope: !1285)
!1347 = !DILocation(line: 457, column: 26, scope: !1287, inlinedAt: !1346)
!1348 = !DILocation(line: 457, column: 33, scope: !1287, inlinedAt: !1346)
!1349 = !DILocation(line: 457, column: 44, scope: !1287, inlinedAt: !1346)
!1350 = !DILocation(line: 458, column: 44, scope: !1287, inlinedAt: !1346)
!1351 = !DILocation(line: 459, column: 44, scope: !1287, inlinedAt: !1346)
!1352 = !DILocation(line: 464, column: 7, scope: !1287, inlinedAt: !1346)
!1353 = !DILocation(line: 466, column: 21, scope: !1287, inlinedAt: !1346)
!1354 = !DILocation(line: 467, column: 23, scope: !1287, inlinedAt: !1346)
!1355 = !DILocation(line: 468, column: 21, scope: !1287, inlinedAt: !1346)
!1356 = !DILocation(line: 468, column: 27, scope: !1287, inlinedAt: !1346)
!1357 = !DILocation(line: 469, column: 27, scope: !1287, inlinedAt: !1346)
!1358 = !DILocation(line: 472, column: 5, scope: !1287, inlinedAt: !1346)
!1359 = !DILocation(line: 475, column: 18, scope: !1287, inlinedAt: !1346)
!1360 = !DILocation(line: 479, column: 10, scope: !1310, inlinedAt: !1346)
!1361 = !DILocation(line: 479, column: 9, scope: !1287, inlinedAt: !1346)
!1362 = !DILocation(line: 0, scope: !1309, inlinedAt: !1346)
!1363 = !DILocation(line: 481, column: 27, scope: !1309, inlinedAt: !1346)
!1364 = !DILocation(line: 481, column: 25, scope: !1309, inlinedAt: !1346)
!1365 = !DILocation(line: 482, column: 11, scope: !1309, inlinedAt: !1346)
!1366 = !DILocation(line: 482, column: 2, scope: !1309, inlinedAt: !1346)
!1367 = !DILocation(line: 483, column: 22, scope: !1313, inlinedAt: !1346)
!1368 = !DILocation(line: 483, column: 20, scope: !1313, inlinedAt: !1346)
!1369 = !DILocation(line: 0, scope: !1313, inlinedAt: !1346)
!1370 = !DILocation(line: 485, column: 10, scope: !1371, inlinedAt: !1346)
!1371 = distinct !DILexicalBlock(scope: !1313, file: !1109, line: 485, column: 10)
!1372 = !DILocation(line: 485, column: 10, scope: !1313, inlinedAt: !1346)
!1373 = !DILocation(line: 486, column: 7, scope: !1374, inlinedAt: !1346)
!1374 = distinct !DILexicalBlock(scope: !1371, file: !1109, line: 485, column: 17)
!1375 = !DILocation(line: 491, column: 16, scope: !1287, inlinedAt: !1346)
!1376 = !DILocation(line: 491, column: 14, scope: !1287, inlinedAt: !1346)
!1377 = !DILocation(line: 494, column: 11, scope: !1287, inlinedAt: !1346)
!1378 = !DILocation(line: 495, column: 9, scope: !1379, inlinedAt: !1346)
!1379 = distinct !DILexicalBlock(scope: !1287, file: !1109, line: 495, column: 9)
!1380 = !DILocation(line: 495, column: 9, scope: !1287, inlinedAt: !1346)
!1381 = !DILocation(line: 496, column: 10, scope: !1382, inlinedAt: !1346)
!1382 = distinct !DILexicalBlock(scope: !1379, file: !1109, line: 495, column: 14)
!1383 = !DILocation(line: 500, column: 9, scope: !1384, inlinedAt: !1346)
!1384 = distinct !DILexicalBlock(scope: !1287, file: !1109, line: 500, column: 9)
!1385 = !DILocation(line: 0, scope: !1384, inlinedAt: !1346)
!1386 = !DILocation(line: 500, column: 9, scope: !1287, inlinedAt: !1346)
!1387 = !DILocation(line: 502, column: 2, scope: !1388, inlinedAt: !1346)
!1388 = distinct !DILexicalBlock(scope: !1384, file: !1109, line: 500, column: 16)
!1389 = !DILocation(line: 503, column: 13, scope: !1388, inlinedAt: !1346)
!1390 = !DILocation(line: 503, column: 17, scope: !1388, inlinedAt: !1346)
!1391 = !DILocation(line: 503, column: 11, scope: !1388, inlinedAt: !1346)
!1392 = !DILocation(line: 505, column: 5, scope: !1388, inlinedAt: !1346)
!1393 = !DILocation(line: 508, column: 11, scope: !1394, inlinedAt: !1346)
!1394 = distinct !DILexicalBlock(scope: !1384, file: !1109, line: 506, column: 10)
!1395 = !DILocation(line: 511, column: 9, scope: !1316, inlinedAt: !1346)
!1396 = !DILocation(line: 0, scope: !1316, inlinedAt: !1346)
!1397 = !DILocation(line: 511, column: 9, scope: !1287, inlinedAt: !1346)
!1398 = !DILocation(line: 0, scope: !1315, inlinedAt: !1346)
!1399 = !DILocation(line: 513, column: 2, scope: !1315, inlinedAt: !1346)
!1400 = !DILocation(line: 568, column: 2, scope: !1336, inlinedAt: !1346)
!1401 = !DILocation(line: 569, column: 20, scope: !1335, inlinedAt: !1346)
!1402 = !DILocation(line: 0, scope: !1335, inlinedAt: !1346)
!1403 = !DILocation(line: 570, column: 12, scope: !1339, inlinedAt: !1346)
!1404 = !DILocation(line: 570, column: 10, scope: !1335, inlinedAt: !1346)
!1405 = !DILocation(line: 571, column: 32, scope: !1338, inlinedAt: !1346)
!1406 = !DILocation(line: 0, scope: !1338, inlinedAt: !1346)
!1407 = !DILocation(line: 572, column: 28, scope: !1338, inlinedAt: !1346)
!1408 = !DILocation(line: 572, column: 39, scope: !1338, inlinedAt: !1346)
!1409 = !DILocation(line: 572, column: 37, scope: !1338, inlinedAt: !1346)
!1410 = !DILocation(line: 572, column: 43, scope: !1338, inlinedAt: !1346)
!1411 = !DILocation(line: 573, column: 7, scope: !1338, inlinedAt: !1346)
!1412 = !DILocation(line: 574, column: 7, scope: !1413, inlinedAt: !1346)
!1413 = distinct !DILexicalBlock(scope: !1338, file: !1109, line: 573, column: 7)
!1414 = !DILocation(line: 575, column: 3, scope: !1338, inlinedAt: !1346)
!1415 = !DILocation(line: 576, column: 14, scope: !1338, inlinedAt: !1346)
!1416 = !DILocation(line: 577, column: 17, scope: !1338, inlinedAt: !1346)
!1417 = !DILocation(line: 578, column: 6, scope: !1338, inlinedAt: !1346)
!1418 = !DILocation(line: 579, column: 13, scope: !1344, inlinedAt: !1346)
!1419 = !DILocation(line: 579, column: 10, scope: !1335, inlinedAt: !1346)
!1420 = !DILocation(line: 585, column: 18, scope: !1343, inlinedAt: !1346)
!1421 = !DILocation(line: 585, column: 15, scope: !1344, inlinedAt: !1346)
!1422 = !DILocation(line: 598, column: 13, scope: !1335, inlinedAt: !1346)
!1423 = !DILocation(line: 599, column: 11, scope: !1335, inlinedAt: !1346)
!1424 = !DILocation(line: 599, column: 8, scope: !1335, inlinedAt: !1346)
!1425 = !DILocation(line: 600, column: 2, scope: !1336, inlinedAt: !1346)
!1426 = !DILocation(line: 586, column: 17, scope: !1342, inlinedAt: !1346)
!1427 = !DILocation(line: 0, scope: !1342, inlinedAt: !1346)
!1428 = !DILocation(line: 587, column: 3, scope: !1342, inlinedAt: !1346)
!1429 = !DILocation(line: 588, column: 5, scope: !1342, inlinedAt: !1346)
!1430 = !DILocation(line: 589, column: 5, scope: !1342, inlinedAt: !1346)
!1431 = !DILocation(line: 580, column: 10, scope: !1432, inlinedAt: !1346)
!1432 = distinct !DILexicalBlock(scope: !1344, file: !1109, line: 579, column: 21)
!1433 = !DILocation(line: 581, column: 8, scope: !1432, inlinedAt: !1346)
!1434 = !DILocation(line: 581, column: 5, scope: !1432, inlinedAt: !1346)
!1435 = !DILocation(line: 582, column: 7, scope: !1432, inlinedAt: !1346)
!1436 = !DILocation(line: 583, column: 3, scope: !1432, inlinedAt: !1346)
!1437 = distinct !{!1437, !1400, !1425, !1210, !1211}
!1438 = !DILocation(line: 568, column: 11, scope: !1336, inlinedAt: !1346)
!1439 = !DILocation(line: 514, column: 14, scope: !1318, inlinedAt: !1346)
!1440 = !DILocation(line: 0, scope: !1318, inlinedAt: !1346)
!1441 = !DILocation(line: 516, column: 12, scope: !1321, inlinedAt: !1346)
!1442 = !DILocation(line: 516, column: 10, scope: !1318, inlinedAt: !1346)
!1443 = !DILocation(line: 517, column: 25, scope: !1320, inlinedAt: !1346)
!1444 = !DILocation(line: 0, scope: !1320, inlinedAt: !1346)
!1445 = !DILocation(line: 518, column: 28, scope: !1320, inlinedAt: !1346)
!1446 = !DILocation(line: 518, column: 39, scope: !1320, inlinedAt: !1346)
!1447 = !DILocation(line: 518, column: 37, scope: !1320, inlinedAt: !1346)
!1448 = !DILocation(line: 518, column: 43, scope: !1320, inlinedAt: !1346)
!1449 = !DILocation(line: 519, column: 7, scope: !1320, inlinedAt: !1346)
!1450 = !DILocation(line: 520, column: 7, scope: !1451, inlinedAt: !1346)
!1451 = distinct !DILexicalBlock(scope: !1320, file: !1109, line: 519, column: 7)
!1452 = !DILocation(line: 521, column: 3, scope: !1320, inlinedAt: !1346)
!1453 = !DILocation(line: 522, column: 14, scope: !1320, inlinedAt: !1346)
!1454 = !DILocation(line: 523, column: 17, scope: !1320, inlinedAt: !1346)
!1455 = !DILocation(line: 524, column: 6, scope: !1320, inlinedAt: !1346)
!1456 = !DILocation(line: 525, column: 13, scope: !1327, inlinedAt: !1346)
!1457 = !DILocation(line: 525, column: 10, scope: !1318, inlinedAt: !1346)
!1458 = !DILocation(line: 526, column: 10, scope: !1459, inlinedAt: !1346)
!1459 = distinct !DILexicalBlock(scope: !1327, file: !1109, line: 525, column: 21)
!1460 = !DILocation(line: 527, column: 8, scope: !1459, inlinedAt: !1346)
!1461 = !DILocation(line: 527, column: 5, scope: !1459, inlinedAt: !1346)
!1462 = !DILocation(line: 528, column: 10, scope: !1463, inlinedAt: !1346)
!1463 = distinct !DILexicalBlock(scope: !1459, file: !1109, line: 528, column: 7)
!1464 = !DILocation(line: 528, column: 7, scope: !1459, inlinedAt: !1346)
!1465 = distinct !{!1465, !1399, !1466, !1210, !1211}
!1466 = !DILocation(line: 565, column: 2, scope: !1315, inlinedAt: !1346)
!1467 = !DILocation(line: 529, column: 11, scope: !1468, inlinedAt: !1346)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !1109, line: 528, column: 18)
!1469 = !DILocation(line: 531, column: 3, scope: !1468, inlinedAt: !1346)
!1470 = distinct !{!1470, !1399, !1466, !1210, !1211}
!1471 = !DILocation(line: 534, column: 18, scope: !1326, inlinedAt: !1346)
!1472 = !DILocation(line: 534, column: 15, scope: !1327, inlinedAt: !1346)
!1473 = !DILocation(line: 535, column: 17, scope: !1325, inlinedAt: !1346)
!1474 = !DILocation(line: 0, scope: !1325, inlinedAt: !1346)
!1475 = !DILocation(line: 536, column: 3, scope: !1325, inlinedAt: !1346)
!1476 = !DILocation(line: 537, column: 5, scope: !1325, inlinedAt: !1346)
!1477 = !DILocation(line: 538, column: 5, scope: !1325, inlinedAt: !1346)
!1478 = !DILocation(line: 542, column: 18, scope: !1333, inlinedAt: !1346)
!1479 = !DILocation(line: 542, column: 27, scope: !1333, inlinedAt: !1346)
!1480 = !DILocation(line: 544, column: 7, scope: !1332, inlinedAt: !1346)
!1481 = !DILocation(line: 545, column: 12, scope: !1482, inlinedAt: !1346)
!1482 = distinct !DILexicalBlock(scope: !1331, file: !1109, line: 544, column: 18)
!1483 = !DILocation(line: 546, column: 15, scope: !1484, inlinedAt: !1346)
!1484 = distinct !DILexicalBlock(scope: !1482, file: !1109, line: 546, column: 11)
!1485 = !DILocation(line: 546, column: 11, scope: !1482, inlinedAt: !1346)
!1486 = !DILocation(line: 547, column: 8, scope: !1487, inlinedAt: !1346)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !1109, line: 546, column: 25)
!1488 = !DILocation(line: 549, column: 7, scope: !1487, inlinedAt: !1346)
!1489 = !DILocation(line: 552, column: 7, scope: !1330, inlinedAt: !1346)
!1490 = !DILocation(line: 553, column: 12, scope: !1330, inlinedAt: !1346)
!1491 = !DILocation(line: 0, scope: !1330, inlinedAt: !1346)
!1492 = !DILocation(line: 554, column: 14, scope: !1493, inlinedAt: !1346)
!1493 = distinct !DILexicalBlock(scope: !1330, file: !1109, line: 554, column: 11)
!1494 = !DILocation(line: 554, column: 11, scope: !1330, inlinedAt: !1346)
!1495 = !DILocation(line: 555, column: 4, scope: !1496, inlinedAt: !1346)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !1109, line: 554, column: 22)
!1497 = !DILocation(line: 556, column: 9, scope: !1496, inlinedAt: !1346)
!1498 = !DILocation(line: 556, column: 6, scope: !1496, inlinedAt: !1346)
!1499 = !DILocation(line: 558, column: 7, scope: !1496, inlinedAt: !1346)
!1500 = !DILocation(line: 559, column: 12, scope: !1330, inlinedAt: !1346)
!1501 = !DILocation(line: 560, column: 3, scope: !1331, inlinedAt: !1346)
!1502 = !DILocation(line: 0, scope: !1331, inlinedAt: !1346)
!1503 = !DILocation(line: 561, column: 3, scope: !1332, inlinedAt: !1346)
!1504 = distinct !{!1504, !1399, !1466, !1210, !1211}
!1505 = !DILocation(line: 564, column: 11, scope: !1318, inlinedAt: !1346)
!1506 = !DILocation(line: 564, column: 8, scope: !1318, inlinedAt: !1346)
!1507 = !DILocation(line: 513, column: 11, scope: !1315, inlinedAt: !1346)
!1508 = distinct !{!1508, !1400, !1425, !1210, !1211}
!1509 = !DILocation(line: 592, column: 18, scope: !1510, inlinedAt: !1346)
!1510 = distinct !DILexicalBlock(scope: !1343, file: !1109, line: 592, column: 15)
!1511 = !DILocation(line: 592, column: 27, scope: !1510, inlinedAt: !1346)
!1512 = !DILocation(line: 595, column: 7, scope: !1513, inlinedAt: !1346)
!1513 = distinct !DILexicalBlock(scope: !1510, file: !1109, line: 592, column: 36)
!1514 = !DILocation(line: 596, column: 3, scope: !1513, inlinedAt: !1346)
!1515 = distinct !{!1515, !1400, !1425, !1210, !1211}
!1516 = !DILocation(line: 504, column: 9, scope: !1388, inlinedAt: !1346)
!1517 = !DILocation(line: 456, column: 9, scope: !1287, inlinedAt: !1346)
!1518 = !DILocation(line: 602, column: 15, scope: !1519, inlinedAt: !1346)
!1519 = distinct !DILexicalBlock(scope: !1287, file: !1109, line: 602, column: 9)
!1520 = !DILocation(line: 603, column: 2, scope: !1521, inlinedAt: !1346)
!1521 = distinct !DILexicalBlock(scope: !1519, file: !1109, line: 602, column: 25)
!1522 = !DILocation(line: 604, column: 2, scope: !1521, inlinedAt: !1346)
!1523 = !DILocation(line: 605, column: 12, scope: !1524, inlinedAt: !1346)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !1109, line: 605, column: 6)
!1525 = !DILocation(line: 606, column: 6, scope: !1524, inlinedAt: !1346)
!1526 = !DILocation(line: 609, column: 5, scope: !1527, inlinedAt: !1346)
!1527 = distinct !DILexicalBlock(scope: !1519, file: !1109, line: 608, column: 10)
!1528 = !DILocation(line: 610, column: 2, scope: !1529, inlinedAt: !1346)
!1529 = distinct !DILexicalBlock(scope: !1527, file: !1109, line: 610, column: 2)
!1530 = !DILocation(line: 612, column: 5, scope: !1287, inlinedAt: !1346)
!1531 = !DILocation(line: 613, column: 5, scope: !1532, inlinedAt: !1346)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !1109, line: 613, column: 5)
!1533 = distinct !DILexicalBlock(scope: !1287, file: !1109, line: 613, column: 5)
!1534 = !DILocation(line: 613, column: 5, scope: !1533, inlinedAt: !1346)
!1535 = !DILocation(line: 616, column: 1, scope: !1287, inlinedAt: !1346)
!1536 = !DILocalVariable(name: "sv", arg: 1, scope: !1537, file: !1109, line: 136, type: !831)
!1537 = distinct !DISubprogram(name: "S_do_trans_complex", scope: !1109, file: !1109, line: 136, type: !1145, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1538)
!1538 = !{!1536, !1539, !1540, !1541, !1543, !1544, !1545, !1548, !1549, !1552, !1554, !1557, !1559, !1560, !1561, !1562, !1563, !1564, !1567, !1569, !1570, !1571, !1574, !1575}
!1539 = !DILocalVariable(name: "len", scope: !1537, file: !1109, line: 138, type: !496)
!1540 = !DILocalVariable(name: "s", scope: !1537, file: !1109, line: 139, type: !1055)
!1541 = !DILocalVariable(name: "send", scope: !1537, file: !1109, line: 140, type: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1543 = !DILocalVariable(name: "matches", scope: !1537, file: !1109, line: 141, type: !545)
!1544 = !DILocalVariable(name: "tbl", scope: !1537, file: !1109, line: 142, type: !1224)
!1545 = !DILocalVariable(name: "d", scope: !1546, file: !1109, line: 150, type: !1055)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !1109, line: 149, column: 22)
!1547 = distinct !DILexicalBlock(scope: !1537, file: !1109, line: 149, column: 9)
!1548 = !DILocalVariable(name: "dstart", scope: !1546, file: !1109, line: 151, type: !1542)
!1549 = !DILocalVariable(name: "p", scope: !1550, file: !1109, line: 154, type: !1078)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !1109, line: 153, column: 43)
!1551 = distinct !DILexicalBlock(scope: !1546, file: !1109, line: 153, column: 6)
!1552 = !DILocalVariable(name: "ch", scope: !1553, file: !1109, line: 156, type: !865)
!1553 = distinct !DILexicalBlock(scope: !1550, file: !1109, line: 155, column: 23)
!1554 = !DILocalVariable(name: "ch", scope: !1555, file: !1109, line: 172, type: !865)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !1109, line: 171, column: 23)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !1109, line: 170, column: 7)
!1557 = !DILocalVariable(name: "complement", scope: !1558, file: !1109, line: 188, type: !865)
!1558 = distinct !DILexicalBlock(scope: !1547, file: !1109, line: 187, column: 10)
!1559 = !DILocalVariable(name: "grows", scope: !1558, file: !1109, line: 189, type: !865)
!1560 = !DILocalVariable(name: "del", scope: !1558, file: !1109, line: 190, type: !865)
!1561 = !DILocalVariable(name: "d", scope: !1558, file: !1109, line: 191, type: !1055)
!1562 = !DILocalVariable(name: "dstart", scope: !1558, file: !1109, line: 192, type: !1055)
!1563 = !DILocalVariable(name: "rlen", scope: !1558, file: !1109, line: 193, type: !496)
!1564 = !DILocalVariable(name: "pch", scope: !1565, file: !1109, line: 204, type: !482)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !1109, line: 203, column: 43)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !1109, line: 203, column: 6)
!1567 = !DILocalVariable(name: "len", scope: !1568, file: !1109, line: 206, type: !496)
!1568 = distinct !DILexicalBlock(scope: !1565, file: !1109, line: 205, column: 23)
!1569 = !DILocalVariable(name: "comp", scope: !1568, file: !1109, line: 207, type: !1160)
!1570 = !DILocalVariable(name: "ch", scope: !1568, file: !1109, line: 209, type: !545)
!1571 = !DILocalVariable(name: "len", scope: !1572, file: !1109, line: 252, type: !496)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !1109, line: 251, column: 23)
!1573 = distinct !DILexicalBlock(scope: !1566, file: !1109, line: 250, column: 7)
!1574 = !DILocalVariable(name: "comp", scope: !1572, file: !1109, line: 253, type: !1160)
!1575 = !DILocalVariable(name: "ch", scope: !1572, file: !1109, line: 255, type: !545)
!1576 = !DILocation(line: 0, scope: !1537, inlinedAt: !1577)
!1577 = distinct !DILocation(line: 647, column: 53, scope: !1285)
!1578 = !DILocation(line: 138, column: 5, scope: !1537, inlinedAt: !1577)
!1579 = !DILocation(line: 139, column: 18, scope: !1537, inlinedAt: !1577)
!1580 = !DILocation(line: 140, column: 25, scope: !1537, inlinedAt: !1577)
!1581 = !DILocation(line: 140, column: 24, scope: !1537, inlinedAt: !1577)
!1582 = !DILocation(line: 142, column: 39, scope: !1537, inlinedAt: !1577)
!1583 = !DILocation(line: 142, column: 46, scope: !1537, inlinedAt: !1577)
!1584 = !DILocation(line: 146, column: 10, scope: !1585, inlinedAt: !1577)
!1585 = distinct !DILexicalBlock(scope: !1537, file: !1109, line: 146, column: 9)
!1586 = !DILocation(line: 146, column: 9, scope: !1537, inlinedAt: !1577)
!1587 = !DILocation(line: 147, column: 2, scope: !1585, inlinedAt: !1577)
!1588 = !DILocation(line: 0, scope: !1547, inlinedAt: !1577)
!1589 = !DILocation(line: 149, column: 10, scope: !1547, inlinedAt: !1577)
!1590 = !DILocation(line: 149, column: 9, scope: !1537, inlinedAt: !1577)
!1591 = !DILocation(line: 0, scope: !1546, inlinedAt: !1577)
!1592 = !DILocation(line: 153, column: 24, scope: !1551, inlinedAt: !1577)
!1593 = !DILocation(line: 0, scope: !1551, inlinedAt: !1577)
!1594 = !DILocation(line: 153, column: 6, scope: !1546, inlinedAt: !1577)
!1595 = !DILocation(line: 0, scope: !1550, inlinedAt: !1577)
!1596 = !DILocation(line: 155, column: 6, scope: !1550, inlinedAt: !1577)
!1597 = !DILocation(line: 171, column: 6, scope: !1556, inlinedAt: !1577)
!1598 = !DILocation(line: 156, column: 22, scope: !1553, inlinedAt: !1577)
!1599 = !DILocation(line: 156, column: 18, scope: !1553, inlinedAt: !1577)
!1600 = !DILocation(line: 0, scope: !1553, inlinedAt: !1577)
!1601 = !DILocation(line: 157, column: 10, scope: !1602, inlinedAt: !1577)
!1602 = distinct !DILexicalBlock(scope: !1553, file: !1109, line: 157, column: 7)
!1603 = !DILocation(line: 157, column: 7, scope: !1553, inlinedAt: !1577)
!1604 = !DILocation(line: 158, column: 12, scope: !1605, inlinedAt: !1577)
!1605 = distinct !DILexicalBlock(scope: !1602, file: !1109, line: 157, column: 16)
!1606 = !DILocation(line: 158, column: 10, scope: !1605, inlinedAt: !1577)
!1607 = !DILocation(line: 159, column: 14, scope: !1605, inlinedAt: !1577)
!1608 = !DILocation(line: 160, column: 18, scope: !1609, inlinedAt: !1577)
!1609 = distinct !DILexicalBlock(scope: !1605, file: !1109, line: 160, column: 11)
!1610 = !DILocation(line: 160, column: 13, scope: !1609, inlinedAt: !1577)
!1611 = !DILocation(line: 160, column: 22, scope: !1609, inlinedAt: !1577)
!1612 = !DILocation(line: 160, column: 25, scope: !1609, inlinedAt: !1577)
!1613 = !DILocation(line: 160, column: 28, scope: !1609, inlinedAt: !1577)
!1614 = !DILocation(line: 160, column: 11, scope: !1605, inlinedAt: !1577)
!1615 = !DILocation(line: 161, column: 9, scope: !1609, inlinedAt: !1577)
!1616 = !DILocation(line: 161, column: 4, scope: !1609, inlinedAt: !1577)
!1617 = !DILocation(line: 163, column: 12, scope: !1602, inlinedAt: !1577)
!1618 = !DILocation(line: 164, column: 9, scope: !1619, inlinedAt: !1577)
!1619 = distinct !DILexicalBlock(scope: !1602, file: !1109, line: 163, column: 12)
!1620 = !DILocation(line: 164, column: 12, scope: !1619, inlinedAt: !1577)
!1621 = !DILocation(line: 164, column: 7, scope: !1619, inlinedAt: !1577)
!1622 = !DILocation(line: 166, column: 14, scope: !1623, inlinedAt: !1577)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !1109, line: 165, column: 12)
!1624 = !DILocation(line: 166, column: 7, scope: !1623, inlinedAt: !1577)
!1625 = !DILocation(line: 167, column: 4, scope: !1553, inlinedAt: !1577)
!1626 = !DILocation(line: 155, column: 15, scope: !1550, inlinedAt: !1577)
!1627 = distinct !{!1627, !1596, !1628, !1210, !1211}
!1628 = !DILocation(line: 168, column: 6, scope: !1550, inlinedAt: !1577)
!1629 = !DILocation(line: 172, column: 22, scope: !1555, inlinedAt: !1577)
!1630 = !DILocation(line: 172, column: 18, scope: !1555, inlinedAt: !1577)
!1631 = !DILocation(line: 0, scope: !1555, inlinedAt: !1577)
!1632 = !DILocation(line: 173, column: 10, scope: !1633, inlinedAt: !1577)
!1633 = distinct !DILexicalBlock(scope: !1555, file: !1109, line: 173, column: 7)
!1634 = !DILocation(line: 173, column: 7, scope: !1555, inlinedAt: !1577)
!1635 = !DILocation(line: 174, column: 14, scope: !1636, inlinedAt: !1577)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !1109, line: 173, column: 16)
!1637 = !DILocation(line: 175, column: 14, scope: !1636, inlinedAt: !1577)
!1638 = !DILocation(line: 175, column: 9, scope: !1636, inlinedAt: !1577)
!1639 = !DILocation(line: 175, column: 12, scope: !1636, inlinedAt: !1577)
!1640 = !DILocation(line: 176, column: 3, scope: !1636, inlinedAt: !1577)
!1641 = !DILocation(line: 177, column: 12, scope: !1633, inlinedAt: !1577)
!1642 = !DILocation(line: 178, column: 9, scope: !1643, inlinedAt: !1577)
!1643 = distinct !DILexicalBlock(scope: !1633, file: !1109, line: 177, column: 12)
!1644 = !DILocation(line: 178, column: 12, scope: !1643, inlinedAt: !1577)
!1645 = !DILocation(line: 178, column: 7, scope: !1643, inlinedAt: !1577)
!1646 = !DILocation(line: 180, column: 14, scope: !1647, inlinedAt: !1577)
!1647 = distinct !DILexicalBlock(scope: !1643, file: !1109, line: 179, column: 12)
!1648 = !DILocation(line: 180, column: 7, scope: !1647, inlinedAt: !1577)
!1649 = !DILocation(line: 181, column: 4, scope: !1555, inlinedAt: !1577)
!1650 = !DILocation(line: 171, column: 15, scope: !1556, inlinedAt: !1577)
!1651 = distinct !{!1651, !1597, !1652, !1210, !1211}
!1652 = !DILocation(line: 182, column: 6, scope: !1556, inlinedAt: !1577)
!1653 = !DILocation(line: 150, column: 6, scope: !1546, inlinedAt: !1577)
!1654 = !DILocation(line: 141, column: 9, scope: !1537, inlinedAt: !1577)
!1655 = !DILocation(line: 184, column: 5, scope: !1546, inlinedAt: !1577)
!1656 = !DILocation(line: 185, column: 2, scope: !1657, inlinedAt: !1577)
!1657 = distinct !DILexicalBlock(scope: !1546, file: !1109, line: 185, column: 2)
!1658 = !DILocation(line: 294, column: 5, scope: !1659, inlinedAt: !1577)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !1109, line: 294, column: 5)
!1660 = distinct !DILexicalBlock(scope: !1537, file: !1109, line: 294, column: 5)
!1661 = !DILocation(line: 186, column: 5, scope: !1546, inlinedAt: !1577)
!1662 = !DILocation(line: 188, column: 25, scope: !1558, inlinedAt: !1577)
!1663 = !DILocation(line: 188, column: 43, scope: !1558, inlinedAt: !1577)
!1664 = !DILocation(line: 0, scope: !1558, inlinedAt: !1577)
!1665 = !DILocation(line: 189, column: 38, scope: !1558, inlinedAt: !1577)
!1666 = !DILocation(line: 190, column: 36, scope: !1558, inlinedAt: !1577)
!1667 = !DILocation(line: 195, column: 6, scope: !1668, inlinedAt: !1577)
!1668 = distinct !DILexicalBlock(scope: !1558, file: !1109, line: 195, column: 6)
!1669 = !DILocation(line: 195, column: 6, scope: !1558, inlinedAt: !1577)
!1670 = !DILocation(line: 196, column: 6, scope: !1668, inlinedAt: !1577)
!1671 = !DILocation(line: 0, scope: !1668, inlinedAt: !1577)
!1672 = !DILocation(line: 200, column: 17, scope: !1673, inlinedAt: !1577)
!1673 = distinct !DILexicalBlock(scope: !1558, file: !1109, line: 200, column: 6)
!1674 = !DILocation(line: 201, column: 13, scope: !1673, inlinedAt: !1577)
!1675 = !DILocation(line: 201, column: 6, scope: !1673, inlinedAt: !1577)
!1676 = !DILocation(line: 203, column: 6, scope: !1566, inlinedAt: !1577)
!1677 = !DILocation(line: 203, column: 13, scope: !1566, inlinedAt: !1577)
!1678 = !DILocation(line: 203, column: 24, scope: !1566, inlinedAt: !1577)
!1679 = !DILocation(line: 0, scope: !1566, inlinedAt: !1577)
!1680 = !DILocation(line: 203, column: 6, scope: !1558, inlinedAt: !1577)
!1681 = !DILocation(line: 0, scope: !1565, inlinedAt: !1577)
!1682 = !DILocation(line: 205, column: 6, scope: !1565, inlinedAt: !1577)
!1683 = !DILocation(line: 251, column: 6, scope: !1573, inlinedAt: !1577)
!1684 = !DILocation(line: 206, column: 3, scope: !1568, inlinedAt: !1577)
!1685 = !DILocation(line: 207, column: 19, scope: !1568, inlinedAt: !1577)
!1686 = !DILocation(line: 0, scope: !1568, inlinedAt: !1577)
!1687 = !DILocation(line: 211, column: 12, scope: !1688, inlinedAt: !1577)
!1688 = distinct !DILexicalBlock(scope: !1568, file: !1109, line: 211, column: 7)
!1689 = !DILocation(line: 211, column: 7, scope: !1568, inlinedAt: !1577)
!1690 = !DILocation(line: 212, column: 11, scope: !1691, inlinedAt: !1577)
!1691 = distinct !DILexicalBlock(scope: !1688, file: !1109, line: 211, column: 20)
!1692 = !DILocation(line: 213, column: 4, scope: !1693, inlinedAt: !1577)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !1109, line: 212, column: 24)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !1109, line: 212, column: 11)
!1695 = !DILocation(line: 214, column: 9, scope: !1693, inlinedAt: !1577)
!1696 = !DILocation(line: 214, column: 6, scope: !1693, inlinedAt: !1577)
!1697 = !DILocation(line: 215, column: 7, scope: !1693, inlinedAt: !1577)
!1698 = !DILocation(line: 217, column: 11, scope: !1699, inlinedAt: !1577)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !1109, line: 216, column: 12)
!1700 = !DILocation(line: 218, column: 8, scope: !1699, inlinedAt: !1577)
!1701 = !DILocation(line: 219, column: 13, scope: !1702, inlinedAt: !1577)
!1702 = distinct !DILexicalBlock(scope: !1703, file: !1109, line: 218, column: 14)
!1703 = distinct !DILexicalBlock(scope: !1699, file: !1109, line: 218, column: 8)
!1704 = !DILocation(line: 220, column: 11, scope: !1702, inlinedAt: !1577)
!1705 = !DILocation(line: 220, column: 19, scope: !1702, inlinedAt: !1577)
!1706 = !DILocation(line: 220, column: 5, scope: !1702, inlinedAt: !1577)
!1707 = !DILocation(line: 0, scope: !1702, inlinedAt: !1577)
!1708 = !DILocation(line: 222, column: 12, scope: !1709, inlinedAt: !1577)
!1709 = distinct !DILexicalBlock(scope: !1702, file: !1109, line: 222, column: 12)
!1710 = !DILocation(line: 222, column: 19, scope: !1709, inlinedAt: !1577)
!1711 = !DILocation(line: 222, column: 12, scope: !1702, inlinedAt: !1577)
!1712 = distinct !{!1712, !1682, !1713, !1210, !1211}
!1713 = !DILocation(line: 248, column: 6, scope: !1565, inlinedAt: !1577)
!1714 = !DILocation(line: 223, column: 9, scope: !1715, inlinedAt: !1577)
!1715 = distinct !DILexicalBlock(scope: !1709, file: !1109, line: 222, column: 27)
!1716 = !DILocation(line: 225, column: 8, scope: !1715, inlinedAt: !1577)
!1717 = !DILocation(line: 231, column: 18, scope: !1718, inlinedAt: !1577)
!1718 = distinct !DILexicalBlock(scope: !1688, file: !1109, line: 231, column: 12)
!1719 = !DILocation(line: 231, column: 29, scope: !1718, inlinedAt: !1577)
!1720 = !DILocation(line: 231, column: 12, scope: !1688, inlinedAt: !1577)
!1721 = !DILocation(line: 232, column: 14, scope: !1722, inlinedAt: !1577)
!1722 = distinct !DILexicalBlock(scope: !1718, file: !1109, line: 231, column: 35)
!1723 = !DILocation(line: 233, column: 11, scope: !1724, inlinedAt: !1577)
!1724 = distinct !DILexicalBlock(scope: !1722, file: !1109, line: 233, column: 11)
!1725 = !DILocation(line: 233, column: 18, scope: !1724, inlinedAt: !1577)
!1726 = !DILocation(line: 233, column: 11, scope: !1722, inlinedAt: !1577)
!1727 = distinct !{!1727, !1682, !1713, !1210, !1211}
!1728 = !DILocation(line: 234, column: 15, scope: !1729, inlinedAt: !1577)
!1729 = distinct !DILexicalBlock(scope: !1724, file: !1109, line: 233, column: 26)
!1730 = !DILocation(line: 236, column: 7, scope: !1729, inlinedAt: !1577)
!1731 = !DILocation(line: 240, column: 12, scope: !1718, inlinedAt: !1577)
!1732 = !DILocation(line: 241, column: 7, scope: !1733, inlinedAt: !1577)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !1109, line: 240, column: 22)
!1734 = distinct !DILexicalBlock(scope: !1718, file: !1109, line: 240, column: 12)
!1735 = !DILocation(line: 242, column: 12, scope: !1733, inlinedAt: !1577)
!1736 = !DILocation(line: 242, column: 9, scope: !1733, inlinedAt: !1577)
!1737 = !DILocation(line: 243, column: 3, scope: !1733, inlinedAt: !1577)
!1738 = !DILocation(line: 245, column: 14, scope: !1739, inlinedAt: !1577)
!1739 = distinct !DILexicalBlock(scope: !1734, file: !1109, line: 244, column: 12)
!1740 = !DILocation(line: 245, column: 7, scope: !1739, inlinedAt: !1577)
!1741 = !DILocation(line: 0, scope: !1688, inlinedAt: !1577)
!1742 = !DILocation(line: 205, column: 15, scope: !1565, inlinedAt: !1577)
!1743 = !DILocation(line: 252, column: 3, scope: !1572, inlinedAt: !1577)
!1744 = !DILocation(line: 253, column: 19, scope: !1572, inlinedAt: !1577)
!1745 = !DILocation(line: 0, scope: !1572, inlinedAt: !1577)
!1746 = !DILocation(line: 256, column: 12, scope: !1747, inlinedAt: !1577)
!1747 = distinct !DILexicalBlock(scope: !1572, file: !1109, line: 256, column: 7)
!1748 = !DILocation(line: 256, column: 7, scope: !1572, inlinedAt: !1577)
!1749 = !DILocation(line: 257, column: 11, scope: !1750, inlinedAt: !1577)
!1750 = distinct !DILexicalBlock(scope: !1747, file: !1109, line: 256, column: 20)
!1751 = !DILocation(line: 258, column: 4, scope: !1752, inlinedAt: !1577)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !1109, line: 257, column: 24)
!1753 = distinct !DILexicalBlock(scope: !1750, file: !1109, line: 257, column: 11)
!1754 = !DILocation(line: 259, column: 9, scope: !1752, inlinedAt: !1577)
!1755 = !DILocation(line: 259, column: 6, scope: !1752, inlinedAt: !1577)
!1756 = !DILocation(line: 260, column: 7, scope: !1752, inlinedAt: !1577)
!1757 = !DILocation(line: 262, column: 11, scope: !1758, inlinedAt: !1577)
!1758 = distinct !DILexicalBlock(scope: !1753, file: !1109, line: 261, column: 12)
!1759 = !DILocation(line: 263, column: 8, scope: !1758, inlinedAt: !1577)
!1760 = !DILocation(line: 264, column: 17, scope: !1761, inlinedAt: !1577)
!1761 = distinct !DILexicalBlock(scope: !1762, file: !1109, line: 264, column: 12)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !1109, line: 263, column: 14)
!1763 = distinct !DILexicalBlock(scope: !1758, file: !1109, line: 263, column: 8)
!1764 = !DILocation(line: 264, column: 25, scope: !1761, inlinedAt: !1577)
!1765 = !DILocation(line: 264, column: 12, scope: !1762, inlinedAt: !1577)
!1766 = !DILocation(line: 265, column: 9, scope: !1761, inlinedAt: !1577)
!1767 = !DILocation(line: 265, column: 5, scope: !1761, inlinedAt: !1577)
!1768 = !DILocation(line: 267, column: 9, scope: !1761, inlinedAt: !1577)
!1769 = !DILocation(line: 271, column: 18, scope: !1770, inlinedAt: !1577)
!1770 = distinct !DILexicalBlock(scope: !1747, file: !1109, line: 271, column: 12)
!1771 = !DILocation(line: 271, column: 29, scope: !1770, inlinedAt: !1577)
!1772 = !DILocation(line: 271, column: 12, scope: !1747, inlinedAt: !1577)
!1773 = !DILocation(line: 272, column: 11, scope: !1774, inlinedAt: !1577)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !1109, line: 271, column: 35)
!1775 = !DILocation(line: 273, column: 14, scope: !1774, inlinedAt: !1577)
!1776 = !DILocation(line: 274, column: 3, scope: !1774, inlinedAt: !1577)
!1777 = !DILocation(line: 275, column: 12, scope: !1770, inlinedAt: !1577)
!1778 = !DILocation(line: 276, column: 7, scope: !1779, inlinedAt: !1577)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !1109, line: 275, column: 22)
!1780 = distinct !DILexicalBlock(scope: !1770, file: !1109, line: 275, column: 12)
!1781 = !DILocation(line: 277, column: 12, scope: !1779, inlinedAt: !1577)
!1782 = !DILocation(line: 277, column: 9, scope: !1779, inlinedAt: !1577)
!1783 = !DILocation(line: 278, column: 3, scope: !1779, inlinedAt: !1577)
!1784 = !DILocation(line: 280, column: 14, scope: !1785, inlinedAt: !1577)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !1109, line: 279, column: 12)
!1786 = !DILocation(line: 280, column: 7, scope: !1785, inlinedAt: !1577)
!1787 = !DILocation(line: 281, column: 8, scope: !1572, inlinedAt: !1577)
!1788 = !DILocation(line: 281, column: 5, scope: !1572, inlinedAt: !1577)
!1789 = !DILocation(line: 282, column: 6, scope: !1573, inlinedAt: !1577)
!1790 = !DILocation(line: 251, column: 15, scope: !1573, inlinedAt: !1577)
!1791 = distinct !{!1791, !1683, !1789, !1210, !1211}
!1792 = !DILocation(line: 284, column: 6, scope: !1558, inlinedAt: !1577)
!1793 = !DILocation(line: 285, column: 6, scope: !1794, inlinedAt: !1577)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !1109, line: 284, column: 13)
!1795 = distinct !DILexicalBlock(scope: !1558, file: !1109, line: 284, column: 6)
!1796 = !DILocation(line: 286, column: 6, scope: !1794, inlinedAt: !1577)
!1797 = !DILocation(line: 287, column: 2, scope: !1794, inlinedAt: !1577)
!1798 = !DILocation(line: 289, column: 9, scope: !1799, inlinedAt: !1577)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !1109, line: 288, column: 7)
!1800 = !DILocation(line: 290, column: 6, scope: !1801, inlinedAt: !1577)
!1801 = distinct !DILexicalBlock(scope: !1799, file: !1109, line: 290, column: 6)
!1802 = !DILocation(line: 292, column: 2, scope: !1558, inlinedAt: !1577)
!1803 = !DILocation(line: 294, column: 5, scope: !1660, inlinedAt: !1577)
!1804 = !DILocation(line: 296, column: 1, scope: !1537, inlinedAt: !1577)
!1805 = !DILocation(line: 649, column: 16, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1281, file: !1109, line: 648, column: 12)
!1807 = !DILocalVariable(name: "sv", arg: 1, scope: !1808, file: !1109, line: 299, type: !831)
!1808 = distinct !DISubprogram(name: "S_do_trans_simple_utf8", scope: !1109, file: !1109, line: 299, type: !1145, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1809)
!1809 = !{!1807, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1829, !1830, !1832, !1834, !1838, !1841}
!1810 = !DILocalVariable(name: "s", scope: !1808, file: !1109, line: 301, type: !1055)
!1811 = !DILocalVariable(name: "send", scope: !1808, file: !1109, line: 302, type: !1055)
!1812 = !DILocalVariable(name: "d", scope: !1808, file: !1109, line: 303, type: !1055)
!1813 = !DILocalVariable(name: "start", scope: !1808, file: !1109, line: 304, type: !1055)
!1814 = !DILocalVariable(name: "dstart", scope: !1808, file: !1109, line: 305, type: !1055)
!1815 = !DILocalVariable(name: "dend", scope: !1808, file: !1109, line: 305, type: !1055)
!1816 = !DILocalVariable(name: "matches", scope: !1808, file: !1109, line: 306, type: !545)
!1817 = !DILocalVariable(name: "grows", scope: !1808, file: !1109, line: 307, type: !865)
!1818 = !DILocalVariable(name: "len", scope: !1808, file: !1109, line: 308, type: !496)
!1819 = !DILocalVariable(name: "rv", scope: !1808, file: !1109, line: 309, type: !831)
!1820 = !DILocalVariable(name: "hv", scope: !1808, file: !1109, line: 315, type: !1155)
!1821 = !DILocalVariable(name: "svp", scope: !1808, file: !1109, line: 316, type: !1158)
!1822 = !DILocalVariable(name: "none", scope: !1808, file: !1109, line: 317, type: !1160)
!1823 = !DILocalVariable(name: "extra", scope: !1808, file: !1109, line: 318, type: !1160)
!1824 = !DILocalVariable(name: "final", scope: !1808, file: !1109, line: 319, type: !482)
!1825 = !DILocalVariable(name: "hibit", scope: !1808, file: !1109, line: 320, type: !655)
!1826 = !DILocalVariable(name: "t", scope: !1827, file: !1109, line: 326, type: !1078)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !1109, line: 325, column: 22)
!1828 = distinct !DILexicalBlock(scope: !1808, file: !1109, line: 325, column: 9)
!1829 = !DILocalVariable(name: "e", scope: !1827, file: !1109, line: 327, type: !1167)
!1830 = !DILocalVariable(name: "ch", scope: !1831, file: !1109, line: 329, type: !1079)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !1109, line: 328, column: 16)
!1832 = !DILocalVariable(name: "uv", scope: !1833, file: !1109, line: 356, type: !1160)
!1833 = distinct !DILexicalBlock(scope: !1808, file: !1109, line: 355, column: 22)
!1834 = !DILocalVariable(name: "i", scope: !1835, file: !1109, line: 363, type: !1328)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !1109, line: 362, column: 23)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !1109, line: 362, column: 11)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !1109, line: 357, column: 6)
!1838 = !DILocalVariable(name: "clen", scope: !1839, file: !1109, line: 377, type: !1322)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !1109, line: 376, column: 16)
!1840 = distinct !DILexicalBlock(scope: !1833, file: !1109, line: 376, column: 6)
!1841 = !DILocalVariable(name: "nlen", scope: !1839, file: !1109, line: 378, type: !1322)
!1842 = !DILocation(line: 0, scope: !1808, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 649, column: 25, scope: !1806)
!1844 = !DILocation(line: 307, column: 23, scope: !1808, inlinedAt: !1843)
!1845 = !DILocation(line: 307, column: 30, scope: !1808, inlinedAt: !1843)
!1846 = !DILocation(line: 307, column: 41, scope: !1808, inlinedAt: !1843)
!1847 = !DILocation(line: 308, column: 5, scope: !1808, inlinedAt: !1843)
!1848 = !DILocation(line: 313, column: 7, scope: !1808, inlinedAt: !1843)
!1849 = !DILocation(line: 315, column: 21, scope: !1808, inlinedAt: !1843)
!1850 = !DILocation(line: 316, column: 23, scope: !1808, inlinedAt: !1843)
!1851 = !DILocation(line: 317, column: 21, scope: !1808, inlinedAt: !1843)
!1852 = !DILocation(line: 317, column: 27, scope: !1808, inlinedAt: !1843)
!1853 = !DILocation(line: 318, column: 27, scope: !1808, inlinedAt: !1843)
!1854 = !DILocation(line: 324, column: 14, scope: !1808, inlinedAt: !1843)
!1855 = !DILocation(line: 325, column: 10, scope: !1828, inlinedAt: !1843)
!1856 = !DILocation(line: 325, column: 9, scope: !1808, inlinedAt: !1843)
!1857 = !DILocation(line: 0, scope: !1827, inlinedAt: !1843)
!1858 = !DILocation(line: 327, column: 27, scope: !1827, inlinedAt: !1843)
!1859 = !DILocation(line: 327, column: 25, scope: !1827, inlinedAt: !1843)
!1860 = !DILocation(line: 328, column: 11, scope: !1827, inlinedAt: !1843)
!1861 = !DILocation(line: 328, column: 2, scope: !1827, inlinedAt: !1843)
!1862 = !DILocation(line: 329, column: 22, scope: !1831, inlinedAt: !1843)
!1863 = !DILocation(line: 329, column: 20, scope: !1831, inlinedAt: !1843)
!1864 = !DILocation(line: 0, scope: !1831, inlinedAt: !1843)
!1865 = !DILocation(line: 331, column: 10, scope: !1866, inlinedAt: !1843)
!1866 = distinct !DILexicalBlock(scope: !1831, file: !1109, line: 331, column: 10)
!1867 = !DILocation(line: 331, column: 10, scope: !1831, inlinedAt: !1843)
!1868 = !DILocation(line: 332, column: 7, scope: !1869, inlinedAt: !1843)
!1869 = distinct !DILexicalBlock(scope: !1866, file: !1109, line: 331, column: 17)
!1870 = !DILocation(line: 337, column: 16, scope: !1808, inlinedAt: !1843)
!1871 = !DILocation(line: 337, column: 14, scope: !1808, inlinedAt: !1843)
!1872 = !DILocation(line: 340, column: 11, scope: !1808, inlinedAt: !1843)
!1873 = !DILocation(line: 341, column: 9, scope: !1874, inlinedAt: !1843)
!1874 = distinct !DILexicalBlock(scope: !1808, file: !1109, line: 341, column: 9)
!1875 = !DILocation(line: 341, column: 9, scope: !1808, inlinedAt: !1843)
!1876 = !DILocation(line: 342, column: 10, scope: !1874, inlinedAt: !1843)
!1877 = !DILocation(line: 344, column: 9, scope: !1878, inlinedAt: !1843)
!1878 = distinct !DILexicalBlock(scope: !1808, file: !1109, line: 344, column: 9)
!1879 = !DILocation(line: 0, scope: !1878, inlinedAt: !1843)
!1880 = !DILocation(line: 344, column: 9, scope: !1808, inlinedAt: !1843)
!1881 = !DILocation(line: 346, column: 2, scope: !1882, inlinedAt: !1843)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !1109, line: 344, column: 16)
!1883 = !DILocation(line: 347, column: 13, scope: !1882, inlinedAt: !1843)
!1884 = !DILocation(line: 347, column: 17, scope: !1882, inlinedAt: !1843)
!1885 = !DILocation(line: 347, column: 11, scope: !1882, inlinedAt: !1843)
!1886 = !DILocation(line: 349, column: 5, scope: !1882, inlinedAt: !1843)
!1887 = !DILocation(line: 352, column: 11, scope: !1888, inlinedAt: !1843)
!1888 = distinct !DILexicalBlock(scope: !1878, file: !1109, line: 350, column: 10)
!1889 = !DILocation(line: 355, column: 14, scope: !1808, inlinedAt: !1843)
!1890 = !DILocation(line: 355, column: 5, scope: !1808, inlinedAt: !1843)
!1891 = !DILocation(line: 356, column: 16, scope: !1833, inlinedAt: !1843)
!1892 = !DILocation(line: 0, scope: !1833, inlinedAt: !1843)
!1893 = !DILocation(line: 357, column: 9, scope: !1837, inlinedAt: !1843)
!1894 = !DILocation(line: 357, column: 6, scope: !1833, inlinedAt: !1843)
!1895 = !DILocation(line: 358, column: 11, scope: !1896, inlinedAt: !1843)
!1896 = distinct !DILexicalBlock(scope: !1837, file: !1109, line: 357, column: 17)
!1897 = !DILocation(line: 358, column: 8, scope: !1896, inlinedAt: !1843)
!1898 = !DILocation(line: 359, column: 13, scope: !1896, inlinedAt: !1843)
!1899 = !DILocation(line: 360, column: 10, scope: !1896, inlinedAt: !1843)
!1900 = !DILocation(line: 361, column: 2, scope: !1896, inlinedAt: !1843)
!1901 = !DILocation(line: 362, column: 14, scope: !1836, inlinedAt: !1843)
!1902 = !DILocation(line: 362, column: 11, scope: !1837, inlinedAt: !1843)
!1903 = !DILocation(line: 363, column: 20, scope: !1835, inlinedAt: !1843)
!1904 = !DILocation(line: 0, scope: !1835, inlinedAt: !1843)
!1905 = !DILocation(line: 364, column: 6, scope: !1835, inlinedAt: !1843)
!1906 = !DILocation(line: 365, column: 8, scope: !1835, inlinedAt: !1843)
!1907 = !DILocation(line: 366, column: 8, scope: !1835, inlinedAt: !1843)
!1908 = !DILocation(line: 367, column: 2, scope: !1835, inlinedAt: !1843)
!1909 = !DILocation(line: 368, column: 14, scope: !1910, inlinedAt: !1843)
!1910 = distinct !DILexicalBlock(scope: !1836, file: !1109, line: 368, column: 11)
!1911 = !DILocation(line: 0, scope: !1910, inlinedAt: !1843)
!1912 = !DILocation(line: 368, column: 11, scope: !1836, inlinedAt: !1843)
!1913 = !DILocation(line: 370, column: 13, scope: !1914, inlinedAt: !1843)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !1109, line: 368, column: 24)
!1915 = !DILocation(line: 371, column: 10, scope: !1914, inlinedAt: !1843)
!1916 = !DILocation(line: 372, column: 2, scope: !1914, inlinedAt: !1843)
!1917 = !DILocation(line: 0, scope: !1837, inlinedAt: !1843)
!1918 = !DILocation(line: 376, column: 8, scope: !1840, inlinedAt: !1843)
!1919 = !DILocation(line: 376, column: 6, scope: !1833, inlinedAt: !1843)
!1920 = !DILocation(line: 377, column: 28, scope: !1839, inlinedAt: !1843)
!1921 = !DILocation(line: 0, scope: !1839, inlinedAt: !1843)
!1922 = !DILocation(line: 378, column: 31, scope: !1839, inlinedAt: !1843)
!1923 = !DILocation(line: 378, column: 42, scope: !1839, inlinedAt: !1843)
!1924 = !DILocation(line: 378, column: 40, scope: !1839, inlinedAt: !1843)
!1925 = !DILocation(line: 378, column: 46, scope: !1839, inlinedAt: !1843)
!1926 = !DILocation(line: 379, column: 10, scope: !1839, inlinedAt: !1843)
!1927 = !DILocation(line: 380, column: 3, scope: !1928, inlinedAt: !1843)
!1928 = distinct !DILexicalBlock(scope: !1839, file: !1109, line: 379, column: 10)
!1929 = !DILocation(line: 381, column: 6, scope: !1839, inlinedAt: !1843)
!1930 = !DILocation(line: 382, column: 17, scope: !1839, inlinedAt: !1843)
!1931 = !DILocation(line: 383, column: 20, scope: !1839, inlinedAt: !1843)
!1932 = !DILocation(line: 384, column: 2, scope: !1839, inlinedAt: !1843)
!1933 = distinct !{!1933, !1890, !1934, !1210, !1211}
!1934 = !DILocation(line: 385, column: 5, scope: !1808, inlinedAt: !1843)
!1935 = !DILocation(line: 386, column: 15, scope: !1936, inlinedAt: !1843)
!1936 = distinct !DILexicalBlock(scope: !1808, file: !1109, line: 386, column: 9)
!1937 = !DILocation(line: 387, column: 2, scope: !1938, inlinedAt: !1843)
!1938 = distinct !DILexicalBlock(scope: !1936, file: !1109, line: 386, column: 25)
!1939 = !DILocation(line: 388, column: 2, scope: !1938, inlinedAt: !1843)
!1940 = !DILocation(line: 389, column: 12, scope: !1941, inlinedAt: !1843)
!1941 = distinct !DILexicalBlock(scope: !1938, file: !1109, line: 389, column: 6)
!1942 = !DILocation(line: 390, column: 6, scope: !1941, inlinedAt: !1843)
!1943 = !DILocation(line: 393, column: 5, scope: !1944, inlinedAt: !1843)
!1944 = distinct !DILexicalBlock(scope: !1936, file: !1109, line: 392, column: 10)
!1945 = !DILocation(line: 394, column: 2, scope: !1946, inlinedAt: !1843)
!1946 = distinct !DILexicalBlock(scope: !1944, file: !1109, line: 394, column: 2)
!1947 = !DILocation(line: 396, column: 5, scope: !1948, inlinedAt: !1843)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !1109, line: 396, column: 5)
!1949 = distinct !DILexicalBlock(scope: !1808, file: !1109, line: 396, column: 5)
!1950 = !DILocation(line: 396, column: 5, scope: !1949, inlinedAt: !1843)
!1951 = !DILocation(line: 397, column: 5, scope: !1808, inlinedAt: !1843)
!1952 = !DILocation(line: 400, column: 1, scope: !1808, inlinedAt: !1843)
!1953 = !DILocalVariable(name: "sv", arg: 1, scope: !1954, file: !1109, line: 31, type: !831)
!1954 = distinct !DISubprogram(name: "S_do_trans_simple", scope: !1109, file: !1109, line: 31, type: !1145, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1955)
!1955 = !{!1953, !1956, !1957, !1958, !1959, !1960, !1961, !1965, !1967, !1968, !1969, !1971, !1972}
!1956 = !DILocalVariable(name: "matches", scope: !1954, file: !1109, line: 33, type: !545)
!1957 = !DILocalVariable(name: "len", scope: !1954, file: !1109, line: 34, type: !496)
!1958 = !DILocalVariable(name: "s", scope: !1954, file: !1109, line: 35, type: !1055)
!1959 = !DILocalVariable(name: "send", scope: !1954, file: !1109, line: 36, type: !1542)
!1960 = !DILocalVariable(name: "tbl", scope: !1954, file: !1109, line: 37, type: !1224)
!1961 = !DILocalVariable(name: "ch", scope: !1962, file: !1109, line: 47, type: !865)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !1109, line: 46, column: 19)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !1109, line: 45, column: 22)
!1964 = distinct !DILexicalBlock(scope: !1954, file: !1109, line: 45, column: 9)
!1965 = !DILocalVariable(name: "grows", scope: !1966, file: !1109, line: 57, type: !865)
!1966 = distinct !DILexicalBlock(scope: !1964, file: !1109, line: 56, column: 10)
!1967 = !DILocalVariable(name: "d", scope: !1966, file: !1109, line: 58, type: !1055)
!1968 = !DILocalVariable(name: "dstart", scope: !1966, file: !1109, line: 59, type: !1055)
!1969 = !DILocalVariable(name: "ulen", scope: !1970, file: !1109, line: 68, type: !496)
!1970 = distinct !DILexicalBlock(scope: !1966, file: !1109, line: 67, column: 19)
!1971 = !DILocalVariable(name: "ch", scope: !1970, file: !1109, line: 69, type: !545)
!1972 = !DILocalVariable(name: "c", scope: !1970, file: !1109, line: 72, type: !1160)
!1973 = !DILocation(line: 0, scope: !1954, inlinedAt: !1974)
!1974 = distinct !DILocation(line: 649, column: 52, scope: !1806)
!1975 = !DILocation(line: 34, column: 5, scope: !1954, inlinedAt: !1974)
!1976 = !DILocation(line: 35, column: 18, scope: !1954, inlinedAt: !1974)
!1977 = !DILocation(line: 36, column: 25, scope: !1954, inlinedAt: !1974)
!1978 = !DILocation(line: 36, column: 24, scope: !1954, inlinedAt: !1974)
!1979 = !DILocation(line: 37, column: 39, scope: !1954, inlinedAt: !1974)
!1980 = !DILocation(line: 37, column: 46, scope: !1954, inlinedAt: !1974)
!1981 = !DILocation(line: 41, column: 10, scope: !1982, inlinedAt: !1974)
!1982 = distinct !DILexicalBlock(scope: !1954, file: !1109, line: 41, column: 9)
!1983 = !DILocation(line: 41, column: 9, scope: !1954, inlinedAt: !1974)
!1984 = !DILocation(line: 42, column: 2, scope: !1982, inlinedAt: !1974)
!1985 = !DILocation(line: 45, column: 10, scope: !1964, inlinedAt: !1974)
!1986 = !DILocation(line: 45, column: 9, scope: !1954, inlinedAt: !1974)
!1987 = !DILocation(line: 46, column: 11, scope: !1963, inlinedAt: !1974)
!1988 = !DILocation(line: 46, column: 2, scope: !1963, inlinedAt: !1974)
!1989 = !DILocation(line: 47, column: 25, scope: !1962, inlinedAt: !1974)
!1990 = !DILocation(line: 47, column: 21, scope: !1962, inlinedAt: !1974)
!1991 = !DILocation(line: 0, scope: !1962, inlinedAt: !1974)
!1992 = !DILocation(line: 48, column: 13, scope: !1993, inlinedAt: !1974)
!1993 = distinct !DILexicalBlock(scope: !1962, file: !1109, line: 48, column: 10)
!1994 = !DILocation(line: 48, column: 10, scope: !1962, inlinedAt: !1974)
!1995 = !DILocation(line: 49, column: 10, scope: !1996, inlinedAt: !1974)
!1996 = distinct !DILexicalBlock(scope: !1993, file: !1109, line: 48, column: 19)
!1997 = !DILocation(line: 50, column: 8, scope: !1996, inlinedAt: !1974)
!1998 = !DILocation(line: 50, column: 6, scope: !1996, inlinedAt: !1974)
!1999 = !DILocation(line: 51, column: 6, scope: !1996, inlinedAt: !1974)
!2000 = !DILocation(line: 52, column: 7, scope: !1962, inlinedAt: !1974)
!2001 = distinct !{!2001, !1988, !2002, !1210, !1211}
!2002 = !DILocation(line: 53, column: 2, scope: !1963, inlinedAt: !1974)
!2003 = !DILocation(line: 54, column: 2, scope: !2004, inlinedAt: !1974)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !1109, line: 54, column: 2)
!2005 = distinct !DILexicalBlock(scope: !1963, file: !1109, line: 54, column: 2)
!2006 = !DILocation(line: 54, column: 2, scope: !2005, inlinedAt: !1974)
!2007 = !DILocation(line: 57, column: 20, scope: !1966, inlinedAt: !1974)
!2008 = !DILocation(line: 57, column: 27, scope: !1966, inlinedAt: !1974)
!2009 = !DILocation(line: 57, column: 38, scope: !1966, inlinedAt: !1974)
!2010 = !DILocation(line: 0, scope: !1966, inlinedAt: !1974)
!2011 = !DILocation(line: 62, column: 6, scope: !2012, inlinedAt: !1974)
!2012 = distinct !DILexicalBlock(scope: !1966, file: !1109, line: 62, column: 6)
!2013 = !DILocation(line: 62, column: 6, scope: !1966, inlinedAt: !1974)
!2014 = !DILocation(line: 63, column: 6, scope: !2012, inlinedAt: !1974)
!2015 = !DILocation(line: 0, scope: !2012, inlinedAt: !1974)
!2016 = !DILocation(line: 67, column: 11, scope: !1966, inlinedAt: !1974)
!2017 = !DILocation(line: 67, column: 2, scope: !1966, inlinedAt: !1974)
!2018 = !DILocation(line: 68, column: 6, scope: !1970, inlinedAt: !1974)
!2019 = !DILocation(line: 72, column: 19, scope: !1970, inlinedAt: !1974)
!2020 = !DILocation(line: 0, scope: !1970, inlinedAt: !1974)
!2021 = !DILocation(line: 73, column: 12, scope: !2022, inlinedAt: !1974)
!2022 = distinct !DILexicalBlock(scope: !1970, file: !1109, line: 73, column: 10)
!2023 = !DILocation(line: 73, column: 20, scope: !2022, inlinedAt: !1974)
!2024 = !DILocation(line: 73, column: 29, scope: !2022, inlinedAt: !1974)
!2025 = !DILocation(line: 73, column: 37, scope: !2022, inlinedAt: !1974)
!2026 = !DILocation(line: 73, column: 10, scope: !1970, inlinedAt: !1974)
!2027 = !DILocation(line: 74, column: 10, scope: !2028, inlinedAt: !1974)
!2028 = distinct !DILexicalBlock(scope: !2022, file: !1109, line: 73, column: 43)
!2029 = !DILocation(line: 75, column: 7, scope: !2028, inlinedAt: !1974)
!2030 = !DILocation(line: 76, column: 8, scope: !2028, inlinedAt: !1974)
!2031 = !DILocation(line: 77, column: 6, scope: !2028, inlinedAt: !1974)
!2032 = !DILocation(line: 79, column: 3, scope: !2033, inlinedAt: !1974)
!2033 = distinct !DILexicalBlock(scope: !2022, file: !1109, line: 78, column: 11)
!2034 = !DILocation(line: 80, column: 8, scope: !2033, inlinedAt: !1974)
!2035 = !DILocation(line: 80, column: 5, scope: !2033, inlinedAt: !1974)
!2036 = !DILocation(line: 0, scope: !2022, inlinedAt: !1974)
!2037 = !DILocation(line: 83, column: 2, scope: !1966, inlinedAt: !1974)
!2038 = distinct !{!2038, !2017, !2037, !1210, !1211}
!2039 = !DILocation(line: 84, column: 6, scope: !1966, inlinedAt: !1974)
!2040 = !DILocation(line: 85, column: 6, scope: !2041, inlinedAt: !1974)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !1109, line: 84, column: 13)
!2042 = distinct !DILexicalBlock(scope: !1966, file: !1109, line: 84, column: 6)
!2043 = !DILocation(line: 86, column: 6, scope: !2041, inlinedAt: !1974)
!2044 = !DILocation(line: 87, column: 2, scope: !2041, inlinedAt: !1974)
!2045 = !DILocation(line: 89, column: 9, scope: !2046, inlinedAt: !1974)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !1109, line: 88, column: 7)
!2047 = !DILocation(line: 90, column: 6, scope: !2048, inlinedAt: !1974)
!2048 = distinct !DILexicalBlock(scope: !2046, file: !1109, line: 90, column: 6)
!2049 = !DILocation(line: 92, column: 2, scope: !1966, inlinedAt: !1974)
!2050 = !DILocation(line: 93, column: 2, scope: !2051, inlinedAt: !1974)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !1109, line: 93, column: 2)
!2052 = distinct !DILexicalBlock(scope: !1966, file: !1109, line: 93, column: 2)
!2053 = !DILocation(line: 93, column: 2, scope: !2052, inlinedAt: !1974)
!2054 = !DILocation(line: 0, scope: !1964, inlinedAt: !1974)
!2055 = !DILocation(line: 96, column: 1, scope: !1954, inlinedAt: !1974)
!2056 = !DILocation(line: 33, column: 9, scope: !1954, inlinedAt: !1974)
!2057 = !DILocation(line: 651, column: 1, scope: !1108)
!2058 = !DISubprogram(name: "Perl_croak_no_modify", scope: !2059, file: !2059, line: 751, type: !2060, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2059 = !DIFile(filename: "apps/500.perlbench_r/src/proto.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "86c1c4cb1b6333bdae0149184d61a8ce")
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null}
!2062 = !{}
!2063 = !DISubprogram(name: "Perl_sv_2pv_flags", scope: !2059, file: !2059, line: 4130, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!476, !831, !2066, !865}
!2066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2067)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!2068 = !DISubprogram(name: "Perl_sv_pvn_force_flags", scope: !2059, file: !2059, line: 4520, type: !2064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2069 = distinct !DISubprogram(name: "Perl_do_join", scope: !1109, file: !1109, line: 654, type: !2070, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2072)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{null, !462, !462, !530, !530}
!2072 = !{!2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2088, !2091, !2095, !2096, !2101}
!2073 = !DILocalVariable(name: "sv", arg: 1, scope: !2069, file: !1109, line: 654, type: !462)
!2074 = !DILocalVariable(name: "delim", arg: 2, scope: !2069, file: !1109, line: 654, type: !462)
!2075 = !DILocalVariable(name: "mark", arg: 3, scope: !2069, file: !1109, line: 654, type: !530)
!2076 = !DILocalVariable(name: "sp", arg: 4, scope: !2069, file: !1109, line: 654, type: !530)
!2077 = !DILocalVariable(name: "oldmark", scope: !2069, file: !1109, line: 656, type: !890)
!2078 = !DILocalVariable(name: "items", scope: !2069, file: !1109, line: 657, type: !545)
!2079 = !DILocalVariable(name: "len", scope: !2069, file: !1109, line: 658, type: !496)
!2080 = !DILocalVariable(name: "delimlen", scope: !2069, file: !1109, line: 659, type: !496)
!2081 = !DILocalVariable(name: "delims", scope: !2069, file: !1109, line: 660, type: !841)
!2082 = !DILocalVariable(name: "tmplen", scope: !2083, file: !1109, line: 670, type: !496)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !1109, line: 669, column: 53)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !1109, line: 669, column: 10)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !1109, line: 668, column: 22)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !1109, line: 667, column: 34)
!2087 = distinct !DILexicalBlock(scope: !2069, file: !1109, line: 667, column: 9)
!2088 = !DILocalVariable(name: "delimflag", scope: !2089, file: !1109, line: 697, type: !844)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !1109, line: 696, column: 19)
!2090 = distinct !DILexicalBlock(scope: !2069, file: !1109, line: 696, column: 9)
!2091 = !DILocalVariable(name: "len", scope: !2092, file: !1109, line: 699, type: !496)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !1109, line: 698, column: 36)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !1109, line: 698, column: 2)
!2094 = distinct !DILexicalBlock(scope: !2089, file: !1109, line: 698, column: 2)
!2095 = !DILocalVariable(name: "s", scope: !2092, file: !1109, line: 700, type: !842)
!2096 = !DILocalVariable(name: "len", scope: !2097, file: !1109, line: 710, type: !496)
!2097 = distinct !DILexicalBlock(scope: !2098, file: !1109, line: 709, column: 2)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !1109, line: 708, column: 2)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !1109, line: 708, column: 2)
!2100 = distinct !DILexicalBlock(scope: !2090, file: !1109, line: 707, column: 10)
!2101 = !DILocalVariable(name: "s", scope: !2097, file: !1109, line: 711, type: !842)
!2102 = !DILocation(line: 0, scope: !2069)
!2103 = !DILocation(line: 657, column: 20, scope: !2069)
!2104 = !DILocation(line: 657, column: 17, scope: !2069)
!2105 = !DILocation(line: 659, column: 5, scope: !2069)
!2106 = !DILocation(line: 660, column: 33, scope: !2069)
!2107 = !DILocation(line: 664, column: 9, scope: !2069)
!2108 = !DILocation(line: 665, column: 18, scope: !2069)
!2109 = !DILocation(line: 665, column: 12, scope: !2069)
!2110 = !DILocation(line: 665, column: 25, scope: !2069)
!2111 = !DILocation(line: 665, column: 43, scope: !2069)
!2112 = !DILocation(line: 665, column: 34, scope: !2069)
!2113 = !DILocation(line: 666, column: 5, scope: !2069)
!2114 = !DILocation(line: 667, column: 9, scope: !2087)
!2115 = !DILocation(line: 667, column: 27, scope: !2087)
!2116 = !DILocation(line: 667, column: 25, scope: !2087)
!2117 = !DILocation(line: 667, column: 19, scope: !2087)
!2118 = !DILocation(line: 667, column: 9, scope: !2069)
!2119 = !DILocation(line: 668, column: 2, scope: !2086)
!2120 = !DILocation(line: 668, column: 14, scope: !2086)
!2121 = !DILocation(line: 669, column: 10, scope: !2084)
!2122 = !DILocation(line: 669, column: 16, scope: !2084)
!2123 = !DILocation(line: 669, column: 20, scope: !2084)
!2124 = !DILocation(line: 669, column: 37, scope: !2084)
!2125 = !DILocation(line: 669, column: 40, scope: !2084)
!2126 = !DILocation(line: 670, column: 3, scope: !2083)
!2127 = !DILocation(line: 671, column: 3, scope: !2083)
!2128 = !DILocation(line: 0, scope: !2083)
!2129 = !DILocation(line: 672, column: 10, scope: !2083)
!2130 = !DILocation(line: 672, column: 7, scope: !2083)
!2131 = !DILocation(line: 673, column: 6, scope: !2084)
!2132 = !DILocation(line: 673, column: 6, scope: !2083)
!2133 = !DILocation(line: 674, column: 10, scope: !2085)
!2134 = !DILocation(line: 668, column: 17, scope: !2086)
!2135 = distinct !{!2135, !2119, !2136, !1210, !1211}
!2136 = !DILocation(line: 675, column: 2, scope: !2086)
!2137 = !DILocation(line: 665, column: 9, scope: !2069)
!2138 = !DILocation(line: 676, column: 2, scope: !2086)
!2139 = !DILocation(line: 683, column: 5, scope: !2069)
!2140 = !DILocation(line: 685, column: 5, scope: !2069)
!2141 = !DILocation(line: 687, column: 9, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2069, file: !1109, line: 687, column: 9)
!2143 = !{i8 0, i8 2}
!2144 = !DILocation(line: 687, column: 22, scope: !2142)
!2145 = !DILocation(line: 688, column: 2, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !1109, line: 688, column: 2)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !1109, line: 688, column: 2)
!2148 = distinct !DILexicalBlock(scope: !2142, file: !1109, line: 688, column: 2)
!2149 = !DILocation(line: 690, column: 14, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2069, file: !1109, line: 690, column: 9)
!2151 = !DILocation(line: 690, column: 9, scope: !2069)
!2152 = !DILocation(line: 691, column: 6, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !1109, line: 691, column: 6)
!2154 = distinct !DILexicalBlock(scope: !2150, file: !1109, line: 690, column: 22)
!2155 = !DILocation(line: 691, column: 6, scope: !2154)
!2156 = !DILocation(line: 692, column: 6, scope: !2153)
!2157 = !DILocation(line: 693, column: 6, scope: !2154)
!2158 = !DILocation(line: 694, column: 5, scope: !2154)
!2159 = !DILocation(line: 696, column: 9, scope: !2090)
!2160 = !DILocation(line: 696, column: 9, scope: !2069)
!2161 = !DILocation(line: 708, column: 15, scope: !2098)
!2162 = !DILocation(line: 708, column: 2, scope: !2099)
!2163 = !DILocation(line: 697, column: 24, scope: !2089)
!2164 = !DILocation(line: 0, scope: !2089)
!2165 = !DILocation(line: 698, column: 15, scope: !2093)
!2166 = !DILocation(line: 698, column: 2, scope: !2094)
!2167 = !DILocation(line: 701, column: 6, scope: !2092)
!2168 = !DILocation(line: 699, column: 6, scope: !2092)
!2169 = !DILocation(line: 702, column: 10, scope: !2092)
!2170 = !DILocation(line: 0, scope: !2092)
!2171 = !DILocation(line: 703, column: 6, scope: !2092)
!2172 = !DILocation(line: 705, column: 2, scope: !2093)
!2173 = distinct !{!2173, !2166, !2174, !1210, !1211}
!2174 = !DILocation(line: 705, column: 2, scope: !2094)
!2175 = !DILocation(line: 698, column: 32, scope: !2093)
!2176 = !DILocation(line: 698, column: 25, scope: !2093)
!2177 = !DILocation(line: 710, column: 6, scope: !2097)
!2178 = !DILocation(line: 711, column: 22, scope: !2097)
!2179 = !DILocation(line: 0, scope: !2097)
!2180 = !DILocation(line: 712, column: 6, scope: !2097)
!2181 = !DILocation(line: 714, column: 2, scope: !2098)
!2182 = !DILocation(line: 708, column: 25, scope: !2098)
!2183 = !DILocation(line: 708, column: 32, scope: !2098)
!2184 = distinct !{!2184, !2162, !2185, !1210, !1211}
!2185 = !DILocation(line: 714, column: 2, scope: !2099)
!2186 = !DILocation(line: 716, column: 5, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !1109, line: 716, column: 5)
!2188 = distinct !DILexicalBlock(scope: !2069, file: !1109, line: 716, column: 5)
!2189 = !DILocation(line: 716, column: 5, scope: !2188)
!2190 = !DILocation(line: 717, column: 1, scope: !2069)
!2191 = !DISubprogram(name: "Perl_sv_upgrade", scope: !2059, file: !2059, line: 4747, type: !2192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{null, !831, !1003}
!2194 = !DISubprogram(name: "Perl_sv_grow", scope: !2059, file: !2059, line: 4389, type: !2195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!476, !831, !496}
!2197 = !DISubprogram(name: "Perl_sv_setpvn", scope: !2059, file: !2059, line: 4641, type: !2198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !831, !841, !1322}
!2200 = !DISubprogram(name: "Perl_sv_untaint", scope: !2059, file: !2059, line: 4742, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !831}
!2203 = !DISubprogram(name: "Perl_sv_catsv_flags", scope: !2059, file: !2059, line: 4246, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !831, !831, !865}
!2206 = !DISubprogram(name: "Perl_sv_catpvn_flags", scope: !2059, file: !2059, line: 4229, type: !2207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{null, !831, !842, !1322, !865}
!2209 = !DISubprogram(name: "Perl_mg_set", scope: !2059, file: !2059, line: 2692, type: !2210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!461, !462}
!2212 = distinct !DISubprogram(name: "Perl_do_sprintf", scope: !1109, file: !1109, line: 720, type: !2213, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{null, !462, !545, !530}
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221}
!2216 = !DILocalVariable(name: "sv", arg: 1, scope: !2212, file: !1109, line: 720, type: !462)
!2217 = !DILocalVariable(name: "len", arg: 2, scope: !2212, file: !1109, line: 720, type: !545)
!2218 = !DILocalVariable(name: "sarg", arg: 3, scope: !2212, file: !1109, line: 720, type: !530)
!2219 = !DILocalVariable(name: "patlen", scope: !2212, file: !1109, line: 722, type: !496)
!2220 = !DILocalVariable(name: "pat", scope: !2212, file: !1109, line: 723, type: !841)
!2221 = !DILocalVariable(name: "do_taint", scope: !2212, file: !1109, line: 724, type: !731)
!2222 = !DILocation(line: 0, scope: !2212)
!2223 = !DILocation(line: 722, column: 5, scope: !2212)
!2224 = !DILocation(line: 723, column: 30, scope: !2212)
!2225 = !DILocation(line: 728, column: 9, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2212, file: !1109, line: 728, column: 9)
!2227 = !DILocation(line: 724, column: 5, scope: !2212)
!2228 = !DILocation(line: 724, column: 10, scope: !2212)
!2229 = !DILocation(line: 728, column: 9, scope: !2212)
!2230 = !DILocation(line: 729, column: 2, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !1109, line: 729, column: 2)
!2232 = distinct !DILexicalBlock(scope: !2226, file: !1109, line: 729, column: 2)
!2233 = !DILocation(line: 736, column: 5, scope: !2212)
!2234 = !DILocation(line: 737, column: 9, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2212, file: !1109, line: 737, column: 9)
!2236 = !DILocation(line: 737, column: 9, scope: !2212)
!2237 = !DILocation(line: 738, column: 9, scope: !2235)
!2238 = !DILocation(line: 739, column: 5, scope: !2212)
!2239 = !DILocation(line: 740, column: 5, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !1109, line: 740, column: 5)
!2241 = distinct !DILexicalBlock(scope: !2212, file: !1109, line: 740, column: 5)
!2242 = !DILocation(line: 740, column: 5, scope: !2241)
!2243 = !DILocation(line: 741, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2212, file: !1109, line: 741, column: 9)
!2245 = !DILocation(line: 741, column: 9, scope: !2212)
!2246 = !DILocation(line: 742, column: 2, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !1109, line: 742, column: 2)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !1109, line: 742, column: 2)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !1109, line: 742, column: 2)
!2250 = !DILocation(line: 743, column: 1, scope: !2212)
!2251 = !DISubprogram(name: "Perl_sv_tainted", scope: !2059, file: !2059, line: 4708, type: !2252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!731, !831}
!2254 = !DISubprogram(name: "Perl_taint_proper", scope: !2059, file: !2059, line: 4875, type: !2255, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !842, !841}
!2257 = !DISubprogram(name: "Perl_sv_vsetpvfn", scope: !2059, file: !2059, line: 4839, type: !2258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null, !831, !841, !1322, !2260, !890, !865, !2275}
!2260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2261)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2263, line: 52, baseType: !2264)
!2263 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2265, line: 32, baseType: !2266)
!2265 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stdarg.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2267, baseType: !2268)
!2267 = !DIFile(filename: "apps/500.perlbench_r/src/doop.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake")
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2269, size: 192, elements: !548)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2274}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2269, file: !2267, line: 739, baseType: !5, size: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2269, file: !2267, line: 739, baseType: !5, size: 32, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2269, file: !2267, line: 739, baseType: !467, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2269, file: !2267, line: 739, baseType: !467, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!2276 = !DISubprogram(name: "Perl_sv_magic", scope: !2059, file: !2059, line: 4426, type: !2277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{null, !831, !831, !1328, !841, !865}
!2279 = distinct !DISubprogram(name: "Perl_do_vecget", scope: !1109, file: !1109, line: 747, type: !2280, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!482, !462, !760, !461}
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292}
!2283 = !DILocalVariable(name: "sv", arg: 1, scope: !2279, file: !1109, line: 747, type: !462)
!2284 = !DILocalVariable(name: "offset", arg: 2, scope: !2279, file: !1109, line: 747, type: !760)
!2285 = !DILocalVariable(name: "size", arg: 3, scope: !2279, file: !1109, line: 747, type: !461)
!2286 = !DILocalVariable(name: "srclen", scope: !2279, file: !1109, line: 749, type: !496)
!2287 = !DILocalVariable(name: "len", scope: !2279, file: !1109, line: 749, type: !496)
!2288 = !DILocalVariable(name: "uoffset", scope: !2279, file: !1109, line: 749, type: !496)
!2289 = !DILocalVariable(name: "bitoffs", scope: !2279, file: !1109, line: 749, type: !496)
!2290 = !DILocalVariable(name: "svpv_flags", scope: !2279, file: !1109, line: 750, type: !865)
!2291 = !DILocalVariable(name: "s", scope: !2279, file: !1109, line: 752, type: !1018)
!2292 = !DILocalVariable(name: "retnum", scope: !2279, file: !1109, line: 754, type: !482)
!2293 = !DILocation(line: 0, scope: !2279)
!2294 = !DILocation(line: 749, column: 5, scope: !2279)
!2295 = !DILocation(line: 750, column: 30, scope: !2279)
!2296 = !DILocation(line: 750, column: 37, scope: !2279)
!2297 = !DILocation(line: 750, column: 46, scope: !2279)
!2298 = !DILocation(line: 750, column: 56, scope: !2279)
!2299 = !DILocation(line: 750, column: 59, scope: !2279)
!2300 = !DILocation(line: 750, column: 29, scope: !2279)
!2301 = !DILocation(line: 753, column: 29, scope: !2279)
!2302 = !DILocation(line: 756, column: 10, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2279, file: !1109, line: 756, column: 9)
!2304 = !DILocation(line: 756, column: 9, scope: !2279)
!2305 = !DILocation(line: 762, column: 16, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2279, file: !1109, line: 762, column: 9)
!2307 = !DILocation(line: 762, column: 9, scope: !2279)
!2308 = !DILocation(line: 764, column: 14, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2279, file: !1109, line: 764, column: 9)
!2310 = !{i32 0, i32 33}
!2311 = !DILocation(line: 764, column: 18, scope: !2309)
!2312 = !DILocation(line: 765, column: 2, scope: !2309)
!2313 = !DILocation(line: 767, column: 9, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2279, file: !1109, line: 767, column: 9)
!2315 = !DILocation(line: 767, column: 9, scope: !2279)
!2316 = !DILocation(line: 768, column: 9, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !1109, line: 767, column: 21)
!2318 = !DILocation(line: 770, column: 31, scope: !2317)
!2319 = !DILocation(line: 773, column: 14, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2279, file: !1109, line: 773, column: 9)
!2321 = !DILocation(line: 773, column: 9, scope: !2279)
!2322 = !DILocation(line: 774, column: 20, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !1109, line: 773, column: 19)
!2324 = !DILocation(line: 774, column: 24, scope: !2323)
!2325 = !DILocation(line: 774, column: 23, scope: !2323)
!2326 = !DILocation(line: 774, column: 29, scope: !2323)
!2327 = !DILocation(line: 775, column: 21, scope: !2323)
!2328 = !DILocation(line: 775, column: 19, scope: !2323)
!2329 = !DILocation(line: 775, column: 18, scope: !2323)
!2330 = !DILocation(line: 776, column: 5, scope: !2323)
!2331 = !DILocation(line: 777, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2320, file: !1109, line: 777, column: 14)
!2333 = !DILocation(line: 777, column: 14, scope: !2320)
!2334 = !DILocation(line: 778, column: 24, scope: !2332)
!2335 = !DILocation(line: 778, column: 18, scope: !2332)
!2336 = !DILocation(line: 778, column: 2, scope: !2332)
!2337 = !DILocation(line: 0, scope: !2320)
!2338 = !DILocation(line: 782, column: 32, scope: !2279)
!2339 = !DILocation(line: 782, column: 30, scope: !2279)
!2340 = !DILocation(line: 782, column: 37, scope: !2279)
!2341 = !DILocation(line: 782, column: 41, scope: !2279)
!2342 = !DILocation(line: 782, column: 19, scope: !2279)
!2343 = !DILocation(line: 783, column: 15, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2279, file: !1109, line: 783, column: 9)
!2345 = !DILocation(line: 783, column: 13, scope: !2344)
!2346 = !DILocation(line: 783, column: 9, scope: !2279)
!2347 = !DILocation(line: 784, column: 11, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !1109, line: 784, column: 6)
!2349 = distinct !DILexicalBlock(scope: !2344, file: !1109, line: 783, column: 23)
!2350 = !DILocation(line: 784, column: 6, scope: !2349)
!2351 = !DILocation(line: 787, column: 10, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !1109, line: 786, column: 7)
!2353 = !DILocation(line: 788, column: 15, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2355, file: !1109, line: 788, column: 7)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !1109, line: 787, column: 22)
!2356 = distinct !DILexicalBlock(scope: !2352, file: !1109, line: 787, column: 10)
!2357 = !DILocation(line: 788, column: 7, scope: !2355)
!2358 = !DILocation(line: 791, column: 21, scope: !2354)
!2359 = !DILocation(line: 791, column: 16, scope: !2354)
!2360 = !DILocation(line: 791, column: 32, scope: !2354)
!2361 = !DILocation(line: 794, column: 15, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !1109, line: 794, column: 7)
!2363 = distinct !DILexicalBlock(scope: !2364, file: !1109, line: 793, column: 27)
!2364 = distinct !DILexicalBlock(scope: !2356, file: !1109, line: 793, column: 15)
!2365 = !DILocation(line: 794, column: 7, scope: !2363)
!2366 = !DILocation(line: 796, column: 20, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2362, file: !1109, line: 796, column: 12)
!2368 = !DILocation(line: 796, column: 24, scope: !2367)
!2369 = !DILocation(line: 796, column: 12, scope: !2362)
!2370 = !DILocation(line: 798, column: 10, scope: !2367)
!2371 = !DILocation(line: 798, column: 5, scope: !2367)
!2372 = !DILocation(line: 798, column: 25, scope: !2367)
!2373 = !DILocation(line: 797, column: 7, scope: !2367)
!2374 = !DILocation(line: 799, column: 20, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2367, file: !1109, line: 799, column: 12)
!2376 = !DILocation(line: 799, column: 24, scope: !2375)
!2377 = !DILocation(line: 0, scope: !2375)
!2378 = !DILocation(line: 799, column: 12, scope: !2367)
!2379 = !DILocation(line: 807, column: 10, scope: !2375)
!2380 = !DILocation(line: 807, column: 25, scope: !2375)
!2381 = !DILocation(line: 806, column: 32, scope: !2375)
!2382 = !DILocation(line: 811, column: 3, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !1109, line: 810, column: 27)
!2384 = distinct !DILexicalBlock(scope: !2364, file: !1109, line: 810, column: 15)
!2385 = !DILocation(line: 813, column: 18, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2383, file: !1109, line: 813, column: 7)
!2387 = !DILocation(line: 813, column: 15, scope: !2386)
!2388 = !DILocation(line: 813, column: 7, scope: !2383)
!2389 = !DILocation(line: 815, column: 20, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2386, file: !1109, line: 815, column: 12)
!2391 = !DILocation(line: 815, column: 24, scope: !2390)
!2392 = !DILocation(line: 815, column: 12, scope: !2386)
!2393 = !DILocation(line: 817, column: 9, scope: !2390)
!2394 = !DILocation(line: 817, column: 4, scope: !2390)
!2395 = !DILocation(line: 817, column: 25, scope: !2390)
!2396 = !DILocation(line: 816, column: 7, scope: !2390)
!2397 = !DILocation(line: 818, column: 20, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2390, file: !1109, line: 818, column: 12)
!2399 = !DILocation(line: 818, column: 24, scope: !2398)
!2400 = !DILocation(line: 818, column: 12, scope: !2390)
!2401 = !DILocation(line: 820, column: 10, scope: !2398)
!2402 = !DILocation(line: 820, column: 5, scope: !2398)
!2403 = !DILocation(line: 820, column: 25, scope: !2398)
!2404 = !DILocation(line: 821, column: 10, scope: !2398)
!2405 = !DILocation(line: 821, column: 5, scope: !2398)
!2406 = !DILocation(line: 821, column: 25, scope: !2398)
!2407 = !DILocation(line: 820, column: 32, scope: !2398)
!2408 = !DILocation(line: 819, column: 7, scope: !2398)
!2409 = !DILocation(line: 822, column: 20, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2398, file: !1109, line: 822, column: 12)
!2411 = !DILocation(line: 822, column: 24, scope: !2410)
!2412 = !DILocation(line: 822, column: 12, scope: !2398)
!2413 = !DILocation(line: 824, column: 10, scope: !2410)
!2414 = !DILocation(line: 824, column: 5, scope: !2410)
!2415 = !DILocation(line: 824, column: 25, scope: !2410)
!2416 = !DILocation(line: 825, column: 10, scope: !2410)
!2417 = !DILocation(line: 825, column: 5, scope: !2410)
!2418 = !DILocation(line: 825, column: 25, scope: !2410)
!2419 = !DILocation(line: 824, column: 32, scope: !2410)
!2420 = !DILocation(line: 826, column: 10, scope: !2410)
!2421 = !DILocation(line: 826, column: 5, scope: !2410)
!2422 = !DILocation(line: 826, column: 25, scope: !2410)
!2423 = !DILocation(line: 825, column: 32, scope: !2410)
!2424 = !DILocation(line: 823, column: 7, scope: !2410)
!2425 = !DILocation(line: 827, column: 20, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2410, file: !1109, line: 827, column: 12)
!2427 = !DILocation(line: 827, column: 24, scope: !2426)
!2428 = !DILocation(line: 827, column: 12, scope: !2410)
!2429 = !DILocation(line: 829, column: 10, scope: !2426)
!2430 = !DILocation(line: 829, column: 5, scope: !2426)
!2431 = !DILocation(line: 829, column: 25, scope: !2426)
!2432 = !DILocation(line: 830, column: 10, scope: !2426)
!2433 = !DILocation(line: 830, column: 5, scope: !2426)
!2434 = !DILocation(line: 830, column: 25, scope: !2426)
!2435 = !DILocation(line: 829, column: 32, scope: !2426)
!2436 = !DILocation(line: 831, column: 10, scope: !2426)
!2437 = !DILocation(line: 831, column: 5, scope: !2426)
!2438 = !DILocation(line: 831, column: 25, scope: !2426)
!2439 = !DILocation(line: 830, column: 32, scope: !2426)
!2440 = !DILocation(line: 832, column: 10, scope: !2426)
!2441 = !DILocation(line: 832, column: 5, scope: !2426)
!2442 = !DILocation(line: 832, column: 25, scope: !2426)
!2443 = !DILocation(line: 831, column: 32, scope: !2426)
!2444 = !DILocation(line: 828, column: 7, scope: !2426)
!2445 = !DILocation(line: 833, column: 20, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2426, file: !1109, line: 833, column: 12)
!2447 = !DILocation(line: 833, column: 24, scope: !2446)
!2448 = !DILocation(line: 833, column: 12, scope: !2426)
!2449 = !DILocation(line: 835, column: 10, scope: !2446)
!2450 = !DILocation(line: 835, column: 5, scope: !2446)
!2451 = !DILocation(line: 835, column: 25, scope: !2446)
!2452 = !DILocation(line: 836, column: 10, scope: !2446)
!2453 = !DILocation(line: 836, column: 5, scope: !2446)
!2454 = !DILocation(line: 836, column: 25, scope: !2446)
!2455 = !DILocation(line: 835, column: 32, scope: !2446)
!2456 = !DILocation(line: 837, column: 10, scope: !2446)
!2457 = !DILocation(line: 837, column: 5, scope: !2446)
!2458 = !DILocation(line: 837, column: 25, scope: !2446)
!2459 = !DILocation(line: 836, column: 32, scope: !2446)
!2460 = !DILocation(line: 838, column: 10, scope: !2446)
!2461 = !DILocation(line: 838, column: 5, scope: !2446)
!2462 = !DILocation(line: 838, column: 25, scope: !2446)
!2463 = !DILocation(line: 837, column: 32, scope: !2446)
!2464 = !DILocation(line: 839, column: 10, scope: !2446)
!2465 = !DILocation(line: 839, column: 5, scope: !2446)
!2466 = !DILocation(line: 839, column: 25, scope: !2446)
!2467 = !DILocation(line: 838, column: 32, scope: !2446)
!2468 = !DILocation(line: 834, column: 7, scope: !2446)
!2469 = !DILocation(line: 840, column: 20, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2446, file: !1109, line: 840, column: 12)
!2471 = !DILocation(line: 840, column: 24, scope: !2470)
!2472 = !DILocation(line: 0, scope: !2470)
!2473 = !DILocation(line: 840, column: 12, scope: !2446)
!2474 = !DILocation(line: 856, column: 10, scope: !2470)
!2475 = !DILocation(line: 856, column: 5, scope: !2470)
!2476 = !DILocation(line: 856, column: 25, scope: !2470)
!2477 = !DILocation(line: 855, column: 32, scope: !2470)
!2478 = !DILocation(line: 861, column: 14, scope: !2344)
!2479 = !DILocation(line: 862, column: 12, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2344, file: !1109, line: 861, column: 14)
!2481 = !DILocation(line: 862, column: 23, scope: !2480)
!2482 = !DILocation(line: 862, column: 50, scope: !2480)
!2483 = !DILocation(line: 862, column: 35, scope: !2480)
!2484 = !DILocation(line: 862, column: 2, scope: !2480)
!2485 = !DILocation(line: 864, column: 6, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2480, file: !1109, line: 863, column: 10)
!2487 = !DILocation(line: 865, column: 15, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2486, file: !1109, line: 864, column: 6)
!2489 = !DILocation(line: 865, column: 6, scope: !2488)
!2490 = !DILocation(line: 868, column: 9, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2488, file: !1109, line: 866, column: 11)
!2492 = !DILocation(line: 868, column: 4, scope: !2491)
!2493 = !DILocation(line: 868, column: 20, scope: !2491)
!2494 = !DILocation(line: 869, column: 19, scope: !2491)
!2495 = !DILocation(line: 869, column: 9, scope: !2491)
!2496 = !DILocation(line: 868, column: 31, scope: !2491)
!2497 = !DILocation(line: 867, column: 6, scope: !2491)
!2498 = !DILocation(line: 872, column: 9, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2491, file: !1109, line: 870, column: 11)
!2500 = !DILocation(line: 872, column: 4, scope: !2499)
!2501 = !DILocation(line: 872, column: 24, scope: !2499)
!2502 = !DILocation(line: 873, column: 19, scope: !2499)
!2503 = !DILocation(line: 873, column: 9, scope: !2499)
!2504 = !DILocation(line: 873, column: 4, scope: !2499)
!2505 = !DILocation(line: 873, column: 24, scope: !2499)
!2506 = !DILocation(line: 872, column: 31, scope: !2499)
!2507 = !DILocation(line: 874, column: 19, scope: !2499)
!2508 = !DILocation(line: 874, column: 9, scope: !2499)
!2509 = !DILocation(line: 874, column: 24, scope: !2499)
!2510 = !DILocation(line: 873, column: 31, scope: !2499)
!2511 = !DILocation(line: 875, column: 19, scope: !2499)
!2512 = !DILocation(line: 875, column: 9, scope: !2499)
!2513 = !DILocation(line: 874, column: 31, scope: !2499)
!2514 = !DILocation(line: 871, column: 6, scope: !2499)
!2515 = !DILocation(line: 878, column: 6, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2517, file: !1109, line: 877, column: 23)
!2517 = distinct !DILexicalBlock(scope: !2499, file: !1109, line: 877, column: 11)
!2518 = !DILocation(line: 881, column: 9, scope: !2516)
!2519 = !DILocation(line: 881, column: 4, scope: !2516)
!2520 = !DILocation(line: 881, column: 24, scope: !2516)
!2521 = !DILocation(line: 882, column: 19, scope: !2516)
!2522 = !DILocation(line: 882, column: 9, scope: !2516)
!2523 = !DILocation(line: 882, column: 4, scope: !2516)
!2524 = !DILocation(line: 882, column: 24, scope: !2516)
!2525 = !DILocation(line: 881, column: 31, scope: !2516)
!2526 = !DILocation(line: 883, column: 19, scope: !2516)
!2527 = !DILocation(line: 883, column: 9, scope: !2516)
!2528 = !DILocation(line: 883, column: 4, scope: !2516)
!2529 = !DILocation(line: 883, column: 24, scope: !2516)
!2530 = !DILocation(line: 882, column: 31, scope: !2516)
!2531 = !DILocation(line: 884, column: 19, scope: !2516)
!2532 = !DILocation(line: 884, column: 9, scope: !2516)
!2533 = !DILocation(line: 884, column: 4, scope: !2516)
!2534 = !DILocation(line: 884, column: 24, scope: !2516)
!2535 = !DILocation(line: 883, column: 31, scope: !2516)
!2536 = !DILocation(line: 885, column: 19, scope: !2516)
!2537 = !DILocation(line: 885, column: 9, scope: !2516)
!2538 = !DILocation(line: 885, column: 4, scope: !2516)
!2539 = !DILocation(line: 885, column: 24, scope: !2516)
!2540 = !DILocation(line: 884, column: 31, scope: !2516)
!2541 = !DILocation(line: 886, column: 19, scope: !2516)
!2542 = !DILocation(line: 886, column: 9, scope: !2516)
!2543 = !DILocation(line: 886, column: 4, scope: !2516)
!2544 = !DILocation(line: 886, column: 24, scope: !2516)
!2545 = !DILocation(line: 885, column: 31, scope: !2516)
!2546 = !DILocation(line: 887, column: 19, scope: !2516)
!2547 = !DILocation(line: 887, column: 9, scope: !2516)
!2548 = !DILocation(line: 887, column: 24, scope: !2516)
!2549 = !DILocation(line: 886, column: 31, scope: !2516)
!2550 = !DILocation(line: 888, column: 19, scope: !2516)
!2551 = !DILocation(line: 888, column: 9, scope: !2516)
!2552 = !DILocation(line: 887, column: 31, scope: !2516)
!2553 = !DILocation(line: 889, column: 2, scope: !2516)
!2554 = !DILocation(line: 894, column: 1, scope: !2279)
!2555 = !DISubprogram(name: "Perl_is_lvalue_sub", scope: !2059, file: !2059, line: 1880, type: !2556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!545}
!2558 = !DISubprogram(name: "Perl_croak", scope: !2059, file: !2059, line: 741, type: !2559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{null, !842, null}
!2561 = !DISubprogram(name: "Perl_sv_utf8_downgrade", scope: !2059, file: !2059, line: 4772, type: !2562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!731, !831, !2564}
!2564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !731)
!2565 = !DISubprogram(name: "Perl_ck_warner", scope: !2059, file: !2059, line: 700, type: !2566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{null, !469, !842, null}
!2568 = distinct !DISubprogram(name: "Perl_do_vecset", scope: !1109, file: !1109, line: 901, type: !2569, scopeLine: 902, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2571)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !462}
!2571 = !{!2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581}
!2572 = !DILocalVariable(name: "sv", arg: 1, scope: !2568, file: !1109, line: 901, type: !462)
!2573 = !DILocalVariable(name: "offset", scope: !2568, file: !1109, line: 903, type: !760)
!2574 = !DILocalVariable(name: "bitoffs", scope: !2568, file: !1109, line: 903, type: !760)
!2575 = !DILocalVariable(name: "size", scope: !2568, file: !1109, line: 904, type: !461)
!2576 = !DILocalVariable(name: "s", scope: !2568, file: !1109, line: 905, type: !1018)
!2577 = !DILocalVariable(name: "lval", scope: !2568, file: !1109, line: 906, type: !482)
!2578 = !DILocalVariable(name: "mask", scope: !2568, file: !1109, line: 907, type: !545)
!2579 = !DILocalVariable(name: "targlen", scope: !2568, file: !1109, line: 908, type: !496)
!2580 = !DILocalVariable(name: "len", scope: !2568, file: !1109, line: 909, type: !496)
!2581 = !DILocalVariable(name: "targ", scope: !2568, file: !1109, line: 910, type: !831)
!2582 = !DILocation(line: 0, scope: !2568)
!2583 = !DILocation(line: 908, column: 5, scope: !2568)
!2584 = !DILocation(line: 910, column: 23, scope: !2568)
!2585 = !DILocation(line: 914, column: 10, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2568, file: !1109, line: 914, column: 9)
!2587 = !DILocation(line: 914, column: 9, scope: !2568)
!2588 = !DILocation(line: 916, column: 25, scope: !2568)
!2589 = !DILocation(line: 918, column: 9, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2568, file: !1109, line: 918, column: 9)
!2591 = !DILocation(line: 918, column: 9, scope: !2568)
!2592 = !DILocation(line: 923, column: 9, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2590, file: !1109, line: 918, column: 23)
!2594 = !DILocation(line: 926, column: 11, scope: !2568)
!2595 = !DILocation(line: 924, column: 5, scope: !2593)
!2596 = !DILocation(line: 927, column: 12, scope: !2568)
!2597 = !DILocation(line: 928, column: 14, scope: !2568)
!2598 = !DILocation(line: 929, column: 16, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2568, file: !1109, line: 929, column: 9)
!2600 = !DILocation(line: 929, column: 9, scope: !2568)
!2601 = !DILocation(line: 930, column: 2, scope: !2599)
!2602 = !DILocation(line: 931, column: 12, scope: !2568)
!2603 = !DILocation(line: 932, column: 14, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2568, file: !1109, line: 932, column: 9)
!2605 = !DILocation(line: 932, column: 18, scope: !2604)
!2606 = !DILocation(line: 933, column: 2, scope: !2604)
!2607 = !DILocation(line: 935, column: 14, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2568, file: !1109, line: 935, column: 9)
!2609 = !DILocation(line: 935, column: 9, scope: !2568)
!2610 = !DILocation(line: 936, column: 20, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !1109, line: 935, column: 19)
!2612 = !DILocation(line: 936, column: 24, scope: !2611)
!2613 = !DILocation(line: 936, column: 23, scope: !2611)
!2614 = !DILocation(line: 936, column: 29, scope: !2611)
!2615 = !DILocation(line: 937, column: 13, scope: !2611)
!2616 = !DILocation(line: 937, column: 12, scope: !2611)
!2617 = !DILocation(line: 937, column: 9, scope: !2611)
!2618 = !DILocation(line: 938, column: 5, scope: !2611)
!2619 = !DILocation(line: 939, column: 19, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2608, file: !1109, line: 939, column: 14)
!2621 = !DILocation(line: 939, column: 14, scope: !2608)
!2622 = !DILocation(line: 940, column: 16, scope: !2620)
!2623 = !DILocation(line: 940, column: 9, scope: !2620)
!2624 = !DILocation(line: 940, column: 2, scope: !2620)
!2625 = !DILocation(line: 942, column: 31, scope: !2568)
!2626 = !DILocation(line: 942, column: 29, scope: !2568)
!2627 = !DILocation(line: 942, column: 36, scope: !2568)
!2628 = !DILocation(line: 942, column: 40, scope: !2568)
!2629 = !DILocation(line: 942, column: 18, scope: !2568)
!2630 = !DILocation(line: 943, column: 15, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2568, file: !1109, line: 943, column: 9)
!2632 = !DILocation(line: 943, column: 13, scope: !2631)
!2633 = !DILocation(line: 943, column: 9, scope: !2568)
!2634 = !DILocation(line: 944, column: 22, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !1109, line: 943, column: 24)
!2636 = !DILocation(line: 945, column: 8, scope: !2635)
!2637 = !DILocation(line: 946, column: 2, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2635, file: !1109, line: 946, column: 2)
!2639 = !DILocation(line: 947, column: 5, scope: !2635)
!2640 = !DILocation(line: 949, column: 9, scope: !2568)
!2641 = !DILocation(line: 950, column: 21, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2643, file: !1109, line: 949, column: 19)
!2643 = distinct !DILexicalBlock(scope: !2568, file: !1109, line: 949, column: 9)
!2644 = !DILocation(line: 951, column: 10, scope: !2642)
!2645 = !DILocation(line: 951, column: 7, scope: !2642)
!2646 = !DILocation(line: 952, column: 22, scope: !2642)
!2647 = !DILocation(line: 952, column: 2, scope: !2642)
!2648 = !DILocation(line: 952, column: 12, scope: !2642)
!2649 = !DILocation(line: 953, column: 20, scope: !2642)
!2650 = !DILocation(line: 953, column: 12, scope: !2642)
!2651 = !DILocation(line: 954, column: 5, scope: !2642)
!2652 = !DILocation(line: 956, column: 6, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2643, file: !1109, line: 955, column: 10)
!2654 = !DILocation(line: 957, column: 20, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2653, file: !1109, line: 956, column: 6)
!2656 = !DILocation(line: 957, column: 6, scope: !2655)
!2657 = !DILocation(line: 957, column: 18, scope: !2655)
!2658 = !DILocation(line: 959, column: 31, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !1109, line: 958, column: 23)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !1109, line: 958, column: 11)
!2661 = !DILocation(line: 959, column: 20, scope: !2659)
!2662 = !DILocation(line: 959, column: 6, scope: !2659)
!2663 = !DILocation(line: 959, column: 18, scope: !2659)
!2664 = !DILocation(line: 960, column: 20, scope: !2659)
!2665 = !DILocation(line: 960, column: 14, scope: !2659)
!2666 = !DILocation(line: 960, column: 6, scope: !2659)
!2667 = !DILocation(line: 960, column: 18, scope: !2659)
!2668 = !DILocation(line: 961, column: 2, scope: !2659)
!2669 = !DILocation(line: 963, column: 31, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2671, file: !1109, line: 962, column: 23)
!2671 = distinct !DILexicalBlock(scope: !2660, file: !1109, line: 962, column: 11)
!2672 = !DILocation(line: 963, column: 20, scope: !2670)
!2673 = !DILocation(line: 963, column: 6, scope: !2670)
!2674 = !DILocation(line: 963, column: 18, scope: !2670)
!2675 = !DILocation(line: 964, column: 31, scope: !2670)
!2676 = !DILocation(line: 964, column: 20, scope: !2670)
!2677 = !DILocation(line: 964, column: 14, scope: !2670)
!2678 = !DILocation(line: 964, column: 6, scope: !2670)
!2679 = !DILocation(line: 964, column: 18, scope: !2670)
!2680 = !DILocation(line: 965, column: 31, scope: !2670)
!2681 = !DILocation(line: 965, column: 20, scope: !2670)
!2682 = !DILocation(line: 965, column: 14, scope: !2670)
!2683 = !DILocation(line: 965, column: 6, scope: !2670)
!2684 = !DILocation(line: 965, column: 18, scope: !2670)
!2685 = !DILocation(line: 966, column: 20, scope: !2670)
!2686 = !DILocation(line: 966, column: 14, scope: !2670)
!2687 = !DILocation(line: 966, column: 6, scope: !2670)
!2688 = !DILocation(line: 966, column: 18, scope: !2670)
!2689 = !DILocation(line: 967, column: 2, scope: !2670)
!2690 = !DILocation(line: 970, column: 6, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !1109, line: 969, column: 23)
!2692 = distinct !DILexicalBlock(scope: !2671, file: !1109, line: 969, column: 11)
!2693 = !DILocation(line: 972, column: 31, scope: !2691)
!2694 = !DILocation(line: 972, column: 20, scope: !2691)
!2695 = !DILocation(line: 972, column: 6, scope: !2691)
!2696 = !DILocation(line: 972, column: 18, scope: !2691)
!2697 = !DILocation(line: 973, column: 31, scope: !2691)
!2698 = !DILocation(line: 973, column: 20, scope: !2691)
!2699 = !DILocation(line: 973, column: 14, scope: !2691)
!2700 = !DILocation(line: 973, column: 6, scope: !2691)
!2701 = !DILocation(line: 973, column: 18, scope: !2691)
!2702 = !DILocation(line: 974, column: 31, scope: !2691)
!2703 = !DILocation(line: 974, column: 20, scope: !2691)
!2704 = !DILocation(line: 974, column: 14, scope: !2691)
!2705 = !DILocation(line: 974, column: 6, scope: !2691)
!2706 = !DILocation(line: 974, column: 18, scope: !2691)
!2707 = !DILocation(line: 975, column: 31, scope: !2691)
!2708 = !DILocation(line: 975, column: 20, scope: !2691)
!2709 = !DILocation(line: 975, column: 14, scope: !2691)
!2710 = !DILocation(line: 975, column: 6, scope: !2691)
!2711 = !DILocation(line: 975, column: 18, scope: !2691)
!2712 = !DILocation(line: 976, column: 31, scope: !2691)
!2713 = !DILocation(line: 976, column: 20, scope: !2691)
!2714 = !DILocation(line: 976, column: 14, scope: !2691)
!2715 = !DILocation(line: 976, column: 6, scope: !2691)
!2716 = !DILocation(line: 976, column: 18, scope: !2691)
!2717 = !DILocation(line: 977, column: 31, scope: !2691)
!2718 = !DILocation(line: 977, column: 20, scope: !2691)
!2719 = !DILocation(line: 977, column: 14, scope: !2691)
!2720 = !DILocation(line: 977, column: 6, scope: !2691)
!2721 = !DILocation(line: 977, column: 18, scope: !2691)
!2722 = !DILocation(line: 978, column: 31, scope: !2691)
!2723 = !DILocation(line: 978, column: 20, scope: !2691)
!2724 = !DILocation(line: 978, column: 14, scope: !2691)
!2725 = !DILocation(line: 978, column: 6, scope: !2691)
!2726 = !DILocation(line: 978, column: 18, scope: !2691)
!2727 = !DILocation(line: 979, column: 20, scope: !2691)
!2728 = !DILocation(line: 979, column: 14, scope: !2691)
!2729 = !DILocation(line: 979, column: 6, scope: !2691)
!2730 = !DILocation(line: 979, column: 18, scope: !2691)
!2731 = !DILocation(line: 980, column: 2, scope: !2691)
!2732 = !DILocation(line: 983, column: 5, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !1109, line: 983, column: 5)
!2734 = distinct !DILexicalBlock(scope: !2568, file: !1109, line: 983, column: 5)
!2735 = !DILocation(line: 983, column: 5, scope: !2734)
!2736 = !DILocation(line: 984, column: 1, scope: !2568)
!2737 = !DISubprogram(name: "Perl_sv_2uv_flags", scope: !2059, file: !2059, line: 4168, type: !2738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!482, !831, !865}
!2740 = distinct !DISubprogram(name: "Perl_do_vop", scope: !1109, file: !1109, line: 987, type: !2741, scopeLine: 988, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{null, !545, !462, !462, !462}
!2743 = !{!2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2776, !2778, !2781}
!2744 = !DILocalVariable(name: "optype", arg: 1, scope: !2740, file: !1109, line: 987, type: !545)
!2745 = !DILocalVariable(name: "sv", arg: 2, scope: !2740, file: !1109, line: 987, type: !462)
!2746 = !DILocalVariable(name: "left", arg: 3, scope: !2740, file: !1109, line: 987, type: !462)
!2747 = !DILocalVariable(name: "right", arg: 4, scope: !2740, file: !1109, line: 987, type: !462)
!2748 = !DILocalVariable(name: "dl", scope: !2740, file: !1109, line: 990, type: !1056)
!2749 = !DILocalVariable(name: "ll", scope: !2740, file: !1109, line: 991, type: !1056)
!2750 = !DILocalVariable(name: "rl", scope: !2740, file: !1109, line: 992, type: !1056)
!2751 = !DILocalVariable(name: "dc", scope: !2740, file: !1109, line: 994, type: !476)
!2752 = !DILocalVariable(name: "leftlen", scope: !2740, file: !1109, line: 995, type: !496)
!2753 = !DILocalVariable(name: "rightlen", scope: !2740, file: !1109, line: 996, type: !496)
!2754 = !DILocalVariable(name: "lc", scope: !2740, file: !1109, line: 997, type: !842)
!2755 = !DILocalVariable(name: "rc", scope: !2740, file: !1109, line: 998, type: !842)
!2756 = !DILocalVariable(name: "len", scope: !2740, file: !1109, line: 999, type: !496)
!2757 = !DILocalVariable(name: "lensave", scope: !2740, file: !1109, line: 1000, type: !496)
!2758 = !DILocalVariable(name: "lsave", scope: !2740, file: !1109, line: 1001, type: !842)
!2759 = !DILocalVariable(name: "rsave", scope: !2740, file: !1109, line: 1002, type: !842)
!2760 = !DILocalVariable(name: "left_utf", scope: !2740, file: !1109, line: 1003, type: !731)
!2761 = !DILocalVariable(name: "right_utf", scope: !2740, file: !1109, line: 1004, type: !731)
!2762 = !DILocalVariable(name: "needlen", scope: !2740, file: !1109, line: 1005, type: !496)
!2763 = !DILocalVariable(name: "duc", scope: !2764, file: !1109, line: 1067, type: !482)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !1109, line: 1066, column: 32)
!2765 = distinct !DILexicalBlock(scope: !2740, file: !1109, line: 1066, column: 9)
!2766 = !DILocalVariable(name: "luc", scope: !2764, file: !1109, line: 1067, type: !482)
!2767 = !DILocalVariable(name: "ruc", scope: !2764, file: !1109, line: 1067, type: !482)
!2768 = !DILocalVariable(name: "dcorig", scope: !2764, file: !1109, line: 1068, type: !476)
!2769 = !DILocalVariable(name: "dcsave", scope: !2764, file: !1109, line: 1069, type: !476)
!2770 = !DILocalVariable(name: "lulen", scope: !2764, file: !1109, line: 1070, type: !496)
!2771 = !DILocalVariable(name: "rulen", scope: !2764, file: !1109, line: 1071, type: !496)
!2772 = !DILocalVariable(name: "ulen", scope: !2764, file: !1109, line: 1072, type: !496)
!2773 = !DILocalVariable(name: "remainder", scope: !2774, file: !1109, line: 1145, type: !1322)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !1109, line: 1144, column: 5)
!2775 = distinct !DILexicalBlock(scope: !2765, file: !1109, line: 1140, column: 9)
!2776 = !DILabel(scope: !2777, name: "mop_up_utf", file: !1109, line: 1113)
!2777 = distinct !DILexicalBlock(scope: !2764, file: !1109, line: 1074, column: 18)
!2778 = !DILabel(scope: !2779, name: "mop_up", file: !1109, line: 1199)
!2779 = distinct !DILexicalBlock(scope: !2780, file: !1109, line: 1186, column: 18)
!2780 = distinct !DILexicalBlock(scope: !2740, file: !1109, line: 1185, column: 5)
!2781 = !DILabel(scope: !2740, name: "finish", file: !1109, line: 1210)
!2782 = !DILocation(line: 0, scope: !2740)
!2783 = !DILocation(line: 995, column: 5, scope: !2740)
!2784 = !DILocation(line: 996, column: 5, scope: !2740)
!2785 = !DILocation(line: 1009, column: 12, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2740, file: !1109, line: 1009, column: 9)
!2787 = !DILocation(line: 1009, column: 20, scope: !2786)
!2788 = !DILocation(line: 1009, column: 31, scope: !2786)
!2789 = !DILocation(line: 1009, column: 45, scope: !2786)
!2790 = !DILocation(line: 1009, column: 49, scope: !2786)
!2791 = !DILocation(line: 1010, column: 2, scope: !2786)
!2792 = !DILocation(line: 1011, column: 9, scope: !2740)
!2793 = !DILocation(line: 1012, column: 15, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !1109, line: 1011, column: 21)
!2795 = distinct !DILexicalBlock(scope: !2740, file: !1109, line: 1011, column: 9)
!2796 = !DILocation(line: 1015, column: 15, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2795, file: !1109, line: 1014, column: 10)
!2798 = !DILocation(line: 1016, column: 2, scope: !2797)
!2799 = !DILocation(line: 0, scope: !2795)
!2800 = !DILocation(line: 1018, column: 18, scope: !2740)
!2801 = !DILocation(line: 1023, column: 16, scope: !2740)
!2802 = !DILocation(line: 1024, column: 17, scope: !2740)
!2803 = !DILocation(line: 1026, column: 18, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2740, file: !1109, line: 1026, column: 9)
!2805 = !DILocation(line: 1030, column: 10, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2804, file: !1109, line: 1026, column: 33)
!2807 = !DILocation(line: 1031, column: 2, scope: !2806)
!2808 = !DILocation(line: 1032, column: 15, scope: !2806)
!2809 = !DILocation(line: 1035, column: 24, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2804, file: !1109, line: 1035, column: 14)
!2811 = !DILocation(line: 1035, column: 14, scope: !2804)
!2812 = !DILocation(line: 1036, column: 9, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2810, file: !1109, line: 1035, column: 38)
!2814 = !DILocation(line: 1037, column: 2, scope: !2813)
!2815 = !DILocation(line: 1038, column: 15, scope: !2813)
!2816 = !DILocation(line: 1042, column: 11, scope: !2740)
!2817 = !DILocation(line: 1042, column: 21, scope: !2740)
!2818 = !DILocation(line: 1044, column: 5, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2740, file: !1109, line: 1044, column: 5)
!2820 = !DILocation(line: 1045, column: 11, scope: !2740)
!2821 = !DILocation(line: 1046, column: 19, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2740, file: !1109, line: 1046, column: 9)
!2823 = !DILocation(line: 1046, column: 40, scope: !2822)
!2824 = !DILocation(line: 1046, column: 48, scope: !2822)
!2825 = !DILocation(line: 1047, column: 19, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2822, file: !1109, line: 1046, column: 65)
!2827 = !DILocation(line: 1047, column: 12, scope: !2826)
!2828 = !DILocation(line: 1048, column: 2, scope: !2826)
!2829 = !DILocation(line: 1066, column: 18, scope: !2765)
!2830 = !DILocation(line: 1051, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !1109, line: 1050, column: 49)
!2832 = distinct !DILexicalBlock(scope: !2822, file: !1109, line: 1050, column: 14)
!2833 = !DILocation(line: 1052, column: 6, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2831, file: !1109, line: 1052, column: 6)
!2835 = !DILocation(line: 1052, column: 22, scope: !2834)
!2836 = !DILocation(line: 1052, column: 16, scope: !2834)
!2837 = !DILocation(line: 1052, column: 6, scope: !2831)
!2838 = !DILocation(line: 1053, column: 11, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2834, file: !1109, line: 1052, column: 27)
!2840 = !DILocation(line: 1054, column: 12, scope: !2839)
!2841 = !DILocation(line: 1055, column: 2, scope: !2839)
!2842 = !DILocation(line: 0, scope: !2831)
!2843 = !DILocation(line: 1056, column: 13, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2831, file: !1109, line: 1056, column: 6)
!2845 = !DILocation(line: 1056, column: 27, scope: !2844)
!2846 = !DILocation(line: 1057, column: 11, scope: !2844)
!2847 = !DILocation(line: 0, scope: !2822)
!2848 = !DILocation(line: 0, scope: !2764)
!2849 = !DILocation(line: 1070, column: 17, scope: !2764)
!2850 = !DILocation(line: 1071, column: 17, scope: !2764)
!2851 = !DILocation(line: 1072, column: 2, scope: !2764)
!2852 = !DILocation(line: 1074, column: 2, scope: !2764)
!2853 = !DILocation(line: 1103, column: 13, scope: !2777)
!2854 = !DILocation(line: 1103, column: 19, scope: !2777)
!2855 = !DILocation(line: 1091, column: 13, scope: !2777)
!2856 = !DILocation(line: 1091, column: 19, scope: !2777)
!2857 = !DILocation(line: 1076, column: 13, scope: !2777)
!2858 = !DILocation(line: 1076, column: 19, scope: !2777)
!2859 = !DILocation(line: 1077, column: 9, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1076, column: 29)
!2861 = !DILocation(line: 1078, column: 9, scope: !2860)
!2862 = !DILocation(line: 1078, column: 6, scope: !2860)
!2863 = !DILocation(line: 1079, column: 9, scope: !2860)
!2864 = !DILocation(line: 1080, column: 9, scope: !2860)
!2865 = !DILocation(line: 1081, column: 9, scope: !2860)
!2866 = !DILocation(line: 1081, column: 6, scope: !2860)
!2867 = !DILocation(line: 1082, column: 9, scope: !2860)
!2868 = !DILocation(line: 1083, column: 13, scope: !2860)
!2869 = !DILocation(line: 1084, column: 15, scope: !2860)
!2870 = distinct !{!2870, !2871, !2872, !1210, !1211}
!2871 = !DILocation(line: 1076, column: 6, scope: !2777)
!2872 = !DILocation(line: 1085, column: 6, scope: !2777)
!2873 = !DILocation(line: 1086, column: 13, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1086, column: 10)
!2875 = !DILocation(line: 1086, column: 21, scope: !2874)
!2876 = !DILocation(line: 1087, column: 9, scope: !2874)
!2877 = !DILocation(line: 1087, column: 3, scope: !2874)
!2878 = !DILocation(line: 1088, column: 6, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1088, column: 6)
!2880 = !DILocation(line: 1089, column: 6, scope: !2777)
!2881 = !DILocation(line: 1092, column: 9, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1091, column: 29)
!2883 = !DILocation(line: 1093, column: 9, scope: !2882)
!2884 = !DILocation(line: 1093, column: 6, scope: !2882)
!2885 = !DILocation(line: 1094, column: 9, scope: !2882)
!2886 = !DILocation(line: 1095, column: 9, scope: !2882)
!2887 = !DILocation(line: 1096, column: 9, scope: !2882)
!2888 = !DILocation(line: 1096, column: 6, scope: !2882)
!2889 = !DILocation(line: 1097, column: 9, scope: !2882)
!2890 = !DILocation(line: 1098, column: 13, scope: !2882)
!2891 = !DILocation(line: 1099, column: 15, scope: !2882)
!2892 = distinct !{!2892, !2893, !2894, !1210, !1211}
!2893 = !DILocation(line: 1091, column: 6, scope: !2777)
!2894 = !DILocation(line: 1100, column: 6, scope: !2777)
!2895 = !DILocation(line: 1104, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1103, column: 29)
!2897 = !DILocation(line: 1105, column: 9, scope: !2896)
!2898 = !DILocation(line: 1105, column: 6, scope: !2896)
!2899 = !DILocation(line: 1106, column: 9, scope: !2896)
!2900 = !DILocation(line: 1107, column: 9, scope: !2896)
!2901 = !DILocation(line: 1108, column: 9, scope: !2896)
!2902 = !DILocation(line: 1108, column: 6, scope: !2896)
!2903 = !DILocation(line: 1109, column: 9, scope: !2896)
!2904 = !DILocation(line: 1110, column: 13, scope: !2896)
!2905 = !DILocation(line: 1111, column: 15, scope: !2896)
!2906 = distinct !{!2906, !2907, !2908, !1210, !1211}
!2907 = !DILocation(line: 1103, column: 6, scope: !2777)
!2908 = !DILocation(line: 1112, column: 6, scope: !2777)
!2909 = !DILocation(line: 1012, column: 13, scope: !2794)
!2910 = !DILocation(line: 1018, column: 16, scope: !2740)
!2911 = !DILocation(line: 1070, column: 9, scope: !2764)
!2912 = !DILocation(line: 1071, column: 9, scope: !2764)
!2913 = !DILocation(line: 1113, column: 4, scope: !2777)
!2914 = !DILocation(line: 1114, column: 10, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1114, column: 10)
!2916 = !DILocation(line: 1114, column: 10, scope: !2777)
!2917 = !DILocation(line: 1116, column: 15, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2915, file: !1109, line: 1116, column: 15)
!2919 = !DILocation(line: 1116, column: 15, scope: !2915)
!2920 = !DILocation(line: 0, scope: !2915)
!2921 = !DILocation(line: 1118, column: 13, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1118, column: 10)
!2923 = !DILocation(line: 1118, column: 21, scope: !2922)
!2924 = !DILocation(line: 1119, column: 9, scope: !2922)
!2925 = !DILocation(line: 1119, column: 3, scope: !2922)
!2926 = !DILocation(line: 1120, column: 6, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1120, column: 6)
!2928 = !DILocation(line: 1121, column: 10, scope: !2777)
!2929 = !DILocation(line: 1122, column: 3, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1121, column: 10)
!2931 = !DILocation(line: 1123, column: 15, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2930, file: !1109, line: 1123, column: 15)
!2933 = !DILocation(line: 1123, column: 15, scope: !2930)
!2934 = !DILocation(line: 1124, column: 3, scope: !2932)
!2935 = !DILocation(line: 1126, column: 4, scope: !2932)
!2936 = !DILocation(line: 1126, column: 14, scope: !2932)
!2937 = !DILocation(line: 1127, column: 6, scope: !2777)
!2938 = !DILocation(line: 1128, column: 6, scope: !2777)
!2939 = !DILocation(line: 1130, column: 13, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2777, file: !1109, line: 1130, column: 10)
!2941 = !DILocation(line: 1130, column: 21, scope: !2940)
!2942 = !DILocation(line: 1131, column: 3, scope: !2940)
!2943 = !DILocation(line: 1133, column: 22, scope: !2777)
!2944 = !DILocation(line: 1132, column: 6, scope: !2777)
!2945 = !DILocation(line: 1134, column: 2, scope: !2777)
!2946 = !DILocation(line: 1135, column: 2, scope: !2764)
!2947 = !DILocation(line: 1137, column: 5, scope: !2765)
!2948 = !DILocation(line: 1140, column: 13, scope: !2775)
!2949 = !DILocation(line: 1140, column: 31, scope: !2775)
!2950 = !DILocation(line: 1145, column: 31, scope: !2774)
!2951 = !DILocation(line: 0, scope: !2774)
!2952 = !DILocation(line: 1146, column: 6, scope: !2774)
!2953 = !DILocation(line: 1152, column: 2, scope: !2774)
!2954 = !DILocation(line: 1154, column: 16, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2774, file: !1109, line: 1152, column: 18)
!2956 = !DILocation(line: 1155, column: 14, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2955, file: !1109, line: 1154, column: 20)
!2958 = !DILocation(line: 1155, column: 11, scope: !2957)
!2959 = !DILocation(line: 1155, column: 22, scope: !2957)
!2960 = !DILocation(line: 1155, column: 19, scope: !2957)
!2961 = !DILocation(line: 1155, column: 17, scope: !2957)
!2962 = !DILocation(line: 1155, column: 6, scope: !2957)
!2963 = !DILocation(line: 1155, column: 9, scope: !2957)
!2964 = !DILocation(line: 1156, column: 14, scope: !2957)
!2965 = !DILocation(line: 1156, column: 11, scope: !2957)
!2966 = !DILocation(line: 1156, column: 22, scope: !2957)
!2967 = !DILocation(line: 1156, column: 19, scope: !2957)
!2968 = !DILocation(line: 1156, column: 17, scope: !2957)
!2969 = !DILocation(line: 1156, column: 6, scope: !2957)
!2970 = !DILocation(line: 1156, column: 9, scope: !2957)
!2971 = !DILocation(line: 1157, column: 14, scope: !2957)
!2972 = !DILocation(line: 1157, column: 11, scope: !2957)
!2973 = !DILocation(line: 1157, column: 22, scope: !2957)
!2974 = !DILocation(line: 1157, column: 19, scope: !2957)
!2975 = !DILocation(line: 1157, column: 17, scope: !2957)
!2976 = !DILocation(line: 1157, column: 6, scope: !2957)
!2977 = !DILocation(line: 1157, column: 9, scope: !2957)
!2978 = !DILocation(line: 1158, column: 14, scope: !2957)
!2979 = !DILocation(line: 1158, column: 11, scope: !2957)
!2980 = !DILocation(line: 1158, column: 22, scope: !2957)
!2981 = !DILocation(line: 1158, column: 19, scope: !2957)
!2982 = !DILocation(line: 1158, column: 17, scope: !2957)
!2983 = !DILocation(line: 1158, column: 6, scope: !2957)
!2984 = !DILocation(line: 1158, column: 9, scope: !2957)
!2985 = !DILocation(line: 1154, column: 6, scope: !2955)
!2986 = distinct !{!2986, !2985, !2987, !1210, !1211}
!2987 = !DILocation(line: 1159, column: 6, scope: !2955)
!2988 = !DILocation(line: 1162, column: 16, scope: !2955)
!2989 = !DILocation(line: 1163, column: 14, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2955, file: !1109, line: 1162, column: 20)
!2991 = !DILocation(line: 1163, column: 11, scope: !2990)
!2992 = !DILocation(line: 1163, column: 22, scope: !2990)
!2993 = !DILocation(line: 1163, column: 19, scope: !2990)
!2994 = !DILocation(line: 1163, column: 17, scope: !2990)
!2995 = !DILocation(line: 1163, column: 6, scope: !2990)
!2996 = !DILocation(line: 1163, column: 9, scope: !2990)
!2997 = !DILocation(line: 1164, column: 14, scope: !2990)
!2998 = !DILocation(line: 1164, column: 11, scope: !2990)
!2999 = !DILocation(line: 1164, column: 22, scope: !2990)
!3000 = !DILocation(line: 1164, column: 19, scope: !2990)
!3001 = !DILocation(line: 1164, column: 17, scope: !2990)
!3002 = !DILocation(line: 1164, column: 6, scope: !2990)
!3003 = !DILocation(line: 1164, column: 9, scope: !2990)
!3004 = !DILocation(line: 1165, column: 14, scope: !2990)
!3005 = !DILocation(line: 1165, column: 11, scope: !2990)
!3006 = !DILocation(line: 1165, column: 22, scope: !2990)
!3007 = !DILocation(line: 1165, column: 19, scope: !2990)
!3008 = !DILocation(line: 1165, column: 17, scope: !2990)
!3009 = !DILocation(line: 1165, column: 6, scope: !2990)
!3010 = !DILocation(line: 1165, column: 9, scope: !2990)
!3011 = !DILocation(line: 1166, column: 14, scope: !2990)
!3012 = !DILocation(line: 1166, column: 11, scope: !2990)
!3013 = !DILocation(line: 1166, column: 22, scope: !2990)
!3014 = !DILocation(line: 1166, column: 19, scope: !2990)
!3015 = !DILocation(line: 1166, column: 17, scope: !2990)
!3016 = !DILocation(line: 1166, column: 6, scope: !2990)
!3017 = !DILocation(line: 1166, column: 9, scope: !2990)
!3018 = !DILocation(line: 1162, column: 6, scope: !2955)
!3019 = distinct !{!3019, !3018, !3020, !1210, !1211}
!3020 = !DILocation(line: 1167, column: 6, scope: !2955)
!3021 = !DILocation(line: 1170, column: 16, scope: !2955)
!3022 = !DILocation(line: 1171, column: 14, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !2955, file: !1109, line: 1170, column: 20)
!3024 = !DILocation(line: 1171, column: 11, scope: !3023)
!3025 = !DILocation(line: 1171, column: 22, scope: !3023)
!3026 = !DILocation(line: 1171, column: 19, scope: !3023)
!3027 = !DILocation(line: 1171, column: 17, scope: !3023)
!3028 = !DILocation(line: 1171, column: 6, scope: !3023)
!3029 = !DILocation(line: 1171, column: 9, scope: !3023)
!3030 = !DILocation(line: 1172, column: 14, scope: !3023)
!3031 = !DILocation(line: 1172, column: 11, scope: !3023)
!3032 = !DILocation(line: 1172, column: 22, scope: !3023)
!3033 = !DILocation(line: 1172, column: 19, scope: !3023)
!3034 = !DILocation(line: 1172, column: 17, scope: !3023)
!3035 = !DILocation(line: 1172, column: 6, scope: !3023)
!3036 = !DILocation(line: 1172, column: 9, scope: !3023)
!3037 = !DILocation(line: 1173, column: 14, scope: !3023)
!3038 = !DILocation(line: 1173, column: 11, scope: !3023)
!3039 = !DILocation(line: 1173, column: 22, scope: !3023)
!3040 = !DILocation(line: 1173, column: 19, scope: !3023)
!3041 = !DILocation(line: 1173, column: 17, scope: !3023)
!3042 = !DILocation(line: 1173, column: 6, scope: !3023)
!3043 = !DILocation(line: 1173, column: 9, scope: !3023)
!3044 = !DILocation(line: 1174, column: 14, scope: !3023)
!3045 = !DILocation(line: 1174, column: 11, scope: !3023)
!3046 = !DILocation(line: 1174, column: 22, scope: !3023)
!3047 = !DILocation(line: 1174, column: 19, scope: !3023)
!3048 = !DILocation(line: 1174, column: 17, scope: !3023)
!3049 = !DILocation(line: 1174, column: 6, scope: !3023)
!3050 = !DILocation(line: 1174, column: 9, scope: !3023)
!3051 = !DILocation(line: 1170, column: 6, scope: !2955)
!3052 = distinct !{!3052, !3051, !3053, !1210, !1211}
!3053 = !DILocation(line: 1175, column: 6, scope: !2955)
!3054 = !DILocation(line: 1186, column: 2, scope: !2780)
!3055 = !DILocation(line: 1197, column: 6, scope: !2779)
!3056 = !DILocation(line: 1193, column: 6, scope: !2779)
!3057 = !DILocation(line: 1188, column: 6, scope: !2779)
!3058 = !DILocation(line: 1188, column: 16, scope: !2779)
!3059 = !DILocation(line: 1189, column: 14, scope: !2779)
!3060 = !DILocation(line: 1189, column: 11, scope: !2779)
!3061 = !DILocation(line: 1189, column: 22, scope: !2779)
!3062 = !DILocation(line: 1189, column: 19, scope: !2779)
!3063 = !DILocation(line: 1189, column: 17, scope: !2779)
!3064 = !DILocation(line: 1189, column: 6, scope: !2779)
!3065 = !DILocation(line: 1189, column: 9, scope: !2779)
!3066 = distinct !{!3066, !3057, !3061, !1210, !1211}
!3067 = !DILocation(line: 1190, column: 10, scope: !2779)
!3068 = !DILocation(line: 1191, column: 6, scope: !2779)
!3069 = !DILocation(line: 1193, column: 16, scope: !2779)
!3070 = !DILocation(line: 1194, column: 14, scope: !2779)
!3071 = !DILocation(line: 1194, column: 11, scope: !2779)
!3072 = !DILocation(line: 1194, column: 22, scope: !2779)
!3073 = !DILocation(line: 1194, column: 19, scope: !2779)
!3074 = !DILocation(line: 1194, column: 17, scope: !2779)
!3075 = !DILocation(line: 1194, column: 6, scope: !2779)
!3076 = !DILocation(line: 1194, column: 9, scope: !2779)
!3077 = distinct !{!3077, !3056, !3072, !1210, !1211}
!3078 = !DILocation(line: 1197, column: 16, scope: !2779)
!3079 = !DILocation(line: 1198, column: 14, scope: !2779)
!3080 = !DILocation(line: 1198, column: 11, scope: !2779)
!3081 = !DILocation(line: 1198, column: 22, scope: !2779)
!3082 = !DILocation(line: 1198, column: 19, scope: !2779)
!3083 = !DILocation(line: 1198, column: 17, scope: !2779)
!3084 = !DILocation(line: 1198, column: 6, scope: !2779)
!3085 = !DILocation(line: 1198, column: 9, scope: !2779)
!3086 = distinct !{!3086, !3055, !3081, !1210, !1211}
!3087 = !DILocation(line: 1199, column: 4, scope: !2779)
!3088 = !DILocation(line: 1201, column: 10, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !2779, file: !1109, line: 1201, column: 10)
!3090 = !DILocation(line: 1201, column: 19, scope: !3089)
!3091 = !DILocation(line: 1201, column: 10, scope: !2779)
!3092 = !DILocation(line: 1202, column: 3, scope: !3089)
!3093 = !DILocation(line: 1203, column: 15, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !1109, line: 1203, column: 15)
!3095 = !DILocation(line: 1203, column: 23, scope: !3094)
!3096 = !DILocation(line: 1203, column: 15, scope: !3089)
!3097 = !DILocation(line: 1204, column: 3, scope: !3094)
!3098 = !DILocation(line: 1206, column: 4, scope: !3094)
!3099 = !DILocation(line: 1206, column: 14, scope: !3094)
!3100 = !DILocation(line: 1210, column: 3, scope: !2740)
!3101 = !DILocation(line: 1211, column: 5, scope: !3102)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !1109, line: 1211, column: 5)
!3103 = distinct !DILexicalBlock(scope: !2740, file: !1109, line: 1211, column: 5)
!3104 = !DILocation(line: 1211, column: 5, scope: !3103)
!3105 = !DILocation(line: 1211, column: 5, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !1109, line: 1211, column: 5)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !1109, line: 1211, column: 5)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !1109, line: 1211, column: 5)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !1109, line: 1211, column: 5)
!3110 = distinct !DILexicalBlock(scope: !3102, file: !1109, line: 1211, column: 5)
!3111 = !DILocation(line: 1212, column: 1, scope: !2740)
!3112 = !DISubprogram(name: "Perl_newSVpvn_flags", scope: !2059, file: !2059, line: 3116, type: !3113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!462, !841, !1322, !844}
!3115 = !DISubprogram(name: "Perl_sv_utf8_upgrade_flags_grow", scope: !2059, file: !2059, line: 4790, type: !3116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!496, !831, !865, !496}
!3118 = !DISubprogram(name: "Perl_safesyscalloc", scope: !2059, file: !2059, line: 3746, type: !3119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!467, !497, !497}
!3121 = !DISubprogram(name: "Perl_sv_usepvn_flags", scope: !2059, file: !2059, line: 4757, type: !3122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{null, !831, !476, !1322, !844}
!3124 = !DISubprogram(name: "Perl_utf8n_to_uvchr", scope: !2059, file: !2059, line: 5049, type: !3125, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!482, !1078, !496, !2067, !469}
!3127 = !DISubprogram(name: "Perl_uvoffuni_to_utf8_flags", scope: !2059, file: !2059, line: 5070, type: !3128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!1055, !1055, !482, !482}
!3130 = !DISubprogram(name: "Perl_savepvn", scope: !2059, file: !2059, line: 3959, type: !3131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!476, !842, !545}
!3133 = !DISubprogram(name: "Perl_safesysfree", scope: !2059, file: !2059, line: 3750, type: !734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3134 = distinct !DISubprogram(name: "Perl_do_kv", scope: !1109, file: !1109, line: 1218, type: !705, scopeLine: 1219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3135)
!3135 = !{!3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3148, !3150, !3151, !3155}
!3136 = !DILocalVariable(name: "sp", scope: !3134, file: !1109, line: 1220, type: !530)
!3137 = !DILocalVariable(name: "keys", scope: !3134, file: !1109, line: 1221, type: !1155)
!3138 = !DILocalVariable(name: "entry", scope: !3134, file: !1109, line: 1222, type: !533)
!3139 = !DILocalVariable(name: "gimme", scope: !3134, file: !1109, line: 1223, type: !865)
!3140 = !DILocalVariable(name: "dokv", scope: !3134, file: !1109, line: 1224, type: !865)
!3141 = !DILocalVariable(name: "dokeys", scope: !3134, file: !1109, line: 1226, type: !865)
!3142 = !DILocalVariable(name: "dovalues", scope: !3134, file: !1109, line: 1227, type: !865)
!3143 = !DILocalVariable(name: "ret", scope: !3144, file: !1109, line: 1236, type: !831)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !1109, line: 1235, column: 42)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !1109, line: 1235, column: 6)
!3146 = distinct !DILexicalBlock(scope: !3147, file: !1109, line: 1234, column: 28)
!3147 = distinct !DILexicalBlock(scope: !3134, file: !1109, line: 1234, column: 9)
!3148 = !DILocalVariable(name: "i", scope: !3149, file: !1109, line: 1243, type: !479)
!3149 = distinct !DILexicalBlock(scope: !3145, file: !1109, line: 1242, column: 7)
!3150 = !DILocalVariable(name: "targ", scope: !3149, file: !1109, line: 1244, type: !462)
!3151 = !DILocalVariable(name: "sv", scope: !3152, file: !1109, line: 1262, type: !831)
!3152 = distinct !DILexicalBlock(scope: !3153, file: !1109, line: 1261, column: 14)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !1109, line: 1261, column: 6)
!3154 = distinct !DILexicalBlock(scope: !3134, file: !1109, line: 1260, column: 41)
!3155 = !DILocalVariable(name: "tmpstr", scope: !3156, file: !1109, line: 1266, type: !462)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !1109, line: 1265, column: 16)
!3157 = distinct !DILexicalBlock(scope: !3154, file: !1109, line: 1265, column: 6)
!3158 = !DILocation(line: 1220, column: 5, scope: !3134)
!3159 = !DILocation(line: 0, scope: !3134)
!3160 = !DILocation(line: 1221, column: 23, scope: !3134)
!3161 = !DILocation(line: 1223, column: 23, scope: !3134)
!3162 = !DILocation(line: 1224, column: 27, scope: !3134)
!3163 = !DILocation(line: 1224, column: 34, scope: !3134)
!3164 = !DILocation(line: 1226, column: 31, scope: !3134)
!3165 = !DILocation(line: 1226, column: 50, scope: !3134)
!3166 = !DILocation(line: 1226, column: 61, scope: !3134)
!3167 = !DILocation(line: 1227, column: 31, scope: !3134)
!3168 = !DILocation(line: 1227, column: 50, scope: !3134)
!3169 = !DILocation(line: 1227, column: 63, scope: !3134)
!3170 = !DILocation(line: 1229, column: 11, scope: !3134)
!3171 = !DILocation(line: 1231, column: 9, scope: !3134)
!3172 = !DILocation(line: 1235, column: 6, scope: !3145)
!3173 = !DILocation(line: 1235, column: 13, scope: !3145)
!3174 = !DILocation(line: 1235, column: 22, scope: !3145)
!3175 = !DILocation(line: 1235, column: 32, scope: !3145)
!3176 = !DILocation(line: 1235, column: 35, scope: !3145)
!3177 = !DILocation(line: 1235, column: 6, scope: !3146)
!3178 = !DILocation(line: 1244, column: 6, scope: !3149)
!3179 = !DILocation(line: 1236, column: 23, scope: !3144)
!3180 = !DILocation(line: 0, scope: !3144)
!3181 = !DILocation(line: 1237, column: 6, scope: !3144)
!3182 = !DILocation(line: 1238, column: 6, scope: !3144)
!3183 = !DILocation(line: 1238, column: 18, scope: !3144)
!3184 = !DILocalVariable(name: "sv", arg: 1, scope: !3185, file: !3186, line: 140, type: !462)
!3185 = distinct !DISubprogram(name: "S_SvREFCNT_inc", scope: !3186, file: !3186, line: 140, type: !3187, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3189)
!3186 = !DIFile(filename: "apps/500.perlbench_r/src/inline.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "9dcf1ef53064d59f1d960386b90ac6fb")
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!462, !462}
!3189 = !{!3184}
!3190 = !DILocation(line: 0, scope: !3185, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 1239, column: 20, scope: !3144)
!3192 = !DILocation(line: 142, column: 9, scope: !3193, inlinedAt: !3191)
!3193 = distinct !DILexicalBlock(scope: !3185, file: !3186, line: 142, column: 9)
!3194 = !DILocation(line: 142, column: 9, scope: !3185, inlinedAt: !3191)
!3195 = !DILocation(line: 143, column: 2, scope: !3193, inlinedAt: !3191)
!3196 = !DILocation(line: 143, column: 14, scope: !3193, inlinedAt: !3191)
!3197 = !DILocation(line: 1239, column: 6, scope: !3144)
!3198 = !DILocation(line: 1239, column: 18, scope: !3144)
!3199 = !DILocation(line: 1241, column: 2, scope: !3144)
!3200 = !DILocation(line: 0, scope: !3149)
!3201 = !DILocation(line: 1246, column: 12, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3149, file: !1109, line: 1246, column: 10)
!3203 = !DILocation(line: 1246, column: 10, scope: !3149)
!3204 = !DILocation(line: 1247, column: 7, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3202, file: !1109, line: 1246, column: 59)
!3206 = !DILocation(line: 1248, column: 6, scope: !3205)
!3207 = !DILocation(line: 0, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3202, file: !1109, line: 1249, column: 11)
!3209 = !DILocation(line: 1251, column: 10, scope: !3208)
!3210 = !DILocation(line: 1251, column: 3, scope: !3208)
!3211 = !DILocation(line: 1251, column: 30, scope: !3208)
!3212 = distinct !{!3212, !3210, !3211, !1210, !1211}
!3213 = !DILocation(line: 0, scope: !3202)
!3214 = !DILocation(line: 1253, column: 6, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3149, file: !1109, line: 1253, column: 6)
!3216 = !DILocation(line: 1253, column: 6, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !1109, line: 1253, column: 6)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !1109, line: 1253, column: 6)
!3219 = distinct !DILexicalBlock(scope: !3215, file: !1109, line: 1253, column: 6)
!3220 = !DILocation(line: 1253, column: 6, scope: !3218)
!3221 = !DILocation(line: 0, scope: !3145)
!3222 = !DILocation(line: 1255, column: 2, scope: !3146)
!3223 = !DILocation(line: 1258, column: 5, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !1109, line: 1258, column: 5)
!3225 = distinct !DILexicalBlock(scope: !3134, file: !1109, line: 1258, column: 5)
!3226 = !DILocation(line: 1258, column: 5, scope: !3225)
!3227 = !DILocation(line: 1258, column: 5, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3224, file: !1109, line: 1258, column: 5)
!3229 = !DILocation(line: 1260, column: 21, scope: !3134)
!3230 = !DILocation(line: 1260, column: 5, scope: !3134)
!3231 = !DILocation(line: 1265, column: 6, scope: !3154)
!3232 = !DILocation(line: 1261, column: 6, scope: !3154)
!3233 = !DILocation(line: 1262, column: 21, scope: !3152)
!3234 = !DILocation(line: 0, scope: !3152)
!3235 = !DILocation(line: 1263, column: 6, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !1109, line: 1263, column: 6)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !1109, line: 1263, column: 6)
!3238 = distinct !DILexicalBlock(scope: !3152, file: !1109, line: 1263, column: 6)
!3239 = !DILocation(line: 1263, column: 6, scope: !3237)
!3240 = !DILocation(line: 1263, column: 6, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3236, file: !1109, line: 1263, column: 6)
!3242 = !DILocation(line: 1263, column: 6, scope: !3238)
!3243 = !DILocation(line: 1267, column: 15, scope: !3156)
!3244 = !DILocation(line: 0, scope: !3156)
!3245 = !DILocation(line: 1272, column: 6, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !1109, line: 1272, column: 6)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !1109, line: 1272, column: 6)
!3248 = distinct !DILexicalBlock(scope: !3156, file: !1109, line: 1272, column: 6)
!3249 = !DILocation(line: 1272, column: 6, scope: !3247)
!3250 = !DILocation(line: 1272, column: 6, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3246, file: !1109, line: 1272, column: 6)
!3252 = !DILocation(line: 0, scope: !3154)
!3253 = !DILocation(line: 1272, column: 6, scope: !3248)
!3254 = distinct !{!3254, !3230, !3255, !1210, !1211}
!3255 = !DILocation(line: 1274, column: 5, scope: !3134)
!3256 = !DILocation(line: 1276, column: 1, scope: !3134)
!3257 = !DISubprogram(name: "Perl_block_gimme", scope: !2059, file: !2059, line: 311, type: !2556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3258 = !DISubprogram(name: "Perl_hv_iterinit", scope: !2059, file: !2059, line: 1705, type: !3259, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!545, !431}
!3261 = !DISubprogram(name: "Perl_sv_2mortal", scope: !2059, file: !2059, line: 4114, type: !3262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!462, !831}
!3264 = !DISubprogram(name: "Perl_newSV_type", scope: !2059, file: !2059, line: 3073, type: !3265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!462, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!3268 = !DISubprogram(name: "Perl_mg_find", scope: !2059, file: !2059, line: 2648, type: !3269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!446, !871, !461}
!3271 = !DISubprogram(name: "Perl_hv_placeholders_get", scope: !2059, file: !2059, line: 1765, type: !3272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!545, !1057}
!3274 = !DISubprogram(name: "Perl_hv_iternext_flags", scope: !2059, file: !2059, line: 1729, type: !3275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!533, !431, !545}
!3277 = !DISubprogram(name: "Perl_sv_setiv", scope: !2059, file: !2059, line: 4587, type: !3278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{null, !831, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!3281 = !DISubprogram(name: "Perl_stack_grow", scope: !2059, file: !2059, line: 4061, type: !3282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!530, !530, !530, !760}
!3284 = !DISubprogram(name: "Perl_hv_iterkeysv", scope: !2059, file: !2059, line: 1717, type: !3285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!462, !533}
!3287 = !DISubprogram(name: "Perl_hv_iterval", scope: !2059, file: !2059, line: 1743, type: !3288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{!462, !431, !533}
!3290 = !DISubprogram(name: "Perl_hv_common", scope: !2059, file: !2059, line: 1626, type: !3291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!467, !431, !462, !842, !496, !461, !461, !462, !469}
!3293 = !DISubprogram(name: "Perl_bytes_to_utf8", scope: !2059, file: !2059, line: 337, type: !3294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!1055, !1078, !2067}
!3296 = !DISubprogram(name: "Perl_swash_fetch", scope: !2059, file: !2059, line: 4845, type: !3297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!482, !462, !1078, !731}
!3299 = !DISubprogram(name: "Perl_ckwarn", scope: !2059, file: !2059, line: 712, type: !3300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!731, !469}
!3302 = !DISubprogram(name: "Perl_safesysmalloc", scope: !2059, file: !2059, line: 3751, type: !3303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!467, !497}
!3305 = !DISubprogram(name: "Perl_safesysrealloc", scope: !2059, file: !2059, line: 3755, type: !3306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2062)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!467, !467, !497}
