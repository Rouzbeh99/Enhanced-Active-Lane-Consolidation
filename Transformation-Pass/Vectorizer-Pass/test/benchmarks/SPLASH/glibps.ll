; ModuleID = 'glibps.c'
source_filename = "glibps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Matrix = type { [4 x [4 x float]] }
%struct.Vertex2 = type { [4 x float] }
%struct.Vertex = type { float, float, float }
%struct.Rgb = type { float, float, float }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@ps_fd = internal unnamed_addr global ptr null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"%%!PS-Adobe-1.0\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%%%%EndComments\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%%%%Pages: 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%%%%EndProlog\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%%%%Page: 1 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"1 setlinecap 1 setlinejoin\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"showpage\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"%%%%Trailer\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"%f setlinewidth\0A\00", align 1
@trans_mtx = internal global %struct.Matrix zeroinitializer, align 4, !dbg !7
@.str.11 = private unnamed_addr constant [22 x i8] c"newpath\0A%f %f moveto\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"%f %f lineto\0Astroke\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"%f %f lineto\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"closepath stroke\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"closepath fill\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"closepath %f setgray fill\0A\00", align 1
@prp = internal global %struct.Vertex2 zeroinitializer, align 4, !dbg !17
@view_rotx = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !25
@view_roty = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !27
@active_prp = internal global %struct.Vertex2 zeroinitializer, align 4, !dbg !31
@clip_front = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !33
@clip_back = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !35
@clip_right = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !37
@clip_left = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !39
@clip_top = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !41
@clip_bottom = internal unnamed_addr global float 0.000000e+00, align 4, !dbg !43

; Function Attrs: nofree noinline nounwind uwtable
define dso_local i64 @ps_open(ptr nocapture noundef readonly %file) local_unnamed_addr #0 !dbg !115 {
entry:
  call void @llvm.dbg.value(metadata ptr %file, metadata !119, metadata !DIExpression()), !dbg !120
  %call = tail call ptr @fopen(ptr noundef %file, ptr noundef nonnull @.str), !dbg !121
  store ptr %call, ptr @ps_fd, align 8, !dbg !123
  %cmp = icmp eq ptr %call, null, !dbg !124
  br i1 %cmp, label %if.then, label %if.end, !dbg !125

if.then:                                          ; preds = %entry
  tail call void @perror(ptr noundef %file) #17, !dbg !126
  br label %return, !dbg !128

if.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %call, ptr noundef nonnull @.str.1), !dbg !129
  %0 = load ptr, ptr @ps_fd, align 8, !dbg !130
  %call2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2), !dbg !131
  %1 = load ptr, ptr @ps_fd, align 8, !dbg !132
  %call3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.3), !dbg !133
  %2 = load ptr, ptr @ps_fd, align 8, !dbg !134
  %call4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.4), !dbg !135
  %3 = load ptr, ptr @ps_fd, align 8, !dbg !136
  %call5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.5), !dbg !137
  %4 = load ptr, ptr @ps_fd, align 8, !dbg !138
  %fputc = tail call i32 @fputc(i32 10, ptr %4), !dbg !139
  %5 = load ptr, ptr @ps_fd, align 8, !dbg !140
  %6 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 27, i64 1, ptr %5), !dbg !141
  tail call fastcc void @init_transformation(), !dbg !142
  tail call fastcc void @setup_transformation(), !dbg !143
  br label %return, !dbg !144

return:                                           ; preds = %if.end, %if.then
  ret i64 0, !dbg !145
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !146 void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind writeonly uwtable
define internal fastcc void @init_transformation() unnamed_addr #3 !dbg !153 {
entry:
  tail call fastcc void @gset_unit_matrix(ptr noundef nonnull @trans_mtx), !dbg !156
  store float 0.000000e+00, ptr @prp, align 4, !dbg !157
  store float 0.000000e+00, ptr getelementptr inbounds (%struct.Vertex2, ptr @prp, i64 0, i32 0, i64 1), align 4, !dbg !158
  store float 1.000000e+04, ptr getelementptr inbounds (%struct.Vertex2, ptr @prp, i64 0, i32 0, i64 2), align 4, !dbg !159
  store float 0.000000e+00, ptr getelementptr inbounds (%struct.Vertex2, ptr @prp, i64 0, i32 0, i64 3), align 4, !dbg !160
  store float 0.000000e+00, ptr @view_roty, align 4, !dbg !161
  store float 0.000000e+00, ptr @view_rotx, align 4, !dbg !162
  store float 1.250000e+03, ptr @clip_right, align 4, !dbg !163
  store float -1.250000e+03, ptr @clip_left, align 4, !dbg !164
  store float 1.000000e+03, ptr @clip_top, align 4, !dbg !165
  store float -1.000000e+03, ptr @clip_bottom, align 4, !dbg !166
  store float 2.000000e+03, ptr @clip_front, align 4, !dbg !167
  store float -4.000000e+03, ptr @clip_back, align 4, !dbg !168
  ret void, !dbg !169
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc void @setup_transformation() unnamed_addr #0 !dbg !170 {
entry:
  %pmat = alloca %struct.Matrix, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pmat) #18, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %pmat, metadata !174, metadata !DIExpression()), !dbg !176
  tail call fastcc void @gset_unit_matrix(ptr noundef nonnull @trans_mtx), !dbg !177
  %0 = load float, ptr @view_rotx, align 4, !dbg !178
  tail call fastcc void @grotate_x_matrix(float noundef %0), !dbg !179
  %1 = load float, ptr @view_roty, align 4, !dbg !180
  tail call fastcc void @grotate_y_matrix(float noundef %1), !dbg !181
  call fastcc void @ginverse_matrix(ptr noundef nonnull %pmat), !dbg !182
  call fastcc void @gtransform(ptr noundef nonnull @active_prp, ptr noundef nonnull @prp, ptr noundef nonnull %pmat), !dbg !183
  call fastcc void @gset_unit_matrix(ptr noundef nonnull %pmat), !dbg !184
  %2 = load float, ptr getelementptr inbounds (%struct.Vertex2, ptr @prp, i64 0, i32 0, i64 2), align 4, !dbg !185
  %div = fdiv float -1.000000e+00, %2, !dbg !186
  %arrayidx1 = getelementptr inbounds [4 x [4 x float]], ptr %pmat, i64 0, i64 2, i64 3, !dbg !187
  store float %div, ptr %arrayidx1, align 4, !dbg !188
  call fastcc void @gconcatenate_matrix(ptr noundef nonnull %pmat), !dbg !189
  %3 = load float, ptr getelementptr inbounds (%struct.Vertex2, ptr @prp, i64 0, i32 0, i64 2), align 4, !dbg !190
  %4 = load float, ptr @clip_front, align 4, !dbg !191
  %mul = fmul float %3, %4, !dbg !192
  %sub = fsub float %3, %4, !dbg !193
  %div2 = fdiv float %mul, %sub, !dbg !194
  call void @llvm.dbg.value(metadata float %div2, metadata !172, metadata !DIExpression()), !dbg !195
  %5 = load float, ptr @clip_back, align 4, !dbg !196
  %mul3 = fmul float %3, %5, !dbg !197
  %sub4 = fsub float %3, %5, !dbg !198
  %div5 = fdiv float %mul3, %sub4, !dbg !199
  call void @llvm.dbg.value(metadata float %div5, metadata !173, metadata !DIExpression()), !dbg !195
  %6 = load float, ptr @clip_right, align 4, !dbg !200
  %7 = load float, ptr @clip_left, align 4, !dbg !201
  %sub6 = fsub float %6, %7, !dbg !202
  %div7 = fdiv float 4.320000e+02, %sub6, !dbg !203
  %8 = load float, ptr @clip_top, align 4, !dbg !204
  %9 = load float, ptr @clip_bottom, align 4, !dbg !205
  %sub8 = fsub float %8, %9, !dbg !206
  %div9 = fdiv float 0x40759999A0000000, %sub8, !dbg !207
  %sub10 = fsub float %div2, %div5, !dbg !208
  %div11 = fdiv float 6.553600e+04, %sub10, !dbg !209
  tail call fastcc void @gscale_matrix(float noundef %div7, float noundef %div9, float noundef %div11), !dbg !210
  %10 = load float, ptr @clip_left, align 4, !dbg !211
  %mul12 = fmul float %10, -4.320000e+02, !dbg !212
  %11 = load float, ptr @clip_right, align 4, !dbg !213
  %sub13 = fsub float %11, %10, !dbg !214
  %div14 = fdiv float %mul12, %sub13, !dbg !215
  %12 = load float, ptr @clip_top, align 4, !dbg !216
  %mul15 = fmul float %12, 0xC0759999A0000000, !dbg !217
  %13 = load float, ptr @clip_bottom, align 4, !dbg !218
  %sub16 = fsub float %13, %12, !dbg !219
  %div17 = fdiv float %mul15, %sub16, !dbg !220
  %mul18 = fmul float %div5, -6.553600e+04, !dbg !221
  %div20 = fdiv float %mul18, %sub10, !dbg !222
  tail call fastcc void @gtranslate_matrix(float noundef %div14, float noundef %div17, float noundef %div20), !dbg !223
  tail call fastcc void @gtranslate_matrix(float noundef 7.200000e+01, float noundef 3.600000e+01, float noundef 0.000000e+00), !dbg !224
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pmat) #18, !dbg !225
  ret void, !dbg !225
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ps_close() local_unnamed_addr #0 !dbg !226 {
entry:
  %0 = load ptr, ptr @ps_fd, align 8, !dbg !227
  %cmp = icmp eq ptr %0, null, !dbg !229
  br i1 %cmp, label %return, label %if.end, !dbg !230

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 9, i64 1, ptr nonnull %0), !dbg !231
  %2 = load ptr, ptr @ps_fd, align 8, !dbg !232
  %call1 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.9), !dbg !233
  %3 = load ptr, ptr @ps_fd, align 8, !dbg !234
  %call2 = tail call i32 @fclose(ptr noundef %3), !dbg !235
  store ptr null, ptr @ps_fd, align 8, !dbg !236
  br label %return, !dbg !237

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !237
}

; Function Attrs: nofree nounwind
declare !dbg !238 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ps_linewidth(float noundef %w) local_unnamed_addr #0 !dbg !241 {
entry:
  call void @llvm.dbg.value(metadata float %w, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load ptr, ptr @ps_fd, align 8, !dbg !247
  %cmp = icmp eq ptr %0, null, !dbg !249
  br i1 %cmp, label %return, label %if.end, !dbg !250

if.end:                                           ; preds = %entry
  %conv = fpext float %w to double, !dbg !251
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.10, double noundef %conv), !dbg !252
  br label %return, !dbg !253

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !253
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ps_line(ptr nocapture noundef readonly %p1, ptr nocapture noundef readonly %p2) local_unnamed_addr #0 !dbg !254 {
entry:
  %v1 = alloca %struct.Vertex2, align 4
  %v2 = alloca %struct.Vertex2, align 4
  call void @llvm.dbg.value(metadata ptr %p1, metadata !266, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.value(metadata ptr %p2, metadata !267, metadata !DIExpression()), !dbg !274
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v1) #18, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !268, metadata !DIExpression()), !dbg !276
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v2) #18, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !269, metadata !DIExpression()), !dbg !277
  %0 = load ptr, ptr @ps_fd, align 8, !dbg !278
  %cmp = icmp eq ptr %0, null, !dbg !280
  br i1 %cmp, label %cleanup, label %if.end, !dbg !281

if.end:                                           ; preds = %entry
  %1 = load float, ptr %p1, align 4, !dbg !282
  store float %1, ptr %v1, align 4, !dbg !283
  %y = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 1, !dbg !284
  %2 = load float, ptr %y, align 4, !dbg !284
  %arrayidx4 = getelementptr inbounds [4 x float], ptr %v1, i64 0, i64 1, !dbg !285
  store float %2, ptr %arrayidx4, align 4, !dbg !286
  %z = getelementptr inbounds %struct.Vertex, ptr %p1, i64 0, i32 2, !dbg !287
  %3 = load float, ptr %z, align 4, !dbg !287
  %arrayidx6 = getelementptr inbounds [4 x float], ptr %v1, i64 0, i64 2, !dbg !288
  store float %3, ptr %arrayidx6, align 4, !dbg !289
  %arrayidx8 = getelementptr inbounds [4 x float], ptr %v1, i64 0, i64 3, !dbg !290
  store float 1.000000e+00, ptr %arrayidx8, align 4, !dbg !291
  %4 = load float, ptr %p2, align 4, !dbg !292
  store float %4, ptr %v2, align 4, !dbg !293
  %y12 = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 1, !dbg !294
  %5 = load float, ptr %y12, align 4, !dbg !294
  %arrayidx14 = getelementptr inbounds [4 x float], ptr %v2, i64 0, i64 1, !dbg !295
  store float %5, ptr %arrayidx14, align 4, !dbg !296
  %z15 = getelementptr inbounds %struct.Vertex, ptr %p2, i64 0, i32 2, !dbg !297
  %6 = load float, ptr %z15, align 4, !dbg !297
  %arrayidx17 = getelementptr inbounds [4 x float], ptr %v2, i64 0, i64 2, !dbg !298
  store float %6, ptr %arrayidx17, align 4, !dbg !299
  %arrayidx19 = getelementptr inbounds [4 x float], ptr %v2, i64 0, i64 3, !dbg !300
  store float 1.000000e+00, ptr %arrayidx19, align 4, !dbg !301
  call fastcc void @gtransform(ptr noundef nonnull %v1, ptr noundef nonnull %v1, ptr noundef nonnull @trans_mtx), !dbg !302
  call fastcc void @gtransform(ptr noundef nonnull %v2, ptr noundef nonnull %v2, ptr noundef nonnull @trans_mtx), !dbg !303
  %7 = load float, ptr %v1, align 4, !dbg !304
  %8 = load float, ptr %arrayidx8, align 4, !dbg !305
  %div = fdiv float %7, %8, !dbg !306
  call void @llvm.dbg.value(metadata float %div, metadata !270, metadata !DIExpression()), !dbg !274
  %9 = load float, ptr %arrayidx4, align 4, !dbg !307
  %div28 = fdiv float %9, %8, !dbg !308
  call void @llvm.dbg.value(metadata float %div28, metadata !271, metadata !DIExpression()), !dbg !274
  %10 = load float, ptr %v2, align 4, !dbg !309
  %11 = load float, ptr %arrayidx19, align 4, !dbg !310
  %div33 = fdiv float %10, %11, !dbg !311
  call void @llvm.dbg.value(metadata float %div33, metadata !272, metadata !DIExpression()), !dbg !274
  %12 = load float, ptr %arrayidx14, align 4, !dbg !312
  %div38 = fdiv float %12, %11, !dbg !313
  call void @llvm.dbg.value(metadata float %div38, metadata !273, metadata !DIExpression()), !dbg !274
  %conv = fpext float %div to double, !dbg !314
  %conv39 = fpext float %div28 to double, !dbg !315
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, double noundef %conv, double noundef %conv39), !dbg !316
  %13 = load ptr, ptr @ps_fd, align 8, !dbg !317
  %conv40 = fpext float %div33 to double, !dbg !318
  %conv41 = fpext float %div38 to double, !dbg !319
  %call42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.12, double noundef %conv40, double noundef %conv41), !dbg !320
  br label %cleanup, !dbg !321

cleanup:                                          ; preds = %entry, %if.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v2) #18, !dbg !321
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v1) #18, !dbg !321
  ret void, !dbg !321
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree noinline nosync nounwind willreturn uwtable
define internal fastcc void @gtransform(ptr nocapture noundef writeonly %v1, ptr nocapture noundef readonly %v2, ptr nocapture noundef readonly %mtx) unnamed_addr #5 !dbg !322 {
entry:
  call void @llvm.dbg.value(metadata ptr %v1, metadata !328, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr %v2, metadata !329, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.value(metadata ptr %mtx, metadata !330, metadata !DIExpression()), !dbg !335
  %0 = load float, ptr %v2, align 4, !dbg !336
  %1 = load float, ptr %mtx, align 4, !dbg !337
  %mul = fmul float %0, %1, !dbg !338
  call void @llvm.dbg.value(metadata float %mul, metadata !331, metadata !DIExpression()), !dbg !335
  %arrayidx7 = getelementptr inbounds [4 x float], ptr %mtx, i64 0, i64 1, !dbg !339
  %2 = load float, ptr %arrayidx7, align 4, !dbg !339
  %mul8 = fmul float %0, %2, !dbg !340
  call void @llvm.dbg.value(metadata float %mul8, metadata !332, metadata !DIExpression()), !dbg !335
  %arrayidx13 = getelementptr inbounds [4 x float], ptr %mtx, i64 0, i64 2, !dbg !341
  %3 = load float, ptr %arrayidx13, align 4, !dbg !341
  %mul14 = fmul float %0, %3, !dbg !342
  call void @llvm.dbg.value(metadata float %mul14, metadata !333, metadata !DIExpression()), !dbg !335
  %arrayidx19 = getelementptr inbounds [4 x float], ptr %mtx, i64 0, i64 3, !dbg !343
  %4 = load float, ptr %arrayidx19, align 4, !dbg !343
  %mul20 = fmul float %0, %4, !dbg !344
  call void @llvm.dbg.value(metadata float %mul20, metadata !334, metadata !DIExpression()), !dbg !335
  %arrayidx22 = getelementptr inbounds [4 x float], ptr %v2, i64 0, i64 1, !dbg !345
  %5 = load float, ptr %arrayidx22, align 4, !dbg !345
  %arrayidx24 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 1, !dbg !346
  %6 = load float, ptr %arrayidx24, align 4, !dbg !346
  %7 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %mul), !dbg !347
  call void @llvm.dbg.value(metadata float %7, metadata !331, metadata !DIExpression()), !dbg !335
  %arrayidx31 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 1, i64 1, !dbg !348
  %8 = load float, ptr %arrayidx31, align 4, !dbg !348
  %9 = tail call float @llvm.fmuladd.f32(float %5, float %8, float %mul8), !dbg !349
  call void @llvm.dbg.value(metadata float %9, metadata !332, metadata !DIExpression()), !dbg !335
  %arrayidx37 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 1, i64 2, !dbg !350
  %10 = load float, ptr %arrayidx37, align 4, !dbg !350
  %11 = tail call float @llvm.fmuladd.f32(float %5, float %10, float %mul14), !dbg !351
  call void @llvm.dbg.value(metadata float %11, metadata !333, metadata !DIExpression()), !dbg !335
  %arrayidx43 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 1, i64 3, !dbg !352
  %12 = load float, ptr %arrayidx43, align 4, !dbg !352
  %13 = tail call float @llvm.fmuladd.f32(float %5, float %12, float %mul20), !dbg !353
  call void @llvm.dbg.value(metadata float %13, metadata !334, metadata !DIExpression()), !dbg !335
  %arrayidx46 = getelementptr inbounds [4 x float], ptr %v2, i64 0, i64 2, !dbg !354
  %14 = load float, ptr %arrayidx46, align 4, !dbg !354
  %arrayidx48 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 2, !dbg !355
  %15 = load float, ptr %arrayidx48, align 4, !dbg !355
  %16 = tail call float @llvm.fmuladd.f32(float %14, float %15, float %7), !dbg !356
  call void @llvm.dbg.value(metadata float %16, metadata !331, metadata !DIExpression()), !dbg !335
  %arrayidx55 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 2, i64 1, !dbg !357
  %17 = load float, ptr %arrayidx55, align 4, !dbg !357
  %18 = tail call float @llvm.fmuladd.f32(float %14, float %17, float %9), !dbg !358
  call void @llvm.dbg.value(metadata float %18, metadata !332, metadata !DIExpression()), !dbg !335
  %arrayidx61 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 2, i64 2, !dbg !359
  %19 = load float, ptr %arrayidx61, align 4, !dbg !359
  %20 = tail call float @llvm.fmuladd.f32(float %14, float %19, float %11), !dbg !360
  call void @llvm.dbg.value(metadata float %20, metadata !333, metadata !DIExpression()), !dbg !335
  %arrayidx67 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 2, i64 3, !dbg !361
  %21 = load float, ptr %arrayidx67, align 4, !dbg !361
  %22 = tail call float @llvm.fmuladd.f32(float %14, float %21, float %13), !dbg !362
  call void @llvm.dbg.value(metadata float %22, metadata !334, metadata !DIExpression()), !dbg !335
  %arrayidx70 = getelementptr inbounds [4 x float], ptr %v2, i64 0, i64 3, !dbg !363
  %23 = load float, ptr %arrayidx70, align 4, !dbg !363
  %arrayidx72 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 3, !dbg !364
  %24 = load float, ptr %arrayidx72, align 4, !dbg !364
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %16), !dbg !365
  call void @llvm.dbg.value(metadata float %25, metadata !331, metadata !DIExpression()), !dbg !335
  %arrayidx79 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 3, i64 1, !dbg !366
  %26 = load float, ptr %arrayidx79, align 4, !dbg !366
  %27 = tail call float @llvm.fmuladd.f32(float %23, float %26, float %18), !dbg !367
  call void @llvm.dbg.value(metadata float %27, metadata !332, metadata !DIExpression()), !dbg !335
  %arrayidx85 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 3, i64 2, !dbg !368
  %28 = load float, ptr %arrayidx85, align 4, !dbg !368
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %28, float %20), !dbg !369
  call void @llvm.dbg.value(metadata float %29, metadata !333, metadata !DIExpression()), !dbg !335
  %arrayidx91 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 3, i64 3, !dbg !370
  %30 = load float, ptr %arrayidx91, align 4, !dbg !370
  %31 = tail call float @llvm.fmuladd.f32(float %23, float %30, float %22), !dbg !371
  call void @llvm.dbg.value(metadata float %31, metadata !334, metadata !DIExpression()), !dbg !335
  store float %25, ptr %v1, align 4, !dbg !372
  %arrayidx96 = getelementptr inbounds [4 x float], ptr %v1, i64 0, i64 1, !dbg !373
  store float %27, ptr %arrayidx96, align 4, !dbg !374
  %arrayidx98 = getelementptr inbounds [4 x float], ptr %v1, i64 0, i64 2, !dbg !375
  store float %29, ptr %arrayidx98, align 4, !dbg !376
  %arrayidx100 = getelementptr inbounds [4 x float], ptr %v1, i64 0, i64 3, !dbg !377
  store float %31, ptr %arrayidx100, align 4, !dbg !378
  ret void, !dbg !379
}

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ps_polygonedge(i64 noundef %n, ptr nocapture noundef readonly %p_list) local_unnamed_addr #0 !dbg !380 {
entry:
  %v = alloca %struct.Vertex2, align 4
  call void @llvm.dbg.value(metadata i64 %n, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata ptr %p_list, metadata !385, metadata !DIExpression()), !dbg !390
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v) #18, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %v, metadata !388, metadata !DIExpression()), !dbg !392
  %0 = load ptr, ptr @ps_fd, align 8, !dbg !393
  %cmp = icmp eq ptr %0, null, !dbg !395
  br i1 %cmp, label %cleanup, label %if.end, !dbg !396

if.end:                                           ; preds = %entry
  %1 = load float, ptr %p_list, align 4, !dbg !397
  store float %1, ptr %v, align 4, !dbg !398
  %y = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 0, i32 1, !dbg !399
  %2 = load float, ptr %y, align 4, !dbg !399
  %arrayidx5 = getelementptr inbounds [4 x float], ptr %v, i64 0, i64 1, !dbg !400
  store float %2, ptr %arrayidx5, align 4, !dbg !401
  %z = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 0, i32 2, !dbg !402
  %3 = load float, ptr %z, align 4, !dbg !402
  %arrayidx8 = getelementptr inbounds [4 x float], ptr %v, i64 0, i64 2, !dbg !403
  store float %3, ptr %arrayidx8, align 4, !dbg !404
  %arrayidx10 = getelementptr inbounds [4 x float], ptr %v, i64 0, i64 3, !dbg !405
  store float 1.000000e+00, ptr %arrayidx10, align 4, !dbg !406
  call fastcc void @gtransform(ptr noundef nonnull %v, ptr noundef nonnull %v, ptr noundef nonnull @trans_mtx), !dbg !407
  %4 = load float, ptr %v, align 4, !dbg !408
  %5 = load float, ptr %arrayidx10, align 4, !dbg !409
  %div = fdiv float %4, %5, !dbg !410
  call void @llvm.dbg.value(metadata float %div, metadata !386, metadata !DIExpression()), !dbg !390
  %6 = load float, ptr %arrayidx5, align 4, !dbg !411
  %div19 = fdiv float %6, %5, !dbg !412
  call void @llvm.dbg.value(metadata float %div19, metadata !387, metadata !DIExpression()), !dbg !390
  %conv = fpext float %div to double, !dbg !413
  %conv20 = fpext float %div19 to double, !dbg !414
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, double noundef %conv, double noundef %conv20), !dbg !415
  call void @llvm.dbg.value(metadata i64 1, metadata !389, metadata !DIExpression()), !dbg !390
  %cmp2165 = icmp sgt i64 %n, 1, !dbg !416
  br i1 %cmp2165, label %for.body, label %for.end, !dbg !419

for.body:                                         ; preds = %if.end, %for.body
  %i.066 = phi i64 [ %inc, %for.body ], [ 1, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.066, metadata !389, metadata !DIExpression()), !dbg !390
  %arrayidx23 = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 %i.066, !dbg !420
  %7 = load float, ptr %arrayidx23, align 4, !dbg !422
  store float %7, ptr %v, align 4, !dbg !423
  %y28 = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 %i.066, i32 1, !dbg !424
  %8 = load float, ptr %y28, align 4, !dbg !424
  store float %8, ptr %arrayidx5, align 4, !dbg !425
  %z32 = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 %i.066, i32 2, !dbg !426
  %9 = load float, ptr %z32, align 4, !dbg !426
  store float %9, ptr %arrayidx8, align 4, !dbg !427
  store float 1.000000e+00, ptr %arrayidx10, align 4, !dbg !428
  call fastcc void @gtransform(ptr noundef nonnull %v, ptr noundef nonnull %v, ptr noundef nonnull @trans_mtx), !dbg !429
  %10 = load float, ptr %v, align 4, !dbg !430
  %11 = load float, ptr %arrayidx10, align 4, !dbg !431
  %div41 = fdiv float %10, %11, !dbg !432
  call void @llvm.dbg.value(metadata float %div41, metadata !386, metadata !DIExpression()), !dbg !390
  %12 = load float, ptr %arrayidx5, align 4, !dbg !433
  %div46 = fdiv float %12, %11, !dbg !434
  call void @llvm.dbg.value(metadata float %div46, metadata !387, metadata !DIExpression()), !dbg !390
  %13 = load ptr, ptr @ps_fd, align 8, !dbg !435
  %conv47 = fpext float %div41 to double, !dbg !436
  %conv48 = fpext float %div46 to double, !dbg !437
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.13, double noundef %conv47, double noundef %conv48), !dbg !438
  %inc = add nuw nsw i64 %i.066, 1, !dbg !439
  call void @llvm.dbg.value(metadata i64 %inc, metadata !389, metadata !DIExpression()), !dbg !390
  %exitcond.not = icmp eq i64 %inc, %n, !dbg !416
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !419, !llvm.loop !440

for.end:                                          ; preds = %for.body, %if.end
  %14 = load ptr, ptr @ps_fd, align 8, !dbg !444
  %15 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 17, i64 1, ptr %14), !dbg !445
  br label %cleanup, !dbg !446

cleanup:                                          ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v) #18, !dbg !446
  ret void, !dbg !446
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ps_polygon(i64 noundef %n, ptr nocapture noundef readonly %p_list) local_unnamed_addr #0 !dbg !447 {
entry:
  %v = alloca %struct.Vertex2, align 4
  call void @llvm.dbg.value(metadata i64 %n, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.value(metadata ptr %p_list, metadata !450, metadata !DIExpression()), !dbg !455
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v) #18, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %v, metadata !453, metadata !DIExpression()), !dbg !457
  %0 = load ptr, ptr @ps_fd, align 8, !dbg !458
  %cmp = icmp eq ptr %0, null, !dbg !460
  br i1 %cmp, label %cleanup, label %if.end, !dbg !461

if.end:                                           ; preds = %entry
  %1 = load float, ptr %p_list, align 4, !dbg !462
  store float %1, ptr %v, align 4, !dbg !463
  %y = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 0, i32 1, !dbg !464
  %2 = load float, ptr %y, align 4, !dbg !464
  %arrayidx5 = getelementptr inbounds [4 x float], ptr %v, i64 0, i64 1, !dbg !465
  store float %2, ptr %arrayidx5, align 4, !dbg !466
  %z = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 0, i32 2, !dbg !467
  %3 = load float, ptr %z, align 4, !dbg !467
  %arrayidx8 = getelementptr inbounds [4 x float], ptr %v, i64 0, i64 2, !dbg !468
  store float %3, ptr %arrayidx8, align 4, !dbg !469
  %arrayidx10 = getelementptr inbounds [4 x float], ptr %v, i64 0, i64 3, !dbg !470
  store float 1.000000e+00, ptr %arrayidx10, align 4, !dbg !471
  call fastcc void @gtransform(ptr noundef nonnull %v, ptr noundef nonnull %v, ptr noundef nonnull @trans_mtx), !dbg !472
  %4 = load float, ptr %v, align 4, !dbg !473
  %5 = load float, ptr %arrayidx10, align 4, !dbg !474
  %div = fdiv float %4, %5, !dbg !475
  call void @llvm.dbg.value(metadata float %div, metadata !451, metadata !DIExpression()), !dbg !455
  %6 = load float, ptr %arrayidx5, align 4, !dbg !476
  %div19 = fdiv float %6, %5, !dbg !477
  call void @llvm.dbg.value(metadata float %div19, metadata !452, metadata !DIExpression()), !dbg !455
  %conv = fpext float %div to double, !dbg !478
  %conv20 = fpext float %div19 to double, !dbg !479
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, double noundef %conv, double noundef %conv20), !dbg !480
  call void @llvm.dbg.value(metadata i64 1, metadata !454, metadata !DIExpression()), !dbg !455
  %cmp2165 = icmp sgt i64 %n, 1, !dbg !481
  br i1 %cmp2165, label %for.body, label %for.end, !dbg !484

for.body:                                         ; preds = %if.end, %for.body
  %i.066 = phi i64 [ %inc, %for.body ], [ 1, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.066, metadata !454, metadata !DIExpression()), !dbg !455
  %arrayidx23 = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 %i.066, !dbg !485
  %7 = load float, ptr %arrayidx23, align 4, !dbg !487
  store float %7, ptr %v, align 4, !dbg !488
  %y28 = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 %i.066, i32 1, !dbg !489
  %8 = load float, ptr %y28, align 4, !dbg !489
  store float %8, ptr %arrayidx5, align 4, !dbg !490
  %z32 = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 %i.066, i32 2, !dbg !491
  %9 = load float, ptr %z32, align 4, !dbg !491
  store float %9, ptr %arrayidx8, align 4, !dbg !492
  store float 1.000000e+00, ptr %arrayidx10, align 4, !dbg !493
  call fastcc void @gtransform(ptr noundef nonnull %v, ptr noundef nonnull %v, ptr noundef nonnull @trans_mtx), !dbg !494
  %10 = load float, ptr %v, align 4, !dbg !495
  %11 = load float, ptr %arrayidx10, align 4, !dbg !496
  %div41 = fdiv float %10, %11, !dbg !497
  call void @llvm.dbg.value(metadata float %div41, metadata !451, metadata !DIExpression()), !dbg !455
  %12 = load float, ptr %arrayidx5, align 4, !dbg !498
  %div46 = fdiv float %12, %11, !dbg !499
  call void @llvm.dbg.value(metadata float %div46, metadata !452, metadata !DIExpression()), !dbg !455
  %13 = load ptr, ptr @ps_fd, align 8, !dbg !500
  %conv47 = fpext float %div41 to double, !dbg !501
  %conv48 = fpext float %div46 to double, !dbg !502
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.13, double noundef %conv47, double noundef %conv48), !dbg !503
  %inc = add nuw nsw i64 %i.066, 1, !dbg !504
  call void @llvm.dbg.value(metadata i64 %inc, metadata !454, metadata !DIExpression()), !dbg !455
  %exitcond.not = icmp eq i64 %inc, %n, !dbg !481
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !484, !llvm.loop !505

for.end:                                          ; preds = %for.body, %if.end
  %14 = load ptr, ptr @ps_fd, align 8, !dbg !507
  %15 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 15, i64 1, ptr %14), !dbg !508
  br label %cleanup, !dbg !509

cleanup:                                          ; preds = %entry, %for.end
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v) #18, !dbg !509
  ret void, !dbg !509
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ps_spolygon(i64 noundef %n, ptr nocapture noundef readonly %p_list, ptr nocapture noundef readonly %c_list) local_unnamed_addr #0 !dbg !510 {
entry:
  %v = alloca %struct.Vertex2, align 4
  call void @llvm.dbg.value(metadata i64 %n, metadata !521, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata ptr %p_list, metadata !522, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata ptr %c_list, metadata !523, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v) #18, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %v, metadata !526, metadata !DIExpression()), !dbg !531
  %0 = load ptr, ptr @ps_fd, align 8, !dbg !532
  %cmp = icmp eq ptr %0, null, !dbg !534
  br i1 %cmp, label %cleanup, label %if.end, !dbg !535

if.end:                                           ; preds = %entry
  %1 = load float, ptr %p_list, align 4, !dbg !536
  store float %1, ptr %v, align 4, !dbg !537
  %y = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 0, i32 1, !dbg !538
  %2 = load float, ptr %y, align 4, !dbg !538
  %arrayidx5 = getelementptr inbounds [4 x float], ptr %v, i64 0, i64 1, !dbg !539
  store float %2, ptr %arrayidx5, align 4, !dbg !540
  %z = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 0, i32 2, !dbg !541
  %3 = load float, ptr %z, align 4, !dbg !541
  %arrayidx8 = getelementptr inbounds [4 x float], ptr %v, i64 0, i64 2, !dbg !542
  store float %3, ptr %arrayidx8, align 4, !dbg !543
  %arrayidx10 = getelementptr inbounds [4 x float], ptr %v, i64 0, i64 3, !dbg !544
  store float 1.000000e+00, ptr %arrayidx10, align 4, !dbg !545
  call fastcc void @gtransform(ptr noundef nonnull %v, ptr noundef nonnull %v, ptr noundef nonnull @trans_mtx), !dbg !546
  %4 = load float, ptr %v, align 4, !dbg !547
  %5 = load float, ptr %arrayidx10, align 4, !dbg !548
  %div = fdiv float %4, %5, !dbg !549
  call void @llvm.dbg.value(metadata float %div, metadata !524, metadata !DIExpression()), !dbg !529
  %6 = load float, ptr %arrayidx5, align 4, !dbg !550
  %div19 = fdiv float %6, %5, !dbg !551
  call void @llvm.dbg.value(metadata float %div19, metadata !525, metadata !DIExpression()), !dbg !529
  %conv = fpext float %div to double, !dbg !552
  %conv20 = fpext float %div19 to double, !dbg !553
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, double noundef %conv, double noundef %conv20), !dbg !554
  call void @llvm.dbg.value(metadata i64 1, metadata !527, metadata !DIExpression()), !dbg !529
  %cmp2180 = icmp sgt i64 %n, 1, !dbg !555
  br i1 %cmp2180, label %for.body, label %for.end, !dbg !558

for.body:                                         ; preds = %if.end, %for.body
  %i.081 = phi i64 [ %inc, %for.body ], [ 1, %if.end ]
  call void @llvm.dbg.value(metadata i64 %i.081, metadata !527, metadata !DIExpression()), !dbg !529
  %arrayidx23 = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 %i.081, !dbg !559
  %7 = load float, ptr %arrayidx23, align 4, !dbg !561
  store float %7, ptr %v, align 4, !dbg !562
  %y28 = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 %i.081, i32 1, !dbg !563
  %8 = load float, ptr %y28, align 4, !dbg !563
  store float %8, ptr %arrayidx5, align 4, !dbg !564
  %z32 = getelementptr inbounds %struct.Vertex, ptr %p_list, i64 %i.081, i32 2, !dbg !565
  %9 = load float, ptr %z32, align 4, !dbg !565
  store float %9, ptr %arrayidx8, align 4, !dbg !566
  store float 1.000000e+00, ptr %arrayidx10, align 4, !dbg !567
  call fastcc void @gtransform(ptr noundef nonnull %v, ptr noundef nonnull %v, ptr noundef nonnull @trans_mtx), !dbg !568
  %10 = load float, ptr %v, align 4, !dbg !569
  %11 = load float, ptr %arrayidx10, align 4, !dbg !570
  %div41 = fdiv float %10, %11, !dbg !571
  call void @llvm.dbg.value(metadata float %div41, metadata !524, metadata !DIExpression()), !dbg !529
  %12 = load float, ptr %arrayidx5, align 4, !dbg !572
  %div46 = fdiv float %12, %11, !dbg !573
  call void @llvm.dbg.value(metadata float %div46, metadata !525, metadata !DIExpression()), !dbg !529
  %13 = load ptr, ptr @ps_fd, align 8, !dbg !574
  %conv47 = fpext float %div41 to double, !dbg !575
  %conv48 = fpext float %div46 to double, !dbg !576
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.13, double noundef %conv47, double noundef %conv48), !dbg !577
  %inc = add nuw nsw i64 %i.081, 1, !dbg !578
  call void @llvm.dbg.value(metadata i64 %inc, metadata !527, metadata !DIExpression()), !dbg !529
  %exitcond.not = icmp eq i64 %inc, %n, !dbg !555
  br i1 %exitcond.not, label %for.end, label %for.body, !dbg !558, !llvm.loop !579

for.end:                                          ; preds = %for.body, %if.end
  %g = getelementptr inbounds %struct.Rgb, ptr %c_list, i64 0, i32 1, !dbg !581
  %14 = load float, ptr %g, align 4, !dbg !581
  call void @llvm.dbg.value(metadata float %14, metadata !528, metadata !DIExpression()), !dbg !529
  %cmp52 = fcmp ogt float %14, 1.000000e+00, !dbg !582
  br i1 %cmp52, label %if.end60, label %if.else, !dbg !584

if.else:                                          ; preds = %for.end
  %cmp56 = fcmp olt float %14, 0.000000e+00, !dbg !585
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !587

if.then58:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !528, metadata !DIExpression()), !dbg !529
  br label %if.end60, !dbg !588

if.end60:                                         ; preds = %for.end, %if.else, %if.then58
  %gray_scale.0 = phi float [ 0.000000e+00, %if.then58 ], [ %14, %if.else ], [ 1.000000e+00, %for.end ], !dbg !529
  call void @llvm.dbg.value(metadata float %gray_scale.0, metadata !528, metadata !DIExpression()), !dbg !529
  %15 = load ptr, ptr @ps_fd, align 8, !dbg !589
  %conv61 = fpext float %gray_scale.0 to double, !dbg !590
  %call62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.16, double noundef %conv61), !dbg !591
  br label %cleanup, !dbg !592

cleanup:                                          ; preds = %entry, %if.end60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v) #18, !dbg !592
  ret void, !dbg !592
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable
define dso_local void @ps_clear() local_unnamed_addr #6 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @ps_setup_view(float noundef %rot_x, float noundef %rot_y, float noundef %dist, float noundef %zoom) local_unnamed_addr #0 !dbg !595 {
entry:
  call void @llvm.dbg.value(metadata float %rot_x, metadata !599, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata float %rot_y, metadata !600, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata float %dist, metadata !601, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.value(metadata float %zoom, metadata !602, metadata !DIExpression()), !dbg !603
  store float 0.000000e+00, ptr @prp, align 4, !dbg !604
  store float 0.000000e+00, ptr getelementptr inbounds (%struct.Vertex2, ptr @prp, i64 0, i32 0, i64 1), align 4, !dbg !605
  store float %dist, ptr getelementptr inbounds (%struct.Vertex2, ptr @prp, i64 0, i32 0, i64 2), align 4, !dbg !606
  store float 0.000000e+00, ptr getelementptr inbounds (%struct.Vertex2, ptr @prp, i64 0, i32 0, i64 3), align 4, !dbg !607
  store float %rot_x, ptr @view_rotx, align 4, !dbg !608
  store float %rot_y, ptr @view_roty, align 4, !dbg !609
  tail call fastcc void @setup_transformation(), !dbg !610
  ret void, !dbg !611
}

; Function Attrs: argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable
define internal fastcc void @gset_unit_matrix(ptr nocapture noundef writeonly %mtx) unnamed_addr #7 !dbg !612 {
entry:
  call void @llvm.dbg.value(metadata ptr %mtx, metadata !616, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i64 0, metadata !617, metadata !DIExpression()), !dbg !619
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %mtx, i8 0, i64 64, i1 false), !dbg !620
  call void @llvm.dbg.value(metadata i32 undef, metadata !617, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 undef, metadata !618, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.value(metadata i32 undef, metadata !618, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !619
  call void @llvm.dbg.value(metadata i32 undef, metadata !617, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !619
  br label %for.body10, !dbg !625

for.body10:                                       ; preds = %entry, %for.body10
  %row.128 = phi i64 [ %inc15, %for.body10 ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %row.128, metadata !617, metadata !DIExpression()), !dbg !619
  %arrayidx13 = getelementptr inbounds [4 x [4 x float]], ptr %mtx, i64 0, i64 %row.128, i64 %row.128, !dbg !627
  store float 1.000000e+00, ptr %arrayidx13, align 4, !dbg !629
  %inc15 = add nuw nsw i64 %row.128, 1, !dbg !630
  call void @llvm.dbg.value(metadata i64 %inc15, metadata !617, metadata !DIExpression()), !dbg !619
  %exitcond.not = icmp eq i64 %inc15, 4, !dbg !631
  br i1 %exitcond.not, label %for.end16, label %for.body10, !dbg !625, !llvm.loop !632

for.end16:                                        ; preds = %for.body10
  ret void, !dbg !634
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc void @grotate_x_matrix(float noundef %rot) unnamed_addr #0 !dbg !635 {
entry:
  %rmat = alloca %struct.Matrix, align 4
  call void @llvm.dbg.value(metadata i64 0, metadata !639, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !640, metadata !DIExpression()), !dbg !645
  call void @llvm.dbg.value(metadata float %rot, metadata !641, metadata !DIExpression()), !dbg !645
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rmat) #18, !dbg !646
  call void @llvm.dbg.declare(metadata ptr %rmat, metadata !642, metadata !DIExpression()), !dbg !647
  call fastcc void @gset_unit_matrix(ptr noundef nonnull %rmat), !dbg !648
  %conv = fpext float %rot to double, !dbg !649
  %mul = fmul double %conv, 0x400921FB54442D18, !dbg !650
  %div = fdiv double %mul, 1.800000e+02, !dbg !651
  %call = tail call double @sin(double noundef %div) #18, !dbg !652
  %conv1 = fptrunc double %call to float, !dbg !652
  call void @llvm.dbg.value(metadata float %conv1, metadata !643, metadata !DIExpression()), !dbg !645
  %call5 = tail call double @cos(double noundef %div) #18, !dbg !653
  %conv6 = fptrunc double %call5 to float, !dbg !653
  call void @llvm.dbg.value(metadata float %conv6, metadata !644, metadata !DIExpression()), !dbg !645
  %arrayidx7 = getelementptr inbounds [4 x [4 x float]], ptr %rmat, i64 0, i64 1, i64 1, !dbg !654
  store float %conv6, ptr %arrayidx7, align 4, !dbg !655
  %arrayidx10 = getelementptr inbounds [4 x [4 x float]], ptr %rmat, i64 0, i64 1, i64 2, !dbg !656
  store float %conv1, ptr %arrayidx10, align 4, !dbg !657
  %fneg = fneg float %conv1, !dbg !658
  %arrayidx13 = getelementptr inbounds [4 x [4 x float]], ptr %rmat, i64 0, i64 2, i64 1, !dbg !659
  store float %fneg, ptr %arrayidx13, align 4, !dbg !660
  %arrayidx16 = getelementptr inbounds [4 x [4 x float]], ptr %rmat, i64 0, i64 2, i64 2, !dbg !661
  store float %conv6, ptr %arrayidx16, align 4, !dbg !662
  call fastcc void @gconcatenate_matrix(ptr noundef nonnull %rmat), !dbg !663
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rmat) #18, !dbg !664
  ret void, !dbg !664
}

; Function Attrs: nofree noinline nounwind uwtable
define internal fastcc void @grotate_y_matrix(float noundef %rot) unnamed_addr #0 !dbg !665 {
entry:
  %rmat = alloca %struct.Matrix, align 4
  call void @llvm.dbg.value(metadata i64 0, metadata !667, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !668, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.value(metadata float %rot, metadata !669, metadata !DIExpression()), !dbg !673
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rmat) #18, !dbg !674
  call void @llvm.dbg.declare(metadata ptr %rmat, metadata !670, metadata !DIExpression()), !dbg !675
  call fastcc void @gset_unit_matrix(ptr noundef nonnull %rmat), !dbg !676
  %conv = fpext float %rot to double, !dbg !677
  %mul = fmul double %conv, 0x400921FB54442D18, !dbg !678
  %div = fdiv double %mul, 1.800000e+02, !dbg !679
  %call = tail call double @sin(double noundef %div) #18, !dbg !680
  %conv1 = fptrunc double %call to float, !dbg !680
  call void @llvm.dbg.value(metadata float %conv1, metadata !671, metadata !DIExpression()), !dbg !673
  %call5 = tail call double @cos(double noundef %div) #18, !dbg !681
  %conv6 = fptrunc double %call5 to float, !dbg !681
  call void @llvm.dbg.value(metadata float %conv6, metadata !672, metadata !DIExpression()), !dbg !673
  store float %conv6, ptr %rmat, align 4, !dbg !682
  %fneg = fneg float %conv1, !dbg !683
  %arrayidx10 = getelementptr inbounds [4 x float], ptr %rmat, i64 0, i64 2, !dbg !684
  store float %fneg, ptr %arrayidx10, align 4, !dbg !685
  %arrayidx12 = getelementptr inbounds [4 x [4 x float]], ptr %rmat, i64 0, i64 2, !dbg !686
  store float %conv1, ptr %arrayidx12, align 4, !dbg !687
  %arrayidx16 = getelementptr inbounds [4 x [4 x float]], ptr %rmat, i64 0, i64 2, i64 2, !dbg !688
  store float %conv6, ptr %arrayidx16, align 4, !dbg !689
  call fastcc void @gconcatenate_matrix(ptr noundef nonnull %rmat), !dbg !690
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rmat) #18, !dbg !691
  ret void, !dbg !691
}

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn uwtable
define internal fastcc void @ginverse_matrix(ptr nocapture noundef writeonly %m1) unnamed_addr #8 !dbg !692 {
entry:
  call void @llvm.dbg.value(metadata ptr %m1, metadata !696, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !697, metadata !DIExpression()), !dbg !700
  %call = tail call fastcc double @det(), !dbg !701
  call void @llvm.dbg.value(metadata double %call, metadata !698, metadata !DIExpression()), !dbg !700
  %call1 = tail call fastcc double @cdet(i64 noundef 1, i64 noundef 2, i64 noundef 3, i64 noundef 1, i64 noundef 2, i64 noundef 3), !dbg !702
  %div = fdiv double %call1, %call, !dbg !703
  %conv = fptrunc double %div to float, !dbg !702
  store float %conv, ptr %m1, align 4, !dbg !704
  %call3 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 2, i64 noundef 3, i64 noundef 1, i64 noundef 2, i64 noundef 3), !dbg !705
  %fneg = fneg double %call3, !dbg !706
  %div4 = fdiv double %fneg, %call, !dbg !707
  %conv5 = fptrunc double %div4 to float, !dbg !706
  %arrayidx8 = getelementptr inbounds [4 x float], ptr %m1, i64 0, i64 1, !dbg !708
  store float %conv5, ptr %arrayidx8, align 4, !dbg !709
  %call9 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 3, i64 noundef 1, i64 noundef 2, i64 noundef 3), !dbg !710
  %div10 = fdiv double %call9, %call, !dbg !711
  %conv11 = fptrunc double %div10 to float, !dbg !710
  %arrayidx14 = getelementptr inbounds [4 x float], ptr %m1, i64 0, i64 2, !dbg !712
  store float %conv11, ptr %arrayidx14, align 4, !dbg !713
  %call15 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 2, i64 noundef 1, i64 noundef 2, i64 noundef 3), !dbg !714
  %fneg16 = fneg double %call15, !dbg !715
  %div17 = fdiv double %fneg16, %call, !dbg !716
  %conv18 = fptrunc double %div17 to float, !dbg !715
  %arrayidx21 = getelementptr inbounds [4 x float], ptr %m1, i64 0, i64 3, !dbg !717
  store float %conv18, ptr %arrayidx21, align 4, !dbg !718
  %call22 = tail call fastcc double @cdet(i64 noundef 1, i64 noundef 2, i64 noundef 3, i64 noundef 0, i64 noundef 2, i64 noundef 3), !dbg !719
  %fneg23 = fneg double %call22, !dbg !720
  %div24 = fdiv double %fneg23, %call, !dbg !721
  %conv25 = fptrunc double %div24 to float, !dbg !720
  %arrayidx27 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 1, !dbg !722
  store float %conv25, ptr %arrayidx27, align 4, !dbg !723
  %call29 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 2, i64 noundef 3, i64 noundef 0, i64 noundef 2, i64 noundef 3), !dbg !724
  %div30 = fdiv double %call29, %call, !dbg !725
  %conv31 = fptrunc double %div30 to float, !dbg !724
  %arrayidx34 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 1, i64 1, !dbg !726
  store float %conv31, ptr %arrayidx34, align 4, !dbg !727
  %call35 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 3, i64 noundef 0, i64 noundef 2, i64 noundef 3), !dbg !728
  %fneg36 = fneg double %call35, !dbg !729
  %div37 = fdiv double %fneg36, %call, !dbg !730
  %conv38 = fptrunc double %div37 to float, !dbg !729
  %arrayidx41 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 1, i64 2, !dbg !731
  store float %conv38, ptr %arrayidx41, align 4, !dbg !732
  %call42 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 2, i64 noundef 0, i64 noundef 2, i64 noundef 3), !dbg !733
  %div43 = fdiv double %call42, %call, !dbg !734
  %conv44 = fptrunc double %div43 to float, !dbg !733
  %arrayidx47 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 1, i64 3, !dbg !735
  store float %conv44, ptr %arrayidx47, align 4, !dbg !736
  %call48 = tail call fastcc double @cdet(i64 noundef 1, i64 noundef 2, i64 noundef 3, i64 noundef 0, i64 noundef 1, i64 noundef 3), !dbg !737
  %div49 = fdiv double %call48, %call, !dbg !738
  %conv50 = fptrunc double %div49 to float, !dbg !737
  %arrayidx52 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 2, !dbg !739
  store float %conv50, ptr %arrayidx52, align 4, !dbg !740
  %call54 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 2, i64 noundef 3, i64 noundef 0, i64 noundef 1, i64 noundef 3), !dbg !741
  %fneg55 = fneg double %call54, !dbg !742
  %div56 = fdiv double %fneg55, %call, !dbg !743
  %conv57 = fptrunc double %div56 to float, !dbg !742
  %arrayidx60 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 2, i64 1, !dbg !744
  store float %conv57, ptr %arrayidx60, align 4, !dbg !745
  %call61 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 3, i64 noundef 0, i64 noundef 1, i64 noundef 3), !dbg !746
  %div62 = fdiv double %call61, %call, !dbg !747
  %conv63 = fptrunc double %div62 to float, !dbg !746
  %arrayidx66 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 2, i64 2, !dbg !748
  store float %conv63, ptr %arrayidx66, align 4, !dbg !749
  %call67 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 2, i64 noundef 0, i64 noundef 1, i64 noundef 3), !dbg !750
  %fneg68 = fneg double %call67, !dbg !751
  %div69 = fdiv double %fneg68, %call, !dbg !752
  %conv70 = fptrunc double %div69 to float, !dbg !751
  %arrayidx73 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 2, i64 3, !dbg !753
  store float %conv70, ptr %arrayidx73, align 4, !dbg !754
  %call74 = tail call fastcc double @cdet(i64 noundef 1, i64 noundef 2, i64 noundef 3, i64 noundef 0, i64 noundef 1, i64 noundef 2), !dbg !755
  %fneg75 = fneg double %call74, !dbg !756
  %div76 = fdiv double %fneg75, %call, !dbg !757
  %conv77 = fptrunc double %div76 to float, !dbg !756
  %arrayidx79 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 3, !dbg !758
  store float %conv77, ptr %arrayidx79, align 4, !dbg !759
  %call81 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 2, i64 noundef 3, i64 noundef 0, i64 noundef 1, i64 noundef 2), !dbg !760
  %div82 = fdiv double %call81, %call, !dbg !761
  %conv83 = fptrunc double %div82 to float, !dbg !760
  %arrayidx86 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 3, i64 1, !dbg !762
  store float %conv83, ptr %arrayidx86, align 4, !dbg !763
  %call87 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 3, i64 noundef 0, i64 noundef 1, i64 noundef 2), !dbg !764
  %fneg88 = fneg double %call87, !dbg !765
  %div89 = fdiv double %fneg88, %call, !dbg !766
  %conv90 = fptrunc double %div89 to float, !dbg !765
  %arrayidx93 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 3, i64 2, !dbg !767
  store float %conv90, ptr %arrayidx93, align 4, !dbg !768
  %call94 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 2, i64 noundef 0, i64 noundef 1, i64 noundef 2), !dbg !769
  %div95 = fdiv double %call94, %call, !dbg !770
  %conv96 = fptrunc double %div95 to float, !dbg !769
  %arrayidx99 = getelementptr inbounds [4 x [4 x float]], ptr %m1, i64 0, i64 3, i64 3, !dbg !771
  store float %conv96, ptr %arrayidx99, align 4, !dbg !772
  ret void, !dbg !773
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @gconcatenate_matrix(ptr nocapture noundef readonly %m2) unnamed_addr #9 !dbg !774 {
entry:
  %temp = alloca %struct.Matrix, align 4
  call void @llvm.dbg.value(metadata i64 0, metadata !778, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !779, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr %m2, metadata !780, metadata !DIExpression()), !dbg !786
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp) #18, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !785, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !784, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !779, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr %m2, metadata !780, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i64 0, metadata !781, metadata !DIExpression()), !dbg !786
  br label %for.cond2.preheader, !dbg !789

for.cond2.preheader:                              ; preds = %entry, %for.inc21
  %row.03 = phi i64 [ 0, %entry ], [ %inc22, %for.inc21 ]
  call void @llvm.dbg.value(metadata i64 %row.03, metadata !781, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i64 0, metadata !782, metadata !DIExpression()), !dbg !786
  br label %for.body4, !dbg !791

for.body4:                                        ; preds = %for.cond2.preheader, %for.inc18
  %col.02 = phi i64 [ 0, %for.cond2.preheader ], [ %inc19, %for.inc18 ]
  call void @llvm.dbg.value(metadata i64 %col.02, metadata !782, metadata !DIExpression()), !dbg !786
  %arrayidx5 = getelementptr inbounds [4 x [4 x float]], ptr %temp, i64 0, i64 %row.03, i64 %col.02, !dbg !794
  call void @llvm.dbg.value(metadata i64 0, metadata !783, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata i64 0, metadata !783, metadata !DIExpression()), !dbg !786
  br label %for.body8, !dbg !797

for.body8:                                        ; preds = %for.body4, %for.body8
  %scan.01 = phi i64 [ 0, %for.body4 ], [ %inc, %for.body8 ]
  %0 = phi float [ 0.000000e+00, %for.body4 ], [ %3, %for.body8 ]
  call void @llvm.dbg.value(metadata i64 %scan.01, metadata !783, metadata !DIExpression()), !dbg !786
  %arrayidx11 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %row.03, i64 %scan.01, !dbg !799
  %1 = load float, ptr %arrayidx11, align 4, !dbg !799
  %arrayidx14 = getelementptr inbounds [4 x [4 x float]], ptr %m2, i64 0, i64 %scan.01, i64 %col.02, !dbg !801
  %2 = load float, ptr %arrayidx14, align 4, !dbg !801
  %3 = tail call float @llvm.fmuladd.f32(float %1, float %2, float %0), !dbg !802
  %inc = add nuw nsw i64 %scan.01, 1, !dbg !803
  call void @llvm.dbg.value(metadata i64 %inc, metadata !783, metadata !DIExpression()), !dbg !786
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !804
  br i1 %exitcond.not, label %for.inc18, label %for.body8, !dbg !797, !llvm.loop !805

for.inc18:                                        ; preds = %for.body8
  store float %3, ptr %arrayidx5, align 4, !dbg !802
  %inc19 = add nuw nsw i64 %col.02, 1, !dbg !807
  call void @llvm.dbg.value(metadata i64 %inc19, metadata !782, metadata !DIExpression()), !dbg !786
  %exitcond4.not = icmp eq i64 %inc19, 4, !dbg !808
  br i1 %exitcond4.not, label %for.inc21, label %for.body4, !dbg !791, !llvm.loop !809

for.inc21:                                        ; preds = %for.inc18
  %inc22 = add nuw nsw i64 %row.03, 1, !dbg !811
  call void @llvm.dbg.value(metadata i64 %inc22, metadata !781, metadata !DIExpression()), !dbg !786
  %exitcond5.not = icmp eq i64 %inc22, 4, !dbg !812
  br i1 %exitcond5.not, label %for.end23, label %for.cond2.preheader, !dbg !789, !llvm.loop !813

for.end23:                                        ; preds = %for.inc21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) @trans_mtx, ptr noundef nonnull align 4 dereferenceable(64) %temp, i64 64, i1 false), !dbg !815
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp) #18, !dbg !816
  ret void, !dbg !816
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @gscale_matrix(float noundef %sx, float noundef %sy, float noundef %sz) unnamed_addr #9 !dbg !817 {
entry:
  %smat = alloca %struct.Matrix, align 4
  call void @llvm.dbg.value(metadata i64 0, metadata !821, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !822, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata float %sx, metadata !823, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata float %sy, metadata !824, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.value(metadata float %sz, metadata !825, metadata !DIExpression()), !dbg !827
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %smat) #18, !dbg !828
  call void @llvm.dbg.declare(metadata ptr %smat, metadata !826, metadata !DIExpression()), !dbg !829
  call fastcc void @gset_unit_matrix(ptr noundef nonnull %smat), !dbg !830
  store float %sx, ptr %smat, align 4, !dbg !831
  %arrayidx4 = getelementptr inbounds [4 x [4 x float]], ptr %smat, i64 0, i64 1, i64 1, !dbg !832
  store float %sy, ptr %arrayidx4, align 4, !dbg !833
  %arrayidx7 = getelementptr inbounds [4 x [4 x float]], ptr %smat, i64 0, i64 2, i64 2, !dbg !834
  store float %sz, ptr %arrayidx7, align 4, !dbg !835
  call fastcc void @gconcatenate_matrix(ptr noundef nonnull %smat), !dbg !836
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %smat) #18, !dbg !837
  ret void, !dbg !837
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal fastcc void @gtranslate_matrix(float noundef %tx, float noundef %ty, float noundef %tz) unnamed_addr #9 !dbg !838 {
entry:
  %tmat = alloca %struct.Matrix, align 4
  call void @llvm.dbg.value(metadata i64 0, metadata !840, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !841, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata float %tx, metadata !842, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata float %ty, metadata !843, metadata !DIExpression()), !dbg !846
  call void @llvm.dbg.value(metadata float %tz, metadata !844, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tmat) #18, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %tmat, metadata !845, metadata !DIExpression()), !dbg !848
  call fastcc void @gset_unit_matrix(ptr noundef nonnull %tmat), !dbg !849
  %arrayidx = getelementptr inbounds [4 x [4 x float]], ptr %tmat, i64 0, i64 3, !dbg !850
  store float %tx, ptr %arrayidx, align 4, !dbg !851
  %arrayidx4 = getelementptr inbounds [4 x [4 x float]], ptr %tmat, i64 0, i64 3, i64 1, !dbg !852
  store float %ty, ptr %arrayidx4, align 4, !dbg !853
  %arrayidx7 = getelementptr inbounds [4 x [4 x float]], ptr %tmat, i64 0, i64 3, i64 2, !dbg !854
  store float %tz, ptr %arrayidx7, align 4, !dbg !855
  call fastcc void @gconcatenate_matrix(ptr noundef nonnull %tmat), !dbg !856
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tmat) #18, !dbg !857
  ret void, !dbg !857
}

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @cos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly willreturn uwtable
define internal fastcc double @det() unnamed_addr #11 !dbg !858 {
entry:
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !862, metadata !DIExpression()), !dbg !864
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !863, metadata !DIExpression()), !dbg !864
  %0 = load float, ptr getelementptr inbounds (%struct.Matrix, ptr @trans_mtx, i64 0, i32 0, i64 0, i64 3), align 4, !dbg !865
  %cmp = fcmp une float %0, 0.000000e+00, !dbg !867
  br i1 %cmp, label %if.then, label %if.end, !dbg !868

if.then:                                          ; preds = %entry
  %conv = fpext float %0 to double, !dbg !865
  %call = tail call fastcc double @cdet(i64 noundef 1, i64 noundef 2, i64 noundef 3, i64 noundef 0, i64 noundef 1, i64 noundef 2), !dbg !869
  %neg = fneg double %conv, !dbg !870
  %1 = tail call double @llvm.fmuladd.f64(double %neg, double %call, double 0.000000e+00), !dbg !870
  call void @llvm.dbg.value(metadata double %1, metadata !863, metadata !DIExpression()), !dbg !864
  br label %if.end, !dbg !871

if.end:                                           ; preds = %if.then, %entry
  %det_sum.0 = phi double [ %1, %if.then ], [ 0.000000e+00, %entry ], !dbg !864
  call void @llvm.dbg.value(metadata double %det_sum.0, metadata !863, metadata !DIExpression()), !dbg !864
  %2 = load float, ptr getelementptr inbounds (%struct.Matrix, ptr @trans_mtx, i64 0, i32 0, i64 1, i64 3), align 4, !dbg !872
  %cmp12 = fcmp une float %2, 0.000000e+00, !dbg !874
  br i1 %cmp12, label %if.then14, label %if.end20, !dbg !875

if.then14:                                        ; preds = %if.end
  %conv11 = fpext float %2 to double, !dbg !872
  %call19 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 2, i64 noundef 3, i64 noundef 0, i64 noundef 1, i64 noundef 2), !dbg !876
  %3 = tail call double @llvm.fmuladd.f64(double %conv11, double %call19, double %det_sum.0), !dbg !877
  call void @llvm.dbg.value(metadata double %3, metadata !863, metadata !DIExpression()), !dbg !864
  br label %if.end20, !dbg !878

if.end20:                                         ; preds = %if.then14, %if.end
  %det_sum.1 = phi double [ %3, %if.then14 ], [ %det_sum.0, %if.end ], !dbg !864
  call void @llvm.dbg.value(metadata double %det_sum.1, metadata !863, metadata !DIExpression()), !dbg !864
  %4 = load float, ptr getelementptr inbounds (%struct.Matrix, ptr @trans_mtx, i64 0, i32 0, i64 2, i64 3), align 4, !dbg !879
  %cmp25 = fcmp une float %4, 0.000000e+00, !dbg !881
  br i1 %cmp25, label %if.then27, label %if.end34, !dbg !882

if.then27:                                        ; preds = %if.end20
  %conv24 = fpext float %4 to double, !dbg !879
  %call32 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 3, i64 noundef 0, i64 noundef 1, i64 noundef 2), !dbg !883
  %neg33 = fneg double %conv24, !dbg !884
  %5 = tail call double @llvm.fmuladd.f64(double %neg33, double %call32, double %det_sum.1), !dbg !884
  call void @llvm.dbg.value(metadata double %5, metadata !863, metadata !DIExpression()), !dbg !864
  br label %if.end34, !dbg !885

if.end34:                                         ; preds = %if.then27, %if.end20
  %det_sum.2 = phi double [ %5, %if.then27 ], [ %det_sum.1, %if.end20 ], !dbg !864
  call void @llvm.dbg.value(metadata double %det_sum.2, metadata !863, metadata !DIExpression()), !dbg !864
  %6 = load float, ptr getelementptr inbounds (%struct.Matrix, ptr @trans_mtx, i64 0, i32 0, i64 3, i64 3), align 4, !dbg !886
  %cmp39 = fcmp une float %6, 0.000000e+00, !dbg !888
  br i1 %cmp39, label %if.then41, label %if.end47, !dbg !889

if.then41:                                        ; preds = %if.end34
  %conv38 = fpext float %6 to double, !dbg !886
  %call46 = tail call fastcc double @cdet(i64 noundef 0, i64 noundef 1, i64 noundef 2, i64 noundef 0, i64 noundef 1, i64 noundef 2), !dbg !890
  %7 = tail call double @llvm.fmuladd.f64(double %conv38, double %call46, double %det_sum.2), !dbg !891
  call void @llvm.dbg.value(metadata double %7, metadata !863, metadata !DIExpression()), !dbg !864
  br label %if.end47, !dbg !892

if.end47:                                         ; preds = %if.then41, %if.end34
  %det_sum.3 = phi double [ %7, %if.then41 ], [ %det_sum.2, %if.end34 ], !dbg !864
  call void @llvm.dbg.value(metadata double %det_sum.3, metadata !863, metadata !DIExpression()), !dbg !864
  ret double %det_sum.3, !dbg !893
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable
define internal fastcc double @cdet(i64 noundef %r0, i64 noundef %r1, i64 noundef %r2, i64 noundef %c0, i64 noundef %c1, i64 noundef %c2) unnamed_addr #12 !dbg !894 {
entry:
  call void @llvm.dbg.value(metadata ptr @trans_mtx, metadata !898, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %r0, metadata !899, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %r1, metadata !900, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %r2, metadata !901, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %c0, metadata !902, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %c1, metadata !903, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata i64 %c2, metadata !904, metadata !DIExpression()), !dbg !906
  %arrayidx2 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %r0, i64 %c0, !dbg !907
  %0 = load float, ptr %arrayidx2, align 4, !dbg !907
  %arrayidx5 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %r1, i64 %c1, !dbg !908
  %1 = load float, ptr %arrayidx5, align 4, !dbg !908
  %mul = fmul float %0, %1, !dbg !909
  %arrayidx8 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %r2, i64 %c2, !dbg !910
  %2 = load float, ptr %arrayidx8, align 4, !dbg !910
  %mul9 = fmul float %mul, %2, !dbg !911
  %conv = fpext float %mul9 to double, !dbg !907
  call void @llvm.dbg.value(metadata double %conv, metadata !905, metadata !DIExpression()), !dbg !906
  %arrayidx12 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %r1, i64 %c0, !dbg !912
  %3 = load float, ptr %arrayidx12, align 4, !dbg !912
  %arrayidx15 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %r2, i64 %c1, !dbg !913
  %4 = load float, ptr %arrayidx15, align 4, !dbg !913
  %mul16 = fmul float %3, %4, !dbg !914
  %arrayidx19 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %r0, i64 %c2, !dbg !915
  %5 = load float, ptr %arrayidx19, align 4, !dbg !915
  %mul20 = fmul float %mul16, %5, !dbg !916
  %conv21 = fpext float %mul20 to double, !dbg !912
  %add = fadd double %conv, %conv21, !dbg !917
  call void @llvm.dbg.value(metadata double %add, metadata !905, metadata !DIExpression()), !dbg !906
  %arrayidx24 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %r2, i64 %c0, !dbg !918
  %6 = load float, ptr %arrayidx24, align 4, !dbg !918
  %arrayidx27 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %r0, i64 %c1, !dbg !919
  %7 = load float, ptr %arrayidx27, align 4, !dbg !919
  %mul28 = fmul float %6, %7, !dbg !920
  %arrayidx31 = getelementptr inbounds [4 x [4 x float]], ptr @trans_mtx, i64 0, i64 %r1, i64 %c2, !dbg !921
  %8 = load float, ptr %arrayidx31, align 4, !dbg !921
  %mul32 = fmul float %mul28, %8, !dbg !922
  %conv33 = fpext float %mul32 to double, !dbg !918
  %add34 = fadd double %add, %conv33, !dbg !923
  call void @llvm.dbg.value(metadata double %add34, metadata !905, metadata !DIExpression()), !dbg !906
  %mul41 = fmul float %1, %6, !dbg !924
  %mul45 = fmul float %5, %mul41, !dbg !925
  %conv46 = fpext float %mul45 to double, !dbg !926
  %sub = fsub double %add34, %conv46, !dbg !927
  call void @llvm.dbg.value(metadata double %sub, metadata !905, metadata !DIExpression()), !dbg !906
  %mul53 = fmul float %3, %7, !dbg !928
  %mul57 = fmul float %2, %mul53, !dbg !929
  %conv58 = fpext float %mul57 to double, !dbg !930
  %sub59 = fsub double %sub, %conv58, !dbg !931
  call void @llvm.dbg.value(metadata double %sub59, metadata !905, metadata !DIExpression()), !dbg !906
  %mul66 = fmul float %0, %4, !dbg !932
  %mul70 = fmul float %mul66, %8, !dbg !933
  %conv71 = fpext float %mul70 to double, !dbg !934
  %sub72 = fsub double %sub59, %conv71, !dbg !935
  call void @llvm.dbg.value(metadata double %sub72, metadata !905, metadata !DIExpression()), !dbg !906
  ret double %sub72, !dbg !936
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree noinline nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree noinline norecurse nosync nounwind writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nosync nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nofree nounwind }
attributes #16 = { argmemonly nofree nounwind willreturn writeonly }
attributes #17 = { cold }
attributes #18 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ps_fd", scope: !2, file: !3, line: 46, type: !45, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "glibps.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity/glibps", checksumkind: CSK_MD5, checksum: "da68ca0a4b1c584292cfb9d81245e715")
!4 = !{!5}
!5 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!6 = !{!7, !17, !25, !27, !29, !0, !31, !33, !35, !37, !39, !41, !43}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "trans_mtx", scope: !2, file: !3, line: 35, type: !9, isLocal: true, isDefinition: true)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "Matrix", file: !10, line: 31, baseType: !11)
!10 = !DIFile(filename: "./pslib.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity/glibps", checksumkind: CSK_MD5, checksum: "47df8265542401f634629448fc73856a")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 28, size: 512, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !11, file: !10, line: 30, baseType: !14, size: 512)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 512, elements: !15)
!15 = !{!16, !16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "prp", scope: !2, file: !3, line: 36, type: !19, isLocal: true, isDefinition: true)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex2", file: !10, line: 26, baseType: !20)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 23, size: 128, elements: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !20, file: !10, line: 25, baseType: !23, size: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 128, elements: !24)
!24 = !{!16}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "view_rotx", scope: !2, file: !3, line: 38, type: !5, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "view_roty", scope: !2, file: !3, line: 38, type: !5, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "view_zoom", scope: !2, file: !3, line: 39, type: !5, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "active_prp", scope: !2, file: !3, line: 37, type: !19, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "clip_front", scope: !2, file: !3, line: 43, type: !5, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "clip_back", scope: !2, file: !3, line: 43, type: !5, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "clip_right", scope: !2, file: !3, line: 41, type: !5, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "clip_left", scope: !2, file: !3, line: 41, type: !5, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "clip_top", scope: !2, file: !3, line: 42, type: !5, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "clip_bottom", scope: !2, file: !3, line: 42, type: !5, isLocal: true, isDefinition: true)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !47, line: 7, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 49, size: 1728, elements: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!50 = !{!51, !53, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !69, !71, !72, !73, !77, !79, !81, !85, !88, !90, !93, !96, !97, !99, !103, !104}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 51, baseType: !52, size: 32)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 54, baseType: !54, size: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 55, baseType: !54, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 56, baseType: !54, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 57, baseType: !54, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 58, baseType: !54, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 59, baseType: !54, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 60, baseType: !54, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 61, baseType: !54, size: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 64, baseType: !54, size: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 65, baseType: !54, size: 64, offset: 640)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 66, baseType: !54, size: 64, offset: 704)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 68, baseType: !67, size: 64, offset: 768)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 36, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 70, baseType: !70, size: 64, offset: 832)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 72, baseType: !52, size: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 73, baseType: !52, size: 32, offset: 928)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 74, baseType: !74, size: 64, offset: 960)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !75, line: 152, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!76 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 77, baseType: !78, size: 16, offset: 1024)
!78 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 78, baseType: !80, size: 8, offset: 1040)
!80 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 79, baseType: !82, size: 8, offset: 1048)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 8, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 1)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 81, baseType: !86, size: 64, offset: 1088)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 43, baseType: null)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 89, baseType: !89, size: 64, offset: 1152)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !75, line: 153, baseType: !76)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !48, file: !49, line: 91, baseType: !91, size: 64, offset: 1216)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !49, line: 37, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !48, file: !49, line: 92, baseType: !94, size: 64, offset: 1280)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !49, line: 38, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !48, file: !49, line: 93, baseType: !70, size: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !48, file: !49, line: 94, baseType: !98, size: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !48, file: !49, line: 95, baseType: !100, size: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 46, baseType: !102)
!101 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 96, baseType: !52, size: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 98, baseType: !105, size: 160, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 160, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !{i32 7, !"Dwarf Version", i32 5}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 4}
!111 = !{i32 7, !"PIC Level", i32 2}
!112 = !{i32 7, !"PIE Level", i32 2}
!113 = !{i32 7, !"uwtable", i32 2}
!114 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!115 = distinct !DISubprogram(name: "ps_open", scope: !3, file: !3, line: 70, type: !116, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{!76, !54}
!118 = !{!119}
!119 = !DILocalVariable(name: "file", arg: 1, scope: !115, file: !3, line: 70, type: !54)
!120 = !DILocation(line: 0, scope: !115)
!121 = !DILocation(line: 72, column: 20, scope: !122)
!122 = distinct !DILexicalBlock(scope: !115, file: !3, line: 72, column: 11)
!123 = !DILocation(line: 72, column: 18, scope: !122)
!124 = !DILocation(line: 72, column: 40, scope: !122)
!125 = !DILocation(line: 72, column: 11, scope: !115)
!126 = !DILocation(line: 74, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !122, file: !3, line: 73, column: 7)
!128 = !DILocation(line: 75, column: 6, scope: !127)
!129 = !DILocation(line: 79, column: 7, scope: !115)
!130 = !DILocation(line: 80, column: 16, scope: !115)
!131 = !DILocation(line: 80, column: 7, scope: !115)
!132 = !DILocation(line: 81, column: 16, scope: !115)
!133 = !DILocation(line: 81, column: 7, scope: !115)
!134 = !DILocation(line: 82, column: 16, scope: !115)
!135 = !DILocation(line: 82, column: 7, scope: !115)
!136 = !DILocation(line: 83, column: 16, scope: !115)
!137 = !DILocation(line: 83, column: 7, scope: !115)
!138 = !DILocation(line: 84, column: 16, scope: !115)
!139 = !DILocation(line: 84, column: 7, scope: !115)
!140 = !DILocation(line: 87, column: 16, scope: !115)
!141 = !DILocation(line: 87, column: 7, scope: !115)
!142 = !DILocation(line: 90, column: 7, scope: !115)
!143 = !DILocation(line: 91, column: 7, scope: !115)
!144 = !DILocation(line: 92, column: 7, scope: !115)
!145 = !DILocation(line: 93, column: 1, scope: !115)
!146 = !DISubprogram(name: "perror", scope: !147, file: !147, line: 775, type: !148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!147 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!148 = !DISubroutineType(types: !149)
!149 = !{null, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!152 = !{}
!153 = distinct !DISubprogram(name: "init_transformation", scope: !3, file: !3, line: 380, type: !154, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!154 = !DISubroutineType(types: !155)
!155 = !{null}
!156 = !DILocation(line: 383, column: 7, scope: !153)
!157 = !DILocation(line: 386, column: 16, scope: !153)
!158 = !DILocation(line: 387, column: 16, scope: !153)
!159 = !DILocation(line: 388, column: 16, scope: !153)
!160 = !DILocation(line: 389, column: 16, scope: !153)
!161 = !DILocation(line: 392, column: 29, scope: !153)
!162 = !DILocation(line: 392, column: 17, scope: !153)
!163 = !DILocation(line: 396, column: 18, scope: !153)
!164 = !DILocation(line: 397, column: 18, scope: !153)
!165 = !DILocation(line: 398, column: 18, scope: !153)
!166 = !DILocation(line: 399, column: 18, scope: !153)
!167 = !DILocation(line: 400, column: 18, scope: !153)
!168 = !DILocation(line: 401, column: 18, scope: !153)
!169 = !DILocation(line: 402, column: 1, scope: !153)
!170 = distinct !DISubprogram(name: "setup_transformation", scope: !3, file: !3, line: 332, type: !154, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!171 = !{!172, !173, !174}
!172 = !DILocalVariable(name: "cf_z", scope: !170, file: !3, line: 334, type: !5)
!173 = !DILocalVariable(name: "cb_z", scope: !170, file: !3, line: 334, type: !5)
!174 = !DILocalVariable(name: "pmat", scope: !170, file: !3, line: 335, type: !9)
!175 = !DILocation(line: 335, column: 7, scope: !170)
!176 = !DILocation(line: 335, column: 14, scope: !170)
!177 = !DILocation(line: 338, column: 7, scope: !170)
!178 = !DILocation(line: 341, column: 47, scope: !170)
!179 = !DILocation(line: 341, column: 7, scope: !170)
!180 = !DILocation(line: 342, column: 47, scope: !170)
!181 = !DILocation(line: 342, column: 7, scope: !170)
!182 = !DILocation(line: 345, column: 7, scope: !170)
!183 = !DILocation(line: 346, column: 7, scope: !170)
!184 = !DILocation(line: 349, column: 7, scope: !170)
!185 = !DILocation(line: 350, column: 28, scope: !170)
!186 = !DILocation(line: 350, column: 26, scope: !170)
!187 = !DILocation(line: 350, column: 7, scope: !170)
!188 = !DILocation(line: 350, column: 20, scope: !170)
!189 = !DILocation(line: 351, column: 7, scope: !170)
!190 = !DILocation(line: 353, column: 14, scope: !170)
!191 = !DILocation(line: 353, column: 25, scope: !170)
!192 = !DILocation(line: 353, column: 23, scope: !170)
!193 = !DILocation(line: 353, column: 49, scope: !170)
!194 = !DILocation(line: 353, column: 36, scope: !170)
!195 = !DILocation(line: 0, scope: !170)
!196 = !DILocation(line: 354, column: 25, scope: !170)
!197 = !DILocation(line: 354, column: 23, scope: !170)
!198 = !DILocation(line: 354, column: 49, scope: !170)
!199 = !DILocation(line: 354, column: 36, scope: !170)
!200 = !DILocation(line: 358, column: 30, scope: !170)
!201 = !DILocation(line: 358, column: 43, scope: !170)
!202 = !DILocation(line: 358, column: 41, scope: !170)
!203 = !DILocation(line: 358, column: 27, scope: !170)
!204 = !DILocation(line: 359, column: 30, scope: !170)
!205 = !DILocation(line: 359, column: 41, scope: !170)
!206 = !DILocation(line: 359, column: 39, scope: !170)
!207 = !DILocation(line: 359, column: 27, scope: !170)
!208 = !DILocation(line: 360, column: 35, scope: !170)
!209 = !DILocation(line: 360, column: 27, scope: !170)
!210 = !DILocation(line: 357, column: 7, scope: !170)
!211 = !DILocation(line: 363, column: 31, scope: !170)
!212 = !DILocation(line: 363, column: 29, scope: !170)
!213 = !DILocation(line: 363, column: 44, scope: !170)
!214 = !DILocation(line: 363, column: 55, scope: !170)
!215 = !DILocation(line: 363, column: 41, scope: !170)
!216 = !DILocation(line: 364, column: 31, scope: !170)
!217 = !DILocation(line: 364, column: 29, scope: !170)
!218 = !DILocation(line: 364, column: 44, scope: !170)
!219 = !DILocation(line: 364, column: 56, scope: !170)
!220 = !DILocation(line: 364, column: 41, scope: !170)
!221 = !DILocation(line: 365, column: 29, scope: !170)
!222 = !DILocation(line: 365, column: 36, scope: !170)
!223 = !DILocation(line: 362, column: 7, scope: !170)
!224 = !DILocation(line: 367, column: 7, scope: !170)
!225 = !DILocation(line: 369, column: 1, scope: !170)
!226 = distinct !DISubprogram(name: "ps_close", scope: !3, file: !3, line: 97, type: !154, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!227 = !DILocation(line: 99, column: 11, scope: !228)
!228 = distinct !DILexicalBlock(scope: !226, file: !3, line: 99, column: 11)
!229 = !DILocation(line: 99, column: 17, scope: !228)
!230 = !DILocation(line: 99, column: 11, scope: !226)
!231 = !DILocation(line: 103, column: 7, scope: !226)
!232 = !DILocation(line: 104, column: 16, scope: !226)
!233 = !DILocation(line: 104, column: 7, scope: !226)
!234 = !DILocation(line: 105, column: 15, scope: !226)
!235 = !DILocation(line: 105, column: 7, scope: !226)
!236 = !DILocation(line: 107, column: 13, scope: !226)
!237 = !DILocation(line: 108, column: 1, scope: !226)
!238 = !DISubprogram(name: "fclose", scope: !147, file: !147, line: 213, type: !239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !152)
!239 = !DISubroutineType(types: !240)
!240 = !{!52, !45}
!241 = distinct !DISubprogram(name: "ps_linewidth", scope: !3, file: !3, line: 118, type: !242, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !5}
!244 = !{!245}
!245 = !DILocalVariable(name: "w", arg: 1, scope: !241, file: !3, line: 118, type: !5)
!246 = !DILocation(line: 0, scope: !241)
!247 = !DILocation(line: 120, column: 11, scope: !248)
!248 = distinct !DILexicalBlock(scope: !241, file: !3, line: 120, column: 11)
!249 = !DILocation(line: 120, column: 17, scope: !248)
!250 = !DILocation(line: 120, column: 11, scope: !241)
!251 = !DILocation(line: 123, column: 44, scope: !241)
!252 = !DILocation(line: 123, column: 7, scope: !241)
!253 = !DILocation(line: 124, column: 1, scope: !241)
!254 = distinct !DISubprogram(name: "ps_line", scope: !3, file: !3, line: 134, type: !255, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !265)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !257, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "Vertex", file: !259, line: 14, baseType: !260)
!259 = !DIFile(filename: "./../structs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/radiosity/glibps", checksumkind: CSK_MD5, checksum: "127502bb3b1b1ffc96492ea685802424")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 12, size: 96, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !260, file: !259, line: 13, baseType: !5, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !260, file: !259, line: 13, baseType: !5, size: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "z", scope: !260, file: !259, line: 13, baseType: !5, size: 32, offset: 64)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273}
!266 = !DILocalVariable(name: "p1", arg: 1, scope: !254, file: !3, line: 134, type: !257)
!267 = !DILocalVariable(name: "p2", arg: 2, scope: !254, file: !3, line: 134, type: !257)
!268 = !DILocalVariable(name: "v1", scope: !254, file: !3, line: 136, type: !19)
!269 = !DILocalVariable(name: "v2", scope: !254, file: !3, line: 136, type: !19)
!270 = !DILocalVariable(name: "x1", scope: !254, file: !3, line: 137, type: !5)
!271 = !DILocalVariable(name: "y1", scope: !254, file: !3, line: 137, type: !5)
!272 = !DILocalVariable(name: "x2", scope: !254, file: !3, line: 137, type: !5)
!273 = !DILocalVariable(name: "y2", scope: !254, file: !3, line: 137, type: !5)
!274 = !DILocation(line: 0, scope: !254)
!275 = !DILocation(line: 136, column: 7, scope: !254)
!276 = !DILocation(line: 136, column: 16, scope: !254)
!277 = !DILocation(line: 136, column: 20, scope: !254)
!278 = !DILocation(line: 139, column: 11, scope: !279)
!279 = distinct !DILexicalBlock(scope: !254, file: !3, line: 139, column: 11)
!280 = !DILocation(line: 139, column: 17, scope: !279)
!281 = !DILocation(line: 139, column: 11, scope: !254)
!282 = !DILocation(line: 142, column: 21, scope: !254)
!283 = !DILocation(line: 142, column: 15, scope: !254)
!284 = !DILocation(line: 142, column: 40, scope: !254)
!285 = !DILocation(line: 142, column: 26, scope: !254)
!286 = !DILocation(line: 142, column: 34, scope: !254)
!287 = !DILocation(line: 142, column: 59, scope: !254)
!288 = !DILocation(line: 142, column: 45, scope: !254)
!289 = !DILocation(line: 142, column: 53, scope: !254)
!290 = !DILocation(line: 142, column: 64, scope: !254)
!291 = !DILocation(line: 142, column: 72, scope: !254)
!292 = !DILocation(line: 143, column: 21, scope: !254)
!293 = !DILocation(line: 143, column: 15, scope: !254)
!294 = !DILocation(line: 143, column: 40, scope: !254)
!295 = !DILocation(line: 143, column: 26, scope: !254)
!296 = !DILocation(line: 143, column: 34, scope: !254)
!297 = !DILocation(line: 143, column: 59, scope: !254)
!298 = !DILocation(line: 143, column: 45, scope: !254)
!299 = !DILocation(line: 143, column: 53, scope: !254)
!300 = !DILocation(line: 143, column: 64, scope: !254)
!301 = !DILocation(line: 143, column: 72, scope: !254)
!302 = !DILocation(line: 144, column: 7, scope: !254)
!303 = !DILocation(line: 145, column: 7, scope: !254)
!304 = !DILocation(line: 146, column: 12, scope: !254)
!305 = !DILocation(line: 146, column: 22, scope: !254)
!306 = !DILocation(line: 146, column: 20, scope: !254)
!307 = !DILocation(line: 147, column: 12, scope: !254)
!308 = !DILocation(line: 147, column: 20, scope: !254)
!309 = !DILocation(line: 148, column: 12, scope: !254)
!310 = !DILocation(line: 148, column: 22, scope: !254)
!311 = !DILocation(line: 148, column: 20, scope: !254)
!312 = !DILocation(line: 149, column: 12, scope: !254)
!313 = !DILocation(line: 149, column: 20, scope: !254)
!314 = !DILocation(line: 152, column: 50, scope: !254)
!315 = !DILocation(line: 152, column: 54, scope: !254)
!316 = !DILocation(line: 152, column: 7, scope: !254)
!317 = !DILocation(line: 153, column: 16, scope: !254)
!318 = !DILocation(line: 153, column: 49, scope: !254)
!319 = !DILocation(line: 153, column: 53, scope: !254)
!320 = !DILocation(line: 153, column: 7, scope: !254)
!321 = !DILocation(line: 154, column: 1, scope: !254)
!322 = distinct !DISubprogram(name: "gtransform", scope: !3, file: !3, line: 585, type: !323, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !325, !325, !326}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!327 = !{!328, !329, !330, !331, !332, !333, !334}
!328 = !DILocalVariable(name: "v1", arg: 1, scope: !322, file: !3, line: 585, type: !325)
!329 = !DILocalVariable(name: "v2", arg: 2, scope: !322, file: !3, line: 585, type: !325)
!330 = !DILocalVariable(name: "mtx", arg: 3, scope: !322, file: !3, line: 585, type: !326)
!331 = !DILocalVariable(name: "x", scope: !322, file: !3, line: 587, type: !5)
!332 = !DILocalVariable(name: "y", scope: !322, file: !3, line: 587, type: !5)
!333 = !DILocalVariable(name: "z", scope: !322, file: !3, line: 587, type: !5)
!334 = !DILocalVariable(name: "w", scope: !322, file: !3, line: 587, type: !5)
!335 = !DILocation(line: 0, scope: !322)
!336 = !DILocation(line: 589, column: 12, scope: !322)
!337 = !DILocation(line: 589, column: 23, scope: !322)
!338 = !DILocation(line: 589, column: 21, scope: !322)
!339 = !DILocation(line: 590, column: 24, scope: !322)
!340 = !DILocation(line: 590, column: 22, scope: !322)
!341 = !DILocation(line: 591, column: 25, scope: !322)
!342 = !DILocation(line: 591, column: 23, scope: !322)
!343 = !DILocation(line: 592, column: 26, scope: !322)
!344 = !DILocation(line: 592, column: 24, scope: !322)
!345 = !DILocation(line: 594, column: 12, scope: !322)
!346 = !DILocation(line: 594, column: 23, scope: !322)
!347 = !DILocation(line: 594, column: 9, scope: !322)
!348 = !DILocation(line: 595, column: 24, scope: !322)
!349 = !DILocation(line: 595, column: 10, scope: !322)
!350 = !DILocation(line: 596, column: 25, scope: !322)
!351 = !DILocation(line: 596, column: 11, scope: !322)
!352 = !DILocation(line: 597, column: 26, scope: !322)
!353 = !DILocation(line: 597, column: 12, scope: !322)
!354 = !DILocation(line: 599, column: 12, scope: !322)
!355 = !DILocation(line: 599, column: 23, scope: !322)
!356 = !DILocation(line: 599, column: 9, scope: !322)
!357 = !DILocation(line: 600, column: 24, scope: !322)
!358 = !DILocation(line: 600, column: 10, scope: !322)
!359 = !DILocation(line: 601, column: 25, scope: !322)
!360 = !DILocation(line: 601, column: 11, scope: !322)
!361 = !DILocation(line: 602, column: 26, scope: !322)
!362 = !DILocation(line: 602, column: 12, scope: !322)
!363 = !DILocation(line: 604, column: 12, scope: !322)
!364 = !DILocation(line: 604, column: 23, scope: !322)
!365 = !DILocation(line: 604, column: 9, scope: !322)
!366 = !DILocation(line: 605, column: 24, scope: !322)
!367 = !DILocation(line: 605, column: 10, scope: !322)
!368 = !DILocation(line: 606, column: 25, scope: !322)
!369 = !DILocation(line: 606, column: 11, scope: !322)
!370 = !DILocation(line: 607, column: 26, scope: !322)
!371 = !DILocation(line: 607, column: 12, scope: !322)
!372 = !DILocation(line: 609, column: 16, scope: !322)
!373 = !DILocation(line: 610, column: 8, scope: !322)
!374 = !DILocation(line: 610, column: 17, scope: !322)
!375 = !DILocation(line: 611, column: 9, scope: !322)
!376 = !DILocation(line: 611, column: 18, scope: !322)
!377 = !DILocation(line: 612, column: 10, scope: !322)
!378 = !DILocation(line: 612, column: 19, scope: !322)
!379 = !DILocation(line: 613, column: 1, scope: !322)
!380 = distinct !DISubprogram(name: "ps_polygonedge", scope: !3, file: !3, line: 163, type: !381, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !76, !257}
!383 = !{!384, !385, !386, !387, !388, !389}
!384 = !DILocalVariable(name: "n", arg: 1, scope: !380, file: !3, line: 163, type: !76)
!385 = !DILocalVariable(name: "p_list", arg: 2, scope: !380, file: !3, line: 163, type: !257)
!386 = !DILocalVariable(name: "dcx", scope: !380, file: !3, line: 165, type: !5)
!387 = !DILocalVariable(name: "dcy", scope: !380, file: !3, line: 165, type: !5)
!388 = !DILocalVariable(name: "v", scope: !380, file: !3, line: 166, type: !19)
!389 = !DILocalVariable(name: "i", scope: !380, file: !3, line: 167, type: !76)
!390 = !DILocation(line: 0, scope: !380)
!391 = !DILocation(line: 166, column: 7, scope: !380)
!392 = !DILocation(line: 166, column: 15, scope: !380)
!393 = !DILocation(line: 169, column: 11, scope: !394)
!394 = distinct !DILexicalBlock(scope: !380, file: !3, line: 169, column: 11)
!395 = !DILocation(line: 169, column: 17, scope: !394)
!396 = !DILocation(line: 169, column: 11, scope: !380)
!397 = !DILocation(line: 173, column: 26, scope: !380)
!398 = !DILocation(line: 173, column: 14, scope: !380)
!399 = !DILocation(line: 174, column: 26, scope: !380)
!400 = !DILocation(line: 174, column: 7, scope: !380)
!401 = !DILocation(line: 174, column: 14, scope: !380)
!402 = !DILocation(line: 175, column: 26, scope: !380)
!403 = !DILocation(line: 175, column: 7, scope: !380)
!404 = !DILocation(line: 175, column: 14, scope: !380)
!405 = !DILocation(line: 176, column: 7, scope: !380)
!406 = !DILocation(line: 176, column: 14, scope: !380)
!407 = !DILocation(line: 177, column: 7, scope: !380)
!408 = !DILocation(line: 178, column: 13, scope: !380)
!409 = !DILocation(line: 178, column: 22, scope: !380)
!410 = !DILocation(line: 178, column: 20, scope: !380)
!411 = !DILocation(line: 179, column: 13, scope: !380)
!412 = !DILocation(line: 179, column: 20, scope: !380)
!413 = !DILocation(line: 180, column: 50, scope: !380)
!414 = !DILocation(line: 180, column: 55, scope: !380)
!415 = !DILocation(line: 180, column: 7, scope: !380)
!416 = !DILocation(line: 182, column: 22, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 182, column: 7)
!418 = distinct !DILexicalBlock(scope: !380, file: !3, line: 182, column: 7)
!419 = !DILocation(line: 182, column: 7, scope: !418)
!420 = !DILocation(line: 185, column: 15, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 183, column: 7)
!422 = !DILocation(line: 185, column: 25, scope: !421)
!423 = !DILocation(line: 185, column: 13, scope: !421)
!424 = !DILocation(line: 186, column: 25, scope: !421)
!425 = !DILocation(line: 186, column: 13, scope: !421)
!426 = !DILocation(line: 187, column: 25, scope: !421)
!427 = !DILocation(line: 187, column: 13, scope: !421)
!428 = !DILocation(line: 188, column: 13, scope: !421)
!429 = !DILocation(line: 189, column: 6, scope: !421)
!430 = !DILocation(line: 190, column: 12, scope: !421)
!431 = !DILocation(line: 190, column: 21, scope: !421)
!432 = !DILocation(line: 190, column: 19, scope: !421)
!433 = !DILocation(line: 191, column: 12, scope: !421)
!434 = !DILocation(line: 191, column: 19, scope: !421)
!435 = !DILocation(line: 193, column: 15, scope: !421)
!436 = !DILocation(line: 193, column: 40, scope: !421)
!437 = !DILocation(line: 193, column: 45, scope: !421)
!438 = !DILocation(line: 193, column: 6, scope: !421)
!439 = !DILocation(line: 182, column: 29, scope: !417)
!440 = distinct !{!440, !419, !441, !442, !443}
!441 = !DILocation(line: 194, column: 7, scope: !418)
!442 = !{!"llvm.loop.mustprogress"}
!443 = !{!"llvm.loop.unroll.disable"}
!444 = !DILocation(line: 196, column: 16, scope: !380)
!445 = !DILocation(line: 196, column: 7, scope: !380)
!446 = !DILocation(line: 197, column: 1, scope: !380)
!447 = distinct !DISubprogram(name: "ps_polygon", scope: !3, file: !3, line: 206, type: !381, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !448)
!448 = !{!449, !450, !451, !452, !453, !454}
!449 = !DILocalVariable(name: "n", arg: 1, scope: !447, file: !3, line: 206, type: !76)
!450 = !DILocalVariable(name: "p_list", arg: 2, scope: !447, file: !3, line: 206, type: !257)
!451 = !DILocalVariable(name: "dcx", scope: !447, file: !3, line: 208, type: !5)
!452 = !DILocalVariable(name: "dcy", scope: !447, file: !3, line: 208, type: !5)
!453 = !DILocalVariable(name: "v", scope: !447, file: !3, line: 209, type: !19)
!454 = !DILocalVariable(name: "i", scope: !447, file: !3, line: 210, type: !76)
!455 = !DILocation(line: 0, scope: !447)
!456 = !DILocation(line: 209, column: 7, scope: !447)
!457 = !DILocation(line: 209, column: 15, scope: !447)
!458 = !DILocation(line: 212, column: 11, scope: !459)
!459 = distinct !DILexicalBlock(scope: !447, file: !3, line: 212, column: 11)
!460 = !DILocation(line: 212, column: 17, scope: !459)
!461 = !DILocation(line: 212, column: 11, scope: !447)
!462 = !DILocation(line: 216, column: 26, scope: !447)
!463 = !DILocation(line: 216, column: 14, scope: !447)
!464 = !DILocation(line: 217, column: 26, scope: !447)
!465 = !DILocation(line: 217, column: 7, scope: !447)
!466 = !DILocation(line: 217, column: 14, scope: !447)
!467 = !DILocation(line: 218, column: 26, scope: !447)
!468 = !DILocation(line: 218, column: 7, scope: !447)
!469 = !DILocation(line: 218, column: 14, scope: !447)
!470 = !DILocation(line: 219, column: 7, scope: !447)
!471 = !DILocation(line: 219, column: 14, scope: !447)
!472 = !DILocation(line: 220, column: 7, scope: !447)
!473 = !DILocation(line: 221, column: 13, scope: !447)
!474 = !DILocation(line: 221, column: 22, scope: !447)
!475 = !DILocation(line: 221, column: 20, scope: !447)
!476 = !DILocation(line: 222, column: 13, scope: !447)
!477 = !DILocation(line: 222, column: 20, scope: !447)
!478 = !DILocation(line: 223, column: 50, scope: !447)
!479 = !DILocation(line: 223, column: 55, scope: !447)
!480 = !DILocation(line: 223, column: 7, scope: !447)
!481 = !DILocation(line: 225, column: 22, scope: !482)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 225, column: 7)
!483 = distinct !DILexicalBlock(scope: !447, file: !3, line: 225, column: 7)
!484 = !DILocation(line: 225, column: 7, scope: !483)
!485 = !DILocation(line: 228, column: 15, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !3, line: 226, column: 7)
!487 = !DILocation(line: 228, column: 25, scope: !486)
!488 = !DILocation(line: 228, column: 13, scope: !486)
!489 = !DILocation(line: 229, column: 25, scope: !486)
!490 = !DILocation(line: 229, column: 13, scope: !486)
!491 = !DILocation(line: 230, column: 25, scope: !486)
!492 = !DILocation(line: 230, column: 13, scope: !486)
!493 = !DILocation(line: 231, column: 13, scope: !486)
!494 = !DILocation(line: 232, column: 6, scope: !486)
!495 = !DILocation(line: 233, column: 12, scope: !486)
!496 = !DILocation(line: 233, column: 21, scope: !486)
!497 = !DILocation(line: 233, column: 19, scope: !486)
!498 = !DILocation(line: 234, column: 12, scope: !486)
!499 = !DILocation(line: 234, column: 19, scope: !486)
!500 = !DILocation(line: 236, column: 15, scope: !486)
!501 = !DILocation(line: 236, column: 40, scope: !486)
!502 = !DILocation(line: 236, column: 45, scope: !486)
!503 = !DILocation(line: 236, column: 6, scope: !486)
!504 = !DILocation(line: 225, column: 29, scope: !482)
!505 = distinct !{!505, !484, !506, !442, !443}
!506 = !DILocation(line: 237, column: 7, scope: !483)
!507 = !DILocation(line: 239, column: 16, scope: !447)
!508 = !DILocation(line: 239, column: 7, scope: !447)
!509 = !DILocation(line: 240, column: 1, scope: !447)
!510 = distinct !DISubprogram(name: "ps_spolygon", scope: !3, file: !3, line: 249, type: !511, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !520)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !76, !257, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "Rgb", file: !259, line: 24, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 22, size: 96, elements: !516)
!516 = !{!517, !518, !519}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !515, file: !259, line: 23, baseType: !5, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !515, file: !259, line: 23, baseType: !5, size: 32, offset: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !515, file: !259, line: 23, baseType: !5, size: 32, offset: 64)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528}
!521 = !DILocalVariable(name: "n", arg: 1, scope: !510, file: !3, line: 249, type: !76)
!522 = !DILocalVariable(name: "p_list", arg: 2, scope: !510, file: !3, line: 249, type: !257)
!523 = !DILocalVariable(name: "c_list", arg: 3, scope: !510, file: !3, line: 249, type: !513)
!524 = !DILocalVariable(name: "dcx", scope: !510, file: !3, line: 251, type: !5)
!525 = !DILocalVariable(name: "dcy", scope: !510, file: !3, line: 251, type: !5)
!526 = !DILocalVariable(name: "v", scope: !510, file: !3, line: 252, type: !19)
!527 = !DILocalVariable(name: "i", scope: !510, file: !3, line: 253, type: !76)
!528 = !DILocalVariable(name: "gray_scale", scope: !510, file: !3, line: 254, type: !5)
!529 = !DILocation(line: 0, scope: !510)
!530 = !DILocation(line: 252, column: 7, scope: !510)
!531 = !DILocation(line: 252, column: 15, scope: !510)
!532 = !DILocation(line: 256, column: 11, scope: !533)
!533 = distinct !DILexicalBlock(scope: !510, file: !3, line: 256, column: 11)
!534 = !DILocation(line: 256, column: 17, scope: !533)
!535 = !DILocation(line: 256, column: 11, scope: !510)
!536 = !DILocation(line: 260, column: 26, scope: !510)
!537 = !DILocation(line: 260, column: 14, scope: !510)
!538 = !DILocation(line: 261, column: 26, scope: !510)
!539 = !DILocation(line: 261, column: 7, scope: !510)
!540 = !DILocation(line: 261, column: 14, scope: !510)
!541 = !DILocation(line: 262, column: 26, scope: !510)
!542 = !DILocation(line: 262, column: 7, scope: !510)
!543 = !DILocation(line: 262, column: 14, scope: !510)
!544 = !DILocation(line: 263, column: 7, scope: !510)
!545 = !DILocation(line: 263, column: 14, scope: !510)
!546 = !DILocation(line: 264, column: 7, scope: !510)
!547 = !DILocation(line: 265, column: 13, scope: !510)
!548 = !DILocation(line: 265, column: 22, scope: !510)
!549 = !DILocation(line: 265, column: 20, scope: !510)
!550 = !DILocation(line: 266, column: 13, scope: !510)
!551 = !DILocation(line: 266, column: 20, scope: !510)
!552 = !DILocation(line: 267, column: 50, scope: !510)
!553 = !DILocation(line: 267, column: 55, scope: !510)
!554 = !DILocation(line: 267, column: 7, scope: !510)
!555 = !DILocation(line: 269, column: 22, scope: !556)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 269, column: 7)
!557 = distinct !DILexicalBlock(scope: !510, file: !3, line: 269, column: 7)
!558 = !DILocation(line: 269, column: 7, scope: !557)
!559 = !DILocation(line: 272, column: 15, scope: !560)
!560 = distinct !DILexicalBlock(scope: !556, file: !3, line: 270, column: 7)
!561 = !DILocation(line: 272, column: 25, scope: !560)
!562 = !DILocation(line: 272, column: 13, scope: !560)
!563 = !DILocation(line: 273, column: 25, scope: !560)
!564 = !DILocation(line: 273, column: 13, scope: !560)
!565 = !DILocation(line: 274, column: 25, scope: !560)
!566 = !DILocation(line: 274, column: 13, scope: !560)
!567 = !DILocation(line: 275, column: 13, scope: !560)
!568 = !DILocation(line: 276, column: 6, scope: !560)
!569 = !DILocation(line: 277, column: 12, scope: !560)
!570 = !DILocation(line: 277, column: 21, scope: !560)
!571 = !DILocation(line: 277, column: 19, scope: !560)
!572 = !DILocation(line: 278, column: 12, scope: !560)
!573 = !DILocation(line: 278, column: 19, scope: !560)
!574 = !DILocation(line: 280, column: 15, scope: !560)
!575 = !DILocation(line: 280, column: 40, scope: !560)
!576 = !DILocation(line: 280, column: 45, scope: !560)
!577 = !DILocation(line: 280, column: 6, scope: !560)
!578 = !DILocation(line: 269, column: 29, scope: !556)
!579 = distinct !{!579, !558, !580, !442, !443}
!580 = !DILocation(line: 281, column: 7, scope: !557)
!581 = !DILocation(line: 283, column: 30, scope: !510)
!582 = !DILocation(line: 284, column: 22, scope: !583)
!583 = distinct !DILexicalBlock(scope: !510, file: !3, line: 284, column: 11)
!584 = !DILocation(line: 284, column: 11, scope: !510)
!585 = !DILocation(line: 286, column: 27, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !3, line: 286, column: 16)
!587 = !DILocation(line: 286, column: 16, scope: !583)
!588 = !DILocation(line: 287, column: 6, scope: !586)
!589 = !DILocation(line: 289, column: 16, scope: !510)
!590 = !DILocation(line: 289, column: 54, scope: !510)
!591 = !DILocation(line: 289, column: 7, scope: !510)
!592 = !DILocation(line: 290, column: 1, scope: !510)
!593 = distinct !DISubprogram(name: "ps_clear", scope: !3, file: !3, line: 299, type: !154, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!594 = !DILocation(line: 301, column: 1, scope: !593)
!595 = distinct !DISubprogram(name: "ps_setup_view", scope: !3, file: !3, line: 311, type: !596, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !5, !5, !5, !5}
!598 = !{!599, !600, !601, !602}
!599 = !DILocalVariable(name: "rot_x", arg: 1, scope: !595, file: !3, line: 311, type: !5)
!600 = !DILocalVariable(name: "rot_y", arg: 2, scope: !595, file: !3, line: 311, type: !5)
!601 = !DILocalVariable(name: "dist", arg: 3, scope: !595, file: !3, line: 311, type: !5)
!602 = !DILocalVariable(name: "zoom", arg: 4, scope: !595, file: !3, line: 311, type: !5)
!603 = !DILocation(line: 0, scope: !595)
!604 = !DILocation(line: 313, column: 16, scope: !595)
!605 = !DILocation(line: 314, column: 16, scope: !595)
!606 = !DILocation(line: 315, column: 16, scope: !595)
!607 = !DILocation(line: 316, column: 16, scope: !595)
!608 = !DILocation(line: 317, column: 17, scope: !595)
!609 = !DILocation(line: 318, column: 17, scope: !595)
!610 = !DILocation(line: 321, column: 7, scope: !595)
!611 = !DILocation(line: 322, column: 1, scope: !595)
!612 = distinct !DISubprogram(name: "gset_unit_matrix", scope: !3, file: !3, line: 411, type: !613, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !615)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !326}
!615 = !{!616, !617, !618}
!616 = !DILocalVariable(name: "mtx", arg: 1, scope: !612, file: !3, line: 411, type: !326)
!617 = !DILocalVariable(name: "row", scope: !612, file: !3, line: 413, type: !76)
!618 = !DILocalVariable(name: "col", scope: !612, file: !3, line: 413, type: !76)
!619 = !DILocation(line: 0, scope: !612)
!620 = !DILocation(line: 418, column: 22, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 417, column: 6)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 417, column: 6)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 416, column: 7)
!624 = distinct !DILexicalBlock(scope: !612, file: !3, line: 416, column: 7)
!625 = !DILocation(line: 421, column: 7, scope: !626)
!626 = distinct !DILexicalBlock(scope: !612, file: !3, line: 421, column: 7)
!627 = !DILocation(line: 422, column: 6, scope: !628)
!628 = distinct !DILexicalBlock(scope: !626, file: !3, line: 421, column: 7)
!629 = !DILocation(line: 422, column: 23, scope: !628)
!630 = !DILocation(line: 421, column: 35, scope: !628)
!631 = !DILocation(line: 421, column: 26, scope: !628)
!632 = distinct !{!632, !625, !633, !442, !443}
!633 = !DILocation(line: 422, column: 25, scope: !626)
!634 = !DILocation(line: 423, column: 1, scope: !612)
!635 = distinct !DISubprogram(name: "grotate_x_matrix", scope: !3, file: !3, line: 531, type: !636, scopeLine: 532, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !638)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !76, !326, !5}
!638 = !{!639, !640, !641, !642, !643, !644}
!639 = !DILocalVariable(name: "precat", arg: 1, scope: !635, file: !3, line: 531, type: !76)
!640 = !DILocalVariable(name: "m1", arg: 2, scope: !635, file: !3, line: 531, type: !326)
!641 = !DILocalVariable(name: "rot", arg: 3, scope: !635, file: !3, line: 531, type: !5)
!642 = !DILocalVariable(name: "rmat", scope: !635, file: !3, line: 533, type: !9)
!643 = !DILocalVariable(name: "s_val", scope: !635, file: !3, line: 534, type: !5)
!644 = !DILocalVariable(name: "c_val", scope: !635, file: !3, line: 534, type: !5)
!645 = !DILocation(line: 0, scope: !635)
!646 = !DILocation(line: 533, column: 7, scope: !635)
!647 = !DILocation(line: 533, column: 14, scope: !635)
!648 = !DILocation(line: 537, column: 7, scope: !635)
!649 = !DILocation(line: 540, column: 20, scope: !635)
!650 = !DILocation(line: 540, column: 24, scope: !635)
!651 = !DILocation(line: 540, column: 31, scope: !635)
!652 = !DILocation(line: 540, column: 15, scope: !635)
!653 = !DILocation(line: 541, column: 15, scope: !635)
!654 = !DILocation(line: 542, column: 7, scope: !635)
!655 = !DILocation(line: 542, column: 20, scope: !635)
!656 = !DILocation(line: 543, column: 7, scope: !635)
!657 = !DILocation(line: 543, column: 20, scope: !635)
!658 = !DILocation(line: 544, column: 22, scope: !635)
!659 = !DILocation(line: 544, column: 7, scope: !635)
!660 = !DILocation(line: 544, column: 20, scope: !635)
!661 = !DILocation(line: 545, column: 7, scope: !635)
!662 = !DILocation(line: 545, column: 20, scope: !635)
!663 = !DILocation(line: 548, column: 7, scope: !635)
!664 = !DILocation(line: 549, column: 1, scope: !635)
!665 = distinct !DISubprogram(name: "grotate_y_matrix", scope: !3, file: !3, line: 554, type: !636, scopeLine: 555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !666)
!666 = !{!667, !668, !669, !670, !671, !672}
!667 = !DILocalVariable(name: "precat", arg: 1, scope: !665, file: !3, line: 554, type: !76)
!668 = !DILocalVariable(name: "m1", arg: 2, scope: !665, file: !3, line: 554, type: !326)
!669 = !DILocalVariable(name: "rot", arg: 3, scope: !665, file: !3, line: 554, type: !5)
!670 = !DILocalVariable(name: "rmat", scope: !665, file: !3, line: 556, type: !9)
!671 = !DILocalVariable(name: "s_val", scope: !665, file: !3, line: 557, type: !5)
!672 = !DILocalVariable(name: "c_val", scope: !665, file: !3, line: 557, type: !5)
!673 = !DILocation(line: 0, scope: !665)
!674 = !DILocation(line: 556, column: 7, scope: !665)
!675 = !DILocation(line: 556, column: 14, scope: !665)
!676 = !DILocation(line: 560, column: 7, scope: !665)
!677 = !DILocation(line: 563, column: 20, scope: !665)
!678 = !DILocation(line: 563, column: 24, scope: !665)
!679 = !DILocation(line: 563, column: 31, scope: !665)
!680 = !DILocation(line: 563, column: 15, scope: !665)
!681 = !DILocation(line: 564, column: 15, scope: !665)
!682 = !DILocation(line: 565, column: 20, scope: !665)
!683 = !DILocation(line: 566, column: 22, scope: !665)
!684 = !DILocation(line: 566, column: 7, scope: !665)
!685 = !DILocation(line: 566, column: 20, scope: !665)
!686 = !DILocation(line: 567, column: 7, scope: !665)
!687 = !DILocation(line: 567, column: 20, scope: !665)
!688 = !DILocation(line: 568, column: 7, scope: !665)
!689 = !DILocation(line: 568, column: 20, scope: !665)
!690 = !DILocation(line: 571, column: 7, scope: !665)
!691 = !DILocation(line: 572, column: 1, scope: !665)
!692 = distinct !DISubprogram(name: "ginverse_matrix", scope: !3, file: !3, line: 625, type: !693, scopeLine: 626, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !326, !326}
!695 = !{!696, !697, !698}
!696 = !DILocalVariable(name: "m1", arg: 1, scope: !692, file: !3, line: 625, type: !326)
!697 = !DILocalVariable(name: "m2", arg: 2, scope: !692, file: !3, line: 625, type: !326)
!698 = !DILocalVariable(name: "detval", scope: !692, file: !3, line: 627, type: !699)
!699 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!700 = !DILocation(line: 0, scope: !692)
!701 = !DILocation(line: 630, column: 16, scope: !692)
!702 = !DILocation(line: 633, column: 22, scope: !692)
!703 = !DILocation(line: 633, column: 47, scope: !692)
!704 = !DILocation(line: 633, column: 19, scope: !692)
!705 = !DILocation(line: 634, column: 22, scope: !692)
!706 = !DILocation(line: 634, column: 21, scope: !692)
!707 = !DILocation(line: 634, column: 47, scope: !692)
!708 = !DILocation(line: 634, column: 7, scope: !692)
!709 = !DILocation(line: 634, column: 19, scope: !692)
!710 = !DILocation(line: 635, column: 22, scope: !692)
!711 = !DILocation(line: 635, column: 47, scope: !692)
!712 = !DILocation(line: 635, column: 7, scope: !692)
!713 = !DILocation(line: 635, column: 19, scope: !692)
!714 = !DILocation(line: 636, column: 22, scope: !692)
!715 = !DILocation(line: 636, column: 21, scope: !692)
!716 = !DILocation(line: 636, column: 47, scope: !692)
!717 = !DILocation(line: 636, column: 7, scope: !692)
!718 = !DILocation(line: 636, column: 19, scope: !692)
!719 = !DILocation(line: 638, column: 22, scope: !692)
!720 = !DILocation(line: 638, column: 21, scope: !692)
!721 = !DILocation(line: 638, column: 47, scope: !692)
!722 = !DILocation(line: 638, column: 7, scope: !692)
!723 = !DILocation(line: 638, column: 19, scope: !692)
!724 = !DILocation(line: 639, column: 22, scope: !692)
!725 = !DILocation(line: 639, column: 47, scope: !692)
!726 = !DILocation(line: 639, column: 7, scope: !692)
!727 = !DILocation(line: 639, column: 19, scope: !692)
!728 = !DILocation(line: 640, column: 22, scope: !692)
!729 = !DILocation(line: 640, column: 21, scope: !692)
!730 = !DILocation(line: 640, column: 47, scope: !692)
!731 = !DILocation(line: 640, column: 7, scope: !692)
!732 = !DILocation(line: 640, column: 19, scope: !692)
!733 = !DILocation(line: 641, column: 22, scope: !692)
!734 = !DILocation(line: 641, column: 47, scope: !692)
!735 = !DILocation(line: 641, column: 7, scope: !692)
!736 = !DILocation(line: 641, column: 19, scope: !692)
!737 = !DILocation(line: 643, column: 22, scope: !692)
!738 = !DILocation(line: 643, column: 47, scope: !692)
!739 = !DILocation(line: 643, column: 7, scope: !692)
!740 = !DILocation(line: 643, column: 19, scope: !692)
!741 = !DILocation(line: 644, column: 22, scope: !692)
!742 = !DILocation(line: 644, column: 21, scope: !692)
!743 = !DILocation(line: 644, column: 47, scope: !692)
!744 = !DILocation(line: 644, column: 7, scope: !692)
!745 = !DILocation(line: 644, column: 19, scope: !692)
!746 = !DILocation(line: 645, column: 22, scope: !692)
!747 = !DILocation(line: 645, column: 47, scope: !692)
!748 = !DILocation(line: 645, column: 7, scope: !692)
!749 = !DILocation(line: 645, column: 19, scope: !692)
!750 = !DILocation(line: 646, column: 22, scope: !692)
!751 = !DILocation(line: 646, column: 21, scope: !692)
!752 = !DILocation(line: 646, column: 47, scope: !692)
!753 = !DILocation(line: 646, column: 7, scope: !692)
!754 = !DILocation(line: 646, column: 19, scope: !692)
!755 = !DILocation(line: 648, column: 22, scope: !692)
!756 = !DILocation(line: 648, column: 21, scope: !692)
!757 = !DILocation(line: 648, column: 47, scope: !692)
!758 = !DILocation(line: 648, column: 7, scope: !692)
!759 = !DILocation(line: 648, column: 19, scope: !692)
!760 = !DILocation(line: 649, column: 22, scope: !692)
!761 = !DILocation(line: 649, column: 47, scope: !692)
!762 = !DILocation(line: 649, column: 7, scope: !692)
!763 = !DILocation(line: 649, column: 19, scope: !692)
!764 = !DILocation(line: 650, column: 22, scope: !692)
!765 = !DILocation(line: 650, column: 21, scope: !692)
!766 = !DILocation(line: 650, column: 47, scope: !692)
!767 = !DILocation(line: 650, column: 7, scope: !692)
!768 = !DILocation(line: 650, column: 19, scope: !692)
!769 = !DILocation(line: 651, column: 22, scope: !692)
!770 = !DILocation(line: 651, column: 47, scope: !692)
!771 = !DILocation(line: 651, column: 7, scope: !692)
!772 = !DILocation(line: 651, column: 19, scope: !692)
!773 = !DILocation(line: 652, column: 1, scope: !692)
!774 = distinct !DISubprogram(name: "gconcatenate_matrix", scope: !3, file: !3, line: 437, type: !775, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !777)
!775 = !DISubroutineType(types: !776)
!776 = !{null, !76, !326, !326}
!777 = !{!778, !779, !780, !781, !782, !783, !784, !785}
!778 = !DILocalVariable(name: "precat", arg: 1, scope: !774, file: !3, line: 437, type: !76)
!779 = !DILocalVariable(name: "m1", arg: 2, scope: !774, file: !3, line: 437, type: !326)
!780 = !DILocalVariable(name: "m2", arg: 3, scope: !774, file: !3, line: 437, type: !326)
!781 = !DILocalVariable(name: "row", scope: !774, file: !3, line: 439, type: !76)
!782 = !DILocalVariable(name: "col", scope: !774, file: !3, line: 439, type: !76)
!783 = !DILocalVariable(name: "scan", scope: !774, file: !3, line: 439, type: !76)
!784 = !DILocalVariable(name: "dest", scope: !774, file: !3, line: 440, type: !326)
!785 = !DILocalVariable(name: "temp", scope: !774, file: !3, line: 441, type: !9)
!786 = !DILocation(line: 0, scope: !774)
!787 = !DILocation(line: 441, column: 7, scope: !774)
!788 = !DILocation(line: 441, column: 14, scope: !774)
!789 = !DILocation(line: 453, column: 7, scope: !790)
!790 = distinct !DILexicalBlock(scope: !774, file: !3, line: 453, column: 7)
!791 = !DILocation(line: 454, column: 6, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 454, column: 6)
!793 = distinct !DILexicalBlock(scope: !790, file: !3, line: 453, column: 7)
!794 = !DILocation(line: 456, column: 5, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !3, line: 455, column: 6)
!796 = distinct !DILexicalBlock(scope: !792, file: !3, line: 454, column: 6)
!797 = !DILocation(line: 457, column: 5, scope: !798)
!798 = distinct !DILexicalBlock(scope: !795, file: !3, line: 457, column: 5)
!799 = !DILocation(line: 459, column: 10, scope: !800)
!800 = distinct !DILexicalBlock(scope: !798, file: !3, line: 457, column: 5)
!801 = !DILocation(line: 459, column: 29, scope: !800)
!802 = !DILocation(line: 458, column: 21, scope: !800)
!803 = !DILocation(line: 457, column: 36, scope: !800)
!804 = !DILocation(line: 457, column: 26, scope: !800)
!805 = distinct !{!805, !797, !806, !442, !443}
!806 = !DILocation(line: 459, column: 44, scope: !798)
!807 = !DILocation(line: 454, column: 34, scope: !796)
!808 = !DILocation(line: 454, column: 25, scope: !796)
!809 = distinct !{!809, !791, !810, !442, !443}
!810 = !DILocation(line: 460, column: 6, scope: !792)
!811 = !DILocation(line: 453, column: 35, scope: !793)
!812 = !DILocation(line: 453, column: 26, scope: !793)
!813 = distinct !{!813, !789, !814, !442, !443}
!814 = !DILocation(line: 460, column: 6, scope: !790)
!815 = !DILocation(line: 462, column: 15, scope: !774)
!816 = !DILocation(line: 463, column: 1, scope: !774)
!817 = distinct !DISubprogram(name: "gscale_matrix", scope: !3, file: !3, line: 475, type: !818, scopeLine: 476, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !820)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !76, !326, !5, !5, !5}
!820 = !{!821, !822, !823, !824, !825, !826}
!821 = !DILocalVariable(name: "precat", arg: 1, scope: !817, file: !3, line: 475, type: !76)
!822 = !DILocalVariable(name: "m1", arg: 2, scope: !817, file: !3, line: 475, type: !326)
!823 = !DILocalVariable(name: "sx", arg: 3, scope: !817, file: !3, line: 475, type: !5)
!824 = !DILocalVariable(name: "sy", arg: 4, scope: !817, file: !3, line: 475, type: !5)
!825 = !DILocalVariable(name: "sz", arg: 5, scope: !817, file: !3, line: 475, type: !5)
!826 = !DILocalVariable(name: "smat", scope: !817, file: !3, line: 477, type: !9)
!827 = !DILocation(line: 0, scope: !817)
!828 = !DILocation(line: 477, column: 7, scope: !817)
!829 = !DILocation(line: 477, column: 14, scope: !817)
!830 = !DILocation(line: 480, column: 7, scope: !817)
!831 = !DILocation(line: 483, column: 20, scope: !817)
!832 = !DILocation(line: 484, column: 7, scope: !817)
!833 = !DILocation(line: 484, column: 20, scope: !817)
!834 = !DILocation(line: 485, column: 7, scope: !817)
!835 = !DILocation(line: 485, column: 20, scope: !817)
!836 = !DILocation(line: 488, column: 7, scope: !817)
!837 = !DILocation(line: 489, column: 1, scope: !817)
!838 = distinct !DISubprogram(name: "gtranslate_matrix", scope: !3, file: !3, line: 502, type: !818, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !839)
!839 = !{!840, !841, !842, !843, !844, !845}
!840 = !DILocalVariable(name: "precat", arg: 1, scope: !838, file: !3, line: 502, type: !76)
!841 = !DILocalVariable(name: "m1", arg: 2, scope: !838, file: !3, line: 502, type: !326)
!842 = !DILocalVariable(name: "tx", arg: 3, scope: !838, file: !3, line: 502, type: !5)
!843 = !DILocalVariable(name: "ty", arg: 4, scope: !838, file: !3, line: 502, type: !5)
!844 = !DILocalVariable(name: "tz", arg: 5, scope: !838, file: !3, line: 502, type: !5)
!845 = !DILocalVariable(name: "tmat", scope: !838, file: !3, line: 504, type: !9)
!846 = !DILocation(line: 0, scope: !838)
!847 = !DILocation(line: 504, column: 7, scope: !838)
!848 = !DILocation(line: 504, column: 14, scope: !838)
!849 = !DILocation(line: 507, column: 7, scope: !838)
!850 = !DILocation(line: 510, column: 7, scope: !838)
!851 = !DILocation(line: 510, column: 20, scope: !838)
!852 = !DILocation(line: 511, column: 7, scope: !838)
!853 = !DILocation(line: 511, column: 20, scope: !838)
!854 = !DILocation(line: 512, column: 7, scope: !838)
!855 = !DILocation(line: 512, column: 20, scope: !838)
!856 = !DILocation(line: 515, column: 7, scope: !838)
!857 = !DILocation(line: 516, column: 1, scope: !838)
!858 = distinct !DISubprogram(name: "det", scope: !3, file: !3, line: 656, type: !859, scopeLine: 657, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!699, !326}
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "m", arg: 1, scope: !858, file: !3, line: 656, type: !326)
!863 = !DILocalVariable(name: "det_sum", scope: !858, file: !3, line: 658, type: !699)
!864 = !DILocation(line: 0, scope: !858)
!865 = !DILocation(line: 662, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !858, file: !3, line: 662, column: 11)
!867 = !DILocation(line: 662, column: 22, scope: !866)
!868 = !DILocation(line: 662, column: 11, scope: !858)
!869 = !DILocation(line: 663, column: 30, scope: !866)
!870 = !DILocation(line: 663, column: 14, scope: !866)
!871 = !DILocation(line: 663, column: 6, scope: !866)
!872 = !DILocation(line: 664, column: 11, scope: !873)
!873 = distinct !DILexicalBlock(scope: !858, file: !3, line: 664, column: 11)
!874 = !DILocation(line: 664, column: 22, scope: !873)
!875 = !DILocation(line: 664, column: 11, scope: !858)
!876 = !DILocation(line: 665, column: 30, scope: !873)
!877 = !DILocation(line: 665, column: 14, scope: !873)
!878 = !DILocation(line: 665, column: 6, scope: !873)
!879 = !DILocation(line: 666, column: 11, scope: !880)
!880 = distinct !DILexicalBlock(scope: !858, file: !3, line: 666, column: 11)
!881 = !DILocation(line: 666, column: 22, scope: !880)
!882 = !DILocation(line: 666, column: 11, scope: !858)
!883 = !DILocation(line: 667, column: 30, scope: !880)
!884 = !DILocation(line: 667, column: 14, scope: !880)
!885 = !DILocation(line: 667, column: 6, scope: !880)
!886 = !DILocation(line: 668, column: 11, scope: !887)
!887 = distinct !DILexicalBlock(scope: !858, file: !3, line: 668, column: 11)
!888 = !DILocation(line: 668, column: 22, scope: !887)
!889 = !DILocation(line: 668, column: 11, scope: !858)
!890 = !DILocation(line: 669, column: 30, scope: !887)
!891 = !DILocation(line: 669, column: 14, scope: !887)
!892 = !DILocation(line: 669, column: 6, scope: !887)
!893 = !DILocation(line: 671, column: 7, scope: !858)
!894 = distinct !DISubprogram(name: "cdet", scope: !3, file: !3, line: 675, type: !895, scopeLine: 676, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!699, !326, !76, !76, !76, !76, !76, !76}
!897 = !{!898, !899, !900, !901, !902, !903, !904, !905}
!898 = !DILocalVariable(name: "m", arg: 1, scope: !894, file: !3, line: 675, type: !326)
!899 = !DILocalVariable(name: "r0", arg: 2, scope: !894, file: !3, line: 675, type: !76)
!900 = !DILocalVariable(name: "r1", arg: 3, scope: !894, file: !3, line: 675, type: !76)
!901 = !DILocalVariable(name: "r2", arg: 4, scope: !894, file: !3, line: 675, type: !76)
!902 = !DILocalVariable(name: "c0", arg: 5, scope: !894, file: !3, line: 675, type: !76)
!903 = !DILocalVariable(name: "c1", arg: 6, scope: !894, file: !3, line: 675, type: !76)
!904 = !DILocalVariable(name: "c2", arg: 7, scope: !894, file: !3, line: 675, type: !76)
!905 = !DILocalVariable(name: "temp", scope: !894, file: !3, line: 677, type: !699)
!906 = !DILocation(line: 0, scope: !894)
!907 = !DILocation(line: 679, column: 17, scope: !894)
!908 = !DILocation(line: 679, column: 32, scope: !894)
!909 = !DILocation(line: 679, column: 30, scope: !894)
!910 = !DILocation(line: 679, column: 47, scope: !894)
!911 = !DILocation(line: 679, column: 45, scope: !894)
!912 = !DILocation(line: 680, column: 17, scope: !894)
!913 = !DILocation(line: 680, column: 32, scope: !894)
!914 = !DILocation(line: 680, column: 30, scope: !894)
!915 = !DILocation(line: 680, column: 47, scope: !894)
!916 = !DILocation(line: 680, column: 45, scope: !894)
!917 = !DILocation(line: 680, column: 14, scope: !894)
!918 = !DILocation(line: 681, column: 17, scope: !894)
!919 = !DILocation(line: 681, column: 32, scope: !894)
!920 = !DILocation(line: 681, column: 30, scope: !894)
!921 = !DILocation(line: 681, column: 47, scope: !894)
!922 = !DILocation(line: 681, column: 45, scope: !894)
!923 = !DILocation(line: 681, column: 14, scope: !894)
!924 = !DILocation(line: 683, column: 30, scope: !894)
!925 = !DILocation(line: 683, column: 45, scope: !894)
!926 = !DILocation(line: 683, column: 17, scope: !894)
!927 = !DILocation(line: 683, column: 14, scope: !894)
!928 = !DILocation(line: 684, column: 30, scope: !894)
!929 = !DILocation(line: 684, column: 45, scope: !894)
!930 = !DILocation(line: 684, column: 17, scope: !894)
!931 = !DILocation(line: 684, column: 14, scope: !894)
!932 = !DILocation(line: 685, column: 30, scope: !894)
!933 = !DILocation(line: 685, column: 45, scope: !894)
!934 = !DILocation(line: 685, column: 17, scope: !894)
!935 = !DILocation(line: 685, column: 14, scope: !894)
!936 = !DILocation(line: 687, column: 9, scope: !894)
