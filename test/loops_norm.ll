; ModuleID = 'loops.ll'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo(float* noalias %0, float* noalias %1, float* noalias %2, i32 %3) #0 !dbg !7 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store float* %0, float** %5, align 8
  call void @llvm.dbg.declare(metadata float** %5, metadata !14, metadata !DIExpression()), !dbg !15
  store float* %1, float** %6, align 8
  call void @llvm.dbg.declare(metadata float** %6, metadata !16, metadata !DIExpression()), !dbg !17
  store float* %2, float** %7, align 8
  call void @llvm.dbg.declare(metadata float** %7, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %9, metadata !22, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %9, align 4, !dbg !24
  br label %11, !dbg !25

11:                                               ; preds = %88, %4
  %12 = load i32, i32* %9, align 4, !dbg !26
  %13 = load i32, i32* %8, align 4, !dbg !28
  %14 = icmp slt i32 %12, %13, !dbg !29
  br i1 %14, label %15, label %91, !dbg !30

15:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i32* %10, metadata !31, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %10, align 4, !dbg !34
  br label %16, !dbg !35

16:                                               ; preds = %84, %15
  %17 = load i32, i32* %10, align 4, !dbg !36
  %18 = load i32, i32* %8, align 4, !dbg !38
  %19 = icmp slt i32 %17, %18, !dbg !39
  br i1 %19, label %20, label %87, !dbg !40

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4, !dbg !41
  %22 = icmp eq i32 %21, 1, !dbg !44
  br i1 %22, label %23, label %41, !dbg !45

23:                                               ; preds = %20
  %24 = load float*, float** %6, align 8, !dbg !46
  %25 = load i32, i32* %10, align 4, !dbg !48
  %26 = sext i32 %25 to i64, !dbg !46
  %27 = getelementptr inbounds float, float* %24, i64 %26, !dbg !46
  %28 = load float, float* %27, align 4, !dbg !46
  %29 = load float*, float** %7, align 8, !dbg !49
  %30 = load i32, i32* %10, align 4, !dbg !50
  %31 = sext i32 %30 to i64, !dbg !49
  %32 = getelementptr inbounds float, float* %29, i64 %31, !dbg !49
  %33 = load float, float* %32, align 4, !dbg !49
  %34 = fadd float %28, %33, !dbg !51
  %35 = load float*, float** %5, align 8, !dbg !52
  %36 = load i32, i32* %9, align 4, !dbg !53
  %37 = sext i32 %36 to i64, !dbg !52
  %38 = getelementptr inbounds float, float* %35, i64 %37, !dbg !52
  %39 = load float, float* %38, align 4, !dbg !54
  %40 = fadd float %39, %34, !dbg !54
  store float %40, float* %38, align 4, !dbg !54
  br label %41, !dbg !55

41:                                               ; preds = %23, %20
  %42 = load i32, i32* %8, align 4, !dbg !56
  %43 = icmp sgt i32 %42, 5, !dbg !58
  br i1 %43, label %44, label %62, !dbg !59

44:                                               ; preds = %41
  %45 = load float*, float** %6, align 8, !dbg !60
  %46 = load i32, i32* %10, align 4, !dbg !62
  %47 = sext i32 %46 to i64, !dbg !60
  %48 = getelementptr inbounds float, float* %45, i64 %47, !dbg !60
  %49 = load float, float* %48, align 4, !dbg !60
  %50 = load float*, float** %7, align 8, !dbg !63
  %51 = load i32, i32* %10, align 4, !dbg !64
  %52 = sext i32 %51 to i64, !dbg !63
  %53 = getelementptr inbounds float, float* %50, i64 %52, !dbg !63
  %54 = load float, float* %53, align 4, !dbg !63
  %55 = fsub float %49, %54, !dbg !65
  %56 = load float*, float** %5, align 8, !dbg !66
  %57 = load i32, i32* %9, align 4, !dbg !67
  %58 = sext i32 %57 to i64, !dbg !66
  %59 = getelementptr inbounds float, float* %56, i64 %58, !dbg !66
  %60 = load float, float* %59, align 4, !dbg !68
  %61 = fadd float %60, %55, !dbg !68
  store float %61, float* %59, align 4, !dbg !68
  br label %62, !dbg !69

62:                                               ; preds = %44, %41
  %63 = load i32, i32* %8, align 4, !dbg !70
  %64 = icmp ne i32 %63, 0, !dbg !70
  br i1 %64, label %65, label %83, !dbg !72

65:                                               ; preds = %62
  %66 = load float*, float** %6, align 8, !dbg !73
  %67 = load i32, i32* %10, align 4, !dbg !75
  %68 = sext i32 %67 to i64, !dbg !73
  %69 = getelementptr inbounds float, float* %66, i64 %68, !dbg !73
  %70 = load float, float* %69, align 4, !dbg !73
  %71 = load float*, float** %7, align 8, !dbg !76
  %72 = load i32, i32* %10, align 4, !dbg !77
  %73 = sext i32 %72 to i64, !dbg !76
  %74 = getelementptr inbounds float, float* %71, i64 %73, !dbg !76
  %75 = load float, float* %74, align 4, !dbg !76
  %76 = fmul float %70, %75, !dbg !78
  %77 = load float*, float** %5, align 8, !dbg !79
  %78 = load i32, i32* %9, align 4, !dbg !80
  %79 = sext i32 %78 to i64, !dbg !79
  %80 = getelementptr inbounds float, float* %77, i64 %79, !dbg !79
  %81 = load float, float* %80, align 4, !dbg !81
  %82 = fadd float %81, %76, !dbg !81
  store float %82, float* %80, align 4, !dbg !81
  br label %83, !dbg !82

83:                                               ; preds = %65, %62
  br label %84, !dbg !83

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4, !dbg !84
  %86 = add nsw i32 %85, 1, !dbg !84
  store i32 %86, i32* %10, align 4, !dbg !84
  br label %16, !dbg !85, !llvm.loop !86

87:                                               ; preds = %16
  br label %88, !dbg !88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4, !dbg !89
  %90 = add nsw i32 %89, 1, !dbg !89
  store i32 %90, i32* %9, align 4, !dbg !89
  br label %11, !dbg !90, !llvm.loop !91

91:                                               ; preds = %11
  ret i32 0, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bar(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !94 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8
  call void @llvm.dbg.declare(metadata float** %5, metadata !97, metadata !DIExpression()), !dbg !98
  store float* %1, float** %6, align 8
  call void @llvm.dbg.declare(metadata float** %6, metadata !99, metadata !DIExpression()), !dbg !100
  store float* %2, float** %7, align 8
  call void @llvm.dbg.declare(metadata float** %7, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %9, metadata !105, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %9, align 4, !dbg !107
  br label %12, !dbg !108

12:                                               ; preds = %32, %4
  %13 = load i32, i32* %9, align 4, !dbg !109
  %14 = load i32, i32* %8, align 4, !dbg !111
  %15 = icmp slt i32 %13, %14, !dbg !112
  br i1 %15, label %16, label %35, !dbg !113

16:                                               ; preds = %12
  %17 = load float*, float** %5, align 8, !dbg !114
  %18 = load i32, i32* %9, align 4, !dbg !116
  %19 = sext i32 %18 to i64, !dbg !114
  %20 = getelementptr inbounds float, float* %17, i64 %19, !dbg !114
  %21 = load float, float* %20, align 4, !dbg !114
  %22 = load float*, float** %6, align 8, !dbg !117
  %23 = load i32, i32* %9, align 4, !dbg !118
  %24 = sext i32 %23 to i64, !dbg !117
  %25 = getelementptr inbounds float, float* %22, i64 %24, !dbg !117
  %26 = load float, float* %25, align 4, !dbg !117
  %27 = fmul float %21, %26, !dbg !119
  %28 = load float*, float** %5, align 8, !dbg !120
  %29 = load i32, i32* %9, align 4, !dbg !121
  %30 = sext i32 %29 to i64, !dbg !120
  %31 = getelementptr inbounds float, float* %28, i64 %30, !dbg !120
  store float %27, float* %31, align 4, !dbg !122
  br label %32, !dbg !123

32:                                               ; preds = %16
  %33 = load i32, i32* %9, align 4, !dbg !124
  %34 = add nsw i32 %33, 1, !dbg !124
  store i32 %34, i32* %9, align 4, !dbg !124
  br label %12, !dbg !125, !llvm.loop !126

35:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %10, metadata !128, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %10, align 4, !dbg !130
  br label %36, !dbg !131

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %10, align 4, !dbg !132
  %38 = load i32, i32* %8, align 4, !dbg !134
  %39 = icmp slt i32 %37, %38, !dbg !135
  br i1 %39, label %40, label %60, !dbg !136

40:                                               ; preds = %36
  %41 = load float*, float** %5, align 8, !dbg !137
  %42 = load i32, i32* %10, align 4, !dbg !139
  %43 = sext i32 %42 to i64, !dbg !137
  %44 = getelementptr inbounds float, float* %41, i64 %43, !dbg !137
  store float 0.000000e+00, float* %44, align 4, !dbg !140
  call void @llvm.dbg.declare(metadata i32* %11, metadata !141, metadata !DIExpression()), !dbg !142
  %45 = load float*, float** %6, align 8, !dbg !143
  %46 = load i32, i32* %10, align 4, !dbg !144
  %47 = sext i32 %46 to i64, !dbg !143
  %48 = getelementptr inbounds float, float* %45, i64 %47, !dbg !143
  %49 = load float, float* %48, align 4, !dbg !143
  %50 = load float*, float** %7, align 8, !dbg !145
  %51 = load i32, i32* %10, align 4, !dbg !146
  %52 = sext i32 %51 to i64, !dbg !145
  %53 = getelementptr inbounds float, float* %50, i64 %52, !dbg !145
  %54 = load float, float* %53, align 4, !dbg !145
  %55 = fadd float %49, %54, !dbg !147
  %56 = fptosi float %55 to i32, !dbg !143
  store i32 %56, i32* %11, align 4, !dbg !142
  br label %57, !dbg !148

57:                                               ; preds = %40
  %58 = load i32, i32* %10, align 4, !dbg !149
  %59 = add nsw i32 %58, 1, !dbg !149
  store i32 %59, i32* %10, align 4, !dbg !149
  br label %36, !dbg !150, !llvm.loop !151

60:                                               ; preds = %36
  ret i32 0, !dbg !153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bar2(float* %0, float* %1, float* %2, i32 %3) #0 !dbg !154 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float* %0, float** %5, align 8
  call void @llvm.dbg.declare(metadata float** %5, metadata !155, metadata !DIExpression()), !dbg !156
  store float* %1, float** %6, align 8
  call void @llvm.dbg.declare(metadata float** %6, metadata !157, metadata !DIExpression()), !dbg !158
  store float* %2, float** %7, align 8
  call void @llvm.dbg.declare(metadata float** %7, metadata !159, metadata !DIExpression()), !dbg !160
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata i32* %9, metadata !163, metadata !DIExpression()), !dbg !165
  store i32 0, i32* %9, align 4, !dbg !165
  br label %10, !dbg !166

10:                                               ; preds = %31, %4
  %11 = load i32, i32* %9, align 4, !dbg !167
  %12 = load i32, i32* %8, align 4, !dbg !169
  %13 = icmp slt i32 %11, %12, !dbg !170
  br i1 %13, label %14, label %34, !dbg !171

14:                                               ; preds = %10
  %15 = load float*, float** %5, align 8, !dbg !172
  %16 = load i32, i32* %9, align 4, !dbg !174
  %17 = sub nsw i32 %16, 1, !dbg !175
  %18 = sext i32 %17 to i64, !dbg !172
  %19 = getelementptr inbounds float, float* %15, i64 %18, !dbg !172
  %20 = load float, float* %19, align 4, !dbg !172
  %21 = load float*, float** %7, align 8, !dbg !176
  %22 = load i32, i32* %9, align 4, !dbg !177
  %23 = sext i32 %22 to i64, !dbg !176
  %24 = getelementptr inbounds float, float* %21, i64 %23, !dbg !176
  %25 = load float, float* %24, align 4, !dbg !176
  %26 = fmul float %20, %25, !dbg !178
  %27 = load float*, float** %5, align 8, !dbg !179
  %28 = load i32, i32* %9, align 4, !dbg !180
  %29 = sext i32 %28 to i64, !dbg !179
  %30 = getelementptr inbounds float, float* %27, i64 %29, !dbg !179
  store float %26, float* %30, align 4, !dbg !181
  br label %31, !dbg !182

31:                                               ; preds = %14
  %32 = load i32, i32* %9, align 4, !dbg !183
  %33 = add nsw i32 %32, 1, !dbg !183
  store i32 %33, i32* %9, align 4, !dbg !183
  br label %10, !dbg !184, !llvm.loop !185

34:                                               ; preds = %10
  ret i32 0, !dbg !187
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "loops.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 1, type: !11)
!15 = !DILocation(line: 1, column: 29, scope: !7)
!16 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 1, type: !11)
!17 = !DILocation(line: 1, column: 52, scope: !7)
!18 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 1, type: !11)
!19 = !DILocation(line: 1, column: 75, scope: !7)
!20 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 1, type: !10)
!21 = !DILocation(line: 1, column: 82, scope: !7)
!22 = !DILocalVariable(name: "i", scope: !23, file: !1, line: 2, type: !10)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 2, column: 5)
!24 = !DILocation(line: 2, column: 14, scope: !23)
!25 = !DILocation(line: 2, column: 10, scope: !23)
!26 = !DILocation(line: 2, column: 21, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 2, column: 5)
!28 = !DILocation(line: 2, column: 25, scope: !27)
!29 = !DILocation(line: 2, column: 23, scope: !27)
!30 = !DILocation(line: 2, column: 5, scope: !23)
!31 = !DILocalVariable(name: "j", scope: !32, file: !1, line: 3, type: !10)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 3, column: 9)
!33 = distinct !DILexicalBlock(scope: !27, file: !1, line: 2, column: 33)
!34 = !DILocation(line: 3, column: 18, scope: !32)
!35 = !DILocation(line: 3, column: 14, scope: !32)
!36 = !DILocation(line: 3, column: 25, scope: !37)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 3, column: 9)
!38 = !DILocation(line: 3, column: 29, scope: !37)
!39 = !DILocation(line: 3, column: 27, scope: !37)
!40 = !DILocation(line: 3, column: 9, scope: !32)
!41 = !DILocation(line: 4, column: 16, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 4, column: 16)
!43 = distinct !DILexicalBlock(scope: !37, file: !1, line: 3, column: 37)
!44 = !DILocation(line: 4, column: 18, scope: !42)
!45 = !DILocation(line: 4, column: 16, scope: !43)
!46 = !DILocation(line: 5, column: 25, scope: !47)
!47 = distinct !DILexicalBlock(scope: !42, file: !1, line: 4, column: 23)
!48 = !DILocation(line: 5, column: 27, scope: !47)
!49 = !DILocation(line: 5, column: 32, scope: !47)
!50 = !DILocation(line: 5, column: 34, scope: !47)
!51 = !DILocation(line: 5, column: 30, scope: !47)
!52 = !DILocation(line: 5, column: 17, scope: !47)
!53 = !DILocation(line: 5, column: 19, scope: !47)
!54 = !DILocation(line: 5, column: 22, scope: !47)
!55 = !DILocation(line: 6, column: 13, scope: !47)
!56 = !DILocation(line: 7, column: 17, scope: !57)
!57 = distinct !DILexicalBlock(scope: !43, file: !1, line: 7, column: 17)
!58 = !DILocation(line: 7, column: 19, scope: !57)
!59 = !DILocation(line: 7, column: 17, scope: !43)
!60 = !DILocation(line: 8, column: 25, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 7, column: 23)
!62 = !DILocation(line: 8, column: 27, scope: !61)
!63 = !DILocation(line: 8, column: 32, scope: !61)
!64 = !DILocation(line: 8, column: 34, scope: !61)
!65 = !DILocation(line: 8, column: 30, scope: !61)
!66 = !DILocation(line: 8, column: 17, scope: !61)
!67 = !DILocation(line: 8, column: 19, scope: !61)
!68 = !DILocation(line: 8, column: 22, scope: !61)
!69 = !DILocation(line: 9, column: 13, scope: !61)
!70 = !DILocation(line: 10, column: 16, scope: !71)
!71 = distinct !DILexicalBlock(scope: !43, file: !1, line: 10, column: 16)
!72 = !DILocation(line: 10, column: 16, scope: !43)
!73 = !DILocation(line: 11, column: 25, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 10, column: 18)
!75 = !DILocation(line: 11, column: 27, scope: !74)
!76 = !DILocation(line: 11, column: 32, scope: !74)
!77 = !DILocation(line: 11, column: 34, scope: !74)
!78 = !DILocation(line: 11, column: 30, scope: !74)
!79 = !DILocation(line: 11, column: 17, scope: !74)
!80 = !DILocation(line: 11, column: 19, scope: !74)
!81 = !DILocation(line: 11, column: 22, scope: !74)
!82 = !DILocation(line: 12, column: 13, scope: !74)
!83 = !DILocation(line: 14, column: 9, scope: !43)
!84 = !DILocation(line: 3, column: 32, scope: !37)
!85 = !DILocation(line: 3, column: 9, scope: !37)
!86 = distinct !{!86, !40, !87}
!87 = !DILocation(line: 14, column: 9, scope: !32)
!88 = !DILocation(line: 15, column: 5, scope: !33)
!89 = !DILocation(line: 2, column: 28, scope: !27)
!90 = !DILocation(line: 2, column: 5, scope: !27)
!91 = distinct !{!91, !30, !92}
!92 = !DILocation(line: 15, column: 5, scope: !23)
!93 = !DILocation(line: 16, column: 5, scope: !7)
!94 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 19, type: !95, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DISubroutineType(types: !96)
!96 = !{!10, !12, !12, !12, !10}
!97 = !DILocalVariable(name: "a", arg: 1, scope: !94, file: !1, line: 19, type: !12)
!98 = !DILocation(line: 19, column: 16, scope: !94)
!99 = !DILocalVariable(name: "b", arg: 2, scope: !94, file: !1, line: 19, type: !12)
!100 = !DILocation(line: 19, column: 26, scope: !94)
!101 = !DILocalVariable(name: "c", arg: 3, scope: !94, file: !1, line: 19, type: !12)
!102 = !DILocation(line: 19, column: 36, scope: !94)
!103 = !DILocalVariable(name: "n", arg: 4, scope: !94, file: !1, line: 19, type: !10)
!104 = !DILocation(line: 19, column: 43, scope: !94)
!105 = !DILocalVariable(name: "i", scope: !106, file: !1, line: 20, type: !10)
!106 = distinct !DILexicalBlock(scope: !94, file: !1, line: 20, column: 5)
!107 = !DILocation(line: 20, column: 14, scope: !106)
!108 = !DILocation(line: 20, column: 10, scope: !106)
!109 = !DILocation(line: 20, column: 21, scope: !110)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 20, column: 5)
!111 = !DILocation(line: 20, column: 25, scope: !110)
!112 = !DILocation(line: 20, column: 23, scope: !110)
!113 = !DILocation(line: 20, column: 5, scope: !106)
!114 = !DILocation(line: 21, column: 14, scope: !115)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 20, column: 33)
!116 = !DILocation(line: 21, column: 16, scope: !115)
!117 = !DILocation(line: 21, column: 21, scope: !115)
!118 = !DILocation(line: 21, column: 23, scope: !115)
!119 = !DILocation(line: 21, column: 19, scope: !115)
!120 = !DILocation(line: 21, column: 7, scope: !115)
!121 = !DILocation(line: 21, column: 9, scope: !115)
!122 = !DILocation(line: 21, column: 12, scope: !115)
!123 = !DILocation(line: 22, column: 5, scope: !115)
!124 = !DILocation(line: 20, column: 28, scope: !110)
!125 = !DILocation(line: 20, column: 5, scope: !110)
!126 = distinct !{!126, !113, !127}
!127 = !DILocation(line: 22, column: 5, scope: !106)
!128 = !DILocalVariable(name: "i", scope: !129, file: !1, line: 23, type: !10)
!129 = distinct !DILexicalBlock(scope: !94, file: !1, line: 23, column: 5)
!130 = !DILocation(line: 23, column: 14, scope: !129)
!131 = !DILocation(line: 23, column: 10, scope: !129)
!132 = !DILocation(line: 23, column: 21, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 23, column: 5)
!134 = !DILocation(line: 23, column: 25, scope: !133)
!135 = !DILocation(line: 23, column: 23, scope: !133)
!136 = !DILocation(line: 23, column: 5, scope: !129)
!137 = !DILocation(line: 24, column: 7, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !1, line: 23, column: 33)
!139 = !DILocation(line: 24, column: 9, scope: !138)
!140 = !DILocation(line: 24, column: 12, scope: !138)
!141 = !DILocalVariable(name: "d", scope: !138, file: !1, line: 25, type: !10)
!142 = !DILocation(line: 25, column: 11, scope: !138)
!143 = !DILocation(line: 25, column: 15, scope: !138)
!144 = !DILocation(line: 25, column: 17, scope: !138)
!145 = !DILocation(line: 25, column: 22, scope: !138)
!146 = !DILocation(line: 25, column: 24, scope: !138)
!147 = !DILocation(line: 25, column: 20, scope: !138)
!148 = !DILocation(line: 27, column: 5, scope: !138)
!149 = !DILocation(line: 23, column: 28, scope: !133)
!150 = !DILocation(line: 23, column: 5, scope: !133)
!151 = distinct !{!151, !136, !152}
!152 = !DILocation(line: 27, column: 5, scope: !129)
!153 = !DILocation(line: 28, column: 5, scope: !94)
!154 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 32, type: !95, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!155 = !DILocalVariable(name: "a", arg: 1, scope: !154, file: !1, line: 32, type: !12)
!156 = !DILocation(line: 32, column: 17, scope: !154)
!157 = !DILocalVariable(name: "b", arg: 2, scope: !154, file: !1, line: 32, type: !12)
!158 = !DILocation(line: 32, column: 27, scope: !154)
!159 = !DILocalVariable(name: "c", arg: 3, scope: !154, file: !1, line: 32, type: !12)
!160 = !DILocation(line: 32, column: 37, scope: !154)
!161 = !DILocalVariable(name: "n", arg: 4, scope: !154, file: !1, line: 32, type: !10)
!162 = !DILocation(line: 32, column: 44, scope: !154)
!163 = !DILocalVariable(name: "i", scope: !164, file: !1, line: 34, type: !10)
!164 = distinct !DILexicalBlock(scope: !154, file: !1, line: 34, column: 6)
!165 = !DILocation(line: 34, column: 15, scope: !164)
!166 = !DILocation(line: 34, column: 11, scope: !164)
!167 = !DILocation(line: 34, column: 22, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 34, column: 6)
!169 = !DILocation(line: 34, column: 26, scope: !168)
!170 = !DILocation(line: 34, column: 24, scope: !168)
!171 = !DILocation(line: 34, column: 6, scope: !164)
!172 = !DILocation(line: 35, column: 14, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !1, line: 34, column: 34)
!174 = !DILocation(line: 35, column: 16, scope: !173)
!175 = !DILocation(line: 35, column: 18, scope: !173)
!176 = !DILocation(line: 35, column: 25, scope: !173)
!177 = !DILocation(line: 35, column: 27, scope: !173)
!178 = !DILocation(line: 35, column: 23, scope: !173)
!179 = !DILocation(line: 35, column: 7, scope: !173)
!180 = !DILocation(line: 35, column: 9, scope: !173)
!181 = !DILocation(line: 35, column: 12, scope: !173)
!182 = !DILocation(line: 40, column: 5, scope: !173)
!183 = !DILocation(line: 34, column: 29, scope: !168)
!184 = !DILocation(line: 34, column: 6, scope: !168)
!185 = distinct !{!185, !171, !186}
!186 = !DILocation(line: 40, column: 5, scope: !164)
!187 = !DILocation(line: 42, column: 5, scope: !154)
