; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/simple/powerpc.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/powerpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_powerpc_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !44 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !138, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !139, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %filters, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %next, metadata !142, metadata !DIExpression()) #4, !dbg !151
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !148, metadata !DIExpression()) #4, !dbg !151
  call void @llvm.dbg.value(metadata ptr %filters, metadata !149, metadata !DIExpression()) #4, !dbg !151
  call void @llvm.dbg.value(metadata i1 true, metadata !150, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #4, !dbg !151
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @powerpc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #4, !dbg !153
  ret i32 %call.i, !dbg !154
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_powerpc_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !155 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !157, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !158, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata ptr %filters, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata ptr %next, metadata !142, metadata !DIExpression()) #4, !dbg !161
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !148, metadata !DIExpression()) #4, !dbg !161
  call void @llvm.dbg.value(metadata ptr %filters, metadata !149, metadata !DIExpression()) #4, !dbg !161
  call void @llvm.dbg.value(metadata i1 false, metadata !150, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #4, !dbg !161
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @powerpc_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #4, !dbg !163
  ret i32 %call.i, !dbg !164
}

declare !dbg !165 i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i64 @powerpc_code(ptr nocapture noundef readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 !dbg !176 {
entry:
  call void @llvm.dbg.value(metadata ptr %simple, metadata !178, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i32 %now_pos, metadata !179, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i1 %is_encoder, metadata !180, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !192
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !181, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i64 %size, metadata !182, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !192
  %cmp.not88 = icmp ult i64 %size, 4, !dbg !193
  br i1 %cmp.not88, label %for.end, label %for.body.lr.ph, !dbg !194

for.body.lr.ph:                                   ; preds = %entry
  br i1 %is_encoder, label %for.body.us, label %for.body, !dbg !195

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %add90.us = phi i64 [ %add.us, %for.inc.us ], [ 4, %for.body.lr.ph ]
  %i.089.us = phi i64 [ %add90.us, %for.inc.us ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.089.us, metadata !183, metadata !DIExpression()), !dbg !192
  %arrayidx.us = getelementptr inbounds i8, ptr %buffer, i64 %i.089.us, !dbg !196
  %0 = load i8, ptr %arrayidx.us, align 1, !dbg !196, !tbaa !197
  %conv.us = zext i8 %0 to i32, !dbg !196
  %.mask.us = and i32 %conv.us, 252, !dbg !200
  %cmp1.us = icmp eq i32 %.mask.us, 72, !dbg !200
  br i1 %cmp1.us, label %land.lhs.true.us, label %for.inc.us, !dbg !201

land.lhs.true.us:                                 ; preds = %for.body.us
  %add3.us = or i64 %i.089.us, 3, !dbg !202
  %arrayidx4.us = getelementptr inbounds i8, ptr %buffer, i64 %add3.us, !dbg !203
  %1 = load i8, ptr %arrayidx4.us, align 1, !dbg !203, !tbaa !197
  %conv5.us = zext i8 %1 to i32, !dbg !203
  %and.us = and i32 %conv5.us, 3, !dbg !204
  %cmp6.us = icmp eq i32 %and.us, 1, !dbg !205
  br i1 %cmp6.us, label %if.then.us, label %for.inc.us, !dbg !206

if.then.us:                                       ; preds = %land.lhs.true.us
  %and11.us = shl nuw i32 %conv.us, 24, !dbg !207
  %shl.us = and i32 %and11.us, 50331648, !dbg !207
  %add12.us = or i64 %i.089.us, 1, !dbg !208
  %arrayidx13.us = getelementptr inbounds i8, ptr %buffer, i64 %add12.us, !dbg !209
  %2 = load i8, ptr %arrayidx13.us, align 1, !dbg !209, !tbaa !197
  %conv14.us = zext i8 %2 to i32, !dbg !209
  %shl15.us = shl nuw nsw i32 %conv14.us, 16, !dbg !210
  %or.us = or i32 %shl15.us, %shl.us, !dbg !211
  %add16.us = or i64 %i.089.us, 2, !dbg !212
  %arrayidx17.us = getelementptr inbounds i8, ptr %buffer, i64 %add16.us, !dbg !213
  %3 = load i8, ptr %arrayidx17.us, align 1, !dbg !213, !tbaa !197
  %conv18.us = zext i8 %3 to i32, !dbg !213
  %shl19.us = shl nuw nsw i32 %conv18.us, 8, !dbg !214
  %or20.us = or i32 %or.us, %shl19.us, !dbg !215
  %and24.us = and i32 %conv5.us, 252, !dbg !216
  %or25.us = or i32 %or20.us, %and24.us, !dbg !217
  call void @llvm.dbg.value(metadata i32 %or25.us, metadata !184, metadata !DIExpression()), !dbg !218
  %conv27.us = trunc i64 %i.089.us to i32, !dbg !219
  %add28.us = add i32 %conv27.us, %now_pos, !dbg !221
  %add29.us = add i32 %add28.us, %or25.us, !dbg !222
  call void @llvm.dbg.value(metadata i32 %add29.us, metadata !191, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 undef, metadata !191, metadata !DIExpression()), !dbg !218
  %shr32.us = lshr i32 %add29.us, 24, !dbg !223
  %4 = trunc i32 %shr32.us to i8, !dbg !224
  %5 = and i8 %4, 3, !dbg !224
  %conv35.us = or i8 %5, 72, !dbg !224
  store i8 %conv35.us, ptr %arrayidx.us, align 1, !dbg !225, !tbaa !197
  %shr38.us = lshr i32 %add29.us, 16, !dbg !226
  %conv39.us = trunc i32 %shr38.us to i8, !dbg !227
  store i8 %conv39.us, ptr %arrayidx13.us, align 1, !dbg !228, !tbaa !197
  %shr42.us = lshr i32 %add29.us, 8, !dbg !229
  %conv43.us = trunc i32 %shr42.us to i8, !dbg !230
  store i8 %conv43.us, ptr %arrayidx17.us, align 1, !dbg !231, !tbaa !197
  %6 = and i8 %1, 3, !dbg !232
  %7 = trunc i32 %add29.us to i8, !dbg !233
  %conv55.us = or i8 %6, %7, !dbg !233
  store i8 %conv55.us, ptr %arrayidx4.us, align 1, !dbg !233, !tbaa !197
  br label %for.inc.us, !dbg !234

for.inc.us:                                       ; preds = %if.then.us, %land.lhs.true.us, %for.body.us
  call void @llvm.dbg.value(metadata i64 %add90.us, metadata !183, metadata !DIExpression()), !dbg !192
  %add.us = add nuw i64 %add90.us, 4, !dbg !235
  %cmp.not.us = icmp ugt i64 %add.us, %size, !dbg !193
  br i1 %cmp.not.us, label %for.end, label %for.body.us, !dbg !194, !llvm.loop !236

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %add90 = phi i64 [ %add, %for.inc ], [ 4, %for.body.lr.ph ]
  %i.089 = phi i64 [ %add90, %for.inc ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.089, metadata !183, metadata !DIExpression()), !dbg !192
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %i.089, !dbg !196
  %8 = load i8, ptr %arrayidx, align 1, !dbg !196, !tbaa !197
  %conv = zext i8 %8 to i32, !dbg !196
  %.mask = and i32 %conv, 252, !dbg !200
  %cmp1 = icmp eq i32 %.mask, 72, !dbg !200
  br i1 %cmp1, label %land.lhs.true, label %for.inc, !dbg !201

land.lhs.true:                                    ; preds = %for.body
  %add3 = or i64 %i.089, 3, !dbg !202
  %arrayidx4 = getelementptr inbounds i8, ptr %buffer, i64 %add3, !dbg !203
  %9 = load i8, ptr %arrayidx4, align 1, !dbg !203, !tbaa !197
  %conv5 = zext i8 %9 to i32, !dbg !203
  %and = and i32 %conv5, 3, !dbg !204
  %cmp6 = icmp eq i32 %and, 1, !dbg !205
  br i1 %cmp6, label %if.then, label %for.inc, !dbg !206

if.then:                                          ; preds = %land.lhs.true
  %and11 = shl nuw i32 %conv, 24, !dbg !207
  %shl = and i32 %and11, 50331648, !dbg !207
  %add12 = or i64 %i.089, 1, !dbg !208
  %arrayidx13 = getelementptr inbounds i8, ptr %buffer, i64 %add12, !dbg !209
  %10 = load i8, ptr %arrayidx13, align 1, !dbg !209, !tbaa !197
  %conv14 = zext i8 %10 to i32, !dbg !209
  %shl15 = shl nuw nsw i32 %conv14, 16, !dbg !210
  %or = or i32 %shl15, %shl, !dbg !211
  %add16 = or i64 %i.089, 2, !dbg !212
  %arrayidx17 = getelementptr inbounds i8, ptr %buffer, i64 %add16, !dbg !213
  %11 = load i8, ptr %arrayidx17, align 1, !dbg !213, !tbaa !197
  %conv18 = zext i8 %11 to i32, !dbg !213
  %shl19 = shl nuw nsw i32 %conv18, 8, !dbg !214
  %or20 = or i32 %or, %shl19, !dbg !215
  %and24 = and i32 %conv5, 252, !dbg !216
  %or25 = or i32 %or20, %and24, !dbg !217
  call void @llvm.dbg.value(metadata i32 %or25, metadata !184, metadata !DIExpression()), !dbg !218
  %conv30 = trunc i64 %i.089 to i32, !dbg !240
  %12 = add i32 %conv30, %now_pos, !dbg !241
  %sub = sub i32 %or25, %12, !dbg !242
  call void @llvm.dbg.value(metadata i32 %sub, metadata !191, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 %sub, metadata !191, metadata !DIExpression()), !dbg !218
  %shr32 = lshr i32 %sub, 24, !dbg !223
  %13 = trunc i32 %shr32 to i8, !dbg !224
  %14 = and i8 %13, 3, !dbg !224
  %conv35 = or i8 %14, 72, !dbg !224
  store i8 %conv35, ptr %arrayidx, align 1, !dbg !225, !tbaa !197
  %shr38 = lshr i32 %sub, 16, !dbg !226
  %conv39 = trunc i32 %shr38 to i8, !dbg !227
  store i8 %conv39, ptr %arrayidx13, align 1, !dbg !228, !tbaa !197
  %shr42 = lshr i32 %sub, 8, !dbg !229
  %conv43 = trunc i32 %shr42 to i8, !dbg !230
  store i8 %conv43, ptr %arrayidx17, align 1, !dbg !231, !tbaa !197
  %15 = and i8 %9, 3, !dbg !232
  %16 = trunc i32 %sub to i8, !dbg !233
  %conv55 = or i8 %15, %16, !dbg !233
  store i8 %conv55, ptr %arrayidx4, align 1, !dbg !233, !tbaa !197
  br label %for.inc, !dbg !234

for.inc:                                          ; preds = %for.body, %land.lhs.true, %if.then
  call void @llvm.dbg.value(metadata i64 %add90, metadata !183, metadata !DIExpression()), !dbg !192
  %add = add nuw i64 %add90, 4, !dbg !235
  %cmp.not = icmp ugt i64 %add, %size, !dbg !193
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !194, !llvm.loop !236

for.end:                                          ; preds = %for.inc, %for.inc.us, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %add90.us, %for.inc.us ], [ %add90, %for.inc ], !dbg !243
  ret i64 %i.0.lcssa, !dbg !244
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !32, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/powerpc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "78baf9835d3948fbb68e389980bc0142")
!2 = !{!3, !19, !25}
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
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 250, baseType: !5, size: 32, elements: !20)
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!22 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!23 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!24 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 27, baseType: !5, size: 32, elements: !27)
!26 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!29 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!30 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!31 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 26, baseType: !35)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !36, line: 42, baseType: !5)
!36 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 4}
!40 = !{i32 7, !"PIC Level", i32 2}
!41 = !{i32 7, !"PIE Level", i32 2}
!42 = !{i32 7, !"uwtable", i32 2}
!43 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!44 = distinct !DISubprogram(name: "lzma_simple_powerpc_encoder_init", scope: !45, file: !45, line: 61, type: !46, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!45 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/powerpc.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "78baf9835d3948fbb68e389980bc0142")
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !71, !127}
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !4, line: 237, baseType: !3)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !51, line: 80, baseType: !52)
!51 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !51, line: 124, size: 512, elements: !53)
!53 = !{!54, !57, !63, !66, !98, !103, !110, !115}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !52, file: !51, line: 126, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !51, line: 78, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !52, file: !51, line: 130, baseType: !58, size: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !59, line: 63, baseType: !60)
!59 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !34, line: 27, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !36, line: 45, baseType: !62)
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !52, file: !51, line: 136, baseType: !64, size: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !65, line: 90, baseType: !62)
!65 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!66 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !52, file: !51, line: 139, baseType: !67, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !51, line: 94, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!48, !55, !71, !87, !93, !80, !95, !93, !80, !97}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !4, line: 403, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 341, size: 192, elements: !74)
!74 = !{!75, !82, !86}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !73, file: !4, line: 376, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !79, !80, !80}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 46, baseType: !62)
!81 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !73, file: !4, line: 390, baseType: !83, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !79, !79}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !73, file: !4, line: 401, baseType: !79, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !34, line: 24, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !36, line: 38, baseType: !92)
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !4, line: 322, baseType: !19)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !52, file: !51, line: 144, baseType: !99, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !51, line: 102, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !55, !71}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !52, file: !51, line: 148, baseType: !104, size: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !26, line: 55, baseType: !25)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !52, file: !51, line: 152, baseType: !111, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!48, !55, !114, !114, !60}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !52, file: !51, line: 157, baseType: !116, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!48, !55, !71, !119, !119}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !122, line: 65, baseType: !123)
!122 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !122, line: 43, size: 128, elements: !124)
!124 = !{!125, !126}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !123, file: !122, line: 54, baseType: !58, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !123, file: !122, line: 63, baseType: !79, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !51, line: 82, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !51, line: 109, size: 192, elements: !131)
!131 = !{!132, !133, !136}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !130, file: !51, line: 112, baseType: !58, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !130, file: !51, line: 116, baseType: !134, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !51, line: 86, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !130, file: !51, line: 119, baseType: !79, size: 64, offset: 128)
!137 = !{!138, !139, !140}
!138 = !DILocalVariable(name: "next", arg: 1, scope: !44, file: !45, line: 61, type: !49)
!139 = !DILocalVariable(name: "allocator", arg: 2, scope: !44, file: !45, line: 62, type: !71)
!140 = !DILocalVariable(name: "filters", arg: 3, scope: !44, file: !45, line: 62, type: !127)
!141 = !DILocation(line: 0, scope: !44)
!142 = !DILocalVariable(name: "next", arg: 1, scope: !143, file: !45, line: 52, type: !49)
!143 = distinct !DISubprogram(name: "powerpc_coder_init", scope: !45, file: !45, line: 52, type: !144, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!48, !49, !71, !127, !146}
!146 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!147 = !{!142, !148, !149, !150}
!148 = !DILocalVariable(name: "allocator", arg: 2, scope: !143, file: !45, line: 52, type: !71)
!149 = !DILocalVariable(name: "filters", arg: 3, scope: !143, file: !45, line: 53, type: !127)
!150 = !DILocalVariable(name: "is_encoder", arg: 4, scope: !143, file: !45, line: 53, type: !146)
!151 = !DILocation(line: 0, scope: !143, inlinedAt: !152)
!152 = distinct !DILocation(line: 64, column: 9, scope: !44)
!153 = !DILocation(line: 55, column: 9, scope: !143, inlinedAt: !152)
!154 = !DILocation(line: 64, column: 2, scope: !44)
!155 = distinct !DISubprogram(name: "lzma_simple_powerpc_decoder_init", scope: !45, file: !45, line: 69, type: !46, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: "next", arg: 1, scope: !155, file: !45, line: 69, type: !49)
!158 = !DILocalVariable(name: "allocator", arg: 2, scope: !155, file: !45, line: 70, type: !71)
!159 = !DILocalVariable(name: "filters", arg: 3, scope: !155, file: !45, line: 70, type: !127)
!160 = !DILocation(line: 0, scope: !155)
!161 = !DILocation(line: 0, scope: !143, inlinedAt: !162)
!162 = distinct !DILocation(line: 72, column: 9, scope: !155)
!163 = !DILocation(line: 55, column: 9, scope: !143, inlinedAt: !162)
!164 = !DILocation(line: 72, column: 2, scope: !155)
!165 = !DISubprogram(name: "lzma_simple_coder_init", scope: !166, file: !166, line: 68, type: !167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !175)
!166 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/simple_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2921a659cca72849047c4661dc5d5b7e")
!167 = !DISubroutineType(types: !168)
!168 = !{!48, !49, !71, !127, !169, !80, !80, !33, !146}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!80, !172, !33, !146, !96, !80}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_simple", file: !166, line: 19, baseType: !174)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_simple_s", file: !166, line: 19, flags: DIFlagFwdDecl)
!175 = !{}
!176 = distinct !DISubprogram(name: "powerpc_code", scope: !45, file: !45, line: 18, type: !170, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !191}
!178 = !DILocalVariable(name: "simple", arg: 1, scope: !176, file: !45, line: 18, type: !172)
!179 = !DILocalVariable(name: "now_pos", arg: 2, scope: !176, file: !45, line: 19, type: !33)
!180 = !DILocalVariable(name: "is_encoder", arg: 3, scope: !176, file: !45, line: 19, type: !146)
!181 = !DILocalVariable(name: "buffer", arg: 4, scope: !176, file: !45, line: 20, type: !96)
!182 = !DILocalVariable(name: "size", arg: 5, scope: !176, file: !45, line: 20, type: !80)
!183 = !DILocalVariable(name: "i", scope: !176, file: !45, line: 22, type: !80)
!184 = !DILocalVariable(name: "src", scope: !185, file: !45, line: 28, type: !190)
!185 = distinct !DILexicalBlock(scope: !186, file: !45, line: 26, column: 36)
!186 = distinct !DILexicalBlock(scope: !187, file: !45, line: 25, column: 7)
!187 = distinct !DILexicalBlock(scope: !188, file: !45, line: 23, column: 37)
!188 = distinct !DILexicalBlock(scope: !189, file: !45, line: 23, column: 2)
!189 = distinct !DILexicalBlock(scope: !176, file: !45, line: 23, column: 2)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!191 = !DILocalVariable(name: "dest", scope: !185, file: !45, line: 33, type: !33)
!192 = !DILocation(line: 0, scope: !176)
!193 = !DILocation(line: 23, column: 20, scope: !188)
!194 = !DILocation(line: 23, column: 2, scope: !189)
!195 = !DILocation(line: 34, column: 8, scope: !185)
!196 = !DILocation(line: 25, column: 8, scope: !186)
!197 = !{!198, !198, i64 0}
!198 = !{!"omnipotent char", !199, i64 0}
!199 = !{!"Simple C/C++ TBAA"}
!200 = !DILocation(line: 25, column: 24, scope: !186)
!201 = !DILocation(line: 26, column: 5, scope: !186)
!202 = !DILocation(line: 26, column: 19, scope: !186)
!203 = !DILocation(line: 26, column: 10, scope: !186)
!204 = !DILocation(line: 26, column: 24, scope: !186)
!205 = !DILocation(line: 26, column: 29, scope: !186)
!206 = !DILocation(line: 25, column: 7, scope: !187)
!207 = !DILocation(line: 28, column: 46, scope: !185)
!208 = !DILocation(line: 29, column: 18, scope: !185)
!209 = !DILocation(line: 29, column: 9, scope: !185)
!210 = !DILocation(line: 29, column: 23, scope: !185)
!211 = !DILocation(line: 29, column: 6, scope: !185)
!212 = !DILocation(line: 30, column: 18, scope: !185)
!213 = !DILocation(line: 30, column: 9, scope: !185)
!214 = !DILocation(line: 30, column: 23, scope: !185)
!215 = !DILocation(line: 30, column: 6, scope: !185)
!216 = !DILocation(line: 31, column: 23, scope: !185)
!217 = !DILocation(line: 31, column: 6, scope: !185)
!218 = !DILocation(line: 0, scope: !185)
!219 = !DILocation(line: 35, column: 22, scope: !220)
!220 = distinct !DILexicalBlock(scope: !185, file: !45, line: 34, column: 8)
!221 = !DILocation(line: 35, column: 20, scope: !220)
!222 = !DILocation(line: 35, column: 36, scope: !220)
!223 = !DILocation(line: 39, column: 34, scope: !185)
!224 = !DILocation(line: 39, column: 20, scope: !185)
!225 = !DILocation(line: 39, column: 18, scope: !185)
!226 = !DILocation(line: 40, column: 26, scope: !185)
!227 = !DILocation(line: 40, column: 20, scope: !185)
!228 = !DILocation(line: 40, column: 18, scope: !185)
!229 = !DILocation(line: 41, column: 26, scope: !185)
!230 = !DILocation(line: 41, column: 20, scope: !185)
!231 = !DILocation(line: 41, column: 18, scope: !185)
!232 = !DILocation(line: 42, column: 18, scope: !185)
!233 = !DILocation(line: 43, column: 18, scope: !185)
!234 = !DILocation(line: 44, column: 3, scope: !185)
!235 = !DILocation(line: 23, column: 16, scope: !188)
!236 = distinct !{!236, !194, !237, !238, !239}
!237 = !DILocation(line: 45, column: 2, scope: !189)
!238 = !{!"llvm.loop.mustprogress"}
!239 = !{!"llvm.loop.unroll.disable"}
!240 = !DILocation(line: 37, column: 29, scope: !220)
!241 = !DILocation(line: 37, column: 27, scope: !220)
!242 = !DILocation(line: 37, column: 16, scope: !220)
!243 = !DILocation(line: 0, scope: !189)
!244 = !DILocation(line: 47, column: 2, scope: !176)
