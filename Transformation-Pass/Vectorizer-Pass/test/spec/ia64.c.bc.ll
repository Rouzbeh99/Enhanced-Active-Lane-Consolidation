; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/simple/ia64.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/ia64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ia64_code.BRANCH_TABLE = internal unnamed_addr constant [32 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 6, i32 6, i32 0, i32 0, i32 7, i32 7, i32 4, i32 4, i32 0, i32 0, i32 4, i32 4, i32 0, i32 0], align 16, !dbg !0

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_ia64_encoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !99 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !183, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !184, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %filters, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata ptr %next, metadata !187, metadata !DIExpression()) #4, !dbg !195
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !192, metadata !DIExpression()) #4, !dbg !195
  call void @llvm.dbg.value(metadata ptr %filters, metadata !193, metadata !DIExpression()) #4, !dbg !195
  call void @llvm.dbg.value(metadata i1 true, metadata !194, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #4, !dbg !195
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext true) #4, !dbg !197
  ret i32 %call.i, !dbg !198
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_simple_ia64_decoder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters) local_unnamed_addr #0 !dbg !199 {
entry:
  call void @llvm.dbg.value(metadata ptr %next, metadata !201, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !202, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %filters, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata ptr %next, metadata !187, metadata !DIExpression()) #4, !dbg !205
  call void @llvm.dbg.value(metadata ptr %allocator, metadata !192, metadata !DIExpression()) #4, !dbg !205
  call void @llvm.dbg.value(metadata ptr %filters, metadata !193, metadata !DIExpression()) #4, !dbg !205
  call void @llvm.dbg.value(metadata i1 false, metadata !194, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #4, !dbg !205
  %call.i = tail call i32 @lzma_simple_coder_init(ptr noundef %next, ptr noundef %allocator, ptr noundef %filters, ptr noundef nonnull @ia64_code, i64 noundef 0, i64 noundef 16, i32 noundef 16, i1 noundef zeroext false) #4, !dbg !207
  ret i32 %call.i, !dbg !208
}

declare !dbg !209 i32 @lzma_simple_coder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define internal i64 @ia64_code(ptr nocapture noundef readnone %simple, i32 noundef %now_pos, i1 noundef zeroext %is_encoder, ptr nocapture noundef %buffer, i64 noundef %size) #2 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata ptr %simple, metadata !59, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i32 %now_pos, metadata !60, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i1 %is_encoder, metadata !61, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !214
  call void @llvm.dbg.value(metadata ptr %buffer, metadata !62, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i64 %size, metadata !63, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i64 0, metadata !64, metadata !DIExpression()), !dbg !214
  %cmp.not134 = icmp ult i64 %size, 16, !dbg !215
  br i1 %cmp.not134, label %for.end88, label %for.body, !dbg !216

for.cond.loopexit:                                ; preds = %for.inc82
  call void @llvm.dbg.value(metadata i64 %add136, metadata !64, metadata !DIExpression()), !dbg !214
  %add = add nuw i64 %add136, 16, !dbg !217
  %cmp.not = icmp ugt i64 %add, %size, !dbg !215
  br i1 %cmp.not, label %for.end88, label %for.body, !dbg !216, !llvm.loop !218

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %add136 = phi i64 [ %add, %for.cond.loopexit ], [ 16, %entry ]
  %i.0135 = phi i64 [ %add136, %for.cond.loopexit ], [ 0, %entry ]
  call void @llvm.dbg.value(metadata i64 %i.0135, metadata !64, metadata !DIExpression()), !dbg !214
  %arrayidx = getelementptr inbounds i8, ptr %buffer, i64 %i.0135, !dbg !222
  %0 = load i8, ptr %arrayidx, align 1, !dbg !222, !tbaa !223
  %1 = and i8 %0, 31, !dbg !226
  %idxprom = zext i8 %1 to i64, !dbg !227
  call void @llvm.dbg.value(metadata i64 %idxprom, metadata !65, metadata !DIExpression()), !dbg !228
  %arrayidx1 = getelementptr inbounds [32 x i32], ptr @ia64_code.BRANCH_TABLE, i64 0, i64 %idxprom, !dbg !227
  %2 = load i32, ptr %arrayidx1, align 4, !dbg !227, !tbaa !229
  call void @llvm.dbg.value(metadata i32 %2, metadata !70, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 5, metadata !71, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 0, metadata !72, metadata !DIExpression()), !dbg !231
  %conv46 = trunc i64 %i.0135 to i32
  %3 = add i32 %conv46, %now_pos
  br label %for.body5, !dbg !232

for.body5:                                        ; preds = %for.body, %for.inc82
  %indvars.iv = phi i64 [ 5, %for.body ], [ %indvars.iv.next, %for.inc82 ]
  %slot.0131 = phi i64 [ 0, %for.body ], [ %inc83, %for.inc82 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !71, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 %slot.0131, metadata !72, metadata !DIExpression()), !dbg !231
  %sh_prom = trunc i64 %slot.0131 to i32, !dbg !233
  %4 = shl nuw nsw i32 1, %sh_prom, !dbg !235
  %5 = and i32 %4, %2, !dbg !235
  %cmp7 = icmp eq i32 %5, 0, !dbg !235
  br i1 %cmp7, label %for.inc82, label %if.end, !dbg !236

if.end:                                           ; preds = %for.body5
  %shr9 = lshr i64 %indvars.iv, 3, !dbg !237
  %conv10 = and i64 %shr9, 536870911, !dbg !238
  call void @llvm.dbg.value(metadata i64 %conv10, metadata !74, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !78, metadata !DIExpression(DW_OP_constu, 7, DW_OP_and, DW_OP_stack_value)), !dbg !239
  call void @llvm.dbg.value(metadata i64 0, metadata !79, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i64 0, metadata !80, metadata !DIExpression()), !dbg !240
  %add17 = add i64 %i.0135, %conv10
  call void @llvm.dbg.value(metadata i64 0, metadata !80, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 0, metadata !79, metadata !DIExpression()), !dbg !239
  br label %for.body16, !dbg !241

for.cond.cleanup15:                               ; preds = %for.body16
  %6 = and i64 %indvars.iv, 7, !dbg !242
  %shr23 = lshr i64 %add21, %6, !dbg !243
  call void @llvm.dbg.value(metadata i64 %shr23, metadata !82, metadata !DIExpression()), !dbg !239
  %7 = and i64 %shr23, 2061584305664, !dbg !244
  %8 = icmp eq i64 %7, 687194767360, !dbg !244
  br i1 %8, label %if.then32, label %for.inc82, !dbg !244

for.body16:                                       ; preds = %if.end, %for.body16
  %j.0129 = phi i64 [ 0, %if.end ], [ %inc, %for.body16 ]
  %instruction.0128 = phi i64 [ 0, %if.end ], [ %add21, %for.body16 ]
  call void @llvm.dbg.value(metadata i64 %j.0129, metadata !80, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.value(metadata i64 %instruction.0128, metadata !79, metadata !DIExpression()), !dbg !239
  %add18 = add nuw i64 %add17, %j.0129, !dbg !245
  %arrayidx19 = getelementptr inbounds i8, ptr %buffer, i64 %add18, !dbg !247
  %9 = load i8, ptr %arrayidx19, align 1, !dbg !247, !tbaa !223
  %conv20 = zext i8 %9 to i64, !dbg !248
  %mul = shl nuw nsw i64 %j.0129, 3, !dbg !249
  %shl = shl nuw nsw i64 %conv20, %mul, !dbg !250
  %add21 = add i64 %shl, %instruction.0128, !dbg !251
  call void @llvm.dbg.value(metadata i64 %add21, metadata !79, metadata !DIExpression()), !dbg !239
  %inc = add nuw nsw i64 %j.0129, 1, !dbg !252
  call void @llvm.dbg.value(metadata i64 %inc, metadata !80, metadata !DIExpression()), !dbg !240
  %exitcond.not = icmp eq i64 %inc, 6, !dbg !253
  br i1 %exitcond.not, label %for.cond.cleanup15, label %for.body16, !dbg !241, !llvm.loop !254

if.then32:                                        ; preds = %for.cond.cleanup15
  %shr33 = lshr i64 %shr23, 13, !dbg !256
  %conv35 = and i64 %shr33, 1048575, !dbg !257
  call void @llvm.dbg.value(metadata i64 %shr33, metadata !83, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 1048575, DW_OP_and, DW_OP_stack_value)), !dbg !258
  %10 = lshr i64 %shr23, 16, !dbg !259
  %shl38 = and i64 %10, 1048576, !dbg !259
  %or = or i64 %conv35, %shl38, !dbg !260
  %conv40 = trunc i64 %or to i32, !dbg !260
  call void @llvm.dbg.value(metadata i32 %conv40, metadata !83, metadata !DIExpression()), !dbg !258
  %shl41 = shl nuw nsw i32 %conv40, 4, !dbg !261
  call void @llvm.dbg.value(metadata i32 %shl41, metadata !83, metadata !DIExpression()), !dbg !258
  br i1 %is_encoder, label %if.then42, label %if.else, !dbg !262

if.then42:                                        ; preds = %if.then32
  %add45 = add i32 %3, %shl41, !dbg !263
  call void @llvm.dbg.value(metadata i32 %add45, metadata !86, metadata !DIExpression()), !dbg !258
  br label %if.end48, !dbg !265

if.else:                                          ; preds = %if.then32
  %sub = sub i32 %shl41, %3, !dbg !266
  call void @llvm.dbg.value(metadata i32 %sub, metadata !86, metadata !DIExpression()), !dbg !258
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then42
  %dest.0 = phi i32 [ %add45, %if.then42 ], [ %sub, %if.else ], !dbg !267
  call void @llvm.dbg.value(metadata i32 %dest.0, metadata !86, metadata !DIExpression()), !dbg !258
  %shr49 = lshr i32 %dest.0, 4, !dbg !268
  call void @llvm.dbg.value(metadata i32 %shr49, metadata !86, metadata !DIExpression()), !dbg !258
  %and50 = and i64 %shr23, -77309403137, !dbg !269
  call void @llvm.dbg.value(metadata i64 %and50, metadata !82, metadata !DIExpression()), !dbg !239
  %and51 = and i32 %shr49, 1048575, !dbg !270
  %conv52 = zext i32 %and51 to i64, !dbg !271
  %shl53 = shl nuw nsw i64 %conv52, 13, !dbg !272
  %or54 = or i64 %shl53, %and50, !dbg !273
  call void @llvm.dbg.value(metadata i64 %or54, metadata !82, metadata !DIExpression()), !dbg !239
  %and55 = and i32 %shr49, 1048576, !dbg !274
  %conv56 = zext i32 %and55 to i64, !dbg !275
  %shl57 = shl nuw nsw i64 %conv56, 16, !dbg !276
  %or58 = or i64 %or54, %shl57, !dbg !277
  call void @llvm.dbg.value(metadata i64 %or58, metadata !82, metadata !DIExpression()), !dbg !239
  %11 = trunc i64 %6 to i32, !dbg !278
  %notmask = shl nsw i32 -1, %11, !dbg !278
  %sub60 = xor i32 %notmask, -1, !dbg !278
  %12 = zext i32 %sub60 to i64
  %and62 = and i64 %add21, %12, !dbg !279
  call void @llvm.dbg.value(metadata i64 %and62, metadata !79, metadata !DIExpression()), !dbg !239
  %shl64 = shl i64 %or58, %6, !dbg !280
  %or65 = or i64 %shl64, %and62, !dbg !281
  call void @llvm.dbg.value(metadata i64 %or65, metadata !79, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata i64 0, metadata !87, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.value(metadata i64 0, metadata !87, metadata !DIExpression()), !dbg !282
  br label %for.body71, !dbg !283

for.body71:                                       ; preds = %if.end48, %for.body71
  %j66.0130 = phi i64 [ 0, %if.end48 ], [ %inc79, %for.body71 ]
  call void @llvm.dbg.value(metadata i64 %j66.0130, metadata !87, metadata !DIExpression()), !dbg !282
  %mul72 = shl nuw nsw i64 %j66.0130, 3, !dbg !284
  %shr73 = lshr i64 %or65, %mul72, !dbg !286
  %conv74 = trunc i64 %shr73 to i8, !dbg !287
  %add76 = add nuw i64 %add17, %j66.0130, !dbg !288
  %arrayidx77 = getelementptr inbounds i8, ptr %buffer, i64 %add76, !dbg !289
  store i8 %conv74, ptr %arrayidx77, align 1, !dbg !290, !tbaa !223
  %inc79 = add nuw nsw i64 %j66.0130, 1, !dbg !291
  call void @llvm.dbg.value(metadata i64 %inc79, metadata !87, metadata !DIExpression()), !dbg !282
  %exitcond137.not = icmp eq i64 %inc79, 6, !dbg !292
  br i1 %exitcond137.not, label %for.inc82, label %for.body71, !dbg !283, !llvm.loop !293

for.inc82:                                        ; preds = %for.body71, %for.cond.cleanup15, %for.body5
  %inc83 = add nuw nsw i64 %slot.0131, 1, !dbg !295
  call void @llvm.dbg.value(metadata i64 %inc83, metadata !72, metadata !DIExpression()), !dbg !231
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 41, !dbg !296
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !71, metadata !DIExpression()), !dbg !228
  %exitcond140.not = icmp eq i64 %inc83, 3, !dbg !297
  br i1 %exitcond140.not, label %for.cond.loopexit, label %for.body5, !dbg !232, !llvm.loop !298

for.end88:                                        ; preds = %for.cond.loopexit, %entry
  %i.0.lcssa = phi i64 [ 0, %entry ], [ %add136, %for.cond.loopexit ], !dbg !300
  ret i64 %i.0.lcssa, !dbg !301
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!23}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "BRANCH_TABLE", scope: !2, file: !3, line: 22, type: !89, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "ia64_code", scope: !3, file: !3, line: 18, type: !4, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !58)
!3 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/ia64.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "537ce06f7cec90003554685ce664077b")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9, !13, !18, !19, !6}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_simple", file: !11, line: 19, baseType: !12)
!11 = !DIFile(filename: "apps/557.xz_r/src/liblzma/simple/simple_private.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2921a659cca72849047c4661dc5d5b7e")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_simple_s", file: !11, line: 19, flags: DIFlagFwdDecl)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !14, line: 26, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !16, line: 42, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !14, line: 24, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !16, line: 38, baseType: !22)
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !25, retainedTypes: !54, globals: !57, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/simple/ia64.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "537ce06f7cec90003554685ce664077b")
!25 = !{!26, !41, !47}
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 57, baseType: !17, size: 32, elements: !28)
!27 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!29 = !DIEnumerator(name: "LZMA_OK", value: 0)
!30 = !DIEnumerator(name: "LZMA_STREAM_END", value: 1)
!31 = !DIEnumerator(name: "LZMA_NO_CHECK", value: 2)
!32 = !DIEnumerator(name: "LZMA_UNSUPPORTED_CHECK", value: 3)
!33 = !DIEnumerator(name: "LZMA_GET_CHECK", value: 4)
!34 = !DIEnumerator(name: "LZMA_MEM_ERROR", value: 5)
!35 = !DIEnumerator(name: "LZMA_MEMLIMIT_ERROR", value: 6)
!36 = !DIEnumerator(name: "LZMA_FORMAT_ERROR", value: 7)
!37 = !DIEnumerator(name: "LZMA_OPTIONS_ERROR", value: 8)
!38 = !DIEnumerator(name: "LZMA_DATA_ERROR", value: 9)
!39 = !DIEnumerator(name: "LZMA_BUF_ERROR", value: 10)
!40 = !DIEnumerator(name: "LZMA_PROG_ERROR", value: 11)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !27, line: 250, baseType: !17, size: 32, elements: !42)
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "LZMA_RUN", value: 0)
!44 = !DIEnumerator(name: "LZMA_SYNC_FLUSH", value: 1)
!45 = !DIEnumerator(name: "LZMA_FULL_FLUSH", value: 2)
!46 = !DIEnumerator(name: "LZMA_FINISH", value: 3)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 27, baseType: !17, size: 32, elements: !49)
!48 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!51 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!52 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!53 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!54 = !{!55, !13, !20}
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !14, line: 27, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !16, line: 45, baseType: !8)
!57 = !{!0}
!58 = !{!59, !60, !61, !62, !63, !64, !65, !70, !71, !72, !74, !78, !79, !80, !82, !83, !86, !87}
!59 = !DILocalVariable(name: "simple", arg: 1, scope: !2, file: !3, line: 18, type: !9)
!60 = !DILocalVariable(name: "now_pos", arg: 2, scope: !2, file: !3, line: 19, type: !13)
!61 = !DILocalVariable(name: "is_encoder", arg: 3, scope: !2, file: !3, line: 19, type: !18)
!62 = !DILocalVariable(name: "buffer", arg: 4, scope: !2, file: !3, line: 20, type: !19)
!63 = !DILocalVariable(name: "size", arg: 5, scope: !2, file: !3, line: 20, type: !6)
!64 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 29, type: !6)
!65 = !DILocalVariable(name: "instr_template", scope: !66, file: !3, line: 31, type: !69)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 30, column: 39)
!67 = distinct !DILexicalBlock(scope: !68, file: !3, line: 30, column: 2)
!68 = distinct !DILexicalBlock(scope: !2, file: !3, line: 30, column: 2)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!70 = !DILocalVariable(name: "mask", scope: !66, file: !3, line: 32, type: !69)
!71 = !DILocalVariable(name: "bit_pos", scope: !66, file: !3, line: 33, type: !13)
!72 = !DILocalVariable(name: "slot", scope: !73, file: !3, line: 35, type: !6)
!73 = distinct !DILexicalBlock(scope: !66, file: !3, line: 35, column: 3)
!74 = !DILocalVariable(name: "byte_pos", scope: !75, file: !3, line: 39, type: !77)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 35, column: 58)
!76 = distinct !DILexicalBlock(scope: !73, file: !3, line: 35, column: 3)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!78 = !DILocalVariable(name: "bit_res", scope: !75, file: !3, line: 40, type: !69)
!79 = !DILocalVariable(name: "instruction", scope: !75, file: !3, line: 41, type: !55)
!80 = !DILocalVariable(name: "j", scope: !81, file: !3, line: 43, type: !6)
!81 = distinct !DILexicalBlock(scope: !75, file: !3, line: 43, column: 4)
!82 = !DILocalVariable(name: "inst_norm", scope: !75, file: !3, line: 48, type: !55)
!83 = !DILocalVariable(name: "src", scope: !84, file: !3, line: 54, type: !13)
!84 = distinct !DILexicalBlock(scope: !85, file: !3, line: 53, column: 8)
!85 = distinct !DILexicalBlock(scope: !75, file: !3, line: 50, column: 8)
!86 = !DILocalVariable(name: "dest", scope: !84, file: !3, line: 60, type: !13)
!87 = !DILocalVariable(name: "j", scope: !88, file: !3, line: 76, type: !6)
!88 = distinct !DILexicalBlock(scope: !84, file: !3, line: 76, column: 5)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 1024, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 32)
!92 = !{i32 7, !"Dwarf Version", i32 5}
!93 = !{i32 2, !"Debug Info Version", i32 3}
!94 = !{i32 1, !"wchar_size", i32 4}
!95 = !{i32 7, !"PIC Level", i32 2}
!96 = !{i32 7, !"PIE Level", i32 2}
!97 = !{i32 7, !"uwtable", i32 2}
!98 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!99 = distinct !DISubprogram(name: "lzma_simple_ia64_encoder_init", scope: !3, file: !3, line: 98, type: !100, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !182)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103, !122, !172}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_ret", file: !27, line: 237, baseType: !26)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_next_coder", file: !105, line: 80, baseType: !106)
!105 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/common.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b445e74fc76042ed64f7e1908fcc1934")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_next_coder_s", file: !105, line: 124, size: 512, elements: !107)
!107 = !{!108, !111, !114, !117, !143, !148, !155, !160}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "coder", scope: !106, file: !105, line: 126, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_coder", file: !105, line: 78, baseType: null)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !106, file: !105, line: 130, baseType: !112, size: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_vli", file: !113, line: 63, baseType: !55)
!113 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/vli.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "e1aa51527ce08aa260777d4fb351a0b7")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !106, file: !105, line: 136, baseType: !115, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !116, line: 90, baseType: !8)
!116 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "24103e292ae21916e87130b926c8d2f8")
!117 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !106, file: !105, line: 139, baseType: !118, size: 64, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_code_function", file: !105, line: 94, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!102, !109, !122, !136, !139, !6, !141, !139, !6, !142}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_allocator", file: !27, line: 403, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 341, size: 192, elements: !125)
!125 = !{!126, !131, !135}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !124, file: !27, line: 376, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !130, !6, !6}
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !124, file: !27, line: 390, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !130, !130}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "opaque", scope: !124, file: !27, line: 401, baseType: !130, size: 64, offset: 128)
!136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !19)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_action", file: !27, line: 322, baseType: !41)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !106, file: !105, line: 144, baseType: !144, size: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_end_function", file: !105, line: 102, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !109, !122}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "get_check", scope: !106, file: !105, line: 148, baseType: !149, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !48, line: 55, baseType: !47)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "memconfig", scope: !106, file: !105, line: 152, baseType: !156, size: 64, offset: 384)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!102, !109, !159, !159, !55}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !106, file: !105, line: 157, baseType: !161, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!102, !109, !122, !164, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter", file: !167, line: 65, baseType: !168)
!167 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/filter.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "5eb86d86854a7619ed1d1ac1b57b2484")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !167, line: 43, size: 128, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !168, file: !167, line: 54, baseType: !112, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !168, file: !167, line: 63, baseType: !130, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_filter_info", file: !105, line: 82, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lzma_filter_info_s", file: !105, line: 109, size: 192, elements: !176)
!176 = !{!177, !178, !181}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !175, file: !105, line: 112, baseType: !112, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !175, file: !105, line: 116, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_init_function", file: !105, line: 86, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !175, file: !105, line: 119, baseType: !130, size: 64, offset: 128)
!182 = !{!183, !184, !185}
!183 = !DILocalVariable(name: "next", arg: 1, scope: !99, file: !3, line: 98, type: !103)
!184 = !DILocalVariable(name: "allocator", arg: 2, scope: !99, file: !3, line: 99, type: !122)
!185 = !DILocalVariable(name: "filters", arg: 3, scope: !99, file: !3, line: 99, type: !172)
!186 = !DILocation(line: 0, scope: !99)
!187 = !DILocalVariable(name: "next", arg: 1, scope: !188, file: !3, line: 89, type: !103)
!188 = distinct !DISubprogram(name: "ia64_coder_init", scope: !3, file: !3, line: 89, type: !189, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!102, !103, !122, !172, !18}
!191 = !{!187, !192, !193, !194}
!192 = !DILocalVariable(name: "allocator", arg: 2, scope: !188, file: !3, line: 89, type: !122)
!193 = !DILocalVariable(name: "filters", arg: 3, scope: !188, file: !3, line: 90, type: !172)
!194 = !DILocalVariable(name: "is_encoder", arg: 4, scope: !188, file: !3, line: 90, type: !18)
!195 = !DILocation(line: 0, scope: !188, inlinedAt: !196)
!196 = distinct !DILocation(line: 101, column: 9, scope: !99)
!197 = !DILocation(line: 92, column: 9, scope: !188, inlinedAt: !196)
!198 = !DILocation(line: 101, column: 2, scope: !99)
!199 = distinct !DISubprogram(name: "lzma_simple_ia64_decoder_init", scope: !3, file: !3, line: 106, type: !100, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !23, retainedNodes: !200)
!200 = !{!201, !202, !203}
!201 = !DILocalVariable(name: "next", arg: 1, scope: !199, file: !3, line: 106, type: !103)
!202 = !DILocalVariable(name: "allocator", arg: 2, scope: !199, file: !3, line: 107, type: !122)
!203 = !DILocalVariable(name: "filters", arg: 3, scope: !199, file: !3, line: 107, type: !172)
!204 = !DILocation(line: 0, scope: !199)
!205 = !DILocation(line: 0, scope: !188, inlinedAt: !206)
!206 = distinct !DILocation(line: 109, column: 9, scope: !199)
!207 = !DILocation(line: 92, column: 9, scope: !188, inlinedAt: !206)
!208 = !DILocation(line: 109, column: 2, scope: !199)
!209 = !DISubprogram(name: "lzma_simple_coder_init", scope: !11, file: !11, line: 68, type: !210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !213)
!210 = !DISubroutineType(types: !211)
!211 = !{!102, !103, !122, !172, !212, !6, !6, !13, !18}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!213 = !{}
!214 = !DILocation(line: 0, scope: !2)
!215 = !DILocation(line: 30, column: 21, scope: !67)
!216 = !DILocation(line: 30, column: 2, scope: !68)
!217 = !DILocation(line: 30, column: 16, scope: !67)
!218 = distinct !{!218, !216, !219, !220, !221}
!219 = !DILocation(line: 82, column: 2, scope: !68)
!220 = !{!"llvm.loop.mustprogress"}
!221 = !{!"llvm.loop.unroll.disable"}
!222 = !DILocation(line: 31, column: 35, scope: !66)
!223 = !{!224, !224, i64 0}
!224 = !{!"omnipotent char", !225, i64 0}
!225 = !{!"Simple C/C++ TBAA"}
!226 = !DILocation(line: 31, column: 45, scope: !66)
!227 = !DILocation(line: 32, column: 25, scope: !66)
!228 = !DILocation(line: 0, scope: !66)
!229 = !{!230, !230, i64 0}
!230 = !{!"int", !224, i64 0}
!231 = !DILocation(line: 0, scope: !73)
!232 = !DILocation(line: 35, column: 3, scope: !73)
!233 = !DILocation(line: 36, column: 15, scope: !234)
!234 = distinct !DILexicalBlock(scope: !75, file: !3, line: 36, column: 8)
!235 = !DILocation(line: 36, column: 29, scope: !234)
!236 = !DILocation(line: 36, column: 8, scope: !75)
!237 = !DILocation(line: 39, column: 37, scope: !75)
!238 = !DILocation(line: 39, column: 28, scope: !75)
!239 = !DILocation(line: 0, scope: !75)
!240 = !DILocation(line: 0, scope: !81)
!241 = !DILocation(line: 43, column: 4, scope: !81)
!242 = !DILocation(line: 40, column: 37, scope: !75)
!243 = !DILocation(line: 48, column: 37, scope: !75)
!244 = !DILocation(line: 51, column: 6, scope: !85)
!245 = !DILocation(line: 45, column: 20, scope: !246)
!246 = distinct !DILexicalBlock(scope: !81, file: !3, line: 43, column: 4)
!247 = !DILocation(line: 45, column: 7, scope: !246)
!248 = !DILocation(line: 44, column: 20, scope: !246)
!249 = !DILocation(line: 46, column: 13, scope: !246)
!250 = !DILocation(line: 46, column: 7, scope: !246)
!251 = !DILocation(line: 44, column: 17, scope: !246)
!252 = !DILocation(line: 43, column: 30, scope: !246)
!253 = !DILocation(line: 43, column: 25, scope: !246)
!254 = distinct !{!254, !241, !255, !220, !221}
!255 = !DILocation(line: 46, column: 16, scope: !81)
!256 = !DILocation(line: 55, column: 18, scope: !84)
!257 = !DILocation(line: 54, column: 20, scope: !84)
!258 = !DILocation(line: 0, scope: !84)
!259 = !DILocation(line: 56, column: 36, scope: !84)
!260 = !DILocation(line: 56, column: 9, scope: !84)
!261 = !DILocation(line: 58, column: 9, scope: !84)
!262 = !DILocation(line: 61, column: 9, scope: !84)
!263 = !DILocation(line: 62, column: 37, scope: !264)
!264 = distinct !DILexicalBlock(scope: !84, file: !3, line: 61, column: 9)
!265 = !DILocation(line: 62, column: 6, scope: !264)
!266 = !DILocation(line: 64, column: 17, scope: !264)
!267 = !DILocation(line: 0, scope: !264)
!268 = !DILocation(line: 66, column: 10, scope: !84)
!269 = !DILocation(line: 68, column: 15, scope: !84)
!270 = !DILocation(line: 69, column: 34, scope: !84)
!271 = !DILocation(line: 69, column: 18, scope: !84)
!272 = !DILocation(line: 69, column: 45, scope: !84)
!273 = !DILocation(line: 69, column: 15, scope: !84)
!274 = !DILocation(line: 70, column: 34, scope: !84)
!275 = !DILocation(line: 70, column: 18, scope: !84)
!276 = !DILocation(line: 71, column: 7, scope: !84)
!277 = !DILocation(line: 70, column: 15, scope: !84)
!278 = !DILocation(line: 73, column: 35, scope: !84)
!279 = !DILocation(line: 73, column: 17, scope: !84)
!280 = !DILocation(line: 74, column: 31, scope: !84)
!281 = !DILocation(line: 74, column: 17, scope: !84)
!282 = !DILocation(line: 0, scope: !88)
!283 = !DILocation(line: 76, column: 5, scope: !88)
!284 = !DILocation(line: 79, column: 14, scope: !285)
!285 = distinct !DILexicalBlock(scope: !88, file: !3, line: 76, column: 5)
!286 = !DILocation(line: 79, column: 8, scope: !285)
!287 = !DILocation(line: 77, column: 33, scope: !285)
!288 = !DILocation(line: 77, column: 19, scope: !285)
!289 = !DILocation(line: 77, column: 6, scope: !285)
!290 = !DILocation(line: 77, column: 31, scope: !285)
!291 = !DILocation(line: 76, column: 32, scope: !285)
!292 = !DILocation(line: 76, column: 26, scope: !285)
!293 = distinct !{!293, !283, !294, !220, !221}
!294 = !DILocation(line: 79, column: 18, scope: !88)
!295 = !DILocation(line: 35, column: 35, scope: !76)
!296 = !DILocation(line: 35, column: 51, scope: !76)
!297 = !DILocation(line: 35, column: 30, scope: !76)
!298 = distinct !{!298, !232, !299, !220, !221}
!299 = !DILocation(line: 81, column: 3, scope: !73)
!300 = !DILocation(line: 0, scope: !68)
!301 = !DILocation(line: 84, column: 2, scope: !2)
