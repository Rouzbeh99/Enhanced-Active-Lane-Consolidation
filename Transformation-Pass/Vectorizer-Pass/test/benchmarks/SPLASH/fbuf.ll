; ModuleID = 'fbuf.c'
source_filename = "fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, i8, i8, i8 }
%struct.display = type { i64, i64, i64, i64, double, i64, i64, i64, double, double, double, double, double, double, double, double, ptr }
%struct.pixel = type { float, float, float }

@image = internal unnamed_addr global [1280 x %struct.anon] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [9 x i8] c"%c%c%c%c\00", align 1
@Display = external local_unnamed_addr global %struct.display, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"fbuf.c\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to open picture file %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%c%c%c%c%c%c%c%c\00", align 1

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @RunLengthEncode(ptr nocapture noundef %pf, ptr nocapture noundef readonly %fb, i64 noundef %xsize) local_unnamed_addr #0 !dbg !28 {
entry:
  call void @llvm.dbg.value(metadata ptr %pf, metadata !102, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata ptr %fb, metadata !103, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 %xsize, metadata !104, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 0, metadata !106, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !111
  %0 = load float, ptr %fb, align 4, !dbg !112
  %conv = fpext float %0 to double, !dbg !113
  %mul = fmul double %conv, 2.550000e+02, !dbg !114
  %conv1 = fptosi double %mul to i64, !dbg !115
  %conv2 = trunc i64 %conv1 to i8, !dbg !116
  store i8 %conv2, ptr @image, align 16, !dbg !117
  %g = getelementptr inbounds %struct.pixel, ptr %fb, i64 0, i32 1, !dbg !118
  %1 = load float, ptr %g, align 4, !dbg !118
  %conv4 = fpext float %1 to double, !dbg !119
  %mul5 = fmul double %conv4, 2.550000e+02, !dbg !120
  %conv6 = fptosi double %mul5 to i64, !dbg !121
  %conv7 = trunc i64 %conv6 to i8, !dbg !122
  store i8 %conv7, ptr getelementptr inbounds ([1280 x %struct.anon], ptr @image, i64 0, i64 0, i32 1), align 1, !dbg !123
  %b = getelementptr inbounds %struct.pixel, ptr %fb, i64 0, i32 2, !dbg !124
  %2 = load float, ptr %b, align 4, !dbg !124
  %conv9 = fpext float %2 to double, !dbg !125
  %mul10 = fmul double %conv9, 2.550000e+02, !dbg !126
  %conv11 = fptosi double %mul10 to i64, !dbg !127
  %conv12 = trunc i64 %conv11 to i8, !dbg !128
  store i8 %conv12, ptr getelementptr inbounds ([1280 x %struct.anon], ptr @image, i64 0, i64 0, i32 2), align 2, !dbg !129
  call void @llvm.dbg.value(metadata i64 1, metadata !105, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 0, metadata !106, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !111
  %cmp116 = icmp sgt i64 %xsize, 1, !dbg !130
  br i1 %cmp116, label %for.body, label %for.end.thread, !dbg !133

for.end.thread:                                   ; preds = %entry
  store i8 0, ptr getelementptr inbounds ([1280 x %struct.anon], ptr @image, i64 0, i64 0, i32 3), align 1, !dbg !134
  call void @llvm.dbg.value(metadata i64 0, metadata !105, metadata !DIExpression()), !dbg !111
  br label %for.body70.preheader, !dbg !135

for.body:                                         ; preds = %entry, %for.inc
  %.pre126 = phi i8 [ %.pre, %for.inc ], [ %conv2, %entry ]
  %x.0121 = phi i64 [ %inc63, %for.inc ], [ 1, %entry ]
  %rl.0119 = phi i64 [ %rl.1, %for.inc ], [ 0, %entry ]
  %numpixels.0117 = phi i64 [ %numpixels.1, %for.inc ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %x.0121, metadata !105, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 %rl.0119, metadata !106, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 %numpixels.0117, metadata !107, metadata !DIExpression()), !dbg !111
  %arrayidx14 = getelementptr inbounds %struct.pixel, ptr %fb, i64 %x.0121, !dbg !137
  %3 = load float, ptr %arrayidx14, align 4, !dbg !139
  %conv16 = fpext float %3 to double, !dbg !137
  %mul17 = fmul double %conv16, 2.550000e+02, !dbg !140
  %conv18 = fptosi double %mul17 to i64, !dbg !141
  %conv19 = trunc i64 %conv18 to i8, !dbg !142
  call void @llvm.dbg.value(metadata i8 %conv19, metadata !108, metadata !DIExpression()), !dbg !111
  %g21 = getelementptr inbounds %struct.pixel, ptr %fb, i64 %x.0121, i32 1, !dbg !143
  %4 = load float, ptr %g21, align 4, !dbg !143
  %conv22 = fpext float %4 to double, !dbg !144
  %mul23 = fmul double %conv22, 2.550000e+02, !dbg !145
  %conv24 = fptosi double %mul23 to i64, !dbg !146
  %conv25 = trunc i64 %conv24 to i8, !dbg !147
  call void @llvm.dbg.value(metadata i8 %conv25, metadata !109, metadata !DIExpression()), !dbg !111
  %b27 = getelementptr inbounds %struct.pixel, ptr %fb, i64 %x.0121, i32 2, !dbg !148
  %5 = load float, ptr %b27, align 4, !dbg !148
  %conv28 = fpext float %5 to double, !dbg !149
  %mul29 = fmul double %conv28, 2.550000e+02, !dbg !150
  %conv30 = fptosi double %mul29 to i64, !dbg !151
  %conv31 = trunc i64 %conv30 to i8, !dbg !152
  call void @llvm.dbg.value(metadata i8 %conv31, metadata !110, metadata !DIExpression()), !dbg !111
  %cmp36 = icmp eq i8 %.pre126, %conv19, !dbg !153
  br i1 %cmp36, label %land.lhs.true, label %if.else, !dbg !155

land.lhs.true:                                    ; preds = %for.body
  %g40 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %rl.0119, i32 1, !dbg !156
  %6 = load i8, ptr %g40, align 1, !dbg !156
  %cmp42 = icmp eq i8 %6, %conv25, !dbg !157
  br i1 %cmp42, label %land.lhs.true44, label %if.else, !dbg !158

land.lhs.true44:                                  ; preds = %land.lhs.true
  %b47 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %rl.0119, i32 2, !dbg !159
  %7 = load i8, ptr %b47, align 2, !dbg !159
  %cmp49 = icmp eq i8 %7, %conv31, !dbg !160
  %cmp52 = icmp slt i64 %numpixels.0117, 255
  %or.cond = select i1 %cmp49, i1 %cmp52, i1 false, !dbg !161
  br i1 %or.cond, label %if.then, label %if.else, !dbg !161

if.then:                                          ; preds = %land.lhs.true44
  %inc = add nsw i64 %numpixels.0117, 1, !dbg !162
  call void @llvm.dbg.value(metadata i64 %inc, metadata !107, metadata !DIExpression()), !dbg !111
  br label %for.inc, !dbg !163

if.else:                                          ; preds = %land.lhs.true44, %land.lhs.true, %for.body
  %conv54 = trunc i64 %numpixels.0117 to i8, !dbg !164
  %count = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %rl.0119, i32 3, !dbg !166
  store i8 %conv54, ptr %count, align 1, !dbg !167
  %inc56 = add nsw i64 %rl.0119, 1, !dbg !168
  call void @llvm.dbg.value(metadata i64 %inc56, metadata !106, metadata !DIExpression()), !dbg !111
  %arrayidx57 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %inc56, !dbg !169
  store i8 %conv19, ptr %arrayidx57, align 4, !dbg !170
  %g60 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %inc56, i32 1, !dbg !171
  store i8 %conv25, ptr %g60, align 1, !dbg !172
  %b62 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %inc56, i32 2, !dbg !173
  store i8 %conv31, ptr %b62, align 2, !dbg !174
  call void @llvm.dbg.value(metadata i64 0, metadata !107, metadata !DIExpression()), !dbg !111
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %.pre = phi i8 [ %.pre126, %if.then ], [ %conv19, %if.else ]
  %numpixels.1 = phi i64 [ %inc, %if.then ], [ 0, %if.else ], !dbg !175
  %rl.1 = phi i64 [ %rl.0119, %if.then ], [ %inc56, %if.else ], !dbg !111
  call void @llvm.dbg.value(metadata i64 %rl.1, metadata !106, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 %numpixels.1, metadata !107, metadata !DIExpression()), !dbg !111
  %inc63 = add nuw nsw i64 %x.0121, 1, !dbg !176
  call void @llvm.dbg.value(metadata i64 %inc63, metadata !105, metadata !DIExpression()), !dbg !111
  %exitcond.not = icmp eq i64 %inc63, %xsize, !dbg !130
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !133, !llvm.loop !177

for.end:                                          ; preds = %for.inc
  %conv64 = trunc i64 %numpixels.1 to i8, !dbg !181
  %count66 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %rl.1, i32 3, !dbg !182
  store i8 %conv64, ptr %count66, align 1, !dbg !134
  call void @llvm.dbg.value(metadata i64 0, metadata !105, metadata !DIExpression()), !dbg !111
  %cmp68.not123 = icmp slt i64 %rl.1, 0, !dbg !183
  br i1 %cmp68.not123, label %for.end85, label %for.body70.preheader, !dbg !135

for.body70.preheader:                             ; preds = %for.end.thread, %for.end
  %rl.0.lcssa133 = phi i64 [ 0, %for.end.thread ], [ %rl.1, %for.end ]
  br label %for.body70, !dbg !135

for.body70:                                       ; preds = %for.body70.preheader, %for.body70
  %x.1124 = phi i64 [ %inc84, %for.body70 ], [ 0, %for.body70.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.1124, metadata !105, metadata !DIExpression()), !dbg !111
  %arrayidx71 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %x.1124, !dbg !185
  %8 = load i8, ptr %arrayidx71, align 4, !dbg !186
  %conv73 = zext i8 %8 to i32, !dbg !185
  %g75 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %x.1124, i32 1, !dbg !187
  %9 = load i8, ptr %g75, align 1, !dbg !187
  %conv76 = zext i8 %9 to i32, !dbg !188
  %b78 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %x.1124, i32 2, !dbg !189
  %10 = load i8, ptr %b78, align 2, !dbg !189
  %conv79 = zext i8 %10 to i32, !dbg !190
  %count81 = getelementptr inbounds [1280 x %struct.anon], ptr @image, i64 0, i64 %x.1124, i32 3, !dbg !191
  %11 = load i8, ptr %count81, align 1, !dbg !191
  %conv82 = zext i8 %11 to i32, !dbg !192
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %pf, ptr noundef nonnull @.str, i32 noundef %conv73, i32 noundef %conv76, i32 noundef %conv79, i32 noundef %conv82), !dbg !193
  %inc84 = add nuw i64 %x.1124, 1, !dbg !194
  call void @llvm.dbg.value(metadata i64 %inc84, metadata !105, metadata !DIExpression()), !dbg !111
  %exitcond125.not = icmp eq i64 %x.1124, %rl.0.lcssa133, !dbg !183
  br i1 %exitcond125.not, label %for.end85, label %for.body70, !dbg !135, !llvm.loop !195

for.end85:                                        ; preds = %for.body70, %for.end
  ret void, !dbg !197
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @OpenFrameBuffer() local_unnamed_addr #2 !dbg !198 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 7), align 8, !dbg !204
  %mul = mul i64 %0, 12, !dbg !205
  %call = tail call ptr @GlobalMalloc(i64 noundef %mul, ptr noundef nonnull @.str.1) #7, !dbg !206
  store ptr %call, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 16), align 8, !dbg !207
  call void @llvm.dbg.value(metadata ptr %call, metadata !203, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i64 0, metadata !202, metadata !DIExpression()), !dbg !208
  %1 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 7), align 8, !dbg !209
  %cmp5 = icmp sgt i64 %1, 0, !dbg !212
  br i1 %cmp5, label %for.body, label %for.end, !dbg !213

for.body:                                         ; preds = %entry, %for.body
  %fb.07 = phi ptr [ %incdec.ptr, %for.body ], [ %call, %entry ]
  %i.06 = phi i64 [ %inc, %for.body ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata ptr %fb.07, metadata !203, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i64 %i.06, metadata !202, metadata !DIExpression()), !dbg !208
  store float 0.000000e+00, ptr %fb.07, align 4, !dbg !214
  %g = getelementptr inbounds %struct.pixel, ptr %fb.07, i64 0, i32 1, !dbg !216
  store float 0.000000e+00, ptr %g, align 4, !dbg !217
  %b = getelementptr inbounds %struct.pixel, ptr %fb.07, i64 0, i32 2, !dbg !218
  store float 0.000000e+00, ptr %b, align 4, !dbg !219
  %incdec.ptr = getelementptr inbounds %struct.pixel, ptr %fb.07, i64 1, !dbg !220
  call void @llvm.dbg.value(metadata ptr %incdec.ptr, metadata !203, metadata !DIExpression()), !dbg !208
  %inc = add nuw nsw i64 %i.06, 1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %inc, metadata !202, metadata !DIExpression()), !dbg !208
  %2 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 7), align 8, !dbg !209
  %cmp = icmp slt i64 %inc, %2, !dbg !212
  br i1 %cmp, label %for.body, label %for.end, !dbg !213, !llvm.loop !222

for.end:                                          ; preds = %for.body, %entry
  ret void, !dbg !224
}

declare !dbg !225 ptr @GlobalMalloc(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable
define dso_local void @AddPixelColor(ptr nocapture noundef readonly %c, i64 noundef %x, i64 noundef %y) local_unnamed_addr #4 !dbg !232 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !239, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i64 %x, metadata !240, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata i64 %y, metadata !241, metadata !DIExpression()), !dbg !244
  %0 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !245
  %mul = mul nsw i64 %0, %y, !dbg !246
  %add = add nsw i64 %mul, %x, !dbg !247
  call void @llvm.dbg.value(metadata i64 %add, metadata !242, metadata !DIExpression()), !dbg !244
  %1 = load ptr, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 16), align 8, !dbg !248
  call void @llvm.dbg.value(metadata ptr %1, metadata !243, metadata !DIExpression()), !dbg !244
  %2 = load double, ptr %c, align 8, !dbg !249
  %arrayidx1 = getelementptr inbounds %struct.pixel, ptr %1, i64 %add, !dbg !250
  %3 = load float, ptr %arrayidx1, align 4, !dbg !251
  %conv = fpext float %3 to double, !dbg !251
  %add2 = fadd double %2, %conv, !dbg !251
  %conv3 = fptrunc double %add2 to float, !dbg !251
  store float %conv3, ptr %arrayidx1, align 4, !dbg !251
  %arrayidx4 = getelementptr inbounds double, ptr %c, i64 1, !dbg !252
  %4 = load double, ptr %arrayidx4, align 8, !dbg !252
  %g = getelementptr inbounds %struct.pixel, ptr %1, i64 %add, i32 1, !dbg !253
  %5 = load float, ptr %g, align 4, !dbg !254
  %conv6 = fpext float %5 to double, !dbg !254
  %add7 = fadd double %4, %conv6, !dbg !254
  %conv8 = fptrunc double %add7 to float, !dbg !254
  store float %conv8, ptr %g, align 4, !dbg !254
  %arrayidx9 = getelementptr inbounds double, ptr %c, i64 2, !dbg !255
  %6 = load double, ptr %arrayidx9, align 8, !dbg !255
  %b = getelementptr inbounds %struct.pixel, ptr %1, i64 %add, i32 2, !dbg !256
  %7 = load float, ptr %b, align 4, !dbg !257
  %conv11 = fpext float %7 to double, !dbg !257
  %add12 = fadd double %6, %conv11, !dbg !257
  %conv13 = fptrunc double %add12 to float, !dbg !257
  store float %conv13, ptr %b, align 4, !dbg !257
  ret void, !dbg !258
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CloseFrameBuffer(ptr noundef %PicFileName) local_unnamed_addr #2 !dbg !259 {
entry:
  call void @llvm.dbg.value(metadata ptr %PicFileName, metadata !263, metadata !DIExpression()), !dbg !268
  %call = tail call ptr @fopen(ptr noundef %PicFileName, ptr noundef nonnull @.str.2), !dbg !269
  call void @llvm.dbg.value(metadata ptr %call, metadata !267, metadata !DIExpression()), !dbg !268
  %tobool.not = icmp eq ptr %call, null, !dbg !270
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !272

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.3, ptr noundef %PicFileName), !dbg !273
  tail call void @exit(i32 noundef -1) #8, !dbg !275
  unreachable, !dbg !275

if.end:                                           ; preds = %entry
  %0 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !276
  call void @llvm.dbg.value(metadata i64 %0, metadata !264, metadata !DIExpression()), !dbg !268
  %1 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 6), align 8, !dbg !277
  call void @llvm.dbg.value(metadata i64 %1, metadata !265, metadata !DIExpression()), !dbg !268
  %2 = load ptr, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 16), align 8, !dbg !278
  call void @llvm.dbg.value(metadata ptr %2, metadata !266, metadata !DIExpression()), !dbg !268
  %div = sdiv i64 %0, 256, !dbg !279
  %conv = trunc i64 %div to i32, !dbg !280
  %sext = shl i32 %conv, 24, !dbg !280
  %conv2 = ashr exact i32 %sext, 24, !dbg !280
  %conv3 = trunc i64 %0 to i32, !dbg !281
  %sext155 = shl i32 %conv3, 24, !dbg !281
  %conv4 = ashr exact i32 %sext155, 24, !dbg !281
  %div5 = sdiv i64 %1, 256, !dbg !282
  %conv6 = trunc i64 %div5 to i32, !dbg !283
  %sext156 = shl i32 %conv6, 24, !dbg !283
  %conv7 = ashr exact i32 %sext156, 24, !dbg !283
  %conv9 = trunc i64 %1 to i32, !dbg !284
  %sext157 = shl i32 %conv9, 24, !dbg !284
  %conv10 = ashr exact i32 %sext157, 24, !dbg !284
  %call11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef 0, i32 noundef %conv2, i32 noundef %conv4, i32 noundef 0, i32 noundef 0, i32 noundef %conv7, i32 noundef %conv10), !dbg !285
  call void @llvm.dbg.value(metadata i64 0, metadata !265, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata ptr %2, metadata !266, metadata !DIExpression()), !dbg !268
  %3 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 6), align 8, !dbg !286
  %cmp160 = icmp sgt i64 %3, 0, !dbg !289
  br i1 %cmp160, label %for.cond13.preheader.preheader, label %for.end106, !dbg !290

for.cond13.preheader.preheader:                   ; preds = %if.end
  %.pre = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !291
  br label %for.cond13.preheader, !dbg !290

for.cond13.preheader:                             ; preds = %for.cond13.preheader.preheader, %for.end
  %4 = phi i64 [ %9, %for.end ], [ %.pre, %for.cond13.preheader.preheader ], !dbg !291
  %fb.0162 = phi ptr [ %add.ptr, %for.end ], [ %2, %for.cond13.preheader.preheader ]
  %y.0161 = phi i64 [ %inc105, %for.end ], [ 0, %for.cond13.preheader.preheader ]
  call void @llvm.dbg.value(metadata ptr %fb.0162, metadata !266, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i64 %y.0161, metadata !265, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.value(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !268
  %cmp14158 = icmp sgt i64 %4, 0, !dbg !295
  br i1 %cmp14158, label %for.body16, label %for.end, !dbg !296

for.body16:                                       ; preds = %for.cond13.preheader, %cond.end99
  %x.0159 = phi i64 [ %inc, %cond.end99 ], [ 0, %for.cond13.preheader ]
  call void @llvm.dbg.value(metadata i64 %x.0159, metadata !264, metadata !DIExpression()), !dbg !268
  %arrayidx = getelementptr inbounds %struct.pixel, ptr %fb.0162, i64 %x.0159, !dbg !297
  %5 = load float, ptr %arrayidx, align 4, !dbg !297
  %conv17 = fpext float %5 to double, !dbg !297
  %sub = fadd double %conv17, -1.000000e+00, !dbg !297
  %cmp18 = fcmp olt double %sub, 0.000000e+00, !dbg !297
  br i1 %cmp18, label %cond.true, label %cond.end, !dbg !297

cond.true:                                        ; preds = %for.body16
  br label %cond.end, !dbg !297

cond.end:                                         ; preds = %for.body16, %cond.true
  %cond = phi double [ %conv17, %cond.true ], [ 1.000000e+00, %for.body16 ], !dbg !297
  %conv23 = fptrunc double %cond to float, !dbg !297
  %g = getelementptr inbounds %struct.pixel, ptr %fb.0162, i64 %x.0159, i32 1, !dbg !299
  %6 = load float, ptr %g, align 4, !dbg !299
  %conv27 = fpext float %6 to double, !dbg !299
  %sub28 = fadd double %conv27, -1.000000e+00, !dbg !299
  %cmp29 = fcmp olt double %sub28, 0.000000e+00, !dbg !299
  br i1 %cmp29, label %cond.true31, label %cond.end36, !dbg !299

cond.true31:                                      ; preds = %cond.end
  br label %cond.end36, !dbg !299

cond.end36:                                       ; preds = %cond.end, %cond.true31
  %cond37 = phi double [ %conv27, %cond.true31 ], [ 1.000000e+00, %cond.end ], !dbg !299
  %conv38 = fptrunc double %cond37 to float, !dbg !299
  %b = getelementptr inbounds %struct.pixel, ptr %fb.0162, i64 %x.0159, i32 2, !dbg !300
  %7 = load float, ptr %b, align 4, !dbg !300
  %conv42 = fpext float %7 to double, !dbg !300
  %sub43 = fadd double %conv42, -1.000000e+00, !dbg !300
  %cmp44 = fcmp olt double %sub43, 0.000000e+00, !dbg !300
  br i1 %cmp44, label %cond.true46, label %cond.end51, !dbg !300

cond.true46:                                      ; preds = %cond.end36
  br label %cond.end51, !dbg !300

cond.end51:                                       ; preds = %cond.end36, %cond.true46
  %cond52 = phi double [ %conv42, %cond.true46 ], [ 1.000000e+00, %cond.end36 ], !dbg !300
  %conv53 = fptrunc double %cond52 to float, !dbg !300
  %cmp60 = fcmp ogt float %conv23, 0.000000e+00, !dbg !301
  br i1 %cmp60, label %cond.true62, label %cond.end67, !dbg !301

cond.true62:                                      ; preds = %cond.end51
  %conv58 = fpext float %conv23 to double, !dbg !301
  br label %cond.end67, !dbg !301

cond.end67:                                       ; preds = %cond.end51, %cond.true62
  %cond68 = phi double [ %conv58, %cond.true62 ], [ 0.000000e+00, %cond.end51 ], !dbg !301
  %conv69 = fptrunc double %cond68 to float, !dbg !301
  store float %conv69, ptr %arrayidx, align 4, !dbg !302
  %cmp76 = fcmp ogt float %conv38, 0.000000e+00, !dbg !303
  br i1 %cmp76, label %cond.true78, label %cond.end83, !dbg !303

cond.true78:                                      ; preds = %cond.end67
  %conv74 = fpext float %conv38 to double, !dbg !303
  br label %cond.end83, !dbg !303

cond.end83:                                       ; preds = %cond.end67, %cond.true78
  %cond84 = phi double [ %conv74, %cond.true78 ], [ 0.000000e+00, %cond.end67 ], !dbg !303
  %conv85 = fptrunc double %cond84 to float, !dbg !303
  store float %conv85, ptr %g, align 4, !dbg !304
  %cmp92 = fcmp ogt float %conv53, 0.000000e+00, !dbg !305
  br i1 %cmp92, label %cond.true94, label %cond.end99, !dbg !305

cond.true94:                                      ; preds = %cond.end83
  %conv90 = fpext float %conv53 to double, !dbg !305
  br label %cond.end99, !dbg !305

cond.end99:                                       ; preds = %cond.end83, %cond.true94
  %cond100 = phi double [ %conv90, %cond.true94 ], [ 0.000000e+00, %cond.end83 ], !dbg !305
  %conv101 = fptrunc double %cond100 to float, !dbg !305
  store float %conv101, ptr %b, align 4, !dbg !306
  %inc = add nuw nsw i64 %x.0159, 1, !dbg !307
  call void @llvm.dbg.value(metadata i64 %inc, metadata !264, metadata !DIExpression()), !dbg !268
  %8 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !291
  %cmp14 = icmp slt i64 %inc, %8, !dbg !295
  br i1 %cmp14, label %for.body16, label %for.end, !dbg !296, !llvm.loop !308

for.end:                                          ; preds = %cond.end99, %for.cond13.preheader
  %.lcssa = phi i64 [ %4, %for.cond13.preheader ], [ %8, %cond.end99 ], !dbg !291
  tail call void @RunLengthEncode(ptr noundef nonnull %call, ptr noundef %fb.0162, i64 noundef %.lcssa), !dbg !310
  %9 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 5), align 8, !dbg !311
  %add.ptr = getelementptr inbounds %struct.pixel, ptr %fb.0162, i64 %9, !dbg !312
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !266, metadata !DIExpression()), !dbg !268
  %inc105 = add nuw nsw i64 %y.0161, 1, !dbg !313
  call void @llvm.dbg.value(metadata i64 %inc105, metadata !265, metadata !DIExpression()), !dbg !268
  %10 = load i64, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 6), align 8, !dbg !286
  %cmp = icmp slt i64 %inc105, %10, !dbg !289
  br i1 %cmp, label %for.cond13.preheader, label %for.end106, !dbg !290, !llvm.loop !314

for.end106:                                       ; preds = %for.end, %if.end
  %call107 = tail call i32 @fclose(ptr noundef nonnull %call), !dbg !316
  %11 = load ptr, ptr getelementptr inbounds (%struct.display, ptr @Display, i64 0, i32 16), align 8, !dbg !317
  tail call void @GlobalFree(ptr noundef %11) #7, !dbg !318
  ret void, !dbg !319
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare !dbg !320 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

declare !dbg !324 void @GlobalFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "image", scope: !2, file: !3, line: 47, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fbuf.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "c2a348c394e45ae4a9e53dc754334be9")
!4 = !{!5, !8, !10}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !6, line: 290, baseType: !7)
!6 = !DIFile(filename: "./rt.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/raytrace", checksumkind: CSK_MD5, checksum: "79f3f08c304721814d4d4cb3fdd7e4dc")
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT", file: !6, line: 297, baseType: !9)
!9 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !{!0}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 40960, elements: !19)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 42, size: 32, elements: !14)
!14 = !{!15, !16, !17, !18}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !13, file: !3, line: 44, baseType: !5, size: 8)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !13, file: !3, line: 44, baseType: !5, size: 8, offset: 8)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !13, file: !3, line: 44, baseType: !5, size: 8, offset: 16)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !13, file: !3, line: 45, baseType: !5, size: 8, offset: 24)
!19 = !{!20}
!20 = !DISubrange(count: 1280)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!28 = distinct !DISubprogram(name: "RunLengthEncode", scope: !3, file: !3, line: 72, type: !29, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !101)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !92, !8}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !33, line: 7, baseType: !34)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !35, line: 49, size: 1728, elements: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!36 = !{!37, !39, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !54, !56, !57, !58, !61, !63, !65, !69, !72, !74, !77, !80, !81, !83, !87, !88}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !34, file: !35, line: 51, baseType: !38, size: 32)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !34, file: !35, line: 54, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !34, file: !35, line: 55, baseType: !40, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !34, file: !35, line: 56, baseType: !40, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !34, file: !35, line: 57, baseType: !40, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !34, file: !35, line: 58, baseType: !40, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !34, file: !35, line: 59, baseType: !40, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !34, file: !35, line: 60, baseType: !40, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !34, file: !35, line: 61, baseType: !40, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !34, file: !35, line: 64, baseType: !40, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !34, file: !35, line: 65, baseType: !40, size: 64, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !34, file: !35, line: 66, baseType: !40, size: 64, offset: 704)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !34, file: !35, line: 68, baseType: !52, size: 64, offset: 768)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !35, line: 36, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !34, file: !35, line: 70, baseType: !55, size: 64, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !34, file: !35, line: 72, baseType: !38, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !34, file: !35, line: 73, baseType: !38, size: 32, offset: 928)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !34, file: !35, line: 74, baseType: !59, size: 64, offset: 960)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !60, line: 152, baseType: !9)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !34, file: !35, line: 77, baseType: !62, size: 16, offset: 1024)
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !34, file: !35, line: 78, baseType: !64, size: 8, offset: 1040)
!64 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !34, file: !35, line: 79, baseType: !66, size: 8, offset: 1048)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !34, file: !35, line: 81, baseType: !70, size: 64, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !35, line: 43, baseType: null)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !34, file: !35, line: 89, baseType: !73, size: 64, offset: 1152)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !60, line: 153, baseType: !9)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !34, file: !35, line: 91, baseType: !75, size: 64, offset: 1216)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !35, line: 37, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !34, file: !35, line: 92, baseType: !78, size: 64, offset: 1280)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !35, line: 38, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !34, file: !35, line: 93, baseType: !55, size: 64, offset: 1344)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !34, file: !35, line: 94, baseType: !82, size: 64, offset: 1408)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !34, file: !35, line: 95, baseType: !84, size: 64, offset: 1472)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 46, baseType: !86)
!85 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!86 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !34, file: !35, line: 96, baseType: !38, size: 32, offset: 1536)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !34, file: !35, line: 98, baseType: !89, size: 160, offset: 1568)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 20)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "PIXEL", file: !6, line: 386, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pixel", file: !6, line: 380, size: 96, elements: !95)
!95 = !{!96, !99, !100}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !94, file: !6, line: 382, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "R32", file: !6, line: 307, baseType: !98)
!98 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !94, file: !6, line: 383, baseType: !97, size: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !94, file: !6, line: 384, baseType: !97, size: 32, offset: 64)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110}
!102 = !DILocalVariable(name: "pf", arg: 1, scope: !28, file: !3, line: 72, type: !31)
!103 = !DILocalVariable(name: "fb", arg: 2, scope: !28, file: !3, line: 72, type: !92)
!104 = !DILocalVariable(name: "xsize", arg: 3, scope: !28, file: !3, line: 72, type: !8)
!105 = !DILocalVariable(name: "x", scope: !28, file: !3, line: 74, type: !8)
!106 = !DILocalVariable(name: "rl", scope: !28, file: !3, line: 75, type: !8)
!107 = !DILocalVariable(name: "numpixels", scope: !28, file: !3, line: 76, type: !8)
!108 = !DILocalVariable(name: "red", scope: !28, file: !3, line: 77, type: !5)
!109 = !DILocalVariable(name: "green", scope: !28, file: !3, line: 77, type: !5)
!110 = !DILocalVariable(name: "blue", scope: !28, file: !3, line: 77, type: !5)
!111 = !DILocation(line: 0, scope: !28)
!112 = !DILocation(line: 82, column: 34, scope: !28)
!113 = !DILocation(line: 82, column: 28, scope: !28)
!114 = !DILocation(line: 82, column: 36, scope: !28)
!115 = !DILocation(line: 82, column: 21, scope: !28)
!116 = !DILocation(line: 82, column: 15, scope: !28)
!117 = !DILocation(line: 82, column: 13, scope: !28)
!118 = !DILocation(line: 83, column: 34, scope: !28)
!119 = !DILocation(line: 83, column: 28, scope: !28)
!120 = !DILocation(line: 83, column: 36, scope: !28)
!121 = !DILocation(line: 83, column: 21, scope: !28)
!122 = !DILocation(line: 83, column: 15, scope: !28)
!123 = !DILocation(line: 83, column: 13, scope: !28)
!124 = !DILocation(line: 84, column: 34, scope: !28)
!125 = !DILocation(line: 84, column: 28, scope: !28)
!126 = !DILocation(line: 84, column: 36, scope: !28)
!127 = !DILocation(line: 84, column: 21, scope: !28)
!128 = !DILocation(line: 84, column: 15, scope: !28)
!129 = !DILocation(line: 84, column: 13, scope: !28)
!130 = !DILocation(line: 86, column: 16, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 86, column: 2)
!132 = distinct !DILexicalBlock(scope: !28, file: !3, line: 86, column: 2)
!133 = !DILocation(line: 86, column: 2, scope: !132)
!134 = !DILocation(line: 110, column: 18, scope: !28)
!135 = !DILocation(line: 112, column: 2, scope: !136)
!136 = distinct !DILexicalBlock(scope: !28, file: !3, line: 112, column: 2)
!137 = !DILocation(line: 88, column: 24, scope: !138)
!138 = distinct !DILexicalBlock(scope: !131, file: !3, line: 87, column: 3)
!139 = !DILocation(line: 88, column: 30, scope: !138)
!140 = !DILocation(line: 88, column: 32, scope: !138)
!141 = !DILocation(line: 88, column: 17, scope: !138)
!142 = !DILocation(line: 88, column: 11, scope: !138)
!143 = !DILocation(line: 89, column: 30, scope: !138)
!144 = !DILocation(line: 89, column: 24, scope: !138)
!145 = !DILocation(line: 89, column: 32, scope: !138)
!146 = !DILocation(line: 89, column: 17, scope: !138)
!147 = !DILocation(line: 89, column: 11, scope: !138)
!148 = !DILocation(line: 90, column: 30, scope: !138)
!149 = !DILocation(line: 90, column: 24, scope: !138)
!150 = !DILocation(line: 90, column: 32, scope: !138)
!151 = !DILocation(line: 90, column: 17, scope: !138)
!152 = !DILocation(line: 90, column: 11, scope: !138)
!153 = !DILocation(line: 93, column: 13, scope: !154)
!154 = distinct !DILexicalBlock(scope: !138, file: !3, line: 93, column: 7)
!155 = !DILocation(line: 93, column: 29, scope: !154)
!156 = !DILocation(line: 94, column: 26, scope: !154)
!157 = !DILocation(line: 94, column: 13, scope: !154)
!158 = !DILocation(line: 94, column: 29, scope: !154)
!159 = !DILocation(line: 95, column: 26, scope: !154)
!160 = !DILocation(line: 95, column: 13, scope: !154)
!161 = !DILocation(line: 95, column: 29, scope: !154)
!162 = !DILocation(line: 97, column: 13, scope: !154)
!163 = !DILocation(line: 97, column: 4, scope: !154)
!164 = !DILocation(line: 100, column: 22, scope: !165)
!165 = distinct !DILexicalBlock(scope: !154, file: !3, line: 99, column: 4)
!166 = !DILocation(line: 100, column: 14, scope: !165)
!167 = !DILocation(line: 100, column: 20, scope: !165)
!168 = !DILocation(line: 101, column: 6, scope: !165)
!169 = !DILocation(line: 103, column: 4, scope: !165)
!170 = !DILocation(line: 103, column: 16, scope: !165)
!171 = !DILocation(line: 104, column: 14, scope: !165)
!172 = !DILocation(line: 104, column: 16, scope: !165)
!173 = !DILocation(line: 105, column: 14, scope: !165)
!174 = !DILocation(line: 105, column: 16, scope: !165)
!175 = !DILocation(line: 0, scope: !154)
!176 = !DILocation(line: 86, column: 26, scope: !131)
!177 = distinct !{!177, !133, !178, !179, !180}
!178 = !DILocation(line: 108, column: 3, scope: !132)
!179 = !{!"llvm.loop.mustprogress"}
!180 = !{!"llvm.loop.unroll.disable"}
!181 = !DILocation(line: 110, column: 20, scope: !28)
!182 = !DILocation(line: 110, column: 12, scope: !28)
!183 = !DILocation(line: 112, column: 16, scope: !184)
!184 = distinct !DILexicalBlock(scope: !136, file: !3, line: 112, column: 2)
!185 = !DILocation(line: 113, column: 27, scope: !184)
!186 = !DILocation(line: 113, column: 36, scope: !184)
!187 = !DILocation(line: 113, column: 48, scope: !184)
!188 = !DILocation(line: 113, column: 39, scope: !184)
!189 = !DILocation(line: 113, column: 60, scope: !184)
!190 = !DILocation(line: 113, column: 51, scope: !184)
!191 = !DILocation(line: 113, column: 72, scope: !184)
!192 = !DILocation(line: 113, column: 63, scope: !184)
!193 = !DILocation(line: 113, column: 3, scope: !184)
!194 = !DILocation(line: 112, column: 24, scope: !184)
!195 = distinct !{!195, !135, !196, !179, !180}
!196 = !DILocation(line: 113, column: 77, scope: !136)
!197 = !DILocation(line: 114, column: 2, scope: !28)
!198 = distinct !DISubprogram(name: "OpenFrameBuffer", scope: !3, file: !3, line: 129, type: !199, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{null}
!201 = !{!202, !203}
!202 = !DILocalVariable(name: "i", scope: !198, file: !3, line: 131, type: !8)
!203 = !DILocalVariable(name: "fb", scope: !198, file: !3, line: 132, type: !92)
!204 = !DILocation(line: 134, column: 50, scope: !198)
!205 = !DILocation(line: 134, column: 59, scope: !198)
!206 = !DILocation(line: 134, column: 29, scope: !198)
!207 = !DILocation(line: 134, column: 27, scope: !198)
!208 = !DILocation(line: 0, scope: !198)
!209 = !DILocation(line: 136, column: 26, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 136, column: 2)
!211 = distinct !DILexicalBlock(scope: !198, file: !3, line: 136, column: 2)
!212 = !DILocation(line: 136, column: 16, scope: !210)
!213 = !DILocation(line: 136, column: 2, scope: !211)
!214 = !DILocation(line: 138, column: 9, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !3, line: 137, column: 3)
!216 = !DILocation(line: 139, column: 7, scope: !215)
!217 = !DILocation(line: 139, column: 9, scope: !215)
!218 = !DILocation(line: 140, column: 7, scope: !215)
!219 = !DILocation(line: 140, column: 9, scope: !215)
!220 = !DILocation(line: 141, column: 5, scope: !215)
!221 = !DILocation(line: 136, column: 38, scope: !210)
!222 = distinct !{!222, !213, !223, !179, !180}
!223 = !DILocation(line: 142, column: 3, scope: !211)
!224 = !DILocation(line: 143, column: 2, scope: !198)
!225 = !DISubprogram(name: "GlobalMalloc", scope: !6, file: !6, line: 909, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !231)
!226 = !DISubroutineType(types: !227)
!227 = !{!82, !228, !229}
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "UINT", file: !6, line: 298, baseType: !86)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAR", file: !6, line: 287, baseType: !10)
!231 = !{}
!232 = distinct !DISubprogram(name: "AddPixelColor", scope: !3, file: !3, line: 161, type: !233, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235, !8, !8}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "REAL", file: !6, line: 310, baseType: !237)
!237 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!238 = !{!239, !240, !241, !242, !243}
!239 = !DILocalVariable(name: "c", arg: 1, scope: !232, file: !3, line: 161, type: !235)
!240 = !DILocalVariable(name: "x", arg: 2, scope: !232, file: !3, line: 161, type: !8)
!241 = !DILocalVariable(name: "y", arg: 3, scope: !232, file: !3, line: 161, type: !8)
!242 = !DILocalVariable(name: "addr", scope: !232, file: !3, line: 163, type: !8)
!243 = !DILocalVariable(name: "fb", scope: !232, file: !3, line: 164, type: !92)
!244 = !DILocation(line: 0, scope: !232)
!245 = !DILocation(line: 166, column: 17, scope: !232)
!246 = !DILocation(line: 166, column: 22, scope: !232)
!247 = !DILocation(line: 166, column: 26, scope: !232)
!248 = !DILocation(line: 167, column: 17, scope: !232)
!249 = !DILocation(line: 169, column: 16, scope: !232)
!250 = !DILocation(line: 169, column: 2, scope: !232)
!251 = !DILocation(line: 169, column: 13, scope: !232)
!252 = !DILocation(line: 170, column: 16, scope: !232)
!253 = !DILocation(line: 170, column: 11, scope: !232)
!254 = !DILocation(line: 170, column: 13, scope: !232)
!255 = !DILocation(line: 171, column: 16, scope: !232)
!256 = !DILocation(line: 171, column: 11, scope: !232)
!257 = !DILocation(line: 171, column: 13, scope: !232)
!258 = !DILocation(line: 172, column: 2, scope: !232)
!259 = distinct !DISubprogram(name: "CloseFrameBuffer", scope: !3, file: !3, line: 188, type: !260, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !229}
!262 = !{!263, !264, !265, !266, !267}
!263 = !DILocalVariable(name: "PicFileName", arg: 1, scope: !259, file: !3, line: 188, type: !229)
!264 = !DILocalVariable(name: "x", scope: !259, file: !3, line: 190, type: !8)
!265 = !DILocalVariable(name: "y", scope: !259, file: !3, line: 191, type: !8)
!266 = !DILocalVariable(name: "fb", scope: !259, file: !3, line: 192, type: !92)
!267 = !DILocalVariable(name: "pf", scope: !259, file: !3, line: 193, type: !31)
!268 = !DILocation(line: 0, scope: !259)
!269 = !DILocation(line: 195, column: 7, scope: !259)
!270 = !DILocation(line: 196, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !259, file: !3, line: 196, column: 6)
!272 = !DILocation(line: 196, column: 6, scope: !259)
!273 = !DILocation(line: 198, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !271, file: !3, line: 197, column: 3)
!275 = !DILocation(line: 199, column: 3, scope: !274)
!276 = !DILocation(line: 205, column: 16, scope: !259)
!277 = !DILocation(line: 206, column: 16, scope: !259)
!278 = !DILocation(line: 207, column: 16, scope: !259)
!279 = !DILocation(line: 210, column: 37, scope: !259)
!280 = !DILocation(line: 210, column: 29, scope: !259)
!281 = !DILocation(line: 210, column: 44, scope: !259)
!282 = !DILocation(line: 211, column: 37, scope: !259)
!283 = !DILocation(line: 211, column: 29, scope: !259)
!284 = !DILocation(line: 211, column: 44, scope: !259)
!285 = !DILocation(line: 209, column: 2, scope: !259)
!286 = !DILocation(line: 216, column: 26, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 216, column: 2)
!288 = distinct !DILexicalBlock(scope: !259, file: !3, line: 216, column: 2)
!289 = !DILocation(line: 216, column: 16, scope: !287)
!290 = !DILocation(line: 216, column: 2, scope: !288)
!291 = !DILocation(line: 218, column: 27, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 218, column: 3)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 218, column: 3)
!294 = distinct !DILexicalBlock(scope: !287, file: !3, line: 217, column: 3)
!295 = !DILocation(line: 218, column: 17, scope: !292)
!296 = !DILocation(line: 218, column: 3, scope: !293)
!297 = !DILocation(line: 220, column: 14, scope: !298)
!298 = distinct !DILexicalBlock(scope: !292, file: !3, line: 219, column: 4)
!299 = !DILocation(line: 221, column: 14, scope: !298)
!300 = !DILocation(line: 222, column: 14, scope: !298)
!301 = !DILocation(line: 223, column: 14, scope: !298)
!302 = !DILocation(line: 223, column: 12, scope: !298)
!303 = !DILocation(line: 224, column: 14, scope: !298)
!304 = !DILocation(line: 224, column: 12, scope: !298)
!305 = !DILocation(line: 225, column: 14, scope: !298)
!306 = !DILocation(line: 225, column: 12, scope: !298)
!307 = !DILocation(line: 218, column: 34, scope: !292)
!308 = distinct !{!308, !296, !309, !179, !180}
!309 = !DILocation(line: 226, column: 4, scope: !293)
!310 = !DILocation(line: 228, column: 3, scope: !294)
!311 = !DILocation(line: 229, column: 17, scope: !294)
!312 = !DILocation(line: 229, column: 6, scope: !294)
!313 = !DILocation(line: 216, column: 33, scope: !287)
!314 = distinct !{!314, !290, !315, !179, !180}
!315 = !DILocation(line: 230, column: 3, scope: !288)
!316 = !DILocation(line: 232, column: 2, scope: !259)
!317 = !DILocation(line: 233, column: 21, scope: !259)
!318 = !DILocation(line: 233, column: 2, scope: !259)
!319 = !DILocation(line: 234, column: 2, scope: !259)
!320 = !DISubprogram(name: "fclose", scope: !321, file: !321, line: 213, type: !322, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !231)
!321 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!322 = !DISubroutineType(types: !323)
!323 = !{!38, !31}
!324 = !DISubprogram(name: "GlobalFree", scope: !6, file: !6, line: 912, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !231)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !82}
