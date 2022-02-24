; ModuleID = 'traceback.ll'
source_filename = "traceback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg(i32 %0, i8* %1) #0 !dbg !7 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.value(metadata i8* %1, metadata !15, metadata !DIExpression()), !dbg !16
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !17, !tbaa !18
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %1), !dbg !22
  %5 = icmp ne i32 %0, 0, !dbg !23
  br i1 %5, label %6, label %7, !dbg !25

6:                                                ; preds = %2
  call void @exit(i32 1) #4, !dbg !26
  unreachable, !dbg !26

7:                                                ; preds = %2
  ret i32 0, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg_s(i32 %0, i8* %1, i8* %2) #0 !dbg !28 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !32, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i8* %1, metadata !33, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.value(metadata i8* %2, metadata !34, metadata !DIExpression()), !dbg !35
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !36, !tbaa !18
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %1, i8* %2), !dbg !37
  %6 = icmp ne i32 %0, 0, !dbg !38
  br i1 %6, label %7, label %8, !dbg !40

7:                                                ; preds = %3
  call void @exit(i32 1) #4, !dbg !41
  unreachable, !dbg !41

8:                                                ; preds = %3
  ret i32 0, !dbg !42
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg_2s(i32 %0, i8* %1, i8* %2, i8* %3) #0 !dbg !43 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !47, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i8* %1, metadata !48, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i8* %2, metadata !49, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.value(metadata i8* %3, metadata !50, metadata !DIExpression()), !dbg !51
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !52, !tbaa !18
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* %1, i8* %2, i8* %3), !dbg !53
  %7 = icmp ne i32 %0, 0, !dbg !54
  br i1 %7, label %8, label %9, !dbg !56

8:                                                ; preds = %4
  call void @exit(i32 1) #4, !dbg !57
  unreachable, !dbg !57

9:                                                ; preds = %4
  ret i32 0, !dbg !58
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rt_errormsg_d(i32 %0, i8* %1, i32 %2) #0 !dbg !59 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !63, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i8* %1, metadata !64, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.value(metadata i32 %2, metadata !65, metadata !DIExpression()), !dbg !66
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !67, !tbaa !18
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %1, i32 %2), !dbg !68
  %6 = icmp ne i32 %0, 0, !dbg !69
  br i1 %6, label %7, label %8, !dbg !71

7:                                                ; preds = %3
  call void @exit(i32 1) #4, !dbg !72
  unreachable, !dbg !72

8:                                                ; preds = %3
  ret i32 0, !dbg !73
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "traceback.c", directory: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "rt_errormsg", scope: !1, file: !1, line: 11, type: !8, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !{!14, !15}
!14 = !DILocalVariable(name: "fatal", arg: 1, scope: !7, file: !1, line: 11, type: !10)
!15 = !DILocalVariable(name: "msg", arg: 2, scope: !7, file: !1, line: 11, type: !11)
!16 = !DILocation(line: 0, scope: !7)
!17 = !DILocation(line: 14, column: 11, scope: !7)
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 14, column: 2, scope: !7)
!23 = !DILocation(line: 15, column: 6, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 15, column: 6)
!25 = !DILocation(line: 15, column: 6, scope: !7)
!26 = !DILocation(line: 16, column: 3, scope: !24)
!27 = !DILocation(line: 17, column: 2, scope: !7)
!28 = distinct !DISubprogram(name: "rt_errormsg_s", scope: !1, file: !1, line: 20, type: !29, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!10, !10, !11, !11}
!31 = !{!32, !33, !34}
!32 = !DILocalVariable(name: "fatal", arg: 1, scope: !28, file: !1, line: 20, type: !10)
!33 = !DILocalVariable(name: "fmt", arg: 2, scope: !28, file: !1, line: 20, type: !11)
!34 = !DILocalVariable(name: "str", arg: 3, scope: !28, file: !1, line: 20, type: !11)
!35 = !DILocation(line: 0, scope: !28)
!36 = !DILocation(line: 23, column: 11, scope: !28)
!37 = !DILocation(line: 23, column: 2, scope: !28)
!38 = !DILocation(line: 24, column: 6, scope: !39)
!39 = distinct !DILexicalBlock(scope: !28, file: !1, line: 24, column: 6)
!40 = !DILocation(line: 24, column: 6, scope: !28)
!41 = !DILocation(line: 25, column: 3, scope: !39)
!42 = !DILocation(line: 26, column: 2, scope: !28)
!43 = distinct !DISubprogram(name: "rt_errormsg_2s", scope: !1, file: !1, line: 29, type: !44, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !46)
!44 = !DISubroutineType(types: !45)
!45 = !{!10, !10, !11, !11, !11}
!46 = !{!47, !48, !49, !50}
!47 = !DILocalVariable(name: "fatal", arg: 1, scope: !43, file: !1, line: 29, type: !10)
!48 = !DILocalVariable(name: "fmt", arg: 2, scope: !43, file: !1, line: 29, type: !11)
!49 = !DILocalVariable(name: "str1", arg: 3, scope: !43, file: !1, line: 29, type: !11)
!50 = !DILocalVariable(name: "str2", arg: 4, scope: !43, file: !1, line: 29, type: !11)
!51 = !DILocation(line: 0, scope: !43)
!52 = !DILocation(line: 32, column: 11, scope: !43)
!53 = !DILocation(line: 32, column: 2, scope: !43)
!54 = !DILocation(line: 33, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 33, column: 6)
!56 = !DILocation(line: 33, column: 6, scope: !43)
!57 = !DILocation(line: 34, column: 3, scope: !55)
!58 = !DILocation(line: 35, column: 2, scope: !43)
!59 = distinct !DISubprogram(name: "rt_errormsg_d", scope: !1, file: !1, line: 38, type: !60, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!60 = !DISubroutineType(types: !61)
!61 = !{!10, !10, !11, !10}
!62 = !{!63, !64, !65}
!63 = !DILocalVariable(name: "fatal", arg: 1, scope: !59, file: !1, line: 38, type: !10)
!64 = !DILocalVariable(name: "fmt", arg: 2, scope: !59, file: !1, line: 38, type: !11)
!65 = !DILocalVariable(name: "i", arg: 3, scope: !59, file: !1, line: 38, type: !10)
!66 = !DILocation(line: 0, scope: !59)
!67 = !DILocation(line: 41, column: 11, scope: !59)
!68 = !DILocation(line: 41, column: 2, scope: !59)
!69 = !DILocation(line: 42, column: 6, scope: !70)
!70 = distinct !DILexicalBlock(scope: !59, file: !1, line: 42, column: 6)
!71 = !DILocation(line: 42, column: 6, scope: !59)
!72 = !DILocation(line: 43, column: 3, scope: !70)
!73 = !DILocation(line: 44, column: 2, scope: !59)
