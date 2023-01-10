; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/common/block_util.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define dso_local i32 @lzma_block_compressed_size(ptr noundef %block, i64 noundef %unpadded_size) local_unnamed_addr #0 !dbg !38 {
entry:
  call void @llvm.dbg.value(metadata ptr %block, metadata !104, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata i64 %unpadded_size, metadata !105, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.value(metadata ptr %block, metadata !111, metadata !DIExpression()) #3, !dbg !119
  %cmp.i = icmp eq ptr %block, null, !dbg !122
  br i1 %cmp.i, label %return, label %lor.lhs.false.i, !dbg !124

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i32, ptr %block, align 8, !dbg !125, !tbaa !126
  %cmp1.not.i = icmp eq i32 %0, 0, !dbg !133
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %return, !dbg !134

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %header_size.i = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 1, !dbg !135
  %1 = load i32, ptr %header_size.i, align 4, !dbg !135, !tbaa !136
  %2 = add i32 %1, -8, !dbg !137
  %3 = icmp ult i32 %2, 1017, !dbg !137
  %and.i = and i32 %1, 3
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond48.i = and i1 %3, %tobool.not.i, !dbg !137
  br i1 %or.cond48.i, label %lor.lhs.false9.i, label %return, !dbg !137

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false2.i
  %compressed_size.i = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !138
  %4 = load i64, ptr %compressed_size.i, align 8, !dbg !138, !tbaa !139
  %5 = icmp slt i64 %4, -1, !dbg !138
  %cmp16.i = icmp eq i64 %4, 0
  %or.cond50.i = or i1 %5, %cmp16.i, !dbg !138
  br i1 %or.cond50.i, label %return, label %lor.lhs.false17.i, !dbg !138

lor.lhs.false17.i:                                ; preds = %lor.lhs.false9.i
  %cmp13.i = icmp eq i64 %4, -1, !dbg !138
  %check.i = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 2, !dbg !140
  %6 = load i32, ptr %check.i, align 8, !dbg !140, !tbaa !141
  %cmp18.i = icmp ugt i32 %6, 15, !dbg !142
  %brmerge.i = select i1 %cmp18.i, i1 true, i1 %cmp13.i, !dbg !143
  br i1 %brmerge.i, label %lzma_block_unpadded_size.exit, label %if.end22.i, !dbg !143

if.end22.i:                                       ; preds = %lor.lhs.false17.i
  %conv.i = zext i32 %1 to i64, !dbg !144
  %add.i = add nuw i64 %4, %conv.i, !dbg !145
  %call.i = tail call i32 @lzma_check_size(i32 noundef %6) #3, !dbg !146
  %conv26.i = zext i32 %call.i to i64, !dbg !146
  %add27.i = add nuw i64 %add.i, %conv26.i, !dbg !147
  call void @llvm.dbg.value(metadata i64 %add27.i, metadata !118, metadata !DIExpression()) #3, !dbg !119
  %cmp28.i = icmp ugt i64 %add27.i, 9223372036854775804, !dbg !148
  br i1 %cmp28.i, label %return, label %if.end22.i.if.end_crit_edge

if.end22.i.if.end_crit_edge:                      ; preds = %if.end22.i
  %.pre = load i32, ptr %header_size.i, align 4, !dbg !150, !tbaa !136
  %.pre30 = load i32, ptr %check.i, align 8, !dbg !151, !tbaa !141
  br label %if.end

lzma_block_unpadded_size.exit:                    ; preds = %lor.lhs.false17.i
  br i1 %cmp18.i, label %return, label %if.end, !dbg !152

if.end:                                           ; preds = %if.end22.i.if.end_crit_edge, %lzma_block_unpadded_size.exit
  %7 = phi i32 [ %.pre30, %if.end22.i.if.end_crit_edge ], [ %6, %lzma_block_unpadded_size.exit ], !dbg !151
  %8 = phi i32 [ %.pre, %if.end22.i.if.end_crit_edge ], [ %1, %lzma_block_unpadded_size.exit ], !dbg !150
  %call1 = tail call i32 @lzma_check_size(i32 noundef %7) #3, !dbg !153
  %add = add i32 %call1, %8, !dbg !154
  call void @llvm.dbg.value(metadata i32 %add, metadata !106, metadata !DIExpression()), !dbg !110
  %conv = zext i32 %add to i64, !dbg !155
  %cmp2.not = icmp ult i64 %conv, %unpadded_size, !dbg !157
  br i1 %cmp2.not, label %if.end5, label %return, !dbg !158

if.end5:                                          ; preds = %if.end
  %sub = sub i64 %unpadded_size, %conv, !dbg !159
  call void @llvm.dbg.value(metadata i64 %sub, metadata !108, metadata !DIExpression()), !dbg !110
  %9 = load i64, ptr %compressed_size.i, align 8, !dbg !160, !tbaa !139
  %cmp8.not = icmp eq i64 %9, -1, !dbg !162
  %cmp11.not = icmp eq i64 %9, %sub
  %or.cond = select i1 %cmp8.not, i1 true, i1 %cmp11.not, !dbg !163
  br i1 %or.cond, label %if.end14, label %return, !dbg !163

if.end14:                                         ; preds = %if.end5
  store i64 %sub, ptr %compressed_size.i, align 8, !dbg !164, !tbaa !139
  br label %return, !dbg !165

return:                                           ; preds = %if.end22.i, %entry, %lor.lhs.false.i, %lor.lhs.false2.i, %lor.lhs.false9.i, %if.end, %if.end5, %if.end14, %lzma_block_unpadded_size.exit
  %retval.2 = phi i32 [ 11, %lzma_block_unpadded_size.exit ], [ 9, %if.end ], [ 0, %if.end14 ], [ 9, %if.end5 ], [ 11, %lor.lhs.false9.i ], [ 11, %lor.lhs.false2.i ], [ 11, %lor.lhs.false.i ], [ 11, %entry ], [ 11, %if.end22.i ], !dbg !110
  ret i32 %retval.2, !dbg !166
}

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_block_unpadded_size(ptr noundef readonly %block) local_unnamed_addr #0 !dbg !112 {
entry:
  call void @llvm.dbg.value(metadata ptr %block, metadata !111, metadata !DIExpression()), !dbg !167
  %cmp = icmp eq ptr %block, null, !dbg !168
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !169

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr %block, align 8, !dbg !170, !tbaa !126
  %cmp1.not = icmp eq i32 %0, 0, !dbg !171
  br i1 %cmp1.not, label %lor.lhs.false2, label %return, !dbg !172

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %header_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 1, !dbg !173
  %1 = load i32, ptr %header_size, align 4, !dbg !173, !tbaa !136
  %2 = add i32 %1, -8, !dbg !174
  %3 = icmp ult i32 %2, 1017, !dbg !174
  %and = and i32 %1, 3
  %tobool.not = icmp eq i32 %and, 0
  %or.cond48 = and i1 %3, %tobool.not, !dbg !174
  br i1 %or.cond48, label %lor.lhs.false9, label %return, !dbg !174

lor.lhs.false9:                                   ; preds = %lor.lhs.false2
  %compressed_size = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !175
  %4 = load i64, ptr %compressed_size, align 8, !dbg !175, !tbaa !139
  %5 = icmp slt i64 %4, -1, !dbg !175
  %cmp16 = icmp eq i64 %4, 0
  %or.cond50 = or i1 %5, %cmp16, !dbg !175
  br i1 %or.cond50, label %return, label %lor.lhs.false17, !dbg !175

lor.lhs.false17:                                  ; preds = %lor.lhs.false9
  %cmp13 = icmp eq i64 %4, -1, !dbg !175
  %check = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 2, !dbg !176
  %6 = load i32, ptr %check, align 8, !dbg !176, !tbaa !141
  %cmp18 = icmp ugt i32 %6, 15, !dbg !177
  %brmerge = select i1 %cmp18, i1 true, i1 %cmp13, !dbg !178
  %not.cmp18 = xor i1 %cmp18, true, !dbg !178
  %.mux = sext i1 %not.cmp18 to i64, !dbg !178
  br i1 %brmerge, label %return, label %if.end22, !dbg !178

if.end22:                                         ; preds = %lor.lhs.false17
  %conv = zext i32 %1 to i64, !dbg !179
  %add = add nuw i64 %4, %conv, !dbg !180
  %call = tail call i32 @lzma_check_size(i32 noundef %6) #3, !dbg !181
  %conv26 = zext i32 %call to i64, !dbg !181
  %add27 = add nuw i64 %add, %conv26, !dbg !182
  call void @llvm.dbg.value(metadata i64 %add27, metadata !118, metadata !DIExpression()), !dbg !167
  %cmp28 = icmp ugt i64 %add27, 9223372036854775804, !dbg !183
  %.add27 = select i1 %cmp28, i64 0, i64 %add27, !dbg !167
  br label %return

return:                                           ; preds = %lor.lhs.false17, %entry, %lor.lhs.false, %lor.lhs.false2, %lor.lhs.false9, %if.end22
  %retval.1 = phi i64 [ %.add27, %if.end22 ], [ 0, %lor.lhs.false9 ], [ %.mux, %lor.lhs.false17 ], [ 0, %lor.lhs.false2 ], [ 0, %lor.lhs.false ], [ 0, %entry ], !dbg !167
  ret i64 %retval.1, !dbg !184
}

declare !dbg !185 i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @lzma_block_total_size(ptr noundef readonly %block) local_unnamed_addr #0 !dbg !189 {
entry:
  call void @llvm.dbg.value(metadata ptr %block, metadata !191, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata ptr %block, metadata !111, metadata !DIExpression()) #3, !dbg !194
  %cmp.i = icmp eq ptr %block, null, !dbg !196
  br i1 %cmp.i, label %if.then, label %lor.lhs.false.i, !dbg !197

lor.lhs.false.i:                                  ; preds = %entry
  %0 = load i32, ptr %block, align 8, !dbg !198, !tbaa !126
  %cmp1.not.i = icmp eq i32 %0, 0, !dbg !199
  br i1 %cmp1.not.i, label %lor.lhs.false2.i, label %if.then, !dbg !200

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %header_size.i = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 1, !dbg !201
  %1 = load i32, ptr %header_size.i, align 4, !dbg !201, !tbaa !136
  %2 = add i32 %1, -8, !dbg !202
  %3 = icmp ult i32 %2, 1017, !dbg !202
  %and.i = and i32 %1, 3
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond48.i = and i1 %3, %tobool.not.i, !dbg !202
  br i1 %or.cond48.i, label %lor.lhs.false9.i, label %if.then, !dbg !202

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false2.i
  %compressed_size.i = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 3, !dbg !203
  %4 = load i64, ptr %compressed_size.i, align 8, !dbg !203, !tbaa !139
  %5 = icmp slt i64 %4, -1, !dbg !203
  %cmp16.i = icmp eq i64 %4, 0
  %or.cond50.i = or i1 %5, %cmp16.i, !dbg !203
  br i1 %or.cond50.i, label %if.then, label %lor.lhs.false17.i, !dbg !203

lor.lhs.false17.i:                                ; preds = %lor.lhs.false9.i
  %cmp13.i = icmp eq i64 %4, -1, !dbg !203
  %check.i = getelementptr inbounds %struct.lzma_block, ptr %block, i64 0, i32 2, !dbg !204
  %6 = load i32, ptr %check.i, align 8, !dbg !204, !tbaa !141
  %cmp18.i = icmp ugt i32 %6, 15, !dbg !205
  %brmerge.i = select i1 %cmp18.i, i1 true, i1 %cmp13.i, !dbg !206
  br i1 %brmerge.i, label %lzma_block_unpadded_size.exit, label %if.end22.i, !dbg !206

if.end22.i:                                       ; preds = %lor.lhs.false17.i
  %conv.i = zext i32 %1 to i64, !dbg !207
  %add.i = add nuw i64 %4, %conv.i, !dbg !208
  %call.i = tail call i32 @lzma_check_size(i32 noundef %6) #3, !dbg !209
  %conv26.i = zext i32 %call.i to i64, !dbg !209
  %add27.i = add nuw i64 %add.i, %conv26.i, !dbg !210
  call void @llvm.dbg.value(metadata i64 %add27.i, metadata !118, metadata !DIExpression()) #3, !dbg !194
  %cmp28.i = icmp ugt i64 %add27.i, 9223372036854775804, !dbg !211
  %add27.i.op = add nuw i64 %add27.i, 3
  %add27.i.op.op = and i64 %add27.i.op, -4
  %phi.bo9 = select i1 %cmp28.i, i64 0, i64 %add27.i.op.op, !dbg !194
  br label %if.then

lzma_block_unpadded_size.exit:                    ; preds = %lor.lhs.false17.i
  call void @llvm.dbg.value(metadata i1 %cmp18.i, metadata !192, metadata !DIExpression(DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)), !dbg !193
  br i1 %cmp18.i, label %if.then, label %if.end, !dbg !212

if.then:                                          ; preds = %entry, %lor.lhs.false.i, %lor.lhs.false2.i, %lor.lhs.false9.i, %if.end22.i, %lzma_block_unpadded_size.exit
  %retval.1.i8 = phi i64 [ 0, %lzma_block_unpadded_size.exit ], [ 0, %entry ], [ 0, %lor.lhs.false.i ], [ 0, %lor.lhs.false2.i ], [ 0, %lor.lhs.false9.i ], [ %phi.bo9, %if.end22.i ]
  call void @llvm.dbg.value(metadata i64 %retval.1.i8, metadata !192, metadata !DIExpression()), !dbg !193
  br label %if.end, !dbg !213

if.end:                                           ; preds = %if.then, %lzma_block_unpadded_size.exit
  %unpadded_size.0 = phi i64 [ %retval.1.i8, %if.then ], [ -1, %lzma_block_unpadded_size.exit ], !dbg !193
  call void @llvm.dbg.value(metadata i64 %unpadded_size.0, metadata !192, metadata !DIExpression()), !dbg !193
  ret i64 %unpadded_size.0, !dbg !215
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !29, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/common/block_util.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "76359d4b7b6eb4ad30a646e248fa0975")
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
!29 = !{!30, !5}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !{i32 7, !"Dwarf Version", i32 5}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{i32 7, !"PIC Level", i32 2}
!35 = !{i32 7, !"PIE Level", i32 2}
!36 = !{i32 7, !"uwtable", i32 2}
!37 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!38 = distinct !DISubprogram(name: "lzma_block_compressed_size", scope: !39, file: !39, line: 18, type: !40, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!39 = !DIFile(filename: "apps/557.xz_r/src/liblzma/common/block_util.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "76359d4b7b6eb4ad30a646e248fa0975")
!40 = !DISubroutineType(types: !41)
!41 = !{!42, !43, !57}
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
!103 = !{!104, !105, !106, !108}
!104 = !DILocalVariable(name: "block", arg: 1, scope: !38, file: !39, line: 18, type: !43)
!105 = !DILocalVariable(name: "unpadded_size", arg: 2, scope: !38, file: !39, line: 18, type: !57)
!106 = !DILocalVariable(name: "container_size", scope: !38, file: !39, line: 24, type: !107)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!108 = !DILocalVariable(name: "compressed_size", scope: !38, file: !39, line: 34, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!110 = !DILocation(line: 0, scope: !38)
!111 = !DILocalVariable(name: "block", arg: 1, scope: !112, file: !39, line: 46, type: !115)
!112 = distinct !DISubprogram(name: "lzma_block_unpadded_size", scope: !39, file: !39, line: 46, type: !113, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!113 = !DISubroutineType(types: !114)
!114 = !{!57, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!117 = !{!111, !118}
!118 = !DILocalVariable(name: "unpadded_size", scope: !112, file: !39, line: 69, type: !109)
!119 = !DILocation(line: 0, scope: !112, inlinedAt: !120)
!120 = distinct !DILocation(line: 21, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !38, file: !39, line: 21, column: 6)
!122 = !DILocation(line: 54, column: 12, scope: !123, inlinedAt: !120)
!123 = distinct !DILexicalBlock(scope: !112, file: !39, line: 54, column: 6)
!124 = !DILocation(line: 54, column: 20, scope: !123, inlinedAt: !120)
!125 = !DILocation(line: 54, column: 30, scope: !123, inlinedAt: !120)
!126 = !{!127, !128, i64 0}
!127 = !{!"", !128, i64 0, !128, i64 4, !129, i64 8, !131, i64 16, !131, i64 24, !132, i64 32, !129, i64 40, !132, i64 104, !132, i64 112, !132, i64 120, !128, i64 128, !128, i64 132, !131, i64 136, !131, i64 144, !131, i64 152, !131, i64 160, !131, i64 168, !131, i64 176, !129, i64 184, !129, i64 188, !129, i64 192, !129, i64 196, !129, i64 200, !129, i64 201, !129, i64 202, !129, i64 203, !129, i64 204, !129, i64 205, !129, i64 206, !129, i64 207}
!128 = !{!"int", !129, i64 0}
!129 = !{!"omnipotent char", !130, i64 0}
!130 = !{!"Simple C/C++ TBAA"}
!131 = !{!"long", !129, i64 0}
!132 = !{!"any pointer", !129, i64 0}
!133 = !DILocation(line: 54, column: 38, scope: !123, inlinedAt: !120)
!134 = !DILocation(line: 55, column: 4, scope: !123, inlinedAt: !120)
!135 = !DILocation(line: 55, column: 14, scope: !123, inlinedAt: !120)
!136 = !{!127, !128, i64 4}
!137 = !DILocation(line: 56, column: 4, scope: !123, inlinedAt: !120)
!138 = !DILocation(line: 58, column: 8, scope: !123, inlinedAt: !120)
!139 = !{!127, !131, i64 16}
!140 = !DILocation(line: 60, column: 29, scope: !123, inlinedAt: !120)
!141 = !{!127, !129, i64 8}
!142 = !DILocation(line: 60, column: 36, scope: !123, inlinedAt: !120)
!143 = !DILocation(line: 54, column: 6, scope: !112, inlinedAt: !120)
!144 = !DILocation(line: 70, column: 7, scope: !112, inlinedAt: !120)
!145 = !DILocation(line: 70, column: 5, scope: !112, inlinedAt: !120)
!146 = !DILocation(line: 71, column: 7, scope: !112, inlinedAt: !120)
!147 = !DILocation(line: 71, column: 5, scope: !112, inlinedAt: !120)
!148 = !DILocation(line: 74, column: 20, scope: !149, inlinedAt: !120)
!149 = distinct !DILexicalBlock(scope: !112, file: !39, line: 74, column: 6)
!150 = !DILocation(line: 24, column: 41, scope: !38)
!151 = !DILocation(line: 25, column: 29, scope: !38)
!152 = !DILocation(line: 21, column: 6, scope: !38)
!153 = !DILocation(line: 25, column: 6, scope: !38)
!154 = !DILocation(line: 25, column: 4, scope: !38)
!155 = !DILocation(line: 28, column: 23, scope: !156)
!156 = distinct !DILexicalBlock(scope: !38, file: !39, line: 28, column: 6)
!157 = !DILocation(line: 28, column: 20, scope: !156)
!158 = !DILocation(line: 28, column: 6, scope: !38)
!159 = !DILocation(line: 34, column: 49, scope: !38)
!160 = !DILocation(line: 35, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !38, file: !39, line: 35, column: 6)
!162 = !DILocation(line: 35, column: 29, scope: !161)
!163 = !DILocation(line: 36, column: 4, scope: !161)
!164 = !DILocation(line: 39, column: 25, scope: !38)
!165 = !DILocation(line: 41, column: 2, scope: !38)
!166 = !DILocation(line: 42, column: 1, scope: !38)
!167 = !DILocation(line: 0, scope: !112)
!168 = !DILocation(line: 54, column: 12, scope: !123)
!169 = !DILocation(line: 54, column: 20, scope: !123)
!170 = !DILocation(line: 54, column: 30, scope: !123)
!171 = !DILocation(line: 54, column: 38, scope: !123)
!172 = !DILocation(line: 55, column: 4, scope: !123)
!173 = !DILocation(line: 55, column: 14, scope: !123)
!174 = !DILocation(line: 56, column: 4, scope: !123)
!175 = !DILocation(line: 58, column: 8, scope: !123)
!176 = !DILocation(line: 60, column: 29, scope: !123)
!177 = !DILocation(line: 60, column: 36, scope: !123)
!178 = !DILocation(line: 54, column: 6, scope: !112)
!179 = !DILocation(line: 70, column: 7, scope: !112)
!180 = !DILocation(line: 70, column: 5, scope: !112)
!181 = !DILocation(line: 71, column: 7, scope: !112)
!182 = !DILocation(line: 71, column: 5, scope: !112)
!183 = !DILocation(line: 74, column: 20, scope: !149)
!184 = !DILocation(line: 78, column: 1, scope: !112)
!185 = !DISubprogram(name: "lzma_check_size", scope: !20, file: !20, line: 95, type: !186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!49, !55}
!188 = !{}
!189 = distinct !DISubprogram(name: "lzma_block_total_size", scope: !39, file: !39, line: 82, type: !113, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!190 = !{!191, !192}
!191 = !DILocalVariable(name: "block", arg: 1, scope: !189, file: !39, line: 82, type: !115)
!192 = !DILocalVariable(name: "unpadded_size", scope: !189, file: !39, line: 84, type: !57)
!193 = !DILocation(line: 0, scope: !189)
!194 = !DILocation(line: 0, scope: !112, inlinedAt: !195)
!195 = distinct !DILocation(line: 84, column: 27, scope: !189)
!196 = !DILocation(line: 54, column: 12, scope: !123, inlinedAt: !195)
!197 = !DILocation(line: 54, column: 20, scope: !123, inlinedAt: !195)
!198 = !DILocation(line: 54, column: 30, scope: !123, inlinedAt: !195)
!199 = !DILocation(line: 54, column: 38, scope: !123, inlinedAt: !195)
!200 = !DILocation(line: 55, column: 4, scope: !123, inlinedAt: !195)
!201 = !DILocation(line: 55, column: 14, scope: !123, inlinedAt: !195)
!202 = !DILocation(line: 56, column: 4, scope: !123, inlinedAt: !195)
!203 = !DILocation(line: 58, column: 8, scope: !123, inlinedAt: !195)
!204 = !DILocation(line: 60, column: 29, scope: !123, inlinedAt: !195)
!205 = !DILocation(line: 60, column: 36, scope: !123, inlinedAt: !195)
!206 = !DILocation(line: 54, column: 6, scope: !112, inlinedAt: !195)
!207 = !DILocation(line: 70, column: 7, scope: !112, inlinedAt: !195)
!208 = !DILocation(line: 70, column: 5, scope: !112, inlinedAt: !195)
!209 = !DILocation(line: 71, column: 7, scope: !112, inlinedAt: !195)
!210 = !DILocation(line: 71, column: 5, scope: !112, inlinedAt: !195)
!211 = !DILocation(line: 74, column: 20, scope: !149, inlinedAt: !195)
!212 = !DILocation(line: 86, column: 6, scope: !189)
!213 = !DILocation(line: 87, column: 3, scope: !214)
!214 = distinct !DILexicalBlock(scope: !189, file: !39, line: 86, column: 6)
!215 = !DILocation(line: 89, column: 2, scope: !189)
