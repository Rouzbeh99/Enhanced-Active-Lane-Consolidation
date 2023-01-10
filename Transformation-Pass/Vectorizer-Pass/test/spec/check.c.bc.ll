; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r/llvm-ir/557.xz_r_bc/check/check.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/check/check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lzma_check_state = type { %union.anon, %union.anon.0 }
%union.anon = type { [8 x i64] }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { [8 x i32], i64 }

@lzma_check_is_supported.available_checks = internal unnamed_addr constant [16 x i8] c"\01\01\00\00\01\00\00\00\00\00\01\00\00\00\00\00", align 16, !dbg !0
@lzma_check_size.check_sizes = internal unnamed_addr constant [16 x i8] c"\00\04\04\04\08\08\08\10\10\10   @@@", align 16, !dbg !30

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local zeroext i8 @lzma_check_is_supported(i32 noundef %type) local_unnamed_addr #0 !dbg !2 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !44, metadata !DIExpression()), !dbg !54
  %cmp = icmp ugt i32 %type, 15, !dbg !55
  br i1 %cmp, label %return, label %if.end, !dbg !57

if.end:                                           ; preds = %entry
  %idxprom = zext i32 %type to i64, !dbg !58
  %arrayidx = getelementptr inbounds [16 x i8], ptr @lzma_check_is_supported.available_checks, i64 0, i64 %idxprom, !dbg !58
  %0 = load i8, ptr %arrayidx, align 1, !dbg !58, !tbaa !59
  br label %return, !dbg !62

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %0, %if.end ], [ 0, %entry ], !dbg !54
  ret i8 %retval.0, !dbg !63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable
define dso_local i32 @lzma_check_size(i32 noundef %type) local_unnamed_addr #0 !dbg !32 {
entry:
  call void @llvm.dbg.value(metadata i32 %type, metadata !36, metadata !DIExpression()), !dbg !64
  %cmp = icmp ugt i32 %type, 15, !dbg !65
  br i1 %cmp, label %return, label %if.end, !dbg !67

if.end:                                           ; preds = %entry
  %idxprom = zext i32 %type to i64, !dbg !68
  %arrayidx = getelementptr inbounds [16 x i8], ptr @lzma_check_size.check_sizes, i64 0, i64 %idxprom, !dbg !68
  %0 = load i8, ptr %arrayidx, align 1, !dbg !68, !tbaa !59
  %conv = zext i8 %0 to i32, !dbg !68
  br label %return, !dbg !69

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %conv, %if.end ], [ -1, %entry ], !dbg !64
  ret i32 %retval.0, !dbg !70
}

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_init(ptr noundef %check, i32 noundef %type) local_unnamed_addr #1 !dbg !71 {
entry:
  call void @llvm.dbg.value(metadata ptr %check, metadata !104, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.value(metadata i32 %type, metadata !105, metadata !DIExpression()), !dbg !106
  switch i32 %type, label %sw.epilog [
    i32 10, label %sw.bb3
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
  ], !dbg !107

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1, !dbg !108
  store i32 0, ptr %state, align 8, !dbg !110, !tbaa !59
  br label %sw.epilog, !dbg !111

sw.bb1:                                           ; preds = %entry
  %state2 = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1, !dbg !112
  store i64 0, ptr %state2, align 8, !dbg !113, !tbaa !59
  br label %sw.epilog, !dbg !114

sw.bb3:                                           ; preds = %entry
  tail call void @lzma_sha256_init(ptr noundef %check) #4, !dbg !115
  br label %sw.epilog, !dbg !116

sw.epilog:                                        ; preds = %entry, %sw.bb3, %sw.bb1, %sw.bb
  ret void, !dbg !117
}

declare !dbg !118 void @lzma_sha256_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_update(ptr noundef %check, i32 noundef %type, ptr noundef %buf, i64 noundef %size) local_unnamed_addr #1 !dbg !122 {
entry:
  call void @llvm.dbg.value(metadata ptr %check, metadata !129, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i32 %type, metadata !130, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata ptr %buf, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata i64 %size, metadata !132, metadata !DIExpression()), !dbg !133
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 10, label %sw.bb6
  ], !dbg !134

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1, !dbg !135
  %0 = load i32, ptr %state, align 8, !dbg !137, !tbaa !59
  %call = tail call i32 @lzma_crc32(ptr noundef %buf, i64 noundef %size, i32 noundef %0) #4, !dbg !138
  store i32 %call, ptr %state, align 8, !dbg !139, !tbaa !59
  br label %sw.epilog, !dbg !140

sw.bb2:                                           ; preds = %entry
  %state3 = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1, !dbg !141
  %1 = load i64, ptr %state3, align 8, !dbg !142, !tbaa !59
  %call4 = tail call i64 @lzma_crc64(ptr noundef %buf, i64 noundef %size, i64 noundef %1) #4, !dbg !143
  store i64 %call4, ptr %state3, align 8, !dbg !144, !tbaa !59
  br label %sw.epilog, !dbg !145

sw.bb6:                                           ; preds = %entry
  tail call void @lzma_sha256_update(ptr noundef %buf, i64 noundef %size, ptr noundef %check) #4, !dbg !146
  br label %sw.epilog, !dbg !147

sw.epilog:                                        ; preds = %entry, %sw.bb6, %sw.bb2, %sw.bb
  ret void, !dbg !148
}

declare !dbg !149 i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !152 i64 @lzma_crc64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !155 void @lzma_sha256_update(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @lzma_check_finish(ptr noundef %check, i32 noundef %type) local_unnamed_addr #1 !dbg !158 {
entry:
  call void @llvm.dbg.value(metadata ptr %check, metadata !160, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %type, metadata !161, metadata !DIExpression()), !dbg !162
  switch i32 %type, label %sw.epilog [
    i32 1, label %sw.bb
    i32 4, label %sw.bb1
    i32 10, label %sw.bb5
  ], !dbg !163

sw.bb:                                            ; preds = %entry
  %state = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1, !dbg !164
  %0 = load i32, ptr %state, align 8, !dbg !164, !tbaa !59
  store i32 %0, ptr %check, align 8, !dbg !166, !tbaa !59
  br label %sw.epilog, !dbg !167

sw.bb1:                                           ; preds = %entry
  %state2 = getelementptr inbounds %struct.lzma_check_state, ptr %check, i64 0, i32 1, !dbg !168
  %1 = load i64, ptr %state2, align 8, !dbg !168, !tbaa !59
  store i64 %1, ptr %check, align 8, !dbg !169, !tbaa !59
  br label %sw.epilog, !dbg !170

sw.bb5:                                           ; preds = %entry
  tail call void @lzma_sha256_finish(ptr noundef %check) #4, !dbg !171
  br label %sw.epilog, !dbg !172

sw.epilog:                                        ; preds = %entry, %sw.bb5, %sw.bb1, %sw.bb
  ret void, !dbg !173
}

declare !dbg !174 void @lzma_sha256_finish(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!18}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "available_checks", scope: !2, file: !3, line: 22, type: !45, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "lzma_check_is_supported", scope: !3, file: !3, line: 17, type: !4, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !43)
!3 = !DIFile(filename: "apps/557.xz_r/src/liblzma/check/check.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "8fa3c3e33fe92c31a91a9f5b9e5120ff")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_bool", file: !7, line: 29, baseType: !8)
!7 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/base.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "81a3070447cc5b61b56cfbed076853db")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check", file: !10, line: 55, baseType: !11)
!10 = !DIFile(filename: "apps/557.xz_r/src/liblzma/api/lzma/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b07c3297e2bcc14bb477793d08325ee3")
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 27, baseType: !12, size: 32, elements: !13)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "LZMA_CHECK_NONE", value: 0)
!15 = !DIEnumerator(name: "LZMA_CHECK_CRC32", value: 1)
!16 = !DIEnumerator(name: "LZMA_CHECK_CRC64", value: 4)
!17 = !DIEnumerator(name: "LZMA_CHECK_SHA256", value: 10)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !21, globals: !29, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/557.xz_r/src/liblzma/check/check.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/557.xz_r", checksumkind: CSK_MD5, checksum: "8fa3c3e33fe92c31a91a9f5b9e5120ff")
!20 = !{!11}
!21 = !{!12, !22, !26}
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !23, line: 26, baseType: !24)
!23 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "d3ea318a915682aaf6645ec16ac9f991")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !25, line: 42, baseType: !12)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !23, line: 27, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !25, line: 45, baseType: !28)
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{!0, !30}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "check_sizes", scope: !32, file: !3, line: 70, type: !37, isLocal: true, isDefinition: true)
!32 = distinct !DISubprogram(name: "lzma_check_size", scope: !3, file: !3, line: 64, type: !33, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!22, !9}
!35 = !{!36}
!36 = !DILocalVariable(name: "type", arg: 1, scope: !32, file: !3, line: 64, type: !9)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !41)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !23, line: 24, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !25, line: 38, baseType: !8)
!41 = !{!42}
!42 = !DISubrange(count: 16)
!43 = !{!44}
!44 = !DILocalVariable(name: "type", arg: 1, scope: !2, file: !3, line: 17, type: !9)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 128, elements: !41)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!47 = !{i32 7, !"Dwarf Version", i32 5}
!48 = !{i32 2, !"Debug Info Version", i32 3}
!49 = !{i32 1, !"wchar_size", i32 4}
!50 = !{i32 7, !"PIC Level", i32 2}
!51 = !{i32 7, !"PIE Level", i32 2}
!52 = !{i32 7, !"uwtable", i32 2}
!53 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!54 = !DILocation(line: 0, scope: !2)
!55 = !DILocation(line: 19, column: 27, scope: !56)
!56 = distinct !DILexicalBlock(scope: !2, file: !3, line: 19, column: 6)
!57 = !DILocation(line: 19, column: 6, scope: !2)
!58 = !DILocation(line: 59, column: 9, scope: !2)
!59 = !{!60, !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C/C++ TBAA"}
!62 = !DILocation(line: 59, column: 2, scope: !2)
!63 = !DILocation(line: 60, column: 1, scope: !2)
!64 = !DILocation(line: 0, scope: !32)
!65 = !DILocation(line: 66, column: 27, scope: !66)
!66 = distinct !DILexicalBlock(scope: !32, file: !3, line: 66, column: 6)
!67 = !DILocation(line: 66, column: 6, scope: !32)
!68 = !DILocation(line: 79, column: 9, scope: !32)
!69 = !DILocation(line: 79, column: 2, scope: !32)
!70 = !DILocation(line: 80, column: 1, scope: !32)
!71 = distinct !DISubprogram(name: "lzma_check_init", scope: !3, file: !3, line: 84, type: !72, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !103)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !9}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "lzma_check_state", file: !76, line: 56, baseType: !77)
!76 = !DIFile(filename: "apps/557.xz_r/src/liblzma/check/check.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "938220df6e0ab33115ef85b0d8c70c5b")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !76, line: 34, size: 832, elements: !78)
!78 = !{!79, !92}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !77, file: !76, line: 40, baseType: !80, size: 512)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !76, line: 36, size: 512, elements: !81)
!81 = !{!82, !86, !88}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "u8", scope: !80, file: !76, line: 37, baseType: !83, size: 512)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 512, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !80, file: !76, line: 38, baseType: !87, size: 512)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 512, elements: !41)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !80, file: !76, line: 39, baseType: !89, size: 512)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 512, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 8)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !77, file: !76, line: 54, baseType: !93, size: 320, offset: 512)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !77, file: !76, line: 43, size: 320, elements: !94)
!94 = !{!95, !96, !97}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "crc32", scope: !93, file: !76, line: 44, baseType: !22, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "crc64", scope: !93, file: !76, line: 45, baseType: !26, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "sha256", scope: !93, file: !76, line: 53, baseType: !98, size: 320)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !93, file: !76, line: 47, size: 320, elements: !99)
!99 = !{!100, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !98, file: !76, line: 49, baseType: !101, size: 256)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 256, elements: !90)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !98, file: !76, line: 52, baseType: !26, size: 64, offset: 256)
!103 = !{!104, !105}
!104 = !DILocalVariable(name: "check", arg: 1, scope: !71, file: !3, line: 84, type: !74)
!105 = !DILocalVariable(name: "type", arg: 2, scope: !71, file: !3, line: 84, type: !9)
!106 = !DILocation(line: 0, scope: !71)
!107 = !DILocation(line: 86, column: 2, scope: !71)
!108 = !DILocation(line: 92, column: 10, scope: !109)
!109 = distinct !DILexicalBlock(scope: !71, file: !3, line: 86, column: 16)
!110 = !DILocation(line: 92, column: 22, scope: !109)
!111 = !DILocation(line: 93, column: 3, scope: !109)
!112 = !DILocation(line: 98, column: 10, scope: !109)
!113 = !DILocation(line: 98, column: 22, scope: !109)
!114 = !DILocation(line: 99, column: 3, scope: !109)
!115 = !DILocation(line: 104, column: 3, scope: !109)
!116 = !DILocation(line: 105, column: 3, scope: !109)
!117 = !DILocation(line: 112, column: 2, scope: !71)
!118 = !DISubprogram(name: "lzma_sha256_init", scope: !76, file: !76, line: 86, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !74}
!121 = !{}
!122 = distinct !DISubprogram(name: "lzma_check_update", scope: !3, file: !3, line: 117, type: !123, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !128)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !74, !9, !125, !126}
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !127, line: 46, baseType: !28)
!127 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!128 = !{!129, !130, !131, !132}
!129 = !DILocalVariable(name: "check", arg: 1, scope: !122, file: !3, line: 117, type: !74)
!130 = !DILocalVariable(name: "type", arg: 2, scope: !122, file: !3, line: 117, type: !9)
!131 = !DILocalVariable(name: "buf", arg: 3, scope: !122, file: !3, line: 118, type: !125)
!132 = !DILocalVariable(name: "size", arg: 4, scope: !122, file: !3, line: 118, type: !126)
!133 = !DILocation(line: 0, scope: !122)
!134 = !DILocation(line: 120, column: 2, scope: !122)
!135 = !DILocation(line: 123, column: 53, scope: !136)
!136 = distinct !DILexicalBlock(scope: !122, file: !3, line: 120, column: 16)
!137 = !DILocation(line: 123, column: 59, scope: !136)
!138 = !DILocation(line: 123, column: 24, scope: !136)
!139 = !DILocation(line: 123, column: 22, scope: !136)
!140 = !DILocation(line: 124, column: 3, scope: !136)
!141 = !DILocation(line: 129, column: 53, scope: !136)
!142 = !DILocation(line: 129, column: 59, scope: !136)
!143 = !DILocation(line: 129, column: 24, scope: !136)
!144 = !DILocation(line: 129, column: 22, scope: !136)
!145 = !DILocation(line: 130, column: 3, scope: !136)
!146 = !DILocation(line: 135, column: 3, scope: !136)
!147 = !DILocation(line: 136, column: 3, scope: !136)
!148 = !DILocation(line: 143, column: 2, scope: !122)
!149 = !DISubprogram(name: "lzma_crc32", scope: !10, file: !10, line: 119, type: !150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!150 = !DISubroutineType(types: !151)
!151 = !{!22, !125, !126, !22}
!152 = !DISubprogram(name: "lzma_crc64", scope: !10, file: !10, line: 131, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!153 = !DISubroutineType(types: !154)
!154 = !{!26, !125, !126, !26}
!155 = !DISubprogram(name: "lzma_sha256_update", scope: !76, file: !76, line: 89, type: !156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !125, !126, !74}
!158 = distinct !DISubprogram(name: "lzma_check_finish", scope: !3, file: !3, line: 148, type: !72, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !159)
!159 = !{!160, !161}
!160 = !DILocalVariable(name: "check", arg: 1, scope: !158, file: !3, line: 148, type: !74)
!161 = !DILocalVariable(name: "type", arg: 2, scope: !158, file: !3, line: 148, type: !9)
!162 = !DILocation(line: 0, scope: !158)
!163 = !DILocation(line: 150, column: 2, scope: !158)
!164 = !DILocation(line: 153, column: 26, scope: !165)
!165 = distinct !DILexicalBlock(scope: !158, file: !3, line: 150, column: 16)
!166 = !DILocation(line: 153, column: 24, scope: !165)
!167 = !DILocation(line: 154, column: 3, scope: !165)
!168 = !DILocation(line: 159, column: 26, scope: !165)
!169 = !DILocation(line: 159, column: 24, scope: !165)
!170 = !DILocation(line: 160, column: 3, scope: !165)
!171 = !DILocation(line: 165, column: 3, scope: !165)
!172 = !DILocation(line: 166, column: 3, scope: !165)
!173 = !DILocation(line: 173, column: 2, scope: !158)
!174 = !DISubprogram(name: "lzma_sha256_finish", scope: !76, file: !76, line: 93, type: !119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !121)
