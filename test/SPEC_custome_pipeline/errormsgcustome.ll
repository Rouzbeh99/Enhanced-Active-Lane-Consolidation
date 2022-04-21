; ModuleID = '/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/errormsg.c'
source_filename = "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/errormsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
define dso_local void @errormsg(i32 noundef %fatal, i8* noundef %msg) local_unnamed_addr #0 !dbg !13 {
entry:
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !19, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i8* %msg, metadata !20, metadata !DIExpression()), !dbg !21
  store i1 true, i1* @errs, align 4, !dbg !22
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !23, !tbaa !24
  %1 = load i32, i32* @cg_emsg_lineno, align 4, !dbg !28, !tbaa !29
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @cg_nfname, i64 0, i64 0), i32 noundef %1, i8* noundef %msg) #7, !dbg !31
  %tobool.not = icmp eq i32 %fatal, 0, !dbg !32
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !34

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, ...) bitcast (i32 (...)* @CG_exit to i32 (i32, ...)*)(i32 noundef 1) #8, !dbg !35
  br label %if.end, !dbg !35

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !36
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

declare dso_local i32 @CG_exit(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @errormsg_s(i32 noundef %fatal, i8* nocapture noundef readonly %fmt, i8* noundef %str) local_unnamed_addr #0 !dbg !37 {
entry:
  %e_msg = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !41, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !42, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.value(metadata i8* %str, metadata !43, metadata !DIExpression()), !dbg !48
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %e_msg, i64 0, i64 0, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #8, !dbg !49
  call void @llvm.dbg.declare(metadata [256 x i8]* %e_msg, metadata !44, metadata !DIExpression()), !dbg !50
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(1) %fmt, i8* noundef %str) #8, !dbg !51
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !19, metadata !DIExpression()) #8, !dbg !52
  call void @llvm.dbg.value(metadata i8* %0, metadata !20, metadata !DIExpression()) #8, !dbg !52
  store i1 true, i1* @errs, align 4, !dbg !54
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !55, !tbaa !24
  %2 = load i32, i32* @cg_emsg_lineno, align 4, !dbg !56, !tbaa !29
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @cg_nfname, i64 0, i64 0), i32 noundef %2, i8* noundef nonnull %0) #9, !dbg !57
  %tobool.not.i = icmp eq i32 %fatal, 0, !dbg !58
  br i1 %tobool.not.i, label %errormsg.exit, label %if.then.i, !dbg !59

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (i32, ...) bitcast (i32 (...)* @CG_exit to i32 (i32, ...)*)(i32 noundef 1) #8, !dbg !60
  br label %errormsg.exit, !dbg !60

errormsg.exit:                                    ; preds = %entry, %if.then.i
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #8, !dbg !61
  ret void, !dbg !61
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @sprintf(i8* noalias nocapture noundef writeonly, i8* nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @errormsg_2s(i32 noundef %fatal, i8* nocapture noundef readonly %fmt, i8* noundef %str1, i8* noundef %str2) local_unnamed_addr #0 !dbg !62 {
entry:
  %e_msg = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !66, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !67, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %str1, metadata !68, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i8* %str2, metadata !69, metadata !DIExpression()), !dbg !71
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %e_msg, i64 0, i64 0, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #8, !dbg !72
  call void @llvm.dbg.declare(metadata [256 x i8]* %e_msg, metadata !70, metadata !DIExpression()), !dbg !73
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(1) %fmt, i8* noundef %str1, i8* noundef %str2) #8, !dbg !74
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !19, metadata !DIExpression()) #8, !dbg !75
  call void @llvm.dbg.value(metadata i8* %0, metadata !20, metadata !DIExpression()) #8, !dbg !75
  store i1 true, i1* @errs, align 4, !dbg !77
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !78, !tbaa !24
  %2 = load i32, i32* @cg_emsg_lineno, align 4, !dbg !79, !tbaa !29
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @cg_nfname, i64 0, i64 0), i32 noundef %2, i8* noundef nonnull %0) #9, !dbg !80
  %tobool.not.i = icmp eq i32 %fatal, 0, !dbg !81
  br i1 %tobool.not.i, label %errormsg.exit, label %if.then.i, !dbg !82

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (i32, ...) bitcast (i32 (...)* @CG_exit to i32 (i32, ...)*)(i32 noundef 1) #8, !dbg !83
  br label %errormsg.exit, !dbg !83

errormsg.exit:                                    ; preds = %entry, %if.then.i
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #8, !dbg !84
  ret void, !dbg !84
}

; Function Attrs: nounwind uwtable
define dso_local void @errormsg_d(i32 noundef %fatal, i8* nocapture noundef readonly %fmt, i32 noundef %i) local_unnamed_addr #0 !dbg !85 {
entry:
  %e_msg = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !89, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i8* %fmt, metadata !90, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.value(metadata i32 %i, metadata !91, metadata !DIExpression()), !dbg !93
  %0 = getelementptr inbounds [256 x i8], [256 x i8]* %e_msg, i64 0, i64 0, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %0) #8, !dbg !94
  call void @llvm.dbg.declare(metadata [256 x i8]* %e_msg, metadata !92, metadata !DIExpression()), !dbg !95
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %0, i8* noundef nonnull dereferenceable(1) %fmt, i32 noundef %i) #8, !dbg !96
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !19, metadata !DIExpression()) #8, !dbg !97
  call void @llvm.dbg.value(metadata i8* %0, metadata !20, metadata !DIExpression()) #8, !dbg !97
  store i1 true, i1* @errs, align 4, !dbg !99
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !100, !tbaa !24
  %2 = load i32, i32* @cg_emsg_lineno, align 4, !dbg !101, !tbaa !29
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @cg_nfname, i64 0, i64 0), i32 noundef %2, i8* noundef nonnull %0) #9, !dbg !102
  %tobool.not.i = icmp eq i32 %fatal, 0, !dbg !103
  br i1 %tobool.not.i, label %errormsg.exit, label %if.then.i, !dbg !104

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (i32, ...) bitcast (i32 (...)* @CG_exit to i32 (i32, ...)*)(i32 noundef 1) #8, !dbg !105
  br label %errormsg.exit, !dbg !105

errormsg.exit:                                    ; preds = %entry, %if.then.i
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %0) #8, !dbg !106
  ret void, !dbg !106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @errors() local_unnamed_addr #5 !dbg !107 {
entry:
  %.b = load i1, i1* @errs, align 4, !dbg !111
  %0 = zext i1 %.b to i32, !dbg !111
  ret i32 %0, !dbg !112
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "errs", scope: !2, file: !6, line: 9, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/errormsg.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/Active-Lane-Conslidation/test", checksumkind: CSK_MD5, checksum: "2d6943bd7e82b4e13ed38f7aa399587e")
!4 = !{!5}
!5 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!6 = !DIFile(filename: "SPEC/installation/benchspec/CPU/544.nab_r/src/errormsg.c", directory: "/home/rouzbeh/Graduate/Research", checksumkind: CSK_MD5, checksum: "2d6943bd7e82b4e13ed38f7aa399587e")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{!"clang version 14.0.0 (https://github.com/llvm/llvm-project.git 4327d39b15b22b9ee23582e5455df5b2a093fe8d)"}
!13 = distinct !DISubprogram(name: "errormsg", scope: !6, file: !6, line: 11, type: !14, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !7, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!19, !20}
!19 = !DILocalVariable(name: "fatal", arg: 1, scope: !13, file: !6, line: 11, type: !7)
!20 = !DILocalVariable(name: "msg", arg: 2, scope: !13, file: !6, line: 11, type: !16)
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
!33 = distinct !DILexicalBlock(scope: !13, file: !6, line: 16, column: 6)
!34 = !DILocation(line: 16, column: 6, scope: !13)
!35 = !DILocation(line: 17, column: 3, scope: !33)
!36 = !DILocation(line: 18, column: 1, scope: !13)
!37 = distinct !DISubprogram(name: "errormsg_s", scope: !6, file: !6, line: 20, type: !38, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !40)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !7, !16, !16}
!40 = !{!41, !42, !43, !44}
!41 = !DILocalVariable(name: "fatal", arg: 1, scope: !37, file: !6, line: 20, type: !7)
!42 = !DILocalVariable(name: "fmt", arg: 2, scope: !37, file: !6, line: 20, type: !16)
!43 = !DILocalVariable(name: "str", arg: 3, scope: !37, file: !6, line: 20, type: !16)
!44 = !DILocalVariable(name: "e_msg", scope: !37, file: !6, line: 22, type: !45)
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
!62 = distinct !DISubprogram(name: "errormsg_2s", scope: !6, file: !6, line: 28, type: !63, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !7, !16, !16, !16}
!65 = !{!66, !67, !68, !69, !70}
!66 = !DILocalVariable(name: "fatal", arg: 1, scope: !62, file: !6, line: 28, type: !7)
!67 = !DILocalVariable(name: "fmt", arg: 2, scope: !62, file: !6, line: 28, type: !16)
!68 = !DILocalVariable(name: "str1", arg: 3, scope: !62, file: !6, line: 28, type: !16)
!69 = !DILocalVariable(name: "str2", arg: 4, scope: !62, file: !6, line: 28, type: !16)
!70 = !DILocalVariable(name: "e_msg", scope: !62, file: !6, line: 30, type: !45)
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
!85 = distinct !DISubprogram(name: "errormsg_d", scope: !6, file: !6, line: 36, type: !86, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !7, !16, !7}
!88 = !{!89, !90, !91, !92}
!89 = !DILocalVariable(name: "fatal", arg: 1, scope: !85, file: !6, line: 36, type: !7)
!90 = !DILocalVariable(name: "fmt", arg: 2, scope: !85, file: !6, line: 36, type: !16)
!91 = !DILocalVariable(name: "i", arg: 3, scope: !85, file: !6, line: 36, type: !7)
!92 = !DILocalVariable(name: "e_msg", scope: !85, file: !6, line: 38, type: !45)
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
!107 = distinct !DISubprogram(name: "errors", scope: !6, file: !6, line: 44, type: !108, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!7}
!110 = !{}
!111 = !DILocation(line: 47, column: 10, scope: !107)
!112 = !DILocation(line: 47, column: 2, scope: !107)
