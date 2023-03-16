; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r/llvm-ir/500.perlbench_r_bc/src/run.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }

@PL_op = external local_unnamed_addr global ptr, align 8
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @Perl_runops_standard() local_unnamed_addr #0 !dbg !11 {
entry:
  %0 = load ptr, ptr @PL_op, align 8, !dbg !48
  call void @llvm.dbg.value(metadata ptr %0, metadata !17, metadata !DIExpression()), !dbg !49
  br label %while.cond, !dbg !50

while.cond:                                       ; preds = %while.cond, %entry
  %op.0 = phi ptr [ %0, %entry ], [ %call, %while.cond ], !dbg !49
  call void @llvm.dbg.value(metadata ptr %op.0, metadata !17, metadata !DIExpression()), !dbg !49
  %op_ppaddr = getelementptr inbounds %struct.op, ptr %op.0, i64 0, i32 2, !dbg !51
  %1 = load ptr, ptr %op_ppaddr, align 8, !dbg !51
  %call = tail call ptr %1() #2, !dbg !52
  call void @llvm.dbg.value(metadata ptr %call, metadata !17, metadata !DIExpression()), !dbg !49
  store ptr %call, ptr @PL_op, align 8, !dbg !53
  %tobool.not = icmp eq ptr %call, null, !dbg !50
  br i1 %tobool.not, label %while.end, label %while.cond, !dbg !50, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  %2 = load i32, ptr @PL_sig_pending, align 4, !dbg !58
  %tobool1.not = icmp eq i32 %2, 0, !dbg !58
  br i1 %tobool1.not, label %if.end, label %if.then, !dbg !60

if.then:                                          ; preds = %while.end
  %3 = load ptr, ptr @PL_signalhook, align 8, !dbg !58
  tail call void %3() #2, !dbg !58
  br label %if.end, !dbg !58

if.end:                                           ; preds = %while.end, %if.then
  store i8 0, ptr @PL_tainted, align 1, !dbg !61
  ret i32 0, !dbg !62
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/500.perlbench_r/src/run.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/500.perlbench_r", checksumkind: CSK_MD5, checksum: "ddef6e090e28723300f745a9b5acb95d")
!2 = !{!3}
!3 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!11 = distinct !DISubprogram(name: "Perl_runops_standard", scope: !12, file: !12, line: 37, type: !13, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!12 = !DIFile(filename: "apps/500.perlbench_r/src/run.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ddef6e090e28723300f745a9b5acb95d")
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DILocalVariable(name: "op", scope: !11, file: !12, line: 39, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "OP", file: !20, line: 2617, baseType: !21)
!20 = !DIFile(filename: "apps/500.perlbench_r/src/perl.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "d6cbd7c2824e8e37adbd28e0286c9085")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "op", file: !22, line: 202, size: 320, elements: !23)
!22 = !DIFile(filename: "apps/500.perlbench_r/src/op.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "b88d747a6f3149f06a4a1e8e725e6800")
!23 = !{!24, !25, !26, !30, !34, !36, !37, !38, !39, !40, !41, !42, !43, !47}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "op_next", scope: !21, file: !22, line: 203, baseType: !18, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "op_sibling", scope: !21, file: !22, line: 203, baseType: !18, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "op_ppaddr", scope: !21, file: !22, line: 203, baseType: !27, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!18}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "op_targ", scope: !21, file: !22, line: 203, baseType: !31, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "PADOFFSET", file: !32, line: 25, baseType: !33)
!32 = !DIFile(filename: "apps/500.perlbench_r/src/pad.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "07d0fc40568e154e930466504379a358")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "op_type", scope: !21, file: !22, line: 203, baseType: !35, size: 9, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "op_opt", scope: !21, file: !22, line: 203, baseType: !35, size: 1, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "op_slabbed", scope: !21, file: !22, line: 203, baseType: !35, size: 1, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "op_savefree", scope: !21, file: !22, line: 203, baseType: !35, size: 1, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "op_static", scope: !21, file: !22, line: 203, baseType: !35, size: 1, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "op_folded", scope: !21, file: !22, line: 203, baseType: !35, size: 1, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "op_moresib", scope: !21, file: !22, line: 203, baseType: !35, size: 1, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "op_spare", scope: !21, file: !22, line: 203, baseType: !35, size: 1, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "op_flags", scope: !21, file: !22, line: 203, baseType: !44, size: 8, offset: 272)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "U8", file: !45, line: 171, baseType: !46)
!45 = !DIFile(filename: "apps/500.perlbench_r/src/handy.h", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "c8309d47b4ac9e3aa493b22b0023a43d")
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "op_private", scope: !21, file: !22, line: 203, baseType: !44, size: 8, offset: 280)
!48 = !DILocation(line: 39, column: 14, scope: !11)
!49 = !DILocation(line: 0, scope: !11)
!50 = !DILocation(line: 41, column: 5, scope: !11)
!51 = !DILocation(line: 41, column: 30, scope: !11)
!52 = !DILocation(line: 41, column: 26, scope: !11)
!53 = !DILocation(line: 41, column: 19, scope: !11)
!54 = distinct !{!54, !50, !55, !56, !57}
!55 = !DILocation(line: 43, column: 5, scope: !11)
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !DILocation(line: 44, column: 5, scope: !59)
!59 = distinct !DILexicalBlock(scope: !11, file: !12, line: 44, column: 5)
!60 = !DILocation(line: 44, column: 5, scope: !11)
!61 = !DILocation(line: 46, column: 5, scope: !11)
!62 = !DILocation(line: 47, column: 5, scope: !11)
