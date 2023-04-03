; ModuleID = 'render.c'
source_filename = "render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@light = external local_unnamed_addr global [3 x float], align 4
@obslight = dso_local global [3 x float] zeroinitializer, align 4, !dbg !0
@obshighlight = dso_local local_unnamed_addr global [3 x float] zeroinitializer, align 4, !dbg !5

; Function Attrs: noinline nounwind uwtable
define dso_local void @Render(i64 noundef %my_node) local_unnamed_addr #0 !dbg !18 {
entry:
  call void @llvm.dbg.value(metadata i64 %my_node, metadata !23, metadata !DIExpression()), !dbg !24
  %cmp = icmp eq i64 %my_node, 0, !dbg !25
  br i1 %cmp, label %if.then, label %if.end, !dbg !27

if.then:                                          ; preds = %entry
  tail call void @Observer_Transform_Light_Vector(), !dbg !28
  tail call void @Compute_Observer_Transformed_Highlight_Vector(), !dbg !30
  br label %if.end, !dbg !31

if.end:                                           ; preds = %if.then, %entry
  tail call void @Ray_Trace(i64 noundef %my_node) #6, !dbg !32
  ret void, !dbg !33
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Observer_Transform_Light_Vector() local_unnamed_addr #0 !dbg !34 {
entry:
  %0 = load float, ptr @light, align 4, !dbg !39
  %conv = fpext float %0 to double, !dbg !39
  %1 = load float, ptr getelementptr inbounds ([3 x float], ptr @light, i64 0, i64 1), align 4, !dbg !40
  %conv1 = fpext float %1 to double, !dbg !40
  %2 = load float, ptr getelementptr inbounds ([3 x float], ptr @light, i64 0, i64 2), align 4, !dbg !41
  %conv2 = fpext float %2 to double, !dbg !41
  tail call void @Transform_Point(double noundef %conv, double noundef %conv1, double noundef %conv2, ptr noundef nonnull @obslight, ptr noundef getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 1), ptr noundef getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 2)) #6, !dbg !42
  %3 = load float, ptr @obslight, align 4, !dbg !43
  %4 = load float, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 1), align 4, !dbg !44
  %mul3 = fmul float %4, %4, !dbg !45
  %5 = tail call float @llvm.fmuladd.f32(float %3, float %3, float %mul3), !dbg !46
  %6 = load float, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 2), align 4, !dbg !47
  %7 = tail call float @llvm.fmuladd.f32(float %6, float %6, float %5), !dbg !48
  %conv4 = fpext float %7 to double, !dbg !43
  %call = tail call double @sqrt(double noundef %conv4) #6, !dbg !49
  %div = fdiv double 1.000000e+00, %call, !dbg !50
  %conv5 = fptrunc double %div to float, !dbg !51
  call void @llvm.dbg.value(metadata float %conv5, metadata !38, metadata !DIExpression()), !dbg !52
  %8 = load float, ptr @obslight, align 4, !dbg !53
  %mul = fmul float %8, %conv5, !dbg !54
  store float %mul, ptr @obslight, align 4, !dbg !55
  %9 = load float, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 1), align 4, !dbg !56
  %mul6 = fmul float %9, %conv5, !dbg !57
  store float %mul6, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 1), align 4, !dbg !58
  %10 = load float, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 2), align 4, !dbg !59
  %mul7 = fmul float %10, %conv5, !dbg !60
  store float %mul7, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 2), align 4, !dbg !61
  ret void, !dbg !62
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Compute_Observer_Transformed_Highlight_Vector() local_unnamed_addr #0 !dbg !63 {
entry:
  %obseye = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %obseye) #6, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %obseye, metadata !66, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata float 1.000000e+00, metadata !67, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !68, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !71
  call void @llvm.dbg.value(metadata float 0.000000e+00, metadata !68, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !71
  call void @llvm.dbg.value(metadata float -1.000000e+00, metadata !68, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 32)), !dbg !71
  %arrayidx9 = getelementptr inbounds [3 x float], ptr %obseye, i64 0, i64 1, !dbg !72
  %arrayidx10 = getelementptr inbounds [3 x float], ptr %obseye, i64 0, i64 2, !dbg !73
  call void @Transform_Point(double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef -1.000000e+00, ptr noundef nonnull %obseye, ptr noundef nonnull %arrayidx9, ptr noundef nonnull %arrayidx10) #6, !dbg !74
  %0 = load float, ptr %obseye, align 4, !dbg !75
  %1 = load float, ptr %arrayidx9, align 4, !dbg !76
  %mul15 = fmul float %1, %1, !dbg !77
  %2 = call float @llvm.fmuladd.f32(float %0, float %0, float %mul15), !dbg !78
  %3 = load float, ptr %arrayidx10, align 4, !dbg !79
  %4 = call float @llvm.fmuladd.f32(float %3, float %3, float %2), !dbg !80
  %conv18 = fpext float %4 to double, !dbg !75
  %call = call double @sqrt(double noundef %conv18) #6, !dbg !81
  %div = fdiv double 1.000000e+00, %call, !dbg !82
  %conv19 = fptrunc double %div to float, !dbg !83
  call void @llvm.dbg.value(metadata float %conv19, metadata !65, metadata !DIExpression()), !dbg !71
  %5 = load float, ptr %obseye, align 4, !dbg !84
  %mul = fmul float %5, %conv19, !dbg !85
  %6 = load float, ptr %arrayidx9, align 4, !dbg !86
  %mul23 = fmul float %6, %conv19, !dbg !87
  %7 = load float, ptr %arrayidx10, align 4, !dbg !88
  %mul26 = fmul float %7, %conv19, !dbg !89
  %8 = load float, ptr @obslight, align 4, !dbg !90
  %add = fadd float %mul, %8, !dbg !91
  store float %add, ptr @obshighlight, align 4, !dbg !92
  %9 = load float, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 1), align 4, !dbg !93
  %add30 = fadd float %mul23, %9, !dbg !94
  store float %add30, ptr getelementptr inbounds ([3 x float], ptr @obshighlight, i64 0, i64 1), align 4, !dbg !95
  %10 = load float, ptr getelementptr inbounds ([3 x float], ptr @obslight, i64 0, i64 2), align 4, !dbg !96
  %add32 = fadd float %mul26, %10, !dbg !97
  store float %add32, ptr getelementptr inbounds ([3 x float], ptr @obshighlight, i64 0, i64 2), align 4, !dbg !98
  %mul34 = fmul float %add30, %add30, !dbg !99
  %11 = call float @llvm.fmuladd.f32(float %add, float %add, float %mul34), !dbg !100
  %12 = call float @llvm.fmuladd.f32(float %add32, float %add32, float %11), !dbg !101
  %conv36 = fpext float %12 to double, !dbg !102
  %call37 = call double @sqrt(double noundef %conv36) #6, !dbg !103
  %div38 = fdiv double 1.000000e+00, %call37, !dbg !104
  %conv39 = fptrunc double %div38 to float, !dbg !105
  call void @llvm.dbg.value(metadata float %conv39, metadata !65, metadata !DIExpression()), !dbg !71
  %13 = load float, ptr @obshighlight, align 4, !dbg !106
  %mul40 = fmul float %13, %conv39, !dbg !107
  store float %mul40, ptr @obshighlight, align 4, !dbg !108
  %14 = load float, ptr getelementptr inbounds ([3 x float], ptr @obshighlight, i64 0, i64 1), align 4, !dbg !109
  %mul42 = fmul float %14, %conv39, !dbg !110
  store float %mul42, ptr getelementptr inbounds ([3 x float], ptr @obshighlight, i64 0, i64 1), align 4, !dbg !111
  %15 = load float, ptr getelementptr inbounds ([3 x float], ptr @obshighlight, i64 0, i64 2), align 4, !dbg !112
  %mul44 = fmul float %15, %conv39, !dbg !113
  store float %mul44, ptr getelementptr inbounds ([3 x float], ptr @obshighlight, i64 0, i64 2), align 4, !dbg !114
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %obseye) #6, !dbg !115
  ret void, !dbg !115
}

declare !dbg !116 void @Ray_Trace(i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare !dbg !119 void @Transform_Point(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn writeonly
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind willreturn writeonly "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "obslight", scope: !2, file: !3, line: 28, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "render.c", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "aca4c91742df84fe141ccfdccf78f6cc")
!4 = !{!0, !5}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "obshighlight", scope: !2, file: !3, line: 29, type: !7, isLocal: false, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 96, elements: !9)
!8 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!9 = !{!10}
!10 = !DISubrange(count: 3)
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 2}
!17 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!18 = distinct !DISubprogram(name: "Render", scope: !3, file: !3, line: 49, type: !19, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!22 = !{!23}
!23 = !DILocalVariable(name: "my_node", arg: 1, scope: !18, file: !3, line: 49, type: !21)
!24 = !DILocation(line: 0, scope: !18)
!25 = !DILocation(line: 51, column: 15, scope: !26)
!26 = distinct !DILexicalBlock(scope: !18, file: !3, line: 51, column: 7)
!27 = !DILocation(line: 51, column: 7, scope: !18)
!28 = !DILocation(line: 52, column: 3, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !3, line: 51, column: 24)
!30 = !DILocation(line: 53, column: 3, scope: !29)
!31 = !DILocation(line: 54, column: 3, scope: !29)
!32 = !DILocation(line: 55, column: 3, scope: !18)
!33 = !DILocation(line: 56, column: 1, scope: !18)
!34 = distinct !DISubprogram(name: "Observer_Transform_Light_Vector", scope: !3, file: !3, line: 59, type: !35, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!35 = !DISubroutineType(types: !36)
!36 = !{null}
!37 = !{!38}
!38 = !DILocalVariable(name: "inv_magnitude", scope: !34, file: !3, line: 61, type: !8)
!39 = !DILocation(line: 71, column: 19, scope: !34)
!40 = !DILocation(line: 71, column: 28, scope: !34)
!41 = !DILocation(line: 71, column: 37, scope: !34)
!42 = !DILocation(line: 71, column: 3, scope: !34)
!43 = !DILocation(line: 75, column: 28, scope: !34)
!44 = !DILocation(line: 76, column: 6, scope: !34)
!45 = !DILocation(line: 76, column: 17, scope: !34)
!46 = !DILocation(line: 75, column: 52, scope: !34)
!47 = !DILocation(line: 77, column: 6, scope: !34)
!48 = !DILocation(line: 76, column: 30, scope: !34)
!49 = !DILocation(line: 75, column: 23, scope: !34)
!50 = !DILocation(line: 75, column: 22, scope: !34)
!51 = !DILocation(line: 75, column: 19, scope: !34)
!52 = !DILocation(line: 0, scope: !34)
!53 = !DILocation(line: 78, column: 17, scope: !34)
!54 = !DILocation(line: 78, column: 29, scope: !34)
!55 = !DILocation(line: 78, column: 15, scope: !34)
!56 = !DILocation(line: 79, column: 17, scope: !34)
!57 = !DILocation(line: 79, column: 29, scope: !34)
!58 = !DILocation(line: 79, column: 15, scope: !34)
!59 = !DILocation(line: 80, column: 17, scope: !34)
!60 = !DILocation(line: 80, column: 29, scope: !34)
!61 = !DILocation(line: 80, column: 15, scope: !34)
!62 = !DILocation(line: 81, column: 1, scope: !34)
!63 = distinct !DISubprogram(name: "Compute_Observer_Transformed_Highlight_Vector", scope: !3, file: !3, line: 84, type: !35, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !64)
!64 = !{!65, !66, !67, !68}
!65 = !DILocalVariable(name: "inv_magnitude", scope: !63, file: !3, line: 86, type: !8)
!66 = !DILocalVariable(name: "obseye", scope: !63, file: !3, line: 87, type: !7)
!67 = !DILocalVariable(name: "brightness", scope: !63, file: !3, line: 88, type: !8)
!68 = !DILocalVariable(name: "eye", scope: !63, file: !3, line: 89, type: !7)
!69 = !DILocation(line: 87, column: 3, scope: !63)
!70 = !DILocation(line: 87, column: 9, scope: !63)
!71 = !DILocation(line: 0, scope: !63)
!72 = !DILocation(line: 98, column: 52, scope: !63)
!73 = !DILocation(line: 98, column: 63, scope: !63)
!74 = !DILocation(line: 98, column: 3, scope: !63)
!75 = !DILocation(line: 101, column: 28, scope: !63)
!76 = !DILocation(line: 102, column: 6, scope: !63)
!77 = !DILocation(line: 102, column: 15, scope: !63)
!78 = !DILocation(line: 101, column: 48, scope: !63)
!79 = !DILocation(line: 103, column: 6, scope: !63)
!80 = !DILocation(line: 102, column: 26, scope: !63)
!81 = !DILocation(line: 101, column: 23, scope: !63)
!82 = !DILocation(line: 101, column: 22, scope: !63)
!83 = !DILocation(line: 101, column: 19, scope: !63)
!84 = !DILocation(line: 104, column: 15, scope: !63)
!85 = !DILocation(line: 104, column: 25, scope: !63)
!86 = !DILocation(line: 105, column: 15, scope: !63)
!87 = !DILocation(line: 105, column: 25, scope: !63)
!88 = !DILocation(line: 106, column: 15, scope: !63)
!89 = !DILocation(line: 106, column: 25, scope: !63)
!90 = !DILocation(line: 111, column: 21, scope: !63)
!91 = !DILocation(line: 111, column: 33, scope: !63)
!92 = !DILocation(line: 111, column: 19, scope: !63)
!93 = !DILocation(line: 112, column: 21, scope: !63)
!94 = !DILocation(line: 112, column: 33, scope: !63)
!95 = !DILocation(line: 112, column: 19, scope: !63)
!96 = !DILocation(line: 113, column: 21, scope: !63)
!97 = !DILocation(line: 113, column: 33, scope: !63)
!98 = !DILocation(line: 113, column: 19, scope: !63)
!99 = !DILocation(line: 117, column: 21, scope: !63)
!100 = !DILocation(line: 116, column: 60, scope: !63)
!101 = !DILocation(line: 117, column: 38, scope: !63)
!102 = !DILocation(line: 116, column: 28, scope: !63)
!103 = !DILocation(line: 116, column: 23, scope: !63)
!104 = !DILocation(line: 116, column: 22, scope: !63)
!105 = !DILocation(line: 116, column: 19, scope: !63)
!106 = !DILocation(line: 119, column: 21, scope: !63)
!107 = !DILocation(line: 119, column: 37, scope: !63)
!108 = !DILocation(line: 119, column: 19, scope: !63)
!109 = !DILocation(line: 120, column: 21, scope: !63)
!110 = !DILocation(line: 120, column: 37, scope: !63)
!111 = !DILocation(line: 120, column: 19, scope: !63)
!112 = !DILocation(line: 121, column: 21, scope: !63)
!113 = !DILocation(line: 121, column: 37, scope: !63)
!114 = !DILocation(line: 121, column: 19, scope: !63)
!115 = !DILocation(line: 122, column: 1, scope: !63)
!116 = !DISubprogram(name: "Ray_Trace", scope: !117, file: !117, line: 164, type: !19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !118)
!117 = !DIFile(filename: "./global.h", directory: "/home/rouzbeh/Graduate/LLVM/bechmarks/Splash-3/codes/apps/volrend", checksumkind: CSK_MD5, checksum: "f049690031a7f12768b0765e4f4983eb")
!118 = !{}
!119 = !DISubprogram(name: "Transform_Point", scope: !117, file: !117, line: 247, type: !120, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !118)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !122, !122, !123, !123, !123}
!122 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
