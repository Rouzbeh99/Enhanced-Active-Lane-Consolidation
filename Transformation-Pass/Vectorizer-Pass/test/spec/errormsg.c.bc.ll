; ModuleID = '/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r/llvm-ir/544.nab_r_bc/src/errormsg.c.bc'
source_filename = "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/errormsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errs = internal unnamed_addr global i1 false, align 4, !dbg !0
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s:%d %s\00", align 1
@cg_nfname = external global [0 x i8], align 1
@cg_emsg_lineno = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define dso_local void @errormsg(i32 noundef %fatal, ptr noundef %msg) local_unnamed_addr #0 !dbg !15 {
entry:
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.value(metadata ptr %msg, metadata !22, metadata !DIExpression()), !dbg !23
  store i1 true, ptr @errs, align 4, !dbg !24
  %0 = load ptr, ptr @stderr, align 8, !dbg !25, !tbaa !26
  %1 = load i32, ptr @cg_emsg_lineno, align 4, !dbg !30, !tbaa !31
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @cg_nfname, i32 noundef %1, ptr noundef %msg) #6, !dbg !33
  %tobool.not = icmp eq i32 %fatal, 0, !dbg !34
  br i1 %tobool.not, label %if.end, label %if.then, !dbg !36

if.then:                                          ; preds = %entry
  %call1 = tail call i32 (i32, ...) @CG_exit(i32 noundef 1) #7, !dbg !37
  br label %if.end, !dbg !37

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !38
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

declare i32 @CG_exit(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @errormsg_s(i32 noundef %fatal, ptr nocapture noundef readonly %fmt, ptr noundef %str) local_unnamed_addr #0 !dbg !39 {
entry:
  %e_msg = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !43, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata ptr %fmt, metadata !44, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.value(metadata ptr %str, metadata !45, metadata !DIExpression()), !dbg !50
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %e_msg) #7, !dbg !51
  call void @llvm.dbg.declare(metadata ptr %e_msg, metadata !46, metadata !DIExpression()), !dbg !52
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %e_msg, ptr noundef nonnull dereferenceable(1) %fmt, ptr noundef %str) #7, !dbg !53
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !21, metadata !DIExpression()) #7, !dbg !54
  call void @llvm.dbg.value(metadata ptr %e_msg, metadata !22, metadata !DIExpression()) #7, !dbg !54
  store i1 true, ptr @errs, align 4, !dbg !56
  %0 = load ptr, ptr @stderr, align 8, !dbg !57, !tbaa !26
  %1 = load i32, ptr @cg_emsg_lineno, align 4, !dbg !58, !tbaa !31
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @cg_nfname, i32 noundef %1, ptr noundef nonnull %e_msg) #8, !dbg !59
  %tobool.not.i = icmp eq i32 %fatal, 0, !dbg !60
  br i1 %tobool.not.i, label %errormsg.exit, label %if.then.i, !dbg !61

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (i32, ...) @CG_exit(i32 noundef 1) #7, !dbg !62
  br label %errormsg.exit, !dbg !62

errormsg.exit:                                    ; preds = %entry, %if.then.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %e_msg) #7, !dbg !63
  ret void, !dbg !63
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @errormsg_2s(i32 noundef %fatal, ptr nocapture noundef readonly %fmt, ptr noundef %str1, ptr noundef %str2) local_unnamed_addr #0 !dbg !64 {
entry:
  %e_msg = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !68, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata ptr %fmt, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata ptr %str1, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata ptr %str2, metadata !71, metadata !DIExpression()), !dbg !73
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %e_msg) #7, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %e_msg, metadata !72, metadata !DIExpression()), !dbg !75
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %e_msg, ptr noundef nonnull dereferenceable(1) %fmt, ptr noundef %str1, ptr noundef %str2) #7, !dbg !76
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !21, metadata !DIExpression()) #7, !dbg !77
  call void @llvm.dbg.value(metadata ptr %e_msg, metadata !22, metadata !DIExpression()) #7, !dbg !77
  store i1 true, ptr @errs, align 4, !dbg !79
  %0 = load ptr, ptr @stderr, align 8, !dbg !80, !tbaa !26
  %1 = load i32, ptr @cg_emsg_lineno, align 4, !dbg !81, !tbaa !31
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @cg_nfname, i32 noundef %1, ptr noundef nonnull %e_msg) #8, !dbg !82
  %tobool.not.i = icmp eq i32 %fatal, 0, !dbg !83
  br i1 %tobool.not.i, label %errormsg.exit, label %if.then.i, !dbg !84

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (i32, ...) @CG_exit(i32 noundef 1) #7, !dbg !85
  br label %errormsg.exit, !dbg !85

errormsg.exit:                                    ; preds = %entry, %if.then.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %e_msg) #7, !dbg !86
  ret void, !dbg !86
}

; Function Attrs: nounwind uwtable
define dso_local void @errormsg_d(i32 noundef %fatal, ptr nocapture noundef readonly %fmt, i32 noundef %i) local_unnamed_addr #0 !dbg !87 {
entry:
  %e_msg = alloca [256 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !91, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata ptr %fmt, metadata !92, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i32 %i, metadata !93, metadata !DIExpression()), !dbg !95
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %e_msg) #7, !dbg !96
  call void @llvm.dbg.declare(metadata ptr %e_msg, metadata !94, metadata !DIExpression()), !dbg !97
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %e_msg, ptr noundef nonnull dereferenceable(1) %fmt, i32 noundef %i) #7, !dbg !98
  call void @llvm.dbg.value(metadata i32 %fatal, metadata !21, metadata !DIExpression()) #7, !dbg !99
  call void @llvm.dbg.value(metadata ptr %e_msg, metadata !22, metadata !DIExpression()) #7, !dbg !99
  store i1 true, ptr @errs, align 4, !dbg !101
  %0 = load ptr, ptr @stderr, align 8, !dbg !102, !tbaa !26
  %1 = load i32, ptr @cg_emsg_lineno, align 4, !dbg !103, !tbaa !31
  %call.i = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @cg_nfname, i32 noundef %1, ptr noundef nonnull %e_msg) #8, !dbg !104
  %tobool.not.i = icmp eq i32 %fatal, 0, !dbg !105
  br i1 %tobool.not.i, label %errormsg.exit, label %if.then.i, !dbg !106

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 (i32, ...) @CG_exit(i32 noundef 1) #7, !dbg !107
  br label %errormsg.exit, !dbg !107

errormsg.exit:                                    ; preds = %entry, %if.then.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %e_msg) #7, !dbg !108
  ret void, !dbg !108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable
define dso_local i32 @errors() local_unnamed_addr #5 !dbg !109 {
entry:
  %.b = load i1, ptr @errs, align 4, !dbg !113
  %0 = zext i1 %.b to i32, !dbg !113
  ret i32 %0, !dbg !114
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind readonly willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!1 = distinct !DIGlobalVariable(name: "errs", scope: !2, file: !6, line: 9, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/apps/544.nab_r/src/errormsg.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake/build/apps/544.nab_r", checksumkind: CSK_MD5, checksum: "2d6943bd7e82b4e13ed38f7aa399587e")
!4 = !{!5}
!5 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!6 = !DIFile(filename: "apps/544.nab_r/src/errormsg.c", directory: "/home/rouzbeh/Graduate/LLVM/spec2017cpu-cmake", checksumkind: CSK_MD5, checksum: "2d6943bd7e82b4e13ed38f7aa399587e")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!15 = distinct !DISubprogram(name: "errormsg", scope: !6, file: !6, line: 11, type: !16, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !20)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !7, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21, !22}
!21 = !DILocalVariable(name: "fatal", arg: 1, scope: !15, file: !6, line: 11, type: !7)
!22 = !DILocalVariable(name: "msg", arg: 2, scope: !15, file: !6, line: 11, type: !18)
!23 = !DILocation(line: 0, scope: !15)
!24 = !DILocation(line: 14, column: 7, scope: !15)
!25 = !DILocation(line: 15, column: 11, scope: !15)
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 15, column: 42, scope: !15)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !28, i64 0}
!33 = !DILocation(line: 15, column: 2, scope: !15)
!34 = !DILocation(line: 16, column: 6, scope: !35)
!35 = distinct !DILexicalBlock(scope: !15, file: !6, line: 16, column: 6)
!36 = !DILocation(line: 16, column: 6, scope: !15)
!37 = !DILocation(line: 17, column: 3, scope: !35)
!38 = !DILocation(line: 18, column: 1, scope: !15)
!39 = distinct !DISubprogram(name: "errormsg_s", scope: !6, file: !6, line: 20, type: !40, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !7, !18, !18}
!42 = !{!43, !44, !45, !46}
!43 = !DILocalVariable(name: "fatal", arg: 1, scope: !39, file: !6, line: 20, type: !7)
!44 = !DILocalVariable(name: "fmt", arg: 2, scope: !39, file: !6, line: 20, type: !18)
!45 = !DILocalVariable(name: "str", arg: 3, scope: !39, file: !6, line: 20, type: !18)
!46 = !DILocalVariable(name: "e_msg", scope: !39, file: !6, line: 22, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 256)
!50 = !DILocation(line: 0, scope: !39)
!51 = !DILocation(line: 22, column: 2, scope: !39)
!52 = !DILocation(line: 22, column: 7, scope: !39)
!53 = !DILocation(line: 24, column: 2, scope: !39)
!54 = !DILocation(line: 0, scope: !15, inlinedAt: !55)
!55 = distinct !DILocation(line: 25, column: 2, scope: !39)
!56 = !DILocation(line: 14, column: 7, scope: !15, inlinedAt: !55)
!57 = !DILocation(line: 15, column: 11, scope: !15, inlinedAt: !55)
!58 = !DILocation(line: 15, column: 42, scope: !15, inlinedAt: !55)
!59 = !DILocation(line: 15, column: 2, scope: !15, inlinedAt: !55)
!60 = !DILocation(line: 16, column: 6, scope: !35, inlinedAt: !55)
!61 = !DILocation(line: 16, column: 6, scope: !15, inlinedAt: !55)
!62 = !DILocation(line: 17, column: 3, scope: !35, inlinedAt: !55)
!63 = !DILocation(line: 26, column: 1, scope: !39)
!64 = distinct !DISubprogram(name: "errormsg_2s", scope: !6, file: !6, line: 28, type: !65, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !7, !18, !18, !18}
!67 = !{!68, !69, !70, !71, !72}
!68 = !DILocalVariable(name: "fatal", arg: 1, scope: !64, file: !6, line: 28, type: !7)
!69 = !DILocalVariable(name: "fmt", arg: 2, scope: !64, file: !6, line: 28, type: !18)
!70 = !DILocalVariable(name: "str1", arg: 3, scope: !64, file: !6, line: 28, type: !18)
!71 = !DILocalVariable(name: "str2", arg: 4, scope: !64, file: !6, line: 28, type: !18)
!72 = !DILocalVariable(name: "e_msg", scope: !64, file: !6, line: 30, type: !47)
!73 = !DILocation(line: 0, scope: !64)
!74 = !DILocation(line: 30, column: 2, scope: !64)
!75 = !DILocation(line: 30, column: 7, scope: !64)
!76 = !DILocation(line: 32, column: 2, scope: !64)
!77 = !DILocation(line: 0, scope: !15, inlinedAt: !78)
!78 = distinct !DILocation(line: 33, column: 2, scope: !64)
!79 = !DILocation(line: 14, column: 7, scope: !15, inlinedAt: !78)
!80 = !DILocation(line: 15, column: 11, scope: !15, inlinedAt: !78)
!81 = !DILocation(line: 15, column: 42, scope: !15, inlinedAt: !78)
!82 = !DILocation(line: 15, column: 2, scope: !15, inlinedAt: !78)
!83 = !DILocation(line: 16, column: 6, scope: !35, inlinedAt: !78)
!84 = !DILocation(line: 16, column: 6, scope: !15, inlinedAt: !78)
!85 = !DILocation(line: 17, column: 3, scope: !35, inlinedAt: !78)
!86 = !DILocation(line: 34, column: 1, scope: !64)
!87 = distinct !DISubprogram(name: "errormsg_d", scope: !6, file: !6, line: 36, type: !88, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !7, !18, !7}
!90 = !{!91, !92, !93, !94}
!91 = !DILocalVariable(name: "fatal", arg: 1, scope: !87, file: !6, line: 36, type: !7)
!92 = !DILocalVariable(name: "fmt", arg: 2, scope: !87, file: !6, line: 36, type: !18)
!93 = !DILocalVariable(name: "i", arg: 3, scope: !87, file: !6, line: 36, type: !7)
!94 = !DILocalVariable(name: "e_msg", scope: !87, file: !6, line: 38, type: !47)
!95 = !DILocation(line: 0, scope: !87)
!96 = !DILocation(line: 38, column: 2, scope: !87)
!97 = !DILocation(line: 38, column: 7, scope: !87)
!98 = !DILocation(line: 40, column: 2, scope: !87)
!99 = !DILocation(line: 0, scope: !15, inlinedAt: !100)
!100 = distinct !DILocation(line: 41, column: 2, scope: !87)
!101 = !DILocation(line: 14, column: 7, scope: !15, inlinedAt: !100)
!102 = !DILocation(line: 15, column: 11, scope: !15, inlinedAt: !100)
!103 = !DILocation(line: 15, column: 42, scope: !15, inlinedAt: !100)
!104 = !DILocation(line: 15, column: 2, scope: !15, inlinedAt: !100)
!105 = !DILocation(line: 16, column: 6, scope: !35, inlinedAt: !100)
!106 = !DILocation(line: 16, column: 6, scope: !15, inlinedAt: !100)
!107 = !DILocation(line: 17, column: 3, scope: !35, inlinedAt: !100)
!108 = !DILocation(line: 42, column: 1, scope: !87)
!109 = distinct !DISubprogram(name: "errors", scope: !6, file: !6, line: 44, type: !110, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !112)
!110 = !DISubroutineType(types: !111)
!111 = !{!7}
!112 = !{}
!113 = !DILocation(line: 47, column: 10, scope: !109)
!114 = !DILocation(line: 47, column: 2, scope: !109)
