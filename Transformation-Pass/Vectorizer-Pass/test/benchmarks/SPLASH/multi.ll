; ModuleID = 'multi.c'
source_filename = "multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multi_struct = type { [14 x [8194 x [8194 x double]]], [14 x [8194 x [8194 x double]]], double, i64, [1024 x i64] }
%struct.bars_struct = type { %struct.anon, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, %struct.anon.8, %struct.anon.9, %struct.anon.10, %struct.anon.11, %struct.anon.12, %struct.anon.13, %struct.anon.14, %struct.anon.15, %struct.anon.16, %struct.anon.17, %struct.anon.18, %struct.anon.19, %struct.anon.20, %struct.anon.21 }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%struct.anon.3 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.4 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.5 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.6 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.7 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.8 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.9 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.10 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.11 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.12 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.13 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.14 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.15 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.16 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.17 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.18 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.19 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.20 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.21 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.locks_struct = type { %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t }
%struct.Global_Private = type { [4096 x i8], double, double, [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64], [14 x i64] }

@numlev = external local_unnamed_addr global i64, align 8
@maxwork = external local_unnamed_addr global double, align 8
@minlev = external local_unnamed_addr global i64, align 8
@multi = external local_unnamed_addr global ptr, align 8
@bars = external local_unnamed_addr global ptr, align 8
@nprocs = external local_unnamed_addr global i64, align 8
@locks = external local_unnamed_addr global ptr, align 8
@lev_tol = external local_unnamed_addr global [14 x double], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [42 x i8] c"ERROR: Maximum work limit %0.5f exceeded\0A\00", align 1
@do_output = external local_unnamed_addr global i64, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"iter %ld, level %ld, residual norm %12.8e, work = %7.3f\0A\00", align 1
@lev_res = external local_unnamed_addr global [14 x double], align 16
@gp = external local_unnamed_addr global ptr, align 8
@eig2 = external local_unnamed_addr global double, align 8
@i_int_coeff = external local_unnamed_addr global [14 x double], align 16
@j_int_coeff = external local_unnamed_addr global [14 x double], align 16
@imx = external local_unnamed_addr global [14 x i64], align 16
@jmx = external local_unnamed_addr global [14 x i64], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @multig(i64 noundef %my_id) local_unnamed_addr #0 !dbg !11 {
entry:
  %red_local_err = alloca double, align 8
  %black_local_err = alloca double, align 8
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !16, metadata !DIExpression()), !dbg !31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %red_local_err) #10, !dbg !32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %black_local_err) #10, !dbg !33
  call void @llvm.dbg.value(metadata i64 0, metadata !22, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 0, metadata !23, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 0, metadata !17, metadata !DIExpression()), !dbg !31
  %0 = load i64, ptr @numlev, align 8, !dbg !34
  %sub = add nsw i64 %0, -1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %sub, metadata !20, metadata !DIExpression()), !dbg !31
  %1 = load double, ptr @maxwork, align 8, !dbg !36
  call void @llvm.dbg.value(metadata double %1, metadata !26, metadata !DIExpression()), !dbg !31
  %2 = load i64, ptr @minlev, align 8, !dbg !37
  call void @llvm.dbg.value(metadata i64 %2, metadata !21, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 %my_id, metadata !25, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !18, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 %sub, metadata !24, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata double 1.000000e+30, metadata !30, metadata !DIExpression()), !dbg !31
  %cmp = icmp eq i64 %my_id, 0
  call void @llvm.dbg.value(metadata double 1.000000e+30, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 0, metadata !17, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !18, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 %sub, metadata !24, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 0, metadata !23, metadata !DIExpression()), !dbg !31
  %conv64 = sitofp i64 %sub to double
  br label %while.body.outer, !dbg !38

while.body.outer:                                 ; preds = %while.body.outer.backedge, %entry
  %g_error.0200.ph = phi double [ 1.000000e+30, %entry ], [ %g_error.0200.ph.be, %while.body.outer.backedge ]
  %iter.0199.ph = phi i64 [ 0, %entry ], [ %inc, %while.body.outer.backedge ]
  %wu.0198.ph = phi double [ 0.000000e+00, %entry ], [ %add, %while.body.outer.backedge ]
  %k.0197.ph = phi i64 [ %sub, %entry ], [ %k.0197.ph.be, %while.body.outer.backedge ]
  %conv63 = sitofp i64 %k.0197.ph to double
  %sub65 = fsub double %conv63, %conv64
  %mul192 = fmul double %sub65, 2.000000e+00
  %arrayidx = getelementptr inbounds [14 x double], ptr @lev_tol, i64 0, i64 %k.0197.ph
  %cmp130.not = icmp eq i64 %k.0197.ph, 1
  %cmp135 = icmp sgt i64 %k.0197.ph, %2
  br label %while.body, !dbg !38

while.body:                                       ; preds = %while.body.outer, %land.lhs.true
  %g_error.0200 = phi double [ %26, %land.lhs.true ], [ %g_error.0200.ph, %while.body.outer ]
  %iter.0199 = phi i64 [ %inc, %land.lhs.true ], [ %iter.0199.ph, %while.body.outer ]
  %wu.0198 = phi double [ %add, %land.lhs.true ], [ %wu.0198.ph, %while.body.outer ]
  call void @llvm.dbg.value(metadata double %g_error.0200, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 %iter.0199, metadata !17, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata double %wu.0198, metadata !18, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 %k.0197.ph, metadata !24, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata double %g_error.0200, metadata !19, metadata !DIExpression()), !dbg !31
  %inc = add nuw nsw i64 %iter.0199, 1, !dbg !39
  call void @llvm.dbg.value(metadata i64 %inc, metadata !17, metadata !DIExpression()), !dbg !31
  br i1 %cmp, label %if.then, label %if.end, !dbg !41

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr @multi, align 8, !dbg !42
  %err_multi = getelementptr inbounds %struct.multi_struct, ptr %3, i64 0, i32 2, !dbg !45
  store double 0.000000e+00, ptr %err_multi, align 8, !dbg !46
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %while.body
  %4 = load ptr, ptr @bars, align 8, !dbg !48
  %error_barrier = getelementptr inbounds %struct.bars_struct, ptr %4, i64 0, i32 19, !dbg !50
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %error_barrier) #10, !dbg !51
  %5 = load ptr, ptr @bars, align 8, !dbg !52
  %bar_teller = getelementptr inbounds %struct.bars_struct, ptr %5, i64 0, i32 19, i32 2, !dbg !53
  %6 = load i32, ptr %bar_teller, align 8, !dbg !54
  %inc3 = add i32 %6, 1, !dbg !54
  store i32 %inc3, ptr %bar_teller, align 8, !dbg !54
  %conv = zext i32 %inc3 to i64, !dbg !55
  %7 = load i64, ptr @nprocs, align 8, !dbg !57
  %cmp6 = icmp eq i64 %7, %conv, !dbg !58
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !59

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %bar_teller, align 8, !dbg !60
  %bar_cond = getelementptr inbounds %struct.bars_struct, ptr %5, i64 0, i32 19, i32 1, !dbg !62
  %call12 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #10, !dbg !63
  br label %if.end18, !dbg !64

if.else:                                          ; preds = %if.end
  %error_barrier4 = getelementptr inbounds %struct.bars_struct, ptr %5, i64 0, i32 19, !dbg !65
  %bar_cond14 = getelementptr inbounds %struct.bars_struct, ptr %5, i64 0, i32 19, i32 1, !dbg !66
  %call17 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond14, ptr noundef nonnull %error_barrier4) #10, !dbg !68
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then8
  %8 = load ptr, ptr @bars, align 8, !dbg !69
  %error_barrier19 = getelementptr inbounds %struct.bars_struct, ptr %8, i64 0, i32 19, !dbg !70
  %call21 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %error_barrier19) #10, !dbg !71
  call void @llvm.dbg.value(metadata ptr %red_local_err, metadata !28, metadata !DIExpression(DW_OP_deref)), !dbg !31
  call void @relax(i64 noundef %k.0197.ph, ptr noundef nonnull %red_local_err, i64 noundef 0, i64 noundef %my_id), !dbg !72
  %9 = load ptr, ptr @bars, align 8, !dbg !73
  %error_barrier22 = getelementptr inbounds %struct.bars_struct, ptr %9, i64 0, i32 19, !dbg !75
  %call24 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %error_barrier22) #10, !dbg !76
  %10 = load ptr, ptr @bars, align 8, !dbg !77
  %bar_teller26 = getelementptr inbounds %struct.bars_struct, ptr %10, i64 0, i32 19, i32 2, !dbg !78
  %11 = load i32, ptr %bar_teller26, align 8, !dbg !79
  %inc27 = add i32 %11, 1, !dbg !79
  store i32 %inc27, ptr %bar_teller26, align 8, !dbg !79
  %conv30 = zext i32 %inc27 to i64, !dbg !80
  %12 = load i64, ptr @nprocs, align 8, !dbg !82
  %cmp31 = icmp eq i64 %12, %conv30, !dbg !83
  br i1 %cmp31, label %if.then33, label %if.else39, !dbg !84

if.then33:                                        ; preds = %if.end18
  store i32 0, ptr %bar_teller26, align 8, !dbg !85
  %bar_cond37 = getelementptr inbounds %struct.bars_struct, ptr %10, i64 0, i32 19, i32 1, !dbg !87
  %call38 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond37) #10, !dbg !88
  br label %if.end45, !dbg !89

if.else39:                                        ; preds = %if.end18
  %error_barrier28 = getelementptr inbounds %struct.bars_struct, ptr %10, i64 0, i32 19, !dbg !90
  %bar_cond41 = getelementptr inbounds %struct.bars_struct, ptr %10, i64 0, i32 19, i32 1, !dbg !91
  %call44 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond41, ptr noundef nonnull %error_barrier28) #10, !dbg !93
  br label %if.end45

if.end45:                                         ; preds = %if.else39, %if.then33
  %13 = load ptr, ptr @bars, align 8, !dbg !94
  %error_barrier46 = getelementptr inbounds %struct.bars_struct, ptr %13, i64 0, i32 19, !dbg !95
  %call48 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %error_barrier46) #10, !dbg !96
  call void @llvm.dbg.value(metadata ptr %black_local_err, metadata !29, metadata !DIExpression(DW_OP_deref)), !dbg !31
  call void @relax(i64 noundef %k.0197.ph, ptr noundef nonnull %black_local_err, i64 noundef 1, i64 noundef %my_id), !dbg !97
  %14 = load double, ptr %red_local_err, align 8, !dbg !98
  call void @llvm.dbg.value(metadata double %14, metadata !28, metadata !DIExpression()), !dbg !31
  %15 = load double, ptr %black_local_err, align 8, !dbg !100
  call void @llvm.dbg.value(metadata double %15, metadata !29, metadata !DIExpression()), !dbg !31
  %cmp49 = fcmp ogt double %14, %15, !dbg !101
  %. = select i1 %cmp49, double %14, double %15
  call void @llvm.dbg.value(metadata double %., metadata !27, metadata !DIExpression()), !dbg !31
  %16 = load ptr, ptr @locks, align 8, !dbg !102
  %error_lock = getelementptr inbounds %struct.locks_struct, ptr %16, i64 0, i32 4, !dbg !104
  %call54 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %error_lock) #10, !dbg !105
  %17 = load ptr, ptr @multi, align 8, !dbg !106
  %err_multi55 = getelementptr inbounds %struct.multi_struct, ptr %17, i64 0, i32 2, !dbg !108
  %18 = load double, ptr %err_multi55, align 8, !dbg !108
  %cmp56 = fcmp ogt double %., %18, !dbg !109
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !110

if.then58:                                        ; preds = %if.end45
  store double %., ptr %err_multi55, align 8, !dbg !111
  br label %if.end60, !dbg !113

if.end60:                                         ; preds = %if.then58, %if.end45
  %19 = load ptr, ptr @locks, align 8, !dbg !114
  %error_lock61 = getelementptr inbounds %struct.locks_struct, ptr %19, i64 0, i32 4, !dbg !116
  %call62 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %error_lock61) #10, !dbg !117
  %exp2 = tail call double @exp2(double %mul192) #10, !dbg !118
  %add = fadd double %wu.0198, %exp2, !dbg !119
  call void @llvm.dbg.value(metadata double %add, metadata !18, metadata !DIExpression()), !dbg !31
  %20 = load ptr, ptr @bars, align 8, !dbg !120
  %error_barrier67 = getelementptr inbounds %struct.bars_struct, ptr %20, i64 0, i32 19, !dbg !122
  %call69 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %error_barrier67) #10, !dbg !123
  %21 = load ptr, ptr @bars, align 8, !dbg !124
  %bar_teller71 = getelementptr inbounds %struct.bars_struct, ptr %21, i64 0, i32 19, i32 2, !dbg !125
  %22 = load i32, ptr %bar_teller71, align 8, !dbg !126
  %inc72 = add i32 %22, 1, !dbg !126
  store i32 %inc72, ptr %bar_teller71, align 8, !dbg !126
  %conv75 = zext i32 %inc72 to i64, !dbg !127
  %23 = load i64, ptr @nprocs, align 8, !dbg !129
  %cmp76 = icmp eq i64 %23, %conv75, !dbg !130
  br i1 %cmp76, label %if.then78, label %if.else84, !dbg !131

if.then78:                                        ; preds = %if.end60
  store i32 0, ptr %bar_teller71, align 8, !dbg !132
  %bar_cond82 = getelementptr inbounds %struct.bars_struct, ptr %21, i64 0, i32 19, i32 1, !dbg !134
  %call83 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond82) #10, !dbg !135
  br label %if.end90, !dbg !136

if.else84:                                        ; preds = %if.end60
  %error_barrier73 = getelementptr inbounds %struct.bars_struct, ptr %21, i64 0, i32 19, !dbg !137
  %bar_cond86 = getelementptr inbounds %struct.bars_struct, ptr %21, i64 0, i32 19, i32 1, !dbg !138
  %call89 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond86, ptr noundef nonnull %error_barrier73) #10, !dbg !140
  br label %if.end90

if.end90:                                         ; preds = %if.else84, %if.then78
  %24 = load ptr, ptr @bars, align 8, !dbg !141
  %error_barrier91 = getelementptr inbounds %struct.bars_struct, ptr %24, i64 0, i32 19, !dbg !142
  %call93 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %error_barrier91) #10, !dbg !143
  %25 = load ptr, ptr @multi, align 8, !dbg !144
  %err_multi94 = getelementptr inbounds %struct.multi_struct, ptr %25, i64 0, i32 2, !dbg !145
  %26 = load double, ptr %err_multi94, align 8, !dbg !145
  call void @llvm.dbg.value(metadata double %26, metadata !30, metadata !DIExpression()), !dbg !31
  %27 = load ptr, ptr @bars, align 8, !dbg !146
  %error_barrier95 = getelementptr inbounds %struct.bars_struct, ptr %27, i64 0, i32 19, !dbg !148
  %call97 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %error_barrier95) #10, !dbg !149
  %28 = load ptr, ptr @bars, align 8, !dbg !150
  %bar_teller99 = getelementptr inbounds %struct.bars_struct, ptr %28, i64 0, i32 19, i32 2, !dbg !151
  %29 = load i32, ptr %bar_teller99, align 8, !dbg !152
  %inc100 = add i32 %29, 1, !dbg !152
  store i32 %inc100, ptr %bar_teller99, align 8, !dbg !152
  %conv103 = zext i32 %inc100 to i64, !dbg !153
  %30 = load i64, ptr @nprocs, align 8, !dbg !155
  %cmp104 = icmp eq i64 %30, %conv103, !dbg !156
  br i1 %cmp104, label %if.then106, label %if.else112, !dbg !157

if.then106:                                       ; preds = %if.end90
  store i32 0, ptr %bar_teller99, align 8, !dbg !158
  %bar_cond110 = getelementptr inbounds %struct.bars_struct, ptr %28, i64 0, i32 19, i32 1, !dbg !160
  %call111 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond110) #10, !dbg !161
  br label %if.end118, !dbg !162

if.else112:                                       ; preds = %if.end90
  %error_barrier101 = getelementptr inbounds %struct.bars_struct, ptr %28, i64 0, i32 19, !dbg !163
  %bar_cond114 = getelementptr inbounds %struct.bars_struct, ptr %28, i64 0, i32 19, i32 1, !dbg !164
  %call117 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond114, ptr noundef nonnull %error_barrier101) #10, !dbg !166
  br label %if.end118

if.end118:                                        ; preds = %if.else112, %if.then106
  %31 = load ptr, ptr @bars, align 8, !dbg !167
  %error_barrier119 = getelementptr inbounds %struct.bars_struct, ptr %31, i64 0, i32 19, !dbg !168
  %call121 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %error_barrier119) #10, !dbg !169
  %32 = load double, ptr %arrayidx, align 8, !dbg !170
  %cmp122 = fcmp ult double %26, %32, !dbg !172
  br i1 %cmp122, label %if.else143, label %if.then124, !dbg !173

if.then124:                                       ; preds = %if.end118
  %cmp125 = fcmp ogt double %add, %1, !dbg !174
  br i1 %cmp125, label %if.then127, label %if.else129, !dbg !177

if.then127:                                       ; preds = %if.then124
  call void @llvm.dbg.value(metadata i64 1, metadata !22, metadata !DIExpression()), !dbg !31
  %33 = load ptr, ptr @stderr, align 8, !dbg !178
  %call128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str, double noundef %1) #11, !dbg !180
  tail call void @exit(i32 noundef -1) #12, !dbg !181
  unreachable, !dbg !181

if.else129:                                       ; preds = %if.then124
  br i1 %cmp130.not, label %while.body.outer.backedge, label %land.lhs.true, !dbg !182, !llvm.loop !185

land.lhs.true:                                    ; preds = %if.else129
  %div = fdiv double %26, %g_error.0200, !dbg !189
  %cmp132 = fcmp oge double %div, 6.000000e-01, !dbg !190
  %or.cond193 = select i1 %cmp132, i1 %cmp135, i1 false, !dbg !191
  br i1 %or.cond193, label %if.then137, label %while.body, !dbg !191, !llvm.loop !185

if.then137:                                       ; preds = %land.lhs.true
  tail call void @rescal(i64 noundef %k.0197.ph, i64 noundef %my_id), !dbg !192
  %mul = fmul double %26, 3.000000e-01, !dbg !194
  %sub138 = add nsw i64 %k.0197.ph, -1, !dbg !195
  %arrayidx139 = getelementptr inbounds [14 x double], ptr @lev_tol, i64 0, i64 %sub138, !dbg !196
  store double %mul, ptr %arrayidx139, align 8, !dbg !197
  call void @llvm.dbg.value(metadata i64 %sub138, metadata !24, metadata !DIExpression()), !dbg !31
  tail call void @putz(i64 noundef %sub138, i64 noundef %my_id), !dbg !198
  call void @llvm.dbg.value(metadata double 1.000000e+30, metadata !30, metadata !DIExpression()), !dbg !31
  br label %while.body.outer.backedge, !dbg !199

if.else143:                                       ; preds = %if.end118
  %cmp144 = icmp eq i64 %k.0197.ph, %sub, !dbg !200
  br i1 %cmp144, label %while.end, label %if.else147, !dbg !203

if.else147:                                       ; preds = %if.else143
  tail call void @intadd(i64 noundef %k.0197.ph, i64 noundef %my_id), !dbg !204
  %inc148 = add nsw i64 %k.0197.ph, 1, !dbg !206
  call void @llvm.dbg.value(metadata i64 %inc148, metadata !24, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata double 1.000000e+30, metadata !30, metadata !DIExpression()), !dbg !31
  br label %while.body.outer.backedge

while.body.outer.backedge:                        ; preds = %if.else129, %if.else147, %if.then137
  %g_error.0200.ph.be = phi double [ 1.000000e+30, %if.then137 ], [ 1.000000e+30, %if.else147 ], [ %26, %if.else129 ]
  %k.0197.ph.be = phi i64 [ %sub138, %if.then137 ], [ %inc148, %if.else147 ], [ 1, %if.else129 ]
  br label %while.body.outer, !dbg !38, !llvm.loop !185

while.end:                                        ; preds = %if.else143
  call void @llvm.dbg.value(metadata double undef, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 %inc, metadata !17, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata double %add, metadata !18, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 undef, metadata !24, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i64 undef, metadata !23, metadata !DIExpression()), !dbg !31
  %34 = load i64, ptr @do_output, align 8, !dbg !207
  %tobool151 = icmp ne i64 %34, 0, !dbg !207
  %or.cond = and i1 %cmp, %tobool151, !dbg !209
  br i1 %or.cond, label %if.then155, label %if.end159, !dbg !209

if.then155:                                       ; preds = %while.end
  %35 = load ptr, ptr @multi, align 8, !dbg !210
  %err_multi156 = getelementptr inbounds %struct.multi_struct, ptr %35, i64 0, i32 2, !dbg !214
  %36 = load double, ptr %err_multi156, align 8, !dbg !214
  %call157 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, i64 noundef %inc, i64 noundef %sub, double noundef %36, double noundef %add), !dbg !215
  br label %if.end159, !dbg !216

if.end159:                                        ; preds = %if.then155, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %black_local_err) #10, !dbg !217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %red_local_err) #10, !dbg !217
  ret void, !dbg !217
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !218 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !256 i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #2

declare !dbg !299 i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !304 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @relax(i64 noundef %k, ptr nocapture noundef writeonly %err, i64 noundef %color, i64 noundef %my_num) local_unnamed_addr #4 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata i64 %k, metadata !310, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata ptr %err, metadata !311, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %color, metadata !312, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %my_num, metadata !313, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 0, metadata !314, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 0, metadata !315, metadata !DIExpression()), !dbg !333
  store double 0.000000e+00, ptr %err, align 8, !dbg !334
  %arrayidx = getelementptr inbounds [14 x double], ptr @lev_res, i64 0, i64 %k, !dbg !335
  %0 = load double, ptr %arrayidx, align 8, !dbg !335
  call void @llvm.dbg.value(metadata double %0, metadata !327, metadata !DIExpression()), !dbg !333
  %1 = load ptr, ptr @gp, align 8, !dbg !336
  %arrayidx2 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 7, i64 %k, !dbg !336
  %2 = load i64, ptr %arrayidx2, align 8, !dbg !336
  call void @llvm.dbg.value(metadata i64 %2, metadata !320, metadata !DIExpression()), !dbg !333
  %arrayidx4 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 8, i64 %k, !dbg !337
  %3 = load i64, ptr %arrayidx4, align 8, !dbg !337
  call void @llvm.dbg.value(metadata i64 %3, metadata !321, metadata !DIExpression()), !dbg !333
  %arrayidx6 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 9, i64 %k, !dbg !338
  %4 = load i64, ptr %arrayidx6, align 8, !dbg !338
  call void @llvm.dbg.value(metadata i64 %4, metadata !318, metadata !DIExpression()), !dbg !333
  %arrayidx8 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 10, i64 %k, !dbg !339
  %5 = load i64, ptr %arrayidx8, align 8, !dbg !339
  call void @llvm.dbg.value(metadata i64 %5, metadata !319, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 undef, metadata !323, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 undef, metadata !325, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 undef, metadata !322, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 undef, metadata !324, metadata !DIExpression()), !dbg !333
  %arrayidx18 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 4, i64 %k, !dbg !340
  %6 = load i64, ptr %arrayidx18, align 8, !dbg !340
  %arrayidx20 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 6, i64 %k, !dbg !341
  %7 = load i64, ptr %arrayidx20, align 8, !dbg !341
  %add = add nsw i64 %7, %6, !dbg !342
  call void @llvm.dbg.value(metadata i64 %add, metadata !316, metadata !DIExpression()), !dbg !333
  %arrayidx22 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 3, i64 %k, !dbg !343
  %8 = load i64, ptr %arrayidx22, align 8, !dbg !343
  %arrayidx24 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 5, i64 %k, !dbg !344
  %9 = load i64, ptr %arrayidx24, align 8, !dbg !344
  %add25 = add nsw i64 %9, %8, !dbg !345
  call void @llvm.dbg.value(metadata i64 %add25, metadata !317, metadata !DIExpression()), !dbg !333
  %10 = load double, ptr @eig2, align 8, !dbg !346
  %11 = fneg double %10, !dbg !347
  %neg = fmul double %0, %11, !dbg !347
  %12 = tail call double @llvm.fmuladd.f64(double %neg, double %0, double 4.000000e+00), !dbg !347
  call void @llvm.dbg.value(metadata double %12, metadata !328, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !329, metadata !DIExpression()), !dbg !333
  switch i64 %color, label %if.end233 [
    i64 0, label %for.cond.preheader
    i64 1, label %for.cond126.preheader
  ], !dbg !348

for.cond126.preheader:                            ; preds = %entry
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %2, metadata !314, metadata !DIExpression()), !dbg !333
  %cmp127402 = icmp slt i64 %2, %add, !dbg !349
  %cmp130399 = icmp slt i64 %5, %add25
  %or.cond = select i1 %cmp127402, i1 %cmp130399, i1 false, !dbg !355
  br i1 %or.cond, label %for.cond129.preheader.us, label %for.cond179.preheader, !dbg !355

for.cond129.preheader.us:                         ; preds = %for.cond126.preheader, %for.cond129.for.inc176_crit_edge.us
  %maxerr.6405.us = phi double [ %maxerr.8.us, %for.cond129.for.inc176_crit_edge.us ], [ 0.000000e+00, %for.cond126.preheader ]
  %i.2403.us = phi i64 [ %add177.us, %for.cond129.for.inc176_crit_edge.us ], [ %2, %for.cond126.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.2403.us, metadata !314, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %maxerr.6405.us, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %5, metadata !315, metadata !DIExpression()), !dbg !333
  %sub145.us = add nsw i64 %i.2403.us, -1
  %add151.us = add nsw i64 %i.2403.us, 1
  br label %for.body131.us, !dbg !356

for.body131.us:                                   ; preds = %for.cond129.preheader.us, %for.inc173.us
  %maxerr.7401.us = phi double [ %maxerr.6405.us, %for.cond129.preheader.us ], [ %maxerr.8.us, %for.inc173.us ]
  %j.2400.us = phi i64 [ %5, %for.cond129.preheader.us ], [ %add174.us, %for.inc173.us ]
  call void @llvm.dbg.value(metadata double %maxerr.7401.us, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %j.2400.us, metadata !315, metadata !DIExpression()), !dbg !333
  %13 = load ptr, ptr @multi, align 8, !dbg !359
  %add135.us = add nsw i64 %j.2400.us, 1, !dbg !362
  %arrayidx136.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %k, i64 %i.2403.us, i64 %add135.us, !dbg !359
  %14 = load double, ptr %arrayidx136.us, align 8, !dbg !359
  %sub140.us = add nsw i64 %j.2400.us, -1, !dbg !363
  %arrayidx141.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %k, i64 %i.2403.us, i64 %sub140.us, !dbg !364
  %15 = load double, ptr %arrayidx141.us, align 8, !dbg !364
  %add142.us = fadd double %14, %15, !dbg !365
  %arrayidx147.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %k, i64 %sub145.us, i64 %j.2400.us, !dbg !366
  %16 = load double, ptr %arrayidx147.us, align 8, !dbg !366
  %add148.us = fadd double %add142.us, %16, !dbg !367
  %arrayidx153.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %k, i64 %add151.us, i64 %j.2400.us, !dbg !368
  %17 = load double, ptr %arrayidx153.us, align 8, !dbg !368
  %add154.us = fadd double %add148.us, %17, !dbg !369
  %arrayidx158.us = getelementptr inbounds %struct.multi_struct, ptr %13, i64 0, i32 1, i64 %k, i64 %i.2403.us, i64 %j.2400.us, !dbg !370
  %18 = load double, ptr %arrayidx158.us, align 8, !dbg !370
  %sub159.us = fsub double %add154.us, %18, !dbg !371
  call void @llvm.dbg.value(metadata double %sub159.us, metadata !326, metadata !DIExpression()), !dbg !333
  %arrayidx163.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %k, i64 %i.2403.us, i64 %j.2400.us, !dbg !372
  %19 = load double, ptr %arrayidx163.us, align 8, !dbg !372
  call void @llvm.dbg.value(metadata double %19, metadata !331, metadata !DIExpression()), !dbg !333
  %div164.us = fdiv double %sub159.us, %12, !dbg !373
  call void @llvm.dbg.value(metadata double %div164.us, metadata !332, metadata !DIExpression()), !dbg !333
  %sub165.us = fsub double %19, %div164.us, !dbg !374
  call void @llvm.dbg.value(metadata double %sub165.us, metadata !330, metadata !DIExpression()), !dbg !333
  store double %div164.us, ptr %arrayidx163.us, align 8, !dbg !375
  %20 = tail call double @llvm.fabs.f64(double %sub165.us), !dbg !376
  %cmp170.us = fcmp ogt double %20, %maxerr.7401.us, !dbg !378
  br i1 %cmp170.us, label %if.then171.us, label %for.inc173.us, !dbg !379

if.then171.us:                                    ; preds = %for.body131.us
  call void @llvm.dbg.value(metadata double %20, metadata !329, metadata !DIExpression()), !dbg !333
  br label %for.inc173.us, !dbg !380

for.inc173.us:                                    ; preds = %if.then171.us, %for.body131.us
  %maxerr.8.us = phi double [ %20, %if.then171.us ], [ %maxerr.7401.us, %for.body131.us ], !dbg !333
  call void @llvm.dbg.value(metadata double %maxerr.8.us, metadata !329, metadata !DIExpression()), !dbg !333
  %add174.us = add nsw i64 %j.2400.us, 2, !dbg !382
  call void @llvm.dbg.value(metadata i64 %add174.us, metadata !315, metadata !DIExpression()), !dbg !333
  %cmp130.us = icmp slt i64 %add174.us, %add25, !dbg !383
  br i1 %cmp130.us, label %for.body131.us, label %for.cond129.for.inc176_crit_edge.us, !dbg !356, !llvm.loop !384

for.cond129.for.inc176_crit_edge.us:              ; preds = %for.inc173.us
  %add177.us = add nsw i64 %i.2403.us, 2, !dbg !386
  call void @llvm.dbg.value(metadata double undef, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %add177.us, metadata !314, metadata !DIExpression()), !dbg !333
  %cmp127.us = icmp slt i64 %add177.us, %add, !dbg !349
  br i1 %cmp127.us, label %for.cond129.preheader.us, label %for.cond179.preheader, !dbg !355, !llvm.loop !387

for.cond.preheader:                               ; preds = %entry
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %2, metadata !314, metadata !DIExpression()), !dbg !333
  %cmp27420 = icmp slt i64 %2, %add, !dbg !389
  %cmp29417 = icmp slt i64 %3, %add25
  %or.cond443 = select i1 %cmp27420, i1 %cmp29417, i1 false, !dbg !393
  br i1 %or.cond443, label %for.cond28.preheader.us, label %for.cond71.preheader, !dbg !393

for.cond28.preheader.us:                          ; preds = %for.cond.preheader, %for.cond28.for.inc68_crit_edge.us
  %maxerr.0423.us = phi double [ %maxerr.2.us, %for.cond28.for.inc68_crit_edge.us ], [ 0.000000e+00, %for.cond.preheader ]
  %i.0421.us = phi i64 [ %add69.us, %for.cond28.for.inc68_crit_edge.us ], [ %2, %for.cond.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.0421.us, metadata !314, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %maxerr.0423.us, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %3, metadata !315, metadata !DIExpression()), !dbg !333
  %sub42.us = add nsw i64 %i.0421.us, -1
  %add48.us = add nsw i64 %i.0421.us, 1
  br label %for.body30.us, !dbg !394

for.body30.us:                                    ; preds = %for.cond28.preheader.us, %for.inc.us
  %maxerr.1419.us = phi double [ %maxerr.0423.us, %for.cond28.preheader.us ], [ %maxerr.2.us, %for.inc.us ]
  %j.0418.us = phi i64 [ %3, %for.cond28.preheader.us ], [ %add67.us, %for.inc.us ]
  call void @llvm.dbg.value(metadata double %maxerr.1419.us, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %j.0418.us, metadata !315, metadata !DIExpression()), !dbg !333
  %21 = load ptr, ptr @multi, align 8, !dbg !397
  %add33.us = add nsw i64 %j.0418.us, 1, !dbg !400
  %arrayidx34.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %21, i64 0, i64 %k, i64 %i.0421.us, i64 %add33.us, !dbg !397
  %22 = load double, ptr %arrayidx34.us, align 8, !dbg !397
  %sub.us = add nsw i64 %j.0418.us, -1, !dbg !401
  %arrayidx38.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %21, i64 0, i64 %k, i64 %i.0421.us, i64 %sub.us, !dbg !402
  %23 = load double, ptr %arrayidx38.us, align 8, !dbg !402
  %add39.us = fadd double %22, %23, !dbg !403
  %arrayidx44.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %21, i64 0, i64 %k, i64 %sub42.us, i64 %j.0418.us, !dbg !404
  %24 = load double, ptr %arrayidx44.us, align 8, !dbg !404
  %add45.us = fadd double %add39.us, %24, !dbg !405
  %arrayidx50.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %21, i64 0, i64 %k, i64 %add48.us, i64 %j.0418.us, !dbg !406
  %25 = load double, ptr %arrayidx50.us, align 8, !dbg !406
  %add51.us = fadd double %add45.us, %25, !dbg !407
  %arrayidx54.us = getelementptr inbounds %struct.multi_struct, ptr %21, i64 0, i32 1, i64 %k, i64 %i.0421.us, i64 %j.0418.us, !dbg !408
  %26 = load double, ptr %arrayidx54.us, align 8, !dbg !408
  %sub55.us = fsub double %add51.us, %26, !dbg !409
  call void @llvm.dbg.value(metadata double %sub55.us, metadata !326, metadata !DIExpression()), !dbg !333
  %arrayidx59.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %21, i64 0, i64 %k, i64 %i.0421.us, i64 %j.0418.us, !dbg !410
  %27 = load double, ptr %arrayidx59.us, align 8, !dbg !410
  call void @llvm.dbg.value(metadata double %27, metadata !331, metadata !DIExpression()), !dbg !333
  %div.us = fdiv double %sub55.us, %12, !dbg !411
  call void @llvm.dbg.value(metadata double %div.us, metadata !332, metadata !DIExpression()), !dbg !333
  %sub60.us = fsub double %27, %div.us, !dbg !412
  call void @llvm.dbg.value(metadata double %sub60.us, metadata !330, metadata !DIExpression()), !dbg !333
  store double %div.us, ptr %arrayidx59.us, align 8, !dbg !413
  %28 = tail call double @llvm.fabs.f64(double %sub60.us), !dbg !414
  %cmp65.us = fcmp ogt double %28, %maxerr.1419.us, !dbg !416
  br i1 %cmp65.us, label %if.then66.us, label %for.inc.us, !dbg !417

if.then66.us:                                     ; preds = %for.body30.us
  call void @llvm.dbg.value(metadata double %28, metadata !329, metadata !DIExpression()), !dbg !333
  br label %for.inc.us, !dbg !418

for.inc.us:                                       ; preds = %if.then66.us, %for.body30.us
  %maxerr.2.us = phi double [ %28, %if.then66.us ], [ %maxerr.1419.us, %for.body30.us ], !dbg !333
  call void @llvm.dbg.value(metadata double %maxerr.2.us, metadata !329, metadata !DIExpression()), !dbg !333
  %add67.us = add nsw i64 %j.0418.us, 2, !dbg !420
  call void @llvm.dbg.value(metadata i64 %add67.us, metadata !315, metadata !DIExpression()), !dbg !333
  %cmp29.us = icmp slt i64 %add67.us, %add25, !dbg !421
  br i1 %cmp29.us, label %for.body30.us, label %for.cond28.for.inc68_crit_edge.us, !dbg !394, !llvm.loop !422

for.cond28.for.inc68_crit_edge.us:                ; preds = %for.inc.us
  %add69.us = add nsw i64 %i.0421.us, 2, !dbg !424
  call void @llvm.dbg.value(metadata double undef, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %add69.us, metadata !314, metadata !DIExpression()), !dbg !333
  %cmp27.us = icmp slt i64 %add69.us, %add, !dbg !389
  br i1 %cmp27.us, label %for.cond28.preheader.us, label %for.cond71.preheader, !dbg !393, !llvm.loop !425

for.cond71.preheader:                             ; preds = %for.cond28.for.inc68_crit_edge.us, %for.cond.preheader
  %maxerr.0.lcssa = phi double [ 0.000000e+00, %for.cond.preheader ], [ %maxerr.2.us, %for.cond28.for.inc68_crit_edge.us ], !dbg !427
  call void @llvm.dbg.value(metadata double %maxerr.0.lcssa, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %4, metadata !314, metadata !DIExpression()), !dbg !333
  %cmp72430 = icmp slt i64 %4, %add, !dbg !428
  %cmp75427 = icmp slt i64 %5, %add25
  %or.cond444 = select i1 %cmp72430, i1 %cmp75427, i1 false, !dbg !431
  br i1 %or.cond444, label %for.cond74.preheader.us, label %if.end233, !dbg !431

for.cond74.preheader.us:                          ; preds = %for.cond71.preheader, %for.cond74.for.inc121_crit_edge.us
  %maxerr.3433.us = phi double [ %maxerr.5.us, %for.cond74.for.inc121_crit_edge.us ], [ %maxerr.0.lcssa, %for.cond71.preheader ]
  %i.1431.us = phi i64 [ %add122.us, %for.cond74.for.inc121_crit_edge.us ], [ %4, %for.cond71.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.1431.us, metadata !314, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %maxerr.3433.us, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %5, metadata !315, metadata !DIExpression()), !dbg !333
  %sub90.us = add nsw i64 %i.1431.us, -1
  %add96.us = add nsw i64 %i.1431.us, 1
  br label %for.body76.us, !dbg !432

for.body76.us:                                    ; preds = %for.cond74.preheader.us, %for.inc118.us
  %maxerr.4429.us = phi double [ %maxerr.3433.us, %for.cond74.preheader.us ], [ %maxerr.5.us, %for.inc118.us ]
  %j.1428.us = phi i64 [ %5, %for.cond74.preheader.us ], [ %add119.us, %for.inc118.us ]
  call void @llvm.dbg.value(metadata double %maxerr.4429.us, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %j.1428.us, metadata !315, metadata !DIExpression()), !dbg !333
  %29 = load ptr, ptr @multi, align 8, !dbg !435
  %add80.us = add nsw i64 %j.1428.us, 1, !dbg !438
  %arrayidx81.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %29, i64 0, i64 %k, i64 %i.1431.us, i64 %add80.us, !dbg !435
  %30 = load double, ptr %arrayidx81.us, align 8, !dbg !435
  %sub85.us = add nsw i64 %j.1428.us, -1, !dbg !439
  %arrayidx86.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %29, i64 0, i64 %k, i64 %i.1431.us, i64 %sub85.us, !dbg !440
  %31 = load double, ptr %arrayidx86.us, align 8, !dbg !440
  %add87.us = fadd double %30, %31, !dbg !441
  %arrayidx92.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %29, i64 0, i64 %k, i64 %sub90.us, i64 %j.1428.us, !dbg !442
  %32 = load double, ptr %arrayidx92.us, align 8, !dbg !442
  %add93.us = fadd double %add87.us, %32, !dbg !443
  %arrayidx98.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %29, i64 0, i64 %k, i64 %add96.us, i64 %j.1428.us, !dbg !444
  %33 = load double, ptr %arrayidx98.us, align 8, !dbg !444
  %add99.us = fadd double %add93.us, %33, !dbg !445
  %arrayidx103.us = getelementptr inbounds %struct.multi_struct, ptr %29, i64 0, i32 1, i64 %k, i64 %i.1431.us, i64 %j.1428.us, !dbg !446
  %34 = load double, ptr %arrayidx103.us, align 8, !dbg !446
  %sub104.us = fsub double %add99.us, %34, !dbg !447
  call void @llvm.dbg.value(metadata double %sub104.us, metadata !326, metadata !DIExpression()), !dbg !333
  %arrayidx108.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %29, i64 0, i64 %k, i64 %i.1431.us, i64 %j.1428.us, !dbg !448
  %35 = load double, ptr %arrayidx108.us, align 8, !dbg !448
  call void @llvm.dbg.value(metadata double %35, metadata !331, metadata !DIExpression()), !dbg !333
  %div109.us = fdiv double %sub104.us, %12, !dbg !449
  call void @llvm.dbg.value(metadata double %div109.us, metadata !332, metadata !DIExpression()), !dbg !333
  %sub110.us = fsub double %35, %div109.us, !dbg !450
  call void @llvm.dbg.value(metadata double %sub110.us, metadata !330, metadata !DIExpression()), !dbg !333
  store double %div109.us, ptr %arrayidx108.us, align 8, !dbg !451
  %36 = tail call double @llvm.fabs.f64(double %sub110.us), !dbg !452
  %cmp115.us = fcmp ogt double %36, %maxerr.4429.us, !dbg !454
  br i1 %cmp115.us, label %if.then116.us, label %for.inc118.us, !dbg !455

if.then116.us:                                    ; preds = %for.body76.us
  call void @llvm.dbg.value(metadata double %36, metadata !329, metadata !DIExpression()), !dbg !333
  br label %for.inc118.us, !dbg !456

for.inc118.us:                                    ; preds = %if.then116.us, %for.body76.us
  %maxerr.5.us = phi double [ %36, %if.then116.us ], [ %maxerr.4429.us, %for.body76.us ], !dbg !333
  call void @llvm.dbg.value(metadata double %maxerr.5.us, metadata !329, metadata !DIExpression()), !dbg !333
  %add119.us = add nsw i64 %j.1428.us, 2, !dbg !458
  call void @llvm.dbg.value(metadata i64 %add119.us, metadata !315, metadata !DIExpression()), !dbg !333
  %cmp75.us = icmp slt i64 %add119.us, %add25, !dbg !459
  br i1 %cmp75.us, label %for.body76.us, label %for.cond74.for.inc121_crit_edge.us, !dbg !432, !llvm.loop !460

for.cond74.for.inc121_crit_edge.us:               ; preds = %for.inc118.us
  %add122.us = add nsw i64 %i.1431.us, 2, !dbg !462
  call void @llvm.dbg.value(metadata double undef, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %add122.us, metadata !314, metadata !DIExpression()), !dbg !333
  %cmp72.us = icmp slt i64 %add122.us, %add, !dbg !428
  br i1 %cmp72.us, label %for.cond74.preheader.us, label %if.end233, !dbg !431, !llvm.loop !463

for.cond179.preheader:                            ; preds = %for.cond129.for.inc176_crit_edge.us, %for.cond126.preheader
  %maxerr.6.lcssa = phi double [ 0.000000e+00, %for.cond126.preheader ], [ %maxerr.8.us, %for.cond129.for.inc176_crit_edge.us ], !dbg !427
  call void @llvm.dbg.value(metadata double %maxerr.6.lcssa, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %4, metadata !314, metadata !DIExpression()), !dbg !333
  %cmp180410 = icmp slt i64 %4, %add, !dbg !465
  %cmp183407 = icmp slt i64 %3, %add25
  %or.cond445 = select i1 %cmp180410, i1 %cmp183407, i1 false, !dbg !468
  br i1 %or.cond445, label %for.cond182.preheader.us, label %if.end233, !dbg !468

for.cond182.preheader.us:                         ; preds = %for.cond179.preheader, %for.cond182.for.inc229_crit_edge.us
  %maxerr.9413.us = phi double [ %maxerr.11.us, %for.cond182.for.inc229_crit_edge.us ], [ %maxerr.6.lcssa, %for.cond179.preheader ]
  %i.3411.us = phi i64 [ %add230.us, %for.cond182.for.inc229_crit_edge.us ], [ %4, %for.cond179.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.3411.us, metadata !314, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata double %maxerr.9413.us, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %3, metadata !315, metadata !DIExpression()), !dbg !333
  %sub198.us = add nsw i64 %i.3411.us, -1
  %add204.us = add nsw i64 %i.3411.us, 1
  br label %for.body184.us, !dbg !469

for.body184.us:                                   ; preds = %for.cond182.preheader.us, %for.inc226.us
  %maxerr.10409.us = phi double [ %maxerr.9413.us, %for.cond182.preheader.us ], [ %maxerr.11.us, %for.inc226.us ]
  %j.3408.us = phi i64 [ %3, %for.cond182.preheader.us ], [ %add227.us, %for.inc226.us ]
  call void @llvm.dbg.value(metadata double %maxerr.10409.us, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %j.3408.us, metadata !315, metadata !DIExpression()), !dbg !333
  %37 = load ptr, ptr @multi, align 8, !dbg !472
  %add188.us = add nsw i64 %j.3408.us, 1, !dbg !475
  %arrayidx189.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %37, i64 0, i64 %k, i64 %i.3411.us, i64 %add188.us, !dbg !472
  %38 = load double, ptr %arrayidx189.us, align 8, !dbg !472
  %sub193.us = add nsw i64 %j.3408.us, -1, !dbg !476
  %arrayidx194.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %37, i64 0, i64 %k, i64 %i.3411.us, i64 %sub193.us, !dbg !477
  %39 = load double, ptr %arrayidx194.us, align 8, !dbg !477
  %add195.us = fadd double %38, %39, !dbg !478
  %arrayidx200.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %37, i64 0, i64 %k, i64 %sub198.us, i64 %j.3408.us, !dbg !479
  %40 = load double, ptr %arrayidx200.us, align 8, !dbg !479
  %add201.us = fadd double %add195.us, %40, !dbg !480
  %arrayidx206.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %37, i64 0, i64 %k, i64 %add204.us, i64 %j.3408.us, !dbg !481
  %41 = load double, ptr %arrayidx206.us, align 8, !dbg !481
  %add207.us = fadd double %add201.us, %41, !dbg !482
  %arrayidx211.us = getelementptr inbounds %struct.multi_struct, ptr %37, i64 0, i32 1, i64 %k, i64 %i.3411.us, i64 %j.3408.us, !dbg !483
  %42 = load double, ptr %arrayidx211.us, align 8, !dbg !483
  %sub212.us = fsub double %add207.us, %42, !dbg !484
  call void @llvm.dbg.value(metadata double %sub212.us, metadata !326, metadata !DIExpression()), !dbg !333
  %arrayidx216.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %37, i64 0, i64 %k, i64 %i.3411.us, i64 %j.3408.us, !dbg !485
  %43 = load double, ptr %arrayidx216.us, align 8, !dbg !485
  call void @llvm.dbg.value(metadata double %43, metadata !331, metadata !DIExpression()), !dbg !333
  %div217.us = fdiv double %sub212.us, %12, !dbg !486
  call void @llvm.dbg.value(metadata double %div217.us, metadata !332, metadata !DIExpression()), !dbg !333
  %sub218.us = fsub double %43, %div217.us, !dbg !487
  call void @llvm.dbg.value(metadata double %sub218.us, metadata !330, metadata !DIExpression()), !dbg !333
  store double %div217.us, ptr %arrayidx216.us, align 8, !dbg !488
  %44 = tail call double @llvm.fabs.f64(double %sub218.us), !dbg !489
  %cmp223.us = fcmp ogt double %44, %maxerr.10409.us, !dbg !491
  br i1 %cmp223.us, label %if.then224.us, label %for.inc226.us, !dbg !492

if.then224.us:                                    ; preds = %for.body184.us
  call void @llvm.dbg.value(metadata double %44, metadata !329, metadata !DIExpression()), !dbg !333
  br label %for.inc226.us, !dbg !493

for.inc226.us:                                    ; preds = %if.then224.us, %for.body184.us
  %maxerr.11.us = phi double [ %44, %if.then224.us ], [ %maxerr.10409.us, %for.body184.us ], !dbg !333
  call void @llvm.dbg.value(metadata double %maxerr.11.us, metadata !329, metadata !DIExpression()), !dbg !333
  %add227.us = add nsw i64 %j.3408.us, 2, !dbg !495
  call void @llvm.dbg.value(metadata i64 %add227.us, metadata !315, metadata !DIExpression()), !dbg !333
  %cmp183.us = icmp slt i64 %add227.us, %add25, !dbg !496
  br i1 %cmp183.us, label %for.body184.us, label %for.cond182.for.inc229_crit_edge.us, !dbg !469, !llvm.loop !497

for.cond182.for.inc229_crit_edge.us:              ; preds = %for.inc226.us
  %add230.us = add nsw i64 %i.3411.us, 2, !dbg !499
  call void @llvm.dbg.value(metadata double undef, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i64 %add230.us, metadata !314, metadata !DIExpression()), !dbg !333
  %cmp180.us = icmp slt i64 %add230.us, %add, !dbg !465
  br i1 %cmp180.us, label %for.cond182.preheader.us, label %if.end233, !dbg !468, !llvm.loop !500

if.end233:                                        ; preds = %for.cond182.for.inc229_crit_edge.us, %for.cond74.for.inc121_crit_edge.us, %for.cond179.preheader, %for.cond71.preheader, %entry
  %maxerr.12 = phi double [ 0.000000e+00, %entry ], [ %maxerr.0.lcssa, %for.cond71.preheader ], [ %maxerr.6.lcssa, %for.cond179.preheader ], [ %maxerr.5.us, %for.cond74.for.inc121_crit_edge.us ], [ %maxerr.11.us, %for.cond182.for.inc229_crit_edge.us ], !dbg !427
  call void @llvm.dbg.value(metadata double %maxerr.12, metadata !329, metadata !DIExpression()), !dbg !333
  store double %maxerr.12, ptr %err, align 8, !dbg !502
  ret void, !dbg !503
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @rescal(i64 noundef %kf, i64 noundef %my_num) local_unnamed_addr #4 !dbg !504 {
entry:
  call void @llvm.dbg.value(metadata i64 %kf, metadata !508, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %my_num, metadata !509, metadata !DIExpression()), !dbg !532
  %sub = add nsw i64 %kf, -1, !dbg !533
  call void @llvm.dbg.value(metadata i64 %sub, metadata !514, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata double undef, metadata !520, metadata !DIExpression()), !dbg !532
  %arrayidx1 = getelementptr inbounds [14 x double], ptr @lev_res, i64 0, i64 %kf, !dbg !534
  %0 = load double, ptr %arrayidx1, align 8, !dbg !534
  call void @llvm.dbg.value(metadata double %0, metadata !519, metadata !DIExpression()), !dbg !532
  %1 = load ptr, ptr @gp, align 8, !dbg !535
  %arrayidx3 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 15, i64 %sub, !dbg !535
  %2 = load i64, ptr %arrayidx3, align 8, !dbg !535
  call void @llvm.dbg.value(metadata i64 %2, metadata !515, metadata !DIExpression()), !dbg !532
  %arrayidx5 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 16, i64 %sub, !dbg !536
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !536
  call void @llvm.dbg.value(metadata i64 %3, metadata !517, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 undef, metadata !516, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 undef, metadata !518, metadata !DIExpression()), !dbg !532
  %arrayidx11 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 4, i64 %sub, !dbg !537
  %4 = load i64, ptr %arrayidx11, align 8, !dbg !537
  %arrayidx13 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 6, i64 %sub, !dbg !538
  %5 = load i64, ptr %arrayidx13, align 8, !dbg !538
  %add = add nsw i64 %5, %4, !dbg !539
  call void @llvm.dbg.value(metadata i64 %add, metadata !516, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !532
  %arrayidx16 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 3, i64 %sub, !dbg !540
  %6 = load i64, ptr %arrayidx16, align 8, !dbg !540
  %arrayidx18 = getelementptr inbounds %struct.Global_Private, ptr %1, i64 %my_num, i32 5, i64 %sub, !dbg !541
  %7 = load i64, ptr %arrayidx18, align 8, !dbg !541
  %add19 = add nsw i64 %7, %6, !dbg !542
  call void @llvm.dbg.value(metadata i64 %add19, metadata !518, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !532
  %8 = load double, ptr @eig2, align 8, !dbg !543
  %9 = fneg double %8, !dbg !544
  %neg = fmul double %0, %9, !dbg !544
  %10 = tail call double @llvm.fmuladd.f64(double %neg, double %0, double 4.000000e+00), !dbg !544
  call void @llvm.dbg.value(metadata double %10, metadata !526, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %2, metadata !511, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !532
  call void @llvm.dbg.value(metadata i64 %2, metadata !510, metadata !DIExpression()), !dbg !532
  %cmp.not.not359 = icmp slt i64 %2, %add, !dbg !545
  br i1 %cmp.not.not359, label %for.body.lr.ph, label %for.end227, !dbg !548

for.body.lr.ph:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %2, metadata !511, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !532
  call void @llvm.dbg.value(metadata i64 %2, metadata !511, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !532
  %arrayidx25 = getelementptr inbounds [14 x double], ptr @i_int_coeff, i64 0, i64 %sub
  %sub28 = shl i64 %3, 1
  %mul29 = add i64 %sub28, -2
  %cmp31.not.not356 = icmp slt i64 %3, %add19
  %arrayidx36 = getelementptr inbounds [14 x double], ptr @j_int_coeff, i64 0, i64 %sub
  br i1 %cmp31.not.not356, label %for.body.us.preheader, label %for.end227, !dbg !549

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %sub22 = shl i64 %2, 1, !dbg !552
  call void @llvm.dbg.value(metadata i64 %sub22, metadata !511, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !532
  %mul23 = add i64 %sub22, -2, !dbg !552
  call void @llvm.dbg.value(metadata i64 %mul23, metadata !511, metadata !DIExpression()), !dbg !532
  br label %for.body.us, !dbg !548

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond30.for.inc225_crit_edge.us
  %ic.0361.us = phi i64 [ %inc226.us, %for.cond30.for.inc225_crit_edge.us ], [ %2, %for.body.us.preheader ]
  %if17.0360.us = phi i64 [ %add24.us, %for.cond30.for.inc225_crit_edge.us ], [ %mul23, %for.body.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %ic.0361.us, metadata !510, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %if17.0360.us, metadata !511, metadata !DIExpression()), !dbg !532
  %add24.us = add nsw i64 %if17.0360.us, 2, !dbg !553
  call void @llvm.dbg.value(metadata i64 %add24.us, metadata !511, metadata !DIExpression()), !dbg !532
  %conv.us = sitofp i64 %ic.0361.us to double, !dbg !554
  %11 = load double, ptr %arrayidx25, align 8, !dbg !555
  %mul26.us = fmul double %11, %conv.us, !dbg !556
  %mul27.us = fmul double %mul26.us, 5.000000e-01, !dbg !557
  call void @llvm.dbg.value(metadata double %mul27.us, metadata !529, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %mul29, metadata !512, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %3, metadata !513, metadata !DIExpression()), !dbg !532
  %sub51.us = or i64 %if17.0360.us, 1
  %add57.us = add nsw i64 %if17.0360.us, 3
  %cmp71.us = icmp eq i64 %if17.0360.us, 0
  %sub135.us = add nsw i64 %if17.0360.us, -1
  %sub216.us = fsub double 1.000000e+00, %mul27.us
  br i1 %cmp71.us, label %for.body33.us.us, label %for.body33.us364

for.body33.us364:                                 ; preds = %for.body.us, %if.end208.us
  %jf.0358.us365 = phi i64 [ %add34.us367, %if.end208.us ], [ %mul29, %for.body.us ]
  %jc.0357.us366 = phi i64 [ %inc.us389, %if.end208.us ], [ %3, %for.body.us ]
  call void @llvm.dbg.value(metadata i64 %jf.0358.us365, metadata !512, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %jc.0357.us366, metadata !513, metadata !DIExpression()), !dbg !532
  %add34.us367 = add nsw i64 %jf.0358.us365, 2, !dbg !558
  call void @llvm.dbg.value(metadata i64 %add34.us367, metadata !512, metadata !DIExpression()), !dbg !532
  %conv35.us368 = sitofp i64 %jc.0357.us366 to double, !dbg !561
  %12 = load double, ptr %arrayidx36, align 8, !dbg !562
  %mul37.us369 = fmul double %12, %conv35.us368, !dbg !563
  %mul38.us370 = fmul double %mul37.us369, 5.000000e-01, !dbg !564
  call void @llvm.dbg.value(metadata double %mul38.us370, metadata !530, metadata !DIExpression()), !dbg !532
  %13 = load ptr, ptr @multi, align 8, !dbg !565
  %add41.us371 = add nsw i64 %jf.0358.us365, 3, !dbg !566
  %arrayidx42.us372 = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %add24.us, i64 %add41.us371, !dbg !565
  %14 = load double, ptr %arrayidx42.us372, align 8, !dbg !565
  %sub46.us373 = or i64 %jf.0358.us365, 1, !dbg !567
  %arrayidx47.us374 = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %add24.us, i64 %sub46.us373, !dbg !568
  %15 = load double, ptr %arrayidx47.us374, align 8, !dbg !568
  %add48.us375 = fadd double %14, %15, !dbg !569
  %arrayidx53.us376 = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %sub51.us, i64 %add34.us367, !dbg !570
  %16 = load double, ptr %arrayidx53.us376, align 8, !dbg !570
  %add54.us377 = fadd double %add48.us375, %16, !dbg !571
  %arrayidx59.us378 = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %add57.us, i64 %add34.us367, !dbg !572
  %17 = load double, ptr %arrayidx59.us378, align 8, !dbg !572
  %add60.us379 = fadd double %add54.us377, %17, !dbg !573
  call void @llvm.dbg.value(metadata double %add60.us379, metadata !521, metadata !DIExpression()), !dbg !532
  %arrayidx63.us380 = getelementptr inbounds %struct.multi_struct, ptr %13, i64 0, i32 1, i64 %kf, i64 %add24.us, i64 %add34.us367, !dbg !574
  %18 = load double, ptr %arrayidx63.us380, align 8, !dbg !574
  %sub64.us381 = fsub double %18, %add60.us379, !dbg !575
  %arrayidx68.us382 = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %add24.us, i64 %add34.us367, !dbg !576
  %19 = load double, ptr %arrayidx68.us382, align 8, !dbg !576
  %20 = tail call double @llvm.fmuladd.f64(double %10, double %19, double %sub64.us381), !dbg !577
  %mul70.us383 = fmul double %20, 2.000000e+00, !dbg !578
  call void @llvm.dbg.value(metadata double %mul70.us383, metadata !522, metadata !DIExpression()), !dbg !532
  %cmp73.us = icmp eq i64 %jf.0358.us365, 0
  br i1 %cmp73.us, label %if.end208.us, label %if.else165.us, !dbg !579

if.else165.us:                                    ; preds = %for.body33.us364
  %sub83.us = add nsw i64 %jf.0358.us365, -1, !dbg !581
  %arrayidx84.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %add24.us, i64 %sub83.us, !dbg !583
  %21 = load double, ptr %arrayidx84.us, align 8, !dbg !583
  %add85.us = fadd double %15, %21, !dbg !584
  %arrayidx91.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %sub51.us, i64 %jf.0358.us365, !dbg !585
  %22 = load double, ptr %arrayidx91.us, align 8, !dbg !585
  %add92.us = fadd double %add85.us, %22, !dbg !586
  %arrayidx98.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %add57.us, i64 %jf.0358.us365, !dbg !587
  %23 = load double, ptr %arrayidx98.us, align 8, !dbg !587
  %add99.us = fadd double %add92.us, %23, !dbg !588
  call void @llvm.dbg.value(metadata double %add99.us, metadata !521, metadata !DIExpression()), !dbg !532
  %arrayidx104.us = getelementptr inbounds %struct.multi_struct, ptr %13, i64 0, i32 1, i64 %kf, i64 %add24.us, i64 %jf.0358.us365, !dbg !589
  %24 = load double, ptr %arrayidx104.us, align 8, !dbg !589
  %sub105.us = fsub double %24, %add99.us, !dbg !590
  %arrayidx110.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %add24.us, i64 %jf.0358.us365, !dbg !591
  %25 = load double, ptr %arrayidx110.us, align 8, !dbg !591
  %26 = tail call double @llvm.fmuladd.f64(double %10, double %25, double %sub105.us), !dbg !592
  %mul112.us = fmul double %26, 2.000000e+00, !dbg !593
  call void @llvm.dbg.value(metadata double %mul112.us, metadata !523, metadata !DIExpression()), !dbg !532
  %arrayidx125.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %if17.0360.us, i64 %add41.us371, !dbg !594
  %27 = load double, ptr %arrayidx125.us, align 8, !dbg !594
  %arrayidx131.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %if17.0360.us, i64 %sub46.us373, !dbg !597
  %28 = load double, ptr %arrayidx131.us, align 8, !dbg !597
  %add132.us = fadd double %27, %28, !dbg !598
  %arrayidx137.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %sub135.us, i64 %add34.us367, !dbg !599
  %29 = load double, ptr %arrayidx137.us, align 8, !dbg !599
  %add138.us = fadd double %add132.us, %29, !dbg !600
  %add144.us = fadd double %16, %add138.us, !dbg !601
  call void @llvm.dbg.value(metadata double %add144.us, metadata !521, metadata !DIExpression()), !dbg !532
  %arrayidx149.us = getelementptr inbounds %struct.multi_struct, ptr %13, i64 0, i32 1, i64 %kf, i64 %if17.0360.us, i64 %add34.us367, !dbg !602
  %30 = load double, ptr %arrayidx149.us, align 8, !dbg !602
  %sub150.us = fsub double %30, %add144.us, !dbg !603
  %arrayidx155.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %if17.0360.us, i64 %add34.us367, !dbg !604
  %31 = load double, ptr %arrayidx155.us, align 8, !dbg !604
  %32 = tail call double @llvm.fmuladd.f64(double %10, double %31, double %sub150.us), !dbg !605
  %mul157.us = fmul double %32, 2.000000e+00, !dbg !606
  call void @llvm.dbg.value(metadata double %mul157.us, metadata !524, metadata !DIExpression()), !dbg !532
  %arrayidx177.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %if17.0360.us, i64 %sub83.us, !dbg !607
  %33 = load double, ptr %arrayidx177.us, align 8, !dbg !607
  %add178.us = fadd double %28, %33, !dbg !610
  %arrayidx184.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %sub135.us, i64 %jf.0358.us365, !dbg !611
  %34 = load double, ptr %arrayidx184.us, align 8, !dbg !611
  %add185.us = fadd double %add178.us, %34, !dbg !612
  %add192.us = fadd double %add185.us, %22, !dbg !613
  call void @llvm.dbg.value(metadata double %add192.us, metadata !521, metadata !DIExpression()), !dbg !532
  %arrayidx198.us = getelementptr inbounds %struct.multi_struct, ptr %13, i64 0, i32 1, i64 %kf, i64 %if17.0360.us, i64 %jf.0358.us365, !dbg !614
  %35 = load double, ptr %arrayidx198.us, align 8, !dbg !614
  %sub199.us = fsub double %35, %add192.us, !dbg !615
  %arrayidx205.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %13, i64 0, i64 %kf, i64 %if17.0360.us, i64 %jf.0358.us365, !dbg !616
  %36 = load double, ptr %arrayidx205.us, align 8, !dbg !616
  %37 = tail call double @llvm.fmuladd.f64(double %10, double %36, double %sub199.us), !dbg !617
  %mul207.us = fmul double %37, 2.000000e+00, !dbg !618
  call void @llvm.dbg.value(metadata double %mul207.us, metadata !525, metadata !DIExpression()), !dbg !532
  br label %if.end208.us

if.end208.us:                                     ; preds = %if.else165.us, %for.body33.us364
  %s3.0355.us = phi double [ %mul157.us, %if.else165.us ], [ 0.000000e+00, %for.body33.us364 ]
  %s2.0351354.us = phi double [ %mul112.us, %if.else165.us ], [ 0.000000e+00, %for.body33.us364 ]
  %s4.0.us = phi double [ %mul207.us, %if.else165.us ], [ 0.000000e+00, %for.body33.us364 ], !dbg !619
  call void @llvm.dbg.value(metadata double %s4.0.us, metadata !525, metadata !DIExpression()), !dbg !532
  %sub210.us384 = fsub double 1.000000e+00, %mul38.us370, !dbg !620
  %mul211.us385 = fmul double %sub210.us384, %s3.0355.us, !dbg !621
  %38 = tail call double @llvm.fmuladd.f64(double %mul38.us370, double %s4.0.us, double %mul211.us385), !dbg !622
  call void @llvm.dbg.value(metadata double %38, metadata !527, metadata !DIExpression()), !dbg !532
  %mul214.us386 = fmul double %sub210.us384, %mul70.us383, !dbg !623
  %39 = tail call double @llvm.fmuladd.f64(double %mul38.us370, double %s2.0351354.us, double %mul214.us386), !dbg !624
  call void @llvm.dbg.value(metadata double %39, metadata !528, metadata !DIExpression()), !dbg !532
  %mul217.us387 = fmul double %sub216.us, %39, !dbg !625
  call void @llvm.dbg.value(metadata double undef, metadata !531, metadata !DIExpression()), !dbg !532
  %40 = tail call double @llvm.fmuladd.f64(double %mul27.us, double %38, double %mul217.us387), !dbg !626
  %arrayidx224.us388 = getelementptr inbounds %struct.multi_struct, ptr %13, i64 0, i32 1, i64 %sub, i64 %ic.0361.us, i64 %jc.0357.us366, !dbg !627
  store double %40, ptr %arrayidx224.us388, align 8, !dbg !628
  %inc.us389 = add nsw i64 %jc.0357.us366, 1, !dbg !629
  call void @llvm.dbg.value(metadata i64 %add34.us367, metadata !512, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %inc.us389, metadata !513, metadata !DIExpression()), !dbg !532
  %cmp31.not.not.us390 = icmp slt i64 %inc.us389, %add19, !dbg !630
  br i1 %cmp31.not.not.us390, label %for.body33.us364, label %for.cond30.for.inc225_crit_edge.us, !dbg !549, !llvm.loop !631

for.cond30.for.inc225_crit_edge.us:               ; preds = %if.end208.us, %for.body33.us.us
  %inc226.us = add nsw i64 %ic.0361.us, 1, !dbg !633
  call void @llvm.dbg.value(metadata i64 %inc226.us, metadata !510, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %add24.us, metadata !511, metadata !DIExpression()), !dbg !532
  %cmp.not.not.us = icmp slt i64 %inc226.us, %add, !dbg !545
  br i1 %cmp.not.not.us, label %for.body.us, label %for.end227, !dbg !548, !llvm.loop !634

for.body33.us.us:                                 ; preds = %for.body.us, %for.body33.us.us
  %jf.0358.us.us = phi i64 [ %add34.us.us, %for.body33.us.us ], [ %mul29, %for.body.us ]
  %jc.0357.us.us = phi i64 [ %inc.us.us, %for.body33.us.us ], [ %3, %for.body.us ]
  call void @llvm.dbg.value(metadata i64 %jf.0358.us.us, metadata !512, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata i64 %jc.0357.us.us, metadata !513, metadata !DIExpression()), !dbg !532
  %add34.us.us = add nsw i64 %jf.0358.us.us, 2, !dbg !558
  call void @llvm.dbg.value(metadata i64 %add34.us.us, metadata !512, metadata !DIExpression()), !dbg !532
  %conv35.us.us = sitofp i64 %jc.0357.us.us to double, !dbg !561
  %41 = load double, ptr %arrayidx36, align 8, !dbg !562
  %mul37.us.us = fmul double %41, %conv35.us.us, !dbg !563
  %mul38.us.us = fmul double %mul37.us.us, 5.000000e-01, !dbg !564
  call void @llvm.dbg.value(metadata double %mul38.us.us, metadata !530, metadata !DIExpression()), !dbg !532
  %42 = load ptr, ptr @multi, align 8, !dbg !565
  %add41.us.us = add nsw i64 %jf.0358.us.us, 3, !dbg !566
  %arrayidx42.us.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %42, i64 0, i64 %kf, i64 %add24.us, i64 %add41.us.us, !dbg !565
  %43 = load double, ptr %arrayidx42.us.us, align 8, !dbg !565
  %sub46.us.us = or i64 %jf.0358.us.us, 1, !dbg !567
  %arrayidx47.us.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %42, i64 0, i64 %kf, i64 %add24.us, i64 %sub46.us.us, !dbg !568
  %44 = load double, ptr %arrayidx47.us.us, align 8, !dbg !568
  %add48.us.us = fadd double %43, %44, !dbg !569
  %arrayidx53.us.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %42, i64 0, i64 %kf, i64 %sub51.us, i64 %add34.us.us, !dbg !570
  %45 = load double, ptr %arrayidx53.us.us, align 8, !dbg !570
  %add54.us.us = fadd double %add48.us.us, %45, !dbg !571
  %arrayidx59.us.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %42, i64 0, i64 %kf, i64 %add57.us, i64 %add34.us.us, !dbg !572
  %46 = load double, ptr %arrayidx59.us.us, align 8, !dbg !572
  %add60.us.us = fadd double %add54.us.us, %46, !dbg !573
  call void @llvm.dbg.value(metadata double %add60.us.us, metadata !521, metadata !DIExpression()), !dbg !532
  %arrayidx63.us.us = getelementptr inbounds %struct.multi_struct, ptr %42, i64 0, i32 1, i64 %kf, i64 %add24.us, i64 %add34.us.us, !dbg !574
  %47 = load double, ptr %arrayidx63.us.us, align 8, !dbg !574
  %sub64.us.us = fsub double %47, %add60.us.us, !dbg !575
  %arrayidx68.us.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %42, i64 0, i64 %kf, i64 %add24.us, i64 %add34.us.us, !dbg !576
  %48 = load double, ptr %arrayidx68.us.us, align 8, !dbg !576
  %49 = tail call double @llvm.fmuladd.f64(double %10, double %48, double %sub64.us.us), !dbg !577
  %mul70.us.us = fmul double %49, 2.000000e+00, !dbg !578
  call void @llvm.dbg.value(metadata double %mul70.us.us, metadata !522, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.value(metadata double undef, metadata !525, metadata !DIExpression()), !dbg !532
  %sub210.us.us = fsub double 1.000000e+00, %mul38.us.us, !dbg !620
  %mul211.us.us = fmul double %sub210.us.us, 0.000000e+00, !dbg !621
  %50 = tail call double @llvm.fmuladd.f64(double %mul38.us.us, double 0.000000e+00, double %mul211.us.us), !dbg !622
  call void @llvm.dbg.value(metadata double %50, metadata !527, metadata !DIExpression()), !dbg !532
  %mul214.us.us = fmul double %sub210.us.us, %mul70.us.us, !dbg !623
  %51 = tail call double @llvm.fmuladd.f64(double %mul38.us.us, double 0.000000e+00, double %mul214.us.us), !dbg !624
  call void @llvm.dbg.value(metadata double %51, metadata !528, metadata !DIExpression()), !dbg !532
  %mul217.us.us = fmul double %sub216.us, %51, !dbg !625
  call void @llvm.dbg.value(metadata double undef, metadata !531, metadata !DIExpression()), !dbg !532
  %52 = tail call double @llvm.fmuladd.f64(double %mul27.us, double %50, double %mul217.us.us), !dbg !626
  %arrayidx224.us.us = getelementptr inbounds %struct.multi_struct, ptr %42, i64 0, i32 1, i64 %sub, i64 %ic.0361.us, i64 %jc.0357.us.us, !dbg !627
  store double %52, ptr %arrayidx224.us.us, align 8, !dbg !628
  %inc.us.us = add nsw i64 %jc.0357.us.us, 1, !dbg !629
  call void @llvm.dbg.value(metadata i64 %inc.us.us, metadata !513, metadata !DIExpression()), !dbg !532
  %cmp31.not.not.us.us = icmp slt i64 %inc.us.us, %add19, !dbg !630
  br i1 %cmp31.not.not.us.us, label %for.body33.us.us, label %for.cond30.for.inc225_crit_edge.us, !dbg !549, !llvm.loop !631

for.end227:                                       ; preds = %for.cond30.for.inc225_crit_edge.us, %for.body.lr.ph, %entry
  ret void, !dbg !636
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @putz(i64 noundef %k, i64 noundef %my_num) local_unnamed_addr #7 !dbg !637 {
entry:
  call void @llvm.dbg.value(metadata i64 %k, metadata !639, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i64 %my_num, metadata !640, metadata !DIExpression()), !dbg !647
  %0 = load ptr, ptr @gp, align 8, !dbg !648
  %arrayidx1 = getelementptr inbounds %struct.Global_Private, ptr %0, i64 %my_num, i32 23, i64 %k, !dbg !648
  %1 = load i64, ptr %arrayidx1, align 8, !dbg !648
  call void @llvm.dbg.value(metadata i64 %1, metadata !643, metadata !DIExpression()), !dbg !647
  %arrayidx3 = getelementptr inbounds %struct.Global_Private, ptr %0, i64 %my_num, i32 24, i64 %k, !dbg !649
  %2 = load i64, ptr %arrayidx3, align 8, !dbg !649
  call void @llvm.dbg.value(metadata i64 %2, metadata !644, metadata !DIExpression()), !dbg !647
  %arrayidx5 = getelementptr inbounds %struct.Global_Private, ptr %0, i64 %my_num, i32 25, i64 %k, !dbg !650
  %3 = load i64, ptr %arrayidx5, align 8, !dbg !650
  call void @llvm.dbg.value(metadata i64 %3, metadata !645, metadata !DIExpression()), !dbg !647
  %arrayidx7 = getelementptr inbounds %struct.Global_Private, ptr %0, i64 %my_num, i32 26, i64 %k, !dbg !651
  %4 = load i64, ptr %arrayidx7, align 8, !dbg !651
  call void @llvm.dbg.value(metadata i64 %4, metadata !646, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i64 %1, metadata !641, metadata !DIExpression()), !dbg !647
  %cmp.not30 = icmp sgt i64 %1, %3, !dbg !652
  %cmp9.not28 = icmp sgt i64 %2, %4
  %or.cond = select i1 %cmp.not30, i1 true, i1 %cmp9.not28, !dbg !655
  br i1 %or.cond, label %for.end16, label %for.cond8.preheader, !dbg !655

for.cond8.preheader:                              ; preds = %entry, %for.cond8.for.inc14_crit_edge
  %i.031 = phi i64 [ %inc15, %for.cond8.for.inc14_crit_edge ], [ %1, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.031, metadata !641, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i64 %2, metadata !642, metadata !DIExpression()), !dbg !647
  br label %for.body10, !dbg !656

for.body10:                                       ; preds = %for.cond8.preheader, %for.body10
  %j.029 = phi i64 [ %2, %for.cond8.preheader ], [ %inc, %for.body10 ]
  call void @llvm.dbg.value(metadata i64 %j.029, metadata !642, metadata !DIExpression()), !dbg !647
  %5 = load ptr, ptr @multi, align 8, !dbg !659
  %arrayidx13 = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %5, i64 0, i64 %k, i64 %i.031, i64 %j.029, !dbg !659
  store double 0.000000e+00, ptr %arrayidx13, align 8, !dbg !662
  %inc = add i64 %j.029, 1, !dbg !663
  call void @llvm.dbg.value(metadata i64 %inc, metadata !642, metadata !DIExpression()), !dbg !647
  %exitcond.not = icmp eq i64 %j.029, %4, !dbg !664
  br i1 %exitcond.not, label %for.cond8.for.inc14_crit_edge, label %for.body10, !dbg !656, !llvm.loop !665

for.cond8.for.inc14_crit_edge:                    ; preds = %for.body10
  %inc15 = add i64 %i.031, 1, !dbg !667
  call void @llvm.dbg.value(metadata i64 %inc15, metadata !641, metadata !DIExpression()), !dbg !647
  %exitcond34.not = icmp eq i64 %i.031, %3, !dbg !652
  br i1 %exitcond34.not, label %for.end16, label %for.cond8.preheader, !dbg !655, !llvm.loop !668

for.end16:                                        ; preds = %for.cond8.for.inc14_crit_edge, %entry
  ret void, !dbg !670
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @intadd(i64 noundef %kc, i64 noundef %my_num) local_unnamed_addr #4 !dbg !671 {
entry:
  call void @llvm.dbg.value(metadata i64 %kc, metadata !673, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %my_num, metadata !674, metadata !DIExpression()), !dbg !696
  %add = add nsw i64 %kc, 1, !dbg !697
  call void @llvm.dbg.value(metadata i64 %add, metadata !679, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double undef, metadata !684, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata double undef, metadata !685, metadata !DIExpression()), !dbg !696
  %0 = load ptr, ptr @gp, align 8, !dbg !698
  call void @llvm.dbg.value(metadata i64 undef, metadata !680, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 undef, metadata !681, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 undef, metadata !682, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 undef, metadata !683, metadata !DIExpression()), !dbg !696
  %arrayidx11 = getelementptr inbounds %struct.Global_Private, ptr %0, i64 %my_num, i32 4, i64 %kc, !dbg !699
  %1 = load i64, ptr %arrayidx11, align 8, !dbg !699
  call void @llvm.dbg.value(metadata i64 %1, metadata !680, metadata !DIExpression()), !dbg !696
  %arrayidx13 = getelementptr inbounds %struct.Global_Private, ptr %0, i64 %my_num, i32 3, i64 %kc, !dbg !700
  %2 = load i64, ptr %arrayidx13, align 8, !dbg !700
  call void @llvm.dbg.value(metadata i64 %2, metadata !681, metadata !DIExpression()), !dbg !696
  %arrayidx18 = getelementptr inbounds %struct.Global_Private, ptr %0, i64 %my_num, i32 6, i64 %kc, !dbg !701
  %3 = load i64, ptr %arrayidx18, align 8, !dbg !701
  %add19 = add nsw i64 %3, %1, !dbg !702
  call void @llvm.dbg.value(metadata i64 %add19, metadata !682, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !696
  %arrayidx24 = getelementptr inbounds %struct.Global_Private, ptr %0, i64 %my_num, i32 5, i64 %kc, !dbg !703
  %4 = load i64, ptr %arrayidx24, align 8, !dbg !703
  %add25 = add nsw i64 %4, %2, !dbg !704
  call void @llvm.dbg.value(metadata i64 %add25, metadata !683, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !696
  call void @llvm.dbg.value(metadata i64 %1, metadata !676, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !696
  call void @llvm.dbg.value(metadata i64 %1, metadata !675, metadata !DIExpression()), !dbg !696
  %cmp.not.not286 = icmp sgt i64 %3, 0, !dbg !705
  br i1 %cmp.not.not286, label %for.body.lr.ph, label %for.end174, !dbg !708

for.body.lr.ph:                                   ; preds = %entry
  call void @llvm.dbg.value(metadata i64 %1, metadata !676, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !696
  call void @llvm.dbg.value(metadata i64 %1, metadata !676, metadata !DIExpression(DW_OP_constu, 1, DW_OP_shl, DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !696
  %arrayidx30 = getelementptr inbounds [14 x i64], ptr @imx, i64 0, i64 %kc
  %arrayidx34 = getelementptr inbounds [14 x double], ptr @i_int_coeff, i64 0, i64 %add
  %sub39 = shl i64 %2, 1
  %mul40 = add i64 %sub39, -2
  %cmp42.not.not283 = icmp sgt i64 %4, 0
  %arrayidx47 = getelementptr inbounds [14 x i64], ptr @jmx, i64 0, i64 %kc
  %arrayidx52 = getelementptr inbounds [14 x double], ptr @j_int_coeff, i64 0, i64 %add
  br i1 %cmp42.not.not283, label %for.body.us.preheader, label %for.end174, !dbg !709

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %sub27 = shl i64 %1, 1, !dbg !712
  call void @llvm.dbg.value(metadata i64 %sub27, metadata !676, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !696
  %mul = add i64 %sub27, -2, !dbg !712
  call void @llvm.dbg.value(metadata i64 %mul, metadata !676, metadata !DIExpression()), !dbg !696
  br label %for.body.us, !dbg !708

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond41.for.inc172_crit_edge.us
  %ic.0288.us = phi i64 [ %add94.us, %for.cond41.for.inc172_crit_edge.us ], [ %1, %for.body.us.preheader ]
  %if17.0287.us = phi i64 [ %add28.us, %for.cond41.for.inc172_crit_edge.us ], [ %mul, %for.body.us.preheader ]
  call void @llvm.dbg.value(metadata i64 %ic.0288.us, metadata !675, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %if17.0287.us, metadata !676, metadata !DIExpression()), !dbg !696
  %add28.us = add nsw i64 %if17.0287.us, 2, !dbg !713
  call void @llvm.dbg.value(metadata i64 %add28.us, metadata !676, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %add28.us, metadata !686, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !696
  call void @llvm.dbg.value(metadata i64 %add28.us, metadata !687, metadata !DIExpression()), !dbg !696
  %5 = load i64, ptr %arrayidx30, align 8, !dbg !714
  %sub32.us = add nsw i64 %ic.0288.us, -1, !dbg !715
  %sub31.us = xor i64 %ic.0288.us, -1, !dbg !716
  %sub33.us = add i64 %5, %sub31.us, !dbg !717
  %conv.us = sitofp i64 %sub33.us to double, !dbg !718
  %6 = load double, ptr %arrayidx34, align 8, !dbg !719
  %mul35.us = fmul double %6, %conv.us, !dbg !720
  call void @llvm.dbg.value(metadata double %mul35.us, metadata !692, metadata !DIExpression()), !dbg !696
  %conv36.us = sitofp i64 %ic.0288.us to double, !dbg !721
  %mul38.us = fmul double %6, %conv36.us, !dbg !722
  call void @llvm.dbg.value(metadata double %mul38.us, metadata !694, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %mul40, metadata !677, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %2, metadata !678, metadata !DIExpression()), !dbg !696
  %sub83.us = fsub double 1.000000e+00, %mul35.us
  %sub87.us = or i64 %if17.0287.us, 1
  %add94.us = add nsw i64 %ic.0288.us, 1
  %sub107.us = fsub double 1.000000e+00, %mul38.us
  br label %for.body44.us, !dbg !709

for.body44.us:                                    ; preds = %for.body.us, %for.body44.us
  %jf.0285.us = phi i64 [ %mul40, %for.body.us ], [ %add45.us, %for.body44.us ]
  %jc.0284.us = phi i64 [ %2, %for.body.us ], [ %add118.us, %for.body44.us ]
  call void @llvm.dbg.value(metadata i64 %jf.0285.us, metadata !677, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %jc.0284.us, metadata !678, metadata !DIExpression()), !dbg !696
  %add45.us = add nsw i64 %jf.0285.us, 2, !dbg !723
  call void @llvm.dbg.value(metadata i64 %add45.us, metadata !677, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %add45.us, metadata !688, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !696
  call void @llvm.dbg.value(metadata i64 %add45.us, metadata !689, metadata !DIExpression()), !dbg !696
  %7 = load i64, ptr %arrayidx47, align 8, !dbg !726
  %sub49.us = add nsw i64 %jc.0284.us, -1, !dbg !727
  %sub48.us = xor i64 %jc.0284.us, -1, !dbg !728
  %sub50.us = add i64 %7, %sub48.us, !dbg !729
  %conv51.us = sitofp i64 %sub50.us to double, !dbg !730
  %8 = load double, ptr %arrayidx52, align 8, !dbg !731
  %mul53.us = fmul double %8, %conv51.us, !dbg !732
  call void @llvm.dbg.value(metadata double %mul53.us, metadata !693, metadata !DIExpression()), !dbg !696
  %conv54.us = sitofp i64 %jc.0284.us to double, !dbg !733
  %mul56.us = fmul double %8, %conv54.us, !dbg !734
  call void @llvm.dbg.value(metadata double %mul56.us, metadata !695, metadata !DIExpression()), !dbg !696
  %9 = load ptr, ptr @multi, align 8, !dbg !735
  %arrayidx60.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %9, i64 0, i64 %kc, i64 %ic.0288.us, i64 %sub49.us, !dbg !735
  %10 = load double, ptr %arrayidx60.us, align 8, !dbg !735
  %sub62.us = fsub double 1.000000e+00, %mul53.us, !dbg !736
  %arrayidx66.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %9, i64 0, i64 %kc, i64 %ic.0288.us, i64 %jc.0284.us, !dbg !737
  %11 = load double, ptr %arrayidx66.us, align 8, !dbg !737
  %mul67.us = fmul double %sub62.us, %11, !dbg !738
  %12 = tail call double @llvm.fmuladd.f64(double %mul53.us, double %10, double %mul67.us), !dbg !739
  call void @llvm.dbg.value(metadata double %12, metadata !690, metadata !DIExpression()), !dbg !696
  %arrayidx73.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %9, i64 0, i64 %kc, i64 %sub32.us, i64 %sub49.us, !dbg !740
  %13 = load double, ptr %arrayidx73.us, align 8, !dbg !740
  %arrayidx80.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %9, i64 0, i64 %kc, i64 %sub32.us, i64 %jc.0284.us, !dbg !741
  %14 = load double, ptr %arrayidx80.us, align 8, !dbg !741
  %mul81.us = fmul double %sub62.us, %14, !dbg !742
  %15 = tail call double @llvm.fmuladd.f64(double %mul53.us, double %13, double %mul81.us), !dbg !743
  call void @llvm.dbg.value(metadata double %15, metadata !691, metadata !DIExpression()), !dbg !696
  %mul84.us = fmul double %sub83.us, %12, !dbg !744
  %16 = tail call double @llvm.fmuladd.f64(double %mul35.us, double %15, double %mul84.us), !dbg !745
  %sub89.us = or i64 %jf.0285.us, 1, !dbg !746
  %arrayidx90.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %9, i64 0, i64 %add, i64 %sub87.us, i64 %sub89.us, !dbg !747
  %17 = load double, ptr %arrayidx90.us, align 8, !dbg !748
  %add91.us = fadd double %17, %16, !dbg !748
  store double %add91.us, ptr %arrayidx90.us, align 8, !dbg !748
  %18 = load ptr, ptr @multi, align 8, !dbg !749
  %arrayidx97.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %18, i64 0, i64 %kc, i64 %add94.us, i64 %sub49.us, !dbg !749
  %19 = load double, ptr %arrayidx97.us, align 8, !dbg !749
  %arrayidx104.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %18, i64 0, i64 %kc, i64 %add94.us, i64 %jc.0284.us, !dbg !750
  %20 = load double, ptr %arrayidx104.us, align 8, !dbg !750
  %mul105.us = fmul double %sub62.us, %20, !dbg !751
  %21 = tail call double @llvm.fmuladd.f64(double %mul53.us, double %19, double %mul105.us), !dbg !752
  call void @llvm.dbg.value(metadata double %21, metadata !691, metadata !DIExpression()), !dbg !696
  %mul108.us = fmul double %sub107.us, %12, !dbg !753
  %22 = tail call double @llvm.fmuladd.f64(double %mul38.us, double %21, double %mul108.us), !dbg !754
  %arrayidx113.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %18, i64 0, i64 %add, i64 %add28.us, i64 %sub89.us, !dbg !755
  %23 = load double, ptr %arrayidx113.us, align 8, !dbg !756
  %add114.us = fadd double %23, %22, !dbg !756
  store double %add114.us, ptr %arrayidx113.us, align 8, !dbg !756
  %24 = load ptr, ptr @multi, align 8, !dbg !757
  %add118.us = add nsw i64 %jc.0284.us, 1, !dbg !758
  %arrayidx119.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %24, i64 0, i64 %kc, i64 %ic.0288.us, i64 %add118.us, !dbg !757
  %25 = load double, ptr %arrayidx119.us, align 8, !dbg !757
  %sub121.us = fsub double 1.000000e+00, %mul56.us, !dbg !759
  %arrayidx125.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %24, i64 0, i64 %kc, i64 %ic.0288.us, i64 %jc.0284.us, !dbg !760
  %26 = load double, ptr %arrayidx125.us, align 8, !dbg !760
  %mul126.us = fmul double %sub121.us, %26, !dbg !761
  %27 = tail call double @llvm.fmuladd.f64(double %mul56.us, double %25, double %mul126.us), !dbg !762
  call void @llvm.dbg.value(metadata double %27, metadata !690, metadata !DIExpression()), !dbg !696
  %arrayidx132.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %24, i64 0, i64 %kc, i64 %sub32.us, i64 %add118.us, !dbg !763
  %28 = load double, ptr %arrayidx132.us, align 8, !dbg !763
  %arrayidx139.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %24, i64 0, i64 %kc, i64 %sub32.us, i64 %jc.0284.us, !dbg !764
  %29 = load double, ptr %arrayidx139.us, align 8, !dbg !764
  %mul140.us = fmul double %sub121.us, %29, !dbg !765
  %30 = tail call double @llvm.fmuladd.f64(double %mul56.us, double %28, double %mul140.us), !dbg !766
  call void @llvm.dbg.value(metadata double %30, metadata !691, metadata !DIExpression()), !dbg !696
  %mul143.us = fmul double %sub83.us, %27, !dbg !767
  %31 = tail call double @llvm.fmuladd.f64(double %mul35.us, double %30, double %mul143.us), !dbg !768
  %arrayidx148.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %24, i64 0, i64 %add, i64 %sub87.us, i64 %add45.us, !dbg !769
  %32 = load double, ptr %arrayidx148.us, align 8, !dbg !770
  %add149.us = fadd double %32, %31, !dbg !770
  store double %add149.us, ptr %arrayidx148.us, align 8, !dbg !770
  %33 = load ptr, ptr @multi, align 8, !dbg !771
  %arrayidx155.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %33, i64 0, i64 %kc, i64 %add94.us, i64 %add118.us, !dbg !771
  %34 = load double, ptr %arrayidx155.us, align 8, !dbg !771
  %arrayidx162.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %33, i64 0, i64 %kc, i64 %add94.us, i64 %jc.0284.us, !dbg !772
  %35 = load double, ptr %arrayidx162.us, align 8, !dbg !772
  %mul163.us = fmul double %sub121.us, %35, !dbg !773
  %36 = tail call double @llvm.fmuladd.f64(double %mul56.us, double %34, double %mul163.us), !dbg !774
  call void @llvm.dbg.value(metadata double %36, metadata !691, metadata !DIExpression()), !dbg !696
  %mul166.us = fmul double %sub107.us, %27, !dbg !775
  %37 = tail call double @llvm.fmuladd.f64(double %mul38.us, double %36, double %mul166.us), !dbg !776
  %arrayidx170.us = getelementptr inbounds [14 x [8194 x [8194 x double]]], ptr %33, i64 0, i64 %add, i64 %add28.us, i64 %add45.us, !dbg !777
  %38 = load double, ptr %arrayidx170.us, align 8, !dbg !778
  %add171.us = fadd double %38, %37, !dbg !778
  store double %add171.us, ptr %arrayidx170.us, align 8, !dbg !778
  call void @llvm.dbg.value(metadata i64 %add118.us, metadata !678, metadata !DIExpression()), !dbg !696
  %cmp42.not.not.us = icmp slt i64 %add118.us, %add25, !dbg !779
  br i1 %cmp42.not.not.us, label %for.body44.us, label %for.cond41.for.inc172_crit_edge.us, !dbg !709, !llvm.loop !780

for.cond41.for.inc172_crit_edge.us:               ; preds = %for.body44.us
  call void @llvm.dbg.value(metadata i64 %add94.us, metadata !675, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %add28.us, metadata !676, metadata !DIExpression()), !dbg !696
  %cmp.not.not.us = icmp slt i64 %add94.us, %add19, !dbg !705
  br i1 %cmp.not.not.us, label %for.body.us, label %for.end174, !dbg !708, !llvm.loop !782

for.end174:                                       ; preds = %for.cond41.for.inc172_crit_edge.us, %for.body.lr.ph, %entry
  ret void, !dbg !784
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

declare double @exp2(double) local_unnamed_addr

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "multi.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/ocean/non_contiguous_partitions", checksumkind: CSK_MD5, checksum: "ba40734c8ac77e72c5b95eb67ff4d448")
!2 = !{!3}
!3 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!11 = distinct !DISubprogram(name: "multig", scope: !1, file: !1, line: 31, type: !12, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!16 = !DILocalVariable(name: "my_id", arg: 1, scope: !11, file: !1, line: 31, type: !14)
!17 = !DILocalVariable(name: "iter", scope: !11, file: !1, line: 33, type: !14)
!18 = !DILocalVariable(name: "wu", scope: !11, file: !1, line: 34, type: !3)
!19 = !DILocalVariable(name: "errp", scope: !11, file: !1, line: 35, type: !3)
!20 = !DILocalVariable(name: "m", scope: !11, file: !1, line: 36, type: !14)
!21 = !DILocalVariable(name: "minlevel", scope: !11, file: !1, line: 37, type: !14)
!22 = !DILocalVariable(name: "flag1", scope: !11, file: !1, line: 38, type: !14)
!23 = !DILocalVariable(name: "flag2", scope: !11, file: !1, line: 39, type: !14)
!24 = !DILocalVariable(name: "k", scope: !11, file: !1, line: 40, type: !14)
!25 = !DILocalVariable(name: "my_num", scope: !11, file: !1, line: 41, type: !14)
!26 = !DILocalVariable(name: "wmax", scope: !11, file: !1, line: 42, type: !3)
!27 = !DILocalVariable(name: "local_err", scope: !11, file: !1, line: 43, type: !3)
!28 = !DILocalVariable(name: "red_local_err", scope: !11, file: !1, line: 44, type: !3)
!29 = !DILocalVariable(name: "black_local_err", scope: !11, file: !1, line: 45, type: !3)
!30 = !DILocalVariable(name: "g_error", scope: !11, file: !1, line: 46, type: !3)
!31 = !DILocation(line: 0, scope: !11)
!32 = !DILocation(line: 44, column: 4, scope: !11)
!33 = !DILocation(line: 45, column: 4, scope: !11)
!34 = !DILocation(line: 51, column: 8, scope: !11)
!35 = !DILocation(line: 51, column: 14, scope: !11)
!36 = !DILocation(line: 52, column: 11, scope: !11)
!37 = !DILocation(line: 53, column: 15, scope: !11)
!38 = !DILocation(line: 59, column: 4, scope: !11)
!39 = !DILocation(line: 61, column: 10, scope: !40)
!40 = distinct !DILexicalBlock(scope: !11, file: !1, line: 59, column: 33)
!41 = !DILocation(line: 62, column: 10, scope: !40)
!42 = !DILocation(line: 63, column: 8, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 62, column: 28)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 62, column: 10)
!45 = !DILocation(line: 63, column: 15, scope: !43)
!46 = !DILocation(line: 63, column: 25, scope: !43)
!47 = !DILocation(line: 64, column: 6, scope: !43)
!48 = !DILocation(line: 70, column: 23, scope: !49)
!49 = distinct !DILexicalBlock(scope: !40, file: !1, line: 69, column: 6)
!50 = !DILocation(line: 70, column: 29, scope: !49)
!51 = !DILocation(line: 70, column: 1, scope: !49)
!52 = !DILocation(line: 71, column: 2, scope: !49)
!53 = !DILocation(line: 71, column: 23, scope: !49)
!54 = !DILocation(line: 71, column: 33, scope: !49)
!55 = !DILocation(line: 72, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 72, column: 5)
!57 = !DILocation(line: 72, column: 42, scope: !56)
!58 = !DILocation(line: 72, column: 38, scope: !56)
!59 = !DILocation(line: 72, column: 5, scope: !49)
!60 = !DILocation(line: 73, column: 35, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 72, column: 51)
!62 = !DILocation(line: 74, column: 49, scope: !61)
!63 = !DILocation(line: 74, column: 2, scope: !61)
!64 = !DILocation(line: 75, column: 1, scope: !61)
!65 = !DILocation(line: 72, column: 12, scope: !56)
!66 = !DILocation(line: 76, column: 44, scope: !67)
!67 = distinct !DILexicalBlock(scope: !56, file: !1, line: 75, column: 8)
!68 = !DILocation(line: 76, column: 2, scope: !67)
!69 = !DILocation(line: 78, column: 25, scope: !49)
!70 = !DILocation(line: 78, column: 31, scope: !49)
!71 = !DILocation(line: 78, column: 1, scope: !49)
!72 = !DILocation(line: 81, column: 6, scope: !40)
!73 = !DILocation(line: 86, column: 23, scope: !74)
!74 = distinct !DILexicalBlock(scope: !40, file: !1, line: 85, column: 6)
!75 = !DILocation(line: 86, column: 29, scope: !74)
!76 = !DILocation(line: 86, column: 1, scope: !74)
!77 = !DILocation(line: 87, column: 2, scope: !74)
!78 = !DILocation(line: 87, column: 23, scope: !74)
!79 = !DILocation(line: 87, column: 33, scope: !74)
!80 = !DILocation(line: 88, column: 5, scope: !81)
!81 = distinct !DILexicalBlock(scope: !74, file: !1, line: 88, column: 5)
!82 = !DILocation(line: 88, column: 42, scope: !81)
!83 = !DILocation(line: 88, column: 38, scope: !81)
!84 = !DILocation(line: 88, column: 5, scope: !74)
!85 = !DILocation(line: 89, column: 35, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 88, column: 51)
!87 = !DILocation(line: 90, column: 49, scope: !86)
!88 = !DILocation(line: 90, column: 2, scope: !86)
!89 = !DILocation(line: 91, column: 1, scope: !86)
!90 = !DILocation(line: 88, column: 12, scope: !81)
!91 = !DILocation(line: 92, column: 44, scope: !92)
!92 = distinct !DILexicalBlock(scope: !81, file: !1, line: 91, column: 8)
!93 = !DILocation(line: 92, column: 2, scope: !92)
!94 = !DILocation(line: 94, column: 25, scope: !74)
!95 = !DILocation(line: 94, column: 31, scope: !74)
!96 = !DILocation(line: 94, column: 1, scope: !74)
!97 = !DILocation(line: 97, column: 6, scope: !40)
!98 = !DILocation(line: 101, column: 10, scope: !99)
!99 = distinct !DILexicalBlock(scope: !40, file: !1, line: 101, column: 10)
!100 = !DILocation(line: 101, column: 26, scope: !99)
!101 = !DILocation(line: 101, column: 24, scope: !99)
!102 = !DILocation(line: 109, column: 28, scope: !103)
!103 = distinct !DILexicalBlock(scope: !40, file: !1, line: 109, column: 6)
!104 = !DILocation(line: 109, column: 35, scope: !103)
!105 = !DILocation(line: 109, column: 7, scope: !103)
!106 = !DILocation(line: 110, column: 22, scope: !107)
!107 = distinct !DILexicalBlock(scope: !40, file: !1, line: 110, column: 10)
!108 = !DILocation(line: 110, column: 29, scope: !107)
!109 = !DILocation(line: 110, column: 20, scope: !107)
!110 = !DILocation(line: 110, column: 10, scope: !40)
!111 = !DILocation(line: 111, column: 25, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 110, column: 40)
!113 = !DILocation(line: 112, column: 6, scope: !112)
!114 = !DILocation(line: 113, column: 30, scope: !115)
!115 = distinct !DILexicalBlock(scope: !40, file: !1, line: 113, column: 6)
!116 = !DILocation(line: 113, column: 37, scope: !115)
!117 = !DILocation(line: 113, column: 7, scope: !115)
!118 = !DILocation(line: 118, column: 10, scope: !40)
!119 = !DILocation(line: 118, column: 8, scope: !40)
!120 = !DILocation(line: 123, column: 23, scope: !121)
!121 = distinct !DILexicalBlock(scope: !40, file: !1, line: 122, column: 6)
!122 = !DILocation(line: 123, column: 29, scope: !121)
!123 = !DILocation(line: 123, column: 1, scope: !121)
!124 = !DILocation(line: 124, column: 2, scope: !121)
!125 = !DILocation(line: 124, column: 23, scope: !121)
!126 = !DILocation(line: 124, column: 33, scope: !121)
!127 = !DILocation(line: 125, column: 5, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !1, line: 125, column: 5)
!129 = !DILocation(line: 125, column: 42, scope: !128)
!130 = !DILocation(line: 125, column: 38, scope: !128)
!131 = !DILocation(line: 125, column: 5, scope: !121)
!132 = !DILocation(line: 126, column: 35, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 125, column: 51)
!134 = !DILocation(line: 127, column: 49, scope: !133)
!135 = !DILocation(line: 127, column: 2, scope: !133)
!136 = !DILocation(line: 128, column: 1, scope: !133)
!137 = !DILocation(line: 125, column: 12, scope: !128)
!138 = !DILocation(line: 129, column: 44, scope: !139)
!139 = distinct !DILexicalBlock(scope: !128, file: !1, line: 128, column: 8)
!140 = !DILocation(line: 129, column: 2, scope: !139)
!141 = !DILocation(line: 131, column: 25, scope: !121)
!142 = !DILocation(line: 131, column: 31, scope: !121)
!143 = !DILocation(line: 131, column: 1, scope: !121)
!144 = !DILocation(line: 134, column: 16, scope: !40)
!145 = !DILocation(line: 134, column: 23, scope: !40)
!146 = !DILocation(line: 140, column: 23, scope: !147)
!147 = distinct !DILexicalBlock(scope: !40, file: !1, line: 139, column: 6)
!148 = !DILocation(line: 140, column: 29, scope: !147)
!149 = !DILocation(line: 140, column: 1, scope: !147)
!150 = !DILocation(line: 141, column: 2, scope: !147)
!151 = !DILocation(line: 141, column: 23, scope: !147)
!152 = !DILocation(line: 141, column: 33, scope: !147)
!153 = !DILocation(line: 142, column: 5, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !1, line: 142, column: 5)
!155 = !DILocation(line: 142, column: 42, scope: !154)
!156 = !DILocation(line: 142, column: 38, scope: !154)
!157 = !DILocation(line: 142, column: 5, scope: !147)
!158 = !DILocation(line: 143, column: 35, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 142, column: 51)
!160 = !DILocation(line: 144, column: 49, scope: !159)
!161 = !DILocation(line: 144, column: 2, scope: !159)
!162 = !DILocation(line: 145, column: 1, scope: !159)
!163 = !DILocation(line: 142, column: 12, scope: !154)
!164 = !DILocation(line: 146, column: 44, scope: !165)
!165 = distinct !DILexicalBlock(scope: !154, file: !1, line: 145, column: 8)
!166 = !DILocation(line: 146, column: 2, scope: !165)
!167 = !DILocation(line: 148, column: 25, scope: !147)
!168 = !DILocation(line: 148, column: 31, scope: !147)
!169 = !DILocation(line: 148, column: 1, scope: !147)
!170 = !DILocation(line: 151, column: 21, scope: !171)
!171 = distinct !DILexicalBlock(scope: !40, file: !1, line: 151, column: 10)
!172 = !DILocation(line: 151, column: 18, scope: !171)
!173 = !DILocation(line: 151, column: 10, scope: !40)
!174 = !DILocation(line: 152, column: 15, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 152, column: 12)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 151, column: 33)
!177 = !DILocation(line: 152, column: 12, scope: !176)
!178 = !DILocation(line: 155, column: 18, scope: !179)
!179 = distinct !DILexicalBlock(scope: !175, file: !1, line: 152, column: 23)
!180 = !DILocation(line: 155, column: 10, scope: !179)
!181 = !DILocation(line: 156, column: 10, scope: !179)
!182 = !DILocation(line: 159, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 159, column: 14)
!184 = distinct !DILexicalBlock(scope: !175, file: !1, line: 157, column: 15)
!185 = distinct !{!185, !38, !186, !187, !188}
!186 = !DILocation(line: 182, column: 4, scope: !11)
!187 = !{!"llvm.loop.mustprogress"}
!188 = !{!"llvm.loop.unroll.disable"}
!189 = !DILocation(line: 159, column: 34, scope: !183)
!190 = !DILocation(line: 159, column: 40, scope: !183)
!191 = !DILocation(line: 159, column: 48, scope: !183)
!192 = !DILocation(line: 161, column: 12, scope: !193)
!193 = distinct !DILexicalBlock(scope: !183, file: !1, line: 159, column: 67)
!194 = !DILocation(line: 163, column: 31, scope: !193)
!195 = !DILocation(line: 163, column: 21, scope: !193)
!196 = !DILocation(line: 163, column: 12, scope: !193)
!197 = !DILocation(line: 163, column: 25, scope: !193)
!198 = !DILocation(line: 165, column: 12, scope: !193)
!199 = !DILocation(line: 168, column: 10, scope: !193)
!200 = !DILocation(line: 172, column: 14, scope: !201)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 172, column: 12)
!202 = distinct !DILexicalBlock(scope: !171, file: !1, line: 170, column: 13)
!203 = !DILocation(line: 172, column: 12, scope: !202)
!204 = !DILocation(line: 177, column: 10, scope: !205)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 175, column: 15)
!206 = !DILocation(line: 178, column: 11, scope: !205)
!207 = !DILocation(line: 183, column: 8, scope: !208)
!208 = distinct !DILexicalBlock(scope: !11, file: !1, line: 183, column: 8)
!209 = !DILocation(line: 183, column: 8, scope: !11)
!210 = !DILocation(line: 185, column: 83, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !1, line: 184, column: 28)
!212 = distinct !DILexicalBlock(scope: !213, file: !1, line: 184, column: 10)
!213 = distinct !DILexicalBlock(scope: !208, file: !1, line: 183, column: 19)
!214 = !DILocation(line: 185, column: 90, scope: !211)
!215 = !DILocation(line: 185, column: 8, scope: !211)
!216 = !DILocation(line: 186, column: 6, scope: !211)
!217 = !DILocation(line: 188, column: 1, scope: !11)
!218 = !DISubprogram(name: "pthread_mutex_lock", scope: !219, file: !219, line: 738, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !255)
!219 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !223}
!222 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !225, line: 72, baseType: !226)
!225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !225, line: 67, size: 320, elements: !227)
!227 = !{!228, !249, !254}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !226, file: !225, line: 69, baseType: !229, size: 320)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !230, line: 22, size: 320, elements: !231)
!230 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!231 = !{!232, !233, !235, !236, !237, !238, !240, !241}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !229, file: !230, line: 24, baseType: !222, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !229, file: !230, line: 25, baseType: !234, size: 32, offset: 32)
!234 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !229, file: !230, line: 26, baseType: !222, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !229, file: !230, line: 28, baseType: !234, size: 32, offset: 96)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !229, file: !230, line: 32, baseType: !222, size: 32, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !229, file: !230, line: 34, baseType: !239, size: 16, offset: 160)
!239 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !229, file: !230, line: 35, baseType: !239, size: 16, offset: 176)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !229, file: !230, line: 36, baseType: !242, size: 128, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !243, line: 53, baseType: !244)
!243 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !243, line: 49, size: 128, elements: !245)
!245 = !{!246, !248}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !244, file: !243, line: 51, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !244, file: !243, line: 52, baseType: !247, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !226, file: !225, line: 70, baseType: !250, size: 320)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 320, elements: !252)
!251 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!252 = !{!253}
!253 = !DISubrange(count: 40)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !226, file: !225, line: 71, baseType: !14, size: 64)
!255 = !{}
!256 = !DISubprogram(name: "pthread_cond_broadcast", scope: !219, file: !219, line: 978, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !255)
!257 = !DISubroutineType(types: !258)
!258 = !{!222, !259}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !225, line: 80, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !225, line: 75, size: 384, elements: !262)
!262 = !{!263, !293, !297}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !261, file: !225, line: 77, baseType: !264, size: 384)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !243, line: 92, size: 384, elements: !265)
!265 = !{!266, !276, !285, !289, !290, !291, !292}
!266 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !243, line: 94, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !243, line: 94, size: 64, elements: !268)
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !267, file: !243, line: 96, baseType: !270, size: 64)
!270 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !267, file: !243, line: 101, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !243, line: 97, size: 64, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !272, file: !243, line: 99, baseType: !234, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !272, file: !243, line: 100, baseType: !234, size: 32, offset: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !264, file: !243, line: 103, baseType: !277, size: 64, offset: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !243, line: 103, size: 64, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !277, file: !243, line: 105, baseType: !270, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !277, file: !243, line: 110, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !277, file: !243, line: 106, size: 64, elements: !282)
!282 = !{!283, !284}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !281, file: !243, line: 108, baseType: !234, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !281, file: !243, line: 109, baseType: !234, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !264, file: !243, line: 112, baseType: !286, size: 64, offset: 128)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 64, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 2)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !264, file: !243, line: 113, baseType: !286, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !264, file: !243, line: 114, baseType: !234, size: 32, offset: 256)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !264, file: !243, line: 115, baseType: !234, size: 32, offset: 288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !264, file: !243, line: 116, baseType: !286, size: 64, offset: 320)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !261, file: !225, line: 78, baseType: !294, size: 384)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 384, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 48)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !261, file: !225, line: 79, baseType: !298, size: 64)
!298 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!299 = !DISubprogram(name: "pthread_cond_wait", scope: !219, file: !219, line: 986, type: !300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !255)
!300 = !DISubroutineType(types: !301)
!301 = !{!222, !302, !303}
!302 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !259)
!303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !223)
!304 = !DISubprogram(name: "pthread_mutex_unlock", scope: !219, file: !219, line: 756, type: !220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !255)
!305 = distinct !DISubprogram(name: "relax", scope: !1, file: !1, line: 191, type: !306, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !309)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !14, !308, !14, !14}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!310 = !DILocalVariable(name: "k", arg: 1, scope: !305, file: !1, line: 191, type: !14)
!311 = !DILocalVariable(name: "err", arg: 2, scope: !305, file: !1, line: 191, type: !308)
!312 = !DILocalVariable(name: "color", arg: 3, scope: !305, file: !1, line: 191, type: !14)
!313 = !DILocalVariable(name: "my_num", arg: 4, scope: !305, file: !1, line: 191, type: !14)
!314 = !DILocalVariable(name: "i", scope: !305, file: !1, line: 193, type: !14)
!315 = !DILocalVariable(name: "j", scope: !305, file: !1, line: 194, type: !14)
!316 = !DILocalVariable(name: "iend", scope: !305, file: !1, line: 195, type: !14)
!317 = !DILocalVariable(name: "jend", scope: !305, file: !1, line: 196, type: !14)
!318 = !DILocalVariable(name: "oddistart", scope: !305, file: !1, line: 197, type: !14)
!319 = !DILocalVariable(name: "oddjstart", scope: !305, file: !1, line: 198, type: !14)
!320 = !DILocalVariable(name: "evenistart", scope: !305, file: !1, line: 199, type: !14)
!321 = !DILocalVariable(name: "evenjstart", scope: !305, file: !1, line: 200, type: !14)
!322 = !DILocalVariable(name: "oddiendst", scope: !305, file: !1, line: 201, type: !14)
!323 = !DILocalVariable(name: "eveniendst", scope: !305, file: !1, line: 202, type: !14)
!324 = !DILocalVariable(name: "oddjendst", scope: !305, file: !1, line: 203, type: !14)
!325 = !DILocalVariable(name: "evenjendst", scope: !305, file: !1, line: 204, type: !14)
!326 = !DILocalVariable(name: "a", scope: !305, file: !1, line: 205, type: !3)
!327 = !DILocalVariable(name: "h", scope: !305, file: !1, line: 206, type: !3)
!328 = !DILocalVariable(name: "factor", scope: !305, file: !1, line: 207, type: !3)
!329 = !DILocalVariable(name: "maxerr", scope: !305, file: !1, line: 208, type: !3)
!330 = !DILocalVariable(name: "newerr", scope: !305, file: !1, line: 209, type: !3)
!331 = !DILocalVariable(name: "oldval", scope: !305, file: !1, line: 210, type: !3)
!332 = !DILocalVariable(name: "newval", scope: !305, file: !1, line: 211, type: !3)
!333 = !DILocation(line: 0, scope: !305)
!334 = !DILocation(line: 216, column: 9, scope: !305)
!335 = !DILocation(line: 217, column: 8, scope: !305)
!336 = !DILocation(line: 222, column: 17, scope: !305)
!337 = !DILocation(line: 223, column: 17, scope: !305)
!338 = !DILocation(line: 224, column: 16, scope: !305)
!339 = !DILocation(line: 225, column: 16, scope: !305)
!340 = !DILocation(line: 231, column: 11, scope: !305)
!341 = !DILocation(line: 231, column: 39, scope: !305)
!342 = !DILocation(line: 231, column: 37, scope: !305)
!343 = !DILocation(line: 232, column: 11, scope: !305)
!344 = !DILocation(line: 232, column: 39, scope: !305)
!345 = !DILocation(line: 232, column: 37, scope: !305)
!346 = !DILocation(line: 234, column: 19, scope: !305)
!347 = !DILocation(line: 234, column: 17, scope: !305)
!348 = !DILocation(line: 236, column: 8, scope: !305)
!349 = !DILocation(line: 266, column: 25, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !1, line: 266, column: 6)
!351 = distinct !DILexicalBlock(scope: !352, file: !1, line: 266, column: 6)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 265, column: 36)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 265, column: 15)
!354 = distinct !DILexicalBlock(scope: !305, file: !1, line: 236, column: 8)
!355 = !DILocation(line: 266, column: 6, scope: !351)
!356 = !DILocation(line: 267, column: 8, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 267, column: 8)
!358 = distinct !DILexicalBlock(scope: !350, file: !1, line: 266, column: 37)
!359 = !DILocation(line: 268, column: 14, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !1, line: 267, column: 38)
!361 = distinct !DILexicalBlock(scope: !357, file: !1, line: 267, column: 8)
!362 = !DILocation(line: 268, column: 36, scope: !360)
!363 = !DILocation(line: 268, column: 64, scope: !360)
!364 = !DILocation(line: 268, column: 42, scope: !360)
!365 = !DILocation(line: 268, column: 40, scope: !360)
!366 = !DILocation(line: 269, column: 7, scope: !360)
!367 = !DILocation(line: 268, column: 68, scope: !360)
!368 = !DILocation(line: 269, column: 35, scope: !360)
!369 = !DILocation(line: 269, column: 33, scope: !360)
!370 = !DILocation(line: 270, column: 7, scope: !360)
!371 = !DILocation(line: 269, column: 61, scope: !360)
!372 = !DILocation(line: 271, column: 19, scope: !360)
!373 = !DILocation(line: 272, column: 21, scope: !360)
!374 = !DILocation(line: 273, column: 26, scope: !360)
!375 = !DILocation(line: 274, column: 34, scope: !360)
!376 = !DILocation(line: 275, column: 14, scope: !377)
!377 = distinct !DILexicalBlock(scope: !360, file: !1, line: 275, column: 14)
!378 = !DILocation(line: 275, column: 27, scope: !377)
!379 = !DILocation(line: 275, column: 14, scope: !360)
!380 = !DILocation(line: 277, column: 10, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !1, line: 275, column: 37)
!382 = !DILocation(line: 267, column: 33, scope: !361)
!383 = !DILocation(line: 267, column: 26, scope: !361)
!384 = distinct !{!384, !356, !385, !187, !188}
!385 = !DILocation(line: 278, column: 8, scope: !357)
!386 = !DILocation(line: 266, column: 32, scope: !350)
!387 = distinct !{!387, !355, !388, !187, !188}
!388 = !DILocation(line: 279, column: 6, scope: !351)
!389 = !DILocation(line: 237, column: 25, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 237, column: 6)
!391 = distinct !DILexicalBlock(scope: !392, file: !1, line: 237, column: 6)
!392 = distinct !DILexicalBlock(scope: !354, file: !1, line: 236, column: 27)
!393 = !DILocation(line: 237, column: 6, scope: !391)
!394 = !DILocation(line: 238, column: 8, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 238, column: 8)
!396 = distinct !DILexicalBlock(scope: !390, file: !1, line: 237, column: 37)
!397 = !DILocation(line: 239, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 238, column: 39)
!399 = distinct !DILexicalBlock(scope: !395, file: !1, line: 238, column: 8)
!400 = !DILocation(line: 239, column: 36, scope: !398)
!401 = !DILocation(line: 239, column: 64, scope: !398)
!402 = !DILocation(line: 239, column: 42, scope: !398)
!403 = !DILocation(line: 239, column: 40, scope: !398)
!404 = !DILocation(line: 240, column: 7, scope: !398)
!405 = !DILocation(line: 239, column: 68, scope: !398)
!406 = !DILocation(line: 240, column: 35, scope: !398)
!407 = !DILocation(line: 240, column: 33, scope: !398)
!408 = !DILocation(line: 241, column: 7, scope: !398)
!409 = !DILocation(line: 240, column: 61, scope: !398)
!410 = !DILocation(line: 242, column: 19, scope: !398)
!411 = !DILocation(line: 243, column: 21, scope: !398)
!412 = !DILocation(line: 244, column: 26, scope: !398)
!413 = !DILocation(line: 245, column: 34, scope: !398)
!414 = !DILocation(line: 246, column: 14, scope: !415)
!415 = distinct !DILexicalBlock(scope: !398, file: !1, line: 246, column: 14)
!416 = !DILocation(line: 246, column: 27, scope: !415)
!417 = !DILocation(line: 246, column: 14, scope: !398)
!418 = !DILocation(line: 248, column: 10, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !1, line: 246, column: 37)
!420 = !DILocation(line: 238, column: 34, scope: !399)
!421 = !DILocation(line: 238, column: 27, scope: !399)
!422 = distinct !{!422, !394, !423, !187, !188}
!423 = !DILocation(line: 249, column: 8, scope: !395)
!424 = !DILocation(line: 237, column: 32, scope: !390)
!425 = distinct !{!425, !393, !426, !187, !188}
!426 = !DILocation(line: 250, column: 6, scope: !391)
!427 = !DILocation(line: 235, column: 11, scope: !305)
!428 = !DILocation(line: 251, column: 24, scope: !429)
!429 = distinct !DILexicalBlock(scope: !430, file: !1, line: 251, column: 6)
!430 = distinct !DILexicalBlock(scope: !392, file: !1, line: 251, column: 6)
!431 = !DILocation(line: 251, column: 6, scope: !430)
!432 = !DILocation(line: 252, column: 8, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !1, line: 252, column: 8)
!434 = distinct !DILexicalBlock(scope: !429, file: !1, line: 251, column: 36)
!435 = !DILocation(line: 253, column: 14, scope: !436)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 252, column: 38)
!437 = distinct !DILexicalBlock(scope: !433, file: !1, line: 252, column: 8)
!438 = !DILocation(line: 253, column: 36, scope: !436)
!439 = !DILocation(line: 253, column: 64, scope: !436)
!440 = !DILocation(line: 253, column: 42, scope: !436)
!441 = !DILocation(line: 253, column: 40, scope: !436)
!442 = !DILocation(line: 254, column: 7, scope: !436)
!443 = !DILocation(line: 253, column: 68, scope: !436)
!444 = !DILocation(line: 254, column: 35, scope: !436)
!445 = !DILocation(line: 254, column: 33, scope: !436)
!446 = !DILocation(line: 255, column: 7, scope: !436)
!447 = !DILocation(line: 254, column: 61, scope: !436)
!448 = !DILocation(line: 256, column: 19, scope: !436)
!449 = !DILocation(line: 257, column: 21, scope: !436)
!450 = !DILocation(line: 258, column: 26, scope: !436)
!451 = !DILocation(line: 259, column: 34, scope: !436)
!452 = !DILocation(line: 260, column: 14, scope: !453)
!453 = distinct !DILexicalBlock(scope: !436, file: !1, line: 260, column: 14)
!454 = !DILocation(line: 260, column: 27, scope: !453)
!455 = !DILocation(line: 260, column: 14, scope: !436)
!456 = !DILocation(line: 262, column: 10, scope: !457)
!457 = distinct !DILexicalBlock(scope: !453, file: !1, line: 260, column: 37)
!458 = !DILocation(line: 252, column: 33, scope: !437)
!459 = !DILocation(line: 252, column: 26, scope: !437)
!460 = distinct !{!460, !432, !461, !187, !188}
!461 = !DILocation(line: 263, column: 8, scope: !433)
!462 = !DILocation(line: 251, column: 31, scope: !429)
!463 = distinct !{!463, !431, !464, !187, !188}
!464 = !DILocation(line: 264, column: 6, scope: !430)
!465 = !DILocation(line: 280, column: 24, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 280, column: 6)
!467 = distinct !DILexicalBlock(scope: !352, file: !1, line: 280, column: 6)
!468 = !DILocation(line: 280, column: 6, scope: !467)
!469 = !DILocation(line: 281, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !471, file: !1, line: 281, column: 8)
!471 = distinct !DILexicalBlock(scope: !466, file: !1, line: 280, column: 36)
!472 = !DILocation(line: 282, column: 14, scope: !473)
!473 = distinct !DILexicalBlock(scope: !474, file: !1, line: 281, column: 39)
!474 = distinct !DILexicalBlock(scope: !470, file: !1, line: 281, column: 8)
!475 = !DILocation(line: 282, column: 36, scope: !473)
!476 = !DILocation(line: 282, column: 64, scope: !473)
!477 = !DILocation(line: 282, column: 42, scope: !473)
!478 = !DILocation(line: 282, column: 40, scope: !473)
!479 = !DILocation(line: 283, column: 7, scope: !473)
!480 = !DILocation(line: 282, column: 68, scope: !473)
!481 = !DILocation(line: 283, column: 35, scope: !473)
!482 = !DILocation(line: 283, column: 33, scope: !473)
!483 = !DILocation(line: 284, column: 7, scope: !473)
!484 = !DILocation(line: 283, column: 61, scope: !473)
!485 = !DILocation(line: 285, column: 19, scope: !473)
!486 = !DILocation(line: 286, column: 21, scope: !473)
!487 = !DILocation(line: 287, column: 26, scope: !473)
!488 = !DILocation(line: 288, column: 34, scope: !473)
!489 = !DILocation(line: 289, column: 14, scope: !490)
!490 = distinct !DILexicalBlock(scope: !473, file: !1, line: 289, column: 14)
!491 = !DILocation(line: 289, column: 27, scope: !490)
!492 = !DILocation(line: 289, column: 14, scope: !473)
!493 = !DILocation(line: 291, column: 10, scope: !494)
!494 = distinct !DILexicalBlock(scope: !490, file: !1, line: 289, column: 37)
!495 = !DILocation(line: 281, column: 34, scope: !474)
!496 = !DILocation(line: 281, column: 27, scope: !474)
!497 = distinct !{!497, !469, !498, !187, !188}
!498 = !DILocation(line: 292, column: 8, scope: !470)
!499 = !DILocation(line: 280, column: 31, scope: !466)
!500 = distinct !{!500, !468, !501, !187, !188}
!501 = !DILocation(line: 293, column: 6, scope: !467)
!502 = !DILocation(line: 295, column: 9, scope: !305)
!503 = !DILocation(line: 296, column: 1, scope: !305)
!504 = distinct !DISubprogram(name: "rescal", scope: !1, file: !1, line: 299, type: !505, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !14, !14}
!507 = !{!508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!508 = !DILocalVariable(name: "kf", arg: 1, scope: !504, file: !1, line: 299, type: !14)
!509 = !DILocalVariable(name: "my_num", arg: 2, scope: !504, file: !1, line: 299, type: !14)
!510 = !DILocalVariable(name: "ic", scope: !504, file: !1, line: 301, type: !14)
!511 = !DILocalVariable(name: "if17", scope: !504, file: !1, line: 302, type: !14)
!512 = !DILocalVariable(name: "jf", scope: !504, file: !1, line: 303, type: !14)
!513 = !DILocalVariable(name: "jc", scope: !504, file: !1, line: 304, type: !14)
!514 = !DILocalVariable(name: "krc", scope: !504, file: !1, line: 305, type: !14)
!515 = !DILocalVariable(name: "istart", scope: !504, file: !1, line: 306, type: !14)
!516 = !DILocalVariable(name: "iend", scope: !504, file: !1, line: 307, type: !14)
!517 = !DILocalVariable(name: "jstart", scope: !504, file: !1, line: 308, type: !14)
!518 = !DILocalVariable(name: "jend", scope: !504, file: !1, line: 309, type: !14)
!519 = !DILocalVariable(name: "hf", scope: !504, file: !1, line: 310, type: !3)
!520 = !DILocalVariable(name: "hc", scope: !504, file: !1, line: 311, type: !3)
!521 = !DILocalVariable(name: "s", scope: !504, file: !1, line: 312, type: !3)
!522 = !DILocalVariable(name: "s1", scope: !504, file: !1, line: 313, type: !3)
!523 = !DILocalVariable(name: "s2", scope: !504, file: !1, line: 314, type: !3)
!524 = !DILocalVariable(name: "s3", scope: !504, file: !1, line: 315, type: !3)
!525 = !DILocalVariable(name: "s4", scope: !504, file: !1, line: 316, type: !3)
!526 = !DILocalVariable(name: "factor", scope: !504, file: !1, line: 317, type: !3)
!527 = !DILocalVariable(name: "int1", scope: !504, file: !1, line: 318, type: !3)
!528 = !DILocalVariable(name: "int2", scope: !504, file: !1, line: 319, type: !3)
!529 = !DILocalVariable(name: "i_int_factor", scope: !504, file: !1, line: 320, type: !3)
!530 = !DILocalVariable(name: "j_int_factor", scope: !504, file: !1, line: 321, type: !3)
!531 = !DILocalVariable(name: "int_val", scope: !504, file: !1, line: 322, type: !3)
!532 = !DILocation(line: 0, scope: !504)
!533 = !DILocation(line: 324, column: 13, scope: !504)
!534 = !DILocation(line: 326, column: 9, scope: !504)
!535 = !DILocation(line: 328, column: 13, scope: !504)
!536 = !DILocation(line: 329, column: 13, scope: !504)
!537 = !DILocation(line: 332, column: 11, scope: !504)
!538 = !DILocation(line: 332, column: 41, scope: !504)
!539 = !DILocation(line: 332, column: 39, scope: !504)
!540 = !DILocation(line: 333, column: 11, scope: !504)
!541 = !DILocation(line: 333, column: 41, scope: !504)
!542 = !DILocation(line: 333, column: 39, scope: !504)
!543 = !DILocation(line: 335, column: 19, scope: !504)
!544 = !DILocation(line: 335, column: 17, scope: !504)
!545 = !DILocation(line: 338, column: 20, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 338, column: 4)
!547 = distinct !DILexicalBlock(scope: !504, file: !1, line: 338, column: 4)
!548 = !DILocation(line: 338, column: 4, scope: !547)
!549 = !DILocation(line: 342, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !551, file: !1, line: 342, column: 6)
!551 = distinct !DILexicalBlock(scope: !546, file: !1, line: 338, column: 33)
!552 = !DILocation(line: 337, column: 10, scope: !504)
!553 = !DILocation(line: 339, column: 10, scope: !551)
!554 = !DILocation(line: 340, column: 21, scope: !551)
!555 = !DILocation(line: 340, column: 26, scope: !551)
!556 = !DILocation(line: 340, column: 24, scope: !551)
!557 = !DILocation(line: 340, column: 43, scope: !551)
!558 = !DILocation(line: 343, column: 10, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 342, column: 35)
!560 = distinct !DILexicalBlock(scope: !550, file: !1, line: 342, column: 6)
!561 = !DILocation(line: 344, column: 23, scope: !559)
!562 = !DILocation(line: 344, column: 26, scope: !559)
!563 = !DILocation(line: 344, column: 25, scope: !559)
!564 = !DILocation(line: 344, column: 43, scope: !559)
!565 = !DILocation(line: 346, column: 12, scope: !559)
!566 = !DILocation(line: 346, column: 39, scope: !559)
!567 = !DILocation(line: 346, column: 72, scope: !559)
!568 = !DILocation(line: 346, column: 45, scope: !559)
!569 = !DILocation(line: 346, column: 43, scope: !559)
!570 = !DILocation(line: 347, column: 12, scope: !559)
!571 = !DILocation(line: 346, column: 76, scope: !559)
!572 = !DILocation(line: 347, column: 45, scope: !559)
!573 = !DILocation(line: 347, column: 43, scope: !559)
!574 = !DILocation(line: 348, column: 20, scope: !559)
!575 = !DILocation(line: 348, column: 51, scope: !559)
!576 = !DILocation(line: 349, column: 15, scope: !559)
!577 = !DILocation(line: 348, column: 55, scope: !559)
!578 = !DILocation(line: 348, column: 17, scope: !559)
!579 = !DILocation(line: 350, column: 24, scope: !580)
!580 = distinct !DILexicalBlock(scope: !559, file: !1, line: 350, column: 12)
!581 = !DILocation(line: 353, column: 74, scope: !582)
!582 = distinct !DILexicalBlock(scope: !580, file: !1, line: 352, column: 15)
!583 = !DILocation(line: 353, column: 47, scope: !582)
!584 = !DILocation(line: 353, column: 45, scope: !582)
!585 = !DILocation(line: 354, column: 14, scope: !582)
!586 = !DILocation(line: 353, column: 78, scope: !582)
!587 = !DILocation(line: 354, column: 49, scope: !582)
!588 = !DILocation(line: 354, column: 47, scope: !582)
!589 = !DILocation(line: 355, column: 22, scope: !582)
!590 = !DILocation(line: 355, column: 55, scope: !582)
!591 = !DILocation(line: 356, column: 17, scope: !582)
!592 = !DILocation(line: 355, column: 59, scope: !582)
!593 = !DILocation(line: 355, column: 19, scope: !582)
!594 = !DILocation(line: 361, column: 14, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 360, column: 15)
!596 = distinct !DILexicalBlock(scope: !559, file: !1, line: 358, column: 12)
!597 = !DILocation(line: 361, column: 49, scope: !595)
!598 = !DILocation(line: 361, column: 47, scope: !595)
!599 = !DILocation(line: 362, column: 14, scope: !595)
!600 = !DILocation(line: 361, column: 82, scope: !595)
!601 = !DILocation(line: 362, column: 45, scope: !595)
!602 = !DILocation(line: 363, column: 22, scope: !595)
!603 = !DILocation(line: 363, column: 55, scope: !595)
!604 = !DILocation(line: 364, column: 17, scope: !595)
!605 = !DILocation(line: 363, column: 59, scope: !595)
!606 = !DILocation(line: 363, column: 19, scope: !595)
!607 = !DILocation(line: 369, column: 49, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 368, column: 15)
!609 = distinct !DILexicalBlock(scope: !559, file: !1, line: 366, column: 12)
!610 = !DILocation(line: 369, column: 47, scope: !608)
!611 = !DILocation(line: 370, column: 10, scope: !608)
!612 = !DILocation(line: 369, column: 82, scope: !608)
!613 = !DILocation(line: 370, column: 43, scope: !608)
!614 = !DILocation(line: 371, column: 22, scope: !608)
!615 = !DILocation(line: 371, column: 57, scope: !608)
!616 = !DILocation(line: 372, column: 15, scope: !608)
!617 = !DILocation(line: 371, column: 61, scope: !608)
!618 = !DILocation(line: 371, column: 19, scope: !608)
!619 = !DILocation(line: 0, scope: !609)
!620 = !DILocation(line: 374, column: 37, scope: !559)
!621 = !DILocation(line: 374, column: 51, scope: !559)
!622 = !DILocation(line: 374, column: 31, scope: !559)
!623 = !DILocation(line: 375, column: 51, scope: !559)
!624 = !DILocation(line: 375, column: 31, scope: !559)
!625 = !DILocation(line: 376, column: 54, scope: !559)
!626 = !DILocation(line: 377, column: 57, scope: !559)
!627 = !DILocation(line: 377, column: 8, scope: !559)
!628 = !DILocation(line: 377, column: 38, scope: !559)
!629 = !DILocation(line: 342, column: 31, scope: !560)
!630 = !DILocation(line: 342, column: 22, scope: !560)
!631 = distinct !{!631, !549, !632, !187, !188}
!632 = !DILocation(line: 378, column: 6, scope: !550)
!633 = !DILocation(line: 338, column: 29, scope: !546)
!634 = distinct !{!634, !548, !635, !187, !188}
!635 = !DILocation(line: 379, column: 4, scope: !547)
!636 = !DILocation(line: 380, column: 1, scope: !504)
!637 = distinct !DISubprogram(name: "putz", scope: !1, file: !1, line: 463, type: !505, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646}
!639 = !DILocalVariable(name: "k", arg: 1, scope: !637, file: !1, line: 463, type: !14)
!640 = !DILocalVariable(name: "my_num", arg: 2, scope: !637, file: !1, line: 463, type: !14)
!641 = !DILocalVariable(name: "i", scope: !637, file: !1, line: 465, type: !14)
!642 = !DILocalVariable(name: "j", scope: !637, file: !1, line: 466, type: !14)
!643 = !DILocalVariable(name: "istart", scope: !637, file: !1, line: 467, type: !14)
!644 = !DILocalVariable(name: "jstart", scope: !637, file: !1, line: 468, type: !14)
!645 = !DILocalVariable(name: "iend", scope: !637, file: !1, line: 469, type: !14)
!646 = !DILocalVariable(name: "jend", scope: !637, file: !1, line: 470, type: !14)
!647 = !DILocation(line: 0, scope: !637)
!648 = !DILocation(line: 472, column: 13, scope: !637)
!649 = !DILocation(line: 473, column: 13, scope: !637)
!650 = !DILocation(line: 474, column: 11, scope: !637)
!651 = !DILocation(line: 475, column: 11, scope: !637)
!652 = !DILocation(line: 476, column: 19, scope: !653)
!653 = distinct !DILexicalBlock(scope: !654, file: !1, line: 476, column: 4)
!654 = distinct !DILexicalBlock(scope: !637, file: !1, line: 476, column: 4)
!655 = !DILocation(line: 476, column: 4, scope: !654)
!656 = !DILocation(line: 477, column: 6, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !1, line: 477, column: 6)
!658 = distinct !DILexicalBlock(scope: !653, file: !1, line: 476, column: 31)
!659 = !DILocation(line: 478, column: 8, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 477, column: 33)
!661 = distinct !DILexicalBlock(scope: !657, file: !1, line: 477, column: 6)
!662 = !DILocation(line: 478, column: 32, scope: !660)
!663 = !DILocation(line: 477, column: 29, scope: !661)
!664 = !DILocation(line: 477, column: 21, scope: !661)
!665 = distinct !{!665, !656, !666, !187, !188}
!666 = !DILocation(line: 479, column: 6, scope: !657)
!667 = !DILocation(line: 476, column: 27, scope: !653)
!668 = distinct !{!668, !655, !669, !187, !188}
!669 = !DILocation(line: 480, column: 4, scope: !654)
!670 = !DILocation(line: 481, column: 1, scope: !637)
!671 = distinct !DISubprogram(name: "intadd", scope: !1, file: !1, line: 383, type: !505, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !672)
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695}
!673 = !DILocalVariable(name: "kc", arg: 1, scope: !671, file: !1, line: 383, type: !14)
!674 = !DILocalVariable(name: "my_num", arg: 2, scope: !671, file: !1, line: 383, type: !14)
!675 = !DILocalVariable(name: "ic", scope: !671, file: !1, line: 385, type: !14)
!676 = !DILocalVariable(name: "if17", scope: !671, file: !1, line: 386, type: !14)
!677 = !DILocalVariable(name: "jf", scope: !671, file: !1, line: 387, type: !14)
!678 = !DILocalVariable(name: "jc", scope: !671, file: !1, line: 388, type: !14)
!679 = !DILocalVariable(name: "kf", scope: !671, file: !1, line: 389, type: !14)
!680 = !DILocalVariable(name: "istart", scope: !671, file: !1, line: 390, type: !14)
!681 = !DILocalVariable(name: "jstart", scope: !671, file: !1, line: 391, type: !14)
!682 = !DILocalVariable(name: "iend", scope: !671, file: !1, line: 392, type: !14)
!683 = !DILocalVariable(name: "jend", scope: !671, file: !1, line: 393, type: !14)
!684 = !DILocalVariable(name: "hc", scope: !671, file: !1, line: 394, type: !3)
!685 = !DILocalVariable(name: "hf", scope: !671, file: !1, line: 395, type: !3)
!686 = !DILocalVariable(name: "ifine1", scope: !671, file: !1, line: 396, type: !14)
!687 = !DILocalVariable(name: "ifine2", scope: !671, file: !1, line: 397, type: !14)
!688 = !DILocalVariable(name: "jfine1", scope: !671, file: !1, line: 398, type: !14)
!689 = !DILocalVariable(name: "jfine2", scope: !671, file: !1, line: 399, type: !14)
!690 = !DILocalVariable(name: "int1", scope: !671, file: !1, line: 400, type: !3)
!691 = !DILocalVariable(name: "int2", scope: !671, file: !1, line: 401, type: !3)
!692 = !DILocalVariable(name: "i_int_factor1", scope: !671, file: !1, line: 402, type: !3)
!693 = !DILocalVariable(name: "j_int_factor1", scope: !671, file: !1, line: 403, type: !3)
!694 = !DILocalVariable(name: "i_int_factor2", scope: !671, file: !1, line: 404, type: !3)
!695 = !DILocalVariable(name: "j_int_factor2", scope: !671, file: !1, line: 405, type: !3)
!696 = !DILocation(line: 0, scope: !671)
!697 = !DILocation(line: 407, column: 12, scope: !671)
!698 = !DILocation(line: 411, column: 13, scope: !671)
!699 = !DILocation(line: 416, column: 13, scope: !671)
!700 = !DILocation(line: 417, column: 13, scope: !671)
!701 = !DILocation(line: 418, column: 40, scope: !671)
!702 = !DILocation(line: 418, column: 38, scope: !671)
!703 = !DILocation(line: 419, column: 40, scope: !671)
!704 = !DILocation(line: 419, column: 38, scope: !671)
!705 = !DILocation(line: 421, column: 20, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !1, line: 421, column: 4)
!707 = distinct !DILexicalBlock(scope: !671, file: !1, line: 421, column: 4)
!708 = !DILocation(line: 421, column: 4, scope: !707)
!709 = !DILocation(line: 431, column: 6, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 431, column: 6)
!711 = distinct !DILexicalBlock(scope: !706, file: !1, line: 421, column: 33)
!712 = !DILocation(line: 420, column: 12, scope: !671)
!713 = !DILocation(line: 423, column: 10, scope: !711)
!714 = !DILocation(line: 426, column: 23, scope: !711)
!715 = !DILocation(line: 426, column: 37, scope: !711)
!716 = !DILocation(line: 426, column: 30, scope: !711)
!717 = !DILocation(line: 426, column: 33, scope: !711)
!718 = !DILocation(line: 426, column: 21, scope: !711)
!719 = !DILocation(line: 426, column: 45, scope: !711)
!720 = !DILocation(line: 426, column: 42, scope: !711)
!721 = !DILocation(line: 427, column: 21, scope: !711)
!722 = !DILocation(line: 427, column: 24, scope: !711)
!723 = !DILocation(line: 432, column: 10, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !1, line: 431, column: 35)
!725 = distinct !DILexicalBlock(scope: !710, file: !1, line: 431, column: 6)
!726 = !DILocation(line: 435, column: 25, scope: !724)
!727 = !DILocation(line: 435, column: 39, scope: !724)
!728 = !DILocation(line: 435, column: 32, scope: !724)
!729 = !DILocation(line: 435, column: 35, scope: !724)
!730 = !DILocation(line: 435, column: 23, scope: !724)
!731 = !DILocation(line: 435, column: 47, scope: !724)
!732 = !DILocation(line: 435, column: 44, scope: !724)
!733 = !DILocation(line: 436, column: 23, scope: !724)
!734 = !DILocation(line: 436, column: 26, scope: !724)
!735 = !DILocation(line: 438, column: 29, scope: !724)
!736 = !DILocation(line: 439, column: 12, scope: !724)
!737 = !DILocation(line: 439, column: 28, scope: !724)
!738 = !DILocation(line: 439, column: 27, scope: !724)
!739 = !DILocation(line: 438, column: 58, scope: !724)
!740 = !DILocation(line: 440, column: 29, scope: !724)
!741 = !DILocation(line: 441, column: 28, scope: !724)
!742 = !DILocation(line: 441, column: 27, scope: !724)
!743 = !DILocation(line: 440, column: 60, scope: !724)
!744 = !DILocation(line: 443, column: 27, scope: !724)
!745 = !DILocation(line: 442, column: 63, scope: !724)
!746 = !DILocation(line: 442, column: 37, scope: !724)
!747 = !DILocation(line: 442, column: 8, scope: !724)
!748 = !DILocation(line: 442, column: 41, scope: !724)
!749 = !DILocation(line: 444, column: 29, scope: !724)
!750 = !DILocation(line: 445, column: 28, scope: !724)
!751 = !DILocation(line: 445, column: 27, scope: !724)
!752 = !DILocation(line: 444, column: 60, scope: !724)
!753 = !DILocation(line: 447, column: 27, scope: !724)
!754 = !DILocation(line: 446, column: 61, scope: !724)
!755 = !DILocation(line: 446, column: 8, scope: !724)
!756 = !DILocation(line: 446, column: 39, scope: !724)
!757 = !DILocation(line: 448, column: 29, scope: !724)
!758 = !DILocation(line: 448, column: 54, scope: !724)
!759 = !DILocation(line: 449, column: 12, scope: !724)
!760 = !DILocation(line: 449, column: 28, scope: !724)
!761 = !DILocation(line: 449, column: 27, scope: !724)
!762 = !DILocation(line: 448, column: 58, scope: !724)
!763 = !DILocation(line: 450, column: 29, scope: !724)
!764 = !DILocation(line: 451, column: 28, scope: !724)
!765 = !DILocation(line: 451, column: 27, scope: !724)
!766 = !DILocation(line: 450, column: 60, scope: !724)
!767 = !DILocation(line: 453, column: 27, scope: !724)
!768 = !DILocation(line: 452, column: 61, scope: !724)
!769 = !DILocation(line: 452, column: 8, scope: !724)
!770 = !DILocation(line: 452, column: 39, scope: !724)
!771 = !DILocation(line: 454, column: 29, scope: !724)
!772 = !DILocation(line: 455, column: 28, scope: !724)
!773 = !DILocation(line: 455, column: 27, scope: !724)
!774 = !DILocation(line: 454, column: 60, scope: !724)
!775 = !DILocation(line: 457, column: 27, scope: !724)
!776 = !DILocation(line: 456, column: 59, scope: !724)
!777 = !DILocation(line: 456, column: 8, scope: !724)
!778 = !DILocation(line: 456, column: 37, scope: !724)
!779 = !DILocation(line: 431, column: 22, scope: !725)
!780 = distinct !{!780, !709, !781, !187, !188}
!781 = !DILocation(line: 458, column: 6, scope: !710)
!782 = distinct !{!782, !708, !783, !187, !188}
!783 = !DILocation(line: 459, column: 4, scope: !707)
!784 = !DILocation(line: 460, column: 1, scope: !671)
