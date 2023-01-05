; ModuleID = '/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/errormsg.c'
source_filename = "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/errormsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@errs = internal unnamed_addr global i1 false, align 4, !dbg !0
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s:%d %s\00", align 1
@cg_nfname = external dso_local global [0 x i8], align 1
@cg_emsg_lineno = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local void @errormsg(i32 %0, i8* %1) local_unnamed_addr #0 !dbg !13 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i8* %1, metadata !20, metadata !DIExpression()), !dbg !21
  store i1 true, i1* @errs, align 4, !dbg !22
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !23, !tbaa !24
  %4 = load i32, i32* @cg_emsg_lineno, align 4, !dbg !28, !tbaa !29
  %5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cg_nfname, i64 0, i64 0), i32 %4, i8* %1) #6, !dbg !31
  %6 = icmp eq i32 %0, 0, !dbg !32
  br i1 %6, label %9, label %7, !dbg !34

7:                                                ; preds = %2
  %8 = tail call i32 (i32, ...) bitcast (i32 (...)* @CG_exit to i32 (i32, ...)*)(i32 1) #7, !dbg !35
  br label %9, !dbg !35

9:                                                ; preds = %2, %7
  ret void, !dbg !36
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

declare dso_local i32 @CG_exit(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @errormsg_s(i32 %0, i8* nocapture readonly %1, i8* %2) local_unnamed_addr #0 !dbg !37 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !41, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %1, metadata !42, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %2, metadata !43, metadata !DIExpression()), !dbg !48
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #7, !dbg !49
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !44, metadata !DIExpression()), !dbg !50
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %5, i8* nonnull dereferenceable(1) %1, i8* %2) #7, !dbg !51
  call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()) #7, !dbg !52
  call void @llvm.dbg.value(metadata i8* %5, metadata !20, metadata !DIExpression()) #7, !dbg !52
  store i1 true, i1* @errs, align 4, !dbg !54
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !55, !tbaa !24
  %8 = load i32, i32* @cg_emsg_lineno, align 4, !dbg !56, !tbaa !29
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cg_nfname, i64 0, i64 0), i32 %8, i8* nonnull %5) #8, !dbg !57
  %10 = icmp eq i32 %0, 0, !dbg !58
  br i1 %10, label %13, label %11, !dbg !59

11:                                               ; preds = %3
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @CG_exit to i32 (i32, ...)*)(i32 1) #7, !dbg !60
  br label %13, !dbg !60

13:                                               ; preds = %3, %11
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #7, !dbg !61
  ret void, !dbg !61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nounwind
declare dso_local i32 @sprintf(i8* noalias nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @errormsg_2s(i32 %0, i8* nocapture readonly %1, i8* %2, i8* %3) local_unnamed_addr #0 !dbg !62 {
  %5 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !66, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %1, metadata !67, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %2, metadata !68, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %3, metadata !69, metadata !DIExpression()), !dbg !71
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %6) #7, !dbg !72
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !70, metadata !DIExpression()), !dbg !73
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %6, i8* nonnull dereferenceable(1) %1, i8* %2, i8* %3) #7, !dbg !74
  call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()) #7, !dbg !75
  call void @llvm.dbg.value(metadata i8* %6, metadata !20, metadata !DIExpression()) #7, !dbg !75
  store i1 true, i1* @errs, align 4, !dbg !77
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !78, !tbaa !24
  %9 = load i32, i32* @cg_emsg_lineno, align 4, !dbg !79, !tbaa !29
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cg_nfname, i64 0, i64 0), i32 %9, i8* nonnull %6) #8, !dbg !80
  %11 = icmp eq i32 %0, 0, !dbg !81
  br i1 %11, label %14, label %12, !dbg !82

12:                                               ; preds = %4
  %13 = call i32 (i32, ...) bitcast (i32 (...)* @CG_exit to i32 (i32, ...)*)(i32 1) #7, !dbg !83
  br label %14, !dbg !83

14:                                               ; preds = %4, %12
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %6) #7, !dbg !84
  ret void, !dbg !84
}

; Function Attrs: nounwind uwtable
define dso_local void @errormsg_d(i32 %0, i8* nocapture readonly %1, i32 %2) local_unnamed_addr #0 !dbg !85 {
  %4 = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !89, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i8* %1, metadata !90, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 %2, metadata !91, metadata !DIExpression()), !dbg !93
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %5) #7, !dbg !94
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !92, metadata !DIExpression()), !dbg !95
  %6 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %5, i8* nonnull dereferenceable(1) %1, i32 %2) #7, !dbg !96
  call void @llvm.dbg.value(metadata i32 %0, metadata !19, metadata !DIExpression()) #7, !dbg !97
  call void @llvm.dbg.value(metadata i8* %5, metadata !20, metadata !DIExpression()) #7, !dbg !97
  store i1 true, i1* @errs, align 4, !dbg !99
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !100, !tbaa !24
  %8 = load i32, i32* @cg_emsg_lineno, align 4, !dbg !101, !tbaa !29
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @cg_nfname, i64 0, i64 0), i32 %8, i8* nonnull %5) #8, !dbg !102
  %10 = icmp eq i32 %0, 0, !dbg !103
  br i1 %10, label %13, label %11, !dbg !104

11:                                               ; preds = %3
  %12 = call i32 (i32, ...) bitcast (i32 (...)* @CG_exit to i32 (i32, ...)*)(i32 1) #7, !dbg !105
  br label %13, !dbg !105

13:                                               ; preds = %3, %11
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %5) #7, !dbg !106
  ret void, !dbg !106
}

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i32 @errors() local_unnamed_addr #5 !dbg !107 {
  %1 = load i1, i1* @errs, align 4, !dbg !110
  %2 = zext i1 %1 to i32, !dbg !110
  ret i32 %2, !dbg !111
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "errs", scope: !2, file: !7, line: 9, type: !8, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/errormsg.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/spec codes")
!4 = !{}
!5 = !{!6}
!6 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!7 = !DIFile(filename: "Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/errormsg.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation")
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.0-4ubuntu1 "}
!13 = distinct !DISubprogram(name: "errormsg", scope: !7, file: !7, line: 11, type: !14, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !8, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20}
!19 = !DILocalVariable(name: "fatal", arg: 1, scope: !13, file: !7, line: 11, type: !8)
!20 = !DILocalVariable(name: "msg", arg: 2, scope: !13, file: !7, line: 11, type: !16)
!21 = !DILocation(line: 0, scope: !13)
!22 = !DILocation(line: 14, column: 7, scope: !13)
!23 = !DILocation(line: 15, column: 11, scope: !13)
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 15, column: 42, scope: !13)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !26, i64 0}
!31 = !DILocation(line: 15, column: 2, scope: !13)
!32 = !DILocation(line: 16, column: 6, scope: !33)
!33 = distinct !DILexicalBlock(scope: !13, file: !7, line: 16, column: 6)
!34 = !DILocation(line: 16, column: 6, scope: !13)
!35 = !DILocation(line: 17, column: 3, scope: !33)
!36 = !DILocation(line: 18, column: 1, scope: !13)
!37 = distinct !DISubprogram(name: "errormsg_s", scope: !7, file: !7, line: 20, type: !38, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !8, !16, !16}
!40 = !{!41, !42, !43, !44}
!41 = !DILocalVariable(name: "fatal", arg: 1, scope: !37, file: !7, line: 20, type: !8)
!42 = !DILocalVariable(name: "fmt", arg: 2, scope: !37, file: !7, line: 20, type: !16)
!43 = !DILocalVariable(name: "str", arg: 3, scope: !37, file: !7, line: 20, type: !16)
!44 = !DILocalVariable(name: "e_msg", scope: !37, file: !7, line: 22, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 256)
!48 = !DILocation(line: 0, scope: !37)
!49 = !DILocation(line: 22, column: 2, scope: !37)
!50 = !DILocation(line: 22, column: 7, scope: !37)
!51 = !DILocation(line: 24, column: 2, scope: !37)
!52 = !DILocation(line: 0, scope: !13, inlinedAt: !53)
!53 = distinct !DILocation(line: 25, column: 2, scope: !37)
!54 = !DILocation(line: 14, column: 7, scope: !13, inlinedAt: !53)
!55 = !DILocation(line: 15, column: 11, scope: !13, inlinedAt: !53)
!56 = !DILocation(line: 15, column: 42, scope: !13, inlinedAt: !53)
!57 = !DILocation(line: 15, column: 2, scope: !13, inlinedAt: !53)
!58 = !DILocation(line: 16, column: 6, scope: !33, inlinedAt: !53)
!59 = !DILocation(line: 16, column: 6, scope: !13, inlinedAt: !53)
!60 = !DILocation(line: 17, column: 3, scope: !33, inlinedAt: !53)
!61 = !DILocation(line: 26, column: 1, scope: !37)
!62 = distinct !DISubprogram(name: "errormsg_2s", scope: !7, file: !7, line: 28, type: !63, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !8, !16, !16, !16}
!65 = !{!66, !67, !68, !69, !70}
!66 = !DILocalVariable(name: "fatal", arg: 1, scope: !62, file: !7, line: 28, type: !8)
!67 = !DILocalVariable(name: "fmt", arg: 2, scope: !62, file: !7, line: 28, type: !16)
!68 = !DILocalVariable(name: "str1", arg: 3, scope: !62, file: !7, line: 28, type: !16)
!69 = !DILocalVariable(name: "str2", arg: 4, scope: !62, file: !7, line: 28, type: !16)
!70 = !DILocalVariable(name: "e_msg", scope: !62, file: !7, line: 30, type: !45)
!71 = !DILocation(line: 0, scope: !62)
!72 = !DILocation(line: 30, column: 2, scope: !62)
!73 = !DILocation(line: 30, column: 7, scope: !62)
!74 = !DILocation(line: 32, column: 2, scope: !62)
!75 = !DILocation(line: 0, scope: !13, inlinedAt: !76)
!76 = distinct !DILocation(line: 33, column: 2, scope: !62)
!77 = !DILocation(line: 14, column: 7, scope: !13, inlinedAt: !76)
!78 = !DILocation(line: 15, column: 11, scope: !13, inlinedAt: !76)
!79 = !DILocation(line: 15, column: 42, scope: !13, inlinedAt: !76)
!80 = !DILocation(line: 15, column: 2, scope: !13, inlinedAt: !76)
!81 = !DILocation(line: 16, column: 6, scope: !33, inlinedAt: !76)
!82 = !DILocation(line: 16, column: 6, scope: !13, inlinedAt: !76)
!83 = !DILocation(line: 17, column: 3, scope: !33, inlinedAt: !76)
!84 = !DILocation(line: 34, column: 1, scope: !62)
!85 = distinct !DISubprogram(name: "errormsg_d", scope: !7, file: !7, line: 36, type: !86, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !8, !16, !8}
!88 = !{!89, !90, !91, !92}
!89 = !DILocalVariable(name: "fatal", arg: 1, scope: !85, file: !7, line: 36, type: !8)
!90 = !DILocalVariable(name: "fmt", arg: 2, scope: !85, file: !7, line: 36, type: !16)
!91 = !DILocalVariable(name: "i", arg: 3, scope: !85, file: !7, line: 36, type: !8)
!92 = !DILocalVariable(name: "e_msg", scope: !85, file: !7, line: 38, type: !45)
!93 = !DILocation(line: 0, scope: !85)
!94 = !DILocation(line: 38, column: 2, scope: !85)
!95 = !DILocation(line: 38, column: 7, scope: !85)
!96 = !DILocation(line: 40, column: 2, scope: !85)
!97 = !DILocation(line: 0, scope: !13, inlinedAt: !98)
!98 = distinct !DILocation(line: 41, column: 2, scope: !85)
!99 = !DILocation(line: 14, column: 7, scope: !13, inlinedAt: !98)
!100 = !DILocation(line: 15, column: 11, scope: !13, inlinedAt: !98)
!101 = !DILocation(line: 15, column: 42, scope: !13, inlinedAt: !98)
!102 = !DILocation(line: 15, column: 2, scope: !13, inlinedAt: !98)
!103 = !DILocation(line: 16, column: 6, scope: !33, inlinedAt: !98)
!104 = !DILocation(line: 16, column: 6, scope: !13, inlinedAt: !98)
!105 = !DILocation(line: 17, column: 3, scope: !33, inlinedAt: !98)
!106 = !DILocation(line: 42, column: 1, scope: !85)
!107 = distinct !DISubprogram(name: "errors", scope: !7, file: !7, line: 44, type: !108, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!108 = !DISubroutineType(types: !109)
!109 = !{!8}
!110 = !DILocation(line: 47, column: 10, scope: !107)
!111 = !DILocation(line: 47, column: 2, scope: !107)
