; ModuleID = '/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/traceback.c'
source_filename = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/traceback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg(i32 %0, i8* nocapture readonly %1) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !15, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.value(metadata i8* %1, metadata !16, metadata !DIExpression()), !dbg !17
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !18, !tbaa !19
  %4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %1) #4, !dbg !23
  %5 = icmp eq i32 %0, 0, !dbg !24
  br i1 %5, label %7, label %6, !dbg !26

6:                                                ; preds = %2
  tail call void @exit(i32 1) #5, !dbg !27
  unreachable, !dbg !27

7:                                                ; preds = %2
  ret i32 0, !dbg !28
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg_s(i32 %0, i8* nocapture readonly %1, i8* %2) local_unnamed_addr #0 !dbg !29 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !33, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata i8* %1, metadata !34, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata i8* %2, metadata !35, metadata !DIExpression()), !dbg !36
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !37, !tbaa !19
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %1, i8* %2) #4, !dbg !38
  %6 = icmp eq i32 %0, 0, !dbg !39
  br i1 %6, label %8, label %7, !dbg !41

7:                                                ; preds = %3
  tail call void @exit(i32 1) #5, !dbg !42
  unreachable, !dbg !42

8:                                                ; preds = %3
  ret i32 0, !dbg !43
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg_2s(i32 %0, i8* nocapture readonly %1, i8* %2, i8* %3) local_unnamed_addr #0 !dbg !44 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !48, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %1, metadata !49, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %2, metadata !50, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i8* %3, metadata !51, metadata !DIExpression()), !dbg !52
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !53, !tbaa !19
  %6 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* %1, i8* %2, i8* %3) #4, !dbg !54
  %7 = icmp eq i32 %0, 0, !dbg !55
  br i1 %7, label %9, label %8, !dbg !57

8:                                                ; preds = %4
  tail call void @exit(i32 1) #5, !dbg !58
  unreachable, !dbg !58

9:                                                ; preds = %4
  ret i32 0, !dbg !59
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg_d(i32 %0, i8* nocapture readonly %1, i32 %2) local_unnamed_addr #0 !dbg !60 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !64, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i8* %1, metadata !65, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata i32 %2, metadata !66, metadata !DIExpression()), !dbg !67
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !68, !tbaa !19
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %1, i32 %2) #4, !dbg !69
  %6 = icmp eq i32 %0, 0, !dbg !70
  br i1 %6, label %8, label %7, !dbg !72

7:                                                ; preds = %3
  tail call void @exit(i32 1) #5, !dbg !73
  unreachable, !dbg !73

8:                                                ; preds = %3
  ret i32 0, !dbg !74
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold }
attributes #5 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/traceback.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/spec codes")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "rt_errormsg", scope: !8, file: !8, line: 11, type: !9, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DIFile(filename: "Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/traceback.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation")
!9 = !DISubroutineType(types: !10)
!10 = !{!11, !11, !12}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16}
!15 = !DILocalVariable(name: "fatal", arg: 1, scope: !7, file: !8, line: 11, type: !11)
!16 = !DILocalVariable(name: "msg", arg: 2, scope: !7, file: !8, line: 11, type: !12)
!17 = !DILocation(line: 0, scope: !7)
!18 = !DILocation(line: 14, column: 11, scope: !7)
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 14, column: 2, scope: !7)
!24 = !DILocation(line: 15, column: 6, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !8, line: 15, column: 6)
!26 = !DILocation(line: 15, column: 6, scope: !7)
!27 = !DILocation(line: 16, column: 3, scope: !25)
!28 = !DILocation(line: 17, column: 2, scope: !7)
!29 = distinct !DISubprogram(name: "rt_errormsg_s", scope: !8, file: !8, line: 20, type: !30, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{!11, !11, !12, !12}
!32 = !{!33, !34, !35}
!33 = !DILocalVariable(name: "fatal", arg: 1, scope: !29, file: !8, line: 20, type: !11)
!34 = !DILocalVariable(name: "fmt", arg: 2, scope: !29, file: !8, line: 20, type: !12)
!35 = !DILocalVariable(name: "str", arg: 3, scope: !29, file: !8, line: 20, type: !12)
!36 = !DILocation(line: 0, scope: !29)
!37 = !DILocation(line: 23, column: 11, scope: !29)
!38 = !DILocation(line: 23, column: 2, scope: !29)
!39 = !DILocation(line: 24, column: 6, scope: !40)
!40 = distinct !DILexicalBlock(scope: !29, file: !8, line: 24, column: 6)
!41 = !DILocation(line: 24, column: 6, scope: !29)
!42 = !DILocation(line: 25, column: 3, scope: !40)
!43 = !DILocation(line: 26, column: 2, scope: !29)
!44 = distinct !DISubprogram(name: "rt_errormsg_2s", scope: !8, file: !8, line: 29, type: !45, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{!11, !11, !12, !12, !12}
!47 = !{!48, !49, !50, !51}
!48 = !DILocalVariable(name: "fatal", arg: 1, scope: !44, file: !8, line: 29, type: !11)
!49 = !DILocalVariable(name: "fmt", arg: 2, scope: !44, file: !8, line: 29, type: !12)
!50 = !DILocalVariable(name: "str1", arg: 3, scope: !44, file: !8, line: 29, type: !12)
!51 = !DILocalVariable(name: "str2", arg: 4, scope: !44, file: !8, line: 29, type: !12)
!52 = !DILocation(line: 0, scope: !44)
!53 = !DILocation(line: 32, column: 11, scope: !44)
!54 = !DILocation(line: 32, column: 2, scope: !44)
!55 = !DILocation(line: 33, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !44, file: !8, line: 33, column: 6)
!57 = !DILocation(line: 33, column: 6, scope: !44)
!58 = !DILocation(line: 34, column: 3, scope: !56)
!59 = !DILocation(line: 35, column: 2, scope: !44)
!60 = distinct !DISubprogram(name: "rt_errormsg_d", scope: !8, file: !8, line: 38, type: !61, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!61 = !DISubroutineType(types: !62)
!62 = !{!11, !11, !12, !11}
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(name: "fatal", arg: 1, scope: !60, file: !8, line: 38, type: !11)
!65 = !DILocalVariable(name: "fmt", arg: 2, scope: !60, file: !8, line: 38, type: !12)
!66 = !DILocalVariable(name: "i", arg: 3, scope: !60, file: !8, line: 38, type: !11)
!67 = !DILocation(line: 0, scope: !60)
!68 = !DILocation(line: 41, column: 11, scope: !60)
!69 = !DILocation(line: 41, column: 2, scope: !60)
!70 = !DILocation(line: 42, column: 6, scope: !71)
!71 = distinct !DILexicalBlock(scope: !60, file: !8, line: 42, column: 6)
!72 = !DILocation(line: 42, column: 6, scope: !60)
!73 = !DILocation(line: 43, column: 3, scope: !71)
!74 = !DILocation(line: 44, column: 2, scope: !60)
