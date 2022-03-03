; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i32 @bar(float* nocapture readnone %0, float* nocapture readonly %1, float* nocapture readonly %2, i32 %3) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !14, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata float* %1, metadata !15, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata float* %2, metadata !16, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 %3, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !22
  %5 = icmp sgt i32 %3, 0, !dbg !23
  br i1 %5, label %6, label %27, !dbg !25

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !23
  %8 = and i64 %7, 1, !dbg !25
  %9 = icmp eq i32 %3, 1, !dbg !25
  br i1 %9, label %14, label %10, !dbg !25

10:                                               ; preds = %6
  %11 = sub nsw i64 %7, %8, !dbg !25
  br label %29, !dbg !25

12:                                               ; preds = %29
  %13 = sitofp i32 %49 to float, !dbg !25
  br label %14, !dbg !25

14:                                               ; preds = %12, %6
  %15 = phi i32 [ undef, %6 ], [ %49, %12 ]
  %16 = phi i64 [ 0, %6 ], [ %50, %12 ]
  %17 = phi float [ 0.000000e+00, %6 ], [ %13, %12 ]
  %18 = icmp eq i64 %8, 0, !dbg !25
  br i1 %18, label %27, label %19, !dbg !25

19:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i64 %16, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i32 undef, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.value(metadata i64 %16, metadata !19, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !22
  %20 = getelementptr inbounds float, float* %1, i64 %16, !dbg !26
  %21 = load float, float* %20, align 4, !dbg !26, !tbaa !28
  %22 = getelementptr inbounds float, float* %2, i64 %16, !dbg !32
  %23 = load float, float* %22, align 4, !dbg !32, !tbaa !28
  %24 = fadd float %21, %23, !dbg !33
  %25 = fadd float %24, %17, !dbg !34
  %26 = fptosi float %25 to i32, !dbg !34
  call void @llvm.dbg.value(metadata i32 %26, metadata !18, metadata !DIExpression()), !dbg !21
  br label %27, !dbg !35

27:                                               ; preds = %19, %14, %4
  %28 = phi i32 [ 0, %4 ], [ %15, %14 ], [ %26, %19 ], !dbg !21
  call void @llvm.dbg.value(metadata i32 %28, metadata !18, metadata !DIExpression()), !dbg !21
  ret i32 %28, !dbg !35

29:                                               ; preds = %29, %10
  %30 = phi i64 [ 0, %10 ], [ %50, %29 ]
  %31 = phi i32 [ 0, %10 ], [ %49, %29 ]
  %32 = phi i64 [ %11, %10 ], [ %51, %29 ]
  call void @llvm.dbg.value(metadata i64 %30, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.value(metadata i32 %31, metadata !18, metadata !DIExpression()), !dbg !21
  %33 = getelementptr inbounds float, float* %1, i64 %30, !dbg !26
  %34 = load float, float* %33, align 4, !dbg !26, !tbaa !28
  %35 = getelementptr inbounds float, float* %2, i64 %30, !dbg !32
  %36 = load float, float* %35, align 4, !dbg !32, !tbaa !28
  %37 = fadd float %34, %36, !dbg !33
  %38 = sitofp i32 %31 to float, !dbg !34
  %39 = fadd float %37, %38, !dbg !34
  %40 = fptosi float %39 to i32, !dbg !34
  call void @llvm.dbg.value(metadata i32 %40, metadata !18, metadata !DIExpression()), !dbg !21
  %41 = or i64 %30, 1, !dbg !36
  call void @llvm.dbg.value(metadata i64 %41, metadata !19, metadata !DIExpression()), !dbg !22
  %42 = getelementptr inbounds float, float* %1, i64 %41, !dbg !26
  %43 = load float, float* %42, align 4, !dbg !26, !tbaa !28
  %44 = getelementptr inbounds float, float* %2, i64 %41, !dbg !32
  %45 = load float, float* %44, align 4, !dbg !32, !tbaa !28
  %46 = fadd float %43, %45, !dbg !33
  %47 = sitofp i32 %40 to float, !dbg !34
  %48 = fadd float %46, %47, !dbg !34
  %49 = fptosi float %48 to i32, !dbg !34
  call void @llvm.dbg.value(metadata i32 %49, metadata !18, metadata !DIExpression()), !dbg !21
  %50 = add nuw nsw i64 %30, 2, !dbg !36
  call void @llvm.dbg.value(metadata i64 %50, metadata !19, metadata !DIExpression()), !dbg !22
  %51 = add i64 %32, -2, !dbg !25
  %52 = icmp eq i64 %51, 0, !dbg !25
  br i1 %52, label %12, label %29, !dbg !25, !llvm.loop !37
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!7 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !15, !16, !17, !18, !19}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 20, type: !11)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 20, type: !11)
!16 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 20, type: !11)
!17 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 20, type: !10)
!18 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 26, type: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 28, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 5)
!21 = !DILocation(line: 0, scope: !7)
!22 = !DILocation(line: 0, scope: !20)
!23 = !DILocation(line: 28, column: 23, scope: !24)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 28, column: 5)
!25 = !DILocation(line: 28, column: 5, scope: !20)
!26 = !DILocation(line: 30, column: 13, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !1, line: 28, column: 33)
!28 = !{!29, !29, i64 0}
!29 = !{!"float", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 30, column: 20, scope: !27)
!33 = !DILocation(line: 30, column: 18, scope: !27)
!34 = !DILocation(line: 30, column: 10, scope: !27)
!35 = !DILocation(line: 34, column: 5, scope: !7)
!36 = !DILocation(line: 28, column: 28, scope: !24)
!37 = distinct !{!37, !25, !38}
!38 = !DILocation(line: 32, column: 5, scope: !20)
