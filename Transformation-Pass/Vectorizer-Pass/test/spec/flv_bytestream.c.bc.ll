; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/output/flv_bytestream.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/output/flv_bytestream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flv_buffer = type { ptr, i32, i32, ptr, i64 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i64 @dbl2int(double noundef %value) local_unnamed_addr #0 !dbg !34 {
entry:
  call void @llvm.dbg.value(metadata double %value, metadata !43, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.value(metadata double %value, metadata !44, metadata !DIExpression()), !dbg !49
  %0 = bitcast double %value to i64, !dbg !50
  ret i64 %0, !dbg !51
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_byte(ptr nocapture noundef %c, i8 noundef zeroext %b) local_unnamed_addr #1 !dbg !52 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i8 %b, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !141
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !141
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !141
  %d_cur.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 1, !dbg !143
  %0 = load i32, ptr %d_cur.i, align 8, !dbg !143, !tbaa !144
  %add.i = add i32 %0, 1, !dbg !151
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !136, metadata !DIExpression()) #11, !dbg !141
  %d_max.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 2, !dbg !152
  %1 = load i32, ptr %d_max.i, align 4, !dbg !152, !tbaa !153
  %cmp.i = icmp ugt i32 %add.i, %1, !dbg !154
  br i1 %cmp.i, label %while.cond.i, label %entry.if.end7_crit_edge.i, !dbg !155

entry.if.end7_crit_edge.i:                        ; preds = %entry
  %.pre.i = load ptr, ptr %c, align 8, !dbg !156, !tbaa !157
  br label %if.end7.i, !dbg !155

while.cond.i:                                     ; preds = %entry, %while.cond.i
  %dn.0.i = phi i32 [ %shl.i, %while.cond.i ], [ 16, %entry ], !dbg !158
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !140, metadata !DIExpression()) #11, !dbg !158
  %cmp1.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !159
  %shl.i = shl i32 %dn.0.i, 1, !dbg !160
  call void @llvm.dbg.value(metadata i32 %shl.i, metadata !140, metadata !DIExpression()) #11, !dbg !158
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i, !dbg !161, !llvm.loop !162

while.end.i:                                      ; preds = %while.cond.i
  %2 = load ptr, ptr %c, align 8, !dbg !166, !tbaa !157
  %conv.i = zext i32 %dn.0.i to i64, !dbg !167
  %call.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i) #12, !dbg !168
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !137, metadata !DIExpression()) #11, !dbg !158
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !169
  br i1 %tobool.not.i, label %flv_append_data.exit, label %if.end.i, !dbg !171

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %c, align 8, !dbg !172, !tbaa !157
  store i32 %dn.0.i, ptr %d_max.i, align 4, !dbg !173, !tbaa !153
  %.pre27.i = load i32, ptr %d_cur.i, align 8, !dbg !174, !tbaa !144
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7_crit_edge.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i ], [ %.pre27.i, %if.end.i ], !dbg !174
  %4 = phi ptr [ %.pre.i, %entry.if.end7_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !156
  %idx.ext.i = zext i32 %3 to i64, !dbg !175
  %add.ptr.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i, !dbg !175
  store i8 %b, ptr %add.ptr.i, align 1, !dbg !176
  store i32 %add.i, ptr %d_cur.i, align 8, !dbg !177, !tbaa !144
  br label %flv_append_data.exit, !dbg !178

flv_append_data.exit:                             ; preds = %while.end.i, %if.end7.i
  ret void, !dbg !179
}

; Function Attrs: nounwind uwtable
define dso_local i32 @flv_append_data(ptr nocapture noundef %c, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #1 !dbg !130 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata ptr %data, metadata !134, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.value(metadata i32 %size, metadata !135, metadata !DIExpression()), !dbg !180
  %d_cur = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 1, !dbg !181
  %0 = load i32, ptr %d_cur, align 8, !dbg !181, !tbaa !144
  %add = add i32 %0, %size, !dbg !182
  call void @llvm.dbg.value(metadata i32 %add, metadata !136, metadata !DIExpression()), !dbg !180
  %d_max = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 2, !dbg !183
  %1 = load i32, ptr %d_max, align 4, !dbg !183, !tbaa !153
  %cmp = icmp ugt i32 %add, %1, !dbg !184
  br i1 %cmp, label %while.cond, label %entry.if.end7_crit_edge, !dbg !185

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = load ptr, ptr %c, align 8, !dbg !186, !tbaa !157
  br label %if.end7, !dbg !185

while.cond:                                       ; preds = %entry, %while.cond
  %dn.0 = phi i32 [ %shl, %while.cond ], [ 16, %entry ], !dbg !187
  call void @llvm.dbg.value(metadata i32 %dn.0, metadata !140, metadata !DIExpression()), !dbg !187
  %cmp1 = icmp ugt i32 %add, %dn.0, !dbg !188
  %shl = shl i32 %dn.0, 1, !dbg !189
  call void @llvm.dbg.value(metadata i32 %shl, metadata !140, metadata !DIExpression()), !dbg !187
  br i1 %cmp1, label %while.cond, label %while.end, !dbg !190, !llvm.loop !191

while.end:                                        ; preds = %while.cond
  %2 = load ptr, ptr %c, align 8, !dbg !193, !tbaa !157
  %conv = zext i32 %dn.0 to i64, !dbg !194
  %call = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv) #12, !dbg !195
  call void @llvm.dbg.value(metadata ptr %call, metadata !137, metadata !DIExpression()), !dbg !187
  %tobool.not = icmp eq ptr %call, null, !dbg !196
  br i1 %tobool.not, label %cleanup12, label %if.end, !dbg !197

if.end:                                           ; preds = %while.end
  store ptr %call, ptr %c, align 8, !dbg !198, !tbaa !157
  store i32 %dn.0, ptr %d_max, align 4, !dbg !199, !tbaa !153
  %.pre27 = load i32, ptr %d_cur, align 8, !dbg !200, !tbaa !144
  br label %if.end7

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.end
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge ], [ %.pre27, %if.end ], !dbg !200
  %4 = phi ptr [ %.pre, %entry.if.end7_crit_edge ], [ %call, %if.end ], !dbg !186
  %idx.ext = zext i32 %3 to i64, !dbg !201
  %add.ptr = getelementptr inbounds i8, ptr %4, i64 %idx.ext, !dbg !201
  %conv10 = zext i32 %size to i64, !dbg !202
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr, ptr align 1 %data, i64 %conv10, i1 false), !dbg !203
  store i32 %add, ptr %d_cur, align 8, !dbg !204, !tbaa !144
  br label %cleanup12, !dbg !205

cleanup12:                                        ; preds = %while.end, %if.end7
  %retval.1 = phi i32 [ 0, %if.end7 ], [ -1, %while.end ]
  ret i32 %retval.1, !dbg !206
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be32(ptr nocapture noundef %c, i32 noundef %val) local_unnamed_addr #1 !dbg !207 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !213, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 %val, metadata !214, metadata !DIExpression()), !dbg !215
  %shr = lshr i32 %val, 24, !dbg !216
  %conv = trunc i32 %shr to i8, !dbg !217
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !218
  call void @llvm.dbg.value(metadata i8 %conv, metadata !127, metadata !DIExpression()) #11, !dbg !218
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !220
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !220
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !220
  %d_cur.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 1, !dbg !222
  %0 = load i32, ptr %d_cur.i.i, align 8, !dbg !222, !tbaa !144
  %add.i.i = add i32 %0, 1, !dbg !223
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !136, metadata !DIExpression()) #11, !dbg !220
  %d_max.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 2, !dbg !224
  %1 = load i32, ptr %d_max.i.i, align 4, !dbg !224, !tbaa !153
  %cmp.i.i = icmp ugt i32 %add.i.i, %1, !dbg !225
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !226

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !227, !tbaa !157
  br label %if.end7.i.i, !dbg !226

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ], !dbg !228
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !228
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !229
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !230
  call void @llvm.dbg.value(metadata i32 %shl.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !228
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !231, !llvm.loop !232

while.end.i.i:                                    ; preds = %while.cond.i.i
  %2 = load ptr, ptr %c, align 8, !dbg !234, !tbaa !157
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !235
  %call.i.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i.i) #12, !dbg !236
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !137, metadata !DIExpression()) #11, !dbg !228
  %tobool.not.i.i = icmp eq ptr %call.i.i, null, !dbg !237
  br i1 %tobool.not.i.i, label %while.end.i.i.x264_put_byte.exit_crit_edge, label %if.end.i.i, !dbg !238

while.end.i.i.x264_put_byte.exit_crit_edge:       ; preds = %while.end.i.i
  %.pre = load i32, ptr %d_cur.i.i, align 8, !dbg !239, !tbaa !144
  br label %x264_put_byte.exit, !dbg !238

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !242, !tbaa !157
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !243, !tbaa !153
  %.pre27.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !244, !tbaa !144
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ], !dbg !244
  %4 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !227
  %idx.ext.i.i = zext i32 %3 to i64, !dbg !245
  %add.ptr.i.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i.i, !dbg !245
  store i8 %conv, ptr %add.ptr.i.i, align 1, !dbg !246
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !247, !tbaa !144
  br label %x264_put_byte.exit, !dbg !248

x264_put_byte.exit:                               ; preds = %while.end.i.i.x264_put_byte.exit_crit_edge, %if.end7.i.i
  %5 = phi i32 [ %.pre, %while.end.i.i.x264_put_byte.exit_crit_edge ], [ %add.i.i, %if.end7.i.i ], !dbg !239
  %shr1 = lshr i32 %val, 16, !dbg !249
  %conv2 = trunc i32 %shr1 to i8, !dbg !250
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !251
  call void @llvm.dbg.value(metadata i8 %conv2, metadata !127, metadata !DIExpression()) #11, !dbg !251
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !252
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !252
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !252
  %add.i.i13 = add i32 %5, 1, !dbg !253
  call void @llvm.dbg.value(metadata i32 %add.i.i13, metadata !136, metadata !DIExpression()) #11, !dbg !252
  %6 = load i32, ptr %d_max.i.i, align 4, !dbg !254, !tbaa !153
  %cmp.i.i15 = icmp ugt i32 %add.i.i13, %6, !dbg !255
  br i1 %cmp.i.i15, label %while.cond.i.i21, label %entry.if.end7_crit_edge.i.i17, !dbg !256

entry.if.end7_crit_edge.i.i17:                    ; preds = %x264_put_byte.exit
  %.pre.i.i16 = load ptr, ptr %c, align 8, !dbg !257, !tbaa !157
  br label %if.end7.i.i30, !dbg !256

while.cond.i.i21:                                 ; preds = %x264_put_byte.exit, %while.cond.i.i21
  %dn.0.i.i18 = phi i32 [ %shl.i.i20, %while.cond.i.i21 ], [ 16, %x264_put_byte.exit ], !dbg !258
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i18, metadata !140, metadata !DIExpression()) #11, !dbg !258
  %cmp1.i.i19 = icmp ugt i32 %add.i.i13, %dn.0.i.i18, !dbg !259
  %shl.i.i20 = shl i32 %dn.0.i.i18, 1, !dbg !260
  call void @llvm.dbg.value(metadata i32 %shl.i.i20, metadata !140, metadata !DIExpression()) #11, !dbg !258
  br i1 %cmp1.i.i19, label %while.cond.i.i21, label %while.end.i.i25, !dbg !261, !llvm.loop !262

while.end.i.i25:                                  ; preds = %while.cond.i.i21
  %7 = load ptr, ptr %c, align 8, !dbg !264, !tbaa !157
  %conv.i.i22 = zext i32 %dn.0.i.i18 to i64, !dbg !265
  %call.i.i23 = tail call ptr @realloc(ptr noundef %7, i64 noundef %conv.i.i22) #12, !dbg !266
  call void @llvm.dbg.value(metadata ptr %call.i.i23, metadata !137, metadata !DIExpression()) #11, !dbg !258
  %tobool.not.i.i24 = icmp eq ptr %call.i.i23, null, !dbg !267
  br i1 %tobool.not.i.i24, label %while.end.i.i25.x264_put_byte.exit31_crit_edge, label %if.end.i.i27, !dbg !268

while.end.i.i25.x264_put_byte.exit31_crit_edge:   ; preds = %while.end.i.i25
  %.pre72 = load i32, ptr %d_cur.i.i, align 8, !dbg !269, !tbaa !144
  br label %x264_put_byte.exit31, !dbg !268

if.end.i.i27:                                     ; preds = %while.end.i.i25
  store ptr %call.i.i23, ptr %c, align 8, !dbg !272, !tbaa !157
  store i32 %dn.0.i.i18, ptr %d_max.i.i, align 4, !dbg !273, !tbaa !153
  %.pre27.i.i26 = load i32, ptr %d_cur.i.i, align 8, !dbg !274, !tbaa !144
  br label %if.end7.i.i30

if.end7.i.i30:                                    ; preds = %if.end.i.i27, %entry.if.end7_crit_edge.i.i17
  %8 = phi i32 [ %5, %entry.if.end7_crit_edge.i.i17 ], [ %.pre27.i.i26, %if.end.i.i27 ], !dbg !274
  %9 = phi ptr [ %.pre.i.i16, %entry.if.end7_crit_edge.i.i17 ], [ %call.i.i23, %if.end.i.i27 ], !dbg !257
  %idx.ext.i.i28 = zext i32 %8 to i64, !dbg !275
  %add.ptr.i.i29 = getelementptr inbounds i8, ptr %9, i64 %idx.ext.i.i28, !dbg !275
  store i8 %conv2, ptr %add.ptr.i.i29, align 1, !dbg !276
  store i32 %add.i.i13, ptr %d_cur.i.i, align 8, !dbg !277, !tbaa !144
  br label %x264_put_byte.exit31, !dbg !278

x264_put_byte.exit31:                             ; preds = %while.end.i.i25.x264_put_byte.exit31_crit_edge, %if.end7.i.i30
  %10 = phi i32 [ %.pre72, %while.end.i.i25.x264_put_byte.exit31_crit_edge ], [ %add.i.i13, %if.end7.i.i30 ], !dbg !269
  %shr3 = lshr i32 %val, 8, !dbg !279
  %conv4 = trunc i32 %shr3 to i8, !dbg !280
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !281
  call void @llvm.dbg.value(metadata i8 %conv4, metadata !127, metadata !DIExpression()) #11, !dbg !281
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !282
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !282
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !282
  %add.i.i33 = add i32 %10, 1, !dbg !283
  call void @llvm.dbg.value(metadata i32 %add.i.i33, metadata !136, metadata !DIExpression()) #11, !dbg !282
  %11 = load i32, ptr %d_max.i.i, align 4, !dbg !284, !tbaa !153
  %cmp.i.i35 = icmp ugt i32 %add.i.i33, %11, !dbg !285
  br i1 %cmp.i.i35, label %while.cond.i.i41, label %entry.if.end7_crit_edge.i.i37, !dbg !286

entry.if.end7_crit_edge.i.i37:                    ; preds = %x264_put_byte.exit31
  %.pre.i.i36 = load ptr, ptr %c, align 8, !dbg !287, !tbaa !157
  br label %if.end7.i.i50, !dbg !286

while.cond.i.i41:                                 ; preds = %x264_put_byte.exit31, %while.cond.i.i41
  %dn.0.i.i38 = phi i32 [ %shl.i.i40, %while.cond.i.i41 ], [ 16, %x264_put_byte.exit31 ], !dbg !288
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i38, metadata !140, metadata !DIExpression()) #11, !dbg !288
  %cmp1.i.i39 = icmp ugt i32 %add.i.i33, %dn.0.i.i38, !dbg !289
  %shl.i.i40 = shl i32 %dn.0.i.i38, 1, !dbg !290
  call void @llvm.dbg.value(metadata i32 %shl.i.i40, metadata !140, metadata !DIExpression()) #11, !dbg !288
  br i1 %cmp1.i.i39, label %while.cond.i.i41, label %while.end.i.i45, !dbg !291, !llvm.loop !292

while.end.i.i45:                                  ; preds = %while.cond.i.i41
  %12 = load ptr, ptr %c, align 8, !dbg !294, !tbaa !157
  %conv.i.i42 = zext i32 %dn.0.i.i38 to i64, !dbg !295
  %call.i.i43 = tail call ptr @realloc(ptr noundef %12, i64 noundef %conv.i.i42) #12, !dbg !296
  call void @llvm.dbg.value(metadata ptr %call.i.i43, metadata !137, metadata !DIExpression()) #11, !dbg !288
  %tobool.not.i.i44 = icmp eq ptr %call.i.i43, null, !dbg !297
  br i1 %tobool.not.i.i44, label %while.end.i.i45.x264_put_byte.exit51_crit_edge, label %if.end.i.i47, !dbg !298

while.end.i.i45.x264_put_byte.exit51_crit_edge:   ; preds = %while.end.i.i45
  %.pre73 = load i32, ptr %d_cur.i.i, align 8, !dbg !299, !tbaa !144
  br label %x264_put_byte.exit51, !dbg !298

if.end.i.i47:                                     ; preds = %while.end.i.i45
  store ptr %call.i.i43, ptr %c, align 8, !dbg !302, !tbaa !157
  store i32 %dn.0.i.i38, ptr %d_max.i.i, align 4, !dbg !303, !tbaa !153
  %.pre27.i.i46 = load i32, ptr %d_cur.i.i, align 8, !dbg !304, !tbaa !144
  br label %if.end7.i.i50

if.end7.i.i50:                                    ; preds = %if.end.i.i47, %entry.if.end7_crit_edge.i.i37
  %13 = phi i32 [ %10, %entry.if.end7_crit_edge.i.i37 ], [ %.pre27.i.i46, %if.end.i.i47 ], !dbg !304
  %14 = phi ptr [ %.pre.i.i36, %entry.if.end7_crit_edge.i.i37 ], [ %call.i.i43, %if.end.i.i47 ], !dbg !287
  %idx.ext.i.i48 = zext i32 %13 to i64, !dbg !305
  %add.ptr.i.i49 = getelementptr inbounds i8, ptr %14, i64 %idx.ext.i.i48, !dbg !305
  store i8 %conv4, ptr %add.ptr.i.i49, align 1, !dbg !306
  store i32 %add.i.i33, ptr %d_cur.i.i, align 8, !dbg !307, !tbaa !144
  br label %x264_put_byte.exit51, !dbg !308

x264_put_byte.exit51:                             ; preds = %while.end.i.i45.x264_put_byte.exit51_crit_edge, %if.end7.i.i50
  %15 = phi i32 [ %.pre73, %while.end.i.i45.x264_put_byte.exit51_crit_edge ], [ %add.i.i33, %if.end7.i.i50 ], !dbg !299
  %conv5 = trunc i32 %val to i8, !dbg !309
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !310
  call void @llvm.dbg.value(metadata i8 %conv5, metadata !127, metadata !DIExpression()) #11, !dbg !310
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !311
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !311
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !311
  %add.i.i53 = add i32 %15, 1, !dbg !312
  call void @llvm.dbg.value(metadata i32 %add.i.i53, metadata !136, metadata !DIExpression()) #11, !dbg !311
  %16 = load i32, ptr %d_max.i.i, align 4, !dbg !313, !tbaa !153
  %cmp.i.i55 = icmp ugt i32 %add.i.i53, %16, !dbg !314
  br i1 %cmp.i.i55, label %while.cond.i.i61, label %entry.if.end7_crit_edge.i.i57, !dbg !315

entry.if.end7_crit_edge.i.i57:                    ; preds = %x264_put_byte.exit51
  %.pre.i.i56 = load ptr, ptr %c, align 8, !dbg !316, !tbaa !157
  br label %if.end7.i.i70, !dbg !315

while.cond.i.i61:                                 ; preds = %x264_put_byte.exit51, %while.cond.i.i61
  %dn.0.i.i58 = phi i32 [ %shl.i.i60, %while.cond.i.i61 ], [ 16, %x264_put_byte.exit51 ], !dbg !317
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i58, metadata !140, metadata !DIExpression()) #11, !dbg !317
  %cmp1.i.i59 = icmp ugt i32 %add.i.i53, %dn.0.i.i58, !dbg !318
  %shl.i.i60 = shl i32 %dn.0.i.i58, 1, !dbg !319
  call void @llvm.dbg.value(metadata i32 %shl.i.i60, metadata !140, metadata !DIExpression()) #11, !dbg !317
  br i1 %cmp1.i.i59, label %while.cond.i.i61, label %while.end.i.i65, !dbg !320, !llvm.loop !321

while.end.i.i65:                                  ; preds = %while.cond.i.i61
  %17 = load ptr, ptr %c, align 8, !dbg !323, !tbaa !157
  %conv.i.i62 = zext i32 %dn.0.i.i58 to i64, !dbg !324
  %call.i.i63 = tail call ptr @realloc(ptr noundef %17, i64 noundef %conv.i.i62) #12, !dbg !325
  call void @llvm.dbg.value(metadata ptr %call.i.i63, metadata !137, metadata !DIExpression()) #11, !dbg !317
  %tobool.not.i.i64 = icmp eq ptr %call.i.i63, null, !dbg !326
  br i1 %tobool.not.i.i64, label %x264_put_byte.exit71, label %if.end.i.i67, !dbg !327

if.end.i.i67:                                     ; preds = %while.end.i.i65
  store ptr %call.i.i63, ptr %c, align 8, !dbg !328, !tbaa !157
  store i32 %dn.0.i.i58, ptr %d_max.i.i, align 4, !dbg !329, !tbaa !153
  %.pre27.i.i66 = load i32, ptr %d_cur.i.i, align 8, !dbg !330, !tbaa !144
  br label %if.end7.i.i70

if.end7.i.i70:                                    ; preds = %if.end.i.i67, %entry.if.end7_crit_edge.i.i57
  %18 = phi i32 [ %15, %entry.if.end7_crit_edge.i.i57 ], [ %.pre27.i.i66, %if.end.i.i67 ], !dbg !330
  %19 = phi ptr [ %.pre.i.i56, %entry.if.end7_crit_edge.i.i57 ], [ %call.i.i63, %if.end.i.i67 ], !dbg !316
  %idx.ext.i.i68 = zext i32 %18 to i64, !dbg !331
  %add.ptr.i.i69 = getelementptr inbounds i8, ptr %19, i64 %idx.ext.i.i68, !dbg !331
  store i8 %conv5, ptr %add.ptr.i.i69, align 1, !dbg !332
  store i32 %add.i.i53, ptr %d_cur.i.i, align 8, !dbg !333, !tbaa !144
  br label %x264_put_byte.exit71, !dbg !334

x264_put_byte.exit71:                             ; preds = %while.end.i.i65, %if.end7.i.i70
  ret void, !dbg !335
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be64(ptr nocapture noundef %c, i64 noundef %val) local_unnamed_addr #1 !dbg !336 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !340, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.value(metadata i64 %val, metadata !341, metadata !DIExpression()), !dbg !342
  %shr = lshr i64 %val, 32, !dbg !343
  %conv = trunc i64 %shr to i32, !dbg !344
  tail call void @x264_put_be32(ptr noundef %c, i32 noundef %conv), !dbg !345
  %conv1 = trunc i64 %val to i32, !dbg !346
  tail call void @x264_put_be32(ptr noundef %c, i32 noundef %conv1), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be16(ptr nocapture noundef %c, i16 noundef zeroext %val) local_unnamed_addr #1 !dbg !349 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !355, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.value(metadata i16 %val, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = lshr i16 %val, 8, !dbg !358
  %conv1 = trunc i16 %0 to i8, !dbg !359
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !360
  call void @llvm.dbg.value(metadata i8 %conv1, metadata !127, metadata !DIExpression()) #11, !dbg !360
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !362
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !362
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !362
  %d_cur.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 1, !dbg !364
  %1 = load i32, ptr %d_cur.i.i, align 8, !dbg !364, !tbaa !144
  %add.i.i = add i32 %1, 1, !dbg !365
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !136, metadata !DIExpression()) #11, !dbg !362
  %d_max.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 2, !dbg !366
  %2 = load i32, ptr %d_max.i.i, align 4, !dbg !366, !tbaa !153
  %cmp.i.i = icmp ugt i32 %add.i.i, %2, !dbg !367
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !368

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !369, !tbaa !157
  br label %if.end7.i.i, !dbg !368

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ], !dbg !370
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !370
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !371
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !372
  call void @llvm.dbg.value(metadata i32 %shl.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !370
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !373, !llvm.loop !374

while.end.i.i:                                    ; preds = %while.cond.i.i
  %3 = load ptr, ptr %c, align 8, !dbg !376, !tbaa !157
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !377
  %call.i.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i.i) #12, !dbg !378
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !137, metadata !DIExpression()) #11, !dbg !370
  %tobool.not.i.i = icmp eq ptr %call.i.i, null, !dbg !379
  br i1 %tobool.not.i.i, label %while.end.i.i.x264_put_byte.exit_crit_edge, label %if.end.i.i, !dbg !380

while.end.i.i.x264_put_byte.exit_crit_edge:       ; preds = %while.end.i.i
  %.pre = load i32, ptr %d_cur.i.i, align 8, !dbg !381, !tbaa !144
  br label %x264_put_byte.exit, !dbg !380

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !384, !tbaa !157
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !385, !tbaa !153
  %.pre27.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !386, !tbaa !144
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ], !dbg !386
  %5 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !369
  %idx.ext.i.i = zext i32 %4 to i64, !dbg !387
  %add.ptr.i.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i.i, !dbg !387
  store i8 %conv1, ptr %add.ptr.i.i, align 1, !dbg !388
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !389, !tbaa !144
  br label %x264_put_byte.exit, !dbg !390

x264_put_byte.exit:                               ; preds = %while.end.i.i.x264_put_byte.exit_crit_edge, %if.end7.i.i
  %6 = phi i32 [ %.pre, %while.end.i.i.x264_put_byte.exit_crit_edge ], [ %add.i.i, %if.end7.i.i ], !dbg !381
  %conv2 = trunc i16 %val to i8, !dbg !391
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !392
  call void @llvm.dbg.value(metadata i8 %conv2, metadata !127, metadata !DIExpression()) #11, !dbg !392
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !393
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !393
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !393
  %add.i.i6 = add i32 %6, 1, !dbg !394
  call void @llvm.dbg.value(metadata i32 %add.i.i6, metadata !136, metadata !DIExpression()) #11, !dbg !393
  %7 = load i32, ptr %d_max.i.i, align 4, !dbg !395, !tbaa !153
  %cmp.i.i8 = icmp ugt i32 %add.i.i6, %7, !dbg !396
  br i1 %cmp.i.i8, label %while.cond.i.i14, label %entry.if.end7_crit_edge.i.i10, !dbg !397

entry.if.end7_crit_edge.i.i10:                    ; preds = %x264_put_byte.exit
  %.pre.i.i9 = load ptr, ptr %c, align 8, !dbg !398, !tbaa !157
  br label %if.end7.i.i23, !dbg !397

while.cond.i.i14:                                 ; preds = %x264_put_byte.exit, %while.cond.i.i14
  %dn.0.i.i11 = phi i32 [ %shl.i.i13, %while.cond.i.i14 ], [ 16, %x264_put_byte.exit ], !dbg !399
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i11, metadata !140, metadata !DIExpression()) #11, !dbg !399
  %cmp1.i.i12 = icmp ugt i32 %add.i.i6, %dn.0.i.i11, !dbg !400
  %shl.i.i13 = shl i32 %dn.0.i.i11, 1, !dbg !401
  call void @llvm.dbg.value(metadata i32 %shl.i.i13, metadata !140, metadata !DIExpression()) #11, !dbg !399
  br i1 %cmp1.i.i12, label %while.cond.i.i14, label %while.end.i.i18, !dbg !402, !llvm.loop !403

while.end.i.i18:                                  ; preds = %while.cond.i.i14
  %8 = load ptr, ptr %c, align 8, !dbg !405, !tbaa !157
  %conv.i.i15 = zext i32 %dn.0.i.i11 to i64, !dbg !406
  %call.i.i16 = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i.i15) #12, !dbg !407
  call void @llvm.dbg.value(metadata ptr %call.i.i16, metadata !137, metadata !DIExpression()) #11, !dbg !399
  %tobool.not.i.i17 = icmp eq ptr %call.i.i16, null, !dbg !408
  br i1 %tobool.not.i.i17, label %x264_put_byte.exit24, label %if.end.i.i20, !dbg !409

if.end.i.i20:                                     ; preds = %while.end.i.i18
  store ptr %call.i.i16, ptr %c, align 8, !dbg !410, !tbaa !157
  store i32 %dn.0.i.i11, ptr %d_max.i.i, align 4, !dbg !411, !tbaa !153
  %.pre27.i.i19 = load i32, ptr %d_cur.i.i, align 8, !dbg !412, !tbaa !144
  br label %if.end7.i.i23

if.end7.i.i23:                                    ; preds = %if.end.i.i20, %entry.if.end7_crit_edge.i.i10
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i10 ], [ %.pre27.i.i19, %if.end.i.i20 ], !dbg !412
  %10 = phi ptr [ %.pre.i.i9, %entry.if.end7_crit_edge.i.i10 ], [ %call.i.i16, %if.end.i.i20 ], !dbg !398
  %idx.ext.i.i21 = zext i32 %9 to i64, !dbg !413
  %add.ptr.i.i22 = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i21, !dbg !413
  store i8 %conv2, ptr %add.ptr.i.i22, align 1, !dbg !414
  store i32 %add.i.i6, ptr %d_cur.i.i, align 8, !dbg !415, !tbaa !144
  br label %x264_put_byte.exit24, !dbg !416

x264_put_byte.exit24:                             ; preds = %while.end.i.i18, %if.end7.i.i23
  ret void, !dbg !417
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_be24(ptr nocapture noundef %c, i32 noundef %val) local_unnamed_addr #1 !dbg !418 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !420, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata i32 %val, metadata !421, metadata !DIExpression()), !dbg !422
  %shr = lshr i32 %val, 8, !dbg !423
  call void @llvm.dbg.value(metadata ptr %c, metadata !355, metadata !DIExpression()) #11, !dbg !424
  call void @llvm.dbg.value(metadata i32 %shr, metadata !356, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !424
  %0 = lshr i32 %val, 16, !dbg !426
  %conv1.i = trunc i32 %0 to i8, !dbg !426
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !427
  call void @llvm.dbg.value(metadata i8 %conv1.i, metadata !127, metadata !DIExpression()) #11, !dbg !427
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !429
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !429
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !429
  %d_cur.i.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 1, !dbg !431
  %1 = load i32, ptr %d_cur.i.i.i, align 8, !dbg !431, !tbaa !144
  %add.i.i.i = add i32 %1, 1, !dbg !432
  call void @llvm.dbg.value(metadata i32 %add.i.i.i, metadata !136, metadata !DIExpression()) #11, !dbg !429
  %d_max.i.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 2, !dbg !433
  %2 = load i32, ptr %d_max.i.i.i, align 4, !dbg !433, !tbaa !153
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %2, !dbg !434
  br i1 %cmp.i.i.i, label %while.cond.i.i.i, label %entry.if.end7_crit_edge.i.i.i, !dbg !435

entry.if.end7_crit_edge.i.i.i:                    ; preds = %entry
  %.pre.i.i.i = load ptr, ptr %c, align 8, !dbg !436, !tbaa !157
  br label %if.end7.i.i.i, !dbg !435

while.cond.i.i.i:                                 ; preds = %entry, %while.cond.i.i.i
  %dn.0.i.i.i = phi i32 [ %shl.i.i.i, %while.cond.i.i.i ], [ 16, %entry ], !dbg !437
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !437
  %cmp1.i.i.i = icmp ugt i32 %add.i.i.i, %dn.0.i.i.i, !dbg !438
  %shl.i.i.i = shl i32 %dn.0.i.i.i, 1, !dbg !439
  call void @llvm.dbg.value(metadata i32 %shl.i.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !437
  br i1 %cmp1.i.i.i, label %while.cond.i.i.i, label %while.end.i.i.i, !dbg !440, !llvm.loop !441

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %3 = load ptr, ptr %c, align 8, !dbg !443, !tbaa !157
  %conv.i.i.i = zext i32 %dn.0.i.i.i to i64, !dbg !444
  %call.i.i.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i.i.i) #12, !dbg !445
  call void @llvm.dbg.value(metadata ptr %call.i.i.i, metadata !137, metadata !DIExpression()) #11, !dbg !437
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null, !dbg !446
  br i1 %tobool.not.i.i.i, label %while.end.i.i.x264_put_byte.exit_crit_edge.i, label %if.end.i.i.i, !dbg !447

while.end.i.i.x264_put_byte.exit_crit_edge.i:     ; preds = %while.end.i.i.i
  %.pre.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !448, !tbaa !144
  br label %x264_put_byte.exit.i, !dbg !447

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  store ptr %call.i.i.i, ptr %c, align 8, !dbg !451, !tbaa !157
  store i32 %dn.0.i.i.i, ptr %d_max.i.i.i, align 4, !dbg !452, !tbaa !153
  %.pre27.i.i.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !453, !tbaa !144
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i, %entry.if.end7_crit_edge.i.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i.i ], [ %.pre27.i.i.i, %if.end.i.i.i ], !dbg !453
  %5 = phi ptr [ %.pre.i.i.i, %entry.if.end7_crit_edge.i.i.i ], [ %call.i.i.i, %if.end.i.i.i ], !dbg !436
  %idx.ext.i.i.i = zext i32 %4 to i64, !dbg !454
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i.i.i, !dbg !454
  store i8 %conv1.i, ptr %add.ptr.i.i.i, align 1, !dbg !455
  store i32 %add.i.i.i, ptr %d_cur.i.i.i, align 8, !dbg !456, !tbaa !144
  br label %x264_put_byte.exit.i, !dbg !457

x264_put_byte.exit.i:                             ; preds = %if.end7.i.i.i, %while.end.i.i.x264_put_byte.exit_crit_edge.i
  %6 = phi i32 [ %.pre.i, %while.end.i.i.x264_put_byte.exit_crit_edge.i ], [ %add.i.i.i, %if.end7.i.i.i ], !dbg !448
  %conv2.i = trunc i32 %shr to i8, !dbg !458
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !459
  call void @llvm.dbg.value(metadata i8 %conv2.i, metadata !127, metadata !DIExpression()) #11, !dbg !459
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !460
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !460
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !460
  %add.i.i6.i = add i32 %6, 1, !dbg !461
  call void @llvm.dbg.value(metadata i32 %add.i.i6.i, metadata !136, metadata !DIExpression()) #11, !dbg !460
  %7 = load i32, ptr %d_max.i.i.i, align 4, !dbg !462, !tbaa !153
  %cmp.i.i8.i = icmp ugt i32 %add.i.i6.i, %7, !dbg !463
  br i1 %cmp.i.i8.i, label %while.cond.i.i14.i, label %entry.if.end7_crit_edge.i.i10.i, !dbg !464

entry.if.end7_crit_edge.i.i10.i:                  ; preds = %x264_put_byte.exit.i
  %.pre.i.i9.i = load ptr, ptr %c, align 8, !dbg !465, !tbaa !157
  br label %if.end7.i.i23.i, !dbg !464

while.cond.i.i14.i:                               ; preds = %x264_put_byte.exit.i, %while.cond.i.i14.i
  %dn.0.i.i11.i = phi i32 [ %shl.i.i13.i, %while.cond.i.i14.i ], [ 16, %x264_put_byte.exit.i ], !dbg !466
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i11.i, metadata !140, metadata !DIExpression()) #11, !dbg !466
  %cmp1.i.i12.i = icmp ugt i32 %add.i.i6.i, %dn.0.i.i11.i, !dbg !467
  %shl.i.i13.i = shl i32 %dn.0.i.i11.i, 1, !dbg !468
  call void @llvm.dbg.value(metadata i32 %shl.i.i13.i, metadata !140, metadata !DIExpression()) #11, !dbg !466
  br i1 %cmp1.i.i12.i, label %while.cond.i.i14.i, label %while.end.i.i18.i, !dbg !469, !llvm.loop !470

while.end.i.i18.i:                                ; preds = %while.cond.i.i14.i
  %8 = load ptr, ptr %c, align 8, !dbg !472, !tbaa !157
  %conv.i.i15.i = zext i32 %dn.0.i.i11.i to i64, !dbg !473
  %call.i.i16.i = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i.i15.i) #12, !dbg !474
  call void @llvm.dbg.value(metadata ptr %call.i.i16.i, metadata !137, metadata !DIExpression()) #11, !dbg !466
  %tobool.not.i.i17.i = icmp eq ptr %call.i.i16.i, null, !dbg !475
  br i1 %tobool.not.i.i17.i, label %while.end.i.i18.i.x264_put_be16.exit_crit_edge, label %if.end.i.i20.i, !dbg !476

while.end.i.i18.i.x264_put_be16.exit_crit_edge:   ; preds = %while.end.i.i18.i
  %.pre = load i32, ptr %d_cur.i.i.i, align 8, !dbg !477, !tbaa !144
  br label %x264_put_be16.exit, !dbg !476

if.end.i.i20.i:                                   ; preds = %while.end.i.i18.i
  store ptr %call.i.i16.i, ptr %c, align 8, !dbg !480, !tbaa !157
  store i32 %dn.0.i.i11.i, ptr %d_max.i.i.i, align 4, !dbg !481, !tbaa !153
  %.pre27.i.i19.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !482, !tbaa !144
  br label %if.end7.i.i23.i

if.end7.i.i23.i:                                  ; preds = %if.end.i.i20.i, %entry.if.end7_crit_edge.i.i10.i
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i10.i ], [ %.pre27.i.i19.i, %if.end.i.i20.i ], !dbg !482
  %10 = phi ptr [ %.pre.i.i9.i, %entry.if.end7_crit_edge.i.i10.i ], [ %call.i.i16.i, %if.end.i.i20.i ], !dbg !465
  %idx.ext.i.i21.i = zext i32 %9 to i64, !dbg !483
  %add.ptr.i.i22.i = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i21.i, !dbg !483
  store i8 %conv2.i, ptr %add.ptr.i.i22.i, align 1, !dbg !484
  store i32 %add.i.i6.i, ptr %d_cur.i.i.i, align 8, !dbg !485, !tbaa !144
  br label %x264_put_be16.exit, !dbg !486

x264_put_be16.exit:                               ; preds = %while.end.i.i18.i.x264_put_be16.exit_crit_edge, %if.end7.i.i23.i
  %11 = phi i32 [ %.pre, %while.end.i.i18.i.x264_put_be16.exit_crit_edge ], [ %add.i.i6.i, %if.end7.i.i23.i ], !dbg !477
  %conv1 = trunc i32 %val to i8, !dbg !487
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !488
  call void @llvm.dbg.value(metadata i8 %conv1, metadata !127, metadata !DIExpression()) #11, !dbg !488
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !489
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !489
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !489
  %add.i.i = add i32 %11, 1, !dbg !490
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !136, metadata !DIExpression()) #11, !dbg !489
  %12 = load i32, ptr %d_max.i.i.i, align 4, !dbg !491, !tbaa !153
  %cmp.i.i = icmp ugt i32 %add.i.i, %12, !dbg !492
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !493

entry.if.end7_crit_edge.i.i:                      ; preds = %x264_put_be16.exit
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !494, !tbaa !157
  br label %if.end7.i.i, !dbg !493

while.cond.i.i:                                   ; preds = %x264_put_be16.exit, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %x264_put_be16.exit ], !dbg !495
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !495
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !496
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !497
  call void @llvm.dbg.value(metadata i32 %shl.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !495
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !498, !llvm.loop !499

while.end.i.i:                                    ; preds = %while.cond.i.i
  %13 = load ptr, ptr %c, align 8, !dbg !501, !tbaa !157
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !502
  %call.i.i = tail call ptr @realloc(ptr noundef %13, i64 noundef %conv.i.i) #12, !dbg !503
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !137, metadata !DIExpression()) #11, !dbg !495
  %tobool.not.i.i = icmp eq ptr %call.i.i, null, !dbg !504
  br i1 %tobool.not.i.i, label %x264_put_byte.exit, label %if.end.i.i, !dbg !505

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !506, !tbaa !157
  store i32 %dn.0.i.i, ptr %d_max.i.i.i, align 4, !dbg !507, !tbaa !153
  %.pre27.i.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !508, !tbaa !144
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %14 = phi i32 [ %11, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ], !dbg !508
  %15 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !494
  %idx.ext.i.i = zext i32 %14 to i64, !dbg !509
  %add.ptr.i.i = getelementptr inbounds i8, ptr %15, i64 %idx.ext.i.i, !dbg !509
  store i8 %conv1, ptr %add.ptr.i.i, align 1, !dbg !510
  store i32 %add.i.i, ptr %d_cur.i.i.i, align 8, !dbg !511, !tbaa !144
  br label %x264_put_byte.exit, !dbg !512

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  ret void, !dbg !513
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_tag(ptr nocapture noundef %c, ptr nocapture noundef readonly %tag) local_unnamed_addr #1 !dbg !514 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !520, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata ptr %tag, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load i8, ptr %tag, align 1, !dbg !523, !tbaa !524
  %tobool.not2 = icmp eq i8 %0, 0, !dbg !525
  br i1 %tobool.not2, label %while.end, label %while.body.lr.ph, !dbg !525

while.body.lr.ph:                                 ; preds = %entry
  %d_cur.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 1
  %d_max.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 2
  br label %while.body, !dbg !525

while.body:                                       ; preds = %while.body.lr.ph, %x264_put_byte.exit
  %1 = phi i8 [ %0, %while.body.lr.ph ], [ %7, %x264_put_byte.exit ]
  %tag.addr.03 = phi ptr [ %tag, %while.body.lr.ph ], [ %incdec.ptr, %x264_put_byte.exit ]
  call void @llvm.dbg.value(metadata ptr %tag.addr.03, metadata !521, metadata !DIExpression()), !dbg !522
  %incdec.ptr = getelementptr inbounds i8, ptr %tag.addr.03, i64 1, !dbg !526
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !527
  call void @llvm.dbg.value(metadata i8 %1, metadata !127, metadata !DIExpression()) #11, !dbg !527
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !529
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !529
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !529
  %2 = load i32, ptr %d_cur.i.i, align 8, !dbg !531, !tbaa !144
  %add.i.i = add i32 %2, 1, !dbg !532
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !136, metadata !DIExpression()) #11, !dbg !529
  %3 = load i32, ptr %d_max.i.i, align 4, !dbg !533, !tbaa !153
  %cmp.i.i = icmp ugt i32 %add.i.i, %3, !dbg !534
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !535

entry.if.end7_crit_edge.i.i:                      ; preds = %while.body
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !536, !tbaa !157
  br label %if.end7.i.i, !dbg !535

while.cond.i.i:                                   ; preds = %while.body, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %while.body ], !dbg !537
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !537
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !538
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !539
  call void @llvm.dbg.value(metadata i32 %shl.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !537
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !540, !llvm.loop !541

while.end.i.i:                                    ; preds = %while.cond.i.i
  %4 = load ptr, ptr %c, align 8, !dbg !543, !tbaa !157
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !544
  %call.i.i = tail call ptr @realloc(ptr noundef %4, i64 noundef %conv.i.i) #12, !dbg !545
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !137, metadata !DIExpression()) #11, !dbg !537
  %tobool.not.i.i = icmp eq ptr %call.i.i, null, !dbg !546
  br i1 %tobool.not.i.i, label %x264_put_byte.exit, label %if.end.i.i, !dbg !547

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !548, !tbaa !157
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !549, !tbaa !153
  %.pre27.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !550, !tbaa !144
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %5 = phi i32 [ %2, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ], !dbg !550
  %6 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !536
  %idx.ext.i.i = zext i32 %5 to i64, !dbg !551
  %add.ptr.i.i = getelementptr inbounds i8, ptr %6, i64 %idx.ext.i.i, !dbg !551
  store i8 %1, ptr %add.ptr.i.i, align 1, !dbg !552
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !553, !tbaa !144
  br label %x264_put_byte.exit, !dbg !554

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !521, metadata !DIExpression()), !dbg !522
  %7 = load i8, ptr %incdec.ptr, align 1, !dbg !523, !tbaa !524
  %tobool.not = icmp eq i8 %7, 0, !dbg !525
  br i1 %tobool.not, label %while.end, label %while.body, !dbg !525, !llvm.loop !555

while.end:                                        ; preds = %x264_put_byte.exit, %entry
  ret void, !dbg !557
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_amf_string(ptr nocapture noundef %c, ptr nocapture noundef readonly %str) local_unnamed_addr #1 !dbg !558 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !560, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.value(metadata ptr %str, metadata !561, metadata !DIExpression()), !dbg !563
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #13, !dbg !564
  call void @llvm.dbg.value(metadata i64 %call, metadata !562, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !563
  call void @llvm.dbg.value(metadata ptr %c, metadata !355, metadata !DIExpression()) #11, !dbg !565
  call void @llvm.dbg.value(metadata i64 %call, metadata !356, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)) #11, !dbg !565
  %0 = lshr i64 %call, 8, !dbg !567
  %conv1.i = trunc i64 %0 to i8, !dbg !567
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !568
  call void @llvm.dbg.value(metadata i8 %conv1.i, metadata !127, metadata !DIExpression()) #11, !dbg !568
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !570
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !570
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !570
  %d_cur.i.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 1, !dbg !572
  %1 = load i32, ptr %d_cur.i.i.i, align 8, !dbg !572, !tbaa !144
  %add.i.i.i = add i32 %1, 1, !dbg !573
  call void @llvm.dbg.value(metadata i32 %add.i.i.i, metadata !136, metadata !DIExpression()) #11, !dbg !570
  %d_max.i.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 2, !dbg !574
  %2 = load i32, ptr %d_max.i.i.i, align 4, !dbg !574, !tbaa !153
  %cmp.i.i.i = icmp ugt i32 %add.i.i.i, %2, !dbg !575
  br i1 %cmp.i.i.i, label %while.cond.i.i.i, label %entry.if.end7_crit_edge.i.i.i, !dbg !576

entry.if.end7_crit_edge.i.i.i:                    ; preds = %entry
  %.pre.i.i.i = load ptr, ptr %c, align 8, !dbg !577, !tbaa !157
  br label %if.end7.i.i.i, !dbg !576

while.cond.i.i.i:                                 ; preds = %entry, %while.cond.i.i.i
  %dn.0.i.i.i = phi i32 [ %shl.i.i.i, %while.cond.i.i.i ], [ 16, %entry ], !dbg !578
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !578
  %cmp1.i.i.i = icmp ugt i32 %add.i.i.i, %dn.0.i.i.i, !dbg !579
  %shl.i.i.i = shl i32 %dn.0.i.i.i, 1, !dbg !580
  call void @llvm.dbg.value(metadata i32 %shl.i.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !578
  br i1 %cmp1.i.i.i, label %while.cond.i.i.i, label %while.end.i.i.i, !dbg !581, !llvm.loop !582

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %3 = load ptr, ptr %c, align 8, !dbg !584, !tbaa !157
  %conv.i.i.i = zext i32 %dn.0.i.i.i to i64, !dbg !585
  %call.i.i.i = tail call ptr @realloc(ptr noundef %3, i64 noundef %conv.i.i.i) #12, !dbg !586
  call void @llvm.dbg.value(metadata ptr %call.i.i.i, metadata !137, metadata !DIExpression()) #11, !dbg !578
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null, !dbg !587
  br i1 %tobool.not.i.i.i, label %while.end.i.i.x264_put_byte.exit_crit_edge.i, label %if.end.i.i.i, !dbg !588

while.end.i.i.x264_put_byte.exit_crit_edge.i:     ; preds = %while.end.i.i.i
  %.pre.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !589, !tbaa !144
  br label %x264_put_byte.exit.i, !dbg !588

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  store ptr %call.i.i.i, ptr %c, align 8, !dbg !592, !tbaa !157
  store i32 %dn.0.i.i.i, ptr %d_max.i.i.i, align 4, !dbg !593, !tbaa !153
  %.pre27.i.i.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !594, !tbaa !144
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i.i, %entry.if.end7_crit_edge.i.i.i
  %4 = phi i32 [ %1, %entry.if.end7_crit_edge.i.i.i ], [ %.pre27.i.i.i, %if.end.i.i.i ], !dbg !594
  %5 = phi ptr [ %.pre.i.i.i, %entry.if.end7_crit_edge.i.i.i ], [ %call.i.i.i, %if.end.i.i.i ], !dbg !577
  %idx.ext.i.i.i = zext i32 %4 to i64, !dbg !595
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %5, i64 %idx.ext.i.i.i, !dbg !595
  store i8 %conv1.i, ptr %add.ptr.i.i.i, align 1, !dbg !596
  store i32 %add.i.i.i, ptr %d_cur.i.i.i, align 8, !dbg !597, !tbaa !144
  br label %x264_put_byte.exit.i, !dbg !598

x264_put_byte.exit.i:                             ; preds = %if.end7.i.i.i, %while.end.i.i.x264_put_byte.exit_crit_edge.i
  %6 = phi i32 [ %.pre.i, %while.end.i.i.x264_put_byte.exit_crit_edge.i ], [ %add.i.i.i, %if.end7.i.i.i ], !dbg !589
  %conv2.i = trunc i64 %call to i8, !dbg !599
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !600
  call void @llvm.dbg.value(metadata i8 %conv2.i, metadata !127, metadata !DIExpression()) #11, !dbg !600
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !601
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !601
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !601
  %add.i.i6.i = add i32 %6, 1, !dbg !602
  call void @llvm.dbg.value(metadata i32 %add.i.i6.i, metadata !136, metadata !DIExpression()) #11, !dbg !601
  %7 = load i32, ptr %d_max.i.i.i, align 4, !dbg !603, !tbaa !153
  %cmp.i.i8.i = icmp ugt i32 %add.i.i6.i, %7, !dbg !604
  br i1 %cmp.i.i8.i, label %while.cond.i.i14.i, label %entry.if.end7_crit_edge.i.i10.i, !dbg !605

entry.if.end7_crit_edge.i.i10.i:                  ; preds = %x264_put_byte.exit.i
  %.pre.i.i9.i = load ptr, ptr %c, align 8, !dbg !606, !tbaa !157
  br label %if.end7.i.i23.i, !dbg !605

while.cond.i.i14.i:                               ; preds = %x264_put_byte.exit.i, %while.cond.i.i14.i
  %dn.0.i.i11.i = phi i32 [ %shl.i.i13.i, %while.cond.i.i14.i ], [ 16, %x264_put_byte.exit.i ], !dbg !607
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i11.i, metadata !140, metadata !DIExpression()) #11, !dbg !607
  %cmp1.i.i12.i = icmp ugt i32 %add.i.i6.i, %dn.0.i.i11.i, !dbg !608
  %shl.i.i13.i = shl i32 %dn.0.i.i11.i, 1, !dbg !609
  call void @llvm.dbg.value(metadata i32 %shl.i.i13.i, metadata !140, metadata !DIExpression()) #11, !dbg !607
  br i1 %cmp1.i.i12.i, label %while.cond.i.i14.i, label %while.end.i.i18.i, !dbg !610, !llvm.loop !611

while.end.i.i18.i:                                ; preds = %while.cond.i.i14.i
  %8 = load ptr, ptr %c, align 8, !dbg !613, !tbaa !157
  %conv.i.i15.i = zext i32 %dn.0.i.i11.i to i64, !dbg !614
  %call.i.i16.i = tail call ptr @realloc(ptr noundef %8, i64 noundef %conv.i.i15.i) #12, !dbg !615
  call void @llvm.dbg.value(metadata ptr %call.i.i16.i, metadata !137, metadata !DIExpression()) #11, !dbg !607
  %tobool.not.i.i17.i = icmp eq ptr %call.i.i16.i, null, !dbg !616
  br i1 %tobool.not.i.i17.i, label %while.end.i.i18.i.x264_put_be16.exit_crit_edge, label %if.end.i.i20.i, !dbg !617

while.end.i.i18.i.x264_put_be16.exit_crit_edge:   ; preds = %while.end.i.i18.i
  %.pre = load i32, ptr %d_cur.i.i.i, align 8, !dbg !618, !tbaa !144
  br label %x264_put_be16.exit, !dbg !617

if.end.i.i20.i:                                   ; preds = %while.end.i.i18.i
  store ptr %call.i.i16.i, ptr %c, align 8, !dbg !620, !tbaa !157
  store i32 %dn.0.i.i11.i, ptr %d_max.i.i.i, align 4, !dbg !621, !tbaa !153
  %.pre27.i.i19.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !622, !tbaa !144
  br label %if.end7.i.i23.i

if.end7.i.i23.i:                                  ; preds = %if.end.i.i20.i, %entry.if.end7_crit_edge.i.i10.i
  %9 = phi i32 [ %6, %entry.if.end7_crit_edge.i.i10.i ], [ %.pre27.i.i19.i, %if.end.i.i20.i ], !dbg !622
  %10 = phi ptr [ %.pre.i.i9.i, %entry.if.end7_crit_edge.i.i10.i ], [ %call.i.i16.i, %if.end.i.i20.i ], !dbg !606
  %idx.ext.i.i21.i = zext i32 %9 to i64, !dbg !623
  %add.ptr.i.i22.i = getelementptr inbounds i8, ptr %10, i64 %idx.ext.i.i21.i, !dbg !623
  store i8 %conv2.i, ptr %add.ptr.i.i22.i, align 1, !dbg !624
  store i32 %add.i.i6.i, ptr %d_cur.i.i.i, align 8, !dbg !625, !tbaa !144
  br label %x264_put_be16.exit, !dbg !626

x264_put_be16.exit:                               ; preds = %while.end.i.i18.i.x264_put_be16.exit_crit_edge, %if.end7.i.i23.i
  %11 = phi i32 [ %.pre, %while.end.i.i18.i.x264_put_be16.exit_crit_edge ], [ %add.i.i6.i, %if.end7.i.i23.i ], !dbg !618
  %12 = trunc i64 %call to i32, !dbg !627
  %conv1 = and i32 %12, 65535, !dbg !627
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !628
  call void @llvm.dbg.value(metadata ptr %str, metadata !134, metadata !DIExpression()) #11, !dbg !628
  call void @llvm.dbg.value(metadata i32 %conv1, metadata !135, metadata !DIExpression()) #11, !dbg !628
  %add.i = add i32 %11, %conv1, !dbg !629
  call void @llvm.dbg.value(metadata i32 %add.i, metadata !136, metadata !DIExpression()) #11, !dbg !628
  %13 = load i32, ptr %d_max.i.i.i, align 4, !dbg !630, !tbaa !153
  %cmp.i = icmp ugt i32 %add.i, %13, !dbg !631
  br i1 %cmp.i, label %while.cond.i, label %entry.if.end7_crit_edge.i, !dbg !632

entry.if.end7_crit_edge.i:                        ; preds = %x264_put_be16.exit
  %.pre.i6 = load ptr, ptr %c, align 8, !dbg !633, !tbaa !157
  br label %if.end7.i, !dbg !632

while.cond.i:                                     ; preds = %x264_put_be16.exit, %while.cond.i
  %dn.0.i = phi i32 [ %shl.i, %while.cond.i ], [ 16, %x264_put_be16.exit ], !dbg !634
  call void @llvm.dbg.value(metadata i32 %dn.0.i, metadata !140, metadata !DIExpression()) #11, !dbg !634
  %cmp1.i = icmp ugt i32 %add.i, %dn.0.i, !dbg !635
  %shl.i = shl i32 %dn.0.i, 1, !dbg !636
  call void @llvm.dbg.value(metadata i32 %shl.i, metadata !140, metadata !DIExpression()) #11, !dbg !634
  br i1 %cmp1.i, label %while.cond.i, label %while.end.i, !dbg !637, !llvm.loop !638

while.end.i:                                      ; preds = %while.cond.i
  %14 = load ptr, ptr %c, align 8, !dbg !640, !tbaa !157
  %conv.i = zext i32 %dn.0.i to i64, !dbg !641
  %call.i = tail call ptr @realloc(ptr noundef %14, i64 noundef %conv.i) #12, !dbg !642
  call void @llvm.dbg.value(metadata ptr %call.i, metadata !137, metadata !DIExpression()) #11, !dbg !634
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !643
  br i1 %tobool.not.i, label %flv_append_data.exit, label %if.end.i, !dbg !644

if.end.i:                                         ; preds = %while.end.i
  store ptr %call.i, ptr %c, align 8, !dbg !645, !tbaa !157
  store i32 %dn.0.i, ptr %d_max.i.i.i, align 4, !dbg !646, !tbaa !153
  %.pre27.i = load i32, ptr %d_cur.i.i.i, align 8, !dbg !647, !tbaa !144
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %entry.if.end7_crit_edge.i
  %15 = phi i32 [ %11, %entry.if.end7_crit_edge.i ], [ %.pre27.i, %if.end.i ], !dbg !647
  %16 = phi ptr [ %.pre.i6, %entry.if.end7_crit_edge.i ], [ %call.i, %if.end.i ], !dbg !633
  %idx.ext.i = zext i32 %15 to i64, !dbg !648
  %add.ptr.i = getelementptr inbounds i8, ptr %16, i64 %idx.ext.i, !dbg !648
  %conv10.i = zext i32 %conv1 to i64, !dbg !649
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr.i, ptr align 1 %str, i64 %conv10.i, i1 false) #11, !dbg !650
  store i32 %add.i, ptr %d_cur.i.i.i, align 8, !dbg !651, !tbaa !144
  br label %flv_append_data.exit, !dbg !652

flv_append_data.exit:                             ; preds = %while.end.i, %if.end7.i
  ret void, !dbg !653
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_put_amf_double(ptr nocapture noundef %c, double noundef %d) local_unnamed_addr #1 !dbg !654 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !658, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata double %d, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata ptr %c, metadata !126, metadata !DIExpression()) #11, !dbg !661
  call void @llvm.dbg.value(metadata i8 0, metadata !127, metadata !DIExpression()) #11, !dbg !661
  call void @llvm.dbg.value(metadata ptr %c, metadata !129, metadata !DIExpression()) #11, !dbg !663
  call void @llvm.dbg.value(metadata ptr undef, metadata !134, metadata !DIExpression()) #11, !dbg !663
  call void @llvm.dbg.value(metadata i32 1, metadata !135, metadata !DIExpression()) #11, !dbg !663
  %d_cur.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 1, !dbg !665
  %0 = load i32, ptr %d_cur.i.i, align 8, !dbg !665, !tbaa !144
  %add.i.i = add i32 %0, 1, !dbg !666
  call void @llvm.dbg.value(metadata i32 %add.i.i, metadata !136, metadata !DIExpression()) #11, !dbg !663
  %d_max.i.i = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 2, !dbg !667
  %1 = load i32, ptr %d_max.i.i, align 4, !dbg !667, !tbaa !153
  %cmp.i.i = icmp ugt i32 %add.i.i, %1, !dbg !668
  br i1 %cmp.i.i, label %while.cond.i.i, label %entry.if.end7_crit_edge.i.i, !dbg !669

entry.if.end7_crit_edge.i.i:                      ; preds = %entry
  %.pre.i.i = load ptr, ptr %c, align 8, !dbg !670, !tbaa !157
  br label %if.end7.i.i, !dbg !669

while.cond.i.i:                                   ; preds = %entry, %while.cond.i.i
  %dn.0.i.i = phi i32 [ %shl.i.i, %while.cond.i.i ], [ 16, %entry ], !dbg !671
  call void @llvm.dbg.value(metadata i32 %dn.0.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !671
  %cmp1.i.i = icmp ugt i32 %add.i.i, %dn.0.i.i, !dbg !672
  %shl.i.i = shl i32 %dn.0.i.i, 1, !dbg !673
  call void @llvm.dbg.value(metadata i32 %shl.i.i, metadata !140, metadata !DIExpression()) #11, !dbg !671
  br i1 %cmp1.i.i, label %while.cond.i.i, label %while.end.i.i, !dbg !674, !llvm.loop !675

while.end.i.i:                                    ; preds = %while.cond.i.i
  %2 = load ptr, ptr %c, align 8, !dbg !677, !tbaa !157
  %conv.i.i = zext i32 %dn.0.i.i to i64, !dbg !678
  %call.i.i = tail call ptr @realloc(ptr noundef %2, i64 noundef %conv.i.i) #12, !dbg !679
  call void @llvm.dbg.value(metadata ptr %call.i.i, metadata !137, metadata !DIExpression()) #11, !dbg !671
  %tobool.not.i.i = icmp eq ptr %call.i.i, null, !dbg !680
  br i1 %tobool.not.i.i, label %x264_put_byte.exit, label %if.end.i.i, !dbg !681

if.end.i.i:                                       ; preds = %while.end.i.i
  store ptr %call.i.i, ptr %c, align 8, !dbg !682, !tbaa !157
  store i32 %dn.0.i.i, ptr %d_max.i.i, align 4, !dbg !683, !tbaa !153
  %.pre27.i.i = load i32, ptr %d_cur.i.i, align 8, !dbg !684, !tbaa !144
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i, %entry.if.end7_crit_edge.i.i
  %3 = phi i32 [ %0, %entry.if.end7_crit_edge.i.i ], [ %.pre27.i.i, %if.end.i.i ], !dbg !684
  %4 = phi ptr [ %.pre.i.i, %entry.if.end7_crit_edge.i.i ], [ %call.i.i, %if.end.i.i ], !dbg !670
  %idx.ext.i.i = zext i32 %3 to i64, !dbg !685
  %add.ptr.i.i = getelementptr inbounds i8, ptr %4, i64 %idx.ext.i.i, !dbg !685
  store i8 0, ptr %add.ptr.i.i, align 1, !dbg !686
  store i32 %add.i.i, ptr %d_cur.i.i, align 8, !dbg !687, !tbaa !144
  br label %x264_put_byte.exit, !dbg !688

x264_put_byte.exit:                               ; preds = %while.end.i.i, %if.end7.i.i
  call void @llvm.dbg.value(metadata double %d, metadata !43, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.value(metadata double %d, metadata !44, metadata !DIExpression()), !dbg !689
  %5 = bitcast double %d to i64, !dbg !691
  call void @llvm.dbg.value(metadata ptr %c, metadata !340, metadata !DIExpression()) #11, !dbg !692
  call void @llvm.dbg.value(metadata i64 %5, metadata !341, metadata !DIExpression()) #11, !dbg !692
  %shr.i = lshr i64 %5, 32, !dbg !694
  %conv.i = trunc i64 %shr.i to i32, !dbg !695
  tail call void @x264_put_be32(ptr noundef nonnull %c, i32 noundef %conv.i) #11, !dbg !696
  %conv1.i = trunc i64 %5 to i32, !dbg !697
  tail call void @x264_put_be32(ptr noundef nonnull %c, i32 noundef %conv1.i) #11, !dbg !698
  ret void, !dbg !699
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @flv_create_writer(ptr nocapture noundef readonly %filename) local_unnamed_addr #1 !dbg !700 {
entry:
  call void @llvm.dbg.value(metadata ptr %filename, metadata !704, metadata !DIExpression()), !dbg !706
  %calloc = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32), !dbg !707
  call void @llvm.dbg.value(metadata ptr %calloc, metadata !705, metadata !DIExpression()), !dbg !706
  %tobool.not = icmp eq ptr %calloc, null, !dbg !708
  br i1 %tobool.not, label %cleanup, label %if.end, !dbg !710

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %filename, ptr noundef nonnull dereferenceable(2) @.str) #13, !dbg !711
  %tobool2.not = icmp eq i32 %call1, 0, !dbg !711
  br i1 %tobool2.not, label %if.then3, label %if.else, !dbg !713

if.then3:                                         ; preds = %if.end
  %0 = load ptr, ptr @stdout, align 8, !dbg !714, !tbaa !715
  br label %if.end6, !dbg !716

if.else:                                          ; preds = %if.end
  %call4 = tail call ptr @fopen64(ptr noundef %filename, ptr noundef nonnull @.str.1), !dbg !717
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %call4.sink = phi ptr [ %0, %if.then3 ], [ %call4, %if.else ], !dbg !718
  %1 = getelementptr inbounds %struct.flv_buffer, ptr %calloc, i64 0, i32 3, !dbg !719
  store ptr %call4.sink, ptr %1, align 8, !dbg !720
  %tobool8.not = icmp eq ptr %call4.sink, null, !dbg !721
  br i1 %tobool8.not, label %if.then9, label %cleanup, !dbg !723

if.then9:                                         ; preds = %if.end6
  tail call void @free(ptr noundef nonnull %calloc) #11, !dbg !724
  br label %cleanup, !dbg !726

cleanup:                                          ; preds = %if.end6, %entry, %if.then9
  %retval.0 = phi ptr [ null, %if.then9 ], [ null, %entry ], [ %calloc, %if.end6 ], !dbg !706
  ret ptr %retval.0, !dbg !727
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1)
declare noalias noundef ptr @realloc(ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @rewrite_amf_be24(ptr nocapture noundef readonly %c, i32 noundef %length, i32 noundef %start) local_unnamed_addr #7 !dbg !728 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !732, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i32 %length, metadata !733, metadata !DIExpression()), !dbg !735
  call void @llvm.dbg.value(metadata i32 %start, metadata !734, metadata !DIExpression()), !dbg !735
  %shr = lshr i32 %length, 16, !dbg !736
  %conv = trunc i32 %shr to i8, !dbg !737
  %0 = load ptr, ptr %c, align 8, !dbg !738, !tbaa !157
  %idx.ext = zext i32 %start to i64, !dbg !739
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %idx.ext, !dbg !739
  store i8 %conv, ptr %add.ptr, align 1, !dbg !740, !tbaa !524
  %shr2 = lshr i32 %length, 8, !dbg !741
  %conv3 = trunc i32 %shr2 to i8, !dbg !742
  %1 = load ptr, ptr %c, align 8, !dbg !743, !tbaa !157
  %add.ptr6 = getelementptr inbounds i8, ptr %1, i64 %idx.ext, !dbg !744
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr6, i64 1, !dbg !745
  store i8 %conv3, ptr %add.ptr7, align 1, !dbg !746, !tbaa !524
  %conv9 = trunc i32 %length to i8, !dbg !747
  %2 = load ptr, ptr %c, align 8, !dbg !748, !tbaa !157
  %add.ptr12 = getelementptr inbounds i8, ptr %2, i64 %idx.ext, !dbg !749
  %add.ptr13 = getelementptr inbounds i8, ptr %add.ptr12, i64 2, !dbg !750
  store i8 %conv9, ptr %add.ptr13, align 1, !dbg !751, !tbaa !524
  ret void, !dbg !752
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @flv_flush_data(ptr nocapture noundef %c) local_unnamed_addr #8 !dbg !753 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !757, metadata !DIExpression()), !dbg !758
  %d_cur = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 1, !dbg !759
  %0 = load i32, ptr %d_cur, align 8, !dbg !759, !tbaa !144
  %tobool.not = icmp eq i32 %0, 0, !dbg !761
  br i1 %tobool.not, label %return, label %if.end, !dbg !762

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %c, align 8, !dbg !763, !tbaa !157
  %conv = zext i32 %0 to i64, !dbg !765
  %fp = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 3, !dbg !766
  %2 = load ptr, ptr %fp, align 8, !dbg !766, !tbaa !767
  %call = tail call i64 @fwrite(ptr noundef %1, i64 noundef %conv, i64 noundef 1, ptr noundef %2), !dbg !768
  %cmp.not = icmp eq i64 %call, 1, !dbg !769
  br i1 %cmp.not, label %if.end4, label %return, !dbg !770

if.end4:                                          ; preds = %if.end
  %3 = load i32, ptr %d_cur, align 8, !dbg !771, !tbaa !144
  %conv6 = zext i32 %3 to i64, !dbg !772
  %d_total = getelementptr inbounds %struct.flv_buffer, ptr %c, i64 0, i32 4, !dbg !773
  %4 = load i64, ptr %d_total, align 8, !dbg !774, !tbaa !775
  %add = add i64 %4, %conv6, !dbg !774
  store i64 %add, ptr %d_total, align 8, !dbg !774, !tbaa !775
  store i32 0, ptr %d_cur, align 8, !dbg !776, !tbaa !144
  br label %return, !dbg !777

return:                                           ; preds = %if.end, %entry, %if.end4
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %entry ], [ -1, %if.end ], !dbg !758
  ret i32 %retval.0, !dbg !778
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: inaccessiblememonly nofree nounwind willreturn allocsize(0,1)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblememonly nofree nounwind willreturn allocsize(0,1) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(1) }
attributes #13 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !20, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/output/flv_bytestream.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "754853b2670cdf5b3e2e77d5a393aff1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 92, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/flv_bytestream.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "7a2361cbd7a5379baf9a3e8d1b18ee49")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!7 = !DIEnumerator(name: "AMF_DATA_TYPE_NUMBER", value: 0)
!8 = !DIEnumerator(name: "AMF_DATA_TYPE_BOOL", value: 1)
!9 = !DIEnumerator(name: "AMF_DATA_TYPE_STRING", value: 2)
!10 = !DIEnumerator(name: "AMF_DATA_TYPE_OBJECT", value: 3)
!11 = !DIEnumerator(name: "AMF_DATA_TYPE_NULL", value: 5)
!12 = !DIEnumerator(name: "AMF_DATA_TYPE_UNDEFINED", value: 6)
!13 = !DIEnumerator(name: "AMF_DATA_TYPE_REFERENCE", value: 7)
!14 = !DIEnumerator(name: "AMF_DATA_TYPE_MIXEDARRAY", value: 8)
!15 = !DIEnumerator(name: "AMF_DATA_TYPE_OBJECT_END", value: 9)
!16 = !DIEnumerator(name: "AMF_DATA_TYPE_ARRAY", value: 10)
!17 = !DIEnumerator(name: "AMF_DATA_TYPE_DATE", value: 11)
!18 = !DIEnumerator(name: "AMF_DATA_TYPE_LONG_STRING", value: 12)
!19 = !DIEnumerator(name: "AMF_DATA_TYPE_UNSUPPORTED", value: 13)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !23, line: 24, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !25, line: 38, baseType: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!26 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!27 = !{i32 7, !"Dwarf Version", i32 5}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!34 = distinct !DISubprogram(name: "dbl2int", scope: !35, file: !35, line: 24, type: !36, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!35 = !DIFile(filename: "apps/525.x264_r/src/x264_src/output/flv_bytestream.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "754853b2670cdf5b3e2e77d5a393aff1")
!36 = !DISubroutineType(types: !37)
!37 = !{!38, !41}
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !23, line: 27, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !25, line: 45, baseType: !40)
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!42 = !{!43, !44}
!43 = !DILocalVariable(name: "value", arg: 1, scope: !34, file: !35, line: 24, type: !41)
!44 = !DILocalVariable(name: "cvrt", scope: !34, file: !35, line: 31, type: !45)
!45 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "dbl2int_cvrt", scope: !34, file: !35, line: 28, size: 64, elements: !46)
!46 = !{!47, !48}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !45, file: !35, line: 29, baseType: !41, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !45, file: !35, line: 30, baseType: !38, size: 64)
!49 = !DILocation(line: 0, scope: !34)
!50 = !DILocation(line: 33, column: 16, scope: !34)
!51 = !DILocation(line: 33, column: 4, scope: !34)
!52 = distinct !DISubprogram(name: "x264_put_byte", scope: !35, file: !35, line: 41, type: !53, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !22}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "flv_buffer", file: !4, line: 116, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flv_buffer", file: !4, line: 109, size: 256, elements: !58)
!58 = !{!59, !60, !61, !62, !124}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !57, file: !4, line: 111, baseType: !21, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "d_cur", scope: !57, file: !4, line: 112, baseType: !5, size: 32, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "d_max", scope: !57, file: !4, line: 113, baseType: !5, size: 32, offset: 96)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !57, file: !4, line: 114, baseType: !63, size: 64, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !65, line: 7, baseType: !66)
!65 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !67, line: 49, size: 1728, elements: !68)
!67 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!68 = !{!69, !71, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !87, !89, !90, !91, !94, !96, !98, !102, !105, !107, !110, !113, !114, !116, !119, !120}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !66, file: !67, line: 51, baseType: !70, size: 32)
!70 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !66, file: !67, line: 54, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !66, file: !67, line: 55, baseType: !72, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !66, file: !67, line: 56, baseType: !72, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !66, file: !67, line: 57, baseType: !72, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !66, file: !67, line: 58, baseType: !72, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !66, file: !67, line: 59, baseType: !72, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !66, file: !67, line: 60, baseType: !72, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !66, file: !67, line: 61, baseType: !72, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !66, file: !67, line: 64, baseType: !72, size: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !66, file: !67, line: 65, baseType: !72, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !66, file: !67, line: 66, baseType: !72, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !66, file: !67, line: 68, baseType: !85, size: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !67, line: 36, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !66, file: !67, line: 70, baseType: !88, size: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !66, file: !67, line: 72, baseType: !70, size: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !66, file: !67, line: 73, baseType: !70, size: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !66, file: !67, line: 74, baseType: !92, size: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !25, line: 152, baseType: !93)
!93 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !66, file: !67, line: 77, baseType: !95, size: 16, offset: 1024)
!95 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !66, file: !67, line: 78, baseType: !97, size: 8, offset: 1040)
!97 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !66, file: !67, line: 79, baseType: !99, size: 8, offset: 1048)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !66, file: !67, line: 81, baseType: !103, size: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !67, line: 43, baseType: null)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !66, file: !67, line: 89, baseType: !106, size: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !25, line: 153, baseType: !93)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !66, file: !67, line: 91, baseType: !108, size: 64, offset: 1216)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !67, line: 37, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !66, file: !67, line: 92, baseType: !111, size: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !67, line: 38, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !66, file: !67, line: 93, baseType: !88, size: 64, offset: 1344)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !66, file: !67, line: 94, baseType: !115, size: 64, offset: 1408)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !66, file: !67, line: 95, baseType: !117, size: 64, offset: 1472)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !40)
!118 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !66, file: !67, line: 96, baseType: !70, size: 32, offset: 1536)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !66, file: !67, line: 98, baseType: !121, size: 160, offset: 1568)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 160, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 20)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "d_total", scope: !57, file: !4, line: 115, baseType: !38, size: 64, offset: 192)
!125 = !{!126, !127}
!126 = !DILocalVariable(name: "c", arg: 1, scope: !52, file: !35, line: 41, type: !55)
!127 = !DILocalVariable(name: "b", arg: 2, scope: !52, file: !35, line: 41, type: !22)
!128 = !DILocation(line: 0, scope: !52)
!129 = !DILocalVariable(name: "c", arg: 1, scope: !130, file: !35, line: 114, type: !55)
!130 = distinct !DISubprogram(name: "flv_append_data", scope: !35, file: !35, line: 114, type: !131, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!70, !55, !21, !5}
!133 = !{!129, !134, !135, !136, !137, !140}
!134 = !DILocalVariable(name: "data", arg: 2, scope: !130, file: !35, line: 114, type: !21)
!135 = !DILocalVariable(name: "size", arg: 3, scope: !130, file: !35, line: 114, type: !5)
!136 = !DILocalVariable(name: "ns", scope: !130, file: !35, line: 116, type: !5)
!137 = !DILocalVariable(name: "dp", scope: !138, file: !35, line: 120, type: !115)
!138 = distinct !DILexicalBlock(scope: !139, file: !35, line: 119, column: 5)
!139 = distinct !DILexicalBlock(scope: !130, file: !35, line: 118, column: 9)
!140 = !DILocalVariable(name: "dn", scope: !138, file: !35, line: 121, type: !5)
!141 = !DILocation(line: 0, scope: !130, inlinedAt: !142)
!142 = distinct !DILocation(line: 43, column: 5, scope: !52)
!143 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !142)
!144 = !{!145, !149, i64 8}
!145 = !{!"flv_buffer", !146, i64 0, !149, i64 8, !149, i64 12, !146, i64 16, !150, i64 24}
!146 = !{!"any pointer", !147, i64 0}
!147 = !{!"omnipotent char", !148, i64 0}
!148 = !{!"Simple C/C++ TBAA"}
!149 = !{!"int", !147, i64 0}
!150 = !{!"long", !147, i64 0}
!151 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !142)
!152 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !142)
!153 = !{!145, !149, i64 12}
!154 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !142)
!155 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !142)
!156 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !142)
!157 = !{!145, !146, i64 0}
!158 = !DILocation(line: 0, scope: !138, inlinedAt: !142)
!159 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !142)
!160 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !142)
!161 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !142)
!162 = distinct !{!162, !161, !163, !164, !165}
!163 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !142)
!164 = !{!"llvm.loop.mustprogress"}
!165 = !{!"llvm.loop.unroll.disable"}
!166 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !142)
!167 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !142)
!168 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !142)
!169 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !142)
!170 = distinct !DILexicalBlock(scope: !138, file: !35, line: 126, column: 13)
!171 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !142)
!172 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !142)
!173 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !142)
!174 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !142)
!175 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !142)
!176 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !142)
!177 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !142)
!178 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !142)
!179 = !DILocation(line: 44, column: 1, scope: !52)
!180 = !DILocation(line: 0, scope: !130)
!181 = !DILocation(line: 116, column: 22, scope: !130)
!182 = !DILocation(line: 116, column: 28, scope: !130)
!183 = !DILocation(line: 118, column: 17, scope: !139)
!184 = !DILocation(line: 118, column: 12, scope: !139)
!185 = !DILocation(line: 118, column: 9, scope: !130)
!186 = !DILocation(line: 133, column: 16, scope: !130)
!187 = !DILocation(line: 0, scope: !138)
!188 = !DILocation(line: 122, column: 19, scope: !138)
!189 = !DILocation(line: 123, column: 16, scope: !138)
!190 = !DILocation(line: 122, column: 9, scope: !138)
!191 = distinct !{!191, !190, !192, !164, !165}
!192 = !DILocation(line: 123, column: 20, scope: !138)
!193 = !DILocation(line: 125, column: 26, scope: !138)
!194 = !DILocation(line: 125, column: 32, scope: !138)
!195 = !DILocation(line: 125, column: 14, scope: !138)
!196 = !DILocation(line: 126, column: 14, scope: !170)
!197 = !DILocation(line: 126, column: 13, scope: !138)
!198 = !DILocation(line: 129, column: 17, scope: !138)
!199 = !DILocation(line: 130, column: 18, scope: !138)
!200 = !DILocation(line: 133, column: 26, scope: !130)
!201 = !DILocation(line: 133, column: 21, scope: !130)
!202 = !DILocation(line: 133, column: 39, scope: !130)
!203 = !DILocation(line: 133, column: 5, scope: !130)
!204 = !DILocation(line: 135, column: 14, scope: !130)
!205 = !DILocation(line: 137, column: 5, scope: !130)
!206 = !DILocation(line: 138, column: 1, scope: !130)
!207 = distinct !DISubprogram(name: "x264_put_be32", scope: !35, file: !35, line: 46, type: !208, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !212)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !55, !210}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 26, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 42, baseType: !5)
!212 = !{!213, !214}
!213 = !DILocalVariable(name: "c", arg: 1, scope: !207, file: !35, line: 46, type: !55)
!214 = !DILocalVariable(name: "val", arg: 2, scope: !207, file: !35, line: 46, type: !210)
!215 = !DILocation(line: 0, scope: !207)
!216 = !DILocation(line: 48, column: 27, scope: !207)
!217 = !DILocation(line: 48, column: 23, scope: !207)
!218 = !DILocation(line: 0, scope: !52, inlinedAt: !219)
!219 = distinct !DILocation(line: 48, column: 5, scope: !207)
!220 = !DILocation(line: 0, scope: !130, inlinedAt: !221)
!221 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !219)
!222 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !221)
!223 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !221)
!224 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !221)
!225 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !221)
!226 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !221)
!227 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !221)
!228 = !DILocation(line: 0, scope: !138, inlinedAt: !221)
!229 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !221)
!230 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !221)
!231 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !221)
!232 = distinct !{!232, !231, !233, !164, !165}
!233 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !221)
!234 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !221)
!235 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !221)
!236 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !221)
!237 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !221)
!238 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !221)
!239 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !240)
!240 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !241)
!241 = distinct !DILocation(line: 49, column: 5, scope: !207)
!242 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !221)
!243 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !221)
!244 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !221)
!245 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !221)
!246 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !221)
!247 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !221)
!248 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !221)
!249 = !DILocation(line: 49, column: 27, scope: !207)
!250 = !DILocation(line: 49, column: 23, scope: !207)
!251 = !DILocation(line: 0, scope: !52, inlinedAt: !241)
!252 = !DILocation(line: 0, scope: !130, inlinedAt: !240)
!253 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !240)
!254 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !240)
!255 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !240)
!256 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !240)
!257 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !240)
!258 = !DILocation(line: 0, scope: !138, inlinedAt: !240)
!259 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !240)
!260 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !240)
!261 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !240)
!262 = distinct !{!262, !261, !263, !164, !165}
!263 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !240)
!264 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !240)
!265 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !240)
!266 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !240)
!267 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !240)
!268 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !240)
!269 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !270)
!270 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !271)
!271 = distinct !DILocation(line: 50, column: 5, scope: !207)
!272 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !240)
!273 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !240)
!274 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !240)
!275 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !240)
!276 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !240)
!277 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !240)
!278 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !240)
!279 = !DILocation(line: 50, column: 27, scope: !207)
!280 = !DILocation(line: 50, column: 23, scope: !207)
!281 = !DILocation(line: 0, scope: !52, inlinedAt: !271)
!282 = !DILocation(line: 0, scope: !130, inlinedAt: !270)
!283 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !270)
!284 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !270)
!285 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !270)
!286 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !270)
!287 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !270)
!288 = !DILocation(line: 0, scope: !138, inlinedAt: !270)
!289 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !270)
!290 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !270)
!291 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !270)
!292 = distinct !{!292, !291, !293, !164, !165}
!293 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !270)
!294 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !270)
!295 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !270)
!296 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !270)
!297 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !270)
!298 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !270)
!299 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !300)
!300 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !301)
!301 = distinct !DILocation(line: 51, column: 5, scope: !207)
!302 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !270)
!303 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !270)
!304 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !270)
!305 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !270)
!306 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !270)
!307 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !270)
!308 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !270)
!309 = !DILocation(line: 51, column: 23, scope: !207)
!310 = !DILocation(line: 0, scope: !52, inlinedAt: !301)
!311 = !DILocation(line: 0, scope: !130, inlinedAt: !300)
!312 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !300)
!313 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !300)
!314 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !300)
!315 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !300)
!316 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !300)
!317 = !DILocation(line: 0, scope: !138, inlinedAt: !300)
!318 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !300)
!319 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !300)
!320 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !300)
!321 = distinct !{!321, !320, !322, !164, !165}
!322 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !300)
!323 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !300)
!324 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !300)
!325 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !300)
!326 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !300)
!327 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !300)
!328 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !300)
!329 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !300)
!330 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !300)
!331 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !300)
!332 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !300)
!333 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !300)
!334 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !300)
!335 = !DILocation(line: 52, column: 1, scope: !207)
!336 = distinct !DISubprogram(name: "x264_put_be64", scope: !35, file: !35, line: 54, type: !337, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !339)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !55, !38}
!339 = !{!340, !341}
!340 = !DILocalVariable(name: "c", arg: 1, scope: !336, file: !35, line: 54, type: !55)
!341 = !DILocalVariable(name: "val", arg: 2, scope: !336, file: !35, line: 54, type: !38)
!342 = !DILocation(line: 0, scope: !336)
!343 = !DILocation(line: 56, column: 27, scope: !336)
!344 = !DILocation(line: 56, column: 23, scope: !336)
!345 = !DILocation(line: 56, column: 5, scope: !336)
!346 = !DILocation(line: 57, column: 23, scope: !336)
!347 = !DILocation(line: 57, column: 5, scope: !336)
!348 = !DILocation(line: 58, column: 1, scope: !336)
!349 = distinct !DISubprogram(name: "x264_put_be16", scope: !35, file: !35, line: 60, type: !350, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !354)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !55, !352}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !23, line: 25, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !25, line: 40, baseType: !95)
!354 = !{!355, !356}
!355 = !DILocalVariable(name: "c", arg: 1, scope: !349, file: !35, line: 60, type: !55)
!356 = !DILocalVariable(name: "val", arg: 2, scope: !349, file: !35, line: 60, type: !352)
!357 = !DILocation(line: 0, scope: !349)
!358 = !DILocation(line: 62, column: 27, scope: !349)
!359 = !DILocation(line: 62, column: 23, scope: !349)
!360 = !DILocation(line: 0, scope: !52, inlinedAt: !361)
!361 = distinct !DILocation(line: 62, column: 5, scope: !349)
!362 = !DILocation(line: 0, scope: !130, inlinedAt: !363)
!363 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !361)
!364 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !363)
!365 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !363)
!366 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !363)
!367 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !363)
!368 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !363)
!369 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !363)
!370 = !DILocation(line: 0, scope: !138, inlinedAt: !363)
!371 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !363)
!372 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !363)
!373 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !363)
!374 = distinct !{!374, !373, !375, !164, !165}
!375 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !363)
!376 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !363)
!377 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !363)
!378 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !363)
!379 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !363)
!380 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !363)
!381 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !382)
!382 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !383)
!383 = distinct !DILocation(line: 63, column: 5, scope: !349)
!384 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !363)
!385 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !363)
!386 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !363)
!387 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !363)
!388 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !363)
!389 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !363)
!390 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !363)
!391 = !DILocation(line: 63, column: 23, scope: !349)
!392 = !DILocation(line: 0, scope: !52, inlinedAt: !383)
!393 = !DILocation(line: 0, scope: !130, inlinedAt: !382)
!394 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !382)
!395 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !382)
!396 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !382)
!397 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !382)
!398 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !382)
!399 = !DILocation(line: 0, scope: !138, inlinedAt: !382)
!400 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !382)
!401 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !382)
!402 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !382)
!403 = distinct !{!403, !402, !404, !164, !165}
!404 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !382)
!405 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !382)
!406 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !382)
!407 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !382)
!408 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !382)
!409 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !382)
!410 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !382)
!411 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !382)
!412 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !382)
!413 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !382)
!414 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !382)
!415 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !382)
!416 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !382)
!417 = !DILocation(line: 64, column: 1, scope: !349)
!418 = distinct !DISubprogram(name: "x264_put_be24", scope: !35, file: !35, line: 66, type: !208, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !419)
!419 = !{!420, !421}
!420 = !DILocalVariable(name: "c", arg: 1, scope: !418, file: !35, line: 66, type: !55)
!421 = !DILocalVariable(name: "val", arg: 2, scope: !418, file: !35, line: 66, type: !210)
!422 = !DILocation(line: 0, scope: !418)
!423 = !DILocation(line: 68, column: 27, scope: !418)
!424 = !DILocation(line: 0, scope: !349, inlinedAt: !425)
!425 = distinct !DILocation(line: 68, column: 5, scope: !418)
!426 = !DILocation(line: 62, column: 23, scope: !349, inlinedAt: !425)
!427 = !DILocation(line: 0, scope: !52, inlinedAt: !428)
!428 = distinct !DILocation(line: 62, column: 5, scope: !349, inlinedAt: !425)
!429 = !DILocation(line: 0, scope: !130, inlinedAt: !430)
!430 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !428)
!431 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !430)
!432 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !430)
!433 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !430)
!434 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !430)
!435 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !430)
!436 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !430)
!437 = !DILocation(line: 0, scope: !138, inlinedAt: !430)
!438 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !430)
!439 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !430)
!440 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !430)
!441 = distinct !{!441, !440, !442, !164, !165}
!442 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !430)
!443 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !430)
!444 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !430)
!445 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !430)
!446 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !430)
!447 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !430)
!448 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !449)
!449 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !450)
!450 = distinct !DILocation(line: 63, column: 5, scope: !349, inlinedAt: !425)
!451 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !430)
!452 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !430)
!453 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !430)
!454 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !430)
!455 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !430)
!456 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !430)
!457 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !430)
!458 = !DILocation(line: 63, column: 23, scope: !349, inlinedAt: !425)
!459 = !DILocation(line: 0, scope: !52, inlinedAt: !450)
!460 = !DILocation(line: 0, scope: !130, inlinedAt: !449)
!461 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !449)
!462 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !449)
!463 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !449)
!464 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !449)
!465 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !449)
!466 = !DILocation(line: 0, scope: !138, inlinedAt: !449)
!467 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !449)
!468 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !449)
!469 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !449)
!470 = distinct !{!470, !469, !471, !164, !165}
!471 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !449)
!472 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !449)
!473 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !449)
!474 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !449)
!475 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !449)
!476 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !449)
!477 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !478)
!478 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !479)
!479 = distinct !DILocation(line: 69, column: 5, scope: !418)
!480 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !449)
!481 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !449)
!482 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !449)
!483 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !449)
!484 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !449)
!485 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !449)
!486 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !449)
!487 = !DILocation(line: 69, column: 23, scope: !418)
!488 = !DILocation(line: 0, scope: !52, inlinedAt: !479)
!489 = !DILocation(line: 0, scope: !130, inlinedAt: !478)
!490 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !478)
!491 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !478)
!492 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !478)
!493 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !478)
!494 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !478)
!495 = !DILocation(line: 0, scope: !138, inlinedAt: !478)
!496 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !478)
!497 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !478)
!498 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !478)
!499 = distinct !{!499, !498, !500, !164, !165}
!500 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !478)
!501 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !478)
!502 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !478)
!503 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !478)
!504 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !478)
!505 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !478)
!506 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !478)
!507 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !478)
!508 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !478)
!509 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !478)
!510 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !478)
!511 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !478)
!512 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !478)
!513 = !DILocation(line: 70, column: 1, scope: !418)
!514 = distinct !DISubprogram(name: "x264_put_tag", scope: !35, file: !35, line: 72, type: !515, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !519)
!515 = !DISubroutineType(types: !516)
!516 = !{null, !55, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!519 = !{!520, !521}
!520 = !DILocalVariable(name: "c", arg: 1, scope: !514, file: !35, line: 72, type: !55)
!521 = !DILocalVariable(name: "tag", arg: 2, scope: !514, file: !35, line: 72, type: !517)
!522 = !DILocation(line: 0, scope: !514)
!523 = !DILocation(line: 74, column: 12, scope: !514)
!524 = !{!147, !147, i64 0}
!525 = !DILocation(line: 74, column: 5, scope: !514)
!526 = !DILocation(line: 75, column: 31, scope: !514)
!527 = !DILocation(line: 0, scope: !52, inlinedAt: !528)
!528 = distinct !DILocation(line: 75, column: 9, scope: !514)
!529 = !DILocation(line: 0, scope: !130, inlinedAt: !530)
!530 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !528)
!531 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !530)
!532 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !530)
!533 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !530)
!534 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !530)
!535 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !530)
!536 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !530)
!537 = !DILocation(line: 0, scope: !138, inlinedAt: !530)
!538 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !530)
!539 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !530)
!540 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !530)
!541 = distinct !{!541, !540, !542, !164, !165}
!542 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !530)
!543 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !530)
!544 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !530)
!545 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !530)
!546 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !530)
!547 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !530)
!548 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !530)
!549 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !530)
!550 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !530)
!551 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !530)
!552 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !530)
!553 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !530)
!554 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !530)
!555 = distinct !{!555, !525, !556, !164, !165}
!556 = !DILocation(line: 75, column: 34, scope: !514)
!557 = !DILocation(line: 76, column: 1, scope: !514)
!558 = distinct !DISubprogram(name: "x264_put_amf_string", scope: !35, file: !35, line: 78, type: !515, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !559)
!559 = !{!560, !561, !562}
!560 = !DILocalVariable(name: "c", arg: 1, scope: !558, file: !35, line: 78, type: !55)
!561 = !DILocalVariable(name: "str", arg: 2, scope: !558, file: !35, line: 78, type: !517)
!562 = !DILocalVariable(name: "len", scope: !558, file: !35, line: 80, type: !352)
!563 = !DILocation(line: 0, scope: !558)
!564 = !DILocation(line: 80, column: 20, scope: !558)
!565 = !DILocation(line: 0, scope: !349, inlinedAt: !566)
!566 = distinct !DILocation(line: 81, column: 5, scope: !558)
!567 = !DILocation(line: 62, column: 23, scope: !349, inlinedAt: !566)
!568 = !DILocation(line: 0, scope: !52, inlinedAt: !569)
!569 = distinct !DILocation(line: 62, column: 5, scope: !349, inlinedAt: !566)
!570 = !DILocation(line: 0, scope: !130, inlinedAt: !571)
!571 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !569)
!572 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !571)
!573 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !571)
!574 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !571)
!575 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !571)
!576 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !571)
!577 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !571)
!578 = !DILocation(line: 0, scope: !138, inlinedAt: !571)
!579 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !571)
!580 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !571)
!581 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !571)
!582 = distinct !{!582, !581, !583, !164, !165}
!583 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !571)
!584 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !571)
!585 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !571)
!586 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !571)
!587 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !571)
!588 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !571)
!589 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !590)
!590 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !591)
!591 = distinct !DILocation(line: 63, column: 5, scope: !349, inlinedAt: !566)
!592 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !571)
!593 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !571)
!594 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !571)
!595 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !571)
!596 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !571)
!597 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !571)
!598 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !571)
!599 = !DILocation(line: 63, column: 23, scope: !349, inlinedAt: !566)
!600 = !DILocation(line: 0, scope: !52, inlinedAt: !591)
!601 = !DILocation(line: 0, scope: !130, inlinedAt: !590)
!602 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !590)
!603 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !590)
!604 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !590)
!605 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !590)
!606 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !590)
!607 = !DILocation(line: 0, scope: !138, inlinedAt: !590)
!608 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !590)
!609 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !590)
!610 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !590)
!611 = distinct !{!611, !610, !612, !164, !165}
!612 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !590)
!613 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !590)
!614 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !590)
!615 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !590)
!616 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !590)
!617 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !590)
!618 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !619)
!619 = distinct !DILocation(line: 82, column: 5, scope: !558)
!620 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !590)
!621 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !590)
!622 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !590)
!623 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !590)
!624 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !590)
!625 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !590)
!626 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !590)
!627 = !DILocation(line: 82, column: 40, scope: !558)
!628 = !DILocation(line: 0, scope: !130, inlinedAt: !619)
!629 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !619)
!630 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !619)
!631 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !619)
!632 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !619)
!633 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !619)
!634 = !DILocation(line: 0, scope: !138, inlinedAt: !619)
!635 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !619)
!636 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !619)
!637 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !619)
!638 = distinct !{!638, !637, !639, !164, !165}
!639 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !619)
!640 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !619)
!641 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !619)
!642 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !619)
!643 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !619)
!644 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !619)
!645 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !619)
!646 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !619)
!647 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !619)
!648 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !619)
!649 = !DILocation(line: 133, column: 39, scope: !130, inlinedAt: !619)
!650 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !619)
!651 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !619)
!652 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !619)
!653 = !DILocation(line: 83, column: 1, scope: !558)
!654 = distinct !DISubprogram(name: "x264_put_amf_double", scope: !35, file: !35, line: 85, type: !655, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !657)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !55, !41}
!657 = !{!658, !659}
!658 = !DILocalVariable(name: "c", arg: 1, scope: !654, file: !35, line: 85, type: !55)
!659 = !DILocalVariable(name: "d", arg: 2, scope: !654, file: !35, line: 85, type: !41)
!660 = !DILocation(line: 0, scope: !654)
!661 = !DILocation(line: 0, scope: !52, inlinedAt: !662)
!662 = distinct !DILocation(line: 87, column: 5, scope: !654)
!663 = !DILocation(line: 0, scope: !130, inlinedAt: !664)
!664 = distinct !DILocation(line: 43, column: 5, scope: !52, inlinedAt: !662)
!665 = !DILocation(line: 116, column: 22, scope: !130, inlinedAt: !664)
!666 = !DILocation(line: 116, column: 28, scope: !130, inlinedAt: !664)
!667 = !DILocation(line: 118, column: 17, scope: !139, inlinedAt: !664)
!668 = !DILocation(line: 118, column: 12, scope: !139, inlinedAt: !664)
!669 = !DILocation(line: 118, column: 9, scope: !130, inlinedAt: !664)
!670 = !DILocation(line: 133, column: 16, scope: !130, inlinedAt: !664)
!671 = !DILocation(line: 0, scope: !138, inlinedAt: !664)
!672 = !DILocation(line: 122, column: 19, scope: !138, inlinedAt: !664)
!673 = !DILocation(line: 123, column: 16, scope: !138, inlinedAt: !664)
!674 = !DILocation(line: 122, column: 9, scope: !138, inlinedAt: !664)
!675 = distinct !{!675, !674, !676, !164, !165}
!676 = !DILocation(line: 123, column: 20, scope: !138, inlinedAt: !664)
!677 = !DILocation(line: 125, column: 26, scope: !138, inlinedAt: !664)
!678 = !DILocation(line: 125, column: 32, scope: !138, inlinedAt: !664)
!679 = !DILocation(line: 125, column: 14, scope: !138, inlinedAt: !664)
!680 = !DILocation(line: 126, column: 14, scope: !170, inlinedAt: !664)
!681 = !DILocation(line: 126, column: 13, scope: !138, inlinedAt: !664)
!682 = !DILocation(line: 129, column: 17, scope: !138, inlinedAt: !664)
!683 = !DILocation(line: 130, column: 18, scope: !138, inlinedAt: !664)
!684 = !DILocation(line: 133, column: 26, scope: !130, inlinedAt: !664)
!685 = !DILocation(line: 133, column: 21, scope: !130, inlinedAt: !664)
!686 = !DILocation(line: 133, column: 5, scope: !130, inlinedAt: !664)
!687 = !DILocation(line: 135, column: 14, scope: !130, inlinedAt: !664)
!688 = !DILocation(line: 137, column: 5, scope: !130, inlinedAt: !664)
!689 = !DILocation(line: 0, scope: !34, inlinedAt: !690)
!690 = distinct !DILocation(line: 88, column: 23, scope: !654)
!691 = !DILocation(line: 33, column: 16, scope: !34, inlinedAt: !690)
!692 = !DILocation(line: 0, scope: !336, inlinedAt: !693)
!693 = distinct !DILocation(line: 88, column: 5, scope: !654)
!694 = !DILocation(line: 56, column: 27, scope: !336, inlinedAt: !693)
!695 = !DILocation(line: 56, column: 23, scope: !336, inlinedAt: !693)
!696 = !DILocation(line: 56, column: 5, scope: !336, inlinedAt: !693)
!697 = !DILocation(line: 57, column: 23, scope: !336, inlinedAt: !693)
!698 = !DILocation(line: 57, column: 5, scope: !336, inlinedAt: !693)
!699 = !DILocation(line: 89, column: 1, scope: !654)
!700 = distinct !DISubprogram(name: "flv_create_writer", scope: !35, file: !35, line: 93, type: !701, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !703)
!701 = !DISubroutineType(types: !702)
!702 = !{!55, !517}
!703 = !{!704, !705}
!704 = !DILocalVariable(name: "filename", arg: 1, scope: !700, file: !35, line: 93, type: !517)
!705 = !DILocalVariable(name: "c", scope: !700, file: !35, line: 95, type: !55)
!706 = !DILocation(line: 0, scope: !700)
!707 = !DILocation(line: 95, column: 21, scope: !700)
!708 = !DILocation(line: 97, column: 10, scope: !709)
!709 = distinct !DILexicalBlock(scope: !700, file: !35, line: 97, column: 9)
!710 = !DILocation(line: 97, column: 9, scope: !700)
!711 = !DILocation(line: 101, column: 10, scope: !712)
!712 = distinct !DILexicalBlock(scope: !700, file: !35, line: 101, column: 9)
!713 = !DILocation(line: 101, column: 9, scope: !700)
!714 = !DILocation(line: 102, column: 17, scope: !712)
!715 = !{!146, !146, i64 0}
!716 = !DILocation(line: 102, column: 9, scope: !712)
!717 = !DILocation(line: 104, column: 17, scope: !712)
!718 = !DILocation(line: 0, scope: !712)
!719 = !DILocation(line: 102, column: 12, scope: !712)
!720 = !DILocation(line: 102, column: 15, scope: !712)
!721 = !DILocation(line: 105, column: 10, scope: !722)
!722 = distinct !DILexicalBlock(scope: !700, file: !35, line: 105, column: 9)
!723 = !DILocation(line: 105, column: 9, scope: !700)
!724 = !DILocation(line: 107, column: 9, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !35, line: 106, column: 5)
!726 = !DILocation(line: 108, column: 9, scope: !725)
!727 = !DILocation(line: 112, column: 1, scope: !700)
!728 = distinct !DISubprogram(name: "rewrite_amf_be24", scope: !35, file: !35, line: 140, type: !729, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !731)
!729 = !DISubroutineType(types: !730)
!730 = !{null, !55, !5, !5}
!731 = !{!732, !733, !734}
!732 = !DILocalVariable(name: "c", arg: 1, scope: !728, file: !35, line: 140, type: !55)
!733 = !DILocalVariable(name: "length", arg: 2, scope: !728, file: !35, line: 140, type: !5)
!734 = !DILocalVariable(name: "start", arg: 3, scope: !728, file: !35, line: 140, type: !5)
!735 = !DILocation(line: 0, scope: !728)
!736 = !DILocation(line: 142, column: 38, scope: !728)
!737 = !DILocation(line: 142, column: 31, scope: !728)
!738 = !DILocation(line: 142, column: 11, scope: !728)
!739 = !DILocation(line: 142, column: 16, scope: !728)
!740 = !DILocation(line: 142, column: 29, scope: !728)
!741 = !DILocation(line: 143, column: 38, scope: !728)
!742 = !DILocation(line: 143, column: 31, scope: !728)
!743 = !DILocation(line: 143, column: 11, scope: !728)
!744 = !DILocation(line: 143, column: 16, scope: !728)
!745 = !DILocation(line: 143, column: 24, scope: !728)
!746 = !DILocation(line: 143, column: 29, scope: !728)
!747 = !DILocation(line: 144, column: 31, scope: !728)
!748 = !DILocation(line: 144, column: 11, scope: !728)
!749 = !DILocation(line: 144, column: 16, scope: !728)
!750 = !DILocation(line: 144, column: 24, scope: !728)
!751 = !DILocation(line: 144, column: 29, scope: !728)
!752 = !DILocation(line: 145, column: 1, scope: !728)
!753 = distinct !DISubprogram(name: "flv_flush_data", scope: !35, file: !35, line: 147, type: !754, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!70, !55}
!756 = !{!757}
!757 = !DILocalVariable(name: "c", arg: 1, scope: !753, file: !35, line: 147, type: !55)
!758 = !DILocation(line: 0, scope: !753)
!759 = !DILocation(line: 149, column: 13, scope: !760)
!760 = distinct !DILexicalBlock(scope: !753, file: !35, line: 149, column: 9)
!761 = !DILocation(line: 149, column: 10, scope: !760)
!762 = !DILocation(line: 149, column: 9, scope: !753)
!763 = !DILocation(line: 152, column: 20, scope: !764)
!764 = distinct !DILexicalBlock(scope: !753, file: !35, line: 152, column: 9)
!765 = !DILocation(line: 152, column: 26, scope: !764)
!766 = !DILocation(line: 152, column: 42, scope: !764)
!767 = !{!145, !146, i64 16}
!768 = !DILocation(line: 152, column: 9, scope: !764)
!769 = !DILocation(line: 152, column: 47, scope: !764)
!770 = !DILocation(line: 152, column: 9, scope: !753)
!771 = !DILocation(line: 155, column: 22, scope: !753)
!772 = !DILocation(line: 155, column: 19, scope: !753)
!773 = !DILocation(line: 155, column: 8, scope: !753)
!774 = !DILocation(line: 155, column: 16, scope: !753)
!775 = !{!145, !150, i64 24}
!776 = !DILocation(line: 157, column: 14, scope: !753)
!777 = !DILocation(line: 159, column: 5, scope: !753)
!778 = !DILocation(line: 160, column: 1, scope: !753)
