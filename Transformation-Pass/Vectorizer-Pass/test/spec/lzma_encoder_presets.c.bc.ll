; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/lzma/lzma_encoder_presets.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_encoder_presets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable
define dso_local zeroext i8 @lzma_lzma_preset(ptr nocapture noundef writeonly %options, i32 noundef %preset) local_unnamed_addr #0 !dbg !27 {
entry:
  %.compoundliteral = alloca [10 x i8], align 1
  %.compoundliteral19 = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %options, metadata !74, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32 %preset, metadata !75, metadata !DIExpression()), !dbg !80
  %and = and i32 %preset, 31, !dbg !81
  call void @llvm.dbg.value(metadata i32 %and, metadata !76, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32 %preset, metadata !78, metadata !DIExpression(DW_OP_constu, 18446744073709551584, DW_OP_and, DW_OP_stack_value)), !dbg !80
  call void @llvm.dbg.value(metadata i32 -2147483648, metadata !79, metadata !DIExpression()), !dbg !80
  %cmp = icmp ult i32 %and, 10, !dbg !82
  %and2 = and i32 %preset, 2147483616
  %tobool.not = icmp eq i32 %and2, 0
  %or.cond88 = and i1 %cmp, %tobool.not, !dbg !84
  br i1 %or.cond88, label %if.end, label %cleanup, !dbg !84

if.end:                                           ; preds = %entry
  %preset_dict = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 1, !dbg !85
  store ptr null, ptr %preset_dict, align 8, !dbg !86, !tbaa !87
  %preset_dict_size = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 2, !dbg !93
  store i32 0, ptr %preset_dict_size, align 8, !dbg !94, !tbaa !95
  %lc = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 3, !dbg !96
  store i32 3, ptr %lc, align 4, !dbg !97, !tbaa !98
  %lp = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 4, !dbg !99
  store i32 0, ptr %lp, align 8, !dbg !100, !tbaa !101
  %pb = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 5, !dbg !102
  store i32 2, ptr %pb, align 4, !dbg !103, !tbaa !104
  store i8 18, ptr %.compoundliteral, align 1, !dbg !105, !tbaa !106
  %arrayinit.element = getelementptr inbounds i8, ptr %.compoundliteral, i64 1, !dbg !105
  store i8 20, ptr %arrayinit.element, align 1, !dbg !105, !tbaa !106
  %arrayinit.element3 = getelementptr inbounds i8, ptr %.compoundliteral, i64 2, !dbg !105
  store i8 21, ptr %arrayinit.element3, align 1, !dbg !105, !tbaa !106
  %arrayinit.element4 = getelementptr inbounds i8, ptr %.compoundliteral, i64 3, !dbg !105
  store i8 22, ptr %arrayinit.element4, align 1, !dbg !105, !tbaa !106
  %arrayinit.element5 = getelementptr inbounds i8, ptr %.compoundliteral, i64 4, !dbg !105
  store i8 22, ptr %arrayinit.element5, align 1, !dbg !105, !tbaa !106
  %arrayinit.element6 = getelementptr inbounds i8, ptr %.compoundliteral, i64 5, !dbg !105
  store i8 23, ptr %arrayinit.element6, align 1, !dbg !105, !tbaa !106
  %arrayinit.element7 = getelementptr inbounds i8, ptr %.compoundliteral, i64 6, !dbg !105
  store i8 23, ptr %arrayinit.element7, align 1, !dbg !105, !tbaa !106
  %arrayinit.element8 = getelementptr inbounds i8, ptr %.compoundliteral, i64 7, !dbg !105
  store i8 24, ptr %arrayinit.element8, align 1, !dbg !105, !tbaa !106
  %arrayinit.element9 = getelementptr inbounds i8, ptr %.compoundliteral, i64 8, !dbg !105
  store i8 25, ptr %arrayinit.element9, align 1, !dbg !105, !tbaa !106
  %arrayinit.element10 = getelementptr inbounds i8, ptr %.compoundliteral, i64 9, !dbg !105
  store i8 26, ptr %arrayinit.element10, align 1, !dbg !105, !tbaa !106
  %idxprom = zext i32 %and to i64, !dbg !107
  %arrayidx = getelementptr inbounds [10 x i8], ptr %.compoundliteral, i64 0, i64 %idxprom, !dbg !107
  %0 = load i8, ptr %arrayidx, align 1, !dbg !107, !tbaa !106
  %conv = zext i8 %0 to i32, !dbg !107
  %shl = shl nuw i32 1, %conv, !dbg !108
  store i32 %shl, ptr %options, align 8, !dbg !109, !tbaa !110
  %cmp11 = icmp ult i32 %and, 4, !dbg !111
  %mode = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 6, !dbg !113
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !114

if.then13:                                        ; preds = %if.end
  store i32 1, ptr %mode, align 8, !dbg !115, !tbaa !117
  %cmp14 = icmp eq i32 %and, 0, !dbg !118
  %cond = select i1 %cmp14, i32 3, i32 4, !dbg !119
  %mf = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 8, !dbg !120
  store i32 %cond, ptr %mf, align 8, !dbg !121, !tbaa !122
  %cmp16 = icmp ult i32 %and, 2, !dbg !123
  %cond18 = select i1 %cmp16, i32 128, i32 273, !dbg !124
  %nice_len = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 7, !dbg !125
  store i32 %cond18, ptr %nice_len, align 4, !dbg !126, !tbaa !127
  store i8 4, ptr %.compoundliteral19, align 1, !dbg !128, !tbaa !106
  %arrayinit.element21 = getelementptr inbounds i8, ptr %.compoundliteral19, i64 1, !dbg !128
  store i8 8, ptr %arrayinit.element21, align 1, !dbg !128, !tbaa !106
  %arrayinit.element22 = getelementptr inbounds i8, ptr %.compoundliteral19, i64 2, !dbg !128
  store i8 24, ptr %arrayinit.element22, align 1, !dbg !128, !tbaa !106
  %arrayinit.element23 = getelementptr inbounds i8, ptr %.compoundliteral19, i64 3, !dbg !128
  store i8 48, ptr %arrayinit.element23, align 1, !dbg !128, !tbaa !106
  %arrayidx25 = getelementptr inbounds [4 x i8], ptr %.compoundliteral19, i64 0, i64 %idxprom, !dbg !129
  %1 = load i8, ptr %arrayidx25, align 1, !dbg !129, !tbaa !106
  %conv26 = zext i8 %1 to i32, !dbg !129
  br label %if.end37, !dbg !130

if.else:                                          ; preds = %if.end
  store i32 2, ptr %mode, align 8, !dbg !131, !tbaa !117
  %mf28 = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 8, !dbg !133
  store i32 20, ptr %mf28, align 8, !dbg !134, !tbaa !122
  %cmp29 = icmp eq i32 %and, 4, !dbg !135
  br i1 %cmp29, label %cond.end, label %cond.false, !dbg !136

cond.false:                                       ; preds = %if.else
  %cmp31 = icmp eq i32 %and, 5, !dbg !137
  %cond33 = select i1 %cmp31, i32 32, i32 64, !dbg !138
  br label %cond.end, !dbg !136

cond.end:                                         ; preds = %if.else, %cond.false
  %cond34 = phi i32 [ %cond33, %cond.false ], [ 16, %if.else ], !dbg !136
  %nice_len35 = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 7, !dbg !139
  store i32 %cond34, ptr %nice_len35, align 4, !dbg !140, !tbaa !127
  br label %if.end37

if.end37:                                         ; preds = %cond.end, %if.then13
  %.sink = phi i32 [ 0, %cond.end ], [ %conv26, %if.then13 ]
  %depth36 = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 9, !dbg !113
  store i32 %.sink, ptr %depth36, align 4, !dbg !113, !tbaa !141
  %tobool39.not = icmp sgt i32 %preset, -1, !dbg !142
  br i1 %tobool39.not, label %cleanup, label %if.then40, !dbg !144

if.then40:                                        ; preds = %if.end37
  %mode41 = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 6, !dbg !145
  store i32 2, ptr %mode41, align 8, !dbg !147, !tbaa !117
  %mf42 = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 8, !dbg !148
  store i32 20, ptr %mf42, align 8, !dbg !149, !tbaa !122
  switch i32 %and, label %if.else51 [
    i32 5, label %cleanup.sink.split
    i32 3, label %cleanup.sink.split
  ], !dbg !150

if.else51:                                        ; preds = %if.then40
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then40, %if.then40, %if.else51
  %.sink90 = phi i32 [ 273, %if.else51 ], [ 192, %if.then40 ], [ 192, %if.then40 ]
  %.sink89 = phi i32 [ 512, %if.else51 ], [ 0, %if.then40 ], [ 0, %if.then40 ]
  %nice_len52 = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 7, !dbg !152
  store i32 %.sink90, ptr %nice_len52, align 4, !dbg !152, !tbaa !127
  %depth53 = getelementptr inbounds %struct.lzma_options_lzma, ptr %options, i64 0, i32 9, !dbg !152
  store i32 %.sink89, ptr %depth53, align 4, !dbg !152, !tbaa !141
  br label %cleanup, !dbg !153

cleanup:                                          ; preds = %cleanup.sink.split, %if.end37, %entry
  %retval.0 = phi i8 [ 1, %entry ], [ 0, %if.end37 ], [ 0, %cleanup.sink.split ], !dbg !80
  ret i8 %retval.0, !dbg !153
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn writeonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/lzma/lzma_encoder_presets.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "0a5ebb3f0e6b11f43a1e1f264dd97819")
!2 = !{!3, !9, !16}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 138, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/lzma.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c59c540efa0aff44f03d71331089fff8")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "LZMA_MODE_FAST", value: 1)
!8 = !DIEnumerator(name: "LZMA_MODE_NORMAL", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 58, baseType: !5, size: 32, elements: !10)
!10 = !{!11, !12, !13, !14, !15}
!11 = !DIEnumerator(name: "LZMA_MF_HC3", value: 3)
!12 = !DIEnumerator(name: "LZMA_MF_HC4", value: 4)
!13 = !DIEnumerator(name: "LZMA_MF_BT2", value: 18)
!14 = !DIEnumerator(name: "LZMA_MF_BT3", value: 19)
!15 = !DIEnumerator(name: "LZMA_MF_BT4", value: 20)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 44, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!18 = !{!19}
!19 = !DIEnumerator(name: "LZMA_RESERVED_ENUM", value: 0)
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!27 = distinct !DISubprogram(name: "lzma_lzma_preset", scope: !28, file: !28, line: 17, type: !29, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!28 = !DIFile(filename: "apps/557.xz_r/src/liblzma/lzma/lzma_encoder_presets.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "0a5ebb3f0e6b11f43a1e1f264dd97819")
!29 = !DISubroutineType(types: !30)
!30 = !{!31, !33, !38}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !17, line: 29, baseType: !32)
!32 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_options_lzma", file: !4, line: 399, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 185, size: 896, elements: !36)
!36 = !{!37, !42, !47, !48, !49, !50, !51, !53, !54, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "dict_size", scope: !35, file: !4, line: 217, baseType: !38, size: 32)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !39, line: 26, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !41, line: 42, baseType: !5)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!42 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict", scope: !35, file: !4, line: 240, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !39, line: 24, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !41, line: 38, baseType: !32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "preset_dict_size", scope: !35, file: !4, line: 254, baseType: !38, size: 32, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "lc", scope: !35, file: !4, line: 281, baseType: !38, size: 32, offset: 160)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "lp", scope: !35, file: !4, line: 293, baseType: !38, size: 32, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "pb", scope: !35, file: !4, line: 316, baseType: !38, size: 32, offset: 224)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !35, file: !4, line: 322, baseType: !52, size: 32, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_mode", file: !4, line: 155, baseType: !3)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nice_len", scope: !35, file: !4, line: 342, baseType: !38, size: 32, offset: 288)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "mf", scope: !35, file: !4, line: 345, baseType: !55, size: 32, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_match_finder", file: !4, line: 111, baseType: !9)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !35, file: !4, line: 375, baseType: !38, size: 32, offset: 352)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int1", scope: !35, file: !4, line: 384, baseType: !38, size: 32, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int2", scope: !35, file: !4, line: 385, baseType: !38, size: 32, offset: 416)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int3", scope: !35, file: !4, line: 386, baseType: !38, size: 32, offset: 448)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int4", scope: !35, file: !4, line: 387, baseType: !38, size: 32, offset: 480)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int5", scope: !35, file: !4, line: 388, baseType: !38, size: 32, offset: 512)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int6", scope: !35, file: !4, line: 389, baseType: !38, size: 32, offset: 544)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int7", scope: !35, file: !4, line: 390, baseType: !38, size: 32, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_int8", scope: !35, file: !4, line: 391, baseType: !38, size: 32, offset: 608)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum1", scope: !35, file: !4, line: 392, baseType: !66, size: 32, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_reserved_enum", file: !17, line: 46, baseType: !16)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum2", scope: !35, file: !4, line: 393, baseType: !66, size: 32, offset: 672)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum3", scope: !35, file: !4, line: 394, baseType: !66, size: 32, offset: 704)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_enum4", scope: !35, file: !4, line: 395, baseType: !66, size: 32, offset: 736)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr1", scope: !35, file: !4, line: 396, baseType: !71, size: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_ptr2", scope: !35, file: !4, line: 397, baseType: !71, size: 64, offset: 832)
!73 = !{!74, !75, !76, !78, !79}
!74 = !DILocalVariable(name: "options", arg: 1, scope: !27, file: !28, line: 17, type: !33)
!75 = !DILocalVariable(name: "preset", arg: 2, scope: !27, file: !28, line: 17, type: !38)
!76 = !DILocalVariable(name: "level", scope: !27, file: !28, line: 19, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!78 = !DILocalVariable(name: "flags", scope: !27, file: !28, line: 20, type: !77)
!79 = !DILocalVariable(name: "supported_flags", scope: !27, file: !28, line: 21, type: !77)
!80 = !DILocation(line: 0, scope: !27)
!81 = !DILocation(line: 19, column: 32, scope: !27)
!82 = !DILocation(line: 23, column: 12, scope: !83)
!83 = distinct !DILexicalBlock(scope: !27, file: !28, line: 23, column: 6)
!84 = !DILocation(line: 23, column: 16, scope: !83)
!85 = !DILocation(line: 26, column: 11, scope: !27)
!86 = !DILocation(line: 26, column: 23, scope: !27)
!87 = !{!88, !92, i64 8}
!88 = !{!"", !89, i64 0, !92, i64 8, !89, i64 16, !89, i64 20, !89, i64 24, !89, i64 28, !90, i64 32, !89, i64 36, !90, i64 40, !89, i64 44, !89, i64 48, !89, i64 52, !89, i64 56, !89, i64 60, !89, i64 64, !89, i64 68, !89, i64 72, !89, i64 76, !90, i64 80, !90, i64 84, !90, i64 88, !90, i64 92, !92, i64 96, !92, i64 104}
!89 = !{!"int", !90, i64 0}
!90 = !{!"omnipotent char", !91, i64 0}
!91 = !{!"Simple C/C++ TBAA"}
!92 = !{!"any pointer", !90, i64 0}
!93 = !DILocation(line: 27, column: 11, scope: !27)
!94 = !DILocation(line: 27, column: 28, scope: !27)
!95 = !{!88, !89, i64 16}
!96 = !DILocation(line: 29, column: 11, scope: !27)
!97 = !DILocation(line: 29, column: 14, scope: !27)
!98 = !{!88, !89, i64 20}
!99 = !DILocation(line: 30, column: 11, scope: !27)
!100 = !DILocation(line: 30, column: 14, scope: !27)
!101 = !{!88, !89, i64 24}
!102 = !DILocation(line: 31, column: 11, scope: !27)
!103 = !DILocation(line: 31, column: 14, scope: !27)
!104 = !{!88, !89, i64 28}
!105 = !DILocation(line: 37, column: 50, scope: !27)
!106 = !{!90, !90, i64 0}
!107 = !DILocation(line: 37, column: 38, scope: !27)
!108 = !DILocation(line: 37, column: 35, scope: !27)
!109 = !DILocation(line: 37, column: 21, scope: !27)
!110 = !{!88, !89, i64 0}
!111 = !DILocation(line: 41, column: 12, scope: !112)
!112 = distinct !DILexicalBlock(scope: !27, file: !28, line: 41, column: 6)
!113 = !DILocation(line: 0, scope: !112)
!114 = !DILocation(line: 41, column: 6, scope: !27)
!115 = !DILocation(line: 42, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !28, line: 41, column: 18)
!117 = !{!88, !90, i64 32}
!118 = !DILocation(line: 43, column: 23, scope: !116)
!119 = !DILocation(line: 43, column: 17, scope: !116)
!120 = !DILocation(line: 43, column: 12, scope: !116)
!121 = !DILocation(line: 43, column: 15, scope: !116)
!122 = !{!88, !90, i64 40}
!123 = !DILocation(line: 44, column: 29, scope: !116)
!124 = !DILocation(line: 44, column: 23, scope: !116)
!125 = !DILocation(line: 44, column: 12, scope: !116)
!126 = !DILocation(line: 44, column: 21, scope: !116)
!127 = !{!88, !89, i64 36}
!128 = !DILocation(line: 48, column: 32, scope: !116)
!129 = !DILocation(line: 48, column: 20, scope: !116)
!130 = !DILocation(line: 50, column: 2, scope: !116)
!131 = !DILocation(line: 51, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !112, file: !28, line: 50, column: 9)
!133 = !DILocation(line: 52, column: 12, scope: !132)
!134 = !DILocation(line: 52, column: 15, scope: !132)
!135 = !DILocation(line: 53, column: 29, scope: !132)
!136 = !DILocation(line: 53, column: 23, scope: !132)
!137 = !DILocation(line: 53, column: 47, scope: !132)
!138 = !DILocation(line: 53, column: 41, scope: !132)
!139 = !DILocation(line: 53, column: 12, scope: !132)
!140 = !DILocation(line: 53, column: 21, scope: !132)
!141 = !{!88, !89, i64 44}
!142 = !DILocation(line: 57, column: 12, scope: !143)
!143 = distinct !DILexicalBlock(scope: !27, file: !28, line: 57, column: 6)
!144 = !DILocation(line: 57, column: 6, scope: !27)
!145 = !DILocation(line: 58, column: 12, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !28, line: 57, column: 35)
!147 = !DILocation(line: 58, column: 17, scope: !146)
!148 = !DILocation(line: 59, column: 12, scope: !146)
!149 = !DILocation(line: 59, column: 15, scope: !146)
!150 = !DILocation(line: 60, column: 18, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !28, line: 60, column: 7)
!152 = !DILocation(line: 0, scope: !151)
!153 = !DILocation(line: 70, column: 1, scope: !27)
