; ModuleID = 'loops.c'
source_filename = "loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Country = type { i32, %struct.City* }
%struct.City = type { i32, i32* }

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @foo(float* noalias nocapture %0, float* noalias nocapture readonly %1, float* noalias nocapture readonly %2, i32 %3) local_unnamed_addr #0 !dbg !7 {
  call void @llvm.dbg.value(metadata float* %0, metadata !15, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata float* %1, metadata !16, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata float* %2, metadata !17, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 %3, metadata !18, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.value(metadata i32 0, metadata !19, metadata !DIExpression()), !dbg !26
  %5 = icmp sgt i32 %3, 0, !dbg !27
  br i1 %5, label %6, label %48, !dbg !28

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !29
  br label %8, !dbg !28

8:                                                ; preds = %45, %6
  %9 = phi i32 [ %46, %45 ], [ 0, %6 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !19, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.value(metadata i32 0, metadata !21, metadata !DIExpression()), !dbg !31
  br label %10, !dbg !32

10:                                               ; preds = %42, %8
  %11 = phi i64 [ 0, %8 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !21, metadata !DIExpression()), !dbg !31
  %12 = getelementptr inbounds float, float* %0, i64 %11, !dbg !33
  %13 = load float, float* %12, align 4, !dbg !33, !tbaa !36
  %14 = fcmp ogt float %13, 0.000000e+00, !dbg !40
  br i1 %14, label %15, label %22, !dbg !41

15:                                               ; preds = %10
  %16 = getelementptr inbounds float, float* %1, i64 %11, !dbg !42
  %17 = load float, float* %16, align 4, !dbg !42, !tbaa !36
  %18 = getelementptr inbounds float, float* %2, i64 %11, !dbg !44
  %19 = load float, float* %18, align 4, !dbg !44, !tbaa !36
  %20 = fadd float %17, %19, !dbg !45
  %21 = fadd float %13, %20, !dbg !46
  store float %21, float* %12, align 4, !dbg !46, !tbaa !36
  br label %22, !dbg !47

22:                                               ; preds = %15, %10
  %23 = phi float [ %21, %15 ], [ %13, %10 ], !dbg !48
  %24 = fcmp ogt float %23, 5.000000e+00, !dbg !50
  br i1 %24, label %25, label %32, !dbg !51

25:                                               ; preds = %22
  %26 = getelementptr inbounds float, float* %1, i64 %11, !dbg !52
  %27 = load float, float* %26, align 4, !dbg !52, !tbaa !36
  %28 = getelementptr inbounds float, float* %2, i64 %11, !dbg !54
  %29 = load float, float* %28, align 4, !dbg !54, !tbaa !36
  %30 = fsub float %27, %29, !dbg !55
  %31 = fadd float %23, %30, !dbg !56
  store float %31, float* %12, align 4, !dbg !56, !tbaa !36
  br label %32, !dbg !57

32:                                               ; preds = %22, %25
  %33 = phi float [ %31, %25 ], [ %23, %22 ], !dbg !58
  %34 = fcmp ogt float %33, 7.000000e+00, !dbg !60
  br i1 %34, label %35, label %42, !dbg !61

35:                                               ; preds = %32
  %36 = getelementptr inbounds float, float* %1, i64 %11, !dbg !62
  %37 = load float, float* %36, align 4, !dbg !62, !tbaa !36
  %38 = getelementptr inbounds float, float* %2, i64 %11, !dbg !64
  %39 = load float, float* %38, align 4, !dbg !64, !tbaa !36
  %40 = fmul float %37, %39, !dbg !65
  %41 = fadd float %33, %40, !dbg !66
  store float %41, float* %12, align 4, !dbg !66, !tbaa !36
  br label %42, !dbg !67

42:                                               ; preds = %35, %32
  %43 = add nuw nsw i64 %11, 1, !dbg !68
  call void @llvm.dbg.value(metadata i64 %43, metadata !21, metadata !DIExpression()), !dbg !31
  %44 = icmp eq i64 %43, %7, !dbg !69
  br i1 %44, label %45, label %10, !dbg !32, !llvm.loop !70

45:                                               ; preds = %42
  %46 = add nuw nsw i32 %9, 1, !dbg !72
  call void @llvm.dbg.value(metadata i32 %46, metadata !19, metadata !DIExpression()), !dbg !26
  %47 = icmp eq i32 %46, %3, !dbg !27
  br i1 %47, label %48, label %8, !dbg !28, !llvm.loop !73

48:                                               ; preds = %45, %4
  ret i32 0, !dbg !75
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @foo2(i32* noalias nocapture %0, i32 %1) local_unnamed_addr #0 !dbg !76 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !82, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32 %1, metadata !83, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !87
  %3 = icmp sgt i32 %1, 0, !dbg !88
  br i1 %3, label %4, label %6, !dbg !90

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64, !dbg !88
  br label %7, !dbg !90

6:                                                ; preds = %20, %2
  ret void, !dbg !91

7:                                                ; preds = %20, %4
  %8 = phi i64 [ 0, %4 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !84, metadata !DIExpression()), !dbg !87
  %9 = getelementptr inbounds i32, i32* %0, i64 %8, !dbg !92
  %10 = load i32, i32* %9, align 4, !dbg !92, !tbaa !95
  %11 = icmp sgt i32 %10, 5, !dbg !97
  br i1 %11, label %12, label %14, !dbg !98

12:                                               ; preds = %7
  %13 = shl nuw nsw i32 %10, 1, !dbg !99
  br label %18, !dbg !101

14:                                               ; preds = %7
  %15 = icmp slt i32 %10, 2, !dbg !102
  br i1 %15, label %16, label %20, !dbg !104

16:                                               ; preds = %14
  %17 = add nsw i32 %10, 2, !dbg !105
  br label %18, !dbg !107

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %13, %12 ], [ %17, %16 ]
  store i32 %19, i32* %9, align 4, !dbg !108, !tbaa !95
  br label %20, !dbg !109

20:                                               ; preds = %18, %14
  %21 = add nuw nsw i64 %8, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %21, metadata !84, metadata !DIExpression()), !dbg !87
  %22 = icmp eq i64 %21, %5, !dbg !88
  br i1 %22, label %6, label %7, !dbg !90, !llvm.loop !110
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @foo3(%struct.Country* nocapture readonly %0) local_unnamed_addr #0 !dbg !112 {
  call void @llvm.dbg.value(metadata %struct.Country* %0, metadata !126, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.value(metadata i32 0, metadata !127, metadata !DIExpression()), !dbg !133
  %2 = getelementptr inbounds %struct.Country, %struct.Country* %0, i64 0, i32 0, !dbg !134
  %3 = load i32, i32* %2, align 8, !dbg !134, !tbaa !135
  %4 = icmp sgt i32 %3, 0, !dbg !138
  br i1 %4, label %5, label %9, !dbg !139

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Country, %struct.Country* %0, i64 0, i32 1, !dbg !140
  %7 = load %struct.City*, %struct.City** %6, align 8, !dbg !140, !tbaa !141
  %8 = zext i32 %3 to i64, !dbg !139
  br label %10, !dbg !139

9:                                                ; preds = %10, %1
  ret void, !dbg !142

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !127, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata %struct.City* undef, metadata !129, metadata !DIExpression()), !dbg !140
  %12 = getelementptr inbounds %struct.City, %struct.City* %7, i64 %11, i32 0, !dbg !143
  %13 = trunc i64 %11 to i32, !dbg !144
  store i32 %13, i32* %12, align 8, !dbg !144, !tbaa !145
  %14 = add nuw nsw i64 %11, 1, !dbg !147
  call void @llvm.dbg.value(metadata i64 %14, metadata !127, metadata !DIExpression()), !dbg !133
  %15 = icmp ult i64 %14, %8, !dbg !138
  br i1 %15, label %10, label %9, !dbg !139, !llvm.loop !148
}

; Function Attrs: norecurse nounwind readonly uwtable
define dso_local i32 @bar(float* nocapture readnone %0, float* nocapture readonly %1, float* nocapture readonly %2, i32 %3) local_unnamed_addr #1 !dbg !150 {
  call void @llvm.dbg.value(metadata float* %0, metadata !154, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata float* %1, metadata !155, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata float* %2, metadata !156, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 %3, metadata !157, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 0, metadata !158, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.value(metadata i32 0, metadata !159, metadata !DIExpression()), !dbg !162
  %5 = icmp sgt i32 %3, 0, !dbg !163
  br i1 %5, label %6, label %8, !dbg !165

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !163
  br label %10, !dbg !165

8:                                                ; preds = %10, %4
  %9 = phi i32 [ 0, %4 ], [ %20, %10 ], !dbg !161
  call void @llvm.dbg.value(metadata i32 %9, metadata !158, metadata !DIExpression()), !dbg !161
  ret i32 %9, !dbg !166

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %21, %10 ]
  %12 = phi i32 [ 0, %6 ], [ %20, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !159, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i32 %12, metadata !158, metadata !DIExpression()), !dbg !161
  %13 = getelementptr inbounds float, float* %1, i64 %11, !dbg !167
  %14 = load float, float* %13, align 4, !dbg !167, !tbaa !36
  %15 = getelementptr inbounds float, float* %2, i64 %11, !dbg !169
  %16 = load float, float* %15, align 4, !dbg !169, !tbaa !36
  %17 = fadd float %14, %16, !dbg !170
  %18 = sitofp i32 %12 to float, !dbg !171
  %19 = fadd float %17, %18, !dbg !171
  %20 = fptosi float %19 to i32, !dbg !171
  call void @llvm.dbg.value(metadata i32 %20, metadata !158, metadata !DIExpression()), !dbg !161
  %21 = add nuw nsw i64 %11, 1, !dbg !172
  call void @llvm.dbg.value(metadata i64 %21, metadata !159, metadata !DIExpression()), !dbg !162
  %22 = icmp eq i64 %21, %7, !dbg !163
  br i1 %22, label %8, label %10, !dbg !165, !llvm.loop !173
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @bar2(float* nocapture %0, float* nocapture readnone %1, float* nocapture readonly %2, i32 %3) local_unnamed_addr #0 !dbg !175 {
  call void @llvm.dbg.value(metadata float* %0, metadata !177, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata float* undef, metadata !178, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata float* %2, metadata !179, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i32 %3, metadata !180, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !184
  %5 = icmp sgt i32 %3, 0, !dbg !185
  br i1 %5, label %6, label %10, !dbg !187

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64, !dbg !185
  %8 = getelementptr inbounds float, float* %0, i64 -1, !dbg !188
  %9 = load float, float* %8, align 4, !dbg !190, !tbaa !36
  br label %11, !dbg !187

10:                                               ; preds = %11, %4
  ret i32 0, !dbg !191

11:                                               ; preds = %11, %6
  %12 = phi float [ %9, %6 ], [ %16, %11 ], !dbg !190
  %13 = phi i64 [ 0, %6 ], [ %18, %11 ]
  call void @llvm.dbg.value(metadata i64 %13, metadata !181, metadata !DIExpression()), !dbg !184
  %14 = getelementptr inbounds float, float* %2, i64 %13, !dbg !192
  %15 = load float, float* %14, align 4, !dbg !192, !tbaa !36
  %16 = fmul float %12, %15, !dbg !193
  %17 = getelementptr inbounds float, float* %0, i64 %13, !dbg !194
  store float %16, float* %17, align 4, !dbg !195, !tbaa !36
  %18 = add nuw nsw i64 %13, 1, !dbg !196
  call void @llvm.dbg.value(metadata i64 %18, metadata !181, metadata !DIExpression()), !dbg !184
  %19 = icmp eq i64 %18, %7, !dbg !185
  br i1 %19, label %10, label %11, !dbg !187, !llvm.loop !197
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local i32 @test(i32* nocapture %0, float* nocapture %1, float* nocapture readnone %2, float* nocapture readonly %3, i32 %4) local_unnamed_addr #0 !dbg !199 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !203, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata float* %1, metadata !204, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata float* %2, metadata !205, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata float* %3, metadata !206, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata i32 %4, metadata !207, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.value(metadata i32 0, metadata !208, metadata !DIExpression()), !dbg !211
  %6 = icmp sgt i32 %4, 0, !dbg !212
  %7 = zext i32 %4 to i64, !dbg !212
  %8 = load i32, i32* %0, align 4, !dbg !216, !tbaa !95
  br i1 %6, label %9, label %31, !dbg !218

9:                                                ; preds = %5
  %10 = getelementptr inbounds float, float* %1, i64 -1, !dbg !219
  %11 = load float, float* %10, align 4, !dbg !220, !tbaa !36
  br label %12, !dbg !218

12:                                               ; preds = %24, %9
  %13 = phi i32 [ %26, %24 ], [ %8, %9 ]
  %14 = phi i32 [ %27, %24 ], [ 0, %9 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !208, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata float* %1, metadata !177, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata float* undef, metadata !178, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata float* %3, metadata !179, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %4, metadata !180, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !222
  br label %15, !dbg !223

15:                                               ; preds = %15, %12
  %16 = phi float [ %11, %12 ], [ %20, %15 ], !dbg !220
  %17 = phi i64 [ 0, %12 ], [ %22, %15 ]
  call void @llvm.dbg.value(metadata i64 %17, metadata !181, metadata !DIExpression()), !dbg !222
  %18 = getelementptr inbounds float, float* %3, i64 %17, !dbg !224
  %19 = load float, float* %18, align 4, !dbg !224, !tbaa !36
  %20 = fmul float %16, %19, !dbg !225
  %21 = getelementptr inbounds float, float* %1, i64 %17, !dbg !226
  store float %20, float* %21, align 4, !dbg !227, !tbaa !36
  %22 = add nuw nsw i64 %17, 1, !dbg !228
  call void @llvm.dbg.value(metadata i64 %22, metadata !181, metadata !DIExpression()), !dbg !222
  %23 = icmp eq i64 %22, %7, !dbg !229
  br i1 %23, label %24, label %15, !dbg !223, !llvm.loop !230

24:                                               ; preds = %15
  %25 = icmp ne i32 %13, 0, !dbg !232
  %26 = zext i1 %25 to i32
  %27 = add nuw nsw i32 %14, 1, !dbg !233
  call void @llvm.dbg.value(metadata i32 %27, metadata !208, metadata !DIExpression()), !dbg !211
  %28 = icmp eq i32 %27, 10, !dbg !234
  br i1 %28, label %29, label %12, !dbg !218, !llvm.loop !235

29:                                               ; preds = %31, %24
  %30 = phi i32 [ %26, %24 ], [ %35, %31 ]
  store i32 %30, i32* %0, align 4, !dbg !216, !tbaa !95
  ret i32 0, !dbg !237

31:                                               ; preds = %5, %31
  %32 = phi i32 [ %35, %31 ], [ %8, %5 ]
  %33 = phi i32 [ %36, %31 ], [ 0, %5 ]
  call void @llvm.dbg.value(metadata i32 %33, metadata !208, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.value(metadata float* %1, metadata !177, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata float* undef, metadata !178, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata float* %3, metadata !179, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 %4, metadata !180, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.value(metadata i32 0, metadata !181, metadata !DIExpression()), !dbg !222
  %34 = icmp ne i32 %32, 0, !dbg !232
  %35 = zext i1 %34 to i32
  %36 = add nuw nsw i32 %33, 1, !dbg !233
  call void @llvm.dbg.value(metadata i32 %36, metadata !208, metadata !DIExpression()), !dbg !211
  %37 = icmp eq i32 %36, 10, !dbg !234
  br i1 %37, label %29, label %31, !dbg !218, !llvm.loop !235
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "loops.c", directory: "/home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !11, !11, !11, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!14 = !{!15, !16, !17, !18, !19, !21}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !7, file: !1, line: 1, type: !11)
!16 = !DILocalVariable(name: "b", arg: 2, scope: !7, file: !1, line: 1, type: !11)
!17 = !DILocalVariable(name: "c", arg: 3, scope: !7, file: !1, line: 1, type: !11)
!18 = !DILocalVariable(name: "n", arg: 4, scope: !7, file: !1, line: 1, type: !10)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 2, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 2, column: 5)
!21 = !DILocalVariable(name: "j", scope: !22, file: !1, line: 3, type: !10)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 3, column: 9)
!23 = distinct !DILexicalBlock(scope: !24, file: !1, line: 2, column: 33)
!24 = distinct !DILexicalBlock(scope: !20, file: !1, line: 2, column: 5)
!25 = !DILocation(line: 0, scope: !7)
!26 = !DILocation(line: 0, scope: !20)
!27 = !DILocation(line: 2, column: 23, scope: !24)
!28 = !DILocation(line: 2, column: 5, scope: !20)
!29 = !DILocation(line: 0, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 3, column: 9)
!31 = !DILocation(line: 0, scope: !22)
!32 = !DILocation(line: 3, column: 9, scope: !22)
!33 = !DILocation(line: 5, column: 16, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 5, column: 16)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 3, column: 37)
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 5, column: 21, scope: !34)
!41 = !DILocation(line: 5, column: 16, scope: !35)
!42 = !DILocation(line: 6, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !34, file: !1, line: 5, column: 25)
!44 = !DILocation(line: 6, column: 32, scope: !43)
!45 = !DILocation(line: 6, column: 30, scope: !43)
!46 = !DILocation(line: 6, column: 22, scope: !43)
!47 = !DILocation(line: 7, column: 13, scope: !43)
!48 = !DILocation(line: 8, column: 17, scope: !49)
!49 = distinct !DILexicalBlock(scope: !35, file: !1, line: 8, column: 17)
!50 = !DILocation(line: 8, column: 22, scope: !49)
!51 = !DILocation(line: 8, column: 17, scope: !35)
!52 = !DILocation(line: 9, column: 25, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 8, column: 26)
!54 = !DILocation(line: 9, column: 32, scope: !53)
!55 = !DILocation(line: 9, column: 30, scope: !53)
!56 = !DILocation(line: 9, column: 22, scope: !53)
!57 = !DILocation(line: 10, column: 13, scope: !53)
!58 = !DILocation(line: 11, column: 17, scope: !59)
!59 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 17)
!60 = !DILocation(line: 11, column: 22, scope: !59)
!61 = !DILocation(line: 11, column: 17, scope: !35)
!62 = !DILocation(line: 12, column: 25, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 11, column: 26)
!64 = !DILocation(line: 12, column: 32, scope: !63)
!65 = !DILocation(line: 12, column: 30, scope: !63)
!66 = !DILocation(line: 12, column: 22, scope: !63)
!67 = !DILocation(line: 13, column: 13, scope: !63)
!68 = !DILocation(line: 3, column: 32, scope: !30)
!69 = !DILocation(line: 3, column: 27, scope: !30)
!70 = distinct !{!70, !32, !71}
!71 = !DILocation(line: 15, column: 9, scope: !22)
!72 = !DILocation(line: 2, column: 28, scope: !24)
!73 = distinct !{!73, !28, !74}
!74 = !DILocation(line: 16, column: 5, scope: !20)
!75 = !DILocation(line: 17, column: 5, scope: !7)
!76 = distinct !DISubprogram(name: "foo2", scope: !1, file: !1, line: 20, type: !77, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !79, !10}
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!81 = !{!82, !83, !84}
!82 = !DILocalVariable(name: "a", arg: 1, scope: !76, file: !1, line: 20, type: !79)
!83 = !DILocalVariable(name: "n", arg: 2, scope: !76, file: !1, line: 20, type: !10)
!84 = !DILocalVariable(name: "i", scope: !85, file: !1, line: 21, type: !10)
!85 = distinct !DILexicalBlock(scope: !76, file: !1, line: 21, column: 4)
!86 = !DILocation(line: 0, scope: !76)
!87 = !DILocation(line: 0, scope: !85)
!88 = !DILocation(line: 21, column: 22, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 21, column: 4)
!90 = !DILocation(line: 21, column: 4, scope: !85)
!91 = !DILocation(line: 29, column: 1, scope: !76)
!92 = !DILocation(line: 22, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 22, column: 10)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 21, column: 31)
!95 = !{!96, !96, i64 0}
!96 = !{!"int", !38, i64 0}
!97 = !DILocation(line: 22, column: 15, scope: !93)
!98 = !DILocation(line: 22, column: 10, scope: !94)
!99 = !DILocation(line: 23, column: 16, scope: !100)
!100 = distinct !DILexicalBlock(scope: !93, file: !1, line: 22, column: 19)
!101 = !DILocation(line: 24, column: 7, scope: !100)
!102 = !DILocation(line: 24, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !93, file: !1, line: 24, column: 16)
!104 = !DILocation(line: 24, column: 16, scope: !93)
!105 = !DILocation(line: 25, column: 16, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 24, column: 25)
!107 = !DILocation(line: 26, column: 7, scope: !106)
!108 = !DILocation(line: 0, scope: !93)
!109 = !DILocation(line: 21, column: 27, scope: !89)
!110 = distinct !{!110, !90, !111}
!111 = !DILocation(line: 28, column: 4, scope: !85)
!112 = distinct !DISubprogram(name: "foo3", scope: !1, file: !1, line: 43, type: !113, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !125)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Country", file: !1, line: 37, size: 128, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "numberOfCities", scope: !116, file: !1, line: 38, baseType: !10, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "cities", scope: !116, file: !1, line: 39, baseType: !120, size: 64, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "City", file: !1, line: 32, size: 128, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "population", scope: !121, file: !1, line: 33, baseType: !10, size: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "people", scope: !121, file: !1, line: 34, baseType: !80, size: 64, offset: 64)
!125 = !{!126, !127, !129}
!126 = !DILocalVariable(name: "country", arg: 1, scope: !112, file: !1, line: 43, type: !115)
!127 = !DILocalVariable(name: "i", scope: !128, file: !1, line: 44, type: !10)
!128 = distinct !DILexicalBlock(scope: !112, file: !1, line: 44, column: 5)
!129 = !DILocalVariable(name: "cityPointer", scope: !130, file: !1, line: 45, type: !120)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 44, column: 55)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 44, column: 5)
!132 = !DILocation(line: 0, scope: !112)
!133 = !DILocation(line: 0, scope: !128)
!134 = !DILocation(line: 44, column: 34, scope: !131)
!135 = !{!136, !96, i64 0}
!136 = !{!"Country", !96, i64 0, !137, i64 8}
!137 = !{!"any pointer", !38, i64 0}
!138 = !DILocation(line: 44, column: 23, scope: !131)
!139 = !DILocation(line: 44, column: 5, scope: !128)
!140 = !DILocation(line: 0, scope: !130)
!141 = !{!136, !137, i64 8}
!142 = !DILocation(line: 49, column: 1, scope: !112)
!143 = !DILocation(line: 47, column: 22, scope: !130)
!144 = !DILocation(line: 47, column: 33, scope: !130)
!145 = !{!146, !96, i64 0}
!146 = !{!"City", !96, i64 0, !137, i64 8}
!147 = !DILocation(line: 44, column: 50, scope: !131)
!148 = distinct !{!148, !139, !149}
!149 = !DILocation(line: 48, column: 5, scope: !128)
!150 = distinct !DISubprogram(name: "bar", scope: !1, file: !1, line: 51, type: !151, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !153)
!151 = !DISubroutineType(types: !152)
!152 = !{!10, !12, !12, !12, !10}
!153 = !{!154, !155, !156, !157, !158, !159}
!154 = !DILocalVariable(name: "a", arg: 1, scope: !150, file: !1, line: 51, type: !12)
!155 = !DILocalVariable(name: "b", arg: 2, scope: !150, file: !1, line: 51, type: !12)
!156 = !DILocalVariable(name: "c", arg: 3, scope: !150, file: !1, line: 51, type: !12)
!157 = !DILocalVariable(name: "n", arg: 4, scope: !150, file: !1, line: 51, type: !10)
!158 = !DILocalVariable(name: "d", scope: !150, file: !1, line: 57, type: !10)
!159 = !DILocalVariable(name: "i", scope: !160, file: !1, line: 59, type: !10)
!160 = distinct !DILexicalBlock(scope: !150, file: !1, line: 59, column: 6)
!161 = !DILocation(line: 0, scope: !150)
!162 = !DILocation(line: 0, scope: !160)
!163 = !DILocation(line: 59, column: 24, scope: !164)
!164 = distinct !DILexicalBlock(scope: !160, file: !1, line: 59, column: 6)
!165 = !DILocation(line: 59, column: 6, scope: !160)
!166 = !DILocation(line: 65, column: 6, scope: !150)
!167 = !DILocation(line: 61, column: 14, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !1, line: 59, column: 34)
!169 = !DILocation(line: 61, column: 21, scope: !168)
!170 = !DILocation(line: 61, column: 19, scope: !168)
!171 = !DILocation(line: 61, column: 11, scope: !168)
!172 = !DILocation(line: 59, column: 29, scope: !164)
!173 = distinct !{!173, !165, !174}
!174 = !DILocation(line: 63, column: 6, scope: !160)
!175 = distinct !DISubprogram(name: "bar2", scope: !1, file: !1, line: 69, type: !151, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!176 = !{!177, !178, !179, !180, !181}
!177 = !DILocalVariable(name: "a", arg: 1, scope: !175, file: !1, line: 69, type: !12)
!178 = !DILocalVariable(name: "b", arg: 2, scope: !175, file: !1, line: 69, type: !12)
!179 = !DILocalVariable(name: "c", arg: 3, scope: !175, file: !1, line: 69, type: !12)
!180 = !DILocalVariable(name: "n", arg: 4, scope: !175, file: !1, line: 69, type: !10)
!181 = !DILocalVariable(name: "i", scope: !182, file: !1, line: 71, type: !10)
!182 = distinct !DILexicalBlock(scope: !175, file: !1, line: 71, column: 7)
!183 = !DILocation(line: 0, scope: !175)
!184 = !DILocation(line: 0, scope: !182)
!185 = !DILocation(line: 71, column: 25, scope: !186)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 71, column: 7)
!187 = !DILocation(line: 71, column: 7, scope: !182)
!188 = !DILocation(line: 0, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !1, line: 71, column: 35)
!190 = !DILocation(line: 72, column: 15, scope: !189)
!191 = !DILocation(line: 75, column: 6, scope: !175)
!192 = !DILocation(line: 72, column: 26, scope: !189)
!193 = !DILocation(line: 72, column: 24, scope: !189)
!194 = !DILocation(line: 72, column: 8, scope: !189)
!195 = !DILocation(line: 72, column: 13, scope: !189)
!196 = !DILocation(line: 71, column: 30, scope: !186)
!197 = distinct !{!197, !187, !198}
!198 = !DILocation(line: 73, column: 6, scope: !182)
!199 = distinct !DISubprogram(name: "test", scope: !1, file: !1, line: 79, type: !200, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!200 = !DISubroutineType(types: !201)
!201 = !{!10, !80, !12, !12, !12, !10}
!202 = !{!203, !204, !205, !206, !207, !208}
!203 = !DILocalVariable(name: "number", arg: 1, scope: !199, file: !1, line: 79, type: !80)
!204 = !DILocalVariable(name: "a", arg: 2, scope: !199, file: !1, line: 79, type: !12)
!205 = !DILocalVariable(name: "b", arg: 3, scope: !199, file: !1, line: 79, type: !12)
!206 = !DILocalVariable(name: "c", arg: 4, scope: !199, file: !1, line: 79, type: !12)
!207 = !DILocalVariable(name: "n", arg: 5, scope: !199, file: !1, line: 79, type: !10)
!208 = !DILocalVariable(name: "i", scope: !209, file: !1, line: 80, type: !10)
!209 = distinct !DILexicalBlock(scope: !199, file: !1, line: 80, column: 4)
!210 = !DILocation(line: 0, scope: !199)
!211 = !DILocation(line: 0, scope: !209)
!212 = !DILocation(line: 0, scope: !186, inlinedAt: !213)
!213 = distinct !DILocation(line: 81, column: 5, scope: !214)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 80, column: 32)
!215 = distinct !DILexicalBlock(scope: !209, file: !1, line: 80, column: 4)
!216 = !DILocation(line: 0, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !1, line: 83, column: 8)
!218 = !DILocation(line: 80, column: 4, scope: !209)
!219 = !DILocation(line: 0, scope: !189, inlinedAt: !213)
!220 = !DILocation(line: 72, column: 15, scope: !189, inlinedAt: !213)
!221 = !DILocation(line: 0, scope: !175, inlinedAt: !213)
!222 = !DILocation(line: 0, scope: !182, inlinedAt: !213)
!223 = !DILocation(line: 71, column: 7, scope: !182, inlinedAt: !213)
!224 = !DILocation(line: 72, column: 26, scope: !189, inlinedAt: !213)
!225 = !DILocation(line: 72, column: 24, scope: !189, inlinedAt: !213)
!226 = !DILocation(line: 72, column: 8, scope: !189, inlinedAt: !213)
!227 = !DILocation(line: 72, column: 13, scope: !189, inlinedAt: !213)
!228 = !DILocation(line: 71, column: 30, scope: !186, inlinedAt: !213)
!229 = !DILocation(line: 71, column: 25, scope: !186, inlinedAt: !213)
!230 = distinct !{!230, !223, !231}
!231 = !DILocation(line: 73, column: 6, scope: !182, inlinedAt: !213)
!232 = !DILocation(line: 83, column: 8, scope: !217)
!233 = !DILocation(line: 80, column: 28, scope: !215)
!234 = !DILocation(line: 80, column: 22, scope: !215)
!235 = distinct !{!235, !218, !236}
!236 = !DILocation(line: 88, column: 4, scope: !209)
!237 = !DILocation(line: 89, column: 5, scope: !199)
