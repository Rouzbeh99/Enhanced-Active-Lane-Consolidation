; ModuleID = 'adaptive.c'
source_filename = "adaptive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalMemory = type { i64, [1025 x [256 x i64]], %struct.anon, %struct.anon.3, %union.pthread_mutex_t, %union.pthread_mutex_t, [1025 x %union.pthread_mutex_t] }
%struct.anon = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.anon, %union.anon.1, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.anon = type { i64 }
%union.anon.1 = type { i64 }
%struct.anon.3 = type { %union.pthread_mutex_t, %union.pthread_cond_t, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@uout_invvertex = external local_unnamed_addr global [2 x [2 x [2 x [3 x float]]]], align 16
@invjacobian = dso_local local_unnamed_addr global [3 x [3 x float]] zeroinitializer, align 16, !dbg !0
@invinvjacobian = dso_local local_unnamed_addr global [3 x [3 x float]] zeroinitializer, align 16, !dbg !8
@num_rays_traced = dso_local local_unnamed_addr global i64 0, align 8, !dbg !13
@num_traced_rays_hit_volume = dso_local local_unnamed_addr global i64 0, align 8, !dbg !15
@num_samples_trilirped = dso_local local_unnamed_addr global i64 0, align 8, !dbg !17
@adaptive = external local_unnamed_addr global i16, align 2
@Global = external local_unnamed_addr global ptr, align 8
@num_nodes = external local_unnamed_addr global i64, align 8
@highest_sampling_boxlen = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [36 x i8] c"%3ld\09%3ld\09%6ld\09%6ld\09%6ld\09%6ld\09%8ld\0A\00", align 1
@frame = external local_unnamed_addr global i64, align 8
@itest = dso_local local_unnamed_addr global i64 0, align 8, !dbg !19
@image_len = external local_unnamed_addr global [2 x i64], align 16
@image_section = external local_unnamed_addr global [2 x i64], align 16
@block_xlen = external local_unnamed_addr global i64, align 8
@block_ylen = external local_unnamed_addr global i64, align 8
@mask_image_address = external local_unnamed_addr global ptr, align 8
@mask_image_len = external local_unnamed_addr global [2 x i64], align 16
@image_address = external local_unnamed_addr global ptr, align 8
@lowest_volume_boxlen = external local_unnamed_addr global i64, align 8
@volume_color_difference = external local_unnamed_addr global i64, align 8
@num_blocks = external local_unnamed_addr global i64, align 8
@num_xblocks = external local_unnamed_addr global i64, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ray_Trace(i64 noundef %my_node) local_unnamed_addr #0 !dbg !28 {
entry:
  %exectime = alloca i64, align 8
  %exectime1 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !32, metadata !DIExpression()), !dbg !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exectime) #8, !dbg !40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %exectime1) #8, !dbg !40
  call void @llvm.dbg.value(metadata i64 0, metadata !33, metadata !DIExpression()), !dbg !39
  br label %for.body, !dbg !41

for.body:                                         ; preds = %entry, %for.body
  %i.0327 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.0327, metadata !33, metadata !DIExpression()), !dbg !39
  %arrayidx = getelementptr inbounds [2 x [2 x [2 x [3 x float]]]], ptr @uout_invvertex, i64 0, i64 0, i64 0, i64 1, i64 %i.0327, !dbg !43
  %0 = load float, ptr %arrayidx, align 4, !dbg !43
  %arrayidx1 = getelementptr inbounds [3 x float], ptr @uout_invvertex, i64 0, i64 %i.0327, !dbg !46
  %1 = load float, ptr %arrayidx1, align 4, !dbg !46
  %sub = fsub float %0, %1, !dbg !47
  %arrayidx2 = getelementptr inbounds [3 x float], ptr @invjacobian, i64 0, i64 %i.0327, !dbg !48
  store float %sub, ptr %arrayidx2, align 4, !dbg !49
  %arrayidx3 = getelementptr inbounds [3 x float], ptr getelementptr inbounds ([2 x [2 x [2 x [3 x float]]]], ptr @uout_invvertex, i64 0, i64 0, i64 1), i64 0, i64 %i.0327, !dbg !50
  %2 = load float, ptr %arrayidx3, align 4, !dbg !50
  %sub5 = fsub float %2, %1, !dbg !51
  %arrayidx6 = getelementptr inbounds [3 x [3 x float]], ptr @invjacobian, i64 0, i64 1, i64 %i.0327, !dbg !52
  store float %sub5, ptr %arrayidx6, align 4, !dbg !53
  %arrayidx7 = getelementptr inbounds [3 x float], ptr getelementptr inbounds ([2 x [2 x [2 x [3 x float]]]], ptr @uout_invvertex, i64 0, i64 1), i64 0, i64 %i.0327, !dbg !54
  %3 = load float, ptr %arrayidx7, align 4, !dbg !54
  %sub9 = fsub float %3, %1, !dbg !55
  %arrayidx10 = getelementptr inbounds [3 x [3 x float]], ptr @invjacobian, i64 0, i64 2, i64 %i.0327, !dbg !56
  store float %sub9, ptr %arrayidx10, align 4, !dbg !57
  %inc = add nuw nsw i64 %i.0327, 1, !dbg !58
  call void @llvm.dbg.value(metadata i64 %inc, metadata !33, metadata !DIExpression()), !dbg !39
  %exitcond.not = icmp eq i64 %inc, 3, !dbg !59
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body, !dbg !41, !llvm.loop !60

for.cond14.preheader:                             ; preds = %for.body, %for.inc35
  %i.1330 = phi i64 [ %inc36, %for.inc35 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.1330, metadata !33, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i64 0, metadata !34, metadata !DIExpression()), !dbg !39
  br label %for.body16, !dbg !64

for.body16:                                       ; preds = %for.cond14.preheader, %for.inc32
  %j.0328 = phi i64 [ 0, %for.cond14.preheader ], [ %inc33, %for.inc32 ]
  call void @llvm.dbg.value(metadata i64 %j.0328, metadata !34, metadata !DIExpression()), !dbg !39
  %arrayidx18 = getelementptr inbounds [3 x [3 x float]], ptr @invjacobian, i64 0, i64 %i.1330, i64 %j.0328, !dbg !69
  %4 = load float, ptr %arrayidx18, align 4, !dbg !69
  %cmp19 = fcmp ogt float %4, 0.000000e+00, !dbg !69
  br i1 %cmp19, label %cond.end, label %cond.false, !dbg !69

cond.false:                                       ; preds = %for.body16
  %fneg = fneg float %4, !dbg !69
  br label %cond.end, !dbg !69

cond.end:                                         ; preds = %for.body16, %cond.false
  %cond = phi float [ %fneg, %cond.false ], [ %4, %for.body16 ], !dbg !69
  %conv = fpext float %cond to double, !dbg !69
  %cmp24 = fcmp ogt double %conv, 1.000000e-05, !dbg !73
  br i1 %cmp24, label %if.then, label %for.inc32, !dbg !74

if.then:                                          ; preds = %cond.end
  %conv29 = fdiv float 1.000000e+00, %4, !dbg !75
  %arrayidx31 = getelementptr inbounds [3 x [3 x float]], ptr @invinvjacobian, i64 0, i64 %i.1330, i64 %j.0328, !dbg !76
  store float %conv29, ptr %arrayidx31, align 4, !dbg !77
  br label %for.inc32, !dbg !76

for.inc32:                                        ; preds = %cond.end, %if.then
  %inc33 = add nuw nsw i64 %j.0328, 1, !dbg !78
  call void @llvm.dbg.value(metadata i64 %inc33, metadata !34, metadata !DIExpression()), !dbg !39
  %exitcond331.not = icmp eq i64 %inc33, 3, !dbg !79
  br i1 %exitcond331.not, label %for.inc35, label %for.body16, !dbg !64, !llvm.loop !80

for.inc35:                                        ; preds = %for.inc32
  %inc36 = add nuw nsw i64 %i.1330, 1, !dbg !82
  call void @llvm.dbg.value(metadata i64 %inc36, metadata !33, metadata !DIExpression()), !dbg !39
  %exitcond332.not = icmp eq i64 %inc36, 3, !dbg !83
  br i1 %exitcond332.not, label %for.end37, label %for.cond14.preheader, !dbg !84, !llvm.loop !85

for.end37:                                        ; preds = %for.inc35
  store i64 0, ptr @num_rays_traced, align 8, !dbg !87
  store i64 0, ptr @num_traced_rays_hit_volume, align 8, !dbg !88
  store i64 0, ptr @num_samples_trilirped, align 8, !dbg !89
  %5 = load i16, ptr @adaptive, align 2, !dbg !90
  %tobool.not = icmp eq i16 %5, 0, !dbg !90
  %6 = load ptr, ptr @Global, align 8, !dbg !92
  %TimeBarrier177 = getelementptr inbounds %struct.GlobalMemory, ptr %6, i64 0, i32 3, !dbg !92
  %call179 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %TimeBarrier177) #8, !dbg !92
  %7 = load ptr, ptr @Global, align 8, !dbg !92
  %bar_teller181 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 3, i32 2, !dbg !92
  %8 = load i32, ptr %bar_teller181, align 8, !dbg !92
  %inc182 = add i32 %8, 1, !dbg !92
  store i32 %inc182, ptr %bar_teller181, align 8, !dbg !92
  %conv185 = zext i32 %inc182 to i64, !dbg !92
  %9 = load i64, ptr @num_nodes, align 8, !dbg !92
  %cmp186 = icmp eq i64 %9, %conv185, !dbg !92
  br i1 %tobool.not, label %if.else176, label %if.then38, !dbg !93

if.then38:                                        ; preds = %for.end37
  br i1 %cmp186, label %if.then46, label %if.else, !dbg !94

if.then46:                                        ; preds = %if.then38
  store i32 0, ptr %bar_teller181, align 8, !dbg !97
  %bar_cond = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 3, i32 1, !dbg !100
  %call50 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond) #8, !dbg !101
  br label %if.end56, !dbg !102

if.else:                                          ; preds = %if.then38
  %TimeBarrier41 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 3, !dbg !103
  %bar_cond52 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 3, i32 1, !dbg !104
  %call55 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond52, ptr noundef nonnull %TimeBarrier41) #8, !dbg !106
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then46
  %10 = load ptr, ptr @Global, align 8, !dbg !107
  %TimeBarrier57 = getelementptr inbounds %struct.GlobalMemory, ptr %10, i64 0, i32 3, !dbg !108
  %call59 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %TimeBarrier57) #8, !dbg !109
  %call60 = tail call i64 @time(ptr noundef null) #8, !dbg !110
  call void @llvm.dbg.value(metadata i64 %call60, metadata !35, metadata !DIExpression()), !dbg !39
  tail call void @Pre_Shade(i64 noundef %my_node) #8, !dbg !112
  %11 = load ptr, ptr @Global, align 8, !dbg !113
  %TimeBarrier61 = getelementptr inbounds %struct.GlobalMemory, ptr %11, i64 0, i32 3, !dbg !115
  %call63 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %TimeBarrier61) #8, !dbg !116
  %12 = load ptr, ptr @Global, align 8, !dbg !117
  %bar_teller65 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 3, i32 2, !dbg !118
  %13 = load i32, ptr %bar_teller65, align 8, !dbg !119
  %inc66 = add i32 %13, 1, !dbg !119
  store i32 %inc66, ptr %bar_teller65, align 8, !dbg !119
  %conv69 = zext i32 %inc66 to i64, !dbg !120
  %14 = load i64, ptr @num_nodes, align 8, !dbg !122
  %cmp70 = icmp eq i64 %14, %conv69, !dbg !123
  br i1 %cmp70, label %if.then72, label %if.else78, !dbg !124

if.then72:                                        ; preds = %if.end56
  store i32 0, ptr %bar_teller65, align 8, !dbg !125
  %bar_cond76 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 3, i32 1, !dbg !127
  %call77 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond76) #8, !dbg !128
  br label %if.end84, !dbg !129

if.else78:                                        ; preds = %if.end56
  %TimeBarrier67 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 3, !dbg !130
  %bar_cond80 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 3, i32 1, !dbg !131
  %call83 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond80, ptr noundef nonnull %TimeBarrier67) #8, !dbg !133
  br label %if.end84

if.end84:                                         ; preds = %if.else78, %if.then72
  %15 = load ptr, ptr @Global, align 8, !dbg !134
  %TimeBarrier85 = getelementptr inbounds %struct.GlobalMemory, ptr %15, i64 0, i32 3, !dbg !135
  %call87 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %TimeBarrier85) #8, !dbg !136
  tail call void @Ray_Trace_Adaptively(i64 noundef %my_node), !dbg !137
  %call88 = tail call i64 @time(ptr noundef null) #8, !dbg !138
  call void @llvm.dbg.value(metadata i64 %call88, metadata !36, metadata !DIExpression()), !dbg !39
  %16 = load ptr, ptr @Global, align 8, !dbg !140
  %TimeBarrier89 = getelementptr inbounds %struct.GlobalMemory, ptr %16, i64 0, i32 3, !dbg !142
  %call91 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %TimeBarrier89) #8, !dbg !143
  %17 = load ptr, ptr @Global, align 8, !dbg !144
  %bar_teller93 = getelementptr inbounds %struct.GlobalMemory, ptr %17, i64 0, i32 3, i32 2, !dbg !145
  %18 = load i32, ptr %bar_teller93, align 8, !dbg !146
  %inc94 = add i32 %18, 1, !dbg !146
  store i32 %inc94, ptr %bar_teller93, align 8, !dbg !146
  %conv97 = zext i32 %inc94 to i64, !dbg !147
  %19 = load i64, ptr @num_nodes, align 8, !dbg !149
  %cmp98 = icmp eq i64 %19, %conv97, !dbg !150
  br i1 %cmp98, label %if.then100, label %if.else106, !dbg !151

if.then100:                                       ; preds = %if.end84
  store i32 0, ptr %bar_teller93, align 8, !dbg !152
  %bar_cond104 = getelementptr inbounds %struct.GlobalMemory, ptr %17, i64 0, i32 3, i32 1, !dbg !154
  %call105 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond104) #8, !dbg !155
  br label %if.end112, !dbg !156

if.else106:                                       ; preds = %if.end84
  %TimeBarrier95 = getelementptr inbounds %struct.GlobalMemory, ptr %17, i64 0, i32 3, !dbg !157
  %bar_cond108 = getelementptr inbounds %struct.GlobalMemory, ptr %17, i64 0, i32 3, i32 1, !dbg !158
  %call111 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond108, ptr noundef nonnull %TimeBarrier95) #8, !dbg !160
  br label %if.end112

if.end112:                                        ; preds = %if.else106, %if.then100
  %20 = load ptr, ptr @Global, align 8, !dbg !161
  %TimeBarrier113 = getelementptr inbounds %struct.GlobalMemory, ptr %20, i64 0, i32 3, !dbg !162
  %call115 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %TimeBarrier113) #8, !dbg !163
  call void @llvm.dbg.value(metadata ptr %exectime, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !39
  call void @mclock(i64 noundef %call88, i64 noundef %call60, ptr noundef nonnull %exectime) #8, !dbg !164
  %21 = load i64, ptr @highest_sampling_boxlen, align 8, !dbg !165
  %cmp116 = icmp sgt i64 %21, 1, !dbg !167
  br i1 %cmp116, label %if.then118, label %if.end262, !dbg !168

if.then118:                                       ; preds = %if.end112
  %22 = load ptr, ptr @Global, align 8, !dbg !169
  %TimeBarrier119 = getelementptr inbounds %struct.GlobalMemory, ptr %22, i64 0, i32 3, !dbg !172
  %call121 = call i32 @pthread_mutex_lock(ptr noundef nonnull %TimeBarrier119) #8, !dbg !173
  %23 = load ptr, ptr @Global, align 8, !dbg !174
  %bar_teller123 = getelementptr inbounds %struct.GlobalMemory, ptr %23, i64 0, i32 3, i32 2, !dbg !175
  %24 = load i32, ptr %bar_teller123, align 8, !dbg !176
  %inc124 = add i32 %24, 1, !dbg !176
  store i32 %inc124, ptr %bar_teller123, align 8, !dbg !176
  %conv127 = zext i32 %inc124 to i64, !dbg !177
  %25 = load i64, ptr @num_nodes, align 8, !dbg !179
  %cmp128 = icmp eq i64 %25, %conv127, !dbg !180
  br i1 %cmp128, label %if.then130, label %if.else136, !dbg !181

if.then130:                                       ; preds = %if.then118
  store i32 0, ptr %bar_teller123, align 8, !dbg !182
  %bar_cond134 = getelementptr inbounds %struct.GlobalMemory, ptr %23, i64 0, i32 3, i32 1, !dbg !184
  %call135 = call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond134) #8, !dbg !185
  br label %if.end142, !dbg !186

if.else136:                                       ; preds = %if.then118
  %TimeBarrier125 = getelementptr inbounds %struct.GlobalMemory, ptr %23, i64 0, i32 3, !dbg !187
  %bar_cond138 = getelementptr inbounds %struct.GlobalMemory, ptr %23, i64 0, i32 3, i32 1, !dbg !188
  %call141 = call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond138, ptr noundef nonnull %TimeBarrier125) #8, !dbg !190
  br label %if.end142

if.end142:                                        ; preds = %if.else136, %if.then130
  %26 = load ptr, ptr @Global, align 8, !dbg !191
  %TimeBarrier143 = getelementptr inbounds %struct.GlobalMemory, ptr %26, i64 0, i32 3, !dbg !192
  %call145 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %TimeBarrier143) #8, !dbg !193
  %call146 = call i64 @time(ptr noundef null) #8, !dbg !194
  call void @llvm.dbg.value(metadata i64 %call146, metadata !35, metadata !DIExpression()), !dbg !39
  call void @Interpolate_Recursively(i64 noundef %my_node), !dbg !196
  %call147 = call i64 @time(ptr noundef null) #8, !dbg !197
  call void @llvm.dbg.value(metadata i64 %call147, metadata !36, metadata !DIExpression()), !dbg !39
  %27 = load ptr, ptr @Global, align 8, !dbg !199
  %TimeBarrier148 = getelementptr inbounds %struct.GlobalMemory, ptr %27, i64 0, i32 3, !dbg !201
  %call150 = call i32 @pthread_mutex_lock(ptr noundef nonnull %TimeBarrier148) #8, !dbg !202
  %28 = load ptr, ptr @Global, align 8, !dbg !203
  %bar_teller152 = getelementptr inbounds %struct.GlobalMemory, ptr %28, i64 0, i32 3, i32 2, !dbg !204
  %29 = load i32, ptr %bar_teller152, align 8, !dbg !205
  %inc153 = add i32 %29, 1, !dbg !205
  store i32 %inc153, ptr %bar_teller152, align 8, !dbg !205
  %conv156 = zext i32 %inc153 to i64, !dbg !206
  %30 = load i64, ptr @num_nodes, align 8, !dbg !208
  %cmp157 = icmp eq i64 %30, %conv156, !dbg !209
  br i1 %cmp157, label %if.then159, label %if.else165, !dbg !210

if.then159:                                       ; preds = %if.end142
  store i32 0, ptr %bar_teller152, align 8, !dbg !211
  %bar_cond163 = getelementptr inbounds %struct.GlobalMemory, ptr %28, i64 0, i32 3, i32 1, !dbg !213
  %call164 = call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond163) #8, !dbg !214
  br label %if.end171, !dbg !215

if.else165:                                       ; preds = %if.end142
  %TimeBarrier154 = getelementptr inbounds %struct.GlobalMemory, ptr %28, i64 0, i32 3, !dbg !216
  %bar_cond167 = getelementptr inbounds %struct.GlobalMemory, ptr %28, i64 0, i32 3, i32 1, !dbg !217
  %call170 = call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond167, ptr noundef nonnull %TimeBarrier154) #8, !dbg !219
  br label %if.end171

if.end171:                                        ; preds = %if.else165, %if.then159
  %31 = load ptr, ptr @Global, align 8, !dbg !220
  %TimeBarrier172 = getelementptr inbounds %struct.GlobalMemory, ptr %31, i64 0, i32 3, !dbg !221
  %call174 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %TimeBarrier172) #8, !dbg !222
  call void @llvm.dbg.value(metadata ptr %exectime1, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !39
  call void @mclock(i64 noundef %call147, i64 noundef %call146, ptr noundef nonnull %exectime1) #8, !dbg !223
  br label %if.end262, !dbg !224

if.else176:                                       ; preds = %for.end37
  br i1 %cmp186, label %if.then188, label %if.else194, !dbg !225

if.then188:                                       ; preds = %if.else176
  store i32 0, ptr %bar_teller181, align 8, !dbg !228
  %bar_cond192 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 3, i32 1, !dbg !231
  %call193 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond192) #8, !dbg !232
  br label %if.end200, !dbg !233

if.else194:                                       ; preds = %if.else176
  %TimeBarrier183 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 3, !dbg !234
  %bar_cond196 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 3, i32 1, !dbg !235
  %call199 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond196, ptr noundef nonnull %TimeBarrier183) #8, !dbg !237
  br label %if.end200

if.end200:                                        ; preds = %if.else194, %if.then188
  %32 = load ptr, ptr @Global, align 8, !dbg !238
  %TimeBarrier201 = getelementptr inbounds %struct.GlobalMemory, ptr %32, i64 0, i32 3, !dbg !239
  %call203 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %TimeBarrier201) #8, !dbg !240
  %call204 = tail call i64 @time(ptr noundef null) #8, !dbg !241
  call void @llvm.dbg.value(metadata i64 %call204, metadata !35, metadata !DIExpression()), !dbg !39
  tail call void @Pre_Shade(i64 noundef %my_node) #8, !dbg !243
  %33 = load ptr, ptr @Global, align 8, !dbg !244
  %arrayidx205 = getelementptr inbounds %struct.GlobalMemory, ptr %33, i64 0, i32 1, i64 %my_node, !dbg !244
  store i64 0, ptr %arrayidx205, align 8, !dbg !245
  %34 = load ptr, ptr @Global, align 8, !dbg !246
  %TimeBarrier207 = getelementptr inbounds %struct.GlobalMemory, ptr %34, i64 0, i32 3, !dbg !248
  %call209 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %TimeBarrier207) #8, !dbg !249
  %35 = load ptr, ptr @Global, align 8, !dbg !250
  %bar_teller211 = getelementptr inbounds %struct.GlobalMemory, ptr %35, i64 0, i32 3, i32 2, !dbg !251
  %36 = load i32, ptr %bar_teller211, align 8, !dbg !252
  %inc212 = add i32 %36, 1, !dbg !252
  store i32 %inc212, ptr %bar_teller211, align 8, !dbg !252
  %conv215 = zext i32 %inc212 to i64, !dbg !253
  %37 = load i64, ptr @num_nodes, align 8, !dbg !255
  %cmp216 = icmp eq i64 %37, %conv215, !dbg !256
  br i1 %cmp216, label %if.then218, label %if.else224, !dbg !257

if.then218:                                       ; preds = %if.end200
  store i32 0, ptr %bar_teller211, align 8, !dbg !258
  %bar_cond222 = getelementptr inbounds %struct.GlobalMemory, ptr %35, i64 0, i32 3, i32 1, !dbg !260
  %call223 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond222) #8, !dbg !261
  br label %if.end230, !dbg !262

if.else224:                                       ; preds = %if.end200
  %TimeBarrier213 = getelementptr inbounds %struct.GlobalMemory, ptr %35, i64 0, i32 3, !dbg !263
  %bar_cond226 = getelementptr inbounds %struct.GlobalMemory, ptr %35, i64 0, i32 3, i32 1, !dbg !264
  %call229 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond226, ptr noundef nonnull %TimeBarrier213) #8, !dbg !266
  br label %if.end230

if.end230:                                        ; preds = %if.else224, %if.then218
  %38 = load ptr, ptr @Global, align 8, !dbg !267
  %TimeBarrier231 = getelementptr inbounds %struct.GlobalMemory, ptr %38, i64 0, i32 3, !dbg !268
  %call233 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %TimeBarrier231) #8, !dbg !269
  tail call void @Ray_Trace_Non_Adaptively(i64 noundef %my_node), !dbg !270
  %call234 = tail call i64 @time(ptr noundef null) #8, !dbg !271
  call void @llvm.dbg.value(metadata i64 %call234, metadata !36, metadata !DIExpression()), !dbg !39
  %39 = load ptr, ptr @Global, align 8, !dbg !273
  %TimeBarrier235 = getelementptr inbounds %struct.GlobalMemory, ptr %39, i64 0, i32 3, !dbg !275
  %call237 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %TimeBarrier235) #8, !dbg !276
  %40 = load ptr, ptr @Global, align 8, !dbg !277
  %bar_teller239 = getelementptr inbounds %struct.GlobalMemory, ptr %40, i64 0, i32 3, i32 2, !dbg !278
  %41 = load i32, ptr %bar_teller239, align 8, !dbg !279
  %inc240 = add i32 %41, 1, !dbg !279
  store i32 %inc240, ptr %bar_teller239, align 8, !dbg !279
  %conv243 = zext i32 %inc240 to i64, !dbg !280
  %42 = load i64, ptr @num_nodes, align 8, !dbg !282
  %cmp244 = icmp eq i64 %42, %conv243, !dbg !283
  br i1 %cmp244, label %if.then246, label %if.else252, !dbg !284

if.then246:                                       ; preds = %if.end230
  store i32 0, ptr %bar_teller239, align 8, !dbg !285
  %bar_cond250 = getelementptr inbounds %struct.GlobalMemory, ptr %40, i64 0, i32 3, i32 1, !dbg !287
  %call251 = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond250) #8, !dbg !288
  br label %if.end258, !dbg !289

if.else252:                                       ; preds = %if.end230
  %TimeBarrier241 = getelementptr inbounds %struct.GlobalMemory, ptr %40, i64 0, i32 3, !dbg !290
  %bar_cond254 = getelementptr inbounds %struct.GlobalMemory, ptr %40, i64 0, i32 3, i32 1, !dbg !291
  %call257 = tail call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond254, ptr noundef nonnull %TimeBarrier241) #8, !dbg !293
  br label %if.end258

if.end258:                                        ; preds = %if.else252, %if.then246
  %43 = load ptr, ptr @Global, align 8, !dbg !294
  %TimeBarrier259 = getelementptr inbounds %struct.GlobalMemory, ptr %43, i64 0, i32 3, !dbg !295
  %call261 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %TimeBarrier259) #8, !dbg !296
  call void @llvm.dbg.value(metadata ptr %exectime, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !39
  call void @mclock(i64 noundef %call234, i64 noundef %call204, ptr noundef nonnull %exectime) #8, !dbg !297
  call void @llvm.dbg.value(metadata i64 0, metadata !38, metadata !DIExpression()), !dbg !39
  store i64 0, ptr %exectime1, align 8, !dbg !298
  br label %if.end262

if.end262:                                        ; preds = %if.end112, %if.end171, %if.end258
  %44 = load ptr, ptr @Global, align 8, !dbg !299
  %CountLock = getelementptr inbounds %struct.GlobalMemory, ptr %44, i64 0, i32 5, !dbg !301
  %call263 = call i32 @pthread_mutex_lock(ptr noundef nonnull %CountLock) #8, !dbg !302
  %45 = load i64, ptr @frame, align 8, !dbg !303
  %46 = load i64, ptr %exectime, align 8, !dbg !304
  call void @llvm.dbg.value(metadata i64 %46, metadata !37, metadata !DIExpression()), !dbg !39
  %47 = load i64, ptr %exectime1, align 8, !dbg !305
  call void @llvm.dbg.value(metadata i64 %47, metadata !38, metadata !DIExpression()), !dbg !39
  %48 = load i64, ptr @num_rays_traced, align 8, !dbg !306
  %49 = load i64, ptr @num_traced_rays_hit_volume, align 8, !dbg !307
  %50 = load i64, ptr @num_samples_trilirped, align 8, !dbg !308
  %call264 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %my_node, i64 noundef %45, i64 noundef %46, i64 noundef %47, i64 noundef %48, i64 noundef %49, i64 noundef %50), !dbg !309
  %51 = load ptr, ptr @Global, align 8, !dbg !310
  %CountLock265 = getelementptr inbounds %struct.GlobalMemory, ptr %51, i64 0, i32 5, !dbg !312
  %call266 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %CountLock265) #8, !dbg !313
  %52 = load ptr, ptr @Global, align 8, !dbg !314
  %TimeBarrier267 = getelementptr inbounds %struct.GlobalMemory, ptr %52, i64 0, i32 3, !dbg !316
  %call269 = call i32 @pthread_mutex_lock(ptr noundef nonnull %TimeBarrier267) #8, !dbg !317
  %53 = load ptr, ptr @Global, align 8, !dbg !318
  %bar_teller271 = getelementptr inbounds %struct.GlobalMemory, ptr %53, i64 0, i32 3, i32 2, !dbg !319
  %54 = load i32, ptr %bar_teller271, align 8, !dbg !320
  %inc272 = add i32 %54, 1, !dbg !320
  store i32 %inc272, ptr %bar_teller271, align 8, !dbg !320
  %conv275 = zext i32 %inc272 to i64, !dbg !321
  %55 = load i64, ptr @num_nodes, align 8, !dbg !323
  %cmp276 = icmp eq i64 %55, %conv275, !dbg !324
  br i1 %cmp276, label %if.then278, label %if.else284, !dbg !325

if.then278:                                       ; preds = %if.end262
  store i32 0, ptr %bar_teller271, align 8, !dbg !326
  %bar_cond282 = getelementptr inbounds %struct.GlobalMemory, ptr %53, i64 0, i32 3, i32 1, !dbg !328
  %call283 = call i32 @pthread_cond_broadcast(ptr noundef nonnull %bar_cond282) #8, !dbg !329
  br label %if.end290, !dbg !330

if.else284:                                       ; preds = %if.end262
  %TimeBarrier273 = getelementptr inbounds %struct.GlobalMemory, ptr %53, i64 0, i32 3, !dbg !331
  %bar_cond286 = getelementptr inbounds %struct.GlobalMemory, ptr %53, i64 0, i32 3, i32 1, !dbg !332
  %call289 = call i32 @pthread_cond_wait(ptr noundef nonnull %bar_cond286, ptr noundef nonnull %TimeBarrier273) #8, !dbg !334
  br label %if.end290

if.end290:                                        ; preds = %if.else284, %if.then278
  %56 = load ptr, ptr @Global, align 8, !dbg !335
  %TimeBarrier291 = getelementptr inbounds %struct.GlobalMemory, ptr %56, i64 0, i32 3, !dbg !336
  %call293 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %TimeBarrier291) #8, !dbg !337
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exectime1) #8, !dbg !338
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %exectime) #8, !dbg !338
  ret void, !dbg !338
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare !dbg !339 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !377 i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #2

declare !dbg !420 i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !425 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !426 i64 @time(ptr noundef) local_unnamed_addr #2

declare !dbg !434 void @Pre_Shade(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ray_Trace_Adaptively(i64 noundef %my_node) local_unnamed_addr #0 !dbg !436 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !438, metadata !DIExpression()), !dbg !455
  store i64 0, ptr @itest, align 8, !dbg !456
  %0 = load i64, ptr @image_len, align 16, !dbg !457
  %conv = sitofp i64 %0 to float, !dbg !457
  %1 = load i64, ptr @image_section, align 16, !dbg !457
  %conv1 = sitofp i64 %1 to float, !dbg !457
  %div = fdiv float %conv, %conv1, !dbg !457
  %conv5 = fptosi float %div to i64, !dbg !457
  %conv6 = sitofp i64 %conv5 to float, !dbg !457
  %cmp = fcmp oeq float %div, %conv6, !dbg !457
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !457

cond.false:                                       ; preds = %entry
  %add = add nsw i64 %conv5, 1, !dbg !457
  br label %cond.end, !dbg !457

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %add, %cond.false ], [ %conv5, %entry ], !dbg !457
  call void @llvm.dbg.value(metadata i64 %cond, metadata !443, metadata !DIExpression()), !dbg !455
  %2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !458
  %conv16 = sitofp i64 %2 to float, !dbg !458
  %3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_section, i64 0, i64 1), align 8, !dbg !458
  %conv17 = sitofp i64 %3 to float, !dbg !458
  %div18 = fdiv float %conv16, %conv17, !dbg !458
  %conv22 = fptosi float %div18 to i64, !dbg !458
  %conv23 = sitofp i64 %conv22 to float, !dbg !458
  %cmp24 = fcmp oeq float %div18, %conv23, !dbg !458
  br i1 %cmp24, label %cond.end37, label %cond.false31, !dbg !458

cond.false31:                                     ; preds = %cond.end
  %add36 = add nsw i64 %conv22, 1, !dbg !458
  br label %cond.end37, !dbg !458

cond.end37:                                       ; preds = %cond.end, %cond.false31
  %cond38 = phi i64 [ %add36, %cond.false31 ], [ %conv22, %cond.end ], !dbg !458
  call void @llvm.dbg.value(metadata i64 %cond38, metadata !444, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata !DIArgList(i64 %cond, i64 %cond38), metadata !445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !455
  %conv39 = sitofp i64 %cond to float, !dbg !459
  %4 = load i64, ptr @block_xlen, align 8, !dbg !459
  %conv40 = sitofp i64 %4 to float, !dbg !459
  %div41 = fdiv float %conv39, %conv40, !dbg !459
  %conv45 = fptosi float %div41 to i64, !dbg !459
  %conv46 = sitofp i64 %conv45 to float, !dbg !459
  %cmp47 = fcmp oeq float %div41, %conv46, !dbg !459
  br i1 %cmp47, label %cond.end60, label %cond.false54, !dbg !459

cond.false54:                                     ; preds = %cond.end37
  %add59 = add nsw i64 %conv45, 1, !dbg !459
  br label %cond.end60, !dbg !459

cond.end60:                                       ; preds = %cond.end37, %cond.false54
  %cond61 = phi i64 [ %add59, %cond.false54 ], [ %conv45, %cond.end37 ], !dbg !459
  call void @llvm.dbg.value(metadata i64 %cond61, metadata !446, metadata !DIExpression()), !dbg !455
  %conv62 = sitofp i64 %cond38 to float, !dbg !460
  %5 = load i64, ptr @block_ylen, align 8, !dbg !460
  %conv63 = sitofp i64 %5 to float, !dbg !460
  %div64 = fdiv float %conv62, %conv63, !dbg !460
  %conv68 = fptosi float %div64 to i64, !dbg !460
  %conv69 = sitofp i64 %conv68 to float, !dbg !460
  %cmp70 = fcmp oeq float %div64, %conv69, !dbg !460
  br i1 %cmp70, label %cond.end83, label %cond.false77, !dbg !460

cond.false77:                                     ; preds = %cond.end60
  %add82 = add nsw i64 %conv68, 1, !dbg !460
  br label %cond.end83, !dbg !460

cond.end83:                                       ; preds = %cond.end60, %cond.false77
  %cond84 = phi i64 [ %add82, %cond.false77 ], [ %conv68, %cond.end60 ], !dbg !460
  call void @llvm.dbg.value(metadata i64 %cond84, metadata !447, metadata !DIExpression()), !dbg !455
  %mul85 = mul nsw i64 %cond84, %cond61, !dbg !461
  call void @llvm.dbg.value(metadata i64 %mul85, metadata !448, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !453, metadata !DIExpression()), !dbg !455
  %6 = load ptr, ptr @Global, align 8, !dbg !462
  %arrayidx = getelementptr inbounds %struct.GlobalMemory, ptr %6, i64 0, i32 1, i64 %my_node, !dbg !462
  store i64 0, ptr %arrayidx, align 8, !dbg !463
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !453, metadata !DIExpression()), !dbg !455
  %7 = load ptr, ptr @Global, align 8, !dbg !464
  %8 = load i64, ptr @num_nodes, align 8, !dbg !465
  %arrayidx88313 = getelementptr inbounds %struct.GlobalMemory, ptr %7, i64 0, i32 1, i64 %8, !dbg !464
  %9 = load i64, ptr %arrayidx88313, align 8, !dbg !464
  %cmp90314 = icmp sgt i64 %9, 0, !dbg !466
  br i1 %cmp90314, label %while.body, label %while.end241, !dbg !467

while.body:                                       ; preds = %cond.end83, %while.end240
  %10 = phi ptr [ %42, %while.end240 ], [ %7, %cond.end83 ]
  %local_node.0315 = phi i64 [ %local_node.1, %while.end240 ], [ %my_node, %cond.end83 ]
  call void @llvm.dbg.value(metadata i64 %local_node.0315, metadata !453, metadata !DIExpression()), !dbg !455
  %11 = load i64, ptr @image_section, align 16, !dbg !468
  %rem = srem i64 %local_node.0315, %11, !dbg !470
  %div125 = sdiv i64 %local_node.0315, %11, !dbg !471
  %mul92 = mul nsw i64 %rem, %cond, !dbg !472
  call void @llvm.dbg.value(metadata i64 %mul92, metadata !449, metadata !DIExpression()), !dbg !455
  %conv93 = sitofp i64 %mul92 to float, !dbg !473
  %12 = load i64, ptr @highest_sampling_boxlen, align 8, !dbg !473
  %conv94 = sitofp i64 %12 to float, !dbg !473
  %div95 = fdiv float %conv93, %conv94, !dbg !473
  %conv99 = fptosi float %div95 to i64, !dbg !473
  %conv100 = sitofp i64 %conv99 to float, !dbg !473
  %cmp101 = fcmp oeq float %div95, %conv100, !dbg !473
  br i1 %cmp101, label %cond.end114, label %cond.false108, !dbg !473

cond.false108:                                    ; preds = %while.body
  %add113 = add nsw i64 %conv99, 1, !dbg !473
  br label %cond.end114, !dbg !473

cond.end114:                                      ; preds = %while.body, %cond.false108
  %cond115 = phi i64 [ %add113, %cond.false108 ], [ %conv99, %while.body ], !dbg !473
  call void @llvm.dbg.value(metadata i64 %cond115, metadata !449, metadata !DIExpression()), !dbg !455
  %mul116 = mul nsw i64 %cond115, %12, !dbg !474
  call void @llvm.dbg.value(metadata i64 %mul116, metadata !449, metadata !DIExpression()), !dbg !455
  %add117 = add nsw i64 %mul116, %cond, !dbg !475
  %13 = load i64, ptr @image_len, align 16, !dbg !475
  %14 = tail call i64 @llvm.smin.i64(i64 %add117, i64 %13), !dbg !475
  call void @llvm.dbg.value(metadata i64 %14, metadata !450, metadata !DIExpression()), !dbg !455
  %mul126 = mul nsw i64 %div125, %cond38, !dbg !476
  call void @llvm.dbg.value(metadata i64 %mul126, metadata !451, metadata !DIExpression()), !dbg !455
  %conv127 = sitofp i64 %mul126 to float, !dbg !477
  %div129 = fdiv float %conv127, %conv94, !dbg !477
  %conv133 = fptosi float %div129 to i64, !dbg !477
  %conv134 = sitofp i64 %conv133 to float, !dbg !477
  %cmp135 = fcmp oeq float %div129, %conv134, !dbg !477
  br i1 %cmp135, label %cond.end148, label %cond.false142, !dbg !477

cond.false142:                                    ; preds = %cond.end114
  %add147 = add nsw i64 %conv133, 1, !dbg !477
  br label %cond.end148, !dbg !477

cond.end148:                                      ; preds = %cond.end114, %cond.false142
  %cond149 = phi i64 [ %add147, %cond.false142 ], [ %conv133, %cond.end114 ], !dbg !477
  call void @llvm.dbg.value(metadata i64 %cond149, metadata !451, metadata !DIExpression()), !dbg !455
  %mul150 = mul nsw i64 %cond149, %12, !dbg !478
  call void @llvm.dbg.value(metadata i64 %mul150, metadata !451, metadata !DIExpression()), !dbg !455
  %add151 = add nsw i64 %mul150, %cond38, !dbg !479
  %15 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !479
  %16 = tail call i64 @llvm.smin.i64(i64 %add151, i64 %15), !dbg !479
  call void @llvm.dbg.value(metadata i64 %16, metadata !452, metadata !DIExpression()), !dbg !455
  %arrayidx159 = getelementptr inbounds %struct.GlobalMemory, ptr %10, i64 0, i32 6, i64 %local_node.0315, !dbg !480
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx159) #8, !dbg !482
  %17 = load ptr, ptr @Global, align 8, !dbg !483
  %arrayidx161 = getelementptr inbounds %struct.GlobalMemory, ptr %17, i64 0, i32 1, i64 %local_node.0315, !dbg !483
  %18 = load i64, ptr %arrayidx161, align 8, !dbg !483
  call void @llvm.dbg.value(metadata i64 %18, metadata !454, metadata !DIExpression()), !dbg !455
  %add166 = add nsw i64 %18, 1, !dbg !484
  store i64 %add166, ptr %arrayidx161, align 8, !dbg !484
  %19 = load ptr, ptr @Global, align 8, !dbg !485
  %arrayidx168 = getelementptr inbounds %struct.GlobalMemory, ptr %19, i64 0, i32 6, i64 %local_node.0315, !dbg !487
  %call169 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx168) #8, !dbg !488
  call void @llvm.dbg.value(metadata i64 %18, metadata !454, metadata !DIExpression()), !dbg !455
  %cmp171311 = icmp slt i64 %18, %mul85, !dbg !489
  br i1 %cmp171311, label %while.body173, label %while.end, !dbg !490

while.body173:                                    ; preds = %cond.end148, %for.end197
  %work.0312 = phi i64 [ %32, %for.end197 ], [ %18, %cond.end148 ]
  call void @llvm.dbg.value(metadata i64 %work.0312, metadata !454, metadata !DIExpression()), !dbg !455
  %rem174 = srem i64 %work.0312, %cond61, !dbg !491
  %20 = load i64, ptr @block_xlen, align 8, !dbg !493
  %mul175 = mul nsw i64 %20, %rem174, !dbg !494
  %add176 = add nsw i64 %mul175, %mul116, !dbg !495
  call void @llvm.dbg.value(metadata i64 %add176, metadata !442, metadata !DIExpression()), !dbg !455
  %div177 = sdiv i64 %work.0312, %cond61, !dbg !496
  %21 = load i64, ptr @block_ylen, align 8, !dbg !497
  %mul178 = mul nsw i64 %21, %div177, !dbg !498
  %add179 = add nsw i64 %mul178, %mul150, !dbg !499
  call void @llvm.dbg.value(metadata i64 %add179, metadata !441, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i64 %add179, metadata !440, metadata !DIExpression()), !dbg !455
  %cmp181306 = icmp sgt i64 %21, 0, !dbg !500
  %cmp183307 = icmp slt i64 %add179, %16
  %or.cond308 = select i1 %cmp181306, i1 %cmp183307, i1 false, !dbg !503
  %cmp190302 = icmp slt i64 %add176, %14
  %or.cond324 = select i1 %or.cond308, i1 %cmp190302, i1 false, !dbg !503
  br i1 %or.cond324, label %for.cond185.preheader, label %for.end197, !dbg !503

for.cond185.preheader:                            ; preds = %while.body173, %for.inc195
  %22 = phi i64 [ %27, %for.inc195 ], [ %21, %while.body173 ]
  %23 = phi i64 [ %29, %for.inc195 ], [ %20, %while.body173 ], !dbg !504
  %outy.0309 = phi i64 [ %add196, %for.inc195 ], [ %add179, %while.body173 ]
  call void @llvm.dbg.value(metadata i64 %outy.0309, metadata !440, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata i64 %add176, metadata !439, metadata !DIExpression()), !dbg !455
  %cmp187301 = icmp sgt i64 %23, 0, !dbg !508
  %.pre = load i64, ptr @highest_sampling_boxlen, align 8, !dbg !509
  br i1 %cmp187301, label %for.body193, label %for.inc195, !dbg !510

for.body193:                                      ; preds = %for.cond185.preheader, %for.body193
  %24 = phi i64 [ %25, %for.body193 ], [ %.pre, %for.cond185.preheader ], !dbg !511
  %outx.0304 = phi i64 [ %add194, %for.body193 ], [ %add176, %for.cond185.preheader ]
  call void @llvm.dbg.value(metadata i64 %outx.0304, metadata !439, metadata !DIExpression()), !dbg !455
  tail call void @Ray_Trace_Adaptive_Box(i64 noundef %outx.0304, i64 noundef %outy.0309, i64 noundef %24), !dbg !513
  %25 = load i64, ptr @highest_sampling_boxlen, align 8, !dbg !514
  %add194 = add nsw i64 %25, %outx.0304, !dbg !515
  call void @llvm.dbg.value(metadata i64 %add194, metadata !439, metadata !DIExpression()), !dbg !455
  %26 = load i64, ptr @block_xlen, align 8, !dbg !504
  %add186 = add nsw i64 %26, %add176, !dbg !516
  %cmp187 = icmp slt i64 %add194, %add186, !dbg !508
  %cmp190 = icmp slt i64 %add194, %14
  %or.cond299 = select i1 %cmp187, i1 %cmp190, i1 false, !dbg !510
  br i1 %or.cond299, label %for.body193, label %for.inc195.loopexit, !dbg !510, !llvm.loop !517

for.inc195.loopexit:                              ; preds = %for.body193
  %.pre318 = load i64, ptr @block_ylen, align 8, !dbg !520
  br label %for.inc195, !dbg !521

for.inc195:                                       ; preds = %for.cond185.preheader, %for.inc195.loopexit
  %27 = phi i64 [ %.pre318, %for.inc195.loopexit ], [ %22, %for.cond185.preheader ], !dbg !520
  %28 = phi i64 [ %25, %for.inc195.loopexit ], [ %.pre, %for.cond185.preheader ], !dbg !521
  %29 = phi i64 [ %26, %for.inc195.loopexit ], [ %23, %for.cond185.preheader ]
  %add196 = add nsw i64 %28, %outy.0309, !dbg !522
  call void @llvm.dbg.value(metadata i64 %add196, metadata !440, metadata !DIExpression()), !dbg !455
  %add180 = add nsw i64 %27, %add179, !dbg !523
  %cmp181 = icmp slt i64 %add196, %add180, !dbg !500
  %cmp183 = icmp slt i64 %add196, %16
  %or.cond = select i1 %cmp181, i1 %cmp183, i1 false, !dbg !503
  br i1 %or.cond, label %for.cond185.preheader, label %for.end197, !dbg !503, !llvm.loop !524

for.end197:                                       ; preds = %for.inc195, %while.body173
  %30 = load ptr, ptr @Global, align 8, !dbg !527
  %arrayidx199 = getelementptr inbounds %struct.GlobalMemory, ptr %30, i64 0, i32 6, i64 %local_node.0315, !dbg !529
  %call200 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx199) #8, !dbg !530
  %31 = load ptr, ptr @Global, align 8, !dbg !531
  %arrayidx202 = getelementptr inbounds %struct.GlobalMemory, ptr %31, i64 0, i32 1, i64 %local_node.0315, !dbg !531
  %32 = load i64, ptr %arrayidx202, align 8, !dbg !531
  call void @llvm.dbg.value(metadata i64 %32, metadata !454, metadata !DIExpression()), !dbg !455
  %add207 = add nsw i64 %32, 1, !dbg !532
  store i64 %add207, ptr %arrayidx202, align 8, !dbg !532
  %33 = load ptr, ptr @Global, align 8, !dbg !533
  %arrayidx209 = getelementptr inbounds %struct.GlobalMemory, ptr %33, i64 0, i32 6, i64 %local_node.0315, !dbg !535
  %call210 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx209) #8, !dbg !536
  %cmp171 = icmp slt i64 %32, %mul85, !dbg !489
  br i1 %cmp171, label %while.body173, label %while.end, !dbg !490, !llvm.loop !537

while.end:                                        ; preds = %for.end197, %cond.end148
  %cmp211 = icmp eq i64 %local_node.0315, %my_node, !dbg !539
  br i1 %cmp211, label %if.then, label %if.end, !dbg !541

if.then:                                          ; preds = %while.end
  %34 = load ptr, ptr @Global, align 8, !dbg !542
  %35 = load i64, ptr @num_nodes, align 8, !dbg !545
  %arrayidx214 = getelementptr inbounds %struct.GlobalMemory, ptr %34, i64 0, i32 6, i64 %35, !dbg !546
  %call215 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx214) #8, !dbg !547
  %36 = load ptr, ptr @Global, align 8, !dbg !548
  %37 = load i64, ptr @num_nodes, align 8, !dbg !549
  %arrayidx217 = getelementptr inbounds %struct.GlobalMemory, ptr %36, i64 0, i32 1, i64 %37, !dbg !548
  %38 = load i64, ptr %arrayidx217, align 8, !dbg !550
  %dec = add nsw i64 %38, -1, !dbg !550
  store i64 %dec, ptr %arrayidx217, align 8, !dbg !550
  %39 = load ptr, ptr @Global, align 8, !dbg !551
  %40 = load i64, ptr @num_nodes, align 8, !dbg !553
  %arrayidx220 = getelementptr inbounds %struct.GlobalMemory, ptr %39, i64 0, i32 6, i64 %40, !dbg !554
  %call221 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx220) #8, !dbg !555
  br label %if.end, !dbg !556

if.end:                                           ; preds = %if.then, %while.end
  %41 = load i64, ptr @num_nodes, align 8, !dbg !557
  call void @llvm.dbg.value(metadata !DIArgList(i64 %local_node.0315, i64 %41), metadata !453, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_plus_uconst, 1, DW_OP_LLVM_arg, 1, DW_OP_mod, DW_OP_stack_value)), !dbg !455
  %42 = load ptr, ptr @Global, align 8
  %arrayidx232 = getelementptr inbounds %struct.GlobalMemory, ptr %42, i64 0, i32 1, i64 %41
  %.pre319 = load i64, ptr %arrayidx232, align 8
  %cmp90 = icmp sgt i64 %.pre319, 0
  br label %while.cond224, !dbg !558

while.cond224:                                    ; preds = %land.rhs230, %if.end
  %add222.pn.in = phi i64 [ %local_node.0315, %if.end ], [ %local_node.1, %land.rhs230 ]
  %add222.pn = add nsw i64 %add222.pn.in, 1, !dbg !559
  %local_node.1 = srem i64 %add222.pn, %41, !dbg !559
  call void @llvm.dbg.value(metadata i64 %local_node.1, metadata !453, metadata !DIExpression()), !dbg !455
  %arrayidx226 = getelementptr inbounds %struct.GlobalMemory, ptr %42, i64 0, i32 1, i64 %local_node.1, !dbg !560
  %43 = load i64, ptr %arrayidx226, align 8, !dbg !560
  %cmp228.not = icmp slt i64 %43, %mul85, !dbg !561
  br i1 %cmp228.not, label %while.end240, label %land.rhs230, !dbg !562

land.rhs230:                                      ; preds = %while.cond224
  br i1 %cmp90, label %while.cond224, label %while.end241, !dbg !558, !llvm.loop !563

while.end240:                                     ; preds = %while.cond224
  call void @llvm.dbg.value(metadata i64 %local_node.1, metadata !453, metadata !DIExpression()), !dbg !455
  br i1 %cmp90, label %while.body, label %while.end241, !dbg !467, !llvm.loop !565

while.end241:                                     ; preds = %while.end240, %land.rhs230, %cond.end83
  ret void, !dbg !567
}

declare !dbg !568 void @mclock(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Interpolate_Recursively(i64 noundef %my_node) local_unnamed_addr #4 !dbg !571 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !573, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i64 0, metadata !574, metadata !DIExpression()), !dbg !579
  %0 = load i64, ptr @num_blocks, align 8, !dbg !580
  %cmp46 = icmp sgt i64 %0, 0, !dbg !583
  br i1 %cmp46, label %for.body.preheader, label %for.end21, !dbg !584

for.body.preheader:                               ; preds = %entry
  %.pre = load i64, ptr @block_ylen, align 8, !dbg !585
  %.pre48 = load i64, ptr @block_xlen, align 8, !dbg !587
  %.pre49 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8
  br label %for.body, !dbg !584

for.body:                                         ; preds = %for.body.preheader, %for.inc19
  %1 = phi i64 [ %22, %for.inc19 ], [ %0, %for.body.preheader ]
  %2 = phi i64 [ %23, %for.inc19 ], [ %.pre49, %for.body.preheader ]
  %3 = phi i64 [ %24, %for.inc19 ], [ %.pre, %for.body.preheader ]
  %4 = phi i64 [ %25, %for.inc19 ], [ %.pre48, %for.body.preheader ]
  %5 = phi i64 [ %26, %for.inc19 ], [ %.pre49, %for.body.preheader ]
  %6 = phi i64 [ %27, %for.inc19 ], [ %.pre48, %for.body.preheader ], !dbg !587
  %7 = phi i64 [ %28, %for.inc19 ], [ %.pre, %for.body.preheader ], !dbg !585
  %i.047 = phi i64 [ %add20, %for.inc19 ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.047, metadata !574, metadata !DIExpression()), !dbg !579
  %add = add nsw i64 %i.047, %my_node, !dbg !588
  %8 = load i64, ptr @num_xblocks, align 8, !dbg !589
  %div = sdiv i64 %add, %8, !dbg !590
  %mul = mul nsw i64 %7, %div, !dbg !591
  call void @llvm.dbg.value(metadata i64 %mul, metadata !578, metadata !DIExpression()), !dbg !579
  %rem = srem i64 %add, %8, !dbg !592
  %mul2 = mul nsw i64 %6, %rem, !dbg !593
  call void @llvm.dbg.value(metadata i64 %mul2, metadata !577, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i64 %mul, metadata !576, metadata !DIExpression()), !dbg !579
  %cmp541 = icmp sgt i64 %7, 0, !dbg !594
  %cmp642 = icmp slt i64 %mul, %5
  %or.cond43 = select i1 %cmp541, i1 %cmp642, i1 false, !dbg !597
  br i1 %or.cond43, label %for.cond8.preheader.preheader, label %for.inc19, !dbg !597

for.cond8.preheader.preheader:                    ; preds = %for.body
  %.pre50 = load i64, ptr @image_len, align 16
  br label %for.cond8.preheader, !dbg !598

for.cond8.preheader:                              ; preds = %for.cond8.preheader.preheader, %for.inc16
  %9 = phi i64 [ %17, %for.inc16 ], [ %2, %for.cond8.preheader.preheader ]
  %10 = phi i64 [ %18, %for.inc16 ], [ %3, %for.cond8.preheader.preheader ]
  %11 = phi i64 [ %20, %for.inc16 ], [ %.pre50, %for.cond8.preheader.preheader ]
  %12 = phi i64 [ %21, %for.inc16 ], [ %4, %for.cond8.preheader.preheader ], !dbg !599
  %outy.044 = phi i64 [ %add17, %for.inc16 ], [ %mul, %for.cond8.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %outy.044, metadata !576, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i64 %mul2, metadata !575, metadata !DIExpression()), !dbg !579
  %cmp1036 = icmp sgt i64 %12, 0, !dbg !603
  %cmp1237 = icmp slt i64 %mul2, %11
  %or.cond3438 = select i1 %cmp1036, i1 %cmp1237, i1 false, !dbg !604
  %.pre51 = load i64, ptr @highest_sampling_boxlen, align 8, !dbg !605
  br i1 %or.cond3438, label %for.body14, label %for.inc16, !dbg !604

for.body14:                                       ; preds = %for.cond8.preheader, %for.body14
  %13 = phi i64 [ %14, %for.body14 ], [ %.pre51, %for.cond8.preheader ], !dbg !606
  %outx.039 = phi i64 [ %add15, %for.body14 ], [ %mul2, %for.cond8.preheader ]
  call void @llvm.dbg.value(metadata i64 %outx.039, metadata !575, metadata !DIExpression()), !dbg !579
  tail call void @Interpolate_Recursive_Box(i64 noundef %outx.039, i64 noundef %outy.044, i64 noundef %13), !dbg !608
  %14 = load i64, ptr @highest_sampling_boxlen, align 8, !dbg !609
  %add15 = add nsw i64 %14, %outx.039, !dbg !610
  call void @llvm.dbg.value(metadata i64 %add15, metadata !575, metadata !DIExpression()), !dbg !579
  %15 = load i64, ptr @block_xlen, align 8, !dbg !599
  %add9 = add nsw i64 %15, %mul2, !dbg !611
  %cmp10 = icmp slt i64 %add15, %add9, !dbg !603
  %16 = load i64, ptr @image_len, align 16
  %cmp12 = icmp slt i64 %add15, %16
  %or.cond34 = select i1 %cmp10, i1 %cmp12, i1 false, !dbg !604
  br i1 %or.cond34, label %for.body14, label %for.inc16.loopexit, !dbg !604, !llvm.loop !612

for.inc16.loopexit:                               ; preds = %for.body14
  %.pre53 = load i64, ptr @block_ylen, align 8, !dbg !615
  %.pre54 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8
  br label %for.inc16, !dbg !616

for.inc16:                                        ; preds = %for.cond8.preheader, %for.inc16.loopexit
  %17 = phi i64 [ %.pre54, %for.inc16.loopexit ], [ %9, %for.cond8.preheader ]
  %18 = phi i64 [ %.pre53, %for.inc16.loopexit ], [ %10, %for.cond8.preheader ], !dbg !615
  %19 = phi i64 [ %14, %for.inc16.loopexit ], [ %.pre51, %for.cond8.preheader ], !dbg !616
  %20 = phi i64 [ %16, %for.inc16.loopexit ], [ %11, %for.cond8.preheader ]
  %21 = phi i64 [ %15, %for.inc16.loopexit ], [ %12, %for.cond8.preheader ]
  %add17 = add nsw i64 %19, %outy.044, !dbg !617
  call void @llvm.dbg.value(metadata i64 %add17, metadata !576, metadata !DIExpression()), !dbg !579
  %add4 = add nsw i64 %18, %mul, !dbg !618
  %cmp5 = icmp slt i64 %add17, %add4, !dbg !594
  %cmp6 = icmp slt i64 %add17, %17
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false, !dbg !597
  br i1 %or.cond, label %for.cond8.preheader, label %for.inc19.loopexit, !dbg !597, !llvm.loop !619

for.inc19.loopexit:                               ; preds = %for.inc16
  %.pre55 = load i64, ptr @num_blocks, align 8, !dbg !580
  br label %for.inc19, !dbg !621

for.inc19:                                        ; preds = %for.inc19.loopexit, %for.body
  %22 = phi i64 [ %.pre55, %for.inc19.loopexit ], [ %1, %for.body ], !dbg !580
  %23 = phi i64 [ %17, %for.inc19.loopexit ], [ %2, %for.body ]
  %24 = phi i64 [ %18, %for.inc19.loopexit ], [ %3, %for.body ]
  %25 = phi i64 [ %21, %for.inc19.loopexit ], [ %4, %for.body ]
  %26 = phi i64 [ %17, %for.inc19.loopexit ], [ %5, %for.body ]
  %27 = phi i64 [ %21, %for.inc19.loopexit ], [ %6, %for.body ]
  %28 = phi i64 [ %18, %for.inc19.loopexit ], [ %7, %for.body ]
  %29 = load i64, ptr @num_nodes, align 8, !dbg !621
  %add20 = add nsw i64 %29, %i.047, !dbg !622
  call void @llvm.dbg.value(metadata i64 %add20, metadata !574, metadata !DIExpression()), !dbg !579
  %cmp = icmp slt i64 %add20, %22, !dbg !583
  br i1 %cmp, label %for.body, label %for.end21, !dbg !584, !llvm.loop !623

for.end21:                                        ; preds = %for.inc19, %entry
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ray_Trace_Non_Adaptively(i64 noundef %my_node) local_unnamed_addr #0 !dbg !626 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !628, metadata !DIExpression()), !dbg !652
  %0 = load i64, ptr @image_len, align 16, !dbg !653
  %conv = sitofp i64 %0 to float, !dbg !653
  %1 = load i64, ptr @image_section, align 16, !dbg !653
  %conv1 = sitofp i64 %1 to float, !dbg !653
  %div = fdiv float %conv, %conv1, !dbg !653
  %conv5 = fptosi float %div to i64, !dbg !653
  %conv6 = sitofp i64 %conv5 to float, !dbg !653
  %cmp = fcmp oeq float %div, %conv6, !dbg !653
  br i1 %cmp, label %cond.end, label %cond.false, !dbg !653

cond.false:                                       ; preds = %entry
  %add = add nsw i64 %conv5, 1, !dbg !653
  br label %cond.end, !dbg !653

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi i64 [ %add, %cond.false ], [ %conv5, %entry ], !dbg !653
  call void @llvm.dbg.value(metadata i64 %cond, metadata !640, metadata !DIExpression()), !dbg !652
  %2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !654
  %conv16 = sitofp i64 %2 to float, !dbg !654
  %3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_section, i64 0, i64 1), align 8, !dbg !654
  %conv17 = sitofp i64 %3 to float, !dbg !654
  %div18 = fdiv float %conv16, %conv17, !dbg !654
  %conv22 = fptosi float %div18 to i64, !dbg !654
  %conv23 = sitofp i64 %conv22 to float, !dbg !654
  %cmp24 = fcmp oeq float %div18, %conv23, !dbg !654
  br i1 %cmp24, label %cond.end37, label %cond.false31, !dbg !654

cond.false31:                                     ; preds = %cond.end
  %add36 = add nsw i64 %conv22, 1, !dbg !654
  br label %cond.end37, !dbg !654

cond.end37:                                       ; preds = %cond.end, %cond.false31
  %cond38 = phi i64 [ %add36, %cond.false31 ], [ %conv22, %cond.end ], !dbg !654
  call void @llvm.dbg.value(metadata i64 %cond38, metadata !641, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata !DIArgList(i64 %cond, i64 %cond38), metadata !642, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !652
  %conv39 = sitofp i64 %cond to float, !dbg !655
  %4 = load i64, ptr @block_xlen, align 8, !dbg !655
  %conv40 = sitofp i64 %4 to float, !dbg !655
  %div41 = fdiv float %conv39, %conv40, !dbg !655
  %conv45 = fptosi float %div41 to i64, !dbg !655
  %conv46 = sitofp i64 %conv45 to float, !dbg !655
  %cmp47 = fcmp oeq float %div41, %conv46, !dbg !655
  br i1 %cmp47, label %cond.end60, label %cond.false54, !dbg !655

cond.false54:                                     ; preds = %cond.end37
  %add59 = add nsw i64 %conv45, 1, !dbg !655
  br label %cond.end60, !dbg !655

cond.end60:                                       ; preds = %cond.end37, %cond.false54
  %cond61 = phi i64 [ %add59, %cond.false54 ], [ %conv45, %cond.end37 ], !dbg !655
  call void @llvm.dbg.value(metadata i64 %cond61, metadata !643, metadata !DIExpression()), !dbg !652
  %conv62 = sitofp i64 %cond38 to float, !dbg !656
  %5 = load i64, ptr @block_ylen, align 8, !dbg !656
  %conv63 = sitofp i64 %5 to float, !dbg !656
  %div64 = fdiv float %conv62, %conv63, !dbg !656
  %conv68 = fptosi float %div64 to i64, !dbg !656
  %conv69 = sitofp i64 %conv68 to float, !dbg !656
  %cmp70 = fcmp oeq float %div64, %conv69, !dbg !656
  br i1 %cmp70, label %cond.end83, label %cond.false77, !dbg !656

cond.false77:                                     ; preds = %cond.end60
  %add82 = add nsw i64 %conv68, 1, !dbg !656
  br label %cond.end83, !dbg !656

cond.end83:                                       ; preds = %cond.end60, %cond.false77
  %cond84 = phi i64 [ %add82, %cond.false77 ], [ %conv68, %cond.end60 ], !dbg !656
  call void @llvm.dbg.value(metadata i64 %cond84, metadata !644, metadata !DIExpression()), !dbg !652
  %mul85 = mul nsw i64 %cond84, %cond61, !dbg !657
  call void @llvm.dbg.value(metadata i64 %mul85, metadata !645, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !650, metadata !DIExpression()), !dbg !652
  %6 = load ptr, ptr @Global, align 8, !dbg !658
  %7 = load i64, ptr @num_nodes, align 8, !dbg !660
  %arrayidx = getelementptr inbounds %struct.GlobalMemory, ptr %6, i64 0, i32 6, i64 %7, !dbg !661
  %call = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx) #8, !dbg !662
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !650, metadata !DIExpression()), !dbg !652
  %8 = load ptr, ptr @Global, align 8, !dbg !663
  %9 = load i64, ptr @num_nodes, align 8, !dbg !664
  %arrayidx86292 = getelementptr inbounds %struct.GlobalMemory, ptr %8, i64 0, i32 1, i64 %9, !dbg !663
  %10 = load i64, ptr %arrayidx86292, align 8, !dbg !663
  %cmp88293 = icmp sgt i64 %10, 0, !dbg !665
  br i1 %cmp88293, label %while.body, label %while.end216, !dbg !666

while.body:                                       ; preds = %cond.end83, %while.end212
  %11 = phi i64 [ %58, %while.end212 ], [ %9, %cond.end83 ]
  %12 = phi ptr [ %57, %while.end212 ], [ %8, %cond.end83 ]
  %local_node.0294 = phi i64 [ %local_node.1.lcssa, %while.end212 ], [ %my_node, %cond.end83 ]
  call void @llvm.dbg.value(metadata i64 %local_node.0294, metadata !650, metadata !DIExpression()), !dbg !652
  %arrayidx91 = getelementptr inbounds %struct.GlobalMemory, ptr %12, i64 0, i32 6, i64 %11, !dbg !667
  %call92 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx91) #8, !dbg !670
  %13 = load i64, ptr @image_section, align 16, !dbg !671
  %rem = srem i64 %local_node.0294, %13, !dbg !672
  %mul93 = mul nsw i64 %rem, %cond, !dbg !673
  call void @llvm.dbg.value(metadata i64 %mul93, metadata !646, metadata !DIExpression()), !dbg !652
  %add94 = add nsw i64 %mul93, %cond, !dbg !674
  %14 = load i64, ptr @image_len, align 16, !dbg !674
  %15 = tail call i64 @llvm.smin.i64(i64 %add94, i64 %14), !dbg !674
  call void @llvm.dbg.value(metadata i64 %15, metadata !647, metadata !DIExpression()), !dbg !652
  %div102 = sdiv i64 %local_node.0294, %13, !dbg !675
  %mul103 = mul nsw i64 %div102, %cond38, !dbg !676
  call void @llvm.dbg.value(metadata i64 %mul103, metadata !648, metadata !DIExpression()), !dbg !652
  %add104 = add nsw i64 %mul103, %cond38, !dbg !677
  %16 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !677
  %17 = tail call i64 @llvm.smin.i64(i64 %add104, i64 %16), !dbg !677
  call void @llvm.dbg.value(metadata i64 %17, metadata !649, metadata !DIExpression()), !dbg !652
  %18 = load ptr, ptr @Global, align 8, !dbg !678
  %arrayidx113 = getelementptr inbounds %struct.GlobalMemory, ptr %18, i64 0, i32 6, i64 %local_node.0294, !dbg !680
  %call114 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx113) #8, !dbg !681
  %19 = load ptr, ptr @Global, align 8, !dbg !682
  %arrayidx116 = getelementptr inbounds %struct.GlobalMemory, ptr %19, i64 0, i32 1, i64 %local_node.0294, !dbg !682
  %20 = load i64, ptr %arrayidx116, align 8, !dbg !683
  %inc = add nsw i64 %20, 1, !dbg !683
  store i64 %inc, ptr %arrayidx116, align 8, !dbg !683
  call void @llvm.dbg.value(metadata i64 %20, metadata !651, metadata !DIExpression()), !dbg !652
  %21 = load ptr, ptr @Global, align 8, !dbg !684
  %arrayidx119 = getelementptr inbounds %struct.GlobalMemory, ptr %21, i64 0, i32 6, i64 %local_node.0294, !dbg !686
  %call120 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx119) #8, !dbg !687
  call void @llvm.dbg.value(metadata i64 %20, metadata !651, metadata !DIExpression()), !dbg !652
  %cmp122284 = icmp slt i64 %20, %mul85, !dbg !688
  br i1 %cmp122284, label %while.body124, label %while.end, !dbg !689

while.body124:                                    ; preds = %while.body, %for.end154
  %work.0285 = phi i64 [ %33, %for.end154 ], [ %20, %while.body ]
  call void @llvm.dbg.value(metadata i64 %work.0285, metadata !651, metadata !DIExpression()), !dbg !652
  %rem125 = srem i64 %work.0285, %cond61, !dbg !690
  %22 = load i64, ptr @block_xlen, align 8, !dbg !692
  %mul126 = mul nsw i64 %22, %rem125, !dbg !693
  %add127 = add nsw i64 %mul126, %mul93, !dbg !694
  call void @llvm.dbg.value(metadata i64 %add127, metadata !631, metadata !DIExpression()), !dbg !652
  %div128 = sdiv i64 %work.0285, %cond61, !dbg !695
  %23 = load i64, ptr @block_ylen, align 8, !dbg !696
  %mul129 = mul nsw i64 %23, %div128, !dbg !697
  %add130 = add nsw i64 %mul129, %mul103, !dbg !698
  call void @llvm.dbg.value(metadata i64 %add130, metadata !632, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i64 %add130, metadata !630, metadata !DIExpression()), !dbg !652
  %cmp132279 = icmp sgt i64 %23, 0, !dbg !699
  %cmp134280 = icmp slt i64 %add130, %17
  %or.cond281 = select i1 %cmp132279, i1 %cmp134280, i1 false, !dbg !702
  %cmp141275 = icmp slt i64 %add127, %15
  %or.cond304 = select i1 %or.cond281, i1 %cmp141275, i1 false, !dbg !702
  br i1 %or.cond304, label %for.cond136.preheader, label %for.end154, !dbg !702

for.cond136.preheader:                            ; preds = %while.body124, %for.inc152
  %24 = phi i64 [ %29, %for.inc152 ], [ %23, %while.body124 ]
  %25 = phi i64 [ %30, %for.inc152 ], [ %22, %while.body124 ], !dbg !703
  %outy.0282 = phi i64 [ %inc153, %for.inc152 ], [ %add130, %while.body124 ]
  call void @llvm.dbg.value(metadata i64 %outy.0282, metadata !630, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i64 %add127, metadata !629, metadata !DIExpression()), !dbg !652
  %cmp138274 = icmp sgt i64 %25, 0, !dbg !707
  br i1 %cmp138274, label %for.body144.lr.ph, label %for.inc152, !dbg !708

for.body144.lr.ph:                                ; preds = %for.cond136.preheader
  %conv146 = sitofp i64 %outy.0282 to float
  %conv150 = fpext float %conv146 to double
  br label %for.body144, !dbg !708

for.body144:                                      ; preds = %for.body144.lr.ph, %for.body144
  %outx.0277 = phi i64 [ %add127, %for.body144.lr.ph ], [ %inc151, %for.body144 ]
  call void @llvm.dbg.value(metadata i64 %outx.0277, metadata !629, metadata !DIExpression()), !dbg !652
  %conv145 = sitofp i64 %outx.0277 to float, !dbg !709
  call void @llvm.dbg.value(metadata float %conv145, metadata !633, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata float %conv146, metadata !634, metadata !DIExpression()), !dbg !652
  %26 = load ptr, ptr @image_address, align 8, !dbg !711
  %27 = load i64, ptr @image_len, align 16, !dbg !711
  %mul147 = mul nsw i64 %27, %outy.0282, !dbg !711
  %add.ptr = getelementptr inbounds i8, ptr %26, i64 %mul147, !dbg !711
  %add.ptr148 = getelementptr inbounds i8, ptr %add.ptr, i64 %outx.0277, !dbg !711
  call void @llvm.dbg.value(metadata ptr %add.ptr148, metadata !635, metadata !DIExpression()), !dbg !652
  %conv149 = fpext float %conv145 to double, !dbg !712
  tail call void @Trace_Ray(double noundef %conv149, double noundef %conv150, ptr noundef %add.ptr148) #8, !dbg !713
  %inc151 = add nsw i64 %outx.0277, 1, !dbg !714
  call void @llvm.dbg.value(metadata i64 %inc151, metadata !629, metadata !DIExpression()), !dbg !652
  %28 = load i64, ptr @block_xlen, align 8, !dbg !703
  %add137 = add nsw i64 %28, %add127, !dbg !715
  %cmp138 = icmp slt i64 %inc151, %add137, !dbg !707
  %cmp141 = icmp slt i64 %inc151, %15
  %or.cond270 = select i1 %cmp138, i1 %cmp141, i1 false, !dbg !708
  br i1 %or.cond270, label %for.body144, label %for.inc152.loopexit, !dbg !708, !llvm.loop !716

for.inc152.loopexit:                              ; preds = %for.body144
  %.pre = load i64, ptr @block_ylen, align 8, !dbg !719
  br label %for.inc152, !dbg !720

for.inc152:                                       ; preds = %for.inc152.loopexit, %for.cond136.preheader
  %29 = phi i64 [ %.pre, %for.inc152.loopexit ], [ %24, %for.cond136.preheader ], !dbg !719
  %30 = phi i64 [ %28, %for.inc152.loopexit ], [ %25, %for.cond136.preheader ]
  %inc153 = add nsw i64 %outy.0282, 1, !dbg !720
  call void @llvm.dbg.value(metadata i64 %inc153, metadata !630, metadata !DIExpression()), !dbg !652
  %add131 = add nsw i64 %29, %add130, !dbg !721
  %cmp132 = icmp slt i64 %inc153, %add131, !dbg !699
  %cmp134 = icmp slt i64 %inc153, %17
  %or.cond = select i1 %cmp132, i1 %cmp134, i1 false, !dbg !702
  br i1 %or.cond, label %for.cond136.preheader, label %for.end154, !dbg !702, !llvm.loop !722

for.end154:                                       ; preds = %for.inc152, %while.body124
  %31 = load ptr, ptr @Global, align 8, !dbg !725
  %arrayidx156 = getelementptr inbounds %struct.GlobalMemory, ptr %31, i64 0, i32 6, i64 %local_node.0294, !dbg !727
  %call157 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx156) #8, !dbg !728
  %32 = load ptr, ptr @Global, align 8, !dbg !729
  %arrayidx159 = getelementptr inbounds %struct.GlobalMemory, ptr %32, i64 0, i32 1, i64 %local_node.0294, !dbg !729
  %33 = load i64, ptr %arrayidx159, align 8, !dbg !730
  %inc161 = add nsw i64 %33, 1, !dbg !730
  store i64 %inc161, ptr %arrayidx159, align 8, !dbg !730
  call void @llvm.dbg.value(metadata i64 %33, metadata !651, metadata !DIExpression()), !dbg !652
  %34 = load ptr, ptr @Global, align 8, !dbg !731
  %arrayidx163 = getelementptr inbounds %struct.GlobalMemory, ptr %34, i64 0, i32 6, i64 %local_node.0294, !dbg !733
  %call164 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx163) #8, !dbg !734
  %cmp122 = icmp slt i64 %33, %mul85, !dbg !688
  br i1 %cmp122, label %while.body124, label %while.end, !dbg !689, !llvm.loop !735

while.end:                                        ; preds = %for.end154, %while.body
  %cmp165 = icmp eq i64 %local_node.0294, %my_node, !dbg !737
  br i1 %cmp165, label %if.then, label %if.end, !dbg !739

if.then:                                          ; preds = %while.end
  %35 = load ptr, ptr @Global, align 8, !dbg !740
  %36 = load i64, ptr @num_nodes, align 8, !dbg !743
  %arrayidx168 = getelementptr inbounds %struct.GlobalMemory, ptr %35, i64 0, i32 6, i64 %36, !dbg !744
  %call169 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx168) #8, !dbg !745
  %37 = load ptr, ptr @Global, align 8, !dbg !746
  %38 = load i64, ptr @num_nodes, align 8, !dbg !747
  %arrayidx171 = getelementptr inbounds %struct.GlobalMemory, ptr %37, i64 0, i32 1, i64 %38, !dbg !746
  %39 = load i64, ptr %arrayidx171, align 8, !dbg !748
  %dec = add nsw i64 %39, -1, !dbg !748
  store i64 %dec, ptr %arrayidx171, align 8, !dbg !748
  %40 = load ptr, ptr @Global, align 8, !dbg !749
  %41 = load i64, ptr @num_nodes, align 8, !dbg !751
  %arrayidx174 = getelementptr inbounds %struct.GlobalMemory, ptr %40, i64 0, i32 6, i64 %41, !dbg !752
  %call175 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx174) #8, !dbg !753
  br label %if.end, !dbg !754

if.end:                                           ; preds = %if.then, %while.end
  %add176 = add nsw i64 %local_node.0294, 1, !dbg !755
  %42 = load i64, ptr @num_nodes, align 8, !dbg !756
  %rem177 = srem i64 %add176, %42, !dbg !757
  call void @llvm.dbg.value(metadata i64 %rem177, metadata !650, metadata !DIExpression()), !dbg !652
  %43 = load ptr, ptr @Global, align 8, !dbg !758
  %arrayidx179 = getelementptr inbounds %struct.GlobalMemory, ptr %43, i64 0, i32 6, i64 %42, !dbg !760
  %call180 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx179) #8, !dbg !761
  %44 = load ptr, ptr @Global, align 8, !dbg !762
  %arrayidx182 = getelementptr inbounds %struct.GlobalMemory, ptr %44, i64 0, i32 6, i64 %rem177, !dbg !764
  %call183 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx182) #8, !dbg !765
  %45 = load ptr, ptr @Global, align 8, !dbg !766
  %arrayidx186286 = getelementptr inbounds %struct.GlobalMemory, ptr %45, i64 0, i32 1, i64 %rem177, !dbg !766
  %46 = load i64, ptr %arrayidx186286, align 8, !dbg !766
  %cmp188.not287 = icmp slt i64 %46, %mul85, !dbg !767
  br i1 %cmp188.not287, label %while.end212, label %land.rhs190, !dbg !768

land.rhs190:                                      ; preds = %if.end, %while.body197
  %47 = phi ptr [ %55, %while.body197 ], [ %45, %if.end ]
  %local_node.1288 = phi i64 [ %rem205, %while.body197 ], [ %rem177, %if.end ]
  call void @llvm.dbg.value(metadata i64 %local_node.1288, metadata !650, metadata !DIExpression()), !dbg !652
  %48 = load i64, ptr @num_nodes, align 8, !dbg !769
  %arrayidx192 = getelementptr inbounds %struct.GlobalMemory, ptr %47, i64 0, i32 1, i64 %48, !dbg !770
  %49 = load i64, ptr %arrayidx192, align 8, !dbg !770
  %cmp194 = icmp sgt i64 %49, 0, !dbg !771
  br i1 %cmp194, label %while.body197, label %while.end212, !dbg !772

while.body197:                                    ; preds = %land.rhs190
  %arrayidx199 = getelementptr inbounds %struct.GlobalMemory, ptr %47, i64 0, i32 6, i64 %local_node.1288, !dbg !773
  %call200 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx199) #8, !dbg !776
  %50 = load ptr, ptr @Global, align 8, !dbg !777
  %51 = load i64, ptr @num_nodes, align 8, !dbg !779
  %arrayidx202 = getelementptr inbounds %struct.GlobalMemory, ptr %50, i64 0, i32 6, i64 %51, !dbg !780
  %call203 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx202) #8, !dbg !781
  %add204 = add nsw i64 %local_node.1288, 1, !dbg !782
  %52 = load i64, ptr @num_nodes, align 8, !dbg !783
  %rem205 = srem i64 %add204, %52, !dbg !784
  call void @llvm.dbg.value(metadata i64 %rem205, metadata !650, metadata !DIExpression()), !dbg !652
  %53 = load ptr, ptr @Global, align 8, !dbg !785
  %arrayidx207 = getelementptr inbounds %struct.GlobalMemory, ptr %53, i64 0, i32 6, i64 %52, !dbg !787
  %call208 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx207) #8, !dbg !788
  %54 = load ptr, ptr @Global, align 8, !dbg !789
  %arrayidx210 = getelementptr inbounds %struct.GlobalMemory, ptr %54, i64 0, i32 6, i64 %rem205, !dbg !791
  %call211 = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %arrayidx210) #8, !dbg !792
  %55 = load ptr, ptr @Global, align 8, !dbg !766
  %arrayidx186 = getelementptr inbounds %struct.GlobalMemory, ptr %55, i64 0, i32 1, i64 %rem205, !dbg !766
  %56 = load i64, ptr %arrayidx186, align 8, !dbg !766
  %cmp188.not = icmp slt i64 %56, %mul85, !dbg !767
  br i1 %cmp188.not, label %while.end212, label %land.rhs190, !dbg !768, !llvm.loop !793

while.end212:                                     ; preds = %land.rhs190, %while.body197, %if.end
  %local_node.1.lcssa = phi i64 [ %rem177, %if.end ], [ %rem205, %while.body197 ], [ %local_node.1288, %land.rhs190 ], !dbg !795
  %.lcssa = phi ptr [ %45, %if.end ], [ %55, %while.body197 ], [ %47, %land.rhs190 ], !dbg !766
  %arrayidx214 = getelementptr inbounds %struct.GlobalMemory, ptr %.lcssa, i64 0, i32 6, i64 %local_node.1.lcssa, !dbg !796
  %call215 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx214) #8, !dbg !798
  call void @llvm.dbg.value(metadata i64 %local_node.1.lcssa, metadata !650, metadata !DIExpression()), !dbg !652
  %57 = load ptr, ptr @Global, align 8, !dbg !663
  %58 = load i64, ptr @num_nodes, align 8, !dbg !664
  %arrayidx86 = getelementptr inbounds %struct.GlobalMemory, ptr %57, i64 0, i32 1, i64 %58, !dbg !663
  %59 = load i64, ptr %arrayidx86, align 8, !dbg !663
  %cmp88 = icmp sgt i64 %59, 0, !dbg !665
  br i1 %cmp88, label %while.body, label %while.end216, !dbg !666, !llvm.loop !799

while.end216:                                     ; preds = %while.end212, %cond.end83
  %.lcssa272 = phi ptr [ %8, %cond.end83 ], [ %57, %while.end212 ], !dbg !663
  %.lcssa271 = phi i64 [ %9, %cond.end83 ], [ %58, %while.end212 ], !dbg !664
  %arrayidx218 = getelementptr inbounds %struct.GlobalMemory, ptr %.lcssa272, i64 0, i32 6, i64 %.lcssa271, !dbg !801
  %call219 = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %arrayidx218) #8, !dbg !803
  ret void, !dbg !804
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ray_Trace_Adaptive_Box(i64 noundef %outx, i64 noundef %outy, i64 noundef %boxlen) local_unnamed_addr #0 !dbg !805 {
entry:
  call void @llvm.dbg.value(metadata i64 %outx, metadata !809, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %outy, metadata !810, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %boxlen, metadata !811, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 255, metadata !815, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !816, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !812, metadata !DIExpression()), !dbg !821
  %cmp.not228 = icmp slt i64 %boxlen, 0, !dbg !822
  br i1 %cmp.not228, label %for.end108, label %land.rhs, !dbg !825

land.rhs:                                         ; preds = %entry, %for.inc36
  %i.0229 = phi i64 [ %add37, %for.inc36 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.0229, metadata !812, metadata !DIExpression()), !dbg !821
  %add = add nsw i64 %i.0229, %outy, !dbg !826
  %0 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !827
  %cmp1 = icmp slt i64 %add, %0, !dbg !828
  br i1 %cmp1, label %for.cond2.preheader, label %for.end38, !dbg !829

for.cond2.preheader:                              ; preds = %land.rhs
  call void @llvm.dbg.value(metadata i64 0, metadata !813, metadata !DIExpression()), !dbg !821
  %conv22 = sitofp i64 %add to float
  %conv29 = fpext float %conv22 to double
  %.pre252 = load i64, ptr @image_len, align 16, !dbg !830
  br label %land.rhs4, !dbg !834

land.rhs4:                                        ; preds = %for.cond2.preheader, %for.inc
  %1 = phi i64 [ %.pre252, %for.cond2.preheader ], [ %9, %for.inc ], !dbg !830
  %j.0227 = phi i64 [ 0, %for.cond2.preheader ], [ %add35, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %j.0227, metadata !813, metadata !DIExpression()), !dbg !821
  %add5 = add nsw i64 %j.0227, %outx, !dbg !835
  %cmp6 = icmp slt i64 %add5, %1, !dbg !836
  br i1 %cmp6, label %for.body8, label %for.inc36, !dbg !837

for.body8:                                        ; preds = %land.rhs4
  %2 = load ptr, ptr @mask_image_address, align 8, !dbg !838
  %3 = load i64, ptr @mask_image_len, align 16, !dbg !838
  %mul = mul nsw i64 %3, %add, !dbg !838
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %mul, !dbg !838
  %add.ptr11 = getelementptr inbounds i8, ptr %add.ptr, i64 %add5, !dbg !838
  %4 = load i8, ptr %add.ptr11, align 1, !dbg !838
  %cmp12 = icmp eq i8 %4, 0, !dbg !841
  br i1 %cmp12, label %if.then, label %for.inc, !dbg !842

if.then:                                          ; preds = %for.body8
  store i8 1, ptr %add.ptr11, align 1, !dbg !843
  %conv20 = sitofp i64 %add5 to float, !dbg !845
  call void @llvm.dbg.value(metadata float %conv20, metadata !817, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata float %conv22, metadata !818, metadata !DIExpression()), !dbg !821
  %5 = load ptr, ptr @image_address, align 8, !dbg !846
  %6 = load i64, ptr @image_len, align 16, !dbg !846
  %mul24 = mul nsw i64 %6, %add, !dbg !846
  %add.ptr25 = getelementptr inbounds i8, ptr %5, i64 %mul24, !dbg !846
  %add.ptr27 = getelementptr inbounds i8, ptr %add.ptr25, i64 %add5, !dbg !846
  call void @llvm.dbg.value(metadata ptr %add.ptr27, metadata !820, metadata !DIExpression()), !dbg !821
  %conv28 = fpext float %conv20 to double, !dbg !847
  tail call void @Trace_Ray(double noundef %conv28, double noundef %conv29, ptr noundef %add.ptr27) #8, !dbg !848
  %7 = load ptr, ptr @mask_image_address, align 8, !dbg !849
  %8 = load i64, ptr @mask_image_len, align 16, !dbg !849
  %mul31 = mul nsw i64 %8, %add, !dbg !849
  %add.ptr32 = getelementptr inbounds i8, ptr %7, i64 %mul31, !dbg !849
  %add.ptr34 = getelementptr inbounds i8, ptr %add.ptr32, i64 %add5, !dbg !849
  store i8 -128, ptr %add.ptr34, align 1, !dbg !850
  %.pre = load i64, ptr @image_len, align 16, !dbg !830
  br label %for.inc, !dbg !851

for.inc:                                          ; preds = %for.body8, %if.then
  %9 = phi i64 [ %1, %for.body8 ], [ %.pre, %if.then ]
  %add35 = add nsw i64 %j.0227, %boxlen, !dbg !852
  call void @llvm.dbg.value(metadata i64 %add35, metadata !813, metadata !DIExpression()), !dbg !821
  %cmp3.not = icmp sgt i64 %j.0227, 0, !dbg !853
  br i1 %cmp3.not, label %for.inc36, label %land.rhs4, !dbg !834, !llvm.loop !854

for.inc36:                                        ; preds = %for.inc, %land.rhs4
  %add37 = add nsw i64 %i.0229, %boxlen, !dbg !856
  call void @llvm.dbg.value(metadata i64 %add37, metadata !812, metadata !DIExpression()), !dbg !821
  %cmp.not = icmp sgt i64 %i.0229, 0, !dbg !822
  br i1 %cmp.not, label %for.end38, label %land.rhs, !dbg !825, !llvm.loop !857

for.end38:                                        ; preds = %land.rhs, %for.inc36
  call void @llvm.dbg.value(metadata i64 0, metadata !812, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 255, metadata !815, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !816, metadata !DIExpression()), !dbg !821
  br i1 %cmp.not228, label %for.end108, label %land.rhs42.lr.ph, !dbg !859

land.rhs42.lr.ph:                                 ; preds = %for.end38
  %10 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8
  %11 = load i64, ptr @image_len, align 16
  %12 = load ptr, ptr @mask_image_address, align 8
  %13 = load i64, ptr @mask_image_len, align 16
  %14 = load ptr, ptr @image_address, align 8
  br label %land.rhs42, !dbg !859

land.rhs42:                                       ; preds = %land.rhs42.lr.ph, %for.inc106
  %i.1240 = phi i64 [ 0, %land.rhs42.lr.ph ], [ %add107, %for.inc106 ]
  %min_volume_color.0239 = phi i64 [ 255, %land.rhs42.lr.ph ], [ %min_volume_color.1.lcssa, %for.inc106 ]
  %max_volume_color.0238 = phi i64 [ 0, %land.rhs42.lr.ph ], [ %max_volume_color.1.lcssa, %for.inc106 ]
  call void @llvm.dbg.value(metadata i64 %i.1240, metadata !812, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %min_volume_color.0239, metadata !815, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %max_volume_color.0238, metadata !816, metadata !DIExpression()), !dbg !821
  %add43 = add nsw i64 %i.1240, %outy, !dbg !862
  %cmp44 = icmp slt i64 %add43, %10, !dbg !863
  br i1 %cmp44, label %for.cond48.preheader, label %for.end108, !dbg !864

for.cond48.preheader:                             ; preds = %land.rhs42
  call void @llvm.dbg.value(metadata i64 0, metadata !813, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %min_volume_color.0239, metadata !815, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %max_volume_color.0238, metadata !816, metadata !DIExpression()), !dbg !821
  %mul58 = mul nsw i64 %13, %add43
  %add.ptr59 = getelementptr inbounds i8, ptr %12, i64 %mul58
  %mul72 = mul nsw i64 %11, %add43
  %add.ptr73 = getelementptr inbounds i8, ptr %14, i64 %mul72
  br label %land.rhs51, !dbg !865

land.rhs51:                                       ; preds = %for.cond48.preheader, %while.end
  %j.1233 = phi i64 [ 0, %for.cond48.preheader ], [ %add104, %while.end ]
  %min_volume_color.1232 = phi i64 [ %min_volume_color.0239, %for.cond48.preheader ], [ %16, %while.end ]
  %max_volume_color.1231 = phi i64 [ %max_volume_color.0238, %for.cond48.preheader ], [ %17, %while.end ]
  call void @llvm.dbg.value(metadata i64 %j.1233, metadata !813, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %min_volume_color.1232, metadata !815, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %max_volume_color.1231, metadata !816, metadata !DIExpression()), !dbg !821
  %add52 = add nsw i64 %j.1233, %outx, !dbg !869
  %cmp53 = icmp slt i64 %add52, %11, !dbg !870
  br i1 %cmp53, label %for.body56, label %for.inc106, !dbg !871

for.body56:                                       ; preds = %land.rhs51
  call void @llvm.dbg.value(metadata i8 undef, metadata !819, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !821
  %imask.0.in.in = getelementptr inbounds i8, ptr %add.ptr59, i64 %add52
  %imask.0.in = load i8, ptr %imask.0.in.in, align 1
  %cmp63 = icmp eq i8 %imask.0.in, 1
  br i1 %cmp63, label %while.cond, label %while.end, !dbg !872, !llvm.loop !874

while.cond:                                       ; preds = %for.body56, %while.cond
  call void @llvm.dbg.value(metadata i8 %imask.0.in, metadata !819, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !821
  br label %while.cond

while.end:                                        ; preds = %for.body56
  %add.ptr75 = getelementptr inbounds i8, ptr %add.ptr73, i64 %add52, !dbg !876
  %15 = load i8, ptr %add.ptr75, align 1, !dbg !876
  %conv76 = zext i8 %15 to i64, !dbg !876
  %16 = tail call i64 @llvm.smin.i64(i64 %min_volume_color.1232, i64 %conv76), !dbg !876
  call void @llvm.dbg.value(metadata i64 %16, metadata !815, metadata !DIExpression()), !dbg !821
  %17 = tail call i64 @llvm.smax.i64(i64 %max_volume_color.1231, i64 %conv76), !dbg !877
  call void @llvm.dbg.value(metadata i64 %17, metadata !816, metadata !DIExpression()), !dbg !821
  %add104 = add nsw i64 %j.1233, %boxlen, !dbg !878
  call void @llvm.dbg.value(metadata i64 %add104, metadata !813, metadata !DIExpression()), !dbg !821
  %cmp49.not = icmp sgt i64 %j.1233, 0, !dbg !879
  br i1 %cmp49.not, label %for.inc106, label %land.rhs51, !dbg !865, !llvm.loop !880

for.inc106:                                       ; preds = %while.end, %land.rhs51
  %max_volume_color.1.lcssa = phi i64 [ %max_volume_color.1231, %land.rhs51 ], [ %17, %while.end ], !dbg !821
  %min_volume_color.1.lcssa = phi i64 [ %min_volume_color.1232, %land.rhs51 ], [ %16, %while.end ], !dbg !821
  %add107 = add nsw i64 %i.1240, %boxlen, !dbg !882
  call void @llvm.dbg.value(metadata i64 %add107, metadata !812, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %min_volume_color.1.lcssa, metadata !815, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 %max_volume_color.1.lcssa, metadata !816, metadata !DIExpression()), !dbg !821
  %cmp40.not = icmp sgt i64 %i.1240, 0, !dbg !883
  br i1 %cmp40.not, label %for.end108, label %land.rhs42, !dbg !859, !llvm.loop !884

for.end108:                                       ; preds = %land.rhs42, %for.inc106, %entry, %for.end38
  %max_volume_color.0.lcssa = phi i64 [ 0, %for.end38 ], [ 0, %entry ], [ %max_volume_color.1.lcssa, %for.inc106 ], [ %max_volume_color.0238, %land.rhs42 ], !dbg !886
  %min_volume_color.0.lcssa = phi i64 [ 255, %for.end38 ], [ 255, %entry ], [ %min_volume_color.1.lcssa, %for.inc106 ], [ %min_volume_color.0239, %land.rhs42 ], !dbg !887
  %18 = load i64, ptr @lowest_volume_boxlen, align 8, !dbg !888
  %cmp109 = icmp slt i64 %18, %boxlen, !dbg !890
  br i1 %cmp109, label %land.lhs.true, label %if.end140, !dbg !891

land.lhs.true:                                    ; preds = %for.end108
  %sub = sub nsw i64 %max_volume_color.0.lcssa, %min_volume_color.0.lcssa, !dbg !892
  %19 = load i64, ptr @volume_color_difference, align 8, !dbg !893
  %cmp111.not = icmp slt i64 %sub, %19, !dbg !894
  br i1 %cmp111.not, label %if.end140, label %if.then113, !dbg !895

if.then113:                                       ; preds = %land.lhs.true
  %shr = ashr i64 %boxlen, 1, !dbg !896
  call void @llvm.dbg.value(metadata i64 %shr, metadata !814, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata i64 0, metadata !812, metadata !DIExpression()), !dbg !821
  %cmp115250 = icmp sgt i64 %boxlen, 0, !dbg !898
  br i1 %cmp115250, label %land.rhs117.us, label %if.end140, !dbg !901

land.rhs117.us:                                   ; preds = %if.then113, %for.inc137.us
  %i.2251.us = phi i64 [ %add138.us, %for.inc137.us ], [ 0, %if.then113 ]
  call void @llvm.dbg.value(metadata i64 %i.2251.us, metadata !812, metadata !DIExpression()), !dbg !821
  %add118.us = add nsw i64 %i.2251.us, %outy, !dbg !902
  %20 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !903
  %cmp119.us = icmp slt i64 %add118.us, %20, !dbg !904
  br i1 %cmp119.us, label %land.rhs126.us, label %if.end140, !dbg !905

land.rhs126.us:                                   ; preds = %land.rhs117.us, %for.body131.us
  %j.2249.us = phi i64 [ %add135.us, %for.body131.us ], [ 0, %land.rhs117.us ]
  call void @llvm.dbg.value(metadata i64 %j.2249.us, metadata !813, metadata !DIExpression()), !dbg !821
  %add127.us = add nsw i64 %j.2249.us, %outx, !dbg !906
  %21 = load i64, ptr @image_len, align 16, !dbg !910
  %cmp128.us = icmp slt i64 %add127.us, %21, !dbg !911
  br i1 %cmp128.us, label %for.body131.us, label %for.inc137.us, !dbg !912

for.inc137.us:                                    ; preds = %for.body131.us, %land.rhs126.us
  %add138.us = add nsw i64 %i.2251.us, %shr, !dbg !913
  call void @llvm.dbg.value(metadata i64 %add138.us, metadata !812, metadata !DIExpression()), !dbg !821
  %cmp115.us = icmp slt i64 %add138.us, %boxlen, !dbg !898
  br i1 %cmp115.us, label %land.rhs117.us, label %if.end140, !dbg !901, !llvm.loop !914

for.body131.us:                                   ; preds = %land.rhs126.us
  tail call void @Ray_Trace_Adaptive_Box(i64 noundef %add127.us, i64 noundef %add118.us, i64 noundef %shr), !dbg !916
  %add135.us = add nsw i64 %j.2249.us, %shr, !dbg !918
  call void @llvm.dbg.value(metadata i64 %add135.us, metadata !813, metadata !DIExpression()), !dbg !821
  %cmp124.us = icmp slt i64 %add135.us, %boxlen, !dbg !919
  br i1 %cmp124.us, label %land.rhs126.us, label %for.inc137.us, !dbg !920, !llvm.loop !921

if.end140:                                        ; preds = %for.inc137.us, %land.rhs117.us, %if.then113, %land.lhs.true, %for.end108
  ret void, !dbg !923
}

declare !dbg !924 void @Trace_Ray(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Ray_Trace_Fast_Non_Adaptively(i64 noundef %my_node) local_unnamed_addr #0 !dbg !928 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !930, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i64 0, metadata !931, metadata !DIExpression()), !dbg !939
  %0 = load i64, ptr @num_blocks, align 8, !dbg !940
  %cmp61 = icmp sgt i64 %0, 0, !dbg !943
  br i1 %cmp61, label %for.body.preheader, label %for.end32, !dbg !944

for.body.preheader:                               ; preds = %entry
  %.pre = load i64, ptr @block_ylen, align 8, !dbg !945
  %.pre63 = load i64, ptr @block_xlen, align 8, !dbg !947
  %.pre64 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8
  br label %for.body, !dbg !944

for.body:                                         ; preds = %for.body.preheader, %for.inc30
  %1 = phi i64 [ %27, %for.inc30 ], [ %0, %for.body.preheader ]
  %2 = phi i64 [ %28, %for.inc30 ], [ %.pre64, %for.body.preheader ]
  %3 = phi i64 [ %29, %for.inc30 ], [ %.pre, %for.body.preheader ]
  %4 = phi i64 [ %30, %for.inc30 ], [ %.pre63, %for.body.preheader ]
  %5 = phi i64 [ %31, %for.inc30 ], [ %.pre64, %for.body.preheader ]
  %6 = phi i64 [ %32, %for.inc30 ], [ %.pre63, %for.body.preheader ], !dbg !947
  %7 = phi i64 [ %33, %for.inc30 ], [ %.pre, %for.body.preheader ], !dbg !945
  %i.062 = phi i64 [ %add31, %for.inc30 ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %i.062, metadata !931, metadata !DIExpression()), !dbg !939
  %add = add nsw i64 %i.062, %my_node, !dbg !948
  %8 = load i64, ptr @num_xblocks, align 8, !dbg !949
  %div = sdiv i64 %add, %8, !dbg !950
  %mul = mul nsw i64 %7, %div, !dbg !951
  call void @llvm.dbg.value(metadata i64 %mul, metadata !935, metadata !DIExpression()), !dbg !939
  %rem = srem i64 %add, %8, !dbg !952
  %mul2 = mul nsw i64 %6, %rem, !dbg !953
  call void @llvm.dbg.value(metadata i64 %mul2, metadata !934, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i64 %mul, metadata !933, metadata !DIExpression()), !dbg !939
  %cmp556 = icmp sgt i64 %7, 0, !dbg !954
  %cmp657 = icmp slt i64 %mul, %5
  %or.cond58 = select i1 %cmp556, i1 %cmp657, i1 false, !dbg !957
  br i1 %or.cond58, label %for.cond8.preheader.preheader, label %for.inc30, !dbg !957

for.cond8.preheader.preheader:                    ; preds = %for.body
  %.pre65 = load i64, ptr @image_len, align 16
  br label %for.cond8.preheader, !dbg !958

for.cond8.preheader:                              ; preds = %for.cond8.preheader.preheader, %for.inc27
  %9 = phi i64 [ %22, %for.inc27 ], [ %2, %for.cond8.preheader.preheader ]
  %10 = phi i64 [ %23, %for.inc27 ], [ %3, %for.cond8.preheader.preheader ]
  %11 = phi i64 [ %25, %for.inc27 ], [ %.pre65, %for.cond8.preheader.preheader ]
  %12 = phi i64 [ %26, %for.inc27 ], [ %4, %for.cond8.preheader.preheader ], !dbg !959
  %outy.059 = phi i64 [ %add28, %for.inc27 ], [ %mul, %for.cond8.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %outy.059, metadata !933, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata i64 %mul2, metadata !932, metadata !DIExpression()), !dbg !939
  %cmp1051 = icmp sgt i64 %12, 0, !dbg !963
  %cmp1252 = icmp slt i64 %mul2, %11
  %or.cond4953 = select i1 %cmp1051, i1 %cmp1252, i1 false, !dbg !964
  br i1 %or.cond4953, label %for.body14.lr.ph, label %for.cond8.preheader.for.inc27_crit_edge, !dbg !964

for.cond8.preheader.for.inc27_crit_edge:          ; preds = %for.cond8.preheader
  %.pre66 = load i64, ptr @lowest_volume_boxlen, align 8, !dbg !965
  br label %for.inc27, !dbg !964

for.body14.lr.ph:                                 ; preds = %for.cond8.preheader
  %conv20 = sitofp i64 %outy.059 to float
  %conv25 = fpext float %conv20 to double
  br label %for.body14, !dbg !964

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %outx.054 = phi i64 [ %mul2, %for.body14.lr.ph ], [ %add26, %for.body14 ]
  call void @llvm.dbg.value(metadata i64 %outx.054, metadata !932, metadata !DIExpression()), !dbg !939
  %13 = load ptr, ptr @mask_image_address, align 8, !dbg !966
  %14 = load i64, ptr @mask_image_len, align 16, !dbg !966
  %mul15 = mul nsw i64 %14, %outy.059, !dbg !966
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %mul15, !dbg !966
  %add.ptr16 = getelementptr inbounds i8, ptr %add.ptr, i64 %outx.054, !dbg !966
  %15 = load i8, ptr %add.ptr16, align 1, !dbg !968
  %add17 = xor i8 %15, -128, !dbg !968
  store i8 %add17, ptr %add.ptr16, align 1, !dbg !968
  %conv19 = sitofp i64 %outx.054 to float, !dbg !969
  call void @llvm.dbg.value(metadata float %conv19, metadata !936, metadata !DIExpression()), !dbg !939
  call void @llvm.dbg.value(metadata float %conv20, metadata !937, metadata !DIExpression()), !dbg !939
  %16 = load ptr, ptr @image_address, align 8, !dbg !970
  %17 = load i64, ptr @image_len, align 16, !dbg !970
  %mul21 = mul nsw i64 %17, %outy.059, !dbg !970
  %add.ptr22 = getelementptr inbounds i8, ptr %16, i64 %mul21, !dbg !970
  %add.ptr23 = getelementptr inbounds i8, ptr %add.ptr22, i64 %outx.054, !dbg !970
  call void @llvm.dbg.value(metadata ptr %add.ptr23, metadata !938, metadata !DIExpression()), !dbg !939
  %conv24 = fpext float %conv19 to double, !dbg !971
  tail call void @Trace_Ray(double noundef %conv24, double noundef %conv25, ptr noundef %add.ptr23) #8, !dbg !972
  %18 = load i64, ptr @num_rays_traced, align 8, !dbg !973
  %inc = add nsw i64 %18, 1, !dbg !973
  store i64 %inc, ptr @num_rays_traced, align 8, !dbg !973
  %19 = load i64, ptr @lowest_volume_boxlen, align 8, !dbg !974
  %add26 = add nsw i64 %19, %outx.054, !dbg !975
  call void @llvm.dbg.value(metadata i64 %add26, metadata !932, metadata !DIExpression()), !dbg !939
  %20 = load i64, ptr @block_xlen, align 8, !dbg !959
  %add9 = add nsw i64 %20, %mul2, !dbg !976
  %cmp10 = icmp slt i64 %add26, %add9, !dbg !963
  %21 = load i64, ptr @image_len, align 16
  %cmp12 = icmp slt i64 %add26, %21
  %or.cond49 = select i1 %cmp10, i1 %cmp12, i1 false, !dbg !964
  br i1 %or.cond49, label %for.body14, label %for.inc27.loopexit, !dbg !964, !llvm.loop !977

for.inc27.loopexit:                               ; preds = %for.body14
  %.pre67 = load i64, ptr @block_ylen, align 8, !dbg !980
  %.pre68 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8
  br label %for.inc27, !dbg !965

for.inc27:                                        ; preds = %for.cond8.preheader.for.inc27_crit_edge, %for.inc27.loopexit
  %22 = phi i64 [ %.pre68, %for.inc27.loopexit ], [ %9, %for.cond8.preheader.for.inc27_crit_edge ]
  %23 = phi i64 [ %.pre67, %for.inc27.loopexit ], [ %10, %for.cond8.preheader.for.inc27_crit_edge ], !dbg !980
  %24 = phi i64 [ %19, %for.inc27.loopexit ], [ %.pre66, %for.cond8.preheader.for.inc27_crit_edge ], !dbg !965
  %25 = phi i64 [ %21, %for.inc27.loopexit ], [ %11, %for.cond8.preheader.for.inc27_crit_edge ]
  %26 = phi i64 [ %20, %for.inc27.loopexit ], [ %12, %for.cond8.preheader.for.inc27_crit_edge ]
  %add28 = add nsw i64 %24, %outy.059, !dbg !981
  call void @llvm.dbg.value(metadata i64 %add28, metadata !933, metadata !DIExpression()), !dbg !939
  %add4 = add nsw i64 %23, %mul, !dbg !982
  %cmp5 = icmp slt i64 %add28, %add4, !dbg !954
  %cmp6 = icmp slt i64 %add28, %22
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false, !dbg !957
  br i1 %or.cond, label %for.cond8.preheader, label %for.inc30.loopexit, !dbg !957, !llvm.loop !983

for.inc30.loopexit:                               ; preds = %for.inc27
  %.pre69 = load i64, ptr @num_blocks, align 8, !dbg !940
  br label %for.inc30, !dbg !985

for.inc30:                                        ; preds = %for.inc30.loopexit, %for.body
  %27 = phi i64 [ %.pre69, %for.inc30.loopexit ], [ %1, %for.body ], !dbg !940
  %28 = phi i64 [ %22, %for.inc30.loopexit ], [ %2, %for.body ]
  %29 = phi i64 [ %23, %for.inc30.loopexit ], [ %3, %for.body ]
  %30 = phi i64 [ %26, %for.inc30.loopexit ], [ %4, %for.body ]
  %31 = phi i64 [ %22, %for.inc30.loopexit ], [ %5, %for.body ]
  %32 = phi i64 [ %26, %for.inc30.loopexit ], [ %6, %for.body ]
  %33 = phi i64 [ %23, %for.inc30.loopexit ], [ %7, %for.body ]
  %34 = load i64, ptr @num_nodes, align 8, !dbg !985
  %add31 = add nsw i64 %34, %i.062, !dbg !986
  call void @llvm.dbg.value(metadata i64 %add31, metadata !931, metadata !DIExpression()), !dbg !939
  %cmp = icmp slt i64 %add31, %27, !dbg !943
  br i1 %cmp, label %for.body, label %for.end32, !dbg !944, !llvm.loop !987

for.end32:                                        ; preds = %for.inc30, %entry
  ret void, !dbg !989
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Interpolate_Recursive_Box(i64 noundef %outx, i64 noundef %outy, i64 noundef %boxlen) local_unnamed_addr #4 !dbg !990 {
entry:
  call void @llvm.dbg.value(metadata i64 %outx, metadata !992, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i64 %outy, metadata !993, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i64 %boxlen, metadata !994, metadata !DIExpression()), !dbg !1009
  %shr = ashr i64 %boxlen, 1, !dbg !1010
  call void @llvm.dbg.value(metadata i64 %shr, metadata !997, metadata !DIExpression()), !dbg !1009
  %conv = sitofp i64 %boxlen to float, !dbg !1011
  %conv2 = fdiv float 1.000000e+00, %conv, !dbg !1012
  call void @llvm.dbg.value(metadata float %conv2, metadata !1004, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i64 undef, metadata !1002, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i64 undef, metadata !1003, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64)), !dbg !1009
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1009
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64)), !dbg !1009
  call void @llvm.dbg.value(metadata i8 undef, metadata !998, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1009
  call void @llvm.dbg.value(metadata i64 0, metadata !995, metadata !DIExpression()), !dbg !1009
  %cmp34.not200 = icmp slt i64 %boxlen, 0, !dbg !1013
  br i1 %cmp34.not200, label %if.end133, label %land.rhs.lr.ph, !dbg !1016

land.rhs.lr.ph:                                   ; preds = %entry
  %0 = load ptr, ptr @image_address, align 8, !dbg !1017
  %add5 = add nsw i64 %boxlen, %outy, !dbg !1018
  %1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !1019
  %cmp6 = icmp slt i64 %add5, %1, !dbg !1020
  %spec.select = select i1 %cmp6, i64 %add5, i64 %outy, !dbg !1021
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !1003, metadata !DIExpression()), !dbg !1009
  %2 = load i64, ptr @image_len, align 16, !dbg !1022
  %mul22 = mul nsw i64 %spec.select, %2, !dbg !1023
  %add.ptr23 = getelementptr inbounds i8, ptr %0, i64 %mul22, !dbg !1023
  %add = add nsw i64 %boxlen, %outx, !dbg !1024
  %cmp = icmp slt i64 %add, %2, !dbg !1025
  %add.outx = select i1 %cmp, i64 %add, i64 %outx, !dbg !1026
  call void @llvm.dbg.value(metadata i64 %add.outx, metadata !1002, metadata !DIExpression()), !dbg !1009
  %add.ptr30 = getelementptr inbounds i8, ptr %add.ptr23, i64 %add.outx, !dbg !1027
  %3 = load i8, ptr %add.ptr30, align 1, !dbg !1027
  call void @llvm.dbg.value(metadata i8 %3, metadata !998, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64)), !dbg !1009
  %add.ptr24 = getelementptr inbounds i8, ptr %add.ptr23, i64 %outx, !dbg !1023
  %4 = load i8, ptr %add.ptr24, align 1, !dbg !1023
  call void @llvm.dbg.value(metadata i8 %4, metadata !998, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64)), !dbg !1009
  %mul = mul nsw i64 %2, %outy, !dbg !1017
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %mul, !dbg !1017
  %add.ptr18 = getelementptr inbounds i8, ptr %add.ptr, i64 %add.outx, !dbg !1028
  %5 = load i8, ptr %add.ptr18, align 1, !dbg !1028
  call void @llvm.dbg.value(metadata i8 %5, metadata !998, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64)), !dbg !1009
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr, i64 %outx, !dbg !1017
  %6 = load i8, ptr %add.ptr13, align 1, !dbg !1017
  call void @llvm.dbg.value(metadata i8 %6, metadata !998, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64)), !dbg !1009
  %conv67 = uitofp i8 %6 to float
  %conv72 = uitofp i8 %5 to float
  %conv77 = uitofp i8 %4 to float
  %conv82 = uitofp i8 %3 to float
  call void @llvm.dbg.value(metadata i64 0, metadata !995, metadata !DIExpression()), !dbg !1009
  %cmp37214 = icmp sgt i64 %1, %outy, !dbg !1029
  br i1 %cmp37214, label %for.body, label %for.end103, !dbg !1030

for.body:                                         ; preds = %land.rhs.lr.ph, %for.inc101.land.rhs_crit_edge
  %add36217 = phi i64 [ %add36, %for.inc101.land.rhs_crit_edge ], [ %outy, %land.rhs.lr.ph ]
  %i.0201216 = phi i64 [ %add102, %for.inc101.land.rhs_crit_edge ], [ 0, %land.rhs.lr.ph ]
  %.pre208215 = phi i64 [ %.pre208209, %for.inc101.land.rhs_crit_edge ], [ %2, %land.rhs.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.0201216, metadata !995, metadata !DIExpression()), !dbg !1009
  %conv39 = sitofp i64 %i.0201216 to float, !dbg !1031
  %mul40 = fmul float %conv2, %conv39, !dbg !1033
  call void @llvm.dbg.value(metadata float %mul40, metadata !1006, metadata !DIExpression()), !dbg !1009
  %conv42 = fsub float 1.000000e+00, %mul40, !dbg !1034
  call void @llvm.dbg.value(metadata float %conv42, metadata !1008, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata i64 0, metadata !996, metadata !DIExpression()), !dbg !1009
  br label %land.rhs46, !dbg !1035

land.rhs46:                                       ; preds = %for.body, %for.inc
  %.pre208211 = phi i64 [ %.pre208215, %for.body ], [ %.pre208210, %for.inc ]
  %7 = phi i64 [ %.pre208215, %for.body ], [ %18, %for.inc ], !dbg !1038
  %j.0198 = phi i64 [ 0, %for.body ], [ %add100, %for.inc ]
  call void @llvm.dbg.value(metadata i64 %j.0198, metadata !996, metadata !DIExpression()), !dbg !1009
  %add47 = add nsw i64 %j.0198, %outx, !dbg !1039
  %cmp48 = icmp slt i64 %add47, %7, !dbg !1040
  br i1 %cmp48, label %for.body51, label %for.inc101, !dbg !1041

for.body51:                                       ; preds = %land.rhs46
  call void @llvm.dbg.value(metadata float undef, metadata !1005, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.value(metadata float undef, metadata !1007, metadata !DIExpression()), !dbg !1009
  %8 = load ptr, ptr @mask_image_address, align 8, !dbg !1042
  %9 = load i64, ptr @mask_image_len, align 16, !dbg !1042
  %mul58 = mul nsw i64 %9, %add36217, !dbg !1042
  %add.ptr59 = getelementptr inbounds i8, ptr %8, i64 %mul58, !dbg !1042
  %add.ptr61 = getelementptr inbounds i8, ptr %add.ptr59, i64 %add47, !dbg !1042
  %10 = load i8, ptr %add.ptr61, align 1, !dbg !1042
  %cmp63 = icmp eq i8 %10, 0, !dbg !1045
  br i1 %cmp63, label %if.then, label %for.inc, !dbg !1046

if.then:                                          ; preds = %for.body51
  %conv52 = sitofp i64 %j.0198 to float, !dbg !1047
  %mul53 = fmul float %conv2, %conv52, !dbg !1048
  call void @llvm.dbg.value(metadata float %mul53, metadata !1005, metadata !DIExpression()), !dbg !1009
  %conv56 = fsub float 1.000000e+00, %mul53, !dbg !1049
  call void @llvm.dbg.value(metadata float %conv56, metadata !1007, metadata !DIExpression()), !dbg !1009
  %mul68 = fmul float %conv56, %conv67, !dbg !1050
  %mul73 = fmul float %mul53, %conv72, !dbg !1052
  %mul74 = fmul float %conv42, %mul73, !dbg !1053
  %11 = tail call float @llvm.fmuladd.f32(float %mul68, float %conv42, float %mul74), !dbg !1054
  %mul78 = fmul float %conv56, %conv77, !dbg !1055
  %12 = tail call float @llvm.fmuladd.f32(float %mul78, float %mul40, float %11), !dbg !1056
  %mul83 = fmul float %mul53, %conv82, !dbg !1057
  %13 = tail call float @llvm.fmuladd.f32(float %mul83, float %mul40, float %12), !dbg !1058
  %conv85 = fptosi float %13 to i64, !dbg !1059
  call void @llvm.dbg.value(metadata i64 %conv85, metadata !1001, metadata !DIExpression()), !dbg !1009
  %conv86 = trunc i64 %conv85 to i8, !dbg !1060
  %14 = load ptr, ptr @image_address, align 8, !dbg !1061
  %mul88 = mul nsw i64 %7, %add36217, !dbg !1061
  %add.ptr89 = getelementptr inbounds i8, ptr %14, i64 %mul88, !dbg !1061
  %add.ptr91 = getelementptr inbounds i8, ptr %add.ptr89, i64 %add47, !dbg !1061
  store i8 %conv86, ptr %add.ptr91, align 1, !dbg !1062
  %15 = load ptr, ptr @mask_image_address, align 8, !dbg !1063
  %16 = load i64, ptr @mask_image_len, align 16, !dbg !1063
  %mul93 = mul nsw i64 %16, %add36217, !dbg !1063
  %add.ptr94 = getelementptr inbounds i8, ptr %15, i64 %mul93, !dbg !1063
  %add.ptr96 = getelementptr inbounds i8, ptr %add.ptr94, i64 %add47, !dbg !1063
  %17 = load i8, ptr %add.ptr96, align 1, !dbg !1064
  %add98 = add i8 %17, 8, !dbg !1064
  store i8 %add98, ptr %add.ptr96, align 1, !dbg !1064
  %.pre207 = load i64, ptr @image_len, align 16, !dbg !1038
  br label %for.inc, !dbg !1065

for.inc:                                          ; preds = %for.body51, %if.then
  %.pre208210 = phi i64 [ %.pre208211, %for.body51 ], [ %.pre207, %if.then ]
  %18 = phi i64 [ %7, %for.body51 ], [ %.pre207, %if.then ]
  %add100 = add nsw i64 %j.0198, %shr, !dbg !1066
  call void @llvm.dbg.value(metadata i64 %add100, metadata !996, metadata !DIExpression()), !dbg !1009
  %cmp44.not = icmp sgt i64 %add100, %boxlen, !dbg !1067
  br i1 %cmp44.not, label %for.inc101, label %land.rhs46, !dbg !1035, !llvm.loop !1068

for.inc101:                                       ; preds = %for.inc, %land.rhs46
  %.pre208209 = phi i64 [ %.pre208210, %for.inc ], [ %.pre208211, %land.rhs46 ]
  %add102 = add nsw i64 %i.0201216, %shr, !dbg !1070
  call void @llvm.dbg.value(metadata i64 %add102, metadata !995, metadata !DIExpression()), !dbg !1009
  %cmp34.not = icmp sgt i64 %add102, %boxlen, !dbg !1013
  br i1 %cmp34.not, label %for.end103, label %for.inc101.land.rhs_crit_edge, !dbg !1016, !llvm.loop !1071

for.inc101.land.rhs_crit_edge:                    ; preds = %for.inc101
  %.pre = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !1073
  call void @llvm.dbg.value(metadata i64 %add102, metadata !995, metadata !DIExpression()), !dbg !1009
  %add36 = add nsw i64 %add102, %outy, !dbg !1074
  %cmp37 = icmp slt i64 %add36, %.pre, !dbg !1029
  br i1 %cmp37, label %for.body, label %for.end103, !dbg !1030

for.end103:                                       ; preds = %for.inc101, %for.inc101.land.rhs_crit_edge, %land.rhs.lr.ph
  %cmp104 = icmp sgt i64 %boxlen, 3, !dbg !1075
  call void @llvm.dbg.value(metadata i64 0, metadata !995, metadata !DIExpression()), !dbg !1009
  br i1 %cmp104, label %land.rhs110.us, label %if.end133, !dbg !1077

land.rhs110.us:                                   ; preds = %for.end103, %for.inc130.us
  %i.1205.us = phi i64 [ %add131.us, %for.inc130.us ], [ 0, %for.end103 ]
  call void @llvm.dbg.value(metadata i64 %i.1205.us, metadata !995, metadata !DIExpression()), !dbg !1009
  %add111.us = add nsw i64 %i.1205.us, %outy, !dbg !1078
  %19 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @image_len, i64 0, i64 1), align 8, !dbg !1082
  %cmp112.us = icmp slt i64 %add111.us, %19, !dbg !1083
  br i1 %cmp112.us, label %land.rhs119.us, label %if.end133, !dbg !1084

land.rhs119.us:                                   ; preds = %land.rhs110.us, %for.body124.us
  %j.1203.us = phi i64 [ %add128.us, %for.body124.us ], [ 0, %land.rhs110.us ]
  call void @llvm.dbg.value(metadata i64 %j.1203.us, metadata !996, metadata !DIExpression()), !dbg !1009
  %add120.us = add nsw i64 %j.1203.us, %outx, !dbg !1085
  %20 = load i64, ptr @image_len, align 16, !dbg !1089
  %cmp121.us = icmp slt i64 %add120.us, %20, !dbg !1090
  br i1 %cmp121.us, label %for.body124.us, label %for.inc130.us, !dbg !1091

for.inc130.us:                                    ; preds = %for.body124.us, %land.rhs119.us
  %add131.us = add nsw i64 %i.1205.us, %shr, !dbg !1092
  call void @llvm.dbg.value(metadata i64 %add131.us, metadata !995, metadata !DIExpression()), !dbg !1009
  %cmp108.us = icmp slt i64 %add131.us, %boxlen, !dbg !1093
  br i1 %cmp108.us, label %land.rhs110.us, label %if.end133, !dbg !1094, !llvm.loop !1095

for.body124.us:                                   ; preds = %land.rhs119.us
  tail call void @Interpolate_Recursive_Box(i64 noundef %add120.us, i64 noundef %add111.us, i64 noundef %shr), !dbg !1097
  %add128.us = add nsw i64 %j.1203.us, %shr, !dbg !1099
  call void @llvm.dbg.value(metadata i64 %add128.us, metadata !996, metadata !DIExpression()), !dbg !1009
  %cmp117.us = icmp slt i64 %add128.us, %boxlen, !dbg !1100
  br i1 %cmp117.us, label %land.rhs119.us, label %for.inc130.us, !dbg !1101, !llvm.loop !1102

if.end133:                                        ; preds = %for.inc130.us, %land.rhs110.us, %entry, %for.end103
  ret void, !dbg !1104
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "invjacobian", scope: !2, file: !3, line: 27, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "adaptive.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "b5b0ea97e5dfb6eed900ca6e46f8c444")
!4 = !{!5, !6}
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!7 = !{!0, !8, !13, !15, !17, !19}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "invinvjacobian", scope: !2, file: !3, line: 32, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 288, elements: !11)
!11 = !{!12, !12}
!12 = !DISubrange(count: 3)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "num_rays_traced", scope: !2, file: !3, line: 34, type: !6, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "num_traced_rays_hit_volume", scope: !2, file: !3, line: 35, type: !6, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "num_samples_trilirped", scope: !2, file: !3, line: 36, type: !6, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "itest", scope: !2, file: !3, line: 37, type: !6, isLocal: false, isDefinition: true)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!28 = distinct !DISubprogram(name: "Ray_Trace", scope: !3, file: !3, line: 63, type: !29, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !6}
!31 = !{!32, !33, !34, !35, !36, !37, !38}
!32 = !DILocalVariable(name: "my_node", arg: 1, scope: !28, file: !3, line: 63, type: !6)
!33 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 65, type: !6)
!34 = !DILocalVariable(name: "j", scope: !28, file: !3, line: 65, type: !6)
!35 = !DILocalVariable(name: "starttime", scope: !28, file: !3, line: 66, type: !6)
!36 = !DILocalVariable(name: "stoptime", scope: !28, file: !3, line: 66, type: !6)
!37 = !DILocalVariable(name: "exectime", scope: !28, file: !3, line: 66, type: !6)
!38 = !DILocalVariable(name: "exectime1", scope: !28, file: !3, line: 66, type: !6)
!39 = !DILocation(line: 0, scope: !28)
!40 = !DILocation(line: 66, column: 3, scope: !28)
!41 = !DILocation(line: 81, column: 3, scope: !42)
!42 = distinct !DILexicalBlock(scope: !28, file: !3, line: 81, column: 3)
!43 = !DILocation(line: 82, column: 25, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 81, column: 24)
!45 = distinct !DILexicalBlock(scope: !42, file: !3, line: 81, column: 3)
!46 = !DILocation(line: 83, column: 7, scope: !44)
!47 = !DILocation(line: 82, column: 52, scope: !44)
!48 = !DILocation(line: 82, column: 5, scope: !44)
!49 = !DILocation(line: 82, column: 23, scope: !44)
!50 = !DILocation(line: 84, column: 25, scope: !44)
!51 = !DILocation(line: 84, column: 52, scope: !44)
!52 = !DILocation(line: 84, column: 5, scope: !44)
!53 = !DILocation(line: 84, column: 23, scope: !44)
!54 = !DILocation(line: 86, column: 25, scope: !44)
!55 = !DILocation(line: 86, column: 52, scope: !44)
!56 = !DILocation(line: 86, column: 5, scope: !44)
!57 = !DILocation(line: 86, column: 23, scope: !44)
!58 = !DILocation(line: 81, column: 20, scope: !45)
!59 = !DILocation(line: 81, column: 14, scope: !45)
!60 = distinct !{!60, !41, !61, !62, !63}
!61 = !DILocation(line: 88, column: 3, scope: !42)
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !DILocation(line: 94, column: 5, scope: !65)
!65 = distinct !DILexicalBlock(scope: !66, file: !3, line: 94, column: 5)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 93, column: 24)
!67 = distinct !DILexicalBlock(scope: !68, file: !3, line: 93, column: 3)
!68 = distinct !DILexicalBlock(scope: !28, file: !3, line: 93, column: 3)
!69 = !DILocation(line: 95, column: 11, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 95, column: 11)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 94, column: 26)
!72 = distinct !DILexicalBlock(scope: !65, file: !3, line: 94, column: 5)
!73 = !DILocation(line: 95, column: 34, scope: !70)
!74 = !DILocation(line: 95, column: 11, scope: !71)
!75 = !DILocation(line: 96, column: 25, scope: !70)
!76 = !DILocation(line: 96, column: 2, scope: !70)
!77 = !DILocation(line: 96, column: 23, scope: !70)
!78 = !DILocation(line: 94, column: 22, scope: !72)
!79 = !DILocation(line: 94, column: 16, scope: !72)
!80 = distinct !{!80, !64, !81, !62, !63}
!81 = !DILocation(line: 97, column: 5, scope: !65)
!82 = !DILocation(line: 93, column: 20, scope: !67)
!83 = !DILocation(line: 93, column: 14, scope: !67)
!84 = !DILocation(line: 93, column: 3, scope: !68)
!85 = distinct !{!85, !84, !86, !62, !63}
!86 = !DILocation(line: 98, column: 3, scope: !68)
!87 = !DILocation(line: 100, column: 19, scope: !28)
!88 = !DILocation(line: 101, column: 30, scope: !28)
!89 = !DILocation(line: 102, column: 25, scope: !28)
!90 = !DILocation(line: 105, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !28, file: !3, line: 105, column: 7)
!92 = !DILocation(line: 0, scope: !91)
!93 = !DILocation(line: 105, column: 7, scope: !28)
!94 = !DILocation(line: 110, column: 5, scope: !95)
!95 = distinct !DILexicalBlock(scope: !96, file: !3, line: 107, column: 5)
!96 = distinct !DILexicalBlock(scope: !91, file: !3, line: 105, column: 17)
!97 = !DILocation(line: 111, column: 35, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 110, column: 54)
!99 = distinct !DILexicalBlock(scope: !95, file: !3, line: 110, column: 5)
!100 = !DILocation(line: 112, column: 49, scope: !98)
!101 = !DILocation(line: 112, column: 2, scope: !98)
!102 = !DILocation(line: 113, column: 1, scope: !98)
!103 = !DILocation(line: 110, column: 14, scope: !99)
!104 = !DILocation(line: 114, column: 44, scope: !105)
!105 = distinct !DILexicalBlock(scope: !99, file: !3, line: 113, column: 8)
!106 = !DILocation(line: 114, column: 2, scope: !105)
!107 = !DILocation(line: 116, column: 25, scope: !95)
!108 = !DILocation(line: 116, column: 33, scope: !95)
!109 = !DILocation(line: 116, column: 1, scope: !95)
!110 = !DILocation(line: 119, column: 33, scope: !111)
!111 = distinct !DILexicalBlock(scope: !96, file: !3, line: 119, column: 5)
!112 = !DILocation(line: 120, column: 5, scope: !96)
!113 = !DILocation(line: 123, column: 23, scope: !114)
!114 = distinct !DILexicalBlock(scope: !96, file: !3, line: 122, column: 5)
!115 = !DILocation(line: 123, column: 31, scope: !114)
!116 = !DILocation(line: 123, column: 1, scope: !114)
!117 = !DILocation(line: 124, column: 2, scope: !114)
!118 = !DILocation(line: 124, column: 23, scope: !114)
!119 = !DILocation(line: 124, column: 33, scope: !114)
!120 = !DILocation(line: 125, column: 5, scope: !121)
!121 = distinct !DILexicalBlock(scope: !114, file: !3, line: 125, column: 5)
!122 = !DILocation(line: 125, column: 42, scope: !121)
!123 = !DILocation(line: 125, column: 38, scope: !121)
!124 = !DILocation(line: 125, column: 5, scope: !114)
!125 = !DILocation(line: 126, column: 35, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !3, line: 125, column: 54)
!127 = !DILocation(line: 127, column: 49, scope: !126)
!128 = !DILocation(line: 127, column: 2, scope: !126)
!129 = !DILocation(line: 128, column: 1, scope: !126)
!130 = !DILocation(line: 125, column: 14, scope: !121)
!131 = !DILocation(line: 129, column: 44, scope: !132)
!132 = distinct !DILexicalBlock(scope: !121, file: !3, line: 128, column: 8)
!133 = !DILocation(line: 129, column: 2, scope: !132)
!134 = !DILocation(line: 131, column: 25, scope: !114)
!135 = !DILocation(line: 131, column: 33, scope: !114)
!136 = !DILocation(line: 131, column: 1, scope: !114)
!137 = !DILocation(line: 134, column: 5, scope: !96)
!138 = !DILocation(line: 136, column: 32, scope: !139)
!139 = distinct !DILexicalBlock(scope: !96, file: !3, line: 136, column: 5)
!140 = !DILocation(line: 139, column: 23, scope: !141)
!141 = distinct !DILexicalBlock(scope: !96, file: !3, line: 138, column: 5)
!142 = !DILocation(line: 139, column: 31, scope: !141)
!143 = !DILocation(line: 139, column: 1, scope: !141)
!144 = !DILocation(line: 140, column: 2, scope: !141)
!145 = !DILocation(line: 140, column: 23, scope: !141)
!146 = !DILocation(line: 140, column: 33, scope: !141)
!147 = !DILocation(line: 141, column: 5, scope: !148)
!148 = distinct !DILexicalBlock(scope: !141, file: !3, line: 141, column: 5)
!149 = !DILocation(line: 141, column: 42, scope: !148)
!150 = !DILocation(line: 141, column: 38, scope: !148)
!151 = !DILocation(line: 141, column: 5, scope: !141)
!152 = !DILocation(line: 142, column: 35, scope: !153)
!153 = distinct !DILexicalBlock(scope: !148, file: !3, line: 141, column: 54)
!154 = !DILocation(line: 143, column: 49, scope: !153)
!155 = !DILocation(line: 143, column: 2, scope: !153)
!156 = !DILocation(line: 144, column: 1, scope: !153)
!157 = !DILocation(line: 141, column: 14, scope: !148)
!158 = !DILocation(line: 145, column: 44, scope: !159)
!159 = distinct !DILexicalBlock(scope: !148, file: !3, line: 144, column: 8)
!160 = !DILocation(line: 145, column: 2, scope: !159)
!161 = !DILocation(line: 147, column: 25, scope: !141)
!162 = !DILocation(line: 147, column: 33, scope: !141)
!163 = !DILocation(line: 147, column: 1, scope: !141)
!164 = !DILocation(line: 150, column: 5, scope: !96)
!165 = !DILocation(line: 157, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !96, file: !3, line: 157, column: 9)
!167 = !DILocation(line: 157, column: 33, scope: !166)
!168 = !DILocation(line: 157, column: 9, scope: !96)
!169 = !DILocation(line: 160, column: 23, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 159, column: 7)
!171 = distinct !DILexicalBlock(scope: !166, file: !3, line: 157, column: 38)
!172 = !DILocation(line: 160, column: 31, scope: !170)
!173 = !DILocation(line: 160, column: 1, scope: !170)
!174 = !DILocation(line: 161, column: 2, scope: !170)
!175 = !DILocation(line: 161, column: 23, scope: !170)
!176 = !DILocation(line: 161, column: 33, scope: !170)
!177 = !DILocation(line: 162, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !170, file: !3, line: 162, column: 5)
!179 = !DILocation(line: 162, column: 42, scope: !178)
!180 = !DILocation(line: 162, column: 38, scope: !178)
!181 = !DILocation(line: 162, column: 5, scope: !170)
!182 = !DILocation(line: 163, column: 35, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !3, line: 162, column: 54)
!184 = !DILocation(line: 164, column: 49, scope: !183)
!185 = !DILocation(line: 164, column: 2, scope: !183)
!186 = !DILocation(line: 165, column: 1, scope: !183)
!187 = !DILocation(line: 162, column: 14, scope: !178)
!188 = !DILocation(line: 166, column: 44, scope: !189)
!189 = distinct !DILexicalBlock(scope: !178, file: !3, line: 165, column: 8)
!190 = !DILocation(line: 166, column: 2, scope: !189)
!191 = !DILocation(line: 168, column: 25, scope: !170)
!192 = !DILocation(line: 168, column: 33, scope: !170)
!193 = !DILocation(line: 168, column: 1, scope: !170)
!194 = !DILocation(line: 171, column: 35, scope: !195)
!195 = distinct !DILexicalBlock(scope: !171, file: !3, line: 171, column: 7)
!196 = !DILocation(line: 172, column: 7, scope: !171)
!197 = !DILocation(line: 174, column: 34, scope: !198)
!198 = distinct !DILexicalBlock(scope: !171, file: !3, line: 174, column: 7)
!199 = !DILocation(line: 177, column: 23, scope: !200)
!200 = distinct !DILexicalBlock(scope: !171, file: !3, line: 176, column: 7)
!201 = !DILocation(line: 177, column: 31, scope: !200)
!202 = !DILocation(line: 177, column: 1, scope: !200)
!203 = !DILocation(line: 178, column: 2, scope: !200)
!204 = !DILocation(line: 178, column: 23, scope: !200)
!205 = !DILocation(line: 178, column: 33, scope: !200)
!206 = !DILocation(line: 179, column: 5, scope: !207)
!207 = distinct !DILexicalBlock(scope: !200, file: !3, line: 179, column: 5)
!208 = !DILocation(line: 179, column: 42, scope: !207)
!209 = !DILocation(line: 179, column: 38, scope: !207)
!210 = !DILocation(line: 179, column: 5, scope: !200)
!211 = !DILocation(line: 180, column: 35, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !3, line: 179, column: 54)
!213 = !DILocation(line: 181, column: 49, scope: !212)
!214 = !DILocation(line: 181, column: 2, scope: !212)
!215 = !DILocation(line: 182, column: 1, scope: !212)
!216 = !DILocation(line: 179, column: 14, scope: !207)
!217 = !DILocation(line: 183, column: 44, scope: !218)
!218 = distinct !DILexicalBlock(scope: !207, file: !3, line: 182, column: 8)
!219 = !DILocation(line: 183, column: 2, scope: !218)
!220 = !DILocation(line: 185, column: 25, scope: !200)
!221 = !DILocation(line: 185, column: 33, scope: !200)
!222 = !DILocation(line: 185, column: 1, scope: !200)
!223 = !DILocation(line: 188, column: 7, scope: !171)
!224 = !DILocation(line: 189, column: 5, scope: !171)
!225 = !DILocation(line: 197, column: 5, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !3, line: 194, column: 5)
!227 = distinct !DILexicalBlock(scope: !91, file: !3, line: 192, column: 8)
!228 = !DILocation(line: 198, column: 35, scope: !229)
!229 = distinct !DILexicalBlock(scope: !230, file: !3, line: 197, column: 54)
!230 = distinct !DILexicalBlock(scope: !226, file: !3, line: 197, column: 5)
!231 = !DILocation(line: 199, column: 49, scope: !229)
!232 = !DILocation(line: 199, column: 2, scope: !229)
!233 = !DILocation(line: 200, column: 1, scope: !229)
!234 = !DILocation(line: 197, column: 14, scope: !230)
!235 = !DILocation(line: 201, column: 44, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !3, line: 200, column: 8)
!237 = !DILocation(line: 201, column: 2, scope: !236)
!238 = !DILocation(line: 203, column: 25, scope: !226)
!239 = !DILocation(line: 203, column: 33, scope: !226)
!240 = !DILocation(line: 203, column: 1, scope: !226)
!241 = !DILocation(line: 206, column: 33, scope: !242)
!242 = distinct !DILexicalBlock(scope: !227, file: !3, line: 206, column: 5)
!243 = !DILocation(line: 208, column: 5, scope: !227)
!244 = !DILocation(line: 210, column: 5, scope: !227)
!245 = !DILocation(line: 210, column: 31, scope: !227)
!246 = !DILocation(line: 212, column: 23, scope: !247)
!247 = distinct !DILexicalBlock(scope: !227, file: !3, line: 211, column: 5)
!248 = !DILocation(line: 212, column: 31, scope: !247)
!249 = !DILocation(line: 212, column: 1, scope: !247)
!250 = !DILocation(line: 213, column: 2, scope: !247)
!251 = !DILocation(line: 213, column: 23, scope: !247)
!252 = !DILocation(line: 213, column: 33, scope: !247)
!253 = !DILocation(line: 214, column: 5, scope: !254)
!254 = distinct !DILexicalBlock(scope: !247, file: !3, line: 214, column: 5)
!255 = !DILocation(line: 214, column: 42, scope: !254)
!256 = !DILocation(line: 214, column: 38, scope: !254)
!257 = !DILocation(line: 214, column: 5, scope: !247)
!258 = !DILocation(line: 215, column: 35, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !3, line: 214, column: 54)
!260 = !DILocation(line: 216, column: 49, scope: !259)
!261 = !DILocation(line: 216, column: 2, scope: !259)
!262 = !DILocation(line: 217, column: 1, scope: !259)
!263 = !DILocation(line: 214, column: 14, scope: !254)
!264 = !DILocation(line: 218, column: 44, scope: !265)
!265 = distinct !DILexicalBlock(scope: !254, file: !3, line: 217, column: 8)
!266 = !DILocation(line: 218, column: 2, scope: !265)
!267 = !DILocation(line: 220, column: 25, scope: !247)
!268 = !DILocation(line: 220, column: 33, scope: !247)
!269 = !DILocation(line: 220, column: 1, scope: !247)
!270 = !DILocation(line: 223, column: 5, scope: !227)
!271 = !DILocation(line: 225, column: 32, scope: !272)
!272 = distinct !DILexicalBlock(scope: !227, file: !3, line: 225, column: 5)
!273 = !DILocation(line: 228, column: 23, scope: !274)
!274 = distinct !DILexicalBlock(scope: !227, file: !3, line: 227, column: 5)
!275 = !DILocation(line: 228, column: 31, scope: !274)
!276 = !DILocation(line: 228, column: 1, scope: !274)
!277 = !DILocation(line: 229, column: 2, scope: !274)
!278 = !DILocation(line: 229, column: 23, scope: !274)
!279 = !DILocation(line: 229, column: 33, scope: !274)
!280 = !DILocation(line: 230, column: 5, scope: !281)
!281 = distinct !DILexicalBlock(scope: !274, file: !3, line: 230, column: 5)
!282 = !DILocation(line: 230, column: 42, scope: !281)
!283 = !DILocation(line: 230, column: 38, scope: !281)
!284 = !DILocation(line: 230, column: 5, scope: !274)
!285 = !DILocation(line: 231, column: 35, scope: !286)
!286 = distinct !DILexicalBlock(scope: !281, file: !3, line: 230, column: 54)
!287 = !DILocation(line: 232, column: 49, scope: !286)
!288 = !DILocation(line: 232, column: 2, scope: !286)
!289 = !DILocation(line: 233, column: 1, scope: !286)
!290 = !DILocation(line: 230, column: 14, scope: !281)
!291 = !DILocation(line: 234, column: 44, scope: !292)
!292 = distinct !DILexicalBlock(scope: !281, file: !3, line: 233, column: 8)
!293 = !DILocation(line: 234, column: 2, scope: !292)
!294 = !DILocation(line: 236, column: 25, scope: !274)
!295 = !DILocation(line: 236, column: 33, scope: !274)
!296 = !DILocation(line: 236, column: 1, scope: !274)
!297 = !DILocation(line: 239, column: 5, scope: !227)
!298 = !DILocation(line: 240, column: 15, scope: !227)
!299 = !DILocation(line: 243, column: 27, scope: !300)
!300 = distinct !DILexicalBlock(scope: !28, file: !3, line: 243, column: 5)
!301 = !DILocation(line: 243, column: 35, scope: !300)
!302 = !DILocation(line: 243, column: 6, scope: !300)
!303 = !DILocation(line: 244, column: 65, scope: !28)
!304 = !DILocation(line: 244, column: 71, scope: !28)
!305 = !DILocation(line: 245, column: 5, scope: !28)
!306 = !DILocation(line: 245, column: 15, scope: !28)
!307 = !DILocation(line: 245, column: 31, scope: !28)
!308 = !DILocation(line: 246, column: 5, scope: !28)
!309 = !DILocation(line: 244, column: 5, scope: !28)
!310 = !DILocation(line: 248, column: 29, scope: !311)
!311 = distinct !DILexicalBlock(scope: !28, file: !3, line: 248, column: 5)
!312 = !DILocation(line: 248, column: 37, scope: !311)
!313 = !DILocation(line: 248, column: 6, scope: !311)
!314 = !DILocation(line: 251, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !28, file: !3, line: 250, column: 3)
!316 = !DILocation(line: 251, column: 31, scope: !315)
!317 = !DILocation(line: 251, column: 1, scope: !315)
!318 = !DILocation(line: 252, column: 2, scope: !315)
!319 = !DILocation(line: 252, column: 23, scope: !315)
!320 = !DILocation(line: 252, column: 33, scope: !315)
!321 = !DILocation(line: 253, column: 5, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !3, line: 253, column: 5)
!323 = !DILocation(line: 253, column: 42, scope: !322)
!324 = !DILocation(line: 253, column: 38, scope: !322)
!325 = !DILocation(line: 253, column: 5, scope: !315)
!326 = !DILocation(line: 254, column: 35, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !3, line: 253, column: 54)
!328 = !DILocation(line: 255, column: 49, scope: !327)
!329 = !DILocation(line: 255, column: 2, scope: !327)
!330 = !DILocation(line: 256, column: 1, scope: !327)
!331 = !DILocation(line: 253, column: 14, scope: !322)
!332 = !DILocation(line: 257, column: 44, scope: !333)
!333 = distinct !DILexicalBlock(scope: !322, file: !3, line: 256, column: 8)
!334 = !DILocation(line: 257, column: 2, scope: !333)
!335 = !DILocation(line: 259, column: 25, scope: !315)
!336 = !DILocation(line: 259, column: 33, scope: !315)
!337 = !DILocation(line: 259, column: 1, scope: !315)
!338 = !DILocation(line: 261, column: 1, scope: !28)
!339 = !DISubprogram(name: "pthread_mutex_lock", scope: !340, file: !340, line: 738, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!340 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !344}
!343 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !346, line: 72, baseType: !347)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!347 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !346, line: 67, size: 320, elements: !348)
!348 = !{!349, !370, !375}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !347, file: !346, line: 69, baseType: !350, size: 320)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !351, line: 22, size: 320, elements: !352)
!351 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!352 = !{!353, !354, !356, !357, !358, !359, !361, !362}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !350, file: !351, line: 24, baseType: !343, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !350, file: !351, line: 25, baseType: !355, size: 32, offset: 32)
!355 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !350, file: !351, line: 26, baseType: !343, size: 32, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !350, file: !351, line: 28, baseType: !355, size: 32, offset: 96)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !350, file: !351, line: 32, baseType: !343, size: 32, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !350, file: !351, line: 34, baseType: !360, size: 16, offset: 160)
!360 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !350, file: !351, line: 35, baseType: !360, size: 16, offset: 176)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !350, file: !351, line: 36, baseType: !363, size: 128, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !364, line: 53, baseType: !365)
!364 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !364, line: 49, size: 128, elements: !366)
!366 = !{!367, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !365, file: !364, line: 51, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !365, file: !364, line: 52, baseType: !368, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !347, file: !346, line: 70, baseType: !371, size: 320)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 320, elements: !373)
!372 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!373 = !{!374}
!374 = !DISubrange(count: 40)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !347, file: !346, line: 71, baseType: !6, size: 64)
!376 = !{}
!377 = !DISubprogram(name: "pthread_cond_broadcast", scope: !340, file: !340, line: 978, type: !378, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!378 = !DISubroutineType(types: !379)
!379 = !{!343, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !346, line: 80, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !346, line: 75, size: 384, elements: !383)
!383 = !{!384, !414, !418}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !382, file: !346, line: 77, baseType: !385, size: 384)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !364, line: 92, size: 384, elements: !386)
!386 = !{!387, !397, !406, !410, !411, !412, !413}
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !364, line: 94, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !364, line: 94, size: 64, elements: !389)
!389 = !{!390, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !388, file: !364, line: 96, baseType: !391, size: 64)
!391 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq32", scope: !388, file: !364, line: 101, baseType: !393, size: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !388, file: !364, line: 97, size: 64, elements: !394)
!394 = !{!395, !396}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !393, file: !364, line: 99, baseType: !355, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !393, file: !364, line: 100, baseType: !355, size: 32, offset: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !364, line: 103, baseType: !398, size: 64, offset: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !364, line: 103, size: 64, elements: !399)
!399 = !{!400, !401}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !398, file: !364, line: 105, baseType: !391, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start32", scope: !398, file: !364, line: 110, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !398, file: !364, line: 106, size: 64, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !402, file: !364, line: 108, baseType: !355, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !402, file: !364, line: 109, baseType: !355, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !385, file: !364, line: 112, baseType: !407, size: 64, offset: 128)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 64, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 2)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !385, file: !364, line: 113, baseType: !407, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !385, file: !364, line: 114, baseType: !355, size: 32, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !385, file: !364, line: 115, baseType: !355, size: 32, offset: 288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !385, file: !364, line: 116, baseType: !407, size: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !382, file: !346, line: 78, baseType: !415, size: 384)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !372, size: 384, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 48)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !382, file: !346, line: 79, baseType: !419, size: 64)
!419 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!420 = !DISubprogram(name: "pthread_cond_wait", scope: !340, file: !340, line: 986, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!421 = !DISubroutineType(types: !422)
!422 = !{!343, !423, !424}
!423 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !380)
!424 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !344)
!425 = !DISubprogram(name: "pthread_mutex_unlock", scope: !340, file: !340, line: 756, type: !341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!426 = !DISubprogram(name: "time", scope: !3, file: !3, line: 119, type: !427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!427 = !DISubroutineType(types: !428)
!428 = !{!429, !433}
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !430, line: 7, baseType: !431)
!430 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "49b4e16ef1215de5afdbb283400ab90c")
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !432, line: 160, baseType: !6)
!432 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!434 = !DISubprogram(name: "Pre_Shade", scope: !435, file: !435, line: 234, type: !29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!435 = !DIFile(filename: "./global.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f049690031a7f12768b0765e4f4983eb")
!436 = distinct !DISubprogram(name: "Ray_Trace_Adaptively", scope: !3, file: !3, line: 264, type: !29, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!437 = !{!438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!438 = !DILocalVariable(name: "my_node", arg: 1, scope: !436, file: !3, line: 264, type: !6)
!439 = !DILocalVariable(name: "outx", scope: !436, file: !3, line: 266, type: !6)
!440 = !DILocalVariable(name: "outy", scope: !436, file: !3, line: 266, type: !6)
!441 = !DILocalVariable(name: "yindex", scope: !436, file: !3, line: 266, type: !6)
!442 = !DILocalVariable(name: "xindex", scope: !436, file: !3, line: 266, type: !6)
!443 = !DILocalVariable(name: "num_xqueue", scope: !436, file: !3, line: 268, type: !6)
!444 = !DILocalVariable(name: "num_yqueue", scope: !436, file: !3, line: 268, type: !6)
!445 = !DILocalVariable(name: "num_queue", scope: !436, file: !3, line: 268, type: !6)
!446 = !DILocalVariable(name: "lnum_xblocks", scope: !436, file: !3, line: 268, type: !6)
!447 = !DILocalVariable(name: "lnum_yblocks", scope: !436, file: !3, line: 268, type: !6)
!448 = !DILocalVariable(name: "lnum_blocks", scope: !436, file: !3, line: 268, type: !6)
!449 = !DILocalVariable(name: "xstart", scope: !436, file: !3, line: 269, type: !6)
!450 = !DILocalVariable(name: "xstop", scope: !436, file: !3, line: 269, type: !6)
!451 = !DILocalVariable(name: "ystart", scope: !436, file: !3, line: 269, type: !6)
!452 = !DILocalVariable(name: "ystop", scope: !436, file: !3, line: 269, type: !6)
!453 = !DILocalVariable(name: "local_node", scope: !436, file: !3, line: 269, type: !6)
!454 = !DILocalVariable(name: "work", scope: !436, file: !3, line: 269, type: !6)
!455 = !DILocation(line: 0, scope: !436)
!456 = !DILocation(line: 271, column: 9, scope: !436)
!457 = !DILocation(line: 273, column: 16, scope: !436)
!458 = !DILocation(line: 274, column: 16, scope: !436)
!459 = !DILocation(line: 276, column: 18, scope: !436)
!460 = !DILocation(line: 277, column: 18, scope: !436)
!461 = !DILocation(line: 278, column: 30, scope: !436)
!462 = !DILocation(line: 280, column: 3, scope: !436)
!463 = !DILocation(line: 280, column: 32, scope: !436)
!464 = !DILocation(line: 281, column: 10, scope: !436)
!465 = !DILocation(line: 281, column: 24, scope: !436)
!466 = !DILocation(line: 281, column: 38, scope: !436)
!467 = !DILocation(line: 281, column: 3, scope: !436)
!468 = !DILocation(line: 282, column: 28, scope: !469)
!469 = distinct !DILexicalBlock(scope: !436, file: !3, line: 281, column: 43)
!470 = !DILocation(line: 282, column: 26, scope: !469)
!471 = !DILocation(line: 286, column: 26, scope: !469)
!472 = !DILocation(line: 282, column: 46, scope: !469)
!473 = !DILocation(line: 283, column: 14, scope: !469)
!474 = !DILocation(line: 284, column: 21, scope: !469)
!475 = !DILocation(line: 285, column: 13, scope: !469)
!476 = !DILocation(line: 286, column: 46, scope: !469)
!477 = !DILocation(line: 287, column: 14, scope: !469)
!478 = !DILocation(line: 288, column: 21, scope: !469)
!479 = !DILocation(line: 289, column: 13, scope: !469)
!480 = !DILocation(line: 290, column: 27, scope: !481)
!481 = distinct !DILexicalBlock(scope: !469, file: !3, line: 290, column: 5)
!482 = !DILocation(line: 290, column: 6, scope: !481)
!483 = !DILocation(line: 291, column: 12, scope: !469)
!484 = !DILocation(line: 292, column: 34, scope: !469)
!485 = !DILocation(line: 293, column: 30, scope: !486)
!486 = distinct !DILexicalBlock(scope: !469, file: !3, line: 293, column: 5)
!487 = !DILocation(line: 293, column: 29, scope: !486)
!488 = !DILocation(line: 293, column: 6, scope: !486)
!489 = !DILocation(line: 294, column: 17, scope: !469)
!490 = !DILocation(line: 294, column: 5, scope: !469)
!491 = !DILocation(line: 295, column: 30, scope: !492)
!492 = distinct !DILexicalBlock(scope: !469, file: !3, line: 294, column: 32)
!493 = !DILocation(line: 295, column: 45, scope: !492)
!494 = !DILocation(line: 295, column: 44, scope: !492)
!495 = !DILocation(line: 295, column: 23, scope: !492)
!496 = !DILocation(line: 296, column: 30, scope: !492)
!497 = !DILocation(line: 296, column: 45, scope: !492)
!498 = !DILocation(line: 296, column: 44, scope: !492)
!499 = !DILocation(line: 296, column: 23, scope: !492)
!500 = !DILocation(line: 297, column: 29, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 297, column: 7)
!502 = distinct !DILexicalBlock(scope: !492, file: !3, line: 297, column: 7)
!503 = !DILocation(line: 297, column: 48, scope: !501)
!504 = !DILocation(line: 299, column: 32, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 299, column: 2)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 299, column: 2)
!507 = distinct !DILexicalBlock(scope: !501, file: !3, line: 298, column: 36)
!508 = !DILocation(line: 299, column: 24, scope: !505)
!509 = !DILocation(line: 0, scope: !501)
!510 = !DILocation(line: 299, column: 43, scope: !505)
!511 = !DILocation(line: 304, column: 37, scope: !512)
!512 = distinct !DILexicalBlock(scope: !505, file: !3, line: 300, column: 38)
!513 = !DILocation(line: 304, column: 4, scope: !512)
!514 = !DILocation(line: 300, column: 13, scope: !505)
!515 = !DILocation(line: 300, column: 11, scope: !505)
!516 = !DILocation(line: 299, column: 31, scope: !505)
!517 = distinct !{!517, !518, !519, !62, !63}
!518 = !DILocation(line: 299, column: 2, scope: !506)
!519 = !DILocation(line: 305, column: 2, scope: !506)
!520 = !DILocation(line: 297, column: 37, scope: !501)
!521 = !DILocation(line: 298, column: 11, scope: !501)
!522 = !DILocation(line: 298, column: 9, scope: !501)
!523 = !DILocation(line: 297, column: 36, scope: !501)
!524 = distinct !{!524, !525, !526, !62, !63}
!525 = !DILocation(line: 297, column: 7, scope: !502)
!526 = !DILocation(line: 306, column: 7, scope: !502)
!527 = !DILocation(line: 307, column: 30, scope: !528)
!528 = distinct !DILexicalBlock(scope: !492, file: !3, line: 307, column: 7)
!529 = !DILocation(line: 307, column: 29, scope: !528)
!530 = !DILocation(line: 307, column: 8, scope: !528)
!531 = !DILocation(line: 308, column: 14, scope: !492)
!532 = !DILocation(line: 309, column: 36, scope: !492)
!533 = !DILocation(line: 310, column: 32, scope: !534)
!534 = distinct !DILexicalBlock(scope: !492, file: !3, line: 310, column: 7)
!535 = !DILocation(line: 310, column: 31, scope: !534)
!536 = !DILocation(line: 310, column: 8, scope: !534)
!537 = distinct !{!537, !490, !538, !62, !63}
!538 = !DILocation(line: 311, column: 5, scope: !469)
!539 = !DILocation(line: 312, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !469, file: !3, line: 312, column: 9)
!541 = !DILocation(line: 312, column: 9, scope: !469)
!542 = !DILocation(line: 313, column: 30, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !3, line: 313, column: 7)
!544 = distinct !DILexicalBlock(scope: !540, file: !3, line: 312, column: 32)
!545 = !DILocation(line: 313, column: 46, scope: !543)
!546 = !DILocation(line: 313, column: 29, scope: !543)
!547 = !DILocation(line: 313, column: 8, scope: !543)
!548 = !DILocation(line: 314, column: 7, scope: !544)
!549 = !DILocation(line: 314, column: 21, scope: !544)
!550 = !DILocation(line: 314, column: 34, scope: !544)
!551 = !DILocation(line: 315, column: 32, scope: !552)
!552 = distinct !DILexicalBlock(scope: !544, file: !3, line: 315, column: 7)
!553 = !DILocation(line: 315, column: 48, scope: !552)
!554 = !DILocation(line: 315, column: 31, scope: !552)
!555 = !DILocation(line: 315, column: 8, scope: !552)
!556 = !DILocation(line: 316, column: 5, scope: !544)
!557 = !DILocation(line: 317, column: 33, scope: !469)
!558 = !DILocation(line: 318, column: 5, scope: !469)
!559 = !DILocation(line: 0, scope: !469)
!560 = !DILocation(line: 318, column: 12, scope: !469)
!561 = !DILocation(line: 318, column: 41, scope: !469)
!562 = !DILocation(line: 318, column: 56, scope: !469)
!563 = distinct !{!563, !558, !564, !62, !63}
!564 = !DILocation(line: 320, column: 35, scope: !469)
!565 = distinct !{!565, !467, !566, !62, !63}
!566 = !DILocation(line: 321, column: 3, scope: !436)
!567 = !DILocation(line: 323, column: 1, scope: !436)
!568 = !DISubprogram(name: "mclock", scope: !435, file: !435, line: 184, type: !569, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !6, !6, !433}
!571 = distinct !DISubprogram(name: "Interpolate_Recursively", scope: !3, file: !3, line: 526, type: !29, scopeLine: 527, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !572)
!572 = !{!573, !574, !575, !576, !577, !578}
!573 = !DILocalVariable(name: "my_node", arg: 1, scope: !571, file: !3, line: 526, type: !6)
!574 = !DILocalVariable(name: "i", scope: !571, file: !3, line: 528, type: !6)
!575 = !DILocalVariable(name: "outx", scope: !571, file: !3, line: 528, type: !6)
!576 = !DILocalVariable(name: "outy", scope: !571, file: !3, line: 528, type: !6)
!577 = !DILocalVariable(name: "xindex", scope: !571, file: !3, line: 528, type: !6)
!578 = !DILocalVariable(name: "yindex", scope: !571, file: !3, line: 528, type: !6)
!579 = !DILocation(line: 0, scope: !571)
!580 = !DILocation(line: 530, column: 15, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 530, column: 3)
!582 = distinct !DILexicalBlock(scope: !571, file: !3, line: 530, column: 3)
!583 = !DILocation(line: 530, column: 14, scope: !581)
!584 = !DILocation(line: 530, column: 3, scope: !582)
!585 = !DILocation(line: 531, column: 40, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !3, line: 530, column: 41)
!587 = !DILocation(line: 532, column: 40, scope: !586)
!588 = !DILocation(line: 531, column: 23, scope: !586)
!589 = !DILocation(line: 531, column: 27, scope: !586)
!590 = !DILocation(line: 531, column: 26, scope: !586)
!591 = !DILocation(line: 531, column: 39, scope: !586)
!592 = !DILocation(line: 532, column: 26, scope: !586)
!593 = !DILocation(line: 532, column: 39, scope: !586)
!594 = !DILocation(line: 534, column: 27, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !3, line: 534, column: 5)
!596 = distinct !DILexicalBlock(scope: !586, file: !3, line: 534, column: 5)
!597 = !DILocation(line: 534, column: 46, scope: !595)
!598 = !DILocation(line: 534, column: 5, scope: !596)
!599 = !DILocation(line: 536, column: 37, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 536, column: 7)
!601 = distinct !DILexicalBlock(scope: !602, file: !3, line: 536, column: 7)
!602 = distinct !DILexicalBlock(scope: !595, file: !3, line: 535, column: 60)
!603 = !DILocation(line: 536, column: 29, scope: !600)
!604 = !DILocation(line: 536, column: 48, scope: !600)
!605 = !DILocation(line: 0, scope: !595)
!606 = !DILocation(line: 541, column: 38, scope: !607)
!607 = distinct !DILexicalBlock(scope: !600, file: !3, line: 537, column: 62)
!608 = !DILocation(line: 541, column: 2, scope: !607)
!609 = !DILocation(line: 537, column: 37, scope: !600)
!610 = !DILocation(line: 537, column: 35, scope: !600)
!611 = !DILocation(line: 536, column: 36, scope: !600)
!612 = distinct !{!612, !613, !614, !62, !63}
!613 = !DILocation(line: 536, column: 7, scope: !601)
!614 = !DILocation(line: 542, column: 7, scope: !601)
!615 = !DILocation(line: 534, column: 35, scope: !595)
!616 = !DILocation(line: 535, column: 35, scope: !595)
!617 = !DILocation(line: 535, column: 33, scope: !595)
!618 = !DILocation(line: 534, column: 34, scope: !595)
!619 = distinct !{!619, !598, !620, !62, !63}
!620 = !DILocation(line: 543, column: 5, scope: !596)
!621 = !DILocation(line: 530, column: 30, scope: !581)
!622 = !DILocation(line: 530, column: 28, scope: !581)
!623 = distinct !{!623, !584, !624, !62, !63}
!624 = !DILocation(line: 544, column: 3, scope: !582)
!625 = !DILocation(line: 545, column: 1, scope: !571)
!626 = distinct !DISubprogram(name: "Ray_Trace_Non_Adaptively", scope: !3, file: !3, line: 431, type: !29, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !627)
!627 = !{!628, !629, !630, !631, !632, !633, !634, !635, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651}
!628 = !DILocalVariable(name: "my_node", arg: 1, scope: !626, file: !3, line: 431, type: !6)
!629 = !DILocalVariable(name: "outx", scope: !626, file: !3, line: 433, type: !6)
!630 = !DILocalVariable(name: "outy", scope: !626, file: !3, line: 433, type: !6)
!631 = !DILocalVariable(name: "xindex", scope: !626, file: !3, line: 433, type: !6)
!632 = !DILocalVariable(name: "yindex", scope: !626, file: !3, line: 433, type: !6)
!633 = !DILocalVariable(name: "foutx", scope: !626, file: !3, line: 434, type: !5)
!634 = !DILocalVariable(name: "fouty", scope: !626, file: !3, line: 434, type: !5)
!635 = !DILocalVariable(name: "pixel_address", scope: !626, file: !3, line: 435, type: !636)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIXEL", file: !638, line: 30, baseType: !639)
!638 = !DIFile(filename: "./my_types.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "1c0e36810bc34cd72ba4bfe4a2cdcc97")
!639 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!640 = !DILocalVariable(name: "num_xqueue", scope: !626, file: !3, line: 437, type: !6)
!641 = !DILocalVariable(name: "num_yqueue", scope: !626, file: !3, line: 437, type: !6)
!642 = !DILocalVariable(name: "num_queue", scope: !626, file: !3, line: 437, type: !6)
!643 = !DILocalVariable(name: "lnum_xblocks", scope: !626, file: !3, line: 437, type: !6)
!644 = !DILocalVariable(name: "lnum_yblocks", scope: !626, file: !3, line: 437, type: !6)
!645 = !DILocalVariable(name: "lnum_blocks", scope: !626, file: !3, line: 437, type: !6)
!646 = !DILocalVariable(name: "xstart", scope: !626, file: !3, line: 438, type: !6)
!647 = !DILocalVariable(name: "xstop", scope: !626, file: !3, line: 438, type: !6)
!648 = !DILocalVariable(name: "ystart", scope: !626, file: !3, line: 438, type: !6)
!649 = !DILocalVariable(name: "ystop", scope: !626, file: !3, line: 438, type: !6)
!650 = !DILocalVariable(name: "local_node", scope: !626, file: !3, line: 438, type: !6)
!651 = !DILocalVariable(name: "work", scope: !626, file: !3, line: 438, type: !6)
!652 = !DILocation(line: 0, scope: !626)
!653 = !DILocation(line: 440, column: 16, scope: !626)
!654 = !DILocation(line: 441, column: 16, scope: !626)
!655 = !DILocation(line: 443, column: 18, scope: !626)
!656 = !DILocation(line: 444, column: 18, scope: !626)
!657 = !DILocation(line: 445, column: 30, scope: !626)
!658 = !DILocation(line: 447, column: 26, scope: !659)
!659 = distinct !DILexicalBlock(scope: !626, file: !3, line: 447, column: 3)
!660 = !DILocation(line: 447, column: 42, scope: !659)
!661 = !DILocation(line: 447, column: 25, scope: !659)
!662 = !DILocation(line: 447, column: 4, scope: !659)
!663 = !DILocation(line: 448, column: 10, scope: !626)
!664 = !DILocation(line: 448, column: 24, scope: !626)
!665 = !DILocation(line: 448, column: 38, scope: !626)
!666 = !DILocation(line: 448, column: 3, scope: !626)
!667 = !DILocation(line: 449, column: 29, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 449, column: 5)
!669 = distinct !DILexicalBlock(scope: !626, file: !3, line: 448, column: 43)
!670 = !DILocation(line: 449, column: 6, scope: !668)
!671 = !DILocation(line: 450, column: 28, scope: !669)
!672 = !DILocation(line: 450, column: 26, scope: !669)
!673 = !DILocation(line: 450, column: 46, scope: !669)
!674 = !DILocation(line: 451, column: 13, scope: !669)
!675 = !DILocation(line: 452, column: 26, scope: !669)
!676 = !DILocation(line: 452, column: 46, scope: !669)
!677 = !DILocation(line: 453, column: 13, scope: !669)
!678 = !DILocation(line: 454, column: 28, scope: !679)
!679 = distinct !DILexicalBlock(scope: !669, file: !3, line: 454, column: 5)
!680 = !DILocation(line: 454, column: 27, scope: !679)
!681 = !DILocation(line: 454, column: 6, scope: !679)
!682 = !DILocation(line: 455, column: 12, scope: !669)
!683 = !DILocation(line: 455, column: 40, scope: !669)
!684 = !DILocation(line: 456, column: 30, scope: !685)
!685 = distinct !DILexicalBlock(scope: !669, file: !3, line: 456, column: 5)
!686 = !DILocation(line: 456, column: 29, scope: !685)
!687 = !DILocation(line: 456, column: 6, scope: !685)
!688 = !DILocation(line: 457, column: 17, scope: !669)
!689 = !DILocation(line: 457, column: 5, scope: !669)
!690 = !DILocation(line: 458, column: 30, scope: !691)
!691 = distinct !DILexicalBlock(scope: !669, file: !3, line: 457, column: 32)
!692 = !DILocation(line: 458, column: 45, scope: !691)
!693 = !DILocation(line: 458, column: 44, scope: !691)
!694 = !DILocation(line: 458, column: 23, scope: !691)
!695 = !DILocation(line: 459, column: 30, scope: !691)
!696 = !DILocation(line: 459, column: 45, scope: !691)
!697 = !DILocation(line: 459, column: 44, scope: !691)
!698 = !DILocation(line: 459, column: 23, scope: !691)
!699 = !DILocation(line: 460, column: 29, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 460, column: 7)
!701 = distinct !DILexicalBlock(scope: !691, file: !3, line: 460, column: 7)
!702 = !DILocation(line: 460, column: 48, scope: !700)
!703 = !DILocation(line: 461, column: 32, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 461, column: 2)
!705 = distinct !DILexicalBlock(scope: !706, file: !3, line: 461, column: 2)
!706 = distinct !DILexicalBlock(scope: !700, file: !3, line: 460, column: 71)
!707 = !DILocation(line: 461, column: 24, scope: !704)
!708 = !DILocation(line: 461, column: 43, scope: !704)
!709 = !DILocation(line: 465, column: 12, scope: !710)
!710 = distinct !DILexicalBlock(scope: !704, file: !3, line: 461, column: 66)
!711 = !DILocation(line: 467, column: 20, scope: !710)
!712 = !DILocation(line: 468, column: 14, scope: !710)
!713 = !DILocation(line: 468, column: 4, scope: !710)
!714 = !DILocation(line: 461, column: 62, scope: !704)
!715 = !DILocation(line: 461, column: 31, scope: !704)
!716 = distinct !{!716, !717, !718, !62, !63}
!717 = !DILocation(line: 461, column: 2, scope: !705)
!718 = !DILocation(line: 469, column: 2, scope: !705)
!719 = !DILocation(line: 460, column: 37, scope: !700)
!720 = !DILocation(line: 460, column: 67, scope: !700)
!721 = !DILocation(line: 460, column: 36, scope: !700)
!722 = distinct !{!722, !723, !724, !62, !63}
!723 = !DILocation(line: 460, column: 7, scope: !701)
!724 = !DILocation(line: 470, column: 7, scope: !701)
!725 = !DILocation(line: 471, column: 30, scope: !726)
!726 = distinct !DILexicalBlock(scope: !691, file: !3, line: 471, column: 7)
!727 = !DILocation(line: 471, column: 29, scope: !726)
!728 = !DILocation(line: 471, column: 8, scope: !726)
!729 = !DILocation(line: 472, column: 14, scope: !691)
!730 = !DILocation(line: 472, column: 42, scope: !691)
!731 = !DILocation(line: 473, column: 32, scope: !732)
!732 = distinct !DILexicalBlock(scope: !691, file: !3, line: 473, column: 7)
!733 = !DILocation(line: 473, column: 31, scope: !732)
!734 = !DILocation(line: 473, column: 8, scope: !732)
!735 = distinct !{!735, !689, !736, !62, !63}
!736 = !DILocation(line: 474, column: 5, scope: !669)
!737 = !DILocation(line: 475, column: 17, scope: !738)
!738 = distinct !DILexicalBlock(scope: !669, file: !3, line: 475, column: 9)
!739 = !DILocation(line: 475, column: 9, scope: !669)
!740 = !DILocation(line: 476, column: 30, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 476, column: 7)
!742 = distinct !DILexicalBlock(scope: !738, file: !3, line: 475, column: 32)
!743 = !DILocation(line: 476, column: 46, scope: !741)
!744 = !DILocation(line: 476, column: 29, scope: !741)
!745 = !DILocation(line: 476, column: 8, scope: !741)
!746 = !DILocation(line: 477, column: 7, scope: !742)
!747 = !DILocation(line: 477, column: 21, scope: !742)
!748 = !DILocation(line: 477, column: 34, scope: !742)
!749 = !DILocation(line: 478, column: 32, scope: !750)
!750 = distinct !DILexicalBlock(scope: !742, file: !3, line: 478, column: 7)
!751 = !DILocation(line: 478, column: 48, scope: !750)
!752 = !DILocation(line: 478, column: 31, scope: !750)
!753 = !DILocation(line: 478, column: 8, scope: !750)
!754 = !DILocation(line: 479, column: 5, scope: !742)
!755 = !DILocation(line: 480, column: 29, scope: !669)
!756 = !DILocation(line: 480, column: 33, scope: !669)
!757 = !DILocation(line: 480, column: 32, scope: !669)
!758 = !DILocation(line: 481, column: 28, scope: !759)
!759 = distinct !DILexicalBlock(scope: !669, file: !3, line: 481, column: 5)
!760 = !DILocation(line: 481, column: 27, scope: !759)
!761 = !DILocation(line: 481, column: 6, scope: !759)
!762 = !DILocation(line: 482, column: 28, scope: !763)
!763 = distinct !DILexicalBlock(scope: !669, file: !3, line: 482, column: 5)
!764 = !DILocation(line: 482, column: 27, scope: !763)
!765 = !DILocation(line: 482, column: 6, scope: !763)
!766 = !DILocation(line: 483, column: 12, scope: !669)
!767 = !DILocation(line: 483, column: 41, scope: !669)
!768 = !DILocation(line: 483, column: 56, scope: !669)
!769 = !DILocation(line: 484, column: 19, scope: !669)
!770 = !DILocation(line: 484, column: 5, scope: !669)
!771 = !DILocation(line: 484, column: 33, scope: !669)
!772 = !DILocation(line: 483, column: 5, scope: !669)
!773 = !DILocation(line: 485, column: 31, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 485, column: 7)
!775 = distinct !DILexicalBlock(scope: !669, file: !3, line: 484, column: 38)
!776 = !DILocation(line: 485, column: 8, scope: !774)
!777 = !DILocation(line: 486, column: 32, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !3, line: 486, column: 7)
!779 = !DILocation(line: 486, column: 48, scope: !778)
!780 = !DILocation(line: 486, column: 31, scope: !778)
!781 = !DILocation(line: 486, column: 8, scope: !778)
!782 = !DILocation(line: 487, column: 31, scope: !775)
!783 = !DILocation(line: 487, column: 35, scope: !775)
!784 = !DILocation(line: 487, column: 34, scope: !775)
!785 = !DILocation(line: 488, column: 30, scope: !786)
!786 = distinct !DILexicalBlock(scope: !775, file: !3, line: 488, column: 7)
!787 = !DILocation(line: 488, column: 29, scope: !786)
!788 = !DILocation(line: 488, column: 8, scope: !786)
!789 = !DILocation(line: 489, column: 30, scope: !790)
!790 = distinct !DILexicalBlock(scope: !775, file: !3, line: 489, column: 7)
!791 = !DILocation(line: 489, column: 29, scope: !790)
!792 = !DILocation(line: 489, column: 8, scope: !790)
!793 = distinct !{!793, !772, !794, !62, !63}
!794 = !DILocation(line: 490, column: 3, scope: !669)
!795 = !DILocation(line: 0, scope: !669)
!796 = !DILocation(line: 491, column: 29, scope: !797)
!797 = distinct !DILexicalBlock(scope: !669, file: !3, line: 491, column: 5)
!798 = !DILocation(line: 491, column: 6, scope: !797)
!799 = distinct !{!799, !666, !800, !62, !63}
!800 = !DILocation(line: 492, column: 3, scope: !626)
!801 = !DILocation(line: 493, column: 27, scope: !802)
!802 = distinct !DILexicalBlock(scope: !626, file: !3, line: 493, column: 3)
!803 = !DILocation(line: 493, column: 4, scope: !802)
!804 = !DILocation(line: 494, column: 1, scope: !626)
!805 = distinct !DISubprogram(name: "Ray_Trace_Adaptive_Box", scope: !3, file: !3, line: 326, type: !806, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !6, !6, !6}
!808 = !{!809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820}
!809 = !DILocalVariable(name: "outx", arg: 1, scope: !805, file: !3, line: 326, type: !6)
!810 = !DILocalVariable(name: "outy", arg: 2, scope: !805, file: !3, line: 326, type: !6)
!811 = !DILocalVariable(name: "boxlen", arg: 3, scope: !805, file: !3, line: 326, type: !6)
!812 = !DILocalVariable(name: "i", scope: !805, file: !3, line: 328, type: !6)
!813 = !DILocalVariable(name: "j", scope: !805, file: !3, line: 328, type: !6)
!814 = !DILocalVariable(name: "half_boxlen", scope: !805, file: !3, line: 329, type: !6)
!815 = !DILocalVariable(name: "min_volume_color", scope: !805, file: !3, line: 330, type: !6)
!816 = !DILocalVariable(name: "max_volume_color", scope: !805, file: !3, line: 330, type: !6)
!817 = !DILocalVariable(name: "foutx", scope: !805, file: !3, line: 331, type: !5)
!818 = !DILocalVariable(name: "fouty", scope: !805, file: !3, line: 331, type: !5)
!819 = !DILocalVariable(name: "imask", scope: !805, file: !3, line: 332, type: !6)
!820 = !DILocalVariable(name: "pixel_address", scope: !805, file: !3, line: 334, type: !636)
!821 = !DILocation(line: 0, scope: !805)
!822 = !DILocation(line: 361, column: 14, scope: !823)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 361, column: 3)
!824 = distinct !DILexicalBlock(scope: !805, file: !3, line: 361, column: 3)
!825 = !DILocation(line: 361, column: 23, scope: !823)
!826 = !DILocation(line: 361, column: 30, scope: !823)
!827 = !DILocation(line: 361, column: 33, scope: !823)
!828 = !DILocation(line: 361, column: 32, scope: !823)
!829 = !DILocation(line: 361, column: 3, scope: !824)
!830 = !DILocation(line: 362, column: 35, scope: !831)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 362, column: 5)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 362, column: 5)
!833 = distinct !DILexicalBlock(scope: !823, file: !3, line: 361, column: 58)
!834 = !DILocation(line: 362, column: 25, scope: !831)
!835 = !DILocation(line: 362, column: 32, scope: !831)
!836 = !DILocation(line: 362, column: 34, scope: !831)
!837 = !DILocation(line: 362, column: 5, scope: !832)
!838 = !DILocation(line: 366, column: 11, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !3, line: 366, column: 11)
!840 = distinct !DILexicalBlock(scope: !831, file: !3, line: 362, column: 60)
!841 = !DILocation(line: 366, column: 37, scope: !839)
!842 = !DILocation(line: 366, column: 11, scope: !840)
!843 = !DILocation(line: 370, column: 28, scope: !844)
!844 = distinct !DILexicalBlock(scope: !839, file: !3, line: 366, column: 43)
!845 = !DILocation(line: 374, column: 10, scope: !844)
!846 = !DILocation(line: 376, column: 18, scope: !844)
!847 = !DILocation(line: 380, column: 12, scope: !844)
!848 = !DILocation(line: 380, column: 2, scope: !844)
!849 = !DILocation(line: 384, column: 2, scope: !844)
!850 = !DILocation(line: 384, column: 28, scope: !844)
!851 = !DILocation(line: 385, column: 7, scope: !844)
!852 = !DILocation(line: 362, column: 50, scope: !831)
!853 = !DILocation(line: 362, column: 16, scope: !831)
!854 = distinct !{!854, !837, !855, !62, !63}
!855 = !DILocation(line: 386, column: 5, scope: !832)
!856 = !DILocation(line: 361, column: 48, scope: !823)
!857 = distinct !{!857, !829, !858, !62, !63}
!858 = !DILocation(line: 387, column: 3, scope: !824)
!859 = !DILocation(line: 388, column: 23, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 388, column: 3)
!861 = distinct !DILexicalBlock(scope: !805, file: !3, line: 388, column: 3)
!862 = !DILocation(line: 388, column: 30, scope: !860)
!863 = !DILocation(line: 388, column: 32, scope: !860)
!864 = !DILocation(line: 388, column: 3, scope: !861)
!865 = !DILocation(line: 389, column: 25, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 389, column: 5)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 389, column: 5)
!868 = distinct !DILexicalBlock(scope: !860, file: !3, line: 388, column: 58)
!869 = !DILocation(line: 389, column: 32, scope: !866)
!870 = !DILocation(line: 389, column: 34, scope: !866)
!871 = !DILocation(line: 389, column: 5, scope: !867)
!872 = !DILocation(line: 394, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !866, file: !3, line: 389, column: 60)
!874 = distinct !{!874, !872, !875, !62, !63}
!875 = !DILocation(line: 402, column: 7, scope: !873)
!876 = !DILocation(line: 403, column: 26, scope: !873)
!877 = !DILocation(line: 404, column: 26, scope: !873)
!878 = !DILocation(line: 389, column: 50, scope: !866)
!879 = !DILocation(line: 389, column: 16, scope: !866)
!880 = distinct !{!880, !871, !881, !62, !63}
!881 = !DILocation(line: 405, column: 5, scope: !867)
!882 = !DILocation(line: 388, column: 48, scope: !860)
!883 = !DILocation(line: 388, column: 14, scope: !860)
!884 = distinct !{!884, !864, !885, !62, !63}
!885 = !DILocation(line: 406, column: 3, scope: !861)
!886 = !DILocation(line: 359, column: 20, scope: !805)
!887 = !DILocation(line: 358, column: 20, scope: !805)
!888 = !DILocation(line: 418, column: 16, scope: !889)
!889 = distinct !DILexicalBlock(scope: !805, file: !3, line: 418, column: 7)
!890 = !DILocation(line: 418, column: 14, scope: !889)
!891 = !DILocation(line: 418, column: 37, scope: !889)
!892 = !DILocation(line: 419, column: 24, scope: !889)
!893 = !DILocation(line: 420, column: 7, scope: !889)
!894 = !DILocation(line: 419, column: 43, scope: !889)
!895 = !DILocation(line: 418, column: 7, scope: !805)
!896 = !DILocation(line: 421, column: 26, scope: !897)
!897 = distinct !DILexicalBlock(scope: !889, file: !3, line: 420, column: 32)
!898 = !DILocation(line: 422, column: 16, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 422, column: 5)
!900 = distinct !DILexicalBlock(scope: !897, file: !3, line: 422, column: 5)
!901 = !DILocation(line: 422, column: 24, scope: !899)
!902 = !DILocation(line: 422, column: 31, scope: !899)
!903 = !DILocation(line: 422, column: 34, scope: !899)
!904 = !DILocation(line: 422, column: 33, scope: !899)
!905 = !DILocation(line: 422, column: 5, scope: !900)
!906 = !DILocation(line: 423, column: 33, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 423, column: 7)
!908 = distinct !DILexicalBlock(scope: !909, file: !3, line: 423, column: 7)
!909 = distinct !DILexicalBlock(scope: !899, file: !3, line: 422, column: 64)
!910 = !DILocation(line: 423, column: 36, scope: !907)
!911 = !DILocation(line: 423, column: 35, scope: !907)
!912 = !DILocation(line: 423, column: 7, scope: !908)
!913 = !DILocation(line: 422, column: 49, scope: !899)
!914 = distinct !{!914, !905, !915, !62, !63}
!915 = !DILocation(line: 426, column: 5, scope: !900)
!916 = !DILocation(line: 424, column: 2, scope: !917)
!917 = distinct !DILexicalBlock(scope: !907, file: !3, line: 423, column: 66)
!918 = !DILocation(line: 423, column: 51, scope: !907)
!919 = !DILocation(line: 423, column: 18, scope: !907)
!920 = !DILocation(line: 423, column: 26, scope: !907)
!921 = distinct !{!921, !912, !922, !62, !63}
!922 = !DILocation(line: 425, column: 7, scope: !908)
!923 = !DILocation(line: 428, column: 1, scope: !805)
!924 = !DISubprogram(name: "Trace_Ray", scope: !435, file: !435, line: 233, type: !925, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !376)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !927, !927, !636}
!927 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!928 = distinct !DISubprogram(name: "Ray_Trace_Fast_Non_Adaptively", scope: !3, file: !3, line: 497, type: !29, scopeLine: 498, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936, !937, !938}
!930 = !DILocalVariable(name: "my_node", arg: 1, scope: !928, file: !3, line: 497, type: !6)
!931 = !DILocalVariable(name: "i", scope: !928, file: !3, line: 499, type: !6)
!932 = !DILocalVariable(name: "outx", scope: !928, file: !3, line: 499, type: !6)
!933 = !DILocalVariable(name: "outy", scope: !928, file: !3, line: 499, type: !6)
!934 = !DILocalVariable(name: "xindex", scope: !928, file: !3, line: 499, type: !6)
!935 = !DILocalVariable(name: "yindex", scope: !928, file: !3, line: 499, type: !6)
!936 = !DILocalVariable(name: "foutx", scope: !928, file: !3, line: 500, type: !5)
!937 = !DILocalVariable(name: "fouty", scope: !928, file: !3, line: 500, type: !5)
!938 = !DILocalVariable(name: "pixel_address", scope: !928, file: !3, line: 501, type: !636)
!939 = !DILocation(line: 0, scope: !928)
!940 = !DILocation(line: 503, column: 15, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 503, column: 3)
!942 = distinct !DILexicalBlock(scope: !928, file: !3, line: 503, column: 3)
!943 = !DILocation(line: 503, column: 14, scope: !941)
!944 = !DILocation(line: 503, column: 3, scope: !942)
!945 = !DILocation(line: 504, column: 40, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !3, line: 503, column: 41)
!947 = !DILocation(line: 505, column: 40, scope: !946)
!948 = !DILocation(line: 504, column: 23, scope: !946)
!949 = !DILocation(line: 504, column: 27, scope: !946)
!950 = !DILocation(line: 504, column: 26, scope: !946)
!951 = !DILocation(line: 504, column: 39, scope: !946)
!952 = !DILocation(line: 505, column: 26, scope: !946)
!953 = !DILocation(line: 505, column: 39, scope: !946)
!954 = !DILocation(line: 507, column: 27, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !3, line: 507, column: 5)
!956 = distinct !DILexicalBlock(scope: !946, file: !3, line: 507, column: 5)
!957 = !DILocation(line: 507, column: 46, scope: !955)
!958 = !DILocation(line: 507, column: 5, scope: !956)
!959 = !DILocation(line: 509, column: 37, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !3, line: 509, column: 7)
!961 = distinct !DILexicalBlock(scope: !962, file: !3, line: 509, column: 7)
!962 = distinct !DILexicalBlock(scope: !955, file: !3, line: 508, column: 57)
!963 = !DILocation(line: 509, column: 29, scope: !960)
!964 = !DILocation(line: 509, column: 48, scope: !960)
!965 = !DILocation(line: 508, column: 35, scope: !955)
!966 = !DILocation(line: 514, column: 2, scope: !967)
!967 = distinct !DILexicalBlock(scope: !960, file: !3, line: 510, column: 59)
!968 = !DILocation(line: 514, column: 24, scope: !967)
!969 = !DILocation(line: 515, column: 10, scope: !967)
!970 = !DILocation(line: 517, column: 18, scope: !967)
!971 = !DILocation(line: 518, column: 12, scope: !967)
!972 = !DILocation(line: 518, column: 2, scope: !967)
!973 = !DILocation(line: 519, column: 17, scope: !967)
!974 = !DILocation(line: 510, column: 37, scope: !960)
!975 = !DILocation(line: 510, column: 35, scope: !960)
!976 = !DILocation(line: 509, column: 36, scope: !960)
!977 = distinct !{!977, !978, !979, !62, !63}
!978 = !DILocation(line: 509, column: 7, scope: !961)
!979 = !DILocation(line: 520, column: 7, scope: !961)
!980 = !DILocation(line: 507, column: 35, scope: !955)
!981 = !DILocation(line: 508, column: 33, scope: !955)
!982 = !DILocation(line: 507, column: 34, scope: !955)
!983 = distinct !{!983, !958, !984, !62, !63}
!984 = !DILocation(line: 521, column: 5, scope: !956)
!985 = !DILocation(line: 503, column: 30, scope: !941)
!986 = !DILocation(line: 503, column: 28, scope: !941)
!987 = distinct !{!987, !944, !988, !62, !63}
!988 = !DILocation(line: 522, column: 3, scope: !942)
!989 = !DILocation(line: 523, column: 1, scope: !928)
!990 = distinct !DISubprogram(name: "Interpolate_Recursive_Box", scope: !3, file: !3, line: 548, type: !806, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !991)
!991 = !{!992, !993, !994, !995, !996, !997, !998, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008}
!992 = !DILocalVariable(name: "outx", arg: 1, scope: !990, file: !3, line: 548, type: !6)
!993 = !DILocalVariable(name: "outy", arg: 2, scope: !990, file: !3, line: 548, type: !6)
!994 = !DILocalVariable(name: "boxlen", arg: 3, scope: !990, file: !3, line: 548, type: !6)
!995 = !DILocalVariable(name: "i", scope: !990, file: !3, line: 550, type: !6)
!996 = !DILocalVariable(name: "j", scope: !990, file: !3, line: 550, type: !6)
!997 = !DILocalVariable(name: "half_boxlen", scope: !990, file: !3, line: 551, type: !6)
!998 = !DILocalVariable(name: "corner_color", scope: !990, file: !3, line: 552, type: !999)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !1000)
!1000 = !{!409, !409}
!1001 = !DILocalVariable(name: "color", scope: !990, file: !3, line: 552, type: !6)
!1002 = !DILocalVariable(name: "outx_plus_boxlen", scope: !990, file: !3, line: 553, type: !6)
!1003 = !DILocalVariable(name: "outy_plus_boxlen", scope: !990, file: !3, line: 553, type: !6)
!1004 = !DILocalVariable(name: "one_over_boxlen", scope: !990, file: !3, line: 555, type: !5)
!1005 = !DILocalVariable(name: "xalpha", scope: !990, file: !3, line: 556, type: !5)
!1006 = !DILocalVariable(name: "yalpha", scope: !990, file: !3, line: 556, type: !5)
!1007 = !DILocalVariable(name: "one_minus_xalpha", scope: !990, file: !3, line: 557, type: !5)
!1008 = !DILocalVariable(name: "one_minus_yalpha", scope: !990, file: !3, line: 557, type: !5)
!1009 = !DILocation(line: 0, scope: !990)
!1010 = !DILocation(line: 571, column: 24, scope: !990)
!1011 = !DILocation(line: 572, column: 27, scope: !990)
!1012 = !DILocation(line: 572, column: 21, scope: !990)
!1013 = !DILocation(line: 581, column: 14, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 581, column: 3)
!1015 = distinct !DILexicalBlock(scope: !990, file: !3, line: 581, column: 3)
!1016 = !DILocation(line: 581, column: 23, scope: !1014)
!1017 = !DILocation(line: 577, column: 24, scope: !990)
!1018 = !DILocation(line: 575, column: 26, scope: !990)
!1019 = !DILocation(line: 575, column: 36, scope: !990)
!1020 = !DILocation(line: 575, column: 34, scope: !990)
!1021 = !DILocation(line: 575, column: 22, scope: !990)
!1022 = !DILocation(line: 574, column: 36, scope: !990)
!1023 = !DILocation(line: 579, column: 24, scope: !990)
!1024 = !DILocation(line: 574, column: 26, scope: !990)
!1025 = !DILocation(line: 574, column: 34, scope: !990)
!1026 = !DILocation(line: 574, column: 22, scope: !990)
!1027 = !DILocation(line: 580, column: 24, scope: !990)
!1028 = !DILocation(line: 578, column: 24, scope: !990)
!1029 = !DILocation(line: 581, column: 32, scope: !1014)
!1030 = !DILocation(line: 581, column: 3, scope: !1015)
!1031 = !DILocation(line: 582, column: 14, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 581, column: 63)
!1033 = !DILocation(line: 582, column: 23, scope: !1032)
!1034 = !DILocation(line: 583, column: 24, scope: !1032)
!1035 = !DILocation(line: 584, column: 25, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 584, column: 5)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 584, column: 5)
!1038 = !DILocation(line: 584, column: 35, scope: !1036)
!1039 = !DILocation(line: 584, column: 32, scope: !1036)
!1040 = !DILocation(line: 584, column: 34, scope: !1036)
!1041 = !DILocation(line: 584, column: 5, scope: !1037)
!1042 = !DILocation(line: 587, column: 11, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 587, column: 11)
!1044 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 584, column: 65)
!1045 = !DILocation(line: 587, column: 37, scope: !1043)
!1046 = !DILocation(line: 587, column: 11, scope: !1044)
!1047 = !DILocation(line: 585, column: 16, scope: !1044)
!1048 = !DILocation(line: 585, column: 25, scope: !1044)
!1049 = !DILocation(line: 586, column: 26, scope: !1044)
!1050 = !DILocation(line: 588, column: 28, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 587, column: 43)
!1052 = !DILocation(line: 589, column: 22, scope: !1051)
!1053 = !DILocation(line: 589, column: 29, scope: !1051)
!1054 = !DILocation(line: 588, column: 62, scope: !1051)
!1055 = !DILocation(line: 590, column: 24, scope: !1051)
!1056 = !DILocation(line: 589, column: 46, scope: !1051)
!1057 = !DILocation(line: 591, column: 26, scope: !1051)
!1058 = !DILocation(line: 590, column: 48, scope: !1051)
!1059 = !DILocation(line: 588, column: 10, scope: !1051)
!1060 = !DILocation(line: 592, column: 25, scope: !1051)
!1061 = !DILocation(line: 592, column: 2, scope: !1051)
!1062 = !DILocation(line: 592, column: 23, scope: !1051)
!1063 = !DILocation(line: 593, column: 2, scope: !1051)
!1064 = !DILocation(line: 593, column: 28, scope: !1051)
!1065 = !DILocation(line: 594, column: 7, scope: !1051)
!1066 = !DILocation(line: 584, column: 50, scope: !1036)
!1067 = !DILocation(line: 584, column: 16, scope: !1036)
!1068 = distinct !{!1068, !1041, !1069, !62, !63}
!1069 = !DILocation(line: 595, column: 5, scope: !1037)
!1070 = !DILocation(line: 581, column: 48, scope: !1014)
!1071 = distinct !{!1071, !1030, !1072, !62, !63}
!1072 = !DILocation(line: 596, column: 3, scope: !1015)
!1073 = !DILocation(line: 581, column: 33, scope: !1014)
!1074 = !DILocation(line: 581, column: 30, scope: !1014)
!1075 = !DILocation(line: 603, column: 19, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !990, file: !3, line: 603, column: 7)
!1077 = !DILocation(line: 603, column: 7, scope: !990)
!1078 = !DILocation(line: 604, column: 31, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 604, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 604, column: 5)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 603, column: 24)
!1082 = !DILocation(line: 604, column: 34, scope: !1079)
!1083 = !DILocation(line: 604, column: 33, scope: !1079)
!1084 = !DILocation(line: 604, column: 5, scope: !1080)
!1085 = !DILocation(line: 605, column: 33, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !3, line: 605, column: 7)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 605, column: 7)
!1088 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 604, column: 64)
!1089 = !DILocation(line: 605, column: 36, scope: !1086)
!1090 = !DILocation(line: 605, column: 35, scope: !1086)
!1091 = !DILocation(line: 605, column: 7, scope: !1087)
!1092 = !DILocation(line: 604, column: 49, scope: !1079)
!1093 = !DILocation(line: 604, column: 16, scope: !1079)
!1094 = !DILocation(line: 604, column: 24, scope: !1079)
!1095 = distinct !{!1095, !1084, !1096, !62, !63}
!1096 = !DILocation(line: 608, column: 5, scope: !1080)
!1097 = !DILocation(line: 606, column: 2, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 605, column: 66)
!1099 = !DILocation(line: 605, column: 51, scope: !1086)
!1100 = !DILocation(line: 605, column: 18, scope: !1086)
!1101 = !DILocation(line: 605, column: 26, scope: !1086)
!1102 = distinct !{!1102, !1091, !1103, !62, !63}
!1103 = !DILocation(line: 607, column: 7, scope: !1087)
!1104 = !DILocation(line: 610, column: 1, scope: !990)
