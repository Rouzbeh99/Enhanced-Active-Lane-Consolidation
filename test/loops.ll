; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !7 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata float** %5, metadata !14, metadata !DIExpression()), !dbg !25
  store float* %1, float** %6, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata float** %6, metadata !15, metadata !DIExpression()), !dbg !26
  store float* %2, float** %7, align 8, !tbaa !21
  call void @llvm.dbg.declare(metadata float** %7, metadata !16, metadata !DIExpression()), !dbg !27
  store i32 %3, i32* %8, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %8, metadata !17, metadata !DIExpression()), !dbg !30
  %11 = bitcast i32* %9 to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %9, metadata !18, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %9, align 4, !dbg !32, !tbaa !28
  %12 = bitcast i32* %10 to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %10, metadata !19, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %10, align 4, !dbg !34, !tbaa !28
  br label %13, !dbg !33

13:                                               ; preds = %35, %4
  %14 = load i32, i32* %10, align 4, !dbg !35, !tbaa !28
  %15 = load i32, i32* %8, align 4, !dbg !37, !tbaa !28
  %16 = icmp slt i32 %14, %15, !dbg !38
  br i1 %16, label %19, label %17, !dbg !39

17:                                               ; preds = %13
  %18 = bitcast i32* %10 to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !40
  br label %38

19:                                               ; preds = %13
  %20 = load float*, float** %6, align 8, !dbg !41, !tbaa !21
  %21 = load i32, i32* %10, align 4, !dbg !43, !tbaa !28
  %22 = sext i32 %21 to i64, !dbg !41
  %23 = getelementptr inbounds float, float* %20, i64 %22, !dbg !41
  %24 = load float, float* %23, align 4, !dbg !41, !tbaa !44
  %25 = load float*, float** %7, align 8, !dbg !46, !tbaa !21
  %26 = load i32, i32* %10, align 4, !dbg !47, !tbaa !28
  %27 = sext i32 %26 to i64, !dbg !46
  %28 = getelementptr inbounds float, float* %25, i64 %27, !dbg !46
  %29 = load float, float* %28, align 4, !dbg !46, !tbaa !44
  %30 = fadd float %24, %29, !dbg !48
  %31 = load i32, i32* %9, align 4, !dbg !49, !tbaa !28
  %32 = sitofp i32 %31 to float, !dbg !49
  %33 = fadd float %32, %30, !dbg !49
  %34 = fptosi float %33 to i32, !dbg !49
  store i32 %34, i32* %9, align 4, !dbg !49, !tbaa !28
  br label %35, !dbg !50

35:                                               ; preds = %19
  %36 = load i32, i32* %10, align 4, !dbg !51, !tbaa !28
  %37 = add nsw i32 %36, 1, !dbg !51
  store i32 %37, i32* %10, align 4, !dbg !51, !tbaa !28
  br label %13, !dbg !40, !llvm.loop !52

38:                                               ; preds = %17
  %39 = load i32, i32* %9, align 4, !dbg !54, !tbaa !28
  %40 = bitcast i32* %9 to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !55
  ret i32 %39, !dbg !56
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

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
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 20, column: 16, scope: !7)
!26 = !DILocation(line: 20, column: 26, scope: !7)
!27 = !DILocation(line: 20, column: 36, scope: !7)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !23, i64 0}
!30 = !DILocation(line: 20, column: 43, scope: !7)
!31 = !DILocation(line: 26, column: 5, scope: !7)
!32 = !DILocation(line: 26, column: 9, scope: !7)
!33 = !DILocation(line: 28, column: 10, scope: !20)
!34 = !DILocation(line: 28, column: 14, scope: !20)
!35 = !DILocation(line: 28, column: 21, scope: !36)
!36 = distinct !DILexicalBlock(scope: !20, file: !1, line: 28, column: 5)
!37 = !DILocation(line: 28, column: 25, scope: !36)
!38 = !DILocation(line: 28, column: 23, scope: !36)
!39 = !DILocation(line: 28, column: 5, scope: !20)
!40 = !DILocation(line: 28, column: 5, scope: !36)
!41 = !DILocation(line: 30, column: 13, scope: !42)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 28, column: 33)
!43 = !DILocation(line: 30, column: 15, scope: !42)
!44 = !{!45, !45, i64 0}
!45 = !{!"float", !23, i64 0}
!46 = !DILocation(line: 30, column: 20, scope: !42)
!47 = !DILocation(line: 30, column: 22, scope: !42)
!48 = !DILocation(line: 30, column: 18, scope: !42)
!49 = !DILocation(line: 30, column: 10, scope: !42)
!50 = !DILocation(line: 32, column: 5, scope: !42)
!51 = !DILocation(line: 28, column: 28, scope: !36)
!52 = distinct !{!52, !39, !53}
!53 = !DILocation(line: 32, column: 5, scope: !20)
!54 = !DILocation(line: 34, column: 12, scope: !7)
!55 = !DILocation(line: 35, column: 1, scope: !7)
!56 = !DILocation(line: 34, column: 5, scope: !7)
