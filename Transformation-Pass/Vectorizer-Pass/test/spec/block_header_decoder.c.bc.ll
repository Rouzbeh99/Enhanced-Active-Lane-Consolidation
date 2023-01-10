; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/block_header_decoder.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_header_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_header_decode(ptr noundef %block, ptr noundef %allocator, ptr noundef %in) local_unnamed_addr #0 !dbg !42 {
entry:
  %in_pos = alloca i64, align 8
  call void @llvm.dbg.value(metadata ptr %block, metadata !121, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !122, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata ptr %in, metadata !123, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i64 0, metadata !124, metadata !DIExpression()), !dbg !144
  %filters = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5
  %0 = load ptr, ptr %filters, align 8, !tbaa !145
  call void @llvm.dbg.value(metadata i64 0, metadata !124, metadata !DIExpression()), !dbg !144
  br label %for.body, !dbg !152

for.cond.cleanup:                                 ; preds = %for.body
  store i32 0, ptr %block, align 8, !dbg !153, !tbaa !154
  %1 = load i8, ptr %in, align 1, !dbg !155, !tbaa !157
  %conv = zext i8 %1 to i32, !dbg !155
  %add = shl nuw nsw i32 %conv, 2, !dbg !155
  %mul = add nuw nsw i32 %add, 4, !dbg !155
  %header_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 1, !dbg !158
  %2 = load i32, ptr %header_size, align 4, !dbg !158, !tbaa !159
  %cmp4.not = icmp eq i32 %mul, %2, !dbg !160
  br i1 %cmp4.not, label %lor.lhs.false, label %return, !dbg !161

for.body:                                         ; preds = %entry, %for.body
  %i.0141 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.0141, metadata !124, metadata !DIExpression()), !dbg !144
  %arrayidx = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %i.0141, !dbg !162
  store i64 -1, ptr %arrayidx, align 8, !dbg !165, !tbaa !166
  %options = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %i.0141, i32 1, !dbg !168
  store ptr null, ptr %options, align 8, !dbg !169, !tbaa !170
  %inc = add nuw nsw i64 %i.0141, 1, !dbg !171
  call void @llvm.dbg.value(metadata i64 %inc, metadata !124, metadata !DIExpression()), !dbg !144
  %exitcond.not = icmp eq i64 %inc, 5, !dbg !172
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !152, !llvm.loop !173

lor.lhs.false:                                    ; preds = %for.cond.cleanup
  %check = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 2, !dbg !177
  %3 = load i32, ptr %check, align 8, !dbg !177, !tbaa !178
  %cmp6 = icmp ugt i32 %3, 15, !dbg !179
  br i1 %cmp6, label %return, label %if.end, !dbg !180

if.end:                                           ; preds = %lor.lhs.false
  %conv9 = zext i32 %add to i64, !dbg !181
  call void @llvm.dbg.value(metadata i64 %conv9, metadata !126, metadata !DIExpression()), !dbg !143
  %call = tail call i32 @lzma_crc32(ptr noundef nonnull %in, i64 noundef %conv9, i32 noundef 0) #4, !dbg !182
  %add.ptr = getelementptr inbounds i8, ptr %in, i64 %conv9, !dbg !184
  call void @llvm.dbg.value(metadata ptr %add.ptr, metadata !185, metadata !DIExpression()), !dbg !192
  %4 = load i8, ptr %add.ptr, align 1, !dbg !194, !tbaa !157
  %conv.i = zext i8 %4 to i32, !dbg !195
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !191, metadata !DIExpression()), !dbg !192
  %arrayidx1.i = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !196
  %5 = load i8, ptr %arrayidx1.i, align 1, !dbg !196, !tbaa !157
  %conv2.i = zext i8 %5 to i32, !dbg !197
  %shl.i = shl nuw nsw i32 %conv2.i, 8, !dbg !198
  %or.i = or i32 %shl.i, %conv.i, !dbg !199
  call void @llvm.dbg.value(metadata i32 %or.i, metadata !191, metadata !DIExpression()), !dbg !192
  %arrayidx3.i = getelementptr inbounds i8, ptr %add.ptr, i64 2, !dbg !200
  %6 = load i8, ptr %arrayidx3.i, align 1, !dbg !200, !tbaa !157
  %conv4.i = zext i8 %6 to i32, !dbg !201
  %shl5.i = shl nuw nsw i32 %conv4.i, 16, !dbg !202
  %or6.i = or i32 %or.i, %shl5.i, !dbg !203
  call void @llvm.dbg.value(metadata i32 %or6.i, metadata !191, metadata !DIExpression()), !dbg !192
  %arrayidx7.i = getelementptr inbounds i8, ptr %add.ptr, i64 3, !dbg !204
  %7 = load i8, ptr %arrayidx7.i, align 1, !dbg !204, !tbaa !157
  %conv8.i = zext i8 %7 to i32, !dbg !205
  %shl9.i = shl nuw i32 %conv8.i, 24, !dbg !206
  %or10.i = or i32 %or6.i, %shl9.i, !dbg !207
  call void @llvm.dbg.value(metadata i32 %or10.i, metadata !191, metadata !DIExpression()), !dbg !192
  %cmp11.not = icmp eq i32 %call, %or10.i, !dbg !208
  br i1 %cmp11.not, label %if.end14, label %return, !dbg !209

if.end14:                                         ; preds = %if.end
  %arrayidx15 = getelementptr inbounds i8, ptr %in, i64 1, !dbg !210
  %8 = load i8, ptr %arrayidx15, align 1, !dbg !210, !tbaa !157
  %9 = and i8 %8, 60, !dbg !212
  %tobool.not = icmp eq i8 %9, 0, !dbg !212
  br i1 %tobool.not, label %if.end18, label %return, !dbg !213

if.end18:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in_pos) #4, !dbg !214
  call void @llvm.dbg.value(metadata i64 2, metadata !128, metadata !DIExpression()), !dbg !143
  store i64 2, ptr %in_pos, align 8, !dbg !215, !tbaa !216
  %10 = and i8 %8, 64, !dbg !217
  %tobool22.not = icmp eq i8 %10, 0, !dbg !217
  %compressed_size34 = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !218
  br i1 %tobool22.not, label %if.else, label %do.body, !dbg !219

do.body:                                          ; preds = %if.end18
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !128, metadata !DIExpression(DW_OP_deref)), !dbg !143
  %call24 = call i32 @lzma_vli_decode(ptr noundef nonnull %compressed_size34, ptr noundef null, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #4, !dbg !220
  call void @llvm.dbg.value(metadata i32 %call24, metadata !129, metadata !DIExpression()), !dbg !221
  %cmp25.not = icmp eq i32 %call24, 0, !dbg !222
  br i1 %cmp25.not, label %do.end, label %cleanup92

do.end:                                           ; preds = %do.body
  %call29 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %block) #4, !dbg !224
  %cmp30 = icmp eq i64 %call29, 0, !dbg !226
  br i1 %cmp30, label %cleanup92, label %if.end35, !dbg !227

if.else:                                          ; preds = %if.end18
  store i64 -1, ptr %compressed_size34, align 8, !dbg !228, !tbaa !230
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.else
  %11 = load i8, ptr %arrayidx15, align 1, !dbg !231, !tbaa !157
  %tobool39.not = icmp sgt i8 %11, -1, !dbg !232
  %uncompressed_size54 = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 4, !dbg !233
  br i1 %tobool39.not, label %if.else53, label %do.body41, !dbg !234

do.body41:                                        ; preds = %if.end35
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !128, metadata !DIExpression(DW_OP_deref)), !dbg !143
  %call43 = call i32 @lzma_vli_decode(ptr noundef nonnull %uncompressed_size54, ptr noundef null, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #4, !dbg !235
  call void @llvm.dbg.value(metadata i32 %call43, metadata !134, metadata !DIExpression()), !dbg !236
  %cmp44.not = icmp eq i32 %call43, 0, !dbg !237
  br i1 %cmp44.not, label %if.end55, label %cleanup92

if.else53:                                        ; preds = %if.end35
  store i64 -1, ptr %uncompressed_size54, align 8, !dbg !239, !tbaa !240
  br label %if.end55

if.end55:                                         ; preds = %do.body41, %if.else53
  %12 = load i8, ptr %arrayidx15, align 1, !dbg !241, !tbaa !157
  %13 = and i8 %12, 3, !dbg !242
  %narrow = add nuw nsw i8 %13, 1, !dbg !243
  %14 = zext i8 %narrow to i64
  call void @llvm.dbg.value(metadata i64 %14, metadata !137, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.value(metadata i64 0, metadata !138, metadata !DIExpression()), !dbg !244
  %15 = load ptr, ptr %filters, align 8, !dbg !245, !tbaa !145
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !128, metadata !DIExpression(DW_OP_deref)), !dbg !143
  %call69157 = call i32 @lzma_filter_flags_decode(ptr noundef %15, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 %call69157, metadata !140, metadata !DIExpression()), !dbg !247
  %cmp70.not158 = icmp eq i32 %call69157, 0, !dbg !248
  br i1 %cmp70.not158, label %for.inc77, label %if.then72, !dbg !250

for.body66:                                       ; preds = %for.inc77
  call void @llvm.dbg.value(metadata i64 %inc78, metadata !138, metadata !DIExpression()), !dbg !244
  %16 = load ptr, ptr %filters, align 8, !dbg !245, !tbaa !145
  %arrayidx68 = getelementptr inbounds %struct.lzma_filter, ptr %16, i64 %inc78, !dbg !251
  call void @llvm.dbg.value(metadata ptr %in_pos, metadata !128, metadata !DIExpression(DW_OP_deref)), !dbg !143
  %call69 = call i32 @lzma_filter_flags_decode(ptr noundef nonnull %arrayidx68, ptr noundef %allocator, ptr noundef nonnull %in, ptr noundef nonnull %in_pos, i64 noundef %conv9) #4, !dbg !246
  call void @llvm.dbg.value(metadata i32 %call69, metadata !140, metadata !DIExpression()), !dbg !247
  %cmp70.not = icmp eq i32 %call69, 0, !dbg !248
  br i1 %cmp70.not, label %for.inc77, label %if.then72.loopexit, !dbg !250, !llvm.loop !252

if.then72.loopexit:                               ; preds = %for.body66
  %cmp63.le = icmp ult i64 %inc78, %14, !dbg !255
  br label %if.then72, !dbg !256

if.then72:                                        ; preds = %if.then72.loopexit, %if.end55
  %cmp63144.lcssa = phi i1 [ true, %if.end55 ], [ %cmp63.le, %if.then72.loopexit ]
  %call69.lcssa = phi i32 [ %call69157, %if.end55 ], [ %call69, %if.then72.loopexit ], !dbg !246
  call void @llvm.dbg.value(metadata ptr %block, metadata !264, metadata !DIExpression()) #4, !dbg !269
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !265, metadata !DIExpression()) #4, !dbg !269
  call void @llvm.dbg.value(metadata i64 0, metadata !266, metadata !DIExpression()) #4, !dbg !270
  %.pre.i = load ptr, ptr %filters, align 8, !dbg !256, !tbaa !145
  br label %for.body.i, !dbg !271

for.body.i:                                       ; preds = %for.body.i, %if.then72
  %17 = phi ptr [ %.pre.i, %if.then72 ], [ %19, %for.body.i ], !dbg !256
  %i.012.i = phi i64 [ 0, %if.then72 ], [ %inc.i, %for.body.i ]
  call void @llvm.dbg.value(metadata i64 %i.012.i, metadata !266, metadata !DIExpression()) #4, !dbg !270
  %options.i = getelementptr inbounds %struct.lzma_filter, ptr %17, i64 %i.012.i, i32 1, !dbg !272
  %18 = load ptr, ptr %options.i, align 8, !dbg !272, !tbaa !170
  call void @lzma_free(ptr noundef %18, ptr noundef %allocator) #4, !dbg !273
  %19 = load ptr, ptr %filters, align 8, !dbg !274, !tbaa !145
  %arrayidx2.i = getelementptr inbounds %struct.lzma_filter, ptr %19, i64 %i.012.i, !dbg !275
  store i64 -1, ptr %arrayidx2.i, align 8, !dbg !276, !tbaa !166
  %options5.i = getelementptr inbounds %struct.lzma_filter, ptr %19, i64 %i.012.i, i32 1, !dbg !277
  store ptr null, ptr %options5.i, align 8, !dbg !278, !tbaa !170
  %inc.i = add nuw nsw i64 %i.012.i, 1, !dbg !279
  call void @llvm.dbg.value(metadata i64 %inc.i, metadata !266, metadata !DIExpression()) #4, !dbg !270
  %exitcond.not.i = icmp eq i64 %inc.i, 4, !dbg !280
  br i1 %exitcond.not.i, label %cleanup79, label %for.body.i, !dbg !271, !llvm.loop !281

for.inc77:                                        ; preds = %if.end55, %for.body66
  %call69160 = phi i32 [ %call69, %for.body66 ], [ %call69157, %if.end55 ]
  %i61.0142159 = phi i64 [ %inc78, %for.body66 ], [ 0, %if.end55 ]
  call void @llvm.dbg.value(metadata i64 %i61.0142159, metadata !138, metadata !DIExpression()), !dbg !244
  %inc78 = add nuw nsw i64 %i61.0142159, 1, !dbg !283
  call void @llvm.dbg.value(metadata i64 %inc78, metadata !138, metadata !DIExpression()), !dbg !244
  %exitcond146.not = icmp eq i64 %inc78, %14, !dbg !255
  br i1 %exitcond146.not, label %cleanup79.loopexit162, label %for.body66, !dbg !253, !llvm.loop !252

cleanup79.loopexit162:                            ; preds = %for.inc77
  %cmp63.le171 = icmp ult i64 %inc78, %14, !dbg !255
  br label %cleanup79

cleanup79:                                        ; preds = %for.body.i, %cleanup79.loopexit162
  %call69154 = phi i32 [ %call69160, %cleanup79.loopexit162 ], [ %call69.lcssa, %for.body.i ]
  %cmp63.lcssa = phi i1 [ %cmp63.le171, %cleanup79.loopexit162 ], [ %cmp63144.lcssa, %for.body.i ], !dbg !255
  br i1 %cmp63.lcssa, label %cleanup92, label %while.cond.preheader

while.cond.preheader:                             ; preds = %cleanup79
  %in_pos.promoted = load i64, ptr %in_pos, align 8, !tbaa !216
  br label %while.cond, !dbg !284

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %inc84145 = phi i64 [ %in_pos.promoted, %while.cond.preheader ], [ %inc84, %while.body ]
  call void @llvm.dbg.value(metadata i64 %inc84145, metadata !128, metadata !DIExpression()), !dbg !143
  %cmp82 = icmp ult i64 %inc84145, %conv9, !dbg !285
  br i1 %cmp82, label %while.body, label %cleanup92, !dbg !284

while.body:                                       ; preds = %while.cond
  %inc84 = add nuw i64 %inc84145, 1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %inc84, metadata !128, metadata !DIExpression()), !dbg !143
  store i64 %inc84, ptr %in_pos, align 8, !dbg !286, !tbaa !216
  %arrayidx85 = getelementptr inbounds i8, ptr %in, i64 %inc84145, !dbg !289
  %20 = load i8, ptr %arrayidx85, align 1, !dbg !289, !tbaa !157
  %cmp87.not = icmp eq i8 %20, 0, !dbg !290
  br i1 %cmp87.not, label %while.cond, label %if.then89, !dbg !291, !llvm.loop !292

if.then89:                                        ; preds = %while.body
  call fastcc void @free_properties(ptr noundef nonnull %block, ptr noundef %allocator), !dbg !294
  br label %cleanup92, !dbg !296

cleanup92:                                        ; preds = %while.cond, %if.then89, %cleanup79, %do.end, %do.body, %do.body41
  %retval.8 = phi i32 [ %call43, %do.body41 ], [ %call24, %do.body ], [ 9, %do.end ], [ 8, %if.then89 ], [ %call69154, %cleanup79 ], [ 0, %while.cond ], !dbg !143
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in_pos) #4, !dbg !297
  br label %return

return:                                           ; preds = %cleanup92, %if.end, %if.end14, %for.cond.cleanup, %lor.lhs.false
  %retval.10 = phi i32 [ 11, %lor.lhs.false ], [ 11, %for.cond.cleanup ], [ %retval.8, %cleanup92 ], [ 9, %if.end ], [ 8, %if.end14 ], !dbg !143
  ret i32 %retval.10, !dbg !297
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !298 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !302 i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !307 i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare !dbg !312 i32 @lzma_filter_flags_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @free_properties(ptr nocapture noundef readonly %block, ptr noundef %allocator) unnamed_addr #0 !dbg !260 {
entry:
  call void @llvm.dbg.value(metadata ptr %block, metadata !264, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !265, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.value(metadata i64 0, metadata !266, metadata !DIExpression()), !dbg !316
  %filters = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 5
  call void @llvm.dbg.value(metadata i64 0, metadata !266, metadata !DIExpression()), !dbg !316
  %.pre = load ptr, ptr %filters, align 8, !dbg !317, !tbaa !145
  br label %for.body, !dbg !318

for.cond.cleanup:                                 ; preds = %for.body
  ret void, !dbg !319

for.body:                                         ; preds = %entry, %for.body
  %0 = phi ptr [ %.pre, %entry ], [ %2, %for.body ], !dbg !317
  %i.012 = phi i64 [ 0, %entry ], [ %inc, %for.body ]
  call void @llvm.dbg.value(metadata i64 %i.012, metadata !266, metadata !DIExpression()), !dbg !316
  %options = getelementptr inbounds %struct.lzma_filter, ptr %0, i64 %i.012, i32 1, !dbg !320
  %1 = load ptr, ptr %options, align 8, !dbg !320, !tbaa !170
  tail call void @lzma_free(ptr noundef %1, ptr noundef %allocator) #4, !dbg !321
  %2 = load ptr, ptr %filters, align 8, !dbg !322, !tbaa !145
  %arrayidx2 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %i.012, !dbg !323
  store i64 -1, ptr %arrayidx2, align 8, !dbg !324, !tbaa !166
  %options5 = getelementptr inbounds %struct.lzma_filter, ptr %2, i64 %i.012, i32 1, !dbg !325
  store ptr null, ptr %options5, align 8, !dbg !326, !tbaa !170
  %inc = add nuw nsw i64 %i.012, 1, !dbg !327
  call void @llvm.dbg.value(metadata i64 %inc, metadata !266, metadata !DIExpression()), !dbg !316
  %exitcond.not = icmp eq i64 %inc, 4, !dbg !328
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !318, !llvm.loop !329
}

declare !dbg !331 void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_header_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "fd5977cc73b0a776afe5331d178f422f")
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
!29 = !{!30, !31, !5}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !32, line: 26, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !34, line: 42, baseType: !5)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!35 = !{i32 7, !"Dwarf Version", i32 5}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 4}
!38 = !{i32 7, !"PIC Level", i32 2}
!39 = !{i32 7, !"PIE Level", i32 2}
!40 = !{i32 7, !"uwtable", i32 2}
!41 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!42 = distinct !DISubprogram(name: "lzma_block_header_decode", scope: !43, file: !43, line: 34, type: !44, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!43 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_header_decoder.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "fd5977cc73b0a776afe5331d178f422f")
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !47, !103, !118}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_block", file: !49, line: 245, baseType: !50)
!49 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/block.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "bf8cbafce550217b909c63081e414910")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !49, line: 30, size: 1664, elements: !51)
!51 = !{!52, !53, !54, !56, !62, !63, !71, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !100, !101, !102}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !50, file: !49, line: 47, baseType: !31, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !50, file: !49, line: 67, baseType: !31, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !50, file: !49, line: 88, baseType: !55, size: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !20, line: 55, baseType: !19)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "compressed_size", scope: !50, file: !49, line: 143, baseType: !57, size: 64, offset: 128)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !58, line: 63, baseType: !59)
!58 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !32, line: 27, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !34, line: 45, baseType: !61)
!61 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed_size", scope: !50, file: !49, line: 167, baseType: !57, size: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "filters", scope: !50, file: !49, line: 195, baseType: !64, size: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !66, line: 65, baseType: !67)
!66 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 43, size: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !67, file: !66, line: 54, baseType: !57, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !67, file: !66, line: 63, baseType: !30, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "raw_check", scope: !50, file: !49, line: 212, baseType: !72, size: 512, offset: 320)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 512, elements: !76)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !32, line: 24, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !34, line: 38, baseType: !75)
!75 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!76 = !{!77}
!77 = !DISubrange(count: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !50, file: !49, line: 221, baseType: !30, size: 64, offset: 832)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !50, file: !49, line: 222, baseType: !30, size: 64, offset: 896)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr3", scope: !50, file: !49, line: 223, baseType: !30, size: 64, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !50, file: !49, line: 224, baseType: !31, size: 32, offset: 1024)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !50, file: !49, line: 225, baseType: !31, size: 32, offset: 1056)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !50, file: !49, line: 226, baseType: !57, size: 64, offset: 1088)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !50, file: !49, line: 227, baseType: !57, size: 64, offset: 1152)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !50, file: !49, line: 228, baseType: !57, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !50, file: !49, line: 229, baseType: !57, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !50, file: !49, line: 230, baseType: !57, size: 64, offset: 1344)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !50, file: !49, line: 231, baseType: !57, size: 64, offset: 1408)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !50, file: !49, line: 232, baseType: !90, size: 32, offset: 1472)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !4, line: 46, baseType: !26)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !50, file: !49, line: 233, baseType: !90, size: 32, offset: 1504)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !50, file: !49, line: 234, baseType: !90, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !50, file: !49, line: 235, baseType: !90, size: 32, offset: 1568)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool1", scope: !50, file: !49, line: 236, baseType: !95, size: 8, offset: 1600)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !4, line: 29, baseType: !75)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool2", scope: !50, file: !49, line: 237, baseType: !95, size: 8, offset: 1608)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool3", scope: !50, file: !49, line: 238, baseType: !95, size: 8, offset: 1616)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool4", scope: !50, file: !49, line: 239, baseType: !95, size: 8, offset: 1624)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool5", scope: !50, file: !49, line: 240, baseType: !95, size: 8, offset: 1632)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool6", scope: !50, file: !49, line: 241, baseType: !95, size: 8, offset: 1640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool7", scope: !50, file: !49, line: 242, baseType: !95, size: 8, offset: 1648)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_bool8", scope: !50, file: !49, line: 243, baseType: !95, size: 8, offset: 1656)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !106)
!106 = !{!107, !113, !117}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !105, file: !4, line: 376, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{!30, !30, !111, !111}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 46, baseType: !61)
!112 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!113 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !105, file: !4, line: 390, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !30, !30}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !105, file: !4, line: 401, baseType: !30, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!120 = !{!121, !122, !123, !124, !126, !128, !129, !134, !137, !138, !140}
!121 = !DILocalVariable(name: "block", arg: 1, scope: !42, file: !43, line: 34, type: !47)
!122 = !DILocalVariable(name: "allocator", arg: 2, scope: !42, file: !43, line: 35, type: !103)
!123 = !DILocalVariable(name: "in", arg: 3, scope: !42, file: !43, line: 35, type: !118)
!124 = !DILocalVariable(name: "i", scope: !125, file: !43, line: 44, type: !111)
!125 = distinct !DILexicalBlock(scope: !42, file: !43, line: 44, column: 2)
!126 = !DILocalVariable(name: "in_size", scope: !42, file: !43, line: 59, type: !127)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!128 = !DILocalVariable(name: "in_pos", scope: !42, file: !43, line: 70, type: !111)
!129 = !DILocalVariable(name: "ret_", scope: !130, file: !43, line: 74, type: !133)
!130 = distinct !DILexicalBlock(scope: !131, file: !43, line: 74, column: 3)
!131 = distinct !DILexicalBlock(scope: !132, file: !43, line: 73, column: 20)
!132 = distinct !DILexicalBlock(scope: !42, file: !43, line: 73, column: 6)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!134 = !DILocalVariable(name: "ret_", scope: !135, file: !43, line: 87, type: !133)
!135 = distinct !DILexicalBlock(scope: !136, file: !43, line: 87, column: 3)
!136 = distinct !DILexicalBlock(scope: !42, file: !43, line: 86, column: 6)
!137 = !DILocalVariable(name: "filter_count", scope: !42, file: !43, line: 93, type: !127)
!138 = !DILocalVariable(name: "i", scope: !139, file: !43, line: 94, type: !111)
!139 = distinct !DILexicalBlock(scope: !42, file: !43, line: 94, column: 2)
!140 = !DILocalVariable(name: "ret", scope: !141, file: !43, line: 95, type: !133)
!141 = distinct !DILexicalBlock(scope: !142, file: !43, line: 94, column: 44)
!142 = distinct !DILexicalBlock(scope: !139, file: !43, line: 94, column: 2)
!143 = !DILocation(line: 0, scope: !42)
!144 = !DILocation(line: 0, scope: !125)
!145 = !{!146, !151, i64 32}
!146 = !{!"", !147, i64 0, !147, i64 4, !148, i64 8, !150, i64 16, !150, i64 24, !151, i64 32, !148, i64 40, !151, i64 104, !151, i64 112, !151, i64 120, !147, i64 128, !147, i64 132, !150, i64 136, !150, i64 144, !150, i64 152, !150, i64 160, !150, i64 168, !150, i64 176, !148, i64 184, !148, i64 188, !148, i64 192, !148, i64 196, !148, i64 200, !148, i64 201, !148, i64 202, !148, i64 203, !148, i64 204, !148, i64 205, !148, i64 206, !148, i64 207}
!147 = !{!"int", !148, i64 0}
!148 = !{!"omnipotent char", !149, i64 0}
!149 = !{!"Simple C/C++ TBAA"}
!150 = !{!"long", !148, i64 0}
!151 = !{!"any pointer", !148, i64 0}
!152 = !DILocation(line: 44, column: 2, scope: !125)
!153 = !DILocation(line: 50, column: 17, scope: !42)
!154 = !{!146, !147, i64 0}
!155 = !DILocation(line: 54, column: 6, scope: !156)
!156 = distinct !DILexicalBlock(scope: !42, file: !43, line: 54, column: 6)
!157 = !{!148, !148, i64 0}
!158 = !DILocation(line: 54, column: 53, scope: !156)
!159 = !{!146, !147, i64 4}
!160 = !DILocation(line: 54, column: 43, scope: !156)
!161 = !DILocation(line: 55, column: 4, scope: !156)
!162 = !DILocation(line: 45, column: 3, scope: !163)
!163 = distinct !DILexicalBlock(scope: !164, file: !43, line: 44, column: 49)
!164 = distinct !DILexicalBlock(scope: !125, file: !43, line: 44, column: 2)
!165 = !DILocation(line: 45, column: 24, scope: !163)
!166 = !{!167, !150, i64 0}
!167 = !{!"", !150, i64 0, !151, i64 8}
!168 = !DILocation(line: 46, column: 21, scope: !163)
!169 = !DILocation(line: 46, column: 29, scope: !163)
!170 = !{!167, !151, i64 8}
!171 = !DILocation(line: 44, column: 44, scope: !164)
!172 = !DILocation(line: 44, column: 23, scope: !164)
!173 = distinct !{!173, !152, !174, !175, !176}
!174 = !DILocation(line: 47, column: 2, scope: !125)
!175 = !{!"llvm.loop.mustprogress"}
!176 = !{!"llvm.loop.unroll.disable"}
!177 = !DILocation(line: 55, column: 29, scope: !156)
!178 = !{!146, !148, i64 8}
!179 = !DILocation(line: 55, column: 36, scope: !156)
!180 = !DILocation(line: 54, column: 6, scope: !42)
!181 = !DILocation(line: 59, column: 25, scope: !42)
!182 = !DILocation(line: 62, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !42, file: !43, line: 62, column: 6)
!184 = !DILocation(line: 62, column: 58, scope: !183)
!185 = !DILocalVariable(name: "buf", arg: 1, scope: !186, file: !187, line: 311, type: !118)
!186 = distinct !DISubprogram(name: "unaligned_read32le", scope: !187, file: !187, line: 311, type: !188, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!187 = !DIFile(filename: "apps/557.xz_r/src/common/tuklib_integer.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "877bd6a1d04ec1170bc985c87ef412ed")
!188 = !DISubroutineType(types: !189)
!189 = !{!31, !118}
!190 = !{!185, !191}
!191 = !DILocalVariable(name: "num", scope: !186, file: !187, line: 313, type: !31)
!192 = !DILocation(line: 0, scope: !186, inlinedAt: !193)
!193 = distinct !DILocation(line: 62, column: 36, scope: !183)
!194 = !DILocation(line: 313, column: 27, scope: !186, inlinedAt: !193)
!195 = !DILocation(line: 313, column: 17, scope: !186, inlinedAt: !193)
!196 = !DILocation(line: 314, column: 19, scope: !186, inlinedAt: !193)
!197 = !DILocation(line: 314, column: 9, scope: !186, inlinedAt: !193)
!198 = !DILocation(line: 314, column: 26, scope: !186, inlinedAt: !193)
!199 = !DILocation(line: 314, column: 6, scope: !186, inlinedAt: !193)
!200 = !DILocation(line: 315, column: 19, scope: !186, inlinedAt: !193)
!201 = !DILocation(line: 315, column: 9, scope: !186, inlinedAt: !193)
!202 = !DILocation(line: 315, column: 26, scope: !186, inlinedAt: !193)
!203 = !DILocation(line: 315, column: 6, scope: !186, inlinedAt: !193)
!204 = !DILocation(line: 316, column: 19, scope: !186, inlinedAt: !193)
!205 = !DILocation(line: 316, column: 9, scope: !186, inlinedAt: !193)
!206 = !DILocation(line: 316, column: 26, scope: !186, inlinedAt: !193)
!207 = !DILocation(line: 316, column: 6, scope: !186, inlinedAt: !193)
!208 = !DILocation(line: 62, column: 33, scope: !183)
!209 = !DILocation(line: 62, column: 6, scope: !42)
!210 = !DILocation(line: 66, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !42, file: !43, line: 66, column: 6)
!212 = !DILocation(line: 66, column: 12, scope: !211)
!213 = !DILocation(line: 66, column: 6, scope: !42)
!214 = !DILocation(line: 70, column: 2, scope: !42)
!215 = !DILocation(line: 70, column: 9, scope: !42)
!216 = !{!150, !150, i64 0}
!217 = !DILocation(line: 73, column: 12, scope: !132)
!218 = !DILocation(line: 0, scope: !132)
!219 = !DILocation(line: 73, column: 6, scope: !42)
!220 = !DILocation(line: 74, column: 3, scope: !130)
!221 = !DILocation(line: 0, scope: !130)
!222 = !DILocation(line: 74, column: 3, scope: !223)
!223 = distinct !DILexicalBlock(scope: !130, file: !43, line: 74, column: 3)
!224 = !DILocation(line: 79, column: 7, scope: !225)
!225 = distinct !DILexicalBlock(scope: !131, file: !43, line: 79, column: 7)
!226 = !DILocation(line: 79, column: 39, scope: !225)
!227 = !DILocation(line: 79, column: 7, scope: !131)
!228 = !DILocation(line: 82, column: 26, scope: !229)
!229 = distinct !DILexicalBlock(scope: !132, file: !43, line: 81, column: 9)
!230 = !{!146, !150, i64 16}
!231 = !DILocation(line: 86, column: 6, scope: !136)
!232 = !DILocation(line: 86, column: 12, scope: !136)
!233 = !DILocation(line: 0, scope: !136)
!234 = !DILocation(line: 86, column: 6, scope: !42)
!235 = !DILocation(line: 87, column: 3, scope: !135)
!236 = !DILocation(line: 0, scope: !135)
!237 = !DILocation(line: 87, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !135, file: !43, line: 87, column: 3)
!239 = !DILocation(line: 90, column: 28, scope: !136)
!240 = !{!146, !150, i64 24}
!241 = !DILocation(line: 93, column: 31, scope: !42)
!242 = !DILocation(line: 93, column: 37, scope: !42)
!243 = !DILocation(line: 93, column: 42, scope: !42)
!244 = !DILocation(line: 0, scope: !139)
!245 = !DILocation(line: 96, column: 13, scope: !141)
!246 = !DILocation(line: 95, column: 24, scope: !141)
!247 = !DILocation(line: 0, scope: !141)
!248 = !DILocation(line: 98, column: 11, scope: !249)
!249 = distinct !DILexicalBlock(scope: !141, file: !43, line: 98, column: 7)
!250 = !DILocation(line: 98, column: 7, scope: !141)
!251 = !DILocation(line: 96, column: 6, scope: !141)
!252 = distinct !{!252, !253, !254, !175, !176}
!253 = !DILocation(line: 94, column: 2, scope: !139)
!254 = !DILocation(line: 102, column: 2, scope: !139)
!255 = !DILocation(line: 94, column: 23, scope: !142)
!256 = !DILocation(line: 24, column: 20, scope: !257, inlinedAt: !267)
!257 = distinct !DILexicalBlock(scope: !258, file: !43, line: 23, column: 48)
!258 = distinct !DILexicalBlock(scope: !259, file: !43, line: 23, column: 2)
!259 = distinct !DILexicalBlock(scope: !260, file: !43, line: 23, column: 2)
!260 = distinct !DISubprogram(name: "free_properties", scope: !43, file: !43, line: 18, type: !261, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !47, !103}
!263 = !{!264, !265, !266}
!264 = !DILocalVariable(name: "block", arg: 1, scope: !260, file: !43, line: 18, type: !47)
!265 = !DILocalVariable(name: "allocator", arg: 2, scope: !260, file: !43, line: 18, type: !103)
!266 = !DILocalVariable(name: "i", scope: !259, file: !43, line: 23, type: !111)
!267 = distinct !DILocation(line: 99, column: 4, scope: !268)
!268 = distinct !DILexicalBlock(scope: !249, file: !43, line: 98, column: 23)
!269 = !DILocation(line: 0, scope: !260, inlinedAt: !267)
!270 = !DILocation(line: 0, scope: !259, inlinedAt: !267)
!271 = !DILocation(line: 23, column: 2, scope: !259, inlinedAt: !267)
!272 = !DILocation(line: 24, column: 31, scope: !257, inlinedAt: !267)
!273 = !DILocation(line: 24, column: 3, scope: !257, inlinedAt: !267)
!274 = !DILocation(line: 25, column: 10, scope: !257, inlinedAt: !267)
!275 = !DILocation(line: 25, column: 3, scope: !257, inlinedAt: !267)
!276 = !DILocation(line: 25, column: 24, scope: !257, inlinedAt: !267)
!277 = !DILocation(line: 26, column: 21, scope: !257, inlinedAt: !267)
!278 = !DILocation(line: 26, column: 29, scope: !257, inlinedAt: !267)
!279 = !DILocation(line: 23, column: 43, scope: !258, inlinedAt: !267)
!280 = !DILocation(line: 23, column: 23, scope: !258, inlinedAt: !267)
!281 = distinct !{!281, !271, !282, !175, !176}
!282 = !DILocation(line: 27, column: 2, scope: !259, inlinedAt: !267)
!283 = !DILocation(line: 94, column: 39, scope: !142)
!284 = !DILocation(line: 105, column: 2, scope: !42)
!285 = !DILocation(line: 105, column: 16, scope: !42)
!286 = !DILocation(line: 106, column: 16, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !43, line: 106, column: 7)
!288 = distinct !DILexicalBlock(scope: !42, file: !43, line: 105, column: 27)
!289 = !DILocation(line: 106, column: 7, scope: !287)
!290 = !DILocation(line: 106, column: 20, scope: !287)
!291 = !DILocation(line: 106, column: 7, scope: !288)
!292 = distinct !{!292, !284, !293, !175, !176}
!293 = !DILocation(line: 113, column: 2, scope: !42)
!294 = !DILocation(line: 107, column: 4, scope: !295)
!295 = distinct !DILexicalBlock(scope: !287, file: !43, line: 106, column: 29)
!296 = !DILocation(line: 111, column: 4, scope: !295)
!297 = !DILocation(line: 116, column: 1, scope: !42)
!298 = !DISubprogram(name: "lzma_crc32", scope: !20, file: !20, line: 119, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !301)
!299 = !DISubroutineType(types: !300)
!300 = !{!31, !118, !111, !31}
!301 = !{}
!302 = !DISubprogram(name: "lzma_vli_decode", scope: !58, file: !58, line: 154, type: !303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !301)
!303 = !DISubroutineType(types: !304)
!304 = !{!46, !305, !306, !118, !306, !111}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!307 = !DISubprogram(name: "lzma_block_unpadded_size", scope: !49, file: !49, line: 391, type: !308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !301)
!308 = !DISubroutineType(types: !309)
!309 = !{!57, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!312 = !DISubprogram(name: "lzma_filter_flags_decode", scope: !66, file: !66, line: 421, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !301)
!313 = !DISubroutineType(types: !314)
!314 = !{!46, !64, !103, !118, !306, !111}
!315 = !DILocation(line: 0, scope: !260)
!316 = !DILocation(line: 0, scope: !259)
!317 = !DILocation(line: 24, column: 20, scope: !257)
!318 = !DILocation(line: 23, column: 2, scope: !259)
!319 = !DILocation(line: 29, column: 2, scope: !260)
!320 = !DILocation(line: 24, column: 31, scope: !257)
!321 = !DILocation(line: 24, column: 3, scope: !257)
!322 = !DILocation(line: 25, column: 10, scope: !257)
!323 = !DILocation(line: 25, column: 3, scope: !257)
!324 = !DILocation(line: 25, column: 24, scope: !257)
!325 = !DILocation(line: 26, column: 21, scope: !257)
!326 = !DILocation(line: 26, column: 29, scope: !257)
!327 = !DILocation(line: 23, column: 43, scope: !258)
!328 = !DILocation(line: 23, column: 23, scope: !258)
!329 = distinct !{!329, !318, !330, !175, !176}
!330 = !DILocation(line: 27, column: 2, scope: !259)
!331 = !DISubprogram(name: "lzma_free", scope: !332, file: !332, line: 215, type: !333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !301)
!332 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!333 = !DISubroutineType(types: !334)
!334 = !{null, !30, !103}
