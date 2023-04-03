; ModuleID = 'grav.c'
source_filename = "grav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_memory = type { [512 x i64], double, double, i64, i64, i64, [3 x double], [3 x double], i64, i64, i64, ptr, i64, ptr, i64, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, ptr, [3 x double], double, [3 x double], [3 x double], double, ptr, ptr, [3 x i64], double, [3 x double], [3 x [3 x double]], [3 x [3 x double]], [2 x [3 x double]], [3 x double], [512 x i64] }
%struct._node = type { i64, double, [3 x double], i64, i64, ptr, i64 }
%struct._body = type { i64, double, [3 x double], i64, i64, ptr, i64, [3 x double], [3 x double], double }
%struct.GlobalMemory = type { i64, i64, i64, double, [3 x double], [3 x [3 x double]], [3 x [3 x double]], [2 x [3 x double]], [3 x double], ptr, [3 x double], [3 x double], [3 x double], double, %struct.anon.2, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, %union.pthread_mutex_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon.2 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.0, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.anon.3 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.4 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.5 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.6 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%struct.anon.7 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct._leaf = type { i64, double, [3 x double], i64, i64, ptr, i64, i64, ptr, ptr, i64, %union.pthread_cond_t, i64, i64, [10 x ptr] }
%struct._cell = type { i64, double, [3 x double], i64, i64, ptr, i64, i64, ptr, ptr, i64, %union.pthread_cond_t, i64, [8 x ptr] }

@Local = external local_unnamed_addr global [1024 x %struct.local_memory], align 16
@CellLock = external local_unnamed_addr global ptr, align 8
@epssq = external local_unnamed_addr global double, align 8
@Global = external local_unnamed_addr global ptr, align 8
@tolsq = external local_unnamed_addr global double, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @hackgrav(ptr noundef %p, i64 noundef %ProcessId) local_unnamed_addr #0 !dbg !134 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !138, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata i64 %ProcessId, metadata !139, metadata !DIExpression()), !dbg !146
  %pskip = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 24, !dbg !147
  store ptr %p, ptr %pskip, align 8, !dbg !148
  call void @llvm.dbg.value(metadata i64 0, metadata !140, metadata !DIExpression()), !dbg !149
  br label %for.body, !dbg !150

for.body:                                         ; preds = %entry, %for.body
  %_i.057 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %_i.057, metadata !140, metadata !DIExpression()), !dbg !149
  %arrayidx1 = getelementptr inbounds %struct._node, ptr %p, i64 0, i32 2, i64 %_i.057, !dbg !152
  %0 = load double, ptr %arrayidx1, align 8, !dbg !152
  %arrayidx3 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 25, i64 %_i.057, !dbg !152
  store double %0, ptr %arrayidx3, align 8, !dbg !152
  %inc = add nuw nsw i64 %_i.057, 1, !dbg !152
  call void @llvm.dbg.value(metadata i64 %inc, metadata !140, metadata !DIExpression()), !dbg !149
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !152
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !150, !llvm.loop !154

for.end:                                          ; preds = %for.body
  %phi0 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 26, !dbg !157
  store double 0.000000e+00, ptr %phi0, align 8, !dbg !158
  call void @llvm.dbg.value(metadata i64 0, metadata !142, metadata !DIExpression()), !dbg !159
  %1 = mul nsw i64 %ProcessId, 8792, !dbg !160
  %2 = add i64 %1, 4352, !dbg !160
  %uglygep = getelementptr i8, ptr @Local, i64 %2, !dbg !160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %uglygep, i8 0, i64 24, i1 false), !dbg !162
  call void @llvm.dbg.value(metadata i32 undef, metadata !142, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i32 undef, metadata !142, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !159
  %myn2bterm = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 21, !dbg !164
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %myn2bterm, i8 0, i64 24, i1 false), !dbg !165
  tail call void @hackwalk(i64 noundef %ProcessId), !dbg !166
  %3 = load double, ptr %phi0, align 8, !dbg !167
  %phi = getelementptr inbounds %struct._body, ptr %p, i64 0, i32 9, !dbg !168
  store double %3, ptr %phi, align 8, !dbg !169
  call void @llvm.dbg.value(metadata i64 0, metadata !144, metadata !DIExpression()), !dbg !170
  br label %for.body22, !dbg !171

for.body22:                                       ; preds = %for.end, %for.body22
  %_i19.059 = phi i64 [ 0, %for.end ], [ %inc28, %for.body22 ]
  call void @llvm.dbg.value(metadata i64 %_i19.059, metadata !144, metadata !DIExpression()), !dbg !170
  %arrayidx25 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 27, i64 %_i19.059, !dbg !173
  %4 = load double, ptr %arrayidx25, align 8, !dbg !173
  %arrayidx26 = getelementptr inbounds %struct._body, ptr %p, i64 0, i32 8, i64 %_i19.059, !dbg !173
  store double %4, ptr %arrayidx26, align 8, !dbg !173
  %inc28 = add nuw nsw i64 %_i19.059, 1, !dbg !173
  call void @llvm.dbg.value(metadata i64 %inc28, metadata !144, metadata !DIExpression()), !dbg !170
  %exitcond63.not = icmp eq i64 %inc28, 3, !dbg !173
  br i1 %exitcond63.not, label %for.end29, label %for.body22, !dbg !171, !llvm.loop !175

for.end29:                                        ; preds = %for.body22
  %mynbcterm = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 22, !dbg !176
  %5 = load i64, ptr %myn2bterm, align 8, !dbg !177
  %6 = load i64, ptr %mynbcterm, align 8, !dbg !178
  %add = add nsw i64 %6, %5, !dbg !179
  %cost = getelementptr inbounds %struct._node, ptr %p, i64 0, i32 3, !dbg !180
  store i64 %add, ptr %cost, align 8, !dbg !181
  ret void, !dbg !182
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hackwalk(i64 noundef %ProcessId) local_unnamed_addr #0 !dbg !183 {
entry:
  call void @llvm.dbg.value(metadata i64 %ProcessId, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = load ptr, ptr @Global, align 8, !dbg !189
  %G_root = getelementptr inbounds %struct.GlobalMemory, ptr %0, i64 0, i32 9, !dbg !190
  %1 = load ptr, ptr %G_root, align 8, !dbg !190
  %rsize = getelementptr inbounds %struct.GlobalMemory, ptr %0, i64 0, i32 13, !dbg !191
  %2 = load double, ptr %rsize, align 8, !dbg !191
  %mul = fmul double %2, %2, !dbg !192
  tail call void @walksub(ptr noundef %1, double noundef %mul, i64 noundef %ProcessId), !dbg !193
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gravsub(ptr noundef readonly %p, i64 noundef %ProcessId) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !199, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata i64 %ProcessId, metadata !200, metadata !DIExpression()), !dbg !222
  %pmem = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 30, !dbg !223
  %0 = load ptr, ptr %pmem, align 8, !dbg !223
  %cmp.not = icmp eq ptr %0, %p, !dbg !224
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then, !dbg !225

entry.if.end_crit_edge:                           ; preds = %entry
  %drsq39.phi.trans.insert = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 29
  %.pre = load double, ptr %drsq39.phi.trans.insert, align 8, !dbg !226
  br label %if.end, !dbg !225

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @CellLock, align 8, !dbg !227
  %parent = getelementptr inbounds %struct._body, ptr %p, i64 0, i32 5, !dbg !229
  %2 = load ptr, ptr %parent, align 8, !dbg !229
  %seqnum = getelementptr inbounds %struct._leaf, ptr %2, i64 0, i32 10, !dbg !230
  %3 = load i64, ptr %seqnum, align 8, !dbg !230
  %rem = srem i64 %3, 2048, !dbg !231
  %arrayidx1 = getelementptr inbounds [2048 x %union.pthread_mutex_t], ptr %1, i64 0, i64 %rem, !dbg !232
  %call = tail call i32 @pthread_mutex_lock(ptr noundef %arrayidx1) #7, !dbg !233
  %dr = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 28, !dbg !234
  call void @llvm.dbg.value(metadata ptr %dr, metadata !205, metadata !DIExpression()), !dbg !235
  %pos = getelementptr inbounds %struct._node, ptr %p, i64 0, i32 2, !dbg !234
  call void @llvm.dbg.value(metadata ptr %pos, metadata !210, metadata !DIExpression()), !dbg !235
  %pos0 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 25, !dbg !234
  call void @llvm.dbg.value(metadata ptr %pos0, metadata !211, metadata !DIExpression()), !dbg !235
  %incdec.ptr = getelementptr inbounds double, ptr %pos, i64 1, !dbg !234
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !210, metadata !DIExpression()), !dbg !235
  %4 = load double, ptr %pos, align 8, !dbg !234
  %incdec.ptr6 = getelementptr inbounds double, ptr %pos0, i64 1, !dbg !234
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !211, metadata !DIExpression()), !dbg !235
  %5 = load double, ptr %pos0, align 8, !dbg !234
  %sub = fsub double %4, %5, !dbg !234
  %incdec.ptr7 = getelementptr inbounds double, ptr %dr, i64 1, !dbg !234
  call void @llvm.dbg.value(metadata ptr %incdec.ptr7, metadata !205, metadata !DIExpression()), !dbg !235
  store double %sub, ptr %dr, align 8, !dbg !234
  %incdec.ptr8 = getelementptr inbounds double, ptr %pos, i64 2, !dbg !234
  call void @llvm.dbg.value(metadata ptr %incdec.ptr8, metadata !210, metadata !DIExpression()), !dbg !235
  %6 = load double, ptr %incdec.ptr, align 8, !dbg !234
  %incdec.ptr9 = getelementptr inbounds double, ptr %pos0, i64 2, !dbg !234
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9, metadata !211, metadata !DIExpression()), !dbg !235
  %7 = load double, ptr %incdec.ptr6, align 8, !dbg !234
  %sub10 = fsub double %6, %7, !dbg !234
  %incdec.ptr11 = getelementptr inbounds double, ptr %dr, i64 2, !dbg !234
  call void @llvm.dbg.value(metadata ptr %incdec.ptr11, metadata !205, metadata !DIExpression()), !dbg !235
  store double %sub10, ptr %incdec.ptr7, align 8, !dbg !234
  %8 = load double, ptr %incdec.ptr8, align 8, !dbg !234
  %9 = load double, ptr %incdec.ptr9, align 8, !dbg !234
  %sub12 = fsub double %8, %9, !dbg !234
  store double %sub12, ptr %incdec.ptr11, align 8, !dbg !234
  %10 = load ptr, ptr @CellLock, align 8, !dbg !236
  %11 = load ptr, ptr %parent, align 8, !dbg !238
  %seqnum15 = getelementptr inbounds %struct._leaf, ptr %11, i64 0, i32 10, !dbg !239
  %12 = load i64, ptr %seqnum15, align 8, !dbg !239
  %rem16 = srem i64 %12, 2048, !dbg !240
  %arrayidx17 = getelementptr inbounds [2048 x %union.pthread_mutex_t], ptr %10, i64 0, i64 %rem16, !dbg !241
  %call18 = tail call i32 @pthread_mutex_unlock(ptr noundef %arrayidx17) #7, !dbg !242
  call void @llvm.dbg.value(metadata ptr %dr, metadata !212, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata ptr %dr, metadata !214, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata ptr %incdec.ptr7, metadata !212, metadata !DIExpression()), !dbg !243
  %13 = load double, ptr %dr, align 8, !dbg !244
  call void @llvm.dbg.value(metadata ptr %incdec.ptr7, metadata !214, metadata !DIExpression()), !dbg !243
  %mul = fmul double %13, %13, !dbg !244
  %drsq = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 29, !dbg !244
  call void @llvm.dbg.value(metadata ptr %incdec.ptr11, metadata !212, metadata !DIExpression()), !dbg !243
  %14 = load double, ptr %incdec.ptr7, align 8, !dbg !244
  call void @llvm.dbg.value(metadata ptr %incdec.ptr11, metadata !214, metadata !DIExpression()), !dbg !243
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %mul), !dbg !244
  %16 = load double, ptr %incdec.ptr11, align 8, !dbg !244
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %15), !dbg !244
  store double %17, ptr %drsq, align 8, !dbg !244
  br label %if.end, !dbg !245

if.end:                                           ; preds = %entry.if.end_crit_edge, %if.then
  %18 = phi double [ %.pre, %entry.if.end_crit_edge ], [ %17, %if.then ], !dbg !226
  %19 = load double, ptr @epssq, align 8, !dbg !246
  %drsq39 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 29, !dbg !247
  %add = fadd double %19, %18, !dbg !226
  store double %add, ptr %drsq39, align 8, !dbg !226
  %call42 = tail call double @sqrt(double noundef %add) #7, !dbg !248
  call void @llvm.dbg.value(metadata double %call42, metadata !201, metadata !DIExpression()), !dbg !222
  %mass = getelementptr inbounds %struct._node, ptr %p, i64 0, i32 1, !dbg !249
  %20 = load double, ptr %mass, align 8, !dbg !249
  %div = fdiv double %20, %call42, !dbg !250
  call void @llvm.dbg.value(metadata double %div, metadata !202, metadata !DIExpression()), !dbg !222
  %phi0 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 26, !dbg !251
  %21 = load double, ptr %phi0, align 8, !dbg !252
  %sub44 = fsub double %21, %div, !dbg !252
  store double %sub44, ptr %phi0, align 8, !dbg !252
  %22 = load double, ptr %drsq39, align 8, !dbg !253
  %div47 = fdiv double %div, %22, !dbg !254
  call void @llvm.dbg.value(metadata double %div47, metadata !203, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.value(metadata ptr undef, metadata !215, metadata !DIExpression()), !dbg !255
  %dr52 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 28, !dbg !256
  call void @llvm.dbg.value(metadata ptr %dr52, metadata !217, metadata !DIExpression()), !dbg !255
  %incdec.ptr54 = getelementptr inbounds double, ptr %dr52, i64 1, !dbg !256
  call void @llvm.dbg.value(metadata ptr %incdec.ptr54, metadata !217, metadata !DIExpression()), !dbg !255
  %23 = load double, ptr %dr52, align 8, !dbg !256
  %mul55 = fmul double %23, %div47, !dbg !256
  call void @llvm.dbg.value(metadata ptr undef, metadata !215, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double %mul55, metadata !204, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !222
  %incdec.ptr57 = getelementptr inbounds double, ptr %dr52, i64 2, !dbg !256
  call void @llvm.dbg.value(metadata ptr %incdec.ptr57, metadata !217, metadata !DIExpression()), !dbg !255
  %24 = load double, ptr %incdec.ptr54, align 8, !dbg !256
  %mul58 = fmul double %div47, %24, !dbg !256
  call void @llvm.dbg.value(metadata ptr undef, metadata !215, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata double %mul58, metadata !204, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !222
  %25 = load double, ptr %incdec.ptr57, align 8, !dbg !256
  %mul60 = fmul double %div47, %25, !dbg !256
  call void @llvm.dbg.value(metadata double %mul60, metadata !204, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !222
  %acc0 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 27, !dbg !257
  call void @llvm.dbg.value(metadata ptr %acc0, metadata !218, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata ptr %acc0, metadata !220, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.value(metadata ptr undef, metadata !221, metadata !DIExpression()), !dbg !258
  %incdec.ptr70 = getelementptr inbounds double, ptr %acc0, i64 1, !dbg !257
  call void @llvm.dbg.value(metadata ptr %incdec.ptr70, metadata !220, metadata !DIExpression()), !dbg !258
  %26 = load double, ptr %acc0, align 8, !dbg !257
  call void @llvm.dbg.value(metadata ptr undef, metadata !221, metadata !DIExpression()), !dbg !258
  %add72 = fadd double %mul55, %26, !dbg !257
  call void @llvm.dbg.value(metadata ptr %incdec.ptr70, metadata !218, metadata !DIExpression()), !dbg !258
  store double %add72, ptr %acc0, align 8, !dbg !257
  %incdec.ptr74 = getelementptr inbounds double, ptr %acc0, i64 2, !dbg !257
  call void @llvm.dbg.value(metadata ptr %incdec.ptr74, metadata !220, metadata !DIExpression()), !dbg !258
  %27 = load double, ptr %incdec.ptr70, align 8, !dbg !257
  call void @llvm.dbg.value(metadata ptr undef, metadata !221, metadata !DIExpression()), !dbg !258
  %add76 = fadd double %mul58, %27, !dbg !257
  call void @llvm.dbg.value(metadata ptr %incdec.ptr74, metadata !218, metadata !DIExpression()), !dbg !258
  store double %add76, ptr %incdec.ptr70, align 8, !dbg !257
  %28 = load double, ptr %incdec.ptr74, align 8, !dbg !257
  %add78 = fadd double %mul60, %28, !dbg !257
  store double %add78, ptr %incdec.ptr74, align 8, !dbg !257
  %29 = load i64, ptr %p, align 8, !dbg !259
  %cmp79.not = icmp eq i64 %29, 1, !dbg !261
  br i1 %cmp79.not, label %if.else, label %if.then80, !dbg !262

if.then80:                                        ; preds = %if.end
  %mynbcterm = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 22, !dbg !263
  br label %if.end84, !dbg !265

if.else:                                          ; preds = %if.end
  %myn2bterm = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 21, !dbg !266
  br label %if.end84

if.end84:                                         ; preds = %if.else, %if.then80
  %myn2bterm.sink129 = phi ptr [ %myn2bterm, %if.else ], [ %mynbcterm, %if.then80 ]
  %30 = load i64, ptr %myn2bterm.sink129, align 8, !dbg !268
  %inc83 = add nsw i64 %30, 1, !dbg !268
  store i64 %inc83, ptr %myn2bterm.sink129, align 8, !dbg !268
  ret void, !dbg !269
}

; Function Attrs: nounwind
declare !dbg !270 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare !dbg !304 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @walksub(ptr noundef %n, double noundef %dsq, i64 noundef %ProcessId) local_unnamed_addr #0 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata ptr %n, metadata !309, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata double %dsq, metadata !310, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata i64 %ProcessId, metadata !311, metadata !DIExpression()), !dbg !317
  %call = tail call i64 @subdivp(ptr noundef %n, double noundef %dsq, i64 noundef %ProcessId), !dbg !318
  %tobool.not = icmp eq i64 %call, 0, !dbg !318
  br i1 %tobool.not, label %if.else19, label %if.then, !dbg !320

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %n, align 8, !dbg !321
  %cmp = icmp eq i64 %0, 2, !dbg !324
  br i1 %cmp, label %if.then1, label %for.cond7.preheader, !dbg !325

for.cond7.preheader:                              ; preds = %if.then
  %num_bodies = getelementptr inbounds %struct._leaf, ptr %n, i64 0, i32 13
  call void @llvm.dbg.value(metadata i64 0, metadata !316, metadata !DIExpression()), !dbg !317
  %1 = load i64, ptr %num_bodies, align 8, !dbg !326
  %cmp841 = icmp sgt i64 %1, 0, !dbg !330
  br i1 %cmp841, label %for.body9.lr.ph, label %if.end20, !dbg !331

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %pskip = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 24
  %skipself = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 23
  br label %for.body9, !dbg !331

if.then1:                                         ; preds = %if.then
  %subp = getelementptr inbounds %struct._cell, ptr %n, i64 0, i32 13, !dbg !332
  call void @llvm.dbg.value(metadata ptr %subp, metadata !312, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.value(metadata !DIArgList(ptr %subp, i64 0), metadata !312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !317
  %div = fmul double %dsq, 2.500000e-01
  br label %for.body, !dbg !335

for.body:                                         ; preds = %if.then1, %for.inc
  %nn.0.idx43 = phi i64 [ 0, %if.then1 ], [ %nn.0.add, %for.inc ]
  call void @llvm.dbg.value(metadata !DIArgList(ptr %subp, i64 %nn.0.idx43), metadata !312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !317
  %nn.0.ptr = getelementptr inbounds ptr, ptr %subp, i64 %nn.0.idx43, !dbg !317
  call void @llvm.dbg.value(metadata ptr %nn.0.ptr, metadata !312, metadata !DIExpression()), !dbg !317
  %2 = load ptr, ptr %nn.0.ptr, align 8, !dbg !336
  %cmp5.not = icmp eq ptr %2, null, !dbg !340
  br i1 %cmp5.not, label %for.inc, label %if.then6, !dbg !341

if.then6:                                         ; preds = %for.body
  tail call void @walksub(ptr noundef nonnull %2, double noundef %div, i64 noundef %ProcessId), !dbg !342
  br label %for.inc, !dbg !344

for.inc:                                          ; preds = %for.body, %if.then6
  %nn.0.add = add nuw nsw i64 %nn.0.idx43, 1, !dbg !345
  call void @llvm.dbg.value(metadata !DIArgList(ptr %subp, i64 %nn.0.add), metadata !312, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !317
  %exitcond.not = icmp eq i64 %nn.0.add, 8, !dbg !346
  br i1 %exitcond.not, label %if.end20, label %for.body, !dbg !335, !llvm.loop !347

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc16
  %i.042 = phi i64 [ 0, %for.body9.lr.ph ], [ %inc, %for.inc16 ]
  call void @llvm.dbg.value(metadata i64 %i.042, metadata !316, metadata !DIExpression()), !dbg !317
  %arrayidx = getelementptr inbounds %struct._leaf, ptr %n, i64 0, i32 14, i64 %i.042, !dbg !349
  %3 = load ptr, ptr %arrayidx, align 8, !dbg !349
  call void @llvm.dbg.value(metadata ptr %3, metadata !315, metadata !DIExpression()), !dbg !317
  %4 = load ptr, ptr %pskip, align 8, !dbg !351
  %cmp11.not = icmp eq ptr %3, %4, !dbg !353
  br i1 %cmp11.not, label %if.else13, label %if.then12, !dbg !354

if.then12:                                        ; preds = %for.body9
  tail call void @gravsub(ptr noundef %3, i64 noundef %ProcessId), !dbg !355
  br label %for.inc16, !dbg !357

if.else13:                                        ; preds = %for.body9
  store i64 1, ptr %skipself, align 8, !dbg !358
  br label %for.inc16

for.inc16:                                        ; preds = %if.then12, %if.else13
  %inc = add nuw nsw i64 %i.042, 1, !dbg !360
  call void @llvm.dbg.value(metadata i64 %inc, metadata !316, metadata !DIExpression()), !dbg !317
  %5 = load i64, ptr %num_bodies, align 8, !dbg !326
  %cmp8 = icmp slt i64 %inc, %5, !dbg !330
  br i1 %cmp8, label %for.body9, label %if.end20, !dbg !331, !llvm.loop !361

if.else19:                                        ; preds = %entry
  tail call void @gravsub(ptr noundef %n, i64 noundef %ProcessId), !dbg !363
  br label %if.end20

if.end20:                                         ; preds = %for.inc16, %for.inc, %for.cond7.preheader, %if.else19
  ret void, !dbg !365
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define dso_local i64 @subdivp(ptr noundef %p, double noundef %dsq, i64 noundef %ProcessId) local_unnamed_addr #4 !dbg !366 {
entry:
  call void @llvm.dbg.value(metadata ptr %p, metadata !371, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata double %dsq, metadata !372, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.value(metadata i64 %ProcessId, metadata !373, metadata !DIExpression()), !dbg !381
  %dr = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 28, !dbg !382
  call void @llvm.dbg.value(metadata ptr %dr, metadata !374, metadata !DIExpression()), !dbg !383
  %pos = getelementptr inbounds %struct._node, ptr %p, i64 0, i32 2, !dbg !382
  call void @llvm.dbg.value(metadata ptr %pos, metadata !376, metadata !DIExpression()), !dbg !383
  %pos0 = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 25, !dbg !382
  call void @llvm.dbg.value(metadata ptr %pos0, metadata !377, metadata !DIExpression()), !dbg !383
  %incdec.ptr = getelementptr inbounds double, ptr %pos, i64 1, !dbg !382
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !376, metadata !DIExpression()), !dbg !383
  %0 = load double, ptr %pos, align 8, !dbg !382
  %incdec.ptr4 = getelementptr inbounds double, ptr %pos0, i64 1, !dbg !382
  call void @llvm.dbg.value(metadata ptr %incdec.ptr4, metadata !377, metadata !DIExpression()), !dbg !383
  %1 = load double, ptr %pos0, align 8, !dbg !382
  %sub = fsub double %0, %1, !dbg !382
  %incdec.ptr5 = getelementptr inbounds double, ptr %dr, i64 1, !dbg !382
  call void @llvm.dbg.value(metadata ptr %incdec.ptr5, metadata !374, metadata !DIExpression()), !dbg !383
  store double %sub, ptr %dr, align 8, !dbg !382
  %incdec.ptr6 = getelementptr inbounds double, ptr %pos, i64 2, !dbg !382
  call void @llvm.dbg.value(metadata ptr %incdec.ptr6, metadata !376, metadata !DIExpression()), !dbg !383
  %2 = load double, ptr %incdec.ptr, align 8, !dbg !382
  %incdec.ptr7 = getelementptr inbounds double, ptr %pos0, i64 2, !dbg !382
  call void @llvm.dbg.value(metadata ptr %incdec.ptr7, metadata !377, metadata !DIExpression()), !dbg !383
  %3 = load double, ptr %incdec.ptr4, align 8, !dbg !382
  %sub8 = fsub double %2, %3, !dbg !382
  %incdec.ptr9 = getelementptr inbounds double, ptr %dr, i64 2, !dbg !382
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9, metadata !374, metadata !DIExpression()), !dbg !383
  store double %sub8, ptr %incdec.ptr5, align 8, !dbg !382
  %4 = load double, ptr %incdec.ptr6, align 8, !dbg !382
  %5 = load double, ptr %incdec.ptr7, align 8, !dbg !382
  %sub10 = fsub double %4, %5, !dbg !382
  store double %sub10, ptr %incdec.ptr9, align 8, !dbg !382
  call void @llvm.dbg.value(metadata ptr %dr, metadata !378, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata ptr %dr, metadata !380, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata ptr %incdec.ptr5, metadata !378, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata ptr %incdec.ptr5, metadata !380, metadata !DIExpression()), !dbg !384
  %mul = fmul double %sub, %sub, !dbg !385
  %drsq = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 29, !dbg !385
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9, metadata !378, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.value(metadata ptr %incdec.ptr9, metadata !380, metadata !DIExpression()), !dbg !384
  %6 = tail call double @llvm.fmuladd.f64(double %sub8, double %sub8, double %mul), !dbg !385
  %7 = tail call double @llvm.fmuladd.f64(double %sub10, double %sub10, double %6), !dbg !385
  store double %7, ptr %drsq, align 8, !dbg !385
  %pmem = getelementptr inbounds [1024 x %struct.local_memory], ptr @Local, i64 0, i64 %ProcessId, i32 30, !dbg !386
  store ptr %p, ptr %pmem, align 8, !dbg !387
  %8 = load double, ptr @tolsq, align 8, !dbg !388
  %mul33 = fmul double %7, %8, !dbg !389
  %cmp = fcmp olt double %mul33, %dsq, !dbg !390
  %9 = zext i1 %cmp to i64
  ret i64 %9, !dbg !391
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "grav.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "cd6a3aafa1476bb57cdd44f1007ff38a")
!2 = !{!3, !26, !14, !46, !126, !36}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodeptr", file: !4, line: 67, baseType: !5)
!4 = !DIFile(filename: "./defs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "a70fd3172df660c9d5c631c3b06e5de2")
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "node", file: !4, line: 65, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_node", file: !4, line: 56, size: 576, elements: !8)
!8 = !{!9, !11, !15, !21, !22, !23, !25}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !4, line: 57, baseType: !10, size: 64)
!10 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !7, file: !4, line: 58, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !13, line: 70, baseType: !14)
!13 = !DIFile(filename: "./stdinc.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "7e5b049cdc5bbb3d00ff9fe2a55bf64e")
!14 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !7, file: !4, line: 59, baseType: !16, size: 192, offset: 128)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector", file: !17, line: 30, baseType: !18)
!17 = !DIFile(filename: "./vectmath.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/barnes", checksumkind: CSK_MD5, checksum: "0ae09f78c47e66d21f2861f9ccfce29c")
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 3)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !7, file: !4, line: 60, baseType: !10, size: 64, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !7, file: !4, line: 61, baseType: !10, size: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !7, file: !4, line: 62, baseType: !24, size: 64, offset: 448)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !7, file: !4, line: 63, baseType: !10, size: 64, offset: 512)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "bodyptr", file: !4, line: 81, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_body", file: !4, line: 87, size: 1024, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !122, !123, !124, !125}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !28, file: !4, line: 88, baseType: !10, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !28, file: !4, line: 89, baseType: !12, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !28, file: !4, line: 90, baseType: !16, size: 192, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !28, file: !4, line: 91, baseType: !10, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !28, file: !4, line: 92, baseType: !10, size: 64, offset: 384)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !28, file: !4, line: 93, baseType: !36, size: 64, offset: 448)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "leafptr", file: !4, line: 82, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_leaf", file: !4, line: 137, size: 1984, elements: !39)
!39 = !{!40, !41, !42, !43, !44, !45, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !4, line: 138, baseType: !10, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !38, file: !4, line: 139, baseType: !12, size: 64, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !38, file: !4, line: 140, baseType: !16, size: 192, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !38, file: !4, line: 141, baseType: !10, size: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !38, file: !4, line: 142, baseType: !10, size: 64, offset: 384)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !38, file: !4, line: 143, baseType: !46, size: 64, offset: 448)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "cellptr", file: !4, line: 83, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_cell", file: !4, line: 110, size: 1792, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !105, !106}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !48, file: !4, line: 111, baseType: !10, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mass", scope: !48, file: !4, line: 112, baseType: !12, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !48, file: !4, line: 113, baseType: !16, size: 192, offset: 128)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "cost", scope: !48, file: !4, line: 114, baseType: !10, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !48, file: !4, line: 115, baseType: !10, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !48, file: !4, line: 116, baseType: !46, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !48, file: !4, line: 117, baseType: !10, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !48, file: !4, line: 118, baseType: !10, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !4, line: 119, baseType: !47, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !48, file: !4, line: 119, baseType: !47, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !48, file: !4, line: 120, baseType: !10, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "done_cv", scope: !48, file: !4, line: 124, baseType: !62, size: 384, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !63, line: 80, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !63, line: 75, size: 384, elements: !65)
!65 = !{!66, !98, !103}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !64, file: !63, line: 77, baseType: !67, size: 384)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !68, line: 92, size: 384, elements: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!69 = !{!70, !81, !90, !94, !95, !96, !97}
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !68, line: 94, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !68, line: 94, size: 64, elements: !72)
!72 = !{!73, !75}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !71, file: !68, line: 96, baseType: !74, size: 64)
!74 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !71, file: !68, line: 101, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !68, line: 97, size: 64, elements: !77)
!77 = !{!78, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !76, file: !68, line: 99, baseType: !79, size: 32)
!79 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !76, file: !68, line: 100, baseType: !79, size: 32, offset: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !68, line: 103, baseType: !82, size: 64, offset: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !68, line: 103, size: 64, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !82, file: !68, line: 105, baseType: !74, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !82, file: !68, line: 110, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !68, line: 106, size: 64, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !86, file: !68, line: 108, baseType: !79, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !86, file: !68, line: 109, baseType: !79, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !67, file: !68, line: 112, baseType: !91, size: 64, offset: 128)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 2)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !67, file: !68, line: 113, baseType: !91, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !67, file: !68, line: 114, baseType: !79, size: 32, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !67, file: !68, line: 115, baseType: !79, size: 32, offset: 288)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !67, file: !68, line: 116, baseType: !91, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !64, file: !63, line: 78, baseType: !99, size: 384)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 384, elements: !101)
!100 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!101 = !{!102}
!102 = !DISubrange(count: 48)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !64, file: !63, line: 79, baseType: !104, size: 64)
!104 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !48, file: !4, line: 125, baseType: !10, size: 64, offset: 1216)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "subp", scope: !48, file: !4, line: 126, baseType: !107, size: 512, offset: 1280)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3, size: 512, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !38, file: !4, line: 144, baseType: !10, size: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !38, file: !4, line: 145, baseType: !10, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !38, file: !4, line: 146, baseType: !37, size: 64, offset: 640)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !38, file: !4, line: 146, baseType: !37, size: 64, offset: 704)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !38, file: !4, line: 147, baseType: !10, size: 64, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "done_cv", scope: !38, file: !4, line: 151, baseType: !62, size: 384, offset: 832)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !38, file: !4, line: 152, baseType: !10, size: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "num_bodies", scope: !38, file: !4, line: 153, baseType: !10, size: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "bodyp", scope: !38, file: !4, line: 154, baseType: !119, size: 640, offset: 1344)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 640, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 10)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "child_num", scope: !28, file: !4, line: 94, baseType: !10, size: 64, offset: 512)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "vel", scope: !28, file: !4, line: 95, baseType: !16, size: 192, offset: 576)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !28, file: !4, line: 96, baseType: !16, size: 192, offset: 768)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !28, file: !4, line: 97, baseType: !12, size: 64, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!127 = !{i32 7, !"Dwarf Version", i32 5}
!128 = !{i32 2, !"Debug Info Version", i32 3}
!129 = !{i32 1, !"wchar_size", i32 4}
!130 = !{i32 7, !"PIC Level", i32 2}
!131 = !{i32 7, !"PIE Level", i32 2}
!132 = !{i32 7, !"uwtable", i32 2}
!133 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!134 = distinct !DISubprogram(name: "hackgrav", scope: !1, file: !1, line: 48, type: !135, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{null, !26, !10}
!137 = !{!138, !139, !140, !142, !144}
!138 = !DILocalVariable(name: "p", arg: 1, scope: !134, file: !1, line: 48, type: !26)
!139 = !DILocalVariable(name: "ProcessId", arg: 2, scope: !134, file: !1, line: 48, type: !10)
!140 = !DILocalVariable(name: "_i", scope: !141, file: !1, line: 51, type: !10)
!141 = distinct !DILexicalBlock(scope: !134, file: !1, line: 51, column: 4)
!142 = !DILocalVariable(name: "_i", scope: !143, file: !1, line: 53, type: !10)
!143 = distinct !DILexicalBlock(scope: !134, file: !1, line: 53, column: 4)
!144 = !DILocalVariable(name: "_i", scope: !145, file: !1, line: 59, type: !10)
!145 = distinct !DILexicalBlock(scope: !134, file: !1, line: 59, column: 4)
!146 = !DILocation(line: 0, scope: !134)
!147 = !DILocation(line: 50, column: 21, scope: !134)
!148 = !DILocation(line: 50, column: 27, scope: !134)
!149 = !DILocation(line: 0, scope: !141)
!150 = !DILocation(line: 51, column: 4, scope: !151)
!151 = distinct !DILexicalBlock(scope: !141, file: !1, line: 51, column: 4)
!152 = !DILocation(line: 51, column: 4, scope: !153)
!153 = distinct !DILexicalBlock(scope: !151, file: !1, line: 51, column: 4)
!154 = distinct !{!154, !150, !150, !155, !156}
!155 = !{!"llvm.loop.mustprogress"}
!156 = !{!"llvm.loop.unroll.disable"}
!157 = !DILocation(line: 52, column: 21, scope: !134)
!158 = !DILocation(line: 52, column: 26, scope: !134)
!159 = !DILocation(line: 0, scope: !143)
!160 = !DILocation(line: 53, column: 4, scope: !161)
!161 = distinct !DILexicalBlock(scope: !143, file: !1, line: 53, column: 4)
!162 = !DILocation(line: 53, column: 4, scope: !163)
!163 = distinct !DILexicalBlock(scope: !161, file: !1, line: 53, column: 4)
!164 = !DILocation(line: 54, column: 21, scope: !134)
!165 = !DILocation(line: 55, column: 31, scope: !134)
!166 = !DILocation(line: 57, column: 4, scope: !134)
!167 = !DILocation(line: 58, column: 30, scope: !134)
!168 = !DILocation(line: 58, column: 4, scope: !134)
!169 = !DILocation(line: 58, column: 11, scope: !134)
!170 = !DILocation(line: 0, scope: !145)
!171 = !DILocation(line: 59, column: 4, scope: !172)
!172 = distinct !DILexicalBlock(scope: !145, file: !1, line: 59, column: 4)
!173 = !DILocation(line: 59, column: 4, scope: !174)
!174 = distinct !DILexicalBlock(scope: !172, file: !1, line: 59, column: 4)
!175 = distinct !{!175, !171, !171, !155, !156}
!176 = !DILocation(line: 55, column: 21, scope: !134)
!177 = !DILocation(line: 63, column: 31, scope: !134)
!178 = !DILocation(line: 63, column: 60, scope: !134)
!179 = !DILocation(line: 63, column: 41, scope: !134)
!180 = !DILocation(line: 63, column: 4, scope: !134)
!181 = !DILocation(line: 63, column: 12, scope: !134)
!182 = !DILocation(line: 65, column: 1, scope: !134)
!183 = distinct !DISubprogram(name: "hackwalk", scope: !1, file: !1, line: 120, type: !184, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !10}
!186 = !{!187}
!187 = !DILocalVariable(name: "ProcessId", arg: 1, scope: !183, file: !1, line: 120, type: !10)
!188 = !DILocation(line: 0, scope: !183)
!189 = !DILocation(line: 122, column: 22, scope: !183)
!190 = !DILocation(line: 122, column: 30, scope: !183)
!191 = !DILocation(line: 122, column: 46, scope: !183)
!192 = !DILocation(line: 122, column: 52, scope: !183)
!193 = !DILocation(line: 122, column: 5, scope: !183)
!194 = !DILocation(line: 123, column: 1, scope: !183)
!195 = distinct !DISubprogram(name: "gravsub", scope: !1, file: !1, line: 73, type: !196, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !3, !10}
!198 = !{!199, !200, !201, !202, !203, !204, !205, !210, !211, !212, !214, !215, !217, !218, !220, !221}
!199 = !DILocalVariable(name: "p", arg: 1, scope: !195, file: !1, line: 73, type: !3)
!200 = !DILocalVariable(name: "ProcessId", arg: 2, scope: !195, file: !1, line: 73, type: !10)
!201 = !DILocalVariable(name: "drabs", scope: !195, file: !1, line: 75, type: !12)
!202 = !DILocalVariable(name: "phii", scope: !195, file: !1, line: 75, type: !12)
!203 = !DILocalVariable(name: "mor3", scope: !195, file: !1, line: 75, type: !12)
!204 = !DILocalVariable(name: "ai", scope: !195, file: !1, line: 76, type: !16)
!205 = !DILocalVariable(name: "_vp", scope: !206, file: !1, line: 82, type: !209)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 82, column: 9)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 78, column: 37)
!208 = distinct !DILexicalBlock(scope: !195, file: !1, line: 78, column: 9)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!210 = !DILocalVariable(name: "_up", scope: !206, file: !1, line: 82, type: !209)
!211 = !DILocalVariable(name: "_wp", scope: !206, file: !1, line: 82, type: !209)
!212 = !DILocalVariable(name: "_vp", scope: !213, file: !1, line: 86, type: !209)
!213 = distinct !DILexicalBlock(scope: !207, file: !1, line: 86, column: 9)
!214 = !DILocalVariable(name: "_up", scope: !213, file: !1, line: 86, type: !209)
!215 = !DILocalVariable(name: "_vp", scope: !216, file: !1, line: 94, type: !209)
!216 = distinct !DILexicalBlock(scope: !195, file: !1, line: 94, column: 5)
!217 = !DILocalVariable(name: "_up", scope: !216, file: !1, line: 94, type: !209)
!218 = !DILocalVariable(name: "_vp", scope: !219, file: !1, line: 95, type: !209)
!219 = distinct !DILexicalBlock(scope: !195, file: !1, line: 95, column: 5)
!220 = !DILocalVariable(name: "_up", scope: !219, file: !1, line: 95, type: !209)
!221 = !DILocalVariable(name: "_wp", scope: !219, file: !1, line: 95, type: !209)
!222 = !DILocation(line: 0, scope: !195)
!223 = !DILocation(line: 78, column: 31, scope: !208)
!224 = !DILocation(line: 78, column: 11, scope: !208)
!225 = !DILocation(line: 78, column: 9, scope: !195)
!226 = !DILocation(line: 89, column: 27, scope: !195)
!227 = !DILocation(line: 80, column: 26, scope: !228)
!228 = distinct !DILexicalBlock(scope: !207, file: !1, line: 80, column: 3)
!229 = !DILocation(line: 80, column: 56, scope: !228)
!230 = !DILocation(line: 80, column: 64, scope: !228)
!231 = !DILocation(line: 80, column: 71, scope: !228)
!232 = !DILocation(line: 80, column: 25, scope: !228)
!233 = !DILocation(line: 80, column: 4, scope: !228)
!234 = !DILocation(line: 82, column: 9, scope: !206)
!235 = !DILocation(line: 0, scope: !206)
!236 = !DILocation(line: 84, column: 28, scope: !237)
!237 = distinct !DILexicalBlock(scope: !207, file: !1, line: 84, column: 3)
!238 = !DILocation(line: 84, column: 58, scope: !237)
!239 = !DILocation(line: 84, column: 66, scope: !237)
!240 = !DILocation(line: 84, column: 73, scope: !237)
!241 = !DILocation(line: 84, column: 27, scope: !237)
!242 = !DILocation(line: 84, column: 4, scope: !237)
!243 = !DILocation(line: 0, scope: !213)
!244 = !DILocation(line: 86, column: 9, scope: !213)
!245 = !DILocation(line: 87, column: 5, scope: !207)
!246 = !DILocation(line: 89, column: 30, scope: !195)
!247 = !DILocation(line: 89, column: 22, scope: !195)
!248 = !DILocation(line: 90, column: 13, scope: !195)
!249 = !DILocation(line: 91, column: 12, scope: !195)
!250 = !DILocation(line: 91, column: 20, scope: !195)
!251 = !DILocation(line: 92, column: 22, scope: !195)
!252 = !DILocation(line: 92, column: 27, scope: !195)
!253 = !DILocation(line: 93, column: 36, scope: !195)
!254 = !DILocation(line: 93, column: 17, scope: !195)
!255 = !DILocation(line: 0, scope: !216)
!256 = !DILocation(line: 94, column: 5, scope: !216)
!257 = !DILocation(line: 95, column: 5, scope: !219)
!258 = !DILocation(line: 0, scope: !219)
!259 = !DILocation(line: 96, column: 8, scope: !260)
!260 = distinct !DILexicalBlock(scope: !195, file: !1, line: 96, column: 8)
!261 = !DILocation(line: 96, column: 16, scope: !260)
!262 = !DILocation(line: 96, column: 8, scope: !195)
!263 = !DILocation(line: 97, column: 25, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !1, line: 96, column: 25)
!265 = !DILocation(line: 110, column: 5, scope: !264)
!266 = !DILocation(line: 112, column: 25, scope: !267)
!267 = distinct !DILexicalBlock(scope: !260, file: !1, line: 111, column: 10)
!268 = !DILocation(line: 0, scope: !260)
!269 = !DILocation(line: 114, column: 1, scope: !195)
!270 = !DISubprogram(name: "pthread_mutex_lock", scope: !271, file: !271, line: 738, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !303)
!271 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !275}
!274 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !63, line: 72, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !63, line: 67, size: 320, elements: !278)
!278 = !{!279, !298, !302}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !277, file: !63, line: 69, baseType: !280, size: 320)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !281, line: 22, size: 320, elements: !282)
!281 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!282 = !{!283, !284, !285, !286, !287, !288, !290, !291}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !280, file: !281, line: 24, baseType: !274, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !280, file: !281, line: 25, baseType: !79, size: 32, offset: 32)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !280, file: !281, line: 26, baseType: !274, size: 32, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !280, file: !281, line: 28, baseType: !79, size: 32, offset: 96)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !280, file: !281, line: 32, baseType: !274, size: 32, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !280, file: !281, line: 34, baseType: !289, size: 16, offset: 160)
!289 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !280, file: !281, line: 35, baseType: !289, size: 16, offset: 176)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !280, file: !281, line: 36, baseType: !292, size: 128, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !68, line: 53, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !68, line: 49, size: 128, elements: !294)
!294 = !{!295, !297}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !293, file: !68, line: 51, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !293, file: !68, line: 52, baseType: !296, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !277, file: !63, line: 70, baseType: !299, size: 320)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 320, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 40)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !277, file: !63, line: 71, baseType: !10, size: 64)
!303 = !{}
!304 = !DISubprogram(name: "pthread_mutex_unlock", scope: !271, file: !271, line: 756, type: !272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !303)
!305 = distinct !DISubprogram(name: "walksub", scope: !1, file: !1, line: 129, type: !306, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{null, !3, !12, !10}
!308 = !{!309, !310, !311, !312, !314, !315, !316}
!309 = !DILocalVariable(name: "n", arg: 1, scope: !305, file: !1, line: 129, type: !3)
!310 = !DILocalVariable(name: "dsq", arg: 2, scope: !305, file: !1, line: 129, type: !12)
!311 = !DILocalVariable(name: "ProcessId", arg: 3, scope: !305, file: !1, line: 129, type: !10)
!312 = !DILocalVariable(name: "nn", scope: !305, file: !1, line: 131, type: !313)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!314 = !DILocalVariable(name: "l", scope: !305, file: !1, line: 132, type: !36)
!315 = !DILocalVariable(name: "p", scope: !305, file: !1, line: 133, type: !26)
!316 = !DILocalVariable(name: "i", scope: !305, file: !1, line: 134, type: !10)
!317 = !DILocation(line: 0, scope: !305)
!318 = !DILocation(line: 136, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !305, file: !1, line: 136, column: 8)
!320 = !DILocation(line: 136, column: 8, scope: !305)
!321 = !DILocation(line: 137, column: 11, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 137, column: 11)
!323 = distinct !DILexicalBlock(scope: !319, file: !1, line: 136, column: 36)
!324 = !DILocation(line: 137, column: 19, scope: !322)
!325 = !DILocation(line: 137, column: 11, scope: !323)
!326 = !DILocation(line: 146, column: 22, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 146, column: 3)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 146, column: 3)
!329 = distinct !DILexicalBlock(scope: !322, file: !1, line: 144, column: 12)
!330 = !DILocation(line: 146, column: 17, scope: !327)
!331 = !DILocation(line: 146, column: 3, scope: !328)
!332 = !DILocation(line: 138, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !1, line: 138, column: 3)
!334 = distinct !DILexicalBlock(scope: !322, file: !1, line: 137, column: 28)
!335 = !DILocation(line: 138, column: 3, scope: !333)
!336 = !DILocation(line: 139, column: 10, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 139, column: 10)
!338 = distinct !DILexicalBlock(scope: !339, file: !1, line: 138, column: 49)
!339 = distinct !DILexicalBlock(scope: !333, file: !1, line: 138, column: 3)
!340 = !DILocation(line: 139, column: 14, scope: !337)
!341 = !DILocation(line: 139, column: 10, scope: !338)
!342 = !DILocation(line: 140, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !337, file: !1, line: 139, column: 23)
!344 = !DILocation(line: 141, column: 6, scope: !343)
!345 = !DILocation(line: 138, column: 45, scope: !339)
!346 = !DILocation(line: 138, column: 25, scope: !339)
!347 = distinct !{!347, !335, !348, !155, !156}
!348 = !DILocation(line: 142, column: 3, scope: !333)
!349 = !DILocation(line: 147, column: 10, scope: !350)
!350 = distinct !DILexicalBlock(scope: !327, file: !1, line: 146, column: 39)
!351 = !DILocation(line: 148, column: 32, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !1, line: 148, column: 10)
!353 = !DILocation(line: 148, column: 12, scope: !352)
!354 = !DILocation(line: 148, column: 10, scope: !350)
!355 = !DILocation(line: 149, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !1, line: 148, column: 39)
!357 = !DILocation(line: 150, column: 6, scope: !356)
!358 = !DILocation(line: 152, column: 35, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !1, line: 151, column: 11)
!360 = !DILocation(line: 146, column: 35, scope: !327)
!361 = distinct !{!361, !331, !362, !155, !156}
!362 = !DILocation(line: 154, column: 3, scope: !328)
!363 = !DILocation(line: 158, column: 7, scope: !364)
!364 = distinct !DILexicalBlock(scope: !319, file: !1, line: 157, column: 9)
!365 = !DILocation(line: 160, column: 1, scope: !305)
!366 = distinct !DISubprogram(name: "subdivp", scope: !1, file: !1, line: 167, type: !367, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !370)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !3, !12, !10}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 45, baseType: !10)
!370 = !{!371, !372, !373, !374, !376, !377, !378, !380}
!371 = !DILocalVariable(name: "p", arg: 1, scope: !366, file: !1, line: 167, type: !3)
!372 = !DILocalVariable(name: "dsq", arg: 2, scope: !366, file: !1, line: 167, type: !12)
!373 = !DILocalVariable(name: "ProcessId", arg: 3, scope: !366, file: !1, line: 167, type: !10)
!374 = !DILocalVariable(name: "_vp", scope: !375, file: !1, line: 169, type: !209)
!375 = distinct !DILexicalBlock(scope: !366, file: !1, line: 169, column: 4)
!376 = !DILocalVariable(name: "_up", scope: !375, file: !1, line: 169, type: !209)
!377 = !DILocalVariable(name: "_wp", scope: !375, file: !1, line: 169, type: !209)
!378 = !DILocalVariable(name: "_vp", scope: !379, file: !1, line: 170, type: !209)
!379 = distinct !DILexicalBlock(scope: !366, file: !1, line: 170, column: 4)
!380 = !DILocalVariable(name: "_up", scope: !379, file: !1, line: 170, type: !209)
!381 = !DILocation(line: 0, scope: !366)
!382 = !DILocation(line: 169, column: 4, scope: !375)
!383 = !DILocation(line: 0, scope: !375)
!384 = !DILocation(line: 0, scope: !379)
!385 = !DILocation(line: 170, column: 4, scope: !379)
!386 = !DILocation(line: 171, column: 21, scope: !366)
!387 = !DILocation(line: 171, column: 26, scope: !366)
!388 = !DILocation(line: 172, column: 12, scope: !366)
!389 = !DILocation(line: 172, column: 18, scope: !366)
!390 = !DILocation(line: 172, column: 42, scope: !366)
!391 = !DILocation(line: 172, column: 4, scope: !366)
