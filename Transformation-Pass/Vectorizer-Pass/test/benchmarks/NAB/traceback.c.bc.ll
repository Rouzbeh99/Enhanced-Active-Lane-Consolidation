; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/traceback.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/traceback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg(i32 noundef %fatal, ptr nocapture noundef readonly %msg) local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !17, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.value(metadata ptr %msg, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load ptr, ptr @stderr, align 8, !dbg !20, !tbaa !21
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef %msg) #4, !dbg !25
  %tobool.not = icmp eq i32 %fatal, 0, !dbg !26
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !28

if.then:                                          ; preds = %entry
  tail call void @exit(i32 noundef 1) #5, !dbg !29
  unreachable, !dbg !29

if.end:                                           ; preds = %entry
  ret i32 0, !dbg !30
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg_s(i32 noundef %fatal, ptr nocapture noundef readonly %fmt, ptr noundef %str) local_unnamed_addr #0 !dbg !31 {
entry:
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !35, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata ptr %fmt, metadata !36, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata ptr %str, metadata !37, metadata !DIExpression()), !dbg !38
  %0 = load ptr, ptr @stderr, align 8, !dbg !39, !tbaa !21
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef %fmt, ptr noundef %str) #4, !dbg !40
  %tobool.not = icmp eq i32 %fatal, 0, !dbg !41
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !43

if.then:                                          ; preds = %entry
  tail call void @exit(i32 noundef 1) #5, !dbg !44
  unreachable, !dbg !44

if.end:                                           ; preds = %entry
  ret i32 0, !dbg !45
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg_2s(i32 noundef %fatal, ptr nocapture noundef readonly %fmt, ptr noundef %str1, ptr noundef %str2) local_unnamed_addr #0 !dbg !46 {
entry:
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !50, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata ptr %fmt, metadata !51, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata ptr %str1, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata ptr %str2, metadata !53, metadata !DIExpression()), !dbg !54
  %0 = load ptr, ptr @stderr, align 8, !dbg !55, !tbaa !21
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef %fmt, ptr noundef %str1, ptr noundef %str2) #4, !dbg !56
  %tobool.not = icmp eq i32 %fatal, 0, !dbg !57
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !59

if.then:                                          ; preds = %entry
  tail call void @exit(i32 noundef 1) #5, !dbg !60
  unreachable, !dbg !60

if.end:                                           ; preds = %entry
  ret i32 0, !dbg !61
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg_d(i32 noundef %fatal, ptr nocapture noundef readonly %fmt, i32 noundef %i) local_unnamed_addr #0 !dbg !62 {
entry:
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !66, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata ptr %fmt, metadata !67, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i32 %i, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load ptr, ptr @stderr, align 8, !dbg !70, !tbaa !21
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef %fmt, i32 noundef %i) #4, !dbg !71
  %tobool.not = icmp eq i32 %fatal, 0, !dbg !72
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !74

if.then:                                          ; preds = %entry
  tail call void @exit(i32 noundef 1) #5, !dbg !75
  unreachable, !dbg !75

if.end:                                           ; preds = %entry
  ret i32 0, !dbg !76
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/traceback.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "ea242c85468b2db3a407b311c277d47b")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!9 = distinct !DISubprogram(name: "rt_errormsg", scope: !10, file: !10, line: 11, type: !11, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DIFile(filename: "apps/544.nab_r/src/traceback.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "ea242c85468b2db3a407b311c277d47b")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !14}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "fatal", arg: 1, scope: !9, file: !10, line: 11, type: !13)
!18 = !DILocalVariable(name: "msg", arg: 2, scope: !9, file: !10, line: 11, type: !14)
!19 = !DILocation(line: 0, scope: !9)
!20 = !DILocation(line: 14, column: 11, scope: !9)
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 14, column: 2, scope: !9)
!26 = !DILocation(line: 15, column: 6, scope: !27)
!27 = distinct !DILexicalBlock(scope: !9, file: !10, line: 15, column: 6)
!28 = !DILocation(line: 15, column: 6, scope: !9)
!29 = !DILocation(line: 16, column: 3, scope: !27)
!30 = !DILocation(line: 17, column: 2, scope: !9)
!31 = distinct !DISubprogram(name: "rt_errormsg_s", scope: !10, file: !10, line: 20, type: !32, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{!13, !13, !14, !14}
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(name: "fatal", arg: 1, scope: !31, file: !10, line: 20, type: !13)
!36 = !DILocalVariable(name: "fmt", arg: 2, scope: !31, file: !10, line: 20, type: !14)
!37 = !DILocalVariable(name: "str", arg: 3, scope: !31, file: !10, line: 20, type: !14)
!38 = !DILocation(line: 0, scope: !31)
!39 = !DILocation(line: 23, column: 11, scope: !31)
!40 = !DILocation(line: 23, column: 2, scope: !31)
!41 = !DILocation(line: 24, column: 6, scope: !42)
!42 = distinct !DILexicalBlock(scope: !31, file: !10, line: 24, column: 6)
!43 = !DILocation(line: 24, column: 6, scope: !31)
!44 = !DILocation(line: 25, column: 3, scope: !42)
!45 = !DILocation(line: 26, column: 2, scope: !31)
!46 = distinct !DISubprogram(name: "rt_errormsg_2s", scope: !10, file: !10, line: 29, type: !47, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{!13, !13, !14, !14, !14}
!49 = !{!50, !51, !52, !53}
!50 = !DILocalVariable(name: "fatal", arg: 1, scope: !46, file: !10, line: 29, type: !13)
!51 = !DILocalVariable(name: "fmt", arg: 2, scope: !46, file: !10, line: 29, type: !14)
!52 = !DILocalVariable(name: "str1", arg: 3, scope: !46, file: !10, line: 29, type: !14)
!53 = !DILocalVariable(name: "str2", arg: 4, scope: !46, file: !10, line: 29, type: !14)
!54 = !DILocation(line: 0, scope: !46)
!55 = !DILocation(line: 32, column: 11, scope: !46)
!56 = !DILocation(line: 32, column: 2, scope: !46)
!57 = !DILocation(line: 33, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !10, line: 33, column: 6)
!59 = !DILocation(line: 33, column: 6, scope: !46)
!60 = !DILocation(line: 34, column: 3, scope: !58)
!61 = !DILocation(line: 35, column: 2, scope: !46)
!62 = distinct !DISubprogram(name: "rt_errormsg_d", scope: !10, file: !10, line: 38, type: !63, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{!13, !13, !14, !13}
!65 = !{!66, !67, !68}
!66 = !DILocalVariable(name: "fatal", arg: 1, scope: !62, file: !10, line: 38, type: !13)
!67 = !DILocalVariable(name: "fmt", arg: 2, scope: !62, file: !10, line: 38, type: !14)
!68 = !DILocalVariable(name: "i", arg: 3, scope: !62, file: !10, line: 38, type: !13)
!69 = !DILocation(line: 0, scope: !62)
!70 = !DILocation(line: 41, column: 11, scope: !62)
!71 = !DILocation(line: 41, column: 2, scope: !62)
!72 = !DILocation(line: 42, column: 6, scope: !73)
!73 = distinct !DILexicalBlock(scope: !62, file: !10, line: 42, column: 6)
!74 = !DILocation(line: 42, column: 6, scope: !62)
!75 = !DILocation(line: 43, column: 3, scope: !73)
!76 = !DILocation(line: 44, column: 2, scope: !62)
