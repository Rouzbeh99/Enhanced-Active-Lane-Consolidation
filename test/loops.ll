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
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata float** %5, metadata !14, metadata !DIExpression()), !dbg !27
  store float* %1, float** %6, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata float** %6, metadata !15, metadata !DIExpression()), !dbg !28
  store float* %2, float** %7, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata float** %7, metadata !16, metadata !DIExpression()), !dbg !29
  store i32 %3, i32* %8, align 4, !tbaa !30
  call void @llvm.dbg.declare(metadata i32* %8, metadata !17, metadata !DIExpression()), !dbg !32
  %12 = bitcast i32* %9 to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %9, metadata !18, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %9, align 4, !dbg !34, !tbaa !30
  %13 = bitcast i32* %10 to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %10, metadata !19, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %10, align 4, !dbg !36, !tbaa !30
  br label %14, !dbg !35

14:                                               ; preds = %37, %4
  %15 = load i32, i32* %10, align 4, !dbg !37, !tbaa !30
  %16 = load i32, i32* %8, align 4, !dbg !39, !tbaa !30
  %17 = icmp slt i32 %15, %16, !dbg !40
  br i1 %17, label %20, label %18, !dbg !41

18:                                               ; preds = %14
  %19 = bitcast i32* %10 to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3, !dbg !42
  br label %40

20:                                               ; preds = %14
  %21 = load float*, float** %5, align 8, !dbg !43, !tbaa !23
  %22 = load i32, i32* %10, align 4, !dbg !45, !tbaa !30
  %23 = sub nsw i32 %22, 1, !dbg !46
  %24 = sext i32 %23 to i64, !dbg !43
  %25 = getelementptr inbounds float, float* %21, i64 %24, !dbg !43
  %26 = load float, float* %25, align 4, !dbg !43, !tbaa !47
  %27 = load float*, float** %6, align 8, !dbg !49, !tbaa !23
  %28 = load i32, i32* %10, align 4, !dbg !50, !tbaa !30
  %29 = sext i32 %28 to i64, !dbg !49
  %30 = getelementptr inbounds float, float* %27, i64 %29, !dbg !49
  %31 = load float, float* %30, align 4, !dbg !49, !tbaa !47
  %32 = fmul float %26, %31, !dbg !51
  %33 = load float*, float** %5, align 8, !dbg !52, !tbaa !23
  %34 = load i32, i32* %10, align 4, !dbg !53, !tbaa !30
  %35 = sext i32 %34 to i64, !dbg !52
  %36 = getelementptr inbounds float, float* %33, i64 %35, !dbg !52
  store float %32, float* %36, align 4, !dbg !54, !tbaa !47
  br label %37, !dbg !55

37:                                               ; preds = %20
  %38 = load i32, i32* %10, align 4, !dbg !56, !tbaa !30
  %39 = add nsw i32 %38, 1, !dbg !56
  store i32 %39, i32* %10, align 4, !dbg !56, !tbaa !30
  br label %14, !dbg !42, !llvm.loop !57

40:                                               ; preds = %18
  %41 = bitcast i32* %11 to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #3, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %11, metadata !21, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %11, align 4, !dbg !60, !tbaa !30
  br label %42, !dbg !59

42:                                               ; preds = %64, %40
  %43 = load i32, i32* %11, align 4, !dbg !61, !tbaa !30
  %44 = load i32, i32* %8, align 4, !dbg !63, !tbaa !30
  %45 = icmp slt i32 %43, %44, !dbg !64
  br i1 %45, label %48, label %46, !dbg !65

46:                                               ; preds = %42
  %47 = bitcast i32* %11 to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3, !dbg !66
  br label %67

48:                                               ; preds = %42
  %49 = load float*, float** %6, align 8, !dbg !67, !tbaa !23
  %50 = load i32, i32* %11, align 4, !dbg !69, !tbaa !30
  %51 = sext i32 %50 to i64, !dbg !67
  %52 = getelementptr inbounds float, float* %49, i64 %51, !dbg !67
  %53 = load float, float* %52, align 4, !dbg !67, !tbaa !47
  %54 = load float*, float** %7, align 8, !dbg !70, !tbaa !23
  %55 = load i32, i32* %11, align 4, !dbg !71, !tbaa !30
  %56 = sext i32 %55 to i64, !dbg !70
  %57 = getelementptr inbounds float, float* %54, i64 %56, !dbg !70
  %58 = load float, float* %57, align 4, !dbg !70, !tbaa !47
  %59 = fadd float %53, %58, !dbg !72
  %60 = load i32, i32* %9, align 4, !dbg !73, !tbaa !30
  %61 = sitofp i32 %60 to float, !dbg !73
  %62 = fadd float %61, %59, !dbg !73
  %63 = fptosi float %62 to i32, !dbg !73
  store i32 %63, i32* %9, align 4, !dbg !73, !tbaa !30
  br label %64, !dbg !74

64:                                               ; preds = %48
  %65 = load i32, i32* %11, align 4, !dbg !75, !tbaa !30
  %66 = add nsw i32 %65, 1, !dbg !75
  store i32 %66, i32* %11, align 4, !dbg !75, !tbaa !30
  br label %42, !dbg !66, !llvm.loop !76

67:                                               ; preds = %46
  %68 = load i32, i32* %9, align 4, !dbg !78, !tbaa !30
  %69 = bitcast i32* %9 to i8*, !dbg !79
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #3, !dbg !79
  ret i32 %68, !dbg !80
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
!7 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!13 = !{!14, !15, !16, !17, !18, !19, !21}
!14 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 19, type: !11)
!15 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 19, type: !11)
!16 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 19, type: !11)
!17 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 19, type: !10)
!18 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 21, type: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 24, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 5)
!21 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 29, type: !10)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 29, column: 5)
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 19, column: 16, scope: !7)
!28 = !DILocation(line: 19, column: 26, scope: !7)
!29 = !DILocation(line: 19, column: 36, scope: !7)
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !25, i64 0}
!32 = !DILocation(line: 19, column: 43, scope: !7)
!33 = !DILocation(line: 21, column: 5, scope: !7)
!34 = !DILocation(line: 21, column: 9, scope: !7)
!35 = !DILocation(line: 24, column: 10, scope: !20)
!36 = !DILocation(line: 24, column: 14, scope: !20)
!37 = !DILocation(line: 24, column: 21, scope: !38)
!38 = distinct !DILexicalBlock(scope: !20, file: !1, line: 24, column: 5)
!39 = !DILocation(line: 24, column: 25, scope: !38)
!40 = !DILocation(line: 24, column: 23, scope: !38)
!41 = !DILocation(line: 24, column: 5, scope: !20)
!42 = !DILocation(line: 24, column: 5, scope: !38)
!43 = !DILocation(line: 25, column: 14, scope: !44)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 24, column: 33)
!45 = !DILocation(line: 25, column: 16, scope: !44)
!46 = !DILocation(line: 25, column: 18, scope: !44)
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !25, i64 0}
!49 = !DILocation(line: 25, column: 25, scope: !44)
!50 = !DILocation(line: 25, column: 27, scope: !44)
!51 = !DILocation(line: 25, column: 23, scope: !44)
!52 = !DILocation(line: 25, column: 7, scope: !44)
!53 = !DILocation(line: 25, column: 9, scope: !44)
!54 = !DILocation(line: 25, column: 12, scope: !44)
!55 = !DILocation(line: 26, column: 5, scope: !44)
!56 = !DILocation(line: 24, column: 28, scope: !38)
!57 = distinct !{!57, !41, !58}
!58 = !DILocation(line: 26, column: 5, scope: !20)
!59 = !DILocation(line: 29, column: 10, scope: !22)
!60 = !DILocation(line: 29, column: 14, scope: !22)
!61 = !DILocation(line: 29, column: 21, scope: !62)
!62 = distinct !DILexicalBlock(scope: !22, file: !1, line: 29, column: 5)
!63 = !DILocation(line: 29, column: 25, scope: !62)
!64 = !DILocation(line: 29, column: 23, scope: !62)
!65 = !DILocation(line: 29, column: 5, scope: !22)
!66 = !DILocation(line: 29, column: 5, scope: !62)
!67 = !DILocation(line: 30, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 29, column: 33)
!69 = !DILocation(line: 30, column: 15, scope: !68)
!70 = !DILocation(line: 30, column: 20, scope: !68)
!71 = !DILocation(line: 30, column: 22, scope: !68)
!72 = !DILocation(line: 30, column: 18, scope: !68)
!73 = !DILocation(line: 30, column: 10, scope: !68)
!74 = !DILocation(line: 32, column: 5, scope: !68)
!75 = !DILocation(line: 29, column: 28, scope: !62)
!76 = distinct !{!76, !65, !77}
!77 = !DILocation(line: 32, column: 5, scope: !22)
!78 = !DILocation(line: 33, column: 12, scope: !7)
!79 = !DILocation(line: 35, column: 1, scope: !7)
!80 = !DILocation(line: 33, column: 5, scope: !7)
