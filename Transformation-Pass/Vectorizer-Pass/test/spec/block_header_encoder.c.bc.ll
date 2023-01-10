; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/block_header_encoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_header_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_size(ptr nocapture noundef %block) local_unnamed_addr #0 !dbg !38 {
entry:
  %add37 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %block, metadata !104, metadata !DIExpression()), !dbg !123
  %0 = load i32, ptr %block, align 8, !dbg !124, !tbaa !126
  %cmp.not = icmp eq i32 %0, 0, !dbg !133
  br i1 %cmp.not, label %if.end, label %return, !dbg !134

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 6, metadata !105, metadata !DIExpression()), !dbg !123
  %compressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !135
  %1 = load i64, ptr %compressed_size, align 8, !dbg !135, !tbaa !136
  %cmp1.not = icmp eq i64 %1, -1, !dbg !137
  br i1 %cmp1.not, label %if.end10, label %if.then2, !dbg !138

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @lzma_vli_size(i64 noundef %1) #5, !dbg !139
  call void @llvm.dbg.value(metadata i32 %call, metadata !106, metadata !DIExpression()), !dbg !140
  %cmp4 = icmp eq i32 %call, 0, !dbg !141
  br i1 %cmp4, label %return, label %cleanup, !dbg !143

cleanup:                                          ; preds = %if.then2
  %2 = load i64, ptr %compressed_size, align 8, !dbg !144, !tbaa !136
  %cmp6 = icmp eq i64 %2, 0, !dbg !145
  %add9 = add i32 %call, 6
  call void @llvm.dbg.value(metadata i32 undef, metadata !105, metadata !DIExpression()), !dbg !123
  br i1 %cmp6, label %return, label %if.end10

if.end10:                                         ; preds = %cleanup, %if.end
  %size.1 = phi i32 [ %add9, %cleanup ], [ 6, %if.end ], !dbg !146
  call void @llvm.dbg.value(metadata i32 %size.1, metadata !105, metadata !DIExpression()), !dbg !123
  %uncompressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 4, !dbg !147
  %3 = load i64, ptr %uncompressed_size, align 8, !dbg !147, !tbaa !148
  %cmp11.not = icmp eq i64 %3, -1, !dbg !149
  br i1 %cmp11.not, label %if.end23, label %if.then12, !dbg !150

if.then12:                                        ; preds = %if.end10
  %call15 = tail call i32 @lzma_vli_size(i64 noundef %3) #5, !dbg !151
  call void @llvm.dbg.value(metadata i32 %call15, metadata !110, metadata !DIExpression()), !dbg !152
  %cmp16 = icmp eq i32 %call15, 0, !dbg !153
  %add19 = add i32 %call15, %size.1
  call void @llvm.dbg.value(metadata i32 %add19, metadata !105, metadata !DIExpression()), !dbg !123
  br i1 %cmp16, label %return, label %if.end23

if.end23:                                         ; preds = %if.then12, %if.end10
  %size.3 = phi i32 [ %add19, %if.then12 ], [ %size.1, %if.end10 ], !dbg !146
  call void @llvm.dbg.value(metadata i32 %size.3, metadata !105, metadata !DIExpression()), !dbg !123
  %filters = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5, !dbg !155
  %4 = load ptr, ptr %filters, align 8, !dbg !155, !tbaa !157
  %cmp24 = icmp eq ptr %4, null, !dbg !158
  br i1 %cmp24, label %return, label %lor.lhs.false25, !dbg !159

lor.lhs.false25:                                  ; preds = %if.end23
  %5 = load i64, ptr %4, align 8, !dbg !160, !tbaa !161
  %cmp27 = icmp eq i64 %5, -1, !dbg !163
  br i1 %cmp27, label %return, label %for.body, !dbg !164

for.body:                                         ; preds = %lor.lhs.false25, %for.inc
  %arrayidx3196 = phi ptr [ %arrayidx31, %for.inc ], [ %4, %lor.lhs.false25 ]
  %i.095 = phi i64 [ %inc, %for.inc ], [ 0, %lor.lhs.false25 ]
  %size.494 = phi i32 [ %add46, %for.inc ], [ %size.3, %lor.lhs.false25 ]
  call void @llvm.dbg.value(metadata i64 %i.095, metadata !113, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %size.494, metadata !105, metadata !DIExpression()), !dbg !123
  %cmp34 = icmp eq i64 %i.095, 4, !dbg !166
  br i1 %cmp34, label %return, label %if.end36, !dbg !168

if.end36:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %add37) #5, !dbg !169
  call void @llvm.dbg.value(metadata ptr %add37, metadata !117, metadata !DIExpression(DW_OP_deref)), !dbg !170
  %call39 = call i32 @lzma_filter_flags_size(ptr noundef nonnull %add37, ptr noundef nonnull %arrayidx3196) #5, !dbg !171
  call void @llvm.dbg.value(metadata i32 %call39, metadata !120, metadata !DIExpression()), !dbg !172
  %cmp40.not = icmp eq i32 %call39, 0, !dbg !173
  br i1 %cmp40.not, label %for.inc, label %cleanup47

cleanup47:                                        ; preds = %if.end36
  call void @llvm.dbg.value(metadata i32 undef, metadata !105, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #5, !dbg !175
  br label %return

for.inc:                                          ; preds = %if.end36
  %6 = load i32, ptr %add37, align 4, !dbg !176, !tbaa !177
  call void @llvm.dbg.value(metadata i32 %6, metadata !117, metadata !DIExpression()), !dbg !170
  %add46 = add i32 %6, %size.494, !dbg !178
  call void @llvm.dbg.value(metadata i32 undef, metadata !105, metadata !DIExpression()), !dbg !123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %add37) #5, !dbg !175
  %inc = add nuw nsw i64 %i.095, 1, !dbg !179
  call void @llvm.dbg.value(metadata i64 %inc, metadata !113, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i32 %add46, metadata !105, metadata !DIExpression()), !dbg !123
  %7 = load ptr, ptr %filters, align 8, !dbg !180, !tbaa !157
  %arrayidx31 = getelementptr inbounds %struct.lzma_filter, ptr %7, i64 %inc, !dbg !181
  %8 = load i64, ptr %arrayidx31, align 8, !dbg !182, !tbaa !161
  %cmp33.not = icmp eq i64 %8, -1, !dbg !183
  br i1 %cmp33.not, label %for.end, label %for.body, !dbg !184, !llvm.loop !185

for.end:                                          ; preds = %for.inc
  %phi.bo = add i32 %add46, 3, !dbg !189
  %phi.bo98 = and i32 %phi.bo, -4, !dbg !189
  call void @llvm.dbg.value(metadata i32 undef, metadata !105, metadata !DIExpression()), !dbg !123
  %header_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 1, !dbg !190
  store i32 %phi.bo98, ptr %header_size, align 4, !dbg !191, !tbaa !192
  br label %return, !dbg !193

return:                                           ; preds = %for.body, %cleanup47, %if.then2, %for.end, %if.then12, %cleanup, %lor.lhs.false25, %if.end23, %entry
  %retval.8 = phi i32 [ 8, %entry ], [ 0, %for.end ], [ 11, %if.then12 ], [ 11, %cleanup ], [ 11, %lor.lhs.false25 ], [ 11, %if.end23 ], [ 11, %if.then2 ], [ %call39, %cleanup47 ], [ 11, %for.body ], !dbg !123
  ret i32 %retval.8, !dbg !194
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare !dbg !195 i32 @lzma_vli_size(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !199 i32 @lzma_filter_flags_size(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_encode(ptr noundef %block, ptr noundef %out) local_unnamed_addr #0 !dbg !205 {
entry:
  %out_pos = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %block, metadata !212, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata ptr %out, metadata !213, metadata !DIExpression()), !dbg !229
  %call = tail call i64 @lzma_block_unpadded_size(ptr noundef %block) #5, !dbg !230
  %cmp = icmp eq i64 %call, 0, !dbg !232
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !233

lor.lhs.false:                                    ; preds = %entry
  %uncompressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 4, !dbg !234
  %0 = load i64, ptr %uncompressed_size, align 8, !dbg !234, !tbaa !148
  %1 = icmp sgt i64 %0, -2, !dbg !234
  br i1 %1, label %if.end, label %return, !dbg !234

if.end:                                           ; preds = %lor.lhs.false
  %header_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 1, !dbg !235
  %2 = load i32, ptr %header_size, align 4, !dbg !235, !tbaa !192
  %sub = add i32 %2, -4, !dbg !236
  %conv = zext i32 %sub to i64, !dbg !237
  call void @llvm.dbg.value(metadata i64 %conv, metadata !214, metadata !DIExpression()), !dbg !229
  %div128 = lshr i32 %sub, 2, !dbg !238
  %conv5 = trunc i32 %div128 to i8, !dbg !239
  store i8 %conv5, ptr %out, align 1, !dbg !240, !tbaa !241
  %arrayidx6 = getelementptr inbounds i8, ptr %out, i64 1, !dbg !242
  store i8 0, ptr %arrayidx6, align 1, !dbg !243, !tbaa !241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_pos) #5, !dbg !244
  call void @llvm.dbg.value(metadata i64 2, metadata !216, metadata !DIExpression()), !dbg !229
  store i64 2, ptr %out_pos, align 8, !dbg !245, !tbaa !246
  %compressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !247
  %3 = load i64, ptr %compressed_size, align 8, !dbg !247, !tbaa !136
  %cmp7.not = icmp eq i64 %3, -1, !dbg !248
  br i1 %cmp7.not, label %if.end19, label %do.body, !dbg !249

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !216, metadata !DIExpression(DW_OP_deref)), !dbg !229
  %call11 = call i32 @lzma_vli_encode(i64 noundef %3, ptr noundef null, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #5, !dbg !250
  call void @llvm.dbg.value(metadata i32 %call11, metadata !217, metadata !DIExpression()), !dbg !251
  %cmp12.not = icmp eq i32 %call11, 0, !dbg !252
  br i1 %cmp12.not, label %do.end, label %cleanup86

do.end:                                           ; preds = %do.body
  %4 = load i8, ptr %arrayidx6, align 1, !dbg !254, !tbaa !241
  %5 = or i8 %4, 64, !dbg !254
  store i8 %5, ptr %arrayidx6, align 1, !dbg !254, !tbaa !241
  br label %if.end19, !dbg !255

if.end19:                                         ; preds = %do.end, %if.end
  %6 = load i64, ptr %uncompressed_size, align 8, !dbg !256, !tbaa !148
  %cmp21.not = icmp eq i64 %6, -1, !dbg !257
  br i1 %cmp21.not, label %if.end41, label %do.body24, !dbg !258

do.body24:                                        ; preds = %if.end19
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !216, metadata !DIExpression(DW_OP_deref)), !dbg !229
  %call27 = call i32 @lzma_vli_encode(i64 noundef %6, ptr noundef null, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #5, !dbg !259
  call void @llvm.dbg.value(metadata i32 %call27, metadata !221, metadata !DIExpression()), !dbg !260
  %cmp28.not = icmp eq i32 %call27, 0, !dbg !261
  br i1 %cmp28.not, label %do.end36, label %cleanup86

do.end36:                                         ; preds = %do.body24
  %7 = load i8, ptr %arrayidx6, align 1, !dbg !263, !tbaa !241
  %8 = or i8 %7, -128, !dbg !263
  store i8 %8, ptr %arrayidx6, align 1, !dbg !263, !tbaa !241
  br label %if.end41, !dbg !264

if.end41:                                         ; preds = %do.end36, %if.end19
  %filters = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5, !dbg !265
  %9 = load ptr, ptr %filters, align 8, !dbg !265, !tbaa !157
  %cmp42 = icmp eq ptr %9, null, !dbg !267
  br i1 %cmp42, label %cleanup86, label %lor.lhs.false44, !dbg !268

lor.lhs.false44:                                  ; preds = %if.end41
  %10 = load i64, ptr %9, align 8, !dbg !269, !tbaa !161
  %cmp47 = icmp eq i64 %10, -1, !dbg !270
  br i1 %cmp47, label %cleanup86, label %do.body51, !dbg !271

do.body51:                                        ; preds = %lor.lhs.false44, %do.cond69
  %11 = phi ptr [ %12, %do.cond69 ], [ %9, %lor.lhs.false44 ]
  %filter_count.0 = phi i64 [ %inc, %do.cond69 ], [ 0, %lor.lhs.false44 ], !dbg !229
  call void @llvm.dbg.value(metadata i64 %filter_count.0, metadata !225, metadata !DIExpression()), !dbg !229
  %cmp52 = icmp eq i64 %filter_count.0, 4, !dbg !272
  br i1 %cmp52, label %cleanup86, label %do.body56, !dbg !274

do.body56:                                        ; preds = %do.body51
  %add.ptr = getelementptr inbounds %struct.lzma_filter, ptr %11, i64 %filter_count.0, !dbg !275
  call void @llvm.dbg.value(metadata ptr %out_pos, metadata !216, metadata !DIExpression(DW_OP_deref)), !dbg !229
  %call59 = call i32 @lzma_filter_flags_encode(ptr noundef %add.ptr, ptr noundef nonnull %out, ptr noundef nonnull %out_pos, i64 noundef %conv) #5, !dbg !275
  call void @llvm.dbg.value(metadata i32 %call59, metadata !226, metadata !DIExpression()), !dbg !276
  %cmp60.not = icmp eq i32 %call59, 0, !dbg !277
  br i1 %cmp60.not, label %do.cond69, label %cleanup86

do.cond69:                                        ; preds = %do.body56
  %12 = load ptr, ptr %filters, align 8, !dbg !279, !tbaa !157
  %inc = add nuw nsw i64 %filter_count.0, 1, !dbg !280
  call void @llvm.dbg.value(metadata i64 %inc, metadata !225, metadata !DIExpression()), !dbg !229
  %arrayidx71 = getelementptr inbounds %struct.lzma_filter, ptr %12, i64 %inc, !dbg !281
  %13 = load i64, ptr %arrayidx71, align 8, !dbg !282, !tbaa !161
  %cmp73.not = icmp eq i64 %13, -1, !dbg !283
  br i1 %cmp73.not, label %do.end75, label %do.body51, !dbg !284, !llvm.loop !285

do.end75:                                         ; preds = %do.cond69
  %14 = load i8, ptr %arrayidx6, align 1, !dbg !288, !tbaa !241
  %15 = trunc i64 %filter_count.0 to i8, !dbg !288
  %conv80 = or i8 %14, %15, !dbg !288
  store i8 %conv80, ptr %arrayidx6, align 1, !dbg !288, !tbaa !241
  %16 = load i64, ptr %out_pos, align 8, !dbg !289, !tbaa !246
  call void @llvm.dbg.value(metadata i64 %16, metadata !216, metadata !DIExpression()), !dbg !229
  %add.ptr81 = getelementptr inbounds i8, ptr %out, i64 %16, !dbg !289
  %sub82 = sub i64 %conv, %16, !dbg !289
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr81, i8 0, i64 %sub82, i1 false), !dbg !289
  %add.ptr83 = getelementptr inbounds i8, ptr %out, i64 %conv, !dbg !290
  %call84 = call i32 @lzma_crc32(ptr noundef nonnull %out, i64 noundef %conv, i32 noundef 0) #5, !dbg !291
  call void @llvm.dbg.value(metadata ptr %add.ptr83, metadata !292, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.value(metadata i32 %call84, metadata !298, metadata !DIExpression()), !dbg !299
  %conv.i = trunc i32 %call84 to i8, !dbg !301
  store i8 %conv.i, ptr %add.ptr83, align 1, !dbg !302, !tbaa !241
  %shr.i = lshr i32 %call84, 8, !dbg !303
  %conv1.i = trunc i32 %shr.i to i8, !dbg !304
  %arrayidx2.i = getelementptr inbounds i8, ptr %add.ptr83, i64 1, !dbg !305
  store i8 %conv1.i, ptr %arrayidx2.i, align 1, !dbg !306, !tbaa !241
  %shr3.i = lshr i32 %call84, 16, !dbg !307
  %conv4.i = trunc i32 %shr3.i to i8, !dbg !308
  %arrayidx5.i = getelementptr inbounds i8, ptr %add.ptr83, i64 2, !dbg !309
  store i8 %conv4.i, ptr %arrayidx5.i, align 1, !dbg !310, !tbaa !241
  %shr6.i = lshr i32 %call84, 24, !dbg !311
  %conv7.i = trunc i32 %shr6.i to i8, !dbg !312
  %arrayidx8.i = getelementptr inbounds i8, ptr %add.ptr83, i64 3, !dbg !313
  store i8 %conv7.i, ptr %arrayidx8.i, align 1, !dbg !314, !tbaa !241
  br label %cleanup86, !dbg !315

cleanup86:                                        ; preds = %do.body56, %do.body51, %do.end75, %if.end41, %lor.lhs.false44, %do.body, %do.body24
  %retval.7 = phi i32 [ %call27, %do.body24 ], [ %call11, %do.body ], [ 11, %lor.lhs.false44 ], [ 11, %if.end41 ], [ 0, %do.end75 ], [ 11, %do.body51 ], [ %call59, %do.body56 ], !dbg !229
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_pos) #5, !dbg !316
  br label %return

return:                                           ; preds = %entry, %lor.lhs.false, %cleanup86
  %retval.8 = phi i32 [ %retval.7, %cleanup86 ], [ 11, %lor.lhs.false ], [ 11, %entry ], !dbg !229
  ret i32 %retval.8, !dbg !316
}

declare !dbg !317 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare !dbg !320 i32 @lzma_vli_encode(i64 noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !324 i32 @lzma_filter_flags_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare !dbg !327 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_header_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "a8da97df8170ca904cf171741ab8c93e")
!2 = !{!3, !19, !26}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 57, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18}
!7 = !DIEnumerator(name: "LZMA_OK", value: 0)
!8 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!9 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!10 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!11 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!12 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!13 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!14 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!15 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!16 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!17 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!18 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !20, line: 27, baseType: !5, size: 32, elements: !21)
!20 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!23 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!24 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!25 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 44, baseType: !5, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 7, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!38 = distinct !DISubprogram(name: "lzma_block_header_size", scope: !39, file: !39, line: 18, type: !40, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!39 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_header_encoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "a8da97df8170ca904cf171741ab8c93e")
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !45, line: 245, baseType: !46)
!45 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/block.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 30, size: 1664, elements: !47)
!47 = !{!48, !53, !54, !56, !62, !63, !71, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !46, file: !45, line: 47, baseType: !49, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !5)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!53 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !46, file: !45, line: 67, baseType: !49, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !46, file: !45, line: 88, baseType: !55, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !46, file: !45, line: 143, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !58, line: 63, baseType: !59)
!58 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !61)
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !46, file: !45, line: 167, baseType: !57, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !46, file: !45, line: 195, baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !66, line: 65, baseType: !67)
!66 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 43, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !67, file: !66, line: 54, baseType: !57, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !67, file: !66, line: 63, baseType: !30, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !46, file: !45, line: 212, baseType: !72, size: 512, offset: 320)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 512, elements: !76)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !75)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !{!77}
!77 = !DISubrange(count: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !46, file: !45, line: 221, baseType: !30, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !46, file: !45, line: 222, baseType: !30, size: 64, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !46, file: !45, line: 223, baseType: !30, size: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !46, file: !45, line: 224, baseType: !49, size: 32, offset: 1024)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !46, file: !45, line: 225, baseType: !49, size: 32, offset: 1056)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !46, file: !45, line: 226, baseType: !57, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !46, file: !45, line: 227, baseType: !57, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !46, file: !45, line: 228, baseType: !57, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !46, file: !45, line: 229, baseType: !57, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !46, file: !45, line: 230, baseType: !57, size: 64, offset: 1344)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !46, file: !45, line: 231, baseType: !57, size: 64, offset: 1408)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !46, file: !45, line: 232, baseType: !90, size: 32, offset: 1472)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !46, file: !45, line: 233, baseType: !90, size: 32, offset: 1504)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !46, file: !45, line: 234, baseType: !90, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !46, file: !45, line: 235, baseType: !90, size: 32, offset: 1568)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !46, file: !45, line: 236, baseType: !95, size: 8, offset: 1600)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !75)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !46, file: !45, line: 237, baseType: !95, size: 8, offset: 1608)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !46, file: !45, line: 238, baseType: !95, size: 8, offset: 1616)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !46, file: !45, line: 239, baseType: !95, size: 8, offset: 1624)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !46, file: !45, line: 240, baseType: !95, size: 8, offset: 1632)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !46, file: !45, line: 241, baseType: !95, size: 8, offset: 1640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !46, file: !45, line: 242, baseType: !95, size: 8, offset: 1648)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !46, file: !45, line: 243, baseType: !95, size: 8, offset: 1656)
!103 = !{!104, !105, !106, !110, !113, !117, !120}
!104 = !DILocalVariable(name: "block", arg: 1, scope: !38, file: !39, line: 18, type: !43)
!105 = !DILocalVariable(name: "size", scope: !38, file: !39, line: 24, type: !49)
!106 = !DILocalVariable(name: "add", scope: !107, file: !39, line: 28, type: !109)
!107 = distinct !DILexicalBlock(scope: !108, file: !39, line: 27, column: 50)
!108 = distinct !DILexicalBlock(scope: !38, file: !39, line: 27, column: 6)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!110 = !DILocalVariable(name: "add", scope: !111, file: !39, line: 37, type: !109)
!111 = distinct !DILexicalBlock(scope: !112, file: !39, line: 36, column: 52)
!112 = distinct !DILexicalBlock(scope: !38, file: !39, line: 36, column: 6)
!113 = !DILocalVariable(name: "i", scope: !114, file: !39, line: 48, type: !115)
!114 = distinct !DILexicalBlock(scope: !38, file: !39, line: 48, column: 2)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !116, line: 46, baseType: !61)
!116 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!117 = !DILocalVariable(name: "add", scope: !118, file: !39, line: 53, type: !49)
!118 = distinct !DILexicalBlock(scope: !119, file: !39, line: 48, column: 68)
!119 = distinct !DILexicalBlock(scope: !114, file: !39, line: 48, column: 2)
!120 = !DILocalVariable(name: "ret_", scope: !121, file: !39, line: 54, type: !122)
!121 = distinct !DILexicalBlock(scope: !118, file: !39, line: 54, column: 3)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!123 = !DILocation(line: 0, scope: !38)
!124 = !DILocation(line: 20, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !38, file: !39, line: 20, column: 6)
!126 = !{!127, !128, i64 0}
!127 = !{!"", !128, i64 0, !128, i64 4, !129, i64 8, !131, i64 16, !131, i64 24, !132, i64 32, !129, i64 40, !132, i64 104, !132, i64 112, !132, i64 120, !128, i64 128, !128, i64 132, !131, i64 136, !131, i64 144, !131, i64 152, !131, i64 160, !131, i64 168, !131, i64 176, !129, i64 184, !129, i64 188, !129, i64 192, !129, i64 196, !129, i64 200, !129, i64 201, !129, i64 202, !129, i64 203, !129, i64 204, !129, i64 205, !129, i64 206, !129, i64 207}
!128 = !{!"int", !129, i64 0}
!129 = !{!"omnipotent char", !130, i64 0}
!130 = !{!"Simple C/C++ TBAA"}
!131 = !{!"long", !129, i64 0}
!132 = !{!"any pointer", !129, i64 0}
!133 = !DILocation(line: 20, column: 21, scope: !125)
!134 = !DILocation(line: 20, column: 6, scope: !38)
!135 = !DILocation(line: 27, column: 13, scope: !108)
!136 = !{!127, !131, i64 16}
!137 = !DILocation(line: 27, column: 29, scope: !108)
!138 = !DILocation(line: 27, column: 6, scope: !38)
!139 = !DILocation(line: 28, column: 24, scope: !107)
!140 = !DILocation(line: 0, scope: !107)
!141 = !DILocation(line: 29, column: 11, scope: !142)
!142 = distinct !DILexicalBlock(scope: !107, file: !39, line: 29, column: 7)
!143 = !DILocation(line: 29, column: 16, scope: !142)
!144 = !DILocation(line: 29, column: 26, scope: !142)
!145 = !DILocation(line: 29, column: 42, scope: !142)
!146 = !DILocation(line: 24, column: 11, scope: !38)
!147 = !DILocation(line: 36, column: 13, scope: !112)
!148 = !{!127, !131, i64 24}
!149 = !DILocation(line: 36, column: 31, scope: !112)
!150 = !DILocation(line: 36, column: 6, scope: !38)
!151 = !DILocation(line: 37, column: 24, scope: !111)
!152 = !DILocation(line: 0, scope: !111)
!153 = !DILocation(line: 38, column: 11, scope: !154)
!154 = distinct !DILexicalBlock(scope: !111, file: !39, line: 38, column: 7)
!155 = !DILocation(line: 45, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !38, file: !39, line: 45, column: 6)
!157 = !{!127, !132, i64 32}
!158 = !DILocation(line: 45, column: 21, scope: !156)
!159 = !DILocation(line: 45, column: 29, scope: !156)
!160 = !DILocation(line: 45, column: 50, scope: !156)
!161 = !{!162, !131, i64 0}
!162 = !{!"", !131, i64 0, !132, i64 8}
!163 = !DILocation(line: 45, column: 53, scope: !156)
!164 = !DILocation(line: 45, column: 6, scope: !38)
!165 = !DILocation(line: 0, scope: !114)
!166 = !DILocation(line: 50, column: 9, scope: !167)
!167 = distinct !DILexicalBlock(scope: !118, file: !39, line: 50, column: 7)
!168 = !DILocation(line: 50, column: 7, scope: !118)
!169 = !DILocation(line: 53, column: 3, scope: !118)
!170 = !DILocation(line: 0, scope: !118)
!171 = !DILocation(line: 54, column: 3, scope: !121)
!172 = !DILocation(line: 0, scope: !121)
!173 = !DILocation(line: 54, column: 3, scope: !174)
!174 = distinct !DILexicalBlock(scope: !121, file: !39, line: 54, column: 3)
!175 = !DILocation(line: 58, column: 2, scope: !119)
!176 = !DILocation(line: 57, column: 11, scope: !118)
!177 = !{!128, !128, i64 0}
!178 = !DILocation(line: 57, column: 8, scope: !118)
!179 = !DILocation(line: 48, column: 63, scope: !119)
!180 = !DILocation(line: 48, column: 28, scope: !119)
!181 = !DILocation(line: 48, column: 21, scope: !119)
!182 = !DILocation(line: 48, column: 39, scope: !119)
!183 = !DILocation(line: 48, column: 42, scope: !119)
!184 = !DILocation(line: 48, column: 2, scope: !114)
!185 = distinct !{!185, !184, !186, !187, !188}
!186 = !DILocation(line: 58, column: 2, scope: !114)
!187 = !{!"llvm.loop.mustprogress"}
!188 = !{!"llvm.loop.unroll.disable"}
!189 = !DILocation(line: 61, column: 29, scope: !38)
!190 = !DILocation(line: 61, column: 9, scope: !38)
!191 = !DILocation(line: 61, column: 21, scope: !38)
!192 = !{!127, !128, i64 4}
!193 = !DILocation(line: 69, column: 2, scope: !38)
!194 = !DILocation(line: 70, column: 1, scope: !38)
!195 = !DISubprogram(name: "lzma_vli_size", scope: !58, file: !58, line: 165, type: !196, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{!49, !57}
!198 = !{}
!199 = !DISubprogram(name: "lzma_filter_flags_size", scope: !66, file: !66, line: 382, type: !200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !198)
!200 = !DISubroutineType(types: !201)
!201 = !{!42, !202, !203}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!205 = distinct !DISubprogram(name: "lzma_block_header_encode", scope: !39, file: !39, line: 74, type: !206, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !211)
!206 = !DISubroutineType(types: !207)
!207 = !{!42, !208, !210}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!211 = !{!212, !213, !214, !216, !217, !221, !225, !226}
!212 = !DILocalVariable(name: "block", arg: 1, scope: !205, file: !39, line: 74, type: !208)
!213 = !DILocalVariable(name: "out", arg: 2, scope: !205, file: !39, line: 74, type: !210)
!214 = !DILocalVariable(name: "out_size", scope: !205, file: !39, line: 82, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!216 = !DILocalVariable(name: "out_pos", scope: !205, file: !39, line: 89, type: !115)
!217 = !DILocalVariable(name: "ret_", scope: !218, file: !39, line: 93, type: !122)
!218 = distinct !DILexicalBlock(scope: !219, file: !39, line: 93, column: 3)
!219 = distinct !DILexicalBlock(scope: !220, file: !39, line: 92, column: 50)
!220 = distinct !DILexicalBlock(scope: !205, file: !39, line: 92, column: 6)
!221 = !DILocalVariable(name: "ret_", scope: !222, file: !39, line: 101, type: !122)
!222 = distinct !DILexicalBlock(scope: !223, file: !39, line: 101, column: 3)
!223 = distinct !DILexicalBlock(scope: !224, file: !39, line: 100, column: 52)
!224 = distinct !DILexicalBlock(scope: !205, file: !39, line: 100, column: 6)
!225 = !DILocalVariable(name: "filter_count", scope: !205, file: !39, line: 111, type: !115)
!226 = !DILocalVariable(name: "ret_", scope: !227, file: !39, line: 117, type: !122)
!227 = distinct !DILexicalBlock(scope: !228, file: !39, line: 117, column: 3)
!228 = distinct !DILexicalBlock(scope: !205, file: !39, line: 112, column: 5)
!229 = !DILocation(line: 0, scope: !205)
!230 = !DILocation(line: 77, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !205, file: !39, line: 77, column: 6)
!232 = !DILocation(line: 77, column: 38, scope: !231)
!233 = !DILocation(line: 78, column: 4, scope: !231)
!234 = !DILocation(line: 78, column: 8, scope: !231)
!235 = !DILocation(line: 82, column: 33, scope: !205)
!236 = !DILocation(line: 82, column: 45, scope: !205)
!237 = !DILocation(line: 82, column: 26, scope: !205)
!238 = !DILocation(line: 85, column: 20, scope: !205)
!239 = !DILocation(line: 85, column: 11, scope: !205)
!240 = !DILocation(line: 85, column: 9, scope: !205)
!241 = !{!129, !129, i64 0}
!242 = !DILocation(line: 88, column: 2, scope: !205)
!243 = !DILocation(line: 88, column: 9, scope: !205)
!244 = !DILocation(line: 89, column: 2, scope: !205)
!245 = !DILocation(line: 89, column: 9, scope: !205)
!246 = !{!131, !131, i64 0}
!247 = !DILocation(line: 92, column: 13, scope: !220)
!248 = !DILocation(line: 92, column: 29, scope: !220)
!249 = !DILocation(line: 92, column: 6, scope: !205)
!250 = !DILocation(line: 93, column: 3, scope: !218)
!251 = !DILocation(line: 0, scope: !218)
!252 = !DILocation(line: 93, column: 3, scope: !253)
!253 = distinct !DILexicalBlock(scope: !218, file: !39, line: 93, column: 3)
!254 = !DILocation(line: 96, column: 10, scope: !219)
!255 = !DILocation(line: 97, column: 2, scope: !219)
!256 = !DILocation(line: 100, column: 13, scope: !224)
!257 = !DILocation(line: 100, column: 31, scope: !224)
!258 = !DILocation(line: 100, column: 6, scope: !205)
!259 = !DILocation(line: 101, column: 3, scope: !222)
!260 = !DILocation(line: 0, scope: !222)
!261 = !DILocation(line: 101, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !222, file: !39, line: 101, column: 3)
!263 = !DILocation(line: 104, column: 10, scope: !223)
!264 = !DILocation(line: 105, column: 2, scope: !223)
!265 = !DILocation(line: 108, column: 13, scope: !266)
!266 = distinct !DILexicalBlock(scope: !205, file: !39, line: 108, column: 6)
!267 = !DILocation(line: 108, column: 21, scope: !266)
!268 = !DILocation(line: 108, column: 29, scope: !266)
!269 = !DILocation(line: 108, column: 50, scope: !266)
!270 = !DILocation(line: 108, column: 53, scope: !266)
!271 = !DILocation(line: 108, column: 6, scope: !205)
!272 = !DILocation(line: 114, column: 20, scope: !273)
!273 = distinct !DILexicalBlock(scope: !228, file: !39, line: 114, column: 7)
!274 = !DILocation(line: 114, column: 7, scope: !228)
!275 = !DILocation(line: 117, column: 3, scope: !227)
!276 = !DILocation(line: 0, scope: !227)
!277 = !DILocation(line: 117, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !227, file: !39, line: 117, column: 3)
!279 = !DILocation(line: 121, column: 18, scope: !205)
!280 = !DILocation(line: 121, column: 26, scope: !205)
!281 = !DILocation(line: 121, column: 11, scope: !205)
!282 = !DILocation(line: 121, column: 42, scope: !205)
!283 = !DILocation(line: 121, column: 45, scope: !205)
!284 = !DILocation(line: 121, column: 2, scope: !228)
!285 = distinct !{!285, !286, !287, !187, !188}
!286 = !DILocation(line: 112, column: 2, scope: !205)
!287 = !DILocation(line: 121, column: 64, scope: !205)
!288 = !DILocation(line: 123, column: 9, scope: !205)
!289 = !DILocation(line: 126, column: 2, scope: !205)
!290 = !DILocation(line: 129, column: 26, scope: !205)
!291 = !DILocation(line: 129, column: 38, scope: !205)
!292 = !DILocalVariable(name: "buf", arg: 1, scope: !293, file: !294, line: 351, type: !210)
!293 = distinct !DISubprogram(name: "unaligned_write32le", scope: !294, file: !294, line: 351, type: !295, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !297)
!294 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_integer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!295 = !DISubroutineType(types: !296)
!296 = !{null, !210, !49}
!297 = !{!292, !298}
!298 = !DILocalVariable(name: "num", arg: 2, scope: !293, file: !294, line: 351, type: !49)
!299 = !DILocation(line: 0, scope: !293, inlinedAt: !300)
!300 = distinct !DILocation(line: 129, column: 2, scope: !205)
!301 = !DILocation(line: 353, column: 11, scope: !293, inlinedAt: !300)
!302 = !DILocation(line: 353, column: 9, scope: !293, inlinedAt: !300)
!303 = !DILocation(line: 354, column: 15, scope: !293, inlinedAt: !300)
!304 = !DILocation(line: 354, column: 11, scope: !293, inlinedAt: !300)
!305 = !DILocation(line: 354, column: 2, scope: !293, inlinedAt: !300)
!306 = !DILocation(line: 354, column: 9, scope: !293, inlinedAt: !300)
!307 = !DILocation(line: 355, column: 15, scope: !293, inlinedAt: !300)
!308 = !DILocation(line: 355, column: 11, scope: !293, inlinedAt: !300)
!309 = !DILocation(line: 355, column: 2, scope: !293, inlinedAt: !300)
!310 = !DILocation(line: 355, column: 9, scope: !293, inlinedAt: !300)
!311 = !DILocation(line: 356, column: 15, scope: !293, inlinedAt: !300)
!312 = !DILocation(line: 356, column: 11, scope: !293, inlinedAt: !300)
!313 = !DILocation(line: 356, column: 2, scope: !293, inlinedAt: !300)
!314 = !DILocation(line: 356, column: 9, scope: !293, inlinedAt: !300)
!315 = !DILocation(line: 131, column: 2, scope: !205)
!316 = !DILocation(line: 132, column: 1, scope: !205)
!317 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !45, file: !45, line: 391, type: !318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !198)
!318 = !DISubroutineType(types: !319)
!319 = !{!57, !208}
!320 = !DISubprogram(name: "lzma_vli_encode", scope: !58, file: !58, line: 115, type: !321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !198)
!321 = !DISubroutineType(types: !322)
!322 = !{!42, !57, !323, !210, !323, !115}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!324 = !DISubprogram(name: "lzma_filter_flags_encode", scope: !66, file: !66, line: 405, type: !325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !198)
!325 = !DISubroutineType(types: !326)
!326 = !{!42, !203, !210, !323, !115}
!327 = !DISubprogram(name: "lzma_crc32", scope: !20, file: !20, line: 119, type: !328, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !198)
!328 = !DISubroutineType(types: !329)
!329 = !{!49, !330, !115, !49}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
