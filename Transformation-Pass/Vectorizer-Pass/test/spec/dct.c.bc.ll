; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r/llvm-ir/525.x264_r_bc/common/dct.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr }

@x264_dct4_weight2_tab = internal unnamed_addr constant [16 x i16] [i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128, i16 800, i16 320, i16 800, i16 320, i16 320, i16 128, i16 320, i16 128], align 16, !dbg !0
@x264_zigzag_scan4 = internal unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\04\01\02\05\08\0C\09\06\03\07\0A\0D\0E\0B\0F", [16 x i8] c"\00\01\04\02\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], align 16, !dbg !59
@x264_dct4_weight2_zigzag = dso_local local_unnamed_addr global [2 x [16 x i32]] zeroinitializer, align 16, !dbg !47
@x264_dct8_weight2_tab = internal unnamed_addr constant [64 x i16] [i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 256, i16 227, i16 410, i16 227, i16 256, i16 227, i16 410, i16 227, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201, i16 410, i16 363, i16 656, i16 363, i16 410, i16 363, i16 656, i16 363, i16 227, i16 201, i16 363, i16 201, i16 227, i16 201, i16 363, i16 201], align 16, !dbg !64
@x264_zigzag_scan8 = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\00\08\01\02\09\10\18\11\0A\03\04\0B\12\19 (!\1A\13\0C\05\06\0D\14\1B\22)081*#\1C\15\0E\07\0F\16\1D$+29:3,%\1E\17\1F&-4;<5.'/6=>7?", [64 x i8] c"\00\01\02\08\09\03\04\0A\10\0B\05\06\07\0C\11\18\12\0D\0E\0F\13\19 \1A\14\15\16\17\1B!(\22\1C\1D\1E\1F#)0*$%&'+12,-./3894567:;<=>?"], align 16, !dbg !70
@x264_dct8_weight2_zigzag = dso_local local_unnamed_addr global [2 x [64 x i32]] zeroinitializer, align 16, !dbg !54

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_dct_init(i32 noundef %cpu, ptr nocapture noundef writeonly %dctf) local_unnamed_addr #0 !dbg !82 {
entry:
  call void @llvm.dbg.value(metadata i32 %cpu, metadata !136, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata ptr %dctf, metadata !137, metadata !DIExpression()), !dbg !138
  store ptr @sub4x4_dct, ptr %dctf, align 8, !dbg !139, !tbaa !140
  %add4x4_idct = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 1, !dbg !145
  store ptr @add4x4_idct, ptr %add4x4_idct, align 8, !dbg !146, !tbaa !147
  %sub8x8_dct = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 2, !dbg !148
  store ptr @sub8x8_dct, ptr %sub8x8_dct, align 8, !dbg !149, !tbaa !150
  %sub8x8_dct_dc = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 3, !dbg !151
  store ptr @sub8x8_dct_dc, ptr %sub8x8_dct_dc, align 8, !dbg !152, !tbaa !153
  %add8x8_idct = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 4, !dbg !154
  store ptr @add8x8_idct, ptr %add8x8_idct, align 8, !dbg !155, !tbaa !156
  %add8x8_idct_dc = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 5, !dbg !157
  store ptr @add8x8_idct_dc, ptr %add8x8_idct_dc, align 8, !dbg !158, !tbaa !159
  %sub16x16_dct = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 6, !dbg !160
  store ptr @sub16x16_dct, ptr %sub16x16_dct, align 8, !dbg !161, !tbaa !162
  %add16x16_idct = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 7, !dbg !163
  store ptr @add16x16_idct, ptr %add16x16_idct, align 8, !dbg !164, !tbaa !165
  %add16x16_idct_dc = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 8, !dbg !166
  store ptr @add16x16_idct_dc, ptr %add16x16_idct_dc, align 8, !dbg !167, !tbaa !168
  %sub8x8_dct8 = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 9, !dbg !169
  store ptr @sub8x8_dct8, ptr %sub8x8_dct8, align 8, !dbg !170, !tbaa !171
  %add8x8_idct8 = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 10, !dbg !172
  store ptr @add8x8_idct8, ptr %add8x8_idct8, align 8, !dbg !173, !tbaa !174
  %sub16x16_dct8 = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 11, !dbg !175
  store ptr @sub16x16_dct8, ptr %sub16x16_dct8, align 8, !dbg !176, !tbaa !177
  %add16x16_idct8 = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 12, !dbg !178
  store ptr @add16x16_idct8, ptr %add16x16_idct8, align 8, !dbg !179, !tbaa !180
  %dct4x4dc = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 13, !dbg !181
  store ptr @dct4x4dc, ptr %dct4x4dc, align 8, !dbg !182, !tbaa !183
  %idct4x4dc = getelementptr inbounds %struct.x264_dct_function_t, ptr %dctf, i64 0, i32 14, !dbg !184
  store ptr @idct4x4dc, ptr %idct4x4dc, align 8, !dbg !185, !tbaa !186
  ret void, !dbg !187
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind uwtable
define internal void @sub4x4_dct(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #2 !dbg !188 {
entry:
  %d = alloca [16 x i16], align 16
  %tmp = alloca [16 x i16], align 16
  call void @llvm.dbg.value(metadata ptr %dct, metadata !190, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !191, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !192, metadata !DIExpression()), !dbg !211
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d) #9, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %d, metadata !193, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #9, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !194, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata ptr %d, metadata !216, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 4, metadata !221, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !222, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 16, metadata !223, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !224, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 32, metadata !225, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !234
  br label %for.cond1.preheader.us.i, !dbg !235

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %entry
  %indvars.iv10.i = phi i64 [ 0, %entry ], [ %indvars.iv.next11.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  %pix1.addr.05.us.i = phi ptr [ %pix1, %entry ], [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  %pix2.addr.04.us.i = phi ptr [ %pix2, %entry ], [ %add.ptr12.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10.i, metadata !226, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata ptr %pix1.addr.05.us.i, metadata !222, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata ptr %pix2.addr.04.us.i, metadata !224, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32 0, metadata !228, metadata !DIExpression()), !dbg !236
  %0 = shl nsw i64 %indvars.iv10.i, 2
  br label %for.body4.us.i, !dbg !237

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !228, metadata !DIExpression()), !dbg !236
  %arrayidx.us.i = getelementptr inbounds i8, ptr %pix1.addr.05.us.i, i64 %indvars.iv.i, !dbg !238
  %1 = load i8, ptr %arrayidx.us.i, align 1, !dbg !238, !tbaa !240
  %conv.us.i = zext i8 %1 to i16, !dbg !238
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %pix2.addr.04.us.i, i64 %indvars.iv.i, !dbg !241
  %2 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !241, !tbaa !240
  %conv7.us.i = zext i8 %2 to i16, !dbg !241
  %sub.us.i = sub nsw i16 %conv.us.i, %conv7.us.i, !dbg !242
  %3 = add nuw nsw i64 %indvars.iv.i, %0, !dbg !243
  %arrayidx10.us.i = getelementptr inbounds i16, ptr %d, i64 %3, !dbg !244
  store i16 %sub.us.i, ptr %arrayidx10.us.i, align 2, !dbg !245, !tbaa !246
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !248
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !228, metadata !DIExpression()), !dbg !236
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4, !dbg !249
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !237, !llvm.loop !250

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix1.addr.05.us.i, i64 16, !dbg !254
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !222, metadata !DIExpression()), !dbg !232
  %add.ptr12.us.i = getelementptr inbounds i8, ptr %pix2.addr.04.us.i, i64 32, !dbg !255
  call void @llvm.dbg.value(metadata ptr %add.ptr12.us.i, metadata !224, metadata !DIExpression()), !dbg !232
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1, !dbg !256
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11.i, metadata !226, metadata !DIExpression()), !dbg !234
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 4, !dbg !257
  br i1 %exitcond15.not.i, label %for.body, label %for.cond1.preheader.us.i, !dbg !235, !llvm.loop !258

for.body:                                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !195, metadata !DIExpression()), !dbg !260
  %4 = shl nuw nsw i64 %indvars.iv, 2, !dbg !261
  %arrayidx = getelementptr inbounds [16 x i16], ptr %d, i64 0, i64 %4, !dbg !262
  %5 = load i16, ptr %arrayidx, align 8, !dbg !262, !tbaa !246
  %conv = sext i16 %5 to i32, !dbg !262
  %6 = or i64 %4, 3, !dbg !263
  %arrayidx4 = getelementptr inbounds [16 x i16], ptr %d, i64 0, i64 %6, !dbg !264
  %7 = load i16, ptr %arrayidx4, align 2, !dbg !264, !tbaa !246
  %conv5 = sext i16 %7 to i32, !dbg !264
  %add6 = add nsw i32 %conv5, %conv, !dbg !265
  call void @llvm.dbg.value(metadata i32 %add6, metadata !197, metadata !DIExpression()), !dbg !266
  %8 = or i64 %4, 1, !dbg !267
  %arrayidx10 = getelementptr inbounds [16 x i16], ptr %d, i64 0, i64 %8, !dbg !268
  %9 = load i16, ptr %arrayidx10, align 2, !dbg !268, !tbaa !246
  %conv11199 = zext i16 %9 to i32, !dbg !268
  %10 = or i64 %4, 2, !dbg !269
  %arrayidx15 = getelementptr inbounds [16 x i16], ptr %d, i64 0, i64 %10, !dbg !270
  %11 = load i16, ptr %arrayidx15, align 4, !dbg !270, !tbaa !246
  %conv16200 = zext i16 %11 to i32, !dbg !270
  %add17 = add nuw nsw i32 %conv16200, %conv11199, !dbg !271
  call void @llvm.dbg.value(metadata i32 %add17, metadata !200, metadata !DIExpression()), !dbg !266
  %sub = sub nsw i32 %conv, %conv5, !dbg !272
  call void @llvm.dbg.value(metadata i32 %sub, metadata !201, metadata !DIExpression()), !dbg !266
  %sub38 = sub nsw i32 %conv11199, %conv16200, !dbg !273
  call void @llvm.dbg.value(metadata i32 %sub38, metadata !202, metadata !DIExpression()), !dbg !266
  %add39 = add nsw i32 %add17, %add6, !dbg !274
  %conv40 = trunc i32 %add39 to i16, !dbg !275
  %arrayidx43 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %indvars.iv, !dbg !276
  store i16 %conv40, ptr %arrayidx43, align 2, !dbg !277, !tbaa !246
  %mul44 = shl nsw i32 %sub, 1, !dbg !278
  %add45 = add nsw i32 %sub38, %mul44, !dbg !279
  %conv46 = trunc i32 %add45 to i16, !dbg !280
  %12 = add nuw nsw i64 %indvars.iv, 4, !dbg !281
  %arrayidx49 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %12, !dbg !282
  store i16 %conv46, ptr %arrayidx49, align 2, !dbg !283, !tbaa !246
  %sub50 = sub nsw i32 %add6, %add17, !dbg !284
  %conv51 = trunc i32 %sub50 to i16, !dbg !285
  %13 = add nuw nsw i64 %indvars.iv, 8, !dbg !286
  %arrayidx54 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %13, !dbg !287
  store i16 %conv51, ptr %arrayidx54, align 2, !dbg !288, !tbaa !246
  %mul55.neg = mul i32 %sub38, 65534, !dbg !289
  %sub56 = add i32 %mul55.neg, %sub, !dbg !290
  %conv57 = trunc i32 %sub56 to i16, !dbg !291
  %14 = add nuw nsw i64 %indvars.iv, 12, !dbg !292
  %arrayidx60 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %14, !dbg !293
  store i16 %conv57, ptr %arrayidx60, align 2, !dbg !294, !tbaa !246
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !295
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !195, metadata !DIExpression()), !dbg !260
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !296
  br i1 %exitcond.not, label %for.body66, label %for.body, !dbg !297, !llvm.loop !298

for.cond.cleanup65:                               ; preds = %for.body66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #9, !dbg !300
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d) #9, !dbg !300
  ret void, !dbg !300

for.body66:                                       ; preds = %for.body, %for.body66
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %for.body66 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv191, metadata !203, metadata !DIExpression()), !dbg !301
  %15 = shl nuw nsw i64 %indvars.iv191, 2, !dbg !302
  %arrayidx71 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %15, !dbg !303
  %16 = load i16, ptr %arrayidx71, align 8, !dbg !303, !tbaa !246
  %conv72 = sext i16 %16 to i32, !dbg !303
  %17 = or i64 %15, 3, !dbg !304
  %arrayidx76 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %17, !dbg !305
  %18 = load i16, ptr %arrayidx76, align 2, !dbg !305, !tbaa !246
  %conv77 = sext i16 %18 to i32, !dbg !305
  %add78 = add nsw i32 %conv77, %conv72, !dbg !306
  call void @llvm.dbg.value(metadata i32 %add78, metadata !205, metadata !DIExpression()), !dbg !307
  %19 = or i64 %15, 1, !dbg !308
  %arrayidx83 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %19, !dbg !309
  %20 = load i16, ptr %arrayidx83, align 2, !dbg !309, !tbaa !246
  %conv84201 = zext i16 %20 to i32, !dbg !309
  %21 = or i64 %15, 2, !dbg !310
  %arrayidx88 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %21, !dbg !311
  %22 = load i16, ptr %arrayidx88, align 4, !dbg !311, !tbaa !246
  %conv89202 = zext i16 %22 to i32, !dbg !311
  %add90 = add nuw nsw i32 %conv89202, %conv84201, !dbg !312
  call void @llvm.dbg.value(metadata i32 %add90, metadata !208, metadata !DIExpression()), !dbg !307
  %sub102 = sub nsw i32 %conv72, %conv77, !dbg !313
  call void @llvm.dbg.value(metadata i32 %sub102, metadata !209, metadata !DIExpression()), !dbg !307
  %sub114 = sub nsw i32 %conv84201, %conv89202, !dbg !314
  call void @llvm.dbg.value(metadata i32 %sub114, metadata !210, metadata !DIExpression()), !dbg !307
  %add115 = add nsw i32 %add90, %add78, !dbg !315
  %conv116 = trunc i32 %add115 to i16, !dbg !316
  %arrayidx120 = getelementptr inbounds i16, ptr %dct, i64 %15, !dbg !317
  store i16 %conv116, ptr %arrayidx120, align 2, !dbg !318, !tbaa !246
  %mul121 = shl nsw i32 %sub102, 1, !dbg !319
  %add122 = add nsw i32 %sub114, %mul121, !dbg !320
  %conv123 = trunc i32 %add122 to i16, !dbg !321
  %arrayidx127 = getelementptr inbounds i16, ptr %dct, i64 %19, !dbg !322
  store i16 %conv123, ptr %arrayidx127, align 2, !dbg !323, !tbaa !246
  %sub128 = sub nsw i32 %add78, %add90, !dbg !324
  %conv129 = trunc i32 %sub128 to i16, !dbg !325
  %arrayidx133 = getelementptr inbounds i16, ptr %dct, i64 %21, !dbg !326
  store i16 %conv129, ptr %arrayidx133, align 2, !dbg !327, !tbaa !246
  %mul134.neg = mul i32 %sub114, 65534, !dbg !328
  %sub135 = add i32 %mul134.neg, %sub102, !dbg !329
  %conv136 = trunc i32 %sub135 to i16, !dbg !330
  %arrayidx140 = getelementptr inbounds i16, ptr %dct, i64 %17, !dbg !331
  store i16 %conv136, ptr %arrayidx140, align 2, !dbg !332, !tbaa !246
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1, !dbg !333
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next192, metadata !203, metadata !DIExpression()), !dbg !301
  %exitcond198.not = icmp eq i64 %indvars.iv.next192, 4, !dbg !334
  br i1 %exitcond198.not, label %for.cond.cleanup65, label %for.body66, !dbg !335, !llvm.loop !336
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @add4x4_idct(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #2 !dbg !338 {
entry:
  %d = alloca [16 x i16], align 16
  %tmp = alloca [16 x i16], align 16
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !340, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.value(metadata ptr %dct, metadata !341, metadata !DIExpression()), !dbg !366
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d) #9, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %d, metadata !342, metadata !DIExpression()), !dbg !368
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #9, !dbg !369
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !343, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.value(metadata i32 0, metadata !344, metadata !DIExpression()), !dbg !371
  br label %for.body, !dbg !372

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !344, metadata !DIExpression()), !dbg !371
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !373
  %0 = load i16, ptr %arrayidx, align 2, !dbg !373, !tbaa !246
  %conv241 = zext i16 %0 to i32, !dbg !373
  %1 = add nuw nsw i64 %indvars.iv, 8, !dbg !374
  %arrayidx3 = getelementptr inbounds i16, ptr %dct, i64 %1, !dbg !375
  %2 = load i16, ptr %arrayidx3, align 2, !dbg !375, !tbaa !246
  %conv4242 = zext i16 %2 to i32, !dbg !375
  %add5 = add nuw nsw i32 %conv4242, %conv241, !dbg !376
  call void @llvm.dbg.value(metadata i32 %add5, metadata !346, metadata !DIExpression()), !dbg !377
  %sub = sub nsw i32 %conv241, %conv4242, !dbg !378
  call void @llvm.dbg.value(metadata i32 %sub, metadata !349, metadata !DIExpression()), !dbg !377
  %3 = add nuw nsw i64 %indvars.iv, 4, !dbg !379
  %arrayidx16 = getelementptr inbounds i16, ptr %dct, i64 %3, !dbg !380
  %4 = load i16, ptr %arrayidx16, align 2, !dbg !380, !tbaa !246
  %conv17 = sext i16 %4 to i32, !dbg !380
  %5 = add nuw nsw i64 %indvars.iv, 12, !dbg !381
  %arrayidx20 = getelementptr inbounds i16, ptr %dct, i64 %5, !dbg !382
  %6 = load i16, ptr %arrayidx20, align 2, !dbg !382, !tbaa !246
  %conv21 = sext i16 %6 to i32, !dbg !382
  %shr = ashr i32 %conv21, 1, !dbg !383
  %add22 = add nsw i32 %shr, %conv17, !dbg !384
  call void @llvm.dbg.value(metadata i32 %add22, metadata !350, metadata !DIExpression()), !dbg !377
  %shr27 = ashr i32 %conv17, 1, !dbg !385
  %sub32 = sub nsw i32 %shr27, %conv21, !dbg !386
  call void @llvm.dbg.value(metadata i32 %sub32, metadata !351, metadata !DIExpression()), !dbg !377
  %add33 = add nsw i32 %add22, %add5, !dbg !387
  %conv34 = trunc i32 %add33 to i16, !dbg !388
  %7 = shl nuw nsw i64 %indvars.iv, 2, !dbg !389
  %arrayidx37 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %7, !dbg !390
  store i16 %conv34, ptr %arrayidx37, align 8, !dbg !391, !tbaa !246
  %add38 = add nsw i32 %sub32, %sub, !dbg !392
  %conv39 = trunc i32 %add38 to i16, !dbg !393
  %8 = or i64 %7, 1, !dbg !394
  %arrayidx43 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %8, !dbg !395
  store i16 %conv39, ptr %arrayidx43, align 2, !dbg !396, !tbaa !246
  %sub44 = sub nsw i32 %sub, %sub32, !dbg !397
  %conv45 = trunc i32 %sub44 to i16, !dbg !398
  %9 = or i64 %7, 2, !dbg !399
  %arrayidx49 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %9, !dbg !400
  store i16 %conv45, ptr %arrayidx49, align 4, !dbg !401, !tbaa !246
  %sub50 = sub nsw i32 %add5, %add22, !dbg !402
  %conv51 = trunc i32 %sub50 to i16, !dbg !403
  %10 = or i64 %7, 3, !dbg !404
  %arrayidx55 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %10, !dbg !405
  store i16 %conv51, ptr %arrayidx55, align 2, !dbg !406, !tbaa !246
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !407
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !344, metadata !DIExpression()), !dbg !371
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !408
  br i1 %exitcond.not, label %for.body61, label %for.body, !dbg !372, !llvm.loop !409

for.body61:                                       ; preds = %for.body, %for.body61
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %for.body61 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv224, metadata !352, metadata !DIExpression()), !dbg !411
  %arrayidx65 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %indvars.iv224, !dbg !412
  %11 = load i16, ptr %arrayidx65, align 2, !dbg !412, !tbaa !246
  %conv66 = sext i16 %11 to i32, !dbg !412
  %12 = add nuw nsw i64 %indvars.iv224, 8, !dbg !413
  %arrayidx69 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %12, !dbg !414
  %13 = load i16, ptr %arrayidx69, align 2, !dbg !414, !tbaa !246
  %conv70 = sext i16 %13 to i32, !dbg !414
  %add71 = add nsw i32 %conv70, %conv66, !dbg !415
  call void @llvm.dbg.value(metadata i32 %add71, metadata !354, metadata !DIExpression()), !dbg !416
  %sub81 = sub nsw i32 %conv66, %conv70, !dbg !417
  call void @llvm.dbg.value(metadata i32 %sub81, metadata !357, metadata !DIExpression()), !dbg !416
  %14 = add nuw nsw i64 %indvars.iv224, 4, !dbg !418
  %arrayidx85 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %14, !dbg !419
  %15 = load i16, ptr %arrayidx85, align 2, !dbg !419, !tbaa !246
  %conv86 = sext i16 %15 to i32, !dbg !419
  %16 = add nuw nsw i64 %indvars.iv224, 12, !dbg !420
  %arrayidx89 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %16, !dbg !421
  %17 = load i16, ptr %arrayidx89, align 2, !dbg !421, !tbaa !246
  %conv90 = sext i16 %17 to i32, !dbg !421
  %shr91 = ashr i32 %conv90, 1, !dbg !422
  %add92 = add nsw i32 %shr91, %conv86, !dbg !423
  call void @llvm.dbg.value(metadata i32 %add92, metadata !358, metadata !DIExpression()), !dbg !416
  %shr98 = ashr i32 %conv86, 1, !dbg !424
  %sub103 = sub nsw i32 %shr98, %conv90, !dbg !425
  call void @llvm.dbg.value(metadata i32 %sub103, metadata !359, metadata !DIExpression()), !dbg !416
  %add104 = add nsw i32 %add71, 32, !dbg !426
  %add105 = add nsw i32 %add104, %add92, !dbg !427
  %18 = lshr i32 %add105, 6, !dbg !428
  %conv107 = trunc i32 %18 to i16, !dbg !429
  %arrayidx110 = getelementptr inbounds [16 x i16], ptr %d, i64 0, i64 %indvars.iv224, !dbg !430
  store i16 %conv107, ptr %arrayidx110, align 2, !dbg !431, !tbaa !246
  %add111 = add nsw i32 %sub81, 32, !dbg !432
  %add112 = add nsw i32 %add111, %sub103, !dbg !433
  %19 = lshr i32 %add112, 6, !dbg !434
  %conv114 = trunc i32 %19 to i16, !dbg !435
  %arrayidx117 = getelementptr inbounds [16 x i16], ptr %d, i64 0, i64 %14, !dbg !436
  store i16 %conv114, ptr %arrayidx117, align 2, !dbg !437, !tbaa !246
  %add119 = sub nsw i32 %add111, %sub103, !dbg !438
  %20 = lshr i32 %add119, 6, !dbg !439
  %conv121 = trunc i32 %20 to i16, !dbg !440
  %arrayidx124 = getelementptr inbounds [16 x i16], ptr %d, i64 0, i64 %12, !dbg !441
  store i16 %conv121, ptr %arrayidx124, align 2, !dbg !442, !tbaa !246
  %add126 = sub nsw i32 %add104, %add92, !dbg !443
  %21 = lshr i32 %add126, 6, !dbg !444
  %conv128 = trunc i32 %21 to i16, !dbg !445
  %arrayidx131 = getelementptr inbounds [16 x i16], ptr %d, i64 0, i64 %16, !dbg !446
  store i16 %conv128, ptr %arrayidx131, align 2, !dbg !447, !tbaa !246
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1, !dbg !448
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next225, metadata !352, metadata !DIExpression()), !dbg !411
  %exitcond230.not = icmp eq i64 %indvars.iv.next225, 4, !dbg !449
  br i1 %exitcond230.not, label %for.cond140.preheader, label %for.body61, !dbg !450, !llvm.loop !451

for.cond140.preheader:                            ; preds = %for.body61, %for.cond.cleanup143
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.cond.cleanup143 ], [ 0, %for.body61 ]
  %p_dst.addr.0214 = phi ptr [ %add.ptr, %for.cond.cleanup143 ], [ %p_dst, %for.body61 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv236, metadata !360, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.0214, metadata !340, metadata !DIExpression()), !dbg !366
  %22 = shl nsw i64 %indvars.iv236, 2
  call void @llvm.dbg.value(metadata i32 0, metadata !362, metadata !DIExpression()), !dbg !454
  br label %for.body144, !dbg !455

for.cond.cleanup138:                              ; preds = %for.cond.cleanup143
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #9, !dbg !456
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d) #9, !dbg !456
  ret void, !dbg !456

for.cond.cleanup143:                              ; preds = %x264_clip_uint8.exit
  %add.ptr = getelementptr inbounds i8, ptr %p_dst.addr.0214, i64 32, !dbg !457
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !340, metadata !DIExpression()), !dbg !366
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1, !dbg !458
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next237, metadata !360, metadata !DIExpression()), !dbg !453
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, 4, !dbg !459
  br i1 %exitcond240.not, label %for.cond.cleanup138, label %for.cond140.preheader, !dbg !460, !llvm.loop !461

for.body144:                                      ; preds = %for.cond140.preheader, %x264_clip_uint8.exit
  %indvars.iv231 = phi i64 [ 0, %for.cond140.preheader ], [ %indvars.iv.next232, %x264_clip_uint8.exit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv231, metadata !362, metadata !DIExpression()), !dbg !454
  %arrayidx146 = getelementptr inbounds i8, ptr %p_dst.addr.0214, i64 %indvars.iv231, !dbg !463
  %23 = load i8, ptr %arrayidx146, align 1, !dbg !463, !tbaa !240
  %conv147 = zext i8 %23 to i32, !dbg !463
  %24 = add nuw nsw i64 %indvars.iv231, %22, !dbg !465
  %arrayidx151 = getelementptr inbounds [16 x i16], ptr %d, i64 0, i64 %24, !dbg !466
  %25 = load i16, ptr %arrayidx151, align 2, !dbg !466, !tbaa !246
  %conv152 = sext i16 %25 to i32, !dbg !466
  %add153 = add nsw i32 %conv152, %conv147, !dbg !467
  call void @llvm.dbg.value(metadata i32 %add153, metadata !468, metadata !DIExpression()), !dbg !473
  %tobool.not.i = icmp ult i32 %add153, 256, !dbg !475
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !476

cond.true.i:                                      ; preds = %for.body144
  %26 = icmp sgt i32 %add153, 0, !dbg !477
  %shr.i = sext i1 %26 to i32, !dbg !477
  br label %x264_clip_uint8.exit, !dbg !476

x264_clip_uint8.exit:                             ; preds = %for.body144, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %add153, %for.body144 ], !dbg !476
  %conv.i = trunc i32 %cond.i to i8, !dbg !476
  store i8 %conv.i, ptr %arrayidx146, align 1, !dbg !478, !tbaa !240
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1, !dbg !479
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next232, metadata !362, metadata !DIExpression()), !dbg !454
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, 4, !dbg !480
  br i1 %exitcond235.not, label %for.cond.cleanup143, label %for.body144, !dbg !455, !llvm.loop !481
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @sub8x8_dct(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #2 !dbg !483 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !485, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !486, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !487, metadata !DIExpression()), !dbg !488
  tail call void @sub4x4_dct(ptr noundef %dct, ptr noundef %pix1, ptr noundef %pix2), !dbg !489
  %arrayidx3 = getelementptr inbounds [16 x i16], ptr %dct, i64 1, !dbg !490
  %arrayidx5 = getelementptr inbounds i8, ptr %pix1, i64 4, !dbg !491
  %arrayidx6 = getelementptr inbounds i8, ptr %pix2, i64 4, !dbg !492
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3, ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx6), !dbg !493
  %arrayidx7 = getelementptr inbounds [16 x i16], ptr %dct, i64 2, !dbg !494
  %arrayidx9 = getelementptr inbounds i8, ptr %pix1, i64 64, !dbg !495
  %arrayidx10 = getelementptr inbounds i8, ptr %pix2, i64 128, !dbg !496
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7, ptr noundef nonnull %arrayidx9, ptr noundef nonnull %arrayidx10), !dbg !497
  %arrayidx11 = getelementptr inbounds [16 x i16], ptr %dct, i64 3, !dbg !498
  %arrayidx13 = getelementptr inbounds i8, ptr %pix1, i64 68, !dbg !499
  %arrayidx14 = getelementptr inbounds i8, ptr %pix2, i64 132, !dbg !500
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11, ptr noundef nonnull %arrayidx13, ptr noundef nonnull %arrayidx14), !dbg !501
  ret void, !dbg !502
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @sub8x8_dct_dc(ptr nocapture noundef %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #2 !dbg !503 {
entry:
  %d.i207 = alloca [16 x i16], align 16
  %d.i140 = alloca [16 x i16], align 16
  %d.i73 = alloca [16 x i16], align 16
  %d.i = alloca [16 x i16], align 16
  call void @llvm.dbg.value(metadata ptr %dct, metadata !505, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !506, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !507, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !513, metadata !DIExpression()) #9, !dbg !521
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !518, metadata !DIExpression()) #9, !dbg !521
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d.i) #9, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %d.i, metadata !519, metadata !DIExpression()) #9, !dbg !524
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()) #9, !dbg !521
  call void @llvm.dbg.value(metadata ptr %d.i, metadata !216, metadata !DIExpression()) #9, !dbg !525
  call void @llvm.dbg.value(metadata i32 4, metadata !221, metadata !DIExpression()) #9, !dbg !525
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !222, metadata !DIExpression()) #9, !dbg !525
  call void @llvm.dbg.value(metadata i32 16, metadata !223, metadata !DIExpression()) #9, !dbg !525
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !224, metadata !DIExpression()) #9, !dbg !525
  call void @llvm.dbg.value(metadata i32 32, metadata !225, metadata !DIExpression()) #9, !dbg !525
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()) #9, !dbg !527
  br label %for.cond1.preheader.us.i.i, !dbg !528

for.cond1.preheader.us.i.i:                       ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i.i, %entry
  %indvars.iv10.i.i = phi i64 [ 0, %entry ], [ %indvars.iv.next11.i.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i ]
  %pix1.addr.05.us.i.i = phi ptr [ %pix1, %entry ], [ %add.ptr.us.i.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i ]
  %pix2.addr.04.us.i.i = phi ptr [ %pix2, %entry ], [ %add.ptr12.us.i.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10.i.i, metadata !226, metadata !DIExpression()) #9, !dbg !527
  call void @llvm.dbg.value(metadata ptr %pix1.addr.05.us.i.i, metadata !222, metadata !DIExpression()) #9, !dbg !525
  call void @llvm.dbg.value(metadata ptr %pix2.addr.04.us.i.i, metadata !224, metadata !DIExpression()) #9, !dbg !525
  call void @llvm.dbg.value(metadata i32 0, metadata !228, metadata !DIExpression()) #9, !dbg !529
  %0 = shl nsw i64 %indvars.iv10.i.i, 2
  br label %for.body4.us.i.i, !dbg !530

for.body4.us.i.i:                                 ; preds = %for.body4.us.i.i, %for.cond1.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %for.cond1.preheader.us.i.i ], [ %indvars.iv.next.i.i, %for.body4.us.i.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i, metadata !228, metadata !DIExpression()) #9, !dbg !529
  %arrayidx.us.i.i = getelementptr inbounds i8, ptr %pix1.addr.05.us.i.i, i64 %indvars.iv.i.i, !dbg !531
  %1 = load i8, ptr %arrayidx.us.i.i, align 1, !dbg !531, !tbaa !240
  %conv.us.i.i = zext i8 %1 to i16, !dbg !531
  %arrayidx6.us.i.i = getelementptr inbounds i8, ptr %pix2.addr.04.us.i.i, i64 %indvars.iv.i.i, !dbg !532
  %2 = load i8, ptr %arrayidx6.us.i.i, align 1, !dbg !532, !tbaa !240
  %conv7.us.i.i = zext i8 %2 to i16, !dbg !532
  %sub.us.i.i = sub nsw i16 %conv.us.i.i, %conv7.us.i.i, !dbg !533
  %3 = add nuw nsw i64 %indvars.iv.i.i, %0, !dbg !534
  %arrayidx10.us.i.i = getelementptr inbounds i16, ptr %d.i, i64 %3, !dbg !535
  store i16 %sub.us.i.i, ptr %arrayidx10.us.i.i, align 2, !dbg !536, !tbaa !246
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1, !dbg !537
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i, metadata !228, metadata !DIExpression()) #9, !dbg !529
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 4, !dbg !538
  br i1 %exitcond.not.i.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i.i, label %for.body4.us.i.i, !dbg !530, !llvm.loop !539

for.cond1.for.cond.cleanup3_crit_edge.us.i.i:     ; preds = %for.body4.us.i.i
  %add.ptr.us.i.i = getelementptr inbounds i8, ptr %pix1.addr.05.us.i.i, i64 16, !dbg !541
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i.i, metadata !222, metadata !DIExpression()) #9, !dbg !525
  %add.ptr12.us.i.i = getelementptr inbounds i8, ptr %pix2.addr.04.us.i.i, i64 32, !dbg !542
  call void @llvm.dbg.value(metadata ptr %add.ptr12.us.i.i, metadata !224, metadata !DIExpression()) #9, !dbg !525
  %indvars.iv.next11.i.i = add nuw nsw i64 %indvars.iv10.i.i, 1, !dbg !543
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11.i.i, metadata !226, metadata !DIExpression()) #9, !dbg !527
  %exitcond15.not.i.i = icmp eq i64 %indvars.iv.next11.i.i, 4, !dbg !544
  br i1 %exitcond15.not.i.i, label %sub4x4_dct_dc.exit, label %for.cond1.preheader.us.i.i, !dbg !528, !llvm.loop !545

sub4x4_dct_dc.exit:                               ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i.i
  %4 = load i16, ptr %d.i, align 16, !dbg !547, !tbaa !246
  %arrayidx1.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 1, !dbg !548
  %5 = load i16, ptr %arrayidx1.i, align 2, !dbg !548, !tbaa !246
  %arrayidx3.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 2, !dbg !549
  %6 = load i16, ptr %arrayidx3.i, align 4, !dbg !549, !tbaa !246
  %arrayidx6.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 3, !dbg !550
  %7 = load i16, ptr %arrayidx6.i, align 2, !dbg !550, !tbaa !246
  %arrayidx9.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 4, !dbg !551
  %8 = load i16, ptr %arrayidx9.i, align 8, !dbg !551, !tbaa !246
  %arrayidx12.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 5, !dbg !552
  %9 = load i16, ptr %arrayidx12.i, align 2, !dbg !552, !tbaa !246
  %arrayidx15.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 6, !dbg !553
  %10 = load i16, ptr %arrayidx15.i, align 4, !dbg !553, !tbaa !246
  %arrayidx18.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 7, !dbg !554
  %11 = load i16, ptr %arrayidx18.i, align 2, !dbg !554, !tbaa !246
  call void @llvm.dbg.value(metadata i32 undef, metadata !520, metadata !DIExpression()) #9, !dbg !521
  %arrayidx22.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 8, !dbg !555
  %12 = load i16, ptr %arrayidx22.i, align 16, !dbg !555, !tbaa !246
  %arrayidx24.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 9, !dbg !556
  %13 = load i16, ptr %arrayidx24.i, align 2, !dbg !556, !tbaa !246
  %arrayidx27.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 10, !dbg !557
  %14 = load i16, ptr %arrayidx27.i, align 4, !dbg !557, !tbaa !246
  %arrayidx30.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 11, !dbg !558
  %15 = load i16, ptr %arrayidx30.i, align 2, !dbg !558, !tbaa !246
  %arrayidx33.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 12, !dbg !559
  %16 = load i16, ptr %arrayidx33.i, align 8, !dbg !559, !tbaa !246
  %arrayidx36.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 13, !dbg !560
  %17 = load i16, ptr %arrayidx36.i, align 2, !dbg !560, !tbaa !246
  %arrayidx39.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 14, !dbg !561
  %18 = load i16, ptr %arrayidx39.i, align 4, !dbg !561, !tbaa !246
  %arrayidx42.i = getelementptr inbounds [16 x i16], ptr %d.i, i64 0, i64 15, !dbg !562
  %19 = load i16, ptr %arrayidx42.i, align 2, !dbg !562, !tbaa !246
  %add26.i = add i16 %5, %4, !dbg !563
  %add29.i = add i16 %add26.i, %6, !dbg !564
  %add32.i = add i16 %add29.i, %7, !dbg !565
  %add35.i = add i16 %add32.i, %8, !dbg !566
  %add38.i = add i16 %add35.i, %9, !dbg !567
  %add41.i = add i16 %add38.i, %10, !dbg !568
  %add44.i = add i16 %add41.i, %11, !dbg !569
  %add.i = add i16 %add44.i, %12, !dbg !570
  %add5.i = add i16 %add.i, %13, !dbg !571
  %add8.i = add i16 %add5.i, %14, !dbg !572
  %add11.i = add i16 %add8.i, %15, !dbg !573
  %add14.i = add i16 %add11.i, %16, !dbg !574
  %add17.i = add i16 %add14.i, %17, !dbg !575
  %add20.i = add i16 %add17.i, %18, !dbg !576
  %add45.i = add i16 %add20.i, %19, !dbg !577
  call void @llvm.dbg.value(metadata !DIArgList(i16 undef, i16 %19, i16 %18, i16 %17, i16 %16, i16 %15, i16 %14, i16 %13, i16 %12, i16 %11, i16 %10, i16 %9, i16 %8, i16 %7, i16 undef, i16 undef), metadata !520, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 15, DW_OP_plus, DW_OP_LLVM_arg, 14, DW_OP_plus, DW_OP_LLVM_arg, 13, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !521
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d.i) #9, !dbg !578
  store i16 %add45.i, ptr %dct, align 2, !dbg !579, !tbaa !246
  %arrayidx3 = getelementptr inbounds i8, ptr %pix1, i64 4, !dbg !580
  %arrayidx4 = getelementptr inbounds i8, ptr %pix2, i64 4, !dbg !581
  call void @llvm.dbg.value(metadata ptr %arrayidx3, metadata !513, metadata !DIExpression()) #9, !dbg !582
  call void @llvm.dbg.value(metadata ptr %arrayidx4, metadata !518, metadata !DIExpression()) #9, !dbg !582
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d.i73) #9, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %d.i73, metadata !519, metadata !DIExpression()) #9, !dbg !585
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()) #9, !dbg !582
  call void @llvm.dbg.value(metadata ptr %d.i73, metadata !216, metadata !DIExpression()) #9, !dbg !586
  call void @llvm.dbg.value(metadata i32 4, metadata !221, metadata !DIExpression()) #9, !dbg !586
  call void @llvm.dbg.value(metadata ptr %arrayidx3, metadata !222, metadata !DIExpression()) #9, !dbg !586
  call void @llvm.dbg.value(metadata i32 16, metadata !223, metadata !DIExpression()) #9, !dbg !586
  call void @llvm.dbg.value(metadata ptr %arrayidx4, metadata !224, metadata !DIExpression()) #9, !dbg !586
  call void @llvm.dbg.value(metadata i32 32, metadata !225, metadata !DIExpression()) #9, !dbg !586
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()) #9, !dbg !588
  br label %for.cond1.preheader.us.i.i77, !dbg !589

for.cond1.preheader.us.i.i77:                     ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i.i92, %sub4x4_dct_dc.exit
  %indvars.iv10.i.i74 = phi i64 [ 0, %sub4x4_dct_dc.exit ], [ %indvars.iv.next11.i.i90, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i92 ]
  %pix1.addr.05.us.i.i75 = phi ptr [ %arrayidx3, %sub4x4_dct_dc.exit ], [ %add.ptr.us.i.i88, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i92 ]
  %pix2.addr.04.us.i.i76 = phi ptr [ %arrayidx4, %sub4x4_dct_dc.exit ], [ %add.ptr12.us.i.i89, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i92 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10.i.i74, metadata !226, metadata !DIExpression()) #9, !dbg !588
  call void @llvm.dbg.value(metadata ptr %pix1.addr.05.us.i.i75, metadata !222, metadata !DIExpression()) #9, !dbg !586
  call void @llvm.dbg.value(metadata ptr %pix2.addr.04.us.i.i76, metadata !224, metadata !DIExpression()) #9, !dbg !586
  call void @llvm.dbg.value(metadata i32 0, metadata !228, metadata !DIExpression()) #9, !dbg !590
  %20 = shl nsw i64 %indvars.iv10.i.i74, 2
  br label %for.body4.us.i.i87, !dbg !591

for.body4.us.i.i87:                               ; preds = %for.body4.us.i.i87, %for.cond1.preheader.us.i.i77
  %indvars.iv.i.i78 = phi i64 [ 0, %for.cond1.preheader.us.i.i77 ], [ %indvars.iv.next.i.i85, %for.body4.us.i.i87 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i78, metadata !228, metadata !DIExpression()) #9, !dbg !590
  %arrayidx.us.i.i79 = getelementptr inbounds i8, ptr %pix1.addr.05.us.i.i75, i64 %indvars.iv.i.i78, !dbg !592
  %21 = load i8, ptr %arrayidx.us.i.i79, align 1, !dbg !592, !tbaa !240
  %conv.us.i.i80 = zext i8 %21 to i16, !dbg !592
  %arrayidx6.us.i.i81 = getelementptr inbounds i8, ptr %pix2.addr.04.us.i.i76, i64 %indvars.iv.i.i78, !dbg !593
  %22 = load i8, ptr %arrayidx6.us.i.i81, align 1, !dbg !593, !tbaa !240
  %conv7.us.i.i82 = zext i8 %22 to i16, !dbg !593
  %sub.us.i.i83 = sub nsw i16 %conv.us.i.i80, %conv7.us.i.i82, !dbg !594
  %23 = add nuw nsw i64 %indvars.iv.i.i78, %20, !dbg !595
  %arrayidx10.us.i.i84 = getelementptr inbounds i16, ptr %d.i73, i64 %23, !dbg !596
  store i16 %sub.us.i.i83, ptr %arrayidx10.us.i.i84, align 2, !dbg !597, !tbaa !246
  %indvars.iv.next.i.i85 = add nuw nsw i64 %indvars.iv.i.i78, 1, !dbg !598
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i85, metadata !228, metadata !DIExpression()) #9, !dbg !590
  %exitcond.not.i.i86 = icmp eq i64 %indvars.iv.next.i.i85, 4, !dbg !599
  br i1 %exitcond.not.i.i86, label %for.cond1.for.cond.cleanup3_crit_edge.us.i.i92, label %for.body4.us.i.i87, !dbg !591, !llvm.loop !600

for.cond1.for.cond.cleanup3_crit_edge.us.i.i92:   ; preds = %for.body4.us.i.i87
  %add.ptr.us.i.i88 = getelementptr inbounds i8, ptr %pix1.addr.05.us.i.i75, i64 16, !dbg !602
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i.i88, metadata !222, metadata !DIExpression()) #9, !dbg !586
  %add.ptr12.us.i.i89 = getelementptr inbounds i8, ptr %pix2.addr.04.us.i.i76, i64 32, !dbg !603
  call void @llvm.dbg.value(metadata ptr %add.ptr12.us.i.i89, metadata !224, metadata !DIExpression()) #9, !dbg !586
  %indvars.iv.next11.i.i90 = add nuw nsw i64 %indvars.iv10.i.i74, 1, !dbg !604
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11.i.i90, metadata !226, metadata !DIExpression()) #9, !dbg !588
  %exitcond15.not.i.i91 = icmp eq i64 %indvars.iv.next11.i.i90, 4, !dbg !605
  br i1 %exitcond15.not.i.i91, label %sub4x4_dct_dc.exit139, label %for.cond1.preheader.us.i.i77, !dbg !589, !llvm.loop !606

sub4x4_dct_dc.exit139:                            ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i.i92
  %24 = load i16, ptr %d.i73, align 16, !dbg !608, !tbaa !246
  %arrayidx1.i94 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 1, !dbg !609
  %25 = load i16, ptr %arrayidx1.i94, align 2, !dbg !609, !tbaa !246
  %arrayidx3.i96 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 2, !dbg !610
  %26 = load i16, ptr %arrayidx3.i96, align 4, !dbg !610, !tbaa !246
  %arrayidx6.i98 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 3, !dbg !611
  %27 = load i16, ptr %arrayidx6.i98, align 2, !dbg !611, !tbaa !246
  %arrayidx9.i100 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 4, !dbg !612
  %28 = load i16, ptr %arrayidx9.i100, align 8, !dbg !612, !tbaa !246
  %arrayidx12.i102 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 5, !dbg !613
  %29 = load i16, ptr %arrayidx12.i102, align 2, !dbg !613, !tbaa !246
  %arrayidx15.i104 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 6, !dbg !614
  %30 = load i16, ptr %arrayidx15.i104, align 4, !dbg !614, !tbaa !246
  %arrayidx18.i106 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 7, !dbg !615
  %31 = load i16, ptr %arrayidx18.i106, align 2, !dbg !615, !tbaa !246
  call void @llvm.dbg.value(metadata i32 undef, metadata !520, metadata !DIExpression()) #9, !dbg !582
  %arrayidx22.i108 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 8, !dbg !616
  %32 = load i16, ptr %arrayidx22.i108, align 16, !dbg !616, !tbaa !246
  %arrayidx24.i110 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 9, !dbg !617
  %33 = load i16, ptr %arrayidx24.i110, align 2, !dbg !617, !tbaa !246
  %arrayidx27.i112 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 10, !dbg !618
  %34 = load i16, ptr %arrayidx27.i112, align 4, !dbg !618, !tbaa !246
  %arrayidx30.i114 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 11, !dbg !619
  %35 = load i16, ptr %arrayidx30.i114, align 2, !dbg !619, !tbaa !246
  %arrayidx33.i116 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 12, !dbg !620
  %36 = load i16, ptr %arrayidx33.i116, align 8, !dbg !620, !tbaa !246
  %arrayidx36.i118 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 13, !dbg !621
  %37 = load i16, ptr %arrayidx36.i118, align 2, !dbg !621, !tbaa !246
  %arrayidx39.i120 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 14, !dbg !622
  %38 = load i16, ptr %arrayidx39.i120, align 4, !dbg !622, !tbaa !246
  %arrayidx42.i122 = getelementptr inbounds [16 x i16], ptr %d.i73, i64 0, i64 15, !dbg !623
  %39 = load i16, ptr %arrayidx42.i122, align 2, !dbg !623, !tbaa !246
  %add26.i124 = add i16 %25, %24, !dbg !624
  %add29.i125 = add i16 %add26.i124, %26, !dbg !625
  %add32.i126 = add i16 %add29.i125, %27, !dbg !626
  %add35.i127 = add i16 %add32.i126, %28, !dbg !627
  %add38.i128 = add i16 %add35.i127, %29, !dbg !628
  %add41.i129 = add i16 %add38.i128, %30, !dbg !629
  %add44.i130 = add i16 %add41.i129, %31, !dbg !630
  %add.i131 = add i16 %add44.i130, %32, !dbg !631
  %add5.i132 = add i16 %add.i131, %33, !dbg !632
  %add8.i133 = add i16 %add5.i132, %34, !dbg !633
  %add11.i134 = add i16 %add8.i133, %35, !dbg !634
  %add14.i135 = add i16 %add11.i134, %36, !dbg !635
  %add17.i136 = add i16 %add14.i135, %37, !dbg !636
  %add20.i137 = add i16 %add17.i136, %38, !dbg !637
  %add45.i138 = add i16 %add20.i137, %39, !dbg !638
  call void @llvm.dbg.value(metadata !DIArgList(i16 undef, i16 %39, i16 %38, i16 %37, i16 %36, i16 %35, i16 %34, i16 %33, i16 %32, i16 %31, i16 %30, i16 %29, i16 %28, i16 %27, i16 undef, i16 undef), metadata !520, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 15, DW_OP_plus, DW_OP_LLVM_arg, 14, DW_OP_plus, DW_OP_LLVM_arg, 13, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !582
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d.i73) #9, !dbg !639
  %arrayidx7 = getelementptr inbounds i16, ptr %dct, i64 1, !dbg !640
  store i16 %add45.i138, ptr %arrayidx7, align 2, !dbg !641, !tbaa !246
  %arrayidx8 = getelementptr inbounds i8, ptr %pix1, i64 64, !dbg !642
  %arrayidx9 = getelementptr inbounds i8, ptr %pix2, i64 128, !dbg !643
  call void @llvm.dbg.value(metadata ptr %arrayidx8, metadata !513, metadata !DIExpression()) #9, !dbg !644
  call void @llvm.dbg.value(metadata ptr %arrayidx9, metadata !518, metadata !DIExpression()) #9, !dbg !644
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d.i140) #9, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %d.i140, metadata !519, metadata !DIExpression()) #9, !dbg !647
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()) #9, !dbg !644
  call void @llvm.dbg.value(metadata ptr %d.i140, metadata !216, metadata !DIExpression()) #9, !dbg !648
  call void @llvm.dbg.value(metadata i32 4, metadata !221, metadata !DIExpression()) #9, !dbg !648
  call void @llvm.dbg.value(metadata ptr %arrayidx8, metadata !222, metadata !DIExpression()) #9, !dbg !648
  call void @llvm.dbg.value(metadata i32 16, metadata !223, metadata !DIExpression()) #9, !dbg !648
  call void @llvm.dbg.value(metadata ptr %arrayidx9, metadata !224, metadata !DIExpression()) #9, !dbg !648
  call void @llvm.dbg.value(metadata i32 32, metadata !225, metadata !DIExpression()) #9, !dbg !648
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()) #9, !dbg !650
  br label %for.cond1.preheader.us.i.i144, !dbg !651

for.cond1.preheader.us.i.i144:                    ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i.i159, %sub4x4_dct_dc.exit139
  %indvars.iv10.i.i141 = phi i64 [ 0, %sub4x4_dct_dc.exit139 ], [ %indvars.iv.next11.i.i157, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i159 ]
  %pix1.addr.05.us.i.i142 = phi ptr [ %arrayidx8, %sub4x4_dct_dc.exit139 ], [ %add.ptr.us.i.i155, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i159 ]
  %pix2.addr.04.us.i.i143 = phi ptr [ %arrayidx9, %sub4x4_dct_dc.exit139 ], [ %add.ptr12.us.i.i156, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i159 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10.i.i141, metadata !226, metadata !DIExpression()) #9, !dbg !650
  call void @llvm.dbg.value(metadata ptr %pix1.addr.05.us.i.i142, metadata !222, metadata !DIExpression()) #9, !dbg !648
  call void @llvm.dbg.value(metadata ptr %pix2.addr.04.us.i.i143, metadata !224, metadata !DIExpression()) #9, !dbg !648
  call void @llvm.dbg.value(metadata i32 0, metadata !228, metadata !DIExpression()) #9, !dbg !652
  %40 = shl nsw i64 %indvars.iv10.i.i141, 2
  br label %for.body4.us.i.i154, !dbg !653

for.body4.us.i.i154:                              ; preds = %for.body4.us.i.i154, %for.cond1.preheader.us.i.i144
  %indvars.iv.i.i145 = phi i64 [ 0, %for.cond1.preheader.us.i.i144 ], [ %indvars.iv.next.i.i152, %for.body4.us.i.i154 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i145, metadata !228, metadata !DIExpression()) #9, !dbg !652
  %arrayidx.us.i.i146 = getelementptr inbounds i8, ptr %pix1.addr.05.us.i.i142, i64 %indvars.iv.i.i145, !dbg !654
  %41 = load i8, ptr %arrayidx.us.i.i146, align 1, !dbg !654, !tbaa !240
  %conv.us.i.i147 = zext i8 %41 to i16, !dbg !654
  %arrayidx6.us.i.i148 = getelementptr inbounds i8, ptr %pix2.addr.04.us.i.i143, i64 %indvars.iv.i.i145, !dbg !655
  %42 = load i8, ptr %arrayidx6.us.i.i148, align 1, !dbg !655, !tbaa !240
  %conv7.us.i.i149 = zext i8 %42 to i16, !dbg !655
  %sub.us.i.i150 = sub nsw i16 %conv.us.i.i147, %conv7.us.i.i149, !dbg !656
  %43 = add nuw nsw i64 %indvars.iv.i.i145, %40, !dbg !657
  %arrayidx10.us.i.i151 = getelementptr inbounds i16, ptr %d.i140, i64 %43, !dbg !658
  store i16 %sub.us.i.i150, ptr %arrayidx10.us.i.i151, align 2, !dbg !659, !tbaa !246
  %indvars.iv.next.i.i152 = add nuw nsw i64 %indvars.iv.i.i145, 1, !dbg !660
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i152, metadata !228, metadata !DIExpression()) #9, !dbg !652
  %exitcond.not.i.i153 = icmp eq i64 %indvars.iv.next.i.i152, 4, !dbg !661
  br i1 %exitcond.not.i.i153, label %for.cond1.for.cond.cleanup3_crit_edge.us.i.i159, label %for.body4.us.i.i154, !dbg !653, !llvm.loop !662

for.cond1.for.cond.cleanup3_crit_edge.us.i.i159:  ; preds = %for.body4.us.i.i154
  %add.ptr.us.i.i155 = getelementptr inbounds i8, ptr %pix1.addr.05.us.i.i142, i64 16, !dbg !664
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i.i155, metadata !222, metadata !DIExpression()) #9, !dbg !648
  %add.ptr12.us.i.i156 = getelementptr inbounds i8, ptr %pix2.addr.04.us.i.i143, i64 32, !dbg !665
  call void @llvm.dbg.value(metadata ptr %add.ptr12.us.i.i156, metadata !224, metadata !DIExpression()) #9, !dbg !648
  %indvars.iv.next11.i.i157 = add nuw nsw i64 %indvars.iv10.i.i141, 1, !dbg !666
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11.i.i157, metadata !226, metadata !DIExpression()) #9, !dbg !650
  %exitcond15.not.i.i158 = icmp eq i64 %indvars.iv.next11.i.i157, 4, !dbg !667
  br i1 %exitcond15.not.i.i158, label %sub4x4_dct_dc.exit206, label %for.cond1.preheader.us.i.i144, !dbg !651, !llvm.loop !668

sub4x4_dct_dc.exit206:                            ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i.i159
  %44 = load i16, ptr %d.i140, align 16, !dbg !670, !tbaa !246
  %arrayidx1.i161 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 1, !dbg !671
  %45 = load i16, ptr %arrayidx1.i161, align 2, !dbg !671, !tbaa !246
  %arrayidx3.i163 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 2, !dbg !672
  %46 = load i16, ptr %arrayidx3.i163, align 4, !dbg !672, !tbaa !246
  %arrayidx6.i165 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 3, !dbg !673
  %47 = load i16, ptr %arrayidx6.i165, align 2, !dbg !673, !tbaa !246
  %arrayidx9.i167 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 4, !dbg !674
  %48 = load i16, ptr %arrayidx9.i167, align 8, !dbg !674, !tbaa !246
  %arrayidx12.i169 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 5, !dbg !675
  %49 = load i16, ptr %arrayidx12.i169, align 2, !dbg !675, !tbaa !246
  %arrayidx15.i171 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 6, !dbg !676
  %50 = load i16, ptr %arrayidx15.i171, align 4, !dbg !676, !tbaa !246
  %arrayidx18.i173 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 7, !dbg !677
  %51 = load i16, ptr %arrayidx18.i173, align 2, !dbg !677, !tbaa !246
  call void @llvm.dbg.value(metadata i32 undef, metadata !520, metadata !DIExpression()) #9, !dbg !644
  %arrayidx22.i175 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 8, !dbg !678
  %52 = load i16, ptr %arrayidx22.i175, align 16, !dbg !678, !tbaa !246
  %arrayidx24.i177 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 9, !dbg !679
  %53 = load i16, ptr %arrayidx24.i177, align 2, !dbg !679, !tbaa !246
  %arrayidx27.i179 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 10, !dbg !680
  %54 = load i16, ptr %arrayidx27.i179, align 4, !dbg !680, !tbaa !246
  %arrayidx30.i181 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 11, !dbg !681
  %55 = load i16, ptr %arrayidx30.i181, align 2, !dbg !681, !tbaa !246
  %arrayidx33.i183 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 12, !dbg !682
  %56 = load i16, ptr %arrayidx33.i183, align 8, !dbg !682, !tbaa !246
  %arrayidx36.i185 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 13, !dbg !683
  %57 = load i16, ptr %arrayidx36.i185, align 2, !dbg !683, !tbaa !246
  %arrayidx39.i187 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 14, !dbg !684
  %58 = load i16, ptr %arrayidx39.i187, align 4, !dbg !684, !tbaa !246
  %arrayidx42.i189 = getelementptr inbounds [16 x i16], ptr %d.i140, i64 0, i64 15, !dbg !685
  %59 = load i16, ptr %arrayidx42.i189, align 2, !dbg !685, !tbaa !246
  %add26.i191 = add i16 %45, %44, !dbg !686
  %add29.i192 = add i16 %add26.i191, %46, !dbg !687
  %add32.i193 = add i16 %add29.i192, %47, !dbg !688
  %add35.i194 = add i16 %add32.i193, %48, !dbg !689
  %add38.i195 = add i16 %add35.i194, %49, !dbg !690
  %add41.i196 = add i16 %add38.i195, %50, !dbg !691
  %add44.i197 = add i16 %add41.i196, %51, !dbg !692
  %add.i198 = add i16 %add44.i197, %52, !dbg !693
  %add5.i199 = add i16 %add.i198, %53, !dbg !694
  %add8.i200 = add i16 %add5.i199, %54, !dbg !695
  %add11.i201 = add i16 %add8.i200, %55, !dbg !696
  %add14.i202 = add i16 %add11.i201, %56, !dbg !697
  %add17.i203 = add i16 %add14.i202, %57, !dbg !698
  %add20.i204 = add i16 %add17.i203, %58, !dbg !699
  %add45.i205 = add i16 %add20.i204, %59, !dbg !700
  call void @llvm.dbg.value(metadata !DIArgList(i16 undef, i16 %59, i16 %58, i16 %57, i16 %56, i16 %55, i16 %54, i16 %53, i16 %52, i16 %51, i16 %50, i16 %49, i16 %48, i16 %47, i16 undef, i16 undef), metadata !520, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 15, DW_OP_plus, DW_OP_LLVM_arg, 14, DW_OP_plus, DW_OP_LLVM_arg, 13, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 12, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 11, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 10, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 9, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 8, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 7, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 6, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 5, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 4, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_plus, DW_OP_stack_value)) #9, !dbg !644
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d.i140) #9, !dbg !701
  %arrayidx12 = getelementptr inbounds i16, ptr %dct, i64 2, !dbg !702
  store i16 %add45.i205, ptr %arrayidx12, align 2, !dbg !703, !tbaa !246
  %arrayidx13 = getelementptr inbounds i8, ptr %pix1, i64 68, !dbg !704
  %arrayidx14 = getelementptr inbounds i8, ptr %pix2, i64 132, !dbg !705
  call void @llvm.dbg.value(metadata ptr %arrayidx13, metadata !513, metadata !DIExpression()) #9, !dbg !706
  call void @llvm.dbg.value(metadata ptr %arrayidx14, metadata !518, metadata !DIExpression()) #9, !dbg !706
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d.i207) #9, !dbg !708
  call void @llvm.dbg.declare(metadata ptr %d.i207, metadata !519, metadata !DIExpression()) #9, !dbg !709
  call void @llvm.dbg.value(metadata i32 0, metadata !520, metadata !DIExpression()) #9, !dbg !706
  call void @llvm.dbg.value(metadata ptr %d.i207, metadata !216, metadata !DIExpression()) #9, !dbg !710
  call void @llvm.dbg.value(metadata i32 4, metadata !221, metadata !DIExpression()) #9, !dbg !710
  call void @llvm.dbg.value(metadata ptr %arrayidx13, metadata !222, metadata !DIExpression()) #9, !dbg !710
  call void @llvm.dbg.value(metadata i32 16, metadata !223, metadata !DIExpression()) #9, !dbg !710
  call void @llvm.dbg.value(metadata ptr %arrayidx14, metadata !224, metadata !DIExpression()) #9, !dbg !710
  call void @llvm.dbg.value(metadata i32 32, metadata !225, metadata !DIExpression()) #9, !dbg !710
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()) #9, !dbg !712
  br label %for.cond1.preheader.us.i.i211, !dbg !713

for.cond1.preheader.us.i.i211:                    ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i.i226, %sub4x4_dct_dc.exit206
  %indvars.iv10.i.i208 = phi i64 [ 0, %sub4x4_dct_dc.exit206 ], [ %indvars.iv.next11.i.i224, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i226 ]
  %pix1.addr.05.us.i.i209 = phi ptr [ %arrayidx13, %sub4x4_dct_dc.exit206 ], [ %add.ptr.us.i.i222, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i226 ]
  %pix2.addr.04.us.i.i210 = phi ptr [ %arrayidx14, %sub4x4_dct_dc.exit206 ], [ %add.ptr12.us.i.i223, %for.cond1.for.cond.cleanup3_crit_edge.us.i.i226 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10.i.i208, metadata !226, metadata !DIExpression()) #9, !dbg !712
  call void @llvm.dbg.value(metadata ptr %pix1.addr.05.us.i.i209, metadata !222, metadata !DIExpression()) #9, !dbg !710
  call void @llvm.dbg.value(metadata ptr %pix2.addr.04.us.i.i210, metadata !224, metadata !DIExpression()) #9, !dbg !710
  call void @llvm.dbg.value(metadata i32 0, metadata !228, metadata !DIExpression()) #9, !dbg !714
  %60 = shl nsw i64 %indvars.iv10.i.i208, 2
  br label %for.body4.us.i.i221, !dbg !715

for.body4.us.i.i221:                              ; preds = %for.body4.us.i.i221, %for.cond1.preheader.us.i.i211
  %indvars.iv.i.i212 = phi i64 [ 0, %for.cond1.preheader.us.i.i211 ], [ %indvars.iv.next.i.i219, %for.body4.us.i.i221 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i.i212, metadata !228, metadata !DIExpression()) #9, !dbg !714
  %arrayidx.us.i.i213 = getelementptr inbounds i8, ptr %pix1.addr.05.us.i.i209, i64 %indvars.iv.i.i212, !dbg !716
  %61 = load i8, ptr %arrayidx.us.i.i213, align 1, !dbg !716, !tbaa !240
  %conv.us.i.i214 = zext i8 %61 to i16, !dbg !716
  %arrayidx6.us.i.i215 = getelementptr inbounds i8, ptr %pix2.addr.04.us.i.i210, i64 %indvars.iv.i.i212, !dbg !717
  %62 = load i8, ptr %arrayidx6.us.i.i215, align 1, !dbg !717, !tbaa !240
  %conv7.us.i.i216 = zext i8 %62 to i16, !dbg !717
  %sub.us.i.i217 = sub nsw i16 %conv.us.i.i214, %conv7.us.i.i216, !dbg !718
  %63 = add nuw nsw i64 %indvars.iv.i.i212, %60, !dbg !719
  %arrayidx10.us.i.i218 = getelementptr inbounds i16, ptr %d.i207, i64 %63, !dbg !720
  store i16 %sub.us.i.i217, ptr %arrayidx10.us.i.i218, align 2, !dbg !721, !tbaa !246
  %indvars.iv.next.i.i219 = add nuw nsw i64 %indvars.iv.i.i212, 1, !dbg !722
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i.i219, metadata !228, metadata !DIExpression()) #9, !dbg !714
  %exitcond.not.i.i220 = icmp eq i64 %indvars.iv.next.i.i219, 4, !dbg !723
  br i1 %exitcond.not.i.i220, label %for.cond1.for.cond.cleanup3_crit_edge.us.i.i226, label %for.body4.us.i.i221, !dbg !715, !llvm.loop !724

for.cond1.for.cond.cleanup3_crit_edge.us.i.i226:  ; preds = %for.body4.us.i.i221
  %add.ptr.us.i.i222 = getelementptr inbounds i8, ptr %pix1.addr.05.us.i.i209, i64 16, !dbg !726
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i.i222, metadata !222, metadata !DIExpression()) #9, !dbg !710
  %add.ptr12.us.i.i223 = getelementptr inbounds i8, ptr %pix2.addr.04.us.i.i210, i64 32, !dbg !727
  call void @llvm.dbg.value(metadata ptr %add.ptr12.us.i.i223, metadata !224, metadata !DIExpression()) #9, !dbg !710
  %indvars.iv.next11.i.i224 = add nuw nsw i64 %indvars.iv10.i.i208, 1, !dbg !728
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11.i.i224, metadata !226, metadata !DIExpression()) #9, !dbg !712
  %exitcond15.not.i.i225 = icmp eq i64 %indvars.iv.next11.i.i224, 4, !dbg !729
  br i1 %exitcond15.not.i.i225, label %sub4x4_dct_dc.exit273, label %for.cond1.preheader.us.i.i211, !dbg !713, !llvm.loop !730

sub4x4_dct_dc.exit273:                            ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i.i226
  %64 = load i16, ptr %d.i207, align 16, !dbg !732, !tbaa !246
  %conv.i227274 = zext i16 %64 to i32, !dbg !732
  %arrayidx1.i228 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 1, !dbg !733
  %65 = load i16, ptr %arrayidx1.i228, align 2, !dbg !733, !tbaa !246
  %conv2.i229275 = zext i16 %65 to i32, !dbg !733
  %arrayidx3.i230 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 2, !dbg !734
  %66 = load i16, ptr %arrayidx3.i230, align 4, !dbg !734, !tbaa !246
  %conv4.i231276 = zext i16 %66 to i32, !dbg !734
  %arrayidx6.i232 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 3, !dbg !735
  %67 = load i16, ptr %arrayidx6.i232, align 2, !dbg !735, !tbaa !246
  %conv7.i233277 = zext i16 %67 to i32, !dbg !735
  %arrayidx9.i234 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 4, !dbg !736
  %68 = load i16, ptr %arrayidx9.i234, align 8, !dbg !736, !tbaa !246
  %conv10.i235278 = zext i16 %68 to i32, !dbg !736
  %arrayidx12.i236 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 5, !dbg !737
  %69 = load i16, ptr %arrayidx12.i236, align 2, !dbg !737, !tbaa !246
  %conv13.i237279 = zext i16 %69 to i32, !dbg !737
  %arrayidx15.i238 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 6, !dbg !738
  %70 = load i16, ptr %arrayidx15.i238, align 4, !dbg !738, !tbaa !246
  %conv16.i239280 = zext i16 %70 to i32, !dbg !738
  %arrayidx18.i240 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 7, !dbg !739
  %71 = load i16, ptr %arrayidx18.i240, align 2, !dbg !739, !tbaa !246
  %conv19.i241281 = zext i16 %71 to i32, !dbg !739
  call void @llvm.dbg.value(metadata i32 undef, metadata !520, metadata !DIExpression()) #9, !dbg !706
  %arrayidx22.i242 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 8, !dbg !740
  %72 = load i16, ptr %arrayidx22.i242, align 16, !dbg !740, !tbaa !246
  %conv23.i243282 = zext i16 %72 to i32, !dbg !740
  %arrayidx24.i244 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 9, !dbg !741
  %73 = load i16, ptr %arrayidx24.i244, align 2, !dbg !741, !tbaa !246
  %conv25.i245283 = zext i16 %73 to i32, !dbg !741
  %arrayidx27.i246 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 10, !dbg !742
  %74 = load i16, ptr %arrayidx27.i246, align 4, !dbg !742, !tbaa !246
  %conv28.i247284 = zext i16 %74 to i32, !dbg !742
  %arrayidx30.i248 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 11, !dbg !743
  %75 = load i16, ptr %arrayidx30.i248, align 2, !dbg !743, !tbaa !246
  %conv31.i249285 = zext i16 %75 to i32, !dbg !743
  %arrayidx33.i250 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 12, !dbg !744
  %76 = load i16, ptr %arrayidx33.i250, align 8, !dbg !744, !tbaa !246
  %conv34.i251286 = zext i16 %76 to i32, !dbg !744
  %arrayidx36.i252 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 13, !dbg !745
  %77 = load i16, ptr %arrayidx36.i252, align 2, !dbg !745, !tbaa !246
  %conv37.i253287 = zext i16 %77 to i32, !dbg !745
  %arrayidx39.i254 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 14, !dbg !746
  %78 = load i16, ptr %arrayidx39.i254, align 4, !dbg !746, !tbaa !246
  %conv40.i255288 = zext i16 %78 to i32, !dbg !746
  %arrayidx42.i256 = getelementptr inbounds [16 x i16], ptr %d.i207, i64 0, i64 15, !dbg !747
  %79 = load i16, ptr %arrayidx42.i256, align 2, !dbg !747, !tbaa !246
  %conv43.i257289 = zext i16 %79 to i32, !dbg !747
  %add26.i258 = add nuw nsw i32 %conv2.i229275, %conv.i227274, !dbg !748
  %add29.i259 = add nuw nsw i32 %add26.i258, %conv4.i231276, !dbg !749
  %add32.i260 = add nuw nsw i32 %add29.i259, %conv7.i233277, !dbg !750
  %add35.i261 = add nuw nsw i32 %add32.i260, %conv10.i235278, !dbg !751
  %add38.i262 = add nuw nsw i32 %add35.i261, %conv13.i237279, !dbg !752
  %add41.i263 = add nuw nsw i32 %add38.i262, %conv16.i239280, !dbg !753
  %add44.i264 = add nuw nsw i32 %add41.i263, %conv19.i241281, !dbg !754
  %add.i265 = add nuw nsw i32 %add44.i264, %conv23.i243282, !dbg !755
  %add5.i266 = add nuw nsw i32 %add.i265, %conv25.i245283, !dbg !756
  %add8.i267 = add nuw nsw i32 %add5.i266, %conv28.i247284, !dbg !757
  %add11.i268 = add nuw nsw i32 %add8.i267, %conv31.i249285, !dbg !758
  %add14.i269 = add nuw nsw i32 %add11.i268, %conv34.i251286, !dbg !759
  %add17.i270 = add nuw nsw i32 %add14.i269, %conv37.i253287, !dbg !760
  %add20.i271 = add nuw nsw i32 %add17.i270, %conv40.i255288, !dbg !761
  %add45.i272 = add nuw nsw i32 %add20.i271, %conv43.i257289, !dbg !762
  call void @llvm.dbg.value(metadata i32 %add45.i272, metadata !520, metadata !DIExpression()) #9, !dbg !706
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d.i207) #9, !dbg !763
  %arrayidx17 = getelementptr inbounds i16, ptr %dct, i64 3, !dbg !764
  %conv19290 = zext i16 %add45.i to i32, !dbg !765
  %conv21291 = zext i16 %add45.i138 to i32, !dbg !766
  %add = add nuw nsw i32 %conv21291, %conv19290, !dbg !767
  call void @llvm.dbg.value(metadata i32 %add, metadata !508, metadata !DIExpression()), !dbg !512
  %conv23292 = zext i16 %add45.i205 to i32, !dbg !768
  %sext = shl i32 %add45.i272, 16, !dbg !769
  %conv25 = ashr exact i32 %sext, 16, !dbg !769
  %add26 = add nsw i32 %conv25, %conv23292, !dbg !770
  call void @llvm.dbg.value(metadata i32 %add26, metadata !509, metadata !DIExpression()), !dbg !512
  %sub = sub nsw i32 %conv19290, %conv21291, !dbg !771
  call void @llvm.dbg.value(metadata i32 %sub, metadata !510, metadata !DIExpression()), !dbg !512
  %sub35 = sub nsw i32 %conv23292, %conv25, !dbg !772
  call void @llvm.dbg.value(metadata i32 %sub35, metadata !511, metadata !DIExpression()), !dbg !512
  %add36 = add nsw i32 %add26, %add, !dbg !773
  %conv37 = trunc i32 %add36 to i16, !dbg !774
  store i16 %conv37, ptr %dct, align 2, !dbg !775, !tbaa !246
  %add39 = add nsw i32 %sub35, %sub, !dbg !776
  %conv40 = trunc i32 %add39 to i16, !dbg !777
  store i16 %conv40, ptr %arrayidx12, align 2, !dbg !778, !tbaa !246
  %sub42 = sub nsw i32 %add, %add26, !dbg !779
  %conv43 = trunc i32 %sub42 to i16, !dbg !780
  store i16 %conv43, ptr %arrayidx7, align 2, !dbg !781, !tbaa !246
  %sub45 = sub nsw i32 %sub, %sub35, !dbg !782
  %conv46 = trunc i32 %sub45 to i16, !dbg !783
  store i16 %conv46, ptr %arrayidx17, align 2, !dbg !784, !tbaa !246
  ret void, !dbg !785
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @add8x8_idct(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #2 !dbg !786 {
entry:
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !788, metadata !DIExpression()), !dbg !790
  call void @llvm.dbg.value(metadata ptr %dct, metadata !789, metadata !DIExpression()), !dbg !790
  tail call void @add4x4_idct(ptr noundef %p_dst, ptr noundef %dct), !dbg !791
  %arrayidx2 = getelementptr inbounds i8, ptr %p_dst, i64 4, !dbg !792
  %arrayidx3 = getelementptr inbounds [16 x i16], ptr %dct, i64 1, !dbg !793
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx3), !dbg !794
  %arrayidx5 = getelementptr inbounds i8, ptr %p_dst, i64 128, !dbg !795
  %arrayidx6 = getelementptr inbounds [16 x i16], ptr %dct, i64 2, !dbg !796
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx6), !dbg !797
  %arrayidx8 = getelementptr inbounds i8, ptr %p_dst, i64 132, !dbg !798
  %arrayidx9 = getelementptr inbounds [16 x i16], ptr %dct, i64 3, !dbg !799
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx9), !dbg !800
  ret void, !dbg !801
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @add8x8_idct_dc(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #3 !dbg !802 {
entry:
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !804, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.value(metadata ptr %dct, metadata !805, metadata !DIExpression()), !dbg !806
  %0 = load i16, ptr %dct, align 2, !dbg !807, !tbaa !246
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !808, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata i16 %0, metadata !813, metadata !DIExpression()), !dbg !816
  %conv.i = sext i16 %0 to i32, !dbg !818
  %add.i = add nsw i32 %conv.i, 32, !dbg !819
  %shr.i = ashr i32 %add.i, 6, !dbg !820
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !816
  call void @llvm.dbg.value(metadata i32 0, metadata !814, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !808, metadata !DIExpression()), !dbg !816
  br label %for.body.i, !dbg !822

for.body.i:                                       ; preds = %x264_clip_uint8.exit55.i, %entry
  %i.057.i = phi i32 [ 0, %entry ], [ %inc.i, %x264_clip_uint8.exit55.i ]
  %p_dst.addr.056.i = phi ptr [ %p_dst, %entry ], [ %add.ptr.i, %x264_clip_uint8.exit55.i ]
  call void @llvm.dbg.value(metadata i32 %i.057.i, metadata !814, metadata !DIExpression()), !dbg !821
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.056.i, metadata !808, metadata !DIExpression()), !dbg !816
  %1 = load i8, ptr %p_dst.addr.056.i, align 1, !dbg !823, !tbaa !240
  %conv3.i = zext i8 %1 to i32, !dbg !823
  %add5.i = add nsw i32 %shr.i, %conv3.i, !dbg !826
  call void @llvm.dbg.value(metadata i32 %add5.i, metadata !468, metadata !DIExpression()), !dbg !827
  %tobool.not.i.i = icmp ult i32 %add5.i, 256, !dbg !829
  br i1 %tobool.not.i.i, label %x264_clip_uint8.exit.i, label %cond.true.i.i, !dbg !830

cond.true.i.i:                                    ; preds = %for.body.i
  %2 = icmp sgt i32 %add5.i, 0, !dbg !831
  %shr.i.i = sext i1 %2 to i32, !dbg !831
  br label %x264_clip_uint8.exit.i, !dbg !830

x264_clip_uint8.exit.i:                           ; preds = %cond.true.i.i, %for.body.i
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ %add5.i, %for.body.i ], !dbg !830
  %conv.i.i = trunc i32 %cond.i.i to i8, !dbg !830
  store i8 %conv.i.i, ptr %p_dst.addr.056.i, align 1, !dbg !832, !tbaa !240
  %arrayidx7.i = getelementptr inbounds i8, ptr %p_dst.addr.056.i, i64 1, !dbg !833
  %3 = load i8, ptr %arrayidx7.i, align 1, !dbg !833, !tbaa !240
  %conv8.i = zext i8 %3 to i32, !dbg !833
  %add10.i = add nsw i32 %shr.i, %conv8.i, !dbg !834
  call void @llvm.dbg.value(metadata i32 %add10.i, metadata !468, metadata !DIExpression()), !dbg !835
  %tobool.not.i38.i = icmp ult i32 %add10.i, 256, !dbg !837
  br i1 %tobool.not.i38.i, label %x264_clip_uint8.exit43.i, label %cond.true.i40.i, !dbg !838

cond.true.i40.i:                                  ; preds = %x264_clip_uint8.exit.i
  %4 = icmp sgt i32 %add10.i, 0, !dbg !839
  %shr.i39.i = sext i1 %4 to i32, !dbg !839
  br label %x264_clip_uint8.exit43.i, !dbg !838

x264_clip_uint8.exit43.i:                         ; preds = %cond.true.i40.i, %x264_clip_uint8.exit.i
  %cond.i41.i = phi i32 [ %shr.i39.i, %cond.true.i40.i ], [ %add10.i, %x264_clip_uint8.exit.i ], !dbg !838
  %conv.i42.i = trunc i32 %cond.i41.i to i8, !dbg !838
  store i8 %conv.i42.i, ptr %arrayidx7.i, align 1, !dbg !840, !tbaa !240
  %arrayidx13.i = getelementptr inbounds i8, ptr %p_dst.addr.056.i, i64 2, !dbg !841
  %5 = load i8, ptr %arrayidx13.i, align 1, !dbg !841, !tbaa !240
  %conv14.i = zext i8 %5 to i32, !dbg !841
  %add16.i = add nsw i32 %shr.i, %conv14.i, !dbg !842
  call void @llvm.dbg.value(metadata i32 %add16.i, metadata !468, metadata !DIExpression()), !dbg !843
  %tobool.not.i44.i = icmp ult i32 %add16.i, 256, !dbg !845
  br i1 %tobool.not.i44.i, label %x264_clip_uint8.exit49.i, label %cond.true.i46.i, !dbg !846

cond.true.i46.i:                                  ; preds = %x264_clip_uint8.exit43.i
  %6 = icmp sgt i32 %add16.i, 0, !dbg !847
  %shr.i45.i = sext i1 %6 to i32, !dbg !847
  br label %x264_clip_uint8.exit49.i, !dbg !846

x264_clip_uint8.exit49.i:                         ; preds = %cond.true.i46.i, %x264_clip_uint8.exit43.i
  %cond.i47.i = phi i32 [ %shr.i45.i, %cond.true.i46.i ], [ %add16.i, %x264_clip_uint8.exit43.i ], !dbg !846
  %conv.i48.i = trunc i32 %cond.i47.i to i8, !dbg !846
  store i8 %conv.i48.i, ptr %arrayidx13.i, align 1, !dbg !848, !tbaa !240
  %arrayidx19.i = getelementptr inbounds i8, ptr %p_dst.addr.056.i, i64 3, !dbg !849
  %7 = load i8, ptr %arrayidx19.i, align 1, !dbg !849, !tbaa !240
  %conv20.i = zext i8 %7 to i32, !dbg !849
  %add22.i = add nsw i32 %shr.i, %conv20.i, !dbg !850
  call void @llvm.dbg.value(metadata i32 %add22.i, metadata !468, metadata !DIExpression()), !dbg !851
  %tobool.not.i50.i = icmp ult i32 %add22.i, 256, !dbg !853
  br i1 %tobool.not.i50.i, label %x264_clip_uint8.exit55.i, label %cond.true.i52.i, !dbg !854

cond.true.i52.i:                                  ; preds = %x264_clip_uint8.exit49.i
  %8 = icmp sgt i32 %add22.i, 0, !dbg !855
  %shr.i51.i = sext i1 %8 to i32, !dbg !855
  br label %x264_clip_uint8.exit55.i, !dbg !854

x264_clip_uint8.exit55.i:                         ; preds = %cond.true.i52.i, %x264_clip_uint8.exit49.i
  %cond.i53.i = phi i32 [ %shr.i51.i, %cond.true.i52.i ], [ %add22.i, %x264_clip_uint8.exit49.i ], !dbg !854
  %conv.i54.i = trunc i32 %cond.i53.i to i8, !dbg !854
  store i8 %conv.i54.i, ptr %arrayidx19.i, align 1, !dbg !856, !tbaa !240
  %inc.i = add nuw nsw i32 %i.057.i, 1, !dbg !857
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !814, metadata !DIExpression()), !dbg !821
  %add.ptr.i = getelementptr inbounds i8, ptr %p_dst.addr.056.i, i64 32, !dbg !858
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !808, metadata !DIExpression()), !dbg !816
  %exitcond.not.i = icmp eq i32 %inc.i, 4, !dbg !859
  br i1 %exitcond.not.i, label %add4x4_idct_dc.exit, label %for.body.i, !dbg !822, !llvm.loop !860

add4x4_idct_dc.exit:                              ; preds = %x264_clip_uint8.exit55.i
  %arrayidx2 = getelementptr inbounds i8, ptr %p_dst, i64 4, !dbg !862
  %arrayidx3 = getelementptr inbounds i16, ptr %dct, i64 1, !dbg !863
  %9 = load i16, ptr %arrayidx3, align 2, !dbg !863, !tbaa !246
  call void @llvm.dbg.value(metadata ptr %arrayidx2, metadata !808, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata i16 %9, metadata !813, metadata !DIExpression()), !dbg !864
  %conv.i14 = sext i16 %9 to i32, !dbg !866
  %add.i15 = add nsw i32 %conv.i14, 32, !dbg !867
  %shr.i16 = ashr i32 %add.i15, 6, !dbg !868
  call void @llvm.dbg.value(metadata i32 %shr.i16, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !864
  call void @llvm.dbg.value(metadata i32 0, metadata !814, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr %arrayidx2, metadata !808, metadata !DIExpression()), !dbg !864
  br label %for.body.i22, !dbg !870

for.body.i22:                                     ; preds = %x264_clip_uint8.exit55.i57, %add4x4_idct_dc.exit
  %i.057.i17 = phi i32 [ 0, %add4x4_idct_dc.exit ], [ %inc.i54, %x264_clip_uint8.exit55.i57 ]
  %p_dst.addr.056.i18 = phi ptr [ %arrayidx2, %add4x4_idct_dc.exit ], [ %add.ptr.i55, %x264_clip_uint8.exit55.i57 ]
  call void @llvm.dbg.value(metadata i32 %i.057.i17, metadata !814, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.056.i18, metadata !808, metadata !DIExpression()), !dbg !864
  %10 = load i8, ptr %p_dst.addr.056.i18, align 1, !dbg !871, !tbaa !240
  %conv3.i19 = zext i8 %10 to i32, !dbg !871
  %add5.i20 = add nsw i32 %shr.i16, %conv3.i19, !dbg !872
  call void @llvm.dbg.value(metadata i32 %add5.i20, metadata !468, metadata !DIExpression()), !dbg !873
  %tobool.not.i.i21 = icmp ult i32 %add5.i20, 256, !dbg !875
  br i1 %tobool.not.i.i21, label %x264_clip_uint8.exit.i31, label %cond.true.i.i24, !dbg !876

cond.true.i.i24:                                  ; preds = %for.body.i22
  %11 = icmp sgt i32 %add5.i20, 0, !dbg !877
  %shr.i.i23 = sext i1 %11 to i32, !dbg !877
  br label %x264_clip_uint8.exit.i31, !dbg !876

x264_clip_uint8.exit.i31:                         ; preds = %cond.true.i.i24, %for.body.i22
  %cond.i.i25 = phi i32 [ %shr.i.i23, %cond.true.i.i24 ], [ %add5.i20, %for.body.i22 ], !dbg !876
  %conv.i.i26 = trunc i32 %cond.i.i25 to i8, !dbg !876
  store i8 %conv.i.i26, ptr %p_dst.addr.056.i18, align 1, !dbg !878, !tbaa !240
  %arrayidx7.i27 = getelementptr inbounds i8, ptr %p_dst.addr.056.i18, i64 1, !dbg !879
  %12 = load i8, ptr %arrayidx7.i27, align 1, !dbg !879, !tbaa !240
  %conv8.i28 = zext i8 %12 to i32, !dbg !879
  %add10.i29 = add nsw i32 %shr.i16, %conv8.i28, !dbg !880
  call void @llvm.dbg.value(metadata i32 %add10.i29, metadata !468, metadata !DIExpression()), !dbg !881
  %tobool.not.i38.i30 = icmp ult i32 %add10.i29, 256, !dbg !883
  br i1 %tobool.not.i38.i30, label %x264_clip_uint8.exit43.i40, label %cond.true.i40.i33, !dbg !884

cond.true.i40.i33:                                ; preds = %x264_clip_uint8.exit.i31
  %13 = icmp sgt i32 %add10.i29, 0, !dbg !885
  %shr.i39.i32 = sext i1 %13 to i32, !dbg !885
  br label %x264_clip_uint8.exit43.i40, !dbg !884

x264_clip_uint8.exit43.i40:                       ; preds = %cond.true.i40.i33, %x264_clip_uint8.exit.i31
  %cond.i41.i34 = phi i32 [ %shr.i39.i32, %cond.true.i40.i33 ], [ %add10.i29, %x264_clip_uint8.exit.i31 ], !dbg !884
  %conv.i42.i35 = trunc i32 %cond.i41.i34 to i8, !dbg !884
  store i8 %conv.i42.i35, ptr %arrayidx7.i27, align 1, !dbg !886, !tbaa !240
  %arrayidx13.i36 = getelementptr inbounds i8, ptr %p_dst.addr.056.i18, i64 2, !dbg !887
  %14 = load i8, ptr %arrayidx13.i36, align 1, !dbg !887, !tbaa !240
  %conv14.i37 = zext i8 %14 to i32, !dbg !887
  %add16.i38 = add nsw i32 %shr.i16, %conv14.i37, !dbg !888
  call void @llvm.dbg.value(metadata i32 %add16.i38, metadata !468, metadata !DIExpression()), !dbg !889
  %tobool.not.i44.i39 = icmp ult i32 %add16.i38, 256, !dbg !891
  br i1 %tobool.not.i44.i39, label %x264_clip_uint8.exit49.i49, label %cond.true.i46.i42, !dbg !892

cond.true.i46.i42:                                ; preds = %x264_clip_uint8.exit43.i40
  %15 = icmp sgt i32 %add16.i38, 0, !dbg !893
  %shr.i45.i41 = sext i1 %15 to i32, !dbg !893
  br label %x264_clip_uint8.exit49.i49, !dbg !892

x264_clip_uint8.exit49.i49:                       ; preds = %cond.true.i46.i42, %x264_clip_uint8.exit43.i40
  %cond.i47.i43 = phi i32 [ %shr.i45.i41, %cond.true.i46.i42 ], [ %add16.i38, %x264_clip_uint8.exit43.i40 ], !dbg !892
  %conv.i48.i44 = trunc i32 %cond.i47.i43 to i8, !dbg !892
  store i8 %conv.i48.i44, ptr %arrayidx13.i36, align 1, !dbg !894, !tbaa !240
  %arrayidx19.i45 = getelementptr inbounds i8, ptr %p_dst.addr.056.i18, i64 3, !dbg !895
  %16 = load i8, ptr %arrayidx19.i45, align 1, !dbg !895, !tbaa !240
  %conv20.i46 = zext i8 %16 to i32, !dbg !895
  %add22.i47 = add nsw i32 %shr.i16, %conv20.i46, !dbg !896
  call void @llvm.dbg.value(metadata i32 %add22.i47, metadata !468, metadata !DIExpression()), !dbg !897
  %tobool.not.i50.i48 = icmp ult i32 %add22.i47, 256, !dbg !899
  br i1 %tobool.not.i50.i48, label %x264_clip_uint8.exit55.i57, label %cond.true.i52.i51, !dbg !900

cond.true.i52.i51:                                ; preds = %x264_clip_uint8.exit49.i49
  %17 = icmp sgt i32 %add22.i47, 0, !dbg !901
  %shr.i51.i50 = sext i1 %17 to i32, !dbg !901
  br label %x264_clip_uint8.exit55.i57, !dbg !900

x264_clip_uint8.exit55.i57:                       ; preds = %cond.true.i52.i51, %x264_clip_uint8.exit49.i49
  %cond.i53.i52 = phi i32 [ %shr.i51.i50, %cond.true.i52.i51 ], [ %add22.i47, %x264_clip_uint8.exit49.i49 ], !dbg !900
  %conv.i54.i53 = trunc i32 %cond.i53.i52 to i8, !dbg !900
  store i8 %conv.i54.i53, ptr %arrayidx19.i45, align 1, !dbg !902, !tbaa !240
  %inc.i54 = add nuw nsw i32 %i.057.i17, 1, !dbg !903
  call void @llvm.dbg.value(metadata i32 %inc.i54, metadata !814, metadata !DIExpression()), !dbg !869
  %add.ptr.i55 = getelementptr inbounds i8, ptr %p_dst.addr.056.i18, i64 32, !dbg !904
  call void @llvm.dbg.value(metadata ptr %add.ptr.i55, metadata !808, metadata !DIExpression()), !dbg !864
  %exitcond.not.i56 = icmp eq i32 %inc.i54, 4, !dbg !905
  br i1 %exitcond.not.i56, label %add4x4_idct_dc.exit58, label %for.body.i22, !dbg !870, !llvm.loop !906

add4x4_idct_dc.exit58:                            ; preds = %x264_clip_uint8.exit55.i57
  %arrayidx4 = getelementptr inbounds i8, ptr %p_dst, i64 128, !dbg !908
  %arrayidx5 = getelementptr inbounds i16, ptr %dct, i64 2, !dbg !909
  %18 = load i16, ptr %arrayidx5, align 2, !dbg !909, !tbaa !246
  call void @llvm.dbg.value(metadata ptr %arrayidx4, metadata !808, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata i16 %18, metadata !813, metadata !DIExpression()), !dbg !910
  %conv.i59 = sext i16 %18 to i32, !dbg !912
  %add.i60 = add nsw i32 %conv.i59, 32, !dbg !913
  %shr.i61 = ashr i32 %add.i60, 6, !dbg !914
  call void @llvm.dbg.value(metadata i32 %shr.i61, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !910
  call void @llvm.dbg.value(metadata i32 0, metadata !814, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata ptr %arrayidx4, metadata !808, metadata !DIExpression()), !dbg !910
  br label %for.body.i67, !dbg !916

for.body.i67:                                     ; preds = %x264_clip_uint8.exit55.i102, %add4x4_idct_dc.exit58
  %i.057.i62 = phi i32 [ 0, %add4x4_idct_dc.exit58 ], [ %inc.i99, %x264_clip_uint8.exit55.i102 ]
  %p_dst.addr.056.i63 = phi ptr [ %arrayidx4, %add4x4_idct_dc.exit58 ], [ %add.ptr.i100, %x264_clip_uint8.exit55.i102 ]
  call void @llvm.dbg.value(metadata i32 %i.057.i62, metadata !814, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.056.i63, metadata !808, metadata !DIExpression()), !dbg !910
  %19 = load i8, ptr %p_dst.addr.056.i63, align 1, !dbg !917, !tbaa !240
  %conv3.i64 = zext i8 %19 to i32, !dbg !917
  %add5.i65 = add nsw i32 %shr.i61, %conv3.i64, !dbg !918
  call void @llvm.dbg.value(metadata i32 %add5.i65, metadata !468, metadata !DIExpression()), !dbg !919
  %tobool.not.i.i66 = icmp ult i32 %add5.i65, 256, !dbg !921
  br i1 %tobool.not.i.i66, label %x264_clip_uint8.exit.i76, label %cond.true.i.i69, !dbg !922

cond.true.i.i69:                                  ; preds = %for.body.i67
  %20 = icmp sgt i32 %add5.i65, 0, !dbg !923
  %shr.i.i68 = sext i1 %20 to i32, !dbg !923
  br label %x264_clip_uint8.exit.i76, !dbg !922

x264_clip_uint8.exit.i76:                         ; preds = %cond.true.i.i69, %for.body.i67
  %cond.i.i70 = phi i32 [ %shr.i.i68, %cond.true.i.i69 ], [ %add5.i65, %for.body.i67 ], !dbg !922
  %conv.i.i71 = trunc i32 %cond.i.i70 to i8, !dbg !922
  store i8 %conv.i.i71, ptr %p_dst.addr.056.i63, align 1, !dbg !924, !tbaa !240
  %arrayidx7.i72 = getelementptr inbounds i8, ptr %p_dst.addr.056.i63, i64 1, !dbg !925
  %21 = load i8, ptr %arrayidx7.i72, align 1, !dbg !925, !tbaa !240
  %conv8.i73 = zext i8 %21 to i32, !dbg !925
  %add10.i74 = add nsw i32 %shr.i61, %conv8.i73, !dbg !926
  call void @llvm.dbg.value(metadata i32 %add10.i74, metadata !468, metadata !DIExpression()), !dbg !927
  %tobool.not.i38.i75 = icmp ult i32 %add10.i74, 256, !dbg !929
  br i1 %tobool.not.i38.i75, label %x264_clip_uint8.exit43.i85, label %cond.true.i40.i78, !dbg !930

cond.true.i40.i78:                                ; preds = %x264_clip_uint8.exit.i76
  %22 = icmp sgt i32 %add10.i74, 0, !dbg !931
  %shr.i39.i77 = sext i1 %22 to i32, !dbg !931
  br label %x264_clip_uint8.exit43.i85, !dbg !930

x264_clip_uint8.exit43.i85:                       ; preds = %cond.true.i40.i78, %x264_clip_uint8.exit.i76
  %cond.i41.i79 = phi i32 [ %shr.i39.i77, %cond.true.i40.i78 ], [ %add10.i74, %x264_clip_uint8.exit.i76 ], !dbg !930
  %conv.i42.i80 = trunc i32 %cond.i41.i79 to i8, !dbg !930
  store i8 %conv.i42.i80, ptr %arrayidx7.i72, align 1, !dbg !932, !tbaa !240
  %arrayidx13.i81 = getelementptr inbounds i8, ptr %p_dst.addr.056.i63, i64 2, !dbg !933
  %23 = load i8, ptr %arrayidx13.i81, align 1, !dbg !933, !tbaa !240
  %conv14.i82 = zext i8 %23 to i32, !dbg !933
  %add16.i83 = add nsw i32 %shr.i61, %conv14.i82, !dbg !934
  call void @llvm.dbg.value(metadata i32 %add16.i83, metadata !468, metadata !DIExpression()), !dbg !935
  %tobool.not.i44.i84 = icmp ult i32 %add16.i83, 256, !dbg !937
  br i1 %tobool.not.i44.i84, label %x264_clip_uint8.exit49.i94, label %cond.true.i46.i87, !dbg !938

cond.true.i46.i87:                                ; preds = %x264_clip_uint8.exit43.i85
  %24 = icmp sgt i32 %add16.i83, 0, !dbg !939
  %shr.i45.i86 = sext i1 %24 to i32, !dbg !939
  br label %x264_clip_uint8.exit49.i94, !dbg !938

x264_clip_uint8.exit49.i94:                       ; preds = %cond.true.i46.i87, %x264_clip_uint8.exit43.i85
  %cond.i47.i88 = phi i32 [ %shr.i45.i86, %cond.true.i46.i87 ], [ %add16.i83, %x264_clip_uint8.exit43.i85 ], !dbg !938
  %conv.i48.i89 = trunc i32 %cond.i47.i88 to i8, !dbg !938
  store i8 %conv.i48.i89, ptr %arrayidx13.i81, align 1, !dbg !940, !tbaa !240
  %arrayidx19.i90 = getelementptr inbounds i8, ptr %p_dst.addr.056.i63, i64 3, !dbg !941
  %25 = load i8, ptr %arrayidx19.i90, align 1, !dbg !941, !tbaa !240
  %conv20.i91 = zext i8 %25 to i32, !dbg !941
  %add22.i92 = add nsw i32 %shr.i61, %conv20.i91, !dbg !942
  call void @llvm.dbg.value(metadata i32 %add22.i92, metadata !468, metadata !DIExpression()), !dbg !943
  %tobool.not.i50.i93 = icmp ult i32 %add22.i92, 256, !dbg !945
  br i1 %tobool.not.i50.i93, label %x264_clip_uint8.exit55.i102, label %cond.true.i52.i96, !dbg !946

cond.true.i52.i96:                                ; preds = %x264_clip_uint8.exit49.i94
  %26 = icmp sgt i32 %add22.i92, 0, !dbg !947
  %shr.i51.i95 = sext i1 %26 to i32, !dbg !947
  br label %x264_clip_uint8.exit55.i102, !dbg !946

x264_clip_uint8.exit55.i102:                      ; preds = %cond.true.i52.i96, %x264_clip_uint8.exit49.i94
  %cond.i53.i97 = phi i32 [ %shr.i51.i95, %cond.true.i52.i96 ], [ %add22.i92, %x264_clip_uint8.exit49.i94 ], !dbg !946
  %conv.i54.i98 = trunc i32 %cond.i53.i97 to i8, !dbg !946
  store i8 %conv.i54.i98, ptr %arrayidx19.i90, align 1, !dbg !948, !tbaa !240
  %inc.i99 = add nuw nsw i32 %i.057.i62, 1, !dbg !949
  call void @llvm.dbg.value(metadata i32 %inc.i99, metadata !814, metadata !DIExpression()), !dbg !915
  %add.ptr.i100 = getelementptr inbounds i8, ptr %p_dst.addr.056.i63, i64 32, !dbg !950
  call void @llvm.dbg.value(metadata ptr %add.ptr.i100, metadata !808, metadata !DIExpression()), !dbg !910
  %exitcond.not.i101 = icmp eq i32 %inc.i99, 4, !dbg !951
  br i1 %exitcond.not.i101, label %add4x4_idct_dc.exit103, label %for.body.i67, !dbg !916, !llvm.loop !952

add4x4_idct_dc.exit103:                           ; preds = %x264_clip_uint8.exit55.i102
  %arrayidx6 = getelementptr inbounds i8, ptr %p_dst, i64 132, !dbg !954
  %arrayidx7 = getelementptr inbounds i16, ptr %dct, i64 3, !dbg !955
  %27 = load i16, ptr %arrayidx7, align 2, !dbg !955, !tbaa !246
  call void @llvm.dbg.value(metadata ptr %arrayidx6, metadata !808, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i16 %27, metadata !813, metadata !DIExpression()), !dbg !956
  %conv.i104 = sext i16 %27 to i32, !dbg !958
  %add.i105 = add nsw i32 %conv.i104, 32, !dbg !959
  %shr.i106 = ashr i32 %add.i105, 6, !dbg !960
  call void @llvm.dbg.value(metadata i32 %shr.i106, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !956
  call void @llvm.dbg.value(metadata i32 0, metadata !814, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr %arrayidx6, metadata !808, metadata !DIExpression()), !dbg !956
  br label %for.body.i112, !dbg !962

for.body.i112:                                    ; preds = %x264_clip_uint8.exit55.i147, %add4x4_idct_dc.exit103
  %i.057.i107 = phi i32 [ 0, %add4x4_idct_dc.exit103 ], [ %inc.i144, %x264_clip_uint8.exit55.i147 ]
  %p_dst.addr.056.i108 = phi ptr [ %arrayidx6, %add4x4_idct_dc.exit103 ], [ %add.ptr.i145, %x264_clip_uint8.exit55.i147 ]
  call void @llvm.dbg.value(metadata i32 %i.057.i107, metadata !814, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.056.i108, metadata !808, metadata !DIExpression()), !dbg !956
  %28 = load i8, ptr %p_dst.addr.056.i108, align 1, !dbg !963, !tbaa !240
  %conv3.i109 = zext i8 %28 to i32, !dbg !963
  %add5.i110 = add nsw i32 %shr.i106, %conv3.i109, !dbg !964
  call void @llvm.dbg.value(metadata i32 %add5.i110, metadata !468, metadata !DIExpression()), !dbg !965
  %tobool.not.i.i111 = icmp ult i32 %add5.i110, 256, !dbg !967
  br i1 %tobool.not.i.i111, label %x264_clip_uint8.exit.i121, label %cond.true.i.i114, !dbg !968

cond.true.i.i114:                                 ; preds = %for.body.i112
  %29 = icmp sgt i32 %add5.i110, 0, !dbg !969
  %shr.i.i113 = sext i1 %29 to i32, !dbg !969
  br label %x264_clip_uint8.exit.i121, !dbg !968

x264_clip_uint8.exit.i121:                        ; preds = %cond.true.i.i114, %for.body.i112
  %cond.i.i115 = phi i32 [ %shr.i.i113, %cond.true.i.i114 ], [ %add5.i110, %for.body.i112 ], !dbg !968
  %conv.i.i116 = trunc i32 %cond.i.i115 to i8, !dbg !968
  store i8 %conv.i.i116, ptr %p_dst.addr.056.i108, align 1, !dbg !970, !tbaa !240
  %arrayidx7.i117 = getelementptr inbounds i8, ptr %p_dst.addr.056.i108, i64 1, !dbg !971
  %30 = load i8, ptr %arrayidx7.i117, align 1, !dbg !971, !tbaa !240
  %conv8.i118 = zext i8 %30 to i32, !dbg !971
  %add10.i119 = add nsw i32 %shr.i106, %conv8.i118, !dbg !972
  call void @llvm.dbg.value(metadata i32 %add10.i119, metadata !468, metadata !DIExpression()), !dbg !973
  %tobool.not.i38.i120 = icmp ult i32 %add10.i119, 256, !dbg !975
  br i1 %tobool.not.i38.i120, label %x264_clip_uint8.exit43.i130, label %cond.true.i40.i123, !dbg !976

cond.true.i40.i123:                               ; preds = %x264_clip_uint8.exit.i121
  %31 = icmp sgt i32 %add10.i119, 0, !dbg !977
  %shr.i39.i122 = sext i1 %31 to i32, !dbg !977
  br label %x264_clip_uint8.exit43.i130, !dbg !976

x264_clip_uint8.exit43.i130:                      ; preds = %cond.true.i40.i123, %x264_clip_uint8.exit.i121
  %cond.i41.i124 = phi i32 [ %shr.i39.i122, %cond.true.i40.i123 ], [ %add10.i119, %x264_clip_uint8.exit.i121 ], !dbg !976
  %conv.i42.i125 = trunc i32 %cond.i41.i124 to i8, !dbg !976
  store i8 %conv.i42.i125, ptr %arrayidx7.i117, align 1, !dbg !978, !tbaa !240
  %arrayidx13.i126 = getelementptr inbounds i8, ptr %p_dst.addr.056.i108, i64 2, !dbg !979
  %32 = load i8, ptr %arrayidx13.i126, align 1, !dbg !979, !tbaa !240
  %conv14.i127 = zext i8 %32 to i32, !dbg !979
  %add16.i128 = add nsw i32 %shr.i106, %conv14.i127, !dbg !980
  call void @llvm.dbg.value(metadata i32 %add16.i128, metadata !468, metadata !DIExpression()), !dbg !981
  %tobool.not.i44.i129 = icmp ult i32 %add16.i128, 256, !dbg !983
  br i1 %tobool.not.i44.i129, label %x264_clip_uint8.exit49.i139, label %cond.true.i46.i132, !dbg !984

cond.true.i46.i132:                               ; preds = %x264_clip_uint8.exit43.i130
  %33 = icmp sgt i32 %add16.i128, 0, !dbg !985
  %shr.i45.i131 = sext i1 %33 to i32, !dbg !985
  br label %x264_clip_uint8.exit49.i139, !dbg !984

x264_clip_uint8.exit49.i139:                      ; preds = %cond.true.i46.i132, %x264_clip_uint8.exit43.i130
  %cond.i47.i133 = phi i32 [ %shr.i45.i131, %cond.true.i46.i132 ], [ %add16.i128, %x264_clip_uint8.exit43.i130 ], !dbg !984
  %conv.i48.i134 = trunc i32 %cond.i47.i133 to i8, !dbg !984
  store i8 %conv.i48.i134, ptr %arrayidx13.i126, align 1, !dbg !986, !tbaa !240
  %arrayidx19.i135 = getelementptr inbounds i8, ptr %p_dst.addr.056.i108, i64 3, !dbg !987
  %34 = load i8, ptr %arrayidx19.i135, align 1, !dbg !987, !tbaa !240
  %conv20.i136 = zext i8 %34 to i32, !dbg !987
  %add22.i137 = add nsw i32 %shr.i106, %conv20.i136, !dbg !988
  call void @llvm.dbg.value(metadata i32 %add22.i137, metadata !468, metadata !DIExpression()), !dbg !989
  %tobool.not.i50.i138 = icmp ult i32 %add22.i137, 256, !dbg !991
  br i1 %tobool.not.i50.i138, label %x264_clip_uint8.exit55.i147, label %cond.true.i52.i141, !dbg !992

cond.true.i52.i141:                               ; preds = %x264_clip_uint8.exit49.i139
  %35 = icmp sgt i32 %add22.i137, 0, !dbg !993
  %shr.i51.i140 = sext i1 %35 to i32, !dbg !993
  br label %x264_clip_uint8.exit55.i147, !dbg !992

x264_clip_uint8.exit55.i147:                      ; preds = %cond.true.i52.i141, %x264_clip_uint8.exit49.i139
  %cond.i53.i142 = phi i32 [ %shr.i51.i140, %cond.true.i52.i141 ], [ %add22.i137, %x264_clip_uint8.exit49.i139 ], !dbg !992
  %conv.i54.i143 = trunc i32 %cond.i53.i142 to i8, !dbg !992
  store i8 %conv.i54.i143, ptr %arrayidx19.i135, align 1, !dbg !994, !tbaa !240
  %inc.i144 = add nuw nsw i32 %i.057.i107, 1, !dbg !995
  call void @llvm.dbg.value(metadata i32 %inc.i144, metadata !814, metadata !DIExpression()), !dbg !961
  %add.ptr.i145 = getelementptr inbounds i8, ptr %p_dst.addr.056.i108, i64 32, !dbg !996
  call void @llvm.dbg.value(metadata ptr %add.ptr.i145, metadata !808, metadata !DIExpression()), !dbg !956
  %exitcond.not.i146 = icmp eq i32 %inc.i144, 4, !dbg !997
  br i1 %exitcond.not.i146, label %add4x4_idct_dc.exit148, label %for.body.i112, !dbg !962, !llvm.loop !998

add4x4_idct_dc.exit148:                           ; preds = %x264_clip_uint8.exit55.i147
  ret void, !dbg !1000
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @sub16x16_dct(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #2 !dbg !1001 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1003, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !1004, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !1005, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata ptr %dct, metadata !485, metadata !DIExpression()) #9, !dbg !1007
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !486, metadata !DIExpression()) #9, !dbg !1007
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !487, metadata !DIExpression()) #9, !dbg !1007
  tail call void @sub4x4_dct(ptr noundef %dct, ptr noundef %pix1, ptr noundef %pix2) #9, !dbg !1009
  %arrayidx3.i = getelementptr inbounds [16 x i16], ptr %dct, i64 1, !dbg !1010
  %arrayidx5.i = getelementptr inbounds i8, ptr %pix1, i64 4, !dbg !1011
  %arrayidx6.i = getelementptr inbounds i8, ptr %pix2, i64 4, !dbg !1012
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3.i, ptr noundef nonnull %arrayidx5.i, ptr noundef nonnull %arrayidx6.i) #9, !dbg !1013
  %arrayidx7.i = getelementptr inbounds [16 x i16], ptr %dct, i64 2, !dbg !1014
  %arrayidx9.i = getelementptr inbounds i8, ptr %pix1, i64 64, !dbg !1015
  %arrayidx10.i = getelementptr inbounds i8, ptr %pix2, i64 128, !dbg !1016
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7.i, ptr noundef nonnull %arrayidx9.i, ptr noundef nonnull %arrayidx10.i) #9, !dbg !1017
  %arrayidx11.i = getelementptr inbounds [16 x i16], ptr %dct, i64 3, !dbg !1018
  %arrayidx13.i = getelementptr inbounds i8, ptr %pix1, i64 68, !dbg !1019
  %arrayidx14.i = getelementptr inbounds i8, ptr %pix2, i64 132, !dbg !1020
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11.i, ptr noundef nonnull %arrayidx13.i, ptr noundef nonnull %arrayidx14.i) #9, !dbg !1021
  %arrayidx3 = getelementptr inbounds [16 x i16], ptr %dct, i64 4, !dbg !1022
  %arrayidx4 = getelementptr inbounds i8, ptr %pix1, i64 8, !dbg !1023
  %arrayidx5 = getelementptr inbounds i8, ptr %pix2, i64 8, !dbg !1024
  call void @llvm.dbg.value(metadata ptr %arrayidx3, metadata !485, metadata !DIExpression()) #9, !dbg !1025
  call void @llvm.dbg.value(metadata ptr %arrayidx4, metadata !486, metadata !DIExpression()) #9, !dbg !1025
  call void @llvm.dbg.value(metadata ptr %arrayidx5, metadata !487, metadata !DIExpression()) #9, !dbg !1025
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx5) #9, !dbg !1027
  %arrayidx3.i21 = getelementptr inbounds [16 x i16], ptr %dct, i64 5, !dbg !1028
  %arrayidx5.i22 = getelementptr inbounds i8, ptr %pix1, i64 12, !dbg !1029
  %arrayidx6.i23 = getelementptr inbounds i8, ptr %pix2, i64 12, !dbg !1030
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3.i21, ptr noundef nonnull %arrayidx5.i22, ptr noundef nonnull %arrayidx6.i23) #9, !dbg !1031
  %arrayidx7.i24 = getelementptr inbounds [16 x i16], ptr %dct, i64 6, !dbg !1032
  %arrayidx9.i25 = getelementptr inbounds i8, ptr %pix1, i64 72, !dbg !1033
  %arrayidx10.i26 = getelementptr inbounds i8, ptr %pix2, i64 136, !dbg !1034
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7.i24, ptr noundef nonnull %arrayidx9.i25, ptr noundef nonnull %arrayidx10.i26) #9, !dbg !1035
  %arrayidx11.i27 = getelementptr inbounds [16 x i16], ptr %dct, i64 7, !dbg !1036
  %arrayidx13.i28 = getelementptr inbounds i8, ptr %pix1, i64 76, !dbg !1037
  %arrayidx14.i29 = getelementptr inbounds i8, ptr %pix2, i64 140, !dbg !1038
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11.i27, ptr noundef nonnull %arrayidx13.i28, ptr noundef nonnull %arrayidx14.i29) #9, !dbg !1039
  %arrayidx6 = getelementptr inbounds [16 x i16], ptr %dct, i64 8, !dbg !1040
  %arrayidx7 = getelementptr inbounds i8, ptr %pix1, i64 128, !dbg !1041
  %arrayidx8 = getelementptr inbounds i8, ptr %pix2, i64 256, !dbg !1042
  call void @llvm.dbg.value(metadata ptr %arrayidx6, metadata !485, metadata !DIExpression()) #9, !dbg !1043
  call void @llvm.dbg.value(metadata ptr %arrayidx7, metadata !486, metadata !DIExpression()) #9, !dbg !1043
  call void @llvm.dbg.value(metadata ptr %arrayidx8, metadata !487, metadata !DIExpression()) #9, !dbg !1043
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx7, ptr noundef nonnull %arrayidx8) #9, !dbg !1045
  %arrayidx3.i30 = getelementptr inbounds [16 x i16], ptr %dct, i64 9, !dbg !1046
  %arrayidx5.i31 = getelementptr inbounds i8, ptr %pix1, i64 132, !dbg !1047
  %arrayidx6.i32 = getelementptr inbounds i8, ptr %pix2, i64 260, !dbg !1048
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3.i30, ptr noundef nonnull %arrayidx5.i31, ptr noundef nonnull %arrayidx6.i32) #9, !dbg !1049
  %arrayidx7.i33 = getelementptr inbounds [16 x i16], ptr %dct, i64 10, !dbg !1050
  %arrayidx9.i34 = getelementptr inbounds i8, ptr %pix1, i64 192, !dbg !1051
  %arrayidx10.i35 = getelementptr inbounds i8, ptr %pix2, i64 384, !dbg !1052
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7.i33, ptr noundef nonnull %arrayidx9.i34, ptr noundef nonnull %arrayidx10.i35) #9, !dbg !1053
  %arrayidx11.i36 = getelementptr inbounds [16 x i16], ptr %dct, i64 11, !dbg !1054
  %arrayidx13.i37 = getelementptr inbounds i8, ptr %pix1, i64 196, !dbg !1055
  %arrayidx14.i38 = getelementptr inbounds i8, ptr %pix2, i64 388, !dbg !1056
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11.i36, ptr noundef nonnull %arrayidx13.i37, ptr noundef nonnull %arrayidx14.i38) #9, !dbg !1057
  %arrayidx9 = getelementptr inbounds [16 x i16], ptr %dct, i64 12, !dbg !1058
  %arrayidx10 = getelementptr inbounds i8, ptr %pix1, i64 136, !dbg !1059
  %arrayidx11 = getelementptr inbounds i8, ptr %pix2, i64 264, !dbg !1060
  call void @llvm.dbg.value(metadata ptr %arrayidx9, metadata !485, metadata !DIExpression()) #9, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %arrayidx10, metadata !486, metadata !DIExpression()) #9, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %arrayidx11, metadata !487, metadata !DIExpression()) #9, !dbg !1061
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx9, ptr noundef nonnull %arrayidx10, ptr noundef nonnull %arrayidx11) #9, !dbg !1063
  %arrayidx3.i39 = getelementptr inbounds [16 x i16], ptr %dct, i64 13, !dbg !1064
  %arrayidx5.i40 = getelementptr inbounds i8, ptr %pix1, i64 140, !dbg !1065
  %arrayidx6.i41 = getelementptr inbounds i8, ptr %pix2, i64 268, !dbg !1066
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx3.i39, ptr noundef nonnull %arrayidx5.i40, ptr noundef nonnull %arrayidx6.i41) #9, !dbg !1067
  %arrayidx7.i42 = getelementptr inbounds [16 x i16], ptr %dct, i64 14, !dbg !1068
  %arrayidx9.i43 = getelementptr inbounds i8, ptr %pix1, i64 200, !dbg !1069
  %arrayidx10.i44 = getelementptr inbounds i8, ptr %pix2, i64 392, !dbg !1070
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx7.i42, ptr noundef nonnull %arrayidx9.i43, ptr noundef nonnull %arrayidx10.i44) #9, !dbg !1071
  %arrayidx11.i45 = getelementptr inbounds [16 x i16], ptr %dct, i64 15, !dbg !1072
  %arrayidx13.i46 = getelementptr inbounds i8, ptr %pix1, i64 204, !dbg !1073
  %arrayidx14.i47 = getelementptr inbounds i8, ptr %pix2, i64 396, !dbg !1074
  tail call void @sub4x4_dct(ptr noundef nonnull %arrayidx11.i45, ptr noundef nonnull %arrayidx13.i46, ptr noundef nonnull %arrayidx14.i47) #9, !dbg !1075
  ret void, !dbg !1076
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @add16x16_idct(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #2 !dbg !1077 {
entry:
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !1079, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1080, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !788, metadata !DIExpression()) #9, !dbg !1082
  call void @llvm.dbg.value(metadata ptr %dct, metadata !789, metadata !DIExpression()) #9, !dbg !1082
  tail call void @add4x4_idct(ptr noundef %p_dst, ptr noundef %dct) #9, !dbg !1084
  %arrayidx2.i = getelementptr inbounds i8, ptr %p_dst, i64 4, !dbg !1085
  %arrayidx3.i = getelementptr inbounds [16 x i16], ptr %dct, i64 1, !dbg !1086
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2.i, ptr noundef nonnull %arrayidx3.i) #9, !dbg !1087
  %arrayidx5.i = getelementptr inbounds i8, ptr %p_dst, i64 128, !dbg !1088
  %arrayidx6.i = getelementptr inbounds [16 x i16], ptr %dct, i64 2, !dbg !1089
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5.i, ptr noundef nonnull %arrayidx6.i) #9, !dbg !1090
  %arrayidx8.i = getelementptr inbounds i8, ptr %p_dst, i64 132, !dbg !1091
  %arrayidx9.i = getelementptr inbounds [16 x i16], ptr %dct, i64 3, !dbg !1092
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8.i, ptr noundef nonnull %arrayidx9.i) #9, !dbg !1093
  %arrayidx2 = getelementptr inbounds i8, ptr %p_dst, i64 8, !dbg !1094
  %arrayidx3 = getelementptr inbounds [16 x i16], ptr %dct, i64 4, !dbg !1095
  call void @llvm.dbg.value(metadata ptr %arrayidx2, metadata !788, metadata !DIExpression()) #9, !dbg !1096
  call void @llvm.dbg.value(metadata ptr %arrayidx3, metadata !789, metadata !DIExpression()) #9, !dbg !1096
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx3) #9, !dbg !1098
  %arrayidx2.i14 = getelementptr inbounds i8, ptr %p_dst, i64 12, !dbg !1099
  %arrayidx3.i15 = getelementptr inbounds [16 x i16], ptr %dct, i64 5, !dbg !1100
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2.i14, ptr noundef nonnull %arrayidx3.i15) #9, !dbg !1101
  %arrayidx5.i16 = getelementptr inbounds i8, ptr %p_dst, i64 136, !dbg !1102
  %arrayidx6.i17 = getelementptr inbounds [16 x i16], ptr %dct, i64 6, !dbg !1103
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5.i16, ptr noundef nonnull %arrayidx6.i17) #9, !dbg !1104
  %arrayidx8.i18 = getelementptr inbounds i8, ptr %p_dst, i64 140, !dbg !1105
  %arrayidx9.i19 = getelementptr inbounds [16 x i16], ptr %dct, i64 7, !dbg !1106
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8.i18, ptr noundef nonnull %arrayidx9.i19) #9, !dbg !1107
  %arrayidx4 = getelementptr inbounds i8, ptr %p_dst, i64 256, !dbg !1108
  %arrayidx5 = getelementptr inbounds [16 x i16], ptr %dct, i64 8, !dbg !1109
  call void @llvm.dbg.value(metadata ptr %arrayidx4, metadata !788, metadata !DIExpression()) #9, !dbg !1110
  call void @llvm.dbg.value(metadata ptr %arrayidx5, metadata !789, metadata !DIExpression()) #9, !dbg !1110
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx5) #9, !dbg !1112
  %arrayidx2.i20 = getelementptr inbounds i8, ptr %p_dst, i64 260, !dbg !1113
  %arrayidx3.i21 = getelementptr inbounds [16 x i16], ptr %dct, i64 9, !dbg !1114
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2.i20, ptr noundef nonnull %arrayidx3.i21) #9, !dbg !1115
  %arrayidx5.i22 = getelementptr inbounds i8, ptr %p_dst, i64 384, !dbg !1116
  %arrayidx6.i23 = getelementptr inbounds [16 x i16], ptr %dct, i64 10, !dbg !1117
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5.i22, ptr noundef nonnull %arrayidx6.i23) #9, !dbg !1118
  %arrayidx8.i24 = getelementptr inbounds i8, ptr %p_dst, i64 388, !dbg !1119
  %arrayidx9.i25 = getelementptr inbounds [16 x i16], ptr %dct, i64 11, !dbg !1120
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8.i24, ptr noundef nonnull %arrayidx9.i25) #9, !dbg !1121
  %arrayidx6 = getelementptr inbounds i8, ptr %p_dst, i64 264, !dbg !1122
  %arrayidx7 = getelementptr inbounds [16 x i16], ptr %dct, i64 12, !dbg !1123
  call void @llvm.dbg.value(metadata ptr %arrayidx6, metadata !788, metadata !DIExpression()) #9, !dbg !1124
  call void @llvm.dbg.value(metadata ptr %arrayidx7, metadata !789, metadata !DIExpression()) #9, !dbg !1124
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx7) #9, !dbg !1126
  %arrayidx2.i26 = getelementptr inbounds i8, ptr %p_dst, i64 268, !dbg !1127
  %arrayidx3.i27 = getelementptr inbounds [16 x i16], ptr %dct, i64 13, !dbg !1128
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx2.i26, ptr noundef nonnull %arrayidx3.i27) #9, !dbg !1129
  %arrayidx5.i28 = getelementptr inbounds i8, ptr %p_dst, i64 392, !dbg !1130
  %arrayidx6.i29 = getelementptr inbounds [16 x i16], ptr %dct, i64 14, !dbg !1131
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx5.i28, ptr noundef nonnull %arrayidx6.i29) #9, !dbg !1132
  %arrayidx8.i30 = getelementptr inbounds i8, ptr %p_dst, i64 396, !dbg !1133
  %arrayidx9.i31 = getelementptr inbounds [16 x i16], ptr %dct, i64 15, !dbg !1134
  tail call void @add4x4_idct(ptr noundef nonnull %arrayidx8.i30, ptr noundef nonnull %arrayidx9.i31) #9, !dbg !1135
  ret void, !dbg !1136
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal void @add16x16_idct_dc(ptr nocapture noundef %p_dst, ptr nocapture noundef readonly %dct) #3 !dbg !1137 {
entry:
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !1139, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i32 0, metadata !1141, metadata !DIExpression()), !dbg !1144
  br label %for.body, !dbg !1145

for.cond.cleanup:                                 ; preds = %add4x4_idct_dc.exit152
  ret void, !dbg !1146

for.body:                                         ; preds = %entry, %add4x4_idct_dc.exit152
  %i.0155 = phi i32 [ 0, %entry ], [ %inc, %add4x4_idct_dc.exit152 ]
  %dct.addr.0154 = phi ptr [ %dct, %entry ], [ %add.ptr, %add4x4_idct_dc.exit152 ]
  %p_dst.addr.0153 = phi ptr [ %p_dst, %entry ], [ %add.ptr8, %add4x4_idct_dc.exit152 ]
  call void @llvm.dbg.value(metadata i32 %i.0155, metadata !1141, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr %dct.addr.0154, metadata !1140, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.0153, metadata !1139, metadata !DIExpression()), !dbg !1143
  %0 = load i16, ptr %dct.addr.0154, align 2, !dbg !1147, !tbaa !246
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.0153, metadata !808, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata i16 %0, metadata !813, metadata !DIExpression()), !dbg !1150
  %conv.i = sext i16 %0 to i32, !dbg !1152
  %add.i = add nsw i32 %conv.i, 32, !dbg !1153
  %shr.i = ashr i32 %add.i, 6, !dbg !1154
  call void @llvm.dbg.value(metadata i32 %shr.i, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1150
  call void @llvm.dbg.value(metadata i32 0, metadata !814, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.0153, metadata !808, metadata !DIExpression()), !dbg !1150
  br label %for.body.i, !dbg !1156

for.body.i:                                       ; preds = %x264_clip_uint8.exit55.i, %for.body
  %i.057.i = phi i32 [ 0, %for.body ], [ %inc.i, %x264_clip_uint8.exit55.i ]
  %p_dst.addr.056.i = phi ptr [ %p_dst.addr.0153, %for.body ], [ %add.ptr.i, %x264_clip_uint8.exit55.i ]
  call void @llvm.dbg.value(metadata i32 %i.057.i, metadata !814, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.056.i, metadata !808, metadata !DIExpression()), !dbg !1150
  %1 = load i8, ptr %p_dst.addr.056.i, align 1, !dbg !1157, !tbaa !240
  %conv3.i = zext i8 %1 to i32, !dbg !1157
  %add5.i = add nsw i32 %shr.i, %conv3.i, !dbg !1158
  call void @llvm.dbg.value(metadata i32 %add5.i, metadata !468, metadata !DIExpression()), !dbg !1159
  %tobool.not.i.i = icmp ult i32 %add5.i, 256, !dbg !1161
  br i1 %tobool.not.i.i, label %x264_clip_uint8.exit.i, label %cond.true.i.i, !dbg !1162

cond.true.i.i:                                    ; preds = %for.body.i
  %2 = icmp sgt i32 %add5.i, 0, !dbg !1163
  %shr.i.i = sext i1 %2 to i32, !dbg !1163
  br label %x264_clip_uint8.exit.i, !dbg !1162

x264_clip_uint8.exit.i:                           ; preds = %cond.true.i.i, %for.body.i
  %cond.i.i = phi i32 [ %shr.i.i, %cond.true.i.i ], [ %add5.i, %for.body.i ], !dbg !1162
  %conv.i.i = trunc i32 %cond.i.i to i8, !dbg !1162
  store i8 %conv.i.i, ptr %p_dst.addr.056.i, align 1, !dbg !1164, !tbaa !240
  %arrayidx7.i = getelementptr inbounds i8, ptr %p_dst.addr.056.i, i64 1, !dbg !1165
  %3 = load i8, ptr %arrayidx7.i, align 1, !dbg !1165, !tbaa !240
  %conv8.i = zext i8 %3 to i32, !dbg !1165
  %add10.i = add nsw i32 %shr.i, %conv8.i, !dbg !1166
  call void @llvm.dbg.value(metadata i32 %add10.i, metadata !468, metadata !DIExpression()), !dbg !1167
  %tobool.not.i38.i = icmp ult i32 %add10.i, 256, !dbg !1169
  br i1 %tobool.not.i38.i, label %x264_clip_uint8.exit43.i, label %cond.true.i40.i, !dbg !1170

cond.true.i40.i:                                  ; preds = %x264_clip_uint8.exit.i
  %4 = icmp sgt i32 %add10.i, 0, !dbg !1171
  %shr.i39.i = sext i1 %4 to i32, !dbg !1171
  br label %x264_clip_uint8.exit43.i, !dbg !1170

x264_clip_uint8.exit43.i:                         ; preds = %cond.true.i40.i, %x264_clip_uint8.exit.i
  %cond.i41.i = phi i32 [ %shr.i39.i, %cond.true.i40.i ], [ %add10.i, %x264_clip_uint8.exit.i ], !dbg !1170
  %conv.i42.i = trunc i32 %cond.i41.i to i8, !dbg !1170
  store i8 %conv.i42.i, ptr %arrayidx7.i, align 1, !dbg !1172, !tbaa !240
  %arrayidx13.i = getelementptr inbounds i8, ptr %p_dst.addr.056.i, i64 2, !dbg !1173
  %5 = load i8, ptr %arrayidx13.i, align 1, !dbg !1173, !tbaa !240
  %conv14.i = zext i8 %5 to i32, !dbg !1173
  %add16.i = add nsw i32 %shr.i, %conv14.i, !dbg !1174
  call void @llvm.dbg.value(metadata i32 %add16.i, metadata !468, metadata !DIExpression()), !dbg !1175
  %tobool.not.i44.i = icmp ult i32 %add16.i, 256, !dbg !1177
  br i1 %tobool.not.i44.i, label %x264_clip_uint8.exit49.i, label %cond.true.i46.i, !dbg !1178

cond.true.i46.i:                                  ; preds = %x264_clip_uint8.exit43.i
  %6 = icmp sgt i32 %add16.i, 0, !dbg !1179
  %shr.i45.i = sext i1 %6 to i32, !dbg !1179
  br label %x264_clip_uint8.exit49.i, !dbg !1178

x264_clip_uint8.exit49.i:                         ; preds = %cond.true.i46.i, %x264_clip_uint8.exit43.i
  %cond.i47.i = phi i32 [ %shr.i45.i, %cond.true.i46.i ], [ %add16.i, %x264_clip_uint8.exit43.i ], !dbg !1178
  %conv.i48.i = trunc i32 %cond.i47.i to i8, !dbg !1178
  store i8 %conv.i48.i, ptr %arrayidx13.i, align 1, !dbg !1180, !tbaa !240
  %arrayidx19.i = getelementptr inbounds i8, ptr %p_dst.addr.056.i, i64 3, !dbg !1181
  %7 = load i8, ptr %arrayidx19.i, align 1, !dbg !1181, !tbaa !240
  %conv20.i = zext i8 %7 to i32, !dbg !1181
  %add22.i = add nsw i32 %shr.i, %conv20.i, !dbg !1182
  call void @llvm.dbg.value(metadata i32 %add22.i, metadata !468, metadata !DIExpression()), !dbg !1183
  %tobool.not.i50.i = icmp ult i32 %add22.i, 256, !dbg !1185
  br i1 %tobool.not.i50.i, label %x264_clip_uint8.exit55.i, label %cond.true.i52.i, !dbg !1186

cond.true.i52.i:                                  ; preds = %x264_clip_uint8.exit49.i
  %8 = icmp sgt i32 %add22.i, 0, !dbg !1187
  %shr.i51.i = sext i1 %8 to i32, !dbg !1187
  br label %x264_clip_uint8.exit55.i, !dbg !1186

x264_clip_uint8.exit55.i:                         ; preds = %cond.true.i52.i, %x264_clip_uint8.exit49.i
  %cond.i53.i = phi i32 [ %shr.i51.i, %cond.true.i52.i ], [ %add22.i, %x264_clip_uint8.exit49.i ], !dbg !1186
  %conv.i54.i = trunc i32 %cond.i53.i to i8, !dbg !1186
  store i8 %conv.i54.i, ptr %arrayidx19.i, align 1, !dbg !1188, !tbaa !240
  %inc.i = add nuw nsw i32 %i.057.i, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i32 %inc.i, metadata !814, metadata !DIExpression()), !dbg !1155
  %add.ptr.i = getelementptr inbounds i8, ptr %p_dst.addr.056.i, i64 32, !dbg !1190
  call void @llvm.dbg.value(metadata ptr %add.ptr.i, metadata !808, metadata !DIExpression()), !dbg !1150
  %exitcond.not.i = icmp eq i32 %inc.i, 4, !dbg !1191
  br i1 %exitcond.not.i, label %add4x4_idct_dc.exit, label %for.body.i, !dbg !1156, !llvm.loop !1192

add4x4_idct_dc.exit:                              ; preds = %x264_clip_uint8.exit55.i
  %arrayidx2 = getelementptr inbounds i8, ptr %p_dst.addr.0153, i64 4, !dbg !1194
  %arrayidx3 = getelementptr inbounds i16, ptr %dct.addr.0154, i64 1, !dbg !1195
  %9 = load i16, ptr %arrayidx3, align 2, !dbg !1195, !tbaa !246
  call void @llvm.dbg.value(metadata ptr %arrayidx2, metadata !808, metadata !DIExpression()), !dbg !1196
  call void @llvm.dbg.value(metadata i16 %9, metadata !813, metadata !DIExpression()), !dbg !1196
  %conv.i18 = sext i16 %9 to i32, !dbg !1198
  %add.i19 = add nsw i32 %conv.i18, 32, !dbg !1199
  %shr.i20 = ashr i32 %add.i19, 6, !dbg !1200
  call void @llvm.dbg.value(metadata i32 %shr.i20, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1196
  call void @llvm.dbg.value(metadata i32 0, metadata !814, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %arrayidx2, metadata !808, metadata !DIExpression()), !dbg !1196
  br label %for.body.i26, !dbg !1202

for.body.i26:                                     ; preds = %x264_clip_uint8.exit55.i61, %add4x4_idct_dc.exit
  %i.057.i21 = phi i32 [ 0, %add4x4_idct_dc.exit ], [ %inc.i58, %x264_clip_uint8.exit55.i61 ]
  %p_dst.addr.056.i22 = phi ptr [ %arrayidx2, %add4x4_idct_dc.exit ], [ %add.ptr.i59, %x264_clip_uint8.exit55.i61 ]
  call void @llvm.dbg.value(metadata i32 %i.057.i21, metadata !814, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.056.i22, metadata !808, metadata !DIExpression()), !dbg !1196
  %10 = load i8, ptr %p_dst.addr.056.i22, align 1, !dbg !1203, !tbaa !240
  %conv3.i23 = zext i8 %10 to i32, !dbg !1203
  %add5.i24 = add nsw i32 %shr.i20, %conv3.i23, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %add5.i24, metadata !468, metadata !DIExpression()), !dbg !1205
  %tobool.not.i.i25 = icmp ult i32 %add5.i24, 256, !dbg !1207
  br i1 %tobool.not.i.i25, label %x264_clip_uint8.exit.i35, label %cond.true.i.i28, !dbg !1208

cond.true.i.i28:                                  ; preds = %for.body.i26
  %11 = icmp sgt i32 %add5.i24, 0, !dbg !1209
  %shr.i.i27 = sext i1 %11 to i32, !dbg !1209
  br label %x264_clip_uint8.exit.i35, !dbg !1208

x264_clip_uint8.exit.i35:                         ; preds = %cond.true.i.i28, %for.body.i26
  %cond.i.i29 = phi i32 [ %shr.i.i27, %cond.true.i.i28 ], [ %add5.i24, %for.body.i26 ], !dbg !1208
  %conv.i.i30 = trunc i32 %cond.i.i29 to i8, !dbg !1208
  store i8 %conv.i.i30, ptr %p_dst.addr.056.i22, align 1, !dbg !1210, !tbaa !240
  %arrayidx7.i31 = getelementptr inbounds i8, ptr %p_dst.addr.056.i22, i64 1, !dbg !1211
  %12 = load i8, ptr %arrayidx7.i31, align 1, !dbg !1211, !tbaa !240
  %conv8.i32 = zext i8 %12 to i32, !dbg !1211
  %add10.i33 = add nsw i32 %shr.i20, %conv8.i32, !dbg !1212
  call void @llvm.dbg.value(metadata i32 %add10.i33, metadata !468, metadata !DIExpression()), !dbg !1213
  %tobool.not.i38.i34 = icmp ult i32 %add10.i33, 256, !dbg !1215
  br i1 %tobool.not.i38.i34, label %x264_clip_uint8.exit43.i44, label %cond.true.i40.i37, !dbg !1216

cond.true.i40.i37:                                ; preds = %x264_clip_uint8.exit.i35
  %13 = icmp sgt i32 %add10.i33, 0, !dbg !1217
  %shr.i39.i36 = sext i1 %13 to i32, !dbg !1217
  br label %x264_clip_uint8.exit43.i44, !dbg !1216

x264_clip_uint8.exit43.i44:                       ; preds = %cond.true.i40.i37, %x264_clip_uint8.exit.i35
  %cond.i41.i38 = phi i32 [ %shr.i39.i36, %cond.true.i40.i37 ], [ %add10.i33, %x264_clip_uint8.exit.i35 ], !dbg !1216
  %conv.i42.i39 = trunc i32 %cond.i41.i38 to i8, !dbg !1216
  store i8 %conv.i42.i39, ptr %arrayidx7.i31, align 1, !dbg !1218, !tbaa !240
  %arrayidx13.i40 = getelementptr inbounds i8, ptr %p_dst.addr.056.i22, i64 2, !dbg !1219
  %14 = load i8, ptr %arrayidx13.i40, align 1, !dbg !1219, !tbaa !240
  %conv14.i41 = zext i8 %14 to i32, !dbg !1219
  %add16.i42 = add nsw i32 %shr.i20, %conv14.i41, !dbg !1220
  call void @llvm.dbg.value(metadata i32 %add16.i42, metadata !468, metadata !DIExpression()), !dbg !1221
  %tobool.not.i44.i43 = icmp ult i32 %add16.i42, 256, !dbg !1223
  br i1 %tobool.not.i44.i43, label %x264_clip_uint8.exit49.i53, label %cond.true.i46.i46, !dbg !1224

cond.true.i46.i46:                                ; preds = %x264_clip_uint8.exit43.i44
  %15 = icmp sgt i32 %add16.i42, 0, !dbg !1225
  %shr.i45.i45 = sext i1 %15 to i32, !dbg !1225
  br label %x264_clip_uint8.exit49.i53, !dbg !1224

x264_clip_uint8.exit49.i53:                       ; preds = %cond.true.i46.i46, %x264_clip_uint8.exit43.i44
  %cond.i47.i47 = phi i32 [ %shr.i45.i45, %cond.true.i46.i46 ], [ %add16.i42, %x264_clip_uint8.exit43.i44 ], !dbg !1224
  %conv.i48.i48 = trunc i32 %cond.i47.i47 to i8, !dbg !1224
  store i8 %conv.i48.i48, ptr %arrayidx13.i40, align 1, !dbg !1226, !tbaa !240
  %arrayidx19.i49 = getelementptr inbounds i8, ptr %p_dst.addr.056.i22, i64 3, !dbg !1227
  %16 = load i8, ptr %arrayidx19.i49, align 1, !dbg !1227, !tbaa !240
  %conv20.i50 = zext i8 %16 to i32, !dbg !1227
  %add22.i51 = add nsw i32 %shr.i20, %conv20.i50, !dbg !1228
  call void @llvm.dbg.value(metadata i32 %add22.i51, metadata !468, metadata !DIExpression()), !dbg !1229
  %tobool.not.i50.i52 = icmp ult i32 %add22.i51, 256, !dbg !1231
  br i1 %tobool.not.i50.i52, label %x264_clip_uint8.exit55.i61, label %cond.true.i52.i55, !dbg !1232

cond.true.i52.i55:                                ; preds = %x264_clip_uint8.exit49.i53
  %17 = icmp sgt i32 %add22.i51, 0, !dbg !1233
  %shr.i51.i54 = sext i1 %17 to i32, !dbg !1233
  br label %x264_clip_uint8.exit55.i61, !dbg !1232

x264_clip_uint8.exit55.i61:                       ; preds = %cond.true.i52.i55, %x264_clip_uint8.exit49.i53
  %cond.i53.i56 = phi i32 [ %shr.i51.i54, %cond.true.i52.i55 ], [ %add22.i51, %x264_clip_uint8.exit49.i53 ], !dbg !1232
  %conv.i54.i57 = trunc i32 %cond.i53.i56 to i8, !dbg !1232
  store i8 %conv.i54.i57, ptr %arrayidx19.i49, align 1, !dbg !1234, !tbaa !240
  %inc.i58 = add nuw nsw i32 %i.057.i21, 1, !dbg !1235
  call void @llvm.dbg.value(metadata i32 %inc.i58, metadata !814, metadata !DIExpression()), !dbg !1201
  %add.ptr.i59 = getelementptr inbounds i8, ptr %p_dst.addr.056.i22, i64 32, !dbg !1236
  call void @llvm.dbg.value(metadata ptr %add.ptr.i59, metadata !808, metadata !DIExpression()), !dbg !1196
  %exitcond.not.i60 = icmp eq i32 %inc.i58, 4, !dbg !1237
  br i1 %exitcond.not.i60, label %add4x4_idct_dc.exit62, label %for.body.i26, !dbg !1202, !llvm.loop !1238

add4x4_idct_dc.exit62:                            ; preds = %x264_clip_uint8.exit55.i61
  %arrayidx4 = getelementptr inbounds i8, ptr %p_dst.addr.0153, i64 8, !dbg !1240
  %arrayidx5 = getelementptr inbounds i16, ptr %dct.addr.0154, i64 2, !dbg !1241
  %18 = load i16, ptr %arrayidx5, align 2, !dbg !1241, !tbaa !246
  call void @llvm.dbg.value(metadata ptr %arrayidx4, metadata !808, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i16 %18, metadata !813, metadata !DIExpression()), !dbg !1242
  %conv.i63 = sext i16 %18 to i32, !dbg !1244
  %add.i64 = add nsw i32 %conv.i63, 32, !dbg !1245
  %shr.i65 = ashr i32 %add.i64, 6, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %shr.i65, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1242
  call void @llvm.dbg.value(metadata i32 0, metadata !814, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %arrayidx4, metadata !808, metadata !DIExpression()), !dbg !1242
  br label %for.body.i71, !dbg !1248

for.body.i71:                                     ; preds = %x264_clip_uint8.exit55.i106, %add4x4_idct_dc.exit62
  %i.057.i66 = phi i32 [ 0, %add4x4_idct_dc.exit62 ], [ %inc.i103, %x264_clip_uint8.exit55.i106 ]
  %p_dst.addr.056.i67 = phi ptr [ %arrayidx4, %add4x4_idct_dc.exit62 ], [ %add.ptr.i104, %x264_clip_uint8.exit55.i106 ]
  call void @llvm.dbg.value(metadata i32 %i.057.i66, metadata !814, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.056.i67, metadata !808, metadata !DIExpression()), !dbg !1242
  %19 = load i8, ptr %p_dst.addr.056.i67, align 1, !dbg !1249, !tbaa !240
  %conv3.i68 = zext i8 %19 to i32, !dbg !1249
  %add5.i69 = add nsw i32 %shr.i65, %conv3.i68, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %add5.i69, metadata !468, metadata !DIExpression()), !dbg !1251
  %tobool.not.i.i70 = icmp ult i32 %add5.i69, 256, !dbg !1253
  br i1 %tobool.not.i.i70, label %x264_clip_uint8.exit.i80, label %cond.true.i.i73, !dbg !1254

cond.true.i.i73:                                  ; preds = %for.body.i71
  %20 = icmp sgt i32 %add5.i69, 0, !dbg !1255
  %shr.i.i72 = sext i1 %20 to i32, !dbg !1255
  br label %x264_clip_uint8.exit.i80, !dbg !1254

x264_clip_uint8.exit.i80:                         ; preds = %cond.true.i.i73, %for.body.i71
  %cond.i.i74 = phi i32 [ %shr.i.i72, %cond.true.i.i73 ], [ %add5.i69, %for.body.i71 ], !dbg !1254
  %conv.i.i75 = trunc i32 %cond.i.i74 to i8, !dbg !1254
  store i8 %conv.i.i75, ptr %p_dst.addr.056.i67, align 1, !dbg !1256, !tbaa !240
  %arrayidx7.i76 = getelementptr inbounds i8, ptr %p_dst.addr.056.i67, i64 1, !dbg !1257
  %21 = load i8, ptr %arrayidx7.i76, align 1, !dbg !1257, !tbaa !240
  %conv8.i77 = zext i8 %21 to i32, !dbg !1257
  %add10.i78 = add nsw i32 %shr.i65, %conv8.i77, !dbg !1258
  call void @llvm.dbg.value(metadata i32 %add10.i78, metadata !468, metadata !DIExpression()), !dbg !1259
  %tobool.not.i38.i79 = icmp ult i32 %add10.i78, 256, !dbg !1261
  br i1 %tobool.not.i38.i79, label %x264_clip_uint8.exit43.i89, label %cond.true.i40.i82, !dbg !1262

cond.true.i40.i82:                                ; preds = %x264_clip_uint8.exit.i80
  %22 = icmp sgt i32 %add10.i78, 0, !dbg !1263
  %shr.i39.i81 = sext i1 %22 to i32, !dbg !1263
  br label %x264_clip_uint8.exit43.i89, !dbg !1262

x264_clip_uint8.exit43.i89:                       ; preds = %cond.true.i40.i82, %x264_clip_uint8.exit.i80
  %cond.i41.i83 = phi i32 [ %shr.i39.i81, %cond.true.i40.i82 ], [ %add10.i78, %x264_clip_uint8.exit.i80 ], !dbg !1262
  %conv.i42.i84 = trunc i32 %cond.i41.i83 to i8, !dbg !1262
  store i8 %conv.i42.i84, ptr %arrayidx7.i76, align 1, !dbg !1264, !tbaa !240
  %arrayidx13.i85 = getelementptr inbounds i8, ptr %p_dst.addr.056.i67, i64 2, !dbg !1265
  %23 = load i8, ptr %arrayidx13.i85, align 1, !dbg !1265, !tbaa !240
  %conv14.i86 = zext i8 %23 to i32, !dbg !1265
  %add16.i87 = add nsw i32 %shr.i65, %conv14.i86, !dbg !1266
  call void @llvm.dbg.value(metadata i32 %add16.i87, metadata !468, metadata !DIExpression()), !dbg !1267
  %tobool.not.i44.i88 = icmp ult i32 %add16.i87, 256, !dbg !1269
  br i1 %tobool.not.i44.i88, label %x264_clip_uint8.exit49.i98, label %cond.true.i46.i91, !dbg !1270

cond.true.i46.i91:                                ; preds = %x264_clip_uint8.exit43.i89
  %24 = icmp sgt i32 %add16.i87, 0, !dbg !1271
  %shr.i45.i90 = sext i1 %24 to i32, !dbg !1271
  br label %x264_clip_uint8.exit49.i98, !dbg !1270

x264_clip_uint8.exit49.i98:                       ; preds = %cond.true.i46.i91, %x264_clip_uint8.exit43.i89
  %cond.i47.i92 = phi i32 [ %shr.i45.i90, %cond.true.i46.i91 ], [ %add16.i87, %x264_clip_uint8.exit43.i89 ], !dbg !1270
  %conv.i48.i93 = trunc i32 %cond.i47.i92 to i8, !dbg !1270
  store i8 %conv.i48.i93, ptr %arrayidx13.i85, align 1, !dbg !1272, !tbaa !240
  %arrayidx19.i94 = getelementptr inbounds i8, ptr %p_dst.addr.056.i67, i64 3, !dbg !1273
  %25 = load i8, ptr %arrayidx19.i94, align 1, !dbg !1273, !tbaa !240
  %conv20.i95 = zext i8 %25 to i32, !dbg !1273
  %add22.i96 = add nsw i32 %shr.i65, %conv20.i95, !dbg !1274
  call void @llvm.dbg.value(metadata i32 %add22.i96, metadata !468, metadata !DIExpression()), !dbg !1275
  %tobool.not.i50.i97 = icmp ult i32 %add22.i96, 256, !dbg !1277
  br i1 %tobool.not.i50.i97, label %x264_clip_uint8.exit55.i106, label %cond.true.i52.i100, !dbg !1278

cond.true.i52.i100:                               ; preds = %x264_clip_uint8.exit49.i98
  %26 = icmp sgt i32 %add22.i96, 0, !dbg !1279
  %shr.i51.i99 = sext i1 %26 to i32, !dbg !1279
  br label %x264_clip_uint8.exit55.i106, !dbg !1278

x264_clip_uint8.exit55.i106:                      ; preds = %cond.true.i52.i100, %x264_clip_uint8.exit49.i98
  %cond.i53.i101 = phi i32 [ %shr.i51.i99, %cond.true.i52.i100 ], [ %add22.i96, %x264_clip_uint8.exit49.i98 ], !dbg !1278
  %conv.i54.i102 = trunc i32 %cond.i53.i101 to i8, !dbg !1278
  store i8 %conv.i54.i102, ptr %arrayidx19.i94, align 1, !dbg !1280, !tbaa !240
  %inc.i103 = add nuw nsw i32 %i.057.i66, 1, !dbg !1281
  call void @llvm.dbg.value(metadata i32 %inc.i103, metadata !814, metadata !DIExpression()), !dbg !1247
  %add.ptr.i104 = getelementptr inbounds i8, ptr %p_dst.addr.056.i67, i64 32, !dbg !1282
  call void @llvm.dbg.value(metadata ptr %add.ptr.i104, metadata !808, metadata !DIExpression()), !dbg !1242
  %exitcond.not.i105 = icmp eq i32 %inc.i103, 4, !dbg !1283
  br i1 %exitcond.not.i105, label %add4x4_idct_dc.exit107, label %for.body.i71, !dbg !1248, !llvm.loop !1284

add4x4_idct_dc.exit107:                           ; preds = %x264_clip_uint8.exit55.i106
  %arrayidx6 = getelementptr inbounds i8, ptr %p_dst.addr.0153, i64 12, !dbg !1286
  %arrayidx7 = getelementptr inbounds i16, ptr %dct.addr.0154, i64 3, !dbg !1287
  %27 = load i16, ptr %arrayidx7, align 2, !dbg !1287, !tbaa !246
  call void @llvm.dbg.value(metadata ptr %arrayidx6, metadata !808, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i16 %27, metadata !813, metadata !DIExpression()), !dbg !1288
  %conv.i108 = sext i16 %27 to i32, !dbg !1290
  %add.i109 = add nsw i32 %conv.i108, 32, !dbg !1291
  %shr.i110 = ashr i32 %add.i109, 6, !dbg !1292
  call void @llvm.dbg.value(metadata i32 %shr.i110, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1288
  call void @llvm.dbg.value(metadata i32 0, metadata !814, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata ptr %arrayidx6, metadata !808, metadata !DIExpression()), !dbg !1288
  br label %for.body.i116, !dbg !1294

for.body.i116:                                    ; preds = %x264_clip_uint8.exit55.i151, %add4x4_idct_dc.exit107
  %i.057.i111 = phi i32 [ 0, %add4x4_idct_dc.exit107 ], [ %inc.i148, %x264_clip_uint8.exit55.i151 ]
  %p_dst.addr.056.i112 = phi ptr [ %arrayidx6, %add4x4_idct_dc.exit107 ], [ %add.ptr.i149, %x264_clip_uint8.exit55.i151 ]
  call void @llvm.dbg.value(metadata i32 %i.057.i111, metadata !814, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata ptr %p_dst.addr.056.i112, metadata !808, metadata !DIExpression()), !dbg !1288
  %28 = load i8, ptr %p_dst.addr.056.i112, align 1, !dbg !1295, !tbaa !240
  %conv3.i113 = zext i8 %28 to i32, !dbg !1295
  %add5.i114 = add nsw i32 %shr.i110, %conv3.i113, !dbg !1296
  call void @llvm.dbg.value(metadata i32 %add5.i114, metadata !468, metadata !DIExpression()), !dbg !1297
  %tobool.not.i.i115 = icmp ult i32 %add5.i114, 256, !dbg !1299
  br i1 %tobool.not.i.i115, label %x264_clip_uint8.exit.i125, label %cond.true.i.i118, !dbg !1300

cond.true.i.i118:                                 ; preds = %for.body.i116
  %29 = icmp sgt i32 %add5.i114, 0, !dbg !1301
  %shr.i.i117 = sext i1 %29 to i32, !dbg !1301
  br label %x264_clip_uint8.exit.i125, !dbg !1300

x264_clip_uint8.exit.i125:                        ; preds = %cond.true.i.i118, %for.body.i116
  %cond.i.i119 = phi i32 [ %shr.i.i117, %cond.true.i.i118 ], [ %add5.i114, %for.body.i116 ], !dbg !1300
  %conv.i.i120 = trunc i32 %cond.i.i119 to i8, !dbg !1300
  store i8 %conv.i.i120, ptr %p_dst.addr.056.i112, align 1, !dbg !1302, !tbaa !240
  %arrayidx7.i121 = getelementptr inbounds i8, ptr %p_dst.addr.056.i112, i64 1, !dbg !1303
  %30 = load i8, ptr %arrayidx7.i121, align 1, !dbg !1303, !tbaa !240
  %conv8.i122 = zext i8 %30 to i32, !dbg !1303
  %add10.i123 = add nsw i32 %shr.i110, %conv8.i122, !dbg !1304
  call void @llvm.dbg.value(metadata i32 %add10.i123, metadata !468, metadata !DIExpression()), !dbg !1305
  %tobool.not.i38.i124 = icmp ult i32 %add10.i123, 256, !dbg !1307
  br i1 %tobool.not.i38.i124, label %x264_clip_uint8.exit43.i134, label %cond.true.i40.i127, !dbg !1308

cond.true.i40.i127:                               ; preds = %x264_clip_uint8.exit.i125
  %31 = icmp sgt i32 %add10.i123, 0, !dbg !1309
  %shr.i39.i126 = sext i1 %31 to i32, !dbg !1309
  br label %x264_clip_uint8.exit43.i134, !dbg !1308

x264_clip_uint8.exit43.i134:                      ; preds = %cond.true.i40.i127, %x264_clip_uint8.exit.i125
  %cond.i41.i128 = phi i32 [ %shr.i39.i126, %cond.true.i40.i127 ], [ %add10.i123, %x264_clip_uint8.exit.i125 ], !dbg !1308
  %conv.i42.i129 = trunc i32 %cond.i41.i128 to i8, !dbg !1308
  store i8 %conv.i42.i129, ptr %arrayidx7.i121, align 1, !dbg !1310, !tbaa !240
  %arrayidx13.i130 = getelementptr inbounds i8, ptr %p_dst.addr.056.i112, i64 2, !dbg !1311
  %32 = load i8, ptr %arrayidx13.i130, align 1, !dbg !1311, !tbaa !240
  %conv14.i131 = zext i8 %32 to i32, !dbg !1311
  %add16.i132 = add nsw i32 %shr.i110, %conv14.i131, !dbg !1312
  call void @llvm.dbg.value(metadata i32 %add16.i132, metadata !468, metadata !DIExpression()), !dbg !1313
  %tobool.not.i44.i133 = icmp ult i32 %add16.i132, 256, !dbg !1315
  br i1 %tobool.not.i44.i133, label %x264_clip_uint8.exit49.i143, label %cond.true.i46.i136, !dbg !1316

cond.true.i46.i136:                               ; preds = %x264_clip_uint8.exit43.i134
  %33 = icmp sgt i32 %add16.i132, 0, !dbg !1317
  %shr.i45.i135 = sext i1 %33 to i32, !dbg !1317
  br label %x264_clip_uint8.exit49.i143, !dbg !1316

x264_clip_uint8.exit49.i143:                      ; preds = %cond.true.i46.i136, %x264_clip_uint8.exit43.i134
  %cond.i47.i137 = phi i32 [ %shr.i45.i135, %cond.true.i46.i136 ], [ %add16.i132, %x264_clip_uint8.exit43.i134 ], !dbg !1316
  %conv.i48.i138 = trunc i32 %cond.i47.i137 to i8, !dbg !1316
  store i8 %conv.i48.i138, ptr %arrayidx13.i130, align 1, !dbg !1318, !tbaa !240
  %arrayidx19.i139 = getelementptr inbounds i8, ptr %p_dst.addr.056.i112, i64 3, !dbg !1319
  %34 = load i8, ptr %arrayidx19.i139, align 1, !dbg !1319, !tbaa !240
  %conv20.i140 = zext i8 %34 to i32, !dbg !1319
  %add22.i141 = add nsw i32 %shr.i110, %conv20.i140, !dbg !1320
  call void @llvm.dbg.value(metadata i32 %add22.i141, metadata !468, metadata !DIExpression()), !dbg !1321
  %tobool.not.i50.i142 = icmp ult i32 %add22.i141, 256, !dbg !1323
  br i1 %tobool.not.i50.i142, label %x264_clip_uint8.exit55.i151, label %cond.true.i52.i145, !dbg !1324

cond.true.i52.i145:                               ; preds = %x264_clip_uint8.exit49.i143
  %35 = icmp sgt i32 %add22.i141, 0, !dbg !1325
  %shr.i51.i144 = sext i1 %35 to i32, !dbg !1325
  br label %x264_clip_uint8.exit55.i151, !dbg !1324

x264_clip_uint8.exit55.i151:                      ; preds = %cond.true.i52.i145, %x264_clip_uint8.exit49.i143
  %cond.i53.i146 = phi i32 [ %shr.i51.i144, %cond.true.i52.i145 ], [ %add22.i141, %x264_clip_uint8.exit49.i143 ], !dbg !1324
  %conv.i54.i147 = trunc i32 %cond.i53.i146 to i8, !dbg !1324
  store i8 %conv.i54.i147, ptr %arrayidx19.i139, align 1, !dbg !1326, !tbaa !240
  %inc.i148 = add nuw nsw i32 %i.057.i111, 1, !dbg !1327
  call void @llvm.dbg.value(metadata i32 %inc.i148, metadata !814, metadata !DIExpression()), !dbg !1293
  %add.ptr.i149 = getelementptr inbounds i8, ptr %p_dst.addr.056.i112, i64 32, !dbg !1328
  call void @llvm.dbg.value(metadata ptr %add.ptr.i149, metadata !808, metadata !DIExpression()), !dbg !1288
  %exitcond.not.i150 = icmp eq i32 %inc.i148, 4, !dbg !1329
  br i1 %exitcond.not.i150, label %add4x4_idct_dc.exit152, label %for.body.i116, !dbg !1294, !llvm.loop !1330

add4x4_idct_dc.exit152:                           ; preds = %x264_clip_uint8.exit55.i151
  %inc = add nuw nsw i32 %i.0155, 1, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1141, metadata !DIExpression()), !dbg !1144
  %add.ptr = getelementptr inbounds i16, ptr %dct.addr.0154, i64 4, !dbg !1333
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !1140, metadata !DIExpression()), !dbg !1143
  %add.ptr8 = getelementptr inbounds i8, ptr %p_dst.addr.0153, i64 128, !dbg !1334
  call void @llvm.dbg.value(metadata ptr %add.ptr8, metadata !1139, metadata !DIExpression()), !dbg !1143
  %exitcond.not = icmp eq i32 %inc, 4, !dbg !1335
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !1145, !llvm.loop !1336
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @sub8x8_dct8(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #2 !dbg !1338 {
entry:
  %tmp = alloca [64 x i16], align 16
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1340, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !1341, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !1342, metadata !DIExpression()), !dbg !1384
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp) #9, !dbg !1385
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1343, metadata !DIExpression()), !dbg !1386
  call void @llvm.dbg.value(metadata ptr %tmp, metadata !216, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 8, metadata !221, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !222, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 16, metadata !223, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !224, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 32, metadata !225, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 0, metadata !226, metadata !DIExpression()), !dbg !1389
  br label %for.cond1.preheader.us.i, !dbg !1390

for.cond1.preheader.us.i:                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %entry
  %indvars.iv10.i = phi i64 [ 0, %entry ], [ %indvars.iv.next11.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  %pix1.addr.05.us.i = phi ptr [ %pix1, %entry ], [ %add.ptr.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  %pix2.addr.04.us.i = phi ptr [ %pix2, %entry ], [ %add.ptr12.us.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv10.i, metadata !226, metadata !DIExpression()), !dbg !1389
  call void @llvm.dbg.value(metadata ptr %pix1.addr.05.us.i, metadata !222, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %pix2.addr.04.us.i, metadata !224, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 0, metadata !228, metadata !DIExpression()), !dbg !1391
  %0 = shl nsw i64 %indvars.iv10.i, 3
  br label %for.body4.us.i, !dbg !1392

for.body4.us.i:                                   ; preds = %for.body4.us.i, %for.cond1.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %indvars.iv.next.i, %for.body4.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !228, metadata !DIExpression()), !dbg !1391
  %arrayidx.us.i = getelementptr inbounds i8, ptr %pix1.addr.05.us.i, i64 %indvars.iv.i, !dbg !1393
  %1 = load i8, ptr %arrayidx.us.i, align 1, !dbg !1393, !tbaa !240
  %conv.us.i = zext i8 %1 to i16, !dbg !1393
  %arrayidx6.us.i = getelementptr inbounds i8, ptr %pix2.addr.04.us.i, i64 %indvars.iv.i, !dbg !1394
  %2 = load i8, ptr %arrayidx6.us.i, align 1, !dbg !1394, !tbaa !240
  %conv7.us.i = zext i8 %2 to i16, !dbg !1394
  %sub.us.i = sub nsw i16 %conv.us.i, %conv7.us.i, !dbg !1395
  %3 = add nuw nsw i64 %indvars.iv.i, %0, !dbg !1396
  %arrayidx10.us.i = getelementptr inbounds i16, ptr %tmp, i64 %3, !dbg !1397
  store i16 %sub.us.i, ptr %arrayidx10.us.i, align 2, !dbg !1398, !tbaa !246
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !228, metadata !DIExpression()), !dbg !1391
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !1400
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !dbg !1392, !llvm.loop !1401

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i
  %add.ptr.us.i = getelementptr inbounds i8, ptr %pix1.addr.05.us.i, i64 16, !dbg !1403
  call void @llvm.dbg.value(metadata ptr %add.ptr.us.i, metadata !222, metadata !DIExpression()), !dbg !1387
  %add.ptr12.us.i = getelementptr inbounds i8, ptr %pix2.addr.04.us.i, i64 32, !dbg !1404
  call void @llvm.dbg.value(metadata ptr %add.ptr12.us.i, metadata !224, metadata !DIExpression()), !dbg !1387
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1, !dbg !1405
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next11.i, metadata !226, metadata !DIExpression()), !dbg !1389
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next11.i, 8, !dbg !1406
  br i1 %exitcond15.not.i, label %for.body, label %for.cond1.preheader.us.i, !dbg !1390, !llvm.loop !1407

for.body:                                         ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1344, metadata !DIExpression()), !dbg !1409
  %arrayidx = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %indvars.iv, !dbg !1410
  %4 = load i16, ptr %arrayidx, align 2, !dbg !1410, !tbaa !246
  %conv = sext i16 %4 to i32, !dbg !1410
  %5 = add nuw nsw i64 %indvars.iv, 56, !dbg !1410
  %arrayidx3 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %5, !dbg !1410
  %6 = load i16, ptr %arrayidx3, align 2, !dbg !1410, !tbaa !246
  %conv4 = sext i16 %6 to i32, !dbg !1410
  %add5 = add nsw i32 %conv4, %conv, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %add5, metadata !1346, metadata !DIExpression()), !dbg !1411
  %7 = add nuw nsw i64 %indvars.iv, 8, !dbg !1410
  %arrayidx8 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %7, !dbg !1410
  %8 = load i16, ptr %arrayidx8, align 2, !dbg !1410, !tbaa !246
  %conv9 = sext i16 %8 to i32, !dbg !1410
  %9 = add nuw nsw i64 %indvars.iv, 48, !dbg !1410
  %arrayidx12 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %9, !dbg !1410
  %10 = load i16, ptr %arrayidx12, align 2, !dbg !1410, !tbaa !246
  %conv13 = sext i16 %10 to i32, !dbg !1410
  %add14 = add nsw i32 %conv13, %conv9, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %add14, metadata !1349, metadata !DIExpression()), !dbg !1411
  %11 = add nuw nsw i64 %indvars.iv, 16, !dbg !1410
  %arrayidx17 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %11, !dbg !1410
  %12 = load i16, ptr %arrayidx17, align 2, !dbg !1410, !tbaa !246
  %conv18 = sext i16 %12 to i32, !dbg !1410
  %13 = add nuw nsw i64 %indvars.iv, 40, !dbg !1410
  %arrayidx21 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %13, !dbg !1410
  %14 = load i16, ptr %arrayidx21, align 2, !dbg !1410, !tbaa !246
  %conv22 = sext i16 %14 to i32, !dbg !1410
  %add23 = add nsw i32 %conv22, %conv18, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %add23, metadata !1350, metadata !DIExpression()), !dbg !1411
  %15 = add nuw nsw i64 %indvars.iv, 24, !dbg !1410
  %arrayidx26 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %15, !dbg !1410
  %16 = load i16, ptr %arrayidx26, align 2, !dbg !1410, !tbaa !246
  %conv27 = sext i16 %16 to i32, !dbg !1410
  %17 = add nuw nsw i64 %indvars.iv, 32, !dbg !1410
  %arrayidx30 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %17, !dbg !1410
  %18 = load i16, ptr %arrayidx30, align 2, !dbg !1410, !tbaa !246
  %conv31 = sext i16 %18 to i32, !dbg !1410
  %add32 = add nsw i32 %conv31, %conv27, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %add32, metadata !1351, metadata !DIExpression()), !dbg !1411
  %add33 = add nsw i32 %add32, %add5, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %add33, metadata !1352, metadata !DIExpression()), !dbg !1411
  %add34 = add nsw i32 %add23, %add14, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %add34, metadata !1353, metadata !DIExpression()), !dbg !1411
  %sub = sub nsw i32 %add5, %add32, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1354, metadata !DIExpression()), !dbg !1411
  %sub35 = sub nsw i32 %add14, %add23, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %sub35, metadata !1355, metadata !DIExpression()), !dbg !1411
  %sub44 = sub nsw i32 %conv, %conv4, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %sub44, metadata !1356, metadata !DIExpression()), !dbg !1411
  %sub53 = sub nsw i32 %conv9, %conv13, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %sub53, metadata !1357, metadata !DIExpression()), !dbg !1411
  %sub62 = sub nsw i32 %conv18, %conv22, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %sub62, metadata !1358, metadata !DIExpression()), !dbg !1411
  %sub71 = sub nsw i32 %conv27, %conv31, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %sub71, metadata !1359, metadata !DIExpression()), !dbg !1411
  %shr = ashr i32 %sub44, 1, !dbg !1410
  %add72 = add nsw i32 %shr, %sub44, !dbg !1410
  %add73 = add nsw i32 %add72, %sub53, !dbg !1410
  %add74 = add nsw i32 %add73, %sub62, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %add74, metadata !1360, metadata !DIExpression()), !dbg !1411
  %shr76 = ashr i32 %sub62, 1, !dbg !1410
  %19 = add nsw i32 %sub62, %shr76, !dbg !1410
  %20 = add nsw i32 %19, %sub71, !dbg !1410
  %sub78 = sub nsw i32 %sub44, %20, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %sub78, metadata !1361, metadata !DIExpression()), !dbg !1411
  %shr80 = ashr i32 %sub53, 1, !dbg !1410
  %21 = add nsw i32 %sub53, %shr80, !dbg !1410
  %add79 = sub nsw i32 %sub44, %21, !dbg !1410
  %sub82 = add nsw i32 %add79, %sub71, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %sub82, metadata !1362, metadata !DIExpression()), !dbg !1411
  %sub83 = sub nsw i32 %sub53, %sub62, !dbg !1410
  %shr84 = ashr i32 %sub71, 1, !dbg !1410
  %add85 = add nsw i32 %sub71, %sub83, !dbg !1410
  %add86 = add nsw i32 %add85, %shr84, !dbg !1410
  call void @llvm.dbg.value(metadata i32 %add86, metadata !1363, metadata !DIExpression()), !dbg !1411
  %add87 = add nsw i32 %add33, %add34, !dbg !1410
  %conv88 = trunc i32 %add87 to i16, !dbg !1410
  store i16 %conv88, ptr %arrayidx, align 2, !dbg !1410, !tbaa !246
  %22 = lshr i32 %add86, 2, !dbg !1410
  %add93 = add nsw i32 %22, %add74, !dbg !1410
  %conv94 = trunc i32 %add93 to i16, !dbg !1410
  store i16 %conv94, ptr %arrayidx8, align 2, !dbg !1410, !tbaa !246
  %23 = lshr i32 %sub35, 1, !dbg !1410
  %add99 = add i32 %sub, %23, !dbg !1410
  %conv100 = trunc i32 %add99 to i16, !dbg !1410
  store i16 %conv100, ptr %arrayidx17, align 2, !dbg !1410, !tbaa !246
  %24 = lshr i32 %sub82, 2, !dbg !1410
  %add105 = add nsw i32 %sub78, %24, !dbg !1410
  %conv106 = trunc i32 %add105 to i16, !dbg !1410
  store i16 %conv106, ptr %arrayidx26, align 2, !dbg !1410, !tbaa !246
  %sub110 = sub nsw i32 %add33, %add34, !dbg !1410
  %conv111 = trunc i32 %sub110 to i16, !dbg !1410
  store i16 %conv111, ptr %arrayidx30, align 2, !dbg !1410, !tbaa !246
  %25 = lshr i32 %sub78, 2, !dbg !1410
  %sub116 = sub nsw i32 %sub82, %25, !dbg !1410
  %conv117 = trunc i32 %sub116 to i16, !dbg !1410
  store i16 %conv117, ptr %arrayidx21, align 2, !dbg !1410, !tbaa !246
  %26 = lshr i32 %sub, 1, !dbg !1410
  %sub122 = sub i32 %26, %sub35, !dbg !1410
  %conv123 = trunc i32 %sub122 to i16, !dbg !1410
  store i16 %conv123, ptr %arrayidx12, align 2, !dbg !1410, !tbaa !246
  %27 = lshr i32 %add74, 2, !dbg !1410
  %sub128 = sub nsw i32 %27, %add86, !dbg !1410
  %conv129 = trunc i32 %sub128 to i16, !dbg !1410
  store i16 %conv129, ptr %arrayidx3, align 2, !dbg !1410, !tbaa !246
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1412
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1344, metadata !DIExpression()), !dbg !1409
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !1413
  br i1 %exitcond.not, label %for.body138, label %for.body, !dbg !1414, !llvm.loop !1415

for.cond.cleanup137:                              ; preds = %for.body138
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp) #9, !dbg !1417
  ret void, !dbg !1417

for.body138:                                      ; preds = %for.body, %for.body138
  %indvars.iv427 = phi i64 [ %indvars.iv.next428, %for.body138 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv427, metadata !1364, metadata !DIExpression()), !dbg !1418
  %28 = shl nuw nsw i64 %indvars.iv427, 3, !dbg !1419
  %arrayidx142 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %28, !dbg !1419
  %29 = load i16, ptr %arrayidx142, align 16, !dbg !1419, !tbaa !246
  %conv143 = sext i16 %29 to i32, !dbg !1419
  %30 = or i64 %28, 7, !dbg !1419
  %arrayidx147 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %30, !dbg !1419
  %31 = load i16, ptr %arrayidx147, align 2, !dbg !1419, !tbaa !246
  %conv148 = sext i16 %31 to i32, !dbg !1419
  %add149 = add nsw i32 %conv148, %conv143, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %add149, metadata !1366, metadata !DIExpression()), !dbg !1420
  %32 = or i64 %28, 1, !dbg !1419
  %arrayidx154 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %32, !dbg !1419
  %33 = load i16, ptr %arrayidx154, align 2, !dbg !1419, !tbaa !246
  %conv155 = sext i16 %33 to i32, !dbg !1419
  %34 = or i64 %28, 6, !dbg !1419
  %arrayidx159 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %34, !dbg !1419
  %35 = load i16, ptr %arrayidx159, align 4, !dbg !1419, !tbaa !246
  %conv160 = sext i16 %35 to i32, !dbg !1419
  %add161 = add nsw i32 %conv160, %conv155, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %add161, metadata !1369, metadata !DIExpression()), !dbg !1420
  %36 = or i64 %28, 2, !dbg !1419
  %arrayidx166 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %36, !dbg !1419
  %37 = load i16, ptr %arrayidx166, align 4, !dbg !1419, !tbaa !246
  %conv167 = sext i16 %37 to i32, !dbg !1419
  %38 = or i64 %28, 5, !dbg !1419
  %arrayidx171 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %38, !dbg !1419
  %39 = load i16, ptr %arrayidx171, align 2, !dbg !1419, !tbaa !246
  %conv172 = sext i16 %39 to i32, !dbg !1419
  %add173 = add nsw i32 %conv172, %conv167, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %add173, metadata !1370, metadata !DIExpression()), !dbg !1420
  %40 = or i64 %28, 3, !dbg !1419
  %arrayidx178 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %40, !dbg !1419
  %41 = load i16, ptr %arrayidx178, align 2, !dbg !1419, !tbaa !246
  %conv179 = sext i16 %41 to i32, !dbg !1419
  %42 = or i64 %28, 4, !dbg !1419
  %arrayidx183 = getelementptr inbounds [64 x i16], ptr %tmp, i64 0, i64 %42, !dbg !1419
  %43 = load i16, ptr %arrayidx183, align 8, !dbg !1419, !tbaa !246
  %conv184 = sext i16 %43 to i32, !dbg !1419
  %add185 = add nsw i32 %conv184, %conv179, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %add185, metadata !1371, metadata !DIExpression()), !dbg !1420
  %add187 = add nsw i32 %add185, %add149, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %add187, metadata !1372, metadata !DIExpression()), !dbg !1420
  %add189 = add nsw i32 %add173, %add161, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %add189, metadata !1373, metadata !DIExpression()), !dbg !1420
  %sub191 = sub nsw i32 %add149, %add185, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %sub191, metadata !1374, metadata !DIExpression()), !dbg !1420
  %sub193 = sub nsw i32 %add161, %add173, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %sub193, metadata !1375, metadata !DIExpression()), !dbg !1420
  %sub205 = sub nsw i32 %conv143, %conv148, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %sub205, metadata !1376, metadata !DIExpression()), !dbg !1420
  %sub217 = sub nsw i32 %conv155, %conv160, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %sub217, metadata !1377, metadata !DIExpression()), !dbg !1420
  %sub229 = sub nsw i32 %conv167, %conv172, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %sub229, metadata !1378, metadata !DIExpression()), !dbg !1420
  %sub241 = sub nsw i32 %conv179, %conv184, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %sub241, metadata !1379, metadata !DIExpression()), !dbg !1420
  %shr244 = ashr i32 %sub205, 1, !dbg !1419
  %add243 = add nsw i32 %shr244, %sub205, !dbg !1419
  %add245 = add nsw i32 %add243, %sub217, !dbg !1419
  %add246 = add nsw i32 %add245, %sub229, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %add246, metadata !1380, metadata !DIExpression()), !dbg !1420
  %shr249 = ashr i32 %sub229, 1, !dbg !1419
  %44 = add nsw i32 %sub229, %shr249, !dbg !1419
  %45 = add nsw i32 %44, %sub241, !dbg !1419
  %sub251 = sub nsw i32 %sub205, %45, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %sub251, metadata !1381, metadata !DIExpression()), !dbg !1420
  %shr254 = ashr i32 %sub217, 1, !dbg !1419
  %46 = add nsw i32 %sub217, %shr254, !dbg !1419
  %add253 = sub nsw i32 %sub205, %46, !dbg !1419
  %sub256 = add nsw i32 %add253, %sub241, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %sub256, metadata !1382, metadata !DIExpression()), !dbg !1420
  %sub258 = sub nsw i32 %sub217, %sub229, !dbg !1419
  %shr259 = ashr i32 %sub241, 1, !dbg !1419
  %add260 = add nsw i32 %sub241, %sub258, !dbg !1419
  %add261 = add nsw i32 %add260, %shr259, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %add261, metadata !1383, metadata !DIExpression()), !dbg !1420
  %add262 = add nsw i32 %add187, %add189, !dbg !1419
  %conv263 = trunc i32 %add262 to i16, !dbg !1419
  %arrayidx266 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv427, !dbg !1419
  store i16 %conv263, ptr %arrayidx266, align 2, !dbg !1419, !tbaa !246
  %47 = lshr i32 %add261, 2, !dbg !1419
  %add268 = add nsw i32 %47, %add246, !dbg !1419
  %conv269 = trunc i32 %add268 to i16, !dbg !1419
  %48 = add nuw nsw i64 %indvars.iv427, 8, !dbg !1419
  %arrayidx272 = getelementptr inbounds i16, ptr %dct, i64 %48, !dbg !1419
  store i16 %conv269, ptr %arrayidx272, align 2, !dbg !1419, !tbaa !246
  %49 = lshr i32 %sub193, 1, !dbg !1419
  %add274 = add i32 %sub191, %49, !dbg !1419
  %conv275 = trunc i32 %add274 to i16, !dbg !1419
  %50 = add nuw nsw i64 %indvars.iv427, 16, !dbg !1419
  %arrayidx278 = getelementptr inbounds i16, ptr %dct, i64 %50, !dbg !1419
  store i16 %conv275, ptr %arrayidx278, align 2, !dbg !1419, !tbaa !246
  %51 = lshr i32 %sub256, 2, !dbg !1419
  %add280 = add nsw i32 %sub251, %51, !dbg !1419
  %conv281 = trunc i32 %add280 to i16, !dbg !1419
  %52 = add nuw nsw i64 %indvars.iv427, 24, !dbg !1419
  %arrayidx284 = getelementptr inbounds i16, ptr %dct, i64 %52, !dbg !1419
  store i16 %conv281, ptr %arrayidx284, align 2, !dbg !1419, !tbaa !246
  %sub285 = sub nsw i32 %add187, %add189, !dbg !1419
  %conv286 = trunc i32 %sub285 to i16, !dbg !1419
  %53 = add nuw nsw i64 %indvars.iv427, 32, !dbg !1419
  %arrayidx289 = getelementptr inbounds i16, ptr %dct, i64 %53, !dbg !1419
  store i16 %conv286, ptr %arrayidx289, align 2, !dbg !1419, !tbaa !246
  %54 = lshr i32 %sub251, 2, !dbg !1419
  %sub291 = sub nsw i32 %sub256, %54, !dbg !1419
  %conv292 = trunc i32 %sub291 to i16, !dbg !1419
  %55 = add nuw nsw i64 %indvars.iv427, 40, !dbg !1419
  %arrayidx295 = getelementptr inbounds i16, ptr %dct, i64 %55, !dbg !1419
  store i16 %conv292, ptr %arrayidx295, align 2, !dbg !1419, !tbaa !246
  %56 = lshr i32 %sub191, 1, !dbg !1419
  %sub297 = sub i32 %56, %sub193, !dbg !1419
  %conv298 = trunc i32 %sub297 to i16, !dbg !1419
  %57 = add nuw nsw i64 %indvars.iv427, 48, !dbg !1419
  %arrayidx301 = getelementptr inbounds i16, ptr %dct, i64 %57, !dbg !1419
  store i16 %conv298, ptr %arrayidx301, align 2, !dbg !1419, !tbaa !246
  %58 = lshr i32 %add246, 2, !dbg !1419
  %sub303 = sub nsw i32 %58, %add261, !dbg !1419
  %conv304 = trunc i32 %sub303 to i16, !dbg !1419
  %59 = add nuw nsw i64 %indvars.iv427, 56, !dbg !1419
  %arrayidx307 = getelementptr inbounds i16, ptr %dct, i64 %59, !dbg !1419
  store i16 %conv304, ptr %arrayidx307, align 2, !dbg !1419, !tbaa !246
  %indvars.iv.next428 = add nuw nsw i64 %indvars.iv427, 1, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next428, metadata !1364, metadata !DIExpression()), !dbg !1418
  %exitcond445.not = icmp eq i64 %indvars.iv.next428, 8, !dbg !1422
  br i1 %exitcond445.not, label %for.cond.cleanup137, label %for.body138, !dbg !1423, !llvm.loop !1424
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @add8x8_idct8(ptr nocapture noundef %dst, ptr nocapture noundef %dct) #4 !dbg !1426 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1428, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1429, metadata !DIExpression()), !dbg !1470
  %0 = load i16, ptr %dct, align 2, !dbg !1471, !tbaa !246
  %add = add i16 %0, 32, !dbg !1471
  store i16 %add, ptr %dct, align 2, !dbg !1471, !tbaa !246
  call void @llvm.dbg.value(metadata i32 0, metadata !1430, metadata !DIExpression()), !dbg !1472
  br label %for.body, !dbg !1473

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %1 = phi i16 [ %add, %entry ], [ %.pre, %for.body.for.body_crit_edge ], !dbg !1474
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1430, metadata !DIExpression()), !dbg !1472
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv, !dbg !1474
  %conv5692 = zext i16 %1 to i32, !dbg !1474
  %2 = add nuw nsw i64 %indvars.iv, 32, !dbg !1474
  %arrayidx8 = getelementptr inbounds i16, ptr %dct, i64 %2, !dbg !1474
  %3 = load i16, ptr %arrayidx8, align 2, !dbg !1474, !tbaa !246
  %conv9693 = zext i16 %3 to i32, !dbg !1474
  %add10 = add nuw nsw i32 %conv9693, %conv5692, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %add10, metadata !1432, metadata !DIExpression()), !dbg !1475
  %sub = sub nsw i32 %conv5692, %conv9693, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1435, metadata !DIExpression()), !dbg !1475
  %4 = add nuw nsw i64 %indvars.iv, 16, !dbg !1474
  %arrayidx21 = getelementptr inbounds i16, ptr %dct, i64 %4, !dbg !1474
  %5 = load i16, ptr %arrayidx21, align 2, !dbg !1474, !tbaa !246
  %conv22 = sext i16 %5 to i32, !dbg !1474
  %shr = ashr i32 %conv22, 1, !dbg !1474
  %6 = add nuw nsw i64 %indvars.iv, 48, !dbg !1474
  %arrayidx25 = getelementptr inbounds i16, ptr %dct, i64 %6, !dbg !1474
  %7 = load i16, ptr %arrayidx25, align 2, !dbg !1474, !tbaa !246
  %conv26 = sext i16 %7 to i32, !dbg !1474
  %sub27 = sub nsw i32 %shr, %conv26, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %sub27, metadata !1436, metadata !DIExpression()), !dbg !1475
  %shr32 = ashr i32 %conv26, 1, !dbg !1474
  %add37 = add nsw i32 %shr32, %conv22, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %add37, metadata !1437, metadata !DIExpression()), !dbg !1475
  %add38 = add nsw i32 %add37, %add10, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %add38, metadata !1438, metadata !DIExpression()), !dbg !1475
  %add39 = add nsw i32 %sub27, %sub, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %add39, metadata !1439, metadata !DIExpression()), !dbg !1475
  %sub40 = sub nsw i32 %sub, %sub27, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %sub40, metadata !1440, metadata !DIExpression()), !dbg !1475
  %sub41 = sub nsw i32 %add10, %add37, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %sub41, metadata !1441, metadata !DIExpression()), !dbg !1475
  %8 = add nuw nsw i64 %indvars.iv, 24, !dbg !1474
  %arrayidx44 = getelementptr inbounds i16, ptr %dct, i64 %8, !dbg !1474
  %9 = load i16, ptr %arrayidx44, align 2, !dbg !1474, !tbaa !246
  %conv45 = sext i16 %9 to i32, !dbg !1474
  %10 = add nuw nsw i64 %indvars.iv, 40, !dbg !1474
  %arrayidx49 = getelementptr inbounds i16, ptr %dct, i64 %10, !dbg !1474
  %11 = load i16, ptr %arrayidx49, align 2, !dbg !1474, !tbaa !246
  %conv50 = sext i16 %11 to i32, !dbg !1474
  %12 = add nuw nsw i64 %indvars.iv, 56, !dbg !1474
  %arrayidx54 = getelementptr inbounds i16, ptr %dct, i64 %12, !dbg !1474
  %13 = load i16, ptr %arrayidx54, align 2, !dbg !1474, !tbaa !246
  %conv55 = sext i16 %13 to i32, !dbg !1474
  %shr61 = ashr i32 %conv55, 1, !dbg !1474
  %14 = add nsw i32 %conv45, %conv55, !dbg !1474
  %15 = add nsw i32 %14, %shr61, !dbg !1474
  %sub62 = sub nsw i32 %conv50, %15, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %sub62, metadata !1442, metadata !DIExpression()), !dbg !1475
  %16 = add nuw nsw i64 %indvars.iv, 8, !dbg !1474
  %arrayidx65 = getelementptr inbounds i16, ptr %dct, i64 %16, !dbg !1474
  %17 = load i16, ptr %arrayidx65, align 2, !dbg !1474, !tbaa !246
  %conv66 = sext i16 %17 to i32, !dbg !1474
  %shr81 = ashr i32 %conv45, 1, !dbg !1474
  %18 = add nsw i32 %shr81, %conv45, !dbg !1474
  %add71 = sub nsw i32 %conv55, %18, !dbg !1474
  %sub82 = add nsw i32 %add71, %conv66, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %sub82, metadata !1443, metadata !DIExpression()), !dbg !1475
  %shr102 = ashr i32 %conv50, 1, !dbg !1474
  %add92 = add nsw i32 %conv55, %conv50, !dbg !1474
  %add97 = add nsw i32 %add92, %shr102, !dbg !1474
  %add103 = sub nsw i32 %add97, %conv66, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %add103, metadata !1444, metadata !DIExpression()), !dbg !1475
  %add112 = add nsw i32 %conv50, %conv45, !dbg !1474
  %add117 = add nsw i32 %add112, %conv66, !dbg !1474
  %shr122 = ashr i32 %conv66, 1, !dbg !1474
  %add123 = add nsw i32 %add117, %shr122, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %add123, metadata !1445, metadata !DIExpression()), !dbg !1475
  %shr124 = ashr i32 %add123, 2, !dbg !1474
  %add125 = add nsw i32 %shr124, %sub62, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %add125, metadata !1446, metadata !DIExpression()), !dbg !1475
  %shr126 = ashr i32 %add103, 2, !dbg !1474
  %add127 = add nsw i32 %shr126, %sub82, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %add127, metadata !1447, metadata !DIExpression()), !dbg !1475
  %shr128 = ashr i32 %sub82, 2, !dbg !1474
  %sub129 = sub nsw i32 %shr128, %add103, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %sub129, metadata !1448, metadata !DIExpression()), !dbg !1475
  %shr130 = ashr i32 %sub62, 2, !dbg !1474
  %sub131 = sub nsw i32 %add123, %shr130, !dbg !1474
  call void @llvm.dbg.value(metadata i32 %sub131, metadata !1449, metadata !DIExpression()), !dbg !1475
  %add132 = add nsw i32 %sub131, %add38, !dbg !1474
  %conv133 = trunc i32 %add132 to i16, !dbg !1474
  store i16 %conv133, ptr %arrayidx4, align 2, !dbg !1474, !tbaa !246
  %add137 = add nsw i32 %sub129, %add39, !dbg !1474
  %conv138 = trunc i32 %add137 to i16, !dbg !1474
  store i16 %conv138, ptr %arrayidx65, align 2, !dbg !1474, !tbaa !246
  %add142 = add nsw i32 %add127, %sub40, !dbg !1474
  %conv143 = trunc i32 %add142 to i16, !dbg !1474
  store i16 %conv143, ptr %arrayidx21, align 2, !dbg !1474, !tbaa !246
  %add147 = add nsw i32 %add125, %sub41, !dbg !1474
  %conv148 = trunc i32 %add147 to i16, !dbg !1474
  store i16 %conv148, ptr %arrayidx44, align 2, !dbg !1474, !tbaa !246
  %sub152 = sub nsw i32 %sub41, %add125, !dbg !1474
  %conv153 = trunc i32 %sub152 to i16, !dbg !1474
  store i16 %conv153, ptr %arrayidx8, align 2, !dbg !1474, !tbaa !246
  %sub157 = sub nsw i32 %sub40, %add127, !dbg !1474
  %conv158 = trunc i32 %sub157 to i16, !dbg !1474
  store i16 %conv158, ptr %arrayidx49, align 2, !dbg !1474, !tbaa !246
  %sub162 = sub nsw i32 %add39, %sub129, !dbg !1474
  %conv163 = trunc i32 %sub162 to i16, !dbg !1474
  store i16 %conv163, ptr %arrayidx25, align 2, !dbg !1474, !tbaa !246
  %sub167 = sub nsw i32 %add38, %sub131, !dbg !1474
  %conv168 = trunc i32 %sub167 to i16, !dbg !1474
  store i16 %conv168, ptr %arrayidx54, align 2, !dbg !1474, !tbaa !246
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1430, metadata !DIExpression()), !dbg !1472
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !1477
  br i1 %exitcond.not, label %for.body177, label %for.body.for.body_crit_edge, !dbg !1473, !llvm.loop !1478

for.body.for.body_crit_edge:                      ; preds = %for.body
  %arrayidx4.phi.trans.insert = getelementptr inbounds i16, ptr %dct, i64 %indvars.iv.next
  %.pre = load i16, ptr %arrayidx4.phi.trans.insert, align 2, !dbg !1474, !tbaa !246
  br label %for.body, !dbg !1473

for.cond.cleanup176:                              ; preds = %x264_clip_uint8.exit657
  ret void, !dbg !1480

for.body177:                                      ; preds = %for.body, %x264_clip_uint8.exit657
  %indvars.iv673 = phi i64 [ %indvars.iv.next674, %x264_clip_uint8.exit657 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv673, metadata !1450, metadata !DIExpression()), !dbg !1481
  %19 = shl nuw nsw i64 %indvars.iv673, 3, !dbg !1482
  %arrayidx181 = getelementptr inbounds i16, ptr %dct, i64 %19, !dbg !1482
  %20 = load i16, ptr %arrayidx181, align 2, !dbg !1482, !tbaa !246
  %conv182 = sext i16 %20 to i32, !dbg !1482
  %21 = or i64 %19, 4, !dbg !1482
  %arrayidx186 = getelementptr inbounds i16, ptr %dct, i64 %21, !dbg !1482
  %22 = load i16, ptr %arrayidx186, align 2, !dbg !1482, !tbaa !246
  %conv187 = sext i16 %22 to i32, !dbg !1482
  %add188 = add nsw i32 %conv187, %conv182, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add188, metadata !1452, metadata !DIExpression()), !dbg !1483
  %sub200 = sub nsw i32 %conv182, %conv187, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %sub200, metadata !1455, metadata !DIExpression()), !dbg !1483
  %23 = or i64 %19, 2, !dbg !1482
  %arrayidx205 = getelementptr inbounds i16, ptr %dct, i64 %23, !dbg !1482
  %24 = load i16, ptr %arrayidx205, align 2, !dbg !1482, !tbaa !246
  %conv206 = sext i16 %24 to i32, !dbg !1482
  %shr207 = ashr i32 %conv206, 1, !dbg !1482
  %25 = or i64 %19, 6, !dbg !1482
  %arrayidx211 = getelementptr inbounds i16, ptr %dct, i64 %25, !dbg !1482
  %26 = load i16, ptr %arrayidx211, align 2, !dbg !1482, !tbaa !246
  %conv212 = sext i16 %26 to i32, !dbg !1482
  %sub213 = sub nsw i32 %shr207, %conv212, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %sub213, metadata !1456, metadata !DIExpression()), !dbg !1483
  %shr220 = ashr i32 %conv212, 1, !dbg !1482
  %add226 = add nsw i32 %shr220, %conv206, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add226, metadata !1457, metadata !DIExpression()), !dbg !1483
  %add228 = add nsw i32 %add226, %add188, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add228, metadata !1458, metadata !DIExpression()), !dbg !1483
  %add230 = add nsw i32 %sub213, %sub200, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add230, metadata !1459, metadata !DIExpression()), !dbg !1483
  %sub232 = sub nsw i32 %sub200, %sub213, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %sub232, metadata !1460, metadata !DIExpression()), !dbg !1483
  %sub234 = sub nsw i32 %add188, %add226, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %sub234, metadata !1461, metadata !DIExpression()), !dbg !1483
  %27 = or i64 %19, 3, !dbg !1482
  %arrayidx239 = getelementptr inbounds i16, ptr %dct, i64 %27, !dbg !1482
  %28 = load i16, ptr %arrayidx239, align 2, !dbg !1482, !tbaa !246
  %conv240 = sext i16 %28 to i32, !dbg !1482
  %29 = or i64 %19, 5, !dbg !1482
  %arrayidx245 = getelementptr inbounds i16, ptr %dct, i64 %29, !dbg !1482
  %30 = load i16, ptr %arrayidx245, align 2, !dbg !1482, !tbaa !246
  %conv246 = sext i16 %30 to i32, !dbg !1482
  %31 = or i64 %19, 7, !dbg !1482
  %arrayidx251 = getelementptr inbounds i16, ptr %dct, i64 %31, !dbg !1482
  %32 = load i16, ptr %arrayidx251, align 2, !dbg !1482, !tbaa !246
  %conv252 = sext i16 %32 to i32, !dbg !1482
  %shr259 = ashr i32 %conv252, 1, !dbg !1482
  %33 = add nsw i32 %conv240, %conv252, !dbg !1482
  %34 = add nsw i32 %33, %shr259, !dbg !1482
  %sub260 = sub nsw i32 %conv246, %34, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %sub260, metadata !1462, metadata !DIExpression()), !dbg !1483
  %35 = or i64 %19, 1, !dbg !1482
  %arrayidx265 = getelementptr inbounds i16, ptr %dct, i64 %35, !dbg !1482
  %36 = load i16, ptr %arrayidx265, align 2, !dbg !1482, !tbaa !246
  %conv266 = sext i16 %36 to i32, !dbg !1482
  %shr284 = ashr i32 %conv240, 1, !dbg !1482
  %37 = add nsw i32 %shr284, %conv240, !dbg !1482
  %add272 = sub nsw i32 %conv252, %37, !dbg !1482
  %sub285 = add nsw i32 %add272, %conv266, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %sub285, metadata !1463, metadata !DIExpression()), !dbg !1483
  %shr310 = ashr i32 %conv246, 1, !dbg !1482
  %add298 = add nsw i32 %conv252, %conv246, !dbg !1482
  %add304 = add nsw i32 %add298, %shr310, !dbg !1482
  %add311 = sub nsw i32 %add304, %conv266, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add311, metadata !1464, metadata !DIExpression()), !dbg !1483
  %add323 = add nsw i32 %conv246, %conv240, !dbg !1482
  %add329 = add nsw i32 %add323, %conv266, !dbg !1482
  %shr335 = ashr i32 %conv266, 1, !dbg !1482
  %add336 = add nsw i32 %add329, %shr335, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add336, metadata !1465, metadata !DIExpression()), !dbg !1483
  %shr338 = ashr i32 %add336, 2, !dbg !1482
  %add339 = add nsw i32 %shr338, %sub260, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add339, metadata !1466, metadata !DIExpression()), !dbg !1483
  %shr341 = ashr i32 %add311, 2, !dbg !1482
  %add342 = add nsw i32 %shr341, %sub285, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add342, metadata !1467, metadata !DIExpression()), !dbg !1483
  %shr344 = ashr i32 %sub285, 2, !dbg !1482
  %sub345 = sub nsw i32 %shr344, %add311, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %sub345, metadata !1468, metadata !DIExpression()), !dbg !1483
  %shr347 = ashr i32 %sub260, 2, !dbg !1482
  %sub348 = sub nsw i32 %add336, %shr347, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %sub348, metadata !1469, metadata !DIExpression()), !dbg !1483
  %arrayidx351 = getelementptr inbounds i8, ptr %dst, i64 %indvars.iv673, !dbg !1482
  %38 = load i8, ptr %arrayidx351, align 1, !dbg !1482, !tbaa !240
  %conv352 = zext i8 %38 to i32, !dbg !1482
  %add353 = add nsw i32 %sub348, %add228, !dbg !1482
  %shr354 = ashr i32 %add353, 6, !dbg !1482
  %add355 = add nsw i32 %shr354, %conv352, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add355, metadata !468, metadata !DIExpression()), !dbg !1484
  %tobool.not.i = icmp ult i32 %add355, 256, !dbg !1486
  br i1 %tobool.not.i, label %x264_clip_uint8.exit, label %cond.true.i, !dbg !1487

cond.true.i:                                      ; preds = %for.body177
  %39 = icmp sgt i32 %add355, 0, !dbg !1488
  %shr.i = sext i1 %39 to i32, !dbg !1488
  br label %x264_clip_uint8.exit, !dbg !1487

x264_clip_uint8.exit:                             ; preds = %for.body177, %cond.true.i
  %cond.i = phi i32 [ %shr.i, %cond.true.i ], [ %add355, %for.body177 ], !dbg !1487
  %conv.i = trunc i32 %cond.i to i8, !dbg !1487
  store i8 %conv.i, ptr %arrayidx351, align 1, !dbg !1482, !tbaa !240
  %40 = add nuw nsw i64 %indvars.iv673, 32, !dbg !1482
  %arrayidx361 = getelementptr inbounds i8, ptr %dst, i64 %40, !dbg !1482
  %41 = load i8, ptr %arrayidx361, align 1, !dbg !1482, !tbaa !240
  %conv362 = zext i8 %41 to i32, !dbg !1482
  %add363 = add nsw i32 %sub345, %add230, !dbg !1482
  %shr364 = ashr i32 %add363, 6, !dbg !1482
  %add365 = add nsw i32 %shr364, %conv362, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add365, metadata !468, metadata !DIExpression()), !dbg !1489
  %tobool.not.i616 = icmp ult i32 %add365, 256, !dbg !1491
  br i1 %tobool.not.i616, label %x264_clip_uint8.exit621, label %cond.true.i618, !dbg !1492

cond.true.i618:                                   ; preds = %x264_clip_uint8.exit
  %42 = icmp sgt i32 %add365, 0, !dbg !1493
  %shr.i617 = sext i1 %42 to i32, !dbg !1493
  br label %x264_clip_uint8.exit621, !dbg !1492

x264_clip_uint8.exit621:                          ; preds = %x264_clip_uint8.exit, %cond.true.i618
  %cond.i619 = phi i32 [ %shr.i617, %cond.true.i618 ], [ %add365, %x264_clip_uint8.exit ], !dbg !1492
  %conv.i620 = trunc i32 %cond.i619 to i8, !dbg !1492
  store i8 %conv.i620, ptr %arrayidx361, align 1, !dbg !1482, !tbaa !240
  %43 = add nuw nsw i64 %indvars.iv673, 64, !dbg !1482
  %arrayidx372 = getelementptr inbounds i8, ptr %dst, i64 %43, !dbg !1482
  %44 = load i8, ptr %arrayidx372, align 1, !dbg !1482, !tbaa !240
  %conv373 = zext i8 %44 to i32, !dbg !1482
  %add374 = add nsw i32 %add342, %sub232, !dbg !1482
  %shr375 = ashr i32 %add374, 6, !dbg !1482
  %add376 = add nsw i32 %shr375, %conv373, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add376, metadata !468, metadata !DIExpression()), !dbg !1494
  %tobool.not.i622 = icmp ult i32 %add376, 256, !dbg !1496
  br i1 %tobool.not.i622, label %x264_clip_uint8.exit627, label %cond.true.i624, !dbg !1497

cond.true.i624:                                   ; preds = %x264_clip_uint8.exit621
  %45 = icmp sgt i32 %add376, 0, !dbg !1498
  %shr.i623 = sext i1 %45 to i32, !dbg !1498
  br label %x264_clip_uint8.exit627, !dbg !1497

x264_clip_uint8.exit627:                          ; preds = %x264_clip_uint8.exit621, %cond.true.i624
  %cond.i625 = phi i32 [ %shr.i623, %cond.true.i624 ], [ %add376, %x264_clip_uint8.exit621 ], !dbg !1497
  %conv.i626 = trunc i32 %cond.i625 to i8, !dbg !1497
  store i8 %conv.i626, ptr %arrayidx372, align 1, !dbg !1482, !tbaa !240
  %46 = add nuw nsw i64 %indvars.iv673, 96, !dbg !1482
  %arrayidx383 = getelementptr inbounds i8, ptr %dst, i64 %46, !dbg !1482
  %47 = load i8, ptr %arrayidx383, align 1, !dbg !1482, !tbaa !240
  %conv384 = zext i8 %47 to i32, !dbg !1482
  %add385 = add nsw i32 %add339, %sub234, !dbg !1482
  %shr386 = ashr i32 %add385, 6, !dbg !1482
  %add387 = add nsw i32 %shr386, %conv384, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add387, metadata !468, metadata !DIExpression()), !dbg !1499
  %tobool.not.i628 = icmp ult i32 %add387, 256, !dbg !1501
  br i1 %tobool.not.i628, label %x264_clip_uint8.exit633, label %cond.true.i630, !dbg !1502

cond.true.i630:                                   ; preds = %x264_clip_uint8.exit627
  %48 = icmp sgt i32 %add387, 0, !dbg !1503
  %shr.i629 = sext i1 %48 to i32, !dbg !1503
  br label %x264_clip_uint8.exit633, !dbg !1502

x264_clip_uint8.exit633:                          ; preds = %x264_clip_uint8.exit627, %cond.true.i630
  %cond.i631 = phi i32 [ %shr.i629, %cond.true.i630 ], [ %add387, %x264_clip_uint8.exit627 ], !dbg !1502
  %conv.i632 = trunc i32 %cond.i631 to i8, !dbg !1502
  store i8 %conv.i632, ptr %arrayidx383, align 1, !dbg !1482, !tbaa !240
  %49 = add nuw nsw i64 %indvars.iv673, 128, !dbg !1482
  %arrayidx394 = getelementptr inbounds i8, ptr %dst, i64 %49, !dbg !1482
  %50 = load i8, ptr %arrayidx394, align 1, !dbg !1482, !tbaa !240
  %conv395 = zext i8 %50 to i32, !dbg !1482
  %sub396 = sub nsw i32 %sub234, %add339, !dbg !1482
  %shr397 = ashr i32 %sub396, 6, !dbg !1482
  %add398 = add nsw i32 %shr397, %conv395, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add398, metadata !468, metadata !DIExpression()), !dbg !1504
  %tobool.not.i634 = icmp ult i32 %add398, 256, !dbg !1506
  br i1 %tobool.not.i634, label %x264_clip_uint8.exit639, label %cond.true.i636, !dbg !1507

cond.true.i636:                                   ; preds = %x264_clip_uint8.exit633
  %51 = icmp sgt i32 %add398, 0, !dbg !1508
  %shr.i635 = sext i1 %51 to i32, !dbg !1508
  br label %x264_clip_uint8.exit639, !dbg !1507

x264_clip_uint8.exit639:                          ; preds = %x264_clip_uint8.exit633, %cond.true.i636
  %cond.i637 = phi i32 [ %shr.i635, %cond.true.i636 ], [ %add398, %x264_clip_uint8.exit633 ], !dbg !1507
  %conv.i638 = trunc i32 %cond.i637 to i8, !dbg !1507
  store i8 %conv.i638, ptr %arrayidx394, align 1, !dbg !1482, !tbaa !240
  %52 = add nuw nsw i64 %indvars.iv673, 160, !dbg !1482
  %arrayidx405 = getelementptr inbounds i8, ptr %dst, i64 %52, !dbg !1482
  %53 = load i8, ptr %arrayidx405, align 1, !dbg !1482, !tbaa !240
  %conv406 = zext i8 %53 to i32, !dbg !1482
  %sub407 = sub nsw i32 %sub232, %add342, !dbg !1482
  %shr408 = ashr i32 %sub407, 6, !dbg !1482
  %add409 = add nsw i32 %shr408, %conv406, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add409, metadata !468, metadata !DIExpression()), !dbg !1509
  %tobool.not.i640 = icmp ult i32 %add409, 256, !dbg !1511
  br i1 %tobool.not.i640, label %x264_clip_uint8.exit645, label %cond.true.i642, !dbg !1512

cond.true.i642:                                   ; preds = %x264_clip_uint8.exit639
  %54 = icmp sgt i32 %add409, 0, !dbg !1513
  %shr.i641 = sext i1 %54 to i32, !dbg !1513
  br label %x264_clip_uint8.exit645, !dbg !1512

x264_clip_uint8.exit645:                          ; preds = %x264_clip_uint8.exit639, %cond.true.i642
  %cond.i643 = phi i32 [ %shr.i641, %cond.true.i642 ], [ %add409, %x264_clip_uint8.exit639 ], !dbg !1512
  %conv.i644 = trunc i32 %cond.i643 to i8, !dbg !1512
  store i8 %conv.i644, ptr %arrayidx405, align 1, !dbg !1482, !tbaa !240
  %55 = add nuw nsw i64 %indvars.iv673, 192, !dbg !1482
  %arrayidx416 = getelementptr inbounds i8, ptr %dst, i64 %55, !dbg !1482
  %56 = load i8, ptr %arrayidx416, align 1, !dbg !1482, !tbaa !240
  %conv417 = zext i8 %56 to i32, !dbg !1482
  %sub418 = sub nsw i32 %add230, %sub345, !dbg !1482
  %shr419 = ashr i32 %sub418, 6, !dbg !1482
  %add420 = add nsw i32 %shr419, %conv417, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add420, metadata !468, metadata !DIExpression()), !dbg !1514
  %tobool.not.i646 = icmp ult i32 %add420, 256, !dbg !1516
  br i1 %tobool.not.i646, label %x264_clip_uint8.exit651, label %cond.true.i648, !dbg !1517

cond.true.i648:                                   ; preds = %x264_clip_uint8.exit645
  %57 = icmp sgt i32 %add420, 0, !dbg !1518
  %shr.i647 = sext i1 %57 to i32, !dbg !1518
  br label %x264_clip_uint8.exit651, !dbg !1517

x264_clip_uint8.exit651:                          ; preds = %x264_clip_uint8.exit645, %cond.true.i648
  %cond.i649 = phi i32 [ %shr.i647, %cond.true.i648 ], [ %add420, %x264_clip_uint8.exit645 ], !dbg !1517
  %conv.i650 = trunc i32 %cond.i649 to i8, !dbg !1517
  store i8 %conv.i650, ptr %arrayidx416, align 1, !dbg !1482, !tbaa !240
  %58 = add nuw nsw i64 %indvars.iv673, 224, !dbg !1482
  %arrayidx427 = getelementptr inbounds i8, ptr %dst, i64 %58, !dbg !1482
  %59 = load i8, ptr %arrayidx427, align 1, !dbg !1482, !tbaa !240
  %conv428 = zext i8 %59 to i32, !dbg !1482
  %sub429 = sub nsw i32 %add228, %sub348, !dbg !1482
  %shr430 = ashr i32 %sub429, 6, !dbg !1482
  %add431 = add nsw i32 %shr430, %conv428, !dbg !1482
  call void @llvm.dbg.value(metadata i32 %add431, metadata !468, metadata !DIExpression()), !dbg !1519
  %tobool.not.i652 = icmp ult i32 %add431, 256, !dbg !1521
  br i1 %tobool.not.i652, label %x264_clip_uint8.exit657, label %cond.true.i654, !dbg !1522

cond.true.i654:                                   ; preds = %x264_clip_uint8.exit651
  %60 = icmp sgt i32 %add431, 0, !dbg !1523
  %shr.i653 = sext i1 %60 to i32, !dbg !1523
  br label %x264_clip_uint8.exit657, !dbg !1522

x264_clip_uint8.exit657:                          ; preds = %x264_clip_uint8.exit651, %cond.true.i654
  %cond.i655 = phi i32 [ %shr.i653, %cond.true.i654 ], [ %add431, %x264_clip_uint8.exit651 ], !dbg !1522
  %conv.i656 = trunc i32 %cond.i655 to i8, !dbg !1522
  store i8 %conv.i656, ptr %arrayidx427, align 1, !dbg !1482, !tbaa !240
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next674, metadata !1450, metadata !DIExpression()), !dbg !1481
  %exitcond691.not = icmp eq i64 %indvars.iv.next674, 8, !dbg !1525
  br i1 %exitcond691.not, label %for.cond.cleanup176, label %for.body177, !dbg !1526, !llvm.loop !1527
}

; Function Attrs: nofree nosync nounwind uwtable
define internal void @sub16x16_dct8(ptr nocapture noundef writeonly %dct, ptr nocapture noundef readonly %pix1, ptr nocapture noundef readonly %pix2) #2 !dbg !1529 {
entry:
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1531, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata ptr %pix1, metadata !1532, metadata !DIExpression()), !dbg !1534
  call void @llvm.dbg.value(metadata ptr %pix2, metadata !1533, metadata !DIExpression()), !dbg !1534
  tail call void @sub8x8_dct8(ptr noundef %dct, ptr noundef %pix1, ptr noundef %pix2), !dbg !1535
  %arrayidx3 = getelementptr inbounds [64 x i16], ptr %dct, i64 1, !dbg !1536
  %arrayidx5 = getelementptr inbounds i8, ptr %pix1, i64 8, !dbg !1537
  %arrayidx6 = getelementptr inbounds i8, ptr %pix2, i64 8, !dbg !1538
  tail call void @sub8x8_dct8(ptr noundef nonnull %arrayidx3, ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx6), !dbg !1539
  %arrayidx7 = getelementptr inbounds [64 x i16], ptr %dct, i64 2, !dbg !1540
  %arrayidx9 = getelementptr inbounds i8, ptr %pix1, i64 128, !dbg !1541
  %arrayidx10 = getelementptr inbounds i8, ptr %pix2, i64 256, !dbg !1542
  tail call void @sub8x8_dct8(ptr noundef nonnull %arrayidx7, ptr noundef nonnull %arrayidx9, ptr noundef nonnull %arrayidx10), !dbg !1543
  %arrayidx11 = getelementptr inbounds [64 x i16], ptr %dct, i64 3, !dbg !1544
  %arrayidx13 = getelementptr inbounds i8, ptr %pix1, i64 136, !dbg !1545
  %arrayidx14 = getelementptr inbounds i8, ptr %pix2, i64 264, !dbg !1546
  tail call void @sub8x8_dct8(ptr noundef nonnull %arrayidx11, ptr noundef nonnull %arrayidx13, ptr noundef nonnull %arrayidx14), !dbg !1547
  ret void, !dbg !1548
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @add16x16_idct8(ptr nocapture noundef %dst, ptr nocapture noundef %dct) #4 !dbg !1549 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !1551, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1552, metadata !DIExpression()), !dbg !1553
  tail call void @add8x8_idct8(ptr noundef %dst, ptr noundef %dct), !dbg !1554
  %arrayidx2 = getelementptr inbounds i8, ptr %dst, i64 8, !dbg !1555
  %arrayidx3 = getelementptr inbounds [64 x i16], ptr %dct, i64 1, !dbg !1556
  tail call void @add8x8_idct8(ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx3), !dbg !1557
  %arrayidx5 = getelementptr inbounds i8, ptr %dst, i64 256, !dbg !1558
  %arrayidx6 = getelementptr inbounds [64 x i16], ptr %dct, i64 2, !dbg !1559
  tail call void @add8x8_idct8(ptr noundef nonnull %arrayidx5, ptr noundef nonnull %arrayidx6), !dbg !1560
  %arrayidx8 = getelementptr inbounds i8, ptr %dst, i64 264, !dbg !1561
  %arrayidx9 = getelementptr inbounds [64 x i16], ptr %dct, i64 3, !dbg !1562
  tail call void @add8x8_idct8(ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx9), !dbg !1563
  ret void, !dbg !1564
}

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define internal void @dct4x4dc(ptr nocapture noundef %d) #5 !dbg !1565 {
entry:
  %tmp = alloca [16 x i16], align 16
  call void @llvm.dbg.value(metadata ptr %d, metadata !1567, metadata !DIExpression()), !dbg !1585
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #9, !dbg !1586
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1568, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1569, metadata !DIExpression()), !dbg !1588
  br label %for.body, !dbg !1589

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1569, metadata !DIExpression()), !dbg !1588
  %0 = shl nuw nsw i64 %indvars.iv, 2, !dbg !1590
  %arrayidx = getelementptr inbounds i16, ptr %d, i64 %0, !dbg !1591
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1591, !tbaa !246
  %conv210 = zext i16 %1 to i32, !dbg !1591
  %2 = or i64 %0, 1, !dbg !1592
  %arrayidx4 = getelementptr inbounds i16, ptr %d, i64 %2, !dbg !1593
  %3 = load i16, ptr %arrayidx4, align 2, !dbg !1593, !tbaa !246
  %conv5211 = zext i16 %3 to i32, !dbg !1593
  %add6 = add nuw nsw i32 %conv5211, %conv210, !dbg !1594
  call void @llvm.dbg.value(metadata i32 %add6, metadata !1571, metadata !DIExpression()), !dbg !1595
  %sub = sub nsw i32 %conv210, %conv5211, !dbg !1596
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1574, metadata !DIExpression()), !dbg !1595
  %4 = or i64 %0, 2, !dbg !1597
  %arrayidx20 = getelementptr inbounds i16, ptr %d, i64 %4, !dbg !1598
  %5 = load i16, ptr %arrayidx20, align 2, !dbg !1598, !tbaa !246
  %conv21212 = zext i16 %5 to i32, !dbg !1598
  %6 = or i64 %0, 3, !dbg !1599
  %arrayidx25 = getelementptr inbounds i16, ptr %d, i64 %6, !dbg !1600
  %7 = load i16, ptr %arrayidx25, align 2, !dbg !1600, !tbaa !246
  %conv26213 = zext i16 %7 to i32, !dbg !1600
  %add27 = add nuw nsw i32 %conv26213, %conv21212, !dbg !1601
  call void @llvm.dbg.value(metadata i32 %add27, metadata !1575, metadata !DIExpression()), !dbg !1595
  %sub38 = sub nsw i32 %conv21212, %conv26213, !dbg !1602
  call void @llvm.dbg.value(metadata i32 %sub38, metadata !1576, metadata !DIExpression()), !dbg !1595
  %add39 = add nuw nsw i32 %add27, %add6, !dbg !1603
  %conv40 = trunc i32 %add39 to i16, !dbg !1604
  %arrayidx43 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %indvars.iv, !dbg !1605
  store i16 %conv40, ptr %arrayidx43, align 2, !dbg !1606, !tbaa !246
  %sub44 = sub nsw i32 %add6, %add27, !dbg !1607
  %conv45 = trunc i32 %sub44 to i16, !dbg !1608
  %8 = add nuw nsw i64 %indvars.iv, 4, !dbg !1609
  %arrayidx48 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %8, !dbg !1610
  store i16 %conv45, ptr %arrayidx48, align 2, !dbg !1611, !tbaa !246
  %sub49 = sub nsw i32 %sub, %sub38, !dbg !1612
  %conv50 = trunc i32 %sub49 to i16, !dbg !1613
  %9 = add nuw nsw i64 %indvars.iv, 8, !dbg !1614
  %arrayidx53 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %9, !dbg !1615
  store i16 %conv50, ptr %arrayidx53, align 2, !dbg !1616, !tbaa !246
  %add54 = add nsw i32 %sub38, %sub, !dbg !1617
  %conv55 = trunc i32 %add54 to i16, !dbg !1618
  %10 = add nuw nsw i64 %indvars.iv, 12, !dbg !1619
  %arrayidx58 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %10, !dbg !1620
  store i16 %conv55, ptr %arrayidx58, align 2, !dbg !1621, !tbaa !246
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1622
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1569, metadata !DIExpression()), !dbg !1588
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !1623
  br i1 %exitcond.not, label %for.body64, label %for.body, !dbg !1589, !llvm.loop !1624

for.cond.cleanup63:                               ; preds = %for.body64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #9, !dbg !1626
  ret void, !dbg !1626

for.body64:                                       ; preds = %for.body, %for.body64
  %indvars.iv202 = phi i64 [ %indvars.iv.next203, %for.body64 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv202, metadata !1577, metadata !DIExpression()), !dbg !1627
  %11 = shl nuw nsw i64 %indvars.iv202, 2, !dbg !1628
  %arrayidx69 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %11, !dbg !1629
  %12 = load i16, ptr %arrayidx69, align 8, !dbg !1629, !tbaa !246
  %conv70 = sext i16 %12 to i32, !dbg !1629
  %13 = or i64 %11, 1, !dbg !1630
  %arrayidx74 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %13, !dbg !1631
  %14 = load i16, ptr %arrayidx74, align 2, !dbg !1631, !tbaa !246
  %conv75 = sext i16 %14 to i32, !dbg !1631
  %add76 = add nsw i32 %conv75, %conv70, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %add76, metadata !1579, metadata !DIExpression()), !dbg !1633
  %sub88 = sub nsw i32 %conv70, %conv75, !dbg !1634
  call void @llvm.dbg.value(metadata i32 %sub88, metadata !1582, metadata !DIExpression()), !dbg !1633
  %15 = or i64 %11, 2, !dbg !1635
  %arrayidx93 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %15, !dbg !1636
  %16 = load i16, ptr %arrayidx93, align 4, !dbg !1636, !tbaa !246
  %conv94 = sext i16 %16 to i32, !dbg !1636
  %17 = or i64 %11, 3, !dbg !1637
  %arrayidx98 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %17, !dbg !1638
  %18 = load i16, ptr %arrayidx98, align 2, !dbg !1638, !tbaa !246
  %conv99 = sext i16 %18 to i32, !dbg !1638
  %add100 = add nsw i32 %conv99, %conv94, !dbg !1639
  call void @llvm.dbg.value(metadata i32 %add100, metadata !1583, metadata !DIExpression()), !dbg !1633
  %sub112 = sub nsw i32 %conv94, %conv99, !dbg !1640
  call void @llvm.dbg.value(metadata i32 %sub112, metadata !1584, metadata !DIExpression()), !dbg !1633
  %add113 = add nsw i32 %add76, 1, !dbg !1641
  %add114 = add nsw i32 %add113, %add100, !dbg !1642
  %19 = lshr i32 %add114, 1, !dbg !1643
  %conv115 = trunc i32 %19 to i16, !dbg !1644
  %arrayidx119 = getelementptr inbounds i16, ptr %d, i64 %11, !dbg !1645
  store i16 %conv115, ptr %arrayidx119, align 2, !dbg !1646, !tbaa !246
  %add121 = sub nsw i32 %add113, %add100, !dbg !1647
  %20 = lshr i32 %add121, 1, !dbg !1648
  %conv123 = trunc i32 %20 to i16, !dbg !1649
  %arrayidx127 = getelementptr inbounds i16, ptr %d, i64 %13, !dbg !1650
  store i16 %conv123, ptr %arrayidx127, align 2, !dbg !1651, !tbaa !246
  %sub128 = add nsw i32 %sub88, 1, !dbg !1652
  %add129 = sub nsw i32 %sub128, %sub112, !dbg !1653
  %21 = lshr i32 %add129, 1, !dbg !1654
  %conv131 = trunc i32 %21 to i16, !dbg !1655
  %arrayidx135 = getelementptr inbounds i16, ptr %d, i64 %15, !dbg !1656
  store i16 %conv131, ptr %arrayidx135, align 2, !dbg !1657, !tbaa !246
  %add137 = add nsw i32 %sub128, %sub112, !dbg !1658
  %22 = lshr i32 %add137, 1, !dbg !1659
  %conv139 = trunc i32 %22 to i16, !dbg !1660
  %arrayidx143 = getelementptr inbounds i16, ptr %d, i64 %17, !dbg !1661
  store i16 %conv139, ptr %arrayidx143, align 2, !dbg !1662, !tbaa !246
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next203, metadata !1577, metadata !DIExpression()), !dbg !1627
  %exitcond209.not = icmp eq i64 %indvars.iv.next203, 4, !dbg !1664
  br i1 %exitcond209.not, label %for.cond.cleanup63, label %for.body64, !dbg !1665, !llvm.loop !1666
}

; Function Attrs: argmemonly nofree nosync nounwind uwtable
define internal void @idct4x4dc(ptr nocapture noundef %d) #5 !dbg !1668 {
entry:
  %tmp = alloca [16 x i16], align 16
  call void @llvm.dbg.value(metadata ptr %d, metadata !1670, metadata !DIExpression()), !dbg !1688
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #9, !dbg !1689
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1671, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i32 0, metadata !1672, metadata !DIExpression()), !dbg !1691
  br label %for.body, !dbg !1692

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1672, metadata !DIExpression()), !dbg !1691
  %0 = shl nuw nsw i64 %indvars.iv, 2, !dbg !1693
  %arrayidx = getelementptr inbounds i16, ptr %d, i64 %0, !dbg !1694
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1694, !tbaa !246
  %conv203 = zext i16 %1 to i32, !dbg !1694
  %2 = or i64 %0, 1, !dbg !1695
  %arrayidx4 = getelementptr inbounds i16, ptr %d, i64 %2, !dbg !1696
  %3 = load i16, ptr %arrayidx4, align 2, !dbg !1696, !tbaa !246
  %conv5204 = zext i16 %3 to i32, !dbg !1696
  %add6 = add nuw nsw i32 %conv5204, %conv203, !dbg !1697
  call void @llvm.dbg.value(metadata i32 %add6, metadata !1674, metadata !DIExpression()), !dbg !1698
  %sub = sub nsw i32 %conv203, %conv5204, !dbg !1699
  call void @llvm.dbg.value(metadata i32 %sub, metadata !1677, metadata !DIExpression()), !dbg !1698
  %4 = or i64 %0, 2, !dbg !1700
  %arrayidx20 = getelementptr inbounds i16, ptr %d, i64 %4, !dbg !1701
  %5 = load i16, ptr %arrayidx20, align 2, !dbg !1701, !tbaa !246
  %conv21205 = zext i16 %5 to i32, !dbg !1701
  %6 = or i64 %0, 3, !dbg !1702
  %arrayidx25 = getelementptr inbounds i16, ptr %d, i64 %6, !dbg !1703
  %7 = load i16, ptr %arrayidx25, align 2, !dbg !1703, !tbaa !246
  %conv26206 = zext i16 %7 to i32, !dbg !1703
  %add27 = add nuw nsw i32 %conv26206, %conv21205, !dbg !1704
  call void @llvm.dbg.value(metadata i32 %add27, metadata !1678, metadata !DIExpression()), !dbg !1698
  %sub38 = sub nsw i32 %conv21205, %conv26206, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %sub38, metadata !1679, metadata !DIExpression()), !dbg !1698
  %add39 = add nuw nsw i32 %add27, %add6, !dbg !1706
  %conv40 = trunc i32 %add39 to i16, !dbg !1707
  %arrayidx43 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %indvars.iv, !dbg !1708
  store i16 %conv40, ptr %arrayidx43, align 2, !dbg !1709, !tbaa !246
  %sub44 = sub nsw i32 %add6, %add27, !dbg !1710
  %conv45 = trunc i32 %sub44 to i16, !dbg !1711
  %8 = add nuw nsw i64 %indvars.iv, 4, !dbg !1712
  %arrayidx48 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %8, !dbg !1713
  store i16 %conv45, ptr %arrayidx48, align 2, !dbg !1714, !tbaa !246
  %sub49 = sub nsw i32 %sub, %sub38, !dbg !1715
  %conv50 = trunc i32 %sub49 to i16, !dbg !1716
  %9 = add nuw nsw i64 %indvars.iv, 8, !dbg !1717
  %arrayidx53 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %9, !dbg !1718
  store i16 %conv50, ptr %arrayidx53, align 2, !dbg !1719, !tbaa !246
  %add54 = add nsw i32 %sub38, %sub, !dbg !1720
  %conv55 = trunc i32 %add54 to i16, !dbg !1721
  %10 = add nuw nsw i64 %indvars.iv, 12, !dbg !1722
  %arrayidx58 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %10, !dbg !1723
  store i16 %conv55, ptr %arrayidx58, align 2, !dbg !1724, !tbaa !246
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1725
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1672, metadata !DIExpression()), !dbg !1691
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !1726
  br i1 %exitcond.not, label %for.body64, label %for.body, !dbg !1692, !llvm.loop !1727

for.cond.cleanup63:                               ; preds = %for.body64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #9, !dbg !1729
  ret void, !dbg !1729

for.body64:                                       ; preds = %for.body, %for.body64
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %for.body64 ], [ 0, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv195, metadata !1680, metadata !DIExpression()), !dbg !1730
  %11 = shl nuw nsw i64 %indvars.iv195, 2, !dbg !1731
  %arrayidx69 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %11, !dbg !1732
  %12 = load i16, ptr %arrayidx69, align 8, !dbg !1732, !tbaa !246
  %conv70207 = zext i16 %12 to i32, !dbg !1732
  %13 = or i64 %11, 1, !dbg !1733
  %arrayidx74 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %13, !dbg !1734
  %14 = load i16, ptr %arrayidx74, align 2, !dbg !1734, !tbaa !246
  %conv75208 = zext i16 %14 to i32, !dbg !1734
  %add76 = add nuw nsw i32 %conv75208, %conv70207, !dbg !1735
  call void @llvm.dbg.value(metadata i32 %add76, metadata !1682, metadata !DIExpression()), !dbg !1736
  %sub88 = sub nsw i32 %conv70207, %conv75208, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %sub88, metadata !1685, metadata !DIExpression()), !dbg !1736
  %15 = or i64 %11, 2, !dbg !1738
  %arrayidx93 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %15, !dbg !1739
  %16 = load i16, ptr %arrayidx93, align 4, !dbg !1739, !tbaa !246
  %conv94209 = zext i16 %16 to i32, !dbg !1739
  %17 = or i64 %11, 3, !dbg !1740
  %arrayidx98 = getelementptr inbounds [16 x i16], ptr %tmp, i64 0, i64 %17, !dbg !1741
  %18 = load i16, ptr %arrayidx98, align 2, !dbg !1741, !tbaa !246
  %conv99210 = zext i16 %18 to i32, !dbg !1741
  %add100 = add nuw nsw i32 %conv99210, %conv94209, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %add100, metadata !1686, metadata !DIExpression()), !dbg !1736
  %sub112 = sub nsw i32 %conv94209, %conv99210, !dbg !1743
  call void @llvm.dbg.value(metadata i32 %sub112, metadata !1687, metadata !DIExpression()), !dbg !1736
  %add113 = add nuw nsw i32 %add100, %add76, !dbg !1744
  %conv114 = trunc i32 %add113 to i16, !dbg !1745
  %arrayidx118 = getelementptr inbounds i16, ptr %d, i64 %11, !dbg !1746
  store i16 %conv114, ptr %arrayidx118, align 2, !dbg !1747, !tbaa !246
  %sub119 = sub nsw i32 %add76, %add100, !dbg !1748
  %conv120 = trunc i32 %sub119 to i16, !dbg !1749
  %arrayidx124 = getelementptr inbounds i16, ptr %d, i64 %13, !dbg !1750
  store i16 %conv120, ptr %arrayidx124, align 2, !dbg !1751, !tbaa !246
  %sub125 = sub nsw i32 %sub88, %sub112, !dbg !1752
  %conv126 = trunc i32 %sub125 to i16, !dbg !1753
  %arrayidx130 = getelementptr inbounds i16, ptr %d, i64 %15, !dbg !1754
  store i16 %conv126, ptr %arrayidx130, align 2, !dbg !1755, !tbaa !246
  %add131 = add nsw i32 %sub112, %sub88, !dbg !1756
  %conv132 = trunc i32 %add131 to i16, !dbg !1757
  %arrayidx136 = getelementptr inbounds i16, ptr %d, i64 %17, !dbg !1758
  store i16 %conv132, ptr %arrayidx136, align 2, !dbg !1759, !tbaa !246
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next196, metadata !1680, metadata !DIExpression()), !dbg !1730
  %exitcond202.not = icmp eq i64 %indvars.iv.next196, 4, !dbg !1761
  br i1 %exitcond202.not, label %for.cond.cleanup63, label %for.body64, !dbg !1762, !llvm.loop !1763
}

; Function Attrs: nofree norecurse nosync nounwind writeonly uwtable
define dso_local void @x264_dct_init_weights() local_unnamed_addr #6 !dbg !1765 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !1769, metadata !DIExpression()), !dbg !1777
  br label %for.cond1.preheader, !dbg !1778

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup17
  %cmp = phi i1 [ true, %entry ], [ false, %for.cond.cleanup17 ]
  %indvars.iv55 = phi i64 [ 0, %entry ], [ 1, %for.cond.cleanup17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv55, metadata !1769, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i32 0, metadata !1771, metadata !DIExpression()), !dbg !1779
  br label %for.body4, !dbg !1780

for.cond.cleanup:                                 ; preds = %for.cond.cleanup17
  ret void, !dbg !1781

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1771, metadata !DIExpression()), !dbg !1779
  %arrayidx6 = getelementptr inbounds [2 x [16 x i8]], ptr @x264_zigzag_scan4, i64 0, i64 %indvars.iv55, i64 %indvars.iv, !dbg !1782
  %0 = load i8, ptr %arrayidx6, align 1, !dbg !1782, !tbaa !240
  %idxprom7 = zext i8 %0 to i64, !dbg !1784
  %arrayidx8 = getelementptr inbounds [16 x i16], ptr @x264_dct4_weight2_tab, i64 0, i64 %idxprom7, !dbg !1784
  %1 = load i16, ptr %arrayidx8, align 2, !dbg !1784, !tbaa !246
  %conv = zext i16 %1 to i32, !dbg !1784
  %arrayidx12 = getelementptr inbounds [2 x [16 x i32]], ptr @x264_dct4_weight2_zigzag, i64 0, i64 %indvars.iv55, i64 %indvars.iv, !dbg !1785
  store i32 %conv, ptr %arrayidx12, align 4, !dbg !1786, !tbaa !1787
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !1771, metadata !DIExpression()), !dbg !1779
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !1790
  br i1 %exitcond.not, label %for.body18, label %for.body4, !dbg !1780, !llvm.loop !1791

for.cond.cleanup17:                               ; preds = %for.body18
  call void @llvm.dbg.value(metadata i64 %indvars.iv55, metadata !1769, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1777
  br i1 %cmp, label %for.cond1.preheader, label %for.cond.cleanup, !dbg !1778, !llvm.loop !1793

for.body18:                                       ; preds = %for.body4, %for.body18
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.body18 ], [ 0, %for.body4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv51, metadata !1775, metadata !DIExpression()), !dbg !1795
  %arrayidx22 = getelementptr inbounds [2 x [64 x i8]], ptr @x264_zigzag_scan8, i64 0, i64 %indvars.iv55, i64 %indvars.iv51, !dbg !1796
  %2 = load i8, ptr %arrayidx22, align 1, !dbg !1796, !tbaa !240
  %idxprom23 = zext i8 %2 to i64, !dbg !1798
  %arrayidx24 = getelementptr inbounds [64 x i16], ptr @x264_dct8_weight2_tab, i64 0, i64 %idxprom23, !dbg !1798
  %3 = load i16, ptr %arrayidx24, align 2, !dbg !1798, !tbaa !246
  %conv25 = zext i16 %3 to i32, !dbg !1798
  %arrayidx29 = getelementptr inbounds [2 x [64 x i32]], ptr @x264_dct8_weight2_zigzag, i64 0, i64 %indvars.iv55, i64 %indvars.iv51, !dbg !1799
  store i32 %conv25, ptr %arrayidx29, align 4, !dbg !1800, !tbaa !1787
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next52, metadata !1775, metadata !DIExpression()), !dbg !1795
  %exitcond54.not = icmp eq i64 %indvars.iv.next52, 64, !dbg !1802
  br i1 %exitcond54.not, label %for.cond.cleanup17, label %for.body18, !dbg !1803, !llvm.loop !1804
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local void @x264_zigzag_init(i32 noundef %cpu, ptr nocapture noundef writeonly %pf, i32 noundef %b_interlaced) local_unnamed_addr #0 !dbg !1806 {
entry:
  call void @llvm.dbg.value(metadata i32 %cpu, metadata !1833, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata ptr %pf, metadata !1834, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %b_interlaced, metadata !1835, metadata !DIExpression()), !dbg !1836
  %tobool.not = icmp eq i32 %b_interlaced, 0, !dbg !1837
  br i1 %tobool.not, label %if.else, label %if.end, !dbg !1839

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %entry, %if.else
  %storemerge = phi ptr [ @zigzag_scan_8x8_frame, %if.else ], [ @zigzag_scan_8x8_field, %entry ], !dbg !1840
  %zigzag_scan_4x4_field.sink = phi ptr [ @zigzag_scan_4x4_frame, %if.else ], [ @zigzag_scan_4x4_field, %entry ], !dbg !1840
  %zigzag_sub_8x8_field.sink = phi ptr [ @zigzag_sub_8x8_frame, %if.else ], [ @zigzag_sub_8x8_field, %entry ], !dbg !1840
  %zigzag_sub_4x4_field.sink = phi ptr [ @zigzag_sub_4x4_frame, %if.else ], [ @zigzag_sub_4x4_field, %entry ], !dbg !1840
  %zigzag_sub_4x4ac_field.sink = phi ptr [ @zigzag_sub_4x4ac_frame, %if.else ], [ @zigzag_sub_4x4ac_field, %entry ], !dbg !1840
  store ptr %storemerge, ptr %pf, align 8, !dbg !1840, !tbaa !1841
  %0 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %pf, i64 0, i32 1, !dbg !1843
  store ptr %zigzag_scan_4x4_field.sink, ptr %0, align 8, !dbg !1845
  %1 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %pf, i64 0, i32 2, !dbg !1846
  store ptr %zigzag_sub_8x8_field.sink, ptr %1, align 8, !dbg !1847
  %2 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %pf, i64 0, i32 3, !dbg !1848
  store ptr %zigzag_sub_4x4_field.sink, ptr %2, align 8, !dbg !1849
  %3 = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %pf, i64 0, i32 4, !dbg !1850
  store ptr %zigzag_sub_4x4ac_field.sink, ptr %3, align 8, !dbg !1851
  %interleave_8x8_cavlc = getelementptr inbounds %struct.x264_zigzag_function_t, ptr %pf, i64 0, i32 5, !dbg !1852
  store ptr @zigzag_interleave_8x8_cavlc, ptr %interleave_8x8_cavlc, align 8, !dbg !1853, !tbaa !1854
  ret void, !dbg !1855
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal void @zigzag_scan_8x8_field(ptr noundef writeonly %level, ptr noundef readonly %dct) #8 !dbg !1856 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !1858, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1859, metadata !DIExpression()), !dbg !1860
  %0 = load i16, ptr %dct, align 2, !dbg !1861, !tbaa !246
  store i16 %0, ptr %level, align 2, !dbg !1861, !tbaa !246
  %arrayidx2 = getelementptr inbounds i16, ptr %dct, i64 1, !dbg !1861
  %1 = load i16, ptr %arrayidx2, align 2, !dbg !1861, !tbaa !246
  %arrayidx3 = getelementptr inbounds i16, ptr %level, i64 1, !dbg !1861
  store i16 %1, ptr %arrayidx3, align 2, !dbg !1861, !tbaa !246
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 2, !dbg !1861
  %2 = load i16, ptr %arrayidx4, align 2, !dbg !1861, !tbaa !246
  %arrayidx5 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !1861
  store i16 %2, ptr %arrayidx5, align 2, !dbg !1861, !tbaa !246
  %arrayidx6 = getelementptr inbounds i16, ptr %dct, i64 8, !dbg !1861
  %3 = load i16, ptr %arrayidx6, align 2, !dbg !1861, !tbaa !246
  %arrayidx7 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !1861
  store i16 %3, ptr %arrayidx7, align 2, !dbg !1861, !tbaa !246
  %arrayidx8 = getelementptr inbounds i16, ptr %dct, i64 9, !dbg !1861
  %4 = load i16, ptr %arrayidx8, align 2, !dbg !1861, !tbaa !246
  %arrayidx9 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !1861
  store i16 %4, ptr %arrayidx9, align 2, !dbg !1861, !tbaa !246
  %arrayidx10 = getelementptr inbounds i16, ptr %dct, i64 3, !dbg !1861
  %5 = load i16, ptr %arrayidx10, align 2, !dbg !1861, !tbaa !246
  %arrayidx11 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !1861
  store i16 %5, ptr %arrayidx11, align 2, !dbg !1861, !tbaa !246
  %arrayidx12 = getelementptr inbounds i16, ptr %dct, i64 4, !dbg !1861
  %6 = load i16, ptr %arrayidx12, align 2, !dbg !1861, !tbaa !246
  %arrayidx13 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !1861
  store i16 %6, ptr %arrayidx13, align 2, !dbg !1861, !tbaa !246
  %arrayidx14 = getelementptr inbounds i16, ptr %dct, i64 10, !dbg !1861
  %7 = load i16, ptr %arrayidx14, align 2, !dbg !1861, !tbaa !246
  %arrayidx15 = getelementptr inbounds i16, ptr %level, i64 7, !dbg !1861
  store i16 %7, ptr %arrayidx15, align 2, !dbg !1861, !tbaa !246
  %arrayidx16 = getelementptr inbounds i16, ptr %dct, i64 16, !dbg !1861
  %8 = load i16, ptr %arrayidx16, align 2, !dbg !1861, !tbaa !246
  %arrayidx17 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !1861
  store i16 %8, ptr %arrayidx17, align 2, !dbg !1861, !tbaa !246
  %arrayidx18 = getelementptr inbounds i16, ptr %dct, i64 11, !dbg !1861
  %9 = load i16, ptr %arrayidx18, align 2, !dbg !1861, !tbaa !246
  %arrayidx19 = getelementptr inbounds i16, ptr %level, i64 9, !dbg !1861
  store i16 %9, ptr %arrayidx19, align 2, !dbg !1861, !tbaa !246
  %arrayidx20 = getelementptr inbounds i16, ptr %dct, i64 5, !dbg !1861
  %10 = load i16, ptr %arrayidx20, align 2, !dbg !1861, !tbaa !246
  %arrayidx21 = getelementptr inbounds i16, ptr %level, i64 10, !dbg !1861
  store i16 %10, ptr %arrayidx21, align 2, !dbg !1861, !tbaa !246
  %arrayidx22 = getelementptr inbounds i16, ptr %dct, i64 6, !dbg !1861
  %11 = load i16, ptr %arrayidx22, align 2, !dbg !1861, !tbaa !246
  %arrayidx23 = getelementptr inbounds i16, ptr %level, i64 11, !dbg !1861
  store i16 %11, ptr %arrayidx23, align 2, !dbg !1861, !tbaa !246
  %arrayidx24 = getelementptr inbounds i16, ptr %dct, i64 7, !dbg !1861
  %12 = load i16, ptr %arrayidx24, align 2, !dbg !1861, !tbaa !246
  %arrayidx25 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !1861
  store i16 %12, ptr %arrayidx25, align 2, !dbg !1861, !tbaa !246
  %arrayidx26 = getelementptr inbounds i16, ptr %dct, i64 12, !dbg !1861
  %13 = load i16, ptr %arrayidx26, align 2, !dbg !1861, !tbaa !246
  %arrayidx27 = getelementptr inbounds i16, ptr %level, i64 13, !dbg !1861
  store i16 %13, ptr %arrayidx27, align 2, !dbg !1861, !tbaa !246
  %arrayidx28 = getelementptr inbounds i16, ptr %dct, i64 17, !dbg !1861
  %14 = load i16, ptr %arrayidx28, align 2, !dbg !1861, !tbaa !246
  %arrayidx29 = getelementptr inbounds i16, ptr %level, i64 14, !dbg !1861
  store i16 %14, ptr %arrayidx29, align 2, !dbg !1861, !tbaa !246
  %arrayidx30 = getelementptr inbounds i16, ptr %dct, i64 24, !dbg !1861
  %15 = load i16, ptr %arrayidx30, align 2, !dbg !1861, !tbaa !246
  %arrayidx31 = getelementptr inbounds i16, ptr %level, i64 15, !dbg !1861
  store i16 %15, ptr %arrayidx31, align 2, !dbg !1861, !tbaa !246
  %arrayidx32 = getelementptr inbounds i16, ptr %dct, i64 18, !dbg !1861
  %16 = load i16, ptr %arrayidx32, align 2, !dbg !1861, !tbaa !246
  %arrayidx33 = getelementptr inbounds i16, ptr %level, i64 16, !dbg !1861
  store i16 %16, ptr %arrayidx33, align 2, !dbg !1861, !tbaa !246
  %arrayidx34 = getelementptr inbounds i16, ptr %dct, i64 13, !dbg !1861
  %17 = load i16, ptr %arrayidx34, align 2, !dbg !1861, !tbaa !246
  %arrayidx35 = getelementptr inbounds i16, ptr %level, i64 17, !dbg !1861
  store i16 %17, ptr %arrayidx35, align 2, !dbg !1861, !tbaa !246
  %arrayidx36 = getelementptr inbounds i16, ptr %dct, i64 14, !dbg !1861
  %18 = load i16, ptr %arrayidx36, align 2, !dbg !1861, !tbaa !246
  %arrayidx37 = getelementptr inbounds i16, ptr %level, i64 18, !dbg !1861
  store i16 %18, ptr %arrayidx37, align 2, !dbg !1861, !tbaa !246
  %arrayidx38 = getelementptr inbounds i16, ptr %dct, i64 15, !dbg !1861
  %19 = load i16, ptr %arrayidx38, align 2, !dbg !1861, !tbaa !246
  %arrayidx39 = getelementptr inbounds i16, ptr %level, i64 19, !dbg !1861
  store i16 %19, ptr %arrayidx39, align 2, !dbg !1861, !tbaa !246
  %arrayidx40 = getelementptr inbounds i16, ptr %dct, i64 19, !dbg !1861
  %20 = load i16, ptr %arrayidx40, align 2, !dbg !1861, !tbaa !246
  %arrayidx41 = getelementptr inbounds i16, ptr %level, i64 20, !dbg !1861
  store i16 %20, ptr %arrayidx41, align 2, !dbg !1861, !tbaa !246
  %arrayidx42 = getelementptr inbounds i16, ptr %dct, i64 25, !dbg !1861
  %21 = load i16, ptr %arrayidx42, align 2, !dbg !1861, !tbaa !246
  %arrayidx43 = getelementptr inbounds i16, ptr %level, i64 21, !dbg !1861
  store i16 %21, ptr %arrayidx43, align 2, !dbg !1861, !tbaa !246
  %arrayidx44 = getelementptr inbounds i16, ptr %dct, i64 32, !dbg !1861
  %22 = load i16, ptr %arrayidx44, align 2, !dbg !1861, !tbaa !246
  %arrayidx45 = getelementptr inbounds i16, ptr %level, i64 22, !dbg !1861
  store i16 %22, ptr %arrayidx45, align 2, !dbg !1861, !tbaa !246
  %arrayidx46 = getelementptr inbounds i16, ptr %dct, i64 26, !dbg !1861
  %23 = load i16, ptr %arrayidx46, align 2, !dbg !1861, !tbaa !246
  %arrayidx47 = getelementptr inbounds i16, ptr %level, i64 23, !dbg !1861
  store i16 %23, ptr %arrayidx47, align 2, !dbg !1861, !tbaa !246
  %arrayidx48 = getelementptr inbounds i16, ptr %dct, i64 20, !dbg !1861
  %24 = load i16, ptr %arrayidx48, align 2, !dbg !1861, !tbaa !246
  %arrayidx49 = getelementptr inbounds i16, ptr %level, i64 24, !dbg !1861
  store i16 %24, ptr %arrayidx49, align 2, !dbg !1861, !tbaa !246
  %arrayidx50 = getelementptr inbounds i16, ptr %dct, i64 21, !dbg !1861
  %25 = load i16, ptr %arrayidx50, align 2, !dbg !1861, !tbaa !246
  %arrayidx51 = getelementptr inbounds i16, ptr %level, i64 25, !dbg !1861
  store i16 %25, ptr %arrayidx51, align 2, !dbg !1861, !tbaa !246
  %arrayidx52 = getelementptr inbounds i16, ptr %dct, i64 22, !dbg !1861
  %26 = load i16, ptr %arrayidx52, align 2, !dbg !1861, !tbaa !246
  %arrayidx53 = getelementptr inbounds i16, ptr %level, i64 26, !dbg !1861
  store i16 %26, ptr %arrayidx53, align 2, !dbg !1861, !tbaa !246
  %arrayidx54 = getelementptr inbounds i16, ptr %dct, i64 23, !dbg !1861
  %27 = load i16, ptr %arrayidx54, align 2, !dbg !1861, !tbaa !246
  %arrayidx55 = getelementptr inbounds i16, ptr %level, i64 27, !dbg !1861
  store i16 %27, ptr %arrayidx55, align 2, !dbg !1861, !tbaa !246
  %arrayidx56 = getelementptr inbounds i16, ptr %dct, i64 27, !dbg !1861
  %28 = load i16, ptr %arrayidx56, align 2, !dbg !1861, !tbaa !246
  %arrayidx57 = getelementptr inbounds i16, ptr %level, i64 28, !dbg !1861
  store i16 %28, ptr %arrayidx57, align 2, !dbg !1861, !tbaa !246
  %arrayidx58 = getelementptr inbounds i16, ptr %dct, i64 33, !dbg !1861
  %29 = load i16, ptr %arrayidx58, align 2, !dbg !1861, !tbaa !246
  %arrayidx59 = getelementptr inbounds i16, ptr %level, i64 29, !dbg !1861
  store i16 %29, ptr %arrayidx59, align 2, !dbg !1861, !tbaa !246
  %arrayidx60 = getelementptr inbounds i16, ptr %dct, i64 40, !dbg !1861
  %30 = load i16, ptr %arrayidx60, align 2, !dbg !1861, !tbaa !246
  %arrayidx61 = getelementptr inbounds i16, ptr %level, i64 30, !dbg !1861
  store i16 %30, ptr %arrayidx61, align 2, !dbg !1861, !tbaa !246
  %arrayidx62 = getelementptr inbounds i16, ptr %dct, i64 34, !dbg !1861
  %31 = load i16, ptr %arrayidx62, align 2, !dbg !1861, !tbaa !246
  %arrayidx63 = getelementptr inbounds i16, ptr %level, i64 31, !dbg !1861
  store i16 %31, ptr %arrayidx63, align 2, !dbg !1861, !tbaa !246
  %arrayidx64 = getelementptr inbounds i16, ptr %dct, i64 28, !dbg !1861
  %32 = load i16, ptr %arrayidx64, align 2, !dbg !1861, !tbaa !246
  %arrayidx65 = getelementptr inbounds i16, ptr %level, i64 32, !dbg !1861
  store i16 %32, ptr %arrayidx65, align 2, !dbg !1861, !tbaa !246
  %arrayidx66 = getelementptr inbounds i16, ptr %dct, i64 29, !dbg !1861
  %33 = load i16, ptr %arrayidx66, align 2, !dbg !1861, !tbaa !246
  %arrayidx67 = getelementptr inbounds i16, ptr %level, i64 33, !dbg !1861
  store i16 %33, ptr %arrayidx67, align 2, !dbg !1861, !tbaa !246
  %arrayidx68 = getelementptr inbounds i16, ptr %dct, i64 30, !dbg !1861
  %34 = load i16, ptr %arrayidx68, align 2, !dbg !1861, !tbaa !246
  %arrayidx69 = getelementptr inbounds i16, ptr %level, i64 34, !dbg !1861
  store i16 %34, ptr %arrayidx69, align 2, !dbg !1861, !tbaa !246
  %arrayidx70 = getelementptr inbounds i16, ptr %dct, i64 31, !dbg !1861
  %35 = load i16, ptr %arrayidx70, align 2, !dbg !1861, !tbaa !246
  %arrayidx71 = getelementptr inbounds i16, ptr %level, i64 35, !dbg !1861
  store i16 %35, ptr %arrayidx71, align 2, !dbg !1861, !tbaa !246
  %arrayidx72 = getelementptr inbounds i16, ptr %dct, i64 35, !dbg !1861
  %36 = load i16, ptr %arrayidx72, align 2, !dbg !1861, !tbaa !246
  %arrayidx73 = getelementptr inbounds i16, ptr %level, i64 36, !dbg !1861
  store i16 %36, ptr %arrayidx73, align 2, !dbg !1861, !tbaa !246
  %arrayidx74 = getelementptr inbounds i16, ptr %dct, i64 41, !dbg !1861
  %37 = load i16, ptr %arrayidx74, align 2, !dbg !1861, !tbaa !246
  %arrayidx75 = getelementptr inbounds i16, ptr %level, i64 37, !dbg !1861
  store i16 %37, ptr %arrayidx75, align 2, !dbg !1861, !tbaa !246
  %arrayidx76 = getelementptr inbounds i16, ptr %dct, i64 48, !dbg !1861
  %38 = load i16, ptr %arrayidx76, align 2, !dbg !1861, !tbaa !246
  %arrayidx77 = getelementptr inbounds i16, ptr %level, i64 38, !dbg !1861
  store i16 %38, ptr %arrayidx77, align 2, !dbg !1861, !tbaa !246
  %arrayidx78 = getelementptr inbounds i16, ptr %dct, i64 42, !dbg !1861
  %39 = load i16, ptr %arrayidx78, align 2, !dbg !1861, !tbaa !246
  %arrayidx79 = getelementptr inbounds i16, ptr %level, i64 39, !dbg !1861
  store i16 %39, ptr %arrayidx79, align 2, !dbg !1861, !tbaa !246
  %arrayidx80 = getelementptr inbounds i16, ptr %dct, i64 36, !dbg !1861
  %40 = load i16, ptr %arrayidx80, align 2, !dbg !1861, !tbaa !246
  %arrayidx81 = getelementptr inbounds i16, ptr %level, i64 40, !dbg !1861
  store i16 %40, ptr %arrayidx81, align 2, !dbg !1861, !tbaa !246
  %arrayidx82 = getelementptr inbounds i16, ptr %dct, i64 37, !dbg !1861
  %41 = load i16, ptr %arrayidx82, align 2, !dbg !1861, !tbaa !246
  %arrayidx83 = getelementptr inbounds i16, ptr %level, i64 41, !dbg !1861
  store i16 %41, ptr %arrayidx83, align 2, !dbg !1861, !tbaa !246
  %arrayidx84 = getelementptr inbounds i16, ptr %dct, i64 38, !dbg !1861
  %42 = load i16, ptr %arrayidx84, align 2, !dbg !1861, !tbaa !246
  %arrayidx85 = getelementptr inbounds i16, ptr %level, i64 42, !dbg !1861
  store i16 %42, ptr %arrayidx85, align 2, !dbg !1861, !tbaa !246
  %arrayidx86 = getelementptr inbounds i16, ptr %dct, i64 39, !dbg !1861
  %43 = load i16, ptr %arrayidx86, align 2, !dbg !1861, !tbaa !246
  %arrayidx87 = getelementptr inbounds i16, ptr %level, i64 43, !dbg !1861
  store i16 %43, ptr %arrayidx87, align 2, !dbg !1861, !tbaa !246
  %arrayidx88 = getelementptr inbounds i16, ptr %dct, i64 43, !dbg !1861
  %44 = load i16, ptr %arrayidx88, align 2, !dbg !1861, !tbaa !246
  %arrayidx89 = getelementptr inbounds i16, ptr %level, i64 44, !dbg !1861
  store i16 %44, ptr %arrayidx89, align 2, !dbg !1861, !tbaa !246
  %arrayidx90 = getelementptr inbounds i16, ptr %dct, i64 49, !dbg !1861
  %45 = load i16, ptr %arrayidx90, align 2, !dbg !1861, !tbaa !246
  %arrayidx91 = getelementptr inbounds i16, ptr %level, i64 45, !dbg !1861
  store i16 %45, ptr %arrayidx91, align 2, !dbg !1861, !tbaa !246
  %arrayidx92 = getelementptr inbounds i16, ptr %dct, i64 50, !dbg !1861
  %46 = load i16, ptr %arrayidx92, align 2, !dbg !1861, !tbaa !246
  %arrayidx93 = getelementptr inbounds i16, ptr %level, i64 46, !dbg !1861
  store i16 %46, ptr %arrayidx93, align 2, !dbg !1861, !tbaa !246
  %arrayidx94 = getelementptr inbounds i16, ptr %dct, i64 44, !dbg !1861
  %47 = load i16, ptr %arrayidx94, align 2, !dbg !1861, !tbaa !246
  %arrayidx95 = getelementptr inbounds i16, ptr %level, i64 47, !dbg !1861
  store i16 %47, ptr %arrayidx95, align 2, !dbg !1861, !tbaa !246
  %arrayidx96 = getelementptr inbounds i16, ptr %dct, i64 45, !dbg !1861
  %48 = load i16, ptr %arrayidx96, align 2, !dbg !1861, !tbaa !246
  %arrayidx97 = getelementptr inbounds i16, ptr %level, i64 48, !dbg !1861
  store i16 %48, ptr %arrayidx97, align 2, !dbg !1861, !tbaa !246
  %arrayidx98 = getelementptr inbounds i16, ptr %dct, i64 46, !dbg !1861
  %49 = load i16, ptr %arrayidx98, align 2, !dbg !1861, !tbaa !246
  %arrayidx99 = getelementptr inbounds i16, ptr %level, i64 49, !dbg !1861
  store i16 %49, ptr %arrayidx99, align 2, !dbg !1861, !tbaa !246
  %arrayidx100 = getelementptr inbounds i16, ptr %dct, i64 47, !dbg !1861
  %50 = load i16, ptr %arrayidx100, align 2, !dbg !1861, !tbaa !246
  %arrayidx101 = getelementptr inbounds i16, ptr %level, i64 50, !dbg !1861
  store i16 %50, ptr %arrayidx101, align 2, !dbg !1861, !tbaa !246
  %arrayidx102 = getelementptr inbounds i16, ptr %dct, i64 51, !dbg !1861
  %51 = load i16, ptr %arrayidx102, align 2, !dbg !1861, !tbaa !246
  %arrayidx103 = getelementptr inbounds i16, ptr %level, i64 51, !dbg !1861
  store i16 %51, ptr %arrayidx103, align 2, !dbg !1861, !tbaa !246
  %arrayidx104 = getelementptr inbounds i16, ptr %dct, i64 56, !dbg !1861
  %52 = load i16, ptr %arrayidx104, align 2, !dbg !1861, !tbaa !246
  %arrayidx105 = getelementptr inbounds i16, ptr %level, i64 52, !dbg !1861
  store i16 %52, ptr %arrayidx105, align 2, !dbg !1861, !tbaa !246
  %arrayidx106 = getelementptr inbounds i16, ptr %dct, i64 57, !dbg !1861
  %53 = load i16, ptr %arrayidx106, align 2, !dbg !1861, !tbaa !246
  %arrayidx107 = getelementptr inbounds i16, ptr %level, i64 53, !dbg !1861
  store i16 %53, ptr %arrayidx107, align 2, !dbg !1861, !tbaa !246
  %arrayidx108 = getelementptr inbounds i16, ptr %dct, i64 52, !dbg !1861
  %54 = load i16, ptr %arrayidx108, align 2, !dbg !1861, !tbaa !246
  %arrayidx109 = getelementptr inbounds i16, ptr %level, i64 54, !dbg !1861
  store i16 %54, ptr %arrayidx109, align 2, !dbg !1861, !tbaa !246
  %arrayidx110 = getelementptr inbounds i16, ptr %dct, i64 53, !dbg !1861
  %55 = load i16, ptr %arrayidx110, align 2, !dbg !1861, !tbaa !246
  %arrayidx111 = getelementptr inbounds i16, ptr %level, i64 55, !dbg !1861
  store i16 %55, ptr %arrayidx111, align 2, !dbg !1861, !tbaa !246
  %arrayidx112 = getelementptr inbounds i16, ptr %dct, i64 54, !dbg !1861
  %56 = load i16, ptr %arrayidx112, align 2, !dbg !1861, !tbaa !246
  %arrayidx113 = getelementptr inbounds i16, ptr %level, i64 56, !dbg !1861
  store i16 %56, ptr %arrayidx113, align 2, !dbg !1861, !tbaa !246
  %arrayidx114 = getelementptr inbounds i16, ptr %dct, i64 55, !dbg !1861
  %57 = load i16, ptr %arrayidx114, align 2, !dbg !1861, !tbaa !246
  %arrayidx115 = getelementptr inbounds i16, ptr %level, i64 57, !dbg !1861
  store i16 %57, ptr %arrayidx115, align 2, !dbg !1861, !tbaa !246
  %arrayidx116 = getelementptr inbounds i16, ptr %dct, i64 58, !dbg !1861
  %58 = load i16, ptr %arrayidx116, align 2, !dbg !1861, !tbaa !246
  %arrayidx117 = getelementptr inbounds i16, ptr %level, i64 58, !dbg !1861
  store i16 %58, ptr %arrayidx117, align 2, !dbg !1861, !tbaa !246
  %arrayidx118 = getelementptr inbounds i16, ptr %dct, i64 59, !dbg !1861
  %59 = load i16, ptr %arrayidx118, align 2, !dbg !1861, !tbaa !246
  %arrayidx119 = getelementptr inbounds i16, ptr %level, i64 59, !dbg !1861
  store i16 %59, ptr %arrayidx119, align 2, !dbg !1861, !tbaa !246
  %arrayidx120 = getelementptr inbounds i16, ptr %dct, i64 60, !dbg !1861
  %60 = load i16, ptr %arrayidx120, align 2, !dbg !1861, !tbaa !246
  %arrayidx121 = getelementptr inbounds i16, ptr %level, i64 60, !dbg !1861
  store i16 %60, ptr %arrayidx121, align 2, !dbg !1861, !tbaa !246
  %arrayidx122 = getelementptr inbounds i16, ptr %dct, i64 61, !dbg !1861
  %61 = load i16, ptr %arrayidx122, align 2, !dbg !1861, !tbaa !246
  %arrayidx123 = getelementptr inbounds i16, ptr %level, i64 61, !dbg !1861
  store i16 %61, ptr %arrayidx123, align 2, !dbg !1861, !tbaa !246
  %arrayidx124 = getelementptr inbounds i16, ptr %dct, i64 62, !dbg !1861
  %62 = load i16, ptr %arrayidx124, align 2, !dbg !1861, !tbaa !246
  %arrayidx125 = getelementptr inbounds i16, ptr %level, i64 62, !dbg !1861
  store i16 %62, ptr %arrayidx125, align 2, !dbg !1861, !tbaa !246
  %arrayidx126 = getelementptr inbounds i16, ptr %dct, i64 63, !dbg !1861
  %63 = load i16, ptr %arrayidx126, align 2, !dbg !1861, !tbaa !246
  %arrayidx127 = getelementptr inbounds i16, ptr %level, i64 63, !dbg !1861
  store i16 %63, ptr %arrayidx127, align 2, !dbg !1861, !tbaa !246
  ret void, !dbg !1862
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal void @zigzag_scan_4x4_field(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %dct) #8 !dbg !1863 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !1865, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %dct, metadata !1866, metadata !DIExpression()), !dbg !1867
  %0 = load i32, ptr %dct, align 4, !dbg !1868, !tbaa !240
  store i32 %0, ptr %level, align 4, !dbg !1868, !tbaa !240
  %arrayidx = getelementptr inbounds i16, ptr %dct, i64 4, !dbg !1869
  %1 = load i16, ptr %arrayidx, align 2, !dbg !1869, !tbaa !246
  %arrayidx1 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !1869
  store i16 %1, ptr %arrayidx1, align 2, !dbg !1869, !tbaa !246
  %arrayidx2 = getelementptr inbounds i16, ptr %dct, i64 2, !dbg !1870
  %2 = load i16, ptr %arrayidx2, align 2, !dbg !1870, !tbaa !246
  %arrayidx3 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !1870
  store i16 %2, ptr %arrayidx3, align 2, !dbg !1870, !tbaa !246
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 3, !dbg !1871
  %3 = load i16, ptr %arrayidx4, align 2, !dbg !1871, !tbaa !246
  %arrayidx5 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !1871
  store i16 %3, ptr %arrayidx5, align 2, !dbg !1871, !tbaa !246
  %arrayidx6 = getelementptr inbounds i16, ptr %dct, i64 5, !dbg !1872
  %4 = load i16, ptr %arrayidx6, align 2, !dbg !1872, !tbaa !246
  %arrayidx7 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !1872
  store i16 %4, ptr %arrayidx7, align 2, !dbg !1872, !tbaa !246
  %add.ptr = getelementptr inbounds i16, ptr %dct, i64 6, !dbg !1873
  %5 = load i32, ptr %add.ptr, align 4, !dbg !1873, !tbaa !240
  %add.ptr8 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !1873
  store i32 %5, ptr %add.ptr8, align 4, !dbg !1873, !tbaa !240
  %add.ptr9 = getelementptr inbounds i16, ptr %dct, i64 8, !dbg !1874
  %6 = load i64, ptr %add.ptr9, align 8, !dbg !1874, !tbaa !240
  %add.ptr10 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !1874
  store i64 %6, ptr %add.ptr10, align 8, !dbg !1874, !tbaa !240
  %add.ptr11 = getelementptr inbounds i16, ptr %dct, i64 12, !dbg !1875
  %7 = load i64, ptr %add.ptr11, align 8, !dbg !1875, !tbaa !240
  %add.ptr12 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !1875
  store i64 %7, ptr %add.ptr12, align 8, !dbg !1875, !tbaa !240
  ret void, !dbg !1876
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @zigzag_sub_8x8_field(ptr noundef writeonly %level, ptr noundef readonly %p_src, ptr noundef %p_dst) #8 !dbg !1877 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !1879, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata ptr %p_src, metadata !1880, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !1881, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i32 0, metadata !1882, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata i32 0, metadata !1883, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata i32 0, metadata !1885, metadata !DIExpression()), !dbg !2076
  %0 = load i8, ptr %p_src, align 1, !dbg !2077, !tbaa !240
  %conv = zext i8 %0 to i16, !dbg !2077
  %1 = load i8, ptr %p_dst, align 1, !dbg !2077, !tbaa !240
  %conv3 = zext i8 %1 to i16, !dbg !2077
  %sub = sub nsw i16 %conv, %conv3, !dbg !2077
  store i16 %sub, ptr %level, align 2, !dbg !2077, !tbaa !246
  call void @llvm.dbg.value(metadata i16 %sub, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 16, metadata !1886, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i32 32, metadata !1888, metadata !DIExpression()), !dbg !2078
  %arrayidx11 = getelementptr inbounds i8, ptr %p_src, i64 16, !dbg !2079
  %2 = load i8, ptr %arrayidx11, align 1, !dbg !2079, !tbaa !240
  %conv12 = zext i8 %2 to i16, !dbg !2079
  %arrayidx14 = getelementptr inbounds i8, ptr %p_dst, i64 32, !dbg !2079
  %3 = load i8, ptr %arrayidx14, align 1, !dbg !2079, !tbaa !240
  %conv15 = zext i8 %3 to i16, !dbg !2079
  %sub16 = sub nsw i16 %conv12, %conv15, !dbg !2079
  %arrayidx18 = getelementptr inbounds i16, ptr %level, i64 1, !dbg !2079
  store i16 %sub16, ptr %arrayidx18, align 2, !dbg !2079, !tbaa !246
  %or211239 = or i16 %sub16, %sub, !dbg !2079
  call void @llvm.dbg.value(metadata i16 %or211239, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 32, metadata !1889, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i32 64, metadata !1891, metadata !DIExpression()), !dbg !2080
  %arrayidx25 = getelementptr inbounds i8, ptr %p_src, i64 32, !dbg !2081
  %4 = load i8, ptr %arrayidx25, align 1, !dbg !2081, !tbaa !240
  %conv26 = zext i8 %4 to i16, !dbg !2081
  %arrayidx28 = getelementptr inbounds i8, ptr %p_dst, i64 64, !dbg !2081
  %5 = load i8, ptr %arrayidx28, align 1, !dbg !2081, !tbaa !240
  %conv29 = zext i8 %5 to i16, !dbg !2081
  %sub30 = sub nsw i16 %conv26, %conv29, !dbg !2081
  %arrayidx32 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !2081
  store i16 %sub30, ptr %arrayidx32, align 2, !dbg !2081, !tbaa !246
  %or351240 = or i16 %or211239, %sub30, !dbg !2081
  call void @llvm.dbg.value(metadata i16 %or351240, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 1, metadata !1892, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata i32 1, metadata !1894, metadata !DIExpression()), !dbg !2082
  %arrayidx39 = getelementptr inbounds i8, ptr %p_src, i64 1, !dbg !2083
  %6 = load i8, ptr %arrayidx39, align 1, !dbg !2083, !tbaa !240
  %conv40 = zext i8 %6 to i16, !dbg !2083
  %arrayidx42 = getelementptr inbounds i8, ptr %p_dst, i64 1, !dbg !2083
  %7 = load i8, ptr %arrayidx42, align 1, !dbg !2083, !tbaa !240
  %conv43 = zext i8 %7 to i16, !dbg !2083
  %sub44 = sub nsw i16 %conv40, %conv43, !dbg !2083
  %arrayidx46 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !2083
  store i16 %sub44, ptr %arrayidx46, align 2, !dbg !2083, !tbaa !246
  %or491241 = or i16 %or351240, %sub44, !dbg !2083
  call void @llvm.dbg.value(metadata i16 %or491241, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 17, metadata !1895, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i32 33, metadata !1897, metadata !DIExpression()), !dbg !2084
  %arrayidx53 = getelementptr inbounds i8, ptr %p_src, i64 17, !dbg !2085
  %8 = load i8, ptr %arrayidx53, align 1, !dbg !2085, !tbaa !240
  %conv54 = zext i8 %8 to i16, !dbg !2085
  %arrayidx56 = getelementptr inbounds i8, ptr %p_dst, i64 33, !dbg !2085
  %9 = load i8, ptr %arrayidx56, align 1, !dbg !2085, !tbaa !240
  %conv57 = zext i8 %9 to i16, !dbg !2085
  %sub58 = sub nsw i16 %conv54, %conv57, !dbg !2085
  %arrayidx60 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !2085
  store i16 %sub58, ptr %arrayidx60, align 2, !dbg !2085, !tbaa !246
  %or631242 = or i16 %or491241, %sub58, !dbg !2085
  call void @llvm.dbg.value(metadata i16 %or631242, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 48, metadata !1898, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i32 96, metadata !1900, metadata !DIExpression()), !dbg !2086
  %arrayidx67 = getelementptr inbounds i8, ptr %p_src, i64 48, !dbg !2087
  %10 = load i8, ptr %arrayidx67, align 1, !dbg !2087, !tbaa !240
  %conv68 = zext i8 %10 to i16, !dbg !2087
  %arrayidx70 = getelementptr inbounds i8, ptr %p_dst, i64 96, !dbg !2087
  %11 = load i8, ptr %arrayidx70, align 1, !dbg !2087, !tbaa !240
  %conv71 = zext i8 %11 to i16, !dbg !2087
  %sub72 = sub nsw i16 %conv68, %conv71, !dbg !2087
  %arrayidx74 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !2087
  store i16 %sub72, ptr %arrayidx74, align 2, !dbg !2087, !tbaa !246
  %or771243 = or i16 %or631242, %sub72, !dbg !2087
  call void @llvm.dbg.value(metadata i16 %or771243, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 64, metadata !1901, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i32 128, metadata !1903, metadata !DIExpression()), !dbg !2088
  %arrayidx81 = getelementptr inbounds i8, ptr %p_src, i64 64, !dbg !2089
  %12 = load i8, ptr %arrayidx81, align 1, !dbg !2089, !tbaa !240
  %conv82 = zext i8 %12 to i16, !dbg !2089
  %arrayidx84 = getelementptr inbounds i8, ptr %p_dst, i64 128, !dbg !2089
  %13 = load i8, ptr %arrayidx84, align 1, !dbg !2089, !tbaa !240
  %conv85 = zext i8 %13 to i16, !dbg !2089
  %sub86 = sub nsw i16 %conv82, %conv85, !dbg !2089
  %arrayidx88 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !2089
  store i16 %sub86, ptr %arrayidx88, align 2, !dbg !2089, !tbaa !246
  %or911244 = or i16 %or771243, %sub86, !dbg !2089
  call void @llvm.dbg.value(metadata i16 %or911244, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 33, metadata !1904, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i32 65, metadata !1906, metadata !DIExpression()), !dbg !2090
  %arrayidx95 = getelementptr inbounds i8, ptr %p_src, i64 33, !dbg !2091
  %14 = load i8, ptr %arrayidx95, align 1, !dbg !2091, !tbaa !240
  %conv96 = zext i8 %14 to i16, !dbg !2091
  %arrayidx98 = getelementptr inbounds i8, ptr %p_dst, i64 65, !dbg !2091
  %15 = load i8, ptr %arrayidx98, align 1, !dbg !2091, !tbaa !240
  %conv99 = zext i8 %15 to i16, !dbg !2091
  %sub100 = sub nsw i16 %conv96, %conv99, !dbg !2091
  %arrayidx102 = getelementptr inbounds i16, ptr %level, i64 7, !dbg !2091
  store i16 %sub100, ptr %arrayidx102, align 2, !dbg !2091, !tbaa !246
  %or1051245 = or i16 %or911244, %sub100, !dbg !2091
  call void @llvm.dbg.value(metadata i16 %or1051245, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 2, metadata !1907, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i32 2, metadata !1909, metadata !DIExpression()), !dbg !2092
  %arrayidx109 = getelementptr inbounds i8, ptr %p_src, i64 2, !dbg !2093
  %16 = load i8, ptr %arrayidx109, align 1, !dbg !2093, !tbaa !240
  %conv110 = zext i8 %16 to i16, !dbg !2093
  %arrayidx112 = getelementptr inbounds i8, ptr %p_dst, i64 2, !dbg !2093
  %17 = load i8, ptr %arrayidx112, align 1, !dbg !2093, !tbaa !240
  %conv113 = zext i8 %17 to i16, !dbg !2093
  %sub114 = sub nsw i16 %conv110, %conv113, !dbg !2093
  %arrayidx116 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !2093
  store i16 %sub114, ptr %arrayidx116, align 2, !dbg !2093, !tbaa !246
  %or1191246 = or i16 %or1051245, %sub114, !dbg !2093
  call void @llvm.dbg.value(metadata i16 %or1191246, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 49, metadata !1910, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata i32 97, metadata !1912, metadata !DIExpression()), !dbg !2094
  %arrayidx123 = getelementptr inbounds i8, ptr %p_src, i64 49, !dbg !2095
  %18 = load i8, ptr %arrayidx123, align 1, !dbg !2095, !tbaa !240
  %conv124 = zext i8 %18 to i16, !dbg !2095
  %arrayidx126 = getelementptr inbounds i8, ptr %p_dst, i64 97, !dbg !2095
  %19 = load i8, ptr %arrayidx126, align 1, !dbg !2095, !tbaa !240
  %conv127 = zext i8 %19 to i16, !dbg !2095
  %sub128 = sub nsw i16 %conv124, %conv127, !dbg !2095
  %arrayidx130 = getelementptr inbounds i16, ptr %level, i64 9, !dbg !2095
  store i16 %sub128, ptr %arrayidx130, align 2, !dbg !2095, !tbaa !246
  %or1331247 = or i16 %or1191246, %sub128, !dbg !2095
  call void @llvm.dbg.value(metadata i16 %or1331247, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 80, metadata !1913, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata i32 160, metadata !1915, metadata !DIExpression()), !dbg !2096
  %arrayidx137 = getelementptr inbounds i8, ptr %p_src, i64 80, !dbg !2097
  %20 = load i8, ptr %arrayidx137, align 1, !dbg !2097, !tbaa !240
  %conv138 = zext i8 %20 to i16, !dbg !2097
  %arrayidx140 = getelementptr inbounds i8, ptr %p_dst, i64 160, !dbg !2097
  %21 = load i8, ptr %arrayidx140, align 1, !dbg !2097, !tbaa !240
  %conv141 = zext i8 %21 to i16, !dbg !2097
  %sub142 = sub nsw i16 %conv138, %conv141, !dbg !2097
  %arrayidx144 = getelementptr inbounds i16, ptr %level, i64 10, !dbg !2097
  store i16 %sub142, ptr %arrayidx144, align 2, !dbg !2097, !tbaa !246
  %or1471248 = or i16 %or1331247, %sub142, !dbg !2097
  call void @llvm.dbg.value(metadata i16 %or1471248, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 96, metadata !1916, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 192, metadata !1918, metadata !DIExpression()), !dbg !2098
  %arrayidx151 = getelementptr inbounds i8, ptr %p_src, i64 96, !dbg !2099
  %22 = load i8, ptr %arrayidx151, align 1, !dbg !2099, !tbaa !240
  %conv152 = zext i8 %22 to i16, !dbg !2099
  %arrayidx154 = getelementptr inbounds i8, ptr %p_dst, i64 192, !dbg !2099
  %23 = load i8, ptr %arrayidx154, align 1, !dbg !2099, !tbaa !240
  %conv155 = zext i8 %23 to i16, !dbg !2099
  %sub156 = sub nsw i16 %conv152, %conv155, !dbg !2099
  %arrayidx158 = getelementptr inbounds i16, ptr %level, i64 11, !dbg !2099
  store i16 %sub156, ptr %arrayidx158, align 2, !dbg !2099, !tbaa !246
  %or1611249 = or i16 %or1471248, %sub156, !dbg !2099
  call void @llvm.dbg.value(metadata i16 %or1611249, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 112, metadata !1919, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 224, metadata !1921, metadata !DIExpression()), !dbg !2100
  %arrayidx165 = getelementptr inbounds i8, ptr %p_src, i64 112, !dbg !2101
  %24 = load i8, ptr %arrayidx165, align 1, !dbg !2101, !tbaa !240
  %conv166 = zext i8 %24 to i16, !dbg !2101
  %arrayidx168 = getelementptr inbounds i8, ptr %p_dst, i64 224, !dbg !2101
  %25 = load i8, ptr %arrayidx168, align 1, !dbg !2101, !tbaa !240
  %conv169 = zext i8 %25 to i16, !dbg !2101
  %sub170 = sub nsw i16 %conv166, %conv169, !dbg !2101
  %arrayidx172 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !2101
  store i16 %sub170, ptr %arrayidx172, align 2, !dbg !2101, !tbaa !246
  %or1751250 = or i16 %or1611249, %sub170, !dbg !2101
  call void @llvm.dbg.value(metadata i16 %or1751250, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 65, metadata !1922, metadata !DIExpression()), !dbg !2102
  call void @llvm.dbg.value(metadata i32 129, metadata !1924, metadata !DIExpression()), !dbg !2102
  %arrayidx179 = getelementptr inbounds i8, ptr %p_src, i64 65, !dbg !2103
  %26 = load i8, ptr %arrayidx179, align 1, !dbg !2103, !tbaa !240
  %conv180 = zext i8 %26 to i16, !dbg !2103
  %arrayidx182 = getelementptr inbounds i8, ptr %p_dst, i64 129, !dbg !2103
  %27 = load i8, ptr %arrayidx182, align 1, !dbg !2103, !tbaa !240
  %conv183 = zext i8 %27 to i16, !dbg !2103
  %sub184 = sub nsw i16 %conv180, %conv183, !dbg !2103
  %arrayidx186 = getelementptr inbounds i16, ptr %level, i64 13, !dbg !2103
  store i16 %sub184, ptr %arrayidx186, align 2, !dbg !2103, !tbaa !246
  %or1891251 = or i16 %or1751250, %sub184, !dbg !2103
  call void @llvm.dbg.value(metadata i16 %or1891251, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 18, metadata !1925, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i32 34, metadata !1927, metadata !DIExpression()), !dbg !2104
  %arrayidx193 = getelementptr inbounds i8, ptr %p_src, i64 18, !dbg !2105
  %28 = load i8, ptr %arrayidx193, align 1, !dbg !2105, !tbaa !240
  %conv194 = zext i8 %28 to i16, !dbg !2105
  %arrayidx196 = getelementptr inbounds i8, ptr %p_dst, i64 34, !dbg !2105
  %29 = load i8, ptr %arrayidx196, align 1, !dbg !2105, !tbaa !240
  %conv197 = zext i8 %29 to i16, !dbg !2105
  %sub198 = sub nsw i16 %conv194, %conv197, !dbg !2105
  %arrayidx200 = getelementptr inbounds i16, ptr %level, i64 14, !dbg !2105
  store i16 %sub198, ptr %arrayidx200, align 2, !dbg !2105, !tbaa !246
  %or2031252 = or i16 %or1891251, %sub198, !dbg !2105
  call void @llvm.dbg.value(metadata i16 %or2031252, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 3, metadata !1928, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata i32 3, metadata !1930, metadata !DIExpression()), !dbg !2106
  %arrayidx207 = getelementptr inbounds i8, ptr %p_src, i64 3, !dbg !2107
  %30 = load i8, ptr %arrayidx207, align 1, !dbg !2107, !tbaa !240
  %conv208 = zext i8 %30 to i16, !dbg !2107
  %arrayidx210 = getelementptr inbounds i8, ptr %p_dst, i64 3, !dbg !2107
  %31 = load i8, ptr %arrayidx210, align 1, !dbg !2107, !tbaa !240
  %conv211 = zext i8 %31 to i16, !dbg !2107
  %sub212 = sub nsw i16 %conv208, %conv211, !dbg !2107
  %arrayidx214 = getelementptr inbounds i16, ptr %level, i64 15, !dbg !2107
  store i16 %sub212, ptr %arrayidx214, align 2, !dbg !2107, !tbaa !246
  %or2171253 = or i16 %or2031252, %sub212, !dbg !2107
  call void @llvm.dbg.value(metadata i16 %or2171253, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 34, metadata !1931, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i32 66, metadata !1933, metadata !DIExpression()), !dbg !2108
  %arrayidx221 = getelementptr inbounds i8, ptr %p_src, i64 34, !dbg !2109
  %32 = load i8, ptr %arrayidx221, align 1, !dbg !2109, !tbaa !240
  %conv222 = zext i8 %32 to i16, !dbg !2109
  %arrayidx224 = getelementptr inbounds i8, ptr %p_dst, i64 66, !dbg !2109
  %33 = load i8, ptr %arrayidx224, align 1, !dbg !2109, !tbaa !240
  %conv225 = zext i8 %33 to i16, !dbg !2109
  %sub226 = sub nsw i16 %conv222, %conv225, !dbg !2109
  %arrayidx228 = getelementptr inbounds i16, ptr %level, i64 16, !dbg !2109
  store i16 %sub226, ptr %arrayidx228, align 2, !dbg !2109, !tbaa !246
  %or2311254 = or i16 %or2171253, %sub226, !dbg !2109
  call void @llvm.dbg.value(metadata i16 %or2311254, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 81, metadata !1934, metadata !DIExpression()), !dbg !2110
  call void @llvm.dbg.value(metadata i32 161, metadata !1936, metadata !DIExpression()), !dbg !2110
  %arrayidx235 = getelementptr inbounds i8, ptr %p_src, i64 81, !dbg !2111
  %34 = load i8, ptr %arrayidx235, align 1, !dbg !2111, !tbaa !240
  %conv236 = zext i8 %34 to i16, !dbg !2111
  %arrayidx238 = getelementptr inbounds i8, ptr %p_dst, i64 161, !dbg !2111
  %35 = load i8, ptr %arrayidx238, align 1, !dbg !2111, !tbaa !240
  %conv239 = zext i8 %35 to i16, !dbg !2111
  %sub240 = sub nsw i16 %conv236, %conv239, !dbg !2111
  %arrayidx242 = getelementptr inbounds i16, ptr %level, i64 17, !dbg !2111
  store i16 %sub240, ptr %arrayidx242, align 2, !dbg !2111, !tbaa !246
  %or2451255 = or i16 %or2311254, %sub240, !dbg !2111
  call void @llvm.dbg.value(metadata i16 %or2451255, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 97, metadata !1937, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i32 193, metadata !1939, metadata !DIExpression()), !dbg !2112
  %arrayidx249 = getelementptr inbounds i8, ptr %p_src, i64 97, !dbg !2113
  %36 = load i8, ptr %arrayidx249, align 1, !dbg !2113, !tbaa !240
  %conv250 = zext i8 %36 to i16, !dbg !2113
  %arrayidx252 = getelementptr inbounds i8, ptr %p_dst, i64 193, !dbg !2113
  %37 = load i8, ptr %arrayidx252, align 1, !dbg !2113, !tbaa !240
  %conv253 = zext i8 %37 to i16, !dbg !2113
  %sub254 = sub nsw i16 %conv250, %conv253, !dbg !2113
  %arrayidx256 = getelementptr inbounds i16, ptr %level, i64 18, !dbg !2113
  store i16 %sub254, ptr %arrayidx256, align 2, !dbg !2113, !tbaa !246
  %or2591256 = or i16 %or2451255, %sub254, !dbg !2113
  call void @llvm.dbg.value(metadata i16 %or2591256, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 113, metadata !1940, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i32 225, metadata !1942, metadata !DIExpression()), !dbg !2114
  %arrayidx263 = getelementptr inbounds i8, ptr %p_src, i64 113, !dbg !2115
  %38 = load i8, ptr %arrayidx263, align 1, !dbg !2115, !tbaa !240
  %conv264 = zext i8 %38 to i16, !dbg !2115
  %arrayidx266 = getelementptr inbounds i8, ptr %p_dst, i64 225, !dbg !2115
  %39 = load i8, ptr %arrayidx266, align 1, !dbg !2115, !tbaa !240
  %conv267 = zext i8 %39 to i16, !dbg !2115
  %sub268 = sub nsw i16 %conv264, %conv267, !dbg !2115
  %arrayidx270 = getelementptr inbounds i16, ptr %level, i64 19, !dbg !2115
  store i16 %sub268, ptr %arrayidx270, align 2, !dbg !2115, !tbaa !246
  %or2731257 = or i16 %or2591256, %sub268, !dbg !2115
  call void @llvm.dbg.value(metadata i16 %or2731257, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 50, metadata !1943, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i32 98, metadata !1945, metadata !DIExpression()), !dbg !2116
  %arrayidx277 = getelementptr inbounds i8, ptr %p_src, i64 50, !dbg !2117
  %40 = load i8, ptr %arrayidx277, align 1, !dbg !2117, !tbaa !240
  %conv278 = zext i8 %40 to i16, !dbg !2117
  %arrayidx280 = getelementptr inbounds i8, ptr %p_dst, i64 98, !dbg !2117
  %41 = load i8, ptr %arrayidx280, align 1, !dbg !2117, !tbaa !240
  %conv281 = zext i8 %41 to i16, !dbg !2117
  %sub282 = sub nsw i16 %conv278, %conv281, !dbg !2117
  %arrayidx284 = getelementptr inbounds i16, ptr %level, i64 20, !dbg !2117
  store i16 %sub282, ptr %arrayidx284, align 2, !dbg !2117, !tbaa !246
  %or2871258 = or i16 %or2731257, %sub282, !dbg !2117
  call void @llvm.dbg.value(metadata i16 %or2871258, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 19, metadata !1946, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i32 35, metadata !1948, metadata !DIExpression()), !dbg !2118
  %arrayidx291 = getelementptr inbounds i8, ptr %p_src, i64 19, !dbg !2119
  %42 = load i8, ptr %arrayidx291, align 1, !dbg !2119, !tbaa !240
  %conv292 = zext i8 %42 to i16, !dbg !2119
  %arrayidx294 = getelementptr inbounds i8, ptr %p_dst, i64 35, !dbg !2119
  %43 = load i8, ptr %arrayidx294, align 1, !dbg !2119, !tbaa !240
  %conv295 = zext i8 %43 to i16, !dbg !2119
  %sub296 = sub nsw i16 %conv292, %conv295, !dbg !2119
  %arrayidx298 = getelementptr inbounds i16, ptr %level, i64 21, !dbg !2119
  store i16 %sub296, ptr %arrayidx298, align 2, !dbg !2119, !tbaa !246
  %or3011259 = or i16 %or2871258, %sub296, !dbg !2119
  call void @llvm.dbg.value(metadata i16 %or3011259, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 4, metadata !1949, metadata !DIExpression()), !dbg !2120
  call void @llvm.dbg.value(metadata i32 4, metadata !1951, metadata !DIExpression()), !dbg !2120
  %arrayidx305 = getelementptr inbounds i8, ptr %p_src, i64 4, !dbg !2121
  %44 = load i8, ptr %arrayidx305, align 1, !dbg !2121, !tbaa !240
  %conv306 = zext i8 %44 to i16, !dbg !2121
  %arrayidx308 = getelementptr inbounds i8, ptr %p_dst, i64 4, !dbg !2121
  %45 = load i8, ptr %arrayidx308, align 1, !dbg !2121, !tbaa !240
  %conv309 = zext i8 %45 to i16, !dbg !2121
  %sub310 = sub nsw i16 %conv306, %conv309, !dbg !2121
  %arrayidx312 = getelementptr inbounds i16, ptr %level, i64 22, !dbg !2121
  store i16 %sub310, ptr %arrayidx312, align 2, !dbg !2121, !tbaa !246
  %or3151260 = or i16 %or3011259, %sub310, !dbg !2121
  call void @llvm.dbg.value(metadata i16 %or3151260, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 35, metadata !1952, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 67, metadata !1954, metadata !DIExpression()), !dbg !2122
  %arrayidx319 = getelementptr inbounds i8, ptr %p_src, i64 35, !dbg !2123
  %46 = load i8, ptr %arrayidx319, align 1, !dbg !2123, !tbaa !240
  %conv320 = zext i8 %46 to i16, !dbg !2123
  %arrayidx322 = getelementptr inbounds i8, ptr %p_dst, i64 67, !dbg !2123
  %47 = load i8, ptr %arrayidx322, align 1, !dbg !2123, !tbaa !240
  %conv323 = zext i8 %47 to i16, !dbg !2123
  %sub324 = sub nsw i16 %conv320, %conv323, !dbg !2123
  %arrayidx326 = getelementptr inbounds i16, ptr %level, i64 23, !dbg !2123
  store i16 %sub324, ptr %arrayidx326, align 2, !dbg !2123, !tbaa !246
  %or3291261 = or i16 %or3151260, %sub324, !dbg !2123
  call void @llvm.dbg.value(metadata i16 %or3291261, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 66, metadata !1955, metadata !DIExpression()), !dbg !2124
  call void @llvm.dbg.value(metadata i32 130, metadata !1957, metadata !DIExpression()), !dbg !2124
  %arrayidx333 = getelementptr inbounds i8, ptr %p_src, i64 66, !dbg !2125
  %48 = load i8, ptr %arrayidx333, align 1, !dbg !2125, !tbaa !240
  %conv334 = zext i8 %48 to i16, !dbg !2125
  %arrayidx336 = getelementptr inbounds i8, ptr %p_dst, i64 130, !dbg !2125
  %49 = load i8, ptr %arrayidx336, align 1, !dbg !2125, !tbaa !240
  %conv337 = zext i8 %49 to i16, !dbg !2125
  %sub338 = sub nsw i16 %conv334, %conv337, !dbg !2125
  %arrayidx340 = getelementptr inbounds i16, ptr %level, i64 24, !dbg !2125
  store i16 %sub338, ptr %arrayidx340, align 2, !dbg !2125, !tbaa !246
  %or3431262 = or i16 %or3291261, %sub338, !dbg !2125
  call void @llvm.dbg.value(metadata i16 %or3431262, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 82, metadata !1958, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 162, metadata !1960, metadata !DIExpression()), !dbg !2126
  %arrayidx347 = getelementptr inbounds i8, ptr %p_src, i64 82, !dbg !2127
  %50 = load i8, ptr %arrayidx347, align 1, !dbg !2127, !tbaa !240
  %conv348 = zext i8 %50 to i16, !dbg !2127
  %arrayidx350 = getelementptr inbounds i8, ptr %p_dst, i64 162, !dbg !2127
  %51 = load i8, ptr %arrayidx350, align 1, !dbg !2127, !tbaa !240
  %conv351 = zext i8 %51 to i16, !dbg !2127
  %sub352 = sub nsw i16 %conv348, %conv351, !dbg !2127
  %arrayidx354 = getelementptr inbounds i16, ptr %level, i64 25, !dbg !2127
  store i16 %sub352, ptr %arrayidx354, align 2, !dbg !2127, !tbaa !246
  %or3571263 = or i16 %or3431262, %sub352, !dbg !2127
  call void @llvm.dbg.value(metadata i16 %or3571263, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 98, metadata !1961, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 194, metadata !1963, metadata !DIExpression()), !dbg !2128
  %arrayidx361 = getelementptr inbounds i8, ptr %p_src, i64 98, !dbg !2129
  %52 = load i8, ptr %arrayidx361, align 1, !dbg !2129, !tbaa !240
  %conv362 = zext i8 %52 to i16, !dbg !2129
  %arrayidx364 = getelementptr inbounds i8, ptr %p_dst, i64 194, !dbg !2129
  %53 = load i8, ptr %arrayidx364, align 1, !dbg !2129, !tbaa !240
  %conv365 = zext i8 %53 to i16, !dbg !2129
  %sub366 = sub nsw i16 %conv362, %conv365, !dbg !2129
  %arrayidx368 = getelementptr inbounds i16, ptr %level, i64 26, !dbg !2129
  store i16 %sub366, ptr %arrayidx368, align 2, !dbg !2129, !tbaa !246
  %or3711264 = or i16 %or3571263, %sub366, !dbg !2129
  call void @llvm.dbg.value(metadata i16 %or3711264, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 114, metadata !1964, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i32 226, metadata !1966, metadata !DIExpression()), !dbg !2130
  %arrayidx375 = getelementptr inbounds i8, ptr %p_src, i64 114, !dbg !2131
  %54 = load i8, ptr %arrayidx375, align 1, !dbg !2131, !tbaa !240
  %conv376 = zext i8 %54 to i16, !dbg !2131
  %arrayidx378 = getelementptr inbounds i8, ptr %p_dst, i64 226, !dbg !2131
  %55 = load i8, ptr %arrayidx378, align 1, !dbg !2131, !tbaa !240
  %conv379 = zext i8 %55 to i16, !dbg !2131
  %sub380 = sub nsw i16 %conv376, %conv379, !dbg !2131
  %arrayidx382 = getelementptr inbounds i16, ptr %level, i64 27, !dbg !2131
  store i16 %sub380, ptr %arrayidx382, align 2, !dbg !2131, !tbaa !246
  %or3851265 = or i16 %or3711264, %sub380, !dbg !2131
  call void @llvm.dbg.value(metadata i16 %or3851265, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 51, metadata !1967, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.value(metadata i32 99, metadata !1969, metadata !DIExpression()), !dbg !2132
  %arrayidx389 = getelementptr inbounds i8, ptr %p_src, i64 51, !dbg !2133
  %56 = load i8, ptr %arrayidx389, align 1, !dbg !2133, !tbaa !240
  %conv390 = zext i8 %56 to i16, !dbg !2133
  %arrayidx392 = getelementptr inbounds i8, ptr %p_dst, i64 99, !dbg !2133
  %57 = load i8, ptr %arrayidx392, align 1, !dbg !2133, !tbaa !240
  %conv393 = zext i8 %57 to i16, !dbg !2133
  %sub394 = sub nsw i16 %conv390, %conv393, !dbg !2133
  %arrayidx396 = getelementptr inbounds i16, ptr %level, i64 28, !dbg !2133
  store i16 %sub394, ptr %arrayidx396, align 2, !dbg !2133, !tbaa !246
  %or3991266 = or i16 %or3851265, %sub394, !dbg !2133
  call void @llvm.dbg.value(metadata i16 %or3991266, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 20, metadata !1970, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i32 36, metadata !1972, metadata !DIExpression()), !dbg !2134
  %arrayidx403 = getelementptr inbounds i8, ptr %p_src, i64 20, !dbg !2135
  %58 = load i8, ptr %arrayidx403, align 1, !dbg !2135, !tbaa !240
  %conv404 = zext i8 %58 to i16, !dbg !2135
  %arrayidx406 = getelementptr inbounds i8, ptr %p_dst, i64 36, !dbg !2135
  %59 = load i8, ptr %arrayidx406, align 1, !dbg !2135, !tbaa !240
  %conv407 = zext i8 %59 to i16, !dbg !2135
  %sub408 = sub nsw i16 %conv404, %conv407, !dbg !2135
  %arrayidx410 = getelementptr inbounds i16, ptr %level, i64 29, !dbg !2135
  store i16 %sub408, ptr %arrayidx410, align 2, !dbg !2135, !tbaa !246
  %or4131267 = or i16 %or3991266, %sub408, !dbg !2135
  call void @llvm.dbg.value(metadata i16 %or4131267, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 5, metadata !1973, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 5, metadata !1975, metadata !DIExpression()), !dbg !2136
  %arrayidx417 = getelementptr inbounds i8, ptr %p_src, i64 5, !dbg !2137
  %60 = load i8, ptr %arrayidx417, align 1, !dbg !2137, !tbaa !240
  %conv418 = zext i8 %60 to i16, !dbg !2137
  %arrayidx420 = getelementptr inbounds i8, ptr %p_dst, i64 5, !dbg !2137
  %61 = load i8, ptr %arrayidx420, align 1, !dbg !2137, !tbaa !240
  %conv421 = zext i8 %61 to i16, !dbg !2137
  %sub422 = sub nsw i16 %conv418, %conv421, !dbg !2137
  %arrayidx424 = getelementptr inbounds i16, ptr %level, i64 30, !dbg !2137
  store i16 %sub422, ptr %arrayidx424, align 2, !dbg !2137, !tbaa !246
  %or4271268 = or i16 %or4131267, %sub422, !dbg !2137
  call void @llvm.dbg.value(metadata i16 %or4271268, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 36, metadata !1976, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 68, metadata !1978, metadata !DIExpression()), !dbg !2138
  %arrayidx431 = getelementptr inbounds i8, ptr %p_src, i64 36, !dbg !2139
  %62 = load i8, ptr %arrayidx431, align 1, !dbg !2139, !tbaa !240
  %conv432 = zext i8 %62 to i16, !dbg !2139
  %arrayidx434 = getelementptr inbounds i8, ptr %p_dst, i64 68, !dbg !2139
  %63 = load i8, ptr %arrayidx434, align 1, !dbg !2139, !tbaa !240
  %conv435 = zext i8 %63 to i16, !dbg !2139
  %sub436 = sub nsw i16 %conv432, %conv435, !dbg !2139
  %arrayidx438 = getelementptr inbounds i16, ptr %level, i64 31, !dbg !2139
  store i16 %sub436, ptr %arrayidx438, align 2, !dbg !2139, !tbaa !246
  %or4411269 = or i16 %or4271268, %sub436, !dbg !2139
  call void @llvm.dbg.value(metadata i16 %or4411269, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 67, metadata !1979, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i32 131, metadata !1981, metadata !DIExpression()), !dbg !2140
  %arrayidx445 = getelementptr inbounds i8, ptr %p_src, i64 67, !dbg !2141
  %64 = load i8, ptr %arrayidx445, align 1, !dbg !2141, !tbaa !240
  %conv446 = zext i8 %64 to i16, !dbg !2141
  %arrayidx448 = getelementptr inbounds i8, ptr %p_dst, i64 131, !dbg !2141
  %65 = load i8, ptr %arrayidx448, align 1, !dbg !2141, !tbaa !240
  %conv449 = zext i8 %65 to i16, !dbg !2141
  %sub450 = sub nsw i16 %conv446, %conv449, !dbg !2141
  %arrayidx452 = getelementptr inbounds i16, ptr %level, i64 32, !dbg !2141
  store i16 %sub450, ptr %arrayidx452, align 2, !dbg !2141, !tbaa !246
  %or4551270 = or i16 %or4411269, %sub450, !dbg !2141
  call void @llvm.dbg.value(metadata i16 %or4551270, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 83, metadata !1982, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i32 163, metadata !1984, metadata !DIExpression()), !dbg !2142
  %arrayidx459 = getelementptr inbounds i8, ptr %p_src, i64 83, !dbg !2143
  %66 = load i8, ptr %arrayidx459, align 1, !dbg !2143, !tbaa !240
  %conv460 = zext i8 %66 to i16, !dbg !2143
  %arrayidx462 = getelementptr inbounds i8, ptr %p_dst, i64 163, !dbg !2143
  %67 = load i8, ptr %arrayidx462, align 1, !dbg !2143, !tbaa !240
  %conv463 = zext i8 %67 to i16, !dbg !2143
  %sub464 = sub nsw i16 %conv460, %conv463, !dbg !2143
  %arrayidx466 = getelementptr inbounds i16, ptr %level, i64 33, !dbg !2143
  store i16 %sub464, ptr %arrayidx466, align 2, !dbg !2143, !tbaa !246
  %or4691271 = or i16 %or4551270, %sub464, !dbg !2143
  call void @llvm.dbg.value(metadata i16 %or4691271, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 99, metadata !1985, metadata !DIExpression()), !dbg !2144
  call void @llvm.dbg.value(metadata i32 195, metadata !1987, metadata !DIExpression()), !dbg !2144
  %arrayidx473 = getelementptr inbounds i8, ptr %p_src, i64 99, !dbg !2145
  %68 = load i8, ptr %arrayidx473, align 1, !dbg !2145, !tbaa !240
  %conv474 = zext i8 %68 to i16, !dbg !2145
  %arrayidx476 = getelementptr inbounds i8, ptr %p_dst, i64 195, !dbg !2145
  %69 = load i8, ptr %arrayidx476, align 1, !dbg !2145, !tbaa !240
  %conv477 = zext i8 %69 to i16, !dbg !2145
  %sub478 = sub nsw i16 %conv474, %conv477, !dbg !2145
  %arrayidx480 = getelementptr inbounds i16, ptr %level, i64 34, !dbg !2145
  store i16 %sub478, ptr %arrayidx480, align 2, !dbg !2145, !tbaa !246
  %or4831272 = or i16 %or4691271, %sub478, !dbg !2145
  call void @llvm.dbg.value(metadata i16 %or4831272, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 115, metadata !1988, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata i32 227, metadata !1990, metadata !DIExpression()), !dbg !2146
  %arrayidx487 = getelementptr inbounds i8, ptr %p_src, i64 115, !dbg !2147
  %70 = load i8, ptr %arrayidx487, align 1, !dbg !2147, !tbaa !240
  %conv488 = zext i8 %70 to i16, !dbg !2147
  %arrayidx490 = getelementptr inbounds i8, ptr %p_dst, i64 227, !dbg !2147
  %71 = load i8, ptr %arrayidx490, align 1, !dbg !2147, !tbaa !240
  %conv491 = zext i8 %71 to i16, !dbg !2147
  %sub492 = sub nsw i16 %conv488, %conv491, !dbg !2147
  %arrayidx494 = getelementptr inbounds i16, ptr %level, i64 35, !dbg !2147
  store i16 %sub492, ptr %arrayidx494, align 2, !dbg !2147, !tbaa !246
  %or4971273 = or i16 %or4831272, %sub492, !dbg !2147
  call void @llvm.dbg.value(metadata i16 %or4971273, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 52, metadata !1991, metadata !DIExpression()), !dbg !2148
  call void @llvm.dbg.value(metadata i32 100, metadata !1993, metadata !DIExpression()), !dbg !2148
  %arrayidx501 = getelementptr inbounds i8, ptr %p_src, i64 52, !dbg !2149
  %72 = load i8, ptr %arrayidx501, align 1, !dbg !2149, !tbaa !240
  %conv502 = zext i8 %72 to i16, !dbg !2149
  %arrayidx504 = getelementptr inbounds i8, ptr %p_dst, i64 100, !dbg !2149
  %73 = load i8, ptr %arrayidx504, align 1, !dbg !2149, !tbaa !240
  %conv505 = zext i8 %73 to i16, !dbg !2149
  %sub506 = sub nsw i16 %conv502, %conv505, !dbg !2149
  %arrayidx508 = getelementptr inbounds i16, ptr %level, i64 36, !dbg !2149
  store i16 %sub506, ptr %arrayidx508, align 2, !dbg !2149, !tbaa !246
  %or5111274 = or i16 %or4971273, %sub506, !dbg !2149
  call void @llvm.dbg.value(metadata i16 %or5111274, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 21, metadata !1994, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i32 37, metadata !1996, metadata !DIExpression()), !dbg !2150
  %arrayidx515 = getelementptr inbounds i8, ptr %p_src, i64 21, !dbg !2151
  %74 = load i8, ptr %arrayidx515, align 1, !dbg !2151, !tbaa !240
  %conv516 = zext i8 %74 to i16, !dbg !2151
  %arrayidx518 = getelementptr inbounds i8, ptr %p_dst, i64 37, !dbg !2151
  %75 = load i8, ptr %arrayidx518, align 1, !dbg !2151, !tbaa !240
  %conv519 = zext i8 %75 to i16, !dbg !2151
  %sub520 = sub nsw i16 %conv516, %conv519, !dbg !2151
  %arrayidx522 = getelementptr inbounds i16, ptr %level, i64 37, !dbg !2151
  store i16 %sub520, ptr %arrayidx522, align 2, !dbg !2151, !tbaa !246
  %or5251275 = or i16 %or5111274, %sub520, !dbg !2151
  call void @llvm.dbg.value(metadata i16 %or5251275, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 6, metadata !1997, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i32 6, metadata !1999, metadata !DIExpression()), !dbg !2152
  %arrayidx529 = getelementptr inbounds i8, ptr %p_src, i64 6, !dbg !2153
  %76 = load i8, ptr %arrayidx529, align 1, !dbg !2153, !tbaa !240
  %conv530 = zext i8 %76 to i16, !dbg !2153
  %arrayidx532 = getelementptr inbounds i8, ptr %p_dst, i64 6, !dbg !2153
  %77 = load i8, ptr %arrayidx532, align 1, !dbg !2153, !tbaa !240
  %conv533 = zext i8 %77 to i16, !dbg !2153
  %sub534 = sub nsw i16 %conv530, %conv533, !dbg !2153
  %arrayidx536 = getelementptr inbounds i16, ptr %level, i64 38, !dbg !2153
  store i16 %sub534, ptr %arrayidx536, align 2, !dbg !2153, !tbaa !246
  %or5391276 = or i16 %or5251275, %sub534, !dbg !2153
  call void @llvm.dbg.value(metadata i16 %or5391276, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 37, metadata !2000, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i32 69, metadata !2002, metadata !DIExpression()), !dbg !2154
  %arrayidx543 = getelementptr inbounds i8, ptr %p_src, i64 37, !dbg !2155
  %78 = load i8, ptr %arrayidx543, align 1, !dbg !2155, !tbaa !240
  %conv544 = zext i8 %78 to i16, !dbg !2155
  %arrayidx546 = getelementptr inbounds i8, ptr %p_dst, i64 69, !dbg !2155
  %79 = load i8, ptr %arrayidx546, align 1, !dbg !2155, !tbaa !240
  %conv547 = zext i8 %79 to i16, !dbg !2155
  %sub548 = sub nsw i16 %conv544, %conv547, !dbg !2155
  %arrayidx550 = getelementptr inbounds i16, ptr %level, i64 39, !dbg !2155
  store i16 %sub548, ptr %arrayidx550, align 2, !dbg !2155, !tbaa !246
  %or5531277 = or i16 %or5391276, %sub548, !dbg !2155
  call void @llvm.dbg.value(metadata i16 %or5531277, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 68, metadata !2003, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 132, metadata !2005, metadata !DIExpression()), !dbg !2156
  %arrayidx557 = getelementptr inbounds i8, ptr %p_src, i64 68, !dbg !2157
  %80 = load i8, ptr %arrayidx557, align 1, !dbg !2157, !tbaa !240
  %conv558 = zext i8 %80 to i16, !dbg !2157
  %arrayidx560 = getelementptr inbounds i8, ptr %p_dst, i64 132, !dbg !2157
  %81 = load i8, ptr %arrayidx560, align 1, !dbg !2157, !tbaa !240
  %conv561 = zext i8 %81 to i16, !dbg !2157
  %sub562 = sub nsw i16 %conv558, %conv561, !dbg !2157
  %arrayidx564 = getelementptr inbounds i16, ptr %level, i64 40, !dbg !2157
  store i16 %sub562, ptr %arrayidx564, align 2, !dbg !2157, !tbaa !246
  %or5671278 = or i16 %or5531277, %sub562, !dbg !2157
  call void @llvm.dbg.value(metadata i16 %or5671278, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 84, metadata !2006, metadata !DIExpression()), !dbg !2158
  call void @llvm.dbg.value(metadata i32 164, metadata !2008, metadata !DIExpression()), !dbg !2158
  %arrayidx571 = getelementptr inbounds i8, ptr %p_src, i64 84, !dbg !2159
  %82 = load i8, ptr %arrayidx571, align 1, !dbg !2159, !tbaa !240
  %conv572 = zext i8 %82 to i16, !dbg !2159
  %arrayidx574 = getelementptr inbounds i8, ptr %p_dst, i64 164, !dbg !2159
  %83 = load i8, ptr %arrayidx574, align 1, !dbg !2159, !tbaa !240
  %conv575 = zext i8 %83 to i16, !dbg !2159
  %sub576 = sub nsw i16 %conv572, %conv575, !dbg !2159
  %arrayidx578 = getelementptr inbounds i16, ptr %level, i64 41, !dbg !2159
  store i16 %sub576, ptr %arrayidx578, align 2, !dbg !2159, !tbaa !246
  %or5811279 = or i16 %or5671278, %sub576, !dbg !2159
  call void @llvm.dbg.value(metadata i16 %or5811279, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 100, metadata !2009, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 196, metadata !2011, metadata !DIExpression()), !dbg !2160
  %arrayidx585 = getelementptr inbounds i8, ptr %p_src, i64 100, !dbg !2161
  %84 = load i8, ptr %arrayidx585, align 1, !dbg !2161, !tbaa !240
  %conv586 = zext i8 %84 to i16, !dbg !2161
  %arrayidx588 = getelementptr inbounds i8, ptr %p_dst, i64 196, !dbg !2161
  %85 = load i8, ptr %arrayidx588, align 1, !dbg !2161, !tbaa !240
  %conv589 = zext i8 %85 to i16, !dbg !2161
  %sub590 = sub nsw i16 %conv586, %conv589, !dbg !2161
  %arrayidx592 = getelementptr inbounds i16, ptr %level, i64 42, !dbg !2161
  store i16 %sub590, ptr %arrayidx592, align 2, !dbg !2161, !tbaa !246
  %or5951280 = or i16 %or5811279, %sub590, !dbg !2161
  call void @llvm.dbg.value(metadata i16 %or5951280, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 116, metadata !2012, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i32 228, metadata !2014, metadata !DIExpression()), !dbg !2162
  %arrayidx599 = getelementptr inbounds i8, ptr %p_src, i64 116, !dbg !2163
  %86 = load i8, ptr %arrayidx599, align 1, !dbg !2163, !tbaa !240
  %conv600 = zext i8 %86 to i16, !dbg !2163
  %arrayidx602 = getelementptr inbounds i8, ptr %p_dst, i64 228, !dbg !2163
  %87 = load i8, ptr %arrayidx602, align 1, !dbg !2163, !tbaa !240
  %conv603 = zext i8 %87 to i16, !dbg !2163
  %sub604 = sub nsw i16 %conv600, %conv603, !dbg !2163
  %arrayidx606 = getelementptr inbounds i16, ptr %level, i64 43, !dbg !2163
  store i16 %sub604, ptr %arrayidx606, align 2, !dbg !2163, !tbaa !246
  %or6091281 = or i16 %or5951280, %sub604, !dbg !2163
  call void @llvm.dbg.value(metadata i16 %or6091281, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 53, metadata !2015, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32 101, metadata !2017, metadata !DIExpression()), !dbg !2164
  %arrayidx613 = getelementptr inbounds i8, ptr %p_src, i64 53, !dbg !2165
  %88 = load i8, ptr %arrayidx613, align 1, !dbg !2165, !tbaa !240
  %conv614 = zext i8 %88 to i16, !dbg !2165
  %arrayidx616 = getelementptr inbounds i8, ptr %p_dst, i64 101, !dbg !2165
  %89 = load i8, ptr %arrayidx616, align 1, !dbg !2165, !tbaa !240
  %conv617 = zext i8 %89 to i16, !dbg !2165
  %sub618 = sub nsw i16 %conv614, %conv617, !dbg !2165
  %arrayidx620 = getelementptr inbounds i16, ptr %level, i64 44, !dbg !2165
  store i16 %sub618, ptr %arrayidx620, align 2, !dbg !2165, !tbaa !246
  %or6231282 = or i16 %or6091281, %sub618, !dbg !2165
  call void @llvm.dbg.value(metadata i16 %or6231282, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 22, metadata !2018, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i32 38, metadata !2020, metadata !DIExpression()), !dbg !2166
  %arrayidx627 = getelementptr inbounds i8, ptr %p_src, i64 22, !dbg !2167
  %90 = load i8, ptr %arrayidx627, align 1, !dbg !2167, !tbaa !240
  %conv628 = zext i8 %90 to i16, !dbg !2167
  %arrayidx630 = getelementptr inbounds i8, ptr %p_dst, i64 38, !dbg !2167
  %91 = load i8, ptr %arrayidx630, align 1, !dbg !2167, !tbaa !240
  %conv631 = zext i8 %91 to i16, !dbg !2167
  %sub632 = sub nsw i16 %conv628, %conv631, !dbg !2167
  %arrayidx634 = getelementptr inbounds i16, ptr %level, i64 45, !dbg !2167
  store i16 %sub632, ptr %arrayidx634, align 2, !dbg !2167, !tbaa !246
  %or6371283 = or i16 %or6231282, %sub632, !dbg !2167
  call void @llvm.dbg.value(metadata i16 %or6371283, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 38, metadata !2021, metadata !DIExpression()), !dbg !2168
  call void @llvm.dbg.value(metadata i32 70, metadata !2023, metadata !DIExpression()), !dbg !2168
  %arrayidx641 = getelementptr inbounds i8, ptr %p_src, i64 38, !dbg !2169
  %92 = load i8, ptr %arrayidx641, align 1, !dbg !2169, !tbaa !240
  %conv642 = zext i8 %92 to i16, !dbg !2169
  %arrayidx644 = getelementptr inbounds i8, ptr %p_dst, i64 70, !dbg !2169
  %93 = load i8, ptr %arrayidx644, align 1, !dbg !2169, !tbaa !240
  %conv645 = zext i8 %93 to i16, !dbg !2169
  %sub646 = sub nsw i16 %conv642, %conv645, !dbg !2169
  %arrayidx648 = getelementptr inbounds i16, ptr %level, i64 46, !dbg !2169
  store i16 %sub646, ptr %arrayidx648, align 2, !dbg !2169, !tbaa !246
  %or6511284 = or i16 %or6371283, %sub646, !dbg !2169
  call void @llvm.dbg.value(metadata i16 %or6511284, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 69, metadata !2024, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i32 133, metadata !2026, metadata !DIExpression()), !dbg !2170
  %arrayidx655 = getelementptr inbounds i8, ptr %p_src, i64 69, !dbg !2171
  %94 = load i8, ptr %arrayidx655, align 1, !dbg !2171, !tbaa !240
  %conv656 = zext i8 %94 to i16, !dbg !2171
  %arrayidx658 = getelementptr inbounds i8, ptr %p_dst, i64 133, !dbg !2171
  %95 = load i8, ptr %arrayidx658, align 1, !dbg !2171, !tbaa !240
  %conv659 = zext i8 %95 to i16, !dbg !2171
  %sub660 = sub nsw i16 %conv656, %conv659, !dbg !2171
  %arrayidx662 = getelementptr inbounds i16, ptr %level, i64 47, !dbg !2171
  store i16 %sub660, ptr %arrayidx662, align 2, !dbg !2171, !tbaa !246
  %or6651285 = or i16 %or6511284, %sub660, !dbg !2171
  call void @llvm.dbg.value(metadata i16 %or6651285, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 85, metadata !2027, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i32 165, metadata !2029, metadata !DIExpression()), !dbg !2172
  %arrayidx669 = getelementptr inbounds i8, ptr %p_src, i64 85, !dbg !2173
  %96 = load i8, ptr %arrayidx669, align 1, !dbg !2173, !tbaa !240
  %conv670 = zext i8 %96 to i16, !dbg !2173
  %arrayidx672 = getelementptr inbounds i8, ptr %p_dst, i64 165, !dbg !2173
  %97 = load i8, ptr %arrayidx672, align 1, !dbg !2173, !tbaa !240
  %conv673 = zext i8 %97 to i16, !dbg !2173
  %sub674 = sub nsw i16 %conv670, %conv673, !dbg !2173
  %arrayidx676 = getelementptr inbounds i16, ptr %level, i64 48, !dbg !2173
  store i16 %sub674, ptr %arrayidx676, align 2, !dbg !2173, !tbaa !246
  %or6791286 = or i16 %or6651285, %sub674, !dbg !2173
  call void @llvm.dbg.value(metadata i16 %or6791286, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 101, metadata !2030, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32 197, metadata !2032, metadata !DIExpression()), !dbg !2174
  %arrayidx683 = getelementptr inbounds i8, ptr %p_src, i64 101, !dbg !2175
  %98 = load i8, ptr %arrayidx683, align 1, !dbg !2175, !tbaa !240
  %conv684 = zext i8 %98 to i16, !dbg !2175
  %arrayidx686 = getelementptr inbounds i8, ptr %p_dst, i64 197, !dbg !2175
  %99 = load i8, ptr %arrayidx686, align 1, !dbg !2175, !tbaa !240
  %conv687 = zext i8 %99 to i16, !dbg !2175
  %sub688 = sub nsw i16 %conv684, %conv687, !dbg !2175
  %arrayidx690 = getelementptr inbounds i16, ptr %level, i64 49, !dbg !2175
  store i16 %sub688, ptr %arrayidx690, align 2, !dbg !2175, !tbaa !246
  %or6931287 = or i16 %or6791286, %sub688, !dbg !2175
  call void @llvm.dbg.value(metadata i16 %or6931287, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 117, metadata !2033, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 229, metadata !2035, metadata !DIExpression()), !dbg !2176
  %arrayidx697 = getelementptr inbounds i8, ptr %p_src, i64 117, !dbg !2177
  %100 = load i8, ptr %arrayidx697, align 1, !dbg !2177, !tbaa !240
  %conv698 = zext i8 %100 to i16, !dbg !2177
  %arrayidx700 = getelementptr inbounds i8, ptr %p_dst, i64 229, !dbg !2177
  %101 = load i8, ptr %arrayidx700, align 1, !dbg !2177, !tbaa !240
  %conv701 = zext i8 %101 to i16, !dbg !2177
  %sub702 = sub nsw i16 %conv698, %conv701, !dbg !2177
  %arrayidx704 = getelementptr inbounds i16, ptr %level, i64 50, !dbg !2177
  store i16 %sub702, ptr %arrayidx704, align 2, !dbg !2177, !tbaa !246
  %or7071288 = or i16 %or6931287, %sub702, !dbg !2177
  call void @llvm.dbg.value(metadata i16 %or7071288, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 54, metadata !2036, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i32 102, metadata !2038, metadata !DIExpression()), !dbg !2178
  %arrayidx711 = getelementptr inbounds i8, ptr %p_src, i64 54, !dbg !2179
  %102 = load i8, ptr %arrayidx711, align 1, !dbg !2179, !tbaa !240
  %conv712 = zext i8 %102 to i16, !dbg !2179
  %arrayidx714 = getelementptr inbounds i8, ptr %p_dst, i64 102, !dbg !2179
  %103 = load i8, ptr %arrayidx714, align 1, !dbg !2179, !tbaa !240
  %conv715 = zext i8 %103 to i16, !dbg !2179
  %sub716 = sub nsw i16 %conv712, %conv715, !dbg !2179
  %arrayidx718 = getelementptr inbounds i16, ptr %level, i64 51, !dbg !2179
  store i16 %sub716, ptr %arrayidx718, align 2, !dbg !2179, !tbaa !246
  %or7211289 = or i16 %or7071288, %sub716, !dbg !2179
  call void @llvm.dbg.value(metadata i16 %or7211289, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 7, metadata !2039, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 7, metadata !2041, metadata !DIExpression()), !dbg !2180
  %arrayidx725 = getelementptr inbounds i8, ptr %p_src, i64 7, !dbg !2181
  %104 = load i8, ptr %arrayidx725, align 1, !dbg !2181, !tbaa !240
  %conv726 = zext i8 %104 to i16, !dbg !2181
  %arrayidx728 = getelementptr inbounds i8, ptr %p_dst, i64 7, !dbg !2181
  %105 = load i8, ptr %arrayidx728, align 1, !dbg !2181, !tbaa !240
  %conv729 = zext i8 %105 to i16, !dbg !2181
  %sub730 = sub nsw i16 %conv726, %conv729, !dbg !2181
  %arrayidx732 = getelementptr inbounds i16, ptr %level, i64 52, !dbg !2181
  store i16 %sub730, ptr %arrayidx732, align 2, !dbg !2181, !tbaa !246
  %or7351290 = or i16 %or7211289, %sub730, !dbg !2181
  call void @llvm.dbg.value(metadata i16 %or7351290, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 23, metadata !2042, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i32 39, metadata !2044, metadata !DIExpression()), !dbg !2182
  %arrayidx739 = getelementptr inbounds i8, ptr %p_src, i64 23, !dbg !2183
  %106 = load i8, ptr %arrayidx739, align 1, !dbg !2183, !tbaa !240
  %conv740 = zext i8 %106 to i16, !dbg !2183
  %arrayidx742 = getelementptr inbounds i8, ptr %p_dst, i64 39, !dbg !2183
  %107 = load i8, ptr %arrayidx742, align 1, !dbg !2183, !tbaa !240
  %conv743 = zext i8 %107 to i16, !dbg !2183
  %sub744 = sub nsw i16 %conv740, %conv743, !dbg !2183
  %arrayidx746 = getelementptr inbounds i16, ptr %level, i64 53, !dbg !2183
  store i16 %sub744, ptr %arrayidx746, align 2, !dbg !2183, !tbaa !246
  %or7491291 = or i16 %or7351290, %sub744, !dbg !2183
  call void @llvm.dbg.value(metadata i16 %or7491291, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 70, metadata !2045, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i32 134, metadata !2047, metadata !DIExpression()), !dbg !2184
  %arrayidx753 = getelementptr inbounds i8, ptr %p_src, i64 70, !dbg !2185
  %108 = load i8, ptr %arrayidx753, align 1, !dbg !2185, !tbaa !240
  %conv754 = zext i8 %108 to i16, !dbg !2185
  %arrayidx756 = getelementptr inbounds i8, ptr %p_dst, i64 134, !dbg !2185
  %109 = load i8, ptr %arrayidx756, align 1, !dbg !2185, !tbaa !240
  %conv757 = zext i8 %109 to i16, !dbg !2185
  %sub758 = sub nsw i16 %conv754, %conv757, !dbg !2185
  %arrayidx760 = getelementptr inbounds i16, ptr %level, i64 54, !dbg !2185
  store i16 %sub758, ptr %arrayidx760, align 2, !dbg !2185, !tbaa !246
  %or7631292 = or i16 %or7491291, %sub758, !dbg !2185
  call void @llvm.dbg.value(metadata i16 %or7631292, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 86, metadata !2048, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 166, metadata !2050, metadata !DIExpression()), !dbg !2186
  %arrayidx767 = getelementptr inbounds i8, ptr %p_src, i64 86, !dbg !2187
  %110 = load i8, ptr %arrayidx767, align 1, !dbg !2187, !tbaa !240
  %conv768 = zext i8 %110 to i16, !dbg !2187
  %arrayidx770 = getelementptr inbounds i8, ptr %p_dst, i64 166, !dbg !2187
  %111 = load i8, ptr %arrayidx770, align 1, !dbg !2187, !tbaa !240
  %conv771 = zext i8 %111 to i16, !dbg !2187
  %sub772 = sub nsw i16 %conv768, %conv771, !dbg !2187
  %arrayidx774 = getelementptr inbounds i16, ptr %level, i64 55, !dbg !2187
  store i16 %sub772, ptr %arrayidx774, align 2, !dbg !2187, !tbaa !246
  %or7771293 = or i16 %or7631292, %sub772, !dbg !2187
  call void @llvm.dbg.value(metadata i16 %or7771293, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 102, metadata !2051, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i32 198, metadata !2053, metadata !DIExpression()), !dbg !2188
  %arrayidx781 = getelementptr inbounds i8, ptr %p_src, i64 102, !dbg !2189
  %112 = load i8, ptr %arrayidx781, align 1, !dbg !2189, !tbaa !240
  %conv782 = zext i8 %112 to i16, !dbg !2189
  %arrayidx784 = getelementptr inbounds i8, ptr %p_dst, i64 198, !dbg !2189
  %113 = load i8, ptr %arrayidx784, align 1, !dbg !2189, !tbaa !240
  %conv785 = zext i8 %113 to i16, !dbg !2189
  %sub786 = sub nsw i16 %conv782, %conv785, !dbg !2189
  %arrayidx788 = getelementptr inbounds i16, ptr %level, i64 56, !dbg !2189
  store i16 %sub786, ptr %arrayidx788, align 2, !dbg !2189, !tbaa !246
  %or7911294 = or i16 %or7771293, %sub786, !dbg !2189
  call void @llvm.dbg.value(metadata i16 %or7911294, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 118, metadata !2054, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 230, metadata !2056, metadata !DIExpression()), !dbg !2190
  %arrayidx795 = getelementptr inbounds i8, ptr %p_src, i64 118, !dbg !2191
  %114 = load i8, ptr %arrayidx795, align 1, !dbg !2191, !tbaa !240
  %conv796 = zext i8 %114 to i16, !dbg !2191
  %arrayidx798 = getelementptr inbounds i8, ptr %p_dst, i64 230, !dbg !2191
  %115 = load i8, ptr %arrayidx798, align 1, !dbg !2191, !tbaa !240
  %conv799 = zext i8 %115 to i16, !dbg !2191
  %sub800 = sub nsw i16 %conv796, %conv799, !dbg !2191
  %arrayidx802 = getelementptr inbounds i16, ptr %level, i64 57, !dbg !2191
  store i16 %sub800, ptr %arrayidx802, align 2, !dbg !2191, !tbaa !246
  %or8051295 = or i16 %or7911294, %sub800, !dbg !2191
  call void @llvm.dbg.value(metadata i16 %or8051295, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 39, metadata !2057, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 71, metadata !2059, metadata !DIExpression()), !dbg !2192
  %arrayidx809 = getelementptr inbounds i8, ptr %p_src, i64 39, !dbg !2193
  %116 = load i8, ptr %arrayidx809, align 1, !dbg !2193, !tbaa !240
  %conv810 = zext i8 %116 to i16, !dbg !2193
  %arrayidx812 = getelementptr inbounds i8, ptr %p_dst, i64 71, !dbg !2193
  %117 = load i8, ptr %arrayidx812, align 1, !dbg !2193, !tbaa !240
  %conv813 = zext i8 %117 to i16, !dbg !2193
  %sub814 = sub nsw i16 %conv810, %conv813, !dbg !2193
  %arrayidx816 = getelementptr inbounds i16, ptr %level, i64 58, !dbg !2193
  store i16 %sub814, ptr %arrayidx816, align 2, !dbg !2193, !tbaa !246
  %or8191296 = or i16 %or8051295, %sub814, !dbg !2193
  call void @llvm.dbg.value(metadata i16 %or8191296, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 55, metadata !2060, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 103, metadata !2062, metadata !DIExpression()), !dbg !2194
  %arrayidx823 = getelementptr inbounds i8, ptr %p_src, i64 55, !dbg !2195
  %118 = load i8, ptr %arrayidx823, align 1, !dbg !2195, !tbaa !240
  %conv824 = zext i8 %118 to i16, !dbg !2195
  %arrayidx826 = getelementptr inbounds i8, ptr %p_dst, i64 103, !dbg !2195
  %119 = load i8, ptr %arrayidx826, align 1, !dbg !2195, !tbaa !240
  %conv827 = zext i8 %119 to i16, !dbg !2195
  %sub828 = sub nsw i16 %conv824, %conv827, !dbg !2195
  %arrayidx830 = getelementptr inbounds i16, ptr %level, i64 59, !dbg !2195
  store i16 %sub828, ptr %arrayidx830, align 2, !dbg !2195, !tbaa !246
  %or8331297 = or i16 %or8191296, %sub828, !dbg !2195
  call void @llvm.dbg.value(metadata i16 %or8331297, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 71, metadata !2063, metadata !DIExpression()), !dbg !2196
  call void @llvm.dbg.value(metadata i32 135, metadata !2065, metadata !DIExpression()), !dbg !2196
  %arrayidx837 = getelementptr inbounds i8, ptr %p_src, i64 71, !dbg !2197
  %120 = load i8, ptr %arrayidx837, align 1, !dbg !2197, !tbaa !240
  %conv838 = zext i8 %120 to i16, !dbg !2197
  %arrayidx840 = getelementptr inbounds i8, ptr %p_dst, i64 135, !dbg !2197
  %121 = load i8, ptr %arrayidx840, align 1, !dbg !2197, !tbaa !240
  %conv841 = zext i8 %121 to i16, !dbg !2197
  %sub842 = sub nsw i16 %conv838, %conv841, !dbg !2197
  %arrayidx844 = getelementptr inbounds i16, ptr %level, i64 60, !dbg !2197
  store i16 %sub842, ptr %arrayidx844, align 2, !dbg !2197, !tbaa !246
  %or8471298 = or i16 %or8331297, %sub842, !dbg !2197
  call void @llvm.dbg.value(metadata i16 %or8471298, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 87, metadata !2066, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i32 167, metadata !2068, metadata !DIExpression()), !dbg !2198
  %arrayidx851 = getelementptr inbounds i8, ptr %p_src, i64 87, !dbg !2199
  %122 = load i8, ptr %arrayidx851, align 1, !dbg !2199, !tbaa !240
  %conv852 = zext i8 %122 to i16, !dbg !2199
  %arrayidx854 = getelementptr inbounds i8, ptr %p_dst, i64 167, !dbg !2199
  %123 = load i8, ptr %arrayidx854, align 1, !dbg !2199, !tbaa !240
  %conv855 = zext i8 %123 to i16, !dbg !2199
  %sub856 = sub nsw i16 %conv852, %conv855, !dbg !2199
  %arrayidx858 = getelementptr inbounds i16, ptr %level, i64 61, !dbg !2199
  store i16 %sub856, ptr %arrayidx858, align 2, !dbg !2199, !tbaa !246
  %or8611299 = or i16 %or8471298, %sub856, !dbg !2199
  call void @llvm.dbg.value(metadata i16 %or8611299, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 103, metadata !2069, metadata !DIExpression()), !dbg !2200
  call void @llvm.dbg.value(metadata i32 199, metadata !2071, metadata !DIExpression()), !dbg !2200
  %arrayidx865 = getelementptr inbounds i8, ptr %p_src, i64 103, !dbg !2201
  %124 = load i8, ptr %arrayidx865, align 1, !dbg !2201, !tbaa !240
  %conv866 = zext i8 %124 to i16, !dbg !2201
  %arrayidx868 = getelementptr inbounds i8, ptr %p_dst, i64 199, !dbg !2201
  %125 = load i8, ptr %arrayidx868, align 1, !dbg !2201, !tbaa !240
  %conv869 = zext i8 %125 to i16, !dbg !2201
  %sub870 = sub nsw i16 %conv866, %conv869, !dbg !2201
  %arrayidx872 = getelementptr inbounds i16, ptr %level, i64 62, !dbg !2201
  store i16 %sub870, ptr %arrayidx872, align 2, !dbg !2201, !tbaa !246
  %or8751300 = or i16 %or8611299, %sub870, !dbg !2201
  call void @llvm.dbg.value(metadata i16 %or8751300, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  call void @llvm.dbg.value(metadata i32 119, metadata !2072, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 231, metadata !2074, metadata !DIExpression()), !dbg !2202
  %arrayidx879 = getelementptr inbounds i8, ptr %p_src, i64 119, !dbg !2203
  %126 = load i8, ptr %arrayidx879, align 1, !dbg !2203, !tbaa !240
  %conv880 = zext i8 %126 to i16, !dbg !2203
  %arrayidx882 = getelementptr inbounds i8, ptr %p_dst, i64 231, !dbg !2203
  %127 = load i8, ptr %arrayidx882, align 1, !dbg !2203, !tbaa !240
  %conv883 = zext i8 %127 to i16, !dbg !2203
  %sub884 = sub nsw i16 %conv880, %conv883, !dbg !2203
  %arrayidx886 = getelementptr inbounds i16, ptr %level, i64 63, !dbg !2203
  store i16 %sub884, ptr %arrayidx886, align 2, !dbg !2203, !tbaa !246
  %or8891301 = or i16 %or8751300, %sub884, !dbg !2203
  call void @llvm.dbg.value(metadata i16 %or8891301, metadata !1882, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2075
  %128 = load i64, ptr %p_src, align 8, !dbg !2204, !tbaa !240
  store i64 %128, ptr %p_dst, align 8, !dbg !2204, !tbaa !240
  %129 = load i64, ptr %arrayidx11, align 8, !dbg !2204, !tbaa !240
  store i64 %129, ptr %arrayidx14, align 8, !dbg !2204, !tbaa !240
  %130 = load i64, ptr %arrayidx25, align 8, !dbg !2204, !tbaa !240
  store i64 %130, ptr %arrayidx28, align 8, !dbg !2204, !tbaa !240
  %131 = load i64, ptr %arrayidx67, align 8, !dbg !2204, !tbaa !240
  store i64 %131, ptr %arrayidx70, align 8, !dbg !2204, !tbaa !240
  %132 = load i64, ptr %arrayidx81, align 8, !dbg !2204, !tbaa !240
  store i64 %132, ptr %arrayidx84, align 8, !dbg !2204, !tbaa !240
  %133 = load i64, ptr %arrayidx137, align 8, !dbg !2204, !tbaa !240
  store i64 %133, ptr %arrayidx140, align 8, !dbg !2204, !tbaa !240
  %134 = load i64, ptr %arrayidx151, align 8, !dbg !2204, !tbaa !240
  store i64 %134, ptr %arrayidx154, align 8, !dbg !2204, !tbaa !240
  %135 = load i64, ptr %arrayidx165, align 8, !dbg !2204, !tbaa !240
  store i64 %135, ptr %arrayidx168, align 8, !dbg !2204, !tbaa !240
  %tobool = icmp ne i16 %or8891301, 0, !dbg !2205
  %lnot.ext = zext i1 %tobool to i32, !dbg !2206
  ret i32 %lnot.ext, !dbg !2207
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @zigzag_sub_4x4_field(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %p_src, ptr nocapture noundef %p_dst) #8 !dbg !2208 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !2210, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr %p_src, metadata !2211, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !2212, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 0, metadata !2213, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 0, metadata !2214, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i32 0, metadata !2216, metadata !DIExpression()), !dbg !2263
  %0 = load i8, ptr %p_src, align 1, !dbg !2264, !tbaa !240
  %conv = zext i8 %0 to i16, !dbg !2264
  %1 = load i8, ptr %p_dst, align 1, !dbg !2264, !tbaa !240
  %conv3 = zext i8 %1 to i16, !dbg !2264
  %sub = sub nsw i16 %conv, %conv3, !dbg !2264
  store i16 %sub, ptr %level, align 2, !dbg !2264, !tbaa !246
  call void @llvm.dbg.value(metadata i16 %sub, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 16, metadata !2217, metadata !DIExpression()), !dbg !2265
  call void @llvm.dbg.value(metadata i32 32, metadata !2219, metadata !DIExpression()), !dbg !2265
  %arrayidx11 = getelementptr inbounds i8, ptr %p_src, i64 16, !dbg !2266
  %2 = load i8, ptr %arrayidx11, align 1, !dbg !2266, !tbaa !240
  %conv12 = zext i8 %2 to i16, !dbg !2266
  %arrayidx14 = getelementptr inbounds i8, ptr %p_dst, i64 32, !dbg !2266
  %3 = load i8, ptr %arrayidx14, align 1, !dbg !2266, !tbaa !240
  %conv15 = zext i8 %3 to i16, !dbg !2266
  %sub16 = sub nsw i16 %conv12, %conv15, !dbg !2266
  %arrayidx18 = getelementptr inbounds i16, ptr %level, i64 1, !dbg !2266
  store i16 %sub16, ptr %arrayidx18, align 2, !dbg !2266, !tbaa !246
  %or21311 = or i16 %sub16, %sub, !dbg !2266
  call void @llvm.dbg.value(metadata i16 %or21311, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 1, metadata !2220, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 1, metadata !2222, metadata !DIExpression()), !dbg !2267
  %arrayidx25 = getelementptr inbounds i8, ptr %p_src, i64 1, !dbg !2268
  %4 = load i8, ptr %arrayidx25, align 1, !dbg !2268, !tbaa !240
  %conv26 = zext i8 %4 to i16, !dbg !2268
  %arrayidx28 = getelementptr inbounds i8, ptr %p_dst, i64 1, !dbg !2268
  %5 = load i8, ptr %arrayidx28, align 1, !dbg !2268, !tbaa !240
  %conv29 = zext i8 %5 to i16, !dbg !2268
  %sub30 = sub nsw i16 %conv26, %conv29, !dbg !2268
  %arrayidx32 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !2268
  store i16 %sub30, ptr %arrayidx32, align 2, !dbg !2268, !tbaa !246
  %or35312 = or i16 %or21311, %sub30, !dbg !2268
  call void @llvm.dbg.value(metadata i16 %or35312, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 32, metadata !2223, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i32 64, metadata !2225, metadata !DIExpression()), !dbg !2269
  %arrayidx39 = getelementptr inbounds i8, ptr %p_src, i64 32, !dbg !2270
  %6 = load i8, ptr %arrayidx39, align 1, !dbg !2270, !tbaa !240
  %conv40 = zext i8 %6 to i16, !dbg !2270
  %arrayidx42 = getelementptr inbounds i8, ptr %p_dst, i64 64, !dbg !2270
  %7 = load i8, ptr %arrayidx42, align 1, !dbg !2270, !tbaa !240
  %conv43 = zext i8 %7 to i16, !dbg !2270
  %sub44 = sub nsw i16 %conv40, %conv43, !dbg !2270
  %arrayidx46 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !2270
  store i16 %sub44, ptr %arrayidx46, align 2, !dbg !2270, !tbaa !246
  %or49313 = or i16 %or35312, %sub44, !dbg !2270
  call void @llvm.dbg.value(metadata i16 %or49313, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 48, metadata !2226, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 96, metadata !2228, metadata !DIExpression()), !dbg !2271
  %arrayidx53 = getelementptr inbounds i8, ptr %p_src, i64 48, !dbg !2272
  %8 = load i8, ptr %arrayidx53, align 1, !dbg !2272, !tbaa !240
  %conv54 = zext i8 %8 to i16, !dbg !2272
  %arrayidx56 = getelementptr inbounds i8, ptr %p_dst, i64 96, !dbg !2272
  %9 = load i8, ptr %arrayidx56, align 1, !dbg !2272, !tbaa !240
  %conv57 = zext i8 %9 to i16, !dbg !2272
  %sub58 = sub nsw i16 %conv54, %conv57, !dbg !2272
  %arrayidx60 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !2272
  store i16 %sub58, ptr %arrayidx60, align 2, !dbg !2272, !tbaa !246
  %or63314 = or i16 %or49313, %sub58, !dbg !2272
  call void @llvm.dbg.value(metadata i16 %or63314, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 17, metadata !2229, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i32 33, metadata !2231, metadata !DIExpression()), !dbg !2273
  %arrayidx67 = getelementptr inbounds i8, ptr %p_src, i64 17, !dbg !2274
  %10 = load i8, ptr %arrayidx67, align 1, !dbg !2274, !tbaa !240
  %conv68 = zext i8 %10 to i16, !dbg !2274
  %arrayidx70 = getelementptr inbounds i8, ptr %p_dst, i64 33, !dbg !2274
  %11 = load i8, ptr %arrayidx70, align 1, !dbg !2274, !tbaa !240
  %conv71 = zext i8 %11 to i16, !dbg !2274
  %sub72 = sub nsw i16 %conv68, %conv71, !dbg !2274
  %arrayidx74 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !2274
  store i16 %sub72, ptr %arrayidx74, align 2, !dbg !2274, !tbaa !246
  %or77315 = or i16 %or63314, %sub72, !dbg !2274
  call void @llvm.dbg.value(metadata i16 %or77315, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 33, metadata !2232, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i32 65, metadata !2234, metadata !DIExpression()), !dbg !2275
  %arrayidx81 = getelementptr inbounds i8, ptr %p_src, i64 33, !dbg !2276
  %12 = load i8, ptr %arrayidx81, align 1, !dbg !2276, !tbaa !240
  %conv82 = zext i8 %12 to i16, !dbg !2276
  %arrayidx84 = getelementptr inbounds i8, ptr %p_dst, i64 65, !dbg !2276
  %13 = load i8, ptr %arrayidx84, align 1, !dbg !2276, !tbaa !240
  %conv85 = zext i8 %13 to i16, !dbg !2276
  %sub86 = sub nsw i16 %conv82, %conv85, !dbg !2276
  %arrayidx88 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !2276
  store i16 %sub86, ptr %arrayidx88, align 2, !dbg !2276, !tbaa !246
  %or91316 = or i16 %or77315, %sub86, !dbg !2276
  call void @llvm.dbg.value(metadata i16 %or91316, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 49, metadata !2235, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i32 97, metadata !2237, metadata !DIExpression()), !dbg !2277
  %arrayidx95 = getelementptr inbounds i8, ptr %p_src, i64 49, !dbg !2278
  %14 = load i8, ptr %arrayidx95, align 1, !dbg !2278, !tbaa !240
  %conv96 = zext i8 %14 to i16, !dbg !2278
  %arrayidx98 = getelementptr inbounds i8, ptr %p_dst, i64 97, !dbg !2278
  %15 = load i8, ptr %arrayidx98, align 1, !dbg !2278, !tbaa !240
  %conv99 = zext i8 %15 to i16, !dbg !2278
  %sub100 = sub nsw i16 %conv96, %conv99, !dbg !2278
  %arrayidx102 = getelementptr inbounds i16, ptr %level, i64 7, !dbg !2278
  store i16 %sub100, ptr %arrayidx102, align 2, !dbg !2278, !tbaa !246
  %or105317 = or i16 %or91316, %sub100, !dbg !2278
  call void @llvm.dbg.value(metadata i16 %or105317, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 2, metadata !2238, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 2, metadata !2240, metadata !DIExpression()), !dbg !2279
  %arrayidx109 = getelementptr inbounds i8, ptr %p_src, i64 2, !dbg !2280
  %16 = load i8, ptr %arrayidx109, align 1, !dbg !2280, !tbaa !240
  %conv110 = zext i8 %16 to i16, !dbg !2280
  %arrayidx112 = getelementptr inbounds i8, ptr %p_dst, i64 2, !dbg !2280
  %17 = load i8, ptr %arrayidx112, align 1, !dbg !2280, !tbaa !240
  %conv113 = zext i8 %17 to i16, !dbg !2280
  %sub114 = sub nsw i16 %conv110, %conv113, !dbg !2280
  %arrayidx116 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !2280
  store i16 %sub114, ptr %arrayidx116, align 2, !dbg !2280, !tbaa !246
  %or119318 = or i16 %or105317, %sub114, !dbg !2280
  call void @llvm.dbg.value(metadata i16 %or119318, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 18, metadata !2241, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i32 34, metadata !2243, metadata !DIExpression()), !dbg !2281
  %arrayidx123 = getelementptr inbounds i8, ptr %p_src, i64 18, !dbg !2282
  %18 = load i8, ptr %arrayidx123, align 1, !dbg !2282, !tbaa !240
  %conv124 = zext i8 %18 to i16, !dbg !2282
  %arrayidx126 = getelementptr inbounds i8, ptr %p_dst, i64 34, !dbg !2282
  %19 = load i8, ptr %arrayidx126, align 1, !dbg !2282, !tbaa !240
  %conv127 = zext i8 %19 to i16, !dbg !2282
  %sub128 = sub nsw i16 %conv124, %conv127, !dbg !2282
  %arrayidx130 = getelementptr inbounds i16, ptr %level, i64 9, !dbg !2282
  store i16 %sub128, ptr %arrayidx130, align 2, !dbg !2282, !tbaa !246
  %or133319 = or i16 %or119318, %sub128, !dbg !2282
  call void @llvm.dbg.value(metadata i16 %or133319, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 34, metadata !2244, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i32 66, metadata !2246, metadata !DIExpression()), !dbg !2283
  %arrayidx137 = getelementptr inbounds i8, ptr %p_src, i64 34, !dbg !2284
  %20 = load i8, ptr %arrayidx137, align 1, !dbg !2284, !tbaa !240
  %conv138 = zext i8 %20 to i16, !dbg !2284
  %arrayidx140 = getelementptr inbounds i8, ptr %p_dst, i64 66, !dbg !2284
  %21 = load i8, ptr %arrayidx140, align 1, !dbg !2284, !tbaa !240
  %conv141 = zext i8 %21 to i16, !dbg !2284
  %sub142 = sub nsw i16 %conv138, %conv141, !dbg !2284
  %arrayidx144 = getelementptr inbounds i16, ptr %level, i64 10, !dbg !2284
  store i16 %sub142, ptr %arrayidx144, align 2, !dbg !2284, !tbaa !246
  %or147320 = or i16 %or133319, %sub142, !dbg !2284
  call void @llvm.dbg.value(metadata i16 %or147320, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 50, metadata !2247, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 98, metadata !2249, metadata !DIExpression()), !dbg !2285
  %arrayidx151 = getelementptr inbounds i8, ptr %p_src, i64 50, !dbg !2286
  %22 = load i8, ptr %arrayidx151, align 1, !dbg !2286, !tbaa !240
  %conv152 = zext i8 %22 to i16, !dbg !2286
  %arrayidx154 = getelementptr inbounds i8, ptr %p_dst, i64 98, !dbg !2286
  %23 = load i8, ptr %arrayidx154, align 1, !dbg !2286, !tbaa !240
  %conv155 = zext i8 %23 to i16, !dbg !2286
  %sub156 = sub nsw i16 %conv152, %conv155, !dbg !2286
  %arrayidx158 = getelementptr inbounds i16, ptr %level, i64 11, !dbg !2286
  store i16 %sub156, ptr %arrayidx158, align 2, !dbg !2286, !tbaa !246
  %or161321 = or i16 %or147320, %sub156, !dbg !2286
  call void @llvm.dbg.value(metadata i16 %or161321, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 3, metadata !2250, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i32 3, metadata !2252, metadata !DIExpression()), !dbg !2287
  %arrayidx165 = getelementptr inbounds i8, ptr %p_src, i64 3, !dbg !2288
  %24 = load i8, ptr %arrayidx165, align 1, !dbg !2288, !tbaa !240
  %conv166 = zext i8 %24 to i16, !dbg !2288
  %arrayidx168 = getelementptr inbounds i8, ptr %p_dst, i64 3, !dbg !2288
  %25 = load i8, ptr %arrayidx168, align 1, !dbg !2288, !tbaa !240
  %conv169 = zext i8 %25 to i16, !dbg !2288
  %sub170 = sub nsw i16 %conv166, %conv169, !dbg !2288
  %arrayidx172 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !2288
  store i16 %sub170, ptr %arrayidx172, align 2, !dbg !2288, !tbaa !246
  %or175322 = or i16 %or161321, %sub170, !dbg !2288
  call void @llvm.dbg.value(metadata i16 %or175322, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 19, metadata !2253, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 35, metadata !2255, metadata !DIExpression()), !dbg !2289
  %arrayidx179 = getelementptr inbounds i8, ptr %p_src, i64 19, !dbg !2290
  %26 = load i8, ptr %arrayidx179, align 1, !dbg !2290, !tbaa !240
  %conv180 = zext i8 %26 to i16, !dbg !2290
  %arrayidx182 = getelementptr inbounds i8, ptr %p_dst, i64 35, !dbg !2290
  %27 = load i8, ptr %arrayidx182, align 1, !dbg !2290, !tbaa !240
  %conv183 = zext i8 %27 to i16, !dbg !2290
  %sub184 = sub nsw i16 %conv180, %conv183, !dbg !2290
  %arrayidx186 = getelementptr inbounds i16, ptr %level, i64 13, !dbg !2290
  store i16 %sub184, ptr %arrayidx186, align 2, !dbg !2290, !tbaa !246
  %or189323 = or i16 %or175322, %sub184, !dbg !2290
  call void @llvm.dbg.value(metadata i16 %or189323, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 35, metadata !2256, metadata !DIExpression()), !dbg !2291
  call void @llvm.dbg.value(metadata i32 67, metadata !2258, metadata !DIExpression()), !dbg !2291
  %arrayidx193 = getelementptr inbounds i8, ptr %p_src, i64 35, !dbg !2292
  %28 = load i8, ptr %arrayidx193, align 1, !dbg !2292, !tbaa !240
  %conv194 = zext i8 %28 to i16, !dbg !2292
  %arrayidx196 = getelementptr inbounds i8, ptr %p_dst, i64 67, !dbg !2292
  %29 = load i8, ptr %arrayidx196, align 1, !dbg !2292, !tbaa !240
  %conv197 = zext i8 %29 to i16, !dbg !2292
  %sub198 = sub nsw i16 %conv194, %conv197, !dbg !2292
  %arrayidx200 = getelementptr inbounds i16, ptr %level, i64 14, !dbg !2292
  store i16 %sub198, ptr %arrayidx200, align 2, !dbg !2292, !tbaa !246
  %or203324 = or i16 %or189323, %sub198, !dbg !2292
  call void @llvm.dbg.value(metadata i16 %or203324, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  call void @llvm.dbg.value(metadata i32 51, metadata !2259, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 99, metadata !2261, metadata !DIExpression()), !dbg !2293
  %arrayidx207 = getelementptr inbounds i8, ptr %p_src, i64 51, !dbg !2294
  %30 = load i8, ptr %arrayidx207, align 1, !dbg !2294, !tbaa !240
  %conv208 = zext i8 %30 to i16, !dbg !2294
  %arrayidx210 = getelementptr inbounds i8, ptr %p_dst, i64 99, !dbg !2294
  %31 = load i8, ptr %arrayidx210, align 1, !dbg !2294, !tbaa !240
  %conv211 = zext i8 %31 to i16, !dbg !2294
  %sub212 = sub nsw i16 %conv208, %conv211, !dbg !2294
  %arrayidx214 = getelementptr inbounds i16, ptr %level, i64 15, !dbg !2294
  store i16 %sub212, ptr %arrayidx214, align 2, !dbg !2294, !tbaa !246
  %or217325 = or i16 %or203324, %sub212, !dbg !2294
  call void @llvm.dbg.value(metadata i16 %or217325, metadata !2213, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2262
  %32 = load i32, ptr %p_src, align 4, !dbg !2295, !tbaa !240
  store i32 %32, ptr %p_dst, align 4, !dbg !2295, !tbaa !240
  %33 = load i32, ptr %arrayidx11, align 4, !dbg !2295, !tbaa !240
  store i32 %33, ptr %arrayidx14, align 4, !dbg !2295, !tbaa !240
  %34 = load i32, ptr %arrayidx39, align 4, !dbg !2295, !tbaa !240
  store i32 %34, ptr %arrayidx42, align 4, !dbg !2295, !tbaa !240
  %35 = load i32, ptr %arrayidx53, align 4, !dbg !2295, !tbaa !240
  store i32 %35, ptr %arrayidx56, align 4, !dbg !2295, !tbaa !240
  %tobool = icmp ne i16 %or217325, 0, !dbg !2296
  %lnot.ext = zext i1 %tobool to i32, !dbg !2297
  ret i32 %lnot.ext, !dbg !2298
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @zigzag_sub_4x4ac_field(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %p_src, ptr nocapture noundef %p_dst, ptr nocapture noundef writeonly %dc) #8 !dbg !2299 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !2301, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata ptr %p_src, metadata !2302, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !2303, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata ptr %dc, metadata !2304, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 0, metadata !2305, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i32 0, metadata !2306, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i32 0, metadata !2308, metadata !DIExpression()), !dbg !2355
  %0 = load i8, ptr %p_src, align 1, !dbg !2356, !tbaa !240
  %conv = zext i8 %0 to i16, !dbg !2356
  %1 = load i8, ptr %p_dst, align 1, !dbg !2356, !tbaa !240
  %conv3 = zext i8 %1 to i16, !dbg !2356
  %sub = sub nsw i16 %conv, %conv3, !dbg !2356
  store i16 %sub, ptr %dc, align 2, !dbg !2356, !tbaa !246
  store i16 0, ptr %level, align 2, !dbg !2356, !tbaa !246
  call void @llvm.dbg.value(metadata i32 16, metadata !2309, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i32 32, metadata !2311, metadata !DIExpression()), !dbg !2357
  %arrayidx9 = getelementptr inbounds i8, ptr %p_src, i64 16, !dbg !2358
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !2358, !tbaa !240
  %conv10 = zext i8 %2 to i16, !dbg !2358
  %arrayidx12 = getelementptr inbounds i8, ptr %p_dst, i64 32, !dbg !2358
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !2358, !tbaa !240
  %conv13 = zext i8 %3 to i16, !dbg !2358
  %sub14 = sub nsw i16 %conv10, %conv13, !dbg !2358
  %arrayidx16 = getelementptr inbounds i16, ptr %level, i64 1, !dbg !2358
  store i16 %sub14, ptr %arrayidx16, align 2, !dbg !2358, !tbaa !246
  call void @llvm.dbg.value(metadata i16 %sub14, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 1, metadata !2312, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.value(metadata i32 1, metadata !2314, metadata !DIExpression()), !dbg !2359
  %arrayidx22 = getelementptr inbounds i8, ptr %p_src, i64 1, !dbg !2360
  %4 = load i8, ptr %arrayidx22, align 1, !dbg !2360, !tbaa !240
  %conv23 = zext i8 %4 to i16, !dbg !2360
  %arrayidx25 = getelementptr inbounds i8, ptr %p_dst, i64 1, !dbg !2360
  %5 = load i8, ptr %arrayidx25, align 1, !dbg !2360, !tbaa !240
  %conv26 = zext i8 %5 to i16, !dbg !2360
  %sub27 = sub nsw i16 %conv23, %conv26, !dbg !2360
  %arrayidx29 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !2360
  store i16 %sub27, ptr %arrayidx29, align 2, !dbg !2360, !tbaa !246
  %or32306 = or i16 %sub27, %sub14, !dbg !2360
  call void @llvm.dbg.value(metadata i16 %or32306, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 32, metadata !2315, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 64, metadata !2317, metadata !DIExpression()), !dbg !2361
  %arrayidx36 = getelementptr inbounds i8, ptr %p_src, i64 32, !dbg !2362
  %6 = load i8, ptr %arrayidx36, align 1, !dbg !2362, !tbaa !240
  %conv37 = zext i8 %6 to i16, !dbg !2362
  %arrayidx39 = getelementptr inbounds i8, ptr %p_dst, i64 64, !dbg !2362
  %7 = load i8, ptr %arrayidx39, align 1, !dbg !2362, !tbaa !240
  %conv40 = zext i8 %7 to i16, !dbg !2362
  %sub41 = sub nsw i16 %conv37, %conv40, !dbg !2362
  %arrayidx43 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !2362
  store i16 %sub41, ptr %arrayidx43, align 2, !dbg !2362, !tbaa !246
  %or46307 = or i16 %or32306, %sub41, !dbg !2362
  call void @llvm.dbg.value(metadata i16 %or46307, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 48, metadata !2318, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 96, metadata !2320, metadata !DIExpression()), !dbg !2363
  %arrayidx50 = getelementptr inbounds i8, ptr %p_src, i64 48, !dbg !2364
  %8 = load i8, ptr %arrayidx50, align 1, !dbg !2364, !tbaa !240
  %conv51 = zext i8 %8 to i16, !dbg !2364
  %arrayidx53 = getelementptr inbounds i8, ptr %p_dst, i64 96, !dbg !2364
  %9 = load i8, ptr %arrayidx53, align 1, !dbg !2364, !tbaa !240
  %conv54 = zext i8 %9 to i16, !dbg !2364
  %sub55 = sub nsw i16 %conv51, %conv54, !dbg !2364
  %arrayidx57 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !2364
  store i16 %sub55, ptr %arrayidx57, align 2, !dbg !2364, !tbaa !246
  %or60308 = or i16 %or46307, %sub55, !dbg !2364
  call void @llvm.dbg.value(metadata i16 %or60308, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 17, metadata !2321, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 33, metadata !2323, metadata !DIExpression()), !dbg !2365
  %arrayidx64 = getelementptr inbounds i8, ptr %p_src, i64 17, !dbg !2366
  %10 = load i8, ptr %arrayidx64, align 1, !dbg !2366, !tbaa !240
  %conv65 = zext i8 %10 to i16, !dbg !2366
  %arrayidx67 = getelementptr inbounds i8, ptr %p_dst, i64 33, !dbg !2366
  %11 = load i8, ptr %arrayidx67, align 1, !dbg !2366, !tbaa !240
  %conv68 = zext i8 %11 to i16, !dbg !2366
  %sub69 = sub nsw i16 %conv65, %conv68, !dbg !2366
  %arrayidx71 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !2366
  store i16 %sub69, ptr %arrayidx71, align 2, !dbg !2366, !tbaa !246
  %or74309 = or i16 %or60308, %sub69, !dbg !2366
  call void @llvm.dbg.value(metadata i16 %or74309, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 33, metadata !2324, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i32 65, metadata !2326, metadata !DIExpression()), !dbg !2367
  %arrayidx78 = getelementptr inbounds i8, ptr %p_src, i64 33, !dbg !2368
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2368, !tbaa !240
  %conv79 = zext i8 %12 to i16, !dbg !2368
  %arrayidx81 = getelementptr inbounds i8, ptr %p_dst, i64 65, !dbg !2368
  %13 = load i8, ptr %arrayidx81, align 1, !dbg !2368, !tbaa !240
  %conv82 = zext i8 %13 to i16, !dbg !2368
  %sub83 = sub nsw i16 %conv79, %conv82, !dbg !2368
  %arrayidx85 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !2368
  store i16 %sub83, ptr %arrayidx85, align 2, !dbg !2368, !tbaa !246
  %or88310 = or i16 %or74309, %sub83, !dbg !2368
  call void @llvm.dbg.value(metadata i16 %or88310, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 49, metadata !2327, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata i32 97, metadata !2329, metadata !DIExpression()), !dbg !2369
  %arrayidx92 = getelementptr inbounds i8, ptr %p_src, i64 49, !dbg !2370
  %14 = load i8, ptr %arrayidx92, align 1, !dbg !2370, !tbaa !240
  %conv93 = zext i8 %14 to i16, !dbg !2370
  %arrayidx95 = getelementptr inbounds i8, ptr %p_dst, i64 97, !dbg !2370
  %15 = load i8, ptr %arrayidx95, align 1, !dbg !2370, !tbaa !240
  %conv96 = zext i8 %15 to i16, !dbg !2370
  %sub97 = sub nsw i16 %conv93, %conv96, !dbg !2370
  %arrayidx99 = getelementptr inbounds i16, ptr %level, i64 7, !dbg !2370
  store i16 %sub97, ptr %arrayidx99, align 2, !dbg !2370, !tbaa !246
  %or102311 = or i16 %or88310, %sub97, !dbg !2370
  call void @llvm.dbg.value(metadata i16 %or102311, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 2, metadata !2330, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 2, metadata !2332, metadata !DIExpression()), !dbg !2371
  %arrayidx106 = getelementptr inbounds i8, ptr %p_src, i64 2, !dbg !2372
  %16 = load i8, ptr %arrayidx106, align 1, !dbg !2372, !tbaa !240
  %conv107 = zext i8 %16 to i16, !dbg !2372
  %arrayidx109 = getelementptr inbounds i8, ptr %p_dst, i64 2, !dbg !2372
  %17 = load i8, ptr %arrayidx109, align 1, !dbg !2372, !tbaa !240
  %conv110 = zext i8 %17 to i16, !dbg !2372
  %sub111 = sub nsw i16 %conv107, %conv110, !dbg !2372
  %arrayidx113 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !2372
  store i16 %sub111, ptr %arrayidx113, align 2, !dbg !2372, !tbaa !246
  %or116312 = or i16 %or102311, %sub111, !dbg !2372
  call void @llvm.dbg.value(metadata i16 %or116312, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 18, metadata !2333, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 34, metadata !2335, metadata !DIExpression()), !dbg !2373
  %arrayidx120 = getelementptr inbounds i8, ptr %p_src, i64 18, !dbg !2374
  %18 = load i8, ptr %arrayidx120, align 1, !dbg !2374, !tbaa !240
  %conv121 = zext i8 %18 to i16, !dbg !2374
  %arrayidx123 = getelementptr inbounds i8, ptr %p_dst, i64 34, !dbg !2374
  %19 = load i8, ptr %arrayidx123, align 1, !dbg !2374, !tbaa !240
  %conv124 = zext i8 %19 to i16, !dbg !2374
  %sub125 = sub nsw i16 %conv121, %conv124, !dbg !2374
  %arrayidx127 = getelementptr inbounds i16, ptr %level, i64 9, !dbg !2374
  store i16 %sub125, ptr %arrayidx127, align 2, !dbg !2374, !tbaa !246
  %or130313 = or i16 %or116312, %sub125, !dbg !2374
  call void @llvm.dbg.value(metadata i16 %or130313, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 34, metadata !2336, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 66, metadata !2338, metadata !DIExpression()), !dbg !2375
  %arrayidx134 = getelementptr inbounds i8, ptr %p_src, i64 34, !dbg !2376
  %20 = load i8, ptr %arrayidx134, align 1, !dbg !2376, !tbaa !240
  %conv135 = zext i8 %20 to i16, !dbg !2376
  %arrayidx137 = getelementptr inbounds i8, ptr %p_dst, i64 66, !dbg !2376
  %21 = load i8, ptr %arrayidx137, align 1, !dbg !2376, !tbaa !240
  %conv138 = zext i8 %21 to i16, !dbg !2376
  %sub139 = sub nsw i16 %conv135, %conv138, !dbg !2376
  %arrayidx141 = getelementptr inbounds i16, ptr %level, i64 10, !dbg !2376
  store i16 %sub139, ptr %arrayidx141, align 2, !dbg !2376, !tbaa !246
  %or144314 = or i16 %or130313, %sub139, !dbg !2376
  call void @llvm.dbg.value(metadata i16 %or144314, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 50, metadata !2339, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32 98, metadata !2341, metadata !DIExpression()), !dbg !2377
  %arrayidx148 = getelementptr inbounds i8, ptr %p_src, i64 50, !dbg !2378
  %22 = load i8, ptr %arrayidx148, align 1, !dbg !2378, !tbaa !240
  %conv149 = zext i8 %22 to i16, !dbg !2378
  %arrayidx151 = getelementptr inbounds i8, ptr %p_dst, i64 98, !dbg !2378
  %23 = load i8, ptr %arrayidx151, align 1, !dbg !2378, !tbaa !240
  %conv152 = zext i8 %23 to i16, !dbg !2378
  %sub153 = sub nsw i16 %conv149, %conv152, !dbg !2378
  %arrayidx155 = getelementptr inbounds i16, ptr %level, i64 11, !dbg !2378
  store i16 %sub153, ptr %arrayidx155, align 2, !dbg !2378, !tbaa !246
  %or158315 = or i16 %or144314, %sub153, !dbg !2378
  call void @llvm.dbg.value(metadata i16 %or158315, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 3, metadata !2342, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32 3, metadata !2344, metadata !DIExpression()), !dbg !2379
  %arrayidx162 = getelementptr inbounds i8, ptr %p_src, i64 3, !dbg !2380
  %24 = load i8, ptr %arrayidx162, align 1, !dbg !2380, !tbaa !240
  %conv163 = zext i8 %24 to i16, !dbg !2380
  %arrayidx165 = getelementptr inbounds i8, ptr %p_dst, i64 3, !dbg !2380
  %25 = load i8, ptr %arrayidx165, align 1, !dbg !2380, !tbaa !240
  %conv166 = zext i8 %25 to i16, !dbg !2380
  %sub167 = sub nsw i16 %conv163, %conv166, !dbg !2380
  %arrayidx169 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !2380
  store i16 %sub167, ptr %arrayidx169, align 2, !dbg !2380, !tbaa !246
  %or172316 = or i16 %or158315, %sub167, !dbg !2380
  call void @llvm.dbg.value(metadata i16 %or172316, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 19, metadata !2345, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 35, metadata !2347, metadata !DIExpression()), !dbg !2381
  %arrayidx176 = getelementptr inbounds i8, ptr %p_src, i64 19, !dbg !2382
  %26 = load i8, ptr %arrayidx176, align 1, !dbg !2382, !tbaa !240
  %conv177 = zext i8 %26 to i16, !dbg !2382
  %arrayidx179 = getelementptr inbounds i8, ptr %p_dst, i64 35, !dbg !2382
  %27 = load i8, ptr %arrayidx179, align 1, !dbg !2382, !tbaa !240
  %conv180 = zext i8 %27 to i16, !dbg !2382
  %sub181 = sub nsw i16 %conv177, %conv180, !dbg !2382
  %arrayidx183 = getelementptr inbounds i16, ptr %level, i64 13, !dbg !2382
  store i16 %sub181, ptr %arrayidx183, align 2, !dbg !2382, !tbaa !246
  %or186317 = or i16 %or172316, %sub181, !dbg !2382
  call void @llvm.dbg.value(metadata i16 %or186317, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 35, metadata !2348, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.value(metadata i32 67, metadata !2350, metadata !DIExpression()), !dbg !2383
  %arrayidx190 = getelementptr inbounds i8, ptr %p_src, i64 35, !dbg !2384
  %28 = load i8, ptr %arrayidx190, align 1, !dbg !2384, !tbaa !240
  %conv191 = zext i8 %28 to i16, !dbg !2384
  %arrayidx193 = getelementptr inbounds i8, ptr %p_dst, i64 67, !dbg !2384
  %29 = load i8, ptr %arrayidx193, align 1, !dbg !2384, !tbaa !240
  %conv194 = zext i8 %29 to i16, !dbg !2384
  %sub195 = sub nsw i16 %conv191, %conv194, !dbg !2384
  %arrayidx197 = getelementptr inbounds i16, ptr %level, i64 14, !dbg !2384
  store i16 %sub195, ptr %arrayidx197, align 2, !dbg !2384, !tbaa !246
  %or200318 = or i16 %or186317, %sub195, !dbg !2384
  call void @llvm.dbg.value(metadata i16 %or200318, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  call void @llvm.dbg.value(metadata i32 51, metadata !2351, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.value(metadata i32 99, metadata !2353, metadata !DIExpression()), !dbg !2385
  %arrayidx204 = getelementptr inbounds i8, ptr %p_src, i64 51, !dbg !2386
  %30 = load i8, ptr %arrayidx204, align 1, !dbg !2386, !tbaa !240
  %conv205 = zext i8 %30 to i16, !dbg !2386
  %arrayidx207 = getelementptr inbounds i8, ptr %p_dst, i64 99, !dbg !2386
  %31 = load i8, ptr %arrayidx207, align 1, !dbg !2386, !tbaa !240
  %conv208 = zext i8 %31 to i16, !dbg !2386
  %sub209 = sub nsw i16 %conv205, %conv208, !dbg !2386
  %arrayidx211 = getelementptr inbounds i16, ptr %level, i64 15, !dbg !2386
  store i16 %sub209, ptr %arrayidx211, align 2, !dbg !2386, !tbaa !246
  %or214319 = or i16 %or200318, %sub209, !dbg !2386
  call void @llvm.dbg.value(metadata i16 %or214319, metadata !2305, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2354
  %32 = load i32, ptr %p_src, align 4, !dbg !2387, !tbaa !240
  store i32 %32, ptr %p_dst, align 4, !dbg !2387, !tbaa !240
  %33 = load i32, ptr %arrayidx9, align 4, !dbg !2387, !tbaa !240
  store i32 %33, ptr %arrayidx12, align 4, !dbg !2387, !tbaa !240
  %34 = load i32, ptr %arrayidx36, align 4, !dbg !2387, !tbaa !240
  store i32 %34, ptr %arrayidx39, align 4, !dbg !2387, !tbaa !240
  %35 = load i32, ptr %arrayidx50, align 4, !dbg !2387, !tbaa !240
  store i32 %35, ptr %arrayidx53, align 4, !dbg !2387, !tbaa !240
  %tobool = icmp ne i16 %or214319, 0, !dbg !2388
  %lnot.ext = zext i1 %tobool to i32, !dbg !2389
  ret i32 %lnot.ext, !dbg !2390
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal void @zigzag_scan_8x8_frame(ptr noundef writeonly %level, ptr noundef readonly %dct) #8 !dbg !2391 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata ptr %dct, metadata !2394, metadata !DIExpression()), !dbg !2395
  %0 = load i16, ptr %dct, align 2, !dbg !2396, !tbaa !246
  store i16 %0, ptr %level, align 2, !dbg !2396, !tbaa !246
  %arrayidx2 = getelementptr inbounds i16, ptr %dct, i64 8, !dbg !2396
  %1 = load i16, ptr %arrayidx2, align 2, !dbg !2396, !tbaa !246
  %arrayidx3 = getelementptr inbounds i16, ptr %level, i64 1, !dbg !2396
  store i16 %1, ptr %arrayidx3, align 2, !dbg !2396, !tbaa !246
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 1, !dbg !2396
  %2 = load i16, ptr %arrayidx4, align 2, !dbg !2396, !tbaa !246
  %arrayidx5 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !2396
  store i16 %2, ptr %arrayidx5, align 2, !dbg !2396, !tbaa !246
  %arrayidx6 = getelementptr inbounds i16, ptr %dct, i64 2, !dbg !2396
  %3 = load i16, ptr %arrayidx6, align 2, !dbg !2396, !tbaa !246
  %arrayidx7 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !2396
  store i16 %3, ptr %arrayidx7, align 2, !dbg !2396, !tbaa !246
  %arrayidx8 = getelementptr inbounds i16, ptr %dct, i64 9, !dbg !2396
  %4 = load i16, ptr %arrayidx8, align 2, !dbg !2396, !tbaa !246
  %arrayidx9 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !2396
  store i16 %4, ptr %arrayidx9, align 2, !dbg !2396, !tbaa !246
  %arrayidx10 = getelementptr inbounds i16, ptr %dct, i64 16, !dbg !2396
  %5 = load i16, ptr %arrayidx10, align 2, !dbg !2396, !tbaa !246
  %arrayidx11 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !2396
  store i16 %5, ptr %arrayidx11, align 2, !dbg !2396, !tbaa !246
  %arrayidx12 = getelementptr inbounds i16, ptr %dct, i64 24, !dbg !2396
  %6 = load i16, ptr %arrayidx12, align 2, !dbg !2396, !tbaa !246
  %arrayidx13 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !2396
  store i16 %6, ptr %arrayidx13, align 2, !dbg !2396, !tbaa !246
  %arrayidx14 = getelementptr inbounds i16, ptr %dct, i64 17, !dbg !2396
  %7 = load i16, ptr %arrayidx14, align 2, !dbg !2396, !tbaa !246
  %arrayidx15 = getelementptr inbounds i16, ptr %level, i64 7, !dbg !2396
  store i16 %7, ptr %arrayidx15, align 2, !dbg !2396, !tbaa !246
  %arrayidx16 = getelementptr inbounds i16, ptr %dct, i64 10, !dbg !2396
  %8 = load i16, ptr %arrayidx16, align 2, !dbg !2396, !tbaa !246
  %arrayidx17 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !2396
  store i16 %8, ptr %arrayidx17, align 2, !dbg !2396, !tbaa !246
  %arrayidx18 = getelementptr inbounds i16, ptr %dct, i64 3, !dbg !2396
  %9 = load i16, ptr %arrayidx18, align 2, !dbg !2396, !tbaa !246
  %arrayidx19 = getelementptr inbounds i16, ptr %level, i64 9, !dbg !2396
  store i16 %9, ptr %arrayidx19, align 2, !dbg !2396, !tbaa !246
  %arrayidx20 = getelementptr inbounds i16, ptr %dct, i64 4, !dbg !2396
  %10 = load i16, ptr %arrayidx20, align 2, !dbg !2396, !tbaa !246
  %arrayidx21 = getelementptr inbounds i16, ptr %level, i64 10, !dbg !2396
  store i16 %10, ptr %arrayidx21, align 2, !dbg !2396, !tbaa !246
  %arrayidx22 = getelementptr inbounds i16, ptr %dct, i64 11, !dbg !2396
  %11 = load i16, ptr %arrayidx22, align 2, !dbg !2396, !tbaa !246
  %arrayidx23 = getelementptr inbounds i16, ptr %level, i64 11, !dbg !2396
  store i16 %11, ptr %arrayidx23, align 2, !dbg !2396, !tbaa !246
  %arrayidx24 = getelementptr inbounds i16, ptr %dct, i64 18, !dbg !2396
  %12 = load i16, ptr %arrayidx24, align 2, !dbg !2396, !tbaa !246
  %arrayidx25 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !2396
  store i16 %12, ptr %arrayidx25, align 2, !dbg !2396, !tbaa !246
  %arrayidx26 = getelementptr inbounds i16, ptr %dct, i64 25, !dbg !2396
  %13 = load i16, ptr %arrayidx26, align 2, !dbg !2396, !tbaa !246
  %arrayidx27 = getelementptr inbounds i16, ptr %level, i64 13, !dbg !2396
  store i16 %13, ptr %arrayidx27, align 2, !dbg !2396, !tbaa !246
  %arrayidx28 = getelementptr inbounds i16, ptr %dct, i64 32, !dbg !2396
  %14 = load i16, ptr %arrayidx28, align 2, !dbg !2396, !tbaa !246
  %arrayidx29 = getelementptr inbounds i16, ptr %level, i64 14, !dbg !2396
  store i16 %14, ptr %arrayidx29, align 2, !dbg !2396, !tbaa !246
  %arrayidx30 = getelementptr inbounds i16, ptr %dct, i64 40, !dbg !2396
  %15 = load i16, ptr %arrayidx30, align 2, !dbg !2396, !tbaa !246
  %arrayidx31 = getelementptr inbounds i16, ptr %level, i64 15, !dbg !2396
  store i16 %15, ptr %arrayidx31, align 2, !dbg !2396, !tbaa !246
  %arrayidx32 = getelementptr inbounds i16, ptr %dct, i64 33, !dbg !2396
  %16 = load i16, ptr %arrayidx32, align 2, !dbg !2396, !tbaa !246
  %arrayidx33 = getelementptr inbounds i16, ptr %level, i64 16, !dbg !2396
  store i16 %16, ptr %arrayidx33, align 2, !dbg !2396, !tbaa !246
  %arrayidx34 = getelementptr inbounds i16, ptr %dct, i64 26, !dbg !2396
  %17 = load i16, ptr %arrayidx34, align 2, !dbg !2396, !tbaa !246
  %arrayidx35 = getelementptr inbounds i16, ptr %level, i64 17, !dbg !2396
  store i16 %17, ptr %arrayidx35, align 2, !dbg !2396, !tbaa !246
  %arrayidx36 = getelementptr inbounds i16, ptr %dct, i64 19, !dbg !2396
  %18 = load i16, ptr %arrayidx36, align 2, !dbg !2396, !tbaa !246
  %arrayidx37 = getelementptr inbounds i16, ptr %level, i64 18, !dbg !2396
  store i16 %18, ptr %arrayidx37, align 2, !dbg !2396, !tbaa !246
  %arrayidx38 = getelementptr inbounds i16, ptr %dct, i64 12, !dbg !2396
  %19 = load i16, ptr %arrayidx38, align 2, !dbg !2396, !tbaa !246
  %arrayidx39 = getelementptr inbounds i16, ptr %level, i64 19, !dbg !2396
  store i16 %19, ptr %arrayidx39, align 2, !dbg !2396, !tbaa !246
  %arrayidx40 = getelementptr inbounds i16, ptr %dct, i64 5, !dbg !2396
  %20 = load i16, ptr %arrayidx40, align 2, !dbg !2396, !tbaa !246
  %arrayidx41 = getelementptr inbounds i16, ptr %level, i64 20, !dbg !2396
  store i16 %20, ptr %arrayidx41, align 2, !dbg !2396, !tbaa !246
  %arrayidx42 = getelementptr inbounds i16, ptr %dct, i64 6, !dbg !2396
  %21 = load i16, ptr %arrayidx42, align 2, !dbg !2396, !tbaa !246
  %arrayidx43 = getelementptr inbounds i16, ptr %level, i64 21, !dbg !2396
  store i16 %21, ptr %arrayidx43, align 2, !dbg !2396, !tbaa !246
  %arrayidx44 = getelementptr inbounds i16, ptr %dct, i64 13, !dbg !2396
  %22 = load i16, ptr %arrayidx44, align 2, !dbg !2396, !tbaa !246
  %arrayidx45 = getelementptr inbounds i16, ptr %level, i64 22, !dbg !2396
  store i16 %22, ptr %arrayidx45, align 2, !dbg !2396, !tbaa !246
  %arrayidx46 = getelementptr inbounds i16, ptr %dct, i64 20, !dbg !2396
  %23 = load i16, ptr %arrayidx46, align 2, !dbg !2396, !tbaa !246
  %arrayidx47 = getelementptr inbounds i16, ptr %level, i64 23, !dbg !2396
  store i16 %23, ptr %arrayidx47, align 2, !dbg !2396, !tbaa !246
  %arrayidx48 = getelementptr inbounds i16, ptr %dct, i64 27, !dbg !2396
  %24 = load i16, ptr %arrayidx48, align 2, !dbg !2396, !tbaa !246
  %arrayidx49 = getelementptr inbounds i16, ptr %level, i64 24, !dbg !2396
  store i16 %24, ptr %arrayidx49, align 2, !dbg !2396, !tbaa !246
  %arrayidx50 = getelementptr inbounds i16, ptr %dct, i64 34, !dbg !2396
  %25 = load i16, ptr %arrayidx50, align 2, !dbg !2396, !tbaa !246
  %arrayidx51 = getelementptr inbounds i16, ptr %level, i64 25, !dbg !2396
  store i16 %25, ptr %arrayidx51, align 2, !dbg !2396, !tbaa !246
  %arrayidx52 = getelementptr inbounds i16, ptr %dct, i64 41, !dbg !2396
  %26 = load i16, ptr %arrayidx52, align 2, !dbg !2396, !tbaa !246
  %arrayidx53 = getelementptr inbounds i16, ptr %level, i64 26, !dbg !2396
  store i16 %26, ptr %arrayidx53, align 2, !dbg !2396, !tbaa !246
  %arrayidx54 = getelementptr inbounds i16, ptr %dct, i64 48, !dbg !2396
  %27 = load i16, ptr %arrayidx54, align 2, !dbg !2396, !tbaa !246
  %arrayidx55 = getelementptr inbounds i16, ptr %level, i64 27, !dbg !2396
  store i16 %27, ptr %arrayidx55, align 2, !dbg !2396, !tbaa !246
  %arrayidx56 = getelementptr inbounds i16, ptr %dct, i64 56, !dbg !2396
  %28 = load i16, ptr %arrayidx56, align 2, !dbg !2396, !tbaa !246
  %arrayidx57 = getelementptr inbounds i16, ptr %level, i64 28, !dbg !2396
  store i16 %28, ptr %arrayidx57, align 2, !dbg !2396, !tbaa !246
  %arrayidx58 = getelementptr inbounds i16, ptr %dct, i64 49, !dbg !2396
  %29 = load i16, ptr %arrayidx58, align 2, !dbg !2396, !tbaa !246
  %arrayidx59 = getelementptr inbounds i16, ptr %level, i64 29, !dbg !2396
  store i16 %29, ptr %arrayidx59, align 2, !dbg !2396, !tbaa !246
  %arrayidx60 = getelementptr inbounds i16, ptr %dct, i64 42, !dbg !2396
  %30 = load i16, ptr %arrayidx60, align 2, !dbg !2396, !tbaa !246
  %arrayidx61 = getelementptr inbounds i16, ptr %level, i64 30, !dbg !2396
  store i16 %30, ptr %arrayidx61, align 2, !dbg !2396, !tbaa !246
  %arrayidx62 = getelementptr inbounds i16, ptr %dct, i64 35, !dbg !2396
  %31 = load i16, ptr %arrayidx62, align 2, !dbg !2396, !tbaa !246
  %arrayidx63 = getelementptr inbounds i16, ptr %level, i64 31, !dbg !2396
  store i16 %31, ptr %arrayidx63, align 2, !dbg !2396, !tbaa !246
  %arrayidx64 = getelementptr inbounds i16, ptr %dct, i64 28, !dbg !2396
  %32 = load i16, ptr %arrayidx64, align 2, !dbg !2396, !tbaa !246
  %arrayidx65 = getelementptr inbounds i16, ptr %level, i64 32, !dbg !2396
  store i16 %32, ptr %arrayidx65, align 2, !dbg !2396, !tbaa !246
  %arrayidx66 = getelementptr inbounds i16, ptr %dct, i64 21, !dbg !2396
  %33 = load i16, ptr %arrayidx66, align 2, !dbg !2396, !tbaa !246
  %arrayidx67 = getelementptr inbounds i16, ptr %level, i64 33, !dbg !2396
  store i16 %33, ptr %arrayidx67, align 2, !dbg !2396, !tbaa !246
  %arrayidx68 = getelementptr inbounds i16, ptr %dct, i64 14, !dbg !2396
  %34 = load i16, ptr %arrayidx68, align 2, !dbg !2396, !tbaa !246
  %arrayidx69 = getelementptr inbounds i16, ptr %level, i64 34, !dbg !2396
  store i16 %34, ptr %arrayidx69, align 2, !dbg !2396, !tbaa !246
  %arrayidx70 = getelementptr inbounds i16, ptr %dct, i64 7, !dbg !2396
  %35 = load i16, ptr %arrayidx70, align 2, !dbg !2396, !tbaa !246
  %arrayidx71 = getelementptr inbounds i16, ptr %level, i64 35, !dbg !2396
  store i16 %35, ptr %arrayidx71, align 2, !dbg !2396, !tbaa !246
  %arrayidx72 = getelementptr inbounds i16, ptr %dct, i64 15, !dbg !2396
  %36 = load i16, ptr %arrayidx72, align 2, !dbg !2396, !tbaa !246
  %arrayidx73 = getelementptr inbounds i16, ptr %level, i64 36, !dbg !2396
  store i16 %36, ptr %arrayidx73, align 2, !dbg !2396, !tbaa !246
  %arrayidx74 = getelementptr inbounds i16, ptr %dct, i64 22, !dbg !2396
  %37 = load i16, ptr %arrayidx74, align 2, !dbg !2396, !tbaa !246
  %arrayidx75 = getelementptr inbounds i16, ptr %level, i64 37, !dbg !2396
  store i16 %37, ptr %arrayidx75, align 2, !dbg !2396, !tbaa !246
  %arrayidx76 = getelementptr inbounds i16, ptr %dct, i64 29, !dbg !2396
  %38 = load i16, ptr %arrayidx76, align 2, !dbg !2396, !tbaa !246
  %arrayidx77 = getelementptr inbounds i16, ptr %level, i64 38, !dbg !2396
  store i16 %38, ptr %arrayidx77, align 2, !dbg !2396, !tbaa !246
  %arrayidx78 = getelementptr inbounds i16, ptr %dct, i64 36, !dbg !2396
  %39 = load i16, ptr %arrayidx78, align 2, !dbg !2396, !tbaa !246
  %arrayidx79 = getelementptr inbounds i16, ptr %level, i64 39, !dbg !2396
  store i16 %39, ptr %arrayidx79, align 2, !dbg !2396, !tbaa !246
  %arrayidx80 = getelementptr inbounds i16, ptr %dct, i64 43, !dbg !2396
  %40 = load i16, ptr %arrayidx80, align 2, !dbg !2396, !tbaa !246
  %arrayidx81 = getelementptr inbounds i16, ptr %level, i64 40, !dbg !2396
  store i16 %40, ptr %arrayidx81, align 2, !dbg !2396, !tbaa !246
  %arrayidx82 = getelementptr inbounds i16, ptr %dct, i64 50, !dbg !2396
  %41 = load i16, ptr %arrayidx82, align 2, !dbg !2396, !tbaa !246
  %arrayidx83 = getelementptr inbounds i16, ptr %level, i64 41, !dbg !2396
  store i16 %41, ptr %arrayidx83, align 2, !dbg !2396, !tbaa !246
  %arrayidx84 = getelementptr inbounds i16, ptr %dct, i64 57, !dbg !2396
  %42 = load i16, ptr %arrayidx84, align 2, !dbg !2396, !tbaa !246
  %arrayidx85 = getelementptr inbounds i16, ptr %level, i64 42, !dbg !2396
  store i16 %42, ptr %arrayidx85, align 2, !dbg !2396, !tbaa !246
  %arrayidx86 = getelementptr inbounds i16, ptr %dct, i64 58, !dbg !2396
  %43 = load i16, ptr %arrayidx86, align 2, !dbg !2396, !tbaa !246
  %arrayidx87 = getelementptr inbounds i16, ptr %level, i64 43, !dbg !2396
  store i16 %43, ptr %arrayidx87, align 2, !dbg !2396, !tbaa !246
  %arrayidx88 = getelementptr inbounds i16, ptr %dct, i64 51, !dbg !2396
  %44 = load i16, ptr %arrayidx88, align 2, !dbg !2396, !tbaa !246
  %arrayidx89 = getelementptr inbounds i16, ptr %level, i64 44, !dbg !2396
  store i16 %44, ptr %arrayidx89, align 2, !dbg !2396, !tbaa !246
  %arrayidx90 = getelementptr inbounds i16, ptr %dct, i64 44, !dbg !2396
  %45 = load i16, ptr %arrayidx90, align 2, !dbg !2396, !tbaa !246
  %arrayidx91 = getelementptr inbounds i16, ptr %level, i64 45, !dbg !2396
  store i16 %45, ptr %arrayidx91, align 2, !dbg !2396, !tbaa !246
  %arrayidx92 = getelementptr inbounds i16, ptr %dct, i64 37, !dbg !2396
  %46 = load i16, ptr %arrayidx92, align 2, !dbg !2396, !tbaa !246
  %arrayidx93 = getelementptr inbounds i16, ptr %level, i64 46, !dbg !2396
  store i16 %46, ptr %arrayidx93, align 2, !dbg !2396, !tbaa !246
  %arrayidx94 = getelementptr inbounds i16, ptr %dct, i64 30, !dbg !2396
  %47 = load i16, ptr %arrayidx94, align 2, !dbg !2396, !tbaa !246
  %arrayidx95 = getelementptr inbounds i16, ptr %level, i64 47, !dbg !2396
  store i16 %47, ptr %arrayidx95, align 2, !dbg !2396, !tbaa !246
  %arrayidx96 = getelementptr inbounds i16, ptr %dct, i64 23, !dbg !2396
  %48 = load i16, ptr %arrayidx96, align 2, !dbg !2396, !tbaa !246
  %arrayidx97 = getelementptr inbounds i16, ptr %level, i64 48, !dbg !2396
  store i16 %48, ptr %arrayidx97, align 2, !dbg !2396, !tbaa !246
  %arrayidx98 = getelementptr inbounds i16, ptr %dct, i64 31, !dbg !2396
  %49 = load i16, ptr %arrayidx98, align 2, !dbg !2396, !tbaa !246
  %arrayidx99 = getelementptr inbounds i16, ptr %level, i64 49, !dbg !2396
  store i16 %49, ptr %arrayidx99, align 2, !dbg !2396, !tbaa !246
  %arrayidx100 = getelementptr inbounds i16, ptr %dct, i64 38, !dbg !2396
  %50 = load i16, ptr %arrayidx100, align 2, !dbg !2396, !tbaa !246
  %arrayidx101 = getelementptr inbounds i16, ptr %level, i64 50, !dbg !2396
  store i16 %50, ptr %arrayidx101, align 2, !dbg !2396, !tbaa !246
  %arrayidx102 = getelementptr inbounds i16, ptr %dct, i64 45, !dbg !2396
  %51 = load i16, ptr %arrayidx102, align 2, !dbg !2396, !tbaa !246
  %arrayidx103 = getelementptr inbounds i16, ptr %level, i64 51, !dbg !2396
  store i16 %51, ptr %arrayidx103, align 2, !dbg !2396, !tbaa !246
  %arrayidx104 = getelementptr inbounds i16, ptr %dct, i64 52, !dbg !2396
  %52 = load i16, ptr %arrayidx104, align 2, !dbg !2396, !tbaa !246
  %arrayidx105 = getelementptr inbounds i16, ptr %level, i64 52, !dbg !2396
  store i16 %52, ptr %arrayidx105, align 2, !dbg !2396, !tbaa !246
  %arrayidx106 = getelementptr inbounds i16, ptr %dct, i64 59, !dbg !2396
  %53 = load i16, ptr %arrayidx106, align 2, !dbg !2396, !tbaa !246
  %arrayidx107 = getelementptr inbounds i16, ptr %level, i64 53, !dbg !2396
  store i16 %53, ptr %arrayidx107, align 2, !dbg !2396, !tbaa !246
  %arrayidx108 = getelementptr inbounds i16, ptr %dct, i64 60, !dbg !2396
  %54 = load i16, ptr %arrayidx108, align 2, !dbg !2396, !tbaa !246
  %arrayidx109 = getelementptr inbounds i16, ptr %level, i64 54, !dbg !2396
  store i16 %54, ptr %arrayidx109, align 2, !dbg !2396, !tbaa !246
  %arrayidx110 = getelementptr inbounds i16, ptr %dct, i64 53, !dbg !2396
  %55 = load i16, ptr %arrayidx110, align 2, !dbg !2396, !tbaa !246
  %arrayidx111 = getelementptr inbounds i16, ptr %level, i64 55, !dbg !2396
  store i16 %55, ptr %arrayidx111, align 2, !dbg !2396, !tbaa !246
  %arrayidx112 = getelementptr inbounds i16, ptr %dct, i64 46, !dbg !2396
  %56 = load i16, ptr %arrayidx112, align 2, !dbg !2396, !tbaa !246
  %arrayidx113 = getelementptr inbounds i16, ptr %level, i64 56, !dbg !2396
  store i16 %56, ptr %arrayidx113, align 2, !dbg !2396, !tbaa !246
  %arrayidx114 = getelementptr inbounds i16, ptr %dct, i64 39, !dbg !2396
  %57 = load i16, ptr %arrayidx114, align 2, !dbg !2396, !tbaa !246
  %arrayidx115 = getelementptr inbounds i16, ptr %level, i64 57, !dbg !2396
  store i16 %57, ptr %arrayidx115, align 2, !dbg !2396, !tbaa !246
  %arrayidx116 = getelementptr inbounds i16, ptr %dct, i64 47, !dbg !2396
  %58 = load i16, ptr %arrayidx116, align 2, !dbg !2396, !tbaa !246
  %arrayidx117 = getelementptr inbounds i16, ptr %level, i64 58, !dbg !2396
  store i16 %58, ptr %arrayidx117, align 2, !dbg !2396, !tbaa !246
  %arrayidx118 = getelementptr inbounds i16, ptr %dct, i64 54, !dbg !2396
  %59 = load i16, ptr %arrayidx118, align 2, !dbg !2396, !tbaa !246
  %arrayidx119 = getelementptr inbounds i16, ptr %level, i64 59, !dbg !2396
  store i16 %59, ptr %arrayidx119, align 2, !dbg !2396, !tbaa !246
  %arrayidx120 = getelementptr inbounds i16, ptr %dct, i64 61, !dbg !2396
  %60 = load i16, ptr %arrayidx120, align 2, !dbg !2396, !tbaa !246
  %arrayidx121 = getelementptr inbounds i16, ptr %level, i64 60, !dbg !2396
  store i16 %60, ptr %arrayidx121, align 2, !dbg !2396, !tbaa !246
  %arrayidx122 = getelementptr inbounds i16, ptr %dct, i64 62, !dbg !2396
  %61 = load i16, ptr %arrayidx122, align 2, !dbg !2396, !tbaa !246
  %arrayidx123 = getelementptr inbounds i16, ptr %level, i64 61, !dbg !2396
  store i16 %61, ptr %arrayidx123, align 2, !dbg !2396, !tbaa !246
  %arrayidx124 = getelementptr inbounds i16, ptr %dct, i64 55, !dbg !2396
  %62 = load i16, ptr %arrayidx124, align 2, !dbg !2396, !tbaa !246
  %arrayidx125 = getelementptr inbounds i16, ptr %level, i64 62, !dbg !2396
  store i16 %62, ptr %arrayidx125, align 2, !dbg !2396, !tbaa !246
  %arrayidx126 = getelementptr inbounds i16, ptr %dct, i64 63, !dbg !2396
  %63 = load i16, ptr %arrayidx126, align 2, !dbg !2396, !tbaa !246
  %arrayidx127 = getelementptr inbounds i16, ptr %level, i64 63, !dbg !2396
  store i16 %63, ptr %arrayidx127, align 2, !dbg !2396, !tbaa !246
  ret void, !dbg !2397
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal void @zigzag_scan_4x4_frame(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %dct) #8 !dbg !2398 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !2400, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata ptr %dct, metadata !2401, metadata !DIExpression()), !dbg !2402
  %0 = load i16, ptr %dct, align 2, !dbg !2403, !tbaa !246
  store i16 %0, ptr %level, align 2, !dbg !2403, !tbaa !246
  %arrayidx2 = getelementptr inbounds i16, ptr %dct, i64 4, !dbg !2403
  %1 = load i16, ptr %arrayidx2, align 2, !dbg !2403, !tbaa !246
  %arrayidx3 = getelementptr inbounds i16, ptr %level, i64 1, !dbg !2403
  store i16 %1, ptr %arrayidx3, align 2, !dbg !2403, !tbaa !246
  %arrayidx4 = getelementptr inbounds i16, ptr %dct, i64 1, !dbg !2403
  %2 = load i16, ptr %arrayidx4, align 2, !dbg !2403, !tbaa !246
  %arrayidx5 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !2403
  store i16 %2, ptr %arrayidx5, align 2, !dbg !2403, !tbaa !246
  %arrayidx6 = getelementptr inbounds i16, ptr %dct, i64 2, !dbg !2403
  %3 = load i16, ptr %arrayidx6, align 2, !dbg !2403, !tbaa !246
  %arrayidx7 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !2403
  store i16 %3, ptr %arrayidx7, align 2, !dbg !2403, !tbaa !246
  %arrayidx8 = getelementptr inbounds i16, ptr %dct, i64 5, !dbg !2403
  %4 = load i16, ptr %arrayidx8, align 2, !dbg !2403, !tbaa !246
  %arrayidx9 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !2403
  store i16 %4, ptr %arrayidx9, align 2, !dbg !2403, !tbaa !246
  %arrayidx10 = getelementptr inbounds i16, ptr %dct, i64 8, !dbg !2403
  %5 = load i16, ptr %arrayidx10, align 2, !dbg !2403, !tbaa !246
  %arrayidx11 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !2403
  store i16 %5, ptr %arrayidx11, align 2, !dbg !2403, !tbaa !246
  %arrayidx12 = getelementptr inbounds i16, ptr %dct, i64 12, !dbg !2403
  %6 = load i16, ptr %arrayidx12, align 2, !dbg !2403, !tbaa !246
  %arrayidx13 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !2403
  store i16 %6, ptr %arrayidx13, align 2, !dbg !2403, !tbaa !246
  %arrayidx14 = getelementptr inbounds i16, ptr %dct, i64 9, !dbg !2403
  %7 = load i16, ptr %arrayidx14, align 2, !dbg !2403, !tbaa !246
  %arrayidx15 = getelementptr inbounds i16, ptr %level, i64 7, !dbg !2403
  store i16 %7, ptr %arrayidx15, align 2, !dbg !2403, !tbaa !246
  %arrayidx16 = getelementptr inbounds i16, ptr %dct, i64 6, !dbg !2403
  %8 = load i16, ptr %arrayidx16, align 2, !dbg !2403, !tbaa !246
  %arrayidx17 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !2403
  store i16 %8, ptr %arrayidx17, align 2, !dbg !2403, !tbaa !246
  %arrayidx18 = getelementptr inbounds i16, ptr %dct, i64 3, !dbg !2403
  %9 = load i16, ptr %arrayidx18, align 2, !dbg !2403, !tbaa !246
  %arrayidx19 = getelementptr inbounds i16, ptr %level, i64 9, !dbg !2403
  store i16 %9, ptr %arrayidx19, align 2, !dbg !2403, !tbaa !246
  %arrayidx20 = getelementptr inbounds i16, ptr %dct, i64 7, !dbg !2403
  %10 = load i16, ptr %arrayidx20, align 2, !dbg !2403, !tbaa !246
  %arrayidx21 = getelementptr inbounds i16, ptr %level, i64 10, !dbg !2403
  store i16 %10, ptr %arrayidx21, align 2, !dbg !2403, !tbaa !246
  %arrayidx22 = getelementptr inbounds i16, ptr %dct, i64 10, !dbg !2403
  %11 = load i16, ptr %arrayidx22, align 2, !dbg !2403, !tbaa !246
  %arrayidx23 = getelementptr inbounds i16, ptr %level, i64 11, !dbg !2403
  store i16 %11, ptr %arrayidx23, align 2, !dbg !2403, !tbaa !246
  %arrayidx24 = getelementptr inbounds i16, ptr %dct, i64 13, !dbg !2403
  %12 = load i16, ptr %arrayidx24, align 2, !dbg !2403, !tbaa !246
  %arrayidx25 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !2403
  store i16 %12, ptr %arrayidx25, align 2, !dbg !2403, !tbaa !246
  %arrayidx26 = getelementptr inbounds i16, ptr %dct, i64 14, !dbg !2403
  %13 = load i16, ptr %arrayidx26, align 2, !dbg !2403, !tbaa !246
  %arrayidx27 = getelementptr inbounds i16, ptr %level, i64 13, !dbg !2403
  store i16 %13, ptr %arrayidx27, align 2, !dbg !2403, !tbaa !246
  %arrayidx28 = getelementptr inbounds i16, ptr %dct, i64 11, !dbg !2403
  %14 = load i16, ptr %arrayidx28, align 2, !dbg !2403, !tbaa !246
  %arrayidx29 = getelementptr inbounds i16, ptr %level, i64 14, !dbg !2403
  store i16 %14, ptr %arrayidx29, align 2, !dbg !2403, !tbaa !246
  %arrayidx30 = getelementptr inbounds i16, ptr %dct, i64 15, !dbg !2403
  %15 = load i16, ptr %arrayidx30, align 2, !dbg !2403, !tbaa !246
  %arrayidx31 = getelementptr inbounds i16, ptr %level, i64 15, !dbg !2403
  store i16 %15, ptr %arrayidx31, align 2, !dbg !2403, !tbaa !246
  ret void, !dbg !2404
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @zigzag_sub_8x8_frame(ptr noundef writeonly %level, ptr noundef readonly %p_src, ptr noundef %p_dst) #8 !dbg !2405 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !2407, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %p_src, metadata !2408, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !2409, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 0, metadata !2413, metadata !DIExpression()), !dbg !2604
  %0 = load i8, ptr %p_src, align 1, !dbg !2605, !tbaa !240
  %conv = zext i8 %0 to i16, !dbg !2605
  %1 = load i8, ptr %p_dst, align 1, !dbg !2605, !tbaa !240
  %conv3 = zext i8 %1 to i16, !dbg !2605
  %sub = sub nsw i16 %conv, %conv3, !dbg !2605
  store i16 %sub, ptr %level, align 2, !dbg !2605, !tbaa !246
  call void @llvm.dbg.value(metadata i16 %sub, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i32 1, metadata !2416, metadata !DIExpression()), !dbg !2606
  %arrayidx11 = getelementptr inbounds i8, ptr %p_src, i64 1, !dbg !2607
  %2 = load i8, ptr %arrayidx11, align 1, !dbg !2607, !tbaa !240
  %conv12 = zext i8 %2 to i16, !dbg !2607
  %arrayidx14 = getelementptr inbounds i8, ptr %p_dst, i64 1, !dbg !2607
  %3 = load i8, ptr %arrayidx14, align 1, !dbg !2607, !tbaa !240
  %conv15 = zext i8 %3 to i16, !dbg !2607
  %sub16 = sub nsw i16 %conv12, %conv15, !dbg !2607
  %arrayidx18 = getelementptr inbounds i16, ptr %level, i64 1, !dbg !2607
  store i16 %sub16, ptr %arrayidx18, align 2, !dbg !2607, !tbaa !246
  %or211239 = or i16 %sub16, %sub, !dbg !2607
  call void @llvm.dbg.value(metadata i16 %or211239, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 16, metadata !2417, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 32, metadata !2419, metadata !DIExpression()), !dbg !2608
  %arrayidx25 = getelementptr inbounds i8, ptr %p_src, i64 16, !dbg !2609
  %4 = load i8, ptr %arrayidx25, align 1, !dbg !2609, !tbaa !240
  %conv26 = zext i8 %4 to i16, !dbg !2609
  %arrayidx28 = getelementptr inbounds i8, ptr %p_dst, i64 32, !dbg !2609
  %5 = load i8, ptr %arrayidx28, align 1, !dbg !2609, !tbaa !240
  %conv29 = zext i8 %5 to i16, !dbg !2609
  %sub30 = sub nsw i16 %conv26, %conv29, !dbg !2609
  %arrayidx32 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !2609
  store i16 %sub30, ptr %arrayidx32, align 2, !dbg !2609, !tbaa !246
  %or351240 = or i16 %or211239, %sub30, !dbg !2609
  call void @llvm.dbg.value(metadata i16 %or351240, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 32, metadata !2420, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 64, metadata !2422, metadata !DIExpression()), !dbg !2610
  %arrayidx39 = getelementptr inbounds i8, ptr %p_src, i64 32, !dbg !2611
  %6 = load i8, ptr %arrayidx39, align 1, !dbg !2611, !tbaa !240
  %conv40 = zext i8 %6 to i16, !dbg !2611
  %arrayidx42 = getelementptr inbounds i8, ptr %p_dst, i64 64, !dbg !2611
  %7 = load i8, ptr %arrayidx42, align 1, !dbg !2611, !tbaa !240
  %conv43 = zext i8 %7 to i16, !dbg !2611
  %sub44 = sub nsw i16 %conv40, %conv43, !dbg !2611
  %arrayidx46 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !2611
  store i16 %sub44, ptr %arrayidx46, align 2, !dbg !2611, !tbaa !246
  %or491241 = or i16 %or351240, %sub44, !dbg !2611
  call void @llvm.dbg.value(metadata i16 %or491241, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 17, metadata !2423, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 33, metadata !2425, metadata !DIExpression()), !dbg !2612
  %arrayidx53 = getelementptr inbounds i8, ptr %p_src, i64 17, !dbg !2613
  %8 = load i8, ptr %arrayidx53, align 1, !dbg !2613, !tbaa !240
  %conv54 = zext i8 %8 to i16, !dbg !2613
  %arrayidx56 = getelementptr inbounds i8, ptr %p_dst, i64 33, !dbg !2613
  %9 = load i8, ptr %arrayidx56, align 1, !dbg !2613, !tbaa !240
  %conv57 = zext i8 %9 to i16, !dbg !2613
  %sub58 = sub nsw i16 %conv54, %conv57, !dbg !2613
  %arrayidx60 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !2613
  store i16 %sub58, ptr %arrayidx60, align 2, !dbg !2613, !tbaa !246
  %or631242 = or i16 %or491241, %sub58, !dbg !2613
  call void @llvm.dbg.value(metadata i16 %or631242, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 2, metadata !2426, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 2, metadata !2428, metadata !DIExpression()), !dbg !2614
  %arrayidx67 = getelementptr inbounds i8, ptr %p_src, i64 2, !dbg !2615
  %10 = load i8, ptr %arrayidx67, align 1, !dbg !2615, !tbaa !240
  %conv68 = zext i8 %10 to i16, !dbg !2615
  %arrayidx70 = getelementptr inbounds i8, ptr %p_dst, i64 2, !dbg !2615
  %11 = load i8, ptr %arrayidx70, align 1, !dbg !2615, !tbaa !240
  %conv71 = zext i8 %11 to i16, !dbg !2615
  %sub72 = sub nsw i16 %conv68, %conv71, !dbg !2615
  %arrayidx74 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !2615
  store i16 %sub72, ptr %arrayidx74, align 2, !dbg !2615, !tbaa !246
  %or771243 = or i16 %or631242, %sub72, !dbg !2615
  call void @llvm.dbg.value(metadata i16 %or771243, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 3, metadata !2429, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 3, metadata !2431, metadata !DIExpression()), !dbg !2616
  %arrayidx81 = getelementptr inbounds i8, ptr %p_src, i64 3, !dbg !2617
  %12 = load i8, ptr %arrayidx81, align 1, !dbg !2617, !tbaa !240
  %conv82 = zext i8 %12 to i16, !dbg !2617
  %arrayidx84 = getelementptr inbounds i8, ptr %p_dst, i64 3, !dbg !2617
  %13 = load i8, ptr %arrayidx84, align 1, !dbg !2617, !tbaa !240
  %conv85 = zext i8 %13 to i16, !dbg !2617
  %sub86 = sub nsw i16 %conv82, %conv85, !dbg !2617
  %arrayidx88 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !2617
  store i16 %sub86, ptr %arrayidx88, align 2, !dbg !2617, !tbaa !246
  %or911244 = or i16 %or771243, %sub86, !dbg !2617
  call void @llvm.dbg.value(metadata i16 %or911244, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 18, metadata !2432, metadata !DIExpression()), !dbg !2618
  call void @llvm.dbg.value(metadata i32 34, metadata !2434, metadata !DIExpression()), !dbg !2618
  %arrayidx95 = getelementptr inbounds i8, ptr %p_src, i64 18, !dbg !2619
  %14 = load i8, ptr %arrayidx95, align 1, !dbg !2619, !tbaa !240
  %conv96 = zext i8 %14 to i16, !dbg !2619
  %arrayidx98 = getelementptr inbounds i8, ptr %p_dst, i64 34, !dbg !2619
  %15 = load i8, ptr %arrayidx98, align 1, !dbg !2619, !tbaa !240
  %conv99 = zext i8 %15 to i16, !dbg !2619
  %sub100 = sub nsw i16 %conv96, %conv99, !dbg !2619
  %arrayidx102 = getelementptr inbounds i16, ptr %level, i64 7, !dbg !2619
  store i16 %sub100, ptr %arrayidx102, align 2, !dbg !2619, !tbaa !246
  %or1051245 = or i16 %or911244, %sub100, !dbg !2619
  call void @llvm.dbg.value(metadata i16 %or1051245, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 33, metadata !2435, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 65, metadata !2437, metadata !DIExpression()), !dbg !2620
  %arrayidx109 = getelementptr inbounds i8, ptr %p_src, i64 33, !dbg !2621
  %16 = load i8, ptr %arrayidx109, align 1, !dbg !2621, !tbaa !240
  %conv110 = zext i8 %16 to i16, !dbg !2621
  %arrayidx112 = getelementptr inbounds i8, ptr %p_dst, i64 65, !dbg !2621
  %17 = load i8, ptr %arrayidx112, align 1, !dbg !2621, !tbaa !240
  %conv113 = zext i8 %17 to i16, !dbg !2621
  %sub114 = sub nsw i16 %conv110, %conv113, !dbg !2621
  %arrayidx116 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !2621
  store i16 %sub114, ptr %arrayidx116, align 2, !dbg !2621, !tbaa !246
  %or1191246 = or i16 %or1051245, %sub114, !dbg !2621
  call void @llvm.dbg.value(metadata i16 %or1191246, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 48, metadata !2438, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 96, metadata !2440, metadata !DIExpression()), !dbg !2622
  %arrayidx123 = getelementptr inbounds i8, ptr %p_src, i64 48, !dbg !2623
  %18 = load i8, ptr %arrayidx123, align 1, !dbg !2623, !tbaa !240
  %conv124 = zext i8 %18 to i16, !dbg !2623
  %arrayidx126 = getelementptr inbounds i8, ptr %p_dst, i64 96, !dbg !2623
  %19 = load i8, ptr %arrayidx126, align 1, !dbg !2623, !tbaa !240
  %conv127 = zext i8 %19 to i16, !dbg !2623
  %sub128 = sub nsw i16 %conv124, %conv127, !dbg !2623
  %arrayidx130 = getelementptr inbounds i16, ptr %level, i64 9, !dbg !2623
  store i16 %sub128, ptr %arrayidx130, align 2, !dbg !2623, !tbaa !246
  %or1331247 = or i16 %or1191246, %sub128, !dbg !2623
  call void @llvm.dbg.value(metadata i16 %or1331247, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 64, metadata !2441, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 128, metadata !2443, metadata !DIExpression()), !dbg !2624
  %arrayidx137 = getelementptr inbounds i8, ptr %p_src, i64 64, !dbg !2625
  %20 = load i8, ptr %arrayidx137, align 1, !dbg !2625, !tbaa !240
  %conv138 = zext i8 %20 to i16, !dbg !2625
  %arrayidx140 = getelementptr inbounds i8, ptr %p_dst, i64 128, !dbg !2625
  %21 = load i8, ptr %arrayidx140, align 1, !dbg !2625, !tbaa !240
  %conv141 = zext i8 %21 to i16, !dbg !2625
  %sub142 = sub nsw i16 %conv138, %conv141, !dbg !2625
  %arrayidx144 = getelementptr inbounds i16, ptr %level, i64 10, !dbg !2625
  store i16 %sub142, ptr %arrayidx144, align 2, !dbg !2625, !tbaa !246
  %or1471248 = or i16 %or1331247, %sub142, !dbg !2625
  call void @llvm.dbg.value(metadata i16 %or1471248, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 49, metadata !2444, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 97, metadata !2446, metadata !DIExpression()), !dbg !2626
  %arrayidx151 = getelementptr inbounds i8, ptr %p_src, i64 49, !dbg !2627
  %22 = load i8, ptr %arrayidx151, align 1, !dbg !2627, !tbaa !240
  %conv152 = zext i8 %22 to i16, !dbg !2627
  %arrayidx154 = getelementptr inbounds i8, ptr %p_dst, i64 97, !dbg !2627
  %23 = load i8, ptr %arrayidx154, align 1, !dbg !2627, !tbaa !240
  %conv155 = zext i8 %23 to i16, !dbg !2627
  %sub156 = sub nsw i16 %conv152, %conv155, !dbg !2627
  %arrayidx158 = getelementptr inbounds i16, ptr %level, i64 11, !dbg !2627
  store i16 %sub156, ptr %arrayidx158, align 2, !dbg !2627, !tbaa !246
  %or1611249 = or i16 %or1471248, %sub156, !dbg !2627
  call void @llvm.dbg.value(metadata i16 %or1611249, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 34, metadata !2447, metadata !DIExpression()), !dbg !2628
  call void @llvm.dbg.value(metadata i32 66, metadata !2449, metadata !DIExpression()), !dbg !2628
  %arrayidx165 = getelementptr inbounds i8, ptr %p_src, i64 34, !dbg !2629
  %24 = load i8, ptr %arrayidx165, align 1, !dbg !2629, !tbaa !240
  %conv166 = zext i8 %24 to i16, !dbg !2629
  %arrayidx168 = getelementptr inbounds i8, ptr %p_dst, i64 66, !dbg !2629
  %25 = load i8, ptr %arrayidx168, align 1, !dbg !2629, !tbaa !240
  %conv169 = zext i8 %25 to i16, !dbg !2629
  %sub170 = sub nsw i16 %conv166, %conv169, !dbg !2629
  %arrayidx172 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !2629
  store i16 %sub170, ptr %arrayidx172, align 2, !dbg !2629, !tbaa !246
  %or1751250 = or i16 %or1611249, %sub170, !dbg !2629
  call void @llvm.dbg.value(metadata i16 %or1751250, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 19, metadata !2450, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 35, metadata !2452, metadata !DIExpression()), !dbg !2630
  %arrayidx179 = getelementptr inbounds i8, ptr %p_src, i64 19, !dbg !2631
  %26 = load i8, ptr %arrayidx179, align 1, !dbg !2631, !tbaa !240
  %conv180 = zext i8 %26 to i16, !dbg !2631
  %arrayidx182 = getelementptr inbounds i8, ptr %p_dst, i64 35, !dbg !2631
  %27 = load i8, ptr %arrayidx182, align 1, !dbg !2631, !tbaa !240
  %conv183 = zext i8 %27 to i16, !dbg !2631
  %sub184 = sub nsw i16 %conv180, %conv183, !dbg !2631
  %arrayidx186 = getelementptr inbounds i16, ptr %level, i64 13, !dbg !2631
  store i16 %sub184, ptr %arrayidx186, align 2, !dbg !2631, !tbaa !246
  %or1891251 = or i16 %or1751250, %sub184, !dbg !2631
  call void @llvm.dbg.value(metadata i16 %or1891251, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 4, metadata !2453, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 4, metadata !2455, metadata !DIExpression()), !dbg !2632
  %arrayidx193 = getelementptr inbounds i8, ptr %p_src, i64 4, !dbg !2633
  %28 = load i8, ptr %arrayidx193, align 1, !dbg !2633, !tbaa !240
  %conv194 = zext i8 %28 to i16, !dbg !2633
  %arrayidx196 = getelementptr inbounds i8, ptr %p_dst, i64 4, !dbg !2633
  %29 = load i8, ptr %arrayidx196, align 1, !dbg !2633, !tbaa !240
  %conv197 = zext i8 %29 to i16, !dbg !2633
  %sub198 = sub nsw i16 %conv194, %conv197, !dbg !2633
  %arrayidx200 = getelementptr inbounds i16, ptr %level, i64 14, !dbg !2633
  store i16 %sub198, ptr %arrayidx200, align 2, !dbg !2633, !tbaa !246
  %or2031252 = or i16 %or1891251, %sub198, !dbg !2633
  call void @llvm.dbg.value(metadata i16 %or2031252, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 5, metadata !2456, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata i32 5, metadata !2458, metadata !DIExpression()), !dbg !2634
  %arrayidx207 = getelementptr inbounds i8, ptr %p_src, i64 5, !dbg !2635
  %30 = load i8, ptr %arrayidx207, align 1, !dbg !2635, !tbaa !240
  %conv208 = zext i8 %30 to i16, !dbg !2635
  %arrayidx210 = getelementptr inbounds i8, ptr %p_dst, i64 5, !dbg !2635
  %31 = load i8, ptr %arrayidx210, align 1, !dbg !2635, !tbaa !240
  %conv211 = zext i8 %31 to i16, !dbg !2635
  %sub212 = sub nsw i16 %conv208, %conv211, !dbg !2635
  %arrayidx214 = getelementptr inbounds i16, ptr %level, i64 15, !dbg !2635
  store i16 %sub212, ptr %arrayidx214, align 2, !dbg !2635, !tbaa !246
  %or2171253 = or i16 %or2031252, %sub212, !dbg !2635
  call void @llvm.dbg.value(metadata i16 %or2171253, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 20, metadata !2459, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata i32 36, metadata !2461, metadata !DIExpression()), !dbg !2636
  %arrayidx221 = getelementptr inbounds i8, ptr %p_src, i64 20, !dbg !2637
  %32 = load i8, ptr %arrayidx221, align 1, !dbg !2637, !tbaa !240
  %conv222 = zext i8 %32 to i16, !dbg !2637
  %arrayidx224 = getelementptr inbounds i8, ptr %p_dst, i64 36, !dbg !2637
  %33 = load i8, ptr %arrayidx224, align 1, !dbg !2637, !tbaa !240
  %conv225 = zext i8 %33 to i16, !dbg !2637
  %sub226 = sub nsw i16 %conv222, %conv225, !dbg !2637
  %arrayidx228 = getelementptr inbounds i16, ptr %level, i64 16, !dbg !2637
  store i16 %sub226, ptr %arrayidx228, align 2, !dbg !2637, !tbaa !246
  %or2311254 = or i16 %or2171253, %sub226, !dbg !2637
  call void @llvm.dbg.value(metadata i16 %or2311254, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 35, metadata !2462, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 67, metadata !2464, metadata !DIExpression()), !dbg !2638
  %arrayidx235 = getelementptr inbounds i8, ptr %p_src, i64 35, !dbg !2639
  %34 = load i8, ptr %arrayidx235, align 1, !dbg !2639, !tbaa !240
  %conv236 = zext i8 %34 to i16, !dbg !2639
  %arrayidx238 = getelementptr inbounds i8, ptr %p_dst, i64 67, !dbg !2639
  %35 = load i8, ptr %arrayidx238, align 1, !dbg !2639, !tbaa !240
  %conv239 = zext i8 %35 to i16, !dbg !2639
  %sub240 = sub nsw i16 %conv236, %conv239, !dbg !2639
  %arrayidx242 = getelementptr inbounds i16, ptr %level, i64 17, !dbg !2639
  store i16 %sub240, ptr %arrayidx242, align 2, !dbg !2639, !tbaa !246
  %or2451255 = or i16 %or2311254, %sub240, !dbg !2639
  call void @llvm.dbg.value(metadata i16 %or2451255, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 50, metadata !2465, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 98, metadata !2467, metadata !DIExpression()), !dbg !2640
  %arrayidx249 = getelementptr inbounds i8, ptr %p_src, i64 50, !dbg !2641
  %36 = load i8, ptr %arrayidx249, align 1, !dbg !2641, !tbaa !240
  %conv250 = zext i8 %36 to i16, !dbg !2641
  %arrayidx252 = getelementptr inbounds i8, ptr %p_dst, i64 98, !dbg !2641
  %37 = load i8, ptr %arrayidx252, align 1, !dbg !2641, !tbaa !240
  %conv253 = zext i8 %37 to i16, !dbg !2641
  %sub254 = sub nsw i16 %conv250, %conv253, !dbg !2641
  %arrayidx256 = getelementptr inbounds i16, ptr %level, i64 18, !dbg !2641
  store i16 %sub254, ptr %arrayidx256, align 2, !dbg !2641, !tbaa !246
  %or2591256 = or i16 %or2451255, %sub254, !dbg !2641
  call void @llvm.dbg.value(metadata i16 %or2591256, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 65, metadata !2468, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata i32 129, metadata !2470, metadata !DIExpression()), !dbg !2642
  %arrayidx263 = getelementptr inbounds i8, ptr %p_src, i64 65, !dbg !2643
  %38 = load i8, ptr %arrayidx263, align 1, !dbg !2643, !tbaa !240
  %conv264 = zext i8 %38 to i16, !dbg !2643
  %arrayidx266 = getelementptr inbounds i8, ptr %p_dst, i64 129, !dbg !2643
  %39 = load i8, ptr %arrayidx266, align 1, !dbg !2643, !tbaa !240
  %conv267 = zext i8 %39 to i16, !dbg !2643
  %sub268 = sub nsw i16 %conv264, %conv267, !dbg !2643
  %arrayidx270 = getelementptr inbounds i16, ptr %level, i64 19, !dbg !2643
  store i16 %sub268, ptr %arrayidx270, align 2, !dbg !2643, !tbaa !246
  %or2731257 = or i16 %or2591256, %sub268, !dbg !2643
  call void @llvm.dbg.value(metadata i16 %or2731257, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 80, metadata !2471, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 160, metadata !2473, metadata !DIExpression()), !dbg !2644
  %arrayidx277 = getelementptr inbounds i8, ptr %p_src, i64 80, !dbg !2645
  %40 = load i8, ptr %arrayidx277, align 1, !dbg !2645, !tbaa !240
  %conv278 = zext i8 %40 to i16, !dbg !2645
  %arrayidx280 = getelementptr inbounds i8, ptr %p_dst, i64 160, !dbg !2645
  %41 = load i8, ptr %arrayidx280, align 1, !dbg !2645, !tbaa !240
  %conv281 = zext i8 %41 to i16, !dbg !2645
  %sub282 = sub nsw i16 %conv278, %conv281, !dbg !2645
  %arrayidx284 = getelementptr inbounds i16, ptr %level, i64 20, !dbg !2645
  store i16 %sub282, ptr %arrayidx284, align 2, !dbg !2645, !tbaa !246
  %or2871258 = or i16 %or2731257, %sub282, !dbg !2645
  call void @llvm.dbg.value(metadata i16 %or2871258, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 96, metadata !2474, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i32 192, metadata !2476, metadata !DIExpression()), !dbg !2646
  %arrayidx291 = getelementptr inbounds i8, ptr %p_src, i64 96, !dbg !2647
  %42 = load i8, ptr %arrayidx291, align 1, !dbg !2647, !tbaa !240
  %conv292 = zext i8 %42 to i16, !dbg !2647
  %arrayidx294 = getelementptr inbounds i8, ptr %p_dst, i64 192, !dbg !2647
  %43 = load i8, ptr %arrayidx294, align 1, !dbg !2647, !tbaa !240
  %conv295 = zext i8 %43 to i16, !dbg !2647
  %sub296 = sub nsw i16 %conv292, %conv295, !dbg !2647
  %arrayidx298 = getelementptr inbounds i16, ptr %level, i64 21, !dbg !2647
  store i16 %sub296, ptr %arrayidx298, align 2, !dbg !2647, !tbaa !246
  %or3011259 = or i16 %or2871258, %sub296, !dbg !2647
  call void @llvm.dbg.value(metadata i16 %or3011259, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 81, metadata !2477, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i32 161, metadata !2479, metadata !DIExpression()), !dbg !2648
  %arrayidx305 = getelementptr inbounds i8, ptr %p_src, i64 81, !dbg !2649
  %44 = load i8, ptr %arrayidx305, align 1, !dbg !2649, !tbaa !240
  %conv306 = zext i8 %44 to i16, !dbg !2649
  %arrayidx308 = getelementptr inbounds i8, ptr %p_dst, i64 161, !dbg !2649
  %45 = load i8, ptr %arrayidx308, align 1, !dbg !2649, !tbaa !240
  %conv309 = zext i8 %45 to i16, !dbg !2649
  %sub310 = sub nsw i16 %conv306, %conv309, !dbg !2649
  %arrayidx312 = getelementptr inbounds i16, ptr %level, i64 22, !dbg !2649
  store i16 %sub310, ptr %arrayidx312, align 2, !dbg !2649, !tbaa !246
  %or3151260 = or i16 %or3011259, %sub310, !dbg !2649
  call void @llvm.dbg.value(metadata i16 %or3151260, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 66, metadata !2480, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 130, metadata !2482, metadata !DIExpression()), !dbg !2650
  %arrayidx319 = getelementptr inbounds i8, ptr %p_src, i64 66, !dbg !2651
  %46 = load i8, ptr %arrayidx319, align 1, !dbg !2651, !tbaa !240
  %conv320 = zext i8 %46 to i16, !dbg !2651
  %arrayidx322 = getelementptr inbounds i8, ptr %p_dst, i64 130, !dbg !2651
  %47 = load i8, ptr %arrayidx322, align 1, !dbg !2651, !tbaa !240
  %conv323 = zext i8 %47 to i16, !dbg !2651
  %sub324 = sub nsw i16 %conv320, %conv323, !dbg !2651
  %arrayidx326 = getelementptr inbounds i16, ptr %level, i64 23, !dbg !2651
  store i16 %sub324, ptr %arrayidx326, align 2, !dbg !2651, !tbaa !246
  %or3291261 = or i16 %or3151260, %sub324, !dbg !2651
  call void @llvm.dbg.value(metadata i16 %or3291261, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 51, metadata !2483, metadata !DIExpression()), !dbg !2652
  call void @llvm.dbg.value(metadata i32 99, metadata !2485, metadata !DIExpression()), !dbg !2652
  %arrayidx333 = getelementptr inbounds i8, ptr %p_src, i64 51, !dbg !2653
  %48 = load i8, ptr %arrayidx333, align 1, !dbg !2653, !tbaa !240
  %conv334 = zext i8 %48 to i16, !dbg !2653
  %arrayidx336 = getelementptr inbounds i8, ptr %p_dst, i64 99, !dbg !2653
  %49 = load i8, ptr %arrayidx336, align 1, !dbg !2653, !tbaa !240
  %conv337 = zext i8 %49 to i16, !dbg !2653
  %sub338 = sub nsw i16 %conv334, %conv337, !dbg !2653
  %arrayidx340 = getelementptr inbounds i16, ptr %level, i64 24, !dbg !2653
  store i16 %sub338, ptr %arrayidx340, align 2, !dbg !2653, !tbaa !246
  %or3431262 = or i16 %or3291261, %sub338, !dbg !2653
  call void @llvm.dbg.value(metadata i16 %or3431262, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 36, metadata !2486, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i32 68, metadata !2488, metadata !DIExpression()), !dbg !2654
  %arrayidx347 = getelementptr inbounds i8, ptr %p_src, i64 36, !dbg !2655
  %50 = load i8, ptr %arrayidx347, align 1, !dbg !2655, !tbaa !240
  %conv348 = zext i8 %50 to i16, !dbg !2655
  %arrayidx350 = getelementptr inbounds i8, ptr %p_dst, i64 68, !dbg !2655
  %51 = load i8, ptr %arrayidx350, align 1, !dbg !2655, !tbaa !240
  %conv351 = zext i8 %51 to i16, !dbg !2655
  %sub352 = sub nsw i16 %conv348, %conv351, !dbg !2655
  %arrayidx354 = getelementptr inbounds i16, ptr %level, i64 25, !dbg !2655
  store i16 %sub352, ptr %arrayidx354, align 2, !dbg !2655, !tbaa !246
  %or3571263 = or i16 %or3431262, %sub352, !dbg !2655
  call void @llvm.dbg.value(metadata i16 %or3571263, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 21, metadata !2489, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i32 37, metadata !2491, metadata !DIExpression()), !dbg !2656
  %arrayidx361 = getelementptr inbounds i8, ptr %p_src, i64 21, !dbg !2657
  %52 = load i8, ptr %arrayidx361, align 1, !dbg !2657, !tbaa !240
  %conv362 = zext i8 %52 to i16, !dbg !2657
  %arrayidx364 = getelementptr inbounds i8, ptr %p_dst, i64 37, !dbg !2657
  %53 = load i8, ptr %arrayidx364, align 1, !dbg !2657, !tbaa !240
  %conv365 = zext i8 %53 to i16, !dbg !2657
  %sub366 = sub nsw i16 %conv362, %conv365, !dbg !2657
  %arrayidx368 = getelementptr inbounds i16, ptr %level, i64 26, !dbg !2657
  store i16 %sub366, ptr %arrayidx368, align 2, !dbg !2657, !tbaa !246
  %or3711264 = or i16 %or3571263, %sub366, !dbg !2657
  call void @llvm.dbg.value(metadata i16 %or3711264, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 6, metadata !2492, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32 6, metadata !2494, metadata !DIExpression()), !dbg !2658
  %arrayidx375 = getelementptr inbounds i8, ptr %p_src, i64 6, !dbg !2659
  %54 = load i8, ptr %arrayidx375, align 1, !dbg !2659, !tbaa !240
  %conv376 = zext i8 %54 to i16, !dbg !2659
  %arrayidx378 = getelementptr inbounds i8, ptr %p_dst, i64 6, !dbg !2659
  %55 = load i8, ptr %arrayidx378, align 1, !dbg !2659, !tbaa !240
  %conv379 = zext i8 %55 to i16, !dbg !2659
  %sub380 = sub nsw i16 %conv376, %conv379, !dbg !2659
  %arrayidx382 = getelementptr inbounds i16, ptr %level, i64 27, !dbg !2659
  store i16 %sub380, ptr %arrayidx382, align 2, !dbg !2659, !tbaa !246
  %or3851265 = or i16 %or3711264, %sub380, !dbg !2659
  call void @llvm.dbg.value(metadata i16 %or3851265, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 7, metadata !2495, metadata !DIExpression()), !dbg !2660
  call void @llvm.dbg.value(metadata i32 7, metadata !2497, metadata !DIExpression()), !dbg !2660
  %arrayidx389 = getelementptr inbounds i8, ptr %p_src, i64 7, !dbg !2661
  %56 = load i8, ptr %arrayidx389, align 1, !dbg !2661, !tbaa !240
  %conv390 = zext i8 %56 to i16, !dbg !2661
  %arrayidx392 = getelementptr inbounds i8, ptr %p_dst, i64 7, !dbg !2661
  %57 = load i8, ptr %arrayidx392, align 1, !dbg !2661, !tbaa !240
  %conv393 = zext i8 %57 to i16, !dbg !2661
  %sub394 = sub nsw i16 %conv390, %conv393, !dbg !2661
  %arrayidx396 = getelementptr inbounds i16, ptr %level, i64 28, !dbg !2661
  store i16 %sub394, ptr %arrayidx396, align 2, !dbg !2661, !tbaa !246
  %or3991266 = or i16 %or3851265, %sub394, !dbg !2661
  call void @llvm.dbg.value(metadata i16 %or3991266, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 22, metadata !2498, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i32 38, metadata !2500, metadata !DIExpression()), !dbg !2662
  %arrayidx403 = getelementptr inbounds i8, ptr %p_src, i64 22, !dbg !2663
  %58 = load i8, ptr %arrayidx403, align 1, !dbg !2663, !tbaa !240
  %conv404 = zext i8 %58 to i16, !dbg !2663
  %arrayidx406 = getelementptr inbounds i8, ptr %p_dst, i64 38, !dbg !2663
  %59 = load i8, ptr %arrayidx406, align 1, !dbg !2663, !tbaa !240
  %conv407 = zext i8 %59 to i16, !dbg !2663
  %sub408 = sub nsw i16 %conv404, %conv407, !dbg !2663
  %arrayidx410 = getelementptr inbounds i16, ptr %level, i64 29, !dbg !2663
  store i16 %sub408, ptr %arrayidx410, align 2, !dbg !2663, !tbaa !246
  %or4131267 = or i16 %or3991266, %sub408, !dbg !2663
  call void @llvm.dbg.value(metadata i16 %or4131267, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 37, metadata !2501, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 69, metadata !2503, metadata !DIExpression()), !dbg !2664
  %arrayidx417 = getelementptr inbounds i8, ptr %p_src, i64 37, !dbg !2665
  %60 = load i8, ptr %arrayidx417, align 1, !dbg !2665, !tbaa !240
  %conv418 = zext i8 %60 to i16, !dbg !2665
  %arrayidx420 = getelementptr inbounds i8, ptr %p_dst, i64 69, !dbg !2665
  %61 = load i8, ptr %arrayidx420, align 1, !dbg !2665, !tbaa !240
  %conv421 = zext i8 %61 to i16, !dbg !2665
  %sub422 = sub nsw i16 %conv418, %conv421, !dbg !2665
  %arrayidx424 = getelementptr inbounds i16, ptr %level, i64 30, !dbg !2665
  store i16 %sub422, ptr %arrayidx424, align 2, !dbg !2665, !tbaa !246
  %or4271268 = or i16 %or4131267, %sub422, !dbg !2665
  call void @llvm.dbg.value(metadata i16 %or4271268, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 52, metadata !2504, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 100, metadata !2506, metadata !DIExpression()), !dbg !2666
  %arrayidx431 = getelementptr inbounds i8, ptr %p_src, i64 52, !dbg !2667
  %62 = load i8, ptr %arrayidx431, align 1, !dbg !2667, !tbaa !240
  %conv432 = zext i8 %62 to i16, !dbg !2667
  %arrayidx434 = getelementptr inbounds i8, ptr %p_dst, i64 100, !dbg !2667
  %63 = load i8, ptr %arrayidx434, align 1, !dbg !2667, !tbaa !240
  %conv435 = zext i8 %63 to i16, !dbg !2667
  %sub436 = sub nsw i16 %conv432, %conv435, !dbg !2667
  %arrayidx438 = getelementptr inbounds i16, ptr %level, i64 31, !dbg !2667
  store i16 %sub436, ptr %arrayidx438, align 2, !dbg !2667, !tbaa !246
  %or4411269 = or i16 %or4271268, %sub436, !dbg !2667
  call void @llvm.dbg.value(metadata i16 %or4411269, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 67, metadata !2507, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i32 131, metadata !2509, metadata !DIExpression()), !dbg !2668
  %arrayidx445 = getelementptr inbounds i8, ptr %p_src, i64 67, !dbg !2669
  %64 = load i8, ptr %arrayidx445, align 1, !dbg !2669, !tbaa !240
  %conv446 = zext i8 %64 to i16, !dbg !2669
  %arrayidx448 = getelementptr inbounds i8, ptr %p_dst, i64 131, !dbg !2669
  %65 = load i8, ptr %arrayidx448, align 1, !dbg !2669, !tbaa !240
  %conv449 = zext i8 %65 to i16, !dbg !2669
  %sub450 = sub nsw i16 %conv446, %conv449, !dbg !2669
  %arrayidx452 = getelementptr inbounds i16, ptr %level, i64 32, !dbg !2669
  store i16 %sub450, ptr %arrayidx452, align 2, !dbg !2669, !tbaa !246
  %or4551270 = or i16 %or4411269, %sub450, !dbg !2669
  call void @llvm.dbg.value(metadata i16 %or4551270, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 82, metadata !2510, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 162, metadata !2512, metadata !DIExpression()), !dbg !2670
  %arrayidx459 = getelementptr inbounds i8, ptr %p_src, i64 82, !dbg !2671
  %66 = load i8, ptr %arrayidx459, align 1, !dbg !2671, !tbaa !240
  %conv460 = zext i8 %66 to i16, !dbg !2671
  %arrayidx462 = getelementptr inbounds i8, ptr %p_dst, i64 162, !dbg !2671
  %67 = load i8, ptr %arrayidx462, align 1, !dbg !2671, !tbaa !240
  %conv463 = zext i8 %67 to i16, !dbg !2671
  %sub464 = sub nsw i16 %conv460, %conv463, !dbg !2671
  %arrayidx466 = getelementptr inbounds i16, ptr %level, i64 33, !dbg !2671
  store i16 %sub464, ptr %arrayidx466, align 2, !dbg !2671, !tbaa !246
  %or4691271 = or i16 %or4551270, %sub464, !dbg !2671
  call void @llvm.dbg.value(metadata i16 %or4691271, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 97, metadata !2513, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i32 193, metadata !2515, metadata !DIExpression()), !dbg !2672
  %arrayidx473 = getelementptr inbounds i8, ptr %p_src, i64 97, !dbg !2673
  %68 = load i8, ptr %arrayidx473, align 1, !dbg !2673, !tbaa !240
  %conv474 = zext i8 %68 to i16, !dbg !2673
  %arrayidx476 = getelementptr inbounds i8, ptr %p_dst, i64 193, !dbg !2673
  %69 = load i8, ptr %arrayidx476, align 1, !dbg !2673, !tbaa !240
  %conv477 = zext i8 %69 to i16, !dbg !2673
  %sub478 = sub nsw i16 %conv474, %conv477, !dbg !2673
  %arrayidx480 = getelementptr inbounds i16, ptr %level, i64 34, !dbg !2673
  store i16 %sub478, ptr %arrayidx480, align 2, !dbg !2673, !tbaa !246
  %or4831272 = or i16 %or4691271, %sub478, !dbg !2673
  call void @llvm.dbg.value(metadata i16 %or4831272, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 112, metadata !2516, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 224, metadata !2518, metadata !DIExpression()), !dbg !2674
  %arrayidx487 = getelementptr inbounds i8, ptr %p_src, i64 112, !dbg !2675
  %70 = load i8, ptr %arrayidx487, align 1, !dbg !2675, !tbaa !240
  %conv488 = zext i8 %70 to i16, !dbg !2675
  %arrayidx490 = getelementptr inbounds i8, ptr %p_dst, i64 224, !dbg !2675
  %71 = load i8, ptr %arrayidx490, align 1, !dbg !2675, !tbaa !240
  %conv491 = zext i8 %71 to i16, !dbg !2675
  %sub492 = sub nsw i16 %conv488, %conv491, !dbg !2675
  %arrayidx494 = getelementptr inbounds i16, ptr %level, i64 35, !dbg !2675
  store i16 %sub492, ptr %arrayidx494, align 2, !dbg !2675, !tbaa !246
  %or4971273 = or i16 %or4831272, %sub492, !dbg !2675
  call void @llvm.dbg.value(metadata i16 %or4971273, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 113, metadata !2519, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i32 225, metadata !2521, metadata !DIExpression()), !dbg !2676
  %arrayidx501 = getelementptr inbounds i8, ptr %p_src, i64 113, !dbg !2677
  %72 = load i8, ptr %arrayidx501, align 1, !dbg !2677, !tbaa !240
  %conv502 = zext i8 %72 to i16, !dbg !2677
  %arrayidx504 = getelementptr inbounds i8, ptr %p_dst, i64 225, !dbg !2677
  %73 = load i8, ptr %arrayidx504, align 1, !dbg !2677, !tbaa !240
  %conv505 = zext i8 %73 to i16, !dbg !2677
  %sub506 = sub nsw i16 %conv502, %conv505, !dbg !2677
  %arrayidx508 = getelementptr inbounds i16, ptr %level, i64 36, !dbg !2677
  store i16 %sub506, ptr %arrayidx508, align 2, !dbg !2677, !tbaa !246
  %or5111274 = or i16 %or4971273, %sub506, !dbg !2677
  call void @llvm.dbg.value(metadata i16 %or5111274, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 98, metadata !2522, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.value(metadata i32 194, metadata !2524, metadata !DIExpression()), !dbg !2678
  %arrayidx515 = getelementptr inbounds i8, ptr %p_src, i64 98, !dbg !2679
  %74 = load i8, ptr %arrayidx515, align 1, !dbg !2679, !tbaa !240
  %conv516 = zext i8 %74 to i16, !dbg !2679
  %arrayidx518 = getelementptr inbounds i8, ptr %p_dst, i64 194, !dbg !2679
  %75 = load i8, ptr %arrayidx518, align 1, !dbg !2679, !tbaa !240
  %conv519 = zext i8 %75 to i16, !dbg !2679
  %sub520 = sub nsw i16 %conv516, %conv519, !dbg !2679
  %arrayidx522 = getelementptr inbounds i16, ptr %level, i64 37, !dbg !2679
  store i16 %sub520, ptr %arrayidx522, align 2, !dbg !2679, !tbaa !246
  %or5251275 = or i16 %or5111274, %sub520, !dbg !2679
  call void @llvm.dbg.value(metadata i16 %or5251275, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 83, metadata !2525, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 163, metadata !2527, metadata !DIExpression()), !dbg !2680
  %arrayidx529 = getelementptr inbounds i8, ptr %p_src, i64 83, !dbg !2681
  %76 = load i8, ptr %arrayidx529, align 1, !dbg !2681, !tbaa !240
  %conv530 = zext i8 %76 to i16, !dbg !2681
  %arrayidx532 = getelementptr inbounds i8, ptr %p_dst, i64 163, !dbg !2681
  %77 = load i8, ptr %arrayidx532, align 1, !dbg !2681, !tbaa !240
  %conv533 = zext i8 %77 to i16, !dbg !2681
  %sub534 = sub nsw i16 %conv530, %conv533, !dbg !2681
  %arrayidx536 = getelementptr inbounds i16, ptr %level, i64 38, !dbg !2681
  store i16 %sub534, ptr %arrayidx536, align 2, !dbg !2681, !tbaa !246
  %or5391276 = or i16 %or5251275, %sub534, !dbg !2681
  call void @llvm.dbg.value(metadata i16 %or5391276, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 68, metadata !2528, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 132, metadata !2530, metadata !DIExpression()), !dbg !2682
  %arrayidx543 = getelementptr inbounds i8, ptr %p_src, i64 68, !dbg !2683
  %78 = load i8, ptr %arrayidx543, align 1, !dbg !2683, !tbaa !240
  %conv544 = zext i8 %78 to i16, !dbg !2683
  %arrayidx546 = getelementptr inbounds i8, ptr %p_dst, i64 132, !dbg !2683
  %79 = load i8, ptr %arrayidx546, align 1, !dbg !2683, !tbaa !240
  %conv547 = zext i8 %79 to i16, !dbg !2683
  %sub548 = sub nsw i16 %conv544, %conv547, !dbg !2683
  %arrayidx550 = getelementptr inbounds i16, ptr %level, i64 39, !dbg !2683
  store i16 %sub548, ptr %arrayidx550, align 2, !dbg !2683, !tbaa !246
  %or5531277 = or i16 %or5391276, %sub548, !dbg !2683
  call void @llvm.dbg.value(metadata i16 %or5531277, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 53, metadata !2531, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i32 101, metadata !2533, metadata !DIExpression()), !dbg !2684
  %arrayidx557 = getelementptr inbounds i8, ptr %p_src, i64 53, !dbg !2685
  %80 = load i8, ptr %arrayidx557, align 1, !dbg !2685, !tbaa !240
  %conv558 = zext i8 %80 to i16, !dbg !2685
  %arrayidx560 = getelementptr inbounds i8, ptr %p_dst, i64 101, !dbg !2685
  %81 = load i8, ptr %arrayidx560, align 1, !dbg !2685, !tbaa !240
  %conv561 = zext i8 %81 to i16, !dbg !2685
  %sub562 = sub nsw i16 %conv558, %conv561, !dbg !2685
  %arrayidx564 = getelementptr inbounds i16, ptr %level, i64 40, !dbg !2685
  store i16 %sub562, ptr %arrayidx564, align 2, !dbg !2685, !tbaa !246
  %or5671278 = or i16 %or5531277, %sub562, !dbg !2685
  call void @llvm.dbg.value(metadata i16 %or5671278, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 38, metadata !2534, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i32 70, metadata !2536, metadata !DIExpression()), !dbg !2686
  %arrayidx571 = getelementptr inbounds i8, ptr %p_src, i64 38, !dbg !2687
  %82 = load i8, ptr %arrayidx571, align 1, !dbg !2687, !tbaa !240
  %conv572 = zext i8 %82 to i16, !dbg !2687
  %arrayidx574 = getelementptr inbounds i8, ptr %p_dst, i64 70, !dbg !2687
  %83 = load i8, ptr %arrayidx574, align 1, !dbg !2687, !tbaa !240
  %conv575 = zext i8 %83 to i16, !dbg !2687
  %sub576 = sub nsw i16 %conv572, %conv575, !dbg !2687
  %arrayidx578 = getelementptr inbounds i16, ptr %level, i64 41, !dbg !2687
  store i16 %sub576, ptr %arrayidx578, align 2, !dbg !2687, !tbaa !246
  %or5811279 = or i16 %or5671278, %sub576, !dbg !2687
  call void @llvm.dbg.value(metadata i16 %or5811279, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 23, metadata !2537, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i32 39, metadata !2539, metadata !DIExpression()), !dbg !2688
  %arrayidx585 = getelementptr inbounds i8, ptr %p_src, i64 23, !dbg !2689
  %84 = load i8, ptr %arrayidx585, align 1, !dbg !2689, !tbaa !240
  %conv586 = zext i8 %84 to i16, !dbg !2689
  %arrayidx588 = getelementptr inbounds i8, ptr %p_dst, i64 39, !dbg !2689
  %85 = load i8, ptr %arrayidx588, align 1, !dbg !2689, !tbaa !240
  %conv589 = zext i8 %85 to i16, !dbg !2689
  %sub590 = sub nsw i16 %conv586, %conv589, !dbg !2689
  %arrayidx592 = getelementptr inbounds i16, ptr %level, i64 42, !dbg !2689
  store i16 %sub590, ptr %arrayidx592, align 2, !dbg !2689, !tbaa !246
  %or5951280 = or i16 %or5811279, %sub590, !dbg !2689
  call void @llvm.dbg.value(metadata i16 %or5951280, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 39, metadata !2540, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.value(metadata i32 71, metadata !2542, metadata !DIExpression()), !dbg !2690
  %arrayidx599 = getelementptr inbounds i8, ptr %p_src, i64 39, !dbg !2691
  %86 = load i8, ptr %arrayidx599, align 1, !dbg !2691, !tbaa !240
  %conv600 = zext i8 %86 to i16, !dbg !2691
  %arrayidx602 = getelementptr inbounds i8, ptr %p_dst, i64 71, !dbg !2691
  %87 = load i8, ptr %arrayidx602, align 1, !dbg !2691, !tbaa !240
  %conv603 = zext i8 %87 to i16, !dbg !2691
  %sub604 = sub nsw i16 %conv600, %conv603, !dbg !2691
  %arrayidx606 = getelementptr inbounds i16, ptr %level, i64 43, !dbg !2691
  store i16 %sub604, ptr %arrayidx606, align 2, !dbg !2691, !tbaa !246
  %or6091281 = or i16 %or5951280, %sub604, !dbg !2691
  call void @llvm.dbg.value(metadata i16 %or6091281, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 54, metadata !2543, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 102, metadata !2545, metadata !DIExpression()), !dbg !2692
  %arrayidx613 = getelementptr inbounds i8, ptr %p_src, i64 54, !dbg !2693
  %88 = load i8, ptr %arrayidx613, align 1, !dbg !2693, !tbaa !240
  %conv614 = zext i8 %88 to i16, !dbg !2693
  %arrayidx616 = getelementptr inbounds i8, ptr %p_dst, i64 102, !dbg !2693
  %89 = load i8, ptr %arrayidx616, align 1, !dbg !2693, !tbaa !240
  %conv617 = zext i8 %89 to i16, !dbg !2693
  %sub618 = sub nsw i16 %conv614, %conv617, !dbg !2693
  %arrayidx620 = getelementptr inbounds i16, ptr %level, i64 44, !dbg !2693
  store i16 %sub618, ptr %arrayidx620, align 2, !dbg !2693, !tbaa !246
  %or6231282 = or i16 %or6091281, %sub618, !dbg !2693
  call void @llvm.dbg.value(metadata i16 %or6231282, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 69, metadata !2546, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i32 133, metadata !2548, metadata !DIExpression()), !dbg !2694
  %arrayidx627 = getelementptr inbounds i8, ptr %p_src, i64 69, !dbg !2695
  %90 = load i8, ptr %arrayidx627, align 1, !dbg !2695, !tbaa !240
  %conv628 = zext i8 %90 to i16, !dbg !2695
  %arrayidx630 = getelementptr inbounds i8, ptr %p_dst, i64 133, !dbg !2695
  %91 = load i8, ptr %arrayidx630, align 1, !dbg !2695, !tbaa !240
  %conv631 = zext i8 %91 to i16, !dbg !2695
  %sub632 = sub nsw i16 %conv628, %conv631, !dbg !2695
  %arrayidx634 = getelementptr inbounds i16, ptr %level, i64 45, !dbg !2695
  store i16 %sub632, ptr %arrayidx634, align 2, !dbg !2695, !tbaa !246
  %or6371283 = or i16 %or6231282, %sub632, !dbg !2695
  call void @llvm.dbg.value(metadata i16 %or6371283, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 84, metadata !2549, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i32 164, metadata !2551, metadata !DIExpression()), !dbg !2696
  %arrayidx641 = getelementptr inbounds i8, ptr %p_src, i64 84, !dbg !2697
  %92 = load i8, ptr %arrayidx641, align 1, !dbg !2697, !tbaa !240
  %conv642 = zext i8 %92 to i16, !dbg !2697
  %arrayidx644 = getelementptr inbounds i8, ptr %p_dst, i64 164, !dbg !2697
  %93 = load i8, ptr %arrayidx644, align 1, !dbg !2697, !tbaa !240
  %conv645 = zext i8 %93 to i16, !dbg !2697
  %sub646 = sub nsw i16 %conv642, %conv645, !dbg !2697
  %arrayidx648 = getelementptr inbounds i16, ptr %level, i64 46, !dbg !2697
  store i16 %sub646, ptr %arrayidx648, align 2, !dbg !2697, !tbaa !246
  %or6511284 = or i16 %or6371283, %sub646, !dbg !2697
  call void @llvm.dbg.value(metadata i16 %or6511284, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 99, metadata !2552, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 195, metadata !2554, metadata !DIExpression()), !dbg !2698
  %arrayidx655 = getelementptr inbounds i8, ptr %p_src, i64 99, !dbg !2699
  %94 = load i8, ptr %arrayidx655, align 1, !dbg !2699, !tbaa !240
  %conv656 = zext i8 %94 to i16, !dbg !2699
  %arrayidx658 = getelementptr inbounds i8, ptr %p_dst, i64 195, !dbg !2699
  %95 = load i8, ptr %arrayidx658, align 1, !dbg !2699, !tbaa !240
  %conv659 = zext i8 %95 to i16, !dbg !2699
  %sub660 = sub nsw i16 %conv656, %conv659, !dbg !2699
  %arrayidx662 = getelementptr inbounds i16, ptr %level, i64 47, !dbg !2699
  store i16 %sub660, ptr %arrayidx662, align 2, !dbg !2699, !tbaa !246
  %or6651285 = or i16 %or6511284, %sub660, !dbg !2699
  call void @llvm.dbg.value(metadata i16 %or6651285, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 114, metadata !2555, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 226, metadata !2557, metadata !DIExpression()), !dbg !2700
  %arrayidx669 = getelementptr inbounds i8, ptr %p_src, i64 114, !dbg !2701
  %96 = load i8, ptr %arrayidx669, align 1, !dbg !2701, !tbaa !240
  %conv670 = zext i8 %96 to i16, !dbg !2701
  %arrayidx672 = getelementptr inbounds i8, ptr %p_dst, i64 226, !dbg !2701
  %97 = load i8, ptr %arrayidx672, align 1, !dbg !2701, !tbaa !240
  %conv673 = zext i8 %97 to i16, !dbg !2701
  %sub674 = sub nsw i16 %conv670, %conv673, !dbg !2701
  %arrayidx676 = getelementptr inbounds i16, ptr %level, i64 48, !dbg !2701
  store i16 %sub674, ptr %arrayidx676, align 2, !dbg !2701, !tbaa !246
  %or6791286 = or i16 %or6651285, %sub674, !dbg !2701
  call void @llvm.dbg.value(metadata i16 %or6791286, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 115, metadata !2558, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 227, metadata !2560, metadata !DIExpression()), !dbg !2702
  %arrayidx683 = getelementptr inbounds i8, ptr %p_src, i64 115, !dbg !2703
  %98 = load i8, ptr %arrayidx683, align 1, !dbg !2703, !tbaa !240
  %conv684 = zext i8 %98 to i16, !dbg !2703
  %arrayidx686 = getelementptr inbounds i8, ptr %p_dst, i64 227, !dbg !2703
  %99 = load i8, ptr %arrayidx686, align 1, !dbg !2703, !tbaa !240
  %conv687 = zext i8 %99 to i16, !dbg !2703
  %sub688 = sub nsw i16 %conv684, %conv687, !dbg !2703
  %arrayidx690 = getelementptr inbounds i16, ptr %level, i64 49, !dbg !2703
  store i16 %sub688, ptr %arrayidx690, align 2, !dbg !2703, !tbaa !246
  %or6931287 = or i16 %or6791286, %sub688, !dbg !2703
  call void @llvm.dbg.value(metadata i16 %or6931287, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 100, metadata !2561, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 196, metadata !2563, metadata !DIExpression()), !dbg !2704
  %arrayidx697 = getelementptr inbounds i8, ptr %p_src, i64 100, !dbg !2705
  %100 = load i8, ptr %arrayidx697, align 1, !dbg !2705, !tbaa !240
  %conv698 = zext i8 %100 to i16, !dbg !2705
  %arrayidx700 = getelementptr inbounds i8, ptr %p_dst, i64 196, !dbg !2705
  %101 = load i8, ptr %arrayidx700, align 1, !dbg !2705, !tbaa !240
  %conv701 = zext i8 %101 to i16, !dbg !2705
  %sub702 = sub nsw i16 %conv698, %conv701, !dbg !2705
  %arrayidx704 = getelementptr inbounds i16, ptr %level, i64 50, !dbg !2705
  store i16 %sub702, ptr %arrayidx704, align 2, !dbg !2705, !tbaa !246
  %or7071288 = or i16 %or6931287, %sub702, !dbg !2705
  call void @llvm.dbg.value(metadata i16 %or7071288, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 85, metadata !2564, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i32 165, metadata !2566, metadata !DIExpression()), !dbg !2706
  %arrayidx711 = getelementptr inbounds i8, ptr %p_src, i64 85, !dbg !2707
  %102 = load i8, ptr %arrayidx711, align 1, !dbg !2707, !tbaa !240
  %conv712 = zext i8 %102 to i16, !dbg !2707
  %arrayidx714 = getelementptr inbounds i8, ptr %p_dst, i64 165, !dbg !2707
  %103 = load i8, ptr %arrayidx714, align 1, !dbg !2707, !tbaa !240
  %conv715 = zext i8 %103 to i16, !dbg !2707
  %sub716 = sub nsw i16 %conv712, %conv715, !dbg !2707
  %arrayidx718 = getelementptr inbounds i16, ptr %level, i64 51, !dbg !2707
  store i16 %sub716, ptr %arrayidx718, align 2, !dbg !2707, !tbaa !246
  %or7211289 = or i16 %or7071288, %sub716, !dbg !2707
  call void @llvm.dbg.value(metadata i16 %or7211289, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 70, metadata !2567, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 134, metadata !2569, metadata !DIExpression()), !dbg !2708
  %arrayidx725 = getelementptr inbounds i8, ptr %p_src, i64 70, !dbg !2709
  %104 = load i8, ptr %arrayidx725, align 1, !dbg !2709, !tbaa !240
  %conv726 = zext i8 %104 to i16, !dbg !2709
  %arrayidx728 = getelementptr inbounds i8, ptr %p_dst, i64 134, !dbg !2709
  %105 = load i8, ptr %arrayidx728, align 1, !dbg !2709, !tbaa !240
  %conv729 = zext i8 %105 to i16, !dbg !2709
  %sub730 = sub nsw i16 %conv726, %conv729, !dbg !2709
  %arrayidx732 = getelementptr inbounds i16, ptr %level, i64 52, !dbg !2709
  store i16 %sub730, ptr %arrayidx732, align 2, !dbg !2709, !tbaa !246
  %or7351290 = or i16 %or7211289, %sub730, !dbg !2709
  call void @llvm.dbg.value(metadata i16 %or7351290, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 55, metadata !2570, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 103, metadata !2572, metadata !DIExpression()), !dbg !2710
  %arrayidx739 = getelementptr inbounds i8, ptr %p_src, i64 55, !dbg !2711
  %106 = load i8, ptr %arrayidx739, align 1, !dbg !2711, !tbaa !240
  %conv740 = zext i8 %106 to i16, !dbg !2711
  %arrayidx742 = getelementptr inbounds i8, ptr %p_dst, i64 103, !dbg !2711
  %107 = load i8, ptr %arrayidx742, align 1, !dbg !2711, !tbaa !240
  %conv743 = zext i8 %107 to i16, !dbg !2711
  %sub744 = sub nsw i16 %conv740, %conv743, !dbg !2711
  %arrayidx746 = getelementptr inbounds i16, ptr %level, i64 53, !dbg !2711
  store i16 %sub744, ptr %arrayidx746, align 2, !dbg !2711, !tbaa !246
  %or7491291 = or i16 %or7351290, %sub744, !dbg !2711
  call void @llvm.dbg.value(metadata i16 %or7491291, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 71, metadata !2573, metadata !DIExpression()), !dbg !2712
  call void @llvm.dbg.value(metadata i32 135, metadata !2575, metadata !DIExpression()), !dbg !2712
  %arrayidx753 = getelementptr inbounds i8, ptr %p_src, i64 71, !dbg !2713
  %108 = load i8, ptr %arrayidx753, align 1, !dbg !2713, !tbaa !240
  %conv754 = zext i8 %108 to i16, !dbg !2713
  %arrayidx756 = getelementptr inbounds i8, ptr %p_dst, i64 135, !dbg !2713
  %109 = load i8, ptr %arrayidx756, align 1, !dbg !2713, !tbaa !240
  %conv757 = zext i8 %109 to i16, !dbg !2713
  %sub758 = sub nsw i16 %conv754, %conv757, !dbg !2713
  %arrayidx760 = getelementptr inbounds i16, ptr %level, i64 54, !dbg !2713
  store i16 %sub758, ptr %arrayidx760, align 2, !dbg !2713, !tbaa !246
  %or7631292 = or i16 %or7491291, %sub758, !dbg !2713
  call void @llvm.dbg.value(metadata i16 %or7631292, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 86, metadata !2576, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32 166, metadata !2578, metadata !DIExpression()), !dbg !2714
  %arrayidx767 = getelementptr inbounds i8, ptr %p_src, i64 86, !dbg !2715
  %110 = load i8, ptr %arrayidx767, align 1, !dbg !2715, !tbaa !240
  %conv768 = zext i8 %110 to i16, !dbg !2715
  %arrayidx770 = getelementptr inbounds i8, ptr %p_dst, i64 166, !dbg !2715
  %111 = load i8, ptr %arrayidx770, align 1, !dbg !2715, !tbaa !240
  %conv771 = zext i8 %111 to i16, !dbg !2715
  %sub772 = sub nsw i16 %conv768, %conv771, !dbg !2715
  %arrayidx774 = getelementptr inbounds i16, ptr %level, i64 55, !dbg !2715
  store i16 %sub772, ptr %arrayidx774, align 2, !dbg !2715, !tbaa !246
  %or7771293 = or i16 %or7631292, %sub772, !dbg !2715
  call void @llvm.dbg.value(metadata i16 %or7771293, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 101, metadata !2579, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 197, metadata !2581, metadata !DIExpression()), !dbg !2716
  %arrayidx781 = getelementptr inbounds i8, ptr %p_src, i64 101, !dbg !2717
  %112 = load i8, ptr %arrayidx781, align 1, !dbg !2717, !tbaa !240
  %conv782 = zext i8 %112 to i16, !dbg !2717
  %arrayidx784 = getelementptr inbounds i8, ptr %p_dst, i64 197, !dbg !2717
  %113 = load i8, ptr %arrayidx784, align 1, !dbg !2717, !tbaa !240
  %conv785 = zext i8 %113 to i16, !dbg !2717
  %sub786 = sub nsw i16 %conv782, %conv785, !dbg !2717
  %arrayidx788 = getelementptr inbounds i16, ptr %level, i64 56, !dbg !2717
  store i16 %sub786, ptr %arrayidx788, align 2, !dbg !2717, !tbaa !246
  %or7911294 = or i16 %or7771293, %sub786, !dbg !2717
  call void @llvm.dbg.value(metadata i16 %or7911294, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 116, metadata !2582, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 228, metadata !2584, metadata !DIExpression()), !dbg !2718
  %arrayidx795 = getelementptr inbounds i8, ptr %p_src, i64 116, !dbg !2719
  %114 = load i8, ptr %arrayidx795, align 1, !dbg !2719, !tbaa !240
  %conv796 = zext i8 %114 to i16, !dbg !2719
  %arrayidx798 = getelementptr inbounds i8, ptr %p_dst, i64 228, !dbg !2719
  %115 = load i8, ptr %arrayidx798, align 1, !dbg !2719, !tbaa !240
  %conv799 = zext i8 %115 to i16, !dbg !2719
  %sub800 = sub nsw i16 %conv796, %conv799, !dbg !2719
  %arrayidx802 = getelementptr inbounds i16, ptr %level, i64 57, !dbg !2719
  store i16 %sub800, ptr %arrayidx802, align 2, !dbg !2719, !tbaa !246
  %or8051295 = or i16 %or7911294, %sub800, !dbg !2719
  call void @llvm.dbg.value(metadata i16 %or8051295, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 117, metadata !2585, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 229, metadata !2587, metadata !DIExpression()), !dbg !2720
  %arrayidx809 = getelementptr inbounds i8, ptr %p_src, i64 117, !dbg !2721
  %116 = load i8, ptr %arrayidx809, align 1, !dbg !2721, !tbaa !240
  %conv810 = zext i8 %116 to i16, !dbg !2721
  %arrayidx812 = getelementptr inbounds i8, ptr %p_dst, i64 229, !dbg !2721
  %117 = load i8, ptr %arrayidx812, align 1, !dbg !2721, !tbaa !240
  %conv813 = zext i8 %117 to i16, !dbg !2721
  %sub814 = sub nsw i16 %conv810, %conv813, !dbg !2721
  %arrayidx816 = getelementptr inbounds i16, ptr %level, i64 58, !dbg !2721
  store i16 %sub814, ptr %arrayidx816, align 2, !dbg !2721, !tbaa !246
  %or8191296 = or i16 %or8051295, %sub814, !dbg !2721
  call void @llvm.dbg.value(metadata i16 %or8191296, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 102, metadata !2588, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i32 198, metadata !2590, metadata !DIExpression()), !dbg !2722
  %arrayidx823 = getelementptr inbounds i8, ptr %p_src, i64 102, !dbg !2723
  %118 = load i8, ptr %arrayidx823, align 1, !dbg !2723, !tbaa !240
  %conv824 = zext i8 %118 to i16, !dbg !2723
  %arrayidx826 = getelementptr inbounds i8, ptr %p_dst, i64 198, !dbg !2723
  %119 = load i8, ptr %arrayidx826, align 1, !dbg !2723, !tbaa !240
  %conv827 = zext i8 %119 to i16, !dbg !2723
  %sub828 = sub nsw i16 %conv824, %conv827, !dbg !2723
  %arrayidx830 = getelementptr inbounds i16, ptr %level, i64 59, !dbg !2723
  store i16 %sub828, ptr %arrayidx830, align 2, !dbg !2723, !tbaa !246
  %or8331297 = or i16 %or8191296, %sub828, !dbg !2723
  call void @llvm.dbg.value(metadata i16 %or8331297, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 87, metadata !2591, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i32 167, metadata !2593, metadata !DIExpression()), !dbg !2724
  %arrayidx837 = getelementptr inbounds i8, ptr %p_src, i64 87, !dbg !2725
  %120 = load i8, ptr %arrayidx837, align 1, !dbg !2725, !tbaa !240
  %conv838 = zext i8 %120 to i16, !dbg !2725
  %arrayidx840 = getelementptr inbounds i8, ptr %p_dst, i64 167, !dbg !2725
  %121 = load i8, ptr %arrayidx840, align 1, !dbg !2725, !tbaa !240
  %conv841 = zext i8 %121 to i16, !dbg !2725
  %sub842 = sub nsw i16 %conv838, %conv841, !dbg !2725
  %arrayidx844 = getelementptr inbounds i16, ptr %level, i64 60, !dbg !2725
  store i16 %sub842, ptr %arrayidx844, align 2, !dbg !2725, !tbaa !246
  %or8471298 = or i16 %or8331297, %sub842, !dbg !2725
  call void @llvm.dbg.value(metadata i16 %or8471298, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 103, metadata !2594, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i32 199, metadata !2596, metadata !DIExpression()), !dbg !2726
  %arrayidx851 = getelementptr inbounds i8, ptr %p_src, i64 103, !dbg !2727
  %122 = load i8, ptr %arrayidx851, align 1, !dbg !2727, !tbaa !240
  %conv852 = zext i8 %122 to i16, !dbg !2727
  %arrayidx854 = getelementptr inbounds i8, ptr %p_dst, i64 199, !dbg !2727
  %123 = load i8, ptr %arrayidx854, align 1, !dbg !2727, !tbaa !240
  %conv855 = zext i8 %123 to i16, !dbg !2727
  %sub856 = sub nsw i16 %conv852, %conv855, !dbg !2727
  %arrayidx858 = getelementptr inbounds i16, ptr %level, i64 61, !dbg !2727
  store i16 %sub856, ptr %arrayidx858, align 2, !dbg !2727, !tbaa !246
  %or8611299 = or i16 %or8471298, %sub856, !dbg !2727
  call void @llvm.dbg.value(metadata i16 %or8611299, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 118, metadata !2597, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 230, metadata !2599, metadata !DIExpression()), !dbg !2728
  %arrayidx865 = getelementptr inbounds i8, ptr %p_src, i64 118, !dbg !2729
  %124 = load i8, ptr %arrayidx865, align 1, !dbg !2729, !tbaa !240
  %conv866 = zext i8 %124 to i16, !dbg !2729
  %arrayidx868 = getelementptr inbounds i8, ptr %p_dst, i64 230, !dbg !2729
  %125 = load i8, ptr %arrayidx868, align 1, !dbg !2729, !tbaa !240
  %conv869 = zext i8 %125 to i16, !dbg !2729
  %sub870 = sub nsw i16 %conv866, %conv869, !dbg !2729
  %arrayidx872 = getelementptr inbounds i16, ptr %level, i64 62, !dbg !2729
  store i16 %sub870, ptr %arrayidx872, align 2, !dbg !2729, !tbaa !246
  %or8751300 = or i16 %or8611299, %sub870, !dbg !2729
  call void @llvm.dbg.value(metadata i16 %or8751300, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  call void @llvm.dbg.value(metadata i32 119, metadata !2600, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 231, metadata !2602, metadata !DIExpression()), !dbg !2730
  %arrayidx879 = getelementptr inbounds i8, ptr %p_src, i64 119, !dbg !2731
  %126 = load i8, ptr %arrayidx879, align 1, !dbg !2731, !tbaa !240
  %conv880 = zext i8 %126 to i16, !dbg !2731
  %arrayidx882 = getelementptr inbounds i8, ptr %p_dst, i64 231, !dbg !2731
  %127 = load i8, ptr %arrayidx882, align 1, !dbg !2731, !tbaa !240
  %conv883 = zext i8 %127 to i16, !dbg !2731
  %sub884 = sub nsw i16 %conv880, %conv883, !dbg !2731
  %arrayidx886 = getelementptr inbounds i16, ptr %level, i64 63, !dbg !2731
  store i16 %sub884, ptr %arrayidx886, align 2, !dbg !2731, !tbaa !246
  %or8891301 = or i16 %or8751300, %sub884, !dbg !2731
  call void @llvm.dbg.value(metadata i16 %or8891301, metadata !2410, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2603
  %128 = load i64, ptr %p_src, align 8, !dbg !2732, !tbaa !240
  store i64 %128, ptr %p_dst, align 8, !dbg !2732, !tbaa !240
  %129 = load i64, ptr %arrayidx25, align 8, !dbg !2732, !tbaa !240
  store i64 %129, ptr %arrayidx28, align 8, !dbg !2732, !tbaa !240
  %130 = load i64, ptr %arrayidx39, align 8, !dbg !2732, !tbaa !240
  store i64 %130, ptr %arrayidx42, align 8, !dbg !2732, !tbaa !240
  %131 = load i64, ptr %arrayidx123, align 8, !dbg !2732, !tbaa !240
  store i64 %131, ptr %arrayidx126, align 8, !dbg !2732, !tbaa !240
  %132 = load i64, ptr %arrayidx137, align 8, !dbg !2732, !tbaa !240
  store i64 %132, ptr %arrayidx140, align 8, !dbg !2732, !tbaa !240
  %133 = load i64, ptr %arrayidx277, align 8, !dbg !2732, !tbaa !240
  store i64 %133, ptr %arrayidx280, align 8, !dbg !2732, !tbaa !240
  %134 = load i64, ptr %arrayidx291, align 8, !dbg !2732, !tbaa !240
  store i64 %134, ptr %arrayidx294, align 8, !dbg !2732, !tbaa !240
  %135 = load i64, ptr %arrayidx487, align 8, !dbg !2732, !tbaa !240
  store i64 %135, ptr %arrayidx490, align 8, !dbg !2732, !tbaa !240
  %tobool = icmp ne i16 %or8891301, 0, !dbg !2733
  %lnot.ext = zext i1 %tobool to i32, !dbg !2734
  ret i32 %lnot.ext, !dbg !2735
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @zigzag_sub_4x4_frame(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %p_src, ptr nocapture noundef %p_dst) #8 !dbg !2736 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !2738, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata ptr %p_src, metadata !2739, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !2740, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 0, metadata !2741, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i32 0, metadata !2742, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2744, metadata !DIExpression()), !dbg !2791
  %0 = load i8, ptr %p_src, align 1, !dbg !2792, !tbaa !240
  %conv = zext i8 %0 to i16, !dbg !2792
  %1 = load i8, ptr %p_dst, align 1, !dbg !2792, !tbaa !240
  %conv3 = zext i8 %1 to i16, !dbg !2792
  %sub = sub nsw i16 %conv, %conv3, !dbg !2792
  store i16 %sub, ptr %level, align 2, !dbg !2792, !tbaa !246
  call void @llvm.dbg.value(metadata i16 %sub, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 1, metadata !2745, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i32 1, metadata !2747, metadata !DIExpression()), !dbg !2793
  %arrayidx11 = getelementptr inbounds i8, ptr %p_src, i64 1, !dbg !2794
  %2 = load i8, ptr %arrayidx11, align 1, !dbg !2794, !tbaa !240
  %conv12 = zext i8 %2 to i16, !dbg !2794
  %arrayidx14 = getelementptr inbounds i8, ptr %p_dst, i64 1, !dbg !2794
  %3 = load i8, ptr %arrayidx14, align 1, !dbg !2794, !tbaa !240
  %conv15 = zext i8 %3 to i16, !dbg !2794
  %sub16 = sub nsw i16 %conv12, %conv15, !dbg !2794
  %arrayidx18 = getelementptr inbounds i16, ptr %level, i64 1, !dbg !2794
  store i16 %sub16, ptr %arrayidx18, align 2, !dbg !2794, !tbaa !246
  %or21311 = or i16 %sub16, %sub, !dbg !2794
  call void @llvm.dbg.value(metadata i16 %or21311, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 16, metadata !2748, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i32 32, metadata !2750, metadata !DIExpression()), !dbg !2795
  %arrayidx25 = getelementptr inbounds i8, ptr %p_src, i64 16, !dbg !2796
  %4 = load i8, ptr %arrayidx25, align 1, !dbg !2796, !tbaa !240
  %conv26 = zext i8 %4 to i16, !dbg !2796
  %arrayidx28 = getelementptr inbounds i8, ptr %p_dst, i64 32, !dbg !2796
  %5 = load i8, ptr %arrayidx28, align 1, !dbg !2796, !tbaa !240
  %conv29 = zext i8 %5 to i16, !dbg !2796
  %sub30 = sub nsw i16 %conv26, %conv29, !dbg !2796
  %arrayidx32 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !2796
  store i16 %sub30, ptr %arrayidx32, align 2, !dbg !2796, !tbaa !246
  %or35312 = or i16 %or21311, %sub30, !dbg !2796
  call void @llvm.dbg.value(metadata i16 %or35312, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 32, metadata !2751, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i32 64, metadata !2753, metadata !DIExpression()), !dbg !2797
  %arrayidx39 = getelementptr inbounds i8, ptr %p_src, i64 32, !dbg !2798
  %6 = load i8, ptr %arrayidx39, align 1, !dbg !2798, !tbaa !240
  %conv40 = zext i8 %6 to i16, !dbg !2798
  %arrayidx42 = getelementptr inbounds i8, ptr %p_dst, i64 64, !dbg !2798
  %7 = load i8, ptr %arrayidx42, align 1, !dbg !2798, !tbaa !240
  %conv43 = zext i8 %7 to i16, !dbg !2798
  %sub44 = sub nsw i16 %conv40, %conv43, !dbg !2798
  %arrayidx46 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !2798
  store i16 %sub44, ptr %arrayidx46, align 2, !dbg !2798, !tbaa !246
  %or49313 = or i16 %or35312, %sub44, !dbg !2798
  call void @llvm.dbg.value(metadata i16 %or49313, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 17, metadata !2754, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 33, metadata !2756, metadata !DIExpression()), !dbg !2799
  %arrayidx53 = getelementptr inbounds i8, ptr %p_src, i64 17, !dbg !2800
  %8 = load i8, ptr %arrayidx53, align 1, !dbg !2800, !tbaa !240
  %conv54 = zext i8 %8 to i16, !dbg !2800
  %arrayidx56 = getelementptr inbounds i8, ptr %p_dst, i64 33, !dbg !2800
  %9 = load i8, ptr %arrayidx56, align 1, !dbg !2800, !tbaa !240
  %conv57 = zext i8 %9 to i16, !dbg !2800
  %sub58 = sub nsw i16 %conv54, %conv57, !dbg !2800
  %arrayidx60 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !2800
  store i16 %sub58, ptr %arrayidx60, align 2, !dbg !2800, !tbaa !246
  %or63314 = or i16 %or49313, %sub58, !dbg !2800
  call void @llvm.dbg.value(metadata i16 %or63314, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 2, metadata !2757, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.value(metadata i32 2, metadata !2759, metadata !DIExpression()), !dbg !2801
  %arrayidx67 = getelementptr inbounds i8, ptr %p_src, i64 2, !dbg !2802
  %10 = load i8, ptr %arrayidx67, align 1, !dbg !2802, !tbaa !240
  %conv68 = zext i8 %10 to i16, !dbg !2802
  %arrayidx70 = getelementptr inbounds i8, ptr %p_dst, i64 2, !dbg !2802
  %11 = load i8, ptr %arrayidx70, align 1, !dbg !2802, !tbaa !240
  %conv71 = zext i8 %11 to i16, !dbg !2802
  %sub72 = sub nsw i16 %conv68, %conv71, !dbg !2802
  %arrayidx74 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !2802
  store i16 %sub72, ptr %arrayidx74, align 2, !dbg !2802, !tbaa !246
  %or77315 = or i16 %or63314, %sub72, !dbg !2802
  call void @llvm.dbg.value(metadata i16 %or77315, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 3, metadata !2760, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i32 3, metadata !2762, metadata !DIExpression()), !dbg !2803
  %arrayidx81 = getelementptr inbounds i8, ptr %p_src, i64 3, !dbg !2804
  %12 = load i8, ptr %arrayidx81, align 1, !dbg !2804, !tbaa !240
  %conv82 = zext i8 %12 to i16, !dbg !2804
  %arrayidx84 = getelementptr inbounds i8, ptr %p_dst, i64 3, !dbg !2804
  %13 = load i8, ptr %arrayidx84, align 1, !dbg !2804, !tbaa !240
  %conv85 = zext i8 %13 to i16, !dbg !2804
  %sub86 = sub nsw i16 %conv82, %conv85, !dbg !2804
  %arrayidx88 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !2804
  store i16 %sub86, ptr %arrayidx88, align 2, !dbg !2804, !tbaa !246
  %or91316 = or i16 %or77315, %sub86, !dbg !2804
  call void @llvm.dbg.value(metadata i16 %or91316, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 18, metadata !2763, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 34, metadata !2765, metadata !DIExpression()), !dbg !2805
  %arrayidx95 = getelementptr inbounds i8, ptr %p_src, i64 18, !dbg !2806
  %14 = load i8, ptr %arrayidx95, align 1, !dbg !2806, !tbaa !240
  %conv96 = zext i8 %14 to i16, !dbg !2806
  %arrayidx98 = getelementptr inbounds i8, ptr %p_dst, i64 34, !dbg !2806
  %15 = load i8, ptr %arrayidx98, align 1, !dbg !2806, !tbaa !240
  %conv99 = zext i8 %15 to i16, !dbg !2806
  %sub100 = sub nsw i16 %conv96, %conv99, !dbg !2806
  %arrayidx102 = getelementptr inbounds i16, ptr %level, i64 7, !dbg !2806
  store i16 %sub100, ptr %arrayidx102, align 2, !dbg !2806, !tbaa !246
  %or105317 = or i16 %or91316, %sub100, !dbg !2806
  call void @llvm.dbg.value(metadata i16 %or105317, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 33, metadata !2766, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i32 65, metadata !2768, metadata !DIExpression()), !dbg !2807
  %arrayidx109 = getelementptr inbounds i8, ptr %p_src, i64 33, !dbg !2808
  %16 = load i8, ptr %arrayidx109, align 1, !dbg !2808, !tbaa !240
  %conv110 = zext i8 %16 to i16, !dbg !2808
  %arrayidx112 = getelementptr inbounds i8, ptr %p_dst, i64 65, !dbg !2808
  %17 = load i8, ptr %arrayidx112, align 1, !dbg !2808, !tbaa !240
  %conv113 = zext i8 %17 to i16, !dbg !2808
  %sub114 = sub nsw i16 %conv110, %conv113, !dbg !2808
  %arrayidx116 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !2808
  store i16 %sub114, ptr %arrayidx116, align 2, !dbg !2808, !tbaa !246
  %or119318 = or i16 %or105317, %sub114, !dbg !2808
  call void @llvm.dbg.value(metadata i16 %or119318, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 48, metadata !2769, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 96, metadata !2771, metadata !DIExpression()), !dbg !2809
  %arrayidx123 = getelementptr inbounds i8, ptr %p_src, i64 48, !dbg !2810
  %18 = load i8, ptr %arrayidx123, align 1, !dbg !2810, !tbaa !240
  %conv124 = zext i8 %18 to i16, !dbg !2810
  %arrayidx126 = getelementptr inbounds i8, ptr %p_dst, i64 96, !dbg !2810
  %19 = load i8, ptr %arrayidx126, align 1, !dbg !2810, !tbaa !240
  %conv127 = zext i8 %19 to i16, !dbg !2810
  %sub128 = sub nsw i16 %conv124, %conv127, !dbg !2810
  %arrayidx130 = getelementptr inbounds i16, ptr %level, i64 9, !dbg !2810
  store i16 %sub128, ptr %arrayidx130, align 2, !dbg !2810, !tbaa !246
  %or133319 = or i16 %or119318, %sub128, !dbg !2810
  call void @llvm.dbg.value(metadata i16 %or133319, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 49, metadata !2772, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.value(metadata i32 97, metadata !2774, metadata !DIExpression()), !dbg !2811
  %arrayidx137 = getelementptr inbounds i8, ptr %p_src, i64 49, !dbg !2812
  %20 = load i8, ptr %arrayidx137, align 1, !dbg !2812, !tbaa !240
  %conv138 = zext i8 %20 to i16, !dbg !2812
  %arrayidx140 = getelementptr inbounds i8, ptr %p_dst, i64 97, !dbg !2812
  %21 = load i8, ptr %arrayidx140, align 1, !dbg !2812, !tbaa !240
  %conv141 = zext i8 %21 to i16, !dbg !2812
  %sub142 = sub nsw i16 %conv138, %conv141, !dbg !2812
  %arrayidx144 = getelementptr inbounds i16, ptr %level, i64 10, !dbg !2812
  store i16 %sub142, ptr %arrayidx144, align 2, !dbg !2812, !tbaa !246
  %or147320 = or i16 %or133319, %sub142, !dbg !2812
  call void @llvm.dbg.value(metadata i16 %or147320, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 34, metadata !2775, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32 66, metadata !2777, metadata !DIExpression()), !dbg !2813
  %arrayidx151 = getelementptr inbounds i8, ptr %p_src, i64 34, !dbg !2814
  %22 = load i8, ptr %arrayidx151, align 1, !dbg !2814, !tbaa !240
  %conv152 = zext i8 %22 to i16, !dbg !2814
  %arrayidx154 = getelementptr inbounds i8, ptr %p_dst, i64 66, !dbg !2814
  %23 = load i8, ptr %arrayidx154, align 1, !dbg !2814, !tbaa !240
  %conv155 = zext i8 %23 to i16, !dbg !2814
  %sub156 = sub nsw i16 %conv152, %conv155, !dbg !2814
  %arrayidx158 = getelementptr inbounds i16, ptr %level, i64 11, !dbg !2814
  store i16 %sub156, ptr %arrayidx158, align 2, !dbg !2814, !tbaa !246
  %or161321 = or i16 %or147320, %sub156, !dbg !2814
  call void @llvm.dbg.value(metadata i16 %or161321, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 19, metadata !2778, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i32 35, metadata !2780, metadata !DIExpression()), !dbg !2815
  %arrayidx165 = getelementptr inbounds i8, ptr %p_src, i64 19, !dbg !2816
  %24 = load i8, ptr %arrayidx165, align 1, !dbg !2816, !tbaa !240
  %conv166 = zext i8 %24 to i16, !dbg !2816
  %arrayidx168 = getelementptr inbounds i8, ptr %p_dst, i64 35, !dbg !2816
  %25 = load i8, ptr %arrayidx168, align 1, !dbg !2816, !tbaa !240
  %conv169 = zext i8 %25 to i16, !dbg !2816
  %sub170 = sub nsw i16 %conv166, %conv169, !dbg !2816
  %arrayidx172 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !2816
  store i16 %sub170, ptr %arrayidx172, align 2, !dbg !2816, !tbaa !246
  %or175322 = or i16 %or161321, %sub170, !dbg !2816
  call void @llvm.dbg.value(metadata i16 %or175322, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 35, metadata !2781, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.value(metadata i32 67, metadata !2783, metadata !DIExpression()), !dbg !2817
  %arrayidx179 = getelementptr inbounds i8, ptr %p_src, i64 35, !dbg !2818
  %26 = load i8, ptr %arrayidx179, align 1, !dbg !2818, !tbaa !240
  %conv180 = zext i8 %26 to i16, !dbg !2818
  %arrayidx182 = getelementptr inbounds i8, ptr %p_dst, i64 67, !dbg !2818
  %27 = load i8, ptr %arrayidx182, align 1, !dbg !2818, !tbaa !240
  %conv183 = zext i8 %27 to i16, !dbg !2818
  %sub184 = sub nsw i16 %conv180, %conv183, !dbg !2818
  %arrayidx186 = getelementptr inbounds i16, ptr %level, i64 13, !dbg !2818
  store i16 %sub184, ptr %arrayidx186, align 2, !dbg !2818, !tbaa !246
  %or189323 = or i16 %or175322, %sub184, !dbg !2818
  call void @llvm.dbg.value(metadata i16 %or189323, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 50, metadata !2784, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.value(metadata i32 98, metadata !2786, metadata !DIExpression()), !dbg !2819
  %arrayidx193 = getelementptr inbounds i8, ptr %p_src, i64 50, !dbg !2820
  %28 = load i8, ptr %arrayidx193, align 1, !dbg !2820, !tbaa !240
  %conv194 = zext i8 %28 to i16, !dbg !2820
  %arrayidx196 = getelementptr inbounds i8, ptr %p_dst, i64 98, !dbg !2820
  %29 = load i8, ptr %arrayidx196, align 1, !dbg !2820, !tbaa !240
  %conv197 = zext i8 %29 to i16, !dbg !2820
  %sub198 = sub nsw i16 %conv194, %conv197, !dbg !2820
  %arrayidx200 = getelementptr inbounds i16, ptr %level, i64 14, !dbg !2820
  store i16 %sub198, ptr %arrayidx200, align 2, !dbg !2820, !tbaa !246
  %or203324 = or i16 %or189323, %sub198, !dbg !2820
  call void @llvm.dbg.value(metadata i16 %or203324, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  call void @llvm.dbg.value(metadata i32 51, metadata !2787, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.value(metadata i32 99, metadata !2789, metadata !DIExpression()), !dbg !2821
  %arrayidx207 = getelementptr inbounds i8, ptr %p_src, i64 51, !dbg !2822
  %30 = load i8, ptr %arrayidx207, align 1, !dbg !2822, !tbaa !240
  %conv208 = zext i8 %30 to i16, !dbg !2822
  %arrayidx210 = getelementptr inbounds i8, ptr %p_dst, i64 99, !dbg !2822
  %31 = load i8, ptr %arrayidx210, align 1, !dbg !2822, !tbaa !240
  %conv211 = zext i8 %31 to i16, !dbg !2822
  %sub212 = sub nsw i16 %conv208, %conv211, !dbg !2822
  %arrayidx214 = getelementptr inbounds i16, ptr %level, i64 15, !dbg !2822
  store i16 %sub212, ptr %arrayidx214, align 2, !dbg !2822, !tbaa !246
  %or217325 = or i16 %or203324, %sub212, !dbg !2822
  call void @llvm.dbg.value(metadata i16 %or217325, metadata !2741, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2790
  %32 = load i32, ptr %p_src, align 4, !dbg !2823, !tbaa !240
  store i32 %32, ptr %p_dst, align 4, !dbg !2823, !tbaa !240
  %33 = load i32, ptr %arrayidx25, align 4, !dbg !2823, !tbaa !240
  store i32 %33, ptr %arrayidx28, align 4, !dbg !2823, !tbaa !240
  %34 = load i32, ptr %arrayidx39, align 4, !dbg !2823, !tbaa !240
  store i32 %34, ptr %arrayidx42, align 4, !dbg !2823, !tbaa !240
  %35 = load i32, ptr %arrayidx123, align 4, !dbg !2823, !tbaa !240
  store i32 %35, ptr %arrayidx126, align 4, !dbg !2823, !tbaa !240
  %tobool = icmp ne i16 %or217325, 0, !dbg !2824
  %lnot.ext = zext i1 %tobool to i32, !dbg !2825
  ret i32 %lnot.ext, !dbg !2826
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define internal i32 @zigzag_sub_4x4ac_frame(ptr nocapture noundef writeonly %level, ptr nocapture noundef readonly %p_src, ptr nocapture noundef %p_dst, ptr nocapture noundef writeonly %dc) #8 !dbg !2827 {
entry:
  call void @llvm.dbg.value(metadata ptr %level, metadata !2829, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %p_src, metadata !2830, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %p_dst, metadata !2831, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata ptr %dc, metadata !2832, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 0, metadata !2833, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.value(metadata i32 0, metadata !2834, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i32 0, metadata !2836, metadata !DIExpression()), !dbg !2883
  %0 = load i8, ptr %p_src, align 1, !dbg !2884, !tbaa !240
  %conv = zext i8 %0 to i16, !dbg !2884
  %1 = load i8, ptr %p_dst, align 1, !dbg !2884, !tbaa !240
  %conv3 = zext i8 %1 to i16, !dbg !2884
  %sub = sub nsw i16 %conv, %conv3, !dbg !2884
  store i16 %sub, ptr %dc, align 2, !dbg !2884, !tbaa !246
  store i16 0, ptr %level, align 2, !dbg !2884, !tbaa !246
  call void @llvm.dbg.value(metadata i32 1, metadata !2837, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i32 1, metadata !2839, metadata !DIExpression()), !dbg !2885
  %arrayidx9 = getelementptr inbounds i8, ptr %p_src, i64 1, !dbg !2886
  %2 = load i8, ptr %arrayidx9, align 1, !dbg !2886, !tbaa !240
  %conv10 = zext i8 %2 to i16, !dbg !2886
  %arrayidx12 = getelementptr inbounds i8, ptr %p_dst, i64 1, !dbg !2886
  %3 = load i8, ptr %arrayidx12, align 1, !dbg !2886, !tbaa !240
  %conv13 = zext i8 %3 to i16, !dbg !2886
  %sub14 = sub nsw i16 %conv10, %conv13, !dbg !2886
  %arrayidx16 = getelementptr inbounds i16, ptr %level, i64 1, !dbg !2886
  store i16 %sub14, ptr %arrayidx16, align 2, !dbg !2886, !tbaa !246
  call void @llvm.dbg.value(metadata i16 %sub14, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 16, metadata !2840, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 32, metadata !2842, metadata !DIExpression()), !dbg !2887
  %arrayidx22 = getelementptr inbounds i8, ptr %p_src, i64 16, !dbg !2888
  %4 = load i8, ptr %arrayidx22, align 1, !dbg !2888, !tbaa !240
  %conv23 = zext i8 %4 to i16, !dbg !2888
  %arrayidx25 = getelementptr inbounds i8, ptr %p_dst, i64 32, !dbg !2888
  %5 = load i8, ptr %arrayidx25, align 1, !dbg !2888, !tbaa !240
  %conv26 = zext i8 %5 to i16, !dbg !2888
  %sub27 = sub nsw i16 %conv23, %conv26, !dbg !2888
  %arrayidx29 = getelementptr inbounds i16, ptr %level, i64 2, !dbg !2888
  store i16 %sub27, ptr %arrayidx29, align 2, !dbg !2888, !tbaa !246
  %or32306 = or i16 %sub27, %sub14, !dbg !2888
  call void @llvm.dbg.value(metadata i16 %or32306, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 32, metadata !2843, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i32 64, metadata !2845, metadata !DIExpression()), !dbg !2889
  %arrayidx36 = getelementptr inbounds i8, ptr %p_src, i64 32, !dbg !2890
  %6 = load i8, ptr %arrayidx36, align 1, !dbg !2890, !tbaa !240
  %conv37 = zext i8 %6 to i16, !dbg !2890
  %arrayidx39 = getelementptr inbounds i8, ptr %p_dst, i64 64, !dbg !2890
  %7 = load i8, ptr %arrayidx39, align 1, !dbg !2890, !tbaa !240
  %conv40 = zext i8 %7 to i16, !dbg !2890
  %sub41 = sub nsw i16 %conv37, %conv40, !dbg !2890
  %arrayidx43 = getelementptr inbounds i16, ptr %level, i64 3, !dbg !2890
  store i16 %sub41, ptr %arrayidx43, align 2, !dbg !2890, !tbaa !246
  %or46307 = or i16 %or32306, %sub41, !dbg !2890
  call void @llvm.dbg.value(metadata i16 %or46307, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 17, metadata !2846, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 33, metadata !2848, metadata !DIExpression()), !dbg !2891
  %arrayidx50 = getelementptr inbounds i8, ptr %p_src, i64 17, !dbg !2892
  %8 = load i8, ptr %arrayidx50, align 1, !dbg !2892, !tbaa !240
  %conv51 = zext i8 %8 to i16, !dbg !2892
  %arrayidx53 = getelementptr inbounds i8, ptr %p_dst, i64 33, !dbg !2892
  %9 = load i8, ptr %arrayidx53, align 1, !dbg !2892, !tbaa !240
  %conv54 = zext i8 %9 to i16, !dbg !2892
  %sub55 = sub nsw i16 %conv51, %conv54, !dbg !2892
  %arrayidx57 = getelementptr inbounds i16, ptr %level, i64 4, !dbg !2892
  store i16 %sub55, ptr %arrayidx57, align 2, !dbg !2892, !tbaa !246
  %or60308 = or i16 %or46307, %sub55, !dbg !2892
  call void @llvm.dbg.value(metadata i16 %or60308, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 2, metadata !2849, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i32 2, metadata !2851, metadata !DIExpression()), !dbg !2893
  %arrayidx64 = getelementptr inbounds i8, ptr %p_src, i64 2, !dbg !2894
  %10 = load i8, ptr %arrayidx64, align 1, !dbg !2894, !tbaa !240
  %conv65 = zext i8 %10 to i16, !dbg !2894
  %arrayidx67 = getelementptr inbounds i8, ptr %p_dst, i64 2, !dbg !2894
  %11 = load i8, ptr %arrayidx67, align 1, !dbg !2894, !tbaa !240
  %conv68 = zext i8 %11 to i16, !dbg !2894
  %sub69 = sub nsw i16 %conv65, %conv68, !dbg !2894
  %arrayidx71 = getelementptr inbounds i16, ptr %level, i64 5, !dbg !2894
  store i16 %sub69, ptr %arrayidx71, align 2, !dbg !2894, !tbaa !246
  %or74309 = or i16 %or60308, %sub69, !dbg !2894
  call void @llvm.dbg.value(metadata i16 %or74309, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 3, metadata !2852, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.value(metadata i32 3, metadata !2854, metadata !DIExpression()), !dbg !2895
  %arrayidx78 = getelementptr inbounds i8, ptr %p_src, i64 3, !dbg !2896
  %12 = load i8, ptr %arrayidx78, align 1, !dbg !2896, !tbaa !240
  %conv79 = zext i8 %12 to i16, !dbg !2896
  %arrayidx81 = getelementptr inbounds i8, ptr %p_dst, i64 3, !dbg !2896
  %13 = load i8, ptr %arrayidx81, align 1, !dbg !2896, !tbaa !240
  %conv82 = zext i8 %13 to i16, !dbg !2896
  %sub83 = sub nsw i16 %conv79, %conv82, !dbg !2896
  %arrayidx85 = getelementptr inbounds i16, ptr %level, i64 6, !dbg !2896
  store i16 %sub83, ptr %arrayidx85, align 2, !dbg !2896, !tbaa !246
  %or88310 = or i16 %or74309, %sub83, !dbg !2896
  call void @llvm.dbg.value(metadata i16 %or88310, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 18, metadata !2855, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 34, metadata !2857, metadata !DIExpression()), !dbg !2897
  %arrayidx92 = getelementptr inbounds i8, ptr %p_src, i64 18, !dbg !2898
  %14 = load i8, ptr %arrayidx92, align 1, !dbg !2898, !tbaa !240
  %conv93 = zext i8 %14 to i16, !dbg !2898
  %arrayidx95 = getelementptr inbounds i8, ptr %p_dst, i64 34, !dbg !2898
  %15 = load i8, ptr %arrayidx95, align 1, !dbg !2898, !tbaa !240
  %conv96 = zext i8 %15 to i16, !dbg !2898
  %sub97 = sub nsw i16 %conv93, %conv96, !dbg !2898
  %arrayidx99 = getelementptr inbounds i16, ptr %level, i64 7, !dbg !2898
  store i16 %sub97, ptr %arrayidx99, align 2, !dbg !2898, !tbaa !246
  %or102311 = or i16 %or88310, %sub97, !dbg !2898
  call void @llvm.dbg.value(metadata i16 %or102311, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 33, metadata !2858, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i32 65, metadata !2860, metadata !DIExpression()), !dbg !2899
  %arrayidx106 = getelementptr inbounds i8, ptr %p_src, i64 33, !dbg !2900
  %16 = load i8, ptr %arrayidx106, align 1, !dbg !2900, !tbaa !240
  %conv107 = zext i8 %16 to i16, !dbg !2900
  %arrayidx109 = getelementptr inbounds i8, ptr %p_dst, i64 65, !dbg !2900
  %17 = load i8, ptr %arrayidx109, align 1, !dbg !2900, !tbaa !240
  %conv110 = zext i8 %17 to i16, !dbg !2900
  %sub111 = sub nsw i16 %conv107, %conv110, !dbg !2900
  %arrayidx113 = getelementptr inbounds i16, ptr %level, i64 8, !dbg !2900
  store i16 %sub111, ptr %arrayidx113, align 2, !dbg !2900, !tbaa !246
  %or116312 = or i16 %or102311, %sub111, !dbg !2900
  call void @llvm.dbg.value(metadata i16 %or116312, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 48, metadata !2861, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i32 96, metadata !2863, metadata !DIExpression()), !dbg !2901
  %arrayidx120 = getelementptr inbounds i8, ptr %p_src, i64 48, !dbg !2902
  %18 = load i8, ptr %arrayidx120, align 1, !dbg !2902, !tbaa !240
  %conv121 = zext i8 %18 to i16, !dbg !2902
  %arrayidx123 = getelementptr inbounds i8, ptr %p_dst, i64 96, !dbg !2902
  %19 = load i8, ptr %arrayidx123, align 1, !dbg !2902, !tbaa !240
  %conv124 = zext i8 %19 to i16, !dbg !2902
  %sub125 = sub nsw i16 %conv121, %conv124, !dbg !2902
  %arrayidx127 = getelementptr inbounds i16, ptr %level, i64 9, !dbg !2902
  store i16 %sub125, ptr %arrayidx127, align 2, !dbg !2902, !tbaa !246
  %or130313 = or i16 %or116312, %sub125, !dbg !2902
  call void @llvm.dbg.value(metadata i16 %or130313, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 49, metadata !2864, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i32 97, metadata !2866, metadata !DIExpression()), !dbg !2903
  %arrayidx134 = getelementptr inbounds i8, ptr %p_src, i64 49, !dbg !2904
  %20 = load i8, ptr %arrayidx134, align 1, !dbg !2904, !tbaa !240
  %conv135 = zext i8 %20 to i16, !dbg !2904
  %arrayidx137 = getelementptr inbounds i8, ptr %p_dst, i64 97, !dbg !2904
  %21 = load i8, ptr %arrayidx137, align 1, !dbg !2904, !tbaa !240
  %conv138 = zext i8 %21 to i16, !dbg !2904
  %sub139 = sub nsw i16 %conv135, %conv138, !dbg !2904
  %arrayidx141 = getelementptr inbounds i16, ptr %level, i64 10, !dbg !2904
  store i16 %sub139, ptr %arrayidx141, align 2, !dbg !2904, !tbaa !246
  %or144314 = or i16 %or130313, %sub139, !dbg !2904
  call void @llvm.dbg.value(metadata i16 %or144314, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 34, metadata !2867, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i32 66, metadata !2869, metadata !DIExpression()), !dbg !2905
  %arrayidx148 = getelementptr inbounds i8, ptr %p_src, i64 34, !dbg !2906
  %22 = load i8, ptr %arrayidx148, align 1, !dbg !2906, !tbaa !240
  %conv149 = zext i8 %22 to i16, !dbg !2906
  %arrayidx151 = getelementptr inbounds i8, ptr %p_dst, i64 66, !dbg !2906
  %23 = load i8, ptr %arrayidx151, align 1, !dbg !2906, !tbaa !240
  %conv152 = zext i8 %23 to i16, !dbg !2906
  %sub153 = sub nsw i16 %conv149, %conv152, !dbg !2906
  %arrayidx155 = getelementptr inbounds i16, ptr %level, i64 11, !dbg !2906
  store i16 %sub153, ptr %arrayidx155, align 2, !dbg !2906, !tbaa !246
  %or158315 = or i16 %or144314, %sub153, !dbg !2906
  call void @llvm.dbg.value(metadata i16 %or158315, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 19, metadata !2870, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i32 35, metadata !2872, metadata !DIExpression()), !dbg !2907
  %arrayidx162 = getelementptr inbounds i8, ptr %p_src, i64 19, !dbg !2908
  %24 = load i8, ptr %arrayidx162, align 1, !dbg !2908, !tbaa !240
  %conv163 = zext i8 %24 to i16, !dbg !2908
  %arrayidx165 = getelementptr inbounds i8, ptr %p_dst, i64 35, !dbg !2908
  %25 = load i8, ptr %arrayidx165, align 1, !dbg !2908, !tbaa !240
  %conv166 = zext i8 %25 to i16, !dbg !2908
  %sub167 = sub nsw i16 %conv163, %conv166, !dbg !2908
  %arrayidx169 = getelementptr inbounds i16, ptr %level, i64 12, !dbg !2908
  store i16 %sub167, ptr %arrayidx169, align 2, !dbg !2908, !tbaa !246
  %or172316 = or i16 %or158315, %sub167, !dbg !2908
  call void @llvm.dbg.value(metadata i16 %or172316, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 35, metadata !2873, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i32 67, metadata !2875, metadata !DIExpression()), !dbg !2909
  %arrayidx176 = getelementptr inbounds i8, ptr %p_src, i64 35, !dbg !2910
  %26 = load i8, ptr %arrayidx176, align 1, !dbg !2910, !tbaa !240
  %conv177 = zext i8 %26 to i16, !dbg !2910
  %arrayidx179 = getelementptr inbounds i8, ptr %p_dst, i64 67, !dbg !2910
  %27 = load i8, ptr %arrayidx179, align 1, !dbg !2910, !tbaa !240
  %conv180 = zext i8 %27 to i16, !dbg !2910
  %sub181 = sub nsw i16 %conv177, %conv180, !dbg !2910
  %arrayidx183 = getelementptr inbounds i16, ptr %level, i64 13, !dbg !2910
  store i16 %sub181, ptr %arrayidx183, align 2, !dbg !2910, !tbaa !246
  %or186317 = or i16 %or172316, %sub181, !dbg !2910
  call void @llvm.dbg.value(metadata i16 %or186317, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 50, metadata !2876, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i32 98, metadata !2878, metadata !DIExpression()), !dbg !2911
  %arrayidx190 = getelementptr inbounds i8, ptr %p_src, i64 50, !dbg !2912
  %28 = load i8, ptr %arrayidx190, align 1, !dbg !2912, !tbaa !240
  %conv191 = zext i8 %28 to i16, !dbg !2912
  %arrayidx193 = getelementptr inbounds i8, ptr %p_dst, i64 98, !dbg !2912
  %29 = load i8, ptr %arrayidx193, align 1, !dbg !2912, !tbaa !240
  %conv194 = zext i8 %29 to i16, !dbg !2912
  %sub195 = sub nsw i16 %conv191, %conv194, !dbg !2912
  %arrayidx197 = getelementptr inbounds i16, ptr %level, i64 14, !dbg !2912
  store i16 %sub195, ptr %arrayidx197, align 2, !dbg !2912, !tbaa !246
  %or200318 = or i16 %or186317, %sub195, !dbg !2912
  call void @llvm.dbg.value(metadata i16 %or200318, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  call void @llvm.dbg.value(metadata i32 51, metadata !2879, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i32 99, metadata !2881, metadata !DIExpression()), !dbg !2913
  %arrayidx204 = getelementptr inbounds i8, ptr %p_src, i64 51, !dbg !2914
  %30 = load i8, ptr %arrayidx204, align 1, !dbg !2914, !tbaa !240
  %conv205 = zext i8 %30 to i16, !dbg !2914
  %arrayidx207 = getelementptr inbounds i8, ptr %p_dst, i64 99, !dbg !2914
  %31 = load i8, ptr %arrayidx207, align 1, !dbg !2914, !tbaa !240
  %conv208 = zext i8 %31 to i16, !dbg !2914
  %sub209 = sub nsw i16 %conv205, %conv208, !dbg !2914
  %arrayidx211 = getelementptr inbounds i16, ptr %level, i64 15, !dbg !2914
  store i16 %sub209, ptr %arrayidx211, align 2, !dbg !2914, !tbaa !246
  %or214319 = or i16 %or200318, %sub209, !dbg !2914
  call void @llvm.dbg.value(metadata i16 %or214319, metadata !2833, metadata !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_signed, DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_stack_value)), !dbg !2882
  %32 = load i32, ptr %p_src, align 4, !dbg !2915, !tbaa !240
  store i32 %32, ptr %p_dst, align 4, !dbg !2915, !tbaa !240
  %33 = load i32, ptr %arrayidx22, align 4, !dbg !2915, !tbaa !240
  store i32 %33, ptr %arrayidx25, align 4, !dbg !2915, !tbaa !240
  %34 = load i32, ptr %arrayidx36, align 4, !dbg !2915, !tbaa !240
  store i32 %34, ptr %arrayidx39, align 4, !dbg !2915, !tbaa !240
  %35 = load i32, ptr %arrayidx120, align 4, !dbg !2915, !tbaa !240
  store i32 %35, ptr %arrayidx123, align 4, !dbg !2915, !tbaa !240
  %tobool = icmp ne i16 %or214319, 0, !dbg !2916
  %lnot.ext = zext i1 %tobool to i32, !dbg !2917
  ret i32 %lnot.ext, !dbg !2918
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal void @zigzag_interleave_8x8_cavlc(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, ptr nocapture noundef writeonly %nnz) #4 !dbg !2919 {
entry:
  call void @llvm.dbg.value(metadata ptr %dst, metadata !2921, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata ptr %src, metadata !2922, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata ptr %nnz, metadata !2923, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.value(metadata i32 0, metadata !2924, metadata !DIExpression()), !dbg !2932
  br label %for.cond1.preheader, !dbg !2933

for.cond1.preheader:                              ; preds = %entry, %for.cond.cleanup3
  %indvars.iv41 = phi i64 [ 0, %entry ], [ %indvars.iv.next42, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv41, metadata !2924, metadata !DIExpression()), !dbg !2932
  %0 = shl nsw i64 %indvars.iv41, 4
  call void @llvm.dbg.value(metadata i32 0, metadata !2929, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 0, metadata !2926, metadata !DIExpression()), !dbg !2935
  br label %for.body4, !dbg !2936

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  ret void, !dbg !2937

for.cond.cleanup3:                                ; preds = %for.body4
  %tobool = icmp ne i32 %or, 0, !dbg !2938
  %conv14 = zext i1 %tobool to i8, !dbg !2939
  %and = and i64 %indvars.iv41, 1, !dbg !2940
  %1 = shl i64 %indvars.iv41, 2, !dbg !2941
  %mul15 = and i64 %1, 2147483640, !dbg !2941
  %add16 = or i64 %mul15, %and, !dbg !2942
  %arrayidx18 = getelementptr inbounds i8, ptr %nnz, i64 %add16, !dbg !2943
  store i8 %conv14, ptr %arrayidx18, align 1, !dbg !2944, !tbaa !240
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next42, metadata !2924, metadata !DIExpression()), !dbg !2932
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, 4, !dbg !2946
  br i1 %exitcond45.not, label %for.cond.cleanup, label %for.cond1.preheader, !dbg !2933, !llvm.loop !2947

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body4 ]
  %nz.034 = phi i32 [ 0, %for.cond1.preheader ], [ %or, %for.body4 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2929, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i32 %nz.034, metadata !2926, metadata !DIExpression()), !dbg !2935
  %2 = shl nuw nsw i64 %indvars.iv, 2, !dbg !2949
  %3 = add nuw nsw i64 %2, %indvars.iv41, !dbg !2952
  %arrayidx = getelementptr inbounds i16, ptr %src, i64 %3, !dbg !2953
  %4 = load i16, ptr %arrayidx, align 2, !dbg !2953, !tbaa !246
  %conv = sext i16 %4 to i32, !dbg !2953
  %or = or i32 %nz.034, %conv, !dbg !2954
  call void @llvm.dbg.value(metadata i32 %or, metadata !2926, metadata !DIExpression()), !dbg !2935
  %5 = add nuw nsw i64 %indvars.iv, %0, !dbg !2955
  %arrayidx12 = getelementptr inbounds i16, ptr %dst, i64 %5, !dbg !2956
  store i16 %4, ptr %arrayidx12, align 2, !dbg !2957, !tbaa !246
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !2929, metadata !DIExpression()), !dbg !2934
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16, !dbg !2959
  br i1 %exitcond.not, label %for.cond.cleanup3, label %for.body4, !dbg !2936, !llvm.loop !2960
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x264_dct4_weight2_tab", scope: !2, file: !66, line: 59, type: !73, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !46, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/525.x264_r/src/x264_src/common/dct.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/525.x264_r", checksumkind: CSK_MD5, checksum: "30b9a0dc55355d7d69615f64741b7b31")
!4 = !{!5, !30}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union32_t", file: !7, line: 89, baseType: !8)
!7 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5afac7bf2f5673f1628c455d7d320ad7")
!8 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !7, line: 89, size: 32, elements: !9)
!9 = !{!10, !16, !23}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !8, file: !7, line: 89, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !12, line: 26, baseType: !13)
!12 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !14, line: 42, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!15 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !8, file: !7, line: 89, baseType: !17, size: 32)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !21)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !12, line: 25, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !14, line: 40, baseType: !20)
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 2)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !8, file: !7, line: 89, baseType: !24, size: 32)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 32, elements: !28)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !12, line: 24, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !14, line: 38, baseType: !27)
!27 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!28 = !{!29}
!29 = !DISubrange(count: 4)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_union64_t", file: !7, line: 90, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !7, line: 90, size: 64, elements: !33)
!33 = !{!34, !38, !40, !42}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !32, file: !7, line: 90, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !12, line: 27, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !14, line: 45, baseType: !37)
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !32, file: !7, line: 90, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !21)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !32, file: !7, line: 90, baseType: !41, size: 64)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !28)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !32, file: !7, line: 90, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 64, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 8)
!46 = !{!47, !54, !0, !59, !64, !70}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "x264_dct4_weight2_zigzag", scope: !2, file: !49, line: 35, type: !50, isLocal: false, isDefinition: true)
!49 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "30b9a0dc55355d7d69615f64741b7b31")
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 1024, elements: !52)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !{!22, !53}
!53 = !DISubrange(count: 16)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "x264_dct8_weight2_zigzag", scope: !2, file: !49, line: 36, type: !56, isLocal: false, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 4096, elements: !57)
!57 = !{!22, !58}
!58 = !DISubrange(count: 64)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "x264_zigzag_scan4", scope: !2, file: !61, line: 179, type: !62, isLocal: true, isDefinition: true)
!61 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/macroblock.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "15f4a9c1d53f4196a5f2b80807bb8b1a")
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !52)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "x264_dct8_weight2_tab", scope: !2, file: !66, line: 73, type: !67, isLocal: true, isDefinition: true)
!66 = !DIFile(filename: "apps/525.x264_r/src/x264_src/common/dct.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d983c98245ed7221137d0c4902e9385f")
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 1024, elements: !69)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!69 = !{!58}
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "x264_zigzag_scan8", scope: !2, file: !61, line: 186, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 1024, elements: !57)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 256, elements: !74)
!74 = !{!53}
!75 = !{i32 7, !"Dwarf Version", i32 5}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{i32 1, !"wchar_size", i32 4}
!78 = !{i32 7, !"PIC Level", i32 2}
!79 = !{i32 7, !"PIE Level", i32 2}
!80 = !{i32 7, !"uwtable", i32 2}
!81 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!82 = distinct !DISubprogram(name: "x264_dct_init", scope: !49, file: !49, line: 398, type: !83, scopeLine: 399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !51, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_dct_function_t", file: !66, line: 115, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 89, size: 960, elements: !88)
!88 = !{!89, !99, !103, !109, !110, !114, !115, !116, !117, !118, !119, !120, !126, !130, !134}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sub4x4_dct", scope: !87, file: !66, line: 94, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !93, !98, !98}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !95, line: 25, baseType: !96)
!95 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "081edea97425b3437dded4a7fe223193")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !14, line: 39, baseType: !97)
!97 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "add4x4_idct", scope: !87, file: !66, line: 95, baseType: !100, size: 64, offset: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !98, !93}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct", scope: !87, file: !66, line: 97, baseType: !104, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !98, !98}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !74)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct_dc", scope: !87, file: !66, line: 98, baseType: !90, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct", scope: !87, file: !66, line: 99, baseType: !111, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !98, !107}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct_dc", scope: !87, file: !66, line: 100, baseType: !100, size: 64, offset: 320)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct", scope: !87, file: !66, line: 102, baseType: !104, size: 64, offset: 384)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct", scope: !87, file: !66, line: 103, baseType: !111, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct_dc", scope: !87, file: !66, line: 104, baseType: !100, size: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sub8x8_dct8", scope: !87, file: !66, line: 106, baseType: !90, size: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "add8x8_idct8", scope: !87, file: !66, line: 107, baseType: !100, size: 64, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sub16x16_dct8", scope: !87, file: !66, line: 109, baseType: !121, size: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124, !98, !98}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 1024, elements: !69)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "add16x16_idct8", scope: !87, file: !66, line: 110, baseType: !127, size: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !98, !124}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "dct4x4dc", scope: !87, file: !66, line: 112, baseType: !131, size: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !93}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "idct4x4dc", scope: !87, file: !66, line: 113, baseType: !131, size: 64, offset: 896)
!135 = !{!136, !137}
!136 = !DILocalVariable(name: "cpu", arg: 1, scope: !82, file: !49, line: 398, type: !51)
!137 = !DILocalVariable(name: "dctf", arg: 2, scope: !82, file: !49, line: 398, type: !85)
!138 = !DILocation(line: 0, scope: !82)
!139 = !DILocation(line: 400, column: 25, scope: !82)
!140 = !{!141, !142, i64 0}
!141 = !{!"", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !142, i64 32, !142, i64 40, !142, i64 48, !142, i64 56, !142, i64 64, !142, i64 72, !142, i64 80, !142, i64 88, !142, i64 96, !142, i64 104, !142, i64 112}
!142 = !{!"any pointer", !143, i64 0}
!143 = !{!"omnipotent char", !144, i64 0}
!144 = !{!"Simple C/C++ TBAA"}
!145 = !DILocation(line: 401, column: 11, scope: !82)
!146 = !DILocation(line: 401, column: 25, scope: !82)
!147 = !{!141, !142, i64 8}
!148 = !DILocation(line: 403, column: 11, scope: !82)
!149 = !DILocation(line: 403, column: 25, scope: !82)
!150 = !{!141, !142, i64 16}
!151 = !DILocation(line: 404, column: 11, scope: !82)
!152 = !DILocation(line: 404, column: 25, scope: !82)
!153 = !{!141, !142, i64 24}
!154 = !DILocation(line: 405, column: 11, scope: !82)
!155 = !DILocation(line: 405, column: 25, scope: !82)
!156 = !{!141, !142, i64 32}
!157 = !DILocation(line: 406, column: 11, scope: !82)
!158 = !DILocation(line: 406, column: 26, scope: !82)
!159 = !{!141, !142, i64 40}
!160 = !DILocation(line: 408, column: 11, scope: !82)
!161 = !DILocation(line: 408, column: 25, scope: !82)
!162 = !{!141, !142, i64 48}
!163 = !DILocation(line: 409, column: 11, scope: !82)
!164 = !DILocation(line: 409, column: 25, scope: !82)
!165 = !{!141, !142, i64 56}
!166 = !DILocation(line: 410, column: 11, scope: !82)
!167 = !DILocation(line: 410, column: 28, scope: !82)
!168 = !{!141, !142, i64 64}
!169 = !DILocation(line: 412, column: 11, scope: !82)
!170 = !DILocation(line: 412, column: 25, scope: !82)
!171 = !{!141, !142, i64 72}
!172 = !DILocation(line: 413, column: 11, scope: !82)
!173 = !DILocation(line: 413, column: 25, scope: !82)
!174 = !{!141, !142, i64 80}
!175 = !DILocation(line: 415, column: 11, scope: !82)
!176 = !DILocation(line: 415, column: 26, scope: !82)
!177 = !{!141, !142, i64 88}
!178 = !DILocation(line: 416, column: 11, scope: !82)
!179 = !DILocation(line: 416, column: 26, scope: !82)
!180 = !{!141, !142, i64 96}
!181 = !DILocation(line: 418, column: 11, scope: !82)
!182 = !DILocation(line: 418, column: 21, scope: !82)
!183 = !{!141, !142, i64 104}
!184 = !DILocation(line: 419, column: 11, scope: !82)
!185 = !DILocation(line: 419, column: 21, scope: !82)
!186 = !{!141, !142, i64 112}
!187 = !DILocation(line: 518, column: 1, scope: !82)
!188 = distinct !DISubprogram(name: "sub4x4_dct", scope: !49, file: !49, line: 112, type: !91, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !189)
!189 = !{!190, !191, !192, !193, !194, !195, !197, !200, !201, !202, !203, !205, !208, !209, !210}
!190 = !DILocalVariable(name: "dct", arg: 1, scope: !188, file: !49, line: 112, type: !93)
!191 = !DILocalVariable(name: "pix1", arg: 2, scope: !188, file: !49, line: 112, type: !98)
!192 = !DILocalVariable(name: "pix2", arg: 3, scope: !188, file: !49, line: 112, type: !98)
!193 = !DILocalVariable(name: "d", scope: !188, file: !49, line: 114, type: !108)
!194 = !DILocalVariable(name: "tmp", scope: !188, file: !49, line: 115, type: !108)
!195 = !DILocalVariable(name: "i", scope: !196, file: !49, line: 119, type: !51)
!196 = distinct !DILexicalBlock(scope: !188, file: !49, line: 119, column: 5)
!197 = !DILocalVariable(name: "s03", scope: !198, file: !49, line: 121, type: !51)
!198 = distinct !DILexicalBlock(scope: !199, file: !49, line: 120, column: 5)
!199 = distinct !DILexicalBlock(scope: !196, file: !49, line: 119, column: 5)
!200 = !DILocalVariable(name: "s12", scope: !198, file: !49, line: 122, type: !51)
!201 = !DILocalVariable(name: "d03", scope: !198, file: !49, line: 123, type: !51)
!202 = !DILocalVariable(name: "d12", scope: !198, file: !49, line: 124, type: !51)
!203 = !DILocalVariable(name: "i", scope: !204, file: !49, line: 132, type: !51)
!204 = distinct !DILexicalBlock(scope: !188, file: !49, line: 132, column: 5)
!205 = !DILocalVariable(name: "s03", scope: !206, file: !49, line: 134, type: !51)
!206 = distinct !DILexicalBlock(scope: !207, file: !49, line: 133, column: 5)
!207 = distinct !DILexicalBlock(scope: !204, file: !49, line: 132, column: 5)
!208 = !DILocalVariable(name: "s12", scope: !206, file: !49, line: 135, type: !51)
!209 = !DILocalVariable(name: "d03", scope: !206, file: !49, line: 136, type: !51)
!210 = !DILocalVariable(name: "d12", scope: !206, file: !49, line: 137, type: !51)
!211 = !DILocation(line: 0, scope: !188)
!212 = !DILocation(line: 114, column: 5, scope: !188)
!213 = !DILocation(line: 114, column: 13, scope: !188)
!214 = !DILocation(line: 115, column: 5, scope: !188)
!215 = !DILocation(line: 115, column: 13, scope: !188)
!216 = !DILocalVariable(name: "diff", arg: 1, scope: !217, file: !49, line: 100, type: !93)
!217 = distinct !DISubprogram(name: "pixel_sub_wxh", scope: !49, file: !49, line: 100, type: !218, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !93, !51, !98, !51, !98, !51}
!220 = !{!216, !221, !222, !223, !224, !225, !226, !228}
!221 = !DILocalVariable(name: "i_size", arg: 2, scope: !217, file: !49, line: 100, type: !51)
!222 = !DILocalVariable(name: "pix1", arg: 3, scope: !217, file: !49, line: 101, type: !98)
!223 = !DILocalVariable(name: "i_pix1", arg: 4, scope: !217, file: !49, line: 101, type: !51)
!224 = !DILocalVariable(name: "pix2", arg: 5, scope: !217, file: !49, line: 101, type: !98)
!225 = !DILocalVariable(name: "i_pix2", arg: 6, scope: !217, file: !49, line: 101, type: !51)
!226 = !DILocalVariable(name: "y", scope: !227, file: !49, line: 103, type: !51)
!227 = distinct !DILexicalBlock(scope: !217, file: !49, line: 103, column: 5)
!228 = !DILocalVariable(name: "x", scope: !229, file: !49, line: 105, type: !51)
!229 = distinct !DILexicalBlock(scope: !230, file: !49, line: 105, column: 9)
!230 = distinct !DILexicalBlock(scope: !231, file: !49, line: 104, column: 5)
!231 = distinct !DILexicalBlock(scope: !227, file: !49, line: 103, column: 5)
!232 = !DILocation(line: 0, scope: !217, inlinedAt: !233)
!233 = distinct !DILocation(line: 117, column: 5, scope: !188)
!234 = !DILocation(line: 0, scope: !227, inlinedAt: !233)
!235 = !DILocation(line: 103, column: 5, scope: !227, inlinedAt: !233)
!236 = !DILocation(line: 0, scope: !229, inlinedAt: !233)
!237 = !DILocation(line: 105, column: 9, scope: !229, inlinedAt: !233)
!238 = !DILocation(line: 106, column: 34, scope: !239, inlinedAt: !233)
!239 = distinct !DILexicalBlock(scope: !229, file: !49, line: 105, column: 9)
!240 = !{!143, !143, i64 0}
!241 = !DILocation(line: 106, column: 44, scope: !239, inlinedAt: !233)
!242 = !DILocation(line: 106, column: 42, scope: !239, inlinedAt: !233)
!243 = !DILocation(line: 106, column: 20, scope: !239, inlinedAt: !233)
!244 = !DILocation(line: 106, column: 13, scope: !239, inlinedAt: !233)
!245 = !DILocation(line: 106, column: 32, scope: !239, inlinedAt: !233)
!246 = !{!247, !247, i64 0}
!247 = !{!"short", !143, i64 0}
!248 = !DILocation(line: 105, column: 38, scope: !239, inlinedAt: !233)
!249 = !DILocation(line: 105, column: 27, scope: !239, inlinedAt: !233)
!250 = distinct !{!250, !237, !251, !252, !253}
!251 = !DILocation(line: 106, column: 50, scope: !229, inlinedAt: !233)
!252 = !{!"llvm.loop.mustprogress"}
!253 = !{!"llvm.loop.unroll.disable"}
!254 = !DILocation(line: 107, column: 14, scope: !230, inlinedAt: !233)
!255 = !DILocation(line: 108, column: 14, scope: !230, inlinedAt: !233)
!256 = !DILocation(line: 103, column: 34, scope: !231, inlinedAt: !233)
!257 = !DILocation(line: 103, column: 23, scope: !231, inlinedAt: !233)
!258 = distinct !{!258, !235, !259, !252, !253}
!259 = !DILocation(line: 109, column: 5, scope: !227, inlinedAt: !233)
!260 = !DILocation(line: 0, scope: !196)
!261 = !DILocation(line: 121, column: 22, scope: !198)
!262 = !DILocation(line: 121, column: 19, scope: !198)
!263 = !DILocation(line: 121, column: 35, scope: !198)
!264 = !DILocation(line: 121, column: 30, scope: !198)
!265 = !DILocation(line: 121, column: 28, scope: !198)
!266 = !DILocation(line: 0, scope: !198)
!267 = !DILocation(line: 122, column: 24, scope: !198)
!268 = !DILocation(line: 122, column: 19, scope: !198)
!269 = !DILocation(line: 122, column: 35, scope: !198)
!270 = !DILocation(line: 122, column: 30, scope: !198)
!271 = !DILocation(line: 122, column: 28, scope: !198)
!272 = !DILocation(line: 123, column: 28, scope: !198)
!273 = !DILocation(line: 124, column: 28, scope: !198)
!274 = !DILocation(line: 126, column: 28, scope: !198)
!275 = !DILocation(line: 126, column: 24, scope: !198)
!276 = !DILocation(line: 126, column: 9, scope: !198)
!277 = !DILocation(line: 126, column: 20, scope: !198)
!278 = !DILocation(line: 127, column: 23, scope: !198)
!279 = !DILocation(line: 127, column: 28, scope: !198)
!280 = !DILocation(line: 127, column: 22, scope: !198)
!281 = !DILocation(line: 127, column: 16, scope: !198)
!282 = !DILocation(line: 127, column: 9, scope: !198)
!283 = !DILocation(line: 127, column: 20, scope: !198)
!284 = !DILocation(line: 128, column: 28, scope: !198)
!285 = !DILocation(line: 128, column: 24, scope: !198)
!286 = !DILocation(line: 128, column: 16, scope: !198)
!287 = !DILocation(line: 128, column: 9, scope: !198)
!288 = !DILocation(line: 128, column: 20, scope: !198)
!289 = !DILocation(line: 129, column: 31, scope: !198)
!290 = !DILocation(line: 129, column: 28, scope: !198)
!291 = !DILocation(line: 129, column: 24, scope: !198)
!292 = !DILocation(line: 129, column: 16, scope: !198)
!293 = !DILocation(line: 129, column: 9, scope: !198)
!294 = !DILocation(line: 129, column: 20, scope: !198)
!295 = !DILocation(line: 119, column: 29, scope: !199)
!296 = !DILocation(line: 119, column: 23, scope: !199)
!297 = !DILocation(line: 119, column: 5, scope: !196)
!298 = distinct !{!298, !297, !299, !252, !253}
!299 = !DILocation(line: 130, column: 5, scope: !196)
!300 = !DILocation(line: 144, column: 1, scope: !188)
!301 = !DILocation(line: 0, scope: !204)
!302 = !DILocation(line: 134, column: 24, scope: !206)
!303 = !DILocation(line: 134, column: 19, scope: !206)
!304 = !DILocation(line: 134, column: 39, scope: !206)
!305 = !DILocation(line: 134, column: 32, scope: !206)
!306 = !DILocation(line: 134, column: 30, scope: !206)
!307 = !DILocation(line: 0, scope: !206)
!308 = !DILocation(line: 135, column: 26, scope: !206)
!309 = !DILocation(line: 135, column: 19, scope: !206)
!310 = !DILocation(line: 135, column: 39, scope: !206)
!311 = !DILocation(line: 135, column: 32, scope: !206)
!312 = !DILocation(line: 135, column: 30, scope: !206)
!313 = !DILocation(line: 136, column: 30, scope: !206)
!314 = !DILocation(line: 137, column: 30, scope: !206)
!315 = !DILocation(line: 139, column: 28, scope: !206)
!316 = !DILocation(line: 139, column: 24, scope: !206)
!317 = !DILocation(line: 139, column: 9, scope: !206)
!318 = !DILocation(line: 139, column: 20, scope: !206)
!319 = !DILocation(line: 140, column: 23, scope: !206)
!320 = !DILocation(line: 140, column: 28, scope: !206)
!321 = !DILocation(line: 140, column: 22, scope: !206)
!322 = !DILocation(line: 140, column: 9, scope: !206)
!323 = !DILocation(line: 140, column: 20, scope: !206)
!324 = !DILocation(line: 141, column: 28, scope: !206)
!325 = !DILocation(line: 141, column: 24, scope: !206)
!326 = !DILocation(line: 141, column: 9, scope: !206)
!327 = !DILocation(line: 141, column: 20, scope: !206)
!328 = !DILocation(line: 142, column: 31, scope: !206)
!329 = !DILocation(line: 142, column: 28, scope: !206)
!330 = !DILocation(line: 142, column: 24, scope: !206)
!331 = !DILocation(line: 142, column: 9, scope: !206)
!332 = !DILocation(line: 142, column: 20, scope: !206)
!333 = !DILocation(line: 132, column: 29, scope: !207)
!334 = !DILocation(line: 132, column: 23, scope: !207)
!335 = !DILocation(line: 132, column: 5, scope: !204)
!336 = distinct !{!336, !335, !337, !252, !253}
!337 = !DILocation(line: 143, column: 5, scope: !204)
!338 = distinct !DISubprogram(name: "add4x4_idct", scope: !49, file: !49, line: 193, type: !101, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !339)
!339 = !{!340, !341, !342, !343, !344, !346, !349, !350, !351, !352, !354, !357, !358, !359, !360, !362}
!340 = !DILocalVariable(name: "p_dst", arg: 1, scope: !338, file: !49, line: 193, type: !98)
!341 = !DILocalVariable(name: "dct", arg: 2, scope: !338, file: !49, line: 193, type: !93)
!342 = !DILocalVariable(name: "d", scope: !338, file: !49, line: 195, type: !108)
!343 = !DILocalVariable(name: "tmp", scope: !338, file: !49, line: 196, type: !108)
!344 = !DILocalVariable(name: "i", scope: !345, file: !49, line: 198, type: !51)
!345 = distinct !DILexicalBlock(scope: !338, file: !49, line: 198, column: 5)
!346 = !DILocalVariable(name: "s02", scope: !347, file: !49, line: 200, type: !51)
!347 = distinct !DILexicalBlock(scope: !348, file: !49, line: 199, column: 5)
!348 = distinct !DILexicalBlock(scope: !345, file: !49, line: 198, column: 5)
!349 = !DILocalVariable(name: "d02", scope: !347, file: !49, line: 201, type: !51)
!350 = !DILocalVariable(name: "s13", scope: !347, file: !49, line: 202, type: !51)
!351 = !DILocalVariable(name: "d13", scope: !347, file: !49, line: 203, type: !51)
!352 = !DILocalVariable(name: "i", scope: !353, file: !49, line: 211, type: !51)
!353 = distinct !DILexicalBlock(scope: !338, file: !49, line: 211, column: 5)
!354 = !DILocalVariable(name: "s02", scope: !355, file: !49, line: 213, type: !51)
!355 = distinct !DILexicalBlock(scope: !356, file: !49, line: 212, column: 5)
!356 = distinct !DILexicalBlock(scope: !353, file: !49, line: 211, column: 5)
!357 = !DILocalVariable(name: "d02", scope: !355, file: !49, line: 214, type: !51)
!358 = !DILocalVariable(name: "s13", scope: !355, file: !49, line: 215, type: !51)
!359 = !DILocalVariable(name: "d13", scope: !355, file: !49, line: 216, type: !51)
!360 = !DILocalVariable(name: "y", scope: !361, file: !49, line: 225, type: !51)
!361 = distinct !DILexicalBlock(scope: !338, file: !49, line: 225, column: 5)
!362 = !DILocalVariable(name: "x", scope: !363, file: !49, line: 227, type: !51)
!363 = distinct !DILexicalBlock(scope: !364, file: !49, line: 227, column: 9)
!364 = distinct !DILexicalBlock(scope: !365, file: !49, line: 226, column: 5)
!365 = distinct !DILexicalBlock(scope: !361, file: !49, line: 225, column: 5)
!366 = !DILocation(line: 0, scope: !338)
!367 = !DILocation(line: 195, column: 5, scope: !338)
!368 = !DILocation(line: 195, column: 13, scope: !338)
!369 = !DILocation(line: 196, column: 5, scope: !338)
!370 = !DILocation(line: 196, column: 13, scope: !338)
!371 = !DILocation(line: 0, scope: !345)
!372 = !DILocation(line: 198, column: 5, scope: !345)
!373 = !DILocation(line: 200, column: 20, scope: !347)
!374 = !DILocation(line: 200, column: 45, scope: !347)
!375 = !DILocation(line: 200, column: 38, scope: !347)
!376 = !DILocation(line: 200, column: 35, scope: !347)
!377 = !DILocation(line: 0, scope: !347)
!378 = !DILocation(line: 201, column: 35, scope: !347)
!379 = !DILocation(line: 202, column: 27, scope: !347)
!380 = !DILocation(line: 202, column: 20, scope: !347)
!381 = !DILocation(line: 202, column: 45, scope: !347)
!382 = !DILocation(line: 202, column: 38, scope: !347)
!383 = !DILocation(line: 202, column: 48, scope: !347)
!384 = !DILocation(line: 202, column: 35, scope: !347)
!385 = !DILocation(line: 203, column: 30, scope: !347)
!386 = !DILocation(line: 203, column: 35, scope: !347)
!387 = !DILocation(line: 205, column: 26, scope: !347)
!388 = !DILocation(line: 205, column: 22, scope: !347)
!389 = !DILocation(line: 205, column: 14, scope: !347)
!390 = !DILocation(line: 205, column: 9, scope: !347)
!391 = !DILocation(line: 205, column: 20, scope: !347)
!392 = !DILocation(line: 206, column: 26, scope: !347)
!393 = !DILocation(line: 206, column: 22, scope: !347)
!394 = !DILocation(line: 206, column: 16, scope: !347)
!395 = !DILocation(line: 206, column: 9, scope: !347)
!396 = !DILocation(line: 206, column: 20, scope: !347)
!397 = !DILocation(line: 207, column: 26, scope: !347)
!398 = !DILocation(line: 207, column: 22, scope: !347)
!399 = !DILocation(line: 207, column: 16, scope: !347)
!400 = !DILocation(line: 207, column: 9, scope: !347)
!401 = !DILocation(line: 207, column: 20, scope: !347)
!402 = !DILocation(line: 208, column: 26, scope: !347)
!403 = !DILocation(line: 208, column: 22, scope: !347)
!404 = !DILocation(line: 208, column: 16, scope: !347)
!405 = !DILocation(line: 208, column: 9, scope: !347)
!406 = !DILocation(line: 208, column: 20, scope: !347)
!407 = !DILocation(line: 198, column: 29, scope: !348)
!408 = !DILocation(line: 198, column: 23, scope: !348)
!409 = distinct !{!409, !372, !410, !252, !253}
!410 = !DILocation(line: 209, column: 5, scope: !345)
!411 = !DILocation(line: 0, scope: !353)
!412 = !DILocation(line: 213, column: 20, scope: !355)
!413 = !DILocation(line: 213, column: 45, scope: !355)
!414 = !DILocation(line: 213, column: 38, scope: !355)
!415 = !DILocation(line: 213, column: 35, scope: !355)
!416 = !DILocation(line: 0, scope: !355)
!417 = !DILocation(line: 214, column: 35, scope: !355)
!418 = !DILocation(line: 215, column: 27, scope: !355)
!419 = !DILocation(line: 215, column: 20, scope: !355)
!420 = !DILocation(line: 215, column: 45, scope: !355)
!421 = !DILocation(line: 215, column: 38, scope: !355)
!422 = !DILocation(line: 215, column: 48, scope: !355)
!423 = !DILocation(line: 215, column: 35, scope: !355)
!424 = !DILocation(line: 216, column: 30, scope: !355)
!425 = !DILocation(line: 216, column: 35, scope: !355)
!426 = !DILocation(line: 218, column: 26, scope: !355)
!427 = !DILocation(line: 218, column: 32, scope: !355)
!428 = !DILocation(line: 218, column: 39, scope: !355)
!429 = !DILocation(line: 218, column: 20, scope: !355)
!430 = !DILocation(line: 218, column: 9, scope: !355)
!431 = !DILocation(line: 218, column: 18, scope: !355)
!432 = !DILocation(line: 219, column: 26, scope: !355)
!433 = !DILocation(line: 219, column: 32, scope: !355)
!434 = !DILocation(line: 219, column: 39, scope: !355)
!435 = !DILocation(line: 219, column: 20, scope: !355)
!436 = !DILocation(line: 219, column: 9, scope: !355)
!437 = !DILocation(line: 219, column: 18, scope: !355)
!438 = !DILocation(line: 220, column: 32, scope: !355)
!439 = !DILocation(line: 220, column: 39, scope: !355)
!440 = !DILocation(line: 220, column: 20, scope: !355)
!441 = !DILocation(line: 220, column: 9, scope: !355)
!442 = !DILocation(line: 220, column: 18, scope: !355)
!443 = !DILocation(line: 221, column: 32, scope: !355)
!444 = !DILocation(line: 221, column: 39, scope: !355)
!445 = !DILocation(line: 221, column: 20, scope: !355)
!446 = !DILocation(line: 221, column: 9, scope: !355)
!447 = !DILocation(line: 221, column: 18, scope: !355)
!448 = !DILocation(line: 211, column: 29, scope: !356)
!449 = !DILocation(line: 211, column: 23, scope: !356)
!450 = !DILocation(line: 211, column: 5, scope: !353)
!451 = distinct !{!451, !450, !452, !252, !253}
!452 = !DILocation(line: 222, column: 5, scope: !353)
!453 = !DILocation(line: 0, scope: !361)
!454 = !DILocation(line: 0, scope: !363)
!455 = !DILocation(line: 227, column: 9, scope: !363)
!456 = !DILocation(line: 231, column: 1, scope: !338)
!457 = !DILocation(line: 229, column: 15, scope: !364)
!458 = !DILocation(line: 225, column: 29, scope: !365)
!459 = !DILocation(line: 225, column: 23, scope: !365)
!460 = !DILocation(line: 225, column: 5, scope: !361)
!461 = distinct !{!461, !460, !462, !252, !253}
!462 = !DILocation(line: 230, column: 5, scope: !361)
!463 = !DILocation(line: 228, column: 41, scope: !464)
!464 = distinct !DILexicalBlock(scope: !363, file: !49, line: 227, column: 9)
!465 = !DILocation(line: 228, column: 57, scope: !464)
!466 = !DILocation(line: 228, column: 52, scope: !464)
!467 = !DILocation(line: 228, column: 50, scope: !464)
!468 = !DILocalVariable(name: "x", arg: 1, scope: !469, file: !7, line: 195, type: !51)
!469 = distinct !DISubprogram(name: "x264_clip_uint8", scope: !7, file: !7, line: 195, type: !470, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!25, !51}
!472 = !{!468}
!473 = !DILocation(line: 0, scope: !469, inlinedAt: !474)
!474 = distinct !DILocation(line: 228, column: 24, scope: !464)
!475 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !474)
!476 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !474)
!477 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !474)
!478 = !DILocation(line: 228, column: 22, scope: !464)
!479 = !DILocation(line: 227, column: 33, scope: !464)
!480 = !DILocation(line: 227, column: 27, scope: !464)
!481 = distinct !{!481, !455, !482, !252, !253}
!482 = !DILocation(line: 228, column: 61, scope: !363)
!483 = distinct !DISubprogram(name: "sub8x8_dct", scope: !49, file: !49, line: 146, type: !105, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!484 = !{!485, !486, !487}
!485 = !DILocalVariable(name: "dct", arg: 1, scope: !483, file: !49, line: 146, type: !107)
!486 = !DILocalVariable(name: "pix1", arg: 2, scope: !483, file: !49, line: 146, type: !98)
!487 = !DILocalVariable(name: "pix2", arg: 3, scope: !483, file: !49, line: 146, type: !98)
!488 = !DILocation(line: 0, scope: !483)
!489 = !DILocation(line: 148, column: 5, scope: !483)
!490 = !DILocation(line: 149, column: 17, scope: !483)
!491 = !DILocation(line: 149, column: 26, scope: !483)
!492 = !DILocation(line: 149, column: 36, scope: !483)
!493 = !DILocation(line: 149, column: 5, scope: !483)
!494 = !DILocation(line: 150, column: 17, scope: !483)
!495 = !DILocation(line: 150, column: 26, scope: !483)
!496 = !DILocation(line: 150, column: 50, scope: !483)
!497 = !DILocation(line: 150, column: 5, scope: !483)
!498 = !DILocation(line: 151, column: 17, scope: !483)
!499 = !DILocation(line: 151, column: 26, scope: !483)
!500 = !DILocation(line: 151, column: 50, scope: !483)
!501 = !DILocation(line: 151, column: 5, scope: !483)
!502 = !DILocation(line: 152, column: 1, scope: !483)
!503 = distinct !DISubprogram(name: "sub8x8_dct_dc", scope: !49, file: !49, line: 175, type: !91, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!504 = !{!505, !506, !507, !508, !509, !510, !511}
!505 = !DILocalVariable(name: "dct", arg: 1, scope: !503, file: !49, line: 175, type: !93)
!506 = !DILocalVariable(name: "pix1", arg: 2, scope: !503, file: !49, line: 175, type: !98)
!507 = !DILocalVariable(name: "pix2", arg: 3, scope: !503, file: !49, line: 175, type: !98)
!508 = !DILocalVariable(name: "d0", scope: !503, file: !49, line: 183, type: !51)
!509 = !DILocalVariable(name: "d1", scope: !503, file: !49, line: 184, type: !51)
!510 = !DILocalVariable(name: "d2", scope: !503, file: !49, line: 185, type: !51)
!511 = !DILocalVariable(name: "d3", scope: !503, file: !49, line: 186, type: !51)
!512 = !DILocation(line: 0, scope: !503)
!513 = !DILocalVariable(name: "pix1", arg: 1, scope: !514, file: !49, line: 162, type: !98)
!514 = distinct !DISubprogram(name: "sub4x4_dct_dc", scope: !49, file: !49, line: 162, type: !515, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !517)
!515 = !DISubroutineType(types: !516)
!516 = !{!51, !98, !98}
!517 = !{!513, !518, !519, !520}
!518 = !DILocalVariable(name: "pix2", arg: 2, scope: !514, file: !49, line: 162, type: !98)
!519 = !DILocalVariable(name: "d", scope: !514, file: !49, line: 164, type: !108)
!520 = !DILocalVariable(name: "sum", scope: !514, file: !49, line: 165, type: !51)
!521 = !DILocation(line: 0, scope: !514, inlinedAt: !522)
!522 = distinct !DILocation(line: 177, column: 14, scope: !503)
!523 = !DILocation(line: 164, column: 5, scope: !514, inlinedAt: !522)
!524 = !DILocation(line: 164, column: 13, scope: !514, inlinedAt: !522)
!525 = !DILocation(line: 0, scope: !217, inlinedAt: !526)
!526 = distinct !DILocation(line: 167, column: 5, scope: !514, inlinedAt: !522)
!527 = !DILocation(line: 0, scope: !227, inlinedAt: !526)
!528 = !DILocation(line: 103, column: 5, scope: !227, inlinedAt: !526)
!529 = !DILocation(line: 0, scope: !229, inlinedAt: !526)
!530 = !DILocation(line: 105, column: 9, scope: !229, inlinedAt: !526)
!531 = !DILocation(line: 106, column: 34, scope: !239, inlinedAt: !526)
!532 = !DILocation(line: 106, column: 44, scope: !239, inlinedAt: !526)
!533 = !DILocation(line: 106, column: 42, scope: !239, inlinedAt: !526)
!534 = !DILocation(line: 106, column: 20, scope: !239, inlinedAt: !526)
!535 = !DILocation(line: 106, column: 13, scope: !239, inlinedAt: !526)
!536 = !DILocation(line: 106, column: 32, scope: !239, inlinedAt: !526)
!537 = !DILocation(line: 105, column: 38, scope: !239, inlinedAt: !526)
!538 = !DILocation(line: 105, column: 27, scope: !239, inlinedAt: !526)
!539 = distinct !{!539, !530, !540, !252, !253}
!540 = !DILocation(line: 106, column: 50, scope: !229, inlinedAt: !526)
!541 = !DILocation(line: 107, column: 14, scope: !230, inlinedAt: !526)
!542 = !DILocation(line: 108, column: 14, scope: !230, inlinedAt: !526)
!543 = !DILocation(line: 103, column: 34, scope: !231, inlinedAt: !526)
!544 = !DILocation(line: 103, column: 23, scope: !231, inlinedAt: !526)
!545 = distinct !{!545, !528, !546, !252, !253}
!546 = !DILocation(line: 109, column: 5, scope: !227, inlinedAt: !526)
!547 = !DILocation(line: 169, column: 12, scope: !514, inlinedAt: !522)
!548 = !DILocation(line: 169, column: 19, scope: !514, inlinedAt: !522)
!549 = !DILocation(line: 169, column: 26, scope: !514, inlinedAt: !522)
!550 = !DILocation(line: 169, column: 33, scope: !514, inlinedAt: !522)
!551 = !DILocation(line: 169, column: 40, scope: !514, inlinedAt: !522)
!552 = !DILocation(line: 169, column: 47, scope: !514, inlinedAt: !522)
!553 = !DILocation(line: 169, column: 54, scope: !514, inlinedAt: !522)
!554 = !DILocation(line: 169, column: 61, scope: !514, inlinedAt: !522)
!555 = !DILocation(line: 170, column: 12, scope: !514, inlinedAt: !522)
!556 = !DILocation(line: 170, column: 19, scope: !514, inlinedAt: !522)
!557 = !DILocation(line: 170, column: 26, scope: !514, inlinedAt: !522)
!558 = !DILocation(line: 170, column: 34, scope: !514, inlinedAt: !522)
!559 = !DILocation(line: 170, column: 42, scope: !514, inlinedAt: !522)
!560 = !DILocation(line: 170, column: 50, scope: !514, inlinedAt: !522)
!561 = !DILocation(line: 170, column: 58, scope: !514, inlinedAt: !522)
!562 = !DILocation(line: 170, column: 66, scope: !514, inlinedAt: !522)
!563 = !DILocation(line: 170, column: 17, scope: !514, inlinedAt: !522)
!564 = !DILocation(line: 170, column: 24, scope: !514, inlinedAt: !522)
!565 = !DILocation(line: 170, column: 32, scope: !514, inlinedAt: !522)
!566 = !DILocation(line: 170, column: 40, scope: !514, inlinedAt: !522)
!567 = !DILocation(line: 170, column: 48, scope: !514, inlinedAt: !522)
!568 = !DILocation(line: 170, column: 56, scope: !514, inlinedAt: !522)
!569 = !DILocation(line: 170, column: 64, scope: !514, inlinedAt: !522)
!570 = !DILocation(line: 169, column: 17, scope: !514, inlinedAt: !522)
!571 = !DILocation(line: 169, column: 24, scope: !514, inlinedAt: !522)
!572 = !DILocation(line: 169, column: 31, scope: !514, inlinedAt: !522)
!573 = !DILocation(line: 169, column: 38, scope: !514, inlinedAt: !522)
!574 = !DILocation(line: 169, column: 45, scope: !514, inlinedAt: !522)
!575 = !DILocation(line: 169, column: 52, scope: !514, inlinedAt: !522)
!576 = !DILocation(line: 169, column: 59, scope: !514, inlinedAt: !522)
!577 = !DILocation(line: 170, column: 9, scope: !514, inlinedAt: !522)
!578 = !DILocation(line: 173, column: 1, scope: !514, inlinedAt: !522)
!579 = !DILocation(line: 177, column: 12, scope: !503)
!580 = !DILocation(line: 178, column: 30, scope: !503)
!581 = !DILocation(line: 178, column: 40, scope: !503)
!582 = !DILocation(line: 0, scope: !514, inlinedAt: !583)
!583 = distinct !DILocation(line: 178, column: 14, scope: !503)
!584 = !DILocation(line: 164, column: 5, scope: !514, inlinedAt: !583)
!585 = !DILocation(line: 164, column: 13, scope: !514, inlinedAt: !583)
!586 = !DILocation(line: 0, scope: !217, inlinedAt: !587)
!587 = distinct !DILocation(line: 167, column: 5, scope: !514, inlinedAt: !583)
!588 = !DILocation(line: 0, scope: !227, inlinedAt: !587)
!589 = !DILocation(line: 103, column: 5, scope: !227, inlinedAt: !587)
!590 = !DILocation(line: 0, scope: !229, inlinedAt: !587)
!591 = !DILocation(line: 105, column: 9, scope: !229, inlinedAt: !587)
!592 = !DILocation(line: 106, column: 34, scope: !239, inlinedAt: !587)
!593 = !DILocation(line: 106, column: 44, scope: !239, inlinedAt: !587)
!594 = !DILocation(line: 106, column: 42, scope: !239, inlinedAt: !587)
!595 = !DILocation(line: 106, column: 20, scope: !239, inlinedAt: !587)
!596 = !DILocation(line: 106, column: 13, scope: !239, inlinedAt: !587)
!597 = !DILocation(line: 106, column: 32, scope: !239, inlinedAt: !587)
!598 = !DILocation(line: 105, column: 38, scope: !239, inlinedAt: !587)
!599 = !DILocation(line: 105, column: 27, scope: !239, inlinedAt: !587)
!600 = distinct !{!600, !591, !601, !252, !253}
!601 = !DILocation(line: 106, column: 50, scope: !229, inlinedAt: !587)
!602 = !DILocation(line: 107, column: 14, scope: !230, inlinedAt: !587)
!603 = !DILocation(line: 108, column: 14, scope: !230, inlinedAt: !587)
!604 = !DILocation(line: 103, column: 34, scope: !231, inlinedAt: !587)
!605 = !DILocation(line: 103, column: 23, scope: !231, inlinedAt: !587)
!606 = distinct !{!606, !589, !607, !252, !253}
!607 = !DILocation(line: 109, column: 5, scope: !227, inlinedAt: !587)
!608 = !DILocation(line: 169, column: 12, scope: !514, inlinedAt: !583)
!609 = !DILocation(line: 169, column: 19, scope: !514, inlinedAt: !583)
!610 = !DILocation(line: 169, column: 26, scope: !514, inlinedAt: !583)
!611 = !DILocation(line: 169, column: 33, scope: !514, inlinedAt: !583)
!612 = !DILocation(line: 169, column: 40, scope: !514, inlinedAt: !583)
!613 = !DILocation(line: 169, column: 47, scope: !514, inlinedAt: !583)
!614 = !DILocation(line: 169, column: 54, scope: !514, inlinedAt: !583)
!615 = !DILocation(line: 169, column: 61, scope: !514, inlinedAt: !583)
!616 = !DILocation(line: 170, column: 12, scope: !514, inlinedAt: !583)
!617 = !DILocation(line: 170, column: 19, scope: !514, inlinedAt: !583)
!618 = !DILocation(line: 170, column: 26, scope: !514, inlinedAt: !583)
!619 = !DILocation(line: 170, column: 34, scope: !514, inlinedAt: !583)
!620 = !DILocation(line: 170, column: 42, scope: !514, inlinedAt: !583)
!621 = !DILocation(line: 170, column: 50, scope: !514, inlinedAt: !583)
!622 = !DILocation(line: 170, column: 58, scope: !514, inlinedAt: !583)
!623 = !DILocation(line: 170, column: 66, scope: !514, inlinedAt: !583)
!624 = !DILocation(line: 170, column: 17, scope: !514, inlinedAt: !583)
!625 = !DILocation(line: 170, column: 24, scope: !514, inlinedAt: !583)
!626 = !DILocation(line: 170, column: 32, scope: !514, inlinedAt: !583)
!627 = !DILocation(line: 170, column: 40, scope: !514, inlinedAt: !583)
!628 = !DILocation(line: 170, column: 48, scope: !514, inlinedAt: !583)
!629 = !DILocation(line: 170, column: 56, scope: !514, inlinedAt: !583)
!630 = !DILocation(line: 170, column: 64, scope: !514, inlinedAt: !583)
!631 = !DILocation(line: 169, column: 17, scope: !514, inlinedAt: !583)
!632 = !DILocation(line: 169, column: 24, scope: !514, inlinedAt: !583)
!633 = !DILocation(line: 169, column: 31, scope: !514, inlinedAt: !583)
!634 = !DILocation(line: 169, column: 38, scope: !514, inlinedAt: !583)
!635 = !DILocation(line: 169, column: 45, scope: !514, inlinedAt: !583)
!636 = !DILocation(line: 169, column: 52, scope: !514, inlinedAt: !583)
!637 = !DILocation(line: 169, column: 59, scope: !514, inlinedAt: !583)
!638 = !DILocation(line: 170, column: 9, scope: !514, inlinedAt: !583)
!639 = !DILocation(line: 173, column: 1, scope: !514, inlinedAt: !583)
!640 = !DILocation(line: 178, column: 5, scope: !503)
!641 = !DILocation(line: 178, column: 12, scope: !503)
!642 = !DILocation(line: 179, column: 30, scope: !503)
!643 = !DILocation(line: 179, column: 54, scope: !503)
!644 = !DILocation(line: 0, scope: !514, inlinedAt: !645)
!645 = distinct !DILocation(line: 179, column: 14, scope: !503)
!646 = !DILocation(line: 164, column: 5, scope: !514, inlinedAt: !645)
!647 = !DILocation(line: 164, column: 13, scope: !514, inlinedAt: !645)
!648 = !DILocation(line: 0, scope: !217, inlinedAt: !649)
!649 = distinct !DILocation(line: 167, column: 5, scope: !514, inlinedAt: !645)
!650 = !DILocation(line: 0, scope: !227, inlinedAt: !649)
!651 = !DILocation(line: 103, column: 5, scope: !227, inlinedAt: !649)
!652 = !DILocation(line: 0, scope: !229, inlinedAt: !649)
!653 = !DILocation(line: 105, column: 9, scope: !229, inlinedAt: !649)
!654 = !DILocation(line: 106, column: 34, scope: !239, inlinedAt: !649)
!655 = !DILocation(line: 106, column: 44, scope: !239, inlinedAt: !649)
!656 = !DILocation(line: 106, column: 42, scope: !239, inlinedAt: !649)
!657 = !DILocation(line: 106, column: 20, scope: !239, inlinedAt: !649)
!658 = !DILocation(line: 106, column: 13, scope: !239, inlinedAt: !649)
!659 = !DILocation(line: 106, column: 32, scope: !239, inlinedAt: !649)
!660 = !DILocation(line: 105, column: 38, scope: !239, inlinedAt: !649)
!661 = !DILocation(line: 105, column: 27, scope: !239, inlinedAt: !649)
!662 = distinct !{!662, !653, !663, !252, !253}
!663 = !DILocation(line: 106, column: 50, scope: !229, inlinedAt: !649)
!664 = !DILocation(line: 107, column: 14, scope: !230, inlinedAt: !649)
!665 = !DILocation(line: 108, column: 14, scope: !230, inlinedAt: !649)
!666 = !DILocation(line: 103, column: 34, scope: !231, inlinedAt: !649)
!667 = !DILocation(line: 103, column: 23, scope: !231, inlinedAt: !649)
!668 = distinct !{!668, !651, !669, !252, !253}
!669 = !DILocation(line: 109, column: 5, scope: !227, inlinedAt: !649)
!670 = !DILocation(line: 169, column: 12, scope: !514, inlinedAt: !645)
!671 = !DILocation(line: 169, column: 19, scope: !514, inlinedAt: !645)
!672 = !DILocation(line: 169, column: 26, scope: !514, inlinedAt: !645)
!673 = !DILocation(line: 169, column: 33, scope: !514, inlinedAt: !645)
!674 = !DILocation(line: 169, column: 40, scope: !514, inlinedAt: !645)
!675 = !DILocation(line: 169, column: 47, scope: !514, inlinedAt: !645)
!676 = !DILocation(line: 169, column: 54, scope: !514, inlinedAt: !645)
!677 = !DILocation(line: 169, column: 61, scope: !514, inlinedAt: !645)
!678 = !DILocation(line: 170, column: 12, scope: !514, inlinedAt: !645)
!679 = !DILocation(line: 170, column: 19, scope: !514, inlinedAt: !645)
!680 = !DILocation(line: 170, column: 26, scope: !514, inlinedAt: !645)
!681 = !DILocation(line: 170, column: 34, scope: !514, inlinedAt: !645)
!682 = !DILocation(line: 170, column: 42, scope: !514, inlinedAt: !645)
!683 = !DILocation(line: 170, column: 50, scope: !514, inlinedAt: !645)
!684 = !DILocation(line: 170, column: 58, scope: !514, inlinedAt: !645)
!685 = !DILocation(line: 170, column: 66, scope: !514, inlinedAt: !645)
!686 = !DILocation(line: 170, column: 17, scope: !514, inlinedAt: !645)
!687 = !DILocation(line: 170, column: 24, scope: !514, inlinedAt: !645)
!688 = !DILocation(line: 170, column: 32, scope: !514, inlinedAt: !645)
!689 = !DILocation(line: 170, column: 40, scope: !514, inlinedAt: !645)
!690 = !DILocation(line: 170, column: 48, scope: !514, inlinedAt: !645)
!691 = !DILocation(line: 170, column: 56, scope: !514, inlinedAt: !645)
!692 = !DILocation(line: 170, column: 64, scope: !514, inlinedAt: !645)
!693 = !DILocation(line: 169, column: 17, scope: !514, inlinedAt: !645)
!694 = !DILocation(line: 169, column: 24, scope: !514, inlinedAt: !645)
!695 = !DILocation(line: 169, column: 31, scope: !514, inlinedAt: !645)
!696 = !DILocation(line: 169, column: 38, scope: !514, inlinedAt: !645)
!697 = !DILocation(line: 169, column: 45, scope: !514, inlinedAt: !645)
!698 = !DILocation(line: 169, column: 52, scope: !514, inlinedAt: !645)
!699 = !DILocation(line: 169, column: 59, scope: !514, inlinedAt: !645)
!700 = !DILocation(line: 170, column: 9, scope: !514, inlinedAt: !645)
!701 = !DILocation(line: 173, column: 1, scope: !514, inlinedAt: !645)
!702 = !DILocation(line: 179, column: 5, scope: !503)
!703 = !DILocation(line: 179, column: 12, scope: !503)
!704 = !DILocation(line: 180, column: 30, scope: !503)
!705 = !DILocation(line: 180, column: 54, scope: !503)
!706 = !DILocation(line: 0, scope: !514, inlinedAt: !707)
!707 = distinct !DILocation(line: 180, column: 14, scope: !503)
!708 = !DILocation(line: 164, column: 5, scope: !514, inlinedAt: !707)
!709 = !DILocation(line: 164, column: 13, scope: !514, inlinedAt: !707)
!710 = !DILocation(line: 0, scope: !217, inlinedAt: !711)
!711 = distinct !DILocation(line: 167, column: 5, scope: !514, inlinedAt: !707)
!712 = !DILocation(line: 0, scope: !227, inlinedAt: !711)
!713 = !DILocation(line: 103, column: 5, scope: !227, inlinedAt: !711)
!714 = !DILocation(line: 0, scope: !229, inlinedAt: !711)
!715 = !DILocation(line: 105, column: 9, scope: !229, inlinedAt: !711)
!716 = !DILocation(line: 106, column: 34, scope: !239, inlinedAt: !711)
!717 = !DILocation(line: 106, column: 44, scope: !239, inlinedAt: !711)
!718 = !DILocation(line: 106, column: 42, scope: !239, inlinedAt: !711)
!719 = !DILocation(line: 106, column: 20, scope: !239, inlinedAt: !711)
!720 = !DILocation(line: 106, column: 13, scope: !239, inlinedAt: !711)
!721 = !DILocation(line: 106, column: 32, scope: !239, inlinedAt: !711)
!722 = !DILocation(line: 105, column: 38, scope: !239, inlinedAt: !711)
!723 = !DILocation(line: 105, column: 27, scope: !239, inlinedAt: !711)
!724 = distinct !{!724, !715, !725, !252, !253}
!725 = !DILocation(line: 106, column: 50, scope: !229, inlinedAt: !711)
!726 = !DILocation(line: 107, column: 14, scope: !230, inlinedAt: !711)
!727 = !DILocation(line: 108, column: 14, scope: !230, inlinedAt: !711)
!728 = !DILocation(line: 103, column: 34, scope: !231, inlinedAt: !711)
!729 = !DILocation(line: 103, column: 23, scope: !231, inlinedAt: !711)
!730 = distinct !{!730, !713, !731, !252, !253}
!731 = !DILocation(line: 109, column: 5, scope: !227, inlinedAt: !711)
!732 = !DILocation(line: 169, column: 12, scope: !514, inlinedAt: !707)
!733 = !DILocation(line: 169, column: 19, scope: !514, inlinedAt: !707)
!734 = !DILocation(line: 169, column: 26, scope: !514, inlinedAt: !707)
!735 = !DILocation(line: 169, column: 33, scope: !514, inlinedAt: !707)
!736 = !DILocation(line: 169, column: 40, scope: !514, inlinedAt: !707)
!737 = !DILocation(line: 169, column: 47, scope: !514, inlinedAt: !707)
!738 = !DILocation(line: 169, column: 54, scope: !514, inlinedAt: !707)
!739 = !DILocation(line: 169, column: 61, scope: !514, inlinedAt: !707)
!740 = !DILocation(line: 170, column: 12, scope: !514, inlinedAt: !707)
!741 = !DILocation(line: 170, column: 19, scope: !514, inlinedAt: !707)
!742 = !DILocation(line: 170, column: 26, scope: !514, inlinedAt: !707)
!743 = !DILocation(line: 170, column: 34, scope: !514, inlinedAt: !707)
!744 = !DILocation(line: 170, column: 42, scope: !514, inlinedAt: !707)
!745 = !DILocation(line: 170, column: 50, scope: !514, inlinedAt: !707)
!746 = !DILocation(line: 170, column: 58, scope: !514, inlinedAt: !707)
!747 = !DILocation(line: 170, column: 66, scope: !514, inlinedAt: !707)
!748 = !DILocation(line: 170, column: 17, scope: !514, inlinedAt: !707)
!749 = !DILocation(line: 170, column: 24, scope: !514, inlinedAt: !707)
!750 = !DILocation(line: 170, column: 32, scope: !514, inlinedAt: !707)
!751 = !DILocation(line: 170, column: 40, scope: !514, inlinedAt: !707)
!752 = !DILocation(line: 170, column: 48, scope: !514, inlinedAt: !707)
!753 = !DILocation(line: 170, column: 56, scope: !514, inlinedAt: !707)
!754 = !DILocation(line: 170, column: 64, scope: !514, inlinedAt: !707)
!755 = !DILocation(line: 169, column: 17, scope: !514, inlinedAt: !707)
!756 = !DILocation(line: 169, column: 24, scope: !514, inlinedAt: !707)
!757 = !DILocation(line: 169, column: 31, scope: !514, inlinedAt: !707)
!758 = !DILocation(line: 169, column: 38, scope: !514, inlinedAt: !707)
!759 = !DILocation(line: 169, column: 45, scope: !514, inlinedAt: !707)
!760 = !DILocation(line: 169, column: 52, scope: !514, inlinedAt: !707)
!761 = !DILocation(line: 169, column: 59, scope: !514, inlinedAt: !707)
!762 = !DILocation(line: 170, column: 9, scope: !514, inlinedAt: !707)
!763 = !DILocation(line: 173, column: 1, scope: !514, inlinedAt: !707)
!764 = !DILocation(line: 180, column: 5, scope: !503)
!765 = !DILocation(line: 183, column: 14, scope: !503)
!766 = !DILocation(line: 183, column: 23, scope: !503)
!767 = !DILocation(line: 183, column: 21, scope: !503)
!768 = !DILocation(line: 184, column: 14, scope: !503)
!769 = !DILocation(line: 184, column: 23, scope: !503)
!770 = !DILocation(line: 184, column: 21, scope: !503)
!771 = !DILocation(line: 185, column: 21, scope: !503)
!772 = !DILocation(line: 186, column: 21, scope: !503)
!773 = !DILocation(line: 187, column: 17, scope: !503)
!774 = !DILocation(line: 187, column: 14, scope: !503)
!775 = !DILocation(line: 187, column: 12, scope: !503)
!776 = !DILocation(line: 188, column: 17, scope: !503)
!777 = !DILocation(line: 188, column: 14, scope: !503)
!778 = !DILocation(line: 188, column: 12, scope: !503)
!779 = !DILocation(line: 189, column: 17, scope: !503)
!780 = !DILocation(line: 189, column: 14, scope: !503)
!781 = !DILocation(line: 189, column: 12, scope: !503)
!782 = !DILocation(line: 190, column: 17, scope: !503)
!783 = !DILocation(line: 190, column: 14, scope: !503)
!784 = !DILocation(line: 190, column: 12, scope: !503)
!785 = !DILocation(line: 191, column: 1, scope: !503)
!786 = distinct !DISubprogram(name: "add8x8_idct", scope: !49, file: !49, line: 233, type: !112, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !787)
!787 = !{!788, !789}
!788 = !DILocalVariable(name: "p_dst", arg: 1, scope: !786, file: !49, line: 233, type: !98)
!789 = !DILocalVariable(name: "dct", arg: 2, scope: !786, file: !49, line: 233, type: !107)
!790 = !DILocation(line: 0, scope: !786)
!791 = !DILocation(line: 235, column: 5, scope: !786)
!792 = !DILocation(line: 236, column: 19, scope: !786)
!793 = !DILocation(line: 236, column: 43, scope: !786)
!794 = !DILocation(line: 236, column: 5, scope: !786)
!795 = !DILocation(line: 237, column: 19, scope: !786)
!796 = !DILocation(line: 237, column: 43, scope: !786)
!797 = !DILocation(line: 237, column: 5, scope: !786)
!798 = !DILocation(line: 238, column: 19, scope: !786)
!799 = !DILocation(line: 238, column: 43, scope: !786)
!800 = !DILocation(line: 238, column: 5, scope: !786)
!801 = !DILocation(line: 239, column: 1, scope: !786)
!802 = distinct !DISubprogram(name: "add8x8_idct_dc", scope: !49, file: !49, line: 375, type: !101, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !803)
!803 = !{!804, !805}
!804 = !DILocalVariable(name: "p_dst", arg: 1, scope: !802, file: !49, line: 375, type: !98)
!805 = !DILocalVariable(name: "dct", arg: 2, scope: !802, file: !49, line: 375, type: !93)
!806 = !DILocation(line: 0, scope: !802)
!807 = !DILocation(line: 377, column: 46, scope: !802)
!808 = !DILocalVariable(name: "p_dst", arg: 1, scope: !809, file: !49, line: 363, type: !98)
!809 = distinct !DISubprogram(name: "add4x4_idct_dc", scope: !49, file: !49, line: 363, type: !810, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !98, !94}
!812 = !{!808, !813, !814}
!813 = !DILocalVariable(name: "dc", arg: 2, scope: !809, file: !49, line: 363, type: !94)
!814 = !DILocalVariable(name: "i", scope: !815, file: !49, line: 366, type: !51)
!815 = distinct !DILexicalBlock(scope: !809, file: !49, line: 366, column: 5)
!816 = !DILocation(line: 0, scope: !809, inlinedAt: !817)
!817 = distinct !DILocation(line: 377, column: 5, scope: !802)
!818 = !DILocation(line: 365, column: 11, scope: !809, inlinedAt: !817)
!819 = !DILocation(line: 365, column: 14, scope: !809, inlinedAt: !817)
!820 = !DILocation(line: 365, column: 20, scope: !809, inlinedAt: !817)
!821 = !DILocation(line: 0, scope: !815, inlinedAt: !817)
!822 = !DILocation(line: 366, column: 5, scope: !815, inlinedAt: !817)
!823 = !DILocation(line: 368, column: 37, scope: !824, inlinedAt: !817)
!824 = distinct !DILexicalBlock(scope: !825, file: !49, line: 367, column: 5)
!825 = distinct !DILexicalBlock(scope: !815, file: !49, line: 366, column: 5)
!826 = !DILocation(line: 368, column: 46, scope: !824, inlinedAt: !817)
!827 = !DILocation(line: 0, scope: !469, inlinedAt: !828)
!828 = distinct !DILocation(line: 368, column: 20, scope: !824, inlinedAt: !817)
!829 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !828)
!830 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !828)
!831 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !828)
!832 = !DILocation(line: 368, column: 18, scope: !824, inlinedAt: !817)
!833 = !DILocation(line: 369, column: 37, scope: !824, inlinedAt: !817)
!834 = !DILocation(line: 369, column: 46, scope: !824, inlinedAt: !817)
!835 = !DILocation(line: 0, scope: !469, inlinedAt: !836)
!836 = distinct !DILocation(line: 369, column: 20, scope: !824, inlinedAt: !817)
!837 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !836)
!838 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !836)
!839 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !836)
!840 = !DILocation(line: 369, column: 18, scope: !824, inlinedAt: !817)
!841 = !DILocation(line: 370, column: 37, scope: !824, inlinedAt: !817)
!842 = !DILocation(line: 370, column: 46, scope: !824, inlinedAt: !817)
!843 = !DILocation(line: 0, scope: !469, inlinedAt: !844)
!844 = distinct !DILocation(line: 370, column: 20, scope: !824, inlinedAt: !817)
!845 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !844)
!846 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !844)
!847 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !844)
!848 = !DILocation(line: 370, column: 18, scope: !824, inlinedAt: !817)
!849 = !DILocation(line: 371, column: 37, scope: !824, inlinedAt: !817)
!850 = !DILocation(line: 371, column: 46, scope: !824, inlinedAt: !817)
!851 = !DILocation(line: 0, scope: !469, inlinedAt: !852)
!852 = distinct !DILocation(line: 371, column: 20, scope: !824, inlinedAt: !817)
!853 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !852)
!854 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !852)
!855 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !852)
!856 = !DILocation(line: 371, column: 18, scope: !824, inlinedAt: !817)
!857 = !DILocation(line: 366, column: 29, scope: !825, inlinedAt: !817)
!858 = !DILocation(line: 366, column: 39, scope: !825, inlinedAt: !817)
!859 = !DILocation(line: 366, column: 23, scope: !825, inlinedAt: !817)
!860 = distinct !{!860, !822, !861, !252, !253}
!861 = !DILocation(line: 372, column: 5, scope: !815, inlinedAt: !817)
!862 = !DILocation(line: 378, column: 22, scope: !802)
!863 = !DILocation(line: 378, column: 46, scope: !802)
!864 = !DILocation(line: 0, scope: !809, inlinedAt: !865)
!865 = distinct !DILocation(line: 378, column: 5, scope: !802)
!866 = !DILocation(line: 365, column: 11, scope: !809, inlinedAt: !865)
!867 = !DILocation(line: 365, column: 14, scope: !809, inlinedAt: !865)
!868 = !DILocation(line: 365, column: 20, scope: !809, inlinedAt: !865)
!869 = !DILocation(line: 0, scope: !815, inlinedAt: !865)
!870 = !DILocation(line: 366, column: 5, scope: !815, inlinedAt: !865)
!871 = !DILocation(line: 368, column: 37, scope: !824, inlinedAt: !865)
!872 = !DILocation(line: 368, column: 46, scope: !824, inlinedAt: !865)
!873 = !DILocation(line: 0, scope: !469, inlinedAt: !874)
!874 = distinct !DILocation(line: 368, column: 20, scope: !824, inlinedAt: !865)
!875 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !874)
!876 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !874)
!877 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !874)
!878 = !DILocation(line: 368, column: 18, scope: !824, inlinedAt: !865)
!879 = !DILocation(line: 369, column: 37, scope: !824, inlinedAt: !865)
!880 = !DILocation(line: 369, column: 46, scope: !824, inlinedAt: !865)
!881 = !DILocation(line: 0, scope: !469, inlinedAt: !882)
!882 = distinct !DILocation(line: 369, column: 20, scope: !824, inlinedAt: !865)
!883 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !882)
!884 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !882)
!885 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !882)
!886 = !DILocation(line: 369, column: 18, scope: !824, inlinedAt: !865)
!887 = !DILocation(line: 370, column: 37, scope: !824, inlinedAt: !865)
!888 = !DILocation(line: 370, column: 46, scope: !824, inlinedAt: !865)
!889 = !DILocation(line: 0, scope: !469, inlinedAt: !890)
!890 = distinct !DILocation(line: 370, column: 20, scope: !824, inlinedAt: !865)
!891 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !890)
!892 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !890)
!893 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !890)
!894 = !DILocation(line: 370, column: 18, scope: !824, inlinedAt: !865)
!895 = !DILocation(line: 371, column: 37, scope: !824, inlinedAt: !865)
!896 = !DILocation(line: 371, column: 46, scope: !824, inlinedAt: !865)
!897 = !DILocation(line: 0, scope: !469, inlinedAt: !898)
!898 = distinct !DILocation(line: 371, column: 20, scope: !824, inlinedAt: !865)
!899 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !898)
!900 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !898)
!901 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !898)
!902 = !DILocation(line: 371, column: 18, scope: !824, inlinedAt: !865)
!903 = !DILocation(line: 366, column: 29, scope: !825, inlinedAt: !865)
!904 = !DILocation(line: 366, column: 39, scope: !825, inlinedAt: !865)
!905 = !DILocation(line: 366, column: 23, scope: !825, inlinedAt: !865)
!906 = distinct !{!906, !870, !907, !252, !253}
!907 = !DILocation(line: 372, column: 5, scope: !815, inlinedAt: !865)
!908 = !DILocation(line: 379, column: 22, scope: !802)
!909 = !DILocation(line: 379, column: 46, scope: !802)
!910 = !DILocation(line: 0, scope: !809, inlinedAt: !911)
!911 = distinct !DILocation(line: 379, column: 5, scope: !802)
!912 = !DILocation(line: 365, column: 11, scope: !809, inlinedAt: !911)
!913 = !DILocation(line: 365, column: 14, scope: !809, inlinedAt: !911)
!914 = !DILocation(line: 365, column: 20, scope: !809, inlinedAt: !911)
!915 = !DILocation(line: 0, scope: !815, inlinedAt: !911)
!916 = !DILocation(line: 366, column: 5, scope: !815, inlinedAt: !911)
!917 = !DILocation(line: 368, column: 37, scope: !824, inlinedAt: !911)
!918 = !DILocation(line: 368, column: 46, scope: !824, inlinedAt: !911)
!919 = !DILocation(line: 0, scope: !469, inlinedAt: !920)
!920 = distinct !DILocation(line: 368, column: 20, scope: !824, inlinedAt: !911)
!921 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !920)
!922 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !920)
!923 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !920)
!924 = !DILocation(line: 368, column: 18, scope: !824, inlinedAt: !911)
!925 = !DILocation(line: 369, column: 37, scope: !824, inlinedAt: !911)
!926 = !DILocation(line: 369, column: 46, scope: !824, inlinedAt: !911)
!927 = !DILocation(line: 0, scope: !469, inlinedAt: !928)
!928 = distinct !DILocation(line: 369, column: 20, scope: !824, inlinedAt: !911)
!929 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !928)
!930 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !928)
!931 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !928)
!932 = !DILocation(line: 369, column: 18, scope: !824, inlinedAt: !911)
!933 = !DILocation(line: 370, column: 37, scope: !824, inlinedAt: !911)
!934 = !DILocation(line: 370, column: 46, scope: !824, inlinedAt: !911)
!935 = !DILocation(line: 0, scope: !469, inlinedAt: !936)
!936 = distinct !DILocation(line: 370, column: 20, scope: !824, inlinedAt: !911)
!937 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !936)
!938 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !936)
!939 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !936)
!940 = !DILocation(line: 370, column: 18, scope: !824, inlinedAt: !911)
!941 = !DILocation(line: 371, column: 37, scope: !824, inlinedAt: !911)
!942 = !DILocation(line: 371, column: 46, scope: !824, inlinedAt: !911)
!943 = !DILocation(line: 0, scope: !469, inlinedAt: !944)
!944 = distinct !DILocation(line: 371, column: 20, scope: !824, inlinedAt: !911)
!945 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !944)
!946 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !944)
!947 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !944)
!948 = !DILocation(line: 371, column: 18, scope: !824, inlinedAt: !911)
!949 = !DILocation(line: 366, column: 29, scope: !825, inlinedAt: !911)
!950 = !DILocation(line: 366, column: 39, scope: !825, inlinedAt: !911)
!951 = !DILocation(line: 366, column: 23, scope: !825, inlinedAt: !911)
!952 = distinct !{!952, !916, !953, !252, !253}
!953 = !DILocation(line: 372, column: 5, scope: !815, inlinedAt: !911)
!954 = !DILocation(line: 380, column: 22, scope: !802)
!955 = !DILocation(line: 380, column: 46, scope: !802)
!956 = !DILocation(line: 0, scope: !809, inlinedAt: !957)
!957 = distinct !DILocation(line: 380, column: 5, scope: !802)
!958 = !DILocation(line: 365, column: 11, scope: !809, inlinedAt: !957)
!959 = !DILocation(line: 365, column: 14, scope: !809, inlinedAt: !957)
!960 = !DILocation(line: 365, column: 20, scope: !809, inlinedAt: !957)
!961 = !DILocation(line: 0, scope: !815, inlinedAt: !957)
!962 = !DILocation(line: 366, column: 5, scope: !815, inlinedAt: !957)
!963 = !DILocation(line: 368, column: 37, scope: !824, inlinedAt: !957)
!964 = !DILocation(line: 368, column: 46, scope: !824, inlinedAt: !957)
!965 = !DILocation(line: 0, scope: !469, inlinedAt: !966)
!966 = distinct !DILocation(line: 368, column: 20, scope: !824, inlinedAt: !957)
!967 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !966)
!968 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !966)
!969 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !966)
!970 = !DILocation(line: 368, column: 18, scope: !824, inlinedAt: !957)
!971 = !DILocation(line: 369, column: 37, scope: !824, inlinedAt: !957)
!972 = !DILocation(line: 369, column: 46, scope: !824, inlinedAt: !957)
!973 = !DILocation(line: 0, scope: !469, inlinedAt: !974)
!974 = distinct !DILocation(line: 369, column: 20, scope: !824, inlinedAt: !957)
!975 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !974)
!976 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !974)
!977 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !974)
!978 = !DILocation(line: 369, column: 18, scope: !824, inlinedAt: !957)
!979 = !DILocation(line: 370, column: 37, scope: !824, inlinedAt: !957)
!980 = !DILocation(line: 370, column: 46, scope: !824, inlinedAt: !957)
!981 = !DILocation(line: 0, scope: !469, inlinedAt: !982)
!982 = distinct !DILocation(line: 370, column: 20, scope: !824, inlinedAt: !957)
!983 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !982)
!984 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !982)
!985 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !982)
!986 = !DILocation(line: 370, column: 18, scope: !824, inlinedAt: !957)
!987 = !DILocation(line: 371, column: 37, scope: !824, inlinedAt: !957)
!988 = !DILocation(line: 371, column: 46, scope: !824, inlinedAt: !957)
!989 = !DILocation(line: 0, scope: !469, inlinedAt: !990)
!990 = distinct !DILocation(line: 371, column: 20, scope: !824, inlinedAt: !957)
!991 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !990)
!992 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !990)
!993 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !990)
!994 = !DILocation(line: 371, column: 18, scope: !824, inlinedAt: !957)
!995 = !DILocation(line: 366, column: 29, scope: !825, inlinedAt: !957)
!996 = !DILocation(line: 366, column: 39, scope: !825, inlinedAt: !957)
!997 = !DILocation(line: 366, column: 23, scope: !825, inlinedAt: !957)
!998 = distinct !{!998, !962, !999, !252, !253}
!999 = !DILocation(line: 372, column: 5, scope: !815, inlinedAt: !957)
!1000 = !DILocation(line: 381, column: 1, scope: !802)
!1001 = distinct !DISubprogram(name: "sub16x16_dct", scope: !49, file: !49, line: 154, type: !105, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1002)
!1002 = !{!1003, !1004, !1005}
!1003 = !DILocalVariable(name: "dct", arg: 1, scope: !1001, file: !49, line: 154, type: !107)
!1004 = !DILocalVariable(name: "pix1", arg: 2, scope: !1001, file: !49, line: 154, type: !98)
!1005 = !DILocalVariable(name: "pix2", arg: 3, scope: !1001, file: !49, line: 154, type: !98)
!1006 = !DILocation(line: 0, scope: !1001)
!1007 = !DILocation(line: 0, scope: !483, inlinedAt: !1008)
!1008 = distinct !DILocation(line: 156, column: 5, scope: !1001)
!1009 = !DILocation(line: 148, column: 5, scope: !483, inlinedAt: !1008)
!1010 = !DILocation(line: 149, column: 17, scope: !483, inlinedAt: !1008)
!1011 = !DILocation(line: 149, column: 26, scope: !483, inlinedAt: !1008)
!1012 = !DILocation(line: 149, column: 36, scope: !483, inlinedAt: !1008)
!1013 = !DILocation(line: 149, column: 5, scope: !483, inlinedAt: !1008)
!1014 = !DILocation(line: 150, column: 17, scope: !483, inlinedAt: !1008)
!1015 = !DILocation(line: 150, column: 26, scope: !483, inlinedAt: !1008)
!1016 = !DILocation(line: 150, column: 50, scope: !483, inlinedAt: !1008)
!1017 = !DILocation(line: 150, column: 5, scope: !483, inlinedAt: !1008)
!1018 = !DILocation(line: 151, column: 17, scope: !483, inlinedAt: !1008)
!1019 = !DILocation(line: 151, column: 26, scope: !483, inlinedAt: !1008)
!1020 = !DILocation(line: 151, column: 50, scope: !483, inlinedAt: !1008)
!1021 = !DILocation(line: 151, column: 5, scope: !483, inlinedAt: !1008)
!1022 = !DILocation(line: 157, column: 18, scope: !1001)
!1023 = !DILocation(line: 157, column: 28, scope: !1001)
!1024 = !DILocation(line: 157, column: 38, scope: !1001)
!1025 = !DILocation(line: 0, scope: !483, inlinedAt: !1026)
!1026 = distinct !DILocation(line: 157, column: 5, scope: !1001)
!1027 = !DILocation(line: 148, column: 5, scope: !483, inlinedAt: !1026)
!1028 = !DILocation(line: 149, column: 17, scope: !483, inlinedAt: !1026)
!1029 = !DILocation(line: 149, column: 26, scope: !483, inlinedAt: !1026)
!1030 = !DILocation(line: 149, column: 36, scope: !483, inlinedAt: !1026)
!1031 = !DILocation(line: 149, column: 5, scope: !483, inlinedAt: !1026)
!1032 = !DILocation(line: 150, column: 17, scope: !483, inlinedAt: !1026)
!1033 = !DILocation(line: 150, column: 26, scope: !483, inlinedAt: !1026)
!1034 = !DILocation(line: 150, column: 50, scope: !483, inlinedAt: !1026)
!1035 = !DILocation(line: 150, column: 5, scope: !483, inlinedAt: !1026)
!1036 = !DILocation(line: 151, column: 17, scope: !483, inlinedAt: !1026)
!1037 = !DILocation(line: 151, column: 26, scope: !483, inlinedAt: !1026)
!1038 = !DILocation(line: 151, column: 50, scope: !483, inlinedAt: !1026)
!1039 = !DILocation(line: 151, column: 5, scope: !483, inlinedAt: !1026)
!1040 = !DILocation(line: 158, column: 18, scope: !1001)
!1041 = !DILocation(line: 158, column: 28, scope: !1001)
!1042 = !DILocation(line: 158, column: 52, scope: !1001)
!1043 = !DILocation(line: 0, scope: !483, inlinedAt: !1044)
!1044 = distinct !DILocation(line: 158, column: 5, scope: !1001)
!1045 = !DILocation(line: 148, column: 5, scope: !483, inlinedAt: !1044)
!1046 = !DILocation(line: 149, column: 17, scope: !483, inlinedAt: !1044)
!1047 = !DILocation(line: 149, column: 26, scope: !483, inlinedAt: !1044)
!1048 = !DILocation(line: 149, column: 36, scope: !483, inlinedAt: !1044)
!1049 = !DILocation(line: 149, column: 5, scope: !483, inlinedAt: !1044)
!1050 = !DILocation(line: 150, column: 17, scope: !483, inlinedAt: !1044)
!1051 = !DILocation(line: 150, column: 26, scope: !483, inlinedAt: !1044)
!1052 = !DILocation(line: 150, column: 50, scope: !483, inlinedAt: !1044)
!1053 = !DILocation(line: 150, column: 5, scope: !483, inlinedAt: !1044)
!1054 = !DILocation(line: 151, column: 17, scope: !483, inlinedAt: !1044)
!1055 = !DILocation(line: 151, column: 26, scope: !483, inlinedAt: !1044)
!1056 = !DILocation(line: 151, column: 50, scope: !483, inlinedAt: !1044)
!1057 = !DILocation(line: 151, column: 5, scope: !483, inlinedAt: !1044)
!1058 = !DILocation(line: 159, column: 18, scope: !1001)
!1059 = !DILocation(line: 159, column: 28, scope: !1001)
!1060 = !DILocation(line: 159, column: 52, scope: !1001)
!1061 = !DILocation(line: 0, scope: !483, inlinedAt: !1062)
!1062 = distinct !DILocation(line: 159, column: 5, scope: !1001)
!1063 = !DILocation(line: 148, column: 5, scope: !483, inlinedAt: !1062)
!1064 = !DILocation(line: 149, column: 17, scope: !483, inlinedAt: !1062)
!1065 = !DILocation(line: 149, column: 26, scope: !483, inlinedAt: !1062)
!1066 = !DILocation(line: 149, column: 36, scope: !483, inlinedAt: !1062)
!1067 = !DILocation(line: 149, column: 5, scope: !483, inlinedAt: !1062)
!1068 = !DILocation(line: 150, column: 17, scope: !483, inlinedAt: !1062)
!1069 = !DILocation(line: 150, column: 26, scope: !483, inlinedAt: !1062)
!1070 = !DILocation(line: 150, column: 50, scope: !483, inlinedAt: !1062)
!1071 = !DILocation(line: 150, column: 5, scope: !483, inlinedAt: !1062)
!1072 = !DILocation(line: 151, column: 17, scope: !483, inlinedAt: !1062)
!1073 = !DILocation(line: 151, column: 26, scope: !483, inlinedAt: !1062)
!1074 = !DILocation(line: 151, column: 50, scope: !483, inlinedAt: !1062)
!1075 = !DILocation(line: 151, column: 5, scope: !483, inlinedAt: !1062)
!1076 = !DILocation(line: 160, column: 1, scope: !1001)
!1077 = distinct !DISubprogram(name: "add16x16_idct", scope: !49, file: !49, line: 241, type: !112, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1078)
!1078 = !{!1079, !1080}
!1079 = !DILocalVariable(name: "p_dst", arg: 1, scope: !1077, file: !49, line: 241, type: !98)
!1080 = !DILocalVariable(name: "dct", arg: 2, scope: !1077, file: !49, line: 241, type: !107)
!1081 = !DILocation(line: 0, scope: !1077)
!1082 = !DILocation(line: 0, scope: !786, inlinedAt: !1083)
!1083 = distinct !DILocation(line: 243, column: 5, scope: !1077)
!1084 = !DILocation(line: 235, column: 5, scope: !786, inlinedAt: !1083)
!1085 = !DILocation(line: 236, column: 19, scope: !786, inlinedAt: !1083)
!1086 = !DILocation(line: 236, column: 43, scope: !786, inlinedAt: !1083)
!1087 = !DILocation(line: 236, column: 5, scope: !786, inlinedAt: !1083)
!1088 = !DILocation(line: 237, column: 19, scope: !786, inlinedAt: !1083)
!1089 = !DILocation(line: 237, column: 43, scope: !786, inlinedAt: !1083)
!1090 = !DILocation(line: 237, column: 5, scope: !786, inlinedAt: !1083)
!1091 = !DILocation(line: 238, column: 19, scope: !786, inlinedAt: !1083)
!1092 = !DILocation(line: 238, column: 43, scope: !786, inlinedAt: !1083)
!1093 = !DILocation(line: 238, column: 5, scope: !786, inlinedAt: !1083)
!1094 = !DILocation(line: 244, column: 19, scope: !1077)
!1095 = !DILocation(line: 244, column: 44, scope: !1077)
!1096 = !DILocation(line: 0, scope: !786, inlinedAt: !1097)
!1097 = distinct !DILocation(line: 244, column: 5, scope: !1077)
!1098 = !DILocation(line: 235, column: 5, scope: !786, inlinedAt: !1097)
!1099 = !DILocation(line: 236, column: 19, scope: !786, inlinedAt: !1097)
!1100 = !DILocation(line: 236, column: 43, scope: !786, inlinedAt: !1097)
!1101 = !DILocation(line: 236, column: 5, scope: !786, inlinedAt: !1097)
!1102 = !DILocation(line: 237, column: 19, scope: !786, inlinedAt: !1097)
!1103 = !DILocation(line: 237, column: 43, scope: !786, inlinedAt: !1097)
!1104 = !DILocation(line: 237, column: 5, scope: !786, inlinedAt: !1097)
!1105 = !DILocation(line: 238, column: 19, scope: !786, inlinedAt: !1097)
!1106 = !DILocation(line: 238, column: 43, scope: !786, inlinedAt: !1097)
!1107 = !DILocation(line: 238, column: 5, scope: !786, inlinedAt: !1097)
!1108 = !DILocation(line: 245, column: 19, scope: !1077)
!1109 = !DILocation(line: 245, column: 44, scope: !1077)
!1110 = !DILocation(line: 0, scope: !786, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 245, column: 5, scope: !1077)
!1112 = !DILocation(line: 235, column: 5, scope: !786, inlinedAt: !1111)
!1113 = !DILocation(line: 236, column: 19, scope: !786, inlinedAt: !1111)
!1114 = !DILocation(line: 236, column: 43, scope: !786, inlinedAt: !1111)
!1115 = !DILocation(line: 236, column: 5, scope: !786, inlinedAt: !1111)
!1116 = !DILocation(line: 237, column: 19, scope: !786, inlinedAt: !1111)
!1117 = !DILocation(line: 237, column: 43, scope: !786, inlinedAt: !1111)
!1118 = !DILocation(line: 237, column: 5, scope: !786, inlinedAt: !1111)
!1119 = !DILocation(line: 238, column: 19, scope: !786, inlinedAt: !1111)
!1120 = !DILocation(line: 238, column: 43, scope: !786, inlinedAt: !1111)
!1121 = !DILocation(line: 238, column: 5, scope: !786, inlinedAt: !1111)
!1122 = !DILocation(line: 246, column: 19, scope: !1077)
!1123 = !DILocation(line: 246, column: 44, scope: !1077)
!1124 = !DILocation(line: 0, scope: !786, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 246, column: 5, scope: !1077)
!1126 = !DILocation(line: 235, column: 5, scope: !786, inlinedAt: !1125)
!1127 = !DILocation(line: 236, column: 19, scope: !786, inlinedAt: !1125)
!1128 = !DILocation(line: 236, column: 43, scope: !786, inlinedAt: !1125)
!1129 = !DILocation(line: 236, column: 5, scope: !786, inlinedAt: !1125)
!1130 = !DILocation(line: 237, column: 19, scope: !786, inlinedAt: !1125)
!1131 = !DILocation(line: 237, column: 43, scope: !786, inlinedAt: !1125)
!1132 = !DILocation(line: 237, column: 5, scope: !786, inlinedAt: !1125)
!1133 = !DILocation(line: 238, column: 19, scope: !786, inlinedAt: !1125)
!1134 = !DILocation(line: 238, column: 43, scope: !786, inlinedAt: !1125)
!1135 = !DILocation(line: 238, column: 5, scope: !786, inlinedAt: !1125)
!1136 = !DILocation(line: 247, column: 1, scope: !1077)
!1137 = distinct !DISubprogram(name: "add16x16_idct_dc", scope: !49, file: !49, line: 383, type: !101, scopeLine: 384, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1138)
!1138 = !{!1139, !1140, !1141}
!1139 = !DILocalVariable(name: "p_dst", arg: 1, scope: !1137, file: !49, line: 383, type: !98)
!1140 = !DILocalVariable(name: "dct", arg: 2, scope: !1137, file: !49, line: 383, type: !93)
!1141 = !DILocalVariable(name: "i", scope: !1142, file: !49, line: 385, type: !51)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !49, line: 385, column: 5)
!1143 = !DILocation(line: 0, scope: !1137)
!1144 = !DILocation(line: 0, scope: !1142)
!1145 = !DILocation(line: 385, column: 5, scope: !1142)
!1146 = !DILocation(line: 392, column: 1, scope: !1137)
!1147 = !DILocation(line: 387, column: 37, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !49, line: 386, column: 5)
!1149 = distinct !DILexicalBlock(scope: !1142, file: !49, line: 385, column: 5)
!1150 = !DILocation(line: 0, scope: !809, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 387, column: 9, scope: !1148)
!1152 = !DILocation(line: 365, column: 11, scope: !809, inlinedAt: !1151)
!1153 = !DILocation(line: 365, column: 14, scope: !809, inlinedAt: !1151)
!1154 = !DILocation(line: 365, column: 20, scope: !809, inlinedAt: !1151)
!1155 = !DILocation(line: 0, scope: !815, inlinedAt: !1151)
!1156 = !DILocation(line: 366, column: 5, scope: !815, inlinedAt: !1151)
!1157 = !DILocation(line: 368, column: 37, scope: !824, inlinedAt: !1151)
!1158 = !DILocation(line: 368, column: 46, scope: !824, inlinedAt: !1151)
!1159 = !DILocation(line: 0, scope: !469, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 368, column: 20, scope: !824, inlinedAt: !1151)
!1161 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1160)
!1162 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1160)
!1163 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1160)
!1164 = !DILocation(line: 368, column: 18, scope: !824, inlinedAt: !1151)
!1165 = !DILocation(line: 369, column: 37, scope: !824, inlinedAt: !1151)
!1166 = !DILocation(line: 369, column: 46, scope: !824, inlinedAt: !1151)
!1167 = !DILocation(line: 0, scope: !469, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 369, column: 20, scope: !824, inlinedAt: !1151)
!1169 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1168)
!1170 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1168)
!1171 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1168)
!1172 = !DILocation(line: 369, column: 18, scope: !824, inlinedAt: !1151)
!1173 = !DILocation(line: 370, column: 37, scope: !824, inlinedAt: !1151)
!1174 = !DILocation(line: 370, column: 46, scope: !824, inlinedAt: !1151)
!1175 = !DILocation(line: 0, scope: !469, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 370, column: 20, scope: !824, inlinedAt: !1151)
!1177 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1176)
!1178 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1176)
!1179 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1176)
!1180 = !DILocation(line: 370, column: 18, scope: !824, inlinedAt: !1151)
!1181 = !DILocation(line: 371, column: 37, scope: !824, inlinedAt: !1151)
!1182 = !DILocation(line: 371, column: 46, scope: !824, inlinedAt: !1151)
!1183 = !DILocation(line: 0, scope: !469, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 371, column: 20, scope: !824, inlinedAt: !1151)
!1185 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1184)
!1186 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1184)
!1187 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1184)
!1188 = !DILocation(line: 371, column: 18, scope: !824, inlinedAt: !1151)
!1189 = !DILocation(line: 366, column: 29, scope: !825, inlinedAt: !1151)
!1190 = !DILocation(line: 366, column: 39, scope: !825, inlinedAt: !1151)
!1191 = !DILocation(line: 366, column: 23, scope: !825, inlinedAt: !1151)
!1192 = distinct !{!1192, !1156, !1193, !252, !253}
!1193 = !DILocation(line: 372, column: 5, scope: !815, inlinedAt: !1151)
!1194 = !DILocation(line: 388, column: 26, scope: !1148)
!1195 = !DILocation(line: 388, column: 37, scope: !1148)
!1196 = !DILocation(line: 0, scope: !809, inlinedAt: !1197)
!1197 = distinct !DILocation(line: 388, column: 9, scope: !1148)
!1198 = !DILocation(line: 365, column: 11, scope: !809, inlinedAt: !1197)
!1199 = !DILocation(line: 365, column: 14, scope: !809, inlinedAt: !1197)
!1200 = !DILocation(line: 365, column: 20, scope: !809, inlinedAt: !1197)
!1201 = !DILocation(line: 0, scope: !815, inlinedAt: !1197)
!1202 = !DILocation(line: 366, column: 5, scope: !815, inlinedAt: !1197)
!1203 = !DILocation(line: 368, column: 37, scope: !824, inlinedAt: !1197)
!1204 = !DILocation(line: 368, column: 46, scope: !824, inlinedAt: !1197)
!1205 = !DILocation(line: 0, scope: !469, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 368, column: 20, scope: !824, inlinedAt: !1197)
!1207 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1206)
!1208 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1206)
!1209 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1206)
!1210 = !DILocation(line: 368, column: 18, scope: !824, inlinedAt: !1197)
!1211 = !DILocation(line: 369, column: 37, scope: !824, inlinedAt: !1197)
!1212 = !DILocation(line: 369, column: 46, scope: !824, inlinedAt: !1197)
!1213 = !DILocation(line: 0, scope: !469, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 369, column: 20, scope: !824, inlinedAt: !1197)
!1215 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1214)
!1216 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1214)
!1217 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1214)
!1218 = !DILocation(line: 369, column: 18, scope: !824, inlinedAt: !1197)
!1219 = !DILocation(line: 370, column: 37, scope: !824, inlinedAt: !1197)
!1220 = !DILocation(line: 370, column: 46, scope: !824, inlinedAt: !1197)
!1221 = !DILocation(line: 0, scope: !469, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 370, column: 20, scope: !824, inlinedAt: !1197)
!1223 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1222)
!1224 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1222)
!1225 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1222)
!1226 = !DILocation(line: 370, column: 18, scope: !824, inlinedAt: !1197)
!1227 = !DILocation(line: 371, column: 37, scope: !824, inlinedAt: !1197)
!1228 = !DILocation(line: 371, column: 46, scope: !824, inlinedAt: !1197)
!1229 = !DILocation(line: 0, scope: !469, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 371, column: 20, scope: !824, inlinedAt: !1197)
!1231 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1230)
!1232 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1230)
!1233 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1230)
!1234 = !DILocation(line: 371, column: 18, scope: !824, inlinedAt: !1197)
!1235 = !DILocation(line: 366, column: 29, scope: !825, inlinedAt: !1197)
!1236 = !DILocation(line: 366, column: 39, scope: !825, inlinedAt: !1197)
!1237 = !DILocation(line: 366, column: 23, scope: !825, inlinedAt: !1197)
!1238 = distinct !{!1238, !1202, !1239, !252, !253}
!1239 = !DILocation(line: 372, column: 5, scope: !815, inlinedAt: !1197)
!1240 = !DILocation(line: 389, column: 26, scope: !1148)
!1241 = !DILocation(line: 389, column: 37, scope: !1148)
!1242 = !DILocation(line: 0, scope: !809, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 389, column: 9, scope: !1148)
!1244 = !DILocation(line: 365, column: 11, scope: !809, inlinedAt: !1243)
!1245 = !DILocation(line: 365, column: 14, scope: !809, inlinedAt: !1243)
!1246 = !DILocation(line: 365, column: 20, scope: !809, inlinedAt: !1243)
!1247 = !DILocation(line: 0, scope: !815, inlinedAt: !1243)
!1248 = !DILocation(line: 366, column: 5, scope: !815, inlinedAt: !1243)
!1249 = !DILocation(line: 368, column: 37, scope: !824, inlinedAt: !1243)
!1250 = !DILocation(line: 368, column: 46, scope: !824, inlinedAt: !1243)
!1251 = !DILocation(line: 0, scope: !469, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 368, column: 20, scope: !824, inlinedAt: !1243)
!1253 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1252)
!1254 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1252)
!1255 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1252)
!1256 = !DILocation(line: 368, column: 18, scope: !824, inlinedAt: !1243)
!1257 = !DILocation(line: 369, column: 37, scope: !824, inlinedAt: !1243)
!1258 = !DILocation(line: 369, column: 46, scope: !824, inlinedAt: !1243)
!1259 = !DILocation(line: 0, scope: !469, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 369, column: 20, scope: !824, inlinedAt: !1243)
!1261 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1260)
!1262 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1260)
!1263 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1260)
!1264 = !DILocation(line: 369, column: 18, scope: !824, inlinedAt: !1243)
!1265 = !DILocation(line: 370, column: 37, scope: !824, inlinedAt: !1243)
!1266 = !DILocation(line: 370, column: 46, scope: !824, inlinedAt: !1243)
!1267 = !DILocation(line: 0, scope: !469, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 370, column: 20, scope: !824, inlinedAt: !1243)
!1269 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1268)
!1270 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1268)
!1271 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1268)
!1272 = !DILocation(line: 370, column: 18, scope: !824, inlinedAt: !1243)
!1273 = !DILocation(line: 371, column: 37, scope: !824, inlinedAt: !1243)
!1274 = !DILocation(line: 371, column: 46, scope: !824, inlinedAt: !1243)
!1275 = !DILocation(line: 0, scope: !469, inlinedAt: !1276)
!1276 = distinct !DILocation(line: 371, column: 20, scope: !824, inlinedAt: !1243)
!1277 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1276)
!1278 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1276)
!1279 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1276)
!1280 = !DILocation(line: 371, column: 18, scope: !824, inlinedAt: !1243)
!1281 = !DILocation(line: 366, column: 29, scope: !825, inlinedAt: !1243)
!1282 = !DILocation(line: 366, column: 39, scope: !825, inlinedAt: !1243)
!1283 = !DILocation(line: 366, column: 23, scope: !825, inlinedAt: !1243)
!1284 = distinct !{!1284, !1248, !1285, !252, !253}
!1285 = !DILocation(line: 372, column: 5, scope: !815, inlinedAt: !1243)
!1286 = !DILocation(line: 390, column: 26, scope: !1148)
!1287 = !DILocation(line: 390, column: 37, scope: !1148)
!1288 = !DILocation(line: 0, scope: !809, inlinedAt: !1289)
!1289 = distinct !DILocation(line: 390, column: 9, scope: !1148)
!1290 = !DILocation(line: 365, column: 11, scope: !809, inlinedAt: !1289)
!1291 = !DILocation(line: 365, column: 14, scope: !809, inlinedAt: !1289)
!1292 = !DILocation(line: 365, column: 20, scope: !809, inlinedAt: !1289)
!1293 = !DILocation(line: 0, scope: !815, inlinedAt: !1289)
!1294 = !DILocation(line: 366, column: 5, scope: !815, inlinedAt: !1289)
!1295 = !DILocation(line: 368, column: 37, scope: !824, inlinedAt: !1289)
!1296 = !DILocation(line: 368, column: 46, scope: !824, inlinedAt: !1289)
!1297 = !DILocation(line: 0, scope: !469, inlinedAt: !1298)
!1298 = distinct !DILocation(line: 368, column: 20, scope: !824, inlinedAt: !1289)
!1299 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1298)
!1300 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1298)
!1301 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1298)
!1302 = !DILocation(line: 368, column: 18, scope: !824, inlinedAt: !1289)
!1303 = !DILocation(line: 369, column: 37, scope: !824, inlinedAt: !1289)
!1304 = !DILocation(line: 369, column: 46, scope: !824, inlinedAt: !1289)
!1305 = !DILocation(line: 0, scope: !469, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 369, column: 20, scope: !824, inlinedAt: !1289)
!1307 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1306)
!1308 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1306)
!1309 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1306)
!1310 = !DILocation(line: 369, column: 18, scope: !824, inlinedAt: !1289)
!1311 = !DILocation(line: 370, column: 37, scope: !824, inlinedAt: !1289)
!1312 = !DILocation(line: 370, column: 46, scope: !824, inlinedAt: !1289)
!1313 = !DILocation(line: 0, scope: !469, inlinedAt: !1314)
!1314 = distinct !DILocation(line: 370, column: 20, scope: !824, inlinedAt: !1289)
!1315 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1314)
!1316 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1314)
!1317 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1314)
!1318 = !DILocation(line: 370, column: 18, scope: !824, inlinedAt: !1289)
!1319 = !DILocation(line: 371, column: 37, scope: !824, inlinedAt: !1289)
!1320 = !DILocation(line: 371, column: 46, scope: !824, inlinedAt: !1289)
!1321 = !DILocation(line: 0, scope: !469, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 371, column: 20, scope: !824, inlinedAt: !1289)
!1323 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1322)
!1324 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1322)
!1325 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1322)
!1326 = !DILocation(line: 371, column: 18, scope: !824, inlinedAt: !1289)
!1327 = !DILocation(line: 366, column: 29, scope: !825, inlinedAt: !1289)
!1328 = !DILocation(line: 366, column: 39, scope: !825, inlinedAt: !1289)
!1329 = !DILocation(line: 366, column: 23, scope: !825, inlinedAt: !1289)
!1330 = distinct !{!1330, !1294, !1331, !252, !253}
!1331 = !DILocation(line: 372, column: 5, scope: !815, inlinedAt: !1289)
!1332 = !DILocation(line: 385, column: 29, scope: !1149)
!1333 = !DILocation(line: 385, column: 37, scope: !1149)
!1334 = !DILocation(line: 385, column: 49, scope: !1149)
!1335 = !DILocation(line: 385, column: 23, scope: !1149)
!1336 = distinct !{!1336, !1145, !1337, !252, !253}
!1337 = !DILocation(line: 391, column: 5, scope: !1142)
!1338 = distinct !DISubprogram(name: "sub8x8_dct8", scope: !49, file: !49, line: 280, type: !91, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1346, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1366, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383}
!1340 = !DILocalVariable(name: "dct", arg: 1, scope: !1338, file: !49, line: 280, type: !93)
!1341 = !DILocalVariable(name: "pix1", arg: 2, scope: !1338, file: !49, line: 280, type: !98)
!1342 = !DILocalVariable(name: "pix2", arg: 3, scope: !1338, file: !49, line: 280, type: !98)
!1343 = !DILocalVariable(name: "tmp", scope: !1338, file: !49, line: 282, type: !125)
!1344 = !DILocalVariable(name: "i", scope: !1345, file: !49, line: 288, type: !51)
!1345 = distinct !DILexicalBlock(scope: !1338, file: !49, line: 288, column: 5)
!1346 = !DILocalVariable(name: "s07", scope: !1347, file: !49, line: 289, type: !51)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !49, line: 289, column: 9)
!1348 = distinct !DILexicalBlock(scope: !1345, file: !49, line: 288, column: 5)
!1349 = !DILocalVariable(name: "s16", scope: !1347, file: !49, line: 289, type: !51)
!1350 = !DILocalVariable(name: "s25", scope: !1347, file: !49, line: 289, type: !51)
!1351 = !DILocalVariable(name: "s34", scope: !1347, file: !49, line: 289, type: !51)
!1352 = !DILocalVariable(name: "a0", scope: !1347, file: !49, line: 289, type: !51)
!1353 = !DILocalVariable(name: "a1", scope: !1347, file: !49, line: 289, type: !51)
!1354 = !DILocalVariable(name: "a2", scope: !1347, file: !49, line: 289, type: !51)
!1355 = !DILocalVariable(name: "a3", scope: !1347, file: !49, line: 289, type: !51)
!1356 = !DILocalVariable(name: "d07", scope: !1347, file: !49, line: 289, type: !51)
!1357 = !DILocalVariable(name: "d16", scope: !1347, file: !49, line: 289, type: !51)
!1358 = !DILocalVariable(name: "d25", scope: !1347, file: !49, line: 289, type: !51)
!1359 = !DILocalVariable(name: "d34", scope: !1347, file: !49, line: 289, type: !51)
!1360 = !DILocalVariable(name: "a4", scope: !1347, file: !49, line: 289, type: !51)
!1361 = !DILocalVariable(name: "a5", scope: !1347, file: !49, line: 289, type: !51)
!1362 = !DILocalVariable(name: "a6", scope: !1347, file: !49, line: 289, type: !51)
!1363 = !DILocalVariable(name: "a7", scope: !1347, file: !49, line: 289, type: !51)
!1364 = !DILocalVariable(name: "i", scope: !1365, file: !49, line: 295, type: !51)
!1365 = distinct !DILexicalBlock(scope: !1338, file: !49, line: 295, column: 5)
!1366 = !DILocalVariable(name: "s07", scope: !1367, file: !49, line: 296, type: !51)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !49, line: 296, column: 9)
!1368 = distinct !DILexicalBlock(scope: !1365, file: !49, line: 295, column: 5)
!1369 = !DILocalVariable(name: "s16", scope: !1367, file: !49, line: 296, type: !51)
!1370 = !DILocalVariable(name: "s25", scope: !1367, file: !49, line: 296, type: !51)
!1371 = !DILocalVariable(name: "s34", scope: !1367, file: !49, line: 296, type: !51)
!1372 = !DILocalVariable(name: "a0", scope: !1367, file: !49, line: 296, type: !51)
!1373 = !DILocalVariable(name: "a1", scope: !1367, file: !49, line: 296, type: !51)
!1374 = !DILocalVariable(name: "a2", scope: !1367, file: !49, line: 296, type: !51)
!1375 = !DILocalVariable(name: "a3", scope: !1367, file: !49, line: 296, type: !51)
!1376 = !DILocalVariable(name: "d07", scope: !1367, file: !49, line: 296, type: !51)
!1377 = !DILocalVariable(name: "d16", scope: !1367, file: !49, line: 296, type: !51)
!1378 = !DILocalVariable(name: "d25", scope: !1367, file: !49, line: 296, type: !51)
!1379 = !DILocalVariable(name: "d34", scope: !1367, file: !49, line: 296, type: !51)
!1380 = !DILocalVariable(name: "a4", scope: !1367, file: !49, line: 296, type: !51)
!1381 = !DILocalVariable(name: "a5", scope: !1367, file: !49, line: 296, type: !51)
!1382 = !DILocalVariable(name: "a6", scope: !1367, file: !49, line: 296, type: !51)
!1383 = !DILocalVariable(name: "a7", scope: !1367, file: !49, line: 296, type: !51)
!1384 = !DILocation(line: 0, scope: !1338)
!1385 = !DILocation(line: 282, column: 5, scope: !1338)
!1386 = !DILocation(line: 282, column: 13, scope: !1338)
!1387 = !DILocation(line: 0, scope: !217, inlinedAt: !1388)
!1388 = distinct !DILocation(line: 284, column: 5, scope: !1338)
!1389 = !DILocation(line: 0, scope: !227, inlinedAt: !1388)
!1390 = !DILocation(line: 103, column: 5, scope: !227, inlinedAt: !1388)
!1391 = !DILocation(line: 0, scope: !229, inlinedAt: !1388)
!1392 = !DILocation(line: 105, column: 9, scope: !229, inlinedAt: !1388)
!1393 = !DILocation(line: 106, column: 34, scope: !239, inlinedAt: !1388)
!1394 = !DILocation(line: 106, column: 44, scope: !239, inlinedAt: !1388)
!1395 = !DILocation(line: 106, column: 42, scope: !239, inlinedAt: !1388)
!1396 = !DILocation(line: 106, column: 20, scope: !239, inlinedAt: !1388)
!1397 = !DILocation(line: 106, column: 13, scope: !239, inlinedAt: !1388)
!1398 = !DILocation(line: 106, column: 32, scope: !239, inlinedAt: !1388)
!1399 = !DILocation(line: 105, column: 38, scope: !239, inlinedAt: !1388)
!1400 = !DILocation(line: 105, column: 27, scope: !239, inlinedAt: !1388)
!1401 = distinct !{!1401, !1392, !1402, !252, !253}
!1402 = !DILocation(line: 106, column: 50, scope: !229, inlinedAt: !1388)
!1403 = !DILocation(line: 107, column: 14, scope: !230, inlinedAt: !1388)
!1404 = !DILocation(line: 108, column: 14, scope: !230, inlinedAt: !1388)
!1405 = !DILocation(line: 103, column: 34, scope: !231, inlinedAt: !1388)
!1406 = !DILocation(line: 103, column: 23, scope: !231, inlinedAt: !1388)
!1407 = distinct !{!1407, !1390, !1408, !252, !253}
!1408 = !DILocation(line: 109, column: 5, scope: !227, inlinedAt: !1388)
!1409 = !DILocation(line: 0, scope: !1345)
!1410 = !DILocation(line: 289, column: 9, scope: !1347)
!1411 = !DILocation(line: 0, scope: !1347)
!1412 = !DILocation(line: 288, column: 29, scope: !1348)
!1413 = !DILocation(line: 288, column: 23, scope: !1348)
!1414 = !DILocation(line: 288, column: 5, scope: !1345)
!1415 = distinct !{!1415, !1414, !1416, !252, !253}
!1416 = !DILocation(line: 289, column: 9, scope: !1345)
!1417 = !DILocation(line: 299, column: 1, scope: !1338)
!1418 = !DILocation(line: 0, scope: !1365)
!1419 = !DILocation(line: 296, column: 9, scope: !1367)
!1420 = !DILocation(line: 0, scope: !1367)
!1421 = !DILocation(line: 295, column: 29, scope: !1368)
!1422 = !DILocation(line: 295, column: 23, scope: !1368)
!1423 = !DILocation(line: 295, column: 5, scope: !1365)
!1424 = distinct !{!1424, !1423, !1425, !252, !253}
!1425 = !DILocation(line: 296, column: 9, scope: !1365)
!1426 = distinct !DISubprogram(name: "add8x8_idct8", scope: !49, file: !49, line: 336, type: !101, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1427)
!1427 = !{!1428, !1429, !1430, !1432, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1452, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469}
!1428 = !DILocalVariable(name: "dst", arg: 1, scope: !1426, file: !49, line: 336, type: !98)
!1429 = !DILocalVariable(name: "dct", arg: 2, scope: !1426, file: !49, line: 336, type: !93)
!1430 = !DILocalVariable(name: "i", scope: !1431, file: !49, line: 342, type: !51)
!1431 = distinct !DILexicalBlock(scope: !1426, file: !49, line: 342, column: 5)
!1432 = !DILocalVariable(name: "a0", scope: !1433, file: !49, line: 343, type: !51)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !49, line: 343, column: 9)
!1434 = distinct !DILexicalBlock(scope: !1431, file: !49, line: 342, column: 5)
!1435 = !DILocalVariable(name: "a2", scope: !1433, file: !49, line: 343, type: !51)
!1436 = !DILocalVariable(name: "a4", scope: !1433, file: !49, line: 343, type: !51)
!1437 = !DILocalVariable(name: "a6", scope: !1433, file: !49, line: 343, type: !51)
!1438 = !DILocalVariable(name: "b0", scope: !1433, file: !49, line: 343, type: !51)
!1439 = !DILocalVariable(name: "b2", scope: !1433, file: !49, line: 343, type: !51)
!1440 = !DILocalVariable(name: "b4", scope: !1433, file: !49, line: 343, type: !51)
!1441 = !DILocalVariable(name: "b6", scope: !1433, file: !49, line: 343, type: !51)
!1442 = !DILocalVariable(name: "a1", scope: !1433, file: !49, line: 343, type: !51)
!1443 = !DILocalVariable(name: "a3", scope: !1433, file: !49, line: 343, type: !51)
!1444 = !DILocalVariable(name: "a5", scope: !1433, file: !49, line: 343, type: !51)
!1445 = !DILocalVariable(name: "a7", scope: !1433, file: !49, line: 343, type: !51)
!1446 = !DILocalVariable(name: "b1", scope: !1433, file: !49, line: 343, type: !51)
!1447 = !DILocalVariable(name: "b3", scope: !1433, file: !49, line: 343, type: !51)
!1448 = !DILocalVariable(name: "b5", scope: !1433, file: !49, line: 343, type: !51)
!1449 = !DILocalVariable(name: "b7", scope: !1433, file: !49, line: 343, type: !51)
!1450 = !DILocalVariable(name: "i", scope: !1451, file: !49, line: 349, type: !51)
!1451 = distinct !DILexicalBlock(scope: !1426, file: !49, line: 349, column: 5)
!1452 = !DILocalVariable(name: "a0", scope: !1453, file: !49, line: 350, type: !51)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !49, line: 350, column: 9)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !49, line: 349, column: 5)
!1455 = !DILocalVariable(name: "a2", scope: !1453, file: !49, line: 350, type: !51)
!1456 = !DILocalVariable(name: "a4", scope: !1453, file: !49, line: 350, type: !51)
!1457 = !DILocalVariable(name: "a6", scope: !1453, file: !49, line: 350, type: !51)
!1458 = !DILocalVariable(name: "b0", scope: !1453, file: !49, line: 350, type: !51)
!1459 = !DILocalVariable(name: "b2", scope: !1453, file: !49, line: 350, type: !51)
!1460 = !DILocalVariable(name: "b4", scope: !1453, file: !49, line: 350, type: !51)
!1461 = !DILocalVariable(name: "b6", scope: !1453, file: !49, line: 350, type: !51)
!1462 = !DILocalVariable(name: "a1", scope: !1453, file: !49, line: 350, type: !51)
!1463 = !DILocalVariable(name: "a3", scope: !1453, file: !49, line: 350, type: !51)
!1464 = !DILocalVariable(name: "a5", scope: !1453, file: !49, line: 350, type: !51)
!1465 = !DILocalVariable(name: "a7", scope: !1453, file: !49, line: 350, type: !51)
!1466 = !DILocalVariable(name: "b1", scope: !1453, file: !49, line: 350, type: !51)
!1467 = !DILocalVariable(name: "b3", scope: !1453, file: !49, line: 350, type: !51)
!1468 = !DILocalVariable(name: "b5", scope: !1453, file: !49, line: 350, type: !51)
!1469 = !DILocalVariable(name: "b7", scope: !1453, file: !49, line: 350, type: !51)
!1470 = !DILocation(line: 0, scope: !1426)
!1471 = !DILocation(line: 338, column: 12, scope: !1426)
!1472 = !DILocation(line: 0, scope: !1431)
!1473 = !DILocation(line: 342, column: 5, scope: !1431)
!1474 = !DILocation(line: 343, column: 9, scope: !1433)
!1475 = !DILocation(line: 0, scope: !1433)
!1476 = !DILocation(line: 342, column: 29, scope: !1434)
!1477 = !DILocation(line: 342, column: 23, scope: !1434)
!1478 = distinct !{!1478, !1473, !1479, !252, !253}
!1479 = !DILocation(line: 343, column: 9, scope: !1431)
!1480 = !DILocation(line: 353, column: 1, scope: !1426)
!1481 = !DILocation(line: 0, scope: !1451)
!1482 = !DILocation(line: 350, column: 9, scope: !1453)
!1483 = !DILocation(line: 0, scope: !1453)
!1484 = !DILocation(line: 0, scope: !469, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 350, column: 9, scope: !1453)
!1486 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1485)
!1487 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1485)
!1488 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1485)
!1489 = !DILocation(line: 0, scope: !469, inlinedAt: !1490)
!1490 = distinct !DILocation(line: 350, column: 9, scope: !1453)
!1491 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1490)
!1492 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1490)
!1493 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1490)
!1494 = !DILocation(line: 0, scope: !469, inlinedAt: !1495)
!1495 = distinct !DILocation(line: 350, column: 9, scope: !1453)
!1496 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1495)
!1497 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1495)
!1498 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1495)
!1499 = !DILocation(line: 0, scope: !469, inlinedAt: !1500)
!1500 = distinct !DILocation(line: 350, column: 9, scope: !1453)
!1501 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1500)
!1502 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1500)
!1503 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1500)
!1504 = !DILocation(line: 0, scope: !469, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 350, column: 9, scope: !1453)
!1506 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1505)
!1507 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1505)
!1508 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1505)
!1509 = !DILocation(line: 0, scope: !469, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 350, column: 9, scope: !1453)
!1511 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1510)
!1512 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1510)
!1513 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1510)
!1514 = !DILocation(line: 0, scope: !469, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 350, column: 9, scope: !1453)
!1516 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1515)
!1517 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1515)
!1518 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1515)
!1519 = !DILocation(line: 0, scope: !469, inlinedAt: !1520)
!1520 = distinct !DILocation(line: 350, column: 9, scope: !1453)
!1521 = !DILocation(line: 197, column: 13, scope: !469, inlinedAt: !1520)
!1522 = !DILocation(line: 197, column: 12, scope: !469, inlinedAt: !1520)
!1523 = !DILocation(line: 197, column: 27, scope: !469, inlinedAt: !1520)
!1524 = !DILocation(line: 349, column: 29, scope: !1454)
!1525 = !DILocation(line: 349, column: 23, scope: !1454)
!1526 = !DILocation(line: 349, column: 5, scope: !1451)
!1527 = distinct !{!1527, !1526, !1528, !252, !253}
!1528 = !DILocation(line: 350, column: 9, scope: !1451)
!1529 = distinct !DISubprogram(name: "sub16x16_dct8", scope: !49, file: !49, line: 301, type: !122, scopeLine: 302, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1530)
!1530 = !{!1531, !1532, !1533}
!1531 = !DILocalVariable(name: "dct", arg: 1, scope: !1529, file: !49, line: 301, type: !124)
!1532 = !DILocalVariable(name: "pix1", arg: 2, scope: !1529, file: !49, line: 301, type: !98)
!1533 = !DILocalVariable(name: "pix2", arg: 3, scope: !1529, file: !49, line: 301, type: !98)
!1534 = !DILocation(line: 0, scope: !1529)
!1535 = !DILocation(line: 303, column: 5, scope: !1529)
!1536 = !DILocation(line: 304, column: 18, scope: !1529)
!1537 = !DILocation(line: 304, column: 27, scope: !1529)
!1538 = !DILocation(line: 304, column: 51, scope: !1529)
!1539 = !DILocation(line: 304, column: 5, scope: !1529)
!1540 = !DILocation(line: 305, column: 18, scope: !1529)
!1541 = !DILocation(line: 305, column: 27, scope: !1529)
!1542 = !DILocation(line: 305, column: 51, scope: !1529)
!1543 = !DILocation(line: 305, column: 5, scope: !1529)
!1544 = !DILocation(line: 306, column: 18, scope: !1529)
!1545 = !DILocation(line: 306, column: 27, scope: !1529)
!1546 = !DILocation(line: 306, column: 51, scope: !1529)
!1547 = !DILocation(line: 306, column: 5, scope: !1529)
!1548 = !DILocation(line: 307, column: 1, scope: !1529)
!1549 = distinct !DISubprogram(name: "add16x16_idct8", scope: !49, file: !49, line: 355, type: !128, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1550)
!1550 = !{!1551, !1552}
!1551 = !DILocalVariable(name: "dst", arg: 1, scope: !1549, file: !49, line: 355, type: !98)
!1552 = !DILocalVariable(name: "dct", arg: 2, scope: !1549, file: !49, line: 355, type: !124)
!1553 = !DILocation(line: 0, scope: !1549)
!1554 = !DILocation(line: 357, column: 5, scope: !1549)
!1555 = !DILocation(line: 358, column: 20, scope: !1549)
!1556 = !DILocation(line: 358, column: 42, scope: !1549)
!1557 = !DILocation(line: 358, column: 5, scope: !1549)
!1558 = !DILocation(line: 359, column: 20, scope: !1549)
!1559 = !DILocation(line: 359, column: 42, scope: !1549)
!1560 = !DILocation(line: 359, column: 5, scope: !1549)
!1561 = !DILocation(line: 360, column: 20, scope: !1549)
!1562 = !DILocation(line: 360, column: 42, scope: !1549)
!1563 = !DILocation(line: 360, column: 5, scope: !1549)
!1564 = !DILocation(line: 361, column: 1, scope: !1549)
!1565 = distinct !DISubprogram(name: "dct4x4dc", scope: !49, file: !49, line: 38, type: !132, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1566)
!1566 = !{!1567, !1568, !1569, !1571, !1574, !1575, !1576, !1577, !1579, !1582, !1583, !1584}
!1567 = !DILocalVariable(name: "d", arg: 1, scope: !1565, file: !49, line: 38, type: !93)
!1568 = !DILocalVariable(name: "tmp", scope: !1565, file: !49, line: 40, type: !108)
!1569 = !DILocalVariable(name: "i", scope: !1570, file: !49, line: 42, type: !51)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !49, line: 42, column: 5)
!1571 = !DILocalVariable(name: "s01", scope: !1572, file: !49, line: 44, type: !51)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !49, line: 43, column: 5)
!1573 = distinct !DILexicalBlock(scope: !1570, file: !49, line: 42, column: 5)
!1574 = !DILocalVariable(name: "d01", scope: !1572, file: !49, line: 45, type: !51)
!1575 = !DILocalVariable(name: "s23", scope: !1572, file: !49, line: 46, type: !51)
!1576 = !DILocalVariable(name: "d23", scope: !1572, file: !49, line: 47, type: !51)
!1577 = !DILocalVariable(name: "i", scope: !1578, file: !49, line: 55, type: !51)
!1578 = distinct !DILexicalBlock(scope: !1565, file: !49, line: 55, column: 5)
!1579 = !DILocalVariable(name: "s01", scope: !1580, file: !49, line: 57, type: !51)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !49, line: 56, column: 5)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !49, line: 55, column: 5)
!1582 = !DILocalVariable(name: "d01", scope: !1580, file: !49, line: 58, type: !51)
!1583 = !DILocalVariable(name: "s23", scope: !1580, file: !49, line: 59, type: !51)
!1584 = !DILocalVariable(name: "d23", scope: !1580, file: !49, line: 60, type: !51)
!1585 = !DILocation(line: 0, scope: !1565)
!1586 = !DILocation(line: 40, column: 5, scope: !1565)
!1587 = !DILocation(line: 40, column: 13, scope: !1565)
!1588 = !DILocation(line: 0, scope: !1570)
!1589 = !DILocation(line: 42, column: 5, scope: !1570)
!1590 = !DILocation(line: 44, column: 22, scope: !1572)
!1591 = !DILocation(line: 44, column: 19, scope: !1572)
!1592 = !DILocation(line: 44, column: 35, scope: !1572)
!1593 = !DILocation(line: 44, column: 30, scope: !1572)
!1594 = !DILocation(line: 44, column: 28, scope: !1572)
!1595 = !DILocation(line: 0, scope: !1572)
!1596 = !DILocation(line: 45, column: 28, scope: !1572)
!1597 = !DILocation(line: 46, column: 24, scope: !1572)
!1598 = !DILocation(line: 46, column: 19, scope: !1572)
!1599 = !DILocation(line: 46, column: 35, scope: !1572)
!1600 = !DILocation(line: 46, column: 30, scope: !1572)
!1601 = !DILocation(line: 46, column: 28, scope: !1572)
!1602 = !DILocation(line: 47, column: 28, scope: !1572)
!1603 = !DILocation(line: 49, column: 26, scope: !1572)
!1604 = !DILocation(line: 49, column: 22, scope: !1572)
!1605 = !DILocation(line: 49, column: 9, scope: !1572)
!1606 = !DILocation(line: 49, column: 20, scope: !1572)
!1607 = !DILocation(line: 50, column: 26, scope: !1572)
!1608 = !DILocation(line: 50, column: 22, scope: !1572)
!1609 = !DILocation(line: 50, column: 16, scope: !1572)
!1610 = !DILocation(line: 50, column: 9, scope: !1572)
!1611 = !DILocation(line: 50, column: 20, scope: !1572)
!1612 = !DILocation(line: 51, column: 26, scope: !1572)
!1613 = !DILocation(line: 51, column: 22, scope: !1572)
!1614 = !DILocation(line: 51, column: 16, scope: !1572)
!1615 = !DILocation(line: 51, column: 9, scope: !1572)
!1616 = !DILocation(line: 51, column: 20, scope: !1572)
!1617 = !DILocation(line: 52, column: 26, scope: !1572)
!1618 = !DILocation(line: 52, column: 22, scope: !1572)
!1619 = !DILocation(line: 52, column: 16, scope: !1572)
!1620 = !DILocation(line: 52, column: 9, scope: !1572)
!1621 = !DILocation(line: 52, column: 20, scope: !1572)
!1622 = !DILocation(line: 42, column: 29, scope: !1573)
!1623 = !DILocation(line: 42, column: 23, scope: !1573)
!1624 = distinct !{!1624, !1589, !1625, !252, !253}
!1625 = !DILocation(line: 53, column: 5, scope: !1570)
!1626 = !DILocation(line: 67, column: 1, scope: !1565)
!1627 = !DILocation(line: 0, scope: !1578)
!1628 = !DILocation(line: 57, column: 24, scope: !1580)
!1629 = !DILocation(line: 57, column: 19, scope: !1580)
!1630 = !DILocation(line: 57, column: 39, scope: !1580)
!1631 = !DILocation(line: 57, column: 32, scope: !1580)
!1632 = !DILocation(line: 57, column: 30, scope: !1580)
!1633 = !DILocation(line: 0, scope: !1580)
!1634 = !DILocation(line: 58, column: 30, scope: !1580)
!1635 = !DILocation(line: 59, column: 26, scope: !1580)
!1636 = !DILocation(line: 59, column: 19, scope: !1580)
!1637 = !DILocation(line: 59, column: 39, scope: !1580)
!1638 = !DILocation(line: 59, column: 32, scope: !1580)
!1639 = !DILocation(line: 59, column: 30, scope: !1580)
!1640 = !DILocation(line: 60, column: 30, scope: !1580)
!1641 = !DILocation(line: 62, column: 26, scope: !1580)
!1642 = !DILocation(line: 62, column: 32, scope: !1580)
!1643 = !DILocation(line: 62, column: 38, scope: !1580)
!1644 = !DILocation(line: 62, column: 20, scope: !1580)
!1645 = !DILocation(line: 62, column: 9, scope: !1580)
!1646 = !DILocation(line: 62, column: 18, scope: !1580)
!1647 = !DILocation(line: 63, column: 32, scope: !1580)
!1648 = !DILocation(line: 63, column: 38, scope: !1580)
!1649 = !DILocation(line: 63, column: 20, scope: !1580)
!1650 = !DILocation(line: 63, column: 9, scope: !1580)
!1651 = !DILocation(line: 63, column: 18, scope: !1580)
!1652 = !DILocation(line: 64, column: 26, scope: !1580)
!1653 = !DILocation(line: 64, column: 32, scope: !1580)
!1654 = !DILocation(line: 64, column: 38, scope: !1580)
!1655 = !DILocation(line: 64, column: 20, scope: !1580)
!1656 = !DILocation(line: 64, column: 9, scope: !1580)
!1657 = !DILocation(line: 64, column: 18, scope: !1580)
!1658 = !DILocation(line: 65, column: 32, scope: !1580)
!1659 = !DILocation(line: 65, column: 38, scope: !1580)
!1660 = !DILocation(line: 65, column: 20, scope: !1580)
!1661 = !DILocation(line: 65, column: 9, scope: !1580)
!1662 = !DILocation(line: 65, column: 18, scope: !1580)
!1663 = !DILocation(line: 55, column: 29, scope: !1581)
!1664 = !DILocation(line: 55, column: 23, scope: !1581)
!1665 = !DILocation(line: 55, column: 5, scope: !1578)
!1666 = distinct !{!1666, !1665, !1667, !252, !253}
!1667 = !DILocation(line: 66, column: 5, scope: !1578)
!1668 = distinct !DISubprogram(name: "idct4x4dc", scope: !49, file: !49, line: 69, type: !132, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1669)
!1669 = !{!1670, !1671, !1672, !1674, !1677, !1678, !1679, !1680, !1682, !1685, !1686, !1687}
!1670 = !DILocalVariable(name: "d", arg: 1, scope: !1668, file: !49, line: 69, type: !93)
!1671 = !DILocalVariable(name: "tmp", scope: !1668, file: !49, line: 71, type: !108)
!1672 = !DILocalVariable(name: "i", scope: !1673, file: !49, line: 73, type: !51)
!1673 = distinct !DILexicalBlock(scope: !1668, file: !49, line: 73, column: 5)
!1674 = !DILocalVariable(name: "s01", scope: !1675, file: !49, line: 75, type: !51)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !49, line: 74, column: 5)
!1676 = distinct !DILexicalBlock(scope: !1673, file: !49, line: 73, column: 5)
!1677 = !DILocalVariable(name: "d01", scope: !1675, file: !49, line: 76, type: !51)
!1678 = !DILocalVariable(name: "s23", scope: !1675, file: !49, line: 77, type: !51)
!1679 = !DILocalVariable(name: "d23", scope: !1675, file: !49, line: 78, type: !51)
!1680 = !DILocalVariable(name: "i", scope: !1681, file: !49, line: 86, type: !51)
!1681 = distinct !DILexicalBlock(scope: !1668, file: !49, line: 86, column: 5)
!1682 = !DILocalVariable(name: "s01", scope: !1683, file: !49, line: 88, type: !51)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !49, line: 87, column: 5)
!1684 = distinct !DILexicalBlock(scope: !1681, file: !49, line: 86, column: 5)
!1685 = !DILocalVariable(name: "d01", scope: !1683, file: !49, line: 89, type: !51)
!1686 = !DILocalVariable(name: "s23", scope: !1683, file: !49, line: 90, type: !51)
!1687 = !DILocalVariable(name: "d23", scope: !1683, file: !49, line: 91, type: !51)
!1688 = !DILocation(line: 0, scope: !1668)
!1689 = !DILocation(line: 71, column: 5, scope: !1668)
!1690 = !DILocation(line: 71, column: 13, scope: !1668)
!1691 = !DILocation(line: 0, scope: !1673)
!1692 = !DILocation(line: 73, column: 5, scope: !1673)
!1693 = !DILocation(line: 75, column: 22, scope: !1675)
!1694 = !DILocation(line: 75, column: 19, scope: !1675)
!1695 = !DILocation(line: 75, column: 35, scope: !1675)
!1696 = !DILocation(line: 75, column: 30, scope: !1675)
!1697 = !DILocation(line: 75, column: 28, scope: !1675)
!1698 = !DILocation(line: 0, scope: !1675)
!1699 = !DILocation(line: 76, column: 28, scope: !1675)
!1700 = !DILocation(line: 77, column: 24, scope: !1675)
!1701 = !DILocation(line: 77, column: 19, scope: !1675)
!1702 = !DILocation(line: 77, column: 35, scope: !1675)
!1703 = !DILocation(line: 77, column: 30, scope: !1675)
!1704 = !DILocation(line: 77, column: 28, scope: !1675)
!1705 = !DILocation(line: 78, column: 28, scope: !1675)
!1706 = !DILocation(line: 80, column: 26, scope: !1675)
!1707 = !DILocation(line: 80, column: 22, scope: !1675)
!1708 = !DILocation(line: 80, column: 9, scope: !1675)
!1709 = !DILocation(line: 80, column: 20, scope: !1675)
!1710 = !DILocation(line: 81, column: 26, scope: !1675)
!1711 = !DILocation(line: 81, column: 22, scope: !1675)
!1712 = !DILocation(line: 81, column: 16, scope: !1675)
!1713 = !DILocation(line: 81, column: 9, scope: !1675)
!1714 = !DILocation(line: 81, column: 20, scope: !1675)
!1715 = !DILocation(line: 82, column: 26, scope: !1675)
!1716 = !DILocation(line: 82, column: 22, scope: !1675)
!1717 = !DILocation(line: 82, column: 16, scope: !1675)
!1718 = !DILocation(line: 82, column: 9, scope: !1675)
!1719 = !DILocation(line: 82, column: 20, scope: !1675)
!1720 = !DILocation(line: 83, column: 26, scope: !1675)
!1721 = !DILocation(line: 83, column: 22, scope: !1675)
!1722 = !DILocation(line: 83, column: 16, scope: !1675)
!1723 = !DILocation(line: 83, column: 9, scope: !1675)
!1724 = !DILocation(line: 83, column: 20, scope: !1675)
!1725 = !DILocation(line: 73, column: 29, scope: !1676)
!1726 = !DILocation(line: 73, column: 23, scope: !1676)
!1727 = distinct !{!1727, !1692, !1728, !252, !253}
!1728 = !DILocation(line: 84, column: 5, scope: !1673)
!1729 = !DILocation(line: 98, column: 1, scope: !1668)
!1730 = !DILocation(line: 0, scope: !1681)
!1731 = !DILocation(line: 88, column: 24, scope: !1683)
!1732 = !DILocation(line: 88, column: 19, scope: !1683)
!1733 = !DILocation(line: 88, column: 39, scope: !1683)
!1734 = !DILocation(line: 88, column: 32, scope: !1683)
!1735 = !DILocation(line: 88, column: 30, scope: !1683)
!1736 = !DILocation(line: 0, scope: !1683)
!1737 = !DILocation(line: 89, column: 30, scope: !1683)
!1738 = !DILocation(line: 90, column: 26, scope: !1683)
!1739 = !DILocation(line: 90, column: 19, scope: !1683)
!1740 = !DILocation(line: 90, column: 39, scope: !1683)
!1741 = !DILocation(line: 90, column: 32, scope: !1683)
!1742 = !DILocation(line: 90, column: 30, scope: !1683)
!1743 = !DILocation(line: 91, column: 30, scope: !1683)
!1744 = !DILocation(line: 93, column: 24, scope: !1683)
!1745 = !DILocation(line: 93, column: 20, scope: !1683)
!1746 = !DILocation(line: 93, column: 9, scope: !1683)
!1747 = !DILocation(line: 93, column: 18, scope: !1683)
!1748 = !DILocation(line: 94, column: 24, scope: !1683)
!1749 = !DILocation(line: 94, column: 20, scope: !1683)
!1750 = !DILocation(line: 94, column: 9, scope: !1683)
!1751 = !DILocation(line: 94, column: 18, scope: !1683)
!1752 = !DILocation(line: 95, column: 24, scope: !1683)
!1753 = !DILocation(line: 95, column: 20, scope: !1683)
!1754 = !DILocation(line: 95, column: 9, scope: !1683)
!1755 = !DILocation(line: 95, column: 18, scope: !1683)
!1756 = !DILocation(line: 96, column: 24, scope: !1683)
!1757 = !DILocation(line: 96, column: 20, scope: !1683)
!1758 = !DILocation(line: 96, column: 9, scope: !1683)
!1759 = !DILocation(line: 96, column: 18, scope: !1683)
!1760 = !DILocation(line: 86, column: 29, scope: !1684)
!1761 = !DILocation(line: 86, column: 23, scope: !1684)
!1762 = !DILocation(line: 86, column: 5, scope: !1681)
!1763 = distinct !{!1763, !1762, !1764, !252, !253}
!1764 = !DILocation(line: 97, column: 5, scope: !1681)
!1765 = distinct !DISubprogram(name: "x264_dct_init_weights", scope: !49, file: !49, line: 520, type: !1766, scopeLine: 521, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{null}
!1768 = !{!1769, !1771, !1775}
!1769 = !DILocalVariable(name: "j", scope: !1770, file: !49, line: 522, type: !51)
!1770 = distinct !DILexicalBlock(scope: !1765, file: !49, line: 522, column: 5)
!1771 = !DILocalVariable(name: "i", scope: !1772, file: !49, line: 524, type: !51)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !49, line: 524, column: 9)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !49, line: 523, column: 5)
!1774 = distinct !DILexicalBlock(scope: !1770, file: !49, line: 522, column: 5)
!1775 = !DILocalVariable(name: "i", scope: !1776, file: !49, line: 526, type: !51)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !49, line: 526, column: 9)
!1777 = !DILocation(line: 0, scope: !1770)
!1778 = !DILocation(line: 522, column: 5, scope: !1770)
!1779 = !DILocation(line: 0, scope: !1772)
!1780 = !DILocation(line: 524, column: 9, scope: !1772)
!1781 = !DILocation(line: 529, column: 1, scope: !1765)
!1782 = !DILocation(line: 525, column: 69, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1772, file: !49, line: 524, column: 9)
!1784 = !DILocation(line: 525, column: 46, scope: !1783)
!1785 = !DILocation(line: 525, column: 13, scope: !1783)
!1786 = !DILocation(line: 525, column: 44, scope: !1783)
!1787 = !{!1788, !1788, i64 0}
!1788 = !{!"int", !143, i64 0}
!1789 = !DILocation(line: 524, column: 34, scope: !1783)
!1790 = !DILocation(line: 524, column: 27, scope: !1783)
!1791 = distinct !{!1791, !1780, !1792, !252, !253}
!1792 = !DILocation(line: 525, column: 93, scope: !1772)
!1793 = distinct !{!1793, !1778, !1794, !252, !253}
!1794 = !DILocation(line: 528, column: 5, scope: !1770)
!1795 = !DILocation(line: 0, scope: !1776)
!1796 = !DILocation(line: 527, column: 69, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1776, file: !49, line: 526, column: 9)
!1798 = !DILocation(line: 527, column: 46, scope: !1797)
!1799 = !DILocation(line: 527, column: 13, scope: !1797)
!1800 = !DILocation(line: 527, column: 44, scope: !1797)
!1801 = !DILocation(line: 526, column: 34, scope: !1797)
!1802 = !DILocation(line: 526, column: 27, scope: !1797)
!1803 = !DILocation(line: 526, column: 9, scope: !1776)
!1804 = distinct !{!1804, !1803, !1805, !252, !253}
!1805 = !DILocation(line: 527, column: 93, scope: !1776)
!1806 = distinct !DISubprogram(name: "x264_zigzag_init", scope: !49, file: !49, line: 703, type: !1807, scopeLine: 704, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1832)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{null, !51, !1809, !51}
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "x264_zigzag_function_t", file: !66, line: 126, baseType: !1811)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 117, size: 384, elements: !1812)
!1812 = !{!1813, !1817, !1818, !1823, !1824, !1828}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "scan_8x8", scope: !1811, file: !66, line: 119, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !93, !93}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "scan_4x4", scope: !1811, file: !66, line: 120, baseType: !1814, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "sub_8x8", scope: !1811, file: !66, line: 121, baseType: !1819, size: 64, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!51, !93, !1822, !98}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4", scope: !1811, file: !66, line: 122, baseType: !1819, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "sub_4x4ac", scope: !1811, file: !66, line: 123, baseType: !1825, size: 64, offset: 256)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!51, !93, !1822, !98, !93}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "interleave_8x8_cavlc", scope: !1811, file: !66, line: 124, baseType: !1829, size: 64, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !93, !93, !98}
!1832 = !{!1833, !1834, !1835}
!1833 = !DILocalVariable(name: "cpu", arg: 1, scope: !1806, file: !49, line: 703, type: !51)
!1834 = !DILocalVariable(name: "pf", arg: 2, scope: !1806, file: !49, line: 703, type: !1809)
!1835 = !DILocalVariable(name: "b_interlaced", arg: 3, scope: !1806, file: !49, line: 703, type: !51)
!1836 = !DILocation(line: 0, scope: !1806)
!1837 = !DILocation(line: 705, column: 9, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1806, file: !49, line: 705, column: 9)
!1839 = !DILocation(line: 705, column: 9, scope: !1806)
!1840 = !DILocation(line: 0, scope: !1838)
!1841 = !{!1842, !142, i64 0}
!1842 = !{!"", !142, i64 0, !142, i64 8, !142, i64 16, !142, i64 24, !142, i64 32, !142, i64 40}
!1843 = !DILocation(line: 733, column: 13, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1838, file: !49, line: 731, column: 5)
!1845 = !DILocation(line: 733, column: 24, scope: !1844)
!1846 = !DILocation(line: 734, column: 13, scope: !1844)
!1847 = !DILocation(line: 734, column: 24, scope: !1844)
!1848 = !DILocation(line: 735, column: 13, scope: !1844)
!1849 = !DILocation(line: 735, column: 24, scope: !1844)
!1850 = !DILocation(line: 736, column: 13, scope: !1844)
!1851 = !DILocation(line: 736, column: 24, scope: !1844)
!1852 = !DILocation(line: 764, column: 9, scope: !1806)
!1853 = !DILocation(line: 764, column: 30, scope: !1806)
!1854 = !{!1842, !142, i64 40}
!1855 = !DILocation(line: 771, column: 1, scope: !1806)
!1856 = distinct !DISubprogram(name: "zigzag_scan_8x8_field", scope: !49, file: !49, line: 586, type: !1815, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1857)
!1857 = !{!1858, !1859}
!1858 = !DILocalVariable(name: "level", arg: 1, scope: !1856, file: !49, line: 586, type: !93)
!1859 = !DILocalVariable(name: "dct", arg: 2, scope: !1856, file: !49, line: 586, type: !93)
!1860 = !DILocation(line: 0, scope: !1856)
!1861 = !DILocation(line: 588, column: 5, scope: !1856)
!1862 = !DILocation(line: 589, column: 1, scope: !1856)
!1863 = distinct !DISubprogram(name: "zigzag_scan_4x4_field", scope: !49, file: !49, line: 600, type: !1815, scopeLine: 601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1864)
!1864 = !{!1865, !1866}
!1865 = !DILocalVariable(name: "level", arg: 1, scope: !1863, file: !49, line: 600, type: !93)
!1866 = !DILocalVariable(name: "dct", arg: 2, scope: !1863, file: !49, line: 600, type: !93)
!1867 = !DILocation(line: 0, scope: !1863)
!1868 = !DILocation(line: 602, column: 5, scope: !1863)
!1869 = !DILocation(line: 603, column: 5, scope: !1863)
!1870 = !DILocation(line: 603, column: 16, scope: !1863)
!1871 = !DILocation(line: 603, column: 27, scope: !1863)
!1872 = !DILocation(line: 603, column: 38, scope: !1863)
!1873 = !DILocation(line: 604, column: 5, scope: !1863)
!1874 = !DILocation(line: 605, column: 5, scope: !1863)
!1875 = !DILocation(line: 606, column: 5, scope: !1863)
!1876 = !DILocation(line: 607, column: 1, scope: !1863)
!1877 = distinct !DISubprogram(name: "zigzag_sub_8x8_field", scope: !49, file: !49, line: 678, type: !1820, scopeLine: 679, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1878)
!1878 = !{!1879, !1880, !1881, !1882, !1883, !1885, !1886, !1888, !1889, !1891, !1892, !1894, !1895, !1897, !1898, !1900, !1901, !1903, !1904, !1906, !1907, !1909, !1910, !1912, !1913, !1915, !1916, !1918, !1919, !1921, !1922, !1924, !1925, !1927, !1928, !1930, !1931, !1933, !1934, !1936, !1937, !1939, !1940, !1942, !1943, !1945, !1946, !1948, !1949, !1951, !1952, !1954, !1955, !1957, !1958, !1960, !1961, !1963, !1964, !1966, !1967, !1969, !1970, !1972, !1973, !1975, !1976, !1978, !1979, !1981, !1982, !1984, !1985, !1987, !1988, !1990, !1991, !1993, !1994, !1996, !1997, !1999, !2000, !2002, !2003, !2005, !2006, !2008, !2009, !2011, !2012, !2014, !2015, !2017, !2018, !2020, !2021, !2023, !2024, !2026, !2027, !2029, !2030, !2032, !2033, !2035, !2036, !2038, !2039, !2041, !2042, !2044, !2045, !2047, !2048, !2050, !2051, !2053, !2054, !2056, !2057, !2059, !2060, !2062, !2063, !2065, !2066, !2068, !2069, !2071, !2072, !2074}
!1879 = !DILocalVariable(name: "level", arg: 1, scope: !1877, file: !49, line: 678, type: !93)
!1880 = !DILocalVariable(name: "p_src", arg: 2, scope: !1877, file: !49, line: 678, type: !1822)
!1881 = !DILocalVariable(name: "p_dst", arg: 3, scope: !1877, file: !49, line: 678, type: !98)
!1882 = !DILocalVariable(name: "nz", scope: !1877, file: !49, line: 680, type: !51)
!1883 = !DILocalVariable(name: "oe", scope: !1884, file: !49, line: 681, type: !51)
!1884 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1885 = !DILocalVariable(name: "od", scope: !1884, file: !49, line: 681, type: !51)
!1886 = !DILocalVariable(name: "oe", scope: !1887, file: !49, line: 681, type: !51)
!1887 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1888 = !DILocalVariable(name: "od", scope: !1887, file: !49, line: 681, type: !51)
!1889 = !DILocalVariable(name: "oe", scope: !1890, file: !49, line: 681, type: !51)
!1890 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1891 = !DILocalVariable(name: "od", scope: !1890, file: !49, line: 681, type: !51)
!1892 = !DILocalVariable(name: "oe", scope: !1893, file: !49, line: 681, type: !51)
!1893 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1894 = !DILocalVariable(name: "od", scope: !1893, file: !49, line: 681, type: !51)
!1895 = !DILocalVariable(name: "oe", scope: !1896, file: !49, line: 681, type: !51)
!1896 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1897 = !DILocalVariable(name: "od", scope: !1896, file: !49, line: 681, type: !51)
!1898 = !DILocalVariable(name: "oe", scope: !1899, file: !49, line: 681, type: !51)
!1899 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1900 = !DILocalVariable(name: "od", scope: !1899, file: !49, line: 681, type: !51)
!1901 = !DILocalVariable(name: "oe", scope: !1902, file: !49, line: 681, type: !51)
!1902 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1903 = !DILocalVariable(name: "od", scope: !1902, file: !49, line: 681, type: !51)
!1904 = !DILocalVariable(name: "oe", scope: !1905, file: !49, line: 681, type: !51)
!1905 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1906 = !DILocalVariable(name: "od", scope: !1905, file: !49, line: 681, type: !51)
!1907 = !DILocalVariable(name: "oe", scope: !1908, file: !49, line: 681, type: !51)
!1908 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1909 = !DILocalVariable(name: "od", scope: !1908, file: !49, line: 681, type: !51)
!1910 = !DILocalVariable(name: "oe", scope: !1911, file: !49, line: 681, type: !51)
!1911 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1912 = !DILocalVariable(name: "od", scope: !1911, file: !49, line: 681, type: !51)
!1913 = !DILocalVariable(name: "oe", scope: !1914, file: !49, line: 681, type: !51)
!1914 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1915 = !DILocalVariable(name: "od", scope: !1914, file: !49, line: 681, type: !51)
!1916 = !DILocalVariable(name: "oe", scope: !1917, file: !49, line: 681, type: !51)
!1917 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1918 = !DILocalVariable(name: "od", scope: !1917, file: !49, line: 681, type: !51)
!1919 = !DILocalVariable(name: "oe", scope: !1920, file: !49, line: 681, type: !51)
!1920 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1921 = !DILocalVariable(name: "od", scope: !1920, file: !49, line: 681, type: !51)
!1922 = !DILocalVariable(name: "oe", scope: !1923, file: !49, line: 681, type: !51)
!1923 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1924 = !DILocalVariable(name: "od", scope: !1923, file: !49, line: 681, type: !51)
!1925 = !DILocalVariable(name: "oe", scope: !1926, file: !49, line: 681, type: !51)
!1926 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1927 = !DILocalVariable(name: "od", scope: !1926, file: !49, line: 681, type: !51)
!1928 = !DILocalVariable(name: "oe", scope: !1929, file: !49, line: 681, type: !51)
!1929 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1930 = !DILocalVariable(name: "od", scope: !1929, file: !49, line: 681, type: !51)
!1931 = !DILocalVariable(name: "oe", scope: !1932, file: !49, line: 681, type: !51)
!1932 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1933 = !DILocalVariable(name: "od", scope: !1932, file: !49, line: 681, type: !51)
!1934 = !DILocalVariable(name: "oe", scope: !1935, file: !49, line: 681, type: !51)
!1935 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1936 = !DILocalVariable(name: "od", scope: !1935, file: !49, line: 681, type: !51)
!1937 = !DILocalVariable(name: "oe", scope: !1938, file: !49, line: 681, type: !51)
!1938 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1939 = !DILocalVariable(name: "od", scope: !1938, file: !49, line: 681, type: !51)
!1940 = !DILocalVariable(name: "oe", scope: !1941, file: !49, line: 681, type: !51)
!1941 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1942 = !DILocalVariable(name: "od", scope: !1941, file: !49, line: 681, type: !51)
!1943 = !DILocalVariable(name: "oe", scope: !1944, file: !49, line: 681, type: !51)
!1944 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1945 = !DILocalVariable(name: "od", scope: !1944, file: !49, line: 681, type: !51)
!1946 = !DILocalVariable(name: "oe", scope: !1947, file: !49, line: 681, type: !51)
!1947 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1948 = !DILocalVariable(name: "od", scope: !1947, file: !49, line: 681, type: !51)
!1949 = !DILocalVariable(name: "oe", scope: !1950, file: !49, line: 681, type: !51)
!1950 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1951 = !DILocalVariable(name: "od", scope: !1950, file: !49, line: 681, type: !51)
!1952 = !DILocalVariable(name: "oe", scope: !1953, file: !49, line: 681, type: !51)
!1953 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1954 = !DILocalVariable(name: "od", scope: !1953, file: !49, line: 681, type: !51)
!1955 = !DILocalVariable(name: "oe", scope: !1956, file: !49, line: 681, type: !51)
!1956 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1957 = !DILocalVariable(name: "od", scope: !1956, file: !49, line: 681, type: !51)
!1958 = !DILocalVariable(name: "oe", scope: !1959, file: !49, line: 681, type: !51)
!1959 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1960 = !DILocalVariable(name: "od", scope: !1959, file: !49, line: 681, type: !51)
!1961 = !DILocalVariable(name: "oe", scope: !1962, file: !49, line: 681, type: !51)
!1962 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1963 = !DILocalVariable(name: "od", scope: !1962, file: !49, line: 681, type: !51)
!1964 = !DILocalVariable(name: "oe", scope: !1965, file: !49, line: 681, type: !51)
!1965 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1966 = !DILocalVariable(name: "od", scope: !1965, file: !49, line: 681, type: !51)
!1967 = !DILocalVariable(name: "oe", scope: !1968, file: !49, line: 681, type: !51)
!1968 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1969 = !DILocalVariable(name: "od", scope: !1968, file: !49, line: 681, type: !51)
!1970 = !DILocalVariable(name: "oe", scope: !1971, file: !49, line: 681, type: !51)
!1971 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1972 = !DILocalVariable(name: "od", scope: !1971, file: !49, line: 681, type: !51)
!1973 = !DILocalVariable(name: "oe", scope: !1974, file: !49, line: 681, type: !51)
!1974 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1975 = !DILocalVariable(name: "od", scope: !1974, file: !49, line: 681, type: !51)
!1976 = !DILocalVariable(name: "oe", scope: !1977, file: !49, line: 681, type: !51)
!1977 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1978 = !DILocalVariable(name: "od", scope: !1977, file: !49, line: 681, type: !51)
!1979 = !DILocalVariable(name: "oe", scope: !1980, file: !49, line: 681, type: !51)
!1980 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1981 = !DILocalVariable(name: "od", scope: !1980, file: !49, line: 681, type: !51)
!1982 = !DILocalVariable(name: "oe", scope: !1983, file: !49, line: 681, type: !51)
!1983 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1984 = !DILocalVariable(name: "od", scope: !1983, file: !49, line: 681, type: !51)
!1985 = !DILocalVariable(name: "oe", scope: !1986, file: !49, line: 681, type: !51)
!1986 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1987 = !DILocalVariable(name: "od", scope: !1986, file: !49, line: 681, type: !51)
!1988 = !DILocalVariable(name: "oe", scope: !1989, file: !49, line: 681, type: !51)
!1989 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1990 = !DILocalVariable(name: "od", scope: !1989, file: !49, line: 681, type: !51)
!1991 = !DILocalVariable(name: "oe", scope: !1992, file: !49, line: 681, type: !51)
!1992 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1993 = !DILocalVariable(name: "od", scope: !1992, file: !49, line: 681, type: !51)
!1994 = !DILocalVariable(name: "oe", scope: !1995, file: !49, line: 681, type: !51)
!1995 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1996 = !DILocalVariable(name: "od", scope: !1995, file: !49, line: 681, type: !51)
!1997 = !DILocalVariable(name: "oe", scope: !1998, file: !49, line: 681, type: !51)
!1998 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!1999 = !DILocalVariable(name: "od", scope: !1998, file: !49, line: 681, type: !51)
!2000 = !DILocalVariable(name: "oe", scope: !2001, file: !49, line: 681, type: !51)
!2001 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2002 = !DILocalVariable(name: "od", scope: !2001, file: !49, line: 681, type: !51)
!2003 = !DILocalVariable(name: "oe", scope: !2004, file: !49, line: 681, type: !51)
!2004 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2005 = !DILocalVariable(name: "od", scope: !2004, file: !49, line: 681, type: !51)
!2006 = !DILocalVariable(name: "oe", scope: !2007, file: !49, line: 681, type: !51)
!2007 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2008 = !DILocalVariable(name: "od", scope: !2007, file: !49, line: 681, type: !51)
!2009 = !DILocalVariable(name: "oe", scope: !2010, file: !49, line: 681, type: !51)
!2010 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2011 = !DILocalVariable(name: "od", scope: !2010, file: !49, line: 681, type: !51)
!2012 = !DILocalVariable(name: "oe", scope: !2013, file: !49, line: 681, type: !51)
!2013 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2014 = !DILocalVariable(name: "od", scope: !2013, file: !49, line: 681, type: !51)
!2015 = !DILocalVariable(name: "oe", scope: !2016, file: !49, line: 681, type: !51)
!2016 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2017 = !DILocalVariable(name: "od", scope: !2016, file: !49, line: 681, type: !51)
!2018 = !DILocalVariable(name: "oe", scope: !2019, file: !49, line: 681, type: !51)
!2019 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2020 = !DILocalVariable(name: "od", scope: !2019, file: !49, line: 681, type: !51)
!2021 = !DILocalVariable(name: "oe", scope: !2022, file: !49, line: 681, type: !51)
!2022 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2023 = !DILocalVariable(name: "od", scope: !2022, file: !49, line: 681, type: !51)
!2024 = !DILocalVariable(name: "oe", scope: !2025, file: !49, line: 681, type: !51)
!2025 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2026 = !DILocalVariable(name: "od", scope: !2025, file: !49, line: 681, type: !51)
!2027 = !DILocalVariable(name: "oe", scope: !2028, file: !49, line: 681, type: !51)
!2028 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2029 = !DILocalVariable(name: "od", scope: !2028, file: !49, line: 681, type: !51)
!2030 = !DILocalVariable(name: "oe", scope: !2031, file: !49, line: 681, type: !51)
!2031 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2032 = !DILocalVariable(name: "od", scope: !2031, file: !49, line: 681, type: !51)
!2033 = !DILocalVariable(name: "oe", scope: !2034, file: !49, line: 681, type: !51)
!2034 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2035 = !DILocalVariable(name: "od", scope: !2034, file: !49, line: 681, type: !51)
!2036 = !DILocalVariable(name: "oe", scope: !2037, file: !49, line: 681, type: !51)
!2037 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2038 = !DILocalVariable(name: "od", scope: !2037, file: !49, line: 681, type: !51)
!2039 = !DILocalVariable(name: "oe", scope: !2040, file: !49, line: 681, type: !51)
!2040 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2041 = !DILocalVariable(name: "od", scope: !2040, file: !49, line: 681, type: !51)
!2042 = !DILocalVariable(name: "oe", scope: !2043, file: !49, line: 681, type: !51)
!2043 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2044 = !DILocalVariable(name: "od", scope: !2043, file: !49, line: 681, type: !51)
!2045 = !DILocalVariable(name: "oe", scope: !2046, file: !49, line: 681, type: !51)
!2046 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2047 = !DILocalVariable(name: "od", scope: !2046, file: !49, line: 681, type: !51)
!2048 = !DILocalVariable(name: "oe", scope: !2049, file: !49, line: 681, type: !51)
!2049 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2050 = !DILocalVariable(name: "od", scope: !2049, file: !49, line: 681, type: !51)
!2051 = !DILocalVariable(name: "oe", scope: !2052, file: !49, line: 681, type: !51)
!2052 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2053 = !DILocalVariable(name: "od", scope: !2052, file: !49, line: 681, type: !51)
!2054 = !DILocalVariable(name: "oe", scope: !2055, file: !49, line: 681, type: !51)
!2055 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2056 = !DILocalVariable(name: "od", scope: !2055, file: !49, line: 681, type: !51)
!2057 = !DILocalVariable(name: "oe", scope: !2058, file: !49, line: 681, type: !51)
!2058 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2059 = !DILocalVariable(name: "od", scope: !2058, file: !49, line: 681, type: !51)
!2060 = !DILocalVariable(name: "oe", scope: !2061, file: !49, line: 681, type: !51)
!2061 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2062 = !DILocalVariable(name: "od", scope: !2061, file: !49, line: 681, type: !51)
!2063 = !DILocalVariable(name: "oe", scope: !2064, file: !49, line: 681, type: !51)
!2064 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2065 = !DILocalVariable(name: "od", scope: !2064, file: !49, line: 681, type: !51)
!2066 = !DILocalVariable(name: "oe", scope: !2067, file: !49, line: 681, type: !51)
!2067 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2068 = !DILocalVariable(name: "od", scope: !2067, file: !49, line: 681, type: !51)
!2069 = !DILocalVariable(name: "oe", scope: !2070, file: !49, line: 681, type: !51)
!2070 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2071 = !DILocalVariable(name: "od", scope: !2070, file: !49, line: 681, type: !51)
!2072 = !DILocalVariable(name: "oe", scope: !2073, file: !49, line: 681, type: !51)
!2073 = distinct !DILexicalBlock(scope: !1877, file: !49, line: 681, column: 5)
!2074 = !DILocalVariable(name: "od", scope: !2073, file: !49, line: 681, type: !51)
!2075 = !DILocation(line: 0, scope: !1877)
!2076 = !DILocation(line: 0, scope: !1884)
!2077 = !DILocation(line: 681, column: 5, scope: !1884)
!2078 = !DILocation(line: 0, scope: !1887)
!2079 = !DILocation(line: 681, column: 5, scope: !1887)
!2080 = !DILocation(line: 0, scope: !1890)
!2081 = !DILocation(line: 681, column: 5, scope: !1890)
!2082 = !DILocation(line: 0, scope: !1893)
!2083 = !DILocation(line: 681, column: 5, scope: !1893)
!2084 = !DILocation(line: 0, scope: !1896)
!2085 = !DILocation(line: 681, column: 5, scope: !1896)
!2086 = !DILocation(line: 0, scope: !1899)
!2087 = !DILocation(line: 681, column: 5, scope: !1899)
!2088 = !DILocation(line: 0, scope: !1902)
!2089 = !DILocation(line: 681, column: 5, scope: !1902)
!2090 = !DILocation(line: 0, scope: !1905)
!2091 = !DILocation(line: 681, column: 5, scope: !1905)
!2092 = !DILocation(line: 0, scope: !1908)
!2093 = !DILocation(line: 681, column: 5, scope: !1908)
!2094 = !DILocation(line: 0, scope: !1911)
!2095 = !DILocation(line: 681, column: 5, scope: !1911)
!2096 = !DILocation(line: 0, scope: !1914)
!2097 = !DILocation(line: 681, column: 5, scope: !1914)
!2098 = !DILocation(line: 0, scope: !1917)
!2099 = !DILocation(line: 681, column: 5, scope: !1917)
!2100 = !DILocation(line: 0, scope: !1920)
!2101 = !DILocation(line: 681, column: 5, scope: !1920)
!2102 = !DILocation(line: 0, scope: !1923)
!2103 = !DILocation(line: 681, column: 5, scope: !1923)
!2104 = !DILocation(line: 0, scope: !1926)
!2105 = !DILocation(line: 681, column: 5, scope: !1926)
!2106 = !DILocation(line: 0, scope: !1929)
!2107 = !DILocation(line: 681, column: 5, scope: !1929)
!2108 = !DILocation(line: 0, scope: !1932)
!2109 = !DILocation(line: 681, column: 5, scope: !1932)
!2110 = !DILocation(line: 0, scope: !1935)
!2111 = !DILocation(line: 681, column: 5, scope: !1935)
!2112 = !DILocation(line: 0, scope: !1938)
!2113 = !DILocation(line: 681, column: 5, scope: !1938)
!2114 = !DILocation(line: 0, scope: !1941)
!2115 = !DILocation(line: 681, column: 5, scope: !1941)
!2116 = !DILocation(line: 0, scope: !1944)
!2117 = !DILocation(line: 681, column: 5, scope: !1944)
!2118 = !DILocation(line: 0, scope: !1947)
!2119 = !DILocation(line: 681, column: 5, scope: !1947)
!2120 = !DILocation(line: 0, scope: !1950)
!2121 = !DILocation(line: 681, column: 5, scope: !1950)
!2122 = !DILocation(line: 0, scope: !1953)
!2123 = !DILocation(line: 681, column: 5, scope: !1953)
!2124 = !DILocation(line: 0, scope: !1956)
!2125 = !DILocation(line: 681, column: 5, scope: !1956)
!2126 = !DILocation(line: 0, scope: !1959)
!2127 = !DILocation(line: 681, column: 5, scope: !1959)
!2128 = !DILocation(line: 0, scope: !1962)
!2129 = !DILocation(line: 681, column: 5, scope: !1962)
!2130 = !DILocation(line: 0, scope: !1965)
!2131 = !DILocation(line: 681, column: 5, scope: !1965)
!2132 = !DILocation(line: 0, scope: !1968)
!2133 = !DILocation(line: 681, column: 5, scope: !1968)
!2134 = !DILocation(line: 0, scope: !1971)
!2135 = !DILocation(line: 681, column: 5, scope: !1971)
!2136 = !DILocation(line: 0, scope: !1974)
!2137 = !DILocation(line: 681, column: 5, scope: !1974)
!2138 = !DILocation(line: 0, scope: !1977)
!2139 = !DILocation(line: 681, column: 5, scope: !1977)
!2140 = !DILocation(line: 0, scope: !1980)
!2141 = !DILocation(line: 681, column: 5, scope: !1980)
!2142 = !DILocation(line: 0, scope: !1983)
!2143 = !DILocation(line: 681, column: 5, scope: !1983)
!2144 = !DILocation(line: 0, scope: !1986)
!2145 = !DILocation(line: 681, column: 5, scope: !1986)
!2146 = !DILocation(line: 0, scope: !1989)
!2147 = !DILocation(line: 681, column: 5, scope: !1989)
!2148 = !DILocation(line: 0, scope: !1992)
!2149 = !DILocation(line: 681, column: 5, scope: !1992)
!2150 = !DILocation(line: 0, scope: !1995)
!2151 = !DILocation(line: 681, column: 5, scope: !1995)
!2152 = !DILocation(line: 0, scope: !1998)
!2153 = !DILocation(line: 681, column: 5, scope: !1998)
!2154 = !DILocation(line: 0, scope: !2001)
!2155 = !DILocation(line: 681, column: 5, scope: !2001)
!2156 = !DILocation(line: 0, scope: !2004)
!2157 = !DILocation(line: 681, column: 5, scope: !2004)
!2158 = !DILocation(line: 0, scope: !2007)
!2159 = !DILocation(line: 681, column: 5, scope: !2007)
!2160 = !DILocation(line: 0, scope: !2010)
!2161 = !DILocation(line: 681, column: 5, scope: !2010)
!2162 = !DILocation(line: 0, scope: !2013)
!2163 = !DILocation(line: 681, column: 5, scope: !2013)
!2164 = !DILocation(line: 0, scope: !2016)
!2165 = !DILocation(line: 681, column: 5, scope: !2016)
!2166 = !DILocation(line: 0, scope: !2019)
!2167 = !DILocation(line: 681, column: 5, scope: !2019)
!2168 = !DILocation(line: 0, scope: !2022)
!2169 = !DILocation(line: 681, column: 5, scope: !2022)
!2170 = !DILocation(line: 0, scope: !2025)
!2171 = !DILocation(line: 681, column: 5, scope: !2025)
!2172 = !DILocation(line: 0, scope: !2028)
!2173 = !DILocation(line: 681, column: 5, scope: !2028)
!2174 = !DILocation(line: 0, scope: !2031)
!2175 = !DILocation(line: 681, column: 5, scope: !2031)
!2176 = !DILocation(line: 0, scope: !2034)
!2177 = !DILocation(line: 681, column: 5, scope: !2034)
!2178 = !DILocation(line: 0, scope: !2037)
!2179 = !DILocation(line: 681, column: 5, scope: !2037)
!2180 = !DILocation(line: 0, scope: !2040)
!2181 = !DILocation(line: 681, column: 5, scope: !2040)
!2182 = !DILocation(line: 0, scope: !2043)
!2183 = !DILocation(line: 681, column: 5, scope: !2043)
!2184 = !DILocation(line: 0, scope: !2046)
!2185 = !DILocation(line: 681, column: 5, scope: !2046)
!2186 = !DILocation(line: 0, scope: !2049)
!2187 = !DILocation(line: 681, column: 5, scope: !2049)
!2188 = !DILocation(line: 0, scope: !2052)
!2189 = !DILocation(line: 681, column: 5, scope: !2052)
!2190 = !DILocation(line: 0, scope: !2055)
!2191 = !DILocation(line: 681, column: 5, scope: !2055)
!2192 = !DILocation(line: 0, scope: !2058)
!2193 = !DILocation(line: 681, column: 5, scope: !2058)
!2194 = !DILocation(line: 0, scope: !2061)
!2195 = !DILocation(line: 681, column: 5, scope: !2061)
!2196 = !DILocation(line: 0, scope: !2064)
!2197 = !DILocation(line: 681, column: 5, scope: !2064)
!2198 = !DILocation(line: 0, scope: !2067)
!2199 = !DILocation(line: 681, column: 5, scope: !2067)
!2200 = !DILocation(line: 0, scope: !2070)
!2201 = !DILocation(line: 681, column: 5, scope: !2070)
!2202 = !DILocation(line: 0, scope: !2073)
!2203 = !DILocation(line: 681, column: 5, scope: !2073)
!2204 = !DILocation(line: 682, column: 5, scope: !1877)
!2205 = !DILocation(line: 683, column: 13, scope: !1877)
!2206 = !DILocation(line: 683, column: 12, scope: !1877)
!2207 = !DILocation(line: 683, column: 5, scope: !1877)
!2208 = distinct !DISubprogram(name: "zigzag_sub_4x4_field", scope: !49, file: !49, line: 639, type: !1820, scopeLine: 640, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2209)
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2216, !2217, !2219, !2220, !2222, !2223, !2225, !2226, !2228, !2229, !2231, !2232, !2234, !2235, !2237, !2238, !2240, !2241, !2243, !2244, !2246, !2247, !2249, !2250, !2252, !2253, !2255, !2256, !2258, !2259, !2261}
!2210 = !DILocalVariable(name: "level", arg: 1, scope: !2208, file: !49, line: 639, type: !93)
!2211 = !DILocalVariable(name: "p_src", arg: 2, scope: !2208, file: !49, line: 639, type: !1822)
!2212 = !DILocalVariable(name: "p_dst", arg: 3, scope: !2208, file: !49, line: 639, type: !98)
!2213 = !DILocalVariable(name: "nz", scope: !2208, file: !49, line: 641, type: !51)
!2214 = !DILocalVariable(name: "oe", scope: !2215, file: !49, line: 642, type: !51)
!2215 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2216 = !DILocalVariable(name: "od", scope: !2215, file: !49, line: 642, type: !51)
!2217 = !DILocalVariable(name: "oe", scope: !2218, file: !49, line: 642, type: !51)
!2218 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2219 = !DILocalVariable(name: "od", scope: !2218, file: !49, line: 642, type: !51)
!2220 = !DILocalVariable(name: "oe", scope: !2221, file: !49, line: 642, type: !51)
!2221 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2222 = !DILocalVariable(name: "od", scope: !2221, file: !49, line: 642, type: !51)
!2223 = !DILocalVariable(name: "oe", scope: !2224, file: !49, line: 642, type: !51)
!2224 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2225 = !DILocalVariable(name: "od", scope: !2224, file: !49, line: 642, type: !51)
!2226 = !DILocalVariable(name: "oe", scope: !2227, file: !49, line: 642, type: !51)
!2227 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2228 = !DILocalVariable(name: "od", scope: !2227, file: !49, line: 642, type: !51)
!2229 = !DILocalVariable(name: "oe", scope: !2230, file: !49, line: 642, type: !51)
!2230 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2231 = !DILocalVariable(name: "od", scope: !2230, file: !49, line: 642, type: !51)
!2232 = !DILocalVariable(name: "oe", scope: !2233, file: !49, line: 642, type: !51)
!2233 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2234 = !DILocalVariable(name: "od", scope: !2233, file: !49, line: 642, type: !51)
!2235 = !DILocalVariable(name: "oe", scope: !2236, file: !49, line: 642, type: !51)
!2236 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2237 = !DILocalVariable(name: "od", scope: !2236, file: !49, line: 642, type: !51)
!2238 = !DILocalVariable(name: "oe", scope: !2239, file: !49, line: 642, type: !51)
!2239 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2240 = !DILocalVariable(name: "od", scope: !2239, file: !49, line: 642, type: !51)
!2241 = !DILocalVariable(name: "oe", scope: !2242, file: !49, line: 642, type: !51)
!2242 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2243 = !DILocalVariable(name: "od", scope: !2242, file: !49, line: 642, type: !51)
!2244 = !DILocalVariable(name: "oe", scope: !2245, file: !49, line: 642, type: !51)
!2245 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2246 = !DILocalVariable(name: "od", scope: !2245, file: !49, line: 642, type: !51)
!2247 = !DILocalVariable(name: "oe", scope: !2248, file: !49, line: 642, type: !51)
!2248 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2249 = !DILocalVariable(name: "od", scope: !2248, file: !49, line: 642, type: !51)
!2250 = !DILocalVariable(name: "oe", scope: !2251, file: !49, line: 642, type: !51)
!2251 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2252 = !DILocalVariable(name: "od", scope: !2251, file: !49, line: 642, type: !51)
!2253 = !DILocalVariable(name: "oe", scope: !2254, file: !49, line: 642, type: !51)
!2254 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2255 = !DILocalVariable(name: "od", scope: !2254, file: !49, line: 642, type: !51)
!2256 = !DILocalVariable(name: "oe", scope: !2257, file: !49, line: 642, type: !51)
!2257 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2258 = !DILocalVariable(name: "od", scope: !2257, file: !49, line: 642, type: !51)
!2259 = !DILocalVariable(name: "oe", scope: !2260, file: !49, line: 642, type: !51)
!2260 = distinct !DILexicalBlock(scope: !2208, file: !49, line: 642, column: 5)
!2261 = !DILocalVariable(name: "od", scope: !2260, file: !49, line: 642, type: !51)
!2262 = !DILocation(line: 0, scope: !2208)
!2263 = !DILocation(line: 0, scope: !2215)
!2264 = !DILocation(line: 642, column: 5, scope: !2215)
!2265 = !DILocation(line: 0, scope: !2218)
!2266 = !DILocation(line: 642, column: 5, scope: !2218)
!2267 = !DILocation(line: 0, scope: !2221)
!2268 = !DILocation(line: 642, column: 5, scope: !2221)
!2269 = !DILocation(line: 0, scope: !2224)
!2270 = !DILocation(line: 642, column: 5, scope: !2224)
!2271 = !DILocation(line: 0, scope: !2227)
!2272 = !DILocation(line: 642, column: 5, scope: !2227)
!2273 = !DILocation(line: 0, scope: !2230)
!2274 = !DILocation(line: 642, column: 5, scope: !2230)
!2275 = !DILocation(line: 0, scope: !2233)
!2276 = !DILocation(line: 642, column: 5, scope: !2233)
!2277 = !DILocation(line: 0, scope: !2236)
!2278 = !DILocation(line: 642, column: 5, scope: !2236)
!2279 = !DILocation(line: 0, scope: !2239)
!2280 = !DILocation(line: 642, column: 5, scope: !2239)
!2281 = !DILocation(line: 0, scope: !2242)
!2282 = !DILocation(line: 642, column: 5, scope: !2242)
!2283 = !DILocation(line: 0, scope: !2245)
!2284 = !DILocation(line: 642, column: 5, scope: !2245)
!2285 = !DILocation(line: 0, scope: !2248)
!2286 = !DILocation(line: 642, column: 5, scope: !2248)
!2287 = !DILocation(line: 0, scope: !2251)
!2288 = !DILocation(line: 642, column: 5, scope: !2251)
!2289 = !DILocation(line: 0, scope: !2254)
!2290 = !DILocation(line: 642, column: 5, scope: !2254)
!2291 = !DILocation(line: 0, scope: !2257)
!2292 = !DILocation(line: 642, column: 5, scope: !2257)
!2293 = !DILocation(line: 0, scope: !2260)
!2294 = !DILocation(line: 642, column: 5, scope: !2260)
!2295 = !DILocation(line: 643, column: 5, scope: !2208)
!2296 = !DILocation(line: 644, column: 13, scope: !2208)
!2297 = !DILocation(line: 644, column: 12, scope: !2208)
!2298 = !DILocation(line: 644, column: 5, scope: !2208)
!2299 = distinct !DISubprogram(name: "zigzag_sub_4x4ac_field", scope: !49, file: !49, line: 663, type: !1826, scopeLine: 664, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2300)
!2300 = !{!2301, !2302, !2303, !2304, !2305, !2306, !2308, !2309, !2311, !2312, !2314, !2315, !2317, !2318, !2320, !2321, !2323, !2324, !2326, !2327, !2329, !2330, !2332, !2333, !2335, !2336, !2338, !2339, !2341, !2342, !2344, !2345, !2347, !2348, !2350, !2351, !2353}
!2301 = !DILocalVariable(name: "level", arg: 1, scope: !2299, file: !49, line: 663, type: !93)
!2302 = !DILocalVariable(name: "p_src", arg: 2, scope: !2299, file: !49, line: 663, type: !1822)
!2303 = !DILocalVariable(name: "p_dst", arg: 3, scope: !2299, file: !49, line: 663, type: !98)
!2304 = !DILocalVariable(name: "dc", arg: 4, scope: !2299, file: !49, line: 663, type: !93)
!2305 = !DILocalVariable(name: "nz", scope: !2299, file: !49, line: 665, type: !51)
!2306 = !DILocalVariable(name: "oe", scope: !2307, file: !49, line: 666, type: !51)
!2307 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2308 = !DILocalVariable(name: "od", scope: !2307, file: !49, line: 666, type: !51)
!2309 = !DILocalVariable(name: "oe", scope: !2310, file: !49, line: 666, type: !51)
!2310 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2311 = !DILocalVariable(name: "od", scope: !2310, file: !49, line: 666, type: !51)
!2312 = !DILocalVariable(name: "oe", scope: !2313, file: !49, line: 666, type: !51)
!2313 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2314 = !DILocalVariable(name: "od", scope: !2313, file: !49, line: 666, type: !51)
!2315 = !DILocalVariable(name: "oe", scope: !2316, file: !49, line: 666, type: !51)
!2316 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2317 = !DILocalVariable(name: "od", scope: !2316, file: !49, line: 666, type: !51)
!2318 = !DILocalVariable(name: "oe", scope: !2319, file: !49, line: 666, type: !51)
!2319 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2320 = !DILocalVariable(name: "od", scope: !2319, file: !49, line: 666, type: !51)
!2321 = !DILocalVariable(name: "oe", scope: !2322, file: !49, line: 666, type: !51)
!2322 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2323 = !DILocalVariable(name: "od", scope: !2322, file: !49, line: 666, type: !51)
!2324 = !DILocalVariable(name: "oe", scope: !2325, file: !49, line: 666, type: !51)
!2325 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2326 = !DILocalVariable(name: "od", scope: !2325, file: !49, line: 666, type: !51)
!2327 = !DILocalVariable(name: "oe", scope: !2328, file: !49, line: 666, type: !51)
!2328 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2329 = !DILocalVariable(name: "od", scope: !2328, file: !49, line: 666, type: !51)
!2330 = !DILocalVariable(name: "oe", scope: !2331, file: !49, line: 666, type: !51)
!2331 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2332 = !DILocalVariable(name: "od", scope: !2331, file: !49, line: 666, type: !51)
!2333 = !DILocalVariable(name: "oe", scope: !2334, file: !49, line: 666, type: !51)
!2334 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2335 = !DILocalVariable(name: "od", scope: !2334, file: !49, line: 666, type: !51)
!2336 = !DILocalVariable(name: "oe", scope: !2337, file: !49, line: 666, type: !51)
!2337 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2338 = !DILocalVariable(name: "od", scope: !2337, file: !49, line: 666, type: !51)
!2339 = !DILocalVariable(name: "oe", scope: !2340, file: !49, line: 666, type: !51)
!2340 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2341 = !DILocalVariable(name: "od", scope: !2340, file: !49, line: 666, type: !51)
!2342 = !DILocalVariable(name: "oe", scope: !2343, file: !49, line: 666, type: !51)
!2343 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2344 = !DILocalVariable(name: "od", scope: !2343, file: !49, line: 666, type: !51)
!2345 = !DILocalVariable(name: "oe", scope: !2346, file: !49, line: 666, type: !51)
!2346 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2347 = !DILocalVariable(name: "od", scope: !2346, file: !49, line: 666, type: !51)
!2348 = !DILocalVariable(name: "oe", scope: !2349, file: !49, line: 666, type: !51)
!2349 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2350 = !DILocalVariable(name: "od", scope: !2349, file: !49, line: 666, type: !51)
!2351 = !DILocalVariable(name: "oe", scope: !2352, file: !49, line: 666, type: !51)
!2352 = distinct !DILexicalBlock(scope: !2299, file: !49, line: 666, column: 5)
!2353 = !DILocalVariable(name: "od", scope: !2352, file: !49, line: 666, type: !51)
!2354 = !DILocation(line: 0, scope: !2299)
!2355 = !DILocation(line: 0, scope: !2307)
!2356 = !DILocation(line: 666, column: 5, scope: !2307)
!2357 = !DILocation(line: 0, scope: !2310)
!2358 = !DILocation(line: 666, column: 5, scope: !2310)
!2359 = !DILocation(line: 0, scope: !2313)
!2360 = !DILocation(line: 666, column: 5, scope: !2313)
!2361 = !DILocation(line: 0, scope: !2316)
!2362 = !DILocation(line: 666, column: 5, scope: !2316)
!2363 = !DILocation(line: 0, scope: !2319)
!2364 = !DILocation(line: 666, column: 5, scope: !2319)
!2365 = !DILocation(line: 0, scope: !2322)
!2366 = !DILocation(line: 666, column: 5, scope: !2322)
!2367 = !DILocation(line: 0, scope: !2325)
!2368 = !DILocation(line: 666, column: 5, scope: !2325)
!2369 = !DILocation(line: 0, scope: !2328)
!2370 = !DILocation(line: 666, column: 5, scope: !2328)
!2371 = !DILocation(line: 0, scope: !2331)
!2372 = !DILocation(line: 666, column: 5, scope: !2331)
!2373 = !DILocation(line: 0, scope: !2334)
!2374 = !DILocation(line: 666, column: 5, scope: !2334)
!2375 = !DILocation(line: 0, scope: !2337)
!2376 = !DILocation(line: 666, column: 5, scope: !2337)
!2377 = !DILocation(line: 0, scope: !2340)
!2378 = !DILocation(line: 666, column: 5, scope: !2340)
!2379 = !DILocation(line: 0, scope: !2343)
!2380 = !DILocation(line: 666, column: 5, scope: !2343)
!2381 = !DILocation(line: 0, scope: !2346)
!2382 = !DILocation(line: 666, column: 5, scope: !2346)
!2383 = !DILocation(line: 0, scope: !2349)
!2384 = !DILocation(line: 666, column: 5, scope: !2349)
!2385 = !DILocation(line: 0, scope: !2352)
!2386 = !DILocation(line: 666, column: 5, scope: !2352)
!2387 = !DILocation(line: 667, column: 5, scope: !2299)
!2388 = !DILocation(line: 668, column: 13, scope: !2299)
!2389 = !DILocation(line: 668, column: 12, scope: !2299)
!2390 = !DILocation(line: 668, column: 5, scope: !2299)
!2391 = distinct !DISubprogram(name: "zigzag_scan_8x8_frame", scope: !49, file: !49, line: 581, type: !1815, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2392)
!2392 = !{!2393, !2394}
!2393 = !DILocalVariable(name: "level", arg: 1, scope: !2391, file: !49, line: 581, type: !93)
!2394 = !DILocalVariable(name: "dct", arg: 2, scope: !2391, file: !49, line: 581, type: !93)
!2395 = !DILocation(line: 0, scope: !2391)
!2396 = !DILocation(line: 583, column: 5, scope: !2391)
!2397 = !DILocation(line: 584, column: 1, scope: !2391)
!2398 = distinct !DISubprogram(name: "zigzag_scan_4x4_frame", scope: !49, file: !49, line: 595, type: !1815, scopeLine: 596, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2399 = !{!2400, !2401}
!2400 = !DILocalVariable(name: "level", arg: 1, scope: !2398, file: !49, line: 595, type: !93)
!2401 = !DILocalVariable(name: "dct", arg: 2, scope: !2398, file: !49, line: 595, type: !93)
!2402 = !DILocation(line: 0, scope: !2398)
!2403 = !DILocation(line: 597, column: 5, scope: !2398)
!2404 = !DILocation(line: 598, column: 1, scope: !2398)
!2405 = distinct !DISubprogram(name: "zigzag_sub_8x8_frame", scope: !49, file: !49, line: 671, type: !1820, scopeLine: 672, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2406)
!2406 = !{!2407, !2408, !2409, !2410, !2411, !2413, !2414, !2416, !2417, !2419, !2420, !2422, !2423, !2425, !2426, !2428, !2429, !2431, !2432, !2434, !2435, !2437, !2438, !2440, !2441, !2443, !2444, !2446, !2447, !2449, !2450, !2452, !2453, !2455, !2456, !2458, !2459, !2461, !2462, !2464, !2465, !2467, !2468, !2470, !2471, !2473, !2474, !2476, !2477, !2479, !2480, !2482, !2483, !2485, !2486, !2488, !2489, !2491, !2492, !2494, !2495, !2497, !2498, !2500, !2501, !2503, !2504, !2506, !2507, !2509, !2510, !2512, !2513, !2515, !2516, !2518, !2519, !2521, !2522, !2524, !2525, !2527, !2528, !2530, !2531, !2533, !2534, !2536, !2537, !2539, !2540, !2542, !2543, !2545, !2546, !2548, !2549, !2551, !2552, !2554, !2555, !2557, !2558, !2560, !2561, !2563, !2564, !2566, !2567, !2569, !2570, !2572, !2573, !2575, !2576, !2578, !2579, !2581, !2582, !2584, !2585, !2587, !2588, !2590, !2591, !2593, !2594, !2596, !2597, !2599, !2600, !2602}
!2407 = !DILocalVariable(name: "level", arg: 1, scope: !2405, file: !49, line: 671, type: !93)
!2408 = !DILocalVariable(name: "p_src", arg: 2, scope: !2405, file: !49, line: 671, type: !1822)
!2409 = !DILocalVariable(name: "p_dst", arg: 3, scope: !2405, file: !49, line: 671, type: !98)
!2410 = !DILocalVariable(name: "nz", scope: !2405, file: !49, line: 673, type: !51)
!2411 = !DILocalVariable(name: "oe", scope: !2412, file: !49, line: 674, type: !51)
!2412 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2413 = !DILocalVariable(name: "od", scope: !2412, file: !49, line: 674, type: !51)
!2414 = !DILocalVariable(name: "oe", scope: !2415, file: !49, line: 674, type: !51)
!2415 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2416 = !DILocalVariable(name: "od", scope: !2415, file: !49, line: 674, type: !51)
!2417 = !DILocalVariable(name: "oe", scope: !2418, file: !49, line: 674, type: !51)
!2418 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2419 = !DILocalVariable(name: "od", scope: !2418, file: !49, line: 674, type: !51)
!2420 = !DILocalVariable(name: "oe", scope: !2421, file: !49, line: 674, type: !51)
!2421 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2422 = !DILocalVariable(name: "od", scope: !2421, file: !49, line: 674, type: !51)
!2423 = !DILocalVariable(name: "oe", scope: !2424, file: !49, line: 674, type: !51)
!2424 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2425 = !DILocalVariable(name: "od", scope: !2424, file: !49, line: 674, type: !51)
!2426 = !DILocalVariable(name: "oe", scope: !2427, file: !49, line: 674, type: !51)
!2427 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2428 = !DILocalVariable(name: "od", scope: !2427, file: !49, line: 674, type: !51)
!2429 = !DILocalVariable(name: "oe", scope: !2430, file: !49, line: 674, type: !51)
!2430 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2431 = !DILocalVariable(name: "od", scope: !2430, file: !49, line: 674, type: !51)
!2432 = !DILocalVariable(name: "oe", scope: !2433, file: !49, line: 674, type: !51)
!2433 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2434 = !DILocalVariable(name: "od", scope: !2433, file: !49, line: 674, type: !51)
!2435 = !DILocalVariable(name: "oe", scope: !2436, file: !49, line: 674, type: !51)
!2436 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2437 = !DILocalVariable(name: "od", scope: !2436, file: !49, line: 674, type: !51)
!2438 = !DILocalVariable(name: "oe", scope: !2439, file: !49, line: 674, type: !51)
!2439 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2440 = !DILocalVariable(name: "od", scope: !2439, file: !49, line: 674, type: !51)
!2441 = !DILocalVariable(name: "oe", scope: !2442, file: !49, line: 674, type: !51)
!2442 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2443 = !DILocalVariable(name: "od", scope: !2442, file: !49, line: 674, type: !51)
!2444 = !DILocalVariable(name: "oe", scope: !2445, file: !49, line: 674, type: !51)
!2445 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2446 = !DILocalVariable(name: "od", scope: !2445, file: !49, line: 674, type: !51)
!2447 = !DILocalVariable(name: "oe", scope: !2448, file: !49, line: 674, type: !51)
!2448 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2449 = !DILocalVariable(name: "od", scope: !2448, file: !49, line: 674, type: !51)
!2450 = !DILocalVariable(name: "oe", scope: !2451, file: !49, line: 674, type: !51)
!2451 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2452 = !DILocalVariable(name: "od", scope: !2451, file: !49, line: 674, type: !51)
!2453 = !DILocalVariable(name: "oe", scope: !2454, file: !49, line: 674, type: !51)
!2454 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2455 = !DILocalVariable(name: "od", scope: !2454, file: !49, line: 674, type: !51)
!2456 = !DILocalVariable(name: "oe", scope: !2457, file: !49, line: 674, type: !51)
!2457 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2458 = !DILocalVariable(name: "od", scope: !2457, file: !49, line: 674, type: !51)
!2459 = !DILocalVariable(name: "oe", scope: !2460, file: !49, line: 674, type: !51)
!2460 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2461 = !DILocalVariable(name: "od", scope: !2460, file: !49, line: 674, type: !51)
!2462 = !DILocalVariable(name: "oe", scope: !2463, file: !49, line: 674, type: !51)
!2463 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2464 = !DILocalVariable(name: "od", scope: !2463, file: !49, line: 674, type: !51)
!2465 = !DILocalVariable(name: "oe", scope: !2466, file: !49, line: 674, type: !51)
!2466 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2467 = !DILocalVariable(name: "od", scope: !2466, file: !49, line: 674, type: !51)
!2468 = !DILocalVariable(name: "oe", scope: !2469, file: !49, line: 674, type: !51)
!2469 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2470 = !DILocalVariable(name: "od", scope: !2469, file: !49, line: 674, type: !51)
!2471 = !DILocalVariable(name: "oe", scope: !2472, file: !49, line: 674, type: !51)
!2472 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2473 = !DILocalVariable(name: "od", scope: !2472, file: !49, line: 674, type: !51)
!2474 = !DILocalVariable(name: "oe", scope: !2475, file: !49, line: 674, type: !51)
!2475 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2476 = !DILocalVariable(name: "od", scope: !2475, file: !49, line: 674, type: !51)
!2477 = !DILocalVariable(name: "oe", scope: !2478, file: !49, line: 674, type: !51)
!2478 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2479 = !DILocalVariable(name: "od", scope: !2478, file: !49, line: 674, type: !51)
!2480 = !DILocalVariable(name: "oe", scope: !2481, file: !49, line: 674, type: !51)
!2481 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2482 = !DILocalVariable(name: "od", scope: !2481, file: !49, line: 674, type: !51)
!2483 = !DILocalVariable(name: "oe", scope: !2484, file: !49, line: 674, type: !51)
!2484 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2485 = !DILocalVariable(name: "od", scope: !2484, file: !49, line: 674, type: !51)
!2486 = !DILocalVariable(name: "oe", scope: !2487, file: !49, line: 674, type: !51)
!2487 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2488 = !DILocalVariable(name: "od", scope: !2487, file: !49, line: 674, type: !51)
!2489 = !DILocalVariable(name: "oe", scope: !2490, file: !49, line: 674, type: !51)
!2490 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2491 = !DILocalVariable(name: "od", scope: !2490, file: !49, line: 674, type: !51)
!2492 = !DILocalVariable(name: "oe", scope: !2493, file: !49, line: 674, type: !51)
!2493 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2494 = !DILocalVariable(name: "od", scope: !2493, file: !49, line: 674, type: !51)
!2495 = !DILocalVariable(name: "oe", scope: !2496, file: !49, line: 674, type: !51)
!2496 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2497 = !DILocalVariable(name: "od", scope: !2496, file: !49, line: 674, type: !51)
!2498 = !DILocalVariable(name: "oe", scope: !2499, file: !49, line: 674, type: !51)
!2499 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2500 = !DILocalVariable(name: "od", scope: !2499, file: !49, line: 674, type: !51)
!2501 = !DILocalVariable(name: "oe", scope: !2502, file: !49, line: 674, type: !51)
!2502 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2503 = !DILocalVariable(name: "od", scope: !2502, file: !49, line: 674, type: !51)
!2504 = !DILocalVariable(name: "oe", scope: !2505, file: !49, line: 674, type: !51)
!2505 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2506 = !DILocalVariable(name: "od", scope: !2505, file: !49, line: 674, type: !51)
!2507 = !DILocalVariable(name: "oe", scope: !2508, file: !49, line: 674, type: !51)
!2508 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2509 = !DILocalVariable(name: "od", scope: !2508, file: !49, line: 674, type: !51)
!2510 = !DILocalVariable(name: "oe", scope: !2511, file: !49, line: 674, type: !51)
!2511 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2512 = !DILocalVariable(name: "od", scope: !2511, file: !49, line: 674, type: !51)
!2513 = !DILocalVariable(name: "oe", scope: !2514, file: !49, line: 674, type: !51)
!2514 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2515 = !DILocalVariable(name: "od", scope: !2514, file: !49, line: 674, type: !51)
!2516 = !DILocalVariable(name: "oe", scope: !2517, file: !49, line: 674, type: !51)
!2517 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2518 = !DILocalVariable(name: "od", scope: !2517, file: !49, line: 674, type: !51)
!2519 = !DILocalVariable(name: "oe", scope: !2520, file: !49, line: 674, type: !51)
!2520 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2521 = !DILocalVariable(name: "od", scope: !2520, file: !49, line: 674, type: !51)
!2522 = !DILocalVariable(name: "oe", scope: !2523, file: !49, line: 674, type: !51)
!2523 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2524 = !DILocalVariable(name: "od", scope: !2523, file: !49, line: 674, type: !51)
!2525 = !DILocalVariable(name: "oe", scope: !2526, file: !49, line: 674, type: !51)
!2526 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2527 = !DILocalVariable(name: "od", scope: !2526, file: !49, line: 674, type: !51)
!2528 = !DILocalVariable(name: "oe", scope: !2529, file: !49, line: 674, type: !51)
!2529 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2530 = !DILocalVariable(name: "od", scope: !2529, file: !49, line: 674, type: !51)
!2531 = !DILocalVariable(name: "oe", scope: !2532, file: !49, line: 674, type: !51)
!2532 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2533 = !DILocalVariable(name: "od", scope: !2532, file: !49, line: 674, type: !51)
!2534 = !DILocalVariable(name: "oe", scope: !2535, file: !49, line: 674, type: !51)
!2535 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2536 = !DILocalVariable(name: "od", scope: !2535, file: !49, line: 674, type: !51)
!2537 = !DILocalVariable(name: "oe", scope: !2538, file: !49, line: 674, type: !51)
!2538 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2539 = !DILocalVariable(name: "od", scope: !2538, file: !49, line: 674, type: !51)
!2540 = !DILocalVariable(name: "oe", scope: !2541, file: !49, line: 674, type: !51)
!2541 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2542 = !DILocalVariable(name: "od", scope: !2541, file: !49, line: 674, type: !51)
!2543 = !DILocalVariable(name: "oe", scope: !2544, file: !49, line: 674, type: !51)
!2544 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2545 = !DILocalVariable(name: "od", scope: !2544, file: !49, line: 674, type: !51)
!2546 = !DILocalVariable(name: "oe", scope: !2547, file: !49, line: 674, type: !51)
!2547 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2548 = !DILocalVariable(name: "od", scope: !2547, file: !49, line: 674, type: !51)
!2549 = !DILocalVariable(name: "oe", scope: !2550, file: !49, line: 674, type: !51)
!2550 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2551 = !DILocalVariable(name: "od", scope: !2550, file: !49, line: 674, type: !51)
!2552 = !DILocalVariable(name: "oe", scope: !2553, file: !49, line: 674, type: !51)
!2553 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2554 = !DILocalVariable(name: "od", scope: !2553, file: !49, line: 674, type: !51)
!2555 = !DILocalVariable(name: "oe", scope: !2556, file: !49, line: 674, type: !51)
!2556 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2557 = !DILocalVariable(name: "od", scope: !2556, file: !49, line: 674, type: !51)
!2558 = !DILocalVariable(name: "oe", scope: !2559, file: !49, line: 674, type: !51)
!2559 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2560 = !DILocalVariable(name: "od", scope: !2559, file: !49, line: 674, type: !51)
!2561 = !DILocalVariable(name: "oe", scope: !2562, file: !49, line: 674, type: !51)
!2562 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2563 = !DILocalVariable(name: "od", scope: !2562, file: !49, line: 674, type: !51)
!2564 = !DILocalVariable(name: "oe", scope: !2565, file: !49, line: 674, type: !51)
!2565 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2566 = !DILocalVariable(name: "od", scope: !2565, file: !49, line: 674, type: !51)
!2567 = !DILocalVariable(name: "oe", scope: !2568, file: !49, line: 674, type: !51)
!2568 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2569 = !DILocalVariable(name: "od", scope: !2568, file: !49, line: 674, type: !51)
!2570 = !DILocalVariable(name: "oe", scope: !2571, file: !49, line: 674, type: !51)
!2571 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2572 = !DILocalVariable(name: "od", scope: !2571, file: !49, line: 674, type: !51)
!2573 = !DILocalVariable(name: "oe", scope: !2574, file: !49, line: 674, type: !51)
!2574 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2575 = !DILocalVariable(name: "od", scope: !2574, file: !49, line: 674, type: !51)
!2576 = !DILocalVariable(name: "oe", scope: !2577, file: !49, line: 674, type: !51)
!2577 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2578 = !DILocalVariable(name: "od", scope: !2577, file: !49, line: 674, type: !51)
!2579 = !DILocalVariable(name: "oe", scope: !2580, file: !49, line: 674, type: !51)
!2580 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2581 = !DILocalVariable(name: "od", scope: !2580, file: !49, line: 674, type: !51)
!2582 = !DILocalVariable(name: "oe", scope: !2583, file: !49, line: 674, type: !51)
!2583 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2584 = !DILocalVariable(name: "od", scope: !2583, file: !49, line: 674, type: !51)
!2585 = !DILocalVariable(name: "oe", scope: !2586, file: !49, line: 674, type: !51)
!2586 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2587 = !DILocalVariable(name: "od", scope: !2586, file: !49, line: 674, type: !51)
!2588 = !DILocalVariable(name: "oe", scope: !2589, file: !49, line: 674, type: !51)
!2589 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2590 = !DILocalVariable(name: "od", scope: !2589, file: !49, line: 674, type: !51)
!2591 = !DILocalVariable(name: "oe", scope: !2592, file: !49, line: 674, type: !51)
!2592 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2593 = !DILocalVariable(name: "od", scope: !2592, file: !49, line: 674, type: !51)
!2594 = !DILocalVariable(name: "oe", scope: !2595, file: !49, line: 674, type: !51)
!2595 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2596 = !DILocalVariable(name: "od", scope: !2595, file: !49, line: 674, type: !51)
!2597 = !DILocalVariable(name: "oe", scope: !2598, file: !49, line: 674, type: !51)
!2598 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2599 = !DILocalVariable(name: "od", scope: !2598, file: !49, line: 674, type: !51)
!2600 = !DILocalVariable(name: "oe", scope: !2601, file: !49, line: 674, type: !51)
!2601 = distinct !DILexicalBlock(scope: !2405, file: !49, line: 674, column: 5)
!2602 = !DILocalVariable(name: "od", scope: !2601, file: !49, line: 674, type: !51)
!2603 = !DILocation(line: 0, scope: !2405)
!2604 = !DILocation(line: 0, scope: !2412)
!2605 = !DILocation(line: 674, column: 5, scope: !2412)
!2606 = !DILocation(line: 0, scope: !2415)
!2607 = !DILocation(line: 674, column: 5, scope: !2415)
!2608 = !DILocation(line: 0, scope: !2418)
!2609 = !DILocation(line: 674, column: 5, scope: !2418)
!2610 = !DILocation(line: 0, scope: !2421)
!2611 = !DILocation(line: 674, column: 5, scope: !2421)
!2612 = !DILocation(line: 0, scope: !2424)
!2613 = !DILocation(line: 674, column: 5, scope: !2424)
!2614 = !DILocation(line: 0, scope: !2427)
!2615 = !DILocation(line: 674, column: 5, scope: !2427)
!2616 = !DILocation(line: 0, scope: !2430)
!2617 = !DILocation(line: 674, column: 5, scope: !2430)
!2618 = !DILocation(line: 0, scope: !2433)
!2619 = !DILocation(line: 674, column: 5, scope: !2433)
!2620 = !DILocation(line: 0, scope: !2436)
!2621 = !DILocation(line: 674, column: 5, scope: !2436)
!2622 = !DILocation(line: 0, scope: !2439)
!2623 = !DILocation(line: 674, column: 5, scope: !2439)
!2624 = !DILocation(line: 0, scope: !2442)
!2625 = !DILocation(line: 674, column: 5, scope: !2442)
!2626 = !DILocation(line: 0, scope: !2445)
!2627 = !DILocation(line: 674, column: 5, scope: !2445)
!2628 = !DILocation(line: 0, scope: !2448)
!2629 = !DILocation(line: 674, column: 5, scope: !2448)
!2630 = !DILocation(line: 0, scope: !2451)
!2631 = !DILocation(line: 674, column: 5, scope: !2451)
!2632 = !DILocation(line: 0, scope: !2454)
!2633 = !DILocation(line: 674, column: 5, scope: !2454)
!2634 = !DILocation(line: 0, scope: !2457)
!2635 = !DILocation(line: 674, column: 5, scope: !2457)
!2636 = !DILocation(line: 0, scope: !2460)
!2637 = !DILocation(line: 674, column: 5, scope: !2460)
!2638 = !DILocation(line: 0, scope: !2463)
!2639 = !DILocation(line: 674, column: 5, scope: !2463)
!2640 = !DILocation(line: 0, scope: !2466)
!2641 = !DILocation(line: 674, column: 5, scope: !2466)
!2642 = !DILocation(line: 0, scope: !2469)
!2643 = !DILocation(line: 674, column: 5, scope: !2469)
!2644 = !DILocation(line: 0, scope: !2472)
!2645 = !DILocation(line: 674, column: 5, scope: !2472)
!2646 = !DILocation(line: 0, scope: !2475)
!2647 = !DILocation(line: 674, column: 5, scope: !2475)
!2648 = !DILocation(line: 0, scope: !2478)
!2649 = !DILocation(line: 674, column: 5, scope: !2478)
!2650 = !DILocation(line: 0, scope: !2481)
!2651 = !DILocation(line: 674, column: 5, scope: !2481)
!2652 = !DILocation(line: 0, scope: !2484)
!2653 = !DILocation(line: 674, column: 5, scope: !2484)
!2654 = !DILocation(line: 0, scope: !2487)
!2655 = !DILocation(line: 674, column: 5, scope: !2487)
!2656 = !DILocation(line: 0, scope: !2490)
!2657 = !DILocation(line: 674, column: 5, scope: !2490)
!2658 = !DILocation(line: 0, scope: !2493)
!2659 = !DILocation(line: 674, column: 5, scope: !2493)
!2660 = !DILocation(line: 0, scope: !2496)
!2661 = !DILocation(line: 674, column: 5, scope: !2496)
!2662 = !DILocation(line: 0, scope: !2499)
!2663 = !DILocation(line: 674, column: 5, scope: !2499)
!2664 = !DILocation(line: 0, scope: !2502)
!2665 = !DILocation(line: 674, column: 5, scope: !2502)
!2666 = !DILocation(line: 0, scope: !2505)
!2667 = !DILocation(line: 674, column: 5, scope: !2505)
!2668 = !DILocation(line: 0, scope: !2508)
!2669 = !DILocation(line: 674, column: 5, scope: !2508)
!2670 = !DILocation(line: 0, scope: !2511)
!2671 = !DILocation(line: 674, column: 5, scope: !2511)
!2672 = !DILocation(line: 0, scope: !2514)
!2673 = !DILocation(line: 674, column: 5, scope: !2514)
!2674 = !DILocation(line: 0, scope: !2517)
!2675 = !DILocation(line: 674, column: 5, scope: !2517)
!2676 = !DILocation(line: 0, scope: !2520)
!2677 = !DILocation(line: 674, column: 5, scope: !2520)
!2678 = !DILocation(line: 0, scope: !2523)
!2679 = !DILocation(line: 674, column: 5, scope: !2523)
!2680 = !DILocation(line: 0, scope: !2526)
!2681 = !DILocation(line: 674, column: 5, scope: !2526)
!2682 = !DILocation(line: 0, scope: !2529)
!2683 = !DILocation(line: 674, column: 5, scope: !2529)
!2684 = !DILocation(line: 0, scope: !2532)
!2685 = !DILocation(line: 674, column: 5, scope: !2532)
!2686 = !DILocation(line: 0, scope: !2535)
!2687 = !DILocation(line: 674, column: 5, scope: !2535)
!2688 = !DILocation(line: 0, scope: !2538)
!2689 = !DILocation(line: 674, column: 5, scope: !2538)
!2690 = !DILocation(line: 0, scope: !2541)
!2691 = !DILocation(line: 674, column: 5, scope: !2541)
!2692 = !DILocation(line: 0, scope: !2544)
!2693 = !DILocation(line: 674, column: 5, scope: !2544)
!2694 = !DILocation(line: 0, scope: !2547)
!2695 = !DILocation(line: 674, column: 5, scope: !2547)
!2696 = !DILocation(line: 0, scope: !2550)
!2697 = !DILocation(line: 674, column: 5, scope: !2550)
!2698 = !DILocation(line: 0, scope: !2553)
!2699 = !DILocation(line: 674, column: 5, scope: !2553)
!2700 = !DILocation(line: 0, scope: !2556)
!2701 = !DILocation(line: 674, column: 5, scope: !2556)
!2702 = !DILocation(line: 0, scope: !2559)
!2703 = !DILocation(line: 674, column: 5, scope: !2559)
!2704 = !DILocation(line: 0, scope: !2562)
!2705 = !DILocation(line: 674, column: 5, scope: !2562)
!2706 = !DILocation(line: 0, scope: !2565)
!2707 = !DILocation(line: 674, column: 5, scope: !2565)
!2708 = !DILocation(line: 0, scope: !2568)
!2709 = !DILocation(line: 674, column: 5, scope: !2568)
!2710 = !DILocation(line: 0, scope: !2571)
!2711 = !DILocation(line: 674, column: 5, scope: !2571)
!2712 = !DILocation(line: 0, scope: !2574)
!2713 = !DILocation(line: 674, column: 5, scope: !2574)
!2714 = !DILocation(line: 0, scope: !2577)
!2715 = !DILocation(line: 674, column: 5, scope: !2577)
!2716 = !DILocation(line: 0, scope: !2580)
!2717 = !DILocation(line: 674, column: 5, scope: !2580)
!2718 = !DILocation(line: 0, scope: !2583)
!2719 = !DILocation(line: 674, column: 5, scope: !2583)
!2720 = !DILocation(line: 0, scope: !2586)
!2721 = !DILocation(line: 674, column: 5, scope: !2586)
!2722 = !DILocation(line: 0, scope: !2589)
!2723 = !DILocation(line: 674, column: 5, scope: !2589)
!2724 = !DILocation(line: 0, scope: !2592)
!2725 = !DILocation(line: 674, column: 5, scope: !2592)
!2726 = !DILocation(line: 0, scope: !2595)
!2727 = !DILocation(line: 674, column: 5, scope: !2595)
!2728 = !DILocation(line: 0, scope: !2598)
!2729 = !DILocation(line: 674, column: 5, scope: !2598)
!2730 = !DILocation(line: 0, scope: !2601)
!2731 = !DILocation(line: 674, column: 5, scope: !2601)
!2732 = !DILocation(line: 675, column: 5, scope: !2405)
!2733 = !DILocation(line: 676, column: 13, scope: !2405)
!2734 = !DILocation(line: 676, column: 12, scope: !2405)
!2735 = !DILocation(line: 676, column: 5, scope: !2405)
!2736 = distinct !DISubprogram(name: "zigzag_sub_4x4_frame", scope: !49, file: !49, line: 631, type: !1820, scopeLine: 632, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2737)
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2744, !2745, !2747, !2748, !2750, !2751, !2753, !2754, !2756, !2757, !2759, !2760, !2762, !2763, !2765, !2766, !2768, !2769, !2771, !2772, !2774, !2775, !2777, !2778, !2780, !2781, !2783, !2784, !2786, !2787, !2789}
!2738 = !DILocalVariable(name: "level", arg: 1, scope: !2736, file: !49, line: 631, type: !93)
!2739 = !DILocalVariable(name: "p_src", arg: 2, scope: !2736, file: !49, line: 631, type: !1822)
!2740 = !DILocalVariable(name: "p_dst", arg: 3, scope: !2736, file: !49, line: 631, type: !98)
!2741 = !DILocalVariable(name: "nz", scope: !2736, file: !49, line: 633, type: !51)
!2742 = !DILocalVariable(name: "oe", scope: !2743, file: !49, line: 634, type: !51)
!2743 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2744 = !DILocalVariable(name: "od", scope: !2743, file: !49, line: 634, type: !51)
!2745 = !DILocalVariable(name: "oe", scope: !2746, file: !49, line: 634, type: !51)
!2746 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2747 = !DILocalVariable(name: "od", scope: !2746, file: !49, line: 634, type: !51)
!2748 = !DILocalVariable(name: "oe", scope: !2749, file: !49, line: 634, type: !51)
!2749 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2750 = !DILocalVariable(name: "od", scope: !2749, file: !49, line: 634, type: !51)
!2751 = !DILocalVariable(name: "oe", scope: !2752, file: !49, line: 634, type: !51)
!2752 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2753 = !DILocalVariable(name: "od", scope: !2752, file: !49, line: 634, type: !51)
!2754 = !DILocalVariable(name: "oe", scope: !2755, file: !49, line: 634, type: !51)
!2755 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2756 = !DILocalVariable(name: "od", scope: !2755, file: !49, line: 634, type: !51)
!2757 = !DILocalVariable(name: "oe", scope: !2758, file: !49, line: 634, type: !51)
!2758 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2759 = !DILocalVariable(name: "od", scope: !2758, file: !49, line: 634, type: !51)
!2760 = !DILocalVariable(name: "oe", scope: !2761, file: !49, line: 634, type: !51)
!2761 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2762 = !DILocalVariable(name: "od", scope: !2761, file: !49, line: 634, type: !51)
!2763 = !DILocalVariable(name: "oe", scope: !2764, file: !49, line: 634, type: !51)
!2764 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2765 = !DILocalVariable(name: "od", scope: !2764, file: !49, line: 634, type: !51)
!2766 = !DILocalVariable(name: "oe", scope: !2767, file: !49, line: 634, type: !51)
!2767 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2768 = !DILocalVariable(name: "od", scope: !2767, file: !49, line: 634, type: !51)
!2769 = !DILocalVariable(name: "oe", scope: !2770, file: !49, line: 634, type: !51)
!2770 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2771 = !DILocalVariable(name: "od", scope: !2770, file: !49, line: 634, type: !51)
!2772 = !DILocalVariable(name: "oe", scope: !2773, file: !49, line: 634, type: !51)
!2773 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2774 = !DILocalVariable(name: "od", scope: !2773, file: !49, line: 634, type: !51)
!2775 = !DILocalVariable(name: "oe", scope: !2776, file: !49, line: 634, type: !51)
!2776 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2777 = !DILocalVariable(name: "od", scope: !2776, file: !49, line: 634, type: !51)
!2778 = !DILocalVariable(name: "oe", scope: !2779, file: !49, line: 634, type: !51)
!2779 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2780 = !DILocalVariable(name: "od", scope: !2779, file: !49, line: 634, type: !51)
!2781 = !DILocalVariable(name: "oe", scope: !2782, file: !49, line: 634, type: !51)
!2782 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2783 = !DILocalVariable(name: "od", scope: !2782, file: !49, line: 634, type: !51)
!2784 = !DILocalVariable(name: "oe", scope: !2785, file: !49, line: 634, type: !51)
!2785 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2786 = !DILocalVariable(name: "od", scope: !2785, file: !49, line: 634, type: !51)
!2787 = !DILocalVariable(name: "oe", scope: !2788, file: !49, line: 634, type: !51)
!2788 = distinct !DILexicalBlock(scope: !2736, file: !49, line: 634, column: 5)
!2789 = !DILocalVariable(name: "od", scope: !2788, file: !49, line: 634, type: !51)
!2790 = !DILocation(line: 0, scope: !2736)
!2791 = !DILocation(line: 0, scope: !2743)
!2792 = !DILocation(line: 634, column: 5, scope: !2743)
!2793 = !DILocation(line: 0, scope: !2746)
!2794 = !DILocation(line: 634, column: 5, scope: !2746)
!2795 = !DILocation(line: 0, scope: !2749)
!2796 = !DILocation(line: 634, column: 5, scope: !2749)
!2797 = !DILocation(line: 0, scope: !2752)
!2798 = !DILocation(line: 634, column: 5, scope: !2752)
!2799 = !DILocation(line: 0, scope: !2755)
!2800 = !DILocation(line: 634, column: 5, scope: !2755)
!2801 = !DILocation(line: 0, scope: !2758)
!2802 = !DILocation(line: 634, column: 5, scope: !2758)
!2803 = !DILocation(line: 0, scope: !2761)
!2804 = !DILocation(line: 634, column: 5, scope: !2761)
!2805 = !DILocation(line: 0, scope: !2764)
!2806 = !DILocation(line: 634, column: 5, scope: !2764)
!2807 = !DILocation(line: 0, scope: !2767)
!2808 = !DILocation(line: 634, column: 5, scope: !2767)
!2809 = !DILocation(line: 0, scope: !2770)
!2810 = !DILocation(line: 634, column: 5, scope: !2770)
!2811 = !DILocation(line: 0, scope: !2773)
!2812 = !DILocation(line: 634, column: 5, scope: !2773)
!2813 = !DILocation(line: 0, scope: !2776)
!2814 = !DILocation(line: 634, column: 5, scope: !2776)
!2815 = !DILocation(line: 0, scope: !2779)
!2816 = !DILocation(line: 634, column: 5, scope: !2779)
!2817 = !DILocation(line: 0, scope: !2782)
!2818 = !DILocation(line: 634, column: 5, scope: !2782)
!2819 = !DILocation(line: 0, scope: !2785)
!2820 = !DILocation(line: 634, column: 5, scope: !2785)
!2821 = !DILocation(line: 0, scope: !2788)
!2822 = !DILocation(line: 634, column: 5, scope: !2788)
!2823 = !DILocation(line: 635, column: 5, scope: !2736)
!2824 = !DILocation(line: 636, column: 13, scope: !2736)
!2825 = !DILocation(line: 636, column: 12, scope: !2736)
!2826 = !DILocation(line: 636, column: 5, scope: !2736)
!2827 = distinct !DISubprogram(name: "zigzag_sub_4x4ac_frame", scope: !49, file: !49, line: 655, type: !1826, scopeLine: 656, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2836, !2837, !2839, !2840, !2842, !2843, !2845, !2846, !2848, !2849, !2851, !2852, !2854, !2855, !2857, !2858, !2860, !2861, !2863, !2864, !2866, !2867, !2869, !2870, !2872, !2873, !2875, !2876, !2878, !2879, !2881}
!2829 = !DILocalVariable(name: "level", arg: 1, scope: !2827, file: !49, line: 655, type: !93)
!2830 = !DILocalVariable(name: "p_src", arg: 2, scope: !2827, file: !49, line: 655, type: !1822)
!2831 = !DILocalVariable(name: "p_dst", arg: 3, scope: !2827, file: !49, line: 655, type: !98)
!2832 = !DILocalVariable(name: "dc", arg: 4, scope: !2827, file: !49, line: 655, type: !93)
!2833 = !DILocalVariable(name: "nz", scope: !2827, file: !49, line: 657, type: !51)
!2834 = !DILocalVariable(name: "oe", scope: !2835, file: !49, line: 658, type: !51)
!2835 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2836 = !DILocalVariable(name: "od", scope: !2835, file: !49, line: 658, type: !51)
!2837 = !DILocalVariable(name: "oe", scope: !2838, file: !49, line: 658, type: !51)
!2838 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2839 = !DILocalVariable(name: "od", scope: !2838, file: !49, line: 658, type: !51)
!2840 = !DILocalVariable(name: "oe", scope: !2841, file: !49, line: 658, type: !51)
!2841 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2842 = !DILocalVariable(name: "od", scope: !2841, file: !49, line: 658, type: !51)
!2843 = !DILocalVariable(name: "oe", scope: !2844, file: !49, line: 658, type: !51)
!2844 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2845 = !DILocalVariable(name: "od", scope: !2844, file: !49, line: 658, type: !51)
!2846 = !DILocalVariable(name: "oe", scope: !2847, file: !49, line: 658, type: !51)
!2847 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2848 = !DILocalVariable(name: "od", scope: !2847, file: !49, line: 658, type: !51)
!2849 = !DILocalVariable(name: "oe", scope: !2850, file: !49, line: 658, type: !51)
!2850 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2851 = !DILocalVariable(name: "od", scope: !2850, file: !49, line: 658, type: !51)
!2852 = !DILocalVariable(name: "oe", scope: !2853, file: !49, line: 658, type: !51)
!2853 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2854 = !DILocalVariable(name: "od", scope: !2853, file: !49, line: 658, type: !51)
!2855 = !DILocalVariable(name: "oe", scope: !2856, file: !49, line: 658, type: !51)
!2856 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2857 = !DILocalVariable(name: "od", scope: !2856, file: !49, line: 658, type: !51)
!2858 = !DILocalVariable(name: "oe", scope: !2859, file: !49, line: 658, type: !51)
!2859 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2860 = !DILocalVariable(name: "od", scope: !2859, file: !49, line: 658, type: !51)
!2861 = !DILocalVariable(name: "oe", scope: !2862, file: !49, line: 658, type: !51)
!2862 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2863 = !DILocalVariable(name: "od", scope: !2862, file: !49, line: 658, type: !51)
!2864 = !DILocalVariable(name: "oe", scope: !2865, file: !49, line: 658, type: !51)
!2865 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2866 = !DILocalVariable(name: "od", scope: !2865, file: !49, line: 658, type: !51)
!2867 = !DILocalVariable(name: "oe", scope: !2868, file: !49, line: 658, type: !51)
!2868 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2869 = !DILocalVariable(name: "od", scope: !2868, file: !49, line: 658, type: !51)
!2870 = !DILocalVariable(name: "oe", scope: !2871, file: !49, line: 658, type: !51)
!2871 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2872 = !DILocalVariable(name: "od", scope: !2871, file: !49, line: 658, type: !51)
!2873 = !DILocalVariable(name: "oe", scope: !2874, file: !49, line: 658, type: !51)
!2874 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2875 = !DILocalVariable(name: "od", scope: !2874, file: !49, line: 658, type: !51)
!2876 = !DILocalVariable(name: "oe", scope: !2877, file: !49, line: 658, type: !51)
!2877 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2878 = !DILocalVariable(name: "od", scope: !2877, file: !49, line: 658, type: !51)
!2879 = !DILocalVariable(name: "oe", scope: !2880, file: !49, line: 658, type: !51)
!2880 = distinct !DILexicalBlock(scope: !2827, file: !49, line: 658, column: 5)
!2881 = !DILocalVariable(name: "od", scope: !2880, file: !49, line: 658, type: !51)
!2882 = !DILocation(line: 0, scope: !2827)
!2883 = !DILocation(line: 0, scope: !2835)
!2884 = !DILocation(line: 658, column: 5, scope: !2835)
!2885 = !DILocation(line: 0, scope: !2838)
!2886 = !DILocation(line: 658, column: 5, scope: !2838)
!2887 = !DILocation(line: 0, scope: !2841)
!2888 = !DILocation(line: 658, column: 5, scope: !2841)
!2889 = !DILocation(line: 0, scope: !2844)
!2890 = !DILocation(line: 658, column: 5, scope: !2844)
!2891 = !DILocation(line: 0, scope: !2847)
!2892 = !DILocation(line: 658, column: 5, scope: !2847)
!2893 = !DILocation(line: 0, scope: !2850)
!2894 = !DILocation(line: 658, column: 5, scope: !2850)
!2895 = !DILocation(line: 0, scope: !2853)
!2896 = !DILocation(line: 658, column: 5, scope: !2853)
!2897 = !DILocation(line: 0, scope: !2856)
!2898 = !DILocation(line: 658, column: 5, scope: !2856)
!2899 = !DILocation(line: 0, scope: !2859)
!2900 = !DILocation(line: 658, column: 5, scope: !2859)
!2901 = !DILocation(line: 0, scope: !2862)
!2902 = !DILocation(line: 658, column: 5, scope: !2862)
!2903 = !DILocation(line: 0, scope: !2865)
!2904 = !DILocation(line: 658, column: 5, scope: !2865)
!2905 = !DILocation(line: 0, scope: !2868)
!2906 = !DILocation(line: 658, column: 5, scope: !2868)
!2907 = !DILocation(line: 0, scope: !2871)
!2908 = !DILocation(line: 658, column: 5, scope: !2871)
!2909 = !DILocation(line: 0, scope: !2874)
!2910 = !DILocation(line: 658, column: 5, scope: !2874)
!2911 = !DILocation(line: 0, scope: !2877)
!2912 = !DILocation(line: 658, column: 5, scope: !2877)
!2913 = !DILocation(line: 0, scope: !2880)
!2914 = !DILocation(line: 658, column: 5, scope: !2880)
!2915 = !DILocation(line: 659, column: 5, scope: !2827)
!2916 = !DILocation(line: 660, column: 13, scope: !2827)
!2917 = !DILocation(line: 660, column: 12, scope: !2827)
!2918 = !DILocation(line: 660, column: 5, scope: !2827)
!2919 = distinct !DISubprogram(name: "zigzag_interleave_8x8_cavlc", scope: !49, file: !49, line: 689, type: !1830, scopeLine: 690, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2920)
!2920 = !{!2921, !2922, !2923, !2924, !2926, !2929}
!2921 = !DILocalVariable(name: "dst", arg: 1, scope: !2919, file: !49, line: 689, type: !93)
!2922 = !DILocalVariable(name: "src", arg: 2, scope: !2919, file: !49, line: 689, type: !93)
!2923 = !DILocalVariable(name: "nnz", arg: 3, scope: !2919, file: !49, line: 689, type: !98)
!2924 = !DILocalVariable(name: "i", scope: !2925, file: !49, line: 691, type: !51)
!2925 = distinct !DILexicalBlock(scope: !2919, file: !49, line: 691, column: 5)
!2926 = !DILocalVariable(name: "nz", scope: !2927, file: !49, line: 693, type: !51)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !49, line: 692, column: 5)
!2928 = distinct !DILexicalBlock(scope: !2925, file: !49, line: 691, column: 5)
!2929 = !DILocalVariable(name: "j", scope: !2930, file: !49, line: 694, type: !51)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !49, line: 694, column: 9)
!2931 = !DILocation(line: 0, scope: !2919)
!2932 = !DILocation(line: 0, scope: !2925)
!2933 = !DILocation(line: 691, column: 5, scope: !2925)
!2934 = !DILocation(line: 0, scope: !2930)
!2935 = !DILocation(line: 0, scope: !2927)
!2936 = !DILocation(line: 694, column: 9, scope: !2930)
!2937 = !DILocation(line: 701, column: 1, scope: !2919)
!2938 = !DILocation(line: 699, column: 34, scope: !2927)
!2939 = !DILocation(line: 699, column: 33, scope: !2927)
!2940 = !DILocation(line: 699, column: 15, scope: !2927)
!2941 = !DILocation(line: 699, column: 27, scope: !2927)
!2942 = !DILocation(line: 699, column: 19, scope: !2927)
!2943 = !DILocation(line: 699, column: 9, scope: !2927)
!2944 = !DILocation(line: 699, column: 31, scope: !2927)
!2945 = !DILocation(line: 691, column: 29, scope: !2928)
!2946 = !DILocation(line: 691, column: 23, scope: !2928)
!2947 = distinct !{!2947, !2933, !2948, !252, !253}
!2948 = !DILocation(line: 700, column: 5, scope: !2925)
!2949 = !DILocation(line: 696, column: 26, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !49, line: 695, column: 9)
!2951 = distinct !DILexicalBlock(scope: !2930, file: !49, line: 694, column: 9)
!2952 = !DILocation(line: 696, column: 24, scope: !2950)
!2953 = !DILocation(line: 696, column: 19, scope: !2950)
!2954 = !DILocation(line: 696, column: 16, scope: !2950)
!2955 = !DILocation(line: 697, column: 21, scope: !2950)
!2956 = !DILocation(line: 697, column: 13, scope: !2950)
!2957 = !DILocation(line: 697, column: 25, scope: !2950)
!2958 = !DILocation(line: 694, column: 34, scope: !2951)
!2959 = !DILocation(line: 694, column: 27, scope: !2951)
!2960 = distinct !{!2960, !2936, !2961, !252, !253}
!2961 = !DILocation(line: 698, column: 9, scope: !2930)
