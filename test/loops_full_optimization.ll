; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @bar(float* nocapture %0, float* nocapture readonly %1, float* nocapture readnone %2, i32 %3) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !14, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata float* %1, metadata !15, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata float* %2, metadata !16, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 %3, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !22
  %5 = icmp sgt i32 %3, 0, !dbg !23
  br i1 %5, label %6, label %105, !dbg !25

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !23
  %8 = icmp ult i32 %3, 8, !dbg !25
  br i1 %8, label %9, label %29, !dbg !25

9:                                                ; preds = %103, %29, %6
  %10 = phi i64 [ 0, %29 ], [ 0, %6 ], [ %36, %103 ]
  %11 = xor i64 %10, -1, !dbg !25
  %12 = add nsw i64 %11, %7, !dbg !25
  %13 = and i64 %7, 3, !dbg !25
  %14 = icmp eq i64 %13, 0, !dbg !25
  br i1 %14, label %26, label %15, !dbg !25

15:                                               ; preds = %9, %15
  %16 = phi i64 [ %23, %15 ], [ %10, %9 ]
  %17 = phi i64 [ %24, %15 ], [ %13, %9 ]
  call void @llvm.dbg.value(metadata i64 %16, metadata !19, metadata !DIExpression()), !dbg !22
  %18 = getelementptr inbounds float, float* %0, i64 %16, !dbg !26
  %19 = load float, float* %18, align 4, !dbg !26, !tbaa !28
  %20 = getelementptr inbounds float, float* %1, i64 %16, !dbg !32
  %21 = load float, float* %20, align 4, !dbg !32, !tbaa !28
  %22 = fmul float %19, %21, !dbg !33
  store float %22, float* %18, align 4, !dbg !34, !tbaa !28
  %23 = add nuw nsw i64 %16, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %23, metadata !19, metadata !DIExpression()), !dbg !22
  %24 = add i64 %17, -1, !dbg !25
  %25 = icmp eq i64 %24, 0, !dbg !25
  br i1 %25, label %26, label %15, !dbg !25, !llvm.loop !36

26:                                               ; preds = %15, %9
  %27 = phi i64 [ %10, %9 ], [ %23, %15 ]
  %28 = icmp ult i64 %12, 3, !dbg !25
  br i1 %28, label %105, label %106, !dbg !25

29:                                               ; preds = %6
  %30 = getelementptr float, float* %0, i64 %7, !dbg !25
  %31 = getelementptr float, float* %1, i64 %7, !dbg !25
  %32 = icmp ugt float* %31, %0, !dbg !25
  %33 = icmp ugt float* %30, %1, !dbg !25
  %34 = and i1 %32, %33, !dbg !25
  br i1 %34, label %9, label %35, !dbg !25

35:                                               ; preds = %29
  %36 = and i64 %7, 4294967288, !dbg !25
  %37 = add nsw i64 %36, -8, !dbg !25
  %38 = lshr exact i64 %37, 3, !dbg !25
  %39 = add nuw nsw i64 %38, 1, !dbg !25
  %40 = and i64 %39, 1, !dbg !25
  %41 = icmp eq i64 %37, 0, !dbg !25
  br i1 %41, label %83, label %42, !dbg !25

42:                                               ; preds = %35
  %43 = sub nuw nsw i64 %39, %40, !dbg !25
  br label %44, !dbg !25

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %80, %44 ], !dbg !35
  %46 = phi i64 [ %43, %42 ], [ %81, %44 ]
  %47 = getelementptr inbounds float, float* %0, i64 %45, !dbg !26
  %48 = bitcast float* %47 to <4 x float>*, !dbg !26
  %49 = load <4 x float>, <4 x float>* %48, align 4, !dbg !26, !tbaa !28, !alias.scope !38, !noalias !41
  %50 = getelementptr inbounds float, float* %47, i64 4, !dbg !26
  %51 = bitcast float* %50 to <4 x float>*, !dbg !26
  %52 = load <4 x float>, <4 x float>* %51, align 4, !dbg !26, !tbaa !28, !alias.scope !38, !noalias !41
  %53 = getelementptr inbounds float, float* %1, i64 %45, !dbg !32
  %54 = bitcast float* %53 to <4 x float>*, !dbg !32
  %55 = load <4 x float>, <4 x float>* %54, align 4, !dbg !32, !tbaa !28, !alias.scope !41
  %56 = getelementptr inbounds float, float* %53, i64 4, !dbg !32
  %57 = bitcast float* %56 to <4 x float>*, !dbg !32
  %58 = load <4 x float>, <4 x float>* %57, align 4, !dbg !32, !tbaa !28, !alias.scope !41
  %59 = fmul <4 x float> %49, %55, !dbg !33
  %60 = fmul <4 x float> %52, %58, !dbg !33
  %61 = bitcast float* %47 to <4 x float>*, !dbg !34
  store <4 x float> %59, <4 x float>* %61, align 4, !dbg !34, !tbaa !28, !alias.scope !38, !noalias !41
  %62 = bitcast float* %50 to <4 x float>*, !dbg !34
  store <4 x float> %60, <4 x float>* %62, align 4, !dbg !34, !tbaa !28, !alias.scope !38, !noalias !41
  %63 = or i64 %45, 8, !dbg !35
  %64 = getelementptr inbounds float, float* %0, i64 %63, !dbg !26
  %65 = bitcast float* %64 to <4 x float>*, !dbg !26
  %66 = load <4 x float>, <4 x float>* %65, align 4, !dbg !26, !tbaa !28, !alias.scope !38, !noalias !41
  %67 = getelementptr inbounds float, float* %64, i64 4, !dbg !26
  %68 = bitcast float* %67 to <4 x float>*, !dbg !26
  %69 = load <4 x float>, <4 x float>* %68, align 4, !dbg !26, !tbaa !28, !alias.scope !38, !noalias !41
  %70 = getelementptr inbounds float, float* %1, i64 %63, !dbg !32
  %71 = bitcast float* %70 to <4 x float>*, !dbg !32
  %72 = load <4 x float>, <4 x float>* %71, align 4, !dbg !32, !tbaa !28, !alias.scope !41
  %73 = getelementptr inbounds float, float* %70, i64 4, !dbg !32
  %74 = bitcast float* %73 to <4 x float>*, !dbg !32
  %75 = load <4 x float>, <4 x float>* %74, align 4, !dbg !32, !tbaa !28, !alias.scope !41
  %76 = fmul <4 x float> %66, %72, !dbg !33
  %77 = fmul <4 x float> %69, %75, !dbg !33
  %78 = bitcast float* %64 to <4 x float>*, !dbg !34
  store <4 x float> %76, <4 x float>* %78, align 4, !dbg !34, !tbaa !28, !alias.scope !38, !noalias !41
  %79 = bitcast float* %67 to <4 x float>*, !dbg !34
  store <4 x float> %77, <4 x float>* %79, align 4, !dbg !34, !tbaa !28, !alias.scope !38, !noalias !41
  %80 = add i64 %45, 16, !dbg !35
  %81 = add i64 %46, -2, !dbg !35
  %82 = icmp eq i64 %81, 0, !dbg !35
  br i1 %82, label %83, label %44, !dbg !35, !llvm.loop !43

83:                                               ; preds = %44, %35
  %84 = phi i64 [ 0, %35 ], [ %80, %44 ]
  %85 = icmp eq i64 %40, 0, !dbg !35
  br i1 %85, label %103, label %86, !dbg !35

86:                                               ; preds = %83
  %87 = getelementptr inbounds float, float* %0, i64 %84, !dbg !26
  %88 = bitcast float* %87 to <4 x float>*, !dbg !26
  %89 = load <4 x float>, <4 x float>* %88, align 4, !dbg !26, !tbaa !28, !alias.scope !38, !noalias !41
  %90 = getelementptr inbounds float, float* %87, i64 4, !dbg !26
  %91 = bitcast float* %90 to <4 x float>*, !dbg !26
  %92 = load <4 x float>, <4 x float>* %91, align 4, !dbg !26, !tbaa !28, !alias.scope !38, !noalias !41
  %93 = getelementptr inbounds float, float* %1, i64 %84, !dbg !32
  %94 = bitcast float* %93 to <4 x float>*, !dbg !32
  %95 = load <4 x float>, <4 x float>* %94, align 4, !dbg !32, !tbaa !28, !alias.scope !41
  %96 = getelementptr inbounds float, float* %93, i64 4, !dbg !32
  %97 = bitcast float* %96 to <4 x float>*, !dbg !32
  %98 = load <4 x float>, <4 x float>* %97, align 4, !dbg !32, !tbaa !28, !alias.scope !41
  %99 = fmul <4 x float> %89, %95, !dbg !33
  %100 = fmul <4 x float> %92, %98, !dbg !33
  %101 = bitcast float* %87 to <4 x float>*, !dbg !34
  store <4 x float> %99, <4 x float>* %101, align 4, !dbg !34, !tbaa !28, !alias.scope !38, !noalias !41
  %102 = bitcast float* %90 to <4 x float>*, !dbg !34
  store <4 x float> %100, <4 x float>* %102, align 4, !dbg !34, !tbaa !28, !alias.scope !38, !noalias !41
  br label %103, !dbg !25

103:                                              ; preds = %83, %86
  %104 = icmp eq i64 %36, %7, !dbg !25
  br i1 %104, label %105, label %9, !dbg !25

105:                                              ; preds = %26, %106, %103, %4
  ret i32 0, !dbg !46

106:                                              ; preds = %26, %106
  %107 = phi i64 [ %131, %106 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata i64 %107, metadata !19, metadata !DIExpression()), !dbg !22
  %108 = getelementptr inbounds float, float* %0, i64 %107, !dbg !26
  %109 = load float, float* %108, align 4, !dbg !26, !tbaa !28
  %110 = getelementptr inbounds float, float* %1, i64 %107, !dbg !32
  %111 = load float, float* %110, align 4, !dbg !32, !tbaa !28
  %112 = fmul float %109, %111, !dbg !33
  store float %112, float* %108, align 4, !dbg !34, !tbaa !28
  %113 = add nuw nsw i64 %107, 1, !dbg !35
  call void @llvm.dbg.value(metadata i64 %113, metadata !19, metadata !DIExpression()), !dbg !22
  %114 = getelementptr inbounds float, float* %0, i64 %113, !dbg !26
  %115 = load float, float* %114, align 4, !dbg !26, !tbaa !28
  %116 = getelementptr inbounds float, float* %1, i64 %113, !dbg !32
  %117 = load float, float* %116, align 4, !dbg !32, !tbaa !28
  %118 = fmul float %115, %117, !dbg !33
  store float %118, float* %114, align 4, !dbg !34, !tbaa !28
  %119 = add nuw nsw i64 %107, 2, !dbg !35
  call void @llvm.dbg.value(metadata i64 %119, metadata !19, metadata !DIExpression()), !dbg !22
  %120 = getelementptr inbounds float, float* %0, i64 %119, !dbg !26
  %121 = load float, float* %120, align 4, !dbg !26, !tbaa !28
  %122 = getelementptr inbounds float, float* %1, i64 %119, !dbg !32
  %123 = load float, float* %122, align 4, !dbg !32, !tbaa !28
  %124 = fmul float %121, %123, !dbg !33
  store float %124, float* %120, align 4, !dbg !34, !tbaa !28
  %125 = add nuw nsw i64 %107, 3, !dbg !35
  call void @llvm.dbg.value(metadata i64 %125, metadata !19, metadata !DIExpression()), !dbg !22
  %126 = getelementptr inbounds float, float* %0, i64 %125, !dbg !26
  %127 = load float, float* %126, align 4, !dbg !26, !tbaa !28
  %128 = getelementptr inbounds float, float* %1, i64 %125, !dbg !32
  %129 = load float, float* %128, align 4, !dbg !32, !tbaa !28
  %130 = fmul float %127, %129, !dbg !33
  store float %130, float* %126, align 4, !dbg !34, !tbaa !28
  %131 = add nuw nsw i64 %107, 4, !dbg !35
  call void @llvm.dbg.value(metadata i64 %131, metadata !19, metadata !DIExpression()), !dbg !22
  %132 = icmp eq i64 %131, %7, !dbg !23
  br i1 %132, label %105, label %106, !dbg !25, !llvm.loop !47
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "loops.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 19, type: !11)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 19, type: !11)
!16 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 19, type: !11)
!17 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 19, type: !10)
!18 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 21, type: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 24, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 5)
!21 = !DILocation(line: 0, scope: !7)
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 24, column: 23, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 24, column: 5)
!25 = !DILocation(line: 24, column: 5, scope: !20)
!26 = !DILocation(line: 25, column: 14, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 24, column: 33)
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 25, column: 21, scope: !27)
!33 = !DILocation(line: 25, column: 19, scope: !27)
!34 = !DILocation(line: 25, column: 12, scope: !27)
!35 = !DILocation(line: 24, column: 28, scope: !24)
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !25, !44, !45}
!44 = !DILocation(line: 26, column: 5, scope: !20)
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !DILocation(line: 33, column: 5, scope: !7)
!47 = distinct !{!47, !25, !44, !45}
