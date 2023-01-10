; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/simple/arm.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_arm_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !44 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !138, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !139, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %filters, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata ptr %next, metadata !142, metadata !DIExpression()) #4, !dbg !151
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !148, metadata !DIExpression()) #4, !dbg !151
  call void @llvm.dbg.value(metadata ptr %filters, metadata !149, metadata !DIExpression()) #4, !dbg !151
  call void @llvm.dbg.value(metadata i1 true, metadata !150, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #4, !dbg !151
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @arm_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext true) #4, !dbg !153
  ret i32 %call.i, !dbg !154
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_arm_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !155 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !157, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !158, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata ptr %filters, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.value(metadata ptr %next, metadata !142, metadata !DIExpression()) #4, !dbg !161
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !148, metadata !DIExpression()) #4, !dbg !161
  call void @llvm.dbg.value(metadata ptr %filters, metadata !149, metadata !DIExpression()) #4, !dbg !161
  call void @llvm.dbg.value(metadata i1 false, metadata !150, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #4, !dbg !161
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @arm_code, i64 noundef 0, i64 noundef 4, i32 noundef 4, i1 noundef zeroext false) #4, !dbg !163
  ret i32 %call.i, !dbg !164
}

declare !dbg !165 i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i64 @arm_code(ptr nocapture noundef readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 !dbg !176 {
entry:
  call void @llvm.dbg.value(metadata ptr %simple, metadata !178, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i32 %now_pos, metadata !179, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i1 %is_encoder, metadata !180, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !191
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !181, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 %size, metadata !182, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.value(metadata i64 0, metadata !183, metadata !DIExpression()), !dbg !191
  %cmp.not60 = icmp ult i64 %size, 4, !dbg !192
  br i1 %cmp.not60, label %for.end, label %for.body.lr.ph, !dbg !193

for.body.lr.ph:                                   ; preds = %entry
  %add18 = add i32 %now_pos, 8
  br i1 %is_encoder, label %for.body.us, label %for.body, !dbg !194

for.body.us:                                      ; preds = %for.body.lr.ph, %for.inc.us
  %add62.us = phi i64 [ %add.us, %for.inc.us ], [ 4, %for.body.lr.ph ]
  %i.061.us = phi i64 [ %add62.us, %for.inc.us ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.061.us, metadata !183, metadata !DIExpression()), !dbg !191
  %add1.us = or i64 %i.061.us, 3, !dbg !195
  %arrayidx.us = getelementptr inbounds i8, ptr %buffer, i64 %add1.us, !dbg !196
  %0 = load i8, ptr %arrayidx.us, align 1, !dbg !196, !tbaa !197
  %cmp2.us = icmp eq i8 %0, -21, !dbg !200
  br i1 %cmp2.us, label %if.then.us, label %for.inc.us, !dbg !201

if.then.us:                                       ; preds = %for.body.us
  %add4.us = or i64 %i.061.us, 2, !dbg !202
  %arrayidx5.us = getelementptr inbounds i8, ptr %buffer, i64 %add4.us, !dbg !203
  %1 = load i8, ptr %arrayidx5.us, align 1, !dbg !203, !tbaa !197
  %conv6.us = zext i8 %1 to i32, !dbg !203
  %shl.us = shl nuw nsw i32 %conv6.us, 16, !dbg !204
  %add7.us = or i64 %i.061.us, 1, !dbg !205
  %arrayidx8.us = getelementptr inbounds i8, ptr %buffer, i64 %add7.us, !dbg !206
  %2 = load i8, ptr %arrayidx8.us, align 1, !dbg !206, !tbaa !197
  %conv9.us = zext i8 %2 to i32, !dbg !206
  %shl10.us = shl nuw nsw i32 %conv9.us, 8, !dbg !207
  %or.us = or i32 %shl10.us, %shl.us, !dbg !208
  %arrayidx12.us = getelementptr inbounds i8, ptr %buffer, i64 %i.061.us, !dbg !209
  %3 = load i8, ptr %arrayidx12.us, align 1, !dbg !209, !tbaa !197
  %conv13.us = zext i8 %3 to i32, !dbg !210
  %or14.us = or i32 %or.us, %conv13.us, !dbg !211
  call void @llvm.dbg.value(metadata i32 %or14.us, metadata !184, metadata !DIExpression()), !dbg !212
  %shl15.us = shl nuw nsw i32 %or14.us, 2, !dbg !213
  call void @llvm.dbg.value(metadata i32 %shl15.us, metadata !184, metadata !DIExpression()), !dbg !212
  %conv17.us = trunc i64 %i.061.us to i32, !dbg !214
  %add19.us = add i32 %add18, %conv17.us, !dbg !216
  %add20.us = add i32 %add19.us, %shl15.us, !dbg !217
  call void @llvm.dbg.value(metadata i32 %add20.us, metadata !190, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 undef, metadata !190, metadata !DIExpression()), !dbg !212
  %shr.us = lshr i32 %add20.us, 2, !dbg !218
  call void @llvm.dbg.value(metadata i32 %shr.us, metadata !190, metadata !DIExpression()), !dbg !212
  %shr24.us = lshr i32 %add20.us, 18, !dbg !219
  %conv25.us = trunc i32 %shr24.us to i8, !dbg !220
  store i8 %conv25.us, ptr %arrayidx5.us, align 1, !dbg !221, !tbaa !197
  %shr28.us = lshr i32 %add20.us, 10, !dbg !222
  %conv29.us = trunc i32 %shr28.us to i8, !dbg !223
  store i8 %conv29.us, ptr %arrayidx8.us, align 1, !dbg !224, !tbaa !197
  %conv32.us = trunc i32 %shr.us to i8, !dbg !225
  store i8 %conv32.us, ptr %arrayidx12.us, align 1, !dbg !226, !tbaa !197
  br label %for.inc.us, !dbg !227

for.inc.us:                                       ; preds = %if.then.us, %for.body.us
  call void @llvm.dbg.value(metadata i64 %add62.us, metadata !183, metadata !DIExpression()), !dbg !191
  %add.us = add nuw i64 %add62.us, 4, !dbg !228
  %cmp.not.us = icmp ugt i64 %add.us, %size, !dbg !192
  br i1 %cmp.not.us, label %for.end, label %for.body.us, !dbg !193, !llvm.loop !229

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %add62 = phi i64 [ %add, %for.inc ], [ 4, %for.body.lr.ph ]
  %i.061 = phi i64 [ %add62, %for.inc ], [ 0, %for.body.lr.ph ]
  call void @llvm.dbg.value(metadata i64 %i.061, metadata !183, metadata !DIExpression()), !dbg !191
  %add1 = or i64 %i.061, 3, !dbg !195
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %add1, !dbg !196
  %4 = load i8, ptr %arrayidx, align 1, !dbg !196, !tbaa !197
  %cmp2 = icmp eq i8 %4, -21, !dbg !200
  br i1 %cmp2, label %if.then, label %for.inc, !dbg !201

if.then:                                          ; preds = %for.body
  %add4 = or i64 %i.061, 2, !dbg !202
  %arrayidx5 = getelementptr inbounds i8, ptr %buffer, i64 %add4, !dbg !203
  %5 = load i8, ptr %arrayidx5, align 1, !dbg !203, !tbaa !197
  %conv6 = zext i8 %5 to i32, !dbg !203
  %shl = shl nuw nsw i32 %conv6, 16, !dbg !204
  %add7 = or i64 %i.061, 1, !dbg !205
  %arrayidx8 = getelementptr inbounds i8, ptr %buffer, i64 %add7, !dbg !206
  %6 = load i8, ptr %arrayidx8, align 1, !dbg !206, !tbaa !197
  %conv9 = zext i8 %6 to i32, !dbg !206
  %shl10 = shl nuw nsw i32 %conv9, 8, !dbg !207
  %or = or i32 %shl10, %shl, !dbg !208
  %arrayidx12 = getelementptr inbounds i8, ptr %buffer, i64 %i.061, !dbg !209
  %7 = load i8, ptr %arrayidx12, align 1, !dbg !209, !tbaa !197
  %conv13 = zext i8 %7 to i32, !dbg !210
  %or14 = or i32 %or, %conv13, !dbg !211
  call void @llvm.dbg.value(metadata i32 %or14, metadata !184, metadata !DIExpression()), !dbg !212
  %shl15 = shl nuw nsw i32 %or14, 2, !dbg !213
  call void @llvm.dbg.value(metadata i32 %shl15, metadata !184, metadata !DIExpression()), !dbg !212
  %conv21 = trunc i64 %i.061 to i32, !dbg !233
  %8 = add i32 %conv21, %now_pos, !dbg !234
  %add23.neg = sub i32 -8, %8, !dbg !234
  %sub = add i32 %add23.neg, %shl15, !dbg !235
  call void @llvm.dbg.value(metadata i32 %sub, metadata !190, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata i32 %sub, metadata !190, metadata !DIExpression()), !dbg !212
  %shr = lshr i32 %sub, 2, !dbg !218
  call void @llvm.dbg.value(metadata i32 %shr, metadata !190, metadata !DIExpression()), !dbg !212
  %shr24 = lshr i32 %sub, 18, !dbg !219
  %conv25 = trunc i32 %shr24 to i8, !dbg !220
  store i8 %conv25, ptr %arrayidx5, align 1, !dbg !221, !tbaa !197
  %shr28 = lshr i32 %sub, 10, !dbg !222
  %conv29 = trunc i32 %shr28 to i8, !dbg !223
  store i8 %conv29, ptr %arrayidx8, align 1, !dbg !224, !tbaa !197
  %conv32 = trunc i32 %shr to i8, !dbg !225
  store i8 %conv32, ptr %arrayidx12, align 1, !dbg !226, !tbaa !197
  br label %for.inc, !dbg !227

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata i64 %add62, metadata !183, metadata !DIExpression()), !dbg !191
  %add = add nuw i64 %add62, 4, !dbg !228
  %cmp.not = icmp ugt i64 %add, %size, !dbg !192
  br i1 %cmp.not, label %for.end, label %for.body, !dbg !193, !llvm.loop !229

for.end:                                          ; preds = %for.inc, %for.inc.us, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %add62.us, %for.inc.us ], [ %add62, %for.inc ], !dbg !236
  ret i64 %i.0.lcssa, !dbg !237
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
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/arm.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "47611a29fefd04d98093fdd3fb8f33a6")
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
!44 = distinct !DISubprogram(name: "lzma_simple_arm_encoder_init", scope: !45, file: !45, line: 57, type: !46, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!45 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/arm.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "47611a29fefd04d98093fdd3fb8f33a6")
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
!138 = !DILocalVariable(name: "next", arg: 1, scope: !44, file: !45, line: 57, type: !49)
!139 = !DILocalVariable(name: "allocator", arg: 2, scope: !44, file: !45, line: 57, type: !71)
!140 = !DILocalVariable(name: "filters", arg: 3, scope: !44, file: !45, line: 58, type: !127)
!141 = !DILocation(line: 0, scope: !44)
!142 = !DILocalVariable(name: "next", arg: 1, scope: !143, file: !45, line: 48, type: !49)
!143 = distinct !DISubprogram(name: "arm_coder_init", scope: !45, file: !45, line: 48, type: !144, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!144 = !DISubroutineType(types: !145)
!145 = !{!48, !49, !71, !127, !146}
!146 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!147 = !{!142, !148, !149, !150}
!148 = !DILocalVariable(name: "allocator", arg: 2, scope: !143, file: !45, line: 48, type: !71)
!149 = !DILocalVariable(name: "filters", arg: 3, scope: !143, file: !45, line: 49, type: !127)
!150 = !DILocalVariable(name: "is_encoder", arg: 4, scope: !143, file: !45, line: 49, type: !146)
!151 = !DILocation(line: 0, scope: !143, inlinedAt: !152)
!152 = distinct !DILocation(line: 60, column: 9, scope: !44)
!153 = !DILocation(line: 51, column: 9, scope: !143, inlinedAt: !152)
!154 = !DILocation(line: 60, column: 2, scope: !44)
!155 = distinct !DISubprogram(name: "lzma_simple_arm_decoder_init", scope: !45, file: !45, line: 65, type: !46, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: "next", arg: 1, scope: !155, file: !45, line: 65, type: !49)
!158 = !DILocalVariable(name: "allocator", arg: 2, scope: !155, file: !45, line: 65, type: !71)
!159 = !DILocalVariable(name: "filters", arg: 3, scope: !155, file: !45, line: 66, type: !127)
!160 = !DILocation(line: 0, scope: !155)
!161 = !DILocation(line: 0, scope: !143, inlinedAt: !162)
!162 = distinct !DILocation(line: 68, column: 9, scope: !155)
!163 = !DILocation(line: 51, column: 9, scope: !143, inlinedAt: !162)
!164 = !DILocation(line: 68, column: 2, scope: !155)
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
!176 = distinct !DISubprogram(name: "arm_code", scope: !45, file: !45, line: 18, type: !170, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184, !190}
!178 = !DILocalVariable(name: "simple", arg: 1, scope: !176, file: !45, line: 18, type: !172)
!179 = !DILocalVariable(name: "now_pos", arg: 2, scope: !176, file: !45, line: 19, type: !33)
!180 = !DILocalVariable(name: "is_encoder", arg: 3, scope: !176, file: !45, line: 19, type: !146)
!181 = !DILocalVariable(name: "buffer", arg: 4, scope: !176, file: !45, line: 20, type: !96)
!182 = !DILocalVariable(name: "size", arg: 5, scope: !176, file: !45, line: 20, type: !80)
!183 = !DILocalVariable(name: "i", scope: !176, file: !45, line: 22, type: !80)
!184 = !DILocalVariable(name: "src", scope: !185, file: !45, line: 25, type: !33)
!185 = distinct !DILexicalBlock(scope: !186, file: !45, line: 24, column: 30)
!186 = distinct !DILexicalBlock(scope: !187, file: !45, line: 24, column: 7)
!187 = distinct !DILexicalBlock(scope: !188, file: !45, line: 23, column: 37)
!188 = distinct !DILexicalBlock(scope: !189, file: !45, line: 23, column: 2)
!189 = distinct !DILexicalBlock(scope: !176, file: !45, line: 23, column: 2)
!190 = !DILocalVariable(name: "dest", scope: !185, file: !45, line: 30, type: !33)
!191 = !DILocation(line: 0, scope: !176)
!192 = !DILocation(line: 23, column: 20, scope: !188)
!193 = !DILocation(line: 23, column: 2, scope: !189)
!194 = !DILocation(line: 31, column: 8, scope: !185)
!195 = !DILocation(line: 24, column: 16, scope: !186)
!196 = !DILocation(line: 24, column: 7, scope: !186)
!197 = !{!198, !198, i64 0}
!198 = !{!"omnipotent char", !199, i64 0}
!199 = !{!"Simple C/C++ TBAA"}
!200 = !DILocation(line: 24, column: 21, scope: !186)
!201 = !DILocation(line: 24, column: 7, scope: !187)
!202 = !DILocation(line: 25, column: 29, scope: !185)
!203 = !DILocation(line: 25, column: 20, scope: !185)
!204 = !DILocation(line: 25, column: 34, scope: !185)
!205 = !DILocation(line: 26, column: 18, scope: !185)
!206 = !DILocation(line: 26, column: 9, scope: !185)
!207 = !DILocation(line: 26, column: 23, scope: !185)
!208 = !DILocation(line: 26, column: 6, scope: !185)
!209 = !DILocation(line: 27, column: 9, scope: !185)
!210 = !DILocation(line: 27, column: 8, scope: !185)
!211 = !DILocation(line: 27, column: 6, scope: !185)
!212 = !DILocation(line: 0, scope: !185)
!213 = !DILocation(line: 28, column: 8, scope: !185)
!214 = !DILocation(line: 32, column: 22, scope: !215)
!215 = distinct !DILexicalBlock(scope: !185, file: !45, line: 31, column: 8)
!216 = !DILocation(line: 32, column: 36, scope: !215)
!217 = !DILocation(line: 32, column: 40, scope: !215)
!218 = !DILocation(line: 36, column: 9, scope: !185)
!219 = !DILocation(line: 37, column: 26, scope: !185)
!220 = !DILocation(line: 37, column: 20, scope: !185)
!221 = !DILocation(line: 37, column: 18, scope: !185)
!222 = !DILocation(line: 38, column: 26, scope: !185)
!223 = !DILocation(line: 38, column: 20, scope: !185)
!224 = !DILocation(line: 38, column: 18, scope: !185)
!225 = !DILocation(line: 39, column: 20, scope: !185)
!226 = !DILocation(line: 39, column: 18, scope: !185)
!227 = !DILocation(line: 40, column: 3, scope: !185)
!228 = !DILocation(line: 23, column: 16, scope: !188)
!229 = distinct !{!229, !193, !230, !231, !232}
!230 = !DILocation(line: 41, column: 2, scope: !189)
!231 = !{!"llvm.loop.mustprogress"}
!232 = !{!"llvm.loop.unroll.disable"}
!233 = !DILocation(line: 34, column: 29, scope: !215)
!234 = !DILocation(line: 34, column: 43, scope: !215)
!235 = !DILocation(line: 34, column: 16, scope: !215)
!236 = !DILocation(line: 0, scope: !189)
!237 = !DILocation(line: 43, column: 2, scope: !176)
