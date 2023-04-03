; ModuleID = 'defs.c'
source_filename = "defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__Complex = type { double, double }
%struct._Vector = type { double, double }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [9 x i8] c"%e + %ei\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%e - %ei\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"(%10.5f, %10.5f)\00", align 1
@G_Memory = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@Number_Of_Processors = dso_local local_unnamed_addr global i64 0, align 8, !dbg !0
@Timestep_Dur = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !9
@Softening_Param = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !11
@Expansion_Terms = dso_local local_unnamed_addr global i64 0, align 8, !dbg !13

; Function Attrs: mustprogress nofree noinline nounwind willreturn uwtable
define dso_local double @RoundReal(double noundef %val) local_unnamed_addr #0 !dbg !23 {
entry:
  %exp = alloca i32, align 4
  %new_frac = alloca double, align 8
  call void @llvm.dbg.value(metadata double %val, metadata !27, metadata !DIExpression()), !dbg !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %exp) #10, !dbg !37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %new_frac) #10, !dbg !38
  call void @llvm.dbg.value(metadata double 1.000000e+13, metadata !28, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata ptr %exp, metadata !30, metadata !DIExpression(DW_OP_deref)), !dbg !36
  %call1 = call double @frexp(double noundef %val, ptr noundef nonnull %exp) #10, !dbg !39
  call void @llvm.dbg.value(metadata double %call1, metadata !29, metadata !DIExpression()), !dbg !36
  %mul = fmul double %call1, 1.000000e+13, !dbg !40
  call void @llvm.dbg.value(metadata double %mul, metadata !32, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata ptr %new_frac, metadata !33, metadata !DIExpression(DW_OP_deref)), !dbg !36
  %call2 = call double @modf(double noundef %mul, ptr noundef nonnull %new_frac) #10, !dbg !41
  call void @llvm.dbg.value(metadata double %call2, metadata !34, metadata !DIExpression()), !dbg !36
  %0 = load double, ptr %new_frac, align 8, !dbg !42
  call void @llvm.dbg.value(metadata double %0, metadata !33, metadata !DIExpression()), !dbg !36
  %div = fdiv double %0, 1.000000e+13, !dbg !42
  call void @llvm.dbg.value(metadata double %div, metadata !33, metadata !DIExpression()), !dbg !36
  %1 = load i32, ptr %exp, align 4, !dbg !43
  call void @llvm.dbg.value(metadata i32 %1, metadata !30, metadata !DIExpression()), !dbg !36
  %call3 = tail call double @ldexp(double noundef %div, i32 noundef %1) #10, !dbg !44
  call void @llvm.dbg.value(metadata double %call3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %new_frac) #10, !dbg !45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %exp) #10, !dbg !45
  ret double %call3, !dbg !46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @modf(double noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PrintComplexNum(ptr nocapture noundef readonly %c) local_unnamed_addr #4 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata ptr %c, metadata !57, metadata !DIExpression()), !dbg !58
  %i = getelementptr inbounds %struct.__Complex, ptr %c, i64 0, i32 1, !dbg !59
  %0 = load double, ptr %i, align 8, !dbg !59
  %cmp = fcmp ult double %0, 0.000000e+00, !dbg !61
  %1 = load double, ptr %c, align 8, !dbg !62
  br i1 %cmp, label %if.else, label %if.then, !dbg !63

if.then:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %1, double noundef %0), !dbg !64
  br label %if.end, !dbg !64

if.else:                                          ; preds = %entry
  %fneg = fneg double %0, !dbg !65
  %call4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.1, double noundef %1, double noundef %fneg), !dbg !66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !67
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind uwtable
define dso_local void @PrintVector(ptr nocapture noundef readonly %v) local_unnamed_addr #4 !dbg !68 {
entry:
  call void @llvm.dbg.value(metadata ptr %v, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load double, ptr %v, align 8, !dbg !80
  %y = getelementptr inbounds %struct._Vector, ptr %v, i64 0, i32 1, !dbg !81
  %1 = load double, ptr %y, align 8, !dbg !81
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str.2, double noundef %0, double noundef %1), !dbg !82
  ret void, !dbg !83
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LockedPrint(ptr nocapture noundef readonly %format_str, ...) local_unnamed_addr #6 !dbg !84 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %format_str, metadata !90, metadata !DIExpression()), !dbg !109
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #10, !dbg !110
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !91, metadata !DIExpression()), !dbg !111
  call void @llvm.va_start(ptr nonnull %ap), !dbg !112
  %0 = load ptr, ptr @G_Memory, align 8, !dbg !113
  %call = call i32 @pthread_mutex_lock(ptr noundef %0) #10, !dbg !115
  %1 = load ptr, ptr @stdout, align 8, !dbg !116
  %call1 = call i32 @fflush(ptr noundef %1), !dbg !117
  %2 = load ptr, ptr @stdout, align 8, !dbg !118
  %call3 = call i32 @vfprintf(ptr noundef %2, ptr noundef %format_str, ptr noundef nonnull %ap), !dbg !119
  %3 = load ptr, ptr @stdout, align 8, !dbg !120
  %call4 = call i32 @fflush(ptr noundef %3), !dbg !121
  %4 = load ptr, ptr @G_Memory, align 8, !dbg !122
  %call6 = call i32 @pthread_mutex_unlock(ptr noundef %4) #10, !dbg !124
  call void @llvm.va_end(ptr nonnull %ap), !dbg !125
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #10, !dbg !126
  ret void, !dbg !126
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: nounwind
declare !dbg !127 i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !162 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !221 i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

attributes #0 = { mustprogress nofree noinline nounwind willreturn uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "Number_Of_Processors", scope: !2, file: !3, line: 25, type: !15, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "defs.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "3f8d6ee32f05584c9e63d22da386a1a8")
!4 = !{!5, !6}
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !7, line: 140, baseType: !5)
!7 = !DIFile(filename: "./defs.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm", checksumkind: CSK_MD5, checksum: "8ebedd23a1904a3430b249c025f1869e")
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "Timestep_Dur", scope: !2, file: !3, line: 26, type: !5, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "Softening_Param", scope: !2, file: !3, line: 27, type: !6, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "Expansion_Terms", scope: !2, file: !3, line: 28, type: !15, isLocal: false, isDefinition: true)
!15 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!16 = !{i32 7, !"Dwarf Version", i32 5}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{i32 7, !"PIC Level", i32 2}
!20 = !{i32 7, !"PIE Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!23 = distinct !DISubprogram(name: "RoundReal", scope: !3, file: !3, line: 32, type: !24, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!6, !6}
!26 = !{!27, !28, !29, !30, !32, !33, !34, !35}
!27 = !DILocalVariable(name: "val", arg: 1, scope: !23, file: !3, line: 32, type: !6)
!28 = !DILocalVariable(name: "shifter", scope: !23, file: !3, line: 34, type: !5)
!29 = !DILocalVariable(name: "frac", scope: !23, file: !3, line: 35, type: !5)
!30 = !DILocalVariable(name: "exp", scope: !23, file: !3, line: 36, type: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocalVariable(name: "shifted_frac", scope: !23, file: !3, line: 37, type: !5)
!33 = !DILocalVariable(name: "new_frac", scope: !23, file: !3, line: 38, type: !5)
!34 = !DILocalVariable(name: "temp", scope: !23, file: !3, line: 39, type: !5)
!35 = !DILocalVariable(name: "ret_val", scope: !23, file: !3, line: 40, type: !6)
!36 = !DILocation(line: 0, scope: !23)
!37 = !DILocation(line: 36, column: 4, scope: !23)
!38 = !DILocation(line: 38, column: 4, scope: !23)
!39 = !DILocation(line: 43, column: 11, scope: !23)
!40 = !DILocation(line: 44, column: 24, scope: !23)
!41 = !DILocation(line: 45, column: 11, scope: !23)
!42 = !DILocation(line: 46, column: 13, scope: !23)
!43 = !DILocation(line: 47, column: 37, scope: !23)
!44 = !DILocation(line: 47, column: 21, scope: !23)
!45 = !DILocation(line: 49, column: 1, scope: !23)
!46 = !DILocation(line: 48, column: 4, scope: !23)
!47 = distinct !DISubprogram(name: "PrintComplexNum", scope: !3, file: !3, line: 53, type: !48, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !56)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "complex", file: !7, line: 142, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__Complex", file: !7, line: 143, size: 128, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !52, file: !7, line: 144, baseType: !6, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !52, file: !7, line: 145, baseType: !6, size: 64, offset: 64)
!56 = !{!57}
!57 = !DILocalVariable(name: "c", arg: 1, scope: !47, file: !3, line: 53, type: !50)
!58 = !DILocation(line: 0, scope: !47)
!59 = !DILocation(line: 55, column: 11, scope: !60)
!60 = distinct !DILexicalBlock(scope: !47, file: !3, line: 55, column: 8)
!61 = !DILocation(line: 55, column: 13, scope: !60)
!62 = !DILocation(line: 0, scope: !60)
!63 = !DILocation(line: 55, column: 8, scope: !47)
!64 = !DILocation(line: 56, column: 7, scope: !60)
!65 = !DILocation(line: 58, column: 32, scope: !60)
!66 = !DILocation(line: 58, column: 7, scope: !60)
!67 = !DILocation(line: 59, column: 1, scope: !47)
!68 = distinct !DISubprogram(name: "PrintVector", scope: !3, file: !3, line: 63, type: !69, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector", file: !7, line: 148, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector", file: !7, line: 149, size: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !73, file: !7, line: 150, baseType: !6, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !73, file: !7, line: 151, baseType: !6, size: 64, offset: 64)
!77 = !{!78}
!78 = !DILocalVariable(name: "v", arg: 1, scope: !68, file: !3, line: 63, type: !71)
!79 = !DILocation(line: 0, scope: !68)
!80 = !DILocation(line: 65, column: 34, scope: !68)
!81 = !DILocation(line: 65, column: 40, scope: !68)
!82 = !DILocation(line: 65, column: 4, scope: !68)
!83 = !DILocation(line: 66, column: 1, scope: !68)
!84 = distinct !DISubprogram(name: "LockedPrint", scope: !3, file: !3, line: 70, type: !85, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, null}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!89 = !{!90, !91}
!90 = !DILocalVariable(name: "format_str", arg: 1, scope: !84, file: !3, line: 70, type: !87)
!91 = !DILocalVariable(name: "ap", scope: !84, file: !3, line: 72, type: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !93, line: 52, baseType: !94)
!93 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "5b917eded35ce2507d1e294bf8cb74d7")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !95, line: 32, baseType: !96)
!95 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stdarg.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !97, baseType: !98)
!97 = !DIFile(filename: "defs.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/fmm")
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 192, elements: !107)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !100)
!100 = !{!101, !103, !104, !106}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !99, file: !97, line: 72, baseType: !102, size: 32)
!102 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !99, file: !97, line: 72, baseType: !102, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !99, file: !97, line: 72, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !99, file: !97, line: 72, baseType: !105, size: 64, offset: 128)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DILocation(line: 0, scope: !84)
!110 = !DILocation(line: 72, column: 4, scope: !84)
!111 = !DILocation(line: 72, column: 12, scope: !84)
!112 = !DILocation(line: 74, column: 4, scope: !84)
!113 = !DILocation(line: 75, column: 26, scope: !114)
!114 = distinct !DILexicalBlock(scope: !84, file: !3, line: 75, column: 4)
!115 = !DILocation(line: 75, column: 5, scope: !114)
!116 = !DILocation(line: 76, column: 11, scope: !84)
!117 = !DILocation(line: 76, column: 4, scope: !84)
!118 = !DILocation(line: 77, column: 13, scope: !84)
!119 = !DILocation(line: 77, column: 4, scope: !84)
!120 = !DILocation(line: 78, column: 11, scope: !84)
!121 = !DILocation(line: 78, column: 4, scope: !84)
!122 = !DILocation(line: 79, column: 28, scope: !123)
!123 = distinct !DILexicalBlock(scope: !84, file: !3, line: 79, column: 4)
!124 = !DILocation(line: 79, column: 5, scope: !123)
!125 = !DILocation(line: 80, column: 4, scope: !84)
!126 = !DILocation(line: 81, column: 1, scope: !84)
!127 = !DISubprogram(name: "pthread_mutex_lock", scope: !128, file: !128, line: 738, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
!128 = !DIFile(filename: "/usr/include/pthread.h", directory: "", checksumkind: CSK_MD5, checksum: "0e55f33d4e6889d38be50c852b7d6130")
!129 = !DISubroutineType(types: !130)
!130 = !{!31, !131}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !133, line: 72, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "2d764266ce95ab26d4a4767c2ec78176")
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !133, line: 67, size: 320, elements: !135)
!135 = !{!136, !156, !160}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !134, file: !133, line: 69, baseType: !137, size: 320)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !138, line: 22, size: 320, elements: !139)
!138 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "3a896f588055d599ccb9e3fe6eaee3e3")
!139 = !{!140, !141, !142, !143, !144, !145, !147, !148}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !137, file: !138, line: 24, baseType: !31, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !137, file: !138, line: 25, baseType: !102, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !137, file: !138, line: 26, baseType: !31, size: 32, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !137, file: !138, line: 28, baseType: !102, size: 32, offset: 96)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !137, file: !138, line: 32, baseType: !31, size: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !137, file: !138, line: 34, baseType: !146, size: 16, offset: 160)
!146 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !137, file: !138, line: 35, baseType: !146, size: 16, offset: 176)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !137, file: !138, line: 36, baseType: !149, size: 128, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !150, line: 53, baseType: !151)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "4b8899127613e00869e96fcefd314d61")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !150, line: 49, size: 128, elements: !152)
!152 = !{!153, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !151, file: !150, line: 51, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !151, file: !150, line: 52, baseType: !154, size: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !134, file: !133, line: 70, baseType: !157, size: 320)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 320, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 40)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !134, file: !133, line: 71, baseType: !15, size: 64)
!161 = !{}
!162 = !DISubprogram(name: "fflush", scope: !93, file: !93, line: 218, type: !163, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
!163 = !DISubroutineType(types: !164)
!164 = !{!31, !165}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !167, line: 7, baseType: !168)
!167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !169, line: 49, size: 1728, elements: !170)
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "f3c970561f3408448ce03a9676ead8f4")
!170 = !{!171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !186, !188, !189, !190, !193, !195, !197, !199, !202, !204, !207, !210, !211, !212, !216, !217}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !168, file: !169, line: 51, baseType: !31, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !168, file: !169, line: 54, baseType: !87, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !168, file: !169, line: 55, baseType: !87, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !168, file: !169, line: 56, baseType: !87, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !168, file: !169, line: 57, baseType: !87, size: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !168, file: !169, line: 58, baseType: !87, size: 64, offset: 320)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !168, file: !169, line: 59, baseType: !87, size: 64, offset: 384)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !168, file: !169, line: 60, baseType: !87, size: 64, offset: 448)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !168, file: !169, line: 61, baseType: !87, size: 64, offset: 512)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !168, file: !169, line: 64, baseType: !87, size: 64, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !168, file: !169, line: 65, baseType: !87, size: 64, offset: 640)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !168, file: !169, line: 66, baseType: !87, size: 64, offset: 704)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !168, file: !169, line: 68, baseType: !184, size: 64, offset: 768)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !169, line: 36, flags: DIFlagFwdDecl)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !168, file: !169, line: 70, baseType: !187, size: 64, offset: 832)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !168, file: !169, line: 72, baseType: !31, size: 32, offset: 896)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !168, file: !169, line: 73, baseType: !31, size: 32, offset: 928)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !168, file: !169, line: 74, baseType: !191, size: 64, offset: 960)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !192, line: 152, baseType: !15)
!192 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !168, file: !169, line: 77, baseType: !194, size: 16, offset: 1024)
!194 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !168, file: !169, line: 78, baseType: !196, size: 8, offset: 1040)
!196 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !168, file: !169, line: 79, baseType: !198, size: 8, offset: 1048)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 8, elements: !107)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !168, file: !169, line: 81, baseType: !200, size: 64, offset: 1088)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !169, line: 43, baseType: null)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !168, file: !169, line: 89, baseType: !203, size: 64, offset: 1152)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !192, line: 153, baseType: !15)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !168, file: !169, line: 91, baseType: !205, size: 64, offset: 1216)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !169, line: 37, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !168, file: !169, line: 92, baseType: !208, size: 64, offset: 1280)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !169, line: 38, flags: DIFlagFwdDecl)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !168, file: !169, line: 93, baseType: !187, size: 64, offset: 1344)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !168, file: !169, line: 94, baseType: !105, size: 64, offset: 1408)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !168, file: !169, line: 95, baseType: !213, size: 64, offset: 1472)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !214, line: 46, baseType: !215)
!214 = !DIFile(filename: "llvm-project/build/lib/clang/15.0.0/include/stddef.h", directory: "/home/rouzbeh/Graduate/LLVM", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!215 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !168, file: !169, line: 96, baseType: !31, size: 32, offset: 1536)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !168, file: !169, line: 98, baseType: !218, size: 160, offset: 1568)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 160, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 20)
!221 = !DISubprogram(name: "pthread_mutex_unlock", scope: !128, file: !128, line: 756, type: !129, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !161)
